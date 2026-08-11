inline.NumInlined: 12
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 85
loop-unroll.NumUnrolled: 85
begin_hunk_0_@_ZN4ncnnL31padding_constant_pack8_int8_sseERKNS_3MatERS0_iiiil:bb.a
  %next.gep241 = getelementptr i8, ptr %.663, i64 %i.dx ; 2 uses
  %i.dy = getelementptr i8, ptr %next.gep241, i64 16
  store <2 x i64> %broadcast.splat238, ptr %next.gep241, align 8, !tbaa !74
  store <2 x i64> %broadcast.splat238, ptr %i.dy, align 8, !tbaa !74
  %index.next242 = add nuw i64 %index240, 4       ; 2 uses
  %i.dz = icmp eq i64 %index.next242, %n.vec236
  br i1 %i.dz, label %middle.block243, label %vector.body239, !llvm.loop !416

middle.block243:                                  ; preds = %vector.body239
  br i1 %cmp.n244, label %._crit_edge, label %scalar.ph233.preheader

scalar.ph233.preheader:                           ; preds = %.preheader, %middle.block243
  %.062.ph = phi i32 [ 0, %.preheader ], [ %i.du, %middle.block243 ]
  %.761.ph = phi ptr [ %.663, %.preheader ], [ %i.dw, %middle.block243 ]
  br label %scalar.ph233

._crit_edge65.split:                              ; preds = %._crit_edge, %.preheader1
  ret void

._crit_edge:                                      ; preds = %scalar.ph233, %middle.block243
  %.lcssa = phi ptr [ %i.dw, %middle.block243 ], [ %i.eb, %scalar.ph233 ]
  %i.ea = add nuw nsw i32 %.03564, 1              ; 2 uses
  %exitcond93.not = icmp eq i32 %i.ea, %2
  br i1 %exitcond93.not, label %._crit_edge65.split, label %.preheader, !llvm.loop !417

scalar.ph233:                                     ; preds = %scalar.ph233.preheader, %scalar.ph233
  %.062 = phi i32 [ %i.ec, %scalar.ph233 ], [ %.062.ph, %scalar.ph233.preheader ]
  %.761 = phi ptr [ %i.eb, %scalar.ph233 ], [ %.761.ph, %scalar.ph233.preheader ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.761, i64 8 ; 2 uses
  store i64 %5, ptr %.761, align 8, !tbaa !74
  %i.ec = add nuw nsw i32 %.062, 1                ; 2 uses
  %exitcond92.not = icmp eq i32 %i.ec, %.44.val
  br i1 %exitcond92.not, label %._crit_edge, label %scalar.ph233, !llvm.loop !418
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Padding_x8612forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8) #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.ncnn::Mat", align 8         ; 14 uses
  %i.e = load i32, ptr %3, align 4, !tbaa !58
  %i.f = load i32, ptr %2, align 4, !tbaa !58
  %i.g = sdiv i32 %i.e, %i.f                      ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 %i.i, ptr %i.b, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 1, ptr %i.c, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i32 0, ptr %i.d, align 4, !tbaa !58
  %i.j = load i32, ptr %0, align 4, !tbaa !58     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.k = load i32, ptr %i.b, align 4, !tbaa !58
  %i.l = call i32 @llvm.smin.i32(i32 %i.k, i32 %i.i) ; 3 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !58
  %i.m = load i32, ptr %i.a, align 4, !tbaa !58   ; 2 uses
  %.not128 = icmp sgt i32 %i.m, %i.l
  br i1 %.not128, label %._crit_edge, label %.noexc42.lr.ph

.noexc42.lr.ph:                                   ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 228
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 52
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 224 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 212 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 216 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 220 ; 3 uses
  %i.ar = sext i32 %i.m to i64
  br label %.noexc42

.noexc42:                                         ; preds = %.noexc42.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %i.as = phi i32 [ %i.l, %.noexc42.lr.ph ], [ %i.akg, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv174 = phi i64 [ %i.ar, %.noexc42.lr.ph ], [ %indvars.iv.next175, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.at = load i32, ptr %i.n, align 4, !tbaa !60, !noalias !419 ; 2 uses
  %i.au = load i32, ptr %i.o, align 8, !tbaa !61, !noalias !419
  %i.av = load i32, ptr %i.p, align 4, !tbaa !62, !noalias !419
  %i.aw = load ptr, ptr %4, align 8, !tbaa !18, !noalias !419
  %i.ax = load i64, ptr %i.q, align 8, !tbaa !20, !noalias !419
  %i.ay = mul i64 %i.ax, %indvars.iv174
  %i.az = load i64, ptr %i.r, align 8, !tbaa !56, !noalias !419 ; 3 uses
  %i.ba = mul i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ba ; 15 uses
  %i.bc = sext i32 %i.at to i64
  %i.bd = sext i32 %i.au to i64
  %i.be = mul nsw i64 %i.bd, %i.bc                ; 2 uses
  %i.bf = mul i64 %i.az, %i.be
  %i.bg = add i64 %i.bf, 15
  %i.bh = and i64 %i.bg, -16
  %i.bi = udiv i64 %i.bh, %i.az
  %i.bj = load i32, ptr %i.s, align 8, !tbaa !63, !noalias !419
  %i.bk = icmp eq i32 %i.bj, 4
  %spec.select = select i1 %i.bk, i64 %i.be, i64 %i.bi
  %i.bl = load float, ptr %i.t, align 4, !tbaa !38
  %i.bm = fptosi float %i.bl to i64               ; 8 uses
  %i.bn = shl i64 %i.bm, 8
  %i.bo = shl i64 %i.bm, 16
  %i.bp = shl i64 %i.bm, 24
  %i.bq = shl i64 %i.bm, 32
  %i.br = shl i64 %i.bm, 40
  %i.bs = shl i64 %i.bm, 48
  %i.bt = shl i64 %i.bm, 56
  %i.bu = or i64 %i.bo, %i.bn
  %i.bv = or i64 %i.bu, %i.bp
  %i.bw = or i64 %i.bv, %i.bq
  %i.bx = or i64 %i.bw, %i.br
  %i.by = or i64 %i.bx, %i.bs
  %i.bz = or i64 %i.by, %i.bt
  %i.ca = or i64 %i.bz, %i.bm                     ; 3 uses
  %i.cb = load i32, ptr %6, align 4, !tbaa !58
  %i.cc = trunc nsw i64 %indvars.iv174 to i32
  %i.cd = sub nsw i32 %i.cc, %i.cb                ; 3 uses
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc42
  %i.cf = load i32, ptr %7, align 4, !tbaa !58
  %.not33 = icmp slt i32 %i.cd, %i.cf
  br i1 %.not33, label %.noexc43, label %bb.d

bb.d:                                             ; preds = %bb.c, %.noexc42
  %i.cg = trunc i64 %spec.select to i32
  %i.ch = mul i32 %i.av, %i.cg                    ; 3 uses
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %.lr.ph.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.ch to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.ch, 4
  br i1 %min.iters.check, label %.lr.ph.preheader818, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ca, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.cj, align 8, !tbaa !74
  store <2 x i64> %broadcast.splat, ptr %i.ck, align 8, !tbaa !74
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !422

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %_ZN4ncnn3MatD2Ev.exit, label %.lr.ph.preheader818

.lr.ph.preheader818:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader818, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader818 ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv
  store i64 %i.ca, ptr %i.cm, align 8, !tbaa !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN4ncnn3MatD2Ev.exit, label %.lr.ph, !llvm.loop !423

.noexc43:                                         ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !424)
  %i.cn = load i32, ptr %i.u, align 4, !tbaa !60, !noalias !424 ; 62 uses
  %i.co = load i32, ptr %i.v, align 8, !tbaa !61, !noalias !424 ; 6 uses
  %i.cp = load i32, ptr %i.w, align 4, !tbaa !62, !noalias !424
  %i.cq = load ptr, ptr %8, align 8, !tbaa !18, !noalias !424 ; 4 uses
  %i.cr = ptrtoaddr ptr %i.cq to i64              ; 5 uses
  %i.cs = load i64, ptr %i.x, align 8, !tbaa !20, !noalias !424
  %i.ct = zext nneg i32 %i.cd to i64
  %i.cu = mul i64 %i.cs, %i.ct
  %i.cv = load i64, ptr %i.y, align 8, !tbaa !56, !noalias !424 ; 4 uses
  %i.cw = mul i64 %i.cu, %i.cv                    ; 8 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cw ; 17 uses
  %i.cy = load i32, ptr %i.z, align 8, !tbaa !57, !noalias !424
  %i.cz = load ptr, ptr %i.aa, align 8, !tbaa !17, !noalias !424
  store ptr %i.cx, ptr %9, align 8, !tbaa !18
  store ptr null, ptr %i.ab, align 8, !tbaa !11
  store i64 %i.cv, ptr %i.ac, align 8, !tbaa !56
  store i32 %i.cy, ptr %i.ad, align 8, !tbaa !57
  store ptr %i.cz, ptr %i.ae, align 8, !tbaa !17
  store i32 %i.cn, ptr %i.ag, align 4, !tbaa !60
  store i32 %i.co, ptr %i.ah, align 8, !tbaa !61
  store i32 1, ptr %i.ai, align 4, !tbaa !62
  store i32 %i.cp, ptr %i.aj, align 8, !tbaa !59
  %i.da = sext i32 %i.cn to i64                   ; 11 uses
  %i.db = sext i32 %i.co to i64
  %i.dc = mul nsw i64 %i.db, %i.da                ; 2 uses
  %i.dd = mul i64 %i.cv, %i.dc
  %i.de = add i64 %i.dd, 15
  %i.df = and i64 %i.de, -16
  %i.dg = udiv i64 %i.df, %i.cv
  store i64 %i.dg, ptr %i.ak, align 8, !tbaa !20
  %i.dh = load i32, ptr %i.al, align 8, !tbaa !63, !noalias !424 ; 2 uses
  %i.di = add nsw i32 %i.dh, -1
  store i32 %i.di, ptr %i.af, align 8, !tbaa !63, !alias.scope !424
  %i.dj = icmp eq i32 %i.dh, 4
  br i1 %i.dj, label %bb.e, label %_ZNK4ncnn3Mat7channelEi.exit

bb.e:                                             ; preds = %.noexc43
  store i64 %i.dc, ptr %i.ak, align 8, !tbaa !20, !alias.scope !424
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %bb.e, %.noexc43
  %i.dk = load i32, ptr %i.am, align 8, !tbaa !64 ; 2 uses
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %thread-pre-split, label %bb.f

thread-pre-split:                                 ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.dm = load i32, ptr %i.an, align 8, !tbaa !48
  %i.dn = load i32, ptr %i.ao, align 4, !tbaa !49
  %i.do = load i32, ptr %i.ap, align 8, !tbaa !50
  %i.dp = load i32, ptr %i.aq, align 4, !tbaa !51
  call fastcc void @_ZN4ncnnL31padding_constant_pack8_int8_sseERKNS_3MatERS0_iiiil(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr %i.bb, i32 %i.at, i32 noundef %i.dm, i32 noundef %i.dn, i32 noundef %i.do, i32 noundef %i.dp, i64 noundef %i.ca)
  %.pr = load i32, ptr %i.am, align 8, !tbaa !64
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split, %_ZNK4ncnn3Mat7channelEi.exit
  %i.dq = phi i32 [ %.pr, %thread-pre-split ], [ %i.dk, %_ZNK4ncnn3Mat7channelEi.exit ]
  switch i32 %i.dq, label %_ZN4ncnn3MatD2Ev.exit34 [
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.dr = load i32, ptr %i.an, align 8, !tbaa !48 ; 5 uses
  %i.ds = load i32, ptr %i.ao, align 4, !tbaa !49 ; 2 uses
  %i.dt = load i32, ptr %i.ap, align 8, !tbaa !50 ; 12 uses
  %i.du = load i32, ptr %i.aq, align 4, !tbaa !51 ; 18 uses
  %i.dv = icmp sgt i32 %i.dr, 0
  br i1 %i.dv, label %.preheader9.lr.ph.i, label %.preheader6.i

.preheader9.lr.ph.i:                              ; preds = %bb.g
  %i.dw = icmp sgt i32 %i.dt, 0
  %i.dx = icmp sgt i32 %i.cn, 0                   ; 2 uses
  %i.dy = icmp sgt i32 %i.du, 0                   ; 3 uses
  br i1 %i.dw, label %.preheader9.us.i.preheader, label %.preheader9.lr.ph.split.i

.preheader9.us.i.preheader:                       ; preds = %.preheader9.lr.ph.i
  %i.dz = add i64 %i.cw, %i.cr
  %i.ea = zext nneg i32 %i.dt to i64              ; 2 uses
  %min.iters.check423 = icmp ult i32 %i.dt, 4
  %n.vec425 = and i64 %i.ea, 2147483644           ; 4 uses
  %i.eb = trunc nuw nsw i64 %n.vec425 to i32
  %i.ec = shl nuw nsw i64 %n.vec425, 3
  %cmp.n433 = icmp eq i64 %n.vec425, %i.ea
  %i.ed = zext nneg i32 %i.cn to i64              ; 2 uses
  %min.iters.check407 = icmp ult i32 %i.cn, 8
  %n.vec409 = and i64 %i.ed, 2147483644           ; 4 uses
  %i.ee = trunc nuw nsw i64 %n.vec409 to i32
  %i.ef = shl nuw nsw i64 %n.vec409, 3            ; 2 uses
  %i.eg = getelementptr i8, ptr %i.cx, i64 %i.ef  ; 2 uses
  %cmp.n418 = icmp eq i64 %n.vec409, %i.ed
  %i.eh = zext nneg i32 %i.du to i64              ; 2 uses
  %min.iters.check390 = icmp ult i32 %i.du, 4
  %n.vec392 = and i64 %i.eh, 2147483644           ; 4 uses
  %i.ei = trunc nuw nsw i64 %n.vec392 to i32
  %i.ej = shl nuw nsw i64 %n.vec392, 3
  %cmp.n400 = icmp eq i64 %n.vec392, %i.eh
  br label %.preheader9.us.i

.preheader9.us.i:                                 ; preds = %.preheader9.us.i.preheader, %._crit_edge.us.i
  %.07123.us.i = phi i32 [ %i.fr, %._crit_edge.us.i ], [ 0, %.preheader9.us.i.preheader ]
  %.07222.us.i = phi ptr [ %.3.lcssa.us.i, %._crit_edge.us.i ], [ %i.bb, %.preheader9.us.i.preheader ] ; 3 uses
  %.pre131.i = load i64, ptr %i.cx, align 8, !tbaa !74 ; 2 uses
  br i1 %min.iters.check423, label %scalar.ph422.preheader, label %vector.ph424

vector.ph424:                                     ; preds = %.preheader9.us.i
  %i.ek = getelementptr i8, ptr %.07222.us.i, i64 %i.ec ; 2 uses
  %broadcast.splatinsert426 = insertelement <2 x i64> poison, i64 %.pre131.i, i64 0
  %broadcast.splat427 = shufflevector <2 x i64> %broadcast.splatinsert426, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body428

vector.body428:                                   ; preds = %vector.body428, %vector.ph424
  %index429 = phi i64 [ 0, %vector.ph424 ], [ %index.next431, %vector.body428 ] ; 2 uses
  %i.el = shl i64 %index429, 3
  %next.gep430 = getelementptr i8, ptr %.07222.us.i, i64 %i.el ; 2 uses
  %i.em = getelementptr i8, ptr %next.gep430, i64 16
  store <2 x i64> %broadcast.splat427, ptr %next.gep430, align 8, !tbaa !74
  store <2 x i64> %broadcast.splat427, ptr %i.em, align 8, !tbaa !74
  %index.next431 = add nuw i64 %index429, 4       ; 2 uses
  %i.en = icmp eq i64 %index.next431, %n.vec425
  br i1 %i.en, label %middle.block432, label %vector.body428, !llvm.loop !427

middle.block432:                                  ; preds = %vector.body428
  br i1 %cmp.n433, label %..preheader8_crit_edge.us.i, label %scalar.ph422.preheader

scalar.ph422.preheader:                           ; preds = %.preheader9.us.i, %middle.block432
  %.06911.us.i.ph = phi i32 [ 0, %.preheader9.us.i ], [ %i.eb, %middle.block432 ]
  %.110.us.i.ph = phi ptr [ %.07222.us.i, %.preheader9.us.i ], [ %i.ek, %middle.block432 ]
  br label %scalar.ph422

scalar.ph422:                                     ; preds = %scalar.ph422.preheader, %scalar.ph422
  %.06911.us.i = phi i32 [ %i.ep, %scalar.ph422 ], [ %.06911.us.i.ph, %scalar.ph422.preheader ]
  %.110.us.i = phi ptr [ %i.eo, %scalar.ph422 ], [ %.110.us.i.ph, %scalar.ph422.preheader ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.110.us.i, i64 8 ; 2 uses
  store i64 %.pre131.i, ptr %.110.us.i, align 8, !tbaa !74
  %i.ep = add nuw nsw i32 %.06911.us.i, 1         ; 2 uses
  %exitcond119.not.i = icmp eq i32 %i.ep, %i.dt
  br i1 %exitcond119.not.i, label %..preheader8_crit_edge.us.i, label %scalar.ph422, !llvm.loop !428

.lr.ph15.us.i:                                    ; preds = %.lr.ph15.us.i.prol.loopexit, %.lr.ph15.us.i
  %.06814.us.i = phi i32 [ %i.fo, %.lr.ph15.us.i ], [ %.06814.us.i.unr, %.lr.ph15.us.i.prol.loopexit ]
  %.07013.us.i = phi ptr [ %i.fl, %.lr.ph15.us.i ], [ %.07013.us.i.unr, %.lr.ph15.us.i.prol.loopexit ] ; 9 uses
  %.212.us.i = phi ptr [ %i.fn, %.lr.ph15.us.i ], [ %.212.us.i.unr, %.lr.ph15.us.i.prol.loopexit ] ; 9 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.07013.us.i, i64 8
  %i.er = load i64, ptr %.07013.us.i, align 8, !tbaa !74
  %i.es = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 8
  store i64 %i.er, ptr %.212.us.i, align 8, !tbaa !74
  %i.et = getelementptr inbounds nuw i8, ptr %.07013.us.i, i64 16
  %i.eu = load i64, ptr %i.eq, align 8, !tbaa !74
  %i.ev = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 16
  store i64 %i.eu, ptr %i.es, align 8, !tbaa !74
  %i.ew = getelementptr inbounds nuw i8, ptr %.07013.us.i, i64 24
  %i.ex = load i64, ptr %i.et, align 8, !tbaa !74
  %i.ey = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 24
  store i64 %i.ex, ptr %i.ev, align 8, !tbaa !74
  %i.ez = getelementptr inbounds nuw i8, ptr %.07013.us.i, i64 32
  %i.fa = load i64, ptr %i.ew, align 8, !tbaa !74
  %i.fb = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 32
  store i64 %i.fa, ptr %i.ey, align 8, !tbaa !74
  %i.fc = getelementptr inbounds nuw i8, ptr %.07013.us.i, i64 40
  %i.fd = load i64, ptr %i.ez, align 8, !tbaa !74
  %i.fe = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 40
  store i64 %i.fd, ptr %i.fb, align 8, !tbaa !74
  %i.ff = getelementptr inbounds nuw i8, ptr %.07013.us.i, i64 48
  %i.fg = load i64, ptr %i.fc, align 8, !tbaa !74
  %i.fh = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 48
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !74
  %i.fi = getelementptr inbounds nuw i8, ptr %.07013.us.i, i64 56
  %i.fj = load i64, ptr %i.ff, align 8, !tbaa !74
  %i.fk = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 56
  store i64 %i.fj, ptr %i.fh, align 8, !tbaa !74
  %i.fl = getelementptr inbounds nuw i8, ptr %.07013.us.i, i64 64 ; 2 uses
  %i.fm = load i64, ptr %i.fi, align 8, !tbaa !74
  %i.fn = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 64 ; 2 uses
  store i64 %i.fm, ptr %i.fk, align 8, !tbaa !74
  %i.fo = add nuw nsw i32 %.06814.us.i, 8         ; 2 uses
  %exitcond120.not.i.7 = icmp eq i32 %i.fo, %i.cn
  br i1 %exitcond120.not.i.7, label %.preheader7.us.i, label %.lr.ph15.us.i, !llvm.loop !429

scalar.ph389:                                     ; preds = %scalar.ph389.preheader, %scalar.ph389
  %.06719.us.i = phi i32 [ %i.fq, %scalar.ph389 ], [ %.06719.us.i.ph, %scalar.ph389.preheader ]
  %.318.us.i = phi ptr [ %i.fp, %scalar.ph389 ], [ %.318.us.i.ph, %scalar.ph389.preheader ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.318.us.i, i64 8 ; 2 uses
  store i64 %.pre132.i, ptr %.318.us.i, align 8, !tbaa !74
  %i.fq = add nuw nsw i32 %.06719.us.i, 1         ; 2 uses
  %exitcond121.not.i = icmp eq i32 %i.fq, %i.du
  br i1 %exitcond121.not.i, label %._crit_edge.us.i, label %scalar.ph389, !llvm.loop !430

._crit_edge.us.i:                                 ; preds = %scalar.ph389, %middle.block399, %.preheader7.us.i
  %.3.lcssa.us.i = phi ptr [ %.2.lcssa.us.i, %.preheader7.us.i ], [ %i.gh, %middle.block399 ], [ %i.fp, %scalar.ph389 ] ; 2 uses
  %i.fr = add nuw nsw i32 %.07123.us.i, 1         ; 2 uses
  %exitcond122.not.i = icmp eq i32 %i.fr, %i.dr
  br i1 %exitcond122.not.i, label %.preheader6.i, label %.preheader9.us.i, !llvm.loop !431

.preheader7.us.i:                                 ; preds = %.lr.ph15.us.i.prol.loopexit, %.lr.ph15.us.i, %middle.block417, %..preheader8_crit_edge.us.i
  %.2.lcssa.us.i = phi ptr [ %.lcssa285, %..preheader8_crit_edge.us.i ], [ %i.fu, %middle.block417 ], [ %.lcssa852.unr.a, %.lr.ph15.us.i.prol.loopexit ], [ %i.fn, %.lr.ph15.us.i ] ; 4 uses
  %.070.lcssa.us.i = phi ptr [ %i.cx, %..preheader8_crit_edge.us.i ], [ %i.eg, %middle.block417 ], [ %.lcssa853.unr.a, %.lr.ph15.us.i.prol.loopexit ], [ %i.fl, %.lr.ph15.us.i ]
  br i1 %i.dy, label %.lr.ph20.us.i, label %._crit_edge.us.i

..preheader8_crit_edge.us.i:                      ; preds = %scalar.ph422, %middle.block432
  %.lcssa285 = phi ptr [ %i.ek, %middle.block432 ], [ %i.eo, %scalar.ph422 ] ; 5 uses
  br i1 %i.dx, label %.lr.ph15.us.i.preheader, label %.preheader7.us.i

.lr.ph15.us.i.preheader:                          ; preds = %..preheader8_crit_edge.us.i
  %i.fs = ptrtoaddr ptr %.lcssa285 to i64
  %i.ft = sub i64 %i.dz, %i.fs
  %diff.check405 = icmp ugt i64 %i.ft, -32
  %or.cond = select i1 %min.iters.check407, i1 true, i1 %diff.check405
  br i1 %or.cond, label %.lr.ph15.us.i.preheader807, label %vector.ph408

vector.ph408:                                     ; preds = %.lr.ph15.us.i.preheader
  %i.fu = getelementptr i8, ptr %.lcssa285, i64 %i.ef ; 2 uses
  br label %vector.body410

vector.body410:                                   ; preds = %vector.body410, %vector.ph408
  %index411 = phi i64 [ 0, %vector.ph408 ], [ %index.next416, %vector.body410 ] ; 2 uses
  %i.fv = shl i64 %index411, 3                    ; 2 uses
  %next.gep412 = getelementptr i8, ptr %i.cx, i64 %i.fv ; 2 uses
  %next.gep413 = getelementptr i8, ptr %.lcssa285, i64 %i.fv ; 2 uses
  %i.fw = getelementptr i8, ptr %next.gep412, i64 16
  %wide.load414 = load <2 x i64>, ptr %next.gep412, align 8, !tbaa !74
  %wide.load415 = load <2 x i64>, ptr %i.fw, align 8, !tbaa !74
  %i.fx = getelementptr i8, ptr %next.gep413, i64 16
  store <2 x i64> %wide.load414, ptr %next.gep413, align 8, !tbaa !74
end_hunk_0
begin_hunk_1_@_ZNK4ncnn11Padding_x8612forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a
  %.891.i = phi ptr [ %.4.lcssa.i, %.preheader2.lr.ph.i ], [ %.11.lcssa.i, %._crit_edge89.i ] ; 4 uses
  br i1 %i.lj, label %.lr.ph78.preheader.i, label %.preheader1.i

.lr.ph78.preheader.i:                             ; preds = %.preheader2.i
  %.pre136.i = load i64, ptr %i.lh, align 8, !tbaa !74 ; 2 uses
  br i1 %min.iters.check328, label %.lr.ph78.i.preheader, label %vector.ph329

vector.ph329:                                     ; preds = %.lr.ph78.preheader.i
  %i.nv = getelementptr i8, ptr %.891.i, i64 %i.lq ; 2 uses
  %broadcast.splatinsert331 = insertelement <2 x i64> poison, i64 %.pre136.i, i64 0
  %broadcast.splat332 = shufflevector <2 x i64> %broadcast.splatinsert331, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body333

vector.body333:                                   ; preds = %vector.body333, %vector.ph329
  %index334 = phi i64 [ 0, %vector.ph329 ], [ %index.next336, %vector.body333 ] ; 2 uses
  %i.nw = shl i64 %index334, 3
  %next.gep335 = getelementptr i8, ptr %.891.i, i64 %i.nw ; 2 uses
  %i.nx = getelementptr i8, ptr %next.gep335, i64 16
  store <2 x i64> %broadcast.splat332, ptr %next.gep335, align 8, !tbaa !74
  store <2 x i64> %broadcast.splat332, ptr %i.nx, align 8, !tbaa !74
  %index.next336 = add nuw i64 %index334, 4       ; 2 uses
  %i.ny = icmp eq i64 %index.next336, %n.vec330
  br i1 %i.ny, label %middle.block337, label %vector.body333, !llvm.loop !453

middle.block337:                                  ; preds = %vector.body333
  br i1 %cmp.n338, label %.preheader1.i, label %.lr.ph78.i.preheader

.lr.ph78.i.preheader:                             ; preds = %.lr.ph78.preheader.i, %middle.block337
  %.06077.i.ph = phi i32 [ 0, %.lr.ph78.preheader.i ], [ %i.lp, %middle.block337 ]
  %.976.i.ph = phi ptr [ %.891.i, %.lr.ph78.preheader.i ], [ %i.nv, %middle.block337 ]
  br label %.lr.ph78.i

.preheader1.i:                                    ; preds = %.lr.ph78.i, %middle.block337, %.preheader2.i
  %.9.lcssa.i = phi ptr [ %.891.i, %.preheader2.i ], [ %i.nv, %middle.block337 ], [ %i.ol, %.lr.ph78.i ] ; 5 uses
  %.9.lcssa.i311 = ptrtoaddr ptr %.9.lcssa.i to i64
  br i1 %i.lk, label %.lr.ph83.i.preheader, label %.preheader.i

.lr.ph83.i.preheader:                             ; preds = %.preheader1.i
  %.reass = add i64 %.9.lcssa.i311, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  %or.cond999 = select i1 %min.iters.check313, i1 true, i1 %diff.check
  br i1 %or.cond999, label %.lr.ph83.i.preheader805, label %vector.ph314

vector.ph314:                                     ; preds = %.lr.ph83.i.preheader
  %i.nz = getelementptr i8, ptr %.9.lcssa.i, i64 %i.lt ; 2 uses
  br label %vector.body316

vector.body316:                                   ; preds = %vector.body316, %vector.ph314
  %index317 = phi i64 [ 0, %vector.ph314 ], [ %index.next321, %vector.body316 ] ; 2 uses
  %i.oa = shl i64 %index317, 3                    ; 2 uses
  %next.gep318 = getelementptr i8, ptr %i.lh, i64 %i.oa ; 2 uses
  %next.gep319 = getelementptr i8, ptr %.9.lcssa.i, i64 %i.oa ; 2 uses
  %i.ob = getelementptr i8, ptr %next.gep318, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep318, align 8, !tbaa !74
  %wide.load320 = load <2 x i64>, ptr %i.ob, align 8, !tbaa !74
  %i.oc = getelementptr i8, ptr %next.gep319, i64 16
  store <2 x i64> %wide.load, ptr %next.gep319, align 8, !tbaa !74
  store <2 x i64> %wide.load320, ptr %i.oc, align 8, !tbaa !74
  %index.next321 = add nuw i64 %index317, 4       ; 2 uses
  %i.od = icmp eq i64 %index.next321, %n.vec315
  br i1 %i.od, label %middle.block322, label %vector.body316, !llvm.loop !454

middle.block322:                                  ; preds = %vector.body316
  br i1 %cmp.n323, label %.preheader.i, label %.lr.ph83.i.preheader805

.lr.ph83.i.preheader805:                          ; preds = %.lr.ph83.i.preheader, %middle.block322
  %.05982.i.ph = phi i32 [ %i.ls, %middle.block322 ], [ 0, %.lr.ph83.i.preheader ] ; 4 uses
  %.06181.i.ph = phi ptr [ %i.lu, %middle.block322 ], [ %i.lh, %.lr.ph83.i.preheader ] ; 2 uses
  %.1080.i.ph = phi ptr [ %i.nz, %middle.block322 ], [ %.9.lcssa.i, %.lr.ph83.i.preheader ] ; 2 uses
  %i.oe = sub i32 %i.cn, %.05982.i.ph
  %xtraiter912 = and i32 %i.oe, 7                 ; 2 uses
  %lcmp.mod913.not = icmp eq i32 %xtraiter912, 0
  br i1 %lcmp.mod913.not, label %.lr.ph83.i.prol.loopexit, label %.lr.ph83.i.prol

.lr.ph83.i.prol:                                  ; preds = %.lr.ph83.i.preheader805, %.lr.ph83.i.prol
  %.05982.i.prol = phi i32 [ %i.oi, %.lr.ph83.i.prol ], [ %.05982.i.ph, %.lr.ph83.i.preheader805 ]
  %.06181.i.prol = phi ptr [ %i.of, %.lr.ph83.i.prol ], [ %.06181.i.ph, %.lr.ph83.i.preheader805 ] ; 2 uses
  %.1080.i.prol = phi ptr [ %i.oh, %.lr.ph83.i.prol ], [ %.1080.i.ph, %.lr.ph83.i.preheader805 ] ; 2 uses
  %prol.iter914 = phi i32 [ %prol.iter914.next, %.lr.ph83.i.prol ], [ 0, %.lr.ph83.i.preheader805 ]
  %i.of = getelementptr inbounds nuw i8, ptr %.06181.i.prol, i64 8 ; 3 uses
  %i.og = load i64, ptr %.06181.i.prol, align 8, !tbaa !74
  %i.oh = getelementptr inbounds nuw i8, ptr %.1080.i.prol, i64 8 ; 3 uses
  store i64 %i.og, ptr %.1080.i.prol, align 8, !tbaa !74
  %i.oi = add nuw nsw i32 %.05982.i.prol, 1       ; 2 uses
  %prol.iter914.next = add i32 %prol.iter914, 1   ; 2 uses
  %prol.iter914.cmp.not = icmp eq i32 %prol.iter914.next, %xtraiter912
  br i1 %prol.iter914.cmp.not, label %.lr.ph83.i.prol.loopexit, label %.lr.ph83.i.prol, !llvm.loop !455

.lr.ph83.i.prol.loopexit:                         ; preds = %.lr.ph83.i.prol, %.lr.ph83.i.preheader805
  %.lcssa861.unr = phi ptr [ poison, %.lr.ph83.i.preheader805 ], [ %i.of, %.lr.ph83.i.prol ]
  %.lcssa860.unr = phi ptr [ poison, %.lr.ph83.i.preheader805 ], [ %i.oh, %.lr.ph83.i.prol ]
  %.05982.i.unr = phi i32 [ %.05982.i.ph, %.lr.ph83.i.preheader805 ], [ %i.oi, %.lr.ph83.i.prol ]
  %.06181.i.unr = phi ptr [ %.06181.i.ph, %.lr.ph83.i.preheader805 ], [ %i.of, %.lr.ph83.i.prol ]
  %.1080.i.unr = phi ptr [ %.1080.i.ph, %.lr.ph83.i.preheader805 ], [ %i.oh, %.lr.ph83.i.prol ]
  %i.oj = sub i32 %.05982.i.ph, %i.cn
  %i.ok = icmp ugt i32 %i.oj, -8
  br i1 %i.ok, label %.preheader.i, label %.lr.ph83.i

.lr.ph78.i:                                       ; preds = %.lr.ph78.i.preheader, %.lr.ph78.i
  %.06077.i = phi i32 [ %i.om, %.lr.ph78.i ], [ %.06077.i.ph, %.lr.ph78.i.preheader ]
  %.976.i = phi ptr [ %i.ol, %.lr.ph78.i ], [ %.976.i.ph, %.lr.ph78.i.preheader ] ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.976.i, i64 8 ; 2 uses
  store i64 %.pre136.i, ptr %.976.i, align 8, !tbaa !74
  %i.om = add nuw nsw i32 %.06077.i, 1            ; 2 uses
  %exitcond127.not.i = icmp eq i32 %i.om, %i.dt
  br i1 %exitcond127.not.i, label %.preheader1.i, label %.lr.ph78.i, !llvm.loop !456

.preheader.i:                                     ; preds = %.lr.ph83.i.prol.loopexit, %.lr.ph83.i, %middle.block322, %.preheader1.i
  %.10.lcssa.i = phi ptr [ %.9.lcssa.i, %.preheader1.i ], [ %i.nz, %middle.block322 ], [ %.lcssa860.unr, %.lr.ph83.i.prol.loopexit ], [ %i.pp, %.lr.ph83.i ] ; 4 uses
  %.061.lcssa.i = phi ptr [ %i.lh, %.preheader1.i ], [ %i.lu, %middle.block322 ], [ %.lcssa861.unr, %.lr.ph83.i.prol.loopexit ], [ %i.pn, %.lr.ph83.i ]
  br i1 %i.ll, label %.lr.ph88.i, label %._crit_edge89.i

.lr.ph88.i:                                       ; preds = %.preheader.i
  %i.on = getelementptr inbounds i8, ptr %.061.lcssa.i, i64 -8
  %.pre137.i = load i64, ptr %i.on, align 8, !tbaa !74 ; 2 uses
  br i1 %min.iters.check298, label %scalar.ph297.preheader, label %vector.ph299

vector.ph299:                                     ; preds = %.lr.ph88.i
  %i.oo = getelementptr i8, ptr %.10.lcssa.i, i64 %i.lx ; 2 uses
  %broadcast.splatinsert301 = insertelement <2 x i64> poison, i64 %.pre137.i, i64 0
  %broadcast.splat302 = shufflevector <2 x i64> %broadcast.splatinsert301, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body303

vector.body303:                                   ; preds = %vector.body303, %vector.ph299
  %index304 = phi i64 [ 0, %vector.ph299 ], [ %index.next305, %vector.body303 ] ; 2 uses
  %i.op = shl i64 %index304, 3
  %next.gep = getelementptr i8, ptr %.10.lcssa.i, i64 %i.op ; 2 uses
  %i.oq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat302, ptr %next.gep, align 8, !tbaa !74
  store <2 x i64> %broadcast.splat302, ptr %i.oq, align 8, !tbaa !74
  %index.next305 = add nuw i64 %index304, 4       ; 2 uses
  %i.or = icmp eq i64 %index.next305, %n.vec300
  br i1 %i.or, label %middle.block306, label %vector.body303, !llvm.loop !457

middle.block306:                                  ; preds = %vector.body303
  br i1 %cmp.n307, label %._crit_edge89.i, label %scalar.ph297.preheader

scalar.ph297.preheader:                           ; preds = %.lr.ph88.i, %middle.block306
  %.087.i.ph = phi i32 [ 0, %.lr.ph88.i ], [ %i.lw, %middle.block306 ]
  %.1186.i.ph = phi ptr [ %.10.lcssa.i, %.lr.ph88.i ], [ %i.oo, %middle.block306 ]
  br label %scalar.ph297

.lr.ph83.i:                                       ; preds = %.lr.ph83.i.prol.loopexit, %.lr.ph83.i
  %.05982.i = phi i32 [ %i.pq, %.lr.ph83.i ], [ %.05982.i.unr, %.lr.ph83.i.prol.loopexit ]
  %.06181.i = phi ptr [ %i.pn, %.lr.ph83.i ], [ %.06181.i.unr, %.lr.ph83.i.prol.loopexit ] ; 9 uses
  %.1080.i = phi ptr [ %i.pp, %.lr.ph83.i ], [ %.1080.i.unr, %.lr.ph83.i.prol.loopexit ] ; 9 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.06181.i, i64 8
  %i.ot = load i64, ptr %.06181.i, align 8, !tbaa !74
  %i.ou = getelementptr inbounds nuw i8, ptr %.1080.i, i64 8
  store i64 %i.ot, ptr %.1080.i, align 8, !tbaa !74
  %i.ov = getelementptr inbounds nuw i8, ptr %.06181.i, i64 16
  %i.ow = load i64, ptr %i.os, align 8, !tbaa !74
  %i.ox = getelementptr inbounds nuw i8, ptr %.1080.i, i64 16
  store i64 %i.ow, ptr %i.ou, align 8, !tbaa !74
  %i.oy = getelementptr inbounds nuw i8, ptr %.06181.i, i64 24
  %i.oz = load i64, ptr %i.ov, align 8, !tbaa !74
  %i.pa = getelementptr inbounds nuw i8, ptr %.1080.i, i64 24
  store i64 %i.oz, ptr %i.ox, align 8, !tbaa !74
  %i.pb = getelementptr inbounds nuw i8, ptr %.06181.i, i64 32
  %i.pc = load i64, ptr %i.oy, align 8, !tbaa !74
  %i.pd = getelementptr inbounds nuw i8, ptr %.1080.i, i64 32
  store i64 %i.pc, ptr %i.pa, align 8, !tbaa !74
  %i.pe = getelementptr inbounds nuw i8, ptr %.06181.i, i64 40
  %i.pf = load i64, ptr %i.pb, align 8, !tbaa !74
  %i.pg = getelementptr inbounds nuw i8, ptr %.1080.i, i64 40
  store i64 %i.pf, ptr %i.pd, align 8, !tbaa !74
  %i.ph = getelementptr inbounds nuw i8, ptr %.06181.i, i64 48
  %i.pi = load i64, ptr %i.pe, align 8, !tbaa !74
  %i.pj = getelementptr inbounds nuw i8, ptr %.1080.i, i64 48
  store i64 %i.pi, ptr %i.pg, align 8, !tbaa !74
  %i.pk = getelementptr inbounds nuw i8, ptr %.06181.i, i64 56
  %i.pl = load i64, ptr %i.ph, align 8, !tbaa !74
  %i.pm = getelementptr inbounds nuw i8, ptr %.1080.i, i64 56
  store i64 %i.pl, ptr %i.pj, align 8, !tbaa !74
  %i.pn = getelementptr inbounds nuw i8, ptr %.06181.i, i64 64 ; 2 uses
  %i.po = load i64, ptr %i.pk, align 8, !tbaa !74
  %i.pp = getelementptr inbounds nuw i8, ptr %.1080.i, i64 64 ; 2 uses
  store i64 %i.po, ptr %i.pm, align 8, !tbaa !74
  %i.pq = add nuw nsw i32 %.05982.i, 8            ; 2 uses
  %exitcond128.not.i.7 = icmp eq i32 %i.pq, %i.cn
  br i1 %exitcond128.not.i.7, label %.preheader.i, label %.lr.ph83.i, !llvm.loop !458

._crit_edge89.i:                                  ; preds = %scalar.ph297, %middle.block306, %.preheader.i
  %.11.lcssa.i = phi ptr [ %.10.lcssa.i, %.preheader.i ], [ %i.oo, %middle.block306 ], [ %i.ps, %scalar.ph297 ]
  %i.pr = add nuw nsw i32 %.06292.i, 1            ; 2 uses
  %exitcond130.not.i = icmp eq i32 %i.pr, %i.ds
  br i1 %exitcond130.not.i, label %_ZN4ncnn3MatD2Ev.exit34, label %.preheader2.i, !llvm.loop !459

scalar.ph297:                                     ; preds = %scalar.ph297.preheader, %scalar.ph297
  %.087.i = phi i32 [ %i.pt, %scalar.ph297 ], [ %.087.i.ph, %scalar.ph297.preheader ]
  %.1186.i = phi ptr [ %i.ps, %scalar.ph297 ], [ %.1186.i.ph, %scalar.ph297.preheader ] ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.1186.i, i64 8 ; 2 uses
  store i64 %.pre137.i, ptr %.1186.i, align 8, !tbaa !74
  %i.pt = add nuw nsw i32 %.087.i, 1              ; 2 uses
  %exitcond129.not.i = icmp eq i32 %i.pt, %i.du
  br i1 %exitcond129.not.i, label %._crit_edge89.i, label %scalar.ph297, !llvm.loop !460

bb.h:                                             ; preds = %bb.f
  %i.pu = load i32, ptr %i.an, align 8, !tbaa !48 ; 9 uses
  %i.pv = load i32, ptr %i.ao, align 4, !tbaa !49 ; 3 uses
  %i.pw = load i32, ptr %i.ap, align 8, !tbaa !50 ; 12 uses
  %i.px = load i32, ptr %i.aq, align 4, !tbaa !51 ; 9 uses
  %i.py = mul i32 %i.pu, %i.cn
  %i.pz = sext i32 %i.py to i64                   ; 6 uses
  %i.qa = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.pz ; 5 uses
  %i.qb = icmp sgt i32 %i.pu, 0
  br i1 %i.qb, label %.preheader9.lr.ph.i65, label %.preheader6.i47

.preheader9.lr.ph.i65:                            ; preds = %bb.h
  %i.qc = icmp sgt i32 %i.pw, 0                   ; 2 uses
  %i.qd = icmp sgt i32 %i.cn, 0                   ; 3 uses
  %i.qe = icmp sgt i32 %i.px, 0
  %i.qf = sub nsw i64 0, %i.da                    ; 4 uses
  br i1 %i.qe, label %.preheader9.us.preheader.i, label %.preheader9.lr.ph.split.i66

.preheader9.us.preheader.i:                       ; preds = %.preheader9.lr.ph.i65
  %wide.trip.count144.i = zext i32 %i.pw to i64   ; 12 uses
  %wide.trip.count150.i = zext nneg i32 %i.px to i64 ; 7 uses
  %i.qg = shl nuw nsw i64 %wide.trip.count150.i, 3
  %i.qh = mul nsw i64 %wide.trip.count150.i, -8
  %i.qi = add i64 %i.cw, %i.cr
  %10 = shl nsw i64 %i.pz, 3                      ; 2 uses
  %11 = add i64 %i.qi, %10
  %i.qj = shl nsw i64 %i.da, 3                    ; 2 uses
  %i.qk = shl nuw nsw i64 %wide.trip.count144.i, 3 ; 2 uses
  %scevgep677.a = getelementptr i8, ptr %i.cq, i64 8 ; 2 uses
  %i.ql = add i64 %i.cw, %10                      ; 2 uses
  %scevgep679 = getelementptr i8, ptr %scevgep677.a, i64 %i.ql
  %12 = add i64 %i.ql, %i.qk
  %i.qm = add nsw i32 %i.pu, -1
  %i.qn = zext i32 %i.qm to i64
  %i.qo = mul i64 %i.qj, %i.qn
  %i.qp = sub i64 %12, %i.qo
  %scevgep680 = getelementptr i8, ptr %scevgep677.a, i64 %i.qp
  %min.iters.check686 = icmp ult i32 %i.pw, 4
  %stride.check684 = icmp sgt i32 %i.cn, 0
  %n.vec688 = and i64 %wide.trip.count144.i, 2147483644 ; 4 uses
  %i.qq = shl nuw nsw i64 %n.vec688, 3
  %cmp.n698 = icmp eq i64 %n.vec688, %wide.trip.count144.i
  %xtraiter873 = and i64 %wide.trip.count144.i, 3 ; 2 uses
  %lcmp.mod874.not = icmp eq i64 %xtraiter873, 0
  %i.qr = zext nneg i32 %i.cn to i64              ; 2 uses
  %min.iters.check660 = icmp ult i32 %i.cn, 4
  %n.vec662 = and i64 %i.qr, 2147483644           ; 4 uses
  %i.qs = trunc nuw nsw i64 %n.vec662 to i32
  %i.qt = shl nuw nsw i64 %n.vec662, 3            ; 2 uses
  %cmp.n671 = icmp eq i64 %n.vec662, %i.qr
  %min.iters.check639 = icmp ult i32 %i.px, 4
  %n.vec641 = and i64 %wide.trip.count150.i, 2147483644 ; 4 uses
  %i.qu = shl nuw nsw i64 %n.vec641, 3
  %cmp.n651 = icmp eq i64 %n.vec641, %wide.trip.count150.i
  %xtraiter879 = and i64 %wide.trip.count150.i, 3 ; 2 uses
  %lcmp.mod880.not = icmp eq i64 %xtraiter879, 0
  br label %.preheader9.us.i71

.preheader9.us.i71:                               ; preds = %._crit_edge.us.i75, %.preheader9.us.preheader.i
  %indvar656 = phi i64 [ %indvar.next657, %._crit_edge.us.i75 ], [ 0, %.preheader9.us.preheader.i ] ; 2 uses
  %.08724.us.i = phi i32 [ %i.us, %._crit_edge.us.i75 ], [ 0, %.preheader9.us.preheader.i ]
  %.08823.us.i = phi ptr [ %.lcssa270, %._crit_edge.us.i75 ], [ %i.bb, %.preheader9.us.preheader.i ] ; 7 uses
  %.08922.us.i = phi ptr [ %i.ur, %._crit_edge.us.i75 ], [ %i.qa, %.preheader9.us.preheader.i ] ; 12 uses
  %i.qv = mul i64 %i.qj, %indvar656
  %13 = sub i64 %i.qv, %11
  br i1 %i.qc, label %.lr.ph.us.i.preheader, label %.preheader8.us.i

.lr.ph.us.i.preheader:                            ; preds = %.preheader9.us.i71
  br i1 %min.iters.check686, label %.lr.ph.us.i.preheader816, label %vector.memcheck675

vector.memcheck675:                               ; preds = %.lr.ph.us.i.preheader
  %scevgep676 = getelementptr i8, ptr %.08823.us.i, i64 %i.qk
  %bound0681 = icmp ult ptr %.08823.us.i, %scevgep680
  %bound1682 = icmp ult ptr %scevgep679, %scevgep676
  %found.conflict683 = and i1 %bound0681, %bound1682
  %i.qw = or i1 %found.conflict683, %stride.check684
  br i1 %i.qw, label %.lr.ph.us.i.preheader816, label %vector.ph687

vector.ph687:                                     ; preds = %vector.memcheck675
  %i.qx = getelementptr i8, ptr %.08823.us.i, i64 %i.qq ; 2 uses
  br label %vector.body689

vector.body689:                                   ; preds = %vector.body689, %vector.ph687
  %index690 = phi i64 [ 0, %vector.ph687 ], [ %index.next696, %vector.body689 ] ; 3 uses
  %i.qy = shl i64 %index690, 3
  %next.gep691 = getelementptr i8, ptr %.08823.us.i, i64 %i.qy ; 2 uses
  %i.qz = sub nsw i64 %wide.trip.count144.i, %index690
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %.08922.us.i, i64 %i.qz ; 2 uses
  %i.rb = getelementptr inbounds i8, ptr %i.ra, i64 -8
  %i.rc = getelementptr inbounds i8, ptr %i.ra, i64 -24
  %wide.load692 = load <2 x i64>, ptr %i.rb, align 8, !tbaa !74, !alias.scope !461
  %wide.load693 = load <2 x i64>, ptr %i.rc, align 8, !tbaa !74, !alias.scope !461
  %reverse694 = shufflevector <2 x i64> %wide.load692, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse695 = shufflevector <2 x i64> %wide.load693, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.rd = getelementptr i8, ptr %next.gep691, i64 16
  store <2 x i64> %reverse694, ptr %next.gep691, align 8, !tbaa !74, !alias.scope !464, !noalias !461
  store <2 x i64> %reverse695, ptr %i.rd, align 8, !tbaa !74, !alias.scope !464, !noalias !461
  %index.next696 = add nuw i64 %index690, 4       ; 2 uses
  %i.re = icmp eq i64 %index.next696, %n.vec688
  br i1 %i.re, label %middle.block697, label %vector.body689, !llvm.loop !466

middle.block697:                                  ; preds = %vector.body689
  br i1 %cmp.n698, label %.preheader8.us.i, label %.lr.ph.us.i.preheader816

.lr.ph.us.i.preheader816:                         ; preds = %vector.memcheck675, %.lr.ph.us.i.preheader, %middle.block697
  %indvars.iv141.i.ph = phi i64 [ 0, %vector.memcheck675 ], [ 0, %.lr.ph.us.i.preheader ], [ %n.vec688, %middle.block697 ] ; 3 uses
  %.110.us.i78.ph = phi ptr [ %.08823.us.i, %vector.memcheck675 ], [ %.08823.us.i, %.lr.ph.us.i.preheader ], [ %i.qx, %middle.block697 ] ; 2 uses
  br i1 %lcmp.mod874.not, label %.lr.ph.us.i.prol.loopexit, label %.lr.ph.us.i.prol

.lr.ph.us.i.prol:                                 ; preds = %.lr.ph.us.i.preheader816, %.lr.ph.us.i.prol
  %indvars.iv141.i.prol = phi i64 [ %indvars.iv.next142.i.prol, %.lr.ph.us.i.prol ], [ %indvars.iv141.i.ph, %.lr.ph.us.i.preheader816 ] ; 2 uses
  %.110.us.i78.prol = phi ptr [ %i.ri, %.lr.ph.us.i.prol ], [ %.110.us.i78.ph, %.lr.ph.us.i.preheader816 ] ; 2 uses
  %prol.iter875 = phi i64 [ %prol.iter875.next, %.lr.ph.us.i.prol ], [ 0, %.lr.ph.us.i.preheader816 ]
  %i.rf = sub nsw i64 %wide.trip.count144.i, %indvars.iv141.i.prol
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %.08922.us.i, i64 %i.rf
  %i.rh = load i64, ptr %i.rg, align 8, !tbaa !74
  %i.ri = getelementptr inbounds nuw i8, ptr %.110.us.i78.prol, i64 8 ; 3 uses
  store i64 %i.rh, ptr %.110.us.i78.prol, align 8, !tbaa !74
  %indvars.iv.next142.i.prol = add nuw nsw i64 %indvars.iv141.i.prol, 1 ; 2 uses
  %prol.iter875.next = add i64 %prol.iter875, 1   ; 2 uses
  %prol.iter875.cmp.not = icmp eq i64 %prol.iter875.next, %xtraiter873
  br i1 %prol.iter875.cmp.not, label %.lr.ph.us.i.prol.loopexit, label %.lr.ph.us.i.prol, !llvm.loop !467

.lr.ph.us.i.prol.loopexit:                        ; preds = %.lr.ph.us.i.prol, %.lr.ph.us.i.preheader816
  %.lcssa833.unr = phi ptr [ poison, %.lr.ph.us.i.preheader816 ], [ %i.ri, %.lr.ph.us.i.prol ]
  %indvars.iv141.i.unr = phi i64 [ %indvars.iv141.i.ph, %.lr.ph.us.i.preheader816 ], [ %indvars.iv.next142.i.prol, %.lr.ph.us.i.prol ]
  %.110.us.i78.unr = phi ptr [ %.110.us.i78.ph, %.lr.ph.us.i.preheader816 ], [ %i.ri, %.lr.ph.us.i.prol ]
  %i.rj = sub nsw i64 %indvars.iv141.i.ph, %wide.trip.count144.i
  %i.rk = icmp ugt i64 %i.rj, -4
  br i1 %i.rk, label %.preheader8.us.i, label %.lr.ph.us.i.preheader816.new

.lr.ph.us.i.preheader816.new:                     ; preds = %.lr.ph.us.i.prol.loopexit
  %invariant.gep993.a = getelementptr [8 x i8], ptr %.08922.us.i, i64 %wide.trip.count144.i
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i, %.lr.ph.us.i.preheader816.new
  %indvars.iv141.i = phi i64 [ %indvars.iv141.i.unr, %.lr.ph.us.i.preheader816.new ], [ %indvars.iv.next142.i.3, %.lr.ph.us.i ] ; 5 uses
  %.110.us.i78 = phi ptr [ %.110.us.i78.unr, %.lr.ph.us.i.preheader816.new ], [ %i.ry, %.lr.ph.us.i ] ; 5 uses
  %i.rl = sub nsw i64 %wide.trip.count144.i, %indvars.iv141.i
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %.08922.us.i, i64 %i.rl
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !74
  %i.ro = getelementptr inbounds nuw i8, ptr %.110.us.i78, i64 8
  store i64 %i.rn, ptr %.110.us.i78, align 8, !tbaa !74
  %indvars.iv.next142.i.neg = xor i64 %indvars.iv141.i, -1
  %gep994.a = getelementptr [8 x i8], ptr %invariant.gep993.a, i64 %indvars.iv.next142.i.neg
  %i.rp = load i64, ptr %gep994.a, align 8, !tbaa !74
  %i.rq = getelementptr inbounds nuw i8, ptr %.110.us.i78, i64 16
  store i64 %i.rp, ptr %i.ro, align 8, !tbaa !74
  %indvars.iv.next142.i.1 = add nuw nsw i64 %indvars.iv141.i, 2
  %i.rr = sub nsw i64 %wide.trip.count144.i, %indvars.iv.next142.i.1
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %.08922.us.i, i64 %i.rr
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !74
  %i.ru = getelementptr inbounds nuw i8, ptr %.110.us.i78, i64 24
  store i64 %i.rt, ptr %i.rq, align 8, !tbaa !74
  %indvars.iv.next142.i.2 = add nuw nsw i64 %indvars.iv141.i, 3
  %i.rv = sub nsw i64 %wide.trip.count144.i, %indvars.iv.next142.i.2
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %.08922.us.i, i64 %i.rv
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !74
  %i.ry = getelementptr inbounds nuw i8, ptr %.110.us.i78, i64 32 ; 2 uses
  store i64 %i.rx, ptr %i.ru, align 8, !tbaa !74
  %indvars.iv.next142.i.3 = add nuw nsw i64 %indvars.iv141.i, 4 ; 2 uses
  %exitcond145.not.i.3 = icmp eq i64 %indvars.iv.next142.i.3, %wide.trip.count144.i
  br i1 %exitcond145.not.i.3, label %.preheader8.us.i, label %.lr.ph.us.i, !llvm.loop !468

.lr.ph15.us.i76:                                  ; preds = %.lr.ph15.us.i76.prol.loopexit, %.lr.ph15.us.i76
  %.08414.us.i = phi i32 [ %i.sx, %.lr.ph15.us.i76 ], [ %.08414.us.i.unr, %.lr.ph15.us.i76.prol.loopexit ]
  %.08613.us.i = phi ptr [ %i.su, %.lr.ph15.us.i76 ], [ %.08613.us.i.unr, %.lr.ph15.us.i76.prol.loopexit ] ; 9 uses
  %.212.us.i77 = phi ptr [ %i.sw, %.lr.ph15.us.i76 ], [ %.212.us.i77.unr, %.lr.ph15.us.i76.prol.loopexit ] ; 9 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %.08613.us.i, i64 8
  %i.sa = load i64, ptr %.08613.us.i, align 8, !tbaa !74
  %i.sb = getelementptr inbounds nuw i8, ptr %.212.us.i77, i64 8
  store i64 %i.sa, ptr %.212.us.i77, align 8, !tbaa !74
  %i.sc = getelementptr inbounds nuw i8, ptr %.08613.us.i, i64 16
  %i.sd = load i64, ptr %i.rz, align 8, !tbaa !74
  %i.se = getelementptr inbounds nuw i8, ptr %.212.us.i77, i64 16
  store i64 %i.sd, ptr %i.sb, align 8, !tbaa !74
  %i.sf = getelementptr inbounds nuw i8, ptr %.08613.us.i, i64 24
  %i.sg = load i64, ptr %i.sc, align 8, !tbaa !74
  %i.sh = getelementptr inbounds nuw i8, ptr %.212.us.i77, i64 24
  store i64 %i.sg, ptr %i.se, align 8, !tbaa !74
  %i.si = getelementptr inbounds nuw i8, ptr %.08613.us.i, i64 32
  %i.sj = load i64, ptr %i.sf, align 8, !tbaa !74
  %i.sk = getelementptr inbounds nuw i8, ptr %.212.us.i77, i64 32
  store i64 %i.sj, ptr %i.sh, align 8, !tbaa !74
  %i.sl = getelementptr inbounds nuw i8, ptr %.08613.us.i, i64 40
  %i.sm = load i64, ptr %i.si, align 8, !tbaa !74
  %i.sn = getelementptr inbounds nuw i8, ptr %.212.us.i77, i64 40
  store i64 %i.sm, ptr %i.sk, align 8, !tbaa !74
  %i.so = getelementptr inbounds nuw i8, ptr %.08613.us.i, i64 48
  %i.sp = load i64, ptr %i.sl, align 8, !tbaa !74
  %i.sq = getelementptr inbounds nuw i8, ptr %.212.us.i77, i64 48
  store i64 %i.sp, ptr %i.sn, align 8, !tbaa !74
  %i.sr = getelementptr inbounds nuw i8, ptr %.08613.us.i, i64 56
  %i.ss = load i64, ptr %i.so, align 8, !tbaa !74
  %i.st = getelementptr inbounds nuw i8, ptr %.212.us.i77, i64 56
  store i64 %i.ss, ptr %i.sq, align 8, !tbaa !74
  %i.su = getelementptr inbounds nuw i8, ptr %.08613.us.i, i64 64 ; 2 uses
  %i.sv = load i64, ptr %i.sr, align 8, !tbaa !74
  %i.sw = getelementptr inbounds nuw i8, ptr %.212.us.i77, i64 64 ; 2 uses
  store i64 %i.sv, ptr %i.st, align 8, !tbaa !74
  %i.sx = add nuw nsw i32 %.08414.us.i, 8         ; 2 uses
  %exitcond146.not.i.7 = icmp eq i32 %i.sx, %i.cn
  br i1 %exitcond146.not.i.7, label %.preheader7.us.i72, label %.lr.ph15.us.i76, !llvm.loop !469

scalar.ph638:                                     ; preds = %scalar.ph638.prol.loopexit, %scalar.ph638
  %indvars.iv147.i = phi i64 [ %indvars.iv.next148.i.3, %scalar.ph638 ], [ %indvars.iv147.i.unr, %scalar.ph638.prol.loopexit ] ; 5 uses
  %.318.us.i74 = phi ptr [ %i.tn, %scalar.ph638 ], [ %.318.us.i74.unr, %scalar.ph638.prol.loopexit ] ; 5 uses
  %i.sy = sub nuw nsw i64 -2, %indvars.iv147.i
  %i.sz = getelementptr inbounds [8 x i8], ptr %.086.lcssa.us.i, i64 %i.sy
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !74
  %i.tb = getelementptr inbounds nuw i8, ptr %.318.us.i74, i64 8
  store i64 %i.ta, ptr %.318.us.i74, align 8, !tbaa !74
  %i.tc = sub nuw nsw i64 -3, %indvars.iv147.i
  %i.td = getelementptr inbounds [8 x i8], ptr %.086.lcssa.us.i, i64 %i.tc
  %i.te = load i64, ptr %i.td, align 8, !tbaa !74
  %i.tf = getelementptr inbounds nuw i8, ptr %.318.us.i74, i64 16
  store i64 %i.te, ptr %i.tb, align 8, !tbaa !74
  %i.tg = sub nuw nsw i64 -4, %indvars.iv147.i
  %i.th = getelementptr inbounds [8 x i8], ptr %.086.lcssa.us.i, i64 %i.tg
  %i.ti = load i64, ptr %i.th, align 8, !tbaa !74
  %i.tj = getelementptr inbounds nuw i8, ptr %.318.us.i74, i64 24
  store i64 %i.ti, ptr %i.tf, align 8, !tbaa !74
  %i.tk = sub nuw nsw i64 -5, %indvars.iv147.i
  %i.tl = getelementptr inbounds [8 x i8], ptr %.086.lcssa.us.i, i64 %i.tk
  %i.tm = load i64, ptr %i.tl, align 8, !tbaa !74
  %i.tn = getelementptr inbounds nuw i8, ptr %.318.us.i74, i64 32 ; 2 uses
  store i64 %i.tm, ptr %i.tj, align 8, !tbaa !74
  %indvars.iv.next148.i.3 = add nuw nsw i64 %indvars.iv147.i, 4 ; 2 uses
  %exitcond151.not.i.3 = icmp eq i64 %indvars.iv.next148.i.3, %wide.trip.count150.i
  br i1 %exitcond151.not.i.3, label %._crit_edge.us.i75, label %scalar.ph638, !llvm.loop !470

.preheader7.us.i72:                               ; preds = %.lr.ph15.us.i76.prol.loopexit, %.lr.ph15.us.i76, %middle.block670, %.preheader8.us.i
  %.2.lcssa.us.i73 = phi ptr [ %.1.lcssa.us.i, %.preheader8.us.i ], [ %i.uf, %middle.block670 ], [ %.lcssa834.unr.a, %.lr.ph15.us.i76.prol.loopexit ], [ %i.sw, %.lr.ph15.us.i76 ] ; 6 uses
  %.086.lcssa.us.i = phi ptr [ %.08922.us.i, %.preheader8.us.i ], [ %i.ue, %middle.block670 ], [ %.lcssa835.unr.a, %.lr.ph15.us.i76.prol.loopexit ], [ %i.su, %.lr.ph15.us.i76 ] ; 7 uses
  br i1 %min.iters.check639, label %scalar.ph638.preheader, label %vector.memcheck631

vector.memcheck631:                               ; preds = %.preheader7.us.i72
  %scevgep632.a = getelementptr i8, ptr %.2.lcssa.us.i73, i64 %i.qg
  %scevgep633.a = getelementptr i8, ptr %.086.lcssa.us.i, i64 -8 ; 2 uses
  %scevgep634 = getelementptr i8, ptr %scevgep633.a, i64 %i.qh
  %bound0635 = icmp ult ptr %.2.lcssa.us.i73, %scevgep633.a
  %bound1636 = icmp ult ptr %scevgep634, %scevgep632.a
  %found.conflict637 = and i1 %bound0635, %bound1636
  br i1 %found.conflict637, label %scalar.ph638.preheader, label %vector.ph640

vector.ph640:                                     ; preds = %vector.memcheck631
  %i.to = getelementptr i8, ptr %.2.lcssa.us.i73, i64 %i.qu ; 2 uses
  br label %vector.body642

vector.body642:                                   ; preds = %vector.body642, %vector.ph640
  %index643 = phi i64 [ 0, %vector.ph640 ], [ %index.next649, %vector.body642 ] ; 3 uses
  %i.tp = shl i64 %index643, 3
  %next.gep644 = getelementptr i8, ptr %.2.lcssa.us.i73, i64 %i.tp ; 2 uses
  %i.tq = sub nuw nsw i64 -2, %index643
  %i.tr = getelementptr inbounds [8 x i8], ptr %.086.lcssa.us.i, i64 %i.tq ; 2 uses
  %i.ts = getelementptr inbounds i8, ptr %i.tr, i64 -8
  %i.tt = getelementptr inbounds i8, ptr %i.tr, i64 -24
  %wide.load645.a = load <2 x i64>, ptr %i.ts, align 8, !tbaa !74, !alias.scope !471
  %wide.load646 = load <2 x i64>, ptr %i.tt, align 8, !tbaa !74, !alias.scope !471
  %reverse647.a = shufflevector <2 x i64> %wide.load645.a, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse648 = shufflevector <2 x i64> %wide.load646, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.tu = getelementptr i8, ptr %next.gep644, i64 16
  store <2 x i64> %reverse647.a, ptr %next.gep644, align 8, !tbaa !74, !alias.scope !474, !noalias !471
  store <2 x i64> %reverse648, ptr %i.tu, align 8, !tbaa !74, !alias.scope !474, !noalias !471
  %index.next649 = add nuw i64 %index643, 4       ; 2 uses
  %i.tv = icmp eq i64 %index.next649, %n.vec641
  br i1 %i.tv, label %middle.block650, label %vector.body642, !llvm.loop !476

middle.block650:                                  ; preds = %vector.body642
  br i1 %cmp.n651, label %._crit_edge.us.i75, label %scalar.ph638.preheader

scalar.ph638.preheader:                           ; preds = %vector.memcheck631, %.preheader7.us.i72, %middle.block650
  %indvars.iv147.i.ph = phi i64 [ 0, %vector.memcheck631 ], [ 0, %.preheader7.us.i72 ], [ %n.vec641, %middle.block650 ] ; 3 uses
  %.318.us.i74.ph = phi ptr [ %.2.lcssa.us.i73, %vector.memcheck631 ], [ %.2.lcssa.us.i73, %.preheader7.us.i72 ], [ %i.to, %middle.block650 ] ; 2 uses
  br i1 %lcmp.mod880.not, label %scalar.ph638.prol.loopexit, label %scalar.ph638.prol

scalar.ph638.prol:                                ; preds = %scalar.ph638.preheader, %scalar.ph638.prol
  %indvars.iv147.i.prol = phi i64 [ %indvars.iv.next148.i.prol, %scalar.ph638.prol ], [ %indvars.iv147.i.ph, %scalar.ph638.preheader ] ; 2 uses
  %.318.us.i74.prol = phi ptr [ %i.tz, %scalar.ph638.prol ], [ %.318.us.i74.ph, %scalar.ph638.preheader ] ; 2 uses
  %prol.iter881 = phi i64 [ %prol.iter881.next, %scalar.ph638.prol ], [ 0, %scalar.ph638.preheader ]
  %i.tw = sub nuw nsw i64 -2, %indvars.iv147.i.prol
  %i.tx = getelementptr inbounds [8 x i8], ptr %.086.lcssa.us.i, i64 %i.tw
  %i.ty = load i64, ptr %i.tx, align 8, !tbaa !74
  %i.tz = getelementptr inbounds nuw i8, ptr %.318.us.i74.prol, i64 8 ; 3 uses
  store i64 %i.ty, ptr %.318.us.i74.prol, align 8, !tbaa !74
  %indvars.iv.next148.i.prol = add nuw nsw i64 %indvars.iv147.i.prol, 1 ; 2 uses
  %prol.iter881.next = add i64 %prol.iter881, 1   ; 2 uses
  %prol.iter881.cmp.not = icmp eq i64 %prol.iter881.next, %xtraiter879
  br i1 %prol.iter881.cmp.not, label %scalar.ph638.prol.loopexit, label %scalar.ph638.prol, !llvm.loop !477

scalar.ph638.prol.loopexit:                       ; preds = %scalar.ph638.prol, %scalar.ph638.preheader
  %.lcssa836.unr.a = phi ptr [ poison, %scalar.ph638.preheader ], [ %i.tz, %scalar.ph638.prol ]
  %indvars.iv147.i.unr = phi i64 [ %indvars.iv147.i.ph, %scalar.ph638.preheader ], [ %indvars.iv.next148.i.prol, %scalar.ph638.prol ]
  %.318.us.i74.unr = phi ptr [ %.318.us.i74.ph, %scalar.ph638.preheader ], [ %i.tz, %scalar.ph638.prol ]
  %i.ua = sub nsw i64 %indvars.iv147.i.ph, %wide.trip.count150.i
  %i.ub = icmp ugt i64 %i.ua, -4
  br i1 %i.ub, label %._crit_edge.us.i75, label %scalar.ph638

.preheader8.us.i:                                 ; preds = %.lr.ph.us.i.prol.loopexit, %.lr.ph.us.i, %middle.block697, %.preheader9.us.i71
  %.1.lcssa.us.i = phi ptr [ %.08823.us.i, %.preheader9.us.i71 ], [ %i.qx, %middle.block697 ], [ %.lcssa833.unr, %.lr.ph.us.i.prol.loopexit ], [ %i.ry, %.lr.ph.us.i ] ; 6 uses
  %.1.lcssa.us.i655 = ptrtoaddr ptr %.1.lcssa.us.i to i64
  br i1 %i.qd, label %.lr.ph15.us.i76.preheader, label %.preheader7.us.i72

.lr.ph15.us.i76.preheader:                        ; preds = %.preheader8.us.i
  br i1 %min.iters.check660, label %.lr.ph15.us.i76.preheader815, label %vector.memcheck654

vector.memcheck654:                               ; preds = %.lr.ph15.us.i76.preheader
  %i.uc = add i64 %13, %.1.lcssa.us.i655
  %i.ud = add i64 %i.uc, -1
  %diff.check658 = icmp ult i64 %i.ud, 31
  br i1 %diff.check658, label %.lr.ph15.us.i76.preheader815, label %vector.ph661

vector.ph661:                                     ; preds = %vector.memcheck654
  %i.ue = getelementptr i8, ptr %.08922.us.i, i64 %i.qt ; 2 uses
  %i.uf = getelementptr i8, ptr %.1.lcssa.us.i, i64 %i.qt ; 2 uses
  br label %vector.body663

vector.body663:                                   ; preds = %vector.body663, %vector.ph661
  %index664 = phi i64 [ 0, %vector.ph661 ], [ %index.next669, %vector.body663 ] ; 2 uses
  %i.ug = shl i64 %index664, 3                    ; 2 uses
  %next.gep665.a = getelementptr i8, ptr %.08922.us.i, i64 %i.ug ; 2 uses
  %next.gep666 = getelementptr i8, ptr %.1.lcssa.us.i, i64 %i.ug ; 2 uses
  %i.uh = getelementptr i8, ptr %next.gep665.a, i64 16
  %wide.load667.a = load <2 x i64>, ptr %next.gep665.a, align 8, !tbaa !74
  %wide.load668 = load <2 x i64>, ptr %i.uh, align 8, !tbaa !74
  %i.ui = getelementptr i8, ptr %next.gep666, i64 16
  store <2 x i64> %wide.load667.a, ptr %next.gep666, align 8, !tbaa !74
  store <2 x i64> %wide.load668, ptr %i.ui, align 8, !tbaa !74
  %index.next669 = add nuw i64 %index664, 4       ; 2 uses
  %i.uj = icmp eq i64 %index.next669, %n.vec662
  br i1 %i.uj, label %middle.block670, label %vector.body663, !llvm.loop !478

middle.block670:                                  ; preds = %vector.body663
  br i1 %cmp.n671, label %.preheader7.us.i72, label %.lr.ph15.us.i76.preheader815

.lr.ph15.us.i76.preheader815:                     ; preds = %vector.memcheck654, %.lr.ph15.us.i76.preheader, %middle.block670
  %.08414.us.i.ph = phi i32 [ 0, %vector.memcheck654 ], [ 0, %.lr.ph15.us.i76.preheader ], [ %i.qs, %middle.block670 ] ; 4 uses
  %.08613.us.i.ph = phi ptr [ %.08922.us.i, %vector.memcheck654 ], [ %.08922.us.i, %.lr.ph15.us.i76.preheader ], [ %i.ue, %middle.block670 ] ; 2 uses
  %.212.us.i77.ph = phi ptr [ %.1.lcssa.us.i, %vector.memcheck654 ], [ %.1.lcssa.us.i, %.lr.ph15.us.i76.preheader ], [ %i.uf, %middle.block670 ] ; 2 uses
  %i.uk = sub i32 %i.cn, %.08414.us.i.ph
  %xtraiter876 = and i32 %i.uk, 7                 ; 2 uses
  %lcmp.mod877.not = icmp eq i32 %xtraiter876, 0
  br i1 %lcmp.mod877.not, label %.lr.ph15.us.i76.prol.loopexit, label %.lr.ph15.us.i76.prol

.lr.ph15.us.i76.prol:                             ; preds = %.lr.ph15.us.i76.preheader815, %.lr.ph15.us.i76.prol
  %.08414.us.i.prol = phi i32 [ %i.uo, %.lr.ph15.us.i76.prol ], [ %.08414.us.i.ph, %.lr.ph15.us.i76.preheader815 ]
  %.08613.us.i.prol = phi ptr [ %i.ul, %.lr.ph15.us.i76.prol ], [ %.08613.us.i.ph, %.lr.ph15.us.i76.preheader815 ] ; 2 uses
  %.212.us.i77.prol = phi ptr [ %i.un, %.lr.ph15.us.i76.prol ], [ %.212.us.i77.ph, %.lr.ph15.us.i76.preheader815 ] ; 2 uses
  %prol.iter878 = phi i32 [ %prol.iter878.next, %.lr.ph15.us.i76.prol ], [ 0, %.lr.ph15.us.i76.preheader815 ]
  %i.ul = getelementptr inbounds nuw i8, ptr %.08613.us.i.prol, i64 8 ; 3 uses
  %i.um = load i64, ptr %.08613.us.i.prol, align 8, !tbaa !74
  %i.un = getelementptr inbounds nuw i8, ptr %.212.us.i77.prol, i64 8 ; 3 uses
  store i64 %i.um, ptr %.212.us.i77.prol, align 8, !tbaa !74
  %i.uo = add nuw nsw i32 %.08414.us.i.prol, 1    ; 2 uses
  %prol.iter878.next = add i32 %prol.iter878, 1   ; 2 uses
  %prol.iter878.cmp.not = icmp eq i32 %prol.iter878.next, %xtraiter876
  br i1 %prol.iter878.cmp.not, label %.lr.ph15.us.i76.prol.loopexit, label %.lr.ph15.us.i76.prol, !llvm.loop !479

.lr.ph15.us.i76.prol.loopexit:                    ; preds = %.lr.ph15.us.i76.prol, %.lr.ph15.us.i76.preheader815
  %.lcssa835.unr.a = phi ptr [ poison, %.lr.ph15.us.i76.preheader815 ], [ %i.ul, %.lr.ph15.us.i76.prol ]
  %.lcssa834.unr.a = phi ptr [ poison, %.lr.ph15.us.i76.preheader815 ], [ %i.un, %.lr.ph15.us.i76.prol ]
  %.08414.us.i.unr = phi i32 [ %.08414.us.i.ph, %.lr.ph15.us.i76.preheader815 ], [ %i.uo, %.lr.ph15.us.i76.prol ]
  %.08613.us.i.unr = phi ptr [ %.08613.us.i.ph, %.lr.ph15.us.i76.preheader815 ], [ %i.ul, %.lr.ph15.us.i76.prol ]
  %.212.us.i77.unr = phi ptr [ %.212.us.i77.ph, %.lr.ph15.us.i76.preheader815 ], [ %i.un, %.lr.ph15.us.i76.prol ]
  %i.up = sub i32 %.08414.us.i.ph, %i.cn
  %i.uq = icmp ugt i32 %i.up, -8
  br i1 %i.uq, label %.preheader7.us.i72, label %.lr.ph15.us.i76

._crit_edge.us.i75:                               ; preds = %scalar.ph638.prol.loopexit, %scalar.ph638, %middle.block650
  %.lcssa270 = phi ptr [ %i.to, %middle.block650 ], [ %.lcssa836.unr.a, %scalar.ph638.prol.loopexit ], [ %i.tn, %scalar.ph638 ] ; 2 uses
  %i.ur = getelementptr inbounds [8 x i8], ptr %.08922.us.i, i64 %i.qf ; 2 uses
  %i.us = add nuw nsw i32 %.08724.us.i, 1         ; 2 uses
  %exitcond152.not.i = icmp eq i32 %i.us, %i.pu
  %indvar.next657 = add i64 %indvar656, 1
  br i1 %exitcond152.not.i, label %.preheader6.i47, label %.preheader9.us.i71, !llvm.loop !480

.preheader9.lr.ph.split.i66:                      ; preds = %.preheader9.lr.ph.i65
  br i1 %i.qc, label %.preheader9.lr.ph.split.split.us.i70, label %.preheader9.lr.ph.split.split.i67

.preheader9.lr.ph.split.split.us.i70:             ; preds = %.preheader9.lr.ph.split.i66
  %i.ut = zext nneg i32 %i.pw to i64              ; 19 uses
  br i1 %i.qd, label %.preheader9.us28.us.i.preheader, label %.preheader9.us28.i.preheader

.preheader9.us28.i.preheader:                     ; preds = %.preheader9.lr.ph.split.split.us.i70
  %i.uu = shl nuw nsw i64 %i.ut, 3                ; 2 uses
  %scevgep749.a = getelementptr i8, ptr %i.cq, i64 8 ; 2 uses
  %i.uv = shl nsw i64 %i.pz, 3
  %i.uw = add i64 %i.cw, %i.uv                    ; 2 uses
  %scevgep750 = getelementptr i8, ptr %scevgep749.a, i64 %i.uw
  %i.ux = add i64 %i.uw, %i.uu
  %i.uy = shl nsw i64 %i.da, 3
  %i.uz = add nsw i32 %i.pu, -1
  %i.va = zext i32 %i.uz to i64
  %i.vb = mul i64 %i.uy, %i.va
  %i.vc = sub i64 %i.ux, %i.vb
  %scevgep751 = getelementptr i8, ptr %scevgep749.a, i64 %i.vc
  %min.iters.check756 = icmp ult i32 %i.pw, 4
  %n.vec758 = and i64 %i.ut, 2147483644           ; 4 uses
  %i.vd = shl nuw nsw i64 %n.vec758, 3
  %cmp.n768 = icmp eq i64 %n.vec758, %i.ut
  %xtraiter863 = and i64 %i.ut, 3                 ; 2 uses
  %lcmp.mod864.not = icmp eq i64 %xtraiter863, 0
  br label %.preheader9.us28.i

.preheader9.us28.us.i.preheader:                  ; preds = %.preheader9.lr.ph.split.split.us.i70
  %i.ve = add i64 %i.cw, %i.cr
  %i.vf = shl nsw i64 %i.pz, 3
  %i.vg = add i64 %i.ve, %i.vf
  %i.vh = shl nuw nsw i64 %i.da, 3
  %xtraiter866.a = and i64 %i.ut, 3               ; 3 uses
  %i.vi = icmp ult i32 %i.pw, 4
  %unroll_iter = and i64 %i.ut, 2147483644
  %lcmp.mod867.not.a = icmp eq i64 %xtraiter866.a, 0
  %lcmp.mod869 = icmp ne i64 %xtraiter866.a, 0
  %i.vj = zext nneg i32 %i.cn to i64              ; 2 uses
  %min.iters.check707 = icmp ult i32 %i.cn, 8
  %n.vec709 = and i64 %i.vj, 2147483644           ; 4 uses
  %i.vk = trunc nuw nsw i64 %n.vec709 to i32
  %i.vl = shl nuw nsw i64 %n.vec709, 3            ; 2 uses
  %cmp.n718 = icmp eq i64 %n.vec709, %i.vj
  br label %.preheader9.us28.us.i

.preheader9.us28.us.i:                            ; preds = %.preheader9.us28.us.i.preheader, %..preheader7_crit_edge.us45.us.i
  %indvar703 = phi i64 [ 0, %.preheader9.us28.us.i.preheader ], [ %indvar.next704, %..preheader7_crit_edge.us45.us.i ] ; 2 uses
  %.08724.us29.us.i = phi i32 [ 0, %.preheader9.us28.us.i.preheader ], [ %i.xt, %..preheader7_crit_edge.us45.us.i ]
  %.08823.us30.us.i = phi ptr [ %i.bb, %.preheader9.us28.us.i.preheader ], [ %.lcssa265, %..preheader7_crit_edge.us45.us.i ] ; 3 uses
  %.08922.us31.us.i = phi ptr [ %i.qa, %.preheader9.us28.us.i.preheader ], [ %i.xs, %..preheader7_crit_edge.us45.us.i ] ; 10 uses
  %.08823.us30.us.i702 = ptrtoaddr ptr %.08823.us30.us.i to i64 ; 2 uses
  %i.vm = mul i64 %i.vh, %indvar703
  %reass.sub = sub i64 %i.vm, %i.vg
  br i1 %i.vi, label %.epil.preheader, label %.preheader9.us28.us.i.new

.preheader9.us28.us.i.new:                        ; preds = %.preheader9.us28.us.i
  %invariant.gep991.a = getelementptr [8 x i8], ptr %.08922.us31.us.i, i64 %i.ut
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader9.us28.us.i.new
  %indvars.iv134.i = phi i64 [ 0, %.preheader9.us28.us.i.new ], [ %indvars.iv.next135.i.3, %bb.i ] ; 5 uses
  %.110.us33.us.i = phi ptr [ %.08823.us30.us.i, %.preheader9.us28.us.i.new ], [ %i.wa, %bb.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader9.us28.us.i.new ], [ %niter.next.3, %bb.i ]
  %i.vn = sub nsw i64 %i.ut, %indvars.iv134.i
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %.08922.us31.us.i, i64 %i.vn
  %i.vp = load i64, ptr %i.vo, align 8, !tbaa !74
  %i.vq = getelementptr inbounds nuw i8, ptr %.110.us33.us.i, i64 8
  store i64 %i.vp, ptr %.110.us33.us.i, align 8, !tbaa !74
  %indvars.iv.next135.i.neg = xor i64 %indvars.iv134.i, -1
  %gep992.a = getelementptr [8 x i8], ptr %invariant.gep991.a, i64 %indvars.iv.next135.i.neg
  %i.vr = load i64, ptr %gep992.a, align 8, !tbaa !74
  %i.vs = getelementptr inbounds nuw i8, ptr %.110.us33.us.i, i64 16
  store i64 %i.vr, ptr %i.vq, align 8, !tbaa !74
  %indvars.iv.next135.i.1 = or disjoint i64 %indvars.iv134.i, 2
  %i.vt = sub nsw i64 %i.ut, %indvars.iv.next135.i.1
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %.08922.us31.us.i, i64 %i.vt
  %i.vv = load i64, ptr %i.vu, align 8, !tbaa !74
  %i.vw = getelementptr inbounds nuw i8, ptr %.110.us33.us.i, i64 24
  store i64 %i.vv, ptr %i.vs, align 8, !tbaa !74
  %indvars.iv.next135.i.2 = or disjoint i64 %indvars.iv134.i, 3
  %i.vx = sub nsw i64 %i.ut, %indvars.iv.next135.i.2
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %.08922.us31.us.i, i64 %i.vx
  %i.vz = load i64, ptr %i.vy, align 8, !tbaa !74
  %i.wa = getelementptr inbounds nuw i8, ptr %.110.us33.us.i, i64 32 ; 3 uses
  store i64 %i.vz, ptr %i.vw, align 8, !tbaa !74
  %indvars.iv.next135.i.3 = add nuw nsw i64 %indvars.iv134.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..preheader8_crit_edge.us42.us.i.preheader.unr-lcssa, label %bb.i, !llvm.loop !481

..preheader8_crit_edge.us42.us.i.preheader.unr-lcssa: ; preds = %bb.i
  br i1 %lcmp.mod867.not.a, label %..preheader8_crit_edge.us42.us.i.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader8_crit_edge.us42.us.i.preheader.unr-lcssa, %.preheader9.us28.us.i
  %indvars.iv134.i.epil.init = phi i64 [ 0, %.preheader9.us28.us.i ], [ %indvars.iv.next135.i.3, %..preheader8_crit_edge.us42.us.i.preheader.unr-lcssa ]
  %.110.us33.us.i.epil.init = phi ptr [ %.08823.us30.us.i, %.preheader9.us28.us.i ], [ %i.wa, %..preheader8_crit_edge.us42.us.i.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod869)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv134.i.epil = phi i64 [ %indvars.iv.next135.i.epil, %bb.j ], [ %indvars.iv134.i.epil.init, %.epil.preheader ] ; 2 uses
  %.110.us33.us.i.epil = phi ptr [ %i.we, %bb.j ], [ %.110.us33.us.i.epil.init, %.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.j ], [ 0, %.epil.preheader ]
  %i.wb = sub nsw i64 %i.ut, %indvars.iv134.i.epil
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %.08922.us31.us.i, i64 %i.wb
  %i.wd = load i64, ptr %i.wc, align 8, !tbaa !74
  %i.we = getelementptr inbounds nuw i8, ptr %.110.us33.us.i.epil, i64 8 ; 2 uses
  store i64 %i.wd, ptr %.110.us33.us.i.epil, align 8, !tbaa !74
  %indvars.iv.next135.i.epil = add nuw nsw i64 %indvars.iv134.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter866.a
  br i1 %epil.iter.cmp.not, label %..preheader8_crit_edge.us42.us.i.preheader, label %bb.j, !llvm.loop !482

..preheader8_crit_edge.us42.us.i.preheader:       ; preds = %bb.j, %..preheader8_crit_edge.us42.us.i.preheader.unr-lcssa
  %.lcssa830 = phi ptr [ %i.wa, %..preheader8_crit_edge.us42.us.i.preheader.unr-lcssa ], [ %i.we, %bb.j ] ; 5 uses
  br i1 %min.iters.check707, label %..preheader8_crit_edge.us42.us.i.preheader817, label %vector.memcheck701

vector.memcheck701:                               ; preds = %..preheader8_crit_edge.us42.us.i.preheader
  %i.wf = ptrtoaddr ptr %.lcssa830 to i64
  %reass.sub793 = sub i64 %i.wf, %.08823.us30.us.i702
  %op.rdx = add i64 %.08823.us30.us.i702, -1
  %op.rdx803 = add i64 %reass.sub, %reass.sub793
  %op.rdx804 = add i64 %op.rdx, %op.rdx803
  %diff.check705 = icmp ult i64 %op.rdx804, 31
  br i1 %diff.check705, label %..preheader8_crit_edge.us42.us.i.preheader817, label %vector.ph708

vector.ph708:                                     ; preds = %vector.memcheck701
  %i.wg = getelementptr i8, ptr %.08922.us31.us.i, i64 %i.vl
  %i.wh = getelementptr i8, ptr %.lcssa830, i64 %i.vl ; 2 uses
  br label %vector.body710

end_hunk_1
begin_hunk_2_@_ZNK4ncnn11Padding_x8612forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a
  %i.yg = sub nsw i64 %indvars.iv.i.ph, %i.ut
  %i.yh = icmp ugt i64 %i.yg, -4
  br i1 %i.yh, label %..preheader8_crit_edge.us42.i, label %scalar.ph755.preheader.new

scalar.ph755.preheader.new:                       ; preds = %scalar.ph755.prol.loopexit
  %invariant.gep = getelementptr [8 x i8], ptr %.08922.us31.i, i64 %i.ut
  br label %scalar.ph755

scalar.ph755:                                     ; preds = %scalar.ph755, %scalar.ph755.preheader.new
  %indvars.iv.i = phi i64 [ %indvars.iv.i.unr, %scalar.ph755.preheader.new ], [ %indvars.iv.next.i.3, %scalar.ph755 ] ; 5 uses
  %.110.us33.i = phi ptr [ %.110.us33.i.unr, %scalar.ph755.preheader.new ], [ %i.yv, %scalar.ph755 ] ; 5 uses
  %i.yi = sub nsw i64 %i.ut, %indvars.iv.i
  %i.yj = getelementptr inbounds nuw [8 x i8], ptr %.08922.us31.i, i64 %i.yi
  %i.yk = load i64, ptr %i.yj, align 8, !tbaa !74
  %i.yl = getelementptr inbounds nuw i8, ptr %.110.us33.i, i64 8
  store i64 %i.yk, ptr %.110.us33.i, align 8, !tbaa !74
  %indvars.iv.next.i.neg = xor i64 %indvars.iv.i, -1
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.i.neg
  %i.ym = load i64, ptr %gep, align 8, !tbaa !74
  %i.yn = getelementptr inbounds nuw i8, ptr %.110.us33.i, i64 16
  store i64 %i.ym, ptr %i.yl, align 8, !tbaa !74
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %i.yo = sub nsw i64 %i.ut, %indvars.iv.next.i.1
  %i.yp = getelementptr inbounds nuw [8 x i8], ptr %.08922.us31.i, i64 %i.yo
  %i.yq = load i64, ptr %i.yp, align 8, !tbaa !74
  %i.yr = getelementptr inbounds nuw i8, ptr %.110.us33.i, i64 24
  store i64 %i.yq, ptr %i.yn, align 8, !tbaa !74
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3
  %i.ys = sub nsw i64 %i.ut, %indvars.iv.next.i.2
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %.08922.us31.i, i64 %i.ys
  %i.yu = load i64, ptr %i.yt, align 8, !tbaa !74
  %i.yv = getelementptr inbounds nuw i8, ptr %.110.us33.i, i64 32 ; 2 uses
  store i64 %i.yu, ptr %i.yr, align 8, !tbaa !74
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond132.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %i.ut
  br i1 %exitcond132.not.i.3, label %..preheader8_crit_edge.us42.i, label %scalar.ph755, !llvm.loop !493

..preheader8_crit_edge.us42.i:                    ; preds = %scalar.ph755.prol.loopexit, %scalar.ph755, %middle.block767
  %.lcssa262 = phi ptr [ %i.xu, %middle.block767 ], [ %.lcssa828.unr, %scalar.ph755.prol.loopexit ], [ %i.yv, %scalar.ph755 ] ; 2 uses
  %i.yw = getelementptr inbounds [8 x i8], ptr %.08922.us31.i, i64 %i.qf ; 2 uses
  %i.yx = add nuw nsw i32 %.08724.us29.i, 1       ; 2 uses
  %exitcond133.not.i = icmp eq i32 %i.yx, %i.pu
  br i1 %exitcond133.not.i, label %.preheader6.i47, label %.preheader9.us28.i, !llvm.loop !480

.preheader9.lr.ph.split.split.i67:                ; preds = %.preheader9.lr.ph.split.i66
  br i1 %i.qd, label %.preheader9.us51.i.preheader, label %.preheader9.preheader.i

.preheader9.us51.i.preheader:                     ; preds = %.preheader9.lr.ph.split.split.i67
  %i.yy = add i64 %i.cw, %i.cr
  %.neg = mul nsw i64 %i.pz, -8
  %.neg792 = sub i64 %.neg, %i.yy
  %i.yz = shl nuw nsw i64 %i.da, 3
  %i.za = zext nneg i32 %i.cn to i64              ; 2 uses
  %min.iters.check777 = icmp ult i32 %i.cn, 4
  %n.vec779 = and i64 %i.za, 2147483644           ; 4 uses
  %i.zb = trunc nuw nsw i64 %n.vec779 to i32
  %i.zc = shl nuw nsw i64 %n.vec779, 3            ; 2 uses
  %cmp.n788 = icmp eq i64 %n.vec779, %i.za
  br label %.preheader9.us51.i

.preheader9.preheader.i:                          ; preds = %.preheader9.lr.ph.split.split.i67
  %i.zd = add nsw i32 %i.pu, -1
  %i.ze = zext nneg i32 %i.zd to i64
  %i.zf = shl nuw nsw i64 %i.ze, 3
  %i.zg = sub nuw nsw i64 -8, %i.zf
  %i.zh = mul i64 %i.zg, %i.da
  %i.zi = shl nsw i64 %i.pz, 3
  %i.zj = getelementptr i8, ptr %i.cx, i64 %i.zh
  %scevgep.i = getelementptr i8, ptr %i.zj, i64 %i.zi
  br label %.preheader6.i47

.preheader9.us51.i:                               ; preds = %.preheader9.us51.i.preheader, %..preheader7_crit_edge.us61.i
  %indvar773 = phi i64 [ 0, %.preheader9.us51.i.preheader ], [ %indvar.next774, %..preheader7_crit_edge.us61.i ] ; 2 uses
  %.08724.us52.i = phi i32 [ 0, %.preheader9.us51.i.preheader ], [ %i.abb, %..preheader7_crit_edge.us61.i ]
  %.08823.us53.i = phi ptr [ %i.bb, %.preheader9.us51.i.preheader ], [ %.lcssa, %..preheader7_crit_edge.us61.i ] ; 5 uses
  %.08922.us54.i = phi ptr [ %i.qa, %.preheader9.us51.i.preheader ], [ %i.aba, %..preheader7_crit_edge.us61.i ] ; 5 uses
  br i1 %min.iters.check777, label %scalar.ph776.preheader, label %vector.memcheck771

vector.memcheck771:                               ; preds = %.preheader9.us51.i
  %i.zk = mul i64 %i.yz, %indvar773
  %i.zl = add i64 %.neg792, %i.zk
  %.08823.us53.i772 = ptrtoaddr ptr %.08823.us53.i to i64
  %i.zm = add i64 %i.zl, %.08823.us53.i772
  %i.zn = add i64 %i.zm, -1
  %diff.check775 = icmp ult i64 %i.zn, 31
  br i1 %diff.check775, label %scalar.ph776.preheader, label %vector.ph778

vector.ph778:                                     ; preds = %vector.memcheck771
  %i.zo = getelementptr i8, ptr %.08922.us54.i, i64 %i.zc
  %i.zp = getelementptr i8, ptr %.08823.us53.i, i64 %i.zc ; 2 uses
  br label %vector.body780

vector.body780:                                   ; preds = %vector.body780, %vector.ph778
  %index781 = phi i64 [ 0, %vector.ph778 ], [ %index.next786, %vector.body780 ] ; 2 uses
  %i.zq = shl i64 %index781, 3                    ; 2 uses
  %next.gep782 = getelementptr i8, ptr %.08922.us54.i, i64 %i.zq ; 2 uses
  %next.gep783 = getelementptr i8, ptr %.08823.us53.i, i64 %i.zq ; 2 uses
  %i.zr = getelementptr i8, ptr %next.gep782, i64 16
  %wide.load784 = load <2 x i64>, ptr %next.gep782, align 8, !tbaa !74
  %wide.load785 = load <2 x i64>, ptr %i.zr, align 8, !tbaa !74
  %i.zs = getelementptr i8, ptr %next.gep783, i64 16
  store <2 x i64> %wide.load784, ptr %next.gep783, align 8, !tbaa !74
  store <2 x i64> %wide.load785, ptr %i.zs, align 8, !tbaa !74
  %index.next786 = add nuw i64 %index781, 4       ; 2 uses
  %i.zt = icmp eq i64 %index.next786, %n.vec779
  br i1 %i.zt, label %middle.block787, label %vector.body780, !llvm.loop !494

middle.block787:                                  ; preds = %vector.body780
  br i1 %cmp.n788, label %..preheader7_crit_edge.us61.i, label %scalar.ph776.preheader

scalar.ph776.preheader:                           ; preds = %vector.memcheck771, %.preheader9.us51.i, %middle.block787
  %.08414.us55.i.ph = phi i32 [ 0, %vector.memcheck771 ], [ 0, %.preheader9.us51.i ], [ %i.zb, %middle.block787 ] ; 4 uses
  %.08613.us56.i.ph = phi ptr [ %.08922.us54.i, %vector.memcheck771 ], [ %.08922.us54.i, %.preheader9.us51.i ], [ %i.zo, %middle.block787 ] ; 2 uses
  %.212.us57.i.ph = phi ptr [ %.08823.us53.i, %vector.memcheck771 ], [ %.08823.us53.i, %.preheader9.us51.i ], [ %i.zp, %middle.block787 ] ; 2 uses
  %i.zu = sub i32 %i.cn, %.08414.us55.i.ph
  %xtraiter = and i32 %i.zu, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph776.prol.loopexit, label %scalar.ph776.prol

scalar.ph776.prol:                                ; preds = %scalar.ph776.preheader, %scalar.ph776.prol
  %.08414.us55.i.prol = phi i32 [ %i.zy, %scalar.ph776.prol ], [ %.08414.us55.i.ph, %scalar.ph776.preheader ]
  %.08613.us56.i.prol = phi ptr [ %i.zv, %scalar.ph776.prol ], [ %.08613.us56.i.ph, %scalar.ph776.preheader ] ; 2 uses
  %.212.us57.i.prol = phi ptr [ %i.zx, %scalar.ph776.prol ], [ %.212.us57.i.ph, %scalar.ph776.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph776.prol ], [ 0, %scalar.ph776.preheader ]
  %i.zv = getelementptr inbounds nuw i8, ptr %.08613.us56.i.prol, i64 8 ; 2 uses
  %i.zw = load i64, ptr %.08613.us56.i.prol, align 8, !tbaa !74
  %i.zx = getelementptr inbounds nuw i8, ptr %.212.us57.i.prol, i64 8 ; 3 uses
  store i64 %i.zw, ptr %.212.us57.i.prol, align 8, !tbaa !74
  %i.zy = add nuw nsw i32 %.08414.us55.i.prol, 1  ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph776.prol.loopexit, label %scalar.ph776.prol, !llvm.loop !495

scalar.ph776.prol.loopexit:                       ; preds = %scalar.ph776.prol, %scalar.ph776.preheader
  %.lcssa826.unr = phi ptr [ poison, %scalar.ph776.preheader ], [ %i.zx, %scalar.ph776.prol ]
  %.08414.us55.i.unr = phi i32 [ %.08414.us55.i.ph, %scalar.ph776.preheader ], [ %i.zy, %scalar.ph776.prol ]
  %.08613.us56.i.unr = phi ptr [ %.08613.us56.i.ph, %scalar.ph776.preheader ], [ %i.zv, %scalar.ph776.prol ]
  %.212.us57.i.unr = phi ptr [ %.212.us57.i.ph, %scalar.ph776.preheader ], [ %i.zx, %scalar.ph776.prol ]
  %i.zz = sub i32 %.08414.us55.i.ph, %i.cn
  %i.aaa = icmp ugt i32 %i.zz, -8
  br i1 %i.aaa, label %..preheader7_crit_edge.us61.i, label %scalar.ph776

scalar.ph776:                                     ; preds = %scalar.ph776.prol.loopexit, %scalar.ph776
  %.08414.us55.i = phi i32 [ %i.aaz, %scalar.ph776 ], [ %.08414.us55.i.unr, %scalar.ph776.prol.loopexit ]
  %.08613.us56.i = phi ptr [ %i.aaw, %scalar.ph776 ], [ %.08613.us56.i.unr, %scalar.ph776.prol.loopexit ] ; 9 uses
  %.212.us57.i = phi ptr [ %i.aay, %scalar.ph776 ], [ %.212.us57.i.unr, %scalar.ph776.prol.loopexit ] ; 9 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %.08613.us56.i, i64 8
  %i.aac = load i64, ptr %.08613.us56.i, align 8, !tbaa !74
  %i.aad = getelementptr inbounds nuw i8, ptr %.212.us57.i, i64 8
  store i64 %i.aac, ptr %.212.us57.i, align 8, !tbaa !74
  %i.aae = getelementptr inbounds nuw i8, ptr %.08613.us56.i, i64 16
  %i.aaf = load i64, ptr %i.aab, align 8, !tbaa !74
  %i.aag = getelementptr inbounds nuw i8, ptr %.212.us57.i, i64 16
  store i64 %i.aaf, ptr %i.aad, align 8, !tbaa !74
  %i.aah = getelementptr inbounds nuw i8, ptr %.08613.us56.i, i64 24
  %i.aai = load i64, ptr %i.aae, align 8, !tbaa !74
  %i.aaj = getelementptr inbounds nuw i8, ptr %.212.us57.i, i64 24
  store i64 %i.aai, ptr %i.aag, align 8, !tbaa !74
  %i.aak = getelementptr inbounds nuw i8, ptr %.08613.us56.i, i64 32
  %i.aal = load i64, ptr %i.aah, align 8, !tbaa !74
  %i.aam = getelementptr inbounds nuw i8, ptr %.212.us57.i, i64 32
  store i64 %i.aal, ptr %i.aaj, align 8, !tbaa !74
  %i.aan = getelementptr inbounds nuw i8, ptr %.08613.us56.i, i64 40
  %i.aao = load i64, ptr %i.aak, align 8, !tbaa !74
  %i.aap = getelementptr inbounds nuw i8, ptr %.212.us57.i, i64 40
  store i64 %i.aao, ptr %i.aam, align 8, !tbaa !74
  %i.aaq = getelementptr inbounds nuw i8, ptr %.08613.us56.i, i64 48
  %i.aar = load i64, ptr %i.aan, align 8, !tbaa !74
  %i.aas = getelementptr inbounds nuw i8, ptr %.212.us57.i, i64 48
  store i64 %i.aar, ptr %i.aap, align 8, !tbaa !74
  %i.aat = getelementptr inbounds nuw i8, ptr %.08613.us56.i, i64 56
  %i.aau = load i64, ptr %i.aaq, align 8, !tbaa !74
  %i.aav = getelementptr inbounds nuw i8, ptr %.212.us57.i, i64 56
  store i64 %i.aau, ptr %i.aas, align 8, !tbaa !74
  %i.aaw = getelementptr inbounds nuw i8, ptr %.08613.us56.i, i64 64
  %i.aax = load i64, ptr %i.aat, align 8, !tbaa !74
  %i.aay = getelementptr inbounds nuw i8, ptr %.212.us57.i, i64 64 ; 2 uses
  store i64 %i.aax, ptr %i.aav, align 8, !tbaa !74
  %i.aaz = add nuw nsw i32 %.08414.us55.i, 8      ; 2 uses
  %exitcond.not.i68.7 = icmp eq i32 %i.aaz, %i.cn
  br i1 %exitcond.not.i68.7, label %..preheader7_crit_edge.us61.i, label %scalar.ph776, !llvm.loop !496

..preheader7_crit_edge.us61.i:                    ; preds = %scalar.ph776.prol.loopexit, %scalar.ph776, %middle.block787
  %.lcssa = phi ptr [ %i.zp, %middle.block787 ], [ %.lcssa826.unr, %scalar.ph776.prol.loopexit ], [ %i.aay, %scalar.ph776 ] ; 2 uses
  %i.aba = getelementptr inbounds [8 x i8], ptr %.08922.us54.i, i64 %i.qf ; 2 uses
  %i.abb = add nuw nsw i32 %.08724.us52.i, 1      ; 2 uses
  %exitcond130.not.i69 = icmp eq i32 %i.abb, %i.pu
  %indvar.next774 = add i64 %indvar773, 1
  br i1 %exitcond130.not.i69, label %.preheader6.i47, label %.preheader9.us51.i, !llvm.loop !480

.preheader6.i47:                                  ; preds = %..preheader7_crit_edge.us61.i, %..preheader8_crit_edge.us42.i, %..preheader7_crit_edge.us45.us.i, %._crit_edge.us.i75, %.preheader9.preheader.i, %bb.h
  %.089.lcssa.i = phi ptr [ %i.qa, %bb.h ], [ %i.yw, %..preheader8_crit_edge.us42.i ], [ %i.ur, %._crit_edge.us.i75 ], [ %scevgep.i, %.preheader9.preheader.i ], [ %i.xs, %..preheader7_crit_edge.us45.us.i ], [ %i.aba, %..preheader7_crit_edge.us61.i ] ; 2 uses
  %.088.lcssa.i = phi ptr [ %i.bb, %bb.h ], [ %.lcssa262, %..preheader8_crit_edge.us42.i ], [ %.lcssa270, %._crit_edge.us.i75 ], [ %i.bb, %.preheader9.preheader.i ], [ %.lcssa265, %..preheader7_crit_edge.us45.us.i ], [ %.lcssa, %..preheader7_crit_edge.us61.i ] ; 2 uses
  %i.abc = icmp sgt i32 %i.co, 0
  br i1 %i.abc, label %.preheader5.lr.ph.i56, label %._crit_edge84.i

.preheader5.lr.ph.i56:                            ; preds = %.preheader6.i47
  %i.abd = icmp sgt i32 %i.pw, 0
  %i.abe = icmp sgt i32 %i.cn, 0
  %i.abf = icmp sgt i32 %i.px, 0
  %wide.trip.count156.i = zext i32 %i.pw to i64   ; 12 uses
  %wide.trip.count162.i = zext i32 %i.px to i64   ; 7 uses
  %i.abg = shl nuw nsw i64 %wide.trip.count162.i, 3
  %i.abh = mul nsw i64 %wide.trip.count162.i, -8
  %i.abi = shl nuw nsw i64 %wide.trip.count156.i, 3 ; 2 uses
  %min.iters.check616 = icmp ult i32 %i.pw, 4
  %n.vec618 = and i64 %wide.trip.count156.i, 2147483644 ; 4 uses
  %i.abj = shl nuw nsw i64 %n.vec618, 3
  %cmp.n628 = icmp eq i64 %n.vec618, %wide.trip.count156.i
  %xtraiter882 = and i64 %wide.trip.count156.i, 3 ; 2 uses
  %lcmp.mod883.not = icmp eq i64 %xtraiter882, 0
  %i.abk = zext nneg i32 %i.cn to i64             ; 2 uses
  %min.iters.check592 = icmp ult i32 %i.cn, 4
  %n.vec594 = and i64 %i.abk, 2147483644          ; 4 uses
  %i.abl = trunc nuw nsw i64 %n.vec594 to i32
  %i.abm = shl nuw nsw i64 %n.vec594, 3           ; 2 uses
  %cmp.n603 = icmp eq i64 %n.vec594, %i.abk
  %min.iters.check572 = icmp ult i32 %i.px, 4
  %n.vec574 = and i64 %wide.trip.count162.i, 2147483644 ; 4 uses
  %i.abn = shl nuw nsw i64 %n.vec574, 3
  %cmp.n584 = icmp eq i64 %n.vec574, %wide.trip.count162.i
  %xtraiter888 = and i64 %wide.trip.count162.i, 3 ; 2 uses
  %lcmp.mod889.not = icmp eq i64 %xtraiter888, 0
  br label %.preheader5.i57

.preheader5.i57:                                  ; preds = %._crit_edge.i62, %.preheader5.lr.ph.i56
  %.08283.i = phi i32 [ 0, %.preheader5.lr.ph.i56 ], [ %i.afq, %._crit_edge.i62 ]
  %.482.i = phi ptr [ %.088.lcssa.i, %.preheader5.lr.ph.i56 ], [ %.7.lcssa.i63, %._crit_edge.i62 ] ; 7 uses
  %.19081.i = phi ptr [ %.089.lcssa.i, %.preheader5.lr.ph.i56 ], [ %.291.lcssa.i, %._crit_edge.i62 ] ; 12 uses
  %.19081.i589 = ptrtoaddr ptr %.19081.i to i64
  br i1 %i.abd, label %.lr.ph.i64.preheader, label %.preheader4.i58

.lr.ph.i64.preheader:                             ; preds = %.preheader5.i57
  br i1 %min.iters.check616, label %.lr.ph.i64.preheader814, label %vector.memcheck607

vector.memcheck607:                               ; preds = %.lr.ph.i64.preheader
  %scevgep608 = getelementptr i8, ptr %.482.i, i64 %i.abi
  %scevgep609 = getelementptr i8, ptr %.19081.i, i64 8 ; 2 uses
  %scevgep611 = getelementptr i8, ptr %scevgep609, i64 %i.abi
  %bound0612 = icmp ult ptr %.482.i, %scevgep611
  %bound1613 = icmp ult ptr %scevgep609, %scevgep608
  %found.conflict614 = and i1 %bound0612, %bound1613
  br i1 %found.conflict614, label %.lr.ph.i64.preheader814, label %vector.ph617

vector.ph617:                                     ; preds = %vector.memcheck607
  %i.abo = getelementptr i8, ptr %.482.i, i64 %i.abj ; 2 uses
  br label %vector.body619

vector.body619:                                   ; preds = %vector.body619, %vector.ph617
  %index620 = phi i64 [ 0, %vector.ph617 ], [ %index.next626, %vector.body619 ] ; 3 uses
  %i.abp = shl i64 %index620, 3
  %next.gep621 = getelementptr i8, ptr %.482.i, i64 %i.abp ; 2 uses
  %i.abq = sub nsw i64 %wide.trip.count156.i, %index620
  %i.abr = getelementptr inbounds nuw [8 x i8], ptr %.19081.i, i64 %i.abq ; 2 uses
  %i.abs = getelementptr inbounds i8, ptr %i.abr, i64 -8
  %i.abt = getelementptr inbounds i8, ptr %i.abr, i64 -24
  %wide.load622.a = load <2 x i64>, ptr %i.abs, align 8, !tbaa !74, !alias.scope !497
  %wide.load623 = load <2 x i64>, ptr %i.abt, align 8, !tbaa !74, !alias.scope !497
  %reverse624.a = shufflevector <2 x i64> %wide.load622.a, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse625 = shufflevector <2 x i64> %wide.load623, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.abu = getelementptr i8, ptr %next.gep621, i64 16
  store <2 x i64> %reverse624.a, ptr %next.gep621, align 8, !tbaa !74, !alias.scope !500, !noalias !497
  store <2 x i64> %reverse625, ptr %i.abu, align 8, !tbaa !74, !alias.scope !500, !noalias !497
  %index.next626 = add nuw i64 %index620, 4       ; 2 uses
  %i.abv = icmp eq i64 %index.next626, %n.vec618
  br i1 %i.abv, label %middle.block627, label %vector.body619, !llvm.loop !502

middle.block627:                                  ; preds = %vector.body619
  br i1 %cmp.n628, label %.preheader4.i58, label %.lr.ph.i64.preheader814

.lr.ph.i64.preheader814:                          ; preds = %vector.memcheck607, %.lr.ph.i64.preheader, %middle.block627
  %indvars.iv153.i.ph = phi i64 [ 0, %vector.memcheck607 ], [ 0, %.lr.ph.i64.preheader ], [ %n.vec618, %middle.block627 ] ; 3 uses
  %.569.i.ph = phi ptr [ %.482.i, %vector.memcheck607 ], [ %.482.i, %.lr.ph.i64.preheader ], [ %i.abo, %middle.block627 ] ; 2 uses
  br i1 %lcmp.mod883.not, label %.lr.ph.i64.prol.loopexit, label %.lr.ph.i64.prol

.lr.ph.i64.prol:                                  ; preds = %.lr.ph.i64.preheader814, %.lr.ph.i64.prol
  %indvars.iv153.i.prol = phi i64 [ %indvars.iv.next154.i.prol, %.lr.ph.i64.prol ], [ %indvars.iv153.i.ph, %.lr.ph.i64.preheader814 ] ; 2 uses
  %.569.i.prol = phi ptr [ %i.abz, %.lr.ph.i64.prol ], [ %.569.i.ph, %.lr.ph.i64.preheader814 ] ; 2 uses
  %prol.iter884 = phi i64 [ %prol.iter884.next, %.lr.ph.i64.prol ], [ 0, %.lr.ph.i64.preheader814 ]
  %i.abw = sub nsw i64 %wide.trip.count156.i, %indvars.iv153.i.prol
  %i.abx = getelementptr inbounds nuw [8 x i8], ptr %.19081.i, i64 %i.abw
  %i.aby = load i64, ptr %i.abx, align 8, !tbaa !74
  %i.abz = getelementptr inbounds nuw i8, ptr %.569.i.prol, i64 8 ; 3 uses
  store i64 %i.aby, ptr %.569.i.prol, align 8, !tbaa !74
  %indvars.iv.next154.i.prol = add nuw nsw i64 %indvars.iv153.i.prol, 1 ; 2 uses
  %prol.iter884.next = add i64 %prol.iter884, 1   ; 2 uses
  %prol.iter884.cmp.not = icmp eq i64 %prol.iter884.next, %xtraiter882
  br i1 %prol.iter884.cmp.not, label %.lr.ph.i64.prol.loopexit, label %.lr.ph.i64.prol, !llvm.loop !503

.lr.ph.i64.prol.loopexit:                         ; preds = %.lr.ph.i64.prol, %.lr.ph.i64.preheader814
  %.lcssa838.unr.a = phi ptr [ poison, %.lr.ph.i64.preheader814 ], [ %i.abz, %.lr.ph.i64.prol ]
  %indvars.iv153.i.unr = phi i64 [ %indvars.iv153.i.ph, %.lr.ph.i64.preheader814 ], [ %indvars.iv.next154.i.prol, %.lr.ph.i64.prol ]
  %.569.i.unr = phi ptr [ %.569.i.ph, %.lr.ph.i64.preheader814 ], [ %i.abz, %.lr.ph.i64.prol ]
  %i.aca = sub nsw i64 %indvars.iv153.i.ph, %wide.trip.count156.i
  %i.acb = icmp ugt i64 %i.aca, -4
  br i1 %i.acb, label %.preheader4.i58, label %.lr.ph.i64.preheader814.new

.lr.ph.i64.preheader814.new:                      ; preds = %.lr.ph.i64.prol.loopexit
  %invariant.gep995 = getelementptr [8 x i8], ptr %.19081.i, i64 %wide.trip.count156.i
  br label %.lr.ph.i64

._crit_edge84.i:                                  ; preds = %._crit_edge.i62, %.preheader6.i47
  %.190.lcssa.i = phi ptr [ %.089.lcssa.i, %.preheader6.i47 ], [ %.291.lcssa.i, %._crit_edge.i62 ] ; 3 uses
  %.4.lcssa.i48 = phi ptr [ %.088.lcssa.i, %.preheader6.i47 ], [ %.7.lcssa.i63, %._crit_edge.i62 ]
  %i.acc = icmp sgt i32 %i.pv, 0
  br i1 %i.acc, label %.preheader2.lr.ph.i49, label %_ZN4ncnn3MatD2Ev.exit34

.preheader2.lr.ph.i49:                            ; preds = %._crit_edge84.i
  %.190.lcssa.i522 = ptrtoaddr ptr %.190.lcssa.i to i64
  %i.acd = shl i32 %i.cn, 1
  %i.ace = sext i32 %i.acd to i64                 ; 4 uses
  %i.acf = sub nsw i64 0, %i.ace
  %i.acg = getelementptr inbounds [8 x i8], ptr %.190.lcssa.i, i64 %i.acf
  %i.ach = icmp sgt i32 %i.pw, 0
  %i.aci = icmp sgt i32 %i.cn, 0
  %i.acj = icmp sgt i32 %i.px, 0
  %i.ack = sub nsw i64 0, %i.da
  %wide.trip.count168.i = zext i32 %i.pw to i64   ; 12 uses
  %wide.trip.count174.i = zext i32 %i.px to i64   ; 7 uses
  %i.acl = shl nuw nsw i64 %wide.trip.count174.i, 3
  %i.acm = mul nsw i64 %wide.trip.count174.i, -8
  %i.acn = shl nsw i64 %i.ace, 3
  %i.aco = sub i64 %i.acn, %.190.lcssa.i522
  %i.acp = shl nsw i64 %i.da, 3                   ; 2 uses
  %i.acq = shl nuw nsw i64 %wide.trip.count168.i, 3 ; 2 uses
  %scevgep542 = getelementptr i8, ptr %.190.lcssa.i, i64 8 ; 2 uses
  %14 = mul nsw i64 %i.ace, -8
  %scevgep543 = getelementptr i8, ptr %scevgep542, i64 %14
  %i.acr = add nsw i32 %i.pv, -1
  %i.acs = zext i32 %i.acr to i64
  %i.act = mul i64 %i.acp, %i.acs
  %15 = shl nsw i64 %i.ace, 3
  %i.acu = add i64 %i.act, %15
  %i.acv = sub i64 %i.acq, %i.acu
  %scevgep544 = getelementptr i8, ptr %scevgep542, i64 %i.acv
  %min.iters.check549 = icmp ult i32 %i.pw, 4
  %stride.check = icmp sgt i32 %i.cn, 0
  %n.vec551 = and i64 %wide.trip.count168.i, 2147483644 ; 4 uses
  %i.acw = shl nuw nsw i64 %n.vec551, 3
  %cmp.n561 = icmp eq i64 %n.vec551, %wide.trip.count168.i
  %xtraiter891 = and i64 %wide.trip.count168.i, 3 ; 2 uses
  %lcmp.mod892.not = icmp eq i64 %xtraiter891, 0
  %i.acx = zext nneg i32 %i.cn to i64             ; 2 uses
  %min.iters.check525 = icmp ult i32 %i.cn, 4
  %n.vec527 = and i64 %i.acx, 2147483644          ; 4 uses
  %i.acy = trunc nuw nsw i64 %n.vec527 to i32
  %i.acz = shl nuw nsw i64 %n.vec527, 3           ; 2 uses
  %cmp.n536 = icmp eq i64 %n.vec527, %i.acx
  %min.iters.check506 = icmp ult i32 %i.px, 4
  %n.vec508 = and i64 %wide.trip.count174.i, 2147483644 ; 4 uses
  %i.ada = shl nuw nsw i64 %n.vec508, 3
  %cmp.n517 = icmp eq i64 %n.vec508, %wide.trip.count174.i
  %xtraiter897 = and i64 %wide.trip.count174.i, 3 ; 2 uses
  %lcmp.mod898.not = icmp eq i64 %xtraiter897, 0
  br label %.preheader2.i50

.preheader4.i58:                                  ; preds = %.lr.ph.i64.prol.loopexit, %.lr.ph.i64, %middle.block627, %.preheader5.i57
  %.5.lcssa.i59 = phi ptr [ %.482.i, %.preheader5.i57 ], [ %i.abo, %middle.block627 ], [ %.lcssa838.unr.a, %.lr.ph.i64.prol.loopexit ], [ %i.aec, %.lr.ph.i64 ] ; 5 uses
  br i1 %i.abe, label %.lr.ph74.i.preheader, label %.preheader3.i60

.lr.ph74.i.preheader:                             ; preds = %.preheader4.i58
  %.5.lcssa.i59588 = ptrtoaddr ptr %.5.lcssa.i59 to i64
  %i.adb = sub i64 %.19081.i589, %.5.lcssa.i59588
  %diff.check590 = icmp ugt i64 %i.adb, -32
  %or.cond802 = select i1 %min.iters.check592, i1 true, i1 %diff.check590
  br i1 %or.cond802, label %.lr.ph74.i.preheader813, label %vector.ph593

vector.ph593:                                     ; preds = %.lr.ph74.i.preheader
  %i.adc = getelementptr i8, ptr %.5.lcssa.i59, i64 %i.abm ; 2 uses
  %i.add = getelementptr i8, ptr %.19081.i, i64 %i.abm ; 2 uses
  br label %vector.body595

vector.body595:                                   ; preds = %vector.body595, %vector.ph593
  %index596 = phi i64 [ 0, %vector.ph593 ], [ %index.next601, %vector.body595 ] ; 2 uses
  %i.ade = shl i64 %index596, 3                   ; 2 uses
  %next.gep597 = getelementptr i8, ptr %.5.lcssa.i59, i64 %i.ade ; 2 uses
  %next.gep598 = getelementptr i8, ptr %.19081.i, i64 %i.ade ; 2 uses
  %i.adf = getelementptr i8, ptr %next.gep598, i64 16
  %wide.load599 = load <2 x i64>, ptr %next.gep598, align 8, !tbaa !74
  %wide.load600 = load <2 x i64>, ptr %i.adf, align 8, !tbaa !74
  %i.adg = getelementptr i8, ptr %next.gep597, i64 16
  store <2 x i64> %wide.load599, ptr %next.gep597, align 8, !tbaa !74
  store <2 x i64> %wide.load600, ptr %i.adg, align 8, !tbaa !74
  %index.next601 = add nuw i64 %index596, 4       ; 2 uses
  %i.adh = icmp eq i64 %index.next601, %n.vec594
  br i1 %i.adh, label %middle.block602, label %vector.body595, !llvm.loop !504

middle.block602:                                  ; preds = %vector.body595
  br i1 %cmp.n603, label %.preheader3.i60, label %.lr.ph74.i.preheader813

.lr.ph74.i.preheader813:                          ; preds = %.lr.ph74.i.preheader, %middle.block602
  %.08073.i.ph = phi i32 [ 0, %.lr.ph74.i.preheader ], [ %i.abl, %middle.block602 ] ; 4 uses
  %.672.i.ph = phi ptr [ %.5.lcssa.i59, %.lr.ph74.i.preheader ], [ %i.adc, %middle.block602 ] ; 2 uses
  %.29171.i.ph = phi ptr [ %.19081.i, %.lr.ph74.i.preheader ], [ %i.add, %middle.block602 ] ; 2 uses
  %i.adi = sub i32 %i.cn, %.08073.i.ph
  %xtraiter885 = and i32 %i.adi, 7                ; 2 uses
  %lcmp.mod886.not = icmp eq i32 %xtraiter885, 0
  br i1 %lcmp.mod886.not, label %.lr.ph74.i.prol.loopexit, label %.lr.ph74.i.prol

.lr.ph74.i.prol:                                  ; preds = %.lr.ph74.i.preheader813, %.lr.ph74.i.prol
  %.08073.i.prol = phi i32 [ %i.adm, %.lr.ph74.i.prol ], [ %.08073.i.ph, %.lr.ph74.i.preheader813 ]
  %.672.i.prol = phi ptr [ %i.adl, %.lr.ph74.i.prol ], [ %.672.i.ph, %.lr.ph74.i.preheader813 ] ; 2 uses
  %.29171.i.prol = phi ptr [ %i.adj, %.lr.ph74.i.prol ], [ %.29171.i.ph, %.lr.ph74.i.preheader813 ] ; 2 uses
  %prol.iter887 = phi i32 [ %prol.iter887.next, %.lr.ph74.i.prol ], [ 0, %.lr.ph74.i.preheader813 ]
  %i.adj = getelementptr inbounds nuw i8, ptr %.29171.i.prol, i64 8 ; 3 uses
  %i.adk = load i64, ptr %.29171.i.prol, align 8, !tbaa !74
  %i.adl = getelementptr inbounds nuw i8, ptr %.672.i.prol, i64 8 ; 3 uses
  store i64 %i.adk, ptr %.672.i.prol, align 8, !tbaa !74
  %i.adm = add nuw nsw i32 %.08073.i.prol, 1      ; 2 uses
  %prol.iter887.next = add i32 %prol.iter887, 1   ; 2 uses
  %prol.iter887.cmp.not = icmp eq i32 %prol.iter887.next, %xtraiter885
  br i1 %prol.iter887.cmp.not, label %.lr.ph74.i.prol.loopexit, label %.lr.ph74.i.prol, !llvm.loop !505

.lr.ph74.i.prol.loopexit:                         ; preds = %.lr.ph74.i.prol, %.lr.ph74.i.preheader813
  %.lcssa840.unr.a = phi ptr [ poison, %.lr.ph74.i.preheader813 ], [ %i.adj, %.lr.ph74.i.prol ]
  %.lcssa839.unr.a = phi ptr [ poison, %.lr.ph74.i.preheader813 ], [ %i.adl, %.lr.ph74.i.prol ]
  %.08073.i.unr = phi i32 [ %.08073.i.ph, %.lr.ph74.i.preheader813 ], [ %i.adm, %.lr.ph74.i.prol ]
  %.672.i.unr = phi ptr [ %.672.i.ph, %.lr.ph74.i.preheader813 ], [ %i.adl, %.lr.ph74.i.prol ]
  %.29171.i.unr = phi ptr [ %.29171.i.ph, %.lr.ph74.i.preheader813 ], [ %i.adj, %.lr.ph74.i.prol ]
  %i.adn = sub i32 %.08073.i.ph, %i.cn
  %i.ado = icmp ugt i32 %i.adn, -8
  br i1 %i.ado, label %.preheader3.i60, label %.lr.ph74.i

.lr.ph.i64:                                       ; preds = %.lr.ph.i64, %.lr.ph.i64.preheader814.new
  %indvars.iv153.i = phi i64 [ %indvars.iv153.i.unr, %.lr.ph.i64.preheader814.new ], [ %indvars.iv.next154.i.3, %.lr.ph.i64 ] ; 5 uses
  %.569.i = phi ptr [ %.569.i.unr, %.lr.ph.i64.preheader814.new ], [ %i.aec, %.lr.ph.i64 ] ; 5 uses
  %i.adp = sub nsw i64 %wide.trip.count156.i, %indvars.iv153.i
  %i.adq = getelementptr inbounds nuw [8 x i8], ptr %.19081.i, i64 %i.adp
  %i.adr = load i64, ptr %i.adq, align 8, !tbaa !74
  %i.ads = getelementptr inbounds nuw i8, ptr %.569.i, i64 8
  store i64 %i.adr, ptr %.569.i, align 8, !tbaa !74
  %indvars.iv.next154.i.neg = xor i64 %indvars.iv153.i, -1
  %gep996 = getelementptr [8 x i8], ptr %invariant.gep995, i64 %indvars.iv.next154.i.neg
  %i.adt = load i64, ptr %gep996, align 8, !tbaa !74
  %i.adu = getelementptr inbounds nuw i8, ptr %.569.i, i64 16
  store i64 %i.adt, ptr %i.ads, align 8, !tbaa !74
  %indvars.iv.next154.i.1 = add nuw nsw i64 %indvars.iv153.i, 2
  %i.adv = sub nsw i64 %wide.trip.count156.i, %indvars.iv.next154.i.1
  %i.adw = getelementptr inbounds nuw [8 x i8], ptr %.19081.i, i64 %i.adv
  %i.adx = load i64, ptr %i.adw, align 8, !tbaa !74
  %i.ady = getelementptr inbounds nuw i8, ptr %.569.i, i64 24
  store i64 %i.adx, ptr %i.adu, align 8, !tbaa !74
  %indvars.iv.next154.i.2 = add nuw nsw i64 %indvars.iv153.i, 3
  %i.adz = sub nsw i64 %wide.trip.count156.i, %indvars.iv.next154.i.2
  %i.aea = getelementptr inbounds nuw [8 x i8], ptr %.19081.i, i64 %i.adz
  %i.aeb = load i64, ptr %i.aea, align 8, !tbaa !74
  %i.aec = getelementptr inbounds nuw i8, ptr %.569.i, i64 32 ; 2 uses
  store i64 %i.aeb, ptr %i.ady, align 8, !tbaa !74
  %indvars.iv.next154.i.3 = add nuw nsw i64 %indvars.iv153.i, 4 ; 2 uses
  %exitcond157.not.i.3 = icmp eq i64 %indvars.iv.next154.i.3, %wide.trip.count156.i
  br i1 %exitcond157.not.i.3, label %.preheader4.i58, label %.lr.ph.i64, !llvm.loop !506

.preheader3.i60:                                  ; preds = %.lr.ph74.i.prol.loopexit, %.lr.ph74.i, %middle.block602, %.preheader4.i58
  %.291.lcssa.i = phi ptr [ %.19081.i, %.preheader4.i58 ], [ %i.add, %middle.block602 ], [ %.lcssa840.unr.a, %.lr.ph74.i.prol.loopexit ], [ %i.afm, %.lr.ph74.i ] ; 9 uses
  %.6.lcssa.i61 = phi ptr [ %.5.lcssa.i59, %.preheader4.i58 ], [ %i.adc, %middle.block602 ], [ %.lcssa839.unr.a, %.lr.ph74.i.prol.loopexit ], [ %i.afo, %.lr.ph74.i ] ; 7 uses
  br i1 %i.abf, label %.lr.ph79.i.preheader, label %._crit_edge.i62

.lr.ph79.i.preheader:                             ; preds = %.preheader3.i60
  br i1 %min.iters.check572, label %.lr.ph79.i.preheader812, label %vector.memcheck564

vector.memcheck564:                               ; preds = %.lr.ph79.i.preheader
  %scevgep565 = getelementptr i8, ptr %.6.lcssa.i61, i64 %i.abg
  %scevgep566 = getelementptr i8, ptr %.291.lcssa.i, i64 -8 ; 2 uses
  %scevgep567 = getelementptr i8, ptr %scevgep566, i64 %i.abh
  %bound0568 = icmp ult ptr %.6.lcssa.i61, %scevgep566
  %bound1569 = icmp ult ptr %scevgep567, %scevgep565
  %found.conflict570 = and i1 %bound0568, %bound1569
  br i1 %found.conflict570, label %.lr.ph79.i.preheader812, label %vector.ph573

vector.ph573:                                     ; preds = %vector.memcheck564
  %i.aed = getelementptr i8, ptr %.6.lcssa.i61, i64 %i.abn ; 2 uses
  br label %vector.body575

vector.body575:                                   ; preds = %vector.body575, %vector.ph573
  %index576 = phi i64 [ 0, %vector.ph573 ], [ %index.next582, %vector.body575 ] ; 3 uses
  %i.aee = shl i64 %index576, 3
  %next.gep577 = getelementptr i8, ptr %.6.lcssa.i61, i64 %i.aee ; 2 uses
  %i.aef = sub nuw nsw i64 -2, %index576
  %i.aeg = getelementptr inbounds [8 x i8], ptr %.291.lcssa.i, i64 %i.aef ; 2 uses
  %i.aeh = getelementptr inbounds i8, ptr %i.aeg, i64 -8
  %i.aei = getelementptr inbounds i8, ptr %i.aeg, i64 -24
  %wide.load578 = load <2 x i64>, ptr %i.aeh, align 8, !tbaa !74, !alias.scope !507
  %wide.load579 = load <2 x i64>, ptr %i.aei, align 8, !tbaa !74, !alias.scope !507
  %reverse580 = shufflevector <2 x i64> %wide.load578, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse581 = shufflevector <2 x i64> %wide.load579, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.aej = getelementptr i8, ptr %next.gep577, i64 16
  store <2 x i64> %reverse580, ptr %next.gep577, align 8, !tbaa !74, !alias.scope !510, !noalias !507
  store <2 x i64> %reverse581, ptr %i.aej, align 8, !tbaa !74, !alias.scope !510, !noalias !507
  %index.next582 = add nuw i64 %index576, 4       ; 2 uses
  %i.aek = icmp eq i64 %index.next582, %n.vec574
  br i1 %i.aek, label %middle.block583, label %vector.body575, !llvm.loop !512

middle.block583:                                  ; preds = %vector.body575
  br i1 %cmp.n584, label %._crit_edge.i62, label %.lr.ph79.i.preheader812

.lr.ph79.i.preheader812:                          ; preds = %vector.memcheck564, %.lr.ph79.i.preheader, %middle.block583
  %indvars.iv159.i.ph = phi i64 [ 0, %vector.memcheck564 ], [ 0, %.lr.ph79.i.preheader ], [ %n.vec574, %middle.block583 ] ; 3 uses
  %.777.i.ph = phi ptr [ %.6.lcssa.i61, %vector.memcheck564 ], [ %.6.lcssa.i61, %.lr.ph79.i.preheader ], [ %i.aed, %middle.block583 ] ; 2 uses
  br i1 %lcmp.mod889.not, label %.lr.ph79.i.prol.loopexit, label %.lr.ph79.i.prol

.lr.ph79.i.prol:                                  ; preds = %.lr.ph79.i.preheader812, %.lr.ph79.i.prol
  %indvars.iv159.i.prol = phi i64 [ %indvars.iv.next160.i.prol, %.lr.ph79.i.prol ], [ %indvars.iv159.i.ph, %.lr.ph79.i.preheader812 ] ; 2 uses
  %.777.i.prol = phi ptr [ %i.aeo, %.lr.ph79.i.prol ], [ %.777.i.ph, %.lr.ph79.i.preheader812 ] ; 2 uses
  %prol.iter890 = phi i64 [ %prol.iter890.next, %.lr.ph79.i.prol ], [ 0, %.lr.ph79.i.preheader812 ]
  %i.ael = sub nuw nsw i64 -2, %indvars.iv159.i.prol
  %i.aem = getelementptr inbounds [8 x i8], ptr %.291.lcssa.i, i64 %i.ael
  %i.aen = load i64, ptr %i.aem, align 8, !tbaa !74
  %i.aeo = getelementptr inbounds nuw i8, ptr %.777.i.prol, i64 8 ; 3 uses
  store i64 %i.aen, ptr %.777.i.prol, align 8, !tbaa !74
  %indvars.iv.next160.i.prol = add nuw nsw i64 %indvars.iv159.i.prol, 1 ; 2 uses
  %prol.iter890.next = add i64 %prol.iter890, 1   ; 2 uses
  %prol.iter890.cmp.not = icmp eq i64 %prol.iter890.next, %xtraiter888
  br i1 %prol.iter890.cmp.not, label %.lr.ph79.i.prol.loopexit, label %.lr.ph79.i.prol, !llvm.loop !513

.lr.ph79.i.prol.loopexit:                         ; preds = %.lr.ph79.i.prol, %.lr.ph79.i.preheader812
  %.lcssa841.unr.a = phi ptr [ poison, %.lr.ph79.i.preheader812 ], [ %i.aeo, %.lr.ph79.i.prol ]
  %indvars.iv159.i.unr = phi i64 [ %indvars.iv159.i.ph, %.lr.ph79.i.preheader812 ], [ %indvars.iv.next160.i.prol, %.lr.ph79.i.prol ]
  %.777.i.unr = phi ptr [ %.777.i.ph, %.lr.ph79.i.preheader812 ], [ %i.aeo, %.lr.ph79.i.prol ]
  %i.aep = sub nsw i64 %indvars.iv159.i.ph, %wide.trip.count162.i
  %i.aeq = icmp ugt i64 %i.aep, -4
  br i1 %i.aeq, label %._crit_edge.i62, label %.lr.ph79.i

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.prol.loopexit, %.lr.ph74.i
  %.08073.i = phi i32 [ %i.afp, %.lr.ph74.i ], [ %.08073.i.unr, %.lr.ph74.i.prol.loopexit ]
  %.672.i = phi ptr [ %i.afo, %.lr.ph74.i ], [ %.672.i.unr, %.lr.ph74.i.prol.loopexit ] ; 9 uses
  %.29171.i = phi ptr [ %i.afm, %.lr.ph74.i ], [ %.29171.i.unr, %.lr.ph74.i.prol.loopexit ] ; 9 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %.29171.i, i64 8
  %i.aes = load i64, ptr %.29171.i, align 8, !tbaa !74
  %i.aet = getelementptr inbounds nuw i8, ptr %.672.i, i64 8
  store i64 %i.aes, ptr %.672.i, align 8, !tbaa !74
  %i.aeu = getelementptr inbounds nuw i8, ptr %.29171.i, i64 16
  %i.aev = load i64, ptr %i.aer, align 8, !tbaa !74
  %i.aew = getelementptr inbounds nuw i8, ptr %.672.i, i64 16
  store i64 %i.aev, ptr %i.aet, align 8, !tbaa !74
  %i.aex = getelementptr inbounds nuw i8, ptr %.29171.i, i64 24
  %i.aey = load i64, ptr %i.aeu, align 8, !tbaa !74
  %i.aez = getelementptr inbounds nuw i8, ptr %.672.i, i64 24
  store i64 %i.aey, ptr %i.aew, align 8, !tbaa !74
  %i.afa = getelementptr inbounds nuw i8, ptr %.29171.i, i64 32
  %i.afb = load i64, ptr %i.aex, align 8, !tbaa !74
  %i.afc = getelementptr inbounds nuw i8, ptr %.672.i, i64 32
  store i64 %i.afb, ptr %i.aez, align 8, !tbaa !74
  %i.afd = getelementptr inbounds nuw i8, ptr %.29171.i, i64 40
  %i.afe = load i64, ptr %i.afa, align 8, !tbaa !74
  %i.aff = getelementptr inbounds nuw i8, ptr %.672.i, i64 40
  store i64 %i.afe, ptr %i.afc, align 8, !tbaa !74
  %i.afg = getelementptr inbounds nuw i8, ptr %.29171.i, i64 48
  %i.afh = load i64, ptr %i.afd, align 8, !tbaa !74
  %i.afi = getelementptr inbounds nuw i8, ptr %.672.i, i64 48
  store i64 %i.afh, ptr %i.aff, align 8, !tbaa !74
  %i.afj = getelementptr inbounds nuw i8, ptr %.29171.i, i64 56
  %i.afk = load i64, ptr %i.afg, align 8, !tbaa !74
  %i.afl = getelementptr inbounds nuw i8, ptr %.672.i, i64 56
  store i64 %i.afk, ptr %i.afi, align 8, !tbaa !74
  %i.afm = getelementptr inbounds nuw i8, ptr %.29171.i, i64 64 ; 2 uses
  %i.afn = load i64, ptr %i.afj, align 8, !tbaa !74
  %i.afo = getelementptr inbounds nuw i8, ptr %.672.i, i64 64 ; 2 uses
  store i64 %i.afn, ptr %i.afl, align 8, !tbaa !74
  %i.afp = add nuw nsw i32 %.08073.i, 8           ; 2 uses
  %exitcond158.not.i.7 = icmp eq i32 %i.afp, %i.cn
  br i1 %exitcond158.not.i.7, label %.preheader3.i60, label %.lr.ph74.i, !llvm.loop !514

._crit_edge.i62:                                  ; preds = %.lr.ph79.i.prol.loopexit, %.lr.ph79.i, %middle.block583, %.preheader3.i60
  %.7.lcssa.i63 = phi ptr [ %.6.lcssa.i61, %.preheader3.i60 ], [ %i.aed, %middle.block583 ], [ %.lcssa841.unr.a, %.lr.ph79.i.prol.loopexit ], [ %i.agg, %.lr.ph79.i ] ; 2 uses
  %i.afq = add nuw nsw i32 %.08283.i, 1           ; 2 uses
  %exitcond164.not.i = icmp eq i32 %i.afq, %i.co
  br i1 %exitcond164.not.i, label %._crit_edge84.i, label %.preheader5.i57, !llvm.loop !515

.lr.ph79.i:                                       ; preds = %.lr.ph79.i.prol.loopexit, %.lr.ph79.i
  %indvars.iv159.i = phi i64 [ %indvars.iv.next160.i.3, %.lr.ph79.i ], [ %indvars.iv159.i.unr, %.lr.ph79.i.prol.loopexit ] ; 5 uses
  %.777.i = phi ptr [ %i.agg, %.lr.ph79.i ], [ %.777.i.unr, %.lr.ph79.i.prol.loopexit ] ; 5 uses
  %i.afr = sub nuw nsw i64 -2, %indvars.iv159.i
  %i.afs = getelementptr inbounds [8 x i8], ptr %.291.lcssa.i, i64 %i.afr
  %i.aft = load i64, ptr %i.afs, align 8, !tbaa !74
  %i.afu = getelementptr inbounds nuw i8, ptr %.777.i, i64 8
  store i64 %i.aft, ptr %.777.i, align 8, !tbaa !74
  %i.afv = sub nuw nsw i64 -3, %indvars.iv159.i
  %i.afw = getelementptr inbounds [8 x i8], ptr %.291.lcssa.i, i64 %i.afv
  %i.afx = load i64, ptr %i.afw, align 8, !tbaa !74
  %i.afy = getelementptr inbounds nuw i8, ptr %.777.i, i64 16
  store i64 %i.afx, ptr %i.afu, align 8, !tbaa !74
  %i.afz = sub nuw nsw i64 -4, %indvars.iv159.i
  %i.aga = getelementptr inbounds [8 x i8], ptr %.291.lcssa.i, i64 %i.afz
  %i.agb = load i64, ptr %i.aga, align 8, !tbaa !74
  %i.agc = getelementptr inbounds nuw i8, ptr %.777.i, i64 24
  store i64 %i.agb, ptr %i.afy, align 8, !tbaa !74
  %i.agd = sub nuw nsw i64 -5, %indvars.iv159.i
  %i.age = getelementptr inbounds [8 x i8], ptr %.291.lcssa.i, i64 %i.agd
  %i.agf = load i64, ptr %i.age, align 8, !tbaa !74
  %i.agg = getelementptr inbounds nuw i8, ptr %.777.i, i64 32 ; 2 uses
  store i64 %i.agf, ptr %i.agc, align 8, !tbaa !74
  %indvars.iv.next160.i.3 = add nuw nsw i64 %indvars.iv159.i, 4 ; 2 uses
  %exitcond163.not.i.3 = icmp eq i64 %indvars.iv.next160.i.3, %wide.trip.count162.i
  br i1 %exitcond163.not.i.3, label %._crit_edge.i62, label %.lr.ph79.i, !llvm.loop !516

.preheader2.i50:                                  ; preds = %._crit_edge100.i, %.preheader2.lr.ph.i49
  %indvar = phi i64 [ %indvar.next, %._crit_edge100.i ], [ 0, %.preheader2.lr.ph.i49 ] ; 2 uses
  %.078104.i = phi i32 [ %i.ajp, %._crit_edge100.i ], [ 0, %.preheader2.lr.ph.i49 ]
  %.8103.i = phi ptr [ %.11.lcssa.i55, %._crit_edge100.i ], [ %.4.lcssa.i48, %.preheader2.lr.ph.i49 ] ; 7 uses
  %.392102.i = phi ptr [ %i.ajo, %._crit_edge100.i ], [ %i.acg, %.preheader2.lr.ph.i49 ] ; 12 uses
  %i.agh = mul i64 %i.acp, %indvar
  %i.agi = add i64 %i.aco, %i.agh
  br i1 %i.ach, label %.lr.ph89.i.preheader, label %.preheader1.i51

.lr.ph89.i.preheader:                             ; preds = %.preheader2.i50
  br i1 %min.iters.check549, label %.lr.ph89.i.preheader811, label %vector.memcheck540

vector.memcheck540:                               ; preds = %.lr.ph89.i.preheader
  %scevgep541 = getelementptr i8, ptr %.8103.i, i64 %i.acq
  %bound0545 = icmp ult ptr %.8103.i, %scevgep544
  %bound1546 = icmp ult ptr %scevgep543, %scevgep541
  %found.conflict547 = and i1 %bound0545, %bound1546
  %i.agj = or i1 %found.conflict547, %stride.check
  br i1 %i.agj, label %.lr.ph89.i.preheader811, label %vector.ph550

vector.ph550:                                     ; preds = %vector.memcheck540
  %i.agk = getelementptr i8, ptr %.8103.i, i64 %i.acw ; 2 uses
  br label %vector.body552

vector.body552:                                   ; preds = %vector.body552, %vector.ph550
  %index553 = phi i64 [ 0, %vector.ph550 ], [ %index.next559, %vector.body552 ] ; 3 uses
  %i.agl = shl i64 %index553, 3
  %next.gep554 = getelementptr i8, ptr %.8103.i, i64 %i.agl ; 2 uses
  %i.agm = sub nsw i64 %wide.trip.count168.i, %index553
  %i.agn = getelementptr inbounds nuw [8 x i8], ptr %.392102.i, i64 %i.agm ; 2 uses
  %i.ago = getelementptr inbounds i8, ptr %i.agn, i64 -8
  %i.agp = getelementptr inbounds i8, ptr %i.agn, i64 -24
  %wide.load555 = load <2 x i64>, ptr %i.ago, align 8, !tbaa !74, !alias.scope !517
  %wide.load556 = load <2 x i64>, ptr %i.agp, align 8, !tbaa !74, !alias.scope !517
  %reverse557 = shufflevector <2 x i64> %wide.load555, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse558 = shufflevector <2 x i64> %wide.load556, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.agq = getelementptr i8, ptr %next.gep554, i64 16
  store <2 x i64> %reverse557, ptr %next.gep554, align 8, !tbaa !74, !alias.scope !520, !noalias !517
  store <2 x i64> %reverse558, ptr %i.agq, align 8, !tbaa !74, !alias.scope !520, !noalias !517
  %index.next559 = add nuw i64 %index553, 4       ; 2 uses
  %i.agr = icmp eq i64 %index.next559, %n.vec551
  br i1 %i.agr, label %middle.block560, label %vector.body552, !llvm.loop !522

middle.block560:                                  ; preds = %vector.body552
  br i1 %cmp.n561, label %.preheader1.i51, label %.lr.ph89.i.preheader811

.lr.ph89.i.preheader811:                          ; preds = %vector.memcheck540, %.lr.ph89.i.preheader, %middle.block560
  %indvars.iv165.i.ph = phi i64 [ 0, %vector.memcheck540 ], [ 0, %.lr.ph89.i.preheader ], [ %n.vec551, %middle.block560 ] ; 3 uses
  %.987.i.ph = phi ptr [ %.8103.i, %vector.memcheck540 ], [ %.8103.i, %.lr.ph89.i.preheader ], [ %i.agk, %middle.block560 ] ; 2 uses
  br i1 %lcmp.mod892.not, label %.lr.ph89.i.prol.loopexit, label %.lr.ph89.i.prol

.lr.ph89.i.prol:                                  ; preds = %.lr.ph89.i.preheader811, %.lr.ph89.i.prol
  %indvars.iv165.i.prol = phi i64 [ %indvars.iv.next166.i.prol, %.lr.ph89.i.prol ], [ %indvars.iv165.i.ph, %.lr.ph89.i.preheader811 ] ; 2 uses
  %.987.i.prol = phi ptr [ %i.agv, %.lr.ph89.i.prol ], [ %.987.i.ph, %.lr.ph89.i.preheader811 ] ; 2 uses
  %prol.iter893 = phi i64 [ %prol.iter893.next, %.lr.ph89.i.prol ], [ 0, %.lr.ph89.i.preheader811 ]
  %i.ags = sub nsw i64 %wide.trip.count168.i, %indvars.iv165.i.prol
  %i.agt = getelementptr inbounds nuw [8 x i8], ptr %.392102.i, i64 %i.ags
  %i.agu = load i64, ptr %i.agt, align 8, !tbaa !74
  %i.agv = getelementptr inbounds nuw i8, ptr %.987.i.prol, i64 8 ; 3 uses
  store i64 %i.agu, ptr %.987.i.prol, align 8, !tbaa !74
  %indvars.iv.next166.i.prol = add nuw nsw i64 %indvars.iv165.i.prol, 1 ; 2 uses
  %prol.iter893.next = add i64 %prol.iter893, 1   ; 2 uses
  %prol.iter893.cmp.not = icmp eq i64 %prol.iter893.next, %xtraiter891
  br i1 %prol.iter893.cmp.not, label %.lr.ph89.i.prol.loopexit, label %.lr.ph89.i.prol, !llvm.loop !523

.lr.ph89.i.prol.loopexit:                         ; preds = %.lr.ph89.i.prol, %.lr.ph89.i.preheader811
  %.lcssa842.unr = phi ptr [ poison, %.lr.ph89.i.preheader811 ], [ %i.agv, %.lr.ph89.i.prol ]
  %indvars.iv165.i.unr = phi i64 [ %indvars.iv165.i.ph, %.lr.ph89.i.preheader811 ], [ %indvars.iv.next166.i.prol, %.lr.ph89.i.prol ]
  %.987.i.unr = phi ptr [ %.987.i.ph, %.lr.ph89.i.preheader811 ], [ %i.agv, %.lr.ph89.i.prol ]
  %i.agw = sub nsw i64 %indvars.iv165.i.ph, %wide.trip.count168.i
  %i.agx = icmp ugt i64 %i.agw, -4
  br i1 %i.agx, label %.preheader1.i51, label %.lr.ph89.i.preheader811.new

.lr.ph89.i.preheader811.new:                      ; preds = %.lr.ph89.i.prol.loopexit
  %invariant.gep997 = getelementptr [8 x i8], ptr %.392102.i, i64 %wide.trip.count168.i
  br label %.lr.ph89.i

.preheader1.i51:                                  ; preds = %.lr.ph89.i.prol.loopexit, %.lr.ph89.i, %middle.block560, %.preheader2.i50
  %.9.lcssa.i52 = phi ptr [ %.8103.i, %.preheader2.i50 ], [ %i.agk, %middle.block560 ], [ %.lcssa842.unr, %.lr.ph89.i.prol.loopexit ], [ %i.aia, %.lr.ph89.i ] ; 6 uses
  %.9.lcssa.i52521 = ptrtoaddr ptr %.9.lcssa.i52 to i64
  br i1 %i.aci, label %.lr.ph94.i.preheader, label %.preheader.i53

.lr.ph94.i.preheader:                             ; preds = %.preheader1.i51
  br i1 %min.iters.check525, label %.lr.ph94.i.preheader810, label %vector.memcheck520

vector.memcheck520:                               ; preds = %.lr.ph94.i.preheader
  %i.agy = add i64 %i.agi, %.9.lcssa.i52521
  %i.agz = add i64 %i.agy, -1
  %diff.check523 = icmp ult i64 %i.agz, 31
  br i1 %diff.check523, label %.lr.ph94.i.preheader810, label %vector.ph526

vector.ph526:                                     ; preds = %vector.memcheck520
  %i.aha = getelementptr i8, ptr %.392102.i, i64 %i.acz ; 2 uses
  %i.ahb = getelementptr i8, ptr %.9.lcssa.i52, i64 %i.acz ; 2 uses
  br label %vector.body528

vector.body528:                                   ; preds = %vector.body528, %vector.ph526
  %index529 = phi i64 [ 0, %vector.ph526 ], [ %index.next534, %vector.body528 ] ; 2 uses
  %i.ahc = shl i64 %index529, 3                   ; 2 uses
  %next.gep530 = getelementptr i8, ptr %.392102.i, i64 %i.ahc ; 2 uses
  %next.gep531 = getelementptr i8, ptr %.9.lcssa.i52, i64 %i.ahc ; 2 uses
  %i.ahd = getelementptr i8, ptr %next.gep530, i64 16
  %wide.load532 = load <2 x i64>, ptr %next.gep530, align 8, !tbaa !74
  %wide.load533 = load <2 x i64>, ptr %i.ahd, align 8, !tbaa !74
  %i.ahe = getelementptr i8, ptr %next.gep531, i64 16
  store <2 x i64> %wide.load532, ptr %next.gep531, align 8, !tbaa !74
  store <2 x i64> %wide.load533, ptr %i.ahe, align 8, !tbaa !74
  %index.next534 = add nuw i64 %index529, 4       ; 2 uses
  %i.ahf = icmp eq i64 %index.next534, %n.vec527
  br i1 %i.ahf, label %middle.block535, label %vector.body528, !llvm.loop !524

middle.block535:                                  ; preds = %vector.body528
  br i1 %cmp.n536, label %.preheader.i53, label %.lr.ph94.i.preheader810

.lr.ph94.i.preheader810:                          ; preds = %vector.memcheck520, %.lr.ph94.i.preheader, %middle.block535
  %.07593.i.ph = phi i32 [ 0, %vector.memcheck520 ], [ 0, %.lr.ph94.i.preheader ], [ %i.acy, %middle.block535 ] ; 4 uses
  %.07792.i.ph = phi ptr [ %.392102.i, %vector.memcheck520 ], [ %.392102.i, %.lr.ph94.i.preheader ], [ %i.aha, %middle.block535 ] ; 2 uses
  %.1091.i.ph = phi ptr [ %.9.lcssa.i52, %vector.memcheck520 ], [ %.9.lcssa.i52, %.lr.ph94.i.preheader ], [ %i.ahb, %middle.block535 ] ; 2 uses
  %i.ahg = sub i32 %i.cn, %.07593.i.ph
  %xtraiter894 = and i32 %i.ahg, 7                ; 2 uses
  %lcmp.mod895.not = icmp eq i32 %xtraiter894, 0
  br i1 %lcmp.mod895.not, label %.lr.ph94.i.prol.loopexit, label %.lr.ph94.i.prol

.lr.ph94.i.prol:                                  ; preds = %.lr.ph94.i.preheader810, %.lr.ph94.i.prol
  %.07593.i.prol = phi i32 [ %i.ahk, %.lr.ph94.i.prol ], [ %.07593.i.ph, %.lr.ph94.i.preheader810 ]
  %.07792.i.prol = phi ptr [ %i.ahh, %.lr.ph94.i.prol ], [ %.07792.i.ph, %.lr.ph94.i.preheader810 ] ; 2 uses
  %.1091.i.prol = phi ptr [ %i.ahj, %.lr.ph94.i.prol ], [ %.1091.i.ph, %.lr.ph94.i.preheader810 ] ; 2 uses
  %prol.iter896 = phi i32 [ %prol.iter896.next, %.lr.ph94.i.prol ], [ 0, %.lr.ph94.i.preheader810 ]
  %i.ahh = getelementptr inbounds nuw i8, ptr %.07792.i.prol, i64 8 ; 3 uses
  %i.ahi = load i64, ptr %.07792.i.prol, align 8, !tbaa !74
  %i.ahj = getelementptr inbounds nuw i8, ptr %.1091.i.prol, i64 8 ; 3 uses
  store i64 %i.ahi, ptr %.1091.i.prol, align 8, !tbaa !74
  %i.ahk = add nuw nsw i32 %.07593.i.prol, 1      ; 2 uses
  %prol.iter896.next = add i32 %prol.iter896, 1   ; 2 uses
  %prol.iter896.cmp.not = icmp eq i32 %prol.iter896.next, %xtraiter894
  br i1 %prol.iter896.cmp.not, label %.lr.ph94.i.prol.loopexit, label %.lr.ph94.i.prol, !llvm.loop !525

.lr.ph94.i.prol.loopexit:                         ; preds = %.lr.ph94.i.prol, %.lr.ph94.i.preheader810
  %.lcssa844.unr = phi ptr [ poison, %.lr.ph94.i.preheader810 ], [ %i.ahh, %.lr.ph94.i.prol ]
  %.lcssa843.unr = phi ptr [ poison, %.lr.ph94.i.preheader810 ], [ %i.ahj, %.lr.ph94.i.prol ]
  %.07593.i.unr = phi i32 [ %.07593.i.ph, %.lr.ph94.i.preheader810 ], [ %i.ahk, %.lr.ph94.i.prol ]
  %.07792.i.unr = phi ptr [ %.07792.i.ph, %.lr.ph94.i.preheader810 ], [ %i.ahh, %.lr.ph94.i.prol ]
  %.1091.i.unr = phi ptr [ %.1091.i.ph, %.lr.ph94.i.preheader810 ], [ %i.ahj, %.lr.ph94.i.prol ]
  %i.ahl = sub i32 %.07593.i.ph, %i.cn
  %i.ahm = icmp ugt i32 %i.ahl, -8
  br i1 %i.ahm, label %.preheader.i53, label %.lr.ph94.i

.lr.ph89.i:                                       ; preds = %.lr.ph89.i, %.lr.ph89.i.preheader811.new
  %indvars.iv165.i = phi i64 [ %indvars.iv165.i.unr, %.lr.ph89.i.preheader811.new ], [ %indvars.iv.next166.i.3, %.lr.ph89.i ] ; 5 uses
  %.987.i = phi ptr [ %.987.i.unr, %.lr.ph89.i.preheader811.new ], [ %i.aia, %.lr.ph89.i ] ; 5 uses
  %i.ahn = sub nsw i64 %wide.trip.count168.i, %indvars.iv165.i
  %i.aho = getelementptr inbounds nuw [8 x i8], ptr %.392102.i, i64 %i.ahn
  %i.ahp = load i64, ptr %i.aho, align 8, !tbaa !74
  %i.ahq = getelementptr inbounds nuw i8, ptr %.987.i, i64 8
  store i64 %i.ahp, ptr %.987.i, align 8, !tbaa !74
  %indvars.iv.next166.i.neg = xor i64 %indvars.iv165.i, -1
  %gep998 = getelementptr [8 x i8], ptr %invariant.gep997, i64 %indvars.iv.next166.i.neg
  %i.ahr = load i64, ptr %gep998, align 8, !tbaa !74
  %i.ahs = getelementptr inbounds nuw i8, ptr %.987.i, i64 16
  store i64 %i.ahr, ptr %i.ahq, align 8, !tbaa !74
  %indvars.iv.next166.i.1 = add nuw nsw i64 %indvars.iv165.i, 2
  %i.aht = sub nsw i64 %wide.trip.count168.i, %indvars.iv.next166.i.1
  %i.ahu = getelementptr inbounds nuw [8 x i8], ptr %.392102.i, i64 %i.aht
  %i.ahv = load i64, ptr %i.ahu, align 8, !tbaa !74
  %i.ahw = getelementptr inbounds nuw i8, ptr %.987.i, i64 24
  store i64 %i.ahv, ptr %i.ahs, align 8, !tbaa !74
  %indvars.iv.next166.i.2 = add nuw nsw i64 %indvars.iv165.i, 3
  %i.ahx = sub nsw i64 %wide.trip.count168.i, %indvars.iv.next166.i.2
  %i.ahy = getelementptr inbounds nuw [8 x i8], ptr %.392102.i, i64 %i.ahx
  %i.ahz = load i64, ptr %i.ahy, align 8, !tbaa !74
  %i.aia = getelementptr inbounds nuw i8, ptr %.987.i, i64 32 ; 2 uses
  store i64 %i.ahz, ptr %i.ahw, align 8, !tbaa !74
  %indvars.iv.next166.i.3 = add nuw nsw i64 %indvars.iv165.i, 4 ; 2 uses
  %exitcond169.not.i.3 = icmp eq i64 %indvars.iv.next166.i.3, %wide.trip.count168.i
  br i1 %exitcond169.not.i.3, label %.preheader1.i51, label %.lr.ph89.i, !llvm.loop !526

.preheader.i53:                                   ; preds = %.lr.ph94.i.prol.loopexit, %.lr.ph94.i, %middle.block535, %.preheader1.i51
  %.10.lcssa.i54 = phi ptr [ %.9.lcssa.i52, %.preheader1.i51 ], [ %i.ahb, %middle.block535 ], [ %.lcssa843.unr, %.lr.ph94.i.prol.loopexit ], [ %i.ajm, %.lr.ph94.i ] ; 7 uses
  %.077.lcssa.i = phi ptr [ %.392102.i, %.preheader1.i51 ], [ %i.aha, %middle.block535 ], [ %.lcssa844.unr, %.lr.ph94.i.prol.loopexit ], [ %i.ajk, %.lr.ph94.i ] ; 7 uses
  br i1 %i.acj, label %.lr.ph99.i.preheader, label %._crit_edge100.i

.lr.ph99.i.preheader:                             ; preds = %.preheader.i53
  br i1 %min.iters.check506, label %.lr.ph99.i.preheader809, label %vector.memcheck502

vector.memcheck502:                               ; preds = %.lr.ph99.i.preheader
  %scevgep = getelementptr i8, ptr %.10.lcssa.i54, i64 %i.acl
  %scevgep503 = getelementptr i8, ptr %.077.lcssa.i, i64 -8 ; 2 uses
  %scevgep504 = getelementptr i8, ptr %scevgep503, i64 %i.acm
  %bound0 = icmp ult ptr %.10.lcssa.i54, %scevgep503
  %bound1 = icmp ult ptr %scevgep504, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph99.i.preheader809, label %vector.ph507

vector.ph507:                                     ; preds = %vector.memcheck502
  %i.aib = getelementptr i8, ptr %.10.lcssa.i54, i64 %i.ada ; 2 uses
  br label %vector.body509

vector.body509:                                   ; preds = %vector.body509, %vector.ph507
  %index510 = phi i64 [ 0, %vector.ph507 ], [ %index.next515, %vector.body509 ] ; 3 uses
  %i.aic = shl i64 %index510, 3
  %next.gep511 = getelementptr i8, ptr %.10.lcssa.i54, i64 %i.aic ; 2 uses
  %i.aid = sub nuw nsw i64 -2, %index510
  %i.aie = getelementptr inbounds [8 x i8], ptr %.077.lcssa.i, i64 %i.aid ; 2 uses
  %i.aif = getelementptr inbounds i8, ptr %i.aie, i64 -8
  %i.aig = getelementptr inbounds i8, ptr %i.aie, i64 -24
  %wide.load512 = load <2 x i64>, ptr %i.aif, align 8, !tbaa !74, !alias.scope !527
  %wide.load513 = load <2 x i64>, ptr %i.aig, align 8, !tbaa !74, !alias.scope !527
  %reverse = shufflevector <2 x i64> %wide.load512, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse514 = shufflevector <2 x i64> %wide.load513, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.aih = getelementptr i8, ptr %next.gep511, i64 16
  store <2 x i64> %reverse, ptr %next.gep511, align 8, !tbaa !74, !alias.scope !530, !noalias !527
  store <2 x i64> %reverse514, ptr %i.aih, align 8, !tbaa !74, !alias.scope !530, !noalias !527
  %index.next515 = add nuw i64 %index510, 4       ; 2 uses
  %i.aii = icmp eq i64 %index.next515, %n.vec508
  br i1 %i.aii, label %middle.block516, label %vector.body509, !llvm.loop !532

middle.block516:                                  ; preds = %vector.body509
  br i1 %cmp.n517, label %._crit_edge100.i, label %.lr.ph99.i.preheader809

.lr.ph99.i.preheader809:                          ; preds = %vector.memcheck502, %.lr.ph99.i.preheader, %middle.block516
  %indvars.iv171.i.ph = phi i64 [ 0, %vector.memcheck502 ], [ 0, %.lr.ph99.i.preheader ], [ %n.vec508, %middle.block516 ] ; 3 uses
  %.1197.i.ph = phi ptr [ %.10.lcssa.i54, %vector.memcheck502 ], [ %.10.lcssa.i54, %.lr.ph99.i.preheader ], [ %i.aib, %middle.block516 ] ; 2 uses
  br i1 %lcmp.mod898.not, label %.lr.ph99.i.prol.loopexit, label %.lr.ph99.i.prol

.lr.ph99.i.prol:                                  ; preds = %.lr.ph99.i.preheader809, %.lr.ph99.i.prol
  %indvars.iv171.i.prol = phi i64 [ %indvars.iv.next172.i.prol, %.lr.ph99.i.prol ], [ %indvars.iv171.i.ph, %.lr.ph99.i.preheader809 ] ; 2 uses
  %.1197.i.prol = phi ptr [ %i.aim, %.lr.ph99.i.prol ], [ %.1197.i.ph, %.lr.ph99.i.preheader809 ] ; 2 uses
  %prol.iter899 = phi i64 [ %prol.iter899.next, %.lr.ph99.i.prol ], [ 0, %.lr.ph99.i.preheader809 ]
  %i.aij = sub nuw nsw i64 -2, %indvars.iv171.i.prol
  %i.aik = getelementptr inbounds [8 x i8], ptr %.077.lcssa.i, i64 %i.aij
  %i.ail = load i64, ptr %i.aik, align 8, !tbaa !74
  %i.aim = getelementptr inbounds nuw i8, ptr %.1197.i.prol, i64 8 ; 3 uses
  store i64 %i.ail, ptr %.1197.i.prol, align 8, !tbaa !74
  %indvars.iv.next172.i.prol = add nuw nsw i64 %indvars.iv171.i.prol, 1 ; 2 uses
  %prol.iter899.next = add i64 %prol.iter899, 1   ; 2 uses
  %prol.iter899.cmp.not = icmp eq i64 %prol.iter899.next, %xtraiter897
  br i1 %prol.iter899.cmp.not, label %.lr.ph99.i.prol.loopexit, label %.lr.ph99.i.prol, !llvm.loop !533

.lr.ph99.i.prol.loopexit:                         ; preds = %.lr.ph99.i.prol, %.lr.ph99.i.preheader809
  %.lcssa845.unr = phi ptr [ poison, %.lr.ph99.i.preheader809 ], [ %i.aim, %.lr.ph99.i.prol ]
  %indvars.iv171.i.unr = phi i64 [ %indvars.iv171.i.ph, %.lr.ph99.i.preheader809 ], [ %indvars.iv.next172.i.prol, %.lr.ph99.i.prol ]
  %.1197.i.unr = phi ptr [ %.1197.i.ph, %.lr.ph99.i.preheader809 ], [ %i.aim, %.lr.ph99.i.prol ]
  %i.ain = sub nsw i64 %indvars.iv171.i.ph, %wide.trip.count174.i
  %i.aio = icmp ugt i64 %i.ain, -4
  br i1 %i.aio, label %._crit_edge100.i, label %.lr.ph99.i

.lr.ph94.i:                                       ; preds = %.lr.ph94.i.prol.loopexit, %.lr.ph94.i
  %.07593.i = phi i32 [ %i.ajn, %.lr.ph94.i ], [ %.07593.i.unr, %.lr.ph94.i.prol.loopexit ]
  %.07792.i = phi ptr [ %i.ajk, %.lr.ph94.i ], [ %.07792.i.unr, %.lr.ph94.i.prol.loopexit ] ; 9 uses
  %.1091.i = phi ptr [ %i.ajm, %.lr.ph94.i ], [ %.1091.i.unr, %.lr.ph94.i.prol.loopexit ] ; 9 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %.07792.i, i64 8
  %i.aiq = load i64, ptr %.07792.i, align 8, !tbaa !74
  %i.air = getelementptr inbounds nuw i8, ptr %.1091.i, i64 8
  store i64 %i.aiq, ptr %.1091.i, align 8, !tbaa !74
  %i.ais = getelementptr inbounds nuw i8, ptr %.07792.i, i64 16
  %i.ait = load i64, ptr %i.aip, align 8, !tbaa !74
  %i.aiu = getelementptr inbounds nuw i8, ptr %.1091.i, i64 16
  store i64 %i.ait, ptr %i.air, align 8, !tbaa !74
  %i.aiv = getelementptr inbounds nuw i8, ptr %.07792.i, i64 24
  %i.aiw = load i64, ptr %i.ais, align 8, !tbaa !74
  %i.aix = getelementptr inbounds nuw i8, ptr %.1091.i, i64 24
  store i64 %i.aiw, ptr %i.aiu, align 8, !tbaa !74
  %i.aiy = getelementptr inbounds nuw i8, ptr %.07792.i, i64 32
  %i.aiz = load i64, ptr %i.aiv, align 8, !tbaa !74
  %i.aja = getelementptr inbounds nuw i8, ptr %.1091.i, i64 32
  store i64 %i.aiz, ptr %i.aix, align 8, !tbaa !74
  %i.ajb = getelementptr inbounds nuw i8, ptr %.07792.i, i64 40
  %i.ajc = load i64, ptr %i.aiy, align 8, !tbaa !74
  %i.ajd = getelementptr inbounds nuw i8, ptr %.1091.i, i64 40
  store i64 %i.ajc, ptr %i.aja, align 8, !tbaa !74
  %i.aje = getelementptr inbounds nuw i8, ptr %.07792.i, i64 48
  %i.ajf = load i64, ptr %i.ajb, align 8, !tbaa !74
  %i.ajg = getelementptr inbounds nuw i8, ptr %.1091.i, i64 48
  store i64 %i.ajf, ptr %i.ajd, align 8, !tbaa !74
  %i.ajh = getelementptr inbounds nuw i8, ptr %.07792.i, i64 56
  %i.aji = load i64, ptr %i.aje, align 8, !tbaa !74
  %i.ajj = getelementptr inbounds nuw i8, ptr %.1091.i, i64 56
  store i64 %i.aji, ptr %i.ajg, align 8, !tbaa !74
  %i.ajk = getelementptr inbounds nuw i8, ptr %.07792.i, i64 64 ; 2 uses
  %i.ajl = load i64, ptr %i.ajh, align 8, !tbaa !74
  %i.ajm = getelementptr inbounds nuw i8, ptr %.1091.i, i64 64 ; 2 uses
  store i64 %i.ajl, ptr %i.ajj, align 8, !tbaa !74
  %i.ajn = add nuw nsw i32 %.07593.i, 8           ; 2 uses
  %exitcond170.not.i.7 = icmp eq i32 %i.ajn, %i.cn
  br i1 %exitcond170.not.i.7, label %.preheader.i53, label %.lr.ph94.i, !llvm.loop !534

._crit_edge100.i:                                 ; preds = %.lr.ph99.i.prol.loopexit, %.lr.ph99.i, %middle.block516, %.preheader.i53
  %.11.lcssa.i55 = phi ptr [ %.10.lcssa.i54, %.preheader.i53 ], [ %i.aib, %middle.block516 ], [ %.lcssa845.unr, %.lr.ph99.i.prol.loopexit ], [ %i.akf, %.lr.ph99.i ]
  %i.ajo = getelementptr inbounds [8 x i8], ptr %.392102.i, i64 %i.ack
  %i.ajp = add nuw nsw i32 %.078104.i, 1          ; 2 uses
  %exitcond176.not.i = icmp eq i32 %i.ajp, %i.pv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond176.not.i, label %_ZN4ncnn3MatD2Ev.exit34, label %.preheader2.i50, !llvm.loop !535

.lr.ph99.i:                                       ; preds = %.lr.ph99.i.prol.loopexit, %.lr.ph99.i
  %indvars.iv171.i = phi i64 [ %indvars.iv.next172.i.3, %.lr.ph99.i ], [ %indvars.iv171.i.unr, %.lr.ph99.i.prol.loopexit ] ; 5 uses
  %.1197.i = phi ptr [ %i.akf, %.lr.ph99.i ], [ %.1197.i.unr, %.lr.ph99.i.prol.loopexit ] ; 5 uses
  %i.ajq = sub nuw nsw i64 -2, %indvars.iv171.i
  %i.ajr = getelementptr inbounds [8 x i8], ptr %.077.lcssa.i, i64 %i.ajq
  %i.ajs = load i64, ptr %i.ajr, align 8, !tbaa !74
  %i.ajt = getelementptr inbounds nuw i8, ptr %.1197.i, i64 8
  store i64 %i.ajs, ptr %.1197.i, align 8, !tbaa !74
  %i.aju = sub nuw nsw i64 -3, %indvars.iv171.i
  %i.ajv = getelementptr inbounds [8 x i8], ptr %.077.lcssa.i, i64 %i.aju
  %i.ajw = load i64, ptr %i.ajv, align 8, !tbaa !74
  %i.ajx = getelementptr inbounds nuw i8, ptr %.1197.i, i64 16
  store i64 %i.ajw, ptr %i.ajt, align 8, !tbaa !74
  %i.ajy = sub nuw nsw i64 -4, %indvars.iv171.i
  %i.ajz = getelementptr inbounds [8 x i8], ptr %.077.lcssa.i, i64 %i.ajy
  %i.aka = load i64, ptr %i.ajz, align 8, !tbaa !74
  %i.akb = getelementptr inbounds nuw i8, ptr %.1197.i, i64 24
  store i64 %i.aka, ptr %i.ajx, align 8, !tbaa !74
  %i.akc = sub nuw nsw i64 -5, %indvars.iv171.i
  %i.akd = getelementptr inbounds [8 x i8], ptr %.077.lcssa.i, i64 %i.akc
  %i.ake = load i64, ptr %i.akd, align 8, !tbaa !74
  %i.akf = getelementptr inbounds nuw i8, ptr %.1197.i, i64 32 ; 2 uses
  store i64 %i.ake, ptr %i.akb, align 8, !tbaa !74
  %indvars.iv.next172.i.3 = add nuw nsw i64 %indvars.iv171.i, 4 ; 2 uses
  %exitcond175.not.i.3 = icmp eq i64 %indvars.iv.next172.i.3, %wide.trip.count174.i
  br i1 %exitcond175.not.i.3, label %._crit_edge100.i, label %.lr.ph99.i, !llvm.loop !536

_ZN4ncnn3MatD2Ev.exit34:                          ; preds = %._crit_edge100.i, %._crit_edge89.i, %._crit_edge73.i, %bb.f, %._crit_edge84.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  %.pre = load i32, ptr %i.b, align 4, !tbaa !58
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.lr.ph, %middle.block, %bb.d, %_ZN4ncnn3MatD2Ev.exit34
  %i.akg = phi i32 [ %.pre, %_ZN4ncnn3MatD2Ev.exit34 ], [ %i.as, %bb.d ], [ %i.as, %middle.block ], [ %i.as, %.lr.ph ] ; 2 uses
  %indvars.iv.next175 = add nsw i64 %indvars.iv174, 1
  %i.akh = sext i32 %i.akg to i64
  %.not.not = icmp slt i64 %indvars.iv174, %i.akh
  br i1 %.not.not, label %.noexc42, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Padding_x8612forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7) #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !58     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 %i.g, ptr %i.b, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 1, ptr %i.c, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i32 0, ptr %i.d, align 4, !tbaa !58
  %i.h = load i32, ptr %0, align 4, !tbaa !58     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
end_hunk_2
