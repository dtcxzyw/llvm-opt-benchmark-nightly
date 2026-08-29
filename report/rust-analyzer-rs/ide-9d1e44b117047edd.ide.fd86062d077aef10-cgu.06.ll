Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide-9d1e44b117047edd.ide.fd86062d077aef10-cgu.06?download=true
inline.NumInlined: 1705
inline.NumDeleted: 679
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCsgIpRO4v45SJ_7base_db5input5CrateNvYB15_NtNtBa_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide:bb.a
  %i.gw = getelementptr [8 x i8], ptr %i.dt, i64 %i.gv
  %i.gx = getelementptr [8 x i8], ptr %i.gm, i64 %.sroa.07.043.i57
  %i.gy = load i64, ptr %i.gw, align 4, !alias.scope !553, !noalias !550
  store i64 %i.gy, ptr %i.gx, align 4, !alias.scope !550, !noalias !553
  %exitcond.not.i58 = icmp eq i64 %i.gu, %i.gl
  br i1 %exitcond.not.i58, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db5input5CrateNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECslLuZgPVt6hg_3ide.exit, label %scalar.ph, !llvm.loop !581

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db5input5CrateNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECslLuZgPVt6hg_3ide.exit: ; preds = %scalar.ph, %middle.block
  %i.gz = icmp ugt i64 %.sroa.27.2.lcssa.i53, %.sroa.16.0125280
  br i1 %i.gz, label %bb.w, label %.outer, !prof !167

.outer.thread:                                    ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db5input5CrateNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECslLuZgPVt6hg_3ide.exit
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph132, i64 %.sroa.27.2.lcssa.i53 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.hb = icmp ult i64 %i.gl, 33
  br i1 %i.hb, label %.outer._crit_edge, label %.lr.ph

bb.w:                                             ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db5input5CrateNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECslLuZgPVt6hg_3ide.exit
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i53, i64 noundef %.sroa.16.0125280, i64 noundef %.sroa.16.0125280, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #35
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB2H_bENCNvB17_11annotationss1_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 57646075230342349) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 57646075230342349) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(160) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 8                ; 6 uses
  %i.b = alloca [12 x i8], align 8                ; 6 uses
  %i.c = alloca [12 x i8], align 8                ; 6 uses
  %i.d = alloca [12 x i8], align 8                ; 6 uses
  %i.e = alloca [12 x i8], align 8                ; 6 uses
  %i.f = alloca [12 x i8], align 8                ; 6 uses
  %i.g = alloca [12 x i8], align 4                ; 6 uses
  %i.h = alloca [12 x i8], align 4                ; 6 uses
  %i.i = alloca [12 x i8], align 4                ; 6 uses
  %i.j = alloca [12 x i8], align 4                ; 6 uses
  %i.k = alloca [12 x i8], align 4                ; 6 uses
  %i.l = alloca [12 x i8], align 4                ; 6 uses
  %i.m = alloca [160 x i8], align 8               ; 6 uses
  %i.n = icmp samesign ult i64 %1, 33
  br i1 %i.n, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.0.0.ph99 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.gp, %.outer ] ; 22 uses
  %.sroa.16.0.ph98 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.ga, %.outer ] ; 2 uses
  %.sroa.025.0.ph97 = phi i32 [ %4, %.lr.ph.lr.ph ], [ %i.as, %.outer ] ; 2 uses
  %.sroa.028.0.ph96 = phi ptr [ %5, %.lr.ph.lr.ph ], [ null, %.outer ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph99, i64 152
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph99, i64 156
  %i.ao = ptrtoint ptr %.sroa.0.0.ph99 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph96, null
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph96, i64 152
  %i.aq = icmp eq i32 %.sroa.025.0.ph97, 0
  br i1 %i.aq, label %.lr.ph._crit_edge, label %.lr.ph236

bb.b:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation12split_at_mutBy_.exit
  %i.ar = icmp eq i32 %i.as, 0
  br i1 %i.ar, label %.lr.ph._crit_edge, label %.lr.ph236

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation12split_at_mutBy_.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa90 = phi ptr [ %i.gb, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph99, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation12split_at_mutBy_.exit ], [ %i.gp, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.11.1.lcssa.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation12split_at_mutBy_.exit ], [ %i.ga, %.outer ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB34_bENCNvB1u_11annotationss1_0E0EB1w_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa90, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 57646075230342349) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.l

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.092.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph98, %.lr.ph ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB2x_bENCNvBY_11annotationss1_0E0EB10_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph99, i64 noundef %.sroa.16.092.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.l

.lr.ph236:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.091235 = phi i32 [ %i.as, %bb.b ], [ %.sroa.025.0.ph97, %.lr.ph ]
  %.sroa.16.092234 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph98, %.lr.ph ] ; 21 uses
  %i.as = add i32 %.sroa.025.091235, -1           ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !582)
  %i.at = lshr i64 %.sroa.16.092234, 3            ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.at, 640
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph99, i64 %.idx.i ; 5 uses
  %.idx2.i = mul nuw nsw i64 %i.at, 1120
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph99, i64 %.idx2.i ; 5 uses
  %i.aw = icmp samesign ult i64 %.sroa.16.092234, 64
  br i1 %i.aw, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph236
  %i.ax = call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB14_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB2G_bENCNvB16_11annotationss1_0E0EB18_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph99, ptr noundef nonnull readonly %i.au, ptr noundef nonnull readonly %i.av, i64 noundef %i.at, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.m

bb.d:                                             ; preds = %.lr.ph236
  call void @llvm.experimental.noalias.scope.decl(metadata !585)
  call void @llvm.experimental.noalias.scope.decl(metadata !588)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !590
  call void @llvm.experimental.noalias.scope.decl(metadata !592)
  call void @llvm.experimental.noalias.scope.decl(metadata !595)
  %i.ay = load i32, ptr %i.am, align 8, !alias.scope !597, !noalias !598, !noundef !19 ; 2 uses
  %i.az = load i32, ptr %i.an, align 4, !alias.scope !597, !noalias !598, !noundef !19 ; 2 uses
  %i.ba = load i64, ptr %.sroa.0.0.ph99, align 8, !range !370, !alias.scope !597, !noalias !598, !noundef !19
  %i.bb = icmp samesign ult i64 %i.ba, 5          ; 3 uses
  store i32 %i.ay, ptr %i.l, align 4, !alias.scope !592, !noalias !599
  store i32 %i.az, ptr %i.o, align 4, !alias.scope !592, !noalias !599
  %i.bc = zext i1 %i.bb to i8                     ; 2 uses
  store i8 %i.bc, ptr %i.p, align 4, !alias.scope !592, !noalias !599
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !590
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  call void @llvm.experimental.noalias.scope.decl(metadata !603)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 152
  %i.be = load i32, ptr %i.bd, align 8, !alias.scope !605, !noalias !606, !noundef !19 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 156
  %i.bg = load i32, ptr %i.bf, align 4, !alias.scope !605, !noalias !606, !noundef !19 ; 2 uses
  %i.bh = load i64, ptr %i.au, align 8, !range !370, !alias.scope !605, !noalias !606, !noundef !19
  %i.bi = icmp samesign ult i64 %i.bh, 5          ; 3 uses
  store i32 %i.be, ptr %i.k, align 4, !alias.scope !600, !noalias !607
  store i32 %i.bg, ptr %i.q, align 4, !alias.scope !600, !noalias !607
  %i.bj = zext i1 %i.bi to i8                     ; 2 uses
  store i8 %i.bj, ptr %i.r, align 4, !alias.scope !600, !noalias !607
  %i.bk = call noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCsuAhG64lL82_9text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.l, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.k), !noalias !590 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.bk, 2
  br i1 %.not.i.i.i, label %bb.e, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.bl = call noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCsuAhG64lL82_9text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.o, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.q), !noalias !590 ; 2 uses
  %.not5.i.i.i = icmp eq i8 %i.bl, 2
  br i1 %.not5.i.i.i, label %bb.f, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.bm = xor i1 %i.bb, true
  %i.bn = and i1 %i.bi, %i.bm
  %i.bo = zext i1 %i.bn to i8
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.0.1.i.i.i = phi i8 [ %i.bk, %bb.d ], [ %i.bo, %bb.f ], [ %i.bl, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !590
  call void @llvm.experimental.noalias.scope.decl(metadata !608)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !611
  store i32 %i.ay, ptr %i.j, align 4, !alias.scope !613, !noalias !616
  store i32 %i.az, ptr %i.s, align 4, !alias.scope !613, !noalias !616
  store i8 %i.bc, ptr %i.t, align 4, !alias.scope !613, !noalias !616
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !611
  call void @llvm.experimental.noalias.scope.decl(metadata !618)
  call void @llvm.experimental.noalias.scope.decl(metadata !621)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.av, i64 152
  %i.bq = load i32, ptr %i.bp, align 8, !alias.scope !623, !noalias !624, !noundef !19 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.av, i64 156
  %i.bs = load i32, ptr %i.br, align 4, !alias.scope !623, !noalias !624, !noundef !19 ; 2 uses
  %i.bt = load i64, ptr %i.av, align 8, !range !370, !alias.scope !623, !noalias !624, !noundef !19
  %i.bu = icmp samesign ult i64 %i.bt, 5          ; 3 uses
  store i32 %i.bq, ptr %i.i, align 4, !alias.scope !618, !noalias !625
  store i32 %i.bs, ptr %i.u, align 4, !alias.scope !618, !noalias !625
  %i.bv = zext i1 %i.bu to i8                     ; 2 uses
  store i8 %i.bv, ptr %i.v, align 4, !alias.scope !618, !noalias !625
  %i.bw = call noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCsuAhG64lL82_9text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.j, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.i), !noalias !611 ; 2 uses
  %.not.i.i3.i = icmp eq i8 %i.bw, 2
  br i1 %.not.i.i3.i, label %bb.g, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit6.i

bb.g:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit.i
  %i.bx = call noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCsuAhG64lL82_9text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.s, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.u), !noalias !611 ; 2 uses
  %.not5.i.i5.i = icmp eq i8 %i.bx, 2
  br i1 %.not5.i.i5.i, label %bb.h, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit6.i

bb.h:                                             ; preds = %bb.g
  %i.by = xor i1 %i.bb, true
  %i.bz = and i1 %i.bu, %i.by
  %i.ca = zext i1 %i.bz to i8
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit6.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit6.i: ; preds = %bb.h, %bb.g, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit.i
  %.sroa.0.1.i.i4.i = phi i8 [ %i.bw, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit.i ], [ %i.ca, %bb.h ], [ %i.bx, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !611
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !611
  %.not.i = icmp eq i8 %.sroa.0.1.i.i4.i, %.sroa.0.1.i.i.i
  br i1 %.not.i, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit6.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !626
  store i32 %i.be, ptr %i.h, align 4, !alias.scope !630, !noalias !633
  store i32 %i.bg, ptr %i.w, align 4, !alias.scope !630, !noalias !633
  store i8 %i.bj, ptr %i.x, align 4, !alias.scope !630, !noalias !633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !626
  store i32 %i.bq, ptr %i.g, align 4, !alias.scope !635, !noalias !638
  store i32 %i.bs, ptr %i.y, align 4, !alias.scope !635, !noalias !638
  store i8 %i.bv, ptr %i.z, align 4, !alias.scope !635, !noalias !638
  %i.cb = call noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCsuAhG64lL82_9text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.h, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.g), !noalias !626 ; 2 uses
  %.not.i.i7.i = icmp eq i8 %i.cb, 2
  br i1 %.not.i.i7.i, label %bb.j, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit10.i

bb.j:                                             ; preds = %bb.i
  %i.cc = call noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCsuAhG64lL82_9text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.w, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.y), !noalias !626 ; 2 uses
  %.not5.i.i9.i = icmp eq i8 %i.cc, 2
  br i1 %.not5.i.i9.i, label %bb.k, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit10.i

bb.k:                                             ; preds = %bb.j
  %i.cd = xor i1 %i.bi, true
  %i.ce = and i1 %i.bu, %i.cd
  %i.cf = zext i1 %i.ce to i8
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit10.i

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit10.i: ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.0.1.i.i8.i = phi i8 [ %i.cb, %bb.i ], [ %i.cf, %bb.k ], [ %i.cc, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !626
  %.not16.i = icmp eq i8 %.sroa.0.1.i.i8.i, %.sroa.0.1.i.i.i
  %..i.i = select i1 %.not16.i, ptr %i.au, ptr %i.av
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.m:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit10.i, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit6.i, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %i.ax, %bb.c ], [ %.sroa.0.0.ph99, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit6.i ], [ %..i.i, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit10.i ]
  %i.cg = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ch = sub nuw i64 %i.cg, %i.ao                ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.ch, 160        ; 3 uses
  %i.ci = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.092234
  call void @llvm.assume(i1 %i.ci)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph99, i64 %i.ch ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.m, ptr noundef nonnull align 8 dereferenceable(160) %i.cj, i64 160, i1 false)
  br i1 %.not, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !640)
  call void @llvm.experimental.noalias.scope.decl(metadata !643)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !645
  call void @llvm.experimental.noalias.scope.decl(metadata !646)
  call void @llvm.experimental.noalias.scope.decl(metadata !649)
  %i.ck = load i64, ptr %.sroa.028.0.ph96, align 8, !range !370, !alias.scope !651, !noalias !652, !noundef !19
  %i.cl = icmp samesign ult i64 %i.ck, 5          ; 2 uses
  %i.cm = load <2 x i32>, ptr %i.ap, align 8, !alias.scope !651, !noalias !652
  store <2 x i32> %i.cm, ptr %i.f, align 8, !alias.scope !646, !noalias !653
  %i.cn = zext i1 %i.cl to i8
  store i8 %i.cn, ptr %i.ab, align 8, !alias.scope !646, !noalias !653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !645
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  call void @llvm.experimental.noalias.scope.decl(metadata !657)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 152
  %i.cp = load i64, ptr %i.cj, align 8, !range !370, !alias.scope !659, !noalias !660, !noundef !19
  %i.cq = icmp samesign ult i64 %i.cp, 5          ; 2 uses
  %i.cr = load <2 x i32>, ptr %i.co, align 8, !alias.scope !659, !noalias !660
  store <2 x i32> %i.cr, ptr %i.e, align 8, !alias.scope !654, !noalias !661
  %i.cs = zext i1 %i.cq to i8
  store i8 %i.cs, ptr %i.ad, align 8, !alias.scope !654, !noalias !661
  %i.ct = call noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCsuAhG64lL82_9text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.f, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.e), !noalias !645 ; 2 uses
  %.not.i.i = icmp eq i8 %i.ct, 2
  br i1 %.not.i.i, label %bb.o, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit

bb.o:                                             ; preds = %bb.n
  %i.cu = call noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCsuAhG64lL82_9text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.aa, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ac), !noalias !645 ; 2 uses
  %.not5.i.i = icmp eq i8 %i.cu, 2
  br i1 %.not5.i.i, label %bb.p, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit

bb.p:                                             ; preds = %bb.o
  %i.cv = xor i1 %i.cl, true
  %i.cw = and i1 %i.cq, %i.cv
  %i.cx = zext i1 %i.cw to i8
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit: ; preds = %bb.n, %bb.o, %bb.p
  %.sroa.0.1.i.i = phi i8 [ %i.ct, %bb.n ], [ %i.cx, %bb.p ], [ %i.cu, %bb.o ]
  %i.cy = trunc nuw i8 %.sroa.0.1.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !645
  br i1 %i.cy, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.m, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !662)
  call void @llvm.experimental.noalias.scope.decl(metadata !665)
  %.not66 = icmp samesign ult i64 %3, %.sroa.16.092234
  br i1 %.not66, label %bb.s, label %bb.r, !prof !169

bb.r:                                             ; preds = %bb.q
  %i.cz = getelementptr [160 x i8], ptr %2, i64 %.sroa.16.092234 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cj, i64 152
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.x, %bb.r
  %.sroa.19.0.i = phi ptr [ %i.cz, %bb.r ], [ %i.dz, %bb.x ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.r ], [ %.sroa.11.1.lcssa.i, %bb.x ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph99, %bb.r ], [ %i.eb, %bb.x ] ; 3 uses
  %.sroa.0.0.i38 = phi i64 [ %.sroa.0.0.i, %bb.r ], [ %.sroa.16.092234, %bb.x ] ; 2 uses
  %i.db = getelementptr inbounds nuw [160 x i8], ptr %.sroa.0.0.ph99, i64 %.sroa.0.0.i38 ; 2 uses
  %i.dc = icmp ult ptr %.sroa.5.0.i, %i.db
  br i1 %i.dc, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.t
  %i.dd = load i64, ptr %i.cj, align 8, !range !370, !alias.scope !667, !noalias !672, !noundef !19
  %i.de = icmp samesign ult i64 %i.dd, 5          ; 2 uses
  %i.df = zext i1 %i.de to i8
  br label %bb.u

._crit_edge.i:                                    ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit.i40, %bb.t
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.t ], [ %i.dt, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit.i40 ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.t ], [ %i.dw, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit.i40 ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.t ], [ %i.dx, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit.i40 ] ; 2 uses
  %i.dg = icmp eq i64 %.sroa.0.0.i38, %.sroa.16.092234
  br i1 %i.dg, label %bb.y, label %bb.x

bb.u:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit.i40, %.lr.ph.i
  %.sroa.5.111.i = phi ptr [ %.sroa.5.0.i, %.lr.ph.i ], [ %i.dx, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit.i40 ] ; 4 uses
  %.sroa.11.110.i = phi i64 [ %.sroa.11.0.i, %.lr.ph.i ], [ %i.dw, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit.i40 ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %.sroa.19.0.i, %.lr.ph.i ], [ %i.dt, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit.i40 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !675)
  call void @llvm.experimental.noalias.scope.decl(metadata !676)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !677
  call void @llvm.experimental.noalias.scope.decl(metadata !678)
  call void @llvm.experimental.noalias.scope.decl(metadata !681)
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 152
  %i.di = load i64, ptr %.sroa.5.111.i, align 8, !range !370, !alias.scope !683, !noalias !684, !noundef !19
  %i.dj = icmp samesign ult i64 %i.di, 5          ; 2 uses
  %i.dk = load <2 x i32>, ptr %i.dh, align 8, !alias.scope !683, !noalias !684
  store <2 x i32> %i.dk, ptr %i.d, align 8, !alias.scope !678, !noalias !685
  %i.dl = zext i1 %i.dj to i8
  store i8 %i.dl, ptr %i.af, align 8, !alias.scope !678, !noalias !685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !677
  call void @llvm.experimental.noalias.scope.decl(metadata !686)
  call void @llvm.experimental.noalias.scope.decl(metadata !687)
  %i.dm = load <2 x i32>, ptr %i.da, align 8, !alias.scope !667, !noalias !672
  store <2 x i32> %i.dm, ptr %i.c, align 8, !alias.scope !686, !noalias !688
  store i8 %i.df, ptr %i.ah, align 8, !alias.scope !686, !noalias !688
  %i.dn = call noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCsuAhG64lL82_9text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.c), !noalias !677 ; 2 uses
  %.not.i.i.i39 = icmp eq i8 %i.dn, 2
  br i1 %.not.i.i.i39, label %bb.v, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit.i40

bb.v:                                             ; preds = %bb.u
  %i.do = call noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCsuAhG64lL82_9text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ae, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ag), !noalias !677 ; 2 uses
  %.not5.i.i.i42 = icmp eq i8 %i.do, 2
  br i1 %.not5.i.i.i42, label %bb.w, label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit.i40

bb.w:                                             ; preds = %bb.v
  %i.dp = xor i1 %i.dj, true
  %i.dq = and i1 %i.de, %i.dp
  %i.dr = zext i1 %i.dq to i8
  br label %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit.i40

_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_.exit.i40: ; preds = %bb.w, %bb.v, %bb.u
  %.sroa.0.1.i.i.i41 = phi i8 [ %i.dn, %bb.u ], [ %i.dr, %bb.w ], [ %i.do, %bb.v ] ; 2 uses
  %i.ds = trunc nuw i8 %.sroa.0.1.i.i.i41 to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !677
  %i.dt = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -160 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.ds, ptr %2, ptr %i.dt
  %i.du = getelementptr inbounds nuw [160 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.110.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.du, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.5.111.i, i64 160, i1 false), !alias.scope !689, !noalias !690
  %i.dv = zext nneg i8 %.sroa.0.1.i.i.i41 to i64
  %i.dw = add i64 %.sroa.11.110.i, %i.dv          ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 160 ; 3 uses
  %i.dy = icmp ult ptr %i.dx, %i.db
  br i1 %i.dy, label %bb.u, label %._crit_edge.i

bb.x:                                             ; preds = %._crit_edge.i
  %i.dz = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -160 ; 2 uses
  %i.ea = getelementptr inbounds nuw [160 x i8], ptr %i.dz, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ea, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.5.1.lcssa.i, i64 160, i1 false), !alias.scope !689, !noalias !693
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 160
  br label %bb.t

bb.y:                                             ; preds = %._crit_edge.i
  %i.ec = mul nuw nsw i64 %.sroa.11.1.lcssa.i, 160
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph99, ptr nonnull align 8 %2, i64 %i.ec, i1 false), !alias.scope !689
  %i.ed = sub i64 %.sroa.16.092234, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.16.092234, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %.loopexit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.y
  %i.ee = getelementptr [160 x i8], ptr %.sroa.0.0.ph99, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.ed, 1
end_hunk_0
begin_hunk_1_@_RNvMsF_NtCshzWfHUSfYae_4core3numo27from_ascii_bytes_radix_impl:bb.a
  br i1 %.not53.us, label %.loopexit, label %.lr.ph.split.us

.preheader60.split:                               ; preds = %bb.k
  %.not52 = icmp eq i64 %i.ah, 0
  br i1 %.not52, label %.loopexit, label %.preheader60.split.preheader

.loopexit:                                        ; preds = %.preheader60.split.us, %.preheader60.split, %bb.i, %bb.m, %.preheader
  %.sroa.042.1 = phi i128 [ %i.bt, %bb.m ], [ 0, %.preheader ], [ %i.bc, %.preheader60.split ], [ %i.ae, %bb.i ], [ %i.s, %.preheader60.split.us ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %.sroa.042.1, ptr %i.af, align 16
  br label %bb.c

.preheader60.split.preheader:                     ; preds = %.preheader60, %.preheader60.split
  %.sroa.0.1154 = phi ptr [ %i.ag, %.preheader60.split ], [ %.sroa.0.0, %.preheader60 ] ; 3 uses
  %.sroa.15.1153 = phi i64 [ %i.ah, %.preheader60.split ], [ %.sroa.15.0, %.preheader60 ]
  %.sroa.042.0152 = phi i128 [ %i.bc, %.preheader60.split ], [ 0, %.preheader60 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.1154, i64 1
  %i.ah = add nsw i64 %.sroa.15.1153, -1          ; 2 uses
  %i.ai = tail call { i128, i1 } @llvm.umul.with.overflow.i128(i128 %.sroa.042.0152, i128 %i.g) ; 2 uses
  %i.aj = extractvalue { i128, i1 } %i.ai, 0      ; 2 uses
  %i.ak = extractvalue { i128, i1 } %i.ai, 1
  br i1 %i.ak, label %.split.us, label %bb.j, !prof !167

bb.j:                                             ; preds = %.preheader60.split.preheader
  %i.al = load i8, ptr %.sroa.0.1154, align 1, !noundef !19 ; 2 uses
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  %i.an = icmp ugt i8 %i.al, 57
  %i.ao = add nsw i32 %i.am, -65
  %i.ap = and i32 %i.ao, -33
  %i.aq = add nuw nsw i32 %i.ap, 10
  %i.ar = add nsw i32 %i.am, -48
  %spec.select = select i1 %i.an, i32 %i.aq, i32 %i.ar ; 2 uses
  %i.as = icmp ult i32 %spec.select, %3
  br i1 %i.as, label %bb.k, label %.loopexit62

.split.us:                                        ; preds = %.preheader60.split.us.preheader, %.preheader60.split.preheader
  %.us-phi70 = phi ptr [ %.sroa.0.1154, %.preheader60.split.preheader ], [ %.sroa.0.1.us151, %.preheader60.split.us.preheader ]
  %i.at = load i8, ptr %.us-phi70, align 1, !noundef !19 ; 2 uses
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %i.av = icmp ugt i8 %i.at, 57
  %or.cond1.i54 = and i1 %i.h, %i.av
  %i.aw = add nsw i32 %i.au, -65
  %i.ax = and i32 %i.aw, -33
  %i.ay = add nuw nsw i32 %i.ax, 10
  %i.az = add nsw i32 %i.au, -48
  %.sroa.02.0.i55 = select i1 %or.cond1.i54, i32 %i.ay, i32 %i.az
  %i.ba = icmp ult i32 %.sroa.02.0.i55, %3
  br i1 %i.ba, label %bb.l, label %.loopexit62

bb.k:                                             ; preds = %bb.j
  %i.bb = zext nneg i32 %spec.select to i128
  %i.bc = add i128 %i.aj, %i.bb                   ; 3 uses
  %i.bd = icmp ult i128 %i.bc, %i.aj
  br i1 %i.bd, label %.split72.us, label %.preheader60.split, !prof !167

.loopexit62:                                      ; preds = %bb.g, %bb.j, %.split.us
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.be, align 1
  br label %bb.c

.split72.us:                                      ; preds = %bb.h, %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.bf, align 1
  br label %bb.c

bb.l:                                             ; preds = %.split.us
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.bg, align 1
  br label %bb.c

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.m
  %.sroa.0.276 = phi ptr [ %i.br, %bb.m ], [ %.sroa.0.0, %.lr.ph ] ; 2 uses
  %.sroa.15.275 = phi i64 [ %i.bq, %bb.m ], [ %.sroa.15.0, %.lr.ph ]
  %.sroa.042.274 = phi i128 [ %i.bt, %bb.m ], [ 0, %.lr.ph ]
  %i.bh = load i8, ptr %.sroa.0.276, align 1, !noundef !19 ; 2 uses
  %i.bi = zext i8 %i.bh to i32                    ; 2 uses
  %i.bj = icmp ugt i8 %i.bh, 57
  %i.bk = add nsw i32 %i.bi, -65
  %i.bl = and i32 %i.bk, -33
  %i.bm = add nuw nsw i32 %i.bl, 10
  %i.bn = add nsw i32 %i.bi, -48
  %spec.select82 = select i1 %i.bj, i32 %i.bm, i32 %i.bn ; 2 uses
  %i.bo = icmp ult i32 %spec.select82, %3
  br i1 %i.bo, label %bb.m, label %.split80.us

bb.m:                                             ; preds = %.lr.ph.split
  %i.bp = mul i128 %.sroa.042.274, %i.v
  %i.bq = add nsw i64 %.sroa.15.275, -1           ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.276, i64 1
  %i.bs = zext nneg i32 %spec.select82 to i128
  %i.bt = add i128 %i.bp, %i.bs                   ; 2 uses
  %.not53 = icmp eq i64 %i.bq, 0
  br i1 %.not53, label %.loopexit, label %.lr.ph.split

.split80.us:                                      ; preds = %.lr.ph.split.us, %.lr.ph.split
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.bu, align 1
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define { i64, i32 } @_RNvMs_CslLuZgPVt6hg_3ideNtB4_12AnalysisHost12apply_change(ptr noalias nofree noundef align 8 dereferenceable(120) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(104) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i32 } @_RNvMNtCs6oosyzwIepl_6ide_db12apply_changeNtB4_12RootDatabase12apply_change(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %1)
  ret { i64, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_CslLuZgPVt6hg_3ideNtB4_12AnalysisHost20trigger_cancellation(ptr noalias nofree noundef align 8 dereferenceable(120) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database15synthetic_writeCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0, i8 noundef 0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_CslLuZgPVt6hg_3ideNtB4_12AnalysisHost22per_query_memory_usage(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(120) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMNtCs6oosyzwIepl_6ide_db12apply_changeNtB4_12RootDatabase22per_query_memory_usage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_CslLuZgPVt6hg_3ideNtB4_12AnalysisHost26trigger_garbage_collection(ptr noalias nofree noundef align 8 dereferenceable(120) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database15synthetic_writeCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0, i8 noundef 0)
  tail call void @_RNvNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner18collect_ty_garbage()
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_CslLuZgPVt6hg_3ideNtB4_12AnalysisHost3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, i16 noundef range(i16 0, 2) %1, i16 %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs3_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabase3new(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, i16 noundef %1, i16 %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_CslLuZgPVt6hg_3ideNtB4_12AnalysisHost8analysis(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs0_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE9normalizeCslLuZgPVt6hg_3ide(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dead_on_return dereferenceable(32) %1, i8 noundef range(i8 0, 5) %2, i8 noundef range(i8 0, 4) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %3, ptr %i.b, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 4 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 21 ; 5 uses
  switch i8 %.sroa.4.0.copyload, label %.preheader.preheader [
    i8 3, label %bb.b
    i8 1, label %bb.b
    i8 0, label %bb.b
  ]

.preheader.preheader:                             ; preds = %bb.a
  %i.c = load i128, ptr %1, align 16, !alias.scope !1266, !noundef !19 ; 6 uses
  %i.d = icmp eq i128 %i.c, 0
  br i1 %i.d, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.e, align 16
  br label %bb.c

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread: ; preds = %.preheader.preheader
  %i.f = tail call range(i128 0, 129) i128 @llvm.ctlz.i128(i128 %i.c, i1 true)
  %i.g = trunc nuw nsw i128 %i.f to i64
  %i.h = sub nuw nsw i64 128, %i.g
  %.not41204 = icmp eq i8 %3, 0
  br label %bb.d

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit: ; preds = %.preheader.preheader
  %.not41 = icmp eq i8 %3, 0
  br i1 %.not41, label %.thread141, label %bb.d

bb.c:                                             ; preds = %.split.i, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit73, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit76, %bb.ae, %bb.aj, %bb.ah, %bb.b
  ret void

bb.d:                                             ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit
  %.not41207 = phi i1 [ %.not41204, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread ], [ false, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit ] ; 2 uses
  %.sroa.0.0.i206 = phi i64 [ %i.h, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread ], [ 0, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.j = load i32, ptr %i.i, align 16, !noundef !19 ; 8 uses
  %i.k = trunc nuw nsw i64 %.sroa.0.0.i206 to i32
  %i.l = add nsw i32 %i.k, -11
  %i.m = tail call i32 @llvm.sadd.sat.i32(i32 %i.j, i32 %i.l) ; 2 uses
  %i.n = icmp sgt i32 %i.m, 15
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.store.select1 = tail call i32 @llvm.smax.i32(i32 %i.m, i32 -14) ; 4 uses
  %i.o = icmp slt i32 %spec.store.select1, %i.j
  br i1 %i.o, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = load i8, ptr %.sroa.5.0..sroa_idx, align 1, !range !334, !noundef !19
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.an, label %bb.ao

bb.g:                                             ; preds = %bb.e
  %i.r = icmp sgt i32 %spec.store.select1, %i.j
  br i1 %i.r, label %bb.i, label %bb.p

bb.h:                                             ; preds = %bb.e
  br i1 %.not41207, label %bb.al, label %bb.ak, !prof !1077

bb.i:                                             ; preds = %bb.g
  %i.s = sub i32 %spec.store.select1, %i.j        ; 4 uses
  %i.t = sext i32 %i.s to i64                     ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1272)
  %i.u = add nsw i64 %i.t, -1                     ; 2 uses
  %i.v = icmp ult i64 %i.u, 128                   ; 3 uses
  %.sroa.010.0.i.i = select i1 %i.v, i128 %i.c, i128 0 ; 2 uses
  %i.w = and i64 %i.u, 127
  %i.x = zext nneg i64 %i.w to i128
  %i.y = shl nuw i128 1, %i.x                     ; 2 uses
  %i.z = and i128 %.sroa.010.0.i.i, %i.y
  %.not.i.i = icmp eq i128 %i.z, 0                ; 3 uses
  %i.aa = add i128 %i.y, -1
  %i.ab = and i128 %.sroa.010.0.i.i, %i.aa
  %i.ac = icmp eq i128 %i.ab, 0
  br i1 %i.ac, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %.idx = select i1 %i.v, i64 0, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  br i1 %i.v, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECslLuZgPVt6hg_3ide.exit.i.i, label %.lr.ph

bb.k:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.ad
  br i1 %i.af, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECslLuZgPVt6hg_3ide.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %i.ag = phi ptr [ %i.ae, %bb.k ], [ %1, %bb.j ] ; 2 uses
  %.val.i.i.i = load i128, ptr %i.ag, align 16, !alias.scope !1274, !noalias !1277, !noundef !19
  %i.ah = icmp eq i128 %.val.i.i.i, 0
  br i1 %i.ah, label %bb.k, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECslLuZgPVt6hg_3ide.exit.thread.i.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECslLuZgPVt6hg_3ide.exit.i.i: ; preds = %bb.k, %bb.j
  %spec.select.i.i47 = select i1 %.not.i.i, i8 0, i8 2
  br label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECslLuZgPVt6hg_3ide.exit.thread.i.i: ; preds = %.lr.ph
  br i1 %.not.i.i, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i, label %.thread16.i.i

bb.l:                                             ; preds = %bb.i
  br i1 %.not.i.i, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i, label %.thread16.i.i

.thread16.i.i:                                    ; preds = %bb.l, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECslLuZgPVt6hg_3ide.exit.thread.i.i
  br label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i

_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i: ; preds = %.thread16.i.i, %bb.l, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECslLuZgPVt6hg_3ide.exit.thread.i.i, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECslLuZgPVt6hg_3ide.exit.i.i
  %.sroa.09.0.i17.i = phi i8 [ 1, %bb.l ], [ %spec.select.i.i47, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECslLuZgPVt6hg_3ide.exit.i.i ], [ 3, %.thread16.i.i ], [ 1, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECslLuZgPVt6hg_3ide.exit.thread.i.i ] ; 4 uses
  %i.ai = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.j, i32 %i.s) ; 2 uses
  %i.aj = extractvalue { i32, i1 } %i.ai, 1
  br i1 %i.aj, label %bb.m, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit, !prof !167

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit: ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i
  %i.ak = extractvalue { i32, i1 } %i.ai, 0       ; 2 uses
  store i32 %i.ak, ptr %i.i, align 16, !alias.scope !1272, !noalias !1269
  %i.al = and i64 %i.t, 127
  %i.am = and i32 %i.s, 127
  %.not12.i = icmp eq i32 %i.am, 0
  %i.an = zext nneg i64 %i.al to i128
  %.not11.us.i = icmp ult i32 %i.s, 128
  %i.ao = select i1 %.not12.i, i128 0, i128 %i.an
  %.sink = lshr i128 %i.c, %i.ao
  %spec.select208 = select i1 %.not11.us.i, i128 %.sink, i128 0 ; 2 uses
  store i128 %spec.select208, ptr %1, align 16, !alias.scope !1269, !noalias !1272
  br i1 %.not41207, label %.thread, label %bb.n

bb.m:                                             ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #35, !noalias !1280
  unreachable

.thread:                                          ; preds = %bb.n, %bb.o, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit
  %.sroa.012.0 = phi i8 [ %.sroa.09.0.i17.i, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit ], [ %spec.store.select, %bb.o ], [ 1, %bb.n ]
  %i.ap = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i206, i64 %i.t)
  br label %bb.p

bb.n:                                             ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit
  %i.aq = icmp eq i8 %.sroa.09.0.i17.i, 0
  br i1 %i.aq, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = icmp eq i8 %.sroa.09.0.i17.i, 2
  %spec.store.select = select i1 %i.ar, i8 3, i8 %.sroa.09.0.i17.i
  br label %.thread

bb.p:                                             ; preds = %bb.g, %.thread
  %i.as = phi i32 [ %i.ak, %.thread ], [ %i.j, %bb.g ]
  %i.at = phi i128 [ %spec.select208, %.thread ], [ %i.c, %bb.g ] ; 2 uses
  %.sroa.016.0 = phi i64 [ %i.ap, %.thread ], [ %.sroa.0.0.i206, %bb.g ] ; 6 uses
  %i.au = phi i8 [ %.sroa.012.0, %.thread ], [ %3, %bb.g ] ; 4 uses
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.z, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1281)
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx, align 1, !alias.scope !1281 ; 4 uses
  %spec.select.i.i.i = icmp ugt i8 %.sroa.4.0.copyload, 1
  %i.aw = icmp eq i8 %.sroa.4.0.copyload, 3
  br i1 %spec.select.i.i.i, label %bb.s, label %bb.r, !prof !1284

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 61, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #35, !noalias !1281
  unreachable

bb.s:                                             ; preds = %bb.q
  switch i8 %2, label %default.unreachable200 [
    i8 0, label %bb.t
    i8 1, label %bb.u
    i8 2, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit
    i8 3, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit.thread139
    i8 4, label %bb.v
  ]

default.unreachable200:                           ; preds = %bb.an, %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  switch i8 %i.au, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit.thread139 [
    i8 3, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit.thread
    i8 2, label %bb.w
  ]

bb.u:                                             ; preds = %bb.s
  %i.ax = xor i8 %.sroa.4.0.copyload.i, 1
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit

bb.v:                                             ; preds = %bb.s
  %i.ay = icmp eq i8 %i.au, 2
  br i1 %i.ay, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit.thread, label %bb.y

bb.w:                                             ; preds = %bb.t
  br i1 %i.aw, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit.thread139, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.az = trunc i128 %i.at to i8
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit

bb.y:                                             ; preds = %bb.v
  %i.ba = icmp eq i8 %i.au, 3
  %i.bb = zext i1 %i.ba to i8
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit: ; preds = %bb.s, %bb.u, %bb.x, %bb.y
  %.sroa.0.0.i48 = phi i8 [ %i.bb, %bb.y ], [ %.sroa.4.0.copyload.i, %bb.s ], [ %i.az, %bb.x ], [ %i.ax, %bb.u ]
  %i.bc = trunc i8 %.sroa.0.0.i48 to i1
  br i1 %i.bc, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit.thread, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit.thread139

bb.z:                                             ; preds = %bb.p
  %i.bd = icmp eq i64 %.sroa.016.0, 0
  br i1 %i.bd, label %.thread141, label %bb.aj

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit.thread: ; preds = %bb.t, %bb.v, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit
  %i.be = icmp eq i64 %.sroa.016.0, 0
  br i1 %i.be, label %bb.aa, label %.lr.ph.i

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit.thread139: ; preds = %bb.w, %bb.t, %bb.s, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit
  %.sroa.016.1 = phi i64 [ %.sroa.016.0, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit ], [ %i.bl, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53 ], [ %.sroa.016.0, %bb.s ], [ %.sroa.016.0, %bb.t ], [ %.sroa.016.0, %bb.w ] ; 3 uses
  %i.bf = icmp eq i64 %.sroa.016.1, 11
  br i1 %i.bf, label %bb.ae, label %bb.ad

bb.aa:                                            ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit.thread
  store i32 -14, ptr %i.i, align 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit.thread, %bb.aa
  %i.bg = phi i32 [ %i.as, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit.thread ], [ -14, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bh = add i128 %i.at, 1                       ; 4 uses
  store i128 %i.bh, ptr %1, align 16, !alias.scope !1285
  %i.bi = icmp eq i128 %i.bh, 0
  br i1 %i.bi, label %bb.ab, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53

bb.ab:                                            ; preds = %.lr.ph.i
  store i128 1, ptr %i.a, align 16
  call void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedooECsileJQcQObtj_7hir_def(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(16) @41, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #35
  unreachable

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = tail call range(i128 0, 129) i128 @llvm.ctlz.i128(i128 %i.bh, i1 true) ; 2 uses
  %i.bk = trunc nuw nsw i128 %i.bj to i64
  %i.bl = sub nuw nsw i64 128, %i.bk
  %i.bm = icmp eq i128 %i.bj, 116
  br i1 %i.bm, label %bb.ac, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit.thread139

bb.ac:                                            ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53
  %i.bn = icmp eq i32 %i.bg, 15
  br i1 %i.bn, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit76, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i60

bb.ad:                                            ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit.thread139
  %i.bo = icmp ult i64 %.sroa.016.1, 11
  br i1 %i.bo, label %bb.ag, label %bb.af, !prof !1288

bb.ae:                                            ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5HalfSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit.thread139
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 16, ptr %i.bp, align 16
  br label %bb.c

bb.af:                                            ; preds = %bb.ad
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #35
  unreachable

bb.ag:                                            ; preds = %bb.ad
  %i.bq = icmp eq i64 %.sroa.016.1, 0
  br i1 %i.bq, label %.thread151, label %bb.ah

.thread151:                                       ; preds = %bb.ag
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 22
  %spec.select179 = and i8 %.sroa.4.0.copyload.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %1, ptr noundef nonnull align 16 dereferenceable(21) @66, i64 21, i1 false)
  store i8 %spec.select179, ptr %.sroa.5.0..sroa_idx, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.496.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @66, i64 22), i64 10, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread151
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 24, ptr %i.br, align 16
  br label %bb.c

_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i60: ; preds = %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  %i.bs = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bg, i32 1) ; 2 uses
  %i.bt = extractvalue { i32, i1 } %i.bs, 1
  br i1 %i.bt, label %bb.ai, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit73, !prof !167

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit73: ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i60
  %i.bu = extractvalue { i32, i1 } %i.bs, 0
  store i32 %i.bu, ptr %i.i, align 16, !alias.scope !1292, !noalias !1289
  %i.bv = lshr i128 %i.bh, 1
  store i128 %i.bv, ptr %1, align 16, !alias.scope !1289, !noalias !1292
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 16, ptr %i.bw, align 16
  br label %bb.c

bb.ai:                                            ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i60
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #35, !noalias !1294
  unreachable

_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit76: ; preds = %bb.ac
  %spec.select180 = and i8 %.sroa.4.0.copyload.i, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 20, ptr %i.bx, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %0, ptr noundef nonnull align 16 dereferenceable(21) @78, i64 21, i1 false)
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %spec.select180, ptr %.sroa.4123.0..sroa_idx, align 1
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.5124.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @78, i64 22), i64 10, i1 false)
  br label %bb.c

.thread141:                                       ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit, %bb.z
  %.sroa.3.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 22
  %spec.select181 = and i8 %.sroa.3.0.copyload, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %1, ptr noundef nonnull align 16 dereferenceable(21) @66, i64 21, i1 false)
  store i8 %spec.select181, ptr %.sroa.5.0..sroa_idx, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.490.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @66, i64 22), i64 10, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.z, %.thread141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.by, align 16
  br label %bb.c

bb.ak:                                            ; preds = %bb.h
  call void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee4LossBM_ECsileJQcQObtj_7hir_def(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @43, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #35
  unreachable

bb.al:                                            ; preds = %bb.h
  %i.bz = sub i32 %i.j, %spec.store.select1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  %i.ca = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.j, i32 %i.bz) ; 2 uses
  %i.cb = extractvalue { i32, i1 } %i.ca, 1
  br i1 %i.cb, label %bb.am, label %.split.i, !prof !167

.split.i:                                         ; preds = %bb.al
  %i.cc = extractvalue { i32, i1 } %i.ca, 0
  store i32 %i.cc, ptr %i.i, align 16, !alias.scope !1298, !noalias !1295
  %i.cd = and i32 %i.bz, 127
  %i.ce = and i32 %i.bz, 127
  %.not18.i = icmp eq i32 %i.ce, 0
  %.not189 = icmp ult i32 %i.bz, 128
  %narrow = select i1 %.not18.i, i32 0, i32 %i.cd
  %i.cf = zext nneg i32 %narrow to i128
  %.sink211 = shl i128 %i.c, %i.cf
  %spec.select210 = select i1 %.not189, i128 %.sink211, i128 0
  store i128 %spec.select210, ptr %1, align 16, !alias.scope !1295, !noalias !1298
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.cg, align 16
  br label %bb.c

bb.am:                                            ; preds = %bb.al
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #35, !noalias !1300
  unreachable

bb.an:                                            ; preds = %bb.f
  switch i8 %2, label %default.unreachable200 [
    i8 2, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88.sink.split
    i8 1, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88
    i8 0, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88.sink.split
    i8 3, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88
    i8 4, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88.sink.split
  ]

bb.ao:                                            ; preds = %bb.f
  %i.ch = and i8 %2, 6
  %switch = icmp eq i8 %i.ch, 2
  br i1 %switch, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88.sink.split

_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88.sink.split: ; preds = %bb.ao, %bb.an, %bb.an, %bb.an
  %.sroa.5103.1.ph = phi i8 [ 1, %bb.an ], [ 1, %bb.an ], [ 1, %bb.an ], [ 0, %bb.ao ]
  br label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88

_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88: ; preds = %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88.sink.split, %bb.an, %bb.an, %bb.ao
  %.sroa.034.0168 = phi i8 [ 16, %bb.an ], [ 16, %bb.an ], [ 16, %bb.ao ], [ 20, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88.sink.split ]
  %.sroa.097.0166 = phi i128 [ 2047, %bb.an ], [ 2047, %bb.an ], [ 2047, %bb.ao ], [ 0, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88.sink.split ]
  %.sroa.399.0164 = phi i32 [ 15, %bb.an ], [ 15, %bb.an ], [ 15, %bb.ao ], [ 16, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88.sink.split ]
  %.sroa.4101.0162 = phi i8 [ 2, %bb.an ], [ 2, %bb.an ], [ 2, %bb.ao ], [ 0, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88.sink.split ]
  %.sroa.5103.1 = phi i8 [ 1, %bb.an ], [ 1, %bb.an ], [ 0, %bb.ao ], [ %.sroa.5103.1.ph, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5HalfSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88.sink.split ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.034.0168, ptr %i.ci, align 16
  store i128 %.sroa.097.0166, ptr %0, align 16
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.399.0164, ptr %.sroa.4106.0..sroa_idx, align 16
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sroa.4101.0162, ptr %.sroa.5107.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %.sroa.5103.1, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @78, i64 22), i64 10, i1 false)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE9normalizeCslLuZgPVt6hg_3ide(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 16 captures(address) dead_on_return dereferenceable(32) %1, i8 noundef range(i8 0, 5) %2, i8 noundef range(i8 0, 4) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %3, ptr %i.b, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 4 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 21 ; 5 uses
  switch i8 %.sroa.4.0.copyload, label %.preheader.preheader [
    i8 3, label %bb.b
    i8 1, label %bb.b
    i8 0, label %bb.b
  ]

.preheader.preheader:                             ; preds = %bb.a
  %i.c = load i128, ptr %1, align 16, !alias.scope !1301, !noundef !19 ; 6 uses
  %i.d = icmp eq i128 %i.c, 0
  br i1 %i.d, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.e, align 16
  br label %bb.c

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread: ; preds = %.preheader.preheader
  %i.f = tail call range(i128 0, 129) i128 @llvm.ctlz.i128(i128 %i.c, i1 true)
  %i.g = trunc nuw nsw i128 %i.f to i64
  %i.h = sub nuw nsw i64 128, %i.g
  %.not41204 = icmp eq i8 %3, 0
  br label %bb.d

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit: ; preds = %.preheader.preheader
  %.not41 = icmp eq i8 %3, 0
  br i1 %.not41, label %.thread141, label %bb.d

bb.c:                                             ; preds = %.split.i, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit73, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit76, %bb.ae, %bb.aj, %bb.ah, %bb.b
  ret void

bb.d:                                             ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit
  %.not41207 = phi i1 [ %.not41204, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread ], [ false, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit ] ; 2 uses
  %.sroa.0.0.i206 = phi i64 [ %i.h, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit.thread ], [ 0, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.j = load i32, ptr %i.i, align 16, !noundef !19 ; 8 uses
  %i.k = trunc nuw nsw i64 %.sroa.0.0.i206 to i32
  %i.l = add nsw i32 %i.k, -113
  %i.m = tail call i32 @llvm.sadd.sat.i32(i32 %i.j, i32 %i.l) ; 2 uses
  %i.n = icmp sgt i32 %i.m, 16383
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.store.select1 = tail call i32 @llvm.smax.i32(i32 %i.m, i32 -16382) ; 4 uses
  %i.o = icmp slt i32 %spec.store.select1, %i.j
  br i1 %i.o, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = load i8, ptr %.sroa.5.0..sroa_idx, align 1, !range !334, !noundef !19
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.an, label %bb.ao

bb.g:                                             ; preds = %bb.e
  %i.r = icmp sgt i32 %spec.store.select1, %i.j
  br i1 %i.r, label %bb.i, label %bb.p

bb.h:                                             ; preds = %bb.e
  br i1 %.not41207, label %bb.al, label %bb.ak, !prof !1077

bb.i:                                             ; preds = %bb.g
  %i.s = sub i32 %spec.store.select1, %i.j        ; 4 uses
  %i.t = sext i32 %i.s to i64                     ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  %i.u = add nsw i64 %i.t, -1                     ; 2 uses
  %i.v = icmp ult i64 %i.u, 128                   ; 3 uses
  %.sroa.010.0.i.i = select i1 %i.v, i128 %i.c, i128 0 ; 2 uses
  %i.w = and i64 %i.u, 127
  %i.x = zext nneg i64 %i.w to i128
  %i.y = shl nuw i128 1, %i.x                     ; 2 uses
  %i.z = and i128 %.sroa.010.0.i.i, %i.y
  %.not.i.i = icmp eq i128 %i.z, 0                ; 3 uses
  %i.aa = add i128 %i.y, -1
  %i.ab = and i128 %.sroa.010.0.i.i, %i.aa
  %i.ac = icmp eq i128 %i.ab, 0
  br i1 %i.ac, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %.idx = select i1 %i.v, i64 0, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  br i1 %i.v, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECslLuZgPVt6hg_3ide.exit.i.i, label %.lr.ph

bb.k:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.ad
  br i1 %i.af, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECslLuZgPVt6hg_3ide.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %i.ag = phi ptr [ %i.ae, %bb.k ], [ %1, %bb.j ] ; 2 uses
  %.val.i.i.i = load i128, ptr %i.ag, align 16, !alias.scope !1309, !noalias !1312, !noundef !19
  %i.ah = icmp eq i128 %.val.i.i.i, 0
  br i1 %i.ah, label %bb.k, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECslLuZgPVt6hg_3ide.exit.thread.i.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECslLuZgPVt6hg_3ide.exit.i.i: ; preds = %bb.k, %bb.j
  %spec.select.i.i47 = select i1 %.not.i.i, i8 0, i8 2
  br label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECslLuZgPVt6hg_3ide.exit.thread.i.i: ; preds = %.lr.ph
  br i1 %.not.i.i, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i, label %.thread16.i.i

bb.l:                                             ; preds = %bb.i
  br i1 %.not.i.i, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i, label %.thread16.i.i

.thread16.i.i:                                    ; preds = %bb.l, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECslLuZgPVt6hg_3ide.exit.thread.i.i
  br label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i

_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i: ; preds = %.thread16.i.i, %bb.l, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECslLuZgPVt6hg_3ide.exit.thread.i.i, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECslLuZgPVt6hg_3ide.exit.i.i
  %.sroa.09.0.i17.i = phi i8 [ 1, %bb.l ], [ %spec.select.i.i47, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECslLuZgPVt6hg_3ide.exit.i.i ], [ 3, %.thread16.i.i ], [ 1, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig12is_all_zeros0ECslLuZgPVt6hg_3ide.exit.thread.i.i ] ; 4 uses
  %i.ai = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.j, i32 %i.s) ; 2 uses
  %i.aj = extractvalue { i32, i1 } %i.ai, 1
  br i1 %i.aj, label %bb.m, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit, !prof !167

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit: ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i
  %i.ak = extractvalue { i32, i1 } %i.ai, 0       ; 2 uses
  store i32 %i.ak, ptr %i.i, align 16, !alias.scope !1307, !noalias !1304
  %i.al = and i64 %i.t, 127
  %i.am = and i32 %i.s, 127
  %.not12.i = icmp eq i32 %i.am, 0
  %i.an = zext nneg i64 %i.al to i128
  %.not11.us.i = icmp ult i32 %i.s, 128
  %i.ao = select i1 %.not12.i, i128 0, i128 %i.an
  %.sink = lshr i128 %i.c, %i.ao
  %spec.select208 = select i1 %.not11.us.i, i128 %.sink, i128 0 ; 2 uses
  store i128 %spec.select208, ptr %1, align 16, !alias.scope !1304, !noalias !1307
  br i1 %.not41207, label %.thread, label %bb.n

bb.m:                                             ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #35, !noalias !1315
  unreachable

.thread:                                          ; preds = %bb.n, %bb.o, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit
  %.sroa.012.0 = phi i8 [ %.sroa.09.0.i17.i, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit ], [ %spec.store.select, %bb.o ], [ 1, %bb.n ]
  %i.ap = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i206, i64 %i.t)
  br label %bb.p

bb.n:                                             ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit
  %i.aq = icmp eq i8 %.sroa.09.0.i17.i, 0
  br i1 %i.aq, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = icmp eq i8 %.sroa.09.0.i17.i, 2
  %spec.store.select = select i1 %i.ar, i8 3, i8 %.sroa.09.0.i17.i
  br label %.thread

bb.p:                                             ; preds = %bb.g, %.thread
  %i.as = phi i32 [ %i.ak, %.thread ], [ %i.j, %bb.g ]
  %i.at = phi i128 [ %spec.select208, %.thread ], [ %i.c, %bb.g ] ; 2 uses
  %.sroa.016.0 = phi i64 [ %i.ap, %.thread ], [ %.sroa.0.0.i206, %bb.g ] ; 6 uses
  %i.au = phi i8 [ %.sroa.012.0, %.thread ], [ %3, %bb.g ] ; 4 uses
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.z, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1316)
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx, align 1, !alias.scope !1316 ; 4 uses
  %spec.select.i.i.i = icmp ugt i8 %.sroa.4.0.copyload, 1
  %i.aw = icmp eq i8 %.sroa.4.0.copyload, 3
  br i1 %spec.select.i.i.i, label %bb.s, label %bb.r, !prof !1284

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 61, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #35, !noalias !1316
  unreachable

bb.s:                                             ; preds = %bb.q
  switch i8 %2, label %default.unreachable200 [
    i8 0, label %bb.t
    i8 1, label %bb.u
    i8 2, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit
    i8 3, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit.thread139
    i8 4, label %bb.v
  ]

default.unreachable200:                           ; preds = %bb.an, %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  switch i8 %i.au, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit.thread139 [
    i8 3, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit.thread
    i8 2, label %bb.w
  ]

bb.u:                                             ; preds = %bb.s
  %i.ax = xor i8 %.sroa.4.0.copyload.i, 1
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit

bb.v:                                             ; preds = %bb.s
  %i.ay = icmp eq i8 %i.au, 2
  br i1 %i.ay, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit.thread, label %bb.y

bb.w:                                             ; preds = %bb.t
  br i1 %i.aw, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit.thread139, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.az = trunc i128 %i.at to i8
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit

bb.y:                                             ; preds = %bb.v
  %i.ba = icmp eq i8 %i.au, 3
  %i.bb = zext i1 %i.ba to i8
  br label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit: ; preds = %bb.s, %bb.u, %bb.x, %bb.y
  %.sroa.0.0.i48 = phi i8 [ %i.bb, %bb.y ], [ %.sroa.4.0.copyload.i, %bb.s ], [ %i.az, %bb.x ], [ %i.ax, %bb.u ]
  %i.bc = trunc i8 %.sroa.0.0.i48 to i1
  br i1 %i.bc, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit.thread, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit.thread139

bb.z:                                             ; preds = %bb.p
  %i.bd = icmp eq i64 %.sroa.016.0, 0
  br i1 %i.bd, label %.thread141, label %bb.aj

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit.thread: ; preds = %bb.t, %bb.v, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit
  %i.be = icmp eq i64 %.sroa.016.0, 0
  br i1 %i.be, label %bb.aa, label %.lr.ph.i

_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit.thread139: ; preds = %bb.w, %bb.t, %bb.s, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit
  %.sroa.016.1 = phi i64 [ %.sroa.016.0, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit ], [ %i.bl, %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53 ], [ %.sroa.016.0, %bb.s ], [ %.sroa.016.0, %bb.t ], [ %.sroa.016.0, %bb.w ] ; 3 uses
  %i.bf = icmp eq i64 %.sroa.016.1, 113
  br i1 %i.bf, label %bb.ae, label %bb.ad

bb.aa:                                            ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit.thread
  store i32 -16382, ptr %i.i, align 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit.thread, %bb.aa
  %i.bg = phi i32 [ %i.as, %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit.thread ], [ -16382, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bh = add i128 %i.at, 1                       ; 4 uses
  store i128 %i.bh, ptr %1, align 16, !alias.scope !1319
  %i.bi = icmp eq i128 %i.bh, 0
  br i1 %i.bi, label %bb.ab, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53

bb.ab:                                            ; preds = %.lr.ph.i
  store i128 1, ptr %i.a, align 16
  call void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedooECsileJQcQObtj_7hir_def(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(16) @41, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #35
  unreachable

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = tail call range(i128 0, 129) i128 @llvm.ctlz.i128(i128 %i.bh, i1 true) ; 2 uses
  %i.bk = trunc nuw nsw i128 %i.bj to i64
  %i.bl = sub nuw nsw i64 128, %i.bk
  %i.bm = icmp eq i128 %i.bj, 14
  br i1 %i.bm, label %bb.ac, label %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit.thread139

bb.ac:                                            ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit53
  %i.bn = icmp eq i32 %i.bg, 16383
  br i1 %i.bn, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit76, label %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i60

bb.ad:                                            ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit.thread139
  %i.bo = icmp ult i64 %.sroa.016.1, 113
  br i1 %i.bo, label %bb.ag, label %bb.af, !prof !1288

bb.ae:                                            ; preds = %_RNvMsb_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeINtB5_9IeeeFloatNtB5_5QuadSE20round_away_from_zeroCslLuZgPVt6hg_3ide.exit.thread139
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 16, ptr %i.bp, align 16
  br label %bb.c

bb.af:                                            ; preds = %bb.ad
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #35
  unreachable

bb.ag:                                            ; preds = %bb.ad
  %i.bq = icmp eq i64 %.sroa.016.1, 0
  br i1 %i.bq, label %.thread151, label %bb.ah

.thread151:                                       ; preds = %bb.ag
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 22
  %spec.select179 = and i8 %.sroa.4.0.copyload.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %1, ptr noundef nonnull align 16 dereferenceable(21) @93, i64 21, i1 false)
  store i8 %spec.select179, ptr %.sroa.5.0..sroa_idx, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.496.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @93, i64 22), i64 10, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread151
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 24, ptr %i.br, align 16
  br label %bb.c

_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i60: ; preds = %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  %i.bs = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bg, i32 1) ; 2 uses
  %i.bt = extractvalue { i32, i1 } %i.bs, 1
  br i1 %i.bt, label %bb.ai, label %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit73, !prof !167

_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig11shift_right.exit73: ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i60
  %i.bu = extractvalue { i32, i1 } %i.bs, 0
  store i32 %i.bu, ptr %i.i, align 16, !alias.scope !1325, !noalias !1322
  %i.bv = lshr i128 %i.bh, 1
  store i128 %i.bv, ptr %1, align 16, !alias.scope !1322, !noalias !1325
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 16, ptr %i.bw, align 16
  br label %bb.c

bb.ai:                                            ; preds = %_RNvMsc_NtCs6ZvMrL6DPuG_13rustc_apfloat4ieeeNtB5_4Loss18through_truncation.exit.thread15.i60
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #35, !noalias !1327
  unreachable

_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit76: ; preds = %bb.ac
  %spec.select180 = and i8 %.sroa.4.0.copyload.i, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 20, ptr %i.bx, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %0, ptr noundef nonnull align 16 dereferenceable(21) @95, i64 21, i1 false)
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %spec.select180, ptr %.sroa.4123.0..sroa_idx, align 1
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.5124.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @95, i64 22), i64 10, i1 false)
  br label %bb.c

.thread141:                                       ; preds = %_RNvNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee3sig4omsb.exit, %bb.z
  %.sroa.3.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 22
  %spec.select181 = and i8 %.sroa.3.0.copyload, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %1, ptr noundef nonnull align 16 dereferenceable(21) @93, i64 21, i1 false)
  store i8 %spec.select181, ptr %.sroa.5.0..sroa_idx, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.490.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @93, i64 22), i64 10, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.z, %.thread141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.by, align 16
  br label %bb.c

bb.ak:                                            ; preds = %bb.h
  call void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedNtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee4LossBM_ECsileJQcQObtj_7hir_def(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @43, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #35
  unreachable

bb.al:                                            ; preds = %bb.h
  %i.bz = sub i32 %i.j, %spec.store.select1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1331)
  %i.ca = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.j, i32 %i.bz) ; 2 uses
  %i.cb = extractvalue { i32, i1 } %i.ca, 1
  br i1 %i.cb, label %bb.am, label %.split.i, !prof !167

.split.i:                                         ; preds = %bb.al
  %i.cc = extractvalue { i32, i1 } %i.ca, 0
  store i32 %i.cc, ptr %i.i, align 16, !alias.scope !1331, !noalias !1328
  %i.cd = and i32 %i.bz, 127
  %i.ce = and i32 %i.bz, 127
  %.not18.i = icmp eq i32 %i.ce, 0
  %.not189 = icmp ult i32 %i.bz, 128
  %narrow = select i1 %.not18.i, i32 0, i32 %i.cd
  %i.cf = zext nneg i32 %narrow to i128
  %.sink211 = shl i128 %i.c, %i.cf
  %spec.select210 = select i1 %.not189, i128 %.sink211, i128 0
  store i128 %spec.select210, ptr %1, align 16, !alias.scope !1328, !noalias !1331
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.cg, align 16
  br label %bb.c

bb.am:                                            ; preds = %bb.al
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #35, !noalias !1333
  unreachable

bb.an:                                            ; preds = %bb.f
  switch i8 %2, label %default.unreachable200 [
    i8 2, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88.sink.split
    i8 1, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88
    i8 0, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88.sink.split
    i8 3, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88
    i8 4, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88.sink.split
  ]

bb.ao:                                            ; preds = %bb.f
  %i.ch = and i8 %2, 6
  %switch = icmp eq i8 %i.ch, 2
  br i1 %switch, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88, label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88.sink.split

_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88.sink.split: ; preds = %bb.ao, %bb.an, %bb.an, %bb.an
  %.sroa.5103.1.ph = phi i8 [ 1, %bb.an ], [ 1, %bb.an ], [ 1, %bb.an ], [ 0, %bb.ao ]
  br label %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88

_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88: ; preds = %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88.sink.split, %bb.an, %bb.an, %bb.ao
  %.sroa.034.0168 = phi i8 [ 16, %bb.an ], [ 16, %bb.an ], [ 16, %bb.ao ], [ 20, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88.sink.split ]
  %.sroa.097.0166 = phi i128 [ 10384593717069655257060992658440191, %bb.an ], [ 10384593717069655257060992658440191, %bb.an ], [ 10384593717069655257060992658440191, %bb.ao ], [ 0, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88.sink.split ]
  %.sroa.399.0164 = phi i32 [ 16383, %bb.an ], [ 16383, %bb.an ], [ 16383, %bb.ao ], [ 16384, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88.sink.split ]
  %.sroa.4101.0162 = phi i8 [ 2, %bb.an ], [ 2, %bb.an ], [ 2, %bb.ao ], [ 0, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88.sink.split ]
  %.sroa.5103.1 = phi i8 [ 1, %bb.an ], [ 1, %bb.an ], [ 0, %bb.ao ], [ %.sroa.5103.1.ph, %_RNvYINtNtCs6ZvMrL6DPuG_13rustc_apfloat4ieee9IeeeFloatNtB5_5QuadSENtB7_5Float9copy_signCslLuZgPVt6hg_3ide.exit88.sink.split ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.034.0168, ptr %i.ci, align 16
  store i128 %.sroa.097.0166, ptr %0, align 16
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.399.0164, ptr %.sroa.4106.0..sroa_idx, align 16
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sroa.4101.0162, ptr %.sroa.5107.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %.sroa.5103.1, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @95, i64 22), i64 10, i1 false)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCslLuZgPVt6hg_3ide14view_item_tree14view_item_tree(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 6 uses
  %i.b = alloca [12 x i8], align 4                ; 6 uses
  %i.c = alloca [272 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @60, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @60, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @60, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) @60, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @60, i64 32, i1 false)
  store ptr %1, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %1, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr @28, ptr %.sroa.4.0..sroa_idx7, align 8
  %.sroa.5.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx8, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @60, i64 32, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @60, i64 32, i1 false)
  %i.i = invoke { i32, i32 } @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl11first_crate(ptr noundef nonnull align 8 %i.h, i32 noundef %2)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8Xq8PKFYOms_3hir9semantics9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(272) %i.c) #37
          to label %bb.k unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.k = extractvalue { i32, i32 } %i.i, 0        ; 2 uses
  %i.l = extractvalue { i32, i32 } %i.i, 1
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = invoke { i32, i32 } @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl20attach_first_edition(ptr noundef nonnull align 8 %i.h, i32 noundef %2)
          to label %bb.f unwind label %bb.b       ; 2 uses

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.n = extractvalue { i32, i32 } %i.m, 0        ; 2 uses
  %i.o = extractvalue { i32, i32 } %i.m, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.n, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.o, ptr %i.q, align 4
  store i32 0, ptr %i.b, align 4
  %i.r = invoke noundef nonnull align 8 ptr @_RNvNtCsileJQcQObtj_7hir_def9item_tree14file_item_tree(ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @96, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.b, i32 noundef %i.k, i32 noundef %i.l)
          to label %bb.g unwind label %bb.b

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = invoke noundef i32 @_RINvMs9_NvNtCsgIpRO4v45SJ_7base_db17editioned_file_id1__NtB8_15EditionedFileId5fieldDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ECslLuZgPVt6hg_3ide(i32 noundef %i.n, i32 noundef %i.o, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) @62)
          to label %bb.h unwind label %bb.b

bb.h:                                             ; preds = %bb.g
  %i.t = lshr i32 %i.s, 23
  %i.u = trunc i32 %i.t to i8                     ; 2 uses
  %i.v = icmp ult i8 %i.u, 4
  call void @llvm.assume(i1 %i.v)
  invoke void @_RNvMs0_NtCsileJQcQObtj_7hir_def9item_treeNtB5_8ItemTree12pretty_print(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.r, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @96, i8 noundef %i.u)
          to label %bb.i unwind label %bb.b

bb.i:                                             ; preds = %bb.h, %bb.e
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8Xq8PKFYOms_3hir9semantics9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(272) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.j:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.k:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCslLuZgPVt6hg_3ide16extend_selection12adj_comments(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, i1 noundef zeroext %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = tail call noundef nonnull ptr @_RNvXst_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokensNtB5_7CommentNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) ; 2 uses
  %.val26 = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val26, i64 48 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !noalias !1334, !noundef !19 ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.e, !prof !167

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #38
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB1U_6cursor10SyntaxNodeNtB2I_11SyntaxTokenENCNvMs5_B2I_B37_20siblings_with_tokens0ENvYIB1Q_INtNtB1U_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB4g_11SyntaxTokenB4C_EEINtNtB4_7convert4FromB1P_E4fromEECslLuZgPVt6hg_3ide.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i, %bb.i, %bb.k, %.body, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i, %bb.d
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.d ], [ %.sroa.0.3, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i ], [ %.sroa.0.3, %.body ], [ %.sroa.0.3, %bb.k ], [ %.sroa.0.2167, %bb.i ], [ %.sroa.0.2167, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i ] ; 3 uses
  %.pn16.pn = phi { ptr, i32 } [ %i.l, %bb.d ], [ %.pn16, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i ], [ %.pn16, %.body ], [ %.pn16, %bb.k ], [ %i.u, %bb.i ], [ %i.u, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0) ]
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !noundef !19
  %i.j = add i32 %i.i, -1                         ; 2 uses
  store i32 %i.j, ptr %i.h, align 4
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens7CommentECslLuZgPVt6hg_3ide.exit

bb.c:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB1U_6cursor10SyntaxNodeNtB2I_11SyntaxTokenENCNvMs5_B2I_B37_20siblings_with_tokens0ENvYIB1Q_INtNtB1U_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB4g_11SyntaxTokenB4C_EEINtNtB4_7convert4FromB1P_E4fromEECslLuZgPVt6hg_3ide.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0) #33
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens7CommentECslLuZgPVt6hg_3ide.exit unwind label %bb.ak

bb.d:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i35, %bb.b
  %.sroa.0.1 = phi ptr [ %i.d, %bb.b ], [ %.sroa.0.2167, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i35 ]
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB1U_6cursor10SyntaxNodeNtB2I_11SyntaxTokenENCNvMs5_B2I_B37_20siblings_with_tokens0ENvYIB1Q_INtNtB1U_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB4g_11SyntaxTokenB4C_EEINtNtB4_7convert4FromB1P_E4fromEECslLuZgPVt6hg_3ide.exit

bb.e:                                             ; preds = %bb.a
  %i.m = add nuw i32 %i.f, 1
  store i32 %i.m, ptr %i.e, align 4, !noalias !1334
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1337
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.f

.thread70:                                        ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECslLuZgPVt6hg_3ide.exit47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1337
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB1U_6cursor10SyntaxNodeNtB2I_11SyntaxTokenENCNvMs5_B2I_B37_20siblings_with_tokens0ENvYIB1Q_INtNtB1U_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB4g_11SyntaxTokenB4C_EEINtNtB4_7convert4FromB1P_E4fromEECslLuZgPVt6hg_3ide.exit37

bb.f:                                             ; preds = %bb.e, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECslLuZgPVt6hg_3ide.exit47
  %.sroa.0.2167 = phi ptr [ %i.d, %bb.e ], [ %.sroa.0.6, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECslLuZgPVt6hg_3ide.exit47 ] ; 19 uses
  %.sroa.056.0166 = phi i64 [ 1, %bb.e ], [ %i.af, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECslLuZgPVt6hg_3ide.exit47 ] ; 2 uses
  %.sroa.8.0165 = phi ptr [ %.val26, %bb.e ], [ %i.ag, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECslLuZgPVt6hg_3ide.exit47 ] ; 17 uses
  store i64 %.sroa.056.0166, ptr %i.b, align 8, !noalias !1337
  store ptr %.sroa.8.0165, ptr %i.n, align 8, !noalias !1337
  br i1 %1, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = invoke { i64, ptr } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan6cursorINtNtB7_13utility_types11NodeOrTokenNtB5_10SyntaxNodeNtB5_11SyntaxTokenE21prev_sibling_or_token(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %bb.l unwind label %bb.i, !noalias !1337

bb.h:                                             ; preds = %bb.f
  %i.t = invoke { i64, ptr } @_RNvMs6_NtCs9GitHPCrz2Q_5rowan6cursorINtNtB7_13utility_types11NodeOrTokenNtB5_10SyntaxNodeNtB5_11SyntaxTokenE21next_sibling_or_token(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %bb.l unwind label %bb.i, !noalias !1337

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0165) ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.8.0165, i64 48 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !noalias !1337, !noundef !19
  %i.x = add i32 %i.w, -1                         ; 2 uses
  store i32 %i.x, ptr %i.v, align 4, !noalias !1337
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB1U_6cursor10SyntaxNodeNtB2I_11SyntaxTokenENCNvMs5_B2I_B37_20siblings_with_tokens0ENvYIB1Q_INtNtB1U_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB4g_11SyntaxTokenB4C_EEINtNtB4_7convert4FromB1P_E4fromEECslLuZgPVt6hg_3ide.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i: ; preds = %bb.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.8.0165) #33
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtB1U_6cursor10SyntaxNodeNtB2I_11SyntaxTokenENCNvMs5_B2I_B37_20siblings_with_tokens0ENvYIB1Q_INtNtB1U_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB4g_11SyntaxTokenB4C_EEINtNtB4_7convert4FromB1P_E4fromEECslLuZgPVt6hg_3ide.exit unwind label %bb.j, !noalias !1337

bb.j:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36, !noalias !1337
  unreachable

.body:                                            ; preds = %.loopexit97, %.loopexit.split-lp98, %.loopexit.split-lp, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.sink.split.i40
  %.sroa.0.3 = phi ptr [ %.sroa.0.5, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.sink.split.i40 ], [ %.sroa.0.5, %.loopexit.split-lp ], [ %.sroa.0.6, %.loopexit97 ], [ %.sroa.0.2167, %.loopexit.split-lp98 ] ; 3 uses
end_hunk_1
