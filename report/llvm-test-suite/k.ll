inline.NumInlined: 3272
inline.NumDeleted: 768
begin_hunk_0_@_ZN9__gnu_cxx9hashtableIN2kc8hashitemES2_NS1_13hash_hashitemESt9_IdentityIS2_ENS1_11eq_hashitemESaIS2_EE21_M_initialize_bucketsEm:bb.a
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1358
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !1349 ; 5 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 3 uses
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = ashr exact i64 %i.s, 3
  %i.u = icmp ult i64 %i.t, %i.k
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1360 ; 2 uses
  br i1 %i.u, label %_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE7reserveEm.exit

_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.r                       ; 3 uses
  %i.z = shl nuw nsw i64 %i.k, 3
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #33 ; 6 uses
  %i.ab = icmp sgt i64 %i.y, 0
  br i1 %i.ab, label %bb.d, label %_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr align 8 %i.p, i64 %i.y, i1 false)
  br label %_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i

_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %bb.d, %_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.p, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.s) #38
  br label %_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.e, %_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.aa, ptr %i.l, align 8, !tbaa !1349
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y ; 2 uses
  store ptr %i.ac, ptr %i.v, align 8, !tbaa !1350
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.k
  store ptr %i.ad, ptr %i.n, align 8, !tbaa !1358
  %.pre4 = ptrtoint ptr %i.aa to i64
  br label %_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE7reserveEm.exit

_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE13_M_deallocateEPS5_m.exit.i
  %.pre-phi = phi i64 [ %.pre4, %_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ %i.r, %bb.c ]
  %i.ae = phi ptr [ %i.aa, %_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ %i.p, %bb.c ]
  %i.af = phi ptr [ %i.ac, %_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ %i.w, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store ptr null, ptr %i.a, align 8, !tbaa !1351
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %.pre-phi
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 %i.ah
  call void @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE14_M_fill_insertENS0_17__normal_iteratorIPS5_S7_EEmRKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr %i.ai, i64 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.aj, align 8, !tbaa !1348
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #23

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #24 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #34 ; 0 uses
  tail call void @_ZSt9terminatev() #37
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE14_M_fill_insertENS0_17__normal_iteratorIPS5_S7_EEmRKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES5_EvT_S7_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1358
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1350 ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %3, align 8, !tbaa !1351   ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !1361

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !1350
  br label %_ZSt22__uninitialized_move_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !1351
  store ptr %i.s, ptr %i.d, align 8, !tbaa !1351
  br label %_ZSt22__uninitialized_move_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit

_ZSt22__uninitialized_move_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !1350
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !1361

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 8
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ac = load ptr, ptr %1, align 8, !tbaa !1351
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !1351
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -8                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check127 = icmp ult i64 %i.ae, 24
  br i1 %min.iters.check127, label %.lr.ph.i.i.i.preheader, label %vector.ph128

vector.ph128:                                     ; preds = %bb.k
  %n.vec130 = and i64 %i.ag, 4611686018427387900  ; 3 uses
  %i.ah = shl i64 %n.vec130, 3
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert131 = insertelement <2 x ptr> poison, ptr %i.i, i64 0
  %broadcast.splat132 = shufflevector <2 x ptr> %broadcast.splatinsert131, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph128
  %index134 = phi i64 [ 0, %vector.ph128 ], [ %index.next136, %vector.body133 ] ; 2 uses
  %i.aj = shl i64 %index134, 3
  %next.gep135 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep135, i64 16
  store <2 x ptr> %broadcast.splat132, ptr %next.gep135, align 8, !tbaa !1351
  store <2 x ptr> %broadcast.splat132, ptr %i.ak, align 8, !tbaa !1351
  %index.next136 = add nuw i64 %index134, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next136, %n.vec130
  br i1 %i.al, label %middle.block137, label %vector.body133, !llvm.loop !1362

middle.block137:                                  ; preds = %vector.body133
  %cmp.n138 = icmp eq i64 %i.ag, %n.vec130
  br i1 %cmp.n138, label %_ZSt4fillIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES5_EvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block137
  %.07.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block137 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store ptr %i.i, ptr %.07.i.i.i, align 8, !tbaa !1351
  %i.am = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES5_EvT_S7_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !1365

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 3
  %4 = add i64 %i.aq, -8
  %5 = sub i64 %4, %i.k                           ; 2 uses
  %i.ar = lshr i64 %5, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.at = shl i64 %n.vec, 3
  %i.au = getelementptr i8, ptr %i.d, i64 %i.at
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8, !tbaa !1351
  store <2 x ptr> %broadcast.splat, ptr %i.aw, align 8, !tbaa !1351
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !1366

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.07.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store ptr %i.i, ptr %.07.i.i.i.i.i.i.i, align 8, !tbaa !1351
  %i.ay = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1367

_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !1350
  %i.az = icmp sgt i64 %i.k, 8
  br i1 %i.az, label %bb.n, label %bb.o, !prof !1361

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i, ptr align 8 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1350
  br label %_ZSt22__uninitialized_move_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit
  %i.ba = icmp eq i64 %i.k, 8
  br i1 %i.ba, label %bb.p, label %_ZSt22__uninitialized_move_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bb = load ptr, ptr %1, align 8, !tbaa !1351
  store ptr %i.bb, ptr %.0.i.i.i.i.i, align 8, !tbaa !1351
  br label %_ZSt22__uninitialized_move_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit69

_ZSt22__uninitialized_move_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.bc = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.k
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !1350
  %.not6.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not6.i.i.i70, label %_ZSt4fillIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES5_EvT_S7_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit69
  %6 = add i64 %i.f, -8
  %7 = sub i64 %6, %i.j                           ; 2 uses
  %i.be = lshr i64 %7, 3
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %7, 24
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader154, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec116 = and i64 %i.bf, 4611686018427387900  ; 3 uses
  %i.bg = shl i64 %n.vec116, 3
  %i.bh = getelementptr i8, ptr %1, i64 %i.bg
  %broadcast.splatinsert117 = insertelement <2 x ptr> poison, ptr %i.i, i64 0
  %broadcast.splat118 = shufflevector <2 x ptr> %broadcast.splatinsert117, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph114
  %index120 = phi i64 [ 0, %vector.ph114 ], [ %index.next122, %vector.body119 ] ; 2 uses
  %i.bi = shl i64 %index120, 3
  %next.gep121 = getelementptr i8, ptr %1, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep121, i64 16
  store <2 x ptr> %broadcast.splat118, ptr %next.gep121, align 8, !tbaa !1351
  store <2 x ptr> %broadcast.splat118, ptr %i.bj, align 8, !tbaa !1351
  %index.next122 = add nuw i64 %index120, 4       ; 2 uses
  %i.bk = icmp eq i64 %index.next122, %n.vec116
  br i1 %i.bk, label %middle.block123, label %vector.body119, !llvm.loop !1368

middle.block123:                                  ; preds = %vector.body119
  %cmp.n124 = icmp eq i64 %i.bf, %n.vec116
  br i1 %cmp.n124, label %_ZSt4fillIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES5_EvT_S7_RKT0_.exit, label %.lr.ph.i.i.i71.preheader154

.lr.ph.i.i.i71.preheader154:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block123
  %.07.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bh, %middle.block123 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader154, %.lr.ph.i.i.i71
  %.07.i.i.i72 = phi ptr [ %i.bl, %.lr.ph.i.i.i71 ], [ %.07.i.i.i72.ph, %.lr.ph.i.i.i71.preheader154 ] ; 2 uses
  store ptr %i.i, ptr %.07.i.i.i72, align 8, !tbaa !1351
  %i.bl = getelementptr inbounds nuw i8, ptr %.07.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bl, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES5_EvT_S7_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !1369

bb.q:                                             ; preds = %bb.b
  %i.bm = load ptr, ptr %0, align 8, !tbaa !1349  ; 5 uses
  %i.bn = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bo = sub i64 %i.f, %i.bn
  %i.bp = ashr exact i64 %i.bo, 3                 ; 4 uses
  %i.bq = sub nsw i64 1152921504606846975, %i.bp
  %i.br = icmp ult i64 %i.bq, %2
  br i1 %i.br, label %bb.r, label %_ZNKSt6vectorIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.515) #35
  unreachable

_ZNKSt6vectorIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 %2)
  %i.bs = add nsw i64 %.sroa.speculated.i, %i.bp  ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.bp
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %i.bw = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bx = sub i64 %i.bw, %i.bn                    ; 4 uses
  %.not.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.by = shl nuw nsw i64 %i.bv, 3
  %i.bz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #33
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.ca = phi ptr [ %i.bz, %bb.s ], [ null, %_ZNKSt6vectorIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bx ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 3       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx.i.i.i.i.i75
  %i.cd = load ptr, ptr %3, align 8, !tbaa !1351  ; 2 uses
  %i.ce = add nsw i64 %.idx.i.i.i.i.i75, -8       ; 2 uses
  %i.cf = lshr exact i64 %i.ce, 3
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check141 = icmp ult i64 %i.ce, 24
  br i1 %min.iters.check141, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph142

vector.ph142:                                     ; preds = %bb.t
  %n.vec144 = and i64 %i.cg, 4611686018427387900  ; 3 uses
  %i.ch = shl i64 %n.vec144, 3
  %i.ci = getelementptr i8, ptr %i.cb, i64 %i.ch
  %broadcast.splatinsert145 = insertelement <2 x ptr> poison, ptr %i.cd, i64 0
  %broadcast.splat146 = shufflevector <2 x ptr> %broadcast.splatinsert145, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph142
  %index148 = phi i64 [ 0, %vector.ph142 ], [ %index.next150, %vector.body147 ] ; 2 uses
  %i.cj = shl i64 %index148, 3
  %next.gep149 = getelementptr i8, ptr %i.cb, i64 %i.cj ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep149, i64 16
  store <2 x ptr> %broadcast.splat146, ptr %next.gep149, align 8, !tbaa !1351
  store <2 x ptr> %broadcast.splat146, ptr %i.ck, align 8, !tbaa !1351
  %index.next150 = add nuw i64 %index148, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next150, %n.vec144
  br i1 %i.cl, label %middle.block151, label %vector.body147, !llvm.loop !1370

middle.block151:                                  ; preds = %vector.body147
  %cmp.n152 = icmp eq i64 %i.cg, %n.vec144
  br i1 %cmp.n152, label %_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block151
  %.07.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cb, %bb.t ], [ %i.ci, %middle.block151 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.07.i.i.i.i.i.i.i77 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.07.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store ptr %i.cd, ptr %.07.i.i.i.i.i.i.i77, align 8, !tbaa !1351
  %i.cm = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cm, %i.cc
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !1371

_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block151
  %i.cn = icmp sgt i64 %i.bx, 8
  br i1 %i.cn, label %bb.u, label %bb.v, !prof !1361

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ca, ptr align 8 %i.bm, i64 %i.bx, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit80
  %i.co = icmp eq i64 %i.bx, 8
  br i1 %i.co, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.cp = load ptr, ptr %i.bm, align 8, !tbaa !1351
  store ptr %i.cp, ptr %i.ca, align 8, !tbaa !1351
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %2 ; 3 uses
  %i.cr = sub i64 %i.f, %i.bw                     ; 4 uses
  %i.cs = icmp sgt i64 %i.cr, 8
  br i1 %i.cs, label %bb.x, label %bb.y, !prof !1361

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cq, ptr align 8 %1, i64 %i.cr, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %i.ct = icmp eq i64 %i.cr, 8
  br i1 %i.ct, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cu = load ptr, ptr %1, align 8, !tbaa !1351
  store ptr %i.cu, ptr %i.cq, align 8, !tbaa !1351
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cv = getelementptr inbounds i8, ptr %i.cq, i64 %i.cr
  %.not.i82 = icmp eq ptr %i.bm, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cw = sub i64 %i.e, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.cw) #38
  br label %_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ca, ptr %0, align 8, !tbaa !1349
  store ptr %i.cv, ptr %i.c, align 8, !tbaa !1350
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bv
  store ptr %i.cx, ptr %i.a, align 8, !tbaa !1358
  br label %_ZSt4fillIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES5_EvT_S7_RKT0_.exit

_ZSt4fillIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES5_EvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block123, %middle.block137, %_ZSt22__uninitialized_move_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit69, %_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE13_M_deallocateEPS5_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN2kc15hashtable_level5clearEb(ptr noundef nonnull align 8 dereferenceable(288) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2kc15hashtable_level13clear_entriesEv(ptr noundef nonnull align 8 dereferenceable(288) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1348
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN9__gnu_cxx8hash_setIN2kc8hashitemENS1_13hash_hashitemENS1_11eq_hashitemESaIS2_EE5clearEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1350 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !1349 ; 2 uses
  %.not14.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not14.i.i, label %._crit_edge13.i.i, label %.lr.ph12.i.i

._crit_edge13.i.i:                                ; preds = %._crit_edge.i.i, %.preheader.i.i
  store i64 0, ptr %i.a, align 8, !tbaa !1348
  br label %_ZN9__gnu_cxx8hash_setIN2kc8hashitemENS1_13hash_hashitemENS1_11eq_hashitemESaIS2_EE5clearEv.exit

.lr.ph12.i.i:                                     ; preds = %.preheader.i.i, %._crit_edge.i.i
  %i.h = phi ptr [ %i.m, %._crit_edge.i.i ], [ %i.f, %.preheader.i.i ]
end_hunk_0
