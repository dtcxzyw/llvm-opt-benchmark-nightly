Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/simplifier?download=true
inline.NumInlined: 193
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 35
begin_hunk_0_@meshopt_simplifySloppy:bb.a
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ep = add nsw i32 %.0125232, -1
  %i.eq = tail call i32 @llvm.smin.i32(i32 %.0121235, i32 %i.ep)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.er = phi i32 [ %i.eo, %bb.j ], [ %i.eq, %bb.k ] ; 4 uses
  %i.es = add nsw i32 %i.er, -1
  %i.et = sitofp i32 %i.es to float               ; 5 uses
  br i1 %.not25.i167, label %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit178, label %.lr.ph.i168

.lr.ph.i168:                                      ; preds = %bb.l
  br i1 %i.w, label %.lr.ph.split.i170.preheader, label %.lr.ph.split.us.i175.preheader

.lr.ph.split.i170.preheader:                      ; preds = %.lr.ph.i168
  %i.eu = insertelement <2 x float> poison, float %i.et, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.split.i170

.lr.ph.split.us.i175.preheader:                   ; preds = %.lr.ph.i168
  br i1 %min.iters.check298, label %.lr.ph.split.us.i175.preheader338, label %vector.ph299

vector.ph299:                                     ; preds = %.lr.ph.split.us.i175.preheader
  %broadcast.splatinsert301 = insertelement <4 x float> poison, float %i.et, i64 0
  %broadcast.splat302 = shufflevector <4 x float> %broadcast.splatinsert301, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  br label %vector.body303

vector.body303:                                   ; preds = %vector.body303, %vector.ph299
  %index304 = phi i64 [ 0, %vector.ph299 ], [ %index.next305, %vector.body303 ] ; 6 uses
  %i.ew = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index304 ; 3 uses
  %i.ex = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index304 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  %i.ez = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index304 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index304 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 36
  %i.fd = load float, ptr %i.ew, align 4, !tbaa !49
  %i.fe = load float, ptr %i.ey, align 4, !tbaa !49
  %i.ff = load float, ptr %i.fa, align 4, !tbaa !49
  %i.fg = load float, ptr %i.fc, align 4, !tbaa !49
  %i.fh = insertelement <4 x float> poison, float %i.fd, i64 0
  %i.fi = insertelement <4 x float> %i.fh, float %i.fe, i64 1
  %i.fj = insertelement <4 x float> %i.fi, float %i.ff, i64 2
  %i.fk = insertelement <4 x float> %i.fj, float %i.fg, i64 3
  %i.fl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fk, <4 x float> %broadcast.splat302, <4 x float> splat (float 5.000000e-01))
  %i.fm = fptosi <4 x float> %i.fl to <4 x i32>
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ez, i64 28
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  %i.fr = load float, ptr %i.fn, align 4, !tbaa !50
  %i.fs = load float, ptr %i.fo, align 4, !tbaa !50
  %i.ft = load float, ptr %i.fp, align 4, !tbaa !50
  %i.fu = load float, ptr %i.fq, align 4, !tbaa !50
  %i.fv = insertelement <4 x float> poison, float %i.fr, i64 0
  %i.fw = insertelement <4 x float> %i.fv, float %i.fs, i64 1
  %i.fx = insertelement <4 x float> %i.fw, float %i.ft, i64 2
  %i.fy = insertelement <4 x float> %i.fx, float %i.fu, i64 3
  %i.fz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fy, <4 x float> %broadcast.splat302, <4 x float> splat (float 5.000000e-01))
  %i.ga = fptosi <4 x float> %i.fz to <4 x i32>
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ex, i64 20
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fb, i64 44
  %i.gf = load float, ptr %i.gb, align 4, !tbaa !46
  %i.gg = load float, ptr %i.gc, align 4, !tbaa !46
  %i.gh = load float, ptr %i.gd, align 4, !tbaa !46
  %i.gi = load float, ptr %i.ge, align 4, !tbaa !46
  %i.gj = insertelement <4 x float> poison, float %i.gf, i64 0
  %i.gk = insertelement <4 x float> %i.gj, float %i.gg, i64 1
  %i.gl = insertelement <4 x float> %i.gk, float %i.gh, i64 2
  %i.gm = insertelement <4 x float> %i.gl, float %i.gi, i64 3
  %i.gn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gm, <4 x float> %broadcast.splat302, <4 x float> splat (float 5.000000e-01))
  %i.go = fptosi <4 x float> %i.gn to <4 x i32>
  %i.gp = shl <4 x i32> %i.fm, splat (i32 20)
  %i.gq = shl <4 x i32> %i.ga, splat (i32 10)
  %i.gr = or <4 x i32> %i.gq, %i.gp
  %i.gs = or <4 x i32> %i.gr, %i.go
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index304
  store <4 x i32> %i.gs, ptr %i.gt, align 4, !tbaa !28
  %index.next305 = add nuw i64 %index304, 4       ; 2 uses
  %i.gu = icmp eq i64 %index.next305, %n.vec300
  br i1 %i.gu, label %middle.block306, label %vector.body303, !llvm.loop !168

middle.block306:                                  ; preds = %vector.body303
  br i1 %cmp.n307, label %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit178, label %.lr.ph.split.us.i175.preheader338

.lr.ph.split.us.i175.preheader338:                ; preds = %.lr.ph.split.us.i175.preheader, %middle.block306
  %.024.us.i176.ph = phi i64 [ 0, %.lr.ph.split.us.i175.preheader ], [ %n.vec300, %middle.block306 ]
  %i.gv = insertelement <2 x float> poison, float %i.et, i64 0
  %i.gw = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.split.us.i175

.lr.ph.split.us.i175:                             ; preds = %.lr.ph.split.us.i175.preheader338, %.lr.ph.split.us.i175
  %.024.us.i176 = phi i64 [ %i.hj, %.lr.ph.split.us.i175 ], [ %.024.us.i176.ph, %.lr.ph.split.us.i175.preheader338 ] ; 3 uses
  %i.gx = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %.024.us.i176 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !46
  %i.ha = tail call float @llvm.fmuladd.f32(float %i.gz, float %i.et, float 5.000000e-01)
  %i.hb = fptosi float %i.ha to i32
  %i.hc = load <2 x float>, ptr %i.gx, align 4, !tbaa !44
  %i.hd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hc, <2 x float> %i.gw, <2 x float> splat (float 5.000000e-01))
  %i.he = fptosi <2 x float> %i.hd to <2 x i32>
  %i.hf = shl <2 x i32> %i.he, <i32 20, i32 10>   ; 2 uses
  %shift322 = shufflevector <2 x i32> %i.hf, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop323 = or <2 x i32> %shift322, %i.hf
  %i.hg = extractelement <2 x i32> %foldExtExtBinop323, i64 0
  %i.hh = or i32 %i.hg, %i.hb
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.024.us.i176
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !28
  %i.hj = add nuw i64 %.024.us.i176, 1            ; 2 uses
  %exitcond27.not.i177 = icmp eq i64 %i.hj, %4
  br i1 %exitcond27.not.i177, label %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit178, label %.lr.ph.split.us.i175, !llvm.loop !169

.lr.ph.split.i170:                                ; preds = %.lr.ph.split.i170.preheader, %bb.o
  %.024.i171 = phi i64 [ %i.id, %bb.o ], [ 0, %.lr.ph.split.i170.preheader ] ; 5 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %6, i64 %.024.i171
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !29
  %i.hm = and i8 %i.hl, 1
  %.not23.i172 = icmp eq i8 %i.hm, 0
  br i1 %.not23.i172, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.i170
  %i.hn = trunc i64 %.024.i171 to i32
  %i.ho = or i32 %i.hn, 1073741824
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph.split.i170
  %i.hp = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %.024.i171 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !46
  %i.hs = tail call float @llvm.fmuladd.f32(float %i.hr, float %i.et, float 5.000000e-01)
  %i.ht = fptosi float %i.hs to i32
  %i.hu = load <2 x float>, ptr %i.hp, align 4, !tbaa !44
  %i.hv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hu, <2 x float> %i.ev, <2 x float> splat (float 5.000000e-01))
  %i.hw = fptosi <2 x float> %i.hv to <2 x i32>
  %i.hx = shl <2 x i32> %i.hw, <i32 20, i32 10>   ; 2 uses
  %i.hy = extractelement <2 x i32> %i.hx, i64 1
  %i.hz = or i32 %i.hy, %i.ht
  %i.ia = extractelement <2 x i32> %i.hx, i64 0
  %i.ib = or i32 %i.hz, %i.ia
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink.i173 = phi i32 [ %i.ib, %bb.n ], [ %i.ho, %bb.m ]
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.024.i171
  store i32 %.sink.i173, ptr %i.ic, align 4, !tbaa !28
  %i.id = add nuw i64 %.024.i171, 1               ; 2 uses
  %exitcond.not.i174 = icmp eq i64 %i.id, %4
  br i1 %exitcond.not.i174, label %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit178, label %.lr.ph.split.i170, !llvm.loop !166

_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit178: ; preds = %.lr.ph.split.us.i175, %bb.o, %middle.block306, %bb.l
  br i1 %.not.i179, label %_ZN7meshoptL14countTrianglesEPKjS1_m.exit184, label %.lr.ph.i180

.lr.ph.i180:                                      ; preds = %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit178, %.lr.ph.i180
  %.021.i181 = phi i64 [ %i.iz, %.lr.ph.i180 ], [ 0, %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit178 ]
  %.01920.i182 = phi i64 [ %i.ja, %.lr.ph.i180 ], [ 0, %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit178 ] ; 2 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01920.i182 ; 3 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !28
  %i.ig = zext i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !28 ; 2 uses
  %i.ij = getelementptr i8, ptr %i.ie, i64 4
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !28
  %i.il = zext i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4, !tbaa !28 ; 2 uses
  %i.io = getelementptr i8, ptr %i.ie, i64 8
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !28
  %i.iq = zext i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !28 ; 2 uses
  %i.it = icmp ne i32 %i.ii, %i.in
  %i.iu = icmp ne i32 %i.ii, %i.is
  %i.iv = and i1 %i.it, %i.iu
  %i.iw = icmp ne i32 %i.in, %i.is
  %i.ix = and i1 %i.iw, %i.iv
  %i.iy = zext i1 %i.ix to i64
  %i.iz = add i64 %.021.i181, %i.iy               ; 2 uses
  %i.ja = add i64 %.01920.i182, 3                 ; 2 uses
  %i.jb = icmp ult i64 %i.ja, %2
  br i1 %i.jb, label %.lr.ph.i180, label %_ZN7meshoptL14countTrianglesEPKjS1_m.exit184, !llvm.loop !167

_ZN7meshoptL14countTrianglesEPKjS1_m.exit184:     ; preds = %.lr.ph.i180, %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit178
  %.0.lcssa.i183 = phi i64 [ 0, %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit178 ], [ %i.iz, %.lr.ph.i180 ] ; 4 uses
  %.not151 = icmp ugt i64 %.0.lcssa.i183, %i.ek   ; 4 uses
  %.0127. = select i1 %.not151, i32 %.0127231, i32 %i.er ; 3 uses
  %..0125 = select i1 %.not151, i32 %i.er, i32 %.0125232 ; 2 uses
  %.1124. = select i1 %.not151, i64 %.1124233, i64 %.0.lcssa.i183 ; 2 uses
  %..0122 = select i1 %.not151, i64 %.0.lcssa.i183, i64 %.0122234
  %i.jc = icmp samesign ult i32 %.0120236, 5
  br i1 %i.jc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN7meshoptL14countTrianglesEPKjS1_m.exit184
  %i.jd = sitofp i32 %i.er to float               ; 3 uses
  %i.je = sitofp i32 %.0125232 to float
  %i.jf = fsub float %i.jd, %i.je                 ; 2 uses
  %i.jg = uitofp i64 %.0122234 to float           ; 3 uses
  %i.jh = fsub nnan float %i.jg, %i.el
  %i.ji = fmul float %i.jh, %i.jf
  %i.jj = uitofp nneg i64 %.1124233 to float      ; 3 uses
  %i.jk = uitofp i64 %.0.lcssa.i183 to float      ; 3 uses
  %i.jl = fsub float %i.jj, %i.jk
  %i.jm = fsub nnan float %i.jj, %i.el
  %i.jn = sitofp i32 %.0127231 to float
  %i.jo = fsub float %i.jd, %i.jn                 ; 2 uses
  %i.jp = fmul float %i.jm, %i.jo
  %i.jq = fsub nnan float %i.jk, %i.jg
  %i.jr = fmul float %i.jp, %i.jq
  %i.js = tail call float @llvm.fmuladd.f32(float %i.ji, float %i.jl, float %i.jr) ; 2 uses
  %i.jt = fcmp oeq float %i.js, 0.000000e+00
  %i.ju = fsub nnan float %i.jg, %i.jj
  %i.jv = fsub nnan float %i.jk, %i.el
  %i.jw = fmul float %i.jf, %i.jv
  %i.jx = fmul float %i.jo, %i.jw
  %i.jy = fmul float %i.ju, %i.jx
  %i.jz = fdiv float %i.jy, %i.js
  %i.ka = select i1 %i.jt, float 0.000000e+00, float %i.jz
  %i.kb = fadd float %i.ka, %i.jd
  %i.kc = fadd float %i.kb, 5.000000e-01
  %i.kd = fptosi float %i.kc to i32
  br label %bb.r

bb.q:                                             ; preds = %_ZN7meshoptL14countTrianglesEPKjS1_m.exit184
  %i.ke = add nsw i32 %.0127., %..0125
  %i.kf = sdiv i32 %i.ke, 2
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.kg = phi i32 [ %i.kd, %bb.p ], [ %i.kf, %bb.q ]
  %i.kh = add nuw nsw i32 %.0120236, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.kh, 15
  br i1 %exitcond.not, label %bb.s, label %bb.h, !llvm.loop !170

bb.s:                                             ; preds = %bb.h, %bb.r
  %.0127.lcssa = phi i32 [ %.0127231, %bb.h ], [ %.0127., %bb.r ]
  %.1124.lcssa = phi i64 [ %.1124233, %bb.h ], [ %.1124., %bb.r ] ; 3 uses
  %i.ki = icmp eq i64 %.1124.lcssa, 0
  br i1 %i.ki, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.not162 = icmp eq ptr %9, null
  br i1 %.not162, label %.lr.ph.i218.preheader, label %.lr.ph.i218.preheader.sink.split

bb.u:                                             ; preds = %bb.s
  %i.kj = lshr i64 %4, 2
  %i.kk = add i64 %i.kj, %4
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %.0.i = phi i64 [ 1, %bb.u ], [ %i.km, %bb.v ]  ; 5 uses
  %i.kl = icmp ult i64 %.0.i, %i.kk
  %i.km = shl i64 %.0.i, 1
  br i1 %i.kl, label %bb.v, label %_ZN7meshoptL12hashBuckets2Em.exit, !llvm.loop !0

_ZN7meshoptL12hashBuckets2Em.exit:                ; preds = %bb.v
  %i.kn = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.ko = icmp ugt i64 %.0.i, 4611686018427387903
  %i.kp = shl i64 %.0.i, 2                        ; 3 uses
  %i.kq = select i1 %i.ko, i64 -1, i64 %i.kp
  %i.kr = invoke noundef ptr %i.kn(i64 noundef %i.kq)
          to label %bb.w unwind label %bb.aw, !inline_history !4 ; 6 uses

bb.w:                                             ; preds = %_ZN7meshoptL12hashBuckets2Em.exit
  store i64 3, ptr %i.g, align 8, !tbaa !26
  %i.ks = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.kr, ptr %i.ks, align 8, !tbaa !27
  %i.kt = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.ku = invoke noundef ptr %i.kt(i64 noundef %i.l)
          to label %bb.x unwind label %bb.aw, !inline_history !4 ; 10 uses

bb.x:                                             ; preds = %bb.w
  store i64 4, ptr %i.g, align 8, !tbaa !26
  %i.kv = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.ku, ptr %i.kv, align 8, !tbaa !27
  %i.kw = add nsw i32 %.0127.lcssa, -1
  %i.kx = sitofp i32 %i.kw to float               ; 5 uses
  br i1 %.not25.i167, label %_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit.thread, label %.lr.ph.i188

.lr.ph.i188:                                      ; preds = %bb.x
  br i1 %i.w, label %.lr.ph.split.i190.preheader, label %.lr.ph.split.us.i195.preheader

.lr.ph.split.i190.preheader:                      ; preds = %.lr.ph.i188
  %i.ky = insertelement <2 x float> poison, float %i.kx, i64 0
  %i.kz = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.split.i190

.lr.ph.split.us.i195.preheader:                   ; preds = %.lr.ph.i188
  %min.iters.check310 = icmp ult i64 %4, 4
  br i1 %min.iters.check310, label %.lr.ph.split.us.i195.preheader336, label %vector.ph311

vector.ph311:                                     ; preds = %.lr.ph.split.us.i195.preheader
  %n.vec312 = and i64 %4, -4                      ; 3 uses
  %broadcast.splatinsert313 = insertelement <4 x float> poison, float %i.kx, i64 0
  %broadcast.splat314 = shufflevector <4 x float> %broadcast.splatinsert313, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  br label %vector.body315

vector.body315:                                   ; preds = %vector.body315, %vector.ph311
  %index316 = phi i64 [ 0, %vector.ph311 ], [ %index.next317, %vector.body315 ] ; 6 uses
  %i.la = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index316 ; 3 uses
  %i.lb = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index316 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 12
  %i.ld = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index316 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 24
  %i.lf = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index316 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 36
  %i.lh = load float, ptr %i.la, align 4, !tbaa !49
  %i.li = load float, ptr %i.lc, align 4, !tbaa !49
  %i.lj = load float, ptr %i.le, align 4, !tbaa !49
  %i.lk = load float, ptr %i.lg, align 4, !tbaa !49
  %i.ll = insertelement <4 x float> poison, float %i.lh, i64 0
  %i.lm = insertelement <4 x float> %i.ll, float %i.li, i64 1
  %i.ln = insertelement <4 x float> %i.lm, float %i.lj, i64 2
  %i.lo = insertelement <4 x float> %i.ln, float %i.lk, i64 3
  %i.lp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lo, <4 x float> %broadcast.splat314, <4 x float> splat (float 5.000000e-01))
  %i.lq = fptosi <4 x float> %i.lp to <4 x i32>
  %i.lr = getelementptr inbounds nuw i8, ptr %i.la, i64 4
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ld, i64 28
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lf, i64 40
  %i.lv = load float, ptr %i.lr, align 4, !tbaa !50
  %i.lw = load float, ptr %i.ls, align 4, !tbaa !50
  %i.lx = load float, ptr %i.lt, align 4, !tbaa !50
  %i.ly = load float, ptr %i.lu, align 4, !tbaa !50
  %i.lz = insertelement <4 x float> poison, float %i.lv, i64 0
  %i.ma = insertelement <4 x float> %i.lz, float %i.lw, i64 1
  %i.mb = insertelement <4 x float> %i.ma, float %i.lx, i64 2
  %i.mc = insertelement <4 x float> %i.mb, float %i.ly, i64 3
  %i.md = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mc, <4 x float> %broadcast.splat314, <4 x float> splat (float 5.000000e-01))
  %i.me = fptosi <4 x float> %i.md to <4 x i32>
  %i.mf = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lb, i64 20
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ld, i64 32
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lf, i64 44
  %i.mj = load float, ptr %i.mf, align 4, !tbaa !46
  %i.mk = load float, ptr %i.mg, align 4, !tbaa !46
  %i.ml = load float, ptr %i.mh, align 4, !tbaa !46
  %i.mm = load float, ptr %i.mi, align 4, !tbaa !46
  %i.mn = insertelement <4 x float> poison, float %i.mj, i64 0
  %i.mo = insertelement <4 x float> %i.mn, float %i.mk, i64 1
  %i.mp = insertelement <4 x float> %i.mo, float %i.ml, i64 2
  %i.mq = insertelement <4 x float> %i.mp, float %i.mm, i64 3
  %i.mr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mq, <4 x float> %broadcast.splat314, <4 x float> splat (float 5.000000e-01))
  %i.ms = fptosi <4 x float> %i.mr to <4 x i32>
  %i.mt = shl <4 x i32> %i.lq, splat (i32 20)
  %i.mu = shl <4 x i32> %i.me, splat (i32 10)
  %i.mv = or <4 x i32> %i.mu, %i.mt
  %i.mw = or <4 x i32> %i.mv, %i.ms
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index316
  store <4 x i32> %i.mw, ptr %i.mx, align 4, !tbaa !28
  %index.next317 = add nuw i64 %index316, 4       ; 2 uses
  %i.my = icmp eq i64 %index.next317, %n.vec312
  br i1 %i.my, label %middle.block318, label %vector.body315, !llvm.loop !171

middle.block318:                                  ; preds = %vector.body315
  %cmp.n319 = icmp eq i64 %4, %n.vec312
  br i1 %cmp.n319, label %.lr.ph33.i, label %.lr.ph.split.us.i195.preheader336

.lr.ph.split.us.i195.preheader336:                ; preds = %.lr.ph.split.us.i195.preheader, %middle.block318
  %.024.us.i196.ph = phi i64 [ 0, %.lr.ph.split.us.i195.preheader ], [ %n.vec312, %middle.block318 ]
  %i.mz = insertelement <2 x float> poison, float %i.kx, i64 0
  %i.na = shufflevector <2 x float> %i.mz, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.split.us.i195

.lr.ph.split.us.i195:                             ; preds = %.lr.ph.split.us.i195.preheader336, %.lr.ph.split.us.i195
  %.024.us.i196 = phi i64 [ %i.nn, %.lr.ph.split.us.i195 ], [ %.024.us.i196.ph, %.lr.ph.split.us.i195.preheader336 ] ; 3 uses
  %i.nb = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %.024.us.i196 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !46
  %i.ne = tail call float @llvm.fmuladd.f32(float %i.nd, float %i.kx, float 5.000000e-01)
  %i.nf = fptosi float %i.ne to i32
  %i.ng = load <2 x float>, ptr %i.nb, align 4, !tbaa !44
  %i.nh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ng, <2 x float> %i.na, <2 x float> splat (float 5.000000e-01))
  %i.ni = fptosi <2 x float> %i.nh to <2 x i32>
  %i.nj = shl <2 x i32> %i.ni, <i32 20, i32 10>   ; 2 uses
  %shift325 = shufflevector <2 x i32> %i.nj, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop326 = or <2 x i32> %shift325, %i.nj
  %i.nk = extractelement <2 x i32> %foldExtExtBinop326, i64 0
  %i.nl = or i32 %i.nk, %i.nf
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.024.us.i196
  store i32 %i.nl, ptr %i.nm, align 4, !tbaa !28
  %i.nn = add nuw i64 %.024.us.i196, 1            ; 2 uses
  %exitcond27.not.i197 = icmp eq i64 %i.nn, %4
  br i1 %exitcond27.not.i197, label %.lr.ph33.i, label %.lr.ph.split.us.i195, !llvm.loop !172

.lr.ph.split.i190:                                ; preds = %.lr.ph.split.i190.preheader, %bb.aa
  %.024.i191 = phi i64 [ %i.oh, %bb.aa ], [ 0, %.lr.ph.split.i190.preheader ] ; 5 uses
  %i.no = getelementptr inbounds nuw i8, ptr %6, i64 %.024.i191
  %i.np = load i8, ptr %i.no, align 1, !tbaa !29
  %i.nq = and i8 %i.np, 1
  %.not23.i192 = icmp eq i8 %i.nq, 0
  br i1 %.not23.i192, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.split.i190
  %i.nr = trunc i64 %.024.i191 to i32
  %i.ns = or i32 %i.nr, 1073741824
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph.split.i190
  %i.nt = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %.024.i191 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !46
  %i.nw = tail call float @llvm.fmuladd.f32(float %i.nv, float %i.kx, float 5.000000e-01)
  %i.nx = fptosi float %i.nw to i32
  %i.ny = load <2 x float>, ptr %i.nt, align 4, !tbaa !44
  %i.nz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ny, <2 x float> %i.kz, <2 x float> splat (float 5.000000e-01))
  %i.oa = fptosi <2 x float> %i.nz to <2 x i32>
  %i.ob = shl <2 x i32> %i.oa, <i32 20, i32 10>   ; 2 uses
  %i.oc = extractelement <2 x i32> %i.ob, i64 1
  %i.od = or i32 %i.oc, %i.nx
  %i.oe = extractelement <2 x i32> %i.ob, i64 0
  %i.of = or i32 %i.od, %i.oe
  br label %bb.aa
end_hunk_0
begin_hunk_1_@meshopt_simplifyPoints:bb.a
  %i.w = invoke noundef ptr %i.s(i64 noundef %i.v)
          to label %bb.f unwind label %bb.ac, !inline_history !4 ; 11 uses

bb.f:                                             ; preds = %_ZN7meshoptL12hashBuckets2Em.exit
  store i64 3, ptr %i.g, align 8, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.w, ptr %i.x, align 8, !tbaa !27
  %i.y = uitofp i64 %7 to float                   ; 4 uses
  %sqrt = tail call float @llvm.sqrt.f32(float %i.y)
  %i.z = fadd float %sqrt, 5.000000e-01
  %i.aa = fptosi float %i.z to i32
  %.not25.i = icmp eq i64 %2, 0                   ; 4 uses
  %i.ab = add i64 %.0.i, -1                       ; 6 uses
  %min.iters.check = icmp ult i64 %2, 4
  %n.vec = and i64 %2, -4                         ; 3 uses
  %cmp.n = icmp eq i64 %2, %n.vec
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.o
  %.095170 = phi i32 [ 0, %bb.f ], [ %i.fd, %bb.o ] ; 2 uses
  %.096169 = phi i32 [ %i.aa, %bb.f ], [ %.197, %bb.o ] ; 2 uses
  %.098168 = phi i64 [ %2, %bb.f ], [ %..098, %bb.o ] ; 2 uses
  %.0100167 = phi i64 [ 0, %bb.f ], [ %.0100., %bb.o ] ; 2 uses
  %.0102166 = phi i32 [ 1025, %bb.f ], [ %..0102, %bb.o ] ; 3 uses
  %.0104165 = phi i32 [ 0, %bb.f ], [ %.0104., %bb.o ] ; 4 uses
  %.not = icmp sgt i32 %.096169, %.0104165
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = add nsw i32 %.0104165, 1
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ad = add nsw i32 %.0102166, -1
  %i.ae = tail call i32 @llvm.smin.i32(i32 %.096169, i32 %i.ad)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = phi i32 [ %i.ac, %bb.h ], [ %i.ae, %bb.i ] ; 4 uses
  %i.ag = add nsw i32 %i.af, -1
  %i.ah = sitofp i32 %i.ag to float               ; 3 uses
  br i1 %.not25.i, label %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit.thread, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us.i.preheader:                      ; preds = %bb.j
  br i1 %min.iters.check, label %.lr.ph.split.us.i.preheader231, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us.i.preheader
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ah, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.ai = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 36
  %i.ap = load float, ptr %i.ai, align 4, !tbaa !49
  %i.aq = load float, ptr %i.ak, align 4, !tbaa !49
  %i.ar = load float, ptr %i.am, align 4, !tbaa !49
  %i.as = load float, ptr %i.ao, align 4, !tbaa !49
  %i.at = insertelement <4 x float> poison, float %i.ap, i64 0
  %i.au = insertelement <4 x float> %i.at, float %i.aq, i64 1
  %i.av = insertelement <4 x float> %i.au, float %i.ar, i64 2
  %i.aw = insertelement <4 x float> %i.av, float %i.as, i64 3
  %i.ax = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aw, <4 x float> %broadcast.splat, <4 x float> splat (float 5.000000e-01))
  %i.ay = fptosi <4 x float> %i.ax to <4 x i32>
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 28
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.bd = load float, ptr %i.az, align 4, !tbaa !50
  %i.be = load float, ptr %i.ba, align 4, !tbaa !50
  %i.bf = load float, ptr %i.bb, align 4, !tbaa !50
  %i.bg = load float, ptr %i.bc, align 4, !tbaa !50
  %i.bh = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 1
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 2
  %i.bk = insertelement <4 x float> %i.bj, float %i.bg, i64 3
  %i.bl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bk, <4 x float> %broadcast.splat, <4 x float> splat (float 5.000000e-01))
  %i.bm = fptosi <4 x float> %i.bl to <4 x i32>
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %i.bp = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.an, i64 44
  %i.br = load float, ptr %i.bn, align 4, !tbaa !46
  %i.bs = load float, ptr %i.bo, align 4, !tbaa !46
  %i.bt = load float, ptr %i.bp, align 4, !tbaa !46
  %i.bu = load float, ptr %i.bq, align 4, !tbaa !46
  %i.bv = insertelement <4 x float> poison, float %i.br, i64 0
  %i.bw = insertelement <4 x float> %i.bv, float %i.bs, i64 1
  %i.bx = insertelement <4 x float> %i.bw, float %i.bt, i64 2
  %i.by = insertelement <4 x float> %i.bx, float %i.bu, i64 3
  %i.bz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.by, <4 x float> %broadcast.splat, <4 x float> splat (float 5.000000e-01))
  %i.ca = fptosi <4 x float> %i.bz to <4 x i32>
  %i.cb = shl <4 x i32> %i.ay, splat (i32 20)
  %i.cc = shl <4 x i32> %i.bm, splat (i32 10)
  %i.cd = or <4 x i32> %i.cc, %i.cb
  %i.ce = or <4 x i32> %i.cd, %i.ca
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index
  store <4 x i32> %i.ce, ptr %i.cf, align 4, !tbaa !28
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !178

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.lr.ph21.i, label %.lr.ph.split.us.i.preheader231

.lr.ph.split.us.i.preheader231:                   ; preds = %.lr.ph.split.us.i.preheader, %middle.block
  %.024.us.i.ph = phi i64 [ 0, %.lr.ph.split.us.i.preheader ], [ %n.vec, %middle.block ]
  %i.ch = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.split.us.i

_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit.thread: ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 -1, i64 %i.u, i1 false)
  br label %_ZN7meshoptL16countVertexCellsEPjmPKjm.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader231, %.lr.ph.split.us.i
  %.024.us.i = phi i64 [ %i.cv, %.lr.ph.split.us.i ], [ %.024.us.i.ph, %.lr.ph.split.us.i.preheader231 ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %.024.us.i ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !46
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.ah, float 5.000000e-01)
  %i.cn = fptosi float %i.cm to i32
  %i.co = load <2 x float>, ptr %i.cj, align 4, !tbaa !44
  %i.cp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.co, <2 x float> %i.ci, <2 x float> splat (float 5.000000e-01))
  %i.cq = fptosi <2 x float> %i.cp to <2 x i32>
  %i.cr = shl <2 x i32> %i.cq, <i32 20, i32 10>   ; 2 uses
  %shift = shufflevector <2 x i32> %i.cr, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or <2 x i32> %shift, %i.cr
  %i.cs = extractelement <2 x i32> %foldExtExtBinop, i64 0
  %i.ct = or i32 %i.cs, %i.cn
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.024.us.i
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !28
  %i.cv = add nuw i64 %.024.us.i, 1               ; 2 uses
  %exitcond27.not.i = icmp eq i64 %i.cv, %2
  br i1 %exitcond27.not.i, label %.lr.ph21.i, label %.lr.ph.split.us.i, !llvm.loop !179

.lr.ph21.i:                                       ; preds = %.lr.ph.split.us.i, %middle.block
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 -1, i64 %i.u, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %_ZN7meshoptL11hashLookup2IjNS_8IdHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i, %.lr.ph21.i
  %.020.i = phi i64 [ 0, %.lr.ph21.i ], [ %i.du, %_ZN7meshoptL11hashLookup2IjNS_8IdHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i ]
  %.01219.i = phi i64 [ 0, %.lr.ph21.i ], [ %i.dv, %_ZN7meshoptL11hashLookup2IjNS_8IdHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.01219.i
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !28 ; 5 uses
  %i.cy = lshr i32 %i.cx, 13
  %i.cz = xor i32 %i.cy, %i.cx
  %i.da = mul i32 %i.cz, 1540483477               ; 2 uses
  %i.db = lshr i32 %i.da, 15
  %i.dc = xor i32 %i.db, %i.da
  %i.dd = zext i32 %i.dc to i64
  %i.de = and i64 %i.ab, %i.dd                    ; 3 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !28 ; 3 uses
  %i.dh = icmp eq i32 %i.dg, -1
  %i.di = icmp eq i32 %i.dg, %i.cx
  %or.cond.i16.i = or i1 %i.dh, %i.di
  br i1 %or.cond.i16.i, label %_ZN7meshoptL11hashLookup2IjNS_8IdHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i, label %.lr.ph.i134

.lr.ph.i134:                                      ; preds = %bb.k, %.lr.ph.i134
  %.0238.i18.i = phi i64 [ %i.dl, %.lr.ph.i134 ], [ %i.de, %bb.k ]
  %.0229.i17.i = phi i64 [ %i.dj, %.lr.ph.i134 ], [ 0, %bb.k ]
  %i.dj = add i64 %.0229.i17.i, 1                 ; 3 uses
  %i.dk = add i64 %i.dj, %.0238.i18.i
  %i.dl = and i64 %i.dk, %i.ab                    ; 3 uses
  %.not.i.i = icmp ule i64 %i.dj, %i.ab
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !28 ; 3 uses
  %i.do = icmp eq i32 %i.dn, -1
  %i.dp = icmp eq i32 %i.dn, %i.cx
  %or.cond.i.i = or i1 %i.do, %i.dp
  br i1 %or.cond.i.i, label %_ZN7meshoptL11hashLookup2IjNS_8IdHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i, label %.lr.ph.i134

_ZN7meshoptL11hashLookup2IjNS_8IdHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i: ; preds = %.lr.ph.i134, %bb.k
  %i.dq = phi i32 [ %i.dg, %bb.k ], [ %i.dn, %.lr.ph.i134 ]
  %.0238.i.lcssa.i = phi i64 [ %i.de, %bb.k ], [ %i.dl, %.lr.ph.i134 ]
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.0238.i.lcssa.i
  %i.ds = icmp eq i32 %i.dq, -1
  %i.dt = zext i1 %i.ds to i64
  %i.du = add i64 %.020.i, %i.dt                  ; 2 uses
  store i32 %i.cx, ptr %i.dr, align 4, !tbaa !28
  %i.dv = add nuw i64 %.01219.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dv, %2
  br i1 %exitcond.not.i, label %_ZN7meshoptL16countVertexCellsEPjmPKjm.exit, label %bb.k, !llvm.loop !180

_ZN7meshoptL16countVertexCellsEPjmPKjm.exit:      ; preds = %_ZN7meshoptL11hashLookup2IjNS_8IdHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i, %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit.thread
  %.0.lcssa.i = phi i64 [ 0, %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit.thread ], [ %i.du, %_ZN7meshoptL11hashLookup2IjNS_8IdHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i ] ; 5 uses
  %i.dw = sitofp i32 %.0104165 to float
  %i.dx = uitofp i64 %.0100167 to float           ; 3 uses
  %i.dy = sitofp i32 %i.af to float               ; 3 uses
  %i.dz = uitofp i64 %.0.lcssa.i to float         ; 3 uses
  %i.ea = sitofp i32 %.0102166 to float
  %i.eb = uitofp i64 %.098168 to float            ; 3 uses
  %i.ec = fsub nnan float %i.dz, %i.y
  %i.ed = fsub float %i.dy, %i.ea                 ; 2 uses
  %i.ee = fmul float %i.ed, %i.ec
  %i.ef = fsub float %i.dy, %i.dw                 ; 2 uses
  %i.eg = fmul float %i.ef, %i.ee
  %i.eh = fsub nnan float %i.eb, %i.dx
  %i.ei = fmul float %i.eh, %i.eg
  %i.ej = fsub nnan float %i.eb, %i.y
  %i.ek = fmul float %i.ej, %i.ed
  %i.el = fsub float %i.dx, %i.dz
  %i.em = fsub nnan float %i.dx, %i.y
  %i.en = fmul float %i.em, %i.ef
  %i.eo = fsub nnan float %i.dz, %i.eb
  %i.ep = fmul float %i.en, %i.eo
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.ek, float %i.el, float %i.ep) ; 2 uses
  %i.er = fcmp oeq float %i.eq, 0.000000e+00
  %i.es = fdiv float %i.ei, %i.eq
  %i.et = select i1 %i.er, float 0.000000e+00, float %i.es
  %i.eu = fadd float %i.et, %i.dy
  %.not123 = icmp ugt i64 %.0.lcssa.i, %7         ; 4 uses
  %.0104. = select i1 %.not123, i32 %.0104165, i32 %i.af ; 5 uses
  %..0102 = select i1 %.not123, i32 %i.af, i32 %.0102166 ; 3 uses
  %.0100. = select i1 %.not123, i64 %.0100167, i64 %.0.lcssa.i ; 2 uses
  %..098 = select i1 %.not123, i64 %.0.lcssa.i, i64 %.098168
  %i.ev = icmp eq i64 %.0.lcssa.i, %7
  %i.ew = sub nsw i32 %..0102, %.0104.
  %i.ex = icmp slt i32 %i.ew, 2
  %or.cond = select i1 %i.ev, i1 true, i1 %i.ex
  br i1 %or.cond, label %.critedge, label %bb.l

bb.l:                                             ; preds = %_ZN7meshoptL16countVertexCellsEPjmPKjm.exit
  %i.ey = icmp samesign ult i32 %.095170, 5
  br i1 %i.ey, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ez = fadd float %i.eu, 5.000000e-01
  %i.fa = fptosi float %i.ez to i32
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.fb = add nsw i32 %.0104., %..0102
  %i.fc = sdiv i32 %i.fb, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.197 = phi i32 [ %i.fc, %bb.n ], [ %i.fa, %bb.m ]
  %i.fd = add nuw nsw i32 %.095170, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.fd, 15
  br i1 %exitcond.not, label %.critedge, label %bb.g, !llvm.loop !181

.critedge:                                        ; preds = %_ZN7meshoptL16countVertexCellsEPjmPKjm.exit, %bb.o
  %i.fe = icmp eq i64 %.0100., 0
  br i1 %i.fe, label %.lr.ph.i154.preheader, label %bb.p

bb.p:                                             ; preds = %.critedge
  %i.ff = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.fg = invoke noundef ptr %i.ff(i64 noundef %i.l)
          to label %bb.q unwind label %bb.ac, !inline_history !4 ; 6 uses

bb.q:                                             ; preds = %bb.p
  store i64 4, ptr %i.g, align 8, !tbaa !26
  %i.fh = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !27
  %i.fi = add nsw i32 %.0104., -1
  %i.fj = sitofp i32 %i.fi to float               ; 4 uses
  br i1 %.not25.i, label %_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit.thread, label %.lr.ph.split.us.i138.preheader

.lr.ph.split.us.i138.preheader:                   ; preds = %bb.q
  %min.iters.check201 = icmp ult i64 %2, 4
  br i1 %min.iters.check201, label %.lr.ph.split.us.i138.preheader230, label %vector.ph202

vector.ph202:                                     ; preds = %.lr.ph.split.us.i138.preheader
  %n.vec203 = and i64 %2, -4                      ; 3 uses
  %broadcast.splatinsert204 = insertelement <4 x float> poison, float %i.fj, i64 0
  %broadcast.splat205 = shufflevector <4 x float> %broadcast.splatinsert204, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  br label %vector.body206

vector.body206:                                   ; preds = %vector.body206, %vector.ph202
  %index207 = phi i64 [ 0, %vector.ph202 ], [ %index.next208, %vector.body206 ] ; 6 uses
  %i.fk = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index207 ; 3 uses
  %i.fl = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index207 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  %i.fn = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index207 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fp = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index207 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 36
  %i.fr = load float, ptr %i.fk, align 4, !tbaa !49
  %i.fs = load float, ptr %i.fm, align 4, !tbaa !49
  %i.ft = load float, ptr %i.fo, align 4, !tbaa !49
  %i.fu = load float, ptr %i.fq, align 4, !tbaa !49
  %i.fv = insertelement <4 x float> poison, float %i.fr, i64 0
  %i.fw = insertelement <4 x float> %i.fv, float %i.fs, i64 1
  %i.fx = insertelement <4 x float> %i.fw, float %i.ft, i64 2
  %i.fy = insertelement <4 x float> %i.fx, float %i.fu, i64 3
  %i.fz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fy, <4 x float> %broadcast.splat205, <4 x float> splat (float 5.000000e-01))
  %i.ga = fptosi <4 x float> %i.fz to <4 x i32>
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fn, i64 28
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  %i.gf = load float, ptr %i.gb, align 4, !tbaa !50
  %i.gg = load float, ptr %i.gc, align 4, !tbaa !50
  %i.gh = load float, ptr %i.gd, align 4, !tbaa !50
  %i.gi = load float, ptr %i.ge, align 4, !tbaa !50
  %i.gj = insertelement <4 x float> poison, float %i.gf, i64 0
  %i.gk = insertelement <4 x float> %i.gj, float %i.gg, i64 1
  %i.gl = insertelement <4 x float> %i.gk, float %i.gh, i64 2
  %i.gm = insertelement <4 x float> %i.gl, float %i.gi, i64 3
  %i.gn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gm, <4 x float> %broadcast.splat205, <4 x float> splat (float 5.000000e-01))
  %i.go = fptosi <4 x float> %i.gn to <4 x i32>
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fl, i64 20
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fp, i64 44
  %i.gt = load float, ptr %i.gp, align 4, !tbaa !46
  %i.gu = load float, ptr %i.gq, align 4, !tbaa !46
  %i.gv = load float, ptr %i.gr, align 4, !tbaa !46
  %i.gw = load float, ptr %i.gs, align 4, !tbaa !46
  %i.gx = insertelement <4 x float> poison, float %i.gt, i64 0
  %i.gy = insertelement <4 x float> %i.gx, float %i.gu, i64 1
  %i.gz = insertelement <4 x float> %i.gy, float %i.gv, i64 2
  %i.ha = insertelement <4 x float> %i.gz, float %i.gw, i64 3
  %i.hb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ha, <4 x float> %broadcast.splat205, <4 x float> splat (float 5.000000e-01))
  %i.hc = fptosi <4 x float> %i.hb to <4 x i32>
  %i.hd = shl <4 x i32> %i.ga, splat (i32 20)
  %i.he = shl <4 x i32> %i.go, splat (i32 10)
  %i.hf = or <4 x i32> %i.he, %i.hd
  %i.hg = or <4 x i32> %i.hf, %i.hc
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index207
  store <4 x i32> %i.hg, ptr %i.hh, align 4, !tbaa !28
  %index.next208 = add nuw i64 %index207, 4       ; 2 uses
  %i.hi = icmp eq i64 %index.next208, %n.vec203
  br i1 %i.hi, label %middle.block209, label %vector.body206, !llvm.loop !182

middle.block209:                                  ; preds = %vector.body206
  %cmp.n210 = icmp eq i64 %2, %n.vec203
  br i1 %cmp.n210, label %.lr.ph33.i, label %.lr.ph.split.us.i138.preheader230

.lr.ph.split.us.i138.preheader230:                ; preds = %.lr.ph.split.us.i138.preheader, %middle.block209
  %.024.us.i139.ph = phi i64 [ 0, %.lr.ph.split.us.i138.preheader ], [ %n.vec203, %middle.block209 ]
  %i.hj = insertelement <2 x float> poison, float %i.fj, i64 0
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.split.us.i138

_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit.thread: ; preds = %bb.q
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 -1, i64 %i.u, i1 false)
  br label %bb.u

.lr.ph.split.us.i138:                             ; preds = %.lr.ph.split.us.i138.preheader230, %.lr.ph.split.us.i138
  %.024.us.i139 = phi i64 [ %i.hx, %.lr.ph.split.us.i138 ], [ %.024.us.i139.ph, %.lr.ph.split.us.i138.preheader230 ] ; 3 uses
  %i.hl = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %.024.us.i139 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !46
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.hn, float %i.fj, float 5.000000e-01)
  %i.hp = fptosi float %i.ho to i32
  %i.hq = load <2 x float>, ptr %i.hl, align 4, !tbaa !44
  %i.hr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hq, <2 x float> %i.hk, <2 x float> splat (float 5.000000e-01))
  %i.hs = fptosi <2 x float> %i.hr to <2 x i32>
  %i.ht = shl <2 x i32> %i.hs, <i32 20, i32 10>   ; 2 uses
  %shift223 = shufflevector <2 x i32> %i.ht, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop224 = or <2 x i32> %shift223, %i.ht
  %i.hu = extractelement <2 x i32> %foldExtExtBinop224, i64 0
  %i.hv = or i32 %i.hu, %i.hp
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.024.us.i139
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !28
  %i.hx = add nuw i64 %.024.us.i139, 1            ; 2 uses
  %exitcond27.not.i140 = icmp eq i64 %i.hx, %2
  br i1 %exitcond27.not.i140, label %.lr.ph33.i, label %.lr.ph.split.us.i138, !llvm.loop !183

.lr.ph33.i:                                       ; preds = %.lr.ph.split.us.i138, %middle.block209
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 -1, i64 %i.u, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.lr.ph33.i
  %.032.i = phi i64 [ 0, %.lr.ph33.i ], [ %i.jc, %bb.t ] ; 4 uses
  %.01930.i = phi i64 [ 0, %.lr.ph33.i ], [ %.1.i, %bb.t ] ; 3 uses
  %i.hy = trunc i64 %.032.i to i32
  %i.hz = and i64 %.032.i, 4294967295
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !28 ; 3 uses
  %i.ic = lshr i32 %i.ib, 13
  %i.id = xor i32 %i.ic, %i.ib
  %i.ie = mul i32 %i.id, 1540483477               ; 2 uses
  %i.if = lshr i32 %i.ie, 15
  %i.ig = xor i32 %i.if, %i.ie
  %i.ih = zext i32 %i.ig to i64
  %i.ii = and i64 %i.ab, %i.ih                    ; 3 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ii
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !28 ; 2 uses
  %i.il = icmp eq i32 %i.ik, -1
  br i1 %i.il, label %_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i, label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %bb.r, %bb.s
  %.pr.i = phi i32 [ %i.iu, %bb.s ], [ %i.ik, %bb.r ]
  %.02313.i29.i = phi i64 [ %i.is, %bb.s ], [ %i.ii, %bb.r ]
  %.02214.i28.i = phi i64 [ %i.iq, %bb.s ], [ 0, %bb.r ]
  %i.im = zext i32 %.pr.i to i64                  ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4, !tbaa !28
  %i.ip = icmp eq i32 %i.io, %i.ib
  br i1 %i.ip, label %_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i143
  %i.iq = add i64 %.02214.i28.i, 1                ; 3 uses
  %i.ir = add i64 %i.iq, %.02313.i29.i
  %i.is = and i64 %i.ir, %i.ab                    ; 3 uses
  %.not.i.i144 = icmp ule i64 %i.iq, %i.ab
  tail call void @llvm.assume(i1 %.not.i.i144)
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !28 ; 2 uses
  %i.iv = icmp eq i32 %i.iu, -1
  br i1 %i.iv, label %_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i, label %.lr.ph.i143

end_hunk_1
