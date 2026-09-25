Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image_write?download=true
inline.NumInlined: 97
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 28
begin_hunk_0_@stbiw__jpg_writeBits:bb.a
  %i.p = lshr i32 %.01819, 16
  %i.q = trunc i32 %i.p to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.q, ptr %i.b, align 1, !tbaa !17
  %i.r = load ptr, ptr %0, align 8, !tbaa !15
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !16
  call void %i.r(ptr noundef %i.s, ptr noundef nonnull %i.b, i32 noundef 1) #25, !inline_history !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.t = and i32 %.01819, 16711680
  %i.u = icmp eq i32 %i.t, 16711680
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.v = load ptr, ptr %0, align 8, !tbaa !15
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !16
  call void %i.v(ptr noundef %i.w, ptr noundef nonnull %i.a, i32 noundef 1) #25, !inline_history !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = shl i32 %.01819, 8                       ; 2 uses
  %i.y = add nsw i32 %.020, -8                    ; 2 uses
  %i.z = icmp sgt i32 %.020, 15
  br i1 %i.z, label %bb.b, label %._crit_edge, !llvm.loop !3

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.018.lcssa = phi i32 [ %i.m, %bb.a ], [ %i.x, %bb.d ]
  %.0.lcssa = phi i32 [ %i.h, %bb.a ], [ %i.y, %bb.d ]
  store i32 %.018.lcssa, ptr %1, align 4, !tbaa !12
  store i32 %.0.lcssa, ptr %2, align 4, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @stbiw__jpg_DCT(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7) local_unnamed_addr #8 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !23   ; 2 uses
  %i.b = load float, ptr %1, align 4, !tbaa !23   ; 2 uses
  %i.c = load float, ptr %2, align 4, !tbaa !23   ; 2 uses
  %i.d = load float, ptr %3, align 4, !tbaa !23   ; 2 uses
  %i.e = load float, ptr %4, align 4, !tbaa !23   ; 2 uses
  %i.f = load float, ptr %5, align 4, !tbaa !23   ; 2 uses
  %i.g = load float, ptr %6, align 4, !tbaa !23   ; 2 uses
  %i.h = load float, ptr %7, align 4, !tbaa !23   ; 2 uses
  %i.i = fadd float %i.a, %i.h                    ; 2 uses
  %i.j = fadd float %i.b, %i.g                    ; 2 uses
  %i.k = fadd float %i.c, %i.f                    ; 2 uses
  %i.l = fadd float %i.d, %i.e                    ; 2 uses
  %i.m = fadd float %i.l, %i.i                    ; 2 uses
  %i.n = fsub float %i.i, %i.l                    ; 3 uses
  %i.o = fadd float %i.k, %i.j                    ; 2 uses
  %i.p = fsub float %i.j, %i.k
  %i.q = fadd float %i.o, %i.m
  %i.r = fsub float %i.m, %i.o
  %i.s = fadd float %i.p, %i.n
  %i.t = fmul float %i.s, f0x3F3504F3             ; 2 uses
  %i.u = fadd float %i.n, %i.t
  %i.v = fsub float %i.n, %i.t
  %i.w = insertelement <2 x float> poison, float %i.c, i64 0
  %i.x = insertelement <2 x float> %i.w, float %i.a, i64 1
  %i.y = insertelement <2 x float> poison, float %i.f, i64 0
  %i.z = insertelement <2 x float> %i.y, float %i.h, i64 1
  %i.aa = fsub <2 x float> %i.x, %i.z             ; 3 uses
  %i.ab = insertelement <2 x float> poison, float %i.d, i64 0
  %i.ac = insertelement <2 x float> %i.ab, float %i.b, i64 1
  %i.ad = insertelement <2 x float> poison, float %i.e, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %i.g, i64 1
  %i.af = fsub <2 x float> %i.ac, %i.ae           ; 2 uses
  %shift = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.aa, %shift
  %i.ag = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ah = fadd <2 x float> %i.af, %i.aa           ; 3 uses
  %shift80 = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop81 = fsub <2 x float> %i.ah, %shift80
  %i.ai = extractelement <2 x float> %foldExtExtBinop81, i64 0
  %i.aj = fmul float %i.ai, f0x3EC3EF15
  %i.ak = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> <float f0x3F0A8BD4, float f0x3FA73D75>, <2 x float> %i.al) ; 2 uses
  %i.an = fmul float %i.ag, f0x3F3504F3           ; 2 uses
  %i.ao = extractelement <2 x float> %i.aa, i64 1 ; 2 uses
  %i.ap = fadd float %i.ao, %i.an                 ; 2 uses
  %i.aq = fsub float %i.ao, %i.an                 ; 2 uses
  %i.ar = extractelement <2 x float> %i.am, i64 0 ; 2 uses
  %i.as = fadd float %i.aq, %i.ar
  store float %i.as, ptr %5, align 4, !tbaa !23
  %i.at = fsub float %i.aq, %i.ar
  store float %i.at, ptr %3, align 4, !tbaa !23
  %i.au = extractelement <2 x float> %i.am, i64 1 ; 2 uses
  %i.av = fadd float %i.ap, %i.au
  store float %i.av, ptr %1, align 4, !tbaa !23
  %i.aw = fsub float %i.ap, %i.au
  store float %i.aw, ptr %7, align 4, !tbaa !23
  store float %i.q, ptr %0, align 4, !tbaa !23
  store float %i.u, ptr %2, align 4, !tbaa !23
  store float %i.r, ptr %4, align 4, !tbaa !23
  store float %i.v, ptr %6, align 4, !tbaa !23
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #22

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @stbiw__jpg_calcBits(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  %i.b = lshr i32 %i.a, 1
  %i.c = tail call range(i32 2, 33) i32 @llvm.ctlz.i32(i32 %i.b, i1 false)
  %i.d = trunc nuw nsw i32 %i.c to i16
  %i.e = sub nuw nsw i16 33, %i.d                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.e, ptr %i.f, align 2, !tbaa !29
  %.lobit = ashr i32 %0, 31
  %i.g = add nsw i32 %.lobit, %0
  %i.h = zext nneg i16 %i.e to i32
  %notmask = shl nsw i32 -1, %i.h
  %i.i = xor i32 %notmask, -1
  %i.j = and i32 %i.g, %i.i
  %i.k = trunc i32 %i.j to i16
  store i16 %i.k, ptr %1, align 2, !tbaa !29
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @stbiw__jpg_processDU(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %i.l = alloca i8, align 1                       ; 4 uses
  %i.m = alloca i8, align 1                       ; 4 uses
  %i.n = alloca i8, align 1                       ; 4 uses
  %i.o = alloca i8, align 1                       ; 4 uses
  %i.p = alloca i8, align 1                       ; 4 uses
  %i.q = alloca [64 x i32], align 16              ; 75 uses
  %i.r = load i16, ptr %8, align 2, !tbaa !29     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !29   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 960
  %i.v = load i16, ptr %i.u, align 2, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 962
  %i.x = load i16, ptr %i.w, align 2, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #25
  %i.y = shl nsw i32 %4, 3
  %i.z = icmp sgt i32 %4, 0
  br i1 %i.z, label %.lr.ph.preheader, label %.preheader192

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.aa = zext nneg i32 %4 to i64
  br label %.lr.ph

.preheader192:                                    ; preds = %.lr.ph, %bb.a
  %i.ab = shl nsw i32 %4, 1
  %i.ac = mul nsw i32 %4, 3
  %i.ad = shl nsw i32 %4, 2
  %i.ae = mul nsw i32 %4, 5
  %i.af = mul nsw i32 %4, 6
  %i.ag = mul nsw i32 %4, 7
  %i.ah = sext i32 %4 to i64                      ; 2 uses
  %i.ai = sext i32 %i.ab to i64
  %i.aj = sext i32 %i.ac to i64
  %i.ak = sext i32 %i.ad to i64
  %i.al = sext i32 %i.ae to i64
  %i.am = sext i32 %i.af to i64
  %i.an = sext i32 %i.ag to i64
  %invariant.gep = getelementptr [4 x i8], ptr %3, i64 %i.ah
  %invariant.gep305 = getelementptr [4 x i8], ptr %3, i64 %i.ai
  %invariant.gep307 = getelementptr [4 x i8], ptr %3, i64 %i.aj
  %invariant.gep309 = getelementptr [4 x i8], ptr %3, i64 %i.ak
  %invariant.gep311 = getelementptr [4 x i8], ptr %3, i64 %i.al
  %invariant.gep313 = getelementptr [4 x i8], ptr %3, i64 %i.am
  %invariant.gep315 = getelementptr [4 x i8], ptr %3, i64 %i.an
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv ; 9 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 4      ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ao, i64 8
  %i.ar = getelementptr i8, ptr %i.ao, i64 12     ; 2 uses
  %i.as = getelementptr i8, ptr %i.ao, i64 16     ; 2 uses
  %i.at = getelementptr i8, ptr %i.ao, i64 20     ; 2 uses
  %i.au = getelementptr i8, ptr %i.ao, i64 24
  %i.av = getelementptr i8, ptr %i.ao, i64 28     ; 2 uses
  %i.aw = load float, ptr %i.ao, align 4, !tbaa !23 ; 2 uses
  %i.ax = load float, ptr %i.av, align 4, !tbaa !23 ; 2 uses
  %i.ay = fadd float %i.aw, %i.ax                 ; 2 uses
  %i.az = load <2 x float>, ptr %i.ap, align 4, !tbaa !23
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.bb = load float, ptr %i.as, align 4, !tbaa !23 ; 2 uses
  %i.bc = load float, ptr %i.ar, align 4, !tbaa !23 ; 2 uses
  %i.bd = load <2 x float>, ptr %i.at, align 4, !tbaa !23 ; 3 uses
  %foldExtExtBinop = fadd <2 x float> %i.ba, %i.bd
  %i.be = extractelement <2 x float> %foldExtExtBinop, i64 1 ; 2 uses
  %foldExtExtBinop336 = fadd <2 x float> %i.ba, %i.bd
  %i.bf = extractelement <2 x float> %foldExtExtBinop336, i64 0 ; 2 uses
  %i.bg = fsub <2 x float> %i.ba, %i.bd           ; 3 uses
  %i.bh = fadd float %i.bc, %i.bb                 ; 2 uses
  %9 = fsub float %i.aw, %i.ax                    ; 3 uses
  %i.bi = fsub float %i.bc, %i.bb
  %i.bj = fadd float %i.bh, %i.ay                 ; 2 uses
  %i.bk = fsub float %i.ay, %i.bh                 ; 3 uses
  %i.bl = fadd float %i.bf, %i.be                 ; 2 uses
  %i.bm = fsub float %i.be, %i.bf
  %i.bn = fadd float %i.bl, %i.bj
  %i.bo = fsub float %i.bj, %i.bl
  %i.bp = fadd float %i.bm, %i.bk
  %i.bq = fmul float %i.bp, f0x3F3504F3           ; 2 uses
  %i.br = fadd float %i.bk, %i.bq
  %i.bs = fsub float %i.bk, %i.bq
  %shift = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop338 = fadd <2 x float> %i.bg, %shift
  %i.bt = extractelement <2 x float> %foldExtExtBinop338, i64 0
  %i.bu = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bv = insertelement <2 x float> %i.bu, float %9, i64 1
  %i.bw = fadd <2 x float> %i.bg, %i.bv           ; 3 uses
  %shift340 = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop341 = fsub <2 x float> %i.bw, %shift340
  %i.bx = extractelement <2 x float> %foldExtExtBinop341, i64 0
  %i.by = fmul float %i.bx, f0x3EC3EF15
  %i.bz = insertelement <2 x float> poison, float %i.by, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> <float f0x3F0A8BD4, float f0x3FA73D75>, <2 x float> %i.ca) ; 2 uses
  %i.cc = fmul float %i.bt, f0x3F3504F3           ; 2 uses
  %i.cd = fadd float %9, %i.cc                    ; 2 uses
  %i.ce = fsub float %9, %i.cc                    ; 2 uses
  %i.cf = extractelement <2 x float> %i.cb, i64 0 ; 2 uses
  %i.cg = fadd float %i.ce, %i.cf
  store float %i.cg, ptr %i.at, align 4, !tbaa !23
  %i.ch = fsub float %i.ce, %i.cf
  store float %i.ch, ptr %i.ar, align 4, !tbaa !23
  %i.ci = extractelement <2 x float> %i.cb, i64 1 ; 2 uses
  %i.cj = fadd float %i.cd, %i.ci
  store float %i.cj, ptr %i.ap, align 4, !tbaa !23
  %i.ck = fsub float %i.cd, %i.ci
  store float %i.ck, ptr %i.av, align 4, !tbaa !23
  store float %i.bn, ptr %i.ao, align 4, !tbaa !23
  store float %i.br, ptr %i.aq, align 4, !tbaa !23
  store float %i.bo, ptr %i.as, align 4, !tbaa !23
  store float %i.bs, ptr %i.au, align 4, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.aa ; 2 uses
  %i.cl = trunc nuw i64 %indvars.iv.next to i32
  %i.cm = icmp sgt i32 %i.y, %i.cl
  br i1 %i.cm, label %.lr.ph, label %.preheader192, !llvm.loop !103

bb.b:                                             ; preds = %.preheader192, %bb.b
  %indvars.iv241 = phi i64 [ 0, %.preheader192 ], [ %indvars.iv.next242, %bb.b ] ; 9 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv241 ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv241 ; 2 uses
  %gep306 = getelementptr [4 x i8], ptr %invariant.gep305, i64 %indvars.iv241 ; 2 uses
  %gep308 = getelementptr [4 x i8], ptr %invariant.gep307, i64 %indvars.iv241 ; 2 uses
  %gep310 = getelementptr [4 x i8], ptr %invariant.gep309, i64 %indvars.iv241 ; 2 uses
  %gep312 = getelementptr [4 x i8], ptr %invariant.gep311, i64 %indvars.iv241 ; 2 uses
  %gep314 = getelementptr [4 x i8], ptr %invariant.gep313, i64 %indvars.iv241 ; 2 uses
  %gep316 = getelementptr [4 x i8], ptr %invariant.gep315, i64 %indvars.iv241 ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !23 ; 2 uses
  %i.cp = load float, ptr %gep, align 4, !tbaa !23 ; 2 uses
  %i.cq = load float, ptr %gep306, align 4, !tbaa !23 ; 2 uses
  %i.cr = load float, ptr %gep308, align 4, !tbaa !23 ; 2 uses
  %i.cs = load float, ptr %gep310, align 4, !tbaa !23 ; 2 uses
  %i.ct = load float, ptr %gep312, align 4, !tbaa !23 ; 2 uses
  %i.cu = load float, ptr %gep314, align 4, !tbaa !23 ; 2 uses
  %i.cv = load float, ptr %gep316, align 4, !tbaa !23 ; 2 uses
  %i.cw = fadd float %i.co, %i.cv                 ; 2 uses
  %i.cx = fadd float %i.cp, %i.cu                 ; 2 uses
  %i.cy = fadd float %i.cq, %i.ct                 ; 2 uses
  %i.cz = fadd float %i.cr, %i.cs                 ; 2 uses
  %i.da = fadd float %i.cz, %i.cw                 ; 2 uses
  %i.db = fsub float %i.cw, %i.cz                 ; 3 uses
  %i.dc = fadd float %i.cy, %i.cx                 ; 2 uses
  %i.dd = fsub float %i.cx, %i.cy
  %i.de = fadd float %i.dc, %i.da
  %i.df = fsub float %i.da, %i.dc
  %i.dg = fadd float %i.dd, %i.db
  %i.dh = fmul float %i.dg, f0x3F3504F3           ; 2 uses
  %i.di = fadd float %i.db, %i.dh
  %i.dj = fsub float %i.db, %i.dh
  %i.dk = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.dl = insertelement <2 x float> %i.dk, float %i.co, i64 1
  %i.dm = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.dn = insertelement <2 x float> %i.dm, float %i.cv, i64 1
  %i.do = fsub <2 x float> %i.dl, %i.dn           ; 3 uses
  %i.dp = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.dq = insertelement <2 x float> %i.dp, float %i.cp, i64 1
  %i.dr = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.ds = insertelement <2 x float> %i.dr, float %i.cu, i64 1
  %i.dt = fsub <2 x float> %i.dq, %i.ds           ; 2 uses
  %shift343 = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop344 = fadd <2 x float> %i.do, %shift343
  %i.du = extractelement <2 x float> %foldExtExtBinop344, i64 0
  %i.dv = fadd <2 x float> %i.dt, %i.do           ; 3 uses
  %shift346 = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop347 = fsub <2 x float> %i.dv, %shift346
  %i.dw = extractelement <2 x float> %foldExtExtBinop347, i64 0
  %i.dx = fmul float %i.dw, f0x3EC3EF15
  %i.dy = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dv, <2 x float> <float f0x3F0A8BD4, float f0x3FA73D75>, <2 x float> %i.dz) ; 2 uses
  %i.eb = fmul float %i.du, f0x3F3504F3           ; 2 uses
  %i.ec = extractelement <2 x float> %i.do, i64 1 ; 2 uses
  %i.ed = fadd float %i.ec, %i.eb                 ; 2 uses
  %i.ee = fsub float %i.ec, %i.eb                 ; 2 uses
  %i.ef = extractelement <2 x float> %i.ea, i64 0 ; 2 uses
  %i.eg = fadd float %i.ee, %i.ef
  store float %i.eg, ptr %gep312, align 4, !tbaa !23
  %i.eh = fsub float %i.ee, %i.ef
  store float %i.eh, ptr %gep308, align 4, !tbaa !23
  %i.ei = extractelement <2 x float> %i.ea, i64 1 ; 2 uses
  %i.ej = fadd float %i.ed, %i.ei
  store float %i.ej, ptr %gep, align 4, !tbaa !23
  %i.ek = fsub float %i.ed, %i.ei
  store float %i.ek, ptr %gep316, align 4, !tbaa !23
  store float %i.de, ptr %i.cn, align 4, !tbaa !23
  store float %i.di, ptr %gep306, align 4, !tbaa !23
  store float %i.df, ptr %gep310, align 4, !tbaa !23
  store float %i.dj, ptr %gep314, align 4, !tbaa !23
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next242, 8
  br i1 %exitcond.not, label %.preheader190, label %bb.b, !llvm.loop !104

.preheader190:                                    ; preds = %bb.b, %.preheader190
  %indvars.iv254 = phi i64 [ %indvars.iv.next255, %.preheader190 ], [ 0, %bb.b ] ; 10 uses
  %indvars.iv252 = phi i64 [ %indvars.iv.next253, %.preheader190 ], [ 0, %bb.b ] ; 2 uses
  %i.el = mul nsw i64 %indvars.iv252, %i.ah
  %i.em = getelementptr inbounds [4 x i8], ptr %3, i64 %i.el
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv254
  %i.eo = getelementptr inbounds nuw i8, ptr @stbiw__jpg_ZigZag, i64 %indvars.iv254
  %i.ep = load i8, ptr %i.eo, align 8, !tbaa !17
  %i.eq = zext i8 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr @stbiw__jpg_ZigZag, i64 %indvars.iv254
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !17
  %i.ev = zext i8 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr @stbiw__jpg_ZigZag, i64 %indvars.iv254
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  %i.ez = load i8, ptr %i.ey, align 2, !tbaa !17
  %i.fa = zext i8 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr @stbiw__jpg_ZigZag, i64 %indvars.iv254
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 3
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !17
  %i.ff = zext i8 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr @stbiw__jpg_ZigZag, i64 %indvars.iv254
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fj = load i8, ptr %i.fi, align 4, !tbaa !17
  %i.fk = zext i8 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr @stbiw__jpg_ZigZag, i64 %indvars.iv254
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 5
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !17
  %i.fp = zext i8 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr @stbiw__jpg_ZigZag, i64 %indvars.iv254
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 6
  %i.ft = load i8, ptr %i.fs, align 2, !tbaa !17
  %i.fu = zext i8 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.fu
  %i.fw = load <8 x float>, ptr %i.em, align 4, !tbaa !23
  %i.fx = load <8 x float>, ptr %i.en, align 4, !tbaa !23
  %i.fy = fmul <8 x float> %i.fw, %i.fx           ; 3 uses
  %i.fz = fcmp olt <8 x float> %i.fy, zeroinitializer
  %i.ga = select <8 x i1> %i.fz, <8 x float> splat (float -5.000000e-01), <8 x float> splat (float 5.000000e-01) ; 2 uses
  %i.gb = shufflevector <8 x float> %i.fy, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gc = shufflevector <8 x float> %i.ga, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gd = fadd <4 x float> %i.gb, %i.gc           ; 4 uses
  %i.ge = extractelement <4 x float> %i.gd, i64 0
  %i.gf = fptosi float %i.ge to i32
  store i32 %i.gf, ptr %i.er, align 4, !tbaa !12
  %i.gg = extractelement <4 x float> %i.gd, i64 1
  %i.gh = fptosi float %i.gg to i32
  store i32 %i.gh, ptr %i.ew, align 4, !tbaa !12
  %i.gi = extractelement <4 x float> %i.gd, i64 2
  %i.gj = fptosi float %i.gi to i32
  store i32 %i.gj, ptr %i.fb, align 4, !tbaa !12
  %i.gk = extractelement <4 x float> %i.gd, i64 3
  %i.gl = fptosi float %i.gk to i32
  store i32 %i.gl, ptr %i.fg, align 4, !tbaa !12
  %i.gm = shufflevector <8 x float> %i.fy, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.gn = shufflevector <8 x float> %i.ga, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.go = fadd <4 x float> %i.gm, %i.gn           ; 4 uses
  %i.gp = extractelement <4 x float> %i.go, i64 0
  %i.gq = fptosi float %i.gp to i32
  store i32 %i.gq, ptr %i.fl, align 4, !tbaa !12
  %i.gr = extractelement <4 x float> %i.go, i64 1
  %i.gs = fptosi float %i.gr to i32
  store i32 %i.gs, ptr %i.fq, align 4, !tbaa !12
  %i.gt = extractelement <4 x float> %i.go, i64 2
  %i.gu = fptosi float %i.gt to i32
  store i32 %i.gu, ptr %i.fv, align 4, !tbaa !12
  %i.gv = extractelement <4 x float> %i.go, i64 3
  %i.gw = fptosi float %i.gv to i32
  %i.gx = getelementptr inbounds nuw i8, ptr @stbiw__jpg_ZigZag, i64 %indvars.iv254
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 7
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !17
  %i.ha = zext i8 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ha
  store i32 %i.gw, ptr %i.hb, align 4, !tbaa !12
end_hunk_0
