Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/server?download=true
inline.NumInlined: 54344
inline.NumDeleted: 20585
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZN4asio10io_contextC2Ev:bb.a
          cleanup
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !263
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(256) %i.f) #43, !inline_history !17
  br label %.body4

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.ac, align 8, !tbaa !539
  ret void

bb.h:                                             ; preds = %_ZN4asio17execution_contextC2Ev.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body4

bb.i:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.i ], [ %i.n, %bb.d ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 256) #53
  br label %.body4

.body4:                                           ; preds = %bb.h, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ad, %bb.h ], [ %i.y, %bb.f ]
  call void @_ZN4asio17execution_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #43
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7coro_io6detail23resolve_listen_endpointIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt8optionalINS2_2ip14basic_endpointINS8_3tcpEEEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtRSt10error_code(ptr dead_on_unwind noalias writable sret(%"class.std::optional.559") align 4 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i16 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::array.588", align 4   ; 4 uses
  %6 = alloca %"struct.std::array.587", align 1   ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %.sroa.06.i.i = alloca [4 x i32], align 4       ; 6 uses
  %7 = alloca %"class.asio::ip::address", align 4 ; 12 uses
  %8 = alloca %"class.asio::ip::basic_resolver", align 8 ; 8 uses
  %9 = alloca %"class.asio::any_io_executor", align 8 ; 12 uses
  %10 = alloca %"class.asio::ip::basic_resolver_results", align 8 ; 7 uses
  %11 = alloca %"class.asio::ip::basic_resolver_query", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #43
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4748)
  %i.b = load ptr, ptr %2, align 8, !tbaa !287, !noalias !4748 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4749)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4750)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #43, !noalias !4751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43, !noalias !4751
  store i64 0, ptr %i.a, align 8, !tbaa !333, !noalias !4751
  %i.c = invoke noundef i32 @_ZN4asio6detail10socket_ops9inet_ptonEiPKcPvPmRSt10error_code(i32 noundef 10, ptr noundef %i.b, ptr noundef nonnull %6, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.e, !noalias !4751

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.06.i.i, i8 0, i64 16, i1 false), !alias.scope !4750, !noalias !4752
  br label %_ZN4asio2ip15make_address_v6EPKcRSt10error_code.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.e = load i64, ptr %i.a, align 8, !tbaa !333, !noalias !4751
  %i.f = trunc i64 %i.e to i32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.06.i.i, ptr noundef nonnull align 1 dereferenceable(16) %6, i64 16, i1 false), !noalias !4752
  br label %_ZN4asio2ip15make_address_v6EPKcRSt10error_code.exit.i.i

bb.e:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #52, !noalias !4751
  unreachable

_ZN4asio2ip15make_address_v6EPKcRSt10error_code.exit.i.i: ; preds = %bb.d, %bb.c
  %.sroa.5.0.i.i = phi i32 [ 0, %bb.c ], [ %i.f, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43, !noalias !4751
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43, !noalias !4751
  %i.i = load i32, ptr %4, align 8, !tbaa !566, !noalias !4752
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4asio2ip15make_address_v6EPKcRSt10error_code.exit.i.i
  store i32 1, ptr %7, align 4, !tbaa !883, !alias.scope !4752
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.j, align 4, !tbaa !884, !alias.scope !4752
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.06.i.i, i64 16, i1 false), !tbaa.struct !319
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %.sroa.5.0.i.i, ptr %i.l, align 4, !tbaa !885, !alias.scope !4752
  br label %bb.j

bb.g:                                             ; preds = %_ZN4asio2ip15make_address_v6EPKcRSt10error_code.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43, !noalias !4753
  %i.m = invoke noundef i32 @_ZN4asio6detail10socket_ops9inet_ptonEiPKcPvPmRSt10error_code(i32 noundef 2, ptr noundef %i.b, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN4asio2ip15make_address_v4EPKcRSt10error_code.exit.i.i unwind label %bb.h, !noalias !4753

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #52, !noalias !4753
  unreachable

_ZN4asio2ip15make_address_v4EPKcRSt10error_code.exit.i.i: ; preds = %bb.g
  %i.p = load i32, ptr %5, align 4, !noalias !4753
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43, !noalias !4753
  %i.q = load i32, ptr %4, align 8, !tbaa !566
  %.not7.i.i = icmp eq i32 %i.q, 0
  br i1 %.not7.i.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZN4asio2ip15make_address_v4EPKcRSt10error_code.exit.i.i
  %.inv.i.i.i = icmp sgt i32 %i.m, 0
  %storemerge.i.i.i = select i1 %.inv.i.i.i, i32 %i.p, i32 0
  store i32 0, ptr %7, align 4, !tbaa !883, !alias.scope !4752
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %storemerge.i.i.i, ptr %i.r, align 4, !tbaa !280, !alias.scope !4752
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.s, i8 0, i64 20, i1 false), !alias.scope !4752
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i.i)
  call void @_ZN4asio2ip6detail8endpointC2ERKNS0_7addressEt(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(28) %7, i16 noundef zeroext %3) #43
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.t, align 4, !tbaa !571
  br label %bb.ac

bb.k:                                             ; preds = %_ZN4asio2ip15make_address_v4EPKcRSt10error_code.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %7, i8 0, i64 28, i1 false), !alias.scope !4752
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i.i)
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #58
  store i32 0, ptr %4, align 8, !tbaa !566
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !567
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #43
  %i.w = load i64, ptr %1, align 8, !tbaa !548
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr @_ZZN4asio9execution6detail17any_executor_base16target_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS2_10target_fnsEbPNSt9enable_ifIXntsr7is_sameIT_vEE5valueEvE4typeEE16fns_with_execute, ptr %i.x, align 8, !tbaa !710
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  store ptr @_ZZN4asio9execution6detail17any_executor_base16object_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS2_10object_fnsEPNSt9enable_ifIXaantsr7is_sameIT_vEE5valuentsr7is_sameISC_St10shared_ptrIvEEE5valueEvE4typeEE3fns, ptr %i.y, align 8, !tbaa !711
  store i64 %i.w, ptr %9, align 8, !tbaa !548
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %9, ptr %i.z, align 8, !tbaa !712
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.aa, align 8, !tbaa !715
  invoke void @_ZN4asio6detail14io_object_implINS0_16resolver_serviceINS_2ip3tcpEEENS_15any_io_executorEEC2EiRKS6_(ptr noundef nonnull align 8 dereferenceable(80) %8, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(56) %9)
          to label %_ZN4asio2ip14basic_resolverINS0_3tcpENS_15any_io_executorEEC2ERKS3_.exit unwind label %bb.p

_ZN4asio2ip14basic_resolverINS0_3tcpENS_15any_io_executorEEC2ERKS3_.exit: ; preds = %bb.k
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !711
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !718
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(56) %9)
          to label %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %_ZN4asio2ip14basic_resolverINS0_3tcpENS_15any_io_executorEEC2ERKS3_.exit
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #52
  unreachable

_ZN4asio9execution6detail17any_executor_baseD2Ev.exit: ; preds = %_ZN4asio2ip14basic_resolverINS0_3tcpENS_15any_io_executorEEC2ERKS3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #43
  %i.af = zext i16 %3 to i32                      ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4754)
  %i.ag = icmp ult i16 %3, 10
  br i1 %i.ag, label %._crit_edge.i.i.thread60, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit
  %i.ah = icmp ult i16 %3, 100
  br i1 %i.ah, label %._crit_edge.i.i.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.i.i
  %i.ai = icmp ult i16 %3, 1000
  %i.aj = icmp ult i16 %3, 10000
  %spec.select = select i1 %i.aj, i32 4, i32 5
  %.022.i.i.ph.ph = select i1 %i.ai, i32 3, i32 %spec.select ; 2 uses
  %i.ak = zext nneg i32 %.022.i.i.ph.ph to i64    ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.al, ptr %12, align 8, !tbaa !283, !alias.scope !4754
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, i8 45, i64 %i.ak, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.ak, ptr %i.am, align 8, !tbaa !288, !alias.scope !4754
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  store i8 0, ptr %i.an, align 1, !tbaa !279
  %i.ao = add nsw i32 %.022.i.i.ph.ph, -1
  br label %.lr.ph.i11.i

._crit_edge.i.i.thread60:                         ; preds = %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.ap, ptr %12, align 8, !tbaa !283, !alias.scope !4754
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 1, ptr %i.aq, align 8, !tbaa !288, !alias.scope !4754
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 17
  store i8 0, ptr %i.ar, align 1, !tbaa !279
  br label %bb.n

._crit_edge.i.i.thread:                           ; preds = %.lr.ph.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.as, ptr %12, align 8, !tbaa !283, !alias.scope !4754
  store i16 11565, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 2, ptr %i.at, align 8, !tbaa !288, !alias.scope !4754
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 18
  store i8 0, ptr %i.au, align 2, !tbaa !279
  br label %bb.m

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.ax, %.lr.ph.i11.i ], [ %i.af, %.lr.ph.preheader.i.i ] ; 4 uses
  %.01819.i.i = phi i32 [ %i.bi, %.lr.ph.i11.i ], [ %i.ao, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.av = urem i32 %.020.i.i, 100
  %i.aw = shl nuw nsw i32 %i.av, 1
  %i.ax = udiv i32 %.020.i.i, 100                 ; 3 uses
  %i.ay = zext nneg i32 %i.aw to i64
  %i.az = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !279, !noalias !4754
  %i.bc = zext i32 %.01819.i.i to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.bc
  store i8 %i.bb, ptr %i.bd, align 1, !tbaa !279
  %i.be = load i8, ptr %i.az, align 2, !tbaa !279, !noalias !4754
  %i.bf = add i32 %.01819.i.i, -1
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.bg
  store i8 %i.be, ptr %i.bh, align 1, !tbaa !279
  %i.bi = add i32 %.01819.i.i, -2
  %i.bj = icmp samesign ugt i32 %.020.i.i, 9999
  br i1 %i.bj, label %.lr.ph.i11.i, label %._crit_edge.i.i, !llvm.loop !42

._crit_edge.i.i:                                  ; preds = %.lr.ph.i11.i
  %i.bk = icmp samesign ugt i32 %.020.i.i, 999
  br i1 %i.bk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %.0.lcssa.i.i59 = phi i32 [ %i.af, %._crit_edge.i.i.thread ], [ %i.ax, %._crit_edge.i.i ]
  %i.bl = phi ptr [ %i.as, %._crit_edge.i.i.thread ], [ %i.al, %._crit_edge.i.i ]
  %i.bm = shl nuw nsw i32 %.0.lcssa.i.i59, 1
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !279, !noalias !4754
  %i.br = getelementptr inbounds nuw i8, ptr %12, i64 17
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !279
  %i.bs = load i8, ptr %i.bo, align 2, !tbaa !279, !noalias !4754
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.n:                                             ; preds = %._crit_edge.i.i.thread60, %._crit_edge.i.i
  %.0.lcssa.i.i62 = phi i32 [ %i.af, %._crit_edge.i.i.thread60 ], [ %i.ax, %._crit_edge.i.i ]
  %i.bt = phi ptr [ %i.ap, %._crit_edge.i.i.thread60 ], [ %i.al, %._crit_edge.i.i ]
  %i.bu = trunc nuw nsw i32 %.0.lcssa.i.i62 to i8
  %i.bv = or disjoint i8 %i.bu, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.m, %bb.n
  %i.bw = phi ptr [ %i.bt, %bb.n ], [ %i.bl, %bb.m ] ; 5 uses
  %storemerge.i.i = phi i8 [ %i.bv, %bb.n ], [ %i.bs, %bb.m ]
  store i8 %storemerge.i.i, ptr %i.bw, align 1, !tbaa !279
  invoke void @_ZN4asio2ip20basic_resolver_queryINS0_3tcpEEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_NS0_13resolver_base5flagsE(ptr noundef nonnull align 8 dereferenceable(112) %11, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 32)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.bx = load ptr, ptr %8, align 8, !tbaa !890, !noalias !4755
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8
  invoke void @_ZN4asio6detail16resolver_serviceINS_2ip3tcpEE7resolveERSt10shared_ptrIvERKNS2_20basic_resolver_queryIS3_EERSt10error_code(ptr dead_on_unwind nonnull writable sret(%"class.asio::ip::basic_resolver_results") align 8 %10, ptr noundef nonnull align 8 dereferenceable(104) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(112) %11, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN4asio2ip14basic_resolverINS0_3tcpENS_15any_io_executorEE7resolveERKNS0_20basic_resolver_queryIS2_EERSt10error_code.exit unwind label %bb.s

_ZN4asio2ip14basic_resolverINS0_3tcpENS_15any_io_executorEE7resolveERKNS0_20basic_resolver_queryIS2_EERSt10error_code.exit: ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !287 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 96 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4asio2ip14basic_resolverINS0_3tcpENS_15any_io_executorEE7resolveERKNS0_20basic_resolver_queryIS2_EERSt10error_code.exit
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !279
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN4asio2ip14basic_resolverINS0_3tcpENS_15any_io_executorEE7resolveERKNS0_20basic_resolver_queryIS2_EERSt10error_code.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !287 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZN4asio2ip20basic_resolver_queryINS0_3tcpEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !279
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #53
  br label %_ZN4asio2ip20basic_resolver_queryINS0_3tcpEED2Ev.exit

_ZN4asio2ip20basic_resolver_queryINS0_3tcpEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.cl = load ptr, ptr %12, align 8, !tbaa !287  ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bw
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4asio2ip20basic_resolver_queryINS0_3tcpEED2Ev.exit
  %i.cn = load i64, ptr %i.bw, align 8, !tbaa !279
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4asio2ip20basic_resolver_queryINS0_3tcpEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #43
  %i.cp = load i32, ptr %4, align 8, !tbaa !566
  %.not39 = icmp ne i32 %i.cp, 0
  %i.cq = load ptr, ptr %10, align 8              ; 2 uses
  %.not40 = icmp eq ptr %i.cq, null
  %or.cond = select i1 %.not39, i1 true, i1 %.not40
  br i1 %or.cond, label %.critedge.thread, label %bb.u

bb.p:                                             ; preds = %bb.k
  %i.cr = landingpad { ptr, i32 }
          cleanup
  %i.cs = load ptr, ptr %i.y, align 8, !tbaa !711
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !718
  invoke void %i.ct(ptr noundef nonnull align 8 dereferenceable(56) %9)
          to label %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit29 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  call void @__clang_call_terminate(ptr %i.cv) #52
  unreachable

_ZN4asio9execution6detail17any_executor_baseD2Ev.exit29: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #43
  br label %bb.ab

bb.r:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4asio2ip20basic_resolver_queryINS0_3tcpEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %11) #43
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn23 = phi { ptr, i32 } [ %i.cx, %bb.s ], [ %i.cw, %bb.r ]
  %i.cy = load ptr, ptr %12, align 8, !tbaa !287  ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.bw
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.t
  %i.da = load i64, ptr %i.bw, align 8, !tbaa !279
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #43
  call void @_ZN4asio6detail14io_object_implINS0_16resolver_serviceINS_2ip3tcpEEENS_15any_io_executorEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %8) #43
  br label %bb.ab

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !4758
  %i.de = load ptr, ptr %i.cq, align 8, !tbaa !895
  %i.df = getelementptr inbounds nuw [96 x i8], ptr %i.de, i64 %i.dd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(28) %i.df, i64 28, i1 false)
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.u
  %.sink = phi i8 [ 1, %bb.u ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %.sink, ptr %i.dg, align 4, !tbaa !571
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !328 ; 8 uses
  %.not.i.i.i33 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i33, label %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEED2Ev.exit37, label %bb.v

bb.v:                                             ; preds = %.critedge.thread
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 4 uses
  %i.dk = load atomic i64, ptr %i.dj acquire, align 8 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 4294967297
  %i.dm = trunc i64 %i.dk to i32                  ; 2 uses
  br i1 %i.dl, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.dj, align 8, !tbaa !331
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  store i32 0, ptr %i.dn, align 4, !tbaa !332
  %i.do = load ptr, ptr %i.di, align 8, !tbaa !263
end_hunk_0
begin_hunk_1_@_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_word_boundaryEv:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !515  ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !515
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load i32, ptr %i.f, align 8, !tbaa !3874
  %i.h = and i32 %i.g, 4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !515
  %i.k = icmp eq ptr %i.c, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3874
  %i.n = and i32 %i.m, 8
  %.not5 = icmp eq i32 %i.n, 0
  br i1 %.not5, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = load i32, ptr %i.o, align 8, !tbaa !3874
  %i.q = and i32 %i.p, 128
  %.not6 = icmp eq i32 %i.q, 0
  br i1 %.not6, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds i8, ptr %i.c, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !279   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3905, !nonnull !343, !align !538
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !329
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 80 ; 2 uses
  %i.y = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.z = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #43
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !2997
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !3001
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.z
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !3003 ; 7 uses
  %.not.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.not.i.i.i, label %bb.h, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt16__throw_bad_castv() #54
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i: ; preds = %bb.g
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %i.y to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !3066
  %i.ah = zext i8 %i.s to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !475
  %i.ak = and i16 %i.aj, %.sroa.0.0.extract.trunc.i.i
  %.not4.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not4.i.i, label %bb.i, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit

bb.i:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i
  %i.al = and i32 %i.y, 65536
  %.not.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.an = load i8, ptr %i.am, align 8, !tbaa !3151
  %.not.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !279
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

bb.l:                                             ; preds = %bb.j
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ae)
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !263
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef signext i8 %i.as(ptr noundef nonnull align 8 dereferenceable(570) %i.ae, i8 noundef signext 95), !inline_history !10157
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

_ZNKSt5ctypeIcE5widenEc.exit.i.i:                 ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i8 [ %i.ap, %bb.k ], [ %i.at, %bb.l ]
  %i.au = icmp eq i8 %i.s, %.0.i.i.i
  %i.av = zext i1 %i.au to i32
  br label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i, %bb.i, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i, %bb.f
  %.1 = phi i32 [ 0, %bb.f ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i ], [ 0, %bb.i ], [ %i.av, %_ZNKSt5ctypeIcE5widenEc.exit.i.i ]
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !515 ; 2 uses
  %i.ax = load ptr, ptr %i.i, align 8, !tbaa !515
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit
  %i.az = load i8, ptr %i.aw, align 1, !tbaa !279 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !3905, !nonnull !343, !align !538
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !329
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 80 ; 2 uses
  %i.bf = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.bg = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #43
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !2997
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !3001
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bg
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !3003 ; 7 uses
  %.not.not.i.i.i7 = icmp eq ptr %i.bl, null
  br i1 %.not.not.i.i.i7, label %bb.n, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt16__throw_bad_castv() #54
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8: ; preds = %bb.m
  %.sroa.0.0.extract.trunc.i.i9 = trunc i32 %i.bf to i16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !3066
  %i.bo = zext i8 %i.az to i64
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !475
  %i.br = and i16 %i.bq, %.sroa.0.0.extract.trunc.i.i9
  %.not4.i.i10 = icmp eq i16 %i.br, 0
  br i1 %.not4.i.i10, label %bb.o, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15

bb.o:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8
  %i.bs = and i32 %i.bf, 65536
  %.not.i.i11 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i11, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !3151
  %.not.i.i.i12 = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i12, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 152
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !279
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i13

bb.r:                                             ; preds = %bb.p
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bl)
  %i.bx = load ptr, ptr %i.bl, align 8, !tbaa !263
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = tail call noundef signext i8 %i.bz(ptr noundef nonnull align 8 dereferenceable(570) %i.bl, i8 noundef signext 95), !inline_history !10157
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i13

_ZNKSt5ctypeIcE5widenEc.exit.i.i13:               ; preds = %bb.r, %bb.q
  %.0.i.i.i14 = phi i8 [ %i.bw, %bb.q ], [ %i.ca, %bb.r ]
  %i.cb = icmp eq i8 %i.az, %.0.i.i.i14
  %i.cc = zext i1 %i.cb to i32
  br label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i13, %bb.o, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit
  %i.cd = phi i32 [ 0, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8 ], [ 0, %bb.o ], [ %i.cc, %_ZNKSt5ctypeIcE5widenEc.exit.i.i13 ]
  %i.ce = icmp ne i32 %.1, %i.cd
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.b, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15
  %.0 = phi i1 [ %i.ce, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15 ], [ false, %bb.b ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.3732", align 8  ; 14 uses
  %3 = alloca %"class.std::__detail::_Executor", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3898 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !3253   ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i64 0, ptr %2, align 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !3254
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = sdiv exact i64 %i.f, 24
  %i.k = icmp ugt i64 %i.j, 384307168202282325
  br i1 %i.k, label %.noexc.i.i, label %bb.c, !prof !284

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #54
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #55 ; 4 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !3253
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !3898
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !3254
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.07.i.i.i.i.i, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.b
  br i1 %i.r, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !217

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.thread
  %i.s = phi ptr [ %i.i, %.thread ], [ %i.o, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.t = phi ptr [ %i.g, %.thread ], [ %i.m, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %.thread ], [ %i.q, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.t, align 8, !tbaa !3898
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.06.0.copyload = load ptr, ptr %i.u, align 8, !tbaa !515
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.v, align 8, !tbaa !515
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !3905, !nonnull !343, !align !538
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.z = load i32, ptr %i.y, align 8, !tbaa !3874
  invoke void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EEC2ESB_SB_RSt6vectorISD_SE_ERKNS5_11basic_regexIcSG_EENSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(141) %3, ptr %.sroa.06.0.copyload, ptr %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i32 noundef %i.z)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 %1, ptr %i.aa, align 8, !tbaa !3899
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !515
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !515
  %i.ae = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %3, i8 noundef zeroext 1)
          to label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit unwind label %bb.f, !inline_history !10158 ; 2 uses

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit: ; preds = %bb.d
  br i1 %i.ae, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !3898 ; 2 uses
  %i.ag = load ptr, ptr %2, align 8, !tbaa !3253  ; 5 uses
  %.not = icmp eq ptr %i.af, %i.ag
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = sdiv exact i64 %i.aj, 24                ; 3 uses
  %xtraiter = and i64 %i.ak, 1
  %i.al = icmp eq i64 %i.aj, 24
  br i1 %i.al, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ak, -2
  br label %.lr.ph

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(141) dereferenceable(141) %3) #43
  br label %bb.r

.lr.ph:                                           ; preds = %bb.i, %.lr.ph.preheader.new
  %.018 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bl, %bb.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.i ]
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %.018 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !3895, !range !342, !noundef !343
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.g, label %.lr.ph.1

bb.g:                                             ; preds = %.lr.ph
  %i.as = load ptr, ptr %0, align 8, !tbaa !3253
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %.018 ; 3 uses
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !515
  store i64 %i.au, ptr %i.at, align 8, !tbaa !515
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !515
  store i64 %i.ax, ptr %i.aw, align 8, !tbaa !515
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i8 1, ptr %i.ay, align 8, !tbaa !3895
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.g
  %i.az = or disjoint i64 %.018, 1                ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.az ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !3895, !range !342, !noundef !343
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.1
  %i.be = load ptr, ptr %0, align 8, !tbaa !3253
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %i.az ; 3 uses
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !515
  store i64 %i.bg, ptr %i.bf, align 8, !tbaa !515
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !515
  store i64 %i.bj, ptr %i.bi, align 8, !tbaa !515
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i8 1, ptr %i.bk, align 8, !tbaa !3895
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.1
  %i.bl = add nuw i64 %.018, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !10159

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.018.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bl, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod32 = trunc i64 %i.ak to i1
  call void @llvm.assume(i1 %lcmp.mod32)
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %.018.epil.init ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !3895, !range !342, !noundef !343
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.lr.ph.epil.preheader
  %i.bq = load ptr, ptr %0, align 8, !tbaa !3253
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %.018.epil.init ; 3 uses
  %i.bs = load i64, ptr %i.bm, align 8, !tbaa !515
  store i64 %i.bs, ptr %i.br, align 8, !tbaa !515
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !515
  store i64 %i.bv, ptr %i.bu, align 8, !tbaa !515
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i8 1, ptr %i.bw, align 8, !tbaa !3895
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.j, %.lr.ph.epil.preheader, %.preheader, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !3877 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %i.bz) #53
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %i.cb = load ptr, ptr %i.bx, align 8, !tbaa !3878 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !3879 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.cb, %i.cd
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i14

.lr.ph.i.i.i.i.i14:                               ; preds = %bb.l, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.cl, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i ], [ %i.cb, %bb.l ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !3253 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i14
  %i.cg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !3254
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cf to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.ck) #53
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_word_boundaryEv:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !515  ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !515
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load i32, ptr %i.f, align 8, !tbaa !3897
  %i.h = and i32 %i.g, 4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !515
  %i.k = icmp eq ptr %i.c, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3897
  %i.n = and i32 %i.m, 8
  %.not5 = icmp eq i32 %i.n, 0
  br i1 %.not5, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load i32, ptr %i.o, align 8, !tbaa !3897
  %i.q = and i32 %i.p, 128
  %.not6 = icmp eq i32 %i.q, 0
  br i1 %.not6, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds i8, ptr %i.c, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !279   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3909, !nonnull !343, !align !538
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !329
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 80 ; 2 uses
  %i.y = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.z = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #43
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !2997
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !3001
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.z
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !3003 ; 7 uses
  %.not.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.not.i.i.i, label %bb.h, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt16__throw_bad_castv() #54
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i: ; preds = %bb.g
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %i.y to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !3066
  %i.ah = zext i8 %i.s to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !475
  %i.ak = and i16 %i.aj, %.sroa.0.0.extract.trunc.i.i
  %.not4.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not4.i.i, label %bb.i, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit

bb.i:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i
  %i.al = and i32 %i.y, 65536
  %.not.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.an = load i8, ptr %i.am, align 8, !tbaa !3151
  %.not.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !279
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

bb.l:                                             ; preds = %bb.j
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ae)
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !263
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef signext i8 %i.as(ptr noundef nonnull align 8 dereferenceable(570) %i.ae, i8 noundef signext 95), !inline_history !10176
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

_ZNKSt5ctypeIcE5widenEc.exit.i.i:                 ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i8 [ %i.ap, %bb.k ], [ %i.at, %bb.l ]
  %i.au = icmp eq i8 %i.s, %.0.i.i.i
  %i.av = zext i1 %i.au to i32
  br label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i, %bb.i, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i, %bb.f
  %.1 = phi i32 [ 0, %bb.f ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i ], [ 0, %bb.i ], [ %i.av, %_ZNKSt5ctypeIcE5widenEc.exit.i.i ]
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !515 ; 2 uses
  %i.ax = load ptr, ptr %i.i, align 8, !tbaa !515
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit
  %i.az = load i8, ptr %i.aw, align 1, !tbaa !279 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !3909, !nonnull !343, !align !538
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !329
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 80 ; 2 uses
  %i.bf = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.bg = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #43
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !2997
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !3001
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bg
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !3003 ; 7 uses
  %.not.not.i.i.i7 = icmp eq ptr %i.bl, null
  br i1 %.not.not.i.i.i7, label %bb.n, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt16__throw_bad_castv() #54
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8: ; preds = %bb.m
  %.sroa.0.0.extract.trunc.i.i9 = trunc i32 %i.bf to i16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !3066
  %i.bo = zext i8 %i.az to i64
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !475
  %i.br = and i16 %i.bq, %.sroa.0.0.extract.trunc.i.i9
  %.not4.i.i10 = icmp eq i16 %i.br, 0
  br i1 %.not4.i.i10, label %bb.o, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15

bb.o:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8
  %i.bs = and i32 %i.bf, 65536
  %.not.i.i11 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i11, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !3151
  %.not.i.i.i12 = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i12, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 152
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !279
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i13

bb.r:                                             ; preds = %bb.p
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bl)
  %i.bx = load ptr, ptr %i.bl, align 8, !tbaa !263
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = tail call noundef signext i8 %i.bz(ptr noundef nonnull align 8 dereferenceable(570) %i.bl, i8 noundef signext 95), !inline_history !10176
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i13

_ZNKSt5ctypeIcE5widenEc.exit.i.i13:               ; preds = %bb.r, %bb.q
  %.0.i.i.i14 = phi i8 [ %i.bw, %bb.q ], [ %i.ca, %bb.r ]
  %i.cb = icmp eq i8 %i.az, %.0.i.i.i14
  %i.cc = zext i1 %i.cb to i32
  br label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i13, %bb.o, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit
  %i.cd = phi i32 [ 0, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8 ], [ 0, %bb.o ], [ %i.cc, %_ZNKSt5ctypeIcE5widenEc.exit.i.i13 ]
  %i.ce = icmp ne i32 %.1, %i.cd
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.b, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15
  %.0 = phi i1 [ %i.ce, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15 ], [ false, %bb.b ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.3732", align 8  ; 15 uses
  %3 = alloca %"class.std::__detail::_Executor.4747", align 8 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3898 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !3253   ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i64 0, ptr %2, align 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !3254
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = sdiv exact i64 %i.f, 24
  %i.k = icmp ugt i64 %i.j, 384307168202282325
  br i1 %i.k, label %.noexc.i.i, label %bb.c, !prof !284

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #54
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #55 ; 4 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !3253
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !3898
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !3254
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.07.i.i.i.i.i, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.b
  br i1 %i.r, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !217

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.thread
  %i.s = phi ptr [ %i.i, %.thread ], [ %i.o, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.t = phi ptr [ %i.g, %.thread ], [ %i.m, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %.thread ], [ %i.q, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.t, align 8, !tbaa !3898
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.06.0.copyload = load ptr, ptr %i.u, align 8, !tbaa !515 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load i32, ptr %i.x, align 8, !tbaa !3897 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 0, i64 24, i1 false)
  store ptr %.sroa.06.0.copyload, ptr %i.z, align 8, !tbaa !515
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !3909, !nonnull !343, !align !538
  %i.ac = load <2 x ptr>, ptr %i.v, align 8, !tbaa !306
  store <2 x ptr> %i.ac, ptr %i.aa, align 8, !tbaa !306
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !329 ; 3 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !3045
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %2, ptr %i.ag, align 8, !tbaa !3884
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !3041 ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !3014 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sdiv exact i64 %i.ao, 48                ; 7 uses
  %i.aq = icmp ugt i64 %i.ap, 576460752303423487
  %i.ar = ptrtoint ptr %.sroa.06.0.copyload to i64
  br i1 %i.aq, label %bb.d, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1094) #54
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.d
  unreachable

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i.i.i.i, label %.loopexit.i, label %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i

_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %i.as = shl nuw nsw i64 %i.ap, 4
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #55
          to label %.noexc9.i unwind label %bb.e  ; 4 uses

.noexc9.i:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i
  store ptr %i.at, ptr %i.ah, align 8, !tbaa !3881
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.ap
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr %i.au, ptr %i.av, align 8, !tbaa !3882
  %xtraiter = and i64 %i.ap, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.noexc9.i, %.lr.ph.i.i.i.i.i.i.prol
  %.013.i.i.i.i.i.i.prol = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.at, %.noexc9.i ] ; 3 uses
  %.01012.i.i.i.i.i.i.prol = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ap, %.noexc9.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.noexc9.i ]
  store ptr null, ptr %.013.i.i.i.i.i.i.prol, align 8, !tbaa !3876
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.aw, align 8, !tbaa !3886
  %i.ax = add nsw i64 %.01012.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !10177

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.noexc9.i
  %.lcssa.unr = phi ptr [ poison, %.noexc9.i ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.i.unr = phi ptr [ %i.at, %.noexc9.i ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.i.unr = phi i64 [ %i.ap, %.noexc9.i ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.az = icmp ult i64 %i.ap, 8
  br i1 %i.az, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i.i = phi i64 [ %i.bp, %.lr.ph.i.i.i.i.i.i ], [ %.01012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.013.i.i.i.i.i.i, align 8, !tbaa !3876
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.ba, align 8, !tbaa !3886
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.bb, align 8, !tbaa !3876
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 24
  store i32 0, ptr %i.bc, align 8, !tbaa !3886
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 32
  store ptr null, ptr %i.bd, align 8, !tbaa !3876
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 40
  store i32 0, ptr %i.be, align 8, !tbaa !3886
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 48
  store ptr null, ptr %i.bf, align 8, !tbaa !3876
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 56
  store i32 0, ptr %i.bg, align 8, !tbaa !3886
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 64
  store ptr null, ptr %i.bh, align 8, !tbaa !3876
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 72
  store i32 0, ptr %i.bi, align 8, !tbaa !3886
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 80
  store ptr null, ptr %i.bj, align 8, !tbaa !3876
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 88
  store i32 0, ptr %i.bk, align 8, !tbaa !3886
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 96
  store ptr null, ptr %i.bl, align 8, !tbaa !3876
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 104
  store i32 0, ptr %i.bm, align 8, !tbaa !3886
  %i.bn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 112
  store ptr null, ptr %i.bn, align 8, !tbaa !3876
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 120
  store i32 0, ptr %i.bo, align 8, !tbaa !3886
  %i.bp = add nsw i64 %.01012.i.i.i.i.i.i, -8     ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i.i.i.i.7, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !215

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bq, %.lr.ph.i.i.i.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.br, align 8, !tbaa !3887
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bv = and i32 %i.y, 128
  %.not.i = icmp eq i32 %i.bv, 0
  %i.bw = and i32 %i.y, -6
  %spec.select = select i1 %.not.i, i32 %i.y, i32 %i.bw
  store i32 %spec.select, ptr %i.bu, align 8, !tbaa !3875
  store i64 %1, ptr %i.bs, align 8, !tbaa !3891
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.ar, ptr %i.bx, align 8, !tbaa !515
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 116 ; 2 uses
  store i8 0, ptr %i.by, align 4, !tbaa !3890
  store i64 0, ptr %i.bt, align 8, !tbaa !515
  %i.bz = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(117) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.g, !inline_history !10178 ; 0 uses

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i, %bb.d
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %.loopexit.i
  %i.cb = load i64, ptr %i.bs, align 8, !tbaa !3891
  invoke void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 noundef zeroext 1, i64 noundef %i.cb)
          to label %bb.f unwind label %bb.g, !inline_history !10178

bb.f:                                             ; preds = %.noexc
  %i.cc = load i8, ptr %i.by, align 4, !tbaa !3890, !range !342, !noundef !343
  %i.cd = trunc nuw i8 %i.cc to i1                ; 2 uses
  br i1 %i.cd, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.f
  %i.ce = load ptr, ptr %i.t, align 8, !tbaa !3898 ; 2 uses
  %i.cf = load ptr, ptr %2, align 8, !tbaa !3253  ; 5 uses
  %.not = icmp eq ptr %i.ce, %i.cf
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch                    ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN7coro_io19tcp_server_acceptor6acceptEv.resume:resume.entry

.noexc101:                                        ; preds = %bb.dn
  unreachable

_ZNSt7promiseIvE8_M_stateEv.exit.i:               ; preds = %bb.dm
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.pg, align 8
  %i.ph = ptrtoint ptr %i.pc to i64
  store i64 %i.ph, ptr %1, align 8, !tbaa !753
  store ptr @_ZNSt17_Function_handlerIFSt10unique_ptrINSt13__future_base12_Result_baseENS2_8_DeleterEEvENS1_13_State_baseV27_SetterIvvEEE9_M_invokeERKSt9_Any_data, ptr %i.pf, align 8, !tbaa !774
  store ptr @_ZNSt17_Function_handlerIFSt10unique_ptrINSt13__future_base12_Result_baseENS2_8_DeleterEEvENS1_13_State_baseV27_SetterIvvEEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.pe, align 8, !tbaa !314
  invoke void @_ZNSt13__future_base13_State_baseV213_M_set_resultESt8functionIFSt10unique_ptrINS_12_Result_baseENS3_8_DeleterEEvEEb(ptr noundef nonnull align 8 dereferenceable(28) %i.pd, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext false)
          to label %bb.do unwind label %bb.dr

bb.do:                                            ; preds = %_ZNSt7promiseIvE8_M_stateEv.exit.i
  %i.pi = load ptr, ptr %i.pe, align 8, !tbaa !314 ; 2 uses
  %.not.i.i100 = icmp eq ptr %i.pi, null
  br i1 %.not.i.i100, label %_ZNSt7promiseIvE9set_valueEv.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.pj = invoke noundef zeroext i1 %i.pi(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt7promiseIvE9set_valueEv.exit unwind label %bb.dq ; 0 uses

bb.dq:                                            ; preds = %bb.dp
  %i.pk = landingpad { ptr, i32 }
          catch ptr null
  %i.pl = extractvalue { ptr, i32 } %i.pk, 0
  call void @__clang_call_terminate(ptr %i.pl) #52
  unreachable

bb.dr:                                            ; preds = %_ZNSt7promiseIvE8_M_stateEv.exit.i
  %i.pm = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.pn = load ptr, ptr %i.pe, align 8, !tbaa !314 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.pn, null
  br i1 %.not.i2.i, label %.from..body, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.po = invoke noundef zeroext i1 %i.pn(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %.from..body unwind label %bb.dt ; 0 uses

bb.dt:                                            ; preds = %bb.ds
  %i.pp = landingpad { ptr, i32 }
          catch ptr null
  %i.pq = extractvalue { ptr, i32 } %i.pp, 0
  call void @__clang_call_terminate(ptr %i.pq) #52
  unreachable

_ZNSt7promiseIvE9set_valueEv.exit:                ; preds = %bb.do, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.ee

bb.du:                                            ; preds = %_ZNSt10error_codeC2IN4asio5error12basic_errorsEvEET_.exit91
  %i.pr = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv()
          to label %bb.dv unwind label %.body.from.411

bb.dv:                                            ; preds = %bb.du
  %i.ps = load atomic i32, ptr %i.pr monotonic, align 8
  %i.pt = icmp slt i32 %i.ps, 6
  br i1 %i.pt, label %bb.dw, label %bb.ee

bb.dw:                                            ; preds = %bb.dv
  %i.pu = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #43 ; 2 uses
  %i.pv = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv()
          to label %bb.dx unwind label %.body.from.407 ; 3 uses

bb.dx:                                            ; preds = %bb.dw
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 8 ; 2 uses
  %i.px = load atomic i64, ptr %i.pw monotonic, align 8
  %i.py = icmp slt i64 %i.px, 1
  br i1 %i.py, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit185.thread, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit185

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit185: ; preds = %bb.dx
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pv, i64 24
  %.sroa.0.0.copyload.i2.i.i183 = load i64, ptr %i.pz, align 8, !tbaa !333
  %i.qa = sub nsw i64 %i.pu, %.sroa.0.0.copyload.i2.i.i183
  %i.qb = sdiv i64 %i.qa, 1000000
  %i.qc = load atomic i64, ptr %i.pw monotonic, align 8
  %i.qd = srem i64 %i.qb, %i.qc
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  %i.qf = load atomic i64, ptr %i.qe monotonic, align 8
  %i.qg = icmp slt i64 %i.qd, %i.qf
  br i1 %i.qg, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit185.thread, label %bb.ee

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit185.thread: ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit185, %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  store i8 91, ptr %4, align 1, !alias.scope !10858
  %.sroa.0.i.sroa.4.0..sroa_idx.i186 = getelementptr inbounds nuw i8, ptr %4, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.0.i.sroa.4.0..sroa_idx.i186, ptr noundef nonnull align 1 dereferenceable(23) @__const._ZZN7coro_io19tcp_server_acceptor6acceptEvENKUlvE4_clEv.prefix, i64 23, i1 false), !tbaa.struct !455
  %.sroa.0.i.sroa.5.0..sroa_idx.i187 = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0.i.sroa.5.0..sroa_idx.i187, ptr noundef nonnull align 1 dereferenceable(3) @.str.962, i64 3, i1 false), !tbaa.struct !456
  invoke void @_ZN7easylog8record_tC2INSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEEET_NS_8SeverityESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %5, i64 %i.pu, i32 noundef 5, i64 26, ptr nonnull %4)
          to label %bb.dy unwind label %.from.383

bb.dy:                                            ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit185.thread
  %i.qh = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA15_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 1 dereferenceable(15) @.str.967)
          to label %bb.dz unwind label %.from.380

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  %i.qi = load ptr, ptr %.sroa.5.0.copyload.i, align 8, !tbaa !263, !noalias !10859
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 32
  %i.qk = load ptr, ptr %i.qj, align 8, !noalias !10859
  invoke void %i.qk(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.5.0.copyload.i, i32 noundef %.sroa.02.0.copyload.i)
          to label %_ZNKSt10error_code7messageB5cxx11Ev.exit190 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198.from., !inline_history !20

_ZNKSt10error_code7messageB5cxx11Ev.exit190:      ; preds = %bb.dz
  %i.ql = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.qh, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.ea unwind label %bb.ed

bb.ea:                                            ; preds = %_ZNKSt10error_code7messageB5cxx11Ev.exit190
  %i.qm = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv()
          to label %bb.eb unwind label %bb.ed

bb.eb:                                            ; preds = %bb.ea
  %i.qn = load atomic i8, ptr @_ZN7easylog6loggerILm0EE13has_destruct_E seq_cst, align 1, !range !342, !noundef !343
  %i.qo = trunc nuw i8 %i.qn to i1
  br i1 %i.qo, label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit192, label %bb.ec, !prof !284

bb.ec:                                            ; preds = %bb.eb
  invoke void @_ZN7easylog6loggerILm0EE5writeERNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(64) %i.qm, ptr noundef nonnull align 8 dereferenceable(80) %i.ql)
          to label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit192 unwind label %bb.ed

_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit192: ; preds = %bb.ec, %bb.eb
  %i.qp = load ptr, ptr %3, align 8, !tbaa !287   ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.qr = icmp eq ptr %i.qp, %i.qq
  br i1 %i.qr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit192
  %i.qs = load i64, ptr %i.qq, align 8, !tbaa !279
  %i.qt = add i64 %i.qs, 1
  call void @_ZdlPvm(ptr noundef %i.qp, i64 noundef %i.qt) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit192, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %5) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  br label %bb.ee

.body.from.407:                                   ; preds = %bb.dw
  %i.qu = landingpad { ptr, i32 }
          catch ptr null
  br label %.from..body

.from.383:                                        ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit185.thread
  %i.qv = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.from.406

.from.380:                                        ; preds = %bb.dy
  %i.qw = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.382

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198.from.: ; preds = %bb.dz
  %i.qx = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198

bb.ed:                                            ; preds = %bb.ec, %bb.ea, %_ZNKSt10error_code7messageB5cxx11Ev.exit190
  %i.qy = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.qz = load ptr, ptr %3, align 8, !tbaa !287   ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.rb = icmp eq ptr %i.qz, %i.ra
  br i1 %i.rb, label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %bb.ed
  %i.rc = load i64, ptr %i.ra, align 8, !tbaa !279
  %i.rd = add i64 %i.rc, 1
  call void @_ZdlPvm(ptr noundef %i.qz, i64 noundef %i.rd) #53
  br label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198

.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198: ; preds = %bb.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198.from., %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196
  %.pn54 = phi { ptr, i32 } [ %i.qx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198.from. ], [ %i.qy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196 ], [ %i.qy, %bb.ed ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %.from.382

.from.382:                                        ; preds = %.from.380, %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198
  %.pn54.pn = phi { ptr, i32 } [ %.pn54, %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198 ], [ %i.qw, %.from.380 ]
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %5) #43
  br label %.body.from.406

.body.from.406:                                   ; preds = %.from.383, %.from.382
  %.pn54.pn.pn = phi { ptr, i32 } [ %.pn54.pn, %.from.382 ], [ %i.qv, %.from.383 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  br label %.from..body

bb.ee:                                            ; preds = %_ZNSt7promiseIvE9set_valueEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit185, %bb.dv
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.rg = load i8, ptr %i.re, align 8, !tbaa !932
  switch i8 %i.rg, label %bb.ej [
    i8 -1, label %.from._ZN2tl6detail21expected_storage_baseIN7coro_io16socket_wrapper_tESt10error_codeLb0ELb1EED2Ev.exit
    i8 0, label %.from._ZN2tl6detail21expected_storage_baseIN7coro_io16socket_wrapper_tESt10error_codeLb0ELb1EED2Ev.exit
    i8 1, label %bb.ef
    i8 2, label %bb.eh
  ], !prof !952

bb.ef:                                            ; preds = %bb.ee
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ri = load i8, ptr %i.rh, align 8, !tbaa !954, !range !342, !noundef !343
  %i.rj = trunc nuw i8 %i.ri to i1
  br i1 %i.rj, label %bb.eg, label %.from._ZN2tl6detail21expected_storage_baseIN7coro_io16socket_wrapper_tESt10error_codeLb0ELb1EED2Ev.exit

bb.eg:                                            ; preds = %bb.ef
  call void @_ZN7coro_io16socket_wrapper_tD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(81) %i.rf) #43
  br label %.from._ZN2tl6detail21expected_storage_baseIN7coro_io16socket_wrapper_tESt10error_codeLb0ELb1EED2Ev.exit

bb.eh:                                            ; preds = %bb.ee
  %i.rk = load ptr, ptr %i.rf, align 8, !tbaa !698
  %.not.i.i.i.i.i.i.i.i.i.i.i204 = icmp eq ptr %i.rk, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i204, label %.from._ZN2tl6detail21expected_storage_baseIN7coro_io16socket_wrapper_tESt10error_codeLb0ELb1EED2Ev.exit, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(81) %i.rf) #43
  br label %.from._ZN2tl6detail21expected_storage_baseIN7coro_io16socket_wrapper_tESt10error_codeLb0ELb1EED2Ev.exit

bb.ej:                                            ; preds = %bb.ee
  unreachable

.from._ZN2tl6detail21expected_storage_baseIN7coro_io16socket_wrapper_tESt10error_codeLb0ELb1EED2Ev.exit: ; preds = %bb.ee, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %.sroa.02.0.copyload.i, ptr %i.rf, align 8, !tbaa !280
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.4108.0..sroa_idx, align 8, !tbaa !563
  store i8 0, ptr %17, align 8, !tbaa !954
  store i8 1, ptr %i.re, align 8, !tbaa !932
  br label %bb.es

bb.ek:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  call void @llvm.experimental.noalias.scope.decl(metadata !10860)
  %i.rl = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #55
          to label %.noexc199 unwind label %.body.from. ; 11 uses

.noexc199:                                        ; preds = %bb.ek
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.rp = load ptr, ptr %.reload.addr446, align 8, !tbaa !923, !noalias !10860
  store ptr %i.rp, ptr %i.rl, align 8, !tbaa !923, !noalias !10860
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rl, i64 24 ; 2 uses
  store i32 2, ptr %i.rq, align 8, !noalias !10860
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rl, i64 32
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rl, i64 56
  %i.rt = load ptr, ptr %i.rn, align 8, !tbaa !711, !noalias !10860 ; 2 uses
  store ptr %i.rt, ptr %i.rs, align 8, !tbaa !711, !noalias !10860
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rl, i64 72
  %i.rv = load ptr, ptr %i.rm, align 8, !tbaa !710, !noalias !10860
  store ptr %i.rv, ptr %i.ru, align 8, !tbaa !710, !noalias !10860
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !734, !noalias !10860
  invoke void %i.rx(ptr noundef nonnull align 8 dereferenceable(56) %i.rr, ptr noundef nonnull align 8 dereferenceable(56) %i.ro)
          to label %bb.em unwind label %bb.el, !noalias !10860

bb.el:                                            ; preds = %.noexc199
  %i.ry = landingpad { ptr, i32 }
          catch ptr null
  %i.rz = extractvalue { ptr, i32 } %i.ry, 0
  call void @__clang_call_terminate(ptr %i.rz) #52, !noalias !10860
  unreachable

bb.em:                                            ; preds = %.noexc199
  %.reload.addr444 = getelementptr inbounds nuw i8, ptr %0, i64 328
  %.reload445 = load ptr, ptr %.reload.addr444, align 8, !tbaa !10838 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rl, i64 80
  %i.si = load ptr, ptr %i.sc, align 8, !tbaa !715, !noalias !10860
  store ptr %i.si, ptr %i.sh, align 8, !tbaa !715, !noalias !10860
  %i.sj = load i32, ptr %i.sd, align 8, !tbaa !924, !noalias !10860
  store i32 %i.sj, ptr %i.sg, align 8, !tbaa !924, !noalias !10860
  store i32 -1, ptr %i.sd, align 8, !tbaa !924, !noalias !10860
  %i.sk = load i8, ptr %i.sb, align 4, !tbaa !929, !noalias !10860
  %i.sl = getelementptr inbounds nuw i8, ptr %i.rl, i64 12
  store i8 %i.sk, ptr %i.sl, align 4, !tbaa !929, !noalias !10860
  store i8 0, ptr %i.sb, align 4, !tbaa !929, !noalias !10860
  %i.sm = getelementptr inbounds nuw i8, ptr %i.rl, i64 16
  %i.sn = load ptr, ptr %i.sa, align 8, !tbaa !644, !noalias !10860
  store ptr %i.sn, ptr %i.sm, align 8, !tbaa !644, !noalias !10860
  store ptr null, ptr %i.sa, align 8, !tbaa !644, !noalias !10860
  %i.so = load i32, ptr %i.se, align 8, !tbaa !280, !noalias !10860
  store i32 %i.so, ptr %i.rq, align 8, !tbaa !280, !noalias !10860
  store i32 2, ptr %i.se, align 8, !tbaa !280, !noalias !10860
  store ptr %i.rl, ptr %2, align 8, !tbaa !951, !alias.scope !10860
  %i.sp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %.reload445, ptr %i.sp, align 8, !tbaa !1597
  %i.sq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 7 uses
  store ptr %i.sr, ptr %i.sq, align 8, !tbaa !283
  %i.ss = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store i64 0, ptr %i.ss, align 8, !tbaa !288
  store i8 0, ptr %i.sr, align 8, !tbaa !279
  %i.st = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.su = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.st, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.su, align 8, !tbaa !1701
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.sw = load i8, ptr %i.sf, align 8, !tbaa !932
  switch i8 %i.sw, label %bb.er [
    i8 -1, label %.from._ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i207.thread
    i8 0, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i207
    i8 1, label %bb.en
    i8 2, label %bb.ep
  ], !prof !952

.from._ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i207.thread: ; preds = %bb.em
  %i.sx = ptrtoint ptr %i.rl to i64
  store i64 %i.sx, ptr %i.sv, align 8, !tbaa !951
  store ptr null, ptr %2, align 8, !tbaa !951
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.reload445, ptr %i.sy, align 8, !tbaa !1597
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.ta, ptr %i.sz, align 8, !tbaa !283
  br label %.from.390

bb.en:                                            ; preds = %bb.em
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.tc = load i8, ptr %i.tb, align 8, !tbaa !954, !range !342, !noundef !343
  %i.td = trunc nuw i8 %i.tc to i1
  br i1 %i.td, label %bb.eo, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i207

bb.eo:                                            ; preds = %bb.en
  call void @_ZN7coro_io16socket_wrapper_tD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(81) %i.sv) #43
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i207

bb.ep:                                            ; preds = %bb.em
  %i.te = load ptr, ptr %i.sv, align 8, !tbaa !698
  %.not.i.i.i.i.i.i.i.i.i.i.i205 = icmp eq ptr %i.te, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i205, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i207, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(81) %i.sv) #43
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i207

bb.er:                                            ; preds = %bb.em
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i207: ; preds = %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em
  %.pre271 = load i64, ptr %2, align 8, !tbaa !951
  %.pre272 = load ptr, ptr %i.sp, align 8, !tbaa !1597
  %.pre273 = load ptr, ptr %i.sq, align 8, !tbaa !287 ; 2 uses
  store i64 %.pre271, ptr %i.sv, align 8, !tbaa !951
  store ptr null, ptr %2, align 8, !tbaa !951
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.pre272, ptr %i.tf, align 8, !tbaa !1597
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store ptr %i.th, ptr %i.tg, align 8, !tbaa !283
  %i.ti = icmp eq ptr %.pre273, %i.sr
  %.pre = load i64, ptr %i.ss, align 8, !tbaa !288 ; 2 uses
  br i1 %i.ti, label %.from.390, label %.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.from.390:                                        ; preds = %.from._ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i207.thread, %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i207
  %i.tj = phi i64 [ 0, %.from._ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i207.thread ], [ %.pre, %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i207 ] ; 3 uses
  %i.tk = phi ptr [ %i.ta, %.from._ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i207.thread ], [ %i.th, %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i207 ]
  %i.tl = icmp ult i64 %i.tj, 16
  call void @llvm.assume(i1 %i.tl)
  %i.tm = add nuw nsw i64 %i.tj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.tk, ptr noundef nonnull align 8 dereferenceable(1) %i.sr, i64 %i.tm, i1 false)
  br label %.from.393

.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i207
  store ptr %.pre273, ptr %i.tg, align 8, !tbaa !287
  %i.tn = load i64, ptr %i.sr, align 8, !tbaa !279
  store i64 %i.tn, ptr %i.th, align 8, !tbaa !279
  br label %.from.393

.from.393:                                        ; preds = %.from.390, %.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.to = phi i64 [ %i.tj, %.from.390 ], [ %.pre, %.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.to, ptr %i.tp, align 8, !tbaa !288
  store ptr %i.sr, ptr %i.sq, align 8, !tbaa !287
  store i64 0, ptr %i.ss, align 8, !tbaa !288
  store i8 0, ptr %i.sr, align 8, !tbaa !279
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.tr = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ts = load <2 x i64>, ptr %i.st, align 8, !tbaa !306
  store ptr null, ptr %i.st, align 8, !tbaa !949
  store <2 x i64> %i.ts, ptr %i.tq, align 8, !tbaa !306
  store ptr null, ptr %i.tr, align 8, !tbaa !947
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.tu = load i8, ptr %i.su, align 8, !tbaa !1701, !range !342, !noundef !343
  store i8 %i.tu, ptr %i.tt, align 8, !tbaa !1701
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %i.tv, align 8, !tbaa !954
  store i8 1, ptr %i.sf, align 8, !tbaa !932
  call void @_ZN7coro_io16socket_wrapper_tD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %2) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  br label %bb.es

.body.from.:                                      ; preds = %bb.ek
  %i.tw = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  br label %.from..body

bb.es:                                            ; preds = %.from.393, %.from._ZN2tl6detail21expected_storage_baseIN7coro_io16socket_wrapper_tESt10error_codeLb0ELb1EED2Ev.exit
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ty = load ptr, ptr %.reload.addr446, align 8, !tbaa !923
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 40
  invoke void @_ZN4asio6detail28reactive_socket_service_base7destroyERNS1_24base_implementation_typeE(ptr noundef nonnull align 8 dereferenceable(24) %i.tz, ptr noundef nonnull align 8 dereferenceable(16) %i.tx)
          to label %bb.et unwind label %bb.ev

bb.et:                                            ; preds = %bb.es
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.uc = load ptr, ptr %i.ua, align 8, !tbaa !711
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !718
  invoke void %i.ud(ptr noundef nonnull align 8 dereferenceable(56) %i.ub)
          to label %bb.ex unwind label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ue = landingpad { ptr, i32 }
          catch ptr null
  %i.uf = extractvalue { ptr, i32 } %i.ue, 0
  call void @__clang_call_terminate(ptr %i.uf) #52
  unreachable

bb.ev:                                            ; preds = %bb.es
end_hunk_3
