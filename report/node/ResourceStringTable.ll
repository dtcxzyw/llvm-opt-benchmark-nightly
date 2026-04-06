begin_hunk_0
inline.NumInlined: 2726
inline.NumDeleted: 852
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
%union.anon.120 = type { %"class.std::__cxx11::basic_string" }
%"class.LIEF::optional.133" = type { %"class.LIEF::result.base.85", [7 x i8] }
%"class.LIEF::result.base.85" = type { %"class.tl::expected.base.84" }
%"struct.fmt::v11::detail::format_handler" = type { %"class.fmt::v11::parse_context", %"class.fmt::v11::context" }
%"class.fmt::v11::parse_context" = type <{ %"class.fmt::v11::basic_string_view", i32, [4 x i8] }>
%"class.fmt::v11::basic_string_view" = type { ptr, i64 }
%"class.fmt::v11::context" = type { %"class.fmt::v11::basic_appender", %"class.fmt::v11::basic_format_args", %"class.fmt::v11::detail::locale_ref" }
end_hunk_1
begin_hunk_2
%"class.fmt::v11::basic_format_args" = type { i64, %union.anon.532 }
%union.anon.532 = type { ptr }
%"class.fmt::v11::detail::locale_ref" = type { ptr }
%"class.fmt::v11::basic_memory_buffer.535" = type <{ %"class.fmt::v11::detail::buffer", [500 x i8], [4 x i8] }>
%"class.fmt::v11::detail::buffer" = type { ptr, i64, i64, ptr }
%"struct.fmt::v11::detail::format_arg_store.1159" = type { [1 x %"class.fmt::v11::detail::value"] }
%"class.fmt::v11::detail::value" = type { %union.anon.533 }
%union.anon.533 = type { i128 }
%class.anon.586 = type <{ i64, i32, [4 x i8] }>
%"struct.fmt::v11::format_specs" = type { %"class.fmt::v11::basic_specs", i32, i32 }
%"class.fmt::v11::basic_specs" = type { i32, [4 x i8] }
end_hunk_2
begin_hunk_3

$_ZN3fmt3v116detail11assert_failEPKciS3_ = comdat any

$_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_ = comdat any

$_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEiTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_ = comdat any

end_hunk_3
begin_hunk_4_@_ZNK4LIEF2PE19ResourceStringTable6acceptERNS_7VisitorE:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF2PElsERSoRKNS0_19ResourceStringTableE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.fmt::v11::basic_memory_buffer.535", align 8 ; 10 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.1159", align 16 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZN4LIEF7u16tou8ERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i1 noundef zeroext false) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !13
  %i.e = load ptr, ptr %7, align 8, !noalias !13
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noalias !13
  store ptr %i.e, ptr %5, align 16, !noalias !13
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.g, ptr %i.h, align 8, !noalias !13
  call void @llvm.experimental.noalias.scope.decl(metadata !16)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !16
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %10, align 8, !noalias !16
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %9, align 8, !noalias !16
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %11, ptr %4, align 8, !noalias !16
  store i64 500, ptr %8, align 8, !noalias !16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !16
  store ptr @.str, ptr %2, align 8, !noalias !16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 14, ptr %i.i, align 8, !noalias !16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.j, align 8, !noalias !16
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %4, ptr %i.k, align 8, !noalias !16
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 13, ptr %12, align 8, !noalias !16
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %5, ptr %i.l, align 8, !noalias !16
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr null, ptr %13, align 8, !noalias !16
  call void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str, i64 14, ptr noundef nonnull align 8 dereferenceable(56) %2), !noalias !16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !16
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %i.m = load i64, ptr %10, align 8, !noalias !22 ; 6 uses
  %i.n = icmp ult i64 %i.m, 4611686018427387903
  call void @llvm.assume(i1 %i.n)
  %i.o = load ptr, ptr %4, align 8, !noalias !22  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.p, ptr %6, align 8, !alias.scope !22
  %i.q = icmp eq ptr %i.o, null
  %i.r = icmp ne i64 %i.m, 0
  %or.cond.i.i.i = and i1 %i.r, %i.q
end_hunk_4
begin_hunk_5_@_ZN4LIEF2PElsERSoRKNS0_19ResourceStringTableE:bb.a
  br i1 %i.s, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.t = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #23 ; 2 uses
  store ptr %i.t, ptr %6, align 8, !alias.scope !22
  %i.u = load i64, ptr %i.c, align 8, !noalias !22
  store i64 %i.u, ptr %i.p, align 8, !alias.scope !22
  br label %._crit_edge.i.i.i.i
end_hunk_5
begin_hunk_6_@_ZN4LIEF2PElsERSoRKNS0_19ResourceStringTableE:bb.a

_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  %i.x = load i64, ptr %i.c, align 8, !noalias !22 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.x, ptr %i.y, align 8, !alias.scope !22
  %i.z = load ptr, ptr %6, align 8, !alias.scope !22
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23, !noalias !22
  %i.ab = load ptr, ptr %4, align 8, !noalias !16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %11
  br i1 %.not.i.i.i, label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
end_hunk_6
begin_hunk_7_@_ZN4LIEF2PElsERSoRKNS0_19ResourceStringTableE:bb.a
  br label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !13
  %i.ac = load ptr, ptr %6, align 8
  %i.ad = load i64, ptr %i.y, align 8
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ac, i64 noundef %i.ad) #23 ; 0 uses
  %i.af = load ptr, ptr %6, align 8               ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.p
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

end_hunk_7
begin_hunk_8_@_ZN4LIEF2PElsERSoRKNS0_19ResourceStringTableE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aj = load ptr, ptr %7, align 8               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

end_hunk_8
begin_hunk_9_@_ZN4LIEF2PElsERSoRKNS0_19ResourceStringTableE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !23 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56
end_hunk_9
begin_hunk_10_@_ZN4LIEF2PElsERSoRKNS0_19ResourceStringTableE:bb.a
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.j

._crit_edge:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
end_hunk_10
begin_hunk_11_@_ZN4LIEF2PElsERSoRKNS0_19ResourceStringTableE:bb.a
  %.sroa.8.026 = phi i64 [ 0, %.lr.ph ], [ %i.bx, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14 ]
  %.sroa.416.025 = phi ptr [ %i.ap, %.lr.ph ], [ %i.bw, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14 ] ; 2 uses
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, i64 noundef 2) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZNK4LIEF2PE19ResourceStringTable7entry_t9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.416.025)
  %i.bh = load ptr, ptr %3, align 8
  %i.bi = load i64, ptr %i.aw, align 8
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.bh, i64 noundef %i.bi) #23 ; 0 uses
  %i.bk = load ptr, ptr %3, align 8               ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.ax
  br i1 %i.bl, label %_ZN4LIEF2PElsERSoRKNS0_19ResourceStringTable7entry_tE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

end_hunk_11
begin_hunk_12_@_ZN4LIEF2PElsERSoRKNS0_19ResourceStringTableE:bb.a
  br label %_ZN4LIEF2PElsERSoRKNS0_19ResourceStringTable7entry_tE.exit

_ZN4LIEF2PElsERSoRKNS0_19ResourceStringTable7entry_tE.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1
  %i.bo = load ptr, ptr %0, align 8
end_hunk_12
begin_hunk_13_@llvm.assume

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #18

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #1 comdat {
end_hunk_13
begin_hunk_14_@_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_:bb.a
  %i.np = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i.i154 = load ptr, ptr %i.np, align 8
  %i.nq = call ptr @_ZN3fmt3v116detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %.0.lcssa, ptr noundef %i.a, ptr %.sroa.0.0.copyload.i.i154) ; 0 uses
  ret void
}

end_hunk_14
