Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tiny_gltf_v3?download=true
inline.NumInlined: 786
inline.NumDeleted: 104
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@tg3__parse_int_array:bb.a
.preheader:                                       ; preds = %tg3__arena_alloc.exit.thread95, %tg3__arena_alloc.exit
  %i.bp = phi ptr [ %i.bf, %tg3__arena_alloc.exit.thread95 ], [ %i.bn, %tg3__arena_alloc.exit ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %bb.u

tg3__arena_alloc.exit.thread:                     ; preds = %bb.p, %bb.n, %bb.o, %bb.j, %bb.k, %tg3__arena_alloc.exit
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !139 ; 6 uses
  %.not.i57 = icmp eq ptr %i.bs, null
  br i1 %.not.i57, label %tg3__error_push.exit, label %bb.q

bb.q:                                             ; preds = %tg3__arena_alloc.exit.thread
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !62 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 12 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !116 ; 3 uses
  %.not27.i = icmp ult i32 %i.bu, %i.bw
  %.pre.i58 = load ptr, ptr %i.bs, align 8, !tbaa !63 ; 2 uses
  br i1 %.not27.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not28.i = icmp eq i32 %i.bw, 0
  %i.bx = shl i32 %i.bw, 1
  %spec.select.i = select i1 %.not28.i, i32 16, i32 %i.bx ; 2 uses
  %i.by = zext i32 %spec.select.i to i64
  %i.bz = shl nuw nsw i64 %i.by, 5
  %i.ca = tail call ptr @realloc(ptr noundef %.pre.i58, i64 noundef %i.bz) #29 ; 3 uses
  %.not29.i = icmp eq ptr %i.ca, null
  br i1 %.not29.i, label %tg3__error_push.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.ca, ptr %i.bs, align 8, !tbaa !63
  store i32 %spec.select.i, ptr %i.bv, align 4, !tbaa !116
  %.pre30.i = load i32, ptr %i.bt, align 8, !tbaa !62
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %i.cb = phi i32 [ %.pre30.i, %bb.s ], [ %i.bu, %bb.q ] ; 2 uses
  %i.cc = phi ptr [ %i.ca, %bb.s ], [ %.pre.i58, %bb.q ]
  %i.cd = add i32 %i.cb, 1
  store i32 %i.cd, ptr %i.bt, align 8, !tbaa !62
  %i.ce = zext i32 %i.cb to i64
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.cc, i64 %i.ce ; 5 uses
  store i32 2, ptr %i.cf, align 8, !tbaa !118
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store i32 50, ptr %i.cg, align 4, !tbaa !119
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr @.str.139, ptr %i.ch, align 8, !tbaa !120
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store ptr %6, ptr %i.ci, align 8, !tbaa !121
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store i64 -1, ptr %i.cj, align 8, !tbaa !122
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i32 1, ptr %i.ck, align 8, !tbaa !61
  br label %tg3__error_push.exit

bb.u:                                             ; preds = %.preheader, %bb.aa
  %.04376 = phi i64 [ 0, %.preheader ], [ %i.di, %bb.aa ] ; 5 uses
  %i.cl = load i32, ptr %i.o, align 8, !tbaa !37
  %.not8.i = icmp eq i32 %i.cl, 5
  br i1 %.not8.i, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.cm = load i64, ptr %i.w, align 8, !tbaa !34
  %.not9.i = icmp ult i64 %.04376, %i.cm
  br i1 %.not9.i, label %tg3json_array_get.exit, label %.critedge

tg3json_array_get.exit:                           ; preds = %bb.v
  %i.cn = load ptr, ptr %i.bq, align 8, !tbaa !34 ; 2 uses
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %.04376 ; 3 uses
  %.not52 = icmp eq ptr %i.cn, null
  br i1 %.not52, label %.critedge, label %bb.w

bb.w:                                             ; preds = %tg3json_array_get.exit
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.04376
  %i.cq = load i32, ptr %i.co, align 8, !tbaa !37
  switch i32 %i.cq, label %.critedge [
    i32 2, label %.thread.i
    i32 3, label %bb.y
  ]

.thread.i:                                        ; preds = %bb.w
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !34 ; 2 uses
  %i.ct = add i64 %i.cs, -2147483648
  %or.cond.i63 = icmp ult i64 %i.ct, -4294967296
  br i1 %or.cond.i63, label %.critedge, label %bb.x

bb.x:                                             ; preds = %.thread.i
  %i.cu = trunc nsw i64 %i.cs to i32
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !34 ; 5 uses
  %i.cx = tail call double @llvm.fabs.f64(double %i.cw)
  %i.cy = fcmp ueq double %i.cx, +inf
  %i.cz = fcmp olt double %i.cw, f0xC1E0000000000000
  %or.cond3.i = or i1 %i.cz, %i.cy
  %i.da = fcmp ogt double %i.cw, f0x41DFFFFFFFC00000
  %or.cond5.i = or i1 %i.da, %or.cond3.i
  br i1 %or.cond5.i, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.db = fptosi double %i.cw to i32              ; 2 uses
  %i.dc = sitofp i32 %i.db to double
  %i.dd = fcmp une double %i.cw, %i.dc
  br i1 %i.dd, label %.critedge, label %bb.aa

.critedge:                                        ; preds = %bb.y, %.thread.i, %bb.z, %bb.w, %bb.u, %bb.v, %tg3json_array_get.exit
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !139
  %i.dg = load ptr, ptr %0, align 8, !tbaa !138
  %i.dh = trunc i64 %.04376 to i32
  tail call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.df, ptr noundef %i.dg, i32 poison, i32 noundef 11, ptr noundef %6, ptr noundef nonnull @.str.140, ptr noundef nonnull %2, i32 noundef %i.dh)
  br label %tg3__error_push.exit

bb.aa:                                            ; preds = %bb.z, %bb.x
  %.sink.i = phi i32 [ %i.cu, %bb.x ], [ %i.db, %bb.z ]
  store i32 %.sink.i, ptr %i.cp, align 4, !tbaa !41
  %i.di = add nuw i64 %.04376, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.di, %i.x
  br i1 %exitcond.not, label %bb.ab, label %bb.u, !llvm.loop !587

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.bp, ptr %3, align 8, !tbaa !588
  %i.dj = trunc i64 %i.x to i32
  store i32 %i.dj, ptr %4, align 4, !tbaa !41
  br label %tg3__error_push.exit

tg3__error_push.exit:                             ; preds = %bb.t, %bb.r, %tg3__arena_alloc.exit.thread, %.critedge, %bb.ab, %tg3json_array_size.exit.thread, %bb.i, %bb.h, %bb.g
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @tg3__parse_number_to_fixed(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef nonnull writeonly captures(none) %2, i32 noundef range(i32 3, 17) %3) unnamed_addr #16 {
bb.a:
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %tg3__json_is_array.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #31 ; 2 uses
  %.not.i.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i.i, label %tg3__json_is_array.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr %0, align 8, !tbaa !37
  %.not18.i.i.i = icmp eq i32 %i.b, 6
  br i1 %.not18.i.i.i, label %.preheader.i.i.i, label %tg3__json_is_array.exit.thread

.preheader.i.i.i:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %.not23.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not23.i.i.i, label %tg3__json_is_array.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.01422.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.m, %bb.f ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.01422.i.i.i ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !46
  %i.j = icmp eq i64 %i.i, %i.a
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !45
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.k, ptr nonnull readonly %1, i64 %i.a)
  %i.l = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.l, label %tg3__json_get.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = add nuw i64 %.01422.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %i.d
  br i1 %exitcond.not.i.i.i, label %tg3__json_is_array.exit.thread, label %bb.d, !llvm.loop !2

tg3__json_get.exit:                               ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !47   ; 5 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %tg3__json_is_array.exit.thread, label %tg3__json_is_array.exit

tg3__json_is_array.exit:                          ; preds = %tg3__json_get.exit
  %i.p = load i32, ptr %i.o, align 8, !tbaa !37
  %.not = icmp eq i32 %i.p, 5
  br i1 %.not, label %tg3json_array_size.exit, label %tg3__json_is_array.exit.thread

tg3json_array_size.exit:                          ; preds = %tg3__json_is_array.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !34   ; 2 uses
  %i.s = zext nneg i32 %3 to i64
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.s)
  %.not37 = icmp eq i64 %i.r, 0
  br i1 %.not37, label %tg3__json_is_array.exit.thread, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %tg3json_array_size.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.pre40 = load i64, ptr %i.t, align 8, !tbaa !34
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %tg3json_array_get.exit.thread
  %.036.a = phi i64 [ %4, %tg3json_array_get.exit.thread ], [ %.pre40, %.lr.ph.split.preheader ] ; 3 uses
  %.036 = phi i64 [ %i.ae, %tg3json_array_get.exit.thread ], [ 0, %.lr.ph.split.preheader ] ; 4 uses
  %.not9.i = icmp ult i64 %.036, %.036.a
  br i1 %.not9.i, label %tg3json_array_get.exit, label %tg3json_array_get.exit.thread

tg3json_array_get.exit:                           ; preds = %.lr.ph.split
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !34   ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.036 ; 3 uses
  %.not19 = icmp eq ptr %i.v, null
  br i1 %.not19, label %tg3json_array_get.exit.thread, label %bb.g

bb.g:                                             ; preds = %tg3json_array_get.exit
  %i.x = load i32, ptr %i.w, align 8, !tbaa !37
  switch i32 %i.x, label %tg3__json_number_to_double.exit [
    i32 2, label %bb.h
    i32 3, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !34
  %i.aa = sitofp i64 %i.z to double
  br label %tg3__json_number_to_double.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !34
  br label %tg3__json_number_to_double.exit

tg3__json_number_to_double.exit:                  ; preds = %bb.g, %bb.h, %bb.i
  %.0.i24 = phi double [ %i.aa, %bb.h ], [ %i.ac, %bb.i ], [ 0.000000e+00, %bb.g ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.036
  store double %.0.i24, ptr %i.ad, align 8, !tbaa !58
  %.pre = load i64, ptr %i.t, align 8, !tbaa !34
  br label %tg3json_array_get.exit.thread

tg3json_array_get.exit.thread:                    ; preds = %.lr.ph.split, %tg3json_array_get.exit, %tg3__json_number_to_double.exit
  %4 = phi i64 [ %.036.a, %.lr.ph.split ], [ %.036.a, %tg3json_array_get.exit ], [ %.pre, %tg3__json_number_to_double.exit ]
  %i.ae = add nuw nsw i64 %.036, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %spec.select
  br i1 %exitcond.not, label %tg3__json_is_array.exit.thread, label %.lr.ph.split, !llvm.loop !589

tg3__json_is_array.exit.thread:                   ; preds = %bb.f, %tg3json_array_get.exit.thread, %tg3json_array_size.exit, %.preheader.i.i.i, %bb.c, %bb.b, %bb.a, %tg3__json_get.exit, %tg3__json_is_array.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @tg3__parse_double(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3, i32 noundef range(i32 0, 2) %4, ptr noundef %5) unnamed_addr #12 {
bb.a:
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %tg3__json_get.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #31 ; 2 uses
  %.not.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i, label %tg3__json_get.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr %1, align 8, !tbaa !37
  %.not18.i.i.i = icmp eq i32 %i.b, 6
  br i1 %.not18.i.i.i, label %.preheader.i.i.i, label %tg3__json_get.exit.thread

.preheader.i.i.i:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %.not23.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not23.i.i.i, label %tg3__json_get.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.01422.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.m, %bb.f ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.01422.i.i.i ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !46
  %i.j = icmp eq i64 %i.i, %i.a
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !45
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.k, ptr nonnull readonly %2, i64 %i.a)
  %i.l = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.l, label %tg3__json_get.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = add nuw i64 %.01422.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %i.d
  br i1 %exitcond.not.i.i.i, label %tg3__json_get.exit.thread, label %bb.d, !llvm.loop !2

tg3__json_get.exit:                               ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !47   ; 4 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %tg3__json_get.exit.thread, label %bb.h

tg3__json_get.exit.thread:                        ; preds = %bb.f, %.preheader.i.i.i, %bb.c, %bb.b, %bb.a, %tg3__json_get.exit
  %.not16 = icmp eq i32 %4, 0
  br i1 %.not16, label %bb.k, label %bb.g

bb.g:                                             ; preds = %tg3__json_get.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !139
  %i.r = load ptr, ptr %0, align 8, !tbaa !138
  tail call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.q, ptr noundef %i.r, i32 poison, i32 noundef 12, ptr noundef %5, ptr noundef nonnull @.str.61, ptr noundef %2)
  br label %bb.k

bb.h:                                             ; preds = %tg3__json_get.exit
  %i.s = load i32, ptr %i.o, align 8, !tbaa !37
  switch i32 %i.s, label %bb.i [
    i32 2, label %.thread
    i32 3, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !139
  %i.v = load ptr, ptr %0, align 8, !tbaa !138
  tail call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.u, ptr noundef %i.v, i32 poison, i32 noundef 11, ptr noundef %5, ptr noundef nonnull @.str.63, ptr noundef nonnull %2)
  br label %bb.k

.thread:                                          ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !34
  %i.y = sitofp i64 %i.x to double
  br label %tg3__json_number_to_double.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aa = load double, ptr %i.z, align 8, !tbaa !34
  br label %tg3__json_number_to_double.exit

tg3__json_number_to_double.exit:                  ; preds = %.thread, %bb.j
  %.0.i = phi double [ %i.y, %.thread ], [ %i.aa, %bb.j ]
  store double %.0.i, ptr %3, align 8, !tbaa !58
  br label %bb.k

bb.k:                                             ; preds = %tg3__json_get.exit.thread, %tg3__json_number_to_double.exit, %bb.i, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @tg3__parse_texture_info(ptr noundef nonnull %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #12 {
bb.a:
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %tg3__json_get.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #31 ; 2 uses
  %.not.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i, label %tg3__json_get.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr %1, align 8, !tbaa !37
  %.not18.i.i.i = icmp eq i32 %i.b, 6
  br i1 %.not18.i.i.i, label %.preheader.i.i.i, label %tg3__json_get.exit.thread

.preheader.i.i.i:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %.not23.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not23.i.i.i, label %tg3__json_get.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.01422.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.m, %bb.f ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.01422.i.i.i ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !46
  %i.j = icmp eq i64 %i.i, %i.a
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !45
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.k, ptr nonnull readonly %2, i64 %i.a)
  %i.l = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.l, label %tg3__json_get.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = add nuw i64 %.01422.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %i.d
  br i1 %exitcond.not.i.i.i, label %tg3__json_get.exit.thread, label %bb.d, !llvm.loop !2

tg3__json_get.exit.thread:                        ; preds = %bb.f, %bb.a, %bb.b, %bb.c, %.preheader.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(60) %i.n, i8 0, i64 60, i1 false)
  store i32 -1, ptr %3, align 8, !tbaa !207
  br label %bb.h

tg3__json_get.exit:                               ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47   ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(60) %i.q, i8 0, i64 60, i1 false)
  store i32 -1, ptr %3, align 8, !tbaa !207
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.h, label %tg3__json_is_object.exit

tg3__json_is_object.exit:                         ; preds = %tg3__json_get.exit
  %i.r = load i32, ptr %i.p, align 8, !tbaa !37
  %.not20 = icmp eq i32 %i.r, 6
  br i1 %.not20, label %bb.g, label %bb.h

bb.g:                                             ; preds = %tg3__json_is_object.exit
  tail call fastcc void @tg3__parse_int(ptr noundef %0, ptr noundef nonnull %i.p, ptr noundef nonnull @.str.158, ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2)
  tail call fastcc void @tg3__parse_int(ptr noundef %0, ptr noundef nonnull %i.p, ptr noundef nonnull @.str.159, ptr noundef %i.q, i32 noundef 0, ptr noundef nonnull %2)
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call fastcc void @tg3__parse_extras_and_extensions(ptr noundef %0, ptr noundef nonnull %i.p, ptr noundef %i.s)
  br label %bb.h

bb.h:                                             ; preds = %tg3__json_get.exit.thread, %tg3__json_is_object.exit, %tg3__json_get.exit, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @tg3__json_to_value(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 80)) %0, ptr noundef nonnull %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #12 {
bb.a:
  %3 = alloca %struct.tg3_value, align 8          ; 4 uses
  %4 = alloca %struct.tg3_value, align 8          ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %tg3__arena_alloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %2, align 8, !tbaa !37
  switch i32 %i.a, label %tg3__arena_alloc.exit.thread [
    i32 6, label %bb.o
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
  ]
end_hunk_0
