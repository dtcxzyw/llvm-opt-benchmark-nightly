Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/errors?download=true
inline.NumInlined: 808
inline.NumDeleted: 62
begin_hunk_0
@.str.10 = private unnamed_addr constant [67 x i8] c"Please report this to the QuEST developers. QuEST will now exit...\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.13 = private unnamed_addr constant [151 x i8] c"User input validation failed and an error message was attemptedly prepared, but an ill-formed variable was attempted substitution. This variable was \22\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"\22 and was attempted substitution into message:\0A\00", align 1
@.str.15 = private unnamed_addr constant [109 x i8] c"User input validation failed and an error message was attemptedly prepared. However, the internal variable \22\00", align 1
@.str.16 = private unnamed_addr constant [71 x i8] c"\22 was unable to be found and substituted into the message, which was:\0A\00", align 1
@.str.17 = private unnamed_addr constant [178 x i8] c"User input validation failed and an error message was prepared. However, the message contained unexpected (and potentially ill-formed) unsubstituted variables. The message was:\0A\00", align 1
@.str.18 = private unnamed_addr constant [133 x i8] c"User input validation processed a matrix it believed was both dense and distributed, though no such data structure currently exists.\00", align 1
@.str.19 = private unnamed_addr constant [197 x i8] c"User input validation was checking uniqueness of an index list using bitmasks but encountered an index larger than the number of bits in the mask. This should have been caught by prior validation.\00", align 1
@.str.20 = private unnamed_addr constant [80 x i8] c"Attempted memory allocation for the newly created QuESTEnv unexpectedly failed.\00", align 1
@.str.21 = private unnamed_addr constant [145 x i8] c"Attempted to obtain memory necessary to allocate a distributed object's single-node partition but it overflowed size_t despite prior validation.\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"Failed to get the page size.\00", align 1
@.str.23 = private unnamed_addr constant [76 x i8] c"The discovered page size was not a power of 2. Get Dr Denning on the phone.\00", align 1
@.str.24 = private unnamed_addr constant [65 x i8] c"The page size was indivisible by the number of bytes in a qcomp.\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"Failed to get the NUMA node count\00", align 1
@.str.26 = private unnamed_addr constant [142 x i8] c"NUMA-aware memory allocation or deallocation was attempted on Windows though this is not yet implemented, indicating a potential build issue.\00", align 1
@.str.27 = private unnamed_addr constant [126 x i8] c"The binding of memory pages to NUMA nodes (with mbind) unexpectedly failed, despite prior reservation (with mmap) succeeding.\00", align 1
@.str.28 = private unnamed_addr constant [52 x i8] c"NUMA-aware memory deallocation unexpectedly failed.\00", align 1
@.str.29 = private unnamed_addr constant [70 x i8] c"MPI was queried but the MPI environment had not yet been initialised.\00", align 1
@.str.30 = private unnamed_addr constant [113 x i8] c"The MPI communication environment was attemptedly re-initialised despite the QuEST environment already existing.\00", align 1
@.str.31 = private unnamed_addr constant [99 x i8] c"A function attempted to invoke communication despite QuEST being compiled in non-distributed mode.\00", align 1
@.str.32 = private unnamed_addr constant [106 x i8] c"A function invoked communication which attempted to exchange amplitudes between arrays at invalid bounds.\00", align 1
@.str.33 = private unnamed_addr constant [86 x i8] c"A distributed function attempted to communicate to a pair rank equal to its own rank.\00", align 1
@.str.34 = private unnamed_addr constant [99 x i8] c"A distributed function was given a different number of per-node subarray lengths than exist nodes.\00", align 1
@.str.35 = private unnamed_addr constant [147 x i8] c"A function attempted to communicate via more messages than permitted (since there would be more uniquely-tagged messages than the tag upperbound).\00", align 1
@.str.36 = private unnamed_addr constant [115 x i8] c"A communication function was given a payload which was unexpectedly not a power of 2, as implied by preconditions.\00", align 1
@.str.37 = private unnamed_addr constant [83 x i8] c"A function attempted to invoke communication of a Qureg which was not distributed.\00", align 1
@.str.38 = private unnamed_addr constant [95 x i8] c"A function attempted to invoke communication of a FullStateDiagMatr which was not distributed.\00", align 1
@.str.39 = private unnamed_addr constant [94 x i8] c"A distributed function attempted to send and receive portions of the buffer which overlapped.\00", align 1
@.str.40 = private unnamed_addr constant [135 x i8] c"A distributed function attempted to broadcast a Qureg's entire state into another Qureg's buffer, which could not fit all global amps.\00", align 1
@.str.41 = private unnamed_addr constant [167 x i8] c"A distributed function attempted to broadcast the entirety of a FullStateDiagMatr's elements into a Qureg's buffer, which is too small to contain all global elements.\00", align 1
@.str.42 = private unnamed_addr constant [91 x i8] c"An inconsistent number of ctrls and ctrlStates were passed to a function in localiser.cpp.\00", align 1
@.str.43 = private unnamed_addr constant [147 x i8] c"The localiser was asked to simulate a Pauli tensor or gadget which contained no X or Y Paulis, which is a special case reserved for phase gadgets.\00", align 1
@.str.44 = private unnamed_addr constant [87 x i8] c"The localiser queried whether a channel would invoke communication upon a statevector.\00", align 1
@.str.45 = private unnamed_addr constant [116 x i8] c"A localiser function was given a distributed FullStateDiagMatr but a non-distributed Qureg, which are incompatible.\00", align 1
@.str.46 = private unnamed_addr constant [72 x i8] c"A localiser function attempted and failed to allocate temporary memory.\00", align 1
@.str.47 = private unnamed_addr constant [89 x i8] c"A localiser function was given a PauliStr which unexpectedly contained no X or Y Paulis.\00", align 1
@.str.48 = private unnamed_addr constant [185 x i8] c"A localiser function to apply a PauliStr (as a tensor, not a gadget) was given a PauliStr containing only Z and I, along with a non-unity global factor. This is an illegal combination.\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"GPU\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"CPU\00", align 1
@.str.51 = private unnamed_addr constant [65 x i8] c"A localiser function attempted and failed to allocate temporary \00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c" memory.\00", align 1
@.str.53 = private unnamed_addr constant [89 x i8] c"The localiser received a density matrix to a function defined strictly for statevectors.\00", align 1
@.str.54 = private unnamed_addr constant [87 x i8] c"The localiser received a statevector to a function defined only upon density matrices.\00", align 1
@.str.55 = private unnamed_addr constant [70 x i8] c"A non-density matrix was given to localiser's partial trace function.\00", align 1
@.str.56 = private unnamed_addr constant [110 x i8] c"Quregs of different distributions (one distributed, one not) was given to localiser's partial trace function.\00", align 1
@.str.57 = private unnamed_addr constant [120 x i8] c"Quregs of different GPU-accelerations (one accelerated, the other not) was given to localiser's partial trace function.\00", align 1
@.str.58 = private unnamed_addr constant [98 x i8] c"Inconsistent Qureg sizes and number of traced qubits given to localiser's partial trace function.\00", align 1
@.str.59 = private unnamed_addr constant [150 x i8] c"A localiser function attempted to compute the fidelity between a local density matrix and a distributed statevector, which is an illegal combination.\00", align 1
@.str.60 = private unnamed_addr constant [114 x i8] c"The localiser attempted to spoof a distributed Qureg using a local one, but received invalid Qureg distributions.\00", align 1
@.str.61 = private unnamed_addr constant [164 x i8] c"A CPU or GPU subroutine received a PauliStrSum within which a PauliStr contained a non-identity Pauli in the 'highPaulis' mask, which is illegal for this function.\00", align 1
@.str.62 = private unnamed_addr constant [60 x i8] c"A CPU or GPU subroutine received an inconsistent number of \00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"s and \00", align 1
@.str.64 = private unnamed_addr constant [30 x i8] c"-states from accelerator.cpp.\00", align 1
@.str.65 = private unnamed_addr constant [141 x i8] c"A CPU or GPU subroutine received a number of qubits inconsistent with its compile-time template parameter, as dispatched by accelerator.cpp.\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.67 = private unnamed_addr constant [142 x i8] c"A CPU or GPU subroutine received a number of targets inconsistent with its compile-time template parameter, as dispatched by accelerator.cpp.\00", align 1
@.str.68 = private unnamed_addr constant [149 x i8] c"A CPU or GPU subroutine received a matrix exponent that was inconsistent with its compile-time template parameter, as dispatched by accelerator.cpp.\00", align 1
@.str.69 = private unnamed_addr constant [115 x i8] c"A CPU or GPU subroutine received an invalid combination of HasPower=false and UseRealPow=false template parameters\00", align 1
@.str.70 = private unnamed_addr constant [191 x i8] c"A function attempted to (superfluously) pack the communication buffer but specified no control qubits, which would lead to the buffer being entirely filled and leave no room to receive amps.\00", align 1
@.str.71 = private unnamed_addr constant [74 x i8] c"A function attempted to pack a buffer using non-increasing qubit indices.\00", align 1
@.str.72 = private unnamed_addr constant [103 x i8] c"An internal function invoked by mixQureg() received a statevector where a density matrix was expected.\00", align 1
@.str.73 = private unnamed_addr constant [103 x i8] c"An internal function invoked by mixQureg() received a density matrix where a statevector was expected.\00", align 1
@.str.74 = private unnamed_addr constant [114 x i8] c"An internal function invoked by mixQureg() received a non-distributed Qureg where a distributed one was expected.\00", align 1
@.str.75 = private unnamed_addr constant [114 x i8] c"An internal function invoked by mixQureg() received a distributed Qureg where a non-distributed one was expected.\00", align 1
@.str.76 = private unnamed_addr constant [104 x i8] c"An internal function invoked by mixQureg() received density-matrix Quregs of inconsistent distribution.\00", align 1
@.str.77 = private unnamed_addr constant [98 x i8] c"An internal function invoked by mixQureg() attempted to allocate temporary GPU memory but failed.\00", align 1
@.str.78 = private unnamed_addr constant [149 x i8] c"An internal function invoked by mixQureg() received a non-distributed density matrix and a distributed statevector, which is an illegal combination.\00", align 1
@.str.79 = private unnamed_addr constant [107 x i8] c"An accelerator function received a distributed FullStateDiagMatr where a non-distributed one was expected.\00", align 1
@.str.80 = private unnamed_addr constant [107 x i8] c"An accelerator function received a non-distributed FullStateDiagMatr where a distributed one was expected.\00", align 1
@.str.81 = private unnamed_addr constant [119 x i8] c"The accelerator function accel_densmatr_allTargDiagMatr_subA() recieved an invalid combination of template parameters.\00", align 1
@.str.82 = private unnamed_addr constant [101 x i8] c"An accelerator function invoked received non-distributed Qureg where a distributed one was expected.\00", align 1
@.str.83 = private unnamed_addr constant [106 x i8] c"An accelerator function unexpectedly received a Qureg and FullStateDiagMatr with different distributions.\00", align 1
@.str.84 = private unnamed_addr constant [171 x i8] c"An accelerator function received a FullStateDiagMatr with a GPU pointer which was a Qureg's GPU communication buffer, in a setting where the buffer was separately needed.\00", align 1
@.str.85 = private unnamed_addr constant [138 x i8] c"An internal function invoked by applying a FullStateDiagMatr upon a density matrix attempted to allocate temporary GPU memory but failed.\00", align 1
@.str.86 = private unnamed_addr constant [152 x i8] c"An accelerator function involved with calculating the fidelity between a density matrix and statevector was given an illegally distributed statevector.\00", align 1
@.str.87 = private unnamed_addr constant [145 x i8] c"An accelerator function involved with calculating the fidelity between a density matrix and statevector failed to allocate temporary GPU memory.\00", align 1
@.str.88 = private unnamed_addr constant [158 x i8] c"An accelerator function involved with calculating the expectation value of a FullStateDiagMatr upon a density matrix failed to allocate temporary GPU memory.\00", align 1
@.str.89 = private unnamed_addr constant [191 x i8] c"The accelerator was asked to compute the inner product between a GPU-accelerated and non-accelerated Qureg, where were both statevectors or density matrices, which is an illegal combination.\00", align 1
@.str.90 = private unnamed_addr constant [131 x i8] c"An accelerator function involved in computing the partial trace received Quregs with differing distributions or GPU-accelerations.\00", align 1
@.str.91 = private unnamed_addr constant [82 x i8] c"A Qureg and FullStateDiagMatr had unexpectedly mismatching distribution statuses.\00", align 1
@.str.92 = private unnamed_addr constant [44 x i8] c"The Qureg was unexpectedly non-distributed.\00", align 1
@.str.93 = private unnamed_addr constant [52 x i8] c"The FullStateDiagMatr was unexpectedly distributed.\00", align 1
@.str.94 = private unnamed_addr constant [107 x i8] c"A function attempted to query CPU thread information but QuEST is not running with multithreading enabled.\00", align 1
@.str.95 = private unnamed_addr constant [103 x i8] c"A function attempted to query GPU properties but QuEST was not compiled with GPU acceleration enabled.\00", align 1
@.str.96 = private unnamed_addr constant [103 x i8] c"A function attempted to synchronise the GPU, but QuEST was not compiled with GPU acceleration enabled.\00", align 1
@.str.97 = private unnamed_addr constant [138 x i8] c"A function (likely Qureg or CompMatr creation) attempted to allocate GPU memory but QuEST was not compiled with GPU acceleration enabled.\00", align 1
@.str.98 = private unnamed_addr constant [143 x i8] c"A function (likely Qureg or CompMatr destruction) attempted to deallocate GPU memory but QuEST was not compiled with GPU acceleration enabled.\00", align 1
@.str.99 = private unnamed_addr constant [100 x i8] c"A function attempted to access GPU memory but QuEST was not compiled with GPU acceleration enabled.\00", align 1
@.str.100 = private unnamed_addr constant [115 x i8] c"A function attempted to dispatch a simulation to the GPU but QuEST was not compiled with GPU acceleration enabled.\00", align 1
@.str.101 = private unnamed_addr constant [121 x i8] c"A function attempted to allocate or clear the GPU cache memory but QuEST was not compiled with GPU acceleration enabled.\00", align 1
@.str.102 = private unnamed_addr constant [83 x i8] c"A function attempted to access GPU memory of a Qureg which is not GPU accelerated.\00", align 1
@.str.103 = private unnamed_addr constant [114 x i8] c"A function attempted to access GPU memory of a matrix (e.g. a CompMatr or DiagMatr) which is not GPU accelerated.\00", align 1
@.str.104 = private unnamed_addr constant [169 x i8] c"A function internally assumed (as a precondition) that QuEST was compiled with GPU-acceleration enabled, and that one was physically accessible, though this was untrue.\00", align 1
@.str.105 = private unnamed_addr constant [146 x i8] c"A function checked whether persistent GPU memory (such as in a CompMatr) had been synchronised, but the QuEST environment is not GPU accelerated.\00", align 1
@.str.106 = private unnamed_addr constant [171 x i8] c"The internal GPU function copyMatrixIfGpuCompiled() was called, though is intended as dead-code - matrices needing copying to GPU should be stored as flat row-wise lists.\00", align 1
@.str.107 = private unnamed_addr constant [172 x i8] c"The GPU + cuQuantum implementation of anyCtrlAnyTargDenseMatr() assumes that at most one of template arguments ApplyConj and ApplyTransp is true, though this was violated.\00", align 1
@.str.108 = private unnamed_addr constant [112 x i8] c"An internal GPU-querying function was illegally called before local GPUs had been bound to local MPI processes.\00", align 1
@.str.109 = private unnamed_addr constant [38 x i8] c"A CUDA (or cuQuantum) API function (\22\00", align 1
@.str.110 = private unnamed_addr constant [15 x i8] c"\22, called by \22\00", align 1
@.str.111 = private unnamed_addr constant [13 x i8] c"()\22 at line \00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c" of file \00", align 1
@.str.113 = private unnamed_addr constant [44 x i8] c") unexpectedly failed with error message: \22\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"\22. \00", align 1
@__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@.str.115 = private unnamed_addr constant [113 x i8] c"The CUDA API encountered an irrecoverable \22sticky\22 error which was attemptedly cleared as if it were non-sticky.\00", align 1
@.str.116 = private unnamed_addr constant [48 x i8] c"Thrust failed to allocate temporary GPU memory.\00", align 1
@.str.117 = private unnamed_addr constant [79 x i8] c"Attempted to initialise or finalise cuQuantum, but cuQuantum was not compiled.\00", align 1
@.str.118 = private unnamed_addr constant [78 x i8] c"Attempted allocation of temporary host-memory for a cuQuantum routine failed.\00", align 1
@.str.119 = private unnamed_addr constant [178 x i8] c"A PauliStr was attemptedly shifted (likely invoked by its application upon a density matrix) by an illegal amount (e.g. negative, or that exceeding the PauliStr bitmask length).\00", align 1
@.str.120 = private unnamed_addr constant [148 x i8] c"Attempted to calculate the tensor product of a PauliStrSum with itself, but it contained non-identity Paulis on qubits beyond the number specified.\00", align 1
@.str.121 = private unnamed_addr constant [179 x i8] c"Attempted to calculate the tensor product of a (conjugated) PauliStrSum with identity, but it contained non-identity Paulis on qubits beyond the number specified in the identity.\00", align 1
@.str.122 = private unnamed_addr constant [145 x i8] c"The tensor product of a (conjugated) PauliStrSum with itself was attemptedly written to output PauliStrSum with an incompatible number of terms.\00", align 1
@.str.123 = private unnamed_addr constant [151 x i8] c"The product of a (conjugate transposed) PauliStrSum with itself was attemptedly written to an output PauliStrSum with an incompatible number of terms.\00", align 1
@.str.124 = private unnamed_addr constant [133 x i8] c"Attempted to calculate the conjugate of a PauliStrSum but the output PauliStrSum had a differing (and ergo invalid) number of terms.\00", align 1
@.str.125 = private unnamed_addr constant [192 x i8] c"A function queried which distributed elements within a specified range overlapped the node's stored elements, but the node contained no overlap. This situation should have been prior handled.\00", align 1
@.str.126 = private unnamed_addr constant [107 x i8] c"A function attempted to obtain the index of a bra-qubit of a state-vector, as if it were a density matrix.\00", align 1
@.str.127 = private unnamed_addr constant [83 x i8] c"A function passed a suffix qubit to a utilities function expecting a prefix qubit.\00", align 1
@.str.128 = private unnamed_addr constant [114 x i8] c"A function attempted to obtain the prefix index of a bra-qubit of a state-vector, as if it were a density matrix.\00", align 1
@.str.129 = private unnamed_addr constant [90 x i8] c"A function attmpted to obtain the prefix index of a bra-qubit, but passed a suffix qubit.\00", align 1
@.str.130 = private unnamed_addr constant [130 x i8] c"A functiion queried whether a qubit's corresponding bra-qubit was in the suffix substate, but the Qureg was not a density matrix.\00", align 1
@.str.131 = private unnamed_addr constant [122 x i8] c"A utility function was asked for the corresponding local index of a global index which did not exist in the calling node.\00", align 1
@.str.132 = private unnamed_addr constant [80 x i8] c"A utility function was given a density matrix where a statevector was expected.\00", align 1
@.str.133 = private unnamed_addr constant [80 x i8] c"A utility function was given a statevector where a density matrix was expected.\00", align 1
@.str.134 = private unnamed_addr constant [110 x i8] c"A utility function (e.g. isUnitary) received an epsilon of zero, which should have precluded it being called.\00", align 1
@.str.135 = private unnamed_addr constant [147 x i8] c"A function attempted to parse a string to a qcomp but the string was not validly formatted. This should have been caught by prior user validation.\00", align 1
@.str.136 = private unnamed_addr constant [147 x i8] c"A function attempted to parse a string to a qreal but the string was not validly formatted. This should have been caught by prior user validation.\00", align 1
@.str.137 = private unnamed_addr constant [184 x i8] c"A function attempted to parse a string to a qreal but the numerical value of the string literal exceeded the range of the qreal. This should have been caught by prior user validation.\00", align 1
@.str.138 = private unnamed_addr constant [169 x i8] c"A function attempted to parse a string as a sequence of Pauli operators but the string was not validly formatted. This should have been caught by prior user validation.\00", align 1
@.str.139 = private unnamed_addr constant [127 x i8] c"A function attempted to parse an unrecognised character as a Pauli operator. This should have been caught by prior validation.\00", align 1
@.str.140 = private unnamed_addr constant [91 x i8] c"A function failed to open and read a file that previous validation confirmed was readable.\00", align 1
@.str.141 = private unnamed_addr constant [112 x i8] c"The randomiser was asked to sample from a list of probabilities which did not sum to one, within epsilon error.\00", align 1
@.str.142 = private unnamed_addr constant [143 x i8] c"A printer utility attempted and failed to allocate temporary memory, which likely results from the attemptedly printed object being too large.\00", align 1
@.str.143 = private unnamed_addr constant [173 x i8] c"A printer utility attempted to print a negative number of newlines, informed by the user-set number of trailing newlines, which should have been caught by prior validation.\00", align 1
@.str.144 = private unnamed_addr constant [152 x i8] c"A printer utility attempted to print one fewer than the user-set number of trailing newlines; but that number was zero! This violates prior validation.\00", align 1
@.str.145 = private unnamed_addr constant [92 x i8] c"An environment variable was queried but all environment variables have not yet been loaded.\00", align 1
@.str.146 = private unnamed_addr constant [90 x i8] c"All environment variables were already loaded and validated yet re-loading was attempted.\00", align 1
@.str.147 = private unnamed_addr constant [82 x i8] c"A different number of Lindblad superpropagator terms were prepared than expected.\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_errors.cpp, ptr null }]

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noreturn uwtable
define void @_Z18raiseInternalErrorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.a, ptr %7, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !15
  store i8 0, ptr %i.a, align 8, !tbaa !16
  %i.c = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %.noexc16 unwind label %bb.q   ; 6 uses

.noexc16:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.d, ptr %6, align 8, !tbaa !12, !alias.scope !40
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.a:                                             ; preds = %.noexc16
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15   ; 3 uses
  %i.j = icmp ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  br label %bb.b

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc16
  store ptr %i.e, ptr %6, align 8, !tbaa !17, !alias.scope !40
  %i.l = load i64, ptr %i.f, align 8, !tbaa !16
  store i64 %i.l, ptr %i.d, align 8, !tbaa !16, !alias.scope !40
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !15
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.a
  %i.m = phi i64 [ %i.i, %bb.a ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.m, ptr %i.o, align 8, !tbaa !15, !alias.scope !40
  store ptr %i.f, ptr %i.c, align 8, !tbaa !17
  store i64 0, ptr %i.n, align 8, !tbaa !15
  store i8 0, ptr %i.f, align 8, !tbaa !16
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %8 = load i64, ptr %i.o, align 8, !tbaa !15, !noalias !41
  %i.p = add i64 %8, -4611686018427387865
  %i.q = icmp ult i64 %i.p, 39
  br i1 %i.q, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i17

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #20
          to label %.noexc21 unwind label %bb.r

.noexc21:                                         ; preds = %bb.c
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i17: ; preds = %bb.b
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.8, i64 noundef 39)
          to label %.noexc22 unwind label %bb.r   ; 6 uses

.noexc22:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i17
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.s, ptr %5, align 8, !tbaa !12, !alias.scope !41
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !17   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

bb.d:                                             ; preds = %.noexc22
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !15   ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %bb.e

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %.noexc22
  store ptr %i.t, ptr %5, align 8, !tbaa !17, !alias.scope !41
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !16
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !16, !alias.scope !41
  %.phi.trans.insert.i19 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.pre.i20 = load i64, ptr %.phi.trans.insert.i19, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.d
  %i.ab = phi i64 [ %i.x, %bb.d ], [ %.pre.i20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !15, !alias.scope !41
  store ptr %i.u, ptr %i.r, align 8, !tbaa !17
  store i64 0, ptr %i.ac, align 8, !tbaa !15
  store i8 0, ptr %i.u, align 8, !tbaa !16
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !15, !noalias !42 ; 2 uses
  %i.ag = load i64, ptr %i.ad, align 8, !tbaa !15, !noalias !42
  %i.ah = sub i64 4611686018427387903, %i.ag
  %i.ai = icmp ult i64 %i.ah, %i.af
  br i1 %i.ai, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #20
          to label %.noexc27 unwind label %bb.s

.noexc27:                                         ; preds = %bb.f
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.e
  %i.aj = load ptr, ptr %0, align 8, !tbaa !17, !noalias !42
  %i.ak = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.aj, i64 noundef %i.af)
          to label %.noexc28 unwind label %bb.s   ; 6 uses

.noexc28:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.al, ptr %4, align 8, !tbaa !12, !alias.scope !42
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !17 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

bb.g:                                             ; preds = %.noexc28
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !15 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false)
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %.noexc28
  store ptr %i.am, ptr %4, align 8, !tbaa !17, !alias.scope !42
  %i.at = load i64, ptr %i.an, align 8, !tbaa !16
  store i64 %i.at, ptr %i.al, align 8, !tbaa !16, !alias.scope !42
  %.phi.trans.insert.i25 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.pre.i26 = load i64, ptr %.phi.trans.insert.i25, align 8, !tbaa !15
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.g
  %i.au = phi i64 [ %i.aq, %bb.g ], [ %.pre.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !15, !alias.scope !42
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !17
  store i64 0, ptr %i.av, align 8, !tbaa !15
  store i8 0, ptr %i.an, align 8, !tbaa !16
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !15, !noalias !43
  %i.ay = icmp eq i64 %i.ax, 4611686018427387903
  br i1 %i.ay, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i29

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #20
          to label %.noexc33 unwind label %bb.t

.noexc33:                                         ; preds = %bb.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i29: ; preds = %bb.h
  %i.az = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.9, i64 noundef 1)
          to label %.noexc34 unwind label %bb.t   ; 6 uses

.noexc34:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i29
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.ba, ptr %3, align 8, !tbaa !12, !alias.scope !43
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !17 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 5 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

bb.j:                                             ; preds = %.noexc34
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !15 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 16
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.bc, i64 %i.bh, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %.noexc34
  store ptr %i.bb, ptr %3, align 8, !tbaa !17, !alias.scope !43
  %i.bi = load i64, ptr %i.bc, align 8, !tbaa !16
  store i64 %i.bi, ptr %i.ba, align 8, !tbaa !16, !alias.scope !43
  %.phi.trans.insert.i31 = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.pre.i32 = load i64, ptr %.phi.trans.insert.i31, align 8, !tbaa !15
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.j
  %i.bj = phi i64 [ %i.bf, %bb.j ], [ %.pre.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !15, !alias.scope !43
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !17
  store i64 0, ptr %i.bk, align 8, !tbaa !15
  store i8 0, ptr %i.bc, align 8, !tbaa !16
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !15, !noalias !44
  %i.bn = add i64 %i.bm, -4611686018427387838
  %i.bo = icmp ult i64 %i.bn, 66
  br i1 %i.bo, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i36

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #20
          to label %.noexc40 unwind label %bb.u

.noexc40:                                         ; preds = %bb.l
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i36: ; preds = %bb.k
  %i.bp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.10, i64 noundef 66)
          to label %.noexc41 unwind label %bb.u   ; 6 uses

.noexc41:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i36
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.bq, ptr %2, align 8, !tbaa !12, !alias.scope !44
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !17 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 5 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

bb.m:                                             ; preds = %.noexc41
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !15 ; 3 uses
  %i.bw = icmp ult i64 %i.bv, 16
  call void @llvm.assume(i1 %i.bw)
  %i.bx = add nuw nsw i64 %i.bv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bq, ptr noundef nonnull align 8 dereferenceable(1) %i.bs, i64 %i.bx, i1 false)
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %.noexc41
  store ptr %i.br, ptr %2, align 8, !tbaa !17, !alias.scope !44
  %i.by = load i64, ptr %i.bs, align 8, !tbaa !16
  store i64 %i.by, ptr %i.bq, align 8, !tbaa !16, !alias.scope !44
  %.phi.trans.insert.i38 = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.pre.i39 = load i64, ptr %.phi.trans.insert.i38, align 8, !tbaa !15
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %bb.m
  %i.bz = phi i64 [ %i.bv, %bb.m ], [ %.pre.i39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bz, ptr %i.cb, align 8, !tbaa !15, !alias.scope !44
  store ptr %i.bs, ptr %i.bp, align 8, !tbaa !17
  store i64 0, ptr %i.ca, align 8, !tbaa !15
  store i8 0, ptr %i.bs, align 8, !tbaa !16
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.11)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %bb.n
  invoke void @_Z5printNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %1) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @exit(i32 noundef 1) #21
  unreachable

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i17, %bb.c
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.f
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i29, %bb.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i36, %bb.l
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.v:                                             ; preds = %bb.n
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.w:                                             ; preds = %bb.o
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = load ptr, ptr %1, align 8, !tbaa !17    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.w
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !16
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.v
  %.pn = phi { ptr, i32 } [ %i.ch, %bb.v ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %i.ci, %bb.w ] ; 2 uses
  %i.co = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.bq
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cq = load i64, ptr %i.bq, align 8, !tbaa !16
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.cg, %bb.u ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.cs = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.ba
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %i.cu = load i64, ptr %i.ba, align 8, !tbaa !16
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %bb.t
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.t ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ] ; 2 uses
  %i.cw = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.al
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.cy = load i64, ptr %i.al, align 8, !tbaa !16
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.s
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ce, %bb.s ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ] ; 2 uses
  %i.da = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.s
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.dc = load i64, ptr %i.s, align 8, !tbaa !16
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %bb.r
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cd, %bb.r ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ] ; 2 uses
  %i.de = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.d
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.dg = load i64, ptr %i.d, align 8, !tbaa !16
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %bb.q
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cc, %bb.q ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ]
  %i.di = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.a
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.dk = load i64, ptr %i.a, align 8, !tbaa !16
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

declare void @_Z5printNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #18 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !15
  %i.d = sub i64 4611686018427387903, %i.c
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2, i64 noundef %i.a) ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !12
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !15   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  store ptr %i.h, ptr %0, align 8, !tbaa !17
  %i.o = load i64, ptr %i.i, align 8, !tbaa !16
  store i64 %i.o, ptr %i.g, align 8, !tbaa !16
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = phi i64 [ %i.l, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.r, align 8, !tbaa !15
  store ptr %i.i, ptr %i.f, align 8, !tbaa !17
  store i64 0, ptr %i.q, align 8, !tbaa !15
  store i8 0, ptr %i.i, align 8, !tbaa !16
  ret void
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noreturn uwtable
define void @_Z38error_validationMessageVarWasIllFormedNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(ptr nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.a = load ptr, ptr %1, align 8, !tbaa !17, !noalias !55
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !15, !noalias !55 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !12, !alias.scope !56
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 0, ptr %i.e, align 8, !tbaa !15, !alias.scope !56
  store i8 0, ptr %i.d, align 8, !tbaa !16, !alias.scope !56
  %i.f = add i64 %i.c, 150
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !15, !alias.scope !56
  %i.h = add i64 %i.g, -4611686018427387754
  %i.i = icmp ult i64 %i.h, 150
  br i1 %i.i, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.13, i64 noundef 150)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !15, !alias.scope !56
  %i.l = sub i64 4611686018427387903, %i.k
  %i.m = icmp ult i64 %i.l, %i.c
  br i1 %i.m, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #20
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %5, align 8, !tbaa !17, !alias.scope !56 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.d, align 8, !tbaa !16, !alias.scope !56
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #22
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.t = load i64, ptr %i.e, align 8, !tbaa !15, !noalias !57
  %i.u = add i64 %i.t, -4611686018427387857
  %i.v = icmp ult i64 %i.u, 47
  br i1 %i.v, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #20
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.14, i64 noundef 47)
          to label %.noexc7 unwind label %bb.l    ; 6 uses

.noexc7:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.x, ptr %4, align 8, !tbaa !12, !alias.scope !57
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !17   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 5 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.noexc7
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !15 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.ae, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc7
  store ptr %i.y, ptr %4, align 8, !tbaa !17, !alias.scope !57
  %i.af = load i64, ptr %i.z, align 8, !tbaa !16
  store i64 %i.af, ptr %i.x, align 8, !tbaa !16, !alias.scope !57
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.ag = phi i64 [ %i.ac, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !15, !alias.scope !57
  store ptr %i.z, ptr %i.w, align 8, !tbaa !17
  store i64 0, ptr %i.ah, align 8, !tbaa !15
  store i8 0, ptr %i.z, align 8, !tbaa !16
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !15, !noalias !58 ; 2 uses
  %i.al = load i64, ptr %i.ai, align 8, !tbaa !15, !noalias !58
  %i.am = sub i64 4611686018427387903, %i.al
  %i.an = icmp ult i64 %i.am, %i.ak
  br i1 %i.an, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #20
          to label %.noexc11 unwind label %bb.m

.noexc11:                                         ; preds = %bb.g
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.f
  %i.ao = load ptr, ptr %0, align 8, !tbaa !17, !noalias !58
  %i.ap = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.ao, i64 noundef %i.ak)
          to label %.noexc12 unwind label %bb.m   ; 8 uses

.noexc12:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.aq, ptr %3, align 8, !tbaa !12, !alias.scope !58
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !17 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 7 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %.thread, label %bb.h

.thread:                                          ; preds = %.noexc12
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !15 ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.av, ptr %i.az, align 8, !tbaa !15, !alias.scope !58
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !17
  store i64 0, ptr %i.ay, align 8, !tbaa !15
  store i8 0, ptr %i.as, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i13

bb.h:                                             ; preds = %.noexc12
  store ptr %i.ar, ptr %3, align 8, !tbaa !17, !alias.scope !58
  %i.ba = load i64, ptr %i.as, align 8, !tbaa !16
  store i64 %i.ba, ptr %i.aq, align 8, !tbaa !16, !alias.scope !58
  %.phi.trans.insert.i9 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.pre.i10 = load i64, ptr %.phi.trans.insert.i9, align 8, !tbaa !15 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.pre.i10, ptr %i.bc, align 8, !tbaa !15, !alias.scope !58
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !17
  store i64 0, ptr %i.bb, align 8, !tbaa !15
  store i8 0, ptr %i.as, align 8, !tbaa !16
  %i.bd = icmp eq i64 %.pre.i10, 4611686018427387903
  br i1 %i.bd, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i13

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #20
          to label %.noexc17 unwind label %bb.n

.noexc17:                                         ; preds = %bb.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i13: ; preds = %.thread, %bb.h
  %i.be = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.11, i64 noundef 1)
          to label %.noexc18 unwind label %bb.n   ; 6 uses

.noexc18:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i13
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.bf, ptr %2, align 8, !tbaa !12, !alias.scope !59
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !17 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 5 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

bb.j:                                             ; preds = %.noexc18
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !15 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 16
  call void @llvm.assume(i1 %i.bl)
  %i.bm = add nuw nsw i64 %i.bk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(1) %i.bh, i64 %i.bm, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %.noexc18
  store ptr %i.bg, ptr %2, align 8, !tbaa !17, !alias.scope !59
  %i.bn = load i64, ptr %i.bh, align 8, !tbaa !16
  store i64 %i.bn, ptr %i.bf, align 8, !tbaa !16, !alias.scope !59
  %.phi.trans.insert.i15 = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.pre.i16 = load i64, ptr %.phi.trans.insert.i15, align 8, !tbaa !15
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %bb.j
  %i.bo = phi i64 [ %i.bk, %bb.j ], [ %.pre.i16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bo, ptr %i.bq, align 8, !tbaa !15, !alias.scope !59
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !17
  store i64 0, ptr %i.bp, align 8, !tbaa !15
  store i8 0, ptr %i.bh, align 8, !tbaa !16
  invoke void @_Z18raiseInternalErrorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.unreachable unwind label %bb.o

.unreachable:                                     ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.d
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.g
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i13, %bb.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

bb.o:                                             ; preds = %bb.k
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.bf
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.o
  %i.bx = load i64, ptr %i.bf, align 8, !tbaa !16
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.n ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %i.bu, %bb.o ] ; 2 uses
  %i.bz = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.aq
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.cb = load i64, ptr %i.aq, align 8, !tbaa !16
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.bs, %bb.m ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ] ; 2 uses
  %i.cd = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.x
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.cf = load i64, ptr %i.x, align 8, !tbaa !16
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %i.br, %bb.l ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ]
  %i.ch = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.d
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.cj = load i64, ptr %i.d, align 8, !tbaa !16
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %common.resume
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noreturn uwtable
define void @_Z40error_validationMessageVarNotSubstitutedNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(ptr nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.a = load ptr, ptr %1, align 8, !tbaa !17, !noalias !70
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !15, !noalias !70 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !12, !alias.scope !71
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 0, ptr %i.e, align 8, !tbaa !15, !alias.scope !71
  store i8 0, ptr %i.d, align 8, !tbaa !16, !alias.scope !71
  %i.f = add i64 %i.c, 108
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !15, !alias.scope !71
  %i.h = add i64 %i.g, -4611686018427387796
  %i.i = icmp ult i64 %i.h, 108
  br i1 %i.i, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.15, i64 noundef 108)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !15, !alias.scope !71
  %i.l = sub i64 4611686018427387903, %i.k
  %i.m = icmp ult i64 %i.l, %i.c
  br i1 %i.m, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #20
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %5, align 8, !tbaa !17, !alias.scope !71 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.d, align 8, !tbaa !16, !alias.scope !71
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #22
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.t = load i64, ptr %i.e, align 8, !tbaa !15, !noalias !72
  %i.u = add i64 %i.t, -4611686018427387834
  %i.v = icmp ult i64 %i.u, 70
  br i1 %i.v, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #20
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.16, i64 noundef 70)
          to label %.noexc7 unwind label %bb.l    ; 6 uses

.noexc7:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.x, ptr %4, align 8, !tbaa !12, !alias.scope !72
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !17   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 5 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.noexc7
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !15 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.ae, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc7
  store ptr %i.y, ptr %4, align 8, !tbaa !17, !alias.scope !72
  %i.af = load i64, ptr %i.z, align 8, !tbaa !16
  store i64 %i.af, ptr %i.x, align 8, !tbaa !16, !alias.scope !72
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.ag = phi i64 [ %i.ac, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !15, !alias.scope !72
  store ptr %i.z, ptr %i.w, align 8, !tbaa !17
  store i64 0, ptr %i.ah, align 8, !tbaa !15
  store i8 0, ptr %i.z, align 8, !tbaa !16
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !15, !noalias !73 ; 2 uses
  %i.al = load i64, ptr %i.ai, align 8, !tbaa !15, !noalias !73
  %i.am = sub i64 4611686018427387903, %i.al
  %i.an = icmp ult i64 %i.am, %i.ak
  br i1 %i.an, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #20
          to label %.noexc11 unwind label %bb.m

.noexc11:                                         ; preds = %bb.g
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.f
  %i.ao = load ptr, ptr %0, align 8, !tbaa !17, !noalias !73
  %i.ap = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.ao, i64 noundef %i.ak)
          to label %.noexc12 unwind label %bb.m   ; 8 uses

.noexc12:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.aq, ptr %3, align 8, !tbaa !12, !alias.scope !73
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !17 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 7 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %.thread, label %bb.h

.thread:                                          ; preds = %.noexc12
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !15 ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.av, ptr %i.az, align 8, !tbaa !15, !alias.scope !73
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !17
  store i64 0, ptr %i.ay, align 8, !tbaa !15
  store i8 0, ptr %i.as, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i13

bb.h:                                             ; preds = %.noexc12
  store ptr %i.ar, ptr %3, align 8, !tbaa !17, !alias.scope !73
  %i.ba = load i64, ptr %i.as, align 8, !tbaa !16
  store i64 %i.ba, ptr %i.aq, align 8, !tbaa !16, !alias.scope !73
  %.phi.trans.insert.i9 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.pre.i10 = load i64, ptr %.phi.trans.insert.i9, align 8, !tbaa !15 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.pre.i10, ptr %i.bc, align 8, !tbaa !15, !alias.scope !73
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !17
  store i64 0, ptr %i.bb, align 8, !tbaa !15
  store i8 0, ptr %i.as, align 8, !tbaa !16
  %i.bd = icmp eq i64 %.pre.i10, 4611686018427387903
  br i1 %i.bd, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i13

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #20
          to label %.noexc17 unwind label %bb.n

.noexc17:                                         ; preds = %bb.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i13: ; preds = %.thread, %bb.h
  %i.be = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.11, i64 noundef 1)
          to label %.noexc18 unwind label %bb.n   ; 6 uses

.noexc18:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i13
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.bf, ptr %2, align 8, !tbaa !12, !alias.scope !74
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !17 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 5 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

bb.j:                                             ; preds = %.noexc18
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !15 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 16
  call void @llvm.assume(i1 %i.bl)
  %i.bm = add nuw nsw i64 %i.bk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(1) %i.bh, i64 %i.bm, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %.noexc18
  store ptr %i.bg, ptr %2, align 8, !tbaa !17, !alias.scope !74
  %i.bn = load i64, ptr %i.bh, align 8, !tbaa !16
  store i64 %i.bn, ptr %i.bf, align 8, !tbaa !16, !alias.scope !74
  %.phi.trans.insert.i15 = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.pre.i16 = load i64, ptr %.phi.trans.insert.i15, align 8, !tbaa !15
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %bb.j
  %i.bo = phi i64 [ %i.bk, %bb.j ], [ %.pre.i16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bo, ptr %i.bq, align 8, !tbaa !15, !alias.scope !74
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !17
  store i64 0, ptr %i.bp, align 8, !tbaa !15
  store i8 0, ptr %i.bh, align 8, !tbaa !16
  invoke void @_Z18raiseInternalErrorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.unreachable unwind label %bb.o

.unreachable:                                     ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.d
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.g
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i13, %bb.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

bb.o:                                             ; preds = %bb.k
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.bf
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.o
  %i.bx = load i64, ptr %i.bf, align 8, !tbaa !16
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.n ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %i.bu, %bb.o ] ; 2 uses
  %i.bz = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.aq
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.cb = load i64, ptr %i.aq, align 8, !tbaa !16
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.bs, %bb.m ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ] ; 2 uses
  %i.cd = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.x
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.cf = load i64, ptr %i.x, align 8, !tbaa !16
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %i.br, %bb.l ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ]
  %i.ch = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.d
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.cj = load i64, ptr %i.d, align 8, !tbaa !16
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %common.resume
}

; Function Attrs: mustprogress noreturn uwtable
define void @_Z49error_validationMessageContainedUnsubstitutedVarsNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.a = load ptr, ptr %0, align 8, !tbaa !17, !noalias !81
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !15, !noalias !81 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !12, !alias.scope !82
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 0, ptr %i.e, align 8, !tbaa !15, !alias.scope !82
  store i8 0, ptr %i.d, align 8, !tbaa !16, !alias.scope !82
  %i.f = add i64 %i.c, 177
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !15, !alias.scope !82
  %i.h = add i64 %i.g, -4611686018427387727
  %i.i = icmp ult i64 %i.h, 177
  br i1 %i.i, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.17, i64 noundef 177)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !15, !alias.scope !82
  %i.l = sub i64 4611686018427387903, %i.k
  %i.m = icmp ult i64 %i.l, %i.c
  br i1 %i.m, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #20
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %2, align 8, !tbaa !17, !alias.scope !82 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.d, align 8, !tbaa !16, !alias.scope !82
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #22
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.t = load i64, ptr %i.e, align 8, !tbaa !15, !noalias !83
  %i.u = icmp eq i64 %i.t, 4611686018427387903
  br i1 %i.u, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #20
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.11, i64 noundef 1)
          to label %.noexc3 unwind label %bb.g    ; 6 uses

.noexc3:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !12, !alias.scope !83
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !17   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.noexc3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !15 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc3
  store ptr %i.x, ptr %1, align 8, !tbaa !17, !alias.scope !83
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !16
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !16, !alias.scope !83
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.af = phi i64 [ %i.ab, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !15, !alias.scope !83
  store ptr %i.y, ptr %i.v, align 8, !tbaa !17
  store i64 0, ptr %i.ag, align 8, !tbaa !15
  store i8 0, ptr %i.y, align 8, !tbaa !16
  invoke void @_Z18raiseInternalErrorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %.unreachable unwind label %bb.h

.unreachable:                                     ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.d
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

bb.h:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %1, align 8, !tbaa !17    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.w
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.h
  %i.am = load i64, ptr %i.w, align 8, !tbaa !16
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.g ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ], [ %i.aj, %bb.h ]
  %i.ao = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.d
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %i.aq = load i64, ptr %i.d, align 8, !tbaa !16
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %common.resume
}

; Function Attrs: mustprogress noreturn uwtable
define void @_Z60error_validationEncounteredUnsupportedDistributedDenseMatrixv() local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 132, ptr %i.a, align 8, !tbaa !18
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !17
  %i.d = load i64, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(132) %i.c, ptr noundef nonnull align 1 dereferenceable(132) @.str.18, i64 132, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  store i8 0, ptr %i.f, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  invoke void @_Z18raiseInternalErrorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %.unreachable unwind label %bb.a

.unreachable:                                     ; preds = %.noexc.i
  unreachable

bb.a:                                             ; preds = %.noexc.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.a
  %i.j = load i64, ptr %i.b, align 8, !tbaa !16
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress noreturn uwtable
define void @_Z51error_validationListUniquenessCheckExceededMaskSizev() local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 196, ptr %i.a, align 8, !tbaa !18
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !17
  %i.d = load i64, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(196) %i.c, ptr noundef nonnull align 1 dereferenceable(196) @.str.19, i64 196, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  store i8 0, ptr %i.f, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  invoke void @_Z18raiseInternalErrorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %.unreachable unwind label %bb.a

.unreachable:                                     ; preds = %.noexc.i
  unreachable

bb.a:                                             ; preds = %.noexc.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.a
  %i.j = load i64, ptr %i.b, align 8, !tbaa !16
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress noreturn uwtable
define void @_Z27error_allocOfQuESTEnvFailedv() local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 79, ptr %i.a, align 8, !tbaa !18
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !17
  %i.d = load i64, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %i.c, ptr noundef nonnull align 1 dereferenceable(79) @.str.20, i64 79, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  store i8 0, ptr %i.f, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  invoke void @_Z18raiseInternalErrorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %.unreachable unwind label %bb.a

.unreachable:                                     ; preds = %.noexc.i
  unreachable

bb.a:                                             ; preds = %.noexc.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.a
  %i.j = load i64, ptr %i.b, align 8, !tbaa !16
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  resume { ptr, i32 } %i.g
}
end_hunk_0
begin_hunk_1_@_Z46error_localiserGivenDistribMatrixAndLocalQuregv:.noexc.i
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress noreturn uwtable
define void @_Z38error_localiserFailedToAllocTempMemoryv() local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 71, ptr %i.a, align 8, !tbaa !18
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !17
  %i.d = load i64, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %i.c, ptr noundef nonnull align 1 dereferenceable(71) @.str.46, i64 71, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  store i8 0, ptr %i.f, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  invoke void @_Z18raiseInternalErrorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %.unreachable unwind label %bb.a

.unreachable:                                     ; preds = %.noexc.i
  unreachable

bb.a:                                             ; preds = %.noexc.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.a
  %i.j = load i64, ptr %i.b, align 8, !tbaa !16
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress noreturn uwtable
define void @_Z39error_localiserGivenPauliStrWithoutXorYv() local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 88, ptr %i.a, align 8, !tbaa !18
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !17
  %i.d = load i64, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(88) %i.c, ptr noundef nonnull align 1 dereferenceable(88) @.str.47, i64 88, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  store i8 0, ptr %i.f, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  invoke void @_Z18raiseInternalErrorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %.unreachable unwind label %bb.a

.unreachable:                                     ; preds = %.noexc.i
  unreachable

bb.a:                                             ; preds = %.noexc.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.a
  %i.j = load i64, ptr %i.b, align 8, !tbaa !16
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress noreturn uwtable
define void @_Z49error_localiserGivenNonUnityGlobalFactorToZTensorv() local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 184, ptr %i.a, align 8, !tbaa !18
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !17
  %i.d = load i64, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(184) %i.c, ptr noundef nonnull align 1 dereferenceable(184) @.str.48, i64 184, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  store i8 0, ptr %i.f, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  invoke void @_Z18raiseInternalErrorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %.unreachable unwind label %bb.a

.unreachable:                                     ; preds = %.noexc.i
  unreachable

bb.a:                                             ; preds = %.noexc.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.a
  %i.j = load i64, ptr %i.b, align 8, !tbaa !16
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define void @_Z47assert_localiserSuccessfullyAllocatedTempMemoryPSt7complexIdEb(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %0)
  br i1 %i.a, label %bb.g, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %.str.49..str.50 = select i1 %1, ptr @.str.49, ptr @.str.50
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.b, ptr noundef nonnull align 1 dereferenceable(3) %.str.49..str.50, i64 3, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 3, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 19
  store i8 0, ptr %i.d, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !12, !alias.scope !93
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.f, align 8, !tbaa !15, !alias.scope !93
  store i8 0, ptr %i.e, align 8, !tbaa !16, !alias.scope !93
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 67)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15, !alias.scope !93
  %i.h = and i64 %i.g, -64
  %i.i = icmp eq i64 %i.h, 4611686018427387840
  br i1 %i.i, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.51, i64 noundef 64)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.k = load i64, ptr %i.f, align 8, !tbaa !15, !alias.scope !93
  %i.l = add i64 %i.k, -4611686018427387901
  %i.m = icmp ult i64 %i.l, 3
  br i1 %i.m, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #20
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %i.b, i64 noundef 3)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %._crit_edge.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !17, !alias.scope !93 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.e
  br i1 %i.q, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.r = load i64, ptr %i.f, align 8, !tbaa !15, !noalias !94
  %i.s = and i64 %i.r, -8
  %i.t = icmp eq i64 %i.s, 4611686018427387896
  br i1 %i.t, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #20
          to label %.noexc9 unwind label %bb.h

.noexc9:                                          ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.52, i64 noundef 8)
          to label %.noexc10 unwind label %bb.h   ; 6 uses

.noexc10:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.v, ptr %3, align 8, !tbaa !12, !alias.scope !94
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !17   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 5 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.noexc10
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !15  ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.ac, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc10
  store ptr %i.w, ptr %3, align 8, !tbaa !17, !alias.scope !94
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !16
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !16, !alias.scope !94
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.ae = phi i64 [ %i.aa, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !15, !alias.scope !94
  store ptr %i.x, ptr %i.u, align 8, !tbaa !17
  store i64 0, ptr %i.af, align 8, !tbaa !15
  store i8 0, ptr %i.x, align 8, !tbaa !16
  invoke void @_Z18raiseInternalErrorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 dereferenceable(32) %3)
          to label %.unreachable unwind label %bb.i

.unreachable:                                     ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

bb.i:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.v
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.i
  %i.al = load i64, ptr %i.v, align 8, !tbaa !16
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.h ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %i.ai, %bb.i ] ; 2 uses
  %i.an = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.e
  br i1 %i.ao, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %bb.c
  %.sink = phi ptr [ %i.p, %bb.c ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.o, %bb.c ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ]
  %i.ap = load i64, ptr %i.e, align 8, !tbaa !16
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.aq) #22
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %i.o, %bb.c ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.ar = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.b
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %.body
  %i.at = load i64, ptr %i.b, align 8, !tbaa !16
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn.pn
}

declare noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_Z29assert_localiserGivenStateVec5Qureg(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0) local_unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !27
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 88, ptr %i.a, align 8, !tbaa !18
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !17
  %i.f = load i64, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(88) %i.e, ptr noundef nonnull align 1 dereferenceable(88) @.str.53, i64 88, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 0, ptr %i.h, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  invoke void @_Z18raiseInternalErrorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %.unreachable unwind label %bb.b

.unreachable:                                     ; preds = %.noexc.i
  unreachable

bb.b:                                             ; preds = %.noexc.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.d
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.b
  %i.l = load i64, ptr %i.d, align 8, !tbaa !16
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  resume { ptr, i32 } %i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z29assert_localiserGivenDensMatr5Qureg(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0) local_unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !27
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.noexc.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.noexc.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 86, ptr %i.a, align 8, !tbaa !18
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !17
  %i.f = load i64, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(86) %i.e, ptr noundef nonnull align 1 dereferenceable(86) @.str.54, i64 86, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 0, ptr %i.h, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  invoke void @_Z18raiseInternalErrorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %.unreachable unwind label %bb.b

.unreachable:                                     ; preds = %.noexc.i
  unreachable

bb.b:                                             ; preds = %.noexc.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.d
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.b
  %i.l = load i64, ptr %i.d, align 8, !tbaa !16
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  resume { ptr, i32 } %i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z49assert_localiserPartialTraceGivenCompatibleQuregs5QuregS_i(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %1, i32 noundef %2) local_unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_1
begin_hunk_2_@_Z51assert_localiserDistribQuregSpooferGivenValidQuregs5QuregS_:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !23
  %i.d = icmp eq i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp ne i32 %i.f, 0
  %or.cond = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 113, ptr %i.a, align 8, !tbaa !18
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !17
  %i.j = load i64, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(113) %i.i, ptr noundef nonnull align 1 dereferenceable(113) @.str.60, i64 113, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  store i8 0, ptr %i.l, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  invoke void @_Z18raiseInternalErrorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.unreachable unwind label %bb.b

.unreachable:                                     ; preds = %.noexc.i
  unreachable

bb.b:                                             ; preds = %.noexc.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.h
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.b
  %i.p = load i64, ptr %i.h, align 8, !tbaa !16
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  resume { ptr, i32 } %i.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z32assert_highPauliStrSumMaskIsZero11PauliStrSum(ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %0) local_unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !98     ; 2 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.lr.ph, label %._crit_edge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.lr.ph: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !99
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.f = add nuw nsw i64 %.0510, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, !llvm.loop !96

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.lr.ph, %bb.b
  %.0510 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.0510
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !101
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.b, label %.noexc.i

.noexc.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.j, ptr %1, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 163, ptr %i.a, align 8, !tbaa !18
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.k, ptr %1, align 8, !tbaa !17
  %i.l = load i64, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(163) %i.k, ptr noundef nonnull align 1 dereferenceable(163) @.str.61, i64 163, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  store i8 0, ptr %i.n, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  invoke void @_Z18raiseInternalErrorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %.unreachable unwind label %bb.c

.unreachable:                                     ; preds = %.noexc.i
  unreachable

bb.c:                                             ; preds = %.noexc.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.j
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.c
  %i.r = load i64, ptr %i.j, align 8, !tbaa !16
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define void @_Z50assert_numQubitsMatchesQubitStatesAndTemplateParamiiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly align 8 captures(none) dereferenceable(32) %3) local_unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %.not = icmp eq i32 %0, %1
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.b = load ptr, ptr %3, align 8, !tbaa !17, !noalias !112
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15, !noalias !112 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.e, ptr %7, align 8, !tbaa !12, !alias.scope !113
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i64 0, ptr %i.f, align 8, !tbaa !15, !alias.scope !113
  store i8 0, ptr %i.e, align 8, !tbaa !16, !alias.scope !113
  %i.g = add i64 %i.d, 59
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.g)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !15, !alias.scope !113
  %i.i = add i64 %i.h, -4611686018427387845
  %i.j = icmp ult i64 %i.i, 59
  br i1 %i.j, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.c
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.62, i64 noundef 59)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.d ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !15, !alias.scope !113
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #20
          to label %.cont.i.i unwind label %bb.d

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %7, align 8, !tbaa !17, !alias.scope !113 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.s = load i64, ptr %i.e, align 8, !tbaa !16, !alias.scope !113
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #22
  br label %common.resume

common.resume:                                    ; preds = %bb.s, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.d ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ], [ %i.cr, %bb.s ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.u = load i64, ptr %i.f, align 8, !tbaa !15, !noalias !114
  %i.v = add i64 %i.u, -4611686018427387898
  %i.w = icmp ult i64 %i.v, 6
  br i1 %i.w, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.e:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #20
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.63, i64 noundef 6)
          to label %.noexc19 unwind label %bb.n   ; 6 uses

.noexc19:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.y, ptr %6, align 8, !tbaa !12, !alias.scope !114
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !17   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %.noexc19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !15 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc19
  store ptr %i.z, ptr %6, align 8, !tbaa !17, !alias.scope !114
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !16
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !16, !alias.scope !114
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %i.ah = phi i64 [ %i.ad, %bb.f ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !15, !alias.scope !114
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !17
  store i64 0, ptr %i.ai, align 8, !tbaa !15
  store i8 0, ptr %i.aa, align 8, !tbaa !16
  call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !15, !noalias !115 ; 2 uses
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !15, !noalias !115
  %i.am = sub i64 4611686018427387903, %i.al
  %i.an = icmp ult i64 %i.am, %i.ak
  br i1 %i.an, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #20
          to label %.noexc23 unwind label %bb.o

.noexc23:                                         ; preds = %bb.h
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.g
  %i.ao = load ptr, ptr %3, align 8, !tbaa !17, !noalias !115
  %i.ap = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.ao, i64 noundef %i.ak)
          to label %.noexc24 unwind label %bb.o   ; 6 uses

.noexc24:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.aq, ptr %5, align 8, !tbaa !12, !alias.scope !115
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !17 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 5 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

bb.i:                                             ; preds = %.noexc24
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !15 ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false)
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %.noexc24
  store ptr %i.ar, ptr %5, align 8, !tbaa !17, !alias.scope !115
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !16
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !16, !alias.scope !115
  %.phi.trans.insert.i21 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.pre.i22 = load i64, ptr %.phi.trans.insert.i21, align 8, !tbaa !15
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.i
  %i.az = phi i64 [ %i.av, %bb.i ], [ %.pre.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !15, !alias.scope !115
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !17
  store i64 0, ptr %i.ba, align 8, !tbaa !15
  store i8 0, ptr %i.as, align 8, !tbaa !16
  %i.bc = add i64 %i.az, -4611686018427387875
  %i.bd = icmp ult i64 %i.bc, 29
  br i1 %i.bd, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i25

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #20
          to label %.noexc29 unwind label %bb.p

.noexc29:                                         ; preds = %bb.k
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i25: ; preds = %bb.j
  %i.be = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.64, i64 noundef 29)
          to label %.noexc30 unwind label %bb.p   ; 6 uses

.noexc30:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i25
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.bf, ptr %4, align 8, !tbaa !12, !alias.scope !116
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !17 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 5 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

bb.l:                                             ; preds = %.noexc30
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !15 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 16
  call void @llvm.assume(i1 %i.bl)
  %i.bm = add nuw nsw i64 %i.bk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(1) %i.bh, i64 %i.bm, i1 false)
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %.noexc30
  store ptr %i.bg, ptr %4, align 8, !tbaa !17, !alias.scope !116
  %i.bn = load i64, ptr %i.bh, align 8, !tbaa !16
  store i64 %i.bn, ptr %i.bf, align 8, !tbaa !16, !alias.scope !116
  %.phi.trans.insert.i27 = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.pre.i28 = load i64, ptr %.phi.trans.insert.i27, align 8, !tbaa !15
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.l
  %i.bo = phi i64 [ %i.bk, %bb.l ], [ %.pre.i28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.bo, ptr %i.bq, align 8, !tbaa !15, !alias.scope !116
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !17
  store i64 0, ptr %i.bp, align 8, !tbaa !15
  store i8 0, ptr %i.bh, align 8, !tbaa !16
  invoke void @_Z18raiseInternalErrorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 dereferenceable(32) %4)
          to label %.unreachable unwind label %bb.q

.unreachable:                                     ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.e
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.h
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i25, %bb.k
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

bb.q:                                             ; preds = %bb.m
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.bf
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.q
  %i.bx = load i64, ptr %i.bf, align 8, !tbaa !16
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.p ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %i.bu, %bb.q ] ; 2 uses
  %i.bz = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.aq
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %i.cb = load i64, ptr %i.aq, align 8, !tbaa !16
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.bs, %bb.o ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ] ; 2 uses
  %i.cd = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.y
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.cf = load i64, ptr %i.y, align 8, !tbaa !16
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %i.br, %bb.n ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ]
  %i.ch = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.e
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.cj = load i64, ptr %i.e, align 8, !tbaa !16
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %common.resume

bb.r:                                             ; preds = %bb.a
  %i.cl = icmp eq i32 %2, -1
  %.not15 = icmp eq i32 %2, %0
  %or.cond = or i1 %i.cl, %.not15
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %.noexc.i

.noexc.i:                                         ; preds = %bb.r
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.cm, ptr %8, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 140, ptr %i.a, align 8, !tbaa !18
  %i.cn = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.cn, ptr %8, align 8, !tbaa !17
  %i.co = load i64, ptr %i.a, align 8, !tbaa !18  ; 3 uses
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(140) %i.cn, ptr noundef nonnull align 1 dereferenceable(140) @.str.65, i64 140, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !15
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.co
  store i8 0, ptr %i.cq, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  invoke void @_Z18raiseInternalErrorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 dereferenceable(32) %8)
          to label %.unreachable61 unwind label %bb.s

.unreachable61:                                   ; preds = %.noexc.i
  unreachable

bb.s:                                             ; preds = %.noexc.i
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.cm
  br i1 %i.ct, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.s
  %i.cu = load i64, ptr %i.cm, align 8, !tbaa !16
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #22
  br label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.r
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z51assert_numCtrlsMatchesNumCtrlStatesAndTemplateParamiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.a, ptr noundef nonnull align 1 dereferenceable(7) @.str.66, i64 7, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 7, ptr %i.b, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 23
  store i8 0, ptr %i.c, align 1, !tbaa !16
  invoke void @_Z50assert_numQubitsMatchesQubitStatesAndTemplateParamiiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %3, align 8, !tbaa !17     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !16
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %3, align 8, !tbaa !17     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.b
  %i.k = load i64, ptr %i.a, align 8, !tbaa !16
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress uwtable
end_hunk_2
