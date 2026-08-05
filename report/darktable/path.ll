inline.NumInlined: 240
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_path_get_mask:bb.a
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !134
  %i.qh = sitofp reassoc nsz arcp contract afn i64 %i.qg to double
  %i.qi = fmul reassoc nnan nsz arcp contract afn double %i.qh, f0x3EB0C6F7A0B5ED8D
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.qj = fsub reassoc nsz arcp contract afn double %i.qe, %.2275
  %i.qk = fadd reassoc nsz arcp contract afn double %i.qj, %i.qi
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.39, ptr noundef nonnull %i.qa, double noundef %i.qk) #25
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %._crit_edge335
  call void @free(ptr noundef %i.ao) #25
  call void @free(ptr noundef %i.ap) #25
  %i.ql = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  %i.qm = and i32 %i.ql, 4112
  %or.cond254.not = icmp eq i32 %i.qm, 4112
  br i1 %or.cond254.not, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.qn = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.qo = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #25 ; 0 uses
  %i.qp = load i64, ptr %8, align 8, !tbaa !132
  %i.qq = add nsw i64 %i.qp, -1290608000
  %i.qr = sitofp reassoc nsz arcp contract afn i64 %i.qq to double
  %i.qs = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.qt = load i64, ptr %i.qs, align 8, !tbaa !134
  %i.qu = sitofp reassoc nsz arcp contract afn i64 %i.qt to double
  %i.qv = fmul reassoc nnan nsz arcp contract afn double %i.qu, f0x3EB0C6F7A0B5ED8D
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.qw = fsub reassoc nsz arcp contract afn double %i.qr, %.0276
  %i.qx = fadd reassoc nsz arcp contract afn double %i.qw, %i.qv
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.40, ptr noundef nonnull %i.qn, double noundef %i.qx) #25
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %bb.n, %bb.d
  %.1193 = phi i32 [ 0, %bb.d ], [ 0, %bb.n ], [ 1, %bb.bf ], [ 1, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.bh

bb.bh:                                            ; preds = %bb.a, %bb.bg
  %.2194 = phi i32 [ %.1193, %bb.bg ], [ 0, %bb.a ]
  ret i32 %.2194
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_path_get_mask_roi(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) #3 {
bb.a:
  %5 = alloca %struct.timeval, align 8            ; 5 uses
  %6 = alloca %struct.timeval, align 8            ; 5 uses
  %7 = alloca %struct.timeval, align 8            ; 5 uses
  %8 = alloca %struct.timeval, align 8            ; 5 uses
  %9 = alloca %struct.timeval, align 8            ; 5 uses
  %10 = alloca %struct.timeval, align 8           ; 5 uses
  %i.a = alloca double, align 8                   ; 9 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.cs, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %dt_get_debug_wtime.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.g = call i32 @gettimeofday(ptr noundef nonnull %10, ptr noundef null) #25 ; 0 uses
  %i.h = load i64, ptr %10, align 8, !tbaa !132
  %i.i = add nsw i64 %i.h, -1290608000
  %i.j = sitofp reassoc nsz arcp contract afn i64 %i.i to double
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !134
  %i.m = sitofp reassoc nsz arcp contract afn i64 %i.l to double
  %i.n = fmul reassoc nnan nsz arcp contract afn double %i.m, f0x3EB0C6F7A0B5ED8D
  %i.o = fadd reassoc nsz arcp contract afn double %i.n, %i.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %dt_get_debug_wtime.exit

dt_get_debug_wtime.exit:                          ; preds = %bb.b, %bb.c
  %i.p = phi reassoc nsz arcp contract afn double [ %i.o, %bb.c ], [ 0.000000e+00, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.q = load <2 x i32>, ptr %3, align 4, !tbaa !28 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load <2 x i32>, ptr %i.r, align 4, !tbaa !28 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load float, ptr %i.t, align 4, !tbaa !153 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store ptr null, ptr %i.c, align 8, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store i32 0, ptr %i.e, align 4, !tbaa !28
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !136
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.y = load i32, ptr %i.x, align 16, !tbaa !50
  %i.z = sitofp reassoc nsz arcp contract afn i32 %i.y to double
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !137
  %i.ac = call fastcc i32 @_path_get_pts_border(ptr noundef %i.w, ptr noundef %2, double noundef %i.z, i32 noundef 3, ptr noundef %i.ab, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, i32 noundef 0)
  %i.ad = icmp eq i32 %i.ac, 0
  %i.ae = load i32, ptr %i.d, align 4             ; 10 uses
  %i.af = icmp slt i32 %i.ae, 3
  %or.cond = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %dt_get_debug_wtime.exit
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !135
  call void @free(ptr noundef %i.ag) #25
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !135
  call void @free(ptr noundef %i.ah) #25
  br label %bb.cr

bb.e:                                             ; preds = %dt_get_debug_wtime.exit
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  %i.aj = and i32 %i.ai, 4112
  %or.cond344.not = icmp eq i32 %i.aj, 4112
  br i1 %or.cond344.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.al = call i32 @gettimeofday(ptr noundef nonnull %9, ptr noundef null) #25 ; 0 uses
  %i.am = load i64, ptr %9, align 8, !tbaa !132
  %i.an = add nsw i64 %i.am, -1290608000
  %i.ao = sitofp reassoc nsz arcp contract afn i64 %i.an to double
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !134
  %i.ar = sitofp reassoc nsz arcp contract afn i64 %i.aq to double
  %i.as = fmul reassoc nnan nsz arcp contract afn double %i.ar, f0x3EB0C6F7A0B5ED8D
  %i.at = fadd reassoc nsz arcp contract afn double %i.as, %i.ao ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.au = fsub reassoc nsz arcp contract afn double %i.at, %i.p
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.35, ptr noundef nonnull %i.ak, double noundef %i.au) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0381 = phi nsz double [ %i.p, %bb.e ], [ %i.at, %bb.f ] ; 4 uses
  store double %.0381, ptr %i.a, align 8, !tbaa !154
  %i.av = load ptr, ptr %2, align 8, !tbaa !20
  %i.aw = call i32 @g_list_length(ptr noundef %i.av) #25 ; 2 uses
  %i.ax = mul nsw i32 %i.aw, 3                    ; 12 uses
  %i.ay = load i32, ptr %i.e, align 4, !tbaa !28  ; 6 uses
  %i.az = icmp slt i32 %i.ax, %i.ay               ; 4 uses
  br i1 %i.az, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !135
  %i.bb = sitofp <2 x i32> %i.q to <2 x float>
  %i.bc = insertelement <2 x float> poison, float %i.u, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.l
  %.0276414 = phi i32 [ %i.ax, %.lr.ph ], [ %i.bq, %bb.l ] ; 2 uses
  %i.be = shl nsw i32 %.0276414, 1
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr [4 x i8], ptr %i.ba, i64 %i.bf ; 2 uses
  %i.bh = load <2 x float>, ptr %i.bg, align 4, !tbaa !11 ; 3 uses
  %i.bi = extractelement <2 x float> %i.bh, i64 0
  %i.bj = fcmp reassoc nsz arcp contract afn oeq float %i.bi, f0xFF7FFFFF
  br i1 %i.bj, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bk = extractelement <2 x float> %i.bh, i64 1 ; 2 uses
  %i.bl = fcmp reassoc nsz arcp contract afn oeq float %i.bk, f0xFF7FFFFF
  br i1 %i.bl, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = fadd reassoc nsz arcp contract afn float %i.bk, -1.000000e+00
  %i.bn = fptosi float %i.bm to i32
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.bo = fmul reassoc nsz arcp contract afn <2 x float> %i.bh, %i.bd
  %i.bp = fsub reassoc nsz arcp contract afn <2 x float> %i.bo, %i.bb
  store <2 x float> %i.bp, ptr %i.bg, align 4, !tbaa !11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1277.ph = phi i32 [ %i.bn, %bb.j ], [ %.0276414, %bb.k ]
  %i.bq = add nsw i32 %.1277.ph, 1                ; 2 uses
  %i.br = icmp slt i32 %i.bq, %i.ay
  br i1 %i.br, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l, %bb.i, %bb.g
  %i.bs = icmp slt i32 %i.ax, %i.ae               ; 3 uses
  br i1 %i.bs, label %.lr.ph419, label %._crit_edge432

.lr.ph419:                                        ; preds = %._crit_edge
  %i.bt = load ptr, ptr %i.b, align 8, !tbaa !135 ; 8 uses
  %i.bu = sitofp <2 x i32> %i.q to <2 x float>    ; 7 uses
  %i.bv = sext i32 %i.ax to i64                   ; 8 uses
  %wide.trip.count = zext nneg i32 %i.ae to i64   ; 6 uses
  %i.bw = sub nsw i64 %wide.trip.count, %i.bv     ; 3 uses
  %min.iters.check = icmp ult i64 %i.bw, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph419
  %i.bx = xor i64 %i.bv, -1
  %i.by = add nsw i64 %i.bx, %wide.trip.count     ; 2 uses
  %i.bz = shl nsw i64 %i.bv, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bt, i64 %i.bz ; 2 uses
  %mul.result = shl nsw i64 %i.by, 3              ; 2 uses
  %mul.overflow = icmp ugt i64 %i.by, 2305843009213693951
  %i.ca = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.cb = icmp ult ptr %i.ca, %scevgep
  %i.cc = getelementptr i8, ptr %i.bt, i64 %i.bz
  %scevgep623 = getelementptr i8, ptr %i.cc, i64 4 ; 2 uses
  %i.cd = getelementptr i8, ptr %scevgep623, i64 %mul.result
  %i.ce = icmp ult ptr %i.cd, %scevgep623
  %i.cf = or i1 %i.ce, %mul.overflow
  %i.cg = or i1 %i.cb, %i.cf
  br i1 %i.cg, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.bw, -8                      ; 3 uses
  %i.ch = add nsw i64 %n.vec, %i.bv
  %broadcast.splat = shufflevector <2 x float> %i.bu, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat628 = shufflevector <2 x float> %i.bu, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert629 = insertelement <8 x float> poison, float %i.u, i64 0
  %broadcast.splat630 = shufflevector <8 x float> %broadcast.splatinsert629, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ci = add i64 %index, %i.bv
  %i.cj = shl i64 %i.ci, 3
  %i.ck = getelementptr i8, ptr %i.bt, i64 %i.cj  ; 2 uses
  %wide.vec = load <16 x float>, ptr %i.ck, align 4, !tbaa !11 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec631 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.cl = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat630
  %i.cm = fsub reassoc nsz arcp contract afn <8 x float> %i.cl, %broadcast.splat
  %i.cn = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec631, %broadcast.splat630
  %i.co = fsub reassoc nsz arcp contract afn <8 x float> %i.cn, %broadcast.splat628
  %interleaved.vec = shufflevector <8 x float> %i.cm, <8 x float> %i.co, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.ck, align 4, !tbaa !11
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !155

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %.lr.ph422, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph419, %middle.block
  %indvars.iv.ph = phi i64 [ %i.bv, %vector.scevcheck ], [ %i.bv, %.lr.ph419 ], [ %i.ch, %middle.block ] ; 4 uses
  %i.cq = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.cq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol.preheader

scalar.ph.prol.preheader:                         ; preds = %scalar.ph.preheader
  %i.cr = insertelement <2 x float> poison, float %i.u, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.prol, %scalar.ph.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.prol.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.prol.preheader ]
  %.idx.prol = shl i64 %indvars.iv.prol, 3
  %i.ct = getelementptr i8, ptr %i.bt, i64 %.idx.prol ; 2 uses
  %i.cu = load <2 x float>, ptr %i.ct, align 4, !tbaa !11
  %i.cv = fmul reassoc nsz arcp contract afn <2 x float> %i.cu, %i.cs
  %i.cw = fsub reassoc nsz arcp contract afn <2 x float> %i.cv, %i.bu
  store <2 x float> %i.cw, ptr %i.ct, align 4, !tbaa !11
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !156

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cx = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.cy = icmp ugt i64 %i.cx, -4
  br i1 %i.cy, label %.lr.ph422, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %i.cz = insertelement <2 x float> poison, float %i.u, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = insertelement <2 x float> poison, float %i.u, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = insertelement <2 x float> poison, float %i.u, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = insertelement <2 x float> poison, float %i.u, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph

.lr.ph422:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.dh = load ptr, ptr %i.b, align 8, !tbaa !135
  %i.di = add nsw <2 x i32> %i.s, splat (i32 -2)
  %i.dj = sext i32 %i.ax to i64
  br label %bb.m

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.3, %scalar.ph ] ; 5 uses
  %.idx = shl i64 %indvars.iv, 3
  %i.dk = getelementptr i8, ptr %i.bt, i64 %.idx  ; 2 uses
  %i.dl = load <2 x float>, ptr %i.dk, align 4, !tbaa !11
  %i.dm = fmul reassoc nsz arcp contract afn <2 x float> %i.dl, %i.da
  %i.dn = fsub reassoc nsz arcp contract afn <2 x float> %i.dm, %i.bu
  store <2 x float> %i.dn, ptr %i.dk, align 4, !tbaa !11
  %indvars.iv.next = shl i64 %indvars.iv, 3
  %i.do = getelementptr i8, ptr %i.bt, i64 %indvars.iv.next
  %i.dp = getelementptr i8, ptr %i.do, i64 8      ; 2 uses
  %i.dq = load <2 x float>, ptr %i.dp, align 4, !tbaa !11
  %i.dr = fmul reassoc nsz arcp contract afn <2 x float> %i.dq, %i.dc
  %i.ds = fsub reassoc nsz arcp contract afn <2 x float> %i.dr, %i.bu
  store <2 x float> %i.ds, ptr %i.dp, align 4, !tbaa !11
  %indvars.iv.next.1 = shl i64 %indvars.iv, 3
  %i.dt = getelementptr i8, ptr %i.bt, i64 %indvars.iv.next.1
  %i.du = getelementptr i8, ptr %i.dt, i64 16     ; 2 uses
  %i.dv = load <2 x float>, ptr %i.du, align 4, !tbaa !11
  %i.dw = fmul reassoc nsz arcp contract afn <2 x float> %i.dv, %i.de
  %i.dx = fsub reassoc nsz arcp contract afn <2 x float> %i.dw, %i.bu
  store <2 x float> %i.dx, ptr %i.du, align 4, !tbaa !11
  %indvars.iv.next.2 = shl i64 %indvars.iv, 3
  %i.dy = getelementptr i8, ptr %i.bt, i64 %indvars.iv.next.2
  %i.dz = getelementptr i8, ptr %i.dy, i64 24     ; 2 uses
  %i.ea = load <2 x float>, ptr %i.dz, align 4, !tbaa !11
  %i.eb = fmul reassoc nsz arcp contract afn <2 x float> %i.ea, %i.dg
  %i.ec = fsub reassoc nsz arcp contract afn <2 x float> %i.eb, %i.bu
  store <2 x float> %i.ec, ptr %i.dz, align 4, !tbaa !11
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.lr.ph422, label %scalar.ph, !llvm.loop !157

bb.m:                                             ; preds = %bb.m, %.lr.ph422
  %indvars.iv499 = phi i64 [ %i.dj, %.lr.ph422 ], [ %indvars.iv.next500, %bb.m ] ; 2 uses
  %.idx596 = shl nsw i64 %indvars.iv499, 3
  %i.ed = getelementptr inbounds i8, ptr %i.dh, i64 %.idx596
  %i.ee = load <2 x float>, ptr %i.ed, align 4, !tbaa !11
  %i.ef = fptosi <2 x float> %i.ee to <2 x i32>   ; 2 uses
  %i.eg = shufflevector <2 x i32> %i.ef, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.eh = shufflevector <2 x i32> %i.ef, <2 x i32> %i.di, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ei = shufflevector <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>, <4 x i32> %i.eg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ej = icmp sgt <4 x i32> %i.eh, %i.ei
  %i.ek = freeze <4 x i1> %i.ej
  %i.el = bitcast <4 x i1> %i.ek to i4
  %i.em = icmp eq i4 %i.el, -1                    ; 2 uses
  %indvars.iv.next500 = add nsw i64 %indvars.iv499, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next500 to i32
  %exitcond502.not = icmp eq i32 %i.ae, %lftr.wideiv
  %or.cond608 = select i1 %i.em, i1 true, i1 %exitcond502.not
  br i1 %or.cond608, label %._crit_edge423, label %bb.m

._crit_edge423:                                   ; preds = %bb.m
  br i1 %i.em, label %bb.q, label %.lr.ph431

.lr.ph431:                                        ; preds = %._crit_edge423
  %i.en = extractelement <2 x i32> %i.s, i64 1
  %i.eo = sdiv i32 %i.en, 2                       ; 2 uses
  %i.ep = extractelement <2 x i32> %i.s, i64 0
  %i.eq = sdiv i32 %i.ep, 2
  %i.er = load ptr, ptr %i.b, align 8, !tbaa !135 ; 5 uses
  %i.es = sitofp reassoc nsz arcp contract afn i32 %i.eq to float ; 2 uses
  %i.et = sext i32 %i.ax to i64                   ; 3 uses
  %wide.trip.count506 = zext nneg i32 %i.ae to i64
  %i.eu = sub nsw i64 %wide.trip.count, %i.bv     ; 3 uses
  %min.iters.check633 = icmp ult i64 %i.eu, 32
  br i1 %min.iters.check633, label %scalar.ph632.preheader, label %vector.ph634

vector.ph634:                                     ; preds = %.lr.ph431
  %n.vec636 = and i64 %i.eu, -32                  ; 3 uses
  %i.ev = add nsw i64 %n.vec636, %i.et
  %broadcast.splatinsert637 = insertelement <8 x float> poison, float %i.es, i64 0
  %broadcast.splat638 = shufflevector <8 x float> %broadcast.splatinsert637, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert639 = insertelement <8 x i32> poison, i32 %i.eo, i64 0
  %broadcast.splat640 = shufflevector <8 x i32> %broadcast.splatinsert639, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert641 = insertelement <8 x i64> poison, i64 %i.et, i64 0
  %broadcast.splat642 = shufflevector <8 x i64> %broadcast.splatinsert641, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat642, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vector.body643

vector.body643:                                   ; preds = %vector.body643, %vector.ph634
  %index644 = phi i64 [ 0, %vector.ph634 ], [ %index.next665, %vector.body643 ]
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph634 ], [ %vec.ind.next, %vector.body643 ] ; 5 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph634 ], [ %predphi, %vector.body643 ]
  %vec.phi645 = phi <8 x i32> [ zeroinitializer, %vector.ph634 ], [ %predphi662, %vector.body643 ]
  %vec.phi646 = phi <8 x i32> [ zeroinitializer, %vector.ph634 ], [ %predphi663, %vector.body643 ]
  %vec.phi647 = phi <8 x i32> [ zeroinitializer, %vector.ph634 ], [ %predphi664, %vector.body643 ]
  %vector.recur = phi <8 x i32> [ <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 -9999>, %vector.ph634 ], [ %i.fd, %vector.body643 ]
  %i.ew = shl <8 x i64> %vec.ind, splat (i64 3)
  %step.add = shl <8 x i64> %vec.ind, splat (i64 3)
  %i.ex = add <8 x i64> %step.add, splat (i64 64)
  %step.add.2 = shl <8 x i64> %vec.ind, splat (i64 3)
  %i.ey = add <8 x i64> %step.add.2, splat (i64 128)
  %step.add.3 = shl <8 x i64> %vec.ind, splat (i64 3)
  %i.ez = add <8 x i64> %step.add.3, splat (i64 192)
  %wide.gep = getelementptr i8, ptr %i.er, <8 x i64> %i.ew ; 2 uses
  %wide.gep648.a = getelementptr i8, ptr %i.er, <8 x i64> %i.ex ; 2 uses
  %wide.gep649.a = getelementptr i8, ptr %i.er, <8 x i64> %i.ey ; 2 uses
  %wide.gep650.a = getelementptr i8, ptr %i.er, <8 x i64> %i.ez ; 2 uses
  %wide.gep651.a = getelementptr i8, <8 x ptr> %wide.gep, i64 4
  %wide.gep652 = getelementptr i8, <8 x ptr> %wide.gep648.a, i64 4
  %wide.gep653 = getelementptr i8, <8 x ptr> %wide.gep649.a, i64 4
  %wide.gep654 = getelementptr i8, <8 x ptr> %wide.gep650.a, i64 4
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep651.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.masked.gather655.a = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep652, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.masked.gather656.a = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep653, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %wide.masked.gather657.a = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep654, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !11
  %i.fa = fptosi <8 x float> %wide.masked.gather to <8 x i32> ; 4 uses
  %i.fb = fptosi <8 x float> %wide.masked.gather655.a to <8 x i32> ; 4 uses
  %i.fc = fptosi <8 x float> %wide.masked.gather656.a to <8 x i32> ; 4 uses
  %i.fd = fptosi <8 x float> %wide.masked.gather657.a to <8 x i32> ; 5 uses
  %i.fe = shufflevector <8 x i32> %vector.recur, <8 x i32> %i.fa, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ff = shufflevector <8 x i32> %i.fa, <8 x i32> %i.fb, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.fg = shufflevector <8 x i32> %i.fb, <8 x i32> %i.fc, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.fh = shufflevector <8 x i32> %i.fc, <8 x i32> %i.fd, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.fi = icmp ne <8 x i32> %i.fe, %i.fa
  %i.fj = icmp ne <8 x i32> %i.ff, %i.fb
end_hunk_0
