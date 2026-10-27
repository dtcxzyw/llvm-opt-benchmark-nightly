Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/h5ls?download=true
inline.NumInlined: 43
inline.NumDeleted: 11
begin_hunk_0_@main:bb.a
  %i.hf = phi ptr [ %.pre, %bb.em ], [ %i.gz, %.lr.ph446 ]
  %i.hg = getelementptr inbounds nuw [24 x i8], ptr %i.hf, i64 %.0182444
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !104
  call void @free(ptr noundef %i.hi) #18
  %i.hj = add nuw i64 %.0182444, 1                ; 2 uses
  %i.hk = load i64, ptr %i.er, align 8, !tbaa !99
  %i.hl = icmp ult i64 %i.hj, %i.hk
  br i1 %i.hl, label %.lr.ph446, label %._crit_edge447, !llvm.loop !92

._crit_edge447:                                   ; preds = %bb.en, %bb.el
  %i.hm = load ptr, ptr %i.es, align 8, !tbaa !100
  call void @free(ptr noundef %i.hm) #18
  %.b = load i1, ptr @no_dangling_link_g, align 1
  br i1 %.b, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %._crit_edge447
  %i.hn = load ptr, ptr %i.eq, align 8, !tbaa !36
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hp = load i8, ptr %i.ho, align 8, !tbaa !48, !range !38, !noundef !39
  %i.hq = trunc nuw i8 %i.hp to i1
  %spec.select = select i1 %i.hq, i32 1, i32 %.0189449
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %._crit_edge447, %._crit_edge
  %.2 = phi i32 [ 1, %._crit_edge ], [ %.0189449, %._crit_edge447 ], [ %spec.select, %bb.eo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %0, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge452, label %bb.dl

._crit_edge452:                                   ; preds = %bb.ep
  %.not225 = icmp eq i64 %i.dw, 0
  br i1 %.not225, label %bb.es, label %bb.eq

bb.eq:                                            ; preds = %._crit_edge452
  %i.hr = call i32 @H5Pclose(i64 noundef %i.dw) #18
  %i.hs = icmp sgt i32 %i.hr, 0
  br i1 %i.hs, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.ht = load ptr, ptr @rawerrorstream, align 8, !tbaa !23
  %fwrite = call i64 @fwrite(ptr nonnull @.str.49, i64 39, i64 1, ptr %i.ht) ; 0 uses
  call void @h5tools_close() #18
  call void @exit(i32 noundef 1) #22
  unreachable

bb.es:                                            ; preds = %bb.eq, %._crit_edge452
  %.not226 = icmp eq i32 %.2, 0
  call void @h5tools_close() #18
  br i1 %.not226, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  call void @exit(i32 noundef 1) #22
  unreachable

bb.eu:                                            ; preds = %bb.es
  call void @exit(i32 noundef 0) #21
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare void @h5tools_setprogname(ptr noundef) local_unnamed_addr #3

declare void @h5tools_setstatus(i32 noundef) local_unnamed_addr #3

declare void @h5tools_init() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @dataset_list1(i64 noundef %0) #4 {
bb.a:
  %i.a = alloca [32 x i64], align 16              ; 6 uses
  %i.b = alloca [32 x i64], align 16              ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %1 = alloca %struct.h5tools_str_t, align 8      ; 15 uses
  %2 = alloca %struct.h5tools_context_t, align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i64 0, ptr %i.c, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %2, i8 0, i64 1120, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.d = call ptr @h5tools_str_reset(ptr noundef nonnull %1) #18 ; 0 uses
  %i.e = call i64 @H5Dget_space(i64 noundef %0) #18 ; 3 uses
  %i.f = call i32 @H5Sget_simple_extent_type(i64 noundef %i.e) #18
  %i.g = call i32 @H5Sget_simple_extent_dims(i64 noundef %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #18 ; 3 uses
  %i.h = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.50) #18 ; 0 uses
  %i.i = icmp sgt i32 %i.g, 0
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.g to i64
  %i.j = load i64, ptr %i.a, align 16, !tbaa !37
  %i.k = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.53, i64 noundef %i.j) #18 ; 0 uses
  %i.l = load i64, ptr %i.b, align 16, !tbaa !37  ; 3 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader
  %i.n = load i64, ptr %i.a, align 16, !tbaa !37
  %i.o = icmp ne i64 %i.l, %i.n
  %i.p = load i32, ptr @verbose_g, align 4
  %i.q = icmp sgt i32 %i.p, 0
  %or.cond.peel = select i1 %i.o, i1 true, i1 %i.q
  br i1 %or.cond.peel, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.56, i64 noundef %i.l) #18 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.preheader
  %i.s = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55) #18 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %exitcond.peel.not = icmp eq i32 %i.g, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 1, %bb.e ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !37
  %i.v = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i64 noundef %i.u) #18 ; 0 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.x = load i64, ptr %i.w, align 8, !tbaa !37   ; 3 uses
  %i.y = icmp eq i64 %i.x, -1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.z = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55) #18 ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.aa = load i64, ptr %i.t, align 8, !tbaa !37
  %i.ab = icmp ne i64 %i.x, %i.aa
  %i.ac = load i32, ptr @verbose_g, align 4
  %i.ad = icmp sgt i32 %i.ac, 0
  %or.cond = select i1 %i.ab, i1 true, i1 %i.ad
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.56, i64 noundef %i.x) #18 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !105

._crit_edge:                                      ; preds = %bb.i, %bb.e, %bb.a
  switch i32 %i.f, label %bb.k [
    i32 0, label %.sink.split
    i32 2, label %bb.j
  ]

bb.j:                                             ; preds = %._crit_edge
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge, %bb.j
  %.str.58.sink = phi ptr [ @.str.58, %bb.j ], [ @.str.57, %._crit_edge ]
  %i.af = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %1, ptr noundef nonnull %.str.58.sink) #18 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %._crit_edge
  %i.ag = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.59) #18 ; 0 uses
  %i.ah = load ptr, ptr @rawoutstream, align 8, !tbaa !23
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @ls_dataformat, i64 320), align 8, !tbaa !43
  %i.aj = zext i32 %i.ai to i64
  %i.ak = call zeroext i1 @h5tools_render_element(ptr noundef %i.ah, ptr noundef nonnull @ls_dataformat, ptr noundef nonnull %2, ptr noundef nonnull %1, ptr noundef nonnull %i.c, i64 noundef %i.aj, i64 noundef 0, i64 noundef 0) #18 ; 0 uses
  %i.al = call i32 @H5Sclose(i64 noundef %i.e) #18 ; 0 uses
  call void @h5tools_str_close(ptr noundef nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @dataset_list2(i64 noundef %0, ptr nofree readnone captures(none) %1) #4 {
bb.a:
  %i.a = alloca [32 x i64], align 16              ; 4 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %struct.h5tools_str_t, align 8      ; 10 uses
  %3 = alloca %struct.h5tools_context_t, align 8  ; 15 uses
  %4 = alloca %struct.h5tool_format_t, align 8    ; 44 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca [256 x i32], align 16             ; 5 uses
  %i.f = alloca i64, align 8                      ; 7 uses
  %i.g = alloca [256 x i8], align 16              ; 13 uses
  %i.h = alloca [64 x i8], align 16               ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %5 = alloca %struct.h5tools_str_t, align 8      ; 48 uses
  %6 = alloca %struct.h5tools_context_t, align 8  ; 5 uses
  %i.l = alloca [64 x i64], align 16              ; 6 uses
  %i.m = alloca [256 x i8], align 16              ; 4 uses
  %i.n = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #18
  store i64 0, ptr %i.k, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %6, i8 0, i64 1120, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.o = call ptr @h5tools_str_reset(ptr noundef nonnull %5) #18 ; 0 uses
  %i.p = load i32, ptr @verbose_g, align 4, !tbaa !20
  %i.q = icmp sgt i32 %i.p, 0
  %.sink51.i.sroa.gep = getelementptr inbounds nuw i8, ptr %4, i64 216
  %.sink51.i.sroa.gep109 = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  br i1 %i.q, label %bb.b, label %bb.ad

bb.b:                                             ; preds = %bb.a
  %i.r = call i64 @H5Dget_create_plist(i64 noundef %0) #18 ; 11 uses
  %i.s = call i64 @H5Dget_space(i64 noundef %0) #18 ; 2 uses
  %i.t = call i64 @H5Dget_type(i64 noundef %0) #18 ; 5 uses
  %i.u = call i32 @H5Pget_layout(i64 noundef %i.r) #18
  switch i32 %i.u, label %bb.q [
    i32 2, label %bb.c
    i32 0, label %bb.r
    i32 1, label %bb.d
    i32 3, label %bb.n
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #18
  %i.v = call i32 @H5Pget_chunk(i64 noundef %i.r, i32 noundef 64, ptr noundef nonnull %i.l) #18 ; 3 uses
  %i.w = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61) #18 ; 0 uses
  %i.x = call i64 @H5Tget_size(i64 noundef %i.t) #18 ; 2 uses
  %i.y = icmp sgt i32 %i.v, 0
  br i1 %i.y, label %.lr.ph131.preheader, label %._crit_edge132

.lr.ph131.preheader:                              ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.v to i64
  %i.z = load i64, ptr %i.l, align 16, !tbaa !37
  %i.aa = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.53, i64 noundef %i.z) #18 ; 0 uses
  %i.ab = load i64, ptr %i.l, align 16, !tbaa !37
  %i.ac = mul i64 %i.ab, %i.x                     ; 2 uses
  %exitcond146.peel.not = icmp eq i32 %i.v, 1
  br i1 %exitcond146.peel.not, label %._crit_edge132, label %.lr.ph131

.lr.ph131:                                        ; preds = %.lr.ph131.preheader, %.lr.ph131
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph131 ], [ 1, %.lr.ph131.preheader ] ; 2 uses
  %.093128 = phi i64 [ %i.ah, %.lr.ph131 ], [ %i.ac, %.lr.ph131.preheader ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !37
  %i.af = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i64 noundef %i.ae) #18 ; 0 uses
  %i.ag = load i64, ptr %i.ad, align 8, !tbaa !37
  %i.ah = mul i64 %i.ag, %.093128                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond146.not, label %._crit_edge132, label %.lr.ph131, !llvm.loop !106

._crit_edge132:                                   ; preds = %.lr.ph131, %.lr.ph131.preheader, %bb.c
  %.093.lcssa = phi i64 [ %i.x, %bb.c ], [ %i.ac, %.lr.ph131.preheader ], [ %i.ah, %.lr.ph131 ]
  %i.ai = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.62, i64 noundef %.093.lcssa) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.aj = call i32 @H5Pget_external_count(i64 noundef %i.r) #18 ; 6 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.preheader111, label %bb.r

.preheader111:                                    ; preds = %bb.d, %bb.g
  %.1114 = phi i32 [ %i.ax, %bb.g ], [ 0, %bb.d ] ; 2 uses
  %.091113 = phi i32 [ %.192, %bb.g ], [ 0, %bb.d ] ; 2 uses
  %i.al = call i32 @H5Pget_external(i64 noundef %i.r, i32 noundef %.1114, i64 noundef 256, ptr noundef nonnull %i.g, ptr noundef null, ptr noundef null) #18
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.g, label %.preheader110

.preheader110:                                    ; preds = %.preheader111, %bb.f
  %.060.i = phi i32 [ %i.au, %bb.f ], [ 0, %.preheader111 ] ; 2 uses
  %.04159.i = phi ptr [ %i.av, %bb.f ], [ %i.g, %.preheader111 ] ; 2 uses
  %i.an = load i8, ptr %.04159.i, align 1, !tbaa !15 ; 2 uses
  switch i8 %i.an, label %bb.e [
    i8 0, label %print_string.exit
    i8 34, label %bb.f
    i8 92, label %bb.f
    i8 8, label %bb.f
    i8 12, label %bb.f
    i8 10, label %bb.f
    i8 13, label %bb.f
    i8 9, label %bb.f
    i8 32, label %bb.f
  ]

bb.e:                                             ; preds = %.preheader110
  %i.ao = tail call ptr @__ctype_b_loc() #19
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !17
  %i.aq = sext i8 %i.an to i64
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !19
  %i.at = and i16 %i.as, 16384
  %.not55.i = icmp eq i16 %i.at, 0
  %spec.select = select i1 %.not55.i, i32 4, i32 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader110, %.preheader110, %.preheader110, %.preheader110, %.preheader110, %.preheader110, %.preheader110, %.preheader110
  %.sink.i = phi i32 [ %spec.select, %bb.e ], [ 2, %.preheader110 ], [ 2, %.preheader110 ], [ 2, %.preheader110 ], [ 2, %.preheader110 ], [ 2, %.preheader110 ], [ 2, %.preheader110 ], [ 2, %.preheader110 ], [ 2, %.preheader110 ]
  %i.au = add nuw nsw i32 %.sink.i, %.060.i
  %i.av = getelementptr inbounds nuw i8, ptr %.04159.i, i64 1
  br label %.preheader110

print_string.exit:                                ; preds = %.preheader110
  %i.aw = call i32 @llvm.smax.i32(i32 %.091113, i32 %.060.i)
  br label %bb.g

bb.g:                                             ; preds = %.preheader111, %print_string.exit
  %.192 = phi i32 [ %.091113, %.preheader111 ], [ %i.aw, %print_string.exit ] ; 4 uses
  %i.ax = add nuw nsw i32 %.1114, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ax, %i.aj
  br i1 %exitcond.not, label %bb.h, label %.preheader111, !llvm.loop !107

bb.h:                                             ; preds = %bb.g
  %i.ay = icmp eq i32 %i.aj, 1
  %i.az = select i1 %i.ay, ptr @.str.53, ptr @.str.65
  %i.ba = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef %i.aj, ptr noundef nonnull %i.az) #18 ; 0 uses
  %i.bb = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71) #18 ; 0 uses
  %i.bc = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.74) #18 ; 0 uses
  %i.bd = icmp sgt i32 %.192, 0                   ; 2 uses
  br i1 %i.bd, label %.lr.ph117, label %.lr.ph122.preheader

.lr.ph117:                                        ; preds = %bb.h, %.lr.ph117
  %.2115 = phi i32 [ %i.bf, %.lr.ph117 ], [ 0, %bb.h ]
  %i.be = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.75) #18 ; 0 uses
  %i.bf = add nuw nsw i32 %.2115, 1               ; 2 uses
  %exitcond141.not = icmp eq i32 %i.bf, %.192
  br i1 %exitcond141.not, label %.lr.ph122.preheader, label %.lr.ph117, !llvm.loop !108

.lr.ph122.preheader:                              ; preds = %.lr.ph117, %bb.h
  %i.bg = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.76) #18 ; 0 uses
  br label %.lr.ph122

.lr.ph122:                                        ; preds = %.lr.ph122.preheader, %bb.m
  %.3120 = phi i32 [ %i.bv, %bb.m ], [ 0, %.lr.ph122.preheader ] ; 6 uses
  %.194119 = phi i64 [ %i.bu, %bb.m ], [ 0, %.lr.ph122.preheader ] ; 4 uses
  %i.bh = call i32 @H5Pget_external(i64 noundef %i.r, i32 noundef %.3120, i64 noundef 256, ptr noundef nonnull %i.g, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #18
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph122
  %i.bj = add nuw nsw i32 %.3120, 1
  %i.bk = icmp slt i32 %i.bj, %i.aj
  %i.bl = select i1 %i.bk, ptr @.str.78, ptr @.str.53
  %i.bm = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.77, i32 noundef %.3120, i64 noundef %.194119, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.53, ptr noundef nonnull %i.bl) #18 ; 0 uses
  br label %bb.m

bb.j:                                             ; preds = %.lr.ph122
  %i.bn = load i64, ptr %i.j, align 8, !tbaa !37  ; 2 uses
  %i.bo = icmp eq i64 %i.bn, -1
  %i.bp = load i64, ptr %i.i, align 8, !tbaa !37  ; 2 uses
  br i1 %i.bo, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bq = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.79, i32 noundef %.3120, i64 noundef %.194119, i64 noundef %i.bp, ptr noundef nonnull @.str.80) #18 ; 0 uses
  %7 = call fastcc i32 @print_string(ptr noundef nonnull %5, ptr noundef nonnull %i.g, i1 noundef zeroext true) ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %8 = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.81, i32 noundef %.3120, i64 noundef %.194119, i64 noundef %i.bp, i64 noundef %i.bn) #18 ; 0 uses
  %i.br = call fastcc i32 @print_string(ptr noundef nonnull %5, ptr noundef nonnull %i.g, i1 noundef zeroext true) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i
  %i.bs = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.76) #18 ; 0 uses
  %i.bt = load i64, ptr %i.j, align 8, !tbaa !37
  %i.bu = add i64 %i.bt, %.194119
  %i.bv = add nuw nsw i32 %.3120, 1               ; 2 uses
  %exitcond142.not = icmp eq i32 %i.bv, %i.aj
  br i1 %exitcond142.not, label %._crit_edge123, label %.lr.ph122, !llvm.loop !109

._crit_edge123:                                   ; preds = %bb.m
  %i.bw = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.74) #18 ; 0 uses
  br i1 %i.bd, label %.lr.ph126, label %._crit_edge127

.lr.ph126:                                        ; preds = %._crit_edge123, %.lr.ph126
  %.4124 = phi i32 [ %i.by, %.lr.ph126 ], [ 0, %._crit_edge123 ]
  %i.bx = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.75) #18 ; 0 uses
  %i.by = add nuw nsw i32 %.4124, 1               ; 2 uses
  %exitcond144.not = icmp eq i32 %i.by, %.192
  br i1 %exitcond144.not, label %._crit_edge127, label %.lr.ph126, !llvm.loop !110

._crit_edge127:                                   ; preds = %.lr.ph126, %._crit_edge123
  %i.bz = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.76) #18 ; 0 uses
  br label %bb.r

bb.n:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #18
  %i.ca = call i32 @H5Pget_virtual_count(i64 noundef %i.r, ptr noundef nonnull %i.n) #18 ; 0 uses
  %i.cb = load i64, ptr %i.n, align 8, !tbaa !37  ; 2 uses
  %.not = icmp eq i64 %i.cb, 0
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, i64 noundef %i.cb) #18 ; 0 uses
  %i.cd = load i64, ptr %i.n, align 8, !tbaa !37
  %i.ce = and i64 %i.cd, 4294967295
  %.not138 = icmp eq i64 %i.ce, 0
  br i1 %.not138, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %.lr.ph
  %.0112 = phi i64 [ %i.cm, %.lr.ph ], [ 0, %bb.o ] ; 3 uses
  %i.cf = call i64 @H5Pget_virtual_filename(i64 noundef %i.r, i64 noundef %.0112, ptr noundef nonnull %i.g, i64 noundef 256) #18 ; 0 uses
  %i.cg = call i64 @H5Pget_virtual_dsetname(i64 noundef %i.r, i64 noundef %.0112, ptr noundef nonnull %i.m, i64 noundef 256) #18 ; 0 uses
  %i.ch = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85) #18 ; 0 uses
  %i.ci = call fastcc i32 @print_string(ptr noundef nonnull %5, ptr noundef nonnull %i.g, i1 noundef zeroext true) ; 0 uses
  %i.cj = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.86) #18 ; 0 uses
  %i.ck = call fastcc i32 @print_string(ptr noundef nonnull %5, ptr noundef nonnull %i.m, i1 noundef zeroext true) ; 0 uses
  %i.cl = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.76) #18 ; 0 uses
  %i.cm = add nuw nsw i64 %.0112, 1               ; 2 uses
  %i.cn = load i64, ptr %i.n, align 8, !tbaa !37
  %i.co = and i64 %i.cn, 4294967295
  %i.cp = icmp samesign ult i64 %i.cm, %i.co
  br i1 %i.cp, label %.lr.ph, label %._crit_edge, !llvm.loop !111

._crit_edge:                                      ; preds = %.lr.ph, %bb.o
  %i.cq = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.85) #18 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #18
  br label %bb.r

bb.q:                                             ; preds = %bb.b
  %i.cr = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.88) #18 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.d, %._crit_edge127, %bb.q, %bb.p, %._crit_edge132, %bb.b
  %i.cs = call i64 @H5Sget_simple_extent_npoints(i64 noundef %i.s) #18
  %i.ct = call i64 @H5Tget_size(i64 noundef %i.t) #18
  %i.cu = mul i64 %i.ct, %i.cs                    ; 3 uses
  %i.cv = call i64 @H5Dget_storage_size(i64 noundef %0) #18 ; 4 uses
  %i.cw = call i32 @H5Tget_class(i64 noundef %i.t) #18
  %i.cx = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90) #18 ; 0 uses
  switch i32 %i.cw, label %bb.x [
    i32 9, label %bb.s
    i32 7, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.cy = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.91) #18 ; 0 uses
  br label %bb.z

bb.t:                                             ; preds = %bb.r
  %i.cz = load i64, ptr @H5T_STD_REF_g, align 8, !tbaa !37
  %i.da = call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.cz) #18
  %.not103 = icmp eq i32 %i.da, 0
  br i1 %.not103, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.db = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.92) #18 ; 0 uses
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.dc = load i64, ptr @H5T_STD_REF_DSETREG_g, align 8, !tbaa !37
  %i.dd = call i32 @H5Tequal(i64 noundef %0, i64 noundef %i.dc) #18
  %.not104 = icmp eq i32 %i.dd, 0
  br i1 %.not104, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.de = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.91) #18 ; 0 uses
  br label %bb.z

bb.x:                                             ; preds = %bb.r
  %i.df = icmp eq i64 %i.cu, 1
  %i.dg = select i1 %i.df, ptr @.str.53, ptr @.str.65
  %i.dh = icmp eq i64 %i.cv, 1
  %i.di = select i1 %i.dh, ptr @.str.53, ptr @.str.65
  %i.dj = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.93, i64 noundef %i.cu, ptr noundef nonnull %i.dg, i64 noundef %i.cv, ptr noundef nonnull %i.di) #18 ; 0 uses
  %.not105 = icmp eq i64 %i.cv, 0
  br i1 %.not105, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dk = uitofp i64 %i.cu to double
  %i.dl = fmul nnan double %i.dk, 1.000000e+02
  %i.dm = uitofp i64 %i.cv to double
  %i.dn = fdiv double %i.dl, %i.dm
  %i.do = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.94, double noundef %i.dn) #18 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.u, %bb.w, %bb.v, %bb.s
  %i.dp = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.76) #18 ; 0 uses
  %i.dq = call i32 @H5Pget_nfilters(i64 noundef %i.r) #18 ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.z
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 255
  br label %bb.aa

bb.aa:                                            ; preds = %.preheader, %._crit_edge136
  %.5137 = phi i32 [ 0, %.preheader ], [ %i.en, %._crit_edge136 ] ; 3 uses
  store i64 256, ptr %i.f, align 8, !tbaa !37
  %i.dt = call i32 @H5Pget_filter2(i64 noundef %i.r, i32 noundef %.5137, ptr noundef nonnull %i.d, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, i64 noundef 256, ptr noundef nonnull %i.g, ptr noundef null) #18
  store i8 0, ptr %i.ds, align 1, !tbaa !15
  %i.du = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.h, i64 noundef 64, ptr noundef nonnull @.str.95, i32 noundef %.5137) #18 ; 0 uses
  %i.dv = load i8, ptr %i.g, align 16, !tbaa !15
  %.not106 = icmp eq i8 %i.dv, 0
  %i.dw = select i1 %.not106, ptr @.str.97, ptr %i.g
  %i.dx = load i32, ptr %i.d, align 4, !tbaa !20
  %i.dy = and i32 %i.dx, 1
  %.not107 = icmp eq i32 %i.dy, 0
  %i.dz = select i1 %.not107, ptr @.str.53, ptr @.str.98
  %i.ea = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.96, ptr noundef nonnull %i.h, ptr noundef nonnull %i.dw, i32 noundef %i.dt, ptr noundef nonnull %i.dz) #18 ; 0 uses
  %i.eb = load i64, ptr %i.f, align 8, !tbaa !37
  %.not139 = icmp eq i64 %i.eb, 0
  br i1 %.not139, label %._crit_edge136, label %.lr.ph135.preheader

.lr.ph135.preheader:                              ; preds = %bb.aa
  %i.ec = load i32, ptr %i.e, align 16, !tbaa !20
  %i.ed = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.53, i32 noundef %i.ec) #18 ; 0 uses
  %i.ee = load i64, ptr %i.f, align 8, !tbaa !37
  %i.ef = icmp ugt i64 %i.ee, 1
  br i1 %i.ef, label %.lr.ph135, label %._crit_edge136

.lr.ph135:                                        ; preds = %.lr.ph135.preheader, %.lr.ph135
  %.095133 = phi i64 [ %i.ej, %.lr.ph135 ], [ 1, %.lr.ph135.preheader ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.095133
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !20
  %i.ei = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.52, i32 noundef %i.eh) #18 ; 0 uses
  %i.ej = add nuw nsw i64 %.095133, 1             ; 2 uses
  %i.ek = load i64, ptr %i.f, align 8, !tbaa !37
  %i.el = icmp ult i64 %i.ej, %i.ek
  br i1 %i.el, label %.lr.ph135, label %._crit_edge136, !llvm.loop !112

._crit_edge136:                                   ; preds = %.lr.ph135, %.lr.ph135.preheader, %bb.aa
  %i.em = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.100) #18 ; 0 uses
  %i.en = add nuw nsw i32 %.5137, 1               ; 2 uses
  %exitcond149.not = icmp eq i32 %i.en, %i.dq
  br i1 %exitcond149.not, label %.loopexit, label %bb.aa, !llvm.loop !113

.loopexit:                                        ; preds = %._crit_edge136, %bb.z
  %i.eo = load ptr, ptr @rawoutstream, align 8, !tbaa !23
  %i.ep = load i32, ptr getelementptr inbounds nuw (i8, ptr @ls_dataformat, i64 320), align 8, !tbaa !43
  %i.eq = zext i32 %i.ep to i64
  %i.er = call zeroext i1 @h5tools_render_element(ptr noundef %i.eo, ptr noundef nonnull @ls_dataformat, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %i.k, i64 noundef %i.eq, i64 noundef 0, i64 noundef 0) #18 ; 0 uses
  %i.es = call ptr @h5tools_str_reset(ptr noundef nonnull %5) #18 ; 0 uses
  %i.et = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.101) #18 ; 0 uses
  call fastcc void @print_type(ptr noundef %5, i64 noundef %i.t, i32 noundef 15)
  %i.eu = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.76) #18 ; 0 uses
  %i.ev = load ptr, ptr @rawoutstream, align 8, !tbaa !23
  %i.ew = load i32, ptr getelementptr inbounds nuw (i8, ptr @ls_dataformat, i64 320), align 8, !tbaa !43
  %i.ex = zext i32 %i.ew to i64
  %i.ey = call zeroext i1 @h5tools_render_element(ptr noundef %i.ev, ptr noundef nonnull @ls_dataformat, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %i.k, i64 noundef %i.ex, i64 noundef 0, i64 noundef 0) #18 ; 0 uses
  %.b = load i1, ptr @address_g, align 1
  br i1 %.b, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.loopexit
  %i.ez = call i32 @H5Ddebug(i64 noundef %0) #18  ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.loopexit
  %i.fa = call i32 @H5Tclose(i64 noundef %i.t) #18 ; 0 uses
  %i.fb = call i32 @H5Sclose(i64 noundef %i.s) #18 ; 0 uses
  %i.fc = call i32 @H5Pclose(i64 noundef %i.r) #18 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.a
  call void @h5tools_str_close(ptr noundef nonnull %5) #18
  %.b101 = load i1, ptr @data_g, align 1
  br i1 %.b101, label %bb.ae, label %bb.bl

end_hunk_0
