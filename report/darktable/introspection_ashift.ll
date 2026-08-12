inline.NumInlined: 378
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 78
begin_hunk_0_@distort_mask:bb.a
  br label %bb.m

.lr.ph77.split:                                   ; preds = %.lr.ph77, %._crit_edge
  %i.cr = phi i32 [ %i.cz, %._crit_edge ], [ %i.ce, %.lr.ph77 ]
  %i.cs = phi i32 [ %i.da, %._crit_edge ], [ %i.cp, %.lr.ph77 ] ; 3 uses
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %._crit_edge ], [ 0, %.lr.ph77 ] ; 3 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = mul nsw i64 %indvars.iv81, %i.ct
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cu
  %i.cw = icmp sgt i32 %i.cs, 0
  br i1 %i.cw, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph77.split
  %i.cx = trunc nsw i64 %indvars.iv81 to i32
  %i.cy = insertelement <2 x i32> poison, i32 %i.cx, i64 1
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i32, ptr %i.cd, align 4, !tbaa !112
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph77.split
  %i.cz = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.cr, %.lr.ph77.split ] ; 2 uses
  %i.da = phi i32 [ %i.fg, %._crit_edge.loopexit ], [ %i.cs, %.lr.ph77.split ]
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %i.db = sext i32 %i.cz to i64
  %i.dc = icmp slt i64 %indvars.iv.next82, %i.db
  br i1 %i.dc, label %.lr.ph77.split, label %._crit_edge78, !llvm.loop !114

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %i.dd = trunc nsw i64 %indvars.iv to i32
  %i.de = load float, ptr %i.bq, align 4, !tbaa !113
  %i.df = load float, ptr %i.ch, align 4, !tbaa !14, !noalias !116
  %i.dg = load float, ptr %i.ci, align 4, !tbaa !14, !noalias !116
  %i.dh = load float, ptr %i.cj, align 16, !tbaa !14, !noalias !116
  %i.di = load float, ptr %i.ck, align 4, !tbaa !14, !noalias !116
  %i.dj = load float, ptr %i.cl, align 8, !tbaa !14, !noalias !116
  %i.dk = load <2 x i32>, ptr %5, align 4, !tbaa !41
  %i.dl = insertelement <2 x i32> %i.cy, i32 %i.dd, i64 0
  %i.dm = add nsw <2 x i32> %i.dk, %i.dl
  %i.dn = sitofp <2 x i32> %i.dm to <2 x float>
  %i.do = fadd reassoc nsz arcp contract afn <2 x float> %i.cc, %i.dn
  %i.dp = insertelement <2 x float> poison, float %i.de, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = fdiv reassoc nsz arcp contract afn <2 x float> %i.do, %i.dq ; 3 uses
  %i.ds = extractelement <2 x float> %i.dr, i64 1 ; 2 uses
  %i.dt = fmul reassoc nsz arcp contract afn float %i.ds, %i.df
  %i.du = extractelement <2 x float> %i.dr, i64 0 ; 2 uses
  %i.dv = fmul reassoc nsz arcp contract afn float %i.dg, %i.du
  %i.dw = fmul reassoc nsz arcp contract afn float %i.dh, %i.ds
  %i.dx = fadd reassoc nsz arcp contract afn float %i.dw, %i.dv
  %i.dy = fadd reassoc nsz arcp contract afn float %i.dx, %i.di
  %i.dz = fmul reassoc nsz arcp contract afn float %i.dj, %i.du
  %i.ea = load <9 x float>, ptr %i.a, align 64, !tbaa !14, !noalias !116 ; 2 uses
  %i.eb = shufflevector <9 x float> %i.ea, <9 x float> poison, <2 x i32> <i32 0, i32 7>
  %i.ec = fmul reassoc nsz arcp contract afn <2 x float> %i.dr, %i.eb
  %i.ed = shufflevector <9 x float> %i.ea, <9 x float> poison, <2 x i32> <i32 2, i32 8> ; 2 uses
  %i.ee = insertelement <2 x float> %i.ed, float %i.dz, i64 1
  %i.ef = fadd reassoc nsz arcp contract afn <2 x float> %i.ee, %i.ec
  %i.eg = insertelement <2 x float> %i.ed, float %i.dt, i64 0
  %i.eh = fadd reassoc nsz arcp contract afn <2 x float> %i.ef, %i.eg ; 2 uses
  %i.ei = load float, ptr %i.cm, align 4, !tbaa !113
  %i.ej = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = insertelement <2 x float> %i.eh, float %i.dy, i64 1
  %i.em = fmul reassoc nsz arcp contract afn <2 x float> %i.ek, %i.el
  %i.en = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eo = fdiv reassoc nsz arcp contract afn <2 x float> %i.em, %i.en ; 2 uses
  %i.ep = load <2 x i32>, ptr %4, align 4, !tbaa !41
  %i.eq = sitofp <2 x i32> %i.ep to <2 x float>   ; 2 uses
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %i.eo, %i.eq
  %i.er = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %foldExtExtBinop87 = fsub reassoc nsz arcp contract afn <2 x float> %i.eo, %i.eq
  %i.es = extractelement <2 x float> %foldExtExtBinop87, i64 1 ; 3 uses
  %i.et = load i32, ptr %i.cn, align 4, !tbaa !111 ; 2 uses
  %i.eu = load i32, ptr %i.co, align 4, !tbaa !112
  %i.ev = call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.aw, ptr noundef %2, float noundef %i.er, float noundef %i.es, i32 noundef %i.et, i32 noundef %i.eu, i32 noundef 1, i32 noundef %i.et) #34
  %i.ew = fcmp reassoc nsz arcp contract afn ult float %i.ev, 0.000000e+00
  br i1 %i.ew, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.ex = load i32, ptr %i.cn, align 4, !tbaa !111 ; 2 uses
  %i.ey = load i32, ptr %i.co, align 4, !tbaa !112
  %i.ez = call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.aw, ptr noundef %2, float noundef %i.er, float noundef %i.es, i32 noundef %i.ex, i32 noundef %i.ey, i32 noundef 1, i32 noundef %i.ex) #34
  %i.fa = fcmp reassoc nsz arcp contract afn ugt float %i.ez, 1.000000e+00
  br i1 %i.fa, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fb = load i32, ptr %i.cn, align 4, !tbaa !111 ; 2 uses
  %i.fc = load i32, ptr %i.co, align 4, !tbaa !112
  %i.fd = call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.aw, ptr noundef %2, float noundef %i.er, float noundef %i.es, i32 noundef %i.fb, i32 noundef %i.fc, i32 noundef 1, i32 noundef %i.fb) #34
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.k, %bb.j
  %i.fe = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.j ], [ %i.fd, %bb.k ], [ 0.000000e+00, %.lr.ph ]
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv
  store float %i.fe, ptr %i.ff, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fg = load i32, ptr %i.cg, align 4, !tbaa !111 ; 2 uses
  %i.fh = sext i32 %i.fg to i64
  %i.fi = icmp slt i64 %indvars.iv.next, %i.fh
  br i1 %i.fi, label %.lr.ph, label %._crit_edge.loopexit

bb.m:                                             ; preds = %._crit_edge78, %bb.i
  ret void
}

declare ptr @dt_interpolation_new(i32 noundef) local_unnamed_addr #7

declare float @dt_interpolation_compute_sample(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @modify_roi_out(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef initializes((0, 20)) %2, ptr noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [3 x [3 x float]], align 64       ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !42  ; 15 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !120
  %i.d = load float, ptr %i.c, align 4, !tbaa !59 ; 2 uses
  %i.e = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.d)
  %i.f = fcmp reassoc nsz arcp contract afn uge float %i.e, f0x38D1B717
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !61 ; 2 uses
  %i.g = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %.pre)
  %i.h = fcmp reassoc nsz arcp contract afn uge float %i.g, f0x38D1B717
  %or.cond114 = select i1 %i.f, i1 true, i1 %i.h
  br i1 %or.cond114, label %_isneutral.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !62
  %i.k = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.j)
  %i.l = fcmp reassoc nsz arcp contract afn uge float %i.k, f0x38D1B717
  br i1 %i.l, label %_isneutral.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.n = load float, ptr %i.m, align 4, !tbaa !63
  %i.o = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.n)
  %i.p = fcmp reassoc nsz arcp contract afn uge float %i.o, f0x38D1B717
  br i1 %i.p, label %_isneutral.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.r = load float, ptr %i.q, align 4, !tbaa !64
  %i.s = fadd reassoc nsz arcp contract afn float %i.r, -1.000000e+00
  %i.t = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.s)
  %i.u = fcmp reassoc nsz arcp contract afn uge float %i.t, f0x38D1B717
  br i1 %i.u, label %_isneutral.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.w = load float, ptr %i.v, align 4, !tbaa !65
  %i.x = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.w)
  %i.y = fcmp reassoc nsz arcp contract afn uge float %i.x, f0x38D1B717
  br i1 %i.y, label %_isneutral.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.aa = load float, ptr %i.z, align 4, !tbaa !66
  %i.ab = fadd reassoc nsz arcp contract afn float %i.aa, -1.000000e+00
  %i.ac = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ab)
  %i.ad = fcmp reassoc nsz arcp contract afn uge float %i.ac, f0x38D1B717
  br i1 %i.ad, label %_isneutral.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.af = load float, ptr %i.ae, align 4, !tbaa !67
  %i.ag = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.af)
  %i.ah = fcmp reassoc nsz arcp contract afn uge float %i.ag, f0x38D1B717
  br i1 %i.ah, label %_isneutral.exit.thread, label %_isneutral.exit

_isneutral.exit:                                  ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !68
  %i.ak = fadd reassoc nsz arcp contract afn float %i.aj, -1.000000e+00
  %i.al = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ak)
  %i.am = fcmp reassoc nsz arcp contract afn uge float %i.al, f0x38D1B717
  br i1 %i.am, label %_isneutral.exit.thread, label %bb.o

_isneutral.exit.thread:                           ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %_isneutral.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ao = load float, ptr %i.an, align 4, !tbaa !62
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !63
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.as = load float, ptr %i.ar, align 4, !tbaa !69
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.au = load float, ptr %i.at, align 4, !tbaa !70
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.aw = load float, ptr %i.av, align 4, !tbaa !64
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ay = load i32, ptr %i.ax, align 16, !tbaa !71
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !72
  call fastcc void @_homography(ptr noundef %i.a, float noundef %i.d, float noundef %.pre, float noundef %i.ao, float noundef %i.aq, float noundef %i.as, float noundef %i.au, float noundef %i.aw, i32 noundef %i.ay, i32 noundef %i.ba, i32 noundef 0)
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !112 ; 4 uses
  %invariant.op89 = add nsw i32 %i.bc, -1         ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.preheader.lr.ph, label %._crit_edge96

.preheader.lr.ph:                                 ; preds = %_isneutral.exit.thread
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !111 ; 3 uses
  %invariant.op = add i32 %i.bf, -1
  %i.bg = icmp sgt i32 %i.bf, 0
  %i.bh = load <4 x float>, ptr %i.a, align 64    ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bj = load float, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.bl = load float, ptr %i.bk, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bn = load float, ptr %i.bm, align 32
  br i1 %i.bg, label %.preheader.lr.ph.split.us, label %.preheader

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bp = load <4 x float>, ptr %i.bo, align 16   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bt = load i32, ptr %3, align 4, !tbaa !121
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !122
  %i.bv = load float, ptr %i.br, align 4, !tbaa !113 ; 2 uses
  %i.bw = load float, ptr %i.bq, align 4, !tbaa !113
  %i.bx = shufflevector <4 x float> %i.bh, <4 x float> %i.bp, <2 x i32> <i32 1, i32 4>
  %i.by = shufflevector <4 x float> %i.bh, <4 x float> %i.bp, <2 x i32> <i32 2, i32 5>
  %i.bz = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bv ; 2 uses
  %invariant.op123 = fmul reassoc nsz arcp contract afn float %i.bz, %i.bl
  %i.ca = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = shufflevector <4 x float> %i.bh, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.cd = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bv ; 2 uses
  %invariant.op122 = fmul reassoc nsz arcp contract afn float %i.cd, %i.bj
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %.06294.us = phi i32 [ 0, %.preheader.lr.ph.split.us ], [ %.reass90.us, %._crit_edge.us ] ; 2 uses
  %i.ce = phi <2 x float> [ splat (float f0xFF7FFFFF), %.preheader.lr.ph.split.us ], [ %i.dd, %._crit_edge.us ]
  %i.cf = phi <2 x float> [ splat (float f0x7F7FFFFF), %.preheader.lr.ph.split.us ], [ %i.dc, %._crit_edge.us ]
  %i.cg = add nsw i32 %i.bu, %.06294.us
  %i.ch = sitofp reassoc nsz arcp contract afn i32 %i.cg to float ; 2 uses
  %i.ci = fmul reassoc nsz arcp contract afn float %i.ch, %i.bz
  %i.cj = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = fmul reassoc nsz arcp contract afn <2 x float> %i.ck, %i.bx
  %i.cm = fadd reassoc nsz arcp contract afn <2 x float> %i.cl, %i.by
  %.reass124 = fmul reassoc nsz arcp contract afn float %i.ch, %invariant.op123
  %invariant.op87.us = fadd reassoc nsz arcp contract afn float %.reass124, %i.bn
  br label %bb.h

bb.h:                                             ; preds = %.preheader.us, %bb.h
  %.06178.us = phi i32 [ 0, %.preheader.us ], [ %.reass.us, %bb.h ] ; 2 uses
  %i.cn = phi <2 x float> [ %i.ce, %.preheader.us ], [ %i.dd, %bb.h ] ; 2 uses
  %i.co = phi <2 x float> [ %i.cf, %.preheader.us ], [ %i.dc, %bb.h ] ; 2 uses
  %i.cp = add nsw i32 %i.bt, %.06178.us
  %i.cq = sitofp reassoc nsz arcp contract afn i32 %i.cp to float ; 2 uses
  %i.cr = fmul reassoc nsz arcp contract afn float %i.cq, %i.cd
  %.reass = fmul reassoc nsz arcp contract afn float %i.cq, %invariant.op122
  %.reass88.us = fadd reassoc nsz arcp contract afn float %.reass, %invariant.op87.us
  %i.cs = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = fmul reassoc nsz arcp contract afn <2 x float> %i.ct, %i.cc
  %i.cv = fadd reassoc nsz arcp contract afn <2 x float> %i.cu, %i.cm
  %i.cw = fmul reassoc nsz arcp contract afn <2 x float> %i.cb, %i.cv
  %i.cx = insertelement <2 x float> poison, float %.reass88.us, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = fdiv reassoc nsz arcp contract afn <2 x float> %i.cw, %i.cy ; 4 uses
  %i.da = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.cn, %i.cz
  %i.db = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.co, %i.cz
  %i.dc = select <2 x i1> %i.db, <2 x float> %i.co, <2 x float> %i.cz ; 3 uses
  %i.dd = select <2 x i1> %i.da, <2 x float> %i.cn, <2 x float> %i.cz ; 3 uses
  %.reass.us = add i32 %.06178.us, %invariant.op  ; 2 uses
  %i.de = icmp slt i32 %.reass.us, %i.bf
  br i1 %i.de, label %bb.h, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.h
  %.reass90.us = add i32 %.06294.us, %invariant.op89 ; 2 uses
  %i.df = icmp slt i32 %.reass90.us, %i.bc
  br i1 %i.df, label %.preheader.us, label %._crit_edge96.loopexit

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.06294 = phi i32 [ %.reass90, %.preheader ], [ 0, %.preheader.lr.ph ]
  %.reass90 = add i32 %.06294, %invariant.op89    ; 2 uses
  %i.dg = icmp slt i32 %.reass90, %i.bc
  br i1 %i.dg, label %.preheader, label %._crit_edge96

._crit_edge96.loopexit:                           ; preds = %._crit_edge.us
  %i.dh = fadd reassoc nsz arcp contract afn <2 x float> %i.dd, <float 1.000000e+00, float -0.000000e+00>
  br label %._crit_edge96

._crit_edge96:                                    ; preds = %.preheader, %._crit_edge96.loopexit, %_isneutral.exit.thread
  %i.di = phi <2 x float> [ splat (float f0xFF7FFFFF), %_isneutral.exit.thread ], [ %i.dh, %._crit_edge96.loopexit ], [ splat (float f0xFF7FFFFF), %.preheader ] ; 2 uses
  %i.dj = phi <2 x float> [ splat (float f0x7F7FFFFF), %_isneutral.exit.thread ], [ %i.dc, %._crit_edge96.loopexit ], [ splat (float f0x7F7FFFFF), %.preheader ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.dl = extractelement <2 x float> %i.dj, i64 1
  %i.dm = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.do = insertelement <2 x float> %i.dj, float %i.dm, i64 1 ; 2 uses
  %i.dp = fsub reassoc nsz arcp contract afn <2 x float> %i.di, %i.do
  %i.dq = fadd reassoc nsz arcp contract afn <2 x float> %i.di, %i.do
  %i.dr = shufflevector <2 x float> %i.dp, <2 x float> %i.dq, <2 x i32> <i32 0, i32 3>
  %i.ds = load <4 x float>, ptr %i.dk, align 4, !tbaa !14 ; 2 uses
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.du = shufflevector <4 x float> %i.ds, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.dv = fsub reassoc nsz arcp contract afn <2 x float> %i.dt, %i.du
  %i.dw = fmul reassoc nsz arcp contract afn <2 x float> %i.dv, %i.dr
  %i.dx = call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.dw)
  %i.dy = fptosi <2 x float> %i.dx to <2 x i32>   ; 2 uses
  store <2 x i32> %i.dy, ptr %i.dn, align 4, !tbaa !41
  %i.dz = icmp slt <2 x i32> %i.dy, splat (i32 4) ; 2 uses
  %i.ea = extractelement <2 x i1> %i.dz, i64 0
  %i.eb = extractelement <2 x i1> %i.dz, i64 1
  %or.cond = select i1 %i.ea, i1 true, i1 %i.eb
  br i1 %or.cond, label %bb.i, label %bb.n

bb.i:                                             ; preds = %._crit_edge96
  %i.ec = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.ed = and i32 %i.ec, 33554432
  %.not69 = icmp eq i32 %i.ed, 0
  br i1 %.not69, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !167
  call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.6, ptr noundef %i.ef, ptr noundef %0, i32 noundef -2, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull @.str.7) #34
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !167
  %i.ei = getelementptr i8, ptr %i.eh, i64 644
  %.val = load i32, ptr %i.ei, align 4, !tbaa !168
  %i.ej = and i32 %.val, 2
  %.not70 = icmp eq i32 %i.ej, 0
  br i1 %.not70, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ek = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #34
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !181
  %i.en = call ptr %i.em() #34
  call void (ptr, ...) @dt_control_log(ptr noundef %i.ek, ptr noundef %i.en) #34
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ep = load <2 x i32>, ptr %i.eo, align 4, !tbaa !41
  store <2 x i32> %i.ep, ptr %i.dn, align 4, !tbaa !41
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.eq, align 16, !tbaa !190
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge96, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.o

bb.o:                                             ; preds = %_isneutral.exit, %bb.n
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

declare void @dt_print_pipe_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #7

declare void @dt_control_log(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @modify_roi_in(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) initializes((0, 20)) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [3 x [3 x float]], align 64       ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !42  ; 15 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !120
  %i.d = load float, ptr %i.c, align 4, !tbaa !59 ; 2 uses
  %i.e = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.d)
  %i.f = fcmp reassoc nsz arcp contract afn uge float %i.e, f0x38D1B717
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !61 ; 2 uses
  %i.g = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %.pre)
  %i.h = fcmp reassoc nsz arcp contract afn uge float %i.g, f0x38D1B717
  %or.cond = select i1 %i.f, i1 true, i1 %i.h
  br i1 %or.cond, label %_isneutral.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !62
  %i.k = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.j)
  %i.l = fcmp reassoc nsz arcp contract afn uge float %i.k, f0x38D1B717
  br i1 %i.l, label %_isneutral.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.n = load float, ptr %i.m, align 4, !tbaa !63
  %i.o = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.n)
  %i.p = fcmp reassoc nsz arcp contract afn uge float %i.o, f0x38D1B717
  br i1 %i.p, label %_isneutral.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.r = load float, ptr %i.q, align 4, !tbaa !64
  %i.s = fadd reassoc nsz arcp contract afn float %i.r, -1.000000e+00
  %i.t = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.s)
  %i.u = fcmp reassoc nsz arcp contract afn uge float %i.t, f0x38D1B717
  br i1 %i.u, label %_isneutral.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.w = load float, ptr %i.v, align 4, !tbaa !65
  %i.x = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.w)
  %i.y = fcmp reassoc nsz arcp contract afn uge float %i.x, f0x38D1B717
  br i1 %i.y, label %_isneutral.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.aa = load float, ptr %i.z, align 4, !tbaa !66
  %i.ab = fadd reassoc nsz arcp contract afn float %i.aa, -1.000000e+00
  %i.ac = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ab)
  %i.ad = fcmp reassoc nsz arcp contract afn uge float %i.ac, f0x38D1B717
  br i1 %i.ad, label %_isneutral.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.af = load float, ptr %i.ae, align 4, !tbaa !67
  %i.ag = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.af)
  %i.ah = fcmp reassoc nsz arcp contract afn uge float %i.ag, f0x38D1B717
  br i1 %i.ah, label %_isneutral.exit.thread, label %_isneutral.exit

_isneutral.exit:                                  ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !68
  %i.ak = fadd reassoc nsz arcp contract afn float %i.aj, -1.000000e+00
  %i.al = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ak)
  %i.am = fcmp reassoc nsz arcp contract afn uge float %i.al, f0x38D1B717
  br i1 %i.am, label %_isneutral.exit.thread, label %bb.i

_isneutral.exit.thread:                           ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %_isneutral.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ao = load float, ptr %i.an, align 4, !tbaa !62
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !63
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.as = load float, ptr %i.ar, align 4, !tbaa !69
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.au = load float, ptr %i.at, align 4, !tbaa !70
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.aw = load float, ptr %i.av, align 4, !tbaa !64
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 16, !tbaa !71
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !72
  call fastcc void @_homography(ptr noundef %i.a, float noundef %i.d, float noundef %.pre, float noundef %i.ao, float noundef %i.aq, float noundef %i.as, float noundef %i.au, float noundef %i.aw, i32 noundef %i.ay, i32 noundef %i.ba, i32 noundef 1)
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !113
  %i.bd = load <2 x i32>, ptr %i.ax, align 16, !tbaa !41
  %i.be = sitofp <2 x i32> %i.bd to <2 x float>
  %i.bf = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bh = fmul reassoc nsz arcp contract afn <2 x float> %i.bg, %i.be
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.bk = load <2 x i32>, ptr %i.bi, align 4, !tbaa !41
  %i.bl = sitofp <2 x i32> %i.bk to <2 x float>
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !113 ; 3 uses
  %i.bo = load <4 x float>, ptr %i.bj, align 4, !tbaa !14 ; 2 uses
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.bq = shufflevector <4 x float> %i.bo, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.br = fsub reassoc nsz arcp contract afn <2 x float> %i.bp, %i.bq
  %i.bs = fmul reassoc nsz arcp contract afn <2 x float> %i.bq, %i.bl
  %i.bt = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = fmul reassoc nsz arcp contract afn <2 x float> %i.bs, %i.bu
  %i.bw = fdiv reassoc nsz arcp contract afn <2 x float> %i.bv, %i.br ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !112 ; 4 uses
  %invariant.op135 = add nsw i32 %i.by, -1        ; 2 uses
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %.preheader.lr.ph, label %._crit_edge142

.preheader.lr.ph:                                 ; preds = %_isneutral.exit.thread
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !111 ; 3 uses
  %invariant.op = add i32 %i.cb, -1
  %i.cc = icmp sgt i32 %i.cb, 0
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ce = load <4 x float>, ptr %i.a, align 64    ; 3 uses
  %i.cf = load <4 x float>, ptr %i.cd, align 16   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ch = load float, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.cj = load float, ptr %i.ci, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cl = load float, ptr %i.ck, align 32
  br i1 %i.cc, label %.preheader.lr.ph.split.us, label %.preheader

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cn = load i32, ptr %2, align 4, !tbaa !121
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !122
  %i.cp = shufflevector <4 x float> %i.ce, <4 x float> %i.cf, <2 x i32> <i32 1, i32 4>
  %i.cq = extractelement <2 x float> %i.bw, i64 1
  %i.cr = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bn ; 2 uses
  %invariant.op170 = fmul reassoc nsz arcp contract afn float %i.cr, %i.cj
  %i.cs = shufflevector <4 x float> %i.ce, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ct = shufflevector <4 x float> %i.ce, <4 x float> %i.cf, <2 x i32> <i32 2, i32 5>
  %i.cu = extractelement <2 x float> %i.bw, i64 0
  %i.cv = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bn ; 2 uses
  %invariant.op167 = fmul reassoc nsz arcp contract afn float %i.cv, %i.ch
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %.0101139.us = phi i32 [ 0, %.preheader.lr.ph.split.us ], [ %.reass136.us, %._crit_edge.us ] ; 2 uses
  %i.cw = phi <2 x float> [ splat (float f0x7F7FFFFF), %.preheader.lr.ph.split.us ], [ %i.dt, %._crit_edge.us ]
  %i.cx = phi <2 x float> [ splat (float f0xFF7FFFFF), %.preheader.lr.ph.split.us ], [ %i.dv, %._crit_edge.us ]
  %i.cy = add nsw i32 %i.co, %.0101139.us
  %i.cz = sitofp reassoc nsz arcp contract afn i32 %i.cy to float
  %i.da = fadd reassoc nsz arcp contract afn float %i.cq, %i.cz ; 2 uses
  %i.db = fmul reassoc nsz arcp contract afn float %i.da, %i.cr
  %i.dc = insertelement <2 x float> poison, float %i.db, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.de = fmul reassoc nsz arcp contract afn <2 x float> %i.dd, %i.cp
  %.reass171 = fmul reassoc nsz arcp contract afn float %i.da, %invariant.op170
  %invariant.op133.us = fadd reassoc nsz arcp contract afn float %.reass171, %i.cl
  %invariant.op168 = fadd reassoc nsz arcp contract afn <2 x float> %i.ct, %i.de
  br label %bb.h

bb.h:                                             ; preds = %.preheader.us, %bb.h
  %.0100123.us = phi i32 [ 0, %.preheader.us ], [ %.reass.us, %bb.h ] ; 2 uses
  %i.df = phi <2 x float> [ %i.cw, %.preheader.us ], [ %i.dt, %bb.h ] ; 2 uses
  %i.dg = phi <2 x float> [ %i.cx, %.preheader.us ], [ %i.dv, %bb.h ] ; 2 uses
  %i.dh = add nsw i32 %i.cn, %.0100123.us
  %i.di = sitofp reassoc nsz arcp contract afn i32 %i.dh to float
  %i.dj = fadd reassoc nsz arcp contract afn float %i.cu, %i.di ; 2 uses
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, %i.cv
  %.reass = fmul reassoc nsz arcp contract afn float %i.dj, %invariant.op167
  %.reass134.us = fadd reassoc nsz arcp contract afn float %.reass, %invariant.op133.us
  %i.dl = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = fmul reassoc nsz arcp contract afn <2 x float> %i.dm, %i.cs
  %.reass169 = fadd reassoc nsz arcp contract afn <2 x float> %i.dn, %invariant.op168
  %i.do = fmul reassoc nsz arcp contract afn <2 x float> %.reass169, %i.bg
  %i.dp = insertelement <2 x float> poison, float %.reass134.us, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = fdiv reassoc nsz arcp contract afn <2 x float> %i.do, %i.dq ; 4 uses
  %i.ds = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.df, %i.dr
  %i.dt = select <2 x i1> %i.ds, <2 x float> %i.df, <2 x float> %i.dr ; 3 uses
  %i.du = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.dg, %i.dr
  %i.dv = select <2 x i1> %i.du, <2 x float> %i.dg, <2 x float> %i.dr ; 3 uses
  %.reass.us = add i32 %.0100123.us, %invariant.op ; 2 uses
  %i.dw = icmp slt i32 %.reass.us, %i.cb
  br i1 %i.dw, label %bb.h, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.h
  %.reass136.us = add i32 %.0101139.us, %invariant.op135 ; 2 uses
  %i.dx = icmp slt i32 %.reass136.us, %i.by
  br i1 %i.dx, label %.preheader.us, label %._crit_edge142.loopexit

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.0101139 = phi i32 [ %.reass136, %.preheader ], [ 0, %.preheader.lr.ph ]
  %.reass136 = add i32 %.0101139, %invariant.op135 ; 2 uses
  %i.dy = icmp slt i32 %.reass136, %i.by
  br i1 %i.dy, label %.preheader, label %._crit_edge142

._crit_edge142.loopexit:                          ; preds = %._crit_edge.us
  %i.dz = fadd reassoc nsz arcp contract afn <2 x float> %i.dv, <float 1.000000e+00, float -0.000000e+00>
  br label %._crit_edge142

._crit_edge142:                                   ; preds = %.preheader, %._crit_edge142.loopexit, %_isneutral.exit.thread
  %i.ea = phi <2 x float> [ splat (float f0x7F7FFFFF), %_isneutral.exit.thread ], [ %i.dt, %._crit_edge142.loopexit ], [ splat (float f0x7F7FFFFF), %.preheader ] ; 3 uses
  %i.eb = phi <2 x float> [ splat (float f0xFF7FFFFF), %_isneutral.exit.thread ], [ %i.dz, %._crit_edge142.loopexit ], [ splat (float f0xFF7FFFFF), %.preheader ] ; 2 uses
  %i.ec = call ptr @dt_interpolation_new(i32 noundef 3) #34
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !191
  %i.ef = uitofp reassoc nsz arcp contract afn i64 %i.ee to float ; 2 uses
  %i.eg = fmul reassoc nnan nsz arcp contract afn float %i.ef, 2.000000e+00
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ei = extractelement <2 x float> %i.ea, i64 1
  %i.ej = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ei
  %i.ek = call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.bh)
  %i.el = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = fsub reassoc nsz arcp contract afn <2 x float> %i.ea, %i.em
  %i.eo = fptosi <2 x float> %i.en to <2 x i32>   ; 2 uses
  %i.ep = fptosi <2 x float> %i.ek to <2 x i32>   ; 3 uses
  %i.eq = icmp sgt <2 x i32> %i.eo, %i.ep
  %i.er = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.eo, <2 x i32> zeroinitializer)
  %i.es = select <2 x i1> %i.eq, <2 x i32> %i.ep, <2 x i32> %i.er ; 2 uses
  store <2 x i32> %i.es, ptr %3, align 4, !tbaa !41
  %i.et = insertelement <2 x float> %i.ea, float %i.ej, i64 1 ; 2 uses
  %i.eu = fsub reassoc nsz arcp contract afn <2 x float> %i.eb, %i.et
  %i.ev = fadd reassoc nsz arcp contract afn <2 x float> %i.eb, %i.et
  %i.ew = shufflevector <2 x float> %i.eu, <2 x float> %i.ev, <2 x i32> <i32 0, i32 3>
  %i.ex = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = fadd reassoc nsz arcp contract afn <2 x float> %i.ew, %i.ey
  %i.fa = fptosi <2 x float> %i.ez to <2 x i32>   ; 2 uses
  %i.fb = sub nsw <2 x i32> %i.ep, %i.es          ; 2 uses
  %i.fc = icmp slt <2 x i32> %i.fb, %i.fa
  %i.fd = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.fa, <2 x i32> splat (i32 4))
  %i.fe = select <2 x i1> %i.fc, <2 x i32> %i.fb, <2 x i32> %i.fd
  store <2 x i32> %i.fe, ptr %i.eh, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.i

bb.i:                                             ; preds = %_isneutral.exit, %._crit_edge142
  ret void
}

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 8 uses
  %i.b = alloca [3 x [3 x float]], align 64       ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !42  ; 17 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !193 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.h = load i32, ptr %i.g, align 4, !tbaa !194  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !111
  %i.k = mul nsw i32 %i.j, %i.h
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !195  ; 3 uses
  %i.n = load i32, ptr %i.m, align 16, !tbaa !196
  %.not128 = icmp eq i32 %i.n, 0
  br i1 %.not128, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !167
  %i.q = getelementptr i8, ptr %i.p, i64 644
  %.val = load i32, ptr %i.q, align 4, !tbaa !168
  %i.r = and i32 %.val, 4
  %.not129 = icmp eq i32 %i.r, 0
  br i1 %.not129, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store <2 x float> zeroinitializer, ptr %i.a, align 16, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.w = load <2 x i32>, ptr %i.u, align 16, !tbaa !41
  %i.x = sitofp <2 x i32> %i.w to <2 x float>     ; 3 uses
  store <2 x float> %i.x, ptr %i.t, align 8, !tbaa !14
  %i.y = extractelement <2 x float> %i.x, i64 0   ; 2 uses
  %i.z = extractelement <2 x float> %i.x, i64 1   ; 2 uses
  %i.aa = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.y, float noundef %i.z) #35
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !213
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 16, !tbaa !214
  %i.af = sitofp reassoc nsz arcp contract afn i32 %i.ae to double
  %i.ag = call i32 @dt_dev_distort_backtransform_plus(ptr noundef nonnull %i.m, ptr noundef %i.ac, double noundef %i.af, i32 noundef 2, ptr noundef nonnull %i.a, i64 noundef 2) #34 ; 0 uses
  %i.ah = load float, ptr %i.t, align 8, !tbaa !14
  %i.ai = load float, ptr %i.a, align 16, !tbaa !14
  %i.aj = fsub reassoc nsz arcp contract afn float %i.ah, %i.ai ; 2 uses
  %i.ak = load float, ptr %i.v, align 4, !tbaa !14
  %i.al = load float, ptr %i.s, align 4, !tbaa !14
  %i.am = fsub reassoc nsz arcp contract afn float %i.ak, %i.al ; 2 uses
  %i.an = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.aj, float noundef %i.am) #35
  %i.ao = fmul reassoc nsz arcp contract afn float %i.aj, %i.y
  %i.ap = fmul reassoc nsz arcp contract afn float %i.am, %i.z
  %i.aq = fadd reassoc nsz arcp contract afn float %i.ap, %i.ao
  %i.ar = fmul reassoc nsz arcp contract afn float %i.an, %i.aa
  %i.as = fdiv reassoc nsz arcp contract afn float %i.aq, %i.ar ; 3 uses
  %i.at = fcmp reassoc nsz arcp contract afn ogt float %i.as, 1.000000e+00
  br i1 %i.at, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
end_hunk_0
begin_hunk_1_@do_fit:bb.a
  %i.ef = fcmp reassoc nsz arcp contract afn ogt double %i.ee, f0x3FEFFFFDE7210BE9
  br i1 %i.ef, label %logit.exit115.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eg = fcmp reassoc nsz arcp contract afn olt double %i.ee, f0x3EB0C6F7A0B5ED8D
  br i1 %i.eg, label %logit.exit115.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eh = fmul reassoc nsz arcp contract afn double %i.ee, 2.000000e+00
  %i.ei = fadd reassoc nsz arcp contract afn double %i.eh, -1.000000e+00
  br label %logit.exit115.i

logit.exit115.i:                                  ; preds = %bb.y, %bb.x, %bb.w
  %i.ej = phi double [ f0x3FEFFFFBCE4217D2, %bb.w ], [ %i.ei, %bb.y ], [ -9.999980e-01, %bb.x ]
  %i.ek = tail call reassoc nsz arcp contract afn double @atanh(double noundef %i.ej) #35
  %i.el = fmul reassoc nsz arcp contract afn double %i.ek, 2.000000e+00
  %i.em = zext nneg i32 %i.dt to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.em
  store double %i.el, ptr %i.en, align 8, !tbaa !244
  store float +qnan, ptr %i.ar, align 8, !tbaa !500
  br label %bb.z

bb.z:                                             ; preds = %logit.exit115.i, %bb.v
  %i.eo = phi i32 [ %i.dv, %logit.exit115.i ], [ %i.dt, %bb.v ]
  %i.ep = and i32 %.088.i, 16
  %.not105.i = icmp eq i32 %i.ep, 0
  br i1 %.not105.i, label %.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 7, ptr %i.ba, align 4, !tbaa !493
  %i.eq = getelementptr inbounds nuw i8, ptr %.val2154, i64 232
  %i.er = load float, ptr %i.eq, align 8, !tbaa !345 ; 2 uses
  store float %i.er, ptr %i.bc, align 4, !tbaa !496
  %i.es = getelementptr inbounds nuw i8, ptr %.val2154, i64 220
  %i.et = load i32, ptr %i.es, align 4, !tbaa !344
  %i.eu = icmp sgt i32 %i.et, 1                   ; 2 uses
  %i.ev = and i32 %.088.i, 32
  %.not106.i = icmp eq i32 %i.ev, 0
  br i1 %.not106.i, label %bb.ad, label %bb.ab

.thread.i:                                        ; preds = %bb.z
  %i.ew = and i32 %.088.i, 32
  %.not10649.i = icmp eq i32 %i.ew, 0
  br i1 %.not10649.i, label %bb.ad, label %.thread51.i

.thread51.i:                                      ; preds = %.thread.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.val2154, i64 236
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !347
  store float %i.ey, ptr %i.bc, align 4, !tbaa !496
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ez = getelementptr inbounds nuw i8, ptr %.val2154, i64 236
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !347
  %i.fb = fadd reassoc nsz arcp contract afn float %i.fa, %i.er
  store float %i.fb, ptr %i.bc, align 4, !tbaa !496
  br i1 %i.eu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %.thread51.i
  %i.fc = getelementptr inbounds nuw i8, ptr %.val2154, i64 224
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !346
  %i.fe = icmp sgt i32 %i.fd, 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %.thread.i, %bb.aa
  %.190.shrunk.i = phi i1 [ %i.eu, %bb.aa ], [ false, %bb.ab ], [ %i.fe, %bb.ac ], [ true, %.thread.i ]
  %i.ff = and i32 %.088.i, 48
  %i.fg = icmp eq i32 %i.ff, 48
  br i1 %i.fg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 5, ptr %i.ba, align 4, !tbaa !493
  store i32 5, ptr %i.bb, align 8, !tbaa !494
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  br i1 %.190.shrunk.i, label %bb.ag, label %nmsfit.exit.thread25

nmsfit.exit.thread25:                             ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %nmsfit.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.fh = call fastcc i32 @simplex(ptr noundef nonnull @model_fitness, ptr noundef %i.a, i32 noundef %i.eo, double noundef 1.000000e-03, double noundef 1.000000e+00, i32 noundef 400, ptr noundef null, ptr noundef %3)
  %i.fi = icmp sgt i32 %i.fh, 399
  br i1 %i.fi, label %nmsfit.exit.thread27, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fj = load float, ptr %i.ao, align 4, !tbaa !497 ; 2 uses
  %i.fk = fcmp ord float %i.fj, 0.000000e+00
  br i1 %i.fk, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fl = load double, ptr %i.a, align 16, !tbaa !244
  %i.fm = load float, ptr %i.at, align 4, !tbaa !501 ; 2 uses
  %i.fn = fneg reassoc nsz arcp contract afn float %i.fm
  %i.fo = fpext reassoc nsz arcp contract afn float %i.fn to double ; 2 uses
  %i.fp = fpext reassoc nsz arcp contract afn float %i.fm to double
  %i.fq = fmul reassoc nsz arcp contract afn double %i.fl, 5.000000e-01
  %i.fr = call reassoc nsz arcp contract afn double @llvm.tanh.f64(double %i.fq)
  %i.fs = fmul reassoc nsz arcp contract afn double %i.fr, 5.000000e-01
  %i.ft = fadd reassoc nsz arcp contract afn double %i.fs, 5.000000e-01
  %i.fu = fsub reassoc nsz arcp contract afn double %i.fp, %i.fo
  %i.fv = fmul reassoc nsz arcp contract afn double %i.ft, %i.fu
  %i.fw = fadd reassoc nsz arcp contract afn double %i.fv, %i.fo
  %i.fx = fptrunc reassoc nsz arcp contract afn double %i.fw to float
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.394.i = phi i32 [ 1, %bb.ai ], [ 0, %bb.ah ]  ; 3 uses
  %i.fy = phi float [ %i.fx, %bb.ai ], [ %i.fj, %bb.ah ] ; 2 uses
  store float %i.fy, ptr %i.ao, align 4, !tbaa !497
  %i.fz = load float, ptr %i.ap, align 8, !tbaa !498 ; 2 uses
  %i.ga = fcmp ord float %i.fz, 0.000000e+00
  br i1 %i.ga, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gb = add nuw nsw i32 %.394.i, 1
  %i.gc = zext nneg i32 %.394.i to i64
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.gc
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !244
  %i.gf = load float, ptr %i.au, align 8, !tbaa !502 ; 2 uses
  %i.gg = fneg reassoc nsz arcp contract afn float %i.gf
  %i.gh = fpext reassoc nsz arcp contract afn float %i.gg to double ; 2 uses
  %i.gi = fpext reassoc nsz arcp contract afn float %i.gf to double
  %i.gj = fmul reassoc nsz arcp contract afn double %i.ge, 5.000000e-01
  %i.gk = call reassoc nsz arcp contract afn double @llvm.tanh.f64(double %i.gj)
  %i.gl = fmul reassoc nsz arcp contract afn double %i.gk, 5.000000e-01
  %i.gm = fadd reassoc nsz arcp contract afn double %i.gl, 5.000000e-01
  %i.gn = fsub reassoc nsz arcp contract afn double %i.gi, %i.gh
  %i.go = fmul reassoc nsz arcp contract afn double %i.gm, %i.gn
  %i.gp = fadd reassoc nsz arcp contract afn double %i.go, %i.gh
  %i.gq = fptrunc reassoc nsz arcp contract afn double %i.gp to float
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.4.i = phi i32 [ %i.gb, %bb.ak ], [ %.394.i, %bb.aj ] ; 3 uses
  %i.gr = phi float [ %i.gq, %bb.ak ], [ %i.fz, %bb.aj ] ; 2 uses
  store float %i.gr, ptr %i.ap, align 8, !tbaa !498
  %i.gs = load float, ptr %i.aq, align 4, !tbaa !499 ; 2 uses
  %i.gt = fcmp ord float %i.gs, 0.000000e+00
  br i1 %i.gt, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gu = add nuw nsw i32 %.4.i, 1
  %i.gv = zext nneg i32 %.4.i to i64
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.gv
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !244
  %i.gy = load float, ptr %i.av, align 4, !tbaa !503 ; 2 uses
  %i.gz = fneg reassoc nsz arcp contract afn float %i.gy
  %i.ha = fpext reassoc nsz arcp contract afn float %i.gz to double ; 2 uses
  %i.hb = fpext reassoc nsz arcp contract afn float %i.gy to double
  %i.hc = fmul reassoc nsz arcp contract afn double %i.gx, 5.000000e-01
  %i.hd = call reassoc nsz arcp contract afn double @llvm.tanh.f64(double %i.hc)
  %i.he = fmul reassoc nsz arcp contract afn double %i.hd, 5.000000e-01
  %i.hf = fadd reassoc nsz arcp contract afn double %i.he, 5.000000e-01
  %i.hg = fsub reassoc nsz arcp contract afn double %i.hb, %i.ha
  %i.hh = fmul reassoc nsz arcp contract afn double %i.hf, %i.hg
  %i.hi = fadd reassoc nsz arcp contract afn double %i.hh, %i.ha
  %i.hj = fptrunc reassoc nsz arcp contract afn double %i.hi to float
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.5.i = phi i32 [ %i.gu, %bb.am ], [ %.4.i, %bb.al ]
  %i.hk = phi float [ %i.hj, %bb.am ], [ %i.gs, %bb.al ] ; 2 uses
  store float %i.hk, ptr %i.aq, align 4, !tbaa !499
  %i.hl = load float, ptr %i.ar, align 8, !tbaa !500 ; 2 uses
  %i.hm = fcmp ord float %i.hl, 0.000000e+00
  br i1 %i.hm, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hn = zext nneg i32 %.5.i to i64
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.hn
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !244
  %i.hq = load float, ptr %i.aw, align 8, !tbaa !504 ; 2 uses
  %i.hr = fneg reassoc nsz arcp contract afn float %i.hq
  %i.hs = fpext reassoc nsz arcp contract afn float %i.hr to double ; 2 uses
  %i.ht = fpext reassoc nsz arcp contract afn float %i.hq to double
  %i.hu = fmul reassoc nsz arcp contract afn double %i.hp, 5.000000e-01
  %i.hv = call reassoc nsz arcp contract afn double @llvm.tanh.f64(double %i.hu)
  %i.hw = fmul reassoc nsz arcp contract afn double %i.hv, 5.000000e-01
  %i.hx = fadd reassoc nsz arcp contract afn double %i.hw, 5.000000e-01
  %i.hy = fsub reassoc nsz arcp contract afn double %i.ht, %i.hs
  %i.hz = fmul reassoc nsz arcp contract afn double %i.hx, %i.hy
  %i.ia = fadd reassoc nsz arcp contract afn double %i.hz, %i.hs
  %i.ib = fptrunc reassoc nsz arcp contract afn double %i.ia to float
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ic = phi float [ %i.ib, %bb.ao ], [ %i.hl, %bb.an ] ; 2 uses
  store float %i.ic, ptr %i.ar, align 8, !tbaa !500
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.id = load float, ptr %i.al, align 8, !tbaa !490
  %i.ie = load float, ptr %i.ak, align 4, !tbaa !491
  %i.if = load float, ptr %i.an, align 8, !tbaa !492
  %i.ig = load i32, ptr %i.r, align 4, !tbaa !505
  %i.ih = load i32, ptr %i.s, align 8, !tbaa !506
  call fastcc void @_homography(ptr noundef %i.b, float noundef %i.fy, float noundef %i.gr, float noundef %i.hk, float noundef %i.ic, float noundef %i.id, float noundef %i.ie, float noundef %i.if, i32 noundef %i.ig, i32 noundef %i.ih, i32 noundef 0)
  %i.ii = load i32, ptr %i.s, align 8, !tbaa !506 ; 5 uses
  %invariant.op17.i = add nsw i32 %i.ii, -1       ; 2 uses
  %i.ij = icmp sgt i32 %i.ii, 0
  %.pre.i = load i32, ptr %i.r, align 4, !tbaa !505 ; 4 uses
  br i1 %i.ij, label %.preheader.lr.ph.i, label %._crit_edge24.i

.preheader.lr.ph.i:                               ; preds = %bb.ap
  %invariant.op.i = add i32 %.pre.i, -1
  %i.ik = icmp sgt i32 %.pre.i, 0
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.im = load <4 x float>, ptr %i.b, align 64    ; 3 uses
  %i.in = load <4 x float>, ptr %i.il, align 16   ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ip = load float, ptr %i.io, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ir = load float, ptr %i.iq, align 4
  %i.is = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.it = load float, ptr %i.is, align 32
  br i1 %i.ik, label %.preheader.us.i.preheader, label %.preheader.i

.preheader.us.i.preheader:                        ; preds = %.preheader.lr.ph.i
  %i.iu = shufflevector <4 x float> %i.im, <4 x float> %i.in, <2 x i32> <i32 1, i32 4>
  %i.iv = shufflevector <4 x float> %i.im, <4 x float> %i.in, <2 x i32> <i32 2, i32 5>
  %i.iw = shufflevector <4 x float> %i.im, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %._crit_edge.us.i
  %.07823.us.i = phi i32 [ %.reass18.us.i, %._crit_edge.us.i ], [ 0, %.preheader.us.i.preheader ] ; 2 uses
  %i.ix = phi <2 x float> [ %i.jt, %._crit_edge.us.i ], [ splat (float f0xFF7FFFFF), %.preheader.us.i.preheader ]
  %i.iy = phi <2 x float> [ %i.jr, %._crit_edge.us.i ], [ splat (float f0x7F7FFFFF), %.preheader.us.i.preheader ]
  %i.iz = sitofp reassoc nsz arcp contract afn i32 %.07823.us.i to float ; 2 uses
  %i.ja = insertelement <2 x float> poison, float %i.iz, i64 0
  %i.jb = shufflevector <2 x float> %i.ja, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jc = fmul reassoc nsz arcp contract afn <2 x float> %i.iu, %i.jb
  %i.jd = fadd reassoc nsz arcp contract afn <2 x float> %i.jc, %i.iv
  %i.je = fmul reassoc nsz arcp contract afn float %i.ir, %i.iz
  %invariant.op15.us.i = fadd reassoc nsz arcp contract afn float %i.je, %i.it
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %.preheader.us.i
  %.07.us.i = phi i32 [ 0, %.preheader.us.i ], [ %.reass.us.i, %bb.aq ] ; 2 uses
  %i.jf = phi <2 x float> [ %i.ix, %.preheader.us.i ], [ %i.jt, %bb.aq ] ; 2 uses
  %i.jg = phi <2 x float> [ %i.iy, %.preheader.us.i ], [ %i.jr, %bb.aq ] ; 2 uses
  %i.jh = sitofp reassoc nsz arcp contract afn i32 %.07.us.i to float ; 2 uses
  %i.ji = fmul reassoc nsz arcp contract afn float %i.ip, %i.jh
  %.reass16.us.i = fadd reassoc nsz arcp contract afn float %invariant.op15.us.i, %i.ji
  %i.jj = insertelement <2 x float> poison, float %i.jh, i64 0
  %i.jk = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jl = fmul reassoc nsz arcp contract afn <2 x float> %i.iw, %i.jk
  %i.jm = fadd reassoc nsz arcp contract afn <2 x float> %i.jd, %i.jl
  %i.jn = insertelement <2 x float> poison, float %.reass16.us.i, i64 0
  %i.jo = shufflevector <2 x float> %i.jn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jp = fdiv reassoc nsz arcp contract afn <2 x float> %i.jm, %i.jo ; 4 uses
  %i.jq = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.jg, %i.jp
  %i.jr = select <2 x i1> %i.jq, <2 x float> %i.jg, <2 x float> %i.jp ; 3 uses
  %i.js = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.jf, %i.jp
  %i.jt = select <2 x i1> %i.js, <2 x float> %i.jf, <2 x float> %i.jp ; 3 uses
  %.reass.us.i = add i32 %invariant.op.i, %.07.us.i ; 2 uses
  %i.ju = icmp slt i32 %.reass.us.i, %.pre.i
  br i1 %i.ju, label %bb.aq, label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %bb.aq
  %.reass18.us.i = add i32 %.07823.us.i, %invariant.op17.i ; 2 uses
  %i.jv = icmp slt i32 %.reass18.us.i, %i.ii
  br i1 %i.jv, label %.preheader.us.i, label %._crit_edge24.i

.preheader.i:                                     ; preds = %.preheader.lr.ph.i, %.preheader.i
  %.07823.i = phi i32 [ %.reass18.i, %.preheader.i ], [ 0, %.preheader.lr.ph.i ]
  %.reass18.i = add i32 %.07823.i, %invariant.op17.i ; 2 uses
  %i.jw = icmp slt i32 %.reass18.i, %i.ii
  br i1 %i.jw, label %.preheader.i, label %._crit_edge24.i

._crit_edge24.i:                                  ; preds = %.preheader.i, %._crit_edge.us.i, %bb.ap
  %i.jx = phi <2 x float> [ splat (float f0xFF7FFFFF), %bb.ap ], [ %i.jt, %._crit_edge.us.i ], [ splat (float f0xFF7FFFFF), %.preheader.i ]
  %i.jy = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.ap ], [ %i.jr, %._crit_edge.us.i ], [ splat (float f0x7F7FFFFF), %.preheader.i ]
  %i.jz = fsub reassoc nsz arcp contract afn <2 x float> %i.jx, %i.jy
  %i.ka = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmul.v2f32(float 1.000000e+00, <2 x float> %i.jz)
  %i.kb = sitofp reassoc nsz arcp contract afn i32 %.pre.i to float
  %i.kc = sitofp reassoc nsz arcp contract afn i32 %i.ii to float
  %i.kd = fmul reassoc nnan nsz arcp contract afn float %i.kc, 4.000000e+00
  %i.ke = fmul reassoc nsz arcp contract afn float %i.kd, %i.kb
  %i.kf = fcmp reassoc nsz arcp contract afn ogt float %i.ka, %i.ke
  br i1 %i.kf, label %nmsfit.exit.thread29, label %nmsfit.exit

nmsfit.exit.thread29:                             ; preds = %._crit_edge24.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %nmsfit.exit.thread27

nmsfit.exit:                                      ; preds = %._crit_edge24.i
  %i.kg = load <4 x float>, ptr %i.ao, align 4, !tbaa !14
  store <4 x float> %i.kg, ptr %1, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %.val.pre = load ptr, ptr %i.c, align 16, !tbaa !193
  br label %nmsfit.exit.thread23

nmsfit.exit.thread:                               ; preds = %bb.d, %nmsfit.exit.thread25
  store i32 0, ptr %i.e, align 4, !tbaa !268
  %i.kh = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.103, i32 noundef 5) #34
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.kh, i32 noundef 2) #34
  br label %bb.ar

nmsfit.exit.thread27:                             ; preds = %bb.ag, %nmsfit.exit.thread29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  store i32 0, ptr %i.e, align 4, !tbaa !268
  %i.ki = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.104, i32 noundef 5) #34
  call void (ptr, ...) @dt_control_log(ptr noundef %i.ki) #34
  br label %bb.ar

nmsfit.exit.thread23:                             ; preds = %bb.e, %nmsfit.exit
  %.val = phi ptr [ %.val2154, %bb.e ], [ %.val.pre, %nmsfit.exit ]
  store i32 0, ptr %i.e, align 4, !tbaa !268
  call fastcc void @do_crop(ptr %.val, ptr noundef %1)
  %i.kj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !352
  call void @dt_dev_invalidate_all(ptr noundef %i.kj) #34
  %i.kk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !237
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 104
  %i.km = atomicrmw add ptr %i.kl, i32 1 seq_cst, align 4 ; 0 uses
  %i.kn = load ptr, ptr %i.d, align 8, !tbaa !351
  %i.ko = load float, ptr %1, align 4, !tbaa !310
  call void @dt_bauhaus_slider_set(ptr noundef %i.kn, float noundef %i.ko) #34
  %i.kp = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !391
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !311
  call void @dt_bauhaus_slider_set(ptr noundef %i.kq, float noundef %i.ks) #34
  %i.kt = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !392
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !312
  call void @dt_bauhaus_slider_set(ptr noundef %i.ku, float noundef %i.kw) #34
  %i.kx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !403
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.la = load float, ptr %i.kz, align 4, !tbaa !313
  call void @dt_bauhaus_slider_set(ptr noundef %i.ky, float noundef %i.la) #34
  %i.lb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !237
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 104
  %i.ld = atomicrmw sub ptr %i.lc, i32 1 seq_cst, align 4 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %nmsfit.exit.thread, %nmsfit.exit.thread27, %nmsfit.exit.thread23, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_do_get_structure_auto(ptr noundef %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.rect, align 8               ; 46 uses
  %i.a = alloca double, align 8                   ; 6 uses
  %3 = alloca %struct.rect, align 16              ; 50 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !193 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 148 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !268
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.hg

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.f, align 4, !tbaa !268
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 5 uses
  %i.i = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.h) #34 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !222
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.h) #34 ; 0 uses
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.105, i32 noundef 5) #34
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.n) #34
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !195
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !213
  tail call void @dt_dev_pixelpipe_cache_flush(ptr noundef %i.r) #34
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !195
  tail call void @dt_dev_reprocess_preview(ptr noundef %i.s) #34
  br label %_remove_outliers.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.d, align 16, !tbaa !193 ; 11 uses
  %i.u = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.h) #34 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 264 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !222
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 272
  %i.y = load <4 x i32>, ptr %i.x, align 8, !tbaa !41 ; 5 uses
  %i.z = extractelement <4 x i32> %i.y, i64 1     ; 16 uses
  %i.aa = extractelement <4 x i32> %i.y, i64 0    ; 16 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 288
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !225 ; 2 uses
  %i.ad = sext i32 %i.aa to i64                   ; 4 uses
  %i.ae = sext i32 %i.z to i64                    ; 4 uses
  %i.af = shl nsw i64 %i.ad, 4
end_hunk_1
