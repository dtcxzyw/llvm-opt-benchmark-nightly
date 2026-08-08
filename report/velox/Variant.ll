inline.NumInlined: 5996
inline.NumDeleted: 1815
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev:bb.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i, !prof !67

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #35
  br label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !646

_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !641
  br label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !644
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #36
  br label %_ZNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit, %bb.h
  ret void
}

declare void @_ZN8facebook5velox5ARRAYESt10shared_ptrIKNS0_4TypeEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.54") align 8, ptr noundef align 8) local_unnamed_addr #4

declare void @_ZN8facebook5velox16createScalarTypeENS0_8TypeKindE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK8facebook5velox7Variant16isTypeCompatibleERKSt10shared_ptrIKNS0_4TypeEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(10) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !54    ; 3 uses
  %i.c = icmp eq i8 %i.b, 33
  br i1 %i.c, label %.thread84, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !62     ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !68
  %.not = icmp eq i8 %i.b, %i.f
  br i1 %.not, label %bb.c, label %.thread84

bb.c:                                             ; preds = %bb.b
  switch i8 %i.b, label %.thread84 [
    i8 30, label %bb.d
    i8 31, label %bb.f
    i8 32, label %bb.m
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %0, align 8, !tbaa !61     ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.thread84, label %_ZNK8facebook5velox7Variant5arrayEv.exit

_ZNK8facebook5velox7Variant5arrayEv.exit:         ; preds = %bb.d
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !321  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !321
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox7Variant5arrayEv.exit
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef 0)
  %i.q = tail call noundef zeroext i1 @_ZNK8facebook5velox7Variant16isTypeCompatibleERKSt10shared_ptrIKNS0_4TypeEE(ptr noundef nonnull align 8 dereferenceable(10) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
  br i1 %i.q, label %.thread, label %.thread84

.thread:                                          ; preds = %_ZNK8facebook5velox7Variant5arrayEv.exit, %bb.e
  br label %.thread84

bb.f:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %0, align 8, !tbaa !61     ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.thread84, label %_ZNK8facebook5velox7Variant3mapEv.exit

_ZNK8facebook5velox7Variant3mapEv.exit:           ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !285  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %.thread84, label %.lr.ph98

.lr.ph98:                                         ; preds = %_ZNK8facebook5velox7Variant3mapEv.exit, %.thread69
  %.04597 = phi i8 [ %.146, %.thread69 ], [ 0, %_ZNK8facebook5velox7Variant3mapEv.exit ]
  %.04896 = phi i1 [ %.14974, %.thread69 ], [ false, %_ZNK8facebook5velox7Variant3mapEv.exit ]
  %.sroa.060.095 = phi ptr [ %i.ar, %.thread69 ], [ %i.u, %_ZNK8facebook5velox7Variant3mapEv.exit ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.060.095, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.060.095, i64 48 ; 2 uses
  %i.z = trunc nuw i8 %.04597 to i1
  br i1 %i.z, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph98
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !61
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %1, align 8, !tbaa !62    ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef 0)
  %i.ah = tail call noundef zeroext i1 @_ZNK8facebook5velox7Variant16isTypeCompatibleERKSt10shared_ptrIKNS0_4TypeEE(ptr noundef nonnull align 8 dereferenceable(10) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.ag)
  br i1 %i.ah, label %bb.i, label %.thread84

bb.i:                                             ; preds = %bb.h, %bb.g, %.lr.ph98
  %.146 = phi i8 [ 1, %.lr.ph98 ], [ 0, %bb.g ], [ 1, %bb.h ] ; 2 uses
  br i1 %.04896, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr %i.y, align 8, !tbaa !61
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.thread69, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %1, align 8, !tbaa !62    ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !29
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, i32 noundef 1)
  %i.ap = tail call noundef zeroext i1 @_ZNK8facebook5velox7Variant16isTypeCompatibleERKSt10shared_ptrIKNS0_4TypeEE(ptr noundef nonnull align 8 dereferenceable(10) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.ao)
  br i1 %i.ap, label %bb.l, label %.thread84

bb.l:                                             ; preds = %bb.i, %bb.k
  %i.aq = trunc nuw i8 %.146 to i1
  br i1 %i.aq, label %.thread84, label %.thread69

.thread69:                                        ; preds = %bb.j, %bb.l
  %.14974 = phi i1 [ true, %bb.l ], [ false, %bb.j ]
  %i.ar = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.060.095) #40 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.v
  br i1 %i.as, label %.thread84, label %.lr.ph98

bb.m:                                             ; preds = %bb.c
  %i.at = load ptr, ptr %0, align 8, !tbaa !61    ; 5 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.thread84, label %_ZNK8facebook5velox7Variant3rowEv.exit

_ZNK8facebook5velox7Variant3rowEv.exit:           ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !270
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !272
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 4
  %i.bc = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call noundef i32 %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.bg = zext i32 %i.bf to i64
  %.not53 = icmp eq i64 %i.bb, %i.bg
  br i1 %.not53, label %.preheader, label %.thread84

.preheader:                                       ; preds = %_ZNK8facebook5velox7Variant3rowEv.exit
  %i.bh = load ptr, ptr %i.av, align 8, !tbaa !270
  %i.bi = load ptr, ptr %i.at, align 8, !tbaa !272 ; 2 uses
  %.not5491.not = icmp eq ptr %i.bh, %i.bi
  br i1 %.not5491.not, label %.thread84, label %.lr.ph

bb.n:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bj = load ptr, ptr %i.av, align 8, !tbaa !270
  %i.bk = load ptr, ptr %i.at, align 8, !tbaa !272 ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 4
  %.not54 = icmp ugt i64 %i.bo, %indvars.iv.next
  br i1 %.not54, label %.lr.ph, label %.thread84, !llvm.loop !651

.lr.ph:                                           ; preds = %.preheader, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %.preheader ] ; 3 uses
  %i.bp = phi ptr [ %i.bk, %bb.n ], [ %i.bi, %.preheader ]
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %indvars.iv
  %i.br = load ptr, ptr %1, align 8, !tbaa !62    ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !29
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = trunc nuw nsw i64 %indvars.iv to i32
  %i.bw = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.br, i32 noundef %i.bv)
  %i.bx = tail call noundef zeroext i1 @_ZNK8facebook5velox7Variant16isTypeCompatibleERKSt10shared_ptrIKNS0_4TypeEE(ptr noundef nonnull align 8 dereferenceable(10) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.bw) ; 3 uses
  br i1 %i.bx, label %bb.n, label %.thread84

.thread84:                                        ; preds = %bb.n, %.lr.ph, %bb.k, %bb.h, %bb.l, %.thread69, %.preheader, %_ZNK8facebook5velox7Variant3mapEv.exit, %bb.f, %_ZNK8facebook5velox7Variant3rowEv.exit, %bb.m, %bb.d, %.thread, %bb.e, %bb.c, %bb.b, %bb.a
  %.6 = phi i1 [ true, %bb.f ], [ true, %bb.a ], [ false, %bb.b ], [ false, %bb.e ], [ true, %bb.c ], [ false, %_ZNK8facebook5velox7Variant3rowEv.exit ], [ true, %_ZNK8facebook5velox7Variant3mapEv.exit ], [ true, %bb.m ], [ true, %.thread ], [ true, %bb.d ], [ true, %.preheader ], [ true, %.thread69 ], [ true, %bb.l ], [ false, %bb.h ], [ false, %bb.k ], [ %i.bx, %.lr.ph ], [ %i.bx, %bb.n ]
  ret i1 %.6
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox15LongDecimalTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(568) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN8facebook5velox11DecimalTypeILNS0_8TypeKindE10EEE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox11DecimalTypeILNS0_8TypeKindE10EEE, i64 192), ptr %i.a, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @_ZN8facebook5velox13TypeParameterD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %i.c) #35, !inline_history !652
  tail call void @_ZN8facebook5velox13TypeParameterD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(544) %i.b) #35, !inline_history !652
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 568) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK8facebook5velox10ScalarTypeILNS0_8TypeKindE10EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(18) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8facebook5velox10ScalarTypeILNS0_8TypeKindE10EE7childAtEj(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox10ScalarTypeILNS0_8TypeKindE10EE7childAtEjE18veloxCheckFailArgs, ptr noundef nonnull @.str.54) #37
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox8TypeBaseILNS0_8TypeKindE10EE15isPrimitiveTypeEv(ptr noundef nonnull align 8 dereferenceable(18) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox10ScalarTypeILNS0_8TypeKindE10EE12isComparableEv(ptr noundef nonnull align 8 dereferenceable(18) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox10ScalarTypeILNS0_8TypeKindE10EE11isOrderableEv(ptr noundef nonnull align 8 dereferenceable(18) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE4nameEv(ptr noundef nonnull align 8 dereferenceable(568) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr @.str.55
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i64 } @_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE10parametersEv(ptr noundef nonnull align 8 dereferenceable(568) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 2, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK8facebook5velox8TypeBaseILNS0_8TypeKindE10EE8kindNameEv(ptr noundef nonnull align 8 dereferenceable(18) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr @.str.56
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE8toStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(568) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i8, ptr %i.a, align 8, !tbaa !653, !range !89, !noundef !44
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE9precisionEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt27__throw_bad_optional_accessv() #37
  unreachable

_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE9precisionEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.e = load i8, ptr %i.d, align 8, !tbaa !653, !range !89, !noundef !44
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE5scaleEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE9precisionEv.exit
  tail call void @_ZSt27__throw_bad_optional_accessv() #37
  unreachable

_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE5scaleEv.exit: ; preds = %_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE9precisionEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !87
  %i.i = trunc i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.k = load i64, ptr %i.j, align 8, !tbaa !87
  %i.l = trunc i64 %i.k to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35, !noalias !655
  %i.m = and i32 %i.i, 255
  store i32 %i.m, ptr %2, align 16, !tbaa !22, !noalias !655
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = and i32 %i.l, 255
  store i32 %i.o, ptr %i.n, align 16, !tbaa !22, !noalias !655
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull @.str.57, i64 15, i64 34, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35, !noalias !655
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE10equivalentERKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef nonnull align 8 dereferenceable(18) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %1, align 8, !tbaa !29
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !578  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !578  ; 3 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i8, ptr %i.h, align 1, !tbaa !22
  %.not.i = icmp eq i8 %i.l, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread9, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.m = load i8, ptr %i.j, align 1, !tbaa !22
  %i.n = icmp eq i8 %i.m, 42
  %.idx.i.i = zext i1 %i.n to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i.i
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) %i.o) #35
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread9

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load i8, ptr %i.r, align 8, !tbaa !653, !range !89, !noundef !44
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE9precisionEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread
  tail call void @_ZSt27__throw_bad_optional_accessv() #37
  unreachable

_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE9precisionEv.exit: ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load i8, ptr %i.u, align 8, !tbaa !653, !range !89, !noundef !44
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE9precisionEv.exit6, label %bb.d

bb.d:                                             ; preds = %_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE9precisionEv.exit
  tail call void @_ZSt27__throw_bad_optional_accessv() #37
  unreachable

_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE9precisionEv.exit6: ; preds = %_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE9precisionEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load i64, ptr %i.x, align 8, !tbaa !87
  %i.z = trunc i64 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !87
  %i.ac = trunc i64 %i.ab to i8
  %i.ad = icmp eq i8 %i.z, %i.ac
  br i1 %i.ad, label %bb.e, label %_ZNKSt9type_infoeqERKS_.exit.thread9

bb.e:                                             ; preds = %_ZNK8facebook5velox11DecimalTypeILNS0_8TypeKindE10EE9precisionEv.exit6
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !653, !range !89, !noundef !44
end_hunk_0
