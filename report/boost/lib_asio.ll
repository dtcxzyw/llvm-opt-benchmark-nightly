Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/lib_asio?download=true
inline.NumInlined: 3512
inline.NumDeleted: 969
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK5boost4asio2ip10address_v69to_stringB5cxx11Ev:bb.a
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.x = load i8, ptr %i.f, align 1, !tbaa !108
  store i8 %i.x, ptr %i.w, align 1, !tbaa !108
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 1 %i.f, i64 %i.s, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.y = load i64, ptr %i.a, align 8, !tbaa !158  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !149
  %i.aa = load ptr, ptr %0, align 8, !tbaa !336
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK5boost4asio2ip10address_v49to_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.boost::system::error_code", align 8 ; 8 uses
  %i.b = alloca [16 x i8], align 16               ; 3 uses
  %3 = alloca %"struct.boost::source_location", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  %i.c = tail call ptr @__errno_location() #52    ; 2 uses
  store i32 0, ptr %i.c, align 4, !tbaa !152
  %i.d = call ptr @inet_ntop(i32 noundef 2, ptr noundef nonnull %1, ptr noundef nonnull %i.b, i32 noundef 16) #49 ; 4 uses
  %i.e = load i32, ptr %i.c, align 4, !tbaa !152  ; 3 uses
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !157
  %i.g = and i64 %i.f, -2
  %switch.i.i.i.i = icmp eq i64 %i.g, -5572340897628102704
  br i1 %switch.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ne i32 %i.e, 0
  br label %_ZN5boost4asio6detail10socket_ops14get_last_errorERNS_6system10error_codeEb.exit.i

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !91
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef %i.e) #49, !inline_history !1306
  br label %_ZN5boost4asio6detail10socket_ops14get_last_errorERNS_6system10error_codeEb.exit.i

_ZN5boost4asio6detail10socket_ops14get_last_errorERNS_6system10error_codeEb.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i.i = phi i1 [ %i.h, %bb.b ], [ %i.l, %bb.c ]
  %i.m = select i1 %.0.i.i.i.i, i64 3, i64 2      ; 2 uses
  store i32 %i.e, ptr %2, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  %.sroa.52.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !tbaa !108
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i64 %i.m, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !158
  %i.n = icmp eq ptr %i.d, null
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN5boost4asio6detail10socket_ops14get_last_errorERNS_6system10error_codeEb.exit.i
  %i.o = and i64 %i.m, 1
  %.not.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.i, label %.thread

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  store ptr @.str.72, ptr %3, align 8, !tbaa !177
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.73, ptr %i.p, align 8, !tbaa !178
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 84, ptr %i.q, align 8, !tbaa !179
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 5, ptr %i.r, align 4, !tbaa !180
  br label %_ZNK5boost6system10error_codecvbEv.exit.thread.i

_ZNK5boost6system10error_codecvbEv.exit.i:        ; preds = %bb.d
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !157, !noalias !1310
  %i.t = and i64 %i.s, -2
  %switch.i.i.i.i.i = icmp eq i64 %i.t, -5572340897628102704
  br i1 %switch.i.i.i.i.i, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread.i, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.i

_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.i: ; preds = %_ZNK5boost6system10error_codecvbEv.exit.i
  %i.u = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !91, !noalias !1310
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1310
  %i.x = call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 22) #49, !noalias !1310, !inline_history !1309
  br i1 %i.x, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread.i, label %bb.e

_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread.i: ; preds = %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.i, %_ZNK5boost6system10error_codecvbEv.exit.i
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.i, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread.i
  %i.y = phi i64 [ 3, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.thread.i ], [ 2, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit.i ] ; 2 uses
  store i64 22, ptr %2, align 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !tbaa !108
  store i64 %i.y, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !158
  %.pre = and i64 %i.y, 1
  %i.z = icmp eq i64 %.pre, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  store ptr @.str.72, ptr %3, align 8, !tbaa !177
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.73, ptr %i.aa, align 8, !tbaa !178
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 84, ptr %i.ab, align 8, !tbaa !179
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 5, ptr %i.ac, align 4, !tbaa !180
  br i1 %i.z, label %.noexc, label %_ZNK5boost6system10error_codecvbEv.exit.thread.i

_ZNK5boost6system10error_codecvbEv.exit.thread.i: ; preds = %bb.e, %.thread
  call void @_ZN5boost4asio6detail14do_throw_errorERKNS_6system10error_codeERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  unreachable

.noexc:                                           ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ad, ptr %0, align 8, !tbaa !147
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.120) #50
  unreachable

bb.f:                                             ; preds = %_ZN5boost4asio6detail10socket_ops14get_last_errorERNS_6system10error_codeEb.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !147
  %i.af = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #49 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  store i64 %i.af, ptr %i.a, align 8, !tbaa !158
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.f
  %i.ah = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !336
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !158
  store i64 %i.ai, ptr %i.ae, align 8, !tbaa !108
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.f
  %i.aj = phi ptr [ %i.ah, %.noexc.i ], [ %i.ae, %bb.f ] ; 2 uses
  switch i64 %i.af, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ak = load i8, ptr %i.d, align 1, !tbaa !108
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !108
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr nonnull align 1 %i.d, i64 %i.af, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i
  %i.al = load i64, ptr %i.a, align 8, !tbaa !158 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !149
  %i.an = load ptr, ptr %0, align 8, !tbaa !336
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5boost4asio2ip7address11is_loopbackEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %0) local_unnamed_addr #31 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !486
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !487
  %.mask.i = and i32 %i.d, 255
  %i.e = icmp eq i32 %.mask.i, 127
  br label %_ZNK5boost4asio2ip10address_v611is_loopbackEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load <8 x i8>, ptr %i.f, align 4
  %.fr = freeze <8 x i8> %i.g
  %i.h = icmp eq <8 x i8> %.fr, zeroinitializer   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load <4 x i8>, ptr %i.i, align 4
  %.fr20 = freeze <4 x i8> %i.j
  %i.k = icmp eq <4 x i8> %.fr20, zeroinitializer
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = load i8, ptr %i.l, align 4
  %i.n = icmp eq i8 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.p = load i8, ptr %i.o, align 1
  %.fr21 = freeze i8 %i.p
  %i.q = icmp eq i8 %.fr21, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.s = load i8, ptr %i.r, align 2
  %i.t = icmp eq i8 %i.s, 0
  %i.u = shufflevector <8 x i1> %i.h, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = and <4 x i1> %i.u, %i.k
  %i.v = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.w = shufflevector <8 x i1> %i.v, <8 x i1> %i.h, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.x = bitcast <8 x i1> %i.w to i8
  %i.y = icmp eq i8 %i.x, -1
  %op.rdx = select i1 %i.y, i1 %i.n, i1 false
  %1 = freeze i1 %op.rdx
  %2 = and i1 %1, %i.q
  %op.rdx19 = select i1 %2, i1 %i.t, i1 false
  br i1 %op.rdx19, label %bb.d, label %_ZNK5boost4asio2ip10address_v611is_loopbackEv.exit

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !108
  %i.ab = icmp eq i8 %i.aa, 1
  br label %_ZNK5boost4asio2ip10address_v611is_loopbackEv.exit

_ZNK5boost4asio2ip10address_v611is_loopbackEv.exit: ; preds = %bb.d, %bb.c, %bb.b
  %i.ac = phi i1 [ %i.e, %bb.b ], [ false, %bb.c ], [ %i.ab, %bb.d ]
  ret i1 %i.ac
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5boost4asio2ip10address_v411is_loopbackEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #31 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !487
  %.mask = and i32 %i.a, 255
  %i.b = icmp eq i32 %.mask, 127
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5boost4asio2ip10address_v611is_loopbackEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0) local_unnamed_addr #31 align 2 {
bb.a:
  %i.a = load <8 x i8>, ptr %0, align 4
  %.fr = freeze <8 x i8> %i.a
  %i.b = icmp eq <8 x i8> %.fr, zeroinitializer   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load <4 x i8>, ptr %i.c, align 4
  %.fr44 = freeze <4 x i8> %i.d
  %i.e = icmp eq <4 x i8> %.fr44, zeroinitializer
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i8, ptr %i.f, align 4
  %i.h = icmp eq i8 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.j = load i8, ptr %i.i, align 1
  %.fr45 = freeze i8 %i.j
  %i.k = icmp eq i8 %.fr45, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.m = load i8, ptr %i.l, align 2
  %i.n = icmp eq i8 %i.m, 0
  %i.o = shufflevector <8 x i1> %i.b, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = and <4 x i1> %i.o, %i.e
  %i.p = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.q = shufflevector <8 x i1> %i.p, <8 x i1> %i.b, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.r = bitcast <8 x i1> %i.q to i8
  %i.s = icmp eq i8 %i.r, -1
  %op.rdx = select i1 %i.s, i1 %i.h, i1 false
  %1 = freeze i1 %op.rdx
  %2 = and i1 %1, %i.k
  %op.rdx43 = select i1 %2, i1 %i.n, i1 false
  br i1 %op.rdx43, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.u = load i8, ptr %i.t, align 1, !tbaa !108
  %i.v = icmp eq i8 %i.u, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.w = phi i1 [ false, %bb.a ], [ %i.v, %bb.b ]
  ret i1 %i.w
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5boost4asio2ip7address14is_unspecifiedEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %0) local_unnamed_addr #31 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !486
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !487
  %i.e = icmp eq i32 %i.d, 0
  br label %_ZNK5boost4asio2ip10address_v614is_unspecifiedEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load <8 x i8>, ptr %i.f, align 4
  %.fr = freeze <8 x i8> %i.g
  %i.h = icmp eq <8 x i8> %.fr, zeroinitializer   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load <4 x i8>, ptr %i.i, align 4
  %.fr20 = freeze <4 x i8> %i.j
  %i.k = icmp eq <4 x i8> %.fr20, zeroinitializer
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = load i8, ptr %i.l, align 4
  %i.n = icmp eq i8 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.p = load i8, ptr %i.o, align 1
  %.fr21 = freeze i8 %i.p
  %i.q = icmp eq i8 %.fr21, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.s = load i8, ptr %i.r, align 2
  %i.t = icmp eq i8 %i.s, 0
  %i.u = shufflevector <8 x i1> %i.h, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = and <4 x i1> %i.u, %i.k
  %i.v = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.w = shufflevector <8 x i1> %i.v, <8 x i1> %i.h, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.x = bitcast <8 x i1> %i.w to i8
  %i.y = icmp eq i8 %i.x, -1
  %op.rdx = select i1 %i.y, i1 %i.n, i1 false
  %1 = freeze i1 %op.rdx
  %2 = and i1 %1, %i.q
  %op.rdx19 = select i1 %2, i1 %i.t, i1 false
  br i1 %op.rdx19, label %bb.d, label %_ZNK5boost4asio2ip10address_v614is_unspecifiedEv.exit

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !108
  %i.ab = icmp eq i8 %i.aa, 0
  br label %_ZNK5boost4asio2ip10address_v614is_unspecifiedEv.exit

_ZNK5boost4asio2ip10address_v614is_unspecifiedEv.exit: ; preds = %bb.d, %bb.c, %bb.b
  %i.ac = phi i1 [ %i.e, %bb.b ], [ false, %bb.c ], [ %i.ab, %bb.d ]
  ret i1 %i.ac
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5boost4asio2ip10address_v414is_unspecifiedEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #31 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !487
  %i.b = icmp eq i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5boost4asio2ip10address_v614is_unspecifiedEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0) local_unnamed_addr #31 align 2 {
bb.a:
  %i.a = load <8 x i8>, ptr %0, align 4
  %.fr = freeze <8 x i8> %i.a
  %i.b = icmp eq <8 x i8> %.fr, zeroinitializer   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load <4 x i8>, ptr %i.c, align 4
  %.fr44 = freeze <4 x i8> %i.d
  %i.e = icmp eq <4 x i8> %.fr44, zeroinitializer
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i8, ptr %i.f, align 4
  %i.h = icmp eq i8 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.j = load i8, ptr %i.i, align 1
  %.fr45 = freeze i8 %i.j
  %i.k = icmp eq i8 %.fr45, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.m = load i8, ptr %i.l, align 2
  %i.n = icmp eq i8 %i.m, 0
  %i.o = shufflevector <8 x i1> %i.b, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = and <4 x i1> %i.o, %i.e
  %i.p = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.q = shufflevector <8 x i1> %i.p, <8 x i1> %i.b, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.r = bitcast <8 x i1> %i.q to i8
  %i.s = icmp eq i8 %i.r, -1
  %op.rdx = select i1 %i.s, i1 %i.h, i1 false
  %1 = freeze i1 %op.rdx
  %2 = and i1 %1, %i.k
  %op.rdx43 = select i1 %2, i1 %i.n, i1 false
  br i1 %op.rdx43, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.u = load i8, ptr %i.t, align 1, !tbaa !108
  %i.v = icmp eq i8 %i.u, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.w = phi i1 [ false, %bb.a ], [ %i.v, %bb.b ]
  ret i1 %i.w
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5boost4asio2ip7address12is_multicastEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %0) local_unnamed_addr #31 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !486
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !487
  %i.e = and i32 %i.d, 240
  %i.f = icmp eq i32 %i.e, 224
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i8, ptr %i.g, align 4, !tbaa !108
  %i.i = icmp eq i8 %i.h, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi i1 [ %i.f, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5boost4asio2ip10address_v412is_multicastEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #31 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !487
  %i.b = and i32 %i.a, 240
  %i.c = icmp eq i32 %i.b, 224
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5boost4asio2ip10address_v612is_multicastEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0) local_unnamed_addr #31 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 4, !tbaa !108
  %i.b = icmp eq i8 %i.a, -1
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN5boost4asio2ipeqERKNS1_7addressES4_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1) local_unnamed_addr #31 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !486    ; 2 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !486
  %.not = icmp eq i32 %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %i.a, 1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i128, ptr %i.d, align 4
  %i.g = load i128, ptr %i.e, align 4
  %i.h = icmp ne i128 %i.f, %i.g
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp eq i32 %i.l, %i.n
  %i.p = select i1 %i.j, i1 %i.o, i1 false
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i32, ptr %i.q, align 4, !tbaa !487
  %i.t = load i32, ptr %i.r, align 4, !tbaa !487
  %i.u = icmp eq i32 %i.s, %i.t
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i1 [ %i.u, %bb.d ], [ %i.p, %bb.c ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN5boost4asio2ipeqERKNS1_10address_v6ES4_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %1) local_unnamed_addr #31 {
bb.a:
  %i.a = load i128, ptr %0, align 4
  %i.b = load i128, ptr %1, align 4
  %i.c = icmp ne i128 %i.a, %i.b
  %i.d = zext i1 %i.c to i32
  %i.e = icmp eq i32 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.g, %i.i
  %i.k = select i1 %i.e, i1 %i.j, i1 false
  ret i1 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN5boost4asio2ipltERKNS1_7addressES4_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1) local_unnamed_addr #31 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !486    ; 3 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !486    ; 2 uses
  %i.c = icmp slt i32 %i.a, %i.b
  br i1 %i.c, label %_ZN5boost4asio2ipltERKNS1_10address_v6ES4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i32 %i.a, %i.b
  br i1 %i.d, label %_ZN5boost4asio2ipltERKNS1_10address_v6ES4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i32 %i.a, 1
  br i1 %i.e, label %loadbb, label %bb.f

loadbb:                                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.f, align 4
  %i.i = load i64, ptr %i.g, align 4
  %i.j = tail call i64 @llvm.bswap.i64(i64 %i.h)  ; 2 uses
  %i.k = tail call i64 @llvm.bswap.i64(i64 %i.i)  ; 2 uses
  %i.l = icmp eq i64 %i.j, %i.k
  br i1 %i.l, label %loadbb15, label %res_block

res_block:                                        ; preds = %loadbb15, %loadbb
  %phi.src1 = phi i64 [ %i.j, %loadbb ], [ %i.s, %loadbb15 ]
  %phi.src2 = phi i64 [ %i.k, %loadbb ], [ %i.t, %loadbb15 ]
  %i.m = icmp ult i64 %phi.src1, %phi.src2
  %i.n = select i1 %i.m, i32 -1, i32 1
  br label %endblock

loadbb15:                                         ; preds = %loadbb
  %i.o = getelementptr i8, ptr %i.f, i64 8
  %i.p = getelementptr i8, ptr %i.g, i64 8
  %i.q = load i64, ptr %i.o, align 4
  %i.r = load i64, ptr %i.p, align 4
  %i.s = tail call i64 @llvm.bswap.i64(i64 %i.q)  ; 2 uses
  %i.t = tail call i64 @llvm.bswap.i64(i64 %i.r)  ; 2 uses
  %i.u = icmp eq i64 %i.s, %i.t
  br i1 %i.u, label %endblock, label %res_block

endblock:                                         ; preds = %res_block, %loadbb15
  %phi.res = phi i32 [ 0, %loadbb15 ], [ %i.n, %res_block ] ; 2 uses
  %i.v = icmp slt i32 %phi.res, 0
  br i1 %i.v, label %_ZN5boost4asio2ipltERKNS1_10address_v6ES4_.exit, label %bb.d

bb.d:                                             ; preds = %endblock
  %.not.i = icmp eq i32 %phi.res, 0
  br i1 %.not.i, label %bb.e, label %_ZN5boost4asio2ipltERKNS1_10address_v6ES4_.exit

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i32, ptr %i.w, align 4, !tbaa !489
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i32, ptr %i.y, align 4, !tbaa !489
  %i.aa = icmp ult i32 %i.x, %i.z
  br label %_ZN5boost4asio2ipltERKNS1_10address_v6ES4_.exit

bb.f:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !487
  %i.ae = tail call noundef i32 @llvm.bswap.i32(i32 %i.ad)
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !487
  %i.ag = tail call noundef i32 @llvm.bswap.i32(i32 %i.af)
  %i.ah = icmp ult i32 %i.ae, %i.ag
  br label %_ZN5boost4asio2ipltERKNS1_10address_v6ES4_.exit

_ZN5boost4asio2ipltERKNS1_10address_v6ES4_.exit:  ; preds = %bb.e, %bb.d, %endblock, %bb.b, %bb.a, %bb.f
  %.0 = phi i1 [ %i.ah, %bb.f ], [ true, %bb.a ], [ false, %bb.b ], [ %i.aa, %bb.e ], [ true, %endblock ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN5boost4asio2ipltERKNS1_10address_v6ES4_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %1) local_unnamed_addr #31 {
loadbb:
  %i.a = load i64, ptr %0, align 4
  %i.b = load i64, ptr %1, align 4
  %i.c = tail call i64 @llvm.bswap.i64(i64 %i.a)  ; 2 uses
  %i.d = tail call i64 @llvm.bswap.i64(i64 %i.b)  ; 2 uses
  %i.e = icmp eq i64 %i.c, %i.d
  br i1 %i.e, label %loadbb8, label %res_block

res_block:                                        ; preds = %loadbb8, %loadbb
  %phi.src1 = phi i64 [ %i.c, %loadbb ], [ %i.l, %loadbb8 ]
end_hunk_0
begin_hunk_1_@_ZN5boost4asio2ip15make_address_v4ESt17basic_string_viewIcSt11char_traitsIcEERNS_6system10error_codeE:bb.a

._crit_edge.i.i.i.i:                              ; preds = %.noexc1, %bb.c
  %i.h = phi ptr [ %i.f, %.noexc1 ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %1, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.i = load i8, ptr %2, align 1, !tbaa !108
  store i8 %i.i, ptr %i.h, align 1, !tbaa !108
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %2, i64 %1, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !158  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !149
  %i.l = load ptr, ptr %5, align 8, !tbaa !336
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  call void @llvm.experimental.noalias.scope.decl(metadata !1332)
  %i.n = load ptr, ptr %5, align 8, !tbaa !336, !noalias !1332
  call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49, !noalias !1334
  %i.o = tail call ptr @__errno_location() #52    ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !152, !noalias !1334
  %i.p = call i32 @inet_pton(i32 noundef 2, ptr noundef %i.n, ptr noundef nonnull %4) #49, !noalias !1334
  %i.q = load i32, ptr %i.o, align 4, !tbaa !152, !noalias !1334 ; 3 uses
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !157, !noalias !1334
  %i.s = and i64 %i.r, -2
  %switch.i.i.i.i.i.i = icmp eq i64 %i.s, -5572340897628102704
  br i1 %switch.i.i.i.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = icmp ne i32 %i.q, 0
  br label %_ZN5boost4asio6detail10socket_ops14get_last_errorERNS_6system10error_codeEb.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.u = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !91, !noalias !1334
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1334
  %i.x = call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef %i.q) #49, !noalias !1334, !inline_history !57
  br label %_ZN5boost4asio6detail10socket_ops14get_last_errorERNS_6system10error_codeEb.exit.i.i.i

_ZN5boost4asio6detail10socket_ops14get_last_errorERNS_6system10error_codeEb.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i1 [ %i.t, %bb.g ], [ %i.x, %bb.h ]
  %i.y = select i1 %.0.i.i.i.i.i.i, i64 3, i64 2  ; 2 uses
  store i32 %i.q, ptr %3, align 8, !noalias !1334
  %.sroa.5.0..sroa_idx.i47.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx.i47.i.i.i, align 4, !noalias !1334
  %.sroa.52.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.52.0..sroa_idx.i.i.i.i, align 8, !tbaa !108, !noalias !1334
  %.sroa.6.0..sroa_idx.i48.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 %i.y, ptr %.sroa.6.0..sroa_idx.i48.i.i.i, align 8, !tbaa !158, !noalias !1334
  %i.z = icmp slt i32 %i.p, 1
  br i1 %i.z, label %bb.i, label %_ZN5boost4asio6detail10socket_ops9inet_ptonEiPKcPvPmRNS_6system10error_codeE.exit.i.i

bb.i:                                             ; preds = %_ZN5boost4asio6detail10socket_ops14get_last_errorERNS_6system10error_codeEb.exit.i.i.i
  %i.aa = and i64 %i.y, 1
  %.not.i.i.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.i.i.i, label %_ZN5boost4asio2ip15make_address_v4ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6system10error_codeE.exit

_ZNK5boost6system10error_codecvbEv.exit.i.i.i:    ; preds = %bb.i
  %i.ab = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !157, !noalias !1335
  %i.ac = and i64 %i.ab, -2
  %switch.i.i.i.i49.i.i.i = icmp eq i64 %i.ac, -5572340897628102704
  br i1 %switch.i.i.i.i49.i.i.i, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit53.thread.i.i.i, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit53.i.i.i

_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit53.i.i.i: ; preds = %_ZNK5boost6system10error_codecvbEv.exit.i.i.i
  %i.ad = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !91, !noalias !1335
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !1335
  %i.ag = call noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 22) #49, !noalias !1335, !inline_history !58
  br i1 %i.ag, label %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit53.thread.i.i.i, label %bb.j

_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit53.thread.i.i.i: ; preds = %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit53.i.i.i, %_ZNK5boost6system10error_codecvbEv.exit.i.i.i
  br label %bb.j

bb.j:                                             ; preds = %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit53.thread.i.i.i, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit53.i.i.i
  %i.ah = phi i64 [ 3, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit53.thread.i.i.i ], [ 2, %_ZN5boost6system10error_codeaSINS_4asio5error12basic_errorsEEERNSt9enable_ifIXsr18is_error_code_enumIT_EE5valueES1_E4typeES7_.exit53.i.i.i ]
  store i64 22, ptr %3, align 8, !noalias !1334
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.52.0..sroa_idx.i.i.i.i, align 8, !tbaa !108, !noalias !1334
  store i64 %i.ah, ptr %.sroa.6.0..sroa_idx.i48.i.i.i, align 8, !tbaa !158, !noalias !1334
  br label %_ZN5boost4asio2ip15make_address_v4ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6system10error_codeE.exit

_ZN5boost4asio6detail10socket_ops9inet_ptonEiPKcPvPmRNS_6system10error_codeE.exit.i.i: ; preds = %_ZN5boost4asio6detail10socket_ops14get_last_errorERNS_6system10error_codeEb.exit.i.i.i
  %i.ai = load i32, ptr %4, align 4, !noalias !1334
  br label %_ZN5boost4asio2ip15make_address_v4ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6system10error_codeE.exit

_ZN5boost4asio2ip15make_address_v4ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6system10error_codeE.exit: ; preds = %bb.i, %bb.j, %_ZN5boost4asio6detail10socket_ops9inet_ptonEiPKcPvPmRNS_6system10error_codeE.exit.i.i
  %storemerge.i.i = phi i32 [ %i.ai, %_ZN5boost4asio6detail10socket_ops9inet_ptonEiPKcPvPmRNS_6system10error_codeE.exit.i.i ], [ 0, %bb.j ], [ 0, %bb.i ]
  store i32 %storemerge.i.i, ptr %0, align 4, !alias.scope !1334
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49, !noalias !1334
  %i.aj = load ptr, ptr %5, align 8, !tbaa !336   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.b
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5boost4asio2ip15make_address_v4ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6system10error_codeE.exit
  %i.al = load i64, ptr %i.b, align 8, !tbaa !108
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5boost4asio2ip15make_address_v4ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6system10error_codeE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  ret void

bb.k:                                             ; preds = %.noexc.i.i.i, %bb.b
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #48
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN5boost4asio2ip10address_v6C2Ev(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(20) initializes((0, 20)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN5boost4asio2ip10address_v6C2ERKSt5arrayIhLm16EEj(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(20) initializes((0, 20)) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(16) %1, i32 noundef %2) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %i.a, align 4, !tbaa !489
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN5boost4asio2ip10address_v6C2ERKS2_(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(20) initializes((0, 20)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %1) unnamed_addr #18 align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !488
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 4, !tbaa !489
  store i32 %i.c, ptr %i.a, align 4, !tbaa !489
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN5boost4asio2ip10address_v6C2EOS2_(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(20) initializes((0, 20)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %1) unnamed_addr #18 align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !488
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 4, !tbaa !489
  store i32 %i.c, ptr %i.a, align 4, !tbaa !489
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i64 } @_ZNK5boost4asio2ip10address_v68to_bytesEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0) local_unnamed_addr #31 align 2 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.2.0.copyload, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5boost4asio2ip10address_v613is_link_localEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0) local_unnamed_addr #31 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 4, !tbaa !108
  %i.b = icmp eq i8 %i.a, -2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp slt i8 %i.d, -64
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5boost4asio2ip10address_v613is_site_localEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0) local_unnamed_addr #31 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 4, !tbaa !108
  %i.b = icmp eq i8 %i.a, -2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp ugt i8 %i.d, -65
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5boost4asio2ip10address_v612is_v4_mappedEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0) local_unnamed_addr #31 align 2 {
bb.a:
  %i.a = load <8 x i8>, ptr %0, align 4
  %.fr = freeze <8 x i8> %i.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 4
  %.fr34 = freeze i8 %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.e = load i8, ptr %i.d, align 1
  %.fr32 = freeze i8 %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.g = load i8, ptr %i.f, align 2
  %i.h = icmp eq i8 %i.g, -1
  %.fr.scalar = bitcast <8 x i8> %.fr to i64
  %i.i = icmp eq i64 %.fr.scalar, 0
  %1 = or i8 %.fr32, %.fr34
  %2 = icmp eq i8 %1, 0
  %3 = and i1 %i.i, %2
  %op.rdx31 = select i1 %3, i1 %i.h, i1 false
  br i1 %op.rdx31, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.k = load i8, ptr %i.j, align 1, !tbaa !108
  %i.l = icmp eq i8 %i.k, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = phi i1 [ false, %bb.a ], [ %i.l, %bb.b ]
  ret i1 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5boost4asio2ip10address_v619is_multicast_globalEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0) local_unnamed_addr #31 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 4, !tbaa !108
  %i.b = icmp eq i8 %i.a, -1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 15
  %i.f = icmp eq i8 %i.e, 14
  %i.g = select i1 %i.b, i1 %i.f, i1 false
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5boost4asio2ip10address_v623is_multicast_link_localEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0) local_unnamed_addr #31 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 4, !tbaa !108
  %i.b = icmp eq i8 %i.a, -1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 15
  %i.f = icmp eq i8 %i.e, 2
  %i.g = select i1 %i.b, i1 %i.f, i1 false
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5boost4asio2ip10address_v623is_multicast_node_localEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0) local_unnamed_addr #31 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 4, !tbaa !108
  %i.b = icmp eq i8 %i.a, -1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 15
  %i.f = icmp eq i8 %i.e, 1
  %i.g = select i1 %i.b, i1 %i.f, i1 false
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5boost4asio2ip10address_v622is_multicast_org_localEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0) local_unnamed_addr #31 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 4, !tbaa !108
  %i.b = icmp eq i8 %i.a, -1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 15
  %i.f = icmp eq i8 %i.e, 8
  %i.g = select i1 %i.b, i1 %i.f, i1 false
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5boost4asio2ip10address_v623is_multicast_site_localEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0) local_unnamed_addr #31 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 4, !tbaa !108
  %i.b = icmp eq i8 %i.a, -1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 15
  %i.f = icmp eq i8 %i.e, 5
  %i.g = select i1 %i.b, i1 %i.f, i1 false
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN5boost4asio2ip10address_v68loopbackEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.boost::asio::ip::address_v6") align 4 captures(none) initializes((0, 20)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 1, ptr %i.a, align 1, !tbaa !108
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5boost4asio2ip15make_address_v6EPKc(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.boost::asio::ip::address_v6") align 4 captures(none) initializes((0, 20)) %0, ptr noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.39", align 1    ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.boost::system::error_code", align 8 ; 6 uses
  %4 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49, !noalias !1338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49, !noalias !1338
  store i64 0, ptr %i.a, align 8, !tbaa !158, !noalias !1338
  %i.b = call noundef i32 @_ZN5boost4asio6detail10socket_ops9inet_ptonEiPKcPvPmRNS_6system10error_codeE(i32 noundef 10, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3), !noalias !1338
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, i8 0, i64 20, i1 false), !alias.scope !1338
  br label %_ZN5boost4asio2ip15make_address_v6EPKcRNS_6system10error_codeE.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !tbaa !158, !noalias !1338
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.e, ptr %i.f, align 4, !tbaa !489, !alias.scope !1338
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull readonly align 1 dereferenceable(16) %2, i64 16, i1 false)
  br label %_ZN5boost4asio2ip15make_address_v6EPKcRNS_6system10error_codeE.exit

_ZN5boost4asio2ip15make_address_v6EPKcRNS_6system10error_codeE.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49, !noalias !1338
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49, !noalias !1338
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  store ptr @.str.75, ptr %4, align 8, !tbaa !177
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.76, ptr %i.g, align 8, !tbaa !178
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 213, ptr %i.h, align 8, !tbaa !179
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 3, ptr %i.i, align 4, !tbaa !180
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !160  ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i, label %_ZN5boost4asio6detail11throw_errorERKNS_6system10error_codeERKNS_15source_locationE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost4asio2ip15make_address_v6EPKcRNS_6system10error_codeE.exit
  %i.m = icmp ne i64 %i.k, 1
  %i.n = load i32, ptr %3, align 8
  %i.o = icmp ne i32 %i.n, 0
  %or.cond.i = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread.i, label %_ZN5boost4asio6detail11throw_errorERKNS_6system10error_codeERKNS_15source_locationE.exit

_ZNK5boost6system10error_codecvbEv.exit.thread.i: ; preds = %bb.d
  call void @_ZN5boost4asio6detail14do_throw_errorERKNS_6system10error_codeERKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  unreachable

_ZN5boost4asio6detail11throw_errorERKNS_6system10error_codeERKNS_15source_locationE.exit: ; preds = %_ZN5boost4asio2ip15make_address_v6EPKcRNS_6system10error_codeE.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5boost4asio2ip15make_address_v6ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.boost::asio::ip::address_v6") align 4 captures(none) initializes((0, 20)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.39", align 1    ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.boost::system::error_code", align 8 ; 6 uses
  %4 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !336
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49, !noalias !1343
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1344)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49, !noalias !1345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49, !noalias !1345
  store i64 0, ptr %i.a, align 8, !tbaa !158, !noalias !1345
  %i.c = call noundef i32 @_ZN5boost4asio6detail10socket_ops9inet_ptonEiPKcPvPmRNS_6system10error_codeE(i32 noundef 10, ptr noundef %i.b, ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3), !noalias !1345
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, i8 0, i64 20, i1 false), !alias.scope !1345
  br label %_ZN5boost4asio2ip15make_address_v6EPKcRNS_6system10error_codeE.exit.i

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !tbaa !158, !noalias !1345
  %i.f = trunc i64 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.f, ptr %i.g, align 4, !tbaa !489, !alias.scope !1345
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull readonly align 1 dereferenceable(16) %2, i64 16, i1 false)
  br label %_ZN5boost4asio2ip15make_address_v6EPKcRNS_6system10error_codeE.exit.i

_ZN5boost4asio2ip15make_address_v6EPKcRNS_6system10error_codeE.exit.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49, !noalias !1345
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49, !noalias !1345
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49, !noalias !1343
  store ptr @.str.75, ptr %4, align 8, !tbaa !177, !noalias !1343
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.76, ptr %i.h, align 8, !tbaa !178, !noalias !1343
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 213, ptr %i.i, align 8, !tbaa !179, !noalias !1343
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 3, ptr %i.j, align 4, !tbaa !180, !noalias !1343
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !160, !noalias !1343 ; 2 uses
  %i.m = and i64 %i.l, 1
  %.not.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost4asio2ip15make_address_v6EPKc.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost4asio2ip15make_address_v6EPKcRNS_6system10error_codeE.exit.i
  %i.n = icmp ne i64 %i.l, 1
  %i.o = load i32, ptr %3, align 8, !noalias !1343
end_hunk_1
