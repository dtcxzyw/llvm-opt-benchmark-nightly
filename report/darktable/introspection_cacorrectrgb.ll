inline.NumInlined: 20
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
begin_hunk_0_@commit_params:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.d = load i32, ptr %i.c, align 8, !tbaa !30
  %i.e = sext i32 %i.d to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.b, ptr align 1 %1, i64 %i.e, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 4 uses
  %i.b = alloca [4 x float], align 16             ; 4 uses
  %i.c = alloca [4 x float], align 16             ; 5 uses
  %i.d = alloca [4 x float], align 16             ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.f = load i32, ptr %i.e, align 4, !tbaa !42
  %i.g = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.f, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #18
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !11  ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.k = load float, ptr %i.j, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = load float, ptr %i.l, align 4, !tbaa !44
  %i.n = fdiv reassoc nsz arcp contract afn float %i.k, %i.m
  %i.o = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.n, float 1.000000e+00) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !45   ; 4 uses
  %i.r = sext i32 %i.q to i64                     ; 14 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !46   ; 3 uses
  %i.u = sext i32 %i.t to i64                     ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !47 ; 3 uses
  %i.x = fdiv reassoc nsz arcp contract afn float %i.w, %i.o
  %i.y = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.x, float 1.000000e+00) ; 3 uses
  %i.z = fmul reassoc nsz arcp contract afn float %i.w, %i.w
  %i.aa = fdiv reassoc nsz arcp contract afn float %i.z, %i.o
  %i.ab = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aa, float 1.000000e+00)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !49
  %i.ae = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ad
  %i.af = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float 2.000000e+01, float %i.ae) ; 3 uses
  %i.ag = load i32, ptr %i.i, align 4, !tbaa !50  ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !51 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !52
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.al = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.y, float 3.000000e+00) ; 4 uses
  %i.am = uitofp reassoc nsz arcp contract afn i64 %i.r to float ; 5 uses
  %i.an = fdiv reassoc nsz arcp contract afn float %i.am, %i.al
  %i.ao = fptoui float %i.an to i64               ; 19 uses
  %i.ap = uitofp reassoc nsz arcp contract afn i64 %i.u to float ; 3 uses
  %i.aq = fdiv reassoc nsz arcp contract afn float %i.ap, %i.al
  %i.ar = fptoui float %i.aq to i64               ; 12 uses
  %i.as = mul i64 %i.ao, %i.ar                    ; 15 uses
  %i.at = shl i64 %i.as, 4                        ; 6 uses
  %i.au = tail call ptr @dt_alloc_aligned(i64 noundef %i.at) #18, !noalias !58 ; 20 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.au, i64 64) ]
  %i.av = mul i64 %i.as, 24
  %i.aw = tail call ptr @dt_alloc_aligned(i64 noundef %i.av) #18, !noalias !58 ; 22 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aw, i64 64) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %.not.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i, label %interpolate_bilinear.exit.i, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.b
  %.not91.i.i = icmp eq i64 %i.ao, 0
  %i.ax = add nsw i64 %i.r, -1                    ; 3 uses
  %i.ay = add nsw i64 %i.u, -1                    ; 2 uses
  br i1 %.not91.i.i, label %interpolate_bilinear.exit.i, label %.preheader.lr.ph.split.i.i

.preheader.lr.ph.split.i.i:                       ; preds = %.preheader.lr.ph.i.i
  %i.az = uitofp reassoc nsz arcp contract afn i64 %i.ao to float ; 2 uses
  %i.ba = uitofp reassoc nsz arcp contract afn i64 %i.ar to float
  %i.bb = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ba
  %min.iters.check = icmp ult i64 %i.ao, 8
  %n.vec = and i64 %i.ao, -8                      ; 3 uses
  %broadcast.splatinsert61 = insertelement <8 x float> poison, float %i.am, i64 0
  %broadcast.splat62 = shufflevector <8 x float> %broadcast.splatinsert61, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert63 = insertelement <8 x float> poison, float %i.az, i64 0
  %broadcast.splat64 = shufflevector <8 x float> %broadcast.splatinsert63, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert65 = insertelement <8 x i64> poison, i64 %i.r, i64 0
  %broadcast.splat66 = shufflevector <8 x i64> %broadcast.splatinsert65, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert67 = insertelement <8 x i64> poison, i64 %i.ax, i64 0
  %broadcast.splat68 = shufflevector <8 x i64> %broadcast.splatinsert67, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bc = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat64
  %cmp.n = icmp eq i64 %n.vec, %i.ao
  %i.bd = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.az
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.lr.ph.split.i.i
  %.08389.i.i = phi i64 [ 0, %.preheader.lr.ph.split.i.i ], [ %i.ea, %._crit_edge.i.i ] ; 3 uses
  %i.be = uitofp reassoc nsz arcp contract afn i64 %.08389.i.i to float
  %i.bf = fmul reassoc nnan nsz arcp contract afn float %i.ap, %i.be
  %i.bg = fmul reassoc nsz arcp contract afn float %i.bf, %i.bb ; 2 uses
  %i.bh = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.bg)
  %i.bi = fptoui float %i.bh to i64               ; 3 uses
  %i.bj = add i64 %i.bi, 1                        ; 2 uses
  %i.bk = icmp ugt i64 %i.u, %i.bi
  %i.bl = select i1 %i.bk, i64 %i.bi, i64 %i.ay
  %i.bm = icmp ult i64 %i.bj, %i.u
  %i.bn = select i1 %i.bm, i64 %i.bj, i64 %i.ay   ; 2 uses
  %i.bo = mul i64 %i.bl, %i.r                     ; 3 uses
  %i.bp = mul i64 %i.bn, %i.r                     ; 3 uses
  %i.bq = uitofp reassoc nsz arcp contract afn i64 %i.bn to float
  %i.br = fsub reassoc nsz arcp contract afn float %i.bq, %i.bg ; 2 uses
  %i.bs = mul i64 %.08389.i.i, %i.ao              ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.bo, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert57 = insertelement <8 x i64> poison, i64 %i.bp, i64 0
  %broadcast.splat58 = shufflevector <8 x i64> %broadcast.splatinsert57, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert59 = insertelement <8 x float> poison, float %i.br, i64 0 ; 2 uses
  %i.bt = shufflevector <8 x float> %broadcast.splatinsert59, <8 x float> poison, <16 x i32> zeroinitializer
  %i.bu = shufflevector <8 x float> %broadcast.splatinsert59, <8 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bv = uitofp <8 x i64> %vec.ind to <8 x float>
  %i.bw = fmul reassoc nnan nsz arcp contract afn <8 x float> %broadcast.splat62, %i.bv
  %i.bx = fmul reassoc nsz arcp contract afn <8 x float> %i.bw, %i.bc ; 2 uses
  %i.by = tail call reassoc nsz arcp contract afn <8 x float> @llvm.floor.v8f32(<8 x float> %i.bx)
  %i.bz = fptoui <8 x float> %i.by to <8 x i64>   ; 3 uses
  %i.ca = add <8 x i64> %i.bz, splat (i64 1)      ; 2 uses
  %i.cb = icmp ugt <8 x i64> %broadcast.splat66, %i.bz
  %i.cc = select <8 x i1> %i.cb, <8 x i64> %i.bz, <8 x i64> %broadcast.splat68 ; 2 uses
  %i.cd = icmp ult <8 x i64> %i.ca, %broadcast.splat66
  %i.ce = select <8 x i1> %i.cd, <8 x i64> %i.ca, <8 x i64> %broadcast.splat68 ; 3 uses
  %i.cf = add <8 x i64> %i.cc, %broadcast.splat
  %i.cg = shl <8 x i64> %i.cf, splat (i64 4)
  %wide.gep = getelementptr inbounds nuw i8, ptr %2, <8 x i64> %i.cg ; 4 uses
  %i.ch = add <8 x i64> %i.ce, %broadcast.splat
  %i.ci = shl <8 x i64> %i.ch, splat (i64 4)
  %wide.gep69 = getelementptr inbounds nuw i8, ptr %2, <8 x i64> %i.ci ; 4 uses
  %i.cj = add <8 x i64> %i.ce, %broadcast.splat58
  %i.ck = shl <8 x i64> %i.cj, splat (i64 4)
  %wide.gep70 = getelementptr inbounds nuw i8, ptr %2, <8 x i64> %i.ck ; 4 uses
  %i.cl = add <8 x i64> %i.cc, %broadcast.splat58
  %i.cm = shl <8 x i64> %i.cl, splat (i64 4)
  %wide.gep71 = getelementptr inbounds nuw i8, ptr %2, <8 x i64> %i.cm ; 4 uses
  %i.cn = uitofp <8 x i64> %i.ce to <8 x float>
  %i.co = fsub reassoc nsz arcp contract afn <8 x float> %i.cn, %i.bx ; 7 uses
  %i.cp = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.co ; 6 uses
  %i.cq = add i64 %index, %i.bs
  %i.cr = shl i64 %i.cq, 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.cr
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep71, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !65, !noalias !66
  %i.ct = fmul reassoc nsz arcp contract afn <8 x float> %i.co, %wide.masked.gather
  %wide.masked.gather72 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep70, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !65, !noalias !66
  %i.cu = fmul reassoc nsz arcp contract afn <8 x float> %i.cp, %wide.masked.gather72
  %i.cv = fadd reassoc nsz arcp contract afn <8 x float> %i.cu, %i.ct ; 2 uses
  %wide.masked.gather73 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !65, !noalias !66
  %wide.masked.gather74 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep69, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !65, !noalias !66
  %wide.gep75 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep71, i64 4
  %wide.masked.gather76 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep75, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !65, !noalias !66
  %i.cw = fmul reassoc nsz arcp contract afn <8 x float> %i.co, %wide.masked.gather76
  %wide.gep77 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep70, i64 4
  %wide.masked.gather78 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep77, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !65, !noalias !66
  %i.cx = fmul reassoc nsz arcp contract afn <8 x float> %i.cp, %wide.masked.gather78
  %i.cy = fadd reassoc nsz arcp contract afn <8 x float> %i.cx, %i.cw ; 2 uses
  %wide.gep79 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.masked.gather80 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep79, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !65, !noalias !66
  %wide.gep81 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep69, i64 4
  %wide.masked.gather82 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep81, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !65, !noalias !66
  %wide.gep83 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep71, i64 8
  %wide.masked.gather84 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep83, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !65, !noalias !66
  %i.cz = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather84, %i.co
  %wide.gep85 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep70, i64 8
  %wide.masked.gather86 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep85, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !65, !noalias !66
  %i.da = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather86, %i.cp
  %i.db = fadd reassoc nsz arcp contract afn <8 x float> %i.da, %i.cz ; 2 uses
  %wide.gep87 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %wide.masked.gather88 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep87, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !65, !noalias !66
  %wide.gep89 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep69, i64 8
  %wide.masked.gather90 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep89, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !65, !noalias !66
  %wide.gep91 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep71, i64 12
  %wide.masked.gather92 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep91, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !65, !noalias !66
  %i.dc = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather92, %i.co
  %wide.gep93 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep70, i64 12
  %wide.masked.gather94 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep93, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !65, !noalias !66
  %i.dd = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather94, %i.cp
  %i.de = fadd reassoc nsz arcp contract afn <8 x float> %i.dd, %i.dc ; 2 uses
  %wide.gep95 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  %wide.masked.gather96 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep95, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !65, !noalias !66
  %wide.gep97 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep69, i64 12
  %wide.masked.gather98 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep97, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !65, !noalias !66
  %i.df = shufflevector <8 x float> %i.cp, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dg = shufflevector <8 x float> %wide.masked.gather74, <8 x float> %wide.masked.gather82, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dh = fmul reassoc nsz arcp contract afn <16 x float> %i.df, %i.dg
  %6 = shufflevector <8 x float> %i.co, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %7 = shufflevector <8 x float> %wide.masked.gather73, <8 x float> %wide.masked.gather80, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %8 = fmul reassoc nsz arcp contract afn <16 x float> %6, %7
  %9 = fadd reassoc nsz arcp contract afn <16 x float> %i.dh, %8
  %10 = shufflevector <8 x float> %i.cv, <8 x float> %i.cy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %11 = fsub reassoc nsz arcp contract afn <16 x float> %9, %10
  %i.di = fmul reassoc nsz arcp contract afn <16 x float> %11, %i.bt
  %i.dj = shufflevector <8 x float> %i.cv, <8 x float> %i.cy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dk = fadd reassoc nsz arcp contract afn <16 x float> %i.di, %i.dj
  %i.dl = shufflevector <8 x float> %wide.masked.gather88, <8 x float> %wide.masked.gather96, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dm = shufflevector <8 x float> %i.co, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dn = fmul reassoc nsz arcp contract afn <16 x float> %i.dl, %i.dm
  %i.do = shufflevector <8 x float> %i.db, <8 x float> %i.de, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dp = fsub reassoc nsz arcp contract afn <16 x float> %i.dn, %i.do
  %i.dq = shufflevector <8 x float> %wide.masked.gather90, <8 x float> %wide.masked.gather98, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dr = shufflevector <8 x float> %i.cp, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ds = fmul reassoc nsz arcp contract afn <16 x float> %i.dq, %i.dr
  %i.dt = fadd reassoc nsz arcp contract afn <16 x float> %i.dp, %i.ds
  %i.du = fmul reassoc nsz arcp contract afn <16 x float> %i.dt, %i.bu
  %i.dv = shufflevector <8 x float> %i.db, <8 x float> %i.de, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dw = fadd reassoc nsz arcp contract afn <16 x float> %i.du, %i.dv
  %interleaved.vec = shufflevector <16 x float> %i.dk, <16 x float> %i.dw, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.cs, align 16, !tbaa !64, !alias.scope !62, !noalias !67
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i, %middle.block
  %.08488.i.i.ph = phi i64 [ 0, %.preheader.i.i ], [ %n.vec, %middle.block ]
  %i.dy = insertelement <4 x float> poison, float %i.br, i64 0
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> zeroinitializer
  br label %scalar.ph

._crit_edge.i.i:                                  ; preds = %scalar.ph, %middle.block
  %i.ea = add nuw i64 %.08389.i.i, 1              ; 2 uses
  %exitcond93.not.i.i = icmp eq i64 %i.ea, %i.ar
  br i1 %exitcond93.not.i.i, label %interpolate_bilinear.exit.i, label %.preheader.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.08488.i.i = phi i64 [ %i.fm, %scalar.ph ], [ %.08488.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.eb = uitofp reassoc nsz arcp contract afn i64 %.08488.i.i to float
  %i.ec = fmul reassoc nnan nsz arcp contract afn float %i.am, %i.eb
  %i.ed = fmul reassoc nsz arcp contract afn float %i.ec, %i.bd ; 2 uses
  %i.ee = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.ed)
  %i.ef = fptoui float %i.ee to i64               ; 3 uses
  %i.eg = add i64 %i.ef, 1                        ; 2 uses
  %i.eh = icmp ugt i64 %i.r, %i.ef
  %i.ei = select i1 %i.eh, i64 %i.ef, i64 %i.ax   ; 2 uses
  %i.ej = icmp ult i64 %i.eg, %i.r
  %i.ek = select i1 %i.ej, i64 %i.eg, i64 %i.ax   ; 3 uses
  %i.el = add i64 %i.ei, %i.bo
  %.idx.i = shl i64 %i.el, 4
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i
  %i.en = add i64 %i.ek, %i.bo
  %.idx80.i = shl i64 %i.en, 4
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 %.idx80.i ; 2 uses
  %i.ep = add i64 %i.ek, %i.bp
  %.idx81.i = shl i64 %i.ep, 4
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 %.idx81.i
  %i.er = add i64 %i.ei, %i.bp
  %.idx82.i = shl i64 %i.er, 4
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 %.idx82.i
  %i.et = uitofp reassoc nsz arcp contract afn i64 %i.ek to float
  %i.eu = fsub reassoc nsz arcp contract afn float %i.et, %i.ed ; 2 uses
  %12 = add i64 %.08488.i.i, %i.bs
  %.idx83.i = shl i64 %12, 4
  %13 = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx83.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.ew = load <4 x float>, ptr %i.es, align 4, !tbaa !64, !alias.scope !65, !noalias !66
  %14 = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.eu
  %15 = load <2 x float>, ptr %i.eo, align 4, !tbaa !64, !alias.scope !65, !noalias !66
  %i.ex = insertelement <4 x float> poison, float %i.eu, i64 0
  %i.ey = shufflevector <4 x float> %i.ex, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ez = fmul reassoc nsz arcp contract afn <4 x float> %i.ey, %i.ew ; 3 uses
  %i.fa = load <4 x float>, ptr %i.eq, align 4, !tbaa !64, !alias.scope !65, !noalias !66
  %i.fb = insertelement <4 x float> poison, float %14, i64 0 ; 3 uses
  %i.fc = shufflevector <4 x float> %i.fb, <4 x float> poison, <4 x i32> zeroinitializer
  %16 = fmul reassoc nsz arcp contract afn <4 x float> %i.fc, %i.fa ; 3 uses
  %17 = shufflevector <4 x float> %i.fb, <4 x float> %16, <4 x i32> <i32 0, i32 0, i32 6, i32 7> ; 2 uses
  %18 = shufflevector <2 x float> %15, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %19 = shufflevector <4 x float> %18, <4 x float> %i.ez, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.fd = fmul reassoc nsz arcp contract afn <4 x float> %17, %19
  %20 = fadd reassoc nsz arcp contract afn <4 x float> %17, %19
  %21 = shufflevector <4 x float> %i.fd, <4 x float> %20, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.fe = fadd reassoc nsz arcp contract afn <4 x float> %16, %i.ez
  %i.ff = load <4 x float>, ptr %i.em, align 4, !tbaa !64, !alias.scope !65, !noalias !66
  %i.fg = fmul reassoc nsz arcp contract afn <4 x float> %i.ey, %i.ff ; 2 uses
  %22 = load <2 x float>, ptr %i.ev, align 4, !tbaa !64, !alias.scope !65, !noalias !66
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %24 = shufflevector <4 x float> %16, <4 x float> %23, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %25 = shufflevector <4 x float> %i.ez, <4 x float> %i.fb, <4 x i32> <i32 0, i32 1, i32 4, i32 4> ; 2 uses
  %26 = fadd reassoc nsz arcp contract afn <4 x float> %24, %25
  %i.fh = fmul reassoc nsz arcp contract afn <4 x float> %24, %25
  %27 = shufflevector <4 x float> %26, <4 x float> %i.fh, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %28 = fadd reassoc nsz arcp contract afn <4 x float> %i.fg, %21
  %29 = fsub reassoc nsz arcp contract afn <4 x float> %i.fg, %21
  %30 = shufflevector <4 x float> %28, <4 x float> %29, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.fi = fsub reassoc nsz arcp contract afn <4 x float> %30, %27
  %i.fj = fadd reassoc nsz arcp contract afn <4 x float> %30, %27
  %31 = shufflevector <4 x float> %i.fi, <4 x float> %i.fj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fk = fmul reassoc nsz arcp contract afn <4 x float> %31, %i.dz
  %i.fl = fadd reassoc nsz arcp contract afn <4 x float> %i.fk, %i.fe
  store <4 x float> %i.fl, ptr %13, align 16, !tbaa !64, !alias.scope !62, !noalias !67
  %i.fm = add nuw i64 %.08488.i.i, 1              ; 2 uses
  %exitcond92.not.i.i = icmp eq i64 %i.fm, %i.ao
  br i1 %exitcond92.not.i.i, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !71

interpolate_bilinear.exit.i:                      ; preds = %._crit_edge.i.i, %.preheader.lr.ph.i.i, %bb.b
  %i.fn = fdiv reassoc nsz arcp contract afn float %i.y, %i.al ; 2 uses
  %i.fo = fdiv reassoc nsz arcp contract afn float %i.ab, %i.al
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.fp = tail call ptr @dt_alloc_aligned(i64 noundef %i.at) #18, !noalias !77 ; 11 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fp, i64 64) ]
  %i.fq = tail call ptr @dt_alloc_aligned(i64 noundef %i.at) #18, !noalias !77 ; 22 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fq, i64 64) ]
  %i.fr = tail call ptr @dt_alloc_aligned(i64 noundef %i.at) #18, !noalias !77 ; 22 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fr, i64 64) ]
  %i.fs = tail call ptr @dt_alloc_aligned(i64 noundef %i.at) #18, !noalias !77 ; 16 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fs, i64 64) ]
  %i.ft = tail call ptr @dt_alloc_aligned(i64 noundef %i.at) #18, !noalias !77 ; 16 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ft, i64 64) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18, !noalias !77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) @__const.reduce_artifacts.max, i64 16, i1 false), !noalias !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18, !noalias !77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 16 dereferenceable(16) @__const.get_manifolds.min, i64 16, i1 false), !noalias !77
  %.not.i50.i = icmp eq i32 %i.ak, 0              ; 2 uses
  %i.fu = select reassoc nsz arcp contract afn i1 %.not.i50.i, float %i.fn, float %i.fo
  %i.fv = trunc i64 %i.ao to i32                  ; 2 uses
  %i.fw = trunc i64 %i.ar to i32                  ; 2 uses
  %i.fx = call ptr @dt_gaussian_init(i32 noundef %i.fv, i32 noundef %i.fw, i32 noundef 4, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, float noundef %i.fu, i32 noundef 0) #18, !noalias !77 ; 5 uses
  %.not302.i.i = icmp eq ptr %i.fx, null
  br i1 %.not302.i.i, label %get_manifolds.exit.i, label %bb.c

bb.c:                                             ; preds = %interpolate_bilinear.exit.i
  call void @dt_gaussian_blur_4c(ptr noundef nonnull %i.fx, ptr noundef %i.au, ptr noundef %i.fp) #18, !noalias !78
  %.not324.i.i = icmp eq i64 %i.as, 0             ; 3 uses
  br i1 %.not324.i.i, label %._crit_edge.i52.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.fy = zext i32 %i.ag to i64                   ; 5 uses
  %i.fz = add nuw nsw i64 %i.fy, 1                ; 2 uses
  %i.ga = urem i64 %i.fz, 3                       ; 4 uses
  %i.gb = udiv i64 %i.fz, 3
  %i.gc = add nuw nsw i64 %i.fy, 2                ; 2 uses
  %i.gd = urem i64 %i.gc, 3                       ; 4 uses
  %i.ge = udiv i64 %i.gc, 3
  %min.iters.check358 = icmp ult i64 %i.as, 41
  br i1 %min.iters.check358, label %scalar.ph357.preheader, label %vector.memcheck

scalar.ph357.preheader:                           ; preds = %vector.body367, %vector.memcheck, %.lr.ph.i.i
  %.0280308.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec360, %vector.body367 ]
  br label %scalar.ph357

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.gf = shl nuw nsw i64 %i.fy, 2                ; 9 uses
  %i.gg = add nuw nsw i64 %i.gf, 4
  %i.gh = mul nuw nsw i64 %i.gb, 12               ; 2 uses
  %i.gi = sub nsw i64 %i.gg, %i.gh                ; 3 uses
  %scevgep = getelementptr i8, ptr %i.fq, i64 %i.gi ; 11 uses
  %i.gj = mul i64 %i.ao, %i.ar
  %i.gk = shl i64 %i.gj, 4                        ; 5 uses
  %i.gl = add i64 %i.gk, %i.gf
  %i.gm = add i64 %i.gl, -8
  %i.gn = sub i64 %i.gm, %i.gh                    ; 3 uses
  %scevgep99 = getelementptr i8, ptr %i.fq, i64 %i.gn ; 11 uses
  %scevgep100 = getelementptr i8, ptr %i.fr, i64 %i.gi ; 11 uses
  %scevgep101 = getelementptr i8, ptr %i.fr, i64 %i.gn ; 11 uses
  %i.go = add nuw nsw i64 %i.gf, 8
  %i.gp = mul nuw nsw i64 %i.ge, 12               ; 2 uses
  %i.gq = sub nsw i64 %i.go, %i.gp                ; 3 uses
  %scevgep102 = getelementptr i8, ptr %i.fq, i64 %i.gq ; 11 uses
  %i.gr = add i64 %i.gk, %i.gf
  %i.gs = add i64 %i.gr, -4
  %i.gt = sub i64 %i.gs, %i.gp                    ; 3 uses
  %scevgep103 = getelementptr i8, ptr %i.fq, i64 %i.gt ; 11 uses
  %scevgep104 = getelementptr i8, ptr %i.fr, i64 %i.gq ; 11 uses
  %scevgep105 = getelementptr i8, ptr %i.fr, i64 %i.gt ; 11 uses
  %scevgep106 = getelementptr i8, ptr %i.fq, i64 %i.gf ; 11 uses
  %i.gu = add i64 %i.gk, %i.gf
  %i.gv = add i64 %i.gu, -12                      ; 4 uses
  %scevgep107 = getelementptr i8, ptr %i.fq, i64 %i.gv ; 11 uses
  %scevgep108 = getelementptr i8, ptr %i.fr, i64 %i.gf ; 11 uses
  %scevgep109 = getelementptr i8, ptr %i.fr, i64 %i.gv ; 11 uses
  %scevgep110 = getelementptr i8, ptr %i.fq, i64 12 ; 11 uses
  %scevgep111 = getelementptr i8, ptr %i.fq, i64 %i.gk ; 11 uses
  %scevgep112 = getelementptr i8, ptr %i.fr, i64 12 ; 11 uses
  %scevgep113 = getelementptr i8, ptr %i.fr, i64 %i.gk ; 11 uses
  %scevgep114 = getelementptr i8, ptr %i.au, i64 %i.gq ; 8 uses
  %scevgep115 = getelementptr i8, ptr %i.au, i64 %i.gt ; 8 uses
  %scevgep116 = getelementptr i8, ptr %i.au, i64 %i.gi ; 8 uses
  %scevgep117 = getelementptr i8, ptr %i.au, i64 %i.gn ; 8 uses
  %scevgep118 = getelementptr i8, ptr %i.au, i64 %i.gf ; 8 uses
  %scevgep119 = getelementptr i8, ptr %i.au, i64 %i.gv ; 8 uses
  %scevgep120 = getelementptr i8, ptr %i.fp, i64 %i.gf ; 8 uses
  %scevgep121 = getelementptr i8, ptr %i.fp, i64 %i.gv ; 8 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep101
  %bound1 = icmp ult ptr %scevgep100, %scevgep99
  %found.conflict = and i1 %bound0, %bound1
  %bound0122 = icmp ult ptr %scevgep, %scevgep103
  %bound1123 = icmp ult ptr %scevgep102, %scevgep99
  %found.conflict124 = and i1 %bound0122, %bound1123
  %conflict.rdx = or i1 %found.conflict, %found.conflict124
  %bound0125 = icmp ult ptr %scevgep, %scevgep105
  %bound1126 = icmp ult ptr %scevgep104, %scevgep99
  %found.conflict127 = and i1 %bound0125, %bound1126
  %conflict.rdx128 = or i1 %conflict.rdx, %found.conflict127
  %bound0129 = icmp ult ptr %scevgep, %scevgep107
  %bound1130 = icmp ult ptr %scevgep106, %scevgep99
  %found.conflict131 = and i1 %bound0129, %bound1130
  %conflict.rdx132 = or i1 %conflict.rdx128, %found.conflict131
  %bound0133 = icmp ult ptr %scevgep, %scevgep109
  %bound1134 = icmp ult ptr %scevgep108, %scevgep99
  %found.conflict135 = and i1 %bound0133, %bound1134
  %conflict.rdx136 = or i1 %conflict.rdx132, %found.conflict135
  %bound0137 = icmp ult ptr %scevgep, %scevgep111
  %bound1138 = icmp ult ptr %scevgep110, %scevgep99
  %found.conflict139 = and i1 %bound0137, %bound1138
  %conflict.rdx140 = or i1 %conflict.rdx136, %found.conflict139
  %bound0141 = icmp ult ptr %scevgep, %scevgep113
  %bound1142 = icmp ult ptr %scevgep112, %scevgep99
  %found.conflict143 = and i1 %bound0141, %bound1142
  %conflict.rdx144 = or i1 %conflict.rdx140, %found.conflict143
  %bound0145 = icmp ult ptr %scevgep, %scevgep115
  %bound1146 = icmp ult ptr %scevgep114, %scevgep99
  %found.conflict147 = and i1 %bound0145, %bound1146
  %conflict.rdx148 = or i1 %conflict.rdx144, %found.conflict147
  %bound0149 = icmp ult ptr %scevgep, %scevgep117
  %bound1150 = icmp ult ptr %scevgep116, %scevgep99
  %found.conflict151 = and i1 %bound0149, %bound1150
  %conflict.rdx152 = or i1 %conflict.rdx148, %found.conflict151
  %bound0153 = icmp ult ptr %scevgep, %scevgep119
  %bound1154 = icmp ult ptr %scevgep118, %scevgep99
  %found.conflict155 = and i1 %bound0153, %bound1154
  %conflict.rdx156 = or i1 %conflict.rdx152, %found.conflict155
  %bound0157 = icmp ult ptr %scevgep, %scevgep121
  %bound1158 = icmp ult ptr %scevgep120, %scevgep99
  %found.conflict159 = and i1 %bound0157, %bound1158
  %conflict.rdx160 = or i1 %conflict.rdx156, %found.conflict159
  %bound0161 = icmp ult ptr %scevgep100, %scevgep103
  %bound1162 = icmp ult ptr %scevgep102, %scevgep101
  %found.conflict163 = and i1 %bound0161, %bound1162
  %conflict.rdx164 = or i1 %conflict.rdx160, %found.conflict163
  %bound0165 = icmp ult ptr %scevgep100, %scevgep105
  %bound1166 = icmp ult ptr %scevgep104, %scevgep101
  %found.conflict167 = and i1 %bound0165, %bound1166
  %conflict.rdx168 = or i1 %conflict.rdx164, %found.conflict167
  %bound0169 = icmp ult ptr %scevgep100, %scevgep107
  %bound1170 = icmp ult ptr %scevgep106, %scevgep101
  %found.conflict171 = and i1 %bound0169, %bound1170
  %conflict.rdx172 = or i1 %conflict.rdx168, %found.conflict171
  %bound0173 = icmp ult ptr %scevgep100, %scevgep109
  %bound1174 = icmp ult ptr %scevgep108, %scevgep101
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx176 = or i1 %conflict.rdx172, %found.conflict175
  %bound0177 = icmp ult ptr %scevgep100, %scevgep111
  %bound1178 = icmp ult ptr %scevgep110, %scevgep101
  %found.conflict179 = and i1 %bound0177, %bound1178
  %conflict.rdx180 = or i1 %conflict.rdx176, %found.conflict179
  %bound0181 = icmp ult ptr %scevgep100, %scevgep113
  %bound1182 = icmp ult ptr %scevgep112, %scevgep101
  %found.conflict183 = and i1 %bound0181, %bound1182
  %conflict.rdx184 = or i1 %conflict.rdx180, %found.conflict183
  %bound0185 = icmp ult ptr %scevgep100, %scevgep115
  %bound1186 = icmp ult ptr %scevgep114, %scevgep101
  %found.conflict187 = and i1 %bound0185, %bound1186
  %conflict.rdx188 = or i1 %conflict.rdx184, %found.conflict187
  %bound0189 = icmp ult ptr %scevgep100, %scevgep117
  %bound1190 = icmp ult ptr %scevgep116, %scevgep101
  %found.conflict191 = and i1 %bound0189, %bound1190
  %conflict.rdx192 = or i1 %conflict.rdx188, %found.conflict191
  %bound0193 = icmp ult ptr %scevgep100, %scevgep119
  %bound1194 = icmp ult ptr %scevgep118, %scevgep101
  %found.conflict195 = and i1 %bound0193, %bound1194
  %conflict.rdx196 = or i1 %conflict.rdx192, %found.conflict195
  %bound0197 = icmp ult ptr %scevgep100, %scevgep121
  %bound1198 = icmp ult ptr %scevgep120, %scevgep101
  %found.conflict199 = and i1 %bound0197, %bound1198
  %conflict.rdx200 = or i1 %conflict.rdx196, %found.conflict199
  %bound0201 = icmp ult ptr %scevgep102, %scevgep105
  %bound1202 = icmp ult ptr %scevgep104, %scevgep103
  %found.conflict203 = and i1 %bound0201, %bound1202
  %conflict.rdx204 = or i1 %conflict.rdx200, %found.conflict203
  %bound0205 = icmp ult ptr %scevgep102, %scevgep107
  %bound1206 = icmp ult ptr %scevgep106, %scevgep103
  %found.conflict207 = and i1 %bound0205, %bound1206
  %conflict.rdx208 = or i1 %conflict.rdx204, %found.conflict207
  %bound0209 = icmp ult ptr %scevgep102, %scevgep109
  %bound1210 = icmp ult ptr %scevgep108, %scevgep103
  %found.conflict211 = and i1 %bound0209, %bound1210
  %conflict.rdx212 = or i1 %conflict.rdx208, %found.conflict211
  %bound0213 = icmp ult ptr %scevgep102, %scevgep111
  %bound1214 = icmp ult ptr %scevgep110, %scevgep103
  %found.conflict215 = and i1 %bound0213, %bound1214
  %conflict.rdx216 = or i1 %conflict.rdx212, %found.conflict215
  %bound0217 = icmp ult ptr %scevgep102, %scevgep113
  %bound1218 = icmp ult ptr %scevgep112, %scevgep103
  %found.conflict219 = and i1 %bound0217, %bound1218
  %conflict.rdx220 = or i1 %conflict.rdx216, %found.conflict219
  %bound0221 = icmp ult ptr %scevgep102, %scevgep115
  %bound1222 = icmp ult ptr %scevgep114, %scevgep103
  %found.conflict223 = and i1 %bound0221, %bound1222
  %conflict.rdx224 = or i1 %conflict.rdx220, %found.conflict223
end_hunk_0
begin_hunk_1_@process:bb.a
  br i1 %i.pv, label %.preheader.i53.i.preheader653, label %vector.body397, !llvm.loop !112

.preheader.i53.i.preheader653:                    ; preds = %vector.body397, %vector.scevcheck, %.preheader.i53.i.preheader
  %.0277322.i.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader.i53.i.preheader ], [ %n.vec396, %vector.body397 ] ; 6 uses
  %i.pw = sub i64 %i.as, %.0277322.i.i.ph
  %.neg654 = add i64 %.0277322.i.i.ph, 1
  %xtraiter = and i64 %i.pw, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i53.i.prol.loopexit, label %.preheader.i53.i.prol

.preheader.i53.i.prol:                            ; preds = %.preheader.i53.i.preheader653
  %i.px = shl i64 %.0277322.i.i.ph, 2             ; 4 uses
  %.idx.i.i.prol = mul i64 %.0277322.i.i.ph, 24
  %i.py = getelementptr i8, ptr %i.aw, i64 %.idx.i.i.prol ; 2 uses
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.px
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.px
  %i.qb = load float, ptr %i.qa, align 16, !tbaa !64, !noalias !78
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.px
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 4
  %i.qe = getelementptr i8, ptr %i.py, i64 16
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.px
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  %i.qh = load float, ptr %i.qg, align 8, !tbaa !64, !noalias !78
  %i.qi = load <2 x float>, ptr %i.pz, align 16, !tbaa !64, !noalias !78
  %i.qj = insertelement <4 x float> poison, float %i.qh, i64 2
  %i.qk = insertelement <4 x float> %i.qj, float %i.qb, i64 3
  %i.ql = shufflevector <2 x float> %i.qi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qm = shufflevector <4 x float> %i.ql, <4 x float> %i.qk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.qm, ptr %i.py, align 8, !tbaa !64, !alias.scope !75, !noalias !111
  %i.qn = load <2 x float>, ptr %i.qd, align 4, !tbaa !64, !noalias !78
  store <2 x float> %i.qn, ptr %i.qe, align 8, !tbaa !64, !alias.scope !75, !noalias !111
  %i.qo = add nuw i64 %.0277322.i.i.ph, 1
  br label %.preheader.i53.i.prol.loopexit

.preheader.i53.i.prol.loopexit:                   ; preds = %.preheader.i53.i.prol, %.preheader.i53.i.preheader653
  %.0277322.i.i.unr = phi i64 [ %.0277322.i.i.ph, %.preheader.i53.i.preheader653 ], [ %i.qo, %.preheader.i53.i.prol ]
  %i.qp = icmp eq i64 %i.as, %.neg654
  br i1 %i.qp, label %._crit_edge323.i.i, label %.preheader.i53.i

.preheader.i53.i:                                 ; preds = %.preheader.i53.i.prol.loopexit, %.preheader.i53.i
  %.0277322.i.i = phi i64 [ %i.rz, %.preheader.i53.i ], [ %.0277322.i.i.unr, %.preheader.i53.i.prol.loopexit ] ; 4 uses
  %i.qq = shl i64 %.0277322.i.i, 2                ; 4 uses
  %.idx.i.i = mul i64 %.0277322.i.i, 24
  %i.qr = getelementptr i8, ptr %i.aw, i64 %.idx.i.i ; 2 uses
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.qq
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.qq
  %i.qu = load float, ptr %i.qt, align 16, !tbaa !64, !noalias !78
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.qq
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 4
  %i.qx = getelementptr i8, ptr %i.qr, i64 16
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.qq
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.ra = load float, ptr %i.qz, align 8, !tbaa !64, !noalias !78
  %i.rb = load <2 x float>, ptr %i.qs, align 16, !tbaa !64, !noalias !78
  %i.rc = insertelement <4 x float> poison, float %i.ra, i64 2
  %i.rd = insertelement <4 x float> %i.rc, float %i.qu, i64 3
  %i.re = shufflevector <2 x float> %i.rb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rf = shufflevector <4 x float> %i.re, <4 x float> %i.rd, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.rf, ptr %i.qr, align 8, !tbaa !64, !alias.scope !75, !noalias !111
  %i.rg = load <2 x float>, ptr %i.qw, align 4, !tbaa !64, !noalias !78
  store <2 x float> %i.rg, ptr %i.qx, align 8, !tbaa !64, !alias.scope !75, !noalias !111
  %i.rh = add nuw i64 %.0277322.i.i, 1            ; 2 uses
  %i.ri = shl i64 %i.rh, 2                        ; 4 uses
  %.idx.i.i.1 = mul i64 %i.rh, 24
  %i.rj = getelementptr i8, ptr %i.aw, i64 %.idx.i.i.1 ; 2 uses
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.ri
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.ri
  %i.rm = load float, ptr %i.rl, align 16, !tbaa !64, !noalias !78
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.ri
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 4
  %i.rp = getelementptr i8, ptr %i.rj, i64 16
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.ri
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %i.rs = load float, ptr %i.rr, align 8, !tbaa !64, !noalias !78
  %i.rt = load <2 x float>, ptr %i.rk, align 16, !tbaa !64, !noalias !78
  %i.ru = insertelement <4 x float> poison, float %i.rs, i64 2
  %i.rv = insertelement <4 x float> %i.ru, float %i.rm, i64 3
  %i.rw = shufflevector <2 x float> %i.rt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rx = shufflevector <4 x float> %i.rw, <4 x float> %i.rv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.rx, ptr %i.rj, align 8, !tbaa !64, !alias.scope !75, !noalias !111
  %i.ry = load <2 x float>, ptr %i.ro, align 4, !tbaa !64, !noalias !78
  store <2 x float> %i.ry, ptr %i.rp, align 8, !tbaa !64, !alias.scope !75, !noalias !111
  %i.rz = add nuw i64 %.0277322.i.i, 2            ; 2 uses
  %exitcond332.not.i.i.1 = icmp eq i64 %i.rz, %i.as
  br i1 %exitcond332.not.i.i.1, label %._crit_edge323.i.i, label %.preheader.i53.i, !llvm.loop !113

._crit_edge323.i.i:                               ; preds = %.preheader.i53.i.prol.loopexit, %.preheader.i53.i, %bb.g
  call void @free(ptr noundef %i.fp) #18, !noalias !78
  call void @free(ptr noundef %i.ft) #18, !noalias !78
  call void @free(ptr noundef %i.fs) #18, !noalias !78
  br label %get_manifolds.exit.i

get_manifolds.exit.i:                             ; preds = %._crit_edge323.i.i, %bb.d, %interpolate_bilinear.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18, !noalias !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18, !noalias !77
  call void @free(ptr noundef %i.au) #18, !noalias !58
  %i.sa = mul nsw i64 %i.u, %i.r                  ; 15 uses
  %i.sb = mul i64 %i.sa, 24
  %i.sc = call ptr @dt_alloc_aligned(i64 noundef %i.sb) #18, !noalias !58 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.sc, i64 64) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %.not.i54.i = icmp eq i32 %i.t, 0
  br i1 %.not.i54.i, label %interpolate_bilinear.exit66.thread.i, label %.preheader.lr.ph.i55.i

.preheader.lr.ph.i55.i:                           ; preds = %get_manifolds.exit.i
  %.not91.i56.i = icmp eq i32 %i.q, 0
  %i.sd = add i64 %i.ao, -1                       ; 3 uses
  %i.se = add i64 %i.ar, -1                       ; 2 uses
  br i1 %.not91.i56.i, label %interpolate_bilinear.exit66.thread.i, label %.preheader.lr.ph.split.i57.i

.preheader.lr.ph.split.i57.i:                     ; preds = %.preheader.lr.ph.i55.i
  %i.sf = uitofp reassoc nsz arcp contract afn i64 %i.ao to float ; 2 uses
  %i.sg = uitofp reassoc nsz arcp contract afn i64 %i.ar to float
  %i.sh = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ap
  %min.iters.check419 = icmp ult i32 %i.q, 8
  %n.vec421 = and i64 %i.r, -8                    ; 3 uses
  %broadcast.splatinsert430 = insertelement <8 x float> poison, float %i.sf, i64 0
  %broadcast.splat431 = shufflevector <8 x float> %broadcast.splatinsert430, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert432 = insertelement <8 x float> poison, float %i.am, i64 0
  %broadcast.splat433 = shufflevector <8 x float> %broadcast.splatinsert432, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert434 = insertelement <8 x i64> poison, i64 %i.ao, i64 0
  %broadcast.splat435 = shufflevector <8 x i64> %broadcast.splatinsert434, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert436 = insertelement <8 x i64> poison, i64 %i.sd, i64 0
  %broadcast.splat437 = shufflevector <8 x i64> %broadcast.splatinsert436, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.si = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat433
  %cmp.n498 = icmp eq i64 %n.vec421, %i.r
  %i.sj = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.am
  br label %.preheader.i58.i

.preheader.i58.i:                                 ; preds = %._crit_edge.i64.i, %.preheader.lr.ph.split.i57.i
  %.08389.i59.i = phi i64 [ 0, %.preheader.lr.ph.split.i57.i ], [ %i.vz, %._crit_edge.i64.i ] ; 3 uses
  %i.sk = uitofp reassoc nsz arcp contract afn i64 %.08389.i59.i to float
  %i.sl = fmul reassoc nnan nsz arcp contract afn float %i.sg, %i.sk
  %i.sm = fmul reassoc nsz arcp contract afn float %i.sl, %i.sh ; 2 uses
  %i.sn = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.sm)
  %i.so = fptoui float %i.sn to i64               ; 3 uses
  %i.sp = add i64 %i.so, 1                        ; 2 uses
  %i.sq = icmp ugt i64 %i.ar, %i.so
  %i.sr = select i1 %i.sq, i64 %i.so, i64 %i.se
  %i.ss = icmp ult i64 %i.sp, %i.ar
  %i.st = select i1 %i.ss, i64 %i.sp, i64 %i.se   ; 2 uses
  %i.su = mul i64 %i.sr, %i.ao                    ; 3 uses
  %i.sv = mul i64 %i.st, %i.ao                    ; 3 uses
  %i.sw = uitofp reassoc nsz arcp contract afn i64 %i.st to float
  %i.sx = fsub reassoc nsz arcp contract afn float %i.sw, %i.sm ; 3 uses
  %i.sy = mul i64 %.08389.i59.i, %i.r             ; 2 uses
  br i1 %min.iters.check419, label %scalar.ph418.preheader, label %vector.ph420

vector.ph420:                                     ; preds = %.preheader.i58.i
  %broadcast.splatinsert422 = insertelement <8 x i64> poison, i64 %i.su, i64 0
  %broadcast.splat423 = shufflevector <8 x i64> %broadcast.splatinsert422, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert424 = insertelement <8 x i64> poison, i64 %i.sv, i64 0
  %broadcast.splat425 = shufflevector <8 x i64> %broadcast.splatinsert424, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert426 = insertelement <8 x float> poison, float %i.sx, i64 0
  %broadcast.splat427 = shufflevector <8 x float> %broadcast.splatinsert426, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %broadcast.splatinsert428 = insertelement <8 x i64> poison, i64 %i.sy, i64 0
  %broadcast.splat429 = shufflevector <8 x i64> %broadcast.splatinsert428, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body438

vector.body438:                                   ; preds = %vector.body438, %vector.ph420
  %index439 = phi i64 [ 0, %vector.ph420 ], [ %index.next495, %vector.body438 ]
  %vec.ind440 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph420 ], [ %vec.ind.next496, %vector.body438 ] ; 3 uses
  %i.sz = uitofp <8 x i64> %vec.ind440 to <8 x float>
  %i.ta = fmul reassoc nnan nsz arcp contract afn <8 x float> %broadcast.splat431, %i.sz
  %i.tb = fmul reassoc nsz arcp contract afn <8 x float> %i.ta, %i.si ; 2 uses
  %i.tc = call reassoc nsz arcp contract afn <8 x float> @llvm.floor.v8f32(<8 x float> %i.tb)
  %i.td = fptoui <8 x float> %i.tc to <8 x i64>   ; 3 uses
  %i.te = add <8 x i64> %i.td, splat (i64 1)      ; 2 uses
  %i.tf = icmp ugt <8 x i64> %broadcast.splat435, %i.td
  %i.tg = select <8 x i1> %i.tf, <8 x i64> %i.td, <8 x i64> %broadcast.splat437 ; 2 uses
  %i.th = icmp ult <8 x i64> %i.te, %broadcast.splat435
  %i.ti = select <8 x i1> %i.th, <8 x i64> %i.te, <8 x i64> %broadcast.splat437 ; 3 uses
  %i.tj = add <8 x i64> %i.tg, %broadcast.splat423
  %i.tk = mul <8 x i64> %i.tj, splat (i64 24)
  %wide.gep441 = getelementptr inbounds nuw i8, ptr %i.aw, <8 x i64> %i.tk ; 6 uses
  %i.tl = add <8 x i64> %i.ti, %broadcast.splat423
  %i.tm = mul <8 x i64> %i.tl, splat (i64 24)
  %wide.gep442 = getelementptr inbounds nuw i8, ptr %i.aw, <8 x i64> %i.tm ; 6 uses
  %i.tn = add <8 x i64> %i.ti, %broadcast.splat425
  %i.to = mul <8 x i64> %i.tn, splat (i64 24)
  %wide.gep443 = getelementptr inbounds nuw i8, ptr %i.aw, <8 x i64> %i.to ; 6 uses
  %i.tp = add <8 x i64> %i.tg, %broadcast.splat425
  %i.tq = mul <8 x i64> %i.tp, splat (i64 24)
  %wide.gep444 = getelementptr inbounds nuw i8, ptr %i.aw, <8 x i64> %i.tq ; 6 uses
  %i.tr = uitofp <8 x i64> %i.ti to <8 x float>
  %i.ts = fsub reassoc nsz arcp contract afn <8 x float> %i.tr, %i.tb ; 13 uses
  %i.tt = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.ts ; 12 uses
  %i.tu = add <8 x i64> %vec.ind440, %broadcast.splat429
  %i.tv = mul <8 x i64> %i.tu, splat (i64 24)
  %wide.gep445 = getelementptr inbounds nuw i8, ptr %i.sc, <8 x i64> %i.tv ; 6 uses
  %wide.masked.gather446 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep444, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !114, !noalias !119
  %i.tw = fmul reassoc nsz arcp contract afn <8 x float> %i.ts, %wide.masked.gather446
  %wide.masked.gather447 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep443, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !114, !noalias !119
  %i.tx = fmul reassoc nsz arcp contract afn <8 x float> %i.tt, %wide.masked.gather447
  %i.ty = fadd reassoc nsz arcp contract afn <8 x float> %i.tx, %i.tw ; 2 uses
  %wide.masked.gather448 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep441, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !114, !noalias !119
  %i.tz = fmul reassoc nsz arcp contract afn <8 x float> %i.ts, %wide.masked.gather448
  %wide.masked.gather449 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep442, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !114, !noalias !119
  %i.ua = fmul reassoc nsz arcp contract afn <8 x float> %i.tt, %wide.masked.gather449
  %32 = fadd reassoc nsz arcp contract afn <8 x float> %i.ua, %i.tz
  %33 = fsub reassoc nsz arcp contract afn <8 x float> %32, %i.ty
  %i.ub = fmul reassoc nsz arcp contract afn <8 x float> %33, %broadcast.splat427
  %i.uc = fadd reassoc nsz arcp contract afn <8 x float> %i.ub, %i.ty
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.uc, <8 x ptr> align 4 %wide.gep445, <8 x i1> splat (i1 true)), !tbaa !64, !alias.scope !117, !noalias !120
  %wide.gep450 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep444, i64 4
  %wide.masked.gather451 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep450, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !114, !noalias !119
  %i.ud = fmul reassoc nsz arcp contract afn <8 x float> %i.ts, %wide.masked.gather451
  %wide.gep452 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep443, i64 4
  %wide.masked.gather453 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep452, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !114, !noalias !119
  %i.ue = fmul reassoc nsz arcp contract afn <8 x float> %i.tt, %wide.masked.gather453
  %i.uf = fadd reassoc nsz arcp contract afn <8 x float> %i.ue, %i.ud ; 2 uses
  %wide.gep454 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep441, i64 4
  %wide.masked.gather455 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep454, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !114, !noalias !119
  %i.ug = fmul reassoc nsz arcp contract afn <8 x float> %i.ts, %wide.masked.gather455
  %wide.gep456 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep442, i64 4
  %wide.masked.gather457 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep456, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !114, !noalias !119
  %i.uh = fmul reassoc nsz arcp contract afn <8 x float> %i.tt, %wide.masked.gather457
  %34 = fadd reassoc nsz arcp contract afn <8 x float> %i.uh, %i.ug
  %35 = fsub reassoc nsz arcp contract afn <8 x float> %34, %i.uf
  %i.ui = fmul reassoc nsz arcp contract afn <8 x float> %35, %broadcast.splat427
  %i.uj = fadd reassoc nsz arcp contract afn <8 x float> %i.ui, %i.uf
  %wide.gep458 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep445, i64 4
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.uj, <8 x ptr> align 4 %wide.gep458, <8 x i1> splat (i1 true)), !tbaa !64, !alias.scope !117, !noalias !120
  %wide.gep459 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep444, i64 8
  %wide.masked.gather460 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep459, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !114, !noalias !119
  %i.uk = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather460, %i.ts
  %wide.gep461 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep443, i64 8
  %wide.masked.gather462 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep461, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !114, !noalias !119
  %i.ul = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather462, %i.tt
  %i.um = fadd reassoc nsz arcp contract afn <8 x float> %i.ul, %i.uk ; 2 uses
  %wide.gep463 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep441, i64 8
  %wide.masked.gather464 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep463, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !114, !noalias !119
  %i.un = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather464, %i.ts
  %wide.gep465 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep442, i64 8
  %wide.masked.gather466 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep465, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !114, !noalias !119
  %i.uo = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather466, %i.tt
  %i.up = fsub reassoc nsz arcp contract afn <8 x float> %i.un, %i.um
  %i.uq = fadd reassoc nsz arcp contract afn <8 x float> %i.up, %i.uo
  %i.ur = fmul reassoc nsz arcp contract afn <8 x float> %i.uq, %broadcast.splat427
  %i.us = fadd reassoc nsz arcp contract afn <8 x float> %i.ur, %i.um
  %wide.gep467 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep445, i64 8
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.us, <8 x ptr> align 4 %wide.gep467, <8 x i1> splat (i1 true)), !tbaa !64, !alias.scope !117, !noalias !120
  %wide.gep468 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep444, i64 12
  %wide.masked.gather469 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep468, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !114, !noalias !119
  %i.ut = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather469, %i.ts
  %wide.gep470 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep443, i64 12
  %wide.masked.gather471 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep470, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !114, !noalias !119
  %i.uu = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather471, %i.tt
  %i.uv = fadd reassoc nsz arcp contract afn <8 x float> %i.uu, %i.ut ; 2 uses
  %wide.gep472 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep441, i64 12
  %wide.masked.gather473 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep472, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !114, !noalias !119
  %i.uw = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather473, %i.ts
  %wide.gep474 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep442, i64 12
  %wide.masked.gather475 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep474, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !114, !noalias !119
  %i.ux = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather475, %i.tt
  %i.uy = fsub reassoc nsz arcp contract afn <8 x float> %i.uw, %i.uv
  %i.uz = fadd reassoc nsz arcp contract afn <8 x float> %i.uy, %i.ux
  %i.va = fmul reassoc nsz arcp contract afn <8 x float> %i.uz, %broadcast.splat427
  %i.vb = fadd reassoc nsz arcp contract afn <8 x float> %i.va, %i.uv
  %wide.gep476 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep445, i64 12
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.vb, <8 x ptr> align 4 %wide.gep476, <8 x i1> splat (i1 true)), !tbaa !64, !alias.scope !117, !noalias !120
  %wide.gep477 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep444, i64 16
  %wide.masked.gather478 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep477, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !114, !noalias !119
  %i.vc = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather478, %i.ts
  %wide.gep479 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep443, i64 16
  %wide.masked.gather480 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep479, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !114, !noalias !119
  %i.vd = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather480, %i.tt
  %i.ve = fadd reassoc nsz arcp contract afn <8 x float> %i.vd, %i.vc ; 2 uses
  %wide.gep481 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep441, i64 16
  %wide.masked.gather482 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep481, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !114, !noalias !119
  %i.vf = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather482, %i.ts
  %wide.gep483 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep442, i64 16
  %wide.masked.gather484 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep483, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !114, !noalias !119
  %i.vg = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather484, %i.tt
  %i.vh = fsub reassoc nsz arcp contract afn <8 x float> %i.vf, %i.ve
  %i.vi = fadd reassoc nsz arcp contract afn <8 x float> %i.vh, %i.vg
  %i.vj = fmul reassoc nsz arcp contract afn <8 x float> %i.vi, %broadcast.splat427
  %i.vk = fadd reassoc nsz arcp contract afn <8 x float> %i.vj, %i.ve
  %wide.gep485 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep445, i64 16
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.vk, <8 x ptr> align 4 %wide.gep485, <8 x i1> splat (i1 true)), !tbaa !64, !alias.scope !117, !noalias !120
  %wide.gep486 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep444, i64 20
  %wide.masked.gather487 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep486, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !114, !noalias !119
  %i.vl = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather487, %i.ts
  %wide.gep488 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep443, i64 20
  %wide.masked.gather489 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep488, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !114, !noalias !119
  %i.vm = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather489, %i.tt
  %i.vn = fadd reassoc nsz arcp contract afn <8 x float> %i.vm, %i.vl ; 2 uses
  %wide.gep490 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep441, i64 20
  %wide.masked.gather491 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep490, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !114, !noalias !119
  %i.vo = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather491, %i.ts
  %wide.gep492 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep442, i64 20
  %wide.masked.gather493 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep492, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !114, !noalias !119
  %i.vp = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather493, %i.tt
  %i.vq = fsub reassoc nsz arcp contract afn <8 x float> %i.vo, %i.vn
  %i.vr = fadd reassoc nsz arcp contract afn <8 x float> %i.vq, %i.vp
  %i.vs = fmul reassoc nsz arcp contract afn <8 x float> %i.vr, %broadcast.splat427
  %i.vt = fadd reassoc nsz arcp contract afn <8 x float> %i.vs, %i.vn
  %wide.gep494 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep445, i64 20
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.vt, <8 x ptr> align 4 %wide.gep494, <8 x i1> splat (i1 true)), !tbaa !64, !alias.scope !117, !noalias !120
  %index.next495 = add nuw i64 %index439, 8       ; 2 uses
  %vec.ind.next496 = add nuw <8 x i64> %vec.ind440, splat (i64 8)
  %i.vu = icmp eq i64 %index.next495, %n.vec421
  br i1 %i.vu, label %middle.block497, label %vector.body438, !llvm.loop !121

middle.block497:                                  ; preds = %vector.body438
  br i1 %cmp.n498, label %._crit_edge.i64.i, label %scalar.ph418.preheader

scalar.ph418.preheader:                           ; preds = %.preheader.i58.i, %middle.block497
  %.08488.i60.i.ph = phi i64 [ 0, %.preheader.i58.i ], [ %n.vec421, %middle.block497 ]
  %i.vv = insertelement <4 x float> poison, float %i.sx, i64 0
  %i.vw = shufflevector <4 x float> %i.vv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vx = insertelement <2 x float> poison, float %i.sx, i64 0
  %i.vy = shufflevector <2 x float> %i.vx, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph418

._crit_edge.i64.i:                                ; preds = %scalar.ph418, %middle.block497
  %i.vz = add nuw i64 %.08389.i59.i, 1            ; 2 uses
  %exitcond93.not.i65.i = icmp eq i64 %i.vz, %i.u
  br i1 %exitcond93.not.i65.i, label %interpolate_bilinear.exit66.i, label %.preheader.i58.i

scalar.ph418:                                     ; preds = %scalar.ph418.preheader, %scalar.ph418
  %.08488.i60.i = phi i64 [ %i.yh, %scalar.ph418 ], [ %.08488.i60.i.ph, %scalar.ph418.preheader ] ; 3 uses
  %i.wa = uitofp reassoc nsz arcp contract afn i64 %.08488.i60.i to float
  %i.wb = fmul reassoc nnan nsz arcp contract afn float %i.sf, %i.wa
  %i.wc = fmul reassoc nsz arcp contract afn float %i.wb, %i.sj ; 2 uses
  %i.wd = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.wc)
  %i.we = fptoui float %i.wd to i64               ; 3 uses
  %i.wf = add i64 %i.we, 1                        ; 2 uses
  %i.wg = icmp ugt i64 %i.ao, %i.we
  %i.wh = select i1 %i.wg, i64 %i.we, i64 %i.sd   ; 2 uses
  %i.wi = icmp ult i64 %i.wf, %i.ao
  %i.wj = select i1 %i.wi, i64 %i.wf, i64 %i.sd   ; 3 uses
  %i.wk = add i64 %i.wh, %i.su
  %.idx84.i = mul i64 %i.wk, 24
  %i.wl = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx84.i ; 2 uses
  %i.wm = add i64 %i.wj, %i.su
  %.idx85.i = mul i64 %i.wm, 24
  %i.wn = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx85.i ; 3 uses
  %i.wo = add i64 %i.wj, %i.sv
  %.idx86.i = mul i64 %i.wo, 24
  %i.wp = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx86.i ; 2 uses
  %i.wq = add i64 %i.wh, %i.sv
  %.idx87.i = mul i64 %i.wq, 24
  %i.wr = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx87.i ; 2 uses
  %i.ws = uitofp reassoc nsz arcp contract afn i64 %i.wj to float
  %i.wt = fsub reassoc nsz arcp contract afn float %i.ws, %i.wc ; 3 uses
  %36 = add i64 %.08488.i60.i, %i.sy
  %.idx88.i = mul i64 %36, 24
  %37 = getelementptr inbounds nuw i8, ptr %i.sc, i64 %.idx88.i ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wn, i64 8
  %i.wv = load <4 x float>, ptr %i.wr, align 8, !tbaa !64, !alias.scope !114, !noalias !119
  %38 = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.wt ; 2 uses
  %39 = load <2 x float>, ptr %i.wn, align 8, !tbaa !64, !alias.scope !114, !noalias !119
  %i.ww = insertelement <4 x float> poison, float %i.wt, i64 0
  %i.wx = shufflevector <4 x float> %i.ww, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.wy = fmul reassoc nsz arcp contract afn <4 x float> %i.wx, %i.wv ; 3 uses
  %i.wz = load <4 x float>, ptr %i.wp, align 8, !tbaa !64, !alias.scope !114, !noalias !119
  %i.xa = insertelement <4 x float> poison, float %38, i64 0 ; 3 uses
  %i.xb = shufflevector <4 x float> %i.xa, <4 x float> poison, <4 x i32> zeroinitializer
  %40 = fmul reassoc nsz arcp contract afn <4 x float> %i.xb, %i.wz ; 3 uses
  %41 = shufflevector <4 x float> %i.xa, <4 x float> %40, <4 x i32> <i32 0, i32 0, i32 6, i32 7> ; 2 uses
  %42 = shufflevector <2 x float> %39, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %43 = shufflevector <4 x float> %42, <4 x float> %i.wy, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.xc = fmul reassoc nsz arcp contract afn <4 x float> %41, %43
  %44 = fadd reassoc nsz arcp contract afn <4 x float> %41, %43
  %45 = shufflevector <4 x float> %i.xc, <4 x float> %44, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.xd = fadd reassoc nsz arcp contract afn <4 x float> %40, %i.wy
  %i.xe = load <4 x float>, ptr %i.wl, align 8, !tbaa !64, !alias.scope !114, !noalias !119
  %i.xf = fmul reassoc nsz arcp contract afn <4 x float> %i.wx, %i.xe ; 2 uses
  %46 = load <2 x float>, ptr %i.wu, align 8, !tbaa !64, !alias.scope !114, !noalias !119
  %47 = shufflevector <2 x float> %46, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %48 = shufflevector <4 x float> %40, <4 x float> %47, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %49 = shufflevector <4 x float> %i.wy, <4 x float> %i.xa, <4 x i32> <i32 0, i32 1, i32 4, i32 4> ; 2 uses
  %50 = fadd reassoc nsz arcp contract afn <4 x float> %48, %49
  %i.xg = fmul reassoc nsz arcp contract afn <4 x float> %48, %49
  %51 = shufflevector <4 x float> %50, <4 x float> %i.xg, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %52 = fadd reassoc nsz arcp contract afn <4 x float> %i.xf, %45
  %53 = fsub reassoc nsz arcp contract afn <4 x float> %i.xf, %45
  %54 = shufflevector <4 x float> %52, <4 x float> %53, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.xh = fsub reassoc nsz arcp contract afn <4 x float> %54, %51
  %i.xi = fadd reassoc nsz arcp contract afn <4 x float> %54, %51
  %55 = shufflevector <4 x float> %i.xh, <4 x float> %i.xi, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.xj = fmul reassoc nsz arcp contract afn <4 x float> %55, %i.vw
  %i.xk = fadd reassoc nsz arcp contract afn <4 x float> %i.xj, %i.xd
  store <4 x float> %i.xk, ptr %37, align 8, !tbaa !64, !alias.scope !117, !noalias !120
  %i.xl = getelementptr inbounds nuw i8, ptr %i.wr, i64 16
  %i.xm = getelementptr inbounds nuw i8, ptr %i.wp, i64 16
  %i.xn = getelementptr inbounds nuw i8, ptr %i.wl, i64 16
  %i.xo = getelementptr inbounds nuw i8, ptr %i.wn, i64 16
  %i.xp = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.xq = load <2 x float>, ptr %i.xl, align 8, !tbaa !64, !alias.scope !114, !noalias !119
  %i.xr = insertelement <2 x float> poison, float %i.wt, i64 0
  %i.xs = shufflevector <2 x float> %i.xr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xt = fmul reassoc nsz arcp contract afn <2 x float> %i.xq, %i.xs
  %i.xu = load <2 x float>, ptr %i.xm, align 8, !tbaa !64, !alias.scope !114, !noalias !119
  %i.xv = insertelement <2 x float> poison, float %38, i64 0
  %i.xw = shufflevector <2 x float> %i.xv, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xx = fmul reassoc nsz arcp contract afn <2 x float> %i.xu, %i.xw
  %i.xy = fadd reassoc nsz arcp contract afn <2 x float> %i.xx, %i.xt ; 2 uses
  %i.xz = load <2 x float>, ptr %i.xn, align 8, !tbaa !64, !alias.scope !114, !noalias !119
  %i.ya = fmul reassoc nsz arcp contract afn <2 x float> %i.xz, %i.xs
  %i.yb = load <2 x float>, ptr %i.xo, align 8, !tbaa !64, !alias.scope !114, !noalias !119
  %i.yc = fmul reassoc nsz arcp contract afn <2 x float> %i.yb, %i.xw
  %i.yd = fsub reassoc nsz arcp contract afn <2 x float> %i.ya, %i.xy
  %i.ye = fadd reassoc nsz arcp contract afn <2 x float> %i.yd, %i.yc
  %i.yf = fmul reassoc nsz arcp contract afn <2 x float> %i.ye, %i.vy
  %i.yg = fadd reassoc nsz arcp contract afn <2 x float> %i.yf, %i.xy
  store <2 x float> %i.yg, ptr %i.xp, align 8, !tbaa !64, !alias.scope !117, !noalias !120
  %i.yh = add nuw i64 %.08488.i60.i, 1            ; 2 uses
  %exitcond92.not.i63.i = icmp eq i64 %i.yh, %i.r
  br i1 %exitcond92.not.i63.i, label %._crit_edge.i64.i, label %scalar.ph418, !llvm.loop !122

interpolate_bilinear.exit66.thread.i:             ; preds = %.preheader.lr.ph.i55.i, %get_manifolds.exit.i
  call void @free(ptr noundef %i.aw) #18, !noalias !58
  br label %apply_correction.exit.i

interpolate_bilinear.exit66.i:                    ; preds = %._crit_edge.i64.i
  call void @free(ptr noundef nonnull %i.aw) #18, !noalias !58
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.yi = zext i32 %i.ag to i64                   ; 9 uses
  %i.yj = add nuw nsw i64 %i.yi, 1                ; 3 uses
  %i.yk = urem i64 %i.yj, 3                       ; 5 uses
  %i.yl = udiv i64 %i.yj, 3
  %i.ym = add nuw nsw i64 %i.yi, 2                ; 3 uses
  %i.yn = urem i64 %i.ym, 3                       ; 5 uses
  %i.yo = udiv i64 %i.ym, 3
  %min.iters.check539 = icmp ult i64 %i.sa, 9
  br i1 %min.iters.check539, label %scalar.ph538.preheader, label %vector.scevcheck500

vector.scevcheck500:                              ; preds = %interpolate_bilinear.exit66.i
  %i.yp = add nsw i64 %i.sa, -1                   ; 2 uses
  %i.yq = shl nuw nsw i64 %i.yi, 2                ; 2 uses
  %i.yr = udiv i64 %i.yj, 3
  %.neg = mul nsw i64 %i.yr, -12
  %i.ys = getelementptr i8, ptr %3, i64 %.neg
  %i.yt = getelementptr i8, ptr %i.ys, i64 %i.yq
  %scevgep501 = getelementptr i8, ptr %i.yt, i64 4 ; 2 uses
  %mul.result503 = shl i64 %i.yp, 4               ; 2 uses
  %mul.overflow504 = icmp ugt i64 %i.yp, 1152921504606846975
  %i.yu = getelementptr i8, ptr %scevgep501, i64 %mul.result503
  %i.yv = icmp ult ptr %i.yu, %scevgep501
  %i.yw = udiv i64 %i.ym, 3
  %.neg646 = mul nsw i64 %i.yw, -12
  %i.yx = getelementptr i8, ptr %3, i64 %.neg646
  %i.yy = getelementptr i8, ptr %i.yx, i64 %i.yq
  %scevgep505 = getelementptr i8, ptr %i.yy, i64 8 ; 2 uses
  %i.yz = getelementptr i8, ptr %scevgep505, i64 %mul.result503
  %i.za = icmp ult ptr %i.yz, %scevgep505
  %i.zb = or i1 %i.za, %mul.overflow504
  %i.zc = or i1 %i.yv, %i.zb
  br i1 %i.zc, label %scalar.ph538.preheader, label %vector.memcheck506

vector.memcheck506:                               ; preds = %vector.scevcheck500
  %i.zd = shl nuw nsw i64 %i.yi, 2                ; 6 uses
  %scevgep507 = getelementptr i8, ptr %3, i64 %i.zd ; 3 uses
  %i.ze = mul nsw i64 %i.u, %i.r
  %i.zf = shl i64 %i.ze, 4                        ; 4 uses
  %i.zg = getelementptr i8, ptr %3, i64 %i.zf
  %i.zh = getelementptr i8, ptr %i.zg, i64 %i.zd
  %scevgep508 = getelementptr i8, ptr %i.zh, i64 -12 ; 3 uses
  %scevgep509 = getelementptr i8, ptr %3, i64 12  ; 3 uses
  %scevgep510 = getelementptr i8, ptr %3, i64 %i.zf ; 3 uses
  %i.zi = add nuw nsw i64 %i.zd, 4
  %i.zj = mul nuw nsw i64 %i.yl, 12               ; 2 uses
  %i.zk = sub nsw i64 %i.zi, %i.zj
  %scevgep511 = getelementptr i8, ptr %3, i64 %i.zk ; 3 uses
  %i.zl = add i64 %i.zf, %i.zd
  %i.zm = add i64 %i.zl, -8
  %i.zn = sub i64 %i.zm, %i.zj
  %scevgep512 = getelementptr i8, ptr %3, i64 %i.zn ; 3 uses
  %i.zo = add nuw nsw i64 %i.zd, 8
  %i.zp = mul nuw nsw i64 %i.yo, 12               ; 2 uses
  %i.zq = sub nsw i64 %i.zo, %i.zp
  %scevgep513 = getelementptr i8, ptr %3, i64 %i.zq ; 3 uses
  %i.zr = add i64 %i.zf, %i.zd
  %i.zs = add i64 %i.zr, -4
  %i.zt = sub i64 %i.zs, %i.zp
  %scevgep514 = getelementptr i8, ptr %3, i64 %i.zt ; 3 uses
  %bound0515 = icmp ult ptr %scevgep507, %scevgep510
  %bound1516 = icmp ult ptr %scevgep509, %scevgep508
  %found.conflict517 = and i1 %bound0515, %bound1516
  %bound0518 = icmp ult ptr %scevgep507, %scevgep512
  %bound1519 = icmp ult ptr %scevgep511, %scevgep508
  %found.conflict520 = and i1 %bound0518, %bound1519
  %conflict.rdx521 = or i1 %found.conflict517, %found.conflict520
  %bound0522 = icmp ult ptr %scevgep507, %scevgep514
  %bound1523 = icmp ult ptr %scevgep513, %scevgep508
  %found.conflict524 = and i1 %bound0522, %bound1523
  %conflict.rdx525 = or i1 %conflict.rdx521, %found.conflict524
  %bound0526 = icmp ult ptr %scevgep509, %scevgep512
  %bound1527 = icmp ult ptr %scevgep511, %scevgep510
  %found.conflict528 = and i1 %bound0526, %bound1527
  %conflict.rdx529 = or i1 %conflict.rdx525, %found.conflict528
  %bound0530 = icmp ult ptr %scevgep509, %scevgep514
  %bound1531 = icmp ult ptr %scevgep513, %scevgep510
  %found.conflict532 = and i1 %bound0530, %bound1531
  %conflict.rdx533 = or i1 %conflict.rdx529, %found.conflict532
  %bound0534 = icmp ult ptr %scevgep511, %scevgep514
  %bound1535 = icmp ult ptr %scevgep513, %scevgep512
  %found.conflict536 = and i1 %bound0534, %bound1535
  %conflict.rdx537 = or i1 %conflict.rdx533, %found.conflict536
  br i1 %conflict.rdx537, label %scalar.ph538.preheader, label %vector.ph540

vector.ph540:                                     ; preds = %vector.memcheck506
  %i.zu = and i64 %i.sa, 7                        ; 2 uses
  %i.zv = icmp eq i64 %i.zu, 0
  %i.zw = select i1 %i.zv, i64 8, i64 %i.zu
  %n.vec541 = sub nsw i64 %i.sa, %i.zw            ; 2 uses
  %broadcast.splatinsert542 = insertelement <8 x i32> poison, i32 %i.ai, i64 0
  %broadcast.splat543 = shufflevector <8 x i32> %broadcast.splatinsert542, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.zx = icmp ult <8 x i32> %broadcast.splat543, splat (i32 3)
  %i.zy = icmp ult <8 x i32> %broadcast.splat543, splat (i32 3)
  %broadcast.splatinsert544 = insertelement <8 x i64> poison, i64 %i.yi, i64 0
  %broadcast.splat545 = shufflevector <8 x i64> %broadcast.splatinsert544, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert546 = insertelement <8 x i64> poison, i64 %i.yk, i64 0
  %broadcast.splat547 = shufflevector <8 x i64> %broadcast.splatinsert546, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert548 = insertelement <8 x i64> poison, i64 %i.yn, i64 0
  %broadcast.splat549 = shufflevector <8 x i64> %broadcast.splatinsert548, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.zz = icmp eq i32 %i.ai, 1
  %i.aaa = icmp eq i32 %i.ai, 0                   ; 2 uses
  %i.aab = icmp eq i32 %i.ai, 2
  br label %vector.body550

vector.body550:                                   ; preds = %vector.body550, %vector.ph540
  %index551 = phi i64 [ 0, %vector.ph540 ], [ %index.next582, %vector.body550 ]
  %vec.ind552 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph540 ], [ %vec.ind.next583, %vector.body550 ] ; 3 uses
  %i.aac = mul <8 x i64> %vec.ind552, splat (i64 24)
  %wide.gep553 = getelementptr i8, ptr %i.sc, <8 x i64> %i.aac ; 4 uses
  %wide.gep554 = getelementptr [4 x i8], <8 x ptr> %wide.gep553, i64 %i.yi
  %wide.masked.gather555 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep554, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !126, !noalias !130
  %i.aad = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.masked.gather555, <8 x float> splat (float f0x358637BD)) ; 4 uses
  %wide.gep556 = getelementptr i8, <8 x ptr> %wide.gep553, i64 12 ; 3 uses
  %wide.gep557 = getelementptr [4 x i8], <8 x ptr> %wide.gep556, i64 %i.yi
  %wide.masked.gather558 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep557, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !126, !noalias !130
  %i.aae = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.masked.gather558, <8 x float> splat (float f0x358637BD)) ; 4 uses
  %i.aaf = call reassoc nsz arcp contract afn <8 x float> @llvm.log2.v8f32(<8 x float> %i.aad) ; 2 uses
  %i.aag = call reassoc nsz arcp contract afn <8 x float> @llvm.log2.v8f32(<8 x float> %i.aae)
  %i.aah = fsub reassoc nsz arcp contract afn <8 x float> %i.aaf, %i.aag ; 3 uses
  %i.aai = shl <8 x i64> %vec.ind552, splat (i64 2) ; 4 uses
  %i.aaj = add <8 x i64> %i.aai, %broadcast.splat545 ; 2 uses
  %i.aak = extractelement <8 x i64> %i.aaj, i64 0
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aak
  %wide.vec559 = load <32 x float>, ptr %i.aal, align 4, !tbaa !64, !alias.scope !131, !noalias !132
  %strided.vec560 = shufflevector <32 x float> %wide.vec559, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.aam = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec560, <8 x float> zeroinitializer) ; 4 uses
  %i.aan = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.aam, <8 x float> %i.aae)
  %i.aao = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.aan, <8 x float> %i.aad)
  %i.aap = call reassoc nsz arcp contract afn <8 x float> @llvm.log2.v8f32(<8 x float> %i.aao)
  %i.aaq = fsub reassoc nsz arcp contract afn <8 x float> %i.aaf, %i.aap
  %i.aar = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.aaq)
  %i.aas = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.aah, <8 x float> splat (float f0x358637BD))
  %i.aat = fdiv reassoc nsz arcp contract afn <8 x float> %i.aar, %i.aas ; 2 uses
  %i.aau = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.aah, splat (float 2.500000e-01)
  %i.aav = fmul reassoc nsz arcp contract afn <8 x float> %i.aat, splat (float 4.000000e+00)
  %i.aaw = fadd reassoc nsz arcp contract afn <8 x float> %i.aav, splat (float -2.000000e+00)
  %i.aax = fmul reassoc nsz arcp contract afn <8 x float> %i.aaw, %i.aah
  %i.aay = fadd reassoc nsz arcp contract afn <8 x float> %i.aax, splat (float 5.000000e-01)
  %i.aaz = select nsz <8 x i1> %i.aau, <8 x float> %i.aay, <8 x float> %i.aat ; 3 uses
  %i.aba = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.aaz
  %i.abb = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.aba, <8 x float> zeroinitializer) ; 2 uses
  %i.abc = or disjoint <8 x i64> %i.aai, %broadcast.splat547 ; 2 uses
  %i.abd = extractelement <8 x i64> %i.abc, i64 0
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.abd
  %wide.vec561 = load <32 x float>, ptr %i.abe, align 4, !tbaa !64, !alias.scope !131, !noalias !132
  %strided.vec562 = shufflevector <32 x float> %wide.vec561, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.abf = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec562, <8 x float> zeroinitializer) ; 2 uses
  %wide.gep563 = getelementptr [4 x i8], <8 x ptr> %wide.gep553, i64 %i.yk
  %wide.masked.gather564 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep563, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !126, !noalias !130
  %i.abg = fdiv reassoc nsz arcp contract afn <8 x float> %wide.masked.gather564, %i.aad
  %wide.gep565 = getelementptr [4 x i8], <8 x ptr> %wide.gep556, i64 %i.yk
  %wide.masked.gather566 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep565, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !126, !noalias !130
  %i.abh = fdiv reassoc nsz arcp contract afn <8 x float> %wide.masked.gather566, %i.aae
  %i.abi = call reassoc nsz arcp contract afn <8 x float> @llvm.pow.v8f32(<8 x float> %i.abh, <8 x float> %i.aaz)
  %i.abj = call reassoc nsz arcp contract afn <8 x float> @llvm.pow.v8f32(<8 x float> %i.abg, <8 x float> %i.abb)
  %i.abk = fmul reassoc nsz arcp contract afn <8 x float> %i.abi, %i.aam
  %i.abl = fmul reassoc nsz arcp contract afn <8 x float> %i.abk, %i.abj ; 3 uses
  %i.abm = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.abl, <8 x float> %i.abf)
  %i.abn = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.abl, <8 x float> %i.abf)
  %predphi = select i1 %i.zz, <8 x float> %i.abn, <8 x float> %i.abm
  %predphi567 = select i1 %i.aaa, <8 x float> %i.abl, <8 x float> %predphi
  %wide.gep568 = getelementptr inbounds nuw [4 x i8], ptr %3, <8 x i64> %i.abc
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %predphi567, <8 x ptr> align 4 %wide.gep568, <8 x i1> %i.zx), !tbaa !64, !alias.scope !133, !noalias !136
  %i.abo = or disjoint <8 x i64> %i.aai, %broadcast.splat549 ; 2 uses
  %i.abp = extractelement <8 x i64> %i.abo, i64 0
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.abp
  %wide.vec569 = load <32 x float>, ptr %i.abq, align 4, !tbaa !64, !alias.scope !131, !noalias !132
  %strided.vec570 = shufflevector <32 x float> %wide.vec569, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.abr = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec570, <8 x float> zeroinitializer) ; 2 uses
  %wide.gep571 = getelementptr [4 x i8], <8 x ptr> %wide.gep553, i64 %i.yn
  %wide.masked.gather572 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep571, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !126, !noalias !130
  %i.abs = fdiv reassoc nsz arcp contract afn <8 x float> %wide.masked.gather572, %i.aad
  %wide.gep573 = getelementptr [4 x i8], <8 x ptr> %wide.gep556, i64 %i.yn
  %wide.masked.gather574 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep573, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !64, !alias.scope !126, !noalias !130
  %i.abt = fdiv reassoc nsz arcp contract afn <8 x float> %wide.masked.gather574, %i.aae
end_hunk_1
