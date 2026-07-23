inline.NumInlined: 3235
inline.NumDeleted: 854
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJiEEEvPKcDpRKT_:bb.a
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %i.l
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJNS0_8TypeDescEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.92", align 16 ; 5 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29, !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29, !noalias !85
  %i.b = ptrtoint ptr %2 to i64
  store i64 %i.b, ptr %3, align 16, !noalias !85
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 ptrtoint (ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN11OpenImageIO4v3_18TypeDescEEEvPvRNS0_13parse_contextIcEERS3_ to i64), ptr %.sroa_idx3.i, align 8, !noalias !85
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull %1, i64 %i.a, i64 15, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !85
  %i.c = load ptr, ptr %5, align 8, !tbaa !17
  store ptr %i.c, ptr %4, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  store i64 %i.f, ptr %i.d, align 8, !tbaa !23
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %5, align 8, !tbaa !17     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.h, align 8, !tbaa !16
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %5, align 8, !tbaa !17     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.p = load i64, ptr %i.n, align 8, !tbaa !16
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %i.l
}

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_19ImageSpec10set_formatENS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160), i64) local_unnamed_addr #2

declare noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJiiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.96", align 16 ; 5 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29, !noalias !88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.b = load i32, ptr %2, align 4, !tbaa !3, !noalias !94
  store i32 %i.b, ptr %4, align 16, !tbaa !16, !alias.scope !91, !noalias !88
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load i32, ptr %3, align 4, !tbaa !3, !noalias !94
  store i32 %i.d, ptr %i.c, align 16, !tbaa !16, !alias.scope !91, !noalias !88
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull %1, i64 %i.a, i64 17, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29, !noalias !88
  %i.e = load ptr, ptr %6, align 8, !tbaa !17
  store ptr %i.e, ptr %5, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13
  store i64 %i.h, ptr %i.f, align 8, !tbaa !23
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %6, align 8, !tbaa !17     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8, !tbaa !16
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  ret void

bb.c:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %6, align 8, !tbaa !17     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.c
  %i.r = load i64, ptr %i.p, align 8, !tbaa !16
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  resume { ptr, i32 } %i.n
}

declare void @_ZN11OpenImageIO4v3_111ImageOutput28ioproxy_retrieve_from_configERKNS0_9ImageSpecE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput19ioproxy_use_or_openENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef dead_on_return) local_unnamed_addr #1

declare void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8, ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_19IffOutput12write_headerERNS0_7iff_pvt13IffFileHeaderE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN11OpenImageIO4v3_19IffOutput9write_strENS0_17basic_string_viewIcSt11char_traitsIcEEEm.exit:
  %i.a = alloca [4 x i8], align 16                ; 4 uses
  %i.b = alloca [4 x i8], align 16                ; 4 uses
  %i.c = alloca [4 x i8], align 16                ; 4 uses
  %i.d = alloca [4 x i8], align 16                ; 4 uses
  %i.e = alloca [2 x i8], align 16                ; 4 uses
  %i.f = alloca [2 x i8], align 16                ; 4 uses
  %i.g = alloca [4 x i8], align 16                ; 4 uses
  %i.h = alloca [2 x i8], align 16                ; 4 uses
  %i.i = alloca [2 x i8], align 16                ; 4 uses
  %i.j = alloca [4 x i8], align 16                ; 4 uses
  %i.k = alloca [4 x i8], align 16                ; 4 uses
  %i.l = alloca [4 x i8], align 16                ; 4 uses
  %i.m = alloca [4 x i8], align 16                ; 4 uses
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.n = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull @.str.17, i64 noundef 4, i64 noundef 1)
  br i1 %i.n, label %bb.a, label %bb.p

bb.a:                                             ; preds = %_ZN11OpenImageIO4v3_19IffOutput9write_strENS0_17basic_string_viewIcSt11char_traitsIcEEEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i32 0, ptr %i.m, align 16, !tbaa !3
  %i.o = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.m, i64 noundef 4, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %i.o, label %_ZN11OpenImageIO4v3_19IffOutput9write_strENS0_17basic_string_viewIcSt11char_traitsIcEEEm.exit25, label %bb.p

_ZN11OpenImageIO4v3_19IffOutput9write_strENS0_17basic_string_viewIcSt11char_traitsIcEEEm.exit25: ; preds = %bb.a
  %i.p = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull @.str.18, i64 noundef 4, i64 noundef 1)
  br i1 %i.p, label %_ZN11OpenImageIO4v3_19IffOutput9write_strENS0_17basic_string_viewIcSt11char_traitsIcEEEm.exit28, label %bb.p

_ZN11OpenImageIO4v3_19IffOutput9write_strENS0_17basic_string_viewIcSt11char_traitsIcEEEm.exit28: ; preds = %_ZN11OpenImageIO4v3_19IffOutput9write_strENS0_17basic_string_viewIcSt11char_traitsIcEEEm.exit25
  %i.q = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull @.str.19, i64 noundef 4, i64 noundef 1)
  br i1 %i.q, label %bb.b, label %bb.p

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_19IffOutput9write_strENS0_17basic_string_viewIcSt11char_traitsIcEEEm.exit28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i32 536870912, ptr %i.l, align 16, !tbaa !3
  %i.r = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.l, i64 noundef 4, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br i1 %i.r, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.u = call noundef i32 @llvm.bswap.i32(i32 %i.t)
  store i32 %i.u, ptr %i.k, align 16, !tbaa !3
  %i.v = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.k, i64 noundef 4, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br i1 %i.v, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.y = call noundef i32 @llvm.bswap.i32(i32 %i.x)
  store i32 %i.y, ptr %i.j, align 16, !tbaa !3
  %i.z = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.j, i64 noundef 4, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %i.z, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i16 256, ptr %i.i, align 16, !tbaa !95
  %i.aa = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.i, i64 noundef 2, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.aa, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i16 256, ptr %i.h, align 16, !tbaa !95
  %i.ab = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.h, i64 noundef 2, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.ab, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !78  ; 2 uses
  %switch.selectcmp = icmp eq i8 %i.ad, 4
  %switch.select = select i1 %switch.selectcmp, i32 50331648, i32 0
  %switch.selectcmp21 = icmp eq i8 %i.ad, 3
  %switch.select22 = select i1 %switch.selectcmp21, i32 16777216, i32 %switch.select ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !79
  %.not = icmp eq i8 %i.af, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ag = or disjoint i32 %switch.select22, 67108864
  %i.ah = select i1 %.not, i32 %switch.select22, i32 %i.ag
  store i32 %i.ah, ptr %i.g, align 16, !tbaa !3
  %i.ai = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.g, i64 noundef 4, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %i.ai, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !77
  %.not36 = icmp eq i8 %i.ak, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.al = select i1 %.not36, i16 0, i16 256
  store i16 %i.al, ptr %i.f, align 16, !tbaa !95
  %i.am = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.f, i64 noundef 2, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.am, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ap = call noundef i16 @llvm.bswap.i16(i16 %i.ao)
  store i16 %i.ap, ptr %i.e, align 16, !tbaa !95
  %i.aq = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.e, i64 noundef 2, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.aq, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.at = call noundef i32 @llvm.bswap.i32(i32 %i.as)
  store i32 %i.at, ptr %i.d, align 16, !tbaa !3
  %i.au = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.d, i64 noundef 4, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.au, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.av = load i32, ptr %1, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aw = call noundef i32 @llvm.bswap.i32(i32 %i.av)
  store i32 %i.aw, ptr %i.c, align 16, !tbaa !3
  %i.ax = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.ax, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ba = call noundef i32 @llvm.bswap.i32(i32 %i.az)
  store i32 %i.ba, ptr %i.b, align 16, !tbaa !3
  %i.bb = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.b, i64 noundef 4, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.bb, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  store ptr @.str.20, ptr %2, align 8, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 4, ptr %i.bc, align 8, !tbaa !23
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !17
  store ptr %i.be, ptr %3, align 8, !tbaa !21
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !13
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !23
  %i.bi = call noundef zeroext i1 @_ZN11OpenImageIO4v3_19IffOutput17write_meta_stringENS0_17basic_string_viewIcSt11char_traitsIcEEES5_b(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull dead_on_return %2, ptr noundef nonnull dead_on_return %3, i1 noundef zeroext false) ; 0 uses
  store ptr @.str.21, ptr %4, align 8, !tbaa !21
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 4, ptr %i.bj, align 8, !tbaa !23
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !17
  store ptr %i.bl, ptr %5, align 8, !tbaa !21
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !13
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !23
  %i.bp = call noundef zeroext i1 @_ZN11OpenImageIO4v3_19IffOutput17write_meta_stringENS0_17basic_string_viewIcSt11char_traitsIcEEES5_b(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull dead_on_return %4, ptr noundef nonnull dead_on_return %5, i1 noundef zeroext false) ; 0 uses
  %i.bq = call noundef i64 @_ZNK11OpenImageIO4v3_111ImageOutput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.br = trunc i64 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 108
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !100
  store ptr @.str.17, ptr %6, align 8, !tbaa !21
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 4, ptr %i.bt, align 8, !tbaa !23
  %i.bu = call noundef zeroext i1 @_ZN11OpenImageIO4v3_19IffOutput9write_strENS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull dead_on_return %6, i64 noundef 4)
  br i1 %i.bu, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 16, !tbaa !3
  %i.bv = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.bv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr @.str.22, ptr %7, align 8, !tbaa !21
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 4, ptr %i.bw, align 8, !tbaa !23
  %i.bx = call noundef zeroext i1 @_ZN11OpenImageIO4v3_19IffOutput9write_strENS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull dead_on_return %7, i64 noundef 4)
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.j, %bb.l, %bb.k, %bb.n, %bb.m, %bb.o, %bb.e, %bb.f, %bb.c, %bb.d, %bb.b, %_ZN11OpenImageIO4v3_19IffOutput9write_strENS0_17basic_string_viewIcSt11char_traitsIcEEEm.exit28, %_ZN11OpenImageIO4v3_19IffOutput9write_strENS0_17basic_string_viewIcSt11char_traitsIcEEEm.exit25, %_ZN11OpenImageIO4v3_19IffOutput9write_strENS0_17basic_string_viewIcSt11char_traitsIcEEEm.exit, %bb.a
  %.119 = phi i1 [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.b ], [ false, %_ZN11OpenImageIO4v3_19IffOutput9write_strENS0_17basic_string_viewIcSt11char_traitsIcEEEm.exit28 ], [ false, %_ZN11OpenImageIO4v3_19IffOutput9write_strENS0_17basic_string_viewIcSt11char_traitsIcEEEm.exit25 ], [ false, %_ZN11OpenImageIO4v3_19IffOutput9write_strENS0_17basic_string_viewIcSt11char_traitsIcEEEm.exit ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.m ], [ %i.bx, %bb.o ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.l ], [ false, %bb.n ]
  ret i1 %.119
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.97", align 16 ; 5 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29, !noalias !101
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29, !noalias !101
  %i.b = load ptr, ptr %2, align 8, !tbaa !17, !noalias !101
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13, !noalias !101
  %i.e = ptrtoint ptr %i.b to i64
  store i64 %i.e, ptr %3, align 16, !noalias !101
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.d, ptr %.sroa_idx3.i, align 8, !noalias !101
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull %1, i64 %i.a, i64 13, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !101
  %i.f = load ptr, ptr %5, align 8, !tbaa !17
  store ptr %i.f, ptr %4, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13
  store i64 %i.i, ptr %i.g, align 8, !tbaa !23
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %5, align 8, !tbaa !17     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8, !tbaa !16
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %5, align 8, !tbaa !17     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.s = load i64, ptr %i.q, align 8, !tbaa !16
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %i.o
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_19IffOutput5closeEv(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %2 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %3 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %4 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %5 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  %i.f = alloca [4 x i8], align 16                ; 4 uses
  %i.g = alloca [4 x i8], align 16                ; 4 uses
  %i.h = alloca [2 x i8], align 16                ; 4 uses
  %i.i = alloca [2 x i8], align 16                ; 4 uses
  %i.j = alloca [2 x i8], align 16                ; 4 uses
  %i.k = alloca [2 x i8], align 16                ; 4 uses
  %i.l = alloca [4 x i8], align 16                ; 4 uses
  %11 = alloca %"struct.fmt::v12::detail::format_arg_store.89", align 16 ; 5 uses
  %12 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.m = alloca [2 x i8], align 16                ; 4 uses
  %i.n = alloca [2 x i8], align 16                ; 4 uses
  %i.o = alloca [2 x i8], align 16                ; 4 uses
  %i.p = alloca [2 x i8], align 16                ; 4 uses
  %i.q = alloca [4 x i8], align 16                ; 4 uses
  %16 = alloca %"struct.fmt::v12::detail::format_arg_store.89", align 16 ; 5 uses
  %17 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %19 = alloca %"struct.fmt::v12::detail::format_arg_store.89", align 16 ; 5 uses
  %20 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %22 = alloca %"struct.fmt::v12::detail::format_arg_store.89", align 16 ; 5 uses
  %23 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %25 = alloca %"struct.fmt::v12::detail::format_arg_store.89", align 16 ; 5 uses
  %26 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %28 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 3 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.r = tail call noundef zeroext i1 @_ZNK11OpenImageIO4v3_111ImageOutput14ioproxy_openedEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br i1 %i.r, label %bb.b, label %bb.ht

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !104
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !18
  %.not = icmp eq ptr %i.u, %i.v
  br i1 %.not, label %bb.ht, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 11 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !77
  %i.y = lshr i8 %i.x, 3
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 241 ; 13 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !78
  %i.ac = zext i8 %i.ab to i32
  %i.ad = mul nuw nsw i32 %i.z, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 12 uses
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !79
  %.not.i.i = icmp eq i8 %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 249 ; 11 uses
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = lshr i8 %i.ah, 3
  %narrow.i.i = select i1 %.not.i.i, i8 0, i8 %i.ai
  %i.aj = zext nneg i8 %narrow.i.i to i32
  %i.ak = add nuw nsw i32 %i.ad, %i.aj            ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 11 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !105
  %i.an = mul i32 %i.ak, %i.am                    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_19IffOutput5closeEv:bb.a
  %i.ajv = load i8, ptr %i.ae, align 8, !tbaa !79
  %.not.i.i759 = icmp eq i8 %i.ajv, 0
  %i.ajw = load i8, ptr %i.ag, align 1
  %i.ajx = lshr i8 %i.ajw, 3
  %narrow.i.i760 = select i1 %.not.i.i759, i8 0, i8 %i.ajx
  %i.ajy = zext nneg i8 %narrow.i.i760 to i64
  %i.ajz = add nuw nsw i64 %i.aju, %i.ajy
  %i.aka = mul i32 %i.ajo, %storemerge4892055
  %i.akb = zext i32 %i.aka to i64
  %i.akc = mul nuw nsw i64 %i.ajz, %i.akb
  %i.akd = getelementptr inbounds nuw i8, ptr %i.ajn, i64 %i.akc
  br i1 %.not4922047, label %._crit_edge2052, label %.lr.ph2051

.lr.ph2051:                                       ; preds = %bb.eb, %._crit_edge2045
  %.74282049 = phi ptr [ %.8429.lcssa, %._crit_edge2045 ], [ %.64272056, %bb.eb ] ; 2 uses
  %storemerge4912048 = phi i32 [ %i.amf, %._crit_edge2045 ], [ %i.ey, %bb.eb ] ; 3 uses
  %i.ake = load i8, ptr %i.w, align 8, !tbaa !77
  %i.akf = lshr i8 %i.ake, 3
  %i.akg = zext nneg i8 %i.akf to i64
  %i.akh = load i8, ptr %i.aa, align 1, !tbaa !78 ; 2 uses
  %i.aki = zext i8 %i.akh to i64                  ; 2 uses
  %i.akj = mul nuw nsw i64 %i.akg, %i.aki
  %i.akk = load i8, ptr %i.ae, align 8, !tbaa !79
  %.not.i.i761 = icmp eq i8 %i.akk, 0
  %i.akl = load i8, ptr %i.ag, align 1
  %i.akm = lshr i8 %i.akl, 3
  %narrow.i.i762 = select i1 %.not.i.i761, i8 0, i8 %i.akm
  %i.akn = zext nneg i8 %narrow.i.i762 to i64
  %i.ako = add nuw nsw i64 %i.akj, %i.akn
  %i.akp = zext i32 %storemerge4912048 to i64
  %i.akq = mul nuw nsw i64 %i.ako, %i.akp
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akd, i64 %i.akq
  %i.aks = icmp eq i8 %i.akh, 0
  br i1 %i.aks, label %._crit_edge2045, label %.lr.ph2044

.lr.ph2044:                                       ; preds = %.lr.ph2051, %bb.em
  %indvars.iv2395 = phi i64 [ %indvars.iv.next2396, %bb.em ], [ %i.aki, %.lr.ph2051 ]
  %.84292041 = phi ptr [ %i.akt, %bb.em ], [ %.74282049, %.lr.ph2051 ] ; 3 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %.84292041, i64 2 ; 3 uses
  %.not496 = icmp ugt ptr %i.akt, %.sroa.30.71571
  br i1 %.not496, label %bb.ec, label %bb.em

bb.ec:                                            ; preds = %.lr.ph2044
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29, !noalias !193
  store i32 %storemerge4912048, ptr %16, align 16, !tbaa !16, !alias.scope !196, !noalias !193
  store i32 %storemerge4892055, ptr %i.bs, align 16, !tbaa !16, !alias.scope !196, !noalias !193
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29, !noalias !199
  store i64 0, ptr %i.bv, align 8, !noalias !199
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.bu, align 8, !tbaa !131, !noalias !199
  store ptr %i.bw, ptr %7, align 8, !tbaa !133, !noalias !199
  store i64 500, ptr %i.bt, align 8, !tbaa !134, !noalias !199
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29, !noalias !199
  store ptr @.str.29, ptr %2, align 8, !tbaa !135, !noalias !199
  store i64 64, ptr %.sroa.2.0..sroa_idx.i16.i1027, align 8, !tbaa !136, !noalias !199
  store i32 0, ptr %i.bx, align 8, !tbaa !137, !noalias !199
  store ptr %7, ptr %i.by, align 8, !tbaa !140, !noalias !199
  store i64 34, ptr %i.bz, align 8, !tbaa !142, !noalias !199
  store ptr %16, ptr %.sroa.2.0..sroa_idx.i17.i1028, align 8, !tbaa !16, !noalias !199
  store ptr null, ptr %i.ca, align 8, !tbaa !144, !noalias !199
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.29, i64 64, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %.noexc1033 unwind label %.loopexit1714

.noexc1033:                                       ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29, !noalias !199
  call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %i.aku = load i64, ptr %i.bv, align 8, !tbaa !148, !noalias !205 ; 6 uses
  %i.akv = icmp ult i64 %i.aku, 4611686018427387903
  call void @llvm.assume(i1 %i.akv)
  %i.akw = load ptr, ptr %7, align 8, !tbaa !133, !noalias !205 ; 3 uses
  store ptr %i.cb, ptr %18, align 8, !tbaa !9, !alias.scope !205
  %i.akx = icmp eq ptr %i.akw, null
  %i.aky = icmp ne i64 %i.aku, 0
  %or.cond.i.i.i987 = and i1 %i.aky, %i.akx
  br i1 %or.cond.i.i.i987, label %.noexc.i.i992, label %bb.ed

.noexc.i.i992:                                    ; preds = %.noexc1033
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.75) #32
          to label %.noexc.i993 unwind label %.loopexit.split-lp1715

.noexc.i993:                                      ; preds = %.noexc.i.i992
  unreachable

bb.ed:                                            ; preds = %.noexc1033
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29, !noalias !205
  store i64 %i.aku, ptr %i.b, align 8, !tbaa !136, !noalias !205
  %i.akz = icmp samesign ugt i64 %i.aku, 15
  br i1 %i.akz, label %.noexc.i.i.i990, label %._crit_edge.i.i.i.i988

.noexc.i.i.i990:                                  ; preds = %bb.ed
  %i.ala = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc7.i991 unwind label %.loopexit1714 ; 2 uses

.noexc7.i991:                                     ; preds = %.noexc.i.i.i990
  store ptr %i.ala, ptr %18, align 8, !tbaa !17, !alias.scope !205
  %i.alb = load i64, ptr %i.b, align 8, !tbaa !136, !noalias !205
  store i64 %i.alb, ptr %i.cb, align 8, !tbaa !16, !alias.scope !205
  br label %._crit_edge.i.i.i.i988

._crit_edge.i.i.i.i988:                           ; preds = %.noexc7.i991, %bb.ed
  %i.alc = phi ptr [ %i.ala, %.noexc7.i991 ], [ %i.cb, %bb.ed ] ; 2 uses
  switch i64 %i.aku, label %bb.ef [
    i64 1, label %bb.ee
    i64 0, label %bb.eg
  ]

bb.ee:                                            ; preds = %._crit_edge.i.i.i.i988
  %i.ald = load i8, ptr %i.akw, align 1, !tbaa !16
  store i8 %i.ald, ptr %i.alc, align 1, !tbaa !16
  br label %bb.eg

bb.ef:                                            ; preds = %._crit_edge.i.i.i.i988
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.alc, ptr align 1 %i.akw, i64 %i.aku, i1 false)
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee, %._crit_edge.i.i.i.i988
  %i.ale = load i64, ptr %i.b, align 8, !tbaa !136, !noalias !205 ; 2 uses
  store i64 %i.ale, ptr %i.cc, align 8, !tbaa !13, !alias.scope !205
  %i.alf = load ptr, ptr %18, align 8, !tbaa !17, !alias.scope !205
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 %i.ale
  store i8 0, ptr %i.alg, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29, !noalias !205
  %i.alh = load ptr, ptr %7, align 8, !tbaa !133, !noalias !199 ; 2 uses
  %.not.i.i.i989 = icmp eq ptr %i.alh, %i.bw
  br i1 %.not.i.i.i989, label %.noexc769, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  call void @free(ptr noundef %i.alh) #29
  br label %.noexc769

.loopexit1714:                                    ; preds = %.noexc.i.i.i990, %bb.ec
  %lpad.loopexit1716 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

.loopexit.split-lp1715:                           ; preds = %.noexc.i.i992
  %lpad.loopexit.split-lp1717 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.ei:                                            ; preds = %.loopexit.split-lp1715, %.loopexit1714
  %lpad.phi1718 = phi { ptr, i32 } [ %lpad.loopexit1716, %.loopexit1714 ], [ %lpad.loopexit.split-lp1717, %.loopexit.split-lp1715 ]
  %i.ali = load ptr, ptr %7, align 8, !tbaa !133, !noalias !199 ; 2 uses
  %.not.i.i8.i985 = icmp eq ptr %i.ali, %i.bw
  br i1 %.not.i.i8.i985, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i986, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @free(ptr noundef %i.ali) #29
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i986

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i986: ; preds = %bb.ej, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29, !noalias !199
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit608

.noexc769:                                        ; preds = %bb.eh, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29, !noalias !199
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29, !noalias !193
  %i.alj = load ptr, ptr %18, align 8, !tbaa !17
  store ptr %i.alj, ptr %17, align 8, !tbaa !21
  %i.alk = load i64, ptr %i.cc, align 8, !tbaa !13
  store i64 %i.alk, ptr %i.cd, align 8, !tbaa !23
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %17)
          to label %bb.ek unwind label %bb.el

bb.ek:                                            ; preds = %.noexc769
  %i.all = load ptr, ptr %18, align 8, !tbaa !17  ; 2 uses
  %i.alm = icmp eq ptr %i.all, %i.cb
  br i1 %i.alm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i768, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i767

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i767: ; preds = %bb.ek
  %i.aln = load i64, ptr %i.cb, align 8, !tbaa !16
  %i.alo = add i64 %i.aln, 1
  call void @_ZdlPvm(ptr noundef %i.all, i64 noundef %i.alo) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i768

bb.el:                                            ; preds = %.noexc769
  %i.alp = landingpad { ptr, i32 }
          cleanup
  %i.alq = load ptr, ptr %18, align 8, !tbaa !17  ; 2 uses
  %i.alr = icmp eq ptr %i.alq, %i.cb
  br i1 %i.alr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i765, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i764

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i764: ; preds = %bb.el
  %i.als = load i64, ptr %i.cb, align 8, !tbaa !16
  %i.alt = add i64 %i.als, 1
  call void @_ZdlPvm(ptr noundef %i.alq, i64 noundef %i.alt) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i765

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i765: ; preds = %bb.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i764
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit608

bb.em:                                            ; preds = %.lr.ph2044
  %indvars.iv.next2396 = add nsw i64 %indvars.iv2395, -1 ; 3 uses
  %i.alu = shl i64 %indvars.iv.next2396, 1
  %i.alv = and i64 %i.alu, 4294967294
  %i.alw = getelementptr inbounds nuw i8, ptr %i.akr, i64 %i.alv
  %i.alx = load i16, ptr %i.alw, align 1
  %i.aly = call noundef i16 @llvm.bswap.i16(i16 %i.alx) ; 2 uses
  %i.alz = trunc i16 %i.aly to i8
  %i.ama = getelementptr inbounds nuw i8, ptr %.84292041, i64 1
  store i8 %i.alz, ptr %.84292041, align 1, !tbaa !16
  %i.amb = lshr i16 %i.aly, 8
  %i.amc = trunc nuw i16 %i.amb to i8
  store i8 %i.amc, ptr %i.ama, align 1, !tbaa !16
  %i.amd = and i64 %indvars.iv.next2396, 4294967295
  %i.ame = icmp eq i64 %i.amd, 0
  br i1 %i.ame, label %._crit_edge2045, label %.lr.ph2044

._crit_edge2045:                                  ; preds = %bb.em, %.lr.ph2051
  %.8429.lcssa = phi ptr [ %.74282049, %.lr.ph2051 ], [ %i.akt, %bb.em ] ; 2 uses
  %i.amf = add i32 %storemerge4912048, 1          ; 2 uses
  %.not492 = icmp ugt i32 %i.amf, %i.fa
  br i1 %.not492, label %._crit_edge2052, label %.lr.ph2051, !llvm.loop !206

._crit_edge2052:                                  ; preds = %._crit_edge2045, %bb.eb
  %.7428.lcssa = phi ptr [ %.64272056, %bb.eb ], [ %.8429.lcssa, %._crit_edge2045 ]
  %i.amg = add i32 %storemerge4892055, 1          ; 2 uses
  %.not490 = icmp ugt i32 %i.amg, %i.fc
  br i1 %.not490, label %.thread1488, label %bb.eb, !llvm.loop !207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i768: ; preds = %bb.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i767
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br label %bb.ey

.thread1488:                                      ; preds = %._crit_edge2052, %._crit_edge2090, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit, %.thread1559, %.thread1458, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit624, %bb.ea, %bb.bm
  %.sroa.55.13 = phi ptr [ %.sroa.55.2, %bb.bm ], [ %.sroa.55.51465, %.thread1458 ], [ %.sroa.55.8, %bb.ea ], [ %.sroa.55.16, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread ], [ %.sroa.55.16, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit624 ], [ %.sroa.55.121566, %.thread1559 ], [ %.sroa.55.51465, %._crit_edge2090 ], [ %.sroa.55.16, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit ], [ %.sroa.55.121566, %._crit_edge2052 ] ; 7 uses
  %.sroa.01375.13 = phi ptr [ %.sroa.01375.2, %bb.bm ], [ %.sroa.01375.51470, %.thread1458 ], [ %.sroa.01375.8, %bb.ea ], [ %.sroa.01375.16, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread ], [ %.sroa.01375.16, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit624 ], [ %.sroa.01375.121572, %.thread1559 ], [ %.sroa.01375.51470, %._crit_edge2090 ], [ %.sroa.01375.16, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit ], [ %.sroa.01375.121572, %._crit_edge2052 ] ; 8 uses
  %.4 = phi i32 [ %.0, %bb.bm ], [ %.11474, %.thread1458 ], [ %.2, %bb.ea ], [ %i.gg, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread ], [ %i.gg, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit624 ], [ %.31577, %.thread1559 ], [ %.11474, %._crit_edge2090 ], [ %i.gg, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit ], [ %.31577, %._crit_edge2052 ]
  %.8414 = phi i32 [ %.2408, %bb.bm ], [ %.34091475, %.thread1458 ], [ %.6412, %bb.ea ], [ %i.gc, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread ], [ %i.gc, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit624 ], [ %.74131578, %.thread1559 ], [ %.34091475, %._crit_edge2090 ], [ %i.gc, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit ], [ %.74131578, %._crit_edge2052 ]
  %savedstack = call ptr @llvm.stacksave.p0()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.amh = call noundef i32 @llvm.bswap.i32(i32 %.4)
  store i32 %i.amh, ptr %i.q, align 16, !tbaa !3
  %i.ami = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.q, i64 noundef 4, i64 noundef 1)
          to label %bb.en unwind label %bb.eo

bb.en:                                            ; preds = %.thread1488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.stackrestore.p0(ptr %savedstack)
  br i1 %i.ami, label %bb.ep, label %bb.ey

bb.eo:                                            ; preds = %bb.ev, %bb.et, %bb.er, %bb.ep, %.thread1488, %bb.ex
  %i.amj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit608

bb.ep:                                            ; preds = %bb.en
  %i.amk = trunc i32 %i.ey to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.aml = call noundef i16 @llvm.bswap.i16(i16 %i.amk)
  store i16 %i.aml, ptr %i.p, align 16, !tbaa !95
  %i.amm = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.p, i64 noundef 2, i64 noundef 1)
          to label %bb.eq unwind label %bb.eo

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br i1 %i.amm, label %bb.er, label %bb.ey

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i16 %i.es, ptr %i.o, align 16, !tbaa !95
  %i.amn = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.o, i64 noundef 2, i64 noundef 1)
          to label %bb.es unwind label %bb.eo

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br i1 %i.amn, label %bb.et, label %bb.ey

bb.et:                                            ; preds = %bb.es
  %i.amo = trunc i32 %i.fa to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.amp = call noundef i16 @llvm.bswap.i16(i16 %i.amo)
  store i16 %i.amp, ptr %i.n, align 16, !tbaa !95
  %i.amq = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.n, i64 noundef 2, i64 noundef 1)
          to label %bb.eu unwind label %bb.eo

bb.eu:                                            ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br i1 %i.amq, label %bb.ev, label %bb.ey

bb.ev:                                            ; preds = %bb.eu
  %i.amr = trunc i32 %i.fc to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ams = call noundef i16 @llvm.bswap.i16(i16 %i.amr)
  store i16 %i.ams, ptr %i.m, align 16, !tbaa !95
  %i.amt = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.m, i64 noundef 2, i64 noundef 1)
          to label %bb.ew unwind label %bb.eo

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %i.amt, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.amu = zext i32 %.8414 to i64
  %i.amv = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %.sroa.01375.13, i64 noundef %i.amu, i64 noundef 1)
          to label %bb.ey unwind label %bb.eo

bb.ey:                                            ; preds = %bb.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i768, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i617, %bb.eq, %bb.es, %bb.eu, %bb.ew, %bb.en, %_ZNSt6vectorIhSaIhEED2Ev.exit606, %_ZNSt6vectorIhSaIhEED2Ev.exit752
  %.sroa.55.14 = phi ptr [ %.sroa.55.8, %_ZNSt6vectorIhSaIhEED2Ev.exit752 ], [ %.sroa.55.13, %bb.ew ], [ %.sroa.55.13, %bb.eu ], [ %.sroa.55.13, %bb.es ], [ %.sroa.55.13, %bb.eq ], [ %.sroa.55.13, %bb.en ], [ %.sroa.55.51465, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i617 ], [ %.sroa.55.2, %_ZNSt6vectorIhSaIhEED2Ev.exit606 ], [ %.sroa.55.121566, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i768 ], [ %.sroa.55.13, %bb.ex ]
  %.sroa.01375.14 = phi ptr [ %.sroa.01375.8, %_ZNSt6vectorIhSaIhEED2Ev.exit752 ], [ %.sroa.01375.13, %bb.ew ], [ %.sroa.01375.13, %bb.eu ], [ %.sroa.01375.13, %bb.es ], [ %.sroa.01375.13, %bb.eq ], [ %.sroa.01375.13, %bb.en ], [ %.sroa.01375.51470, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i617 ], [ %.sroa.01375.2, %_ZNSt6vectorIhSaIhEED2Ev.exit606 ], [ %.sroa.01375.121572, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i768 ], [ %.sroa.01375.13, %bb.ex ] ; 3 uses
  %.20379 = phi i1 [ false, %_ZNSt6vectorIhSaIhEED2Ev.exit752 ], [ false, %bb.ew ], [ false, %bb.eu ], [ false, %bb.es ], [ false, %bb.eq ], [ false, %bb.en ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i617 ], [ false, %_ZNSt6vectorIhSaIhEED2Ev.exit606 ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i768 ], [ %i.amv, %bb.ex ]
  %.not.i.i.i785 = icmp eq ptr %.sroa.01375.14, null
  br i1 %.not.i.i.i785, label %_ZNSt6vectorIhSaIhEED2Ev.exit787, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.amw = ptrtoint ptr %.sroa.55.14 to i64
  %i.amx = ptrtoint ptr %.sroa.01375.14 to i64
  %i.amy = sub i64 %i.amw, %i.amx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01375.14, i64 noundef %i.amy) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit787

_ZNSt6vectorIhSaIhEED2Ev.exit787:                 ; preds = %bb.ey, %bb.ez
  br i1 %.20379, label %bb.fa, label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit

_ZNSt6vectorIhSaIhEED2Ev.exit608:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i765, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i986, %.body626.thread, %.body626.thread1521, %_ZNSt6vectorIhSaIhEED2Ev.exit755, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i962, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i614, %bb.r, %_ZNSt6vectorIhSaIhEED2Ev.exit580, %bb.bl, %bb.eo
  %.sroa.55.15 = phi ptr [ %.sroa.55.111556, %_ZNSt6vectorIhSaIhEED2Ev.exit755 ], [ %.sroa.55.13, %bb.eo ], [ %.sroa.55.3, %bb.bl ], [ %.sroa.55.51465, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i962 ], [ %.sroa.55.16, %bb.r ], [ %.sroa.55.3, %_ZNSt6vectorIhSaIhEED2Ev.exit580 ], [ %.sroa.55.16, %.body626.thread ], [ %.sroa.55.51465, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i614 ], [ %.sroa.55.16, %.body626.thread1521 ], [ %.sroa.55.121566, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i986 ], [ %.sroa.55.121566, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i765 ]
  %.sroa.01375.15 = phi ptr [ %.sroa.01375.111557, %_ZNSt6vectorIhSaIhEED2Ev.exit755 ], [ %.sroa.01375.13, %bb.eo ], [ %.sroa.01375.3, %bb.bl ], [ %.sroa.01375.51470, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i962 ], [ %.sroa.01375.16, %bb.r ], [ %.sroa.01375.3, %_ZNSt6vectorIhSaIhEED2Ev.exit580 ], [ %.sroa.01375.16, %.body626.thread ], [ %.sroa.01375.51470, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i614 ], [ %.sroa.01375.16, %.body626.thread1521 ], [ %.sroa.01375.121572, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i986 ], [ %.sroa.01375.121572, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i765 ] ; 3 uses
  %.pn518 = phi { ptr, i32 } [ %.pn484.pn.pn.pn1558, %_ZNSt6vectorIhSaIhEED2Ev.exit755 ], [ %i.amj, %bb.eo ], [ %.pn507.pn, %bb.bl ], [ %lpad.phi1723, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i962 ], [ %i.hv, %bb.r ], [ %.pn507.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit580 ], [ %i.wg, %.body626.thread ], [ %i.ve, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i614 ], [ %i.wi, %.body626.thread1521 ], [ %lpad.phi1718, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i986 ], [ %i.alp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i765 ] ; 2 uses
  %.not.i.i.i788 = icmp eq ptr %.sroa.01375.15, null
  br i1 %.not.i.i.i788, label %.body, label %_ZNSt6vectorIhSaIhEED2Ev.exit608.thread

_ZNSt6vectorIhSaIhEED2Ev.exit608.thread:          ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit608
  %i.amz = ptrtoint ptr %.sroa.55.15 to i64
  %i.ana = ptrtoint ptr %.sroa.01375.15 to i64
  %i.anb = sub i64 %i.amz, %i.ana
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01375.15, i64 noundef %i.anb) #30
  br label %.body

bb.fa:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit787, %bb.e
  %i.anc = load i8, ptr %i.ae, align 8, !tbaa !75
  %.not522 = icmp eq i8 %i.anc, 0
  br i1 %.not522, label %bb.hh, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29, !noalias !208
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr nonnull align 1 dereferenceable(5) @.str.30, i64 4, i64 0, ptr nonnull %14)
          to label %.noexc796 unwind label %bb.i

.noexc796:                                        ; preds = %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29, !noalias !208
  %i.and = load ptr, ptr %15, align 8, !tbaa !17
  %i.ane = load i64, ptr %i.dc, align 8, !tbaa !13
  %i.anf = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.and, i64 noundef %i.ane, i64 noundef 1)
          to label %bb.fc unwind label %bb.fd

bb.fc:                                            ; preds = %.noexc796
  %i.ang = load ptr, ptr %15, align 8, !tbaa !17  ; 2 uses
  %i.anh = icmp eq ptr %i.ang, %i.dd
  br i1 %i.anh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i795, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i794

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i794: ; preds = %bb.fc
  %i.ani = load i64, ptr %i.dd, align 8, !tbaa !16
  %i.anj = add i64 %i.ani, 1
  call void @_ZdlPvm(ptr noundef %i.ang, i64 noundef %i.anj) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i795

bb.fd:                                            ; preds = %.noexc796
  %i.ank = landingpad { ptr, i32 }
          cleanup
  %i.anl = load ptr, ptr %15, align 8, !tbaa !17  ; 2 uses
  %i.anm = icmp eq ptr %i.anl, %i.dd
  br i1 %i.anm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i792, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i791

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i791: ; preds = %bb.fd
  %i.ann = load i64, ptr %i.dd, align 8, !tbaa !16
  %i.ano = add i64 %i.ann, 1
  call void @_ZdlPvm(ptr noundef %i.anl, i64 noundef %i.ano) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i792

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i792: ; preds = %bb.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i791
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i795: ; preds = %bb.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i794
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br i1 %i.anf, label %bb.fe, label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit

bb.fe:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i795
  %i.anp = mul i32 %i.ff, %i.fe                   ; 5 uses
  %i.anq = zext i32 %i.anp to i64                 ; 3 uses
  %i.anr = load i8, ptr %i.ae, align 8, !tbaa !79
  %.not.i800 = icmp eq i8 %i.anr, 0               ; 2 uses
  %i.ans = load i8, ptr %i.ag, align 1
  %i.ant = lshr i8 %i.ans, 3                      ; 3 uses
  %narrow.i = select i1 %.not.i800, i8 0, i8 %i.ant
  %i.anu = zext nneg i8 %narrow.i to i32
  %i.anv = mul i32 %i.anp, %i.anu                 ; 8 uses
  %i.anw = and i32 %i.anv, 3                      ; 2 uses
  %.not.i801 = icmp eq i32 %i.anw, 0
  %i.anx = sub nuw nsw i32 4, %i.anw
  %i.any = select i1 %.not.i801, i32 0, i32 %i.anx
  %.0.i802 = add i32 %i.anv, 8
  %i.anz = add i32 %.0.i802, %i.any               ; 2 uses
  %i.aoa = load i32, ptr %i.bc, align 4, !tbaa !71
  %i.aob = icmp eq i32 %i.aoa, 1
  %i.aoc = zext i32 %i.anv to i64                 ; 3 uses
  %.not.i.i.i.i803 = icmp eq i32 %i.anv, 0
  br i1 %.not.i.i.i.i803, label %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.aod = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aoc) #31
          to label %.noexc805 unwind label %bb.fh ; 3 uses

.noexc805:                                        ; preds = %bb.ff
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 %i.aoc
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aod, i8 0, i64 %i.aoc, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit:            ; preds = %.noexc805, %bb.fe
  %.sroa.01254.4 = phi ptr [ %i.aod, %.noexc805 ], [ null, %bb.fe ] ; 21 uses
  %.sroa.25.4 = phi ptr [ %i.aoe, %.noexc805 ], [ null, %bb.fe ] ; 13 uses
  br i1 %i.aob, label %bb.fg, label %_ZNSt6vectorIhSaIhEED2Ev.exit895.thread

bb.fg:                                            ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit
  %i.aof = shl i32 %i.anv, 1                      ; 2 uses
  %i.aog = zext i32 %i.aof to i64                 ; 3 uses
  %.not1700 = icmp eq i32 %i.aof, 0
  br i1 %.not1700, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit820, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i811

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i811: ; preds = %bb.fg
  %i.aoh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aog) #31
          to label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i817 unwind label %.thread1606 ; 4 uses

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i817: ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i811
  store i8 0, ptr %i.aoh, align 1, !tbaa !16
  %i.aoi = add nsw i64 %i.aog, -1
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoh, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aoj, i8 0, i64 %i.aoi, i1 false)
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoh, i64 %i.aog
  %i.aol = ptrtoint ptr %i.aok to i64
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit820

_ZNSt6vectorIhSaIhEE6resizeEm.exit820:            ; preds = %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i817, %bb.fg
  %.sroa.01242.1 = phi ptr [ %i.aoh, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i817 ], [ null, %bb.fg ] ; 13 uses
  %.sroa.111248.0 = phi i64 [ %i.aol, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i817 ], [ 0, %bb.fg ] ; 4 uses
  %.not21552156 = icmp eq i8 %i.ant, 0
  %.not2155 = select i1 %.not.i800, i1 true, i1 %.not21552156
  br i1 %.not2155, label %._crit_edge2114, label %.lr.ph2113

.lr.ph2113:                                       ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit820
  %i.aom = zext nneg i8 %i.ant to i64
  %.03962110 = add nuw nsw i64 %i.aom, 4294967295
  %.not.i.i.i.i823 = icmp eq i32 %i.anp, 0
  %i.aon = add nsw i64 %i.anq, -1                 ; 2 uses
  %i.aoo = icmp eq i64 %i.aon, 0
  %.not5322105 = icmp ugt i32 %i.ep, %i.fc
  %.not5332098 = icmp ugt i32 %i.ey, %i.fa
  %i.aop = ptrtoint ptr %.sroa.01242.1 to i64
  %i.aoq = sext i32 %i.anp to i64
  %i.aor = icmp sgt i32 %i.anp, 0
  %i.aos = and i64 %.03962110, 4294967295
  %brmerge = select i1 %.not5322105, i1 true, i1 %.not5332098
  br label %bb.fi

._crit_edge2114:                                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit872, %_ZNSt6vectorIhSaIhEE6resizeEm.exit820
  %.0397.lcssa = phi i32 [ 0, %_ZNSt6vectorIhSaIhEE6resizeEm.exit820 ], [ %i.asp, %_ZNSt6vectorIhSaIhEED2Ev.exit872 ] ; 8 uses
  %i.aot = icmp ult i32 %.0397.lcssa, %i.anv
  br i1 %i.aot, label %bb.fz, label %.thread1672

bb.fh:                                            ; preds = %bb.ff
  %i.aou = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread1606:                                      ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i811
  %i.aov = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit898

bb.fi:                                            ; preds = %.lr.ph2113, %_ZNSt6vectorIhSaIhEED2Ev.exit872
  %indvars.iv2409 = phi i64 [ %i.aos, %.lr.ph2113 ], [ %indvars.iv.next2410, %_ZNSt6vectorIhSaIhEED2Ev.exit872 ] ; 3 uses
  %.03972111 = phi i32 [ 0, %.lr.ph2113 ], [ %i.asp, %_ZNSt6vectorIhSaIhEED2Ev.exit872 ] ; 2 uses
  br i1 %.not.i.i.i.i823, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit827, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.aow = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.anq) #31
          to label %.noexc826 unwind label %bb.fw ; 5 uses

.noexc826:                                        ; preds = %bb.fj
  %i.aox = getelementptr i8, ptr %i.aow, i64 %i.anq ; 3 uses
  store i8 0, ptr %i.aow, align 1, !tbaa !16
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aow, i64 1 ; 2 uses
  br i1 %i.aoo, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit827, label %bb.fk
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_19IffOutput5closeEv:bb.a
  br i1 %i.avs, label %scalar.ph.preheader, label %vector.body, !llvm.loop !219

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph2120
  %indvars.iv2413.ph = phi i64 [ %i.aup, %vector.memcheck ], [ %i.aup, %.lr.ph2120 ], [ %i.avl, %vector.body ]
  %.23512117.ph = phi i64 [ %.13502125, %vector.memcheck ], [ %.13502125, %.lr.ph2120 ], [ %i.avm, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.gt
  %indvars.iv2413 = phi i64 [ %indvars.iv.next2414, %bb.gt ], [ %indvars.iv2413.ph, %scalar.ph.preheader ] ; 2 uses
  %.23512117 = phi i64 [ %i.awv, %bb.gt ], [ %.23512117.ph, %scalar.ph.preheader ] ; 3 uses
  %exitcond2418.not = icmp eq i64 %.23512117, %umax2417
  br i1 %exitcond2418.not, label %bb.gj, label %bb.gt

bb.gj:                                            ; preds = %scalar.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29, !noalias !220
  store i32 %storemerge5252124, ptr %11, align 16, !tbaa !16, !alias.scope !223, !noalias !220
  store i32 %storemerge5232132, ptr %i.de, align 16, !tbaa !16, !alias.scope !223, !noalias !220
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29, !noalias !226
  store i64 0, ptr %i.dh, align 8, !noalias !226
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.dg, align 8, !tbaa !131, !noalias !226
  store ptr %i.di, ptr %6, align 8, !tbaa !133, !noalias !226
  store i64 500, ptr %i.df, align 8, !tbaa !134, !noalias !226
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29, !noalias !226
  store ptr @.str.31, ptr %1, align 8, !tbaa !135, !noalias !226
  store i64 70, ptr %.sroa.2.0..sroa_idx.i16.i1035, align 8, !tbaa !136, !noalias !226
  store i32 0, ptr %i.dj, align 8, !tbaa !137, !noalias !226
  store ptr %6, ptr %i.dk, align 8, !tbaa !140, !noalias !226
  store i64 34, ptr %i.dl, align 8, !tbaa !142, !noalias !226
  store ptr %11, ptr %.sroa.2.0..sroa_idx.i17.i1036, align 8, !tbaa !16, !noalias !226
  store ptr null, ptr %i.dm, align 8, !tbaa !144, !noalias !226
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.31, i64 70, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %.noexc1041 unwind label %.loopexit1724

.noexc1041:                                       ; preds = %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29, !noalias !226
  call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %i.avt = load i64, ptr %i.dh, align 8, !tbaa !148, !noalias !232 ; 6 uses
  %i.avu = icmp ult i64 %i.avt, 4611686018427387903
  call void @llvm.assume(i1 %i.avu)
  %i.avv = load ptr, ptr %6, align 8, !tbaa !133, !noalias !232 ; 3 uses
  store ptr %i.dn, ptr %13, align 8, !tbaa !9, !alias.scope !232
  %i.avw = icmp eq ptr %i.avv, null
  %i.avx = icmp ne i64 %i.avt, 0
  %or.cond.i.i.i999 = and i1 %i.avx, %i.avw
  br i1 %or.cond.i.i.i999, label %.noexc.i.i1004, label %bb.gk

.noexc.i.i1004:                                   ; preds = %.noexc1041
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.75) #32
          to label %.noexc.i1005 unwind label %.loopexit.split-lp1725

.noexc.i1005:                                     ; preds = %.noexc.i.i1004
  unreachable

bb.gk:                                            ; preds = %.noexc1041
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29, !noalias !232
  store i64 %i.avt, ptr %i.a, align 8, !tbaa !136, !noalias !232
  %i.avy = icmp samesign ugt i64 %i.avt, 15
  br i1 %i.avy, label %.noexc.i.i.i1002, label %._crit_edge.i.i.i.i1000

.noexc.i.i.i1002:                                 ; preds = %bb.gk
  %i.avz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc7.i1003 unwind label %.loopexit1724 ; 2 uses

.noexc7.i1003:                                    ; preds = %.noexc.i.i.i1002
  store ptr %i.avz, ptr %13, align 8, !tbaa !17, !alias.scope !232
  %i.awa = load i64, ptr %i.a, align 8, !tbaa !136, !noalias !232
  store i64 %i.awa, ptr %i.dn, align 8, !tbaa !16, !alias.scope !232
  br label %._crit_edge.i.i.i.i1000

._crit_edge.i.i.i.i1000:                          ; preds = %.noexc7.i1003, %bb.gk
  %i.awb = phi ptr [ %i.avz, %.noexc7.i1003 ], [ %i.dn, %bb.gk ] ; 2 uses
  switch i64 %i.avt, label %bb.gm [
    i64 1, label %bb.gl
    i64 0, label %bb.gn
  ]

bb.gl:                                            ; preds = %._crit_edge.i.i.i.i1000
  %i.awc = load i8, ptr %i.avv, align 1, !tbaa !16
  store i8 %i.awc, ptr %i.awb, align 1, !tbaa !16
  br label %bb.gn

bb.gm:                                            ; preds = %._crit_edge.i.i.i.i1000
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.awb, ptr align 1 %i.avv, i64 %i.avt, i1 false)
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl, %._crit_edge.i.i.i.i1000
  %i.awd = load i64, ptr %i.a, align 8, !tbaa !136, !noalias !232 ; 2 uses
  store i64 %i.awd, ptr %i.do, align 8, !tbaa !13, !alias.scope !232
  %i.awe = load ptr, ptr %13, align 8, !tbaa !17, !alias.scope !232
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awe, i64 %i.awd
  store i8 0, ptr %i.awf, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29, !noalias !232
  %i.awg = load ptr, ptr %6, align 8, !tbaa !133, !noalias !226 ; 2 uses
  %.not.i.i.i1001 = icmp eq ptr %i.awg, %i.di
  br i1 %.not.i.i.i1001, label %.noexc910, label %bb.go

bb.go:                                            ; preds = %bb.gn
  call void @free(ptr noundef %i.awg) #29
  br label %.noexc910

.loopexit1724:                                    ; preds = %.noexc.i.i.i1002, %bb.gj
  %lpad.loopexit1726 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

.loopexit.split-lp1725:                           ; preds = %.noexc.i.i1004
  %lpad.loopexit.split-lp1727 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

bb.gp:                                            ; preds = %.loopexit.split-lp1725, %.loopexit1724
  %lpad.phi1728 = phi { ptr, i32 } [ %lpad.loopexit1726, %.loopexit1724 ], [ %lpad.loopexit.split-lp1727, %.loopexit.split-lp1725 ]
  %i.awh = load ptr, ptr %6, align 8, !tbaa !133, !noalias !226 ; 2 uses
  %.not.i.i8.i997 = icmp eq ptr %i.awh, %i.di
  br i1 %.not.i.i8.i997, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i998, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  call void @free(ptr noundef %i.awh) #29
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i998

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i998: ; preds = %bb.gq, %bb.gp
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29, !noalias !226
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit898

.noexc910:                                        ; preds = %bb.go, %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29, !noalias !226
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29, !noalias !220
  %i.awi = load ptr, ptr %13, align 8, !tbaa !17
  store ptr %i.awi, ptr %12, align 8, !tbaa !21
  %i.awj = load i64, ptr %i.do, align 8, !tbaa !13
  store i64 %i.awj, ptr %i.dp, align 8, !tbaa !23
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %12)
          to label %bb.gr unwind label %bb.gs

bb.gr:                                            ; preds = %.noexc910
  %i.awk = load ptr, ptr %13, align 8, !tbaa !17  ; 2 uses
  %i.awl = icmp eq ptr %i.awk, %i.dn
  br i1 %i.awl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i909, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i908

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i908: ; preds = %bb.gr
  %i.awm = load i64, ptr %i.dn, align 8, !tbaa !16
  %i.awn = add i64 %i.awm, 1
  call void @_ZdlPvm(ptr noundef %i.awk, i64 noundef %i.awn) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i909

bb.gs:                                            ; preds = %.noexc910
  %i.awo = landingpad { ptr, i32 }
          cleanup
  %i.awp = load ptr, ptr %13, align 8, !tbaa !17  ; 2 uses
  %i.awq = icmp eq ptr %i.awp, %i.dn
  br i1 %i.awq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i906, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i905

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i905: ; preds = %bb.gs
  %i.awr = load i64, ptr %i.dn, align 8, !tbaa !16
  %i.aws = add i64 %i.awr, 1
  call void @_ZdlPvm(ptr noundef %i.awp, i64 noundef %i.aws) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i906

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i906: ; preds = %bb.gs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i905
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit898

bb.gt:                                            ; preds = %scalar.ph
  %i.awt = getelementptr inbounds nuw i8, ptr %gep2773, i64 %indvars.iv2413
  %i.awu = load i8, ptr %i.awt, align 1, !tbaa !16
  %i.awv = add i64 %.23512117, 1                  ; 4 uses
  %i.aww = getelementptr inbounds nuw i8, ptr %.sroa.01254.4, i64 %.23512117
  store i8 %i.awu, ptr %i.aww, align 1, !tbaa !16
  %indvars.iv.next2414 = add nsw i64 %indvars.iv2413, -1
  %lftr.wideiv = trunc i64 %i.awv to i32
  %exitcond2419 = icmp eq i32 %i.auz, %lftr.wideiv
  br i1 %exitcond2419, label %._crit_edge2121, label %scalar.ph, !llvm.loop !233

._crit_edge2121:                                  ; preds = %bb.gt
  %i.awx = add i32 %storemerge5252124, 1          ; 2 uses
  %.not526 = icmp ugt i32 %i.awx, %i.fa
  br i1 %.not526, label %._crit_edge2128, label %.lr.ph2120, !llvm.loop !234

._crit_edge2128:                                  ; preds = %._crit_edge2121, %bb.gi
  %.1350.lcssa = phi i64 [ %.03492134, %bb.gi ], [ %i.awv, %._crit_edge2121 ]
  %i.awy = add i32 %storemerge5232132, 1          ; 2 uses
  %.not524 = icmp ugt i32 %i.awy, %i.fc
  %indvar.next = add i32 %indvar, 1
  br i1 %.not524, label %.thread1650, label %bb.gi, !llvm.loop !235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i909: ; preds = %bb.gr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i908
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %bb.hf

.thread1650:                                      ; preds = %._crit_edge2128, %_ZNSt6vectorIhSaIhEED2Ev.exit895.thread, %.loopexit1706, %bb.gf
  %.34041634 = phi i32 [ %.2403, %bb.gf ], [ %.2403, %.loopexit1706 ], [ %i.anv, %_ZNSt6vectorIhSaIhEED2Ev.exit895.thread ], [ %i.anv, %._crit_edge2128 ]
  %.sroa.25.21628 = phi ptr [ %.sroa.25.1, %bb.gf ], [ %.sroa.25.1, %.loopexit1706 ], [ %.sroa.25.4, %_ZNSt6vectorIhSaIhEED2Ev.exit895.thread ], [ %.sroa.25.4, %._crit_edge2128 ] ; 7 uses
  %.sroa.01254.21621 = phi ptr [ %.sroa.01254.1, %bb.gf ], [ %.sroa.01254.1, %.loopexit1706 ], [ %.sroa.01254.4, %_ZNSt6vectorIhSaIhEED2Ev.exit895.thread ], [ %.sroa.01254.4, %._crit_edge2128 ] ; 8 uses
  %.114431619 = phi i32 [ %i.asu, %bb.gf ], [ %i.asu, %.loopexit1706 ], [ %i.anz, %_ZNSt6vectorIhSaIhEED2Ev.exit895.thread ], [ %i.anz, %._crit_edge2128 ]
  %savedstack919 = call ptr @llvm.stacksave.p0()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.awz = call noundef i32 @llvm.bswap.i32(i32 %.114431619)
  store i32 %i.awz, ptr %i.l, align 16, !tbaa !3
  %i.axa = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.l, i64 noundef 4, i64 noundef 1)
          to label %bb.gu unwind label %bb.gv

bb.gu:                                            ; preds = %.thread1650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.stackrestore.p0(ptr %savedstack919)
  br i1 %i.axa, label %bb.gw, label %bb.hf

bb.gv:                                            ; preds = %bb.hc, %bb.ha, %bb.gy, %bb.gw, %.thread1650, %bb.he
  %i.axb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit898

bb.gw:                                            ; preds = %bb.gu
  %i.axc = trunc i32 %i.ey to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.axd = call noundef i16 @llvm.bswap.i16(i16 %i.axc)
  store i16 %i.axd, ptr %i.k, align 16, !tbaa !95
  %i.axe = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.k, i64 noundef 2, i64 noundef 1)
          to label %bb.gx unwind label %bb.gv

bb.gx:                                            ; preds = %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br i1 %i.axe, label %bb.gy, label %bb.hf

bb.gy:                                            ; preds = %bb.gx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i16 %i.es, ptr %i.j, align 16, !tbaa !95
  %i.axf = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.j, i64 noundef 2, i64 noundef 1)
          to label %bb.gz unwind label %bb.gv

bb.gz:                                            ; preds = %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %i.axf, label %bb.ha, label %bb.hf

bb.ha:                                            ; preds = %bb.gz
  %i.axg = trunc i32 %i.fa to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.axh = call noundef i16 @llvm.bswap.i16(i16 %i.axg)
  store i16 %i.axh, ptr %i.i, align 16, !tbaa !95
  %i.axi = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.i, i64 noundef 2, i64 noundef 1)
          to label %bb.hb unwind label %bb.gv

bb.hb:                                            ; preds = %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.axi, label %bb.hc, label %bb.hf

bb.hc:                                            ; preds = %bb.hb
  %i.axj = trunc i32 %i.fc to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.axk = call noundef i16 @llvm.bswap.i16(i16 %i.axj)
  store i16 %i.axk, ptr %i.h, align 16, !tbaa !95
  %i.axl = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.h, i64 noundef 2, i64 noundef 1)
          to label %bb.hd unwind label %bb.gv

bb.hd:                                            ; preds = %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.axl, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  %i.axm = zext i32 %.34041634 to i64
  %i.axn = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %.sroa.01254.21621, i64 noundef %i.axm, i64 noundef 1)
          to label %bb.hf unwind label %bb.gv

bb.hf:                                            ; preds = %bb.he, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i909, %bb.gx, %bb.gz, %bb.hb, %bb.hd, %bb.gu
  %.sroa.25.21627 = phi ptr [ %.sroa.25.21628, %bb.gx ], [ %.sroa.25.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i909 ], [ %.sroa.25.21628, %bb.gu ], [ %.sroa.25.21628, %bb.gz ], [ %.sroa.25.21628, %bb.hd ], [ %.sroa.25.21628, %bb.hb ], [ %.sroa.25.21628, %bb.he ]
  %.sroa.01254.21622 = phi ptr [ %.sroa.01254.21621, %bb.gx ], [ %.sroa.01254.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i909 ], [ %.sroa.01254.21621, %bb.gu ], [ %.sroa.01254.21621, %bb.gz ], [ %.sroa.01254.21621, %bb.hd ], [ %.sroa.01254.21621, %bb.hb ], [ %.sroa.01254.21621, %bb.he ] ; 3 uses
  %.26385 = phi i1 [ false, %bb.gx ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i909 ], [ false, %bb.gu ], [ false, %bb.gz ], [ false, %bb.hd ], [ false, %bb.hb ], [ %i.axn, %bb.he ]
  %.not.i.i.i930 = icmp eq ptr %.sroa.01254.21622, null
  br i1 %.not.i.i.i930, label %_ZNSt6vectorIhSaIhEED2Ev.exit932, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.axo = ptrtoint ptr %.sroa.25.21627 to i64
  %i.axp = ptrtoint ptr %.sroa.01254.21622 to i64
  %i.axq = sub i64 %i.axo, %i.axp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01254.21622, i64 noundef %i.axq) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit932

_ZNSt6vectorIhSaIhEED2Ev.exit932:                 ; preds = %bb.hf, %bb.hg
  br i1 %.26385, label %bb.hh, label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit

_ZNSt6vectorIhSaIhEED2Ev.exit898:                 ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i998, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i906, %bb.gh, %bb.gg, %.thread1606, %bb.gv
  %.sroa.01254.3 = phi ptr [ %.sroa.01254.4, %bb.gh ], [ %.sroa.01254.21621, %bb.gv ], [ %.sroa.01254.4, %.thread1606 ], [ %.sroa.01254.4, %bb.gg ], [ %.sroa.01254.4, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i998 ], [ %.sroa.01254.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i906 ] ; 3 uses
  %.sroa.25.3 = phi ptr [ %.sroa.25.4, %bb.gh ], [ %.sroa.25.21628, %bb.gv ], [ %.sroa.25.4, %.thread1606 ], [ %.sroa.25.4, %bb.gg ], [ %.sroa.25.4, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i998 ], [ %.sroa.25.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i906 ]
  %.pn534.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn534.pn.pn.pn, %bb.gh ], [ %i.axb, %bb.gv ], [ %i.aov, %.thread1606 ], [ %.pn534.pn.pn.pn, %bb.gg ], [ %lpad.phi1728, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i998 ], [ %i.awo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i906 ] ; 2 uses
  %.not.i.i.i933 = icmp eq ptr %.sroa.01254.3, null
  br i1 %.not.i.i.i933, label %.body, label %_ZNSt6vectorIhSaIhEED2Ev.exit898.thread

_ZNSt6vectorIhSaIhEED2Ev.exit898.thread:          ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit898
  %i.axr = ptrtoint ptr %.sroa.25.3 to i64
  %i.axs = ptrtoint ptr %.sroa.01254.3 to i64
  %i.axt = sub i64 %i.axr, %i.axs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01254.3, i64 noundef %i.axt) #30
  br label %.body

bb.hh:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit932, %bb.fa
  %i.axu = add nuw nsw i32 %.03922143, 1          ; 2 uses
  %i.axv = load i32, ptr %i.al, align 4, !tbaa !105 ; 3 uses
  %i.axw = add i32 %i.axv, 63
  %i.axx = lshr i32 %i.axw, 6
  %i.axy = icmp samesign ult i32 %i.axu, %i.axx
  %indvar.next3026 = add i64 %indvar3025, 1
  br i1 %i.axy, label %bb.e, label %._crit_edge2145.loopexit, !llvm.loop !236

._crit_edge2145.loopexit:                         ; preds = %bb.hh
  %.pre2423 = load i32, ptr %i.ax, align 8, !tbaa !106
  br label %._crit_edge2145

._crit_edge2145:                                  ; preds = %._crit_edge2145.loopexit, %.preheader
  %i.axz = phi i32 [ %.pre2423, %._crit_edge2145.loopexit ], [ %i.el, %.preheader ] ; 2 uses
  %i.aya = phi i32 [ %i.axv, %._crit_edge2145.loopexit ], [ %i.em, %.preheader ]
  %i.ayb = add nuw nsw i32 %.03582147, 1          ; 2 uses
  %i.ayc = add i32 %i.axz, 63
  %i.ayd = lshr i32 %i.ayc, 6
  %i.aye = icmp samesign ult i32 %i.ayb, %i.ayd
  br i1 %i.aye, label %.preheader, label %._crit_edge2148, !llvm.loop !237

._crit_edge2148:                                  ; preds = %._crit_edge2145, %.preheader1729
  %i.ayf = invoke noundef i64 @_ZNK11OpenImageIO4v3_111ImageOutput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %bb.hi unwind label %bb.hk

bb.hi:                                            ; preds = %._crit_edge2148
  %i.ayg = trunc i64 %i.ayf to i32
  %i.ayh = add i32 %i.ayg, -8                     ; 2 uses
  %i.ayi = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  %i.ayj = load i32, ptr %i.ayi, align 4, !tbaa !238
  %i.ayk = sub i32 %i.ayh, %i.ayj
  %i.ayl = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef 4, i32 noundef 0)
          to label %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit.i940 unwind label %bb.hl ; 0 uses

_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit.i940: ; preds = %bb.hi
  %savedstack941 = call ptr @llvm.stacksave.p0()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.aym = call noundef i32 @llvm.bswap.i32(i32 %i.ayh)
  store i32 %i.aym, ptr %i.g, align 16, !tbaa !3
  %i.ayn = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.g, i64 noundef 4, i64 noundef 1)
          to label %bb.hj unwind label %bb.hl

bb.hj:                                            ; preds = %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit.i940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.stackrestore.p0(ptr %savedstack941)
  br i1 %i.ayn, label %bb.hm, label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit

bb.hk:                                            ; preds = %._crit_edge2148
  %i.ayo = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.hl:                                            ; preds = %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit.i948, %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit.i940, %bb.ho, %bb.hm, %bb.hi
  %i.ayp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.hm:                                            ; preds = %bb.hj
  %i.ayq = load i32, ptr %i.ayi, align 4, !tbaa !238
  %i.ayr = add i32 %i.ayq, 4
  %i.ays = zext i32 %i.ayr to i64
  %i.ayt = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.ays, i32 noundef 0)
          to label %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit.i948 unwind label %bb.hl ; 0 uses

_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit.i948: ; preds = %bb.hm
  %savedstack949 = call ptr @llvm.stacksave.p0()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ayu = call noundef i32 @llvm.bswap.i32(i32 %i.ayk)
  store i32 %i.ayu, ptr %i.f, align 16, !tbaa !3
  %i.ayv = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.f, i64 noundef 4, i64 noundef 1)
          to label %bb.hn unwind label %bb.hl

bb.hn:                                            ; preds = %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit.i948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.stackrestore.p0(ptr %savedstack949)
  br i1 %i.ayv, label %bb.ho, label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit

bb.ho:                                            ; preds = %bb.hn
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef 0)
          to label %bb.hp unwind label %bb.hl

bb.hp:                                            ; preds = %bb.ho
  %i.ayw = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ayx = load ptr, ptr %i.ayw, align 8, !tbaa !20
  %i.ayy = load ptr, ptr %i.t, align 8, !tbaa !104
  %i.ayz = icmp eq ptr %i.ayx, %i.ayy
  br i1 %i.ayz, label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.aza = call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIhSaIhEELb1EE8_S_do_itERS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.s) #29 ; 0 uses
  br label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit

_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit:       ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit932, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNSt6vectorIhSaIhEED2Ev.exit787, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i795, %bb.hj, %bb.hn, %bb.hp, %bb.hq
  %i.azb = phi i1 [ true, %bb.hq ], [ false, %bb.hn ], [ false, %bb.hj ], [ true, %bb.hp ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i795 ], [ false, %_ZNSt6vectorIhSaIhEED2Ev.exit787 ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ], [ false, %_ZNSt6vectorIhSaIhEED2Ev.exit932 ]
  %.not.i.i.i952 = icmp eq ptr %.sroa.01424.0, null
  br i1 %.not.i.i.i952, label %_ZNSt6vectorIhSaIhEED2Ev.exit954, label %bb.hr

bb.hr:                                            ; preds = %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit
  %i.azc = ptrtoint ptr %.sroa.111429.0 to i64
  %i.azd = ptrtoint ptr %.sroa.01424.0 to i64
  %i.aze = sub i64 %i.azc, %i.azd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01424.0, i64 noundef %i.aze) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit954

_ZNSt6vectorIhSaIhEED2Ev.exit954:                 ; preds = %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit, %bb.hr
  br i1 %i.azb, label %bb.ht, label %bb.hu

.body:                                            ; preds = %bb.fh, %_ZNSt6vectorIhSaIhEED2Ev.exit898, %_ZNSt6vectorIhSaIhEED2Ev.exit898.thread, %_ZNSt6vectorIhSaIhEED2Ev.exit608.thread, %_ZNSt6vectorIhSaIhEED2Ev.exit608, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i792, %bb.i, %bb.hk, %bb.hl
  %.pn534.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ank, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i792 ], [ %.pn518, %_ZNSt6vectorIhSaIhEED2Ev.exit608.thread ], [ %i.ayo, %bb.hk ], [ %i.ayp, %bb.hl ], [ %i.fo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ], [ %i.ft, %bb.i ], [ %.pn534.pn.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit898.thread ], [ %i.hu, %bb.q ], [ %.pn518, %_ZNSt6vectorIhSaIhEED2Ev.exit608 ], [ %i.aou, %bb.fh ], [ %.pn534.pn.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit898 ]
  %.not.i.i.i955 = icmp eq ptr %.sroa.01424.0, null
  br i1 %.not.i.i.i955, label %_ZNSt6vectorIhSaIhEED2Ev.exit957, label %bb.hs

bb.hs:                                            ; preds = %.body
  %i.azf = ptrtoint ptr %.sroa.111429.0 to i64
  %i.azg = ptrtoint ptr %.sroa.01424.0 to i64
  %i.azh = sub i64 %i.azf, %i.azg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01424.0, i64 noundef %i.azh) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit957

_ZNSt6vectorIhSaIhEED2Ev.exit957:                 ; preds = %bb.hs, %.body
  resume { ptr, i32 } %.pn534.pn.pn.pn.pn.pn.pn.pn

bb.ht:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit954, %bb.b, %bb.a
  call void @_ZN11OpenImageIO4v3_111ImageOutput13ioproxy_clearEv(ptr noundef nonnull align 8 dereferenceable(384) %0)
  %i.azi = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.azj = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.azj, align 8, !tbaa !13
  %i.azk = load ptr, ptr %i.azi, align 8, !tbaa !17
  store i8 0, ptr %i.azk, align 1, !tbaa !16
  br label %bb.hu

bb.hu:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit954, %bb.ht
  %.50 = phi i1 [ true, %bb.ht ], [ false, %_ZNSt6vectorIhSaIhEED2Ev.exit954 ]
  ret i1 %.50
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !18     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
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
  store i8 0, ptr %i.b, align 1, !tbaa !16
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
  store ptr %.0.i.i.i.i, ptr %i.a, align 8, !tbaa !104
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %i.h
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.76) #32
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.e
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.h)
  %i.u = add nuw i64 %.sroa.speculated.i.i, %i.f
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 9223372036854775807) ; 2 uses
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #31 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  store i8 0, ptr %i.x, align 1, !tbaa !16
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
  store ptr %i.w, ptr %0, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !104
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store ptr %i.ad, ptr %i.i, align 8, !tbaa !20
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.j:                                             ; preds = %bb.a
  %i.ae = icmp ult i64 %1, %i.f
  br i1 %i.ae, label %bb.k, label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.af
  br i1 %.not.i4, label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i:          ; preds = %bb.k
  store ptr %i.af, ptr %i.a, align 8, !tbaa !104
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit:   ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_19IffOutput9write_strENS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef dead_on_return %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !23
  %i.d = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.a, i64 noundef %i.c, i64 noundef 1) ; 2 uses
  %i.e = load i64, ptr %i.b, align 8, !tbaa !23   ; 3 uses
  %i.f = add i64 %2, -1
  %i.g = add i64 %i.f, %i.e                       ; 2 uses
  %i.h = urem i64 %i.g, %2
  %i.i = sub nuw i64 %i.g, %i.h                   ; 2 uses
  %.not = icmp eq i64 %i.i, %i.e
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = sub i64 %i.i, %i.e
  %i.k = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @_ZZN11OpenImageIO4v3_19IffOutput9write_strENS0_17basic_string_viewIcSt11char_traitsIcEEEmE3pad, i64 noundef %i.j, i64 noundef 1)
  %i.l = and i1 %i.d, %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.in = phi i1 [ %i.l, %bb.b ], [ %i.d, %bb.a ]
  ret i1 %.0.in
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_19IffOutput17write_meta_stringENS0_17basic_string_viewIcSt11char_traitsIcEEES5_b(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef dead_on_return %1, ptr noundef dead_on_return %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [4 x i8], align 16                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !23
  %i.d = icmp ne i64 %i.c, 0
  %or.cond = or i1 %3, %i.d
  br i1 %or.cond, label %bb.b, label %_ZN11OpenImageIO4v3_19IffOutput9write_strENS0_17basic_string_viewIcSt11char_traitsIcEEEm.exit5

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !23   ; 4 uses
  %i.h = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %i.e, i64 noundef %i.g, i64 noundef 1) ; 2 uses
  %i.i = add i64 %i.g, 3
  %i.j = and i64 %i.i, -4                         ; 2 uses
  %.not.i = icmp eq i64 %i.j, %i.g
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_19IffOutput9write_strENS0_17basic_string_viewIcSt11char_traitsIcEEEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = sub i64 %i.j, %i.g
  %i.l = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull @_ZZN11OpenImageIO4v3_19IffOutput9write_strENS0_17basic_string_viewIcSt11char_traitsIcEEEmE3pad, i64 noundef %i.k, i64 noundef 1)
  %i.m = and i1 %i.h, %i.l
  br i1 %i.m, label %bb.d, label %_ZN11OpenImageIO4v3_19IffOutput9write_strENS0_17basic_string_viewIcSt11char_traitsIcEEEm.exit5

_ZN11OpenImageIO4v3_19IffOutput9write_strENS0_17basic_string_viewIcSt11char_traitsIcEEEm.exit: ; preds = %bb.b
  br i1 %i.h, label %bb.d, label %_ZN11OpenImageIO4v3_19IffOutput9write_strENS0_17basic_string_viewIcSt11char_traitsIcEEEm.exit5

bb.d:                                             ; preds = %bb.c, %_ZN11OpenImageIO4v3_19IffOutput9write_strENS0_17basic_string_viewIcSt11char_traitsIcEEEm.exit
  %i.n = load i64, ptr %i.b, align 8, !tbaa !23
  %i.o = trunc i64 %i.n to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = tail call noundef i32 @llvm.bswap.i32(i32 %i.o)
  store i32 %i.p, ptr %i.a, align 16, !tbaa !3
  %i.q = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.q, label %bb.e, label %_ZN11OpenImageIO4v3_19IffOutput9write_strENS0_17basic_string_viewIcSt11char_traitsIcEEEm.exit5

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.b, align 8, !tbaa !23   ; 5 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_ZN11OpenImageIO4v3_19IffOutput9write_strENS0_17basic_string_viewIcSt11char_traitsIcEEEm.exit5, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %2, align 8, !tbaa !21
  %i.u = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %i.t, i64 noundef %i.r, i64 noundef 1) ; 2 uses
  %i.v = add i64 %i.r, 3
  %i.w = and i64 %i.v, -4                         ; 2 uses
  %.not.i3 = icmp eq i64 %i.w, %i.r
  br i1 %.not.i3, label %_ZN11OpenImageIO4v3_19IffOutput9write_strENS0_17basic_string_viewIcSt11char_traitsIcEEEm.exit5, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = sub i64 %i.w, %i.r
  %i.y = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull @_ZZN11OpenImageIO4v3_19IffOutput9write_strENS0_17basic_string_viewIcSt11char_traitsIcEEEmE3pad, i64 noundef %i.x, i64 noundef 1)
  %i.z = and i1 %i.u, %i.y
  br label %_ZN11OpenImageIO4v3_19IffOutput9write_strENS0_17basic_string_viewIcSt11char_traitsIcEEEm.exit5

_ZN11OpenImageIO4v3_19IffOutput9write_strENS0_17basic_string_viewIcSt11char_traitsIcEEEm.exit5: ; preds = %bb.g, %bb.f, %bb.c, %_ZN11OpenImageIO4v3_19IffOutput9write_strENS0_17basic_string_viewIcSt11char_traitsIcEEEm.exit, %bb.d, %bb.e, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ false, %bb.d ], [ false, %_ZN11OpenImageIO4v3_19IffOutput9write_strENS0_17basic_string_viewIcSt11char_traitsIcEEEm.exit ], [ true, %bb.e ], [ false, %bb.c ], [ %i.z, %bb.g ], [ %i.u, %bb.f ]
  ret i1 %.0
}

declare noundef i64 @_ZNK11OpenImageIO4v3_111ImageOutput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_19IffOutput14write_scanlineEiiNS0_8TypeDescEPKvl(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 noundef %1, i32 noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector.15", align 8    ; 9 uses
  %i.a = tail call noundef zeroext i1 @_ZNK11OpenImageIO4v3_111ImageOutput14ioproxy_openedEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.23)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.c = load i32, ptr %i.b, align 8, !tbaa !59
  %i.d = invoke noundef ptr @_ZN11OpenImageIO4v3_111ImageOutput18to_native_scanlineENS0_8TypeDescEPKvlRSt6vectorIhSaIhEEjii(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 %3, ptr noundef %4, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %i.c, i32 noundef %1, i32 noundef %2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.f = load i32, ptr %i.e, align 4, !tbaa !80
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.i = load i8, ptr %i.h, align 8, !tbaa !77
  %i.j = lshr i8 %i.i, 3
  %i.k = zext nneg i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 241
  %i.m = load i8, ptr %i.l, align 1, !tbaa !78
  %i.n = zext i8 %i.m to i64
  %i.o = mul nuw nsw i64 %i.k, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.q = load i8, ptr %i.p, align 8, !tbaa !79
  %.not.i.i.i = icmp eq i8 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 249
  %i.s = load i8, ptr %i.r, align 1
  %i.t = lshr i8 %i.s, 3
  %narrow.i.i.i = select i1 %.not.i.i.i, i8 0, i8 %i.t
  %i.u = zext nneg i8 %narrow.i.i.i to i64
  %i.v = add nuw nsw i64 %i.o, %i.u
  %i.w = mul nuw nsw i64 %i.v, %i.g               ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.y = load i32, ptr %i.x, align 4, !tbaa !239
  %i.z = sub i32 %1, %i.y
  %i.aa = zext i32 %i.z to i64
  %i.ab = mul i64 %i.w, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !106
  %i.ae = zext i32 %i.ad to i64
  %i.af = mul i64 %i.w, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !240
  %i.ai = sub i32 %2, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = mul i64 %i.af, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.an = getelementptr i8, ptr %i.am, i64 %i.ab
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.ak
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr align 1 %i.d, i64 %i.w, i1 false)
  %i.ap = load ptr, ptr %6, align 8, !tbaa !18    ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !20
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %6, align 8, !tbaa !18    ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIhSaIhEED2Ev.exit20, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !20
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit20

_ZNSt6vectorIhSaIhEED2Ev.exit20:                  ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  resume { ptr, i32 } %i.av

bb.h:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.b
  ret i1 false
}

declare noundef zeroext i1 @_ZNK11OpenImageIO4v3_111ImageOutput14ioproxy_openedEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29, !noalias !241
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29, !noalias !241
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull %1, i64 %i.a, i64 0, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29, !noalias !241
  %i.b = load ptr, ptr %4, align 8, !tbaa !17
  store ptr %i.b, ptr %3, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13
  store i64 %i.e, ptr %i.c, align 8, !tbaa !23
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !17     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !16
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !17     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !16
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %i.k
}

declare noundef ptr @_ZN11OpenImageIO4v3_111ImageOutput18to_native_scanlineENS0_8TypeDescEPKvlRSt6vectorIhSaIhEEjii(ptr noundef nonnull align 8 dereferenceable(184), i64, ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_19IffOutput10write_tileEiiiNS0_8TypeDescEPKvlll(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 %4, ptr noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) unnamed_addr #0 align 2 {
bb.a:
  %9 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 4 uses
  %i.a = tail call noundef zeroext i1 @_ZNK11OpenImageIO4v3_111ImageOutput14ioproxy_openedEv(ptr noundef nonnull align 8 dereferenceable(184) %0) ; 2 uses
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.24)
end_hunk_2
