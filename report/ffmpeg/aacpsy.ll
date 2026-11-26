Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacpsy?download=true
inline.NumInlined: 16
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@psy_3gpp_init:bb.a
  %i.fe = fptrunc nsz <4 x double> %i.fd to <4 x float>
  store <4 x float> %i.fe, ptr %i.ev, align 4, !tbaa !48
  %i.ff = fmul nsz float %i.dm, %i.et
  %i.fg = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv426
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !56
  %i.fi = uitofp i8 %i.fh to float
  %i.fj = fdiv nsz float %i.ff, %i.fi
  %i.fk = fpext nsz float %i.fj to double
  %i.fl = tail call nsz double @llvm.exp2.f64(double %i.fk)
  %i.fm = fadd nsz double %i.fl, -1.500000e+00
  %i.fn = fptrunc nsz double %i.fm to float
  %i.fo = fdiv nsz float 1.000000e+00, %i.fn      ; 2 uses
  %i.fp = fcmp nsz ogt float %i.fo, f0x3B4F3E37
  %i.fq = select nsz i1 %i.fp, float %i.fo, float f0x3B4F3E37 ; 2 uses
  %i.fr = fcmp nsz ogt float %i.fq, f0x3F4B5918
  %..i = select nsz i1 %i.fr, float f0x3F4B5918, float %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  store float %..i, ptr %i.fs, align 4, !tbaa !58
  %exitcond430.not = icmp eq i64 %indvars.iv.next427, %wide.trip.count429
  br i1 %exitcond430.not, label %.lr.ph422.preheader, label %bb.s, !llvm.loop !68

.lr.ph422:                                        ; preds = %.lr.ph422.preheader, %._crit_edge
  %indvars.iv432 = phi i64 [ 0, %.lr.ph422.preheader ], [ %indvars.iv.next433, %._crit_edge ] ; 3 uses
  %.0308421 = phi i32 [ 0, %.lr.ph422.preheader ], [ %i.gl, %._crit_edge ] ; 3 uses
  %i.ft = uitofp nsz nneg i32 %.0308421 to float
  %i.fu = fmul nsz float %i.dg, %i.ft
  %i.fv = tail call fastcc float @ath(float noundef %i.fu) #12 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv432 ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !56  ; 2 uses
  %i.fy = zext i8 %i.fx to i32
  %i.fz = icmp ugt i8 %i.fx, 1
  br i1 %i.fz, label %.lr.ph416, label %._crit_edge

.lr.ph416:                                        ; preds = %.lr.ph422, %.lr.ph416
  %.0306415 = phi float [ %i.gf, %.lr.ph416 ], [ %i.fv, %.lr.ph422 ] ; 2 uses
  %.1312414 = phi i32 [ %i.gg, %.lr.ph416 ], [ 1, %.lr.ph422 ] ; 2 uses
  %i.ga = add nuw nsw i32 %.1312414, %.0308421
  %i.gb = uitofp nsz nneg i32 %i.ga to float
  %i.gc = fmul nsz float %i.dg, %i.gb
  %i.gd = tail call fastcc float @ath(float noundef %i.gc) #12 ; 2 uses
  %i.ge = fcmp nsz ogt float %.0306415, %i.gd
  %i.gf = select nsz i1 %i.ge, float %i.gd, float %.0306415 ; 2 uses
  %i.gg = add nuw nsw i32 %.1312414, 1            ; 2 uses
  %exitcond431.not = icmp eq i32 %i.gg, %i.fy
  br i1 %exitcond431.not, label %._crit_edge, label %.lr.ph416, !llvm.loop !69

._crit_edge:                                      ; preds = %.lr.ph416, %.lr.ph422
  %.0306.lcssa = phi float [ %i.fv, %.lr.ph422 ], [ %i.gf, %.lr.ph416 ]
  %i.gh = fadd nsz float %.0306.lcssa, f0x40A7C1E0
  %i.gi = getelementptr inbounds nuw [28 x i8], ptr %i.dc, i64 %indvars.iv432
  store float %i.gh, ptr %i.gi, align 4, !tbaa !59
  %i.gj = load i8, ptr %i.fw, align 1, !tbaa !56
  %i.gk = zext i8 %i.gj to i32
  %i.gl = add nuw nsw i32 %.0308421, %i.gk
  %indvars.iv.next433 = add nuw nsw i64 %indvars.iv432, 1 ; 2 uses
  %exitcond436.not = icmp eq i64 %indvars.iv.next433, %wide.trip.count435
  br i1 %exitcond436.not, label %._crit_edge423, label %.lr.ph422, !llvm.loop !70

._crit_edge423:                                   ; preds = %._crit_edge, %bb.r
  br i1 %i.db, label %bb.t, label %bb.r, !llvm.loop !71

bb.t:                                             ; preds = %._crit_edge423
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bm, i64 356
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !38
  %i.go = sext i32 %i.gn to i64
  %i.gp = tail call noalias ptr @av_calloc(i64 noundef %i.go, i64 noundef 9312) #11 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bk, i64 3616
  store ptr %i.gp, ptr %i.gq, align 8, !tbaa !60
  %.not371 = icmp eq ptr %i.gp, null
  br i1 %.not371, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @av_freep(ptr noundef nonnull %i.bl) #11
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.gr = load ptr, ptr %0, align 8, !tbaa !19
  tail call fastcc void @lame_window_init(ptr noundef %i.bk, ptr noundef %i.gr) #12
  br label %bb.w

bb.w:                                             ; preds = %bb.n, %bb.m, %bb.v, %bb.u
  %.0 = phi i32 [ -22, %bb.m ], [ 0, %bb.v ], [ -12, %bb.u ], [ -12, %bb.n ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @psy_lame_window(ptr dead_on_unwind noalias nofree writable sret(%struct.FFPsyWindowInfo) align 8 captures(none) initializes((0, 96)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = alloca [1024 x float], align 16          ; 4 uses
  %i.b = alloca [18 x float], align 16            ; 19 uses
  %i.c = alloca [18 x float], align 16            ; 5 uses
  %i.d = alloca [9 x float], align 16             ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 3616
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60   ; 2 uses
  %i.i = sext i32 %4 to i64                       ; 2 uses
  %i.j = getelementptr inbounds [9312 x i8], ptr %i.h, i64 %i.i ; 11 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.split, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.d, i8 0, i64 36, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 44
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index ; 21 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %wide.load = load <4 x float>, ptr %i.m, align 4, !tbaa !48
  %wide.load387 = load <4 x float>, ptr %i.l, align 4, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 84
  %wide.load388 = load <4 x float>, ptr %i.n, align 4, !tbaa !48
  %i.o = fadd nsz <4 x float> %wide.load387, %wide.load388
  %i.p = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.o, <4 x float> splat (float f0xA39F982B), <4 x float> %wide.load)
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %wide.load389 = load <4 x float>, ptr %i.q, align 4, !tbaa !48
  %i.r = getelementptr i8, ptr %i.l, i64 80
  %wide.load390 = load <4 x float>, ptr %i.r, align 4, !tbaa !48
  %i.s = fadd nsz <4 x float> %wide.load389, %wide.load390
  %i.t = fmul nsz <4 x float> %i.s, splat (float f0xBC8B861B)
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %wide.load391 = load <4 x float>, ptr %i.u, align 4, !tbaa !48
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 76
  %wide.load392 = load <4 x float>, ptr %i.v, align 4, !tbaa !48
  %i.w = fadd nsz <4 x float> %wide.load391, %wide.load392
  %i.x = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> splat (float f0xA378F1A8), <4 x float> %i.p)
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %wide.load393 = load <4 x float>, ptr %i.y, align 4, !tbaa !48
  %i.z = getelementptr i8, ptr %i.l, i64 72
  %wide.load394 = load <4 x float>, ptr %i.z, align 4, !tbaa !48
  %i.aa = fadd nsz <4 x float> %wide.load393, %wide.load394
  %i.ab = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> splat (float 4.180720e-02), <4 x float> %i.t)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load395 = load <4 x float>, ptr %i.ac, align 4, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 68
  %wide.load396 = load <4 x float>, ptr %i.ad, align 4, !tbaa !48
  %i.ae = fadd nsz <4 x float> %wide.load395, %wide.load396
  %i.af = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> splat (float f0xA49B3F51), <4 x float> %i.x)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %wide.load397 = load <4 x float>, ptr %i.ag, align 4, !tbaa !48
  %i.ah = getelementptr i8, ptr %i.l, i64 64
  %wide.load398 = load <4 x float>, ptr %i.ah, align 4, !tbaa !48
  %i.ai = fadd nsz <4 x float> %wide.load397, %wide.load398
  %i.aj = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ai, <4 x float> splat (float -8.763240e-02), <4 x float> %i.ab)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %wide.load399 = load <4 x float>, ptr %i.ak, align 4, !tbaa !48
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %wide.load400 = load <4 x float>, ptr %i.al, align 4, !tbaa !48
  %i.am = fadd nsz <4 x float> %wide.load399, %wide.load400
  %i.an = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.am, <4 x float> splat (float -3.083500e-17), <4 x float> %i.af)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %wide.load401 = load <4 x float>, ptr %i.ao, align 4, !tbaa !48
  %i.ap = getelementptr i8, ptr %i.l, i64 56
  %wide.load402 = load <4 x float>, ptr %i.ap, align 4, !tbaa !48
  %i.aq = fadd nsz <4 x float> %wide.load401, %wide.load402
  %i.ar = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> splat (float f0x3E3ED1E8), <4 x float> %i.aj)
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %wide.load403 = load <4 x float>, ptr %i.as, align 4, !tbaa !48
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %wide.load404 = load <4 x float>, ptr %i.at, align 4, !tbaa !48
  %i.au = fadd nsz <4 x float> %wide.load403, %wide.load404
  %i.av = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> splat (float f0xA4FEA9B0), <4 x float> %i.an)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %wide.load405 = load <4 x float>, ptr %i.aw, align 4, !tbaa !48
  %i.ax = getelementptr i8, ptr %i.l, i64 48
  %wide.load406 = load <4 x float>, ptr %i.ax, align 4, !tbaa !48
  %i.ay = fadd nsz <4 x float> %wide.load405, %wide.load406
  %i.az = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> splat (float -6.276380e-01), <4 x float> %i.ar)
  %i.ba = fadd nsz <4 x float> %i.av, %i.az
  %i.bb = fmul nsz <4 x float> %i.ba, splat (float 3.276800e+04)
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  store <4 x float> %i.bb, ptr %i.bc, align 16, !tbaa !48
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, 1024
  br i1 %i.bd, label %psy_hp_filter.exit.preheader, label %vector.body, !llvm.loop !74

psy_hp_filter.exit.preheader:                     ; preds = %vector.body
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 9240
  %i.bf = mul nsw i64 %i.i, 9312
  %i.bg = getelementptr i8, ptr %i.h, i64 %i.bf
  %scevgep = getelementptr i8, ptr %i.bg, i64 9296
  %i.bh = load i64, ptr %scevgep, align 4, !tbaa !48
  store i64 %i.bh, ptr %i.c, align 16, !tbaa !48
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 9296
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 9288
  %i.bk = load <2 x float>, ptr %i.bi, align 4, !tbaa !48 ; 3 uses
  %i.bl = load <2 x float>, ptr %i.bj, align 4, !tbaa !48
  %i.bm = fdiv nsz <2 x float> %i.bk, %i.bl       ; 2 uses
  %shift = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd nsz <2 x float> %shift, %i.bk
  %i.bn = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 4 uses
  br label %.preheader134

.preheader134:                                    ; preds = %psy_hp_filter.exit.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %psy_hp_filter.exit.preheader ], [ %indvars.iv.next, %bb.g ] ; 5 uses
  %.098141 = phi ptr [ %i.a, %psy_hp_filter.exit.preheader ], [ %scevgep156, %bb.g ] ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader134
  %.095138 = phi float [ 1.000000e+00, %.preheader134 ], [ %.095..1, %bb.b ] ; 2 uses
  %.199.idx137 = phi i64 [ 0, %.preheader134 ], [ %.199.add.1, %bb.b ] ; 3 uses
  %.199.ptr139 = getelementptr inbounds nuw i8, ptr %.098141, i64 %.199.idx137
  %6 = load float, ptr %.199.ptr139, align 8, !tbaa !48
  %7 = tail call nsz float @llvm.fabs.f32(float %6) ; 2 uses
  %8 = fcmp nsz ogt float %.095138, %7
  %.095. = select nsz i1 %8, float %.095138, float %7 ; 2 uses
  %.199.add = or disjoint i64 %.199.idx137, 4     ; 2 uses
  %.199.ptr139.1 = getelementptr inbounds nuw i8, ptr %.098141, i64 %.199.add
  %9 = load float, ptr %.199.ptr139.1, align 4, !tbaa !48
  %10 = tail call nsz float @llvm.fabs.f32(float %9) ; 2 uses
  %11 = fcmp nsz ogt float %.095., %10
  %.095..1 = select nsz i1 %11, float %.095., float %10 ; 7 uses
  %.199.add.1 = add nuw nsw i64 %.199.idx137, 8
  %12 = icmp samesign ult i64 %.199.add, 252
  br i1 %12, label %bb.b, label %bb.c, !llvm.loop !75

bb.c:                                             ; preds = %bb.b
  %scevgep156 = getelementptr i8, ptr %.098141, i64 256
  %i.bo = add nuw nsw i64 %indvars.iv, 2          ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bo
  store float %.095..1, ptr %i.bp, align 4, !tbaa !48
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv
  store float %.095..1, ptr %i.bq, align 4, !tbaa !48
  %i.br = lshr i64 %indvars.iv, 1
  %i.bs = and i64 %i.br, 2147483647
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !48
  %i.bw = fadd nsz float %.095..1, %i.bv
  store float %i.bw, ptr %i.bu, align 4, !tbaa !48
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.by = load float, ptr %i.bx, align 4, !tbaa !48 ; 4 uses
  %i.bz = fcmp nsz ogt float %.095..1, %i.by
  br i1 %i.bz, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ca = fdiv nsz float %.095..1, %i.by
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.cb = fmul nsz float %.095..1, 1.000000e+01   ; 2 uses
  %i.cc = fcmp nsz ogt float %i.by, %i.cb
  br i1 %i.cc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cd = fdiv nsz float %i.by, %i.cb
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.196 = phi nsz float [ %i.ca, %bb.d ], [ %i.cd, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bo
  store float %.196, ptr %i.ce, align 4, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.h, label %.preheader134, !llvm.loop !76

bb.h:                                             ; preds = %bb.g
  %i.cf = getelementptr inbounds nuw i8, ptr %i.j, i64 9236 ; 18 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !64
  %i.ch = extractelement <2 x float> %i.bm, i64 0
  %i.ci = fcmp nsz ule float %i.ch, %i.cg
  br i1 %i.ci, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cj = load float, ptr %i.cf, align 4, !tbaa !64
  %i.ck = extractelement <2 x float> %i.bm, i64 1
  %i.cl = fcmp nsz ogt float %i.ck, %i.cj
  %spec.select = select i1 %i.cl, i32 2, i32 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.3 = phi i32 [ 1, %bb.h ], [ %spec.select, %bb.i ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !48
  %i.co = load float, ptr %i.cf, align 4, !tbaa !64
  %i.cp = fcmp nsz ule float %i.cn, %i.co
  br i1 %i.cp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !48
  %i.cs = load float, ptr %i.cf, align 4, !tbaa !64
  %i.ct = fcmp nsz ogt float %i.cr, %i.cs
  %spec.select351 = select i1 %i.ct, i32 2, i32 0
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.14.5 = phi i32 [ 1, %bb.j ], [ %spec.select351, %bb.k ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cv = load float, ptr %i.cu, align 16, !tbaa !48
  %i.cw = load float, ptr %i.cf, align 4, !tbaa !64
  %i.cx = fcmp nsz ule float %i.cv, %i.cw
  br i1 %i.cx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !48
  %i.da = load float, ptr %i.cf, align 4, !tbaa !64
  %i.db = fcmp nsz ogt float %i.cz, %i.da
  %spec.select352 = select i1 %i.db, i32 2, i32 0
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.25.3 = phi i32 [ 1, %bb.l ], [ %spec.select352, %bb.m ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dd = load float, ptr %i.dc, align 8, !tbaa !48
  %i.de = load float, ptr %i.cf, align 4, !tbaa !64
  %i.df = fcmp nsz ule float %i.dd, %i.de
  br i1 %i.df, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !48
  %i.di = load float, ptr %i.cf, align 4, !tbaa !64
  %i.dj = fcmp nsz ogt float %i.dh, %i.di
  %spec.select353 = select i1 %i.dj, i32 2, i32 0
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.36.3 = phi i32 [ 1, %bb.n ], [ %spec.select353, %bb.o ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.dl = load float, ptr %i.dk, align 16, !tbaa !48
  %i.dm = load float, ptr %i.cf, align 4, !tbaa !64
  %i.dn = fcmp nsz ule float %i.dl, %i.dm
  br i1 %i.dn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.dp = load float, ptr %i.do, align 4, !tbaa !48
  %i.dq = load float, ptr %i.cf, align 4, !tbaa !64
  %i.dr = fcmp nsz ogt float %i.dp, %i.dq
  %spec.select354 = select i1 %i.dr, i32 2, i32 0
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.47.3 = phi i32 [ 1, %bb.p ], [ %spec.select354, %bb.q ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.dt = load float, ptr %i.ds, align 8, !tbaa !48
  %i.du = load float, ptr %i.cf, align 4, !tbaa !64
  %i.dv = fcmp nsz ule float %i.dt, %i.du
  br i1 %i.dv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !48
  %i.dy = load float, ptr %i.cf, align 4, !tbaa !64
  %i.dz = fcmp nsz ogt float %i.dx, %i.dy
  %spec.select355 = select i1 %i.dz, i32 2, i32 0
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.58.3 = phi i32 [ 1, %bb.r ], [ %spec.select355, %bb.s ]
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.eb = load float, ptr %i.ea, align 16, !tbaa !48
  %i.ec = load float, ptr %i.cf, align 4, !tbaa !64
  %i.ed = fcmp nsz ule float %i.eb, %i.ec
  br i1 %i.ed, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !48
  %i.eg = load float, ptr %i.cf, align 4, !tbaa !64
  %i.eh = fcmp nsz ogt float %i.ef, %i.eg
  %spec.select356 = select i1 %i.eh, i32 2, i32 0
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.69.3 = phi i32 [ 1, %bb.t ], [ %spec.select356, %bb.u ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ej = load float, ptr %i.ei, align 8, !tbaa !48
  %i.ek = load float, ptr %i.cf, align 4, !tbaa !64
  %i.el = fcmp nsz ule float %i.ej, %i.ek
  br i1 %i.el, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.en = load float, ptr %i.em, align 4, !tbaa !48
  %i.eo = load float, ptr %i.cf, align 4, !tbaa !64
  %i.ep = fcmp nsz ogt float %i.en, %i.eo
  %spec.select357 = select i1 %i.ep, i32 2, i32 0
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.80.3 = phi i32 [ 1, %bb.v ], [ %spec.select357, %bb.w ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.er = load float, ptr %i.eq, align 16, !tbaa !48
  %i.es = load float, ptr %i.cf, align 4, !tbaa !64
  %i.et = fcmp nsz ule float %i.er, %i.es
  br i1 %i.et, label %bb.y, label %.preheader132

bb.y:                                             ; preds = %bb.x
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !48
  %i.ew = load float, ptr %i.cf, align 4, !tbaa !64
  %i.ex = fcmp nsz ogt float %i.ev, %i.ew
  %spec.select358 = select i1 %i.ex, i32 2, i32 0
  br label %.preheader132

.preheader132:                                    ; preds = %bb.y, %bb.x
  %.sroa.92.3 = phi i32 [ 1, %bb.x ], [ %spec.select358, %bb.y ]
  %i.ey = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ez = fmul nsz float %i.bn, 2.300000e+00
  %i.fa = icmp samesign uge i32 %.sroa.0.3, %.sroa.14.5
  %i.fb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.fd = load <4 x float>, ptr %i.ey, align 4, !tbaa !48 ; 5 uses
  %i.fe = extractelement <4 x float> %i.fd, i64 0 ; 3 uses
  %i.ff = fcmp nsz ogt float %i.bn, %i.fe
  %i.fg = select nsz i1 %i.ff, float %i.bn, float %i.fe
  %i.fh = fcmp nsz uge float %i.fg, 4.000000e+04
  %i.fi = load float, ptr %i.fc, align 4, !tbaa !48 ; 3 uses
  %i.fj = load <4 x float>, ptr %i.fb, align 8, !tbaa !48 ; 4 uses
  %i.fk = fmul nsz <4 x float> %i.fd, splat (float 2.300000e+00) ; 2 uses
  %i.fl = extractelement <4 x float> %i.fk, i64 0
  %i.fm = fcmp nsz uge float %i.bn, %i.fl
  %or.cond121.not381 = or i1 %i.fm, %i.fh
  %i.fn = fcmp nsz uge float %i.fe, %i.ez
  %or.cond123.not378 = or i1 %i.fn, %or.cond121.not381 ; 2 uses
  %.sroa.14.0 = select i1 %or.cond123.not378, i32 %.sroa.14.5, i32 0 ; 4 uses
  %.not376 = select i1 %or.cond123.not378, i1 true, i1 %i.fa
  %i.fo = fcmp nsz ogt <4 x float> %i.fd, %i.fj
  %i.fp = select <4 x i1> %i.fo, <4 x float> %i.fd, <4 x float> %i.fj
  %i.fq = fcmp nsz olt <4 x float> %i.fp, splat (float 4.000000e+04)
  %i.fr = fmul nsz <4 x float> %i.fj, splat (float 2.300000e+00) ; 2 uses
  %i.fs = fcmp nsz olt <4 x float> %i.fd, %i.fr
  %i.ft = and <4 x i1> %i.fs, %i.fq
  %i.fu = fcmp nsz olt <4 x float> %i.fj, %i.fk
  %i.fv = and <4 x i1> %i.fu, %i.ft
  %i.fw = insertelement <4 x i32> poison, i32 %.sroa.25.3, i64 0
  %i.fx = insertelement <4 x i32> %i.fw, i32 %.sroa.36.3, i64 1
  %i.fy = insertelement <4 x i32> %i.fx, i32 %.sroa.47.3, i64 2
  %i.fz = insertelement <4 x i32> %i.fy, i32 %.sroa.58.3, i64 3
  %i.ga = select <4 x i1> %i.fv, <4 x i32> zeroinitializer, <4 x i32> %i.fz ; 7 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.gc = load float, ptr %i.gb, align 8, !tbaa !48 ; 7 uses
  %i.gd = fcmp nsz ogt float %i.fi, %i.gc
  %i.ge = select nsz i1 %i.gd, float %i.fi, float %i.gc
  %i.gf = fcmp nsz olt float %i.ge, 4.000000e+04
  %i.gg = fmul nsz float %i.gc, 2.300000e+00      ; 2 uses
  %i.gh = fcmp nsz olt float %i.fi, %i.gg
  %or.cond121.5 = and i1 %i.gh, %i.gf
end_hunk_0
begin_hunk_1_@ath:bb.a
  %i.i = tail call nsz double @llvm.fmuladd.f64(double %i.c, double 3.640000e+00, double %i.h)
  %i.j = fadd nsz double %i.b, f0xC021666666666666 ; 2 uses
  %i.k = fmul nsz double %i.j, -1.500000e-01
  %i.l = fmul nsz double %i.j, %i.k
  %i.m = tail call nsz double @llvm.exp.f64(double %i.l)
  %i.n = tail call nsz double @llvm.fmuladd.f64(double %i.m, double 6.000000e+00, double %i.i)
  %i.o = fmul nsz double %i.b, 7.600000e-04
  %i.p = fmul nsz double %i.o, %i.b
  %i.q = fmul nsz double %i.p, %i.b
  %i.r = tail call nsz double @llvm.fmuladd.f64(double %i.q, double %i.b, double %i.n)
  %i.s = fptrunc nsz double %i.r to float
  ret float %i.s
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp2.f64(double) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @av_freep(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @lame_window_init(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 356
  %i.b = load i32, ptr %i.a, align 4, !tbaa !38   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load i32, ptr %i.f, align 8, !tbaa !37
  %i.h = and i32 %i.g, 2
  %.not = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = zext nneg i32 %i.b to i64                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %middle.block
  %indvars.iv19 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next20, %middle.block ] ; 2 uses
  %i.k = getelementptr inbounds nuw [9312 x i8], ptr %i.e, i64 %indvars.iv19 ; 2 uses
  br i1 %.not, label %bb.c, label %vector.ph

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.i, align 8, !tbaa !36
  %i.m = sdiv i64 %i.l, %i.j
  %i.n = sdiv i64 %i.m, 1000
  %i.o = trunc i64 %i.n to i32                    ; 14 uses
  %.not.not.i = icmp slt i32 %i.o, 16
  br i1 %.not.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c
  %.026.lcssa.wide.i = phi i64 [ 1, %bb.c ], [ 2, %bb.e ], [ 3, %bb.f ], [ 4, %bb.g ], [ 5, %bb.h ], [ 6, %bb.i ], [ 7, %bb.j ], [ 8, %bb.k ], [ 9, %bb.l ], [ 10, %bb.m ], [ 11, %bb.n ], [ 12, %bb.o ] ; 2 uses
  %.lcssa.i = phi i32 [ 16, %bb.c ], [ 24, %bb.e ], [ 32, %bb.f ], [ 40, %bb.g ], [ 48, %bb.h ], [ 56, %bb.i ], [ 64, %bb.j ], [ 80, %bb.k ], [ 96, %bb.l ], [ 112, %bb.m ], [ 128, %bb.n ], [ 160, %bb.o ]
  %i.p = add nsw i64 %.026.lcssa.wide.i, -1       ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @psy_abr_map, i64 %i.p
  %i.r = load i32, ptr %i.q, align 8, !tbaa !139
  br label %lame_calc_attack_threshold.exit

bb.e:                                             ; preds = %bb.c
  %.not.not.1.i = icmp samesign ult i32 %i.o, 24
  br i1 %.not.not.1.i, label %bb.d, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.not.2.i = icmp samesign ult i32 %i.o, 32
  br i1 %.not.not.2.i, label %bb.d, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.not.3.i = icmp samesign ult i32 %i.o, 40
  br i1 %.not.not.3.i, label %bb.d, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.not.4.i = icmp samesign ult i32 %i.o, 48
  br i1 %.not.not.4.i, label %bb.d, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.not.5.i = icmp samesign ult i32 %i.o, 56
  br i1 %.not.not.5.i, label %bb.d, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.not.6.i = icmp samesign ult i32 %i.o, 64
  br i1 %.not.not.6.i, label %bb.d, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.not.7.i = icmp samesign ult i32 %i.o, 80
  br i1 %.not.not.7.i, label %bb.d, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not.not.8.i = icmp samesign ult i32 %i.o, 96
  br i1 %.not.not.8.i, label %bb.d, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.not.9.i = icmp samesign ult i32 %i.o, 112
  br i1 %.not.not.9.i, label %bb.d, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.not.10.i = icmp samesign ult i32 %i.o, 128
  br i1 %.not.not.10.i, label %bb.d, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.not.11.i = icmp samesign ult i32 %i.o, 160
  br i1 %.not.not.11.i, label %bb.d, label %lame_calc_attack_threshold.exit

lame_calc_attack_threshold.exit:                  ; preds = %bb.d, %bb.o
  %.020.i = phi i64 [ %i.p, %bb.d ], [ 12, %bb.o ]
  %.019.i = phi i64 [ %.026.lcssa.wide.i, %bb.d ], [ 12, %bb.o ]
  %.018.i = phi i32 [ %i.r, %bb.d ], [ 160, %bb.o ]
  %.017.i = phi i32 [ %.lcssa.i, %bb.d ], [ 160, %bb.o ]
  %i.s = sub nsw i32 %.017.i, %i.o
  %i.t = sub nsw i32 %i.o, %.018.i
  %i.u = icmp sgt i32 %i.s, %i.t
  %.020..019.i = select i1 %i.u, i64 %.020.i, i64 %.019.i
  %.pn.i = getelementptr inbounds nuw [8 x i8], ptr @psy_abr_map, i64 %.020..019.i
  %.021.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 4
  %.021.i = load float, ptr %.021.in.i, align 4, !tbaa !140
  br label %vector.ph

vector.ph:                                        ; preds = %bb.b, %lame_calc_attack_threshold.exit
  %.021.i.sink = phi float [ %.021.i, %lame_calc_attack_threshold.exit ], [ 4.200000e+00, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 9236
  store float %.021.i.sink, ptr %i.v, align 4, !tbaa !64
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 9240
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index
  store <4 x float> splat (float 1.000000e+01), ptr %i.x, align 4, !tbaa !48
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, 16
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1 ; 2 uses
  %exitcond22.not = icmp eq i64 %indvars.iv.next20, %i.j
  br i1 %exitcond22.not, label %._crit_edge, label %bb.b, !llvm.loop !137

._crit_edge:                                      ; preds = %middle.block, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

declare ptr @ff_psy_find_group(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log2.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.exp2.v4f64(<4 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp2.v2f32(<2 x float>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { cold nofree norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS14AVCodecContext", !9, i64 0}
!11 = !{!"p1 _ZTS10FFPsyModel", !9, i64 0}
!12 = !{!"p1 _ZTS12FFPsyChannel", !9, i64 0}
!13 = !{!"p1 _ZTS17FFPsyChannelGroup", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 omnipotent char", !14, i64 0}
!16 = !{!"p1 int", !9, i64 0}
!17 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8}
!18 = !{!"FFPsyContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !15, i64 40, !16, i64 48, !6, i64 56, !17, i64 60, !9, i64 72}
!19 = !{!18, !10, i64 0}
!20 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!21 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!22 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!23 = !{!"long", !5, i64 0}
!24 = !{!"p1 omnipotent char", !9, i64 0}
!25 = !{!"AVRational", !6, i64 0, !6, i64 4}
!26 = !{!"float", !5, i64 0}
!27 = !{!"p1 short", !9, i64 0}
!28 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!29 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!30 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!31 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!32 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!33 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!34 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!35 = !{!"AVCodecContext", !20, i64 0, !6, i64 8, !6, i64 12, !21, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !22, i64 40, !9, i64 48, !23, i64 56, !6, i64 64, !6, i64 68, !24, i64 72, !6, i64 80, !25, i64 84, !25, i64 92, !25, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !25, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !26, i64 204, !26, i64 208, !26, i64 212, !26, i64 216, !26, i64 220, !26, i64 224, !26, i64 228, !26, i64 232, !26, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !27, i64 288, !27, i64 296, !27, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !28, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !26, i64 428, !26, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !29, i64 456, !23, i64 464, !23, i64 472, !26, i64 480, !26, i64 484, !6, i64 488, !6, i64 492, !24, i64 496, !24, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !30, i64 536, !9, i64 544, !31, i64 552, !31, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !32, i64 728, !24, i64 736, !6, i64 744, !6, i64 748, !24, i64 752, !24, i64 760, !24, i64 768, !33, i64 776, !6, i64 784, !6, i64 788, !23, i64 792, !6, i64 800, !6, i64 804, !23, i64 808, !9, i64 816, !23, i64 824, !16, i64 832, !6, i64 840, !34, i64 848, !6, i64 856, !6, i64 860}
!36 = !{!35, !23, i64 56}
!37 = !{!35, !6, i64 64}
!38 = !{!35, !6, i64 356}
!39 = !{!18, !6, i64 36}
!40 = !{!35, !6, i64 344}
!41 = !{!18, !9, i64 72}
!42 = !{!35, !6, i64 420}
!43 = !{!"", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12}
!44 = !{!"p1 _ZTS13AacPsyChannel", !9, i64 0}
!45 = !{!"AacPsyContext", !6, i64 0, !6, i64 4, !6, i64 8, !43, i64 12, !5, i64 28, !44, i64 3616, !26, i64 3624}
!46 = !{!45, !6, i64 0}
!47 = !{!45, !6, i64 4}
!48 = !{!26, !26, i64 0}
!49 = !{!18, !6, i64 60}
!50 = !{!45, !6, i64 8}
!51 = !{!18, !15, i64 40}
!52 = !{!18, !16, i64 48}
!53 = !{!24, !24, i64 0}
!54 = !{!6, !6, i64 0}
!55 = !{!"AacPsyCoeffs", !26, i64 0, !26, i64 4, !5, i64 8, !5, i64 16, !26, i64 24}
!56 = !{!5, !5, i64 0}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!55, !26, i64 24}
!59 = !{!55, !26, i64 0}
!60 = !{!45, !44, i64 3616}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = !{!"llvm.loop.unroll.runtime.disable"}
!63 = !{!"AacPsyChannel", !5, i64 0, !5, i64 4608, !26, i64 9216, !5, i64 9220, !5, i64 9228, !6, i64 9232, !26, i64 9236, !5, i64 9240, !6, i64 9304, !6, i64 9308}
!64 = !{!63, !26, i64 9236}
!65 = !{!"FFPsyWindowInfo", !5, i64 0, !6, i64 12, !6, i64 16, !5, i64 20, !5, i64 52, !16, i64 88}
!66 = !{!65, !6, i64 16}
!67 = distinct !{!67, !57}
!68 = distinct !{!68, !57}
!69 = distinct !{!69, !57}
!70 = distinct !{!70, !57}
!71 = distinct !{!71, !57}
!72 = !{!45, !26, i64 3624}
!73 = !{!55, !26, i64 4}
!74 = distinct !{!74, !57, !61, !62}
!75 = distinct !{!75, !57}
!76 = distinct !{!76, !57}
!77 = !{!63, !6, i64 9308}
!78 = !{!63, !6, i64 9304}
!79 = !{!63, !6, i64 9232}
!80 = !{!65, !6, i64 12}
!81 = !{!63, !5, i64 9228}
!82 = distinct !{!82, !57}
!83 = distinct !{!83, !57}
!84 = distinct !{!84, !57}
!85 = distinct !{!85, !57}
!86 = distinct !{!86, !57}
!87 = distinct !{!87, !57}
!88 = distinct !{!88, !57}
!89 = distinct !{!89, !57}
!90 = distinct !{!90, !57}
!91 = distinct !{!91, !57}
!92 = distinct !{!92, !57}
!93 = distinct !{!93, !57}
!94 = distinct !{!94, !57}
!95 = distinct !{!95, !57}
!96 = distinct !{!96, !57}
!97 = distinct !{!97, !57}
!98 = distinct !{!98, !57}
!99 = distinct !{!99, i1 false, !"LVerDomain"}
!100 = distinct !{!100, !99}
!101 = distinct !{!101, !99}
!102 = distinct !{!102, !99}
!103 = distinct !{!103, !57, !61, !62}
!104 = distinct !{!104, !57, !61}
!105 = distinct !{!105, !57}
!106 = distinct !{!106, !57}
!107 = !{!"FFPsyChannelGroup", !5, i64 0, !5, i64 160, !5, i64 161}
!108 = !{!107, !5, i64 160}
!109 = !{!"p1 float", !9, i64 0}
!110 = !{!109, !109, i64 0}
!111 = !{!"AacPsyBand", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20, !26, i64 24, !26, i64 28, !6, i64 32}
!112 = !{!111, !26, i64 0}
!113 = !{!111, !26, i64 4}
!114 = !{!111, !26, i64 12}
!115 = !{!111, !26, i64 8}
!116 = !{!111, !26, i64 24}
!117 = !{!111, !26, i64 16}
!118 = !{!111, !6, i64 32}
!119 = !{!18, !12, i64 16}
!120 = !{!"FFPsyChannel", !5, i64 0, !26, i64 2048}
!121 = !{!120, !26, i64 2048}
!122 = !{!18, !6, i64 64}
!123 = !{!45, !26, i64 16}
!124 = !{!45, !26, i64 12}
!125 = !{!45, !26, i64 20}
!126 = !{!18, !6, i64 68}
!127 = !{!111, !26, i64 28}
!128 = !{!111, !26, i64 20}
!129 = !{!100}
!130 = !{!101}
!131 = !{!100, !102}
!132 = !{!102}
!133 = !{!"FFPsyBand", !6, i64 0, !26, i64 4, !26, i64 8, !26, i64 12}
!134 = !{!133, !26, i64 12}
!135 = !{!133, !6, i64 0}
!136 = distinct !{!136, !57, !61, !62}
!137 = distinct !{!137, !57}
!138 = !{!"PsyLamePreset", !6, i64 0, !26, i64 4}
!139 = !{!138, !6, i64 0}
!140 = !{!138, !26, i64 4}
end_hunk_1
