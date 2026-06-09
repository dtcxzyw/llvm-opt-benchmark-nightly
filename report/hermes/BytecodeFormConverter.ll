inline.NumInlined: 373
inline.NumDeleted: 254
begin_hunk_0
%union.anon = type { i64, [8 x i8] }
%"class.std::unique_ptr.19" = type { %"struct.std::__uniq_ptr_data.20" }
%"struct.std::__uniq_ptr_data.20" = type { %"class.std::__uniq_ptr_impl.21" }
%"class.std::__uniq_ptr_impl.21" = type { %"class.std::tuple.22" }
%"class.std::tuple.22" = type { %"struct.std::_Tuple_impl.23" }
%"struct.std::_Tuple_impl.23" = type { %"struct.std::_Head_base.26" }
%"struct.std::_Head_base.26" = type { ptr }
%"struct.hermes::hbc::BytecodeFileFields" = type { ptr, %"class.llvh::MutableArrayRef.0", %"class.llvh::MutableArrayRef.2", %"class.llvh::MutableArrayRef.4", %"class.llvh::MutableArrayRef.6", %"class.llvh::MutableArrayRef.8", %"class.llvh::MutableArrayRef", %"class.llvh::MutableArrayRef", %"class.llvh::MutableArrayRef", %"class.llvh::MutableArrayRef", %"class.llvh::MutableArrayRef.10", %"class.llvh::MutableArrayRef", %"class.llvh::MutableArrayRef.12", %"class.llvh::MutableArrayRef", %"class.llvh::MutableArrayRef.14", %"class.llvh::MutableArrayRef.14", %"class.llvh::MutableArrayRef.14" }
%"class.llvh::MutableArrayRef.0" = type { %"class.llvh::ArrayRef.1" }
%"class.llvh::ArrayRef.1" = type { ptr, i64 }
%"class.llvh::MutableArrayRef.2" = type { %"class.llvh::ArrayRef.3" }
%"class.llvh::ArrayRef.3" = type { ptr, i64 }
%"class.llvh::MutableArrayRef.4" = type { %"class.llvh::ArrayRef.5" }
%"class.llvh::ArrayRef.5" = type { ptr, i64 }
%"class.llvh::MutableArrayRef.6" = type { %"class.llvh::ArrayRef.7" }
%"class.llvh::ArrayRef.7" = type { ptr, i64 }
%"class.llvh::MutableArrayRef.8" = type { %"class.llvh::ArrayRef.9" }
%"class.llvh::ArrayRef.9" = type { ptr, i64 }
%"class.llvh::MutableArrayRef.10" = type { %"class.llvh::ArrayRef.11" }
%"class.llvh::ArrayRef.11" = type { ptr, i64 }
%"class.llvh::MutableArrayRef.12" = type { %"class.llvh::ArrayRef.13" }
%"class.llvh::ArrayRef.13" = type { ptr, i64 }
%"class.llvh::MutableArrayRef" = type { %"class.llvh::ArrayRef" }
%"class.llvh::ArrayRef" = type { ptr, i64 }
%"class.llvh::MutableArrayRef.14" = type { %"class.llvh::ArrayRef.15" }
%"class.llvh::ArrayRef.15" = type { ptr, i64 }
%"struct.std::array" = type { [20 x i8] }

$_ZN6hermes3hbc20BCProviderFromBufferD2Ev = comdat any

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

$_ZN6hermes3hbc20BCProviderFromBuffer26createBCProviderFromBufferB5cxx11ESt10unique_ptrIKNS_6BufferESt14default_deleteIS4_EENS0_12BytecodeFormE = comdat any

$_ZTVN6hermes3hbc14BCProviderBaseE = comdat any

@_ZTVN6hermes3hbc14BCProviderBaseE = linkonce_odr hidden unnamed_addr constant { [22 x ptr] } { [22 x ptr] [ptr null, ptr null, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZNK6hermes3hbc14BCProviderBase11getEpilogueEv, ptr @_ZNK6hermes3hbc14BCProviderBase13getSourceHashEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN6hermes3hbc14BCProviderBaseD2Ev, ptr @_ZN6hermes3hbc14BCProviderBaseD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN6hermes3hbc14BCProviderBase11startWarmupEh, ptr @_ZN6hermes3hbc14BCProviderBase7madviseENS_8oscompat7MAdviceE, ptr @_ZN6hermes3hbc14BCProviderBase27adviseStringTableSequentialEv, ptr @_ZN6hermes3hbc14BCProviderBase23adviseStringTableRandomEv, ptr @_ZN6hermes3hbc14BCProviderBase19willNeedStringTableEv, ptr @_ZN6hermes3hbc14BCProviderBase22startPageAccessTrackerEv, ptr @_ZN6hermes3hbc14BCProviderBase20getPageAccessTrackerEv, ptr @_ZNK6hermes3hbc14BCProviderBase12getRawBufferEv] }, comdat, align 8
@_ZTVN6hermes6BufferE = external unnamed_addr constant { [4 x ptr] }, align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes3hbc21convertBytecodeToFormEN4llvh15MutableArrayRefIhEENS0_12BytecodeFormEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr %0, i64 %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"struct.std::pair", align 8        ; 9 uses
  %5 = alloca %"class.std::unique_ptr.19", align 8 ; 5 uses
  %6 = alloca %"struct.std::pair", align 8        ; 9 uses
  %7 = alloca %"class.std::unique_ptr.19", align 8 ; 5 uses
  %8 = alloca %"struct.hermes::hbc::BytecodeFileFields", align 8 ; 12 uses
  %i.a = icmp ne i32 %2, 1                        ; 2 uses
  %i.b = zext i1 %i.a to i32                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %8, i8 0, i64 264, i1 false)
  %i.c = call noundef zeroext i1 @_ZN6hermes3hbc18BytecodeFileFieldsILb1EE18populateFromBufferEN4llvh15MutableArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormE(ptr noundef nonnull align 8 dereferenceable(264) %8, ptr %0, i64 %1, ptr noundef %3, i32 noundef %i.b) #12 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.ac

bb.b:                                             ; preds = %bb.a
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.sroa.13.16..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %.sroa.15.16..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %.sroa.16.16..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %.sroa.1781.16..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  %.sroa.18.16..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  br i1 %i.a, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %.sroa.988.16.copyload = load ptr, ptr %8, align 8
  %.sroa.1189.16.copyload = load ptr, ptr %.sroa.11.16..sroa_idx, align 8 ; 4 uses
  %.sroa.12.16.copyload = load i64, ptr %.sroa.13.16..sroa_idx, align 8 ; 2 uses
  %.sroa.1390.16.copyload = load ptr, ptr %.sroa.15.16..sroa_idx, align 8 ; 4 uses
  %.sroa.14.16.copyload = load i64, ptr %.sroa.16.16..sroa_idx, align 8 ; 2 uses
  %.sroa.1592.16.copyload = load ptr, ptr %.sroa.1781.16..sroa_idx, align 8 ; 2 uses
  %.sroa.1693.16.copyload = load i64, ptr %.sroa.18.16..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.d = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #13, !noalias !7 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6hermes6BufferE, i64 16), ptr %i.d, align 8, !tbaa !10, !noalias !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %0, ptr %i.e, align 8, !tbaa !12, !noalias !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %1, ptr %i.f, align 8, !tbaa !17, !noalias !7
  store ptr %i.d, ptr %7, align 8, !tbaa !18
  call void @_ZN6hermes3hbc20BCProviderFromBuffer26createBCProviderFromBufferB5cxx11ESt10unique_ptrIKNS_6BufferESt14default_deleteIS4_EENS0_12BytecodeFormE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %6, ptr noundef nonnull %7, i32 noundef range(i32 0, 2) %i.b)
  %i.g = load ptr, ptr %7, align 8, !tbaa !21     ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6hermes6BufferESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIKN6hermes6BufferEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIKN6hermes6BufferEEclEPS2_.exit.i.i: ; preds = %bb.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.g) #12, !inline_history !22
  br label %_ZNSt10unique_ptrIN6hermes6BufferESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6hermes6BufferESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIKN6hermes6BufferEEclEPS2_.exit.i.i, %bb.c
  %i.k = load ptr, ptr %6, align 8, !tbaa !23     ; 7 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.d, label %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EEaSEOS5_.exit.i

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN6hermes6BufferESt14default_deleteIS1_EED2Ev.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef %i.m) #14
  unreachable

_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EEaSEOS5_.exit.i: ; preds = %_ZNSt10unique_ptrIN6hermes6BufferESt14default_deleteIS1_EED2Ev.exit.i
  store ptr null, ptr %6, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !25   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE1EEC2EN4llvh15MutableArrayRefIhEERNS2_18BytecodeFileFieldsILb1EEES3_.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EEaSEOS5_.exit.i
  %i.r = load i64, ptr %i.p, align 8, !tbaa !28
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #15
  %.pre = load ptr, ptr %6, align 8, !tbaa !23    ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE1EEC2EN4llvh15MutableArrayRefIhEERNS2_18BytecodeFileFieldsILb1EEES3_.exit, label %_ZNKSt14default_deleteIN6hermes3hbc20BCProviderFromBufferEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN6hermes3hbc20BCProviderFromBufferEEclEPS2_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  call void @_ZN6hermes3hbc20BCProviderFromBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(376) %.pre) #12
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef 376) #15
  br label %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE1EEC2EN4llvh15MutableArrayRefIhEERNS2_18BytecodeFileFieldsILb1EEES3_.exit

_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE1EEC2EN4llvh15MutableArrayRefIhEERNS2_18BytecodeFileFieldsILb1EEES3_.exit: ; preds = %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EEaSEOS5_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt14default_deleteIN6hermes3hbc20BCProviderFromBufferEEclEPS2_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store i64 -2240826417119764423, ptr %.sroa.988.16.copyload, align 1, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !31   ; 2 uses
  %.not.i.i14 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i14, label %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE1EE19processInstructionsEv.exit.i, label %.lr.ph47.i.i.preheader

.lr.ph47.i.i.preheader:                           ; preds = %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE1EEC2EN4llvh15MutableArrayRefIhEERNS2_18BytecodeFileFieldsILb1EEES3_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 296
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 288
  br label %.lr.ph47.i.i

.lr.ph47.i.i:                                     ; preds = %.lr.ph47.i.i.preheader, %._crit_edge.i.i
  %i.x = phi i32 [ %i.bx, %._crit_edge.i.i ], [ %i.u, %.lr.ph47.i.i.preheader ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %._crit_edge.i.i ], [ 0, %.lr.ph47.i.i.preheader ] ; 2 uses
  %.sroa.028.044.i.i = phi i32 [ %.sroa.028.1.lcssa.i.i, %._crit_edge.i.i ], [ 0, %.lr.ph47.i.i.preheader ] ; 2 uses
  %.sroa.024.043.i.i = phi i32 [ %.sroa.024.1.lcssa.i.i, %._crit_edge.i.i ], [ 0, %.lr.ph47.i.i.preheader ] ; 2 uses
  %.sroa.025.042.i.i = phi i16 [ %.sroa.025.1.lcssa.i.i, %._crit_edge.i.i ], [ 0, %.lr.ph47.i.i.preheader ] ; 2 uses
  %.sroa.026.041.i.i = phi i32 [ %.sroa.026.1.lcssa.i.i, %._crit_edge.i.i ], [ 0, %.lr.ph47.i.i.preheader ] ; 2 uses
  %.sroa.027.040.i.i = phi i16 [ %.sroa.027.1.lcssa.i.i, %._crit_edge.i.i ], [ 0, %.lr.ph47.i.i.preheader ] ; 2 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !45
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %indvars.iv.i.i ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 15
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = and i8 %i.ab, 32
  %.not.i.i.i15 = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i15, label %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i.i, label %bb.e, !prof !70

bb.e:                                             ; preds = %.lr.ph47.i.i
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !71
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.af = load i32, ptr %i.ae, align 1
  %i.ag = shl i32 %i.af, 16
  %i.ah = load i64, ptr %i.z, align 1
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = and i32 %i.ai, 33554431
  %i.ak = or i32 %i.aj, %i.ag
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  br label %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i.i

_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i.i: ; preds = %bb.e, %.lr.ph47.i.i
  %.sroa.0.0.i.i.i = phi ptr [ %i.an, %bb.e ], [ %i.z, %.lr.ph47.i.i ] ; 4 uses
  %i.ao = ptrtoint ptr %.sroa.0.0.i.i.i to i64
  %i.ap = trunc i64 %i.ao to i1
  br i1 %i.ap, label %bb.f, label %bb.g, !prof !72

bb.f:                                             ; preds = %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i.i
  %i.aq = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i, i64 -1
  %i.ar = load i32, ptr %i.aq, align 1, !tbaa !73
  %i.as = zext i32 %i.ar to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 7
  %i.au = load i32, ptr %i.at, align 1, !tbaa !75
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i

bb.g:                                             ; preds = %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i.i
  %i.av = load i64, ptr %.sroa.0.0.i.i.i, align 1 ; 2 uses
  %i.aw = and i64 %i.av, 33554431
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.ax = lshr i64 %i.av, 32
  %i.ay = trunc nuw i64 %i.ax to i32
  %i.az = and i32 %i.ay, 32767
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i

_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i: ; preds = %bb.g, %bb.f
  %.pn = phi i64 [ %i.as, %bb.f ], [ %i.aw, %bb.g ]
  %.0.i22.i.i = phi i32 [ %i.au, %bb.f ], [ %i.az, %bb.g ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %.pn ; 2 uses
  %i.bb = zext i32 %.0.i22.i.i to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bb
  %.not49.i.i = icmp eq i32 %.0.i22.i.i, 0
  br i1 %.not49.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i, %bb.m
  %.02135.i.i = phi ptr [ %i.bv, %bb.m ], [ %i.ba, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i ] ; 7 uses
  %.sroa.028.134.i.i = phi i32 [ %.sroa.028.2.i.i, %bb.m ], [ %.sroa.028.044.i.i, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i ] ; 6 uses
  %.sroa.024.133.i.i = phi i32 [ %.sroa.024.2.i.i, %bb.m ], [ %.sroa.024.043.i.i, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i ] ; 6 uses
  %.sroa.025.132.i.i = phi i16 [ %.sroa.025.2.i.i, %bb.m ], [ %.sroa.025.042.i.i, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i ] ; 6 uses
  %.sroa.026.131.i.i = phi i32 [ %.sroa.026.2.i.i, %bb.m ], [ %.sroa.026.041.i.i, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i ] ; 6 uses
  %.sroa.027.130.i.i = phi i16 [ %.sroa.027.2.i.i, %bb.m ], [ %.sroa.027.040.i.i, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i ] ; 6 uses
  %i.bd = load i8, ptr %.02135.i.i, align 1, !tbaa !28 ; 2 uses
  switch i8 %i.bd, label %bb.m [
    i8 5, label %bb.h
    i8 6, label %bb.i
    i8 100, label %bb.j
    i8 101, label %bb.k
    i8 52, label %bb.l
  ]

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.02135.i.i, i64 6 ; 2 uses
  %i.bf = load i16, ptr %i.be, align 1, !tbaa !28 ; 2 uses
  %i.bg = sub i16 %i.bf, %.sroa.025.132.i.i
  store i16 %i.bg, ptr %i.be, align 1, !tbaa !28
  br label %bb.m

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.02135.i.i, i64 6 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 1, !tbaa !28 ; 2 uses
  %i.bj = sub i32 %i.bi, %.sroa.024.133.i.i
  store i32 %i.bj, ptr %i.bh, align 1, !tbaa !28
  br label %bb.m

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.02135.i.i, i64 3 ; 2 uses
  %i.bl = load i16, ptr %i.bk, align 1, !tbaa !28 ; 2 uses
  %i.bm = sub i16 %i.bl, %.sroa.027.130.i.i
  store i16 %i.bm, ptr %i.bk, align 1, !tbaa !28
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.02135.i.i, i64 3 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 1, !tbaa !28 ; 2 uses
  %i.bp = sub i32 %i.bo, %.sroa.026.131.i.i
  store i32 %i.bp, ptr %i.bn, align 1, !tbaa !28
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.02135.i.i, i64 1 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 1, !tbaa !28 ; 2 uses
  %i.bs = sub i32 %i.br, %.sroa.028.134.i.i
  store i32 %i.bs, ptr %i.bq, align 1, !tbaa !28
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %.lr.ph.i.i
  %.sroa.027.2.i.i = phi i16 [ %.sroa.027.130.i.i, %.lr.ph.i.i ], [ %.sroa.027.130.i.i, %bb.h ], [ %.sroa.027.130.i.i, %bb.i ], [ %i.bl, %bb.j ], [ %.sroa.027.130.i.i, %bb.k ], [ %.sroa.027.130.i.i, %bb.l ] ; 2 uses
  %.sroa.026.2.i.i = phi i32 [ %.sroa.026.131.i.i, %.lr.ph.i.i ], [ %.sroa.026.131.i.i, %bb.h ], [ %.sroa.026.131.i.i, %bb.i ], [ %.sroa.026.131.i.i, %bb.j ], [ %i.bo, %bb.k ], [ %.sroa.026.131.i.i, %bb.l ] ; 2 uses
  %.sroa.025.2.i.i = phi i16 [ %.sroa.025.132.i.i, %.lr.ph.i.i ], [ %i.bf, %bb.h ], [ %.sroa.025.132.i.i, %bb.i ], [ %.sroa.025.132.i.i, %bb.j ], [ %.sroa.025.132.i.i, %bb.k ], [ %.sroa.025.132.i.i, %bb.l ] ; 2 uses
  %.sroa.024.2.i.i = phi i32 [ %.sroa.024.133.i.i, %.lr.ph.i.i ], [ %.sroa.024.133.i.i, %bb.h ], [ %i.bi, %bb.i ], [ %.sroa.024.133.i.i, %bb.j ], [ %.sroa.024.133.i.i, %bb.k ], [ %.sroa.024.133.i.i, %bb.l ] ; 2 uses
  %.sroa.028.2.i.i = phi i32 [ %.sroa.028.134.i.i, %.lr.ph.i.i ], [ %.sroa.028.134.i.i, %bb.h ], [ %.sroa.028.134.i.i, %bb.i ], [ %.sroa.028.134.i.i, %bb.j ], [ %.sroa.028.134.i.i, %bb.k ], [ %i.br, %bb.l ] ; 2 uses
  %i.bt = call noundef zeroext i8 @_ZN6hermes4inst11getInstSizeENS0_6OpCodeE(i8 noundef zeroext %i.bd) #12
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %.02135.i.i, i64 %i.bu ; 2 uses
  %i.bw = icmp ult ptr %i.bv, %i.bc
  br i1 %i.bw, label %.lr.ph.i.i, label %._crit_edge.i.i.loopexit, !llvm.loop !76

._crit_edge.i.i.loopexit:                         ; preds = %bb.m
  %.pre98 = load i32, ptr %i.t, align 4, !tbaa !31
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i
  %i.bx = phi i32 [ %i.x, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i ], [ %.pre98, %._crit_edge.i.i.loopexit ] ; 2 uses
  %.sroa.027.1.lcssa.i.i = phi i16 [ %.sroa.027.040.i.i, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i ], [ %.sroa.027.2.i.i, %._crit_edge.i.i.loopexit ]
  %.sroa.026.1.lcssa.i.i = phi i32 [ %.sroa.026.041.i.i, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i ], [ %.sroa.026.2.i.i, %._crit_edge.i.i.loopexit ]
  %.sroa.025.1.lcssa.i.i = phi i16 [ %.sroa.025.042.i.i, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i ], [ %.sroa.025.2.i.i, %._crit_edge.i.i.loopexit ]
  %.sroa.024.1.lcssa.i.i = phi i32 [ %.sroa.024.043.i.i, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i ], [ %.sroa.024.2.i.i, %._crit_edge.i.i.loopexit ]
  %.sroa.028.1.lcssa.i.i = phi i32 [ %.sroa.028.044.i.i, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i ], [ %.sroa.028.2.i.i, %._crit_edge.i.i.loopexit ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.by = zext i32 %i.bx to i64
  %i.bz = icmp samesign ult i64 %indvars.iv.next.i.i, %i.by
  br i1 %i.bz, label %.lr.ph47.i.i, label %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE1EE19processInstructionsEv.exit.i, !llvm.loop !78

_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE1EE19processInstructionsEv.exit.i: ; preds = %._crit_edge.i.i, %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE1EEC2EN4llvh15MutableArrayRefIhEERNS2_18BytecodeFileFieldsILb1EEES3_.exit
  %.idx.i.i = shl i64 %.sroa.12.16.copyload, 4    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.1189.16.copyload, i64 %.idx.i.i
  %.not11.i.i = icmp eq i64 %.sroa.12.16.copyload, 0
  br i1 %.not11.i.i, label %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE1EE22processFunctionHeadersEv.exit.i, label %.lr.ph.i14.i

.lr.ph.i14.i:                                     ; preds = %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE1EE19processInstructionsEv.exit.i, %bb.o
  %.013.i.i = phi ptr [ %i.cp, %bb.o ], [ %.sroa.1189.16.copyload, %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE1EE19processInstructionsEv.exit.i ] ; 4 uses
  %.sroa.0.012.i.i = phi i32 [ %.sroa.0.1.i.i, %bb.o ], [ 0, %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE1EE19processInstructionsEv.exit.i ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 15
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = and i8 %i.cc, 32
  %.not10.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not10.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i14.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 8
  %i.cf = load i32, ptr %i.ce, align 1
  %i.cg = shl i32 %i.cf, 16
  %i.ch = load i64, ptr %.013.i.i, align 1
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = and i32 %i.ci, 33554431
  %i.ck = or i32 %i.cj, %i.cg
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 %i.cl ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3  ; 2 uses
  %i.co = sub i32 %i.cn, %.sroa.0.012.i.i
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !3
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i14.i
  %.sroa.0.1.i.i = phi i32 [ %.sroa.0.012.i.i, %.lr.ph.i14.i ], [ %i.cn, %bb.n ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 16 ; 2 uses
  %.not.i15.i = icmp eq ptr %i.cp, %i.ca
  br i1 %.not.i15.i, label %.lr.ph.i18.i.preheader, label %.lr.ph.i14.i

.lr.ph.i18.i.preheader:                           ; preds = %bb.o
  %i.cq = add i64 %.idx.i.i, -16                  ; 2 uses
  %i.cr = lshr exact i64 %i.cq, 4
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 2 uses
  %xtraiter = and i64 %i.cs, 3                    ; 3 uses
  %i.ct = icmp ult i64 %i.cq, 48
  br i1 %i.ct, label %.lr.ph.i18.i.epil.preheader, label %.lr.ph.i18.i.preheader.new

.lr.ph.i18.i.preheader.new:                       ; preds = %.lr.ph.i18.i.preheader
  %unroll_iter = and i64 %i.cs, 2305843009213693948
  br label %.lr.ph.i18.i

.lr.ph.i18.i:                                     ; preds = %.lr.ph.i18.i, %.lr.ph.i18.i.preheader.new
  %.011.i.i = phi ptr [ %.sroa.1189.16.copyload, %.lr.ph.i18.i.preheader.new ], [ %i.dr, %.lr.ph.i18.i ] ; 6 uses
  %.sroa.0.010.i.i = phi i64 [ 0, %.lr.ph.i18.i.preheader.new ], [ %i.dm, %.lr.ph.i18.i ]
  %niter = phi i64 [ 0, %.lr.ph.i18.i.preheader.new ], [ %niter.next.3, %.lr.ph.i18.i ]
  %i.cu = load i64, ptr %.011.i.i, align 1        ; 3 uses
  %i.cv = sub i64 %i.cu, %.sroa.0.010.i.i
  %i.cw = and i64 %i.cv, 33554431
  %i.cx = and i64 %i.cu, -33554432
  %i.cy = or disjoint i64 %i.cw, %i.cx
  store i64 %i.cy, ptr %.011.i.i, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 16 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 1            ; 3 uses
  %i.db = sub i64 %i.da, %i.cu
  %i.dc = and i64 %i.db, 33554431
  %i.dd = and i64 %i.da, -33554432
  %i.de = or disjoint i64 %i.dc, %i.dd
  store i64 %i.de, ptr %i.cz, align 1
  %i.df = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 32 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 1            ; 3 uses
  %i.dh = sub i64 %i.dg, %i.da
  %i.di = and i64 %i.dh, 33554431
  %i.dj = and i64 %i.dg, -33554432
  %i.dk = or disjoint i64 %i.di, %i.dj
  store i64 %i.dk, ptr %i.df, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 48 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 1            ; 4 uses
  %i.dn = sub i64 %i.dm, %i.dg
  %i.do = and i64 %i.dn, 33554431
  %i.dp = and i64 %i.dm, -33554432
  %i.dq = or disjoint i64 %i.do, %i.dp
  store i64 %i.dq, ptr %i.dl, align 1
  %i.dr = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 64 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE1EE22processFunctionHeadersEv.exit.i.loopexit.unr-lcssa, label %.lr.ph.i18.i

_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE1EE22processFunctionHeadersEv.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i18.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE1EE22processFunctionHeadersEv.exit.i, label %.lr.ph.i18.i.epil.preheader

.lr.ph.i18.i.epil.preheader:                      ; preds = %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE1EE22processFunctionHeadersEv.exit.i.loopexit.unr-lcssa, %.lr.ph.i18.i.preheader
  %.011.i.i.epil.init = phi ptr [ %.sroa.1189.16.copyload, %.lr.ph.i18.i.preheader ], [ %i.dr, %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE1EE22processFunctionHeadersEv.exit.i.loopexit.unr-lcssa ]
  %.sroa.0.010.i.i.epil.init = phi i64 [ 0, %.lr.ph.i18.i.preheader ], [ %i.dm, %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE1EE22processFunctionHeadersEv.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod123 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod123)
  br label %.lr.ph.i18.i.epil

.lr.ph.i18.i.epil:                                ; preds = %.lr.ph.i18.i.epil, %.lr.ph.i18.i.epil.preheader
  %.011.i.i.epil = phi ptr [ %i.dx, %.lr.ph.i18.i.epil ], [ %.011.i.i.epil.init, %.lr.ph.i18.i.epil.preheader ] ; 3 uses
  %.sroa.0.010.i.i.epil = phi i64 [ %i.ds, %.lr.ph.i18.i.epil ], [ %.sroa.0.010.i.i.epil.init, %.lr.ph.i18.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i18.i.epil ], [ 0, %.lr.ph.i18.i.epil.preheader ]
  %i.ds = load i64, ptr %.011.i.i.epil, align 1   ; 3 uses
  %i.dt = sub i64 %i.ds, %.sroa.0.010.i.i.epil
  %i.du = and i64 %i.dt, 33554431
  %i.dv = and i64 %i.ds, -33554432
  %i.dw = or disjoint i64 %i.du, %i.dv
  store i64 %i.dw, ptr %.011.i.i.epil, align 1
  %i.dx = getelementptr inbounds nuw i8, ptr %.011.i.i.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc21convertBytecodeToFormEN4llvh15MutableArrayRefIhEENS0_12BytecodeFormEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.im = and i32 %i.ih, -16777215
  %i.in = or disjoint i32 %i.il, %i.im
  store i32 %i.in, ptr %.011.i29.i, align 1
  %i.io = getelementptr inbounds nuw i8, ptr %.011.i29.i, i64 4 ; 2 uses
  %i.ip = load i32, ptr %i.io, align 1            ; 2 uses
  %i.iq = lshr i32 %i.ip, 1
  %i.ir = add i32 %i.iq, %i.ij                    ; 3 uses
  %i.is = shl i32 %i.ir, 1
  %i.it = and i32 %i.is, 16777214
  %i.iu = and i32 %i.ip, -16777215
  %i.iv = or disjoint i32 %i.it, %i.iu
  store i32 %i.iv, ptr %i.io, align 1
  %i.iw = getelementptr inbounds nuw i8, ptr %.011.i29.i, i64 8 ; 2 uses
  %niter141.next.1 = add i64 %niter141, 2         ; 2 uses
  %niter141.ncmp.1 = icmp eq i64 %niter141.next.1, %unroll_iter140
  br i1 %niter141.ncmp.1, label %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE0EE18processStringTableEv.exit.i.loopexit.unr-lcssa, label %.lr.ph.i28.i

_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE0EE18processStringTableEv.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i28.i
  %i.ix = and i64 %i.id, 1
  %lcmp.mod138.not.not = icmp eq i64 %i.ix, 0
  br i1 %lcmp.mod138.not.not, label %.lr.ph.i28.i.epil.preheader, label %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE0EE18processStringTableEv.exit.i

.lr.ph.i28.i.epil.preheader:                      ; preds = %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE0EE18processStringTableEv.exit.i.loopexit.unr-lcssa, %.lr.ph.i28.i.preheader
  %.011.i29.i.epil.init = phi ptr [ %.sroa.15.16.copyload, %.lr.ph.i28.i.preheader ], [ %i.iw, %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE0EE18processStringTableEv.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0.010.i30.i.epil.init = phi i32 [ 0, %.lr.ph.i28.i.preheader ], [ %i.ir, %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE0EE18processStringTableEv.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod139 = trunc i64 %i.if to i1
  call void @llvm.assume(i1 %lcmp.mod139)
  %i.iy = load i32, ptr %.011.i29.i.epil.init, align 1 ; 2 uses
  %i.iz = shl i32 %.sroa.0.010.i30.i.epil.init, 1
  %i.ja = add i32 %i.iy, %i.iz
  %i.jb = and i32 %i.ja, 16777214
  %i.jc = and i32 %i.iy, -16777215
  %i.jd = or disjoint i32 %i.jb, %i.jc
  store i32 %i.jd, ptr %.011.i29.i.epil.init, align 1
  br label %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE0EE18processStringTableEv.exit.i

_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE0EE18processStringTableEv.exit.i: ; preds = %.lr.ph.i28.i.epil.preheader, %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE0EE18processStringTableEv.exit.i.loopexit.unr-lcssa, %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE0EE26processOverflowStringTableEv.exit.i
  %.idx.i32.i = shl i64 %.sroa.13.16.copyload, 4  ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.11.16.copyload, i64 %.idx.i32.i
  %.not9.i33.i = icmp eq i64 %.sroa.13.16.copyload, 0
  br i1 %.not9.i33.i, label %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE0EE30processOverflowFunctionHeadersEv.exit.i, label %.lr.ph.i34.i.preheader

.lr.ph.i34.i.preheader:                           ; preds = %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE0EE18processStringTableEv.exit.i
  %i.jf = add i64 %.idx.i32.i, -16                ; 2 uses
  %i.jg = lshr exact i64 %i.jf, 4
  %i.jh = add nuw nsw i64 %i.jg, 1                ; 2 uses
  %xtraiter142 = and i64 %i.jh, 3                 ; 3 uses
  %i.ji = icmp ult i64 %i.jf, 48
  br i1 %i.ji, label %.lr.ph.i34.i.epil.preheader, label %.lr.ph.i34.i.preheader.new

.lr.ph.i34.i.preheader.new:                       ; preds = %.lr.ph.i34.i.preheader
  %unroll_iter146 = and i64 %i.jh, 2305843009213693948
  br label %.lr.ph.i34.i

.lr.ph.i34.i:                                     ; preds = %.lr.ph.i34.i, %.lr.ph.i34.i.preheader.new
  %.011.i35.i = phi ptr [ %.sroa.11.16.copyload, %.lr.ph.i34.i.preheader.new ], [ %i.kg, %.lr.ph.i34.i ] ; 6 uses
  %.sroa.0.010.i36.i = phi i64 [ 0, %.lr.ph.i34.i.preheader.new ], [ %i.kc, %.lr.ph.i34.i ]
  %niter147 = phi i64 [ 0, %.lr.ph.i34.i.preheader.new ], [ %niter147.next.3, %.lr.ph.i34.i ]
  %i.jj = load i64, ptr %.011.i35.i, align 1      ; 2 uses
  %i.jk = add i64 %i.jj, %.sroa.0.010.i36.i       ; 2 uses
  %i.jl = and i64 %i.jk, 33554431
  %i.jm = and i64 %i.jj, -33554432
  %i.jn = or disjoint i64 %i.jl, %i.jm
  store i64 %i.jn, ptr %.011.i35.i, align 1
  %i.jo = getelementptr inbounds nuw i8, ptr %.011.i35.i, i64 16 ; 2 uses
  %i.jp = load i64, ptr %i.jo, align 1            ; 2 uses
  %i.jq = add i64 %i.jp, %i.jk                    ; 2 uses
  %i.jr = and i64 %i.jq, 33554431
  %i.js = and i64 %i.jp, -33554432
  %i.jt = or disjoint i64 %i.jr, %i.js
  store i64 %i.jt, ptr %i.jo, align 1
  %i.ju = getelementptr inbounds nuw i8, ptr %.011.i35.i, i64 32 ; 2 uses
  %i.jv = load i64, ptr %i.ju, align 1            ; 2 uses
  %i.jw = add i64 %i.jv, %i.jq                    ; 2 uses
  %i.jx = and i64 %i.jw, 33554431
  %i.jy = and i64 %i.jv, -33554432
  %i.jz = or disjoint i64 %i.jx, %i.jy
  store i64 %i.jz, ptr %i.ju, align 1
  %i.ka = getelementptr inbounds nuw i8, ptr %.011.i35.i, i64 48 ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 1            ; 2 uses
  %i.kc = add i64 %i.kb, %i.jw                    ; 3 uses
  %i.kd = and i64 %i.kc, 33554431
  %i.ke = and i64 %i.kb, -33554432
  %i.kf = or disjoint i64 %i.kd, %i.ke
  store i64 %i.kf, ptr %i.ka, align 1
  %i.kg = getelementptr inbounds nuw i8, ptr %.011.i35.i, i64 64 ; 2 uses
  %niter147.next.3 = add i64 %niter147, 4         ; 2 uses
  %niter147.ncmp.3 = icmp eq i64 %niter147.next.3, %unroll_iter146
  br i1 %niter147.ncmp.3, label %.lr.ph.i39.i.preheader.unr-lcssa, label %.lr.ph.i34.i

.lr.ph.i39.i.preheader.unr-lcssa:                 ; preds = %.lr.ph.i34.i
  %lcmp.mod144.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod144.not, label %.lr.ph.i39.i.preheader, label %.lr.ph.i34.i.epil.preheader

.lr.ph.i34.i.epil.preheader:                      ; preds = %.lr.ph.i39.i.preheader.unr-lcssa, %.lr.ph.i34.i.preheader
  %.011.i35.i.epil.init = phi ptr [ %.sroa.11.16.copyload, %.lr.ph.i34.i.preheader ], [ %i.kg, %.lr.ph.i39.i.preheader.unr-lcssa ]
  %.sroa.0.010.i36.i.epil.init = phi i64 [ 0, %.lr.ph.i34.i.preheader ], [ %i.kc, %.lr.ph.i39.i.preheader.unr-lcssa ]
  %lcmp.mod145 = icmp ne i64 %xtraiter142, 0
  call void @llvm.assume(i1 %lcmp.mod145)
  br label %.lr.ph.i34.i.epil

.lr.ph.i34.i.epil:                                ; preds = %.lr.ph.i34.i.epil, %.lr.ph.i34.i.epil.preheader
  %.011.i35.i.epil = phi ptr [ %i.km, %.lr.ph.i34.i.epil ], [ %.011.i35.i.epil.init, %.lr.ph.i34.i.epil.preheader ] ; 3 uses
  %.sroa.0.010.i36.i.epil = phi i64 [ %i.ki, %.lr.ph.i34.i.epil ], [ %.sroa.0.010.i36.i.epil.init, %.lr.ph.i34.i.epil.preheader ]
  %epil.iter143 = phi i64 [ %epil.iter143.next, %.lr.ph.i34.i.epil ], [ 0, %.lr.ph.i34.i.epil.preheader ]
  %i.kh = load i64, ptr %.011.i35.i.epil, align 1 ; 2 uses
  %i.ki = add i64 %i.kh, %.sroa.0.010.i36.i.epil  ; 2 uses
  %i.kj = and i64 %i.ki, 33554431
  %i.kk = and i64 %i.kh, -33554432
  %i.kl = or disjoint i64 %i.kj, %i.kk
  store i64 %i.kl, ptr %.011.i35.i.epil, align 1
  %i.km = getelementptr inbounds nuw i8, ptr %.011.i35.i.epil, i64 16
  %epil.iter143.next = add i64 %epil.iter143, 1   ; 2 uses
  %epil.iter143.cmp.not = icmp eq i64 %epil.iter143.next, %xtraiter142
  br i1 %epil.iter143.cmp.not, label %.lr.ph.i39.i.preheader, label %.lr.ph.i34.i.epil, !llvm.loop !92

.lr.ph.i39.i.preheader:                           ; preds = %.lr.ph.i34.i.epil, %.lr.ph.i39.i.preheader.unr-lcssa
  br label %.lr.ph.i39.i

.lr.ph.i39.i:                                     ; preds = %.lr.ph.i39.i.preheader, %bb.s
  %.013.i.i36 = phi ptr [ %i.lb, %bb.s ], [ %.sroa.11.16.copyload, %.lr.ph.i39.i.preheader ] ; 4 uses
  %.sroa.0.012.i.i37 = phi i32 [ %.sroa.0.1.i.i39, %bb.s ], [ 0, %.lr.ph.i39.i.preheader ] ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.013.i.i36, i64 15
  %i.ko = load i8, ptr %i.kn, align 1
  %i.kp = and i8 %i.ko, 32
  %.not10.i.i38 = icmp eq i8 %i.kp, 0
  br i1 %.not10.i.i38, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i39.i
  %i.kq = getelementptr inbounds nuw i8, ptr %.013.i.i36, i64 8
  %i.kr = load i32, ptr %i.kq, align 1
  %i.ks = shl i32 %i.kr, 16
  %i.kt = load i64, ptr %.013.i.i36, align 1
  %i.ku = trunc i64 %i.kt to i32
  %i.kv = and i32 %i.ku, 33554431
  %i.kw = or i32 %i.kv, %i.ks
  %i.kx = zext i32 %i.kw to i64
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 %i.kx ; 2 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !3
  %i.la = add i32 %i.kz, %.sroa.0.012.i.i37       ; 2 uses
  store i32 %i.la, ptr %i.ky, align 4, !tbaa !3
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i39.i
  %.sroa.0.1.i.i39 = phi i32 [ %.sroa.0.012.i.i37, %.lr.ph.i39.i ], [ %i.la, %bb.r ]
  %i.lb = getelementptr inbounds nuw i8, ptr %.013.i.i36, i64 16 ; 2 uses
  %.not.i40.i = icmp eq ptr %i.lb, %i.je
  br i1 %.not.i40.i, label %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE0EE30processOverflowFunctionHeadersEv.exit.i, label %.lr.ph.i39.i

_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE0EE30processOverflowFunctionHeadersEv.exit.i: ; preds = %bb.s, %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE0EE18processStringTableEv.exit.i
  %i.lc = getelementptr inbounds nuw i8, ptr %i.gp, i64 12 ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !31 ; 2 uses
  %.not.i41.i = icmp eq i32 %i.ld, 0
  br i1 %.not.i41.i, label %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE0EED2Ev.exit, label %.lr.ph47.i.i40.preheader

.lr.ph47.i.i40.preheader:                         ; preds = %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE0EE30processOverflowFunctionHeadersEv.exit.i
  %i.le = getelementptr inbounds nuw i8, ptr %i.gp, i64 296
  %i.lf = getelementptr inbounds nuw i8, ptr %i.gp, i64 288
  br label %.lr.ph47.i.i40

.lr.ph47.i.i40:                                   ; preds = %.lr.ph47.i.i40.preheader, %._crit_edge.i.i66
  %i.lg = phi i32 [ %i.ng, %._crit_edge.i.i66 ], [ %i.ld, %.lr.ph47.i.i40.preheader ]
  %indvars.iv.i.i41 = phi i64 [ %indvars.iv.next.i.i72, %._crit_edge.i.i66 ], [ 0, %.lr.ph47.i.i40.preheader ] ; 2 uses
  %.sroa.028.044.i.i42 = phi i32 [ %.sroa.028.1.lcssa.i.i71, %._crit_edge.i.i66 ], [ 0, %.lr.ph47.i.i40.preheader ] ; 2 uses
  %.sroa.024.043.i.i43 = phi i32 [ %.sroa.024.1.lcssa.i.i70, %._crit_edge.i.i66 ], [ 0, %.lr.ph47.i.i40.preheader ] ; 2 uses
  %.sroa.025.042.i.i44 = phi i16 [ %.sroa.025.1.lcssa.i.i69, %._crit_edge.i.i66 ], [ 0, %.lr.ph47.i.i40.preheader ] ; 2 uses
  %.sroa.026.041.i.i45 = phi i32 [ %.sroa.026.1.lcssa.i.i68, %._crit_edge.i.i66 ], [ 0, %.lr.ph47.i.i40.preheader ] ; 2 uses
  %.sroa.027.040.i.i46 = phi i16 [ %.sroa.027.1.lcssa.i.i67, %._crit_edge.i.i66 ], [ 0, %.lr.ph47.i.i40.preheader ] ; 2 uses
  %i.lh = load ptr, ptr %i.le, align 8, !tbaa !45
  %i.li = getelementptr inbounds nuw [16 x i8], ptr %i.lh, i64 %indvars.iv.i.i41 ; 4 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 15
  %i.lk = load i8, ptr %i.lj, align 1
  %i.ll = and i8 %i.lk, 32
  %.not.i.i.i47 = icmp eq i8 %i.ll, 0
  br i1 %.not.i.i.i47, label %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i.i48, label %bb.t, !prof !70

bb.t:                                             ; preds = %.lr.ph47.i.i40
  %i.lm = load ptr, ptr %i.lf, align 8, !tbaa !71
  %i.ln = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lo = load i32, ptr %i.ln, align 1
  %i.lp = shl i32 %i.lo, 16
  %i.lq = load i64, ptr %i.li, align 1
  %i.lr = trunc i64 %i.lq to i32
  %i.ls = and i32 %i.lr, 33554431
  %i.lt = or i32 %i.ls, %i.lp
  %i.lu = zext i32 %i.lt to i64
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.lu
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 1
  br label %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i.i48

_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i.i48: ; preds = %bb.t, %.lr.ph47.i.i40
  %.sroa.0.0.i.i.i49 = phi ptr [ %i.lw, %bb.t ], [ %i.li, %.lr.ph47.i.i40 ] ; 4 uses
  %i.lx = ptrtoint ptr %.sroa.0.0.i.i.i49 to i64
  %i.ly = trunc i64 %i.lx to i1
  br i1 %i.ly, label %bb.u, label %bb.v, !prof !72

bb.u:                                             ; preds = %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i.i48
  %i.lz = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i49, i64 -1
  %i.ma = load i32, ptr %i.lz, align 1, !tbaa !73
  %i.mb = zext i32 %i.ma to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i49, i64 7
  %i.md = load i32, ptr %i.mc, align 1, !tbaa !75
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i50

bb.v:                                             ; preds = %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i.i48
  %i.me = load i64, ptr %.sroa.0.0.i.i.i49, align 1 ; 2 uses
  %i.mf = and i64 %i.me, 33554431
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.mg = lshr i64 %i.me, 32
  %i.mh = trunc nuw i64 %i.mg to i32
  %i.mi = and i32 %i.mh, 32767
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i50

_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i50: ; preds = %bb.v, %bb.u
  %.pn97 = phi i64 [ %i.mb, %bb.u ], [ %i.mf, %bb.v ]
  %.0.i22.i.i51 = phi i32 [ %i.md, %bb.u ], [ %i.mi, %bb.v ] ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 %.pn97 ; 2 uses
  %i.mk = zext i32 %.0.i22.i.i51 to i64
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.mk
  %.not49.i.i52 = icmp eq i32 %.0.i22.i.i51, 0
  br i1 %.not49.i.i52, label %._crit_edge.i.i66, label %.lr.ph.i42.i

.lr.ph.i42.i:                                     ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i50, %bb.ab
  %.02135.i.i53 = phi ptr [ %i.ne, %bb.ab ], [ %i.mj, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i50 ] ; 7 uses
  %.sroa.028.134.i.i54 = phi i32 [ %.sroa.028.2.i.i63, %bb.ab ], [ %.sroa.028.044.i.i42, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i50 ] ; 6 uses
  %.sroa.024.133.i.i55 = phi i32 [ %.sroa.024.2.i.i62, %bb.ab ], [ %.sroa.024.043.i.i43, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i50 ] ; 6 uses
  %.sroa.025.132.i.i56 = phi i16 [ %.sroa.025.2.i.i61, %bb.ab ], [ %.sroa.025.042.i.i44, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i50 ] ; 6 uses
  %.sroa.026.131.i.i57 = phi i32 [ %.sroa.026.2.i.i60, %bb.ab ], [ %.sroa.026.041.i.i45, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i50 ] ; 6 uses
  %.sroa.027.130.i.i58 = phi i16 [ %.sroa.027.2.i.i59, %bb.ab ], [ %.sroa.027.040.i.i46, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i50 ] ; 6 uses
  %i.mm = load i8, ptr %.02135.i.i53, align 1, !tbaa !28 ; 2 uses
  switch i8 %i.mm, label %bb.ab [
    i8 5, label %bb.w
    i8 6, label %bb.x
    i8 100, label %bb.y
    i8 101, label %bb.z
    i8 52, label %bb.aa
  ]

bb.w:                                             ; preds = %.lr.ph.i42.i
  %i.mn = getelementptr inbounds nuw i8, ptr %.02135.i.i53, i64 6 ; 2 uses
  %i.mo = load i16, ptr %i.mn, align 1, !tbaa !28
  %i.mp = add i16 %i.mo, %.sroa.025.132.i.i56     ; 2 uses
  store i16 %i.mp, ptr %i.mn, align 1, !tbaa !28
  br label %bb.ab

bb.x:                                             ; preds = %.lr.ph.i42.i
  %i.mq = getelementptr inbounds nuw i8, ptr %.02135.i.i53, i64 6 ; 2 uses
  %i.mr = load i32, ptr %i.mq, align 1, !tbaa !28
  %i.ms = add i32 %i.mr, %.sroa.024.133.i.i55     ; 2 uses
  store i32 %i.ms, ptr %i.mq, align 1, !tbaa !28
  br label %bb.ab

bb.y:                                             ; preds = %.lr.ph.i42.i
  %i.mt = getelementptr inbounds nuw i8, ptr %.02135.i.i53, i64 3 ; 2 uses
  %i.mu = load i16, ptr %i.mt, align 1, !tbaa !28
  %i.mv = add i16 %i.mu, %.sroa.027.130.i.i58     ; 2 uses
  store i16 %i.mv, ptr %i.mt, align 1, !tbaa !28
  br label %bb.ab

bb.z:                                             ; preds = %.lr.ph.i42.i
  %i.mw = getelementptr inbounds nuw i8, ptr %.02135.i.i53, i64 3 ; 2 uses
  %i.mx = load i32, ptr %i.mw, align 1, !tbaa !28
  %i.my = add i32 %i.mx, %.sroa.026.131.i.i57     ; 2 uses
  store i32 %i.my, ptr %i.mw, align 1, !tbaa !28
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i42.i
  %i.mz = getelementptr inbounds nuw i8, ptr %.02135.i.i53, i64 1 ; 2 uses
  %i.na = load i32, ptr %i.mz, align 1, !tbaa !28
  %i.nb = add i32 %i.na, %.sroa.028.134.i.i54     ; 2 uses
  store i32 %i.nb, ptr %i.mz, align 1, !tbaa !28
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %.lr.ph.i42.i
  %.sroa.027.2.i.i59 = phi i16 [ %.sroa.027.130.i.i58, %.lr.ph.i42.i ], [ %.sroa.027.130.i.i58, %bb.w ], [ %.sroa.027.130.i.i58, %bb.x ], [ %i.mv, %bb.y ], [ %.sroa.027.130.i.i58, %bb.z ], [ %.sroa.027.130.i.i58, %bb.aa ] ; 2 uses
  %.sroa.026.2.i.i60 = phi i32 [ %.sroa.026.131.i.i57, %.lr.ph.i42.i ], [ %.sroa.026.131.i.i57, %bb.w ], [ %.sroa.026.131.i.i57, %bb.x ], [ %.sroa.026.131.i.i57, %bb.y ], [ %i.my, %bb.z ], [ %.sroa.026.131.i.i57, %bb.aa ] ; 2 uses
  %.sroa.025.2.i.i61 = phi i16 [ %.sroa.025.132.i.i56, %.lr.ph.i42.i ], [ %i.mp, %bb.w ], [ %.sroa.025.132.i.i56, %bb.x ], [ %.sroa.025.132.i.i56, %bb.y ], [ %.sroa.025.132.i.i56, %bb.z ], [ %.sroa.025.132.i.i56, %bb.aa ] ; 2 uses
  %.sroa.024.2.i.i62 = phi i32 [ %.sroa.024.133.i.i55, %.lr.ph.i42.i ], [ %.sroa.024.133.i.i55, %bb.w ], [ %i.ms, %bb.x ], [ %.sroa.024.133.i.i55, %bb.y ], [ %.sroa.024.133.i.i55, %bb.z ], [ %.sroa.024.133.i.i55, %bb.aa ] ; 2 uses
  %.sroa.028.2.i.i63 = phi i32 [ %.sroa.028.134.i.i54, %.lr.ph.i42.i ], [ %.sroa.028.134.i.i54, %bb.w ], [ %.sroa.028.134.i.i54, %bb.x ], [ %.sroa.028.134.i.i54, %bb.y ], [ %.sroa.028.134.i.i54, %bb.z ], [ %i.nb, %bb.aa ] ; 2 uses
  %i.nc = call noundef zeroext i8 @_ZN6hermes4inst11getInstSizeENS0_6OpCodeE(i8 noundef zeroext %i.mm) #12
  %i.nd = zext i8 %i.nc to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %.02135.i.i53, i64 %i.nd ; 2 uses
  %i.nf = icmp ult ptr %i.ne, %i.ml
  br i1 %i.nf, label %.lr.ph.i42.i, label %._crit_edge.i.i66.loopexit, !llvm.loop !93

._crit_edge.i.i66.loopexit:                       ; preds = %bb.ab
  %.pre100 = load i32, ptr %i.lc, align 4, !tbaa !31
  br label %._crit_edge.i.i66

._crit_edge.i.i66:                                ; preds = %._crit_edge.i.i66.loopexit, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i50
  %i.ng = phi i32 [ %i.lg, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i50 ], [ %.pre100, %._crit_edge.i.i66.loopexit ] ; 2 uses
  %.sroa.027.1.lcssa.i.i67 = phi i16 [ %.sroa.027.040.i.i46, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i50 ], [ %.sroa.027.2.i.i59, %._crit_edge.i.i66.loopexit ]
  %.sroa.026.1.lcssa.i.i68 = phi i32 [ %.sroa.026.041.i.i45, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i50 ], [ %.sroa.026.2.i.i60, %._crit_edge.i.i66.loopexit ]
  %.sroa.025.1.lcssa.i.i69 = phi i16 [ %.sroa.025.042.i.i44, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i50 ], [ %.sroa.025.2.i.i61, %._crit_edge.i.i66.loopexit ]
  %.sroa.024.1.lcssa.i.i70 = phi i32 [ %.sroa.024.043.i.i43, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i50 ], [ %.sroa.024.2.i.i62, %._crit_edge.i.i66.loopexit ]
  %.sroa.028.1.lcssa.i.i71 = phi i32 [ %.sroa.028.044.i.i42, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i.i50 ], [ %.sroa.028.2.i.i63, %._crit_edge.i.i66.loopexit ]
  %indvars.iv.next.i.i72 = add nuw nsw i64 %indvars.iv.i.i41, 1 ; 2 uses
  %i.nh = zext i32 %i.ng to i64
  %i.ni = icmp samesign ult i64 %indvars.iv.next.i.i72, %i.nh
  br i1 %i.ni, label %.lr.ph47.i.i40, label %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE0EED2Ev.exit, !llvm.loop !94

_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE0EED2Ev.exit: ; preds = %._crit_edge.i.i66, %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE0EE30processOverflowFunctionHeadersEv.exit.i
  store i64 2240826417119764422, ptr %.sroa.9.16.copyload, align 1, !tbaa !29
  br label %.sink.split

.sink.split.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i30.i
  %lcmp.mod126.not = icmp eq i64 %xtraiter124, 0
  br i1 %lcmp.mod126.not, label %.sink.split, label %.lr.ph.i30.i.epil.preheader

.lr.ph.i30.i.epil.preheader:                      ; preds = %.sink.split.loopexit.unr-lcssa, %.lr.ph.i30.i.preheader
  %.011.i31.i.epil.init = phi ptr [ %.sroa.1592.16.copyload, %.lr.ph.i30.i.preheader ], [ %i.gh, %.sink.split.loopexit.unr-lcssa ]
  %.sroa.0.010.i32.i.epil.init = phi i32 [ 0, %.lr.ph.i30.i.preheader ], [ %i.gf, %.sink.split.loopexit.unr-lcssa ]
  %lcmp.mod127 = icmp ne i64 %xtraiter124, 0
  call void @llvm.assume(i1 %lcmp.mod127)
  br label %.lr.ph.i30.i.epil

.lr.ph.i30.i.epil:                                ; preds = %.lr.ph.i30.i.epil, %.lr.ph.i30.i.epil.preheader
  %.011.i31.i.epil = phi ptr [ %i.nl, %.lr.ph.i30.i.epil ], [ %.011.i31.i.epil.init, %.lr.ph.i30.i.epil.preheader ] ; 3 uses
  %.sroa.0.010.i32.i.epil = phi i32 [ %i.nj, %.lr.ph.i30.i.epil ], [ %.sroa.0.010.i32.i.epil.init, %.lr.ph.i30.i.epil.preheader ]
  %epil.iter125 = phi i64 [ %epil.iter125.next, %.lr.ph.i30.i.epil ], [ 0, %.lr.ph.i30.i.epil.preheader ]
  %i.nj = load i32, ptr %.011.i31.i.epil, align 1, !tbaa !85 ; 2 uses
  %i.nk = sub i32 %i.nj, %.sroa.0.010.i32.i.epil
  store i32 %i.nk, ptr %.011.i31.i.epil, align 1, !tbaa !85
  %i.nl = getelementptr inbounds nuw i8, ptr %.011.i31.i.epil, i64 8
  %epil.iter125.next = add i64 %epil.iter125, 1   ; 2 uses
  %epil.iter125.cmp.not = icmp eq i64 %epil.iter125.next, %xtraiter124
  br i1 %epil.iter125.cmp.not, label %.sink.split, label %.lr.ph.i30.i.epil, !llvm.loop !95

.sink.split:                                      ; preds = %.sink.split.loopexit.unr-lcssa, %.lr.ph.i30.i.epil, %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE1EE18processStringTableEv.exit.i, %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE0EED2Ev.exit
  %.sink120 = phi ptr [ %i.gp, %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE0EED2Ev.exit ], [ %i.k, %_ZN12_GLOBAL__N_121BytecodeFormConverterILN6hermes3hbc12BytecodeFormE1EE18processStringTableEv.exit.i ], [ %i.k, %.lr.ph.i30.i.epil ], [ %i.k, %.sink.split.loopexit.unr-lcssa ] ; 2 uses
  call void @_ZN6hermes3hbc20BCProviderFromBuffer18updateBytecodeHashEN4llvh15MutableArrayRefIhEE(ptr %0, i64 %1) #12
  call void @_ZN6hermes3hbc20BCProviderFromBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(376) %.sink120) #12
  call void @_ZdlPvm(ptr noundef nonnull %.sink120, i64 noundef 376) #15
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  ret i1 %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_ZN6hermes3hbc18BytecodeFileFieldsILb1EE18populateFromBufferEN4llvh15MutableArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormE(ptr noundef nonnull align 8 dereferenceable(264), ptr, i64, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc20BCProviderFromBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN6hermes3hbc20BCProviderFromBuffer10stopWarmupEv(ptr noundef nonnull align 8 dereferenceable(376) %0) #12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96   ; 10 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !97   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZN6hermes3hbc12StreamVectorIhED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !99
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #15
  br label %_ZN6hermes3hbc12StreamVectorIhED2Ev.exit.i

_ZN6hermes3hbc12StreamVectorIhED2Ev.exit.i:       ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !100  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN4llvh11SmallVectorIN6hermes3hbc15DebugFileRegionELj1EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes3hbc12StreamVectorIhED2Ev.exit.i
  tail call void @free(ptr noundef %i.l) #12
  br label %_ZN4llvh11SmallVectorIN6hermes3hbc15DebugFileRegionELj1EED2Ev.exit.i

_ZN4llvh11SmallVectorIN6hermes3hbc15DebugFileRegionELj1EED2Ev.exit.i: ; preds = %bb.d, %_ZN6hermes3hbc12StreamVectorIhED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !97   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh11SmallVectorIN6hermes3hbc15DebugFileRegionELj1EED2Ev.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !99
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #15
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %bb.e, %_ZN4llvh11SmallVectorIN6hermes3hbc15DebugFileRegionELj1EED2Ev.exit.i
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !102  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i1.i, label %_ZN6hermes3hbc9DebugInfoD2Ev.exit, label %bb.f
end_hunk_1
