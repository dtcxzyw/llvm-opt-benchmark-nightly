begin_hunk_0_@set_str_d_characters_bp:bb.a
  %i.aw = icmp ne i64 %i.at, 0                    ; 2 uses
  %i.ax = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %i.ax, label %.lr.ph.i23, label %._crit_edge.i19, !llvm.loop !380

._crit_edge.i19:                                  ; preds = %bb.j, %bb.g
  %.019.lcssa.i20 = phi i64 [ %i.ad, %bb.g ], [ %i.at, %bb.j ]
  %.017.lcssa.i21 = phi ptr [ %i.aa, %bb.g ], [ %i.as, %bb.j ]
  %.lcssa.i22 = phi i1 [ %i.ah, %bb.g ], [ %i.aw, %bb.j ]
  br i1 %.lcssa.i22, label %bb.k, label %set_str.exit

bb.k:                                             ; preds = %._crit_edge.i19
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.017.lcssa.i21, i8 32, i64 %.019.lcssa.i20, i1 false)
  br label %set_str.exit

bb.l:                                             ; preds = %bb.a, %bb.a
  %i.ay = zext nneg i32 %2 to i64
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %i.ay
  %reass.sub = sub nsw i32 %3, %2
  %i.ba = add nsw i32 %reass.sub, 1
  %i.bb = sext i32 %i.ba to i64
  %i.bc = tail call fastcc i32 @set_str_utf16be(ptr noundef %0, ptr noundef nonnull %i.az, ptr noundef %4, i64 noundef %i.bb, i32 noundef %5)
  br label %set_str.exit

set_str.exit:                                     ; preds = %bb.k, %._crit_edge.i19, %bb.f, %._crit_edge.i, %bb.a, %bb.l
  %.0 = phi i32 [ %i.bc, %bb.l ], [ -30, %bb.a ], [ 0, %bb.f ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.i19 ], [ 0, %bb.k ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -30, 1) i32 @set_file_identifier(ptr nofree noundef captures(none) %0, i32 noundef range(i32 319, 778) %1, i32 noundef range(i32 446, 814) %2, i32 noundef range(i32 0, 3) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7, i32 noundef range(i32 0, 2) %8, i32 noundef range(i32 0, 2) %9) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 6 uses
  %i.b = alloca [256 x i8], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !101  ; 2 uses
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne i32 %8, 0
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %6, align 8, !tbaa !247    ; 4 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !71
  %.not = icmp eq i8 %i.h, 95
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %9, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call fastcc i32 @set_str_a_characters_bp(ptr noundef %4, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %i.g, i32 noundef %3)
  br label %bb.w

bb.e:                                             ; preds = %bb.c
  %i.k = tail call fastcc i32 @set_str_d_characters_bp(ptr noundef %4, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %i.g, i32 noundef %3)
  br label %bb.w

bb.f:                                             ; preds = %bb.a
  %.not66 = icmp eq i64 %i.d, 0
  br i1 %.not66, label %bb.t, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.f
  %.pre = load ptr, ptr %6, align 8, !tbaa !247
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %i.l = phi ptr [ %.pre, %..thread_crit_edge ], [ %i.g, %bb.b ]
  %spec.select.idx = zext nneg i32 %8 to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %i.l, i64 %spec.select.idx ; 2 uses
  %i.m = load ptr, ptr %5, align 8, !tbaa !170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.l, %.thread
  %.014.i = phi ptr [ %i.m, %.thread ], [ %i.ab, %bb.l ]
  %.0.i = phi ptr [ %spec.select, %.thread ], [ %spec.select.i, %bb.l ] ; 5 uses
  %i.n = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0.i, i32 noundef 47) #25 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #25 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.m, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = ptrtoint ptr %.0.i to i64
  %i.t = sub i64 %i.r, %i.s
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i.i = phi i64 [ %i.p, %bb.h ], [ %i.t, %bb.i ] ; 5 uses
  %i.u = icmp ugt i64 %.0.i.i, 255
  br i1 %i.u, label %get_path_component.exit.thread19.i, label %get_path_component.exit.i

get_path_component.exit.i:                        ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %.0.i, i64 %.0.i.i, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.i.i
  store i8 0, ptr %i.v, align 1, !tbaa !71
  %i.w = icmp eq i64 %.0.i.i, 0
  br i1 %i.w, label %bb.m, label %get_path_component.exit.thread19.i

get_path_component.exit.thread19.i:               ; preds = %get_path_component.exit.i, %bb.j
  %.013.i21.i = phi i64 [ %.0.i.i, %get_path_component.exit.i ], [ -1, %bb.j ]
  %i.x = getelementptr inbounds i8, ptr %.0.i, i64 %.013.i21.i ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !71
  %i.z = icmp eq i8 %i.y, 47
  %spec.select.idx.i = zext i1 %i.z to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.x, i64 %spec.select.idx.i ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.014.i, i64 64
  %i.ab = call ptr @__archive_rb_tree_find_node(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.a) #23 ; 6 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.m, label %bb.k

bb.k:                                             ; preds = %get_path_component.exit.thread19.i
  %i.ad = load i8, ptr %spec.select.i, align 1, !tbaa !71
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 232
  %i.ag = load i8, ptr %i.af, align 8
  %i.ah = and i8 %i.ag, 2
  %.not.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i, label %bb.m, label %bb.g

bb.m:                                             ; preds = %get_path_component.exit.i, %get_path_component.exit.thread19.i, %bb.l, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %4, i32 noundef -1, ptr noundef nonnull @.str.88, ptr noundef %7, ptr noundef %spec.select) #23
  br label %bb.w

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 176
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !328
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 180
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !329
  %i.am = add nsw i32 %i.al, %i.aj
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !275
  %i.aq = icmp eq i32 %i.ap, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 168
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !191 ; 2 uses
  br i1 %i.aq, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %spec.store.select2 = call i64 @llvm.umin.i64(i64 %i.an, i64 255) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr align 1 %i.as, i64 %spec.store.select2, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 %spec.store.select2
  store i8 0, ptr %i.at, align 1, !tbaa !71
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %spec.store.select = call i64 @llvm.umin.i64(i64 %i.an, i64 254) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr align 1 %i.as, i64 %spec.store.select, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 %spec.store.select ; 2 uses
  store i8 0, ptr %i.au, align 1, !tbaa !71
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store i8 0, ptr %i.av, align 1, !tbaa !71
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.064 = phi i32 [ 3, %bb.p ], [ %3, %bb.o ]     ; 2 uses
  %i.aw = icmp eq i32 %9, 0
  br i1 %i.aw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ax = call fastcc i32 @set_str_a_characters_bp(ptr noundef %4, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %i.b, i32 noundef %.064)
  br label %bb.w

bb.s:                                             ; preds = %bb.q
  %i.ay = call fastcc i32 @set_str_d_characters_bp(ptr noundef %4, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %i.b, i32 noundef %.064)
  br label %bb.w

bb.t:                                             ; preds = %bb.f
  %i.az = icmp eq i32 %9, 0
  br i1 %i.az, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ba = tail call fastcc i32 @set_str_a_characters_bp(ptr noundef %4, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef null, i32 noundef %3)
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bb = tail call fastcc i32 @set_str_d_characters_bp(ptr noundef %4, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef null, i32 noundef %3)
  br label %bb.w

bb.w:                                             ; preds = %bb.e, %bb.d, %bb.u, %bb.v, %bb.r, %bb.s, %bb.m
  %.063 = phi i32 [ -30, %bb.m ], [ %i.j, %bb.d ], [ %i.k, %bb.e ], [ %i.ax, %bb.r ], [ %i.ay, %bb.s ], [ %i.ba, %bb.u ], [ %i.bb, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret i32 %.063
}

; Function Attrs: nounwind uwtable
define internal fastcc void @set_date_time(ptr nofree noundef writeonly captures(none) initializes((0, 17)) %0, i64 noundef %1) unnamed_addr #0 {
set_digit.exit:
  %i.a = alloca i64, align 8                      ; 2 uses
  %2 = alloca %struct.tm, align 8                 ; 7 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !232
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @tzset() #23
  %i.b = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %2) #23 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %3 = load <4 x i32>, ptr %i.d, align 8, !tbaa !104 ; 3 uses
  %4 = add nsw <4 x i32> %3, <i32 0, i32 0, i32 1, i32 1900> ; 3 uses
  %5 = extractelement <4 x i32> %4, i64 3         ; 2 uses
  %i.f = sdiv i32 %5, 100
  %6 = sdiv i32 %5, 1000
  %7 = insertelement <8 x i32> poison, i32 %6, i64 0
  %8 = insertelement <8 x i32> %7, i32 %i.f, i64 1
  %9 = sdiv <4 x i32> %4, splat (i32 10)          ; 2 uses
  %10 = shufflevector <4 x i32> %9, <4 x i32> poison, <8 x i32> <i32 poison, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %11 = shufflevector <8 x i32> %8, <8 x i32> %10, <8 x i32> <i32 0, i32 1, i32 11, i32 poison, i32 10, i32 poison, i32 9, i32 poison>
  %12 = shufflevector <4 x i32> %4, <4 x i32> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %13 = shufflevector <8 x i32> %11, <8 x i32> %12, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 4, i32 10, i32 6, i32 poison>
  %14 = shufflevector <4 x i32> %3, <4 x i32> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %15 = shufflevector <8 x i32> %13, <8 x i32> %14, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 9>
  %i.g = srem <8 x i32> %15, splat (i32 10)
  %16 = trunc nsw <8 x i32> %i.g to <8 x i8>
  %17 = add nsw <8 x i8> %16, splat (i8 48)
  store <8 x i8> %17, ptr %0, align 1, !tbaa !71
  %18 = extractelement <4 x i32> %3, i64 0
  %19 = srem i32 %18, 10
  %20 = trunc nsw i32 %19 to i8
  %21 = add nsw i8 %20, 48
  store i8 %21, ptr %i.e, align 1, !tbaa !71
  %22 = extractelement <4 x i32> %9, i64 0
  %23 = srem i32 %22, 10
  %24 = trunc nsw i32 %23 to i8
  %25 = add nsw i8 %24, 48
  store i8 %25, ptr %i.c, align 1, !tbaa !71
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %28 = load i32, ptr %27, align 4, !tbaa !360    ; 2 uses
  %29 = srem i32 %28, 10
  %30 = trunc nsw i32 %29 to i8
  %31 = add nsw i8 %30, 48
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %31, ptr %32, align 1, !tbaa !71
  %33 = sdiv i32 %28, 10
  %34 = srem i32 %33, 10
  %35 = trunc nsw i32 %34 to i8
  %36 = add nsw i8 %35, 48
  store i8 %36, ptr %26, align 1, !tbaa !71
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %38 = load i32, ptr %2, align 8, !tbaa !361     ; 2 uses
  %39 = srem i32 %38, 10
  %40 = trunc nsw i32 %39 to i8
  %41 = add nsw i8 %40, 48
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %41, ptr %42, align 1, !tbaa !71
  %43 = sdiv i32 %38, 10
  %44 = srem i32 %43, 10
  %45 = trunc nsw i32 %44 to i8
  %46 = add nsw i8 %45, 48
  store i8 %46, ptr %37, align 1, !tbaa !71
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 48, ptr %48, align 1, !tbaa !71
  store i8 48, ptr %47, align 1, !tbaa !71
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !362
  %i.k = sdiv i64 %i.j, 900
  %i.l = trunc i64 %i.k to i8
  store i8 %i.l, ptr %i.h, align 1, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @uname(ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -30, 1) i32 @set_str_utf16be(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i64 noundef range(i64 -736, 806) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %spec.store.select = select i1 %i.a, ptr @.str.87, ptr %2 ; 5 uses
  %i.b = and i64 %3, 1
  %.not = icmp eq i64 %i.b, 0
  %i.c = and i64 %3, -2                           ; 4 uses
  %i.d = icmp eq i32 %4, 2
  br i1 %i.d, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = load i16, ptr %spec.store.select, align 2, !tbaa !337
  %.not5462 = icmp eq i16 %i.e, 0
  br i1 %.not5462, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.store.select) #25
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !160
  %i.l = tail call i32 @archive_strncpy_l(ptr noundef nonnull %i.h, ptr noundef nonnull %spec.store.select, i64 noundef %i.i, ptr noundef %i.k) #23
  %.not55 = icmp eq i32 %i.l, 0
  br i1 %.not55, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @__errno_location() #26
  %i.n = load i32, ptr %i.m, align 4, !tbaa !104
  %i.o = icmp eq i32 %i.n, 12
  br i1 %i.o, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 12, ptr noundef nonnull @.str.48) #23
  br label %bb.m

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.q = load i64, ptr %i.p, align 8, !tbaa !381
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.c) ; 2 uses
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !382
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.r, i64 %spec.select, i1 false)
  br label %bb.e

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.064 = phi ptr [ %i.s, %.lr.ph ], [ %spec.store.select, %.preheader ]
  %.263 = phi i64 [ %i.t, %.lr.ph ], [ 0, %.preheader ]
  %i.s = getelementptr inbounds nuw i8, ptr %.064, i64 2 ; 2 uses
  %i.t = add i64 %.263, 2                         ; 2 uses
  %i.u = load i16, ptr %i.s, align 2, !tbaa !337
  %.not54 = icmp eq i16 %i.u, 0
  br i1 %.not54, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !383

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.c)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.2.lcssa = phi i64 [ 0, %.preheader ], [ %i.v, %._crit_edge.loopexit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %spec.store.select, i64 %.2.lcssa, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.4 = phi i64 [ %spec.select, %bb.d ], [ %.2.lcssa, %._crit_edge ] ; 4 uses
  %.not78 = icmp eq i64 %.4, 0
  br i1 %.not78, label %._crit_edge69, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %bb.e
  %i.w = add i64 %.4, -1                          ; 2 uses
  %i.x = lshr i64 %i.w, 1                         ; 2 uses
  %i.y = add nuw i64 %i.x, 1                      ; 2 uses
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %.lr.ph68.epil.preheader, label %.lr.ph68.preheader.new

.lr.ph68.preheader.new:                           ; preds = %.lr.ph68.preheader
  %unroll_iter = and i64 %i.y, -2
  br label %.lr.ph68

.lr.ph68:                                         ; preds = %joliet_allowed_char.exit.1, %.lr.ph68.preheader.new
  %.04965 = phi ptr [ %1, %.lr.ph68.preheader.new ], [ %i.ar, %joliet_allowed_char.exit.1 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph68.preheader.new ], [ %niter.next.1, %joliet_allowed_char.exit.1 ]
  %i.aa = load i8, ptr %.04965, align 1, !tbaa !71
  %i.ab = getelementptr inbounds nuw i8, ptr %.04965, i64 1 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !71
  %i.ad = zext i8 %i.aa to i32
  %i.ae = shl nuw nsw i32 %i.ad, 8
  %i.af = zext i8 %i.ac to i32
  %i.ag = or disjoint i32 %i.ae, %i.af            ; 2 uses
  %i.ah = icmp samesign ult i32 %i.ag, 32
  br i1 %i.ah, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph68
  %trunc.i = trunc nuw i32 %i.ag to i16
  switch i16 %trunc.i, label %joliet_allowed_char.exit [
    i16 42, label %bb.g
    i16 47, label %bb.g
    i16 58, label %bb.g
    i16 59, label %bb.g
    i16 63, label %bb.g
    i16 92, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph68, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  store i8 0, ptr %.04965, align 1, !tbaa !71
  store i8 95, ptr %i.ab, align 1, !tbaa !71
  br label %joliet_allowed_char.exit

joliet_allowed_char.exit:                         ; preds = %bb.f, %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.04965, i64 2 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !71
  %i.ak = getelementptr inbounds nuw i8, ptr %.04965, i64 3 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !71
  %i.am = zext i8 %i.aj to i32
  %i.an = shl nuw nsw i32 %i.am, 8
  %i.ao = zext i8 %i.al to i32
  %i.ap = or disjoint i32 %i.an, %i.ao            ; 2 uses
  %i.aq = icmp samesign ult i32 %i.ap, 32
  br i1 %i.aq, label %bb.i, label %bb.h

bb.h:                                             ; preds = %joliet_allowed_char.exit
  %trunc.i.1 = trunc nuw i32 %i.ap to i16
  switch i16 %trunc.i.1, label %joliet_allowed_char.exit.1 [
    i16 42, label %bb.i
    i16 47, label %bb.i
    i16 58, label %bb.i
    i16 59, label %bb.i
    i16 63, label %bb.i
    i16 92, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %joliet_allowed_char.exit
  store i8 0, ptr %i.ai, align 1, !tbaa !71
  store i8 95, ptr %i.ak, align 1, !tbaa !71
  br label %joliet_allowed_char.exit.1

joliet_allowed_char.exit.1:                       ; preds = %bb.i, %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.04965, i64 4 ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge69.loopexit.unr-lcssa, label %.lr.ph68, !llvm.loop !384

._crit_edge69.loopexit.unr-lcssa:                 ; preds = %joliet_allowed_char.exit.1
  %i.as = and i64 %i.w, 2
  %lcmp.mod.not.not = icmp eq i64 %i.as, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph68.epil.preheader, label %._crit_edge69

.lr.ph68.epil.preheader:                          ; preds = %._crit_edge69.loopexit.unr-lcssa, %.lr.ph68.preheader
  %.04965.epil.init = phi ptr [ %1, %.lr.ph68.preheader ], [ %i.ar, %._crit_edge69.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod17 = trunc i64 %i.y to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.at = load i8, ptr %.04965.epil.init, align 1, !tbaa !71
  %i.au = getelementptr inbounds nuw i8, ptr %.04965.epil.init, i64 1 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !71
  %i.aw = zext i8 %i.at to i32
  %i.ax = shl nuw nsw i32 %i.aw, 8
  %i.ay = zext i8 %i.av to i32
  %i.az = or disjoint i32 %i.ax, %i.ay            ; 2 uses
  %i.ba = icmp samesign ult i32 %i.az, 32
  br i1 %i.ba, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph68.epil.preheader
  %trunc.i.epil = trunc nuw i32 %i.az to i16
  switch i16 %trunc.i.epil, label %joliet_allowed_char.exit.epil [
    i16 42, label %bb.k
    i16 47, label %bb.k
    i16 58, label %bb.k
    i16 59, label %bb.k
    i16 63, label %bb.k
    i16 92, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %.lr.ph68.epil.preheader
  store i8 0, ptr %.04965.epil.init, align 1, !tbaa !71
  store i8 95, ptr %i.au, align 1, !tbaa !71
  br label %joliet_allowed_char.exit.epil

joliet_allowed_char.exit.epil:                    ; preds = %bb.k, %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %.04965.epil.init, i64 2
  br label %._crit_edge69

._crit_edge69:                                    ; preds = %joliet_allowed_char.exit.epil, %._crit_edge69.loopexit.unr-lcssa, %bb.e
  %.049.lcssa = phi ptr [ %1, %bb.e ], [ %i.ar, %._crit_edge69.loopexit.unr-lcssa ], [ %i.bb, %joliet_allowed_char.exit.epil ] ; 7 uses
  %i.bc = sub i64 %i.c, %.4                       ; 4 uses
end_hunk_0
