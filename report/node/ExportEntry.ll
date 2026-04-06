begin_hunk_0
inline.NumInlined: 2349
inline.NumDeleted: 646
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.fmt::v11::basic_memory_buffer.436" = type <{ %"class.fmt::v11::detail::buffer", [500 x i8], [4 x i8] }>
%"class.fmt::v11::detail::buffer" = type { ptr, i64, i64, ptr }
%"struct.fmt::v11::detail::format_arg_store.1041" = type { [1 x %"class.fmt::v11::detail::value"] }
end_hunk_1
begin_hunk_2
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.fmt::v11::parse_context" = type <{ %"class.fmt::v11::basic_string_view", i32, [4 x i8] }>
%"class.fmt::v11::basic_string_view" = type { ptr, i64 }
%"class.fmt::v11::context" = type { %"class.fmt::v11::basic_appender", %"class.fmt::v11::basic_format_args", %"class.fmt::v11::detail::locale_ref" }
%"class.fmt::v11::basic_appender" = type { ptr }
%"class.fmt::v11::basic_format_args" = type { i64, %union.anon.433 }
%union.anon.433 = type { ptr }
%"class.fmt::v11::detail::locale_ref" = type { ptr }
%"struct.fmt::v11::detail::default_arg_formatter" = type { %"class.fmt::v11::basic_appender" }
%"struct.fmt::v11::detail::format_handler" = type { %"class.fmt::v11::parse_context", %"class.fmt::v11::context" }
%class.anon.487 = type <{ i64, i32, [4 x i8] }>
%"struct.fmt::v11::format_specs" = type { %"class.fmt::v11::basic_specs", i32, i32 }
%"class.fmt::v11::basic_specs" = type { i32, [4 x i8] }
end_hunk_2
begin_hunk_3

$_ZN3fmt3v116detail11assert_failEPKciS3_ = comdat any

$_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE = comdat any

$_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_ = comdat any

$_ZN3fmt3v116detail21default_arg_formatterIcEclIjTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_ = comdat any

$_ZN3fmt3v116detail21default_arg_formatterIcEclIyTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_ = comdat any

$_ZN3fmt3v116detail21default_arg_formatterIcEclIbTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_ = comdat any

$_ZN3fmt3v116detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_ = comdat any

$_ZN3fmt3v116detail21default_arg_formatterIcEclIfTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_ = comdat any

$_ZN3fmt3v116detail21default_arg_formatterIcEclIdTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_ = comdat any

$_ZN3fmt3v116detail21default_arg_formatterIcEclIPKcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_ = comdat any

$_ZN3fmt3v116detail21default_arg_formatterIcEclIPKvTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_ = comdat any

$_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEiTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_ = comdat any

end_hunk_3
begin_hunk_4_@_ZNK4LIEF2PE11ExportEntry6acceptERNS_7VisitorE:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF2PElsERSoRKNS0_11ExportEntryE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.fmt::v11::basic_memory_buffer.436", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.fmt::v11::basic_memory_buffer.436", align 8 ; 10 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.1041", align 16 ; 5 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.1039", align 16 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"struct.LIEF::PE::ExportEntry::forward_information_t", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.d = load i16, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 68
end_hunk_4
begin_hunk_5_@_ZN4LIEF2PElsERSoRKNS0_11ExportEntryE:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.m(ptr noundef nonnull align 8 dereferenceable(56) %1) #22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !6
  %i.o = zext i16 %i.d to i32
  store i32 %i.o, ptr %5, align 16, !noalias !6
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.h, ptr %i.p, align 16, !noalias !6
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %i.j, ptr %i.q, align 16, !noalias !6
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.s = load ptr, ptr %i.n, align 8, !noalias !6
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noalias !6
  store ptr %i.s, ptr %i.r, align 16, !noalias !6
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %i.u, ptr %i.v, align 8, !noalias !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !9
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.y, align 8, !noalias !9
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.x, align 8, !noalias !9
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.z, ptr %3, align 8, !noalias !9
  store i64 500, ptr %i.w, align 8, !noalias !9
  call void @_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.1, i64 23, i64 53954, ptr nonnull %5, ptr null), !noalias !9
  call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %i.aa = load i64, ptr %i.y, align 8, !noalias !15 ; 6 uses
  %i.ab = icmp ult i64 %i.aa, 4611686018427387903
  call void @llvm.assume(i1 %i.ab)
  %i.ac = load ptr, ptr %3, align 8, !noalias !15 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.ad, ptr %6, align 8, !alias.scope !15
  %i.ae = icmp eq ptr %i.ac, null
  %i.af = icmp ne i64 %i.aa, 0
  %or.cond.i.i.i = and i1 %i.af, %i.ae
end_hunk_5
begin_hunk_6_@_ZN4LIEF2PElsERSoRKNS0_11ExportEntryE:bb.a
  br i1 %i.ag, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ah = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #22 ; 2 uses
  store ptr %i.ah, ptr %6, align 8, !alias.scope !15
  %i.ai = load i64, ptr %i.b, align 8, !noalias !15
  store i64 %i.ai, ptr %i.ad, align 8, !alias.scope !15
  br label %._crit_edge.i.i.i.i
end_hunk_6
begin_hunk_7_@_ZN4LIEF2PElsERSoRKNS0_11ExportEntryE:bb.a

_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  %i.al = load i64, ptr %i.b, align 8, !noalias !15 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.al, ptr %i.am, align 8, !alias.scope !15
  %i.an = load ptr, ptr %6, align 8, !alias.scope !15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22, !noalias !15
  %i.ap = load ptr, ptr %3, align 8, !noalias !9  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %i.z
  br i1 %.not.i.i.i, label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
end_hunk_7
begin_hunk_8_@_ZN4LIEF2PElsERSoRKNS0_11ExportEntryE:bb.a
  br label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !6
  %i.aq = load ptr, ptr %6, align 8
  %i.ar = load i64, ptr %i.am, align 8
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.aq, i64 noundef %i.ar) #22 ; 0 uses
  %i.at = load ptr, ptr %6, align 8               ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.ad
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

end_hunk_8
begin_hunk_9_@_ZN4LIEF2PElsERSoRKNS0_11ExportEntryE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = icmp ne i64 %i.ay, 0
end_hunk_9
begin_hunk_10_@_ZN4LIEF2PElsERSoRKNS0_11ExportEntryE:bb.a
  br i1 %i.bd, label %bb.h, label %bb.o

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @_ZNK4LIEF2PE11ExportEntry19forward_informationEv(ptr dead_on_unwind nonnull writable sret(%"struct.LIEF::PE::ExportEntry::forward_information_t") align 8 %9, ptr noundef nonnull align 8 dereferenceable(136) %1)
  call void @_ZN4LIEF9to_stringINS_2PE11ExportEntry21forward_information_tEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(64) %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !16
  %i.be = load ptr, ptr %8, align 8, !noalias !16
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !16
  store ptr %i.be, ptr %4, align 16, !noalias !16
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.bg, ptr %i.bh, align 8, !noalias !16
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !19
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.bk, align 8, !noalias !19
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.bj, align 8, !noalias !19
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr %i.bl, ptr %2, align 8, !noalias !19
  store i64 500, ptr %i.bi, align 8, !noalias !19
  call void @_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull @.str.3, i64 5, i64 13, ptr nonnull %4, ptr null), !noalias !19
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %i.bm = load i64, ptr %i.bk, align 8, !noalias !25 ; 6 uses
  %i.bn = icmp ult i64 %i.bm, 4611686018427387903
  call void @llvm.assume(i1 %i.bn)
  %i.bo = load ptr, ptr %2, align 8, !noalias !25 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.bp, ptr %7, align 8, !alias.scope !25
  %i.bq = icmp eq ptr %i.bo, null
  %i.br = icmp ne i64 %i.bm, 0
  %or.cond.i.i.i9 = and i1 %i.br, %i.bq
end_hunk_10
begin_hunk_11_@_ZN4LIEF2PElsERSoRKNS0_11ExportEntryE:bb.a
  br i1 %i.bs, label %bb.k, label %._crit_edge.i.i.i.i10

bb.k:                                             ; preds = %bb.j
  %i.bt = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #22 ; 2 uses
  store ptr %i.bt, ptr %7, align 8, !alias.scope !25
  %i.bu = load i64, ptr %i.a, align 8, !noalias !25
  store i64 %i.bu, ptr %i.bp, align 8, !alias.scope !25
  br label %._crit_edge.i.i.i.i10
end_hunk_11
begin_hunk_12_@_ZN4LIEF2PElsERSoRKNS0_11ExportEntryE:bb.a

_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i11: ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i.i10
  %i.bx = load i64, ptr %i.a, align 8, !noalias !25 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.bx, ptr %i.by, align 8, !alias.scope !25
  %i.bz = load ptr, ptr %7, align 8, !alias.scope !25
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bx
  store i8 0, ptr %i.ca, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !25
  %i.cb = load ptr, ptr %2, align 8, !noalias !19 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.cb, %i.bl
  br i1 %.not.i.i.i12, label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit13, label %bb.n

bb.n:                                             ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i11
end_hunk_12
begin_hunk_13_@_ZN4LIEF2PElsERSoRKNS0_11ExportEntryE:bb.a
  br label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit13

_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit13: ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i11, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !16
  %i.cc = load ptr, ptr %7, align 8
  %i.cd = load i64, ptr %i.by, align 8
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.cc, i64 noundef %i.cd) #22 ; 0 uses
  %i.cf = load ptr, ptr %7, align 8               ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.bp
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

end_hunk_13
begin_hunk_14_@_ZN4LIEF2PElsERSoRKNS0_11ExportEntryE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  %i.cj = load ptr, ptr %8, align 8               ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

end_hunk_14
begin_hunk_15_@_ZN4LIEF2PElsERSoRKNS0_11ExportEntryE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

end_hunk_15
begin_hunk_16_@_ZN4LIEF2PElsERSoRKNS0_11ExportEntryE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.cu = load ptr, ptr %9, align 8               ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZN4LIEF2PE11ExportEntry21forward_information_tD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

end_hunk_16
begin_hunk_17_@_ZN4LIEF2PElsERSoRKNS0_11ExportEntryE:bb.a
  br label %_ZN4LIEF2PE11ExportEntry21forward_information_tD2Ev.exit

_ZN4LIEF2PE11ExportEntry21forward_information_tD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.o

bb.o:                                             ; preds = %_ZN4LIEF2PE11ExportEntry21forward_information_tD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_17
begin_hunk_18_@llvm.assume
; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #17

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr %4, ptr %5) local_unnamed_addr #2 comdat {
  %7 = alloca %"class.fmt::v11::parse_context", align 8 ; 4 uses
  %8 = alloca %"class.fmt::v11::context", align 8 ; 5 uses
  %9 = alloca %"struct.fmt::v11::detail::default_arg_formatter", align 8 ; 12 uses
  %10 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %11 = icmp eq i64 %2, 2
  br i1 %11, label %12, label %57

12:                                               ; preds = %6
  %13 = load i16, ptr %1, align 1
  %14 = icmp ne i16 %13, 32123
  %15 = zext i1 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %57

17:                                               ; preds = %12
  %18 = icmp sgt i64 %3, -1
  %19 = trunc i64 %3 to i32                       ; 2 uses
  br i1 %18, label %23, label %20

20:                                               ; preds = %17
  %21 = icmp sgt i32 %19, 0
  br i1 %21, label %22, label %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit.thread

22:                                               ; preds = %20
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.21.0.copyload = load i32, ptr %.sroa.21.0..sroa_idx, align 16
  br label %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit

23:                                               ; preds = %17
  %24 = and i32 %19, 15                           ; 2 uses
  %.not.i = icmp eq i32 %24, 0
  br i1 %.not.i, label %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit.thread, label %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit

_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit.thread: ; preds = %23, %20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  br label %56

_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit: ; preds = %23, %22
  %.sroa.21.0 = phi i32 [ %.sroa.21.0.copyload, %22 ], [ %24, %23 ]
  %.sroa.0.0.copyload.sink64 = load i128, ptr %4, align 16 ; 8 uses
  %25 = trunc i128 %.sroa.0.0.copyload.sink64 to i64 ; 4 uses
  %26 = lshr i128 %.sroa.0.0.copyload.sink64, 64
  %27 = trunc nuw i128 %26 to i64                 ; 2 uses
  %28 = trunc i128 %.sroa.0.0.copyload.sink64 to i32 ; 3 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i = inttoptr i64 %25 to ptr ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %29 = ptrtoint ptr %0 to i64
  store i64 %29, ptr %9, align 8
  switch i32 %.sroa.21.0, label %56 [
    i32 15, label %54
    i32 1, label %30
    i32 2, label %32
    i32 3, label %33
    i32 4, label %35
    i32 5, label %36
    i32 6, label %38
    i32 7, label %40
    i32 8, label %42
    i32 9, label %44
    i32 10, label %45
    i32 11, label %46
    i32 12, label %49
    i32 13, label %50
    i32 14, label %53
  ]

30:                                               ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit
  %31 = tail call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEiTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr nonnull %0, i32 noundef %28) ; 0 uses
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

32:                                               ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit
  call void @_ZN3fmt3v116detail21default_arg_formatterIcEclIjTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef %28)
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

33:                                               ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit
  %34 = tail call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEExTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr nonnull %0, i64 noundef %25) ; 0 uses
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

35:                                               ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit
  call void @_ZN3fmt3v116detail21default_arg_formatterIcEclIyTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef %25)
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

36:                                               ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit
  %37 = tail call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEnTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr nonnull %0, i128 noundef %.sroa.0.0.copyload.sink64) ; 0 uses
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

38:                                               ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit
  %39 = tail call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEoTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr nonnull %0, i128 noundef %.sroa.0.0.copyload.sink64) ; 0 uses
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

40:                                               ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit
  %41 = trunc i128 %.sroa.0.0.copyload.sink64 to i1
  call void @_ZN3fmt3v116detail21default_arg_formatterIcEclIbTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_(ptr noundef nonnull align 8 dereferenceable(8) %9, i1 noundef zeroext %41)
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

42:                                               ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit
  %43 = trunc i128 %.sroa.0.0.copyload.sink64 to i8
  call void @_ZN3fmt3v116detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_(ptr noundef nonnull align 8 dereferenceable(8) %9, i8 noundef signext %43)
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

44:                                               ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit
  %.sroa.0.0..sroa.0.0..sroa.0.0.24 = bitcast i32 %28 to float
  call void @_ZN3fmt3v116detail21default_arg_formatterIcEclIfTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_(ptr noundef nonnull align 8 dereferenceable(8) %9, float noundef %.sroa.0.0..sroa.0.0..sroa.0.0.24)
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

45:                                               ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit
  %.sroa.0.0..sroa.0.0..sroa.0.0.20 = bitcast i64 %25 to double
  call void @_ZN3fmt3v116detail21default_arg_formatterIcEclIdTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_(ptr noundef nonnull align 8 dereferenceable(8) %9, double noundef %.sroa.0.0..sroa.0.0..sroa.0.0.20)
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

46:                                               ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit
  %47 = trunc i128 %.sroa.0.0.copyload.sink64 to i80
  %.sroa.0.0..sroa.0.0..sroa.0.0.17 = bitcast i80 %47 to x86_fp80
  %48 = tail call ptr @_ZN3fmt3v116detail11write_floatIcNS0_14basic_appenderIcEEeEET0_S5_T1_NS0_12format_specsENS1_10locale_refE(ptr nonnull %0, x86_fp80 noundef %.sroa.0.0..sroa.0.0..sroa.0.0.17, i64 137438986240, i64 -4294967296, ptr null) ; 0 uses
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

49:                                               ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit
  call void @_ZN3fmt3v116detail21default_arg_formatterIcEclIPKcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i)
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

50:                                               ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit
  %51 = getelementptr inbounds nuw i8, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i, i64 %27
  %52 = tail call ptr @_ZN3fmt3v116detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i, ptr noundef %51, ptr nonnull %0) ; 0 uses
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

53:                                               ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit
  call void @_ZN3fmt3v116detail21default_arg_formatterIcEclIPKvTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i)
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

54:                                               ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit
  %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.2.0.copyload.i = inttoptr i64 %27 to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %7, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %0, ptr %8, align 8
  %55 = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %55, i8 0, i64 24, i1 false)
  call void %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.2.0.copyload.i(ptr noundef %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(20) %7, ptr noundef nonnull align 8 dereferenceable(32) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

56:                                               ; preds = %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit.thread, %_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi.exit
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.33) #26
  unreachable

_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit: ; preds = %30, %32, %33, %35, %36, %38, %40, %42, %44, %45, %46, %49, %50, %53, %54
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %62

57:                                               ; preds = %12, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr %1, ptr %10, align 8
  %.sroa.2.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %2, ptr %.sroa.2.0..sroa_idx.i14, align 8
  %58 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 0, ptr %58, align 8
  %59 = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %0, ptr %59, align 8
  %60 = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 %3, ptr %60, align 8
  %.sroa.2.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i15, align 8
  %61 = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %5, ptr %61, align 8
  call void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(56) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %62

62:                                               ; preds = %57, %_ZNK3fmt3v1116basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #1 comdat {
bb.a:
end_hunk_18
begin_hunk_19_@_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_:bb.a
  %i.np = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i.i154 = load ptr, ptr %i.np, align 8
  %i.nq = call ptr @_ZN3fmt3v116detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %.0.lcssa, ptr noundef %i.a, ptr %.sroa.0.0.copyload.i.i154) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail21default_arg_formatterIcEclIjTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8 ; 6 uses
  %3 = or i32 %1, 1
  %4 = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %3, i1 true)
  %5 = xor i32 %4, 31
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v116detail15do_count_digitsEjE5table, i64 %6
  %8 = load i64, ptr %7, align 8
  %9 = zext i32 %1 to i64
  %10 = add i64 %8, %9                            ; 2 uses
  %11 = lshr i64 %10, 32
  %12 = trunc nuw i64 %11 to i32                  ; 3 uses
  %13 = ashr i64 %10, 32                          ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 8 ; 3 uses
  %15 = load i64, ptr %14, align 8                ; 2 uses
  %16 = add i64 %13, %15                          ; 3 uses
  %17 = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 16 ; 2 uses
  %18 = load i64, ptr %17, align 8
  %19 = icmp ugt i64 %16, %18
  br i1 %19, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %2
  %20 = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 24
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.copyload, i64 noundef %16) #22
  %.pre.i.i = load i64, ptr %14, align 8          ; 2 uses
  %.pre14.i.i = load i64, ptr %17, align 8
  %.pre15.i.i = add i64 %.pre.i.i, %13            ; 2 uses
  %22 = icmp ult i64 %.pre14.i.i, %.pre15.i.i
  br i1 %22, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i

_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i: ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i, %2
  %23 = phi i64 [ %.pre.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ], [ %15, %2 ]
  %.pre-phi19.i.i = phi i64 [ %.pre15.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ], [ %16, %2 ]
  store i64 %.pre-phi19.i.i, ptr %14, align 8
  %24 = load ptr, ptr %.sroa.01.0.copyload, align 8 ; 2 uses
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 %23 ; 3 uses
  %.not.i = icmp eq ptr %24, null
  br i1 %.not.i, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i, label %26

26:                                               ; preds = %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i
  %27 = icmp ugt i32 %1, 99
  br i1 %27, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %26, %.lr.ph.i.i
  %.020.i.i = phi i32 [ %28, %.lr.ph.i.i ], [ %12, %26 ]
  %.01819.i.i = phi i32 [ %36, %.lr.ph.i.i ], [ %1, %26 ] ; 3 uses
  %28 = add i32 %.020.i.i, -2                     ; 3 uses
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds nuw i8, ptr %25, i64 %29
  %31 = urem i32 %.01819.i.i, 100
  %32 = shl nuw nsw i32 %31, 1
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %33
  %35 = load i16, ptr %34, align 2
  store i16 %35, ptr %30, align 1
  %36 = udiv i32 %.01819.i.i, 100                 ; 2 uses
  %37 = icmp ugt i32 %.01819.i.i, 9999
  br i1 %37, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !39

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %26
  %.018.lcssa.i.i = phi i32 [ %1, %26 ], [ %36, %.lr.ph.i.i ] ; 3 uses
  %.0.lcssa.i.i = phi i32 [ %12, %26 ], [ %28, %.lr.ph.i.i ] ; 2 uses
  %38 = icmp samesign ugt i32 %.018.lcssa.i.i, 9
  br i1 %38, label %39, label %47

39:                                               ; preds = %._crit_edge.i.i
  %40 = add i32 %.0.lcssa.i.i, -2
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds nuw i8, ptr %25, i64 %41
  %43 = shl nuw nsw i32 %.018.lcssa.i.i, 1
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %44
  %46 = load i16, ptr %45, align 2
  store i16 %46, ptr %42, align 1
  br label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_.exit

47:                                               ; preds = %._crit_edge.i.i
  %48 = trunc nuw nsw i32 %.018.lcssa.i.i to i8
  %49 = or disjoint i8 %48, 48
  %50 = add i32 %.0.lcssa.i.i, -1
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds nuw i8, ptr %25, i64 %51
  store i8 %49, ptr %52, align 1
  br label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_.exit

_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i: ; preds = %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %53 = tail call ptr @_ZN3fmt3v116detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %.sroa.01.0.copyload, i32 noundef %1, i32 noundef %12) ; 0 uses
  br label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_.exit

_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_.exit: ; preds = %39, %47, %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail21default_arg_formatterIcEclIyTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8 ; 6 uses
  %3 = or i64 %1, 1
  %4 = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %3, i1 true)
  %5 = xor i64 %4, 63
  %6 = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail15do_count_digitsEmE9bsr2log10, i64 %5
  %7 = load i8, ptr %6, align 1                   ; 2 uses
  %8 = zext i8 %7 to i32
  %9 = zext i8 %7 to i64
  %10 = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v116detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %9
  %11 = load i64, ptr %10, align 8
  %12 = icmp ult i64 %1, %11
  %.neg.i.i.i = sext i1 %12 to i32
  %13 = add nsw i32 %.neg.i.i.i, %8               ; 4 uses
  %14 = sext i32 %13 to i64                       ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 8 ; 3 uses
  %16 = load i64, ptr %15, align 8                ; 2 uses
  %17 = add i64 %16, %14                          ; 3 uses
  %18 = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 16 ; 2 uses
  %19 = load i64, ptr %18, align 8
  %20 = icmp ugt i64 %17, %19
  br i1 %20, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %2
  %21 = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 24
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.copyload, i64 noundef %17) #22
  %.pre.i.i = load i64, ptr %15, align 8          ; 2 uses
  %.pre14.i.i = load i64, ptr %18, align 8
  %.pre15.i.i = add i64 %.pre.i.i, %14            ; 2 uses
  %23 = icmp ult i64 %.pre14.i.i, %.pre15.i.i
  br i1 %23, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i

_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i: ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i, %2
  %24 = phi i64 [ %.pre.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ], [ %16, %2 ]
  %.pre-phi19.i.i = phi i64 [ %.pre15.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ], [ %17, %2 ]
  store i64 %.pre-phi19.i.i, ptr %15, align 8
  %25 = load ptr, ptr %.sroa.01.0.copyload, align 8 ; 2 uses
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 %24 ; 3 uses
  %.not.i = icmp eq ptr %25, null
  br i1 %.not.i, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i, label %27

27:                                               ; preds = %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i
  %28 = icmp ugt i64 %1, 99
  br i1 %28, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %27, %.lr.ph.i.i
  %.020.i.i = phi i32 [ %29, %.lr.ph.i.i ], [ %13, %27 ]
  %.01819.i.i = phi i64 [ %36, %.lr.ph.i.i ], [ %1, %27 ] ; 3 uses
  %29 = add i32 %.020.i.i, -2                     ; 3 uses
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds nuw i8, ptr %26, i64 %30
  %32 = urem i64 %.01819.i.i, 100
  %33 = shl nuw nsw i64 %32, 1
  %34 = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %33
  %35 = load i16, ptr %34, align 2
  store i16 %35, ptr %31, align 1
  %36 = udiv i64 %.01819.i.i, 100                 ; 2 uses
  %37 = icmp ugt i64 %.01819.i.i, 9999
  br i1 %37, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !41

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %27
  %.018.lcssa.i.i = phi i64 [ %1, %27 ], [ %36, %.lr.ph.i.i ] ; 3 uses
  %.0.lcssa.i.i = phi i32 [ %13, %27 ], [ %29, %.lr.ph.i.i ] ; 2 uses
  %38 = icmp samesign ugt i64 %.018.lcssa.i.i, 9
  br i1 %38, label %39, label %46

39:                                               ; preds = %._crit_edge.i.i
  %40 = add i32 %.0.lcssa.i.i, -2
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds nuw i8, ptr %26, i64 %41
  %43 = shl nuw nsw i64 %.018.lcssa.i.i, 1
  %44 = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %43
  %45 = load i16, ptr %44, align 2
  store i16 %45, ptr %42, align 1
  br label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEyTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_.exit

46:                                               ; preds = %._crit_edge.i.i
  %47 = trunc nuw nsw i64 %.018.lcssa.i.i to i8
  %48 = or disjoint i8 %47, 48
  %49 = add i32 %.0.lcssa.i.i, -1
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds nuw i8, ptr %26, i64 %50
  store i8 %48, ptr %51, align 1
  br label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEyTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_.exit

_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i: ; preds = %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %52 = tail call ptr @_ZN3fmt3v116detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %.sroa.01.0.copyload, i64 noundef %1, i32 noundef %13) ; 0 uses
  br label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEyTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_.exit

_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEyTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_.exit: ; preds = %39, %46, %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail21default_arg_formatterIcEclIbTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 {
_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEbTnNSt9enable_ifIXsr3std7is_sameIT1_bEE5valueEiE4typeELi0EEET0_S9_S6_RKNS0_12format_specsENS1_10locale_refE.exit:
  %2 = alloca %class.anon.460, align 8            ; 5 uses
  %3 = alloca %"struct.fmt::v11::format_specs", align 4 ; 7 uses
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i32 32768, ptr %3, align 4
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 32, ptr %4, align 4
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %3, i64 5
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %5, align 4
  %6 = select i1 %1, ptr @.str.15, ptr @.str.16
  %7 = select i1 %1, i64 4, i64 5                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %6, ptr %2, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %7, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %8 = call ptr @_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_11write_bytesIcLS3_1ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_(ptr %.sroa.01.0.copyload, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef %7, i64 noundef %7, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1) local_unnamed_addr #1 comdat align 2 {
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8 ; 6 uses
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 8 ; 4 uses
  %4 = load i64, ptr %3, align 8                  ; 2 uses
  %5 = add i64 %4, 1                              ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 16 ; 2 uses
  %7 = load i64, ptr %6, align 8
  %8 = icmp ugt i64 %5, %7
  br i1 %8, label %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i, label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_T_.exit

_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i: ; preds = %2
  %9 = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 24 ; 2 uses
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.copyload, i64 noundef %5) #22
  %.pre.i = load i64, ptr %3, align 8             ; 2 uses
  %.pre6.i = load i64, ptr %6, align 8
  %.pre7.i = add i64 %.pre.i, 1                   ; 3 uses
  %11 = icmp ugt i64 %.pre7.i, %.pre6.i
  br i1 %11, label %12, label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_T_.exit

12:                                               ; preds = %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i
  %13 = load ptr, ptr %9, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.copyload, i64 noundef %.pre7.i) #22
  %.pre.i.i.i = load i64, ptr %3, align 8         ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_T_.exit

_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_T_.exit: ; preds = %2, %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i, %12
  %.pre-phi.i.i.i = phi i64 [ %.pre7.i, %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i ], [ %.pre2.i.i.i, %12 ], [ %5, %2 ]
  %14 = phi i64 [ %.pre.i, %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i ], [ %.pre.i.i.i, %12 ], [ %4, %2 ]
  %15 = load ptr, ptr %.sroa.01.0.copyload, align 8
  store i64 %.pre-phi.i.i.i, ptr %3, align 8
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 %14
  store i8 %1, ptr %16, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail21default_arg_formatterIcEclIfTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %1) local_unnamed_addr #1 comdat align 2 {
  %3 = alloca %"struct.fmt::v11::format_specs", align 8 ; 5 uses
  %4 = alloca %class.anon.461, align 8            ; 5 uses
  %5 = alloca %"struct.fmt::v11::format_specs", align 4 ; 4 uses
  %6 = alloca %"struct.fmt::v11::detail::dragonbox::decimal_fp", align 8 ; 4 uses
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %7 = bitcast float %1 to i32                    ; 2 uses
  %.lobit.i = lshr i32 %7, 31                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) @__const._ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_.specs, i64 16, i1 false)
  %8 = tail call float @llvm.fabs.f32(float %1)
  %9 = fcmp ueq float %8, 0x7FF0000000000000
  br i1 %9, label %_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit.i, label %16

_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit.i: ; preds = %2
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 137438986240, ptr %3, align 8
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 -4294967296, ptr %10, align 8
  %11 = fcmp uno float %1, 0.000000e+00
  %12 = select i1 %11, ptr @.str.22, ptr @.str.24
  %.not.not.i.i = icmp sgt i32 %7, -1
  %13 = select i1 %.not.not.i.i, i64 3, i64 4     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store i32 %.lobit.i, ptr %4, align 8
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %12, ptr %14, align 8
  %15 = call ptr @_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_15write_nonfiniteIcS5_EET0_S7_bNS0_12format_specsENS0_4signEEUlS5_E_EET1_SC_RKS8_mmOT2_(ptr %.sroa.01.0.copyload, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef %13, i64 noundef %13, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEfTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_.exit

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %17 = tail call i64 @_ZN3fmt3v116detail9dragonbox10to_decimalIfEENS2_10decimal_fpIT_EES5_(float noundef %1) #22
  store i64 %17, ptr %6, align 8
  %18 = call ptr @_ZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refE(ptr %.sroa.01.0.copyload, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %.lobit.i, i32 noundef 7, ptr null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEfTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_.exit

_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEfTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_.exit: ; preds = %_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit.i, %16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail21default_arg_formatterIcEclIdTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #1 comdat align 2 {
  %3 = alloca %"struct.fmt::v11::format_specs", align 8 ; 5 uses
  %4 = alloca %class.anon.461, align 8            ; 5 uses
  %5 = alloca %"struct.fmt::v11::format_specs", align 4 ; 4 uses
  %6 = alloca %"struct.fmt::v11::detail::dragonbox::decimal_fp.467", align 8 ; 5 uses
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %7 = bitcast double %1 to i64                   ; 3 uses
  %.lobit.i = lshr i64 %7, 63
  %8 = trunc nuw nsw i64 %.lobit.i to i32         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) @__const._ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_.specs, i64 16, i1 false)
  %9 = and i64 %7, 9218868437227405312
  %10 = icmp eq i64 %9, 9218868437227405312
  br i1 %10, label %_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit.i, label %17

_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit.i: ; preds = %2
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 137438986240, ptr %3, align 8
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 -4294967296, ptr %11, align 8
  %12 = fcmp uno double %1, 0.000000e+00
  %13 = select i1 %12, ptr @.str.22, ptr @.str.24
  %.not.not.i.i = icmp sgt i64 %7, -1
  %14 = select i1 %.not.not.i.i, i64 3, i64 4     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store i32 %8, ptr %4, align 8
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %13, ptr %15, align 8
  %16 = call ptr @_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_15write_nonfiniteIcS5_EET0_S7_bNS0_12format_specsENS0_4signEEUlS5_E_EET1_SC_RKS8_mmOT2_(ptr %.sroa.01.0.copyload, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef %14, i64 noundef %14, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_.exit

17:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %18 = tail call { i64, i32 } @_ZN3fmt3v116detail9dragonbox10to_decimalIdEENS2_10decimal_fpIT_EES5_(double noundef %1) #22 ; 2 uses
  %19 = extractvalue { i64, i32 } %18, 0
  store i64 %19, ptr %6, align 8
  %20 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %21 = extractvalue { i64, i32 } %18, 1
  store i32 %21, ptr %20, align 8
  %22 = call ptr @_ZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refE(ptr %.sroa.01.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %8, i32 noundef 16, ptr null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_.exit

_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_.exit: ; preds = %_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit.i, %17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail21default_arg_formatterIcEclIPKcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %3, label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_PKT_.exit

3:                                                ; preds = %2
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.32) #26
  unreachable

_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_PKT_.exit: ; preds = %2
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 %4
  %6 = tail call ptr @_ZN3fmt3v116detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef nonnull %1, ptr noundef nonnull %5, ptr %.sroa.01.0.copyload) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail21default_arg_formatterIcEclIPKvTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
  %3 = alloca %class.anon.487, align 8            ; 5 uses
  %4 = alloca %"struct.fmt::v11::format_specs", align 4 ; 7 uses
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store i32 32768, ptr %4, align 4
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 32, ptr %5, align 4
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %4, i64 5
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %6, align 4
  %7 = ptrtoint ptr %1 to i64                     ; 2 uses
  br label %8

8:                                                ; preds = %8, %2
  %.03.i.i.i.i = phi i64 [ %7, %2 ], [ %10, %8 ]
  %.0.i.i.i.i = phi i32 [ 0, %2 ], [ %9, %8 ]     ; 2 uses
  %9 = add nuw nsw i32 %.0.i.i.i.i, 1             ; 2 uses
  %10 = lshr i64 %.03.i.i.i.i, 4                  ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %10, 0
  br i1 %.not.i.i.i.i, label %_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEvTnNSt9enable_ifIXsr3std7is_sameIT1_vEE5valueEiE4typeELi0EEET0_S9_PKS6_RKNS0_12format_specsENS1_10locale_refE.exit, label %8, !llvm.loop !42

_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEvTnNSt9enable_ifIXsr3std7is_sameIT1_vEE5valueEiE4typeELi0EEET0_S9_PKS6_RKNS0_12format_specsENS1_10locale_refE.exit: ; preds = %8
  %narrow.i.i = add nuw i32 %.0.i.i.i.i, 3
  %11 = zext i32 %narrow.i.i to i64               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i64 %7, ptr %3, align 8
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %9, ptr %12, align 8
  %13 = call ptr @_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_9write_ptrIcS5_mEET0_S7_T1_PKNS0_12format_specsEEUlS5_E_EES8_S8_RSA_mmOT2_(ptr %.sroa.01.0.copyload, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 noundef %11, i64 noundef %11, ptr noundef nonnull align 8 dereferenceable(12) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void
}

end_hunk_19
