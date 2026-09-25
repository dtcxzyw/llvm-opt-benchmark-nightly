Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_highlights?download=true
inline.NumInlined: 258
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_provide_raster_mask:bb.a
  %i.in = icmp eq i64 %index.next, %n.vec
  br i1 %i.in, label %middle.block, label %vector.body, !llvm.loop !482

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split, label %fcol.exit.preheader

fcol.exit.preheader:                              ; preds = %.preheader104, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader104 ], [ %n.vec, %middle.block ] ; 4 uses
  br i1 %lcmp.mod.not, label %fcol.exit.prol.loopexit, label %fcol.exit.prol

fcol.exit.prol:                                   ; preds = %fcol.exit.preheader
  %i.io = add nuw nsw i64 %i.hs, %indvars.iv.ph   ; 2 uses
  %.tr.i.i.prol = or disjoint i32 %i.fi, %i.hv
  %i.ip = shl nuw nsw i32 %.tr.i.i.prol, 1
  %i.iq = lshr i32 %i.q, %i.ip
  %i.ir = and i32 %i.iq, 3
  %i.is = zext nneg i32 %i.ir to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.is
  %i.iu = load float, ptr %i.it, align 4, !tbaa !12
  %i.iv = fmul reassoc nsz arcp contract afn float %i.iu, f0x3F733333 ; 2 uses
  %i.iw = fcmp reassoc nsz arcp contract afn olt float %i.iv, 5.000000e-01
  %spec.select101.prol = select i1 %i.iw, float 5.000000e-01, float %i.iv ; 2 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.io
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !12
  %i.iz = fsub reassoc nsz arcp contract afn float %i.iy, %spec.select101.prol
  %i.ja = fdiv reassoc nsz arcp contract afn float %i.iz, %spec.select101.prol ; 2 uses
  %i.jb = fcmp reassoc nsz arcp contract afn olt float %i.ja, 0.000000e+00
  %i.jc = select reassoc nsz arcp contract afn i1 %i.jb, float 0.000000e+00, float %i.ja
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.io
  store float %i.jc, ptr %i.jd, align 4, !tbaa !12
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %fcol.exit.prol.loopexit

fcol.exit.prol.loopexit:                          ; preds = %fcol.exit.prol, %fcol.exit.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %fcol.exit.preheader ], [ %indvars.iv.next.prol, %fcol.exit.prol ] ; 2 uses
  %i.je = icmp eq i64 %indvars.iv.ph, %i.fj
  br i1 %i.je, label %._crit_edge.split, label %fcol.exit.preheader.new

fcol.exit.preheader.new:                          ; preds = %fcol.exit.prol.loopexit
  %i.jf = trunc nsw i64 %indvars.iv.unr to i32
  %i.jg = add i32 %i.fg, %i.jf
  %i.jh = and i32 %i.jg, 1
  %.tr.i.i = or disjoint i32 %i.jh, %i.hv
  %i.ji = shl nuw nsw i32 %.tr.i.i, 1
  %i.jj = lshr i32 %i.q, %i.ji
  %i.jk = and i32 %i.jj, 3
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jl
  br label %fcol.exit

._crit_edge.split:                                ; preds = %fcol.exit.prol.loopexit, %fcol.exit, %middle.block
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %.loopexit, label %.preheader104

fcol.exit:                                        ; preds = %fcol.exit, %fcol.exit.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %fcol.exit.preheader.new ], [ %indvars.iv.next.1, %fcol.exit ] ; 3 uses
  %i.jn = add nuw nsw i64 %i.hs, %indvars.iv      ; 2 uses
  %i.jo = load float, ptr %i.jm, align 4, !tbaa !12
  %i.jp = fmul reassoc nsz arcp contract afn float %i.jo, f0x3F733333 ; 2 uses
  %i.jq = fcmp reassoc nsz arcp contract afn olt float %i.jp, 5.000000e-01
  %spec.select101 = select i1 %i.jq, float 5.000000e-01, float %i.jp ; 2 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.jn
  %i.js = load float, ptr %i.jr, align 4, !tbaa !12
  %i.jt = fsub reassoc nsz arcp contract afn float %i.js, %spec.select101
  %i.ju = fdiv reassoc nsz arcp contract afn float %i.jt, %spec.select101 ; 2 uses
  %i.jv = fcmp reassoc nsz arcp contract afn olt float %i.ju, 0.000000e+00
  %i.jw = select reassoc nsz arcp contract afn i1 %i.jv, float 0.000000e+00, float %i.ju
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.jn
  store float %i.jw, ptr %i.jx, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jy = add nuw nsw i64 %i.hs, %indvars.iv.next ; 2 uses
  %i.jz = trunc nuw nsw i64 %indvars.iv.next to i32
  %.reass.1 = add i32 %invariant.op, %i.jz
  %i.ka = and i32 %.reass.1, 1
  %.tr.i.i.1 = or disjoint i32 %i.ka, %i.hv
  %i.kb = shl nuw nsw i32 %.tr.i.i.1, 1
  %i.kc = lshr i32 %i.q, %i.kb
  %i.kd = and i32 %i.kc, 3
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ke
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !12
  %i.kh = fmul reassoc nsz arcp contract afn float %i.kg, f0x3F733333 ; 2 uses
  %i.ki = fcmp reassoc nsz arcp contract afn olt float %i.kh, 5.000000e-01
  %spec.select101.1 = select i1 %i.ki, float 5.000000e-01, float %i.kh ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.jy
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !12
  %i.kl = fsub reassoc nsz arcp contract afn float %i.kk, %spec.select101.1
  %i.km = fdiv reassoc nsz arcp contract afn float %i.kl, %spec.select101.1 ; 2 uses
  %i.kn = fcmp reassoc nsz arcp contract afn olt float %i.km, 0.000000e+00
  %i.ko = select reassoc nsz arcp contract afn i1 %i.kn, float 0.000000e+00, float %i.km
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.jy
  store float %i.ko, ptr %i.kp, align 4, !tbaa !12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge.split, label %fcol.exit, !llvm.loop !483

.loopexit:                                        ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %._crit_edge, %bb.d, %.preheader104.lr.ph, %.preheader103, %.preheader.lr.ph
  %i.kq = phi i32 [ %i.ev, %._crit_edge.split.us.us ], [ %i.af, %._crit_edge ], [ %i.af, %.preheader.lr.ph ], [ %i.ev, %bb.d ], [ %i.ev, %.preheader104.lr.ph ], [ %i.af, %.preheader103 ], [ %i.ev, %._crit_edge.split ]
  %i.kr = phi i32 [ %.pre, %._crit_edge.split.us.us ], [ %.pre152, %._crit_edge ], [ %.pre152, %.preheader.lr.ph ], [ %.pre, %bb.d ], [ %.pre, %.preheader104.lr.ph ], [ %.pre152, %.preheader103 ], [ %.pre, %._crit_edge.split ]
  tail call void @dt_gaussian_fast_blur(ptr noundef nonnull %i.l, ptr noundef nonnull %i.k, i32 noundef %i.kr, i32 noundef %i.kq, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 1) #33
  tail call void @free(ptr noundef nonnull %i.l) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.b
  %.091 = phi ptr [ %i.k, %.loopexit ], [ null, %bb.b ]
  ret ptr %.091
}

declare void @dt_iop_piece_set_raster(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @interpolate_color_xtrans(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 0, 2) %4, i32 noundef range(i32 -1, 2) %5, i32 noundef %6, ptr nofree noundef nonnull readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, i32 noundef range(i32 0, 4) %9) unnamed_addr #16 {
bb.a:
  %i.a = alloca [3 x [3 x i32]], align 16         ; 12 uses
  %i.b = alloca [4 x float], align 16             ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.a, i8 0, i64 36, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 -1, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 -2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 -3, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 3, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const.process_laplacian_bayer.wb, i64 16, i1 false)
  %i.i = icmp eq i32 %4, 0                        ; 13 uses
  %i.j = select i1 %i.i, i32 0, i32 %6
  %i.k = select i1 %i.i, i32 %6, i32 0
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !79   ; 2 uses
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = sub nsw i64 0, %i.n
  %.inv175 = icmp slt i32 %5, 0
  %i.p = select i1 %.inv175, i64 %i.o, i64 %i.n   ; 2 uses
  %i.q = add nsw i64 %i.p, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.inv175187 = icmp slt i32 %5, 0
  %i.r = select i1 %.inv175187, i64 -1, i64 1     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !79   ; 2 uses
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = sub nsw i64 %i.r, %i.u
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.in176.v = phi i64 [ 8, %bb.c ], [ 12, %bb.b ]
  %i.w = phi i32 [ %i.t, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.x = phi i64 [ %i.v, %bb.c ], [ %i.q, %bb.b ]
  %i.y = phi i64 [ %i.r, %bb.c ], [ %i.p, %bb.b ] ; 5 uses
  %i.z = phi i64 [ %i.u, %bb.c ], [ 1, %bb.b ]
  %i.aa = icmp eq i32 %5, 1                       ; 2 uses
  %.in176 = getelementptr inbounds nuw i8, ptr %3, i64 %.in176.v
  %i.ab = load i32, ptr %.in176, align 4, !tbaa !15 ; 2 uses
  %i.ac = add nsw i32 %i.ab, -1
  %.0163 = select i1 %i.aa, i32 0, i32 %i.ac      ; 4 uses
  %.0162 = select i1 %i.aa, i32 %i.ab, i32 -1     ; 2 uses
  %.not178191 = icmp eq i32 %.0163, %.0162
  br i1 %.not178191, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %.0163.sink = select i1 %i.i, i32 %.0163, i32 %6
  %i.ad = sext i32 %.0163.sink to i64             ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !79
  %i.ah = sext i32 %i.ag to i64
  %.sink222 = select i1 %i.i, i32 %6, i32 %.0163
  %i.ai = sext i32 %.sink222 to i64               ; 2 uses
  %i.aj = mul nsw i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.aj
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ad
  %i.am = sext i32 %i.w to i64
  %i.an = mul nsw i64 %i.am, %i.ai
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.as = icmp eq i32 %9, 3                       ; 2 uses
  %i.at = add nsw i32 %i.w, -1
  br label %bb.e

._crit_edge:                                      ; preds = %bb.af, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void

bb.e:                                             ; preds = %.lr.ph, %bb.af
  %.0158197 = phi i32 [ %.0163, %.lr.ph ], [ %i.au, %bb.af ] ; 3 uses
  %.1196 = phi ptr [ %i.ao, %.lr.ph ], [ %i.hh, %bb.af ] ; 4 uses
  %.1161194 = phi ptr [ %i.ak, %.lr.ph ], [ %i.hi, %bb.af ] ; 7 uses
  %.0164193 = phi i32 [ %i.k, %.lr.ph ], [ %i.bd, %bb.af ] ; 4 uses
  %.0166192 = phi i32 [ %i.j, %.lr.ph ], [ %i.bc, %bb.af ] ; 4 uses
  %i.au = add nsw i32 %.0158197, %5               ; 8 uses
  %i.av = add nsw i32 %.0164193, -1
  %i.aw = add nsw i32 %.0166192, -1
  %i.ax = add nsw i32 %.0164193, 1
  %10 = add nsw i32 %.0166192, 1
  %.0164..0158.a = select i1 %i.i, i32 %i.au, i32 %10
  %i.ay = select i1 %i.i, i32 %i.ax, i32 %i.au
  %11 = select i1 %i.i, i32 %i.au, i32 %i.aw
  %i.az = select i1 %i.i, i32 %i.av, i32 %i.au
  %i.ba = select i1 %i.i, i32 %i.au, i32 %.0166192
  %i.bb = select i1 %i.i, i32 %.0164193, i32 %i.au
  %i.bc = select i1 %i.i, i32 %.0158197, i32 %.0166192 ; 4 uses
  %i.bd = select i1 %i.i, i32 %.0164193, i32 %.0158197 ; 4 uses
  %i.be = insertelement <8 x i32> poison, i32 %i.bd, i64 0
  %i.bf = insertelement <8 x i32> %i.be, i32 %i.bc, i64 1
  %i.bg = insertelement <8 x i32> %i.bf, i32 %i.bb, i64 2
  %i.bh = insertelement <8 x i32> %i.bg, i32 %i.ba, i64 3
  %i.bi = insertelement <8 x i32> %i.bh, i32 %i.az, i64 4
  %i.bj = insertelement <8 x i32> %i.bi, i32 %11, i64 5
  %i.bk = insertelement <8 x i32> %i.bj, i32 %i.ay, i64 6
  %i.bl = insertelement <8 x i32> %i.bk, i32 %.0164..0158.a, i64 7
  %i.bm = add nsw <8 x i32> %i.bl, splat (i32 600)
  %i.bn = srem <8 x i32> %i.bm, splat (i32 6)     ; 8 uses
  %i.bo = extractelement <8 x i32> %i.bn, i64 0
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [6 x i8], ptr %8, i64 %i.bp
  %i.br = extractelement <8 x i32> %i.bn, i64 1
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %i.bq, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !97  ; 3 uses
  %i.bv = extractelement <8 x i32> %i.bn, i64 2
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [6 x i8], ptr %8, i64 %i.bw
  %i.by = extractelement <8 x i32> %i.bn, i64 3
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds i8, ptr %i.bx, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !97  ; 2 uses
  %i.cc = extractelement <8 x i32> %i.bn, i64 4
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [6 x i8], ptr %8, i64 %i.cd
  %i.cf = extractelement <8 x i32> %i.bn, i64 5
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %i.ce, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !97  ; 2 uses
  %i.cj = extractelement <8 x i32> %i.bn, i64 6
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [6 x i8], ptr %8, i64 %i.ck
  %i.cm = extractelement <8 x i32> %i.bn, i64 7
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr %i.cl, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !97
  %i.cq = zext i8 %i.cp to i64                    ; 2 uses
  %i.cr = zext i8 %i.bu to i64                    ; 4 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.cr
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !12 ; 6 uses
  %i.cu = zext i8 %i.cb to i64                    ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.cu
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !12 ; 3 uses
  %i.cx = zext i8 %i.ci to i64                    ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.cx
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !12 ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.cq
  %i.db = load float, ptr %i.da, align 4, !tbaa !12 ; 2 uses
  %i.dc = load float, ptr %7, align 4, !tbaa !12
  %i.dd = load float, ptr %i.ap, align 4, !tbaa !12
  %i.de = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dc, float %i.dd)
  %i.df = load float, ptr %i.aq, align 4, !tbaa !12
  %i.dg = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.de, float %i.df) ; 2 uses
  %i.dh = icmp eq i32 %i.bc, 0
  br i1 %i.dh, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.di = icmp eq i32 %i.bc, %i.at
  %i.dj = icmp eq i32 %i.bd, 0
  %or.cond = or i1 %i.dj, %i.di
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dk = load i32, ptr %i.ar, align 4, !tbaa !78
  %i.dl = add nsw i32 %i.dk, -1
  %i.dm = icmp eq i32 %i.bd, %i.dl
  br i1 %i.dm, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  br i1 %i.as, label %bb.i, label %bb.af

bb.i:                                             ; preds = %bb.h
  %i.dn = load float, ptr %.1161194, align 4, !tbaa !12
  %i.do = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.dg, float %i.dn)
  br label %.sink.split

bb.j:                                             ; preds = %bb.g
  %.not179 = icmp eq i8 %i.bu, %i.cb
  %i.dp = load float, ptr %.1161194, align 4, !tbaa !12 ; 7 uses
  br i1 %.not179, label %.thread189, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dq = fcmp reassoc nsz arcp contract afn olt float %i.dp, %i.ct
  %i.dr = fcmp reassoc nsz arcp contract afn ogt float %i.dp, f0x3727C5AC
  %or.cond181 = and i1 %i.dq, %i.dr
  br i1 %or.cond181, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ds = getelementptr inbounds [4 x i8], ptr %.1161194, i64 %i.y
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !12 ; 4 uses
  %i.du = fcmp reassoc nsz arcp contract afn olt float %i.dt, %i.cw
  %i.dv = fcmp reassoc nsz arcp contract afn ogt float %i.dt, f0x3727C5AC
  %or.cond182 = and i1 %i.du, %i.dv
  br i1 %or.cond182, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.dw = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %i.cr
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.cu
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !15 ; 3 uses
  %i.dz = icmp sgt i32 %i.dy, 0
  br i1 %i.dz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ea = zext nneg i32 %i.dy to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ea ; 2 uses
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !12
  %i.ed = fmul reassoc nsz arcp contract afn float %i.ec, 3.000000e+00
  %i.ee = fdiv reassoc nsz arcp contract afn float %i.dt, %i.dp
  %i.ef = fadd reassoc nsz arcp contract afn float %i.ed, %i.ee
  %i.eg = fmul reassoc nsz arcp contract afn float %i.ef, 2.500000e-01
  store float %i.eg, ptr %i.eb, align 4, !tbaa !12
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.eh = sub nsw i32 0, %i.dy
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ei ; 2 uses
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !12
  %i.el = fmul reassoc nsz arcp contract afn float %i.ek, 3.000000e+00
  %i.em = fdiv reassoc nsz arcp contract afn float %i.dp, %i.dt
  %i.en = fadd reassoc nsz arcp contract afn float %i.el, %i.em
  %i.eo = fmul reassoc nsz arcp contract afn float %i.en, 2.500000e-01
  store float %i.eo, ptr %i.ej, align 4, !tbaa !12
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.l, %bb.k
  %i.ep = fadd reassoc nsz arcp contract afn float %i.ct, f0xB727C5AC
  %i.eq = fcmp reassoc nsz arcp contract afn ult float %i.dp, %i.ep
  br i1 %i.eq, label %bb.ae, label %bb.q

.thread189:                                       ; preds = %bb.j
  %i.er = fadd reassoc nsz arcp contract afn float %i.ct, f0xB727C5AC
  %i.es = fcmp reassoc nsz arcp contract afn ult float %i.dp, %i.er
  br i1 %i.es, label %bb.ae, label %.thread190

bb.q:                                             ; preds = %bb.p
  %i.et = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %i.cr
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.cu
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !15 ; 3 uses
  %i.ew = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ct, float %i.cw) ; 3 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr %.1161194, i64 %i.y
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !12 ; 3 uses
  %i.ez = fadd reassoc nsz arcp contract afn float %i.cw, f0xB727C5AC
  %i.fa = fcmp reassoc nsz arcp contract afn ult float %i.ey, %i.ez
  br i1 %i.fa, label %bb.r, label %interp_pix_xtrans.exit

bb.r:                                             ; preds = %bb.q
  %i.fb = icmp sgt i32 %i.ev, 0
  br i1 %i.fb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fc = zext nneg i32 %i.ev to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fc
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !12
  %i.ff = fdiv reassoc nsz arcp contract afn float %i.ey, %i.fe
  %i.fg = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ff, float %i.ew)
  br label %interp_pix_xtrans.exit

bb.t:                                             ; preds = %bb.r
  %i.fh = sub nsw i32 0, %i.ev
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fi
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !12
  %i.fl = fmul reassoc nsz arcp contract afn float %i.fk, %i.ey
  %i.fm = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.fl, float %i.ew)
  br label %interp_pix_xtrans.exit

.thread190:                                       ; preds = %.thread189
  %.not180 = icmp eq i8 %i.ci, %i.bu
  %i.fn = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %i.cr ; 2 uses
  br i1 %.not180, label %bb.y, label %bb.u

bb.u:                                             ; preds = %.thread190
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.cx
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !15 ; 3 uses
  %i.fq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ct, float %i.cz) ; 3 uses
  %i.fr = getelementptr inbounds [4 x i8], ptr %.1161194, i64 %i.x
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !12 ; 3 uses
  %i.ft = fadd reassoc nsz arcp contract afn float %i.cz, f0xB727C5AC
  %i.fu = fcmp reassoc nsz arcp contract afn ult float %i.fs, %i.ft
  br i1 %i.fu, label %bb.v, label %interp_pix_xtrans.exit

bb.v:                                             ; preds = %bb.u
  %i.fv = icmp sgt i32 %i.fp, 0
  br i1 %i.fv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fw = zext nneg i32 %i.fp to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fw
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !12
  %i.fz = fdiv reassoc nsz arcp contract afn float %i.fs, %i.fy
  %i.ga = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.fz, float %i.fq)
  br label %interp_pix_xtrans.exit

bb.x:                                             ; preds = %bb.v
  %i.gb = sub nsw i32 0, %i.fp
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gc
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !12
  %i.gf = fmul reassoc nsz arcp contract afn float %i.ge, %i.fs
  %i.gg = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.gf, float %i.fq)
  br label %interp_pix_xtrans.exit

bb.y:                                             ; preds = %.thread190
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.cq
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !15 ; 3 uses
  %i.gj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ct, float %i.db) ; 3 uses
  %i.gk = getelementptr [4 x i8], ptr %.1161194, i64 %i.y
  %i.gl = getelementptr [4 x i8], ptr %i.gk, i64 %i.z
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !12 ; 3 uses
  %i.gn = fadd reassoc nsz arcp contract afn float %i.db, f0xB727C5AC
  %i.go = fcmp reassoc nsz arcp contract afn ult float %i.gm, %i.gn
  br i1 %i.go, label %bb.z, label %interp_pix_xtrans.exit

bb.z:                                             ; preds = %bb.y
  %i.gp = icmp sgt i32 %i.gi, 0
  br i1 %i.gp, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gq = zext nneg i32 %i.gi to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gq
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !12
  %i.gt = fdiv reassoc nsz arcp contract afn float %i.gm, %i.gs
  %i.gu = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.gt, float %i.gj)
  br label %interp_pix_xtrans.exit

bb.ab:                                            ; preds = %bb.z
  %i.gv = sub nsw i32 0, %i.gi
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gw
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !12
  %i.gz = fmul reassoc nsz arcp contract afn float %i.gy, %i.gm
  %i.ha = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.gz, float %i.gj)
  br label %interp_pix_xtrans.exit

interp_pix_xtrans.exit:                           ; preds = %bb.ab, %bb.aa, %bb.y, %bb.x, %bb.w, %bb.u, %bb.t, %bb.s, %bb.q
  %.0 = phi nsz float [ %i.fq, %bb.u ], [ %i.ew, %bb.q ], [ %i.fm, %bb.t ], [ %i.fg, %bb.s ], [ %i.gg, %bb.x ], [ %i.ga, %bb.w ], [ %i.ha, %bb.ab ], [ %i.gu, %bb.aa ], [ %i.gj, %bb.y ] ; 3 uses
  switch i32 %9, label %bb.ad [
    i32 0, label %.sink.split
    i32 3, label %bb.ac
  ]

bb.ac:                                            ; preds = %interp_pix_xtrans.exit
  %i.hb = load float, ptr %.1196, align 4, !tbaa !12
  %i.hc = fadd reassoc nsz arcp contract afn float %i.hb, %.0
  %i.hd = fmul reassoc nsz arcp contract afn float %i.hc, 2.500000e-01
  %i.he = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.dg, float %i.hd)
  br label %.sink.split

bb.ad:                                            ; preds = %interp_pix_xtrans.exit
  %i.hf = load float, ptr %.1196, align 4, !tbaa !12
  %i.hg = fadd reassoc nsz arcp contract afn float %i.hf, %.0
  br label %.sink.split

bb.ae:                                            ; preds = %.thread189, %bb.p
  br i1 %i.as, label %.sink.split, label %bb.af

.sink.split:                                      ; preds = %bb.ae, %interp_pix_xtrans.exit, %bb.i, %bb.ac, %bb.ad
  %.0.sink = phi float [ %i.do, %bb.i ], [ %i.hg, %bb.ad ], [ %i.he, %bb.ac ], [ %.0, %interp_pix_xtrans.exit ], [ %i.dp, %bb.ae ]
  store float %.0.sink, ptr %.1196, align 4, !tbaa !12
  br label %bb.af

bb.af:                                            ; preds = %.sink.split, %bb.ae, %bb.h
  %i.hh = getelementptr inbounds [4 x i8], ptr %.1196, i64 %i.y
  %i.hi = getelementptr inbounds [4 x i8], ptr %.1161194, i64 %i.y
  %.not178 = icmp eq i32 %i.au, %.0162
  br i1 %.not178, label %._crit_edge, label %bb.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @process_lch_xtrans(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, float noundef %5) unnamed_addr #17 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 14 uses
  %i.b = alloca [4 x float], align 16             ; 15 uses
  %i.c = alloca [3 x i32], align 8                ; 14 uses
  %i.d = alloca [4 x float], align 16             ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !78   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph28, label %._crit_edge29.split

.lr.ph28:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !79   ; 16 uses
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !79   ; 4 uses
  %i.n = sext i32 %i.m to i64                     ; 24 uses
  %i.o = icmp sgt i32 %i.j, 0
  %i.p = sub nsw i32 0, %i.m
  %i.q = sext i32 %i.p to i64
  %i.r = add nsw i32 %i.j, -3
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br i1 %i.o, label %.lr.ph.preheader, label %._crit_edge29.split

.lr.ph.preheader:                                 ; preds = %.lr.ph28
  %i.y = add nsw i32 %i.g, -3
  %i.z = sext i32 %i.y to i64
  %wide.trip.count = zext nneg i32 %i.g to i64    ; 3 uses
  %.idx = mul nsw i64 %i.n, -8
  %i.aa = sub nsw i64 0, %i.n
  %.idx104 = mul nsw i64 %i.n, -8
  %i.ab = sub nsw i64 0, %i.n
  %.idx123 = mul nsw i64 %i.n, -8
  %i.ac = sub nsw i64 0, %i.n
  %i.ad = sub nsw i64 0, %i.n
  %i.ae = sub nsw i64 0, %i.n
  %i.af = sub nsw i64 0, %i.n
  %.idx197 = shl nsw i64 %i.n, 3
  %.idx216 = shl nsw i64 %i.n, 3
  %.idx235 = shl nsw i64 %i.n, 3
  %i.ag = sub nsw i64 0, %i.n
  %i.ah = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.ai = mul nsw i64 %i.ah, %i.k
  %i.aj = add nsw i32 %i.j, -1
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = add i64 %i.ai, %i.ak
  %i.am = shl i64 %i.al, 2
  %i.an = getelementptr i8, ptr %2, i64 %i.am
  %scevgep = getelementptr i8, ptr %i.an, i64 4
  %i.ao = mul nsw i64 %i.ah, %i.n
  %i.ap = add i64 %i.ao, %i.ak
  %i.aq = shl i64 %i.ap, 2
  %i.ar = getelementptr i8, ptr %1, i64 %i.aq
  %scevgep266 = getelementptr i8, ptr %i.ar, i64 4
  %i.as = zext nneg i32 %i.j to i64               ; 10 uses
  %i.at = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.au = mul nsw i64 %i.at, %i.k
  %i.av = add nsw i32 %i.j, -1
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = add i64 %i.au, %i.aw
  %i.ay = shl i64 %i.ax, 2
  %i.az = getelementptr i8, ptr %2, i64 %i.ay
  %scevgep287 = getelementptr i8, ptr %i.az, i64 4
  %i.ba = mul nsw i64 %i.at, %i.n
  %i.bb = add i64 %i.ba, %i.aw
  %i.bc = shl i64 %i.bb, 2
  %i.bd = getelementptr i8, ptr %1, i64 %i.bc
  %scevgep288 = getelementptr i8, ptr %i.bd, i64 4
  %i.be = insertelement <2 x float> poison, float %5, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bg = insertelement <8 x float> poison, float %5, i64 0
  %i.bh = shufflevector <8 x float> %i.bg, <8 x float> poison, <8 x i32> zeroinitializer ; 9 uses
  %min.iters.check = icmp ult i32 %i.j, 8         ; 2 uses
  %bound0289 = icmp ult ptr %2, %scevgep288
  %bound1290 = icmp ult ptr %1, %scevgep287
  %found.conflict291 = and i1 %bound0289, %bound1290
  %stride.check292 = icmp slt i32 %i.m, 0
  %i.bi = or i1 %found.conflict291, %stride.check292
  %min.iters.check295 = icmp ult i32 %i.j, 32
  %i.bj = and i64 %i.as, 24
  %n.vec297 = and i64 %i.as, 2147483616           ; 5 uses
  %i.bk = trunc nuw nsw i64 %n.vec297 to i32
  %i.bl = shl nuw nsw i64 %n.vec297, 2            ; 2 uses
  %broadcast.splatinsert298 = insertelement <8 x float> poison, float %5, i64 0
  %broadcast.splat299 = shufflevector <8 x float> %broadcast.splatinsert298, <8 x float> poison, <8 x i32> zeroinitializer ; 8 uses
  %cmp.n310 = icmp eq i64 %n.vec297, %i.as
  %min.epilog.iters.check317 = icmp eq i64 %i.bj, 0
  %n.vec319 = and i64 %i.as, 2147483640           ; 4 uses
  %i.bm = trunc nuw nsw i64 %n.vec319 to i32
  %i.bn = shl nuw nsw i64 %n.vec319, 2            ; 2 uses
  %broadcast.splatinsert320 = insertelement <8 x float> poison, float %5, i64 0
  %broadcast.splat321 = shufflevector <8 x float> %broadcast.splatinsert320, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n329 = icmp eq i64 %n.vec319, %i.as
  %bound0 = icmp ult ptr %2, %scevgep266
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.m, 0
  %i.bo = or i1 %found.conflict, %stride.check
  %min.iters.check267 = icmp ult i32 %i.j, 32
  %i.bp = and i64 %i.as, 24
  %n.vec = and i64 %i.as, 2147483616              ; 5 uses
  %i.bq = trunc nuw nsw i64 %n.vec to i32
  %i.br = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %5, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 8 uses
  %cmp.n = icmp eq i64 %n.vec, %i.as
  %min.epilog.iters.check = icmp eq i64 %i.bp, 0
  %n.vec274 = and i64 %i.as, 2147483640           ; 4 uses
  %i.bs = trunc nuw nsw i64 %n.vec274 to i32
  %i.bt = shl nuw nsw i64 %n.vec274, 2            ; 2 uses
  %broadcast.splatinsert275 = insertelement <8 x float> poison, float %5, i64 0
  %broadcast.splat276 = shufflevector <8 x float> %broadcast.splatinsert275, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n282 = icmp eq i64 %n.vec274, %i.as
  br label %.lr.ph

._crit_edge29.split:                              ; preds = %._crit_edge, %.lr.ph28, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 8 uses
  %i.bu = mul nuw nsw i64 %indvars.iv, %i.k
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bu ; 11 uses
  %i.bw = mul nsw i64 %indvars.iv, %i.n
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bw ; 11 uses
  %i.by = icmp samesign ult i64 %indvars.iv, 2    ; 2 uses
  %.not = icmp sgt i64 %indvars.iv, %i.z
  %.fr = freeze i1 %.not                          ; 2 uses
  %or.cond2 = or i1 %i.by, %.fr                   ; 2 uses
  %i.bz = trunc i64 %indvars.iv to i32
  %i.ca = add i32 %i.bz, 600                      ; 2 uses
  %i.cb = urem i32 %i.ca, 6
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [6 x i8], ptr %i.e, i64 %i.cc
  %i.ce = or i1 %.fr, %i.by
  br i1 %i.ce, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.cf = trunc i64 %indvars.iv to i32
  %i.cg = add i32 %i.cf, 599
  %i.ch = srem i32 %i.cg, 6
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [6 x i8], ptr %i.e, i64 %i.ci ; 3 uses
  %i.ck = srem i32 %i.ca, 6
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [6 x i8], ptr %i.e, i64 %i.cl ; 3 uses
  %i.cn = trunc i64 %indvars.iv to i32
  %i.co = add i32 %i.cn, 601
  %i.cp = srem i32 %i.co, 6
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [6 x i8], ptr %i.e, i64 %i.cq ; 3 uses
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %or.cond2, label %iter.check, label %iter.check314

iter.check314:                                    ; preds = %.lr.ph.split.us
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.bi
  br i1 %brmerge, label %.lr.ph.split.us.split.preheader, label %vector.main.loop.iter.check294

vector.main.loop.iter.check294:                   ; preds = %iter.check314
  br i1 %min.iters.check295, label %vec.epilog.ph318, label %vector.ph296

vector.ph296:                                     ; preds = %vector.main.loop.iter.check294
  %i.cs = getelementptr i8, ptr %i.bx, i64 %i.bl
  %i.ct = getelementptr i8, ptr %i.bv, i64 %i.bl
  br label %vector.body300

vector.body300:                                   ; preds = %vector.ph296, %vector.body300
  %index301 = phi i64 [ 0, %vector.ph296 ], [ %index.next308, %vector.body300 ] ; 2 uses
  %i.cu = shl i64 %index301, 2                    ; 2 uses
  %next.gep302 = getelementptr i8, ptr %i.bx, i64 %i.cu ; 4 uses
  %next.gep303 = getelementptr i8, ptr %i.bv, i64 %i.cu ; 4 uses
  %i.cv = getelementptr i8, ptr %next.gep302, i64 32
  %i.cw = getelementptr i8, ptr %next.gep302, i64 64
  %i.cx = getelementptr i8, ptr %next.gep302, i64 96
  %wide.load304 = load <8 x float>, ptr %next.gep302, align 4, !tbaa !12, !alias.scope !500 ; 2 uses
  %wide.load305 = load <8 x float>, ptr %i.cv, align 4, !tbaa !12, !alias.scope !500 ; 2 uses
  %wide.load306 = load <8 x float>, ptr %i.cw, align 4, !tbaa !12, !alias.scope !500 ; 2 uses
  %wide.load307 = load <8 x float>, ptr %i.cx, align 4, !tbaa !12, !alias.scope !500 ; 2 uses
  %i.cy = fcmp reassoc nsz arcp contract afn olt <8 x float> %broadcast.splat299, %wide.load304
  %i.cz = fcmp reassoc nsz arcp contract afn olt <8 x float> %broadcast.splat299, %wide.load305
  %i.da = fcmp reassoc nsz arcp contract afn olt <8 x float> %broadcast.splat299, %wide.load306
  %i.db = fcmp reassoc nsz arcp contract afn olt <8 x float> %broadcast.splat299, %wide.load307
  %i.dc = select reassoc nsz arcp contract afn <8 x i1> %i.cy, <8 x float> %broadcast.splat299, <8 x float> %wide.load304
  %i.dd = select reassoc nsz arcp contract afn <8 x i1> %i.cz, <8 x float> %broadcast.splat299, <8 x float> %wide.load305
  %i.de = select reassoc nsz arcp contract afn <8 x i1> %i.da, <8 x float> %broadcast.splat299, <8 x float> %wide.load306
  %i.df = select reassoc nsz arcp contract afn <8 x i1> %i.db, <8 x float> %broadcast.splat299, <8 x float> %wide.load307
  %i.dg = getelementptr i8, ptr %next.gep303, i64 32
  %i.dh = getelementptr i8, ptr %next.gep303, i64 64
end_hunk_0
