Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/file_server?download=true
inline.NumInlined: 34981
inline.NumDeleted: 13375
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZN4asio10io_contextC2Ev:bb.a
          cleanup
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !173
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(256) %i.f) #47, !inline_history !13
  br label %.body4

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.ac, align 8, !tbaa !363
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
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 256) #49
  br label %.body4

.body4:                                           ; preds = %bb.h, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ad, %bb.h ], [ %i.y, %bb.f ]
  call void @_ZN4asio17execution_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #47
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN7coro_io6detail23resolve_listen_endpointIN4asio10io_context19basic_executor_typeISaIvELm0EEEEESt8optionalINS2_2ip14basic_endpointINS8_3tcpEEEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtRSt10error_code(ptr dead_on_unwind noalias writable sret(%"class.std::optional.361") align 4 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i16 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::array.390", align 4   ; 4 uses
  %6 = alloca %"struct.std::array.389", align 1   ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %.sroa.06.i.i = alloca [4 x i32], align 4       ; 6 uses
  %7 = alloca %"class.asio::ip::address", align 4 ; 12 uses
  %8 = alloca %"class.asio::ip::basic_resolver", align 8 ; 8 uses
  %9 = alloca %"class.asio::any_io_executor", align 8 ; 12 uses
  %10 = alloca %"class.asio::ip::basic_resolver_results", align 8 ; 7 uses
  %11 = alloca %"class.asio::ip::basic_resolver_query", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #47
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3312)
  %i.b = load ptr, ptr %2, align 8, !tbaa !198, !noalias !3312 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3313)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3314)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47, !noalias !3315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47, !noalias !3315
  store i64 0, ptr %i.a, align 8, !tbaa !294, !noalias !3315
  %i.c = invoke noundef i32 @_ZN4asio6detail10socket_ops9inet_ptonEiPKcPvPmRSt10error_code(i32 noundef 10, ptr noundef %i.b, ptr noundef nonnull %6, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.e, !noalias !3315

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.06.i.i, i8 0, i64 16, i1 false), !alias.scope !3314, !noalias !3316
  br label %_ZN4asio2ip15make_address_v6EPKcRSt10error_code.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.e = load i64, ptr %i.a, align 8, !tbaa !294, !noalias !3315
  %i.f = trunc i64 %i.e to i32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.06.i.i, ptr noundef nonnull align 1 dereferenceable(16) %6, i64 16, i1 false), !noalias !3316
  br label %_ZN4asio2ip15make_address_v6EPKcRSt10error_code.exit.i.i

bb.e:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #48, !noalias !3315
  unreachable

_ZN4asio2ip15make_address_v6EPKcRSt10error_code.exit.i.i: ; preds = %bb.d, %bb.c
  %.sroa.5.0.i.i = phi i32 [ 0, %bb.c ], [ %i.f, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47, !noalias !3315
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47, !noalias !3315
  %i.i = load i32, ptr %4, align 8, !tbaa !390, !noalias !3316
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4asio2ip15make_address_v6EPKcRSt10error_code.exit.i.i
  store i32 1, ptr %7, align 4, !tbaa !712, !alias.scope !3316
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.j, align 4, !tbaa !713, !alias.scope !3316
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.06.i.i, i64 16, i1 false), !tbaa.struct !531
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %.sroa.5.0.i.i, ptr %i.l, align 4, !tbaa !714, !alias.scope !3316
  br label %bb.j

bb.g:                                             ; preds = %_ZN4asio2ip15make_address_v6EPKcRSt10error_code.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47, !noalias !3317
  %i.m = invoke noundef i32 @_ZN4asio6detail10socket_ops9inet_ptonEiPKcPvPmRSt10error_code(i32 noundef 2, ptr noundef %i.b, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN4asio2ip15make_address_v4EPKcRSt10error_code.exit.i.i unwind label %bb.h, !noalias !3317

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #48, !noalias !3317
  unreachable

_ZN4asio2ip15make_address_v4EPKcRSt10error_code.exit.i.i: ; preds = %bb.g
  %i.p = load i32, ptr %5, align 4, !noalias !3317
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47, !noalias !3317
  %i.q = load i32, ptr %4, align 8, !tbaa !390
  %.not7.i.i = icmp eq i32 %i.q, 0
  br i1 %.not7.i.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZN4asio2ip15make_address_v4EPKcRSt10error_code.exit.i.i
  %.inv.i.i.i = icmp sgt i32 %i.m, 0
  %storemerge.i.i.i = select i1 %.inv.i.i.i, i32 %i.p, i32 0
  store i32 0, ptr %7, align 4, !tbaa !712, !alias.scope !3316
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %storemerge.i.i.i, ptr %i.r, align 4, !tbaa !190, !alias.scope !3316
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.s, i8 0, i64 20, i1 false), !alias.scope !3316
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i.i)
  call void @_ZN4asio2ip6detail8endpointC2ERKNS0_7addressEt(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(28) %7, i16 noundef zeroext %3) #47
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.t, align 4, !tbaa !396
  br label %bb.ac

bb.k:                                             ; preds = %_ZN4asio2ip15make_address_v4EPKcRSt10error_code.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %7, i8 0, i64 28, i1 false), !alias.scope !3316
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i.i)
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #52
  store i32 0, ptr %4, align 8, !tbaa !390
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !391
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #47
  %i.w = load i64, ptr %1, align 8, !tbaa !372
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr @_ZZN4asio9execution6detail17any_executor_base16target_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS2_10target_fnsEbPNSt9enable_ifIXntsr7is_sameIT_vEE5valueEvE4typeEE16fns_with_execute, ptr %i.x, align 8, !tbaa !536
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  store ptr @_ZZN4asio9execution6detail17any_executor_base16object_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS2_10object_fnsEPNSt9enable_ifIXaantsr7is_sameIT_vEE5valuentsr7is_sameISC_St10shared_ptrIvEEE5valueEvE4typeEE3fns, ptr %i.y, align 8, !tbaa !537
  store i64 %i.w, ptr %9, align 8, !tbaa !372
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %9, ptr %i.z, align 8, !tbaa !538
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.aa, align 8, !tbaa !541
  invoke void @_ZN4asio6detail14io_object_implINS0_16resolver_serviceINS_2ip3tcpEEENS_15any_io_executorEEC2EiRKS6_(ptr noundef nonnull align 8 dereferenceable(80) %8, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(56) %9)
          to label %_ZN4asio2ip14basic_resolverINS0_3tcpENS_15any_io_executorEEC2ERKS3_.exit unwind label %bb.p

_ZN4asio2ip14basic_resolverINS0_3tcpENS_15any_io_executorEEC2ERKS3_.exit: ; preds = %bb.k
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !537
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !544
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(56) %9)
          to label %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %_ZN4asio2ip14basic_resolverINS0_3tcpENS_15any_io_executorEEC2ERKS3_.exit
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #48
  unreachable

_ZN4asio9execution6detail17any_executor_baseD2Ev.exit: ; preds = %_ZN4asio2ip14basic_resolverINS0_3tcpENS_15any_io_executorEEC2ERKS3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #47
  %i.af = zext i16 %3 to i32                      ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3318)
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
  store ptr %i.al, ptr %12, align 8, !tbaa !194, !alias.scope !3318
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, i8 45, i64 %i.ak, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.ak, ptr %i.am, align 8, !tbaa !197, !alias.scope !3318
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  store i8 0, ptr %i.an, align 1, !tbaa !189
  %i.ao = add nsw i32 %.022.i.i.ph.ph, -1
  br label %.lr.ph.i11.i

._crit_edge.i.i.thread60:                         ; preds = %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.ap, ptr %12, align 8, !tbaa !194, !alias.scope !3318
  store i8 45, ptr %i.ap, align 8, !tbaa !189, !alias.scope !3318
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 1, ptr %i.aq, align 8, !tbaa !197, !alias.scope !3318
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 17
  store i8 0, ptr %i.ar, align 1, !tbaa !189
  br label %bb.n

._crit_edge.i.i.thread:                           ; preds = %.lr.ph.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.as, ptr %12, align 8, !tbaa !194, !alias.scope !3318
  store i16 11565, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 2, ptr %i.at, align 8, !tbaa !197, !alias.scope !3318
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 18
  store i8 0, ptr %i.au, align 2, !tbaa !189
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
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !189, !noalias !3318
  %i.bc = zext i32 %.01819.i.i to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.bc
  store i8 %i.bb, ptr %i.bd, align 1, !tbaa !189
  %i.be = load i8, ptr %i.az, align 2, !tbaa !189, !noalias !3318
  %i.bf = add i32 %.01819.i.i, -1
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.bg
  store i8 %i.be, ptr %i.bh, align 1, !tbaa !189
  %i.bi = add i32 %.01819.i.i, -2
  %i.bj = icmp samesign ugt i32 %.020.i.i, 9999
  br i1 %i.bj, label %.lr.ph.i11.i, label %._crit_edge.i.i, !llvm.loop !38

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
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !189, !noalias !3318
  %i.br = getelementptr inbounds nuw i8, ptr %12, i64 17
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !189
  %i.bs = load i8, ptr %i.bo, align 2, !tbaa !189, !noalias !3318
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
  store i8 %storemerge.i.i, ptr %i.bw, align 1, !tbaa !189
  invoke void @_ZN4asio2ip20basic_resolver_queryINS0_3tcpEEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_NS0_13resolver_base5flagsE(ptr noundef nonnull align 8 dereferenceable(112) %11, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 32)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.bx = load ptr, ptr %8, align 8, !tbaa !719, !noalias !3319
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8
  invoke void @_ZN4asio6detail16resolver_serviceINS_2ip3tcpEE7resolveERSt10shared_ptrIvERKNS2_20basic_resolver_queryIS3_EERSt10error_code(ptr dead_on_unwind nonnull writable sret(%"class.asio::ip::basic_resolver_results") align 8 %10, ptr noundef nonnull align 8 dereferenceable(104) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(112) %11, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN4asio2ip14basic_resolverINS0_3tcpENS_15any_io_executorEE7resolveERKNS0_20basic_resolver_queryIS2_EERSt10error_code.exit unwind label %bb.s

_ZN4asio2ip14basic_resolverINS0_3tcpENS_15any_io_executorEE7resolveERKNS0_20basic_resolver_queryIS2_EERSt10error_code.exit: ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !198 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 96 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4asio2ip14basic_resolverINS0_3tcpENS_15any_io_executorEE7resolveERKNS0_20basic_resolver_queryIS2_EERSt10error_code.exit
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !189
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN4asio2ip14basic_resolverINS0_3tcpENS_15any_io_executorEE7resolveERKNS0_20basic_resolver_queryIS2_EERSt10error_code.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !198 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZN4asio2ip20basic_resolver_queryINS0_3tcpEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !189
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #49
  br label %_ZN4asio2ip20basic_resolver_queryINS0_3tcpEED2Ev.exit

_ZN4asio2ip20basic_resolver_queryINS0_3tcpEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.cl = load ptr, ptr %12, align 8, !tbaa !198  ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bw
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4asio2ip20basic_resolver_queryINS0_3tcpEED2Ev.exit
  %i.cn = load i64, ptr %i.bw, align 8, !tbaa !189
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4asio2ip20basic_resolver_queryINS0_3tcpEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #47
  %i.cp = load i32, ptr %4, align 8, !tbaa !390
  %.not39 = icmp ne i32 %i.cp, 0
  %i.cq = load ptr, ptr %10, align 8              ; 2 uses
  %.not40 = icmp eq ptr %i.cq, null
  %or.cond = select i1 %.not39, i1 true, i1 %.not40
  br i1 %or.cond, label %.critedge.thread, label %bb.u

bb.p:                                             ; preds = %bb.k
  %i.cr = landingpad { ptr, i32 }
          cleanup
  %i.cs = load ptr, ptr %i.y, align 8, !tbaa !537
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !544
  invoke void %i.ct(ptr noundef nonnull align 8 dereferenceable(56) %9)
          to label %_ZN4asio9execution6detail17any_executor_baseD2Ev.exit29 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  call void @__clang_call_terminate(ptr %i.cv) #48
  unreachable

_ZN4asio9execution6detail17any_executor_baseD2Ev.exit29: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #47
  br label %bb.ab

bb.r:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4asio2ip20basic_resolver_queryINS0_3tcpEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %11) #47
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn23 = phi { ptr, i32 } [ %i.cx, %bb.s ], [ %i.cw, %bb.r ]
  %i.cy = load ptr, ptr %12, align 8, !tbaa !198  ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.bw
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.t
  %i.da = load i64, ptr %i.bw, align 8, !tbaa !189
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #47
  call void @_ZN4asio6detail14io_object_implINS0_16resolver_serviceINS_2ip3tcpEEENS_15any_io_executorEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %8) #47
  br label %bb.ab

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !3322
  %i.de = load ptr, ptr %i.cq, align 8, !tbaa !724
  %i.df = getelementptr inbounds nuw [96 x i8], ptr %i.de, i64 %i.dd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(28) %i.df, i64 28, i1 false)
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.u
  %.sink = phi i8 [ 1, %bb.u ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %.sink, ptr %i.dg, align 4, !tbaa !396
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !320 ; 8 uses
  %.not.i.i.i33 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i33, label %_ZN4asio2ip23basic_resolver_iteratorINS0_3tcpEED2Ev.exit37, label %bb.v

bb.v:                                             ; preds = %.critedge.thread
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 4 uses
  %i.dk = load atomic i64, ptr %i.dj acquire, align 8 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 4294967297
  %i.dm = trunc i64 %i.dk to i32                  ; 2 uses
  br i1 %i.dl, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.dj, align 8, !tbaa !322
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  store i32 0, ptr %i.dn, align 4, !tbaa !323
  %i.do = load ptr, ptr %i.di, align 8, !tbaa !173
end_hunk_0
begin_hunk_1_@_ZN7coro_io19tcp_server_acceptor6acceptEv.resume:resume.entry

.noexc101:                                        ; preds = %bb.dn
  unreachable

_ZNSt7promiseIvE8_M_stateEv.exit.i:               ; preds = %bb.dm
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.pg, align 8
  %i.ph = ptrtoint ptr %i.pc to i64
  store i64 %i.ph, ptr %1, align 8, !tbaa !581
  store ptr @_ZNSt17_Function_handlerIFSt10unique_ptrINSt13__future_base12_Result_baseENS2_8_DeleterEEvENS1_13_State_baseV27_SetterIvvEEE9_M_invokeERKSt9_Any_data, ptr %i.pf, align 8, !tbaa !603
  store ptr @_ZNSt17_Function_handlerIFSt10unique_ptrINSt13__future_base12_Result_baseENS2_8_DeleterEEvENS1_13_State_baseV27_SetterIvvEEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.pe, align 8, !tbaa !297
  invoke void @_ZNSt13__future_base13_State_baseV213_M_set_resultESt8functionIFSt10unique_ptrINS_12_Result_baseENS3_8_DeleterEEvEEb(ptr noundef nonnull align 8 dereferenceable(28) %i.pd, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext false)
          to label %bb.do unwind label %bb.dr

bb.do:                                            ; preds = %_ZNSt7promiseIvE8_M_stateEv.exit.i
  %i.pi = load ptr, ptr %i.pe, align 8, !tbaa !297 ; 2 uses
  %.not.i.i100 = icmp eq ptr %i.pi, null
  br i1 %.not.i.i100, label %_ZNSt7promiseIvE9set_valueEv.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.pj = invoke noundef zeroext i1 %i.pi(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt7promiseIvE9set_valueEv.exit unwind label %bb.dq ; 0 uses

bb.dq:                                            ; preds = %bb.dp
  %i.pk = landingpad { ptr, i32 }
          catch ptr null
  %i.pl = extractvalue { ptr, i32 } %i.pk, 0
  call void @__clang_call_terminate(ptr %i.pl) #48
  unreachable

bb.dr:                                            ; preds = %_ZNSt7promiseIvE8_M_stateEv.exit.i
  %i.pm = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.pn = load ptr, ptr %i.pe, align 8, !tbaa !297 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.pn, null
  br i1 %.not.i2.i, label %.from..body, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.po = invoke noundef zeroext i1 %i.pn(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %.from..body unwind label %bb.dt ; 0 uses

bb.dt:                                            ; preds = %bb.ds
  %i.pp = landingpad { ptr, i32 }
          catch ptr null
  %i.pq = extractvalue { ptr, i32 } %i.pp, 0
  call void @__clang_call_terminate(ptr %i.pq) #48
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
  %i.pu = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #47 ; 2 uses
  %i.pv = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv()
          to label %bb.dx unwind label %.body.from.407 ; 3 uses

bb.dx:                                            ; preds = %bb.dw
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 8 ; 2 uses
  %i.px = load atomic i64, ptr %i.pw monotonic, align 8
  %i.py = icmp slt i64 %i.px, 1
  br i1 %i.py, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit185.thread, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit185

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit185: ; preds = %bb.dx
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pv, i64 24
  %.sroa.0.0.copyload.i2.i.i183 = load i64, ptr %i.pz, align 8, !tbaa !294
  %i.qa = sub nsw i64 %i.pu, %.sroa.0.0.copyload.i2.i.i183
  %i.qb = sdiv i64 %i.qa, 1000000
  %i.qc = load atomic i64, ptr %i.pw monotonic, align 8
  %i.qd = srem i64 %i.qb, %i.qc
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  %i.qf = load atomic i64, ptr %i.qe monotonic, align 8
  %i.qg = icmp slt i64 %i.qd, %i.qf
  br i1 %i.qg, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit185.thread, label %bb.ee

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit185.thread: ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit185, %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  store i8 91, ptr %4, align 1, !alias.scope !6944
  %.sroa.0.i.sroa.4.0..sroa_idx.i186 = getelementptr inbounds nuw i8, ptr %4, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.0.i.sroa.4.0..sroa_idx.i186, ptr noundef nonnull align 1 dereferenceable(23) @__const._ZZN7coro_io19tcp_server_acceptor6acceptEvENKUlvE4_clEv.prefix, i64 23, i1 false), !tbaa.struct !314
  %.sroa.0.i.sroa.5.0..sroa_idx.i187 = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0.i.sroa.5.0..sroa_idx.i187, ptr noundef nonnull align 1 dereferenceable(3) @.str.88, i64 3, i1 false), !tbaa.struct !315
  invoke void @_ZN7easylog8record_tC2INSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEEET_NS_8SeverityESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %5, i64 %i.pu, i32 noundef 5, i64 26, ptr nonnull %4)
          to label %bb.dy unwind label %.from.383

bb.dy:                                            ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit185.thread
  %i.qh = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA15_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 1 dereferenceable(15) @.str.93)
          to label %bb.dz unwind label %.from.380

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  %i.qi = load ptr, ptr %.sroa.5.0.copyload.i, align 8, !tbaa !173, !noalias !6945
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 32
  %i.qk = load ptr, ptr %i.qj, align 8, !noalias !6945
  invoke void %i.qk(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.5.0.copyload.i, i32 noundef %.sroa.02.0.copyload.i)
          to label %_ZNKSt10error_code7messageB5cxx11Ev.exit190 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198.from., !inline_history !16

_ZNKSt10error_code7messageB5cxx11Ev.exit190:      ; preds = %bb.dz
  %i.ql = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.qh, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.ea unwind label %bb.ed

bb.ea:                                            ; preds = %_ZNKSt10error_code7messageB5cxx11Ev.exit190
  %i.qm = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv()
          to label %bb.eb unwind label %bb.ed

bb.eb:                                            ; preds = %bb.ea
  %i.qn = load atomic i8, ptr @_ZN7easylog6loggerILm0EE13has_destruct_E seq_cst, align 1, !range !316, !noundef !317
  %i.qo = trunc nuw i8 %i.qn to i1
  br i1 %i.qo, label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit192, label %bb.ec, !prof !313

bb.ec:                                            ; preds = %bb.eb
  invoke void @_ZN7easylog6loggerILm0EE5writeERNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(64) %i.qm, ptr noundef nonnull align 8 dereferenceable(80) %i.ql)
          to label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit192 unwind label %bb.ed

_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit192: ; preds = %bb.ec, %bb.eb
  %i.qp = load ptr, ptr %3, align 8, !tbaa !198   ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.qr = icmp eq ptr %i.qp, %i.qq
  br i1 %i.qr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit192
  %i.qs = load i64, ptr %i.qq, align 8, !tbaa !189
  %i.qt = add i64 %i.qs, 1
  call void @_ZdlPvm(ptr noundef %i.qp, i64 noundef %i.qt) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit192, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %5) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
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
  %i.qz = load ptr, ptr %3, align 8, !tbaa !198   ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.rb = icmp eq ptr %i.qz, %i.ra
  br i1 %i.rb, label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %bb.ed
  %i.rc = load i64, ptr %i.ra, align 8, !tbaa !189
  %i.rd = add i64 %i.rc, 1
  call void @_ZdlPvm(ptr noundef %i.qz, i64 noundef %i.rd) #49
  br label %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198

.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198: ; preds = %bb.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198.from., %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196
  %.pn54 = phi { ptr, i32 } [ %i.qx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198.from. ], [ %i.qy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196 ], [ %i.qy, %bb.ed ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  br label %.from.382

.from.382:                                        ; preds = %.from.380, %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198
  %.pn54.pn = phi { ptr, i32 } [ %.pn54, %.from._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198 ], [ %i.qw, %.from.380 ]
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %5) #47
  br label %.body.from.406

.body.from.406:                                   ; preds = %.from.383, %.from.382
  %.pn54.pn.pn = phi { ptr, i32 } [ %.pn54.pn, %.from.382 ], [ %i.qv, %.from.383 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  br label %.from..body

bb.ee:                                            ; preds = %_ZNSt7promiseIvE9set_valueEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit185, %bb.dv
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.rg = load i8, ptr %i.re, align 8, !tbaa !772
  switch i8 %i.rg, label %bb.ej [
    i8 -1, label %_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEEE12return_valueIS8_EEvOT_Qsr3stdE16is_convertible_vIOTL0__SB_E.exit.from._ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i.thread
    i8 0, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i
    i8 1, label %bb.ef
    i8 2, label %bb.eh
  ], !prof !792

_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEEE12return_valueIS8_EEvOT_Qsr3stdE16is_convertible_vIOTL0__SB_E.exit.from._ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i.thread: ; preds = %bb.ee
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store i8 0, ptr %17, align 8, !tbaa !794
  br label %.from._ZN2tl6detail21expected_storage_baseIN7coro_io16socket_wrapper_tESt10error_codeLb0ELb1EED2Ev.exit

bb.ef:                                            ; preds = %bb.ee
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ri = load i8, ptr %i.rh, align 8, !tbaa !794, !range !316, !noundef !317
  %i.rj = trunc nuw i8 %i.ri to i1
  br i1 %i.rj, label %bb.eg, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i

bb.eg:                                            ; preds = %bb.ef
  call void @_ZN7coro_io16socket_wrapper_tD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(81) %i.rf) #47
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i

bb.eh:                                            ; preds = %bb.ee
  %i.rk = load ptr, ptr %i.rf, align 8, !tbaa !523
  %.not.i.i.i.i.i.i.i.i.i.i.i204 = icmp eq ptr %i.rk, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i204, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(81) %i.rf) #47
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i

bb.ej:                                            ; preds = %bb.ee
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i: ; preds = %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %.from._ZN2tl6detail21expected_storage_baseIN7coro_io16socket_wrapper_tESt10error_codeLb0ELb1EED2Ev.exit

.from._ZN2tl6detail21expected_storage_baseIN7coro_io16socket_wrapper_tESt10error_codeLb0ELb1EED2Ev.exit: ; preds = %_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEEE12return_valueIS8_EEvOT_Qsr3stdE16is_convertible_vIOTL0__SB_E.exit.from._ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i.thread, %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i
  %19 = phi ptr [ %17, %_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEEE12return_valueIS8_EEvOT_Qsr3stdE16is_convertible_vIOTL0__SB_E.exit.from._ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i.thread ], [ %18, %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i ]
  store i32 %.sroa.02.0.copyload.i, ptr %i.rf, align 8, !tbaa !190
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.4108.0..sroa_idx, align 8, !tbaa !387
  store i8 0, ptr %19, align 8, !tbaa !794
  store i8 1, ptr %i.re, align 8, !tbaa !772
  br label %bb.es

bb.ek:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  call void @llvm.experimental.noalias.scope.decl(metadata !6946)
  %i.rl = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #51
          to label %.noexc199 unwind label %.body.from. ; 11 uses

.noexc199:                                        ; preds = %bb.ek
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.rp = load ptr, ptr %.reload.addr446, align 8, !tbaa !763, !noalias !6946
  store ptr %i.rp, ptr %i.rl, align 8, !tbaa !763, !noalias !6946
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rl, i64 24 ; 2 uses
  store i32 2, ptr %i.rq, align 8, !noalias !6946
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rl, i64 32
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rl, i64 56
  %i.rt = load ptr, ptr %i.rn, align 8, !tbaa !537, !noalias !6946 ; 2 uses
  store ptr %i.rt, ptr %i.rs, align 8, !tbaa !537, !noalias !6946
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rl, i64 72
  %i.rv = load ptr, ptr %i.rm, align 8, !tbaa !536, !noalias !6946
  store ptr %i.rv, ptr %i.ru, align 8, !tbaa !536, !noalias !6946
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !560, !noalias !6946
  invoke void %i.rx(ptr noundef nonnull align 8 dereferenceable(56) %i.rr, ptr noundef nonnull align 8 dereferenceable(56) %i.ro)
          to label %bb.em unwind label %bb.el, !noalias !6946

bb.el:                                            ; preds = %.noexc199
  %i.ry = landingpad { ptr, i32 }
          catch ptr null
  %i.rz = extractvalue { ptr, i32 } %i.ry, 0
  call void @__clang_call_terminate(ptr %i.rz) #48, !noalias !6946
  unreachable

bb.em:                                            ; preds = %.noexc199
  %.reload.addr444 = getelementptr inbounds nuw i8, ptr %0, i64 328
  %.reload445 = load ptr, ptr %.reload.addr444, align 8, !tbaa !6924 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rl, i64 80
  %i.si = load ptr, ptr %i.sc, align 8, !tbaa !541, !noalias !6946
  store ptr %i.si, ptr %i.sh, align 8, !tbaa !541, !noalias !6946
  %i.sj = load i32, ptr %i.sd, align 8, !tbaa !764, !noalias !6946
  store i32 %i.sj, ptr %i.sg, align 8, !tbaa !764, !noalias !6946
  store i32 -1, ptr %i.sd, align 8, !tbaa !764, !noalias !6946
  %i.sk = load i8, ptr %i.sb, align 4, !tbaa !769, !noalias !6946
  %i.sl = getelementptr inbounds nuw i8, ptr %i.rl, i64 12
  store i8 %i.sk, ptr %i.sl, align 4, !tbaa !769, !noalias !6946
  store i8 0, ptr %i.sb, align 4, !tbaa !769, !noalias !6946
  %i.sm = getelementptr inbounds nuw i8, ptr %i.rl, i64 16
  %i.sn = load ptr, ptr %i.sa, align 8, !tbaa !469, !noalias !6946
  store ptr %i.sn, ptr %i.sm, align 8, !tbaa !469, !noalias !6946
  store ptr null, ptr %i.sa, align 8, !tbaa !469, !noalias !6946
  %i.so = load i32, ptr %i.se, align 8, !tbaa !190, !noalias !6946
  store i32 %i.so, ptr %i.rq, align 8, !tbaa !190, !noalias !6946
  store i32 2, ptr %i.se, align 8, !tbaa !190, !noalias !6946
  store ptr %i.rl, ptr %2, align 8, !tbaa !791, !alias.scope !6946
  %i.sp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %.reload445, ptr %i.sp, align 8, !tbaa !1434
  %i.sq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 7 uses
  store ptr %i.sr, ptr %i.sq, align 8, !tbaa !194
  %i.ss = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store i64 0, ptr %i.ss, align 8, !tbaa !197
  store i8 0, ptr %i.sr, align 8, !tbaa !189
  %i.st = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.su = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.st, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.su, align 8, !tbaa !1521
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.sw = load i8, ptr %i.sf, align 8, !tbaa !772
  switch i8 %i.sw, label %bb.er [
    i8 -1, label %.from._ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i207.thread
    i8 0, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i207
    i8 1, label %bb.en
    i8 2, label %bb.ep
  ], !prof !792

.from._ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i207.thread: ; preds = %bb.em
  %i.sx = ptrtoint ptr %i.rl to i64
  store i64 %i.sx, ptr %i.sv, align 8, !tbaa !791
  store ptr null, ptr %2, align 8, !tbaa !791
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.reload445, ptr %i.sy, align 8, !tbaa !1434
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.ta, ptr %i.sz, align 8, !tbaa !194
  br label %.from.390

bb.en:                                            ; preds = %bb.em
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.tc = load i8, ptr %i.tb, align 8, !tbaa !794, !range !316, !noundef !317
  %i.td = trunc nuw i8 %i.tc to i1
  br i1 %i.td, label %bb.eo, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i207

bb.eo:                                            ; preds = %bb.en
  call void @_ZN7coro_io16socket_wrapper_tD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(81) %i.sv) #47
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i207

bb.ep:                                            ; preds = %bb.em
  %i.te = load ptr, ptr %i.sv, align 8, !tbaa !523
  %.not.i.i.i.i.i.i.i.i.i.i.i205 = icmp eq ptr %i.te, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i205, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i207, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(81) %i.sv) #47
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i207

bb.er:                                            ; preds = %bb.em
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN2tl8expectedIN7coro_io16socket_wrapper_tESt10error_codeEENSt15__exception_ptr13exception_ptrEEE8_M_resetEv.exit.i.i207: ; preds = %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em
  %.pre271 = load i64, ptr %2, align 8, !tbaa !791
  %.pre272 = load ptr, ptr %i.sp, align 8, !tbaa !1434
  %.pre273 = load ptr, ptr %i.sq, align 8, !tbaa !198 ; 2 uses
  store i64 %.pre271, ptr %i.sv, align 8, !tbaa !791
  store ptr null, ptr %2, align 8, !tbaa !791
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.pre272, ptr %i.tf, align 8, !tbaa !1434
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store ptr %i.th, ptr %i.tg, align 8, !tbaa !194
  %i.ti = icmp eq ptr %.pre273, %i.sr
  %.pre = load i64, ptr %i.ss, align 8, !tbaa !197 ; 2 uses
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
  store ptr %.pre273, ptr %i.tg, align 8, !tbaa !198
  %i.tn = load i64, ptr %i.sr, align 8, !tbaa !189
  store i64 %i.tn, ptr %i.th, align 8, !tbaa !189
  br label %.from.393

.from.393:                                        ; preds = %.from.390, %.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.to = phi i64 [ %i.tj, %.from.390 ], [ %.pre, %.from._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.to, ptr %i.tp, align 8, !tbaa !197
  store ptr %i.sr, ptr %i.sq, align 8, !tbaa !198
  store i64 0, ptr %i.ss, align 8, !tbaa !197
  store i8 0, ptr %i.sr, align 8, !tbaa !189
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.tr = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ts = load <2 x i64>, ptr %i.st, align 8, !tbaa !332
  store ptr null, ptr %i.st, align 8, !tbaa !789
  store <2 x i64> %i.ts, ptr %i.tq, align 8, !tbaa !332
  store ptr null, ptr %i.tr, align 8, !tbaa !787
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.tu = load i8, ptr %i.su, align 8, !tbaa !1521, !range !316, !noundef !317
  store i8 %i.tu, ptr %i.tt, align 8, !tbaa !1521
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %i.tv, align 8, !tbaa !794
  store i8 1, ptr %i.sf, align 8, !tbaa !772
  call void @_ZN7coro_io16socket_wrapper_tD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %2) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  br label %bb.es

.body.from.:                                      ; preds = %bb.ek
  %i.tw = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  br label %.from..body

bb.es:                                            ; preds = %.from.393, %.from._ZN2tl6detail21expected_storage_baseIN7coro_io16socket_wrapper_tESt10error_codeLb0ELb1EED2Ev.exit
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ty = load ptr, ptr %.reload.addr446, align 8, !tbaa !763
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 40
  invoke void @_ZN4asio6detail28reactive_socket_service_base7destroyERNS1_24base_implementation_typeE(ptr noundef nonnull align 8 dereferenceable(24) %i.tz, ptr noundef nonnull align 8 dereferenceable(16) %i.tx)
          to label %bb.et unwind label %bb.ev

bb.et:                                            ; preds = %bb.es
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.uc = load ptr, ptr %i.ua, align 8, !tbaa !537
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !544
  invoke void %i.ud(ptr noundef nonnull align 8 dereferenceable(56) %i.ub)
          to label %bb.ex unwind label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ue = landingpad { ptr, i32 }
          catch ptr null
  %i.uf = extractvalue { ptr, i32 } %i.ue, 0
  call void @__clang_call_terminate(ptr %i.uf) #48
  unreachable

bb.ev:                                            ; preds = %bb.es
end_hunk_1
