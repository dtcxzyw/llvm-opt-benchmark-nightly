Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/lib_asio?download=true
inline.NumInlined: 3512
inline.NumDeleted: 969
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5boost4asio2ip15make_address_v6ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49, !noalias !1359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49, !noalias !1359
  store i64 0, ptr %i.a, align 8, !tbaa !158, !noalias !1359
  %i.p = call noundef i32 @_ZN5boost4asio6detail10socket_ops9inet_ptonEiPKcPvPmRNS_6system10error_codeE(i32 noundef 10, ptr noundef %i.o, ptr noundef nonnull %3, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(24) %4), !noalias !1359
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, i8 0, i64 20, i1 false), !alias.scope !1359
  br label %_ZN5boost4asio2ip15make_address_v6EPKcRNS_6system10error_codeE.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = load i64, ptr %i.a, align 8, !tbaa !158, !noalias !1359
  %i.s = trunc i64 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.s, ptr %i.t, align 4, !tbaa !489, !alias.scope !1359
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull readonly align 1 dereferenceable(16) %3, i64 16, i1 false)
  br label %_ZN5boost4asio2ip15make_address_v6EPKcRNS_6system10error_codeE.exit.i.i

_ZN5boost4asio2ip15make_address_v6EPKcRNS_6system10error_codeE.exit.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49, !noalias !1359
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49, !noalias !1359
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49, !noalias !1357
  store ptr @.str.75, ptr %5, align 8, !tbaa !177, !noalias !1357
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.76, ptr %i.u, align 8, !tbaa !178, !noalias !1357
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 213, ptr %i.v, align 8, !tbaa !179, !noalias !1357
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 3, ptr %i.w, align 4, !tbaa !180, !noalias !1357
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !160, !noalias !1357 ; 2 uses
  %i.z = and i64 %i.y, 1
  %.not.i.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost4asio2ip15make_address_v6EPKcRNS_6system10error_codeE.exit.i.i
  %i.aa = icmp ne i64 %i.y, 1
  %i.ab = load i32, ptr %4, align 8, !noalias !1357
  %i.ac = icmp ne i32 %i.ab, 0
  %or.cond.i.i.i4 = select i1 %i.aa, i1 true, i1 %i.ac
  br i1 %or.cond.i.i.i4, label %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i.i, label %bb.i

_ZNK5boost6system10error_codecvbEv.exit.thread.i.i.i: ; preds = %bb.h
  invoke void @_ZN5boost4asio6detail14do_throw_errorERKNS_6system10error_codeERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %.noexc5 unwind label %bb.j

.noexc5:                                          ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i.i
  unreachable

bb.i:                                             ; preds = %bb.h, %_ZN5boost4asio2ip15make_address_v6EPKcRNS_6system10error_codeE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49, !noalias !1357
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49, !noalias !1357
  %i.ad = load ptr, ptr %6, align 8, !tbaa !336   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.c
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.af = load i64, ptr %i.c, align 8, !tbaa !108
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  ret void

bb.j:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %6, align 8, !tbaa !336   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.c
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.j
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !108
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  resume { ptr, i32 } %i.ah
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5boost4asio2ip15make_address_v6ESt17basic_string_viewIcSt11char_traitsIcEERNS_6system10error_codeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.boost::asio::ip::address_v6") align 4 captures(none) %0, i64 %1, ptr nofree readonly captures(address_is_null) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::array.39", align 1    ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !147
  %i.d = icmp eq ptr %2, null
  %i.e = icmp ne i64 %1, 0
  %or.cond.i.i.i = and i1 %i.e, %i.d
  br i1 %or.cond.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.120) #50
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  store i64 %1, ptr %i.b, align 8, !tbaa !158
  %i.f = icmp ugt i64 %1, 15
  br i1 %i.f, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.c
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc1 unwind label %bb.i    ; 2 uses

.noexc1:                                          ; preds = %.noexc.i.i.i
  store ptr %i.g, ptr %5, align 8, !tbaa !336
  %i.h = load i64, ptr %i.b, align 8, !tbaa !158
  store i64 %i.h, ptr %i.c, align 8, !tbaa !108
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc1, %bb.c
  %i.i = phi ptr [ %i.g, %.noexc1 ], [ %i.c, %bb.c ] ; 2 uses
  switch i64 %1, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.j = load i8, ptr %2, align 1, !tbaa !108
  store i8 %i.j, ptr %i.i, align 1, !tbaa !108
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %2, i64 %1, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.k = load i64, ptr %i.b, align 8, !tbaa !158  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !149
  %i.m = load ptr, ptr %5, align 8, !tbaa !336
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  %i.o = load ptr, ptr %5, align 8, !tbaa !336, !noalias !1364
  call void @llvm.experimental.noalias.scope.decl(metadata !1365)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49, !noalias !1366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49, !noalias !1366
  store i64 0, ptr %i.a, align 8, !tbaa !158, !noalias !1366
  %i.p = call noundef i32 @_ZN5boost4asio6detail10socket_ops9inet_ptonEiPKcPvPmRNS_6system10error_codeE(i32 noundef 10, ptr noundef %i.o, ptr noundef nonnull %4, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3), !noalias !1366
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, i8 0, i64 20, i1 false), !alias.scope !1366
  br label %_ZN5boost4asio2ip15make_address_v6ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6system10error_codeE.exit

bb.h:                                             ; preds = %bb.f
  %i.r = load i64, ptr %i.a, align 8, !tbaa !158, !noalias !1366
  %i.s = trunc i64 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.s, ptr %i.t, align 4, !tbaa !489, !alias.scope !1366
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull readonly align 1 dereferenceable(16) %4, i64 16, i1 false)
  br label %_ZN5boost4asio2ip15make_address_v6ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6system10error_codeE.exit

_ZN5boost4asio2ip15make_address_v6ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6system10error_codeE.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49, !noalias !1366
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49, !noalias !1366
  %i.u = load ptr, ptr %5, align 8, !tbaa !336    ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.c
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5boost4asio2ip15make_address_v6ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6system10error_codeE.exit
  %i.w = load i64, ptr %i.c, align 8, !tbaa !108
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5boost4asio2ip15make_address_v6ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6system10error_codeE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  ret void

bb.i:                                             ; preds = %.noexc.i.i.i, %bb.b
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #48
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5boost4asio2ip15make_address_v4ENS1_11v4_mapped_tERKNS1_10address_v6E(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.boost::asio::ip::address_v4") align 4 captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::asio::ip::bad_address_cast", align 8 ; 5 uses
  %i.a = load <8 x i8>, ptr %2, align 4
  %.fr = freeze <8 x i8> %i.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4
  %i.d = icmp eq i8 %i.c, 0
  %.fr.scalar = bitcast <8 x i8> %.fr to i64
  %i.e = icmp eq i64 %.fr.scalar, 0
  %op.rdx = select i1 %i.e, i1 %i.d, i1 false
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp eq i8 %i.g, 0
  %or.cond = select i1 %op.rdx, i1 %i.h, i1 false
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.j = load i8, ptr %i.i, align 2
  %i.k = icmp eq i8 %i.j, -1
  %or.cond12 = select i1 %or.cond, i1 %i.k, i1 false
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.m = load i8, ptr %i.l, align 1
  %i.n = icmp eq i8 %i.m, -1
  %or.cond15 = select i1 %or.cond12, i1 %i.n, i1 false
  br i1 %or.cond15, label %bb.d, label %_ZNK5boost4asio2ip10address_v612is_v4_mappedEv.exit.thread

_ZNK5boost4asio2ip10address_v612is_v4_mappedEv.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost4asio2ip16bad_address_castE, i64 16), ptr %3, align 8, !tbaa !91
  invoke void @_ZN5boost15throw_exceptionINS_4asio2ip16bad_address_castEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #50
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZNK5boost4asio2ip10address_v612is_v4_mappedEv.exit.thread
  unreachable

bb.c:                                             ; preds = %_ZNK5boost4asio2ip10address_v612is_v4_mappedEv.exit.thread
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  resume { ptr, i32 } %i.o

bb.d:                                             ; preds = %bb.a
  %.sroa.2.0.copyload.i = load i64, ptr %i.b, align 4
  %.sroa.3.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i, 32
  %.sroa.3.12.extract.trunc = trunc nuw i64 %.sroa.3.12.extract.shift to i32
  store i32 %.sroa.3.12.extract.trunc, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN5boost4asio2ip15make_address_v6ENS1_11v4_mapped_tERKNS1_10address_v4E(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.boost::asio::ip::address_v6") align 4 captures(none) initializes((0, 20)) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #18 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.b, align 4, !tbaa !489
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %0, i8 0, i64 10, i1 false)
  store i8 -1, ptr %.sroa.13.0..sroa_idx, align 2
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 -1, ptr %.sroa.14.0..sroa_idx, align 1
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.a, ptr %.sroa.15.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5boost4asio2ip9host_nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [1024 x i8], align 16             ; 6 uses
  %1 = alloca %"class.boost::system::error_code", align 8 ; 7 uses
  %2 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #49
  %i.c = call i32 @gethostname(ptr noundef nonnull %i.b, i64 noundef 1024) #49
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !152  ; 3 uses
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !157
  %i.g = and i64 %i.f, -2
  %switch.i.i.i.i = icmp eq i64 %i.g, -5572340897628102704
  br i1 %switch.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ne i32 %i.e, 0
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !91
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef %i.e) #49, !inline_history !59
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i1 [ %i.h, %bb.c ], [ %i.l, %bb.d ]
  %i.m = select i1 %.0.i.i.i.i, i64 3, i64 2      ; 2 uses
  store i32 %i.e, ptr %1, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  %.sroa.52.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !tbaa !108
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.m, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  store ptr @.str.77, ptr %2, align 8, !tbaa !177
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.78, ptr %i.n, align 8, !tbaa !178
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 37, ptr %i.o, align 8, !tbaa !179
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 5, ptr %i.p, align 4, !tbaa !180
  %i.q = and i64 %i.m, 1
  %.not.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i, label %_ZN5boost4asio6detail11throw_errorERKNS_6system10error_codeERKNS_15source_locationE.exit, label %_ZNK5boost6system10error_codecvbEv.exit.thread.i

_ZNK5boost6system10error_codecvbEv.exit.thread.i: ; preds = %bb.e
  call void @_ZN5boost4asio6detail14do_throw_errorERKNS_6system10error_codeERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  unreachable

_ZN5boost4asio6detail11throw_errorERKNS_6system10error_codeERKNS_15source_locationE.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !147
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !149
  store i8 0, ptr %i.r, align 8, !tbaa !108
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !147
  %i.u = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #49 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  store i64 %i.u, ptr %i.a, align 8, !tbaa !158
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.f
  %i.w = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !336
  %i.x = load i64, ptr %i.a, align 8, !tbaa !158
  store i64 %i.x, ptr %i.t, align 8, !tbaa !108
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.f
  %i.y = phi ptr [ %i.w, %.noexc.i ], [ %i.t, %bb.f ] ; 2 uses
  switch i64 %i.u, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.z = load i8, ptr %i.b, align 16, !tbaa !108
  store i8 %i.z, ptr %i.y, align 1, !tbaa !108
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr nonnull align 16 %i.b, i64 %i.u, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !158 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !149
  %i.ac = load ptr, ptr %0, align 8, !tbaa !336
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN5boost4asio6detail11throw_errorERKNS_6system10error_codeERKNS_15source_locationE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5boost4asio2ip9host_nameB5cxx11ERNS_6system10error_codeE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [1024 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  %i.c = call i32 @gethostname(ptr noundef nonnull %i.b, i64 noundef 1024) #49
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !152  ; 3 uses
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !157
  %i.g = and i64 %i.f, -2
  %switch.i.i.i.i = icmp eq i64 %i.g, -5572340897628102704
  br i1 %switch.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ne i32 %i.e, 0
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !91
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef %i.e) #49, !inline_history !59
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i1 [ %i.h, %bb.c ], [ %i.l, %bb.d ]
  %i.m = select i1 %.0.i.i.i.i, i64 3, i64 2
  store i32 %i.e, ptr %1, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  %.sroa.52.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !tbaa !108
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.m, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !158
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !147
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !149
  store i8 0, ptr %i.n, align 8, !tbaa !108
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !147
  %i.q = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #49 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  store i64 %i.q, ptr %i.a, align 8, !tbaa !158
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.f
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !336
  %i.t = load i64, ptr %i.a, align 8, !tbaa !158
  store i64 %i.t, ptr %i.p, align 8, !tbaa !108
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.f
  %i.u = phi ptr [ %i.s, %.noexc.i ], [ %i.p, %bb.f ] ; 2 uses
end_hunk_0
