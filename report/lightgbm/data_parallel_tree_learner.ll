Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/data_parallel_tree_learner?download=true
inline.NumInlined: 2212
inline.NumDeleted: 868
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN8LightGBM23DataParallelTreeLearnerINS_14GPUTreeLearnerEE14FindBestSplitsEPKNS_4TreeE.omp_outlined:bb.a
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !178
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !203
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 488
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !178
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !203
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.af = sext i32 %i.z to i64
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !230
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.af
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !232
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = sext i32 %i.ad to i64
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !235
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !237 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 156
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !250
  %i.aq = icmp eq i32 %i.ap, 0
  %.neg = sext i1 %i.aq to i32
  %i.ar = load i32, ptr %i.an, align 8, !tbaa !249
  %i.as = load ptr, ptr %i.o, align 8, !tbaa !126
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 840
  %i.au = load i8, ptr %i.at, align 8, !tbaa !153, !range !154, !noundef !155
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = load ptr, ptr %i.p, align 8, !tbaa !293
  %i.ax = getelementptr inbounds [96 x i8], ptr %i.aw, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !299 ; 2 uses
  %i.ba = add i32 %i.ar, %.neg
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  br i1 %i.av, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.bc = shl nsw i64 %i.bb, 3
  call void @llvm.memset.p0.i64(ptr align 1 %i.az, i8 0, i64 %i.bc, i1 false)
  %i.bd = load ptr, ptr %i.p, align 8, !tbaa !293
  %i.be = getelementptr inbounds [96 x i8], ptr %i.bd, i64 %indvars.iv
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !300
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e
  %.sink31 = phi i64 [ 2, %bb.e ], [ 4, %bb.d ]
  %.sink = phi ptr [ %i.bg, %bb.e ], [ %i.az, %bb.d ]
  %i.bh = shl nsw i64 %i.bb, %.sink31
  call void @llvm.memset.p0.i64(ptr align 1 %.sink, i8 0, i64 %i.bh, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.bi = load i32, ptr %i.b, align 4, !tbaa !203
  %i.bj = sext i32 %i.bi to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.bj
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #20

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #20

declare i32 @OMP_NUM_THREADS() local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #20

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #20

; Function Attrs: nounwind
declare !callback !302 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #20

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM23DataParallelTreeLearnerINS_14GPUTreeLearnerEE14FindBestSplitsEPKNS_4TreeE.omp_outlined.9(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #19 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !174  ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 %i.h, ptr %i.b, align 4, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 1, ptr %i.c, align 4, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 0, ptr %i.d, align 4, !tbaa !203
  %i.i = load i32, ptr %0, align 4, !tbaa !203    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !203
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 2 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !203
  %i.l = load i32, ptr %i.a, align 4, !tbaa !203  ; 2 uses
  %.not24 = icmp sgt i32 %i.l, %i.k
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 408
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 360
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 544 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 728 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 528
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 776
  %i.u = sext i32 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN8LightGBM16FeatureHistogram20CopyFromInt16ToInt32EPc.exit
  %indvars.iv = phi i64 [ %i.u, %.lr.ph ], [ %indvars.iv.next, %_ZN8LightGBM16FeatureHistogram20CopyFromInt16ToInt32EPc.exit ] ; 7 uses
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !225
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv
  %i.x = load i8, ptr %i.w, align 1, !tbaa !226
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %_ZN8LightGBM16FeatureHistogram20CopyFromInt16ToInt32EPc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !126
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 840
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !153, !range !154, !noundef !155
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.e, label %_ZN8LightGBM16FeatureHistogram20CopyFromInt16ToInt32EPc.exit.sink.split

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !262 ; 2 uses
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !252
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !260
  %i.ah = sext i32 %i.ag to i64                   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 5240
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !225
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !226
  %i.am = icmp ult i8 %i.al, 17
  br i1 %i.am, label %_ZN8LightGBM16FeatureHistogram20CopyFromInt16ToInt32EPc.exit.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 5192
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !225
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ah
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !226
  %i.ar = icmp eq i8 %i.aq, 32
  br i1 %i.ar, label %_ZN8LightGBM16FeatureHistogram20CopyFromInt16ToInt32EPc.exit.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = load ptr, ptr %i.q, align 8, !tbaa !293
  %i.at = getelementptr inbounds [96 x i8], ptr %i.as, i64 %indvars.iv ; 2 uses
  %i.au = load ptr, ptr %i.o, align 8, !tbaa !258
  %i.av = load ptr, ptr %i.p, align 8, !tbaa !178
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !203
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %i.au, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !300 ; 2 uses
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !303 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !305
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !306
  %i.bg = sext i8 %i.bf to i32
  %i.bh = sub nsw i32 %i.bd, %i.bg                ; 3 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.preheader.i, label %_ZN8LightGBM16FeatureHistogram20CopyFromInt16ToInt32EPc.exit

.lr.ph.preheader.i:                               ; preds = %bb.g
  %wide.trip.count.i = zext nneg i32 %i.bh to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.bh, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %index ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %wide.load = load <2 x i32>, ptr %i.bj, align 4, !tbaa !203 ; 2 uses
  %wide.load48 = load <2 x i32>, ptr %i.bk, align 4, !tbaa !203 ; 2 uses
  %3 = lshr <2 x i32> %wide.load, splat (i32 16)
  %4 = lshr <2 x i32> %wide.load48, splat (i32 16)
  %5 = zext nneg <2 x i32> %3 to <2 x i64>
  %6 = zext nneg <2 x i32> %4 to <2 x i64>
  %i.bl = shl nuw <2 x i64> %5, splat (i64 48)
  %i.bm = shl nuw <2 x i64> %6, splat (i64 48)
  %7 = ashr exact <2 x i64> %i.bl, splat (i64 16)
  %8 = ashr exact <2 x i64> %i.bm, splat (i64 16)
  %i.bn = and <2 x i32> %wide.load, splat (i32 65535)
  %i.bo = and <2 x i32> %wide.load48, splat (i32 65535)
  %i.bp = zext nneg <2 x i32> %i.bn to <2 x i64>
  %i.bq = zext nneg <2 x i32> %i.bo to <2 x i64>
  %i.br = or disjoint <2 x i64> %7, %i.bp
  %i.bs = or disjoint <2 x i64> %8, %i.bq
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %index ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store <2 x i64> %i.br, ptr %i.bt, align 8, !tbaa !251
  store <2 x i64> %i.bs, ptr %i.bu, align 8, !tbaa !251
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !375

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZN8LightGBM16FeatureHistogram20CopyFromInt16ToInt32EPc.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !203 ; 2 uses
  %9 = lshr i32 %i.bx, 16
  %10 = zext nneg i32 %9 to i64
  %sext.i = shl nuw i64 %10, 48
  %11 = ashr exact i64 %sext.i, 16
  %i.by = and i32 %i.bx, 65535
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = or disjoint i64 %11, %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.i
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !251
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN8LightGBM16FeatureHistogram20CopyFromInt16ToInt32EPc.exit, label %.lr.ph.i, !llvm.loop !376

_ZN8LightGBM16FeatureHistogram20CopyFromInt16ToInt32EPc.exit.sink.split: ; preds = %bb.d, %bb.f, %bb.e
  %.sink.in = phi ptr [ %i.p, %bb.f ], [ %i.t, %bb.e ], [ %i.p, %bb.d ]
  %.sink43 = phi i64 [ 8, %bb.f ], [ 16, %bb.e ], [ 8, %bb.d ]
  %.sink33 = phi i32 [ 3, %bb.f ], [ 2, %bb.e ], [ 4, %bb.d ]
  %.sink45 = load ptr, ptr %i.o, align 8, !tbaa !258
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !178
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.sink, i64 %indvars.iv
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !203
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds i8, ptr %.sink45, i64 %i.ce
  %i.cg = load ptr, ptr %i.q, align 8, !tbaa !293
  %i.ch = getelementptr inbounds [96 x i8], ptr %i.cg, i64 %indvars.iv ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sink43
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !259
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !303 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !305
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !306
  %i.co = sext i8 %i.cn to i32
  %i.cp = sub nsw i32 %i.cl, %i.co
  %i.cq = shl i32 %i.cp, %.sink33
  %i.cr = sext i32 %i.cq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cf, ptr align 2 %i.cj, i64 %i.cr, i1 false)
  br label %_ZN8LightGBM16FeatureHistogram20CopyFromInt16ToInt32EPc.exit

_ZN8LightGBM16FeatureHistogram20CopyFromInt16ToInt32EPc.exit: ; preds = %.lr.ph.i, %middle.block, %_ZN8LightGBM16FeatureHistogram20CopyFromInt16ToInt32EPc.exit.sink.split, %bb.g, %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.cs = load i32, ptr %i.b, align 4, !tbaa !203
  %i.ct = sext i32 %i.cs to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ct
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN8LightGBM16FeatureHistogram20CopyFromInt16ToInt32EPc.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

declare void @_ZN8LightGBM7Network13ReduceScatterEPciiPKiS3_S1_iRKPFvPKcS1_iiE(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN8LightGBML19HistogramSumReducerEPKcPcii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) #21 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = sext i32 %2 to i64                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.015 = phi i32 [ 0, %.lr.ph ], [ %i.h, %bb.b ]
  %.01114 = phi ptr [ %0, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %.01213 = phi ptr [ %1, %.lr.ph ], [ %i.g, %bb.b ] ; 3 uses
  %i.c = load double, ptr %.01114, align 8, !tbaa !261
  %i.d = load double, ptr %.01213, align 8, !tbaa !261
  %i.e = fadd double %i.c, %i.d
  store double %i.e, ptr %.01213, align 8, !tbaa !261
  %i.f = getelementptr inbounds i8, ptr %.01114, i64 %i.b
  %i.g = getelementptr inbounds i8, ptr %.01213, i64 %i.b
  %i.h = add nsw i32 %.015, %2                    ; 2 uses
  %i.i = icmp slt i32 %i.h, %3
  br i1 %i.i, label %bb.b, label %._crit_edge, !llvm.loop !377

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @_ZN8LightGBML24Int16HistogramSumReducerEPKcPcii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr %0, ptr %i.a, align 8, !tbaa !224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr %1, ptr %i.b, align 8, !tbaa !224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.e = shl nsw i32 %2, 1                        ; 2 uses
  %i.f = add i32 %i.e, -1
  %i.g = add i32 %i.f, %3
  %i.h = sdiv i32 %i.g, %i.e
  store i32 %i.h, ptr %i.c, align 4, !tbaa !203
  %i.i = tail call i32 @OMP_NUM_THREADS()
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.d, i32 %i.i)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZN8LightGBML24Int16HistogramSumReducerEPKcPcii.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.b, ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @_ZN8LightGBML24Int32HistogramSumReducerEPKcPcii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr %0, ptr %i.a, align 8, !tbaa !307
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr %1, ptr %i.b, align 8, !tbaa !307
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.e = shl nsw i32 %2, 1                        ; 2 uses
  %i.f = add i32 %i.e, -1
  %i.g = add i32 %i.f, %3
  %i.h = sdiv i32 %i.g, %i.e
  store i32 %i.h, ptr %i.c, align 4, !tbaa !203
  %i.i = tail call i32 @OMP_NUM_THREADS()
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.d, i32 %i.i)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZN8LightGBML24Int32HistogramSumReducerEPKcPcii.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.b, ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBML24Int16HistogramSumReducerEPKcPcii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) #19 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !203    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 %i.g, ptr %i.b, align 4, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 1, ptr %i.c, align 4, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 0, ptr %i.d, align 4, !tbaa !203
  %i.h = load i32, ptr %0, align 4, !tbaa !203    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !203
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !203
  %i.k = load i32, ptr %i.a, align 4, !tbaa !203  ; 2 uses
  %.not14 = icmp sgt i32 %i.k, %i.j
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = load ptr, ptr %4, align 8, !tbaa !224
  %i.m = load ptr, ptr %3, align 8, !tbaa !224
  %i.n = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !203
  %i.q = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !203
  %i.s = add nsw i32 %i.r, %i.p
  store i32 %i.s, ptr %i.q, align 4, !tbaa !203
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.t = load i32, ptr %i.b, align 4, !tbaa !203
  %i.u = sext i32 %i.t to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.u
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBML24Int32HistogramSumReducerEPKcPcii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) #19 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN8LightGBM23DataParallelTreeLearnerINS_14GPUTreeLearnerEE28FindBestSplitsFromHistogramsERKSt6vectorIaSaIaEEbPKNS_4TreeE.omp_outlined.13:bb.a
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !257 ; 2 uses
  %i.dk = icmp ult i8 %i.dh, 17
  %i.dl = load ptr, ptr %i.n, align 8, !tbaa !204 ; 2 uses
  %i.dm = load ptr, ptr %i.p, align 8, !tbaa !293
  %i.dn = getelementptr inbounds [96 x i8], ptr %i.dm, i64 %indvars.iv ; 2 uses
  br i1 %i.dk, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !300
  invoke void @_ZNK8LightGBM7Dataset15FixHistogramIntIiiLi16ELi16EEEvilPd(ptr noundef nonnull align 8 dereferenceable(864) %i.dl, i32 noundef %i.z, i64 noundef %i.dj, ptr noundef %i.dp)
          to label %bb.p unwind label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.dq = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.ak

bb.n:                                             ; preds = %bb.k
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !299
  invoke void @_ZNK8LightGBM7Dataset15FixHistogramIntIllLi32ELi32EEEvilPd(ptr noundef nonnull align 8 dereferenceable(864) %i.dl, i32 noundef %i.z, i64 noundef %i.dj, ptr noundef %i.ds)
          to label %bb.p unwind label %bb.m

bb.o:                                             ; preds = %bb.j
  %i.dt = load ptr, ptr %i.n, align 8, !tbaa !204
  %i.du = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dv = load double, ptr %i.du, align 8, !tbaa !255
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !256
  %i.dy = load ptr, ptr %i.p, align 8, !tbaa !293
  %i.dz = getelementptr inbounds [96 x i8], ptr %i.dy, i64 %indvars.iv
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !299
  invoke void @_ZNK8LightGBM7Dataset12FixHistogramEiddPd(ptr noundef nonnull align 8 dereferenceable(864) %i.dt, i32 noundef %i.z, double noundef %i.dv, double noundef %i.dx, ptr noundef %i.eb)
          to label %bb.p unwind label %bb.g

bb.p:                                             ; preds = %bb.l, %bb.n, %bb.o
  %i.ec = load ptr, ptr %i.p, align 8, !tbaa !293
  %i.ed = load ptr, ptr %3, align 8, !tbaa !225
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !226
  %i.eg = load ptr, ptr %i.t, align 8, !tbaa !252
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !260
  %i.ej = load ptr, ptr %2, align 8, !tbaa !182
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 184
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = invoke noundef i32 %i.el(ptr noundef nonnull align 8 dereferenceable(856) %2, i32 noundef %i.ei)
          to label %bb.q unwind label %bb.g

bb.q:                                             ; preds = %bb.p
  %i.en = load ptr, ptr %i.t, align 8, !tbaa !252
  %i.eo = sext i32 %i.ai to i64                   ; 2 uses
  %i.ep = load ptr, ptr %4, align 8, !tbaa !268
  %i.eq = getelementptr inbounds nuw [128 x i8], ptr %i.ep, i64 %i.eo
  %i.er = load double, ptr %5, align 8, !tbaa !261
  invoke void @_ZN8LightGBM17SerialTreeLearner26ComputeBestSplitForFeatureEPNS_16FeatureHistogramEiiaiPKNS_10LeafSplitsEPNS_9SplitInfoEd(ptr noundef nonnull align 8 dereferenceable(536) %2, ptr noundef %i.ec, i32 noundef %i.z, i32 noundef %i.an, i8 noundef signext %i.ef, i32 noundef %i.em, ptr noundef %i.en, ptr noundef nonnull %i.eq, double noundef %i.er)
          to label %bb.r unwind label %bb.g

bb.r:                                             ; preds = %bb.q
  %i.es = load ptr, ptr %i.v, align 8, !tbaa !252 ; 2 uses
  %.not.i = icmp eq ptr %i.es, null
  br i1 %.not.i, label %bb.am, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !260 ; 3 uses
  %i.ev = icmp slt i32 %i.eu, 0
  br i1 %i.ev, label %bb.am, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ew = load ptr, ptr %i.o, align 8, !tbaa !126
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 840
  %i.ey = load i8, ptr %i.ex, align 8, !tbaa !153, !range !154, !noundef !155
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.u, label %bb.ai

bb.u:                                             ; preds = %bb.t
  %i.fa = load ptr, ptr %i.t, align 8, !tbaa !252
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !260 ; 2 uses
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.eu, i32 %i.fc)
  %i.fd = load ptr, ptr %i.s, align 8, !tbaa !262 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 5264
  %i.ff = sext i32 %.sroa.speculated to i64
  %i.fg = load ptr, ptr %i.fe, align 8, !tbaa !225
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ff
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !226
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 5240
  %i.fk = zext nneg i32 %i.eu to i64
  %i.fl = load ptr, ptr %i.fj, align 8, !tbaa !225 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fk
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !226 ; 2 uses
  %i.fo = sext i32 %i.fc to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !226 ; 2 uses
  %i.fr = icmp ult i8 %i.fi, 17
  br i1 %i.fr, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.fs = icmp ult i8 %i.fq, 17
  br i1 %i.fs, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 395)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.ad, %bb.z, %bb.w
  %i.ft = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.ak

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.fu = icmp ult i8 %i.fn, 17
  br i1 %i.fu, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef 396)
          to label %bb.aa unwind label %bb.x

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.fv = load ptr, ptr %i.w, align 8, !tbaa !318 ; 3 uses
  %i.fw = getelementptr inbounds [96 x i8], ptr %i.fv, i64 %indvars.iv ; 2 uses
  %i.fx = load ptr, ptr %i.p, align 8, !tbaa !293
  %i.fy = getelementptr inbounds [96 x i8], ptr %i.fx, i64 %indvars.iv
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !300
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !300
  %i.gd = load ptr, ptr %i.fw, align 8, !tbaa !303 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load i8, ptr %i.ge, align 8, !tbaa !306
  %i.gg = sext i8 %i.gf to i32                    ; 2 uses
  %i.gh = load i32, ptr %i.gd, align 8, !tbaa !305
  %i.gi = icmp sgt i32 %i.gh, %i.gg
  br i1 %i.gi, label %.lr.ph.i, label %_ZN8LightGBM16FeatureHistogram8SubtractILb1EiiiLi16ELi16ELi16EEEvRKS0_PKi.exit

.lr.ph.i:                                         ; preds = %bb.aa, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.aa ] ; 3 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv.i ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !203
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.i
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !203
  %i.gn = sub nsw i32 %i.gk, %i.gm
  store i32 %i.gn, ptr %i.gj, align 4, !tbaa !203
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.go = load i32, ptr %i.gd, align 8, !tbaa !305
  %i.gp = sub nsw i32 %i.go, %i.gg
  %i.gq = sext i32 %i.gp to i64
  %i.gr = icmp slt i64 %indvars.iv.next.i, %i.gq
  br i1 %i.gr, label %.lr.ph.i, label %_ZN8LightGBM16FeatureHistogram8SubtractILb1EiiiLi16ELi16ELi16EEEvRKS0_PKi.exit, !llvm.loop !6

bb.ab:                                            ; preds = %bb.u
  %i.gs = icmp ult i8 %i.fn, 17
  %i.gt = icmp ult i8 %i.fq, 17                   ; 2 uses
  br i1 %i.gs, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.gt, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 400)
          to label %._crit_edge108 unwind label %bb.x

._crit_edge108:                                   ; preds = %bb.ad
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !262
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge108, %bb.ac
  %i.gu = phi ptr [ %.pre, %._crit_edge108 ], [ %i.fd, %bb.ac ]
  %i.gv = load ptr, ptr %i.w, align 8, !tbaa !318 ; 3 uses
  %i.gw = getelementptr inbounds [96 x i8], ptr %i.gv, i64 %indvars.iv ; 2 uses
  %i.gx = load ptr, ptr %i.p, align 8, !tbaa !293
  %i.gy = getelementptr inbounds [96 x i8], ptr %i.gx, i64 %indvars.iv
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 5312
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !199
  %i.hb = getelementptr inbounds nuw [24 x i8], ptr %i.ha, i64 %indvars.iv
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !178
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !300
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !300
  %i.hh = load ptr, ptr %i.gw, align 8, !tbaa !303 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load i8, ptr %i.hi, align 8, !tbaa !306
  %i.hk = sext i8 %i.hj to i32                    ; 2 uses
  %i.hl = load i32, ptr %i.hh, align 8, !tbaa !305
  %i.hm = icmp sgt i32 %i.hl, %i.hk
  br i1 %i.hm, label %.lr.ph.i71, label %_ZN8LightGBM16FeatureHistogram8SubtractILb1EiiiLi16ELi16ELi16EEEvRKS0_PKi.exit

.lr.ph.i71:                                       ; preds = %bb.ae, %.lr.ph.i71
  %indvars.iv.i72 = phi i64 [ %indvars.iv.next.i73, %.lr.ph.i71 ], [ 0, %bb.ae ] ; 4 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv.i72
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !203 ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv.i72
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !251
  %10 = lshr i32 %i.ho, 16
  %11 = zext nneg i32 %10 to i64
  %sext.i = shl nuw i64 %11, 48
  %12 = ashr exact i64 %sext.i, 16
  %i.hr = and i32 %i.ho, 65535
  %i.hs = zext nneg i32 %i.hr to i64
  %13 = or disjoint i64 %12, %i.hs
  %14 = sub nsw i64 %i.hq, %13                    ; 2 uses
  %sh.diff.i = lshr i64 %14, 16
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %i.ht = and i32 %tr.sh.diff.i, -65536
  %i.hu = trunc i64 %14 to i32
  %i.hv = or i32 %i.ht, %i.hu
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv.i72
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !203
  %indvars.iv.next.i73 = add nuw nsw i64 %indvars.iv.i72, 1 ; 2 uses
  %i.hx = load i32, ptr %i.hh, align 8, !tbaa !305
  %i.hy = sub nsw i32 %i.hx, %i.hk
  %i.hz = sext i32 %i.hy to i64
  %i.ia = icmp slt i64 %indvars.iv.next.i73, %i.hz
  br i1 %i.ia, label %.lr.ph.i71, label %_ZN8LightGBM16FeatureHistogram8SubtractILb1EiiiLi16ELi16ELi16EEEvRKS0_PKi.exit, !llvm.loop !7

bb.af:                                            ; preds = %bb.ab
  %i.ib = load ptr, ptr %i.w, align 8, !tbaa !318 ; 8 uses
  %i.ic = getelementptr inbounds [96 x i8], ptr %i.ib, i64 %indvars.iv ; 2 uses
  %i.id = load ptr, ptr %i.p, align 8, !tbaa !293
  %i.ie = getelementptr inbounds [96 x i8], ptr %i.id, i64 %indvars.iv ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !299 ; 10 uses
  %i.ih = load ptr, ptr %i.ic, align 8, !tbaa !303 ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !305
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ik = load i8, ptr %i.ij, align 8, !tbaa !306
  %i.il = sext i8 %i.ik to i32
  %i.im = sub i32 %i.ii, %i.il                    ; 5 uses
  %i.in = icmp sgt i32 %i.im, 0                   ; 2 uses
  br i1 %i.gt, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.io = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !300 ; 2 uses
  br i1 %i.in, label %.lr.ph.preheader.i, label %_ZN8LightGBM16FeatureHistogram8SubtractILb1EiiiLi16ELi16ELi16EEEvRKS0_PKi.exit

.lr.ph.preheader.i:                               ; preds = %bb.ag
  %wide.trip.count.i = zext nneg i32 %i.im to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.im, 4
  br i1 %min.iters.check, label %.lr.ph.i74.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %index ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %wide.load = load <2 x i32>, ptr %i.iq, align 4, !tbaa !203 ; 2 uses
  %wide.load126.a = load <2 x i32>, ptr %i.ir, align 4, !tbaa !203 ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %index ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16 ; 2 uses
  %wide.load127 = load <2 x i64>, ptr %i.is, align 8, !tbaa !251
  %wide.load128 = load <2 x i64>, ptr %i.it, align 8, !tbaa !251
  %15 = lshr <2 x i32> %wide.load, splat (i32 16)
  %16 = lshr <2 x i32> %wide.load126.a, splat (i32 16)
  %17 = zext nneg <2 x i32> %15 to <2 x i64>
  %18 = zext nneg <2 x i32> %16 to <2 x i64>
  %19 = shl nuw <2 x i64> %17, splat (i64 48)
  %20 = shl nuw <2 x i64> %18, splat (i64 48)
  %21 = ashr exact <2 x i64> %19, splat (i64 16)
  %22 = ashr exact <2 x i64> %20, splat (i64 16)
  %i.iu = and <2 x i32> %wide.load, splat (i32 65535)
  %i.iv = and <2 x i32> %wide.load126.a, splat (i32 65535)
  %i.iw = zext nneg <2 x i32> %i.iu to <2 x i64>
  %i.ix = zext nneg <2 x i32> %i.iv to <2 x i64>
  %23 = or disjoint <2 x i64> %21, %i.iw
  %24 = or disjoint <2 x i64> %22, %i.ix
  %25 = sub <2 x i64> %wide.load127, %23
  %26 = sub <2 x i64> %wide.load128, %24
  store <2 x i64> %25, ptr %i.is, align 8, !tbaa !251
  store <2 x i64> %26, ptr %i.it, align 8, !tbaa !251
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.iy = icmp eq i64 %index.next, %n.vec
  br i1 %i.iy, label %middle.block, label %vector.body, !llvm.loop !408

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZN8LightGBM16FeatureHistogram8SubtractILb1EiiiLi16ELi16ELi16EEEvRKS0_PKi.exit, label %.lr.ph.i74.preheader

.lr.ph.i74.preheader:                             ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i75.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i74

.lr.ph.i74:                                       ; preds = %.lr.ph.i74.preheader, %.lr.ph.i74
  %indvars.iv.i75 = phi i64 [ %indvars.iv.next.i77, %.lr.ph.i74 ], [ %indvars.iv.i75.ph, %.lr.ph.i74.preheader ] ; 3 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv.i75
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !203 ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.i75 ; 2 uses
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !251
  %27 = lshr i32 %i.ja, 16
  %28 = zext nneg i32 %27 to i64
  %sext.i76 = shl nuw i64 %28, 48
  %29 = ashr exact i64 %sext.i76, 16
  %i.jd = and i32 %i.ja, 65535
  %i.je = zext nneg i32 %i.jd to i64
  %30 = or disjoint i64 %29, %i.je
  %31 = sub i64 %i.jc, %30
  store i64 %31, ptr %i.jb, align 8, !tbaa !251
  %indvars.iv.next.i77 = add nuw nsw i64 %indvars.iv.i75, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i77, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN8LightGBM16FeatureHistogram8SubtractILb1EiiiLi16ELi16ELi16EEEvRKS0_PKi.exit, label %.lr.ph.i74, !llvm.loop !409

bb.ah:                                            ; preds = %bb.af
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !299 ; 8 uses
  br i1 %i.in, label %.lr.ph.preheader.i78, label %_ZN8LightGBM16FeatureHistogram8SubtractILb1EiiiLi16ELi16ELi16EEEvRKS0_PKi.exit

.lr.ph.preheader.i78:                             ; preds = %bb.ah
  %wide.trip.count.i79 = zext nneg i32 %i.im to i64 ; 6 uses
  %min.iters.check131 = icmp ult i32 %i.im, 4
  br i1 %min.iters.check131, label %.lr.ph.i80.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i78
  %i.jh = shl nuw nsw i64 %wide.trip.count.i79, 3 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ig, i64 %i.jh
  %scevgep129 = getelementptr i8, ptr %i.jg, i64 %i.jh
  %bound0 = icmp ult ptr %i.ig, %scevgep129
  %bound1 = icmp ult ptr %i.jg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i80.preheader, label %vector.ph132

vector.ph132:                                     ; preds = %vector.memcheck
  %n.vec133 = and i64 %wide.trip.count.i79, 2147483644 ; 3 uses
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph132
  %index135 = phi i64 [ 0, %vector.ph132 ], [ %index.next140, %vector.body134 ] ; 3 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %index135 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16 ; 2 uses
  %wide.load136.a = load <2 x i64>, ptr %i.ji, align 8, !tbaa !251, !alias.scope !422, !noalias !423
  %wide.load137.a = load <2 x i64>, ptr %i.jj, align 8, !tbaa !251, !alias.scope !422, !noalias !423
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %index135 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %wide.load138 = load <2 x i64>, ptr %i.jk, align 8, !tbaa !251, !alias.scope !423
  %wide.load139 = load <2 x i64>, ptr %i.jl, align 8, !tbaa !251, !alias.scope !423
  %i.jm = sub nsw <2 x i64> %wide.load136.a, %wide.load138
  %i.jn = sub nsw <2 x i64> %wide.load137.a, %wide.load139
  store <2 x i64> %i.jm, ptr %i.ji, align 8, !tbaa !251, !alias.scope !422, !noalias !423
  store <2 x i64> %i.jn, ptr %i.jj, align 8, !tbaa !251, !alias.scope !422, !noalias !423
  %index.next140 = add nuw i64 %index135, 4       ; 2 uses
  %i.jo = icmp eq i64 %index.next140, %n.vec133
  br i1 %i.jo, label %middle.block141, label %vector.body134, !llvm.loop !413

middle.block141:                                  ; preds = %vector.body134
  %cmp.n142 = icmp eq i64 %n.vec133, %wide.trip.count.i79
  br i1 %cmp.n142, label %_ZN8LightGBM16FeatureHistogram8SubtractILb1EiiiLi16ELi16ELi16EEEvRKS0_PKi.exit, label %.lr.ph.i80.preheader

.lr.ph.i80.preheader:                             ; preds = %vector.memcheck, %.lr.ph.preheader.i78, %middle.block141
  %indvars.iv.i81.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i78 ], [ %n.vec133, %middle.block141 ] ; 3 uses
  %xtraiter168 = and i64 %wide.trip.count.i79, 3  ; 2 uses
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod169.not, label %.lr.ph.i80.prol.loopexit, label %.lr.ph.i80.prol

.lr.ph.i80.prol:                                  ; preds = %.lr.ph.i80.preheader, %.lr.ph.i80.prol
  %indvars.iv.i81.prol = phi i64 [ %indvars.iv.next.i82.prol, %.lr.ph.i80.prol ], [ %indvars.iv.i81.ph, %.lr.ph.i80.preheader ] ; 3 uses
  %prol.iter170 = phi i64 [ %prol.iter170.next, %.lr.ph.i80.prol ], [ 0, %.lr.ph.i80.preheader ]
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.i81.prol ; 2 uses
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !251
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %indvars.iv.i81.prol
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !251
  %i.jt = sub nsw i64 %i.jq, %i.js
  store i64 %i.jt, ptr %i.jp, align 8, !tbaa !251
  %indvars.iv.next.i82.prol = add nuw nsw i64 %indvars.iv.i81.prol, 1 ; 2 uses
  %prol.iter170.next = add i64 %prol.iter170, 1   ; 2 uses
  %prol.iter170.cmp.not = icmp eq i64 %prol.iter170.next, %xtraiter168
  br i1 %prol.iter170.cmp.not, label %.lr.ph.i80.prol.loopexit, label %.lr.ph.i80.prol, !llvm.loop !414

.lr.ph.i80.prol.loopexit:                         ; preds = %.lr.ph.i80.prol, %.lr.ph.i80.preheader
  %indvars.iv.i81.unr = phi i64 [ %indvars.iv.i81.ph, %.lr.ph.i80.preheader ], [ %indvars.iv.next.i82.prol, %.lr.ph.i80.prol ]
  %i.ju = sub nsw i64 %indvars.iv.i81.ph, %wide.trip.count.i79
  %i.jv = icmp ugt i64 %i.ju, -4
  br i1 %i.jv, label %_ZN8LightGBM16FeatureHistogram8SubtractILb1EiiiLi16ELi16ELi16EEEvRKS0_PKi.exit, label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %.lr.ph.i80.prol.loopexit, %.lr.ph.i80
  %indvars.iv.i81 = phi i64 [ %indvars.iv.next.i82.3, %.lr.ph.i80 ], [ %indvars.iv.i81.unr, %.lr.ph.i80.prol.loopexit ] ; 6 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.i81 ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !251
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %indvars.iv.i81
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !251
  %i.ka = sub nsw i64 %i.jx, %i.jz
  store i64 %i.ka, ptr %i.jw, align 8, !tbaa !251
  %indvars.iv.next.i82 = add nuw nsw i64 %indvars.iv.i81, 1 ; 2 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.next.i82 ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !251
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %indvars.iv.next.i82
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !251
  %i.kf = sub nsw i64 %i.kc, %i.ke
  store i64 %i.kf, ptr %i.kb, align 8, !tbaa !251
  %indvars.iv.next.i82.1 = add nuw nsw i64 %indvars.iv.i81, 2 ; 2 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.next.i82.1 ; 2 uses
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !251
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %indvars.iv.next.i82.1
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !251
  %i.kk = sub nsw i64 %i.kh, %i.kj
  store i64 %i.kk, ptr %i.kg, align 8, !tbaa !251
  %indvars.iv.next.i82.2 = add nuw nsw i64 %indvars.iv.i81, 3 ; 2 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.next.i82.2 ; 2 uses
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !251
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %indvars.iv.next.i82.2
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !251
  %i.kp = sub nsw i64 %i.km, %i.ko
  store i64 %i.kp, ptr %i.kl, align 8, !tbaa !251
  %indvars.iv.next.i82.3 = add nuw nsw i64 %indvars.iv.i81, 4 ; 2 uses
  %exitcond.not.i83.3 = icmp eq i64 %indvars.iv.next.i82.3, %wide.trip.count.i79
  br i1 %exitcond.not.i83.3, label %_ZN8LightGBM16FeatureHistogram8SubtractILb1EiiiLi16ELi16ELi16EEEvRKS0_PKi.exit, label %.lr.ph.i80, !llvm.loop !415

bb.ai:                                            ; preds = %bb.t
  %i.kq = load ptr, ptr %i.w, align 8, !tbaa !318 ; 5 uses
  %i.kr = getelementptr inbounds [96 x i8], ptr %i.kq, i64 %indvars.iv ; 2 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !303 ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !305
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.kv = load i8, ptr %i.ku, align 8, !tbaa !306
  %i.kw = sext i8 %i.kv to i32
  %i.kx = sub nsw i32 %i.kt, %i.kw                ; 2 uses
  %i.ky = icmp sgt i32 %i.kx, 0
  br i1 %i.ky, label %.lr.ph.i84, label %_ZN8LightGBM16FeatureHistogram8SubtractILb1EiiiLi16ELi16ELi16EEEvRKS0_PKi.exit

.lr.ph.i84:                                       ; preds = %bb.ai
  %i.kz = load ptr, ptr %i.p, align 8, !tbaa !293
  %i.la = getelementptr inbounds [96 x i8], ptr %i.kz, i64 %indvars.iv
  %i.lb = shl nuw i32 %i.kx, 1                    ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !299 ; 8 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !299 ; 8 uses
  %smax.i = call i32 @llvm.smax.i32(i32 %i.lb, i32 1)
  %wide.trip.count.i85 = zext nneg i32 %smax.i to i64 ; 6 uses
  %min.iters.check151 = icmp slt i32 %i.lb, 4
  br i1 %min.iters.check151, label %scalar.ph150.preheader, label %vector.memcheck144

vector.memcheck144:                               ; preds = %.lr.ph.i84
  %i.lg = shl nuw nsw i64 %wide.trip.count.i85, 3 ; 2 uses
  %scevgep145 = getelementptr i8, ptr %i.lf, i64 %i.lg
  %scevgep146 = getelementptr i8, ptr %i.ld, i64 %i.lg
  %bound0147 = icmp ult ptr %i.lf, %scevgep146
  %bound1148 = icmp ult ptr %i.ld, %scevgep145
  %found.conflict149 = and i1 %bound0147, %bound1148
  br i1 %found.conflict149, label %scalar.ph150.preheader, label %vector.ph152

vector.ph152:                                     ; preds = %vector.memcheck144
  %n.vec153 = and i64 %wide.trip.count.i85, 2147483644 ; 3 uses
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph152
  %index155 = phi i64 [ 0, %vector.ph152 ], [ %index.next160, %vector.body154 ] ; 3 uses
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %index155 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %wide.load156.a = load <2 x double>, ptr %i.lh, align 8, !tbaa !261, !alias.scope !424
  %wide.load157.a = load <2 x double>, ptr %i.li, align 8, !tbaa !261, !alias.scope !424
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %index155 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16 ; 2 uses
  %wide.load158 = load <2 x double>, ptr %i.lj, align 8, !tbaa !261, !alias.scope !425, !noalias !424
  %wide.load159 = load <2 x double>, ptr %i.lk, align 8, !tbaa !261, !alias.scope !425, !noalias !424
  %i.ll = fsub <2 x double> %wide.load158, %wide.load156.a
  %i.lm = fsub <2 x double> %wide.load159, %wide.load157.a
  store <2 x double> %i.ll, ptr %i.lj, align 8, !tbaa !261, !alias.scope !425, !noalias !424
  store <2 x double> %i.lm, ptr %i.lk, align 8, !tbaa !261, !alias.scope !425, !noalias !424
  %index.next160 = add nuw i64 %index155, 4       ; 2 uses
  %i.ln = icmp eq i64 %index.next160, %n.vec153
  br i1 %i.ln, label %middle.block161, label %vector.body154, !llvm.loop !419

middle.block161:                                  ; preds = %vector.body154
  %cmp.n162 = icmp eq i64 %n.vec153, %wide.trip.count.i85
  br i1 %cmp.n162, label %_ZN8LightGBM16FeatureHistogram8SubtractILb1EiiiLi16ELi16ELi16EEEvRKS0_PKi.exit, label %scalar.ph150.preheader

scalar.ph150.preheader:                           ; preds = %vector.memcheck144, %.lr.ph.i84, %middle.block161
  %indvars.iv.i86.ph = phi i64 [ 0, %vector.memcheck144 ], [ 0, %.lr.ph.i84 ], [ %n.vec153, %middle.block161 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i85, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph150.prol.loopexit, label %scalar.ph150.prol

scalar.ph150.prol:                                ; preds = %scalar.ph150.preheader, %scalar.ph150.prol
  %indvars.iv.i86.prol = phi i64 [ %indvars.iv.next.i87.prol, %scalar.ph150.prol ], [ %indvars.iv.i86.ph, %scalar.ph150.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph150.prol ], [ 0, %scalar.ph150.preheader ]
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %indvars.iv.i86.prol
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !261
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %indvars.iv.i86.prol ; 2 uses
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !261
  %i.ls = fsub double %i.lr, %i.lp
  store double %i.ls, ptr %i.lq, align 8, !tbaa !261
  %indvars.iv.next.i87.prol = add nuw nsw i64 %indvars.iv.i86.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph150.prol.loopexit, label %scalar.ph150.prol, !llvm.loop !420

scalar.ph150.prol.loopexit:                       ; preds = %scalar.ph150.prol, %scalar.ph150.preheader
  %indvars.iv.i86.unr = phi i64 [ %indvars.iv.i86.ph, %scalar.ph150.preheader ], [ %indvars.iv.next.i87.prol, %scalar.ph150.prol ]
  %i.lt = sub nsw i64 %indvars.iv.i86.ph, %wide.trip.count.i85
  %i.lu = icmp ugt i64 %i.lt, -4
  br i1 %i.lu, label %_ZN8LightGBM16FeatureHistogram8SubtractILb1EiiiLi16ELi16ELi16EEEvRKS0_PKi.exit, label %scalar.ph150

scalar.ph150:                                     ; preds = %scalar.ph150.prol.loopexit, %scalar.ph150
  %indvars.iv.i86 = phi i64 [ %indvars.iv.next.i87.3, %scalar.ph150 ], [ %indvars.iv.i86.unr, %scalar.ph150.prol.loopexit ] ; 6 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %indvars.iv.i86
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !261
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %indvars.iv.i86 ; 2 uses
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !261
end_hunk_1
begin_hunk_2_@_ZN8LightGBM23DataParallelTreeLearnerINS_17SerialTreeLearnerEE14FindBestSplitsEPKNS_4TreeE.omp_outlined:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 360
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.q = sext i32 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ %i.q, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 7 uses
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !225
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv
  %i.t = load i8, ptr %i.s, align 1, !tbaa !226
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !204  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 464
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !178
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !203
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 488
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !178
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !203
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.af = sext i32 %i.z to i64
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !230
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.af
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !232
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = sext i32 %i.ad to i64
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !235
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !237 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 156
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !250
  %i.aq = icmp eq i32 %i.ap, 0
  %.neg = sext i1 %i.aq to i32
  %i.ar = load i32, ptr %i.an, align 8, !tbaa !249
  %i.as = load ptr, ptr %i.o, align 8, !tbaa !126
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 840
  %i.au = load i8, ptr %i.at, align 8, !tbaa !153, !range !154, !noundef !155
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = load ptr, ptr %i.p, align 8, !tbaa !293
  %i.ax = getelementptr inbounds [96 x i8], ptr %i.aw, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !299 ; 2 uses
  %i.ba = add i32 %i.ar, %.neg
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  br i1 %i.av, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.bc = shl nsw i64 %i.bb, 3
  call void @llvm.memset.p0.i64(ptr align 1 %i.az, i8 0, i64 %i.bc, i1 false)
  %i.bd = load ptr, ptr %i.p, align 8, !tbaa !293
  %i.be = getelementptr inbounds [96 x i8], ptr %i.bd, i64 %indvars.iv
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !300
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e
  %.sink31 = phi i64 [ 2, %bb.e ], [ 4, %bb.d ]
  %.sink = phi ptr [ %i.bg, %bb.e ], [ %i.az, %bb.d ]
  %i.bh = shl nsw i64 %i.bb, %.sink31
  call void @llvm.memset.p0.i64(ptr align 1 %.sink, i8 0, i64 %i.bh, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.bi = load i32, ptr %i.b, align 4, !tbaa !203
  %i.bj = sext i32 %i.bi to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.bj
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM23DataParallelTreeLearnerINS_17SerialTreeLearnerEE14FindBestSplitsEPKNS_4TreeE.omp_outlined.20(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #19 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !174  ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 %i.h, ptr %i.b, align 4, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 1, ptr %i.c, align 4, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 0, ptr %i.d, align 4, !tbaa !203
  %i.i = load i32, ptr %0, align 4, !tbaa !203    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !203
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 2 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !203
  %i.l = load i32, ptr %i.a, align 4, !tbaa !203  ; 2 uses
  %.not24 = icmp sgt i32 %i.l, %i.k
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 408
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 360
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 544 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 728 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 528
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 776
  %i.u = sext i32 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN8LightGBM16FeatureHistogram20CopyFromInt16ToInt32EPc.exit
  %indvars.iv = phi i64 [ %i.u, %.lr.ph ], [ %indvars.iv.next, %_ZN8LightGBM16FeatureHistogram20CopyFromInt16ToInt32EPc.exit ] ; 7 uses
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !225
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv
  %i.x = load i8, ptr %i.w, align 1, !tbaa !226
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %_ZN8LightGBM16FeatureHistogram20CopyFromInt16ToInt32EPc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !126
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 840
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !153, !range !154, !noundef !155
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.e, label %_ZN8LightGBM16FeatureHistogram20CopyFromInt16ToInt32EPc.exit.sink.split

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !262 ; 2 uses
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !252
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !260
  %i.ah = sext i32 %i.ag to i64                   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 5240
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !225
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !226
  %i.am = icmp ult i8 %i.al, 17
  br i1 %i.am, label %_ZN8LightGBM16FeatureHistogram20CopyFromInt16ToInt32EPc.exit.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 5192
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !225
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ah
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !226
  %i.ar = icmp eq i8 %i.aq, 32
  br i1 %i.ar, label %_ZN8LightGBM16FeatureHistogram20CopyFromInt16ToInt32EPc.exit.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = load ptr, ptr %i.q, align 8, !tbaa !293
  %i.at = getelementptr inbounds [96 x i8], ptr %i.as, i64 %indvars.iv ; 2 uses
  %i.au = load ptr, ptr %i.o, align 8, !tbaa !258
  %i.av = load ptr, ptr %i.p, align 8, !tbaa !178
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !203
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %i.au, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !300 ; 2 uses
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !303 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !305
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !306
  %i.bg = sext i8 %i.bf to i32
  %i.bh = sub nsw i32 %i.bd, %i.bg                ; 3 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.preheader.i, label %_ZN8LightGBM16FeatureHistogram20CopyFromInt16ToInt32EPc.exit

.lr.ph.preheader.i:                               ; preds = %bb.g
  %wide.trip.count.i = zext nneg i32 %i.bh to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.bh, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %index ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %wide.load = load <2 x i32>, ptr %i.bj, align 4, !tbaa !203 ; 2 uses
  %wide.load48 = load <2 x i32>, ptr %i.bk, align 4, !tbaa !203 ; 2 uses
  %3 = lshr <2 x i32> %wide.load, splat (i32 16)
  %4 = lshr <2 x i32> %wide.load48, splat (i32 16)
  %5 = zext nneg <2 x i32> %3 to <2 x i64>
  %6 = zext nneg <2 x i32> %4 to <2 x i64>
  %i.bl = shl nuw <2 x i64> %5, splat (i64 48)
  %i.bm = shl nuw <2 x i64> %6, splat (i64 48)
  %7 = ashr exact <2 x i64> %i.bl, splat (i64 16)
  %8 = ashr exact <2 x i64> %i.bm, splat (i64 16)
  %i.bn = and <2 x i32> %wide.load, splat (i32 65535)
  %i.bo = and <2 x i32> %wide.load48, splat (i32 65535)
  %i.bp = zext nneg <2 x i32> %i.bn to <2 x i64>
  %i.bq = zext nneg <2 x i32> %i.bo to <2 x i64>
  %i.br = or disjoint <2 x i64> %7, %i.bp
  %i.bs = or disjoint <2 x i64> %8, %i.bq
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %index ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store <2 x i64> %i.br, ptr %i.bt, align 8, !tbaa !251
  store <2 x i64> %i.bs, ptr %i.bu, align 8, !tbaa !251
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !469

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZN8LightGBM16FeatureHistogram20CopyFromInt16ToInt32EPc.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !203 ; 2 uses
  %9 = lshr i32 %i.bx, 16
  %10 = zext nneg i32 %9 to i64
  %sext.i = shl nuw i64 %10, 48
  %11 = ashr exact i64 %sext.i, 16
  %i.by = and i32 %i.bx, 65535
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = or disjoint i64 %11, %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.i
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !251
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN8LightGBM16FeatureHistogram20CopyFromInt16ToInt32EPc.exit, label %.lr.ph.i, !llvm.loop !470

_ZN8LightGBM16FeatureHistogram20CopyFromInt16ToInt32EPc.exit.sink.split: ; preds = %bb.d, %bb.f, %bb.e
  %.sink.in = phi ptr [ %i.p, %bb.f ], [ %i.t, %bb.e ], [ %i.p, %bb.d ]
  %.sink43 = phi i64 [ 8, %bb.f ], [ 16, %bb.e ], [ 8, %bb.d ]
  %.sink33 = phi i32 [ 3, %bb.f ], [ 2, %bb.e ], [ 4, %bb.d ]
  %.sink45 = load ptr, ptr %i.o, align 8, !tbaa !258
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !178
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.sink, i64 %indvars.iv
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !203
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds i8, ptr %.sink45, i64 %i.ce
  %i.cg = load ptr, ptr %i.q, align 8, !tbaa !293
  %i.ch = getelementptr inbounds [96 x i8], ptr %i.cg, i64 %indvars.iv ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sink43
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !259
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !303 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !305
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !306
  %i.co = sext i8 %i.cn to i32
  %i.cp = sub nsw i32 %i.cl, %i.co
  %i.cq = shl i32 %i.cp, %.sink33
  %i.cr = sext i32 %i.cq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cf, ptr align 2 %i.cj, i64 %i.cr, i1 false)
  br label %_ZN8LightGBM16FeatureHistogram20CopyFromInt16ToInt32EPc.exit

_ZN8LightGBM16FeatureHistogram20CopyFromInt16ToInt32EPc.exit: ; preds = %.lr.ph.i, %middle.block, %_ZN8LightGBM16FeatureHistogram20CopyFromInt16ToInt32EPc.exit.sink.split, %bb.g, %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.cs = load i32, ptr %i.b, align 4, !tbaa !203
  %i.ct = sext i32 %i.cs to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ct
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN8LightGBM16FeatureHistogram20CopyFromInt16ToInt32EPc.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM23DataParallelTreeLearnerINS_17SerialTreeLearnerEE28FindBestSplitsFromHistogramsERKSt6vectorIaSaIaEEbPKNS_4TreeE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3) #19 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !174  ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 %i.h, ptr %i.b, align 4, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 1, ptr %i.c, align 4, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 0, ptr %i.d, align 4, !tbaa !203
  %i.i = load i32, ptr %0, align 4, !tbaa !203    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !203
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !203
  %i.l = load i32, ptr %i.a, align 4, !tbaa !203  ; 2 uses
  %.not19 = icmp sgt i32 %i.l, %i.k
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 592
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !175
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 528
  %i.q = sext i32 %i.l to i64
  %i.r = add nsw i32 %i.k, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN8LightGBM16FeatureHistogram12CopyToBufferEPi.exit
  %indvars.iv = phi i64 [ %i.q, %.lr.ph ], [ %indvars.iv.next, %_ZN8LightGBM16FeatureHistogram12CopyToBufferEPi.exit ] ; 6 uses
  %i.s = trunc nsw i64 %indvars.iv to i32
  %i.t = sdiv i32 %i.s, 64
  %.sext = sext i32 %i.t to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.sext
  %i.v = and i64 %indvars.iv, -9223372036854775745
  %i.w = icmp ugt i64 %i.v, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.w, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.u, i64 %storemerge.idx.i.i.i.i.i
  %i.x = and i64 %indvars.iv, 63
  %i.y = shl nuw i64 1, %i.x
  %i.z = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !251
  %i.aa = and i64 %i.z, %i.y
  %.not18 = icmp eq i64 %i.aa, 0
  br i1 %.not18, label %_ZN8LightGBM16FeatureHistogram12CopyToBufferEPi.exit, label %bb.d

_ZN8LightGBM16FeatureHistogram12CopyToBufferEPi.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.d, %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.r, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !318
  %i.ac = getelementptr inbounds [96 x i8], ptr %i.ab, i64 %indvars.iv ; 2 uses
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !262
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 5312
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !199
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %indvars.iv
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !178 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !299 ; 7 uses
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !303 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !305
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i8, ptr %i.am, align 8, !tbaa !306
  %i.ao = sext i8 %i.an to i32
  %i.ap = sub nsw i32 %i.al, %i.ao                ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.preheader.i, label %_ZN8LightGBM16FeatureHistogram12CopyToBufferEPi.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.ar = ptrtoaddr ptr %i.aj to i64
  %i.as = ptrtoaddr ptr %i.ah to i64
  %wide.trip.count.i = zext nneg i32 %i.ap to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ap, 4
  %i.at = sub i64 %i.ar, %i.as
  %diff.check = icmp ugt i64 %i.at, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <2 x i64>, ptr %i.au, align 8, !tbaa !251
  %wide.load25 = load <2 x i64>, ptr %i.av, align 8, !tbaa !251
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <2 x i64> %wide.load, ptr %i.aw, align 8, !tbaa !251
  store <2 x i64> %wide.load25, ptr %i.ax, align 8, !tbaa !251
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !471

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZN8LightGBM16FeatureHistogram12CopyToBufferEPi.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i.prol
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !251
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i.prol
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !251
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !472

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.bc = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.bd = icmp ugt i64 %i.bc, -4
  br i1 %i.bd, label %_ZN8LightGBM16FeatureHistogram12CopyToBufferEPi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !251
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !251
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next.i
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !251
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !251
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN8LightGBM23DataParallelTreeLearnerINS_17SerialTreeLearnerEE28FindBestSplitsFromHistogramsERKSt6vectorIaSaIaEEbPKNS_4TreeE.omp_outlined.21:bb.a
  br i1 %i.dj, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !300
  invoke void @_ZNK8LightGBM7Dataset15FixHistogramIntIiiLi16ELi16EEEvilPd(ptr noundef nonnull align 8 dereferenceable(864) %i.dk, i32 noundef %i.z, i64 noundef %i.di, ptr noundef %i.do)
          to label %bb.p unwind label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.dp = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.ak

bb.m:                                             ; preds = %bb.j
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !299
  invoke void @_ZNK8LightGBM7Dataset15FixHistogramIntIllLi32ELi32EEEvilPd(ptr noundef nonnull align 8 dereferenceable(864) %i.dk, i32 noundef %i.z, i64 noundef %i.di, ptr noundef %i.dr)
          to label %bb.p unwind label %bb.l

bb.n:                                             ; preds = %bb.i
  %i.ds = load ptr, ptr %i.n, align 8, !tbaa !204
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.du = load double, ptr %i.dt, align 8, !tbaa !255
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !256
  %i.dx = load ptr, ptr %i.p, align 8, !tbaa !293
  %i.dy = getelementptr inbounds [96 x i8], ptr %i.dx, i64 %indvars.iv
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !299
  invoke void @_ZNK8LightGBM7Dataset12FixHistogramEiddPd(ptr noundef nonnull align 8 dereferenceable(864) %i.ds, i32 noundef %i.z, double noundef %i.du, double noundef %i.dw, ptr noundef %i.ea)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.aj, %_ZN8LightGBM16FeatureHistogram8SubtractILb1EiiiLi16ELi16ELi16EEEvRKS0_PKi.exit, %bb.q, %bb.p, %bb.n
  %i.eb = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.ak

bb.p:                                             ; preds = %bb.k, %bb.m, %bb.n
  %i.ec = load ptr, ptr %i.p, align 8, !tbaa !293
  %i.ed = load ptr, ptr %3, align 8, !tbaa !225
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !226
  %i.eg = load ptr, ptr %i.t, align 8, !tbaa !252
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !260
  %i.ej = load ptr, ptr %2, align 8, !tbaa !182
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 184
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = invoke noundef i32 %i.el(ptr noundef nonnull align 8 dereferenceable(856) %2, i32 noundef %i.ei)
          to label %bb.q unwind label %bb.o

bb.q:                                             ; preds = %bb.p
  %i.en = load ptr, ptr %i.t, align 8, !tbaa !252
  %i.eo = sext i32 %i.ai to i64                   ; 2 uses
  %i.ep = load ptr, ptr %4, align 8, !tbaa !268
  %i.eq = getelementptr inbounds nuw [128 x i8], ptr %i.ep, i64 %i.eo
  %i.er = load double, ptr %5, align 8, !tbaa !261
  invoke void @_ZN8LightGBM17SerialTreeLearner26ComputeBestSplitForFeatureEPNS_16FeatureHistogramEiiaiPKNS_10LeafSplitsEPNS_9SplitInfoEd(ptr noundef nonnull align 8 dereferenceable(536) %2, ptr noundef %i.ec, i32 noundef %i.z, i32 noundef %i.an, i8 noundef signext %i.ef, i32 noundef %i.em, ptr noundef %i.en, ptr noundef nonnull %i.eq, double noundef %i.er)
          to label %bb.r unwind label %bb.o

bb.r:                                             ; preds = %bb.q
  %i.es = load ptr, ptr %i.v, align 8, !tbaa !252 ; 2 uses
  %.not.i = icmp eq ptr %i.es, null
  br i1 %.not.i, label %bb.am, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !260 ; 3 uses
  %i.ev = icmp slt i32 %i.eu, 0
  br i1 %i.ev, label %bb.am, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ew = load ptr, ptr %i.o, align 8, !tbaa !126
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 840
  %i.ey = load i8, ptr %i.ex, align 8, !tbaa !153, !range !154, !noundef !155
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.u, label %bb.ai

bb.u:                                             ; preds = %bb.t
  %i.fa = load ptr, ptr %i.t, align 8, !tbaa !252
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !260 ; 2 uses
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.eu, i32 %i.fc)
  %i.fd = load ptr, ptr %i.s, align 8, !tbaa !262 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 5264
  %i.ff = sext i32 %.sroa.speculated to i64
  %i.fg = load ptr, ptr %i.fe, align 8, !tbaa !225
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ff
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !226
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 5240
  %i.fk = zext nneg i32 %i.eu to i64
  %i.fl = load ptr, ptr %i.fj, align 8, !tbaa !225 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fk
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !226 ; 2 uses
  %i.fo = sext i32 %i.fc to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !226 ; 2 uses
  %i.fr = icmp ult i8 %i.fi, 17
  br i1 %i.fr, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.fs = icmp ult i8 %i.fq, 17
  br i1 %i.fs, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 395)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.ad, %bb.z, %bb.w
  %i.ft = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.ak

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.fu = icmp ult i8 %i.fn, 17
  br i1 %i.fu, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef 396)
          to label %bb.aa unwind label %bb.x

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.fv = load ptr, ptr %i.w, align 8, !tbaa !318 ; 3 uses
  %i.fw = getelementptr inbounds [96 x i8], ptr %i.fv, i64 %indvars.iv ; 2 uses
  %i.fx = load ptr, ptr %i.p, align 8, !tbaa !293
  %i.fy = getelementptr inbounds [96 x i8], ptr %i.fx, i64 %indvars.iv
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !300
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !300
  %i.gd = load ptr, ptr %i.fw, align 8, !tbaa !303 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load i8, ptr %i.ge, align 8, !tbaa !306
  %i.gg = sext i8 %i.gf to i32                    ; 2 uses
  %i.gh = load i32, ptr %i.gd, align 8, !tbaa !305
  %i.gi = icmp sgt i32 %i.gh, %i.gg
  br i1 %i.gi, label %.lr.ph.i, label %_ZN8LightGBM16FeatureHistogram8SubtractILb1EiiiLi16ELi16ELi16EEEvRKS0_PKi.exit

.lr.ph.i:                                         ; preds = %bb.aa, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.aa ] ; 3 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv.i ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !203
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.i
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !203
  %i.gn = sub nsw i32 %i.gk, %i.gm
  store i32 %i.gn, ptr %i.gj, align 4, !tbaa !203
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.go = load i32, ptr %i.gd, align 8, !tbaa !305
  %i.gp = sub nsw i32 %i.go, %i.gg
  %i.gq = sext i32 %i.gp to i64
  %i.gr = icmp slt i64 %indvars.iv.next.i, %i.gq
  br i1 %i.gr, label %.lr.ph.i, label %_ZN8LightGBM16FeatureHistogram8SubtractILb1EiiiLi16ELi16ELi16EEEvRKS0_PKi.exit, !llvm.loop !6

bb.ab:                                            ; preds = %bb.u
  %i.gs = icmp ult i8 %i.fn, 17
  %i.gt = icmp ult i8 %i.fq, 17                   ; 2 uses
  br i1 %i.gs, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.gt, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 400)
          to label %._crit_edge108 unwind label %bb.x

._crit_edge108:                                   ; preds = %bb.ad
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !262
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge108, %bb.ac
  %i.gu = phi ptr [ %.pre, %._crit_edge108 ], [ %i.fd, %bb.ac ]
  %i.gv = load ptr, ptr %i.w, align 8, !tbaa !318 ; 3 uses
  %i.gw = getelementptr inbounds [96 x i8], ptr %i.gv, i64 %indvars.iv ; 2 uses
  %i.gx = load ptr, ptr %i.p, align 8, !tbaa !293
  %i.gy = getelementptr inbounds [96 x i8], ptr %i.gx, i64 %indvars.iv
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 5312
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !199
  %i.hb = getelementptr inbounds nuw [24 x i8], ptr %i.ha, i64 %indvars.iv
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !178
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !300
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !300
  %i.hh = load ptr, ptr %i.gw, align 8, !tbaa !303 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load i8, ptr %i.hi, align 8, !tbaa !306
  %i.hk = sext i8 %i.hj to i32                    ; 2 uses
  %i.hl = load i32, ptr %i.hh, align 8, !tbaa !305
  %i.hm = icmp sgt i32 %i.hl, %i.hk
  br i1 %i.hm, label %.lr.ph.i71, label %_ZN8LightGBM16FeatureHistogram8SubtractILb1EiiiLi16ELi16ELi16EEEvRKS0_PKi.exit

.lr.ph.i71:                                       ; preds = %bb.ae, %.lr.ph.i71
  %indvars.iv.i72 = phi i64 [ %indvars.iv.next.i73, %.lr.ph.i71 ], [ 0, %bb.ae ] ; 4 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv.i72
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !203 ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv.i72
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !251
  %10 = lshr i32 %i.ho, 16
  %11 = zext nneg i32 %10 to i64
  %sext.i = shl nuw i64 %11, 48
  %12 = ashr exact i64 %sext.i, 16
  %i.hr = and i32 %i.ho, 65535
  %i.hs = zext nneg i32 %i.hr to i64
  %13 = or disjoint i64 %12, %i.hs
  %14 = sub nsw i64 %i.hq, %13                    ; 2 uses
  %sh.diff.i = lshr i64 %14, 16
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %i.ht = and i32 %tr.sh.diff.i, -65536
  %i.hu = trunc i64 %14 to i32
  %i.hv = or i32 %i.ht, %i.hu
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv.i72
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !203
  %indvars.iv.next.i73 = add nuw nsw i64 %indvars.iv.i72, 1 ; 2 uses
  %i.hx = load i32, ptr %i.hh, align 8, !tbaa !305
  %i.hy = sub nsw i32 %i.hx, %i.hk
  %i.hz = sext i32 %i.hy to i64
  %i.ia = icmp slt i64 %indvars.iv.next.i73, %i.hz
  br i1 %i.ia, label %.lr.ph.i71, label %_ZN8LightGBM16FeatureHistogram8SubtractILb1EiiiLi16ELi16ELi16EEEvRKS0_PKi.exit, !llvm.loop !7

bb.af:                                            ; preds = %bb.ab
  %i.ib = load ptr, ptr %i.w, align 8, !tbaa !318 ; 8 uses
  %i.ic = getelementptr inbounds [96 x i8], ptr %i.ib, i64 %indvars.iv ; 2 uses
  %i.id = load ptr, ptr %i.p, align 8, !tbaa !293
  %i.ie = getelementptr inbounds [96 x i8], ptr %i.id, i64 %indvars.iv ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !299 ; 10 uses
  %i.ih = load ptr, ptr %i.ic, align 8, !tbaa !303 ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !305
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ik = load i8, ptr %i.ij, align 8, !tbaa !306
  %i.il = sext i8 %i.ik to i32
  %i.im = sub i32 %i.ii, %i.il                    ; 5 uses
  %i.in = icmp sgt i32 %i.im, 0                   ; 2 uses
  br i1 %i.gt, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.io = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !300 ; 2 uses
  br i1 %i.in, label %.lr.ph.preheader.i, label %_ZN8LightGBM16FeatureHistogram8SubtractILb1EiiiLi16ELi16ELi16EEEvRKS0_PKi.exit

.lr.ph.preheader.i:                               ; preds = %bb.ag
  %wide.trip.count.i = zext nneg i32 %i.im to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.im, 4
  br i1 %min.iters.check, label %.lr.ph.i74.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %index ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %wide.load = load <2 x i32>, ptr %i.iq, align 4, !tbaa !203 ; 2 uses
  %wide.load126.a = load <2 x i32>, ptr %i.ir, align 4, !tbaa !203 ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %index ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16 ; 2 uses
  %wide.load127 = load <2 x i64>, ptr %i.is, align 8, !tbaa !251
  %wide.load128 = load <2 x i64>, ptr %i.it, align 8, !tbaa !251
  %15 = lshr <2 x i32> %wide.load, splat (i32 16)
  %16 = lshr <2 x i32> %wide.load126.a, splat (i32 16)
  %17 = zext nneg <2 x i32> %15 to <2 x i64>
  %18 = zext nneg <2 x i32> %16 to <2 x i64>
  %19 = shl nuw <2 x i64> %17, splat (i64 48)
  %20 = shl nuw <2 x i64> %18, splat (i64 48)
  %21 = ashr exact <2 x i64> %19, splat (i64 16)
  %22 = ashr exact <2 x i64> %20, splat (i64 16)
  %i.iu = and <2 x i32> %wide.load, splat (i32 65535)
  %i.iv = and <2 x i32> %wide.load126.a, splat (i32 65535)
  %i.iw = zext nneg <2 x i32> %i.iu to <2 x i64>
  %i.ix = zext nneg <2 x i32> %i.iv to <2 x i64>
  %23 = or disjoint <2 x i64> %21, %i.iw
  %24 = or disjoint <2 x i64> %22, %i.ix
  %25 = sub <2 x i64> %wide.load127, %23
  %26 = sub <2 x i64> %wide.load128, %24
  store <2 x i64> %25, ptr %i.is, align 8, !tbaa !251
  store <2 x i64> %26, ptr %i.it, align 8, !tbaa !251
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.iy = icmp eq i64 %index.next, %n.vec
  br i1 %i.iy, label %middle.block, label %vector.body, !llvm.loop !474

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZN8LightGBM16FeatureHistogram8SubtractILb1EiiiLi16ELi16ELi16EEEvRKS0_PKi.exit, label %.lr.ph.i74.preheader

.lr.ph.i74.preheader:                             ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i75.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i74

.lr.ph.i74:                                       ; preds = %.lr.ph.i74.preheader, %.lr.ph.i74
  %indvars.iv.i75 = phi i64 [ %indvars.iv.next.i77, %.lr.ph.i74 ], [ %indvars.iv.i75.ph, %.lr.ph.i74.preheader ] ; 3 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv.i75
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !203 ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.i75 ; 2 uses
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !251
  %27 = lshr i32 %i.ja, 16
  %28 = zext nneg i32 %27 to i64
  %sext.i76 = shl nuw i64 %28, 48
  %29 = ashr exact i64 %sext.i76, 16
  %i.jd = and i32 %i.ja, 65535
  %i.je = zext nneg i32 %i.jd to i64
  %30 = or disjoint i64 %29, %i.je
  %31 = sub i64 %i.jc, %30
  store i64 %31, ptr %i.jb, align 8, !tbaa !251
  %indvars.iv.next.i77 = add nuw nsw i64 %indvars.iv.i75, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i77, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN8LightGBM16FeatureHistogram8SubtractILb1EiiiLi16ELi16ELi16EEEvRKS0_PKi.exit, label %.lr.ph.i74, !llvm.loop !475

bb.ah:                                            ; preds = %bb.af
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !299 ; 8 uses
  br i1 %i.in, label %.lr.ph.preheader.i78, label %_ZN8LightGBM16FeatureHistogram8SubtractILb1EiiiLi16ELi16ELi16EEEvRKS0_PKi.exit

.lr.ph.preheader.i78:                             ; preds = %bb.ah
  %wide.trip.count.i79 = zext nneg i32 %i.im to i64 ; 6 uses
  %min.iters.check131 = icmp ult i32 %i.im, 4
  br i1 %min.iters.check131, label %.lr.ph.i80.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i78
  %i.jh = shl nuw nsw i64 %wide.trip.count.i79, 3 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ig, i64 %i.jh
  %scevgep129 = getelementptr i8, ptr %i.jg, i64 %i.jh
  %bound0 = icmp ult ptr %i.ig, %scevgep129
  %bound1 = icmp ult ptr %i.jg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i80.preheader, label %vector.ph132

vector.ph132:                                     ; preds = %vector.memcheck
  %n.vec133 = and i64 %wide.trip.count.i79, 2147483644 ; 3 uses
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph132
  %index135 = phi i64 [ 0, %vector.ph132 ], [ %index.next140, %vector.body134 ] ; 3 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %index135 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16 ; 2 uses
  %wide.load136.a = load <2 x i64>, ptr %i.ji, align 8, !tbaa !251, !alias.scope !488, !noalias !489
  %wide.load137.a = load <2 x i64>, ptr %i.jj, align 8, !tbaa !251, !alias.scope !488, !noalias !489
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %index135 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %wide.load138 = load <2 x i64>, ptr %i.jk, align 8, !tbaa !251, !alias.scope !489
  %wide.load139 = load <2 x i64>, ptr %i.jl, align 8, !tbaa !251, !alias.scope !489
  %i.jm = sub nsw <2 x i64> %wide.load136.a, %wide.load138
  %i.jn = sub nsw <2 x i64> %wide.load137.a, %wide.load139
  store <2 x i64> %i.jm, ptr %i.ji, align 8, !tbaa !251, !alias.scope !488, !noalias !489
  store <2 x i64> %i.jn, ptr %i.jj, align 8, !tbaa !251, !alias.scope !488, !noalias !489
  %index.next140 = add nuw i64 %index135, 4       ; 2 uses
  %i.jo = icmp eq i64 %index.next140, %n.vec133
  br i1 %i.jo, label %middle.block141, label %vector.body134, !llvm.loop !479

middle.block141:                                  ; preds = %vector.body134
  %cmp.n142 = icmp eq i64 %n.vec133, %wide.trip.count.i79
  br i1 %cmp.n142, label %_ZN8LightGBM16FeatureHistogram8SubtractILb1EiiiLi16ELi16ELi16EEEvRKS0_PKi.exit, label %.lr.ph.i80.preheader

.lr.ph.i80.preheader:                             ; preds = %vector.memcheck, %.lr.ph.preheader.i78, %middle.block141
  %indvars.iv.i81.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i78 ], [ %n.vec133, %middle.block141 ] ; 3 uses
  %xtraiter168 = and i64 %wide.trip.count.i79, 3  ; 2 uses
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod169.not, label %.lr.ph.i80.prol.loopexit, label %.lr.ph.i80.prol

.lr.ph.i80.prol:                                  ; preds = %.lr.ph.i80.preheader, %.lr.ph.i80.prol
  %indvars.iv.i81.prol = phi i64 [ %indvars.iv.next.i82.prol, %.lr.ph.i80.prol ], [ %indvars.iv.i81.ph, %.lr.ph.i80.preheader ] ; 3 uses
  %prol.iter170 = phi i64 [ %prol.iter170.next, %.lr.ph.i80.prol ], [ 0, %.lr.ph.i80.preheader ]
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.i81.prol ; 2 uses
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !251
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %indvars.iv.i81.prol
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !251
  %i.jt = sub nsw i64 %i.jq, %i.js
  store i64 %i.jt, ptr %i.jp, align 8, !tbaa !251
  %indvars.iv.next.i82.prol = add nuw nsw i64 %indvars.iv.i81.prol, 1 ; 2 uses
  %prol.iter170.next = add i64 %prol.iter170, 1   ; 2 uses
  %prol.iter170.cmp.not = icmp eq i64 %prol.iter170.next, %xtraiter168
  br i1 %prol.iter170.cmp.not, label %.lr.ph.i80.prol.loopexit, label %.lr.ph.i80.prol, !llvm.loop !480

.lr.ph.i80.prol.loopexit:                         ; preds = %.lr.ph.i80.prol, %.lr.ph.i80.preheader
  %indvars.iv.i81.unr = phi i64 [ %indvars.iv.i81.ph, %.lr.ph.i80.preheader ], [ %indvars.iv.next.i82.prol, %.lr.ph.i80.prol ]
  %i.ju = sub nsw i64 %indvars.iv.i81.ph, %wide.trip.count.i79
  %i.jv = icmp ugt i64 %i.ju, -4
  br i1 %i.jv, label %_ZN8LightGBM16FeatureHistogram8SubtractILb1EiiiLi16ELi16ELi16EEEvRKS0_PKi.exit, label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %.lr.ph.i80.prol.loopexit, %.lr.ph.i80
  %indvars.iv.i81 = phi i64 [ %indvars.iv.next.i82.3, %.lr.ph.i80 ], [ %indvars.iv.i81.unr, %.lr.ph.i80.prol.loopexit ] ; 6 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.i81 ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !251
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %indvars.iv.i81
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !251
  %i.ka = sub nsw i64 %i.jx, %i.jz
  store i64 %i.ka, ptr %i.jw, align 8, !tbaa !251
  %indvars.iv.next.i82 = add nuw nsw i64 %indvars.iv.i81, 1 ; 2 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.next.i82 ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !251
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %indvars.iv.next.i82
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !251
  %i.kf = sub nsw i64 %i.kc, %i.ke
  store i64 %i.kf, ptr %i.kb, align 8, !tbaa !251
  %indvars.iv.next.i82.1 = add nuw nsw i64 %indvars.iv.i81, 2 ; 2 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.next.i82.1 ; 2 uses
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !251
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %indvars.iv.next.i82.1
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !251
  %i.kk = sub nsw i64 %i.kh, %i.kj
  store i64 %i.kk, ptr %i.kg, align 8, !tbaa !251
  %indvars.iv.next.i82.2 = add nuw nsw i64 %indvars.iv.i81, 3 ; 2 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.next.i82.2 ; 2 uses
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !251
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %indvars.iv.next.i82.2
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !251
  %i.kp = sub nsw i64 %i.km, %i.ko
  store i64 %i.kp, ptr %i.kl, align 8, !tbaa !251
  %indvars.iv.next.i82.3 = add nuw nsw i64 %indvars.iv.i81, 4 ; 2 uses
  %exitcond.not.i83.3 = icmp eq i64 %indvars.iv.next.i82.3, %wide.trip.count.i79
  br i1 %exitcond.not.i83.3, label %_ZN8LightGBM16FeatureHistogram8SubtractILb1EiiiLi16ELi16ELi16EEEvRKS0_PKi.exit, label %.lr.ph.i80, !llvm.loop !481

bb.ai:                                            ; preds = %bb.t
  %i.kq = load ptr, ptr %i.w, align 8, !tbaa !318 ; 5 uses
  %i.kr = getelementptr inbounds [96 x i8], ptr %i.kq, i64 %indvars.iv ; 2 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !303 ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !305
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.kv = load i8, ptr %i.ku, align 8, !tbaa !306
  %i.kw = sext i8 %i.kv to i32
  %i.kx = sub nsw i32 %i.kt, %i.kw                ; 2 uses
  %i.ky = icmp sgt i32 %i.kx, 0
  br i1 %i.ky, label %.lr.ph.i84, label %_ZN8LightGBM16FeatureHistogram8SubtractILb1EiiiLi16ELi16ELi16EEEvRKS0_PKi.exit

.lr.ph.i84:                                       ; preds = %bb.ai
  %i.kz = load ptr, ptr %i.p, align 8, !tbaa !293
  %i.la = getelementptr inbounds [96 x i8], ptr %i.kz, i64 %indvars.iv
  %i.lb = shl nuw i32 %i.kx, 1                    ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !299 ; 8 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !299 ; 8 uses
  %smax.i = call i32 @llvm.smax.i32(i32 %i.lb, i32 1)
  %wide.trip.count.i85 = zext nneg i32 %smax.i to i64 ; 6 uses
  %min.iters.check151 = icmp slt i32 %i.lb, 4
  br i1 %min.iters.check151, label %scalar.ph150.preheader, label %vector.memcheck144

vector.memcheck144:                               ; preds = %.lr.ph.i84
  %i.lg = shl nuw nsw i64 %wide.trip.count.i85, 3 ; 2 uses
  %scevgep145 = getelementptr i8, ptr %i.lf, i64 %i.lg
  %scevgep146 = getelementptr i8, ptr %i.ld, i64 %i.lg
  %bound0147 = icmp ult ptr %i.lf, %scevgep146
  %bound1148 = icmp ult ptr %i.ld, %scevgep145
  %found.conflict149 = and i1 %bound0147, %bound1148
  br i1 %found.conflict149, label %scalar.ph150.preheader, label %vector.ph152

vector.ph152:                                     ; preds = %vector.memcheck144
  %n.vec153 = and i64 %wide.trip.count.i85, 2147483644 ; 3 uses
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph152
  %index155 = phi i64 [ 0, %vector.ph152 ], [ %index.next160, %vector.body154 ] ; 3 uses
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %index155 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %wide.load156.a = load <2 x double>, ptr %i.lh, align 8, !tbaa !261, !alias.scope !490
  %wide.load157.a = load <2 x double>, ptr %i.li, align 8, !tbaa !261, !alias.scope !490
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %index155 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16 ; 2 uses
  %wide.load158 = load <2 x double>, ptr %i.lj, align 8, !tbaa !261, !alias.scope !491, !noalias !490
  %wide.load159 = load <2 x double>, ptr %i.lk, align 8, !tbaa !261, !alias.scope !491, !noalias !490
  %i.ll = fsub <2 x double> %wide.load158, %wide.load156.a
  %i.lm = fsub <2 x double> %wide.load159, %wide.load157.a
  store <2 x double> %i.ll, ptr %i.lj, align 8, !tbaa !261, !alias.scope !491, !noalias !490
  store <2 x double> %i.lm, ptr %i.lk, align 8, !tbaa !261, !alias.scope !491, !noalias !490
  %index.next160 = add nuw i64 %index155, 4       ; 2 uses
  %i.ln = icmp eq i64 %index.next160, %n.vec153
  br i1 %i.ln, label %middle.block161, label %vector.body154, !llvm.loop !485

middle.block161:                                  ; preds = %vector.body154
  %cmp.n162 = icmp eq i64 %n.vec153, %wide.trip.count.i85
  br i1 %cmp.n162, label %_ZN8LightGBM16FeatureHistogram8SubtractILb1EiiiLi16ELi16ELi16EEEvRKS0_PKi.exit, label %scalar.ph150.preheader

scalar.ph150.preheader:                           ; preds = %vector.memcheck144, %.lr.ph.i84, %middle.block161
  %indvars.iv.i86.ph = phi i64 [ 0, %vector.memcheck144 ], [ 0, %.lr.ph.i84 ], [ %n.vec153, %middle.block161 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i85, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph150.prol.loopexit, label %scalar.ph150.prol

scalar.ph150.prol:                                ; preds = %scalar.ph150.preheader, %scalar.ph150.prol
  %indvars.iv.i86.prol = phi i64 [ %indvars.iv.next.i87.prol, %scalar.ph150.prol ], [ %indvars.iv.i86.ph, %scalar.ph150.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph150.prol ], [ 0, %scalar.ph150.preheader ]
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %indvars.iv.i86.prol
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !261
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %indvars.iv.i86.prol ; 2 uses
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !261
  %i.ls = fsub double %i.lr, %i.lp
  store double %i.ls, ptr %i.lq, align 8, !tbaa !261
  %indvars.iv.next.i87.prol = add nuw nsw i64 %indvars.iv.i86.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph150.prol.loopexit, label %scalar.ph150.prol, !llvm.loop !486

scalar.ph150.prol.loopexit:                       ; preds = %scalar.ph150.prol, %scalar.ph150.preheader
  %indvars.iv.i86.unr = phi i64 [ %indvars.iv.i86.ph, %scalar.ph150.preheader ], [ %indvars.iv.next.i87.prol, %scalar.ph150.prol ]
  %i.lt = sub nsw i64 %indvars.iv.i86.ph, %wide.trip.count.i85
  %i.lu = icmp ugt i64 %i.lt, -4
  br i1 %i.lu, label %_ZN8LightGBM16FeatureHistogram8SubtractILb1EiiiLi16ELi16ELi16EEEvRKS0_PKi.exit, label %scalar.ph150

scalar.ph150:                                     ; preds = %scalar.ph150.prol.loopexit, %scalar.ph150
  %indvars.iv.i86 = phi i64 [ %indvars.iv.next.i87.3, %scalar.ph150 ], [ %indvars.iv.i86.unr, %scalar.ph150.prol.loopexit ] ; 6 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %indvars.iv.i86
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !261
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %indvars.iv.i86 ; 2 uses
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !261
end_hunk_3
