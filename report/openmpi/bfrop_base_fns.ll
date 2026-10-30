Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/bfrop_base_fns?download=true
inline.NumInlined: 358
inline.NumDeleted: 98
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@pmix_bfrops_base_tma_copy_nspace:bb.a
  store i8 %i.f, ptr %i.e, align 1, !tbaa !29
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %pmix_strncpy.exit.i.split.loop.exit7, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %i.h = getelementptr inbounds nuw i8, ptr %.0910.i.i, i64 2
  %i.i = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 2
  %i.j = load i8, ptr %i.h, align 1, !tbaa !29    ; 2 uses
  store i8 %i.j, ptr %i.i, align 1, !tbaa !29
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %pmix_strncpy.exit.i.split.loop.exit5, label %.preheader.i.3

.preheader.i.3:                                   ; preds = %.preheader.i.2
  %i.l = getelementptr inbounds nuw i8, ptr %.0910.i.i, i64 3
  %i.m = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 3
  %i.n = load i8, ptr %i.l, align 1, !tbaa !29    ; 2 uses
  store i8 %i.n, ptr %i.m, align 1, !tbaa !29
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %pmix_strncpy.exit.i.split.loop.exit3, label %.preheader.i.4

.preheader.i.4:                                   ; preds = %.preheader.i.3
  %i.p = getelementptr inbounds nuw i8, ptr %.0910.i.i, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 4
  %i.r = load i8, ptr %i.p, align 1, !tbaa !29    ; 2 uses
  store i8 %i.r, ptr %i.q, align 1, !tbaa !29
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %pmix_strncpy.exit.i.split.loop.exit1, label %bb.c

bb.c:                                             ; preds = %.preheader.i.4
  %i.t = add nuw nsw i64 %.012.i.i, 5             ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0910.i.i, i64 5
  %i.v = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 5 ; 2 uses
  %exitcond.not.i.i.4 = icmp eq i64 %i.t, 255
  br i1 %exitcond.not.i.i.4, label %pmix_strncpy.exit.i, label %.preheader.i, !llvm.loop !14

pmix_strncpy.exit.i.split.loop.exit1:             ; preds = %.preheader.i.4
  %i.w = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 4
  br label %pmix_strncpy.exit.i

pmix_strncpy.exit.i.split.loop.exit3:             ; preds = %.preheader.i.3
  %i.x = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 3
  br label %pmix_strncpy.exit.i

pmix_strncpy.exit.i.split.loop.exit5:             ; preds = %.preheader.i.2
  %i.y = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 2
  br label %pmix_strncpy.exit.i

pmix_strncpy.exit.i.split.loop.exit7:             ; preds = %.preheader.i.1
  %i.z = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 1
  br label %pmix_strncpy.exit.i

pmix_strncpy.exit.i:                              ; preds = %.preheader.i, %bb.c, %pmix_strncpy.exit.i.split.loop.exit7, %pmix_strncpy.exit.i.split.loop.exit5, %pmix_strncpy.exit.i.split.loop.exit3, %pmix_strncpy.exit.i.split.loop.exit1
  %.08.lcssa.i.i = phi ptr [ %i.z, %pmix_strncpy.exit.i.split.loop.exit7 ], [ %i.w, %pmix_strncpy.exit.i.split.loop.exit1 ], [ %i.y, %pmix_strncpy.exit.i.split.loop.exit5 ], [ %i.v, %bb.c ], [ %i.x, %pmix_strncpy.exit.i.split.loop.exit3 ], [ %.0811.i.i, %.preheader.i ]
  store i8 0, ptr %.08.lcssa.i.i, align 1, !tbaa !29
  br label %pmix_bfrops_base_tma_load_nspace.exit

pmix_bfrops_base_tma_load_nspace.exit:            ; preds = %bb.b, %pmix_strncpy.exit.i
  store ptr %calloc, ptr %0, align 8, !tbaa !57
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %pmix_bfrops_base_tma_load_nspace.exit
  %.0 = phi i32 [ 0, %pmix_bfrops_base_tma_load_nspace.exit ], [ -32, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint nofree nounwind memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @pmix_bfrops_base_tma_proc_create(i64 noundef %0) unnamed_addr #15 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = mul i64 %0, 260
  %i.c = tail call noalias noundef ptr @malloc(i64 noundef %i.b) #27 ; 8 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.loopexit, label %.preheader.preheader, !prof !107

.preheader.preheader:                             ; preds = %bb.b
  %xtraiter = and i64 %0, 3                       ; 3 uses
  %i.d = icmp ult i64 %0, 4
  br i1 %i.d, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %0, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.01 = phi i64 [ 0, %.preheader.preheader.new ], [ %i.p, %.preheader ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.e = getelementptr inbounds nuw [260 x i8], ptr %i.c, i64 %.01 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.e, i8 0, i64 256, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  store i32 -1, ptr %i.f, align 4, !tbaa !108
  %i.g = getelementptr inbounds nuw [260 x i8], ptr %i.c, i64 %.01 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 260
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.h, i8 0, i64 256, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 516
  store i32 -1, ptr %i.i, align 4, !tbaa !108
  %i.j = getelementptr inbounds nuw [260 x i8], ptr %i.c, i64 %.01 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.k, i8 0, i64 256, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 776
  store i32 -1, ptr %i.l, align 4, !tbaa !108
  %i.m = getelementptr inbounds nuw [260 x i8], ptr %i.c, i64 %.01 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 780
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.n, i8 0, i64 256, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1036
  store i32 -1, ptr %i.o, align 4, !tbaa !108
  %i.p = add nuw i64 %.01, 4                      ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.preheader, !llvm.loop !223

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.preheader
  %.01.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.p, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.01.epil = phi i64 [ %i.s, %.preheader.epil ], [ %.01.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.q = getelementptr inbounds nuw [260 x i8], ptr %i.c, i64 %.01.epil ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.q, i8 0, i64 256, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 256
  store i32 -1, ptr %i.r, align 4, !tbaa !108
  %i.s = add nuw i64 %.01.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.preheader.epil, !llvm.loop !224

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.epil, %bb.b, %bb.a
  %.011 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.c, %.preheader.epil ], [ %i.c, %.loopexit.loopexit.unr-lcssa ]
  ret ptr %.011
}

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -32, 1) i32 @pmix_bfrops_base_tma_copy_pinfo(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #16 {
bb.a:
  %calloc.i = tail call dereferenceable_or_null(296) ptr @calloc(i64 1, i64 296) ; 7 uses
  %i.a = icmp eq ptr %calloc.i, null
  br i1 %i.a, label %bb.g, label %bb.b, !prof !107

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(260) %calloc.i, ptr noundef nonnull align 8 dereferenceable(260) %1, i64 260, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.c) #26
  %i.e = getelementptr inbounds nuw i8, ptr %calloc.i, i64 264
  store ptr %i.d, ptr %i.e, align 8, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39   ; 2 uses
  %.not23 = icmp eq ptr %i.g, null
  br i1 %.not23, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.g) #26
  %i.i = getelementptr inbounds nuw i8, ptr %calloc.i, i64 272
  store ptr %i.h, ptr %i.i, align 8, !tbaa !39
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %calloc.i, i64 280
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.l = load <2 x i32>, ptr %i.k, align 8
  store <2 x i32> %i.l, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %calloc.i, i64 288
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.o = load i8, ptr %i.n, align 8
  store i8 %i.o, ptr %i.m, align 8
  store ptr %calloc.i, ptr %0, align 8, !tbaa !226
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ -32, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef i32 @pmix_bfrops_base_tma_copy_darray(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #7 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !258
  %i.a = tail call noalias noundef dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #33 ; 97 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.fw, label %bb.b, !prof !107

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %1, align 8, !tbaa !54     ; 2 uses
  store i16 %i.c, ptr %i.a, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 18 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !56   ; 69 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i64 %i.e, ptr %i.f, align 8, !tbaa !56
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55   ; 40 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i16 %i.c, label %bb.ft [
    i16 12, label %bb.e
    i16 7, label %bb.e
    i16 2, label %bb.e
    i16 13, label %bb.g
    i16 8, label %bb.g
    i16 14, label %bb.i
    i16 9, label %bb.i
    i16 15, label %bb.k
    i16 10, label %bb.k
    i16 1, label %bb.m
    i16 4, label %bb.o
    i16 5, label %bb.q
    i16 3, label %bb.s
    i16 6, label %bb.v
    i16 11, label %bb.v
    i16 16, label %bb.x
    i16 17, label %bb.z
    i16 18, label %bb.ab
    i16 19, label %bb.ad
    i16 20, label %bb.af
    i16 21, label %pmix_bfrops_base_tma_value_create.exit
    i16 22, label %bb.aj
    i16 40, label %bb.al
    i16 23, label %pmix_bfrops_base_tma_app_create.exit
    i16 24, label %bb.bh
    i16 25, label %pmix_bfrops_base_tma_pdata_create.exit
    i16 26, label %bb.bq
    i16 27, label %bb.cj
    i16 42, label %bb.cj
    i16 28, label %bb.co
    i16 30, label %bb.cv
    i16 31, label %.lr.ph116.preheader
    i16 32, label %bb.cx
    i16 33, label %bb.cz
    i16 34, label %bb.db
    i16 35, label %bb.dd
    i16 38, label %pmix_bfrops_base_tma_proc_info_create.exit
    i16 39, label %.thread10
    i16 41, label %pmix_bfrops_base_tma_query_create.exit
    i16 46, label %bb.dw
    i16 47, label %bb.ec
    i16 48, label %bb.eg
    i16 52, label %pmix_bfrops_base_tma_cpuset_create.exit
    i16 53, label %pmix_bfrops_base_tma_geometry_create.exit
    i16 54, label %bb.fa
    i16 55, label %pmix_bfrops_base_tma_endpoint_create.exit
    i16 60, label %bb.fm
    i16 61, label %pmix_bfrops_base_tma_proc_stats_create.exit
    i16 62, label %pmix_bfrops_base_tma_disk_stats_create.exit
    i16 63, label %pmix_bfrops_base_tma_net_stats_create.exit
    i16 64, label %pmix_bfrops_base_tma_node_stats_create.exit
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.k = tail call noalias noundef ptr @malloc(i64 noundef %i.e) #27 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !55
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %.thread10, label %bb.f, !prof !107

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull align 1 %i.i, i64 %i.e, i1 false)
  br label %.sink.split

bb.g:                                             ; preds = %bb.d, %bb.d
  %i.n = shl i64 %i.e, 1                          ; 2 uses
  %i.o = tail call noalias noundef ptr @malloc(i64 noundef %i.n) #27 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !55
  %i.q = icmp eq ptr %i.o, null
  br i1 %i.q, label %.thread10, label %bb.h, !prof !107

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.i, i64 %i.n, i1 false)
  br label %.sink.split

bb.i:                                             ; preds = %bb.d, %bb.d
  %i.r = shl i64 %i.e, 2                          ; 2 uses
  %i.s = tail call noalias noundef ptr @malloc(i64 noundef %i.r) #27 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.s, ptr %i.t, align 8, !tbaa !55
  %i.u = icmp eq ptr %i.s, null
  br i1 %i.u, label %.thread10, label %bb.j, !prof !107

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 1 %i.i, i64 %i.r, i1 false)
  br label %.sink.split

bb.k:                                             ; preds = %bb.d, %bb.d
  %i.v = shl i64 %i.e, 3                          ; 2 uses
  %i.w = tail call noalias noundef ptr @malloc(i64 noundef %i.v) #27 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.w, ptr %i.x, align 8, !tbaa !55
  %i.y = icmp eq ptr %i.w, null
  br i1 %i.y, label %.thread10, label %bb.l, !prof !107

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %i.i, i64 %i.v, i1 false)
  br label %.sink.split

bb.m:                                             ; preds = %bb.d
  %i.z = tail call noalias noundef ptr @malloc(i64 noundef %i.e) #27 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !55
  %i.ab = icmp eq ptr %i.z, null
  br i1 %i.ab, label %.thread10, label %bb.n, !prof !107

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 1 %i.i, i64 %i.e, i1 false)
  br label %.sink.split

bb.o:                                             ; preds = %bb.d
  %i.ac = shl i64 %i.e, 3                         ; 2 uses
  %i.ad = tail call noalias noundef ptr @malloc(i64 noundef %i.ac) #27 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !55
  %i.af = icmp eq ptr %i.ad, null
  br i1 %i.af, label %.thread10, label %bb.p, !prof !107

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %i.i, i64 %i.ac, i1 false)
  br label %.sink.split

bb.q:                                             ; preds = %bb.d
  %i.ag = shl i64 %i.e, 2                         ; 2 uses
  %i.ah = tail call noalias noundef ptr @malloc(i64 noundef %i.ag) #27 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !55
  %i.aj = icmp eq ptr %i.ah, null
  br i1 %i.aj, label %.thread10, label %bb.r, !prof !107

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull align 1 %i.i, i64 %i.ag, i1 false)
  br label %.sink.split

bb.s:                                             ; preds = %bb.d
  %i.ak = shl i64 %i.e, 3
  %i.al = tail call noalias noundef ptr @malloc(i64 noundef %i.ak) #27 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.al, ptr %i.am, align 8, !tbaa !55
  %i.an = icmp eq ptr %i.al, null
  br i1 %i.an, label %.thread10, label %.lr.ph138, !prof !107

.lr.ph138:                                        ; preds = %bb.s, %bb.u
  %.0798137 = phi i64 [ %i.as, %bb.u ], [ 0, %bb.s ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.0798137
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !57 ; 2 uses
  %.not908 = icmp eq ptr %i.ap, null
  br i1 %.not908, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph138
  %i.aq = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.ap) #26
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.0798137
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !57
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph138, %bb.t
  %i.as = add nuw i64 %.0798137, 1                ; 2 uses
  %exitcond210.not = icmp eq i64 %i.as, %i.e
  br i1 %exitcond210.not, label %.sink.split, label %.lr.ph138, !llvm.loop !227

bb.v:                                             ; preds = %bb.d, %bb.d
  %i.at = shl i64 %i.e, 2                         ; 2 uses
  %i.au = tail call noalias noundef ptr @malloc(i64 noundef %i.at) #27 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.au, ptr %i.av, align 8, !tbaa !55
  %i.aw = icmp eq ptr %i.au, null
  br i1 %i.aw, label %.thread10, label %bb.w, !prof !107

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr nonnull align 1 %i.i, i64 %i.at, i1 false)
  br label %.sink.split

bb.x:                                             ; preds = %bb.d
  %i.ax = shl i64 %i.e, 2                         ; 2 uses
  %i.ay = tail call noalias noundef ptr @malloc(i64 noundef %i.ax) #27 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !55
  %i.ba = icmp eq ptr %i.ay, null
  br i1 %i.ba, label %.thread10, label %bb.y, !prof !107

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull align 1 %i.i, i64 %i.ax, i1 false)
  br label %.sink.split

bb.z:                                             ; preds = %bb.d
  %i.bb = shl i64 %i.e, 3                         ; 2 uses
end_hunk_0
begin_hunk_1_@pmix_bfrops_base_tma_copy_darray:bb.a
  store i32 %i.fa, ptr %i.fc, align 8, !tbaa !259
  %i.fd = getelementptr inbounds nuw i8, ptr %i.co, i64 48 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !154 ; 5 uses
  %.not905 = icmp eq i64 %i.fe, 0
  br i1 %.not905, label %.loopexit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ff = getelementptr inbounds nuw i8, ptr %i.co, i64 40 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !153
  %.not906 = icmp eq ptr %i.fg, null
  br i1 %.not906, label %.loopexit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fh = mul i64 %i.fe, 552
  %i.fi = tail call noalias noundef ptr @malloc(i64 noundef %i.fh) #27 ; 7 uses
  %i.fj = icmp eq ptr %i.fi, null
  br i1 %i.fj, label %bb.bb, label %.preheader.i.preheader, !prof !107

.preheader.i.preheader:                           ; preds = %bb.ba
  %xtraiter92 = and i64 %i.fe, 3                  ; 3 uses
  %i.fk = icmp ult i64 %i.fe, 4
  br i1 %i.fk, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter96 = and i64 %i.fe, -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.01.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.fw, %.preheader.i ] ; 5 uses
  %niter97 = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter97.next.3, %.preheader.i ]
  %i.fl = getelementptr inbounds nuw [552 x i8], ptr %i.fi, i64 %.01.i ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fm, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(516) %i.fl, i8 0, i64 516, i1 false)
  %i.fn = getelementptr inbounds nuw [552 x i8], ptr %i.fi, i64 %.01.i ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 552
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 1072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fp, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(516) %i.fo, i8 0, i64 516, i1 false)
  %i.fq = getelementptr inbounds nuw [552 x i8], ptr %i.fi, i64 %.01.i ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 1104
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 1624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fs, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(516) %i.fr, i8 0, i64 516, i1 false)
  %i.ft = getelementptr inbounds nuw [552 x i8], ptr %i.fi, i64 %.01.i ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 1656
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 2176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fv, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(516) %i.fu, i8 0, i64 516, i1 false)
  %i.fw = add nuw i64 %.01.i, 4                   ; 2 uses
  %niter97.next.3 = add nuw i64 %niter97, 4       ; 2 uses
  %niter97.ncmp.3 = icmp eq i64 %niter97.next.3, %unroll_iter96
  br i1 %niter97.ncmp.3, label %.unr-lcssa, label %.preheader.i, !llvm.loop !17

bb.bb:                                            ; preds = %bb.ba
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  store ptr null, ptr %i.fx, align 8, !tbaa !153
  %i.fy = load i64, ptr %i.f, align 8, !tbaa !56
  tail call fastcc void @pmix_bfrops_base_tma_app_free(ptr noundef nonnull %calloc.i911, i64 noundef %i.fy)
  br label %.thread10

.unr-lcssa:                                       ; preds = %.preheader.i
  %lcmp.mod94.not = icmp eq i64 %xtraiter92, 0
  br i1 %lcmp.mod94.not, label %.epilog-lcssa, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.unr-lcssa, %.preheader.i.preheader
  %.01.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.fw, %.unr-lcssa ]
  %lcmp.mod95 = icmp ne i64 %xtraiter92, 0
  tail call void @llvm.assume(i1 %lcmp.mod95)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.01.i.epil = phi i64 [ %i.gb, %.preheader.i.epil ], [ %.01.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %epil.iter93 = phi i64 [ %epil.iter93.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.fz = getelementptr inbounds nuw [552 x i8], ptr %i.fi, i64 %.01.i.epil ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ga, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(516) %i.fz, i8 0, i64 516, i1 false)
  %i.gb = add nuw i64 %.01.i.epil, 1
  %epil.iter93.next = add i64 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i64 %epil.iter93.next, %xtraiter92
  br i1 %epil.iter93.cmp.not, label %.epilog-lcssa, label %.preheader.i.epil, !llvm.loop !229

.epilog-lcssa:                                    ; preds = %.preheader.i.epil, %.unr-lcssa
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fb, i64 40 ; 2 uses
  store ptr %i.fi, ptr %i.gc, align 8, !tbaa !153
  %i.gd = load i64, ptr %i.fd, align 8, !tbaa !154 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fb, i64 48 ; 2 uses
  store i64 %i.gd, ptr %i.ge, align 8, !tbaa !154
  %.not153 = icmp eq i64 %i.gd, 0
  br i1 %.not153, label %.loopexit, label %.lr.ph132

.lr.ph132:                                        ; preds = %.epilog-lcssa, %pmix_bfrops_base_tma_info_xfer.exit
  %.0795130 = phi i64 [ %i.hm, %pmix_bfrops_base_tma_info_xfer.exit ], [ 0, %.epilog-lcssa ] ; 3 uses
  %i.gf = load ptr, ptr %i.gc, align 8, !tbaa !153 ; 2 uses
  %i.gg = getelementptr inbounds nuw [552 x i8], ptr %i.gf, i64 %.0795130 ; 4 uses
  %i.gh = load ptr, ptr %i.ff, align 8, !tbaa !153 ; 2 uses
  %i.gi = getelementptr inbounds nuw [552 x i8], ptr %i.gh, i64 %.0795130 ; 3 uses
  %i.gj = icmp eq ptr %i.gf, null
  %i.gk = icmp eq ptr %i.gh, null
  %i.gl = or i1 %i.gj, %i.gk
  br i1 %i.gl, label %pmix_bfrops_base_tma_info_xfer.exit, label %bb.bc, !prof !107

bb.bc:                                            ; preds = %.lr.ph132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.gg, i8 0, i64 512, i1 false)
  br label %.preheader.i1034

.preheader.i1034:                                 ; preds = %bb.be, %bb.bc
  %.012.i.i1035 = phi i64 [ 0, %bb.bc ], [ %i.ha, %bb.be ] ; 2 uses
  %.0811.i.i1036 = phi ptr [ %i.gg, %bb.bc ], [ %i.hc, %bb.be ] ; 8 uses
  %.0910.i.i1037 = phi ptr [ %i.gi, %bb.bc ], [ %i.hb, %bb.be ] ; 5 uses
  %i.gm = load i8, ptr %.0910.i.i1037, align 1, !tbaa !29 ; 2 uses
  store i8 %i.gm, ptr %.0811.i.i1036, align 1, !tbaa !29
  %i.gn = icmp eq i8 %i.gm, 0
  br i1 %i.gn, label %pmix_bfrops_base_tma_load_key.exit1041, label %.preheader.i1034.1

.preheader.i1034.1:                               ; preds = %.preheader.i1034
  %i.go = getelementptr inbounds nuw i8, ptr %.0910.i.i1037, i64 1
  %i.gp = getelementptr inbounds nuw i8, ptr %.0811.i.i1036, i64 1
  %i.gq = load i8, ptr %i.go, align 1, !tbaa !29  ; 2 uses
  store i8 %i.gq, ptr %i.gp, align 1, !tbaa !29
  %i.gr = icmp eq i8 %i.gq, 0
  br i1 %i.gr, label %pmix_bfrops_base_tma_load_key.exit1041.split.loop.exit187, label %.preheader.i1034.2

.preheader.i1034.2:                               ; preds = %.preheader.i1034.1
  %i.gs = getelementptr inbounds nuw i8, ptr %.0910.i.i1037, i64 2
  %i.gt = getelementptr inbounds nuw i8, ptr %.0811.i.i1036, i64 2
  %i.gu = load i8, ptr %i.gs, align 1, !tbaa !29  ; 2 uses
  store i8 %i.gu, ptr %i.gt, align 1, !tbaa !29
  %i.gv = icmp eq i8 %i.gu, 0
  br i1 %i.gv, label %pmix_bfrops_base_tma_load_key.exit1041.split.loop.exit185, label %bb.bd

bb.bd:                                            ; preds = %.preheader.i1034.2
  %i.gw = getelementptr inbounds nuw i8, ptr %.0811.i.i1036, i64 3 ; 3 uses
  %exitcond.not.i.i1038.2 = icmp eq i64 %.012.i.i1035, 508
  br i1 %exitcond.not.i.i1038.2, label %pmix_bfrops_base_tma_load_key.exit1041, label %.preheader.i1034.3

.preheader.i1034.3:                               ; preds = %bb.bd
  %i.gx = getelementptr inbounds nuw i8, ptr %.0910.i.i1037, i64 3
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !29  ; 2 uses
  store i8 %i.gy, ptr %i.gw, align 1, !tbaa !29
  %i.gz = icmp eq i8 %i.gy, 0
  br i1 %i.gz, label %pmix_bfrops_base_tma_load_key.exit1041, label %bb.be

bb.be:                                            ; preds = %.preheader.i1034.3
  %i.ha = add nuw nsw i64 %.012.i.i1035, 4
  %i.hb = getelementptr inbounds nuw i8, ptr %.0910.i.i1037, i64 4
  %i.hc = getelementptr inbounds nuw i8, ptr %.0811.i.i1036, i64 4
  br label %.preheader.i1034

pmix_bfrops_base_tma_load_key.exit1041.split.loop.exit185: ; preds = %.preheader.i1034.2
  %i.hd = getelementptr inbounds nuw i8, ptr %.0811.i.i1036, i64 2
  br label %pmix_bfrops_base_tma_load_key.exit1041

pmix_bfrops_base_tma_load_key.exit1041.split.loop.exit187: ; preds = %.preheader.i1034.1
  %i.he = getelementptr inbounds nuw i8, ptr %.0811.i.i1036, i64 1
  br label %pmix_bfrops_base_tma_load_key.exit1041

pmix_bfrops_base_tma_load_key.exit1041:           ; preds = %.preheader.i1034, %bb.bd, %.preheader.i1034.3, %pmix_bfrops_base_tma_load_key.exit1041.split.loop.exit187, %pmix_bfrops_base_tma_load_key.exit1041.split.loop.exit185
  %.08.lcssa.i.i1040 = phi ptr [ %i.he, %pmix_bfrops_base_tma_load_key.exit1041.split.loop.exit187 ], [ %i.gw, %bb.bd ], [ %i.hd, %pmix_bfrops_base_tma_load_key.exit1041.split.loop.exit185 ], [ %i.gw, %.preheader.i1034.3 ], [ %.0811.i.i1036, %.preheader.i1034 ]
  store i8 0, ptr %.08.lcssa.i.i1040, align 1, !tbaa !29
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gi, i64 512
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !60 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gg, i64 512
  store i32 %i.hg, ptr %i.hh, align 8, !tbaa !60
  %i.hi = and i32 %i.hg, 16
  %.not20 = icmp eq i32 %i.hi, 0
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gg, i64 520 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gi, i64 520 ; 2 uses
  br i1 %.not20, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %pmix_bfrops_base_tma_load_key.exit1041
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hj, ptr noundef nonnull align 8 dereferenceable(32) %i.hk, i64 32, i1 false)
  br label %pmix_bfrops_base_tma_info_xfer.exit

bb.bg:                                            ; preds = %pmix_bfrops_base_tma_load_key.exit1041
  %i.hl = tail call fastcc i32 @pmix_bfrops_base_tma_value_xfer(ptr noundef nonnull %i.hj, ptr noundef nonnull %i.hk) ; 0 uses
  br label %pmix_bfrops_base_tma_info_xfer.exit

pmix_bfrops_base_tma_info_xfer.exit:              ; preds = %.lr.ph132, %bb.bf, %bb.bg
  %i.hm = add nuw i64 %.0795130, 1                ; 2 uses
  %i.hn = load i64, ptr %i.ge, align 8, !tbaa !154
  %i.ho = icmp ult i64 %i.hm, %i.hn
  br i1 %i.ho, label %.lr.ph132, label %.loopexit, !llvm.loop !230

.loopexit:                                        ; preds = %pmix_bfrops_base_tma_info_xfer.exit, %.epilog-lcssa, %bb.ay, %bb.az
  %i.hp = add nuw i64 %.0796133, 1                ; 2 uses
  %i.hq = load i64, ptr %i.d, align 8, !tbaa !56
  %i.hr = icmp ult i64 %i.hp, %i.hq
  br i1 %i.hr, label %.lr.ph134, label %.sink.split, !llvm.loop !231

bb.bh:                                            ; preds = %bb.d
  %i.hs = tail call fastcc ptr @pmix_bfrops_base_tma_info_create(i64 noundef %i.e) ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.hs, ptr %i.ht, align 8, !tbaa !55
  %i.hu = icmp eq ptr %i.hs, null
  br i1 %i.hu, label %.thread10, label %bb.bi, !prof !107

bb.bi:                                            ; preds = %bb.bh
  %i.hv = load ptr, ptr %i.h, align 8, !tbaa !55  ; 2 uses
  %i.hw = load i64, ptr %i.d, align 8, !tbaa !56  ; 2 uses
  %i.hx = icmp eq i64 %i.hw, 0
  %i.hy = icmp eq ptr %i.hv, null
  %or.cond = select i1 %i.hx, i1 true, i1 %i.hy, !prof !260
  br i1 %or.cond, label %.sink.split, label %.lr.ph129.split, !prof !260

.lr.ph129.split:                                  ; preds = %bb.bi, %pmix_bfrops_base_tma_info_xfer.exit938
  %2 = phi i64 [ %3, %pmix_bfrops_base_tma_info_xfer.exit938 ], [ %i.hw, %bb.bi ]
  %.0794127 = phi i64 [ %4, %pmix_bfrops_base_tma_info_xfer.exit938 ], [ 0, %bb.bi ] ; 3 uses
  %i.hz = getelementptr inbounds nuw [552 x i8], ptr %i.hs, i64 %.0794127 ; 4 uses
  %i.ia = getelementptr inbounds nuw [552 x i8], ptr %i.hv, i64 %.0794127 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.hz, i8 0, i64 512, i1 false)
  br label %.preheader.i1043

.preheader.i1043:                                 ; preds = %bb.bk, %.lr.ph129.split
  %.012.i.i1044 = phi i64 [ 0, %.lr.ph129.split ], [ %i.ip, %bb.bk ] ; 2 uses
  %.0811.i.i1045 = phi ptr [ %i.hz, %.lr.ph129.split ], [ %i.ir, %bb.bk ] ; 8 uses
  %.0910.i.i1046 = phi ptr [ %i.ia, %.lr.ph129.split ], [ %i.iq, %bb.bk ] ; 5 uses
  %i.ib = load i8, ptr %.0910.i.i1046, align 1, !tbaa !29 ; 2 uses
  store i8 %i.ib, ptr %.0811.i.i1045, align 1, !tbaa !29
  %i.ic = icmp eq i8 %i.ib, 0
  br i1 %i.ic, label %pmix_bfrops_base_tma_load_key.exit1050, label %.preheader.i1043.1

.preheader.i1043.1:                               ; preds = %.preheader.i1043
  %i.id = getelementptr inbounds nuw i8, ptr %.0910.i.i1046, i64 1
  %i.ie = getelementptr inbounds nuw i8, ptr %.0811.i.i1045, i64 1
  %i.if = load i8, ptr %i.id, align 1, !tbaa !29  ; 2 uses
  store i8 %i.if, ptr %i.ie, align 1, !tbaa !29
  %i.ig = icmp eq i8 %i.if, 0
  br i1 %i.ig, label %pmix_bfrops_base_tma_load_key.exit1050.split.loop.exit178, label %.preheader.i1043.2

.preheader.i1043.2:                               ; preds = %.preheader.i1043.1
  %i.ih = getelementptr inbounds nuw i8, ptr %.0910.i.i1046, i64 2
  %i.ii = getelementptr inbounds nuw i8, ptr %.0811.i.i1045, i64 2
  %i.ij = load i8, ptr %i.ih, align 1, !tbaa !29  ; 2 uses
  store i8 %i.ij, ptr %i.ii, align 1, !tbaa !29
  %i.ik = icmp eq i8 %i.ij, 0
  br i1 %i.ik, label %pmix_bfrops_base_tma_load_key.exit1050.split.loop.exit176, label %bb.bj

bb.bj:                                            ; preds = %.preheader.i1043.2
  %i.il = getelementptr inbounds nuw i8, ptr %.0811.i.i1045, i64 3 ; 3 uses
  %exitcond.not.i.i1047.2 = icmp eq i64 %.012.i.i1044, 508
  br i1 %exitcond.not.i.i1047.2, label %pmix_bfrops_base_tma_load_key.exit1050, label %.preheader.i1043.3

.preheader.i1043.3:                               ; preds = %bb.bj
  %i.im = getelementptr inbounds nuw i8, ptr %.0910.i.i1046, i64 3
  %i.in = load i8, ptr %i.im, align 1, !tbaa !29  ; 2 uses
  store i8 %i.in, ptr %i.il, align 1, !tbaa !29
  %i.io = icmp eq i8 %i.in, 0
  br i1 %i.io, label %pmix_bfrops_base_tma_load_key.exit1050, label %bb.bk

bb.bk:                                            ; preds = %.preheader.i1043.3
  %i.ip = add nuw nsw i64 %.012.i.i1044, 4
  %i.iq = getelementptr inbounds nuw i8, ptr %.0910.i.i1046, i64 4
  %i.ir = getelementptr inbounds nuw i8, ptr %.0811.i.i1045, i64 4
  br label %.preheader.i1043

pmix_bfrops_base_tma_load_key.exit1050.split.loop.exit176: ; preds = %.preheader.i1043.2
  %i.is = getelementptr inbounds nuw i8, ptr %.0811.i.i1045, i64 2
  br label %pmix_bfrops_base_tma_load_key.exit1050

pmix_bfrops_base_tma_load_key.exit1050.split.loop.exit178: ; preds = %.preheader.i1043.1
  %i.it = getelementptr inbounds nuw i8, ptr %.0811.i.i1045, i64 1
  br label %pmix_bfrops_base_tma_load_key.exit1050

pmix_bfrops_base_tma_load_key.exit1050:           ; preds = %.preheader.i1043, %bb.bj, %.preheader.i1043.3, %pmix_bfrops_base_tma_load_key.exit1050.split.loop.exit178, %pmix_bfrops_base_tma_load_key.exit1050.split.loop.exit176
  %.08.lcssa.i.i1049 = phi ptr [ %i.it, %pmix_bfrops_base_tma_load_key.exit1050.split.loop.exit178 ], [ %i.il, %bb.bj ], [ %i.is, %pmix_bfrops_base_tma_load_key.exit1050.split.loop.exit176 ], [ %i.il, %.preheader.i1043.3 ], [ %.0811.i.i1045, %.preheader.i1043 ]
  store i8 0, ptr %.08.lcssa.i.i1049, align 1, !tbaa !29
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ia, i64 512
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !60 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hz, i64 512
  store i32 %i.iv, ptr %i.iw, align 8, !tbaa !60
  %i.ix = and i32 %i.iv, 16
  %.not19 = icmp eq i32 %i.ix, 0
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hz, i64 520 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ia, i64 520 ; 2 uses
  br i1 %.not19, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %pmix_bfrops_base_tma_load_key.exit1050
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.iy, ptr noundef nonnull align 8 dereferenceable(32) %i.iz, i64 32, i1 false)
  br label %pmix_bfrops_base_tma_info_xfer.exit938

bb.bm:                                            ; preds = %pmix_bfrops_base_tma_load_key.exit1050
  %i.ja = tail call fastcc i32 @pmix_bfrops_base_tma_value_xfer(ptr noundef nonnull %i.iy, ptr noundef nonnull %i.iz) ; 0 uses
  %.pre215 = load i64, ptr %i.d, align 8, !tbaa !56
  br label %pmix_bfrops_base_tma_info_xfer.exit938

pmix_bfrops_base_tma_info_xfer.exit938:           ; preds = %bb.bl, %bb.bm
  %3 = phi i64 [ %2, %bb.bl ], [ %.pre215, %bb.bm ] ; 2 uses
  %4 = add nuw i64 %.0794127, 1                   ; 2 uses
  %i.jb = icmp ult i64 %4, %3
  br i1 %i.jb, label %.lr.ph129.split, label %.sink.split, !llvm.loop !232

pmix_bfrops_base_tma_pdata_create.exit:           ; preds = %bb.d
  %i.jc = mul i64 %i.e, 808
  %calloc.i939 = tail call ptr @calloc(i64 1, i64 %i.jc) ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %calloc.i939, ptr %i.jd, align 8, !tbaa !55
  %i.je = icmp eq ptr %calloc.i939, null
  br i1 %i.je, label %.thread10, label %.lr.ph126, !prof !107

.lr.ph126:                                        ; preds = %pmix_bfrops_base_tma_pdata_create.exit, %pmix_bfrops_base_tma_load_key.exit1059
  %.0793125 = phi i64 [ %i.lh, %pmix_bfrops_base_tma_load_key.exit1059 ], [ 0, %pmix_bfrops_base_tma_pdata_create.exit ] ; 3 uses
  %i.jf = getelementptr inbounds nuw [808 x i8], ptr %calloc.i939, i64 %.0793125 ; 5 uses
  %i.jg = getelementptr inbounds nuw [808 x i8], ptr %i.i, i64 %.0793125 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(808) %i.jf, i8 0, i64 808, i1 false)
  br label %.preheader.i1061

.preheader.i1061:                                 ; preds = %bb.bn, %.lr.ph126
  %.012.i.i1062 = phi i64 [ 0, %.lr.ph126 ], [ %i.jz, %bb.bn ]
  %.0811.i.i1063 = phi ptr [ %i.jf, %.lr.ph126 ], [ %i.kb, %bb.bn ] ; 11 uses
  %.0910.i.i1064 = phi ptr [ %i.jg, %.lr.ph126 ], [ %i.ka, %bb.bn ] ; 6 uses
  %i.jh = load i8, ptr %.0910.i.i1064, align 1, !tbaa !29 ; 2 uses
  store i8 %i.jh, ptr %.0811.i.i1063, align 1, !tbaa !29
  %i.ji = icmp eq i8 %i.jh, 0
  br i1 %i.ji, label %pmix_bfrops_base_tma_load_nspace.exit1068, label %.preheader.i1061.1

.preheader.i1061.1:                               ; preds = %.preheader.i1061
  %i.jj = getelementptr inbounds nuw i8, ptr %.0910.i.i1064, i64 1
  %i.jk = getelementptr inbounds nuw i8, ptr %.0811.i.i1063, i64 1
  %i.jl = load i8, ptr %i.jj, align 1, !tbaa !29  ; 2 uses
  store i8 %i.jl, ptr %i.jk, align 1, !tbaa !29
  %i.jm = icmp eq i8 %i.jl, 0
  br i1 %i.jm, label %pmix_bfrops_base_tma_load_nspace.exit1068.split.loop.exit158, label %.preheader.i1061.2

.preheader.i1061.2:                               ; preds = %.preheader.i1061.1
  %i.jn = getelementptr inbounds nuw i8, ptr %.0910.i.i1064, i64 2
  %i.jo = getelementptr inbounds nuw i8, ptr %.0811.i.i1063, i64 2
  %i.jp = load i8, ptr %i.jn, align 1, !tbaa !29  ; 2 uses
  store i8 %i.jp, ptr %i.jo, align 1, !tbaa !29
  %i.jq = icmp eq i8 %i.jp, 0
  br i1 %i.jq, label %pmix_bfrops_base_tma_load_nspace.exit1068.split.loop.exit156, label %.preheader.i1061.3

.preheader.i1061.3:                               ; preds = %.preheader.i1061.2
  %i.jr = getelementptr inbounds nuw i8, ptr %.0910.i.i1064, i64 3
  %i.js = getelementptr inbounds nuw i8, ptr %.0811.i.i1063, i64 3
  %i.jt = load i8, ptr %i.jr, align 1, !tbaa !29  ; 2 uses
  store i8 %i.jt, ptr %i.js, align 1, !tbaa !29
  %i.ju = icmp eq i8 %i.jt, 0
  br i1 %i.ju, label %pmix_bfrops_base_tma_load_nspace.exit1068.split.loop.exit154, label %.preheader.i1061.4

.preheader.i1061.4:                               ; preds = %.preheader.i1061.3
  %i.jv = getelementptr inbounds nuw i8, ptr %.0910.i.i1064, i64 4
  %i.jw = getelementptr inbounds nuw i8, ptr %.0811.i.i1063, i64 4
  %i.jx = load i8, ptr %i.jv, align 1, !tbaa !29  ; 2 uses
  store i8 %i.jx, ptr %i.jw, align 1, !tbaa !29
  %i.jy = icmp eq i8 %i.jx, 0
  br i1 %i.jy, label %pmix_bfrops_base_tma_load_nspace.exit1068.split.loop.exit152, label %bb.bn

bb.bn:                                            ; preds = %.preheader.i1061.4
  %i.jz = add nuw nsw i64 %.012.i.i1062, 5        ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.0910.i.i1064, i64 5
  %i.kb = getelementptr inbounds nuw i8, ptr %.0811.i.i1063, i64 5 ; 2 uses
  %exitcond.not.i.i1065.4 = icmp eq i64 %i.jz, 255
  br i1 %exitcond.not.i.i1065.4, label %pmix_bfrops_base_tma_load_nspace.exit1068, label %.preheader.i1061, !llvm.loop !14

pmix_bfrops_base_tma_load_nspace.exit1068.split.loop.exit152: ; preds = %.preheader.i1061.4
  %i.kc = getelementptr inbounds nuw i8, ptr %.0811.i.i1063, i64 4
  br label %pmix_bfrops_base_tma_load_nspace.exit1068

pmix_bfrops_base_tma_load_nspace.exit1068.split.loop.exit154: ; preds = %.preheader.i1061.3
  %i.kd = getelementptr inbounds nuw i8, ptr %.0811.i.i1063, i64 3
  br label %pmix_bfrops_base_tma_load_nspace.exit1068

pmix_bfrops_base_tma_load_nspace.exit1068.split.loop.exit156: ; preds = %.preheader.i1061.2
  %i.ke = getelementptr inbounds nuw i8, ptr %.0811.i.i1063, i64 2
  br label %pmix_bfrops_base_tma_load_nspace.exit1068

pmix_bfrops_base_tma_load_nspace.exit1068.split.loop.exit158: ; preds = %.preheader.i1061.1
  %i.kf = getelementptr inbounds nuw i8, ptr %.0811.i.i1063, i64 1
  br label %pmix_bfrops_base_tma_load_nspace.exit1068

pmix_bfrops_base_tma_load_nspace.exit1068:        ; preds = %.preheader.i1061, %bb.bn, %pmix_bfrops_base_tma_load_nspace.exit1068.split.loop.exit158, %pmix_bfrops_base_tma_load_nspace.exit1068.split.loop.exit156, %pmix_bfrops_base_tma_load_nspace.exit1068.split.loop.exit154, %pmix_bfrops_base_tma_load_nspace.exit1068.split.loop.exit152
  %.08.lcssa.i.i1067 = phi ptr [ %i.kf, %pmix_bfrops_base_tma_load_nspace.exit1068.split.loop.exit158 ], [ %i.kc, %pmix_bfrops_base_tma_load_nspace.exit1068.split.loop.exit152 ], [ %i.ke, %pmix_bfrops_base_tma_load_nspace.exit1068.split.loop.exit156 ], [ %i.kb, %bb.bn ], [ %i.kd, %pmix_bfrops_base_tma_load_nspace.exit1068.split.loop.exit154 ], [ %.0811.i.i1063, %.preheader.i1061 ]
  store i8 0, ptr %.08.lcssa.i.i1067, align 1, !tbaa !29
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jg, i64 256
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !262
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jf, i64 256
  store i32 %i.kh, ptr %i.ki, align 8, !tbaa !262
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jf, i64 260 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jg, i64 260
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %i.kj, i8 0, i64 512, i1 false)
  br label %.preheader.i1052

.preheader.i1052:                                 ; preds = %bb.bp, %pmix_bfrops_base_tma_load_nspace.exit1068
  %.012.i.i1053 = phi i64 [ 0, %pmix_bfrops_base_tma_load_nspace.exit1068 ], [ %i.kz, %bb.bp ] ; 2 uses
  %.0811.i.i1054 = phi ptr [ %i.kj, %pmix_bfrops_base_tma_load_nspace.exit1068 ], [ %i.lb, %bb.bp ] ; 8 uses
  %.0910.i.i1055 = phi ptr [ %i.kk, %pmix_bfrops_base_tma_load_nspace.exit1068 ], [ %i.la, %bb.bp ] ; 5 uses
  %i.kl = load i8, ptr %.0910.i.i1055, align 1, !tbaa !29 ; 2 uses
  store i8 %i.kl, ptr %.0811.i.i1054, align 1, !tbaa !29
  %i.km = icmp eq i8 %i.kl, 0
  br i1 %i.km, label %pmix_bfrops_base_tma_load_key.exit1059, label %.preheader.i1052.1

.preheader.i1052.1:                               ; preds = %.preheader.i1052
  %i.kn = getelementptr inbounds nuw i8, ptr %.0910.i.i1055, i64 1
  %i.ko = getelementptr inbounds nuw i8, ptr %.0811.i.i1054, i64 1
  %i.kp = load i8, ptr %i.kn, align 1, !tbaa !29  ; 2 uses
  store i8 %i.kp, ptr %i.ko, align 1, !tbaa !29
  %i.kq = icmp eq i8 %i.kp, 0
  br i1 %i.kq, label %pmix_bfrops_base_tma_load_key.exit1059.split.loop.exit169, label %.preheader.i1052.2

.preheader.i1052.2:                               ; preds = %.preheader.i1052.1
  %i.kr = getelementptr inbounds nuw i8, ptr %.0910.i.i1055, i64 2
  %i.ks = getelementptr inbounds nuw i8, ptr %.0811.i.i1054, i64 2
  %i.kt = load i8, ptr %i.kr, align 1, !tbaa !29  ; 2 uses
  store i8 %i.kt, ptr %i.ks, align 1, !tbaa !29
  %i.ku = icmp eq i8 %i.kt, 0
  br i1 %i.ku, label %pmix_bfrops_base_tma_load_key.exit1059.split.loop.exit167, label %bb.bo

bb.bo:                                            ; preds = %.preheader.i1052.2
  %i.kv = getelementptr inbounds nuw i8, ptr %.0811.i.i1054, i64 3 ; 3 uses
  %exitcond.not.i.i1056.2 = icmp eq i64 %.012.i.i1053, 508
  br i1 %exitcond.not.i.i1056.2, label %pmix_bfrops_base_tma_load_key.exit1059, label %.preheader.i1052.3

.preheader.i1052.3:                               ; preds = %bb.bo
  %i.kw = getelementptr inbounds nuw i8, ptr %.0910.i.i1055, i64 3
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !29  ; 2 uses
  store i8 %i.kx, ptr %i.kv, align 1, !tbaa !29
  %i.ky = icmp eq i8 %i.kx, 0
  br i1 %i.ky, label %pmix_bfrops_base_tma_load_key.exit1059, label %bb.bp

bb.bp:                                            ; preds = %.preheader.i1052.3
  %i.kz = add nuw nsw i64 %.012.i.i1053, 4
  %i.la = getelementptr inbounds nuw i8, ptr %.0910.i.i1055, i64 4
  %i.lb = getelementptr inbounds nuw i8, ptr %.0811.i.i1054, i64 4
  br label %.preheader.i1052

pmix_bfrops_base_tma_load_key.exit1059.split.loop.exit167: ; preds = %.preheader.i1052.2
  %i.lc = getelementptr inbounds nuw i8, ptr %.0811.i.i1054, i64 2
  br label %pmix_bfrops_base_tma_load_key.exit1059

pmix_bfrops_base_tma_load_key.exit1059.split.loop.exit169: ; preds = %.preheader.i1052.1
  %i.ld = getelementptr inbounds nuw i8, ptr %.0811.i.i1054, i64 1
  br label %pmix_bfrops_base_tma_load_key.exit1059

pmix_bfrops_base_tma_load_key.exit1059:           ; preds = %.preheader.i1052, %bb.bo, %.preheader.i1052.3, %pmix_bfrops_base_tma_load_key.exit1059.split.loop.exit169, %pmix_bfrops_base_tma_load_key.exit1059.split.loop.exit167
  %.08.lcssa.i.i1058 = phi ptr [ %i.ld, %pmix_bfrops_base_tma_load_key.exit1059.split.loop.exit169 ], [ %i.kv, %bb.bo ], [ %i.lc, %pmix_bfrops_base_tma_load_key.exit1059.split.loop.exit167 ], [ %i.kv, %.preheader.i1052.3 ], [ %.0811.i.i1054, %.preheader.i1052 ]
  store i8 0, ptr %.08.lcssa.i.i1058, align 1, !tbaa !29
  %i.le = getelementptr inbounds nuw i8, ptr %i.jf, i64 776
  %i.lf = getelementptr inbounds nuw i8, ptr %i.jg, i64 776
  %i.lg = tail call fastcc i32 @pmix_bfrops_base_tma_value_xfer(ptr noundef nonnull %i.le, ptr noundef nonnull %i.lf) ; 0 uses
  %i.lh = add nuw i64 %.0793125, 1                ; 2 uses
  %i.li = load i64, ptr %i.d, align 8, !tbaa !56
  %i.lj = icmp ult i64 %i.lh, %i.li
  br i1 %i.lj, label %.lr.ph126, label %.sink.split, !llvm.loop !233

bb.bq:                                            ; preds = %bb.d
  %i.lk = mul i64 %i.e, 168
  %i.ll = tail call noalias noundef ptr @malloc(i64 noundef %i.lk) #27 ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ll, ptr %i.lm, align 8, !tbaa !55
  %i.ln = icmp eq ptr %i.ll, null
  br i1 %i.ln, label %.thread10, label %.lr.ph124, !prof !107

.lr.ph124:                                        ; preds = %bb.bq, %pmix_bfrops_base_tma_copy_payload.exit
  %.0792123 = phi i64 [ %i.on, %pmix_bfrops_base_tma_copy_payload.exit ], [ 0, %bb.bq ] ; 3 uses
  %i.lo = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !126
  %i.lp = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_buffer_t_class, i64 32), align 8, !tbaa !128
  %.not900 = icmp eq i32 %i.lo, %i.lp
  br i1 %.not900, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.lr.ph124
  tail call void @pmix_class_initialize(ptr noundef nonnull @pmix_buffer_t_class) #26
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.lr.ph124
  %i.lq = getelementptr inbounds nuw [168 x i8], ptr %i.ll, i64 %.0792123 ; 15 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 40
  store ptr @pmix_buffer_t_class, ptr %i.lr, align 8, !tbaa !64
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 48
  store i32 1, ptr %i.ls, align 8, !tbaa !129
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.lt, i8 0, i64 64, i1 false)
  %i.lu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_buffer_t_class, i64 40), align 8, !tbaa !130 ; 2 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !45 ; 2 uses
  %.not6.i = icmp eq ptr %i.lv, null
  br i1 %.not6.i, label %pmix_obj_run_constructors.exit, label %.lr.ph.i941

.lr.ph.i941:                                      ; preds = %bb.bs, %.lr.ph.i941
  %i.lw = phi ptr [ %i.ly, %.lr.ph.i941 ], [ %i.lv, %bb.bs ]
  %.07.i = phi ptr [ %i.lx, %.lr.ph.i941 ], [ %i.lu, %bb.bs ]
  tail call void %i.lw(ptr noundef nonnull %i.lq) #26, !inline_history !234
  %i.lx = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !45 ; 2 uses
  %.not.i942 = icmp eq ptr %i.ly, null
  br i1 %.not.i942, label %pmix_obj_run_constructors.exit, label %.lr.ph.i941, !llvm.loop !12

pmix_obj_run_constructors.exit:                   ; preds = %.lr.ph.i941, %bb.bs
  %i.lz = getelementptr inbounds nuw [168 x i8], ptr %i.i, i64 %.0792123 ; 5 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lq, i64 128 ; 2 uses
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !117 ; 3 uses
end_hunk_1
begin_hunk_2_@pmix_bfrops_base_tma_copy_darray:bb.a
  %i.uf = icmp eq ptr %i.uc, null
  %i.ug = or i1 %i.ue, %i.uf
  br i1 %i.ug, label %pmix_bfrops_base_tma_info_xfer.exit979, label %bb.dp, !prof !107

bb.dp:                                            ; preds = %.lr.ph108
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.ub, i8 0, i64 512, i1 false)
  br label %.preheader.i1070

.preheader.i1070:                                 ; preds = %bb.dr, %bb.dp
  %.012.i.i1071 = phi i64 [ 0, %bb.dp ], [ %i.uv, %bb.dr ] ; 2 uses
  %.0811.i.i1072 = phi ptr [ %i.ub, %bb.dp ], [ %i.ux, %bb.dr ] ; 8 uses
  %.0910.i.i1073 = phi ptr [ %i.ud, %bb.dp ], [ %i.uw, %bb.dr ] ; 5 uses
  %i.uh = load i8, ptr %.0910.i.i1073, align 1, !tbaa !29 ; 2 uses
  store i8 %i.uh, ptr %.0811.i.i1072, align 1, !tbaa !29
  %i.ui = icmp eq i8 %i.uh, 0
  br i1 %i.ui, label %pmix_bfrops_base_tma_load_key.exit1077, label %.preheader.i1070.1

.preheader.i1070.1:                               ; preds = %.preheader.i1070
  %i.uj = getelementptr inbounds nuw i8, ptr %.0910.i.i1073, i64 1
  %i.uk = getelementptr inbounds nuw i8, ptr %.0811.i.i1072, i64 1
  %i.ul = load i8, ptr %i.uj, align 1, !tbaa !29  ; 2 uses
  store i8 %i.ul, ptr %i.uk, align 1, !tbaa !29
  %i.um = icmp eq i8 %i.ul, 0
  br i1 %i.um, label %pmix_bfrops_base_tma_load_key.exit1077.split.loop.exit147, label %.preheader.i1070.2

.preheader.i1070.2:                               ; preds = %.preheader.i1070.1
  %i.un = getelementptr inbounds nuw i8, ptr %.0910.i.i1073, i64 2
  %i.uo = getelementptr inbounds nuw i8, ptr %.0811.i.i1072, i64 2
  %i.up = load i8, ptr %i.un, align 1, !tbaa !29  ; 2 uses
  store i8 %i.up, ptr %i.uo, align 1, !tbaa !29
  %i.uq = icmp eq i8 %i.up, 0
  br i1 %i.uq, label %pmix_bfrops_base_tma_load_key.exit1077.split.loop.exit145, label %bb.dq

bb.dq:                                            ; preds = %.preheader.i1070.2
  %i.ur = getelementptr inbounds nuw i8, ptr %.0811.i.i1072, i64 3 ; 3 uses
  %exitcond.not.i.i1074.2 = icmp eq i64 %.012.i.i1071, 508
  br i1 %exitcond.not.i.i1074.2, label %pmix_bfrops_base_tma_load_key.exit1077, label %.preheader.i1070.3

.preheader.i1070.3:                               ; preds = %bb.dq
  %i.us = getelementptr inbounds nuw i8, ptr %.0910.i.i1073, i64 3
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !29  ; 2 uses
  store i8 %i.ut, ptr %i.ur, align 1, !tbaa !29
  %i.uu = icmp eq i8 %i.ut, 0
  br i1 %i.uu, label %pmix_bfrops_base_tma_load_key.exit1077, label %bb.dr

bb.dr:                                            ; preds = %.preheader.i1070.3
  %i.uv = add nuw nsw i64 %.012.i.i1071, 4
  %i.uw = getelementptr inbounds nuw i8, ptr %.0910.i.i1073, i64 4
  %i.ux = getelementptr inbounds nuw i8, ptr %.0811.i.i1072, i64 4
  br label %.preheader.i1070

pmix_bfrops_base_tma_load_key.exit1077.split.loop.exit145: ; preds = %.preheader.i1070.2
  %i.uy = getelementptr inbounds nuw i8, ptr %.0811.i.i1072, i64 2
  br label %pmix_bfrops_base_tma_load_key.exit1077

pmix_bfrops_base_tma_load_key.exit1077.split.loop.exit147: ; preds = %.preheader.i1070.1
  %i.uz = getelementptr inbounds nuw i8, ptr %.0811.i.i1072, i64 1
  br label %pmix_bfrops_base_tma_load_key.exit1077

pmix_bfrops_base_tma_load_key.exit1077:           ; preds = %.preheader.i1070, %bb.dq, %.preheader.i1070.3, %pmix_bfrops_base_tma_load_key.exit1077.split.loop.exit147, %pmix_bfrops_base_tma_load_key.exit1077.split.loop.exit145
  %.08.lcssa.i.i1076 = phi ptr [ %i.uz, %pmix_bfrops_base_tma_load_key.exit1077.split.loop.exit147 ], [ %i.ur, %bb.dq ], [ %i.uy, %pmix_bfrops_base_tma_load_key.exit1077.split.loop.exit145 ], [ %i.ur, %.preheader.i1070.3 ], [ %.0811.i.i1072, %.preheader.i1070 ]
  store i8 0, ptr %.08.lcssa.i.i1076, align 1, !tbaa !29
  %i.va = getelementptr inbounds nuw i8, ptr %i.ud, i64 512
  %i.vb = load i32, ptr %i.va, align 8, !tbaa !60 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.ub, i64 512
  store i32 %i.vb, ptr %i.vc, align 8, !tbaa !60
  %i.vd = and i32 %i.vb, 16
  %.not18 = icmp eq i32 %i.vd, 0
  %i.ve = getelementptr inbounds nuw i8, ptr %i.ub, i64 520 ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ud, i64 520 ; 2 uses
  br i1 %.not18, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %pmix_bfrops_base_tma_load_key.exit1077
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ve, ptr noundef nonnull align 8 dereferenceable(32) %i.vf, i64 32, i1 false)
  br label %pmix_bfrops_base_tma_info_xfer.exit979

bb.dt:                                            ; preds = %pmix_bfrops_base_tma_load_key.exit1077
  %i.vg = tail call fastcc i32 @pmix_bfrops_base_tma_value_xfer(ptr noundef nonnull %i.ve, ptr noundef nonnull %i.vf) ; 0 uses
  br label %pmix_bfrops_base_tma_info_xfer.exit979

pmix_bfrops_base_tma_info_xfer.exit979:           ; preds = %.lr.ph108, %bb.ds, %bb.dt
  %i.vh = add nuw i64 %.0786107, 1                ; 2 uses
  %i.vi = load i64, ptr %i.sz, align 8, !tbaa !77 ; 2 uses
  %i.vj = icmp ult i64 %i.vh, %i.vi
  br i1 %i.vj, label %.lr.ph108, label %._crit_edge, !llvm.loop !242

bb.du:                                            ; preds = %bb.dn, %bb.dm
  %i.vk = getelementptr inbounds nuw [24 x i8], ptr %calloc.i948, i64 %.0787109
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vl, i8 0, i64 16, i1 false)
  br label %bb.dv

bb.dv:                                            ; preds = %._crit_edge, %bb.du
  %i.vm = add nuw i64 %.0787109, 1                ; 2 uses
  %i.vn = load i64, ptr %i.d, align 8, !tbaa !56
  %i.vo = icmp ult i64 %i.vm, %i.vn
  br i1 %i.vo, label %.lr.ph111, label %.sink.split, !llvm.loop !243

bb.dw:                                            ; preds = %bb.d
  %i.vp = tail call fastcc ptr @pmix_bfrops_base_tma_envar_create(i64 noundef %i.e) ; 5 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.vp, ptr %i.vq, align 8, !tbaa !55
  %i.vr = icmp eq ptr %i.vp, null
  br i1 %i.vr, label %.thread10, label %bb.dx, !prof !107

bb.dx:                                            ; preds = %bb.dw
  %i.vs = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.vt = load i64, ptr %i.d, align 8, !tbaa !56  ; 2 uses
  %.not146 = icmp eq i64 %i.vt, 0
  br i1 %.not146, label %.sink.split, label %.lr.ph106

.lr.ph106:                                        ; preds = %bb.dx, %bb.eb
  %.0785105 = phi i64 [ %i.wh, %bb.eb ], [ 0, %bb.dx ] ; 5 uses
  %i.vu = getelementptr inbounds nuw [24 x i8], ptr %i.vs, i64 %.0785105 ; 3 uses
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !41 ; 2 uses
  %.not888 = icmp eq ptr %i.vv, null
  br i1 %.not888, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %.lr.ph106
  %i.vw = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.vv) #26
  %i.vx = getelementptr inbounds nuw [24 x i8], ptr %i.vp, i64 %.0785105
  store ptr %i.vw, ptr %i.vx, align 8, !tbaa !41
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %.lr.ph106
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vu, i64 8
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !42 ; 2 uses
  %.not889 = icmp eq ptr %i.vz, null
  br i1 %.not889, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.wa = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.vz) #26
  %i.wb = getelementptr inbounds nuw [24 x i8], ptr %i.vp, i64 %.0785105
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  store ptr %i.wa, ptr %i.wc, align 8, !tbaa !42
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vu, i64 16
  %i.we = load i8, ptr %i.wd, align 8, !tbaa !43
  %i.wf = getelementptr inbounds nuw [24 x i8], ptr %i.vp, i64 %.0785105
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 16
  store i8 %i.we, ptr %i.wg, align 8, !tbaa !43
  %i.wh = add nuw i64 %.0785105, 1                ; 2 uses
  %exitcond206.not = icmp eq i64 %i.wh, %i.vt
  br i1 %exitcond206.not, label %.sink.split, label %.lr.ph106, !llvm.loop !244

bb.ec:                                            ; preds = %bb.d
  %i.wi = mul i64 %i.e, 24
  %i.wj = tail call noalias noundef ptr @malloc(i64 noundef %i.wi) #27 ; 4 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.wj, ptr %i.wk, align 8, !tbaa !55
  %i.wl = icmp eq ptr %i.wj, null
  br i1 %i.wl, label %.thread10, label %.lr.ph104, !prof !107

.lr.ph104:                                        ; preds = %bb.ec, %bb.ef
  %.0784103 = phi i64 [ %i.wy, %bb.ef ], [ 0, %bb.ec ] ; 3 uses
  %i.wm = getelementptr inbounds nuw [24 x i8], ptr %i.wj, i64 %.0784103 ; 3 uses
  %i.wn = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.0784103 ; 3 uses
  %i.wo = load i8, ptr %i.wn, align 8, !tbaa !80
  store i8 %i.wo, ptr %i.wm, align 8, !tbaa !80
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wn, i64 16
  %i.wq = load i64, ptr %i.wp, align 8, !tbaa !139 ; 3 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wm, i64 16
  store i64 %i.wq, ptr %i.wr, align 8, !tbaa !139
  %.not.i980 = icmp eq i64 %i.wq, 0
  br i1 %.not.i980, label %bb.ef, label %bb.ed

bb.ed:                                            ; preds = %.lr.ph104
  %i.ws = shl i64 %i.wq, 2                        ; 2 uses
  %i.wt = tail call noalias noundef ptr @malloc(i64 noundef %i.ws) #27 ; 3 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wm, i64 8
  store ptr %i.wt, ptr %i.wu, align 8, !tbaa !81
  %i.wv = icmp eq ptr %i.wt, null
  br i1 %i.wv, label %pmix_bfrops_base_tma_fill_coord.exit, label %bb.ee, !prof !107

bb.ee:                                            ; preds = %bb.ed
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wn, i64 8
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !81
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.wt, ptr align 4 %i.wx, i64 %i.ws, i1 false)
  br label %bb.ef

pmix_bfrops_base_tma_fill_coord.exit:             ; preds = %bb.ed
  tail call fastcc void @pmix_bfrops_base_tma_coord_free(ptr noundef nonnull %i.wj, i64 noundef %i.e)
  br label %.thread10

bb.ef:                                            ; preds = %bb.ee, %.lr.ph104
  %i.wy = add nuw i64 %.0784103, 1                ; 2 uses
  %exitcond205.not = icmp eq i64 %i.wy, %i.e
  br i1 %exitcond205.not, label %.sink.split, label %.lr.ph104, !llvm.loop !245

bb.eg:                                            ; preds = %bb.d
  %i.wz = tail call fastcc ptr @pmix_bfrops_base_tma_regattr_create(i64 noundef %i.e) ; 4 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.wz, ptr %i.xa, align 8, !tbaa !55
  %i.xb = icmp eq ptr %i.wz, null
  br i1 %i.xb, label %.thread10, label %bb.eh, !prof !107

bb.eh:                                            ; preds = %bb.eg
  %i.xc = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.xd = load i64, ptr %i.d, align 8, !tbaa !56  ; 3 uses
  %.not145 = icmp eq i64 %i.xd, 0
  br i1 %.not145, label %.sink.split, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.eh, %pmix_bfrops_base_tma_argv_copy.exit1005
  %.pre216 = phi i64 [ %.pre217, %pmix_bfrops_base_tma_argv_copy.exit1005 ], [ %i.xd, %bb.eh ] ; 5 uses
  %5 = phi i64 [ %6, %pmix_bfrops_base_tma_argv_copy.exit1005 ], [ %i.xd, %bb.eh ] ; 4 uses
  %.0783101 = phi i64 [ %i.zi, %pmix_bfrops_base_tma_argv_copy.exit1005 ], [ 0, %bb.eh ] ; 4 uses
  %i.xe = getelementptr inbounds nuw [536 x i8], ptr %i.xc, i64 %.0783101 ; 4 uses
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !50 ; 2 uses
  %.not886 = icmp eq ptr %i.xf, null
  br i1 %.not886, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %.lr.ph102
  %i.xg = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.xf) #26
  %i.xh = getelementptr inbounds nuw [536 x i8], ptr %i.wz, i64 %.0783101
  store ptr %i.xg, ptr %i.xh, align 8, !tbaa !50
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %.lr.ph102
  %i.xi = getelementptr inbounds nuw [536 x i8], ptr %i.wz, i64 %.0783101 ; 3 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 8 ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.xj, i8 0, i64 512, i1 false)
  br label %.preheader.i983

.preheader.i983:                                  ; preds = %bb.el, %bb.ej
  %.012.i.i = phi i64 [ 0, %bb.ej ], [ %i.xz, %bb.el ] ; 2 uses
  %.0811.i.i = phi ptr [ %i.xj, %bb.ej ], [ %i.yb, %bb.el ] ; 8 uses
  %.0910.i.i = phi ptr [ %i.xk, %bb.ej ], [ %i.ya, %bb.el ] ; 5 uses
  %i.xl = load i8, ptr %.0910.i.i, align 1, !tbaa !29 ; 2 uses
  store i8 %i.xl, ptr %.0811.i.i, align 1, !tbaa !29
  %i.xm = icmp eq i8 %i.xl, 0
  br i1 %i.xm, label %pmix_bfrops_base_tma_load_key.exit, label %.preheader.i983.1

.preheader.i983.1:                                ; preds = %.preheader.i983
  %i.xn = getelementptr inbounds nuw i8, ptr %.0910.i.i, i64 1
  %i.xo = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 1
  %i.xp = load i8, ptr %i.xn, align 1, !tbaa !29  ; 2 uses
  store i8 %i.xp, ptr %i.xo, align 1, !tbaa !29
  %i.xq = icmp eq i8 %i.xp, 0
  br i1 %i.xq, label %pmix_bfrops_base_tma_load_key.exit.split.loop.exit138, label %.preheader.i983.2

.preheader.i983.2:                                ; preds = %.preheader.i983.1
  %i.xr = getelementptr inbounds nuw i8, ptr %.0910.i.i, i64 2
  %i.xs = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 2
  %i.xt = load i8, ptr %i.xr, align 1, !tbaa !29  ; 2 uses
  store i8 %i.xt, ptr %i.xs, align 1, !tbaa !29
  %i.xu = icmp eq i8 %i.xt, 0
  br i1 %i.xu, label %pmix_bfrops_base_tma_load_key.exit.split.loop.exit136, label %bb.ek

bb.ek:                                            ; preds = %.preheader.i983.2
  %i.xv = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 3 ; 3 uses
  %exitcond.not.i.i.2 = icmp eq i64 %.012.i.i, 508
  br i1 %exitcond.not.i.i.2, label %pmix_bfrops_base_tma_load_key.exit, label %.preheader.i983.3

.preheader.i983.3:                                ; preds = %bb.ek
  %i.xw = getelementptr inbounds nuw i8, ptr %.0910.i.i, i64 3
  %i.xx = load i8, ptr %i.xw, align 1, !tbaa !29  ; 2 uses
  store i8 %i.xx, ptr %i.xv, align 1, !tbaa !29
  %i.xy = icmp eq i8 %i.xx, 0
  br i1 %i.xy, label %pmix_bfrops_base_tma_load_key.exit, label %bb.el

bb.el:                                            ; preds = %.preheader.i983.3
  %i.xz = add nuw nsw i64 %.012.i.i, 4
  %i.ya = getelementptr inbounds nuw i8, ptr %.0910.i.i, i64 4
  %i.yb = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 4
  br label %.preheader.i983

pmix_bfrops_base_tma_load_key.exit.split.loop.exit136: ; preds = %.preheader.i983.2
  %i.yc = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 2
  br label %pmix_bfrops_base_tma_load_key.exit

pmix_bfrops_base_tma_load_key.exit.split.loop.exit138: ; preds = %.preheader.i983.1
  %i.yd = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 1
  br label %pmix_bfrops_base_tma_load_key.exit

pmix_bfrops_base_tma_load_key.exit:               ; preds = %.preheader.i983, %bb.ek, %.preheader.i983.3, %pmix_bfrops_base_tma_load_key.exit.split.loop.exit138, %pmix_bfrops_base_tma_load_key.exit.split.loop.exit136
  %.08.lcssa.i.i = phi ptr [ %i.yd, %pmix_bfrops_base_tma_load_key.exit.split.loop.exit138 ], [ %i.xv, %bb.ek ], [ %i.yc, %pmix_bfrops_base_tma_load_key.exit.split.loop.exit136 ], [ %i.xv, %.preheader.i983.3 ], [ %.0811.i.i, %.preheader.i983 ]
  store i8 0, ptr %.08.lcssa.i.i, align 1, !tbaa !29
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xe, i64 520
  %i.yf = load i16, ptr %i.ye, align 8, !tbaa !51
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xi, i64 520
  store i16 %i.yf, ptr %i.yg, align 8, !tbaa !51
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xe, i64 528
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !52 ; 3 uses
  %i.yj = icmp eq ptr %i.yi, null
  br i1 %i.yj, label %pmix_bfrops_base_tma_argv_copy.exit1005, label %bb.em

bb.em:                                            ; preds = %pmix_bfrops_base_tma_load_key.exit
  %i.yk = tail call noalias noundef dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #27 ; 3 uses
  store ptr null, ptr %i.yk, align 8, !tbaa !57
  %i.yl = load ptr, ptr %i.yi, align 8, !tbaa !57 ; 2 uses
  %.not12.i984 = icmp eq ptr %i.yl, null
  br i1 %.not12.i984, label %pmix_bfrops_base_tma_argv_copy.exit1005, label %.lr.ph.i985

.lr.phthread-pre-split.i996:                      ; preds = %bb.eo
  %.pr.i997 = load ptr, ptr %i.yu, align 8, !tbaa !57
  br label %.lr.ph.i985

.lr.ph.i985:                                      ; preds = %bb.em, %.lr.phthread-pre-split.i996
  %i.ym = phi ptr [ %.pr.i997, %.lr.phthread-pre-split.i996 ], [ null, %bb.em ]
  %i.yn = phi ptr [ %i.zg, %.lr.phthread-pre-split.i996 ], [ %i.yl, %bb.em ]
  %.0814.i986 = phi ptr [ %i.zf, %.lr.phthread-pre-split.i996 ], [ %i.yi, %bb.em ]
  %.0313.i987 = phi ptr [ %i.yu, %.lr.phthread-pre-split.i996 ], [ %i.yk, %bb.em ] ; 2 uses
  %.not1.i.i.i988 = icmp eq ptr %i.ym, null
  br i1 %.not1.i.i.i988, label %pmix_bfrops_base_tma_argv_count.exit.i.i993, label %.lr.ph.i.i.i989

.lr.ph.i.i.i989:                                  ; preds = %.lr.ph.i985, %.lr.ph.i.i.i989
  %.03.i.i.i990 = phi i32 [ %i.yo, %.lr.ph.i.i.i989 ], [ 0, %.lr.ph.i985 ]
  %.062.i.i.i991 = phi ptr [ %i.yp, %.lr.ph.i.i.i989 ], [ %.0313.i987, %.lr.ph.i985 ]
  %i.yo = add nuw nsw i32 %.03.i.i.i990, 1        ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.062.i.i.i991, i64 8 ; 2 uses
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !57
  %.not.i.i.i992 = icmp eq ptr %i.yq, null
  br i1 %.not.i.i.i992, label %pmix_bfrops_base_tma_argv_count.exit.i.i993, label %.lr.ph.i.i.i989, !llvm.loop !15

pmix_bfrops_base_tma_argv_count.exit.i.i993:      ; preds = %.lr.ph.i.i.i989, %.lr.ph.i985
  %.0.lcssa.i.i.i994 = phi i32 [ 0, %.lr.ph.i985 ], [ %i.yo, %.lr.ph.i.i.i989 ] ; 2 uses
  %i.yr = add nsw i32 %.0.lcssa.i.i.i994, 2
  %i.ys = sext i32 %i.yr to i64
  %i.yt = shl nsw i64 %i.ys, 3
  %i.yu = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.0313.i987, i64 noundef %i.yt) #29 ; 8 uses
  %i.yv = icmp eq ptr %i.yu, null
  br i1 %i.yv, label %pmix_bfrops_base_tma_argv_copy.exit1005, label %bb.en

bb.en:                                            ; preds = %pmix_bfrops_base_tma_argv_count.exit.i.i993
  %i.yw = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.yn) #26 ; 2 uses
  %i.yx = sext i32 %.0.lcssa.i.i.i994 to i64
  %i.yy = getelementptr inbounds [8 x i8], ptr %i.yu, i64 %i.yx ; 2 uses
  store ptr %i.yw, ptr %i.yy, align 8, !tbaa !57
  %i.yz = icmp eq ptr %i.yw, null
  br i1 %i.yz, label %.preheader.i.i999, label %bb.eo

.preheader.i.i999:                                ; preds = %bb.en
  %i.za = load ptr, ptr %i.yu, align 8, !tbaa !57 ; 2 uses
  %.not101.i.i1000 = icmp eq ptr %i.za, null
  br i1 %.not101.i.i1000, label %._crit_edge.i.i1004, label %.lr.ph.i.i1001

._crit_edge.i.i1004.loopexit:                     ; preds = %.lr.ph.i.i1001
  %.pre.pre = load i64, ptr %i.d, align 8, !tbaa !56
  br label %._crit_edge.i.i1004

._crit_edge.i.i1004:                              ; preds = %._crit_edge.i.i1004.loopexit, %.preheader.i.i999
  %.pre = phi i64 [ %.pre.pre, %._crit_edge.i.i1004.loopexit ], [ %.pre216, %.preheader.i.i999 ] ; 2 uses
  tail call void @free(ptr noundef nonnull %i.yu) #26
  br label %pmix_bfrops_base_tma_argv_copy.exit1005

.lr.ph.i.i1001:                                   ; preds = %.preheader.i.i999, %.lr.ph.i.i1001
  %i.zb = phi ptr [ %i.zd, %.lr.ph.i.i1001 ], [ %i.za, %.preheader.i.i999 ]
  %.02.i.i1002 = phi ptr [ %i.zc, %.lr.ph.i.i1001 ], [ %i.yu, %.preheader.i.i999 ]
  tail call void @free(ptr noundef nonnull %i.zb) #26
  %i.zc = getelementptr inbounds nuw i8, ptr %.02.i.i1002, i64 8 ; 2 uses
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !57 ; 2 uses
  %.not10.i.i1003 = icmp eq ptr %i.zd, null
  br i1 %.not10.i.i1003, label %._crit_edge.i.i1004.loopexit, label %.lr.ph.i.i1001, !llvm.loop !5

bb.eo:                                            ; preds = %bb.en
  %i.ze = getelementptr i8, ptr %i.yy, i64 8
  store ptr null, ptr %i.ze, align 8, !tbaa !57
  %i.zf = getelementptr inbounds nuw i8, ptr %.0814.i986, i64 8 ; 2 uses
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !57 ; 2 uses
  %.not.i995 = icmp eq ptr %i.zg, null
  br i1 %.not.i995, label %pmix_bfrops_base_tma_argv_copy.exit1005, label %.lr.phthread-pre-split.i996, !llvm.loop !16

pmix_bfrops_base_tma_argv_copy.exit1005:          ; preds = %pmix_bfrops_base_tma_argv_count.exit.i.i993, %bb.eo, %pmix_bfrops_base_tma_load_key.exit, %bb.em, %._crit_edge.i.i1004
  %.pre217 = phi i64 [ %.pre216, %pmix_bfrops_base_tma_load_key.exit ], [ %.pre, %._crit_edge.i.i1004 ], [ %.pre216, %bb.em ], [ %.pre216, %bb.eo ], [ %.pre216, %pmix_bfrops_base_tma_argv_count.exit.i.i993 ]
  %6 = phi i64 [ %5, %pmix_bfrops_base_tma_load_key.exit ], [ %.pre, %._crit_edge.i.i1004 ], [ %5, %bb.em ], [ %5, %bb.eo ], [ %5, %pmix_bfrops_base_tma_argv_count.exit.i.i993 ] ; 2 uses
  %.1.i998 = phi ptr [ null, %pmix_bfrops_base_tma_load_key.exit ], [ null, %._crit_edge.i.i1004 ], [ %i.yk, %bb.em ], [ null, %pmix_bfrops_base_tma_argv_count.exit.i.i993 ], [ %i.yu, %bb.eo ]
  %i.zh = getelementptr inbounds nuw i8, ptr %i.xi, i64 528
  store ptr %.1.i998, ptr %i.zh, align 8, !tbaa !52
  %i.zi = add nuw i64 %.0783101, 1                ; 2 uses
  %i.zj = icmp ult i64 %i.zi, %6
  br i1 %i.zj, label %.lr.ph102, label %.sink.split, !llvm.loop !246

pmix_bfrops_base_tma_cpuset_create.exit:          ; preds = %bb.d
  %i.zk = shl i64 %i.e, 4
  %calloc.i1006 = tail call ptr @calloc(i64 1, i64 %i.zk) ; 4 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %calloc.i1006, ptr %i.zl, align 8, !tbaa !55
  %i.zm = icmp eq ptr %calloc.i1006, null
  br i1 %i.zm, label %.thread10, label %.lr.ph100, !prof !107

bb.ep:                                            ; preds = %.lr.ph100
  %i.zn = add nuw i64 %.078299, 1                 ; 2 uses
  %i.zo = load i64, ptr %i.d, align 8, !tbaa !56
  %i.zp = icmp ult i64 %i.zn, %i.zo
  br i1 %i.zp, label %.lr.ph100, label %.sink.split, !llvm.loop !247

.lr.ph100:                                        ; preds = %pmix_bfrops_base_tma_cpuset_create.exit, %bb.ep
  %.078299 = phi i64 [ %i.zn, %bb.ep ], [ 0, %pmix_bfrops_base_tma_cpuset_create.exit ] ; 3 uses
  %i.zq = getelementptr inbounds nuw [16 x i8], ptr %calloc.i1006, i64 %.078299
  %i.zr = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.078299
  %i.zs = tail call i32 @pmix_hwloc_copy_cpuset(ptr noundef nonnull %i.zq, ptr noundef %i.zr) #26 ; 2 uses
  %.not885 = icmp eq i32 %i.zs, 0
  br i1 %.not885, label %bb.ep, label %bb.eq

bb.eq:                                            ; preds = %.lr.ph100
  %i.zt = load i64, ptr %i.d, align 8, !tbaa !56
  tail call void @pmix_hwloc_release_cpuset(ptr noundef nonnull %calloc.i1006, i64 noundef %i.zt) #26
  %i.zu = load ptr, ptr %i.zl, align 8, !tbaa !55
  tail call void @free(ptr noundef %i.zu) #26
  br label %bb.fu

pmix_bfrops_base_tma_geometry_create.exit:        ; preds = %bb.d
  %i.zv = mul i64 %i.e, 40
  %calloc.i1008 = tail call ptr @calloc(i64 1, i64 %i.zv) ; 4 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %calloc.i1008, ptr %i.zw, align 8, !tbaa !55
  %i.zx = icmp eq ptr %calloc.i1008, null
  br i1 %i.zx, label %.thread10, label %.lr.ph98, !prof !107

.lr.ph98:                                         ; preds = %pmix_bfrops_base_tma_geometry_create.exit, %.loopexit46
  %.078197 = phi i64 [ %i.abf, %.loopexit46 ], [ 0, %pmix_bfrops_base_tma_geometry_create.exit ] ; 3 uses
  %i.zy = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %.078197 ; 5 uses
  %i.zz = load i64, ptr %i.zy, align 8, !tbaa !156
  %i.aaa = getelementptr inbounds nuw [40 x i8], ptr %calloc.i1008, i64 %.078197 ; 5 uses
  store i64 %i.zz, ptr %i.aaa, align 8, !tbaa !156
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zy, i64 8
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !84 ; 2 uses
  %.not880 = icmp eq ptr %i.aac, null
  br i1 %.not880, label %bb.es, label %bb.er

bb.er:                                            ; preds = %.lr.ph98
  %i.aad = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.aac) #26
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aaa, i64 8
  store ptr %i.aad, ptr %i.aae, align 8, !tbaa !84
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %.lr.ph98
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zy, i64 16
  %i.aag = load ptr, ptr %i.aaf, align 8, !tbaa !85 ; 2 uses
  %.not881 = icmp eq ptr %i.aag, null
  br i1 %.not881, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.aah = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.aag) #26
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aaa, i64 16
  store ptr %i.aah, ptr %i.aai, align 8, !tbaa !85
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.zy, i64 24
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !86 ; 2 uses
  %.not882 = icmp eq ptr %i.aak, null
  br i1 %.not882, label %.loopexit46, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.aal = getelementptr inbounds nuw i8, ptr %i.zy, i64 32
  %i.aam = load i64, ptr %i.aal, align 8, !tbaa !87 ; 4 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aaa, i64 32
  store i64 %i.aam, ptr %i.aan, align 8, !tbaa !87
  %i.aao = mul i64 %i.aam, 24
  %i.aap = tail call noalias noundef ptr @malloc(i64 noundef %i.aao) #27 ; 3 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aaa, i64 24
  store ptr %i.aap, ptr %i.aaq, align 8, !tbaa !86
  %i.aar = icmp eq ptr %i.aap, null
  br i1 %i.aar, label %.thread10, label %.preheader45, !prof !107

.preheader45:                                     ; preds = %bb.ev
  %.not143 = icmp eq i64 %i.aam, 0
  br i1 %.not143, label %.loopexit46, label %.lr.ph96

.lr.ph96:                                         ; preds = %.preheader45, %bb.ey
  %.078095 = phi i64 [ %i.abe, %bb.ey ], [ 0, %.preheader45 ] ; 3 uses
  %i.aas = getelementptr inbounds nuw [24 x i8], ptr %i.aap, i64 %.078095 ; 3 uses
  %i.aat = getelementptr inbounds nuw [24 x i8], ptr %i.aak, i64 %.078095 ; 3 uses
  %i.aau = load i8, ptr %i.aat, align 8, !tbaa !80
  store i8 %i.aau, ptr %i.aas, align 8, !tbaa !80
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aat, i64 16
  %i.aaw = load i64, ptr %i.aav, align 8, !tbaa !139 ; 3 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aas, i64 16
  store i64 %i.aaw, ptr %i.aax, align 8, !tbaa !139
  %.not.i1010 = icmp eq i64 %i.aaw, 0
  br i1 %.not.i1010, label %bb.ey, label %bb.ew

bb.ew:                                            ; preds = %.lr.ph96
  %i.aay = shl i64 %i.aaw, 2                      ; 2 uses
  %i.aaz = tail call noalias noundef ptr @malloc(i64 noundef %i.aay) #27 ; 3 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aas, i64 8
  store ptr %i.aaz, ptr %i.aba, align 8, !tbaa !81
  %i.abb = icmp eq ptr %i.aaz, null
  br i1 %i.abb, label %bb.ez, label %bb.ex, !prof !107

bb.ex:                                            ; preds = %bb.ew
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aat, i64 8
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !81
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aaz, ptr align 4 %i.abd, i64 %i.aay, i1 false)
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %.lr.ph96
  %i.abe = add nuw i64 %.078095, 1                ; 2 uses
  %exitcond203.not = icmp eq i64 %i.abe, %i.aam
  br i1 %exitcond203.not, label %.loopexit46, label %.lr.ph96, !llvm.loop !248

bb.ez:                                            ; preds = %bb.ew
  tail call fastcc void @pmix_bfrops_base_tma_geometry_free(ptr noundef nonnull %calloc.i1008, i64 noundef %i.e)
  br label %.thread10

.loopexit46:                                      ; preds = %bb.ey, %.preheader45, %bb.eu
  %i.abf = add nuw i64 %.078197, 1                ; 2 uses
  %exitcond204.not = icmp eq i64 %i.abf, %i.e
  br i1 %exitcond204.not, label %.sink.split, label %.lr.ph98, !llvm.loop !249

bb.fa:                                            ; preds = %bb.d
  %i.abg = tail call fastcc ptr @pmix_bfrops_base_tma_device_distance_create(i64 noundef %i.e) ; 5 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.abg, ptr %i.abh, align 8, !tbaa !55
  %i.abi = icmp eq ptr %i.abg, null
  br i1 %i.abi, label %.thread10, label %bb.fb, !prof !107

bb.fb:                                            ; preds = %bb.fa
  %i.abj = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.abk = load i64, ptr %i.d, align 8, !tbaa !56 ; 2 uses
  %.not141 = icmp eq i64 %i.abk, 0
  br i1 %.not141, label %.sink.split, label %.lr.ph94

.lr.ph94:                                         ; preds = %bb.fb, %bb.ff
  %.077993 = phi i64 [ %i.acb, %bb.ff ], [ 0, %bb.fb ] ; 5 uses
  %i.abl = getelementptr inbounds nuw [32 x i8], ptr %i.abj, i64 %.077993 ; 4 uses
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !89 ; 2 uses
  %.not878 = icmp eq ptr %i.abm, null
  br i1 %.not878, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %.lr.ph94
  %i.abn = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.abm) #26
  %i.abo = getelementptr inbounds nuw [32 x i8], ptr %i.abg, i64 %.077993
  store ptr %i.abn, ptr %i.abo, align 8, !tbaa !89
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %.lr.ph94
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abl, i64 8
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !90 ; 2 uses
  %.not879 = icmp eq ptr %i.abq, null
  br i1 %.not879, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.abr = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.abq) #26
  %i.abs = getelementptr inbounds nuw [32 x i8], ptr %i.abg, i64 %.077993
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 8
  store ptr %i.abr, ptr %i.abt, align 8, !tbaa !90
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abl, i64 16
  %i.abv = load i64, ptr %i.abu, align 8, !tbaa !157
  %i.abw = getelementptr inbounds nuw [32 x i8], ptr %i.abg, i64 %.077993 ; 2 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 16
  store i64 %i.abv, ptr %i.abx, align 8, !tbaa !157
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abl, i64 24
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abw, i64 24
  %i.aca = load <2 x i16>, ptr %i.aby, align 8, !tbaa !119
  store <2 x i16> %i.aca, ptr %i.abz, align 8, !tbaa !119
  %i.acb = add nuw i64 %.077993, 1                ; 2 uses
  %exitcond202.not = icmp eq i64 %i.acb, %i.abk
  br i1 %exitcond202.not, label %.sink.split, label %.lr.ph94, !llvm.loop !250

pmix_bfrops_base_tma_endpoint_create.exit:        ; preds = %bb.d
  %i.acc = shl i64 %i.e, 5
  %calloc.i1013 = tail call ptr @calloc(i64 1, i64 %i.acc) ; 5 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %calloc.i1013, ptr %i.acd, align 8, !tbaa !55
  %i.ace = icmp eq ptr %calloc.i1013, null
  br i1 %i.ace, label %.thread10, label %.lr.ph92, !prof !107

.lr.ph92:                                         ; preds = %pmix_bfrops_base_tma_endpoint_create.exit, %bb.fl
  %.077891 = phi i64 [ %i.acw, %bb.fl ], [ 0, %pmix_bfrops_base_tma_endpoint_create.exit ] ; 5 uses
  %i.acf = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %.077891 ; 4 uses
  %i.acg = load ptr, ptr %i.acf, align 8, !tbaa !92 ; 2 uses
  %.not = icmp eq ptr %i.acg, null
  br i1 %.not, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %.lr.ph92
  %i.ach = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.acg) #26
  %i.aci = getelementptr inbounds nuw [32 x i8], ptr %calloc.i1013, i64 %.077891
  store ptr %i.ach, ptr %i.aci, align 8, !tbaa !92
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %.lr.ph92
  %i.acj = getelementptr inbounds nuw i8, ptr %i.acf, i64 8
  %i.ack = load ptr, ptr %i.acj, align 8, !tbaa !93 ; 2 uses
  %.not876 = icmp eq ptr %i.ack, null
  br i1 %.not876, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.acl = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.ack) #26
  %i.acm = getelementptr inbounds nuw [32 x i8], ptr %calloc.i1013, i64 %.077891
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 8
  store ptr %i.acl, ptr %i.acn, align 8, !tbaa !93
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acf, i64 16
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !94 ; 2 uses
  %.not877 = icmp eq ptr %i.acp, null
  br i1 %.not877, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acf, i64 24
  %i.acr = load i64, ptr %i.acq, align 8, !tbaa !140 ; 3 uses
  %i.acs = tail call noalias noundef ptr @malloc(i64 noundef %i.acr) #27 ; 2 uses
  %i.act = getelementptr inbounds nuw [32 x i8], ptr %calloc.i1013, i64 %.077891 ; 2 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 16
  store ptr %i.acs, ptr %i.acu, align 8, !tbaa !94
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.acs, ptr nonnull align 1 %i.acp, i64 %i.acr, i1 false)
  %i.acv = getelementptr inbounds nuw i8, ptr %i.act, i64 24
  store i64 %i.acr, ptr %i.acv, align 8, !tbaa !140
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fj, %bb.fk
  %i.acw = add nuw i64 %.077891, 1                ; 2 uses
  %exitcond201.not = icmp eq i64 %i.acw, %i.e
  br i1 %exitcond201.not, label %.sink.split, label %.lr.ph92, !llvm.loop !251

bb.fm:                                            ; preds = %bb.d
  %i.acx = shl i64 %i.e, 8
  %i.acy = tail call noalias noundef ptr @malloc(i64 noundef %i.acx) #27 ; 3 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.acy, ptr %i.acz, align 8, !tbaa !55
  %i.ada = icmp eq ptr %i.acy, null
  br i1 %i.ada, label %.thread10, label %.preheader.i1016.preheader.preheader, !prof !107

.preheader.i1016.preheader.preheader:             ; preds = %bb.fm
  store i64 %i.e, ptr %i.f, align 8, !tbaa !56
  br label %.preheader.i1016.preheader

.preheader.i1016.preheader:                       ; preds = %.preheader.i1016.preheader.preheader, %pmix_strncpy.exit.i
  %.077790 = phi i64 [ %i.aec, %pmix_strncpy.exit.i ], [ 0, %.preheader.i1016.preheader.preheader ] ; 3 uses
  %i.adb = getelementptr inbounds nuw [256 x i8], ptr %i.acy, i64 %.077790 ; 2 uses
  %i.adc = getelementptr inbounds nuw [256 x i8], ptr %i.i, i64 %.077790
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.adb, i8 0, i64 256, i1 false)
  br label %.preheader.i1016

.preheader.i1016:                                 ; preds = %bb.fn, %.preheader.i1016.preheader
  %.012.i.i1017 = phi i64 [ 0, %.preheader.i1016.preheader ], [ %i.adv, %bb.fn ]
  %.0811.i.i1018 = phi ptr [ %i.adb, %.preheader.i1016.preheader ], [ %i.adx, %bb.fn ] ; 11 uses
  %.0910.i.i1019 = phi ptr [ %i.adc, %.preheader.i1016.preheader ], [ %i.adw, %bb.fn ] ; 6 uses
  %i.add = load i8, ptr %.0910.i.i1019, align 1, !tbaa !29 ; 2 uses
  store i8 %i.add, ptr %.0811.i.i1018, align 1, !tbaa !29
  %i.ade = icmp eq i8 %i.add, 0
  br i1 %i.ade, label %pmix_strncpy.exit.i, label %.preheader.i1016.1

.preheader.i1016.1:                               ; preds = %.preheader.i1016
  %i.adf = getelementptr inbounds nuw i8, ptr %.0910.i.i1019, i64 1
  %i.adg = getelementptr inbounds nuw i8, ptr %.0811.i.i1018, i64 1
  %i.adh = load i8, ptr %i.adf, align 1, !tbaa !29 ; 2 uses
  store i8 %i.adh, ptr %i.adg, align 1, !tbaa !29
  %i.adi = icmp eq i8 %i.adh, 0
  br i1 %i.adi, label %pmix_strncpy.exit.i.split.loop.exit127, label %.preheader.i1016.2

.preheader.i1016.2:                               ; preds = %.preheader.i1016.1
  %i.adj = getelementptr inbounds nuw i8, ptr %.0910.i.i1019, i64 2
  %i.adk = getelementptr inbounds nuw i8, ptr %.0811.i.i1018, i64 2
  %i.adl = load i8, ptr %i.adj, align 1, !tbaa !29 ; 2 uses
  store i8 %i.adl, ptr %i.adk, align 1, !tbaa !29
  %i.adm = icmp eq i8 %i.adl, 0
  br i1 %i.adm, label %pmix_strncpy.exit.i.split.loop.exit125, label %.preheader.i1016.3

.preheader.i1016.3:                               ; preds = %.preheader.i1016.2
  %i.adn = getelementptr inbounds nuw i8, ptr %.0910.i.i1019, i64 3
  %i.ado = getelementptr inbounds nuw i8, ptr %.0811.i.i1018, i64 3
  %i.adp = load i8, ptr %i.adn, align 1, !tbaa !29 ; 2 uses
  store i8 %i.adp, ptr %i.ado, align 1, !tbaa !29
  %i.adq = icmp eq i8 %i.adp, 0
  br i1 %i.adq, label %pmix_strncpy.exit.i.split.loop.exit123, label %.preheader.i1016.4

.preheader.i1016.4:                               ; preds = %.preheader.i1016.3
  %i.adr = getelementptr inbounds nuw i8, ptr %.0910.i.i1019, i64 4
  %i.ads = getelementptr inbounds nuw i8, ptr %.0811.i.i1018, i64 4
  %i.adt = load i8, ptr %i.adr, align 1, !tbaa !29 ; 2 uses
  store i8 %i.adt, ptr %i.ads, align 1, !tbaa !29
  %i.adu = icmp eq i8 %i.adt, 0
  br i1 %i.adu, label %pmix_strncpy.exit.i.split.loop.exit121, label %bb.fn

bb.fn:                                            ; preds = %.preheader.i1016.4
  %i.adv = add nuw nsw i64 %.012.i.i1017, 5       ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %.0910.i.i1019, i64 5
  %i.adx = getelementptr inbounds nuw i8, ptr %.0811.i.i1018, i64 5 ; 2 uses
  %exitcond.not.i.i1020.4 = icmp eq i64 %i.adv, 255
  br i1 %exitcond.not.i.i1020.4, label %pmix_strncpy.exit.i, label %.preheader.i1016, !llvm.loop !14

pmix_strncpy.exit.i.split.loop.exit121:           ; preds = %.preheader.i1016.4
  %i.ady = getelementptr inbounds nuw i8, ptr %.0811.i.i1018, i64 4
  br label %pmix_strncpy.exit.i

pmix_strncpy.exit.i.split.loop.exit123:           ; preds = %.preheader.i1016.3
  %i.adz = getelementptr inbounds nuw i8, ptr %.0811.i.i1018, i64 3
  br label %pmix_strncpy.exit.i

pmix_strncpy.exit.i.split.loop.exit125:           ; preds = %.preheader.i1016.2
  %i.aea = getelementptr inbounds nuw i8, ptr %.0811.i.i1018, i64 2
  br label %pmix_strncpy.exit.i

pmix_strncpy.exit.i.split.loop.exit127:           ; preds = %.preheader.i1016.1
  %i.aeb = getelementptr inbounds nuw i8, ptr %.0811.i.i1018, i64 1
  br label %pmix_strncpy.exit.i

pmix_strncpy.exit.i:                              ; preds = %.preheader.i1016, %bb.fn, %pmix_strncpy.exit.i.split.loop.exit127, %pmix_strncpy.exit.i.split.loop.exit125, %pmix_strncpy.exit.i.split.loop.exit123, %pmix_strncpy.exit.i.split.loop.exit121
  %.08.lcssa.i.i1021 = phi ptr [ %i.aeb, %pmix_strncpy.exit.i.split.loop.exit127 ], [ %i.ady, %pmix_strncpy.exit.i.split.loop.exit121 ], [ %i.aea, %pmix_strncpy.exit.i.split.loop.exit125 ], [ %i.adx, %bb.fn ], [ %i.adz, %pmix_strncpy.exit.i.split.loop.exit123 ], [ %.0811.i.i1018, %.preheader.i1016 ]
  store i8 0, ptr %.08.lcssa.i.i1021, align 1, !tbaa !29
  %i.aec = add nuw i64 %.077790, 1                ; 2 uses
  %exitcond200.not = icmp eq i64 %i.aec, %i.e
  br i1 %exitcond200.not, label %.sink.split, label %.preheader.i1016.preheader, !llvm.loop !252

pmix_bfrops_base_tma_proc_stats_create.exit:      ; preds = %bb.d
  %i.aed = mul i64 %i.e, 352
  %calloc.i1022 = tail call ptr @calloc(i64 1, i64 %i.aed) ; 3 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %calloc.i1022, ptr %i.aee, align 8, !tbaa !55
  %i.aef = icmp eq ptr %calloc.i1022, null
  br i1 %i.aef, label %.thread10, label %.lr.ph89, !prof !107

.lr.ph89:                                         ; preds = %pmix_bfrops_base_tma_proc_stats_create.exit, %pmix_bfrops_base_tma_populate_pstats.exit
  %.077688 = phi i64 [ %i.afn, %pmix_bfrops_base_tma_populate_pstats.exit ], [ 0, %pmix_bfrops_base_tma_proc_stats_create.exit ] ; 3 uses
  %i.aeg = getelementptr inbounds nuw [352 x i8], ptr %calloc.i1022, i64 %.077688 ; 11 uses
  %i.aeh = getelementptr inbounds nuw [352 x i8], ptr %i.i, i64 %.077688 ; 11 uses
  %i.aei = load ptr, ptr %i.aeh, align 8, !tbaa !101 ; 2 uses
  %.not.i1024 = icmp eq ptr %i.aei, null
  br i1 %.not.i1024, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %.lr.ph89
  %i.aej = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.aei) #26
  store ptr %i.aej, ptr %i.aeg, align 8, !tbaa !101
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %.lr.ph89
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aeg, i64 8
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aeh, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(260) %i.aek, ptr noundef nonnull readonly align 8 dereferenceable(260) %i.ael, i64 260, i1 false)
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aeh, i64 268
  %i.aen = load i32, ptr %i.aem, align 4, !tbaa !158
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aeg, i64 268
  store i32 %i.aen, ptr %i.aeo, align 4, !tbaa !158
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeh, i64 272
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !102 ; 2 uses
  %.not35.i = icmp eq ptr %i.aeq, null
  br i1 %.not35.i, label %pmix_bfrops_base_tma_populate_pstats.exit, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.aer = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.aeq) #26
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aeg, i64 272
  store ptr %i.aer, ptr %i.aes, align 8, !tbaa !102
  br label %pmix_bfrops_base_tma_populate_pstats.exit

pmix_bfrops_base_tma_populate_pstats.exit:        ; preds = %bb.fp, %bb.fq
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aeh, i64 280
  %i.aeu = load i8, ptr %i.aet, align 8, !tbaa !159
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeg, i64 280
  store i8 %i.aeu, ptr %i.aev, align 8, !tbaa !159
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aeg, i64 288
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aeh, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aew, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.aex, i64 16, i1 false), !tbaa.struct !160
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aeh, i64 308
  %i.aez = load i32, ptr %i.aey, align 4, !tbaa !161
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aeg, i64 308
  store i32 %i.aez, ptr %i.afa, align 4, !tbaa !161
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aeh, i64 312
  %i.afc = load i16, ptr %i.afb, align 8, !tbaa !162
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aeg, i64 312
  store i16 %i.afc, ptr %i.afd, align 8, !tbaa !162
  %i.afe = getelementptr inbounds nuw i8, ptr %i.aeh, i64 316
  %i.aff = getelementptr inbounds nuw i8, ptr %i.aeg, i64 316
  %i.afg = load <4 x float>, ptr %i.afe, align 4, !tbaa !163
  store <4 x float> %i.afg, ptr %i.aff, align 4, !tbaa !163
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aeh, i64 332
  %i.afi = load i16, ptr %i.afh, align 4, !tbaa !164
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aeg, i64 332
  store i16 %i.afi, ptr %i.afj, align 4, !tbaa !164
  %i.afk = getelementptr inbounds nuw i8, ptr %i.aeh, i64 336
  %i.afl = getelementptr inbounds nuw i8, ptr %i.aeg, i64 336
  %i.afm = load <2 x i64>, ptr %i.afk, align 8, !tbaa !46
  store <2 x i64> %i.afm, ptr %i.afl, align 8, !tbaa !46
  %i.afn = add nuw i64 %.077688, 1                ; 2 uses
  %exitcond200.not.a = icmp eq i64 %i.afn, %i.e
  br i1 %exitcond200.not.a, label %.sink.split, label %.lr.ph89, !llvm.loop !253

pmix_bfrops_base_tma_disk_stats_create.exit:      ; preds = %bb.d
  %i.afo = mul i64 %i.e, 96
  %calloc.i1025 = tail call ptr @calloc(i64 1, i64 %i.afo) ; 3 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %calloc.i1025, ptr %i.afp, align 8, !tbaa !55
  %i.afq = icmp eq ptr %calloc.i1025, null
  br i1 %i.afq, label %.thread10, label %.lr.ph87, !prof !107

.lr.ph87:                                         ; preds = %pmix_bfrops_base_tma_disk_stats_create.exit, %pmix_bfrops_base_tma_populate_dkstats.exit
  %.077586 = phi i64 [ %i.agn, %pmix_bfrops_base_tma_populate_dkstats.exit ], [ 0, %pmix_bfrops_base_tma_disk_stats_create.exit ] ; 3 uses
  %i.afr = getelementptr inbounds nuw [96 x i8], ptr %calloc.i1025, i64 %.077586 ; 7 uses
  %i.afs = getelementptr inbounds nuw [96 x i8], ptr %i.i, i64 %.077586 ; 7 uses
  %i.aft = load ptr, ptr %i.afs, align 8, !tbaa !104 ; 2 uses
  %.not.i1027 = icmp eq ptr %i.aft, null
  br i1 %.not.i1027, label %pmix_bfrops_base_tma_populate_dkstats.exit, label %bb.fr

bb.fr:                                            ; preds = %.lr.ph87
  %i.afu = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.aft) #26
  store ptr %i.afu, ptr %i.afr, align 8, !tbaa !104
  br label %pmix_bfrops_base_tma_populate_dkstats.exit

pmix_bfrops_base_tma_populate_dkstats.exit:       ; preds = %.lr.ph87, %bb.fr
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afs, i64 8
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afr, i64 8
  %i.afx = load <2 x i64>, ptr %i.afv, align 8, !tbaa !46
  store <2 x i64> %i.afx, ptr %i.afw, align 8, !tbaa !46
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afs, i64 24
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afr, i64 24
  %i.aga = load <2 x i64>, ptr %i.afy, align 8, !tbaa !46
  store <2 x i64> %i.aga, ptr %i.afz, align 8, !tbaa !46
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afs, i64 40
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afr, i64 40
  %i.agd = load <2 x i64>, ptr %i.agb, align 8, !tbaa !46
  store <2 x i64> %i.agd, ptr %i.agc, align 8, !tbaa !46
  %i.age = getelementptr inbounds nuw i8, ptr %i.afs, i64 56
  %i.agf = getelementptr inbounds nuw i8, ptr %i.afr, i64 56
  %i.agg = load <2 x i64>, ptr %i.age, align 8, !tbaa !46
  store <2 x i64> %i.agg, ptr %i.agf, align 8, !tbaa !46
  %i.agh = getelementptr inbounds nuw i8, ptr %i.afs, i64 72
  %i.agi = getelementptr inbounds nuw i8, ptr %i.afr, i64 72
  %i.agj = load <2 x i64>, ptr %i.agh, align 8, !tbaa !46
  store <2 x i64> %i.agj, ptr %i.agi, align 8, !tbaa !46
  %i.agk = getelementptr inbounds nuw i8, ptr %i.afs, i64 88
  %i.agl = load i64, ptr %i.agk, align 8, !tbaa !165
  %i.agm = getelementptr inbounds nuw i8, ptr %i.afr, i64 88
  store i64 %i.agl, ptr %i.agm, align 8, !tbaa !165
  %i.agn = add nuw i64 %.077586, 1                ; 2 uses
  %exitcond199.not = icmp eq i64 %i.agn, %i.e
  br i1 %exitcond199.not, label %.sink.split, label %.lr.ph87, !llvm.loop !254

pmix_bfrops_base_tma_net_stats_create.exit:       ; preds = %bb.d
  %i.ago = mul i64 %i.e, 56
  %calloc.i1028 = tail call ptr @calloc(i64 1, i64 %i.ago) ; 3 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %calloc.i1028, ptr %i.agp, align 8, !tbaa !55
  %i.agq = icmp eq ptr %calloc.i1028, null
  br i1 %i.agq, label %.thread10, label %.lr.ph85, !prof !107

.lr.ph85:                                         ; preds = %pmix_bfrops_base_tma_net_stats_create.exit, %pmix_bfrops_base_tma_populate_netstats.exit
  %.077484 = phi i64 [ %i.ahe, %pmix_bfrops_base_tma_populate_netstats.exit ], [ 0, %pmix_bfrops_base_tma_net_stats_create.exit ] ; 3 uses
  %i.agr = getelementptr inbounds nuw [56 x i8], ptr %calloc.i1028, i64 %.077484 ; 4 uses
  %i.ags = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %.077484 ; 4 uses
  %i.agt = load ptr, ptr %i.ags, align 8, !tbaa !106 ; 2 uses
  %.not.i1030 = icmp eq ptr %i.agt, null
  br i1 %.not.i1030, label %pmix_bfrops_base_tma_populate_netstats.exit, label %bb.fs

bb.fs:                                            ; preds = %.lr.ph85
  %i.agu = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.agt) #26
  store ptr %i.agu, ptr %i.agr, align 8, !tbaa !106
  br label %pmix_bfrops_base_tma_populate_netstats.exit

pmix_bfrops_base_tma_populate_netstats.exit:      ; preds = %.lr.ph85, %bb.fs
  %i.agv = getelementptr inbounds nuw i8, ptr %i.ags, i64 8
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agr, i64 8
  %i.agx = load <2 x i64>, ptr %i.agv, align 8, !tbaa !46
  store <2 x i64> %i.agx, ptr %i.agw, align 8, !tbaa !46
  %i.agy = getelementptr inbounds nuw i8, ptr %i.ags, i64 24
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agr, i64 24
  %i.aha = load <2 x i64>, ptr %i.agy, align 8, !tbaa !46
  store <2 x i64> %i.aha, ptr %i.agz, align 8, !tbaa !46
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.ags, i64 40
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agr, i64 40
  %i.ahd = load <2 x i64>, ptr %i.ahb, align 8, !tbaa !46
  store <2 x i64> %i.ahd, ptr %i.ahc, align 8, !tbaa !46
  %i.ahe = add nuw i64 %.077484, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ahe, %i.e
  br i1 %exitcond.not, label %.sink.split, label %.lr.ph85, !llvm.loop !255

pmix_bfrops_base_tma_node_stats_create.exit:      ; preds = %bb.d
  %i.ahf = mul i64 %i.e, 104
  %calloc.i1031 = tail call ptr @calloc(i64 1, i64 %i.ahf) ; 3 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %calloc.i1031, ptr %i.ahg, align 8, !tbaa !55
  %i.ahh = icmp eq ptr %calloc.i1031, null
  br i1 %i.ahh, label %.thread10, label %.lr.ph, !prof !107

.lr.ph:                                           ; preds = %pmix_bfrops_base_tma_node_stats_create.exit, %.lr.ph
  %.083 = phi i64 [ %i.ahk, %.lr.ph ], [ 0, %pmix_bfrops_base_tma_node_stats_create.exit ] ; 3 uses
  %i.ahi = getelementptr inbounds nuw [104 x i8], ptr %calloc.i1031, i64 %.083
  %i.ahj = getelementptr inbounds nuw [104 x i8], ptr %i.i, i64 %.083
  tail call fastcc void @pmix_bfrops_base_tma_populate_ndstats(ptr noundef %i.ahi, ptr noundef %i.ahj)
  %i.ahk = add nuw i64 %.083, 1                   ; 2 uses
  %i.ahl = load i64, ptr %i.d, align 8, !tbaa !56
  %i.ahm = icmp ult i64 %i.ahk, %i.ahl
  br i1 %i.ahm, label %.lr.ph, label %.sink.split, !llvm.loop !256

bb.ft:                                            ; preds = %bb.d
  br label %.thread10

bb.fu:                                            ; preds = %bb.eq, %bb.ai
  %.16 = phi i32 [ %i.zs, %bb.eq ], [ %i.bz, %bb.ai ] ; 2 uses
  %cond = icmp eq i32 %.16, -2
  br i1 %cond, label %bb.fv, label %.thread10, !prof !267

.thread10:                                        ; preds = %bb.ev, %bb.cr, %bb.fu, %pmix_bfrops_base_tma_fill_coord.exit, %bb.ct, %bb.bb, %pmix_bfrops_base_tma_net_stats_create.exit, %pmix_bfrops_base_tma_disk_stats_create.exit, %pmix_bfrops_base_tma_proc_stats_create.exit, %bb.fm, %pmix_bfrops_base_tma_endpoint_create.exit, %bb.fa, %bb.ez, %pmix_bfrops_base_tma_geometry_create.exit, %pmix_bfrops_base_tma_cpuset_create.exit, %bb.eg, %bb.ec, %bb.dw, %pmix_bfrops_base_tma_info_create.exit976.thread, %pmix_bfrops_base_tma_query_create.exit, %bb.d, %pmix_bfrops_base_tma_proc_info_create.exit, %bb.dd, %bb.db, %bb.cz, %bb.cx, %bb.cv, %bb.co, %bb.cj, %bb.bq, %pmix_bfrops_base_tma_pdata_create.exit, %bb.bh, %pmix_bfrops_base_tma_app_create.exit, %bb.al, %bb.aj, %pmix_bfrops_base_tma_value_create.exit, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %pmix_bfrops_base_tma_node_stats_create.exit, %bb.ft
  %.1612 = phi i32 [ %.16, %bb.fu ], [ -32, %bb.cr ], [ -32, %pmix_bfrops_base_tma_fill_coord.exit ], [ -32, %bb.ct ], [ -32, %bb.bb ], [ -32, %pmix_bfrops_base_tma_net_stats_create.exit ], [ -32, %pmix_bfrops_base_tma_disk_stats_create.exit ], [ -32, %pmix_bfrops_base_tma_proc_stats_create.exit ], [ -32, %bb.fm ], [ -32, %pmix_bfrops_base_tma_endpoint_create.exit ], [ -32, %bb.fa ], [ -32, %bb.ez ], [ -32, %pmix_bfrops_base_tma_geometry_create.exit ], [ -32, %pmix_bfrops_base_tma_cpuset_create.exit ], [ -32, %bb.eg ], [ -32, %bb.ec ], [ -32, %bb.dw ], [ -32, %pmix_bfrops_base_tma_info_create.exit976.thread ], [ -32, %pmix_bfrops_base_tma_query_create.exit ], [ -47, %bb.d ], [ -32, %pmix_bfrops_base_tma_proc_info_create.exit ], [ -32, %bb.dd ], [ -32, %bb.db ], [ -32, %bb.cz ], [ -32, %bb.cx ], [ -32, %bb.cv ], [ -16, %bb.ft ], [ -32, %bb.co ], [ -32, %bb.cj ], [ -32, %bb.bq ], [ -32, %pmix_bfrops_base_tma_pdata_create.exit ], [ -32, %bb.bh ], [ -32, %pmix_bfrops_base_tma_app_create.exit ], [ -32, %bb.al ], [ -32, %bb.aj ], [ -32, %pmix_bfrops_base_tma_value_create.exit ], [ -32, %bb.af ], [ -32, %bb.ad ], [ -32, %bb.ab ], [ -32, %bb.z ], [ -32, %bb.x ], [ -32, %bb.v ], [ -32, %bb.s ], [ -32, %bb.q ], [ -32, %bb.o ], [ -32, %bb.m ], [ -32, %bb.k ], [ -32, %bb.i ], [ -32, %bb.g ], [ -32, %bb.e ], [ -32, %pmix_bfrops_base_tma_node_stats_create.exit ], [ -32, %bb.ev ] ; 2 uses
  %i.ahn = tail call ptr @PMIx_Error_string(i32 noundef %.1612) #26
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %i.ahn, ptr noundef nonnull @.str.3, i32 noundef 3300) #26
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %.thread10
  %.1613 = phi i32 [ -2, %bb.fu ], [ %.1612, %.thread10 ]
  tail call void @free(ptr noundef %i.a) #26
  br label %.sink.split

.sink.split:                                      ; preds = %.lr.ph, %pmix_bfrops_base_tma_populate_netstats.exit, %pmix_bfrops_base_tma_populate_dkstats.exit, %pmix_bfrops_base_tma_populate_pstats.exit, %pmix_strncpy.exit.i, %bb.fl, %bb.ff, %.loopexit46, %bb.ep, %pmix_bfrops_base_tma_argv_copy.exit1005, %bb.ef, %bb.eb, %bb.dv, %bb.di, %.lr.ph116, %bb.cu, %bb.cn, %pmix_bfrops_base_tma_copy_payload.exit, %pmix_bfrops_base_tma_load_key.exit1059, %pmix_bfrops_base_tma_info_xfer.exit938, %.loopexit, %bb.ah, %bb.u, %middle.block, %bb.fv, %bb.f, %bb.h, %bb.cw, %bb.j, %bb.l, %bb.n, %bb.cy, %bb.p, %bb.r, %bb.da, %bb.w, %bb.dc, %bb.y, %bb.aa, %bb.de, %bb.ac, %bb.ae, %bb.ag, %bb.ak, %bb.am, %bb.bi, %bb.dx, %bb.eh, %bb.fb, %bb.b, %bb.c
  %.0799.sink = phi ptr [ %i.a, %bb.b ], [ %i.a, %bb.c ], [ null, %bb.fv ], [ %i.a, %bb.cu ], [ %i.a, %bb.eb ], [ %i.a, %bb.dx ], [ %i.a, %bb.f ], [ %i.a, %bb.u ], [ %i.a, %bb.h ], [ %i.a, %bb.cw ], [ %i.a, %bb.j ], [ %i.a, %pmix_bfrops_base_tma_load_key.exit1059 ], [ %i.a, %bb.l ], [ %i.a, %bb.di ], [ %i.a, %bb.n ], [ %i.a, %bb.cy ], [ %i.a, %bb.p ], [ %i.a, %pmix_bfrops_base_tma_populate_dkstats.exit ], [ %i.a, %bb.r ], [ %i.a, %bb.da ], [ %i.a, %pmix_bfrops_base_tma_populate_netstats.exit ], [ %i.a, %bb.bi ], [ %i.a, %bb.w ], [ %i.a, %bb.dc ], [ %i.a, %bb.y ], [ %i.a, %bb.aa ], [ %i.a, %bb.de ], [ %i.a, %bb.ac ], [ %i.a, %pmix_bfrops_base_tma_info_xfer.exit938 ], [ %i.a, %bb.ae ], [ %i.a, %bb.ag ], [ %i.a, %.lr.ph116 ], [ %i.a, %.loopexit ], [ %i.a, %pmix_bfrops_base_tma_populate_pstats.exit ], [ %i.a, %bb.ak ], [ %i.a, %bb.dv ], [ %i.a, %bb.am ], [ %i.a, %bb.fb ], [ %i.a, %bb.eh ], [ %i.a, %.loopexit46 ], [ %i.a, %middle.block ], [ %i.a, %pmix_bfrops_base_tma_argv_copy.exit1005 ], [ %i.a, %bb.ah ], [ %i.a, %bb.ef ], [ %i.a, %pmix_bfrops_base_tma_copy_payload.exit ], [ %i.a, %bb.ep ], [ %i.a, %bb.fl ], [ %i.a, %bb.ff ], [ %i.a, %pmix_strncpy.exit.i ], [ %i.a, %bb.cn ], [ %i.a, %.lr.ph ]
end_hunk_2
begin_hunk_3_@pmix_bfrops_base_tma_copy_cpuset:bb.a

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 -32, 1) i32 @pmix_bfrops_base_tma_copy_geometry(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #7 {
bb.a:
  %calloc.i = tail call dereferenceable_or_null(40) ptr @calloc(i64 1, i64 40) ; 8 uses
  %i.a = icmp eq ptr %calloc.i, null
  br i1 %i.a, label %bb.k, label %bb.b, !prof !107

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !156
  store i64 %i.b, ptr %calloc.i, align 8, !tbaa !156
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !84   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.d) #26
  %i.f = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !84
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !85   ; 2 uses
  %.not45 = icmp eq ptr %i.h, null
  br i1 %.not45, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.h) #26
  %i.j = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !85
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !86   ; 2 uses
  %.not46 = icmp eq ptr %i.l, null
  br i1 %.not46, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !87   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %calloc.i, i64 32
  store i64 %i.n, ptr %i.o, align 8, !tbaa !87
  %i.p = tail call noalias noundef ptr @calloc(i64 noundef %i.n, i64 noundef 24) #33 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %calloc.i, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !86
  %.not4812.not = icmp eq i64 %i.n, 0
  br i1 %.not4812.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.j
  %.013 = phi i64 [ %i.ad, %bb.j ], [ 0, %bb.g ]  ; 3 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.013 ; 3 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.013 ; 3 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !80
  store i8 %i.t, ptr %i.r, align 8, !tbaa !80
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !139  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.v, ptr %i.w, align 8, !tbaa !139
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.x = shl i64 %i.v, 2                          ; 2 uses
  %i.y = tail call noalias noundef ptr @malloc(i64 noundef %i.x) #27 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !81
  %i.aa = icmp eq ptr %i.y, null
  br i1 %i.aa, label %.thread9, label %bb.i, !prof !107

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !81
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.y, ptr align 4 %i.ac, i64 %i.x, i1 false)
  br label %bb.j

.thread9:                                         ; preds = %bb.h
  tail call void @PMIx_Geometry_free(ptr noundef nonnull %calloc.i, i64 noundef 1) #26
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %.lr.ph
  %i.ad = add nuw i64 %.013, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.n
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !269

.loopexit:                                        ; preds = %bb.j, %bb.g, %bb.f
  store ptr %calloc.i, ptr %0, align 8, !tbaa !271
  br label %bb.k

bb.k:                                             ; preds = %.thread9, %bb.a, %.loopexit
  %.340 = phi i32 [ -32, %.thread9 ], [ 0, %.loopexit ], [ -32, %bb.a ]
  ret i32 %.340
}

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -32, 1) i32 @pmix_bfrops_base_tma_copy_devdist(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #16 {
bb.a:
  %calloc = tail call dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32) ; 6 uses
  %.not.i = icmp eq ptr %calloc, null
  br i1 %.not.i, label %pmix_bfrops_base_tma_device_distance_create.exit.thread, label %.preheader.i, !prof !107

.preheader.i:                                     ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %calloc, i64 24
  %i.b = load ptr, ptr %1, align 8, !tbaa !89     ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.c = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.b) #26
  store ptr %i.c, ptr %calloc, align 8, !tbaa !89
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.i
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !90   ; 2 uses
  %.not21 = icmp eq ptr %i.e, null
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.e) #26
  %i.g = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !90
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !157
  %i.j = getelementptr inbounds nuw i8, ptr %calloc, i64 16
  store i64 %i.i, ptr %i.j, align 8, !tbaa !157
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load <2 x i16>, ptr %i.k, align 8, !tbaa !119
  store <2 x i16> %i.l, ptr %i.a, align 8, !tbaa !119
  store ptr %calloc, ptr %0, align 8, !tbaa !273
  br label %pmix_bfrops_base_tma_device_distance_create.exit.thread

pmix_bfrops_base_tma_device_distance_create.exit.thread: ; preds = %bb.a, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ -32, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -32, 1) i32 @pmix_bfrops_base_tma_copy_endpoint(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #16 {
bb.a:
  %calloc.i = tail call dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32) ; 6 uses
  %i.a = icmp eq ptr %calloc.i, null
  br i1 %i.a, label %bb.i, label %bb.b, !prof !107

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !92     ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.b) #26
  store ptr %i.c, ptr %calloc.i, align 8, !tbaa !92
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !93   ; 2 uses
  %.not24 = icmp eq ptr %i.e, null
  br i1 %.not24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.e) #26
  %i.g = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !93
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !94   ; 2 uses
  %.not25 = icmp eq ptr %i.i, null
  br i1 %.not25, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !140  ; 3 uses
  %i.l = tail call noalias noundef ptr @malloc(i64 noundef %i.k) #27 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !94
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull align 1 %i.i, i64 %i.k, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %calloc.i, i64 24
  store i64 %i.k, ptr %i.n, align 8, !tbaa !140
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr %calloc.i, ptr %0, align 8, !tbaa !275
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  %.0 = phi i32 [ 0, %bb.h ], [ -32, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -32, 1) i32 @pmix_bfrops_base_tma_copy_regattr(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #13 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(536) ptr @malloc(i64 noundef 536) #27 ; 12 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %pmix_bfrops_base_tma_regattr_create.exit.thread, label %.preheader.i, !prof !107

pmix_bfrops_base_tma_regattr_create.exit.thread:  ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !277
  br label %bb.i

.preheader.i:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  store ptr null, ptr %i.b, align 8, !tbaa !52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(522) %i.a, i8 0, i64 522, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !277
  %i.c = load ptr, ptr %1, align 8, !tbaa !50     ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.d = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.c) #26
  store ptr %i.d, ptr %i.a, align 8, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.e, i8 0, i64 512, i1 false)
  br label %.preheader.i17

.preheader.i17:                                   ; preds = %bb.e, %bb.c
  %.012.i.i = phi i64 [ 0, %bb.c ], [ %i.u, %bb.e ] ; 2 uses
  %.0811.i.i = phi ptr [ %i.e, %bb.c ], [ %i.w, %bb.e ] ; 8 uses
  %.0910.i.i = phi ptr [ %i.f, %bb.c ], [ %i.v, %bb.e ] ; 5 uses
  %i.g = load i8, ptr %.0910.i.i, align 1, !tbaa !29 ; 2 uses
  store i8 %i.g, ptr %.0811.i.i, align 1, !tbaa !29
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %pmix_bfrops_base_tma_load_key.exit, label %.preheader.i17.1

.preheader.i17.1:                                 ; preds = %.preheader.i17
  %i.i = getelementptr inbounds nuw i8, ptr %.0910.i.i, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 1
  %i.k = load i8, ptr %i.i, align 1, !tbaa !29    ; 2 uses
  store i8 %i.k, ptr %i.j, align 1, !tbaa !29
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %pmix_bfrops_base_tma_load_key.exit.split.loop.exit11, label %.preheader.i17.2

.preheader.i17.2:                                 ; preds = %.preheader.i17.1
  %i.m = getelementptr inbounds nuw i8, ptr %.0910.i.i, i64 2
  %i.n = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 2
  %i.o = load i8, ptr %i.m, align 1, !tbaa !29    ; 2 uses
  store i8 %i.o, ptr %i.n, align 1, !tbaa !29
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %pmix_bfrops_base_tma_load_key.exit.split.loop.exit9, label %bb.d

bb.d:                                             ; preds = %.preheader.i17.2
  %i.q = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 3 ; 3 uses
  %exitcond.not.i.i.2 = icmp eq i64 %.012.i.i, 508
  br i1 %exitcond.not.i.i.2, label %pmix_bfrops_base_tma_load_key.exit, label %.preheader.i17.3

.preheader.i17.3:                                 ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.0910.i.i, i64 3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !29    ; 2 uses
  store i8 %i.s, ptr %i.q, align 1, !tbaa !29
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %pmix_bfrops_base_tma_load_key.exit, label %bb.e

bb.e:                                             ; preds = %.preheader.i17.3
  %i.u = add nuw nsw i64 %.012.i.i, 4
  %i.v = getelementptr inbounds nuw i8, ptr %.0910.i.i, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 4
  br label %.preheader.i17

pmix_bfrops_base_tma_load_key.exit.split.loop.exit9: ; preds = %.preheader.i17.2
  %i.x = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 2
  br label %pmix_bfrops_base_tma_load_key.exit

pmix_bfrops_base_tma_load_key.exit.split.loop.exit11: ; preds = %.preheader.i17.1
  %i.y = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 1
  br label %pmix_bfrops_base_tma_load_key.exit

pmix_bfrops_base_tma_load_key.exit:               ; preds = %.preheader.i17, %bb.d, %.preheader.i17.3, %pmix_bfrops_base_tma_load_key.exit.split.loop.exit11, %pmix_bfrops_base_tma_load_key.exit.split.loop.exit9
  %.08.lcssa.i.i = phi ptr [ %i.y, %pmix_bfrops_base_tma_load_key.exit.split.loop.exit11 ], [ %i.q, %bb.d ], [ %i.x, %pmix_bfrops_base_tma_load_key.exit.split.loop.exit9 ], [ %i.q, %.preheader.i17.3 ], [ %.0811.i.i, %.preheader.i17 ]
  store i8 0, ptr %.08.lcssa.i.i, align 1, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !51
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 520
  store i16 %i.aa, ptr %i.ab, align 8, !tbaa !51
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !52 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %pmix_bfrops_base_tma_argv_copy.exit, label %bb.f

bb.f:                                             ; preds = %pmix_bfrops_base_tma_load_key.exit
  %i.af = tail call noalias noundef dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #27 ; 3 uses
  store ptr null, ptr %i.af, align 8, !tbaa !57
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !57 ; 2 uses
  %.not12.i = icmp eq ptr %i.ag, null
  br i1 %.not12.i, label %pmix_bfrops_base_tma_argv_copy.exit, label %.lr.ph.i

.lr.phthread-pre-split.i:                         ; preds = %bb.h
  %.pr.i = load ptr, ptr %i.ap, align 8, !tbaa !57
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.phthread-pre-split.i
  %i.ah = phi ptr [ %.pr.i, %.lr.phthread-pre-split.i ], [ null, %bb.f ]
  %i.ai = phi ptr [ %i.bb, %.lr.phthread-pre-split.i ], [ %i.ag, %bb.f ]
  %.0814.i = phi ptr [ %i.ba, %.lr.phthread-pre-split.i ], [ %i.ad, %bb.f ]
  %.0313.i = phi ptr [ %i.ap, %.lr.phthread-pre-split.i ], [ %i.af, %bb.f ] ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not1.i.i.i, label %pmix_bfrops_base_tma_argv_count.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i.i.i
  %.03.i.i.i = phi i32 [ %i.aj, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i ]
  %.062.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.0313.i, %.lr.ph.i ]
  %i.aj = add nuw nsw i32 %.03.i.i.i, 1           ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.062.i.i.i, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !57
  %.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i, label %pmix_bfrops_base_tma_argv_count.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !15

pmix_bfrops_base_tma_argv_count.exit.i.i:         ; preds = %.lr.ph.i.i.i, %.lr.ph.i
  %.0.lcssa.i.i.i = phi i32 [ 0, %.lr.ph.i ], [ %i.aj, %.lr.ph.i.i.i ] ; 2 uses
  %i.am = add nsw i32 %.0.lcssa.i.i.i, 2
  %i.an = sext i32 %i.am to i64
  %i.ao = shl nsw i64 %i.an, 3
  %i.ap = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.0313.i, i64 noundef %i.ao) #29 ; 8 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %pmix_bfrops_base_tma_argv_copy.exit, label %bb.g

bb.g:                                             ; preds = %pmix_bfrops_base_tma_argv_count.exit.i.i
  %i.ar = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.ai) #26 ; 2 uses
  %i.as = sext i32 %.0.lcssa.i.i.i to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.as ; 2 uses
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !57
  %i.au = icmp eq ptr %i.ar, null
  br i1 %i.au, label %.preheader.i.i, label %bb.h

.preheader.i.i:                                   ; preds = %bb.g
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !57 ; 2 uses
  %.not101.i.i = icmp eq ptr %i.av, null
  br i1 %.not101.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i.loopexit:                         ; preds = %.lr.ph.i.i
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !277
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit, %.preheader.i.i
  %.pre = phi ptr [ %.pre.pre, %._crit_edge.i.i.loopexit ], [ %i.a, %.preheader.i.i ]
  tail call void @free(ptr noundef nonnull %i.ap) #26
  br label %pmix_bfrops_base_tma_argv_copy.exit

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.aw = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %i.av, %.preheader.i.i ]
  %.02.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %i.ap, %.preheader.i.i ]
  tail call void @free(ptr noundef nonnull %i.aw) #26
  %i.ax = getelementptr inbounds nuw i8, ptr %.02.i.i, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !57 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.ay, null
  br i1 %.not10.i.i, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i, !llvm.loop !5

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr i8, ptr %i.at, i64 8
  store ptr null, ptr %i.az, align 8, !tbaa !57
  %i.ba = getelementptr inbounds nuw i8, ptr %.0814.i, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !57 ; 2 uses
  %.not.i18 = icmp eq ptr %i.bb, null
  br i1 %.not.i18, label %pmix_bfrops_base_tma_argv_copy.exit, label %.lr.phthread-pre-split.i, !llvm.loop !16

pmix_bfrops_base_tma_argv_copy.exit:              ; preds = %pmix_bfrops_base_tma_argv_count.exit.i.i, %bb.h, %pmix_bfrops_base_tma_load_key.exit, %bb.f, %._crit_edge.i.i
  %i.bc = phi ptr [ %i.a, %pmix_bfrops_base_tma_load_key.exit ], [ %.pre, %._crit_edge.i.i ], [ %i.a, %bb.f ], [ %i.a, %bb.h ], [ %i.a, %pmix_bfrops_base_tma_argv_count.exit.i.i ]
  %.1.i = phi ptr [ null, %pmix_bfrops_base_tma_load_key.exit ], [ null, %._crit_edge.i.i ], [ %i.af, %bb.f ], [ null, %pmix_bfrops_base_tma_argv_count.exit.i.i ], [ %i.ap, %bb.h ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 528
  store ptr %.1.i, ptr %i.bd, align 8, !tbaa !52
  br label %bb.i

bb.i:                                             ; preds = %pmix_bfrops_base_tma_regattr_create.exit.thread, %pmix_bfrops_base_tma_argv_copy.exit
  %.0 = phi i32 [ 0, %pmix_bfrops_base_tma_argv_copy.exit ], [ -32, %pmix_bfrops_base_tma_regattr_create.exit.thread ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @pmix_bfrops_base_tma_copy_dbuf(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) unnamed_addr #7 {
bb.a:
  %calloc.i = tail call noalias noundef dereferenceable_or_null(40) ptr @calloc(i64 1, i64 40) ; 3 uses
  %i.a = icmp eq ptr %calloc.i, null
  br i1 %i.a, label %bb.c, label %bb.b, !prof !107

bb.b:                                             ; preds = %bb.a
  store ptr %calloc.i, ptr %0, align 8, !tbaa !279
  %i.b = tail call i32 @PMIx_Data_copy_payload(ptr noundef nonnull %calloc.i, ptr noundef %1) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ -32, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -32, 1) i32 @pmix_bfrops_base_tma_copy_pstats(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #16 {
bb.a:
  %calloc.i = tail call dereferenceable_or_null(352) ptr @calloc(i64 1, i64 352) ; 13 uses
  %i.a = icmp eq ptr %calloc.i, null
  br i1 %i.a, label %bb.f, label %bb.b, !prof !107

bb.b:                                             ; preds = %bb.a
  store ptr %calloc.i, ptr %0, align 8, !tbaa !281
  %i.b = load ptr, ptr %1, align 8, !tbaa !101    ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.b) #26
  store ptr %i.c, ptr %calloc.i, align 8, !tbaa !101
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(260) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(260) %i.e, i64 260, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 268
  %i.g = load i32, ptr %i.f, align 4, !tbaa !158
  %i.h = getelementptr inbounds nuw i8, ptr %calloc.i, i64 268
  store i32 %i.g, ptr %i.h, align 4, !tbaa !158
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !102  ; 2 uses
  %.not35.i = icmp eq ptr %i.j, null
  br i1 %.not35.i, label %pmix_bfrops_base_tma_populate_pstats.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.j) #26
  %i.l = getelementptr inbounds nuw i8, ptr %calloc.i, i64 272
  store ptr %i.k, ptr %i.l, align 8, !tbaa !102
  br label %pmix_bfrops_base_tma_populate_pstats.exit

pmix_bfrops_base_tma_populate_pstats.exit:        ; preds = %bb.d, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.n = load i8, ptr %i.m, align 8, !tbaa !159
  %i.o = getelementptr inbounds nuw i8, ptr %calloc.i, i64 280
  store i8 %i.n, ptr %i.o, align 8, !tbaa !159
  %i.p = getelementptr inbounds nuw i8, ptr %calloc.i, i64 288
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !160
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 308
  %i.s = load i32, ptr %i.r, align 4, !tbaa !161
  %i.t = getelementptr inbounds nuw i8, ptr %calloc.i, i64 308
  store i32 %i.s, ptr %i.t, align 4, !tbaa !161
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.v = load i16, ptr %i.u, align 8, !tbaa !162
  %i.w = getelementptr inbounds nuw i8, ptr %calloc.i, i64 312
  store i16 %i.v, ptr %i.w, align 8, !tbaa !162
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 316
  %i.y = getelementptr inbounds nuw i8, ptr %calloc.i, i64 316
  %i.z = load <4 x float>, ptr %i.x, align 4, !tbaa !163
  store <4 x float> %i.z, ptr %i.y, align 4, !tbaa !163
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 332
  %i.ab = load i16, ptr %i.aa, align 4, !tbaa !164
  %i.ac = getelementptr inbounds nuw i8, ptr %calloc.i, i64 332
  store i16 %i.ab, ptr %i.ac, align 4, !tbaa !164
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ae = getelementptr inbounds nuw i8, ptr %calloc.i, i64 336
  %i.af = load <2 x i64>, ptr %i.ad, align 8, !tbaa !46
  store <2 x i64> %i.af, ptr %i.ae, align 8, !tbaa !46
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %pmix_bfrops_base_tma_populate_pstats.exit
  %.0 = phi i32 [ 0, %pmix_bfrops_base_tma_populate_pstats.exit ], [ -32, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -32, 1) i32 @pmix_bfrops_base_tma_copy_dkstats(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #16 {
bb.a:
  %calloc.i = tail call dereferenceable_or_null(96) ptr @calloc(i64 1, i64 96) ; 9 uses
  %i.a = icmp eq ptr %calloc.i, null
  br i1 %i.a, label %bb.d, label %bb.b, !prof !107

bb.b:                                             ; preds = %bb.a
  store ptr %calloc.i, ptr %0, align 8, !tbaa !45
  %i.b = load ptr, ptr %1, align 8, !tbaa !104    ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %pmix_bfrops_base_tma_populate_dkstats.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.b) #26
  store ptr %i.c, ptr %calloc.i, align 8, !tbaa !104
  br label %pmix_bfrops_base_tma_populate_dkstats.exit

pmix_bfrops_base_tma_populate_dkstats.exit:       ; preds = %bb.b, %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  %i.f = load <2 x i64>, ptr %i.d, align 8, !tbaa !46
  store <2 x i64> %i.f, ptr %i.e, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %calloc.i, i64 24
  %i.i = load <2 x i64>, ptr %i.g, align 8, !tbaa !46
  store <2 x i64> %i.i, ptr %i.h, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %calloc.i, i64 40
  %i.l = load <2 x i64>, ptr %i.j, align 8, !tbaa !46
  store <2 x i64> %i.l, ptr %i.k, align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %calloc.i, i64 56
  %i.o = load <2 x i64>, ptr %i.m, align 8, !tbaa !46
  store <2 x i64> %i.o, ptr %i.n, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.q = getelementptr inbounds nuw i8, ptr %calloc.i, i64 72
  %i.r = load <2 x i64>, ptr %i.p, align 8, !tbaa !46
  store <2 x i64> %i.r, ptr %i.q, align 8, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.t = load i64, ptr %i.s, align 8, !tbaa !165
  %i.u = getelementptr inbounds nuw i8, ptr %calloc.i, i64 88
  store i64 %i.t, ptr %i.u, align 8, !tbaa !165
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %pmix_bfrops_base_tma_populate_dkstats.exit
  %.0 = phi i32 [ 0, %pmix_bfrops_base_tma_populate_dkstats.exit ], [ -32, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -32, 1) i32 @pmix_bfrops_base_tma_copy_netstats(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #16 {
bb.a:
  %calloc.i = tail call dereferenceable_or_null(56) ptr @calloc(i64 1, i64 56) ; 6 uses
  %i.a = icmp eq ptr %calloc.i, null
  br i1 %i.a, label %bb.d, label %bb.b, !prof !107

bb.b:                                             ; preds = %bb.a
  store ptr %calloc.i, ptr %0, align 8, !tbaa !45
  %i.b = load ptr, ptr %1, align 8, !tbaa !106    ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %pmix_bfrops_base_tma_populate_netstats.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.b) #26
  store ptr %i.c, ptr %calloc.i, align 8, !tbaa !106
  br label %pmix_bfrops_base_tma_populate_netstats.exit

pmix_bfrops_base_tma_populate_netstats.exit:      ; preds = %bb.b, %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  %i.f = load <2 x i64>, ptr %i.d, align 8, !tbaa !46
  store <2 x i64> %i.f, ptr %i.e, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %calloc.i, i64 24
  %i.i = load <2 x i64>, ptr %i.g, align 8, !tbaa !46
  store <2 x i64> %i.i, ptr %i.h, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %calloc.i, i64 40
  %i.l = load <2 x i64>, ptr %i.j, align 8, !tbaa !46
  store <2 x i64> %i.l, ptr %i.k, align 8, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %pmix_bfrops_base_tma_populate_netstats.exit
  %.0 = phi i32 [ 0, %pmix_bfrops_base_tma_populate_netstats.exit ], [ -32, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint nofree nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -32, 1) i32 @pmix_bfrops_base_tma_copy_ndstats(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #18 {
bb.a:
  %calloc.i = tail call dereferenceable_or_null(104) ptr @calloc(i64 1, i64 104) ; 3 uses
  %i.a = icmp eq ptr %calloc.i, null
  br i1 %i.a, label %bb.c, label %bb.b, !prof !107

bb.b:                                             ; preds = %bb.a
  store ptr %calloc.i, ptr %0, align 8, !tbaa !45
  tail call fastcc void @pmix_bfrops_base_tma_populate_ndstats(ptr noundef %calloc.i, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
end_hunk_3
