begin_hunk_0
inline.NumInlined: 2351
inline.NumDeleted: 646
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.fmt::v11::detail::format_handler" = type { %"class.fmt::v11::parse_context", %"class.fmt::v11::context" }
%"class.fmt::v11::parse_context" = type <{ %"class.fmt::v11::basic_string_view", i32, [4 x i8] }>
%"class.fmt::v11::basic_string_view" = type { ptr, i64 }
%"class.fmt::v11::context" = type { %"class.fmt::v11::basic_appender", %"class.fmt::v11::basic_format_args", %"class.fmt::v11::detail::locale_ref" }
%"class.fmt::v11::basic_appender" = type { ptr }
%"class.fmt::v11::basic_format_args" = type { i64, %union.anon.433 }
%union.anon.433 = type { ptr }
%"class.fmt::v11::detail::locale_ref" = type { ptr }
%"class.fmt::v11::basic_memory_buffer.436" = type <{ %"class.fmt::v11::detail::buffer", [500 x i8], [4 x i8] }>
%"class.fmt::v11::detail::buffer" = type { ptr, i64, i64, ptr }
%"struct.fmt::v11::detail::format_arg_store.1041" = type { [1 x %"class.fmt::v11::detail::value"] }
end_hunk_1
begin_hunk_2
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%class.anon.487 = type <{ i64, i32, [4 x i8] }>
%"struct.fmt::v11::format_specs" = type { %"class.fmt::v11::basic_specs", i32, i32 }
%"class.fmt::v11::basic_specs" = type { i32, [4 x i8] }
end_hunk_2
begin_hunk_3

$_ZN3fmt3v116detail11assert_failEPKciS3_ = comdat any

$_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_ = comdat any

$_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEiTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_ = comdat any

end_hunk_3
begin_hunk_4_@_ZNK4LIEF2PE11ExportEntry6acceptERNS_7VisitorE:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF2PElsERSoRKNS0_11ExportEntryE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %3 = alloca %"struct.fmt::v11::detail::format_handler", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.fmt::v11::basic_memory_buffer.436", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.fmt::v11::basic_memory_buffer.436", align 8 ; 10 uses
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.1041", align 16 ; 5 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.1039", align 16 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %11 = alloca %"struct.LIEF::PE::ExportEntry::forward_information_t", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.d = load i16, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 68
end_hunk_4
begin_hunk_5_@_ZN4LIEF2PElsERSoRKNS0_11ExportEntryE:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.m(ptr noundef nonnull align 8 dereferenceable(56) %1) #22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !6
  %i.o = zext i16 %i.d to i32
  store i32 %i.o, ptr %7, align 16, !noalias !6
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.h, ptr %i.p, align 16, !noalias !6
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 %i.j, ptr %i.q, align 16, !noalias !6
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.s = load ptr, ptr %i.n, align 8, !noalias !6
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noalias !6
  store ptr %i.s, ptr %i.r, align 16, !noalias !6
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i64 %i.u, ptr %i.v, align 8, !noalias !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !9
  %12 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %14, align 8, !noalias !9
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %13, align 8, !noalias !9
  %15 = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %15, ptr %5, align 8, !noalias !9
  store i64 500, ptr %12, align 8, !noalias !9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !9
  store ptr @.str.1, ptr %3, align 8, !noalias !9
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 23, ptr %i.w, align 8, !noalias !9
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.x, align 8, !noalias !9
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %5, ptr %i.y, align 8, !noalias !9
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 53954, ptr %16, align 8, !noalias !9
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %7, ptr %i.z, align 8, !noalias !9
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr null, ptr %17, align 8, !noalias !9
  call void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.1, i64 23, ptr noundef nonnull align 8 dereferenceable(56) %3), !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !9
  call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %i.aa = load i64, ptr %14, align 8, !noalias !15 ; 6 uses
  %i.ab = icmp ult i64 %i.aa, 4611686018427387903
  call void @llvm.assume(i1 %i.ab)
  %i.ac = load ptr, ptr %5, align 8, !noalias !15 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.ad, ptr %8, align 8, !alias.scope !15
  %i.ae = icmp eq ptr %i.ac, null
  %i.af = icmp ne i64 %i.aa, 0
  %or.cond.i.i.i = and i1 %i.af, %i.ae
end_hunk_5
begin_hunk_6_@_ZN4LIEF2PElsERSoRKNS0_11ExportEntryE:bb.a
  br i1 %i.ag, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ah = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #22 ; 2 uses
  store ptr %i.ah, ptr %8, align 8, !alias.scope !15
  %i.ai = load i64, ptr %i.b, align 8, !noalias !15
  store i64 %i.ai, ptr %i.ad, align 8, !alias.scope !15
  br label %._crit_edge.i.i.i.i
end_hunk_6
begin_hunk_7_@_ZN4LIEF2PElsERSoRKNS0_11ExportEntryE:bb.a

_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  %i.al = load i64, ptr %i.b, align 8, !noalias !15 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.al, ptr %i.am, align 8, !alias.scope !15
  %i.an = load ptr, ptr %8, align 8, !alias.scope !15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22, !noalias !15
  %i.ap = load ptr, ptr %5, align 8, !noalias !9  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %15
  br i1 %.not.i.i.i, label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
end_hunk_7
begin_hunk_8_@_ZN4LIEF2PElsERSoRKNS0_11ExportEntryE:bb.a
  br label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !6
  %i.aq = load ptr, ptr %8, align 8
  %i.ar = load i64, ptr %i.am, align 8
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.aq, i64 noundef %i.ar) #22 ; 0 uses
  %i.at = load ptr, ptr %8, align 8               ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.ad
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

end_hunk_8
begin_hunk_9_@_ZN4LIEF2PElsERSoRKNS0_11ExportEntryE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = icmp ne i64 %i.ay, 0
end_hunk_9
begin_hunk_10_@_ZN4LIEF2PElsERSoRKNS0_11ExportEntryE:bb.a
  br i1 %i.bd, label %bb.h, label %bb.o

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @_ZNK4LIEF2PE11ExportEntry19forward_informationEv(ptr dead_on_unwind nonnull writable sret(%"struct.LIEF::PE::ExportEntry::forward_information_t") align 8 %11, ptr noundef nonnull align 8 dereferenceable(136) %1)
  call void @_ZN4LIEF9to_stringINS_2PE11ExportEntry21forward_information_tEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(64) %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22, !noalias !16
  %i.be = load ptr, ptr %10, align 8, !noalias !16
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !16
  store ptr %i.be, ptr %6, align 16, !noalias !16
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.bg, ptr %i.bh, align 8, !noalias !16
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !19
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %19 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %20 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %20, align 8, !noalias !19
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %19, align 8, !noalias !19
  %21 = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %21, ptr %4, align 8, !noalias !19
  store i64 500, ptr %18, align 8, !noalias !19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !19
  store ptr @.str.3, ptr %2, align 8, !noalias !19
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 5, ptr %i.bi, align 8, !noalias !19
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.bj, align 8, !noalias !19
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %4, ptr %i.bk, align 8, !noalias !19
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 13, ptr %22, align 8, !noalias !19
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %6, ptr %i.bl, align 8, !noalias !19
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr null, ptr %23, align 8, !noalias !19
  call void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.3, i64 5, ptr noundef nonnull align 8 dereferenceable(56) %2), !noalias !19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !19
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %i.bm = load i64, ptr %20, align 8, !noalias !25 ; 6 uses
  %i.bn = icmp ult i64 %i.bm, 4611686018427387903
  call void @llvm.assume(i1 %i.bn)
  %i.bo = load ptr, ptr %4, align 8, !noalias !25 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.bp, ptr %9, align 8, !alias.scope !25
  %i.bq = icmp eq ptr %i.bo, null
  %i.br = icmp ne i64 %i.bm, 0
  %or.cond.i.i.i9 = and i1 %i.br, %i.bq
end_hunk_10
begin_hunk_11_@_ZN4LIEF2PElsERSoRKNS0_11ExportEntryE:bb.a
  br i1 %i.bs, label %bb.k, label %._crit_edge.i.i.i.i10

bb.k:                                             ; preds = %bb.j
  %i.bt = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #22 ; 2 uses
  store ptr %i.bt, ptr %9, align 8, !alias.scope !25
  %i.bu = load i64, ptr %i.a, align 8, !noalias !25
  store i64 %i.bu, ptr %i.bp, align 8, !alias.scope !25
  br label %._crit_edge.i.i.i.i10
end_hunk_11
begin_hunk_12_@_ZN4LIEF2PElsERSoRKNS0_11ExportEntryE:bb.a

_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i11: ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i.i10
  %i.bx = load i64, ptr %i.a, align 8, !noalias !25 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.bx, ptr %i.by, align 8, !alias.scope !25
  %i.bz = load ptr, ptr %9, align 8, !alias.scope !25
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bx
  store i8 0, ptr %i.ca, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !25
  %i.cb = load ptr, ptr %4, align 8, !noalias !19 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.cb, %21
  br i1 %.not.i.i.i12, label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit13, label %bb.n

bb.n:                                             ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i11
end_hunk_12
begin_hunk_13_@_ZN4LIEF2PElsERSoRKNS0_11ExportEntryE:bb.a
  br label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit13

_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit13: ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i11, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !16
  %i.cc = load ptr, ptr %9, align 8
  %i.cd = load i64, ptr %i.by, align 8
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.cc, i64 noundef %i.cd) #22 ; 0 uses
  %i.cf = load ptr, ptr %9, align 8               ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.bp
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

end_hunk_13
begin_hunk_14_@_ZN4LIEF2PElsERSoRKNS0_11ExportEntryE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  %i.cj = load ptr, ptr %10, align 8              ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

end_hunk_14
begin_hunk_15_@_ZN4LIEF2PElsERSoRKNS0_11ExportEntryE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

end_hunk_15
begin_hunk_16_@_ZN4LIEF2PElsERSoRKNS0_11ExportEntryE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.cu = load ptr, ptr %11, align 8              ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZN4LIEF2PE11ExportEntry21forward_information_tD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

end_hunk_16
begin_hunk_17_@_ZN4LIEF2PElsERSoRKNS0_11ExportEntryE:bb.a
  br label %_ZN4LIEF2PE11ExportEntry21forward_information_tD2Ev.exit

_ZN4LIEF2PE11ExportEntry21forward_information_tD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.o

bb.o:                                             ; preds = %_ZN4LIEF2PE11ExportEntry21forward_information_tD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_17
begin_hunk_18_@llvm.assume
; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #17

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

end_hunk_19
