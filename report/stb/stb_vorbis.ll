Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_vorbis?download=true
inline.NumInlined: 339
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 47
begin_hunk_0_@compute_sorted_huffman:bb.a
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = load i32, ptr %i.c, align 8, !tbaa !60
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %bb.c, label %.loopexit, !llvm.loop !166

.loopexit:                                        ; preds = %bb.c, %include_in_sort.exit.thread, %.preheader96, %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2096 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !59
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2112 ; 4 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !60
  %i.ao = sext i32 %i.an to i64
  tail call void @qsort(ptr noundef %i.al, i64 noundef %i.ao, i64 noundef 4, ptr noundef nonnull @uint32_compare) #30
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !59
  %i.aq = load i32, ptr %i.am, align 8, !tbaa !60
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.ar
  store i32 -1, ptr %i.as, align 4, !tbaa !46
  %i.at = load i8, ptr %i.a, align 1, !tbaa !54
  %.not66 = icmp eq i8 %i.at, 0
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.in = select i1 %.not66, ptr %i.au, ptr %i.am
  %i.av = load i32, ptr %.in, align 4, !tbaa !46  ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph107, label %._crit_edge108

.lr.ph107:                                        ; preds = %.loopexit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2104 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i32 %i.av to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph107, %include_in_sort.exit75.thread
  %indvars.iv114 = phi i64 [ 0, %.lr.ph107 ], [ %indvars.iv.next115, %include_in_sort.exit75.thread ] ; 6 uses
  %i.ba = load i8, ptr %i.a, align 1, !tbaa !54
  %.not67 = icmp eq i8 %i.ba, 0                   ; 2 uses
  br i1 %.not67, label %bb.e, label %include_in_sort.exit75.thread90

include_in_sort.exit75.thread90:                  ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv114
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !46
  %.pn = zext i32 %i.bc to i64
  %.in68.in = getelementptr inbounds nuw i8, ptr %1, i64 %.pn
  %.in68 = load i8, ptr %.in68.in, align 1, !tbaa !49
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %.in68.in83 = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv114
  %.in6884 = load i8, ptr %.in68.in83, align 1, !tbaa !49 ; 2 uses
  %i.bd = add i8 %.in6884, 1
  %or.cond95 = icmp ult i8 %i.bd, 12
  br i1 %or.cond95, label %include_in_sort.exit75.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %include_in_sort.exit75.thread90
  %.in688594 = phi i8 [ %.in68, %include_in_sort.exit75.thread90 ], [ %.in6884, %bb.e ]
  %i.be = load ptr, ptr %i.ax, align 8, !tbaa !55
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv114
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !46
  %i.bh = tail call noundef i32 @llvm.bitreverse.i32(i32 %i.bg)
  %i.bi = load i32, ptr %i.am, align 8, !tbaa !60 ; 2 uses
  %i.bj = icmp sgt i32 %i.bi, 1
  br i1 %i.bj, label %.lr.ph104, label %._crit_edge

.lr.ph104:                                        ; preds = %bb.f
  %i.bk = load ptr, ptr %i.ak, align 8, !tbaa !59
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph104, %bb.g
  %.0103 = phi i32 [ %i.bi, %.lr.ph104 ], [ %.1, %bb.g ] ; 2 uses
  %.059102 = phi i32 [ 0, %.lr.ph104 ], [ %.160, %bb.g ] ; 2 uses
  %i.bl = lshr i32 %.0103, 1                      ; 3 uses
  %i.bm = add nsw i32 %i.bl, %.059102             ; 2 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !46
  %.not71 = icmp ugt i32 %i.bp, %i.bh             ; 2 uses
  %i.bq = sub nuw nsw i32 %.0103, %i.bl
  %.160 = select i1 %.not71, i32 %.059102, i32 %i.bm ; 2 uses
  %.1 = select i1 %.not71, i32 %i.bl, i32 %i.bq   ; 2 uses
  %i.br = icmp samesign ugt i32 %.1, 1
  br i1 %i.br, label %bb.g, label %._crit_edge.loopexit, !llvm.loop !167

._crit_edge.loopexit:                             ; preds = %bb.g
  %i.bs = sext i32 %.160 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %.059.lcssa = phi i64 [ 0, %bb.f ], [ %i.bs, %._crit_edge.loopexit ] ; 3 uses
  br i1 %.not67, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv114
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !46
  %i.bv = load ptr, ptr %i.ay, align 8, !tbaa !62
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %.059.lcssa
  store i32 %i.bu, ptr %i.bw, align 4, !tbaa !46
  %i.bx = load ptr, ptr %i.az, align 8, !tbaa !56
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %.059.lcssa
  store i8 %.in688594, ptr %i.by, align 1, !tbaa !49
  br label %include_in_sort.exit75.thread

bb.i:                                             ; preds = %._crit_edge
  %i.bz = load ptr, ptr %i.ay, align 8, !tbaa !62
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %.059.lcssa
  %i.cb = trunc nuw nsw i64 %indvars.iv114 to i32
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !46
  br label %include_in_sort.exit75.thread

include_in_sort.exit75.thread:                    ; preds = %bb.e, %bb.h, %bb.i
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge108, label %bb.d, !llvm.loop !168

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
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.c = uitofp nneg i32 %0 to double
  %i.d = insertelement <2 x double> poison, double %i.c, i64 0
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.b

.preheader:                                       ; preds = %bb.b, %bb.a
  %4 = ashr i32 %0, 3                             ; 2 uses
  %i.f = icmp sgt i32 %4, 0
  br i1 %i.f, label %.lr.ph39, label %._crit_edge

.lr.ph39:                                         ; preds = %.preheader
  %i.g = uitofp nneg i32 %0 to double
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %.03335 = phi i32 [ 0, %.lr.ph ], [ %i.ah, %bb.b ] ; 2 uses
  %i.h = shl nuw nsw i32 %.03335, 2
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.j = or disjoint i64 %indvars.iv, 1           ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.j
  %i.l = trunc nuw nsw i64 %i.j to i32
  %i.m = uitofp nneg i32 %i.h to double
  %i.n = uitofp nneg i32 %i.l to double
  %i.o = insertelement <2 x double> poison, double %i.n, i64 0
  %i.p = insertelement <2 x double> %i.o, double %i.m, i64 1
  %i.q = fmul nnan <2 x double> %i.p, splat (double f0x400921FB54442D18)
  %i.r = fdiv <2 x double> %i.q, %i.e             ; 2 uses
  %i.s = extractelement <2 x double> %i.r, i64 1  ; 2 uses
  %i.t = tail call double @cos(double noundef %i.s) #30
  %i.u = fptrunc double %i.t to float
  store float %i.u, ptr %i.i, align 4, !tbaa !63
  %i.v = tail call double @sin(double noundef %i.s) #30
  %i.w = fptrunc double %i.v to float
  %i.x = fneg float %i.w
  store float %i.x, ptr %i.k, align 4, !tbaa !63
  %i.y = extractelement <2 x double> %i.r, i64 0
  %i.z = fmul double %i.y, 5.000000e-01           ; 2 uses
  %i.aa = tail call double @cos(double noundef %i.z) #30
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ac = tail call double @sin(double noundef %i.z) #30
  %i.ad = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %i.ac, i64 1
  %i.af = fptrunc <2 x double> %i.ae to <2 x float>
  %i.ag = fmul <2 x float> %i.af, splat (float 5.000000e-01)
  store <2 x float> %i.ag, ptr %i.ab, align 4, !tbaa !63
  %i.ah = add nuw nsw i32 %.03335, 1              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not = icmp eq i32 %i.ah, %i.a
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !1

bb.c:                                             ; preds = %.lr.ph39, %bb.c
  %indvars.iv41 = phi i64 [ 0, %.lr.ph39 ], [ %indvars.iv.next42, %bb.c ] ; 3 uses
  %.13437 = phi i32 [ 0, %.lr.ph39 ], [ %i.au, %bb.c ]
  %i.ai = or disjoint i64 %indvars.iv41, 1        ; 2 uses
  %.tr = trunc nuw nsw i64 %i.ai to i32
  %i.aj = shl nuw nsw i32 %.tr, 1
  %i.ak = uitofp nneg i32 %i.aj to double
  %i.al = fmul nnan double %i.ak, f0x400921FB54442D18
  %i.am = fdiv double %i.al, %i.g                 ; 2 uses
  %i.an = tail call double @cos(double noundef %i.am) #30
  %i.ao = fptrunc double %i.an to float
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv41
  store float %i.ao, ptr %i.ap, align 4, !tbaa !63
  %i.aq = tail call double @sin(double noundef %i.am) #30
  %i.ar = fptrunc double %i.aq to float
  %i.as = fneg float %i.ar
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ai
  store float %i.as, ptr %i.at, align 4, !tbaa !63
  %i.au = add nuw nsw i32 %.13437, 1              ; 2 uses
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 2
  %exitcond44.not = icmp eq i32 %i.au, %4
  br i1 %exitcond44.not, label %._crit_edge, label %bb.c, !llvm.loop !2

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
  store float %i.p, ptr %i.q, align 4, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !3

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
  %i.f = load i8, ptr %i.e, align 1, !tbaa !49
  %i.g = sext i8 %i.f to i32
  br label %ilog.exit

bb.e:                                             ; preds = %bb.c
  %i.h = icmp samesign ult i32 %0, 512
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = lshr i32 %0, 5
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !49
  %i.m = sext i8 %i.l to i32
  %i.n = add nsw i32 %i.m, 5
  br label %ilog.exit

bb.g:                                             ; preds = %bb.e
  %i.o = lshr i32 %0, 10
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !49
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
  %i.z = load i8, ptr %i.y, align 1, !tbaa !49
  %i.aa = sext i8 %i.z to i32
  %i.ab = add nsw i32 %i.aa, 15
  br label %ilog.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = lshr i32 %0, 20
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !49
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
  %i.am = load i8, ptr %i.al, align 1, !tbaa !49
  %i.an = sext i8 %i.am to i32
  %i.ao = add nsw i32 %i.an, 25
  br label %ilog.exit

bb.n:                                             ; preds = %bb.l
  %i.ap = lshr i32 %0, 30
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !49
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
  store <8 x i16> %i.bb, ptr %i.bc, align 2, !tbaa !58
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !169

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
  %.tr = trunc i32 %i.bg to i16
  %i.bh = shl i16 %.tr, 2
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.bh, ptr %i.bi, align 2, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !170

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
  %i.e = load i32, ptr %i.d, align 8, !tbaa !42
  %i.f = add i32 %i.e, %i.c                       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43   ; 6 uses
  %.not.i = icmp eq ptr %i.h, null                ; 3 uses
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !44   ; 3 uses
  %i.k = add nsw i32 %i.j, %i.c                   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.m = load i32, ptr %i.l, align 4, !tbaa !45   ; 3 uses
  %i.n = icmp sgt i32 %i.k, %i.m
  br i1 %i.n, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = sext i32 %i.j to i64
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %i.o
  store i32 %i.k, ptr %i.i, align 8, !tbaa !44
  %.pre = add nsw i32 %i.k, %i.c
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %.not17.i = icmp eq i32 %i.c, 0
  br i1 %.not17.i, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.r = sext i32 %1 to i64                       ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.r ; 2 uses
  store ptr null, ptr %i.s, align 8, !tbaa !64
  br label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.b
  %.pre-phi = phi i32 [ %.pre, %bb.c ], [ %i.k, %bb.b ] ; 3 uses
  %i.t = phi i32 [ %i.k, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  %.1.i = phi ptr [ %i.p, %bb.c ], [ null, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.v = sext i32 %1 to i64                       ; 4 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.v ; 3 uses
  store ptr %.1.i, ptr %i.w, align 8, !tbaa !64
  %i.x = add i32 %i.f, %i.c
  %i.y = icmp sgt i32 %.pre-phi, %i.m
  br i1 %i.y, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = sext i32 %i.t to i64
  %i.aa = getelementptr inbounds i8, ptr %i.h, i64 %i.z
  store i32 %.pre-phi, ptr %i.i, align 8, !tbaa !44
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ab = sext i32 %i.c to i64                    ; 2 uses
  %i.ac = tail call noalias ptr @malloc(i64 noundef %i.ab) #29
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.ae = sext i32 %1 to i64                      ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ae ; 2 uses
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !64
  %i.ag = add i32 %i.f, %i.c
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.ab) #29
  br label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.ai = phi i32 [ %i.t, %bb.e ], [ %.pre-phi, %bb.f ] ; 2 uses
  %.1.i59 = phi ptr [ null, %bb.e ], [ %i.aa, %bb.f ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.v
  store ptr %.1.i59, ptr %i.ak, align 8, !tbaa !64
  %i.al = add nsw i32 %2, 4
  %i.am = and i32 %i.al, -8                       ; 2 uses
  %i.an = add i32 %i.x, %i.am                     ; 3 uses
  store i32 %i.an, ptr %i.d, align 8, !tbaa !42
  %i.ao = add nsw i32 %i.ai, %i.am                ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, %i.m
  br i1 %i.ap, label %setup_malloc.exit65, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = sext i32 %i.ai to i64
  %i.ar = getelementptr inbounds i8, ptr %i.h, i64 %i.aq
  store i32 %i.ao, ptr %i.i, align 8, !tbaa !44
  br label %setup_malloc.exit65

bb.j:                                             ; preds = %.thread, %bb.g
  %.sink = phi i32 [ %i.f, %.thread ], [ %i.ag, %bb.g ]
  %.ph87 = phi ptr [ %i.s, %.thread ], [ %i.af, %bb.g ] ; 2 uses
  %.ph88 = phi i64 [ %i.r, %.thread ], [ %i.ae, %bb.g ] ; 3 uses
  %.1.i59.ph = phi ptr [ null, %.thread ], [ %i.ah, %bb.g ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.at = getelementptr inbounds [8 x i8], ptr %i.as, i64 %.ph88
  store ptr %.1.i59.ph, ptr %i.at, align 8, !tbaa !64
  %i.au = add nsw i32 %2, 4
  %i.av = and i32 %i.au, -8                       ; 3 uses
  %i.aw = add i32 %.sink, %i.av                   ; 3 uses
  store i32 %i.aw, ptr %i.d, align 8, !tbaa !42
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
  store ptr %.1.i63, ptr %i.bd, align 8, !tbaa !64
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !64 ; 3 uses
  %.not = icmp eq ptr %i.be, null
  br i1 %.not, label %compute_bitreverse.exit.sink.split, label %bb.l

bb.l:                                             ; preds = %setup_malloc.exit65
  %.not54 = icmp eq ptr %.1.i5990, null
  %.not55 = icmp eq ptr %.1.i63, null
  %or.cond = select i1 %.not54, i1 true, i1 %.not55
  br i1 %or.cond, label %compute_bitreverse.exit.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = ashr i32 %2, 2                          ; 3 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.m
  %i.bh = uitofp nneg i32 %2 to double
  %i.bi = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.n

.preheader.i:                                     ; preds = %bb.n, %bb.m
  %3 = ashr i32 %2, 3                             ; 4 uses
  %i.bk = icmp sgt i32 %3, 0                      ; 2 uses
  br i1 %i.bk, label %.lr.ph39.i, label %compute_twiddle_factors.exit

.lr.ph39.i:                                       ; preds = %.preheader.i
  %i.bl = uitofp nneg i32 %2 to double
  br label %bb.o

bb.n:                                             ; preds = %bb.n, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.n ] ; 4 uses
  %.03335.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cm, %bb.n ] ; 2 uses
  %i.bm = shl nuw nsw i32 %.03335.i, 2
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i
  %i.bo = or disjoint i64 %indvars.iv.i, 1        ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bo
  %i.bq = trunc nuw nsw i64 %i.bo to i32
  %i.br = uitofp nneg i32 %i.bm to double
  %i.bs = uitofp nneg i32 %i.bq to double
  %i.bt = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.bu = insertelement <2 x double> %i.bt, double %i.br, i64 1
  %i.bv = fmul nnan <2 x double> %i.bu, splat (double f0x400921FB54442D18)
  %i.bw = fdiv <2 x double> %i.bv, %i.bj          ; 2 uses
  %i.bx = extractelement <2 x double> %i.bw, i64 1 ; 2 uses
  %i.by = tail call double @cos(double noundef %i.bx) #30
  %i.bz = fptrunc double %i.by to float
  store float %i.bz, ptr %i.bn, align 4, !tbaa !63
  %i.ca = tail call double @sin(double noundef %i.bx) #30
  %i.cb = fptrunc double %i.ca to float
  %i.cc = fneg float %i.cb
  store float %i.cc, ptr %i.bp, align 4, !tbaa !63
  %i.cd = extractelement <2 x double> %i.bw, i64 0
  %i.ce = fmul double %i.cd, 5.000000e-01         ; 2 uses
  %i.cf = tail call double @cos(double noundef %i.ce) #30
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.1.i5990, i64 %indvars.iv.i
  %i.ch = tail call double @sin(double noundef %i.ce) #30
  %i.ci = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %i.ch, i64 1
  %i.ck = fptrunc <2 x double> %i.cj to <2 x float>
  %i.cl = fmul <2 x float> %i.ck, splat (float 5.000000e-01)
  store <2 x float> %i.cl, ptr %i.cg, align 4, !tbaa !63
  %i.cm = add nuw nsw i32 %.03335.i, 1            ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2
  %exitcond.not.i = icmp eq i32 %i.cm, %i.bf
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.n, !llvm.loop !1

bb.o:                                             ; preds = %bb.o, %.lr.ph39.i
  %indvars.iv41.i = phi i64 [ 0, %.lr.ph39.i ], [ %indvars.iv.next42.i, %bb.o ] ; 3 uses
  %.13437.i = phi i32 [ 0, %.lr.ph39.i ], [ %i.cz, %bb.o ]
  %i.cn = or disjoint i64 %indvars.iv41.i, 1      ; 2 uses
  %.tr.i = trunc nuw nsw i64 %i.cn to i32
  %i.co = shl nuw nsw i32 %.tr.i, 1
  %i.cp = uitofp nneg i32 %i.co to double
  %i.cq = fmul nnan double %i.cp, f0x400921FB54442D18
  %i.cr = fdiv double %i.cq, %i.bl                ; 2 uses
  %i.cs = tail call double @cos(double noundef %i.cr) #30
  %i.ct = fptrunc double %i.cs to float
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.1.i63, i64 %indvars.iv41.i
  store float %i.ct, ptr %i.cu, align 4, !tbaa !63
  %i.cv = tail call double @sin(double noundef %i.cr) #30
  %i.cw = fptrunc double %i.cv to float
  %i.cx = fneg float %i.cw
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.1.i63, i64 %i.cn
  store float %i.cx, ptr %i.cy, align 4, !tbaa !63
  %i.cz = add nuw nsw i32 %.13437.i, 1            ; 2 uses
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 2
  %exitcond44.not.i = icmp eq i32 %i.cz, %3
  br i1 %exitcond44.not.i, label %compute_twiddle_factors.exit, label %bb.o, !llvm.loop !2

compute_twiddle_factors.exit:                     ; preds = %bb.o, %.preheader.i
  %i.da = add i32 %i.az, %i.c                     ; 2 uses
  store i32 %i.da, ptr %i.d, align 8, !tbaa !42
  br i1 %.not.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %compute_twiddle_factors.exit
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !44 ; 2 uses
  %i.dd = add nsw i32 %i.dc, %i.c                 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.df = load i32, ptr %i.de, align 4, !tbaa !45
  %i.dg = icmp sgt i32 %i.dd, %i.df
  br i1 %i.dg, label %compute_bitreverse.exit.sink.split.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dh = sext i32 %i.dc to i64
  %i.di = getelementptr inbounds i8, ptr %i.h, i64 %i.dh
  store i32 %i.dd, ptr %i.db, align 8, !tbaa !44
  br label %setup_malloc.exit69

bb.r:                                             ; preds = %compute_twiddle_factors.exit
  %.not17.i68 = icmp eq i32 %i.c, 0
  br i1 %.not17.i68, label %compute_bitreverse.exit.sink.split.sink.split, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dj = sext i32 %i.c to i64
  %i.dk = tail call noalias ptr @malloc(i64 noundef %i.dj) #29
  br label %setup_malloc.exit69

setup_malloc.exit69:                              ; preds = %bb.q, %bb.s
  %.1.i67 = phi ptr [ %i.dk, %bb.s ], [ %i.di, %bb.q ] ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.ba
  store ptr %.1.i67, ptr %i.dm, align 8, !tbaa !64
  %.not56 = icmp eq ptr %.1.i67, null
  br i1 %.not56, label %compute_bitreverse.exit.sink.split, label %bb.t

bb.t:                                             ; preds = %setup_malloc.exit69
  %i.dn = ashr i32 %2, 1                          ; 3 uses
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.lr.ph.i70, label %compute_window.exit

.lr.ph.i70:                                       ; preds = %bb.t
  %i.dp = uitofp nneg i32 %i.dn to double
  %wide.trip.count.i = zext nneg i32 %i.dn to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i70
  %indvars.iv.i71 = phi i64 [ 0, %.lr.ph.i70 ], [ %indvars.iv.next.i72, %bb.u ] ; 3 uses
  %i.dq = trunc nuw nsw i64 %indvars.iv.i71 to i32
  %i.dr = uitofp nneg i32 %i.dq to double
  %i.ds = fadd nnan double %i.dr, 5.000000e-01
  %i.dt = fdiv nnan double %i.ds, %i.dp
  %i.du = fmul nnan double %i.dt, 5.000000e-01
  %i.dv = fmul nnan double %i.du, f0x400921FB54442D18
  %i.dw = tail call double @sin(double noundef %i.dv) #30
  %i.dx = fptrunc double %i.dw to float           ; 2 uses
  %i.dy = fmul float %i.dx, %i.dx
  %i.dz = fpext float %i.dy to double
  %i.ea = fmul double %i.dz, f0x3FF921FB54442D18
  %i.eb = tail call double @sin(double noundef %i.ea) #30
  %i.ec = fptrunc double %i.eb to float
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.1.i67, i64 %indvars.iv.i71
  store float %i.ec, ptr %i.ed, align 4, !tbaa !63
  %indvars.iv.next.i72 = add nuw nsw i64 %indvars.iv.i71, 1 ; 2 uses
  %exitcond.not.i73 = icmp eq i64 %indvars.iv.next.i72, %wide.trip.count.i
  br i1 %exitcond.not.i73, label %compute_window.exit, label %bb.u, !llvm.loop !3

compute_window.exit:                              ; preds = %bb.u, %bb.t
  %i.ee = add nsw i32 %i.bf, 6
  %i.ef = and i32 %i.ee, -8                       ; 4 uses
  %i.eg = add i32 %i.da, %i.ef
  store i32 %i.eg, ptr %i.d, align 8, !tbaa !42
  br i1 %.not.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %compute_window.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !44 ; 2 uses
  %i.ej = add nsw i32 %i.ei, %i.ef                ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !45
  %i.em = icmp sgt i32 %i.ej, %i.el
  br i1 %i.em, label %compute_bitreverse.exit.sink.split.sink.split, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.en = sext i32 %i.ei to i64
  %i.eo = getelementptr inbounds i8, ptr %i.h, i64 %i.en
  store i32 %i.ej, ptr %i.eh, align 8, !tbaa !44
  br label %setup_malloc.exit77

bb.x:                                             ; preds = %compute_window.exit
  %.not17.i76 = icmp eq i32 %i.ef, 0
  br i1 %.not17.i76, label %compute_bitreverse.exit.sink.split.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ep = sext i32 %i.ef to i64
  %i.eq = tail call noalias ptr @malloc(i64 noundef %i.ep) #29
  br label %setup_malloc.exit77

setup_malloc.exit77:                              ; preds = %bb.w, %bb.y
  %.1.i75 = phi ptr [ %i.eq, %bb.y ], [ %i.eo, %bb.w ] ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.es = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.ba
  store ptr %.1.i75, ptr %i.es, align 8, !tbaa !66
  %.not57 = icmp eq ptr %.1.i75, null
  br i1 %.not57, label %compute_bitreverse.exit.sink.split, label %bb.z

bb.z:                                             ; preds = %setup_malloc.exit77
  %i.et = icmp slt i32 %2, 0
  br i1 %i.et, label %ilog.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eu = icmp samesign ult i32 %2, 16384
  br i1 %i.eu, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.ev = icmp samesign ult i32 %2, 16
  br i1 %i.ev, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ew = zext nneg i32 %2 to i64
  %i.ex = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !49
  %i.ez = sext i8 %i.ey to i32
  br label %ilog.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.fa = icmp samesign ult i32 %2, 512
  br i1 %i.fa, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fb = lshr i32 %2, 5
  %i.fc = zext nneg i32 %i.fb to i64
end_hunk_0
begin_hunk_1_@imdct_step3_inner_s_loop:bb.a
; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @imdct_step3_inner_s_loop_ld654(i32 noundef %0, ptr nofree noundef captures(address) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #21 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds [4 x i8], ptr %1, i64 %i.a ; 2 uses
  %i.c = shl nsw i32 %0, 4
  %i.d = sext i32 %i.c to i64
  %.neg = mul nsw i64 %i.d, -4
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 %.neg
  %i.f = icmp sgt i32 %0, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = ashr i32 %4, 3
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %3, i64 %i.h
  %i.j = load float, ptr %i.i, align 4, !tbaa !63 ; 2 uses
  %i.k = fneg float %i.j
  %i.l = insertelement <2 x float> poison, float %i.j, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.n = insertelement <2 x float> %i.m, float %i.k, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.075 = phi ptr [ %i.b, %.lr.ph ], [ %i.cs, %bb.b ] ; 13 uses
  %i.o = getelementptr inbounds i8, ptr %.075, i64 -4
  %i.p = getelementptr inbounds i8, ptr %.075, i64 -36
  %i.q = getelementptr inbounds i8, ptr %.075, i64 -8
  %i.r = getelementptr inbounds i8, ptr %.075, i64 -40
  %i.s = getelementptr inbounds i8, ptr %.075, i64 -12 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.075, i64 -44 ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.075, i64 -20
  %i.v = getelementptr inbounds i8, ptr %.075, i64 -52
  %i.w = getelementptr inbounds i8, ptr %.075, i64 -24
  %i.x = getelementptr inbounds i8, ptr %.075, i64 -56
  %i.y = getelementptr inbounds i8, ptr %.075, i64 -28 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.075, i64 -60 ; 2 uses
  %i.aa = load <2 x float>, ptr %i.o, align 4, !tbaa !63 ; 2 uses
  %i.ab = load <2 x float>, ptr %i.p, align 4, !tbaa !63 ; 2 uses
  %i.ac = fsub <2 x float> %i.aa, %i.ab           ; 2 uses
  %i.ad = load <2 x float>, ptr %i.s, align 4, !tbaa !63 ; 2 uses
  %i.ae = load float, ptr %i.q, align 4, !tbaa !63
  %i.af = load <2 x float>, ptr %i.t, align 4, !tbaa !63 ; 2 uses
  %i.ag = load float, ptr %i.r, align 4, !tbaa !63
  %i.ah = load <2 x float>, ptr %i.y, align 4, !tbaa !63 ; 2 uses
  %i.ai = load float, ptr %i.w, align 4, !tbaa !63
  %i.aj = load <2 x float>, ptr %i.z, align 4, !tbaa !63 ; 2 uses
  %i.ak = load float, ptr %i.x, align 4, !tbaa !63
  %i.al = shufflevector <2 x float> %i.ad, <2 x float> %i.ah, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.am = shufflevector <2 x float> %i.af, <2 x float> %i.aj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.an = fsub <4 x float> %i.al, %i.am           ; 4 uses
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ap = shufflevector <4 x float> %i.an, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.aq = fadd <2 x float> %i.ao, %i.ap
  %i.ar = fsub <2 x float> %i.ao, %i.ap
  %i.as = shufflevector <2 x float> %i.aq, <2 x float> %i.ar, <2 x i32> <i32 0, i32 3>
  %i.at = fmul <2 x float> %i.m, %i.as            ; 2 uses
  %i.au = load <2 x float>, ptr %i.u, align 4, !tbaa !63 ; 2 uses
  %i.av = load <2 x float>, ptr %i.v, align 4, !tbaa !63 ; 2 uses
  %i.aw = fsub <2 x float> %i.au, %i.av
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ay = shufflevector <4 x float> %i.an, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.az = shufflevector <4 x float> %i.an, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.ba = fsub <2 x float> %i.ay, %i.az
  %i.bb = fadd <2 x float> %i.ay, %i.az
  %i.bc = shufflevector <2 x float> %i.ba, <2 x float> %i.bb, <2 x i32> <i32 0, i32 3>
  %i.bd = fmul <2 x float> %i.n, %i.bc            ; 2 uses
  %i.be = fadd <2 x float> %i.aa, %i.ab           ; 2 uses
  %i.bf = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bg = insertelement <2 x float> %i.bf, float %i.ae, i64 0
  %i.bh = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bi = insertelement <2 x float> %i.bh, float %i.ag, i64 0
  %i.bj = fadd <2 x float> %i.bg, %i.bi           ; 2 uses
  %i.bk = fadd <2 x float> %i.au, %i.av           ; 2 uses
  %i.bl = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bm = insertelement <2 x float> %i.bl, float %i.ai, i64 0
  %i.bn = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bo = insertelement <2 x float> %i.bn, float %i.ak, i64 0
  %i.bp = fadd <2 x float> %i.bm, %i.bo           ; 2 uses
  %i.bq = fsub <2 x float> %i.bj, %i.bp
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.bs = fsub <2 x float> %i.be, %i.bk
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.bu = fadd <2 x float> %i.be, %i.bk
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.bw = fadd <2 x float> %i.bj, %i.bp
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.by = fsub <4 x float> %i.bv, %i.bx
  %i.bz = fadd <4 x float> %i.bv, %i.bx
  %i.ca = shufflevector <4 x float> %i.by, <4 x float> %i.bz, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.ca, ptr %i.s, align 4, !tbaa !63
  %i.cb = fadd <4 x float> %i.bt, %i.br
  %i.cc = fsub <4 x float> %i.bt, %i.br
  %i.cd = shufflevector <4 x float> %i.cb, <4 x float> %i.cc, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x float> %i.cd, ptr %i.y, align 4, !tbaa !63
  %i.ce = fsub <2 x float> %i.at, %i.bd
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.cg = fadd <2 x float> %i.ac, %i.ax           ; 2 uses
  %i.ch = fsub <2 x float> %i.ac, %i.ax           ; 2 uses
  %i.ci = shufflevector <2 x float> %i.cg, <2 x float> %i.ch, <4 x i32> <i32 0, i32 3, i32 0, i32 3> ; 2 uses
  %i.cj = shufflevector <2 x float> %i.ch, <2 x float> %i.cg, <4 x i32> <i32 0, i32 3, i32 0, i32 3> ; 2 uses
  %i.ck = fadd <2 x float> %i.at, %i.bd
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.cm = fsub <4 x float> %i.cj, %i.cl
  %i.cn = fadd <4 x float> %i.cj, %i.cl
  %i.co = shufflevector <4 x float> %i.cm, <4 x float> %i.cn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.co, ptr %i.t, align 4, !tbaa !63
  %i.cp = fadd <4 x float> %i.ci, %i.cf
  %i.cq = fsub <4 x float> %i.ci, %i.cf
  %i.cr = shufflevector <4 x float> %i.cp, <4 x float> %i.cq, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x float> %i.cr, ptr %i.z, align 4, !tbaa !63
  %i.cs = getelementptr inbounds i8, ptr %.075, i64 -64 ; 2 uses
  %i.ct = icmp ugt ptr %i.cs, %i.e
  br i1 %i.ct, label %bb.b, label %._crit_edge, !llvm.loop !239

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @inverse_mdct(ptr nofree noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #24 {
bb.a:
  %i.a = ashr i32 %1, 1                           ; 6 uses
  %i.b = ashr i32 %1, 2                           ; 2 uses
  %i.c = ashr i32 %1, 3                           ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 148 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !45   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = shl i32 %i.a, 2
  %i.i = add nsw i32 %i.h, 4
  %i.j = and i32 %i.i, -8
  %i.k = sub nsw i32 %i.e, %i.j                   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !44
  %i.n = icmp slt i32 %i.k, %i.m
  br i1 %i.n, label %setup_temp_malloc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.k, ptr %i.d, align 4, !tbaa !45
  %i.o = sext i32 %i.k to i64
  %i.p = getelementptr inbounds i8, ptr %i.g, i64 %i.o
  br label %setup_temp_malloc.exit

bb.d:                                             ; preds = %bb.a
  %i.q = sext i32 %i.a to i64
  %i.r = shl nsw i64 %i.q, 2
  %i.s = alloca i8, i64 %i.r, align 16
  br label %setup_temp_malloc.exit

setup_temp_malloc.exit:                           ; preds = %bb.c, %bb.b, %bb.d
  %i.t = phi ptr [ %i.s, %bb.d ], [ null, %bb.b ], [ %i.p, %bb.c ] ; 13 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 1416
  %i.v = sext i32 %3 to i64                       ; 4 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !64   ; 19 uses
  %i.y = sext i32 %i.a to i64                     ; 5 uses
  %i.z = getelementptr [4 x i8], ptr %i.t, i64 %i.y ; 10 uses
  %.idx = shl nsw i64 %i.y, 2                     ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %.idx ; 3 uses
  %.0388423 = getelementptr i8, ptr %i.z, i64 -8  ; 5 uses
  %.not409424 = icmp eq i32 %i.a, 0
  br i1 %.not409424, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %setup_temp_malloc.exit
  %i.ab = add nsw i64 %.idx, -16                  ; 2 uses
  %i.ac = lshr i64 %i.ab, 4
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 128
  br i1 %min.iters.check, label %.lr.ph.preheader534, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ae = add nsw i64 %.idx, -8
  %i.af = add nsw i64 %.idx, -16                  ; 2 uses
  %i.ag = lshr exact i64 %i.af, 1
  %i.ah = and i64 %i.ag, 9223372036854775800      ; 2 uses
  %i.ai = sub i64 %i.ae, %i.ah
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.ai ; 2 uses
  %i.aj = or i64 %i.af, 12
  %scevgep513 = getelementptr i8, ptr %0, i64 %i.aj
  %i.ak = getelementptr i8, ptr %i.x, i64 %i.ah
  %scevgep514 = getelementptr i8, ptr %i.ak, i64 8
  %bound0 = icmp ult ptr %scevgep, %scevgep513
  %bound1 = icmp ult ptr %0, %i.z
  %found.conflict = and i1 %bound0, %bound1
  %bound0515 = icmp ult ptr %scevgep, %scevgep514
  %bound1516 = icmp ult ptr %i.x, %i.z
  %found.conflict517 = and i1 %bound0515, %bound1516
  %conflict.rdx = or i1 %found.conflict, %found.conflict517
  br i1 %conflict.rdx, label %.lr.ph.preheader534, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.al = and i64 %i.ad, 3                        ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  %i.an = select i1 %i.am, i64 4, i64 %i.al
  %n.vec = sub nsw i64 %i.ad, %i.an               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ao = mul i64 %index, -8
  %next.gep = getelementptr i8, ptr %.0388423, i64 %i.ao
  %i.ap = shl i64 %index, 4                       ; 4 uses
  %next.gep518 = getelementptr i8, ptr %0, i64 %i.ap ; 3 uses
  %i.aq = getelementptr i8, ptr %0, i64 %i.ap     ; 2 uses
  %next.gep519 = getelementptr i8, ptr %i.aq, i64 16 ; 2 uses
  %i.ar = getelementptr i8, ptr %0, i64 %i.ap     ; 2 uses
  %next.gep520 = getelementptr i8, ptr %i.ar, i64 32 ; 2 uses
  %i.as = getelementptr i8, ptr %0, i64 %i.ap     ; 2 uses
  %next.gep521 = getelementptr i8, ptr %i.as, i64 48 ; 2 uses
  %i.at = shl i64 %index, 3
  %next.gep522 = getelementptr i8, ptr %i.x, i64 %i.at ; 2 uses
  %i.au = load float, ptr %next.gep518, align 4, !tbaa !63, !alias.scope !255
  %i.av = load float, ptr %next.gep519, align 4, !tbaa !63, !alias.scope !255
  %i.aw = load float, ptr %next.gep520, align 4, !tbaa !63, !alias.scope !255
  %i.ax = load float, ptr %next.gep521, align 4, !tbaa !63, !alias.scope !255
  %i.ay = insertelement <4 x float> poison, float %i.au, i64 0
  %i.az = insertelement <4 x float> %i.ay, float %i.av, i64 1
  %i.ba = insertelement <4 x float> %i.az, float %i.aw, i64 2
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 3
  %wide.vec = load <8 x float>, ptr %next.gep522, align 4, !tbaa !63, !alias.scope !256 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bc = getelementptr inbounds nuw i8, ptr %next.gep518, i64 8 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.aq, i64 24     ; 2 uses
  %i.be = getelementptr i8, ptr %i.ar, i64 40     ; 2 uses
  %i.bf = getelementptr i8, ptr %i.as, i64 56     ; 2 uses
  %i.bg = load float, ptr %i.bc, align 4, !tbaa !63, !alias.scope !255
  %i.bh = load float, ptr %i.bd, align 4, !tbaa !63, !alias.scope !255
  %i.bi = load float, ptr %i.be, align 4, !tbaa !63, !alias.scope !255
  %i.bj = load float, ptr %i.bf, align 4, !tbaa !63, !alias.scope !255
  %i.bk = insertelement <4 x float> poison, float %i.bg, i64 0
  %i.bl = insertelement <4 x float> %i.bk, float %i.bh, i64 1
  %i.bm = insertelement <4 x float> %i.bl, float %i.bi, i64 2
  %i.bn = insertelement <4 x float> %i.bm, float %i.bj, i64 3
  %i.bo = fneg <8 x float> %wide.vec
  %i.bp = shufflevector <8 x float> %i.bo, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bq = fmul <4 x float> %i.bn, %i.bp
  %i.br = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bb, <4 x float> %strided.vec, <4 x float> %i.bq)
  %i.bs = load float, ptr %next.gep518, align 4, !tbaa !63, !alias.scope !255
  %i.bt = load float, ptr %next.gep519, align 4, !tbaa !63, !alias.scope !255
  %i.bu = load float, ptr %next.gep520, align 4, !tbaa !63, !alias.scope !255
  %i.bv = load float, ptr %next.gep521, align 4, !tbaa !63, !alias.scope !255
  %i.bw = insertelement <4 x float> poison, float %i.bs, i64 0
  %i.bx = insertelement <4 x float> %i.bw, float %i.bt, i64 1
  %i.by = insertelement <4 x float> %i.bx, float %i.bu, i64 2
  %i.bz = insertelement <4 x float> %i.by, float %i.bv, i64 3
  %wide.vec524 = load <8 x float>, ptr %next.gep522, align 4, !tbaa !63, !alias.scope !256 ; 2 uses
  %strided.vec525 = shufflevector <8 x float> %wide.vec524, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec526 = shufflevector <8 x float> %wide.vec524, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ca = load float, ptr %i.bc, align 4, !tbaa !63, !alias.scope !255
  %i.cb = load float, ptr %i.bd, align 4, !tbaa !63, !alias.scope !255
  %i.cc = load float, ptr %i.be, align 4, !tbaa !63, !alias.scope !255
  %i.cd = load float, ptr %i.bf, align 4, !tbaa !63, !alias.scope !255
  %i.ce = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.cf = insertelement <4 x float> %i.ce, float %i.cb, i64 1
  %i.cg = insertelement <4 x float> %i.cf, float %i.cc, i64 2
  %i.ch = insertelement <4 x float> %i.cg, float %i.cd, i64 3
  %i.ci = fmul <4 x float> %i.ch, %strided.vec525
  %i.cj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> %strided.vec526, <4 x float> %i.ci)
  %i.ck = getelementptr i8, ptr %next.gep, i64 -24
  %interleaved.vec = shufflevector <4 x float> %i.cj, <4 x float> %i.br, <8 x i32> <i32 3, i32 7, i32 2, i32 6, i32 1, i32 5, i32 0, i32 4>
  store <8 x float> %interleaved.vec, ptr %i.ck, align 4, !tbaa !63, !alias.scope !257, !noalias !258
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %.lr.ph.preheader534.loopexit, label %vector.body, !llvm.loop !244

.lr.ph.preheader534.loopexit:                     ; preds = %vector.body
  %4 = mul i64 %n.vec, -8                         ; 2 uses
  %5 = getelementptr i8, ptr %.0388423, i64 %4
  %6 = getelementptr i8, ptr %i.z, i64 %4
  %7 = shl i64 %n.vec, 4
  %8 = getelementptr i8, ptr %0, i64 %7
  %9 = shl i64 %n.vec, 3
  %10 = getelementptr i8, ptr %i.x, i64 %9
  br label %.lr.ph.preheader534

.lr.ph.preheader534:                              ; preds = %.lr.ph.preheader534.loopexit, %vector.memcheck, %.lr.ph.preheader
  %.0388428.ph = phi ptr [ %.0388423, %vector.memcheck ], [ %.0388423, %.lr.ph.preheader ], [ %5, %.lr.ph.preheader534.loopexit ]
  %.pn419427.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.preheader ], [ %6, %.lr.ph.preheader534.loopexit ]
  %.0397426.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %8, %.lr.ph.preheader534.loopexit ]
  %.0399425.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.preheader ], [ %10, %.lr.ph.preheader534.loopexit ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader534, %.lr.ph
  %.0388428 = phi ptr [ %.0388, %.lr.ph ], [ %.0388428.ph, %.lr.ph.preheader534 ] ; 3 uses
  %.pn419427 = phi ptr [ %.0388428, %.lr.ph ], [ %.pn419427.ph, %.lr.ph.preheader534 ]
  %.0397426 = phi ptr [ %i.dd, %.lr.ph ], [ %.0397426.ph, %.lr.ph.preheader534 ] ; 4 uses
  %.0399425 = phi ptr [ %i.dc, %.lr.ph ], [ %.0399425.ph, %.lr.ph.preheader534 ] ; 4 uses
  %i.cm = load float, ptr %.0397426, align 4, !tbaa !63
  %i.cn = load float, ptr %.0399425, align 4, !tbaa !63
  %i.co = getelementptr inbounds nuw i8, ptr %.0397426, i64 8 ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !63
  %i.cq = getelementptr inbounds nuw i8, ptr %.0399425, i64 4 ; 2 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !63
  %i.cs = fneg float %i.cr
  %i.ct = fmul float %i.cp, %i.cs
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.cn, float %i.ct)
  %i.cv = getelementptr i8, ptr %.pn419427, i64 -4
  store float %i.cu, ptr %i.cv, align 4, !tbaa !63
  %i.cw = load float, ptr %.0397426, align 4, !tbaa !63
  %i.cx = load float, ptr %i.cq, align 4, !tbaa !63
  %i.cy = load float, ptr %i.co, align 4, !tbaa !63
  %i.cz = load float, ptr %.0399425, align 4, !tbaa !63
  %i.da = fmul float %i.cy, %i.cz
  %i.db = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.cx, float %i.da)
  store float %i.db, ptr %.0388428, align 4, !tbaa !63
  %i.dc = getelementptr inbounds nuw i8, ptr %.0399425, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0397426, i64 16 ; 2 uses
  %.0388 = getelementptr i8, ptr %.0388428, i64 -8 ; 2 uses
  %.not409 = icmp eq ptr %i.dd, %i.aa
  br i1 %.not409, label %._crit_edge, label %.lr.ph, !llvm.loop !245

._crit_edge:                                      ; preds = %.lr.ph, %setup_temp_malloc.exit
  %.0399.lcssa = phi ptr [ %i.x, %setup_temp_malloc.exit ], [ %i.dc, %.lr.ph ]
  %.0388.lcssa = phi ptr [ %.0388423, %setup_temp_malloc.exit ], [ %.0388, %.lr.ph ] ; 2 uses
  %.not410430 = icmp ult ptr %.0388.lcssa, %i.t
  br i1 %.not410430, label %._crit_edge436, label %.lr.ph435.preheader

.lr.ph435.preheader:                              ; preds = %._crit_edge
  %i.de = getelementptr i8, ptr %i.aa, i64 -12
  br label %.lr.ph435

.lr.ph435:                                        ; preds = %.lr.ph435.preheader, %.lr.ph435
  %.1389433 = phi ptr [ %i.dx, %.lr.ph435 ], [ %.0388.lcssa, %.lr.ph435.preheader ] ; 3 uses
  %.1398432 = phi ptr [ %i.dz, %.lr.ph435 ], [ %i.de, %.lr.ph435.preheader ] ; 4 uses
  %.1400431 = phi ptr [ %i.dy, %.lr.ph435 ], [ %.0399.lcssa, %.lr.ph435.preheader ] ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.1398432, i64 8 ; 2 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !63
  %i.dh = fneg float %i.dg
  %i.di = load float, ptr %.1400431, align 4, !tbaa !63
  %i.dj = load float, ptr %.1398432, align 4, !tbaa !63
  %i.dk = getelementptr inbounds nuw i8, ptr %.1400431, i64 4 ; 2 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !63
  %i.dm = fmul float %i.dj, %i.dl
  %i.dn = call float @llvm.fmuladd.f32(float %i.dh, float %i.di, float %i.dm)
  %i.do = getelementptr inbounds nuw i8, ptr %.1389433, i64 4
  store float %i.dn, ptr %i.do, align 4, !tbaa !63
  %i.dp = load float, ptr %i.df, align 4, !tbaa !63
  %i.dq = fneg float %i.dp
  %i.dr = load float, ptr %i.dk, align 4, !tbaa !63
  %i.ds = load float, ptr %.1398432, align 4, !tbaa !63
  %i.dt = fneg float %i.ds
  %i.du = load float, ptr %.1400431, align 4, !tbaa !63
  %i.dv = fmul float %i.du, %i.dt
  %i.dw = call float @llvm.fmuladd.f32(float %i.dq, float %i.dr, float %i.dv)
  store float %i.dw, ptr %.1389433, align 4, !tbaa !63
  %i.dx = getelementptr inbounds i8, ptr %.1389433, i64 -8 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.1400431, i64 8
  %i.dz = getelementptr inbounds i8, ptr %.1398432, i64 -16
  %.not410 = icmp ult ptr %i.dx, %i.t
  br i1 %.not410, label %._crit_edge436, label %.lr.ph435, !llvm.loop !246

._crit_edge436:                                   ; preds = %.lr.ph435, %._crit_edge
  %i.ea = getelementptr [4 x i8], ptr %i.x, i64 %i.y ; 2 uses
  %i.eb = sext i32 %i.b to i64                    ; 2 uses
  %i.ec = getelementptr [4 x i8], ptr %i.t, i64 %i.eb ; 3 uses
  %.0405437 = getelementptr i8, ptr %i.ea, i64 -32 ; 2 uses
  %.not411438 = icmp ult ptr %.0405437, %i.x
  br i1 %.not411438, label %._crit_edge447, label %.lr.ph446.preheader

.lr.ph446.preheader:                              ; preds = %._crit_edge436
  %i.ed = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eb
  br label %.lr.ph446

.lr.ph446:                                        ; preds = %.lr.ph446.preheader, %.lr.ph446
  %.0405444 = phi ptr [ %.0405, %.lr.ph446 ], [ %.0405437, %.lr.ph446.preheader ] ; 4 uses
  %.0401443 = phi ptr [ %i.gi, %.lr.ph446 ], [ %i.t, %.lr.ph446.preheader ] ; 6 uses
  %.0402442 = phi ptr [ %i.gh, %.lr.ph446 ], [ %i.ec, %.lr.ph446.preheader ] ; 6 uses
  %.0403441 = phi ptr [ %i.gg, %.lr.ph446 ], [ %0, %.lr.ph446.preheader ] ; 5 uses
  %.0404440 = phi ptr [ %i.gf, %.lr.ph446 ], [ %i.ed, %.lr.ph446.preheader ] ; 5 uses
  %.pn418439 = phi ptr [ %.0405444, %.lr.ph446 ], [ %i.ea, %.lr.ph446.preheader ] ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.0402442, i64 4
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !63 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.0401443, i64 4
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !63 ; 2 uses
  %i.ei = fsub float %i.ef, %i.eh                 ; 2 uses
  %i.ej = load float, ptr %.0402442, align 4, !tbaa !63
  %i.ek = load float, ptr %.0401443, align 4, !tbaa !63
  %i.el = fsub float %i.ej, %i.ek                 ; 2 uses
  %i.em = fadd float %i.ef, %i.eh
  %i.en = getelementptr inbounds nuw i8, ptr %.0404440, i64 4
  store float %i.em, ptr %i.en, align 4, !tbaa !63
  %i.eo = load float, ptr %.0402442, align 4, !tbaa !63
  %i.ep = load float, ptr %.0401443, align 4, !tbaa !63
  %i.eq = fadd float %i.eo, %i.ep
  store float %i.eq, ptr %.0404440, align 4, !tbaa !63
  %i.er = getelementptr i8, ptr %.pn418439, i64 -16 ; 2 uses
  %i.es = load float, ptr %i.er, align 4, !tbaa !63
  %i.et = getelementptr i8, ptr %.pn418439, i64 -12 ; 2 uses
  %i.eu = load float, ptr %i.et, align 4, !tbaa !63
  %i.ev = fneg float %i.eu
  %i.ew = fmul float %i.el, %i.ev
  %i.ex = call float @llvm.fmuladd.f32(float %i.ei, float %i.es, float %i.ew)
  %i.ey = getelementptr inbounds nuw i8, ptr %.0403441, i64 4
  store float %i.ex, ptr %i.ey, align 4, !tbaa !63
  %i.ez = load float, ptr %i.er, align 4, !tbaa !63
  %i.fa = load float, ptr %i.et, align 4, !tbaa !63
  %i.fb = fmul float %i.ei, %i.fa
  %i.fc = call float @llvm.fmuladd.f32(float %i.el, float %i.ez, float %i.fb)
  store float %i.fc, ptr %.0403441, align 4, !tbaa !63
  %i.fd = getelementptr inbounds nuw i8, ptr %.0402442, i64 12
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !63 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.0401443, i64 12
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !63 ; 2 uses
  %i.fh = fsub float %i.fe, %i.fg                 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.0402442, i64 8 ; 2 uses
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !63
  %i.fk = getelementptr inbounds nuw i8, ptr %.0401443, i64 8 ; 2 uses
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !63
  %i.fm = fsub float %i.fj, %i.fl                 ; 2 uses
  %i.fn = fadd float %i.fe, %i.fg
  %i.fo = getelementptr inbounds nuw i8, ptr %.0404440, i64 12
  store float %i.fn, ptr %i.fo, align 4, !tbaa !63
  %i.fp = load float, ptr %i.fi, align 4, !tbaa !63
  %i.fq = load float, ptr %i.fk, align 4, !tbaa !63
  %i.fr = fadd float %i.fp, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %.0404440, i64 8
  store float %i.fr, ptr %i.fs, align 4, !tbaa !63
  %i.ft = load float, ptr %.0405444, align 4, !tbaa !63
  %i.fu = getelementptr i8, ptr %.pn418439, i64 -28 ; 2 uses
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !63
  %i.fw = fneg float %i.fv
  %i.fx = fmul float %i.fm, %i.fw
  %i.fy = call float @llvm.fmuladd.f32(float %i.fh, float %i.ft, float %i.fx)
  %i.fz = getelementptr inbounds nuw i8, ptr %.0403441, i64 12
  store float %i.fy, ptr %i.fz, align 4, !tbaa !63
  %i.ga = load float, ptr %.0405444, align 4, !tbaa !63
  %i.gb = load float, ptr %i.fu, align 4, !tbaa !63
  %i.gc = fmul float %i.fh, %i.gb
  %i.gd = call float @llvm.fmuladd.f32(float %i.fm, float %i.ga, float %i.gc)
  %i.ge = getelementptr inbounds nuw i8, ptr %.0403441, i64 8
  store float %i.gd, ptr %i.ge, align 4, !tbaa !63
  %i.gf = getelementptr inbounds nuw i8, ptr %.0404440, i64 16
  %i.gg = getelementptr inbounds nuw i8, ptr %.0403441, i64 16
  %i.gh = getelementptr inbounds nuw i8, ptr %.0402442, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %.0401443, i64 16
  %.0405 = getelementptr i8, ptr %.0405444, i64 -32 ; 2 uses
  %.not411 = icmp ult ptr %.0405, %i.x
  br i1 %.not411, label %._crit_edge447, label %.lr.ph446, !llvm.loop !247

._crit_edge447:                                   ; preds = %.lr.ph446, %._crit_edge436
  %i.gj = icmp slt i32 %1, 0
  br i1 %i.gj, label %ilog.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge447
  %i.gk = icmp samesign ult i32 %1, 16384
  br i1 %i.gk, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.gl = icmp samesign ult i32 %1, 16
  br i1 %i.gl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.gm = zext nneg i32 %1 to i64
  %i.gn = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !49
  %i.gp = sext i8 %i.go to i32
  br label %ilog.exit

bb.h:                                             ; preds = %bb.f
  %i.gq = icmp samesign ult i32 %1, 512
  br i1 %i.gq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.gr = lshr i32 %1, 5
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !49
  %i.gv = sext i8 %i.gu to i32
  %i.gw = add nsw i32 %i.gv, 5
  br label %ilog.exit

bb.j:                                             ; preds = %bb.h
  %i.gx = lshr i32 %1, 10
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !49
  %i.hb = sext i8 %i.ha to i32
  %i.hc = add nsw i32 %i.hb, 10
  br label %ilog.exit

bb.k:                                             ; preds = %bb.e
  %i.hd = icmp samesign ult i32 %1, 16777216
  br i1 %i.hd, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.he = icmp samesign ult i32 %1, 524288
  br i1 %i.he, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.hf = lshr i32 %1, 15
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.hg
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !49
  %i.hj = sext i8 %i.hi to i32
  %i.hk = add nsw i32 %i.hj, 15
  br label %ilog.exit

bb.n:                                             ; preds = %bb.l
  %i.hl = lshr i32 %1, 20
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !49
  %i.hp = sext i8 %i.ho to i32
  %i.hq = add nsw i32 %i.hp, 20
  br label %ilog.exit

bb.o:                                             ; preds = %bb.k
  %i.hr = icmp samesign ult i32 %1, 536870912
  br i1 %i.hr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.hs = lshr i32 %1, 25
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !49
  %i.hw = sext i8 %i.hv to i32
  %i.hx = add nsw i32 %i.hw, 25
  br label %ilog.exit

bb.q:                                             ; preds = %bb.o
  %i.hy = lshr i32 %1, 30
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw i8, ptr @__const.ilog.log2_4, i64 %i.hz
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !49
  %i.ic = sext i8 %i.ib to i32
  %i.id = add nsw i32 %i.ic, 30
  br label %ilog.exit

ilog.exit:                                        ; preds = %._crit_edge447, %bb.g, %bb.i, %bb.j, %bb.m, %bb.n, %bb.p, %bb.q
  %.0.i420 = phi i32 [ %i.id, %bb.q ], [ %i.gp, %bb.g ], [ %i.gw, %bb.i ], [ %i.hc, %bb.j ], [ %i.hk, %bb.m ], [ %i.hq, %bb.n ], [ %i.hx, %bb.p ], [ 0, %._crit_edge447 ] ; 2 uses
  %i.ie = ashr i32 %1, 4                          ; 3 uses
  %i.if = add nsw i32 %i.a, -1                    ; 8 uses
  %i.ig = sub nsw i32 0, %i.c                     ; 2 uses
  call void @imdct_step3_iter0_loop(i32 noundef %i.ie, ptr noundef %0, i32 noundef %i.if, i32 noundef %i.ig, ptr noundef nonnull %i.x)
  %i.ih = sub nsw i32 %i.if, %i.b
  call void @imdct_step3_iter0_loop(i32 noundef %i.ie, ptr noundef %0, i32 noundef %i.ih, i32 noundef %i.ig, ptr noundef nonnull %i.x)
  %i.ii = ashr i32 %1, 5                          ; 5 uses
  %i.ij = sub nsw i32 0, %i.ie                    ; 4 uses
  call void @imdct_step3_inner_r_loop(i32 noundef %i.ii, ptr noundef %0, i32 noundef %i.if, i32 noundef %i.ij, ptr noundef nonnull %i.x, i32 noundef 16)
  %i.ik = sub nsw i32 %i.if, %i.c
  call void @imdct_step3_inner_r_loop(i32 noundef %i.ii, ptr noundef %0, i32 noundef %i.ik, i32 noundef %i.ij, ptr noundef nonnull %i.x, i32 noundef 16)
  %i.il = shl nsw i32 %i.c, 1
  %i.im = sub nsw i32 %i.if, %i.il
  call void @imdct_step3_inner_r_loop(i32 noundef %i.ii, ptr noundef %0, i32 noundef %i.im, i32 noundef %i.ij, ptr noundef nonnull %i.x, i32 noundef 16)
  %.neg = mul nsw i32 %i.c, -3
  %i.in = add nsw i32 %.neg, %i.if
  call void @imdct_step3_inner_r_loop(i32 noundef %i.ii, ptr noundef %0, i32 noundef %i.in, i32 noundef %i.ij, ptr noundef nonnull %i.x, i32 noundef 16)
  %i.io = add nsw i32 %.0.i420, -4
  %i.ip = ashr i32 %i.io, 1                       ; 3 uses
  %i.iq = icmp sgt i32 %i.ip, 2
  br i1 %i.iq, label %.lr.ph452.preheader, label %.preheader

.lr.ph452.preheader:                              ; preds = %ilog.exit
  %i.ir = sext i32 %i.if to i64
  br label %.lr.ph452

.loopexit422:                                     ; preds = %imdct_step3_inner_r_loop.exit.loopexit, %.lr.ph450, %.lr.ph452
  %11 = add nuw nsw i32 %.0451, 1                 ; 2 uses
  %exitcond494.not = icmp eq i32 %11, %i.ip
  br i1 %exitcond494.not, label %.preheader, label %.lr.ph452, !llvm.loop !248

.preheader:                                       ; preds = %.loopexit422, %ilog.exit
  %.0.lcssa = phi i32 [ 2, %ilog.exit ], [ %i.ip, %.loopexit422 ] ; 2 uses
  %i.is = add nsw i32 %.0.i420, -7                ; 2 uses
  %i.it = icmp slt i32 %.0.lcssa, %i.is
  br i1 %i.it, label %.lr.ph460.preheader, label %._crit_edge461

.lr.ph460.preheader:                              ; preds = %.preheader
  %i.iu = add nsw i64 %i.y, -1
  br label %.lr.ph460

.lr.ph452:                                        ; preds = %.lr.ph452.preheader, %.loopexit422
  %.0451 = phi i32 [ %11, %.loopexit422 ], [ 2, %.lr.ph452.preheader ] ; 5 uses
  %i.iv = add nuw nsw i32 %.0451, 2
  %i.iw = ashr i32 %1, %i.iv                      ; 2 uses
  %i.ix = shl nuw i32 2, %.0451                   ; 2 uses
  %i.iy = icmp sgt i32 %i.ix, 0
  br i1 %i.iy, label %.lr.ph450, label %.loopexit422

.lr.ph450:                                        ; preds = %.lr.ph452
  %i.iz = ashr i32 %i.iw, 1
  %i.ja = add nuw nsw i32 %.0451, 4
  %i.jb = ashr i32 %1, %i.ja
  %i.jc = ashr i32 %i.jb, 2                       ; 2 uses
  %i.jd = icmp sgt i32 %i.jc, 0
  %i.je = shl nuw i32 8, %.0451
  %i.jf = sub nsw i32 0, %i.iz
  %i.jg = sext i32 %i.jf to i64
  %i.jh = sext i32 %i.je to i64                   ; 4 uses
  br i1 %i.jd, label %.lr.ph.i.preheader, label %.loopexit422

.lr.ph.i.preheader:                               ; preds = %.lr.ph450
  %i.ji = sext i32 %i.iw to i64
  %wide.trip.count = zext nneg i32 %i.ix to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %imdct_step3_inner_r_loop.exit.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next, %imdct_step3_inner_r_loop.exit.loopexit ] ; 2 uses
  %i.jj = mul nsw i64 %indvars.iv, %i.ji
  %i.jk = sub nsw i64 %i.ir, %i.jj
  %i.jl = getelementptr inbounds [4 x i8], ptr %0, i64 %i.jk ; 2 uses
  %i.jm = getelementptr inbounds [4 x i8], ptr %i.jl, i64 %i.jg
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i
  %.094.i = phi ptr [ %i.jm, %.lr.ph.i ], [ %i.nd, %bb.r ] ; 10 uses
  %.08893.i = phi ptr [ %i.jl, %.lr.ph.i ], [ %i.nc, %bb.r ] ; 10 uses
  %.08992.i = phi i32 [ %i.jc, %.lr.ph.i ], [ %i.nf, %bb.r ] ; 2 uses
  %.09091.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.ne, %bb.r ] ; 4 uses
  %i.jn = load float, ptr %.08893.i, align 4, !tbaa !63 ; 2 uses
  %i.jo = load float, ptr %.094.i, align 4, !tbaa !63 ; 2 uses
  %i.jp = fsub float %i.jn, %i.jo                 ; 2 uses
  %i.jq = getelementptr inbounds i8, ptr %.08893.i, i64 -4 ; 2 uses
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !63 ; 2 uses
  %i.js = getelementptr inbounds i8, ptr %.094.i, i64 -4 ; 3 uses
  %i.jt = load float, ptr %i.js, align 4, !tbaa !63
  %i.ju = fsub float %i.jr, %i.jt                 ; 2 uses
  %i.jv = fadd float %i.jn, %i.jo
  store float %i.jv, ptr %.08893.i, align 4, !tbaa !63
  %i.jw = load float, ptr %i.js, align 4, !tbaa !63
  %i.jx = fadd float %i.jr, %i.jw
  store float %i.jx, ptr %i.jq, align 4, !tbaa !63
  %i.jy = load float, ptr %.09091.i, align 4, !tbaa !63
  %i.jz = getelementptr inbounds nuw i8, ptr %.09091.i, i64 4 ; 2 uses
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !63
  %i.kb = fneg float %i.ka
  %i.kc = fmul float %i.ju, %i.kb
  %i.kd = call float @llvm.fmuladd.f32(float %i.jp, float %i.jy, float %i.kc)
  store float %i.kd, ptr %.094.i, align 4, !tbaa !63
  %i.ke = load float, ptr %.09091.i, align 4, !tbaa !63
  %i.kf = load float, ptr %i.jz, align 4, !tbaa !63
  %i.kg = fmul float %i.jp, %i.kf
  %i.kh = call float @llvm.fmuladd.f32(float %i.ju, float %i.ke, float %i.kg)
  store float %i.kh, ptr %i.js, align 4, !tbaa !63
  %i.ki = getelementptr inbounds [4 x i8], ptr %.09091.i, i64 %i.jh ; 4 uses
  %i.kj = getelementptr inbounds i8, ptr %.08893.i, i64 -8 ; 2 uses
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !63 ; 2 uses
  %i.kl = getelementptr inbounds i8, ptr %.094.i, i64 -8 ; 2 uses
  %i.km = load float, ptr %i.kl, align 4, !tbaa !63 ; 2 uses
  %i.kn = fsub float %i.kk, %i.km                 ; 2 uses
  %i.ko = getelementptr inbounds i8, ptr %.08893.i, i64 -12 ; 2 uses
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !63 ; 2 uses
  %i.kq = getelementptr inbounds i8, ptr %.094.i, i64 -12 ; 3 uses
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !63
  %i.ks = fsub float %i.kp, %i.kr                 ; 2 uses
  %i.kt = fadd float %i.kk, %i.km
  store float %i.kt, ptr %i.kj, align 4, !tbaa !63
  %i.ku = load float, ptr %i.kq, align 4, !tbaa !63
  %i.kv = fadd float %i.kp, %i.ku
  store float %i.kv, ptr %i.ko, align 4, !tbaa !63
  %i.kw = load float, ptr %i.ki, align 4, !tbaa !63
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ki, i64 4 ; 2 uses
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !63
  %i.kz = fneg float %i.ky
  %i.la = fmul float %i.ks, %i.kz
  %i.lb = call float @llvm.fmuladd.f32(float %i.kn, float %i.kw, float %i.la)
  store float %i.lb, ptr %i.kl, align 4, !tbaa !63
  %i.lc = load float, ptr %i.ki, align 4, !tbaa !63
  %i.ld = load float, ptr %i.kx, align 4, !tbaa !63
  %i.le = fmul float %i.kn, %i.ld
  %i.lf = call float @llvm.fmuladd.f32(float %i.ks, float %i.lc, float %i.le)
  store float %i.lf, ptr %i.kq, align 4, !tbaa !63
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %i.jh ; 4 uses
  %i.lh = getelementptr inbounds i8, ptr %.08893.i, i64 -16 ; 2 uses
  %i.li = load float, ptr %i.lh, align 4, !tbaa !63 ; 2 uses
  %i.lj = getelementptr inbounds i8, ptr %.094.i, i64 -16 ; 2 uses
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !63 ; 2 uses
  %i.ll = fsub float %i.li, %i.lk                 ; 2 uses
  %i.lm = getelementptr inbounds i8, ptr %.08893.i, i64 -20 ; 2 uses
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !63 ; 2 uses
  %i.lo = getelementptr inbounds i8, ptr %.094.i, i64 -20 ; 3 uses
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !63
  %i.lq = fsub float %i.ln, %i.lp                 ; 2 uses
  %i.lr = fadd float %i.li, %i.lk
  store float %i.lr, ptr %i.lh, align 4, !tbaa !63
  %i.ls = load float, ptr %i.lo, align 4, !tbaa !63
  %i.lt = fadd float %i.ln, %i.ls
  store float %i.lt, ptr %i.lm, align 4, !tbaa !63
  %i.lu = load float, ptr %i.lg, align 4, !tbaa !63
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lg, i64 4 ; 2 uses
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !63
  %i.lx = fneg float %i.lw
  %i.ly = fmul float %i.lq, %i.lx
  %i.lz = call float @llvm.fmuladd.f32(float %i.ll, float %i.lu, float %i.ly)
  store float %i.lz, ptr %i.lj, align 4, !tbaa !63
  %i.ma = load float, ptr %i.lg, align 4, !tbaa !63
  %i.mb = load float, ptr %i.lv, align 4, !tbaa !63
  %i.mc = fmul float %i.ll, %i.mb
  %i.md = call float @llvm.fmuladd.f32(float %i.lq, float %i.ma, float %i.mc)
  store float %i.md, ptr %i.lo, align 4, !tbaa !63
  %i.me = getelementptr inbounds [4 x i8], ptr %i.lg, i64 %i.jh ; 4 uses
  %i.mf = getelementptr inbounds i8, ptr %.08893.i, i64 -24 ; 2 uses
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !63 ; 2 uses
  %i.mh = getelementptr inbounds i8, ptr %.094.i, i64 -24 ; 2 uses
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !63 ; 2 uses
  %i.mj = fsub float %i.mg, %i.mi                 ; 2 uses
  %i.mk = getelementptr inbounds i8, ptr %.08893.i, i64 -28 ; 2 uses
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !63 ; 2 uses
  %i.mm = getelementptr inbounds i8, ptr %.094.i, i64 -28 ; 3 uses
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !63
  %i.mo = fsub float %i.ml, %i.mn                 ; 2 uses
  %i.mp = fadd float %i.mg, %i.mi
  store float %i.mp, ptr %i.mf, align 4, !tbaa !63
  %i.mq = load float, ptr %i.mm, align 4, !tbaa !63
  %i.mr = fadd float %i.ml, %i.mq
  store float %i.mr, ptr %i.mk, align 4, !tbaa !63
  %i.ms = load float, ptr %i.me, align 4, !tbaa !63
  %i.mt = getelementptr inbounds nuw i8, ptr %i.me, i64 4 ; 2 uses
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !63
  %i.mv = fneg float %i.mu
  %i.mw = fmul float %i.mo, %i.mv
  %i.mx = call float @llvm.fmuladd.f32(float %i.mj, float %i.ms, float %i.mw)
  store float %i.mx, ptr %i.mh, align 4, !tbaa !63
  %i.my = load float, ptr %i.me, align 4, !tbaa !63
  %i.mz = load float, ptr %i.mt, align 4, !tbaa !63
  %i.na = fmul float %i.mj, %i.mz
  %i.nb = call float @llvm.fmuladd.f32(float %i.mo, float %i.my, float %i.na)
  store float %i.nb, ptr %i.mm, align 4, !tbaa !63
  %i.nc = getelementptr inbounds i8, ptr %.08893.i, i64 -32
  %i.nd = getelementptr inbounds i8, ptr %.094.i, i64 -32
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.me, i64 %i.jh
  %i.nf = add nsw i32 %.08992.i, -1
  %i.ng = icmp samesign ugt i32 %.08992.i, 1
  br i1 %i.ng, label %bb.r, label %imdct_step3_inner_r_loop.exit.loopexit, !llvm.loop !15

imdct_step3_inner_r_loop.exit.loopexit:           ; preds = %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit422, label %.lr.ph.i, !llvm.loop !249

.loopexit:                                        ; preds = %imdct_step3_inner_s_loop.exit.loopexit, %.lr.ph458, %.lr.ph460
  %12 = add nuw nsw i32 %.1459, 1                 ; 2 uses
  %exitcond498.not = icmp eq i32 %12, %i.is
  br i1 %exitcond498.not, label %._crit_edge461, label %.lr.ph460, !llvm.loop !250

.lr.ph460:                                        ; preds = %.lr.ph460.preheader, %.loopexit
  %.1459 = phi i32 [ %12, %.loopexit ], [ %.0.lcssa, %.lr.ph460.preheader ] ; 8 uses
  %i.nh = add nuw nsw i32 %.1459, 6
  %i.ni = ashr i32 %1, %i.nh                      ; 2 uses
  %i.nj = shl nuw i32 2, %.1459                   ; 2 uses
  %i.nk = icmp sgt i32 %i.ni, 0
  br i1 %i.nk, label %.lr.ph458, label %.loopexit

.lr.ph458:                                        ; preds = %.lr.ph460
  %i.nl = add nuw nsw i32 %.1459, 2
  %i.nm = ashr i32 %1, %i.nl                      ; 2 uses
  %i.nn = ashr i32 %i.nm, 1
  %i.no = shl nuw i32 8, %.1459
  %i.np = sext i32 %i.no to i64
  %i.nq = shl i32 16, %.1459
  %i.nr = sext i32 %i.nq to i64
  %i.ns = shl i32 24, %.1459
  %i.nt = sext i32 %i.ns to i64
  %i.nu = icmp sgt i32 %i.nj, 0
  %i.nv = sub nsw i32 0, %i.nn
  %i.nw = sext i32 %i.nv to i64
  %i.nx = sext i32 %i.nm to i64
  %i.ny = sub nsw i64 0, %i.nx                    ; 2 uses
  %i.nz = shl i32 32, %.1459
  %i.oa = sext i32 %i.nz to i64
  br i1 %i.nu, label %.lr.ph.i421, label %.loopexit

.lr.ph.i421:                                      ; preds = %.lr.ph458, %imdct_step3_inner_s_loop.exit.loopexit
  %indvars.iv495 = phi i64 [ %indvars.iv.next496, %imdct_step3_inner_s_loop.exit.loopexit ], [ %i.iu, %.lr.ph458 ] ; 2 uses
  %.0393456 = phi ptr [ %i.sa, %imdct_step3_inner_s_loop.exit.loopexit ], [ %i.x, %.lr.ph458 ] ; 6 uses
  %.0395454 = phi i32 [ %i.sb, %imdct_step3_inner_s_loop.exit.loopexit ], [ %i.ni, %.lr.ph458 ] ; 2 uses
  %i.ob = load float, ptr %.0393456, align 4, !tbaa !63
  %i.oc = getelementptr inbounds nuw i8, ptr %.0393456, i64 4
  %i.od = load float, ptr %i.oc, align 4, !tbaa !63 ; 2 uses
  %i.oe = getelementptr inbounds [4 x i8], ptr %.0393456, i64 %i.np ; 2 uses
  %i.of = load float, ptr %i.oe, align 4, !tbaa !63
  %i.og = getelementptr i8, ptr %i.oe, i64 4
  %i.oh = load float, ptr %i.og, align 4, !tbaa !63 ; 2 uses
  %i.oi = getelementptr inbounds [4 x i8], ptr %.0393456, i64 %i.nr ; 2 uses
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !63
  %i.ok = getelementptr i8, ptr %i.oi, i64 4
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !63 ; 2 uses
  %i.om = getelementptr inbounds [4 x i8], ptr %.0393456, i64 %i.nt ; 2 uses
  %i.on = load float, ptr %i.om, align 4, !tbaa !63
  %i.oo = getelementptr i8, ptr %i.om, i64 4
  %i.op = load float, ptr %i.oo, align 4, !tbaa !63 ; 2 uses
  %i.oq = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv495 ; 2 uses
  %i.or = getelementptr inbounds [4 x i8], ptr %i.oq, i64 %i.nw
  %i.os = fneg float %i.od
  %i.ot = fneg float %i.oh
  %i.ou = fneg float %i.ol
  %i.ov = fneg float %i.op
  %i.ow = insertelement <2 x float> poison, float %i.on, i64 0
  %i.ox = shufflevector <2 x float> %i.ow, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oy = insertelement <2 x float> poison, float %i.ov, i64 0
  %i.oz = insertelement <2 x float> %i.oy, float %i.op, i64 1
  %i.pa = insertelement <2 x float> poison, float %i.oj, i64 0
  %i.pb = shufflevector <2 x float> %i.pa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pc = insertelement <2 x float> poison, float %i.ou, i64 0
  %i.pd = insertelement <2 x float> %i.pc, float %i.ol, i64 1
  %i.pe = insertelement <2 x float> poison, float %i.of, i64 0
  %i.pf = shufflevector <2 x float> %i.pe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pg = insertelement <2 x float> poison, float %i.ot, i64 0
  %i.ph = insertelement <2 x float> %i.pg, float %i.oh, i64 1
  %i.pi = insertelement <2 x float> poison, float %i.ob, i64 0
  %i.pj = shufflevector <2 x float> %i.pi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pk = insertelement <2 x float> poison, float %i.os, i64 0
  %i.pl = insertelement <2 x float> %i.pk, float %i.od, i64 1
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i421
  %.0108.i = phi ptr [ %i.or, %.lr.ph.i421 ], [ %i.rx, %bb.s ] ; 9 uses
  %.0104107.i = phi ptr [ %i.oq, %.lr.ph.i421 ], [ %i.rw, %bb.s ] ; 9 uses
  %.0105106.i = phi i32 [ %i.nj, %.lr.ph.i421 ], [ %i.ry, %bb.s ] ; 2 uses
  %i.pm = getelementptr inbounds i8, ptr %.0104107.i, i64 -4 ; 2 uses
  %i.pn = getelementptr inbounds i8, ptr %.0108.i, i64 -4 ; 3 uses
  %i.po = load <2 x float>, ptr %i.pm, align 4, !tbaa !63 ; 3 uses
  %i.pp = load float, ptr %.0108.i, align 4, !tbaa !63
  %i.pq = load <2 x float>, ptr %i.pn, align 4, !tbaa !63
  %i.pr = fsub <2 x float> %i.po, %i.pq           ; 2 uses
  %i.ps = extractelement <2 x float> %i.po, i64 1
  %i.pt = fadd float %i.ps, %i.pp
  store float %i.pt, ptr %.0104107.i, align 4, !tbaa !63
  %i.pu = load float, ptr %i.pn, align 4, !tbaa !63
  %i.pv = extractelement <2 x float> %i.po, i64 0
  %i.pw = fadd float %i.pv, %i.pu
  store float %i.pw, ptr %i.pm, align 4, !tbaa !63
  %i.px = fmul <2 x float> %i.pl, %i.pr
  %i.py = shufflevector <2 x float> %i.px, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pr, <2 x float> %i.pj, <2 x float> %i.py)
  store <2 x float> %i.pz, ptr %i.pn, align 4, !tbaa !63
  %i.qa = getelementptr inbounds i8, ptr %.0104107.i, i64 -8
  %i.qb = getelementptr inbounds i8, ptr %.0108.i, i64 -8
  %i.qc = getelementptr inbounds i8, ptr %.0104107.i, i64 -12 ; 2 uses
  %i.qd = getelementptr inbounds i8, ptr %.0108.i, i64 -12 ; 3 uses
  %i.qe = load <2 x float>, ptr %i.qc, align 4, !tbaa !63 ; 3 uses
  %i.qf = load float, ptr %i.qb, align 4, !tbaa !63
  %i.qg = load <2 x float>, ptr %i.qd, align 4, !tbaa !63
  %i.qh = fsub <2 x float> %i.qe, %i.qg           ; 2 uses
  %i.qi = extractelement <2 x float> %i.qe, i64 1
  %i.qj = fadd float %i.qi, %i.qf
  store float %i.qj, ptr %i.qa, align 4, !tbaa !63
  %i.qk = load float, ptr %i.qd, align 4, !tbaa !63
  %i.ql = extractelement <2 x float> %i.qe, i64 0
  %i.qm = fadd float %i.ql, %i.qk
  store float %i.qm, ptr %i.qc, align 4, !tbaa !63
  %i.qn = fmul <2 x float> %i.ph, %i.qh
  %i.qo = shufflevector <2 x float> %i.qn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qh, <2 x float> %i.pf, <2 x float> %i.qo)
  store <2 x float> %i.qp, ptr %i.qd, align 4, !tbaa !63
  %i.qq = getelementptr inbounds i8, ptr %.0104107.i, i64 -16
  %i.qr = getelementptr inbounds i8, ptr %.0108.i, i64 -16
  %i.qs = getelementptr inbounds i8, ptr %.0104107.i, i64 -20 ; 2 uses
  %i.qt = getelementptr inbounds i8, ptr %.0108.i, i64 -20 ; 3 uses
  %i.qu = load <2 x float>, ptr %i.qs, align 4, !tbaa !63 ; 3 uses
  %i.qv = load float, ptr %i.qr, align 4, !tbaa !63
  %i.qw = load <2 x float>, ptr %i.qt, align 4, !tbaa !63
  %i.qx = fsub <2 x float> %i.qu, %i.qw           ; 2 uses
  %i.qy = extractelement <2 x float> %i.qu, i64 1
  %i.qz = fadd float %i.qy, %i.qv
  store float %i.qz, ptr %i.qq, align 4, !tbaa !63
  %i.ra = load float, ptr %i.qt, align 4, !tbaa !63
  %i.rb = extractelement <2 x float> %i.qu, i64 0
  %i.rc = fadd float %i.rb, %i.ra
  store float %i.rc, ptr %i.qs, align 4, !tbaa !63
  %i.rd = fmul <2 x float> %i.pd, %i.qx
  %i.re = shufflevector <2 x float> %i.rd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.rf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qx, <2 x float> %i.pb, <2 x float> %i.re)
  store <2 x float> %i.rf, ptr %i.qt, align 4, !tbaa !63
  %i.rg = getelementptr inbounds i8, ptr %.0104107.i, i64 -24
  %i.rh = getelementptr inbounds i8, ptr %.0108.i, i64 -24
  %i.ri = getelementptr inbounds i8, ptr %.0104107.i, i64 -28 ; 2 uses
  %i.rj = getelementptr inbounds i8, ptr %.0108.i, i64 -28 ; 3 uses
  %i.rk = load <2 x float>, ptr %i.ri, align 4, !tbaa !63 ; 3 uses
  %i.rl = load float, ptr %i.rh, align 4, !tbaa !63
  %i.rm = load <2 x float>, ptr %i.rj, align 4, !tbaa !63
  %i.rn = fsub <2 x float> %i.rk, %i.rm           ; 2 uses
  %i.ro = extractelement <2 x float> %i.rk, i64 1
  %i.rp = fadd float %i.ro, %i.rl
  store float %i.rp, ptr %i.rg, align 4, !tbaa !63
  %i.rq = load float, ptr %i.rj, align 4, !tbaa !63
  %i.rr = extractelement <2 x float> %i.rk, i64 0
  %i.rs = fadd float %i.rr, %i.rq
  store float %i.rs, ptr %i.ri, align 4, !tbaa !63
  %i.rt = fmul <2 x float> %i.oz, %i.rn
  %i.ru = shufflevector <2 x float> %i.rt, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.rv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rn, <2 x float> %i.ox, <2 x float> %i.ru)
  store <2 x float> %i.rv, ptr %i.rj, align 4, !tbaa !63
  %i.rw = getelementptr inbounds [4 x i8], ptr %.0104107.i, i64 %i.ny
  %i.rx = getelementptr inbounds [4 x i8], ptr %.0108.i, i64 %i.ny
  %i.ry = add nsw i32 %.0105106.i, -1
  %i.rz = icmp samesign ugt i32 %.0105106.i, 1
  br i1 %i.rz, label %bb.s, label %imdct_step3_inner_s_loop.exit.loopexit, !llvm.loop !16

imdct_step3_inner_s_loop.exit.loopexit:           ; preds = %bb.s
  %i.sa = getelementptr inbounds [4 x i8], ptr %.0393456, i64 %i.oa
  %indvars.iv.next496 = add nsw i64 %indvars.iv495, -8
  %i.sb = add nsw i32 %.0395454, -1
  %i.sc = icmp sgt i32 %.0395454, 1
  br i1 %i.sc, label %.lr.ph.i421, label %.loopexit, !llvm.loop !251

._crit_edge461:                                   ; preds = %.loopexit, %.preheader
  call void @imdct_step3_inner_s_loop_ld654(i32 noundef %i.ii, ptr noundef %0, i32 noundef %i.if, ptr noundef nonnull %i.x, i32 noundef %1)
  %i.sd = add nsw i32 %i.a, -4
  %i.se = sext i32 %i.sd to i64                   ; 2 uses
  %.0391462 = getelementptr i8, ptr %i.ec, i64 -16 ; 2 uses
  %.not412463 = icmp ult ptr %.0391462, %i.t
  br i1 %.not412463, label %._crit_edge470, label %.lr.ph469.preheader

.lr.ph469.preheader:                              ; preds = %._crit_edge461
  %i.sf = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.se
  %i.sg = getelementptr inbounds nuw i8, ptr %2, i64 1480
  %i.sh = getelementptr inbounds [8 x i8], ptr %i.sg, i64 %i.v
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !66
  br label %.lr.ph469

.lr.ph469:                                        ; preds = %.lr.ph469.preheader, %.lr.ph469
  %.0391467 = phi ptr [ %.0391, %.lr.ph469 ], [ %.0391462, %.lr.ph469.preheader ] ; 3 uses
  %.0390466 = phi ptr [ %i.tk, %.lr.ph469 ], [ %i.sf, %.lr.ph469.preheader ] ; 5 uses
  %.pn417465 = phi ptr [ %.0391467, %.lr.ph469 ], [ %i.ec, %.lr.ph469.preheader ] ; 3 uses
  %.0392464 = phi ptr [ %i.tl, %.lr.ph469 ], [ %i.si, %.lr.ph469.preheader ] ; 3 uses
  %i.sj = load i16, ptr %.0392464, align 2, !tbaa !58
  %i.sk = zext i16 %i.sj to i64
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.sk ; 4 uses
  %i.sm = load float, ptr %i.sl, align 4, !tbaa !63
  %i.sn = getelementptr inbounds nuw i8, ptr %.0390466, i64 12
  store float %i.sm, ptr %i.sn, align 4, !tbaa !63
  %i.so = getelementptr inbounds nuw i8, ptr %i.sl, i64 4
  %i.sp = load float, ptr %i.so, align 4, !tbaa !63
  %i.sq = getelementptr inbounds nuw i8, ptr %.0390466, i64 8
  store float %i.sp, ptr %i.sq, align 4, !tbaa !63
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !63
  %i.st = getelementptr i8, ptr %.pn417465, i64 -4
  store float %i.ss, ptr %i.st, align 4, !tbaa !63
  %i.su = getelementptr inbounds nuw i8, ptr %i.sl, i64 12
  %i.sv = load float, ptr %i.su, align 4, !tbaa !63
  %i.sw = getelementptr i8, ptr %.pn417465, i64 -8
  store float %i.sv, ptr %i.sw, align 4, !tbaa !63
  %i.sx = getelementptr inbounds nuw i8, ptr %.0392464, i64 2
  %i.sy = load i16, ptr %i.sx, align 2, !tbaa !58
  %i.sz = zext i16 %i.sy to i64
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.sz ; 4 uses
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !63
end_hunk_1
begin_hunk_2_@inverse_mdct:bb.a
  store float %i.yl, ptr %.0381, align 4, !tbaa !63
  %i.yp = getelementptr inbounds nuw i8, ptr %.0384481, i64 16
  %i.yq = getelementptr inbounds nuw i8, ptr %.0382483, i64 16
  %i.yr = getelementptr inbounds i8, ptr %.0383482, i64 -16
  %.0379 = getelementptr inbounds i8, ptr %.0379487, i64 -32 ; 2 uses
  %.not413 = icmp ult ptr %.0379, %i.t
  br i1 %.not413, label %._crit_edge490, label %.lr.ph489, !llvm.loop !254

._crit_edge490:                                   ; preds = %.lr.ph489, %._crit_edge478
  store i32 %i.e, ptr %i.d, align 4, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_window(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #15 {
bb.a:
  %i.a = shl i32 %1, 1                            ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load i32, ptr %i.b, align 8, !tbaa !106
  %i.d = icmp eq i32 %i.a, %i.c
  br i1 %i.d, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.f = load i32, ptr %i.e, align 4, !tbaa !107
  %i.g = icmp eq i32 %i.a, %i.f
  br i1 %i.g, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.sink9 = phi i64 [ 1464, %bb.a ], [ 1472, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !64
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.i, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @do_floor(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree readnone captures(none) %6) local_unnamed_addr #14 {
bb.a:
  %i.a = ashr i32 %3, 1                           ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds [3 x i8], ptr %i.c, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !111
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.i = zext i8 %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.m = zext i8 %i.k to i64                      ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2, !tbaa !58
  %i.p = icmp eq i16 %i.o, 0
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 21, ptr %i.q, align 4
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !112
  %i.t = getelementptr inbounds nuw [1596 x i8], ptr %i.s, i64 %i.m ; 4 uses
  %i.u = load i16, ptr %5, align 2, !tbaa !58
  %i.v = sext i16 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 1588
  %i.x = load i8, ptr %i.w, align 4, !tbaa !114
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %i.z = mul nsw i32 %i.y, %i.v                   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 1592
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !115 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 838
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 338
  %wide.trip.count = zext nneg i32 %i.ab to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %draw_line.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %draw_line.exit ] ; 2 uses
  %.053 = phi i32 [ %i.z, %.lr.ph ], [ %.1, %draw_line.exit ] ; 4 uses
  %.04352 = phi i32 [ 0, %.lr.ph ], [ %.144, %draw_line.exit ] ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %indvars.iv
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !49
  %i.ah = zext i8 %i.ag to i64                    ; 2 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !58 ; 2 uses
  %i.ak = icmp sgt i16 %i.aj, -1
  br i1 %i.ak, label %bb.e, label %draw_line.exit

bb.e:                                             ; preds = %bb.d
  %i.al = zext nneg i16 %i.aj to i32
  %i.am = mul nuw nsw i32 %i.al, %i.y             ; 5 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.ah
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !58
  %i.ap = zext i16 %i.ao to i32                   ; 6 uses
  %.not = icmp eq i32 %.04352, %i.ap
  br i1 %.not, label %draw_line.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sub nsw i32 %i.am, %.053                ; 3 uses
  %i.ar = sub nsw i32 %i.ap, %.04352              ; 4 uses
  %i.as = tail call i32 @llvm.abs.i32(i32 %i.aq, i1 true)
  %i.at = sdiv i32 %i.aq, %i.ar                   ; 2 uses
  %.inv.i = icmp sgt i32 %i.aq, -1
  %.0.v.i = select i1 %.inv.i, i32 1, i32 -1
  %i.au = tail call i32 @llvm.abs.i32(i32 %i.at, i1 true)
  %i.av = mul nsw i32 %i.au, %i.ar
  %i.aw = sub nsw i32 %i.as, %i.av
  %.043.i = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 %i.a) ; 3 uses
  %i.ax = icmp slt i32 %.04352, %.043.i
  br i1 %i.ax, label %bb.g, label %draw_line.exit

bb.g:                                             ; preds = %bb.f
  %i.ay = and i32 %.053, 255
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr @inverse_db_table, i64 %i.az
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !63
  %i.bc = zext nneg i32 %.04352 to i64            ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bc ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !63
  %i.bf = fmul float %i.bb, %i.be
  store float %i.bf, ptr %i.bd, align 4, !tbaa !63
  %.04250.i = add nuw nsw i32 %.04352, 1
  %i.bg = icmp slt i32 %.04250.i, %.043.i
  br i1 %i.bg, label %.lr.ph.preheader.i, label %draw_line.exit

.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.bh = add nuw nsw i64 %i.bc, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.bh, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.03952.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.1.i, %.lr.ph.i ]
  %.04051.i = phi i32 [ %.053, %.lr.ph.preheader.i ], [ %.141.i, %.lr.ph.i ]
  %i.bi = add nsw i32 %.03952.i, %i.aw            ; 2 uses
  %.not.i = icmp slt i32 %i.bi, %i.ar             ; 2 uses
  %.0.i = select i1 %.not.i, i32 0, i32 %.0.v.i
  %i.bj = select i1 %.not.i, i32 0, i32 %i.ar
  %.1.i = sub nsw i32 %i.bi, %i.bj
  %.0.pn.i = add i32 %.04051.i, %i.at
  %.141.i = add i32 %.0.pn.i, %.0.i               ; 2 uses
  %i.bk = and i32 %.141.i, 255
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr @inverse_db_table, i64 %i.bl
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !63
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !63
  %i.bq = fmul float %i.bn, %i.bp
  store float %i.bq, ptr %i.bo, align 4, !tbaa !63
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %.043.i, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %draw_line.exit, label %.lr.ph.i, !llvm.loop !259

draw_line.exit:                                   ; preds = %.lr.ph.i, %bb.g, %bb.f, %bb.e, %bb.d
  %.144 = phi i32 [ %.04352, %bb.d ], [ %.04352, %bb.e ], [ %i.ap, %bb.f ], [ %i.ap, %bb.g ], [ %i.ap, %.lr.ph.i ] ; 2 uses
  %.1 = phi i32 [ %.053, %bb.d ], [ %i.am, %bb.e ], [ %i.am, %bb.f ], [ %i.am, %bb.g ], [ %i.am, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !260

._crit_edge:                                      ; preds = %draw_line.exit, %bb.c
  %.043.lcssa = phi i32 [ 0, %bb.c ], [ %.144, %draw_line.exit ] ; 2 uses
  %.0.lcssa = phi i32 [ %i.z, %bb.c ], [ %.1, %draw_line.exit ]
  %i.br = icmp slt i32 %.043.lcssa, %i.a
  br i1 %i.br, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge
  %i.bs = sext i32 %.0.lcssa to i64               ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr @inverse_db_table, i64 %i.bs ; 7 uses
  %i.bu = zext i32 %.043.lcssa to i64             ; 6 uses
  %wide.trip.count60 = zext nneg i32 %i.a to i64  ; 5 uses
  %i.bv = sub nsw i64 %wide.trip.count60, %i.bu   ; 3 uses
  %min.iters.check = icmp ult i64 %i.bv, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %i.bw = shl nuw nsw i64 %i.bu, 2
  %scevgep = getelementptr i8, ptr %4, i64 %i.bw
  %i.bx = shl nuw nsw i64 %wide.trip.count60, 2
  %scevgep65 = getelementptr i8, ptr %4, i64 %i.bx
  %i.by = shl nsw i64 %i.bs, 2
  %i.bz = getelementptr i8, ptr @inverse_db_table, i64 %i.by
  %scevgep66 = getelementptr i8, ptr %i.bz, i64 4
  %bound0 = icmp ult ptr %scevgep, %scevgep66
  %bound1 = icmp ult ptr %i.bt, %scevgep65
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bv, -8                      ; 3 uses
  %i.ca = load float, ptr %i.bt, align 4, !tbaa !63, !alias.scope !267
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ca, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %4, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %gep, align 4, !tbaa !63, !alias.scope !268, !noalias !267
  %wide.load67 = load <4 x float>, ptr %i.cb, align 4, !tbaa !63, !alias.scope !268, !noalias !267
  %i.cc = fmul <4 x float> %broadcast.splat, %wide.load
  %i.cd = fmul <4 x float> %broadcast.splat, %wide.load67
  store <4 x float> %i.cc, ptr %gep, align 4, !tbaa !63, !alias.scope !268, !noalias !267
  store <4 x float> %i.cd, ptr %i.cb, align 4, !tbaa !63, !alias.scope !268, !noalias !267
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !264

middle.block:                                     ; preds = %vector.body
  %7 = add nsw i64 %n.vec, %i.bu
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv57.ph = phi i64 [ %i.bu, %vector.memcheck ], [ %i.bu, %.preheader ], [ %7, %middle.block ] ; 4 uses
  %i.cf = sub nsw i64 %wide.trip.count60, %indvars.iv57.ph
  %xtraiter = and i64 %i.cf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv57.prol = phi i64 [ %indvars.iv.next58.prol, %scalar.ph.prol ], [ %indvars.iv57.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cg = load float, ptr %i.bt, align 4, !tbaa !63
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv57.prol ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !63
  %i.cj = fmul float %i.cg, %i.ci
  store float %i.cj, ptr %i.ch, align 4, !tbaa !63
  %indvars.iv.next58.prol = add nuw nsw i64 %indvars.iv57.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !265

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv57.unr = phi i64 [ %indvars.iv57.ph, %scalar.ph.preheader ], [ %indvars.iv.next58.prol, %scalar.ph.prol ]
  %i.ck = sub nsw i64 %indvars.iv57.ph, %wide.trip.count60
  %i.cl = icmp ugt i64 %i.ck, -4
  br i1 %i.cl, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv57 = phi i64 [ %indvars.iv.next58.3, %scalar.ph ], [ %indvars.iv57.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.cm = load float, ptr %i.bt, align 4, !tbaa !63
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv57 ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !63
  %i.cp = fmul float %i.cm, %i.co
  store float %i.cp, ptr %i.cn, align 4, !tbaa !63
  %i.cq = load float, ptr %i.bt, align 4, !tbaa !63
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv57
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4 ; 2 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !63
  %i.cu = fmul float %i.cq, %i.ct
  store float %i.cu, ptr %i.cs, align 4, !tbaa !63
  %i.cv = load float, ptr %i.bt, align 4, !tbaa !63
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv57
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !63
  %i.cz = fmul float %i.cv, %i.cy
  store float %i.cz, ptr %i.cx, align 4, !tbaa !63
  %i.da = load float, ptr %i.bt, align 4, !tbaa !63
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv57
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 12 ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !63
  %i.de = fmul float %i.da, %i.dd
  store float %i.de, ptr %i.dc, align 4, !tbaa !63
  %indvars.iv.next58.3 = add nuw nsw i64 %indvars.iv57, 4 ; 2 uses
  %exitcond61.not.3 = icmp eq i64 %indvars.iv.next58.3, %wide.trip.count60
  br i1 %exitcond61.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !266

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge, %bb.b
  %.047 = phi i32 [ 0, %bb.b ], [ 1, %._crit_edge ], [ 1, %middle.block ], [ 1, %scalar.ph ], [ 1, %scalar.ph.prol.loopexit ]
  ret i32 %.047
}

; Function Attrs: nofree nounwind uwtable
define range(i32 0, 2) i32 @vorbis_decode_initial(ptr nofree noundef initializes((1892, 1900)) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1896
  store i32 0, ptr %i.a, align 8, !tbaa !116
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1892
  store i32 0, ptr %i.b, align 4, !tbaa !117
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !71
  %.not89 = icmp eq i32 %i.d, 0
  br i1 %.not89, label %.lr.ph, label %.loopexit79

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1784 ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1780 ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1764 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1772 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1768 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1504 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1763
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1508
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1788 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  br label %bb.b

.critedge:                                        ; preds = %next_segment.exit.i, %bb.i, %.loopexit, %bb.m
  store i32 0, ptr %i.e, align 8, !tbaa !83
  %i.t = load i32, ptr %i.c, align 8, !tbaa !71
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.b, label %.loopexit79

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %i.u = tail call i32 @maybe_start_packet(ptr noundef nonnull %0)
  %.not54 = icmp eq i32 %i.u, 0
  br i1 %.not54, label %.loopexit79, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load i32, ptr %i.e, align 8, !tbaa !83   ; 3 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %get_bits.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = icmp eq i32 %i.v, 0
  br i1 %i.x, label %.lr.ph.i, label %.get_bits.exit_crit_edge

.get_bits.exit_crit_edge:                         ; preds = %bb.d
  %.pre = load i32, ptr %i.f, align 4, !tbaa !87
  br label %get_bits.exit

.lr.ph.i:                                         ; preds = %bb.d
  store i32 0, ptr %i.f, align 4, !tbaa !87
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %i.y = tail call i32 @get8_packet_raw(ptr noundef nonnull %0), !inline_history !88 ; 2 uses
  %.not.i = icmp eq i32 %i.y, -1
  br i1 %.not.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load i32, ptr %i.e, align 8, !tbaa !83   ; 3 uses
  %i.aa = shl i32 %i.y, %i.z
  %i.ab = load i32, ptr %i.f, align 4, !tbaa !87
  %i.ac = add i32 %i.ab, %i.aa                    ; 2 uses
  store i32 %i.ac, ptr %i.f, align 4, !tbaa !87
  %i.ad = add nsw i32 %i.z, 8                     ; 2 uses
  store i32 %i.ad, ptr %i.e, align 8, !tbaa !83
  %i.ae = icmp slt i32 %i.z, -7
  br i1 %i.ae, label %bb.e, label %get_bits.exit, !llvm.loop !7

.critedge.i:                                      ; preds = %bb.e
  store i32 -1, ptr %i.e, align 8, !tbaa !83
  br label %get_bits.exit.thread

get_bits.exit:                                    ; preds = %bb.f, %.get_bits.exit_crit_edge
  %i.af = phi i32 [ %.pre, %.get_bits.exit_crit_edge ], [ %i.ac, %bb.f ] ; 2 uses
  %i.ag = phi i32 [ %i.v, %.get_bits.exit_crit_edge ], [ %i.ad, %bb.f ]
  %i.ah = and i32 %i.af, 1
  %i.ai = lshr i32 %i.af, 1
  store i32 %i.ai, ptr %i.f, align 4, !tbaa !87
  %i.aj = add nsw i32 %i.ag, -1
  store i32 %i.aj, ptr %i.e, align 8, !tbaa !83
  %.not55 = icmp eq i32 %i.ah, 0
  br i1 %.not55, label %get_bits.exit.thread, label %bb.g

bb.g:                                             ; preds = %get_bits.exit
  %i.ak = load i8, ptr %i.g, align 4, !tbaa !73
  %.not59 = icmp eq i8 %i.ak, 0
  br i1 %.not59, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 35, ptr %i.s, align 4
  br label %.loopexit79

.preheader:                                       ; preds = %bb.g, %get8_packet_raw.exit
  %i.al = load i8, ptr %i.h, align 4, !tbaa !85   ; 2 uses
  %.not.i73 = icmp eq i8 %i.al, 0
  br i1 %.not.i73, label %bb.i, label %bb.r

bb.i:                                             ; preds = %.preheader
  %i.am = load i32, ptr %i.i, align 4, !tbaa !82
  %.not6.i = icmp eq i32 %i.am, 0
  br i1 %.not6.i, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.an = load i32, ptr %i.j, align 8, !tbaa !81  ; 2 uses
  %i.ao = icmp eq i32 %i.an, -1
  br i1 %i.ao, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ap = load i32, ptr %i.k, align 8, !tbaa !78
  %i.aq = add nsw i32 %i.ap, -1
  store i32 %i.aq, ptr %i.l, align 8, !tbaa !86
  %i.ar = tail call i32 @capture_pattern(ptr noundef nonnull %0)
  %.not.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i, label %start_page.exit.thread.i.i, label %start_page.exit.i.i

start_page.exit.thread.i.i:                       ; preds = %bb.k
  store i32 30, ptr %i.s, align 4
  br label %.loopexit

start_page.exit.i.i:                              ; preds = %bb.k
  %i.as = tail call i32 @start_page_no_capturepattern(ptr noundef nonnull %0)
  %.not20.i.i = icmp eq i32 %i.as, 0
  br i1 %.not20.i.i, label %.loopexit, label %bb.l

.loopexit:                                        ; preds = %start_page.exit.i.i, %start_page.exit.thread.i.i
  store i32 1, ptr %i.i, align 4, !tbaa !82
  br label %.critedge

bb.l:                                             ; preds = %start_page.exit.i.i
  %i.at = load i8, ptr %i.m, align 1, !tbaa !77
  %i.au = and i8 %i.at, 1
end_hunk_2
begin_hunk_3_@vorbis_decode_packet_rest:bb.a
  %i.ph = getelementptr inbounds nuw i8, ptr %i.iz, i64 4
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !61 ; 3 uses
  %i.pj = icmp sgt i32 %i.pi, 8
  br i1 %i.pj, label %bb.ec, label %.thread66.i

bb.ec:                                            ; preds = %.thread.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.iz, i64 2096
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !59 ; 2 uses
  %.not61.i = icmp eq ptr %.pre.i, null
  br i1 %.not61.i, label %.lr.ph76.i, label %.thread96.i

.thread96.i:                                      ; preds = %bb.ec, %bb.eb
  %i.pk = phi ptr [ %.pre.i, %bb.ec ], [ %i.pf, %bb.eb ]
  %i.pl = load i32, ptr %i.aa, align 4, !tbaa !87 ; 2 uses
  %i.pm = tail call noundef i32 @llvm.bitreverse.i32(i32 %i.pl)
  %i.pn = getelementptr inbounds nuw i8, ptr %i.iz, i64 2112
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !60 ; 2 uses
  %i.pp = icmp sgt i32 %i.po, 1
  br i1 %i.pp, label %.lr.ph.i416, label %._crit_edge.i

.lr.ph.i416:                                      ; preds = %.thread96.i, %.lr.ph.i416
  %.072.i = phi i32 [ %.1.i, %.lr.ph.i416 ], [ %i.po, %.thread96.i ] ; 2 uses
  %.05471.i = phi i32 [ %.155.i, %.lr.ph.i416 ], [ 0, %.thread96.i ] ; 2 uses
  %i.pq = lshr i32 %.072.i, 1                     ; 3 uses
  %i.pr = add nsw i32 %i.pq, %.05471.i            ; 2 uses
  %i.ps = sext i32 %i.pr to i64
  %i.pt = getelementptr inbounds [4 x i8], ptr %i.pk, i64 %i.ps
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !46
  %.not65.i = icmp ugt i32 %i.pu, %i.pm           ; 2 uses
  %i.pv = sub nuw nsw i32 %.072.i, %i.pq
  %.155.i = select i1 %.not65.i, i32 %.05471.i, i32 %i.pr ; 2 uses
  %.1.i = select i1 %.not65.i, i32 %i.pq, i32 %i.pv ; 2 uses
  %i.pw = icmp samesign ugt i32 %.1.i, 1
  br i1 %i.pw, label %.lr.ph.i416, label %._crit_edge.i, !llvm.loop !9

._crit_edge.i:                                    ; preds = %.lr.ph.i416, %.thread96.i
  %.054.lcssa.i = phi i32 [ 0, %.thread96.i ], [ %.155.i, %.lr.ph.i416 ] ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.iz, i64 27
  %i.py = load i8, ptr %i.px, align 1, !tbaa !54
  %.not63.i = icmp eq i8 %i.py, 0
  br i1 %.not63.i, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %._crit_edge.i
  %i.pz = getelementptr inbounds nuw i8, ptr %i.iz, i64 2104
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !62
  %i.qb = sext i32 %.054.lcssa.i to i64
  %i.qc = getelementptr inbounds [4 x i8], ptr %i.qa, i64 %i.qb
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !46
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %._crit_edge.i
  %.2.i = phi i32 [ %.054.lcssa.i, %._crit_edge.i ], [ %i.qd, %bb.ed ] ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !56
  %i.qg = sext i32 %.2.i to i64
  %i.qh = getelementptr inbounds i8, ptr %i.qf, i64 %i.qg
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !49
  %i.qj = zext i8 %i.qi to i32                    ; 3 uses
  %i.qk = load i32, ptr %i.z, align 8, !tbaa !83  ; 2 uses
  %.not64.i = icmp slt i32 %i.qk, %i.qj
  br i1 %.not64.i, label %codebook_decode_scalar_raw.exit.sink.split, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ql = lshr i32 %i.pl, %i.qj
  store i32 %i.ql, ptr %i.aa, align 4, !tbaa !87
  %i.qm = sub nuw nsw i32 %i.qk, %i.qj
  br label %codebook_decode_scalar_raw.exit.sink.split

.thread66.i:                                      ; preds = %.thread.i
  %i.qn = icmp sgt i32 %i.pi, 0
  br i1 %i.qn, label %.lr.ph76.i, label %._crit_edge77.i

.lr.ph76.i:                                       ; preds = %.thread66.i, %bb.ec
  %i.qo = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !56 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.pi to i64
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ek, %.lr.ph76.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph76.i ], [ %indvars.iv.next.i, %bb.ek ] ; 5 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 %indvars.iv.i
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !49  ; 2 uses
  %i.qs = icmp eq i8 %i.qr, -1
  br i1 %i.qs, label %bb.ek, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.qt = zext i8 %i.qr to i32                    ; 3 uses
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %indvars.iv.i
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !46
  %i.qw = load i32, ptr %i.aa, align 4, !tbaa !87 ; 2 uses
  %notmask.i = shl nsw i32 -1, %i.qt
  %i.qx = xor i32 %notmask.i, -1
  %i.qy = and i32 %i.qw, %i.qx
  %i.qz = icmp eq i32 %i.qv, %i.qy
  br i1 %i.qz, label %bb.ei, label %bb.ek

bb.ei:                                            ; preds = %bb.eh
  %i.ra = load i32, ptr %i.z, align 8, !tbaa !83  ; 2 uses
  %.not62.i = icmp slt i32 %i.ra, %i.qt
  br i1 %.not62.i, label %codebook_decode_scalar_raw.exit.sink.split, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qp, i64 %indvars.iv.i
  %i.rc = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.rd = lshr i32 %i.qw, %i.qt
  store i32 %i.rd, ptr %i.aa, align 4, !tbaa !87
  %i.re = load i8, ptr %i.rb, align 1, !tbaa !49
  %i.rf = zext i8 %i.re to i32
  %i.rg = sub nsw i32 %i.ra, %i.rf
  br label %codebook_decode_scalar_raw.exit.sink.split

bb.ek:                                            ; preds = %bb.eh, %bb.eg
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge77.i, label %bb.eg, !llvm.loop !10

._crit_edge77.i:                                  ; preds = %bb.ek, %.thread66.i
  store i32 21, ptr %i.ap, align 4
  br label %codebook_decode_scalar_raw.exit.sink.split

codebook_decode_scalar_raw.exit.sink.split:       ; preds = %bb.ee, %bb.ef, %bb.ei, %bb.ej, %._crit_edge77.i, %bb.cn
  %.sink.i.sink = phi i32 [ %spec.select408, %bb.cn ], [ 0, %._crit_edge77.i ], [ 0, %bb.ee ], [ %i.rg, %bb.ej ], [ %i.qm, %bb.ef ], [ 0, %bb.ei ]
  %.1338.ph = phi i32 [ %spec.select409, %bb.cn ], [ -1, %._crit_edge77.i ], [ -1, %bb.ee ], [ %i.rc, %bb.ej ], [ %.2.i, %bb.ef ], [ -1, %bb.ei ]
  store i32 %.sink.i.sink, ptr %i.z, align 8, !tbaa !83
  br label %codebook_decode_scalar_raw.exit

codebook_decode_scalar_raw.exit:                  ; preds = %codebook_decode_scalar_raw.exit.sink.split, %bb.eb
  %.1338 = phi i32 [ -1, %bb.eb ], [ %.1338.ph, %codebook_decode_scalar_raw.exit.sink.split ] ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.iz, i64 27
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !54
  %.not405 = icmp eq i8 %i.ri, 0
  br i1 %.not405, label %bb.em, label %bb.el

bb.el:                                            ; preds = %codebook_decode_scalar_raw.exit
  %i.rj = getelementptr inbounds nuw i8, ptr %i.iz, i64 2104
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !62
  %i.rl = sext i32 %.1338 to i64
  %i.rm = getelementptr inbounds [4 x i8], ptr %i.rk, i64 %i.rl
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !46
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %codebook_decode_scalar_raw.exit
  %.2 = phi i32 [ %i.rn, %bb.el ], [ %.1338, %codebook_decode_scalar_raw.exit ]
  %i.ro = trunc i32 %.2 to i16
  br label %bb.en

bb.en:                                            ; preds = %bb.az, %bb.em
  %.sink = phi i16 [ %i.ro, %bb.em ], [ 0, %bb.az ]
  %i.rp = getelementptr inbounds [2 x i8], ptr %i.ca, i64 %indvars.iv
  store i16 %.sink, ptr %i.rp, align 2, !tbaa !58
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.rq = add nuw nsw i32 %.0348540, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.rq, %i.fu
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.az, !llvm.loop !270

._crit_edge.loopexit:                             ; preds = %bb.en
  %i.rr = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ay
  %.1343.lcssa = phi i32 [ %.0342544, %bb.ay ], [ %i.rr, %._crit_edge.loopexit ]
  %indvars.iv.next592 = add nuw nsw i64 %indvars.iv591, 1 ; 2 uses
  %i.rs = load i8, ptr %i.bd, align 4, !tbaa !123
  %i.rt = zext i8 %i.rs to i64
  %i.ru = icmp samesign ult i64 %indvars.iv.next592, %i.rt
  br i1 %i.ru, label %bb.z, label %._crit_edge546, !llvm.loop !271

._crit_edge546:                                   ; preds = %._crit_edge, %ilog.exit411
  %i.rv = load i32, ptr %i.z, align 8, !tbaa !83
  %i.rw = icmp eq i32 %i.rv, -1
  br i1 %i.rw, label %bb.fa, label %bb.eo

bb.eo:                                            ; preds = %._crit_edge546
  store i8 1, ptr %i.aq, align 1, !tbaa !49
  store i8 1, ptr %i.c, align 16, !tbaa !49
  %i.rx = getelementptr inbounds nuw i8, ptr %i.bd, i64 1592
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !115 ; 6 uses
  %i.rz = icmp sgt i32 %i.ry, 2
  br i1 %i.rz, label %.lr.ph549, label %.preheader528

.lr.ph549:                                        ; preds = %bb.eo
  %i.sa = getelementptr inbounds nuw i8, ptr %i.bd, i64 1088
  %i.sb = getelementptr inbounds nuw i8, ptr %i.bd, i64 338 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ry to i64
  br label %bb.ep

.preheader528:                                    ; preds = %bb.ex, %bb.eo
  %i.sc = icmp sgt i32 %i.ry, 0
  br i1 %i.sc, label %iter.check, label %.thread516

iter.check:                                       ; preds = %.preheader528
  %wide.trip.count601 = zext nneg i32 %i.ry to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.ry, 4
  br i1 %min.iters.check, label %.lr.ph552.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check742 = icmp ult i32 %i.ry, 16
  br i1 %min.iters.check742, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %wide.trip.count601, 2147483632 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue773, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue773 ] ; 18 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.c, i64 %index ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  %wide.load = load <8 x i8>, ptr %i.sd, align 16, !tbaa !49
  %wide.load743 = load <8 x i8>, ptr %i.se, align 8, !tbaa !49
  %i.sf = icmp eq <8 x i8> %wide.load, zeroinitializer ; 8 uses
  %i.sg = icmp eq <8 x i8> %wide.load743, zeroinitializer ; 8 uses
  %i.sh = extractelement <8 x i1> %i.sf, i64 0
  br i1 %i.sh, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.si = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  store i16 -1, ptr %i.si, align 2, !tbaa !58
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.sj = extractelement <8 x i1> %i.sf, i64 1
  br i1 %i.sj, label %pred.store.if744, label %pred.store.continue745

pred.store.if744:                                 ; preds = %pred.store.continue
  %i.sk = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 2
  store i16 -1, ptr %i.sl, align 2, !tbaa !58
  br label %pred.store.continue745

pred.store.continue745:                           ; preds = %pred.store.if744, %pred.store.continue
  %i.sm = extractelement <8 x i1> %i.sf, i64 2
  br i1 %i.sm, label %pred.store.if746, label %pred.store.continue747

pred.store.if746:                                 ; preds = %pred.store.continue745
  %i.sn = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 4
  store i16 -1, ptr %i.so, align 2, !tbaa !58
  br label %pred.store.continue747

pred.store.continue747:                           ; preds = %pred.store.if746, %pred.store.continue745
  %i.sp = extractelement <8 x i1> %i.sf, i64 3
  br i1 %i.sp, label %pred.store.if748, label %pred.store.continue749

pred.store.if748:                                 ; preds = %pred.store.continue747
  %i.sq = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 6
  store i16 -1, ptr %i.sr, align 2, !tbaa !58
  br label %pred.store.continue749

pred.store.continue749:                           ; preds = %pred.store.if748, %pred.store.continue747
  %i.ss = extractelement <8 x i1> %i.sf, i64 4
  br i1 %i.ss, label %pred.store.if750, label %pred.store.continue751

pred.store.if750:                                 ; preds = %pred.store.continue749
  %i.st = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  store i16 -1, ptr %i.su, align 2, !tbaa !58
  br label %pred.store.continue751

pred.store.continue751:                           ; preds = %pred.store.if750, %pred.store.continue749
  %i.sv = extractelement <8 x i1> %i.sf, i64 5
  br i1 %i.sv, label %pred.store.if752, label %pred.store.continue753

pred.store.if752:                                 ; preds = %pred.store.continue751
  %i.sw = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 10
  store i16 -1, ptr %i.sx, align 2, !tbaa !58
  br label %pred.store.continue753

pred.store.continue753:                           ; preds = %pred.store.if752, %pred.store.continue751
  %i.sy = extractelement <8 x i1> %i.sf, i64 6
  br i1 %i.sy, label %pred.store.if754, label %pred.store.continue755

pred.store.if754:                                 ; preds = %pred.store.continue753
  %i.sz = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 12
  store i16 -1, ptr %i.ta, align 2, !tbaa !58
  br label %pred.store.continue755

pred.store.continue755:                           ; preds = %pred.store.if754, %pred.store.continue753
  %i.tb = extractelement <8 x i1> %i.sf, i64 7
  br i1 %i.tb, label %pred.store.if756, label %pred.store.continue757

pred.store.if756:                                 ; preds = %pred.store.continue755
  %i.tc = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 14
  store i16 -1, ptr %i.td, align 2, !tbaa !58
  br label %pred.store.continue757

pred.store.continue757:                           ; preds = %pred.store.if756, %pred.store.continue755
  %i.te = extractelement <8 x i1> %i.sg, i64 0
  br i1 %i.te, label %pred.store.if758, label %pred.store.continue759

pred.store.if758:                                 ; preds = %pred.store.continue757
  %i.tf = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 16
  store i16 -1, ptr %i.tg, align 2, !tbaa !58
  br label %pred.store.continue759

pred.store.continue759:                           ; preds = %pred.store.if758, %pred.store.continue757
  %i.th = extractelement <8 x i1> %i.sg, i64 1
  br i1 %i.th, label %pred.store.if760, label %pred.store.continue761

pred.store.if760:                                 ; preds = %pred.store.continue759
  %i.ti = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 18
  store i16 -1, ptr %i.tj, align 2, !tbaa !58
  br label %pred.store.continue761

pred.store.continue761:                           ; preds = %pred.store.if760, %pred.store.continue759
  %i.tk = extractelement <8 x i1> %i.sg, i64 2
  br i1 %i.tk, label %pred.store.if762, label %pred.store.continue763

pred.store.if762:                                 ; preds = %pred.store.continue761
  %i.tl = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 20
  store i16 -1, ptr %i.tm, align 2, !tbaa !58
  br label %pred.store.continue763

pred.store.continue763:                           ; preds = %pred.store.if762, %pred.store.continue761
  %i.tn = extractelement <8 x i1> %i.sg, i64 3
  br i1 %i.tn, label %pred.store.if764, label %pred.store.continue765

pred.store.if764:                                 ; preds = %pred.store.continue763
  %i.to = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 22
  store i16 -1, ptr %i.tp, align 2, !tbaa !58
  br label %pred.store.continue765

pred.store.continue765:                           ; preds = %pred.store.if764, %pred.store.continue763
  %i.tq = extractelement <8 x i1> %i.sg, i64 4
  br i1 %i.tq, label %pred.store.if766, label %pred.store.continue767

pred.store.if766:                                 ; preds = %pred.store.continue765
  %i.tr = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 24
  store i16 -1, ptr %i.ts, align 2, !tbaa !58
  br label %pred.store.continue767

pred.store.continue767:                           ; preds = %pred.store.if766, %pred.store.continue765
  %i.tt = extractelement <8 x i1> %i.sg, i64 5
  br i1 %i.tt, label %pred.store.if768, label %pred.store.continue769

pred.store.if768:                                 ; preds = %pred.store.continue767
  %i.tu = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 26
  store i16 -1, ptr %i.tv, align 2, !tbaa !58
  br label %pred.store.continue769

pred.store.continue769:                           ; preds = %pred.store.if768, %pred.store.continue767
  %i.tw = extractelement <8 x i1> %i.sg, i64 6
  br i1 %i.tw, label %pred.store.if770, label %pred.store.continue771

pred.store.if770:                                 ; preds = %pred.store.continue769
  %i.tx = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 28
  store i16 -1, ptr %i.ty, align 2, !tbaa !58
  br label %pred.store.continue771

pred.store.continue771:                           ; preds = %pred.store.if770, %pred.store.continue769
  %i.tz = extractelement <8 x i1> %i.sg, i64 7
  br i1 %i.tz, label %pred.store.if772, label %pred.store.continue773

pred.store.if772:                                 ; preds = %pred.store.continue771
  %i.ua = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 30
  store i16 -1, ptr %i.ub, align 2, !tbaa !58
  br label %pred.store.continue773

pred.store.continue773:                           ; preds = %pred.store.if772, %pred.store.continue771
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.uc = icmp eq i64 %index.next, %n.vec
  br i1 %i.uc, label %middle.block, label %vector.body, !llvm.loop !272

middle.block:                                     ; preds = %pred.store.continue773
  %8 = and i64 %wide.trip.count601, 12
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count601
  br i1 %cmp.n, label %.thread516, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %8, 0
  br i1 %min.epilog.iters.check, label %.lr.ph552.preheader, label %vec.epilog.ph, !prof !288

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec774 = and i64 %wide.trip.count601, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue784, %vec.epilog.ph
  %index775 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next785, %pred.store.continue784 ] ; 6 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.c, i64 %index775
  %wide.load776 = load <4 x i8>, ptr %i.ud, align 4, !tbaa !49
  %i.ue = icmp eq <4 x i8> %wide.load776, zeroinitializer ; 4 uses
  %i.uf = extractelement <4 x i1> %i.ue, i64 0
  br i1 %i.uf, label %pred.store.if777, label %pred.store.continue778

pred.store.if777:                                 ; preds = %vec.epilog.vector.body
  %i.ug = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index775
  store i16 -1, ptr %i.ug, align 2, !tbaa !58
  br label %pred.store.continue778

pred.store.continue778:                           ; preds = %pred.store.if777, %vec.epilog.vector.body
  %i.uh = extractelement <4 x i1> %i.ue, i64 1
  br i1 %i.uh, label %pred.store.if779, label %pred.store.continue780

pred.store.if779:                                 ; preds = %pred.store.continue778
  %i.ui = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index775
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 2
  store i16 -1, ptr %i.uj, align 2, !tbaa !58
  br label %pred.store.continue780

pred.store.continue780:                           ; preds = %pred.store.if779, %pred.store.continue778
  %i.uk = extractelement <4 x i1> %i.ue, i64 2
  br i1 %i.uk, label %pred.store.if781, label %pred.store.continue782

pred.store.if781:                                 ; preds = %pred.store.continue780
  %i.ul = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index775
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 4
  store i16 -1, ptr %i.um, align 2, !tbaa !58
  br label %pred.store.continue782

pred.store.continue782:                           ; preds = %pred.store.if781, %pred.store.continue780
  %i.un = extractelement <4 x i1> %i.ue, i64 3
  br i1 %i.un, label %pred.store.if783, label %pred.store.continue784

pred.store.if783:                                 ; preds = %pred.store.continue782
  %i.uo = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index775
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 6
  store i16 -1, ptr %i.up, align 2, !tbaa !58
  br label %pred.store.continue784

pred.store.continue784:                           ; preds = %pred.store.if783, %pred.store.continue782
  %index.next785 = add nuw i64 %index775, 4       ; 2 uses
  %i.uq = icmp eq i64 %index.next785, %n.vec774
  br i1 %i.uq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !273

vec.epilog.middle.block:                          ; preds = %pred.store.continue784
  %cmp.n786 = icmp eq i64 %n.vec774, %wide.trip.count601
  br i1 %cmp.n786, label %.thread516, label %.lr.ph552.preheader

.lr.ph552.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv598.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec774, %vec.epilog.middle.block ]
  br label %.lr.ph552

bb.ep:                                            ; preds = %.lr.ph549, %bb.ex
  %indvars.iv594 = phi i64 [ 2, %.lr.ph549 ], [ %indvars.iv.next595, %bb.ex ] ; 6 uses
  %i.ur = getelementptr inbounds nuw [2 x i8], ptr %i.sa, i64 %indvars.iv594 ; 2 uses
  %i.us = load i8, ptr %i.ur, align 2, !tbaa !49
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ur, i64 1
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !49
  %i.uv = getelementptr inbounds nuw [2 x i8], ptr %i.sb, i64 %indvars.iv594
  %i.uw = load i16, ptr %i.uv, align 2, !tbaa !58
  %i.ux = zext i16 %i.uw to i32
  %i.uy = zext i8 %i.us to i64                    ; 3 uses
  %i.uz = getelementptr inbounds nuw [2 x i8], ptr %i.sb, i64 %i.uy
  %i.va = load i16, ptr %i.uz, align 2, !tbaa !58
  %i.vb = zext i16 %i.va to i32                   ; 2 uses
  %i.vc = zext i8 %i.uu to i64                    ; 3 uses
  %i.vd = getelementptr inbounds nuw [2 x i8], ptr %i.sb, i64 %i.vc
  %i.ve = load i16, ptr %i.vd, align 2, !tbaa !58
  %i.vf = zext i16 %i.ve to i32
  %i.vg = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %i.uy
  %i.vh = load i16, ptr %i.vg, align 2, !tbaa !58
  %i.vi = sext i16 %i.vh to i32                   ; 2 uses
  %i.vj = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %i.vc
  %i.vk = load i16, ptr %i.vj, align 2, !tbaa !58
  %i.vl = sext i16 %i.vk to i32
  %i.vm = sub nsw i32 %i.vl, %i.vi                ; 2 uses
  %i.vn = sub nsw i32 %i.vf, %i.vb
  %i.vo = tail call i32 @llvm.abs.i32(i32 %i.vm, i1 true)
  %i.vp = sub nsw i32 %i.ux, %i.vb
  %i.vq = mul nsw i32 %i.vo, %i.vp
  %i.vr = sdiv i32 %i.vq, %i.vn                   ; 2 uses
  %i.vs = icmp slt i32 %i.vm, 0
  %i.vt = sub i32 0, %i.vr
  %.p.i = select i1 %i.vs, i32 %i.vt, i32 %i.vr
  %i.vu = add i32 %.p.i, %i.vi                    ; 6 uses
  %i.vv = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %indvars.iv594 ; 2 uses
  %i.vw = load i16, ptr %i.vv, align 2, !tbaa !58 ; 3 uses
  %i.vx = sext i16 %i.vw to i32                   ; 4 uses
  %i.vy = sub nsw i32 %i.by, %i.vu                ; 2 uses
  %.not398 = icmp eq i16 %i.vw, 0
  br i1 %.not398, label %bb.ew, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %. = tail call i32 @llvm.smin.i32(i32 %i.vy, i32 %i.vu)
  %.0336 = shl nsw i32 %., 1
  %i.vz = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.vc
  store i8 1, ptr %i.vz, align 1, !tbaa !49
  %i.wa = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.uy
  store i8 1, ptr %i.wa, align 1, !tbaa !49
  %i.wb = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv594
  store i8 1, ptr %i.wb, align 1, !tbaa !49
  %.not399 = icmp sgt i32 %.0336, %i.vx
  br i1 %.not399, label %bb.et, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.wc = icmp sgt i32 %i.vy, %i.vu
  br i1 %i.wc, label %bb.ex, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.wd = xor i32 %i.vx, -1
  %i.we = add i32 %i.by, %i.wd
  br label %.sink.split

bb.et:                                            ; preds = %bb.eq
  %i.wf = and i16 %i.vw, 1
  %.not400 = icmp eq i16 %i.wf, 0
  br i1 %.not400, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.wg = add nsw i32 %i.vx, 1
  %i.wh = lshr exact i32 %i.wg, 1
  %i.wi = sub i32 %i.vu, %i.wh
  br label %.sink.split

bb.ev:                                            ; preds = %bb.et
  %i.wj = lshr exact i32 %i.vx, 1
  %i.wk = add i32 %i.vu, %i.wj
  br label %.sink.split

bb.ew:                                            ; preds = %bb.ep
  %i.wl = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv594
  store i8 0, ptr %i.wl, align 1, !tbaa !49
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ew, %bb.eu, %bb.ev, %bb.es
  %.sink731 = phi i32 [ %i.we, %bb.es ], [ %i.wk, %bb.ev ], [ %i.wi, %bb.eu ], [ %i.vu, %bb.ew ]
  %i.wm = trunc i32 %.sink731 to i16
  store i16 %i.wm, ptr %i.vv, align 2, !tbaa !58
  br label %bb.ex

bb.ex:                                            ; preds = %.sink.split, %bb.er
  %indvars.iv.next595 = add nuw nsw i64 %indvars.iv594, 1 ; 2 uses
  %exitcond597.not = icmp eq i64 %indvars.iv.next595, %wide.trip.count
  br i1 %exitcond597.not, label %.preheader528, label %bb.ep, !llvm.loop !274

.thread516:                                       ; preds = %bb.ez, %middle.block, %vec.epilog.middle.block, %.preheader528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %bb.fb

.lr.ph552:                                        ; preds = %.lr.ph552.preheader, %bb.ez
  %indvars.iv598 = phi i64 [ %indvars.iv.next599, %bb.ez ], [ %indvars.iv598.ph, %.lr.ph552.preheader ] ; 3 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv598
  %i.wo = load i8, ptr %i.wn, align 1, !tbaa !49
  %.not397 = icmp eq i8 %i.wo, 0
  br i1 %.not397, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %.lr.ph552
  %i.wp = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %indvars.iv598
  store i16 -1, ptr %i.wp, align 2, !tbaa !58
  br label %bb.ez

bb.ez:                                            ; preds = %.lr.ph552, %bb.ey
  %indvars.iv.next599 = add nuw nsw i64 %indvars.iv598, 1 ; 2 uses
  %exitcond602.not = icmp eq i64 %indvars.iv.next599, %wide.trip.count601
  br i1 %exitcond602.not, label %.thread516, label %.lr.ph552, !llvm.loop !275

bb.fa:                                            ; preds = %._crit_edge546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %get_bits.exit.thread

get_bits.exit.thread:                             ; preds = %bb.c, %.critedge.i, %bb.fa, %get_bits.exit
  store i32 1, ptr %i.av, align 4, !tbaa !46
  br label %bb.fb

bb.fb:                                            ; preds = %get_bits.exit.thread, %.thread516
  %indvars.iv.next604 = add nuw nsw i64 %indvars.iv603, 1 ; 2 uses
  %i.wq = load i32, ptr %i.s, align 4, !tbaa !101
  %i.wr = sext i32 %i.wq to i64                   ; 2 uses
  %i.ws = icmp slt i64 %indvars.iv.next604, %i.wr
  br i1 %i.ws, label %bb.b, label %._crit_edge556, !llvm.loop !276

._crit_edge556:                                   ; preds = %bb.fb, %.._crit_edge556_crit_edge
  %.pre-phi641 = phi i64 [ %.pre640, %.._crit_edge556_crit_edge ], [ %i.wr, %bb.fb ]
  %i.wt = shl nsw i64 %.pre-phi641, 2
end_hunk_3
begin_hunk_4_@start_decoder:bb.a

.lr.ph1464:                                       ; preds = %bb.hw, %.preheader1249, %.loopexit
  %i.apo = getelementptr inbounds nuw i8, ptr %i.ami, i64 17
  %i.app = getelementptr inbounds nuw i8, ptr %i.ami, i64 32
  br label %bb.ib

bb.ia:                                            ; preds = %bb.id
  %indvars.iv.next1676 = add nuw nsw i64 %indvars.iv1675, 1 ; 2 uses
  %i.apq = load i8, ptr %i.amv, align 8, !tbaa !125
  %i.apr = zext i8 %i.apq to i64
  %i.aps = icmp samesign ult i64 %indvars.iv.next1676, %i.apr
  br i1 %i.aps, label %bb.ib, label %._crit_edge1465, !llvm.loop !348

bb.ib:                                            ; preds = %.lr.ph1464, %bb.ia
  %indvars.iv1675 = phi i64 [ 0, %.lr.ph1464 ], [ %indvars.iv.next1676, %bb.ia ] ; 3 uses
  %i.apt = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8) ; 0 uses
  %i.apu = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8)
  %i.apv = trunc i32 %i.apu to i8
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apo, i64 %indvars.iv1675 ; 2 uses
  store i8 %i.apv, ptr %i.apw, align 1, !tbaa !49
  %i.apx = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8) ; 2 uses
  %i.apy = trunc i32 %i.apx to i8
  %i.apz = getelementptr inbounds nuw i8, ptr %i.app, i64 %indvars.iv1675
  store i8 %i.apy, ptr %i.apz, align 1, !tbaa !49
  %i.aqa = load i8, ptr %i.apw, align 1, !tbaa !49
  %i.aqb = zext i8 %i.aqa to i32
  %i.aqc = load i32, ptr %i.vc, align 8, !tbaa !357
  %.not1111 = icmp sgt i32 %i.aqc, %i.aqb
  br i1 %.not1111, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.aqd = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.aqd, align 4
  br label %.critedge

bb.id:                                            ; preds = %bb.ib
  %i.aqe = and i32 %i.apx, 255
  %i.aqf = load i32, ptr %i.adf, align 8, !tbaa !139
  %.not1112 = icmp slt i32 %i.aqe, %i.aqf
  br i1 %.not1112, label %bb.ia, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.aqg = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.aqg, align 4
  br label %.critedge

._crit_edge1465:                                  ; preds = %bb.ia, %.loopexit
  %indvars.iv.next1679 = add nuw nsw i64 %indvars.iv1678, 1 ; 2 uses
  %i.aqh = load i32, ptr %i.alw, align 8, !tbaa !140
  %i.aqi = sext i32 %i.aqh to i64
  %i.aqj = icmp slt i64 %indvars.iv.next1679, %i.aqi
  br i1 %i.aqj, label %.lr.ph1469, label %._crit_edge1470, !llvm.loop !349

._crit_edge1470:                                  ; preds = %._crit_edge1465, %bb.he
  %i.aqk = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 6) ; 2 uses
  %i.aql = add i32 %i.aqk, 1
  %i.aqm = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  store i32 %i.aql, ptr %i.aqm, align 8, !tbaa !118
  %i.aqn = icmp ult i32 %i.aqk, 2147483647
  br i1 %i.aqn, label %.lr.ph1473, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.if, %._crit_edge1470
  br label %.preheader

.lr.ph1473:                                       ; preds = %._crit_edge1470
  %i.aqo = getelementptr inbounds nuw i8, ptr %0, i64 500
  br label %bb.ig

bb.if:                                            ; preds = %bb.ik
  %indvars.iv.next1682 = add nuw nsw i64 %indvars.iv1681, 1 ; 2 uses
  %i.aqp = load i32, ptr %i.aqm, align 8, !tbaa !118
  %i.aqq = sext i32 %i.aqp to i64
  %i.aqr = icmp slt i64 %indvars.iv.next1682, %i.aqq
  br i1 %i.aqr, label %bb.ig, label %.preheader.preheader, !llvm.loop !350

bb.ig:                                            ; preds = %.lr.ph1473, %bb.if
  %indvars.iv1681 = phi i64 [ 0, %.lr.ph1473 ], [ %indvars.iv.next1682, %bb.if ] ; 2 uses
  %i.aqs = getelementptr inbounds nuw [6 x i8], ptr %i.aqo, i64 %indvars.iv1681 ; 4 uses
  %i.aqt = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 1)
  %i.aqu = trunc i32 %i.aqt to i8
  store i8 %i.aqu, ptr %i.aqs, align 2, !tbaa !120
  %i.aqv = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 16)
  %i.aqw = trunc i32 %i.aqv to i16
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqs, i64 2 ; 2 uses
  store i16 %i.aqw, ptr %i.aqx, align 2, !tbaa !370
  %i.aqy = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 16)
  %i.aqz = trunc i32 %i.aqy to i16
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqs, i64 4 ; 2 uses
  store i16 %i.aqz, ptr %i.ara, align 2, !tbaa !371
  %i.arb = call i32 @get_bits(ptr noundef nonnull %0, i32 noundef 8) ; 2 uses
  %i.arc = trunc i32 %i.arb to i8
  %i.ard = getelementptr inbounds nuw i8, ptr %i.aqs, i64 1
  store i8 %i.arc, ptr %i.ard, align 1, !tbaa !122
  %i.are = load i16, ptr %i.aqx, align 2, !tbaa !370
  %.not1104 = icmp eq i16 %i.are, 0
  br i1 %.not1104, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.arf = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.arf, align 4
  br label %.critedge

bb.ii:                                            ; preds = %bb.ig
  %i.arg = load i16, ptr %i.ara, align 2, !tbaa !371
  %.not1105 = icmp eq i16 %i.arg, 0
  br i1 %.not1105, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.arh = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.arh, align 4
  br label %.critedge

bb.ik:                                            ; preds = %bb.ii
  %i.ari = and i32 %i.arb, 255
  %i.arj = load i32, ptr %i.alw, align 8, !tbaa !140
  %.not1106 = icmp slt i32 %i.ari, %i.arj
  br i1 %.not1106, label %bb.if, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.ark = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 20, ptr %i.ark, align 4
  br label %.critedge

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.arl = call i32 @get8_packet_raw(ptr noundef nonnull %0)
  %.not.i1197 = icmp eq i32 %i.arl, -1
  br i1 %.not.i1197, label %flush_packet.exit, label %.preheader, !llvm.loop !6

flush_packet.exit:                                ; preds = %.preheader
  %i.arm = getelementptr inbounds nuw i8, ptr %0, i64 1272
  store i32 0, ptr %i.arm, align 8, !tbaa !131
  %i.arn = load i32, ptr %i.bd, align 4, !tbaa !101
  %i.aro = icmp sgt i32 %i.arn, 0
  br i1 %i.aro, label %.lr.ph1475, label %._crit_edge1476

.lr.ph1475:                                       ; preds = %flush_packet.exit
  %i.arp = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.arq = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.arr = getelementptr inbounds nuw i8, ptr %0, i64 1280
  br label %bb.im

bb.im:                                            ; preds = %.lr.ph1475, %bb.ip
  %indvars.iv1684 = phi i64 [ 0, %.lr.ph1475 ], [ %indvars.iv.next1685, %bb.ip ] ; 4 uses
  %i.ars = load i32, ptr %i.bt, align 4, !tbaa !107
  %i.art = shl i32 %i.ars, 2
  %i.aru = call ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %i.art)
  %i.arv = getelementptr inbounds nuw [8 x i8], ptr %i.arp, i64 %indvars.iv1684 ; 2 uses
  store ptr %i.aru, ptr %i.arv, align 8, !tbaa !64
  %i.arw = load i32, ptr %i.bt, align 4, !tbaa !107
  %i.arx = shl i32 %i.arw, 1
  %i.ary = call ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %i.arx)
  %i.arz = getelementptr inbounds nuw [8 x i8], ptr %i.arq, i64 %indvars.iv1684 ; 2 uses
  store ptr %i.ary, ptr %i.arz, align 8, !tbaa !64
  %i.asa = call ptr @setup_malloc(ptr noundef nonnull %0, i32 noundef %.0970.lcssa) ; 2 uses
  %i.asb = getelementptr inbounds nuw [8 x i8], ptr %i.arr, i64 %indvars.iv1684
  store ptr %i.asa, ptr %i.asb, align 8, !tbaa !66
  %i.asc = load ptr, ptr %i.arv, align 8, !tbaa !64 ; 2 uses
  %i.asd = icmp eq ptr %i.asc, null
  br i1 %i.asd, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.ase = load ptr, ptr %i.arz, align 8, !tbaa !64
  %i.asf = icmp eq ptr %i.ase, null
  %i.asg = icmp eq ptr %i.asa, null
  %or.cond1173 = select i1 %i.asf, i1 true, i1 %i.asg
  br i1 %or.cond1173, label %bb.io, label %bb.ip

bb.io:                                            ; preds = %bb.in, %bb.im
  %i.ash = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 3, ptr %i.ash, align 4
  br label %.critedge

bb.ip:                                            ; preds = %bb.in
  %i.asi = load i32, ptr %i.bt, align 4, !tbaa !107
  %i.asj = sext i32 %i.asi to i64
  %i.ask = shl nsw i64 %i.asj, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.asc, i8 0, i64 %i.ask, i1 false)
  %indvars.iv.next1685 = add nuw nsw i64 %indvars.iv1684, 1 ; 2 uses
  %i.asl = load i32, ptr %i.bd, align 4, !tbaa !101
  %i.asm = sext i32 %i.asl to i64
  %i.asn = icmp slt i64 %indvars.iv.next1685, %i.asm
  br i1 %i.asn, label %bb.im, label %._crit_edge1476, !llvm.loop !351

._crit_edge1476:                                  ; preds = %bb.ip, %flush_packet.exit
  %i.aso = load i32, ptr %i.br, align 8, !tbaa !106
  %i.asp = call i32 @init_blocksize(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %i.aso)
  %.not1101 = icmp eq i32 %i.asp, 0
  br i1 %.not1101, label %.critedge, label %bb.iq

bb.iq:                                            ; preds = %._crit_edge1476
  %i.asq = load i32, ptr %i.bt, align 4, !tbaa !107
  %i.asr = call i32 @init_blocksize(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %i.asq)
  %.not1102 = icmp eq i32 %i.asr, 0
  br i1 %.not1102, label %.critedge, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.ass = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ast = load i32, ptr %i.bt, align 4, !tbaa !107 ; 2 uses
  %i.asu = load <2 x i32>, ptr %i.br, align 8, !tbaa !46
  store <2 x i32> %i.asu, ptr %i.ass, align 8, !tbaa !46
  %i.asv = load i32, ptr %i.adf, align 8, !tbaa !139 ; 2 uses
  %i.asw = icmp sgt i32 %i.asv, 0
  br i1 %i.asw, label %.lr.ph1480, label %._crit_edge1481

.lr.ph1480:                                       ; preds = %bb.ir
  %i.asx = load ptr, ptr %i.adi, align 8, !tbaa !94
  %i.asy = sdiv i32 %i.ast, 2                     ; 2 uses
  %wide.trip.count1690 = zext nneg i32 %i.asv to i64
  br label %bb.is

bb.is:                                            ; preds = %.lr.ph1480, %bb.is
  %indvars.iv1687 = phi i64 [ 0, %.lr.ph1480 ], [ %indvars.iv.next1688, %bb.is ] ; 2 uses
  %.01478 = phi i32 [ 0, %.lr.ph1480 ], [ %.1, %bb.is ]
  %i.asz = getelementptr inbounds nuw [32 x i8], ptr %i.asx, i64 %indvars.iv1687 ; 3 uses
  %i.ata = load i32, ptr %i.asz, align 8, !tbaa !98
  %.1174 = call i32 @llvm.umin.i32(i32 %i.ata, i32 %i.asy)
  %i.atb = getelementptr inbounds nuw i8, ptr %i.asz, i64 4
  %i.atc = load i32, ptr %i.atb, align 4, !tbaa !99
  %i.atd = call i32 @llvm.umin.i32(i32 %i.atc, i32 %i.asy)
  %i.ate = sub i32 %i.atd, %.1174
  %i.atf = getelementptr inbounds nuw i8, ptr %i.asz, i64 8
  %i.atg = load i32, ptr %i.atf, align 8, !tbaa !100
  %i.ath = udiv i32 %i.ate, %i.atg
  %.1 = call i32 @llvm.smax.i32(i32 %i.ath, i32 %.01478) ; 2 uses
  %indvars.iv.next1688 = add nuw nsw i64 %indvars.iv1687, 1 ; 2 uses
  %exitcond1691.not = icmp eq i64 %indvars.iv.next1688, %wide.trip.count1690
  br i1 %exitcond1691.not, label %._crit_edge1481.loopexit, label %bb.is, !llvm.loop !352

._crit_edge1481.loopexit:                         ; preds = %bb.is
  %i.ati = shl i32 %.1, 3
  %i.atj = add i32 %i.ati, 8
  br label %._crit_edge1481

._crit_edge1481:                                  ; preds = %._crit_edge1481.loopexit, %bb.ir
  %.0.lcssa = phi i32 [ 8, %bb.ir ], [ %i.atj, %._crit_edge1481.loopexit ]
  %2 = shl i32 %i.ast, 1
  %i.atk = load i32, ptr %i.bd, align 4, !tbaa !101
  %i.atl = mul i32 %i.atk, %.0.lcssa
  %i.atm = getelementptr inbounds nuw i8, ptr %0, i64 12
  %spec.select1175 = call i32 @llvm.umax.i32(i32 %2, i32 %i.atl) ; 2 uses
  store i32 %spec.select1175, ptr %i.atm, align 4, !tbaa !372
  %i.atn = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ato = load ptr, ptr %i.atn, align 8, !tbaa !43
  %.not1103 = icmp eq ptr %i.ato, null
  br i1 %.not1103, label %bb.iv, label %bb.it

bb.it:                                            ; preds = %._crit_edge1481
  %i.atp = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.atq = load i32, ptr %i.atp, align 8, !tbaa !44
  %i.atr = sext i32 %i.atq to i64
  %i.ats = zext i32 %spec.select1175 to i64
  %i.att = add nuw nsw i64 %i.ats, 1904
  %i.atu = add nsw i64 %i.att, %i.atr
  %i.atv = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.atw = load i32, ptr %i.atv, align 4, !tbaa !45
  %i.atx = zext i32 %i.atw to i64
  %i.aty = icmp ugt i64 %i.atu, %i.atx
  br i1 %i.aty, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %bb.it
  %i.atz = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 3, ptr %i.atz, align 4
  br label %.critedge

bb.iv:                                            ; preds = %bb.it, %._crit_edge1481
  %i.aua = getelementptr inbounds nuw i8, ptr %0, i64 1768
  %i.aub = load i32, ptr %i.aua, align 8, !tbaa !81
  %i.auc = icmp eq i32 %i.aub, -1
  br i1 %i.auc, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %bb.iv
  %i.aud = call i32 @stb_vorbis_get_file_offset(ptr noundef nonnull %0)
  %i.aue = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.aud, ptr %i.aue, align 8, !tbaa !141
  br label %.critedge

bb.ix:                                            ; preds = %bb.iv
  %i.auf = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.auf, align 8, !tbaa !141
  br label %.critedge

.critedge1169:                                    ; preds = %._crit_edge1443, %._crit_edge1439, %bb.gb, %bb.ga, %bb.fz, %bb.ge, %bb.gh, %bb.gk, %bb.gn, %bb.gq, %bb.gt, %bb.gw, %bb.gz, %.lr.ph1450
  %.sink1852 = phi i32 [ 3, %.lr.ph1450 ], [ 20, %bb.ge ], [ 20, %bb.gz ], [ 20, %bb.gw ], [ 20, %bb.gt ], [ 20, %bb.gq ], [ 20, %bb.gn ], [ 20, %bb.gk ], [ 20, %bb.gh ], [ 20, %bb.ga ], [ 20, %bb.fz ], [ 3, %._crit_edge1439 ], [ 20, %bb.gb ], [ 3, %._crit_edge1443 ]
  %i.aug = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %.sink1852, ptr %i.aug, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %.critedge

.critedge:                                        ; preds = %bb.ie, %bb.ic, %bb.hx, %bb.hu, %bb.hs, %bb.hq, %bb.ho, %bb.hm, %bb.hh, %bb.hf, %.thread1225, %setup_temp_free.exit1190, %.thread1230, %bb.dr, %.thread1221, %bb.dv, %bb.dt, %bb.ct, %bb.cv, %bb.cr, %.thread1234, %bb.cf, %bb.cb, %.lr.ph1349.preheader._crit_edge, %start_page.exit.thread, %bb.fa, %bb.ih, %bb.ij, %bb.il, %bb.bk, %bb.bm, %bb.bo, %bb.bt, %bb.cl, %bb.de, %bb.dg, %bb.dn, %setup_temp_free.exit1180, %bb.cp, %bb.by, %bb.ae, %bb.ag, %bb.ai, %bb.iw, %bb.ix, %bb.iq, %._crit_edge1476, %.critedge1169, %bb.bb, %bb.bc, %bb.ay, %bb.an, %bb.am, %bb.al, %start_page.exit, %bb.iu, %bb.io, %bb.hd, %bb.fx, %._crit_edge1486, %bb.fd, %bb.fb, %bb.bh, %bb.bf, %bb.be, %bb.ax, %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.ap, %bb.ak, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.n, %bb.i, %bb.g, %bb.e, %bb.c
  %.36 = phi i32 [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.q ], [ 0, %bb.w ], [ 0, %bb.aa ], [ 0, %bb.ap ], [ 0, %bb.as ], [ 0, %bb.au ], [ 0, %bb.aw ], [ 0, %bb.be ], [ 0, %bb.bh ], [ 0, %bb.ae ], [ 0, %bb.fa ], [ 0, %bb.fb ], [ 0, %bb.fd ], [ 0, %._crit_edge1486 ], [ 0, %.thread1234 ], [ 0, %bb.fx ], [ 0, %.critedge1169 ], [ 0, %bb.hd ], [ 0, %.thread1225 ], [ 0, %bb.bk ], [ 0, %bb.io ], [ 0, %bb.iu ], [ 0, %bb.iq ], [ 0, %._crit_edge1476 ], [ 0, %bb.bb ], [ 0, %bb.bf ], [ 0, %bb.ay ], [ 0, %bb.an ], [ 0, %bb.ax ], [ 0, %bb.aq ], [ 0, %bb.am ], [ 0, %bb.al ], [ 0, %start_page.exit ], [ 0, %bb.ak ], [ 1, %bb.iw ], [ 0, %bb.ac ], [ 0, %bb.y ], [ 0, %bb.u ], [ 0, %bb.s ], [ 0, %bb.c ], [ 0, %bb.bc ], [ 1, %bb.ix ], [ 0, %bb.ai ], [ 0, %bb.ag ], [ 0, %bb.by ], [ 0, %bb.cf ], [ 0, %start_page.exit.thread ], [ 0, %bb.cp ], [ 0, %bb.cb ], [ 0, %setup_temp_free.exit1180 ], [ 0, %bb.ct ], [ 0, %bb.dn ], [ 0, %bb.dg ], [ 0, %bb.de ], [ 0, %bb.cl ], [ 0, %bb.bt ], [ 0, %bb.bo ], [ 0, %bb.bm ], [ 0, %bb.il ], [ 0, %bb.ij ], [ 0, %bb.ih ], [ 0, %.lr.ph1349.preheader._crit_edge ], [ 0, %bb.cr ], [ 0, %bb.cv ], [ 0, %bb.dt ], [ 0, %bb.dv ], [ 0, %.thread1221 ], [ 0, %bb.dr ], [ 0, %.thread1230 ], [ 0, %setup_temp_free.exit1190 ], [ 0, %bb.hf ], [ 0, %bb.hh ], [ 0, %bb.hm ], [ 0, %bb.ho ], [ 0, %bb.hq ], [ 0, %bb.hs ], [ 0, %bb.hu ], [ 0, %bb.hx ], [ 0, %bb.ic ], [ 0, %bb.ie ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i32 %.36
}

; Function Attrs: nounwind uwtable
define void @vorbis_deinit(ptr nofree noundef readonly %0) local_unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 34 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %setup_free.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !134
  tail call void @free(ptr noundef %i.d) #30
  %.pre225.pre = load ptr, ptr %i.a, align 8, !tbaa !43
  br label %setup_free.exit

setup_free.exit:                                  ; preds = %bb.a, %bb.b
  %.pre225 = phi ptr [ %i.b, %bb.a ], [ %.pre225.pre, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !135  ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %setup_free.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = icmp eq ptr %.pre225, null
  br i1 %i.i, label %.lr.ph.split, label %setup_free.exit101

.lr.ph.split:                                     ; preds = %.lr.ph, %setup_free.exit99
  %i.j = phi i32 [ %i.o, %setup_free.exit99 ], [ %i.f, %.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %setup_free.exit99 ], [ 0, %.lr.ph ] ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !43
  %.not.i98 = icmp eq ptr %i.k, null
  br i1 %.not.i98, label %bb.c, label %setup_free.exit99

bb.c:                                             ; preds = %.lr.ph.split
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !136
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !103
  tail call void @free(ptr noundef %i.n) #30
  %.pre = load i32, ptr %i.e, align 8, !tbaa !135
  br label %setup_free.exit99

setup_free.exit99:                                ; preds = %.lr.ph.split, %bb.c
  %i.o = phi i32 [ %i.j, %.lr.ph.split ], [ %.pre, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp slt i64 %indvars.iv.next, %i.p
  br i1 %i.q, label %.lr.ph.split, label %._crit_edge.loopexit, !llvm.loop !373

._crit_edge.loopexit:                             ; preds = %setup_free.exit99
  %.pre224 = load ptr, ptr %i.a, align 8, !tbaa !43
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %setup_free.exit
  %i.r = phi ptr [ %.pre225, %setup_free.exit ], [ %.pre224, %._crit_edge.loopexit ]
  %.not.i100 = icmp eq ptr %i.r, null
  br i1 %.not.i100, label %bb.d, label %setup_free.exit101

bb.d:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !136
  tail call void @free(ptr noundef %i.t) #30
  br label %setup_free.exit101

setup_free.exit101:                               ; preds = %.lr.ph, %._crit_edge, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !94
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %.loopexit, label %.preheader183

.preheader183:                                    ; preds = %setup_free.exit101
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !139
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph189, label %.loopexit

.lr.ph189:                                        ; preds = %.preheader183
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph189, %setup_free.exit107
  %indvars.iv209 = phi i64 [ 0, %.lr.ph189 ], [ %indvars.iv.next210, %setup_free.exit107 ] ; 2 uses
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !94
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %indvars.iv209 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !102
  %.not97 = icmp eq ptr %i.ad, null
  %.pr.pre230 = load ptr, ptr %i.a, align 8, !tbaa !43 ; 3 uses
  br i1 %.not97, label %setup_free.exit105, label %.preheader182

.preheader182:                                    ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 13 ; 2 uses
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !97  ; 2 uses
  %i.ag = load i8, ptr %i.ae, align 1, !tbaa !96  ; 2 uses
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [2120 x i8], ptr %i.af, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !61
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph186, label %._crit_edge187

.lr.ph186:                                        ; preds = %.preheader182
  %i.am = icmp eq ptr %.pr.pre230, null
  br i1 %i.am, label %.lr.ph186.split, label %setup_free.exit107

.lr.ph186.split:                                  ; preds = %.lr.ph186, %setup_free.exit103
  %i.an = phi i8 [ %i.at, %setup_free.exit103 ], [ %i.ag, %.lr.ph186 ]
  %i.ao = phi ptr [ %i.au, %setup_free.exit103 ], [ %i.af, %.lr.ph186 ]
  %indvars.iv206 = phi i64 [ %indvars.iv.next207, %setup_free.exit103 ], [ 0, %.lr.ph186 ] ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !43
  %.not.i102 = icmp eq ptr %i.ap, null
  br i1 %.not.i102, label %bb.f, label %setup_free.exit103

bb.f:                                             ; preds = %.lr.ph186.split
  %i.aq = load ptr, ptr %i.ac, align 8, !tbaa !102
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv206
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !103
  tail call void @free(ptr noundef %i.as) #30
  %.pre226 = load ptr, ptr %i.z, align 8, !tbaa !97
  %.pre227 = load i8, ptr %i.ae, align 1, !tbaa !96
  br label %setup_free.exit103

setup_free.exit103:                               ; preds = %.lr.ph186.split, %bb.f
  %i.at = phi i8 [ %i.an, %.lr.ph186.split ], [ %.pre227, %bb.f ] ; 2 uses
  %i.au = phi ptr [ %i.ao, %.lr.ph186.split ], [ %.pre226, %bb.f ] ; 2 uses
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %i.av = zext i8 %i.at to i64
  %i.aw = getelementptr inbounds nuw [2120 x i8], ptr %i.au, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !61
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp slt i64 %indvars.iv.next207, %i.az
  br i1 %i.ba, label %.lr.ph186.split, label %._crit_edge187.loopexit, !llvm.loop !374

._crit_edge187.loopexit:                          ; preds = %setup_free.exit103
  %.pre228 = load ptr, ptr %i.a, align 8, !tbaa !43
  br label %._crit_edge187

._crit_edge187:                                   ; preds = %._crit_edge187.loopexit, %.preheader182
  %i.bb = phi ptr [ %.pr.pre230, %.preheader182 ], [ %.pre228, %._crit_edge187.loopexit ]
  %.not.i104 = icmp eq ptr %i.bb, null
  br i1 %.not.i104, label %bb.g, label %setup_free.exit107
end_hunk_4
