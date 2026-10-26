Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/xds_listener_parser?download=true
inline.NumInlined: 4722
inline.NumDeleted: 2564
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core19XdsListenerResource14FilterChainMap8SourceIpEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE17_M_construct_nodeIJRA1_KcSB_EEEvPSt13_Rb_tree_nodeISC_EDpOT_:bb.a
  store ptr %i.r, ptr %i.u, align 8, !tbaa !79
  store ptr %i.r, ptr %i.w, align 8, !tbaa !80
  store i64 0, ptr %i.z, align 8, !tbaa !103
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 224
  store ptr null, ptr %i.ac, align 8, !tbaa !78
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 232
  store ptr %i.o, ptr %i.ad, align 8, !tbaa !79
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 240
  store ptr %i.o, ptr %i.ae, align 8, !tbaa !80
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 248
  store i64 0, ptr %i.af, align 8, !tbaa !103
  br label %bb.i

bb.g:                                             ; preds = %.noexc.i.i
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = call ptr @__cxa_begin_catch(ptr %i.ah) #30 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 256) #35
  invoke void @__cxa_rethrow() #34
          to label %bb.l unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i.i.i = phi i32 [ 0, %bb.f ], [ %i.s, %bb.e ]
  store i32 %.sink.i.i.i.i.i.i, ptr %i.o, align 8, !tbaa !77
  ret void

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.aj

bb.k:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #31
  unreachable

bb.l:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN9grpc_core12_GLOBAL__N_131AddFilterChainDataForSourcePortERKNS0_11FilterChainEjPSt3mapItNS_19XdsListenerResource14FilterChainMap24FilterChainDataSharedPtrESt4lessItESaISt4pairIKtS7_EEEPNS_16ValidationErrorsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %8 = alloca %"struct.grpc_core::XdsListenerResource::FilterChainMap::FilterChainDataSharedPtr", align 16 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %11 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 49 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72   ; 2 uses
  %i.f = load <2 x ptr>, ptr %i.b, align 8, !tbaa !118
  store <2 x ptr> %i.f, ptr %8, align 16, !tbaa !118
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN9grpc_core19XdsListenerResource15FilterChainDataEEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !133
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !133
  br label %_ZNSt10shared_ptrIN9grpc_core19XdsListenerResource15FilterChainDataEEC2ERKS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !133
  br label %_ZNSt10shared_ptrIN9grpc_core19XdsListenerResource15FilterChainDataEEC2ERKS3_.exit

_ZNSt10shared_ptrIN9grpc_core19XdsListenerResource15FilterChainDataEEC2ERKS3_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.l = phi i32 [ %1, %bb.a ], [ %1, %bb.c ], [ %.pre, %bb.d ]
  %i.m = trunc i32 %i.l to i16                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !78   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt10shared_ptrIN9grpc_core19XdsListenerResource15FilterChainDataEEC2ERKS3_.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.o, %_ZNSt10shared_ptrIN9grpc_core19XdsListenerResource15FilterChainDataEEC2ERKS3_.exit ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.p, %_ZNSt10shared_ptrIN9grpc_core19XdsListenerResource15FilterChainDataEEC2ERKS3_.exit ]
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.r = load i16, ptr %i.q, align 2, !tbaa !197
  %i.s = icmp ult i16 %i.r, %i.m                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.s, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.s, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !155 ; 2 uses
  %.not.i.i.i.i13 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i13, label %_ZNSt3mapItN9grpc_core19XdsListenerResource14FilterChainMap24FilterChainDataSharedPtrESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !507

_ZNSt3mapItN9grpc_core19XdsListenerResource14FilterChainMap24FilterChainDataSharedPtrESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.t = icmp eq ptr %.19.i.i.i.i, %i.p
  br i1 %i.t, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapItN9grpc_core19XdsListenerResource14FilterChainMap24FilterChainDataSharedPtrESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.v = load i16, ptr %i.u, align 2, !tbaa !197
  %i.w = icmp ugt i16 %i.v, %i.m
  br i1 %i.w, label %.critedge.i, label %bb.f

.critedge.i:                                      ; preds = %bb.e, %_ZNSt3mapItN9grpc_core19XdsListenerResource14FilterChainMap24FilterChainDataSharedPtrESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i, %_ZNSt10shared_ptrIN9grpc_core19XdsListenerResource15FilterChainDataEEC2ERKS3_.exit
  %.08.lcssa.i.i.i22.i = phi ptr [ %.19.i.i.i.i, %bb.e ], [ %.19.i.i.i.i, %_ZNSt3mapItN9grpc_core19XdsListenerResource14FilterChainMap24FilterChainDataSharedPtrESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i ], [ %i.p, %_ZNSt10shared_ptrIN9grpc_core19XdsListenerResource15FilterChainDataEEC2ERKS3_.exit ]
  %i.x = invoke ptr @_ZNSt8_Rb_treeItSt4pairIKtN9grpc_core19XdsListenerResource14FilterChainMap24FilterChainDataSharedPtrEESt10_Select1stIS6_ESt4lessItESaIS6_EE22_M_emplace_hint_uniqueIJRjS5_EEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr %.08.lcssa.i.i.i22.i, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.f unwind label %bb.cs      ; 0 uses

bb.f:                                             ; preds = %bb.e, %.critedge.i
  %.sroa.3.0.i = phi i1 [ false, %bb.e ], [ true, %.critedge.i ]
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !72   ; 8 uses
  %.not.i.i.i14 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i14, label %_ZN9grpc_core19XdsListenerResource14FilterChainMap24FilterChainDataSharedPtrD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.z, align 8, !tbaa !66
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !67
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !69
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #30, !inline_history !508
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !69
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #30, !inline_history !508
  br label %_ZN9grpc_core19XdsListenerResource14FilterChainMap24FilterChainDataSharedPtrD2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i15 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i15, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !133
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.ac, %bb.j ], [ %i.am, %bb.k ]
  %i.an = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.an, label %bb.l, label %_ZN9grpc_core19XdsListenerResource14FilterChainMap24FilterChainDataSharedPtrD2Ev.exit, !prof !36

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #30
  br label %_ZN9grpc_core19XdsListenerResource14FilterChainMap24FilterChainDataSharedPtrD2Ev.exit

_ZN9grpc_core19XdsListenerResource14FilterChainMap24FilterChainDataSharedPtrD2Ev.exit: ; preds = %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br i1 %.sroa.3.0.i, label %bb.cv, label %bb.m

bb.m:                                             ; preds = %_ZN9grpc_core19XdsListenerResource14FilterChainMap24FilterChainDataSharedPtrD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  store i64 60, ptr %10, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.89, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !521)
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  store ptr %i.ap, ptr %12, align 8, !tbaa !58, !alias.scope !521
  store i8 123, ptr %i.ap, align 8, !tbaa !62, !alias.scope !521
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 1, ptr %i.aq, align 8, !tbaa !63, !alias.scope !521
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 17
  store i8 0, ptr %i.ar, align 1, !tbaa !62, !alias.scope !521
  %i.as = load i32, ptr %0, align 8, !tbaa !185, !noalias !521
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %bb.ab, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 17, ptr nonnull @.str.91)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !521
  %i.at = load i32, ptr %0, align 8, !tbaa !185, !noalias !521 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.au = icmp ult i32 %i.at, 10
  br i1 %i.au, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.o, %bb.u
  %.030.i.i.i = phi i32 [ %i.bc, %bb.u ], [ 1, %bb.o ] ; 4 uses
  %.02329.i.i.i = phi i32 [ %i.bb, %bb.u ], [ %i.at, %bb.o ] ; 5 uses
  %i.av = icmp ult i32 %.02329.i.i.i, 100
  br i1 %i.av, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.aw = add i32 %.030.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.ax = icmp ult i32 %.02329.i.i.i, 1000
  br i1 %i.ax, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ay = add i32 %.030.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.az = icmp ult i32 %.02329.i.i.i, 10000
  br i1 %i.az, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ba = add i32 %.030.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.bb = udiv i32 %.02329.i.i.i, 10000
  %i.bc = add i32 %.030.i.i.i, 4                  ; 2 uses
  %i.bd = icmp ult i32 %.02329.i.i.i, 100000
  br i1 %i.bd, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !513

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i:  ; preds = %bb.u, %bb.t, %bb.r, %bb.p, %bb.o
  %.022.i.i.i = phi i32 [ %i.ba, %bb.t ], [ %i.aw, %bb.p ], [ %i.ay, %bb.r ], [ 1, %bb.o ], [ %i.bc, %bb.u ]
  %i.be = zext i32 %.022.i.i.i to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.bf, ptr %4, align 8, !tbaa !58, !alias.scope !522, !noalias !521
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.be, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i unwind label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i
  %i.bg = load ptr, ptr %4, align 8, !tbaa !61, !alias.scope !522, !noalias !521 ; 4 uses
  %i.bh = icmp ugt i32 %i.at, 99
  br i1 %i.bh, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i85.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !63, !alias.scope !522, !noalias !521
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = add i32 %i.bk, -1
  br label %.lr.ph.i2.i.i

.lr.ph.i2.i.i:                                    ; preds = %.lr.ph.i2.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi i32 [ %i.bo, %.lr.ph.i2.i.i ], [ %i.at, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.01819.i.i.i = phi i32 [ %i.bz, %.lr.ph.i2.i.i ], [ %i.bl, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.bm = urem i32 %.020.i.i.i, 100
  %i.bn = shl nuw nsw i32 %i.bm, 1
  %i.bo = udiv i32 %.020.i.i.i, 100               ; 2 uses
  %i.bp = zext nneg i32 %i.bn to i64
  %i.bq = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !62, !noalias !523
  %i.bt = zext i32 %.01819.i.i.i to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bt
  store i8 %i.bs, ptr %i.bu, align 1, !tbaa !62
  %i.bv = load i8, ptr %i.bq, align 2, !tbaa !62, !noalias !523
  %i.bw = add i32 %.01819.i.i.i, -1
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bx
  store i8 %i.bv, ptr %i.by, align 1, !tbaa !62
  %i.bz = add i32 %.01819.i.i.i, -2
  %i.ca = icmp ugt i32 %.020.i.i.i, 9999
  br i1 %i.ca, label %.lr.ph.i2.i.i, label %._crit_edge.i.i85.i, !llvm.loop !514

._crit_edge.i.i85.i:                              ; preds = %.lr.ph.i2.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i
  %.0.lcssa.i.i.i = phi i32 [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i ], [ %i.bo, %.lr.ph.i2.i.i ] ; 3 uses
  %i.cb = icmp samesign ugt i32 %.0.lcssa.i.i.i, 9
  br i1 %i.cb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i85.i
  %i.cc = shl nuw nsw i32 %.0.lcssa.i.i.i, 1
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.cd ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !62, !noalias !523
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !62
  %i.ci = load i8, ptr %i.ce, align 2, !tbaa !62, !noalias !523
  br label %_ZNSt7__cxx119to_stringEj.exit.i

bb.w:                                             ; preds = %._crit_edge.i.i85.i
  %i.cj = trunc nuw nsw i32 %.0.lcssa.i.i.i to i8
  %i.ck = or disjoint i8 %i.cj, 48
  br label %_ZNSt7__cxx119to_stringEj.exit.i

bb.x:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #31
  unreachable

_ZNSt7__cxx119to_stringEj.exit.i:                 ; preds = %bb.w, %bb.v
  %storemerge.i.i.i = phi i8 [ %i.ck, %bb.w ], [ %i.ci, %bb.v ]
  store i8 %storemerge.i.i.i, ptr %i.bg, align 1, !tbaa !62
  %i.cn = load ptr, ptr %4, align 8, !tbaa !61, !noalias !521
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !63, !noalias !521
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 %i.cp, ptr %i.cn)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %_ZNSt7__cxx119to_stringEj.exit.i
  %i.cq = load ptr, ptr %4, align 8, !tbaa !61, !noalias !521 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.bf
  br i1 %i.cr, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.y
  %i.cs = load i64, ptr %i.bf, align 8, !tbaa !62, !noalias !521
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #35
  br label %bb.aa

bb.z:                                             ; preds = %_ZNSt7__cxx119to_stringEj.exit.i
  %i.cu = landingpad { ptr, i32 }
          cleanup
  %i.cv = load ptr, ptr %4, align 8, !tbaa !61, !noalias !521 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.bf
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86.i: ; preds = %bb.z
  %i.cx = load i64, ptr %i.bf, align 8, !tbaa !62, !noalias !521
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !521
  br label %.loopexit.split-lp.i

bb.aa:                                            ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !521
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !174, !noalias !521
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !174, !noalias !521
  %i.dd = icmp eq ptr %i.da, %i.dc
  br i1 %i.dd, label %bb.al, label %bb.ac

bb.ab:                                            ; preds = %bb.m
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %14 = load ptr, ptr %13, align 8, !tbaa !174, !noalias !521
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %16 = load ptr, ptr %15, align 8, !tbaa !174, !noalias !521
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %bb.al, label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 2, ptr nonnull @.str.92)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %18 = phi ptr [ %13, %bb.ab ], [ %i.cz, %bb.ac ]
  %19 = phi ptr [ %15, %bb.ab ], [ %i.db, %bb.ac ]
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 15, ptr nonnull @.str.93)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  %i.de = load ptr, ptr %18, align 8, !tbaa !174, !noalias !521 ; 3 uses
  %i.df = load ptr, ptr %19, align 8, !tbaa !174, !noalias !521 ; 3 uses
  %.not211240.i = icmp eq ptr %i.de, %i.df
  br i1 %.not211240.i, label %._crit_edge.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30, !noalias !521
  invoke void @_ZNK9grpc_core19XdsListenerResource14FilterChainMap9CidrRange8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 4 dereferenceable(136) %i.de)
          to label %bb.ag unwind label %.loopexit.split-lp290.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af
  %i.di = load ptr, ptr %5, align 8, !tbaa !61, !noalias !521
  %i.dj = load i64, ptr %i.dg, align 8, !tbaa !63, !noalias !521
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 %i.dj, ptr %i.di)
          to label %bb.ah unwind label %.loopexit.split-lp295.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  %i.dk = load ptr, ptr %5, align 8, !tbaa !61, !noalias !521 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.dh
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.peel.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.peel.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.peel.i: ; preds = %bb.ah
  %i.dm = load i64, ptr %i.dh, align 8, !tbaa !62, !noalias !521
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.peel.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.peel.i: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.peel.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !521
  %i.do = getelementptr inbounds nuw i8, ptr %i.de, i64 136 ; 2 uses
  %.not211.peel.i = icmp eq ptr %i.do, %i.df
  br i1 %.not211.peel.i, label %._crit_edge.i, label %.peel.next.i

._crit_edge.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.peel.i, %bb.ae
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 1, ptr nonnull @.str.94)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.peel.next.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.peel.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.i
  %.sroa.0201.0241.i = phi ptr [ %i.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.i ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.peel.i ] ; 2 uses
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 2, ptr nonnull @.str.92)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %.peel.next.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30, !noalias !521
  invoke void @_ZNK9grpc_core19XdsListenerResource14FilterChainMap9CidrRange8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 4 dereferenceable(136) %.sroa.0201.0241.i)
          to label %bb.aj unwind label %.loopexit.split-lp290.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %bb.ai
  %i.dp = load ptr, ptr %5, align 8, !tbaa !61, !noalias !521
  %i.dq = load i64, ptr %i.dg, align 8, !tbaa !63, !noalias !521
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 %i.dq, ptr %i.dp)
          to label %bb.ak unwind label %.loopexit.split-lp295.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.aj
  %i.dr = load ptr, ptr %5, align 8, !tbaa !61, !noalias !521 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.dh
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.i: ; preds = %bb.ak
  %i.dt = load i64, ptr %i.dh, align 8, !tbaa !62, !noalias !521
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !521
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0201.0241.i, i64 136 ; 2 uses
  %.not211.i = icmp eq ptr %i.dv, %i.df
  br i1 %.not211.i, label %._crit_edge.i, label %.peel.next.i, !llvm.loop !515

.loopexit.split-lp290.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ai, %bb.af
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96.i

.loopexit.split-lp295.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aj, %bb.ag
  %lpad.loopexit.split-lp212 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dw = load ptr, ptr %5, align 8, !tbaa !61, !noalias !521 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.dh
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94.i: ; preds = %.loopexit.split-lp295.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dy = load i64, ptr %i.dh, align 8, !tbaa !62, !noalias !521
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96.i: ; preds = %.loopexit.split-lp295.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp290.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94.i
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp212, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp290.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp212, %.loopexit.split-lp295.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !521
  br label %.loopexit.split-lp.i

bb.al:                                            ; preds = %._crit_edge.i, %bb.ab, %bb.aa
  %20 = phi i1 [ false, %bb.aa ], [ false, %._crit_edge.i ], [ true, %bb.ab ] ; 2 uses
  %.157.i = phi i8 [ 0, %bb.aa ], [ 0, %._crit_edge.i ], [ 1, %bb.ab ]
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !187, !noalias !521
  switch i32 %i.eb, label %bb.aq [
    i32 1, label %bb.am
    i32 2, label %bb.ao
  ]

bb.am:                                            ; preds = %bb.al
  br i1 %20, label %.invoke.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 2, ptr nonnull @.str.92)
          to label %.invoke.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.invoke.i:                                        ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am
  %i.ec = phi i64 [ 31, %bb.am ], [ 31, %bb.an ], [ 20, %bb.ap ], [ 20, %bb.ao ]
  %i.ed = phi ptr [ @.str.95, %bb.am ], [ @.str.95, %bb.an ], [ @.str.96, %bb.ap ], [ @.str.96, %bb.ao ]
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 %i.ec, ptr nonnull %i.ed)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %bb.al
  br i1 %20, label %.invoke.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 2, ptr nonnull @.str.92)
          to label %.invoke.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %.invoke.i, %bb.al
  %.258.i = phi i8 [ %.157.i, %bb.al ], [ 0, %.invoke.i ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !174, !noalias !521
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !174, !noalias !521
  %i.ei = icmp eq ptr %i.ef, %i.eh
  br i1 %i.ei, label %bb.bb, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ej = trunc nuw i8 %.258.i to i1
  br i1 %i.ej, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 2, ptr nonnull @.str.92)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.at:                                            ; preds = %bb.as, %bb.ar
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 22, ptr nonnull @.str.97)
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %bb.at
  %i.ek = load ptr, ptr %i.ee, align 8, !tbaa !174, !noalias !521 ; 3 uses
  %i.el = load ptr, ptr %i.eg, align 8, !tbaa !174, !noalias !521 ; 3 uses
  %.not212243.i = icmp eq ptr %i.ek, %i.el
  br i1 %.not212243.i, label %._crit_edge248.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !521
  invoke void @_ZNK9grpc_core19XdsListenerResource14FilterChainMap9CidrRange8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(136) %i.ek)
          to label %bb.aw unwind label %.loopexit.split-lp306.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %bb.av
  %i.eo = load ptr, ptr %6, align 8, !tbaa !61, !noalias !521
  %i.ep = load i64, ptr %i.em, align 8, !tbaa !63, !noalias !521
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 %i.ep, ptr %i.eo)
          to label %bb.ax unwind label %.loopexit.split-lp311.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ax:                                            ; preds = %bb.aw
  %i.eq = load ptr, ptr %6, align 8, !tbaa !61, !noalias !521 ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.en
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.peel.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.peel.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.peel.i: ; preds = %bb.ax
  %i.es = load i64, ptr %i.en, align 8, !tbaa !62, !noalias !521
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.peel.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.peel.i: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.peel.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !521
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ek, i64 136 ; 2 uses
  %.not212.peel.i = icmp eq ptr %i.eu, %i.el
  br i1 %.not212.peel.i, label %._crit_edge248.i, label %.peel.next300.i

._crit_edge248.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.peel.i, %bb.au
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 1, ptr nonnull @.str.94)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.peel.next300.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.peel.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i
  %.sroa.0181.0244.i = phi ptr [ %i.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i ], [ %i.eu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.peel.i ] ; 2 uses
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 2, ptr nonnull @.str.92)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ay:                                            ; preds = %.peel.next300.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !521
  invoke void @_ZNK9grpc_core19XdsListenerResource14FilterChainMap9CidrRange8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(136) %.sroa.0181.0244.i)
          to label %bb.az unwind label %.loopexit.split-lp306.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %bb.ay
  %i.ev = load ptr, ptr %6, align 8, !tbaa !61, !noalias !521
  %i.ew = load i64, ptr %i.em, align 8, !tbaa !63, !noalias !521
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 %i.ew, ptr %i.ev)
          to label %bb.ba unwind label %.loopexit.split-lp311.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %bb.az
  %i.ex = load ptr, ptr %6, align 8, !tbaa !61, !noalias !521 ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.en
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i: ; preds = %bb.ba
  %i.ez = load i64, ptr %i.en, align 8, !tbaa !62, !noalias !521
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !521
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0181.0244.i, i64 136 ; 2 uses
  %.not212.i = icmp eq ptr %i.fb, %i.el
  br i1 %.not212.i, label %._crit_edge248.i, label %.peel.next300.i, !llvm.loop !516

.loopexit.split-lp306.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ay, %bb.av
  %lpad.loopexit.split-lp201 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i

.loopexit.split-lp311.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.az, %bb.aw
  %lpad.loopexit.split-lp204 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fc = load ptr, ptr %6, align 8, !tbaa !61, !noalias !521 ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.en
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.i: ; preds = %.loopexit.split-lp311.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.fe = load i64, ptr %i.en, align 8, !tbaa !62, !noalias !521
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i: ; preds = %.loopexit.split-lp311.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp306.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.i
  %.pn71.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp204, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.i ], [ %lpad.loopexit.split-lp201, %.loopexit.split-lp306.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp204, %.loopexit.split-lp311.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !521
  br label %.loopexit.split-lp.i

bb.bb:                                            ; preds = %._crit_edge248.i, %bb.aq
  %.359.i = phi i8 [ %.258.i, %bb.aq ], [ 0, %._crit_edge248.i ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !188, !noalias !521
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !188, !noalias !521
  %i.fk = icmp eq ptr %i.fh, %i.fj
  br i1 %i.fk, label %bb.bu, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fl = trunc nuw i8 %.359.i to i1
  br i1 %i.fl, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 2, ptr nonnull @.str.92)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.be:                                            ; preds = %bb.bd, %bb.bc
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 14, ptr nonnull @.str.98)
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %bb.be
  %i.fm = load ptr, ptr %i.fg, align 8, !tbaa !188, !noalias !521 ; 2 uses
  %i.fn = load ptr, ptr %i.fi, align 8, !tbaa !188, !noalias !521 ; 2 uses
  %.not213249.i = icmp eq ptr %i.fm, %i.fn
  br i1 %.not213249.i, label %._crit_edge254.i, label %.lr.ph253.i

.lr.ph253.i:                                      ; preds = %bb.bf
  %i.fo = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br label %bb.bg

._crit_edge254.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.i, %bb.bf
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 1, ptr nonnull @.str.94)
          to label %bb.bu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.i, %.lr.ph253.i
  %.066251.i = phi i1 [ true, %.lr.ph253.i ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.i ]
  %.sroa.0169.0250.i = phi ptr [ %i.fm, %.lr.ph253.i ], [ %i.ho, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.i ] ; 2 uses
  %i.fq = load i32, ptr %.sroa.0169.0250.i, align 4, !tbaa !133 ; 5 uses
  br i1 %.066251.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN9grpc_core9StrAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 2, ptr nonnull @.str.92)
          to label %bb.bi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30, !noalias !521
  call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.fr = icmp ult i32 %i.fq, 10
  br i1 %i.fr, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i108.i, label %.lr.ph.i.i105.i

.lr.ph.i.i105.i:                                  ; preds = %bb.bi, %bb.bo
  %.030.i.i106.i = phi i32 [ %i.fz, %bb.bo ], [ 1, %bb.bi ] ; 4 uses
  %.02329.i.i107.i = phi i32 [ %i.fy, %bb.bo ], [ %i.fq, %bb.bi ] ; 5 uses
  %i.fs = icmp ult i32 %.02329.i.i107.i, 100
  br i1 %i.fs, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.lr.ph.i.i105.i
  %i.ft = add i32 %.030.i.i106.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i108.i

bb.bk:                                            ; preds = %.lr.ph.i.i105.i
  %i.fu = icmp ult i32 %.02329.i.i107.i, 1000
  br i1 %i.fu, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.fv = add i32 %.030.i.i106.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i108.i

bb.bm:                                            ; preds = %bb.bk
  %i.fw = icmp ult i32 %.02329.i.i107.i, 10000
  br i1 %i.fw, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.fx = add i32 %.030.i.i106.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i108.i

end_hunk_0
