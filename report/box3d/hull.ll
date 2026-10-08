Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/hull?download=true
inline.NumInlined: 449
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@b3FindHullSupportVertex:bb.a
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i32 [ -1, %bb.a ], [ %.1, %bb.b ]
  ret i32 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.023 = phi i32 [ -1, %.lr.ph ], [ %.1, %bb.b ]
  %.01722 = phi float [ f0xFF7FFFFF, %.lr.ph ], [ %.118, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [12 x i8], ptr %.0.i, i64 %indvars.iv ; 2 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.k, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 4
  %i.l = fmul <2 x float> %1, %.sroa.0.0.copyload ; 2 uses
  %shift = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.l, %shift
  %i.m = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.n = fmul float %2, %.sroa.2.0.copyload
  %i.o = fadd float %i.n, %i.m                    ; 2 uses
  %i.p = fcmp ogt float %i.o, %.01722             ; 2 uses
  %.118 = select i1 %i.p, float %i.o, float %.01722
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  %.1 = select i1 %i.p, i32 %i.q, i32 %.023       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !130
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @b3FindHullSupportFace(ptr noundef %0, <2 x float> %1, float %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.d = load i32, ptr %i.c, align 4, !tbaa !22   ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sext i32 %i.d to i64
  %i.h = add nsw i64 %i.g, %i.f
  %i.i = inttoptr i64 %i.h to ptr
  %.0.i = select i1 %i.e, ptr null, ptr %i.i
  %i.j = icmp sgt i32 %i.b, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i32 [ -1, %bb.a ], [ %.1, %bb.b ]
  ret i32 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.023 = phi i32 [ -1, %.lr.ph ], [ %.1, %bb.b ]
  %.01722 = phi float [ f0xFF7FFFFF, %.lr.ph ], [ %.118, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.0.i, i64 %indvars.iv ; 2 uses
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.k, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4
  %i.l = fmul <2 x float> %1, %.sroa.01.0.copyload ; 2 uses
  %shift = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.l, %shift
  %i.m = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.n = fmul float %2, %.sroa.22.0.copyload
  %i.o = fadd float %i.n, %i.m                    ; 2 uses
  %i.p = fcmp ogt float %i.o, %.01722             ; 2 uses
  %.118 = select i1 %i.p, float %i.o, float %.01722
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  %.1 = select i1 %i.p, i32 %i.q, i32 %.023       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !131
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @b3IsValidHull(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #2 {
bb.a:
  ret i1 true
}

; Function Attrs: nounwind uwtable
define noundef ptr @b3CreateCylinder(float noundef %0, float noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = shl nsw i32 %3, 1                        ; 3 uses
  %i.b = sext i32 %i.a to i64
  %i.c = mul nsw i64 %i.b, 12                     ; 2 uses
  %i.d = tail call ptr @b3Alloc(i64 noundef %i.c) #24 ; 3 uses
  %i.e = uitofp nneg i32 %3 to float
  %i.f = fdiv float f0x40C90FDB, %i.e
  %i.g = icmp sgt i32 %3, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = fadd float %0, %2
  %wide.trip.count = zext nneg i32 %3 to i64
  %i.i = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %1, i64 0
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.k = tail call ptr @b3CreateHull(ptr noundef %i.d, i32 noundef %i.a, i32 noundef %i.a)
  tail call void @b3Free(ptr noundef %i.d, i64 noundef %i.c) #24
  ret ptr %i.k

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.035 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.s, %bb.b ] ; 3 uses
  %i.l = tail call <2 x float> @b3ComputeCosSin(float noundef %.035) #24
  %i.m = tail call <2 x float> @b3ComputeCosSin(float noundef %.035) #24
  %.idx = mul nuw nsw i64 %indvars.iv, 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx ; 3 uses
  %i.o = shufflevector <2 x float> %i.m, <2 x float> %i.l, <4 x i32> <i32 0, i32 poison, i32 3, i32 0>
  %i.p = insertelement <4 x float> %i.o, float %2, i64 1
  %i.q = fmul <4 x float> %i.p, %i.j              ; 2 uses
  store <4 x float> %i.q, ptr %i.n, align 4, !tbaa !23
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store float %i.h, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !23
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.r = extractelement <4 x float> %i.q, i64 2
  store float %i.r, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !23
  %i.s = fadd float %i.f, %.035
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !132
}

declare ptr @b3Alloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noundef ptr @b3CreateHull(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 7 uses
  %i.b = alloca [3 x i32], align 4                ; 7 uses
  %i.c = alloca [3 x float], align 4              ; 7 uses
  %3 = alloca %struct.b3HullBuilder, align 8      ; 45 uses
  %i.d = alloca [256 x ptr], align 16             ; 4 uses
  %i.e = alloca [256 x ptr], align 16             ; 4 uses
  %i.f = alloca [256 x ptr], align 16             ; 5 uses
  %i.g = icmp slt i32 %1, 4
  br i1 %i.g, label %bb.cr, label %.new

.new:                                             ; preds = %bb.a
  %.sroa.0198.0.copyload = load <2 x float>, ptr %0, align 4, !tbaa !23 ; 8 uses
  %.sroa.4199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4199.0.copyload = load float, ptr %.sroa.4199.0..sroa_idx, align 4, !tbaa !23 ; 7 uses
  %i.h = tail call i32 @llvm.smax.i32(i32 %2, i32 4)
  %i.i = tail call i32 @llvm.umin.i32(i32 %i.h, i32 128) ; 5 uses
  %i.j = add nuw nsw i32 %1, 4                    ; 2 uses
  %i.k = mul nuw nsw i32 %i.i, 24
  %i.l = add nsw i32 %i.k, -48                    ; 2 uses
  %i.m = mul nuw nsw i32 %i.i, 5
  %i.n = tail call i32 @llvm.umax.i32(i32 %i.m, i32 26)
  %i.o = add nsw i32 %i.n, -10                    ; 2 uses
  %i.p = mul nuw nsw i32 %i.i, 3
  %i.q = add nsw i32 %i.p, -6                     ; 3 uses
  %i.r = shl nuw nsw i32 %i.i, 1
  %i.s = add nsw i32 %i.r, -4                     ; 3 uses
  %i.t = zext nneg i32 %i.j to i64                ; 2 uses
  %i.u = mul nuw nsw i64 %i.t, 48
  %i.v = zext nneg i32 %i.l to i64
  %i.w = add nuw nsw i64 %i.v, %i.t
  %i.x = mul nuw nsw i64 %i.w, 48                 ; 2 uses
  %i.y = zext nneg i32 %i.o to i64
  %i.z = shl nuw nsw i64 %i.y, 7
  %i.aa = add nuw nsw i64 %i.x, %i.z              ; 2 uses
  %i.ab = zext nneg i32 %i.q to i64
  %i.ac = shl nuw nsw i64 %i.ab, 3                ; 2 uses
  %i.ad = add nuw nsw i64 %i.aa, %i.ac            ; 2 uses
  %i.ae = add nuw nsw i64 %i.ad, %i.ac            ; 2 uses
  %i.af = zext nneg i32 %i.s to i64               ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ae, %i.ag            ; 2 uses
  %i.ai = shl nuw nsw i64 %i.af, 5
  %i.aj = add nuw nsw i64 %i.ah, %i.ai
  %i.ak = and i64 %i.aj, -8                       ; 2 uses
  %i.al = zext nneg i32 %1 to i64                 ; 8 uses
  %i.am = mul nuw nsw i64 %i.al, 12
  %i.an = add nuw nsw i64 %i.ak, %i.am            ; 6 uses
  %i.ao = tail call ptr @b3Alloc(i64 noundef %i.an) #24 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %3, i8 0, i64 384, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  store ptr %i.ap, ptr %i.ap, align 8, !tbaa !27
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !28
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 12 uses
  store ptr %i.ar, ptr %i.ar, align 8, !tbaa !27
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 3 uses
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !28
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 22 uses
  store ptr %i.at, ptr %i.at, align 8, !tbaa !27
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 6 uses
  store ptr %i.at, ptr %i.au, align 8, !tbaa !28
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 248 ; 5 uses
  store ptr %i.ao, ptr %i.av, align 8, !tbaa !179
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 256
  store i32 %i.j, ptr %i.aw, align 8, !tbaa !180
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.u
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 264 ; 4 uses
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !41
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 272
  store i32 %i.l, ptr %i.az, align 8, !tbaa !181
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.x
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 288 ; 2 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !42
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 296
  store i32 %i.o, ptr %i.bc, align 8, !tbaa !182
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aa
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 312 ; 3 uses
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !183
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 320
  store i32 %i.q, ptr %i.bf, align 8, !tbaa !184
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ad
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 328 ; 7 uses
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !185
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 336
  store i32 %i.q, ptr %i.bi, align 8, !tbaa !186
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ae
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 344
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !43
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 352
  store i32 %i.s, ptr %i.bl, align 8, !tbaa !187
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ah
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 360 ; 2 uses
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !188
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 368
  store i32 %i.s, ptr %i.bo, align 8, !tbaa !189
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ak ; 17 uses
  %xtraiter = and i64 %i.al, 1
  %unroll_iter = and i64 %i.al, 2147483646
  br label %bb.aa

.preheader262:                                    ; preds = %.preheader262.preheader, %.preheader262
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.preheader262 ], [ 0, %.preheader262.preheader ] ; 2 uses
  %.sroa.012.0.copyload2935.i.i.i = phi <2 x float> [ %i.bv, %.preheader262 ], [ splat (float f0x7F7FFFFF), %.preheader262.preheader ] ; 2 uses
  %i.bq = phi float [ %i.bt, %.preheader262 ], [ f0x7F7FFFFF, %.preheader262.preheader ] ; 2 uses
  %.sroa.08.4.vec.insert.i263134.i.i.i = phi <2 x float> [ %i.bx, %.preheader262 ], [ splat (float f0xFF7FFFFF), %.preheader262.preheader ] ; 2 uses
  %.sroa.24.0.copyload3233.i.i.i = phi float [ %i.bz, %.preheader262 ], [ f0xFF7FFFFF, %.preheader262.preheader ] ; 2 uses
  %i.br = getelementptr inbounds nuw [12 x i8], ptr %i.bp, i64 %indvars.iv.i.i.i ; 2 uses
  %.sroa.010.0.copyload.i.i.i = load <2 x float>, ptr %i.br, align 4, !noalias !190 ; 4 uses
  %.sroa.211.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.211.0.copyload.i.i.i = load float, ptr %.sroa.211.0..sroa_idx.i.i.i, align 4, !noalias !190 ; 4 uses
  %i.bs = fcmp olt float %i.bq, %.sroa.211.0.copyload.i.i.i
  %i.bt = select i1 %i.bs, float %i.bq, float %.sroa.211.0.copyload.i.i.i ; 4 uses
  %i.bu = fcmp olt <2 x float> %.sroa.012.0.copyload2935.i.i.i, %.sroa.010.0.copyload.i.i.i
  %i.bv = select <2 x i1> %i.bu, <2 x float> %.sroa.012.0.copyload2935.i.i.i, <2 x float> %.sroa.010.0.copyload.i.i.i ; 4 uses
  %i.bw = fcmp ogt <2 x float> %.sroa.08.4.vec.insert.i263134.i.i.i, %.sroa.010.0.copyload.i.i.i
  %i.bx = select <2 x i1> %i.bw, <2 x float> %.sroa.08.4.vec.insert.i263134.i.i.i, <2 x float> %.sroa.010.0.copyload.i.i.i ; 4 uses
  %i.by = fcmp ogt float %.sroa.24.0.copyload3233.i.i.i, %.sroa.211.0.copyload.i.i.i
  %i.bz = select i1 %i.by, float %.sroa.24.0.copyload3233.i.i.i, float %.sroa.211.0.copyload.i.i.i ; 4 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.al
  br i1 %exitcond.not.i.i.i, label %b3HullBuilder_ComputeTolerance.exit.i, label %.preheader262, !llvm.loop !135

b3HullBuilder_ComputeTolerance.exit.i:            ; preds = %.preheader262
  %i.ca = fcmp olt <2 x float> %i.bv, zeroinitializer
  %i.cb = fneg <2 x float> %i.bv
  %i.cc = fcmp olt float %i.bt, 0.000000e+00
  %i.cd = fneg float %i.bt
  %i.ce = select i1 %i.cc, float %i.cd, float %i.bt ; 2 uses
  %i.cf = fcmp olt <2 x float> %i.bx, zeroinitializer
  %i.cg = fneg <2 x float> %i.bx
  %i.ch = fcmp olt float %i.bz, 0.000000e+00
  %i.ci = fneg float %i.bz
  %i.cj = select i1 %i.ch, float %i.ci, float %i.bz ; 2 uses
  %i.ck = select <2 x i1> %i.ca, <2 x float> %i.cb, <2 x float> %i.bv ; 2 uses
  %i.cl = select <2 x i1> %i.cf, <2 x float> %i.cg, <2 x float> %i.bx ; 2 uses
  %i.cm = fcmp ogt <2 x float> %i.ck, %i.cl
  %i.cn = select <2 x i1> %i.cm, <2 x float> %i.ck, <2 x float> %i.cl ; 2 uses
  %i.co = fcmp ogt float %i.ce, %i.cj
  %i.cp = select i1 %i.co, float %i.ce, float %i.cj ; 3 uses
  %i.cq = extractelement <2 x float> %i.cn, i64 0 ; 3 uses
  %i.cr = extractelement <2 x float> %i.cn, i64 1 ; 3 uses
  %i.cs = fadd float %i.cq, %i.cr
  %i.ct = fadd float %i.cp, %i.cs                 ; 2 uses
  %i.cu = fcmp ogt float %i.cr, %i.cp
  %i.cv = select i1 %i.cu, float %i.cr, float %i.cp ; 2 uses
  %i.cw = fcmp ogt float %i.cq, %i.cv
  %i.cx = select i1 %i.cw, float %i.cq, float %i.cv ; 2 uses
  %i.cy = fmul float %i.cx, f0x3FDDB3D7           ; 2 uses
  %i.cz = fcmp olt float %i.cy, %i.ct
  %i.da = select i1 %i.cz, float %i.cy, float %i.ct
  %i.db = fmul float %i.da, 3.000000e+00
  %i.dc = fmul float %i.db, 1.010000e+00
  %i.dd = fadd float %i.cx, %i.dc
  %i.de = fmul float %i.dd, f0x34000000           ; 4 uses
  store float %i.de, ptr %3, align 8, !tbaa !191
  %i.df = fmul float %i.de, 4.000000e+00          ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  store float %i.df, ptr %i.dg, align 4, !tbaa !192
  %i.dh = fmul float %i.df, 2.000000e+00
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store float %i.dh, ptr %i.di, align 8, !tbaa !44
  %.sroa.068.0.copyload.i.i.i = load float, ptr %i.bp, align 4, !tbaa !23 ; 2 uses
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %.sroa.9.0.copyload.i.i.i = load float, ptr %.sroa.9.0..sroa_idx.i.i.i, align 4, !tbaa !23 ; 2 uses
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.15.0.copyload.i.i.i = load float, ptr %.sroa.15.0..sroa_idx.i.i.i, align 4, !tbaa !23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  br label %bb.c

bb.b:                                             ; preds = %bb.l
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %.08992.i.i.i, ptr %i.dl, align 4
  store i32 %.08995.i.i.i, ptr %i.dj, align 4
  store i32 %.08998.i.i.i, ptr %i.dm, align 4
  store i32 %.089101.i.i.i, ptr %i.dk, align 4
  store i32 %.076.i.i.i, ptr %i.b, align 4
  store i32 %.079.i.i.i, ptr %i.a, align 4
  %i.dn = fsub float %.sroa.050.1.i.i.i, %.sroa.056.1.i.i.i ; 3 uses
  %i.do = fsub float %.sroa.10.1.i.i.i, %.sroa.1061.1.i.i.i ; 3 uses
  %i.dp = fsub float %.sroa.17.1.i.i.i, %.sroa.1766.1.i.i.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store float %i.dn, ptr %i.c, align 4, !tbaa !23
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store float %i.do, ptr %i.dq, align 4, !tbaa !23
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store float %i.dp, ptr %i.dr, align 4, !tbaa !23
  %i.ds = fcmp olt float %i.dn, %i.do
  %i.dt = fcmp olt float %i.do, %i.dp
  %i.du = select i1 %i.dt, i64 2, i64 1
  %i.dv = fcmp olt float %i.dn, %i.dp
  %i.dw = select i1 %i.dv, i64 2, i64 0
  %i.dx = select i1 %i.ds, i64 %i.du, i64 %i.dw   ; 3 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dx
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !23
  %i.ea = fmul float %i.de, 2.000000e+00          ; 2 uses
  %i.eb = fcmp ogt float %i.dz, %i.ea
  br i1 %i.eb, label %b3FindFarthestPointsAlongCardinalAxes.exit.i.i, label %b3FindFarthestPointsAlongCardinalAxes.exit.thread.i.i

b3FindFarthestPointsAlongCardinalAxes.exit.thread.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %b3HullBuilder_Construct.exit.thread

bb.c:                                             ; preds = %bb.l, %b3HullBuilder_ComputeTolerance.exit.i
  %indvars.iv.i.i41.i = phi i64 [ 1, %b3HullBuilder_ComputeTolerance.exit.i ], [ %indvars.iv.next.i.i42.i, %bb.l ] ; 3 uses
  %.089100.i.i.i = phi i32 [ 0, %b3HullBuilder_ComputeTolerance.exit.i ], [ %.089101.i.i.i, %bb.l ] ; 2 uses
  %.08997.i.i.i = phi i32 [ 0, %b3HullBuilder_ComputeTolerance.exit.i ], [ %.08998.i.i.i, %bb.l ] ; 2 uses
  %.08994.i.i.i = phi i32 [ 0, %b3HullBuilder_ComputeTolerance.exit.i ], [ %.08995.i.i.i, %bb.l ] ; 2 uses
  %.08991.i.i.i = phi i32 [ 0, %b3HullBuilder_ComputeTolerance.exit.i ], [ %.08992.i.i.i, %bb.l ] ; 2 uses
  %.sroa.050.088.i.i.i = phi float [ %.sroa.068.0.copyload.i.i.i, %b3HullBuilder_ComputeTolerance.exit.i ], [ %.sroa.050.1.i.i.i, %bb.l ] ; 3 uses
  %.sroa.10.087.i.i.i = phi float [ %.sroa.9.0.copyload.i.i.i, %b3HullBuilder_ComputeTolerance.exit.i ], [ %.sroa.10.1.i.i.i, %bb.l ] ; 3 uses
  %.sroa.17.086.i.i.i = phi float [ %.sroa.15.0.copyload.i.i.i, %b3HullBuilder_ComputeTolerance.exit.i ], [ %.sroa.17.1.i.i.i, %bb.l ] ; 3 uses
  %.sroa.056.085.i.i.i = phi float [ %.sroa.068.0.copyload.i.i.i, %b3HullBuilder_ComputeTolerance.exit.i ], [ %.sroa.056.1.i.i.i, %bb.l ] ; 3 uses
  %.sroa.1061.084.i.i.i = phi float [ %.sroa.9.0.copyload.i.i.i, %b3HullBuilder_ComputeTolerance.exit.i ], [ %.sroa.1061.1.i.i.i, %bb.l ] ; 3 uses
  %.sroa.1766.083.i.i.i = phi float [ %.sroa.15.0.copyload.i.i.i, %b3HullBuilder_ComputeTolerance.exit.i ], [ %.sroa.1766.1.i.i.i, %bb.l ] ; 3 uses
  %.07782.i.i.i = phi i32 [ 0, %b3HullBuilder_ComputeTolerance.exit.i ], [ %.076.i.i.i, %bb.l ] ; 2 uses
  %.08081.i.i.i = phi i32 [ 0, %b3HullBuilder_ComputeTolerance.exit.i ], [ %.079.i.i.i, %bb.l ] ; 2 uses
  %i.ec = getelementptr inbounds nuw [12 x i8], ptr %i.bp, i64 %indvars.iv.i.i41.i ; 3 uses
  %.sroa.07.0.copyload.i.i.i = load float, ptr %i.ec, align 4, !tbaa !23 ; 4 uses
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %.sroa.11.0.copyload.i.i.i = load float, ptr %.sroa.11.0..sroa_idx.i.i.i, align 4, !tbaa !23 ; 4 uses
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.sroa.13.0.copyload.i.i.i = load float, ptr %.sroa.13.0..sroa_idx.i.i.i, align 4, !tbaa !23 ; 4 uses
  %i.ed = fcmp olt float %.sroa.07.0.copyload.i.i.i, %.sroa.056.085.i.i.i
  %i.ee = trunc nuw nsw i64 %indvars.iv.i.i41.i to i32 ; 6 uses
  br i1 %i.ed, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ef = fcmp ogt float %.sroa.07.0.copyload.i.i.i, %.sroa.050.088.i.i.i
  br i1 %i.ef, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.079.i.i.i = phi i32 [ %.08081.i.i.i, %bb.d ], [ %.08081.i.i.i, %bb.e ], [ %i.ee, %bb.c ] ; 2 uses
  %.076.i.i.i = phi i32 [ %.07782.i.i.i, %bb.d ], [ %i.ee, %bb.e ], [ %.07782.i.i.i, %bb.c ] ; 2 uses
  %.sroa.056.1.i.i.i = phi float [ %.sroa.056.085.i.i.i, %bb.d ], [ %.sroa.056.085.i.i.i, %bb.e ], [ %.sroa.07.0.copyload.i.i.i, %bb.c ] ; 2 uses
  %.sroa.050.1.i.i.i = phi float [ %.sroa.050.088.i.i.i, %bb.d ], [ %.sroa.07.0.copyload.i.i.i, %bb.e ], [ %.sroa.050.088.i.i.i, %bb.c ] ; 2 uses
  %i.eg = fcmp olt float %.sroa.11.0.copyload.i.i.i, %.sroa.1061.084.i.i.i
  br i1 %i.eg, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.eh = fcmp ogt float %.sroa.11.0.copyload.i.i.i, %.sroa.10.087.i.i.i
  br i1 %i.eh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.08995.i.i.i = phi i32 [ %.08994.i.i.i, %bb.g ], [ %.08994.i.i.i, %bb.h ], [ %i.ee, %bb.f ] ; 2 uses
  %.08992.i.i.i = phi i32 [ %.08991.i.i.i, %bb.g ], [ %i.ee, %bb.h ], [ %.08991.i.i.i, %bb.f ] ; 2 uses
  %.sroa.1061.1.i.i.i = phi float [ %.sroa.1061.084.i.i.i, %bb.g ], [ %.sroa.1061.084.i.i.i, %bb.h ], [ %.sroa.11.0.copyload.i.i.i, %bb.f ] ; 2 uses
end_hunk_0
begin_hunk_1_@b3CreateHull:bb.a
  %i.mf = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 32
  store ptr %.0.i317.i.i, ptr %i.mf, align 8, !tbaa !47
  %i.mg = getelementptr inbounds nuw i8, ptr %.0.i317.i.i, i64 32
  store ptr %.09.i.i.i, ptr %i.mg, align 8, !tbaa !47
  %.0912.i319.i.i = load ptr, ptr %i.lx, align 8, !tbaa !196
  %i.mh = getelementptr inbounds nuw i8, ptr %.0912.i319.i.i, i64 8
  %.09.i323.i.i = load ptr, ptr %i.mh, align 8, !tbaa !196
  %i.mi = getelementptr inbounds nuw i8, ptr %.09.i323.i.i, i64 8
  %.09.i323.1.i.i = load ptr, ptr %i.mi, align 8, !tbaa !196 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ls, i64 16 ; 3 uses
  %.015.i325.i.i = load ptr, ptr %i.mj, align 8, !tbaa !196
  %i.mk = getelementptr inbounds nuw i8, ptr %.015.i325.i.i, i64 8
  %.0.i329.i.i = load ptr, ptr %i.mk, align 8, !tbaa !196 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.09.i323.1.i.i, i64 32
  store ptr %.0.i329.i.i, ptr %i.ml, align 8, !tbaa !47
  %i.mm = getelementptr inbounds nuw i8, ptr %.0.i329.i.i, i64 32
  store ptr %.09.i323.1.i.i, ptr %i.mm, align 8, !tbaa !47
  %.0912.i331.i.i = load ptr, ptr %i.ly, align 8, !tbaa !196 ; 2 uses
  %.015.i333.i.i = load ptr, ptr %i.md, align 8, !tbaa !196
  %i.mn = getelementptr inbounds nuw i8, ptr %.015.i333.i.i, i64 8
  %.0.i337.i.i = load ptr, ptr %i.mn, align 8, !tbaa !196
  %i.mo = getelementptr inbounds nuw i8, ptr %.0.i337.i.i, i64 8
  %.0.i337.1.i.i = load ptr, ptr %i.mo, align 8, !tbaa !196 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.0912.i331.i.i, i64 32
  store ptr %.0.i337.1.i.i, ptr %i.mp, align 8, !tbaa !47
  %i.mq = getelementptr inbounds nuw i8, ptr %.0.i337.1.i.i, i64 32
  store ptr %.0912.i331.i.i, ptr %i.mq, align 8, !tbaa !47
  %.0912.i339.i.i = load ptr, ptr %i.md, align 8, !tbaa !196 ; 2 uses
  %.015.i341.i.i = load ptr, ptr %i.mj, align 8, !tbaa !196
  %i.mr = getelementptr inbounds nuw i8, ptr %.015.i341.i.i, i64 8
  %.0.i345.i.i = load ptr, ptr %i.mr, align 8, !tbaa !196
  %i.ms = getelementptr inbounds nuw i8, ptr %.0.i345.i.i, i64 8
  %.0.i345.1.i.i = load ptr, ptr %i.ms, align 8, !tbaa !196 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.0912.i339.i.i, i64 32
  store ptr %.0.i345.1.i.i, ptr %i.mt, align 8, !tbaa !47
  %i.mu = getelementptr inbounds nuw i8, ptr %.0.i345.1.i.i, i64 32
  store ptr %.0912.i339.i.i, ptr %i.mu, align 8, !tbaa !47
  %.0912.i347.i.i = load ptr, ptr %i.mj, align 8, !tbaa !196 ; 2 uses
  %.015.i349.i.i = load ptr, ptr %i.ly, align 8, !tbaa !196
  %i.mv = getelementptr inbounds nuw i8, ptr %.015.i349.i.i, i64 8
  %.0.i353.i.i = load ptr, ptr %i.mv, align 8, !tbaa !196
  %i.mw = getelementptr inbounds nuw i8, ptr %.0.i353.i.i, i64 8
  %.0.i353.1.i.i = load ptr, ptr %i.mw, align 8, !tbaa !196 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.0912.i347.i.i, i64 32
  store ptr %.0.i353.1.i.i, ptr %i.mx, align 8, !tbaa !47
  %i.my = getelementptr inbounds nuw i8, ptr %.0.i353.1.i.i, i64 32
  store ptr %.0912.i347.i.i, ptr %i.my, align 8, !tbaa !47
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge.thread.i.i, %.lr.ph19.i.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph19.i.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.thread.i.i ] ; 6 uses
  %i.mz = icmp eq i64 %indvars.iv.i.i, %i.eq
  %i.na = icmp eq i64 %indvars.iv.i.i, %i.iz
  %or.cond237.i.i = or i1 %i.mz, %i.na
  %i.nb = icmp eq i64 %indvars.iv.i.i, %i.jd
  %or.cond238.i.i = or i1 %i.nb, %or.cond237.i.i
  %i.nc = icmp eq i64 %indvars.iv.i.i, %i.hy
  %or.cond239.i.i = or i1 %i.nc, %or.cond238.i.i
  br i1 %or.cond239.i.i, label %._crit_edge.thread.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.nd = getelementptr inbounds nuw [12 x i8], ptr %i.bp, i64 %indvars.iv.i.i ; 2 uses
  %.sroa.022.0.copyload.i.i = load <2 x float>, ptr %i.nd, align 4, !tbaa !23 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %.sroa.5.0.copyload.i.i = load float, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !tbaa !23 ; 2 uses
  %.0224373.i.i = load ptr, ptr %i.au, align 8, !tbaa !28 ; 2 uses
  %.not374.i.i = icmp eq ptr %.0224373.i.i, %i.at
  br i1 %.not374.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w
  %i.ne = load float, ptr %i.di, align 8, !tbaa !44
  br label %bb.x

._crit_edge.i.i:                                  ; preds = %bb.x
  %.not235.i.i = icmp eq ptr %.1226.i.i, null
  br i1 %.not235.i.i, label %._crit_edge.thread.i.i, label %bb.y

bb.x:                                             ; preds = %bb.x, %.lr.ph.i.i
  %.0224377.i.i = phi ptr [ %.0224373.i.i, %.lr.ph.i.i ], [ %.0224.i.i, %bb.x ] ; 4 uses
  %.0225376.i.i = phi ptr [ null, %.lr.ph.i.i ], [ %.1226.i.i, %bb.x ]
  %.0227375.i.i = phi float [ %i.ne, %.lr.ph.i.i ], [ %.1228.i.i, %bb.x ] ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.0224377.i.i, i64 32
  %i.ng = load <2 x float>, ptr %i.nf, align 8
  %i.nh = getelementptr inbounds nuw i8, ptr %.0224377.i.i, i64 40
  %i.ni = load <2 x float>, ptr %i.nh, align 8    ; 2 uses
  %.sroa.28.8.vec.extract.i.i.i = extractelement <2 x float> %i.ni, i64 0
  %i.nj = fmul <2 x float> %.sroa.022.0.copyload.i.i, %i.ng ; 2 uses
  %shift564 = shufflevector <2 x float> %i.nj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop565 = fadd <2 x float> %i.nj, %shift564
  %i.nk = extractelement <2 x float> %foldExtExtBinop565, i64 0
  %i.nl = fmul float %.sroa.5.0.copyload.i.i, %.sroa.28.8.vec.extract.i.i.i
  %i.nm = fadd float %i.nl, %i.nk
  %.sroa.28.12.vec.extract.i.i.i = extractelement <2 x float> %i.ni, i64 1
  %i.nn = fsub float %i.nm, %.sroa.28.12.vec.extract.i.i.i ; 2 uses
  %i.no = fcmp ogt float %i.nn, %.0227375.i.i     ; 2 uses
  %.1228.i.i = select i1 %i.no, float %i.nn, float %.0227375.i.i ; 3 uses
  %.1226.i.i = select i1 %i.no, ptr %.0224377.i.i, ptr %.0225376.i.i ; 6 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.0224377.i.i, i64 8
  %.0224.i.i = load ptr, ptr %i.np, align 8, !tbaa !28 ; 2 uses
  %.not.i.i = icmp eq ptr %.0224.i.i, %i.at
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.x, !llvm.loop !139

bb.y:                                             ; preds = %._crit_edge.i.i
  %i.nq = load ptr, ptr %i.av, align 8, !tbaa !179
  %i.nr = load i32, ptr %i.jl, align 4, !tbaa !193 ; 2 uses
  %i.ns = add nsw i32 %i.nr, 1
  store i32 %i.ns, ptr %i.jl, align 4, !tbaa !193
  %i.nt = sext i32 %i.nr to i64
  %i.nu = getelementptr inbounds [48 x i8], ptr %i.nq, i64 %i.nt ; 11 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nu, i8 0, i64 16, i1 false)
  store <2 x float> %.sroa.022.0.copyload.i.i, ptr %i.nv, align 8, !tbaa !23
  %.sroa.210.0..sroa_idx.i355.i.i = getelementptr inbounds nuw i8, ptr %i.nu, i64 32
  store float %.sroa.5.0.copyload.i.i, ptr %.sroa.210.0..sroa_idx.i355.i.i, align 8, !tbaa !23
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 36
  store i32 -1, ptr %i.nw, align 4, !tbaa !194
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nu, i64 40
  store i8 0, ptr %i.nx, align 8, !tbaa !195
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  store ptr %.1226.i.i, ptr %i.ny, align 8, !tbaa !48
  %i.nz = getelementptr inbounds nuw i8, ptr %.1226.i.i, i64 64
  %.val.i.i = load ptr, ptr %i.nz, align 8, !tbaa !27 ; 2 uses
  %i.oa = load ptr, ptr %.val.i.i, align 8, !tbaa !27 ; 2 uses
  store ptr %i.oa, ptr %i.nu, align 8, !tbaa !27
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nu, i64 8 ; 2 uses
  store ptr %.val.i.i, ptr %i.ob, align 8, !tbaa !28
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  store ptr %i.nu, ptr %i.oc, align 8, !tbaa !28
  %i.od = load ptr, ptr %i.ob, align 8, !tbaa !28
  store ptr %i.nu, ptr %i.od, align 8, !tbaa !27
  %i.oe = getelementptr inbounds nuw i8, ptr %.1226.i.i, i64 60 ; 2 uses
  %i.of = load float, ptr %i.oe, align 4, !tbaa !49
  %i.og = fcmp ogt float %.1228.i.i, %i.of
  br i1 %i.og, label %bb.z, label %._crit_edge.thread.i.i

bb.z:                                             ; preds = %bb.y
  store float %.1228.i.i, ptr %i.oe, align 4, !tbaa !49
  %i.oh = getelementptr inbounds nuw i8, ptr %.1226.i.i, i64 112
  store ptr %i.nu, ptr %i.oh, align 8, !tbaa !50
  br label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.z, %bb.y, %._crit_edge.i.i, %bb.w, %bb.v
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %exitcond.not.i.i, label %b3HullBuilder_BuildInitialHull.exit.i, label %bb.v, !llvm.loop !140

bb.aa:                                            ; preds = %bb.aa, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.1, %bb.aa ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.aa ]
  %i.oi = getelementptr inbounds nuw [12 x i8], ptr %i.bp, i64 %indvars.iv.i ; 2 uses
  %i.oj = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %.sroa.08.0.copyload.i = load <2 x float>, ptr %i.oj, align 4
  %.sroa.29.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %.sroa.29.0.copyload.i = load float, ptr %.sroa.29.0..sroa_idx.i, align 4
  %i.ok = fsub <2 x float> %.sroa.08.0.copyload.i, %.sroa.0198.0.copyload
  %i.ol = fsub float %.sroa.29.0.copyload.i, %.sroa.4199.0.copyload
  store <2 x float> %i.ok, ptr %i.oi, align 4, !tbaa !23
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  store float %i.ol, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !23
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.om = getelementptr inbounds nuw [12 x i8], ptr %i.bp, i64 %indvars.iv.next.i ; 2 uses
  %i.on = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv.next.i ; 2 uses
  %.sroa.08.0.copyload.i.1 = load <2 x float>, ptr %i.on, align 4
  %.sroa.29.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %.sroa.29.0.copyload.i.1 = load float, ptr %.sroa.29.0..sroa_idx.i.1, align 4
  %i.oo = fsub <2 x float> %.sroa.08.0.copyload.i.1, %.sroa.0198.0.copyload
  %i.op = fsub float %.sroa.29.0.copyload.i.1, %.sroa.4199.0.copyload
  store <2 x float> %i.oo, ptr %i.om, align 4, !tbaa !23
  %.sroa.4.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  store float %i.op, ptr %.sroa.4.0..sroa_idx.i.1, align 4, !tbaa !23
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader262.preheader.unr-lcssa, label %bb.aa, !llvm.loop !141

.preheader262.preheader.unr-lcssa:                ; preds = %bb.aa
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader262.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader262.preheader.unr-lcssa
  %lcmp.mod632 = trunc i32 %1 to i1
  call void @llvm.assume(i1 %lcmp.mod632)
  %i.oq = getelementptr inbounds nuw [12 x i8], ptr %i.bp, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.or = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv.next.i.1 ; 2 uses
  %.sroa.08.0.copyload.i.epil = load <2 x float>, ptr %i.or, align 4
  %.sroa.29.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  %.sroa.29.0.copyload.i.epil = load float, ptr %.sroa.29.0..sroa_idx.i.epil, align 4
  %i.os = fsub <2 x float> %.sroa.08.0.copyload.i.epil, %.sroa.0198.0.copyload
  %i.ot = fsub float %.sroa.29.0.copyload.i.epil, %.sroa.4199.0.copyload
  store <2 x float> %i.os, ptr %i.oq, align 4, !tbaa !23
  %.sroa.4.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  store float %i.ot, ptr %.sroa.4.0..sroa_idx.i.epil, align 4, !tbaa !23
  br label %.preheader262.preheader

.preheader262.preheader:                          ; preds = %.preheader262.preheader.unr-lcssa, %.epil.preheader
  br label %.preheader262

b3HullBuilder_BuildInitialHull.exit.i:            ; preds = %._crit_edge.thread.i.i
  %i.ou = add nsw i32 %i.i, -4
  %i.ov = call i32 @llvm.umin.i32(i32 %i.ou, i32 252)
  %.018.i.i = load ptr, ptr %i.au, align 8, !tbaa !28 ; 4 uses
  %.not19.i.i = icmp eq ptr %.018.i.i, %i.at
  br i1 %.not19.i.i, label %._crit_edge.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %b3HullBuilder_BuildInitialHull.exit.i
  %i.ow = load float, ptr %i.di, align 8, !tbaa !44
  br label %.lr.ph.i48.i

.lr.ph.i48.i:                                     ; preds = %bb.ad, %.lr.ph.preheader.i.i
  %.022.i.i = phi ptr [ %.0.i.i, %bb.ad ], [ %.018.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01221.i.i = phi float [ %.1.i.i, %bb.ad ], [ %i.ow, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01320.i.i = phi ptr [ %.114.i.i, %bb.ad ], [ null, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 112
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !50 ; 2 uses
  %.not17.i.i = icmp eq ptr %i.oy, null
  br i1 %.not17.i.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i48.i
  %i.oz = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 60
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !49 ; 2 uses
  %i.pb = fcmp ogt float %i.pa, %.01221.i.i
  br i1 %i.pb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %.lr.ph.i48.i
  %.114.i.i = phi ptr [ %i.oy, %bb.ac ], [ %.01320.i.i, %bb.ab ], [ %.01320.i.i, %.lr.ph.i48.i ] ; 3 uses
  %.1.i.i = phi float [ %i.pa, %bb.ac ], [ %.01221.i.i, %bb.ab ], [ %.01221.i.i, %.lr.ph.i48.i ]
  %i.pc = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 8
  %.0.i.i = load ptr, ptr %i.pc, align 8, !tbaa !28 ; 2 uses
  %.not.i49.i = icmp eq ptr %.0.i.i, %i.at
  br i1 %.not.i49.i, label %b3HullBuilder_NextConflictVertex.exit.i, label %.lr.ph.i48.i, !llvm.loop !142

b3HullBuilder_NextConflictVertex.exit.i:          ; preds = %bb.ad
  %i.pd = icmp ne ptr %.114.i.i, null
  %i.pe = icmp sgt i32 %2, 4
  %i.pf = and i1 %i.pe, %i.pd
  br i1 %i.pf, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %b3HullBuilder_NextConflictVertex.exit.i
  %i.pg = getelementptr inbounds nuw i8, ptr %3, i64 324 ; 5 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %3, i64 340 ; 8 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %3, i64 304 ; 4 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %3, i64 280 ; 6 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %3, i64 300 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %3, i64 276 ; 4 uses
  br label %bb.ae

bb.ae:                                            ; preds = %b3HullBuilder_NextConflictVertex.exit79.i, %.lr.ph.i
  %.037118.i = phi ptr [ %.114.i.i, %.lr.ph.i ], [ %.114.i73.i, %b3HullBuilder_NextConflictVertex.exit79.i ] ; 10 uses
  %.038117.i = phi i32 [ %i.ov, %.lr.ph.i ], [ %i.age, %b3HullBuilder_NextConflictVertex.exit79.i ]
  %i.pm = getelementptr inbounds nuw i8, ptr %.037118.i, i64 16 ; 2 uses
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !48 ; 5 uses
  store ptr null, ptr %i.pm, align 8, !tbaa !48
  %i.po = getelementptr inbounds nuw i8, ptr %.037118.i, i64 8 ; 3 uses
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !28 ; 2 uses
  %i.pq = load ptr, ptr %.037118.i, align 8, !tbaa !27 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  store ptr %i.pp, ptr %i.pr, align 8, !tbaa !28
  store ptr %i.pq, ptr %i.pp, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.037118.i, i8 0, i64 16, i1 false)
  %.val.i51.i = load ptr, ptr %i.ar, align 8, !tbaa !27 ; 2 uses
  %i.ps = load ptr, ptr %.val.i51.i, align 8, !tbaa !27 ; 2 uses
  store ptr %i.ps, ptr %.037118.i, align 8, !tbaa !27
  store ptr %.val.i51.i, ptr %i.po, align 8, !tbaa !28
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  store ptr %.037118.i, ptr %i.pt, align 8, !tbaa !28
  %i.pu = load ptr, ptr %i.po, align 8, !tbaa !28
  store ptr %.037118.i, ptr %i.pu, align 8, !tbaa !27
  store i32 0, ptr %i.pg, align 4, !tbaa !197
  %i.pv = load ptr, ptr %i.bn, align 8, !tbaa !188 ; 5 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pn, i64 24
  store i32 1, ptr %i.pw, align 8, !tbaa !51
  %i.px = getelementptr inbounds nuw i8, ptr %i.pn, i64 64 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.pn, i64 72
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !198 ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.pz, %i.px
  br i1 %.not9.i.i.i.i.i, label %b3HullBuilder_EnterHorizonFace.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ae, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi ptr [ %i.qb, %.lr.ph.i.i.i.i.i ], [ %i.pz, %bb.ae ] ; 7 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 8 ; 3 uses
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !28 ; 4 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16
  store ptr null, ptr %i.qc, align 8, !tbaa !48
  %i.qd = load ptr, ptr %.010.i.i.i.i.i, align 8, !tbaa !27 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  store ptr %i.qb, ptr %i.qe, align 8, !tbaa !28
  store ptr %i.qd, ptr %i.qb, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.010.i.i.i.i.i, i8 0, i64 16, i1 false)
  %.val.i.i.i.i.i = load ptr, ptr %i.ap, align 8, !tbaa !27 ; 2 uses
  %i.qf = load ptr, ptr %.val.i.i.i.i.i, align 8, !tbaa !27 ; 2 uses
  store ptr %i.qf, ptr %.010.i.i.i.i.i, align 8, !tbaa !27
  store ptr %.val.i.i.i.i.i, ptr %i.qa, align 8, !tbaa !28
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  store ptr %.010.i.i.i.i.i, ptr %i.qg, align 8, !tbaa !28
  %i.qh = load ptr, ptr %i.qa, align 8, !tbaa !28
  store ptr %.010.i.i.i.i.i, ptr %i.qh, align 8, !tbaa !27
  %.not.i.i.i.i.i = icmp eq ptr %i.qb, %i.px
  br i1 %.not.i.i.i.i.i, label %b3HullBuilder_EnterHorizonFace.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !143

b3HullBuilder_EnterHorizonFace.exit.i.i.i:        ; preds = %.lr.ph.i.i.i.i.i, %bb.ae
  store ptr %i.pn, ptr %i.pv, align 8, !tbaa !200
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pv, i64 24
  store i8 0, ptr %i.qi, align 8, !tbaa !201
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !52 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  store ptr %i.qk, ptr %i.ql, align 8, !tbaa !202
  %i.qm = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  store ptr %i.qk, ptr %i.qm, align 8, !tbaa !203
  %i.qn = getelementptr inbounds nuw i8, ptr %.037118.i, i64 24 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i52.i = getelementptr inbounds nuw i8, ptr %.037118.i, i64 32 ; 3 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.al, %b3HullBuilder_EnterHorizonFace.exit.i.i.i
  %.035.i.i.i = phi i32 [ 1, %b3HullBuilder_EnterHorizonFace.exit.i.i.i ], [ %.3.i.i.i, %bb.al ] ; 5 uses
  %i.qo = zext nneg i32 %.035.i.i.i to i64
  %i.qp = getelementptr [32 x i8], ptr %i.pv, i64 %i.qo ; 7 uses
  %i.qq = getelementptr i8, ptr %i.qp, i64 -8     ; 2 uses
  %i.qr = load i8, ptr %i.qq, align 8, !tbaa !201, !range !53, !noundef !54
  %i.qs = trunc nuw i8 %i.qr to i1
  %i.qt = getelementptr i8, ptr %i.qp, i64 -16    ; 2 uses
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !203 ; 4 uses
  br i1 %i.qs, label %bb.ag, label %._crit_edge.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.qv = getelementptr i8, ptr %i.qp, i64 -24
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !202
  %i.qx = icmp eq ptr %i.qu, %i.qw
  br i1 %i.qx, label %bb.ah, label %._crit_edge.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.qy = add nsw i32 %.035.i.i.i, -1
  br label %bb.al, !llvm.loop !144

._crit_edge.i.i.i:                                ; preds = %bb.ag, %bb.af
  store i8 1, ptr %i.qq, align 8, !tbaa !201
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qu, i64 32
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !47 ; 3 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !55
  store ptr %i.rc, ptr %i.qt, align 8, !tbaa !203
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ra, i64 24
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !56 ; 6 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 24 ; 2 uses
  %i.rg = load i32, ptr %i.rf, align 8, !tbaa !51
  %.not.i.i.i = icmp eq i32 %i.rg, 0
  br i1 %.not.i.i.i, label %bb.ai, label %bb.al, !llvm.loop !144

bb.ai:                                            ; preds = %._crit_edge.i.i.i
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 32
  %i.ri = load <2 x float>, ptr %i.rh, align 8
  %i.rj = getelementptr inbounds nuw i8, ptr %i.re, i64 40
  %i.rk = load <2 x float>, ptr %i.rj, align 8    ; 2 uses
  %.sroa.0.0.copyload.i.i59.i = load <2 x float>, ptr %i.qn, align 8
  %.sroa.2.0.copyload.i.i60.i = load float, ptr %.sroa.2.0..sroa_idx.i.i52.i, align 8
  %.sroa.28.8.vec.extract.i.i.i.i = extractelement <2 x float> %i.rk, i64 0
  %i.rl = fmul <2 x float> %i.ri, %.sroa.0.0.copyload.i.i59.i ; 2 uses
  %shift567 = shufflevector <2 x float> %i.rl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop568 = fadd <2 x float> %i.rl, %shift567
  %i.rm = extractelement <2 x float> %foldExtExtBinop568, i64 0
  %i.rn = fmul float %.sroa.28.8.vec.extract.i.i.i.i, %.sroa.2.0.copyload.i.i60.i
  %i.ro = fadd float %i.rn, %i.rm
  %.sroa.28.12.vec.extract.i.i.i.i = extractelement <2 x float> %i.rk, i64 1
  %i.rp = fsub float %i.ro, %.sroa.28.12.vec.extract.i.i.i.i
  %i.rq = load float, ptr %i.dg, align 4, !tbaa !192
  %i.rr = fcmp ogt float %i.rp, %i.rq
  br i1 %i.rr, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.rs = add nuw nsw i32 %.035.i.i.i, 1
  store i32 1, ptr %i.rf, align 8, !tbaa !51
  %i.rt = getelementptr inbounds nuw i8, ptr %i.re, i64 64 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.re, i64 72
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !198 ; 2 uses
  %.not9.i.i29.i.i.i = icmp eq ptr %i.rv, %i.rt
  br i1 %.not9.i.i29.i.i.i, label %b3HullBuilder_EnterHorizonFace.exit34.i.i.i, label %.lr.ph.i.i30.i.i.i

.lr.ph.i.i30.i.i.i:                               ; preds = %bb.aj, %.lr.ph.i.i30.i.i.i
  %.010.i.i31.i.i.i = phi ptr [ %i.rx, %.lr.ph.i.i30.i.i.i ], [ %i.rv, %bb.aj ] ; 7 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.010.i.i31.i.i.i, i64 8 ; 3 uses
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !28 ; 4 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.010.i.i31.i.i.i, i64 16
  store ptr null, ptr %i.ry, align 8, !tbaa !48
  %i.rz = load ptr, ptr %.010.i.i31.i.i.i, align 8, !tbaa !27 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  store ptr %i.rx, ptr %i.sa, align 8, !tbaa !28
  store ptr %i.rz, ptr %i.rx, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.010.i.i31.i.i.i, i8 0, i64 16, i1 false)
  %.val.i.i32.i.i.i = load ptr, ptr %i.ap, align 8, !tbaa !27 ; 2 uses
  %i.sb = load ptr, ptr %.val.i.i32.i.i.i, align 8, !tbaa !27 ; 2 uses
  store ptr %i.sb, ptr %.010.i.i31.i.i.i, align 8, !tbaa !27
  store ptr %.val.i.i32.i.i.i, ptr %i.rw, align 8, !tbaa !28
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  store ptr %.010.i.i31.i.i.i, ptr %i.sc, align 8, !tbaa !28
  %i.sd = load ptr, ptr %i.rw, align 8, !tbaa !28
  store ptr %.010.i.i31.i.i.i, ptr %i.sd, align 8, !tbaa !27
  %.not.i.i33.i.i.i = icmp eq ptr %i.rx, %i.rt
  br i1 %.not.i.i33.i.i.i, label %b3HullBuilder_EnterHorizonFace.exit34.i.i.i, label %.lr.ph.i.i30.i.i.i, !llvm.loop !143

b3HullBuilder_EnterHorizonFace.exit34.i.i.i:      ; preds = %.lr.ph.i.i30.i.i.i, %bb.aj
  store ptr %i.re, ptr %i.qp, align 8, !tbaa !200
  %i.se = getelementptr inbounds nuw i8, ptr %i.qp, i64 24
  store i8 0, ptr %i.se, align 8, !tbaa !201
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !55
  %i.sh = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  store ptr %i.ra, ptr %i.sh, align 8, !tbaa !202
  %i.si = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  store ptr %i.sg, ptr %i.si, align 8, !tbaa !203
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.sj = load ptr, ptr %i.be, align 8, !tbaa !183
  %i.sk = load i32, ptr %i.pg, align 4, !tbaa !197 ; 2 uses
  %i.sl = add nsw i32 %i.sk, 1
  store i32 %i.sl, ptr %i.pg, align 4, !tbaa !197
  %i.sm = sext i32 %i.sk to i64
  %i.sn = getelementptr inbounds [8 x i8], ptr %i.sj, i64 %i.sm
  store ptr %i.qu, ptr %i.sn, align 8, !tbaa !196
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %b3HullBuilder_EnterHorizonFace.exit34.i.i.i, %._crit_edge.i.i.i, %bb.ah
  %.3.i.i.i = phi i32 [ %i.qy, %bb.ah ], [ %.035.i.i.i, %._crit_edge.i.i.i ], [ %i.rs, %b3HullBuilder_EnterHorizonFace.exit34.i.i.i ], [ %.035.i.i.i, %bb.ak ] ; 2 uses
  %i.so = icmp sgt i32 %.3.i.i.i, 0
  br i1 %i.so, label %bb.af, label %b3HullBuilder_BuildHorizon.exit.i.i

b3HullBuilder_BuildHorizon.exit.i.i:              ; preds = %bb.al
  store i32 0, ptr %i.ph, align 4, !tbaa !204
  %i.sp = load i32, ptr %i.pg, align 4, !tbaa !197
  %i.sq = icmp sgt i32 %i.sp, 0
  br i1 %i.sq, label %.lr.ph.i.i.i, label %b3HullBuilder_MergeFaces.exit.i.i

._crit_edge.i15.i.i:                              ; preds = %b3HullBuilder_NewFace.exit.i
  %i.sr = icmp sgt i32 %i.xd, -1
  br i1 %i.sr, label %.lr.ph29.preheader.i.i.i, label %b3HullBuilder_MergeFaces.exit.i.i

end_hunk_1
begin_hunk_2_@b3CreateHull:bb.a
  %.sroa.0.0.copyload.i30.i.i = load <2 x float>, ptr %i.add, align 8
  %.sroa.2.0.copyload.i31.i.i = load float, ptr %.sroa.2.0..sroa_idx.i24.i.i, align 8
  %.sroa.28.8.vec.extract.i.i32.i.i = extractelement <2 x float> %i.adm, i64 0
  %i.adn = fmul <2 x float> %i.adk, %.sroa.0.0.copyload.i30.i.i ; 2 uses
  %shift603 = shufflevector <2 x float> %i.adn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop604 = fadd <2 x float> %i.adn, %shift603
  %i.ado = extractelement <2 x float> %foldExtExtBinop604, i64 0
  %i.adp = fmul float %.sroa.28.8.vec.extract.i.i32.i.i, %.sroa.2.0.copyload.i31.i.i
  %i.adq = fadd float %i.adp, %i.ado
  %.sroa.28.12.vec.extract.i.i37.i.i = extractelement <2 x float> %i.adm, i64 1
  %i.adr = fsub float %i.adq, %.sroa.28.12.vec.extract.i.i37.i.i ; 2 uses
  %i.ads = fcmp ogt float %i.adr, %.03237.i.i.i
  br i1 %i.ads, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf
  %.234.i.i.i = phi float [ %.03237.i.i.i, %bb.bf ], [ %i.adr, %bb.bh ], [ %.03237.i.i.i, %bb.bg ] ; 3 uses
  %.2.i.i54.i = phi ptr [ %.03138.i.i.i, %bb.bf ], [ %i.adf, %bb.bh ], [ %.03138.i.i.i, %bb.bg ] ; 6 uses
  %indvars.iv.next.i27.i.i = add nuw nsw i64 %indvars.iv.i26.i.i, 1 ; 2 uses
  %exitcond.not.i28.i.i = icmp eq i64 %indvars.iv.next.i27.i.i, %wide.trip.count.i25.i.i
  br i1 %exitcond.not.i28.i.i, label %._crit_edge.i29.i.i, label %bb.bf, !llvm.loop !155

bb.bj:                                            ; preds = %._crit_edge.i29.i.i
  %i.adt = getelementptr inbounds nuw i8, ptr %.2.i.i54.i, i64 64
  %.val.i.i.i = load ptr, ptr %i.adt, align 8, !tbaa !27 ; 2 uses
  %i.adu = load ptr, ptr %.val.i.i.i, align 8, !tbaa !27 ; 2 uses
  store ptr %i.adu, ptr %.042.i.i.i, align 8, !tbaa !27
  store ptr %.val.i.i.i, ptr %i.acv, align 8, !tbaa !28
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 8
  store ptr %.042.i.i.i, ptr %i.adv, align 8, !tbaa !28
  %i.adw = load ptr, ptr %i.acv, align 8, !tbaa !28
  store ptr %.042.i.i.i, ptr %i.adw, align 8, !tbaa !27
  %i.adx = getelementptr inbounds nuw i8, ptr %.042.i.i.i, i64 16
  store ptr %.2.i.i54.i, ptr %i.adx, align 8, !tbaa !48
  %i.ady = getelementptr inbounds nuw i8, ptr %.2.i.i54.i, i64 60 ; 2 uses
  %i.adz = load float, ptr %i.ady, align 4, !tbaa !49
  %i.aea = fcmp ogt float %.234.i.i.i, %i.adz
  br i1 %i.aea, label %bb.bk, label %._crit_edge.thread.i.i.i

bb.bk:                                            ; preds = %bb.bj
  store float %.234.i.i.i, ptr %i.ady, align 4, !tbaa !49
  %i.aeb = getelementptr inbounds nuw i8, ptr %.2.i.i54.i, i64 112
  store ptr %.042.i.i.i, ptr %i.aeb, align 8, !tbaa !50
  br label %._crit_edge.thread.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %bb.bk, %bb.bj, %._crit_edge.i29.i.i, %.lr.ph44.i.i.i
  %.not.i22.i.i = icmp eq ptr %i.acw, %i.ap
  br i1 %.not.i22.i.i, label %b3HullBuilder_ResolveVertices.exit.i.i, label %.lr.ph44.i.i.i, !llvm.loop !156

b3HullBuilder_ResolveVertices.exit.i.i:           ; preds = %._crit_edge.thread.i.i.i, %b3HullBuilder_MergeFaces.exit.i.i
  %i.aec = phi i32 [ %i.act, %b3HullBuilder_MergeFaces.exit.i.i ], [ %i.acz, %._crit_edge.thread.i.i.i ]
  %i.aed = load ptr, ptr %i.au, align 8, !tbaa !206 ; 2 uses
  %.not30.i.i.i = icmp eq ptr %i.aed, %i.at
  br i1 %.not30.i.i.i, label %.preheader.i40.i.i, label %.lr.ph.i38.i.i

.preheader.i40.loopexit.i.i:                      ; preds = %b3QHList_Contains.exit.thread.i.i.i
  %.pre.i.i = load i32, ptr %i.ph, align 4, !tbaa !204
  br label %.preheader.i40.i.i

.preheader.i40.i.i:                               ; preds = %.preheader.i40.loopexit.i.i, %b3HullBuilder_ResolveVertices.exit.i.i
  %i.aee = phi i32 [ %.pre.i.i, %.preheader.i40.loopexit.i.i ], [ %i.aec, %b3HullBuilder_ResolveVertices.exit.i.i ] ; 4 uses
  %i.aef = icmp sgt i32 %i.aee, 0
  br i1 %i.aef, label %.lr.ph33.i.i.i, label %b3HullBuilder_AddVertexToHull.exit.i

.lr.ph33.i.i.i:                                   ; preds = %.preheader.i40.i.i
  %i.aeg = load ptr, ptr %i.bh, align 8, !tbaa !185 ; 3 uses
  %wide.trip.count.i42.i.i = zext nneg i32 %i.aee to i64 ; 2 uses
  %xtraiter639 = and i64 %wide.trip.count.i42.i.i, 1
  %i.aeh = icmp eq i32 %i.aee, 1
  br i1 %i.aeh, label %.epil.preheader638, label %.lr.ph33.i.i.i.new

.lr.ph33.i.i.i.new:                               ; preds = %.lr.ph33.i.i.i
  %unroll_iter642 = and i64 %wide.trip.count.i42.i.i, 2147483646
  br label %bb.bo

.lr.ph.i38.i.i:                                   ; preds = %b3HullBuilder_ResolveVertices.exit.i.i, %b3QHList_Contains.exit.thread.i.i.i
  %.02431.i.i.i = phi ptr [ %i.aej, %b3QHList_Contains.exit.thread.i.i.i ], [ %i.aed, %b3HullBuilder_ResolveVertices.exit.i.i ] ; 6 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %.02431.i.i.i, i64 8 ; 2 uses
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !28 ; 5 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %.02431.i.i.i, i64 24
  %i.ael = load i32, ptr %i.aek, align 8, !tbaa !51
  %i.aem = icmp eq i32 %i.ael, 1
  br i1 %i.aem, label %bb.bl, label %b3QHList_Contains.exit.thread.i.i.i

bb.bl:                                            ; preds = %.lr.ph.i38.i.i
  %i.aen = load ptr, ptr %.02431.i.i.i, align 8, !tbaa !27 ; 3 uses
  %.not.i.i47.i.i = icmp ne ptr %i.aen, null
  %i.aeo = icmp ne ptr %i.aej, null
  %or.cond.i.i53.i = select i1 %.not.i.i47.i.i, i1 %i.aeo, i1 false
  br i1 %or.cond.i.i53.i, label %bb.bm, label %b3QHList_Contains.exit.thread.i.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.aep = getelementptr inbounds nuw i8, ptr %.02431.i.i.i, i64 16
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !52 ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %i.pj, align 8, !tbaa !63
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %bb.bm
  %.02529.i.i.i = phi ptr [ %.promoted.i.i.i, %bb.bm ], [ %.025.i.i.i, %bb.bn ]
  %.025.i.i.i = phi ptr [ %i.aeq, %bb.bm ], [ %i.aes, %bb.bn ] ; 3 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %.025.i.i.i, i64 8 ; 2 uses
  %i.aes = load ptr, ptr %i.aer, align 8, !tbaa !55 ; 2 uses
  store ptr %.02529.i.i.i, ptr %i.aer, align 8, !tbaa !55
  %.not27.i.i.i = icmp eq ptr %i.aes, %i.aeq
  br i1 %.not27.i.i.i, label %b3HullBuilder_RetireFace.exit.i.i.i, label %bb.bn, !llvm.loop !157

b3HullBuilder_RetireFace.exit.i.i.i:              ; preds = %bb.bn
  store ptr %.025.i.i.i, ptr %i.pj, align 8, !tbaa !63
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aen, i64 8
  store ptr %i.aej, ptr %i.aet, align 8, !tbaa !28
  store ptr %i.aen, ptr %i.aej, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.02431.i.i.i, i8 0, i64 24, i1 false)
  %i.aeu = load ptr, ptr %i.pi, align 8, !tbaa !59
  store ptr %i.aeu, ptr %i.aei, align 8, !tbaa !60
  store ptr %.02431.i.i.i, ptr %i.pi, align 8, !tbaa !59
  br label %b3QHList_Contains.exit.thread.i.i.i

b3QHList_Contains.exit.thread.i.i.i:              ; preds = %b3HullBuilder_RetireFace.exit.i.i.i, %bb.bl, %.lr.ph.i38.i.i
  %.not.i39.i.i = icmp eq ptr %i.aej, %i.at
  br i1 %.not.i39.i.i, label %.preheader.i40.loopexit.i.i, label %.lr.ph.i38.i.i, !llvm.loop !158

bb.bo:                                            ; preds = %bb.bs, %.lr.ph33.i.i.i.new
  %indvars.iv.i43.i.i = phi i64 [ 0, %.lr.ph33.i.i.i.new ], [ %indvars.iv.next.i45.i.i.1, %bb.bs ] ; 3 uses
  %niter643 = phi i64 [ 0, %.lr.ph33.i.i.i.new ], [ %niter643.next.1, %bb.bs ]
  %i.aev = getelementptr inbounds nuw [8 x i8], ptr %i.aeg, i64 %indvars.iv.i43.i.i
  %i.aew = load ptr, ptr %i.aev, align 8, !tbaa !57 ; 5 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 24
  %i.aey = load i32, ptr %i.aex, align 8, !tbaa !51
  %i.aez = icmp eq i32 %i.aey, 1
  br i1 %i.aez, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.val.i44.i.i = load ptr, ptr %i.at, align 8, !tbaa !27 ; 2 uses
  %i.afa = load ptr, ptr %.val.i44.i.i, align 8, !tbaa !27 ; 2 uses
  store ptr %i.afa, ptr %i.aew, align 8, !tbaa !27
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aew, i64 8 ; 2 uses
  store ptr %.val.i44.i.i, ptr %i.afb, align 8, !tbaa !28
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afa, i64 8
  store ptr %i.aew, ptr %i.afc, align 8, !tbaa !28
  %i.afd = load ptr, ptr %i.afb, align 8, !tbaa !28
  store ptr %i.aew, ptr %i.afd, align 8, !tbaa !27
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.afe = getelementptr inbounds nuw [8 x i8], ptr %i.aeg, i64 %indvars.iv.i43.i.i
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 8
  %i.afg = load ptr, ptr %i.aff, align 8, !tbaa !57 ; 5 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 24
  %i.afi = load i32, ptr %i.afh, align 8, !tbaa !51
  %i.afj = icmp eq i32 %i.afi, 1
  br i1 %i.afj, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.val.i44.i.i.1 = load ptr, ptr %i.at, align 8, !tbaa !27 ; 2 uses
  %i.afk = load ptr, ptr %.val.i44.i.i.1, align 8, !tbaa !27 ; 2 uses
  store ptr %i.afk, ptr %i.afg, align 8, !tbaa !27
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afg, i64 8 ; 2 uses
  store ptr %.val.i44.i.i.1, ptr %i.afl, align 8, !tbaa !28
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afk, i64 8
  store ptr %i.afg, ptr %i.afm, align 8, !tbaa !28
  %i.afn = load ptr, ptr %i.afl, align 8, !tbaa !28
  store ptr %i.afg, ptr %i.afn, align 8, !tbaa !27
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %indvars.iv.next.i45.i.i.1 = add nuw nsw i64 %indvars.iv.i43.i.i, 2 ; 2 uses
  %niter643.next.1 = add i64 %niter643, 2         ; 2 uses
  %niter643.ncmp.1 = icmp eq i64 %niter643.next.1, %unroll_iter642
  br i1 %niter643.ncmp.1, label %b3HullBuilder_AddVertexToHull.exit.i.loopexit.unr-lcssa, label %bb.bo, !llvm.loop !159

b3HullBuilder_AddVertexToHull.exit.i.loopexit.unr-lcssa: ; preds = %bb.bs
  %lcmp.mod640.not = icmp eq i64 %xtraiter639, 0
  br i1 %lcmp.mod640.not, label %b3HullBuilder_AddVertexToHull.exit.i, label %.epil.preheader638

.epil.preheader638:                               ; preds = %b3HullBuilder_AddVertexToHull.exit.i.loopexit.unr-lcssa, %.lr.ph33.i.i.i
  %indvars.iv.i43.i.i.epil.init = phi i64 [ 0, %.lr.ph33.i.i.i ], [ %indvars.iv.next.i45.i.i.1, %b3HullBuilder_AddVertexToHull.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod641 = trunc i32 %i.aee to i1
  call void @llvm.assume(i1 %lcmp.mod641)
  %i.afo = getelementptr inbounds nuw [8 x i8], ptr %i.aeg, i64 %indvars.iv.i43.i.i.epil.init
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !57 ; 5 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 24
  %i.afr = load i32, ptr %i.afq, align 8, !tbaa !51
  %i.afs = icmp eq i32 %i.afr, 1
  br i1 %i.afs, label %b3HullBuilder_AddVertexToHull.exit.i, label %bb.bt

bb.bt:                                            ; preds = %.epil.preheader638
  %.val.i44.i.i.epil = load ptr, ptr %i.at, align 8, !tbaa !27 ; 2 uses
  %i.aft = load ptr, ptr %.val.i44.i.i.epil, align 8, !tbaa !27 ; 2 uses
  store ptr %i.aft, ptr %i.afp, align 8, !tbaa !27
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afp, i64 8 ; 2 uses
  store ptr %.val.i44.i.i.epil, ptr %i.afu, align 8, !tbaa !28
  %i.afv = getelementptr inbounds nuw i8, ptr %i.aft, i64 8
  store ptr %i.afp, ptr %i.afv, align 8, !tbaa !28
  %i.afw = load ptr, ptr %i.afu, align 8, !tbaa !28
  store ptr %i.afp, ptr %i.afw, align 8, !tbaa !27
  br label %b3HullBuilder_AddVertexToHull.exit.i

b3HullBuilder_AddVertexToHull.exit.i:             ; preds = %b3HullBuilder_AddVertexToHull.exit.i.loopexit.unr-lcssa, %bb.bt, %.epil.preheader638, %.preheader.i40.i.i
  %.018.i65.i = load ptr, ptr %i.au, align 8, !tbaa !28 ; 4 uses
  %.not19.i66.i = icmp eq ptr %.018.i65.i, %i.at
  br i1 %.not19.i66.i, label %._crit_edge.i, label %.lr.ph.preheader.i67.i

.lr.ph.preheader.i67.i:                           ; preds = %b3HullBuilder_AddVertexToHull.exit.i
  %i.afx = load float, ptr %i.di, align 8, !tbaa !44
  br label %.lr.ph.i68.i

.lr.ph.i68.i:                                     ; preds = %bb.bw, %.lr.ph.preheader.i67.i
  %.022.i69.i = phi ptr [ %.0.i75.i, %bb.bw ], [ %.018.i65.i, %.lr.ph.preheader.i67.i ] ; 3 uses
  %.01221.i70.i = phi float [ %.1.i74.i, %bb.bw ], [ %i.afx, %.lr.ph.preheader.i67.i ] ; 3 uses
  %.01320.i71.i = phi ptr [ %.114.i73.i, %bb.bw ], [ null, %.lr.ph.preheader.i67.i ] ; 2 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %.022.i69.i, i64 112
  %i.afz = load ptr, ptr %i.afy, align 8, !tbaa !50 ; 2 uses
  %.not17.i72.i = icmp eq ptr %i.afz, null
  br i1 %.not17.i72.i, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph.i68.i
  %i.aga = getelementptr inbounds nuw i8, ptr %.022.i69.i, i64 60
  %i.agb = load float, ptr %i.aga, align 4, !tbaa !49 ; 2 uses
  %i.agc = fcmp ogt float %i.agb, %.01221.i70.i
  br i1 %i.agc, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %.lr.ph.i68.i
  %.114.i73.i = phi ptr [ %i.afz, %bb.bv ], [ %.01320.i71.i, %bb.bu ], [ %.01320.i71.i, %.lr.ph.i68.i ] ; 3 uses
  %.1.i74.i = phi float [ %i.agb, %bb.bv ], [ %.01221.i70.i, %bb.bu ], [ %.01221.i70.i, %.lr.ph.i68.i ]
  %i.agd = getelementptr inbounds nuw i8, ptr %.022.i69.i, i64 8
  %.0.i75.i = load ptr, ptr %i.agd, align 8, !tbaa !28 ; 2 uses
  %.not.i76.i = icmp eq ptr %.0.i75.i, %i.at
  br i1 %.not.i76.i, label %b3HullBuilder_NextConflictVertex.exit79.i, label %.lr.ph.i68.i, !llvm.loop !142

b3HullBuilder_NextConflictVertex.exit79.i:        ; preds = %bb.bw
  %i.age = add nsw i32 %.038117.i, -1             ; 2 uses
  %i.agf = icmp ne ptr %.114.i73.i, null
  %i.agg = icmp ne i32 %i.age, 0
  %i.agh = select i1 %i.agf, i1 %i.agg, i1 false
  br i1 %i.agh, label %bb.ae, label %._crit_edge.i, !llvm.loop !160

._crit_edge.i:                                    ; preds = %b3HullBuilder_NextConflictVertex.exit79.i, %b3HullBuilder_AddVertexToHull.exit.i, %b3HullBuilder_NextConflictVertex.exit.i, %b3HullBuilder_BuildInitialHull.exit.i
  %.06992.i.i = phi ptr [ %.018.i.i, %b3HullBuilder_BuildInitialHull.exit.i ], [ %.018.i.i, %b3HullBuilder_NextConflictVertex.exit.i ], [ %.018.i65.i, %b3HullBuilder_AddVertexToHull.exit.i ], [ %.018.i65.i, %b3HullBuilder_NextConflictVertex.exit79.i ] ; 2 uses
  %.not93.i.i = icmp eq ptr %.06992.i.i, %i.at
  br i1 %.not93.i.i, label %._crit_edge.i83.i, label %.lr.ph.i80.i

._crit_edge.i83.i:                                ; preds = %bb.by, %._crit_edge.i
  %4 = phi i32 [ 0, %._crit_edge.i ], [ %i.agq, %bb.by ] ; 4 uses
  %5 = phi i32 [ 0, %._crit_edge.i ], [ %i.ahb, %bb.by ] ; 5 uses
  %i.agi = load ptr, ptr %i.as, align 8, !tbaa !207 ; 2 uses
  %.not7498.i.i = icmp eq ptr %i.agi, %i.ar
  br i1 %.not7498.i.i, label %b3HullBuilder_Construct.exit, label %.lr.ph102.i.i

.lr.ph.i80.i:                                     ; preds = %._crit_edge.i, %bb.by
  %.06996.i.i = phi ptr [ %.069.i.i, %bb.by ], [ %.06992.i.i, %._crit_edge.i ] ; 7 uses
  %.095.i.i = phi i32 [ %i.ahb, %bb.by ], [ 0, %._crit_edge.i ]
  %.06894.i.i = phi i32 [ %i.agq, %bb.by ], [ 0, %._crit_edge.i ]
  %i.agj = getelementptr inbounds nuw i8, ptr %.06996.i.i, i64 16
  %i.agk = load ptr, ptr %i.agj, align 8, !tbaa !52 ; 2 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bx, %.lr.ph.i80.i
  %.070.i.i = phi ptr [ %i.agk, %.lr.ph.i80.i ], [ %i.agp, %bb.bx ] ; 2 uses
  %.1.i81.i = phi i32 [ %.06894.i.i, %.lr.ph.i80.i ], [ %i.agq, %bb.bx ]
  %i.agl = getelementptr inbounds nuw i8, ptr %.070.i.i, i64 16
  %i.agm = load ptr, ptr %i.agl, align 8, !tbaa !58
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 40
  store i8 1, ptr %i.agn, align 8, !tbaa !195
  %i.ago = getelementptr inbounds nuw i8, ptr %.070.i.i, i64 8
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !55 ; 2 uses
  %i.agq = add nsw i32 %.1.i81.i, 1               ; 3 uses
  %.not75.i.i = icmp eq ptr %i.agp, %i.agk
  br i1 %.not75.i.i, label %bb.by, label %bb.bx, !llvm.loop !161

bb.by:                                            ; preds = %bb.bx
  %i.agr = getelementptr inbounds nuw i8, ptr %.06996.i.i, i64 32
  %.sroa.035.0.copyload.i.i = load <2 x float>, ptr %i.agr, align 8 ; 2 uses
  %.sroa.236.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.06996.i.i, i64 40
  %.sroa.236.0.copyload.i.i = load float, ptr %.sroa.236.0..sroa_idx.i.i, align 8
  %foldExtExtBinop606 = fmul <2 x float> %.sroa.0198.0.copyload, %.sroa.035.0.copyload.i.i
  %foldExtExtBinop608 = fmul <2 x float> %.sroa.0198.0.copyload, %.sroa.035.0.copyload.i.i
  %shift610 = shufflevector <2 x float> %foldExtExtBinop608, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop611 = fadd <2 x float> %foldExtExtBinop606, %shift610
  %i.ags = extractelement <2 x float> %foldExtExtBinop611, i64 0
  %i.agt = fmul float %.sroa.4199.0.copyload, %.sroa.236.0.copyload.i.i
  %i.agu = fadd float %i.agt, %i.ags
  %i.agv = getelementptr inbounds nuw i8, ptr %.06996.i.i, i64 44 ; 2 uses
  %i.agw = load float, ptr %i.agv, align 4, !tbaa !208
  %i.agx = fadd float %i.agw, %i.agu
  store float %i.agx, ptr %i.agv, align 4, !tbaa !208
  %i.agy = getelementptr inbounds nuw i8, ptr %.06996.i.i, i64 48 ; 2 uses
  %.sroa.029.0.copyload.i.i = load <2 x float>, ptr %i.agy, align 8
  %.sroa.230.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.06996.i.i, i64 56 ; 2 uses
  %.sroa.230.0.copyload.i.i = load float, ptr %.sroa.230.0..sroa_idx.i.i, align 8
  %i.agz = fadd <2 x float> %.sroa.0198.0.copyload, %.sroa.029.0.copyload.i.i
  %i.aha = fadd float %.sroa.4199.0.copyload, %.sroa.230.0.copyload.i.i
  store <2 x float> %i.agz, ptr %i.agy, align 8, !tbaa !23
  store float %i.aha, ptr %.sroa.230.0..sroa_idx.i.i, align 8, !tbaa !23
  %i.ahb = add nuw nsw i32 %.095.i.i, 1           ; 2 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %.06996.i.i, i64 8
  %.069.i.i = load ptr, ptr %i.ahc, align 8, !tbaa !28 ; 2 uses
  %.not.i82.i = icmp eq ptr %.069.i.i, %i.at
  br i1 %.not.i82.i, label %._crit_edge.i83.i, label %.lr.ph.i80.i, !llvm.loop !162

.lr.ph102.i.i:                                    ; preds = %._crit_edge.i83.i, %bb.cb
  %.071100.i.i = phi i32 [ %.172.i.i, %bb.cb ], [ 0, %._crit_edge.i83.i ] ; 2 uses
  %.07399.i.i = phi ptr [ %i.ahe, %bb.cb ], [ %i.agi, %._crit_edge.i83.i ] ; 6 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %.07399.i.i, i64 8
  %i.ahe = load ptr, ptr %i.ahd, align 8, !tbaa !28 ; 4 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %.07399.i.i, i64 40
  %i.ahg = load i8, ptr %i.ahf, align 8, !tbaa !195, !range !53, !noundef !54
  %i.ahh = trunc nuw i8 %i.ahg to i1
  br i1 %i.ahh, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph102.i.i
  %i.ahi = load ptr, ptr %.07399.i.i, align 8, !tbaa !27 ; 2 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 8
  store ptr %i.ahe, ptr %i.ahj, align 8, !tbaa !28
  store ptr %i.ahi, ptr %i.ahe, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.07399.i.i, i8 0, i64 16, i1 false)
  br label %bb.cb

bb.ca:                                            ; preds = %.lr.ph102.i.i
  %i.ahk = getelementptr inbounds nuw i8, ptr %.07399.i.i, i64 24 ; 2 uses
  %.sroa.012.0.copyload.i.i = load <2 x float>, ptr %i.ahk, align 8
  %.sroa.213.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.07399.i.i, i64 32 ; 2 uses
  %.sroa.213.0.copyload.i.i = load float, ptr %.sroa.213.0..sroa_idx.i.i, align 8
  %i.ahl = fadd <2 x float> %.sroa.0198.0.copyload, %.sroa.012.0.copyload.i.i
  %i.ahm = fadd float %.sroa.4199.0.copyload, %.sroa.213.0.copyload.i.i
  store <2 x float> %i.ahl, ptr %i.ahk, align 8, !tbaa !23
  store float %i.ahm, ptr %.sroa.213.0..sroa_idx.i.i, align 8, !tbaa !23
  %i.ahn = add nsw i32 %.071100.i.i, 1
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.172.i.i = phi i32 [ %i.ahn, %bb.ca ], [ %.071100.i.i, %bb.bz ] ; 2 uses
  %.not74.i.i = icmp eq ptr %i.ahe, %i.ar
  br i1 %.not74.i.i, label %b3HullBuilder_Construct.exit, label %.lr.ph102.i.i, !llvm.loop !163

b3HullBuilder_Construct.exit:                     ; preds = %bb.cb, %._crit_edge.i83.i
  %i.aho = phi i32 [ 0, %._crit_edge.i83.i ], [ %.172.i.i, %bb.cb ] ; 4 uses
  %.sroa.03.0.copyload.i.i = load <2 x float>, ptr %i.iw, align 4
  %.sroa.24.0.copyload.i.i = load float, ptr %.sroa.2112.0..sroa_idx.i.i, align 4
  %i.ahp = fadd <2 x float> %.sroa.0198.0.copyload, %.sroa.03.0.copyload.i.i
  %i.ahq = fadd float %.sroa.4199.0.copyload, %.sroa.24.0.copyload.i.i
  store <2 x float> %i.ahp, ptr %i.iw, align 4, !tbaa !23
  store float %i.ahq, ptr %.sroa.2112.0..sroa_idx.i.i, align 4, !tbaa !23
  %i.ahr = getelementptr inbounds nuw i8, ptr %3, i64 372
  store i32 %i.aho, ptr %i.ahr, align 4, !tbaa !209
  %i.ahs = getelementptr inbounds nuw i8, ptr %3, i64 376
  store i32 %4, ptr %i.ahs, align 8, !tbaa !210
  %i.aht = getelementptr inbounds nuw i8, ptr %3, i64 380
  store i32 %5, ptr %i.aht, align 4, !tbaa !211
  %.neg.i.i = sdiv i32 %4, -2
  %i.ahu = add i32 %5, %.neg.i.i
  %i.ahv = add i32 %i.ahu, %i.aho
  %i.ahw = icmp eq i32 %i.ahv, 2
  %i.ahx = icmp sgt i32 %5, 3
  %i.ahy = and i1 %i.ahx, %i.ahw
  br i1 %i.ahy, label %bb.cc, label %b3HullBuilder_Construct.exit.thread

b3HullBuilder_Construct.exit.thread:              ; preds = %b3FindFarthestPointFromPlane.exit.i.i, %b3FindFarthestPointsAlongCardinalAxes.exit.thread.i.i, %b3FindFarthestPointFromLine.exit.i.i, %b3FindFarthestPointsAlongCardinalAxes.exit.i.i, %b3HullBuilder_Construct.exit
  call void @b3Free(ptr noundef %i.ao, i64 noundef %i.an) #24
  br label %bb.cq

bb.cc:                                            ; preds = %b3HullBuilder_Construct.exit
  %i.ahz = icmp sgt i32 %i.aho, 128
  br i1 %i.ahz, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  call void (ptr, ...) @b3Log(ptr noundef nonnull @.str, i32 noundef %i.aho, i32 noundef 128) #24
  call void @b3Free(ptr noundef nonnull %i.ao, i64 noundef %i.an) #24
  br label %bb.cq

bb.ce:                                            ; preds = %bb.cc
  %i.aia = icmp samesign ugt i32 %5, 128
  br i1 %i.aia, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  call void (ptr, ...) @b3Log(ptr noundef nonnull @.str.1, i32 noundef %5, i32 noundef 128) #24
  call void @b3Free(ptr noundef nonnull %i.ao, i64 noundef %i.an) #24
  br label %bb.cq

bb.cg:                                            ; preds = %bb.ce
  %i.aib = icmp sgt i32 %4, 256
  br i1 %i.aib, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  call void (ptr, ...) @b3Log(ptr noundef nonnull @.str.2, i32 noundef %4, i32 noundef 256) #24
  call void @b3Free(ptr noundef nonnull %i.ao, i64 noundef %i.an) #24
  br label %bb.cq

bb.ci:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.aic = load ptr, ptr %i.as, align 8, !tbaa !207 ; 2 uses
  %.not281 = icmp eq ptr %i.aic, %i.ar
  br i1 %.not281, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.aid = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ci
  %.0219.lcssa = phi i32 [ 0, %bb.ci ], [ %i.aid, %._crit_edge.loopexit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  %i.aie = load ptr, ptr %i.au, align 8, !tbaa !206 ; 2 uses
  %.not225284 = icmp eq ptr %i.aie, %i.at
  br i1 %.not225284, label %._crit_edge290, label %.lr.ph289

.lr.ph:                                           ; preds = %bb.ci, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.ci ] ; 3 uses
  %.0218283 = phi ptr [ %i.aij, %.lr.ph ], [ %i.aic, %bb.ci ] ; 3 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %.0218283, i64 36
  %i.aig = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.aig, ptr %i.aif, align 4, !tbaa !194
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aih = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store ptr %.0218283, ptr %i.aih, align 8, !tbaa !212
  %i.aii = getelementptr inbounds nuw i8, ptr %.0218283, i64 8
  %i.aij = load ptr, ptr %i.aii, align 8, !tbaa !28 ; 2 uses
  %.not = icmp eq ptr %i.aij, %i.ar
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !164

._crit_edge290.loopexit:                          ; preds = %bb.cm
  %i.aik = trunc nuw i64 %indvars.iv.next331 to i32
  br label %._crit_edge290

._crit_edge290:                                   ; preds = %._crit_edge290.loopexit, %._crit_edge
  %.0217.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.aik, %._crit_edge290.loopexit ] ; 9 uses
  %.0214.lcssa = phi i32 [ 0, %._crit_edge ], [ %.2216, %._crit_edge290.loopexit ] ; 4 uses
  %i.ail = add i32 %.0219.lcssa, 3                ; 2 uses
  %i.aim = and i32 %i.ail, 2147483644             ; 3 uses
  %i.ain = add i32 %.0217.lcssa, 3                ; 2 uses
  %i.aio = and i32 %i.ain, 2147483644             ; 4 uses
  %narrow = add nuw i32 %.0219.lcssa, 7
  %i.aip = and i32 %narrow, -8
  %i.aiq = zext i32 %i.aip to i64
  %i.air = add nuw nsw i64 %i.aiq, 144            ; 3 uses
  %i.ais = trunc i64 %i.air to i32                ; 2 uses
  %i.ait = mul nuw nsw i32 %.0219.lcssa, 12
  %narrow253 = add nuw i32 %i.ait, 4
  %i.aiu = and i32 %narrow253, -8
  %i.aiv = zext i32 %i.aiu to i64
  %i.aiw = add nuw nsw i64 %i.air, %i.aiv         ; 3 uses
  %i.aix = trunc i64 %i.aiw to i32                ; 2 uses
  %i.aiy = shl nsw i32 %.0214.lcssa, 2
  %i.aiz = sext i32 %i.aiy to i64
  %i.aja = add nsw i64 %i.aiz, 4
  %i.ajb = and i64 %i.aja, -8
  %i.ajc = add nsw i64 %i.ajb, %i.aiw             ; 3 uses
  %i.ajd = trunc i64 %i.ajc to i32
  %i.aje = shl nuw nsw i32 %.0217.lcssa, 4
  %i.ajf = zext nneg i32 %i.aje to i64
  %i.ajg = add nsw i64 %i.ajc, %i.ajf             ; 3 uses
  %i.ajh = trunc i64 %i.ajg to i32
  %narrow254 = add nuw i32 %.0217.lcssa, 7
end_hunk_2
