Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/rbac_policy?download=true
inline.NumInlined: 939
inline.NumDeleted: 463
begin_hunk_0_@_ZNK9grpc_core4Rbac10Permission8ToStringB5cxx11Ev:bb.a
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 224
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !273
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.kr, align 8, !noalias !273
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.ks = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i to ptr
  store ptr %i.ks, ptr %4, align 8, !tbaa !22, !noalias !273
  %i.kt = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.kt, align 8, !tbaa !59, !noalias !273
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull @.str.20, i64 12, ptr nonnull %4, i64 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !273
  br label %bb.bg

bb.bc:                                            ; preds = %bb.a
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.kv = load i8, ptr %i.ku, align 8, !tbaa !103, !range !104, !noundef !105
  %i.kw = trunc nuw i8 %i.kv to i1
  %i.kx = select i1 %i.kw, ptr @.str.22, ptr @.str.23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !274
  store ptr %i.kx, ptr %3, align 8, !tbaa !22, !noalias !274
  %i.ky = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIPKcEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ky, align 8, !tbaa !59, !noalias !274
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull @.str.21, i64 10, ptr nonnull %3, i64 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !274
  br label %bb.bg

bb.bd:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_ZNK9grpc_core13StringMatcher8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(49) %i.kz)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !275
  store ptr %22, ptr %2, align 8, !tbaa !22, !noalias !275
  %i.la = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.la, align 8, !tbaa !59, !noalias !275
  invoke void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull @.str.24, i64 24, ptr nonnull %2, i64 1)
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !275
  %i.lb = load ptr, ptr %22, align 8, !tbaa !20   ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.ld = icmp eq ptr %i.lb, %i.lc
  br i1 %i.ld, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %bb.be
  %i.le = load i64, ptr %i.lc, align 8, !tbaa !22
  %i.lf = add i64 %i.le, 1
  call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.lf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.lg = landingpad { ptr, i32 }
          cleanup
  %i.lh = load ptr, ptr %22, align 8, !tbaa !20   ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.lj = icmp eq ptr %i.lh, %i.li
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %bb.bf
  %i.lk = load i64, ptr %i.li, align 8, !tbaa !22
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.lh, i64 noundef %i.ll) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %bb.bh

._crit_edge.i.i183:                               ; preds = %bb.a
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.lm, ptr %0, align 8, !tbaa !17
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ln, align 8, !tbaa !21
  store i8 0, ptr %i.lm, align 8, !tbaa !22
  br label %bb.bg

bb.bg:                                            ; preds = %._crit_edge.i.i183, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %bb.bc, %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %._crit_edge.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit117, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  ret void

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, %bb.ao, %bb.u
  %.pn28 = phi { ptr, i32 } [ %i.kl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165 ], [ %.pn25.pn, %bb.u ], [ %.pn19.pn, %bb.ao ], [ %i.iq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131 ], [ %i.lg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182 ], [ %i.jg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ], [ %i.jt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154 ]
  resume { ptr, i32 } %.pn28
}

declare void @_ZNK9grpc_core13HeaderMatcher8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(114)) local_unnamed_addr #10

declare void @_ZNK9grpc_core13StringMatcher8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN9grpc_core4Rbac9Principal16MakeAndPrincipalESt6vectorISt10unique_ptrIS1_St14default_deleteIS1_EESaIS6_EE(ptr dead_on_unwind noalias writable sret(%"struct.grpc_core::Rbac::Principal") align 8 %0, ptr nofree noundef align 8 captures(none) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !21
  store i8 0, ptr %i.b, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.d, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.e, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.h, align 8, !tbaa !21
  store i8 0, ptr %i.g, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.i, align 8, !tbaa !82
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.j, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 0, ptr %i.k, align 1, !tbaa !84
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 0, ptr %i.l, align 8, !tbaa !107
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 0, ptr %i.o, align 8, !tbaa !21
  store i8 0, ptr %i.n, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i8 0, ptr %i.q, align 8
  store i32 0, ptr %0, align 8, !tbaa !119
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.s = load <2 x ptr>, ptr %1, align 8, !tbaa !120
  store <2 x ptr> %i.s, ptr %i.p, align 8, !tbaa !120
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !121
  store ptr %i.u, ptr %i.r, align 8, !tbaa !121
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core4Rbac9PrincipalD2Ev(ptr noundef nonnull align 8 dead_on_return(257) dereferenceable(257) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !123  ; 2 uses
  %.not.i.i35 = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i35, label %_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EEEvPT_.exit
  %.0.i.i6 = phi ptr [ %i.f, %_ZSt8_DestroyISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EEEvPT_.exit ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.0.i.i6, align 8, !tbaa !125 ; 3 uses
  %.not.i.i4 = icmp eq ptr %i.e, null
  br i1 %.not.i.i4, label %_ZSt8_DestroyISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EEEvPT_.exit, label %_ZNKSt14default_deleteIN9grpc_core4Rbac9PrincipalEEclEPS2_.exit.i

_ZNKSt14default_deleteIN9grpc_core4Rbac9PrincipalEEclEPS2_.exit.i: ; preds = %.lr.ph
  tail call void @_ZN9grpc_core4Rbac9PrincipalD2Ev(ptr noundef nonnull align 8 dead_on_return(257) dereferenceable(257) %i.e) #23, !inline_history !276
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 264) #24, !inline_history !276
  br label %_ZSt8_DestroyISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EEEvPT_.exit

_ZSt8_DestroyISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EEEvPT_.exit: ; preds = %.lr.ph, %_ZNKSt14default_deleteIN9grpc_core4Rbac9PrincipalEEclEPS2_.exit.i
  store ptr null, ptr %.0.i.i6, align 8, !tbaa !125
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i.i6, i64 8 ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i3, label %_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EED2Ev.exit.loopexit, label %.lr.ph, !llvm.loop !5

_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EED2Ev.exit.loopexit: ; preds = %_ZSt8_DestroyISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EEEvPT_.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !122
  br label %_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EED2Ev.exit.loopexit, %bb.a
  %i.g = phi ptr [ %.pre, %_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EED2Ev.exit.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !121
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #24
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EED2Ev.exit, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN9grpc_core4Rbac9CidrRangeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EED2Ev.exit
  %i.q = load i64, ptr %i.o, align 8, !tbaa !22
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #24
  br label %_ZN9grpc_core4Rbac9CidrRangeD2Ev.exit

_ZN9grpc_core4Rbac9CidrRangeD2Ev.exit:            ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !107, !range !104, !noundef !105
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %_ZNSt14_Optional_baseIN9grpc_core13StringMatcherELb0ELb0EED2Ev.exit

bb.c:                                             ; preds = %_ZN9grpc_core4Rbac9CidrRangeD2Ev.exit
  store i8 0, ptr %i.s, align 8, !tbaa !107
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !99   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN3re23RE2ESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN3re23RE2EEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN3re23RE2EEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.c
  tail call void @_ZN3re23RE2D1Ev(ptr noundef nonnull align 8 dead_on_return(212) dereferenceable(212) %i.w) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 216) #24
  br label %_ZNSt10unique_ptrIN3re23RE2ESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i

_ZNSt10unique_ptrIN3re23RE2ESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN3re23RE2EEclEPS1_.exit.i.i.i.i.i.i, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !20   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt14_Optional_baseIN9grpc_core13StringMatcherELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN3re23RE2ESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !22
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #24
  br label %_ZNSt14_Optional_baseIN9grpc_core13StringMatcherELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN9grpc_core13StringMatcherELb0ELb0EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN3re23RE2ESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i, %_ZN9grpc_core4Rbac9CidrRangeD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !99 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN3re23RE2ESt14default_deleteIS1_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN3re23RE2EEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN3re23RE2EEclEPS1_.exit.i.i.i: ; preds = %_ZNSt14_Optional_baseIN9grpc_core13StringMatcherELb0ELb0EED2Ev.exit
  tail call void @_ZN3re23RE2D1Ev(ptr noundef nonnull align 8 dead_on_return(212) dereferenceable(212) %i.af) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 216) #24
  br label %_ZNSt10unique_ptrIN3re23RE2ESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN3re23RE2ESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN3re23RE2EEclEPS1_.exit.i.i.i, %_ZNSt14_Optional_baseIN9grpc_core13StringMatcherELb0ELb0EED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZN9grpc_core13StringMatcherD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN3re23RE2ESt14default_deleteIS1_EED2Ev.exit.i.i
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !22
  %i.al = add i64 %i.ak, 1
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #24
  br label %_ZN9grpc_core13StringMatcherD2Ev.exit.i

_ZN9grpc_core13StringMatcherD2Ev.exit.i:          ; preds = %_ZNSt10unique_ptrIN3re23RE2ESt14default_deleteIS1_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !20 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZN9grpc_core13HeaderMatcherD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1: ; preds = %_ZN9grpc_core13StringMatcherD2Ev.exit.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !22
  %i.aq = add i64 %i.ap, 1
  tail call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #24
  br label %_ZN9grpc_core13HeaderMatcherD2Ev.exit

_ZN9grpc_core13HeaderMatcherD2Ev.exit:            ; preds = %_ZN9grpc_core13StringMatcherD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN9grpc_core4Rbac9Principal15MakeOrPrincipalESt6vectorISt10unique_ptrIS1_St14default_deleteIS1_EESaIS6_EE(ptr dead_on_unwind noalias writable sret(%"struct.grpc_core::Rbac::Principal") align 8 %0, ptr nofree noundef align 8 captures(none) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !21
  store i8 0, ptr %i.b, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.d, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.e, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.h, align 8, !tbaa !21
  store i8 0, ptr %i.g, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.i, align 8, !tbaa !82
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.j, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 0, ptr %i.k, align 1, !tbaa !84
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 0, ptr %i.l, align 8, !tbaa !107
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 0, ptr %i.o, align 8, !tbaa !21
  store i8 0, ptr %i.n, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i8 0, ptr %i.q, align 8
  store i32 1, ptr %0, align 8, !tbaa !119
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.s = load <2 x ptr>, ptr %1, align 8, !tbaa !120
  store <2 x ptr> %i.s, ptr %i.p, align 8, !tbaa !120
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !121
  store ptr %i.u, ptr %i.r, align 8, !tbaa !121
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core4Rbac9Principal16MakeNotPrincipalES1_(ptr dead_on_unwind noalias writable sret(%"struct.grpc_core::Rbac::Principal") align 8 %0, ptr noundef align 8 %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.39", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !21
  store i8 0, ptr %i.b, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.d, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.e, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.h, align 8, !tbaa !21
  store i8 0, ptr %i.g, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.i, align 8, !tbaa !82
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.j, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 0, ptr %i.k, align 1, !tbaa !84
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 0, ptr %i.l, align 8, !tbaa !107
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 0, ptr %i.o, align 8, !tbaa !21
  store i8 0, ptr %i.n, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.p, i8 0, i64 25, i1 false)
  store i32 2, ptr %0, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  %i.q = invoke noalias noundef nonnull dereferenceable(264) ptr @_Znwm(i64 noundef 264) #26
          to label %bb.b unwind label %bb.f       ; 3 uses

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN9grpc_core4Rbac9PrincipalC1EOS1_(ptr noundef nonnull align 8 dereferenceable(257) %i.q, ptr noundef nonnull align 8 dereferenceable(257) %1) #23, !noalias !284
  store ptr %i.q, ptr %2, align 8, !tbaa !125, !alias.scope !284
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !123  ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !121
  %.not.i.i = icmp eq ptr %i.s, %i.u
  %i.v = ptrtoint ptr %i.q to i64                 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread

_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread: ; preds = %bb.b
  store i64 %i.v, ptr %i.s, align 8, !tbaa !125
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.w, ptr %i.r, align 8, !tbaa !123
  br label %_ZNSt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS2_EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !122  ; 7 uses
  %i.y = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64                 ; 3 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #27
          to label %.noexc5 unwind label %bb.g

.noexc5:                                          ; preds = %bb.d
  unreachable

_ZNKSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.ac = ashr exact i64 %i.aa, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 1152921504606846975)
  %i.ag = select i1 %i.ae, i64 1152921504606846975, i64 %i.af ; 3 uses
  %.not.i.i4 = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i4)
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #26
          to label %.noexc6 unwind label %bb.g    ; 7 uses

.noexc6:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa
end_hunk_0
begin_hunk_1_@_ZN9grpc_core4Rbac9Principal16MakeNotPrincipalES1_:bb.a
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc6
  %i.ak = add i64 %i.y, -8
  %i.al = sub i64 %i.ak, %i.z                     ; 2 uses
  %i.am = lshr i64 %i.al, 3
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.al, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.an, 4611686018427387900     ; 3 uses
  %i.ao = shl i64 %n.vec, 3                       ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ai, i64 %i.ao  ; 2 uses
  %i.aq = getelementptr i8, ptr %i.x, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ai, i64 %i.ar ; 2 uses
  %next.gep10 = getelementptr i8, ptr %i.x, i64 %i.ar ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  %i.as = getelementptr i8, ptr %next.gep10, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep10, align 8, !tbaa !125, !alias.scope !286
  %wide.load11 = load <2 x i64>, ptr %i.as, align 8, !tbaa !125, !alias.scope !286
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !125, !alias.scope !285
  store <2 x i64> %wide.load11, ptr %i.at, align 8, !tbaa !125, !alias.scope !285
  %i.au = getelementptr i8, ptr %next.gep10, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep10, align 8, !tbaa !125, !alias.scope !286
  store <2 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !125, !alias.scope !286
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !282

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader13

.lr.ph.i.i.i.i.preheader13:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.preheader ], [ %i.ap, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader13, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader13 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader13 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  %i.aw = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !125, !alias.scope !286
  store i64 %i.aw, ptr %.012.i.i.i.i, align 8, !tbaa !125, !alias.scope !285
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !125, !alias.scope !286
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, %i.s
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !283

_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc6
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ai, %.noexc6 ], [ %i.ap, %middle.block ], [ %i.ay, %.lr.ph.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.x, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.ba = load ptr, ptr %i.t, align 8, !tbaa !121
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.bc) #24
  br label %_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.e
  store ptr %i.ai, ptr %i.p, align 8, !tbaa !122
  store ptr %i.az, ptr %i.r, align 8, !tbaa !123
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.bd, ptr %i.t, align 8, !tbaa !121
  br label %_ZNSt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, %_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.f:                                             ; preds = %bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i, %bb.d
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.g ], [ %i.be, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @_ZN9grpc_core4Rbac9PrincipalD2Ev(ptr noundef nonnull align 8 dead_on_return(257) dereferenceable(257) %0) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !125    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN9grpc_core4Rbac9PrincipalEEclEPS2_.exit

_ZNKSt14default_deleteIN9grpc_core4Rbac9PrincipalEEclEPS2_.exit: ; preds = %bb.a
  tail call void @_ZN9grpc_core4Rbac9PrincipalD2Ev(ptr noundef nonnull align 8 dead_on_return(257) dereferenceable(257) %i.a) #23, !inline_history !287
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 264) #24, !inline_history !287
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN9grpc_core4Rbac9PrincipalEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN9grpc_core4Rbac9Principal16MakeAnyPrincipalEv(ptr dead_on_unwind noalias writable sret(%"struct.grpc_core::Rbac::Principal") align 8 %0) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !21
  store i8 0, ptr %i.b, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.d, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.e, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.h, align 8, !tbaa !21
  store i8 0, ptr %i.g, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.i, align 8, !tbaa !82
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.j, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 0, ptr %i.k, align 1, !tbaa !84
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 0, ptr %i.l, align 8, !tbaa !107
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 0, ptr %i.o, align 8, !tbaa !21
  store i8 0, ptr %i.n, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.p, i8 0, i64 25, i1 false)
  store i32 3, ptr %0, align 8, !tbaa !119
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN9grpc_core4Rbac9Principal26MakeAuthenticatedPrincipalESt8optionalINS_13StringMatcherEE(ptr dead_on_unwind noalias writable sret(%"struct.grpc_core::Rbac::Principal") align 8 %0, ptr noundef align 8 %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !21
  store i8 0, ptr %i.b, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.d, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.e, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.h, align 8, !tbaa !21
  store i8 0, ptr %i.g, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.i, align 8, !tbaa !82
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.j, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 0, ptr %i.k, align 1, !tbaa !84
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store i8 0, ptr %i.l, align 8, !tbaa !107
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 0, ptr %i.o, align 8, !tbaa !21
  store i8 0, ptr %i.n, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.p, i8 0, i64 25, i1 false)
  store i32 4, ptr %0, align 8, !tbaa !119
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.r = load i8, ptr %i.q, align 8, !range !104
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.b, label %_ZNSt8optionalIN9grpc_core13StringMatcherEEaSEOS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZN9grpc_core13StringMatcherC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(64) %1) #23
  store i8 1, ptr %i.l, align 8, !tbaa !107
  br label %_ZNSt8optionalIN9grpc_core13StringMatcherEEaSEOS2_.exit

_ZNSt8optionalIN9grpc_core13StringMatcherEEaSEOS2_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define void @_ZN9grpc_core4Rbac9Principal21MakeSourceIpPrincipalENS0_9CidrRangeE(ptr dead_on_unwind noalias writable sret(%"struct.grpc_core::Rbac::Principal") align 8 %0, ptr noundef align 8 %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !21
  store i8 0, ptr %i.b, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.d, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.e, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.h, align 8, !tbaa !21
  store i8 0, ptr %i.g, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.i, align 8, !tbaa !82
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.j, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 0, ptr %i.k, align 1, !tbaa !84
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 0, ptr %i.l, align 8, !tbaa !107
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  store i64 0, ptr %i.o, align 8, !tbaa !21
  store i8 0, ptr %i.n, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.p, i8 0, i64 25, i1 false)
  store i32 5, ptr %0, align 8, !tbaa !119
  %i.q = load ptr, ptr %1, align 8, !tbaa !20     ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.a, label %bb.e

bb.a:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !21   ; 5 uses
  %i.v = icmp ult i64 %i.u, 16
  tail call void @llvm.assume(i1 %i.v)
  %.not21.i.i = icmp eq ptr %1, %i.m
  br i1 %.not21.i.i, label %_ZN9grpc_core4Rbac9CidrRangeaSEOS1_.exit, label %bb.b, !prof !51

bb.b:                                             ; preds = %bb.a
  switch i64 %i.u, label %bb.d [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.w = load i8, ptr %i.q, align 1, !tbaa !22
  store i8 %i.w, ptr %i.n, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr align 1 %i.q, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  store i64 %i.u, ptr %i.o, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !22
  br label %_ZN9grpc_core4Rbac9CidrRangeaSEOS1_.exit

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.q, ptr %i.m, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load <2 x i64>, ptr %i.y, align 8, !tbaa !22
  store <2 x i64> %i.z, ptr %i.o, align 8, !tbaa !22
  store ptr %i.r, ptr %1, align 8, !tbaa !20
  br label %_ZN9grpc_core4Rbac9CidrRangeaSEOS1_.exit

_ZN9grpc_core4Rbac9CidrRangeaSEOS1_.exit:         ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.e
  %i.aa = phi ptr [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.q, %bb.a ], [ %i.r, %bb.e ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !21
  store i8 0, ptr %i.aa, align 1, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !67
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define void @_ZN9grpc_core4Rbac9Principal27MakeDirectRemoteIpPrincipalENS0_9CidrRangeE(ptr dead_on_unwind noalias writable sret(%"struct.grpc_core::Rbac::Principal") align 8 %0, ptr noundef align 8 %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !21
  store i8 0, ptr %i.b, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.d, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.e, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.h, align 8, !tbaa !21
  store i8 0, ptr %i.g, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.i, align 8, !tbaa !82
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.j, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 0, ptr %i.k, align 1, !tbaa !84
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 0, ptr %i.l, align 8, !tbaa !107
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  store i64 0, ptr %i.o, align 8, !tbaa !21
  store i8 0, ptr %i.n, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.p, i8 0, i64 25, i1 false)
  store i32 6, ptr %0, align 8, !tbaa !119
  %i.q = load ptr, ptr %1, align 8, !tbaa !20     ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.a, label %bb.e

bb.a:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !21   ; 5 uses
  %i.v = icmp ult i64 %i.u, 16
  tail call void @llvm.assume(i1 %i.v)
  %.not21.i.i = icmp eq ptr %1, %i.m
  br i1 %.not21.i.i, label %_ZN9grpc_core4Rbac9CidrRangeaSEOS1_.exit, label %bb.b, !prof !51

bb.b:                                             ; preds = %bb.a
  switch i64 %i.u, label %bb.d [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.w = load i8, ptr %i.q, align 1, !tbaa !22
  store i8 %i.w, ptr %i.n, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr align 1 %i.q, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  store i64 %i.u, ptr %i.o, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !22
  br label %_ZN9grpc_core4Rbac9CidrRangeaSEOS1_.exit

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.q, ptr %i.m, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load <2 x i64>, ptr %i.y, align 8, !tbaa !22
  store <2 x i64> %i.z, ptr %i.o, align 8, !tbaa !22
  store ptr %i.r, ptr %1, align 8, !tbaa !20
  br label %_ZN9grpc_core4Rbac9CidrRangeaSEOS1_.exit

_ZN9grpc_core4Rbac9CidrRangeaSEOS1_.exit:         ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.e
  %i.aa = phi ptr [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.q, %bb.a ], [ %i.r, %bb.e ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !21
  store i8 0, ptr %i.aa, align 1, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !67
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define void @_ZN9grpc_core4Rbac9Principal21MakeRemoteIpPrincipalENS0_9CidrRangeE(ptr dead_on_unwind noalias writable sret(%"struct.grpc_core::Rbac::Principal") align 8 %0, ptr noundef align 8 %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !21
  store i8 0, ptr %i.b, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.d, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.e, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
end_hunk_1
begin_hunk_2_@_ZN9grpc_core4Rbac9Principal17MakePathPrincipalENS_13StringMatcherE:_ZNSt8optionalIN9grpc_core13StringMatcherEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 0, ptr %i.k, align 1, !tbaa !84
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store i8 0, ptr %i.l, align 8, !tbaa !107
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 0, ptr %i.o, align 8, !tbaa !21
  store i8 0, ptr %i.n, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.p, i8 0, i64 25, i1 false)
  store i32 9, ptr %0, align 8, !tbaa !119
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZN9grpc_core13StringMatcherC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(49) %1) #23
  store i8 1, ptr %i.l, align 8, !tbaa !107
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN9grpc_core4Rbac9Principal21MakeMetadataPrincipalEb(ptr dead_on_unwind noalias writable sret(%"struct.grpc_core::Rbac::Principal") align 8 %0, i1 noundef zeroext %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.d, align 8, !tbaa !21
  store i8 0, ptr %i.c, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.e, align 8, !tbaa !80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.f, align 8, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.i, align 8, !tbaa !21
  store i8 0, ptr %i.h, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.j, align 8, !tbaa !82
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.k, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 0, ptr %i.l, align 1, !tbaa !84
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 0, ptr %i.m, align 8, !tbaa !107
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 0, ptr %i.p, align 8, !tbaa !21
  store i8 0, ptr %i.o, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.q, i8 0, i64 24, i1 false)
  store i32 10, ptr %0, align 8, !tbaa !119
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i8 %i.a, ptr %i.r, align 8, !tbaa !126
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN9grpc_core4Rbac9PrincipalC2EOS1_(ptr noundef nonnull align 8 dereferenceable(257) initializes((0, 4)) %0, ptr noundef nonnull align 8 dereferenceable(257) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !119    ; 2 uses
  store i32 %i.a, ptr %0, align 8, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.d, align 8, !tbaa !21
  store i8 0, ptr %i.c, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.e, align 8, !tbaa !80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.f, align 8, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.i, align 8, !tbaa !21
  store i8 0, ptr %i.h, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.j, align 8, !tbaa !82
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.k, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 0, ptr %i.l, align 1, !tbaa !84
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store i8 0, ptr %i.n, align 8, !tbaa !107
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  store i64 0, ptr %i.q, align 8, !tbaa !21
  store i8 0, ptr %i.p, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.u = load i8, ptr %i.t, align 8, !tbaa !126, !range !104, !noundef !105
  store i8 %i.u, ptr %i.s, align 8, !tbaa !126
  switch i32 %i.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i [
    i32 0, label %bb.b
    i32 1, label %bb.b
    i32 2, label %bb.b
    i32 3, label %_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit
    i32 8, label %bb.c
    i32 4, label %bb.d
    i32 9, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.x = load <2 x ptr>, ptr %i.v, align 8, !tbaa !120
  store <2 x ptr> %i.x, ptr %i.r, align 8, !tbaa !120
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !121
  store ptr %i.z, ptr %i.w, align 8, !tbaa !121
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit

bb.c:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = tail call noundef nonnull align 8 dereferenceable(114) ptr @_ZN9grpc_core13HeaderMatcheraSEOS0_(ptr noundef nonnull align 8 dereferenceable(114) %i.b, ptr noundef nonnull align 8 dereferenceable(114) %i.aa) #23 ; 0 uses
  br label %_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ad = load i8, ptr %i.ac, align 8, !range !104
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.e, label %_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @_ZN9grpc_core13StringMatcherC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.af) #23
  store i8 1, ptr %i.n, align 8, !tbaa !107
  br label %_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 4 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !21 ; 3 uses
  %i.am = icmp ult i64 %i.al, 16
  tail call void @llvm.assume(i1 %i.am)
  %.not21.i.i = icmp eq ptr %1, %0
  br i1 %.not21.i.i, label %_ZN9grpc_core4Rbac9CidrRangeaSEOS1_.exit, label %bb.g, !prof !51

bb.g:                                             ; preds = %bb.f
  switch i64 %i.al, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.an = load i8, ptr %i.ah, align 1, !tbaa !22
  store i8 %i.an, ptr %i.p, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr align 1 %i.ah, i64 %i.al, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.ao = load i64, ptr %i.ak, align 8, !tbaa !21 ; 2 uses
  store i64 %i.ao, ptr %i.q, align 8, !tbaa !21
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ao
  store i8 0, ptr %i.ap, align 1, !tbaa !22
  %.pre.i.i = load ptr, ptr %i.ag, align 8, !tbaa !20
  br label %_ZN9grpc_core4Rbac9CidrRangeaSEOS1_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.ah, ptr %i.o, align 8, !tbaa !20
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !21
  store i64 %i.ar, ptr %i.q, align 8, !tbaa !21
  %i.as = load i64, ptr %i.ai, align 8, !tbaa !22
  store i64 %i.as, ptr %i.p, align 8, !tbaa !22
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !20
  br label %_ZN9grpc_core4Rbac9CidrRangeaSEOS1_.exit

_ZN9grpc_core4Rbac9CidrRangeaSEOS1_.exit:         ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.j
  %i.at = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.ah, %bb.f ], [ %i.ai, %bb.j ]
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i64 0, ptr %i.au, align 8, !tbaa !21
  store i8 0, ptr %i.at, align 1, !tbaa !22
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !67
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !67
  br label %_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit

_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit: ; preds = %bb.b, %bb.e, %bb.d, %_ZN9grpc_core4Rbac9CidrRangeaSEOS1_.exit, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(257) ptr @_ZN9grpc_core4Rbac9PrincipalaSEOS1_(ptr noundef nonnull returned align 8 dereferenceable(257) initializes((0, 4), (256, 257)) %0, ptr noundef nonnull align 8 dereferenceable(257) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !119    ; 2 uses
  store i32 %i.a, ptr %0, align 8, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.c = load i8, ptr %i.b, align 8, !tbaa !126, !range !104, !noundef !105
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i8 %i.c, ptr %i.d, align 8, !tbaa !126
  switch i32 %i.a, label %bb.k [
    i32 0, label %bb.b
    i32 1, label %bb.b
    i32 2, label %bb.b
    i32 3, label %_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit
    i32 8, label %bb.d
    i32 4, label %bb.e
    i32 9, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !122  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !123  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !121
  %i.l = load <2 x ptr>, ptr %i.e, align 8, !tbaa !120
  store <2 x ptr> %i.l, ptr %i.f, align 8, !tbaa !120
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !121
  store ptr %i.n, ptr %i.j, align 8, !tbaa !121
  %.not.i2.i.i.i.i = icmp eq ptr %i.g, %i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  br i1 %.not.i2.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.0.i3.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.o = load ptr, ptr %.0.i3.i.i.i.i, align 8, !tbaa !125 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN9grpc_core4Rbac9PrincipalEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN9grpc_core4Rbac9PrincipalEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZN9grpc_core4Rbac9PrincipalD2Ev(ptr noundef nonnull align 8 dead_on_return(257) dereferenceable(257) %i.o) #23, !inline_history !288
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 264) #24, !inline_history !288
  br label %_ZSt8_DestroyISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN9grpc_core4Rbac9PrincipalEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i
  store ptr null, ptr %.0.i3.i.i.i.i, align 8, !tbaa !125
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPSt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i, %bb.b
  %.not.i.i1.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = ptrtoint ptr %i.g to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.s) #24, !inline_history !289
  br label %_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit

bb.d:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = tail call noundef nonnull align 8 dereferenceable(114) ptr @_ZN9grpc_core13HeaderMatcheraSEOS0_(ptr noundef nonnull align 8 dereferenceable(114) %i.u, ptr noundef nonnull align 8 dereferenceable(114) %i.t) #23 ; 0 uses
  br label %_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit

bb.e:                                             ; preds = %bb.a, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.z = load i8, ptr %i.y, align 8, !tbaa !107, !range !104, !noundef !105
  %i.aa = trunc nuw i8 %i.z to i1                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ac = load i8, ptr %i.ab, align 8, !range !104
  %i.ad = trunc nuw i8 %i.ac to i1                ; 2 uses
  %or.cond.i.i.i.i.i = select i1 %i.aa, i1 %i.ad, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = tail call noundef nonnull align 8 dereferenceable(49) ptr @_ZN9grpc_core13StringMatcheraSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %i.w) #23 ; 0 uses
  br label %_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit

bb.g:                                             ; preds = %bb.e
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN9grpc_core13StringMatcherC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %i.w) #23
  store i8 1, ptr %i.y, align 8, !tbaa !107
  br label %_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit

bb.i:                                             ; preds = %bb.g
  br i1 %i.aa, label %bb.j, label %_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.y, align 8, !tbaa !107
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !99 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN3re23RE2ESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN3re23RE2EEclEPS1_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN3re23RE2EEclEPS1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  tail call void @_ZN3re23RE2D1Ev(ptr noundef nonnull align 8 dead_on_return(212) dereferenceable(212) %i.ag) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 216) #24
  br label %_ZNSt10unique_ptrIN3re23RE2ESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN3re23RE2ESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN3re23RE2EEclEPS1_.exit.i.i.i.i.i.i.i.i.i, %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !20 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN3re23RE2ESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !22
  %i.am = add i64 %i.al, 1
  tail call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #24
  br label %_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit

bb.k:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !20 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !20 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 6 uses
  %i.au = icmp eq ptr %i.as, %i.at                ; 2 uses
  br i1 %i.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  br i1 %i.au, label %bb.l, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.k
  br i1 %i.au, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !21 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  tail call void @llvm.assume(i1 %i.ax)
  %.not21.i.i = icmp eq ptr %1, %0
  br i1 %.not21.i.i, label %_ZN9grpc_core4Rbac9CidrRangeaSEOS1_.exit, label %bb.m, !prof !51

bb.m:                                             ; preds = %bb.l
  switch i64 %i.aw, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.ay = load i8, ptr %i.as, align 1, !tbaa !22
  store i8 %i.ay, ptr %i.ap, align 1, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %i.as, i64 %i.aw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.az = load i64, ptr %i.av, align 8, !tbaa !21 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !21
  %i.bb = load ptr, ptr %i.ao, align 8, !tbaa !20
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az
  store i8 0, ptr %i.bc, align 1, !tbaa !22
  %.pre.i.i = load ptr, ptr %i.an, align 8, !tbaa !20
  br label %_ZN9grpc_core4Rbac9CidrRangeaSEOS1_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !20
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !21
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !21
  %i.bg = load i64, ptr %i.at, align 8, !tbaa !22
  store i64 %i.bg, ptr %i.aq, align 8, !tbaa !22
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bh = load i64, ptr %i.aq, align 8, !tbaa !22
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !21
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !21
  %i.bl = load i64, ptr %i.at, align 8, !tbaa !22
  store i64 %i.bl, ptr %i.aq, align 8, !tbaa !22
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !20
  store i64 %i.bh, ptr %i.at, align 8, !tbaa !22
  br label %_ZN9grpc_core4Rbac9CidrRangeaSEOS1_.exit

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.at, ptr %i.an, align 8, !tbaa !20
  br label %_ZN9grpc_core4Rbac9CidrRangeaSEOS1_.exit

_ZN9grpc_core4Rbac9CidrRangeaSEOS1_.exit:         ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.p, %bb.q
  %i.bm = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.ap, %bb.p ], [ %i.at, %bb.q ], [ %i.as, %bb.l ]
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i64 0, ptr %i.bn, align 8, !tbaa !21
  store i8 0, ptr %i.bm, align 1, !tbaa !22
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !67
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 %i.bp, ptr %i.bq, align 8, !tbaa !67
  br label %_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit

_ZNSt6vectorISt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EESaIS6_EEaSEOS8_.exit: ; preds = %_ZNSt10unique_ptrIN3re23RE2ESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i, %bb.i, %bb.h, %bb.f, %bb.c, %_ZSt8_DestroyIPSt10unique_ptrIN9grpc_core4Rbac9PrincipalESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i, %_ZN9grpc_core4Rbac9CidrRangeaSEOS1_.exit, %bb.d, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK9grpc_core4Rbac9Principal8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(257) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %3 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %4 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %5 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %6 = alloca [2 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %7 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %8 = alloca [2 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %9 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %10 = alloca [2 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %11 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %12 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %13 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %14 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %15 = alloca %"class.std::vector.6", align 8    ; 16 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %18 = alloca %"class.std::vector.6", align 8    ; 16 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !119
  switch i32 %i.a, label %._crit_edge.i.i206 [
    i32 0, label %bb.b
    i32 1, label %bb.v
    i32 2, label %bb.ap
    i32 3, label %._crit_edge.i.i
    i32 4, label %bb.as
    i32 5, label %bb.av
    i32 6, label %bb.ay
    i32 7, label %bb.bb
    i32 8, label %bb.be
    i32 9, label %bb.bh
    i32 10, label %bb.bk
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !123  ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !122  ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  %i.j = icmp ugt i64 %i.i, 288230376151711743
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #27
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %.not360 = icmp eq ptr %i.d, %i.e
  br i1 %.not360, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.m = shl nuw nsw i64 %i.h, 2
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #26
          to label %.noexc30 unwind label %bb.g   ; 4 uses

.noexc30:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i
  %i.o = load ptr, ptr %15, align 8, !tbaa !65    ; 5 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !62   ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i
end_hunk_2
