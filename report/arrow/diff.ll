inline.NumInlined: 8589
inline.NumDeleted: 3289
begin_hunk_0_@_ZNSt6vectorIlSaIlEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPlS1_EEmRKl:bb.a

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.o, align 8, !tbaa !408
  store i64 %i.s, ptr %i.d, align 8, !tbaa !408
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !559
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !61

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 8
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ac = load i64, ptr %1, align 8, !tbaa !408
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !408
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
  %broadcast.splatinsert131 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat132 = shufflevector <2 x i64> %broadcast.splatinsert131, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph128
  %index134 = phi i64 [ 0, %vector.ph128 ], [ %index.next136, %vector.body133 ] ; 2 uses
  %i.aj = shl i64 %index134, 3
  %next.gep135 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep135, i64 16
  store <2 x i64> %broadcast.splat132, ptr %next.gep135, align 8, !tbaa !408
  store <2 x i64> %broadcast.splat132, ptr %i.ak, align 8, !tbaa !408
  %index.next136 = add nuw i64 %index134, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next136, %n.vec130
  br i1 %i.al, label %middle.block137, label %vector.body133, !llvm.loop !1264

middle.block137:                                  ; preds = %vector.body133
  %cmp.n138 = icmp eq i64 %i.ag, %n.vec130
  br i1 %cmp.n138, label %_ZSt4fillIPllEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block137
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block137 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i, align 8, !tbaa !408
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPllEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !1267

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

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
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !408
  store <2 x i64> %broadcast.splat, ptr %i.ay, align 8, !tbaa !408
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !1268

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !408
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1269

_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !559
  %i.bb = icmp sgt i64 %i.k, 8
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !61

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i, ptr align 8 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !559
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 8
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i64, ptr %1, align 8, !tbaa !408
  store i64 %i.bd, ptr %.0.i.i.i.i.i, align 8, !tbaa !408
  br label %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !559
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPllEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit69
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
  %broadcast.splatinsert117 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat118 = shufflevector <2 x i64> %broadcast.splatinsert117, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph114
  %index120 = phi i64 [ 0, %vector.ph114 ], [ %index.next122, %vector.body119 ] ; 2 uses
  %i.bm = shl i64 %index120, 3
  %next.gep121 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep121, i64 16
  store <2 x i64> %broadcast.splat118, ptr %next.gep121, align 8, !tbaa !408
  store <2 x i64> %broadcast.splat118, ptr %i.bn, align 8, !tbaa !408
  %index.next122 = add nuw i64 %index120, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next122, %n.vec116
  br i1 %i.bo, label %middle.block123, label %vector.body119, !llvm.loop !1270

middle.block123:                                  ; preds = %vector.body119
  %cmp.n124 = icmp eq i64 %i.bj, %n.vec116
  br i1 %cmp.n124, label %_ZSt4fillIPllEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader154

.lr.ph.i.i.i71.preheader154:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block123
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block123 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader154, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader154 ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i72, align 8, !tbaa !408
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPllEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !1271

bb.q:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8, !tbaa !558   ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 3                 ; 4 uses
  %i.bu = sub nsw i64 1152921504606846975, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #30
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
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #27 ; 5 uses
  %i.bw = getelementptr inbounds i8, ptr %11, i64 %9 ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 3       ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx.i.i.i.i.i75
  %i.by = load i64, ptr %3, align 8, !tbaa !408   ; 2 uses
  %i.bz = add nsw i64 %.idx.i.i.i.i.i75, -8       ; 2 uses
  %i.ca = lshr exact i64 %i.bz, 3
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check141 = icmp ult i64 %i.bz, 24
  br i1 %min.iters.check141, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph142

vector.ph142:                                     ; preds = %bb.s
  %n.vec144 = and i64 %i.cb, 4611686018427387900  ; 3 uses
  %i.cc = shl i64 %n.vec144, 3
  %i.cd = getelementptr i8, ptr %i.bw, i64 %i.cc
  %broadcast.splatinsert145 = insertelement <2 x i64> poison, i64 %i.by, i64 0
  %broadcast.splat146 = shufflevector <2 x i64> %broadcast.splatinsert145, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph142
  %index148 = phi i64 [ 0, %vector.ph142 ], [ %index.next150, %vector.body147 ] ; 2 uses
  %i.ce = shl i64 %index148, 3
  %next.gep149 = getelementptr i8, ptr %i.bw, i64 %i.ce ; 2 uses
  %i.cf = getelementptr i8, ptr %next.gep149, i64 16
  store <2 x i64> %broadcast.splat146, ptr %next.gep149, align 8, !tbaa !408
  store <2 x i64> %broadcast.splat146, ptr %i.cf, align 8, !tbaa !408
  %index.next150 = add nuw i64 %index148, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next150, %n.vec144
  br i1 %i.cg, label %middle.block151, label %vector.body147, !llvm.loop !1272

middle.block151:                                  ; preds = %vector.body147
  %cmp.n152 = icmp eq i64 %i.cb, %n.vec144
  br i1 %cmp.n152, label %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.s, %middle.block151
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.bw, %bb.s ], [ %i.cd, %middle.block151 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i64 %i.by, ptr %.06.i.i.i.i.i.i.i77, align 8, !tbaa !408
  %i.ch = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.ch, %i.bx
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !1273

_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block151
  %i.ci = icmp sgt i64 %9, 8
  br i1 %i.ci, label %bb.t, label %bb.u, !prof !61

bb.t:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %11, ptr align 8 %i.bq, i64 %9, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPlmllET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cj = icmp eq i64 %9, 8
  br i1 %i.cj, label %bb.v, label %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %bb.u
  %i.ck = load i64, ptr %i.bq, align 8, !tbaa !408
  store i64 %i.ck, ptr %11, align 8, !tbaa !408
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit: ; preds = %bb.v, %bb.u, %bb.t
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %2 ; 3 uses
  %i.cm = sub i64 %i.f, %8                        ; 4 uses
  %i.cn = icmp sgt i64 %i.cm, 8
  br i1 %i.cn, label %bb.w, label %bb.x, !prof !61

bb.w:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cl, ptr align 8 %1, i64 %i.cm, i1 false)
  br label %bb.z

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit
  %i.co = icmp eq i64 %i.cm, 8
  br i1 %i.co, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cp = load i64, ptr %1, align 8, !tbaa !408
  store i64 %i.cp, ptr %i.cl, align 8, !tbaa !408
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.cq = getelementptr inbounds i8, ptr %i.cl, i64 %i.cm
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cr = sub i64 %i.e, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.cr) #29
  br label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit

_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit: ; preds = %bb.z, %bb.aa
  store ptr %11, ptr %0, align 8, !tbaa !558
  store ptr %i.cq, ptr %i.c, align 8, !tbaa !559
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %7
  store ptr %i.cs, ptr %i.a, align 8, !tbaa !557
  br label %_ZSt4fillIPllEvT_S1_RKT0_.exit

_ZSt4fillIPllEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block123, %middle.block137, %_ZSt22__uninitialized_move_aIPlS0_SaIlEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.neg = sext i1 %4 to i8                        ; 2 uses
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !544
  %i.d = load ptr, ptr %0, align 8, !tbaa !542    ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = shl nsw i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !542  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !543  ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.n = sub i64 %i.m, %i.f
  %i.o = shl nsw i64 %i.n, 3
  %i.p = zext i32 %i.l to i64                     ; 3 uses
  %i.q = add nsw i64 %i.o, %i.p                   ; 5 uses
  %i.r = sub i64 %i.h, %i.q
  %.not = icmp ult i64 %i.r, %3
  br i1 %.not, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.t = sub i64 %i.m, %i.s
  %i.u = shl nsw i64 %i.t, 3
  %i.v = zext i32 %2 to i64                       ; 4 uses
  %i.w = sub nsw i64 %i.p, %i.v
  %i.x = add i64 %i.w, %i.u                       ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader: ; preds = %bb.c
  %i.z = add nsw i64 %3, %i.p                     ; 3 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.aa, 63
  %i.ac = sdiv i64 %i.z, 64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ac
  %i.ae = and i64 %i.z, -9223372036854775745
  %i.af = icmp ugt i64 %i.ae, -9223372036854775808
  %storemerge.idx.i.i.i = select i1 %i.af, i64 -8, i64 0
  %storemerge.i.i.i = getelementptr inbounds i8, ptr %i.ad, i64 %storemerge.idx.i.i.i
  br label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i:          ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i
  %.024.i.i.i.i.i = phi i64 [ %i.av, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.x, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.515.023.i.i.i.i.i = phi i32 [ %spec.select19.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.l, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.012.022.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.j, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %.sroa.59.021.i.i.i.i.i = phi i32 [ %.sroa.59.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.ab, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.07.020.i.i.i.i.i = phi ptr [ %.sroa.07.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %storemerge.i.i.i, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %i.ag = add i32 %.sroa.515.023.i.i.i.i.i, -1
  %i.ah = icmp eq i32 %.sroa.515.023.i.i.i.i.i, 0 ; 2 uses
  %spec.select.idx.i.i.i.i.i = select i1 %i.ah, i64 -8, i64 0
  %spec.select.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.012.022.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i ; 2 uses
  %spec.select19.i.i.i.i.i = select i1 %i.ah, i32 63, i32 %i.ag ; 2 uses
  %i.ai = zext nneg i32 %spec.select19.i.i.i.i.i to i64
  %i.aj = shl nuw i64 1, %i.ai
  %i.ak = add i32 %.sroa.59.021.i.i.i.i.i, -1
  %i.al = icmp eq i32 %.sroa.59.021.i.i.i.i.i, 0  ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i = select i1 %i.al, i64 -8, i64 0
  %.sroa.07.1.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.020.i.i.i.i.i, i64 %.sroa.07.1.idx.i.i.i.i.i ; 4 uses
  %.sroa.59.1.i.i.i.i.i = select i1 %i.al, i32 63, i32 %i.ak ; 2 uses
  %i.am = zext nneg i32 %.sroa.59.1.i.i.i.i.i to i64
  %i.an = shl nuw i64 1, %i.am                    ; 2 uses
  %i.ao = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !408
  %i.ap = and i64 %i.ao, %i.aj
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.aq = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !408
  %i.ar = or i64 %i.aq, %i.an
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

bb.e:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.as = xor i64 %i.an, -1
  %i.at = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !408
  %i.au = and i64 %i.at, %i.as
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i:      ; preds = %bb.e, %bb.d
  %storemerge.i.i.i.i.i = phi i64 [ %i.ar, %bb.d ], [ %i.au, %bb.e ]
  store i64 %storemerge.i.i.i.i.i, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !408
  %i.av = add nsw i64 %.024.i.i.i.i.i, -1
  %i.aw = icmp sgt i64 %.024.i.i.i.i.i, 1
  br i1 %i.aw, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !1260

_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit: ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i, %bb.c
  %i.ax = add nsw i64 %3, %i.v                    ; 3 uses
  %i.ay = sdiv i64 %i.ax, 64
  %.idx = shl nsw i64 %i.ay, 3
  %i.az = and i64 %i.ax, -9223372036854775745
  %i.ba = icmp ugt i64 %i.az, -9223372036854775808
  %storemerge.idx.i.i.i75 = select i1 %i.ba, i64 -8, i64 0
  %i.bb = add nsw i64 %storemerge.idx.i.i.i75, %.idx ; 2 uses
  %storemerge.i.i.i76 = getelementptr inbounds i8, ptr %1, i64 %i.bb ; 4 uses
  %i.bc = trunc i64 %i.ax to i32
  %i.bd = and i32 %i.bc, 63                       ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.f

bb.f:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %.not26.i.i.i = icmp eq i32 %2, 0
  br i1 %.not26.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bf = shl nsw i64 -1, %i.v                    ; 2 uses
  br i1 %4, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bg = load i64, ptr %1, align 8, !tbaa !408
  %i.bh = or i64 %i.bg, %i.bf
  br label %_ZSt14__fill_bvectorPmjjb.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bi = xor i64 %i.bf, -1
  %i.bj = load i64, ptr %1, align 8, !tbaa !408
  %i.bk = and i64 %i.bj, %i.bi
  br label %_ZSt14__fill_bvectorPmjjb.exit.i.i.i

_ZSt14__fill_bvectorPmjjb.exit.i.i.i:             ; preds = %bb.i, %bb.h
  %storemerge.i.i.i.i = phi i64 [ %i.bk, %bb.i ], [ %i.bh, %bb.h ]
  store i64 %storemerge.i.i.i.i, ptr %1, align 8, !tbaa !408
  %.pre = ptrtoint ptr %i.be to i64
  br label %bb.j

bb.j:                                             ; preds = %_ZSt14__fill_bvectorPmjjb.exit.i.i.i, %bb.f
  %.pre-phi = phi i64 [ %.pre, %_ZSt14__fill_bvectorPmjjb.exit.i.i.i ], [ %i.s, %bb.f ]
  %.0.i.i.i = phi ptr [ %i.be, %_ZSt14__fill_bvectorPmjjb.exit.i.i.i ], [ %1, %bb.f ]
  %i.bl = ptrtoint ptr %storemerge.i.i.i76 to i64
  %i.bm = sub i64 %i.bl, %.pre-phi
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i.i.i, i8 %.neg, i64 %i.bm, i1 false)
  %.not27.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not27.i.i.i, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = sub nuw nsw i32 64, %i.bd
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = lshr i64 -1, %i.bo                      ; 2 uses
  br i1 %4, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bq = load i64, ptr %storemerge.i.i.i76, align 8, !tbaa !408
  %i.br = or i64 %i.bq, %i.bp
  br label %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bs = xor i64 %i.bp, -1
  %i.bt = load i64, ptr %storemerge.i.i.i76, align 8, !tbaa !408
  %i.bu = and i64 %i.bt, %i.bs
  br label %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i

_ZSt14__fill_bvectorPmjjb.exit29.i.i.i:           ; preds = %bb.m, %bb.l
  %storemerge.i28.i.i.i = phi i64 [ %i.bu, %bb.m ], [ %i.br, %bb.l ]
  store i64 %storemerge.i28.i.i.i, ptr %storemerge.i.i.i76, align 8, !tbaa !408
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit

bb.n:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %.not25.i.i.i = icmp eq i32 %2, %i.bd
  br i1 %.not25.i.i.i, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = shl nsw i64 -1, %i.v
  %i.bw = sub nuw nsw i32 64, %i.bd
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = lshr i64 -1, %i.bx
  %i.bz = and i64 %i.by, %i.bv                    ; 2 uses
  br i1 %4, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ca = load i64, ptr %1, align 8, !tbaa !408
  %i.cb = or i64 %i.ca, %i.bz
  br label %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.cc = xor i64 %i.bz, -1
  %i.cd = load i64, ptr %1, align 8, !tbaa !408
  %i.ce = and i64 %i.cd, %i.cc
  br label %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i

_ZSt14__fill_bvectorPmjjb.exit31.i.i.i:           ; preds = %bb.q, %bb.p
  %storemerge.i30.i.i.i = phi i64 [ %i.ce, %bb.q ], [ %i.cb, %bb.p ]
  store i64 %storemerge.i30.i.i.i, ptr %1, align 8, !tbaa !408
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit

_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit:    ; preds = %bb.j, %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i, %bb.n, %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i
end_hunk_0
