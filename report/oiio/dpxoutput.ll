inline.NumInlined: 3612
inline.NumDeleted: 1063
begin_hunk_0_@_ZN11OpenImageIO4v3_19DPXOutput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_9ImageSpecENS0_11ImageOutput8OpenModeE:bb.a
  %i.acb = icmp eq ptr %i.abz, %i.aca
  br i1 %i.acb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293
  %i.acc = load i64, ptr %i.aca, align 8, !tbaa !79
  %i.acd = add i64 %i.acc, 1
  call void @_ZdlPvm(ptr noundef %i.abz, i64 noundef %i.acd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294, %bb.ao
  %.pn143.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.er, %bb.ao ], [ %.pn143.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294 ], [ %.pn143.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  %i.ace = load ptr, ptr %14, align 8, !tbaa !85  ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.acg = icmp eq ptr %i.ace, %i.acf
  br i1 %i.acg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296
  %i.ach = load i64, ptr %i.acf, align 8, !tbaa !79
  %i.aci = add i64 %i.ach, 1
  call void @_ZdlPvm(ptr noundef %i.ace, i64 noundef %i.aci) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.gg

bb.gf:                                            ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278, %bb.l, %bb.k, %bb.c
  %.1 = phi i1 [ false, %bb.k ], [ %i.ak, %bb.l ], [ false, %bb.c ], [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278 ], [ false, %bb.o ], [ false, %bb.p ]
  ret i1 %.1

bb.gg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, %bb.an
  %.pn143.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn143.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299 ], [ %i.eq, %bb.an ]
  resume { ptr, i32 } %.pn143.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.112", align 16 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28, !noalias !167
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !167
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull %1, i64 %i.a, i64 0, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !167
  %i.b = load ptr, ptr %4, align 8, !tbaa !85
  store ptr %i.b, ptr %3, align 8, !tbaa !88
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !90
  store i64 %i.e, ptr %i.c, align 8, !tbaa !91
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !85     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !79
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !85     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !79
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_19DPXOutput12write_bufferEv(ptr noundef nonnull align 8 dereferenceable(2424) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %.not10 = icmp eq ptr %i.c, null
  br i1 %.not10, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2392 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !70, !range !76, !noundef !77
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2272
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2280
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !64   ; 2 uses
  %.not = icmp eq ptr %i.i, %i.j
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2360
  %i.m = load i32, ptr %i.l, align 8, !tbaa !66
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2320
  %i.o = load i32, ptr %i.n, align 8, !tbaa !78
  %i.p = tail call noundef zeroext i1 @_ZN3dpx6Writer12WriteElementEiPvNS_8DataSizeE(ptr noundef nonnull align 8 dereferenceable(2080) %i.k, i32 noundef %i.m, ptr noundef %i.j, i32 noundef %i.o) ; 2 uses
  br i1 %i.p, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call ptr @__errno_location() #31
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = tail call ptr @strerror(i32 noundef %i.r) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %.not8 = icmp eq ptr %i.s, null
  br i1 %.not8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.s, align 1, !tbaa !79
  %.not9 = icmp eq i8 %i.t, 0
  %spec.select = select i1 %.not9, ptr @.str.80, ptr %i.s
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = phi ptr [ @.str.80, %bb.e ], [ %spec.select, %bb.f ]
  store ptr %i.u, ptr %i.a, align 8, !tbaa !80
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.79, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  store i8 0, ptr %i.d, align 8, !tbaa !70
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.c, %bb.h, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.p, %bb.h ], [ true, %bb.c ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_19DPXOutput13prep_subimageEib(ptr noundef nonnull align 8 dereferenceable(2424) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 24 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %10 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %12 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %13 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %14 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %15 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %16 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %17 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %18 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %19 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %20 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %23 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %24 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %26 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 6 uses
  %27 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %28 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %30 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 6 uses
  %31 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %32 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %33 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %34 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %35 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %36 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %37 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %38 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %39 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %40 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2368
  %i.e = sext i32 %1 to i64
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw [160 x i8], ptr %i.f, i64 %i.e ; 22 uses
  %i.h = tail call noundef i32 @_ZN11OpenImageIO4v3_19DPXOutput20get_image_descriptorEv(ptr noundef nonnull align 8 dereferenceable(2424) %0)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2324 ; 2 uses
  store i32 %i.h, ptr %i.i, align 4, !tbaa !119
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv() ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr @.str.56, ptr %5, align 8, !tbaa !88
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 15, ptr %i.k, align 8, !tbaa !91
  store ptr @.str.5, ptr %6, align 8, !tbaa !88
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !91
  call void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %4, ptr noundef nonnull align 8 dereferenceable(160) %i.g, ptr noundef nonnull dead_on_return %5, ptr noundef nonnull dead_on_return %6)
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.m = load ptr, ptr %4, align 8, !tbaa !88, !noalias !170 ; 3 uses
  %.not.not.i = icmp eq ptr %i.m, null
  br i1 %.not.not.i, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !91, !noalias !170 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !98, !alias.scope !170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28, !noalias !170
  store i64 %i.o, ptr %i.c, align 8, !tbaa !99, !noalias !170
  %i.q = icmp ugt i64 %i.o, 15
  br i1 %i.q, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.r = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.r, ptr %3, align 8, !tbaa !85, !alias.scope !170
  %i.s = load i64, ptr %i.c, align 8, !tbaa !99, !noalias !170
  store i64 %i.s, ptr %i.p, align 8, !tbaa !79, !alias.scope !170
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.t = phi ptr [ %i.r, %.noexc.i.i ], [ %i.p, %bb.b ] ; 2 uses
  switch i64 %i.o, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.u = load i8, ptr %i.m, align 1, !tbaa !79
  store i8 %i.u, ptr %i.t, align 1, !tbaa !79
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %i.m, i64 %i.o, i1 false)
  br label %bb.e

.thread.i:                                        ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.v, ptr %3, align 8, !tbaa !98, !alias.scope !170
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !90, !alias.scope !170
  store i8 0, ptr %i.v, align 8, !tbaa !79, !alias.scope !170
  br label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.x = load i64, ptr %i.c, align 8, !tbaa !99, !noalias !170 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.x, ptr %i.y, align 8, !tbaa !90, !alias.scope !170
  %i.z = load ptr, ptr %3, align 8, !tbaa !85, !alias.scope !170
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28, !noalias !170
  %.pre = load ptr, ptr %3, align 8, !tbaa !85
  %.pre115 = load i64, ptr %i.y, align 8, !tbaa !90
  br label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit

_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit: ; preds = %.thread.i, %bb.e
  %i.ab = phi i64 [ 0, %.thread.i ], [ %.pre115, %bb.e ]
  %i.ac = phi ptr [ %i.v, %.thread.i ], [ %.pre, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  store ptr %i.ac, ptr %7, align 8, !tbaa !88
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !91
  store ptr @.str.57, ptr %8, align 8, !tbaa !88
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 16, ptr %i.af, align 8, !tbaa !91
  %i.ag = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_111ColorConfig10equivalentENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull dead_on_return %7, ptr noundef nonnull dead_on_return %8)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit
  br i1 %i.ag, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2332
  store i32 2, ptr %i.ah, align 4, !tbaa !120
  br label %bb.ad

bb.h:                                             ; preds = %bb.u, %bb.r, %bb.p, %bb.n, %bb.l, %bb.i, %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.i:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %3, align 8, !tbaa !85
  store ptr %i.aj, ptr %9, align 8, !tbaa !88
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.al = load i64, ptr %i.ae, align 8, !tbaa !90
  store i64 %i.al, ptr %i.ak, align 8, !tbaa !91
  store ptr @.str.58, ptr %10, align 8, !tbaa !88
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 17, ptr %i.am, align 8, !tbaa !91
  %i.an = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_111ColorConfig10equivalentENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull dead_on_return %9, ptr noundef nonnull dead_on_return %10)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2332
  store i32 6, ptr %i.ao, align 4, !tbaa !120
  br label %bb.ad

bb.l:                                             ; preds = %bb.j
  %i.ap = load ptr, ptr %3, align 8, !tbaa !85
  store ptr %i.ap, ptr %11, align 8, !tbaa !88
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ar = load i64, ptr %i.ae, align 8, !tbaa !90
  store i64 %i.ar, ptr %i.aq, align 8, !tbaa !91
  store ptr @.str.59, ptr %12, align 8, !tbaa !88
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 16, ptr %i.as, align 8, !tbaa !91
  %i.at = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_111ColorConfig10equivalentENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull dead_on_return %11, ptr noundef nonnull dead_on_return %12)
          to label %bb.m unwind label %bb.h

bb.m:                                             ; preds = %bb.l
  br i1 %i.at, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = load ptr, ptr %3, align 8, !tbaa !85
  store ptr %i.au, ptr %13, align 8, !tbaa !88
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.aw = load i64, ptr %i.ae, align 8, !tbaa !90
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !91
  store ptr @.str.60, ptr %14, align 8, !tbaa !88
  %i.ax = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 16, ptr %i.ax, align 8, !tbaa !91
  %i.ay = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_111ColorConfig10equivalentENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull dead_on_return %13, ptr noundef nonnull dead_on_return %14)
          to label %bb.o unwind label %bb.h

bb.o:                                             ; preds = %bb.n
  br i1 %i.ay, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = load ptr, ptr %3, align 8, !tbaa !85
  store ptr %i.az, ptr %15, align 8, !tbaa !88
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bb = load i64, ptr %i.ae, align 8, !tbaa !90
  store i64 %i.bb, ptr %i.ba, align 8, !tbaa !91
  store ptr @.str.61, ptr %16, align 8, !tbaa !88
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 16, ptr %i.bc, align 8, !tbaa !91
  %i.bd = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_111ColorConfig10equivalentENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull dead_on_return %15, ptr noundef nonnull dead_on_return %16)
          to label %bb.q unwind label %bb.h

bb.q:                                             ; preds = %bb.p
  br i1 %i.bd, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = load ptr, ptr %3, align 8, !tbaa !85
  store ptr %i.be, ptr %17, align 8, !tbaa !88
  %i.bf = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bg = load i64, ptr %i.ae, align 8, !tbaa !90
  store i64 %i.bg, ptr %i.bf, align 8, !tbaa !91
  store ptr @.str.62, ptr %18, align 8, !tbaa !88
  %i.bh = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 5, ptr %i.bh, align 8, !tbaa !91
  %i.bi = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil12istarts_withENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %17, ptr noundef nonnull dead_on_return %18)
          to label %bb.s unwind label %bb.h

bb.s:                                             ; preds = %bb.r
  br i1 %i.bi, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.q, %bb.o, %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2332
  store i32 0, ptr %i.bj, align 4, !tbaa !120
  br label %bb.ad

bb.u:                                             ; preds = %bb.s
  %i.bk = load ptr, ptr %3, align 8, !tbaa !85
  store ptr %i.bk, ptr %19, align 8, !tbaa !88
  %i.bl = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bm = load i64, ptr %i.ae, align 8, !tbaa !90
  store i64 %i.bm, ptr %i.bl, align 8, !tbaa !91
  store ptr @.str.63, ptr %20, align 8, !tbaa !88
  %i.bn = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 8, ptr %i.bn, align 8, !tbaa !91
  %i.bo = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_111ColorConfig10equivalentENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull dead_on_return %19, ptr noundef nonnull dead_on_return %20)
          to label %bb.v unwind label %bb.h

bb.v:                                             ; preds = %bb.u
  br i1 %i.bo, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 2332
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_19DPXOutput13prep_subimageEib:bb.a
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #28
  store ptr @.str.67, ptr %31, align 8, !tbaa !88
  %i.de = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 11, ptr %i.de, align 8, !tbaa !91
  store ptr @.str.68, ptr %32, align 8, !tbaa !88
  %i.df = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 16, ptr %i.df, align 8, !tbaa !91
  invoke void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %30, ptr noundef nonnull align 8 dereferenceable(160) %i.g, ptr noundef nonnull dead_on_return %31, ptr noundef nonnull dead_on_return %32)
          to label %bb.ak unwind label %bb.at

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.dg = load ptr, ptr %30, align 8, !tbaa !88, !noalias !176 ; 3 uses
  %.not.not.i67 = icmp eq ptr %i.dg, null
  br i1 %.not.not.i67, label %.thread.i70, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dh = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !91, !noalias !176 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 3 uses
  store ptr %i.dj, ptr %29, align 8, !tbaa !98, !alias.scope !176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !176
  store i64 %i.di, ptr %i.a, align 8, !tbaa !99, !noalias !176
  %i.dk = icmp ugt i64 %i.di, 15
  br i1 %i.dk, label %.noexc.i.i69, label %._crit_edge.i.i.i68

.noexc.i.i69:                                     ; preds = %bb.al
  %i.dl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc71 unwind label %bb.at  ; 2 uses

.noexc71:                                         ; preds = %.noexc.i.i69
  store ptr %i.dl, ptr %29, align 8, !tbaa !85, !alias.scope !176
  %i.dm = load i64, ptr %i.a, align 8, !tbaa !99, !noalias !176
  store i64 %i.dm, ptr %i.dj, align 8, !tbaa !79, !alias.scope !176
  br label %._crit_edge.i.i.i68

._crit_edge.i.i.i68:                              ; preds = %.noexc71, %bb.al
  %i.dn = phi ptr [ %i.dl, %.noexc71 ], [ %i.dj, %bb.al ] ; 2 uses
  switch i64 %i.di, label %bb.an [
    i64 1, label %bb.am
    i64 0, label %bb.ao
  ]

bb.am:                                            ; preds = %._crit_edge.i.i.i68
  %i.do = load i8, ptr %i.dg, align 1, !tbaa !79
  store i8 %i.do, ptr %i.dn, align 1, !tbaa !79
  br label %bb.ao

bb.an:                                            ; preds = %._crit_edge.i.i.i68
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dn, ptr nonnull align 1 %i.dg, i64 %i.di, i1 false)
  br label %bb.ao

.thread.i70:                                      ; preds = %bb.ak
  %i.dp = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 3 uses
  store ptr %i.dp, ptr %29, align 8, !tbaa !98, !alias.scope !176
  %i.dq = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 0, ptr %i.dq, align 8, !tbaa !90, !alias.scope !176
  store i8 0, ptr %i.dp, align 8, !tbaa !79, !alias.scope !176
  br label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit72

bb.ao:                                            ; preds = %bb.an, %bb.am, %._crit_edge.i.i.i68
  %i.dr = load i64, ptr %i.a, align 8, !tbaa !99, !noalias !176 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !90, !alias.scope !176
  %i.dt = load ptr, ptr %29, align 8, !tbaa !85, !alias.scope !176
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dr
  store i8 0, ptr %i.du, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !176
  %.pre116 = load ptr, ptr %29, align 8, !tbaa !85
  %.pre118 = load i64, ptr %i.ds, align 8, !tbaa !90
  br label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit72

_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit72: ; preds = %bb.ao, %.thread.i70
  %i.dv = phi i64 [ %.pre118, %bb.ao ], [ 0, %.thread.i70 ]
  %i.dw = phi ptr [ %.pre116, %bb.ao ], [ %i.dp, %.thread.i70 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  store ptr %i.dw, ptr %33, align 8, !tbaa !88
  %i.dx = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 %i.dv, ptr %i.dx, align 8, !tbaa !91
  store ptr @.str.69, ptr %34, align 8, !tbaa !88
  %i.dz = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 6, ptr %i.dz, align 8, !tbaa !91
  %i.ea = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %33, ptr noundef nonnull dead_on_return %34)
          to label %bb.ap unwind label %bb.au

bb.ap:                                            ; preds = %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit72
  br i1 %i.ea, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %bb.ap
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 2336
  store i32 0, ptr %i.eb, align 8, !tbaa !122
  br label %bb.az

bb.ar:                                            ; preds = %.noexc.i.i61, %bb.ad
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

bb.as:                                            ; preds = %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit63
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ee = load ptr, ptr %25, align 8, !tbaa !85   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.as
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !79
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73, %bb.ar
  %.pn47 = phi { ptr, i32 } [ %i.ec, %bb.ar ], [ %i.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %i.ed, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  br label %bb.bv

bb.at:                                            ; preds = %.noexc.i.i69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

bb.au:                                            ; preds = %.noexc101, %.noexc100, %bb.bu, %bb.bt, %bb.bm, %bb.bk, %bb.bi, %bb.be, %bb.bc, %bb.av, %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit72
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = load ptr, ptr %29, align 8, !tbaa !85   ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %bb.au
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !79
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.ep) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

bb.av:                                            ; preds = %bb.ap
  %i.eq = load ptr, ptr %29, align 8, !tbaa !85
  store ptr %i.eq, ptr %35, align 8, !tbaa !88
  %i.er = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.es = load i64, ptr %i.dy, align 8, !tbaa !90
  store i64 %i.es, ptr %i.er, align 8, !tbaa !91
  store ptr @.str.70, ptr %36, align 8, !tbaa !88
  %i.et = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 16, ptr %i.et, align 8, !tbaa !91
  %i.eu = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %35, ptr noundef nonnull dead_on_return %36)
          to label %bb.aw unwind label %bb.au

bb.aw:                                            ; preds = %bb.av
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 2336 ; 2 uses
  br i1 %i.eu, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 2, ptr %i.ev, align 8, !tbaa !122
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  store i32 1, ptr %i.ev, align 8, !tbaa !122
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay, %bb.aq
  %i.ew = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 6 uses
  %i.ex = load i8, ptr %i.ew, align 8, !tbaa !179
  switch i8 %i.ex, label %bb.ba [
    i8 2, label %bb.bb
    i8 4, label %bb.bb
    i8 11, label %bb.bb
    i8 12, label %bb.bb
    i8 10, label %.sink.split
  ]

bb.ba:                                            ; preds = %bb.az
  br label %.sink.split

.sink.split:                                      ; preds = %bb.az, %bb.ba
  %.sink = phi i8 [ 4, %bb.ba ], [ 11, %bb.az ]
  store i8 %.sink, ptr %i.ew, align 8, !tbaa !179
  br label %bb.bb

bb.bb:                                            ; preds = %.sink.split, %bb.az, %bb.az, %bb.az, %bb.az
  %i.ey = getelementptr inbounds nuw i8, ptr %i.g, i64 68 ; 9 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !118
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.ez, i32 1)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.g, i64 65 ; 3 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !164
  %i.fc = zext i8 %i.fb to i64
  %i.fd = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.ew) #28
  %i.fe = mul i64 %i.fd, %i.fc
  %i.ff = trunc i64 %i.fe to i32
  %.tr = shl i32 %narrow.i, 3
  %i.fg = mul i32 %.tr, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 2340 ; 3 uses
  store i32 %i.fg, ptr %i.fh, align 4, !tbaa !114
  %i.fi = load i8, ptr %i.ew, align 8, !tbaa !117
  %i.fj = icmp eq i8 %i.fi, 4
  %i.fk = load i8, ptr %i.fa, align 1
  %i.fl = icmp eq i8 %i.fk, 1
  %or.cond.i = select i1 %i.fj, i1 %i.fl, i1 false
  br i1 %or.cond.i, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit, label %.thread145

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit: ; preds = %bb.bb
  %i.fm = load i32, ptr %i.ey, align 4, !tbaa !118
  %.not.i = icmp eq i32 %i.fm, 0
  br i1 %.not.i, label %bb.bc, label %.thread145

bb.bc:                                            ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit
  store ptr @.str.71, ptr %37, align 8, !tbaa !88
  %i.fn = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i64 18, ptr %i.fn, align 8, !tbaa !91
  %i.fo = invoke noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %i.g, ptr noundef nonnull dead_on_return %37, i32 noundef 16)
          to label %bb.bd unwind label %bb.au     ; 3 uses

bb.bd:                                            ; preds = %bb.bc
  store i32 %i.fo, ptr %i.fh, align 4, !tbaa !114
  switch i32 %i.fo, label %bb.be [
    i32 12, label %thread-pre-split
    i32 10, label %bb.bf
    i32 16, label %bb.bf
  ]

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.72, ptr noundef nonnull align 4 dereferenceable(4) %i.fh)
          to label %_ZN11OpenImageIO4v3_19ImageSpecaSERKS1_.exit unwind label %bb.au

.thread145:                                       ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit, %bb.bb
  %41 = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  br label %bb.bg

thread-pre-split:                                 ; preds = %bb.bd
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 2336
  store i32 0, ptr %42, align 8, !tbaa !122
  %43 = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd, %bb.bd
  %44 = icmp eq i32 %i.fo, 10
  %i.fp = getelementptr inbounds nuw i8, ptr %i.g, i64 60 ; 3 uses
  %i.fq = load i32, ptr %i.fp, align 4
  %i.fr = icmp eq i32 %i.fq, 1
  %or.cond = select i1 %44, i1 %i.fr, i1 false
  br i1 %or.cond, label %.sink.split144, label %bb.bg

.sink.split144:                                   ; preds = %bb.bf
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 2336
  store i32 0, ptr %i.fs, align 8, !tbaa !122
  br label %bb.bg

bb.bg:                                            ; preds = %.thread145, %thread-pre-split, %.sink.split144, %bb.bf
  %45 = phi ptr [ %43, %thread-pre-split ], [ %i.fp, %.sink.split144 ], [ %i.fp, %bb.bf ], [ %41, %.thread145 ]
  %i.ft = load i8, ptr %i.ew, align 8, !tbaa !117 ; 7 uses
  %i.fu = icmp eq i8 %i.ft, 2
  %i.fv = load i8, ptr %i.fa, align 1
  %i.fw = icmp eq i8 %i.fv, 1                     ; 7 uses
  %or.cond.i79 = select i1 %i.fu, i1 %i.fw, i1 false
  br i1 %or.cond.i79, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit81, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit81.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit81: ; preds = %bb.bg
  %i.fx = load i32, ptr %i.ey, align 4, !tbaa !118
  %.not.i80 = icmp eq i32 %i.fx, 0
  br i1 %.not.i80, label %bb.bi, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit99.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit81.thread: ; preds = %bb.bg
  %i.fy = icmp eq i8 %i.ft, 3
  %or.cond.i82 = select i1 %i.fy, i1 %i.fw, i1 false
  br i1 %or.cond.i82, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit84, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit84.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit84: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit81.thread
  %i.fz = load i32, ptr %i.ey, align 4, !tbaa !118
  %.not.i83 = icmp eq i32 %i.fz, 0
  br i1 %.not.i83, label %bb.bi, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit99.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit84.thread: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit81.thread
  %i.ga = icmp eq i8 %i.ft, 4
  %or.cond.i85 = select i1 %i.ga, i1 %i.fw, i1 false
  br i1 %or.cond.i85, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit87, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit87.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit87: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit84.thread
  %i.gb = load i32, ptr %i.ey, align 4, !tbaa !118
  %.not.i86 = icmp eq i32 %i.gb, 0
  br i1 %.not.i86, label %bb.bi, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit99.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit87.thread: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit84.thread
  %i.gc = icmp eq i8 %i.ft, 5
  %or.cond.i88 = select i1 %i.gc, i1 %i.fw, i1 false
  br i1 %or.cond.i88, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit90, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit90.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit90: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit87.thread
  %i.gd = load i32, ptr %i.ey, align 4, !tbaa !118
  %.not.i89 = icmp eq i32 %i.gd, 0
  br i1 %.not.i89, label %bb.bi, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit99.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit90.thread: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit87.thread
  %i.ge = icmp eq i8 %i.ft, 11
  %or.cond.i91 = select i1 %i.ge, i1 %i.fw, i1 false
  br i1 %or.cond.i91, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit93, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit93.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit93: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit90.thread
  %i.gf = load i32, ptr %i.ey, align 4, !tbaa !118
  %.not.i92 = icmp eq i32 %i.gf, 0
  br i1 %.not.i92, label %bb.bh, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit99.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit93.thread: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit90.thread
  %i.gg = icmp eq i8 %i.ft, 10
  %or.cond.i94 = select i1 %i.gg, i1 %i.fw, i1 false
  br i1 %or.cond.i94, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit96, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit96.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit96: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit93.thread
  %i.gh = load i32, ptr %i.ey, align 4, !tbaa !118
  %.not.i95 = icmp eq i32 %i.gh, 0
  br i1 %.not.i95, label %bb.bh, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit99.thread

bb.bh:                                            ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit96, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit93
  store i64 267, ptr %i.ew, align 8
  br label %bb.bi

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit96.thread: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit93.thread
  %i.gi = icmp eq i8 %i.ft, 12
  %or.cond.i97 = select i1 %i.gi, i1 %i.fw, i1 false
  br i1 %or.cond.i97, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit99, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit99.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit99: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit96.thread
  %i.gj = load i32, ptr %i.ey, align 4, !tbaa !118
  %.not.i98 = icmp eq i32 %i.gj, 0
  br i1 %.not.i98, label %bb.bi, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit99.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit99.thread: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit81, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit84, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit87, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit90, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit93, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit96, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit96.thread, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit99
  call void @_ZN11OpenImageIO4v3_19ImageSpec10set_formatENS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %i.g, i64 260) #28
  br label %bb.bi

bb.bi:                                            ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit99, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit87, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit90, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit81, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit84, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit99.thread, %bb.bh
  %.sink146 = phi i32 [ 0, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit81 ], [ 1, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit87 ], [ 1, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit99.thread ], [ 3, %bb.bh ], [ 0, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit84 ], [ 1, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit90 ], [ 4, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit99 ]
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 2320
  store i32 %.sink146, ptr %i.gk, align 8, !tbaa !78
  store ptr @.str.73, ptr %38, align 8, !tbaa !88
  %i.gl = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 12, ptr %i.gl, align 8, !tbaa !91
  %i.gm = invoke noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %i.g, ptr noundef nonnull dead_on_return %38, i32 noundef 0)
          to label %bb.bj unwind label %bb.au

bb.bj:                                            ; preds = %bb.bi
  %.not51 = icmp eq i32 %i.gm, 0
  br i1 %.not51, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  store ptr @.str.74, ptr %39, align 8, !tbaa !88
  %i.gn = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i64 11, ptr %i.gn, align 8, !tbaa !91
  %i.go = invoke noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %i.g, ptr noundef nonnull dead_on_return %39, i32 noundef 0)
          to label %bb.bl unwind label %bb.au

bb.bl:                                            ; preds = %bb.bk
  %.not52 = icmp eq i32 %i.go, 0
  br i1 %.not52, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  store ptr @.str.75, ptr %40, align 8, !tbaa !88
  %i.gp = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 13, ptr %i.gp, align 8, !tbaa !91
  %i.gq = invoke noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %i.g, ptr noundef nonnull dead_on_return %40, i32 noundef 0)
          to label %bb.bn unwind label %bb.au

bb.bn:                                            ; preds = %bb.bm
  %i.gr = icmp ne i32 %i.gq, 0
  %i.gs = zext i1 %i.gr to i8
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bl, %bb.bj
  %i.gt = phi i8 [ 1, %bb.bl ], [ 1, %bb.bj ], [ %i.gs, %bb.bn ]
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 2344 ; 2 uses
  store i8 %i.gt, ptr %i.gu, align 8, !tbaa !180
  %i.gv = load i32, ptr %i.i, align 4, !tbaa !119
  %i.gw = and i32 %i.gv, -2
  %switch = icmp eq i32 %i.gw, 50
  %46 = load i32, ptr %45, align 4
  %switch.a = icmp eq i32 %46, 1
  %or.cond60 = select i1 %switch, i1 true, i1 %switch.a
  br i1 %or.cond60, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.gx = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.g, i1 noundef zeroext false) #28 ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 2352 ; 2 uses
  store i64 %i.gx, ptr %i.gy, align 8, !tbaa !181
  store i8 1, ptr %i.gu, align 8, !tbaa !180
  %i.gz = icmp slt i64 %i.gx, 0
  br i1 %i.gz, label %bb.br, label %bb.bs

bb.bq:                                            ; preds = %bb.bo
  %i.ha = load ptr, ptr @stderr, align 8, !tbaa !182
  %i.hb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ha, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, i32 noundef 537, ptr noundef nonnull @__FUNCTION__._ZN11OpenImageIO4v3_19DPXOutput13prep_subimageEib, ptr noundef nonnull @.str.78) #34 ; 0 uses
  br label %_ZN11OpenImageIO4v3_19ImageSpecaSERKS1_.exit

bb.br:                                            ; preds = %bb.bp
  %i.hc = sub nsw i64 0, %i.gx                    ; 2 uses
  store i64 %i.hc, ptr %i.gy, align 8, !tbaa !181
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bp
  %i.hd = phi i64 [ %i.hc, %bb.br ], [ %i.gx, %bb.bp ]
  br i1 %2, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 2272
  %i.hf = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !75
  %i.hh = sext i32 %i.hg to i64
  %i.hi = mul nsw i64 %i.hd, %i.hh
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.he, i64 noundef %i.hi)
          to label %bb.bu unwind label %bb.au

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.hj, ptr noundef nonnull align 8 dereferenceable(160) %i.g, i64 72, i1 false)
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hl = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.hm = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.hk, ptr noundef nonnull align 8 dereferenceable(24) %i.hl)
          to label %.noexc100 unwind label %bb.au ; 0 uses

.noexc100:                                        ; preds = %bb.bu
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ho = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.hp = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.hn, ptr noundef nonnull align 8 dereferenceable(24) %i.ho)
          to label %.noexc101 unwind label %bb.au ; 0 uses

.noexc101:                                        ; preds = %.noexc100
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.hr = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.hq, ptr noundef nonnull align 8 dereferenceable(9) %i.hr, i64 9, i1 false)
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ht = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.hu = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.hs, ptr noundef nonnull align 8 dereferenceable(24) %i.ht)
          to label %_ZN11OpenImageIO4v3_19ImageSpecaSERKS1_.exit unwind label %bb.au ; 0 uses

_ZN11OpenImageIO4v3_19ImageSpecaSERKS1_.exit:     ; preds = %.noexc101, %bb.be, %bb.bq
  %.042 = phi i1 [ false, %bb.bq ], [ false, %bb.be ], [ true, %.noexc101 ]
  %i.hv = load ptr, ptr %29, align 8, !tbaa !85   ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %_ZN11OpenImageIO4v3_19ImageSpecaSERKS1_.exit
  %i.hy = load i64, ptr %i.hw, align 8, !tbaa !79
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %_ZN11OpenImageIO4v3_19ImageSpecaSERKS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  %i.ia = load ptr, ptr %3, align 8, !tbaa !85    ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ic = icmp eq ptr %i.ia, %i.ib
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
  %i.id = load i64, ptr %i.ib, align 8, !tbaa !79
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.ie) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret i1 %.042

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76, %bb.at
  %.pn53 = phi { ptr, i32 } [ %i.ej, %bb.at ], [ %i.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ], [ %i.ek, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  br label %bb.bv

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %bb.h
  %.pn53.pn = phi { ptr, i32 } [ %.pn53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ], [ %.pn47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %i.ai, %bb.h ]
  %i.if = load ptr, ptr %3, align 8, !tbaa !85    ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %bb.bv
  %i.ii = load i64, ptr %i.ig, align 8, !tbaa !79
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ij) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn53.pn
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput10check_openENS1_8OpenModeERKNS0_9ImageSpecENS0_3ROIEm(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, ptr noundef nonnull align 8 dereferenceable(160), ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8, i64 noundef) local_unnamed_addr #1

declare void @_ZN11OpenImageIO4v3_111ImageOutput28ioproxy_retrieve_from_configERKNS0_9ImageSpecE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput19ioproxy_use_or_openENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef dead_on_return) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

declare noundef ptr @_ZN11OpenImageIO4v3_111ImageOutput7ioproxyEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZN3dpx6Writer12SetOutStreamEP9OutStream(ptr noundef nonnull align 8 dereferenceable(2080), ptr noundef) local_unnamed_addr #1

declare void @_ZN3dpx6Writer5StartEv(ptr noundef nonnull align 8 dereferenceable(2080)) local_unnamed_addr #1

declare void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8, ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !88     ; 3 uses
  %.not.not = icmp eq ptr %i.b, null
  br i1 %.not.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !91   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.d, ptr %i.a, align 8, !tbaa !99
  %i.f = icmp ugt i64 %i.d, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !85
  %i.h = load i64, ptr %i.a, align 8, !tbaa !99
  store i64 %i.h, ptr %i.e, align 8, !tbaa !79
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.b, align 1, !tbaa !79
  store i8 %i.j, ptr %i.i, align 1, !tbaa !79
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %i.b, i64 %i.d, i1 false)
  br label %bb.e

.thread:                                          ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !98
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !90
  store i8 0, ptr %i.k, align 8, !tbaa !79
  br label %.critedge

bb.e:                                             ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.m = load i64, ptr %i.a, align 8, !tbaa !99   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !90
  %i.o = load ptr, ptr %0, align 8, !tbaa !85
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.e
  ret void
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #1

declare void @_ZN3dpx6Writer11SetFileInfoEPKcS2_S2_S2_S2_jb(ptr noundef nonnull align 8 dereferenceable(2080), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, i32 noundef) local_unnamed_addr #1

declare void @_ZN3dpx6Writer12SetImageInfoEjj(ptr noundef nonnull align 8 dereferenceable(2080), i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN3dpx6Writer10SetElementEiNS_10DescriptorEhNS_14CharacteristicES2_NS_7PackingENS_8EncodingEjjfjfjj(ptr noundef nonnull align 8 dereferenceable(2080), i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, float noundef, i32 noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef float @_ZNK11OpenImageIO4v3_19ImageSpec19get_float_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEf(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, float noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11OpenImageIO4v3_19ImageSpec14find_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, i64, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

declare void @_ZN3dpx14IndustryHeader11SetTimeCodeEPKc(ptr noundef nonnull align 4 dereferenceable(384), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11OpenImageIO4v3_19DPXOutput18set_keycode_valuesENS0_4spanIKiLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(2424) initializes((1864, 1880)) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 4 uses
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 4 uses
  %5 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 4 uses
  %6 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 4 uses
  %7 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %13 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %14 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %15 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %16 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %17 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28, !noalias !184
  %i.a = load i32, ptr %1, align 4, !tbaa !3, !noalias !184
  %.sroa.03.0.insert.ext.i = zext i32 %i.a to i128
  store i128 %.sroa.03.0.insert.ext.i, ptr %7, align 16, !noalias !184
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.100, i64 6, i64 1, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1864
  %i.c = load ptr, ptr %8, align 8, !tbaa !85     ; 3 uses
  %i.d = load i16, ptr %i.c, align 1
  store i16 %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !79
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !187
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3, !noalias !187
  %.sroa.03.0.insert.ext.i15 = zext i32 %i.j to i128
  store i128 %.sroa.03.0.insert.ext.i15, ptr %6, align 16, !noalias !187
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull @.str.100, i64 6, i64 1, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !187
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1866
  %i.l = load ptr, ptr %9, align 8, !tbaa !85     ; 3 uses
  %i.m = load i16, ptr %i.l, align 1
  store i16 %i.m, ptr %i.k, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !79
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !190
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3, !noalias !190
  %.sroa.03.0.insert.ext.i19 = zext i32 %i.s to i128
  store i128 %.sroa.03.0.insert.ext.i19, ptr %5, align 16, !noalias !190
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.101, i64 6, i64 1, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !190
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1870
  %i.u = load ptr, ptr %10, align 8, !tbaa !85    ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.t, ptr noundef nonnull align 1 dereferenceable(6) %i.u, i64 6, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.x = load i64, ptr %i.v, align 8, !tbaa !79
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !193
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3, !noalias !193
  %.sroa.03.0.insert.ext.i23 = zext i32 %i.aa to i128
  store i128 %.sroa.03.0.insert.ext.i23, ptr %4, align 16, !noalias !193
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.102, i64 6, i64 1, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !193
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1876
  %i.ac = load ptr, ptr %11, align 8, !tbaa !85   ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 1
  store i32 %i.ad, ptr %i.ab, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ac, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !79
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !196
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3, !noalias !196
  %.sroa.03.0.insert.ext.i27 = zext i32 %i.aj to i128
  store i128 %.sroa.03.0.insert.ext.i27, ptr %3, align 16, !noalias !196
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr nonnull @.str.100, i64 6, i64 1, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !196
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1868
  %i.al = load ptr, ptr %12, align 8, !tbaa !85   ; 3 uses
  %i.am = load i16, ptr %i.al, align 1
  store i16 %i.am, ptr %i.ak, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.al, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !79
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3  ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3  ; 2 uses
  %i.av = icmp eq i32 %i.as, 15
  %i.aw = icmp eq i32 %i.au, 120
  %or.cond = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1880
  store ptr @.str.103, ptr %13, align 8, !tbaa !88
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 6, ptr %i.ay, align 8, !tbaa !91
  %i.az = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcpyEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull %i.ax, ptr noundef nonnull dead_on_return %13, i64 noundef 32) #28 ; 0 uses
  br label %bb.j

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.ba = icmp eq i32 %i.as, 8
  %i.bb = icmp eq i32 %i.au, 64                   ; 3 uses
  %or.cond3 = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1880
  store ptr @.str.104, ptr %14, align 8, !tbaa !88
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 11, ptr %i.bd, align 8, !tbaa !91
  %i.be = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcpyEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull %i.bc, ptr noundef nonnull dead_on_return %14, i64 noundef 32) #28 ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.bf = icmp eq i32 %i.as, 4
  %or.cond5 = select i1 %i.bf, i1 %i.bb, i1 false
  br i1 %or.cond5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1880
  store ptr @.str.105, ptr %15, align 8, !tbaa !88
  %i.bh = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 13, ptr %i.bh, align 8, !tbaa !91
  %i.bi = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcpyEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull %i.bg, ptr noundef nonnull dead_on_return %15, i64 noundef 32) #28 ; 0 uses
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.bj = icmp eq i32 %i.as, 3
  %or.cond7 = select i1 %i.bj, i1 %i.bb, i1 false
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1880 ; 2 uses
  br i1 %or.cond7, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr @.str.106, ptr %16, align 8, !tbaa !88
  %i.bl = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 5, ptr %i.bl, align 8, !tbaa !91
  %i.bm = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcpyEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull %i.bk, ptr noundef nonnull dead_on_return %16, i64 noundef 32) #28 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store ptr @.str.107, ptr %17, align 8, !tbaa !88
  %i.bn = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 7, ptr %i.bn, align 8, !tbaa !91
  %i.bo = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcpyEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull %i.bk, ptr noundef nonnull dead_on_return %17, i64 noundef 32) #28 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.h, %bb.i, %bb.f, %bb.b
  ret void
}

declare void @_ZN3dpx6Writer11SetUserDataEl(ptr noundef nonnull align 8 dereferenceable(2080), i64 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN3dpx6Writer11WriteHeaderEv(ptr noundef nonnull align 8 dereferenceable(2080)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN3dpx6Writer13WriteUserDataEPv(ptr noundef nonnull align 8 dereferenceable(2080), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !64     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28.i = icmp ult i64 %i.l, %i.h
  br i1 %.not28.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !79
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.q = add nsw i64 %i.h, -1                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.b, i64 %i.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.q, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i.i, ptr %i.a, align 8, !tbaa !65
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %i.h
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.159) #33
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.e
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.h)
  %i.u = add nuw i64 %.sroa.speculated.i.i, %i.f
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 9223372036854775807) ; 2 uses
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #32 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  store i8 0, ptr %i.x, align 1, !tbaa !79
  %i.y = add nsw i64 %i.h, -1                     ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.y, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i: ; preds = %bb.g, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %.not35.i = icmp eq ptr %i.b, %i.c
  br i1 %.not35.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i: ; preds = %bb.h, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i
  %.not.i33.i = icmp eq ptr %i.c, null
  br i1 %.not.i33.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  %i.ab = sub i64 %i.k, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #30
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i: ; preds = %bb.i, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !65
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store ptr %i.ad, ptr %i.i, align 8, !tbaa !71
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.j:                                             ; preds = %bb.a
  %i.ae = icmp ult i64 %1, %i.f
  br i1 %i.ae, label %bb.k, label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.af
  br i1 %.not.i4, label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i:          ; preds = %bb.k
  store ptr %i.af, ptr %i.a, align 8, !tbaa !65
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit:   ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i, %bb.j
  ret void
}

; Function Attrs: nounwind
declare noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb(ptr noundef nonnull align 8 dereferenceable(160), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -2147483500, 256) i32 @_ZN11OpenImageIO4v3_19DPXOutput20get_image_descriptorEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2424) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2368
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.e = load i32, ptr %i.d, align 4, !tbaa !199  ; 3 uses
  switch i32 %i.e, label %bb.j [
    i32 1, label %bb.b
    i32 3, label %bb.k
    i32 4, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !200
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !201  ; 3 uses
  %.not = icmp eq ptr %i.h, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.j, ptr %1, align 8, !tbaa !98
  br i1 %.not, label %._crit_edge.i.i17, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !85   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !90   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.m, ptr %i.a, align 8, !tbaa !99
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !85
  %i.p = load i64, ptr %i.a, align 8, !tbaa !99
  store i64 %i.p, ptr %i.j, align 8, !tbaa !79
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.q = phi ptr [ %i.o, %.noexc.i ], [ %i.j, %bb.c ] ; 2 uses
  switch i64 %i.m, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %i.k, align 1, !tbaa !79
  store i8 %i.r, ptr %i.q, align 1, !tbaa !79
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %bb.f

._crit_edge.i.i17:                                ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !90
  store i8 0, ptr %i.j, align 8, !tbaa !79
  br label %.critedge

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.t = load i64, ptr %i.a, align 8, !tbaa !99   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !90
  %i.v = load ptr, ptr %1, align 8, !tbaa !85
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %._crit_edge.i.i17
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  %i.y = load i32, ptr %i.x, align 4, !tbaa !202
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !90
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread23.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.g
  %i.ad = load ptr, ptr %1, align 8, !tbaa !85
  %lhsc = load i8, ptr %i.ad, align 1
  %i.ae = icmp eq i8 %lhsc, 90
  br i1 %i.ae, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread23

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread23: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !203
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread23.thread: ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !203
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread25

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread23
  %i.al = load ptr, ptr %1, align 8, !tbaa !85    ; 2 uses
  %lhsc29 = load i8, ptr %i.al, align 1
  %i.am = icmp eq i8 %lhsc29, 65
  br i1 %i.am, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20
  %lhsc30 = load i8, ptr %i.al, align 1
  %i.an = icmp eq i8 %lhsc30, 82
  br i1 %i.an, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread25

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread25: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread23.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22
  %i.ao = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.98)
  br i1 %i.ao, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread25
  %i.ap = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.99)
  %. = select i1 %i.ap, i32 2, i32 6
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread23.thread, %bb.h, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread25, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread23, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20, %.critedge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.0 = phi i32 [ 3, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread25 ], [ 8, %.critedge ], [ 4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread23 ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22 ], [ %., %bb.h ], [ 8, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20 ], [ 4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread23.thread ]
  %i.aq = load ptr, ptr %1, align 8, !tbaa !85    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !79
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.av = icmp slt i32 %i.e, 9
  %i.aw = add nsw i32 %i.e, 148
  %spec.select = select i1 %i.av, i32 %i.aw, i32 255
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.a, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.1 = phi i32 [ %spec.select, %bb.j ], [ 50, %bb.a ], [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 51, %bb.i ]
  ret i32 %.1
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv() local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK11OpenImageIO4v3_111ColorConfig10equivalentENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil12istarts_withENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 256) i32 @_ZN11OpenImageIO4v3_19DPXOutput30get_characteristic_from_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %10 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %12 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %13 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %14 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %15 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %16 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %17 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %18 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %19 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %20 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %21 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %22 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %23 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %24 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %25 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %26 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %27 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %28 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %29 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !85
  store ptr %i.a, ptr %2, align 8, !tbaa !88
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 14 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !90
  store i64 %i.d, ptr %i.b, align 8, !tbaa !91
  store ptr @.str.66, ptr %3, align 8, !tbaa !88
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 12, ptr %i.e, align 8, !tbaa !91
  %i.f = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %2, ptr noundef nonnull dead_on_return %3)
  br i1 %i.f, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !85
  store ptr %i.g, ptr %4, align 8, !tbaa !88
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load i64, ptr %i.c, align 8, !tbaa !90
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_19DPXOutput30get_characteristic_from_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 11, ptr %i.ai, align 8, !tbaa !91
  %i.aj = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %14, ptr noundef nonnull dead_on_return %15)
  br i1 %i.aj, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %1, align 8, !tbaa !85
  store ptr %i.ak, ptr %16, align 8, !tbaa !88
  %i.al = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.am = load i64, ptr %i.c, align 8, !tbaa !90
  store i64 %i.am, ptr %i.al, align 8, !tbaa !91
  store ptr @.str.89, ptr %17, align 8, !tbaa !88
  %i.an = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 25, ptr %i.an, align 8, !tbaa !91
  %i.ao = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %16, ptr noundef nonnull dead_on_return %17)
  br i1 %i.ao, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %1, align 8, !tbaa !85
  store ptr %i.ap, ptr %18, align 8, !tbaa !88
  %i.aq = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ar = load i64, ptr %i.c, align 8, !tbaa !90
  store i64 %i.ar, ptr %i.aq, align 8, !tbaa !91
  store ptr @.str.90, ptr %19, align 8, !tbaa !88
  %i.as = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 20, ptr %i.as, align 8, !tbaa !91
  %i.at = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %18, ptr noundef nonnull dead_on_return %19)
  br i1 %i.at, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = load ptr, ptr %1, align 8, !tbaa !85
  store ptr %i.au, ptr %20, align 8, !tbaa !88
  %i.av = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.aw = load i64, ptr %i.c, align 8, !tbaa !90
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !91
  store ptr @.str.91, ptr %21, align 8, !tbaa !88
  %i.ax = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 20, ptr %i.ax, align 8, !tbaa !91
  %i.ay = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %20, ptr noundef nonnull dead_on_return %21)
  br i1 %i.ay, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = load ptr, ptr %1, align 8, !tbaa !85
  store ptr %i.az, ptr %22, align 8, !tbaa !88
  %i.ba = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.bb = load i64, ptr %i.c, align 8, !tbaa !90
  store i64 %i.bb, ptr %i.ba, align 8, !tbaa !91
  store ptr @.str.92, ptr %23, align 8, !tbaa !88
  %i.bc = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 19, ptr %i.bc, align 8, !tbaa !91
  %i.bd = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %22, ptr noundef nonnull dead_on_return %23)
  br i1 %i.bd, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = load ptr, ptr %1, align 8, !tbaa !85
  store ptr %i.be, ptr %24, align 8, !tbaa !88
  %i.bf = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.bg = load i64, ptr %i.c, align 8, !tbaa !90
  store i64 %i.bg, ptr %i.bf, align 8, !tbaa !91
  store ptr @.str.93, ptr %25, align 8, !tbaa !88
  %i.bh = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 14, ptr %i.bh, align 8, !tbaa !91
  %i.bi = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %24, ptr noundef nonnull dead_on_return %25)
  br i1 %i.bi, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = load ptr, ptr %1, align 8, !tbaa !85
  store ptr %i.bj, ptr %26, align 8, !tbaa !88
  %i.bk = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.bl = load i64, ptr %i.c, align 8, !tbaa !90
  store i64 %i.bl, ptr %i.bk, align 8, !tbaa !91
  store ptr @.str.94, ptr %27, align 8, !tbaa !88
  %i.bm = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 19, ptr %i.bm, align 8, !tbaa !91
  %i.bn = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %26, ptr noundef nonnull dead_on_return %27)
  br i1 %i.bn, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = load ptr, ptr %1, align 8, !tbaa !85
  store ptr %i.bo, ptr %28, align 8, !tbaa !88
  %i.bp = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.bq = load i64, ptr %i.c, align 8, !tbaa !90
  store i64 %i.bq, ptr %i.bp, align 8, !tbaa !91
  store ptr @.str.95, ptr %29, align 8, !tbaa !88
  %i.br = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 3, ptr %i.br, align 8, !tbaa !91
  %i.bs = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %28, ptr noundef nonnull dead_on_return %29)
  %. = select i1 %i.bs, i32 13, i32 255
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 12, %bb.m ], [ 0, %bb.a ], [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ 5, %bb.f ], [ 6, %bb.g ], [ 7, %bb.h ], [ 8, %bb.i ], [ 9, %bb.j ], [ 10, %bb.k ], [ 11, %bb.l ], [ %., %bb.n ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_19ImageSpec10set_formatENS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160), i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

declare noundef zeroext i1 @_ZN3dpx6Writer12WriteElementEiPvNS_8DataSizeE(ptr noundef nonnull align 8 dereferenceable(2080), i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.113", align 16 ; 4 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28, !noalias !204
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !204
  %i.b = load ptr, ptr %2, align 8, !tbaa !80, !noalias !204
  %i.c = ptrtoint ptr %i.b to i64
  store i64 %i.c, ptr %3, align 16, !noalias !204
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull %1, i64 %i.a, i64 12, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !204
  %i.d = load ptr, ptr %5, align 8, !tbaa !85
  store ptr %i.d, ptr %4, align 8, !tbaa !88
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !90
  store i64 %i.g, ptr %i.e, align 8, !tbaa !91
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %5, align 8, !tbaa !85     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8, !tbaa !79
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %5, align 8, !tbaa !85     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.q = load i64, ptr %i.o, align 8, !tbaa !79
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %i.m
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput15write_scanlinesEiiiNS0_8TypeDescEPKvll(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef, i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare noundef zeroext i1 @_ZN3dpx6Writer6FinishEv(ptr noundef nonnull align 8 dereferenceable(2080)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_19DPXOutput14write_scanlineEiiNS0_8TypeDescEPKvl(ptr noundef nonnull align 8 dereferenceable(2424) %0, i32 noundef %1, i32 noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.81)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2392
  store i8 1, ptr %i.c, align 8, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2368
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2360
  %i.f = load i32, ptr %i.e, align 8, !tbaa !66
  %i.g = sext i32 %i.f to i64
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.i = getelementptr inbounds nuw [160 x i8], ptr %i.h, i64 %i.g ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 60
  %i.k = load i32, ptr %i.j, align 4, !tbaa !199
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %3, ptr %6, align 8
  %i.l = icmp eq i64 %5, -9223372036854775808
  br i1 %i.l, label %bb.d, label %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlNS0_8TypeDescEi.exit

bb.d:                                             ; preds = %bb.c
  %i.m = lshr i64 %3, 8
  %i.n = lshr i64 %3, 32
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = sext i32 %i.k to i64
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.o, i32 1)
  %spec.select.i.i = zext nneg i32 %narrow.i.i to i64
  %i.q = and i64 %i.m, 255
  %i.r = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %6) #28
  %i.s = mul nuw nsw i64 %i.q, %spec.select.i.i
  %i.t = mul i64 %i.s, %i.p
  %i.u = mul i64 %i.t, %i.r
  br label %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlNS0_8TypeDescEi.exit

_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlNS0_8TypeDescEi.exit: ; preds = %bb.c, %bb.d
  %.0 = phi i64 [ %i.u, %bb.d ], [ %5, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2296 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2396
  %i.x = load i32, ptr %i.w, align 4, !tbaa !165
  %i.y = call noundef ptr @_ZN11OpenImageIO4v3_111ImageOutput18to_native_scanlineENS0_8TypeDescEPKvlRSt6vectorIhSaIhEEjii(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 %3, ptr noundef %4, i64 noundef %.0, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i32 noundef %i.x, i32 noundef %1, i32 noundef %2) ; 4 uses
  %i.z = icmp eq ptr %i.y, %4
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlNS0_8TypeDescEi.exit
  %i.aa = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.i, i1 noundef zeroext false) #28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  call void @_ZNSt6vectorIhSaIhEE13_M_assign_auxIPhEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef %i.y, ptr noundef %i.ab)
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlNS0_8TypeDescEi.exit
  %.022 = phi ptr [ %i.ac, %bb.e ], [ %i.y, %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlNS0_8TypeDescEi.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2272
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !74
  %i.ag = sub nsw i32 %1, %i.af
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2352
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !181
  %i.ak = mul nsw i64 %i.aj, %i.ah
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !64
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2344
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !180, !range !76, !noundef !77
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aq = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.i, i1 noundef zeroext false) #28
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr align 1 %.022, i64 %i.aq, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2324
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !119
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2320
  %i.au = load i32, ptr %i.at, align 8, !tbaa !78
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2328
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !121
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !113
  %i.az = call noundef zeroext i1 @_ZN3dpx15ConvertToNativeENS_10DescriptorENS_8DataSizeENS_14CharacteristicEiiPKvPv(i32 noundef %i.as, i32 noundef %i.au, i32 noundef %i.aw, i32 noundef %i.ay, i32 noundef 1, ptr noundef %.022, ptr noundef nonnull %i.am)
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.b
  %.1 = phi i1 [ false, %bb.b ], [ true, %bb.i ], [ false, %bb.h ]
  ret i1 %.1
}

declare noundef ptr @_ZN11OpenImageIO4v3_111ImageOutput18to_native_scanlineENS0_8TypeDescEPKvlRSt6vectorIhSaIhEEjii(ptr noundef nonnull align 8 dereferenceable(184), i64, ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN3dpx15ConvertToNativeENS_10DescriptorENS_8DataSizeENS_14CharacteristicEiiPKvPv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_19DPXOutput10write_tileEiiiNS0_8TypeDescEPKvlll(ptr noundef nonnull align 8 dereferenceable(2424) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 %4, ptr noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.82)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2400
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.e = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput25copy_tile_to_image_bufferEiiiNS0_8TypeDescEPKvlllPvS2_(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 %4, ptr noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, ptr noundef nonnull %i.d, i64 256)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.e, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput25copy_tile_to_image_bufferEiiiNS0_8TypeDescEPKvlllPvS2_(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i64) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !90   ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !85
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp eq i32 %bcmp, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ true, %bb.b ]
  ret i1 %i.h
}

; Function Attrs: nounwind
declare noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcpyEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef, ptr noundef dead_on_return, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK11OpenImageIO4v3_19DPXOutput11format_nameEv(ptr noundef nonnull align 8 dereferenceable(2424) %0) unnamed_addr #3 align 2 {
bb.a:
  ret ptr @.str
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK11OpenImageIO4v3_19DPXOutput8supportsENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(2424) %0, ptr noundef dead_on_return %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !88     ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !91   ; 8 uses
  switch i64 %i.c, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit35.thread [
    i64 10, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
    i64 5, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1
    i64 9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6
    i64 13, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i11
    i64 7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i16
    i64 6, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i26
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 1
  %i.e = xor i64 %i.d, 7020383295786218861
  %i.f = getelementptr i8, ptr %i.a, i64 8
  %i.g = load i16, ptr %i.f, align 1
  %i.h = zext i16 %i.g to i64
  %i.i = xor i64 %i.h, 25959
  %i.j = or i64 %i.e, %i.i
  %i.k = icmp ne i64 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit35.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1:  ; preds = %bb.a
  %bcmp.i2 = tail call i32 @bcmp(ptr %i.a, ptr nonnull @.str.109, i64 %i.c)
  %.not.i.i3 = icmp eq i32 %bcmp.i2, 0
  br i1 %.not.i.i3, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit35.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6:  ; preds = %bb.a
  %bcmp.i7 = tail call i32 @bcmp(ptr %i.a, ptr nonnull @.str.110, i64 %i.c)
  %.not.i.i8 = icmp eq i32 %bcmp.i7, 0
  br i1 %.not.i.i8, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit35.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i11: ; preds = %bb.a
  %bcmp.i12 = tail call i32 @bcmp(ptr %i.a, ptr nonnull @.str.111, i64 %i.c)
  %.not.i.i13 = icmp eq i32 %bcmp.i12, 0
  br i1 %.not.i.i13, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i21

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i16: ; preds = %bb.a
  %bcmp.i17 = tail call i32 @bcmp(ptr %i.a, ptr nonnull @.str.112, i64 %i.c)
  %.not.i.i18 = icmp eq i32 %bcmp.i17, 0
  br i1 %.not.i.i18, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i31

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i21: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i11
  %bcmp.i22 = tail call i32 @bcmp(ptr %i.a, ptr nonnull @.str.113, i64 %i.c)
  %.not.i.i23 = icmp eq i32 %bcmp.i22, 0
  br i1 %.not.i.i23, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit35.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i26: ; preds = %bb.a
  %bcmp.i27 = tail call i32 @bcmp(ptr %i.a, ptr nonnull @.str.114, i64 %i.c)
  %.not.i.i28 = icmp eq i32 %bcmp.i27, 0
  br i1 %.not.i.i28, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit35.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i31: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i16
  %bcmp.i32 = tail call i32 @bcmp(ptr %i.a, ptr nonnull @.str.115, i64 %i.c)
  %.not.i.i33 = icmp eq i32 %bcmp.i32, 0
  br i1 %.not.i.i33, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit35.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit35.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i26, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i21, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i31
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit35.thread, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i31, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i26, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i21, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i16, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i11, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %.0 = phi i32 [ 1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ 1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i26 ], [ 1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i21 ], [ 1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i16 ], [ 1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i11 ], [ 1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6 ], [ 1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1 ], [ 1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i31 ], [ 0, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit35.thread ]
  ret i32 %.0
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput11write_imageENS0_8TypeDescERKNS0_10image_spanIKSt4byteLm4EEE(ptr noundef nonnull align 8 dereferenceable(184), i64, ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput14write_scanlineEiNS0_8TypeDescERKNS0_10image_spanIKSt4byteLm4EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput15write_scanlinesEiiNS0_8TypeDescERKNS0_10image_spanIKSt4byteLm4EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput10write_tileEiiiNS0_8TypeDescERKNS0_10image_spanIKSt4byteLm4EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput11write_tilesEiiiiiiNS0_8TypeDescERKNS0_10image_spanIKSt4byteLm4EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput15write_rectangleEiiiiiiNS0_8TypeDescERKNS0_10image_spanIKSt4byteLm4EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput20write_deep_scanlinesEiiiRKNS0_8DeepDataE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 1) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput16write_deep_tilesEiiiiiiRKNS0_8DeepDataE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 1) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput16write_deep_imageERKNS0_8DeepDataE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput13set_thumbnailERKNS0_8ImageBufE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 1 %1) unnamed_addr #3 align 2 {
bb.a:
  ret i1 false
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput11write_tilesEiiiiiiNS0_8TypeDescEPKvlll(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput15write_rectangleEiiiiiiNS0_8TypeDescEPKvlll(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput11write_imageENS0_8TypeDescEPKvlllPFbPvfES5_(ptr noundef nonnull align 8 dereferenceable(184), i64, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput10copy_imageEPNS0_10ImageInputE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef) unnamed_addr #1

declare noundef i32 @_ZN11OpenImageIO4v3_111ImageOutput14send_to_outputEPKcz(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef, ...) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput11set_ioproxyEPNS0_10Filesystem7IOProxyE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef) unnamed_addr #1

declare noundef i64 @_ZNK11OpenImageIO4v3_111ImageOutput8heapsizeEv(ptr noundef nonnull align 8 dereferenceable(184)) unnamed_addr #1

declare noundef i64 @_ZNK11OpenImageIO4v3_111ImageOutput9footprintEv(ptr noundef nonnull align 8 dereferenceable(184)) unnamed_addr #1
end_hunk_2
begin_hunk_3_@llvm.umin.i32
attributes #21 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #25 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nounwind }
attributes #29 = { noreturn nounwind }
attributes #30 = { builtin nounwind }
attributes #31 = { nounwind willreturn memory(none) }
attributes #32 = { builtin allocsize(0) }
attributes #33 = { noreturn }
attributes #34 = { cold nounwind }
attributes #35 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !41, i64 184}
!10 = !{!"_ZTSN11OpenImageIO4v3_19DPXOutputE", !11, i64 0, !41, i64 184, !42, i64 192, !49, i64 2272, !49, i64 2296, !54, i64 2320, !55, i64 2324, !56, i64 2328, !56, i64 2332, !57, i64 2336, !4, i64 2340, !25, i64 2344, !25, i64 2345, !48, i64 2352, !4, i64 2360, !4, i64 2364, !58, i64 2368, !25, i64 2392, !4, i64 2396, !49, i64 2400}
!11 = !{!"_ZTSN11OpenImageIO4v3_111ImageOutputE", !12, i64 8, !32, i64 168}
!12 = !{!"_ZTSN11OpenImageIO4v3_19ImageSpecE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !13, i64 64, !14, i64 72, !20, i64 96, !4, i64 120, !4, i64 124, !25, i64 128, !26, i64 136}
!13 = !{!"_ZTSN11OpenImageIO4v3_18TypeDescE", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !4, i64 4}
!14 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !15, i64 0}
!15 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !16, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_Vector_implE", !17, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!18 = !{!"p1 _ZTSN11OpenImageIO4v3_18TypeDescE", !19, i64 0}
!19 = !{!"any pointer", !5, i64 0}
!20 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !21, i64 0}
!21 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !22, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !23, i64 0}
!23 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!24 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0}
!25 = !{!"bool", !5, i64 0}
!26 = !{!"_ZTSN11OpenImageIO4v3_114ParamValueListE", !27, i64 0}
!27 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !28, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !29, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE12_Vector_implE", !30, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!31 = !{!"p1 _ZTSN11OpenImageIO4v3_110ParamValueE", !19, i64 0}
!32 = !{!"_ZTSSt10unique_ptrIN11OpenImageIO4v3_111ImageOutput4ImplEPFvPS3_EE", !33, i64 0}
!33 = !{!"_ZTSSt15__uniq_ptr_dataIN11OpenImageIO4v3_111ImageOutput4ImplEPFvPS3_ELb1ELb1EE", !34, i64 0}
!34 = !{!"_ZTSSt15__uniq_ptr_implIN11OpenImageIO4v3_111ImageOutput4ImplEPFvPS3_EE", !35, i64 0}
!35 = !{!"_ZTSSt5tupleIJPN11OpenImageIO4v3_111ImageOutput4ImplEPFvS4_EEE", !36, i64 0}
!36 = !{!"_ZTSSt11_Tuple_implILm0EJPN11OpenImageIO4v3_111ImageOutput4ImplEPFvS4_EEE", !37, i64 0, !39, i64 8}
!37 = !{!"_ZTSSt11_Tuple_implILm1EJPFvPN11OpenImageIO4v3_111ImageOutput4ImplEEEE", !38, i64 0}
!38 = !{!"_ZTSSt10_Head_baseILm1EPFvPN11OpenImageIO4v3_111ImageOutput4ImplEELb0EE", !19, i64 0}
!39 = !{!"_ZTSSt10_Head_baseILm0EPN11OpenImageIO4v3_111ImageOutput4ImplELb0EE", !40, i64 0}
!40 = !{!"p1 _ZTSN11OpenImageIO4v3_111ImageOutput4ImplE", !19, i64 0}
!41 = !{!"p1 _ZTS9OutStream", !19, i64 0}
!42 = !{!"_ZTSN3dpx6WriterE", !43, i64 8, !48, i64 2064, !41, i64 2072}
!43 = !{!"_ZTSN3dpx6HeaderE", !44, i64 0, !47, i64 1664, !25, i64 2048}
!44 = !{!"_ZTSN3dpx13GenericHeaderE", !4, i64 0, !4, i64 4, !5, i64 8, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !5, i64 36, !5, i64 136, !5, i64 160, !5, i64 260, !5, i64 460, !4, i64 660, !5, i64 664, !45, i64 768, !45, i64 770, !4, i64 772, !4, i64 776, !5, i64 780, !5, i64 1356, !4, i64 1408, !4, i64 1412, !46, i64 1416, !46, i64 1420, !4, i64 1424, !4, i64 1428, !5, i64 1432, !5, i64 1532, !5, i64 1556, !5, i64 1588, !5, i64 1620, !5, i64 1628, !46, i64 1636, !46, i64 1640, !5, i64 1644}
!45 = !{!"short", !5, i64 0}
!46 = !{!"float", !5, i64 0}
!47 = !{!"_ZTSN3dpx14IndustryHeaderE", !5, i64 0, !5, i64 2, !5, i64 4, !5, i64 6, !5, i64 12, !5, i64 16, !4, i64 48, !4, i64 52, !4, i64 56, !46, i64 60, !46, i64 64, !5, i64 68, !5, i64 100, !5, i64 200, !4, i64 256, !4, i64 260, !5, i64 264, !5, i64 265, !5, i64 266, !5, i64 267, !46, i64 268, !46, i64 272, !46, i64 276, !46, i64 280, !46, i64 284, !46, i64 288, !46, i64 292, !46, i64 296, !46, i64 300, !46, i64 304, !5, i64 308}
!48 = !{!"long", !5, i64 0}
!49 = !{!"_ZTSSt6vectorIhSaIhEE", !50, i64 0}
!50 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !51, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !52, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!53 = !{!"p1 omnipotent char", !19, i64 0}
!54 = !{!"_ZTSN3dpx8DataSizeE", !5, i64 0}
!55 = !{!"_ZTSN3dpx10DescriptorE", !5, i64 0}
!56 = !{!"_ZTSN3dpx14CharacteristicE", !5, i64 0}
!57 = !{!"_ZTSN3dpx7PackingE", !5, i64 0}
!58 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_19ImageSpecESaIS2_EE", !59, i64 0}
!59 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_19ImageSpecESaIS2_EE", !60, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_19ImageSpecESaIS2_EE12_Vector_implE", !61, i64 0}
!61 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_19ImageSpecESaIS2_EE17_Vector_impl_dataE", !62, i64 0, !62, i64 8, !62, i64 16}
!62 = !{!"p1 _ZTSN11OpenImageIO4v3_19ImageSpecE", !19, i64 0}
!63 = distinct !{null}
!64 = !{!52, !53, i64 0}
!65 = !{!52, !53, i64 8}
!66 = !{!10, !4, i64 2360}
!67 = !{!10, !4, i64 2364}
!68 = !{!61, !62, i64 0}
!69 = !{!61, !62, i64 8}
!70 = !{!10, !25, i64 2392}
!71 = !{!52, !53, i64 16}
!72 = !{!61, !62, i64 16}
!73 = !{!12, !4, i64 48}
!74 = !{!12, !4, i64 4}
!75 = !{!12, !4, i64 16}
!76 = !{i8 0, i8 2}
!77 = !{}
!78 = !{!10, !54, i64 2320}
!79 = !{!5, !5, i64 0}
!80 = !{!53, !53, i64 0}
!81 = !{!62, !62, i64 0}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!84 = distinct !{!84, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!85 = !{!86, !53, i64 0}
!86 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !87, i64 0, !48, i64 8, !5, i64 16}
!87 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !53, i64 0}
!88 = !{!89, !53, i64 0}
!89 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !53, i64 0, !48, i64 8}
!90 = !{!86, !48, i64 8}
!91 = !{!89, !48, i64 8}
!92 = !{!93, !94, i64 8}
!93 = !{!"_ZTS9OutStream", !94, i64 8}
!94 = !{!"p1 _ZTSN11OpenImageIO4v3_110Filesystem7IOProxyE", !19, i64 0}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!97 = distinct !{!97, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!98 = !{!87, !53, i64 0}
!99 = !{!48, !48, i64 0}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!102 = distinct !{!102, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!105 = distinct !{!105, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!108 = distinct !{!108, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!111 = distinct !{!111, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!112 = !{!10, !25, i64 2345}
!113 = !{!12, !4, i64 12}
!114 = !{!10, !4, i64 2340}
!115 = !{!116, !5, i64 23}
!116 = !{!"_ZTSN3dpx12ImageElementE", !4, i64 0, !4, i64 4, !46, i64 8, !4, i64 12, !46, i64 16, !5, i64 20, !5, i64 21, !5, i64 22, !5, i64 23, !45, i64 24, !45, i64 26, !4, i64 28, !4, i64 32, !4, i64 36, !5, i64 40}
!117 = !{!13, !5, i64 0}
!118 = !{!13, !4, i64 4}
!119 = !{!10, !55, i64 2324}
!120 = !{!10, !56, i64 2332}
!121 = !{!10, !56, i64 2328}
!122 = !{!10, !57, i64 2336}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!125 = distinct !{!125, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!126 = distinct !{!126, !127}
!127 = !{!"llvm.loop.mustprogress"}
!128 = !{!44, !46, i64 1636}
!129 = !{!44, !46, i64 1640}
!130 = !{!47, !4, i64 48}
!131 = !{!47, !4, i64 52}
!132 = !{!47, !4, i64 56}
!133 = !{!47, !46, i64 60}
!134 = !{!47, !46, i64 64}
!135 = !{!47, !5, i64 264}
!136 = !{!47, !5, i64 265}
!137 = !{!47, !46, i64 268}
!138 = !{!47, !46, i64 272}
!139 = !{!47, !46, i64 276}
!140 = !{!47, !46, i64 280}
!141 = !{!47, !46, i64 288}
!142 = !{!47, !46, i64 292}
!143 = !{!47, !46, i64 296}
!144 = !{!47, !46, i64 300}
!145 = !{!47, !46, i64 304}
!146 = !{!44, !4, i64 1408}
!147 = !{!44, !4, i64 1412}
!148 = !{!44, !45, i64 768}
!149 = !{!150, !25, i64 38}
!150 = !{!"_ZTSN11OpenImageIO4v3_110ParamValueE", !151, i64 0, !13, i64 8, !5, i64 16, !4, i64 32, !5, i64 36, !25, i64 37, !25, i64 38}
!151 = !{!"_ZTSN11OpenImageIO4v3_17ustringE", !53, i64 0}
!152 = !{!47, !4, i64 256}
!153 = !{!47, !4, i64 260}
!154 = !{!155}
!155 = distinct !{!155, !156, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!156 = distinct !{!156, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!157 = !{!158}
!158 = distinct !{!158, !159, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!159 = distinct !{!159, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!160 = !{!161}
!161 = distinct !{!161, !162, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!162 = distinct !{!162, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!163 = !{!150, !4, i64 32}
!164 = !{!13, !5, i64 1}
!165 = !{!10, !4, i64 2396}
!166 = !{!12, !4, i64 52}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!169 = distinct !{!169, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!170 = !{!171}
!171 = distinct !{!171, !172, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!172 = distinct !{!172, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!173 = !{!174}
!174 = distinct !{!174, !175, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!175 = distinct !{!175, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!176 = !{!177}
!177 = distinct !{!177, !178, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv: argument 0"}
!178 = distinct !{!178, !"_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv"}
!179 = !{!12, !5, i64 64}
!180 = !{!10, !25, i64 2344}
!181 = !{!10, !48, i64 2352}
!182 = !{!183, !183, i64 0}
!183 = !{!"p1 _ZTS8_IO_FILE", !19, i64 0}
!184 = !{!185}
!185 = distinct !{!185, !186, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA7_cJRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!186 = distinct !{!186, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA7_cJRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!187 = !{!188}
!188 = distinct !{!188, !189, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA7_cJRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!189 = distinct !{!189, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA7_cJRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!190 = !{!191}
!191 = distinct !{!191, !192, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA7_cJRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!192 = distinct !{!192, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA7_cJRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!193 = !{!194}
!194 = distinct !{!194, !195, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA7_cJRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!195 = distinct !{!195, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA7_cJRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!196 = !{!197}
!197 = distinct !{!197, !198, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA7_cJRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!198 = distinct !{!198, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA7_cJRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!199 = !{!12, !4, i64 60}
!200 = !{!23, !24, i64 8}
!201 = !{!23, !24, i64 0}
!202 = !{!12, !4, i64 124}
!203 = !{!12, !4, i64 120}
!204 = !{!205}
!205 = distinct !{!205, !206, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKS5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!206 = distinct !{!206, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKS5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!207 = !{!17, !18, i64 8}
!208 = !{!17, !18, i64 0}
!209 = !{!17, !18, i64 16}
!210 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!211 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!212 = distinct !{!212, !127, !213, !214}
!213 = !{!"llvm.loop.isvectorized", i32 1}
!214 = !{!"llvm.loop.unroll.runtime.disable"}
!215 = distinct !{!215, !127, !213}
!216 = !{!23, !24, i64 16}
!217 = distinct !{!217, !127}
!218 = distinct !{!218, !127}
!219 = !{!24, !24, i64 0}
!220 = distinct !{!220, !127}
!221 = distinct !{!221, !127}
!222 = distinct !{!222, !127}
!223 = distinct !{!223, !127}
!224 = !{!30, !31, i64 8}
!225 = !{!30, !31, i64 0}
!226 = !{!30, !31, i64 16}
!227 = distinct !{!227, !127}
!228 = distinct !{!228, !127}
!229 = !{!31, !31, i64 0}
!230 = distinct !{!230, !127}
!231 = distinct !{!231, !127}
!232 = !{!151, !53, i64 0}
!233 = !{!150, !5, i64 36}
!234 = distinct !{!234, !127}
!235 = distinct !{!235, !127}
!236 = distinct !{!236, !127}
!237 = !{!238, !19, i64 24}
!238 = !{!"_ZTSN3fmt3v126detail6bufferIcEE", !53, i64 0, !48, i64 8, !48, i64 16, !19, i64 24}
!239 = !{!238, !53, i64 0}
!240 = !{!238, !48, i64 16}
!241 = !{!242}
!242 = distinct !{!242, !243, !"_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!243 = distinct !{!243, !"_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!244 = !{!238, !48, i64 8}
!245 = !{!246, !246, i64 0}
!246 = !{!"_ZTSN3fmt3v126detail4typeE", !5, i64 0}
!247 = !{!248, !248, i64 0}
!248 = !{!"p1 _ZTSN3fmt3v126detail6bufferIcEE", !19, i64 0}
!249 = distinct !{null, null}
!250 = !{!251, !4, i64 16}
!251 = !{!"_ZTSN3fmt3v1213parse_contextIcEE", !252, i64 0, !4, i64 16}
!252 = !{!"_ZTSN3fmt3v1217basic_string_viewIcEE", !53, i64 0, !48, i64 8}
!253 = !{!254, !254, i64 0}
!254 = !{!"long long", !5, i64 0}
!255 = !{!19, !19, i64 0}
!256 = !{!257, !254, i64 0}
!257 = !{!"_ZTSN3fmt3v1217basic_format_argsINS0_7contextEEE", !254, i64 0, !5, i64 8}
!258 = !{!259, !261}
!259 = distinct !{!259, !260, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!260 = distinct !{!260, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!261 = distinct !{!261, !262, !"_ZNK3fmt3v127context3argEi: argument 0"}
!262 = distinct !{!262, !"_ZNK3fmt3v127context3argEi"}
!263 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIjTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null}
!264 = distinct !{!264, !127}
!265 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIyTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null}
!266 = distinct !{!266, !127}
!267 = !{!268, !4, i64 0}
!268 = !{!"_ZTSN3fmt3v1211basic_specsE", !4, i64 0, !5, i64 4}
!269 = !{!270, !4, i64 12}
!270 = !{!"_ZTSN3fmt3v1212format_specsE", !268, i64 0, !4, i64 8, !4, i64 12}
!271 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null}
!272 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null, null}
!273 = distinct !{!273, !127}
!274 = !{!275, !48, i64 0}
!275 = !{!"_ZTSZN3fmt3v126detail9write_ptrIcNS0_14basic_appenderIcEEmEET0_S5_T1_PKNS0_12format_specsEEUlS4_E_", !48, i64 0, !4, i64 8}
!276 = !{!275, !4, i64 8}
!277 = !{!278, !278, i64 0}
!278 = !{!"p1 _ZTSN3fmt3v126detail14format_handlerIcEE", !19, i64 0}
!279 = !{!280, !4, i64 8}
!280 = !{!"_ZTSZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_E10id_adapter", !278, i64 0, !4, i64 8}
!281 = !{!282, !284}
!282 = distinct !{!282, !283, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!283 = distinct !{!283, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!284 = distinct !{!284, !285, !"_ZNK3fmt3v127context3argEi: argument 0"}
!285 = distinct !{!285, !"_ZNK3fmt3v127context3argEi"}
!286 = distinct !{null, null, null}
!287 = distinct !{null, null, null}
!288 = distinct !{null, null, null}
!289 = distinct !{null, null, null, null}
!290 = distinct !{null, null}
!291 = distinct !{null, null, null}
!292 = distinct !{null, null}
!293 = distinct !{!293, !127, !213, !214}
!294 = !{!"branch_weights", i32 4, i32 28}
!295 = distinct !{!295, !127, !213, !214}
!296 = distinct !{!296, !297}
!297 = !{!"llvm.loop.unroll.disable"}
!298 = distinct !{!298, !127}
!299 = distinct !{!299, !127, !213}
!300 = distinct !{!300, !127}
!301 = distinct !{!301, !127}
!302 = !{!303, !304, i64 0}
!303 = !{!"_ZTSSt6locale", !304, i64 0}
!304 = !{!"p1 _ZTSNSt6locale5_ImplE", !19, i64 0}
!305 = !{!306, !48, i64 16}
!306 = !{!"_ZTSNSt6locale5_ImplE", !4, i64 0, !307, i64 8, !48, i64 16, !307, i64 24, !309, i64 32}
!307 = !{!"p2 _ZTSNSt6locale5facetE", !308, i64 0}
!308 = !{!"any p2 pointer", !19, i64 0}
!309 = !{!"p2 omnipotent char", !308, i64 0}
!310 = !{!306, !307, i64 8}
!311 = !{!312, !312, i64 0}
!312 = !{!"p1 _ZTSNSt6locale5facetE", !19, i64 0}
!313 = !{ptr @_ZN3fmt3v1212format_facetISt6localeED2Ev}
!314 = distinct !{!314, !127}
!315 = !{!316, !25, i64 0}
!316 = !{!"_ZTSZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsEEUlS4_E_", !25, i64 0, !5, i64 1}
!317 = !{!316, !5, i64 1}
!318 = !{!270, !4, i64 8}
!319 = distinct !{null, null}
!320 = distinct !{null, null}
!321 = distinct !{!321, !127}
!322 = distinct !{null, null, null, null}
!323 = distinct !{null, null, null, null, null}
!324 = distinct !{!324, !127}
!325 = distinct !{null, null, null}
!326 = distinct !{null, null, null, null}
!327 = distinct !{!327, !127}
!328 = !{!329, !4, i64 8}
!329 = !{!"_ZTSNSt6locale5facetE", !4, i64 8}
!330 = !{!331}
!331 = distinct !{!331, !332, !"_ZNKSt7__cxx118numpunctIcE8groupingEv: argument 0"}
!332 = distinct !{!332, !"_ZNKSt7__cxx118numpunctIcE8groupingEv"}
!333 = distinct !{null}
!334 = distinct !{null}
!335 = !{!336, !336, i64 0}
!336 = !{!"p1 _ZTSN3fmt3v1212format_specsE", !19, i64 0}
!337 = !{!338, !246, i64 16}
!338 = !{!"_ZTSN3fmt3v1216basic_format_argINS0_7contextEEE", !339, i64 0, !246, i64 16}
!339 = !{!"_ZTSN3fmt3v126detail5valueINS0_7contextEEE", !5, i64 0}
!340 = !{!341, !336, i64 8}
!341 = !{!"_ZTSN3fmt3v126detail10loc_writerIcEE", !342, i64 0, !336, i64 8, !86, i64 16, !86, i64 48, !86, i64 80}
!342 = !{!"_ZTSN3fmt3v1214basic_appenderIcEE", !248, i64 0}
!343 = !{i64 4}
!344 = !{!345}
!345 = distinct !{!345, !346, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE: argument 0"}
!346 = distinct !{!346, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE"}
!347 = !{!348}
!348 = distinct !{!348, !349, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE: argument 0"}
!349 = distinct !{!349, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE"}
!350 = distinct !{!350, !127}
!351 = distinct !{!351, !127}
!352 = distinct !{!352, !127}
!353 = !{!354, !354, i64 0}
!354 = !{!"p1 int", !19, i64 0}
!355 = !{!356, !356, i64 0}
!356 = !{!"p1 _ZTSN3fmt3v126detail14digit_groupingIcEE", !19, i64 0}
!357 = !{!358, !358, i64 0}
!358 = !{!"p1 _ZTSN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEEE", !19, i64 0}
!359 = !{!360, !354, i64 0}
!360 = !{!"_ZTSZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEmcEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS4_E_", !354, i64 0, !356, i64 8, !358, i64 16}
!361 = distinct !{null, null, null, null}
!362 = distinct !{!362, !127}
!363 = !{!360, !356, i64 8}
!364 = !{i64 8}
!365 = !{!360, !358, i64 16}
!366 = distinct !{null, null, null, null}
!367 = distinct !{null, null, null, null}
!368 = distinct !{!368, !127}
!369 = distinct !{!369, !127, !213, !214}
!370 = distinct !{!370, !127, !213, !214}
!371 = distinct !{!371, !297}
!372 = distinct !{!372, !127, !213}
!373 = distinct !{!373, !127}
!374 = !{!375, !53, i64 0}
!375 = !{!"_ZTSN3fmt3v126detail18find_escape_resultIcEE", !53, i64 0, !53, i64 8, !4, i64 16}
!376 = !{!375, !53, i64 8}
!377 = !{!375, !4, i64 16}
!378 = distinct !{!378, !127}
!379 = distinct !{!379, !127}
!380 = distinct !{!380, !127}
!381 = !{!382, !19, i64 24}
!382 = !{!"_ZTSN3fmt3v126detail6bufferIiEE", !354, i64 0, !48, i64 8, !48, i64 16, !19, i64 24}
!383 = !{!382, !354, i64 0}
!384 = !{!382, !48, i64 16}
!385 = !{!382, !48, i64 8}
!386 = distinct !{null}
!387 = distinct !{null}
!388 = distinct !{!388, !127, !213, !214}
!389 = distinct !{!389, !127, !213, !214}
!390 = distinct !{!390, !297}
!391 = distinct !{!391, !127, !213}
!392 = distinct !{null}
!393 = distinct !{!393, !127}
!394 = distinct !{!394, !127}
!395 = distinct !{!395, !127}
!396 = distinct !{!396, !127}
!397 = distinct !{!397, !127}
!398 = !{!399, !354, i64 0}
!399 = !{!"_ZTSZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS4_E_", !354, i64 0, !356, i64 8, !358, i64 16}
end_hunk_3
