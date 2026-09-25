Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ggml-quants?download=true
inline.NumInlined: 269
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 329
begin_hunk_0_@dequantize_row_q8_K:bb.a
._crit_edge:                                      ; preds = %middle.block, %bb.a
  ret void

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %.lcssa = phi ptr [ %i.av, %scalar.ph ], [ %i.h, %vector.body ]
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1 ; 2 uses
  %exitcond22.not = icmp eq i64 %indvars.iv.next20, %i.a
  br i1 %exitcond22.not, label %._crit_edge, label %.preheader, !llvm.loop !598

scalar.ph:                                        ; preds = %.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ 0, %.preheader ] ; 5 uses
  %.114 = phi ptr [ %i.av, %scalar.ph ], [ %.01216, %.preheader ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !34
  %i.ab = sitofp i8 %i.aa to float
  %i.ac = fmul float %i.f, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %.114, i64 4
  store float %i.ac, ptr %.114, align 4, !tbaa !36
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !34
  %i.ah = sitofp i8 %i.ag to float
  %i.ai = fmul float %i.f, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.114, i64 8
  store float %i.ai, ptr %i.ad, align 4, !tbaa !36
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !34
  %i.an = sitofp i8 %i.am to float
  %i.ao = fmul float %i.f, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.114, i64 12
  store float %i.ao, ptr %i.aj, align 4, !tbaa !36
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !34
  %i.at = sitofp i8 %i.as to float
  %i.au = fmul float %i.f, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %.114, i64 16 ; 2 uses
  store float %i.au, ptr %i.ap, align 4, !tbaa !36
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 256
  br i1 %exitcond.not.3, label %middle.block, label %scalar.ph, !llvm.loop !599
}

; Function Attrs: nounwind uwtable
define void @iq2xs_init_impl(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  switch i32 %0, label %bb.b [
    i32 16, label %iq2_data_index.exit.thread
    i32 17, label %iq2_data_index.exit.thread61
    i32 19, label %iq2_data_index.exit
    i32 22, label %iq2_data_index.exit
    i32 29, label %iq2_data_index.exit
  ]

iq2_data_index.exit.thread:                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  br label %iq2_grid_size.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 2834, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #24
  unreachable

iq2_data_index.exit.thread61:                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  br label %iq2_grid_size.exit

iq2_data_index.exit:                              ; preds = %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  switch i32 %0, label %bb.c [
    i32 29, label %bb.d
    i32 22, label %bb.d
    i32 19, label %bb.d
  ]

bb.c:                                             ; preds = %iq2_data_index.exit
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 2841, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #24
  unreachable

bb.d:                                             ; preds = %iq2_data_index.exit, %iq2_data_index.exit, %iq2_data_index.exit
  %i.k = icmp eq i32 %0, 19
  %i.l = icmp eq i32 %0, 29
  %i.m = or i1 %i.k, %i.l                         ; 2 uses
  %i.n = select i1 %i.m, i32 2048, i32 1024
  %i.o = select i1 %i.m, i64 2, i64 3
  br label %iq2_grid_size.exit

iq2_grid_size.exit:                               ; preds = %iq2_data_index.exit.thread61, %iq2_data_index.exit.thread, %bb.d
  %i.p = phi i64 [ 1, %iq2_data_index.exit.thread61 ], [ %i.o, %bb.d ], [ 0, %iq2_data_index.exit.thread ]
  %i.q = phi i32 [ 512, %iq2_data_index.exit.thread61 ], [ %i.n, %bb.d ], [ 256, %iq2_data_index.exit.thread ] ; 3 uses
  store i32 %i.q, ptr %i.a, align 4, !tbaa !47
  %i.r = getelementptr inbounds nuw [24 x i8], ptr @iq2_data, i64 %i.p ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !74
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.e, label %bb.t

bb.e:                                             ; preds = %iq2_grid_size.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 43692, ptr %i.b, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.t = icmp eq i32 %0, 19
  %i.u = icmp eq i32 %0, 29
  %or.cond = or i1 %i.t, %i.u                     ; 2 uses
  %i.v = icmp eq i32 %0, 22
  %i.w = select i1 %i.v, i32 1, i32 2
  %i.x = select i1 %or.cond, i32 3, i32 %i.w
  store i32 %i.x, ptr %i.c, align 4, !tbaa !47
  switch i32 %0, label %bb.f [
    i32 16, label %bb.g
    i32 17, label %.fold.split
  ]

bb.f:                                             ; preds = %bb.e
  %i.y = select i1 %or.cond, ptr @iq2xs_init_impl.kgrid_1bit_2048, ptr @iq2xs_init_impl.kgrid_2bit_1024
  br label %bb.g

.fold.split:                                      ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %.fold.split, %bb.f
  %i.z = phi ptr [ @iq2xs_init_impl.kgrid_2bit_256, %bb.e ], [ %i.y, %bb.f ], [ @iq2xs_init_impl.kgrid_2bit_512, %.fold.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.aa = shl nuw nsw i32 %i.q, 3
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = tail call noalias ptr @malloc(i64 noundef %i.ab) #25 ; 4 uses
  %wide.trip.count = zext nneg i32 %i.q to i64    ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.h
  %indvars.iv = phi i64 [ 0, %bb.g ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv ; 2 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !58 ; 7 uses
  %i.ag = trunc i16 %i.af to i8
  %i.ah = trunc i16 %i.af to i8
  %i.ai = lshr i8 %i.ag, 5
  %i.aj = lshr i8 %i.ah, 3
  %i.ak = trunc i16 %i.af to i8
  %i.al = insertelement <2 x i8> poison, i8 %i.ak, i64 0
  %i.am = shufflevector <2 x i8> %i.al, <2 x i8> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.an = shl <2 x i8> %i.am, splat (i8 1)
  %i.ao = lshr <2 x i8> %i.am, splat (i8 1)
  %i.ap = shufflevector <2 x i8> %i.an, <2 x i8> %i.ao, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.aq = insertelement <4 x i8> %i.ap, i8 %i.aj, i64 2
  %i.ar = insertelement <4 x i8> %i.aq, i8 %i.ai, i64 3
  %i.as = and <4 x i8> %i.ar, <i8 6, i8 6, i8 6, i8 -1>
  %i.at = or <4 x i8> %i.as, splat (i8 1)
  store <4 x i8> %i.at, ptr %i.ad, align 1, !tbaa !34
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %sh.diff91 = lshr i16 %i.af, 13
  %sh.diff89 = lshr i16 %i.af, 11
  %sh.diff87 = lshr i16 %i.af, 9
  %sh.diff = lshr i16 %i.af, 7
  %tr.sh.diff92 = trunc nuw nsw i16 %sh.diff91 to i8
  %tr.sh.diff90 = trunc nuw nsw i16 %sh.diff89 to i8
  %tr.sh.diff88 = trunc nuw nsw i16 %sh.diff87 to i8
  %tr.sh.diff = trunc i16 %sh.diff to i8
  %i.av = insertelement <4 x i8> poison, i8 %tr.sh.diff, i64 0
  %i.aw = insertelement <4 x i8> %i.av, i8 %tr.sh.diff88, i64 1
  %i.ax = insertelement <4 x i8> %i.aw, i8 %tr.sh.diff90, i64 2
  %i.ay = insertelement <4 x i8> %i.ax, i8 %tr.sh.diff92, i64 3
  %i.az = and <4 x i8> %i.ay, <i8 6, i8 6, i8 6, i8 -1>
  %i.ba = or <4 x i8> %i.az, splat (i8 1)
  store <4 x i8> %i.ba, ptr %i.au, align 1, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph.preheader, label %bb.h, !llvm.loop !602

.lr.ph.preheader:                                 ; preds = %bb.h
  store ptr %i.ac, ptr %i.d, align 8, !tbaa !75
  store ptr %i.ac, ptr %i.r, align 8, !tbaa !74
  %i.bb = tail call noalias dereferenceable_or_null(174768) ptr @malloc(i64 noundef 174768) #25 ; 4 uses
  store ptr %i.bb, ptr %i.e, align 8, !tbaa !76
  %i.bc = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !77
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(174768) %i.bb, i8 -1, i64 174768, i1 false), !tbaa !47
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  %i.bd = tail call noalias dereferenceable_or_null(174768) ptr @malloc(i64 noundef 174768) #25 ; 2 uses
  store ptr %i.bd, ptr %i.g, align 8, !tbaa !76
  %.not58 = icmp eq ptr %i.bd, null
  br i1 %.not58, label %bb.i, label %bb.j

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv78 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next79, %.lr.ph ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv78
  %1 = load <8 x i8>, ptr %i.be, align 8, !tbaa !606
  %2 = zext <8 x i8> %1 to <8 x i16>
  %i.bf = add nsw <8 x i16> %2, splat (i16 -1)
  %i.bg = sdiv <8 x i16> %i.bf, splat (i16 2)
  %i.bh = shl <8 x i16> %i.bg, <i16 0, i16 2, i16 4, i16 6, i16 8, i16 10, i16 12, i16 14>
  %i.bi = tail call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %i.bh)
  %i.bj = zext i16 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bj
  %i.bl = trunc nuw nsw i64 %indvars.iv78 to i32
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !47
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count
  br i1 %exitcond82.not, label %._crit_edge, label %.lr.ph, !llvm.loop !603

bb.i:                                             ; preds = %._crit_edge
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3151, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #24
  unreachable

bb.j:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  store i32 0, ptr %i.h, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  store i32 0, ptr %i.i, align 4, !tbaa !47
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 8, ptr nonnull @iq2xs_init_impl.omp_outlined, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.e, ptr nonnull %i.g, ptr nonnull %i.i, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %i.h)
  %i.bm = load i32, ptr %i.h, align 4, !tbaa !47
  %i.bn = load i32, ptr %i.i, align 4, !tbaa !47
  %i.bo = add nsw i32 %i.bn, %i.bm
  %i.bp = sext i32 %i.bo to i64
  %i.bq = shl nsw i64 %i.bp, 1
  %i.br = call noalias ptr @malloc(i64 noundef %i.bq) #25 ; 2 uses
  store ptr %i.br, ptr %i.f, align 8, !tbaa !78
  %i.bs = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  %i.bt = call noalias dereferenceable_or_null(174768) ptr @malloc(i64 noundef 174768) #25 ; 4 uses
  store ptr %i.bt, ptr %i.j, align 8, !tbaa !76
  %.not59 = icmp eq ptr %i.bt, null
  br i1 %.not59, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.j
  %i.bu = load ptr, ptr %i.e, align 8, !tbaa !76  ; 2 uses
  %i.bv = load ptr, ptr %i.g, align 8             ; 2 uses
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3202, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #24
  unreachable

bb.l:                                             ; preds = %bb.s
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 7, ptr nonnull @iq2xs_init_impl.omp_outlined.6, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %i.j, ptr nonnull %i.f, ptr nonnull %i.c)
  %i.bw = load ptr, ptr %i.j, align 8, !tbaa !76
  call void @free(ptr noundef %i.bw) #14
  %i.bx = load ptr, ptr %i.g, align 8, !tbaa !76
  call void @free(ptr noundef %i.bx) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.t

bb.m:                                             ; preds = %bb.s, %.preheader
  %indvars.iv83 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next84.1, %bb.s ] ; 5 uses
  %.05068 = phi i32 [ 0, %.preheader ], [ %.1.1, %bb.s ] ; 3 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv83
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !47
  %i.ca = icmp sgt i32 %i.bz, -1
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv83 ; 2 uses
  br i1 %i.ca, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 -1, ptr %i.cb, align 4, !tbaa !47
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  store i32 %.05068, ptr %i.cb, align 4, !tbaa !47
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv83
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !47
  %i.ce = add i32 %.05068, 1
  %i.cf = add i32 %i.ce, %i.cd
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1 = phi i32 [ %.05068, %bb.n ], [ %i.cf, %bb.o ] ; 3 uses
  %indvars.iv.next84 = or disjoint i64 %indvars.iv83, 1 ; 3 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next84
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !47
  %i.ci = icmp sgt i32 %i.ch, -1
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.next84 ; 2 uses
  br i1 %i.ci, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %.1, ptr %i.cj, align 4, !tbaa !47
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next84
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !47
  %i.cm = add i32 %.1, 1
  %i.cn = add i32 %i.cm, %i.cl
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  store i32 -1, ptr %i.cj, align 4, !tbaa !47
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1.1 = phi i32 [ %.1, %bb.r ], [ %i.cn, %bb.q ]
  %indvars.iv.next84.1 = add nuw nsw i64 %indvars.iv83, 2 ; 2 uses
  %exitcond86.not.1 = icmp eq i64 %indvars.iv.next84.1, 43692
  br i1 %exitcond86.not.1, label %bb.l, label %bb.m, !llvm.loop !604

bb.t:                                             ; preds = %iq2_grid_size.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @iq2xs_init_impl.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree nonnull readnone align 4 captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %9) #13 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca [2 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 0, ptr %i.b, align 4, !tbaa !47
  %i.h = load i32, ptr %2, align 4, !tbaa !47
  %i.i = shl nsw i32 %i.h, 1
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 2
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #25 ; 6 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3158, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 0, ptr %i.c, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 43691, ptr %i.d, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  store i32 1, ptr %i.e, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  store i32 0, ptr %i.f, align 4, !tbaa !47
  %i.m = load i32, ptr %0, align 4, !tbaa !47     ; 7 uses
  tail call void @__kmpc_dispatch_init_4(ptr nonnull @1, i32 %i.m, i32 1073741859, i32 0, i32 43691, i32 1, i32 64)
  %i.n = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %i.m, ptr nonnull %i.f, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull %i.e)
  %.not6989 = icmp eq i32 %i.n, 0
  br i1 %.not6989, label %._crit_edge92, label %.lr.ph91

.loopexit:                                        ; preds = %bb.i, %.lr.ph91
  %i.o = phi i32 [ %i.r, %.lr.ph91 ], [ %i.dq, %bb.i ]
  %i.p = phi i32 [ %i.s, %.lr.ph91 ], [ %i.dr, %bb.i ]
  %i.q = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %i.m, ptr nonnull %i.f, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull %i.e)
  %.not69 = icmp eq i32 %i.q, 0
  br i1 %.not69, label %._crit_edge92, label %.lr.ph91

.lr.ph91:                                         ; preds = %bb.c, %.loopexit
  %i.r = phi i32 [ %i.o, %.loopexit ], [ 0, %bb.c ] ; 2 uses
  %i.s = phi i32 [ %i.p, %.loopexit ], [ 0, %bb.c ] ; 2 uses
  %i.t = load i32, ptr %i.c, align 4, !tbaa !47   ; 2 uses
  %i.u = load i32, ptr %i.d, align 4, !tbaa !47, !llvm.access.group !607
  %.not7085 = icmp sgt i32 %i.t, %i.u
  br i1 %.not7085, label %.loopexit, label %.lr.ph88.preheader

.lr.ph88.preheader:                               ; preds = %.lr.ph91
  %i.v = sext i32 %i.t to i64
  br label %.lr.ph88

.lr.ph88:                                         ; preds = %.lr.ph88.preheader, %bb.i
  %i.w = phi i32 [ %i.r, %.lr.ph88.preheader ], [ %i.dq, %bb.i ] ; 2 uses
  %i.x = phi i32 [ %i.s, %.lr.ph88.preheader ], [ %i.dr, %bb.i ] ; 2 uses
  %indvars.iv103 = phi i64 [ %i.v, %.lr.ph88.preheader ], [ %indvars.iv.next104, %bb.i ] ; 13 uses
  %i.y = load ptr, ptr %4, align 8, !tbaa !76, !llvm.access.group !607
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %indvars.iv103
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !47, !llvm.access.group !607
  %i.ab = icmp sgt i32 %i.aa, -1
  br i1 %i.ab, label %bb.d, label %.preheader

bb.d:                                             ; preds = %.lr.ph88
  %i.ac = load ptr, ptr %5, align 8, !tbaa !76, !llvm.access.group !607
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %indvars.iv103
  store i32 0, ptr %i.ad, align 4, !tbaa !47, !llvm.access.group !607
  br label %bb.i

.preheader:                                       ; preds = %.lr.ph88
  %i.ae = add nsw i32 %i.x, 1                     ; 2 uses
  store i32 %i.ae, ptr %i.b, align 4, !tbaa !47, !llvm.access.group !607
  %.tr = trunc i64 %indvars.iv103 to i32
  %i.af = shl i32 %.tr, 1
  %i.ag = and i32 %i.af, 6
end_hunk_0
begin_hunk_1_@quantize_iq2_xs:bb.a
.lr.ph.split.split.split.us.split.split.us:       ; preds = %.lr.ph.split.split.split.us.split
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  br label %.split63.us

._crit_edge:                                      ; preds = %quantize_row_iq2_xs_impl.exit.loopexit.us, %.lr.ph.split.split.split.us.split, %bb.c
  %i.ahd = mul i64 %2, 74
  %i.ahe = mul i64 %i.ahd, %i.i
  ret i64 %i.ahe

.split.us59.loopexit80:                           ; preds = %.lr.ph.split.split
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  br label %.split.us59

.split.us59:                                      ; preds = %.lr.ph.split.split.us, %.split.us59.loopexit80
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3481, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.13) #24, !noalias !652
  unreachable

.split61.us:                                      ; preds = %bb.d, %.lr.ph.split.split.split.us.split.us
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3482, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12) #24, !noalias !652
  unreachable

.split63.us:                                      ; preds = %bb.e, %.lr.ph.split.split.split.us.split.split.us
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3483, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14) #24, !noalias !652
  unreachable

.split65.us:                                      ; preds = %.loopexit357.i.us, %.preheader352.1.i.us
  %.0290401.lcssa.wide.i.sroa.phi.us = phi ptr [ %i.c, %.loopexit357.i.us ], [ %.0290401.lcssa.wide.i.sroa.gep30, %.preheader352.1.i.us ] ; 8 uses
  %.lcssa413.lcssa.i.us = phi i16 [ %i.adw, %.loopexit357.i.us ], [ %i.aem, %.preheader352.1.i.us ]
  %i.ahf = zext i16 %.lcssa413.lcssa.i.us to i32
  %i.ahg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.ahf), !noalias !652 ; 0 uses
  %i.ahh = load i8, ptr %.0290401.lcssa.wide.i.sroa.phi.us, align 1, !tbaa !34, !noalias !652
  %i.ahi = sext i8 %i.ahh to i32
  %i.ahj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.ahi), !noalias !652 ; 0 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %.0290401.lcssa.wide.i.sroa.phi.us, i64 1
  %i.ahl = load i8, ptr %i.ahk, align 1, !tbaa !34, !noalias !652
  %i.ahm = sext i8 %i.ahl to i32
  %i.ahn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.ahm), !noalias !652 ; 0 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %.0290401.lcssa.wide.i.sroa.phi.us, i64 2
  %i.ahp = load i8, ptr %i.aho, align 1, !tbaa !34, !noalias !652
  %i.ahq = sext i8 %i.ahp to i32
  %i.ahr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.ahq), !noalias !652 ; 0 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %.0290401.lcssa.wide.i.sroa.phi.us, i64 3
  %i.aht = load i8, ptr %i.ahs, align 1, !tbaa !34, !noalias !652
  %i.ahu = sext i8 %i.aht to i32
  %i.ahv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.ahu), !noalias !652 ; 0 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %.0290401.lcssa.wide.i.sroa.phi.us, i64 4
  %i.ahx = load i8, ptr %i.ahw, align 1, !tbaa !34, !noalias !652
  %i.ahy = sext i8 %i.ahx to i32
  %i.ahz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.ahy), !noalias !652 ; 0 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %.0290401.lcssa.wide.i.sroa.phi.us, i64 5
  %i.aib = load i8, ptr %i.aia, align 1, !tbaa !34, !noalias !652
  %i.aic = sext i8 %i.aib to i32
  %i.aid = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.aic), !noalias !652 ; 0 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %.0290401.lcssa.wide.i.sroa.phi.us, i64 6
  %i.aif = load i8, ptr %i.aie, align 1, !tbaa !34, !noalias !652
  %i.aig = sext i8 %i.aif to i32
  %i.aih = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.aig), !noalias !652 ; 0 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %.0290401.lcssa.wide.i.sroa.phi.us, i64 7
  %i.aij = load i8, ptr %i.aii, align 1, !tbaa !34, !noalias !652
  %i.aik = sext i8 %i.aij to i32
  %i.ail = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.aik), !noalias !652 ; 0 uses
  %putchar.i = tail call i32 @putchar(i32 10), !noalias !652 ; 0 uses
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3624, ptr noundef nonnull @.str.19) #24, !noalias !652
  unreachable

.split68.us:                                      ; preds = %bb.s
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3628, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20) #24, !noalias !652
  unreachable
}

; Function Attrs: nounwind uwtable
define void @iq3xs_init_impl(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !47
  switch i32 %0, label %bb.b [
    i32 512, label %iq3_data_index.exit
    i32 256, label %iq3_data_index.exit
  ]

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3693, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #24
  unreachable

iq3_data_index.exit:                              ; preds = %bb.a, %bb.a
  %i.k = icmp ne i32 %0, 256
  %i.l = zext i1 %i.k to i64
  %i.m = getelementptr inbounds nuw [24 x i8], ptr @iq3_data, i64 %i.l ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !83
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %.lr.ph.preheader, label %bb.n

.lr.ph.preheader:                                 ; preds = %iq3_data_index.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 4096, ptr %i.b, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.o = icmp eq i32 %0, 256                      ; 2 uses
  %i.p = select i1 %i.o, i32 2, i32 3
  store i32 %i.p, ptr %i.c, align 4, !tbaa !47
  %i.q = select i1 %i.o, ptr @iq3xs_init_impl.kgrid_256, ptr @iq3xs_init_impl.kgrid_512 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.r = zext nneg i32 %0 to i64                  ; 5 uses
  %i.s = shl nuw nsw i64 %i.r, 2
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #25 ; 5 uses
  %min.iters.check = icmp ult i32 %0, 8
  br i1 %min.iters.check, label %.lr.ph.preheader82, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.r, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %index
  %wide.load = load <8 x i16>, ptr %i.v, align 16, !tbaa !58 ; 2 uses
  %i.w = trunc <8 x i16> %wide.load to <8 x i8>   ; 2 uses
  %i.x = shl <8 x i8> %i.w, splat (i8 1)
  %i.y = lshr <8 x i8> %i.w, splat (i8 2)
  %i.z = shufflevector <8 x i8> %i.x, <8 x i8> %i.y, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aa = and <16 x i8> %i.z, splat (i8 14)
  %i.ab = or disjoint <16 x i8> %i.aa, splat (i8 1)
  %i.ac = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ad = lshr <16 x i16> %i.ac, <i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 5, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>
  %i.ae = trunc <16 x i16> %i.ad to <16 x i8>
  %i.af = and <16 x i8> %i.ae, splat (i8 14)
  %i.ag = or disjoint <16 x i8> %i.af, splat (i8 1)
  %interleaved.vec = shufflevector <16 x i8> %i.ab, <16 x i8> %i.ag, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i8> %interleaved.vec, ptr %i.u, align 1, !tbaa !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !656

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.r
  br i1 %cmp.n, label %.lr.ph56.preheader, label %.lr.ph.preheader82

.lr.ph.preheader82:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader82, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader82 ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !58 ; 4 uses
  %.tr = trunc i16 %i.ak to i8
  %i.al = shl i8 %.tr, 1
  %i.am = trunc i16 %i.ak to i8
  %i.an = lshr i8 %i.am, 2
  %sh.diff = lshr i16 %i.ak, 5
  %tr.sh.diff = trunc i16 %sh.diff to i8
  %sh.diff77 = lshr i16 %i.ak, 8
  %tr.sh.diff78 = trunc nuw i16 %sh.diff77 to i8
  %i.ao = insertelement <4 x i8> poison, i8 %i.al, i64 0
  %i.ap = insertelement <4 x i8> %i.ao, i8 %i.an, i64 1
  %i.aq = insertelement <4 x i8> %i.ap, i8 %tr.sh.diff, i64 2
  %i.ar = insertelement <4 x i8> %i.aq, i8 %tr.sh.diff78, i64 3
  %i.as = and <4 x i8> %i.ar, splat (i8 14)
  %i.at = or disjoint <4 x i8> %i.as, splat (i8 1)
  store <4 x i8> %i.at, ptr %i.ai, align 1, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.r
  br i1 %exitcond.not, label %.lr.ph56.preheader, label %.lr.ph, !llvm.loop !657

.lr.ph56.preheader:                               ; preds = %.lr.ph, %middle.block
  store ptr %i.t, ptr %i.d, align 8, !tbaa !76
  store ptr %i.t, ptr %i.m, align 8, !tbaa !83
  %i.au = tail call noalias dereferenceable_or_null(16384) ptr @malloc(i64 noundef 16384) #25 ; 4 uses
  store ptr %i.au, ptr %i.e, align 8, !tbaa !76
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16384) %i.au, i8 -1, i64 16384, i1 false), !tbaa !47
  br label %.lr.ph56

._crit_edge57:                                    ; preds = %.lr.ph56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  %i.aw = tail call noalias dereferenceable_or_null(16384) ptr @malloc(i64 noundef 16384) #25 ; 2 uses
  store ptr %i.aw, ptr %i.g, align 8, !tbaa !76
  %.not47 = icmp eq ptr %i.aw, null
  br i1 %.not47, label %bb.c, label %bb.d

.lr.ph56:                                         ; preds = %.lr.ph56.preheader, %.lr.ph56
  %indvars.iv68 = phi i64 [ 0, %.lr.ph56.preheader ], [ %indvars.iv.next69, %.lr.ph56 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv68
  %1 = load <4 x i8>, ptr %i.ax, align 4, !tbaa !47
  %2 = zext <4 x i8> %1 to <4 x i16>
  %i.ay = add nsw <4 x i16> %2, splat (i16 -1)
  %i.az = sdiv <4 x i16> %i.ay, splat (i16 2)
  %i.ba = shl nuw <4 x i16> %i.az, <i16 0, i16 3, i16 6, i16 9>
  %i.bb = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.ba)
  %i.bc = zext i16 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bc
  %i.be = trunc nuw nsw i64 %indvars.iv68 to i32
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !47
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %exitcond72.not = icmp eq i64 %indvars.iv.next69, %i.r
  br i1 %exitcond72.not, label %._crit_edge57, label %.lr.ph56, !llvm.loop !658

bb.c:                                             ; preds = %._crit_edge57
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3795, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #24
  unreachable

bb.d:                                             ; preds = %._crit_edge57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  store i32 0, ptr %i.h, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  store i32 0, ptr %i.i, align 4, !tbaa !47
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 8, ptr nonnull @iq3xs_init_impl.omp_outlined, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.e, ptr nonnull %i.g, ptr nonnull %i.i, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %i.h)
  %i.bf = load i32, ptr %i.h, align 4, !tbaa !47
  %i.bg = load i32, ptr %i.i, align 4, !tbaa !47
  %i.bh = add nsw i32 %i.bg, %i.bf
  %i.bi = sext i32 %i.bh to i64
  %i.bj = shl nsw i64 %i.bi, 1
  %i.bk = call noalias ptr @malloc(i64 noundef %i.bj) #25 ; 2 uses
  store ptr %i.bk, ptr %i.f, align 8, !tbaa !78
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  %i.bm = call noalias dereferenceable_or_null(16384) ptr @malloc(i64 noundef 16384) #25 ; 4 uses
  store ptr %i.bm, ptr %i.j, align 8, !tbaa !76
  %.not48 = icmp eq ptr %i.bm, null
  br i1 %.not48, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.bn = load ptr, ptr %i.e, align 8, !tbaa !76  ; 2 uses
  %i.bo = load ptr, ptr %i.g, align 8             ; 2 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3846, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #24
  unreachable

bb.f:                                             ; preds = %bb.m
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 7, ptr nonnull @iq3xs_init_impl.omp_outlined.23, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %i.j, ptr nonnull %i.f, ptr nonnull %i.c)
  %i.bp = load ptr, ptr %i.j, align 8, !tbaa !76
  call void @free(ptr noundef %i.bp) #14
  %i.bq = load ptr, ptr %i.g, align 8, !tbaa !76
  call void @free(ptr noundef %i.bq) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.n

bb.g:                                             ; preds = %bb.m, %.preheader
  %indvars.iv73 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next74.1, %bb.m ] ; 5 uses
  %.04058 = phi i32 [ 0, %.preheader ], [ %.1.1, %bb.m ] ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv73
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !47
  %i.bt = icmp sgt i32 %i.bs, -1
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv73 ; 2 uses
  br i1 %i.bt, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 -1, ptr %i.bu, align 4, !tbaa !47
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i32 %.04058, ptr %i.bu, align 4, !tbaa !47
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv73
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !47
  %i.bx = add i32 %.04058, 1
  %i.by = add i32 %i.bx, %i.bw
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1 = phi i32 [ %.04058, %bb.h ], [ %i.by, %bb.i ] ; 3 uses
  %indvars.iv.next74 = or disjoint i64 %indvars.iv73, 1 ; 3 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.next74
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !47
  %i.cb = icmp sgt i32 %i.ca, -1
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.next74 ; 2 uses
  br i1 %i.cb, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %.1, ptr %i.cc, align 4, !tbaa !47
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next74
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !47
  %i.cf = add i32 %.1, 1
  %i.cg = add i32 %i.cf, %i.ce
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store i32 -1, ptr %i.cc, align 4, !tbaa !47
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.1 = phi i32 [ %.1, %bb.l ], [ %i.cg, %bb.k ]
  %indvars.iv.next74.1 = add nuw nsw i64 %indvars.iv73, 2 ; 2 uses
  %exitcond76.not.1 = icmp eq i64 %indvars.iv.next74.1, 4096
  br i1 %exitcond76.not.1, label %bb.f, label %bb.g, !llvm.loop !659

bb.n:                                             ; preds = %iq3_data_index.exit, %bb.f
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @iq3xs_init_impl.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree nonnull readnone align 4 captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %9) #13 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca [2 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 0, ptr %i.b, align 4, !tbaa !47
  %i.h = load i32, ptr %2, align 4, !tbaa !47
  %i.i = shl nsw i32 %i.h, 1
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 2
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #25 ; 6 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3802, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 0, ptr %i.c, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 4095, ptr %i.d, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  store i32 1, ptr %i.e, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  store i32 0, ptr %i.f, align 4, !tbaa !47
  %i.m = load i32, ptr %0, align 4, !tbaa !47     ; 7 uses
  tail call void @__kmpc_dispatch_init_4(ptr nonnull @1, i32 %i.m, i32 1073741859, i32 0, i32 4095, i32 1, i32 64)
  %i.n = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %i.m, ptr nonnull %i.f, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull %i.e)
  %.not6989 = icmp eq i32 %i.n, 0
  br i1 %.not6989, label %._crit_edge92, label %.lr.ph91

.loopexit:                                        ; preds = %bb.i, %.lr.ph91
  %i.o = phi i32 [ %i.r, %.lr.ph91 ], [ %i.cg, %bb.i ]
  %i.p = phi i32 [ %i.s, %.lr.ph91 ], [ %i.ch, %bb.i ]
  %i.q = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %i.m, ptr nonnull %i.f, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull %i.e)
  %.not69 = icmp eq i32 %i.q, 0
  br i1 %.not69, label %._crit_edge92, label %.lr.ph91

.lr.ph91:                                         ; preds = %bb.c, %.loopexit
  %i.r = phi i32 [ %i.o, %.loopexit ], [ 0, %bb.c ] ; 2 uses
  %i.s = phi i32 [ %i.p, %.loopexit ], [ 0, %bb.c ] ; 2 uses
  %i.t = load i32, ptr %i.c, align 4, !tbaa !47   ; 2 uses
  %i.u = load i32, ptr %i.d, align 4, !tbaa !47, !llvm.access.group !660
  %.not7085 = icmp sgt i32 %i.t, %i.u
  br i1 %.not7085, label %.loopexit, label %.lr.ph88.preheader

.lr.ph88.preheader:                               ; preds = %.lr.ph91
  %i.v = sext i32 %i.t to i64
  br label %.lr.ph88

.lr.ph88:                                         ; preds = %.lr.ph88.preheader, %bb.i
  %i.w = phi i32 [ %i.r, %.lr.ph88.preheader ], [ %i.cg, %bb.i ] ; 2 uses
  %i.x = phi i32 [ %i.s, %.lr.ph88.preheader ], [ %i.ch, %bb.i ] ; 2 uses
  %indvars.iv103 = phi i64 [ %i.v, %.lr.ph88.preheader ], [ %indvars.iv.next104, %bb.i ] ; 9 uses
  %i.y = load ptr, ptr %4, align 8, !tbaa !76, !llvm.access.group !660
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %indvars.iv103
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !47, !llvm.access.group !660
  %i.ab = icmp sgt i32 %i.aa, -1
  br i1 %i.ab, label %bb.d, label %.preheader

bb.d:                                             ; preds = %.lr.ph88
  %i.ac = load ptr, ptr %5, align 8, !tbaa !76, !llvm.access.group !660
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %indvars.iv103
  store i32 0, ptr %i.ad, align 4, !tbaa !47, !llvm.access.group !660
  br label %bb.i

.preheader:                                       ; preds = %.lr.ph88
  %i.ae = add nsw i32 %i.x, 1                     ; 2 uses
  store i32 %i.ae, ptr %i.b, align 4, !tbaa !47, !llvm.access.group !660
  %.tr = trunc i64 %indvars.iv103 to i32
  %i.af = shl i32 %.tr, 1
  %i.ag = and i32 %i.af, 14
  %.neg = xor i32 %i.ag, -1
  %i.ah = trunc i64 %indvars.iv103 to i32
  %i.ai = lshr i32 %i.ah, 2
  %i.aj = and i32 %i.ai, 14
end_hunk_1
