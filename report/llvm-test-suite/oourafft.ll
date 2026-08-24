Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/oourafft?download=true
inline.NumInlined: 15
inline.NumDeleted: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:bb.a
  %.017.i = phi double [ 0.000000e+00, %putdata.exit ], [ %i.au, %bb.b ] ; 2 uses
  %.01216.i = phi i32 [ 0, %putdata.exit ], [ %i.am, %bb.b ]
  %i.ak = mul nuw nsw i32 %.01216.i, 7141
  %i.al = add nuw nsw i32 %i.ak, 54773
  %i.am = urem i32 %i.al, 259200                  ; 2 uses
  %i.an = uitofp nneg i32 %i.am to double
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.i83
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !8
  %i.aq = fmul double %i.ap, f0xBF50000000000000
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.an, double f0x3ED02E85C0898B71, double %i.aq)
  %i.as = tail call double @llvm.fabs.f64(double %i.ar) ; 2 uses
  %i.at = fcmp ogt double %.017.i, %i.as
  %i.au = select i1 %i.at, double %.017.i, double %i.as ; 3 uses
  %indvars.iv.next.i84 = add nuw nsw i64 %indvars.iv.i83, 1 ; 2 uses
  %i.av = and i64 %indvars.iv.next.i84, 4294967295
  %exitcond.not.i86 = icmp eq i64 %i.av, 2048
  br i1 %exitcond.not.i86, label %errorcheck.exit, label %bb.b, !llvm.loop !12

errorcheck.exit:                                  ; preds = %bb.b
  %i.aw = fcmp ogt double %i.au, 1.000000e-10
  br i1 %i.aw, label %bb.c, label %bb.d

bb.c:                                             ; preds = %errorcheck.exit
  %i.ax = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.au) ; 0 uses
  tail call void @abort() #17
  unreachable

bb.d:                                             ; preds = %errorcheck.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16384) %i.aa, i8 0, i64 16384, i1 false)
  br label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %.lr.ph.i87, %bb.d
  %indvars.iv.i88 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i90, %.lr.ph.i87 ] ; 2 uses
  %.09.i89 = phi i32 [ 0, %bb.d ], [ %i.ba, %.lr.ph.i87 ]
  %i.ay = mul nuw nsw i32 %.09.i89, 7141
  %i.az = add nuw nsw i32 %i.ay, 54773
  %i.ba = urem i32 %i.az, 259200                  ; 2 uses
  %i.bb = uitofp nneg i32 %i.ba to double
  %i.bc = fmul nnan double %i.bb, f0x3ED02E85C0898B71
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.i88
  store double %i.bc, ptr %i.bd, align 8, !tbaa !8
  %indvars.iv.next.i90 = add nuw nsw i64 %indvars.iv.i88, 1 ; 2 uses
  %i.be = and i64 %indvars.iv.next.i90, 4294967295
  %exitcond.not.i92 = icmp eq i64 %i.be, 1024
  br i1 %exitcond.not.i92, label %putdata.exit93, label %.lr.ph.i87, !llvm.loop !10

putdata.exit93:                                   ; preds = %.lr.ph.i87
  tail call fastcc void @bitrv2(i32 noundef 2048, ptr noundef %i.c, ptr noundef nonnull %i.aa)
  tail call fastcc void @cftfsub(i32 noundef 2048, ptr noundef nonnull %i.aa, ptr noundef nonnull readonly %i.d)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %putdata.exit93
  %indvars.iv = phi i64 [ 0, %putdata.exit93 ], [ %indvars.iv.next.3, %bb.e ] ; 5 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !8
  %i.bi = fneg double %i.bh
  store double %i.bi, ptr %i.bg, align 8, !tbaa !8
  %indvars.iv.next = shl i64 %indvars.iv, 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv.next
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !8
  %i.bm = fneg double %i.bl
  store double %i.bm, ptr %i.bk, align 8, !tbaa !8
  %indvars.iv.next.1 = shl i64 %indvars.iv, 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv.next.1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40 ; 2 uses
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !8
  %i.bq = fneg double %i.bp
  store double %i.bq, ptr %i.bo, align 8, !tbaa !8
  %indvars.iv.next.2 = shl i64 %indvars.iv, 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv.next.2
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 56 ; 2 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !8
  %i.bu = fneg double %i.bt
  store double %i.bu, ptr %i.bs, align 8, !tbaa !8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 1024
  br i1 %exitcond.not.3, label %bb.f, label %bb.e, !llvm.loop !13

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16384) %i.ac, i8 0, i64 16384, i1 false)
  br label %.lr.ph.i94

.lr.ph.i94:                                       ; preds = %.lr.ph.i94, %bb.f
  %indvars.iv.i95 = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.i97, %.lr.ph.i94 ] ; 2 uses
  %.09.i96 = phi i32 [ 0, %bb.f ], [ %i.bx, %.lr.ph.i94 ]
  %i.bv = mul nuw nsw i32 %.09.i96, 7141
  %i.bw = add nuw nsw i32 %i.bv, 54773
  %i.bx = urem i32 %i.bw, 259200                  ; 2 uses
  %i.by = uitofp nneg i32 %i.bx to double
  %i.bz = fmul nnan double %i.by, f0x3ED02E85C0898B71
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i95
  store double %i.bz, ptr %i.ca, align 8, !tbaa !8
  %indvars.iv.next.i97 = add nuw nsw i64 %indvars.iv.i95, 1 ; 2 uses
  %i.cb = and i64 %indvars.iv.next.i97, 4294967295
  %exitcond.not.i99 = icmp eq i64 %i.cb, 1024
  br i1 %exitcond.not.i99, label %putdata.exit100, label %.lr.ph.i94, !llvm.loop !10

putdata.exit100:                                  ; preds = %.lr.ph.i94
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.cc = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %vector.ph

vector.ph:                                        ; preds = %putdata.exit100, %middle.block
  %.0103 = phi i32 [ 0, %putdata.exit100 ], [ %i.cm, %middle.block ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16384) %i.ab, ptr noundef nonnull align 16 dereferenceable(16384) %i.ac, i64 16384, i1 false)
  tail call fastcc void @bitrv2(i32 noundef 2048, ptr noundef %i.c, ptr noundef nonnull %i.ab)
  tail call fastcc void @cftfsub(i32 noundef 2048, ptr noundef nonnull %i.ab, ptr noundef nonnull readonly %i.d)
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cd = shl nuw nsw i64 %index, 1               ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.cd ; 2 uses
  %wide.vec = load <4 x double>, ptr %i.ce, align 16, !tbaa !8 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec117 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.cd
  %wide.vec118 = load <4 x double>, ptr %i.cf, align 16, !tbaa !8 ; 2 uses
  %strided.vec119 = shufflevector <4 x double> %wide.vec118, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec120 = shufflevector <4 x double> %wide.vec118, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cg = fneg <2 x double> %strided.vec120
  %i.ch = fmul <2 x double> %strided.vec117, %i.cg
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec119, <2 x double> %i.ch)
  %i.cj = fmul <2 x double> %strided.vec119, %strided.vec117
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec120, <2 x double> %i.cj)
  %interleaved.vec = shufflevector <2 x double> %i.ci, <2 x double> %i.ck, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.ce, align 16, !tbaa !8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cl = icmp eq i64 %index.next, 1024
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  tail call void @cdft(i32 noundef 2048, i32 noundef -1, ptr noundef nonnull %i.ab, ptr noundef %i.c, ptr noundef nonnull %i.d)
  %i.cm = add nuw nsw i32 %.0103, 1               ; 2 uses
  %exitcond110.not = icmp eq i32 %i.cm, 150000
  br i1 %exitcond110.not, label %bb.g, label %vector.ph, !llvm.loop !17

bb.g:                                             ; preds = %middle.block
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #15
  %i.cn = call i32 @gettimeofday(ptr noundef nonnull %0, ptr noundef null) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.h
  %indvars.iv111 = phi i64 [ 0, %bb.g ], [ %indvars.iv.next112, %bb.h ] ; 2 uses
  %.idx116 = shl nuw nsw i64 %indvars.iv111, 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx116
  %i.cp = load <2 x double>, ptr %i.co, align 16, !tbaa !8 ; 2 uses
  %i.cq = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cp)
  %i.cr = fcmp ogt <2 x double> %i.cq, splat (double 1.000000e-09)
  %i.cs = select <2 x i1> %i.cr, <2 x double> %i.cp, <2 x double> zeroinitializer ; 2 uses
  %i.ct = extractelement <2 x double> %i.cs, i64 0
  %i.cu = extractelement <2 x double> %i.cs, i64 1
  %i.cv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.ct, double noundef %i.cu) ; 0 uses
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next112, 1024
  br i1 %exitcond114.not, label %bb.i, label %bb.h, !llvm.loop !18

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.aa) #15
  tail call void @free(ptr noundef nonnull %i.d) #15
  tail call void @free(ptr noundef %i.c) #15
  tail call void @free(ptr noundef nonnull %i.ab) #15
  tail call void @free(ptr noundef nonnull %i.ac) #15
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define dso_local double @get_time() local_unnamed_addr #2 {
bb.a:
  %0 = alloca %struct.timeval, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #15
  %i.a = call i32 @gettimeofday(ptr noundef nonnull %0, ptr noundef null) #15 ; 0 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !19
  %i.c = sitofp i64 %i.b to double
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !22
  %i.f = sitofp i64 %i.e to double
  %i.g = tail call double @llvm.fmuladd.f64(double %i.f, double f0x3EB0C6F7A0B5ED8D, double %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #15
  ret double %i.g
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @memalign(i64 allocalign noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @makewt(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %0, 2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %0, 1                           ; 2 uses
  %i.c = uitofp nneg i32 %i.b to double           ; 2 uses
  %i.d = fdiv double f0x3FE921FB54442D18, %i.c    ; 2 uses
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %2, align 8, !tbaa !8
  %i.e = fmul double %i.d, %i.c
  %i.f = tail call double @cos(double noundef %i.e) #15, !tbaa !4 ; 2 uses
  %i.g = zext nneg i32 %i.b to i64                ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.g ; 2 uses
  store double %i.f, ptr %i.h, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store double %i.f, ptr %i.i, align 8, !tbaa !8
  %i.j = icmp samesign ugt i32 %0, 5
  br i1 %i.j, label %.lr.ph.preheader, label %bb.c

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.k = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.l = trunc nuw nsw i64 %indvars.iv to i32
  %i.m = uitofp nneg i32 %i.l to double
  %i.n = fmul double %i.d, %i.m                   ; 2 uses
  %i.o = tail call double @cos(double noundef %i.n) #15, !tbaa !4 ; 2 uses
  %i.p = tail call double @sin(double noundef %i.n) #15, !tbaa !4 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  store double %i.o, ptr %i.q, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store double %i.p, ptr %i.r, align 8, !tbaa !8
  %i.s = sub nsw i64 %i.k, %indvars.iv
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.s ; 2 uses
  store double %i.p, ptr %i.t, align 8, !tbaa !8
  %i.u = getelementptr i8, ptr %i.t, i64 8
  store double %i.o, ptr %i.u, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.v = icmp samesign ult i64 %indvars.iv.next, %i.g
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph
  tail call fastcc void @bitrv2(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @putdata(i32 noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %.not7 = icmp sgt i32 %0, %1
  br i1 %.not7, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = sext i32 %0 to i64
  %i.b = add i32 %1, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.a, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.09 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.e, %.lr.ph ]
  %i.c = mul nuw nsw i32 %.09, 7141
  %i.d = add nuw nsw i32 %i.c, 54773
  %i.e = urem i32 %i.d, 259200                    ; 2 uses
  %i.f = uitofp nneg i32 %i.e to double
  %i.g = fmul nnan double %i.f, f0x3ED02E85C0898B71
  %i.h = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv
  store double %i.g, ptr %i.h, align 8, !tbaa !8
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.b, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cdft(i32 noundef %0, i32 noundef %1, ptr nofree noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %0, 4
  br i1 %i.a, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %1, -1
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @bitrv2(i32 noundef %0, ptr noundef %3, ptr noundef %2)
  tail call fastcc void @cftfsub(i32 noundef %0, ptr noundef %2, ptr noundef %4)
  br label %cftbsub.exit

bb.d:                                             ; preds = %bb.b
  store i32 0, ptr %3, align 4, !tbaa !4
  %i.c = icmp samesign ugt i32 %0, 8              ; 2 uses
  br i1 %i.c, label %.lr.ph245.i, label %._crit_edge246.thread.i

.lr.ph245.i:                                      ; preds = %bb.d, %._crit_edge.i
  %.0243.i = phi i32 [ %i.q, %._crit_edge.i ], [ 1, %bb.d ] ; 6 uses
  %.0233242.i = phi i32 [ %i.d, %._crit_edge.i ], [ %0, %bb.d ]
  %i.d = lshr i32 %.0233242.i, 1                  ; 5 uses
  %i.e = icmp sgt i32 %.0243.i, 0
  br i1 %i.e, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph245.i
  %i.f = zext nneg i32 %.0243.i to i64            ; 4 uses
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.f ; 2 uses
  %min.iters.check = icmp ult i32 %.0243.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.f, 2147483640               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <4 x i32>, ptr %i.g, align 4, !tbaa !4
  %wide.load54 = load <4 x i32>, ptr %i.h, align 4, !tbaa !4
  %i.i = add nsw <4 x i32> %wide.load, %broadcast.splat
  %i.j = add nsw <4 x i32> %wide.load54, %broadcast.splat
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <4 x i32> %i.i, ptr %i.k, align 4, !tbaa !4
  store <4 x i32> %i.j, ptr %i.l, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.f
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = add nsw i32 %i.o, %i.d
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store i32 %i.p, ptr %gep.i, align 4, !tbaa !4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.f
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !25

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %.lr.ph245.i
  %i.q = shl i32 %.0243.i, 1                      ; 4 uses
  %i.r = shl i32 %.0243.i, 4                      ; 2 uses
  %i.s = icmp slt i32 %i.r, %i.d
  br i1 %i.s, label %.lr.ph245.i, label %._crit_edge246.i, !llvm.loop !26

._crit_edge246.i:                                 ; preds = %._crit_edge.i
  %i.t = shl i32 %.0243.i, 2                      ; 2 uses
  %i.u = icmp eq i32 %i.r, %i.d
  br i1 %i.u, label %.preheader238.i, label %bb.f

._crit_edge246.thread.i:                          ; preds = %bb.d
  %i.v = icmp eq i32 %0, 8
  br i1 %i.v, label %.preheader.lr.ph.i, label %bb.f

.preheader238.i:                                  ; preds = %._crit_edge246.i
  %i.w = icmp sgt i32 %i.q, 0
  br i1 %i.w, label %.preheader.lr.ph.i, label %bitrv2conj.exit

.preheader.lr.ph.i:                               ; preds = %.preheader238.i, %._crit_edge246.thread.i
  %.0.lcssa289291.i = phi i32 [ %i.q, %.preheader238.i ], [ 1, %._crit_edge246.thread.i ] ; 2 uses
  %i.x = phi i32 [ %i.t, %.preheader238.i ], [ 2, %._crit_edge246.thread.i ] ; 5 uses
  %i.y = shl nsw i32 %.0.lcssa289291.i, 2         ; 2 uses
  %i.z = zext nneg i32 %i.x to i64                ; 3 uses
  %wide.trip.count278.i = zext nneg i32 %.0.lcssa289291.i to i64
  %invariant.gep299.i = getelementptr [8 x i8], ptr %2, i64 %i.z
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge253.i, %.preheader.lr.ph.i
  %indvars.iv275.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next276.i, %._crit_edge253.i ] ; 5 uses
  %.not.i = icmp eq i64 %indvars.iv275.i, 0
  br i1 %.not.i, label %._crit_edge253.i, label %.lr.ph252.i

.lr.ph252.i:                                      ; preds = %.preheader.i
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv275.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !4  ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %indvars.iv275.tr.i = trunc i64 %indvars.iv275.i to i32
  %i.ad = shl i32 %indvars.iv275.tr.i, 1          ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph252.i
  %indvars.iv270.i = phi i64 [ 0, %.lr.ph252.i ], [ %indvars.iv.next271.i, %bb.e ] ; 3 uses
  %i.ae = shl nuw nsw i64 %indvars.iv270.i, 1
  %i.af = add nsw i64 %i.ae, %i.ac                ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv270.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = add nsw i32 %i.ah, %i.ad                ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.af ; 3 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !8
  %i.al = getelementptr i8, ptr %i.aj, i64 8      ; 2 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !8
  %i.an = fneg double %i.am
  %i.ao = sext i32 %i.ai to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ao ; 3 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !8
  %i.ar = getelementptr i8, ptr %i.ap, i64 8      ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !8
  %i.at = fneg double %i.as
  store double %i.aq, ptr %i.aj, align 8, !tbaa !8
  store double %i.at, ptr %i.al, align 8, !tbaa !8
  store double %i.ak, ptr %i.ap, align 8, !tbaa !8
  store double %i.an, ptr %i.ar, align 8, !tbaa !8
  %i.au = add nsw i64 %i.af, %i.z                 ; 2 uses
  %i.av = add nsw i32 %i.ai, %i.y                 ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %2, i64 %i.au ; 3 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !8
  %i.ay = getelementptr i8, ptr %i.aw, i64 8      ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !8
  %i.ba = fneg double %i.az
  %i.bb = sext i32 %i.av to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bb ; 3 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !8
  %i.be = getelementptr i8, ptr %i.bc, i64 8      ; 2 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !8
  %i.bg = fneg double %i.bf
  store double %i.bd, ptr %i.aw, align 8, !tbaa !8
  store double %i.bg, ptr %i.ay, align 8, !tbaa !8
  store double %i.ax, ptr %i.bc, align 8, !tbaa !8
  store double %i.ba, ptr %i.be, align 8, !tbaa !8
  %i.bh = add nsw i64 %i.au, %i.z                 ; 2 uses
  %i.bi = sub nsw i32 %i.av, %i.x                 ; 2 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bh ; 3 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !8
  %i.bl = getelementptr i8, ptr %i.bj, i64 8      ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !8
end_hunk_0
