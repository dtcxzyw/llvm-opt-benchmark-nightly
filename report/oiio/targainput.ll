inline.NumInlined: 3088
inline.NumDeleted: 897
begin_hunk_0_@_ZN11OpenImageIO4v3_17Strutil11safe_stringB5cxx11EPKcm:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !9, !alias.scope !123
  br i1 %.not.not.i, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30, !noalias !123
  store i64 %i.b, ptr %i.a, align 8, !tbaa !111, !noalias !123
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !60, !alias.scope !123
  %i.f = load i64, ptr %i.a, align 8, !tbaa !111, !noalias !123
  store i64 %i.f, ptr %i.c, align 8, !tbaa !16, !alias.scope !123
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.g = phi ptr [ %i.e, %.noexc.i.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.b, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !16
  store i8 %i.h, ptr %i.g, align 1, !tbaa !16
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.e

.thread.i:                                        ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !13, !alias.scope !123
  store i8 0, ptr %i.c, align 8, !tbaa !16, !alias.scope !123
  br label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !111, !noalias !123 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !13, !alias.scope !123
  %i.l = load ptr, ptr %0, align 8, !tbaa !60, !alias.scope !123
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !123
  br label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit

_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit: ; preds = %.thread.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA36_cJRtS5_S5_S5_S5_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(36) %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 2 dereferenceable(2) %3, ptr noundef nonnull align 2 dereferenceable(2) %4, ptr noundef nonnull align 2 dereferenceable(2) %5, ptr noundef nonnull align 2 dereferenceable(2) %6, ptr noundef nonnull align 2 dereferenceable(2) %7) local_unnamed_addr #8 {
bb.a:
  %8 = alloca %"struct.fmt::v12::detail::format_arg_store.110", align 16 ; 9 uses
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.b = load i16, ptr %2, align 2, !tbaa !97, !noalias !126
  %i.c = zext i16 %i.b to i32
  store i32 %i.c, ptr %8, align 16, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.e = load i16, ptr %3, align 2, !tbaa !97, !noalias !126
  %i.f = zext i16 %i.e to i32
  store i32 %i.f, ptr %i.d, align 16, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.h = load i16, ptr %4, align 2, !tbaa !97, !noalias !126
  %i.i = zext i16 %i.h to i32
  store i32 %i.i, ptr %i.g, align 16, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.k = load i16, ptr %5, align 2, !tbaa !97, !noalias !126
  %i.l = zext i16 %i.k to i32
  store i32 %i.l, ptr %i.j, align 16, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.n = load i16, ptr %6, align 2, !tbaa !97, !noalias !126
  %i.o = zext i16 %i.n to i32
  store i32 %i.o, ptr %i.m, align 16, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.q = load i16, ptr %7, align 2, !tbaa !97, !noalias !126
  %i.r = zext i16 %i.q to i32
  store i32 %i.r, ptr %i.p, align 16, !tbaa !16
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull %1, i64 %i.a, i64 2236962, ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA15_cJRtS5_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(15) %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 2 dereferenceable(2) %3, ptr noundef nonnull align 2 dereferenceable(2) %4) local_unnamed_addr #8 {
bb.a:
  %5 = alloca %"struct.fmt::v12::detail::format_arg_store.111", align 16 ; 6 uses
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.b = load i16, ptr %2, align 2, !tbaa !97, !noalias !129
  %i.c = zext i16 %i.b to i32
  store i32 %i.c, ptr %5, align 16, !tbaa !16, !alias.scope !129
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.e = load i16, ptr %3, align 2, !tbaa !97, !noalias !129
  %i.f = zext i16 %i.e to i32
  store i32 %i.f, ptr %i.d, align 16, !tbaa !16, !alias.scope !129
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.h = load i16, ptr %4, align 2, !tbaa !97, !noalias !129
  %i.i = zext i16 %i.h to i32
  store i32 %i.i, ptr %i.g, align 16, !tbaa !16, !alias.scope !129
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull %1, i64 %i.a, i64 546, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA7_cJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(7) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #8 {
bb.a:
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.112", align 16 ; 5 uses
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.b = load i32, ptr %2, align 4, !tbaa !3, !noalias !132
  store i32 %i.b, ptr %4, align 16, !tbaa !16, !alias.scope !132
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load i32, ptr %3, align 4, !tbaa !3, !noalias !132
  store i32 %i.d, ptr %i.c, align 16, !tbaa !16, !alias.scope !132
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull %1, i64 %i.a, i64 17, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #0 align 2

declare void @_ZN11OpenImageIO4v3_127set_colorspace_rec709_gammaERNS0_9ImageSpecEf(ptr noundef nonnull align 8 dereferenceable(160), float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.113", align 16 ; 4 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30, !noalias !135
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !135
  %i.b = load i32, ptr %2, align 4, !tbaa !3, !noalias !135
  %.sroa.03.0.insert.ext.i = zext i32 %i.b to i128
  store i128 %.sroa.03.0.insert.ext.i, ptr %3, align 16, !noalias !135
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull %1, i64 %i.a, i64 1, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !135
  %i.c = load ptr, ptr %5, align 8, !tbaa !60
  store ptr %i.c, ptr %4, align 8, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  store i64 %i.f, ptr %i.d, align 8, !tbaa !63
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %5, align 8, !tbaa !60     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.h, align 8, !tbaa !16
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %5, align 8, !tbaa !60     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.p = load i64, ptr %i.n, align 8, !tbaa !16
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18TGAInput13get_thumbnailERNS0_8ImageBufEi(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageSpec", align 8 ; 17 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.b = alloca [4 x i8], align 1                 ; 5 uses
  %i.c = alloca [4 x i8], align 1                 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !115
  %i.f = icmp slt i64 %i.e, 1
  br i1 %i.f, label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput4lockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.g = invoke noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.d, align 8, !tbaa !115
  %i.i = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.h, i32 noundef 0)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.f, label %bb.al

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.k = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.a, i64 noundef 2, i64 noundef 1)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %i.k, label %bb.i, label %bb.aj

bb.h:                                             ; preds = %bb.ah, %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.i:                                             ; preds = %bb.g
  %i.m = load i8, ptr %i.a, align 1, !tbaa !16    ; 2 uses
  %i.n = icmp ne i8 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.p = load i8, ptr %i.o, align 1               ; 2 uses
  %i.q = icmp ne i8 %i.p, 0
  %or.cond = select i1 %i.n, i1 %i.q, i1 false    ; 2 uses
  br i1 %or.cond, label %bb.j, label %bb.ah

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.r = zext i8 %i.m to i32
  %i.s = zext i8 %i.p to i32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !71
  call void @_ZN11OpenImageIO4v3_19ImageSpecC1EiiiNS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %3, i32 noundef %i.r, i32 noundef %i.s, i32 noundef %i.u, i64 258) #30
  store ptr @.str.34, ptr %4, align 8, !tbaa !61
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 17, ptr %i.v, align 8, !tbaa !63
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec14set_colorspaceENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(160) %3, ptr noundef nonnull dead_on_return %4)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf5resetERKNS0_9ImageSpecENS0_16InitializePixelsE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(160) %3, i32 noundef 1)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 234
  %i.x = load i8, ptr %i.w, align 2, !tbaa !66    ; 2 uses
  %i.y = icmp eq i8 %i.x, 15
  %i.z = lshr i8 %i.x, 3
  %narrow = select i1 %i.y, i8 2, i8 %i.z         ; 2 uses
  %i.aa = zext nneg i8 %narrow to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !67  ; 2 uses
  %i.ad = icmp eq i8 %i.ac, 15
  %i.ae = lshr i8 %i.ac, 3
  %narrow90 = select i1 %i.ad, i8 2, i8 %i.ae     ; 2 uses
  %i.af = zext nneg i8 %narrow90 to i32           ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 217
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !64
  %.not91 = icmp eq i8 %i.ah, 0
  br i1 %.not91, label %bb.u, label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit65

bb.n:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !73
  %i.al = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.ak, i32 noundef 0)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  br i1 %i.al, label %bb.q, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

bb.p:                                             ; preds = %bb.s, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit, %bb.q, %bb.n
  %.sroa.0.0 = phi ptr [ %i.as, %bb.s ], [ %i.as, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit ], [ null, %bb.q ], [ null, %bb.n ]
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.q:                                             ; preds = %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 222
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !138 ; 2 uses
  %i.ap = zext i16 %i.ao to i32
  %i.aq = mul nuw nsw i32 %i.ap, %i.af
  %i.ar = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.as = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ar) #31
          to label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit unwind label %bb.p ; 6 uses

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit: ; preds = %bb.q
  %i.at = zext nneg i8 %narrow90 to i64
  %i.au = zext i16 %i.ao to i64
  %i.av = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.as, i64 noundef %i.at, i64 noundef %i.au)
          to label %bb.r unwind label %bb.p

bb.r:                                             ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EE5resetIPhvEEvT_.exit
  br i1 %i.av, label %bb.s, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

bb.s:                                             ; preds = %bb.r
  %i.aw = load i64, ptr %i.d, align 8, !tbaa !115
  %i.ax = add nsw i64 %i.aw, 2
  %i.ay = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.ax, i32 noundef 0)
          to label %bb.t unwind label %bb.p

bb.t:                                             ; preds = %bb.s
  br i1 %i.ay, label %bb.u, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

bb.u:                                             ; preds = %bb.t, %bb.l
  %.sroa.0.1 = phi ptr [ %i.as, %bb.t ], [ null, %bb.l ] ; 4 uses
  %.034 = phi i64 [ %i.ar, %bb.t ], [ 0, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !139 ; 2 uses
  %i.bb = icmp slt i32 %i.ba, 1
  br i1 %i.bb, label %.thread, label %.lr.ph101

.lr.ph101:                                        ; preds = %bb.u
  %i.bc = add nsw i32 %i.ba, -1
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.bf = zext nneg i8 %narrow to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph101, %._crit_edge
  %.03399 = phi i64 [ %i.bd, %.lr.ph101 ], [ %i.bv, %._crit_edge ] ; 3 uses
  %i.bg = trunc nuw nsw i64 %.03399 to i32
  %i.bh = invoke noundef ptr @_ZN11OpenImageIO4v3_18ImageBuf9pixeladdrEiiii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0, i32 noundef %i.bg, i32 noundef 0, i32 noundef 0)
          to label %.preheader unwind label %bb.w

.preheader:                                       ; preds = %bb.v
  %i.bi = load i32, ptr %i.be, align 4, !tbaa !140
  %.not96 = icmp sgt i32 %i.bi, 0
  br i1 %.not96, label %.lr.ph, label %._crit_edge

bb.w:                                             ; preds = %bb.v
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.lr.ph:                                           ; preds = %.preheader, %bb.ab
  %.098 = phi i64 [ %i.bp, %bb.ab ], [ 0, %.preheader ]
  %.03297 = phi ptr [ %i.bs, %bb.ab ], [ %i.bh, %.preheader ] ; 2 uses
  %i.bk = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.c, i64 noundef %i.bf, i64 noundef 1)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %.lr.ph
  br i1 %i.bk, label %bb.z, label %.thread

bb.y:                                             ; preds = %bb.z, %.lr.ph
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.bm = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef %.sroa.0.1, i32 noundef %i.aa, i32 noundef %i.af, i64 noundef %.034)
          to label %bb.aa unwind label %bb.y

bb.aa:                                            ; preds = %bb.z
  br i1 %i.bm, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.aa
  %i.bn = load i32, ptr %i.t, align 4, !tbaa !71
  %i.bo = sext i32 %i.bn to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03297, ptr nonnull align 1 %i.b, i64 %i.bo, i1 false)
  %i.bp = add nuw nsw i64 %.098, 1                ; 2 uses
  %i.bq = load i32, ptr %i.t, align 4, !tbaa !71
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds i8, ptr %.03297, i64 %i.br
  %i.bt = load i32, ptr %i.be, align 4, !tbaa !140
  %i.bu = sext i32 %i.bt to i64
  %.not = icmp slt i64 %i.bp, %i.bu
  br i1 %.not, label %.lr.ph, label %._crit_edge, !llvm.loop !141

._crit_edge:                                      ; preds = %bb.ab, %.preheader
  %i.bv = add nsw i64 %.03399, -1
  %i.bw = icmp slt i64 %.03399, 1
  br i1 %i.bw, label %.thread, label %bb.v, !llvm.loop !142

bb.ac:                                            ; preds = %bb.y, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.y ], [ %i.bj, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.ag

.thread:                                          ; preds = %._crit_edge, %bb.x, %bb.aa, %bb.u
  %i.bx = phi i1 [ true, %bb.u ], [ false, %bb.x ], [ false, %bb.aa ], [ true, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %.not.i = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.r, %bb.t, %.thread
  %.34781 = phi i1 [ %i.bx, %.thread ], [ false, %bb.t ], [ false, %bb.r ]
  %.sroa.0.280 = phi ptr [ %.sroa.0.1, %.thread ], [ %i.as, %bb.t ], [ %i.as, %bb.r ]
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.280) #29
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.o, %.thread, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  %.34782 = phi i1 [ %i.bx, %.thread ], [ %.34781, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ false, %bb.o ]
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !91 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !92 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bz, %i.cb
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i ], [ %i.bz, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit ] ; 2 uses
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i.i) #30
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cc, %i.cb
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !95

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.by, align 8, !tbaa !91
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit
  %i.cd = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.bz, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !93
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.ci) #29
  br label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i: ; preds = %bb.ad, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !85 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !86 ; 2 uses
  %.not4.i.i.i1.i = icmp eq ptr %i.ck, %i.cm
  br i1 %.not4.i.i.i1.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i2.i

.lr.ph.i.i.i2.i:                                  ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i3.i = phi ptr [ %i.cs, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.ck, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i ] ; 3 uses
  %i.cn = load ptr, ptr %.05.i.i.i3.i, align 8, !tbaa !60 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !16
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 32 ; 2 uses
  %.not.i.i.i4.i = icmp eq ptr %i.cs, %i.cm
  br i1 %.not.i.i.i4.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i2.i, !llvm.loop !89

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i5.i = load ptr, ptr %i.cj, align 8, !tbaa !85
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i
  %i.ct = phi ptr [ %.pr.i5.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ck, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i6.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i1.i6.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !87
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.ct to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cy) #29
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.ae, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !82 ; 3 uses
  %.not.i.i.i7.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i7.i, label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !83
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.da to i64
  %i.df = sub i64 %i.dd, %i.de
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.df) #29
  br label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit

_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit:         ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %.34782, label %bb.ah, label %bb.aj

bb.ag:                                            ; preds = %bb.ac, %bb.p
  %.sroa.0.3 = phi ptr [ %.sroa.0.1, %bb.ac ], [ %.sroa.0.0, %bb.p ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ac ], [ %i.am, %bb.p ] ; 2 uses
  %.not.i63 = icmp eq ptr %.sroa.0.3, null
  br i1 %.not.i63, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit65, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i64

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i64: ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.3) #29
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit65

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit65: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i64, %bb.ag, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.m ], [ %.pn.pn, %bb.ag ], [ %.pn.pn, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i64 ]
  call void @_ZN11OpenImageIO4v3_19ImageSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.ak

bb.ah:                                            ; preds = %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit, %bb.i
  %i.dg = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.g, i32 noundef 0)
          to label %bb.ai unwind label %bb.h

bb.ai:                                            ; preds = %bb.ah
  %.238. = and i1 %or.cond, %i.dg
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.g, %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit
  %.4 = phi i1 [ false, %bb.g ], [ %.238., %bb.ai ], [ false, %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.al

bb.ak:                                            ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit65, %bb.h
  %.pn58 = phi { ptr, i32 } [ %i.l, %bb.h ], [ %.pn.pn.pn, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.an

bb.al:                                            ; preds = %bb.d, %bb.aj
  %.5 = phi i1 [ %.4, %bb.aj ], [ false, %bb.d ]
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #32
  unreachable

bb.an:                                            ; preds = %bb.ak, %bb.e
  %.pn58.pn = phi { ptr, i32 } [ %.pn58, %bb.ak ], [ %i.j, %bb.e ]
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit66 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #32
  unreachable

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit66: ; preds = %bb.an
  resume { ptr, i32 } %.pn58.pn

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit: ; preds = %bb.al, %bb.a
  %.6 = phi i1 [ false, %bb.a ], [ %.5, %bb.al ]
  ret i1 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @_ZN11OpenImageIO4v3_19ImageSpec14set_colorspaceENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return) local_unnamed_addr #1

declare void @_ZN11OpenImageIO4v3_18ImageBuf5resetERKNS0_9ImageSpecENS0_16InitializePixelsE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(160), i32 noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

declare noundef ptr @_ZN11OpenImageIO4v3_18ImageBuf9pixeladdrEiiii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 218
  %i.b = load i8, ptr %i.a, align 2, !tbaa !65
  switch i8 %i.b, label %bb.n [
    i8 1, label %bb.b
    i8 9, label %bb.b
    i8 2, label %bb.h
    i8 10, label %bb.h
    i8 3, label %bb.m
    i8 11, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = icmp sgt i32 %4, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %4 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.d = icmp ult i32 %4, 4
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.07375.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.an, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod79 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod79)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %.07375.epil = phi i32 [ %.07375.epil.init, %.lr.ph.epil.preheader ], [ %i.j, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil
  %i.f = load i8, ptr %i.e, align 1, !tbaa !16
  %i.g = zext i8 %i.f to i32
  %indvars.iv.tr.epil = trunc i64 %indvars.iv.epil to i32
  %i.h = shl i32 %indvars.iv.tr.epil, 3
  %i.i = shl i32 %i.g, %i.h
  %i.j = or i32 %i.i, %.07375.epil                ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !143

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.b
  %.073.lcssa = phi i32 [ 0, %bb.b ], [ %i.an, %._crit_edge.loopexit.unr-lcssa ], [ %i.j, %.lr.ph.epil ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.l = load i16, ptr %i.k, align 4, !tbaa !145
  %i.m = zext i16 %i.l to i32
  %i.n = add i32 %.073.lcssa, %i.m
  %i.o = mul i32 %i.n, %5                         ; 10 uses
  %i.p = add i32 %i.o, %5
  %i.q = zext i32 %i.p to i64
  %i.r = icmp ult i64 %6, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.07375 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.an, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.t = load i8, ptr %i.s, align 1, !tbaa !16
  %i.u = zext i8 %i.t to i32
  %i.v = or i32 %.07375, %i.u
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.x = load i8, ptr %i.w, align 1, !tbaa !16
  %i.y = zext i8 %i.x to i32
  %indvars.iv.tr.1 = trunc i64 %indvars.iv.next to i32
  %i.z = shl i32 %indvars.iv.tr.1, 3
  %i.aa = shl i32 %i.y, %i.z
  %i.ab = or i32 %i.aa, %i.v
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !16
  %i.ae = zext i8 %i.ad to i32
  %indvars.iv.tr.2 = trunc i64 %indvars.iv.next.1 to i32
  %i.af = shl i32 %indvars.iv.tr.2, 3
  %i.ag = shl i32 %i.ae, %i.af
  %i.ah = or i32 %i.ag, %i.ab
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !16
  %i.ak = zext i8 %i.aj to i32
  %indvars.iv.tr.3 = trunc i64 %indvars.iv.next.2 to i32
  %i.al = shl i32 %indvars.iv.tr.3, 3
  %i.am = shl i32 %i.ak, %i.al
  %i.an = or i32 %i.am, %i.ah                     ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !146

bb.c:                                             ; preds = %._crit_edge
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.38)
  br label %bb.n

bb.d:                                             ; preds = %._crit_edge
  switch i32 %5, label %bb.n [
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.ao = add i32 %i.o, 1
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 %i.ap ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !16  ; 2 uses
  %i.as = shl i8 %i.ar, 1
  %i.at = and i8 %i.as, -8
  %i.au = lshr i8 %i.ar, 4
  %i.av = and i8 %i.au, 7
  %i.aw = or disjoint i8 %i.av, %i.at
  store i8 %i.aw, ptr %2, align 1, !tbaa !16
  %i.ax = zext i32 %i.o to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 %i.ax ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !16
  %i.ba = lshr i8 %i.az, 5
  %i.bb = load i8, ptr %i.aq, align 1, !tbaa !16
  %i.bc = shl i8 %i.bb, 3
  %i.bd = and i8 %i.bc, 24
  %i.be = or disjoint i8 %i.bd, %i.ba             ; 2 uses
  %i.bf = shl nuw i8 %i.be, 3
  %i.bg = lshr i8 %i.be, 2
  %i.bh = or disjoint i8 %i.bg, %i.bf
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !16
  %i.bj = load i8, ptr %i.ay, align 1, !tbaa !16  ; 2 uses
  %i.bk = shl i8 %i.bj, 3
  %i.bl = lshr i8 %i.bj, 2
  %i.bm = and i8 %i.bl, 7
  %i.bn = or disjoint i8 %i.bm, %i.bk
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !16
  br label %bb.n

end_hunk_0
