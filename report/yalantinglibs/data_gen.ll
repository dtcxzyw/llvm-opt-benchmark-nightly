Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/data_gen?download=true
inline.NumInlined: 93223
inline.NumDeleted: 25399
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_ZN7coro_io6detail23resolve_listen_endpointIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt8optionalINS2_2ip14basic_endpointINS8_3tcpEEEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtRSt10error_code:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN4asio2ip14basic_resolverINS0_3tcpENS_15any_io_executorEE7resolveERKNS0_20basic_resolver_queryIS2_EERSt10error_code.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !286 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZN4asio2ip20basic_resolver_queryINS0_3tcpEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !279
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #50
  br label %_ZN4asio2ip20basic_resolver_queryINS0_3tcpEED2Ev.exit

_ZN4asio2ip20basic_resolver_queryINS0_3tcpEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.cl = load ptr, ptr %12, align 8, !tbaa !286  ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bw
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4asio2ip20basic_resolver_queryINS0_3tcpEED2Ev.exit
  %i.cn = load i64, ptr %i.bw, align 8, !tbaa !279
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4asio2ip20basic_resolver_queryINS0_3tcpEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  %i.cp = load i32, ptr %4, align 8, !tbaa !796
  %i.cq = icmp eq i32 %i.cp, 0
  %i.cr = load ptr, ptr %10, align 8              ; 2 uses
  %i.cs = icmp ne ptr %i.cr, null
  %or.cond = select i1 %i.cq, i1 %i.cs, i1 false
  br i1 %or.cond, label %bb.u, label %bb.v

bb.p:                                             ; preds = %bb.k
  %i.ct = landingpad { ptr, i32 }
          cleanup
  %i.cu = load ptr, ptr %i.y, align 8, !tbaa !853
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !860
  invoke void %i.cv(ptr noundef nonnull align 8 dereferenceable(56) %9)
          to label %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit25 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #49
  unreachable

_ZN4asio9execution6detail17any_executor_baseD2Ev.exit25: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %bb.ac

bb.r:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4asio2ip20basic_resolver_queryINS0_3tcpEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %11) #36
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn20 = phi { ptr, i32 } [ %i.cz, %bb.s ], [ %i.cy, %bb.r ]
  %i.da = load ptr, ptr %12, align 8, !tbaa !286  ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.bw
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.t
  %i.dc = load i64, ptr %i.bw, align 8, !tbaa !279
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @_ZN4asio6detail14io_object_implINS0_16resolver_serviceINS_2ip3tcpEEENS_15any_io_executorEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %8) #36
  br label %bb.ac

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.df = load i64, ptr %i.de, align 8, !tbaa !2309
  %i.dg = load ptr, ptr %i.cr, align 8, !tbaa !2342
  %i.dh = getelementptr inbounds nuw [96 x i8], ptr %i.dg, i64 %i.df
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(28) %i.dh, i64 28, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.u
  %.sink = phi i8 [ 1, %bb.u ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %.sink, ptr %i.di, align 4, !tbaa !2834
  %i.dj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !308 ; 8 uses
  %.not.i.i.i29 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i29, label %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEED2Ev.exit33, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 4 uses
  %i.dm = load atomic i64, ptr %i.dl acquire, align 8 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 4294967297
  %i.do = trunc i64 %i.dm to i32                  ; 2 uses
  br i1 %i.dn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.dl, align 8, !tbaa !310
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  store i32 0, ptr %i.dp, align 4, !tbaa !311
  %i.dq = load ptr, ptr %i.dk, align 8, !tbaa !263
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #36, !inline_history !130
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !263
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #36, !inline_history !130
  br label %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEED2Ev.exit33

bb.y:                                             ; preds = %bb.w
  %i.dw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !279
  %.not.i.i.i.i30 = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i.i.i30, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dx = add nsw i32 %i.do, -1
  store i32 %i.dx, ptr %i.dl, align 8, !tbaa !280
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i31

bb.aa:                                            ; preds = %bb.y
  %i.dy = atomicrmw volatile add ptr %i.dl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i31

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i31: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i32 = phi i32 [ %i.do, %bb.z ], [ %i.dy, %bb.aa ]
  %i.dz = icmp eq i32 %.0.i.i.i.i.i32, 1
  br i1 %i.dz, label %bb.ab, label %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEED2Ev.exit33, !prof !291

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i31
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #36
  br label %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEED2Ev.exit33

_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEED2Ev.exit33: ; preds = %bb.v, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i31, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @_ZN4asio6detail14io_object_implINS0_16resolver_serviceINS_2ip3tcpEEENS_15any_io_executorEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.ad

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit25
  %.pn22.pn = phi { ptr, i32 } [ %.pn20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.ct, %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit25 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  resume { ptr, i32 } %.pn22.pn

bb.ad:                                            ; preds = %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEED2Ev.exit33, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8coro_rpc20coro_rpc_server_baseINS_8config_tEE12add_acceptorESt17basic_string_viewIcSt11char_traitsIcEEtb(ptr noundef nonnull align 8 dereferenceable(664) %0, i64 %1, ptr %2, i16 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #51, !noalias !8601 ; 7 uses
  invoke void @_ZN7coro_io19tcp_server_acceptorCI2NS_20server_acceptor_baseEESt17basic_string_viewIcSt11char_traitsIcEEt(ptr noundef nonnull align 8 dereferenceable(209) %i.a, i64 %1, ptr %2, i16 noundef zeroext %3)
          to label %_ZSt11make_uniqueIN7coro_io19tcp_server_acceptorEJRSt17basic_string_viewIcSt11char_traitsIcEERtEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !8601

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN7coro_io19tcp_server_acceptorESt14default_deleteIS1_EED2Ev.exit9, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.as, %_ZNSt10unique_ptrIN7coro_io19tcp_server_acceptorESt14default_deleteIS1_EED2Ev.exit9 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 216) #50, !noalias !8601
  br label %common.resume

_ZSt11make_uniqueIN7coro_io19tcp_server_acceptorEJRSt17basic_string_viewIcSt11char_traitsIcEERtEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  %i.c = zext i1 %4 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 %i.c, ptr %i.d, align 8, !tbaa !636
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !624  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !726
  %.not.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt11make_uniqueIN7coro_io19tcp_server_acceptorEJRSt17basic_string_viewIcSt11char_traitsIcEERtEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.j = ptrtoint ptr %i.a to i64
  store i64 %i.j, ptr %i.g, align 8, !tbaa !426
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.k, ptr %i.f, align 8, !tbaa !624
  br label %_ZNSt10unique_ptrIN7coro_io19tcp_server_acceptorESt14default_deleteIS1_EED2Ev.exit

bb.d:                                             ; preds = %_ZSt11make_uniqueIN7coro_io19tcp_server_acceptorEJRSt17basic_string_viewIcSt11char_traitsIcEERtEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !424  ; 10 uses
  %i.m = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN7coro_io20server_acceptor_baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.87) #52
          to label %.noexc11 unwind label %_ZNSt10unique_ptrIN7coro_io19tcp_server_acceptorESt14default_deleteIS1_EED2Ev.exit9

.noexc11:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7coro_io20server_acceptor_baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i, %i.q  ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i10 = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i10)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #51
          to label %.noexc12 unwind label %_ZNSt10unique_ptrIN7coro_io19tcp_server_acceptorESt14default_deleteIS1_EED2Ev.exit9 ; 10 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN7coro_io20server_acceptor_baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  %i.y = ptrtoint ptr %i.a to i64
  store i64 %i.y, ptr %i.x, align 8, !tbaa !426
  %.not10.i.i.i.i = icmp eq ptr %i.l, %i.g
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7coro_io20server_acceptor_baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc12
  %i.z = add i64 %i.m, -8
  %i.aa = sub i64 %i.z, %i.n                      ; 3 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader26, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ad = and i64 %i.aa, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ae
  %scevgep22 = getelementptr i8, ptr %i.l, i64 %i.ae
  %bound0 = icmp ult ptr %i.w, %scevgep22
  %bound1 = icmp ult ptr %i.l, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.l, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ai ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.l, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8603)
  %i.aj = getelementptr i8, ptr %next.gep23, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep23, align 8, !tbaa !426, !alias.scope !8604, !noalias !8602
  %wide.load24 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !426, !alias.scope !8604, !noalias !8602
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !426, !alias.scope !8605, !noalias !8604
  store <2 x i64> %wide.load24, ptr %i.ak, align 8, !tbaa !426, !alias.scope !8605, !noalias !8604
  %i.al = getelementptr i8, ptr %next.gep23, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep23, align 8, !tbaa !426, !alias.scope !8604, !noalias !8602
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !426, !alias.scope !8604, !noalias !8602
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !8598

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7coro_io20server_acceptor_baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader26

.lr.ph.i.i.i.i.preheader26:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader26, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader26 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader26 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8603)
  %i.an = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !426, !alias.scope !8603, !noalias !8602
  store i64 %i.an, ptr %.012.i.i.i.i, align 8, !tbaa !426, !alias.scope !8602, !noalias !8603
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !426, !alias.scope !8603, !noalias !8602
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7coro_io20server_acceptor_baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !8599

_ZNSt6vectorISt10unique_ptrIN7coro_io20server_acceptor_baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc12
  %.0.lcssa.i.i.i.i = phi ptr [ %i.w, %.noexc12 ], [ %i.ag, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i, label %.noexc, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN7coro_io20server_acceptor_baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #50
  br label %.noexc

.noexc:                                           ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN7coro_io20server_acceptor_baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.w, ptr %i.e, align 8, !tbaa !424
  store ptr %i.aq, ptr %i.f, align 8, !tbaa !624
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ar, ptr %i.h, align 8, !tbaa !726
  br label %_ZNSt10unique_ptrIN7coro_io19tcp_server_acceptorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7coro_io19tcp_server_acceptorESt14default_deleteIS1_EED2Ev.exit: ; preds = %.noexc, %bb.c
  ret void

_ZNSt10unique_ptrIN7coro_io19tcp_server_acceptorESt14default_deleteIS1_EED2Ev.exit9: ; preds = %bb.e, %_ZNKSt6vectorISt10unique_ptrIN7coro_io20server_acceptor_baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !263
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(57) %i.a) #36, !inline_history !8600
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio2ip12make_addressESt17basic_string_viewIcSt11char_traitsIcEERSt10error_code(ptr dead_on_unwind noalias writable sret(%"class.asio::ip::address") align 4 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::array.2365", align 4  ; 4 uses
  %5 = alloca %"struct.std::array.2364", align 1  ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %.sroa.06.i.i = alloca [4 x i32], align 4       ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.b, ptr %6, align 8, !tbaa !289
  %i.c = icmp eq ptr %2, null
  %i.d = icmp ne i64 %1, 0
  %or.cond.i.i.i = and i1 %i.d, %i.c
  br i1 %or.cond.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.73) #52
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %1, 15
  br i1 %i.e, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = icmp slt i64 %1, 0
  br i1 %i.f, label %.noexc.i.i.i, label %bb.e

.noexc.i.i.i:                                     ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #52
          to label %.noexc1 unwind label %bb.r

.noexc1:                                          ; preds = %.noexc.i.i.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.g = add nuw i64 %1, 1                        ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc9.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !291

.noexc9.i.i.i:                                    ; preds = %bb.e
  invoke void @_ZSt17__throw_bad_allocv() #52
          to label %.noexc2 unwind label %bb.r

.noexc2:                                          ; preds = %.noexc9.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.e
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #51
          to label %.noexc3 unwind label %bb.r    ; 2 uses

.noexc3:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.i, ptr %6, align 8, !tbaa !286
  store i64 %1, ptr %i.b, align 8, !tbaa !279
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc3, %bb.c
  %i.j = phi ptr [ %i.i, %.noexc3 ], [ %i.b, %bb.c ] ; 3 uses
  switch i64 %1, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.k = load i8, ptr %2, align 1, !tbaa !279
  store i8 %i.k, ptr %i.j, align 1, !tbaa !279
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %2, i64 %1, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %1, ptr %i.l, align 8, !tbaa !290
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %1
  store i8 0, ptr %i.m, align 1, !tbaa !279
  call void @llvm.experimental.noalias.scope.decl(metadata !8614)
  %i.n = load ptr, ptr %6, align 8, !tbaa !286, !noalias !8614 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8615)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !8616)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36, !noalias !8617
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36, !noalias !8617
  store i64 0, ptr %i.a, align 8, !tbaa !411, !noalias !8617
  %i.o = invoke noundef i32 @_ZN4asio6detail10socket_ops9inet_ptonEiPKcPvPmRSt10error_code(i32 noundef 10, ptr noundef %i.n, ptr noundef nonnull %5, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.i unwind label %bb.l, !noalias !8617

bb.i:                                             ; preds = %bb.h
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.06.i.i, i8 0, i64 16, i1 false), !alias.scope !8616, !noalias !8618
  br label %_ZN4asio2ip15make_address_v6EPKcRSt10error_code.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.q = load i64, ptr %i.a, align 8, !tbaa !411, !noalias !8617
  %i.r = trunc i64 %i.q to i32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.06.i.i, ptr noundef nonnull align 1 dereferenceable(16) %5, i64 16, i1 false), !noalias !8618
  br label %_ZN4asio2ip15make_address_v6EPKcRSt10error_code.exit.i.i

bb.l:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #49, !noalias !8617
  unreachable

_ZN4asio2ip15make_address_v6EPKcRSt10error_code.exit.i.i: ; preds = %bb.k, %bb.j
end_hunk_0
