## Multi-Processor System with Cache Coherency Using Nios II and VHDL

### Project Overview
This project focused on the design and implementation of a cache-coherent multi-processor system, initially using Altera’s Quartus Prime software and later transitioning to a custom VHDL-based design. The primary goal was to perform efficient matrix multiplication across multiple CPUs while ensuring data consistency across shared memory.

### Implementation Steps

1. **Quartus Prime and Platform Designer Setup**  
   I began the project using **Quartus Prime** and **Platform Designer** to create a multi-processor system with two Nios II cores. I incorporated:
   - **Mutexes** for synchronization,
   - **Shared memory** for data exchange between CPUs,
   - A simple cache coherency mechanism to test the system with matrix multiplication tasks.

2. **Expanding to Four Cores**  
   After validating the initial setup, I expanded the system to **four cores** to observe performance improvements and test the scalability of the cache coherence protocol. This setup allowed me to experiment with concurrent access to shared memory and evaluate the mutex handling in a more complex multi-core environment.

3. **Custom Cache Coherent System in VHDL**  
   Building on the insights from the Nios II setup, I designed a **cache-coherent system from scratch in VHDL**. This custom system included:
   - A basic implementation of cache controllers,
   - **Cache-to-shared-memory transactions** to manage data consistency between CPU caches and shared memory.

4. **Testing with ModelSim**  
   I used **ModelSim** to simulate and verify the functionality of the cache coherency system. Initial tests focused on ensuring that:
   - **Cache-to-shared memory transactions** worked as expected,
   - Data remained consistent across multiple cores.

5. **Implementation of the MSI Protocol**  
   I advanced the design by implementing the **Modified, Shared, Invalid (MSI) protocol** to manage cache coherency. The MSI protocol operates as follows:
   - **Modified (M):** The cache line is modified and differs from main memory; it is only present in the current cache.
   - **Shared (S):** The cache line matches main memory and may be present in multiple caches.
   - **Invalid (I):** The cache line is invalid and cannot be used until reloaded from memory.

   The MSI protocol ensures that when one CPU modifies a cache line, other CPUs invalidate their corresponding cache line, maintaining consistency across caches.

6. **Testing and Bug Identification in ModelSim**  
   After implementing the MSI protocol, I conducted extensive testing in ModelSim. The protocol successfully handled most scenarios; however, I identified **bugs in certain edge cases** where race conditions led to unexpected invalidation or modification states. These insights highlighted areas for further refinement in the protocol logic.

### Project Outcome
This project allowed me to gain hands-on experience in:
- Designing and simulating multi-core, cache-coherent systems,
- Implementing and debugging complex protocols like MSI in VHDL,
- Utilizing Platform Designer in Quartus Prime for system integration and ModelSim for testing and validation.

By iterating through designs and testing different configurations, I developed a deeper understanding of cache coherency challenges and the MSI protocol’s role in managing data consistency across processors.
