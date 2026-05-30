inline.NumInlined: 13631
inline.NumDeleted: 4655
begin_hunk_0_@_ZN11OpenImageIO4v3_114ImageCacheFile10udim_setupEv:bb.a
  %20 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %21 = alloca %"class.std::vector.15", align 8   ; 11 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %23 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %28 = alloca %"class.std::vector.61", align 8   ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_regex", align 8 ; 8 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %32 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %33 = alloca %"class.std::__cxx11::match_results", align 8 ; 11 uses
  %i.d = alloca i32, align 4                      ; 10 uses
  %34 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.e = alloca i32, align 4                      ; 11 uses
  %36 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %38 = alloca %"class.OpenImageIO::v3_1::ustring", align 8 ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 166 ; 5 uses
  store i16 0, ptr %i.g, align 2, !tbaa !202
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store i16 0, ptr %i.h, align 8, !tbaa !203
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13, !noalias !204 ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !207, !noalias !204
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi i64 [ %i.l, %bb.b ], [ 0, %bb.a ]
  store ptr %i.j, ptr %20, align 8, !tbaa !7, !alias.scope !204
  %i.m = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %.0.i.i, ptr %i.m, align 8, !tbaa !12, !alias.scope !204
  %i.n = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110Filesystem6existsENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %20) #5
  br i1 %i.n, label %bb.by, label %bb.c

bb.c:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !13, !noalias !209 ; 3 uses
  %.not.i.i57 = icmp eq ptr %i.o, null
  br i1 %.not.i.i57, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit59, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !207, !noalias !209
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit59

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit59: ; preds = %bb.c, %bb.d
  %.0.i.i58 = phi i64 [ %i.q, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  store ptr %i.o, ptr %18, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %.0.i.i58, ptr %i.r, align 8, !tbaa !12
  store ptr @.str.249, ptr %19, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 6, ptr %i.s, align 8, !tbaa !12
  %i.t = call noundef i64 @_ZN11OpenImageIO4v3_17Strutil5rfindENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %18, ptr noundef nonnull dead_on_return %19)
  %.not227.a = icmp eq i64 %i.t, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  br i1 %.not227.a, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit59
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !13, !noalias !212 ; 3 uses
  %.not.i.i60 = icmp eq ptr %i.u, null
  br i1 %.not.i.i60, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit62, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !207, !noalias !212
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit62

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit62: ; preds = %bb.e, %bb.f
  %.0.i.i61 = phi i64 [ %i.w, %bb.f ], [ 0, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  store ptr %i.u, ptr %16, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %.0.i.i61, ptr %i.x, align 8, !tbaa !12
  store ptr @.str.250, ptr %17, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 8, ptr %i.y, align 8, !tbaa !12
  %i.z = call noundef i64 @_ZN11OpenImageIO4v3_17Strutil5rfindENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %16, ptr noundef nonnull dead_on_return %17)
  %i.aa = icmp ne i64 %i.z, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br label %bb.g

bb.g:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit62, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit59
  %i.ab = phi i1 [ true, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit59 ], [ %i.aa, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit62 ] ; 2 uses
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !13, !noalias !215 ; 3 uses
  %.not.i.i63 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i63, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit65, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !207, !noalias !215
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit65

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit65: ; preds = %bb.g, %bb.h
  %.0.i.i64 = phi i64 [ %i.ae, %bb.h ], [ 0, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  store ptr %i.ac, ptr %14, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %.0.i.i64, ptr %i.af, align 8, !tbaa !12
  store ptr @.str.251, ptr %15, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 3, ptr %i.ag, align 8, !tbaa !12
  %i.ah = call noundef i64 @_ZN11OpenImageIO4v3_17Strutil5rfindENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %14, ptr noundef nonnull dead_on_return %15)
  %.not228.a = icmp eq i64 %i.ah, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br i1 %.not228.a, label %bb.i, label %bb.o

bb.i:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit65
  %i.ai = load ptr, ptr %i.i, align 8, !tbaa !13, !noalias !218 ; 3 uses
  %.not.i.i66 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i66, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit68, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !207, !noalias !218
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit68

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit68: ; preds = %bb.i, %bb.j
  %.0.i.i67 = phi i64 [ %i.ak, %bb.j ], [ 0, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store ptr %i.ai, ptr %12, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %.0.i.i67, ptr %i.al, align 8, !tbaa !12
  store ptr @.str.252, ptr %13, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 3, ptr %i.am, align 8, !tbaa !12
  %i.an = call noundef i64 @_ZN11OpenImageIO4v3_17Strutil5rfindENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %12, ptr noundef nonnull dead_on_return %13)
  %.not229.a = icmp eq i64 %i.an, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br i1 %.not229.a, label %bb.k, label %bb.o

bb.k:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit68
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !13, !noalias !221 ; 3 uses
  %.not.i.i69 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i69, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit71, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !207, !noalias !221
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit71

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit71: ; preds = %bb.k, %bb.l
  %.0.i.i70 = phi i64 [ %i.aq, %bb.l ], [ 0, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr %i.ao, ptr %10, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %.0.i.i70, ptr %i.ar, align 8, !tbaa !12
  store ptr @.str.253, ptr %11, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 8, ptr %i.as, align 8, !tbaa !12
  %i.at = call noundef i64 @_ZN11OpenImageIO4v3_17Strutil5rfindENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %10, ptr noundef nonnull dead_on_return %11)
  %.not230.a = icmp eq i64 %i.at, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br i1 %.not230.a, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit71
  %i.au = load ptr, ptr %i.i, align 8, !tbaa !13, !noalias !224 ; 3 uses
  %.not.i.i72 = icmp eq ptr %i.au, null
  br i1 %.not.i.i72, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit74, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !207, !noalias !224
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit74

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit74: ; preds = %bb.m, %bb.n
  %.0.i.i73 = phi i64 [ %i.aw, %bb.n ], [ 0, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.au, ptr %8, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.0.i.i73, ptr %i.ax, align 8, !tbaa !12
  store ptr @.str.254, ptr %9, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 7, ptr %i.ay, align 8, !tbaa !12
  %i.az = call noundef i64 @_ZN11OpenImageIO4v3_17Strutil5rfindENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %8, ptr noundef nonnull dead_on_return %9)
  %i.ba = icmp ne i64 %i.az, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %39 = zext i1 %i.ba to i32
  br label %bb.o

bb.o:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit74, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit71, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit68, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit65
  %40 = phi i32 [ 1, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit71 ], [ 1, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit68 ], [ 1, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit65 ], [ %39, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit74 ]
  %i.bb = load ptr, ptr %i.i, align 8, !tbaa !13, !noalias !227 ; 3 uses
  %.not.i.i75 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i75, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit77, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -24
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !207, !noalias !227
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit77

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit77: ; preds = %bb.o, %bb.p
  %.0.i.i76 = phi i64 [ %i.bd, %bb.p ], [ 0, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.bb, ptr %6, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.0.i.i76, ptr %i.be, align 8, !tbaa !12
  store ptr @.str.255, ptr %7, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 3, ptr %i.bf, align 8, !tbaa !12
  %i.bg = call noundef i64 @_ZN11OpenImageIO4v3_17Strutil5rfindENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7)
  %.not231.a = icmp eq i64 %i.bg, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br i1 %.not231.a, label %bb.q, label %41

bb.q:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit77
  %i.bh = load ptr, ptr %i.i, align 8, !tbaa !13, !noalias !230 ; 3 uses
  %.not.i.i78 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i78, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit80, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -24
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !207, !noalias !230
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit80

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit80: ; preds = %bb.q, %bb.r
  %.0.i.i79 = phi i64 [ %i.bj, %bb.r ], [ 0, %bb.q ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.bh, ptr %4, align 8, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.0.i.i79, ptr %i.bk, align 8, !tbaa !12
  store ptr @.str.256, ptr %5, align 8, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 3, ptr %i.bl, align 8, !tbaa !12
  %i.bm = call noundef i64 @_ZN11OpenImageIO4v3_17Strutil5rfindENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %4, ptr noundef nonnull dead_on_return %5)
  %.not232.a = icmp eq i64 %i.bm, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br i1 %.not232.a, label %bb.s, label %41

bb.s:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit80
  %i.bn = load ptr, ptr %i.i, align 8, !tbaa !13, !noalias !233 ; 3 uses
  %.not.i.i81 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i81, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit83, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -24
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !207, !noalias !233
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit83

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit83: ; preds = %bb.s, %bb.t
  %.0.i.i82 = phi i64 [ %i.bp, %bb.t ], [ 0, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.bn, ptr %2, align 8, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.0.i.i82, ptr %i.bq, align 8, !tbaa !12
  store ptr @.str.257, ptr %3, align 8, !tbaa !7
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 8, ptr %i.br, align 8, !tbaa !12
  %i.bs = call noundef i64 @_ZN11OpenImageIO4v3_17Strutil5rfindENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %2, ptr noundef nonnull dead_on_return %3)
  %i.bt = icmp ne i64 %i.bs, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %41

41:                                               ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit83, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit80, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit77
  %42 = phi i1 [ true, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit80 ], [ true, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit77 ], [ %i.bt, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit83 ] ; 2 uses
  %43 = zext i1 %42 to i32
  %44 = zext i1 %i.ab to i32
  %45 = or i32 %40, %44
  %46 = or i32 %45, %43
  %.not = icmp eq i32 %46, 0
  br i1 %.not, label %bb.by, label %bb.u

bb.u:                                             ; preds = %41
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #5
  call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %i.bu = load ptr, ptr %i.i, align 8, !tbaa !13, !noalias !236 ; 3 uses
  %.not.i.i84 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i84, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit86, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -24
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !207, !noalias !236
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit86

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit86: ; preds = %bb.u, %bb.v
  %.0.i.i85 = phi i64 [ %i.bw, %bb.v ], [ 0, %bb.u ]
  store ptr %i.bu, ptr %23, align 8, !tbaa !7, !alias.scope !236
  %i.bx = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %.0.i.i85, ptr %i.bx, align 8, !tbaa !12, !alias.scope !236
  call void @_ZN11OpenImageIO4v3_110Filesystem11parent_pathB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull dead_on_return %23) #5
  %i.by = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !169
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.w:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit86
  %i.cb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %22, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.258, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.x ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.w, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit86
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #5
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.cd = load ptr, ptr %i.i, align 8, !tbaa !13, !noalias !239 ; 3 uses
  %.not.i.i87 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i87, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit89, label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -24
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !207, !noalias !239
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit89

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.y
  %.0.i.i88 = phi i64 [ %i.cf, %bb.y ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ]
  store ptr %i.cd, ptr %27, align 8, !tbaa !7, !alias.scope !239
  %i.cg = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 %.0.i.i88, ptr %i.cg, align 8, !tbaa !12, !alias.scope !239
  call void @_ZN11OpenImageIO4v3_110Filesystem8filenameB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef nonnull dead_on_return %27) #5
  %i.ch = load ptr, ptr %26, align 8, !tbaa !36
  store ptr %i.ch, ptr %25, align 8, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !169
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !12
  invoke void @_ZN11OpenImageIO4v3_114ImageCacheFile16udim_to_wildcardB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef nonnull dead_on_return %25)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit89
  %i.cl = load ptr, ptr %26, align 8, !tbaa !36   ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.z
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !39
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #5
  %i.cq = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110Filesystem21get_directory_entriesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS7_SaIS7_EEbS9_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(24) %21, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE11_M_allocateEm.exit.i.i unwind label %bb.ad ; 0 uses

_ZNSt12_Vector_baseIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #5
  %i.cr = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 4 uses
  %i.ct = invoke noalias noundef nonnull dereferenceable(2400) ptr @_Znwm(i64 noundef 2400) #47
          to label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE13_M_deallocateEPS3_m.exit.i unwind label %.thread ; 3 uses

_ZNSt12_Vector_baseIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE11_M_allocateEm.exit.i.i
  store ptr %i.ct, ptr %28, align 8, !tbaa !182
  store ptr %i.ct, ptr %i.cs, align 8, !tbaa !242
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 2400
  store ptr %i.cu, ptr %i.cr, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #5
  invoke void @_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEEC2ISt11char_traitsIcESaIcEEERKNS_12basic_stringIcT_T0_EENSt15regex_constants18syntax_option_typeE(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(32) %24, i32 noundef 16)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %i.cv = load ptr, ptr %21, align 8, !tbaa !200  ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !200 ; 2 uses
  %.not233272 = icmp eq ptr %i.cv, %i.cx
  br i1 %.not233272, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aa
  %i.cy = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 7 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 7 uses
  %i.de = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 7 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 4 uses
  br label %bb.af

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %bb.aa
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !182 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !242
  %.not.i.i91 = icmp eq ptr %i.dp, %i.dn
  br i1 %.not.i.i91, label %_ZNSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE5clearEv.exit, label %_ZSt8_DestroyIPN11OpenImageIO4v3_13pvt8UdimInfoES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_13pvt8UdimInfoES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %._crit_edge
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !242
  br label %_ZNSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE5clearEv.exit

_ZNSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE5clearEv.exit: ; preds = %._crit_edge, %_ZSt8_DestroyIPN11OpenImageIO4v3_13pvt8UdimInfoES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.dq = load i16, ptr %i.g, align 2, !tbaa !202
  %i.dr = sext i16 %i.dq to i64
  %i.ds = load i16, ptr %i.h, align 8, !tbaa !203
  %i.dt = sext i16 %i.ds to i64
  %i.du = mul nsw i64 %i.dt, %i.dr                ; 2 uses
  %.not350 = icmp eq i64 %i.du, 0
  br i1 %.not350, label %_ZNSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE6resizeEm.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE5clearEv.exit
  invoke void @_ZNSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 noundef %i.du)
          to label %_ZNSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE6resizeEm.exit unwind label %bb.bx

bb.ac:                                            ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit89
  %i.dv = landingpad { ptr, i32 }
          cleanup
  %i.dw = load ptr, ptr %26, align 8, !tbaa !36   ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %bb.ac
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !39
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #5
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

.thread:                                          ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE11_M_allocateEm.exit.i.i
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EED2Ev.exit168

bb.ae:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.af:                                            ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %.sroa.0187.0273 = phi ptr [ %i.cv, %.lr.ph ], [ %i.jn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #5
  store ptr %i.cy, ptr %30, align 8, !tbaa !168
  %i.ee = load ptr, ptr %.sroa.0187.0273, align 8, !tbaa !36 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0187.0273, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !169 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 %i.eg, ptr %i.c, align 8, !tbaa !201
  %i.eh = icmp ugt i64 %i.eg, 15
  br i1 %i.eh, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.af
  %i.ei = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc98 unwind label %bb.ap  ; 2 uses

.noexc98:                                         ; preds = %.noexc.i
  store ptr %i.ei, ptr %30, align 8, !tbaa !36
  %i.ej = load i64, ptr %i.c, align 8, !tbaa !201
  store i64 %i.ej, ptr %i.cy, align 8, !tbaa !39
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc98, %bb.af
  %i.ek = phi ptr [ %i.ei, %.noexc98 ], [ %i.cy, %bb.af ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_114ImageCacheFile10udim_setupEv:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit151
  %i.jv = load i64, ptr %i.dl, align 8, !tbaa !39
  %i.jw = add i64 %i.jv, 1
  call void @_ZdlPvm(ptr noundef %i.jt, i64 noundef %i.jw) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit151, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #5
  %i.jx = load ptr, ptr %30, align 8, !tbaa !36   ; 2 uses
  %i.jy = icmp eq ptr %i.jx, %i.cy
  br i1 %i.jy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154
  %i.jz = load i64, ptr %i.cy, align 8, !tbaa !39
  %i.ka = add i64 %i.jz, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.ka) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155, %bb.ap
  %.pn45.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gb, %bb.ap ], [ %.pn45.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155 ], [ %.pn45.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #5
  br label %bb.bz

_ZNSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE6resizeEm.exit: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE5clearEv.exit, %bb.ab
  %i.kb = load ptr, ptr %28, align 8, !tbaa !257  ; 2 uses
  %i.kc = load ptr, ptr %i.cs, align 8, !tbaa !257 ; 2 uses
  %.not234274 = icmp eq ptr %i.kb, %i.kc
  br i1 %.not234274, label %._crit_edge277, label %.lr.ph276

._crit_edge277:                                   ; preds = %.lr.ph276, %_ZNSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE6resizeEm.exit
  %i.kd = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !258 ; 8 uses
  %.not.i.i.i158 = icmp eq ptr %i.ke, null
  br i1 %.not.i.i.i158, label %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %._crit_edge277
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8 ; 4 uses
  %i.kg = load atomic i64, ptr %i.kf acquire, align 8 ; 2 uses
  %i.kh = icmp eq i64 %i.kg, 4294967297
  %i.ki = trunc i64 %i.kg to i32                  ; 2 uses
  br i1 %i.kh, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.kf, align 8, !tbaa !259
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ke, i64 12
  store i32 0, ptr %i.kj, align 4, !tbaa !261
  %i.kk = load ptr, ptr %i.ke, align 8, !tbaa !262
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.km = load ptr, ptr %i.kl, align 8
  call void %i.km(ptr noundef nonnull align 8 dereferenceable(16) %i.ke) #5, !inline_history !264
  %i.kn = load ptr, ptr %i.ke, align 8, !tbaa !262
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kp = load ptr, ptr %i.ko, align 8
  call void %i.kp(ptr noundef nonnull align 8 dereferenceable(16) %i.ke) #5, !inline_history !264
  br label %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev.exit

bb.br:                                            ; preds = %bb.bp
  %i.kq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i = icmp eq i8 %i.kq, 0
  br i1 %.not.i.i.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kr = add nsw i32 %i.ki, -1
  store i32 %i.kr, ptr %i.kf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.ks = atomicrmw volatile add ptr %i.kf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.bt, %bb.bs
  %.0.i.i.i.i.i = phi i32 [ %i.ki, %bb.bs ], [ %i.ks, %bb.bt ]
  %i.kt = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.kt, label %bb.bu, label %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev.exit, !prof !190

bb.bu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ke) #5
  br label %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev.exit

_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev.exit: ; preds = %._crit_edge277, %bb.bq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.bu
  %i.ku = getelementptr inbounds nuw i8, ptr %29, i64 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ku) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #5
  %i.kv = load ptr, ptr %28, align 8, !tbaa !182  ; 3 uses
  %.not.i.i.i159 = icmp eq ptr %i.kv, null
  br i1 %.not.i.i.i159, label %_ZNSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EED2Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev.exit
  %i.kw = load ptr, ptr %i.cr, align 8, !tbaa !183
  %i.kx = ptrtoint ptr %i.kw to i64
  %i.ky = ptrtoint ptr %i.kv to i64
  %i.kz = sub i64 %i.kx, %i.ky
  call void @_ZdlPvm(ptr noundef nonnull %i.kv, i64 noundef %i.kz) #46
  br label %_ZNSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EED2Ev.exit

_ZNSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EED2Ev.exit: ; preds = %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev.exit, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #5
  %i.la = load ptr, ptr %24, align 8, !tbaa !36   ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.lc = icmp eq ptr %i.la, %i.lb
  br i1 %i.lc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EED2Ev.exit
  %i.ld = load i64, ptr %i.lb, align 8, !tbaa !39
  %i.le = add i64 %i.ld, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.le) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #5
  %i.lf = load ptr, ptr %22, align 8, !tbaa !36   ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.lh = icmp eq ptr %i.lf, %i.lg
  br i1 %i.lh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162
  %i.li = load i64, ptr %i.lg, align 8, !tbaa !39
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.lj) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #5
  %i.lk = load ptr, ptr %21, align 8, !tbaa !198  ; 3 uses
  %i.ll = load ptr, ptr %i.cw, align 8, !tbaa !195 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.lk, %i.ll
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.lr, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.lk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165 ] ; 3 uses
  %i.lm = load ptr, ptr %.05.i.i.i, align 8, !tbaa !36 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.lo = icmp eq ptr %i.lm, %i.ln
  br i1 %i.lo, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.lp = load i64, ptr %i.ln, align 8, !tbaa !39
  %i.lq = add i64 %i.lp, 1
  call void @_ZdlPvm(ptr noundef %i.lm, i64 noundef %i.lq) #46
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.lr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i166 = icmp eq ptr %i.lr, %i.ll
  br i1 %.not.i.i.i166, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !265

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %21, align 8, !tbaa !198
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165
  %i.ls = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.lk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ls, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.bw

bb.bw:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.lt = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !199
  %i.lv = ptrtoint ptr %i.lu to i64
  %i.lw = ptrtoint ptr %i.ls to i64
  %i.lx = sub i64 %i.lv, %i.lw
  call void @_ZdlPvm(ptr noundef nonnull %i.ls, i64 noundef %i.lx) #46
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #5
  br label %bb.by

bb.bx:                                            ; preds = %bb.ab
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

.lr.ph276:                                        ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE6resizeEm.exit, %.lr.ph276
  %.sroa.0175.0275 = phi ptr [ %i.mq, %.lr.ph276 ], [ %i.kb, %_ZNSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE6resizeEm.exit ] ; 5 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.0175.0275, i64 20
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !252
  %i.mb = load i16, ptr %i.g, align 2, !tbaa !202
  %i.mc = sext i16 %i.mb to i32
  %i.md = mul nsw i32 %i.ma, %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.0175.0275, i64 16 ; 2 uses
  %i.mf = load i32, ptr %i.me, align 8, !tbaa !249
  %i.mg = add nsw i32 %i.md, %i.mf
  %i.mh = sext i32 %i.mg to i64
  %i.mi = load ptr, ptr %i.dm, align 8, !tbaa !182
  %i.mj = getelementptr inbounds nuw [24 x i8], ptr %i.mi, i64 %i.mh ; 3 uses
  %i.mk = load i64, ptr %.sroa.0175.0275, align 8, !tbaa !114
  store i64 %i.mk, ptr %i.mj, align 8, !tbaa !114
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.0175.0275, i64 8
  %i.mm = load atomic ptr, ptr %i.ml seq_cst, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  store atomic ptr %i.mm, ptr %i.mn seq_cst, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %i.mp = load <2 x i32>, ptr %i.me, align 8, !tbaa !3
  store <2 x i32> %i.mp, ptr %i.mo, align 8, !tbaa !3
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.0175.0275, i64 24 ; 2 uses
  %.not234 = icmp eq ptr %i.mq, %i.kc
  br i1 %.not234, label %._crit_edge277, label %.lr.ph276

bb.by:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %41, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit
  ret void

bb.bz:                                            ; preds = %bb.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  %.pn45.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157 ], [ %i.ly, %bb.bx ]
  call void @_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %29) #5
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ae, %bb.bz
  %.pn45.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn.pn.pn.pn, %bb.bz ], [ %i.ed, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #5
  %.pre281 = load ptr, ptr %28, align 8, !tbaa !182 ; 3 uses
  %.not.i.i.i167 = icmp eq ptr %.pre281, null
  br i1 %.not.i.i.i167, label %_ZNSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EED2Ev.exit168, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.mr = load ptr, ptr %i.cr, align 8, !tbaa !183
  %i.ms = ptrtoint ptr %i.mr to i64
  %i.mt = ptrtoint ptr %.pre281 to i64
  %i.mu = sub i64 %i.ms, %i.mt
  call void @_ZdlPvm(ptr noundef nonnull %.pre281, i64 noundef %i.mu) #46
  br label %_ZNSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EED2Ev.exit168

_ZNSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EED2Ev.exit168: ; preds = %.thread, %bb.ca, %bb.cb
  %.pn45.pn.pn.pn.pn.pn.pn.pn353 = phi { ptr, i32 } [ %i.ec, %.thread ], [ %.pn45.pn.pn.pn.pn.pn.pn, %bb.ca ], [ %.pn45.pn.pn.pn.pn.pn.pn, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #5
  br label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EED2Ev.exit168, %bb.ad
  %.pn45.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn.pn.pn.pn.pn.pn353, %_ZNSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EED2Ev.exit168 ], [ %i.eb, %bb.ad ] ; 2 uses
  %i.mv = load ptr, ptr %24, align 8, !tbaa !36   ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.mx = icmp eq ptr %i.mv, %i.mw
  br i1 %i.mx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169: ; preds = %bb.cc
  %i.my = load i64, ptr %i.mw, align 8, !tbaa !39
  %i.mz = add i64 %i.my, 1
  call void @_ZdlPvm(ptr noundef %i.mv, i64 noundef %i.mz) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %.pn45.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ], [ %.pn45.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169 ], [ %.pn45.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #5
  br label %bb.cd

bb.cd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, %bb.x
  %.pn45.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn45.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171 ], [ %i.cc, %bb.x ]
  %i.na = load ptr, ptr %22, align 8, !tbaa !36   ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.nc = icmp eq ptr %i.na, %i.nb
  br i1 %i.nc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %bb.cd
  %i.nd = load i64, ptr %i.nb, align 8, !tbaa !39
  %i.ne = add i64 %i.nd, 1
  call void @_ZdlPvm(ptr noundef %i.na, i64 noundef %i.ne) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #5
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %21) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #5
  resume { ptr, i32 } %.pn45.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare noundef ptr @_ZNK11OpenImageIO4v3_19ImageSpec14find_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, i64, i1 noundef zeroext) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !266    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !267  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.e, %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !268 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsEEclEPS3_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 64) #46
  br label %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsEEclEPS3_.exit.i.i.i.i, %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !269

_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !266
  br label %_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.f = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !270
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #46
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !271    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !272  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.e, %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !181 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZNKSt14default_deleteIN11OpenImageIO4v3_19ImageSpecEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %.05.i.i, ptr noundef nonnull %i.d)
  br label %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !273

_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !271
  br label %_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.f = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !274
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #46
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !275    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !276  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %.05.i.i) #5
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 128 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !277

_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !275
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoES3_EvT_S5_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !278
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #46
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoES3_EvT_S5_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN11OpenImageIO4v3_114ImageCacheFileD2Ev(ptr noundef nonnull align 8 dereferenceable(400) %0) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_114ImageCacheFile9read_tileEPNS0_23ImageCachePerThreadInfoERKNS0_6TileIDEPv:bb.a
bb.bd:                                            ; preds = %bb.bc
  %i.ik = add nsw i32 %i.ib, -1
  store i32 %i.ik, ptr %i.hy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.be:                                            ; preds = %bb.bc
  %i.il = atomicrmw volatile add ptr %i.hy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.be, %bb.bd
  %.0.i.i.i.i = phi i32 [ %i.ib, %bb.bd ], [ %i.il, %bb.be ]
  %i.im = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.im, label %bb.bf, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !190

bb.bf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hx) #5
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.az, %bb.bb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %bb.bh

bb.bg:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %bb.ay, %bb.h
  %.pn100 = phi { ptr, i32 } [ %i.ah, %bb.h ], [ %.pn95.pn, %bb.ay ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  resume { ptr, i32 } %.pn100

bb.bh:                                            ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.d
  %.1 = phi i1 [ %i.ab, %bb.d ], [ %.0, %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheFile13read_unmippedEPNS0_23ImageCachePerThreadInfoERKNS0_6TileIDEPv(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 6 uses
  %5 = alloca %"class.OpenImageIO::v3_1::ImageSpec", align 8 ; 14 uses
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf", align 8 ; 8 uses
  %7 = alloca %"class.OpenImageIO::v3_1::intrusive_ptr", align 8 ; 7 uses
  %8 = alloca %"class.OpenImageIO::v3_1::intrusive_ptr", align 8 ; 7 uses
  %9 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !581  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !579  ; 2 uses
  %i.e = load i32, ptr %2, align 8, !tbaa !582
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !583
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.i = load i16, ptr %i.h, align 4, !tbaa !585  ; 2 uses
  %i.j = sext i16 %i.i to i32                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.l = load i16, ptr %i.k, align 2, !tbaa !586  ; 2 uses
  %i.m = sext i16 %i.l to i32                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !587
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.q = sext i32 %i.b to i64                     ; 2 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !275
  %i.s = getelementptr inbounds nuw [128 x i8], ptr %i.r, i64 %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.0.0.copyload.i = load i64, ptr %i.t, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !275
  %i.w = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %i.q ; 3 uses
  %i.x = sext i32 %i.d to i64
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !374
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.y, i64 %i.x
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !74  ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 120 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = select i1 %.not.i, ptr %i.ac, ptr %i.aa ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !105 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 52 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !104 ; 3 uses
  %i.ai = sub nsw i32 %i.m, %i.j                  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @_ZN11OpenImageIO4v3_19ImageSpecC1EiiiNS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %5, i32 noundef %i.af, i32 noundef %i.ah, i32 noundef %i.ai, i64 267) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  invoke void @_ZN11OpenImageIO4v3_18ImageBufC1ERKNS0_9ImageSpecENS0_16InitializePixelsE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(160) %5, i32 noundef 1)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.aj = load i32, ptr %i.ad, align 4, !tbaa !92
  %i.ak = sub nsw i32 %i.e, %i.aj                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !94
  %i.an = sub nsw i32 %i.g, %i.am                 ; 2 uses
  %i.ao = load i32, ptr %i.ae, align 4, !tbaa !105 ; 2 uses
  %i.ap = srem i32 %i.ak, %i.ao
  %i.aq = sub nsw i32 %i.ak, %i.ap                ; 4 uses
  %i.ar = add nsw i32 %i.aq, %i.ao
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 36 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !99
  %i.au = call i32 @llvm.smin.i32(i32 %i.at, i32 %i.ar) ; 2 uses
  %i.av = load i32, ptr %i.ag, align 4, !tbaa !104 ; 2 uses
  %i.aw = srem i32 %i.an, %i.av
  %i.ax = sub nsw i32 %i.an, %i.aw                ; 4 uses
  %i.ay = add nsw i32 %i.ax, %i.av
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 40 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !101
  %i.bb = call i32 @llvm.smin.i32(i32 %i.ba, i32 %i.ay) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !599 ; 3 uses
  store ptr %i.bd, ptr %7, align 8, !tbaa !599
  %.not.i115 = icmp eq ptr %i.bd, null
  br i1 %.not.i115, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEC2ERKS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.be = atomicrmw add ptr %i.bd, i32 1 seq_cst, align 4 ; 0 uses
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEC2ERKS3_.exit

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEC2ERKS3_.exit: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !599 ; 3 uses
  store ptr %i.bg, ptr %8, align 8, !tbaa !599
  %.not.i116 = icmp eq ptr %i.bg, null
  br i1 %.not.i116, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEC2ERKS3_.exit117, label %bb.d

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEC2ERKS3_.exit
  %i.bh = atomicrmw add ptr %i.bg, i32 1 seq_cst, align 4 ; 0 uses
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEC2ERKS3_.exit117

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEC2ERKS3_.exit117: ; preds = %bb.d, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEC2ERKS3_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !289, !nonnull !290, !align !291
  %i.bk = load ptr, ptr %i.ab, align 8, !tbaa !298
  %i.bl = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.bk, i1 noundef zeroext false) #5
  %i.bm = shl nsw i64 %i.bl, 1                    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 40 ; 2 uses
  br label %_ZNSt13__atomic_baseIxE21compare_exchange_weakERxxSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseIxE21compare_exchange_weakERxxSt12memory_orderS2_.exit.i: ; preds = %bb.e, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEC2ERKS3_.exit117
  %i.bo = load atomic i64, ptr %i.bn seq_cst, align 8 ; 2 uses
  %.not.i.i = icmp slt i64 %i.bo, %i.bm
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt13__atomic_baseIxE21compare_exchange_weakERxxSt12memory_orderS2_.exit.i
  %i.bp = cmpxchg weak ptr %i.bn, i64 %i.bo, i64 %i.bm seq_cst seq_cst, align 8
  %i.bq = extractvalue { i64, i1 } %i.bp, 1
  br i1 %i.bq, label %bb.f, label %_ZNSt13__atomic_baseIxE21compare_exchange_weakERxxSt12memory_orderS2_.exit.i

bb.f:                                             ; preds = %_ZNSt13__atomic_baseIxE21compare_exchange_weakERxxSt12memory_orderS2_.exit.i, %bb.e
  %i.br = add nsw i32 %i.d, -1                    ; 2 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = load ptr, ptr %i.w, align 8, !tbaa !374
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !74 ; 2 uses
  %.not.i118 = icmp eq ptr %i.bv, null
  %i.bw = load ptr, ptr %i.ab, align 8
  %i.bx = select i1 %.not.i118, ptr %i.bw, ptr %i.bv ; 2 uses
  %.not = icmp eq i16 %i.l, %i.i
  br i1 %.not, label %..thread_crit_edge, label %bb.g

..thread_crit_edge:                               ; preds = %bb.f
  %.pre = sext i32 %i.ai to i64
  br label %.thread

bb.g:                                             ; preds = %bb.f
  %i.by = shl nsw i32 %i.ai, 2
  %i.bz = sext i32 %i.by to i64
  %i.ca = shl nsw i64 %i.bz, 2
  %i.cb = alloca i8, i64 %i.ca, align 16
  %i.cc = sext i32 %i.ai to i64                   ; 2 uses
  %i.cd = shl nsw i64 %i.cc, 2
  %i.ce = alloca i8, i64 %i.cd, align 16
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.g
  %.pre-phi = phi i64 [ %.pre, %..thread_crit_edge ], [ %i.cc, %bb.g ] ; 2 uses
  %i.cf = phi ptr [ null, %..thread_crit_edge ], [ %i.cb, %bb.g ] ; 6 uses
  %i.cg = phi ptr [ null, %..thread_crit_edge ], [ %i.ce, %bb.g ] ; 3 uses
  %.not105.not160 = icmp slt i32 %i.ax, %i.bb
  br i1 %.not105.not160, label %.lr.ph163, label %._crit_edge164

.lr.ph163:                                        ; preds = %.thread
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %.not106.not157 = icmp slt i32 %i.aq, %i.au
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 36
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %.pre-phi ; 2 uses
  %i.ck = shl nsw i32 %i.ai, 1
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.cl ; 2 uses
  %i.cn = mul nsw i32 %i.ai, 3
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.co ; 2 uses
  %i.cq = icmp sgt i32 %i.ai, 0
  %wide.trip.count.i = zext i32 %i.ai to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %i.ai, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %bb.i

._crit_edge164.loopexit:                          ; preds = %._crit_edge
  %10 = trunc nuw i8 %.199.lcssa to i1
  br label %._crit_edge164

._crit_edge164:                                   ; preds = %._crit_edge164.loopexit, %.thread
  %.098.lcssa = phi i1 [ true, %.thread ], [ %10, %._crit_edge164.loopexit ]
  store i32 0, ptr %9, align 8, !tbaa !597
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %i.af, ptr %i.cr, align 4, !tbaa !600
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.cs, align 8, !tbaa !601
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %i.ah, ptr %i.ct, align 4, !tbaa !602
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 0, ptr %i.cu, align 8, !tbaa !603
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 1, ptr %i.cv, align 4, !tbaa !604
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 0, ptr %i.cw, align 8, !tbaa !605
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 28
  store i32 %i.ai, ptr %i.cx, align 4, !tbaa !606
  %.sroa.01.0.copyload = load i64, ptr %4, align 8 ; 3 uses
  %i.cy = mul i32 %i.af, %i.ai
  %i.cz = mul i32 %i.cy, %i.ah
  %i.da = sext i32 %i.cz to i64
  %i.db = lshr i64 %.sroa.01.0.copyload, 32
  %i.dc = trunc nuw i64 %i.db to i32
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.dc, i32 1)
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.dd = lshr i64 %.sroa.01.0.copyload, 8
  %i.de = and i64 %i.dd, 255
  %i.df = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %4) #5
  %i.dg = mul nsw i64 %i.de, %i.da
  %i.dh = mul i64 %i.dg, %i.df
  %i.di = mul i64 %i.dh, %spec.select.i
  %i.dj = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf10get_pixelsENS0_3ROIENS0_8TypeDescENS0_4spanISt4byteLm18446744073709551615EEEPvlll(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %9, i64 %.sroa.01.0.copyload, ptr %3, i64 %i.di, ptr noundef null, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808)
          to label %bb.m unwind label %bb.ae      ; 0 uses

bb.h:                                             ; preds = %bb.a
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.i:                                             ; preds = %.lr.ph163, %._crit_edge
  %.098162 = phi i8 [ 1, %.lr.ph163 ], [ %.199.lcssa, %._crit_edge ] ; 2 uses
  %.0100161 = phi i32 [ %i.ax, %.lr.ph163 ], [ %i.ea, %._crit_edge ] ; 3 uses
  %i.dl = sitofp i32 %.0100161 to float
  %i.dm = fadd nnan float %i.dl, 5.000000e-01
  %i.dn = load i32, ptr %i.az, align 4, !tbaa !101
  %i.do = sitofp i32 %i.dn to float
  %i.dp = fdiv float %i.dm, %i.do
  %i.dq = load i32, ptr %i.ch, align 4, !tbaa !101
  %i.dr = sitofp i32 %i.dq to float
  %i.ds = fmul float %i.dp, %i.dr
  %i.dt = fadd float %i.ds, -5.000000e-01         ; 2 uses
  %i.du = call noundef float @llvm.floor.f32(float %i.dt) ; 2 uses
  %i.dv = fptosi float %i.du to i32               ; 2 uses
  %i.dw = fsub float %i.dt, %i.du                 ; 3 uses
  br i1 %.not106.not157, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %i.dx = add nsw i32 %i.dv, 2
  %i.dy = fsub float 1.000000e+00, %i.dw          ; 2 uses
  %i.dz = sub nsw i32 %.0100161, %i.ax
  %11 = icmp ne i8 %.098162, 0
  %broadcast.splatinsert194 = insertelement <4 x float> poison, float %i.dw, i64 0
  %broadcast.splat195 = shufflevector <4 x float> %broadcast.splatinsert194, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert196 = insertelement <4 x float> poison, float %i.dy, i64 0
  %broadcast.splat197 = shufflevector <4 x float> %broadcast.splatinsert196, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.j

._crit_edge.loopexit:                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiNS0_4spanIKfLm18446744073709551615EEE.exit
  %12 = zext i1 %i.ft to i8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.i
  %.199.lcssa = phi i8 [ %.098162, %bb.i ], [ %12, %._crit_edge.loopexit ] ; 2 uses
  %i.ea = add nsw i32 %.0100161, 1                ; 2 uses
  %.not105.not = icmp slt i32 %i.ea, %i.bb
  br i1 %.not105.not, label %bb.i, label %._crit_edge164.loopexit, !llvm.loop !607

bb.j:                                             ; preds = %.lr.ph, %_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiNS0_4spanIKfLm18446744073709551615EEE.exit
  %.199159 = phi i1 [ %11, %.lr.ph ], [ %i.ft, %_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiNS0_4spanIKfLm18446744073709551615EEE.exit ]
  %.0101158 = phi i32 [ %i.aq, %.lr.ph ], [ %i.fu, %_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiNS0_4spanIKfLm18446744073709551615EEE.exit ] ; 3 uses
  %i.eb = sitofp i32 %.0101158 to float
  %i.ec = fadd nnan float %i.eb, 5.000000e-01
  %i.ed = load i32, ptr %i.as, align 4, !tbaa !99
  %i.ee = sitofp i32 %i.ed to float
  %i.ef = fdiv float %i.ec, %i.ee
  %i.eg = load i32, ptr %i.ci, align 4, !tbaa !99
  %i.eh = sitofp i32 %i.eg to float
  %i.ei = fmul float %i.ef, %i.eh
  %i.ej = fadd float %i.ei, -5.000000e-01         ; 2 uses
  %i.ek = call noundef float @llvm.floor.f32(float %i.ej) ; 2 uses
  %i.el = fptosi float %i.ek to i32               ; 2 uses
  %i.em = fsub float %i.ej, %i.ek                 ; 4 uses
  %i.en = load ptr, ptr %i.bi, align 8, !tbaa !289, !nonnull !290, !align !291
  %i.eo = add nsw i32 %i.el, 2
  %i.ep = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheImpl10get_pixelsEPNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoEiiiiiiiiiiNS0_8TypeDescEPvlllii(ptr noundef nonnull align 64 dereferenceable(25240) %i.en, ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.b, i32 noundef %i.br, i32 noundef %i.el, i32 noundef %i.eo, i32 noundef %i.dv, i32 noundef %i.dx, i32 noundef 0, i32 noundef 1, i32 noundef %i.j, i32 noundef %i.m, i64 267, ptr noundef %i.cf, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808, i64 noundef -9223372036854775808, i32 noundef 0, i32 noundef -1)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.eq = fsub float 1.000000e+00, %i.em          ; 3 uses
  br i1 %i.cq, label %.lr.ph.i.preheader, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit

.lr.ph.i.preheader:                               ; preds = %bb.k
  br i1 %min.iters.check, label %.lr.ph.i.preheader201, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.em, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert192 = insertelement <4 x float> poison, float %i.eq, i64 0
  %broadcast.splat193 = shufflevector <4 x float> %broadcast.splatinsert192, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %index
  %wide.load = load <4 x float>, ptr %i.er, align 16, !tbaa !32
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %index
  %wide.load198 = load <4 x float>, ptr %i.es, align 4, !tbaa !32
  %i.et = fmul <4 x float> %broadcast.splat, %wide.load198
  %i.eu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat193, <4 x float> %i.et)
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %index
  %wide.load199 = load <4 x float>, ptr %i.ev, align 8, !tbaa !32
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %index
  %wide.load200 = load <4 x float>, ptr %i.ew, align 4, !tbaa !32
  %i.ex = fmul <4 x float> %broadcast.splat, %wide.load200
  %i.ey = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load199, <4 x float> %broadcast.splat193, <4 x float> %i.ex)
  %i.ez = fmul <4 x float> %broadcast.splat195, %i.ey
  %i.fa = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat197, <4 x float> %i.eu, <4 x float> %i.ez)
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %index
  store <4 x float> %i.fa, ptr %i.fb, align 16, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fc = icmp eq i64 %index.next, %n.vec
  br i1 %i.fc, label %middle.block, label %vector.body, !llvm.loop !608

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader201

.lr.ph.i.preheader201:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader201, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader201 ] ; 6 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.i
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !32
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.i
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !32
  %i.fh = fmul float %i.em, %i.fg
  %i.fi = call float @llvm.fmuladd.f32(float %i.fe, float %i.eq, float %i.fh)
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.i
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !32
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv.i
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !32
  %i.fn = fmul float %i.em, %i.fm
  %i.fo = call float @llvm.fmuladd.f32(float %i.fk, float %i.eq, float %i.fn)
  %i.fp = fmul float %i.dw, %i.fo
  %i.fq = call float @llvm.fmuladd.f32(float %i.dy, float %i.fi, float %i.fp)
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.i
  store float %i.fq, ptr %i.fr, align 4, !tbaa !32
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i, !llvm.loop !609

_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.k
  %i.fs = sub nsw i32 %.0101158, %i.aq
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiiNS0_4spanIKfLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef %i.fs, i32 noundef %i.dz, i32 noundef 0, ptr %i.cg, i64 %.pre-phi)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiNS0_4spanIKfLm18446744073709551615EEE.exit unwind label %bb.l

_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiNS0_4spanIKfLm18446744073709551615EEE.exit: ; preds = %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit
  %i.ft = select i1 %i.ep, i1 %.199159, i1 false  ; 2 uses
  %i.fu = add nsw i32 %.0101158, 1                ; 2 uses
  %.not106.not = icmp slt i32 %i.fu, %i.au
  br i1 %.not106.not, label %bb.j, label %._crit_edge.loopexit, !llvm.loop !610

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, %bb.j
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.m:                                             ; preds = %._crit_edge164
  %i.fw = load ptr, ptr %7, align 8, !tbaa !599   ; 3 uses
  %.not.i.i119 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i119, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEC2ERKS3_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fx = atomicrmw add ptr %i.fw, i32 1 seq_cst, align 4 ; 0 uses
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEC2ERKS3_.exit.i

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEC2ERKS3_.exit.i: ; preds = %bb.n, %bb.m
  %i.fy = load ptr, ptr %i.bc, align 8, !tbaa !599 ; 7 uses
  store ptr %i.fw, ptr %i.bc, align 8, !tbaa !599
  %.not.i2.i = icmp eq ptr %i.fy, null
  br i1 %.not.i2.i, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEaSERKS3_.exit, label %bb.o

bb.o:                                             ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEC2ERKS3_.exit.i
  %i.fz = atomicrmw sub ptr %i.fy, i32 1 seq_cst, align 4
  %i.ga = icmp eq i32 %i.fz, 1
  br i1 %i.ga, label %bb.p, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEaSERKS3_.exit

bb.p:                                             ; preds = %bb.o
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !587
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 272
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !289, !nonnull !290, !align !291 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fy, i64 56
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !611
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 25220
  %i.gi = atomicrmw sub ptr %i.gh, i32 1 seq_cst, align 4 ; 0 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 25200
  %i.gk = atomicrmw sub ptr %i.gj, i64 %i.gg seq_cst, align 8 ; 0 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fy, i64 77
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !619, !range !368, !noundef !290
  %i.gn = trunc nuw i8 %i.gm to i1
  br i1 %i.gn, label %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.go = getelementptr inbounds nuw i8, ptr %i.fy, i64 48
  %.pre.i.i.i.i = load ptr, ptr %i.go, align 8, !tbaa !114 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i.i) #46
  br label %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i.i

_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %bb.q, %bb.p
  call void @_ZdlPvm(ptr noundef nonnull %i.fy, i64 noundef 88) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEaSERKS3_.exit

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEaSERKS3_.exit: ; preds = %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i.i, %bb.o, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEC2ERKS3_.exit.i
  %i.gp = load ptr, ptr %8, align 8, !tbaa !599   ; 3 uses
  %.not.i.i120 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i120, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEC2ERKS3_.exit.i121, label %bb.r

bb.r:                                             ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEaSERKS3_.exit
  %i.gq = atomicrmw add ptr %i.gp, i32 1 seq_cst, align 4 ; 0 uses
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEC2ERKS3_.exit.i121

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEC2ERKS3_.exit.i121: ; preds = %bb.r, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEaSERKS3_.exit
  %i.gr = load ptr, ptr %i.bf, align 8, !tbaa !599 ; 7 uses
  store ptr %i.gp, ptr %i.bf, align 8, !tbaa !599
  %.not.i2.i122 = icmp eq ptr %i.gr, null
  br i1 %.not.i2.i122, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEaSERKS3_.exit127, label %bb.s

bb.s:                                             ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEC2ERKS3_.exit.i121
  %i.gs = atomicrmw sub ptr %i.gr, i32 1 seq_cst, align 4
  %i.gt = icmp eq i32 %i.gs, 1
  br i1 %i.gt, label %bb.t, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEaSERKS3_.exit127

bb.t:                                             ; preds = %bb.s
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 40
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !587
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 272
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !289, !nonnull !290, !align !291 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gr, i64 56
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !611
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 25220
  %i.hb = atomicrmw sub ptr %i.ha, i32 1 seq_cst, align 4 ; 0 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 25200
  %i.hd = atomicrmw sub ptr %i.hc, i64 %i.gz seq_cst, align 8 ; 0 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.gr, i64 77
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !619, !range !368, !noundef !290
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i.i126, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gr, i64 48
  %.pre.i.i.i.i123 = load ptr, ptr %i.hh, align 8, !tbaa !114 ; 2 uses
  %.not.i.i.i.i.i124 = icmp eq ptr %.pre.i.i.i.i123, null
  br i1 %.not.i.i.i.i.i124, label %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i.i126, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i125

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i125: ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i.i123) #46
  br label %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i.i126

_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i.i126: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i125, %bb.u, %bb.t
  call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef 88) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEaSERKS3_.exit127

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEaSERKS3_.exit127: ; preds = %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i.i126, %bb.s, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEC2ERKS3_.exit.i121
  %i.hi = load ptr, ptr %8, align 8, !tbaa !599   ; 7 uses
  %.not.i128 = icmp eq ptr %i.hi, null
  br i1 %.not.i128, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEaSERKS3_.exit127
  %i.hj = atomicrmw sub ptr %i.hi, i32 1 seq_cst, align 4
  %i.hk = icmp eq i32 %i.hj, 1
  br i1 %i.hk, label %bb.w, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit

bb.w:                                             ; preds = %bb.v
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 40
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !587
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 272
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !289, !nonnull !290, !align !291 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hi, i64 56
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !611
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 25220
  %i.hs = atomicrmw sub ptr %i.hr, i32 1 seq_cst, align 4 ; 0 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 25200
  %i.hu = atomicrmw sub ptr %i.ht, i64 %i.hq seq_cst, align 8 ; 0 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hi, i64 77
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !619, !range !368, !noundef !290
  %i.hx = trunc nuw i8 %i.hw to i1
  br i1 %i.hx, label %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hi, i64 48
  %.pre.i.i.i = load ptr, ptr %i.hy, align 8, !tbaa !114 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %bb.x
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i) #46
  br label %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i

_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %bb.x, %bb.w
  call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef 88) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit: ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEEaSERKS3_.exit127, %bb.v, %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  %i.hz = load ptr, ptr %7, align 8, !tbaa !599   ; 7 uses
  %.not.i129 = icmp eq ptr %i.hz, null
  br i1 %.not.i129, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit134, label %bb.y

bb.y:                                             ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit
  %i.ia = atomicrmw sub ptr %i.hz, i32 1 seq_cst, align 4
  %i.ib = icmp eq i32 %i.ia, 1
  br i1 %i.ib, label %bb.z, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit134

bb.z:                                             ; preds = %bb.y
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 40
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !587
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 272
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !289, !nonnull !290, !align !291 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hz, i64 56
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !611
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 25220
  %i.ij = atomicrmw sub ptr %i.ii, i32 1 seq_cst, align 4 ; 0 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.if, i64 25200
  %i.il = atomicrmw sub ptr %i.ik, i64 %i.ih seq_cst, align 8 ; 0 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.hz, i64 77
  %i.in = load i8, ptr %i.im, align 1, !tbaa !619, !range !368, !noundef !290
  %i.io = trunc nuw i8 %i.in to i1
  br i1 %i.io, label %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i133, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hz, i64 48
  %.pre.i.i.i130 = load ptr, ptr %i.ip, align 8, !tbaa !114 ; 2 uses
  %.not.i.i.i.i131 = icmp eq ptr %.pre.i.i.i130, null
  br i1 %.not.i.i.i.i131, label %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i133, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i132

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i132: ; preds = %bb.aa
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i130) #46
  br label %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i133

_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i133: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i132, %bb.aa, %bb.z
  call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef 88) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit134

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit134: ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit, %bb.y, %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  %i.iq = getelementptr inbounds nuw i8, ptr %5, i64 136 ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !387 ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !386 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ir, %i.it
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit134, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.iu, %.lr.ph.i.i.i.i ], [ %i.ir, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit134 ] ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a
  %i.fv = sub i64 %i.ft, %i.fu                    ; 3 uses
  %i.fw = icmp eq i64 %i.fv, 9223372036854775800
  br i1 %i.fw, label %bb.m, label %_ZNKSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #48
          to label %.noexc668 unwind label %.loopexit.split-lp1188

.noexc668:                                        ; preds = %bb.m
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.l
  %i.fx = ashr exact i64 %i.fv, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.fx, i64 1)
  %i.fy = add nsw i64 %.sroa.speculated.i.i, %i.fx ; 2 uses
  %i.fz = icmp ult i64 %i.fy, %i.fx
  %i.ga = call i64 @llvm.umin.i64(i64 %i.fy, i64 1152921504606846975)
  %i.gb = select i1 %i.fz, i64 1152921504606846975, i64 %i.ga ; 3 uses
  %.not.i.i665 = icmp ne i64 %i.gb, 0
  call void @llvm.assume(i1 %.not.i.i665)
  %i.gc = shl nuw nsw i64 %i.gb, 3
  %i.gd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #47
          to label %.noexc669 unwind label %.loopexit1187 ; 10 uses

.noexc669:                                        ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.fv
  %i.gf = load ptr, ptr %i.fl, align 8, !tbaa !553 ; 3 uses
  store ptr %i.gf, ptr %i.ge, align 8, !tbaa !553
  %.not.i26.i = icmp eq ptr %i.gf, null
  br i1 %.not.i26.i, label %_ZNSt16allocator_traitsISaIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEEEE9constructIS4_JRKS4_EEEvRS5_PT_DpOT0_.exit.i, label %bb.n

bb.n:                                             ; preds = %.noexc669
  %i.gg = atomicrmw add ptr %i.gf, i32 1 seq_cst, align 4 ; 0 uses
  br label %_ZNSt16allocator_traitsISaIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEEEE9constructIS4_JRKS4_EEEvRS5_PT_DpOT0_.exit.i

_ZNSt16allocator_traitsISaIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEEEE9constructIS4_JRKS4_EEEvRS5_PT_DpOT0_.exit.i: ; preds = %bb.n, %.noexc669
  %.not10.i.i.i.i = icmp eq ptr %i.fs, %i.fm
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i, label %.lr.ph.i.i.i.i666.preheader

.lr.ph.i.i.i.i666.preheader:                      ; preds = %_ZNSt16allocator_traitsISaIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEEEE9constructIS4_JRKS4_EEEvRS5_PT_DpOT0_.exit.i
  %i.gh = add i64 %i.ft, -8
  %i.gi = sub i64 %i.gh, %i.fu                    ; 2 uses
  %i.gj = lshr i64 %i.gi, 3
  %i.gk = add nuw nsw i64 %i.gj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.gi, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i666.preheader1701, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i666.preheader
  %scevgep = getelementptr i8, ptr %i.gd, i64 8
  %i.gl = add i64 %i.ft, -8
  %i.gm = sub i64 %i.gl, %i.fu
  %i.gn = and i64 %i.gm, -8                       ; 2 uses
  %scevgep1691 = getelementptr i8, ptr %scevgep, i64 %i.gn
  %scevgep1692 = getelementptr i8, ptr %i.fs, i64 8
  %scevgep1693 = getelementptr i8, ptr %scevgep1692, i64 %i.gn
  %bound0 = icmp ult ptr %i.gd, %scevgep1693
  %bound1 = icmp ult ptr %i.fs, %scevgep1691
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i666.preheader1701, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gk, 4611686018427387900     ; 3 uses
  %i.go = shl i64 %n.vec, 3                       ; 2 uses
  %i.gp = getelementptr i8, ptr %i.gd, i64 %i.go  ; 2 uses
  %i.gq = getelementptr i8, ptr %i.fs, i64 %i.go
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gr = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gd, i64 %i.gr ; 2 uses
  %next.gep1694 = getelementptr i8, ptr %i.fs, i64 %i.gr ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !797)
  call void @llvm.experimental.noalias.scope.decl(metadata !800)
  %i.gs = getelementptr i8, ptr %next.gep1694, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep1694, align 8, !tbaa !553, !alias.scope !802, !noalias !797
  %wide.load1695 = load <2 x ptr>, ptr %i.gs, align 8, !tbaa !553, !alias.scope !802, !noalias !797
  %i.gt = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !553, !alias.scope !805, !noalias !802
  store <2 x ptr> %wide.load1695, ptr %i.gt, align 8, !tbaa !553, !alias.scope !805, !noalias !802
  store <2 x ptr> splat (ptr null), ptr %next.gep1694, align 8, !tbaa !553, !alias.scope !802, !noalias !797
  store <2 x ptr> splat (ptr null), ptr %i.gs, align 8, !tbaa !553, !alias.scope !802, !noalias !797
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gu = icmp eq i64 %index.next, %n.vec
  br i1 %i.gu, label %middle.block, label %vector.body, !llvm.loop !807

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gk, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i, label %.lr.ph.i.i.i.i666.preheader1701

.lr.ph.i.i.i.i666.preheader1701:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i666.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.gd, %vector.memcheck ], [ %i.gd, %.lr.ph.i.i.i.i666.preheader ], [ %i.gp, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.fs, %vector.memcheck ], [ %i.fs, %.lr.ph.i.i.i.i666.preheader ], [ %i.gq, %middle.block ]
  br label %.lr.ph.i.i.i.i666

.lr.ph.i.i.i.i666:                                ; preds = %.lr.ph.i.i.i.i666.preheader1701, %.lr.ph.i.i.i.i666
  %.012.i.i.i.i = phi ptr [ %i.gx, %.lr.ph.i.i.i.i666 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i666.preheader1701 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.gw, %.lr.ph.i.i.i.i666 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i666.preheader1701 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !797)
  call void @llvm.experimental.noalias.scope.decl(metadata !800)
  %i.gv = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !553, !alias.scope !800, !noalias !797
  store ptr %i.gv, ptr %.012.i.i.i.i, align 8, !tbaa !553, !alias.scope !797, !noalias !800
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !553, !alias.scope !800, !noalias !797
  %i.gw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i667 = icmp eq ptr %i.gw, %i.fm
  br i1 %.not.i.i.i.i667, label %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i, label %.lr.ph.i.i.i.i666, !llvm.loop !808

_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i: ; preds = %.lr.ph.i.i.i.i666, %middle.block, %_ZNSt16allocator_traitsISaIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEEEE9constructIS4_JRKS4_EEEvRS5_PT_DpOT0_.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.gd, %_ZNSt16allocator_traitsISaIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEEEE9constructIS4_JRKS4_EEEvRS5_PT_DpOT0_.exit.i ], [ %i.gp, %middle.block ], [ %i.gx, %.lr.ph.i.i.i.i666 ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i34.i = icmp eq ptr %i.fs, null
  br i1 %.not.i34.i, label %.noexc, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i
  %i.gz = load ptr, ptr %i.fe, align 8, !tbaa !795
  %i.ha = ptrtoint ptr %i.gz to i64
  %i.hb = sub i64 %i.ha, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.hb) #46
  br label %.noexc

.noexc:                                           ; preds = %bb.o, %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i
  store ptr %i.gd, ptr %17, align 8, !tbaa !796
  store ptr %i.gy, ptr %i.fd, align 8, !tbaa !792
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.gb
  store ptr %i.hc, ptr %i.fe, align 8, !tbaa !795
  br label %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backERKS4_.exit: ; preds = %.noexc, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEC2ERKS3_.exit.i
  %i.hd = load ptr, ptr %i.fl, align 8, !tbaa !553 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 216
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !490
  %i.hg = load i64, ptr %i.b, align 8, !tbaa !201
  %i.hh = add i64 %i.hg, %i.hf
  store i64 %i.hh, ptr %i.b, align 8, !tbaa !201
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hd, i64 184
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !754
  %i.hk = load i64, ptr %i.c, align 8, !tbaa !201
  %i.hl = add i64 %i.hk, %i.hj
  store i64 %i.hl, ptr %i.c, align 8, !tbaa !201
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hd, i64 200
  %i.hn = load atomic i64, ptr %i.hm seq_cst, align 8
  %i.ho = load i64, ptr %i.d, align 8, !tbaa !201
  %i.hp = add i64 %i.ho, %i.hn
  store i64 %i.hp, ptr %i.d, align 8, !tbaa !201
  %i.hq = load ptr, ptr %i.fl, align 8, !tbaa !553
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 208
  %i.hs = load atomic i64, ptr %i.hr seq_cst, align 8
  %i.ht = add i64 %i.hs, %.0149
  %i.hu = load ptr, ptr %i.fl, align 8, !tbaa !553 ; 5 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 192
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !755
  %i.hx = add i64 %i.hw, %.0
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hu, i64 224
  %i.hz = load <2 x double>, ptr %i.hy, align 8, !tbaa !71
  %i.ia = fadd <2 x double> %i.ff, %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hu, i64 336
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !675
  %.not290 = icmp eq ptr %i.ic, null
  br i1 %.not290, label %bb.p, label %bb.q

.loopexit1187:                                    ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit1189 = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp1188:                           ; preds = %bb.m
  %lpad.loopexit.split-lp1190 = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backERKS4_.exit
  %i.id = getelementptr inbounds nuw i8, ptr %i.hu, i64 80
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hu, i64 88
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !276
  %i.ig = load ptr, ptr %i.id, align 8, !tbaa !275 ; 4 uses
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = ptrtoint ptr %i.ig to i64
  %i.ij = sub i64 %i.ih, %i.ii                    ; 3 uses
  %i.ik = lshr exact i64 %i.ij, 7                 ; 3 uses
  %i.il = trunc i64 %i.ik to i32
  %i.im = icmp sgt i32 %i.il, 0
  br i1 %i.im, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.p
  %i.in = and i64 %i.ij, 274877906816
  %i.io = icmp eq i64 %i.in, 128
  br i1 %i.io, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ik, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.ip = and i64 %i.ij, 128
  %lcmp.mod.not = icmp eq i64 %i.ip, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.02021234.epil.init.a = phi i1 [ true, %.lr.ph.preheader ], [ %i.jg, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x i1> [ zeroinitializer, %.lr.ph.preheader ], [ %82, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod1716 = trunc i64 %i.ik to i1
  call void @llvm.assume(i1 %lcmp.mod1716)
  %i.iq = getelementptr inbounds nuw [128 x i8], ptr %i.ig, i64 %indvars.iv.epil.init ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 40
  %60 = zext <2 x i1> %.epil.init to <2 x i8>
  %61 = load <2 x i8>, ptr %i.ir, align 8, !tbaa !530
  %62 = or <2 x i8> %61, %60
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 45
  %i.it = load i8, ptr %i.is, align 1, !tbaa !364, !range !368, !noundef !290
  %63 = icmp ne i8 %i.it, 0
  %i.iu = and i1 %.02021234.epil.init.a, %63
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa1703 = phi <2 x i8> [ %81, %._crit_edge.loopexit.unr-lcssa ], [ %62, %.lr.ph.epil.preheader ]
  %.lcssa1702 = phi i1 [ %i.jg, %._crit_edge.loopexit.unr-lcssa ], [ %i.iu, %.lr.ph.epil.preheader ]
  %64 = trunc <2 x i8> %.lcssa1703 to <2 x i1>
  %i.iv = zext i1 %.lcssa1702 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.p
  %.0202.lcssa = phi i64 [ 1, %bb.p ], [ %i.iv, %._crit_edge.loopexit ]
  %65 = phi <2 x i1> [ zeroinitializer, %bb.p ], [ %64, %._crit_edge.loopexit ] ; 2 uses
  %66 = load i64, ptr %i.e, align 8, !tbaa !201
  %67 = extractelement <2 x i1> %65, i64 0
  %68 = zext i1 %67 to i64
  %i.iw = add i64 %66, %68
  store i64 %i.iw, ptr %i.e, align 8, !tbaa !201
  %i.ix = load i64, ptr %i.f, align 8, !tbaa !201
  %69 = extractelement <2 x i1> %65, i64 1
  %70 = zext i1 %69 to i64
  %i.iy = add i64 %i.ix, %70
  store i64 %i.iy, ptr %i.f, align 8, !tbaa !201
  br label %bb.q

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.02021234.a = phi i1 [ true, %.lr.ph.preheader.new ], [ %i.jg, %.lr.ph ]
  %71 = phi <2 x i1> [ zeroinitializer, %.lr.ph.preheader.new ], [ %82, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.iz = getelementptr inbounds nuw [128 x i8], ptr %i.ig, i64 %indvars.iv ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 40
  %72 = zext <2 x i1> %71 to <2 x i8>
  %73 = load <2 x i8>, ptr %i.ja, align 8, !tbaa !530
  %74 = or <2 x i8> %73, %72
  %75 = icmp ne <2 x i8> %74, zeroinitializer
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 45
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !364, !range !368, !noundef !290
  %76 = icmp ne i8 %i.jc, 0
  %77 = and i1 %.02021234.a, %76
  %78 = getelementptr inbounds nuw [128 x i8], ptr %i.ig, i64 %indvars.iv ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %78, i64 168
  %79 = zext <2 x i1> %75 to <2 x i8>
  %80 = load <2 x i8>, ptr %i.jd, align 8, !tbaa !530
  %81 = or <2 x i8> %80, %79                      ; 2 uses
  %82 = icmp ne <2 x i8> %81, zeroinitializer     ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %78, i64 173
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !364, !range !368, !noundef !290
  %83 = icmp ne i8 %i.jf, 0
  %i.jg = and i1 %77, %83                         ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !809

bb.q:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backERKS4_.exit, %._crit_edge
  %.sink = phi ptr [ %i.h, %._crit_edge ], [ %i.g, %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backERKS4_.exit ] ; 2 uses
  %.0202.lcssa.sink = phi i64 [ %.0202.lcssa, %._crit_edge ], [ 1, %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backERKS4_.exit ]
  %i.jh = load i64, ptr %.sink, align 8, !tbaa !201
  %i.ji = add i64 %i.jh, %.0202.lcssa.sink
  store i64 %i.ji, ptr %.sink, align 8, !tbaa !201
  invoke void @_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorppEv(ptr noundef nonnull align 8 dereferenceable(25) %18)
          to label %bb.g unwind label %bb.r, !llvm.loop !810

bb.r:                                             ; preds = %bb.q
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.loopexit1187, %.loopexit.split-lp1188, %bb.r
  %.pn291 = phi { ptr, i32 } [ %i.jj, %bb.r ], [ %lpad.loopexit1189, %.loopexit1187 ], [ %lpad.loopexit.split-lp1190, %.loopexit.split-lp1188 ] ; 3 uses
  %i.jk = load ptr, ptr %18, align 8, !tbaa !532  ; 2 uses
  %.not.i.i306 = icmp eq ptr %i.jk, null
  br i1 %.not.i.i306, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorD2Ev.exit309, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.jl = load i32, ptr %i.fb, align 8, !tbaa !536 ; 2 uses
  %i.jm = icmp sgt i32 %i.jl, -1
  %i.jn = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.jo = load i8, ptr %i.jn, align 8, !range !368
  %i.jp = trunc nuw i8 %i.jo to i1
  %or.cond.i307 = select i1 %i.jm, i1 %i.jp, i1 false
  br i1 %or.cond.i307, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator6unlockEv.exit.i.i.i308, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorD2Ev.exit309

_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator6unlockEv.exit.i.i.i308: ; preds = %bb.t
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jk, i64 64
  %i.jr = zext nneg i32 %i.jl to i64
  %i.js = getelementptr inbounds nuw [128 x i8], ptr %i.jq, i64 %i.jr
  %i.jt = atomicrmw sub ptr %i.js, i32 1073741824 release, align 4 ; 0 uses
  br label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorD2Ev.exit309

_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorD2Ev.exit309: ; preds = %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator6unlockEv.exit.i.i.i308, %bb.t, %bb.s, %bb.h
  %.pn291.pn = phi { ptr, i32 } [ %i.fj, %bb.h ], [ %.pn291, %bb.s ], [ %.pn291, %bb.t ], [ %.pn291, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator6unlockEv.exit.i.i.i308 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #5
  br label %bb.nt

bb.u:                                             ; preds = %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorD2Ev.exit299
  %i.ju = load ptr, ptr %19, align 8, !tbaa !262
  %i.jv = getelementptr i8, ptr %i.ju, i64 -24
  %i.jw = load i64, ptr %i.jv, align 8
  %i.jx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.v unwind label %.loopexit.split-lp1180.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  %i.jy = getelementptr inbounds i8, ptr %19, i64 %i.jw
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %20, ptr noundef nonnull align 8 dereferenceable(264) %i.jy, ptr noundef nonnull align 8 dereferenceable(8) %i.jx)
          to label %bb.w unwind label %.loopexit.split-lp1180.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #5
  %i.jz = icmp sgt i32 %2, 0
  br i1 %i.jz, label %bb.x, label %.thread1138

bb.x:                                             ; preds = %bb.w
  %i.ka = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull @.str.108, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp1180.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.x
  %i.kb = atomicrmw xchg ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_124shared_image_cache_mutexE, i8 1 acquire, align 1
  %.0.in.i.not.i2.i.i = icmp eq i8 %i.kb, 0
  br i1 %.0.in.i.not.i2.i.i, label %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %.preheader.i.i.backedge
  %.sroa.0.1.i.i = phi i32 [ %.sroa.0.2.i.i, %.preheader.i.i.backedge ], [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ] ; 5 uses
  %.not.i.i.i = icmp sgt i32 %.sroa.0.1.i.i, 16
  br i1 %.not.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.preheader.i.i
  %i.kc = icmp sgt i32 %.sroa.0.1.i.i, 0
  br i1 %i.kc, label %.lr.ph.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.y, %.lr.ph.i.i.i.i
  %.03.i.i.i.i = phi i32 [ %i.kd, %.lr.ph.i.i.i.i ], [ 0, %bb.y ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !528
  %i.kd = add nuw nsw i32 %.03.i.i.i.i, 1         ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i32 %i.kd, %.sroa.0.1.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !529

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i:         ; preds = %.lr.ph.i.i.i.i, %bb.y
  %i.ke = shl nsw i32 %.sroa.0.1.i.i, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i

bb.z:                                             ; preds = %.preheader.i.i
  %i.kf = call noundef i32 @sched_yield() #5      ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i: ; preds = %bb.z, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i
  %.sroa.0.2.i.i = phi i32 [ %.sroa.0.1.i.i, %bb.z ], [ %i.ke, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i ]
  %i.kg = load volatile i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_124shared_image_cache_mutexE, align 1, !tbaa !530, !range !368, !noundef !290
  %i.kh = trunc nuw i8 %i.kg to i1
  br i1 %i.kh, label %.preheader.i.i.backedge, label %bb.aa

.preheader.i.i.backedge:                          ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i, %bb.aa
  br label %.preheader.i.i, !llvm.loop !531

bb.aa:                                            ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i
  %i.ki = atomicrmw xchg ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_124shared_image_cache_mutexE, i8 1 acquire, align 1
  %.0.in.i.not.i.i.i = icmp eq i8 %i.ki, 0
  br i1 %.0.in.i.not.i.i.i, label %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit, label %.preheader.i.i.backedge

_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit: ; preds = %bb.aa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.kj = load ptr, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_118shared_image_cacheE, align 8, !tbaa !811
  %i.kk = icmp eq ptr %1, %i.kj
  br i1 %i.kk, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit
  %i.kl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull @.str.109, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit312 unwind label %bb.ad ; 0 uses

bb.ac:                                            ; preds = %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorD2Ev.exit299
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %bb.ns

.loopexit1179:                                    ; preds = %.lr.ph.i.i.i.i564
  %lpad.loopexit1181 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp1180.loopexit:                  ; preds = %bb.gk
  %lpad.loopexit1184 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp1180.loopexit.split-lp:         ; preds = %bb.gl, %bb.gb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit317, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit315, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit312, %bb.x, %bb.hh, %bb.hc, %bb.ga, %bb.fz, %bb.v, %bb.u
  %lpad.loopexit.split-lp1185 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ad:                                            ; preds = %bb.ae, %bb.ab
  %i.kn = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_124shared_image_cache_mutexE release, align 1
  br label %.body

bb.ae:                                            ; preds = %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit
  %i.ko = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull %1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit312 unwind label %bb.ad ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit312: ; preds = %bb.ae, %bb.ab
  store atomic i8 0, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_124shared_image_cache_mutexE release, align 1
  %i.kp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull @.str.110, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit315 unwind label %.loopexit.split-lp1180.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit315: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit312
  %i.kq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull @.str.111, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit317 unwind label %.loopexit.split-lp1180.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit317: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit315
  %i.kr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull @.str.112, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit319 unwind label %.loopexit.split-lp1180.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit319: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit317
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #5
  %i.ks = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.ks, ptr %21, align 8, !tbaa !168
  %i.kt = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 15 uses
  store i64 0, ptr %i.kt, align 8, !tbaa !169
  store i8 0, ptr %i.ks, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #5
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.kv = load atomic i64, ptr %i.ku seq_cst, align 8
  %i.kw = sitofp i64 %i.kv to double
  %i.kx = fmul nnan double %i.kw, f0x3EB0000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #5, !noalias !814
  store double %i.kx, ptr %15, align 16, !noalias !814
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr nonnull @.str.113, i64 22, i64 10, ptr nonnull %15)
          to label %bb.af unwind label %bb.al

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit319
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #5, !noalias !814
  %i.ky = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !169 ; 2 uses
  %i.la = load i64, ptr %i.kt, align 8, !tbaa !169
  %i.lb = sub i64 4611686018427387903, %i.la
  %i.lc = icmp ult i64 %i.lb, %i.kz
  br i1 %i.lc, label %bb.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.334) #48
          to label %.noexc321 unwind label %bb.am

.noexc321:                                        ; preds = %bb.ag
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.af
  %i.ld = load ptr, ptr %22, align 8, !tbaa !36
  %i.le = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef %i.ld, i64 noundef %i.kz)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.am ; 0 uses

end_hunk_3
begin_hunk_4_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.at, %middle.block ], [ %i.bb, %.lr.ph.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ac) #46
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !2151
  store ptr %i.bc, ptr %i.t, align 8, !tbaa !2232
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.bd, ptr %i.v, align 8, !tbaa !2148
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.567, align 8            ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !114    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114  ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit: ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = xor i64 %i.h, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.a, ptr %i.c, i64 noundef %i.i)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.a, ptr %i.c)
  %.pre = load ptr, ptr %0, align 8, !tbaa !114   ; 4 uses
  %.pre36 = ptrtoint ptr %.pre to i64             ; 2 uses
  %.pre13 = load ptr, ptr %i.b, align 8, !tbaa !114 ; 7 uses
  %.pre1335 = ptrtoint ptr %.pre13 to i64         ; 2 uses
  %i.j = icmp eq ptr %.pre, %.pre13
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.k, %.pre13
  %or.cond = select i1 %i.j, i1 true, i1 %.not.i.i.i31
  br i1 %or.cond, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %.pre13
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph, !llvm.loop !2240

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %.preheader.i.i.i
  %indvar = phi i64 [ %indvar.next, %.preheader.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %i.m = phi ptr [ %i.l, %.preheader.i.i.i ], [ %i.k, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %.sroa.09.0.i.i.i32 = phi ptr [ %i.m, %.preheader.i.i.i ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 5 uses
  %i.n = load i8, ptr %.sroa.09.0.i.i.i32, align 1, !tbaa !39 ; 3 uses
  %i.o = load i8, ptr %i.m, align 1, !tbaa !39
  %i.p = icmp eq i8 %i.n, %i.o
  br i1 %i.p, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !2240

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i32, i64 2 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.q, %.pre13
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %i.r = xor i64 %.pre1335, 2
  %i.s = add i64 %indvar, %.pre36
  %i.t = sub i64 %i.r, %i.s
  %i.u = add i64 %.pre1335, -3
  %i.v = add i64 %indvar, %.pre36
  %i.w = sub i64 %i.u, %i.v
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %bb.c
  %i.x = phi i8 [ %i.z, %bb.c ], [ %i.n, %.lr.ph.i.i.preheader ]
  %i.y = phi ptr [ %i.ac, %bb.c ], [ %i.q, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.0.019.i.i.prol = phi ptr [ %.sroa.0.1.i.i.prol, %bb.c ], [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.c ], [ 0, %.lr.ph.i.i.preheader ]
  %i.z = load i8, ptr %i.y, align 1, !tbaa !39    ; 4 uses
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.prol
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.prol, i64 1 ; 2 uses
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.prol
  %.sroa.0.1.i.i.prol = phi ptr [ %.sroa.0.019.i.i.prol, %.lr.ph.i.i.prol ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2241

.lr.ph.i.i.prol.loopexit:                         ; preds = %bb.c, %.lr.ph.i.i.preheader
  %.sroa.0.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %.unr = phi i8 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.z, %bb.c ]
  %.unr38 = phi ptr [ %i.q, %.lr.ph.i.i.preheader ], [ %i.ac, %bb.c ]
  %.sroa.0.019.i.i.unr = phi ptr [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %i.ad = icmp ult i64 %i.w, 3
  br i1 %i.ad, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.h
  %i.ae = phi i8 [ %i.as, %bb.h ], [ %.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.af = phi ptr [ %i.av, %bb.h ], [ %.unr38, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.1.i.i.3, %bb.h ], [ %.sroa.0.019.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !39  ; 3 uses
  %i.ah = icmp eq i8 %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 1 ; 2 uses
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !39
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %i.ai, %bb.d ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !39  ; 3 uses
  %i.al = icmp eq i8 %i.ag, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.2, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.1
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 1 ; 2 uses
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !39
  br label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.e, %.lr.ph.i.i.1
  %.sroa.0.1.i.i.1 = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.1 ], [ %i.am, %bb.e ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !39  ; 3 uses
  %i.ap = icmp eq i8 %i.ak, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i.3, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.2
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.1, i64 1 ; 2 uses
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !39
  br label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %bb.f, %.lr.ph.i.i.2
  %.sroa.0.1.i.i.2 = phi ptr [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.2 ], [ %i.aq, %bb.f ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !39  ; 3 uses
  %i.at = icmp eq i8 %i.ao, %i.as
  br i1 %i.at, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.3
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.2, i64 1 ; 2 uses
  store i8 %i.as, ptr %i.au, align 1, !tbaa !39
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i.3
  %.sroa.0.1.i.i.3 = phi ptr [ %.sroa.0.1.i.i.2, %.lr.ph.i.i.3 ], [ %i.au, %bb.g ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %.not.i.i5.3 = icmp eq ptr %i.av, %.pre13
  br i1 %.not.i.i5.3, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i, !llvm.loop !2242

._crit_edge.i.i.loopexit:                         ; preds = %bb.h, %.lr.ph.i.i.prol.loopexit
  %.sroa.0.1.i.i.lcssa = phi ptr [ %.sroa.0.1.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.0.1.i.i.3, %bb.h ]
  %.pre14.pre = load ptr, ptr %i.b, align 8, !tbaa !114
  br label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit: ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, %._crit_edge.i.i.loopexit
  %.pre14 = phi ptr [ %.pre13, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ], [ %.pre14.pre, %._crit_edge.i.i.loopexit ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.09.0.i.i.i32, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ], [ %.sroa.0.1.i.i.lcssa, %._crit_edge.i.i.loopexit ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 1 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %.pre14
  br i1 %i.ax, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit
  %i.ay = load ptr, ptr %0, align 8, !tbaa !114   ; 2 uses
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.ay, i64 %i.bb
  store ptr %i.bc, ptr %i.b, align 8, !tbaa !2243
  br label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit

_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit: ; preds = %.preheader.i.i.i, %bb.a, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i, %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit
  %indvars.iv.i = phi i64 [ 0, %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit ], [ %indvars.iv.next.i, %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i ] ; 4 uses
  %i.bg = trunc i64 %indvars.iv.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5
  store ptr %0, ptr %1, align 8, !tbaa !2244
  store i8 %i.bg, ptr %i.be, align 8, !tbaa !2246
  %i.bh = call noundef zeroext i1 @_ZZNKSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE8_M_applyEcSt17integral_constantIbLb0EEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(9) %1)
  %i.bi = load i8, ptr %i.bf, align 8, !tbaa !2123, !range !368, !noundef !290
  %2 = zext i1 %i.bh to i8
  %.not.i = icmp eq i8 %i.bi, %2
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5
  %i.bj = lshr i64 %indvars.iv.i, 6
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bj ; 3 uses
  %i.bl = and i64 %indvars.iv.i, 63
  %i.bm = shl nuw i64 1, %i.bl                    ; 2 uses
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = load i64, ptr %i.bk, align 8, !tbaa !201
  %i.bo = or i64 %i.bn, %i.bm
  br label %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bp = xor i64 %i.bm, -1
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !201
  %i.br = and i64 %i.bq, %i.bp
  br label %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i

_ZNSt6bitsetILm256EE9referenceaSEb.exit.i:        ; preds = %bb.k, %bb.j
  %storemerge.i = phi i64 [ %i.br, %bb.k ], [ %i.bo, %bb.j ]
  store i64 %storemerge.i, ptr %i.bk, align 8, !tbaa !201
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE13_M_make_cacheESt17integral_constantIbLb1EE.exit, label %bb.i, !llvm.loop !2247

_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE13_M_make_cacheESt17integral_constantIbLb1EE.exit: ; preds = %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2151 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2148
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #46
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2152 ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2146
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #46
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit:        ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !198  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !195  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.p, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i.i, align 8, !tbaa !36 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !39
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #46
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.x, %i.r
  br i1 %.not.i.i.i2, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !265

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.o, align 8, !tbaa !198
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit
  %i.y = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.p, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !199
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #46
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.d
  %i.ae = load ptr, ptr %0, align 8, !tbaa !2153  ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2144
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #46
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #5
  %i.b = load ptr, ptr %0, align 8, !tbaa !1243
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1248
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1249 ; 6 uses
  %.not.not.i = icmp eq ptr %i.f, null
  br i1 %.not.not.i, label %bb.b, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #48
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit:  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !168
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.h, align 8, !tbaa !169
  store i8 0, ptr %i.g, align 8, !tbaa !39
  %.not41 = icmp eq ptr %1, %2
  br i1 %.not41, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 313
  br label %bb.c

.preheader:                                       ; preds = %bb.h
  %.pre = load i64, ptr %i.h, align 8, !tbaa !169
  %.pre51 = load ptr, ptr %4, align 8             ; 17 uses
  %i.j = freeze i64 %.pre                         ; 16 uses
  switch i64 %i.j, label %.critedge28 [
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.14
    i64 1, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.3
  ]

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %.042 = phi ptr [ %1, %.lr.ph ], [ %i.ai, %bb.h ] ; 2 uses
  %i.k = load i8, ptr %.042, align 1, !tbaa !39
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !262
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef signext i8 %i.n(ptr noundef nonnull align 8 dereferenceable(570) %i.f, i8 noundef signext %i.k)
          to label %_ZNKSt5ctypeIcE7tolowerEc.exit unwind label %bb.i, !inline_history !2248 ; 2 uses

_ZNKSt5ctypeIcE7tolowerEc.exit:                   ; preds = %bb.c
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.p ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !39    ; 2 uses
  %.not.i = icmp eq i8 %i.r, 0
  br i1 %.not.i, label %bb.d, label %_ZNKSt5ctypeIcE6narrowEcc.exit

bb.d:                                             ; preds = %_ZNKSt5ctypeIcE7tolowerEc.exit
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !262
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = invoke noundef signext i8 %i.u(ptr noundef nonnull align 8 dereferenceable(570) %i.f, i8 noundef signext %i.o, i8 noundef signext 0)
          to label %.noexc unwind label %bb.i, !inline_history !2007 ; 3 uses

.noexc:                                           ; preds = %bb.d
  %.not11.i = icmp eq i8 %i.v, 0
  br i1 %.not11.i, label %_ZNKSt5ctypeIcE6narrowEcc.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  store i8 %i.v, ptr %i.q, align 1, !tbaa !39
  br label %_ZNKSt5ctypeIcE6narrowEcc.exit

_ZNKSt5ctypeIcE6narrowEcc.exit:                   ; preds = %bb.e, %.noexc, %_ZNKSt5ctypeIcE7tolowerEc.exit
  %.0.i = phi i8 [ %i.r, %_ZNKSt5ctypeIcE7tolowerEc.exit ], [ %i.v, %bb.e ], [ 0, %.noexc ]
  %i.w = load i64, ptr %i.h, align 8, !tbaa !169  ; 4 uses
  %i.x = add i64 %i.w, 1                          ; 3 uses
  %i.y = load ptr, ptr %4, align 8, !tbaa !36     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.g                   ; 2 uses
  br i1 %i.z, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.f:                                             ; preds = %_ZNKSt5ctypeIcE6narrowEcc.exit
  %i.aa = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.aa)
end_hunk_4
begin_hunk_5_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.at, %middle.block ], [ %i.bb, %.lr.ph.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ac) #46
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !2151
  store ptr %i.bc, ptr %i.t, align 8, !tbaa !2232
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.bd, ptr %i.v, align 8, !tbaa !2148
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.579, align 8            ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !114    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114  ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit: ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = xor i64 %i.h, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.a, ptr %i.c, i64 noundef %i.i)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.a, ptr %i.c)
  %.pre = load ptr, ptr %0, align 8, !tbaa !114   ; 4 uses
  %.pre36 = ptrtoint ptr %.pre to i64             ; 2 uses
  %.pre13 = load ptr, ptr %i.b, align 8, !tbaa !114 ; 7 uses
  %.pre1335 = ptrtoint ptr %.pre13 to i64         ; 2 uses
  %i.j = icmp eq ptr %.pre, %.pre13
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.k, %.pre13
  %or.cond = select i1 %i.j, i1 true, i1 %.not.i.i.i31
  br i1 %or.cond, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %.pre13
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph, !llvm.loop !2240

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %.preheader.i.i.i
  %indvar = phi i64 [ %indvar.next, %.preheader.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %i.m = phi ptr [ %i.l, %.preheader.i.i.i ], [ %i.k, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %.sroa.09.0.i.i.i32 = phi ptr [ %i.m, %.preheader.i.i.i ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 5 uses
  %i.n = load i8, ptr %.sroa.09.0.i.i.i32, align 1, !tbaa !39 ; 3 uses
  %i.o = load i8, ptr %i.m, align 1, !tbaa !39
  %i.p = icmp eq i8 %i.n, %i.o
  br i1 %i.p, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !2240

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i32, i64 2 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.q, %.pre13
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %i.r = xor i64 %.pre1335, 2
  %i.s = add i64 %indvar, %.pre36
  %i.t = sub i64 %i.r, %i.s
  %i.u = add i64 %.pre1335, -3
  %i.v = add i64 %indvar, %.pre36
  %i.w = sub i64 %i.u, %i.v
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %bb.c
  %i.x = phi i8 [ %i.z, %bb.c ], [ %i.n, %.lr.ph.i.i.preheader ]
  %i.y = phi ptr [ %i.ac, %bb.c ], [ %i.q, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.0.019.i.i.prol = phi ptr [ %.sroa.0.1.i.i.prol, %bb.c ], [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.c ], [ 0, %.lr.ph.i.i.preheader ]
  %i.z = load i8, ptr %i.y, align 1, !tbaa !39    ; 4 uses
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.prol
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.prol, i64 1 ; 2 uses
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.prol
  %.sroa.0.1.i.i.prol = phi ptr [ %.sroa.0.019.i.i.prol, %.lr.ph.i.i.prol ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2285

.lr.ph.i.i.prol.loopexit:                         ; preds = %bb.c, %.lr.ph.i.i.preheader
  %.sroa.0.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %.unr = phi i8 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.z, %bb.c ]
  %.unr38 = phi ptr [ %i.q, %.lr.ph.i.i.preheader ], [ %i.ac, %bb.c ]
  %.sroa.0.019.i.i.unr = phi ptr [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %i.ad = icmp ult i64 %i.w, 3
  br i1 %i.ad, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.h
  %i.ae = phi i8 [ %i.as, %bb.h ], [ %.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.af = phi ptr [ %i.av, %bb.h ], [ %.unr38, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.1.i.i.3, %bb.h ], [ %.sroa.0.019.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !39  ; 3 uses
  %i.ah = icmp eq i8 %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 1 ; 2 uses
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !39
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %i.ai, %bb.d ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !39  ; 3 uses
  %i.al = icmp eq i8 %i.ag, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.2, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.1
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 1 ; 2 uses
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !39
  br label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.e, %.lr.ph.i.i.1
  %.sroa.0.1.i.i.1 = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.1 ], [ %i.am, %bb.e ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !39  ; 3 uses
  %i.ap = icmp eq i8 %i.ak, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i.3, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.2
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.1, i64 1 ; 2 uses
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !39
  br label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %bb.f, %.lr.ph.i.i.2
  %.sroa.0.1.i.i.2 = phi ptr [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.2 ], [ %i.aq, %bb.f ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !39  ; 3 uses
  %i.at = icmp eq i8 %i.ao, %i.as
  br i1 %i.at, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.3
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.2, i64 1 ; 2 uses
  store i8 %i.as, ptr %i.au, align 1, !tbaa !39
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i.3
  %.sroa.0.1.i.i.3 = phi ptr [ %.sroa.0.1.i.i.2, %.lr.ph.i.i.3 ], [ %i.au, %bb.g ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %.not.i.i5.3 = icmp eq ptr %i.av, %.pre13
  br i1 %.not.i.i5.3, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i, !llvm.loop !2242

._crit_edge.i.i.loopexit:                         ; preds = %bb.h, %.lr.ph.i.i.prol.loopexit
  %.sroa.0.1.i.i.lcssa = phi ptr [ %.sroa.0.1.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.0.1.i.i.3, %bb.h ]
  %.pre14.pre = load ptr, ptr %i.b, align 8, !tbaa !114
  br label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit: ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, %._crit_edge.i.i.loopexit
  %.pre14 = phi ptr [ %.pre13, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ], [ %.pre14.pre, %._crit_edge.i.i.loopexit ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.09.0.i.i.i32, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ], [ %.sroa.0.1.i.i.lcssa, %._crit_edge.i.i.loopexit ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 1 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %.pre14
  br i1 %i.ax, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit
  %i.ay = load ptr, ptr %0, align 8, !tbaa !114   ; 2 uses
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.ay, i64 %i.bb
  store ptr %i.bc, ptr %i.b, align 8, !tbaa !2243
  br label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit

_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit: ; preds = %.preheader.i.i.i, %bb.a, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i, %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit
  %indvars.iv.i = phi i64 [ 0, %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit ], [ %indvars.iv.next.i, %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i ] ; 4 uses
  %i.bg = trunc i64 %indvars.iv.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5
  store ptr %0, ptr %1, align 8, !tbaa !2286
  store i8 %i.bg, ptr %i.be, align 8, !tbaa !2288
  %i.bh = call noundef zeroext i1 @_ZZNKSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EE8_M_applyEcSt17integral_constantIbLb0EEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(9) %1)
  %i.bi = load i8, ptr %i.bf, align 8, !tbaa !2154, !range !368, !noundef !290
  %2 = zext i1 %i.bh to i8
  %.not.i = icmp eq i8 %i.bi, %2
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5
  %i.bj = lshr i64 %indvars.iv.i, 6
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bj ; 3 uses
  %i.bl = and i64 %indvars.iv.i, 63
  %i.bm = shl nuw i64 1, %i.bl                    ; 2 uses
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = load i64, ptr %i.bk, align 8, !tbaa !201
  %i.bo = or i64 %i.bn, %i.bm
  br label %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bp = xor i64 %i.bm, -1
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !201
  %i.br = and i64 %i.bq, %i.bp
  br label %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i

_ZNSt6bitsetILm256EE9referenceaSEb.exit.i:        ; preds = %bb.k, %bb.j
  %storemerge.i = phi i64 [ %i.br, %bb.k ], [ %i.bo, %bb.j ]
  store i64 %storemerge.i, ptr %i.bk, align 8, !tbaa !201
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EE13_M_make_cacheESt17integral_constantIbLb1EE.exit, label %bb.i, !llvm.loop !2289

_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EE13_M_make_cacheESt17integral_constantIbLb1EE.exit: ; preds = %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2151 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2148
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #46
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2290 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2291 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i ], [ %i.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !39
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.r = load ptr, ptr %.05.i.i.i, align 8, !tbaa !36 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !39
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #46
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.w, %i.k
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2292

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.h, align 8, !tbaa !2290
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit
  %i.x = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2164
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #46
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !198 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !195 ; 2 uses
  %.not4.i.i.i2 = icmp eq ptr %i.ae, %i.ag
  br i1 %.not4.i.i.i2, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i3

.lr.ph.i.i.i3:                                    ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i4 = phi ptr [ %i.am, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ae, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit ] ; 3 uses
  %i.ah = load ptr, ptr %.05.i.i.i4, align 8, !tbaa !36 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i4, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i3
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !39
  %i.al = add i64 %i.ak, 1
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #46
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i4, i64 32 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.am, %i.ag
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i3, !llvm.loop !265

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i6 = load ptr, ptr %i.ad, align 8, !tbaa !198
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit
  %i.an = phi ptr [ %.pr.i6, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ae, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i7 = icmp eq ptr %i.an, null
  br i1 %.not.i.i1.i7, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !199
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #46
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.d
  %i.at = load ptr, ptr %0, align 8, !tbaa !2153  ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !2144
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #46
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2290   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2291 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !39
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i, align 8, !tbaa !36 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !39
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #46
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2292

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i
end_hunk_5
begin_hunk_6_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.at, %middle.block ], [ %i.bb, %.lr.ph.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ac) #46
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !2151
  store ptr %i.bc, ptr %i.t, align 8, !tbaa !2232
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.bd, ptr %i.v, align 8, !tbaa !2148
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.584, align 8            ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !114    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114  ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit: ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = xor i64 %i.h, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.a, ptr %i.c, i64 noundef %i.i)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.a, ptr %i.c)
  %.pre = load ptr, ptr %0, align 8, !tbaa !114   ; 4 uses
  %.pre36 = ptrtoint ptr %.pre to i64             ; 2 uses
  %.pre13 = load ptr, ptr %i.b, align 8, !tbaa !114 ; 7 uses
  %.pre1335 = ptrtoint ptr %.pre13 to i64         ; 2 uses
  %i.j = icmp eq ptr %.pre, %.pre13
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.k, %.pre13
  %or.cond = select i1 %i.j, i1 true, i1 %.not.i.i.i31
  br i1 %or.cond, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %.pre13
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph, !llvm.loop !2240

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %.preheader.i.i.i
  %indvar = phi i64 [ %indvar.next, %.preheader.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %i.m = phi ptr [ %i.l, %.preheader.i.i.i ], [ %i.k, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %.sroa.09.0.i.i.i32 = phi ptr [ %i.m, %.preheader.i.i.i ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 5 uses
  %i.n = load i8, ptr %.sroa.09.0.i.i.i32, align 1, !tbaa !39 ; 3 uses
  %i.o = load i8, ptr %i.m, align 1, !tbaa !39
  %i.p = icmp eq i8 %i.n, %i.o
  br i1 %i.p, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !2240

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i32, i64 2 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.q, %.pre13
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %i.r = xor i64 %.pre1335, 2
  %i.s = add i64 %indvar, %.pre36
  %i.t = sub i64 %i.r, %i.s
  %i.u = add i64 %.pre1335, -3
  %i.v = add i64 %indvar, %.pre36
  %i.w = sub i64 %i.u, %i.v
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %bb.c
  %i.x = phi i8 [ %i.z, %bb.c ], [ %i.n, %.lr.ph.i.i.preheader ]
  %i.y = phi ptr [ %i.ac, %bb.c ], [ %i.q, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.0.019.i.i.prol = phi ptr [ %.sroa.0.1.i.i.prol, %bb.c ], [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.c ], [ 0, %.lr.ph.i.i.preheader ]
  %i.z = load i8, ptr %i.y, align 1, !tbaa !39    ; 4 uses
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.prol
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.prol, i64 1 ; 2 uses
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.prol
  %.sroa.0.1.i.i.prol = phi ptr [ %.sroa.0.019.i.i.prol, %.lr.ph.i.i.prol ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2312

.lr.ph.i.i.prol.loopexit:                         ; preds = %bb.c, %.lr.ph.i.i.preheader
  %.sroa.0.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %.unr = phi i8 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.z, %bb.c ]
  %.unr38 = phi ptr [ %i.q, %.lr.ph.i.i.preheader ], [ %i.ac, %bb.c ]
  %.sroa.0.019.i.i.unr = phi ptr [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %i.ad = icmp ult i64 %i.w, 3
  br i1 %i.ad, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.h
  %i.ae = phi i8 [ %i.as, %bb.h ], [ %.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.af = phi ptr [ %i.av, %bb.h ], [ %.unr38, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.1.i.i.3, %bb.h ], [ %.sroa.0.019.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !39  ; 3 uses
  %i.ah = icmp eq i8 %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 1 ; 2 uses
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !39
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %i.ai, %bb.d ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !39  ; 3 uses
  %i.al = icmp eq i8 %i.ag, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.2, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.1
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 1 ; 2 uses
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !39
  br label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.e, %.lr.ph.i.i.1
  %.sroa.0.1.i.i.1 = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.1 ], [ %i.am, %bb.e ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !39  ; 3 uses
  %i.ap = icmp eq i8 %i.ak, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i.3, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.2
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.1, i64 1 ; 2 uses
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !39
  br label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %bb.f, %.lr.ph.i.i.2
  %.sroa.0.1.i.i.2 = phi ptr [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.2 ], [ %i.aq, %bb.f ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !39  ; 3 uses
  %i.at = icmp eq i8 %i.ao, %i.as
  br i1 %i.at, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.3
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.2, i64 1 ; 2 uses
  store i8 %i.as, ptr %i.au, align 1, !tbaa !39
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i.3
  %.sroa.0.1.i.i.3 = phi ptr [ %.sroa.0.1.i.i.2, %.lr.ph.i.i.3 ], [ %i.au, %bb.g ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %.not.i.i5.3 = icmp eq ptr %i.av, %.pre13
  br i1 %.not.i.i5.3, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i, !llvm.loop !2242

._crit_edge.i.i.loopexit:                         ; preds = %bb.h, %.lr.ph.i.i.prol.loopexit
  %.sroa.0.1.i.i.lcssa = phi ptr [ %.sroa.0.1.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.0.1.i.i.3, %bb.h ]
  %.pre14.pre = load ptr, ptr %i.b, align 8, !tbaa !114
  br label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit: ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, %._crit_edge.i.i.loopexit
  %.pre14 = phi ptr [ %.pre13, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ], [ %.pre14.pre, %._crit_edge.i.i.loopexit ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.09.0.i.i.i32, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ], [ %.sroa.0.1.i.i.lcssa, %._crit_edge.i.i.loopexit ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 1 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %.pre14
  br i1 %i.ax, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit
  %i.ay = load ptr, ptr %0, align 8, !tbaa !114   ; 2 uses
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.ay, i64 %i.bb
  store ptr %i.bc, ptr %i.b, align 8, !tbaa !2243
  br label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit

_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit: ; preds = %.preheader.i.i.i, %bb.a, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i, %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit
  %indvars.iv.i = phi i64 [ 0, %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit ], [ %indvars.iv.next.i, %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i ] ; 4 uses
  %i.bg = trunc i64 %indvars.iv.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5
  store ptr %0, ptr %1, align 8, !tbaa !2313
  store i8 %i.bg, ptr %i.be, align 8, !tbaa !2315
  %i.bh = call noundef zeroext i1 @_ZZNKSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE8_M_applyEcSt17integral_constantIbLb0EEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(9) %1)
  %i.bi = load i8, ptr %i.bf, align 8, !tbaa !2167, !range !368, !noundef !290
  %2 = zext i1 %i.bh to i8
  %.not.i = icmp eq i8 %i.bi, %2
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5
  %i.bj = lshr i64 %indvars.iv.i, 6
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bj ; 3 uses
  %i.bl = and i64 %indvars.iv.i, 63
  %i.bm = shl nuw i64 1, %i.bl                    ; 2 uses
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = load i64, ptr %i.bk, align 8, !tbaa !201
  %i.bo = or i64 %i.bn, %i.bm
  br label %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bp = xor i64 %i.bm, -1
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !201
  %i.br = and i64 %i.bq, %i.bp
  br label %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i

_ZNSt6bitsetILm256EE9referenceaSEb.exit.i:        ; preds = %bb.k, %bb.j
  %storemerge.i = phi i64 [ %i.br, %bb.k ], [ %i.bo, %bb.j ]
  store i64 %storemerge.i, ptr %i.bk, align 8, !tbaa !201
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE13_M_make_cacheESt17integral_constantIbLb1EE.exit, label %bb.i, !llvm.loop !2316

_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE13_M_make_cacheESt17integral_constantIbLb1EE.exit: ; preds = %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2151 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2148
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #46
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2152 ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2146
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #46
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit:        ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !198  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !195  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.p, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i.i, align 8, !tbaa !36 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !39
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #46
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.x, %i.r
  br i1 %.not.i.i.i2, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !265

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.o, align 8, !tbaa !198
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit
  %i.y = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.p, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !199
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #46
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.d
  %i.ae = load ptr, ptr %0, align 8, !tbaa !2153  ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2144
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #46
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZNKSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE8_M_applyEcSt17integral_constantIbLb0EEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2313   ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !2315
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !2187, !nonnull !290, !align !1300
  %i.i = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #5
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !1243
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1248
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1249 ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.not.i.i.i, label %bb.b, label %_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #48
  unreachable

_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc.exit: ; preds = %bb.a
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !262
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef signext i8 %i.q(ptr noundef nonnull align 8 dereferenceable(570) %i.n, i8 noundef signext %i.g), !inline_history !2188 ; 2 uses
  %i.s = ptrtoint ptr %i.d to i64
  %i.t = ptrtoint ptr %i.b to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = icmp sgt i64 %i.u, 0
  br i1 %i.v, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.u, %_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc.exit ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.b, %_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc.exit ] ; 2 uses
  %i.w = lshr i64 %.016.i.i, 1                    ; 3 uses
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.011.015.i.i, i64 %i.w ; 2 uses
  %i.x = load i8, ptr %.sink.i.i.i, align 1, !tbaa !39
  %i.y = icmp slt i8 %i.x, %i.r                   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sink.i.i.i, i64 1
  %i.aa = xor i64 %i.w, -1
  %i.ab = add nsw i64 %.016.i.i, %i.aa
  %.sroa.011.1.i.i = select i1 %i.y, ptr %i.z, ptr %.sroa.011.015.i.i ; 2 uses
  %.1.i.i = select i1 %i.y, i64 %i.ab, i64 %i.w   ; 2 uses
  %i.ac = icmp sgt i64 %.1.i.i, 0
  br i1 %i.ac, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i, !llvm.loop !2261

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc.exit
  %.sroa.011.0.lcssa.i.i = phi ptr [ %i.b, %_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE12_M_translateEc.exit ], [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.011.0.lcssa.i.i, %i.d
  br i1 %.not.i, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit

_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i
  %i.ad = load i8, ptr %.sroa.011.0.lcssa.i.i, align 1, !tbaa !39
  %.not = icmp slt i8 %i.r, %i.ad
  br i1 %.not, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread, label %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread

_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i, %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit
  %i.ae = load i8, ptr %i.f, align 8, !tbaa !2315 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2145 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !2145 ; 2 uses
  %.not5256 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not5256, label %.critedge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.046.057, i64 2 ; 2 uses
  %.not52 = icmp eq ptr %i.aj, %i.ai
  br i1 %.not52, label %.critedge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread, %bb.c
  %.sroa.046.057 = phi ptr [ %i.aj, %bb.c ], [ %i.ag, %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread ] ; 3 uses
  %i.ak = load i8, ptr %.sroa.046.057, align 1, !tbaa !1997
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.046.057, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !1999
  %i.an = tail call noundef zeroext i1 @_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EE17_M_in_range_icaseEccc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i8 noundef signext %i.ak, i8 noundef signext %i.am, i8 noundef signext %i.ae)
  br i1 %i.an, label %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread, label %bb.c

end_hunk_6
begin_hunk_7_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.at, %middle.block ], [ %i.bb, %.lr.ph.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ac) #46
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !2151
  store ptr %i.bc, ptr %i.t, align 8, !tbaa !2232
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.bd, ptr %i.v, align 8, !tbaa !2148
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.587, align 8            ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !114    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114  ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit: ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = xor i64 %i.h, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.a, ptr %i.c, i64 noundef %i.i)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.a, ptr %i.c)
  %.pre = load ptr, ptr %0, align 8, !tbaa !114   ; 4 uses
  %.pre36 = ptrtoint ptr %.pre to i64             ; 2 uses
  %.pre13 = load ptr, ptr %i.b, align 8, !tbaa !114 ; 7 uses
  %.pre1335 = ptrtoint ptr %.pre13 to i64         ; 2 uses
  %i.j = icmp eq ptr %.pre, %.pre13
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.k, %.pre13
  %or.cond = select i1 %i.j, i1 true, i1 %.not.i.i.i31
  br i1 %or.cond, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %.pre13
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph, !llvm.loop !2240

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %.preheader.i.i.i
  %indvar = phi i64 [ %indvar.next, %.preheader.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %i.m = phi ptr [ %i.l, %.preheader.i.i.i ], [ %i.k, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %.sroa.09.0.i.i.i32 = phi ptr [ %i.m, %.preheader.i.i.i ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 5 uses
  %i.n = load i8, ptr %.sroa.09.0.i.i.i32, align 1, !tbaa !39 ; 3 uses
  %i.o = load i8, ptr %i.m, align 1, !tbaa !39
  %i.p = icmp eq i8 %i.n, %i.o
  br i1 %i.p, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !2240

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i32, i64 2 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.q, %.pre13
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %i.r = xor i64 %.pre1335, 2
  %i.s = add i64 %indvar, %.pre36
  %i.t = sub i64 %i.r, %i.s
  %i.u = add i64 %.pre1335, -3
  %i.v = add i64 %indvar, %.pre36
  %i.w = sub i64 %i.u, %i.v
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %bb.c
  %i.x = phi i8 [ %i.z, %bb.c ], [ %i.n, %.lr.ph.i.i.preheader ]
  %i.y = phi ptr [ %i.ac, %bb.c ], [ %i.q, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.0.019.i.i.prol = phi ptr [ %.sroa.0.1.i.i.prol, %bb.c ], [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.c ], [ 0, %.lr.ph.i.i.preheader ]
  %i.z = load i8, ptr %i.y, align 1, !tbaa !39    ; 4 uses
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.prol
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.prol, i64 1 ; 2 uses
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.prol
  %.sroa.0.1.i.i.prol = phi ptr [ %.sroa.0.019.i.i.prol, %.lr.ph.i.i.prol ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2331

.lr.ph.i.i.prol.loopexit:                         ; preds = %bb.c, %.lr.ph.i.i.preheader
  %.sroa.0.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %.unr = phi i8 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.z, %bb.c ]
  %.unr38 = phi ptr [ %i.q, %.lr.ph.i.i.preheader ], [ %i.ac, %bb.c ]
  %.sroa.0.019.i.i.unr = phi ptr [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %i.ad = icmp ult i64 %i.w, 3
  br i1 %i.ad, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.h
  %i.ae = phi i8 [ %i.as, %bb.h ], [ %.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.af = phi ptr [ %i.av, %bb.h ], [ %.unr38, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.1.i.i.3, %bb.h ], [ %.sroa.0.019.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !39  ; 3 uses
  %i.ah = icmp eq i8 %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 1 ; 2 uses
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !39
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %i.ai, %bb.d ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !39  ; 3 uses
  %i.al = icmp eq i8 %i.ag, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.2, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.1
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 1 ; 2 uses
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !39
  br label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.e, %.lr.ph.i.i.1
  %.sroa.0.1.i.i.1 = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.1 ], [ %i.am, %bb.e ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !39  ; 3 uses
  %i.ap = icmp eq i8 %i.ak, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i.3, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.2
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.1, i64 1 ; 2 uses
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !39
  br label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %bb.f, %.lr.ph.i.i.2
  %.sroa.0.1.i.i.2 = phi ptr [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.2 ], [ %i.aq, %bb.f ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !39  ; 3 uses
  %i.at = icmp eq i8 %i.ao, %i.as
  br i1 %i.at, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.3
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.2, i64 1 ; 2 uses
  store i8 %i.as, ptr %i.au, align 1, !tbaa !39
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i.3
  %.sroa.0.1.i.i.3 = phi ptr [ %.sroa.0.1.i.i.2, %.lr.ph.i.i.3 ], [ %i.au, %bb.g ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %.not.i.i5.3 = icmp eq ptr %i.av, %.pre13
  br i1 %.not.i.i5.3, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i, !llvm.loop !2242

._crit_edge.i.i.loopexit:                         ; preds = %bb.h, %.lr.ph.i.i.prol.loopexit
  %.sroa.0.1.i.i.lcssa = phi ptr [ %.sroa.0.1.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.0.1.i.i.3, %bb.h ]
  %.pre14.pre = load ptr, ptr %i.b, align 8, !tbaa !114
  br label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit: ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, %._crit_edge.i.i.loopexit
  %.pre14 = phi ptr [ %.pre13, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ], [ %.pre14.pre, %._crit_edge.i.i.loopexit ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.09.0.i.i.i32, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ], [ %.sroa.0.1.i.i.lcssa, %._crit_edge.i.i.loopexit ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 1 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %.pre14
  br i1 %i.ax, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit
  %i.ay = load ptr, ptr %0, align 8, !tbaa !114   ; 2 uses
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.ay, i64 %i.bb
  store ptr %i.bc, ptr %i.b, align 8, !tbaa !2243
  br label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit

_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit: ; preds = %.preheader.i.i.i, %bb.a, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i, %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit
  %indvars.iv.i = phi i64 [ 0, %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit ], [ %indvars.iv.next.i, %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i ] ; 4 uses
  %i.bg = trunc i64 %indvars.iv.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5
  store ptr %0, ptr %1, align 8, !tbaa !2332
  store i8 %i.bg, ptr %i.be, align 8, !tbaa !2334
  %i.bh = call noundef zeroext i1 @_ZZNKSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE8_M_applyEcSt17integral_constantIbLb0EEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(9) %1)
  %i.bi = load i8, ptr %i.bf, align 8, !tbaa !2173, !range !368, !noundef !290
  %2 = zext i1 %i.bh to i8
  %.not.i = icmp eq i8 %i.bi, %2
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5
  %i.bj = lshr i64 %indvars.iv.i, 6
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bj ; 3 uses
  %i.bl = and i64 %indvars.iv.i, 63
  %i.bm = shl nuw i64 1, %i.bl                    ; 2 uses
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = load i64, ptr %i.bk, align 8, !tbaa !201
  %i.bo = or i64 %i.bn, %i.bm
  br label %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bp = xor i64 %i.bm, -1
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !201
  %i.br = and i64 %i.bq, %i.bp
  br label %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i

_ZNSt6bitsetILm256EE9referenceaSEb.exit.i:        ; preds = %bb.k, %bb.j
  %storemerge.i = phi i64 [ %i.br, %bb.k ], [ %i.bo, %bb.j ]
  store i64 %storemerge.i, ptr %i.bk, align 8, !tbaa !201
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE13_M_make_cacheESt17integral_constantIbLb1EE.exit, label %bb.i, !llvm.loop !2335

_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE13_M_make_cacheESt17integral_constantIbLb1EE.exit: ; preds = %_ZNSt6bitsetILm256EE9referenceaSEb.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2151 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2148
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #46
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2290 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2291 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i ], [ %i.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !39
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.r = load ptr, ptr %.05.i.i.i, align 8, !tbaa !36 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !39
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #46
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.w, %i.k
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2292

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.h, align 8, !tbaa !2290
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit
  %i.x = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2164
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #46
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !198 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !195 ; 2 uses
  %.not4.i.i.i2 = icmp eq ptr %i.ae, %i.ag
  br i1 %.not4.i.i.i2, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i3

.lr.ph.i.i.i3:                                    ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i4 = phi ptr [ %i.am, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ae, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit ] ; 3 uses
  %i.ah = load ptr, ptr %.05.i.i.i4, align 8, !tbaa !36 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i4, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i3
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !39
  %i.al = add i64 %i.ak, 1
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #46
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i4, i64 32 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.am, %i.ag
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i3, !llvm.loop !265

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i6 = load ptr, ptr %i.ad, align 8, !tbaa !198
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit
  %i.an = phi ptr [ %.pr.i6, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ae, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i7 = icmp eq ptr %i.an, null
  br i1 %.not.i.i1.i7, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !199
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #46
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.d
  %i.at = load ptr, ptr %0, align 8, !tbaa !2153  ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !2144
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #46
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZNKSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE8_M_applyEcSt17integral_constantIbLb0EEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2332   ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !2334
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !2192, !nonnull !290, !align !1300
  %i.i = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #5
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !1243
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1248
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1249 ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.not.i.i.i, label %bb.b, label %_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb1EE12_M_translateEc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #48
  unreachable

_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb1EE12_M_translateEc.exit: ; preds = %bb.a
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !262
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef signext i8 %i.q(ptr noundef nonnull align 8 dereferenceable(570) %i.n, i8 noundef signext %i.g), !inline_history !2193 ; 2 uses
  %i.s = ptrtoint ptr %i.d to i64
  %i.t = ptrtoint ptr %i.b to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = icmp sgt i64 %i.u, 0
  br i1 %i.v, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb1EE12_M_translateEc.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.u, %_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb1EE12_M_translateEc.exit ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.b, %_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb1EE12_M_translateEc.exit ] ; 2 uses
end_hunk_7
