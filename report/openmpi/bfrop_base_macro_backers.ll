Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/bfrop_base_macro_backers?download=true
inline.NumInlined: 556
inline.NumDeleted: 143
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 43
begin_hunk_0_@pmix_bfrops_base_tma_copy_cpuset:bb.a

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -32, 1) i32 @pmix_bfrops_base_tma_copy_geometry(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  %calloc.i = tail call dereferenceable_or_null(40) ptr @calloc(i64 1, i64 40) ; 8 uses
  %i.a = icmp eq ptr %calloc.i, null
  br i1 %i.a, label %bb.k, label %bb.b, !prof !90

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !140
  store i64 %i.b, ptr %calloc.i, align 8, !tbaa !140
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.d) #40
  %i.f = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !59
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60   ; 2 uses
  %.not45 = icmp eq ptr %i.h, null
  br i1 %.not45, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.h) #40
  %i.j = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !60
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61   ; 2 uses
  %.not46 = icmp eq ptr %i.l, null
  br i1 %.not46, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !62   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %calloc.i, i64 32
  store i64 %i.n, ptr %i.o, align 8, !tbaa !62
  %i.p = tail call noalias noundef ptr @calloc(i64 noundef %i.n, i64 noundef 24) #43 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %calloc.i, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !61
  %.not4812.not = icmp eq i64 %i.n, 0
  br i1 %.not4812.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.j
  %.013 = phi i64 [ %i.ad, %bb.j ], [ 0, %bb.g ]  ; 3 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.013 ; 3 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.013 ; 3 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !55
  store i8 %i.t, ptr %i.r, align 8, !tbaa !55
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !94   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.v, ptr %i.w, align 8, !tbaa !94
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.x = shl i64 %i.v, 2                          ; 2 uses
  %i.y = tail call noalias noundef ptr @malloc(i64 noundef %i.x) #41 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !56
  %i.aa = icmp eq ptr %i.y, null
  br i1 %i.aa, label %.thread9, label %bb.i, !prof !90

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.y, ptr align 4 %i.ac, i64 %i.x, i1 false)
  br label %bb.j

.thread9:                                         ; preds = %bb.h
  tail call void @PMIx_Geometry_free(ptr noundef nonnull %calloc.i, i64 noundef 1)
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %.lr.ph
  %i.ad = add nuw i64 %.013, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.n
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !263

.loopexit:                                        ; preds = %bb.j, %bb.g, %bb.f
  store ptr %calloc.i, ptr %0, align 8, !tbaa !265
  br label %bb.k

bb.k:                                             ; preds = %.thread9, %bb.a, %.loopexit
  %.340 = phi i32 [ -32, %.thread9 ], [ 0, %.loopexit ], [ -32, %bb.a ]
  ret i32 %.340
}

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -32, 1) i32 @pmix_bfrops_base_tma_copy_devdist(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #33 {
bb.a:
  %calloc = tail call dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32) ; 6 uses
  %.not.i = icmp eq ptr %calloc, null
  br i1 %.not.i, label %pmix_bfrops_base_tma_device_distance_create.exit.thread, label %.preheader.i, !prof !90

.preheader.i:                                     ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %calloc, i64 24
  %i.b = load ptr, ptr %1, align 8, !tbaa !64     ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.c = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.b) #40
  store ptr %i.c, ptr %calloc, align 8, !tbaa !64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.i
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 2 uses
  %.not21 = icmp eq ptr %i.e, null
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.e) #40
  %i.g = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !65
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !141
  %i.j = getelementptr inbounds nuw i8, ptr %calloc, i64 16
  store i64 %i.i, ptr %i.j, align 8, !tbaa !141
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load <2 x i16>, ptr %i.k, align 8, !tbaa !89
  store <2 x i16> %i.l, ptr %i.a, align 8, !tbaa !89
  store ptr %calloc, ptr %0, align 8, !tbaa !267
  br label %pmix_bfrops_base_tma_device_distance_create.exit.thread

pmix_bfrops_base_tma_device_distance_create.exit.thread: ; preds = %bb.a, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ -32, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -32, 1) i32 @pmix_bfrops_base_tma_copy_endpoint(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #33 {
bb.a:
  %calloc.i = tail call dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32) ; 6 uses
  %i.a = icmp eq ptr %calloc.i, null
  br i1 %i.a, label %bb.i, label %bb.b, !prof !90

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !68     ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.b) #40
  store ptr %i.c, ptr %calloc.i, align 8, !tbaa !68
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69   ; 2 uses
  %.not24 = icmp eq ptr %i.e, null
  br i1 %.not24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.e) #40
  %i.g = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !69
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !70   ; 2 uses
  %.not25 = icmp eq ptr %i.i, null
  br i1 %.not25, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !142  ; 3 uses
  %i.l = tail call noalias noundef ptr @malloc(i64 noundef %i.k) #41 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull align 1 %i.i, i64 %i.k, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %calloc.i, i64 24
  store i64 %i.k, ptr %i.n, align 8, !tbaa !142
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr %calloc.i, ptr %0, align 8, !tbaa !269
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  %.0 = phi i32 [ 0, %bb.h ], [ -32, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -32, 1) i32 @pmix_bfrops_base_tma_copy_regattr(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(536) ptr @malloc(i64 noundef 536) #41 ; 6 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %pmix_bfrops_base_tma_regattr_create.exit.thread, label %.preheader.i, !prof !90

pmix_bfrops_base_tma_regattr_create.exit.thread:  ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !271
  br label %bb.i

.preheader.i:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  store ptr null, ptr %i.b, align 8, !tbaa !73
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(522) %i.a, i8 0, i64 522, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !271
  %i.c = load ptr, ptr %1, align 8, !tbaa !72     ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.d = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.c) #40
  store ptr %i.d, ptr %i.a, align 8, !tbaa !72
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.e, i8 0, i64 512, i1 false)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.c
  %.012.i.i = phi i64 [ 0, %bb.c ], [ %i.u, %bb.e ] ; 2 uses
  %.0811.i.i = phi ptr [ %i.e, %bb.c ], [ %i.w, %bb.e ] ; 8 uses
  %.0910.i.i = phi ptr [ %i.f, %bb.c ], [ %i.v, %bb.e ] ; 5 uses
  %i.g = load i8, ptr %.0910.i.i, align 1, !tbaa !36 ; 2 uses
  store i8 %i.g, ptr %.0811.i.i, align 1, !tbaa !36
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %pmix_bfrops_base_tma_load_key.exit, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.0910.i.i, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 1
  %i.k = load i8, ptr %i.i, align 1, !tbaa !36    ; 2 uses
  store i8 %i.k, ptr %i.j, align 1, !tbaa !36
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %pmix_bfrops_base_tma_load_key.exit.split.loop.exit11, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.1
  %i.m = getelementptr inbounds nuw i8, ptr %.0910.i.i, i64 2
  %i.n = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 2
  %i.o = load i8, ptr %i.m, align 1, !tbaa !36    ; 2 uses
  store i8 %i.o, ptr %i.n, align 1, !tbaa !36
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %pmix_bfrops_base_tma_load_key.exit.split.loop.exit9, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.2
  %i.q = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 3 ; 3 uses
  %exitcond.not.i.i.2 = icmp eq i64 %.012.i.i, 508
  br i1 %exitcond.not.i.i.2, label %pmix_bfrops_base_tma_load_key.exit, label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.0910.i.i, i64 3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !36    ; 2 uses
  store i8 %i.s, ptr %i.q, align 1, !tbaa !36
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %pmix_bfrops_base_tma_load_key.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.3
  %i.u = add nuw nsw i64 %.012.i.i, 4
  %i.v = getelementptr inbounds nuw i8, ptr %.0910.i.i, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 4
  br label %.lr.ph.i.i

pmix_bfrops_base_tma_load_key.exit.split.loop.exit9: ; preds = %.lr.ph.i.i.2
  %i.x = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 2
  br label %pmix_bfrops_base_tma_load_key.exit

pmix_bfrops_base_tma_load_key.exit.split.loop.exit11: ; preds = %.lr.ph.i.i.1
  %i.y = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 1
  br label %pmix_bfrops_base_tma_load_key.exit

pmix_bfrops_base_tma_load_key.exit:               ; preds = %.lr.ph.i.i, %bb.d, %.lr.ph.i.i.3, %pmix_bfrops_base_tma_load_key.exit.split.loop.exit11, %pmix_bfrops_base_tma_load_key.exit.split.loop.exit9
  %.08.lcssa.i.i = phi ptr [ %i.q, %bb.d ], [ %i.y, %pmix_bfrops_base_tma_load_key.exit.split.loop.exit11 ], [ %i.x, %pmix_bfrops_base_tma_load_key.exit.split.loop.exit9 ], [ %i.q, %.lr.ph.i.i.3 ], [ %.0811.i.i, %.lr.ph.i.i ]
  store i8 0, ptr %.08.lcssa.i.i, align 1, !tbaa !36
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !123
  %i.ab = load ptr, ptr %0, align 8, !tbaa !271   ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 520
  store i16 %i.aa, ptr %i.ac, align 8, !tbaa !123
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !73 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %pmix_bfrops_base_tma_argv_copy.exit, label %bb.f

bb.f:                                             ; preds = %pmix_bfrops_base_tma_load_key.exit
  %i.ag = tail call noalias noundef dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #41 ; 3 uses
  store ptr null, ptr %i.ag, align 8, !tbaa !42
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !42 ; 2 uses
  %.not12.i = icmp eq ptr %i.ah, null
  br i1 %.not12.i, label %pmix_bfrops_base_tma_argv_copy.exit, label %.preheader.i.i.i

.preheader.i.ithread-pre-split.i:                 ; preds = %bb.h
  %.pr.i = load ptr, ptr %i.aq, align 8, !tbaa !42
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.f, %.preheader.i.ithread-pre-split.i
  %i.ai = phi ptr [ %.pr.i, %.preheader.i.ithread-pre-split.i ], [ null, %bb.f ]
  %i.aj = phi ptr [ %i.bc, %.preheader.i.ithread-pre-split.i ], [ %i.ah, %bb.f ]
  %.0814.i = phi ptr [ %i.bb, %.preheader.i.ithread-pre-split.i ], [ %i.ae, %bb.f ]
  %.0313.i = phi ptr [ %i.aq, %.preheader.i.ithread-pre-split.i ], [ %i.ag, %bb.f ] ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not1.i.i.i, label %pmix_bfrops_base_tma_argv_count.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %.03.i.i.i = phi i32 [ %i.ak, %.lr.ph.i.i.i ], [ 0, %.preheader.i.i.i ]
  %.062.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.0313.i, %.preheader.i.i.i ]
  %i.ak = add nuw nsw i32 %.03.i.i.i, 1           ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.062.i.i.i, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !42
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %pmix_bfrops_base_tma_argv_count.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !2

pmix_bfrops_base_tma_argv_count.exit.i.i:         ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i
  %.07.i.i.i = phi i32 [ 0, %.preheader.i.i.i ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %i.an = add nsw i32 %.07.i.i.i, 2
  %i.ao = sext i32 %i.an to i64
  %i.ap = shl nsw i64 %i.ao, 3
  %i.aq = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.0313.i, i64 noundef %i.ap) #39 ; 8 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %pmix_bfrops_base_tma_argv_copy.exit, label %bb.g

bb.g:                                             ; preds = %pmix_bfrops_base_tma_argv_count.exit.i.i
  %i.as = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.aj) #40 ; 2 uses
  %i.at = sext i32 %.07.i.i.i to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.at ; 2 uses
  store ptr %i.as, ptr %i.au, align 8, !tbaa !42
  %i.av = icmp eq ptr %i.as, null
  br i1 %i.av, label %.preheader.i.i, label %bb.h

.preheader.i.i:                                   ; preds = %bb.g
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !42 ; 2 uses
  %.not101.i.i = icmp eq ptr %i.aw, null
  br i1 %.not101.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i18

._crit_edge.i.i.loopexit:                         ; preds = %.lr.ph.i.i18
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !271
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit, %.preheader.i.i
  %.pre = phi ptr [ %.pre.pre, %._crit_edge.i.i.loopexit ], [ %i.ab, %.preheader.i.i ]
  tail call void @free(ptr noundef nonnull %i.aq) #40
  br label %pmix_bfrops_base_tma_argv_copy.exit

.lr.ph.i.i18:                                     ; preds = %.preheader.i.i, %.lr.ph.i.i18
  %i.ax = phi ptr [ %i.az, %.lr.ph.i.i18 ], [ %i.aw, %.preheader.i.i ]
  %.02.i.i = phi ptr [ %i.ay, %.lr.ph.i.i18 ], [ %i.aq, %.preheader.i.i ]
  tail call void @free(ptr noundef nonnull %i.ax) #40
  %i.ay = getelementptr inbounds nuw i8, ptr %.02.i.i, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !42 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.az, null
  br i1 %.not10.i.i, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i18, !llvm.loop !3

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr i8, ptr %i.au, i64 8
  store ptr null, ptr %i.ba, align 8, !tbaa !42
  %i.bb = getelementptr inbounds nuw i8, ptr %.0814.i, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !42 ; 2 uses
  %.not.i17 = icmp eq ptr %i.bc, null
  br i1 %.not.i17, label %pmix_bfrops_base_tma_argv_copy.exit, label %.preheader.i.ithread-pre-split.i, !llvm.loop !4

pmix_bfrops_base_tma_argv_copy.exit:              ; preds = %pmix_bfrops_base_tma_argv_count.exit.i.i, %bb.h, %pmix_bfrops_base_tma_load_key.exit, %bb.f, %._crit_edge.i.i
  %i.bd = phi ptr [ %i.ab, %pmix_bfrops_base_tma_load_key.exit ], [ %.pre, %._crit_edge.i.i ], [ %i.ab, %bb.f ], [ %i.ab, %bb.h ], [ %i.ab, %pmix_bfrops_base_tma_argv_count.exit.i.i ]
  %.1.i = phi ptr [ null, %pmix_bfrops_base_tma_load_key.exit ], [ null, %._crit_edge.i.i ], [ %i.ag, %bb.f ], [ null, %pmix_bfrops_base_tma_argv_count.exit.i.i ], [ %i.aq, %bb.h ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 528
  store ptr %.1.i, ptr %i.be, align 8, !tbaa !73
  br label %bb.i

bb.i:                                             ; preds = %pmix_bfrops_base_tma_regattr_create.exit.thread, %pmix_bfrops_base_tma_argv_copy.exit
  %.0 = phi i32 [ 0, %pmix_bfrops_base_tma_argv_copy.exit ], [ -32, %pmix_bfrops_base_tma_regattr_create.exit.thread ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @pmix_bfrops_base_tma_copy_dbuf(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) unnamed_addr #10 {
bb.a:
  %calloc.i = tail call noalias noundef dereferenceable_or_null(40) ptr @calloc(i64 1, i64 40) ; 3 uses
  %i.a = icmp eq ptr %calloc.i, null
  br i1 %i.a, label %bb.c, label %bb.b, !prof !90

bb.b:                                             ; preds = %bb.a
  store ptr %calloc.i, ptr %0, align 8, !tbaa !273
  %i.b = tail call i32 @PMIx_Data_copy_payload(ptr noundef nonnull %calloc.i, ptr noundef %1) #40
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ -32, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -32, 1) i32 @pmix_bfrops_base_tma_copy_pstats(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #33 {
bb.a:
  %calloc.i = tail call dereferenceable_or_null(352) ptr @calloc(i64 1, i64 352) ; 13 uses
  %i.a = icmp eq ptr %calloc.i, null
  br i1 %i.a, label %bb.f, label %bb.b, !prof !90

bb.b:                                             ; preds = %bb.a
  store ptr %calloc.i, ptr %0, align 8, !tbaa !275
  %i.b = load ptr, ptr %1, align 8, !tbaa !81     ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.b) #40
  store ptr %i.c, ptr %calloc.i, align 8, !tbaa !81
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(260) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(260) %i.e, i64 260, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 268
  %i.g = load i32, ptr %i.f, align 4, !tbaa !143
  %i.h = getelementptr inbounds nuw i8, ptr %calloc.i, i64 268
  store i32 %i.g, ptr %i.h, align 4, !tbaa !143
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !82   ; 2 uses
  %.not35.i = icmp eq ptr %i.j, null
end_hunk_0
