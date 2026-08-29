Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_vorbis?download=true
inline.NumInlined: 339
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 46
begin_hunk_0_@compute_sorted_huffman:bb.a
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !25
  %i.bh = tail call noundef i32 @llvm.bitreverse.i32(i32 %i.bg)
  %i.bi = load i32, ptr %i.am, align 8, !tbaa !49 ; 2 uses
  %i.bj = icmp sgt i32 %i.bi, 1
  br i1 %i.bj, label %.lr.ph104, label %._crit_edge

.lr.ph104:                                        ; preds = %bb.f
  %i.bk = load ptr, ptr %i.ak, align 8, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph104, %bb.g
  %.0103 = phi i32 [ %i.bi, %.lr.ph104 ], [ %.1, %bb.g ] ; 2 uses
  %.059102 = phi i32 [ 0, %.lr.ph104 ], [ %.160, %bb.g ] ; 2 uses
  %i.bl = lshr i32 %.0103, 1                      ; 3 uses
  %i.bm = add nsw i32 %i.bl, %.059102             ; 2 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !25
  %.not71 = icmp ugt i32 %i.bp, %i.bh             ; 2 uses
  %i.bq = sub nuw nsw i32 %.0103, %i.bl
  %.160 = select i1 %.not71, i32 %.059102, i32 %i.bm ; 2 uses
  %.1 = select i1 %.not71, i32 %i.bl, i32 %i.bq   ; 2 uses
  %i.br = icmp samesign ugt i32 %.1, 1
  br i1 %i.br, label %bb.g, label %._crit_edge.loopexit, !llvm.loop !53

._crit_edge.loopexit:                             ; preds = %bb.g
  %i.bs = sext i32 %.160 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %.059.lcssa = phi i64 [ 0, %bb.f ], [ %i.bs, %._crit_edge.loopexit ] ; 3 uses
  br i1 %.not67, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv114
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !25
  %i.bv = load ptr, ptr %i.ay, align 8, !tbaa !54
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %.059.lcssa
  store i32 %i.bu, ptr %i.bw, align 4, !tbaa !25
  %i.bx = load ptr, ptr %i.az, align 8, !tbaa !36
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %.059.lcssa
  store i8 %.in688594, ptr %i.by, align 1, !tbaa !29
  br label %include_in_sort.exit75.thread

bb.i:                                             ; preds = %._crit_edge
  %i.bz = load ptr, ptr %i.ay, align 8, !tbaa !54
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %.059.lcssa
  %i.cb = trunc nuw nsw i64 %indvars.iv114 to i32
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !25
  br label %include_in_sort.exit75.thread

include_in_sort.exit75.thread:                    ; preds = %bb.e, %bb.h, %bb.i
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge108, label %bb.d, !llvm.loop !55

._crit_edge108:                                   ; preds = %include_in_sort.exit75.thread, %.loopexit
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @vorbis_validate(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = load i32, ptr %0, align 1
  %i.b = xor i32 %i.a, 1651666806
  %i.c = getelementptr i8, ptr %0, i64 4
  %i.d = load i16, ptr %i.c, align 1
  %i.e = zext i16 %i.d to i32
  %i.f = xor i32 %i.e, 29545
  %i.g = or i32 %i.b, %i.f
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  %i.k = zext i1 %i.j to i32
  ret i32 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define i32 @lookup1_values(i32 noundef %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = sitofp i32 %0 to float
  %i.b = fpext float %i.a to double
  %i.c = tail call double @log(double noundef %i.b) #30
  %i.d = fptrunc double %i.c to float
  %i.e = sitofp i32 %1 to float
  %i.f = fdiv float %i.d, %i.e
  %i.g = fpext float %i.f to double
  %i.h = tail call double @exp(double noundef %i.g) #30
  %i.i = tail call double @llvm.floor.f64(double %i.h)
  %i.j = fptosi double %i.i to i32                ; 2 uses
  %i.k = sitofp i32 %i.j to float
  %i.l = fadd float %i.k, 1.000000e+00
  %i.m = fpext float %i.l to double
  %i.n = sitofp i32 %1 to double                  ; 3 uses
  %i.o = tail call double @pow(double noundef %i.m, double noundef %i.n) #30
  %i.p = tail call double @llvm.floor.f64(double %i.o)
  %i.q = fptosi double %i.p to i32
  %.not = icmp sge i32 %0, %i.q
  %i.r = zext i1 %.not to i32
  %spec.select = add nsw i32 %i.r, %i.j           ; 2 uses
  %i.s = sitofp i32 %spec.select to float         ; 2 uses
  %i.t = fadd float %i.s, 1.000000e+00
  %i.u = fpext float %i.t to double
  %i.v = tail call double @pow(double noundef %i.u, double noundef %i.n) #30
  %i.w = sitofp i32 %0 to double
  %i.x = fcmp ugt double %i.v, %i.w
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = fpext float %i.s to double
  %i.z = tail call double @pow(double noundef %i.y, double noundef %i.n) #30
  %i.aa = tail call double @llvm.floor.f64(double %i.z)
  %i.ab = fptosi double %i.aa to i32
  %i.ac = icmp slt i32 %0, %i.ab
  %.spec.select = select i1 %i.ac, i32 -1, i32 %spec.select
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.014 = phi i32 [ -1, %bb.a ], [ %.spec.select, %bb.b ]
  ret i32 %.014
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write, errnomem: write) uwtable
define void @compute_twiddle_factors(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #19 {
bb.a:
  %i.a = ashr i32 %0, 2                           ; 2 uses
  %i.b = ashr i32 %0, 3                           ; 2 uses
  %i.c = icmp sgt i32 %i.a, 0
  br i1 %i.c, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.d = uitofp nneg i32 %0 to double
  %i.e = insertelement <2 x double> poison, double %i.d, i64 0
  %i.f = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.b

.preheader:                                       ; preds = %bb.b, %bb.a
  %i.g = icmp sgt i32 %i.b, 0
  br i1 %i.g, label %.lr.ph39, label %._crit_edge

.lr.ph39:                                         ; preds = %.preheader
  %i.h = uitofp nneg i32 %0 to double
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %.03335 = phi i32 [ 0, %.lr.ph ], [ %i.ai, %bb.b ] ; 2 uses
  %i.i = shl nuw nsw i32 %.03335, 2
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.k = or disjoint i64 %indvars.iv, 1           ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.k
  %i.m = trunc nuw nsw i64 %i.k to i32
  %i.n = uitofp nneg i32 %i.i to double
  %i.o = uitofp nneg i32 %i.m to double
  %i.p = insertelement <2 x double> poison, double %i.o, i64 0
  %i.q = insertelement <2 x double> %i.p, double %i.n, i64 1
  %i.r = fmul nnan <2 x double> %i.q, splat (double f0x400921FB54442D18)
  %i.s = fdiv <2 x double> %i.r, %i.f             ; 2 uses
  %i.t = extractelement <2 x double> %i.s, i64 1  ; 2 uses
  %i.u = tail call double @cos(double noundef %i.t) #30
  %i.v = fptrunc double %i.u to float
  store float %i.v, ptr %i.j, align 4, !tbaa !56
  %i.w = tail call double @sin(double noundef %i.t) #30
  %i.x = fptrunc double %i.w to float
  %i.y = fneg float %i.x
  store float %i.y, ptr %i.l, align 4, !tbaa !56
  %i.z = extractelement <2 x double> %i.s, i64 0
  %i.aa = fmul double %i.z, 5.000000e-01          ; 2 uses
  %i.ab = tail call double @cos(double noundef %i.aa) #30
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ad = tail call double @sin(double noundef %i.aa) #30
  %i.ae = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.ad, i64 1
  %i.ag = fptrunc <2 x double> %i.af to <2 x float>
  %i.ah = fmul <2 x float> %i.ag, splat (float 5.000000e-01)
  store <2 x float> %i.ah, ptr %i.ac, align 4, !tbaa !56
  %i.ai = add nuw nsw i32 %.03335, 1              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not = icmp eq i32 %i.ai, %i.a
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !57

bb.c:                                             ; preds = %.lr.ph39, %bb.c
  %indvars.iv41 = phi i64 [ 0, %.lr.ph39 ], [ %indvars.iv.next42, %bb.c ] ; 3 uses
  %.13437 = phi i32 [ 0, %.lr.ph39 ], [ %i.av, %bb.c ]
  %i.aj = or disjoint i64 %indvars.iv41, 1        ; 2 uses
  %.tr = trunc nuw nsw i64 %i.aj to i32
  %i.ak = shl nuw nsw i32 %.tr, 1
  %i.al = uitofp nneg i32 %i.ak to double
  %i.am = fmul nnan double %i.al, f0x400921FB54442D18
  %i.an = fdiv double %i.am, %i.h                 ; 2 uses
  %i.ao = tail call double @cos(double noundef %i.an) #30
  %i.ap = fptrunc double %i.ao to float
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv41
  store float %i.ap, ptr %i.aq, align 4, !tbaa !56
  %i.ar = tail call double @sin(double noundef %i.an) #30
  %i.as = fptrunc double %i.ar to float
  %i.at = fneg float %i.as
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aj
  store float %i.at, ptr %i.au, align 4, !tbaa !56
  %i.av = add nuw nsw i32 %.13437, 1              ; 2 uses
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 2
  %exitcond44.not = icmp eq i32 %i.av, %i.b
  br i1 %exitcond44.not, label %._crit_edge, label %bb.c, !llvm.loop !58

._crit_edge:                                      ; preds = %bb.c, %.preheader
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write, errnomem: write) uwtable
define void @compute_window(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #19 {
bb.a:
  %i.a = ashr i32 %0, 1                           ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = uitofp nneg i32 %i.a to double
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.d = trunc nuw nsw i64 %indvars.iv to i32
  %i.e = uitofp nneg i32 %i.d to double
  %i.f = fadd nnan double %i.e, 5.000000e-01
  %i.g = fdiv nnan double %i.f, %i.c
  %i.h = fmul nnan double %i.g, 5.000000e-01
  %i.i = fmul nnan double %i.h, f0x400921FB54442D18
  %i.j = tail call double @sin(double noundef %i.i) #30
  %i.k = fptrunc double %i.j to float             ; 2 uses
  %i.l = fmul float %i.k, %i.k
  %i.m = fpext float %i.l to double
  %i.n = fmul double %i.m, f0x3FF921FB54442D18
  %i.o = tail call double @sin(double noundef %i.n) #30
  %i.p = fptrunc double %i.o to float
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.p, ptr %i.q, align 4, !tbaa !56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !59

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @compute_bitreverse(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %ilog.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 16384
  br i1 %i.b, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.c = icmp samesign ult i32 %0, 16
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = zext nneg i32 %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !29
  %i.g = sext i8 %i.f to i32
  br label %ilog.exit

bb.e:                                             ; preds = %bb.c
  %i.h = icmp samesign ult i32 %0, 512
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = lshr i32 %0, 5
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !29
  %i.m = sext i8 %i.l to i32
  %i.n = add nsw i32 %i.m, 5
  br label %ilog.exit

bb.g:                                             ; preds = %bb.e
  %i.o = lshr i32 %0, 10
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !29
  %i.s = sext i8 %i.r to i32
  %i.t = add nsw i32 %i.s, 10
  br label %ilog.exit

bb.h:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %0, 16777216
  br i1 %i.u, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.v = icmp samesign ult i32 %0, 524288
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = lshr i32 %0, 15
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !29
  %i.aa = sext i8 %i.z to i32
  %i.ab = add nsw i32 %i.aa, 15
  br label %ilog.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = lshr i32 %0, 20
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !29
  %i.ag = sext i8 %i.af to i32
  %i.ah = add nsw i32 %i.ag, 20
  br label %ilog.exit

bb.l:                                             ; preds = %bb.h
  %i.ai = icmp samesign ult i32 %0, 536870912
  br i1 %i.ai, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aj = lshr i32 %0, 25
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !29
  %i.an = sext i8 %i.am to i32
  %i.ao = add nsw i32 %i.an, 25
  br label %ilog.exit

bb.n:                                             ; preds = %bb.l
  %i.ap = lshr i32 %0, 30
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !29
  %i.at = sext i8 %i.as to i32
  %i.au = add nsw i32 %i.at, 30
  br label %ilog.exit

ilog.exit:                                        ; preds = %bb.a, %bb.d, %bb.f, %bb.g, %bb.j, %bb.k, %bb.m, %bb.n
  %.0.i = phi i32 [ %i.au, %bb.n ], [ %i.g, %bb.d ], [ %i.n, %bb.f ], [ %i.t, %bb.g ], [ %i.ab, %bb.j ], [ %i.ah, %bb.k ], [ %i.ao, %bb.m ], [ 0, %bb.a ]
  %i.av = ashr i32 %0, 3                          ; 3 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %ilog.exit
  %i.ax = sub nsw i32 36, %.0.i                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.av to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.av, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ax, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ay = tail call <8 x i32> @llvm.bitreverse.v8i32(<8 x i32> %vec.ind)
  %i.az = lshr <8 x i32> %i.ay, %broadcast.splat
  %i.ba = trunc <8 x i32> %i.az to <8 x i16>
  %i.bb = shl <8 x i16> %i.ba, splat (i16 2)
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  store <8 x i16> %i.bb, ptr %i.bc, align 2, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.be = trunc nuw nsw i64 %indvars.iv to i32
  %i.bf = tail call noundef i32 @llvm.bitreverse.i32(i32 %i.be)
  %i.bg = lshr i32 %i.bf, %i.ax
end_hunk_0
begin_hunk_1_@compute_bitreverse:bb.a
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.bh, ptr %i.bi, align 2, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !61

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %ilog.exit
  ret void
}

; Function Attrs: nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @init_blocksize(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #20 {
bb.a:
  %i.a = shl i32 %2, 1
  %i.b = add nsw i32 %i.a, 4
  %i.c = and i32 %i.b, -8                         ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !14
  %i.f = add i32 %i.e, %i.c                       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22   ; 6 uses
  %.not.i = icmp eq ptr %i.h, null                ; 3 uses
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !23   ; 3 uses
  %i.k = add nsw i32 %i.j, %i.c                   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.m = load i32, ptr %i.l, align 4, !tbaa !24   ; 3 uses
  %i.n = icmp sgt i32 %i.k, %i.m
  br i1 %i.n, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = sext i32 %i.j to i64
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %i.o
  store i32 %i.k, ptr %i.i, align 8, !tbaa !23
  %.pre = add nsw i32 %i.k, %i.c
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %.not17.i = icmp eq i32 %i.c, 0
  br i1 %.not17.i, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.r = sext i32 %1 to i64                       ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.r ; 2 uses
  store ptr null, ptr %i.s, align 8, !tbaa !62
  br label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.b
  %.pre-phi = phi i32 [ %.pre, %bb.c ], [ %i.k, %bb.b ] ; 3 uses
  %i.t = phi i32 [ %i.k, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  %.1.i = phi ptr [ %i.p, %bb.c ], [ null, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.v = sext i32 %1 to i64                       ; 4 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.v ; 3 uses
  store ptr %.1.i, ptr %i.w, align 8, !tbaa !62
  %i.x = add i32 %i.f, %i.c
  %i.y = icmp sgt i32 %.pre-phi, %i.m
  br i1 %i.y, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = sext i32 %i.t to i64
  %i.aa = getelementptr inbounds i8, ptr %i.h, i64 %i.z
  store i32 %.pre-phi, ptr %i.i, align 8, !tbaa !23
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ab = sext i32 %i.c to i64                    ; 2 uses
  %i.ac = tail call noalias ptr @malloc(i64 noundef %i.ab) #29
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.ae = sext i32 %1 to i64                      ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ae ; 2 uses
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !62
  %i.ag = add i32 %i.f, %i.c
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.ab) #29
  br label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.ai = phi i32 [ %i.t, %bb.e ], [ %.pre-phi, %bb.f ] ; 2 uses
  %.1.i59 = phi ptr [ null, %bb.e ], [ %i.aa, %bb.f ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.v
  store ptr %.1.i59, ptr %i.ak, align 8, !tbaa !62
  %i.al = add nsw i32 %2, 4
  %i.am = and i32 %i.al, -8                       ; 2 uses
  %i.an = add i32 %i.x, %i.am                     ; 3 uses
  store i32 %i.an, ptr %i.d, align 8, !tbaa !14
  %i.ao = add nsw i32 %i.ai, %i.am                ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, %i.m
  br i1 %i.ap, label %setup_malloc.exit65, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = sext i32 %i.ai to i64
  %i.ar = getelementptr inbounds i8, ptr %i.h, i64 %i.aq
  store i32 %i.ao, ptr %i.i, align 8, !tbaa !23
  br label %setup_malloc.exit65

bb.j:                                             ; preds = %.thread, %bb.g
  %.sink = phi i32 [ %i.f, %.thread ], [ %i.ag, %bb.g ]
  %.ph87 = phi ptr [ %i.s, %.thread ], [ %i.af, %bb.g ] ; 2 uses
  %.ph88 = phi i64 [ %i.r, %.thread ], [ %i.ae, %bb.g ] ; 3 uses
  %.1.i59.ph = phi ptr [ null, %.thread ], [ %i.ah, %bb.g ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.at = getelementptr inbounds [8 x i8], ptr %i.as, i64 %.ph88
  store ptr %.1.i59.ph, ptr %i.at, align 8, !tbaa !62
  %i.au = add nsw i32 %2, 4
  %i.av = and i32 %i.au, -8                       ; 3 uses
  %i.aw = add i32 %.sink, %i.av                   ; 3 uses
  store i32 %i.aw, ptr %i.d, align 8, !tbaa !14
  %.not17.i64 = icmp eq i32 %i.av, 0
  br i1 %.not17.i64, label %setup_malloc.exit65, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = sext i32 %i.av to i64
  %i.ay = tail call noalias ptr @malloc(i64 noundef %i.ax) #29
  br label %setup_malloc.exit65

setup_malloc.exit65:                              ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %i.az = phi i32 [ %i.an, %bb.h ], [ %i.an, %bb.i ], [ %i.aw, %bb.k ], [ %i.aw, %bb.j ]
  %.1.i5990 = phi ptr [ %.1.i59, %bb.h ], [ %.1.i59, %bb.i ], [ %.1.i59.ph, %bb.k ], [ %.1.i59.ph, %bb.j ] ; 2 uses
  %i.ba = phi i64 [ %i.v, %bb.h ], [ %i.v, %bb.i ], [ %.ph88, %bb.k ], [ %.ph88, %bb.j ] ; 4 uses
  %i.bb = phi ptr [ %i.w, %bb.h ], [ %i.w, %bb.i ], [ %.ph87, %bb.k ], [ %.ph87, %bb.j ]
  %.1.i63 = phi ptr [ null, %bb.h ], [ %i.ar, %bb.i ], [ %i.ay, %bb.k ], [ null, %bb.j ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.ba
  store ptr %.1.i63, ptr %i.bd, align 8, !tbaa !62
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !62 ; 3 uses
  %.not = icmp eq ptr %i.be, null
  br i1 %.not, label %compute_bitreverse.exit.sink.split, label %bb.l

bb.l:                                             ; preds = %setup_malloc.exit65
  %.not54 = icmp eq ptr %.1.i5990, null
  %.not55 = icmp eq ptr %.1.i63, null
  %or.cond = select i1 %.not54, i1 true, i1 %.not55
  br i1 %or.cond, label %compute_bitreverse.exit.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = ashr i32 %2, 2                          ; 3 uses
  %i.bg = ashr i32 %2, 3                          ; 4 uses
  %i.bh = icmp sgt i32 %i.bf, 0
  br i1 %i.bh, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.m
  %i.bi = uitofp nneg i32 %2 to double
  %i.bj = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bk = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.n

.preheader.i:                                     ; preds = %bb.n, %bb.m
  %i.bl = icmp sgt i32 %i.bg, 0                   ; 2 uses
  br i1 %i.bl, label %.lr.ph39.i, label %compute_twiddle_factors.exit

.lr.ph39.i:                                       ; preds = %.preheader.i
  %i.bm = uitofp nneg i32 %2 to double
  br label %bb.o

bb.n:                                             ; preds = %bb.n, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.n ] ; 4 uses
  %.03335.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cn, %bb.n ] ; 2 uses
  %i.bn = shl nuw nsw i32 %.03335.i, 2
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i
  %i.bp = or disjoint i64 %indvars.iv.i, 1        ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bp
  %i.br = trunc nuw nsw i64 %i.bp to i32
  %i.bs = uitofp nneg i32 %i.bn to double
  %i.bt = uitofp nneg i32 %i.br to double
  %i.bu = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bv = insertelement <2 x double> %i.bu, double %i.bs, i64 1
  %i.bw = fmul nnan <2 x double> %i.bv, splat (double f0x400921FB54442D18)
  %i.bx = fdiv <2 x double> %i.bw, %i.bk          ; 2 uses
  %i.by = extractelement <2 x double> %i.bx, i64 1 ; 2 uses
  %i.bz = tail call double @cos(double noundef %i.by) #30
  %i.ca = fptrunc double %i.bz to float
  store float %i.ca, ptr %i.bo, align 4, !tbaa !56
  %i.cb = tail call double @sin(double noundef %i.by) #30
  %i.cc = fptrunc double %i.cb to float
  %i.cd = fneg float %i.cc
  store float %i.cd, ptr %i.bq, align 4, !tbaa !56
  %i.ce = extractelement <2 x double> %i.bx, i64 0
  %i.cf = fmul double %i.ce, 5.000000e-01         ; 2 uses
  %i.cg = tail call double @cos(double noundef %i.cf) #30
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.1.i5990, i64 %indvars.iv.i
  %i.ci = tail call double @sin(double noundef %i.cf) #30
  %i.cj = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.ck = insertelement <2 x double> %i.cj, double %i.ci, i64 1
  %i.cl = fptrunc <2 x double> %i.ck to <2 x float>
  %i.cm = fmul <2 x float> %i.cl, splat (float 5.000000e-01)
  store <2 x float> %i.cm, ptr %i.ch, align 4, !tbaa !56
  %i.cn = add nuw nsw i32 %.03335.i, 1            ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2
  %exitcond.not.i = icmp eq i32 %i.cn, %i.bf
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.n, !llvm.loop !57

bb.o:                                             ; preds = %bb.o, %.lr.ph39.i
  %indvars.iv41.i = phi i64 [ 0, %.lr.ph39.i ], [ %indvars.iv.next42.i, %bb.o ] ; 3 uses
  %.13437.i = phi i32 [ 0, %.lr.ph39.i ], [ %i.da, %bb.o ]
  %i.co = or disjoint i64 %indvars.iv41.i, 1      ; 2 uses
  %.tr.i = trunc nuw nsw i64 %i.co to i32
  %i.cp = shl nuw nsw i32 %.tr.i, 1
  %i.cq = uitofp nneg i32 %i.cp to double
  %i.cr = fmul nnan double %i.cq, f0x400921FB54442D18
  %i.cs = fdiv double %i.cr, %i.bm                ; 2 uses
  %i.ct = tail call double @cos(double noundef %i.cs) #30
  %i.cu = fptrunc double %i.ct to float
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.1.i63, i64 %indvars.iv41.i
  store float %i.cu, ptr %i.cv, align 4, !tbaa !56
  %i.cw = tail call double @sin(double noundef %i.cs) #30
  %i.cx = fptrunc double %i.cw to float
  %i.cy = fneg float %i.cx
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.1.i63, i64 %i.co
  store float %i.cy, ptr %i.cz, align 4, !tbaa !56
  %i.da = add nuw nsw i32 %.13437.i, 1            ; 2 uses
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 2
  %exitcond44.not.i = icmp eq i32 %i.da, %i.bg
  br i1 %exitcond44.not.i, label %compute_twiddle_factors.exit, label %bb.o, !llvm.loop !58

compute_twiddle_factors.exit:                     ; preds = %bb.o, %.preheader.i
  %i.db = add i32 %i.az, %i.c                     ; 2 uses
  store i32 %i.db, ptr %i.d, align 8, !tbaa !14
  br i1 %.not.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %compute_twiddle_factors.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !23 ; 2 uses
  %i.de = add nsw i32 %i.dd, %i.c                 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !24
  %i.dh = icmp sgt i32 %i.de, %i.dg
  br i1 %i.dh, label %compute_bitreverse.exit.sink.split.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.di = sext i32 %i.dd to i64
  %i.dj = getelementptr inbounds i8, ptr %i.h, i64 %i.di
  store i32 %i.de, ptr %i.dc, align 8, !tbaa !23
  br label %setup_malloc.exit69

bb.r:                                             ; preds = %compute_twiddle_factors.exit
  %.not17.i68 = icmp eq i32 %i.c, 0
  br i1 %.not17.i68, label %compute_bitreverse.exit.sink.split.sink.split, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dk = sext i32 %i.c to i64
  %i.dl = tail call noalias ptr @malloc(i64 noundef %i.dk) #29
  br label %setup_malloc.exit69

setup_malloc.exit69:                              ; preds = %bb.q, %bb.s
  %.1.i67 = phi ptr [ %i.dl, %bb.s ], [ %i.dj, %bb.q ] ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.ba
  store ptr %.1.i67, ptr %i.dn, align 8, !tbaa !62
  %.not56 = icmp eq ptr %.1.i67, null
  br i1 %.not56, label %compute_bitreverse.exit.sink.split, label %bb.t

bb.t:                                             ; preds = %setup_malloc.exit69
  %i.do = ashr i32 %2, 1                          ; 3 uses
  %i.dp = icmp sgt i32 %i.do, 0
  br i1 %i.dp, label %.lr.ph.i70, label %compute_window.exit

.lr.ph.i70:                                       ; preds = %bb.t
  %i.dq = uitofp nneg i32 %i.do to double
  %wide.trip.count.i = zext nneg i32 %i.do to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i70
  %indvars.iv.i71 = phi i64 [ 0, %.lr.ph.i70 ], [ %indvars.iv.next.i72, %bb.u ] ; 3 uses
  %i.dr = trunc nuw nsw i64 %indvars.iv.i71 to i32
  %i.ds = uitofp nneg i32 %i.dr to double
  %i.dt = fadd nnan double %i.ds, 5.000000e-01
  %i.du = fdiv nnan double %i.dt, %i.dq
  %i.dv = fmul nnan double %i.du, 5.000000e-01
  %i.dw = fmul nnan double %i.dv, f0x400921FB54442D18
  %i.dx = tail call double @sin(double noundef %i.dw) #30
  %i.dy = fptrunc double %i.dx to float           ; 2 uses
  %i.dz = fmul float %i.dy, %i.dy
  %i.ea = fpext float %i.dz to double
  %i.eb = fmul double %i.ea, f0x3FF921FB54442D18
  %i.ec = tail call double @sin(double noundef %i.eb) #30
  %i.ed = fptrunc double %i.ec to float
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.1.i67, i64 %indvars.iv.i71
  store float %i.ed, ptr %i.ee, align 4, !tbaa !56
  %indvars.iv.next.i72 = add nuw nsw i64 %indvars.iv.i71, 1 ; 2 uses
  %exitcond.not.i73 = icmp eq i64 %indvars.iv.next.i72, %wide.trip.count.i
  br i1 %exitcond.not.i73, label %compute_window.exit, label %bb.u, !llvm.loop !59

compute_window.exit:                              ; preds = %bb.u, %bb.t
  %i.ef = add nsw i32 %i.bf, 6
  %i.eg = and i32 %i.ef, -8                       ; 4 uses
  %i.eh = add i32 %i.db, %i.eg
  store i32 %i.eh, ptr %i.d, align 8, !tbaa !14
  br i1 %.not.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %compute_window.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !23 ; 2 uses
  %i.ek = add nsw i32 %i.ej, %i.eg                ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.em = load i32, ptr %i.el, align 4, !tbaa !24
  %i.en = icmp sgt i32 %i.ek, %i.em
  br i1 %i.en, label %compute_bitreverse.exit.sink.split.sink.split, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eo = sext i32 %i.ej to i64
  %i.ep = getelementptr inbounds i8, ptr %i.h, i64 %i.eo
  store i32 %i.ek, ptr %i.ei, align 8, !tbaa !23
  br label %setup_malloc.exit77

bb.x:                                             ; preds = %compute_window.exit
  %.not17.i76 = icmp eq i32 %i.eg, 0
  br i1 %.not17.i76, label %compute_bitreverse.exit.sink.split.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eq = sext i32 %i.eg to i64
  %i.er = tail call noalias ptr @malloc(i64 noundef %i.eq) #29
  br label %setup_malloc.exit77

setup_malloc.exit77:                              ; preds = %bb.w, %bb.y
  %.1.i75 = phi ptr [ %i.er, %bb.y ], [ %i.ep, %bb.w ] ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.et = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.ba
  store ptr %.1.i75, ptr %i.et, align 8, !tbaa !63
  %.not57 = icmp eq ptr %.1.i75, null
  br i1 %.not57, label %compute_bitreverse.exit.sink.split, label %bb.z

bb.z:                                             ; preds = %setup_malloc.exit77
  %i.eu = icmp slt i32 %2, 0
  br i1 %i.eu, label %ilog.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ev = icmp samesign ult i32 %2, 16384
  br i1 %i.ev, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.ew = icmp samesign ult i32 %2, 16
  br i1 %i.ew, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ex = zext nneg i32 %2 to i64
  %i.ey = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !29
  %i.fa = sext i8 %i.ez to i32
  br label %ilog.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.fb = icmp samesign ult i32 %2, 512
  br i1 %i.fb, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fc = lshr i32 %2, 5
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !29
  %i.fg = sext i8 %i.ff to i32
  %i.fh = add nsw i32 %i.fg, 5
  br label %ilog.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.fi = lshr i32 %2, 10
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !29
  %i.fm = sext i8 %i.fl to i32
  %i.fn = add nsw i32 %i.fm, 10
  br label %ilog.exit.i

bb.ag:                                            ; preds = %bb.aa
  %i.fo = icmp samesign ult i32 %2, 16777216
  br i1 %i.fo, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.fp = icmp samesign ult i32 %2, 524288
  br i1 %i.fp, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fq = lshr i32 %2, 15
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !29
  %i.fu = sext i8 %i.ft to i32
  %i.fv = add nsw i32 %i.fu, 15
  br label %ilog.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.fw = lshr i32 %2, 20
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !29
  %i.ga = sext i8 %i.fz to i32
  %i.gb = add nsw i32 %i.ga, 20
  br label %ilog.exit.i

bb.ak:                                            ; preds = %bb.ag
  %i.gc = icmp samesign ult i32 %2, 536870912
  br i1 %i.gc, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gd = lshr i32 %2, 25
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !29
end_hunk_1
begin_hunk_2_@compute_stereo_samples:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv103
  %i.v = load i8, ptr %i.u, align 1, !tbaa !29
  %i.w = and i8 %i.v, 6
  switch i8 %i.w, label %.unreachabledefault86 [
    i8 6, label %.preheader.us
    i8 2, label %.preheader67.us
    i8 4, label %.preheader69.us
    i8 0, label %.loopexit.us
  ]

scalar.ph162:                                     ; preds = %scalar.ph162.preheader, %scalar.ph162
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %scalar.ph162 ], [ %indvars.iv94.ph, %scalar.ph162.preheader ] ; 3 uses
  %i.x = getelementptr [4 x i8], ptr %i.bd, i64 %indvars.iv94
  %i.y = load float, ptr %i.x, align 4, !tbaa !56
  %.idx = shl nuw nsw i64 %indvars.iv94, 3
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !56
  %i.ac = fadd float %i.y, %i.ab
  store float %i.ac, ptr %i.aa, align 4, !tbaa !56
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %i.ad = icmp samesign ult i64 %indvars.iv.next95, %i.n
  br i1 %i.ad, label %scalar.ph162, label %.loopexit.us, !llvm.loop !428

scalar.ph150:                                     ; preds = %scalar.ph150.preheader, %scalar.ph150
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %scalar.ph150 ], [ %indvars.iv97.ph, %scalar.ph150.preheader ] ; 3 uses
  %i.ae = getelementptr [4 x i8], ptr %i.bz, i64 %indvars.iv97
  %i.af = load float, ptr %i.ae, align 4, !tbaa !56
  %.idx115 = shl nuw nsw i64 %indvars.iv97, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx115 ; 2 uses
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !56
  %i.ai = fadd float %i.af, %i.ah
  store float %i.ai, ptr %i.ag, align 8, !tbaa !56
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %i.aj = icmp samesign ult i64 %indvars.iv.next98, %i.n
  br i1 %i.aj, label %scalar.ph150, label %.loopexit.us, !llvm.loop !429

scalar.ph138:                                     ; preds = %scalar.ph138.preheader, %scalar.ph138
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %scalar.ph138 ], [ %indvars.iv100.ph, %scalar.ph138.preheader ] ; 3 uses
  %i.ak = getelementptr [4 x i8], ptr %i.cu, i64 %indvars.iv100
  %i.al = load float, ptr %i.ak, align 4, !tbaa !56
  %.idx116 = shl nuw nsw i64 %indvars.iv100, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx116 ; 2 uses
  %i.an = load <2 x float>, ptr %i.am, align 8, !tbaa !56
  %i.ao = insertelement <2 x float> poison, float %i.al, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fadd <2 x float> %i.ap, %i.an
  store <2 x float> %i.aq, ptr %i.am, align 8, !tbaa !56
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %i.ar = icmp samesign ult i64 %indvars.iv.next101, %i.n
  br i1 %i.ar, label %scalar.ph138, label %.loopexit.us, !llvm.loop !430

.loopexit.us:                                     ; preds = %scalar.ph162, %scalar.ph150, %scalar.ph138, %middle.block147, %.preheader69.us, %.preheader67.us, %.preheader.us, %bb.b
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count
  br i1 %exitcond.not, label %..preheader71_crit_edge.us, label %bb.b, !llvm.loop !431

.lr.ph80.us:                                      ; preds = %.lr.ph80.us.preheader176, %.lr.ph80.us
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %.lr.ph80.us ], [ %indvars.iv106.ph, %.lr.ph80.us.preheader176 ] ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv106
  %i.at = load float, ptr %i.as, align 4, !tbaa !56
  %i.au = fadd float %i.at, 3.840000e+02
  %i.av = bitcast float %i.au to i32
  %i.aw = tail call i32 @llvm.smax.i32(i32 %i.av, i32 1136623616)
  %i.ax = tail call i32 @llvm.umin.i32(i32 %i.aw, i32 1136689151)
  %i.ay = trunc i32 %i.ax to i16
  %gep121 = getelementptr [2 x i8], ptr %invariant.gep120, i64 %indvars.iv106
  store i16 %i.ay, ptr %gep121, align 2, !tbaa !44
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %i.az = icmp samesign ult i64 %indvars.iv.next107, %i.de
  br i1 %i.az, label %.lr.ph80.us, label %._crit_edge.us, !llvm.loop !432

._crit_edge.us:                                   ; preds = %.lr.ph80.us, %middle.block135, %..preheader71_crit_edge.us
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 16 ; 2 uses
  %i.ba = icmp samesign ult i64 %indvars.iv.next110, %i.f
  br i1 %i.ba, label %.lr.ph78.us, label %._crit_edge85, !llvm.loop !433

.preheader.us:                                    ; preds = %bb.b
  br i1 %i.l, label %.lr.ph76.us, label %.loopexit.us

.preheader67.us:                                  ; preds = %bb.b
  br i1 %i.l, label %.lr.ph74.us, label %.loopexit.us

.preheader69.us:                                  ; preds = %bb.b
  br i1 %i.l, label %.lr.ph.us, label %.loopexit.us

.lr.ph.us:                                        ; preds = %.preheader69.us
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv103
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !62
  %i.bd = getelementptr [4 x i8], ptr %i.bc, i64 %i.m ; 2 uses
  br i1 %min.iters.check163, label %scalar.ph162.preheader, label %vector.body166

scalar.ph162.preheader:                           ; preds = %vector.body166, %.lr.ph.us
  %indvars.iv94.ph = phi i64 [ 0, %.lr.ph.us ], [ %n.vec165, %vector.body166 ]
  br label %scalar.ph162

vector.body166:                                   ; preds = %.lr.ph.us, %vector.body166
  %index167 = phi i64 [ %index.next171, %vector.body166 ], [ 0, %.lr.ph.us ] ; 6 uses
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %index167
  %wide.load168 = load <4 x float>, ptr %i.be, align 4, !tbaa !56
  %i.bf = shl nuw nsw i64 %index167, 3
  %i.bg = shl i64 %index167, 3
  %i.bh = shl i64 %index167, 3
  %i.bi = shl i64 %index167, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bf
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bg
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bh
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bi
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 28
  %wide.vec169 = load <8 x float>, ptr %i.bn, align 4, !tbaa !56
  %strided.vec170 = shufflevector <8 x float> %wide.vec169, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.br = fadd <4 x float> %wide.load168, %strided.vec170 ; 4 uses
  %i.bs = extractelement <4 x float> %i.br, i64 0
  store float %i.bs, ptr %i.bn, align 4, !tbaa !56
  %i.bt = extractelement <4 x float> %i.br, i64 1
  store float %i.bt, ptr %i.bo, align 4, !tbaa !56
  %i.bu = extractelement <4 x float> %i.br, i64 2
  store float %i.bu, ptr %i.bp, align 4, !tbaa !56
  %i.bv = extractelement <4 x float> %i.br, i64 3
  store float %i.bv, ptr %i.bq, align 4, !tbaa !56
  %index.next171 = add nuw i64 %index167, 4       ; 2 uses
  %i.bw = icmp eq i64 %index.next171, %n.vec165
  br i1 %i.bw, label %scalar.ph162.preheader, label %vector.body166, !llvm.loop !434

.lr.ph74.us:                                      ; preds = %.preheader67.us
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv103
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !62
  %i.bz = getelementptr [4 x i8], ptr %i.by, i64 %i.m ; 2 uses
  br i1 %min.iters.check151, label %scalar.ph150.preheader, label %vector.body154

scalar.ph150.preheader:                           ; preds = %vector.body154, %.lr.ph74.us
  %indvars.iv97.ph = phi i64 [ 0, %.lr.ph74.us ], [ %n.vec153, %vector.body154 ]
  br label %scalar.ph150

vector.body154:                                   ; preds = %.lr.ph74.us, %vector.body154
  %index155 = phi i64 [ %index.next159, %vector.body154 ], [ 0, %.lr.ph74.us ] ; 6 uses
  %i.ca = getelementptr [4 x i8], ptr %i.bz, i64 %index155
  %wide.load156 = load <4 x float>, ptr %i.ca, align 4, !tbaa !56
  %i.cb = shl nuw nsw i64 %index155, 3
  %i.cc = shl i64 %index155, 3
  %i.cd = shl i64 %index155, 3
  %i.ce = shl i64 %index155, 3
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cb ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cc
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cd
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ce
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %wide.vec157 = load <8 x float>, ptr %i.cf, align 16, !tbaa !56
  %strided.vec158 = shufflevector <8 x float> %wide.vec157, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.cm = fadd <4 x float> %wide.load156, %strided.vec158 ; 4 uses
  %i.cn = extractelement <4 x float> %i.cm, i64 0
  store float %i.cn, ptr %i.cf, align 16, !tbaa !56
  %i.co = extractelement <4 x float> %i.cm, i64 1
  store float %i.co, ptr %i.ch, align 8, !tbaa !56
  %i.cp = extractelement <4 x float> %i.cm, i64 2
  store float %i.cp, ptr %i.cj, align 16, !tbaa !56
  %i.cq = extractelement <4 x float> %i.cm, i64 3
  store float %i.cq, ptr %i.cl, align 8, !tbaa !56
  %index.next159 = add nuw i64 %index155, 4       ; 2 uses
  %i.cr = icmp eq i64 %index.next159, %n.vec153
  br i1 %i.cr, label %scalar.ph150.preheader, label %vector.body154, !llvm.loop !435

.lr.ph76.us:                                      ; preds = %.preheader.us
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv103
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !62
  %i.cu = getelementptr [4 x i8], ptr %i.ct, i64 %i.m ; 2 uses
  br i1 %min.iters.check139, label %scalar.ph138.preheader, label %vector.body142

vector.body142:                                   ; preds = %.lr.ph76.us, %vector.body142
  %index143 = phi i64 [ %index.next146, %vector.body142 ], [ 0, %.lr.ph76.us ] ; 3 uses
  %i.cv = getelementptr [4 x i8], ptr %i.cu, i64 %index143
  %wide.load144 = load <2 x float>, ptr %i.cv, align 4, !tbaa !56
  %i.cw = shl nuw nsw i64 %index143, 3
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cw ; 2 uses
  %wide.vec = load <4 x float>, ptr %i.cx, align 16, !tbaa !56
  %i.cy = shufflevector <2 x float> %wide.load144, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %interleaved.vec = fadd <4 x float> %i.cy, %wide.vec
  store <4 x float> %interleaved.vec, ptr %i.cx, align 16, !tbaa !56
  %index.next146 = add nuw i64 %index143, 2       ; 2 uses
  %i.cz = icmp eq i64 %index.next146, %n.vec141
  br i1 %i.cz, label %middle.block147, label %vector.body142, !llvm.loop !436

middle.block147:                                  ; preds = %vector.body142
  br i1 %cmp.n148, label %.loopexit.us, label %scalar.ph138.preheader

scalar.ph138.preheader:                           ; preds = %.lr.ph76.us, %middle.block147
  %indvars.iv100.ph = phi i64 [ 0, %.lr.ph76.us ], [ %n.vec141, %middle.block147 ]
  br label %scalar.ph138

..preheader71_crit_edge.us:                       ; preds = %.loopexit.us
  %i.da = shl nuw i32 %spec.select.us, 1          ; 2 uses
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %.lr.ph80.us.preheader, label %._crit_edge.us

.lr.ph80.us.preheader:                            ; preds = %..preheader71_crit_edge.us
  %indvars.iv109.tr = trunc nuw i64 %indvars.iv109 to i32
  %i.dc = shl nuw i32 %indvars.iv109.tr, 1
  %i.dd = sext i32 %i.dc to i64
  %i.de = zext nneg i32 %i.da to i64              ; 3 uses
  %invariant.gep120 = getelementptr [2 x i8], ptr %0, i64 %i.dd ; 2 uses
  %min.iters.check127 = icmp ult i32 %spec.select.us, 4
  br i1 %min.iters.check127, label %.lr.ph80.us.preheader176, label %vector.ph128

vector.ph128:                                     ; preds = %.lr.ph80.us.preheader
  %n.vec129 = and i64 %i.de, 2147483640           ; 3 uses
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph128
  %index131 = phi i64 [ 0, %vector.ph128 ], [ %index.next134, %vector.body130 ] ; 3 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index131 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %wide.load132 = load <4 x float>, ptr %i.df, align 16, !tbaa !56
  %wide.load133 = load <4 x float>, ptr %i.dg, align 16, !tbaa !56
  %i.dh = fadd <4 x float> %wide.load132, splat (float 3.840000e+02)
  %i.di = fadd <4 x float> %wide.load133, splat (float 3.840000e+02)
  %i.dj = bitcast <4 x float> %i.dh to <4 x i32>
  %i.dk = bitcast <4 x float> %i.di to <4 x i32>
  %i.dl = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dj, <4 x i32> splat (i32 1136623616))
  %i.dm = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dk, <4 x i32> splat (i32 1136623616))
  %i.dn = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.dl, <4 x i32> splat (i32 1136689151))
  %i.do = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.dm, <4 x i32> splat (i32 1136689151))
  %i.dp = trunc <4 x i32> %i.dn to <4 x i16>
  %i.dq = trunc <4 x i32> %i.do to <4 x i16>
  %i.dr = getelementptr [2 x i8], ptr %invariant.gep120, i64 %index131 ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 8
  store <4 x i16> %i.dp, ptr %i.dr, align 2, !tbaa !44
  store <4 x i16> %i.dq, ptr %i.ds, align 2, !tbaa !44
  %index.next134 = add nuw i64 %index131, 8       ; 2 uses
  %i.dt = icmp eq i64 %index.next134, %n.vec129
  br i1 %i.dt, label %middle.block135, label %vector.body130, !llvm.loop !437

middle.block135:                                  ; preds = %vector.body130
  %cmp.n136 = icmp eq i64 %n.vec129, %i.de
  br i1 %cmp.n136, label %._crit_edge.us, label %.lr.ph80.us.preheader176

.lr.ph80.us.preheader176:                         ; preds = %.lr.ph80.us.preheader, %middle.block135
  %indvars.iv106.ph = phi i64 [ 0, %.lr.ph80.us.preheader ], [ %n.vec129, %middle.block135 ]
  br label %.lr.ph80.us

.unreachabledefault86:                            ; preds = %bb.b
  unreachable

.lr.ph84.split:                                   ; preds = %.lr.ph84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.du = zext nneg i32 %4 to i64
  br label %.preheader71

.preheader71:                                     ; preds = %.lr.ph84.split, %._crit_edge
  %indvars.iv91 = phi i64 [ 0, %.lr.ph84.split ], [ %indvars.iv.next92, %._crit_edge ] ; 4 uses
  %.05982 = phi i32 [ 16, %.lr.ph84.split ], [ %spec.select, %._crit_edge ] ; 2 uses
  %indvars93 = trunc i64 %indvars.iv91 to i32
  %i.dv = add nsw i32 %.05982, %indvars93
  %i.dw = icmp sgt i32 %i.dv, %4
  %i.dx = trunc i64 %indvars.iv91 to i32
  %i.dy = sub i32 %4, %i.dx
  %spec.select = select i1 %i.dw, i32 %i.dy, i32 %.05982 ; 3 uses
  %i.dz = shl nuw i32 %spec.select, 1             ; 2 uses
  %i.ea = icmp sgt i32 %i.dz, 0
  br i1 %i.ea, label %.lr.ph80.preheader, label %._crit_edge

.lr.ph80.preheader:                               ; preds = %.preheader71
  %indvars.iv91.tr = trunc nuw i64 %indvars.iv91 to i32
  %i.eb = shl nuw i32 %indvars.iv91.tr, 1
  %i.ec = sext i32 %i.eb to i64
  %i.ed = zext nneg i32 %i.dz to i64              ; 3 uses
  %invariant.gep = getelementptr [2 x i8], ptr %0, i64 %i.ec ; 2 uses
  %min.iters.check = icmp ult i32 %spec.select, 4
  br i1 %min.iters.check, label %.lr.ph80.preheader177, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph80.preheader
  %n.vec = and i64 %i.ed, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %wide.load = load <4 x float>, ptr %i.ee, align 16, !tbaa !56
  %wide.load125 = load <4 x float>, ptr %i.ef, align 16, !tbaa !56
  %i.eg = fadd <4 x float> %wide.load, splat (float 3.840000e+02)
  %i.eh = fadd <4 x float> %wide.load125, splat (float 3.840000e+02)
  %i.ei = bitcast <4 x float> %i.eg to <4 x i32>
  %i.ej = bitcast <4 x float> %i.eh to <4 x i32>
  %i.ek = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ei, <4 x i32> splat (i32 1136623616))
  %i.el = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ej, <4 x i32> splat (i32 1136623616))
  %i.em = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ek, <4 x i32> splat (i32 1136689151))
  %i.en = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.el, <4 x i32> splat (i32 1136689151))
  %i.eo = trunc <4 x i32> %i.em to <4 x i16>
  %i.ep = trunc <4 x i32> %i.en to <4 x i16>
  %i.eq = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 8
  store <4 x i16> %i.eo, ptr %i.eq, align 2, !tbaa !44
  store <4 x i16> %i.ep, ptr %i.er, align 2, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !438

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ed
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph80.preheader177

.lr.ph80.preheader177:                            ; preds = %.lr.ph80.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph80.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph80

.lr.ph80:                                         ; preds = %.lr.ph80.preheader177, %.lr.ph80
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph80 ], [ %indvars.iv.ph, %.lr.ph80.preheader177 ] ; 3 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.eu = load float, ptr %i.et, align 4, !tbaa !56
  %i.ev = fadd float %i.eu, 3.840000e+02
  %i.ew = bitcast float %i.ev to i32
  %i.ex = tail call i32 @llvm.smax.i32(i32 %i.ew, i32 1136623616)
  %i.ey = tail call i32 @llvm.umin.i32(i32 %i.ex, i32 1136689151)
  %i.ez = trunc i32 %i.ey to i16
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i16 %i.ez, ptr %gep, align 2, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fa = icmp samesign ult i64 %indvars.iv.next, %i.ed
  br i1 %i.fa, label %.lr.ph80, label %._crit_edge, !llvm.loop !439

._crit_edge:                                      ; preds = %.lr.ph80, %middle.block, %.preheader71
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 16 ; 2 uses
  %i.fb = icmp samesign ult i64 %indvars.iv.next92, %i.du
  br i1 %i.fb, label %.preheader71, label %._crit_edge85, !llvm.loop !433

._crit_edge85:                                    ; preds = %._crit_edge, %._crit_edge.us, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @convert_samples_short(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #24 {
bb.a:
  %i.a = alloca [32 x float], align 16            ; 27 uses
  %i.b = icmp ne i32 %0, %3
  %i.c = icmp slt i32 %0, 3
  %or.cond = and i1 %i.c, %i.b
  %i.d = icmp slt i32 %3, 7
  %or.cond3 = and i1 %i.d, %or.cond
  br i1 %or.cond3, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.e = icmp sgt i32 %0, 0
  br i1 %i.e, label %.lr.ph55, label %.loopexit

.lr.ph55:                                         ; preds = %.preheader
  %i.f = zext nneg i32 %0 to i64                  ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @__const.convert_samples_short.channel_selector, i64 %i.f
  %i.h = sext i32 %2 to i64                       ; 3 uses
  %i.i = icmp sgt i32 %6, 0
  %i.j = sext i32 %3 to i64
  %i.k = getelementptr inbounds [6 x i8], ptr @channel_position, i64 %i.j ; 6 uses
  %i.l = zext nneg i32 %6 to i64                  ; 3 uses
  %i.m = sext i32 %5 to i64                       ; 6 uses
  br i1 %i.i, label %.lr.ph55.split.us, label %.loopexit

.lr.ph55.split.us:                                ; preds = %.lr.ph55
  %i.n = icmp sgt i32 %3, 0
  br i1 %i.n, label %.lr.ph47.i.us.us.preheader, label %.lr.ph47.i.us

.lr.ph47.i.us.us.preheader:                       ; preds = %.lr.ph55.split.us
  %exitcond67.not.i.us.us = icmp eq i32 %3, 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %exitcond67.not.i.us.us.1 = icmp eq i32 %3, 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %exitcond67.not.i.us.us.2 = icmp eq i32 %3, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  %exitcond67.not.i.us.us.3 = icmp eq i32 %3, 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32
  %exitcond67.not.i.us.us.4 = icmp eq i32 %3, 5
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %.lr.ph47.i.us.us

.lr.ph47.i.us.us:                                 ; preds = %.lr.ph47.i.us.us.preheader, %compute_samples.exit.loopexit.us.us
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %compute_samples.exit.loopexit.us.us ], [ 0, %.lr.ph47.i.us.us.preheader ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv76
  %i.z = load i32, ptr %i.y, align 4, !tbaa !25   ; 6 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv76
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !63
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  br label %.lr.ph42.us.i.us.us

.lr.ph42.us.i.us.us:                              ; preds = %._crit_edge.us.i.us.us, %.lr.ph47.i.us.us
  %indvars.iv73.i.us.us = phi i64 [ 0, %.lr.ph47.i.us.us ], [ %indvars.iv.next74.i.us.us, %._crit_edge.us.i.us.us ] ; 9 uses
  %.03245.us.i.us.us = phi i32 [ 32, %.lr.ph47.i.us.us ], [ %spec.select.us.fr.i.us.us, %._crit_edge.us.i.us.us ] ; 2 uses
  %indvars75.i.us.us = trunc i64 %indvars.iv73.i.us.us to i32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.ad = add nsw i32 %.03245.us.i.us.us, %indvars75.i.us.us
  %i.ae = icmp sgt i32 %i.ad, %6
  %i.af = sub i32 %6, %indvars75.i.us.us
  %spec.select.us.i.us.us = select i1 %i.ae, i32 %i.af, i32 %.03245.us.i.us.us
  %spec.select.us.fr.i.us.us = freeze i32 %spec.select.us.i.us.us ; 10 uses
  %i.ag = icmp sgt i32 %spec.select.us.fr.i.us.us, 0
  br i1 %i.ag, label %.lr.ph42.split.us.us.preheader.i.us.us, label %._crit_edge.us.i.us.us

.lr.ph42.split.us.us.preheader.i.us.us:           ; preds = %.lr.ph42.us.i.us.us
  %wide.trip.count.i.us.us = zext nneg i32 %spec.select.us.fr.i.us.us to i64 ; 21 uses
  %i.ah = load i8, ptr %i.k, align 2, !tbaa !29
  %i.ai = sext i8 %i.ah to i32
  %i.aj = and i32 %i.z, %i.ai
  %.not.us.us.i.us.us = icmp eq i32 %i.aj, 0
  br i1 %.not.us.us.i.us.us, label %..loopexit_crit_edge.us.us.i.us.us, label %.preheader.us.us.i.us.us

.preheader.us.us.i.us.us:                         ; preds = %.lr.ph42.split.us.us.preheader.i.us.us
  %i.ak = load ptr, ptr %4, align 8, !tbaa !62
  %i.al = getelementptr [4 x i8], ptr %i.ak, i64 %indvars.iv73.i.us.us
  %i.am = getelementptr [4 x i8], ptr %i.al, i64 %i.m ; 2 uses
  %min.iters.check114 = icmp ult i32 %spec.select.us.fr.i.us.us, 8
  br i1 %min.iters.check114, label %scalar.ph113.preheader, label %vector.ph115

vector.ph115:                                     ; preds = %.preheader.us.us.i.us.us
  %n.vec116 = and i64 %wide.trip.count.i.us.us, 2147483640 ; 3 uses
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph115
  %index118 = phi i64 [ 0, %vector.ph115 ], [ %index.next123, %vector.body117 ] ; 3 uses
  %i.an = getelementptr [4 x i8], ptr %i.am, i64 %index118 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %wide.load119 = load <4 x float>, ptr %i.an, align 4, !tbaa !56
  %wide.load120 = load <4 x float>, ptr %i.ao, align 4, !tbaa !56
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index118 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %wide.load121 = load <4 x float>, ptr %i.ap, align 16, !tbaa !56
  %wide.load122 = load <4 x float>, ptr %i.aq, align 16, !tbaa !56
  %i.ar = fadd <4 x float> %wide.load119, %wide.load121
  %i.as = fadd <4 x float> %wide.load120, %wide.load122
  store <4 x float> %i.ar, ptr %i.ap, align 16, !tbaa !56
  store <4 x float> %i.as, ptr %i.aq, align 16, !tbaa !56
  %index.next123 = add nuw i64 %index118, 8       ; 2 uses
  %i.at = icmp eq i64 %index.next123, %n.vec116
  br i1 %i.at, label %middle.block124, label %vector.body117, !llvm.loop !440

middle.block124:                                  ; preds = %vector.body117
  %cmp.n125 = icmp eq i64 %n.vec116, %wide.trip.count.i.us.us
  br i1 %cmp.n125, label %..loopexit_crit_edge.us.us.i.us.us, label %scalar.ph113.preheader

scalar.ph113.preheader:                           ; preds = %.preheader.us.us.i.us.us, %middle.block124
  %indvars.iv60.i.us.us.ph = phi i64 [ 0, %.preheader.us.us.i.us.us ], [ %n.vec116, %middle.block124 ]
  br label %scalar.ph113

scalar.ph113:                                     ; preds = %scalar.ph113.preheader, %scalar.ph113
  %indvars.iv60.i.us.us = phi i64 [ %indvars.iv.next61.i.us.us, %scalar.ph113 ], [ %indvars.iv60.i.us.us.ph, %scalar.ph113.preheader ] ; 3 uses
  %i.au = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv60.i.us.us
  %i.av = load float, ptr %i.au, align 4, !tbaa !56
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv60.i.us.us ; 2 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !56
  %i.ay = fadd float %i.av, %i.ax
  store float %i.ay, ptr %i.aw, align 4, !tbaa !56
  %indvars.iv.next61.i.us.us = add nuw nsw i64 %indvars.iv60.i.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next61.i.us.us, %wide.trip.count.i.us.us
  br i1 %exitcond.not.i.us.us, label %..loopexit_crit_edge.us.us.i.us.us, label %scalar.ph113, !llvm.loop !441

..loopexit_crit_edge.us.us.i.us.us:               ; preds = %scalar.ph113, %middle.block124, %.lr.ph42.split.us.us.preheader.i.us.us
  br i1 %exitcond67.not.i.us.us, label %..preheader39_crit_edge.us.i.us.us, label %.lr.ph42.split.us.us.i.us.us.1

.lr.ph42.split.us.us.i.us.us.1:                   ; preds = %..loopexit_crit_edge.us.us.i.us.us
  %i.az = load i8, ptr %i.o, align 1, !tbaa !29
end_hunk_2
begin_hunk_3_@stb_vorbis_get_samples_short_interleaved:bb.a
  %smin56 = call i32 @llvm.smin.i32(i32 %i.aa, i32 %spec.select)
  %i.af = add i32 %smin56, %indvars.iv57          ; 5 uses
  %i.ag = zext i32 %i.af to i64                   ; 9 uses
  %min.iters.check111 = icmp ult i32 %i.af, 5
  %i.ah = and i64 %i.ag, 3                        ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  %i.aj = select i1 %i.ai, i64 4, i64 %i.ah
  %n.vec113 = sub nsw i64 %i.ag, %i.aj            ; 2 uses
  %min.iters.check99 = icmp ult i32 %i.af, 5
  %i.ak = and i64 %i.ag, 3                        ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  %i.am = select i1 %i.al, i64 4, i64 %i.ak
  %n.vec101 = sub nsw i64 %i.ag, %i.am            ; 2 uses
  %min.iters.check87 = icmp ult i32 %i.af, 2
  %n.vec89 = and i64 %i.ag, 4294967294            ; 3 uses
  %cmp.n96 = icmp eq i64 %n.vec89, %i.ag
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.us.i.us.us, %.lr.ph78.us.i.us.us
  %indvars.iv103.i.us.us = phi i64 [ 0, %.lr.ph78.us.i.us.us ], [ %indvars.iv.next104.i.us.us, %.loopexit.us.i.us.us ] ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv103.i.us.us
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !29
  %i.ap = and i8 %i.ao, 6
  switch i8 %i.ap, label %.unreachabledefault [
    i8 6, label %.preheader.us.i.us.us
    i8 2, label %.preheader67.us.i.us.us
    i8 4, label %.preheader69.us.i.us.us
    i8 0, label %.loopexit.us.i.us.us
  ]

.preheader69.us.i.us.us:                          ; preds = %bb.e
  br i1 %i.ad, label %.lr.ph.us.i.us.us, label %.loopexit.us.i.us.us

.lr.ph.us.i.us.us:                                ; preds = %.preheader69.us.i.us.us
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv103.i.us.us
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !62
  %i.as = getelementptr [4 x i8], ptr %i.ar, i64 %i.ae ; 2 uses
  br i1 %min.iters.check111, label %scalar.ph110.preheader, label %vector.body114

vector.body114:                                   ; preds = %.lr.ph.us.i.us.us, %vector.body114
  %index115 = phi i64 [ %index.next119, %vector.body114 ], [ 0, %.lr.ph.us.i.us.us ] ; 6 uses
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %index115
  %wide.load116 = load <4 x float>, ptr %i.at, align 4, !tbaa !56
  %i.au = shl nuw nsw i64 %index115, 3
  %i.av = shl i64 %index115, 3
  %i.aw = shl i64 %index115, 3
  %i.ax = shl i64 %index115, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.au
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.av
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aw
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 20
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 28
  %wide.vec117 = load <8 x float>, ptr %i.bc, align 4, !tbaa !56
  %strided.vec118 = shufflevector <8 x float> %wide.vec117, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bg = fadd <4 x float> %wide.load116, %strided.vec118 ; 4 uses
  %i.bh = extractelement <4 x float> %i.bg, i64 0
  store float %i.bh, ptr %i.bc, align 4, !tbaa !56
  %i.bi = extractelement <4 x float> %i.bg, i64 1
  store float %i.bi, ptr %i.bd, align 4, !tbaa !56
  %i.bj = extractelement <4 x float> %i.bg, i64 2
  store float %i.bj, ptr %i.be, align 4, !tbaa !56
  %i.bk = extractelement <4 x float> %i.bg, i64 3
  store float %i.bk, ptr %i.bf, align 4, !tbaa !56
  %index.next119 = add nuw i64 %index115, 4       ; 2 uses
  %i.bl = icmp eq i64 %index.next119, %n.vec113
  br i1 %i.bl, label %scalar.ph110.preheader, label %vector.body114, !llvm.loop !455

scalar.ph110.preheader:                           ; preds = %vector.body114, %.lr.ph.us.i.us.us
  %indvars.iv94.i.us.us.ph = phi i64 [ 0, %.lr.ph.us.i.us.us ], [ %n.vec113, %vector.body114 ]
  br label %scalar.ph110

scalar.ph110:                                     ; preds = %scalar.ph110.preheader, %scalar.ph110
  %indvars.iv94.i.us.us = phi i64 [ %indvars.iv.next95.i.us.us, %scalar.ph110 ], [ %indvars.iv94.i.us.us.ph, %scalar.ph110.preheader ] ; 3 uses
  %i.bm = getelementptr [4 x i8], ptr %i.as, i64 %indvars.iv94.i.us.us
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !56
  %.idx.i.us.us = shl nuw nsw i64 %indvars.iv94.i.us.us, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i.us.us
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !56
  %i.br = fadd float %i.bn, %i.bq
  store float %i.br, ptr %i.bp, align 4, !tbaa !56
  %indvars.iv.next95.i.us.us = add nuw nsw i64 %indvars.iv94.i.us.us, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next95.i.us.us, %i.ag
  br i1 %exitcond59.not, label %.loopexit.us.i.us.us, label %scalar.ph110, !llvm.loop !456

.preheader67.us.i.us.us:                          ; preds = %bb.e
  br i1 %i.ad, label %.lr.ph74.us.i.us.us, label %.loopexit.us.i.us.us

.lr.ph74.us.i.us.us:                              ; preds = %.preheader67.us.i.us.us
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv103.i.us.us
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !62
  %i.bu = getelementptr [4 x i8], ptr %i.bt, i64 %i.ae ; 2 uses
  br i1 %min.iters.check99, label %scalar.ph98.preheader, label %vector.body102

vector.body102:                                   ; preds = %.lr.ph74.us.i.us.us, %vector.body102
  %index103 = phi i64 [ %index.next107, %vector.body102 ], [ 0, %.lr.ph74.us.i.us.us ] ; 6 uses
  %i.bv = getelementptr [4 x i8], ptr %i.bu, i64 %index103
  %wide.load104 = load <4 x float>, ptr %i.bv, align 4, !tbaa !56
  %i.bw = shl nuw nsw i64 %index103, 3
  %i.bx = shl i64 %index103, 3
  %i.by = shl i64 %index103, 3
  %i.bz = shl i64 %index103, 3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bw ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bx
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.by
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bz
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %wide.vec105 = load <8 x float>, ptr %i.ca, align 16, !tbaa !56
  %strided.vec106 = shufflevector <8 x float> %wide.vec105, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ch = fadd <4 x float> %wide.load104, %strided.vec106 ; 4 uses
  %i.ci = extractelement <4 x float> %i.ch, i64 0
  store float %i.ci, ptr %i.ca, align 16, !tbaa !56
  %i.cj = extractelement <4 x float> %i.ch, i64 1
  store float %i.cj, ptr %i.cc, align 8, !tbaa !56
  %i.ck = extractelement <4 x float> %i.ch, i64 2
  store float %i.ck, ptr %i.ce, align 16, !tbaa !56
  %i.cl = extractelement <4 x float> %i.ch, i64 3
  store float %i.cl, ptr %i.cg, align 8, !tbaa !56
  %index.next107 = add nuw i64 %index103, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next107, %n.vec101
  br i1 %i.cm, label %scalar.ph98.preheader, label %vector.body102, !llvm.loop !457

scalar.ph98.preheader:                            ; preds = %vector.body102, %.lr.ph74.us.i.us.us
  %indvars.iv97.i.us.us.ph = phi i64 [ 0, %.lr.ph74.us.i.us.us ], [ %n.vec101, %vector.body102 ]
  br label %scalar.ph98

scalar.ph98:                                      ; preds = %scalar.ph98.preheader, %scalar.ph98
  %indvars.iv97.i.us.us = phi i64 [ %indvars.iv.next98.i.us.us, %scalar.ph98 ], [ %indvars.iv97.i.us.us.ph, %scalar.ph98.preheader ] ; 3 uses
  %i.cn = getelementptr [4 x i8], ptr %i.bu, i64 %indvars.iv97.i.us.us
  %i.co = load float, ptr %i.cn, align 4, !tbaa !56
  %.idx115.i.us.us = shl nuw nsw i64 %indvars.iv97.i.us.us, 3
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx115.i.us.us ; 2 uses
  %i.cq = load float, ptr %i.cp, align 8, !tbaa !56
  %i.cr = fadd float %i.co, %i.cq
  store float %i.cr, ptr %i.cp, align 8, !tbaa !56
  %indvars.iv.next98.i.us.us = add nuw nsw i64 %indvars.iv97.i.us.us, 1 ; 2 uses
  %exitcond61.not = icmp eq i64 %indvars.iv.next98.i.us.us, %i.ag
  br i1 %exitcond61.not, label %.loopexit.us.i.us.us, label %scalar.ph98, !llvm.loop !458

.preheader.us.i.us.us:                            ; preds = %bb.e
  br i1 %i.ad, label %.lr.ph76.us.i.us.us, label %.loopexit.us.i.us.us

.lr.ph76.us.i.us.us:                              ; preds = %.preheader.us.i.us.us
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv103.i.us.us
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !62
  %i.cu = getelementptr [4 x i8], ptr %i.ct, i64 %i.ae ; 2 uses
  br i1 %min.iters.check87, label %scalar.ph86.preheader, label %vector.body90

vector.body90:                                    ; preds = %.lr.ph76.us.i.us.us, %vector.body90
  %index91 = phi i64 [ %index.next94, %vector.body90 ], [ 0, %.lr.ph76.us.i.us.us ] ; 3 uses
  %i.cv = getelementptr [4 x i8], ptr %i.cu, i64 %index91
  %wide.load92 = load <2 x float>, ptr %i.cv, align 4, !tbaa !56
  %i.cw = shl nuw nsw i64 %index91, 3
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cw ; 2 uses
  %wide.vec = load <4 x float>, ptr %i.cx, align 16, !tbaa !56
  %i.cy = shufflevector <2 x float> %wide.load92, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %interleaved.vec = fadd <4 x float> %i.cy, %wide.vec
  store <4 x float> %interleaved.vec, ptr %i.cx, align 16, !tbaa !56
  %index.next94 = add nuw i64 %index91, 2         ; 2 uses
  %i.cz = icmp eq i64 %index.next94, %n.vec89
  br i1 %i.cz, label %middle.block95, label %vector.body90, !llvm.loop !459

middle.block95:                                   ; preds = %vector.body90
  br i1 %cmp.n96, label %.loopexit.us.i.us.us, label %scalar.ph86.preheader

scalar.ph86.preheader:                            ; preds = %.lr.ph76.us.i.us.us, %middle.block95
  %indvars.iv100.i.us.us.ph = phi i64 [ 0, %.lr.ph76.us.i.us.us ], [ %n.vec89, %middle.block95 ]
  br label %scalar.ph86

scalar.ph86:                                      ; preds = %scalar.ph86.preheader, %scalar.ph86
  %indvars.iv100.i.us.us = phi i64 [ %indvars.iv.next101.i.us.us, %scalar.ph86 ], [ %indvars.iv100.i.us.us.ph, %scalar.ph86.preheader ] ; 3 uses
  %i.da = getelementptr [4 x i8], ptr %i.cu, i64 %indvars.iv100.i.us.us
  %i.db = load float, ptr %i.da, align 4, !tbaa !56
  %.idx116.i.us.us = shl nuw nsw i64 %indvars.iv100.i.us.us, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx116.i.us.us ; 2 uses
  %i.dd = load <2 x float>, ptr %i.dc, align 8, !tbaa !56
  %i.de = insertelement <2 x float> poison, float %i.db, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = fadd <2 x float> %i.df, %i.dd
  store <2 x float> %i.dg, ptr %i.dc, align 8, !tbaa !56
  %indvars.iv.next101.i.us.us = add nuw nsw i64 %indvars.iv100.i.us.us, 1 ; 2 uses
  %exitcond63.not = icmp eq i64 %indvars.iv.next101.i.us.us, %i.ag
  br i1 %exitcond63.not, label %.loopexit.us.i.us.us, label %scalar.ph86, !llvm.loop !460

.loopexit.us.i.us.us:                             ; preds = %scalar.ph110, %scalar.ph98, %scalar.ph86, %middle.block95, %.preheader.us.i.us.us, %.preheader67.us.i.us.us, %.preheader69.us.i.us.us, %bb.e
  %indvars.iv.next104.i.us.us = add nuw nsw i64 %indvars.iv103.i.us.us, 1 ; 2 uses
  %exitcond.not.i38.us.us = icmp eq i64 %indvars.iv.next104.i.us.us, %wide.trip.count.i37
  br i1 %exitcond.not.i38.us.us, label %..preheader71_crit_edge.us.i.us.us, label %bb.e, !llvm.loop !431

..preheader71_crit_edge.us.i.us.us:               ; preds = %.loopexit.us.i.us.us
  %i.dh = shl nuw i32 %spec.select.us.i.us.us, 1
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %.lr.ph80.us.preheader.i.us.us, label %._crit_edge.us.i39.us.us

.lr.ph80.us.preheader.i.us.us:                    ; preds = %..preheader71_crit_edge.us.i.us.us
  %i.dj = shl nuw i32 %indvars66, 1
  %i.dk = sext i32 %i.dj to i64
  %invariant.gep120.i.us.us = getelementptr [2 x i8], ptr %.031, i64 %i.dk ; 2 uses
  %i.dl = shl i32 %i.af, 1                        ; 2 uses
  %i.dm = zext i32 %i.dl to i64                   ; 3 uses
  %min.iters.check = icmp ult i32 %i.dl, 8
  br i1 %min.iters.check, label %.lr.ph80.us.i.us.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph80.us.preheader.i.us.us
  %n.vec = and i64 %i.dm, 4294967288              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %wide.load = load <4 x float>, ptr %i.dn, align 16, !tbaa !56
  %wide.load85 = load <4 x float>, ptr %i.do, align 16, !tbaa !56
  %i.dp = fadd <4 x float> %wide.load, splat (float 3.840000e+02)
  %i.dq = fadd <4 x float> %wide.load85, splat (float 3.840000e+02)
  %i.dr = bitcast <4 x float> %i.dp to <4 x i32>
  %i.ds = bitcast <4 x float> %i.dq to <4 x i32>
  %i.dt = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dr, <4 x i32> splat (i32 1136623616))
  %i.du = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ds, <4 x i32> splat (i32 1136623616))
  %i.dv = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.dt, <4 x i32> splat (i32 1136689151))
  %i.dw = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.du, <4 x i32> splat (i32 1136689151))
  %i.dx = trunc <4 x i32> %i.dv to <4 x i16>
  %i.dy = trunc <4 x i32> %i.dw to <4 x i16>
  %i.dz = getelementptr [2 x i8], ptr %invariant.gep120.i.us.us, i64 %index ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 8
  store <4 x i16> %i.dx, ptr %i.dz, align 2, !tbaa !44
  store <4 x i16> %i.dy, ptr %i.ea, align 2, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !461

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dm
  br i1 %cmp.n, label %._crit_edge.us.i39.us.us, label %.lr.ph80.us.i.us.us.preheader

.lr.ph80.us.i.us.us.preheader:                    ; preds = %.lr.ph80.us.preheader.i.us.us, %middle.block
  %indvars.iv106.i.us.us.ph = phi i64 [ 0, %.lr.ph80.us.preheader.i.us.us ], [ %n.vec, %middle.block ]
  br label %.lr.ph80.us.i.us.us

.lr.ph80.us.i.us.us:                              ; preds = %.lr.ph80.us.i.us.us.preheader, %.lr.ph80.us.i.us.us
  %indvars.iv106.i.us.us = phi i64 [ %indvars.iv.next107.i.us.us, %.lr.ph80.us.i.us.us ], [ %indvars.iv106.i.us.us.ph, %.lr.ph80.us.i.us.us.preheader ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv106.i.us.us
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !56
  %i.ee = fadd float %i.ed, 3.840000e+02
  %i.ef = bitcast float %i.ee to i32
  %i.eg = call i32 @llvm.smax.i32(i32 %i.ef, i32 1136623616)
  %i.eh = call i32 @llvm.umin.i32(i32 %i.eg, i32 1136689151)
  %i.ei = trunc i32 %i.eh to i16
  %gep121.i.us.us = getelementptr [2 x i8], ptr %invariant.gep120.i.us.us, i64 %indvars.iv106.i.us.us
  store i16 %i.ei, ptr %gep121.i.us.us, align 2, !tbaa !44
  %indvars.iv.next107.i.us.us = add nuw nsw i64 %indvars.iv106.i.us.us, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next107.i.us.us, %i.dm
  br i1 %exitcond65.not, label %._crit_edge.us.i39.us.us, label %.lr.ph80.us.i.us.us, !llvm.loop !462

._crit_edge.us.i39.us.us:                         ; preds = %.lr.ph80.us.i.us.us, %middle.block, %..preheader71_crit_edge.us.i.us.us
  %indvars.iv.next110.i.us.us = add nuw nsw i64 %indvars.iv109.i.us.us, 16 ; 2 uses
  %i.ej = icmp samesign ult i64 %indvars.iv.next110.i.us.us, %i.x
  %indvars.iv.next58 = add i32 %indvars.iv57, -16
  br i1 %i.ej, label %.lr.ph78.us.i.us.us, label %compute_stereo_samples.exit.loopexit.us.us, !llvm.loop !433

compute_stereo_samples.exit.loopexit.us.us:       ; preds = %._crit_edge.us.i39.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.ek = add nuw nsw i32 %.03856.i.us.us, 1      ; 2 uses
  %exitcond69.not.i.us.us = icmp eq i32 %i.ek, %1
  br i1 %exitcond69.not.i.us.us, label %convert_channels_short_interleaved.exit, label %.lr.ph.i.us.us, !llvm.loop !452

.unreachabledefault:                              ; preds = %bb.e
  unreachable

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  br label %.preheader71.i.us

.preheader71.i.us:                                ; preds = %._crit_edge.i.us, %.lr.ph.i.us
  %indvars.iv53 = phi i32 [ %indvars.iv.next54, %._crit_edge.i.us ], [ 0, %.lr.ph.i.us ] ; 2 uses
  %indvars.iv91.i.us = phi i64 [ %indvars.iv.next92.i.us, %._crit_edge.i.us ], [ 0, %.lr.ph.i.us ] ; 2 uses
  %.05982.i.us = phi i32 [ %spec.select.i.us, %._crit_edge.i.us ], [ 16, %.lr.ph.i.us ] ; 2 uses
  %indvars55 = trunc i64 %indvars.iv91.i.us to i32 ; 3 uses
  %i.el = add nsw i32 %.05982.i.us, %indvars55    ; 2 uses
  %i.em = icmp sgt i32 %i.el, %spec.select
  %i.en = sub i32 %spec.select, %indvars55
  %spec.select.i.us = select i1 %i.em, i32 %i.en, i32 %.05982.i.us ; 2 uses
  %i.eo = shl nuw i32 %spec.select.i.us, 1
  %i.ep = icmp sgt i32 %i.eo, 0
  br i1 %i.ep, label %.lr.ph80.preheader.i.us, label %._crit_edge.i.us

.lr.ph80.preheader.i.us:                          ; preds = %.preheader71.i.us
  %i.eq = shl nuw i32 %indvars55, 1
  %i.er = sext i32 %i.eq to i64
  %invariant.gep.i.us = getelementptr [2 x i8], ptr %.031, i64 %i.er ; 2 uses
  %smin = call i32 @llvm.smin.i32(i32 %i.el, i32 %spec.select)
  %i.es = add i32 %smin, %indvars.iv53            ; 2 uses
  %i.et = zext i32 %i.es to i64
  %i.eu = shl nuw nsw i64 %i.et, 1                ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.eu, i64 1) ; 2 uses
  %min.iters.check123 = icmp ult i32 %i.es, 4
  br i1 %min.iters.check123, label %.lr.ph80.i.us.preheader, label %vector.ph124

vector.ph124:                                     ; preds = %.lr.ph80.preheader.i.us
  %n.vec125 = and i64 %umax, 8589934584           ; 3 uses
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph124
  %index127 = phi i64 [ 0, %vector.ph124 ], [ %index.next130, %vector.body126 ] ; 3 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index127 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %wide.load128 = load <4 x float>, ptr %i.ev, align 16, !tbaa !56
  %wide.load129 = load <4 x float>, ptr %i.ew, align 16, !tbaa !56
  %i.ex = fadd <4 x float> %wide.load128, splat (float 3.840000e+02)
  %i.ey = fadd <4 x float> %wide.load129, splat (float 3.840000e+02)
  %i.ez = bitcast <4 x float> %i.ex to <4 x i32>
  %i.fa = bitcast <4 x float> %i.ey to <4 x i32>
  %i.fb = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ez, <4 x i32> splat (i32 1136623616))
  %i.fc = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fa, <4 x i32> splat (i32 1136623616))
  %i.fd = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fb, <4 x i32> splat (i32 1136689151))
  %i.fe = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fc, <4 x i32> splat (i32 1136689151))
  %i.ff = trunc <4 x i32> %i.fd to <4 x i16>
  %i.fg = trunc <4 x i32> %i.fe to <4 x i16>
  %i.fh = getelementptr [2 x i8], ptr %invariant.gep.i.us, i64 %index127 ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 8
  store <4 x i16> %i.ff, ptr %i.fh, align 2, !tbaa !44
  store <4 x i16> %i.fg, ptr %i.fi, align 2, !tbaa !44
  %index.next130 = add nuw i64 %index127, 8       ; 2 uses
  %i.fj = icmp eq i64 %index.next130, %n.vec125
  br i1 %i.fj, label %middle.block131, label %vector.body126, !llvm.loop !463

middle.block131:                                  ; preds = %vector.body126
  %cmp.n132 = icmp eq i64 %i.eu, %n.vec125
  br i1 %cmp.n132, label %._crit_edge.i.us, label %.lr.ph80.i.us.preheader

.lr.ph80.i.us.preheader:                          ; preds = %.lr.ph80.preheader.i.us, %middle.block131
  %indvars.iv.i35.us.ph = phi i64 [ 0, %.lr.ph80.preheader.i.us ], [ %n.vec125, %middle.block131 ]
  br label %.lr.ph80.i.us

.lr.ph80.i.us:                                    ; preds = %.lr.ph80.i.us.preheader, %.lr.ph80.i.us
  %indvars.iv.i35.us = phi i64 [ %indvars.iv.next.i36.us, %.lr.ph80.i.us ], [ %indvars.iv.i35.us.ph, %.lr.ph80.i.us.preheader ] ; 3 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i35.us
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !56
  %i.fm = fadd float %i.fl, 3.840000e+02
  %i.fn = bitcast float %i.fm to i32
  %i.fo = call i32 @llvm.smax.i32(i32 %i.fn, i32 1136623616)
  %i.fp = call i32 @llvm.umin.i32(i32 %i.fo, i32 1136689151)
  %i.fq = trunc i32 %i.fp to i16
  %gep.i.us = getelementptr [2 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i35.us
  store i16 %i.fq, ptr %gep.i.us, align 2, !tbaa !44
  %indvars.iv.next.i36.us = add nuw nsw i64 %indvars.iv.i35.us, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i36.us, %umax
  br i1 %exitcond.not, label %._crit_edge.i.us, label %.lr.ph80.i.us, !llvm.loop !464

._crit_edge.i.us:                                 ; preds = %.lr.ph80.i.us, %middle.block131, %.preheader71.i.us
  %indvars.iv.next92.i.us = add nuw nsw i64 %indvars.iv91.i.us, 16 ; 2 uses
  %i.fr = icmp samesign ult i64 %indvars.iv.next92.i.us, %i.x
  %indvars.iv.next54 = add i32 %indvars.iv53, -16
  br i1 %i.fr, label %.preheader71.i.us, label %compute_stereo_samples.exit.loopexit43.us, !llvm.loop !433

compute_stereo_samples.exit.loopexit43.us:        ; preds = %._crit_edge.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br i1 %exitcond69.not.i.us, label %convert_channels_short_interleaved.exit, label %.lr.ph.i.us.1

.lr.ph.i.us.1:                                    ; preds = %compute_stereo_samples.exit.loopexit43.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  br label %.preheader71.i.us.1

.preheader71.i.us.1:                              ; preds = %._crit_edge.i.us.1, %.lr.ph.i.us.1
  %indvars.iv53.1 = phi i32 [ %indvars.iv.next54.1, %._crit_edge.i.us.1 ], [ 0, %.lr.ph.i.us.1 ] ; 2 uses
  %indvars.iv91.i.us.1 = phi i64 [ %indvars.iv.next92.i.us.1, %._crit_edge.i.us.1 ], [ 0, %.lr.ph.i.us.1 ] ; 2 uses
  %.05982.i.us.1 = phi i32 [ %spec.select.i.us.1, %._crit_edge.i.us.1 ], [ 16, %.lr.ph.i.us.1 ] ; 2 uses
  %indvars55.1 = trunc i64 %indvars.iv91.i.us.1 to i32 ; 3 uses
  %i.fs = add nsw i32 %.05982.i.us.1, %indvars55.1 ; 2 uses
  %i.ft = icmp sgt i32 %i.fs, %spec.select
  %i.fu = sub i32 %spec.select, %indvars55.1
  %spec.select.i.us.1 = select i1 %i.ft, i32 %i.fu, i32 %.05982.i.us.1 ; 2 uses
  %i.fv = shl nuw i32 %spec.select.i.us.1, 1
  %i.fw = icmp sgt i32 %i.fv, 0
  br i1 %i.fw, label %.lr.ph80.preheader.i.us.1, label %._crit_edge.i.us.1

.lr.ph80.preheader.i.us.1:                        ; preds = %.preheader71.i.us.1
  %i.fx = shl nuw i32 %indvars55.1, 1
  %i.fy = sext i32 %i.fx to i64
  %invariant.gep.i.us.1 = getelementptr [2 x i8], ptr %.031, i64 %i.fy ; 2 uses
  %smin.1 = call i32 @llvm.smin.i32(i32 %i.fs, i32 %spec.select)
  %i.fz = add i32 %smin.1, %indvars.iv53.1        ; 2 uses
  %i.ga = zext i32 %i.fz to i64
  %i.gb = shl nuw nsw i64 %i.ga, 1                ; 2 uses
  %umax.1 = call i64 @llvm.umax.i64(i64 %i.gb, i64 1) ; 2 uses
  %min.iters.check123.1 = icmp ult i32 %i.fz, 4
  br i1 %min.iters.check123.1, label %.lr.ph80.i.us.preheader.1, label %vector.ph124.1

vector.ph124.1:                                   ; preds = %.lr.ph80.preheader.i.us.1
  %n.vec125.1 = and i64 %umax.1, 8589934584       ; 3 uses
  br label %vector.body126.1

vector.body126.1:                                 ; preds = %vector.body126.1, %vector.ph124.1
  %index127.1 = phi i64 [ 0, %vector.ph124.1 ], [ %index.next130.1, %vector.body126.1 ] ; 3 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index127.1 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %wide.load128.1 = load <4 x float>, ptr %i.gc, align 16, !tbaa !56
  %wide.load129.1 = load <4 x float>, ptr %i.gd, align 16, !tbaa !56
  %i.ge = fadd <4 x float> %wide.load128.1, splat (float 3.840000e+02)
  %i.gf = fadd <4 x float> %wide.load129.1, splat (float 3.840000e+02)
  %i.gg = bitcast <4 x float> %i.ge to <4 x i32>
  %i.gh = bitcast <4 x float> %i.gf to <4 x i32>
  %i.gi = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gg, <4 x i32> splat (i32 1136623616))
  %i.gj = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gh, <4 x i32> splat (i32 1136623616))
  %i.gk = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.gi, <4 x i32> splat (i32 1136689151))
  %i.gl = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.gj, <4 x i32> splat (i32 1136689151))
  %i.gm = trunc <4 x i32> %i.gk to <4 x i16>
  %i.gn = trunc <4 x i32> %i.gl to <4 x i16>
  %i.go = getelementptr [2 x i8], ptr %invariant.gep.i.us.1, i64 %index127.1 ; 2 uses
  %i.gp = getelementptr i8, ptr %i.go, i64 8
  store <4 x i16> %i.gm, ptr %i.go, align 2, !tbaa !44
  store <4 x i16> %i.gn, ptr %i.gp, align 2, !tbaa !44
  %index.next130.1 = add nuw i64 %index127.1, 8   ; 2 uses
  %i.gq = icmp eq i64 %index.next130.1, %n.vec125.1
  br i1 %i.gq, label %middle.block131.1, label %vector.body126.1, !llvm.loop !463

middle.block131.1:                                ; preds = %vector.body126.1
  %cmp.n132.1 = icmp eq i64 %i.gb, %n.vec125.1
  br i1 %cmp.n132.1, label %._crit_edge.i.us.1, label %.lr.ph80.i.us.preheader.1

.lr.ph80.i.us.preheader.1:                        ; preds = %middle.block131.1, %.lr.ph80.preheader.i.us.1
  %indvars.iv.i35.us.ph.1 = phi i64 [ 0, %.lr.ph80.preheader.i.us.1 ], [ %n.vec125.1, %middle.block131.1 ]
  br label %.lr.ph80.i.us.1

.lr.ph80.i.us.1:                                  ; preds = %.lr.ph80.i.us.1, %.lr.ph80.i.us.preheader.1
  %indvars.iv.i35.us.1 = phi i64 [ %indvars.iv.next.i36.us.1, %.lr.ph80.i.us.1 ], [ %indvars.iv.i35.us.ph.1, %.lr.ph80.i.us.preheader.1 ] ; 3 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i35.us.1
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !56
  %i.gt = fadd float %i.gs, 3.840000e+02
  %i.gu = bitcast float %i.gt to i32
  %i.gv = call i32 @llvm.smax.i32(i32 %i.gu, i32 1136623616)
  %i.gw = call i32 @llvm.umin.i32(i32 %i.gv, i32 1136689151)
  %i.gx = trunc i32 %i.gw to i16
  %gep.i.us.1 = getelementptr [2 x i8], ptr %invariant.gep.i.us.1, i64 %indvars.iv.i35.us.1
  store i16 %i.gx, ptr %gep.i.us.1, align 2, !tbaa !44
  %indvars.iv.next.i36.us.1 = add nuw nsw i64 %indvars.iv.i35.us.1, 1 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.i36.us.1, %umax.1
  br i1 %exitcond.not.1, label %._crit_edge.i.us.1, label %.lr.ph80.i.us.1, !llvm.loop !464

._crit_edge.i.us.1:                               ; preds = %.lr.ph80.i.us.1, %middle.block131.1, %.preheader71.i.us.1
  %indvars.iv.next92.i.us.1 = add nuw nsw i64 %indvars.iv91.i.us.1, 16 ; 2 uses
  %i.gy = icmp samesign ult i64 %indvars.iv.next92.i.us.1, %i.x
  %indvars.iv.next54.1 = add i32 %indvars.iv53.1, -16
  br i1 %i.gy, label %.preheader71.i.us.1, label %compute_stereo_samples.exit.loopexit43.us.1, !llvm.loop !433

compute_stereo_samples.exit.loopexit43.us.1:      ; preds = %._crit_edge.i.us.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %convert_channels_short_interleaved.exit

bb.f:                                             ; preds = %bb.d
  %i.gz = call i32 @llvm.smin.i32(i32 %1, i32 %i.r) ; 9 uses
  %i.ha = icmp sgt i32 %spec.select, 0
  br i1 %i.ha, label %.preheader45.lr.ph.i, label %convert_channels_short_interleaved.exit

.preheader45.lr.ph.i:                             ; preds = %bb.f
  %i.hb = icmp sgt i32 %i.gz, 0
  br i1 %i.hb, label %.preheader45.us.preheader.i, label %.preheader45.lr.ph.split.i

.preheader45.us.preheader.i:                      ; preds = %.preheader45.lr.ph.i
  %i.hc = add nuw i32 %i.gz, 1
  %smax.i = call i32 @llvm.smax.i32(i32 %1, i32 %i.hc)
  %i.hd = xor i32 %i.gz, -1
  %i.he = add i32 %smax.i, %i.hd
  %i.hf = zext i32 %i.he to i64                   ; 2 uses
  %i.hg = shl nuw nsw i64 %i.hf, 1
  %i.hh = add nuw nsw i64 %i.hg, 2
  %i.hi = add nsw i32 %i.gz, -1
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = add nuw nsw i64 %i.hf, %i.hj
  %i.hl = shl nuw nsw i64 %i.hk, 1
  %i.hm = sext i32 %i.n to i64                    ; 6 uses
  %wide.trip.count67.i = zext nneg i32 %spec.select to i64 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.gz to i64 ; 4 uses
  %i.hn = icmp slt i32 %i.r, %1
  br i1 %i.hn, label %.preheader45.us.i.us.preheader, label %.preheader45.us.i.preheader

.preheader45.us.i.preheader:                      ; preds = %.preheader45.us.preheader.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ho = icmp eq i32 %i.gz, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod141 = trunc i32 %i.gz to i1
  br label %.preheader45.us.i

.preheader45.us.i.us.preheader:                   ; preds = %.preheader45.us.preheader.i
  %xtraiter143 = and i64 %wide.trip.count.i, 1
  %i.hp = icmp eq i32 %i.gz, 1
  %unroll_iter147 = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod144.not = icmp eq i64 %xtraiter143, 0
  %lcmp.mod146 = trunc i32 %i.gz to i1
  br label %.preheader45.us.i.us

.preheader45.us.i.us:                             ; preds = %.preheader45.us.i.us.preheader, %..preheader44_crit_edge.us.i.us
  %indvars.iv64.i.us = phi i64 [ %indvars.iv.next65.i.us, %..preheader44_crit_edge.us.i.us ], [ 0, %.preheader45.us.i.us.preheader ] ; 4 uses
  %.03954.us.i.us = phi ptr [ %scevgep.i.us, %..preheader44_crit_edge.us.i.us ], [ %.031, %.preheader45.us.i.us.preheader ] ; 3 uses
  br i1 %i.hp, label %.epil.preheader142, label %.preheader45.us.i.us.new

.preheader45.us.i.us.new:                         ; preds = %.preheader45.us.i.us, %.preheader45.us.i.us.new
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us.1, %.preheader45.us.i.us.new ], [ 0, %.preheader45.us.i.us ] ; 3 uses
  %.14047.us.i.us = phi ptr [ %i.im, %.preheader45.us.i.us.new ], [ %.03954.us.i.us, %.preheader45.us.i.us ] ; 3 uses
  %niter148 = phi i64 [ %niter148.next.1, %.preheader45.us.i.us.new ], [ 0, %.preheader45.us.i.us ]
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i.us
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !62
  %i.hs = getelementptr [4 x i8], ptr %i.hr, i64 %indvars.iv64.i.us
  %i.ht = getelementptr [4 x i8], ptr %i.hs, i64 %i.hm
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !56
  %i.hv = fadd float %i.hu, 3.840000e+02
  %i.hw = bitcast float %i.hv to i32
  %i.hx = call i32 @llvm.smax.i32(i32 %i.hw, i32 1136623616)
  %i.hy = call i32 @llvm.umin.i32(i32 %i.hx, i32 1136689151)
  %i.hz = trunc i32 %i.hy to i16
  %i.ia = getelementptr i8, ptr %.14047.us.i.us, i64 2
  store i16 %i.hz, ptr %.14047.us.i.us, align 2, !tbaa !44
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i.us
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !62
  %i.ie = getelementptr [4 x i8], ptr %i.id, i64 %indvars.iv64.i.us
  %i.if = getelementptr [4 x i8], ptr %i.ie, i64 %i.hm
  %i.ig = load float, ptr %i.if, align 4, !tbaa !56
  %i.ih = fadd float %i.ig, 3.840000e+02
  %i.ii = bitcast float %i.ih to i32
  %i.ij = call i32 @llvm.smax.i32(i32 %i.ii, i32 1136623616)
  %i.ik = call i32 @llvm.umin.i32(i32 %i.ij, i32 1136689151)
  %i.il = trunc i32 %i.ik to i16
  %i.im = getelementptr i8, ptr %.14047.us.i.us, i64 4 ; 3 uses
  store i16 %i.il, ptr %i.ia, align 2, !tbaa !44
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.i.us, 2 ; 2 uses
  %niter148.next.1 = add i64 %niter148, 2         ; 2 uses
  %niter148.ncmp.1 = icmp eq i64 %niter148.next.1, %unroll_iter147
  br i1 %niter148.ncmp.1, label %..preheader44_crit_edge.us.i.us.unr-lcssa, label %.preheader45.us.i.us.new, !llvm.loop !453

..preheader44_crit_edge.us.i.us.unr-lcssa:        ; preds = %.preheader45.us.i.us.new
  br i1 %lcmp.mod144.not, label %..preheader44_crit_edge.us.i.us, label %.epil.preheader142

.epil.preheader142:                               ; preds = %..preheader44_crit_edge.us.i.us.unr-lcssa, %.preheader45.us.i.us
  %indvars.iv.i.us.epil.init = phi i64 [ 0, %.preheader45.us.i.us ], [ %indvars.iv.next.i.us.1, %..preheader44_crit_edge.us.i.us.unr-lcssa ]
  %.14047.us.i.us.epil.init = phi ptr [ %.03954.us.i.us, %.preheader45.us.i.us ], [ %i.im, %..preheader44_crit_edge.us.i.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod146)
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i.us.epil.init
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !62
  %i.ip = getelementptr [4 x i8], ptr %i.io, i64 %indvars.iv64.i.us
  %i.iq = getelementptr [4 x i8], ptr %i.ip, i64 %i.hm
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !56
  %i.is = fadd float %i.ir, 3.840000e+02
  %i.it = bitcast float %i.is to i32
  %i.iu = call i32 @llvm.smax.i32(i32 %i.it, i32 1136623616)
  %i.iv = call i32 @llvm.umin.i32(i32 %i.iu, i32 1136689151)
  %i.iw = trunc i32 %i.iv to i16
  %i.ix = getelementptr i8, ptr %.14047.us.i.us.epil.init, i64 2
  store i16 %i.iw, ptr %.14047.us.i.us.epil.init, align 2, !tbaa !44
  br label %..preheader44_crit_edge.us.i.us

..preheader44_crit_edge.us.i.us:                  ; preds = %..preheader44_crit_edge.us.i.us.unr-lcssa, %.epil.preheader142
  %.lcssa139 = phi ptr [ %i.im, %..preheader44_crit_edge.us.i.us.unr-lcssa ], [ %i.ix, %.epil.preheader142 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %.lcssa139, i8 0, i64 %i.hh, i1 false), !tbaa !44
  %i.iy = getelementptr i8, ptr %.03954.us.i.us, i64 %i.hl
  %scevgep.i.us = getelementptr i8, ptr %i.iy, i64 4
  %indvars.iv.next65.i.us = add nuw nsw i64 %indvars.iv64.i.us, 1 ; 2 uses
  %exitcond68.not.i.us = icmp eq i64 %indvars.iv.next65.i.us, %wide.trip.count67.i
  br i1 %exitcond68.not.i.us, label %convert_channels_short_interleaved.exit, label %.preheader45.us.i.us, !llvm.loop !454

.preheader45.us.i:                                ; preds = %.preheader45.us.i.preheader, %..preheader44_crit_edge.us.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %..preheader44_crit_edge.us.i ], [ 0, %.preheader45.us.i.preheader ] ; 4 uses
  %.03954.us.i = phi ptr [ %.lcssa, %..preheader44_crit_edge.us.i ], [ %.031, %.preheader45.us.i.preheader ] ; 2 uses
  br i1 %i.ho, label %.epil.preheader, label %.preheader45.us.i.new

.preheader45.us.i.new:                            ; preds = %.preheader45.us.i, %.preheader45.us.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader45.us.i.new ], [ 0, %.preheader45.us.i ] ; 3 uses
  %.14047.us.i = phi ptr [ %i.jv, %.preheader45.us.i.new ], [ %.03954.us.i, %.preheader45.us.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader45.us.i.new ], [ 0, %.preheader45.us.i ]
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !62
  %i.jb = getelementptr [4 x i8], ptr %i.ja, i64 %indvars.iv64.i
  %i.jc = getelementptr [4 x i8], ptr %i.jb, i64 %i.hm
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !56
  %i.je = fadd float %i.jd, 3.840000e+02
  %i.jf = bitcast float %i.je to i32
  %i.jg = call i32 @llvm.smax.i32(i32 %i.jf, i32 1136623616)
end_hunk_3
