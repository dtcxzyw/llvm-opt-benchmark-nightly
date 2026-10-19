Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/BytecodeDataProvider?download=true
inline.NumInlined: 765
inline.NumDeleted: 470
begin_hunk_0

$_ZNK6hermes3hbc9DebugInfo15getFilenameByIDB5cxx11Ej = comdat any

$_ZNK6hermes3hbc20BCProviderFromBuffer19getStringTableEntryEj = comdat any

$_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj = comdat any

$_ZNK6hermes3hbc20BCProviderFromBuffer11getBytecodeEj = comdat any

$_ZNK6hermes3hbc20BCProviderFromBuffer17getExceptionTableEj = comdat any

$_ZNK6hermes3hbc20BCProviderFromBuffer15getDebugOffsetsEj = comdat any

$_ZN6hermes3hbc20BCProviderFromBufferD2Ev = comdat any

$_ZN6hermes3hbc20BCProviderFromBufferD0Ev = comdat any

$_ZNK6hermes3hbc20BCProviderFromBuffer14isFunctionLazyEj = comdat any

$_ZNK6hermes3hbc20BCProviderFromBuffer6isLazyEv = comdat any

$_ZN6hermes3hbc20BCProviderFromBuffer20getPageAccessTrackerEv = comdat any

$_ZNK6hermes3hbc20BCProviderFromBuffer12getRawBufferEv = comdat any

$_ZN4llvh11raw_ostreamlsEPKc = comdat any

$_ZNK6hermes3hbc14BCProviderBase11getEpilogueEv = comdat any

$_ZNK6hermes3hbc14BCProviderBase13getSourceHashEv = comdat any

$_ZN6hermes3hbc14BCProviderBaseD2Ev = comdat any

$_ZN6hermes3hbc14BCProviderBaseD0Ev = comdat any

$_ZN6hermes3hbc14BCProviderBase11startWarmupEh = comdat any

$_ZN6hermes3hbc14BCProviderBase7madviseENS_8oscompat7MAdviceE = comdat any

$_ZN6hermes3hbc14BCProviderBase27adviseStringTableSequentialEv = comdat any

$_ZN6hermes3hbc14BCProviderBase23adviseStringTableRandomEv = comdat any

$_ZN6hermes3hbc14BCProviderBase19willNeedStringTableEv = comdat any

$_ZN6hermes3hbc14BCProviderBase22startPageAccessTrackerEv = comdat any

$_ZN6hermes3hbc14BCProviderBase20getPageAccessTrackerEv = comdat any

$_ZNK6hermes3hbc14BCProviderBase12getRawBufferEv = comdat any

$_ZN4llvh15SmallVectorImplIN6hermes3hbc15DebugFileRegionEEaSEOS4_ = comdat any

$_ZNSt6thread24_M_thread_deps_never_runEv = comdat any

$_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKhjPSt6atomicIbEES4_jS7_EEEEED0Ev = comdat any

$_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKhjPSt6atomicIbEES4_jS7_EEEEE6_M_runEv = comdat any

$_ZTVN6hermes3hbc14BCProviderBaseE = comdat any

$_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKhjPSt6atomicIbEES4_jS7_EEEEEE = comdat any

@_ZTVN6hermes3hbc20BCProviderFromBufferE = hidden unnamed_addr constant { [22 x ptr] } { [22 x ptr] [ptr null, ptr null, ptr @_ZN6hermes3hbc20BCProviderFromBuffer15createDebugInfoEv, ptr @_ZNK6hermes3hbc20BCProviderFromBuffer19getStringTableEntryEj, ptr @_ZNK6hermes3hbc20BCProviderFromBuffer11getEpilogueEv, ptr @_ZNK6hermes3hbc20BCProviderFromBuffer13getSourceHashEv, ptr @_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj, ptr @_ZNK6hermes3hbc20BCProviderFromBuffer11getBytecodeEj, ptr @_ZNK6hermes3hbc20BCProviderFromBuffer17getExceptionTableEj, ptr @_ZNK6hermes3hbc20BCProviderFromBuffer15getDebugOffsetsEj, ptr @_ZN6hermes3hbc20BCProviderFromBufferD2Ev, ptr @_ZN6hermes3hbc20BCProviderFromBufferD0Ev, ptr @_ZNK6hermes3hbc20BCProviderFromBuffer14isFunctionLazyEj, ptr @_ZNK6hermes3hbc20BCProviderFromBuffer6isLazyEv, ptr @_ZN6hermes3hbc20BCProviderFromBuffer11startWarmupEh, ptr @_ZN6hermes3hbc20BCProviderFromBuffer7madviseENS_8oscompat7MAdviceE, ptr @_ZN6hermes3hbc20BCProviderFromBuffer27adviseStringTableSequentialEv, ptr @_ZN6hermes3hbc20BCProviderFromBuffer23adviseStringTableRandomEv, ptr @_ZN6hermes3hbc20BCProviderFromBuffer19willNeedStringTableEv, ptr @_ZN6hermes3hbc20BCProviderFromBuffer22startPageAccessTrackerEv, ptr @_ZN6hermes3hbc20BCProviderFromBuffer20getPageAccessTrackerEv, ptr @_ZNK6hermes3hbc20BCProviderFromBuffer12getRawBufferEv] }, align 8
@.str = private unnamed_addr constant [63 x i8] c"Buffer smaller than a bytecode file header. Expected at least \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c" bytes but got \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" bytes\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Buffer misaligned.\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Incorrect magic number\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Wrong bytecode version. Expected \00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c" but got \00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Bytecode does not contain any functions\00", align 1
@.str.8 = private unnamed_addr constant [78 x i8] c"Buffer is smaller than the size stated in the file header. Expected at least \00", align 1
@_ZTVN4llvh18raw_string_ostreamE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZTVN6hermes3hbc14BCProviderBaseE = linkonce_odr hidden unnamed_addr constant { [22 x ptr] } { [22 x ptr] [ptr null, ptr null, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZNK6hermes3hbc14BCProviderBase11getEpilogueEv, ptr @_ZNK6hermes3hbc14BCProviderBase13getSourceHashEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN6hermes3hbc14BCProviderBaseD2Ev, ptr @_ZN6hermes3hbc14BCProviderBaseD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN6hermes3hbc14BCProviderBase11startWarmupEh, ptr @_ZN6hermes3hbc14BCProviderBase7madviseENS_8oscompat7MAdviceE, ptr @_ZN6hermes3hbc14BCProviderBase27adviseStringTableSequentialEv, ptr @_ZN6hermes3hbc14BCProviderBase23adviseStringTableRandomEv, ptr @_ZN6hermes3hbc14BCProviderBase19willNeedStringTableEv, ptr @_ZN6hermes3hbc14BCProviderBase22startPageAccessTrackerEv, ptr @_ZN6hermes3hbc14BCProviderBase20getPageAccessTrackerEv, ptr @_ZNK6hermes3hbc14BCProviderBase12getRawBufferEv] }, comdat, align 8
@.str.10 = private unnamed_addr constant [30 x i8] c"overflow past end of bytecode\00", align 1
@_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKhjPSt6atomicIbEES4_jS7_EEEEEE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZNSt6thread6_StateD2Ev, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKhjPSt6atomicIbEES4_jS7_EEEEED0Ev, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKhjPSt6atomicIbEES4_jS7_EEEEE6_M_runEv] }, comdat, align 8

@_ZN6hermes3hbc20BCProviderFromBufferC1ESt10unique_ptrIKNS_6BufferESt14default_deleteIS4_EENS0_12BytecodeFormE = hidden unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN6hermes3hbc20BCProviderFromBufferC2ESt10unique_ptrIKNS_6BufferESt14default_deleteIS4_EENS0_12BytecodeFormE

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr %1, i64 %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %struct.BytecodeFileFieldsPopulator, align 8 ; 7 uses
  %i.a = tail call fastcc noundef zeroext i1 @_ZN6hermes3hbc12_GLOBAL__N_111sanityCheckEN4llvh8ArrayRefIhEENS0_12BytecodeFormEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr %1, i64 %2, i32 noundef %4, ptr noundef %3) ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store ptr %0, ptr %5, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.b, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.e, ptr %i.c, align 8, !tbaa !14
  store ptr %1, ptr %0, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %1, ptr %i.f, align 8, !tbaa !35
  call void @_ZN6hermes3hbc28visitBytecodeSegmentsInOrderIZNS0_18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEE27BytecodeFileFieldsPopulatorEEvRT_(ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN6hermes3hbc12_GLOBAL__N_111sanityCheckEN4llvh8ArrayRefIhEENS0_12BytecodeFormEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr %0, i64 %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.llvh::raw_string_ostream", align 8 ; 8 uses
  %5 = alloca %"class.llvh::raw_string_ostream", align 8 ; 8 uses
  %6 = alloca %"class.llvh::raw_string_ostream", align 8 ; 8 uses
  %i.a = icmp ult i64 %1, 128
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not29 = icmp eq ptr %3, null
  br i1 %.not29, label %bb.w, label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 1, ptr %i.b, align 8, !tbaa !143
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh18raw_string_ostreamE, i64 16), ptr %4, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %3, ptr %i.d, align 8, !tbaa !145
  %i.e = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull @.str, i64 noundef 62) #20
  %i.f = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %i.e, i64 noundef 128) #20 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41   ; 2 uses
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ult i64 %i.m, 15
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.o = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.f, ptr noundef nonnull @.str.1, i64 noundef 15) #20
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit32

bb.d:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.j, ptr noundef nonnull align 1 dereferenceable(15) @.str.1, i64 15, i1 false)
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 15
  store ptr %i.q, ptr %i.i, align 8, !tbaa !41
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit32

_ZN4llvh11raw_ostreamlsEPKc.exit32:               ; preds = %bb.c, %bb.d
  %.0.i.i31 = phi ptr [ %i.o, %bb.c ], [ %i.f, %bb.d ]
  %i.r = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i31, i64 noundef %1) #20 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41   ; 2 uses
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp ult i64 %i.y, 6
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit32
  %i.aa = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.r, ptr noundef nonnull @.str.2, i64 noundef 6) #20 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit35

bb.f:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.v, ptr noundef nonnull align 1 dereferenceable(6) @.str.2, i64 6, i1 false)
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !41
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 6
  store ptr %i.ac, ptr %i.u, align 8, !tbaa !41
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit35

_ZN4llvh11raw_ostreamlsEPKc.exit35:               ; preds = %bb.e, %bb.f
  call void @_ZN4llvh18raw_string_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.w

bb.g:                                             ; preds = %bb.a
  %i.ad = ptrtoint ptr %0 to i64
  %i.ae = and i64 %i.ad, 3
  %.not = icmp eq i64 %i.ae, 0
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not28 = icmp eq ptr %3, null
  br i1 %.not28, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !44
  %i.ah = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %i.ag, ptr noundef nonnull @.str.3, i64 noundef 18) #20 ; 0 uses
  br label %bb.w

bb.j:                                             ; preds = %bb.g
  %i.ai = icmp eq i32 %2, 1
  %i.aj = select i1 %i.ai, i64 -2240826417119764423, i64 2240826417119764422
  %i.ak = load i64, ptr %0, align 1, !tbaa !146
  %.not22 = icmp eq i64 %i.ak, %i.aj
  br i1 %.not22, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not27 = icmp eq ptr %3, null
  br i1 %.not27, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !44
  %i.an = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %i.am, ptr noundef nonnull @.str.4, i64 noundef 22) #20 ; 0 uses
  br label %bb.w

bb.m:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 1, !tbaa !147
  %.not23 = icmp eq i32 %i.ap, 96
  br i1 %.not23, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not26 = icmp eq ptr %3, null
  br i1 %.not26, label %bb.w, label %_ZN4llvh11raw_ostreamlsEPKc.exit38

_ZN4llvh11raw_ostreamlsEPKc.exit38:               ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 1, ptr %i.aq, align 8, !tbaa !143
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh18raw_string_ostreamE, i64 16), ptr %5, align 8, !tbaa !39
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %3, ptr %i.as, align 8, !tbaa !145
  %i.at = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull @.str.5, i64 noundef 33) #20
  %i.au = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %i.at, i64 noundef 96) #20 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !41 ; 2 uses
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = icmp ult i64 %i.bb, 9
  br i1 %i.bc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit38
  %i.bd = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.au, ptr noundef nonnull @.str.6, i64 noundef 9) #20
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit41

bb.p:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ay, ptr noundef nonnull align 1 dereferenceable(9) @.str.6, i64 9, i1 false)
  %i.be = load ptr, ptr %i.ax, align 8, !tbaa !41
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 9
  store ptr %i.bf, ptr %i.ax, align 8, !tbaa !41
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit41

_ZN4llvh11raw_ostreamlsEPKc.exit41:               ; preds = %bb.o, %bb.p
  %.0.i.i40 = phi ptr [ %i.bd, %bb.o ], [ %i.au, %bb.p ]
  %i.bg = load i32, ptr %i.ao, align 1, !tbaa !147
  %i.bh = zext i32 %i.bg to i64
  %i.bi = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i40, i64 noundef %i.bh) #20 ; 0 uses
  call void @_ZN4llvh18raw_string_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.w

bb.q:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bk = load i32, ptr %i.bj, align 1, !tbaa !46
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %.not25 = icmp eq ptr %3, null
  br i1 %.not25, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.7) ; 0 uses
  br label %bb.w

bb.t:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 1, !tbaa !47
  %i.bp = zext i32 %i.bo to i64
  %i.bq = icmp ult i64 %1, %i.bp
  br i1 %i.bq, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %.not24 = icmp eq ptr %3, null
  br i1 %.not24, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 1, ptr %i.br, align 8, !tbaa !143
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh18raw_string_ostreamE, i64 16), ptr %6, align 8, !tbaa !39
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %3, ptr %i.bt, align 8, !tbaa !145
  %i.bu = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull @.str.8)
  %i.bv = load i32, ptr %i.bn, align 1, !tbaa !47
  %i.bw = zext i32 %i.bv to i64
  %i.bx = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %i.bu, i64 noundef %i.bw) #20
  %i.by = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(36) %i.bx, ptr noundef nonnull @.str.1)
  %i.bz = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %i.by, i64 noundef %1) #20
  %i.ca = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(36) %i.bz, ptr noundef nonnull @.str.2) ; 0 uses
  call void @_ZN4llvh18raw_string_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.w

bb.w:                                             ; preds = %bb.l, %bb.k, %_ZN4llvh11raw_ostreamlsEPKc.exit41, %bb.n, %bb.s, %bb.r, %bb.v, %bb.u, %bb.t, %bb.h, %bb.i, %bb.b, %_ZN4llvh11raw_ostreamlsEPKc.exit35
  %.1 = phi i1 [ false, %bb.h ], [ false, %bb.b ], [ false, %_ZN4llvh11raw_ostreamlsEPKc.exit35 ], [ false, %bb.i ], [ false, %bb.u ], [ false, %bb.k ], [ false, %bb.n ], [ false, %bb.r ], [ false, %bb.l ], [ false, %_ZN4llvh11raw_ostreamlsEPKc.exit41 ], [ false, %bb.s ], [ false, %bb.v ], [ true, %bb.t ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc28visitBytecodeSegmentsInOrderIZNS0_18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEE27BytecodeFileFieldsPopulatorEEvRT_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 29 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, 3
  %i.e = and i64 %i.d, -4                         ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 4 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35   ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i32, ptr %i.i, align 1, !tbaa !46
  %i.k = zext i32 %i.j to i64                     ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !13   ; 7 uses
  %i.n = icmp ult ptr %i.m, %i.f
  %i.o = ptrtoint ptr %i.m to i64                 ; 6 uses
  %i.p = sub i64 %i.o, %i.e
  %i.q = lshr i64 %i.p, 4
  %i.r = icmp samesign ult i64 %i.q, %i.k
  %i.s = select i1 %i.n, i1 true, i1 %i.r, !prof !48
  br i1 %i.s, label %bb.b, label %_ZZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator20visitFunctionHeadersEv.exit, !prof !48

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.10) #21
  unreachable

_ZZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator20visitFunctionHeadersEv.exit: ; preds = %bb.a
  %i.t = shl nuw nsw i64 %i.k, 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.t ; 5 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !148, !nonnull !49, !align !50 ; 30 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.f, ptr %i.w, align 8, !tbaa !149
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !51
  %i.x = ptrtoint ptr %i.u to i64
  store ptr %i.u, ptr %i.a, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.z = load i32, ptr %i.y, align 1, !tbaa !52
  %i.aa = zext i32 %i.z to i64                    ; 3 uses
  %i.ab = icmp ult ptr %i.m, %i.u
  %i.ac = sub i64 %i.o, %i.x
  %i.ad = lshr i64 %i.ac, 2
  %i.ae = icmp samesign ult i64 %i.ad, %i.aa
  %i.af = select i1 %i.ab, i1 true, i1 %i.ae, !prof !48
  br i1 %i.af, label %bb.c, label %_ZZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator16visitStringKindsEv.exit, !prof !48

bb.c:                                             ; preds = %_ZZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator20visitFunctionHeadersEv.exit
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.10) #21
  unreachable

_ZZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator16visitStringKindsEv.exit: ; preds = %_ZZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator20visitFunctionHeadersEv.exit
  %i.ag = shl nuw nsw i64 %i.aa, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ag ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store ptr %i.u, ptr %i.ai, align 8, !tbaa !53
  %.sroa.4.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store i64 %i.aa, ptr %.sroa.4.0..sroa_idx.i15, align 8, !tbaa !51
  %i.aj = ptrtoint ptr %i.ah to i64
  store ptr %i.ah, ptr %i.a, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.al = load i32, ptr %i.ak, align 1, !tbaa !54
  %i.am = zext i32 %i.al to i64                   ; 3 uses
  %i.an = icmp ult ptr %i.m, %i.ah
  %i.ao = sub i64 %i.o, %i.aj
  %i.ap = lshr i64 %i.ao, 2
  %i.aq = icmp samesign ult i64 %i.ap, %i.am
  %i.ar = select i1 %i.an, i1 true, i1 %i.aq, !prof !48
  br i1 %i.ar, label %bb.d, label %_ZZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator21visitIdentifierHashesEv.exit, !prof !48

bb.d:                                             ; preds = %_ZZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator16visitStringKindsEv.exit
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.10) #21
  unreachable

_ZZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator21visitIdentifierHashesEv.exit: ; preds = %_ZZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator16visitStringKindsEv.exit
  %i.as = shl nuw nsw i64 %i.am, 2
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.as ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  store ptr %i.ah, ptr %i.au, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  store i64 %i.am, ptr %.sroa.4.0..sroa_idx.i16, align 8, !tbaa !51
  %i.av = ptrtoint ptr %i.at to i64
  store ptr %i.at, ptr %i.a, align 8, !tbaa !14
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %i.ax = load i32, ptr %i.aw, align 1, !tbaa !56
  %i.ay = zext i32 %i.ax to i64                   ; 3 uses
  %i.az = icmp ult ptr %i.m, %i.at
  %i.ba = sub i64 %i.o, %i.av
  %i.bb = lshr i64 %i.ba, 2
  %i.bc = icmp samesign ult i64 %i.bb, %i.ay
  %i.bd = select i1 %i.az, i1 true, i1 %i.bc, !prof !48
  br i1 %i.bd, label %bb.e, label %_ZZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator21visitSmallStringTableEv.exit, !prof !48

bb.e:                                             ; preds = %_ZZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator21visitIdentifierHashesEv.exit
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.10) #21
  unreachable

_ZZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator21visitSmallStringTableEv.exit: ; preds = %_ZZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator21visitIdentifierHashesEv.exit
  %i.be = shl nuw nsw i64 %i.ay, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.be ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.at, ptr %i.bg, align 8, !tbaa !150
  %.sroa.4.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store i64 %i.ay, ptr %.sroa.4.0..sroa_idx.i17, align 8, !tbaa !51
  %i.bh = ptrtoint ptr %i.bf to i64
  store ptr %i.bf, ptr %i.a, align 8, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.bj = load i32, ptr %i.bi, align 1, !tbaa !57
  %i.bk = zext i32 %i.bj to i64                   ; 3 uses
  %i.bl = icmp ult ptr %i.m, %i.bf
  %i.bm = sub i64 %i.o, %i.bh
  %i.bn = lshr i64 %i.bm, 3
  %i.bo = icmp samesign ult i64 %i.bn, %i.bk
  %i.bp = select i1 %i.bl, i1 true, i1 %i.bo, !prof !48
  br i1 %i.bp, label %bb.f, label %_ZZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator24visitOverflowStringTableEv.exit, !prof !48

bb.f:                                             ; preds = %_ZZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator21visitSmallStringTableEv.exit
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.10) #21
  unreachable

_ZZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator24visitOverflowStringTableEv.exit: ; preds = %_ZZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator21visitSmallStringTableEv.exit
  %i.bq = shl nuw nsw i64 %i.bk, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bq ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  store ptr %i.bf, ptr %i.bs, align 8, !tbaa !58
  %.sroa.4.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  store i64 %i.bk, ptr %.sroa.4.0..sroa_idx.i18, align 8, !tbaa !51
  %i.bt = ptrtoint ptr %i.br to i64
  store ptr %i.br, ptr %i.a, align 8, !tbaa !14
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  %i.bv = load i32, ptr %i.bu, align 1, !tbaa !59
  %i.bw = zext i32 %i.bv to i64                   ; 3 uses
  %i.bx = icmp ult ptr %i.m, %i.br
  %i.by = sub i64 %i.o, %i.bt
  %i.bz = icmp ult i64 %i.by, %i.bw
  %i.ca = or i1 %i.bx, %i.bz
  br i1 %i.ca, label %bb.g, label %_ZZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator18visitStringStorageEv.exit, !prof !48

bb.g:                                             ; preds = %_ZZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator24visitOverflowStringTableEv.exit
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.10) #21
  unreachable

_ZZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator18visitStringStorageEv.exit: ; preds = %_ZZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator24visitOverflowStringTableEv.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bw
  store ptr %i.cb, ptr %i.a, align 8, !tbaa !14
  %i.cc = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  store ptr %i.br, ptr %i.cc, align 8, !tbaa !14
  %.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  store i64 %i.bw, ptr %.sroa.4.0..sroa_idx.i19, align 8, !tbaa !51
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = add i64 %i.ce, 3
  %i.cg = and i64 %i.cf, -4                       ; 2 uses
  %i.ch = inttoptr i64 %i.cg to ptr               ; 4 uses
  store ptr %i.ch, ptr %i.a, align 8, !tbaa !14
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.cj = load i32, ptr %i.ci, align 1, !tbaa !60
  %i.ck = zext i32 %i.cj to i64                   ; 3 uses
  %i.cl = load ptr, ptr %i.l, align 8, !tbaa !13  ; 2 uses
  %i.cm = icmp ult ptr %i.cl, %i.ch
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cn, %i.cg
  %i.cp = icmp ult i64 %i.co, %i.ck
  %i.cq = or i1 %i.cm, %i.cp
  br i1 %i.cq, label %bb.h, label %_ZZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator16visitArrayBufferEv.exit, !prof !48

bb.h:                                             ; preds = %_ZZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator18visitStringStorageEv.exit
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.10) #21
  unreachable

_ZZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator16visitArrayBufferEv.exit: ; preds = %_ZZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator18visitStringStorageEv.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ck
  store ptr %i.cr, ptr %i.a, align 8, !tbaa !14
  %i.cs = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  store ptr %i.ch, ptr %i.cs, align 8, !tbaa !14
  %.sroa.4.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  store i64 %i.ck, ptr %.sroa.4.0..sroa_idx.i20, align 8, !tbaa !51
  %i.ct = load ptr, ptr %i.a, align 8, !tbaa !14
end_hunk_0
