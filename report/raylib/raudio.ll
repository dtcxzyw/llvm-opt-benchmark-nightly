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
  %i.d = ptrtoaddr ptr %0 to i64
  %i.e = ptrtoaddr ptr %1 to i64
  %min.iters.check = icmp ult i64 %2, 4
  %i.f = sub i64 %i.e, %i.d
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
  %i.f = ptrtoaddr ptr %0 to i64
  %i.g = ptrtoaddr ptr %1 to i64
  %min.iters.check = icmp ult i64 %i.b, 4
  %i.h = sub i64 %i.g, %i.f
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
begin_hunk_2_@jar_mod_fillbuffer:bb.a
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
  %i.e = ptrtoaddr ptr %0 to i64
  %i.f = ptrtoaddr ptr %1 to i64
  %i.g = sub i64 %i.f, %i.e
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
end_hunk_2
