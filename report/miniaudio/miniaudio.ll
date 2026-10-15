Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 277
begin_hunk_0_@ma_clip_pcm_frames:bb.a
  %i.cm = tail call i64 @llvm.smin.i64(i64 %i.cl, i64 8388607) ; 3 uses
  %i.cn = trunc i64 %i.cm to i8
  %i.co = mul i64 %i.ci, 3
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 %i.co ; 3 uses
  store i8 %i.cn, ptr %i.cp, align 1, !tbaa !119
  %i.cq = lshr i64 %i.cm, 8
  %i.cr = trunc i64 %i.cq to i8
  %i.cs = getelementptr i8, ptr %i.cp, i64 1
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !119
  %i.ct = lshr i64 %i.cm, 16
  %i.cu = trunc i64 %i.ct to i8
  %i.cv = getelementptr i8, ptr %i.cp, i64 2
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !119
  %i.cw = add nuw i64 %.013.i, 2                  ; 2 uses
  %niter97.next.1 = add i64 %niter97, 2           ; 2 uses
  %niter97.ncmp.1 = icmp eq i64 %niter97.next.1, %unroll_iter96
  br i1 %niter97.ncmp.1, label %ma_clip_samples_u8.exit.loopexit86.unr-lcssa, label %.lr.ph.i22, !llvm.loop !13

bb.e:                                             ; preds = %bb.a
  %.not.i24 = icmp eq i64 %i.d, 0
  br i1 %.not.i24, label %ma_clip_samples_u8.exit, label %.lr.ph.i25.preheader

.lr.ph.i25.preheader:                             ; preds = %bb.e
  %xtraiter90 = and i64 %i.d, 1
  %i.cx = icmp eq i64 %i.d, 1
  br i1 %i.cx, label %.lr.ph.i25.epil.preheader, label %.lr.ph.i25.preheader.new

.lr.ph.i25.preheader.new:                         ; preds = %.lr.ph.i25.preheader
  %unroll_iter = and i64 %i.d, -2
  br label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.lr.ph.i25, %.lr.ph.i25.preheader.new
  %.06.i26 = phi i64 [ 0, %.lr.ph.i25.preheader.new ], [ %i.dl, %.lr.ph.i25 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i25.preheader.new ], [ %niter.next.1, %.lr.ph.i25 ]
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.06.i26
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !164
  %i.da = tail call i64 @llvm.smax.i64(i64 %i.cz, i64 -2147483648)
  %i.db = tail call i64 @llvm.smin.i64(i64 %i.da, i64 2147483647)
  %i.dc = trunc nsw i64 %i.db to i32
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.06.i26
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !118
  %i.de = or disjoint i64 %.06.i26, 1             ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !164
  %i.dh = tail call i64 @llvm.smax.i64(i64 %i.dg, i64 -2147483648)
  %i.di = tail call i64 @llvm.smin.i64(i64 %i.dh, i64 2147483647)
  %i.dj = trunc nsw i64 %i.di to i32
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.de
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !118
  %i.dl = add nuw i64 %.06.i26, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %ma_clip_samples_u8.exit.loopexit87.unr-lcssa, label %.lr.ph.i25, !llvm.loop !14

bb.f:                                             ; preds = %bb.a
  %.not.i28 = icmp eq i64 %i.d, 0
  br i1 %.not.i28, label %ma_clip_samples_u8.exit, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %bb.f
  %min.iters.check = icmp ult i64 %i.d, 8
  %i.dm = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.dm, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i29.preheader88, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i29.preheader
  %n.vec = and i64 %i.d, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %wide.load = load <4 x float>, ptr %i.dn, align 4, !tbaa !349 ; 3 uses
  %wide.load48 = load <4 x float>, ptr %i.do, align 4, !tbaa !349 ; 3 uses
  %i.dp = fcmp olt <4 x float> %wide.load, splat (float -1.000000e+00)
  %i.dq = fcmp olt <4 x float> %wide.load48, splat (float -1.000000e+00)
  %i.dr = fcmp ogt <4 x float> %wide.load, splat (float 1.000000e+00)
  %i.ds = fcmp ogt <4 x float> %wide.load48, splat (float 1.000000e+00)
  %i.dt = select <4 x i1> %i.dr, <4 x float> splat (float 1.000000e+00), <4 x float> %wide.load
  %i.du = select <4 x i1> %i.ds, <4 x float> splat (float 1.000000e+00), <4 x float> %wide.load48
  %i.dv = select <4 x i1> %i.dp, <4 x float> splat (float -1.000000e+00), <4 x float> %i.dt
  %i.dw = select <4 x i1> %i.dq, <4 x float> splat (float -1.000000e+00), <4 x float> %i.du
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store <4 x float> %i.dv, ptr %i.dx, align 4, !tbaa !349
  store <4 x float> %i.dw, ptr %i.dy, align 4, !tbaa !349
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !1326

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %ma_clip_samples_u8.exit, label %.lr.ph.i29.preheader88

.lr.ph.i29.preheader88:                           ; preds = %.lr.ph.i29.preheader, %middle.block
  %.06.i30.ph = phi i64 [ 0, %.lr.ph.i29.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.06.i30.ph, 1
  %xtraiter = and i64 %i.d, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i29.prol.loopexit, label %.lr.ph.i29.prol

.lr.ph.i29.prol:                                  ; preds = %.lr.ph.i29.preheader88
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.06.i30.ph
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !349 ; 3 uses
  %i.ec = fcmp olt float %i.eb, -1.000000e+00
  %i.ed = fcmp ogt float %i.eb, 1.000000e+00
  %..i.i.prol = select i1 %i.ed, float 1.000000e+00, float %i.eb
  %.0.i.i.prol = select i1 %i.ec, float -1.000000e+00, float %..i.i.prol
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.06.i30.ph
  store float %.0.i.i.prol, ptr %i.ee, align 4, !tbaa !349
  %i.ef = or disjoint i64 %.06.i30.ph, 1
  br label %.lr.ph.i29.prol.loopexit

.lr.ph.i29.prol.loopexit:                         ; preds = %.lr.ph.i29.prol, %.lr.ph.i29.preheader88
  %.06.i30.unr = phi i64 [ %.06.i30.ph, %.lr.ph.i29.preheader88 ], [ %i.ef, %.lr.ph.i29.prol ]
  %i.eg = icmp eq i64 %i.d, %.neg
  br i1 %i.eg, label %ma_clip_samples_u8.exit, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.prol.loopexit, %.lr.ph.i29
  %.06.i30 = phi i64 [ %i.es, %.lr.ph.i29 ], [ %.06.i30.unr, %.lr.ph.i29.prol.loopexit ] ; 4 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.06.i30
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !349 ; 3 uses
  %i.ej = fcmp olt float %i.ei, -1.000000e+00
  %i.ek = fcmp ogt float %i.ei, 1.000000e+00
  %..i.i = select i1 %i.ek, float 1.000000e+00, float %i.ei
  %.0.i.i = select i1 %i.ej, float -1.000000e+00, float %..i.i
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.06.i30
  store float %.0.i.i, ptr %i.el, align 4, !tbaa !349
  %i.em = add nuw i64 %.06.i30, 1                 ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.em
  %i.eo = load float, ptr %i.en, align 4, !tbaa !349 ; 3 uses
  %i.ep = fcmp olt float %i.eo, -1.000000e+00
  %i.eq = fcmp ogt float %i.eo, 1.000000e+00
  %..i.i.1 = select i1 %i.eq, float 1.000000e+00, float %i.eo
  %.0.i.i.1 = select i1 %i.ep, float -1.000000e+00, float %..i.i.1
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.em
  store float %.0.i.i.1, ptr %i.er, align 4, !tbaa !349
  %i.es = add nuw i64 %.06.i30, 2                 ; 2 uses
  %exitcond.not.i31.1 = icmp eq i64 %i.es, %i.d
  br i1 %exitcond.not.i31.1, label %ma_clip_samples_u8.exit, label %.lr.ph.i29, !llvm.loop !1327

ma_clip_samples_u8.exit.loopexit86.unr-lcssa:     ; preds = %.lr.ph.i22
  %lcmp.mod94.not = icmp eq i64 %xtraiter93, 0
  br i1 %lcmp.mod94.not, label %ma_clip_samples_u8.exit, label %.lr.ph.i22.epil.preheader

.lr.ph.i22.epil.preheader:                        ; preds = %ma_clip_samples_u8.exit.loopexit86.unr-lcssa, %.lr.ph.i22.preheader
  %.013.i.epil.init = phi i64 [ 0, %.lr.ph.i22.preheader ], [ %i.cw, %ma_clip_samples_u8.exit.loopexit86.unr-lcssa ] ; 2 uses
  %lcmp.mod95 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod95)
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.013.i.epil.init
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !164
  %i.ev = tail call i64 @llvm.smax.i64(i64 %i.eu, i64 -8388608)
  %i.ew = tail call i64 @llvm.smin.i64(i64 %i.ev, i64 8388607) ; 3 uses
  %i.ex = trunc i64 %i.ew to i8
  %i.ey = mul i64 %.013.i.epil.init, 3
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 %i.ey ; 3 uses
  store i8 %i.ex, ptr %i.ez, align 1, !tbaa !119
  %i.fa = lshr i64 %i.ew, 8
  %i.fb = trunc i64 %i.fa to i8
  %i.fc = getelementptr i8, ptr %i.ez, i64 1
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !119
  %i.fd = lshr i64 %i.ew, 16
  %i.fe = trunc i64 %i.fd to i8
  %i.ff = getelementptr i8, ptr %i.ez, i64 2
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !119
  br label %ma_clip_samples_u8.exit

ma_clip_samples_u8.exit.loopexit87.unr-lcssa:     ; preds = %.lr.ph.i25
  %lcmp.mod91.not = icmp eq i64 %xtraiter90, 0
  br i1 %lcmp.mod91.not, label %ma_clip_samples_u8.exit, label %.lr.ph.i25.epil.preheader

.lr.ph.i25.epil.preheader:                        ; preds = %ma_clip_samples_u8.exit.loopexit87.unr-lcssa, %.lr.ph.i25.preheader
  %.06.i26.epil.init = phi i64 [ 0, %.lr.ph.i25.preheader ], [ %i.dl, %ma_clip_samples_u8.exit.loopexit87.unr-lcssa ] ; 2 uses
  %lcmp.mod92 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod92)
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.06.i26.epil.init
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !164
  %i.fi = tail call i64 @llvm.smax.i64(i64 %i.fh, i64 -2147483648)
  %i.fj = tail call i64 @llvm.smin.i64(i64 %i.fi, i64 2147483647)
  %i.fk = trunc nsw i64 %i.fj to i32
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.06.i26.epil.init
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !118
  br label %ma_clip_samples_u8.exit

ma_clip_samples_u8.exit:                          ; preds = %.lr.ph.i29.prol.loopexit, %.lr.ph.i29, %.lr.ph.i25.epil.preheader, %ma_clip_samples_u8.exit.loopexit87.unr-lcssa, %.lr.ph.i22.epil.preheader, %ma_clip_samples_u8.exit.loopexit86.unr-lcssa, %.lr.ph.i18, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %middle.block58, %middle.block74, %vec.epilog.middle.block, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_copy_and_apply_volume_factor_u8(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, float noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.not15 = and i1 %i.a, %i.b
  %i.c = icmp ne i64 %2, 0
  %or.cond13 = and i1 %or.cond.not15, %i.c
  br i1 %or.cond13, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.a
  %i.d = ptrtoaddr ptr %1 to i64
  %i.e = ptrtoaddr ptr %0 to i64
  %min.iters.check = icmp ult i64 %2, 4
  %i.f = sub i64 %i.d, %i.e
  %diff.check = icmp ugt i64 %i.f, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check18 = icmp ult i64 %2, 16
  br i1 %min.iters.check18, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %2, 12
  %n.vec = and i64 %2, -16                        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x float> poison, float %3, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load = load <16 x i8>, ptr %i.h, align 1, !tbaa !119
  %i.i = uitofp <16 x i8> %wide.load to <16 x float>
  %i.j = fmul <16 x float> %broadcast.splat, %i.i
  %i.k = fptoui <16 x float> %i.j to <16 x i8>
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.k, ptr %i.l, align 1, !tbaa !119
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !1330

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec19 = and i64 %2, -4                       ; 3 uses
  %broadcast.splatinsert20 = insertelement <4 x float> poison, float %3, i64 0
  %broadcast.splat21 = shufflevector <4 x float> %broadcast.splatinsert20, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index22
  %wide.load23 = load <4 x i8>, ptr %i.n, align 1, !tbaa !119
  %i.o = uitofp <4 x i8> %wide.load23 to <4 x float>
  %i.p = fmul <4 x float> %broadcast.splat21, %i.o
  %i.q = fptoui <4 x float> %i.p to <4 x i8>
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %index22
  store <4 x i8> %i.q, ptr %i.r, align 1, !tbaa !119
  %index.next24 = add nuw i64 %index22, 4         ; 2 uses
  %i.s = icmp eq i64 %index.next24, %n.vec19
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1331

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %2, %n.vec19
  br i1 %cmp.n25, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec19, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.012.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.012.ph
  %i.u = load i8, ptr %i.t, align 1, !tbaa !119
  %i.v = uitofp i8 %i.u to float
  %i.w = fmul float %3, %i.v
  %i.x = fptoui float %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.012.ph
  store i8 %i.x, ptr %i.y, align 1, !tbaa !119
  %i.z = or disjoint i64 %.012.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.012.unr = phi i64 [ %.012.ph, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.aa = icmp eq i64 %2, %.neg
  br i1 %i.aa, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.012 = phi i64 [ %i.ao, %.lr.ph ], [ %.012.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !119
  %i.ad = uitofp i8 %i.ac to float
  %i.ae = fmul float %3, %i.ad
  %i.af = fptoui float %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.012
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !119
  %i.ah = add nuw i64 %.012, 1                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !119
  %i.ak = uitofp i8 %i.aj to float
  %i.al = fmul float %3, %i.ak
  %i.am = fptoui float %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  store i8 %i.am, ptr %i.an, align 1, !tbaa !119
  %i.ao = add nuw i64 %.012, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ao, %2
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !1332

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_copy_and_apply_volume_factor_s16(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, float noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.not15 = and i1 %i.a, %i.b
  %i.c = icmp ne i64 %2, 0
  %or.cond13 = and i1 %or.cond.not15, %i.c
  br i1 %or.cond13, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = ptrtoaddr ptr %0 to i64
  %i.e = ptrtoaddr ptr %1 to i64
  %min.iters.check = icmp ult i64 %2, 8
  %i.f = sub i64 %i.e, %i.d
  %diff.check = icmp ugt i64 %i.f, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %2, -8                         ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %3, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !tbaa !122
  %i.h = sitofp <8 x i16> %wide.load to <8 x float>
  %i.i = fmul <8 x float> %broadcast.splat, %i.h
  %i.j = fptosi <8 x float> %i.i to <8 x i16>
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  store <8 x i16> %i.j, ptr %i.k, align 2, !tbaa !122
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !1333

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %.012.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.012.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader18
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.012.ph
  %i.n = load i16, ptr %i.m, align 2, !tbaa !122
  %i.o = sitofp i16 %i.n to float
  %i.p = fmul float %3, %i.o
  %i.q = fptosi float %i.p to i16
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.012.ph
  store i16 %i.q, ptr %i.r, align 2, !tbaa !122
  %i.s = or disjoint i64 %.012.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader18
  %.012.unr = phi i64 [ %.012.ph, %.lr.ph.preheader18 ], [ %i.s, %.lr.ph.prol ]
  %i.t = icmp eq i64 %2, %.neg
  br i1 %i.t, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.012 = phi i64 [ %i.ah, %.lr.ph ], [ %.012.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.012
  %i.v = load i16, ptr %i.u, align 2, !tbaa !122
  %i.w = sitofp i16 %i.v to float
  %i.x = fmul float %3, %i.w
  %i.y = fptosi float %i.x to i16
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.012
  store i16 %i.y, ptr %i.z, align 2, !tbaa !122
  %i.aa = add nuw i64 %.012, 1                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !122
  %i.ad = sitofp i16 %i.ac to float
  %i.ae = fmul float %3, %i.ad
  %i.af = fptosi float %i.ae to i16
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aa
  store i16 %i.af, ptr %i.ag, align 2, !tbaa !122
  %i.ah = add nuw i64 %.012, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ah, %2
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !1334

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_copy_and_apply_volume_factor_s24(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, float noundef %3) local_unnamed_addr #20 {
end_hunk_0
begin_hunk_1_@ma_apply_volume_factor_s16:bb.a
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !1346

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %ma_copy_and_apply_volume_factor_s16.exit, label %.lr.ph.i.preheader4

.lr.ph.i.preheader4:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.012.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader4, %.lr.ph.i
  %.012.i = phi i64 [ %i.m, %.lr.ph.i ], [ %.012.i.ph, %.lr.ph.i.preheader4 ] ; 2 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.012.i ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !122
  %i.j = sitofp i16 %i.i to float
  %i.k = fmul float %2, %i.j
  %i.l = fptosi float %i.k to i16
  store i16 %i.l, ptr %i.h, align 2, !tbaa !122
  %i.m = add nuw i64 %.012.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.m, %1
  br i1 %exitcond.not.i, label %ma_copy_and_apply_volume_factor_s16.exit, label %.lr.ph.i, !llvm.loop !1347

ma_copy_and_apply_volume_factor_s16.exit:         ; preds = %.lr.ph.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_apply_volume_factor_s24(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, float noundef %2) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne i64 %1, 0
  %or.cond27.i = and i1 %i.a, %i.b
  br i1 %or.cond27.i, label %.lr.ph.i, label %ma_copy_and_apply_volume_factor_s24.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.026.i = phi i64 [ %i.aa, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = mul i64 %.026.i, 3
  %i.d = getelementptr i8, ptr %0, i64 %i.c       ; 4 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !119
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 8
  %i.h = getelementptr i8, ptr %i.d, i64 1        ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !119
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 16
  %i.l = or disjoint i32 %i.k, %i.g
  %i.m = getelementptr i8, ptr %i.d, i64 2        ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !119
  %i.o = zext i8 %i.n to i32
  %i.p = shl nuw i32 %i.o, 24
  %i.q = or disjoint i32 %i.l, %i.p
  %i.r = sitofp i32 %i.q to float
  %i.s = fmul float %2, %i.r
  %i.t = fptosi float %i.s to i32                 ; 3 uses
  %i.u = lshr i32 %i.t, 8
  %i.v = trunc i32 %i.u to i8
  store i8 %i.v, ptr %i.d, align 1, !tbaa !119
  %i.w = lshr i32 %i.t, 16
  %i.x = trunc i32 %i.w to i8
  store i8 %i.x, ptr %i.h, align 1, !tbaa !119
  %i.y = lshr i32 %i.t, 24
  %i.z = trunc nuw i32 %i.y to i8
  store i8 %i.z, ptr %i.m, align 1, !tbaa !119
  %i.aa = add nuw i64 %.026.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aa, %1
  br i1 %exitcond.not.i, label %ma_copy_and_apply_volume_factor_s24.exit, label %.lr.ph.i, !llvm.loop !9

ma_copy_and_apply_volume_factor_s24.exit:         ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_apply_volume_factor_s32(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, float noundef %2) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne i64 %1, 0
  %or.cond13.i = and i1 %i.a, %i.b
  br i1 %or.cond13.i, label %.lr.ph.i.preheader, label %ma_copy_and_apply_volume_factor_s32.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %min.iters.check = icmp ult i64 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader5, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %1, -8                         ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.c, align 4, !tbaa !118
  %wide.load4 = load <4 x i32>, ptr %i.d, align 4, !tbaa !118
  %i.e = sitofp <4 x i32> %wide.load to <4 x float>
  %i.f = sitofp <4 x i32> %wide.load4 to <4 x float>
  %i.g = fmul <4 x float> %broadcast.splat, %i.e
  %i.h = fmul <4 x float> %broadcast.splat, %i.f
  %i.i = fptosi <4 x float> %i.g to <4 x i32>
  %i.j = fptosi <4 x float> %i.h to <4 x i32>
  store <4 x i32> %i.i, ptr %i.c, align 4, !tbaa !118
  store <4 x i32> %i.j, ptr %i.d, align 4, !tbaa !118
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !1348

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %ma_copy_and_apply_volume_factor_s32.exit, label %.lr.ph.i.preheader5

.lr.ph.i.preheader5:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.012.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader5, %.lr.ph.i
  %.012.i = phi i64 [ %i.q, %.lr.ph.i ], [ %.012.i.ph, %.lr.ph.i.preheader5 ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.012.i ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !118
  %i.n = sitofp i32 %i.m to float
  %i.o = fmul float %2, %i.n
  %i.p = fptosi float %i.o to i32
  store i32 %i.p, ptr %i.l, align 4, !tbaa !118
  %i.q = add nuw i64 %.012.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.q, %1
  br i1 %exitcond.not.i, label %ma_copy_and_apply_volume_factor_s32.exit, label %.lr.ph.i, !llvm.loop !1349

ma_copy_and_apply_volume_factor_s32.exit:         ; preds = %.lr.ph.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_apply_volume_factor_f32(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, float noundef %2) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = fcmp oeq float %2, 1.000000e+00
  %or.cond = or i1 %i.a, %i.b
  %.not.i = icmp eq i64 %1, 0
  %or.cond3 = or i1 %.not.i, %or.cond
  br i1 %or.cond3, label %ma_copy_and_apply_volume_factor_f32.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %min.iters.check = icmp ult i64 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %1, -8                         ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.c, align 4, !tbaa !349
  %wide.load6 = load <4 x float>, ptr %i.d, align 4, !tbaa !349
  %i.e = fmul <4 x float> %broadcast.splat, %wide.load
  %i.f = fmul <4 x float> %broadcast.splat, %wide.load6
  store <4 x float> %i.e, ptr %i.c, align 4, !tbaa !349
  store <4 x float> %i.f, ptr %i.d, align 4, !tbaa !349
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !1350

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %ma_copy_and_apply_volume_factor_f32.exit, label %.lr.ph.i.preheader7

.lr.ph.i.preheader7:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.125.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader7, %.lr.ph.i
  %.125.i = phi i64 [ %i.k, %.lr.ph.i ], [ %.125.i.ph, %.lr.ph.i.preheader7 ] ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.125.i ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !349
  %i.j = fmul float %2, %i.i
  store float %i.j, ptr %i.h, align 4, !tbaa !349
  %i.k = add nuw i64 %.125.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.k, %1
  br i1 %exitcond.not.i, label %ma_copy_and_apply_volume_factor_f32.exit, label %.lr.ph.i, !llvm.loop !1351

ma_copy_and_apply_volume_factor_f32.exit:         ; preds = %.lr.ph.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_copy_and_apply_volume_factor_pcm_frames_u8(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #20 {
bb.a:
  %i.a = zext i32 %3 to i64
  %i.b = mul i64 %2, %i.a                         ; 11 uses
  %i.c = icmp ne ptr %0, null
  %i.d = icmp ne ptr %1, null
  %or.cond.not15.i = and i1 %i.c, %i.d
  %i.e = icmp ne i64 %i.b, 0
  %or.cond13.i = and i1 %or.cond.not15.i, %i.e
  br i1 %or.cond13.i, label %iter.check, label %ma_copy_and_apply_volume_factor_u8.exit

iter.check:                                       ; preds = %bb.a
  %i.f = ptrtoaddr ptr %1 to i64
  %i.g = ptrtoaddr ptr %0 to i64
  %min.iters.check = icmp ult i64 %i.b, 4
  %i.h = sub i64 %i.f, %i.g
  %diff.check = icmp ugt i64 %i.h, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %i.b, 16
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.i = and i64 %i.b, 12
  %n.vec = and i64 %i.b, -16                      ; 4 uses
  %broadcast.splatinsert = insertelement <16 x float> poison, float %4, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load = load <16 x i8>, ptr %i.j, align 1, !tbaa !119
  %i.k = uitofp <16 x i8> %wide.load to <16 x float>
  %i.l = fmul <16 x float> %broadcast.splat, %i.k
  %i.m = fptoui <16 x float> %i.l to <16 x i8>
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.m, ptr %i.n, align 1, !tbaa !119
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !1352

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %ma_copy_and_apply_volume_factor_u8.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec7 = and i64 %i.b, -4                      ; 3 uses
  %broadcast.splatinsert8 = insertelement <4 x float> poison, float %4, i64 0
  %broadcast.splat9 = shufflevector <4 x float> %broadcast.splatinsert8, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index10 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next12, %vec.epilog.vector.body ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %index10
  %wide.load11 = load <4 x i8>, ptr %i.p, align 1, !tbaa !119
  %i.q = uitofp <4 x i8> %wide.load11 to <4 x float>
  %i.r = fmul <4 x float> %broadcast.splat9, %i.q
  %i.s = fptoui <4 x float> %i.r to <4 x i8>
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %index10
  store <4 x i8> %i.s, ptr %i.t, align 1, !tbaa !119
  %index.next12 = add nuw i64 %index10, 4         ; 2 uses
  %i.u = icmp eq i64 %index.next12, %n.vec7
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1353

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n13 = icmp eq i64 %i.b, %n.vec7
  br i1 %cmp.n13, label %ma_copy_and_apply_volume_factor_u8.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec7, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.012.i.ph, 1
  %xtraiter = and i64 %i.b, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.012.i.ph
  %i.w = load i8, ptr %i.v, align 1, !tbaa !119
  %i.x = uitofp i8 %i.w to float
  %i.y = fmul float %4, %i.x
  %i.z = fptoui float %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.012.i.ph
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !119
  %i.ab = or disjoint i64 %.012.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.012.i.unr = phi i64 [ %.012.i.ph, %.lr.ph.i.preheader ], [ %i.ab, %.lr.ph.i.prol ]
  %i.ac = icmp eq i64 %i.b, %.neg
  br i1 %i.ac, label %ma_copy_and_apply_volume_factor_u8.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.012.i = phi i64 [ %i.aq, %.lr.ph.i ], [ %.012.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.012.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !119
  %i.af = uitofp i8 %i.ae to float
  %i.ag = fmul float %4, %i.af
  %i.ah = fptoui float %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.012.i
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !119
  %i.aj = add nuw i64 %.012.i, 1                  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !119
  %i.am = uitofp i8 %i.al to float
  %i.an = fmul float %4, %i.am
  %i.ao = fptoui float %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !119
  %i.aq = add nuw i64 %.012.i, 2                  ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.aq, %i.b
  br i1 %exitcond.not.i.1, label %ma_copy_and_apply_volume_factor_u8.exit, label %.lr.ph.i, !llvm.loop !1354

ma_copy_and_apply_volume_factor_u8.exit:          ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_copy_and_apply_volume_factor_pcm_frames_s16(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #20 {
bb.a:
  %i.a = zext i32 %3 to i64
  %i.b = mul i64 %2, %i.a                         ; 7 uses
  %i.c = icmp ne ptr %0, null
  %i.d = icmp ne ptr %1, null
  %or.cond.not15.i = and i1 %i.c, %i.d
  %i.e = icmp ne i64 %i.b, 0
  %or.cond13.i = and i1 %or.cond.not15.i, %i.e
  br i1 %or.cond13.i, label %.lr.ph.i.preheader, label %ma_copy_and_apply_volume_factor_s16.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.f = ptrtoaddr ptr %0 to i64
  %i.g = ptrtoaddr ptr %1 to i64
  %min.iters.check = icmp ult i64 %i.b, 8
  %i.h = sub i64 %i.g, %i.f
  %diff.check = icmp ugt i64 %i.h, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader6, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.b, -8                       ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %4, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %wide.load = load <8 x i16>, ptr %i.i, align 2, !tbaa !122
  %i.j = sitofp <8 x i16> %wide.load to <8 x float>
  %i.k = fmul <8 x float> %broadcast.splat, %i.j
  %i.l = fptosi <8 x float> %i.k to <8 x i16>
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  store <8 x i16> %i.l, ptr %i.m, align 2, !tbaa !122
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !1355

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %ma_copy_and_apply_volume_factor_s16.exit, label %.lr.ph.i.preheader6

.lr.ph.i.preheader6:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.012.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.012.i.ph, 1
  %xtraiter = and i64 %i.b, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader6
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.012.i.ph
  %i.p = load i16, ptr %i.o, align 2, !tbaa !122
  %i.q = sitofp i16 %i.p to float
  %i.r = fmul float %4, %i.q
  %i.s = fptosi float %i.r to i16
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.012.i.ph
  store i16 %i.s, ptr %i.t, align 2, !tbaa !122
  %i.u = or disjoint i64 %.012.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader6
  %.012.i.unr = phi i64 [ %.012.i.ph, %.lr.ph.i.preheader6 ], [ %i.u, %.lr.ph.i.prol ]
  %i.v = icmp eq i64 %i.b, %.neg
  br i1 %i.v, label %ma_copy_and_apply_volume_factor_s16.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.012.i = phi i64 [ %i.aj, %.lr.ph.i ], [ %.012.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.012.i
  %i.x = load i16, ptr %i.w, align 2, !tbaa !122
  %i.y = sitofp i16 %i.x to float
  %i.z = fmul float %4, %i.y
  %i.aa = fptosi float %i.z to i16
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.012.i
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !122
  %i.ac = add nuw i64 %.012.i, 1                  ; 2 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !122
  %i.af = sitofp i16 %i.ae to float
  %i.ag = fmul float %4, %i.af
  %i.ah = fptosi float %i.ag to i16
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ac
  store i16 %i.ah, ptr %i.ai, align 2, !tbaa !122
  %i.aj = add nuw i64 %.012.i, 2                  ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.aj, %i.b
  br i1 %exitcond.not.i.1, label %ma_copy_and_apply_volume_factor_s16.exit, label %.lr.ph.i, !llvm.loop !1356

ma_copy_and_apply_volume_factor_s16.exit:         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  ret void
}

end_hunk_1
begin_hunk_2_@ma_fader_set_fade:bb.a
  %i.s = trunc i64 %i.j to i32
  %i.t = uitofp i32 %i.s to float
  %i.u = fdiv float %i.r, %i.t
  %i.v = fsub float %i.p, %i.n
  %i.w = fmul float %i.u, %i.v
  %i.x = fadd float %i.n, %i.w
  br label %ma_fader_get_current_volume.exit.i

ma_fader_get_current_volume.exit.i:               ; preds = %bb.h, %bb.g, %bb.e, %bb.c, %bb.b
  %.0.i = phi float [ %1, %bb.b ], [ %i.x, %bb.h ], [ 1.000000e+00, %bb.c ], [ %i.h, %bb.e ], [ %i.l, %bb.g ]
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %3, i64 4294967295)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %.0.i, ptr %i.y, align 4, !tbaa !471
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %2, ptr %i.z, align 8, !tbaa !472
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %spec.store.select.i, ptr %i.aa, align 8, !tbaa !473
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.ab, align 8, !tbaa !468
  br label %ma_fader_set_fade_ex.exit

ma_fader_set_fade_ex.exit:                        ; preds = %bb.a, %ma_fader_get_current_volume.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ma_fader_set_fade_ex(ptr nofree noundef captures(address_is_null) %0, float noundef %1, float noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp olt float %1, 0.000000e+00
  br i1 %i.b, label %bb.c, label %ma_fader_get_current_volume.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !468  ; 4 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %ma_fader_get_current_volume.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load float, ptr %i.g, align 4, !tbaa !471
  br label %ma_fader_get_current_volume.exit

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !473  ; 2 uses
  %.not.i = icmp ult i64 %i.d, %i.j
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load float, ptr %i.k, align 8, !tbaa !472
  br label %ma_fader_get_current_volume.exit

bb.h:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load float, ptr %i.m, align 4, !tbaa !471 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load float, ptr %i.o, align 8, !tbaa !472
  %i.q = trunc i64 %i.d to i32
  %i.r = uitofp i32 %i.q to float
  %i.s = trunc i64 %i.j to i32
  %i.t = uitofp i32 %i.s to float
  %i.u = fdiv float %i.r, %i.t
  %i.v = fsub float %i.p, %i.n
  %i.w = fmul float %i.u, %i.v
  %i.x = fadd float %i.n, %i.w
  br label %ma_fader_get_current_volume.exit

ma_fader_get_current_volume.exit:                 ; preds = %bb.h, %bb.g, %bb.e, %bb.c, %bb.b
  %.0 = phi float [ %1, %bb.b ], [ %i.x, %bb.h ], [ 1.000000e+00, %bb.c ], [ %i.h, %bb.e ], [ %i.l, %bb.g ]
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %3, i64 4294967295)
  %spec.store.select1 = tail call i64 @llvm.smin.i64(i64 %4, i64 2147483647)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %.0, ptr %i.y, align 4, !tbaa !471
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %2, ptr %i.z, align 8, !tbaa !472
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %spec.store.select, ptr %i.aa, align 8, !tbaa !473
  %i.ab = sub nsw i64 0, %spec.store.select1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !468
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %ma_fader_get_current_volume.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define float @ma_fader_get_current_volume(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !468  ; 4 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load float, ptr %i.f, align 4, !tbaa !471
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !473  ; 2 uses
  %.not = icmp ult i64 %i.c, %i.i
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load float, ptr %i.j, align 8, !tbaa !472
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = load float, ptr %i.l, align 4, !tbaa !471 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load float, ptr %i.n, align 8, !tbaa !472
  %i.p = trunc i64 %i.c to i32
  %i.q = uitofp i32 %i.p to float
  %i.r = trunc i64 %i.i to i32
  %i.s = uitofp i32 %i.r to float
  %i.t = fdiv float %i.q, %i.s
  %i.u = fsub float %i.o, %i.m
  %i.v = fmul float %i.t, %i.u
  %i.w = fadd float %i.m, %i.v
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.a, %bb.g, %bb.f, %bb.d
  %.0 = phi float [ %i.w, %bb.g ], [ 0.000000e+00, %bb.a ], [ %i.g, %bb.d ], [ %i.k, %bb.f ], [ 1.000000e+00, %bb.b ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @ma_vec3f_init_3f(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #1 {
bb.a:
  %.sroa.03.0.vec.insert = insertelement <2 x float> poison, float %0, i64 0
  %.sroa.03.4.vec.insert = insertelement <2 x float> %.sroa.03.0.vec.insert, float %1, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.03.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %2, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @ma_vec3f_sub(<2 x float> %0, float %1, <2 x float> %2, float %3) local_unnamed_addr #35 {
bb.a:
  %i.a = fsub <2 x float> %0, %2
  %i.b = fsub float %1, %3
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.a, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.b, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @ma_vec3f_neg(<2 x float> %0, float %1) local_unnamed_addr #35 {
bb.a:
  %i.a = fneg <2 x float> %0
  %i.b = fneg float %1
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.a, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.b, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define float @ma_vec3f_dot(<2 x float> %0, float %1, <2 x float> %2, float %3) local_unnamed_addr #35 {
bb.a:
  %.sroa.04.0.vec.extract = extractelement <2 x float> %0, i64 0
  %.sroa.01.0.vec.extract = extractelement <2 x float> %2, i64 0
  %foldExtExtBinop = fmul <2 x float> %0, %2
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.b = tail call float @llvm.fmuladd.f32(float %.sroa.04.0.vec.extract, float %.sroa.01.0.vec.extract, float %i.a)
  %i.c = tail call float @llvm.fmuladd.f32(float %1, float %3, float %i.b)
  ret float %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define float @ma_vec3f_len2(<2 x float> %0, float %1) local_unnamed_addr #35 {
bb.a:
  %.sroa.04.0.vec.extract.i = extractelement <2 x float> %0, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %0, %0
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.b = tail call float @llvm.fmuladd.f32(float %.sroa.04.0.vec.extract.i, float %.sroa.04.0.vec.extract.i, float %i.a)
  %i.c = tail call float @llvm.fmuladd.f32(float %1, float %1, float %i.b)
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define float @ma_vec3f_len(<2 x float> %0, float %1) local_unnamed_addr #36 {
bb.a:
  %.sroa.04.0.vec.extract.i.i = extractelement <2 x float> %0, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %0, %0
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.b = tail call float @llvm.fmuladd.f32(float %.sroa.04.0.vec.extract.i.i, float %.sroa.04.0.vec.extract.i.i, float %i.a)
  %i.c = tail call float @llvm.fmuladd.f32(float %1, float %1, float %i.b)
  %sqrt = tail call float @sqrtf(float noundef %i.c) #55
  ret float %sqrt
}

; Function Attrs: nounwind uwtable
define float @ma_vec3f_dist(<2 x float> %0, float %1, <2 x float> %2, float %3) local_unnamed_addr #36 {
bb.a:
  %foldExtExtBinop = fsub <2 x float> %0, %2
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop18 = fsub <2 x float> %0, %2    ; 2 uses
  %i.b = fsub float %1, %3                        ; 2 uses
  %foldExtExtBinop20 = fmul <2 x float> %foldExtExtBinop18, %foldExtExtBinop18
  %i.c = extractelement <2 x float> %foldExtExtBinop20, i64 1
  %i.d = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.c)
  %i.e = tail call float @llvm.fmuladd.f32(float %i.b, float %i.b, float %i.d)
  %sqrt.i = tail call float @sqrtf(float noundef %i.e) #55
  ret float %sqrt.i
}

; Function Attrs: nounwind uwtable
define { <2 x float>, float } @ma_vec3f_normalize(<2 x float> %0, float %1) local_unnamed_addr #36 {
bb.a:
  %.sroa.04.0.vec.extract.i.i = extractelement <2 x float> %0, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %0, %0
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.b = tail call float @llvm.fmuladd.f32(float %.sroa.04.0.vec.extract.i.i, float %.sroa.04.0.vec.extract.i.i, float %i.a)
  %i.c = tail call float @llvm.fmuladd.f32(float %1, float %1, float %i.b) ; 2 uses
  %i.d = fcmp oeq float %i.c, 0.000000e+00
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call float asm sideeffect "rsqrtss $1, $0", "=x,x,~{dirflag},~{fpsr},~{flags}"(float %i.c) #55, !srcloc !474 ; 2 uses
  %i.f = insertelement <2 x float> poison, float %i.e, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fmul <2 x float> %0, %i.g
  %i.i = fmul float %1, %i.e
  %i.j = insertvalue { <2 x float>, float } poison, <2 x float> %i.h, 0
  %i.k = insertvalue { <2 x float>, float } %i.j, float %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.fca.1.insert.merged = phi { <2 x float>, float } [ %i.k, %bb.b ], [ zeroinitializer, %bb.a ]
  ret { <2 x float>, float } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @ma_vec3f_cross(<2 x float> %0, float %1, <2 x float> %2, float %3) local_unnamed_addr #35 {
bb.a:
  %.sroa.013.4.vec.extract = extractelement <2 x float> %0, i64 1
  %.sroa.05.4.vec.extract = extractelement <2 x float> %2, i64 1
  %i.a = fneg float %.sroa.05.4.vec.extract
  %i.b = fmul float %1, %i.a
  %i.c = tail call float @llvm.fmuladd.f32(float %.sroa.013.4.vec.extract, float %3, float %i.b)
  %i.d = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.e = insertelement <2 x float> %i.d, float %3, i64 0
  %i.f = fneg <2 x float> %i.e
  %i.g = fmul <2 x float> %0, %i.f
  %i.h = shufflevector <2 x float> %0, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.i = insertelement <2 x float> %i.h, float %1, i64 0
  %i.j = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.i, <2 x float> %2, <2 x float> %i.g) ; 2 uses
  %.sroa.03.0.vec.insert.i = insertelement <2 x float> poison, float %i.c, i64 0
  %i.k = shufflevector <2 x float> %.sroa.03.0.vec.insert.i, <2 x float> %i.j, <2 x i32> <i32 0, i32 2>
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.k, 0
  %i.l = extractelement <2 x float> %i.j, i64 1
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.l, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ma_atomic_vec3f_init(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, <2 x float> %1, float %2) local_unnamed_addr #37 {
bb.a:
  store <2 x float> %1, ptr %0, align 4, !tbaa !349
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %2, ptr %.sroa.23.0..sroa_idx, align 4, !tbaa !349
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.a, align 4, !tbaa !1918
  ret void
}

; Function Attrs: nounwind uwtable
define void @ma_atomic_vec3f_set(ptr nofree noundef captures(address) %0, <2 x float> %1, float %2) local_unnamed_addr #36 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.b = atomicrmw volatile xchg ptr %i.a, i32 1 acquire, align 4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %ma_spinlock_lock.exit, label %.preheader.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %.preheader.i
  %i.d = atomicrmw volatile xchg ptr %i.a, i32 1 acquire, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %ma_spinlock_lock.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.loopexit.i
  %i.f = load atomic volatile i32, ptr %i.a monotonic, align 4
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.h = load atomic volatile i32, ptr %i.a monotonic, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !1

ma_spinlock_lock.exit:                            ; preds = %.loopexit.i, %bb.a
  store <2 x float> %1, ptr %0, align 4, !tbaa !349
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %2, ptr %.sroa.24.0..sroa_idx, align 4, !tbaa !349
  store atomic volatile i32 0, ptr %i.a release, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define { <2 x float>, float } @ma_atomic_vec3f_get(ptr nofree noundef captures(address) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.b = atomicrmw volatile xchg ptr %i.a, i32 1 acquire, align 4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %ma_spinlock_lock.exit, label %.preheader.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %.preheader.i
  %i.d = atomicrmw volatile xchg ptr %i.a, i32 1 acquire, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %ma_spinlock_lock.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.loopexit.i
  %i.f = load atomic volatile i32, ptr %i.a monotonic, align 4
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.h = load atomic volatile i32, ptr %i.a monotonic, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !1

ma_spinlock_lock.exit:                            ; preds = %.loopexit.i, %bb.a
  %.sroa.03.0.copyload = load <2 x float>, ptr %0, align 4, !tbaa !349
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 4, !tbaa !349
  store atomic volatile i32 0, ptr %i.a release, align 4
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.03.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.24.0.copyload, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ma_spatializer_listener_config_init(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ma_spatializer_listener_config) align 8 captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #37 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %ma_zero_memory_default.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.a, %bb.b
  store i32 %1, ptr %0, align 8, !tbaa !478
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !479
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.b, align 8, !tbaa !1919
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.c, align 4, !tbaa !349
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float 0.000000e+00, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !349
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store <4 x float> <float f0x40C90FDA, float f0x40C90FDA, float 0.000000e+00, float 3.433000e+02>, ptr %i.d, align 4, !tbaa !349
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_spatializer_listener_get_heap_size(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ma_spatializer_listener_get_heap_layout.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !154
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_spatializer_listener_get_heap_layout.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 8, !tbaa !478    ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %ma_spatializer_listener_get_heap_layout.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = zext i32 %i.c to i64
  %i.f = add nuw nsw i64 %i.e, 7
  %i.g = and i64 %i.f, 8589934584
  store i64 %i.g, ptr %1, align 8, !tbaa !154
  br label %ma_spatializer_listener_get_heap_layout.exit.thread

ma_spatializer_listener_get_heap_layout.exit.thread: ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -2, %bb.a ], [ -2, %bb.b ], [ -2, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @ma_spatializer_listener_init_preallocated(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef captures(address) %2) local_unnamed_addr #36 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %ma_get_default_channel_map_for_spatializer.exit, label %ma_zero_memory_default.exit64

ma_zero_memory_default.exit64:                    ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %2, i8 0, i64 112, i1 false)
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_get_default_channel_map_for_spatializer.exit, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit64
  %i.c = load i32, ptr %0, align 8, !tbaa !478    ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %ma_get_default_channel_map_for_spatializer.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 104
end_hunk_2
begin_hunk_3_@ma_spatializer_process_pcm_frames:bb.a
  %i.k = load i32, ptr %i.j, align 8, !tbaa !482
  %.not253 = icmp eq i32 %i.k, 0
  br i1 %.not253, label %bb.g, label %bb.c

bb.c:                                             ; preds = %ma_spatializer_listener_is_enabled.exit
  %i.l = load i32, ptr %0, align 8, !tbaa !502    ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !506  ; 2 uses
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.p = icmp eq ptr %2, %3
  br i1 %i.p, label %ma_copy_pcm_frames.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = shl i32 %i.l, 2
  %i.r = zext i32 %i.q to i64
  %i.s = mul i64 %4, %i.r                         ; 2 uses
  %.not.i7.i = icmp eq i64 %i.s, 0
  br i1 %.not.i7.i, label %ma_copy_pcm_frames.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.0.i10.i = phi ptr [ %i.u, %.lr.ph.i ], [ %2, %bb.e ] ; 2 uses
  %.011.i9.i = phi i64 [ %i.t, %.lr.ph.i ], [ %i.s, %bb.e ] ; 2 uses
  %.012.i8.i = phi ptr [ %i.v, %.lr.ph.i ], [ %3, %bb.e ] ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.011.i9.i, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i10.i, ptr noundef nonnull align 1 dereferenceable(1) %.012.i8.i, i64 %spec.store.select.i.i, i1 false)
  %i.t = sub nuw i64 %.011.i9.i, %spec.store.select.i.i ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i10.i, i64 %spec.store.select.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i8.i, i64 %spec.store.select.i.i
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %ma_copy_pcm_frames.exit, label %.lr.ph.i, !llvm.loop !12

bb.f:                                             ; preds = %bb.c
  tail call fastcc void @ma_channel_map_apply_f32(ptr noundef %2, ptr noundef %i.f, i32 noundef %i.n, ptr noundef %3, ptr noundef %i.d, i32 noundef %i.l, i64 noundef %4, i32 noundef 0, i32 noundef 0)
  br label %ma_copy_pcm_frames.exit

bb.g:                                             ; preds = %ma_spatializer_listener_is_enabled.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !506
  %i.y = shl i32 %i.x, 2
  %i.z = zext i32 %i.y to i64
  %i.aa = mul i64 %4, %i.z                        ; 2 uses
  %.not.i13.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i13.i, label %ma_copy_pcm_frames.exit, label %.lr.ph.i254

.lr.ph.i254:                                      ; preds = %bb.g, %ma_zero_memory_default.exit.i.i
  %.0.i15.i = phi ptr [ %i.ac, %ma_zero_memory_default.exit.i.i ], [ %2, %bb.g ] ; 3 uses
  %.08.i14.i = phi i64 [ %i.ab, %ma_zero_memory_default.exit.i.i ], [ %i.aa, %bb.g ] ; 2 uses
  %spec.store.select.i.i255 = tail call i64 @llvm.umin.i64(i64 %.08.i14.i, i64 4294967295) ; 3 uses
  %.not.i = icmp eq ptr %.0.i15.i, null
  br i1 %.not.i, label %ma_zero_memory_default.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i254
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i15.i, i8 0, i64 %spec.store.select.i.i255, i1 false)
  br label %ma_zero_memory_default.exit.i.i

ma_zero_memory_default.exit.i.i:                  ; preds = %bb.h, %.lr.ph.i254
  %i.ab = sub nuw i64 %.08.i14.i, %spec.store.select.i.i255 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i15.i, i64 %spec.store.select.i.i255
  %.not.i.i256 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i256, label %ma_copy_pcm_frames.exit, label %.lr.ph.i254, !llvm.loop !7

ma_copy_pcm_frames.exit:                          ; preds = %.lr.ph.i, %ma_zero_memory_default.exit.i.i, %bb.g, %bb.e, %bb.d, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120
  store float 1.000000e+00, ptr %i.ad, align 8, !tbaa !500
  br label %bb.ak

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !506 ; 6 uses
  %i.ag = load i32, ptr %0, align 8, !tbaa !502
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ai = load atomic volatile i32, ptr %i.ah seq_cst, align 4
  %i.aj = bitcast i32 %i.ai to float              ; 15 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load atomic volatile i32, ptr %i.ak seq_cst, align 8
  %i.am = bitcast i32 %i.al to float              ; 10 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ao = load atomic volatile i32, ptr %i.an seq_cst, align 4
  %i.ap = bitcast i32 %i.ao to float              ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ar = load atomic volatile i32, ptr %i.aq seq_cst, align 4
  %i.as = bitcast i32 %i.ar to float              ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 5 uses
  %i.av = atomicrmw volatile xchg ptr %i.au, i32 1 acquire, align 4
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %ma_spatializer_get_positioning.exit, label %.preheader.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i
  %i.ax = atomicrmw volatile xchg ptr %i.au, i32 1 acquire, align 4
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %ma_spatializer_get_positioning.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.i, %.loopexit.i.i.i
  %i.az = load atomic volatile i32, ptr %i.au monotonic, align 4
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %.lr.ph.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.bb = load atomic volatile i32, ptr %i.au monotonic, align 4
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %.lr.ph.i.i.i, label %.loopexit.i.i.i, !llvm.loop !1

ma_spatializer_get_positioning.exit:              ; preds = %.loopexit.i.i.i, %bb.i
  %.sroa.03.0.copyload.i.i = load <2 x float>, ptr %i.at, align 8, !tbaa !349 ; 2 uses
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.24.0.copyload.i.i = load float, ptr %.sroa.24.0..sroa_idx.i.i, align 8, !tbaa !349
  store atomic volatile i32 0, ptr %i.au release, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.be = load float, ptr %i.bd, align 8, !tbaa !489 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bg = load atomic i32, ptr %i.bf seq_cst, align 4
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %ma_spatializer_get_positioning.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 5 uses
  %i.bk = atomicrmw volatile xchg ptr %i.bj, i32 1 acquire, align 4
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %.loopexit388, label %.preheader.i.i.i262

.loopexit.i.i.i263:                               ; preds = %.lr.ph.i.i.i271, %.preheader.i.i.i262
  %i.bm = atomicrmw volatile xchg ptr %i.bj, i32 1 acquire, align 4
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.loopexit388, label %.preheader.i.i.i262

.preheader.i.i.i262:                              ; preds = %bb.j, %.loopexit.i.i.i263
  %i.bo = load atomic volatile i32, ptr %i.bj monotonic, align 4
  %i.bp = icmp eq i32 %i.bo, 1
  br i1 %i.bp, label %.lr.ph.i.i.i271, label %.loopexit.i.i.i263

.lr.ph.i.i.i271:                                  ; preds = %.preheader.i.i.i262, %.lr.ph.i.i.i271
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.bq = load atomic volatile i32, ptr %i.bj monotonic, align 4
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %.lr.ph.i.i.i271, label %.loopexit.i.i.i263, !llvm.loop !1

.loopexit388:                                     ; preds = %.loopexit.i.i.i263, %bb.j
  %.sroa.03.0.copyload.i.i265 = load <2 x float>, ptr %i.bi, align 8, !tbaa !349 ; 2 uses
  %.sroa.24.0..sroa_idx.i.i266 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.24.0.copyload.i.i267 = load float, ptr %.sroa.24.0..sroa_idx.i.i266, align 8, !tbaa !349 ; 2 uses
  store atomic volatile i32 0, ptr %i.bj release, align 4
  store <2 x float> %.sroa.03.0.copyload.i.i265, ptr %5, align 8, !tbaa !349
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %.sroa.24.0.copyload.i.i267, ptr %.sroa.4108.0..sroa_idx, align 8, !tbaa !349
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 5 uses
  %i.bu = atomicrmw volatile xchg ptr %i.bt, i32 1 acquire, align 4
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %ma_spatializer_get_direction.exit, label %.preheader.i.i.i272

.loopexit.i.i.i273:                               ; preds = %.lr.ph.i.i.i281, %.preheader.i.i.i272
  %i.bw = atomicrmw volatile xchg ptr %i.bt, i32 1 acquire, align 4
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %ma_spatializer_get_direction.exit, label %.preheader.i.i.i272

.preheader.i.i.i272:                              ; preds = %.loopexit388, %.loopexit.i.i.i273
  %i.by = load atomic volatile i32, ptr %i.bt monotonic, align 4
  %i.bz = icmp eq i32 %i.by, 1
  br i1 %i.bz, label %.lr.ph.i.i.i281, label %.loopexit.i.i.i273

.lr.ph.i.i.i281:                                  ; preds = %.preheader.i.i.i272, %.lr.ph.i.i.i281
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.ca = load atomic volatile i32, ptr %i.bt monotonic, align 4
  %i.cb = icmp eq i32 %i.ca, 1
  br i1 %i.cb, label %.lr.ph.i.i.i281, label %.loopexit.i.i.i273, !llvm.loop !1

ma_spatializer_get_direction.exit:                ; preds = %.loopexit.i.i.i273, %.loopexit388
  %.sroa.03.0.copyload.i.i275 = load <2 x float>, ptr %i.bs, align 8, !tbaa !349
  %.sroa.24.0..sroa_idx.i.i276 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.24.0.copyload.i.i277 = load float, ptr %.sroa.24.0..sroa_idx.i.i276, align 8, !tbaa !349
  store atomic volatile i32 0, ptr %i.bt release, align 4
  store <2 x float> %.sroa.03.0.copyload.i.i275, ptr %6, align 8, !tbaa !349
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %.sroa.24.0.copyload.i.i277, ptr %.sroa.4102.0..sroa_idx, align 8, !tbaa !349
  br label %ma_spatializer_get_attenuation_model.exit

bb.k:                                             ; preds = %ma_spatializer_get_positioning.exit
  call void @ma_spatializer_get_relative_position_and_direction(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %.sroa.095.0.copyload.pre = load <2 x float>, ptr %5, align 8
  %.sroa.296.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.296.0.copyload.pre = load float, ptr %.sroa.296.0..sroa_idx.phi.trans.insert, align 8
  br label %ma_spatializer_get_attenuation_model.exit

ma_spatializer_get_attenuation_model.exit:        ; preds = %bb.k, %ma_spatializer_get_direction.exit
  %.sroa.296.0.copyload = phi float [ %.sroa.296.0.copyload.pre, %bb.k ], [ %.sroa.24.0.copyload.i.i267, %ma_spatializer_get_direction.exit ] ; 2 uses
  %.sroa.095.0.copyload = phi <2 x float> [ %.sroa.095.0.copyload.pre, %bb.k ], [ %.sroa.03.0.copyload.i.i265, %ma_spatializer_get_direction.exit ] ; 3 uses
  %.sroa.296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.sroa.04.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.095.0.copyload, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.095.0.copyload, %.sroa.095.0.copyload
  %i.cc = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.cd = call float @llvm.fmuladd.f32(float %.sroa.04.0.vec.extract.i.i.i, float %.sroa.04.0.vec.extract.i.i.i, float %i.cc)
  %i.ce = call float @llvm.fmuladd.f32(float %.sroa.296.0.copyload, float %.sroa.296.0.copyload, float %i.cd)
  %sqrt.i = call float @sqrtf(float noundef %i.ce) #55 ; 10 uses
  %i.cf = load atomic i32, ptr %i.g seq_cst, align 8
  switch i32 %i.cf, label %ma_attenuation_inverse.exit [
    i32 1, label %bb.l
    i32 2, label %bb.n
    i32 3, label %bb.p
  ]

bb.l:                                             ; preds = %ma_spatializer_get_attenuation_model.exit
  %i.cg = fcmp ult float %i.aj, %i.am
  br i1 %i.cg, label %bb.m, label %ma_attenuation_inverse.exit

bb.m:                                             ; preds = %bb.l
  %i.ch = fcmp olt float %sqrt.i, %i.am
  %i.ci = select i1 %i.ch, float %sqrt.i, float %i.am ; 2 uses
  %i.cj = fcmp olt float %i.ci, %i.aj
  %..i = select i1 %i.cj, float %i.aj, float %i.ci
  %i.ck = fsub float %..i, %i.aj
  %i.cl = call float @llvm.fmuladd.f32(float %i.ap, float %i.ck, float %i.aj)
  %i.cm = fdiv float %i.aj, %i.cl
  br label %ma_attenuation_inverse.exit

bb.n:                                             ; preds = %ma_spatializer_get_attenuation_model.exit
  %i.cn = fcmp ult float %i.aj, %i.am
  br i1 %i.cn, label %bb.o, label %ma_attenuation_inverse.exit

bb.o:                                             ; preds = %bb.n
  %i.co = fcmp olt float %sqrt.i, %i.am
  %i.cp = select i1 %i.co, float %sqrt.i, float %i.am ; 2 uses
  %i.cq = fcmp olt float %i.cp, %i.aj
  %..i285 = select i1 %i.cq, float %i.aj, float %i.cp
  %i.cr = fsub float %..i285, %i.aj
  %i.cs = fmul float %i.cr, %i.ap
  %i.ct = fsub float %i.am, %i.aj
  %i.cu = fdiv float %i.cs, %i.ct
  %i.cv = fsub float 1.000000e+00, %i.cu
  br label %ma_attenuation_inverse.exit

bb.p:                                             ; preds = %ma_spatializer_get_attenuation_model.exit
  %i.cw = fcmp ult float %i.aj, %i.am
  br i1 %i.cw, label %bb.q, label %ma_attenuation_inverse.exit

bb.q:                                             ; preds = %bb.p
  %i.cx = fcmp olt float %sqrt.i, %i.am
  %i.cy = select i1 %i.cx, float %sqrt.i, float %i.am ; 2 uses
  %i.cz = fcmp olt float %i.cy, %i.aj
  %..i287 = select i1 %i.cz, float %i.aj, float %i.cy
  %i.da = fdiv float %..i287, %i.aj
  %i.db = fpext float %i.da to double
  %i.dc = fneg float %i.ap
  %i.dd = fpext float %i.dc to double
  %i.de = call double @pow(double noundef %i.db, double noundef %i.dd) #55
  %i.df = fptrunc double %i.de to float
  br label %ma_attenuation_inverse.exit

ma_attenuation_inverse.exit:                      ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %ma_spatializer_get_attenuation_model.exit
  %.0239 = phi float [ 1.000000e+00, %bb.n ], [ 1.000000e+00, %ma_spatializer_get_attenuation_model.exit ], [ 1.000000e+00, %bb.l ], [ %i.cm, %bb.m ], [ %i.cv, %bb.o ], [ %i.df, %bb.q ], [ 1.000000e+00, %bb.p ] ; 2 uses
  %i.dg = fcmp ogt float %sqrt.i, 1.000000e-03    ; 2 uses
  br i1 %i.dg, label %ma_spatializer_get_cone.exit, label %ma_spatializer_get_max_gain.exit

ma_spatializer_get_cone.exit:                     ; preds = %ma_attenuation_inverse.exit
  %i.dh = fdiv float 1.000000e+00, %sqrt.i        ; 3 uses
  %.sroa.0156.0.copyload = load <2 x float>, ptr %5, align 8, !tbaa !349 ; 2 uses
  %.sroa.10.0.copyload = load float, ptr %.sroa.296.0..sroa_idx, align 8, !tbaa !349
  %.sroa.0156.0.vec.extract = extractelement <2 x float> %.sroa.0156.0.copyload, i64 0
  %i.di = fmul float %i.dh, %.sroa.0156.0.vec.extract ; 2 uses
  %.sroa.0156.4.vec.extract = extractelement <2 x float> %.sroa.0156.0.copyload, i64 1
  %i.dj = fmul float %i.dh, %.sroa.0156.4.vec.extract ; 2 uses
  %i.dk = fmul float %i.dh, %.sroa.10.0.copyload  ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dm = load atomic volatile i32, ptr %i.dl seq_cst, align 8
  %i.dn = bitcast i32 %i.dm to float              ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.dp = load atomic volatile i32, ptr %i.do seq_cst, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dr = load atomic volatile i32, ptr %i.dq seq_cst, align 8
  %i.ds = bitcast i32 %i.dr to float              ; 2 uses
  %i.dt = fcmp olt float %i.dn, f0x40C90FDA
  br i1 %i.dt, label %bb.r, label %ma_calculate_angular_gain.exit

bb.r:                                             ; preds = %ma_spatializer_get_cone.exit
  %.sroa.277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.277.0.copyload = load float, ptr %.sroa.277.0..sroa_idx, align 8
  %.sroa.076.0.copyload = load <2 x float>, ptr %6, align 8 ; 2 uses
  %i.du = fneg float %i.dk
  %i.dv = fneg float %i.dj
  %i.dw = fneg float %i.di
  %i.dx = bitcast i32 %i.dp to float
  %i.dy = fmul nnan float %i.dn, 5.000000e-01
  %i.dz = fpext float %i.dy to double
  %i.ea = fsub double f0x3FF921FB54442D18, %i.dz
  %i.eb = call double @sin(double noundef %i.ea) #55
  %i.ec = fptrunc double %i.eb to float           ; 2 uses
  %i.ed = fmul float %i.dx, 5.000000e-01
  %i.ee = fpext float %i.ed to double
  %i.ef = fsub double f0x3FF921FB54442D18, %i.ee
  %i.eg = call double @sin(double noundef %i.ef) #55
  %i.eh = fptrunc double %i.eg to float           ; 3 uses
  %.sroa.04.0.vec.extract.i.i = extractelement <2 x float> %.sroa.076.0.copyload, i64 0
  %.sroa.04.4.vec.extract.i.i = extractelement <2 x float> %.sroa.076.0.copyload, i64 1
  %i.ei = fmul float %.sroa.04.4.vec.extract.i.i, %i.dv
  %i.ej = call float @llvm.fmuladd.f32(float %.sroa.04.0.vec.extract.i.i, float %i.dw, float %i.ei)
  %i.ek = call float @llvm.fmuladd.f32(float %.sroa.277.0.copyload, float %i.du, float %i.ej) ; 3 uses
  %i.el = fcmp ogt float %i.ek, %i.ec
  br i1 %i.el, label %ma_calculate_angular_gain.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.em = fcmp ogt float %i.ek, %i.eh
  br i1 %i.em, label %bb.t, label %ma_calculate_angular_gain.exit

bb.t:                                             ; preds = %bb.s
  %i.en = fsub float %i.ek, %i.eh
  %i.eo = fsub float %i.ec, %i.eh
  %i.ep = fdiv float %i.en, %i.eo                 ; 2 uses
  %i.eq = fsub float 1.000000e+00, %i.ep
  %i.er = call float @llvm.fmuladd.f32(float %i.ds, float %i.eq, float %i.ep)
  br label %ma_calculate_angular_gain.exit

ma_calculate_angular_gain.exit:                   ; preds = %ma_spatializer_get_cone.exit, %bb.r, %bb.s, %bb.t
  %.0.i291 = phi float [ %i.ds, %bb.s ], [ 1.000000e+00, %bb.r ], [ %i.er, %bb.t ], [ 1.000000e+00, %ma_spatializer_get_cone.exit ]
  %i.es = fmul float %.0239, %.0.i291             ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.eu = load float, ptr %i.et, align 4, !tbaa !486 ; 2 uses
  %i.ev = fcmp olt float %i.eu, f0x40C90FDA
  br i1 %i.ev, label %bb.u, label %ma_spatializer_get_max_gain.exit

bb.u:                                             ; preds = %ma_calculate_angular_gain.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !483
  %i.ey = icmp eq i32 %i.ex, 0
  %.sroa.5.0 = select i1 %i.ey, float -1.000000e+00, float 1.000000e+00
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fa = load float, ptr %i.ez, align 8, !tbaa !487
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !488 ; 2 uses
  %i.fd = fmul nnan float %i.eu, 5.000000e-01
  %i.fe = fpext float %i.fd to double
  %i.ff = fsub double f0x3FF921FB54442D18, %i.fe
  %i.fg = call double @sin(double noundef %i.ff) #55
  %i.fh = fptrunc double %i.fg to float           ; 2 uses
  %i.fi = fmul float %i.fa, 5.000000e-01
  %i.fj = fpext float %i.fi to double
  %i.fk = fsub double f0x3FF921FB54442D18, %i.fj
  %i.fl = call double @sin(double noundef %i.fk) #55
  %i.fm = fptrunc double %i.fl to float           ; 3 uses
  %i.fn = fmul float %i.dj, 0.000000e+00
  %i.fo = call float @llvm.fmuladd.f32(float %i.di, float 0.000000e+00, float %i.fn)
  %i.fp = call float @llvm.fmuladd.f32(float %.sroa.5.0, float %i.dk, float %i.fo) ; 3 uses
  %i.fq = fcmp ogt float %i.fp, %i.fh
  br i1 %i.fq, label %ma_calculate_angular_gain.exit297, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fr = fcmp ogt float %i.fp, %i.fm
  br i1 %i.fr, label %bb.w, label %ma_calculate_angular_gain.exit297

bb.w:                                             ; preds = %bb.v
  %i.fs = fsub float %i.fp, %i.fm
  %i.ft = fsub float %i.fh, %i.fm
  %i.fu = fdiv float %i.fs, %i.ft                 ; 2 uses
  %i.fv = fsub float 1.000000e+00, %i.fu
  %i.fw = call float @llvm.fmuladd.f32(float %i.fc, float %i.fv, float %i.fu)
  br label %ma_calculate_angular_gain.exit297

ma_calculate_angular_gain.exit297:                ; preds = %bb.u, %bb.v, %bb.w
  %.0.i292 = phi float [ %i.fc, %bb.v ], [ 1.000000e+00, %bb.u ], [ %i.fw, %bb.w ]
  %i.fx = fmul float %i.es, %.0.i292
  br label %ma_spatializer_get_max_gain.exit

ma_spatializer_get_max_gain.exit:                 ; preds = %ma_attenuation_inverse.exit, %ma_calculate_angular_gain.exit, %ma_calculate_angular_gain.exit297
  %.0238375 = phi float [ %sqrt.i, %ma_calculate_angular_gain.exit ], [ %sqrt.i, %ma_calculate_angular_gain.exit297 ], [ 0.000000e+00, %ma_attenuation_inverse.exit ]
  %.2 = phi float [ %i.es, %ma_calculate_angular_gain.exit ], [ %i.fx, %ma_calculate_angular_gain.exit297 ], [ %.0239, %ma_attenuation_inverse.exit ] ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.fz = load atomic volatile i32, ptr %i.fy seq_cst, align 4
  %i.ga = bitcast i32 %i.fz to float
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.gc = load atomic volatile i32, ptr %i.gb seq_cst, align 8
  %i.gd = bitcast i32 %i.gc to float
  %i.ge = fcmp olt float %.2, %i.gd
  br i1 %i.ge, label %bb.x, label %ma_spatializer_get_max_gain.exit301

ma_spatializer_get_max_gain.exit301:              ; preds = %ma_spatializer_get_max_gain.exit
  %i.gf = load atomic volatile i32, ptr %i.gb seq_cst, align 8
  %i.gg = bitcast i32 %i.gf to float
  br label %bb.x

bb.x:                                             ; preds = %ma_spatializer_get_max_gain.exit, %ma_spatializer_get_max_gain.exit301
  %i.gh = phi float [ %i.gg, %ma_spatializer_get_max_gain.exit301 ], [ %.2, %ma_spatializer_get_max_gain.exit ]
  %i.gi = fcmp olt float %i.gh, %i.ga
  br i1 %i.gi, label %ma_spatializer_get_min_gain.exit303, label %ma_spatializer_get_max_gain.exit305

ma_spatializer_get_min_gain.exit303:              ; preds = %bb.x
  %i.gj = load atomic volatile i32, ptr %i.fy seq_cst, align 4
  %i.gk = bitcast i32 %i.gj to float
  br label %bb.y

ma_spatializer_get_max_gain.exit305:              ; preds = %bb.x
  %i.gl = load atomic volatile i32, ptr %i.gb seq_cst, align 8
  %i.gm = bitcast i32 %i.gl to float
  %i.gn = fcmp olt float %.2, %i.gm
  br i1 %i.gn, label %bb.y, label %ma_spatializer_get_max_gain.exit307

end_hunk_3
begin_hunk_4_@ma_spatializer_process_pcm_frames:bb.a
  %bound1450 = icmp ult ptr %i.ir, %i.je
  %found.conflict451 = and i1 %bound0449, %bound1450
  %conflict.rdx = or i1 %found.conflict, %found.conflict451
  %bound0452 = icmp ult ptr %i.jc, %i.jg
  %bound1453 = icmp ult ptr %i.ir, %i.jf
  %found.conflict454 = and i1 %bound0452, %bound1453
  %conflict.rdx455 = or i1 %conflict.rdx, %found.conflict454
  br i1 %conflict.rdx455, label %scalar.ph447.preheader, label %vector.ph456

vector.ph456:                                     ; preds = %vector.memcheck
  %n.vec457 = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  %broadcast.splatinsert458 = insertelement <4 x float> poison, float %i.iy, i64 0
  %broadcast.splat459 = shufflevector <4 x float> %broadcast.splatinsert458, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body460

vector.body460:                                   ; preds = %vector.body460, %vector.ph456
  %index461 = phi i64 [ 0, %vector.ph456 ], [ %index.next464, %vector.body460 ] ; 4 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %index461
  %wide.load = load <4 x float>, ptr %i.jh, align 4, !tbaa !349, !alias.scope !1936
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %index461 ; 2 uses
  %wide.load462.a = load <4 x float>, ptr %i.ji, align 4, !tbaa !349, !alias.scope !1937, !noalias !1938 ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %index461 ; 2 uses
  %wide.load463 = load <4 x float>, ptr %i.jj, align 4, !tbaa !349, !alias.scope !1939, !noalias !1936
  %i.jk = fsub <4 x float> %wide.load463, %wide.load462.a
  %i.jl = fmul <4 x float> %broadcast.splat459, %i.jk
  %i.jm = fadd <4 x float> %wide.load462.a, %i.jl
  store <4 x float> %i.jm, ptr %i.ji, align 4, !tbaa !349, !alias.scope !1937, !noalias !1938
  store <4 x float> %wide.load, ptr %i.jj, align 4, !tbaa !349, !alias.scope !1939, !noalias !1936
  %index.next464 = add nuw i64 %index461, 4       ; 2 uses
  %i.jn = icmp eq i64 %index.next464, %n.vec457
  br i1 %i.jn, label %middle.block465, label %vector.body460, !llvm.loop !1934

middle.block465:                                  ; preds = %vector.body460
  %cmp.n466 = icmp eq i64 %n.vec457, %wide.trip.count.i
  br i1 %cmp.n466, label %._crit_edge.i, label %scalar.ph447.preheader

scalar.ph447.preheader:                           ; preds = %vector.memcheck, %.lr.ph.i326, %middle.block465
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i326 ], [ %n.vec457, %middle.block465 ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph447.prol.loopexit, label %scalar.ph447.prol

scalar.ph447.prol:                                ; preds = %scalar.ph447.preheader
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %indvars.iv.i.ph
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !349
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.i.ph ; 2 uses
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !349 ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv.i.ph ; 2 uses
  %i.jt = load float, ptr %i.js, align 4, !tbaa !349
  %i.ju = fsub float %i.jt, %i.jr
  %i.jv = fmul float %i.iy, %i.ju
  %i.jw = fadd float %i.jr, %i.jv
  store float %i.jw, ptr %i.jq, align 4, !tbaa !349
  store float %i.jp, ptr %i.js, align 4, !tbaa !349
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph447.prol.loopexit

scalar.ph447.prol.loopexit:                       ; preds = %scalar.ph447.prol, %scalar.ph447.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph447.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph447.prol ]
  %i.jx = add nsw i64 %wide.trip.count.i, -1
  %i.jy = icmp eq i64 %indvars.iv.i.ph, %i.jx
  br i1 %i.jy, label %._crit_edge.i, label %scalar.ph447

scalar.ph447:                                     ; preds = %scalar.ph447.prol.loopexit, %scalar.ph447
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph447 ], [ %indvars.iv.i.unr, %scalar.ph447.prol.loopexit ] ; 5 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %indvars.iv.i
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !349
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.i ; 2 uses
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !349 ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv.i ; 2 uses
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !349
  %i.kf = fsub float %i.ke, %i.kc
  %i.kg = fmul float %i.iy, %i.kf
  %i.kh = fadd float %i.kc, %i.kg
  store float %i.kh, ptr %i.kb, align 4, !tbaa !349
  store float %i.ka, ptr %i.kd, align 4, !tbaa !349
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %indvars.iv.next.i
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !349
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.next.i ; 2 uses
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !349 ; 2 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv.next.i ; 2 uses
  %i.kn = load float, ptr %i.km, align 4, !tbaa !349
  %i.ko = fsub float %i.kn, %i.kl
  %i.kp = fmul float %i.iy, %i.ko
  %i.kq = fadd float %i.kl, %i.kp
  store float %i.kq, ptr %i.kk, align 4, !tbaa !349
  store float %i.kj, ptr %i.km, align 4, !tbaa !349
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph447, !llvm.loop !1935

._crit_edge.i:                                    ; preds = %scalar.ph447.prol.loopexit, %scalar.ph447, %middle.block465, %.preheader.i324
  %i.kr = icmp eq i32 %.pre.i, -1
  br i1 %i.kr, label %bb.ah, label %ma_gainer_reset_smoothing_time.exit.i

bb.ah:                                            ; preds = %._crit_edge.i
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !460
  br label %ma_gainer_reset_smoothing_time.exit.i

ma_gainer_reset_smoothing_time.exit.i:            ; preds = %bb.ah, %._crit_edge.i
  %storemerge.i.i = phi i32 [ %i.kt, %bb.ah ], [ 0, %._crit_edge.i ]
  store i32 %storemerge.i.i, ptr %.phi.trans.insert.i, align 8, !tbaa !458
  br label %ma_gainer_set_gains.exit

ma_gainer_set_gains.exit:                         ; preds = %.loopexit387, %ma_gainer_reset_smoothing_time.exit.i
  %i.ku = call i32 @ma_gainer_process_pcm_frames(ptr noundef nonnull %i.ip, ptr noundef %2, ptr noundef %2, i64 noundef %4) ; 0 uses
  %i.kv = fcmp ogt float %i.as, 0.000000e+00
  br i1 %i.kv, label %bb.ai, label %ma_doppler_pitch.exit

bb.ai:                                            ; preds = %ma_gainer_set_gains.exit
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 5 uses
  %i.ky = atomicrmw volatile xchg ptr %i.kx, i32 1 acquire, align 4
  %i.kz = icmp eq i32 %i.ky, 0
  br i1 %i.kz, label %.loopexit386, label %.preheader.i.i.i327

.loopexit.i.i.i328:                               ; preds = %.lr.ph.i.i.i336, %.preheader.i.i.i327
  %i.la = atomicrmw volatile xchg ptr %i.kx, i32 1 acquire, align 4
  %i.lb = icmp eq i32 %i.la, 0
  br i1 %i.lb, label %.loopexit386, label %.preheader.i.i.i327

.preheader.i.i.i327:                              ; preds = %bb.ai, %.loopexit.i.i.i328
  %i.lc = load atomic volatile i32, ptr %i.kx monotonic, align 4
  %i.ld = icmp eq i32 %i.lc, 1
  br i1 %i.ld, label %.lr.ph.i.i.i336, label %.loopexit.i.i.i328

.lr.ph.i.i.i336:                                  ; preds = %.preheader.i.i.i327, %.lr.ph.i.i.i336
  call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.le = load atomic volatile i32, ptr %i.kx monotonic, align 4
  %i.lf = icmp eq i32 %i.le, 1
  br i1 %i.lf, label %.lr.ph.i.i.i336, label %.loopexit.i.i.i328, !llvm.loop !1

.loopexit386:                                     ; preds = %.loopexit.i.i.i328, %bb.ai
  %.sroa.03.0.copyload.i.i330 = load <2 x float>, ptr %i.kw, align 8, !tbaa !349 ; 2 uses
  %.sroa.24.0..sroa_idx.i.i331 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.24.0.copyload.i.i332 = load float, ptr %.sroa.24.0..sroa_idx.i.i331, align 8, !tbaa !349
  store atomic volatile i32 0, ptr %i.kx release, align 4
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 5 uses
  %i.li = atomicrmw volatile xchg ptr %i.lh, i32 1 acquire, align 4
  %i.lj = icmp eq i32 %i.li, 0
  br i1 %i.lj, label %.loopexit, label %.preheader.i.i.i337

.loopexit.i.i.i338:                               ; preds = %.lr.ph.i.i.i346, %.preheader.i.i.i337
  %i.lk = atomicrmw volatile xchg ptr %i.lh, i32 1 acquire, align 4
  %i.ll = icmp eq i32 %i.lk, 0
  br i1 %i.ll, label %.loopexit, label %.preheader.i.i.i337

.preheader.i.i.i337:                              ; preds = %.loopexit386, %.loopexit.i.i.i338
  %i.lm = load atomic volatile i32, ptr %i.lh monotonic, align 4
  %i.ln = icmp eq i32 %i.lm, 1
  br i1 %i.ln, label %.lr.ph.i.i.i346, label %.loopexit.i.i.i338

.lr.ph.i.i.i346:                                  ; preds = %.preheader.i.i.i337, %.lr.ph.i.i.i346
  call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.lo = load atomic volatile i32, ptr %i.lh monotonic, align 4
  %i.lp = icmp eq i32 %i.lo, 1
  br i1 %i.lp, label %.lr.ph.i.i.i346, label %.loopexit.i.i.i338, !llvm.loop !1

.loopexit:                                        ; preds = %.loopexit.i.i.i338, %.loopexit386
  %.sroa.03.0.copyload.i.i340 = load <2 x float>, ptr %i.lg, align 8, !tbaa !349 ; 2 uses
  %.sroa.24.0..sroa_idx.i.i341 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.24.0.copyload.i.i342 = load float, ptr %.sroa.24.0..sroa_idx.i.i341, align 8, !tbaa !349
  store atomic volatile i32 0, ptr %i.lh release, align 4
  %foldExtExtBinop469 = fsub <2 x float> %.sroa.03.0.copyload.i.i330, %.sroa.03.0.copyload.i.i340 ; 2 uses
  %i.lq = extractelement <2 x float> %foldExtExtBinop469, i64 0 ; 2 uses
  %foldExtExtBinop471 = fsub <2 x float> %.sroa.03.0.copyload.i.i330, %.sroa.03.0.copyload.i.i340 ; 2 uses
  %i.lr = extractelement <2 x float> %foldExtExtBinop471, i64 1 ; 2 uses
  %i.ls = fsub float %.sroa.24.0.copyload.i.i332, %.sroa.24.0.copyload.i.i342 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 5 uses
  %i.lv = atomicrmw volatile xchg ptr %i.lu, i32 1 acquire, align 4
  %i.lw = icmp eq i32 %i.lv, 0
  br i1 %i.lw, label %ma_spatializer_get_velocity.exit, label %.preheader.i.i.i354

.loopexit.i.i.i355:                               ; preds = %.lr.ph.i.i.i363, %.preheader.i.i.i354
  %i.lx = atomicrmw volatile xchg ptr %i.lu, i32 1 acquire, align 4
  %i.ly = icmp eq i32 %i.lx, 0
  br i1 %i.ly, label %ma_spatializer_get_velocity.exit, label %.preheader.i.i.i354

.preheader.i.i.i354:                              ; preds = %.loopexit, %.loopexit.i.i.i355
  %i.lz = load atomic volatile i32, ptr %i.lu monotonic, align 4
  %i.ma = icmp eq i32 %i.lz, 1
  br i1 %i.ma, label %.lr.ph.i.i.i363, label %.loopexit.i.i.i355

.lr.ph.i.i.i363:                                  ; preds = %.preheader.i.i.i354, %.lr.ph.i.i.i363
  call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.mb = load atomic volatile i32, ptr %i.lu monotonic, align 4
  %i.mc = icmp eq i32 %i.mb, 1
  br i1 %i.mc, label %.lr.ph.i.i.i363, label %.loopexit.i.i.i355, !llvm.loop !1

ma_spatializer_get_velocity.exit:                 ; preds = %.loopexit.i.i.i355, %.loopexit
  %.sroa.03.0.copyload.i.i357 = load <2 x float>, ptr %i.lt, align 8, !tbaa !349 ; 2 uses
  %.sroa.24.0..sroa_idx.i.i358 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.24.0.copyload.i.i359 = load float, ptr %.sroa.24.0..sroa_idx.i.i358, align 8, !tbaa !349
  store atomic volatile i32 0, ptr %i.lu release, align 4
  %i.md = fmul float %i.lr, %i.lr
  %i.me = call float @llvm.fmuladd.f32(float %i.lq, float %i.lq, float %i.md)
  %i.mf = call float @llvm.fmuladd.f32(float %i.ls, float %i.ls, float %i.me)
  %sqrtf.i.i = call float @sqrtf(float noundef %i.mf) #55 ; 2 uses
  %i.mg = fcmp oeq float %sqrtf.i.i, 0.000000e+00
  br i1 %i.mg, label %ma_doppler_pitch.exit, label %bb.aj

bb.aj:                                            ; preds = %ma_spatializer_get_velocity.exit
  %i.mh = fdiv float %i.be, %i.as
  %i.mi = fneg float %i.as
  %i.mj = shufflevector <2 x float> %.sroa.03.0.copyload.i.i, <2 x float> %.sroa.03.0.copyload.i.i357, <2 x i32> <i32 1, i32 3>
  %i.mk = shufflevector <2 x float> %foldExtExtBinop471, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ml = fmul <2 x float> %i.mj, %i.mk
  %i.mm = shufflevector <2 x float> %foldExtExtBinop469, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mn = shufflevector <2 x float> %.sroa.03.0.copyload.i.i, <2 x float> %.sroa.03.0.copyload.i.i357, <2 x i32> <i32 0, i32 2>
  %i.mo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mm, <2 x float> %i.mn, <2 x float> %i.ml)
  %i.mp = insertelement <2 x float> poison, float %i.ls, i64 0
  %i.mq = shufflevector <2 x float> %i.mp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mr = insertelement <2 x float> poison, float %.sroa.24.0.copyload.i.i, i64 0
  %i.ms = insertelement <2 x float> %i.mr, float %.sroa.24.0.copyload.i.i359, i64 1
  %i.mt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mq, <2 x float> %i.ms, <2 x float> %i.mo)
  %i.mu = insertelement <2 x float> poison, float %sqrtf.i.i, i64 0
  %i.mv = shufflevector <2 x float> %i.mu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mw = fdiv <2 x float> %i.mt, %i.mv           ; 2 uses
  %i.mx = insertelement <2 x float> poison, float %i.mh, i64 0
  %i.my = shufflevector <2 x float> %i.mx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mz = fcmp olt <2 x float> %i.mw, %i.my
  %i.na = select <2 x i1> %i.mz, <2 x float> %i.mw, <2 x float> %i.my
  %i.nb = insertelement <2 x float> poison, float %i.mi, i64 0
  %i.nc = shufflevector <2 x float> %i.nb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nd = insertelement <2 x float> poison, float %i.be, i64 0
  %i.ne = shufflevector <2 x float> %i.nd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nc, <2 x float> %i.na, <2 x float> %i.ne) ; 2 uses
  %i.ng = extractelement <2 x float> %i.nf, i64 0
  %i.nh = extractelement <2 x float> %i.nf, i64 1
  %i.ni = fdiv float %i.ng, %i.nh
  br label %ma_doppler_pitch.exit

ma_doppler_pitch.exit:                            ; preds = %ma_gainer_set_gains.exit, %bb.aj, %ma_spatializer_get_velocity.exit
  %.sink = phi float [ 1.000000e+00, %ma_spatializer_get_velocity.exit ], [ %i.ni, %bb.aj ], [ 1.000000e+00, %ma_gainer_set_gains.exit ]
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 120
  store float %.sink, ptr %i.nj, align 8, !tbaa !500
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  br label %bb.ak

bb.ak:                                            ; preds = %ma_copy_pcm_frames.exit, %ma_doppler_pitch.exit, %bb.a
  %.0 = phi i32 [ -2, %bb.a ], [ 0, %ma_doppler_pitch.exit ], [ 0, %ma_copy_pcm_frames.exit ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @ma_channel_map_apply_f32(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2, ptr nofree noundef readonly captures(address) %3, ptr nofree noundef readonly captures(address) %4, i32 noundef %5, i64 noundef %6, i32 noundef range(i32 0, 2) %7, i32 noundef %8) unnamed_addr #39 {
bb.a:
  %i.a = alloca [254 x i8], align 16              ; 6 uses
  %i.b = alloca [254 x i8], align 16              ; 7 uses
  %i.c = alloca [32 x [32 x float]], align 16     ; 26 uses
  %i.d = tail call fastcc i32 @ma_channel_map_get_conversion_path(ptr noundef %4, i32 noundef %5, ptr noundef %1, i32 noundef %2, i32 noundef %7)
  switch i32 %i.d, label %bb.al [
    i32 1, label %bb.b
    i32 2, label %bb.d
    i32 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %0, %3
  br i1 %i.e, label %.critedge334, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = shl i32 %2, 2
  %i.g = zext i32 %i.f to i64
  %i.h = mul i64 %6, %i.g                         ; 2 uses
  %.not.i7.i = icmp eq i64 %i.h, 0
  br i1 %.not.i7.i, label %.critedge334, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.0.i10.i = phi ptr [ %i.j, %.lr.ph.i ], [ %0, %bb.c ] ; 2 uses
  %.011.i9.i = phi i64 [ %i.i, %.lr.ph.i ], [ %i.h, %bb.c ] ; 2 uses
  %.012.i8.i = phi ptr [ %i.k, %.lr.ph.i ], [ %3, %bb.c ] ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.011.i9.i, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i10.i, ptr noundef nonnull align 1 dereferenceable(1) %.012.i8.i, i64 %spec.store.select.i.i, i1 false)
  %i.i = sub nuw i64 %.011.i9.i, %spec.store.select.i.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i10.i, i64 %spec.store.select.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.012.i8.i, i64 %spec.store.select.i.i
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %.critedge334, label %.lr.ph.i, !llvm.loop !12

bb.d:                                             ; preds = %bb.a
  %i.l = icmp eq ptr %0, null
  %i.m = icmp eq ptr %3, null
  %or.cond.i = or i1 %i.l, %i.m
  %i.n = icmp eq i32 %5, 0
  %or.cond3.i = or i1 %or.cond.i, %i.n
  br i1 %or.cond3.i, label %.critedge334, label %.preheader66.i

.preheader66.i:                                   ; preds = %bb.d
  %i.o = icmp eq ptr %4, null                     ; 2 uses
  br i1 %i.o, label %ma_channel_map_get_channel.exit.us.i, label %ma_channel_map_get_channel.exit.preheader.i

ma_channel_map_get_channel.exit.preheader.i:      ; preds = %.preheader66.i
  %wide.trip.count.i = zext i32 %5 to i64         ; 3 uses
  %min.iters.check844 = icmp ult i32 %5, 8
  br i1 %min.iters.check844, label %ma_channel_map_get_channel.exit.i.preheader, label %vector.ph845

vector.ph845:                                     ; preds = %ma_channel_map_get_channel.exit.preheader.i
  %n.vec846 = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  br label %vector.body847

vector.body847:                                   ; preds = %vector.body847, %vector.ph845
  %index848 = phi i64 [ 0, %vector.ph845 ], [ %index.next853, %vector.body847 ] ; 2 uses
  %vec.phi849 = phi <4 x i32> [ zeroinitializer, %vector.ph845 ], [ %i.v, %vector.body847 ]
  %vec.phi850 = phi <4 x i32> [ zeroinitializer, %vector.ph845 ], [ %i.w, %vector.body847 ]
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 %index848 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %wide.load851 = load <4 x i8>, ptr %i.p, align 1, !tbaa !119
  %wide.load852 = load <4 x i8>, ptr %i.q, align 1, !tbaa !119
  %i.r = icmp ne <4 x i8> %wide.load851, zeroinitializer
  %i.s = icmp ne <4 x i8> %wide.load852, zeroinitializer
  %i.t = zext <4 x i1> %i.r to <4 x i32>
  %i.u = zext <4 x i1> %i.s to <4 x i32>
  %i.v = add <4 x i32> %vec.phi849, %i.t          ; 2 uses
  %i.w = add <4 x i32> %vec.phi850, %i.u          ; 2 uses
  %index.next853 = add nuw i64 %index848, 8       ; 2 uses
  %i.x = icmp eq i64 %index.next853, %n.vec846
  br i1 %i.x, label %middle.block854, label %vector.body847, !llvm.loop !1940

middle.block854:                                  ; preds = %vector.body847
  %bin.rdx855 = add <4 x i32> %i.w, %i.v
  %i.y = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx855) ; 2 uses
  %cmp.n856 = icmp eq i64 %n.vec846, %wide.trip.count.i
  br i1 %cmp.n856, label %.split.us.i, label %ma_channel_map_get_channel.exit.i.preheader

ma_channel_map_get_channel.exit.i.preheader:      ; preds = %ma_channel_map_get_channel.exit.preheader.i, %middle.block854
  %indvars.iv.i.ph = phi i64 [ 0, %ma_channel_map_get_channel.exit.preheader.i ], [ %n.vec846, %middle.block854 ]
  %.03568.i.ph = phi i32 [ 0, %ma_channel_map_get_channel.exit.preheader.i ], [ %i.y, %middle.block854 ]
  br label %ma_channel_map_get_channel.exit.i

ma_channel_map_get_channel.exit.us.i:             ; preds = %.preheader66.i, %ma_channel_map_get_channel.exit.us.i
  %.03568.us.i = phi i32 [ %spec.select.us.i, %ma_channel_map_get_channel.exit.us.i ], [ 0, %.preheader66.i ]
  %.03767.us.i = phi i32 [ %i.ab, %ma_channel_map_get_channel.exit.us.i ], [ 0, %.preheader66.i ] ; 2 uses
  %i.z = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %5, i32 noundef %.03767.us.i)
  %.not47.us.i = icmp ne i8 %i.z, 0
  %i.aa = zext i1 %.not47.us.i to i32
  %spec.select.us.i = add i32 %.03568.us.i, %i.aa ; 2 uses
  %i.ab = add nuw i32 %.03767.us.i, 1             ; 2 uses
  %exitcond148.not.i = icmp eq i32 %i.ab, %5
  br i1 %exitcond148.not.i, label %.split.us.i, label %ma_channel_map_get_channel.exit.us.i, !llvm.loop !1941

ma_channel_map_get_channel.exit.i:                ; preds = %ma_channel_map_get_channel.exit.i.preheader, %ma_channel_map_get_channel.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %ma_channel_map_get_channel.exit.i ], [ %indvars.iv.i.ph, %ma_channel_map_get_channel.exit.i.preheader ] ; 2 uses
  %.03568.i = phi i32 [ %spec.select.i, %ma_channel_map_get_channel.exit.i ], [ %.03568.i.ph, %ma_channel_map_get_channel.exit.i.preheader ]
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.i
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !119
  %.not47.i = icmp ne i8 %i.ad, 0
  %i.ae = zext i1 %.not47.i to i32
  %spec.select.i = add i32 %.03568.i, %i.ae       ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.split.us.i, label %ma_channel_map_get_channel.exit.i, !llvm.loop !1942

.split.us.i:                                      ; preds = %ma_channel_map_get_channel.exit.i, %ma_channel_map_get_channel.exit.us.i, %middle.block854
  %.us-phi.i = phi i32 [ %spec.select.us.i, %ma_channel_map_get_channel.exit.us.i ], [ %i.y, %middle.block854 ], [ %spec.select.i, %ma_channel_map_get_channel.exit.i ] ; 2 uses
  %.not.i = icmp eq i32 %.us-phi.i, 0
  br i1 %.not.i, label %bb.e, label %.preheader64.i

.preheader64.i:                                   ; preds = %.split.us.i
  %.not131.i = icmp eq i64 %6, 0
  br i1 %.not131.i, label %.critedge334, label %.preheader.lr.ph.split.us.i

.preheader.lr.ph.split.us.i:                      ; preds = %.preheader64.i
  %i.af = uitofp i32 %.us-phi.i to float          ; 2 uses
  %i.ag = zext i32 %5 to i64                      ; 9 uses
  br i1 %i.o, label %.preheader.us.us.i.preheader, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.preheader.lr.ph.split.us.i
  %xtraiter1066 = and i64 %i.ag, 1
  %i.ah = icmp eq i32 %5, 1
  %unroll_iter1071 = and i64 %i.ag, 4294967294
  %lcmp.mod1068.not = icmp eq i64 %xtraiter1066, 0
  %lcmp.mod1070 = trunc i32 %5 to i1
  br label %.preheader.us.i

.preheader.us.us.i.preheader:                     ; preds = %.preheader.lr.ph.split.us.i
  %i.ai = add nsw i64 %i.ag, -1                   ; 2 uses
  %xtraiter1073 = and i64 %i.ag, 7                ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 7
  %unroll_iter1078 = and i64 %i.ag, 4294967288
  %lcmp.mod1075.not = icmp eq i64 %xtraiter1073, 0
  %lcmp.mod1077 = icmp ne i64 %xtraiter1073, 0
  %xtraiter1080 = and i64 %i.ag, 3                ; 3 uses
  %i.ak = icmp ult i64 %i.ai, 3
  %unroll_iter1085 = and i64 %i.ag, 4294967292
  %lcmp.mod1082.not = icmp eq i64 %xtraiter1080, 0
  %lcmp.mod1084 = icmp ne i64 %xtraiter1080, 0
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %.preheader.us.us.i.preheader, %._crit_edge.split.us.us.us.i
  %.03977.us.us.i = phi i64 [ %i.ew, %._crit_edge.split.us.us.us.i ], [ 0, %.preheader.us.us.i.preheader ]
  %.04176.us.us.i = phi ptr [ %i.eu, %._crit_edge.split.us.us.us.i ], [ %0, %.preheader.us.us.i.preheader ] ; 2 uses
  %.04274.us.us.i = phi ptr [ %i.ev, %._crit_edge.split.us.us.us.i ], [ %3, %.preheader.us.us.i.preheader ] ; 35 uses
  switch i32 %5, label %.lr.ph.split.us.us.us.split.i.preheader [
    i32 7, label %ma_channel_map_get_channel.exit50.thread.us.us.us.us.i.preheader
    i32 1, label %ma_channel_map_get_channel.exit50.thread.us.us.us.us92.i.preheader
    i32 2, label %._crit_edge.split.us.us.us.loopexit136.i
    i32 3, label %ma_channel_map_get_channel.exit50.thread.us.us.us.us92.i.preheader
    i32 4, label %ma_channel_map_get_channel.exit50.thread.us.us.us.us108.i.preheader
    i32 5, label %ma_channel_map_get_channel.exit50.thread.us.us.us.us116.i.preheader
    i32 6, label %ma_channel_map_get_channel.exit50.thread.us.us.us.us124.i.preheader
  ]

ma_channel_map_get_channel.exit50.thread.us.us.us.us92.i.preheader: ; preds = %.preheader.us.us.i, %.preheader.us.us.i
  br i1 %i.aj, label %ma_channel_map_get_channel.exit50.thread.us.us.us.us92.i.epil.preheader, label %ma_channel_map_get_channel.exit50.thread.us.us.us.us92.i

.lr.ph.split.us.us.us.split.i.preheader:          ; preds = %.preheader.us.us.i
  br i1 %i.ak, label %.lr.ph.split.us.us.us.split.i.epil.preheader, label %.lr.ph.split.us.us.us.split.i

ma_channel_map_get_channel.exit50.thread.us.us.us.us124.i.preheader: ; preds = %.preheader.us.us.i
  %i.al = load float, ptr %.04274.us.us.i, align 4, !tbaa !349
  %i.am = fadd float %i.al, 0.000000e+00
  %i.an = getelementptr inbounds nuw i8, ptr %.04274.us.us.i, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !349
  %i.ap = fadd float %i.am, %i.ao
end_hunk_4
begin_hunk_5_@ma_dr_mp3_L3_imdct36:bb.a
bb.b:                                             ; preds = %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ma_dr_mp3d_synth_pair(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 2)) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3584
  %i.b = load float, ptr %i.a, align 4, !tbaa !349
  %i.c = load float, ptr %2, align 4, !tbaa !349
  %i.d = fsub float %i.b, %i.c
  %i.e = fmul float %i.d, 2.900000e+01
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.g = load float, ptr %i.f, align 4, !tbaa !349
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 3328
  %i.i = load float, ptr %i.h, align 4, !tbaa !349
  %i.j = fadd float %i.g, %i.i
  %i.k = tail call float @llvm.fmuladd.f32(float %i.j, float 2.130000e+02, float %i.e)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 3072
  %i.m = load float, ptr %i.l, align 4, !tbaa !349
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.o = load float, ptr %i.n, align 4, !tbaa !349
  %i.p = fsub float %i.m, %i.o
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float 4.590000e+02, float %i.k)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 768
  %i.s = load float, ptr %i.r, align 4, !tbaa !349
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 2816
  %i.u = load float, ptr %i.t, align 4, !tbaa !349
  %i.v = fadd float %i.s, %i.u
  %i.w = tail call float @llvm.fmuladd.f32(float %i.v, float 2.037000e+03, float %i.q)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 2560
  %i.y = load float, ptr %i.x, align 4, !tbaa !349
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.aa = load float, ptr %i.z, align 4, !tbaa !349
  %i.ab = fsub float %i.y, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float 5.153000e+03, float %i.w)
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 1280
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !349
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 2304
  %i.ag = load float, ptr %i.af, align 4, !tbaa !349
  %i.ah = fadd float %i.ae, %i.ag
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float 6.574000e+03, float %i.ac)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 2048
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !349
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 1536
  %i.am = load float, ptr %i.al, align 4, !tbaa !349
  %i.an = fsub float %i.ak, %i.am
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float 3.748900e+04, float %i.ai)
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 1792
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !349
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float 7.503800e+04, float %i.ao) ; 3 uses
  %i.as = fcmp ult float %i.ar, 3.276650e+04
  br i1 %i.as, label %bb.b, label %ma_dr_mp3d_scale_pcm.exit

bb.b:                                             ; preds = %bb.a
  %i.at = fcmp ugt float %i.ar, -3.276750e+04
  br i1 %i.at, label %bb.c, label %ma_dr_mp3d_scale_pcm.exit

bb.c:                                             ; preds = %bb.b
  %i.au = fadd float %i.ar, 5.000000e-01
  %i.av = fptosi float %i.au to i16               ; 2 uses
  %.lobit.neg.i = ashr i16 %i.av, 15
  %i.aw = add i16 %.lobit.neg.i, %i.av
  br label %ma_dr_mp3d_scale_pcm.exit

ma_dr_mp3d_scale_pcm.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i16 [ %i.aw, %bb.c ], [ 32767, %bb.a ], [ -32768, %bb.b ]
  store i16 %.0.i, ptr %0, align 2, !tbaa !122
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 3592
  %i.az = load float, ptr %i.ay, align 4, !tbaa !349
  %i.ba = fmul float %i.az, 1.040000e+02
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 3080
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !349
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bc, float 1.567000e+03, float %i.ba)
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 2568
  %i.bf = load float, ptr %i.be, align 4, !tbaa !349
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float 9.727000e+03, float %i.bd)
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 2056
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !349
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float 6.401900e+04, float %i.bg)
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 1544
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !349
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bl, float -9.975000e+03, float %i.bj)
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 1032
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !349
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bo, float -4.500000e+01, float %i.bm)
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 520
  %i.br = load float, ptr %i.bq, align 4, !tbaa !349
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.br, float 1.460000e+02, float %i.bp)
  %i.bt = load float, ptr %i.ax, align 4, !tbaa !349
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bt, float -5.000000e+00, float %i.bs) ; 3 uses
  %i.bv = fcmp ult float %i.bu, 3.276650e+04
  br i1 %i.bv, label %bb.d, label %ma_dr_mp3d_scale_pcm.exit44

bb.d:                                             ; preds = %ma_dr_mp3d_scale_pcm.exit
  %i.bw = fcmp ugt float %i.bu, -3.276750e+04
  br i1 %i.bw, label %bb.e, label %ma_dr_mp3d_scale_pcm.exit44

bb.e:                                             ; preds = %bb.d
  %i.bx = fadd float %i.bu, 5.000000e-01
  %i.by = fptosi float %i.bx to i16               ; 2 uses
  %.lobit.neg.i43 = ashr i16 %i.by, 15
  %i.bz = add i16 %.lobit.neg.i43, %i.by
  br label %ma_dr_mp3d_scale_pcm.exit44

ma_dr_mp3d_scale_pcm.exit44:                      ; preds = %ma_dr_mp3d_scale_pcm.exit, %bb.d, %bb.e
  %.0.i42 = phi i16 [ %i.bz, %bb.e ], [ 32767, %ma_dr_mp3d_scale_pcm.exit ], [ -32768, %bb.d ]
  %i.ca = shl nsw i32 %1, 4
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [2 x i8], ptr %0, i64 %i.cb
  store i16 %.0.i42, ptr %i.cc, align 2, !tbaa !122
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #57

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float>) #57

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #57

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #57

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define internal noalias noundef ptr @ma_dr_mp3__realloc_default(ptr noundef captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2) #42 {
bb.a:
  %i.a = tail call ptr @realloc(ptr noundef %0, i64 noundef %1) #69
  ret ptr %i.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #63

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #33

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #64

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #63

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr captures(none)) local_unnamed_addr #65

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #63

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #63

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #33

declare float @sqrtf(float) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smin.v8i16(<8 x i16>, <8 x i16>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smax.v4i16(<4 x i16>, <4 x i16>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smin.v4i16(<4 x i16>, <4 x i16>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fmuladd.v16f32(<16 x float>, <16 x float>, <16 x float>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.bswap.v2i64(<2 x i64>) #33

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #34 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #46 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #47 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #48 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #49 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #50 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #51 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #52 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #53 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #54 = { nounwind memory(argmem: write) }
attributes #55 = { nounwind }
attributes #56 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #57 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #58 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #59 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #60 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #61 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #62 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #63 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #64 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #65 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #66 = { nounwind willreturn memory(read) }
attributes #67 = { nounwind allocsize(0) }
attributes #68 = { nounwind willreturn memory(none) }
attributes #69 = { nounwind allocsize(1) }

!llvm.module.flags = !{!110, !111}
!llvm.ident = !{!112}
!llvm.errno.tbaa = !{!117}

!0 = distinct !{!0, !120}
!1 = distinct !{!1, !120}
!2 = distinct !{!2, !120}
!3 = distinct !{!3, !120}
!4 = distinct !{!4, !120}
!5 = distinct !{!5, !120}
!6 = distinct !{null}
!7 = distinct !{!7, !120}
!8 = distinct !{null, null}
!9 = distinct !{!9, !120}
!10 = distinct !{!10, !120}
!11 = distinct !{null, null}
!12 = distinct !{!12, !120}
!13 = distinct !{!13, !120}
!14 = distinct !{!14, !120}
!15 = distinct !{!15, !120}
!16 = distinct !{!16, !120}
!17 = distinct !{!17, !120}
!18 = distinct !{!18, !120}
!19 = distinct !{!19, !120}
!20 = distinct !{!20, !120}
!21 = distinct !{!21, !120}
!22 = distinct !{!22, !120}
!23 = distinct !{!23, !120}
!24 = distinct !{!24, !120}
!25 = distinct !{!25, !120}
!26 = distinct !{!26, !120}
!27 = distinct !{!27, !120}
!28 = distinct !{!28, !120, !424}
!29 = distinct !{!29, !120, !424}
!30 = distinct !{!30, !120}
!31 = distinct !{!31, !120}
!32 = distinct !{!32, !120}
!33 = distinct !{!33, !120}
!34 = distinct !{!34, !120}
!35 = distinct !{!35, !120}
!36 = distinct !{!36, !120}
!37 = distinct !{!37, !120}
!38 = distinct !{!38, !120}
!39 = distinct !{!39, !120}
!40 = distinct !{!40, !120}
!41 = distinct !{!41, !120}
!42 = distinct !{!42, !120}
!43 = distinct !{null, ptr @ma_free}
!44 = distinct !{!44, !120}
!45 = distinct !{!45, !120}
!46 = distinct !{!46, !120}
!47 = distinct !{null}
!48 = distinct !{null, null}
!49 = distinct !{null, null}
!50 = distinct !{ptr @ma_dr_wav_free, null}
!51 = distinct !{!51, !120}
!52 = distinct !{!52, !120}
!53 = distinct !{!53, !120}
!54 = distinct !{!54, !120}
end_hunk_5
