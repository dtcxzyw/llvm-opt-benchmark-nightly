Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.12?download=true
inline.NumInlined: 1137
inline.NumDeleted: 369
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur27box_blur_vertical_pass_implfEB6_:bb.a
  store float %i.bp, ptr %i.bn, align 4
  %i.bq = add nuw i64 %.sroa.559.0120.us, 3       ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %i.bm
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.bm
  %.val44.us.2 = load float, ptr %i.bs, align 4, !noundef !5
  %i.bt = fmul float %.val44.us.2, %i.w
  store float %i.bt, ptr %i.br, align 4
  %i.bu = add nuw i64 %.sroa.559.0120.us, 4       ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %i.bq
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.bq
  %.val44.us.3 = load float, ptr %i.bw, align 4, !noundef !5
  %i.bx = fmul float %.val44.us.3, %i.w
  store float %i.bx, ptr %i.bv, align 4
  %exitcond135.not.3 = icmp eq i64 %i.bu, %.sroa.0.sroa.6.0.copyload
  br i1 %exitcond135.not.3, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !130

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, %._crit_edge
  %.sroa.559.0120 = phi i64 [ %i.by, %._crit_edge ], [ %.sroa.0.sroa.5.0.copyload, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 3 uses
  %.sroa.8.0119 = phi i64 [ %i.ca, %._crit_edge ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ] ; 2 uses
  %i.by = add nuw i64 %.sroa.559.0120, 1
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.559.0120
  %i.ca = add i64 %.sroa.8.0119, 1                ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.559.0120
  %.val44 = load float, ptr %i.cb, align 4, !noundef !5
  %i.cc = fmul float %.val44, %i.w
  br label %bb.t

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.us, %middle.block, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_7IterMutfEECsa5QsYiPB8Gl_5image.exit
  %i.cd = urem i64 %4, %5                         ; 2 uses
  %i.ce = sub nuw nsw i64 %4, %i.cd               ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !152
  store ptr %i.cf, ptr %i.c, align 8, !noalias !153
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.cd, ptr %.sroa.466.0..sroa_idx, align 8, !noalias !153
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %3, ptr %.sroa.567.0..sroa_idx, align 8, !noalias !153
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.ce, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !153
  %.sroa.768.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %5, ptr %.sroa.768.0..sroa_idx, align 8, !noalias !153
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c, i64 noundef 0, i64 noundef range(i64 1, 4294967296) %i.aa)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.ci = load i64, ptr %i.cg, align 8, !alias.scope !154, !noundef !5 ; 2 uses
  %i.cj = load i64, ptr %i.ch, align 8, !alias.scope !154, !noundef !5
  %i.ck = icmp ult i64 %i.ci, %i.cj
  br i1 %i.ck, label %.lr.ph, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread

.lr.ph:                                           ; preds = %bb.j
  %i.cl = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.678.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.780.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %.sroa.882.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %.sroa.983.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %broadcast.splatinsert209 = insertelement <4 x float> poison, float %i.y, i64 0
  %broadcast.splat210 = shufflevector <4 x float> %broadcast.splatinsert209, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.k

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit, %middle.block217, %bb.r
  %i.cm = load i64, ptr %i.cg, align 8, !alias.scope !154, !noundef !5 ; 2 uses
  %i.cn = load i64, ptr %i.ch, align 8, !alias.scope !154, !noundef !5
  %i.co = icmp ult i64 %i.cm, %i.cn
  br i1 %i.co, label %bb.k, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread

bb.k:                                             ; preds = %.lr.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit
  %i.cp = phi i64 [ %i.ci, %.lr.ph ], [ %i.cm, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit ] ; 3 uses
  %i.cq = add nuw i64 %i.cp, 1
  store i64 %i.cq, ptr %i.cg, align 8, !alias.scope !154
  %i.cr = invoke { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMutfENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i, i64 noundef %i.cp)
          to label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.k
  %i.cs = extractvalue { ptr, i64 } %i.cr, 0      ; 3 uses
  %i.ct = extractvalue { ptr, i64 } %i.cr, 1
  %.not37 = icmp eq ptr %i.cs, null
  br i1 %.not37, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread, label %bb.n

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit47 unwind label %bb.l

bb.l:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit47: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.n:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit
  %.val.i = load i64, ptr %i.cl, align 8, !alias.scope !155, !noundef !5
  %i.cw = add nuw i64 %.val.i, %i.cp              ; 2 uses
  %i.cx = add i64 %i.v, %i.cw
  %..i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.ab, i64 %i.cx)
  %i.cy = mul i64 %..i, %2                        ; 4 uses
  %i.cz = sub i64 %i.cw, %i.u
  %..i48 = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.cz, i64 0)
  %i.da = mul i64 %..i48, %2                      ; 4 uses
  %i.db = add i64 %i.cy, %i.z                     ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.cy
  %.not38 = icmp ugt i64 %i.db, %1
  %or.cond = or i1 %i.dc, %.not38
  br i1 %or.cond, label %.invoke, label %bb.o, !prof !18

bb.o:                                             ; preds = %bb.n
  %i.dd = add i64 %i.da, %i.z                     ; 3 uses
  %i.de = icmp ult i64 %i.dd, %i.da
  %.not39 = icmp ugt i64 %i.dd, %1
  %or.cond41 = or i1 %i.de, %.not39
  br i1 %or.cond41, label %.invoke, label %bb.p, !prof !18

.invoke:                                          ; preds = %bb.o, %bb.n
  %i.df = phi i64 [ %i.cy, %bb.n ], [ %i.da, %bb.o ]
  %i.dg = phi i64 [ %i.db, %bb.n ], [ %i.dd, %bb.o ]
  %i.dh = phi ptr [ @9, %bb.n ], [ @8, %bb.o ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.df, i64 noundef %i.dg, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dh) #24
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cy ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.da ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.z
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.z
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_EINtB5_7ZipImplBW_BW_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noundef nonnull %i.di, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dl)
          to label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipB3_ECsa5QsYiPB8Gl_5image.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipB3_ECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.p
  %i.dm = load ptr, ptr %i.aj, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.dn = load i64, ptr %i.ak, align 8, !noundef !5
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !157
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterfEB10_EINtB13_7IterMutfEEINtB5_7ZipImplBW_B1x_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noundef nonnull %i.dm, ptr noundef nonnull %i.do)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipB3_ECsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.g, i64 80, i1 false), !noalias !159
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.a, ptr noundef nonnull %i.cs, ptr noundef nonnull %i.dp)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.072.0.copyload = load ptr, ptr %i.h, align 8 ; 5 uses
  %.sroa.474.0.copyload = load ptr, ptr %.sroa.474.0..sroa_idx, align 8 ; 5 uses
  %.sroa.576.0.copyload = load i64, ptr %.sroa.576.0..sroa_idx, align 8 ; 3 uses
  %.sroa.678.0.copyload = load ptr, ptr %.sroa.678.0..sroa_idx, align 8 ; 5 uses
  %.sroa.780.0.copyload = load i64, ptr %.sroa.780.0..sroa_idx, align 8 ; 5 uses
  %.sroa.882.0.copyload = load ptr, ptr %.sroa.882.0..sroa_idx, align 8 ; 5 uses
  %.sroa.983.0.copyload = load i64, ptr %.sroa.983.0..sroa_idx, align 8 ; 9 uses
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8 ; 6 uses
  %i.dq = icmp ult i64 %.sroa.983.0.copyload, %.sroa.11.0.copyload
  br i1 %i.dq, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.072.0.copyload), "nonnull"(ptr %.sroa.474.0.copyload), "nonnull"(ptr %.sroa.678.0.copyload), "nonnull"(ptr %.sroa.882.0.copyload) ]
  %i.dr = sub nuw i64 %.sroa.11.0.copyload, %.sroa.983.0.copyload ; 3 uses
  %min.iters.check190 = icmp ult i64 %i.dr, 8
  br i1 %min.iters.check190, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.preheader, label %vector.memcheck191

vector.memcheck191:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %i.ds = shl i64 %.sroa.983.0.copyload, 2
  %i.dt = getelementptr i8, ptr %.sroa.882.0.copyload, i64 %i.ds ; 3 uses
  %i.du = shl i64 %.sroa.11.0.copyload, 2
  %i.dv = getelementptr i8, ptr %.sroa.882.0.copyload, i64 %i.du ; 3 uses
  %i.dw = add i64 %.sroa.780.0.copyload, %.sroa.983.0.copyload
  %i.dx = shl i64 %i.dw, 2
  %i.dy = getelementptr i8, ptr %.sroa.678.0.copyload, i64 %i.dx ; 3 uses
  %i.dz = add i64 %.sroa.780.0.copyload, %.sroa.11.0.copyload
  %i.ea = shl i64 %i.dz, 2
  %i.eb = getelementptr i8, ptr %.sroa.678.0.copyload, i64 %i.ea ; 3 uses
  %bound0 = icmp ult ptr %i.dt, %i.eb
  %bound1 = icmp ult ptr %i.dy, %i.dv
  %found.conflict = and i1 %bound0, %bound1
  %10 = add i64 %.sroa.576.0.copyload, %.sroa.780.0.copyload ; 2 uses
  %i.ec = add i64 %10, %.sroa.983.0.copyload
  %i.ed = shl i64 %i.ec, 2                        ; 2 uses
  %i.ee = getelementptr i8, ptr %.sroa.072.0.copyload, i64 %i.ed ; 2 uses
  %11 = add i64 %10, %.sroa.11.0.copyload
  %12 = shl i64 %11, 2                            ; 2 uses
  %i.ef = getelementptr i8, ptr %.sroa.072.0.copyload, i64 %12 ; 2 uses
  %bound0.a = icmp ult ptr %i.dt, %i.ef
  %bound1.a = icmp ult ptr %i.ee, %i.dv
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %conflict.rdx = or i1 %found.conflict, %found.conflict.a
  %13 = getelementptr i8, ptr %.sroa.474.0.copyload, i64 %i.ed ; 2 uses
  %14 = getelementptr i8, ptr %.sroa.474.0.copyload, i64 %12 ; 2 uses
  %bound0195 = icmp ult ptr %i.dt, %14
  %bound1196 = icmp ult ptr %13, %i.dv
  %found.conflict197 = and i1 %bound0195, %bound1196
  %conflict.rdx198 = or i1 %conflict.rdx, %found.conflict197
  %bound0199 = icmp ult ptr %i.dy, %i.ef
  %bound1200 = icmp ult ptr %i.ee, %i.eb
  %found.conflict201 = and i1 %bound0199, %bound1200
  %conflict.rdx202 = or i1 %conflict.rdx198, %found.conflict201
  %bound0203 = icmp ult ptr %i.dy, %14
  %bound1204 = icmp ult ptr %13, %i.eb
  %found.conflict205 = and i1 %bound0203, %bound1204
  %conflict.rdx206 = or i1 %conflict.rdx202, %found.conflict205
  br i1 %conflict.rdx206, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.preheader, label %vector.ph207

vector.ph207:                                     ; preds = %vector.memcheck191
  %n.vec208 = and i64 %i.dr, -4                   ; 3 uses
  %i.eg = add i64 %.sroa.983.0.copyload, %n.vec208
  br label %vector.body211

vector.body211:                                   ; preds = %vector.body211, %vector.ph207
  %index212 = phi i64 [ 0, %vector.ph207 ], [ %index.next216, %vector.body211 ] ; 2 uses
  %i.eh = add nuw i64 %.sroa.983.0.copyload, %index212 ; 2 uses
  %i.ei = add i64 %i.eh, %.sroa.780.0.copyload    ; 2 uses
  %i.ej = add i64 %i.ei, %.sroa.576.0.copyload    ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.sroa.072.0.copyload, i64 %i.ej
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.sroa.882.0.copyload, i64 %i.eh
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.sroa.678.0.copyload, i64 %i.ei ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.sroa.474.0.copyload, i64 %i.ej
  %wide.load213 = load <4 x float>, ptr %i.em, align 4, !alias.scope !160, !noalias !161 ; 2 uses
  %i.eo = fmul <4 x float> %broadcast.splat210, %wide.load213
  %i.ep = call nsz <4 x float> @llvm.minimumnum.v4f32(<4 x float> %i.eo, <4 x float> splat (float 1.000000e+00))
  %i.eq = call nsz <4 x float> @llvm.maximumnum.v4f32(<4 x float> %i.ep, <4 x float> zeroinitializer)
  store <4 x float> %i.eq, ptr %i.el, align 4, !alias.scope !162, !noalias !163
  %wide.load214 = load <4 x float>, ptr %i.ek, align 4, !alias.scope !164
  %i.er = fadd <4 x float> %wide.load213, %wide.load214
  %wide.load215 = load <4 x float>, ptr %i.en, align 4, !alias.scope !165
  %i.es = fsub <4 x float> %i.er, %wide.load215
  store <4 x float> %i.es, ptr %i.em, align 4, !alias.scope !160, !noalias !161
  %index.next216 = add nuw i64 %index212, 4       ; 2 uses
  %i.et = icmp eq i64 %index.next216, %n.vec208
  br i1 %i.et, label %middle.block217, label %vector.body211, !llvm.loop !149

middle.block217:                                  ; preds = %vector.body211
  %cmp.n218 = icmp eq i64 %i.dr, %n.vec208
  br i1 %cmp.n218, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.preheader: ; preds = %vector.memcheck191, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, %middle.block217
  %.sroa.983.0121.ph = phi i64 [ %.sroa.983.0.copyload, %vector.memcheck191 ], [ %.sroa.983.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph ], [ %i.eg, %middle.block217 ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit
  %.sroa.983.0121 = phi i64 [ %i.fa, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit ], [ %.sroa.983.0121.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.preheader ] ; 3 uses
  %i.eu = add i64 %.sroa.983.0121, %.sroa.780.0.copyload ; 2 uses
  %i.ev = add i64 %i.eu, %.sroa.576.0.copyload    ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.sroa.072.0.copyload, i64 %i.ev
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.sroa.882.0.copyload, i64 %.sroa.983.0121
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.sroa.678.0.copyload, i64 %i.eu ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.sroa.474.0.copyload, i64 %i.ev
  %i.fa = add nuw i64 %.sroa.983.0121, 1          ; 2 uses
  %i.fb = load float, ptr %i.ey, align 4, !noundef !5 ; 2 uses
  %i.fc = fmul float %i.y, %i.fb
  %i.fd = call nsz float @llvm.minimumnum.f32(float %i.fc, float 1.000000e+00)
  %i.fe = call nsz noundef float @llvm.maximumnum.f32(float %i.fd, float 0.000000e+00)
  store float %i.fe, ptr %i.ex, align 4
  %.val43 = load float, ptr %i.ew, align 4, !noundef !5
  %i.ff = fadd float %i.fb, %.val43
  %.val42 = load float, ptr %i.ez, align 4, !noundef !5
  %i.fg = fsub float %i.ff, %.val42
  store float %i.fg, ptr %i.ey, align 4
  %exitcond136.not = icmp eq i64 %i.fa, %.sroa.11.0.copyload
  br i1 %exitcond136.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter4IterfEB14_EINtB17_7IterMutfEEB1B_EINtB5_7ZipImplBW_B1B_E4nextCsa5QsYiPB8Gl_5image.exit, !llvm.loop !150

bb.s:                                             ; preds = %bb.u
  unreachable

._crit_edge:                                      ; preds = %bb.v
  store float %i.fm, ptr %i.bz, align 4
  %exitcond134.not = icmp eq i64 %i.ca, %i.aq
  br i1 %exitcond134.not, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit

bb.t:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit, %bb.v
  %.sroa.01.0118 = phi float [ %i.cc, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit ], [ %i.fm, %bb.v ]
  %.sroa.062.0117 = phi i64 [ 1, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterfEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit ], [ %i.fk, %bb.v ] ; 3 uses
  %..i56 = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.ab, i64 %.sroa.062.0117)
  %i.fh = mul i64 %..i56, %2
  %i.fi = add i64 %i.fh, %.sroa.8.0119            ; 3 uses
  %i.fj = icmp ult i64 %i.fi, %1
  br i1 %i.fj, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.fi, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #24
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.t
  %i.fk = add nuw i64 %.sroa.062.0117, 1
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fi
  %.val = load float, ptr %i.fl, align 4, !noundef !5
  %i.fm = fadd float %.sroa.01.0118, %.val        ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.062.0117, %i.u
  br i1 %exitcond.not, label %._crit_edge, label %bb.t

bb.w:                                             ; preds = %bb.h
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.g, %bb.w
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur27box_blur_vertical_pass_implhEB6_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef range(i64 1, 17179869181) %2, ptr noalias nofree noundef nonnull %3, i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef range(i64 1, 17179869181) %5, i32 noundef range(i32 1, 0) %6, i32 noundef range(i32 1, 0) %7, i64 noundef %8, i64 noundef range(i64 1, 5) %9) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [64 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [80 x i8], align 8                ; 4 uses
  %i.h = alloca [112 x i8], align 8               ; 9 uses
  %i.i = alloca [72 x i8], align 8                ; 7 uses
  %i.j = alloca [72 x i8], align 8                ; 2 uses
  %i.k = alloca [48 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 11 uses
  %i.m = zext i32 %6 to i64                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.n = add i64 %8, %i.m                         ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  br i1 %i.o, label %bb.b, label %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 7, ptr %i.e, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 2, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @30, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #24
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtCsa5QsYiPB8Gl_5image5error10ImageErrorEEB12_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.e) #22
          to label %common.resume unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.l, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.dh, %bb.l ], [ %i.p, %bb.c ], [ %lpad.loopexit.split-lp180, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.n, ptr %i.r, align 8
  store i8 -1, ptr %i.e, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtCsa5QsYiPB8Gl_5image5error10ImageErrorEEB12_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.s = shl i64 %8, 1
  %i.t = or disjoint i64 %i.s, 1
  %i.u = and i64 %8, 9223372036854775807          ; 4 uses
  %i.v = add nuw i64 %i.u, 1                      ; 2 uses
  %i.w = uitofp i64 %i.v to float                 ; 7 uses
  %i.x = uitofp i64 %i.t to float
  %i.y = fdiv nnan float 1.000000e+00, %i.x
  %i.z = mul nuw nsw i64 %9, %i.m                 ; 7 uses
  %i.aa = zext i32 %7 to i64                      ; 2 uses
  %i.ab = add nsw i64 %i.aa, -1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !187)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !187
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.z, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !noalias !187
  %i.ac = load i64, ptr %i.d, align 8, !range !13, !noalias !187, !noundef !5
  %i.ad = trunc nuw i64 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !14, !noalias !187, !noundef !5 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.ad, label %bb.f, label %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit, !prof !12

bb.f:                                             ; preds = %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !187
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.af, i64 %i.ah) #24, !noalias !187
  unreachable

_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit
  %i.ai = load ptr, ptr %i.ag, align 8, !noalias !187, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !187
  store i64 %i.af, ptr %i.l, align 8, !alias.scope !187
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !alias.scope !187
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 %i.z, ptr %i.ak, align 8, !alias.scope !187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.z
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noundef nonnull %0, ptr noundef nonnull %i.al, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.am)
          to label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_7IterMutfEECsa5QsYiPB8Gl_5image.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.q, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipB3_ECsa5QsYiPB8Gl_5image.exit, %bb.p, %bb.k, %.invoke, %bb.s, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEINtB1q_7IterMutfEEENtNtNtB8_6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.thread, %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit, %bb.w
  %lpad.loopexit.split-lp180 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.h unwind label %bb.g

end_hunk_0
