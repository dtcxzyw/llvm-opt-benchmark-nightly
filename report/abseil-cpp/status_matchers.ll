Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/status_matchers?download=true
inline.NumInlined: 209
inline.NumDeleted: 114
begin_hunk_0_@_ZNK12absl_testing12lts_2026052615status_internal25StatusIsMatcherCommonImpl15MatchAndExplainERKN4absl12lts_202605266StatusEPN7testing19MatchResultListenerE:bb.a
  %11 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !54
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %6, align 8, !tbaa !22
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.f = load i64, ptr %1, align 8, !tbaa !56     ; 3 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = lshr i64 %i.f, 2
  %i.i = trunc i64 %i.h to i32
  br label %_ZNK4absl12lts_202605266Status8raw_codeEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %i.f to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !73
  br label %_ZNK4absl12lts_202605266Status8raw_codeEv.exit.i

_ZNK4absl12lts_202605266Status8raw_codeEv.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.i, %bb.b ], [ %i.l, %bb.c ]
  %i.m = invoke noundef i32 @_ZN4absl12lts_2026052615status_internal14MapToLocalCodeEi(i32 noundef %.0.i.i)
          to label %_ZNK4absl12lts_202605266Status4codeEv.exit unwind label %bb.s

_ZNK4absl12lts_202605266Status4codeEv.exit:       ; preds = %_ZNK4absl12lts_202605266Status8raw_codeEv.exit.i
  store i32 %i.m, ptr %7, align 4, !tbaa !75
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !13
  %i.p = icmp ne ptr %i.o, null
  %i.q = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.p)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %_ZNK4absl12lts_202605266Status4codeEv.exit
  br i1 %i.q, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef 3, ptr noundef nonnull @.str.11, i32 noundef 234)
          to label %.noexc53 unwind label %bb.s

.noexc53:                                         ; preds = %bb.d
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.12, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc53
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.f

bb.e:                                             ; preds = %.noexc53
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %.body

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !13
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !76
  %i.v = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull %6)
          to label %_ZNK7testing8internal11MatcherBaseIN12absl_testing12lts_2026052615status_internal10StatusCodeEE15MatchAndExplainERKS5_PNS_19MatchResultListenerE.exit unwind label %bb.s, !inline_history !36

_ZNK7testing8internal11MatcherBaseIN12absl_testing12lts_2026052615status_internal10StatusCodeEE15MatchAndExplainERKS5_PNS_19MatchResultListenerE.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br i1 %i.v, label %bb.v, label %bb.g

bb.g:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIN12absl_testing12lts_2026052615status_internal10StatusCodeEE15MatchAndExplainERKS5_PNS_19MatchResultListenerE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.w, ptr %9, align 8, !tbaa !80, !alias.scope !81
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 0, ptr %i.x, align 8, !tbaa !82, !alias.scope !81
  store i8 0, ptr %i.w, align 8, !tbaa !27, !alias.scope !81
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !86, !noalias !81 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.z, null
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !81 ; 2 uses
  %i.ac = icmp ugt ptr %i.z, %i.ab
  %.08.i.i.i.i = select i1 %i.ac, ptr %i.z, ptr %i.ab ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !87, !noalias !81 ; 2 uses
  %i.af = ptrtoint ptr %.08.i.i.i.i to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.ae, i64 noundef %i.ah)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %9, align 8, !tbaa !28, !alias.scope !81 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.w
  br i1 %i.al, label %.body55, label %.body55.sink.split

bb.j:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 112
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.am)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit unwind label %bb.i

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit: ; preds = %bb.j, %bb.h
  %i.an = load i64, ptr %i.x, align 8, !tbaa !82
  %.not134 = icmp eq i64 %i.an, 0                 ; 4 uses
  br i1 %.not134, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  %i.ao = load i64, ptr %1, align 8, !tbaa !56
  %.not = icmp eq i64 %i.ao, 1                    ; 3 uses
  %i.ap = select i1 %.not, ptr @.str.4, ptr @.str.5
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.aq, ptr %8, align 8, !tbaa !80
  %i.ar = select i1 %.not, i64 11, i64 26         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !88
  br i1 %.not, label %._crit_edge.i.i, label %.noexc.i

.noexc.i:                                         ; preds = %bb.k
  %i.as = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc57 unwind label %.body65.thread117 ; 2 uses

.noexc57:                                         ; preds = %.noexc.i
  store ptr %i.as, ptr %8, align 8, !tbaa !28
  %i.at = load i64, ptr %i.b, align 8, !tbaa !88
  store i64 %i.at, ptr %i.aq, align 8, !tbaa !27
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.k, %.noexc57
  %i.au = phi ptr [ %i.as, %.noexc57 ], [ %i.aq, %bb.k ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.au, ptr noundef nonnull align 1 dereferenceable(11) %i.ap, i64 %i.ar, i1 false)
  %i.av = load i64, ptr %i.b, align 8, !tbaa !88  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !82
  %i.ax = load ptr, ptr %8, align 8, !tbaa !28
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store i8 0, ptr %i.ay, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.q

bb.l:                                             ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.az, ptr %10, align 8, !tbaa !80, !alias.scope !92
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.ba, align 8, !tbaa !82, !alias.scope !92
  store i8 0, ptr %i.az, align 8, !tbaa !27, !alias.scope !92
  %i.bb = load ptr, ptr %i.y, align 8, !tbaa !86, !noalias !92 ; 3 uses
  %.not.i.not.i.i.i58 = icmp eq ptr %i.bb, null
  %i.bc = load ptr, ptr %i.aa, align 8, !noalias !92 ; 2 uses
  %i.bd = icmp ugt ptr %i.bb, %i.bc
  %.08.i.i.i.i59 = select i1 %i.bd, ptr %i.bb, ptr %i.bc ; 2 uses
  %.not5.i.i.i60 = icmp eq ptr %.08.i.i.i.i59, null
  %.not.i.i.i61 = select i1 %.not.i.not.i.i.i58, i1 true, i1 %.not5.i.i.i60
  br i1 %.not.i.i.i61, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !87, !noalias !92 ; 2 uses
  %i.bg = ptrtoint ptr %.08.i.i.i.i59 to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef %i.bf, i64 noundef %i.bi)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit67 unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load ptr, ptr %10, align 8, !tbaa !28, !alias.scope !92 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.az
  br i1 %i.bm, label %.split.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i62: ; preds = %bb.n
  %i.bn = load i64, ptr %i.az, align 8, !tbaa !27, !alias.scope !92
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #10
  br label %.split.thread

bb.o:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 112
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.bp)
          to label %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit67 unwind label %bb.n

_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit67: ; preds = %bb.o, %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.6, i64 noundef 24)
          to label %.noexc68 unwind label %.thread, !noalias !93 ; 6 uses

.noexc68:                                         ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit67
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.br, ptr %8, align 8, !tbaa !80, !alias.scope !93
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !28 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 5 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.p:                                             ; preds = %.noexc68
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !82 ; 3 uses
  %i.bx = icmp ult i64 %i.bw, 16
  call void @llvm.assume(i1 %i.bx)
  %i.by = add nuw nsw i64 %i.bw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.br, ptr noundef nonnull align 8 dereferenceable(1) %i.bt, i64 %i.by, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc68
  store ptr %i.bs, ptr %8, align 8, !tbaa !28, !alias.scope !93
  %i.bz = load i64, ptr %i.bt, align 8, !tbaa !27
  store i64 %i.bz, ptr %i.br, align 8, !tbaa !27, !alias.scope !93
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !82
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ca = phi i64 [ %i.bw, %bb.p ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.ca, ptr %i.cc, align 8, !tbaa !82, !alias.scope !93
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !28
  store i64 0, ptr %i.cb, align 8, !tbaa !82
  store i8 0, ptr %i.bt, align 8, !tbaa !27
  br label %bb.q

bb.q:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit, %._crit_edge.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !54 ; 2 uses
  %.not.i = icmp eq ptr %i.ce, null
  br i1 %.not.i, label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = load ptr, ptr %8, align 8, !tbaa !28
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !82
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef %i.cf, i64 noundef %i.ch)
          to label %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.t ; 0 uses

_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.q, %bb.r
  %i.cj = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !27
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing19MatchResultListenerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  br i1 %.not134, label %.critedge49, label %.critedge

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.co = load ptr, ptr %10, align 8, !tbaa !28   ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %.critedge
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !27
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %.critedge49

.critedge49:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.ct = load ptr, ptr %9, align 8, !tbaa !28    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.w
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %.critedge49
  %i.cv = load i64, ptr %i.w, align 8, !tbaa !27
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %.critedge49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %_ZN7testing19MatchResultListenerlsIA29_cEERS0_RKT_.exit

bb.s:                                             ; preds = %bb.f, %bb.d, %_ZNK4absl12lts_202605266Status4codeEv.exit, %_ZNK4absl12lts_202605266Status8raw_codeEv.exit.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.cx, %bb.s ], [ %i.s, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.ak

.body65.thread117:                                ; preds = %.noexc.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.critedge51

bb.t:                                             ; preds = %bb.r
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.da = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.t
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !27
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #10
  br i1 %.not134, label %.critedge51, label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.t
  br i1 %.not134, label %.critedge51, label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.df = load ptr, ptr %10, align 8, !tbaa !28   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

.thread:                                          ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit67
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = load ptr, ptr %10, align 8, !tbaa !28   ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.az
  br i1 %i.dk, label %.split.thread129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.thread: ; preds = %.thread
  %i.dl = load i64, ptr %i.az, align 8, !tbaa !27
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %.critedge51

.split.thread129:                                 ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %.critedge51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.u
  %i.dn = load i64, ptr %i.dg, align 8, !tbaa !27
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.do) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %.critedge51

.split.thread:                                    ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %.critedge51

.split:                                           ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %.critedge51

.critedge51:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.thread, %.split.thread129, %.split.thread, %.body65.thread117
  %.pn40.pn.pn.pn = phi { ptr, i32 } [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80 ], [ %i.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.thread ], [ %i.di, %.split.thread129 ], [ %i.cy, %.body65.thread117 ], [ %i.bk, %.split.thread ], [ %i.cz, %.split ], [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ], [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ] ; 2 uses
  %i.dp = load ptr, ptr %9, align 8, !tbaa !28    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.w
  br i1 %i.dq, label %.body55, label %.body55.sink.split

.body55.sink.split:                               ; preds = %.critedge51, %bb.i
  %.sink = phi ptr [ %i.ak, %bb.i ], [ %i.dp, %.critedge51 ]
  %.pn40.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.aj, %bb.i ], [ %.pn40.pn.pn.pn, %.critedge51 ]
  %i.dr = load i64, ptr %i.w, align 8, !tbaa !27
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ds) #10
  br label %.body55

.body55:                                          ; preds = %.body55.sink.split, %.critedge51, %bb.i
  %.pn40.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aj, %bb.i ], [ %.pn40.pn.pn.pn, %.critedge51 ], [ %.pn40.pn.pn.pn.pn.ph, %.body55.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %bb.ak

bb.v:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIN12absl_testing12lts_2026052615status_internal10StatusCodeEE15MatchAndExplainERKS5_PNS_19MatchResultListenerE.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  %i.du = load i64, ptr %1, align 8, !tbaa !56    ; 3 uses
  %i.dv = trunc i64 %i.du to i1
  br i1 %i.dv, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dw = inttoptr i64 %i.du to ptr               ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !28
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !82
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.eb = and i64 %i.du, 2
  %.not.i86 = icmp eq i64 %i.eb, 0                ; 2 uses
  %spec.select.i = select i1 %.not.i86, i64 0, i64 27
  %spec.select1.i = select i1 %.not.i86, ptr null, ptr @_ZN4absl12lts_202605266Status16kMovedFromStringE
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.ea, %bb.w ], [ %spec.select.i, %bb.x ] ; 5 uses
  %.sroa.4.0.i = phi ptr [ %i.dy, %bb.w ], [ %spec.select1.i, %bb.x ] ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.ec, ptr %12, align 8, !tbaa !80
  %i.ed = icmp eq ptr %.sroa.4.0.i, null
  %i.ee = icmp ne i64 %.sroa.0.0.i, 0
  %or.cond.i.i.i = and i1 %i.ee, %i.ed
  br i1 %or.cond.i.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #11
          to label %.noexc87 unwind label %bb.ah

.noexc87:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 %.sroa.0.0.i, ptr %i.a, align 8, !tbaa !88
  %i.ef = icmp ugt i64 %.sroa.0.0.i, 15
  br i1 %i.ef, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.aa
  %i.eg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc88 unwind label %bb.ah  ; 2 uses

.noexc88:                                         ; preds = %.noexc.i.i.i
  store ptr %i.eg, ptr %12, align 8, !tbaa !28
  %i.eh = load i64, ptr %i.a, align 8, !tbaa !88
  store i64 %i.eh, ptr %i.ec, align 8, !tbaa !27
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc88, %bb.aa
  %i.ei = phi ptr [ %i.eg, %.noexc88 ], [ %i.ec, %bb.aa ] ; 2 uses
  switch i64 %.sroa.0.0.i, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %bb.ad
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ej = load i8, ptr %.sroa.4.0.i, align 1, !tbaa !27
  store i8 %i.ej, ptr %i.ei, align 1, !tbaa !27
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ei, ptr align 1 %.sroa.4.0.i, i64 %.sroa.0.0.i, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge.i.i.i.i
  %i.ek = load i64, ptr %i.a, align 8, !tbaa !88  ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 %i.ek, ptr %i.el, align 8, !tbaa !82
  %i.em = load ptr, ptr %12, align 8, !tbaa !28
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ek
  store i8 0, ptr %i.en, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.eo = load ptr, ptr %12, align 8, !tbaa !28
  %i.ep = load i64, ptr %i.el, align 8, !tbaa !82
  store i64 %i.ep, ptr %11, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.eo, ptr %i.eq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.er, align 8, !tbaa !54
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing8internal24DummyMatchResultListenerE, i64 16), ptr %4, align 8, !tbaa !22
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !18
  %i.eu = icmp ne ptr %i.et, null
  %i.ev = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.eu)
          to label %.noexc92 unwind label %bb.ai

.noexc92:                                         ; preds = %bb.ad
  br i1 %i.ev, label %_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE15MatchAndExplainERKS5_PNS_19MatchResultListenerE.exit.i, label %.noexc3.i

.noexc3.i:                                        ; preds = %.noexc92
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.11, i32 noundef 234)
          to label %.noexc93 unwind label %bb.ai

.noexc93:                                         ; preds = %.noexc3.i
  %i.ew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.12, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %.body.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc93
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE15MatchAndExplainERKS5_PNS_19MatchResultListenerE.exit.i

.body.i:                                          ; preds = %.noexc93
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %.body94

_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE15MatchAndExplainERKS5_PNS_19MatchResultListenerE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc92
  %i.ey = load ptr, ptr %i.es, align 8, !tbaa !18
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !94
  %i.fa = invoke noundef zeroext i1 %i.ez(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull %4)
          to label %bb.ae unwind label %bb.ai, !inline_history !51

bb.ae:                                            ; preds = %_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE15MatchAndExplainERKS5_PNS_19MatchResultListenerE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.fb = load ptr, ptr %12, align 8, !tbaa !28   ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.ec
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %bb.ae
  %i.fd = load i64, ptr %i.ec, align 8, !tbaa !27
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  br i1 %i.fa, label %_ZN7testing19MatchResultListenerlsIA29_cEERS0_RKT_.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !54 ; 2 uses
  %.not.i100 = icmp eq ptr %i.fg, null
  br i1 %.not.i100, label %_ZN7testing19MatchResultListenerlsIA29_cEERS0_RKT_.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fg, ptr noundef nonnull @.str.7, i64 noundef 28)
          to label %_ZN7testing19MatchResultListenerlsIA29_cEERS0_RKT_.exit unwind label %bb.aj ; 0 uses

bb.ah:                                            ; preds = %.noexc.i.i.i, %bb.z
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

bb.ai:                                            ; preds = %_ZNK7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE15MatchAndExplainERKS5_PNS_19MatchResultListenerE.exit.i, %.noexc3.i, %bb.ad
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %.body94

.body94:                                          ; preds = %.body.i, %bb.ai
  %eh.lpad-body95 = phi { ptr, i32 } [ %i.fj, %bb.ai ], [ %i.ex, %.body.i ] ; 2 uses
  %i.fk = load ptr, ptr %12, align 8, !tbaa !28   ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.ec
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %.body94
  %i.fm = load i64, ptr %i.ec, align 8, !tbaa !27
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fn) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %.body94, %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body95, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %i.fi, %bb.ah ], [ %eh.lpad-body95, %.body94 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

_ZN7testing19MatchResultListenerlsIA29_cEERS0_RKT_.exit: ; preds = %bb.af, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %.037 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ false, %bb.ag ], [ false, %bb.af ]
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %6, align 8, !tbaa !22
  %i.fp = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.fp, ptr %i.c, align 8, !tbaa !22
  %i.fq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.fr = getelementptr i8, ptr %i.fp, i64 -24
  %i.fs = load i64, ptr %i.fr, align 8
  %i.ft = getelementptr inbounds i8, ptr %i.c, i64 %i.fs
  store ptr %i.fq, ptr %i.ft, align 8, !tbaa !22
  %i.fu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.fu, ptr %i.d, align 8, !tbaa !22
  %i.fv = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.fv, align 8, !tbaa !22
  %i.fw = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !28 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZN7testing25StringMatchResultListenerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN7testing19MatchResultListenerlsIA29_cEERS0_RKT_.exit
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !27
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #10, !inline_history !29
  br label %_ZN7testing25StringMatchResultListenerD2Ev.exit

_ZN7testing25StringMatchResultListenerD2Ev.exit:  ; preds = %_ZN7testing19MatchResultListenerlsIA29_cEERS0_RKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.fv, align 8, !tbaa !22
  %i.gc = getelementptr inbounds nuw i8, ptr %6, i64 96
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gc) #9, !inline_history !29
  %i.gd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.gd, ptr %i.c, align 8, !tbaa !22
  %i.ge = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.gf = getelementptr i8, ptr %i.gd, i64 -24
  %i.gg = load i64, ptr %i.gf, align 8
  %i.gh = getelementptr inbounds i8, ptr %i.c, i64 %i.gg
  store ptr %i.ge, ptr %i.gh, align 8, !tbaa !22
  %i.gi = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 0, ptr %i.gi, align 8, !tbaa !31
  %i.gj = getelementptr inbounds nuw i8, ptr %6, i64 144
end_hunk_0
begin_hunk_1_@_ZN7testing25StringMatchResultListenerD2Ev:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.n = load i64, ptr %i.l, align 8, !tbaa !27
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #10
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.i, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #9
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.q, ptr %i.a, align 8, !tbaa !22
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.s = getelementptr i8, ptr %i.q, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.a, i64 %i.t
  store ptr %i.r, ptr %i.u, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.v, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.w) #9
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing25StringMatchResultListenerD0Ev(ptr noundef nonnull align 8 dereferenceable(408) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !22
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !22
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.g, ptr %i.h, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.i, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN7testing25StringMatchResultListenerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.n = load i64, ptr %i.l, align 8, !tbaa !27
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #10, !inline_history !29
  br label %_ZN7testing25StringMatchResultListenerD2Ev.exit

_ZN7testing25StringMatchResultListenerD2Ev.exit:  ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.i, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #9, !inline_history !29
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.q, ptr %i.a, align 8, !tbaa !22
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.s = getelementptr i8, ptr %i.q, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.a, i64 %i.t
  store ptr %i.r, ptr %i.u, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.v, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.w) #9, !inline_history !29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 408) #10
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef i32 @_ZN4absl12lts_2026052615status_internal14MapToLocalCodeEi(i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #6

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, ptr noundef, i32 noundef) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing19MatchResultListenerD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal24DummyMatchResultListenerD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nounwind }
attributes #10 = { builtin nounwind }
attributes #11 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"_ZTSN7testing25MatcherDescriberInterfaceE"}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTSN7testing8internal11MatcherBaseIN12absl_testing12lts_2026052615status_internal10StatusCodeEE6VTableE", !10, i64 0}
!12 = !{!"_ZTSN7testing8internal11MatcherBaseIN12absl_testing12lts_2026052615status_internal10StatusCodeEEE", !9, i64 0, !11, i64 8, !5, i64 16}
!13 = !{!12, !11, i64 8}
!14 = !{!"_ZTSN7testing8internal11MatcherBaseIN12absl_testing12lts_2026052615status_internal10StatusCodeEE6VTableE", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!15 = !{!14, !10, i64 8}
!16 = !{!"p1 _ZTSN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE6VTableE", !10, i64 0}
!17 = !{!"_ZTSN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEEE", !9, i64 0, !16, i64 8, !5, i64 16}
!18 = !{!17, !16, i64 8}
!19 = !{!"_ZTSN7testing8internal11MatcherBaseISt17basic_string_viewIcSt11char_traitsIcEEE6VTableE", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!20 = !{!19, !10, i64 8}
!21 = !{!"vtable pointer", !4, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"long", !5, i64 0}
!24 = !{!"p1 omnipotent char", !10, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !24, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !23, i64 8, !5, i64 16}
!27 = !{!5, !5, i64 0}
!28 = !{!26, !24, i64 0}
!29 = !{ptr @_ZN7testing25StringMatchResultListenerD2Ev}
!30 = !{!"_ZTSSi", !23, i64 8}
!31 = !{!30, !23, i64 8}
!32 = distinct !{null}
!33 = distinct !{null}
!34 = distinct !{null}
!35 = distinct !{null}
!36 = distinct !{null}
!37 = distinct !{!37, i1 true, !"_ZNK7testing25StringMatchResultListener3strB5cxx11Ev"}
!38 = distinct !{!38, !37, !"_ZNK7testing25StringMatchResultListener3strB5cxx11Ev: argument 0"}
!39 = distinct !{!39, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!40 = distinct !{!40, !39, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!41 = distinct !{!41, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!42 = distinct !{!42, !41, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!43 = distinct !{!43, i1 true, !"_ZNK7testing25StringMatchResultListener3strB5cxx11Ev"}
!44 = distinct !{!44, !43, !"_ZNK7testing25StringMatchResultListener3strB5cxx11Ev: argument 0"}
!45 = distinct !{!45, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!46 = distinct !{!46, !45, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!47 = distinct !{!47, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!48 = distinct !{!48, !47, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!49 = distinct !{!49, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!50 = distinct !{!50, !49, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!51 = distinct !{null, null}
!52 = !{!"p1 _ZTSSo", !10, i64 0}
!53 = !{!"_ZTSN7testing19MatchResultListenerE", !52, i64 8}
!54 = !{!53, !52, i64 8}
!55 = !{!"_ZTSN4absl12lts_202605266StatusE", !23, i64 0}
!56 = !{!55, !23, i64 0}
!57 = !{!"_ZTSSt13__atomic_baseIiE", !6, i64 0}
!58 = !{!"_ZTSSt6atomicIiE", !57, i64 0}
!59 = !{!"_ZTSN4absl12lts_2026052610StatusCodeE", !5, i64 0}
!60 = !{!"_ZTSN4absl12lts_2026052618container_internal25internal_compressed_tuple7StorageImLm1ENS2_10StorageTagIJSaINS0_14SourceLocationEEmEEELb0EEE", !23, i64 0}
!61 = !{!"_ZTSN4absl12lts_2026052618container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJSaINS0_14SourceLocationEEmEEESt16integer_sequenceImJLm0ELm1EEELb1EEE", !60, i64 0}
!62 = !{!"_ZTSN4absl12lts_2026052618container_internal15CompressedTupleIJSaINS0_14SourceLocationEEmEEE", !61, i64 0}
!63 = !{!"_ZTSN4absl12lts_2026052623inlined_vector_internal7StorageINS0_14SourceLocationELm1ESaIS3_EEE", !62, i64 0, !5, i64 8}
!64 = !{!"_ZTSN4absl12lts_2026052613InlinedVectorINS0_14SourceLocationELm1ESaIS2_EEE", !63, i64 0}
!65 = !{!"p1 _ZTSN4absl12lts_2026052613InlinedVectorINS0_15status_internal7PayloadELm1ESaIS3_EEE", !10, i64 0}
!66 = !{!"_ZTSSt10_Head_baseILm0EPN4absl12lts_2026052613InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEELb0EE", !65, i64 0}
!67 = !{!"_ZTSSt11_Tuple_implILm0EJPN4absl12lts_2026052613InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EEE", !66, i64 0}
!68 = !{!"_ZTSSt5tupleIJPN4absl12lts_2026052613InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EEE", !67, i64 0}
!69 = !{!"_ZTSSt15__uniq_ptr_implIN4absl12lts_2026052613InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EE", !68, i64 0}
!70 = !{!"_ZTSSt15__uniq_ptr_dataIN4absl12lts_2026052613InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_ELb1ELb1EE", !69, i64 0}
!71 = !{!"_ZTSSt10unique_ptrIN4absl12lts_2026052613InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EE", !70, i64 0}
!72 = !{!"_ZTSN4absl12lts_2026052615status_internal9StatusRepE", !58, i64 0, !59, i64 4, !26, i64 8, !64, i64 40, !71, i64 64}
!73 = !{!72, !59, i64 4}
!74 = !{!"_ZTSN12absl_testing12lts_2026052615status_internal10StatusCodeE", !6, i64 0}
!75 = !{!74, !6, i64 0}
!76 = !{!14, !10, i64 0}
!77 = !{!38}
!78 = !{!40}
!79 = !{!42}
!80 = !{!25, !24, i64 0}
!81 = !{!42, !40, !38}
!82 = !{!26, !23, i64 8}
!83 = !{!"p1 _ZTSNSt6locale5_ImplE", !10, i64 0}
!84 = !{!"_ZTSSt6locale", !83, i64 0}
!85 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !24, i64 8, !24, i64 16, !24, i64 24, !24, i64 32, !24, i64 40, !24, i64 48, !84, i64 56}
!86 = !{!85, !24, i64 40}
!87 = !{!85, !24, i64 32}
!88 = !{!23, !23, i64 0}
!89 = !{!44}
!90 = !{!46}
!91 = !{!48}
!92 = !{!48, !46, !44}
!93 = !{!50}
!94 = !{!19, !10, i64 0}
end_hunk_1
