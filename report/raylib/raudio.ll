Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@ma_clip_pcm_frames:bb.a
  %i.dg = tail call i64 @llvm.smin.i64(i64 %i.df, i64 8388607) ; 3 uses
  %i.dh = trunc i64 %i.dg to i8
  %i.di = mul i64 %i.dc, 3
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 %i.di ; 3 uses
  store i8 %i.dh, ptr %i.dj, align 1
  %i.dk = lshr i64 %i.dg, 8
  %i.dl = trunc i64 %i.dk to i8
  %i.dm = getelementptr i8, ptr %i.dj, i64 1
  store i8 %i.dl, ptr %i.dm, align 1
  %i.dn = lshr i64 %i.dg, 16
  %i.do = trunc i64 %i.dn to i8
  %i.dp = getelementptr i8, ptr %i.dj, i64 2
  store i8 %i.do, ptr %i.dp, align 1
  %i.dq = add nuw i64 %.013.i, 2                  ; 2 uses
  %niter106.next.1 = add i64 %niter106, 2         ; 2 uses
  %niter106.ncmp.1 = icmp eq i64 %niter106.next.1, %unroll_iter105
  br i1 %niter106.ncmp.1, label %ma_clip_samples_u8.exit.loopexit95.unr-lcssa, label %.lr.ph.i22

bb.e:                                             ; preds = %bb.a
  %.not.i24 = icmp eq i64 %i.d, 0
  br i1 %.not.i24, label %ma_clip_samples_u8.exit, label %.lr.ph.i25.preheader

.lr.ph.i25.preheader:                             ; preds = %bb.e
  %xtraiter99 = and i64 %i.d, 1
  %i.dr = icmp eq i64 %i.d, 1
  br i1 %i.dr, label %.lr.ph.i25.epil.preheader, label %.lr.ph.i25.preheader.new

.lr.ph.i25.preheader.new:                         ; preds = %.lr.ph.i25.preheader
  %unroll_iter = and i64 %i.d, -2
  br label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.lr.ph.i25, %.lr.ph.i25.preheader.new
  %.06.i26 = phi i64 [ 0, %.lr.ph.i25.preheader.new ], [ %i.ef, %.lr.ph.i25 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i25.preheader.new ], [ %niter.next.1, %.lr.ph.i25 ]
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.06.i26
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = tail call i64 @llvm.smax.i64(i64 %i.dt, i64 -2147483648)
  %i.dv = tail call i64 @llvm.smin.i64(i64 %i.du, i64 2147483647)
  %i.dw = trunc nsw i64 %i.dv to i32
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.06.i26
  store i32 %i.dw, ptr %i.dx, align 4
  %i.dy = or disjoint i64 %.06.i26, 1             ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8
  %i.eb = tail call i64 @llvm.smax.i64(i64 %i.ea, i64 -2147483648)
  %i.ec = tail call i64 @llvm.smin.i64(i64 %i.eb, i64 2147483647)
  %i.ed = trunc nsw i64 %i.ec to i32
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dy
  store i32 %i.ed, ptr %i.ee, align 4
  %i.ef = add nuw i64 %.06.i26, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %ma_clip_samples_u8.exit.loopexit96.unr-lcssa, label %.lr.ph.i25

bb.f:                                             ; preds = %bb.a
  %.not.i28 = icmp eq i64 %i.d, 0
  br i1 %.not.i28, label %ma_clip_samples_u8.exit, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %bb.f
  %min.iters.check = icmp ult i64 %i.d, 8
  %i.eg = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.eg, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i29.preheader97, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i29.preheader
  %n.vec = and i64 %i.d, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %wide.load = load <4 x float>, ptr %i.eh, align 4 ; 3 uses
  %wide.load48 = load <4 x float>, ptr %i.ei, align 4 ; 3 uses
  %i.ej = fcmp olt <4 x float> %wide.load, splat (float -1.000000e+00)
  %i.ek = fcmp olt <4 x float> %wide.load48, splat (float -1.000000e+00)
  %i.el = fcmp ogt <4 x float> %wide.load, splat (float 1.000000e+00)
  %i.em = fcmp ogt <4 x float> %wide.load48, splat (float 1.000000e+00)
  %i.en = select <4 x i1> %i.el, <4 x float> splat (float 1.000000e+00), <4 x float> %wide.load
  %i.eo = select <4 x i1> %i.em, <4 x float> splat (float 1.000000e+00), <4 x float> %wide.load48
  %i.ep = select <4 x i1> %i.ej, <4 x float> splat (float -1.000000e+00), <4 x float> %i.en
  %i.eq = select <4 x i1> %i.ek, <4 x float> splat (float -1.000000e+00), <4 x float> %i.eo
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store <4 x float> %i.ep, ptr %i.er, align 4
  store <4 x float> %i.eq, ptr %i.es, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %middle.block, label %vector.body, !llvm.loop !132

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %ma_clip_samples_u8.exit, label %.lr.ph.i29.preheader97

.lr.ph.i29.preheader97:                           ; preds = %.lr.ph.i29.preheader, %middle.block
  %.06.i30.ph = phi i64 [ 0, %.lr.ph.i29.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.06.i30.ph, 1
  %xtraiter = and i64 %i.d, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i29.prol.loopexit, label %.lr.ph.i29.prol

.lr.ph.i29.prol:                                  ; preds = %.lr.ph.i29.preheader97
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.06.i30.ph
  %i.ev = load float, ptr %i.eu, align 4          ; 3 uses
  %i.ew = fcmp olt float %i.ev, -1.000000e+00
  %i.ex = fcmp ogt float %i.ev, 1.000000e+00
  %..i.i.prol = select i1 %i.ex, float 1.000000e+00, float %i.ev
  %.0.i.i.prol = select i1 %i.ew, float -1.000000e+00, float %..i.i.prol
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.06.i30.ph
  store float %.0.i.i.prol, ptr %i.ey, align 4
  %i.ez = or disjoint i64 %.06.i30.ph, 1
  br label %.lr.ph.i29.prol.loopexit

.lr.ph.i29.prol.loopexit:                         ; preds = %.lr.ph.i29.prol, %.lr.ph.i29.preheader97
  %.06.i30.unr = phi i64 [ %.06.i30.ph, %.lr.ph.i29.preheader97 ], [ %i.ez, %.lr.ph.i29.prol ]
  %i.fa = icmp eq i64 %i.d, %.neg
  br i1 %i.fa, label %ma_clip_samples_u8.exit, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.prol.loopexit, %.lr.ph.i29
  %.06.i30 = phi i64 [ %i.fm, %.lr.ph.i29 ], [ %.06.i30.unr, %.lr.ph.i29.prol.loopexit ] ; 4 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.06.i30
  %i.fc = load float, ptr %i.fb, align 4          ; 3 uses
  %i.fd = fcmp olt float %i.fc, -1.000000e+00
  %i.fe = fcmp ogt float %i.fc, 1.000000e+00
  %..i.i = select i1 %i.fe, float 1.000000e+00, float %i.fc
  %.0.i.i = select i1 %i.fd, float -1.000000e+00, float %..i.i
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.06.i30
  store float %.0.i.i, ptr %i.ff, align 4
  %i.fg = add nuw i64 %.06.i30, 1                 ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fg
  %i.fi = load float, ptr %i.fh, align 4          ; 3 uses
  %i.fj = fcmp olt float %i.fi, -1.000000e+00
  %i.fk = fcmp ogt float %i.fi, 1.000000e+00
  %..i.i.1 = select i1 %i.fk, float 1.000000e+00, float %i.fi
  %.0.i.i.1 = select i1 %i.fj, float -1.000000e+00, float %..i.i.1
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fg
  store float %.0.i.i.1, ptr %i.fl, align 4
  %i.fm = add nuw i64 %.06.i30, 2                 ; 2 uses
  %exitcond.not.i31.1 = icmp eq i64 %i.fm, %i.d
  br i1 %exitcond.not.i31.1, label %ma_clip_samples_u8.exit, label %.lr.ph.i29, !llvm.loop !133

ma_clip_samples_u8.exit.loopexit95.unr-lcssa:     ; preds = %.lr.ph.i22
  %lcmp.mod103.not = icmp eq i64 %xtraiter102, 0
  br i1 %lcmp.mod103.not, label %ma_clip_samples_u8.exit, label %.lr.ph.i22.epil.preheader

.lr.ph.i22.epil.preheader:                        ; preds = %ma_clip_samples_u8.exit.loopexit95.unr-lcssa, %.lr.ph.i22.preheader
  %.013.i.epil.init = phi i64 [ 0, %.lr.ph.i22.preheader ], [ %i.dq, %ma_clip_samples_u8.exit.loopexit95.unr-lcssa ] ; 2 uses
  %lcmp.mod104 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod104)
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.013.i.epil.init
  %i.fo = load i64, ptr %i.fn, align 8
  %i.fp = tail call i64 @llvm.smax.i64(i64 %i.fo, i64 -8388608)
  %i.fq = tail call i64 @llvm.smin.i64(i64 %i.fp, i64 8388607) ; 3 uses
  %i.fr = trunc i64 %i.fq to i8
  %i.fs = mul i64 %.013.i.epil.init, 3
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 %i.fs ; 3 uses
  store i8 %i.fr, ptr %i.ft, align 1
  %i.fu = lshr i64 %i.fq, 8
  %i.fv = trunc i64 %i.fu to i8
  %i.fw = getelementptr i8, ptr %i.ft, i64 1
  store i8 %i.fv, ptr %i.fw, align 1
  %i.fx = lshr i64 %i.fq, 16
  %i.fy = trunc i64 %i.fx to i8
  %i.fz = getelementptr i8, ptr %i.ft, i64 2
  store i8 %i.fy, ptr %i.fz, align 1
  br label %ma_clip_samples_u8.exit

ma_clip_samples_u8.exit.loopexit96.unr-lcssa:     ; preds = %.lr.ph.i25
  %lcmp.mod100.not = icmp eq i64 %xtraiter99, 0
  br i1 %lcmp.mod100.not, label %ma_clip_samples_u8.exit, label %.lr.ph.i25.epil.preheader

.lr.ph.i25.epil.preheader:                        ; preds = %ma_clip_samples_u8.exit.loopexit96.unr-lcssa, %.lr.ph.i25.preheader
  %.06.i26.epil.init = phi i64 [ 0, %.lr.ph.i25.preheader ], [ %i.ef, %ma_clip_samples_u8.exit.loopexit96.unr-lcssa ] ; 2 uses
  %lcmp.mod101 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod101)
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.06.i26.epil.init
  %i.gb = load i64, ptr %i.ga, align 8
  %i.gc = tail call i64 @llvm.smax.i64(i64 %i.gb, i64 -2147483648)
  %i.gd = tail call i64 @llvm.smin.i64(i64 %i.gc, i64 2147483647)
  %i.ge = trunc nsw i64 %i.gd to i32
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.06.i26.epil.init
  store i32 %i.ge, ptr %i.gf, align 4
  br label %ma_clip_samples_u8.exit

ma_clip_samples_u8.exit:                          ; preds = %.lr.ph.i29.prol.loopexit, %.lr.ph.i29, %.lr.ph.i25.epil.preheader, %ma_clip_samples_u8.exit.loopexit96.unr-lcssa, %.lr.ph.i22.epil.preheader, %ma_clip_samples_u8.exit.loopexit95.unr-lcssa, %.lr.ph.i18.prol.loopexit, %.lr.ph.i18, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %middle.block61, %middle.block83, %vec.epilog.middle.block, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @ma_copy_and_apply_volume_factor_u8(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, float noundef %3) local_unnamed_addr #20 {
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
  %wide.load = load <16 x i8>, ptr %i.h, align 1
  %i.i = uitofp <16 x i8> %wide.load to <16 x float>
  %i.j = fmul <16 x float> %broadcast.splat, %i.i
  %i.k = fptoui <16 x float> %i.j to <16 x i8>
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.k, ptr %i.l, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec19 = and i64 %2, -4                       ; 3 uses
  %broadcast.splatinsert20 = insertelement <4 x float> poison, float %3, i64 0
  %broadcast.splat21 = shufflevector <4 x float> %broadcast.splatinsert20, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index22
  %wide.load23 = load <4 x i8>, ptr %i.n, align 1
  %i.o = uitofp <4 x i8> %wide.load23 to <4 x float>
  %i.p = fmul <4 x float> %broadcast.splat21, %i.o
  %i.q = fptoui <4 x float> %i.p to <4 x i8>
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %index22
  store <4 x i8> %i.q, ptr %i.r, align 1
  %index.next24 = add nuw i64 %index22, 4         ; 2 uses
  %i.s = icmp eq i64 %index.next24, %n.vec19
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !139

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
  %i.u = load i8, ptr %i.t, align 1
  %i.v = uitofp i8 %i.u to float
  %i.w = fmul float %3, %i.v
  %i.x = fptoui float %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.012.ph
  store i8 %i.x, ptr %i.y, align 1
  %i.z = or disjoint i64 %.012.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.012.unr = phi i64 [ %.012.ph, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.aa = icmp eq i64 %2, %.neg
  br i1 %i.aa, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.012 = phi i64 [ %i.ao, %.lr.ph ], [ %.012.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = uitofp i8 %i.ac to float
  %i.ae = fmul float %3, %i.ad
  %i.af = fptoui float %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.012
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = add nuw i64 %.012, 1                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = uitofp i8 %i.aj to float
  %i.al = fmul float %3, %i.ak
  %i.am = fptoui float %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = add nuw i64 %.012, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ao, %2
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !140

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @ma_copy_and_apply_volume_factor_s16(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, float noundef %3) local_unnamed_addr #20 {
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
  %wide.load = load <8 x i16>, ptr %i.g, align 2
  %i.h = sitofp <8 x i16> %wide.load to <8 x float>
  %i.i = fmul <8 x float> %broadcast.splat, %i.h
  %i.j = fptosi <8 x float> %i.i to <8 x i16>
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  store <8 x i16> %i.j, ptr %i.k, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !141

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
  %i.n = load i16, ptr %i.m, align 2
  %i.o = sitofp i16 %i.n to float
  %i.p = fmul float %3, %i.o
  %i.q = fptosi float %i.p to i16
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.012.ph
  store i16 %i.q, ptr %i.r, align 2
  %i.s = or disjoint i64 %.012.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader18
  %.012.unr = phi i64 [ %.012.ph, %.lr.ph.preheader18 ], [ %i.s, %.lr.ph.prol ]
  %i.t = icmp eq i64 %2, %.neg
  br i1 %i.t, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.012 = phi i64 [ %i.ah, %.lr.ph ], [ %.012.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.012
  %i.v = load i16, ptr %i.u, align 2
  %i.w = sitofp i16 %i.v to float
  %i.x = fmul float %3, %i.w
  %i.y = fptosi float %i.x to i16
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.012
  store i16 %i.y, ptr %i.z, align 2
  %i.aa = add nuw i64 %.012, 1                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = sitofp i16 %i.ac to float
  %i.ae = fmul float %3, %i.ad
  %i.af = fptosi float %i.ae to i16
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aa
  store i16 %i.af, ptr %i.ag, align 2
  %i.ah = add nuw i64 %.012, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ah, %2
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !142

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @ma_copy_and_apply_volume_factor_s24(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, float noundef %3) local_unnamed_addr #20 {
end_hunk_0
begin_hunk_1_@ma_apply_volume_factor_s16:bb.a
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !154

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %ma_copy_and_apply_volume_factor_s16.exit, label %.lr.ph.i.preheader4

.lr.ph.i.preheader4:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.012.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader4, %.lr.ph.i
  %.012.i = phi i64 [ %i.m, %.lr.ph.i ], [ %.012.i.ph, %.lr.ph.i.preheader4 ] ; 2 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.012.i ; 2 uses
  %i.i = load i16, ptr %i.h, align 2
  %i.j = sitofp i16 %i.i to float
  %i.k = fmul float %2, %i.j
  %i.l = fptosi float %i.k to i16
  store i16 %i.l, ptr %i.h, align 2
  %i.m = add nuw i64 %.012.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.m, %1
  br i1 %exitcond.not.i, label %ma_copy_and_apply_volume_factor_s16.exit, label %.lr.ph.i, !llvm.loop !155

ma_copy_and_apply_volume_factor_s16.exit:         ; preds = %.lr.ph.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @ma_apply_volume_factor_s24(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, float noundef %2) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne i64 %1, 0
  %or.cond27.i = and i1 %i.a, %i.b
  br i1 %or.cond27.i, label %.lr.ph.i, label %ma_copy_and_apply_volume_factor_s24.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.026.i = phi i64 [ %i.aa, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = mul i64 %.026.i, 3
  %i.d = getelementptr i8, ptr %0, i64 %i.c       ; 4 uses
  %i.e = load i8, ptr %i.d, align 1
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 8
  %i.h = getelementptr i8, ptr %i.d, i64 1        ; 2 uses
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 16
  %i.l = or disjoint i32 %i.k, %i.g
  %i.m = getelementptr i8, ptr %i.d, i64 2        ; 2 uses
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i32
  %i.p = shl nuw i32 %i.o, 24
  %i.q = or disjoint i32 %i.l, %i.p
  %i.r = sitofp i32 %i.q to float
  %i.s = fmul float %2, %i.r
  %i.t = fptosi float %i.s to i32                 ; 3 uses
  %i.u = lshr i32 %i.t, 8
  %i.v = trunc i32 %i.u to i8
  store i8 %i.v, ptr %i.d, align 1
  %i.w = lshr i32 %i.t, 16
  %i.x = trunc i32 %i.w to i8
  store i8 %i.x, ptr %i.h, align 1
  %i.y = lshr i32 %i.t, 24
  %i.z = trunc nuw i32 %i.y to i8
  store i8 %i.z, ptr %i.m, align 1
  %i.aa = add nuw i64 %.026.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aa, %1
  br i1 %exitcond.not.i, label %ma_copy_and_apply_volume_factor_s24.exit, label %.lr.ph.i

ma_copy_and_apply_volume_factor_s24.exit:         ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @ma_apply_volume_factor_s32(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, float noundef %2) local_unnamed_addr #20 {
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
  %wide.load = load <4 x i32>, ptr %i.c, align 4
  %wide.load4 = load <4 x i32>, ptr %i.d, align 4
  %i.e = sitofp <4 x i32> %wide.load to <4 x float>
  %i.f = sitofp <4 x i32> %wide.load4 to <4 x float>
  %i.g = fmul <4 x float> %broadcast.splat, %i.e
  %i.h = fmul <4 x float> %broadcast.splat, %i.f
  %i.i = fptosi <4 x float> %i.g to <4 x i32>
  %i.j = fptosi <4 x float> %i.h to <4 x i32>
  store <4 x i32> %i.i, ptr %i.c, align 4
  store <4 x i32> %i.j, ptr %i.d, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %ma_copy_and_apply_volume_factor_s32.exit, label %.lr.ph.i.preheader5

.lr.ph.i.preheader5:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.012.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader5, %.lr.ph.i
  %.012.i = phi i64 [ %i.q, %.lr.ph.i ], [ %.012.i.ph, %.lr.ph.i.preheader5 ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.012.i ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = sitofp i32 %i.m to float
  %i.o = fmul float %2, %i.n
  %i.p = fptosi float %i.o to i32
  store i32 %i.p, ptr %i.l, align 4
  %i.q = add nuw i64 %.012.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.q, %1
  br i1 %exitcond.not.i, label %ma_copy_and_apply_volume_factor_s32.exit, label %.lr.ph.i, !llvm.loop !157

ma_copy_and_apply_volume_factor_s32.exit:         ; preds = %.lr.ph.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @ma_apply_volume_factor_f32(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, float noundef %2) local_unnamed_addr #20 {
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
  %wide.load = load <4 x float>, ptr %i.c, align 4
  %wide.load6 = load <4 x float>, ptr %i.d, align 4
  %i.e = fmul <4 x float> %broadcast.splat, %wide.load
  %i.f = fmul <4 x float> %broadcast.splat, %wide.load6
  store <4 x float> %i.e, ptr %i.c, align 4
  store <4 x float> %i.f, ptr %i.d, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !158

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %ma_copy_and_apply_volume_factor_f32.exit, label %.lr.ph.i.preheader7

.lr.ph.i.preheader7:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.125.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader7, %.lr.ph.i
  %.125.i = phi i64 [ %i.k, %.lr.ph.i ], [ %.125.i.ph, %.lr.ph.i.preheader7 ] ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.125.i ; 2 uses
  %i.i = load float, ptr %i.h, align 4
  %i.j = fmul float %2, %i.i
  store float %i.j, ptr %i.h, align 4
  %i.k = add nuw i64 %.125.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.k, %1
  br i1 %exitcond.not.i, label %ma_copy_and_apply_volume_factor_f32.exit, label %.lr.ph.i, !llvm.loop !159

ma_copy_and_apply_volume_factor_f32.exit:         ; preds = %.lr.ph.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @ma_copy_and_apply_volume_factor_pcm_frames_u8(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #20 {
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
  %wide.load = load <16 x i8>, ptr %i.j, align 1
  %i.k = uitofp <16 x i8> %wide.load to <16 x float>
  %i.l = fmul <16 x float> %broadcast.splat, %i.k
  %i.m = fptoui <16 x float> %i.l to <16 x i8>
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.m, ptr %i.n, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !160

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %ma_copy_and_apply_volume_factor_u8.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec7 = and i64 %i.b, -4                      ; 3 uses
  %broadcast.splatinsert8 = insertelement <4 x float> poison, float %4, i64 0
  %broadcast.splat9 = shufflevector <4 x float> %broadcast.splatinsert8, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index10 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next12, %vec.epilog.vector.body ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %index10
  %wide.load11 = load <4 x i8>, ptr %i.p, align 1
  %i.q = uitofp <4 x i8> %wide.load11 to <4 x float>
  %i.r = fmul <4 x float> %broadcast.splat9, %i.q
  %i.s = fptoui <4 x float> %i.r to <4 x i8>
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %index10
  store <4 x i8> %i.s, ptr %i.t, align 1
  %index.next12 = add nuw i64 %index10, 4         ; 2 uses
  %i.u = icmp eq i64 %index.next12, %n.vec7
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !161

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
  %i.w = load i8, ptr %i.v, align 1
  %i.x = uitofp i8 %i.w to float
  %i.y = fmul float %4, %i.x
  %i.z = fptoui float %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.012.i.ph
  store i8 %i.z, ptr %i.aa, align 1
  %i.ab = or disjoint i64 %.012.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.012.i.unr = phi i64 [ %.012.i.ph, %.lr.ph.i.preheader ], [ %i.ab, %.lr.ph.i.prol ]
  %i.ac = icmp eq i64 %i.b, %.neg
  br i1 %i.ac, label %ma_copy_and_apply_volume_factor_u8.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.012.i = phi i64 [ %i.aq, %.lr.ph.i ], [ %.012.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.012.i
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = uitofp i8 %i.ae to float
  %i.ag = fmul float %4, %i.af
  %i.ah = fptoui float %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.012.i
  store i8 %i.ah, ptr %i.ai, align 1
  %i.aj = add nuw i64 %.012.i, 1                  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = uitofp i8 %i.al to float
  %i.an = fmul float %4, %i.am
  %i.ao = fptoui float %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  store i8 %i.ao, ptr %i.ap, align 1
  %i.aq = add nuw i64 %.012.i, 2                  ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.aq, %i.b
  br i1 %exitcond.not.i.1, label %ma_copy_and_apply_volume_factor_u8.exit, label %.lr.ph.i, !llvm.loop !162

ma_copy_and_apply_volume_factor_u8.exit:          ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @ma_copy_and_apply_volume_factor_pcm_frames_s16(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #20 {
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
  %wide.load = load <8 x i16>, ptr %i.i, align 2
  %i.j = sitofp <8 x i16> %wide.load to <8 x float>
  %i.k = fmul <8 x float> %broadcast.splat, %i.j
  %i.l = fptosi <8 x float> %i.k to <8 x i16>
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  store <8 x i16> %i.l, ptr %i.m, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !163

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
  %i.p = load i16, ptr %i.o, align 2
  %i.q = sitofp i16 %i.p to float
  %i.r = fmul float %4, %i.q
  %i.s = fptosi float %i.r to i16
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.012.i.ph
  store i16 %i.s, ptr %i.t, align 2
  %i.u = or disjoint i64 %.012.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader6
  %.012.i.unr = phi i64 [ %.012.i.ph, %.lr.ph.i.preheader6 ], [ %i.u, %.lr.ph.i.prol ]
  %i.v = icmp eq i64 %i.b, %.neg
  br i1 %i.v, label %ma_copy_and_apply_volume_factor_s16.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.012.i = phi i64 [ %i.aj, %.lr.ph.i ], [ %.012.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.012.i
  %i.x = load i16, ptr %i.w, align 2
  %i.y = sitofp i16 %i.x to float
  %i.z = fmul float %4, %i.y
  %i.aa = fptosi float %i.z to i16
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.012.i
  store i16 %i.aa, ptr %i.ab, align 2
  %i.ac = add nuw i64 %.012.i, 1                  ; 2 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = sitofp i16 %i.ae to float
  %i.ag = fmul float %4, %i.af
  %i.ah = fptosi float %i.ag to i16
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ac
  store i16 %i.ah, ptr %i.ai, align 2
  %i.aj = add nuw i64 %.012.i, 2                  ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.aj, %i.b
  br i1 %exitcond.not.i.1, label %ma_copy_and_apply_volume_factor_s16.exit, label %.lr.ph.i, !llvm.loop !164

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
  store float %.0.i, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %2, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %spec.store.select.i, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.ab, align 8
  br label %ma_fader_set_fade_ex.exit

ma_fader_set_fade_ex.exit:                        ; preds = %bb.a, %ma_fader_get_current_volume.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @ma_fader_set_fade_ex(ptr nofree noundef captures(address_is_null) %0, float noundef %1, float noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp olt float %1, 0.000000e+00
  br i1 %i.b, label %bb.c, label %ma_fader_get_current_volume.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %ma_fader_get_current_volume.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load float, ptr %i.g, align 4
  br label %ma_fader_get_current_volume.exit

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %.not.i = icmp ult i64 %i.d, %i.j
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load float, ptr %i.k, align 8
  br label %ma_fader_get_current_volume.exit

bb.h:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load float, ptr %i.m, align 4            ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load float, ptr %i.o, align 8
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
  store float %.0, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %2, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %spec.store.select, ptr %i.aa, align 8
  %i.ab = sub nsw i64 0, %spec.store.select1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ab, ptr %i.ac, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %ma_fader_get_current_volume.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden float @ma_fader_get_current_volume(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8              ; 4 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load float, ptr %i.f, align 4
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %.not = icmp ult i64 %i.c, %i.i
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load float, ptr %i.j, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = load float, ptr %i.l, align 4            ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load float, ptr %i.n, align 8
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
define hidden { <2 x float>, float } @ma_vec3f_init_3f(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #1 {
bb.a:
  %.sroa.03.0.vec.insert = insertelement <2 x float> poison, float %0, i64 0
  %.sroa.03.4.vec.insert = insertelement <2 x float> %.sroa.03.0.vec.insert, float %1, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.03.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %2, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { <2 x float>, float } @ma_vec3f_sub(<2 x float> %0, float %1, <2 x float> %2, float %3) local_unnamed_addr #35 {
bb.a:
  %i.a = fsub <2 x float> %0, %2
  %i.b = fsub float %1, %3
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.a, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.b, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { <2 x float>, float } @ma_vec3f_neg(<2 x float> %0, float %1) local_unnamed_addr #35 {
bb.a:
  %i.a = fneg <2 x float> %0
  %i.b = fneg float %1
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.a, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.b, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden float @ma_vec3f_dot(<2 x float> %0, float %1, <2 x float> %2, float %3) local_unnamed_addr #35 {
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
define hidden float @ma_vec3f_len2(<2 x float> %0, float %1) local_unnamed_addr #35 {
bb.a:
  %.sroa.04.0.vec.extract.i = extractelement <2 x float> %0, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %0, %0
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.b = tail call float @llvm.fmuladd.f32(float %.sroa.04.0.vec.extract.i, float %.sroa.04.0.vec.extract.i, float %i.a)
  %i.c = tail call float @llvm.fmuladd.f32(float %1, float %1, float %i.b)
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define hidden float @ma_vec3f_len(<2 x float> %0, float %1) local_unnamed_addr #36 {
bb.a:
  %.sroa.04.0.vec.extract.i.i = extractelement <2 x float> %0, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %0, %0
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.b = tail call float @llvm.fmuladd.f32(float %.sroa.04.0.vec.extract.i.i, float %.sroa.04.0.vec.extract.i.i, float %i.a)
  %i.c = tail call float @llvm.fmuladd.f32(float %1, float %1, float %i.b)
  %sqrt = tail call float @sqrtf(float noundef %i.c) #61
  ret float %sqrt
}

; Function Attrs: nounwind uwtable
define hidden float @ma_vec3f_dist(<2 x float> %0, float %1, <2 x float> %2, float %3) local_unnamed_addr #36 {
bb.a:
  %foldExtExtBinop = fsub <2 x float> %0, %2
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop18 = fsub <2 x float> %0, %2    ; 2 uses
  %i.b = fsub float %1, %3                        ; 2 uses
  %foldExtExtBinop20 = fmul <2 x float> %foldExtExtBinop18, %foldExtExtBinop18
  %i.c = extractelement <2 x float> %foldExtExtBinop20, i64 1
  %i.d = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.c)
  %i.e = tail call float @llvm.fmuladd.f32(float %i.b, float %i.b, float %i.d)
  %sqrt.i = tail call float @sqrtf(float noundef %i.e) #61
  ret float %sqrt.i
}

; Function Attrs: nounwind uwtable
define hidden { <2 x float>, float } @ma_vec3f_normalize(<2 x float> %0, float %1) local_unnamed_addr #36 {
bb.a:
  %.sroa.04.0.vec.extract.i.i = extractelement <2 x float> %0, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %0, %0
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.b = tail call float @llvm.fmuladd.f32(float %.sroa.04.0.vec.extract.i.i, float %.sroa.04.0.vec.extract.i.i, float %i.a)
  %i.c = tail call float @llvm.fmuladd.f32(float %1, float %1, float %i.b) ; 2 uses
  %i.d = fcmp oeq float %i.c, 0.000000e+00
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call float asm sideeffect "rsqrtss $1, $0", "=x,x,~{dirflag},~{fpsr},~{flags}"(float %i.c) #61, !srcloc !49 ; 2 uses
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
define hidden { <2 x float>, float } @ma_vec3f_cross(<2 x float> %0, float %1, <2 x float> %2, float %3) local_unnamed_addr #35 {
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
define hidden void @ma_atomic_vec3f_init(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, <2 x float> %1, float %2) local_unnamed_addr #37 {
bb.a:
  store <2 x float> %1, ptr %0, align 4
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %2, ptr %.sroa.23.0..sroa_idx, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.a, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @ma_atomic_vec3f_set(ptr nofree noundef captures(address) %0, <2 x float> %1, float %2) local_unnamed_addr #36 {
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
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #61, !srcloc !32
  %i.h = load atomic volatile i32, ptr %i.a monotonic, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.lr.ph.i, label %.loopexit.i

ma_spinlock_lock.exit:                            ; preds = %.loopexit.i, %bb.a
  store <2 x float> %1, ptr %0, align 4
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %2, ptr %.sroa.24.0..sroa_idx, align 4
  store atomic volatile i32 0, ptr %i.a release, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define hidden { <2 x float>, float } @ma_atomic_vec3f_get(ptr nofree noundef captures(address) %0) local_unnamed_addr #8 {
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
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #61, !srcloc !32
  %i.h = load atomic volatile i32, ptr %i.a monotonic, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.lr.ph.i, label %.loopexit.i

ma_spinlock_lock.exit:                            ; preds = %.loopexit.i, %bb.a
  %.sroa.03.0.copyload = load <2 x float>, ptr %0, align 4
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 4
  store atomic volatile i32 0, ptr %i.a release, align 4
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.03.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.24.0.copyload, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @ma_spatializer_listener_config_init(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ma_spatializer_listener_config) align 8 captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #37 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %ma_zero_memory_default.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.a, %bb.b
  store i32 %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.c, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float 0.000000e+00, ptr %.sroa.4.0..sroa_idx, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store <4 x float> <float f0x40C90FDA, float f0x40C90FDA, float 0.000000e+00, float 3.433000e+02>, ptr %i.d, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -2, 1) i32 @ma_spatializer_listener_get_heap_size(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ma_spatializer_listener_get_heap_layout.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_spatializer_listener_get_heap_layout.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 8                ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %ma_spatializer_listener_get_heap_layout.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = zext i32 %i.c to i64
  %i.f = add nuw nsw i64 %i.e, 7
  %i.g = and i64 %i.f, 8589934584
  store i64 %i.g, ptr %1, align 8
  br label %ma_spatializer_listener_get_heap_layout.exit.thread

ma_spatializer_listener_get_heap_layout.exit.thread: ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -2, %bb.a ], [ -2, %bb.b ], [ -2, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2, 1) i32 @ma_spatializer_listener_init_preallocated(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef captures(address) %2) local_unnamed_addr #36 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %ma_get_default_channel_map_for_spatializer.exit, label %ma_zero_memory_default.exit64

ma_zero_memory_default.exit64:                    ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %2, i8 0, i64 112, i1 false)
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %ma_get_default_channel_map_for_spatializer.exit, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit64
  %i.c = load i32, ptr %0, align 8                ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %ma_get_default_channel_map_for_spatializer.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 104
end_hunk_2
begin_hunk_3_@ma_spatializer_process_pcm_frames:bb.a
  %i.k = load i32, ptr %i.j, align 8
  %.not253 = icmp eq i32 %i.k, 0
  br i1 %.not253, label %bb.g, label %bb.c

bb.c:                                             ; preds = %ma_spatializer_listener_is_enabled.exit
  %i.l = load i32, ptr %0, align 8                ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
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
  br i1 %.not.i.i, label %ma_copy_pcm_frames.exit, label %.lr.ph.i

bb.f:                                             ; preds = %bb.c
  tail call fastcc void @ma_channel_map_apply_f32(ptr noundef %2, ptr noundef %i.f, i32 noundef %i.n, ptr noundef %3, ptr noundef %i.d, i32 noundef %i.l, i64 noundef %4)
  br label %ma_copy_pcm_frames.exit

bb.g:                                             ; preds = %ma_spatializer_listener_is_enabled.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load i32, ptr %i.w, align 4
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
  br i1 %.not.i.i256, label %ma_copy_pcm_frames.exit, label %.lr.ph.i254

ma_copy_pcm_frames.exit:                          ; preds = %.lr.ph.i, %ma_zero_memory_default.exit.i.i, %bb.g, %bb.e, %bb.d, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120
  store float 1.000000e+00, ptr %i.ad, align 8
  br label %bb.an

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #61
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4            ; 6 uses
  %i.ag = load i32, ptr %0, align 8
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
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #61, !srcloc !32
  %i.bb = load atomic volatile i32, ptr %i.au monotonic, align 4
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %.lr.ph.i.i.i, label %.loopexit.i.i.i

ma_spatializer_get_positioning.exit:              ; preds = %.loopexit.i.i.i, %bb.i
  %.sroa.03.0.copyload.i.i = load <2 x float>, ptr %i.at, align 8 ; 2 uses
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.24.0.copyload.i.i = load float, ptr %.sroa.24.0..sroa_idx.i.i, align 8
  store atomic volatile i32 0, ptr %i.au release, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.be = load float, ptr %i.bd, align 8          ; 2 uses
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
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #61, !srcloc !32
  %i.bq = load atomic volatile i32, ptr %i.bj monotonic, align 4
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %.lr.ph.i.i.i271, label %.loopexit.i.i.i263

.loopexit388:                                     ; preds = %.loopexit.i.i.i263, %bb.j
  %.sroa.03.0.copyload.i.i265 = load <2 x float>, ptr %i.bi, align 8 ; 2 uses
  %.sroa.24.0..sroa_idx.i.i266 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.24.0.copyload.i.i267 = load float, ptr %.sroa.24.0..sroa_idx.i.i266, align 8 ; 2 uses
  store atomic volatile i32 0, ptr %i.bj release, align 4
  store <2 x float> %.sroa.03.0.copyload.i.i265, ptr %5, align 8
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %.sroa.24.0.copyload.i.i267, ptr %.sroa.4108.0..sroa_idx, align 8
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
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #61, !srcloc !32
  %i.ca = load atomic volatile i32, ptr %i.bt monotonic, align 4
  %i.cb = icmp eq i32 %i.ca, 1
  br i1 %i.cb, label %.lr.ph.i.i.i281, label %.loopexit.i.i.i273

ma_spatializer_get_direction.exit:                ; preds = %.loopexit.i.i.i273, %.loopexit388
  %.sroa.03.0.copyload.i.i275 = load <2 x float>, ptr %i.bs, align 8
  %.sroa.24.0..sroa_idx.i.i276 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.24.0.copyload.i.i277 = load float, ptr %.sroa.24.0..sroa_idx.i.i276, align 8
  store atomic volatile i32 0, ptr %i.bt release, align 4
  store <2 x float> %.sroa.03.0.copyload.i.i275, ptr %6, align 8
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %.sroa.24.0.copyload.i.i277, ptr %.sroa.4102.0..sroa_idx, align 8
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
  %sqrt.i = call float @sqrtf(float noundef %i.ce) #61 ; 10 uses
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
  %i.de = call double @pow(double noundef %i.db, double noundef %i.dd) #61
  %i.df = fptrunc double %i.de to float
  br label %ma_attenuation_inverse.exit

ma_attenuation_inverse.exit:                      ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %ma_spatializer_get_attenuation_model.exit
  %.0239 = phi float [ 1.000000e+00, %bb.n ], [ 1.000000e+00, %ma_spatializer_get_attenuation_model.exit ], [ 1.000000e+00, %bb.l ], [ %i.cm, %bb.m ], [ %i.cv, %bb.o ], [ %i.df, %bb.q ], [ 1.000000e+00, %bb.p ] ; 2 uses
  %i.dg = fcmp ogt float %sqrt.i, 1.000000e-03    ; 2 uses
  br i1 %i.dg, label %ma_spatializer_get_cone.exit, label %ma_spatializer_get_max_gain.exit

ma_spatializer_get_cone.exit:                     ; preds = %ma_attenuation_inverse.exit
  %i.dh = fdiv float 1.000000e+00, %sqrt.i        ; 3 uses
  %.sroa.0156.0.copyload = load <2 x float>, ptr %5, align 8 ; 2 uses
  %.sroa.10.0.copyload = load float, ptr %.sroa.296.0..sroa_idx, align 8
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
  %i.eb = call double @sin(double noundef %i.ea) #61
  %i.ec = fptrunc double %i.eb to float           ; 2 uses
  %i.ed = fmul float %i.dx, 5.000000e-01
  %i.ee = fpext float %i.ed to double
  %i.ef = fsub double f0x3FF921FB54442D18, %i.ee
  %i.eg = call double @sin(double noundef %i.ef) #61
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
  %i.eu = load float, ptr %i.et, align 4          ; 2 uses
  %i.ev = fcmp olt float %i.eu, f0x40C90FDA
  br i1 %i.ev, label %bb.u, label %ma_spatializer_get_max_gain.exit

bb.u:                                             ; preds = %ma_calculate_angular_gain.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ex = load i32, ptr %i.ew, align 8
  %i.ey = icmp eq i32 %i.ex, 0
  %.sroa.5.0 = select i1 %i.ey, float -1.000000e+00, float 1.000000e+00
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fa = load float, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.fc = load float, ptr %i.fb, align 4          ; 2 uses
  %i.fd = fmul nnan float %i.eu, 5.000000e-01
  %i.fe = fpext float %i.fd to double
  %i.ff = fsub double f0x3FF921FB54442D18, %i.fe
  %i.fg = call double @sin(double noundef %i.ff) #61
  %i.fh = fptrunc double %i.fg to float           ; 2 uses
  %i.fi = fmul float %i.fa, 5.000000e-01
  %i.fj = fpext float %i.fi to double
  %i.fk = fsub double f0x3FF921FB54442D18, %i.fj
  %i.fl = call double @sin(double noundef %i.fk) #61
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
  %or.cond383 = icmp eq i64 %i.id, 0
  br i1 %or.cond383, label %ma_is_spatial_channel_position.exit, label %ma_spatializer_get_directional_attenuation_factor.exit

ma_is_spatial_channel_position.exit:              ; preds = %.preheader.i
  %i.ie = and i64 %i.ic, 263168
  %.not20.i = icmp eq i64 %i.ie, 0
  %i.if = icmp samesign ult i8 %.0.i320, 13
  %or.cond.i.not = and i1 %.not20.i, %i.if
  br i1 %or.cond.i.not, label %ma_is_spatial_channel_position.exit.thread379, label %ma_spatializer_get_directional_attenuation_factor.exit

ma_spatializer_get_directional_attenuation_factor.exit: ; preds = %.preheader.i, %ma_is_spatial_channel_position.exit
  %i.ig = getelementptr inbounds nuw [12 x i8], ptr @g_maChannelDirections, i64 %i.ib ; 2 uses
  %.sroa.04.0.copyload.i = load <2 x float>, ptr %i.ig, align 4 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %.sroa.3.0.copyload.i = load float, ptr %.sroa.3.0..sroa_idx.i, align 4
  %.sroa.01.0.vec.extract.i = extractelement <2 x float> %.sroa.04.0.copyload.i, i64 0
  %.sroa.01.4.vec.extract.i = extractelement <2 x float> %.sroa.04.0.copyload.i, i64 1
  %i.ih = fmul float %i.hq, %.sroa.01.4.vec.extract.i
  %i.ii = call float @llvm.fmuladd.f32(float %i.hp, float %.sroa.01.0.vec.extract.i, float %i.ih)
  %i.ij = call float @llvm.fmuladd.f32(float %i.hr, float %.sroa.3.0.copyload.i, float %i.ii)
  %i.ik = load atomic volatile i32, ptr %i.ht seq_cst, align 8
  %i.il = bitcast i32 %i.ik to float
  %i.im = fadd float %i.ij, -1.000000e+00
  %i.in = fmul float %i.im, %i.il
  %i.io = fadd float %i.in, 1.000000e+00
  %i.ip = fadd float %i.io, 1.000000e+00
  %i.iq = fmul float %i.ip, 5.000000e-01
  br label %ma_is_spatial_channel_position.exit.thread379

ma_is_spatial_channel_position.exit.thread379:    ; preds = %bb.ai, %ma_channel_map_get_channel.exit, %ma_channel_map_get_channel.exit, %ma_channel_map_get_channel.exit, %ma_is_spatial_channel_position.exit, %ma_spatializer_get_directional_attenuation_factor.exit
  %.0242 = phi float [ %i.iq, %ma_spatializer_get_directional_attenuation_factor.exit ], [ 1.000000e+00, %ma_is_spatial_channel_position.exit ], [ 1.000000e+00, %ma_channel_map_get_channel.exit ], [ 1.000000e+00, %ma_channel_map_get_channel.exit ], [ 1.000000e+00, %ma_channel_map_get_channel.exit ], [ 1.000000e+00, %bb.ai ] ; 2 uses
  %i.ir = load float, ptr %i.hu, align 4          ; 2 uses
  %i.is = fcmp ogt float %.0242, %i.ir
  %i.it = select i1 %i.is, float %.0242, float %i.ir
  %i.iu = load ptr, ptr %i.hv, align 8
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %indvars.iv396 ; 2 uses
  %i.iw = load float, ptr %i.iv, align 4
  %i.ix = fmul float %i.iw, %i.it
  store float %i.ix, ptr %i.iv, align 4
  %indvars.iv.next397 = add nuw nsw i64 %indvars.iv396, 1 ; 2 uses
  %exitcond400.not = icmp eq i64 %indvars.iv.next397, %wide.trip.count399
  br i1 %exitcond400.not, label %.loopexit387, label %bb.af

.loopexit387:                                     ; preds = %ma_is_spatial_channel_position.exit.thread379, %bb.ae, %ma_silence_pcm_frames.exit318
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ja = load ptr, ptr %i.iz, align 8            ; 2 uses
  %i.jb = icmp eq ptr %i.ja, null
  br i1 %i.jb, label %ma_gainer_set_gains.exit, label %.preheader.i324

.preheader.i324:                                  ; preds = %.loopexit387
  %i.jc = load i32, ptr %i.iy, align 8
  %.not.i325 = icmp eq i32 %i.jc, 0
  br i1 %.not.i325, label %._crit_edge.i, label %.lr.ph.i326

.lr.ph.i326:                                      ; preds = %.preheader.i324
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph.i326
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i326 ], [ %indvars.iv.next.i, %bb.aj ] ; 5 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.i
  %i.ji = load float, ptr %i.jh, align 4
  %i.jj = load i32, ptr %i.jd, align 8
  %i.jk = uitofp i32 %i.jj to float
  %i.jl = load i32, ptr %i.je, align 4
  %i.jm = uitofp i32 %i.jl to float
  %i.jn = fdiv float %i.jk, %i.jm
  %i.jo = load ptr, ptr %i.jf, align 8
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %indvars.iv.i ; 2 uses
  %i.jq = load float, ptr %i.jp, align 4          ; 2 uses
  %i.jr = load ptr, ptr %i.jg, align 8
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %indvars.iv.i
  %i.jt = load float, ptr %i.js, align 4
  %i.ju = fsub float %i.jt, %i.jq
  %i.jv = fmul float %i.jn, %i.ju
  %i.jw = fadd float %i.jq, %i.jv
  store float %i.jw, ptr %i.jp, align 4
  %i.jx = load ptr, ptr %i.jg, align 8
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %indvars.iv.i
  store float %i.ji, ptr %i.jy, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.jz = load i32, ptr %i.iy, align 8
  %i.ka = zext i32 %i.jz to i64
  %i.kb = icmp samesign ult i64 %indvars.iv.next.i, %i.ka
  br i1 %i.kb, label %bb.aj, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.aj, %.preheader.i324
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.kd = load i32, ptr %i.kc, align 8
  %i.ke = icmp eq i32 %i.kd, -1
  br i1 %i.ke, label %bb.ak, label %ma_gainer_reset_smoothing_time.exit.i

bb.ak:                                            ; preds = %._crit_edge.i
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.kg = load i32, ptr %i.kf, align 4
  br label %ma_gainer_reset_smoothing_time.exit.i

ma_gainer_reset_smoothing_time.exit.i:            ; preds = %bb.ak, %._crit_edge.i
  %storemerge.i.i = phi i32 [ %i.kg, %bb.ak ], [ 0, %._crit_edge.i ]
  store i32 %storemerge.i.i, ptr %i.kc, align 8
  br label %ma_gainer_set_gains.exit

ma_gainer_set_gains.exit:                         ; preds = %.loopexit387, %ma_gainer_reset_smoothing_time.exit.i
  %i.kh = call i32 @ma_gainer_process_pcm_frames(ptr noundef nonnull %i.iy, ptr noundef %2, ptr noundef %2, i64 noundef %4) ; 0 uses
  %i.ki = fcmp ogt float %i.as, 0.000000e+00
  br i1 %i.ki, label %bb.al, label %ma_doppler_pitch.exit

bb.al:                                            ; preds = %ma_gainer_set_gains.exit
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 5 uses
  %i.kl = atomicrmw volatile xchg ptr %i.kk, i32 1 acquire, align 4
  %i.km = icmp eq i32 %i.kl, 0
  br i1 %i.km, label %.loopexit386, label %.preheader.i.i.i327

.loopexit.i.i.i328:                               ; preds = %.lr.ph.i.i.i336, %.preheader.i.i.i327
  %i.kn = atomicrmw volatile xchg ptr %i.kk, i32 1 acquire, align 4
  %i.ko = icmp eq i32 %i.kn, 0
  br i1 %i.ko, label %.loopexit386, label %.preheader.i.i.i327

.preheader.i.i.i327:                              ; preds = %bb.al, %.loopexit.i.i.i328
  %i.kp = load atomic volatile i32, ptr %i.kk monotonic, align 4
  %i.kq = icmp eq i32 %i.kp, 1
  br i1 %i.kq, label %.lr.ph.i.i.i336, label %.loopexit.i.i.i328

.lr.ph.i.i.i336:                                  ; preds = %.preheader.i.i.i327, %.lr.ph.i.i.i336
  call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #61, !srcloc !32
  %i.kr = load atomic volatile i32, ptr %i.kk monotonic, align 4
  %i.ks = icmp eq i32 %i.kr, 1
  br i1 %i.ks, label %.lr.ph.i.i.i336, label %.loopexit.i.i.i328

.loopexit386:                                     ; preds = %.loopexit.i.i.i328, %bb.al
  %.sroa.03.0.copyload.i.i330 = load <2 x float>, ptr %i.kj, align 8 ; 2 uses
  %.sroa.24.0..sroa_idx.i.i331 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.24.0.copyload.i.i332 = load float, ptr %.sroa.24.0..sroa_idx.i.i331, align 8
  store atomic volatile i32 0, ptr %i.kk release, align 4
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 5 uses
  %i.kv = atomicrmw volatile xchg ptr %i.ku, i32 1 acquire, align 4
  %i.kw = icmp eq i32 %i.kv, 0
  br i1 %i.kw, label %.loopexit, label %.preheader.i.i.i337

.loopexit.i.i.i338:                               ; preds = %.lr.ph.i.i.i346, %.preheader.i.i.i337
  %i.kx = atomicrmw volatile xchg ptr %i.ku, i32 1 acquire, align 4
  %i.ky = icmp eq i32 %i.kx, 0
  br i1 %i.ky, label %.loopexit, label %.preheader.i.i.i337

.preheader.i.i.i337:                              ; preds = %.loopexit386, %.loopexit.i.i.i338
  %i.kz = load atomic volatile i32, ptr %i.ku monotonic, align 4
  %i.la = icmp eq i32 %i.kz, 1
  br i1 %i.la, label %.lr.ph.i.i.i346, label %.loopexit.i.i.i338

.lr.ph.i.i.i346:                                  ; preds = %.preheader.i.i.i337, %.lr.ph.i.i.i346
  call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #61, !srcloc !32
  %i.lb = load atomic volatile i32, ptr %i.ku monotonic, align 4
  %i.lc = icmp eq i32 %i.lb, 1
  br i1 %i.lc, label %.lr.ph.i.i.i346, label %.loopexit.i.i.i338

.loopexit:                                        ; preds = %.loopexit.i.i.i338, %.loopexit386
  %.sroa.03.0.copyload.i.i340 = load <2 x float>, ptr %i.kt, align 8 ; 2 uses
  %.sroa.24.0..sroa_idx.i.i341 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.24.0.copyload.i.i342 = load float, ptr %.sroa.24.0..sroa_idx.i.i341, align 8
  store atomic volatile i32 0, ptr %i.ku release, align 4
  %foldExtExtBinop438 = fsub <2 x float> %.sroa.03.0.copyload.i.i330, %.sroa.03.0.copyload.i.i340 ; 2 uses
  %i.ld = extractelement <2 x float> %foldExtExtBinop438, i64 0 ; 2 uses
  %foldExtExtBinop440 = fsub <2 x float> %.sroa.03.0.copyload.i.i330, %.sroa.03.0.copyload.i.i340 ; 2 uses
  %i.le = extractelement <2 x float> %foldExtExtBinop440, i64 1 ; 2 uses
  %i.lf = fsub float %.sroa.24.0.copyload.i.i332, %.sroa.24.0.copyload.i.i342 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 5 uses
  %i.li = atomicrmw volatile xchg ptr %i.lh, i32 1 acquire, align 4
  %i.lj = icmp eq i32 %i.li, 0
  br i1 %i.lj, label %ma_spatializer_get_velocity.exit, label %.preheader.i.i.i354

.loopexit.i.i.i355:                               ; preds = %.lr.ph.i.i.i363, %.preheader.i.i.i354
  %i.lk = atomicrmw volatile xchg ptr %i.lh, i32 1 acquire, align 4
  %i.ll = icmp eq i32 %i.lk, 0
  br i1 %i.ll, label %ma_spatializer_get_velocity.exit, label %.preheader.i.i.i354

.preheader.i.i.i354:                              ; preds = %.loopexit, %.loopexit.i.i.i355
  %i.lm = load atomic volatile i32, ptr %i.lh monotonic, align 4
  %i.ln = icmp eq i32 %i.lm, 1
  br i1 %i.ln, label %.lr.ph.i.i.i363, label %.loopexit.i.i.i355

.lr.ph.i.i.i363:                                  ; preds = %.preheader.i.i.i354, %.lr.ph.i.i.i363
  call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #61, !srcloc !32
  %i.lo = load atomic volatile i32, ptr %i.lh monotonic, align 4
  %i.lp = icmp eq i32 %i.lo, 1
  br i1 %i.lp, label %.lr.ph.i.i.i363, label %.loopexit.i.i.i355

ma_spatializer_get_velocity.exit:                 ; preds = %.loopexit.i.i.i355, %.loopexit
  %.sroa.03.0.copyload.i.i357 = load <2 x float>, ptr %i.lg, align 8 ; 2 uses
  %.sroa.24.0..sroa_idx.i.i358 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.24.0.copyload.i.i359 = load float, ptr %.sroa.24.0..sroa_idx.i.i358, align 8
  store atomic volatile i32 0, ptr %i.lh release, align 4
  %i.lq = fmul float %i.le, %i.le
  %i.lr = call float @llvm.fmuladd.f32(float %i.ld, float %i.ld, float %i.lq)
  %i.ls = call float @llvm.fmuladd.f32(float %i.lf, float %i.lf, float %i.lr)
  %sqrtf.i.i = call float @sqrtf(float noundef %i.ls) #61 ; 2 uses
  %i.lt = fcmp oeq float %sqrtf.i.i, 0.000000e+00
  br i1 %i.lt, label %ma_doppler_pitch.exit, label %bb.am

bb.am:                                            ; preds = %ma_spatializer_get_velocity.exit
  %i.lu = fdiv float %i.be, %i.as
  %i.lv = fneg float %i.as
  %i.lw = shufflevector <2 x float> %.sroa.03.0.copyload.i.i, <2 x float> %.sroa.03.0.copyload.i.i357, <2 x i32> <i32 1, i32 3>
  %i.lx = shufflevector <2 x float> %foldExtExtBinop440, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ly = fmul <2 x float> %i.lw, %i.lx
  %i.lz = shufflevector <2 x float> %foldExtExtBinop438, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ma = shufflevector <2 x float> %.sroa.03.0.copyload.i.i, <2 x float> %.sroa.03.0.copyload.i.i357, <2 x i32> <i32 0, i32 2>
  %i.mb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lz, <2 x float> %i.ma, <2 x float> %i.ly)
  %i.mc = insertelement <2 x float> poison, float %i.lf, i64 0
  %i.md = shufflevector <2 x float> %i.mc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.me = insertelement <2 x float> poison, float %.sroa.24.0.copyload.i.i, i64 0
  %i.mf = insertelement <2 x float> %i.me, float %.sroa.24.0.copyload.i.i359, i64 1
  %i.mg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.md, <2 x float> %i.mf, <2 x float> %i.mb)
  %i.mh = insertelement <2 x float> poison, float %sqrtf.i.i, i64 0
  %i.mi = shufflevector <2 x float> %i.mh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mj = fdiv <2 x float> %i.mg, %i.mi           ; 2 uses
  %i.mk = insertelement <2 x float> poison, float %i.lu, i64 0
  %i.ml = shufflevector <2 x float> %i.mk, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mm = fcmp olt <2 x float> %i.mj, %i.ml
  %i.mn = select <2 x i1> %i.mm, <2 x float> %i.mj, <2 x float> %i.ml
  %i.mo = insertelement <2 x float> poison, float %i.lv, i64 0
  %i.mp = shufflevector <2 x float> %i.mo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mq = insertelement <2 x float> poison, float %i.be, i64 0
  %i.mr = shufflevector <2 x float> %i.mq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ms = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mp, <2 x float> %i.mn, <2 x float> %i.mr) ; 2 uses
  %i.mt = extractelement <2 x float> %i.ms, i64 0
  %i.mu = extractelement <2 x float> %i.ms, i64 1
  %i.mv = fdiv float %i.mt, %i.mu
  br label %ma_doppler_pitch.exit

ma_doppler_pitch.exit:                            ; preds = %ma_gainer_set_gains.exit, %bb.am, %ma_spatializer_get_velocity.exit
  %.sink = phi float [ 1.000000e+00, %ma_spatializer_get_velocity.exit ], [ %i.mv, %bb.am ], [ 1.000000e+00, %ma_gainer_set_gains.exit ]
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 120
  store float %.sink, ptr %i.mw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #61
  br label %bb.an

bb.an:                                            ; preds = %ma_copy_pcm_frames.exit, %ma_doppler_pitch.exit, %bb.a
  %.0 = phi i32 [ -2, %bb.a ], [ 0, %ma_doppler_pitch.exit ], [ 0, %ma_copy_pcm_frames.exit ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @ma_channel_map_apply_f32(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2, ptr nofree noundef readonly captures(address) %3, ptr nofree noundef readonly captures(address) %4, i32 noundef %5, i64 noundef %6) unnamed_addr #39 {
bb.a:
  %i.a = alloca [254 x i8], align 16              ; 7 uses
  %i.b = alloca [32 x [32 x float]], align 16     ; 26 uses
  %i.c = tail call fastcc i32 @ma_channel_map_get_conversion_path(ptr noundef %4, i32 noundef %5, ptr noundef %1, i32 noundef %2, i32 noundef 0)
  switch i32 %i.c, label %bb.q [
    i32 1, label %bb.b
    i32 2, label %bb.d
    i32 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %0, %3
  br i1 %i.d, label %ma_copy_pcm_frames.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = shl i32 %2, 2
  %i.f = zext i32 %i.e to i64
  %i.g = mul i64 %6, %i.f                         ; 2 uses
  %.not.i7.i = icmp eq i64 %i.g, 0
  br i1 %.not.i7.i, label %ma_copy_pcm_frames.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.0.i10.i = phi ptr [ %i.i, %.lr.ph.i ], [ %0, %bb.c ] ; 2 uses
  %.011.i9.i = phi i64 [ %i.h, %.lr.ph.i ], [ %i.g, %bb.c ] ; 2 uses
  %.012.i8.i = phi ptr [ %i.j, %.lr.ph.i ], [ %3, %bb.c ] ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.011.i9.i, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i10.i, ptr noundef nonnull align 1 dereferenceable(1) %.012.i8.i, i64 %spec.store.select.i.i, i1 false)
  %i.h = sub nuw i64 %.011.i9.i, %spec.store.select.i.i ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i10.i, i64 %spec.store.select.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i8.i, i64 %spec.store.select.i.i
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %ma_copy_pcm_frames.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.a
  %i.k = icmp eq ptr %0, null
  %i.l = icmp eq ptr %3, null
  %or.cond.i = or i1 %i.k, %i.l
  %i.m = icmp eq i32 %5, 0
  %or.cond3.i = or i1 %or.cond.i, %i.m
  br i1 %or.cond3.i, label %ma_copy_pcm_frames.exit, label %.preheader66.i

.preheader66.i:                                   ; preds = %bb.d
  %i.n = icmp eq ptr %4, null                     ; 2 uses
  br i1 %i.n, label %ma_channel_map_get_channel.exit.us.i, label %ma_channel_map_get_channel.exit.preheader.i

ma_channel_map_get_channel.exit.preheader.i:      ; preds = %.preheader66.i
  %wide.trip.count.i = zext i32 %5 to i64         ; 3 uses
  %min.iters.check56 = icmp ult i32 %5, 8
  br i1 %min.iters.check56, label %ma_channel_map_get_channel.exit.i.preheader, label %vector.ph57

vector.ph57:                                      ; preds = %ma_channel_map_get_channel.exit.preheader.i
  %n.vec58 = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph57
  %index60 = phi i64 [ 0, %vector.ph57 ], [ %index.next65, %vector.body59 ] ; 2 uses
  %vec.phi61 = phi <4 x i32> [ zeroinitializer, %vector.ph57 ], [ %i.u, %vector.body59 ]
  %vec.phi62 = phi <4 x i32> [ zeroinitializer, %vector.ph57 ], [ %i.v, %vector.body59 ]
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 %index60 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %wide.load63 = load <4 x i8>, ptr %i.o, align 1
  %wide.load64 = load <4 x i8>, ptr %i.p, align 1
  %i.q = icmp ne <4 x i8> %wide.load63, zeroinitializer
  %i.r = icmp ne <4 x i8> %wide.load64, zeroinitializer
  %i.s = zext <4 x i1> %i.q to <4 x i32>
  %i.t = zext <4 x i1> %i.r to <4 x i32>
  %i.u = add <4 x i32> %vec.phi61, %i.s           ; 2 uses
  %i.v = add <4 x i32> %vec.phi62, %i.t           ; 2 uses
  %index.next65 = add nuw i64 %index60, 8         ; 2 uses
  %i.w = icmp eq i64 %index.next65, %n.vec58
  br i1 %i.w, label %middle.block66, label %vector.body59, !llvm.loop !661

middle.block66:                                   ; preds = %vector.body59
  %bin.rdx67 = add <4 x i32> %i.v, %i.u
  %i.x = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx67) ; 2 uses
  %cmp.n68 = icmp eq i64 %n.vec58, %wide.trip.count.i
  br i1 %cmp.n68, label %.split.us.i, label %ma_channel_map_get_channel.exit.i.preheader

ma_channel_map_get_channel.exit.i.preheader:      ; preds = %ma_channel_map_get_channel.exit.preheader.i, %middle.block66
  %indvars.iv.i.ph = phi i64 [ 0, %ma_channel_map_get_channel.exit.preheader.i ], [ %n.vec58, %middle.block66 ]
  %.03568.i.ph = phi i32 [ 0, %ma_channel_map_get_channel.exit.preheader.i ], [ %i.x, %middle.block66 ]
  br label %ma_channel_map_get_channel.exit.i

ma_channel_map_get_channel.exit.us.i:             ; preds = %.preheader66.i, %ma_channel_map_get_channel.exit.us.i
  %.03568.us.i = phi i32 [ %spec.select.us.i, %ma_channel_map_get_channel.exit.us.i ], [ 0, %.preheader66.i ]
  %.03767.us.i = phi i32 [ %i.aa, %ma_channel_map_get_channel.exit.us.i ], [ 0, %.preheader66.i ] ; 2 uses
  %i.y = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %5, i32 noundef %.03767.us.i)
  %.not47.us.i = icmp ne i8 %i.y, 0
  %i.z = zext i1 %.not47.us.i to i32
  %spec.select.us.i = add i32 %.03568.us.i, %i.z  ; 2 uses
  %i.aa = add nuw i32 %.03767.us.i, 1             ; 2 uses
  %exitcond148.not.i = icmp eq i32 %i.aa, %5
  br i1 %exitcond148.not.i, label %.split.us.i, label %ma_channel_map_get_channel.exit.us.i

ma_channel_map_get_channel.exit.i:                ; preds = %ma_channel_map_get_channel.exit.i.preheader, %ma_channel_map_get_channel.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %ma_channel_map_get_channel.exit.i ], [ %indvars.iv.i.ph, %ma_channel_map_get_channel.exit.i.preheader ] ; 2 uses
  %.03568.i = phi i32 [ %spec.select.i, %ma_channel_map_get_channel.exit.i ], [ %.03568.i.ph, %ma_channel_map_get_channel.exit.i.preheader ]
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.i
  %i.ac = load i8, ptr %i.ab, align 1
  %.not47.i = icmp ne i8 %i.ac, 0
  %i.ad = zext i1 %.not47.i to i32
  %spec.select.i = add i32 %.03568.i, %i.ad       ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.split.us.i, label %ma_channel_map_get_channel.exit.i, !llvm.loop !662

.split.us.i:                                      ; preds = %ma_channel_map_get_channel.exit.i, %ma_channel_map_get_channel.exit.us.i, %middle.block66
  %.us-phi.i = phi i32 [ %spec.select.us.i, %ma_channel_map_get_channel.exit.us.i ], [ %i.x, %middle.block66 ], [ %spec.select.i, %ma_channel_map_get_channel.exit.i ] ; 2 uses
  %.not.i = icmp eq i32 %.us-phi.i, 0
  br i1 %.not.i, label %bb.e, label %.preheader64.i

.preheader64.i:                                   ; preds = %.split.us.i
  %.not131.i = icmp eq i64 %6, 0
  br i1 %.not131.i, label %ma_copy_pcm_frames.exit, label %.preheader.lr.ph.split.us.i

.preheader.lr.ph.split.us.i:                      ; preds = %.preheader64.i
  %i.ae = uitofp i32 %.us-phi.i to float          ; 2 uses
  %i.af = zext i32 %5 to i64                      ; 9 uses
  br i1 %i.n, label %.preheader.us.us.i.preheader, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.preheader.lr.ph.split.us.i
  %xtraiter237 = and i64 %i.af, 1
  %i.ag = icmp eq i32 %5, 1
  %unroll_iter241 = and i64 %i.af, 4294967294
  %lcmp.mod238.not = icmp eq i64 %xtraiter237, 0
  %lcmp.mod240 = trunc i32 %5 to i1
  br label %.preheader.us.i

.preheader.us.us.i.preheader:                     ; preds = %.preheader.lr.ph.split.us.i
  %i.ah = add nsw i64 %i.af, -1                   ; 2 uses
  %xtraiter243 = and i64 %i.af, 7                 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 7
  %unroll_iter247 = and i64 %i.af, 4294967288
  %lcmp.mod244.not = icmp eq i64 %xtraiter243, 0
  %lcmp.mod246 = icmp ne i64 %xtraiter243, 0
  %xtraiter249 = and i64 %i.af, 3                 ; 3 uses
  %i.aj = icmp ult i64 %i.ah, 3
  %unroll_iter254 = and i64 %i.af, 4294967292
  %lcmp.mod251.not = icmp eq i64 %xtraiter249, 0
  %lcmp.mod253 = icmp ne i64 %xtraiter249, 0
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %.preheader.us.us.i.preheader, %._crit_edge.split.us.us.us.i
  %.03977.us.us.i = phi i64 [ %i.ev, %._crit_edge.split.us.us.us.i ], [ 0, %.preheader.us.us.i.preheader ]
  %.04176.us.us.i = phi ptr [ %i.et, %._crit_edge.split.us.us.us.i ], [ %0, %.preheader.us.us.i.preheader ] ; 2 uses
  %.04274.us.us.i = phi ptr [ %i.eu, %._crit_edge.split.us.us.us.i ], [ %3, %.preheader.us.us.i.preheader ] ; 35 uses
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
  br i1 %i.ai, label %ma_channel_map_get_channel.exit50.thread.us.us.us.us92.i.epil.preheader, label %ma_channel_map_get_channel.exit50.thread.us.us.us.us92.i

.lr.ph.split.us.us.us.split.i.preheader:          ; preds = %.preheader.us.us.i
  br i1 %i.aj, label %.lr.ph.split.us.us.us.split.i.epil.preheader, label %.lr.ph.split.us.us.us.split.i

ma_channel_map_get_channel.exit50.thread.us.us.us.us124.i.preheader: ; preds = %.preheader.us.us.i
  %i.ak = load float, ptr %.04274.us.us.i, align 4
  %i.al = fadd float %i.ak, 0.000000e+00
  %i.am = getelementptr inbounds nuw i8, ptr %.04274.us.us.i, i64 4
  %i.an = load float, ptr %i.am, align 4
  %i.ao = fadd float %i.al, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.04274.us.us.i, i64 8
end_hunk_4
begin_hunk_5_@jar_mod_fillbuffer:bb.a
  %i.aac = getelementptr inbounds nuw i8, ptr %3, i64 22
  store i8 %i.aab, ptr %i.aac, align 2
  %i.aad = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.aae = load i8, ptr %i.aad, align 1
  %i.aaf = getelementptr inbounds nuw i8, ptr %3, i64 23
  store i8 %i.aae, ptr %i.aaf, align 1
  %i.aag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aah = load i8, ptr %i.aag, align 2
  %i.aai = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 %i.aah, ptr %i.aai, align 8
  %i.aaj = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.aak = load i8, ptr %i.aaj, align 1
  %i.aal = getelementptr inbounds nuw i8, ptr %3, i64 25
  store i8 %i.aak, ptr %i.aal, align 1
  %i.aam = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.aan = load i8, ptr %i.aam, align 2
  %i.aao = getelementptr inbounds nuw i8, ptr %3, i64 26
  store i8 %i.aan, ptr %i.aao, align 2
  %i.aap = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.aaq = load i8, ptr %i.aap, align 1
  %i.aar = getelementptr inbounds nuw i8, ptr %3, i64 27
  store i8 %i.aaq, ptr %i.aar, align 1
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aat = load i8, ptr %i.aas, align 2
  %i.aau = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i8 %i.aat, ptr %i.aau, align 4
  %i.aav = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.aaw = load i8, ptr %i.aav, align 1
  %i.aax = getelementptr inbounds nuw i8, ptr %3, i64 29
  store i8 %i.aaw, ptr %i.aax, align 1
  %i.aay = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.aaz = load i8, ptr %i.aay, align 2
  %i.aba = getelementptr inbounds nuw i8, ptr %3, i64 30
  store i8 %i.aaz, ptr %i.aba, align 2
  %i.abb = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.abc = load i8, ptr %i.abb, align 1
  %i.abd = getelementptr inbounds nuw i8, ptr %3, i64 31
  store i8 %i.abc, ptr %i.abd, align 1
  %i.abe = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.abf = load i8, ptr %i.abe, align 2
  %i.abg = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 %i.abf, ptr %i.abg, align 8
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.abi = load i8, ptr %i.abh, align 1
  %i.abj = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 %i.abi, ptr %i.abj, align 1
  %i.abk = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.abl = load i8, ptr %i.abk, align 2
  %i.abm = getelementptr inbounds nuw i8, ptr %3, i64 34
  store i8 %i.abl, ptr %i.abm, align 2
  %i.abn = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.abo = load i8, ptr %i.abn, align 1
  %i.abp = getelementptr inbounds nuw i8, ptr %3, i64 35
  store i8 %i.abo, ptr %i.abp, align 1
  br label %memcopy.exit.preheader.rtcont

memcopy.exit.preheader.rtcont:                    ; preds = %memcopy.exit.preheader.rtscalar, %memcopy.exit.preheader.rtvec
  %.rtmerge402 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.rtmerge = getelementptr inbounds nuw i8, ptr %3, i64 80
  br label %memcopy.exit285
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @jar_mod_unload(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #32 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %jar_mod_reset.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7048
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not8 = icmp eq ptr %i.b, null
  br i1 %.not8, label %vector.ph, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #61
  br label %vector.ph

vector.ph:                                        ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7072) %0, i8 0, i64 7072, i1 false)
  store i64 48000, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 7040
  store <4 x i16> <i16 1, i16 1, i16 16, i16 1>, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4730
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr @periodtable, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.f, align 16 ; 6 uses
  %i.g = sext <8 x i16> %wide.load to <8 x i32>
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %wide.load10 = load <8 x i16>, ptr %i.h, align 2
  %i.i = sext <8 x i16> %wide.load10 to <8 x i32>
  %i.j = sub nsw <8 x i32> %i.g, %i.i
  %i.k = sdiv <8 x i32> %i.j, splat (i32 -8)
  %i.l = trunc nsw <8 x i32> %i.k to <8 x i16>    ; 6 uses
  %i.m = shl nuw nsw i64 %index, 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.m
  %i.o = add <8 x i16> %wide.load, %i.l
  %i.p = shl nsw <8 x i16> %i.l, splat (i16 1)
  %i.q = mul nsw <8 x i16> %i.l, splat (i16 3)
  %i.r = shl nsw <8 x i16> %i.l, splat (i16 2)
  %i.s = mul <8 x i16> %i.l, splat (i16 5)
  %i.t = shufflevector <8 x i16> %wide.load, <8 x i16> %i.o, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.u = shufflevector <8 x i16> %i.p, <8 x i16> %i.q, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.v = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.w = add <16 x i16> %i.u, %i.v
  %i.x = shufflevector <8 x i16> %i.r, <8 x i16> %i.s, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.y = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.z = add <16 x i16> %i.x, %i.y
  %i.aa = shufflevector <8 x i16> %i.l, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ab = mul <16 x i16> %i.aa, <i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7>
  %i.ac = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ad = add <16 x i16> %i.ab, %i.ac
  %i.ae = shufflevector <16 x i16> %i.t, <16 x i16> %i.w, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.af = shufflevector <16 x i16> %i.z, <16 x i16> %i.ad, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec = shufflevector <32 x i16> %i.ae, <32 x i16> %i.af, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i16> %interleaved.vec, ptr %i.n, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, 136
  br i1 %i.ag, label %.preheader.i.i, label %vector.body, !llvm.loop !1125

.preheader.i.i:                                   ; preds = %vector.body
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 6906
  store <8 x i16> splat (i16 11), ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 6922
  store <8 x i16> splat (i16 10), ptr %i.ai, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 6938
  store <8 x i16> splat (i16 9), ptr %i.aj, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 6954
  store <8 x i16> splat (i16 9), ptr %i.ak, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 6970
  store <8 x i16> splat (i16 8), ptr %i.al, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 6986
  store <8 x i16> splat (i16 8), ptr %i.am, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 7002
  store <8 x i16> splat (i16 7), ptr %i.an, align 2
  br label %jar_mod_reset.exit

jar_mod_reset.exit:                               ; preds = %.preheader.i.i, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i64 0, 33554432) i64 @jar_mod_load_file(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7048 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #61
  store ptr null, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.170) ; 6 uses
  %.not27 = icmp eq ptr %i.c, null
  br i1 %.not27, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @fseek(ptr noundef nonnull %i.c, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.e = tail call i64 @ftell(ptr noundef nonnull %i.c) ; 6 uses
  %i.f = tail call i32 @fseek(ptr noundef nonnull %i.c, i64 noundef 0, i32 noundef 0) ; 0 uses
  %i.g = add i64 %i.e, -1
  %or.cond = icmp ult i64 %i.g, 33554431
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %calloc = tail call ptr @calloc(i64 1, i64 %i.e) ; 2 uses
  store ptr %calloc, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 7056
  store i64 %i.e, ptr %i.h, align 8
  %i.i = tail call i64 @fread(ptr noundef %calloc, i64 noundef %i.e, i64 noundef 1, ptr noundef nonnull %i.c) ; 0 uses
  %i.j = tail call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = trunc nuw nsw i64 %i.e to i32
  %i.m = tail call fastcc zeroext i1 @jar_mod_load(ptr noundef nonnull %0, ptr noundef %i.k, i32 noundef %i.l)
  %spec.select = select i1 %i.m, i64 %i.e, i64 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ 0, %bb.d ], [ 0, %bb.c ], [ %spec.select, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @jar_mod_load(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #18 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a ; 4 uses
  %i.c = icmp ne ptr %1, null
  %i.d = icmp ne ptr %0, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %vector.memcheck, label %.loopexit

vector.memcheck:                                  ; preds = %bb.a
  %i.e = ptrtoaddr ptr %1 to i64
  %i.f = ptrtoaddr ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f
  %diff.check = icmp ugt i64 %i.g, -32
  br i1 %diff.check, label %.preheader128, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.load = load <16 x i8>, ptr %1, align 1
  %wide.load182 = load <16 x i8>, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <16 x i8> %wide.load, ptr %0, align 1
  store <16 x i8> %wide.load182, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %wide.load.1 = load <16 x i8>, ptr %i.j, align 1
  %wide.load182.1 = load <16 x i8>, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i8> %wide.load.1, ptr %i.l, align 1
  store <16 x i8> %wide.load182.1, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  %wide.load.2 = load <16 x i8>, ptr %i.n, align 1
  %wide.load182.2 = load <16 x i8>, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <16 x i8> %wide.load.2, ptr %i.p, align 1
  store <16 x i8> %wide.load182.2, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 112
  %wide.load.3 = load <16 x i8>, ptr %i.r, align 1
  %wide.load182.3 = load <16 x i8>, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <16 x i8> %wide.load.3, ptr %i.t, align 1
  store <16 x i8> %wide.load182.3, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 144
  %wide.load.4 = load <16 x i8>, ptr %i.v, align 1
  %wide.load182.4 = load <16 x i8>, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <16 x i8> %wide.load.4, ptr %i.x, align 1
  store <16 x i8> %wide.load182.4, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 176
  %wide.load.5 = load <16 x i8>, ptr %i.z, align 1
  %wide.load182.5 = load <16 x i8>, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <16 x i8> %wide.load.5, ptr %i.ab, align 1
  store <16 x i8> %wide.load182.5, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 208
  %wide.load.6 = load <16 x i8>, ptr %i.ad, align 1
  %wide.load182.6 = load <16 x i8>, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <16 x i8> %wide.load.6, ptr %i.af, align 1
  store <16 x i8> %wide.load182.6, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 240
  %wide.load.7 = load <16 x i8>, ptr %i.ah, align 1
  %wide.load182.7 = load <16 x i8>, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <16 x i8> %wide.load.7, ptr %i.aj, align 1
  store <16 x i8> %wide.load182.7, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 272
  %wide.load.8 = load <16 x i8>, ptr %i.al, align 1
  %wide.load182.8 = load <16 x i8>, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 272
  store <16 x i8> %wide.load.8, ptr %i.an, align 1
  store <16 x i8> %wide.load182.8, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 304
  %wide.load.9 = load <16 x i8>, ptr %i.ap, align 1
  %wide.load182.9 = load <16 x i8>, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 304
  store <16 x i8> %wide.load.9, ptr %i.ar, align 1
  store <16 x i8> %wide.load182.9, ptr %i.as, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 336
  %wide.load.10 = load <16 x i8>, ptr %i.at, align 1
  %wide.load182.10 = load <16 x i8>, ptr %i.au, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 336
  store <16 x i8> %wide.load.10, ptr %i.av, align 1
  store <16 x i8> %wide.load182.10, ptr %i.aw, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 368
  %wide.load.11 = load <16 x i8>, ptr %i.ax, align 1
  %wide.load182.11 = load <16 x i8>, ptr %i.ay, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 368
  store <16 x i8> %wide.load.11, ptr %i.az, align 1
  store <16 x i8> %wide.load182.11, ptr %i.ba, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 400
  %wide.load.12 = load <16 x i8>, ptr %i.bb, align 1
  %wide.load182.12 = load <16 x i8>, ptr %i.bc, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 400
  store <16 x i8> %wide.load.12, ptr %i.bd, align 1
  store <16 x i8> %wide.load182.12, ptr %i.be, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 432
  %wide.load.13 = load <16 x i8>, ptr %i.bf, align 1
  %wide.load182.13 = load <16 x i8>, ptr %i.bg, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 432
  store <16 x i8> %wide.load.13, ptr %i.bh, align 1
  store <16 x i8> %wide.load182.13, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 464
  %wide.load.14 = load <16 x i8>, ptr %i.bj, align 1
  %wide.load182.14 = load <16 x i8>, ptr %i.bk, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 464
  store <16 x i8> %wide.load.14, ptr %i.bl, align 1
  store <16 x i8> %wide.load182.14, ptr %i.bm, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 496
  %wide.load.15 = load <16 x i8>, ptr %i.bn, align 1
  %wide.load182.15 = load <16 x i8>, ptr %i.bo, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 496
  store <16 x i8> %wide.load.15, ptr %i.bp, align 1
  store <16 x i8> %wide.load182.15, ptr %i.bq, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 528
  %wide.load.16 = load <16 x i8>, ptr %i.br, align 1
  %wide.load182.16 = load <16 x i8>, ptr %i.bs, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 528
  store <16 x i8> %wide.load.16, ptr %i.bt, align 1
  store <16 x i8> %wide.load182.16, ptr %i.bu, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 560
  %wide.load.17 = load <16 x i8>, ptr %i.bv, align 1
  %wide.load182.17 = load <16 x i8>, ptr %i.bw, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 560
  store <16 x i8> %wide.load.17, ptr %i.bx, align 1
  store <16 x i8> %wide.load182.17, ptr %i.by, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 592
  %wide.load.18 = load <16 x i8>, ptr %i.bz, align 1
  %wide.load182.18 = load <16 x i8>, ptr %i.ca, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 592
  store <16 x i8> %wide.load.18, ptr %i.cb, align 1
  store <16 x i8> %wide.load182.18, ptr %i.cc, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 624
  %wide.load.19 = load <16 x i8>, ptr %i.cd, align 1
  %wide.load182.19 = load <16 x i8>, ptr %i.ce, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 624
  store <16 x i8> %wide.load.19, ptr %i.cf, align 1
  store <16 x i8> %wide.load182.19, ptr %i.cg, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 656
  %wide.load.20 = load <16 x i8>, ptr %i.ch, align 1
  %wide.load182.20 = load <16 x i8>, ptr %i.ci, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 656
  store <16 x i8> %wide.load.20, ptr %i.cj, align 1
  store <16 x i8> %wide.load182.20, ptr %i.ck, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 688
  %wide.load.21 = load <16 x i8>, ptr %i.cl, align 1
  %wide.load182.21 = load <16 x i8>, ptr %i.cm, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 688
  store <16 x i8> %wide.load.21, ptr %i.cn, align 1
  store <16 x i8> %wide.load182.21, ptr %i.co, align 1
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 720
  %wide.load.22 = load <16 x i8>, ptr %i.cp, align 1
  %wide.load182.22 = load <16 x i8>, ptr %i.cq, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 720
  store <16 x i8> %wide.load.22, ptr %i.cr, align 1
  store <16 x i8> %wide.load182.22, ptr %i.cs, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 736
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 752
  %wide.load.23 = load <16 x i8>, ptr %i.ct, align 1
  %wide.load182.23 = load <16 x i8>, ptr %i.cu, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 752
  store <16 x i8> %wide.load.23, ptr %i.cv, align 1
  store <16 x i8> %wide.load182.23, ptr %i.cw, align 1
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 784
  %wide.load.24 = load <16 x i8>, ptr %i.cx, align 1
  %wide.load182.24 = load <16 x i8>, ptr %i.cy, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 784
end_hunk_5
begin_hunk_6_@jar_xm_envelope_tick:bb.a
  %i.aq = sub nuw nsw i32 %i.ah, %i.ai
  %i.ar = uitofp nneg i32 %i.aq to float
  %i.as = sub nuw nsw i32 %i.ap, %i.ai
  %i.at = uitofp nneg i32 %i.as to float
  %i.au = fdiv float %i.ar, %i.at                 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = uitofp i16 %i.aw to float
  %i.ay = fsub float 1.000000e+00, %i.au
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 6
  %i.ba = load i16, ptr %i.az, align 2
  %i.bb = uitofp i16 %i.ba to float
  %i.bc = fmul float %i.au, %i.bb
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.ay, float %i.bc)
  br label %jar_xm_envelope_lerp.exit

jar_xm_envelope_lerp.exit:                        ; preds = %bb.j, %bb.l, %bb.m
  %.0.i = phi float [ %i.al, %bb.j ], [ %i.ao, %bb.l ], [ %i.bd, %bb.m ]
  %i.be = fmul float %.0.i, 1.562500e-02
  store float %i.be, ptr %3, align 4
  br label %.loopexit

bb.n:                                             ; preds = %bb.g, %bb.h
  %i.bf = add nuw i8 %.048, 1                     ; 2 uses
  %i.bg = icmp ugt i8 %i.aa, %i.bf
  br i1 %i.bg, label %bb.g, label %.loopexit

.loopexit:                                        ; preds = %bb.n, %bb.f, %jar_xm_envelope_lerp.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.bi = load i8, ptr %i.bh, align 2, !range !66, !noundef !53
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.o, label %.loopexit._crit_edge

.loopexit._crit_edge:                             ; preds = %.loopexit
  %.pre53 = load i16, ptr %2, align 2
  br label %bb.q

bb.o:                                             ; preds = %.loopexit
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 53
  %i.bl = load i8, ptr %i.bk, align 1, !range !66, !noundef !53
  %i.bm = trunc nuw i8 %i.bl to i1
  %.pre54 = load i16, ptr %2, align 2             ; 3 uses
  br i1 %i.bm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2
  %.not43 = icmp eq i16 %.pre54, %i.br
  br i1 %.not43, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit._crit_edge, %bb.p, %bb.o
  %i.bs = phi i16 [ %.pre53, %.loopexit._crit_edge ], [ %.pre54, %bb.p ], [ %.pre54, %bb.o ]
  %i.bt = add i16 %i.bs, 1
  store i16 %i.bt, ptr %2, align 2
  br label %bb.r

bb.r:                                             ; preds = %bb.c, %bb.p, %bb.q, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #62

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc float @jar_xm_period(i32 %.64.val, float noundef %0) unnamed_addr #1 {
bb.a:
  switch i32 %.64.val, label %bb.g [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = fneg float %0
  %i.b = tail call noundef float @llvm.fmuladd.f32(float %i.a, float 6.400000e+01, float 7.680000e+03)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = fptoui float %0 to i32                   ; 2 uses
  %i.d = urem i32 %i.c, 12
  %i.e = fdiv float %0, 1.200000e+01
  %i.f = fadd float %i.e, -2.000000e+00
  %i.g = fptosi float %i.f to i8                  ; 3 uses
  %i.h = zext nneg i32 %i.d to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr @amiga_frequencies, i64 %i.h ; 2 uses
  %i.j = load i16, ptr %i.i, align 2              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.l = load i16, ptr %i.k, align 2              ; 3 uses
  %i.m = sext i8 %i.g to i32                      ; 3 uses
  %i.n = icmp sgt i8 %i.g, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = zext i16 %i.j to i32
  %i.p = lshr i32 %i.o, %i.m
  %i.q = trunc nuw nsw i32 %i.p to i16
  %i.r = zext i16 %i.l to i32
  %i.s = lshr i32 %i.r, %i.m
  %i.t = trunc nuw nsw i32 %i.s to i16
  br label %jar_xm_amiga_period.exit

bb.e:                                             ; preds = %bb.c
  %i.u = icmp slt i8 %i.g, 0
  br i1 %i.u, label %bb.f, label %jar_xm_amiga_period.exit

bb.f:                                             ; preds = %bb.e
  %i.v = sub nsw i32 0, %i.m                      ; 2 uses
  %i.w = zext i16 %i.j to i32
  %i.x = shl i32 %i.w, %i.v
  %i.y = trunc i32 %i.x to i16
  %i.z = zext i16 %i.l to i32
  %i.aa = shl i32 %i.z, %i.v
  %i.ab = trunc i32 %i.aa to i16
  br label %jar_xm_amiga_period.exit

jar_xm_amiga_period.exit:                         ; preds = %bb.d, %bb.e, %bb.f
  %.019.i = phi i16 [ %i.q, %bb.d ], [ %i.y, %bb.f ], [ %i.j, %bb.e ] ; 2 uses
  %.0.i = phi i16 [ %i.t, %bb.d ], [ %i.ab, %bb.f ], [ %i.l, %bb.e ]
  %i.ac = zext i16 %.019.i to i32
  %i.ad = uitofp i16 %.019.i to float
  %i.ae = uitofp i32 %i.c to float
  %i.af = fsub float %0, %i.ae
  %i.ag = zext i16 %.0.i to i32
  %i.ah = sub nsw i32 %i.ag, %i.ac
  %i.ai = sitofp i32 %i.ah to float
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.af, float %i.ai, float %i.ad)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %jar_xm_amiga_period.exit, %bb.b
  %.0 = phi float [ %i.aj, %jar_xm_amiga_period.exit ], [ %i.b, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #66

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
declare i8 @llvm.umin.i8(i8, i8) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bitreverse.i32(i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #33

declare float @exp2f(float) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #71

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr captures(none)) local_unnamed_addr #72

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #33

declare float @sqrtf(float) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #66

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i16(i16, i16) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #33

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
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fmuladd.v16f32(<16 x float>, <16 x float>, <16 x float>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.bswap.v2i64(<2 x i64>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.bitreverse.v8i32(<8 x i32>) #33

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
attributes #14 = { nocallback nofree nosync nounwind willreturn }
attributes #15 = { norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
attributes #44 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #46 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #47 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #48 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #49 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #50 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #51 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #52 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #53 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #54 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #55 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #56 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #57 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #58 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #59 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #60 = { nounwind memory(argmem: write) }
attributes #61 = { nounwind }
attributes #62 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #63 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #64 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #65 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #66 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #67 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #68 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #69 = { nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #70 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #71 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #72 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #73 = { nounwind willreturn memory(read) }
attributes #74 = { nounwind allocsize(0) }
attributes #75 = { nounwind willreturn memory(none) }
attributes #76 = { nounwind allocsize(1) }
attributes #77 = { cold }
attributes #78 = { cold nounwind }
attributes #79 = { cold noreturn nounwind }
attributes #80 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!26, !27}
!llvm.ident = !{!28}

!0 = distinct !{null, null}
!1 = distinct !{null, null}
!2 = distinct !{!2, !48}
!3 = distinct !{!3, !48}
!4 = distinct !{null, ptr @ma_free}
!5 = distinct !{null, null}
!6 = distinct !{null, null}
!7 = distinct !{ptr @drwav_free, null}
!8 = distinct !{null}
!9 = distinct !{null, null}
!10 = distinct !{null, null}
!11 = distinct !{null}
!12 = distinct !{null}
!13 = distinct !{null}
!14 = distinct !{null, null, null}
!15 = distinct !{null}
!16 = distinct !{ptr @drmp3_uninit, null}
!17 = distinct !{null, null}
!18 = distinct !{null}
!19 = distinct !{null}
!20 = distinct !{null, null, null}
!21 = distinct !{null, null}
!22 = distinct !{null}
!23 = distinct !{null, null, null}
!24 = distinct !{null, null}
!25 = distinct !{null}
!26 = !{i32 8, !"PIC Level", i32 2}
!27 = !{i32 7, !"uwtable", i32 2}
!28 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!29 = !{ptr @ma_malloc}
end_hunk_6
