Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rcore?download=true
inline.NumInlined: 1934
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@UpdateCameraPro:bb.a
  %i.fg = fmul float %.sroa.016.0.vec.extract, %.sroa.11.1.i ; 2 uses
  %i.fh = fadd <2 x float> %.sroa.030.0.copyload.i, %i.ff ; 2 uses
  %i.fi = fadd float %.sroa.210.0.copyload.i.i27, %i.fg ; 2 uses
  %i.fj = fadd <2 x float> %i.bn, %i.ff           ; 2 uses
  %i.fk = fadd float %.sroa.212.0.copyload.i.i24, %i.fg ; 2 uses
  %.sroa.016.4.vec.extract = extractelement <2 x float> %1, i64 1
  %i.fl = fsub <2 x float> %i.fj, %i.fh           ; 5 uses
  %i.fm = fsub float %i.fk, %i.fi                 ; 4 uses
  %foldExtExtBinop106 = fmul <2 x float> %i.fl, %i.fl
  %i.fn = extractelement <2 x float> %foldExtExtBinop106, i64 1
  %i.fo = extractelement <2 x float> %i.fl, i64 0 ; 2 uses
  %i.fp = tail call float @llvm.fmuladd.f32(float %i.fo, float %i.fo, float %i.fn)
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.fm, float %i.fm, float %i.fp) ; 2 uses
  %i.fr = fcmp une float %i.fq, 0.000000e+00
  br i1 %i.fr, label %bb.j, label %GetCameraForward.exit.i.i

bb.j:                                             ; preds = %CameraMoveForward.exit
  %sqrt.i.i.i.i = tail call float @llvm.sqrt.f32(float %i.fq)
  %i.fs = fdiv float 1.000000e+00, %sqrt.i.i.i.i  ; 2 uses
  %i.ft = insertelement <2 x float> poison, float %i.fs, i64 0
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fv = fmul <2 x float> %i.fl, %i.fu
  %i.fw = fmul float %i.fm, %i.fs
  br label %GetCameraForward.exit.i.i

GetCameraForward.exit.i.i:                        ; preds = %bb.j, %CameraMoveForward.exit
  %.sroa.013.0.i.i.i.i = phi <2 x float> [ %i.fv, %bb.j ], [ %i.fl, %CameraMoveForward.exit ] ; 2 uses
  %.sroa.617.0.i.i.i.i = phi float [ %i.fw, %bb.j ], [ %i.fm, %CameraMoveForward.exit ] ; 2 uses
  %foldExtExtBinop108 = fmul <2 x float> %i.ef, %i.ef
  %i.fx = extractelement <2 x float> %foldExtExtBinop108, i64 1
  %i.fy = extractelement <2 x float> %i.ef, i64 0 ; 3 uses
  %i.fz = tail call float @llvm.fmuladd.f32(float %i.fy, float %i.fy, float %i.fx)
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.eg, float %i.eg, float %i.fz) ; 3 uses
  %i.gb = fcmp une float %i.ga, 0.000000e+00      ; 2 uses
  br i1 %i.gb, label %bb.k, label %GetCameraUp.exit.i.i

bb.k:                                             ; preds = %GetCameraForward.exit.i.i
  %sqrt.i.i31.i.i = tail call float @llvm.sqrt.f32(float %i.ga)
  %i.gc = fdiv float 1.000000e+00, %sqrt.i.i31.i.i ; 2 uses
  %i.gd = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.ge = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gf = fmul <2 x float> %i.ef, %i.ge
  %i.gg = fmul float %i.eg, %i.gc
  br label %GetCameraUp.exit.i.i

GetCameraUp.exit.i.i:                             ; preds = %bb.k, %GetCameraForward.exit.i.i
  %.sroa.617.0.i.i30.i.i = phi float [ %i.eg, %GetCameraForward.exit.i.i ], [ %i.gg, %bb.k ] ; 2 uses
  %i.gh = phi <2 x float> [ %i.ef, %GetCameraForward.exit.i.i ], [ %i.gf, %bb.k ] ; 2 uses
  %.sroa.011.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.013.0.i.i.i.i, i64 1 ; 2 uses
  %i.gi = extractelement <2 x float> %i.gh, i64 1 ; 2 uses
  %i.gj = fneg float %i.gi
  %i.gk = fmul float %.sroa.617.0.i.i.i.i, %i.gj
  %i.gl = tail call float @llvm.fmuladd.f32(float %.sroa.011.4.vec.extract.i.i.i, float %.sroa.617.0.i.i30.i.i, float %i.gk) ; 4 uses
  %.sroa.018.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %i.gl, i64 0
  %.sroa.011.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.013.0.i.i.i.i, i64 0 ; 2 uses
  %i.gm = fneg float %.sroa.617.0.i.i30.i.i
  %i.gn = fmul float %.sroa.011.0.vec.extract.i.i.i, %i.gm
  %i.go = extractelement <2 x float> %i.gh, i64 0 ; 2 uses
  %i.gp = tail call float @llvm.fmuladd.f32(float %.sroa.617.0.i.i.i.i, float %i.go, float %i.gn) ; 4 uses
  %.sroa.018.4.vec.insert.i.i.i = insertelement <2 x float> %.sroa.018.0.vec.insert.i.i.i, float %i.gp, i64 1
  %i.gq = fneg float %i.go
  %i.gr = fmul float %.sroa.011.4.vec.extract.i.i.i, %i.gq
  %i.gs = tail call float @llvm.fmuladd.f32(float %.sroa.011.0.vec.extract.i.i.i, float %i.gi, float %i.gr) ; 4 uses
  %i.gt = fmul float %i.gp, %i.gp
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.gl, float %i.gl, float %i.gt)
  %i.gv = tail call float @llvm.fmuladd.f32(float %i.gs, float %i.gs, float %i.gu) ; 2 uses
  %i.gw = fcmp une float %i.gv, 0.000000e+00
  br i1 %i.gw, label %bb.l, label %GetCameraRight.exit.i

bb.l:                                             ; preds = %GetCameraUp.exit.i.i
  %sqrt.i.i.i59 = tail call float @llvm.sqrt.f32(float %i.gv)
  %i.gx = fdiv float 1.000000e+00, %sqrt.i.i.i59  ; 3 uses
  %i.gy = fmul float %i.gl, %i.gx
  %.sroa.013.0.vec.insert.i.i.i60 = insertelement <2 x float> poison, float %i.gy, i64 0
  %i.gz = fmul float %i.gp, %i.gx
  %.sroa.013.4.vec.insert.i.i.i61 = insertelement <2 x float> %.sroa.013.0.vec.insert.i.i.i60, float %i.gz, i64 1
  %i.ha = fmul float %i.gs, %i.gx
  br label %GetCameraRight.exit.i

GetCameraRight.exit.i:                            ; preds = %bb.l, %GetCameraUp.exit.i.i
  %.sroa.013.0.i.i.i40 = phi <2 x float> [ %.sroa.013.4.vec.insert.i.i.i61, %bb.l ], [ %.sroa.018.4.vec.insert.i.i.i, %GetCameraUp.exit.i.i ] ; 3 uses
  %.sroa.617.0.i.i.i41 = phi float [ %i.ha, %bb.l ], [ %i.gs, %GetCameraUp.exit.i.i ] ; 2 uses
  br i1 %i.eq, label %bb.p, label %bb.m

bb.m:                                             ; preds = %GetCameraRight.exit.i
  %i.hb = tail call float @llvm.fabs.f32(float %i.fy)
  %i.hc = fcmp ogt float %i.hb, f0x3F350481
  br i1 %i.hc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.sroa.036.0.vec.insert.i58 = insertelement <2 x float> %.sroa.013.0.i.i.i40, float 0.000000e+00, i64 0
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %.sroa.036.4.vec.insert.i42 = insertelement <2 x float> %.sroa.013.0.i.i.i40, float 0.000000e+00, i64 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %GetCameraRight.exit.i
  %.sroa.036.0.i43 = phi <2 x float> [ %.sroa.036.4.vec.insert.i42, %bb.o ], [ %.sroa.036.0.vec.insert.i58, %bb.n ], [ %.sroa.013.0.i.i.i40, %GetCameraRight.exit.i ] ; 5 uses
  %.sroa.11.0.i44 = phi float [ %.sroa.617.0.i.i.i41, %bb.o ], [ %.sroa.617.0.i.i.i41, %bb.n ], [ 0.000000e+00, %GetCameraRight.exit.i ] ; 4 uses
  %.sroa.07.0.vec.extract.i.i45 = extractelement <2 x float> %.sroa.036.0.i43, i64 0 ; 2 uses
  %foldExtExtBinop110 = fmul <2 x float> %.sroa.036.0.i43, %.sroa.036.0.i43
  %i.hd = extractelement <2 x float> %foldExtExtBinop110, i64 1
  %i.he = tail call float @llvm.fmuladd.f32(float %.sroa.07.0.vec.extract.i.i45, float %.sroa.07.0.vec.extract.i.i45, float %i.hd)
  %i.hf = tail call float @llvm.fmuladd.f32(float %.sroa.11.0.i44, float %.sroa.11.0.i44, float %i.he) ; 2 uses
  %i.hg = fcmp une float %i.hf, 0.000000e+00
  br i1 %i.hg, label %bb.q, label %CameraMoveRight.exit

bb.q:                                             ; preds = %bb.p
  %sqrt.i.i55 = tail call float @llvm.sqrt.f32(float %i.hf)
  %i.hh = fdiv float 1.000000e+00, %sqrt.i.i55    ; 2 uses
  %i.hi = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hk = fmul <2 x float> %.sroa.036.0.i43, %i.hj
  %i.hl = fmul float %.sroa.11.0.i44, %i.hh
  br label %CameraMoveRight.exit

CameraMoveRight.exit:                             ; preds = %bb.p, %bb.q
  %.sroa.11.1.i48 = phi float [ %.sroa.11.0.i44, %bb.p ], [ %i.hl, %bb.q ]
  %i.hm = phi <2 x float> [ %.sroa.036.0.i43, %bb.p ], [ %i.hk, %bb.q ]
  %i.hn = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ho = fmul <2 x float> %i.hn, %i.hm           ; 2 uses
  %i.hp = fmul float %.sroa.016.4.vec.extract, %.sroa.11.1.i48 ; 2 uses
  %i.hq = fadd <2 x float> %i.fh, %i.ho
  %i.hr = fadd float %i.fi, %i.hp
  %i.hs = fadd <2 x float> %i.fj, %i.ho
  %i.ht = fadd float %i.fk, %i.hp
  br i1 %i.gb, label %bb.r, label %CameraMoveUp.exit

bb.r:                                             ; preds = %CameraMoveRight.exit
  %sqrt.i.i.i75 = tail call float @llvm.sqrt.f32(float %i.ga)
  %i.hu = fdiv float 1.000000e+00, %sqrt.i.i.i75  ; 2 uses
  %i.hv = insertelement <2 x float> poison, float %i.hu, i64 0
  %i.hw = shufflevector <2 x float> %i.hv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hx = fmul <2 x float> %i.ef, %i.hw
  %i.hy = fmul float %i.eg, %i.hu
  br label %CameraMoveUp.exit

CameraMoveUp.exit:                                ; preds = %CameraMoveRight.exit, %bb.r
  %.sroa.617.0.i.i.i67 = phi float [ %i.eg, %CameraMoveRight.exit ], [ %i.hy, %bb.r ]
  %i.hz = phi <2 x float> [ %i.ef, %CameraMoveRight.exit ], [ %i.hx, %bb.r ]
  %i.ia = insertelement <2 x float> poison, float %2, i64 0
  %i.ib = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ic = fmul <2 x float> %i.ib, %i.hz           ; 2 uses
  %i.id = fmul float %2, %.sroa.617.0.i.i.i67     ; 2 uses
  %i.ie = fadd float %i.hr, %i.id
  %i.if = fadd <2 x float> %i.hs, %i.ic           ; 3 uses
  %i.ig = fadd float %i.ht, %i.id                 ; 3 uses
  store <2 x float> %i.if, ptr %i.l, align 4
  store float %i.ig, ptr %.sroa.233.0..sroa_idx.i, align 4
  %i.ih = fadd <2 x float> %i.hq, %i.ic
  %i.ii = fsub <2 x float> %i.if, %i.ih           ; 5 uses
  %i.ij = fsub float %i.ig, %i.ie                 ; 4 uses
  %foldExtExtBinop112 = fmul <2 x float> %i.ii, %i.ii
  %i.ik = extractelement <2 x float> %foldExtExtBinop112, i64 1
  %i.il = extractelement <2 x float> %i.ii, i64 0 ; 2 uses
  %i.im = tail call float @llvm.fmuladd.f32(float %i.il, float %i.il, float %i.ik)
  %i.in = tail call float @llvm.fmuladd.f32(float %i.ij, float %i.ij, float %i.im) ; 2 uses
  %sqrt.i.i78 = tail call float @llvm.sqrt.f32(float %i.in) ; 2 uses
  %i.io = fcmp une float %i.in, 0.000000e+00      ; 2 uses
  %i.ip = fdiv float 1.000000e+00, %sqrt.i.i78    ; 2 uses
  %i.iq = insertelement <2 x float> poison, float %i.ip, i64 0
  %i.ir = shufflevector <2 x float> %i.iq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.is = fmul <2 x float> %i.ii, %i.ir
  %i.it = fmul float %i.ij, %i.ip
  %.sroa.013.0.i.i.i82 = select i1 %i.io, <2 x float> %i.is, <2 x float> %i.ii
  %.sroa.617.0.i.i.i83 = select i1 %i.io, float %i.it, float %i.ij
  %i.iu = fadd float %5, %sqrt.i.i78              ; 2 uses
  %i.iv = fcmp ole float %i.iu, 0.000000e+00
  %.neg.i = fneg float %i.iu
  %i.iw = select i1 %i.iv, float -1.000000e-03, float %.neg.i ; 2 uses
  %i.ix = fmul float %i.iw, %.sroa.617.0.i.i.i83
  %i.iy = insertelement <2 x float> poison, float %i.iw, i64 0
  %i.iz = shufflevector <2 x float> %i.iy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ja = fmul <2 x float> %i.iz, %.sroa.013.0.i.i.i82
  %i.jb = fadd <2 x float> %i.if, %i.ja
  %i.jc = fadd float %i.ig, %i.ix
  store <2 x float> %i.jb, ptr %0, align 4
  store float %i.jc, ptr %.sroa.231.0..sroa_idx.i, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @sinflate(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #30 {
bb.a:
  %i.a = tail call fastcc i32 @sinfl_decompress(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @sinfl_decompress(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #30 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %4 = alloca %struct.sinfl, align 8              ; 24 uses
  %i.i = alloca [320 x i8], align 16              ; 8 uses
  %i.j = alloca [128 x i32], align 16             ; 5 uses
  %i.k = alloca [19 x i8], align 16               ; 5 uses
  %i.l = alloca [320 x i8], align 16              ; 14 uses
  %i.m = sext i32 %1 to i64
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m ; 2 uses
  %i.o = sext i32 %3 to i64
  %i.p = getelementptr inbounds i8, ptr %2, i64 %i.o ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #56
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6960) %i.q, i8 0, i64 6960, i1 false)
  store ptr %2, ptr %4, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 19 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 19 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 5364 ; 4 uses
  %i.w = ptrtoint ptr %0 to i64                   ; 8 uses
  %i.x = ptrtoint ptr %i.n to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 288 ; 2 uses
  %i.z = ptrtoint ptr %i.p to i64
  %scevgep375 = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %scevgep379 = getelementptr inbounds nuw i8, ptr %i.i, i64 256
  %scevgep383 = getelementptr inbounds nuw i8, ptr %i.i, i64 280
  %scevgep520 = getelementptr i8, ptr %i.l, i64 -1
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.0153426 = phi ptr [ %0, %bb.a ], [ %.0153426.be, %.backedge ] ; 6 uses
  %i.aa = load ptr, ptr %i.r, align 8
  %i.ab = load ptr, ptr %4, align 8               ; 5 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 7
  br i1 %i.af, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.val.i = load i64, ptr %i.ab, align 1
  %i.ag = load i32, ptr %i.u, align 8             ; 3 uses
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl i64 %.val.i, %i.ah
  %i.aj = load i64, ptr %i.t, align 8
  %i.ak = or i64 %i.ai, %i.aj
  %i.al = sub nsw i32 63, %i.ag
  %i.am = ashr i32 %i.al, 3
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %i.ab, i64 %i.an
  store ptr %i.ao, ptr %4, align 8
  %i.ap = or i32 %i.ag, 56
  br label %sinfl_refill.exit

bb.d:                                             ; preds = %bb.b
  %i.aq = load i32, ptr %i.u, align 8             ; 3 uses
  %i.ar = sub nsw i32 63, %i.aq
  %i.as = ashr i32 %i.ar, 3
  %i.at = sext i32 %i.as to i64
  %i.au = tail call i64 @llvm.smin.i64(i64 %i.ae, i64 %i.at) ; 2 uses
  %i.av = trunc i64 %i.au to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8
  %sext.i = shl i64 %i.au, 32
  %i.aw = ashr exact i64 %sext.i, 32              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr align 1 %i.ab, i64 %i.aw, i1 false)
  %.0..0..0..0..0..0..i = load i64, ptr %i.h, align 8
  %i.ax = zext nneg i32 %i.aq to i64
  %i.ay = shl i64 %.0..0..0..0..0..0..i, %i.ax
  %i.az = load i64, ptr %i.t, align 8
  %i.ba = or i64 %i.az, %i.ay
  %i.bb = getelementptr inbounds i8, ptr %i.ab, i64 %i.aw
  store ptr %i.bb, ptr %4, align 8
  %i.bc = shl i32 %i.av, 3
  %i.bd = add nsw i32 %i.bc, %i.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %sinfl_refill.exit

sinfl_refill.exit:                                ; preds = %bb.c, %bb.d
  %i.be = phi i32 [ %i.ap, %bb.c ], [ %i.bd, %bb.d ]
  %.val.i174 = phi i64 [ %i.ak, %bb.c ], [ %i.ba, %bb.d ] ; 3 uses
  %i.bf = trunc i64 %.val.i174 to i32
  %i.bg = and i32 %i.bf, 1                        ; 2 uses
  %i.bh = trunc i64 %.val.i174 to i32
  %i.bi = lshr i32 %i.bh, 1
  %i.bj = and i32 %i.bi, 3
  %i.bk = lshr i64 %.val.i174, 3
  store i64 %i.bk, ptr %i.t, align 8
  %i.bl = add nsw i32 %i.be, -3
  store i32 %i.bl, ptr %i.u, align 8
  switch i32 %i.bj, label %default.unreachable416 [
    i32 0, label %bb.f
    i32 1, label %.preheader298.preheader
    i32 2, label %bb.l
    i32 3, label %bb.e
  ]

bb.e:                                             ; preds = %sinfl_refill.exit
  %i.bm = ptrtoint ptr %.0153426 to i64
  %i.bn = sub i64 %i.bm, %i.w
  %i.bo = trunc i64 %i.bn to i32
  br label %.thread274

bb.f:                                             ; preds = %sinfl_refill.exit
  %i.bp = load i32, ptr %i.u, align 8             ; 2 uses
  %i.bq = and i32 %i.bp, 7
  %.val.i176 = load i64, ptr %i.t, align 8
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = lshr i64 %.val.i176, %i.br              ; 3 uses
  %i.bt = lshr i64 %i.bs, 16
  %i.bu = add nsw i32 %i.bp, -32
  %.neg.neg = ashr i32 %i.bu, 3
  %.neg = sub nsw i32 0, %.neg.neg
  %i.bv = load ptr, ptr %4, align 8
  %i.bw = sext i32 %.neg to i64
  %i.bx = getelementptr inbounds i8, ptr %i.bv, i64 %i.bw ; 3 uses
  store i32 0, ptr %i.u, align 8
  store i64 0, ptr %i.t, align 8
  %i.by = xor i64 %i.bt, %i.bs
  %i.bz = and i64 %i.by, 65535
  %.not172 = icmp eq i64 %i.bz, 65535
  br i1 %.not172, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ca = ptrtoint ptr %.0153426 to i64
  %i.cb = sub i64 %i.ca, %i.w
  %i.cc = trunc i64 %i.cb to i32
  br label %.thread274

bb.h:                                             ; preds = %bb.f
  %i.cd = and i64 %i.bs, 65535                    ; 5 uses
  %i.ce = ptrtoint ptr %i.bx to i64
  %i.cf = sub i64 %i.z, %i.ce
  %i.cg = icmp sge i64 %i.cf, %i.cd
  %i.ch = icmp ne i64 %i.cd, 0
  %or.cond = and i1 %i.ch, %i.cg
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ci = ptrtoint ptr %.0153426 to i64
  %i.cj = sub i64 %i.ci, %i.w
  %i.ck = trunc i64 %i.cj to i32
  br label %.thread274

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0153426, ptr align 1 %i.bx, i64 %i.cd, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cd
  store ptr %i.cl, ptr %4, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.0153426, i64 %i.cd ; 2 uses
  %.not173 = icmp eq i32 %i.bg, 0
  br i1 %.not173, label %.backedge, label %bb.k

.backedge:                                        ; preds = %bb.j, %bb.at
  %.0153426.be = phi ptr [ %.3156, %bb.at ], [ %i.cm, %bb.j ]
  br label %bb.b

bb.k:                                             ; preds = %bb.j
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.w
  %i.cp = trunc i64 %i.co to i32
  br label %.thread274

.preheader298.preheader:                          ; preds = %sinfl_refill.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.i, i8 8, i64 144, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %scevgep375, i8 9, i64 112, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %scevgep379, i8 7, i64 24, i1 false)
  store i64 578721382704613384, ptr %scevgep383, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.y, i8 5, i64 32, i1 false)
  call fastcc void @sinfl_build(ptr noundef %i.s, ptr noundef %i.i, i32 noundef 10, i32 noundef 15, i32 noundef 288)
  call fastcc void @sinfl_build(ptr noundef %i.v, ptr noundef %i.y, i32 noundef 8, i32 noundef 15, i32 noundef 32)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #56
  br label %.preheader299.preheader

bb.l:                                             ; preds = %sinfl_refill.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(19) %i.k, i8 0, i64 19, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #56
  %i.cq = load ptr, ptr %i.r, align 8
  %i.cr = load ptr, ptr %4, align 8               ; 5 uses
  %i.cs = ptrtoint ptr %i.cq to i64               ; 6 uses
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct                    ; 2 uses
  %i.cv = icmp sgt i64 %i.cu, 7
  br i1 %i.cv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.val.i181 = load i64, ptr %i.cr, align 1
  %i.cw = load i32, ptr %i.u, align 8             ; 3 uses
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = shl i64 %.val.i181, %i.cx
  %i.cz = load i64, ptr %i.t, align 8
  %i.da = or i64 %i.cy, %i.cz
  %i.db = sub nsw i32 63, %i.cw
  %i.dc = ashr i32 %i.db, 3
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds i8, ptr %i.cr, i64 %i.dd
  %i.df = or i32 %i.cw, 56
  br label %sinfl_refill.exit182

bb.n:                                             ; preds = %bb.l
  %i.dg = load i32, ptr %i.u, align 8             ; 3 uses
  %i.dh = sub nsw i32 63, %i.dg
  %i.di = ashr i32 %i.dh, 3
  %i.dj = sext i32 %i.di to i64
  %i.dk = tail call i64 @llvm.smin.i64(i64 %i.cu, i64 %i.dj) ; 2 uses
  %i.dl = trunc i64 %i.dk to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  %sext.i179 = shl i64 %i.dk, 32
  %i.dm = ashr exact i64 %sext.i179, 32           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.g, ptr align 1 %i.cr, i64 %i.dm, i1 false)
  %.0..0..0..0..0..0..i180 = load i64, ptr %i.g, align 8
  %i.dn = zext nneg i32 %i.dg to i64
  %i.do = shl i64 %.0..0..0..0..0..0..i180, %i.dn
  %i.dp = load i64, ptr %i.t, align 8
  %i.dq = or i64 %i.dp, %i.do                     ; 2 uses
  store i64 %i.dq, ptr %i.t, align 8
  %i.dr = getelementptr inbounds i8, ptr %i.cr, i64 %i.dm ; 2 uses
  store ptr %i.dr, ptr %4, align 8
  %i.ds = shl i32 %i.dl, 3
  %i.dt = add nsw i32 %i.ds, %i.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %sinfl_refill.exit182

sinfl_refill.exit182:                             ; preds = %bb.m, %bb.n
  %.promoted = phi ptr [ %i.de, %bb.m ], [ %i.dr, %bb.n ]
  %i.du = phi i32 [ %i.df, %bb.m ], [ %i.dt, %bb.n ]
  %.val.i183 = phi i64 [ %i.da, %bb.m ], [ %i.dq, %bb.n ] ; 4 uses
  %i.dv = lshr i64 %.val.i183, 10
  %i.dw = and i64 %i.dv, 15
  %i.dx = lshr i64 %.val.i183, 14
  %i.dy = add nsw i32 %i.du, -14
  %i.dz = add nuw nsw i64 %i.dw, 3
  br label %bb.o

bb.o:                                             ; preds = %sinfl_refill.exit182, %sinfl_get.exit
  %indvars.iv = phi i64 [ 0, %sinfl_refill.exit182 ], [ %indvars.iv.next, %sinfl_get.exit ] ; 3 uses
  %i.ea = phi ptr [ %.promoted, %sinfl_refill.exit182 ], [ %.promoted324, %sinfl_get.exit ] ; 4 uses
  %i.eb = phi i32 [ %i.dy, %sinfl_refill.exit182 ], [ %i.fc, %sinfl_get.exit ] ; 6 uses
  %i.ec = phi i64 [ %i.dx, %sinfl_refill.exit182 ], [ %i.fb, %sinfl_get.exit ] ; 2 uses
  %i.ed = ptrtoint ptr %i.ea to i64
  %i.ee = sub i64 %i.cs, %i.ed                    ; 2 uses
  %i.ef = icmp sgt i64 %i.ee, 7
  br i1 %i.ef, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.val.i.i = load i64, ptr %i.ea, align 1
  %i.eg = zext nneg i32 %i.eb to i64
  %i.eh = shl i64 %.val.i.i, %i.eg
  %i.ei = or i64 %i.eh, %i.ec
  %i.ej = sub nsw i32 63, %i.eb
  %i.ek = ashr i32 %i.ej, 3
  %i.el = sext i32 %i.ek to i64
  %i.em = or i32 %i.eb, 56
  br label %sinfl_get.exit

bb.q:                                             ; preds = %bb.o
  %i.en = sub nsw i32 63, %i.eb
  %i.eo = ashr i32 %i.en, 3
  %i.ep = sext i32 %i.eo to i64
  %i.eq = tail call i64 @llvm.smin.i64(i64 %i.ee, i64 %i.ep) ; 2 uses
  %i.er = trunc i64 %i.eq to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %sext.i.i = shl i64 %i.eq, 32
  %i.es = ashr exact i64 %sext.i.i, 32            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 1 %i.ea, i64 %i.es, i1 false)
  %.0..0..0..0..0..0..0..0..i.i = load i64, ptr %i.f, align 8
  %i.et = zext nneg i32 %i.eb to i64
  %i.eu = shl i64 %.0..0..0..0..0..0..0..0..i.i, %i.et
  %i.ev = or i64 %i.ec, %i.eu
  %i.ew = shl i32 %i.er, 3
  %i.ex = add nsw i32 %i.ew, %i.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %sinfl_get.exit

sinfl_get.exit:                                   ; preds = %bb.p, %bb.q
  %.pn417 = phi i64 [ %i.el, %bb.p ], [ %i.es, %bb.q ]
  %i.ey = phi i32 [ %i.em, %bb.p ], [ %i.ex, %bb.q ]
  %.val.i2.i = phi i64 [ %i.ei, %bb.p ], [ %i.ev, %bb.q ] ; 2 uses
  %.promoted324 = getelementptr inbounds i8, ptr %i.ea, i64 %.pn417 ; 3 uses
  %i.ez = trunc i64 %.val.i2.i to i8
  %i.fa = and i8 %i.ez, 7
  %i.fb = lshr i64 %.val.i2.i, 3                  ; 3 uses
  %i.fc = add nsw i32 %i.ey, -3                   ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr @sdefl_flush.perm, i64 %indvars.iv
  %i.fe = load i8, ptr %i.fd, align 1
  %i.ff = zext i8 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ff
  store i8 %i.fa, ptr %i.fg, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %i.dz
  br i1 %exitcond.not, label %bb.r, label %bb.o

bb.r:                                             ; preds = %sinfl_get.exit
  store ptr %.promoted324, ptr %4, align 8
  store i64 %i.fb, ptr %i.t, align 8
  store i32 %i.fc, ptr %i.u, align 8
  %i.fh = trunc i64 %.val.i183 to i32
  %i.fi = and i32 %i.fh, 31
  %i.fj = add nuw nsw i32 %i.fi, 257              ; 3 uses
  %i.fk = trunc i64 %.val.i183 to i32
  %i.fl = lshr i32 %i.fk, 5
  %i.fm = and i32 %i.fl, 31
  %i.fn = add nuw nsw i32 %i.fm, 1                ; 2 uses
  call fastcc void @sinfl_build(ptr noundef %i.j, ptr noundef %i.k, i32 noundef 7, i32 noundef 7, i32 noundef 19)
  %i.fo = add nuw nsw i32 %i.fn, %i.fj
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.loopexit
  %.1127327 = phi i32 [ 0, %bb.r ], [ %.5, %.loopexit ] ; 5 uses
  %i.fp = phi ptr [ %.promoted324, %bb.r ], [ %i.ld, %.loopexit ] ; 4 uses
  %i.fq = phi i32 [ %i.fc, %bb.r ], [ %i.lc, %.loopexit ] ; 6 uses
  %i.fr = phi i64 [ %i.fb, %bb.r ], [ %i.lb, %.loopexit ] ; 2 uses
  %i.fs = ptrtoint ptr %i.fp to i64
  %i.ft = sub i64 %i.cs, %i.fs                    ; 2 uses
  %i.fu = icmp sgt i64 %i.ft, 7
  br i1 %i.fu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.val.i188 = load i64, ptr %i.fp, align 1
  %i.fv = zext nneg i32 %i.fq to i64
  %i.fw = shl i64 %.val.i188, %i.fv
  %i.fx = or i64 %i.fw, %i.fr
  %i.fy = sub nsw i32 63, %i.fq
  %i.fz = ashr i32 %i.fy, 3
  %i.ga = sext i32 %i.fz to i64
  %i.gb = or i32 %i.fq, 56
  br label %sinfl_refill.exit189

bb.u:                                             ; preds = %bb.s
  %i.gc = sub nsw i32 63, %i.fq
  %i.gd = ashr i32 %i.gc, 3
  %i.ge = sext i32 %i.gd to i64
  %i.gf = tail call i64 @llvm.smin.i64(i64 %i.ft, i64 %i.ge) ; 2 uses
  %i.gg = trunc i64 %i.gf to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %sext.i186 = shl i64 %i.gf, 32
  %i.gh = ashr exact i64 %sext.i186, 32           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr align 1 %i.fp, i64 %i.gh, i1 false)
  %.0..0..0..0..0..0..i187 = load i64, ptr %i.e, align 8
  %i.gi = zext nneg i32 %i.fq to i64
  %i.gj = shl i64 %.0..0..0..0..0..0..i187, %i.gi
  %i.gk = or i64 %i.fr, %i.gj
  %i.gl = shl i32 %i.gg, 3
  %i.gm = add nsw i32 %i.gl, %i.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %sinfl_refill.exit189

sinfl_refill.exit189:                             ; preds = %bb.t, %bb.u
  %.sink393 = phi i64 [ %i.fx, %bb.t ], [ %i.gk, %bb.u ] ; 3 uses
  %.pn418 = phi i64 [ %i.ga, %bb.t ], [ %i.gh, %bb.u ]
  %.sink391 = phi i32 [ %i.gb, %bb.t ], [ %i.gm, %bb.u ] ; 2 uses
  %.sink392 = getelementptr inbounds i8, ptr %i.fp, i64 %.pn418 ; 14 uses
  store ptr %.sink392, ptr %4, align 8
  %i.gn = and i64 %.sink393, 127
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4            ; 4 uses
  %i.gq = and i32 %i.gp, 16
  %.not.i = icmp eq i32 %i.gq, 0
  br i1 %.not.i, label %sinfl_decode.exit, label %bb.v

bb.v:                                             ; preds = %sinfl_refill.exit189
  %i.gr = and i32 %i.gp, 15
  %i.gs = lshr i64 %.sink393, 7                   ; 2 uses
  %i.gt = add nsw i32 %.sink391, -7
  %i.gu = zext nneg i32 %i.gr to i64
  %notmask.i16.i = shl nsw i64 -1, %i.gu
  %i.gv = xor i64 %notmask.i16.i, -1
  %i.gw = and i64 %i.gs, %i.gv
  %i.gx = trunc nuw nsw i64 %i.gw to i32
  %i.gy = lshr i32 %i.gp, 16
  %i.gz = add nuw nsw i32 %i.gy, %i.gx
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4
  br label %sinfl_decode.exit

sinfl_decode.exit:                                ; preds = %sinfl_refill.exit189, %bb.v
  %i.hd = phi i32 [ %i.gt, %bb.v ], [ %.sink391, %sinfl_refill.exit189 ]
  %i.he = phi i64 [ %i.gs, %bb.v ], [ %.sink393, %sinfl_refill.exit189 ]
  %.0.i = phi i32 [ %i.hc, %bb.v ], [ %i.gp, %sinfl_refill.exit189 ] ; 2 uses
  %i.hf = and i32 %.0.i, 15                       ; 2 uses
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = lshr i64 %i.he, %i.hg                   ; 5 uses
  store i64 %i.hh, ptr %i.t, align 8
  %i.hi = sub nsw i32 %i.hd, %i.hf                ; 20 uses
  store i32 %i.hi, ptr %i.u, align 8
  %i.hj = lshr i32 %.0.i, 16                      ; 2 uses
  %i.hk = and i32 %i.hj, 4095
  switch i32 %i.hk, label %bb.w [
    i32 16, label %bb.x
    i32 17, label %bb.ad
    i32 18, label %bb.ag
  ]

bb.w:                                             ; preds = %sinfl_decode.exit
  %i.hl = trunc i32 %i.hj to i8
  %i.hm = add nsw i32 %.1127327, 1
  %i.hn = sext i32 %.1127327 to i64
  %i.ho = getelementptr inbounds i8, ptr %i.l, i64 %i.hn
  store i8 %i.hl, ptr %i.ho, align 1
  br label %.loopexit

bb.x:                                             ; preds = %sinfl_decode.exit
  %i.hp = ptrtoint ptr %.sink392 to i64
  %i.hq = sub i64 %i.cs, %i.hp                    ; 2 uses
  %i.hr = icmp sgt i64 %i.hq, 7
  br i1 %i.hr, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %.val.i.i193 = load i64, ptr %.sink392, align 1
  %i.hs = zext nneg i32 %i.hi to i64
  %i.ht = shl i64 %.val.i.i193, %i.hs
  %i.hu = sub nsw i32 63, %i.hi
  %i.hv = ashr i32 %i.hu, 3
  %i.hw = sext i32 %i.hv to i64
  %i.hx = or i32 %i.hi, 56
  br label %sinfl_get.exit194

bb.z:                                             ; preds = %bb.x
  %i.hy = sub nsw i32 63, %i.hi
  %i.hz = ashr i32 %i.hy, 3
  %i.ia = sext i32 %i.hz to i64
  %i.ib = tail call i64 @llvm.smin.i64(i64 %i.hq, i64 %i.ia) ; 2 uses
  %i.ic = trunc i64 %i.ib to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %sext.i.i190 = shl i64 %i.ib, 32
  %i.id = ashr exact i64 %sext.i.i190, 32         ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr align 1 %.sink392, i64 %i.id, i1 false)
end_hunk_0
