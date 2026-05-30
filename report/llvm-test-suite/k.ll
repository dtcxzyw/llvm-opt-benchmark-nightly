inline.NumInlined: 3272
inline.NumDeleted: 768
begin_hunk_0_@_ZNSt6vectorIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE14_M_fill_insertENS0_17__normal_iteratorIPS5_S7_EEmRKS5_:bb.a

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
  %i.ar = add i64 %i.aq, -8
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.av = shl i64 %n.vec, 3
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8, !tbaa !1351
  store <2 x ptr> %broadcast.splat, ptr %i.ay, align 8, !tbaa !1351
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !1366

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.07.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store ptr %i.i, ptr %.07.i.i.i.i.i.i.i, align 8, !tbaa !1351
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1367

_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !1350
  %i.bb = icmp sgt i64 %i.k, 8
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !1361

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i, ptr align 8 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1350
  br label %_ZSt22__uninitialized_move_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 8
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load ptr, ptr %1, align 8, !tbaa !1351
  store ptr %i.bd, ptr %.0.i.i.i.i.i, align 8, !tbaa !1351
  br label %_ZSt22__uninitialized_move_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit69

_ZSt22__uninitialized_move_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !1350
  %.not6.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not6.i.i.i70, label %_ZSt4fillIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES5_EvT_S7_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit69
  %i.bg = add i64 %i.f, -8
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.bh, 24
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader154, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec116 = and i64 %i.bj, 4611686018427387900  ; 3 uses
  %i.bk = shl i64 %n.vec116, 3
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert117 = insertelement <2 x ptr> poison, ptr %i.i, i64 0
  %broadcast.splat118 = shufflevector <2 x ptr> %broadcast.splatinsert117, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph114
  %index120 = phi i64 [ 0, %vector.ph114 ], [ %index.next122, %vector.body119 ] ; 2 uses
  %i.bm = shl i64 %index120, 3
  %next.gep121 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep121, i64 16
  store <2 x ptr> %broadcast.splat118, ptr %next.gep121, align 8, !tbaa !1351
  store <2 x ptr> %broadcast.splat118, ptr %i.bn, align 8, !tbaa !1351
  %index.next122 = add nuw i64 %index120, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next122, %n.vec116
  br i1 %i.bo, label %middle.block123, label %vector.body119, !llvm.loop !1368

middle.block123:                                  ; preds = %vector.body119
  %cmp.n124 = icmp eq i64 %i.bj, %n.vec116
  br i1 %cmp.n124, label %_ZSt4fillIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES5_EvT_S7_RKT0_.exit, label %.lr.ph.i.i.i71.preheader154

.lr.ph.i.i.i71.preheader154:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block123
  %.07.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block123 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader154, %.lr.ph.i.i.i71
  %.07.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.07.i.i.i72.ph, %.lr.ph.i.i.i71.preheader154 ] ; 2 uses
  store ptr %i.i, ptr %.07.i.i.i72, align 8, !tbaa !1351
  %i.bp = getelementptr inbounds nuw i8, ptr %.07.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES5_EvT_S7_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !1369

bb.q:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8, !tbaa !1349  ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 3                 ; 4 uses
  %i.bu = sub nsw i64 1152921504606846975, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.515) #35
  unreachable

bb.s:                                             ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %4 = add nsw i64 %.sroa.speculated.i, %i.bt     ; 2 uses
  %5 = icmp ult i64 %4, %i.bt
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 1152921504606846975)
  %7 = select i1 %5, i64 1152921504606846975, i64 %6 ; 2 uses
  %8 = ptrtoint ptr %1 to i64                     ; 2 uses
  %9 = sub i64 %8, %i.br                          ; 4 uses
  %10 = shl nuw nsw i64 %7, 3
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #33 ; 5 uses
  %i.bw = getelementptr inbounds i8, ptr %11, i64 %9 ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 3       ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx.i.i.i.i.i75
  %i.by = load ptr, ptr %3, align 8, !tbaa !1351  ; 2 uses
  %i.bz = add nsw i64 %.idx.i.i.i.i.i75, -8       ; 2 uses
  %i.ca = lshr exact i64 %i.bz, 3
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check141 = icmp ult i64 %i.bz, 24
  br i1 %min.iters.check141, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph142

vector.ph142:                                     ; preds = %bb.s
  %n.vec144 = and i64 %i.cb, 4611686018427387900  ; 3 uses
  %i.cc = shl i64 %n.vec144, 3
  %i.cd = getelementptr i8, ptr %i.bw, i64 %i.cc
  %broadcast.splatinsert145 = insertelement <2 x ptr> poison, ptr %i.by, i64 0
  %broadcast.splat146 = shufflevector <2 x ptr> %broadcast.splatinsert145, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph142
  %index148 = phi i64 [ 0, %vector.ph142 ], [ %index.next150, %vector.body147 ] ; 2 uses
  %i.ce = shl i64 %index148, 3
  %next.gep149 = getelementptr i8, ptr %i.bw, i64 %i.ce ; 2 uses
  %i.cf = getelementptr i8, ptr %next.gep149, i64 16
  store <2 x ptr> %broadcast.splat146, ptr %next.gep149, align 8, !tbaa !1351
  store <2 x ptr> %broadcast.splat146, ptr %i.cf, align 8, !tbaa !1351
  %index.next150 = add nuw i64 %index148, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next150, %n.vec144
  br i1 %i.cg, label %middle.block151, label %vector.body147, !llvm.loop !1370

middle.block151:                                  ; preds = %vector.body147
  %cmp.n152 = icmp eq i64 %i.cb, %n.vec144
  br i1 %cmp.n152, label %_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.s, %middle.block151
  %.07.i.i.i.i.i.i.i77.ph = phi ptr [ %i.bw, %bb.s ], [ %i.cd, %middle.block151 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.07.i.i.i.i.i.i.i77 = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.07.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store ptr %i.by, ptr %.07.i.i.i.i.i.i.i77, align 8, !tbaa !1351
  %i.ch = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.ch, %i.bx
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !1371

_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block151
  %i.ci = icmp sgt i64 %9, 8
  br i1 %i.ci, label %bb.t, label %bb.u, !prof !1361

bb.t:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %11, ptr align 8 %i.bq, i64 %9, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit80
  %i.cj = icmp eq i64 %9, 8
  br i1 %i.cj, label %bb.v, label %_ZSt34__uninitialized_move_if_noexcept_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit

bb.v:                                             ; preds = %bb.u
  %i.ck = load ptr, ptr %i.bq, align 8, !tbaa !1351
  store ptr %i.ck, ptr %11, align 8, !tbaa !1351
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %bb.v, %bb.u, %bb.t
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %2 ; 3 uses
  %i.cm = sub i64 %i.f, %8                        ; 4 uses
  %i.cn = icmp sgt i64 %i.cm, 8
  br i1 %i.cn, label %bb.w, label %bb.x, !prof !1361

bb.w:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cl, ptr align 8 %1, i64 %i.cm, i1 false)
  br label %bb.z

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %i.co = icmp eq i64 %i.cm, 8
  br i1 %i.co, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cp = load ptr, ptr %1, align 8, !tbaa !1351
  store ptr %i.cp, ptr %i.cl, align 8, !tbaa !1351
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.cq = getelementptr inbounds i8, ptr %i.cl, i64 %i.cm
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cr = sub i64 %i.e, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.cr) #38
  br label %_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseIPN9__gnu_cxx15_Hashtable_nodeIN2kc8hashitemEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %bb.z, %bb.aa
  store ptr %11, ptr %0, align 8, !tbaa !1349
  store ptr %i.cq, ptr %i.c, align 8, !tbaa !1350
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %7
  store ptr %i.cs, ptr %i.a, align 8, !tbaa !1358
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
  %i.i = phi ptr [ %i.n, %._crit_edge.i.i ], [ %i.g, %.preheader.i.i ] ; 2 uses
  %.011.i.i = phi i64 [ %i.p, %._crit_edge.i.i ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.011.i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1351 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.k, null
  br i1 %.not9.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph12.i.i, %.lr.ph.i.i
  %.0810.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.k, %.lr.ph12.i.i ] ; 2 uses
  %i.l = load ptr, ptr %.0810.i.i, align 8, !tbaa !1353 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.0810.i.i, i64 noundef 24) #38
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1356

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !1349
  %.pre15.i.i = load ptr, ptr %i.e, align 8, !tbaa !1350
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %.lr.ph12.i.i
  %i.m = phi ptr [ %.pre15.i.i, %._crit_edge.loopexit.i.i ], [ %i.h, %.lr.ph12.i.i ] ; 2 uses
  %i.n = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.i, %.lr.ph12.i.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.011.i.i
  store ptr null, ptr %i.o, align 8, !tbaa !1351
  %i.p = add nuw i64 %.011.i.i, 1                 ; 2 uses
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = icmp ult i64 %i.p, %i.t
  br i1 %i.u, label %.lr.ph12.i.i, label %._crit_edge13.i.i, !llvm.loop !1357

_ZN9__gnu_cxx8hash_setIN2kc8hashitemENS1_13hash_hashitemENS1_11eq_hashitemESaIS2_EE5clearEv.exit: ; preds = %bb.c, %._crit_edge13.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1347
  invoke void @_ZNSt8_Rb_treeIPN2kc27impl_nocasestring_NoCaseStrES2_St9_IdentityIS2_ENS0_11phylum_lessIS2_EESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef %i.x)
          to label %_ZNSt3setIPN2kc27impl_nocasestring_NoCaseStrENS0_11phylum_lessIS2_EESaIS2_EE5clearEv.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN9__gnu_cxx8hash_setIN2kc8hashitemENS1_13hash_hashitemENS1_11eq_hashitemESaIS2_EE5clearEv.exit
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #37
  unreachable

_ZNSt3setIPN2kc27impl_nocasestring_NoCaseStrENS0_11phylum_lessIS2_EESaIS2_EE5clearEv.exit: ; preds = %_ZN9__gnu_cxx8hash_setIN2kc8hashitemENS1_13hash_hashitemENS1_11eq_hashitemESaIS2_EE5clearEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr null, ptr %i.w, align 8, !tbaa !1347
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !1030
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !1372
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.ad, align 8, !tbaa !1031
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1347
  invoke void @_ZNSt8_Rb_treeIPN2kc17impl_integer__IntES2_St9_IdentityIS2_ENS0_11phylum_lessIS2_EESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef %i.ag)
          to label %_ZNSt3setIPN2kc17impl_integer__IntENS0_11phylum_lessIS2_EESaIS2_EE5clearEv.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt3setIPN2kc27impl_nocasestring_NoCaseStrENS0_11phylum_lessIS2_EESaIS2_EE5clearEv.exit
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #37
  unreachable

_ZNSt3setIPN2kc17impl_integer__IntENS0_11phylum_lessIS2_EESaIS2_EE5clearEv.exit: ; preds = %_ZNSt3setIPN2kc27impl_nocasestring_NoCaseStrENS0_11phylum_lessIS2_EESaIS2_EE5clearEv.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr null, ptr %i.af, align 8, !tbaa !1347
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !1030
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !1372
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 0, ptr %i.am, align 8, !tbaa !1031
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1347
  invoke void @_ZNSt8_Rb_treeIPN2kc15impl_real__RealES2_St9_IdentityIS2_ENS0_11phylum_lessIS2_EESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef %i.ap)
          to label %_ZNSt3setIPN2kc15impl_real__RealENS0_11phylum_lessIS2_EESaIS2_EE5clearEv.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt3setIPN2kc17impl_integer__IntENS0_11phylum_lessIS2_EESaIS2_EE5clearEv.exit
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #37
  unreachable

_ZNSt3setIPN2kc15impl_real__RealENS0_11phylum_lessIS2_EESaIS2_EE5clearEv.exit: ; preds = %_ZNSt3setIPN2kc17impl_integer__IntENS0_11phylum_lessIS2_EESaIS2_EE5clearEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr null, ptr %i.ao, align 8, !tbaa !1347
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.as, ptr %i.at, align 8, !tbaa !1030
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.as, ptr %i.au, align 8, !tbaa !1372
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 0, ptr %i.av, align 8, !tbaa !1031
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1347
  invoke void @_ZNSt8_Rb_treeIPN2kc21impl_voidptr__VoidPtrES2_St9_IdentityIS2_ENS0_11phylum_lessIS2_EESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef %i.ay)
          to label %_ZNSt3setIPN2kc21impl_voidptr__VoidPtrENS0_11phylum_lessIS2_EESaIS2_EE5clearEv.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt3setIPN2kc15impl_real__RealENS0_11phylum_lessIS2_EESaIS2_EE5clearEv.exit
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  tail call void @__clang_call_terminate(ptr %i.ba) #37
  unreachable

_ZNSt3setIPN2kc21impl_voidptr__VoidPtrENS0_11phylum_lessIS2_EESaIS2_EE5clearEv.exit: ; preds = %_ZNSt3setIPN2kc15impl_real__RealENS0_11phylum_lessIS2_EESaIS2_EE5clearEv.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store ptr null, ptr %i.ax, align 8, !tbaa !1347
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !1030
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !1372
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 0, ptr %i.be, align 8, !tbaa !1031
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1347
  invoke void @_ZNSt8_Rb_treeIPN2kc20impl_abstract_phylumES2_St9_IdentityIS2_ENS0_11phylum_lessIS2_EESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, ptr noundef %i.bh)
          to label %_ZNSt3setIPN2kc20impl_abstract_phylumENS0_11phylum_lessIS2_EESaIS2_EE5clearEv.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt3setIPN2kc21impl_voidptr__VoidPtrENS0_11phylum_lessIS2_EESaIS2_EE5clearEv.exit
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  tail call void @__clang_call_terminate(ptr %i.bj) #37
  unreachable

_ZNSt3setIPN2kc20impl_abstract_phylumENS0_11phylum_lessIS2_EESaIS2_EE5clearEv.exit: ; preds = %_ZNSt3setIPN2kc21impl_voidptr__VoidPtrENS0_11phylum_lessIS2_EESaIS2_EE5clearEv.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  store ptr null, ptr %i.bg, align 8, !tbaa !1347
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !1030
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !1372
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 0, ptr %i.bn, align 8, !tbaa !1031
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN2kc15hashtable_level13clear_entriesEv(ptr noundef nonnull align 8 dereferenceable(288) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1350 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !1349 ; 3 uses
  %.not11.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not11.i.i, label %_ZSt8for_eachIN9__gnu_cxx25_Hashtable_const_iteratorIN2kc8hashitemES3_NS2_13hash_hashitemESt9_IdentityIS3_ENS2_11eq_hashitemESaIS3_EEEPFvS3_EET0_T_SD_SC_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  br label %.lr.ph.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
end_hunk_0
