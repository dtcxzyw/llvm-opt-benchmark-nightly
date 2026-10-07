Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/client_call?download=true
inline.NumInlined: 6549
inline.NumDeleted: 3578
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN9grpc_core4CallD2Ev:bb.a
          to label %_ZN9grpc_core13RefCountedPtrINS_5ArenaEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #34
  unreachable

_ZN9grpc_core13RefCountedPtrINS_5ArenaEED2Ev.exit: ; preds = %_ZN9grpc_core5SliceD2Ev.exit, %bb.e, %bb.f
  tail call void @_ZN9grpc_core8channelz10DataSourceD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core10ClientCall7AddDataENS_8channelz8DataSinkE(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef align 8 %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.312, align 1            ; 3 uses
  %3 = alloca %class.anon.312, align 1            ; 3 uses
  %4 = alloca %class.anon.312, align 1            ; 3 uses
  %5 = alloca %"class.std::optional.399", align 8 ; 9 uses
  %6 = alloca %"class.grpc_core::channelz::DataSink", align 16 ; 6 uses
  %7 = alloca %"class.grpc_core::channelz::PropertyList", align 8 ; 6 uses
  %8 = alloca %"class.grpc_core::channelz::PropertyList", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118  ; 2 uses
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !119
  store <2 x ptr> %i.d, ptr %6, align 16, !tbaa !119
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  %.sink61.sroa.gep = getelementptr inbounds nuw i8, ptr %9, i64 18
  %.sink61.sroa.gep63 = getelementptr inbounds nuw i8, ptr %9, i64 29
  br i1 %.not.i.i.i.i, label %_ZNSt8weak_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !103
  %.not.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !97
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !97
  br label %_ZNSt8weak_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt8weak_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.i

_ZNSt8weak_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !121  ; 2 uses
  %i.o = load <2 x ptr>, ptr %i.k, align 8, !tbaa !119
  store <2 x ptr> %i.o, ptr %i.j, align 16, !tbaa !119
  %.not.i.i.i3.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i3.i, label %_ZN9grpc_core8channelz8DataSinkC2ERKS1_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt8weak_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !103
  %.not.i.i.i.i4.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i4.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.p, align 4, !tbaa !97
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !97
  br label %_ZN9grpc_core8channelz8DataSinkC2ERKS1_.exit

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN9grpc_core8channelz8DataSinkC2ERKS1_.exit

_ZN9grpc_core8channelz8DataSinkC2ERKS1_.exit:     ; preds = %_ZNSt8weak_ptrIN9grpc_core8channelz22DataSinkImplementationEEC2ERKS3_.exit.i, %bb.f, %bb.g
  invoke void @_ZN9grpc_core4Call7AddDataENS_8channelz8DataSinkE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 %6)
          to label %bb.h unwind label %bb.ai

bb.h:                                             ; preds = %_ZN9grpc_core8channelz8DataSinkC2ERKS1_.exit
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !121  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.v, align 8, !tbaa !123
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !124
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #36, !inline_history !542
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !35
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #36, !inline_history !542
  br label %_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !103
  %.not.i.i.i.i10 = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i10, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !97
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.y, %bb.l ], [ %i.ai, %bb.m ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.n, label %_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !31

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #36
  br label %_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.j, %bb.h
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !118 ; 4 uses
  %.not.i.i1.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i1.i, label %_ZN9grpc_core8channelz8DataSinkD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12 ; 3 uses
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !103
  %.not.i.i.i2.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i2.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = load i32, ptr %i.al, align 4, !tbaa !97 ; 2 uses
  %i.ao = add nsw i32 %i.an, -1
  store i32 %i.ao, ptr %i.al, align 4, !tbaa !97
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

bb.q:                                             ; preds = %bb.o
  %i.ap = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i4.i = phi i32 [ %i.an, %bb.p ], [ %i.ap, %bb.q ]
  %i.aq = icmp eq i32 %.0.i.i.i.i4.i, 1
  br i1 %i.aq, label %bb.r, label %_ZN9grpc_core8channelz8DataSinkD2Ev.exit

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !35
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #36, !inline_history !543
  br label %_ZN9grpc_core8channelz8DataSinkD2Ev.exit

_ZN9grpc_core8channelz8DataSinkD2Ev.exit:         ; preds = %_ZNSt12__shared_ptrIN9grpc_core8channelz30DataSinkCompletionNotificationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %8, align 8, !tbaa !35
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aw = load atomic i64, ptr %i.av monotonic, align 8 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, 3
  br i1 %i.ax, label %switch.lookup, label %"_ZZN9grpc_core10ClientCall7AddDataENS_8channelz8DataSinkEENK3$_0clEv.exit"

switch.lookup:                                    ; preds = %_ZN9grpc_core8channelz8DataSinkD2Ev.exit
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN9grpc_core10ClientCall7AddDataENS_8channelz8DataSinkE, i64 %i.aw
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %"_ZZN9grpc_core10ClientCall7AddDataENS_8channelz8DataSinkEENK3$_0clEv.exit"

"_ZZN9grpc_core10ClientCall7AddDataENS_8channelz8DataSinkEENK3$_0clEv.exit": ; preds = %_ZN9grpc_core8channelz8DataSinkD2Ev.exit, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.22, %_ZN9grpc_core8channelz8DataSinkD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.experimental.noalias.scope.decl(metadata !550)
  %i.ay = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #36, !noalias !550
  store i64 %i.ay, ptr %5, align 8, !tbaa !111, !alias.scope !550
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.0.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !126, !alias.scope !550
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store i8 0, ptr %i.az, align 8, !tbaa !128, !alias.scope !550
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  store i8 1, ptr %i.ba, align 8, !tbaa !130, !alias.scope !550
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 10, ptr nonnull @.str.2, ptr noundef nonnull align 8 %5)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %"_ZZN9grpc_core10ClientCall7AddDataENS_8channelz8DataSinkEENK3$_0clEv.exit"
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !130, !range !109, !noundef !110
  %i.bc = trunc nuw i8 %i.bb to i1
  store i8 0, ptr %i.ba, align 8, !tbaa !130
  %i.bd = load i8, ptr %i.az, align 8
  %.not.i.i.i.i.i.i.i = icmp ne i8 %i.bd, -1
  %or.cond.not.i.i.i.i = select i1 %i.bc, i1 %.not.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i, label %bb.t, label %bb.w, !prof !131

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.u

.noexc.i.i.i.i.i.i:                               ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #34
  unreachable

bb.v:                                             ; preds = %"_ZZN9grpc_core10ClientCall7AddDataENS_8channelz8DataSinkEENK3$_0clEv.exit"
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #36
  br label %.body

bb.w:                                             ; preds = %.noexc.i.i.i.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.experimental.noalias.scope.decl(metadata !551)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bi = load atomic ptr, ptr %i.bh acquire, align 8, !noalias !551 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %._crit_edge.i.i.i, label %bb.x

._crit_edge.i.i.i:                                ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.bk, ptr %9, align 8, !tbaa !133, !alias.scope !551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.bk, ptr noundef nonnull align 1 dereferenceable(13) @.str.23, i64 13, i1 false)
  br label %"_ZZN9grpc_core10ClientCall7AddDataENS_8channelz8DataSinkEENK3$_1clB5cxx11Ev.exit.sink.split"

bb.x:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !552)
  %i.bl = load i64, ptr %i.bi, align 8, !tbaa !113, !noalias !553 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 1
  br i1 %i.bm, label %._crit_edge.i.i.i.i, label %bb.y

._crit_edge.i.i.i.i:                              ; preds = %bb.x
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.bn, ptr %9, align 8, !tbaa !133, !alias.scope !553
  store i16 19279, ptr %i.bn, align 8, !alias.scope !553
  br label %"_ZZN9grpc_core10ClientCall7AddDataENS_8channelz8DataSinkEENK3$_1clB5cxx11Ev.exit.sink.split"

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN4absl12lts_202505126Status12ToStringSlowB5cxx11EmNS0_18StatusToStringModeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, i64 noundef %i.bl, i32 noundef 1)
          to label %"_ZZN9grpc_core10ClientCall7AddDataENS_8channelz8DataSinkEENK3$_1clB5cxx11Ev.exit" unwind label %bb.aj

"_ZZN9grpc_core10ClientCall7AddDataENS_8channelz8DataSinkEENK3$_1clB5cxx11Ev.exit.sink.split": ; preds = %._crit_edge.i.i.i, %._crit_edge.i.i.i.i
  %.sink = phi i64 [ 2, %._crit_edge.i.i.i.i ], [ 13, %._crit_edge.i.i.i ]
  %.sink61.sroa.phi = phi ptr [ %.sink61.sroa.gep, %._crit_edge.i.i.i.i ], [ %.sink61.sroa.gep63, %._crit_edge.i.i.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.sink, ptr %i.bo, align 8, !tbaa !135, !alias.scope !551
  store i8 0, ptr %.sink61.sroa.phi, align 1, !tbaa !103, !alias.scope !551
  br label %"_ZZN9grpc_core10ClientCall7AddDataENS_8channelz8DataSinkEENK3$_1clB5cxx11Ev.exit"

"_ZZN9grpc_core10ClientCall7AddDataENS_8channelz8DataSinkEENK3$_1clB5cxx11Ev.exit": ; preds = %"_ZZN9grpc_core10ClientCall7AddDataENS_8channelz8DataSinkEENK3$_1clB5cxx11Ev.exit.sink.split", %bb.y
  %i.bp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN9grpc_core8channelz12PropertyList3SetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_St17basic_string_viewIcS6_ET_(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 13, ptr nonnull @.str.3, ptr noundef nonnull align 8 %9)
          to label %bb.z unwind label %bb.ak

bb.z:                                             ; preds = %"_ZZN9grpc_core10ClientCall7AddDataENS_8channelz8DataSinkEENK3$_1clB5cxx11Ev.exit"
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.br = load atomic i8, ptr %i.bq monotonic, align 1, !range !109, !noundef !110
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN9grpc_core8channelz12PropertyList3SetIbEERS1_St17basic_string_viewIcSt11char_traitsIcEET_(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 21, ptr nonnull @.str.4, i1 noundef zeroext %i.bs)
          to label %bb.aa unwind label %bb.ak

bb.aa:                                            ; preds = %bb.z
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %7, align 8, !tbaa !35
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESaISM_EEC2ERKSO_(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit unwind label %bb.ak

_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit: ; preds = %bb.aa
  invoke void @_ZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 11, ptr nonnull @.str.1, ptr noundef nonnull align 8 %7)
          to label %bb.ab unwind label %bb.al

bb.ab:                                            ; preds = %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !138 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !139 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bw, %i.by
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ab, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cj, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i ], [ %i.bw, %bb.ab ] ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !128
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ca, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i, label %bb.ac, !prof !31

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(33) %i.cb)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.ad

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #34
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ce = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !140 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !103
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #37
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i12 = icmp eq ptr %i.cj, %i.by
  br i1 %.not.i.i.i.i12, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.bu, align 8, !tbaa !138
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i, %bb.ab
  %i.ck = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.bw, %bb.ab ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i1.i.i, label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !142
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cp) #37
  br label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit

_ZN9grpc_core8channelz12PropertyListD2Ev.exit:    ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i, %bb.ae
  %i.cq = load ptr, ptr %9, align 8, !tbaa !140   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN9grpc_core8channelz12PropertyListD2Ev.exit
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !103
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN9grpc_core8channelz12PropertyListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cv = load ptr, ptr %i.au, align 8, !tbaa !138 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !139 ; 2 uses
  %.not4.i.i.i.i13 = icmp eq ptr %i.cv, %i.cx
  br i1 %.not4.i.i.i.i13, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i24, label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i20
  %.05.i.i.i.i15 = phi ptr [ %i.di, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i20 ], [ %i.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i15, i64 64
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !128
  %.not.i.i.i.i.i.i.i.i16 = icmp eq i8 %i.cz, -1
  br i1 %.not.i.i.i.i.i.i.i.i16, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i18, label %bb.af, !prof !31

bb.af:                                            ; preds = %.lr.ph.i.i.i.i14
  %i.da = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i15, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(33) %i.da)
          to label %.noexc.i.i.i.i.i.i.i17 unwind label %bb.ag

.noexc.i.i.i.i.i.i.i17:                           ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i18

bb.ag:                                            ; preds = %bb.af
  %i.db = landingpad { ptr, i32 }
          catch ptr null
  %i.dc = extractvalue { ptr, i32 } %i.db, 0
  call void @__clang_call_terminate(ptr %i.dc) #34
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i18: ; preds = %.noexc.i.i.i.i.i.i.i17, %.lr.ph.i.i.i.i14
  %i.dd = load ptr, ptr %.05.i.i.i.i15, align 8, !tbaa !140 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i15, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i19: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i18
end_hunk_0
begin_hunk_1_@_ZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_:bb.a
  store ptr null, ptr %5, align 8, !tbaa !560
  store ptr %i.a, ptr %4, align 8, !tbaa !562
  invoke void @_ZN9grpc_core8channelz8DataSink7AddDataESt17basic_string_viewIcSt11char_traitsIcEESt10unique_ptrINS0_22DataSinkImplementation4DataESt14default_deleteIS8_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1, ptr %2, ptr noundef nonnull align 8 %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %4, align 8, !tbaa !145    ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIZN9grpc_core8channelz8DataSink7AddDataINS1_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_E8DataImplSt14default_deleteISA_EED2Ev.exit, label %_ZNSt10unique_ptrIN9grpc_core8channelz22DataSinkImplementation4DataESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN9grpc_core8channelz22DataSinkImplementation4DataESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.b
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #36, !inline_history !3
  %.pre10 = load ptr, ptr %5, align 8, !tbaa !560 ; 2 uses
  %.not.i4 = icmp eq ptr %.pre10, null
  br i1 %.not.i4, label %_ZNSt10unique_ptrIZN9grpc_core8channelz8DataSink7AddDataINS1_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_E8DataImplSt14default_deleteISA_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN9grpc_core8channelz22DataSinkImplementation4DataESt14default_deleteIS3_EED2Ev.exit
  call void @_ZNKSt14default_deleteIZN9grpc_core8channelz8DataSink7AddDataINS1_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_E8DataImplEclEPSA_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %.pre10)
  br label %_ZNSt10unique_ptrIZN9grpc_core8channelz8DataSink7AddDataINS1_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_E8DataImplSt14default_deleteISA_EED2Ev.exit

_ZNSt10unique_ptrIZN9grpc_core8channelz8DataSink7AddDataINS1_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_E8DataImplSt14default_deleteISA_EED2Ev.exit: ; preds = %bb.b, %_ZNSt10unique_ptrIN9grpc_core8channelz22DataSinkImplementation4DataESt14default_deleteIS3_EED2Ev.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  ret void

bb.d:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %4, align 8, !tbaa !145    ; 3 uses
  %.not.i5 = icmp eq ptr %i.n, null
  br i1 %.not.i5, label %_ZNSt10unique_ptrIZN9grpc_core8channelz8DataSink7AddDataINS1_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_E8DataImplSt14default_deleteISA_EED2Ev.exit9, label %_ZNSt10unique_ptrIN9grpc_core8channelz22DataSinkImplementation4DataESt14default_deleteIS3_EED2Ev.exit7

_ZNSt10unique_ptrIN9grpc_core8channelz22DataSinkImplementation4DataESt14default_deleteIS3_EED2Ev.exit7: ; preds = %bb.d
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #36, !inline_history !3
  %.pre = load ptr, ptr %5, align 8, !tbaa !560   ; 2 uses
  %.not.i8 = icmp eq ptr %.pre, null
  br i1 %.not.i8, label %_ZNSt10unique_ptrIZN9grpc_core8channelz8DataSink7AddDataINS1_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_E8DataImplSt14default_deleteISA_EED2Ev.exit9, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN9grpc_core8channelz22DataSinkImplementation4DataESt14default_deleteIS3_EED2Ev.exit7
  call void @_ZNKSt14default_deleteIZN9grpc_core8channelz8DataSink7AddDataINS1_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_E8DataImplEclEPSA_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %.pre)
  br label %_ZNSt10unique_ptrIZN9grpc_core8channelz8DataSink7AddDataINS1_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_E8DataImplSt14default_deleteISA_EED2Ev.exit9

_ZNSt10unique_ptrIZN9grpc_core8channelz8DataSink7AddDataINS1_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_E8DataImplSt14default_deleteISA_EED2Ev.exit9: ; preds = %bb.d, %_ZNSt10unique_ptrIN9grpc_core8channelz22DataSinkImplementation4DataESt14default_deleteIS3_EED2Ev.exit7, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  resume { ptr, i32 } %i.m
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZN9grpc_core8channelz12PropertyList3SetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_St17basic_string_viewIcS6_ET_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1, ptr %2, ptr noundef align 8 %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.312, align 1            ; 3 uses
  %5 = alloca %class.anon.312, align 1            ; 3 uses
  %6 = alloca %"class.std::variant", align 8      ; 9 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::optional.399", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 14 uses
  store ptr %i.b, ptr %8, align 8, !tbaa !133
  %i.c = load ptr, ptr %3, align 8, !tbaa !140    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !135  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i64 %i.e, ptr %i.a, align 8, !tbaa !111
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %8, align 8, !tbaa !140
  %i.h = load i64, ptr %i.a, align 8, !tbaa !111
  store i64 %i.h, ptr %i.b, align 8, !tbaa !103
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !103
  store i8 %i.j, ptr %i.i, align 1, !tbaa !103
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !111  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !135
  %i.m = load ptr, ptr %8, align 8, !tbaa !140
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !565)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36, !noalias !565
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.p = load ptr, ptr %8, align 8, !tbaa !140, !noalias !565 ; 3 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.thread, label %bb.d

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.r = load i64, ptr %i.l, align 8, !tbaa !135, !noalias !565 ; 3 uses
  %i.s = icmp ult i64 %i.r, 16
  call void @llvm.assume(i1 %i.s)
  %i.t = add nuw nsw i64 %i.r, 1                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.t, i1 false), !noalias !565
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.b, ptr %8, align 8, !tbaa !140, !noalias !565
  store i64 0, ptr %i.l, align 8, !tbaa !135, !noalias !565
  store i8 0, ptr %i.b, align 8, !tbaa !103, !noalias !565
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 1, ptr %i.v, align 8, !tbaa !128, !noalias !565
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.x, ptr %7, align 8, !tbaa !133, !alias.scope !565
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = load i64, ptr %i.b, align 8, !tbaa !103, !noalias !565 ; 2 uses
  store i64 %i.y, ptr %i.o, align 8, !tbaa !103, !noalias !565
  %.pre.i = load i64, ptr %i.l, align 8, !tbaa !135, !noalias !565 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.b, ptr %8, align 8, !tbaa !140, !noalias !565
  store i64 0, ptr %i.l, align 8, !tbaa !135, !noalias !565
  store i8 0, ptr %i.b, align 8, !tbaa !103, !noalias !565
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 1, ptr %i.aa, align 8, !tbaa !128, !noalias !565
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.ac, ptr %7, align 8, !tbaa !133, !alias.scope !565
  %i.ad = icmp eq ptr %i.p, %i.o
  br i1 %i.ad, label %._crit_edge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge:                                      ; preds = %bb.d
  %.pre = add nuw nsw i64 %.pre.i, 1
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %.thread
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.t, %.thread ]
  %i.ae = phi ptr [ %i.ac, %._crit_edge ], [ %i.x, %.thread ]
  %i.af = phi ptr [ %i.ab, %._crit_edge ], [ %i.w, %.thread ]
  %i.ag = phi ptr [ %i.z, %._crit_edge ], [ %i.u, %.thread ]
  %i.ah = phi i64 [ %.pre.i, %._crit_edge ], [ %i.r, %.thread ] ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %.pre-phi, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  store ptr %i.p, ptr %7, align 8, !tbaa !140, !alias.scope !565
  store i64 %i.y, ptr %i.ac, align 8, !tbaa !103, !alias.scope !565
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.aj = phi ptr [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.af, %bb.e ] ; 2 uses
  %i.ak = phi ptr [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ag, %bb.e ]
  %i.al = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ah, %bb.e ]
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !135, !alias.scope !565
  store ptr %i.o, ptr %6, align 8, !tbaa !140, !noalias !565
  store i64 0, ptr %i.ak, align 8, !tbaa !135, !noalias !565
  store i8 0, ptr %i.o, align 8, !tbaa !103, !noalias !565
  store i8 1, ptr %i.aj, align 8, !tbaa !128, !alias.scope !565
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  store i8 1, ptr %i.an, align 8, !tbaa !130, !alias.scope !565
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36, !noalias !565
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(33) %6)
          to label %_ZN9grpc_core8channelz20property_list_detail7WrapperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE4WrapES8_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #34
  unreachable

_ZN9grpc_core8channelz20property_list_detail7WrapperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE4WrapES8_.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36, !noalias !565
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36, !noalias !565
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1, ptr %2, ptr noundef nonnull align 8 %7)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZN9grpc_core8channelz20property_list_detail7WrapperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE4WrapES8_.exit
  %i.aq = load i8, ptr %i.an, align 8, !tbaa !130, !range !109, !noundef !110
  %i.ar = trunc nuw i8 %i.aq to i1
  store i8 0, ptr %i.an, align 8, !tbaa !130
  %i.as = load i8, ptr %i.aj, align 8
  %.not.i.i.i.i.i.i = icmp ne i8 %i.as, -1
  %or.cond.not.i.i.i = select i1 %i.ar, i1 %.not.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i, label %bb.i, label %_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev.exit, !prof !131

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %.noexc.i.i.i.i.i unwind label %bb.j

.noexc.i.i.i.i.i:                                 ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #34
  unreachable

_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev.exit: ; preds = %bb.h, %.noexc.i.i.i.i.i
  %i.av = load ptr, ptr %8, align 8, !tbaa !140   ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.b
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev.exit
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !103
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret ptr %0

bb.k:                                             ; preds = %_ZN9grpc_core8channelz20property_list_detail7WrapperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvE4WrapES8_.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #36
  %i.ba = load ptr, ptr %8, align 8, !tbaa !140   ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.b
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.k
  %i.bc = load i64, ptr %i.b, align 8, !tbaa !103
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  resume { ptr, i32 } %i.az
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZN9grpc_core8channelz12PropertyList3SetIbEERS1_St17basic_string_viewIcSt11char_traitsIcEET_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1, ptr %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.312, align 1            ; 3 uses
  %5 = alloca %class.anon.312, align 1            ; 3 uses
  %6 = alloca %"class.std::variant", align 8      ; 5 uses
  %7 = alloca %"class.std::optional.399", align 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568)
  %i.a = zext i1 %3 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36, !noalias !568
  store i8 %i.a, ptr %6, align 8, !tbaa !147, !noalias !568
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 5, ptr %i.b, align 8, !tbaa !128, !noalias !568
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store i8 %i.a, ptr %7, align 8, !tbaa !147, !alias.scope !568
  store i8 5, ptr %i.c, align 8, !tbaa !128, !alias.scope !568
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  store i8 1, ptr %i.d, align 8, !tbaa !130, !alias.scope !568
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36, !noalias !568
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(33) %6)
          to label %_ZN9grpc_core8channelz20property_list_detail7WrapperIbvE4WrapB5cxx11Eb.exit unwind label %bb.b, !noalias !568

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #34, !noalias !568
  unreachable

_ZN9grpc_core8channelz20property_list_detail7WrapperIbvE4WrapB5cxx11Eb.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36, !noalias !568
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36, !noalias !568
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1, ptr %2, ptr noundef nonnull align 8 %7)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZN9grpc_core8channelz20property_list_detail7WrapperIbvE4WrapB5cxx11Eb.exit
  %i.g = load i8, ptr %i.d, align 8, !tbaa !130, !range !109, !noundef !110
  %i.h = trunc nuw i8 %i.g to i1
  store i8 0, ptr %i.d, align 8, !tbaa !130
  %i.i = load i8, ptr %i.c, align 8
  %.not.i.i.i.i.i.i = icmp ne i8 %i.i, -1
  %or.cond.not.i.i.i = select i1 %i.h, i1 %.not.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i, label %bb.d, label %_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev.exit, !prof !131

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %.noexc.i.i.i.i.i unwind label %bb.e

.noexc.i.i.i.i.i:                                 ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #34
  unreachable

_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev.exit: ; preds = %bb.c, %.noexc.i.i.i.i.i
  ret ptr %0

bb.f:                                             ; preds = %_ZN9grpc_core8channelz20property_list_detail7WrapperIbvE4WrapB5cxx11Eb.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #36
  resume { ptr, i32 } %i.l
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core8channelz12PropertyListD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.312, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !139  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  %i.f = load i8, ptr %i.e, align 8, !tbaa !128
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.f, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i, label %bb.b, !prof !31

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(33) %i.g)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.c

.noexc.i.i.i.i.i.i:                               ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #34
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.j = load ptr, ptr %.05.i.i.i, align 8, !tbaa !140 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !103
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #37
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !138
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.p = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESaISM_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !142
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #37
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESaISM_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESaISM_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i, %bb.d
  ret void
}

; Function Attrs: uwtable
define void @_ZThn8_N9grpc_core10ClientCall7AddDataENS_8channelz8DataSinkE(ptr noundef %0, ptr noundef align 8 %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN9grpc_core10ClientCall7AddDataENS_8channelz8DataSinkE(ptr noundef nonnull align 8 dereferenceable(296) %i.a, ptr noundef align 8 %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 11) i32 @_ZN9grpc_core10ClientCall10StartBatchEPK7grpc_opmPvb(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.absl::lts_20250512::Status", align 8 ; 4 uses
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95
  store i64 1, ptr %5, align 8, !tbaa !113, !alias.scope !572
  invoke void @_ZN9grpc_core16EndOpImmediatelyEP21grpc_completion_queuePvbN4absl12lts_202505126StatusE(ptr noundef %i.c, ptr noundef %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 %5)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr %5, align 8, !tbaa !113    ; 2 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = inttoptr i64 %i.d to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #34
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #36
  resume { ptr, i32 } %i.i

.preheader:                                       ; preds = %bb.a, %bb.l
  %.01624.i = phi i64 [ %i.af, %bb.l ], [ 0, %bb.a ] ; 2 uses
  %i.j = phi i8 [ %i.ae, %bb.l ], [ 0, %bb.a ]    ; 2 uses
  %i.k = getelementptr inbounds nuw [80 x i8], ptr %1, i64 %.01624.i ; 7 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !150  ; 3 uses
  switch i32 %i.l, label %bb.k [
    i32 0, label %bb.g
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 4, label %bb.j
    i32 5, label %bb.j
    i32 6, label %bb.j
    i32 7, label %_ZN4absl12lts_202505126StatusD2Ev.exit
    i32 3, label %_ZN4absl12lts_202505126StatusD2Ev.exit
  ]

bb.g:                                             ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !151
  %i.o = and i32 %i.n, -165
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %bb.h, label %_ZN4absl12lts_202505126StatusD2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !103
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !103
  %i.t = tail call noundef zeroext i1 @_ZN9grpc_core16ValidateMetadataEmP13grpc_metadata(i64 noundef %i.q, ptr noundef %i.s)
  br i1 %i.t, label %._crit_edge.i, label %_ZN4absl12lts_202505126StatusD2Ev.exit

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = load i32, ptr %i.k, align 8, !tbaa !150
  br label %bb.k

bb.i:                                             ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !151
  %i.w = and i32 %i.v, 1073741816
  %.not.i20.i = icmp eq i32 %i.w, 0
  br i1 %.not.i20.i, label %bb.k, label %_ZN4absl12lts_202505126StatusD2Ev.exit

bb.j:                                             ; preds = %.preheader, %.preheader, %.preheader, %.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !151
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %bb.k, label %_ZN4absl12lts_202505126StatusD2Ev.exit

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i, %.preheader
  %i.z = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.l, %bb.j ], [ 1, %bb.i ], [ %i.l, %.preheader ]
  %i.aa = trunc i32 %i.z to i8
  %i.ab = and i8 %i.aa, 7
  %i.ac = shl nuw i8 1, %i.ab                     ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN9grpc_core5TableIJNS_15metadata_detail5ValueINS_16HttpPathMetadataEvEENS2_INS_21HttpAuthorityMetadataEvEENS2_INS_19GrpcTimeoutMetadataEvEENS2_INS_27GrpcRetryPushbackMsMetadataEvEENS2_INS_17UserAgentMetadataEvEENS2_INS_19GrpcMessageMetadataEvEENS2_INS_12HostMetadataEvEENS2_INS_30EndpointLoadMetricsBinMetadataEvEENS2_INS_26GrpcServerStatsBinMetadataEvEENS2_INS_20GrpcTraceBinMetadataEvEENS2_INS_19GrpcTagsBinMetadataEvEENS2_INS_25GrpcLbClientStatsMetadataEvEENS2_INS_17LbCostBinMetadataEvEENS2_INS_15LbTokenMetadataEvEENS2_INS_18XEnvoyPeerMetadataEvEENS2_INS_21XForwardedForMetadataEvEENS2_INS_22XForwardedHostMetadataEvEENS2_INS_22W3CTraceParentMetadataEvEENS2_INS_10PeerStringEvEENS2_INS_17GrpcStatusContextEvEENS2_INS_20GrpcRegisteredMethodEvEENS2_INS_18HttpStatusMetadataEvEENS2_INS_20GrpcEncodingMetadataEvEENS2_INS_27GrpcInternalEncodingRequestEvEENS2_INS_18GrpcStatusMetadataEvEENS2_INS_31GrpcPreviousRpcAttemptsMetadataEvEENS2_INS_18HttpMethodMetadataEvEENS2_INS_18HttpSchemeMetadataEvEENS2_INS_19ContentTypeMetadataEvEENS2_INS_10TeMetadataEvEENS2_INS_26GrpcAcceptEncodingMetadataEvEENS2_INS_22GrpcStreamNetworkStateEvEENS2_INS_18GrpcStatusFromWireEvEENS2_INS_20GrpcCallWasCancelledEvEENS2_INS_12WaitForReadyEvEENS2_INS_18IsTransparentRetryEvEENS2_INS_16GrpcTrailersOnlyEvEENS2_INS_10GrpcTarPitEvEEEE8DestructIJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11ELm12ELm13ELm14ELm15ELm16ELm17ELm18ELm19ELm20ELm21ELm22ELm23ELm24ELm25ELm26ELm27ELm28ELm29ELm30ELm31ELm32ELm33ELm34ELm35ELm36ELm37EEEEvSt16integer_sequenceImJXspT_EEE:bb.a
  %i.fg = load i16, ptr %i.ej, align 2, !tbaa !37
  %i.fh = and i16 %i.fg, 4
  %.not.i47 = icmp eq i16 %i.fh, 0
  br i1 %.not.i47, label %_ZN9grpc_core12table_detail17DestructIfNotNullINS_15metadata_detail5ValueINS_10PeerStringEvEEEEvPT_.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZN9grpc_core12table_detail17DestructIfNotNullINS_15metadata_detail5ValueINS_22W3CTraceParentMetadataEvEEEEvPT_.exit
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !115 ; 4 uses
  %i.fk = icmp ugt ptr %i.fj, inttoptr (i64 1 to ptr)
  br i1 %i.fk, label %bb.bj, label %_ZN9grpc_core12table_detail17DestructIfNotNullINS_15metadata_detail5ValueINS_10PeerStringEvEEEEvPT_.exit

bb.bj:                                            ; preds = %bb.bi
  %i.fl = atomicrmw sub ptr %i.fj, i64 1 acq_rel, align 8
  %i.fm = icmp eq i64 %i.fl, 1
  br i1 %i.fm, label %bb.bk, label %_ZN9grpc_core12table_detail17DestructIfNotNullINS_15metadata_detail5ValueINS_10PeerStringEvEEEEvPT_.exit

bb.bk:                                            ; preds = %bb.bj
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !105
  invoke void %i.fo(ptr noundef nonnull align 8 dereferenceable(16) %i.fj)
          to label %_ZN9grpc_core12table_detail17DestructIfNotNullINS_15metadata_detail5ValueINS_10PeerStringEvEEEEvPT_.exit unwind label %bb.bl, !inline_history !0

bb.bl:                                            ; preds = %bb.bk
  %i.fp = landingpad { ptr, i32 }
          catch ptr null
  %i.fq = extractvalue { ptr, i32 } %i.fp, 0
  tail call void @__clang_call_terminate(ptr %i.fq) #34
  unreachable

_ZN9grpc_core12table_detail17DestructIfNotNullINS_15metadata_detail5ValueINS_10PeerStringEvEEEEvPT_.exit: ; preds = %_ZN9grpc_core12table_detail17DestructIfNotNullINS_15metadata_detail5ValueINS_22W3CTraceParentMetadataEvEEEEvPT_.exit, %bb.bi, %bb.bj, %bb.bk
  %i.fr = load i16, ptr %i.ej, align 2, !tbaa !37
  %i.fs = and i16 %i.fr, 8
  %.not.i50 = icmp eq i16 %i.fs, 0
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  br i1 %.not.i50, label %_ZN9grpc_core12table_detail17DestructIfNotNullINS_15metadata_detail5ValueINS_17GrpcStatusContextEvEEEEvPT_.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZN9grpc_core12table_detail17DestructIfNotNullINS_15metadata_detail5ValueINS_10PeerStringEvEEEEvPT_.exit
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !111
  %i.fv = icmp eq i64 %i.fu, 0
  br i1 %i.fv, label %_ZN9grpc_core12table_detail17DestructIfNotNullINS_15metadata_detail5ValueINS_17GrpcStatusContextEvEEEEvPT_.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN4absl12lts_2025051223inlined_vector_internal7StorageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1ESaIS8_EE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ft)
          to label %_ZN9grpc_core12table_detail17DestructIfNotNullINS_15metadata_detail5ValueINS_17GrpcStatusContextEvEEEEvPT_.exit unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fw = landingpad { ptr, i32 }
          catch ptr null
  %i.fx = extractvalue { ptr, i32 } %i.fw, 0
  tail call void @__clang_call_terminate(ptr %i.fx) #34
  unreachable

_ZN9grpc_core12table_detail17DestructIfNotNullINS_15metadata_detail5ValueINS_17GrpcStatusContextEvEEEEvPT_.exit: ; preds = %_ZN9grpc_core12table_detail17DestructIfNotNullINS_15metadata_detail5ValueINS_10PeerStringEvEEEEvPT_.exit, %bb.bm, %bb.bn
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN4absl12lts_2025051223inlined_vector_internal7StorageIN9grpc_core17LbCostBinMetadata9ValueTypeELm1ESaIS5_EE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !111    ; 3 uses
  %i.b = trunc i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %i.b, ptr %i.d, ptr %i.c
  %i.f = lshr i64 %i.a, 1                         ; 2 uses
  %.not5.i = icmp eq i64 %i.f, 0
  br i1 %.not5.i, label %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core17LbCostBinMetadata9ValueTypeEELb0EE15DestroyElementsERS6_PS5_m.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN9grpc_core17LbCostBinMetadata9ValueTypeD2Ev.exit.i
  %.06.i = phi i64 [ %i.g, %_ZN9grpc_core17LbCostBinMetadata9ValueTypeD2Ev.exit.i ], [ %i.f, %bb.a ]
  %i.g = add nsw i64 %.06.i, -1                   ; 3 uses
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !140  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN9grpc_core17LbCostBinMetadata9ValueTypeD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !103
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #37
  br label %_ZN9grpc_core17LbCostBinMetadata9ValueTypeD2Ev.exit.i

_ZN9grpc_core17LbCostBinMetadata9ValueTypeD2Ev.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core17LbCostBinMetadata9ValueTypeEELb0EE15DestroyElementsERS6_PS5_m.exit.loopexit, label %.lr.ph.i, !llvm.loop !816

_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core17LbCostBinMetadata9ValueTypeEELb0EE15DestroyElementsERS6_PS5_m.exit.loopexit: ; preds = %_ZN9grpc_core17LbCostBinMetadata9ValueTypeD2Ev.exit.i
  %.pre = load i64, ptr %0, align 8, !tbaa !111
  br label %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core17LbCostBinMetadata9ValueTypeEELb0EE15DestroyElementsERS6_PS5_m.exit

_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core17LbCostBinMetadata9ValueTypeEELb0EE15DestroyElementsERS6_PS5_m.exit: ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core17LbCostBinMetadata9ValueTypeEELb0EE15DestroyElementsERS6_PS5_m.exit.loopexit, %bb.a
  %i.o = phi i64 [ %.pre, %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core17LbCostBinMetadata9ValueTypeEELb0EE15DestroyElementsERS6_PS5_m.exit.loopexit ], [ %i.a, %bb.a ]
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %bb.b, label %_ZN4absl12lts_2025051223inlined_vector_internal7StorageIN9grpc_core17LbCostBinMetadata9ValueTypeELm1ESaIS5_EE21DeallocateIfAllocatedEv.exit

bb.b:                                             ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core17LbCostBinMetadata9ValueTypeEELb0EE15DestroyElementsERS6_PS5_m.exit
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !103
  %i.t = mul i64 %i.s, 40
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #37
  br label %_ZN4absl12lts_2025051223inlined_vector_internal7StorageIN9grpc_core17LbCostBinMetadata9ValueTypeELm1ESaIS5_EE21DeallocateIfAllocatedEv.exit

_ZN4absl12lts_2025051223inlined_vector_internal7StorageIN9grpc_core17LbCostBinMetadata9ValueTypeELm1ESaIS5_EE21DeallocateIfAllocatedEv.exit: ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core17LbCostBinMetadata9ValueTypeEELb0EE15DestroyElementsERS6_PS5_m.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN4absl12lts_2025051223inlined_vector_internal7StorageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1ESaIS8_EE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !111    ; 3 uses
  %i.b = trunc i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %i.b, ptr %i.d, ptr %i.c
  %i.f = lshr i64 %i.a, 1                         ; 2 uses
  %.not5.i = icmp eq i64 %i.f, 0
  br i1 %.not5.i, label %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE15DestroyElementsERS9_PS8_m.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.06.i = phi i64 [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.f, %bb.a ]
  %i.g = add nsw i64 %.06.i, -1                   ; 3 uses
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !140  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.lr.ph.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !103
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE15DestroyElementsERS9_PS8_m.exit.loopexit, label %.lr.ph.i, !llvm.loop !817

_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE15DestroyElementsERS9_PS8_m.exit.loopexit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pre = load i64, ptr %0, align 8, !tbaa !111
  br label %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE15DestroyElementsERS9_PS8_m.exit

_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE15DestroyElementsERS9_PS8_m.exit: ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE15DestroyElementsERS9_PS8_m.exit.loopexit, %bb.a
  %i.n = phi i64 [ %.pre, %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE15DestroyElementsERS9_PS8_m.exit.loopexit ], [ %i.a, %bb.a ]
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %bb.b, label %_ZN4absl12lts_2025051223inlined_vector_internal7StorageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1ESaIS8_EE21DeallocateIfAllocatedEv.exit

bb.b:                                             ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE15DestroyElementsERS9_PS8_m.exit
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !103
  %i.s = shl i64 %i.r, 5
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #37
  br label %_ZN4absl12lts_2025051223inlined_vector_internal7StorageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1ESaIS8_EE21DeallocateIfAllocatedEv.exit

_ZN4absl12lts_2025051223inlined_vector_internal7StorageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1ESaIS8_EE21DeallocateIfAllocatedEv.exit: ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE15DestroyElementsERS9_PS8_m.exit, %bb.b
  ret void
}

declare void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN9grpc_core8channelz10DataSource17SourceDestructingEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZNK9grpc_core16dump_args_detail8DumpArgs9StringifyERNS1_10CustomSinkE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core16dump_args_detail8DumpArgs14CustomSinkImplIN4absl12lts_2025051212log_internal13StringifySinkEE6AppendESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !820, !nonnull !110, !align !293
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !822, !nonnull !110, !align !293
  tail call void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE1EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 %1, ptr %2)
  ret void
}

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE1EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #2

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #2

declare void @_ZNK9grpc_core5Arena7DestroyEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

declare void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32), i64, ptr, ptr noundef align 8) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.312, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !130, !range !109, !noundef !110
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !130
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i8, ptr %i.d, align 8
  %.not.i.i.i.i.i = icmp ne i8 %i.e, -1
  %or.cond.not.i.i = select i1 %i.c, i1 %.not.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i, label %bb.b, label %_ZNSt17_Optional_payloadISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0ELb0EED2Ev.exit, !prof !131

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(41) %0)
          to label %.noexc.i.i.i.i unwind label %bb.c

.noexc.i.i.i.i:                                   ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %_ZNSt17_Optional_payloadISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0ELb0EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #34
  unreachable

_ZNSt17_Optional_payloadISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %.noexc.i.i.i.i
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #27

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #27

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN9grpc_core15metadata_detail13LogKeyValueToINS_5SliceERKS2_St17basic_string_viewIcSt11char_traitsIcEEEEvS8_RKT_PFT1_T0_EN4absl12lts_2025051211FunctionRefIFvS8_S8_EEE(i64 %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3, ptr %4, ptr %5) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.b = tail call { i64, ptr } %3(ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0        ; 5 uses
  %i.d = extractvalue { i64, ptr } %i.b, 1        ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !825)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.e, ptr %6, align 8, !tbaa !133, !alias.scope !825
  %i.f = icmp eq ptr %i.d, null
  %i.g = icmp ne i64 %i.c, 0
  %or.cond.i.i.i.i = and i1 %i.g, %i.f
  br i1 %or.cond.i.i.i.i, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.24) #40
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36, !noalias !825
  store i64 %i.c, ptr %i.a, align 8, !tbaa !111, !noalias !825
  %i.h = icmp ugt i64 %i.c, 15
  br i1 %i.h, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.b
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !140, !alias.scope !825
  %i.j = load i64, ptr %i.a, align 8, !tbaa !111, !noalias !825
  store i64 %i.j, ptr %i.e, align 8, !tbaa !103, !alias.scope !825
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i.i.i.i, %bb.b
  %i.k = phi ptr [ %i.i, %.noexc.i.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.c, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN9grpc_core15metadata_detail22AdaptDisplayValueToLogISt17basic_string_viewIcSt11char_traitsIcEEE8ToStringB5cxx11ES5_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.l = load i8, ptr %i.d, align 1, !tbaa !103, !noalias !825
  store i8 %i.l, ptr %i.k, align 1, !tbaa !103
  br label %_ZN9grpc_core15metadata_detail22AdaptDisplayValueToLogISt17basic_string_viewIcSt11char_traitsIcEEE8ToStringB5cxx11ES5_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.d, i64 %i.c, i1 false)
  br label %_ZN9grpc_core15metadata_detail22AdaptDisplayValueToLogISt17basic_string_viewIcSt11char_traitsIcEEE8ToStringB5cxx11ES5_.exit

_ZN9grpc_core15metadata_detail22AdaptDisplayValueToLogISt17basic_string_viewIcSt11char_traitsIcEEE8ToStringB5cxx11ES5_.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.c, %bb.d
  %i.m = load i64, ptr %i.a, align 8, !tbaa !111, !noalias !825 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !135, !alias.scope !825
  %i.o = load ptr, ptr %6, align 8, !tbaa !140, !alias.scope !825
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36, !noalias !825
  %i.q = load ptr, ptr %6, align 8, !tbaa !140
  %i.r = load i64, ptr %i.n, align 8, !tbaa !135
  invoke void %5(ptr %4, i64 %0, ptr %1, i64 %i.r, ptr %i.q)
          to label %_ZNK4absl12lts_2025051211FunctionRefIFvSt17basic_string_viewIcSt11char_traitsIcEES5_EEclES5_S5_.exit unwind label %bb.e, !inline_history !10

_ZNK4absl12lts_2025051211FunctionRefIFvSt17basic_string_viewIcSt11char_traitsIcEES5_EEclES5_S5_.exit: ; preds = %_ZN9grpc_core15metadata_detail22AdaptDisplayValueToLogISt17basic_string_viewIcSt11char_traitsIcEEE8ToStringB5cxx11ES5_.exit
  %i.s = load ptr, ptr %6, align 8, !tbaa !140    ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.e
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK4absl12lts_2025051211FunctionRefIFvSt17basic_string_viewIcSt11char_traitsIcEES5_EEclES5_S5_.exit
  %i.u = load i64, ptr %i.e, align 8, !tbaa !103
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK4absl12lts_2025051211FunctionRefIFvSt17basic_string_viewIcSt11char_traitsIcEES5_EEclES5_S5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  ret void

bb.e:                                             ; preds = %_ZN9grpc_core15metadata_detail22AdaptDisplayValueToLogISt17basic_string_viewIcSt11char_traitsIcEEE8ToStringB5cxx11ES5_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %6, align 8, !tbaa !140    ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.e
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.e
  %i.z = load i64, ptr %i.e, align 8, !tbaa !103
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, ptr } @_ZN9grpc_core24SimpleSliceBasedMetadata12DisplayValueERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !115
  %.not.i.i = icmp eq ptr %i.a, null              ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = and i64 %i.g, 255
  %i.i = select i1 %.not.i.i, i64 %i.h, i64 %i.g
  %.fca.0.insert.i = insertvalue { i64, ptr } poison, i64 %i.i, 0
  %.fca.1.insert.i = insertvalue { i64, ptr } %.fca.0.insert.i, ptr %i.e, 1
  ret { i64, ptr } %.fca.1.insert.i
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN9grpc_core15metadata_detail13LogKeyValueToINS_9TimestampES2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvSt17basic_string_viewIcS6_ERKT_PFT1_T0_EN4absl12lts_2025051211FunctionRefIFvSA_SA_EEE(i64 %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr %4, ptr %5) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %.sroa.0.0.copyload = load i64, ptr %2, align 8, !tbaa !111
  call void %3(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, i64 %.sroa.0.0.copyload)
  call void @llvm.experimental.noalias.scope.decl(metadata !828)
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.b, ptr %6, align 8, !tbaa !133, !alias.scope !828
  %i.c = load ptr, ptr %7, align 8, !tbaa !140, !noalias !828 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !135, !noalias !828 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36, !noalias !828
  store i64 %i.e, ptr %i.a, align 8, !tbaa !111, !noalias !828
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %6, align 8, !tbaa !140, !alias.scope !828
  %i.h = load i64, ptr %i.a, align 8, !tbaa !111, !noalias !828
  store i64 %i.h, ptr %i.b, align 8, !tbaa !103, !alias.scope !828
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !103
  store i8 %i.j, ptr %i.i, align 1, !tbaa !103
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !111, !noalias !828 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !135, !alias.scope !828
  %i.m = load ptr, ptr %6, align 8, !tbaa !140, !alias.scope !828
end_hunk_2
begin_hunk_3_@"_ZN9grpc_core5Party15ParticipantImplIZNS_10ClientCall15CancelWithErrorEN4absl12lts_202505126StatusEE3$_0ZNS_9CallSpine15SpawnInfallibleIS6_EEvSt17basic_string_viewIcSt11char_traitsIcEEOT_EUlNS_5EmptyEE_E22PollParticipantPromiseEv":bb.a
  call void @__clang_call_terminate(ptr %i.z) #34
  unreachable

"_ZN9grpc_core14promise_detail18OncePromiseFactoryIvZNS_10ClientCall15CancelWithErrorEN4absl12lts_202505126StatusEE3$_0ED2Ev.exit": ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i, %bb.i, %bb.j
  store i8 1, ptr %i.a, align 8, !tbaa !268
  br label %.critedge

.critedge:                                        ; preds = %"_ZN9grpc_core14promise_detail18OncePromiseFactoryIvZNS_10ClientCall15CancelWithErrorEN4absl12lts_202505126StatusEE3$_0ED2Ev.exit", %bb.a
  call void @_ZN9grpc_core5Party11ParticipantD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(40) %0) #36
  call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #37
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN9grpc_core5Party15ParticipantImplIZNS_10ClientCall15CancelWithErrorEN4absl12lts_202505126StatusEE3$_0ZNS_9CallSpine15SpawnInfallibleIS6_EEvSt17basic_string_viewIcSt11char_traitsIcEEOT_EUlNS_5EmptyEE_E7DestroyEv"(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !268, !range !109, !noundef !110
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %"_ZN9grpc_core5Party15ParticipantImplIZNS_10ClientCall15CancelWithErrorEN4absl12lts_202505126StatusEE3$_0ZNS_9CallSpine15SpawnInfallibleIS6_EEvSt17basic_string_viewIcSt11char_traitsIcEEOT_EUlNS_5EmptyEE_ED2Ev.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !113  ; 2 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = inttoptr i64 %i.f to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #34
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i:     ; preds = %bb.c, %bb.b
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !189  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %"_ZN9grpc_core5Party15ParticipantImplIZNS_10ClientCall15CancelWithErrorEN4absl12lts_202505126StatusEE3$_0ZNS_9CallSpine15SpawnInfallibleIS6_EEvSt17basic_string_viewIcSt11char_traitsIcEEOT_EUlNS_5EmptyEE_ED2Ev.exit", label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.m = atomicrmw sub ptr %i.l, i64 1 acq_rel, align 8
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.f, label %"_ZN9grpc_core5Party15ParticipantImplIZNS_10ClientCall15CancelWithErrorEN4absl12lts_202505126StatusEE3$_0ZNS_9CallSpine15SpawnInfallibleIS6_EEvSt17basic_string_viewIcSt11char_traitsIcEEOT_EUlNS_5EmptyEE_ED2Ev.exit", !prof !31

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  invoke void @_ZNK9grpc_core16UnrefCallDestroyclINS_10ClientCallEEEvPT_(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull %i.k)
          to label %"_ZN9grpc_core5Party15ParticipantImplIZNS_10ClientCall15CancelWithErrorEN4absl12lts_202505126StatusEE3$_0ZNS_9CallSpine15SpawnInfallibleIS6_EEvSt17basic_string_viewIcSt11char_traitsIcEEOT_EUlNS_5EmptyEE_ED2Ev.exit" unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #34
  unreachable

"_ZN9grpc_core5Party15ParticipantImplIZNS_10ClientCall15CancelWithErrorEN4absl12lts_202505126StatusEE3$_0ZNS_9CallSpine15SpawnInfallibleIS6_EEvSt17basic_string_viewIcSt11char_traitsIcEEOT_EUlNS_5EmptyEE_ED2Ev.exit": ; preds = %bb.a, %_ZN4absl12lts_202505126StatusD2Ev.exit.i.i.i, %bb.e, %bb.f
  tail call void @_ZN9grpc_core5Party11ParticipantD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(40) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN9grpc_core5Party15ParticipantImplIZNS_10ClientCall15CancelWithErrorEN4absl12lts_202505126StatusEE3$_0ZNS_9CallSpine15SpawnInfallibleIS6_EEvSt17basic_string_viewIcSt11char_traitsIcEEOT_EUlNS_5EmptyEE_E18ChannelzPropertiesEv"(ptr dead_on_unwind noalias writable sret(%"class.grpc_core::channelz::PropertyList") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.312, align 1            ; 3 uses
  %3 = alloca %class.anon.312, align 1            ; 3 uses
  %4 = alloca %class.anon.312, align 1            ; 3 uses
  %5 = alloca %class.anon.312, align 1            ; 3 uses
  %6 = alloca %"class.std::variant", align 8      ; 6 uses
  %7 = alloca %"class.std::optional.399", align 8 ; 9 uses
  %8 = alloca %"class.grpc_core::channelz::PropertyList", align 8 ; 8 uses
  %9 = alloca %"class.grpc_core::channelz::PropertyList", align 8 ; 9 uses
  %10 = alloca %"class.grpc_core::channelz::PropertyList", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %9, align 8, !tbaa !35
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN9grpc_core8channelz12PropertyList3SetISt17basic_string_viewIcSt11char_traitsIcEEEERS1_S6_T_(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 11, ptr nonnull @.str.100, i64 71, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.104, i64 45))
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN9grpc_core8channelz12PropertyList3SetISt17basic_string_viewIcSt11char_traitsIcEEEERS1_S6_T_(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 7, ptr nonnull @.str.101, i64 73, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.107, i64 45))
          to label %bb.c unwind label %bb.t

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !953)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36, !noalias !953
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %8, align 8, !tbaa !35, !noalias !953
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false), !noalias !953
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i8, ptr %i.e, align 8, !tbaa !268, !range !109, !noalias !953, !noundef !110
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !953
  call void @llvm.experimental.noalias.scope.decl(metadata !954)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36, !noalias !955
  %i.h = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35
          to label %.noexc.i unwind label %bb.k, !noalias !953 ; 8 uses

.noexc.i:                                         ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 1, ptr %i.i, align 8, !tbaa !123, !noalias !956
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 1, ptr %i.j, align 4, !tbaa !124, !noalias !956
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.h, align 8, !tbaa !35, !noalias !956
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz20property_list_detail20PromisePropertyValueE, i64 16), ptr %i.k, align 8, !tbaa !35, !noalias !956
  %i.l = invoke ptr @upb_Arena_Init(ptr noundef null, i64 noundef 0, ptr noundef nonnull @upb_alloc_global)
          to label %.noexc.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i, !noalias !956 ; 5 uses

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.l, ptr %i.m, align 8, !tbaa !359, !noalias !956
  %i.n = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__Promise_msg_init, i64 8), align 8, !tbaa !362, !noalias !956
  %i.o = zext i16 %i.n to i64                     ; 5 uses
  %i.p = and i64 %i.o, 7
  %i.q = icmp eq i64 %i.p, 0
  call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !364, !noalias !956
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !365, !noalias !956 ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ult i64 %i.w, %i.o
  br i1 %i.x, label %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, !prof !31

upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o
  store ptr %i.y, ptr %i.l, align 8, !tbaa !365, !noalias !956
  br label %bb.e

upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %.noexc.i.i.i.i.i.i.i
  %i.z = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.l, i64 noundef %i.o)
          to label %bb.e unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i, !noalias !956

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i: ; preds = %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 40) #37, !noalias !956
  br label %.body.i

bb.e:                                             ; preds = %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.t, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.z, %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.sink.i.i.i.i.i.i.i.i.i.i, i8 0, i64 %i.o, i1 false), !noalias !956
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %.sink.i.i.i.i.i.i.i.i.i.i, ptr %i.ab, align 8, !tbaa !366, !noalias !956
  %i.ac = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.i.i.i.i.i.i, i64 8
  store i32 2, ptr %i.ac, align 4, !tbaa !97, !noalias !956
  %i.ad = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.109, i64 45), ptr %i.ad, align 4, !noalias !956
  %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.i.i.i.i.i.i, i64 24
  store i64 90, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !956
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 10, ptr %i.af, align 8, !tbaa !128, !noalias !955
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store ptr %i.k, ptr %7, align 8, !tbaa !369, !alias.scope !954, !noalias !953
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.ae, align 8, !tbaa !121, !noalias !955
  store ptr %i.h, ptr %i.ah, align 8, !tbaa !121, !alias.scope !954, !noalias !953
  store ptr null, ptr %6, align 8, !tbaa !369, !noalias !955
  store i8 10, ptr %i.ag, align 8, !tbaa !128, !alias.scope !954, !noalias !953
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  store i8 1, ptr %i.ai, align 8, !tbaa !130, !alias.scope !954, !noalias !953
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36, !noalias !955
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(33) %6)
          to label %"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZNS4_18PromiseFactoryImplIZNS_10ClientCall15CancelWithErrorEN4absl12lts_202505126StatusEE3$_0EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS4_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISH_EE7is_pollEsr3stdE9is_same_vISH_vEENS4_9OnceTokenEE4typeEOSE_EUlvE_vEEEEvE4WrapB5cxx11ESO_.exit.i.i" unwind label %bb.f, !noalias !955

bb.f:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #34, !noalias !955
  unreachable

"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZNS4_18PromiseFactoryImplIZNS_10ClientCall15CancelWithErrorEN4absl12lts_202505126StatusEE3$_0EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS4_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISH_EE7is_pollEsr3stdE9is_same_vISH_vEENS4_9OnceTokenEE4typeEOSE_EUlvE_vEEEEvE4WrapB5cxx11ESO_.exit.i.i": ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36, !noalias !955
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36, !noalias !955
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 7, ptr nonnull @.str.108, ptr noundef nonnull align 8 %7)
          to label %bb.g unwind label %bb.j, !noalias !953

bb.g:                                             ; preds = %"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZNS4_18PromiseFactoryImplIZNS_10ClientCall15CancelWithErrorEN4absl12lts_202505126StatusEE3$_0EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS4_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISH_EE7is_pollEsr3stdE9is_same_vISH_vEENS4_9OnceTokenEE4typeEOSE_EUlvE_vEEEEvE4WrapB5cxx11ESO_.exit.i.i"
  %i.al = load i8, ptr %i.ai, align 8, !tbaa !130, !range !109, !noalias !953, !noundef !110
  %i.am = trunc nuw i8 %i.al to i1
  store i8 0, ptr %i.ai, align 8, !tbaa !130, !noalias !953
  %i.an = load i8, ptr %i.ag, align 8, !noalias !953
  %.not.i.i.i.i.i.i.i.i = icmp ne i8 %i.an, -1
  %or.cond.not.i.i.i.i.i = select i1 %i.am, i1 %.not.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i, label %bb.h, label %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZNS4_18PromiseFactoryImplIZNS_10ClientCall15CancelWithErrorEN4absl12lts_202505126StatusEE3$_0EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS4_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISH_EE7is_pollEsr3stdE9is_same_vISH_vEENS4_9OnceTokenEE4typeEOSE_EUlvE_vEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEESE_.exit.i", !prof !131

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36, !noalias !953
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %.noexc.i.i.i.i.i6.i.i unwind label %bb.i, !noalias !953

.noexc.i.i.i.i.i6.i.i:                            ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36, !noalias !953
  br label %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZNS4_18PromiseFactoryImplIZNS_10ClientCall15CancelWithErrorEN4absl12lts_202505126StatusEE3$_0EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS4_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISH_EE7is_pollEsr3stdE9is_same_vISH_vEENS4_9OnceTokenEE4typeEOSE_EUlvE_vEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEESE_.exit.i"

bb.i:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #34, !noalias !953
  unreachable

bb.j:                                             ; preds = %"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZNS4_18PromiseFactoryImplIZNS_10ClientCall15CancelWithErrorEN4absl12lts_202505126StatusEE3$_0EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS4_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISH_EE7is_pollEsr3stdE9is_same_vISH_vEENS4_9OnceTokenEE4typeEOSE_EUlvE_vEEEEvE4WrapB5cxx11ESO_.exit.i.i"
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #36, !noalias !953
  br label %.body.i

"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZNS4_18PromiseFactoryImplIZNS_10ClientCall15CancelWithErrorEN4absl12lts_202505126StatusEE3$_0EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS4_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISH_EE7is_pollEsr3stdE9is_same_vISH_vEENS4_9OnceTokenEE4typeEOSE_EUlvE_vEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEESE_.exit.i": ; preds = %.noexc.i.i.i.i.i6.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !953
  %i.ar = load <2 x ptr>, ptr %i.d, align 8, !tbaa !143, !noalias !953
  %.phi.trans.insert4.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.pre5.i = load ptr, ptr %.phi.trans.insert4.i, align 8, !tbaa !142, !noalias !953
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.j, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.as, %bb.k ], [ %i.aa, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i ], [ %i.aq, %bb.j ]
  call void @_ZN9grpc_core8channelz12PropertyListD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #36, !noalias !953
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36, !noalias !953
  br label %.body

bb.l:                                             ; preds = %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZNS4_18PromiseFactoryImplIZNS_10ClientCall15CancelWithErrorEN4absl12lts_202505126StatusEE3$_0EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS4_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISH_EE7is_pollEsr3stdE9is_same_vISH_vEENS4_9OnceTokenEE4typeEOSE_EUlvE_vEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEESE_.exit.i", %bb.c
  %i.at = phi ptr [ %.pre5.i, %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZNS4_18PromiseFactoryImplIZNS_10ClientCall15CancelWithErrorEN4absl12lts_202505126StatusEE3$_0EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS4_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISH_EE7is_pollEsr3stdE9is_same_vISH_vEENS4_9OnceTokenEE4typeEOSE_EUlvE_vEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEESE_.exit.i" ], [ null, %bb.c ]
  %i.au = phi <2 x ptr> [ %i.ar, %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZNS4_18PromiseFactoryImplIZNS_10ClientCall15CancelWithErrorEN4absl12lts_202505126StatusEE3$_0EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS4_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISH_EE7is_pollEsr3stdE9is_same_vISH_vEENS4_9OnceTokenEE4typeEOSE_EUlvE_vEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEESE_.exit.i" ], [ splat (ptr null), %bb.c ]
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %10, align 8, !tbaa !35, !alias.scope !953
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 16
  store <2 x ptr> %i.au, ptr %i.av, align 8, !tbaa !143, !alias.scope !953
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr %i.at, ptr %i.ax, align 8, !tbaa !142, !alias.scope !953
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36, !noalias !953
  %i.ay = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN9grpc_core8channelz12PropertyList5MergeES1_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 %10)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %0, align 8, !tbaa !35
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESaISM_EEC2ERKSO_(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit unwind label %bb.u

_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit: ; preds = %bb.m
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !138 ; 3 uses
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !139 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bb, %i.bc
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bn, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i ], [ %i.bb, %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit ] ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !128
  %.not.i.i.i.i.i.i.i.i8 = icmp eq i8 %i.be, -1
  br i1 %.not.i.i.i.i.i.i.i.i8, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i, label %bb.n, !prof !31

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(33) %i.bf)
          to label %.noexc.i.i.i.i.i.i.i9 unwind label %bb.o

.noexc.i.i.i.i.i.i.i9:                            ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #34
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i9, %.lr.ph.i.i.i.i
  %i.bi = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !140 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !103
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #37
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bn, %i.bc
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.av, align 8, !tbaa !138
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i, %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit
  %i.bo = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.bb, %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i1.i.i, label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i
  %i.bp = load ptr, ptr %i.ax, align 8, !tbaa !142
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bs) #37
  br label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit

_ZN9grpc_core8channelz12PropertyListD2Ev.exit:    ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i, %bb.p
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !138 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !139 ; 2 uses
  %.not4.i.i.i.i10 = icmp eq ptr %i.bt, %i.bv
  br i1 %.not4.i.i.i.i10, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i21, label %.lr.ph.i.i.i.i11

.lr.ph.i.i.i.i11:                                 ; preds = %_ZN9grpc_core8channelz12PropertyListD2Ev.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i17
  %.05.i.i.i.i12 = phi ptr [ %i.cg, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i17 ], [ %i.bt, %_ZN9grpc_core8channelz12PropertyListD2Ev.exit ] ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i12, i64 64
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !128
  %.not.i.i.i.i.i.i.i.i13 = icmp eq i8 %i.bx, -1
  br i1 %.not.i.i.i.i.i.i.i.i13, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i15, label %bb.q, !prof !31

bb.q:                                             ; preds = %.lr.ph.i.i.i.i11
  %i.by = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i12, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(33) %i.by)
          to label %.noexc.i.i.i.i.i.i.i14 unwind label %bb.r

.noexc.i.i.i.i.i.i.i14:                           ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i15

bb.r:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #34
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i15: ; preds = %.noexc.i.i.i.i.i.i.i14, %.lr.ph.i.i.i.i11
  %i.cb = load ptr, ptr %.05.i.i.i.i12, align 8, !tbaa !140 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i12, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i16: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i15
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !103
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #37
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i17

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i17: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i16
  %i.cg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i12, i64 72 ; 2 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.cg, %i.bv
  br i1 %.not.i.i.i.i18, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i19, label %.lr.ph.i.i.i.i11, !llvm.loop !2

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i19: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i17
  %.pr.i.i20 = load ptr, ptr %i.a, align 8, !tbaa !138
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i21

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i21: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i19, %_ZN9grpc_core8channelz12PropertyListD2Ev.exit
  %i.ch = phi ptr [ %.pr.i.i20, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i19 ], [ %i.bt, %_ZN9grpc_core8channelz12PropertyListD2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i22 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i1.i.i22, label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit24, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i21
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !142
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ch to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cm) #37
  br label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit24

_ZN9grpc_core8channelz12PropertyListD2Ev.exit24:  ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i21, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  ret void

bb.t:                                             ; preds = %bb.b, %bb.a
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %bb.m, %bb.l
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core8channelz12PropertyListD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %10) #36
  br label %.body

.body:                                            ; preds = %bb.u, %.body.i, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %i.cn, %bb.t ], [ %i.co, %bb.u ], [ %eh.lpad-body.i, %.body.i ]
  call void @_ZN9grpc_core8channelz12PropertyListD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core13CallInitiator6CancelEN4absl12lts_202505126StatusE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef align 8 %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 3 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !113
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.d, !prof !31

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.98, i32 noundef 431, ptr noundef nonnull @.str.99) #38
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #34
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #34
  unreachable

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @_ZN9grpc_core24ServerMetadataFromStatusERKN4absl12lts_202505126StatusE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !37
  %storemerge.i.i.i.i = or i16 %i.g, 2
  store i16 %storemerge.i.i.i.i, ptr %i.f, align 2, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 635
  store i8 1, ptr %i.h, align 1, !tbaa !958
  %i.i = load ptr, ptr %0, align 8, !tbaa !114
  %i.j = load i8, ptr %4, align 8, !tbaa !39      ; 2 uses
  store i8 %i.j, ptr %5, align 8, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = ptrtoint ptr %i.e to i64
  store ptr null, ptr %i.d, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 184
  store i8 %i.j, ptr %2, align 8, !tbaa !39
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.l, ptr %i.n, align 8, !tbaa !101
  store ptr null, ptr %i.k, align 8, !tbaa !101
  invoke void @_ZN9grpc_core11CallFilters26PushServerTrailingMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEE(ptr noundef nonnull align 8 dereferenceable(144) %i.m, ptr noundef nonnull align 8 %2)
          to label %bb.e unwind label %.body

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !101  ; 3 uses
  %.not.i.i = icmp ne ptr %i.o, null
  %i.p = load i8, ptr %2, align 8, !range !109
  %i.q = trunc nuw i8 %i.p to i1
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.q, i1 false
  br i1 %or.cond.i.i, label %bb.f, label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %i.o) #36
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 664) #37
  br label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit

.body:                                            ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #36
  call void @_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #36
  call void @_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  resume { ptr, i32 } %i.r

_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !101 ; 3 uses
  %.pre14 = load i8, ptr %4, align 8, !range !109
  %.not.i11 = icmp ne ptr %.pre, null
  %i.s = trunc nuw i8 %.pre14 to i1
  %or.cond.i12 = select i1 %.not.i11, i1 %i.s, i1 false
  br i1 %or.cond.i12, label %bb.g, label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit13

bb.g:                                             ; preds = %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit
  call void @_ZN9grpc_core11MetadataMapI19grpc_metadata_batchJNS_16HttpPathMetadataENS_21HttpAuthorityMetadataENS_18HttpMethodMetadataENS_18HttpStatusMetadataENS_18HttpSchemeMetadataENS_19ContentTypeMetadataENS_10TeMetadataENS_20GrpcEncodingMetadataENS_27GrpcInternalEncodingRequestENS_26GrpcAcceptEncodingMetadataENS_18GrpcStatusMetadataENS_19GrpcTimeoutMetadataENS_31GrpcPreviousRpcAttemptsMetadataENS_27GrpcRetryPushbackMsMetadataENS_17UserAgentMetadataENS_19GrpcMessageMetadataENS_12HostMetadataENS_30EndpointLoadMetricsBinMetadataENS_26GrpcServerStatsBinMetadataENS_20GrpcTraceBinMetadataENS_19GrpcTagsBinMetadataENS_25GrpcLbClientStatsMetadataENS_17LbCostBinMetadataENS_15LbTokenMetadataENS_18XEnvoyPeerMetadataENS_21XForwardedForMetadataENS_22XForwardedHostMetadataENS_22W3CTraceParentMetadataENS_22GrpcStreamNetworkStateENS_10PeerStringENS_17GrpcStatusContextENS_18GrpcStatusFromWireENS_20GrpcCallWasCancelledENS_12WaitForReadyENS_18IsTransparentRetryENS_16GrpcTrailersOnlyENS_10GrpcTarPitENS_20GrpcRegisteredMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %.pre) #36
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef 664) #37
  br label %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit13

_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit13: ; preds = %_ZNSt10unique_ptrI19grpc_metadata_batchN9grpc_core5Arena13PooledDeleterEED2Ev.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret void
}

declare void @_ZN9grpc_core24ServerMetadataFromStatusERKN4absl12lts_202505126StatusE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN9grpc_core11CallFilters26PushServerTrailingMetadataESt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef align 8) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZN9grpc_core8channelz12PropertyList3SetISt17basic_string_viewIcSt11char_traitsIcEEEERS1_S6_T_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1, ptr %2, i64 %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.312, align 1            ; 3 uses
  %6 = alloca %class.anon.312, align 1            ; 3 uses
  %7 = alloca %"class.std::variant", align 8      ; 7 uses
  %8 = alloca %"class.std::optional.399", align 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !961)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36, !noalias !961
  store i64 %3, ptr %7, align 8, !tbaa !111, !noalias !961
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !126, !noalias !961
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 0, ptr %i.a, align 8, !tbaa !128, !noalias !961
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(33) %7, i64 16, i1 false), !tbaa.struct !313
  store i8 0, ptr %i.b, align 8, !tbaa !128, !alias.scope !961
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  store i8 1, ptr %i.c, align 8, !tbaa !130, !alias.scope !961
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36, !noalias !961
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(33) %7)
          to label %_ZN9grpc_core8channelz20property_list_detail7WrapperISt17basic_string_viewIcSt11char_traitsIcEEvE4WrapB5cxx11ES6_.exit unwind label %bb.b, !noalias !961

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #34, !noalias !961
  unreachable

_ZN9grpc_core8channelz20property_list_detail7WrapperISt17basic_string_viewIcSt11char_traitsIcEEvE4WrapB5cxx11ES6_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36, !noalias !961
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36, !noalias !961
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1, ptr %2, ptr noundef nonnull align 8 %8)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZN9grpc_core8channelz20property_list_detail7WrapperISt17basic_string_viewIcSt11char_traitsIcEEvE4WrapB5cxx11ES6_.exit
  %i.f = load i8, ptr %i.c, align 8, !tbaa !130, !range !109, !noundef !110
  %i.g = trunc nuw i8 %i.f to i1
  store i8 0, ptr %i.c, align 8, !tbaa !130
  %i.h = load i8, ptr %i.b, align 8
  %.not.i.i.i.i.i.i = icmp ne i8 %i.h, -1
  %or.cond.not.i.i.i = select i1 %i.g, i1 %.not.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i, label %bb.d, label %_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev.exit, !prof !131

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(48) %8)
          to label %.noexc.i.i.i.i.i unwind label %bb.e

.noexc.i.i.i.i.i:                                 ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #34
  unreachable

_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev.exit: ; preds = %bb.c, %.noexc.i.i.i.i.i
  ret ptr %0

bb.f:                                             ; preds = %_ZN9grpc_core8channelz20property_list_detail7WrapperISt17basic_string_viewIcSt11char_traitsIcEEvE4WrapB5cxx11ES6_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #36
  resume { ptr, i32 } %i.k
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN9grpc_core8channelz12PropertyList5MergeES1_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef align 8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !359
  invoke void @upb_Arena_Free(ptr noundef %i.b)
          to label %_ZSt8_DestroyIN9grpc_core8channelz20property_list_detail20PromisePropertyValueEEvPT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #34
  unreachable

_ZSt8_DestroyIN9grpc_core8channelz20property_list_detail20PromisePropertyValueEEvPT_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !963  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !103
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #36
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core8channelz20property_list_detail20PromisePropertyValueD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !359
  invoke void @upb_Arena_Free(ptr noundef %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #34
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core8channelz20property_list_detail20PromisePropertyValueD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !359
  invoke void @upb_Arena_Free(ptr noundef %i.b)
          to label %_ZN9grpc_core8channelz20property_list_detail20PromisePropertyValueD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #34
  unreachable

_ZN9grpc_core8channelz20property_list_detail20PromisePropertyValueD2Ev.exit: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core8channelz20property_list_detail20PromisePropertyValue7FillAnyEP19google_protobuf_AnyP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !359
  %i.e = tail call zeroext i1 @upb_Arena_Fuse(ptr noundef %i.d, ptr noundef %2) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.h = call i32 @upb_Encode(ptr noundef %i.g, ptr noundef nonnull @grpc__channelz__v2__Promise_msg_init, i32 noundef 0, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.j = load i64, ptr %i.b, align 8, !tbaa !111
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.i, ptr %i.k, align 1
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.j, ptr %.sroa.56.0..sroa_idx.i, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.110, ptr %i.l, align 1
  %.sroa.56.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 44, ptr %.sroa.56.0..sroa_idx.i8, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core8channelz20property_list_detail20PromisePropertyValue14TakeJsonObjectB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::map") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.544, align 1            ; 3 uses
  %3 = alloca %class.anon.544, align 1            ; 3 uses
  %4 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, grpc_core::experimental::Json>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, grpc_core::experimental::Json>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca [1 x %"struct.std::pair.507"], align 8 ; 10 uses
  %6 = alloca %"class.grpc_core::experimental::Json", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = tail call ptr @upb_DefPool_New()         ; 8 uses
  %i.c = invoke zeroext i1 @_upb_DefPool_LoadDefInit(ptr noundef %i.b, ptr noundef nonnull @src_proto_grpc_channelz_v2_promise_proto_upbdefinit)
          to label %.noexc unwind label %bb.n     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %i.d = invoke ptr @upb_DefPool_FindMessageByName(ptr noundef %i.b, ptr noundef nonnull @.str.111)
          to label %grpc_channelz_v2_Promise_getmsgdef.exit unwind label %bb.n ; 2 uses

grpc_channelz_v2_Promise_getmsgdef.exit:          ; preds = %.noexc
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !366
  %i.g = invoke i64 @upb_TextEncode(ptr noundef %i.f, ptr noundef %i.d, ptr noundef %i.b, i32 noundef 0, ptr noundef null, i64 noundef 0)
          to label %bb.b unwind label %bb.o       ; 3 uses

bb.b:                                             ; preds = %grpc_channelz_v2_Promise_getmsgdef.exit
  %i.h = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #35
          to label %bb.c unwind label %bb.p       ; 7 uses

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.h, i8 0, i64 %i.g, i1 false), !noalias !969
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !366
  %i.j = invoke i64 @upb_TextEncode(ptr noundef %i.i, ptr noundef %i.d, ptr noundef %i.b, i32 noundef 0, ptr noundef nonnull %i.h, i64 noundef %i.g)
end_hunk_3
begin_hunk_4_@"_ZN9grpc_core5Party15ParticipantImplIZNS_15OnCancelFactoryIZNS_15InfallibleBatchINS_3MapINS_14promise_detail5AllOkINS_10StatusFlagEJNS5_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERSC_EUlvE_L12grpc_op_type1EEEJNS9_IZZNSA_11CommitBatchESD_mSE_bENK3$_1clESG_EUlvE_LSI_2EEEEEENS8_INS9_IZZNSA_11CommitBatchESD_mSE_bENK3$_3clESG_EUlvE_LSI_4EEEJNS9_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSG_PT_EUlvE_LSI_5EEEEEEEEEZNSA_11CommitBatchESD_mSE_bE3$_4EENS9_IZNS2_IZNSA_11CommitBatchESD_mSE_bE3$_5ZNSA_11CommitBatchESD_mSE_bE3$_6EEDaOSU_OT0_EUlvE_LSI_6EEEEEDaS14_S16_bSE_P21grpc_completion_queueEUlvE_ZNS3_IS11_S18_EEDaS14_S16_bSE_S1A_EUlvE0_EEDaS14_S16_EUlvE_ZNS_9CallSpine15SpawnInfallibleIS1D_EEvSt17basic_string_viewIcSt11char_traitsIcEES14_EUlNS_5EmptyEE_E18ChannelzPropertiesEv":bb.a
  %i.dy = load ptr, ptr %i.az, align 8, !tbaa !364, !noalias !1141
  %i.dz = load ptr, ptr %i.ab, align 8, !tbaa !365, !noalias !1141 ; 4 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64               ; 2 uses
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = icmp ult i64 %i.ec, %i.dv
  br i1 %i.ed, label %upb_Arena_Malloc.exit.i.i46.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i43.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !31

upb_Arena_Malloc.exit.thread.i.i43.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dv
  store ptr %i.ee, ptr %i.ab, align 8, !tbaa !365, !noalias !1141
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dz) ]
  br label %bb.o

upb_Arena_Malloc.exit.i.i46.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n
  %i.ef = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.ab, i64 noundef %i.dv)
          to label %.noexc17.i.i.i.i.i.i.i unwind label %bb.bi, !noalias !1141 ; 3 uses

.noexc17.i.i.i.i.i.i.i:                           ; preds = %upb_Arena_Malloc.exit.i.i46.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit50.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.i._crit_edge.i48.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !431

upb_Arena_Malloc.exit.i._crit_edge.i48.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc17.i.i.i.i.i.i.i
  %.pre.i49.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.ef to i64
  br label %bb.o

bb.o:                                             ; preds = %upb_Arena_Malloc.exit.i._crit_edge.i48.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i43.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre-phi.i44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i49.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i._crit_edge.i48.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.eb, %upb_Arena_Malloc.exit.thread.i.i43.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.0.i11.i.i45.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ef, %upb_Arena_Malloc.exit.i._crit_edge.i48.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dz, %upb_Arena_Malloc.exit.thread.i.i43.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i45.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 %i.dv, i1 false), !noalias !1141
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise_msg_init) #36, !noalias !1141, !srcloc !432
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !103, !noalias !1141
  %i.ei = or i8 %i.eh, 1
  store i8 %i.ei, ptr %i.eg, align 1, !tbaa !103, !noalias !1141
  store i64 %.pre-phi.i44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.dq, align 1, !noalias !1141
  br label %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit50.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit50.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.o, %.noexc17.i.i.i.i.i.i.i, %bb.m
  %.0.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.0.i11.i.i45.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.o ], [ %i.ds, %bb.m ], [ null, %.noexc17.i.i.i.i.i.i.i ] ; 3 uses
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise__Custom_msg_init) #36, !noalias !1141, !srcloc !432
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !97, !noalias !1141
  %i.el = icmp eq i32 %i.ek, 1
  br i1 %i.el, label %grpc_channelz_v2_Promise_custom_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %grpc_channelz_v2_Promise_custom_promise.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

grpc_channelz_v2_Promise_custom_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit50.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %.0.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %.0.in.then.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.em, align 4, !noalias !1141 ; 2 uses
  %i.en = inttoptr i64 %.0.in.then.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to ptr
  %i.eo = icmp eq i64 %.0.in.then.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.eo, label %grpc_channelz_v2_Promise_custom_promise.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %grpc_channelz_v2_Promise_mutable_custom_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

grpc_channelz_v2_Promise_custom_promise.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %grpc_channelz_v2_Promise_custom_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit50.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ep = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__Promise__Custom_msg_init, i64 8), align 8, !tbaa !362, !noalias !1141
  %i.eq = zext i16 %i.ep to i64                   ; 5 uses
  %i.er = and i64 %i.eq, 7
  %i.es = icmp eq i64 %i.er, 0
  call void @llvm.assume(i1 %i.es)
  %i.et = load ptr, ptr %i.az, align 8, !tbaa !364, !noalias !1141
  %i.eu = load ptr, ptr %i.ab, align 8, !tbaa !365, !noalias !1141 ; 4 uses
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = ptrtoint ptr %i.eu to i64               ; 2 uses
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = icmp ult i64 %i.ex, %i.eq
  br i1 %i.ey, label %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !31

upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %grpc_channelz_v2_Promise_custom_promise.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.eq
  store ptr %i.ez, ptr %i.ab, align 8, !tbaa !365, !noalias !1141
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eu) ]
  br label %bb.p

upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %grpc_channelz_v2_Promise_custom_promise.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fa = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.ab, i64 noundef %i.eq)
          to label %.noexc18.i.i.i.i.i.i.i unwind label %bb.bi, !noalias !1141 ; 3 uses

.noexc18.i.i.i.i.i.i.i:                           ; preds = %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %grpc_channelz_v2_Promise_mutable_custom_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !431

upb_Arena_Malloc.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc18.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.fa to i64
  br label %bb.p

bb.p:                                             ; preds = %upb_Arena_Malloc.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ew, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.0.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fa, %upb_Arena_Malloc.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.eu, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 %i.eq, i1 false), !noalias !1141
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise__Custom_msg_init) #36, !noalias !1141, !srcloc !432
  store i32 1, ptr %i.ej, align 4, !tbaa !97, !noalias !1141
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.fb, align 4, !noalias !1141
  br label %grpc_channelz_v2_Promise_mutable_custom_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

grpc_channelz_v2_Promise_mutable_custom_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p, %.noexc18.i.i.i.i.i.i.i, %grpc_channelz_v2_Promise_custom_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.0.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.p ], [ %i.en, %grpc_channelz_v2_Promise_custom_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ null, %.noexc18.i.i.i.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #36, !noalias !1141
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #36, !noalias !1141
  store i64 14, ptr %18, align 8, !noalias !1141
  %i.fc = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr @.str.184, ptr %i.fc, align 8, !noalias !1141
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #36, !noalias !1141
  %i.fd = invoke noundef ptr @_ZN9grpc_core14GrpcOpTypeNameE12grpc_op_type(i32 noundef 6)
          to label %.noexc19.i.i.i.i.i.i.i unwind label %bb.bi, !noalias !1141 ; 3 uses

.noexc19.i.i.i.i.i.i.i:                           ; preds = %grpc_channelz_v2_Promise_mutable_custom_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.noexc19.i.i.i.i.i.i.i
  %i.fe = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fd) #36, !noalias !1141
  br label %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4absl12lts_202505128AlphaNumC2EPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %.noexc19.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fe, %bb.q ], [ 0, %.noexc19.i.i.i.i.i.i.i ]
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %19, align 8, !noalias !1141
  %i.ff = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.fd, ptr %i.ff, align 8, !noalias !1141
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #36, !noalias !1141
  store i64 1, ptr %20, align 8, !noalias !1141
  %i.fg = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr @.str.185, ptr %i.fg, align 8, !noalias !1141
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull align 8 dereferenceable(48) %20)
          to label %.noexc20.i.i.i.i.i.i.i unwind label %bb.bi, !noalias !1141

.noexc20.i.i.i.i.i.i.i:                           ; preds = %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #36, !noalias !1141
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #36, !noalias !1141
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36, !noalias !1141
  %i.fh = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !135, !noalias !1141 ; 2 uses
  %i.fj = add i64 %i.fi, 7
  %i.fk = and i64 %i.fj, -8                       ; 3 uses
  %i.fl = load ptr, ptr %i.az, align 8, !tbaa !364, !noalias !1141
  %i.fm = load ptr, ptr %i.ab, align 8, !tbaa !365, !noalias !1141 ; 4 uses
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = icmp ult i64 %i.fp, %i.fk
  br i1 %i.fq, label %bb.r, label %bb.s, !prof !31

bb.r:                                             ; preds = %.noexc20.i.i.i.i.i.i.i
  %i.fr = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.ab, i64 noundef %i.fk)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.u, !noalias !1141

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r
  %.pre.i13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fh, align 8, !tbaa !135, !noalias !1141
  br label %bb.t

bb.s:                                             ; preds = %.noexc20.i.i.i.i.i.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fk
  store ptr %i.fs, ptr %i.ab, align 8, !tbaa !365, !noalias !1141
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fm) ]
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ft = phi i64 [ %.pre.i13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fi, %bb.s ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fr, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fm, %bb.s ] ; 2 uses
  %i.fu = load ptr, ptr %17, align 8, !tbaa !140, !noalias !1141
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr align 1 %i.fu, i64 %i.ft, i1 false), !noalias !1141
  %i.fv = load i64, ptr %i.fh, align 8, !tbaa !135, !noalias !1141
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.fw, align 1, !noalias !1141
  %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  store i64 %i.fv, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !1141
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #36, !noalias !1141
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %21, align 8, !tbaa !35, !noalias !1141
  %i.fx = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fx, i8 0, i64 24, i1 false), !noalias !1141
  %i.fy = load i32, ptr %i.ac, align 8, !tbaa !196, !noalias !1141
  switch i32 %i.fy, label %bb.aw [
    i32 0, label %bb.v
    i32 1, label %bb.ab
    i32 2, label %bb.ag
  ]

bb.u:                                             ; preds = %bb.r
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %16), !noalias !1141
  store i64 9, ptr %16, align 8, !tbaa !111, !alias.scope !1142, !noalias !1141
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr @.str.187, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !126, !alias.scope !1142, !noalias !1141
  %i.ga = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  store i8 0, ptr %i.ga, align 8, !tbaa !128, !alias.scope !1142, !noalias !1141
  %i.gb = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 3 uses
  store i8 1, ptr %i.gb, align 8, !tbaa !130, !alias.scope !1142, !noalias !1141
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 5, ptr nonnull @.str.186, ptr noundef nonnull align 8 %16)
          to label %bb.w unwind label %bb.z, !noalias !1141

bb.w:                                             ; preds = %bb.v
  %i.gc = load i8, ptr %i.gb, align 8, !tbaa !130, !range !109, !noalias !1141, !noundef !110
  %i.gd = trunc nuw i8 %i.gc to i1
  store i8 0, ptr %i.gb, align 8, !tbaa !130, !noalias !1141
  %i.ge = load i8, ptr %i.ga, align 8, !noalias !1141
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i8 %i.ge, -1
  %or.cond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.gd, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.x, label %_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !131

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36, !noalias !1141
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(48) %16)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.y, !noalias !1141

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36, !noalias !1141
  br label %_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  %i.gg = extractvalue { ptr, i32 } %i.gf, 0
  call void @__clang_call_terminate(ptr %i.gg) #34, !noalias !1141
  unreachable

bb.z:                                             ; preds = %bb.v
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %16) #36, !noalias !1141
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %16), !noalias !1141
  br label %bb.aw

bb.aa:                                            ; preds = %grpc_channelz_v2_Promise_Custom_mutable_properties.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i.i38.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.al
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %bb.av, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ak, %bb.af, %bb.aa, %bb.z
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.gh, %bb.z ], [ %i.gq, %bb.af ], [ %i.gy, %bb.ak ], [ %i.gi, %bb.aa ], [ %i.ji, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jy, %bb.av ]
  call void @_ZN9grpc_core8channelz12PropertyListD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %21) #36, !noalias !1141
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #36, !noalias !1141
  br label %bb.bd

bb.ab:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %14), !noalias !1141
  store i64 15, ptr %14, align 8, !tbaa !111, !alias.scope !1143, !noalias !1141
  %.sroa.4.0..sroa_idx.i.i14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr @.str.188, ptr %.sroa.4.0..sroa_idx.i.i14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !126, !alias.scope !1143, !noalias !1141
  %i.gj = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  store i8 0, ptr %i.gj, align 8, !tbaa !128, !alias.scope !1143, !noalias !1141
  %i.gk = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 3 uses
  store i8 1, ptr %i.gk, align 8, !tbaa !130, !alias.scope !1143, !noalias !1141
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 5, ptr nonnull @.str.186, ptr noundef nonnull align 8 %14)
          to label %bb.ac unwind label %bb.af, !noalias !1141

bb.ac:                                            ; preds = %bb.ab
  %i.gl = load i8, ptr %i.gk, align 8, !tbaa !130, !range !109, !noalias !1141, !noundef !110
  %i.gm = trunc nuw i8 %i.gl to i1
  store i8 0, ptr %i.gk, align 8, !tbaa !130, !noalias !1141
  %i.gn = load i8, ptr %i.gj, align 8, !noalias !1141
  %.not.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i8 %i.gn, -1
  %or.cond.not.i.i.i.i16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.gm, i1 %.not.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ad, label %_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !131

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36, !noalias !1141
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(48) %14)
          to label %.noexc.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ae, !noalias !1141

.noexc.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36, !noalias !1141
  br label %_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.go = landingpad { ptr, i32 }
          catch ptr null
  %i.gp = extractvalue { ptr, i32 } %i.go, 0
  call void @__clang_call_terminate(ptr %i.gp) #34, !noalias !1141
  unreachable

bb.af:                                            ; preds = %bb.ab
  %i.gq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %14) #36, !noalias !1141
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %14), !noalias !1141
  br label %bb.aw

bb.ag:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !1141
  store i64 7, ptr %12, align 8, !tbaa !111, !alias.scope !1144, !noalias !1141
  %.sroa.4.0..sroa_idx.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr @.str.108, ptr %.sroa.4.0..sroa_idx.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !126, !alias.scope !1144, !noalias !1141
  %i.gr = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  store i8 0, ptr %i.gr, align 8, !tbaa !128, !alias.scope !1144, !noalias !1141
  %i.gs = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 3 uses
  store i8 1, ptr %i.gs, align 8, !tbaa !130, !alias.scope !1144, !noalias !1141
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 5, ptr nonnull @.str.186, ptr noundef nonnull align 8 %12)
          to label %bb.ah unwind label %bb.ak, !noalias !1141

bb.ah:                                            ; preds = %bb.ag
  %i.gt = load i8, ptr %i.gs, align 8, !tbaa !130, !range !109, !noalias !1141, !noundef !110
  %i.gu = trunc nuw i8 %i.gt to i1
  store i8 0, ptr %i.gs, align 8, !tbaa !130, !noalias !1141
  %i.gv = load i8, ptr %i.gr, align 8, !noalias !1141
  %.not.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i8 %i.gv, -1
  %or.cond.not.i.i.i.i23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.gu, i1 %.not.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ai, label %bb.al, !prof !131

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36, !noalias !1141
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 8 dereferenceable(48) %12)
          to label %.noexc.i.i.i.i.i.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.aj, !noalias !1141

.noexc.i.i.i.i.i.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36, !noalias !1141
  br label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = extractvalue { ptr, i32 } %i.gw, 0
  call void @__clang_call_terminate(ptr %i.gx) #34, !noalias !1141
  unreachable

bb.ak:                                            ; preds = %bb.ag
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %12) #36, !noalias !1141
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.al:                                            ; preds = %.noexc.i.i.i.i.i.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !1141
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !1141
  call void @llvm.experimental.noalias.scope.decl(metadata !1145)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36, !noalias !1146
  %i.gz = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35
          to label %.noexc31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.aa, !noalias !1141 ; 8 uses

.noexc31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.al
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store i32 1, ptr %i.ha, align 8, !tbaa !123, !noalias !1147
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 12
  store i32 1, ptr %i.hb, align 4, !tbaa !124, !noalias !1147
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.gz, align 8, !tbaa !35, !noalias !1147
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz20property_list_detail20PromisePropertyValueE, i64 16), ptr %i.hc, align 8, !tbaa !35, !noalias !1147
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 24 ; 2 uses
  %i.he = invoke ptr @upb_Arena_Init(ptr noundef null, i64 noundef 0, ptr noundef nonnull @upb_alloc_global)
          to label %.noexc.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !1147 ; 5 uses

.noexc.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.he, ptr %i.hd, align 8, !tbaa !359, !noalias !1147
  %i.hf = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__Promise_msg_init, i64 8), align 8, !tbaa !362, !noalias !1147
  %i.hg = zext i16 %i.hf to i64                   ; 5 uses
  %i.hh = and i64 %i.hg, 7
  %i.hi = icmp eq i64 %i.hh, 0
  call void @llvm.assume(i1 %i.hi)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !364, !noalias !1147
  %i.hl = load ptr, ptr %i.he, align 8, !tbaa !365, !noalias !1147 ; 4 uses
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = sub i64 %i.hm, %i.hn
  %i.hp = icmp ult i64 %i.ho, %i.hg
  br i1 %i.hp, label %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !31

upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hg
  store ptr %i.hq, ptr %i.he, align 8, !tbaa !365, !noalias !1147
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hl) ]
  br label %bb.am

upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hr = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.he, i64 noundef %i.hg)
          to label %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !1147 ; 2 uses

.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %grpc_channelz_v2_Promise_new.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.am, !prof !431

bb.am:                                            ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hl, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hr, %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 %i.hg, i1 false), !noalias !1147
  br label %grpc_channelz_v2_Promise_new.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

grpc_channelz_v2_Promise_new.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.am, %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.0.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.am ], [ null, %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  store ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.hs, align 8, !tbaa !366, !noalias !1147
  %i.ht = load ptr, ptr %i.hd, align 8, !tbaa !359, !noalias !1147 ; 8 uses
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise__Map_msg_init) #36, !noalias !1147, !srcloc !432
  %i.hu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !97, !noalias !1147
  %i.hw = icmp eq i32 %i.hv, 8
  br i1 %i.hw, label %grpc_channelz_v2_Promise_map_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %grpc_channelz_v2_Promise_map_promise.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

grpc_channelz_v2_Promise_map_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %grpc_channelz_v2_Promise_new.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %.0.in.then.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hx, align 4, !noalias !1147 ; 2 uses
  %i.hy = inttoptr i64 %.0.in.then.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to ptr
  %i.hz = icmp eq i64 %.0.in.then.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.hz, label %grpc_channelz_v2_Promise_map_promise.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %grpc_channelz_v2_Promise_mutable_map_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

grpc_channelz_v2_Promise_map_promise.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %grpc_channelz_v2_Promise_map_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %grpc_channelz_v2_Promise_new.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ia = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__Promise__Map_msg_init, i64 8), align 8, !tbaa !362, !noalias !1147
  %i.ib = zext i16 %i.ia to i64                   ; 5 uses
  %i.ic = and i64 %i.ib, 7
  %i.id = icmp eq i64 %i.ic, 0
  call void @llvm.assume(i1 %i.id)
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !364, !noalias !1147
  %i.ig = load ptr, ptr %i.ht, align 8, !tbaa !365, !noalias !1147 ; 4 uses
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = ptrtoint ptr %i.ig to i64               ; 2 uses
  %i.ij = sub i64 %i.ih, %i.ii
  %i.ik = icmp ult i64 %i.ij, %i.ib
  br i1 %i.ik, label %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !31

upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %grpc_channelz_v2_Promise_map_promise.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ib
  store ptr %i.il, ptr %i.ht, align 8, !tbaa !365, !noalias !1147
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ig) ]
  br label %bb.an

upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %grpc_channelz_v2_Promise_map_promise.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.im = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.ht, i64 noundef %i.ib)
          to label %.noexc10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !1147 ; 3 uses

.noexc10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.im, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %grpc_channelz_v2_Promise_mutable_map_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !431

upb_Arena_Malloc.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.im to i64
  br label %bb.an

bb.an:                                            ; preds = %upb_Arena_Malloc.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ii, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.0.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.im, %upb_Arena_Malloc.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ig, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 %i.ib, i1 false), !noalias !1147
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise__Map_msg_init) #36, !noalias !1147, !srcloc !432
  store i32 8, ptr %i.hu, align 4, !tbaa !97, !noalias !1147
  %i.in = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.in, align 4, !noalias !1147
  br label %grpc_channelz_v2_Promise_mutable_map_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

grpc_channelz_v2_Promise_mutable_map_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.an, %.noexc10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %grpc_channelz_v2_Promise_map_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.0.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.an ], [ %i.hy, %grpc_channelz_v2_Promise_map_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ null, %.noexc10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise_msg_init) #36, !noalias !1147, !srcloc !432
  %i.io = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.ip = load i64, ptr %i.io, align 1, !noalias !1147 ; 2 uses
  %i.iq = inttoptr i64 %i.ip to ptr
  %i.ir = icmp eq i64 %i.ip, 0
  br i1 %i.ir, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %grpc_channelz_v2_Promise_mutable_map_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.is = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__Promise_msg_init, i64 8), align 8, !tbaa !362, !noalias !1147
  %i.it = zext i16 %i.is to i64                   ; 5 uses
  %i.iu = and i64 %i.it, 7
  %i.iv = icmp eq i64 %i.iu, 0
  call void @llvm.assume(i1 %i.iv)
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !364, !noalias !1147
  %i.iy = load ptr, ptr %i.ht, align 8, !tbaa !365, !noalias !1147 ; 4 uses
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = ptrtoint ptr %i.iy to i64               ; 2 uses
  %i.jb = sub i64 %i.iz, %i.ja
  %i.jc = icmp ult i64 %i.jb, %i.it
  br i1 %i.jc, label %upb_Arena_Malloc.exit.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !31

upb_Arena_Malloc.exit.thread.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ao
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.it
  store ptr %i.jd, ptr %i.ht, align 8, !tbaa !365, !noalias !1147
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.iy) ]
  br label %bb.ap

upb_Arena_Malloc.exit.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ao
  %i.je = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.ht, i64 noundef %i.it)
          to label %.noexc11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !1147 ; 3 uses

.noexc11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %upb_Arena_Malloc.exit.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.je) ]
  %.pre.i14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.je to i64
  br label %bb.ap

bb.ap:                                            ; preds = %.noexc11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre-phi.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ja, %upb_Arena_Malloc.exit.thread.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.0.i11.i.i10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.je, %.noexc11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.iy, %upb_Arena_Malloc.exit.thread.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 %i.it, i1 false), !noalias !1147
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise_msg_init) #36, !noalias !1147, !srcloc !432
  %i.jf = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !103, !noalias !1147
  %i.jh = or i8 %i.jg, 1
  store i8 %i.jh, ptr %i.jf, align 1, !tbaa !103, !noalias !1147
  store i64 %.pre-phi.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.io, align 1, !noalias !1147
  br label %bb.aq

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %upb_Arena_Malloc.exit.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ji = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gz, i64 noundef 40) #37, !noalias !1147
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ap, %grpc_channelz_v2_Promise_mutable_map_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.0.i11.i.i10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ap ], [ %i.iq, %grpc_channelz_v2_Promise_mutable_map_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.0.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  store i32 2, ptr %i.jj, align 4, !tbaa !97, !noalias !1147
  %i.jk = getelementptr inbounds nuw i8, ptr %.0.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.212, i64 45), ptr %i.jk, align 4, !noalias !1147
  %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  store i64 73, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !1147
  %i.jl = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.213, i64 45), ptr %i.jl, align 1, !noalias !1147
  %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  store i64 385, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !1147
  %i.jm = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.jn = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 10, ptr %i.jn, align 8, !tbaa !128, !noalias !1146
  %i.jo = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  store ptr %i.hc, ptr %10, align 8, !tbaa !369, !alias.scope !1145, !noalias !1141
  %i.jp = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.jm, align 8, !tbaa !121, !noalias !1146
  store ptr %i.gz, ptr %i.jp, align 8, !tbaa !121, !alias.scope !1145, !noalias !1141
  store ptr null, ptr %9, align 8, !tbaa !369, !noalias !1146
  store i8 10, ptr %i.jo, align 8, !tbaa !128, !alias.scope !1145, !noalias !1141
  %i.jq = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 3 uses
  store i8 1, ptr %i.jq, align 8, !tbaa !130, !alias.scope !1145, !noalias !1141
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36, !noalias !1146
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(33) %9)
          to label %"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeINS_3MapINS6_INS6_IZNS_11CallFilters26PullServerTrailingMetadataEvEUlvE_ZNS7_26PullServerTrailingMetadataEvEUlNS_5EmptyEE_EEZNS_9CallSpine26PullServerTrailingMetadataEvEUlSt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE_EEZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_5clEvEUlSH_E_EEvEEEEvE4WrapB5cxx11ESU_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %bb.ar, !noalias !1146

bb.ar:                                            ; preds = %bb.aq
  %i.jr = landingpad { ptr, i32 }
          catch ptr null
  %i.js = extractvalue { ptr, i32 } %i.jr, 0
  call void @__clang_call_terminate(ptr %i.js) #34, !noalias !1146
  unreachable

"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeINS_3MapINS6_INS6_IZNS_11CallFilters26PullServerTrailingMetadataEvEUlvE_ZNS7_26PullServerTrailingMetadataEvEUlNS_5EmptyEE_EEZNS_9CallSpine26PullServerTrailingMetadataEvEUlSt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE_EEZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_5clEvEUlSH_E_EEvEEEEvE4WrapB5cxx11ESU_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36, !noalias !1146
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36, !noalias !1146
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 7, ptr nonnull @.str.108, ptr noundef nonnull align 8 %10)
          to label %bb.as unwind label %bb.av, !noalias !1141

bb.as:                                            ; preds = %"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeINS_3MapINS6_INS6_IZNS_11CallFilters26PullServerTrailingMetadataEvEUlvE_ZNS7_26PullServerTrailingMetadataEvEUlNS_5EmptyEE_EEZNS_9CallSpine26PullServerTrailingMetadataEvEUlSt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE_EEZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_5clEvEUlSH_E_EEvEEEEvE4WrapB5cxx11ESU_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.jt = load i8, ptr %i.jq, align 8, !tbaa !130, !range !109, !noalias !1141, !noundef !110
  %i.ju = trunc nuw i8 %i.jt to i1
  store i8 0, ptr %i.jq, align 8, !tbaa !130, !noalias !1141
  %i.jv = load i8, ptr %i.jo, align 8, !noalias !1141
  %.not.i.i.i.i.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i8 %i.jv, -1
  %or.cond.not.i.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ju, i1 %.not.i.i.i.i.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.at, label %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeINS_3MapINS6_INS6_IZNS_11CallFilters26PullServerTrailingMetadataEvEUlvE_ZNS7_26PullServerTrailingMetadataEvEUlNS_5EmptyEE_EEZNS_9CallSpine26PullServerTrailingMetadataEvEUlSt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE_EEZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_5clEvEUlSH_E_EEvEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !131

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36, !noalias !1141
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(48) %10)
          to label %.noexc.i.i.i.i.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.au, !noalias !1141

.noexc.i.i.i.i.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36, !noalias !1141
  br label %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeINS_3MapINS6_INS6_IZNS_11CallFilters26PullServerTrailingMetadataEvEUlvE_ZNS7_26PullServerTrailingMetadataEvEUlNS_5EmptyEE_EEZNS_9CallSpine26PullServerTrailingMetadataEvEUlSt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE_EEZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_5clEvEUlSH_E_EEvEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.au:                                            ; preds = %bb.at
  %i.jw = landingpad { ptr, i32 }
          catch ptr null
  %i.jx = extractvalue { ptr, i32 } %i.jw, 0
  call void @__clang_call_terminate(ptr %i.jx) #34, !noalias !1141
  unreachable

bb.av:                                            ; preds = %"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeINS_3MapINS6_INS6_IZNS_11CallFilters26PullServerTrailingMetadataEvEUlvE_ZNS7_26PullServerTrailingMetadataEvEUlNS_5EmptyEE_EEZNS_9CallSpine26PullServerTrailingMetadataEvEUlSt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE_EEZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_5clEvEUlSH_E_EEvEEEEvE4WrapB5cxx11ESU_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.jy = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #36, !noalias !1141
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeINS_3MapINS6_INS6_IZNS_11CallFilters26PullServerTrailingMetadataEvEUlvE_ZNS7_26PullServerTrailingMetadataEvEUlNS_5EmptyEE_EEZNS_9CallSpine26PullServerTrailingMetadataEvEUlSt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE_EEZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_5clEvEUlSH_E_EEvEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !1141
  br label %bb.aw

bb.aw:                                            ; preds = %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeINS_3MapINS6_INS6_IZNS_11CallFilters26PullServerTrailingMetadataEvEUlvE_ZNS7_26PullServerTrailingMetadataEvEUlNS_5EmptyEE_EEZNS_9CallSpine26PullServerTrailingMetadataEvEUlSt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEE_EEZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_5clEvEUlSH_E_EEvEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.t
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__PropertyList_msg_init) #36, !noalias !1141, !srcloc !432
  %i.jz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.ka = load i64, ptr %i.jz, align 1, !noalias !1141 ; 2 uses
  %i.kb = inttoptr i64 %i.ka to ptr
  %i.kc = icmp eq i64 %i.ka, 0
  br i1 %i.kc, label %bb.ax, label %grpc_channelz_v2_Promise_Custom_mutable_properties.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.kd = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__PropertyList_msg_init, i64 8), align 8, !tbaa !362, !noalias !1141
  %i.ke = zext i16 %i.kd to i64                   ; 5 uses
  %i.kf = and i64 %i.ke, 7
  %i.kg = icmp eq i64 %i.kf, 0
  call void @llvm.assume(i1 %i.kg)
  %i.kh = load ptr, ptr %i.az, align 8, !tbaa !364, !noalias !1141
  %i.ki = load ptr, ptr %i.ab, align 8, !tbaa !365, !noalias !1141 ; 4 uses
  %i.kj = ptrtoint ptr %i.kh to i64
  %i.kk = ptrtoint ptr %i.ki to i64               ; 2 uses
  %i.kl = sub i64 %i.kj, %i.kk
  %i.km = icmp ult i64 %i.kl, %i.ke
  br i1 %i.km, label %upb_Arena_Malloc.exit.i.i38.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i35.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !31

upb_Arena_Malloc.exit.thread.i.i35.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ax
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.ke
  store ptr %i.kn, ptr %i.ab, align 8, !tbaa !365, !noalias !1141
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ki) ]
  br label %bb.ay

upb_Arena_Malloc.exit.i.i38.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ax
  %i.ko = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.ab, i64 noundef %i.ke)
          to label %.noexc42.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.aa, !noalias !1141 ; 3 uses

.noexc42.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %upb_Arena_Malloc.exit.i.i38.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ko, null
  br i1 %.not.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %grpc_channelz_v2_Promise_Custom_mutable_properties.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.i._crit_edge.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !431

upb_Arena_Malloc.exit.i._crit_edge.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc42.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre.i41.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.ko to i64
  br label %bb.ay

bb.ay:                                            ; preds = %upb_Arena_Malloc.exit.i._crit_edge.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i35.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre-phi.i36.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i41.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i._crit_edge.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.kk, %upb_Arena_Malloc.exit.thread.i.i35.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.0.i11.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ko, %upb_Arena_Malloc.exit.i._crit_edge.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ki, %upb_Arena_Malloc.exit.thread.i.i35.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 %i.ke, i1 false), !noalias !1141
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__PropertyList_msg_init) #36, !noalias !1141, !srcloc !432
  %i.kp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !103, !noalias !1141
  %i.kr = or i8 %i.kq, 1
  store i8 %i.kr, ptr %i.kp, align 1, !tbaa !103, !noalias !1141
  store i64 %.pre-phi.i36.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.jz, align 1, !noalias !1141
  br label %grpc_channelz_v2_Promise_Custom_mutable_properties.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

grpc_channelz_v2_Promise_Custom_mutable_properties.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ay, %.noexc42.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aw
  %.0.i34.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.0.i11.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ay ], [ %i.kb, %bb.aw ], [ null, %.noexc42.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_ZN9grpc_core8channelz12PropertyList12FillUpbProtoEP29grpc_channelz_v2_PropertyListP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef %.0.i34.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull %i.ab)
          to label %bb.az unwind label %bb.aa, !noalias !1141

bb.az:                                            ; preds = %grpc_channelz_v2_Promise_Custom_mutable_properties.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ks = load ptr, ptr %i.fx, align 8, !tbaa !138, !noalias !1141 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !139, !noalias !1141 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ks, %i.ku
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.az, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.lf, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ks, %bb.az ] ; 5 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 64
  %i.kw = load i8, ptr %i.kv, align 8, !tbaa !128, !noalias !1141
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.kw, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ba, !prof !31

bb.ba:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36, !noalias !1141
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(33) %i.kx)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.bb, !noalias !1141

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36, !noalias !1141
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.ky = landingpad { ptr, i32 }
          catch ptr null
  %i.kz = extractvalue { ptr, i32 } %i.ky, 0
  call void @__clang_call_terminate(ptr %i.kz) #34, !noalias !1141
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.la = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !140, !noalias !1141 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.lc = icmp eq ptr %i.la, %i.lb
  br i1 %i.lc, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ld = load i64, ptr %i.lb, align 8, !tbaa !103, !noalias !1141
  %i.le = add i64 %i.ld, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.le) #37, !noalias !1141
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.lf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.lf, %i.ku
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.fx, align 8, !tbaa !138, !noalias !1141
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.az
  %i.lg = phi ptr [ %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ks, %bb.az ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.lg, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.lh = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !142, !noalias !1141
  %i.lj = ptrtoint ptr %i.li to i64
  %i.lk = ptrtoint ptr %i.lg to i64
  %i.ll = sub i64 %i.lj, %i.lk
  call void @_ZdlPvm(ptr noundef nonnull %i.lg, i64 noundef %i.ll) #37, !noalias !1141
  br label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9grpc_core8channelz12PropertyListD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bc, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #36, !noalias !1141
  %i.lm = load ptr, ptr %17, align 8, !tbaa !140, !noalias !1141 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.lo = icmp eq ptr %i.lm, %i.ln
  br i1 %i.lo, label %"_ZN9grpc_core14PromiseAsProtoINS_14promise_detail11PromiseLikeINS_13OpHandlerImplIZNS_15OnCancelFactoryIZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbE3$_5ZNS5_11CommitBatchES8_mS9_bE3$_6EEDaOT_OT0_EUlvE_L12grpc_op_type6EEEvEEEEvRKSC_P24grpc_channelz_v2_PromiseP9upb_Arena.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN9grpc_core8channelz12PropertyListD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.lp = load i64, ptr %i.ln, align 8, !tbaa !103, !noalias !1141
  %i.lq = add i64 %i.lp, 1
  call void @_ZdlPvm(ptr noundef %i.lm, i64 noundef %i.lq) #37, !noalias !1141
  br label %"_ZN9grpc_core14PromiseAsProtoINS_14promise_detail11PromiseLikeINS_13OpHandlerImplIZNS_15OnCancelFactoryIZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbE3$_5ZNS5_11CommitBatchES8_mS9_bE3$_6EEDaOT_OT0_EUlvE_L12grpc_op_type6EEEvEEEEvRKSC_P24grpc_channelz_v2_PromiseP9upb_Arena.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.bd:                                            ; preds = %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.u
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fz, %bb.u ]
  %i.lr = load ptr, ptr %17, align 8, !tbaa !140, !noalias !1141 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.lt = icmp eq ptr %i.lr, %i.ls
  br i1 %i.lt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bd
  %i.lu = load i64, ptr %i.ls, align 8, !tbaa !103, !noalias !1141
  %i.lv = add i64 %i.lu, 1
  call void @_ZdlPvm(ptr noundef %i.lr, i64 noundef %i.lv) #37, !noalias !1141
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36, !noalias !1141
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit24.i.i.i.i.i.i.i

"_ZN9grpc_core14PromiseAsProtoINS_14promise_detail11PromiseLikeINS_13OpHandlerImplIZNS_15OnCancelFactoryIZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbE3$_5ZNS5_11CommitBatchES8_mS9_bE3$_6EEDaOT_OT0_EUlvE_L12grpc_op_type6EEEvEEEEvRKSC_P24grpc_channelz_v2_PromiseP9upb_Arena.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN9grpc_core8channelz12PropertyListD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36, !noalias !1141
  br label %bb.be

bb.be:                                            ; preds = %"_ZN9grpc_core14PromiseAsProtoINS_14promise_detail11PromiseLikeINS_13OpHandlerImplIZNS_15OnCancelFactoryIZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbE3$_5ZNS5_11CommitBatchES8_mS9_bE3$_6EEDaOT_OT0_EUlvE_L12grpc_op_type6EEEvEEEEvRKSC_P24grpc_channelz_v2_PromiseP9upb_Arena.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %.noexc9.i.i.i.i.i.i.i.i.i.i
  %i.lw = load ptr, ptr %i.cl, align 8, !tbaa !434, !noalias !1141 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.214, i64 45), ptr %i.lx, align 1, !noalias !1141
  %.sroa.56.0..sroa_idx.i53.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lw, i64 24
  store i64 78, ptr %.sroa.56.0..sroa_idx.i53.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !1141
  %i.ly = load i8, ptr %i.co, align 8, !tbaa !421, !noalias !1141
  %i.lz = icmp eq i8 %i.ly, 2
  br i1 %i.lz, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %i.ma = load ptr, ptr %i.cl, align 8, !tbaa !434, !noalias !1141 ; 2 uses
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise_msg_init) #36, !noalias !1141, !srcloc !432
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 32 ; 2 uses
  %i.mc = load i64, ptr %i.mb, align 1, !noalias !1141 ; 2 uses
  %i.md = inttoptr i64 %i.mc to ptr
  %i.me = icmp eq i64 %i.mc, 0
  br i1 %i.me, label %bb.bg, label %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit62.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.mf = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__Promise_msg_init, i64 8), align 8, !tbaa !362, !noalias !1141
  %i.mg = zext i16 %i.mf to i64                   ; 5 uses
  %i.mh = and i64 %i.mg, 7
  %i.mi = icmp eq i64 %i.mh, 0
  call void @llvm.assume(i1 %i.mi)
  %i.mj = load ptr, ptr %i.az, align 8, !tbaa !364, !noalias !1141
  %i.mk = load ptr, ptr %i.ab, align 8, !tbaa !365, !noalias !1141 ; 4 uses
  %i.ml = ptrtoint ptr %i.mj to i64
  %i.mm = ptrtoint ptr %i.mk to i64               ; 2 uses
  %i.mn = sub i64 %i.ml, %i.mm
  %i.mo = icmp ult i64 %i.mn, %i.mg
  br i1 %i.mo, label %upb_Arena_Malloc.exit.i.i58.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i55.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !31

upb_Arena_Malloc.exit.thread.i.i55.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bg
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.mg
  store ptr %i.mp, ptr %i.ab, align 8, !tbaa !365, !noalias !1141
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mk) ]
  br label %bb.bh

upb_Arena_Malloc.exit.i.i58.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bg
  %i.mq = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.ab, i64 noundef %i.mg)
          to label %.noexc21.i.i.i.i.i.i.i unwind label %bb.bi, !noalias !1141 ; 3 uses

.noexc21.i.i.i.i.i.i.i:                           ; preds = %upb_Arena_Malloc.exit.i.i58.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i59.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mq, null
  br i1 %.not.i.i59.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit62.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.i._crit_edge.i60.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !431

upb_Arena_Malloc.exit.i._crit_edge.i60.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc21.i.i.i.i.i.i.i
  %.pre.i61.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.mq to i64
  br label %bb.bh

bb.bh:                                            ; preds = %upb_Arena_Malloc.exit.i._crit_edge.i60.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i55.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre-phi.i56.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i61.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i._crit_edge.i60.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.mm, %upb_Arena_Malloc.exit.thread.i.i55.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.0.i11.i.i57.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.mq, %upb_Arena_Malloc.exit.i._crit_edge.i60.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.mk, %upb_Arena_Malloc.exit.thread.i.i55.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i57.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 %i.mg, i1 false), !noalias !1141
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise_msg_init) #36, !noalias !1141, !srcloc !432
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ma, i64 8 ; 2 uses
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !103, !noalias !1141
  %i.mt = or i8 %i.ms, 1
  store i8 %i.mt, ptr %i.mr, align 1, !tbaa !103, !noalias !1141
  store i64 %.pre-phi.i56.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.mb, align 1, !noalias !1141
  br label %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit62.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit62.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bh, %.noexc21.i.i.i.i.i.i.i, %bb.bf
  %.0.i54.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.0.i11.i.i57.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bh ], [ %i.md, %bb.bf ], [ null, %.noexc21.i.i.i.i.i.i.i ]
  invoke void @_ZNK9grpc_core14WaitForCqEndOp7ToProtoEP24grpc_channelz_v2_PromiseP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(384) %i.ac, ptr noundef %.0.i54.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull %i.ab)
          to label %bb.bj unwind label %bb.bi, !noalias !1141

bb.bi:                                            ; preds = %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit62.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i.i58.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %grpc_channelz_v2_Promise_mutable_custom_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i.i46.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i.i35.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i.i29.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i.i29.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %grpc_channelz_v2_Promise_mutable_seq_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit24.i.i.i.i.i.i.i

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit24.i.i.i.i.i.i.i: ; preds = %bb.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.mu, %bb.bi ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 40) #37, !noalias !1141
  br label %.body.i

bb.bj:                                            ; preds = %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit62.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.be
  %i.mv = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.mw = getelementptr inbounds nuw i8, ptr %23, i64 32
  store i8 10, ptr %i.mw, align 8, !tbaa !128, !noalias !1140
  %i.mx = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 2 uses
  store ptr %i.k, ptr %24, align 8, !tbaa !369, !alias.scope !1139, !noalias !1138
  %i.my = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr null, ptr %i.mv, align 8, !tbaa !121, !noalias !1140
  store ptr %i.h, ptr %i.my, align 8, !tbaa !121, !alias.scope !1139, !noalias !1138
  store ptr null, ptr %23, align 8, !tbaa !369, !noalias !1140
  store i8 10, ptr %i.mx, align 8, !tbaa !128, !alias.scope !1139, !noalias !1138
  %i.mz = getelementptr inbounds nuw i8, ptr %24, i64 40 ; 3 uses
  store i8 1, ptr %i.mz, align 8, !tbaa !130, !alias.scope !1139, !noalias !1138
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36, !noalias !1140
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(33) %23)
          to label %"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyINS_14promise_detail11PromiseLikeINS_15PollBatchLoggerINS4_3SeqINS_3MapINS4_5AllOkINS_10StatusFlagEJNS4_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERSF_EUlvE_L12grpc_op_type1EEEJNSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_1clESJ_EUlvE_LSL_2EEEEEENSB_INSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_3clESJ_EUlvE_LSL_4EEEJNSC_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSJ_PT_EUlvE_LSL_5EEEEEEEEEZNSD_11CommitBatchESG_mSH_bE3$_4EEJNSC_IZNS_15OnCancelFactoryIZNSD_11CommitBatchESG_mSH_bE3$_5ZNSD_11CommitBatchESG_mSH_bE3$_6EEDaOSX_OT0_EUlvE_LSL_6EEEZZNS_15InfallibleBatchIS14_S1C_EEDaS18_S1A_bSH_P21grpc_completion_queueENUlvE_clEvEUlvE_EEEEEvEEEEvE4WrapB5cxx11ES1L_.exit.i.i" unwind label %bb.bk, !noalias !1140

bb.bk:                                            ; preds = %bb.bj
  %i.na = landingpad { ptr, i32 }
          catch ptr null
  %i.nb = extractvalue { ptr, i32 } %i.na, 0
  call void @__clang_call_terminate(ptr %i.nb) #34, !noalias !1140
  unreachable

"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyINS_14promise_detail11PromiseLikeINS_15PollBatchLoggerINS4_3SeqINS_3MapINS4_5AllOkINS_10StatusFlagEJNS4_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERSF_EUlvE_L12grpc_op_type1EEEJNSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_1clESJ_EUlvE_LSL_2EEEEEENSB_INSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_3clESJ_EUlvE_LSL_4EEEJNSC_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSJ_PT_EUlvE_LSL_5EEEEEEEEEZNSD_11CommitBatchESG_mSH_bE3$_4EEJNSC_IZNS_15OnCancelFactoryIZNSD_11CommitBatchESG_mSH_bE3$_5ZNSD_11CommitBatchESG_mSH_bE3$_6EEDaOSX_OT0_EUlvE_LSL_6EEEZZNS_15InfallibleBatchIS14_S1C_EEDaS18_S1A_bSH_P21grpc_completion_queueENUlvE_clEvEUlvE_EEEEEvEEEEvE4WrapB5cxx11ES1L_.exit.i.i": ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36, !noalias !1140
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #36, !noalias !1140
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %25, i64 7, ptr nonnull @.str.108, ptr noundef nonnull align 8 %24)
          to label %bb.bl unwind label %bb.bo, !noalias !1138

bb.bl:                                            ; preds = %"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyINS_14promise_detail11PromiseLikeINS_15PollBatchLoggerINS4_3SeqINS_3MapINS4_5AllOkINS_10StatusFlagEJNS4_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERSF_EUlvE_L12grpc_op_type1EEEJNSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_1clESJ_EUlvE_LSL_2EEEEEENSB_INSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_3clESJ_EUlvE_LSL_4EEEJNSC_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSJ_PT_EUlvE_LSL_5EEEEEEEEEZNSD_11CommitBatchESG_mSH_bE3$_4EEJNSC_IZNS_15OnCancelFactoryIZNSD_11CommitBatchESG_mSH_bE3$_5ZNSD_11CommitBatchESG_mSH_bE3$_6EEDaOSX_OT0_EUlvE_LSL_6EEEZZNS_15InfallibleBatchIS14_S1C_EEDaS18_S1A_bSH_P21grpc_completion_queueENUlvE_clEvEUlvE_EEEEEvEEEEvE4WrapB5cxx11ES1L_.exit.i.i"
  %i.nc = load i8, ptr %i.mz, align 8, !tbaa !130, !range !109, !noalias !1138, !noundef !110
  %i.nd = trunc nuw i8 %i.nc to i1
  store i8 0, ptr %i.mz, align 8, !tbaa !130, !noalias !1138
  %i.ne = load i8, ptr %i.mx, align 8, !noalias !1138
  %.not.i.i.i.i.i.i.i.i = icmp ne i8 %i.ne, -1
  %or.cond.not.i.i.i.i.i = select i1 %i.nd, i1 %.not.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i, label %bb.bm, label %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeINS_15PollBatchLoggerINS4_3SeqINS_3MapINS4_5AllOkINS_10StatusFlagEJNS4_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERSF_EUlvE_L12grpc_op_type1EEEJNSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_1clESJ_EUlvE_LSL_2EEEEEENSB_INSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_3clESJ_EUlvE_LSL_4EEEJNSC_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSJ_PT_EUlvE_LSL_5EEEEEEEEEZNSD_11CommitBatchESG_mSH_bE3$_4EEJNSC_IZNS_15OnCancelFactoryIZNSD_11CommitBatchESG_mSH_bE3$_5ZNSD_11CommitBatchESG_mSH_bE3$_6EEDaOSX_OT0_EUlvE_LSL_6EEEZZNS_15InfallibleBatchIS14_S1C_EEDaS18_S1A_bSH_P21grpc_completion_queueENUlvE_clEvEUlvE_EEEEEvEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEESX_.exit.i", !prof !131

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36, !noalias !1138
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(48) %24)
          to label %.noexc.i.i.i.i.i6.i.i unwind label %bb.bn, !noalias !1138

.noexc.i.i.i.i.i6.i.i:                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36, !noalias !1138
  br label %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeINS_15PollBatchLoggerINS4_3SeqINS_3MapINS4_5AllOkINS_10StatusFlagEJNS4_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERSF_EUlvE_L12grpc_op_type1EEEJNSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_1clESJ_EUlvE_LSL_2EEEEEENSB_INSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_3clESJ_EUlvE_LSL_4EEEJNSC_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSJ_PT_EUlvE_LSL_5EEEEEEEEEZNSD_11CommitBatchESG_mSH_bE3$_4EEJNSC_IZNS_15OnCancelFactoryIZNSD_11CommitBatchESG_mSH_bE3$_5ZNSD_11CommitBatchESG_mSH_bE3$_6EEDaOSX_OT0_EUlvE_LSL_6EEEZZNS_15InfallibleBatchIS14_S1C_EEDaS18_S1A_bSH_P21grpc_completion_queueENUlvE_clEvEUlvE_EEEEEvEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEESX_.exit.i"

bb.bn:                                            ; preds = %bb.bm
  %i.nf = landingpad { ptr, i32 }
          catch ptr null
  %i.ng = extractvalue { ptr, i32 } %i.nf, 0
  call void @__clang_call_terminate(ptr %i.ng) #34, !noalias !1138
  unreachable

bb.bo:                                            ; preds = %"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyINS_14promise_detail11PromiseLikeINS_15PollBatchLoggerINS4_3SeqINS_3MapINS4_5AllOkINS_10StatusFlagEJNS4_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERSF_EUlvE_L12grpc_op_type1EEEJNSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_1clESJ_EUlvE_LSL_2EEEEEENSB_INSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_3clESJ_EUlvE_LSL_4EEEJNSC_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSJ_PT_EUlvE_LSL_5EEEEEEEEEZNSD_11CommitBatchESG_mSH_bE3$_4EEJNSC_IZNS_15OnCancelFactoryIZNSD_11CommitBatchESG_mSH_bE3$_5ZNSD_11CommitBatchESG_mSH_bE3$_6EEDaOSX_OT0_EUlvE_LSL_6EEEZZNS_15InfallibleBatchIS14_S1C_EEDaS18_S1A_bSH_P21grpc_completion_queueENUlvE_clEvEUlvE_EEEEEvEEEEvE4WrapB5cxx11ES1L_.exit.i.i"
  %i.nh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %24) #36, !noalias !1138
  br label %.body.i

"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeINS_15PollBatchLoggerINS4_3SeqINS_3MapINS4_5AllOkINS_10StatusFlagEJNS4_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERSF_EUlvE_L12grpc_op_type1EEEJNSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_1clESJ_EUlvE_LSL_2EEEEEENSB_INSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_3clESJ_EUlvE_LSL_4EEEJNSC_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSJ_PT_EUlvE_LSL_5EEEEEEEEEZNSD_11CommitBatchESG_mSH_bE3$_4EEJNSC_IZNS_15OnCancelFactoryIZNSD_11CommitBatchESG_mSH_bE3$_5ZNSD_11CommitBatchESG_mSH_bE3$_6EEDaOSX_OT0_EUlvE_LSL_6EEEZZNS_15InfallibleBatchIS14_S1C_EEDaS18_S1A_bSH_P21grpc_completion_queueENUlvE_clEvEUlvE_EEEEEvEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEESX_.exit.i": ; preds = %.noexc.i.i.i.i.i6.i.i, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %24), !noalias !1138
  %i.ni = load <2 x ptr>, ptr %i.d, align 8, !tbaa !143, !noalias !1138
  %.phi.trans.insert4.i = getelementptr inbounds nuw i8, ptr %25, i64 24
  %.pre5.i = load ptr, ptr %.phi.trans.insert4.i, align 8, !tbaa !142, !noalias !1138
  br label %bb.bq

bb.bp:                                            ; preds = %bb.d
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bp, %bb.bo, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit24.i.i.i.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.nj, %bb.bp ], [ %eh.lpad-body.i.i.i.i.i.i.i, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit24.i.i.i.i.i.i.i ], [ %i.nh, %bb.bo ]
  call void @_ZN9grpc_core8channelz12PropertyListD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %25) #36, !noalias !1138
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #36, !noalias !1138
  br label %.body

bb.bq:                                            ; preds = %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeINS_15PollBatchLoggerINS4_3SeqINS_3MapINS4_5AllOkINS_10StatusFlagEJNS4_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERSF_EUlvE_L12grpc_op_type1EEEJNSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_1clESJ_EUlvE_LSL_2EEEEEENSB_INSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_3clESJ_EUlvE_LSL_4EEEJNSC_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSJ_PT_EUlvE_LSL_5EEEEEEEEEZNSD_11CommitBatchESG_mSH_bE3$_4EEJNSC_IZNS_15OnCancelFactoryIZNSD_11CommitBatchESG_mSH_bE3$_5ZNSD_11CommitBatchESG_mSH_bE3$_6EEDaOSX_OT0_EUlvE_LSL_6EEEZZNS_15InfallibleBatchIS14_S1C_EEDaS18_S1A_bSH_P21grpc_completion_queueENUlvE_clEvEUlvE_EEEEEvEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEESX_.exit.i", %bb.c
  %i.nk = phi ptr [ %.pre5.i, %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeINS_15PollBatchLoggerINS4_3SeqINS_3MapINS4_5AllOkINS_10StatusFlagEJNS4_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERSF_EUlvE_L12grpc_op_type1EEEJNSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_1clESJ_EUlvE_LSL_2EEEEEENSB_INSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_3clESJ_EUlvE_LSL_4EEEJNSC_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSJ_PT_EUlvE_LSL_5EEEEEEEEEZNSD_11CommitBatchESG_mSH_bE3$_4EEJNSC_IZNS_15OnCancelFactoryIZNSD_11CommitBatchESG_mSH_bE3$_5ZNSD_11CommitBatchESG_mSH_bE3$_6EEDaOSX_OT0_EUlvE_LSL_6EEEZZNS_15InfallibleBatchIS14_S1C_EEDaS18_S1A_bSH_P21grpc_completion_queueENUlvE_clEvEUlvE_EEEEEvEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEESX_.exit.i" ], [ null, %bb.c ]
  %i.nl = phi <2 x ptr> [ %i.ni, %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeINS_15PollBatchLoggerINS4_3SeqINS_3MapINS4_5AllOkINS_10StatusFlagEJNS4_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERSF_EUlvE_L12grpc_op_type1EEEJNSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_1clESJ_EUlvE_LSL_2EEEEEENSB_INSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_3clESJ_EUlvE_LSL_4EEEJNSC_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSJ_PT_EUlvE_LSL_5EEEEEEEEEZNSD_11CommitBatchESG_mSH_bE3$_4EEJNSC_IZNS_15OnCancelFactoryIZNSD_11CommitBatchESG_mSH_bE3$_5ZNSD_11CommitBatchESG_mSH_bE3$_6EEDaOSX_OT0_EUlvE_LSL_6EEEZZNS_15InfallibleBatchIS14_S1C_EEDaS18_S1A_bSH_P21grpc_completion_queueENUlvE_clEvEUlvE_EEEEEvEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEESX_.exit.i" ], [ splat (ptr null), %bb.c ]
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %27, align 8, !tbaa !35, !alias.scope !1138
  %i.nm = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %27, i64 16
  store <2 x ptr> %i.nl, ptr %i.nm, align 8, !tbaa !143, !alias.scope !1138
  %i.no = getelementptr inbounds nuw i8, ptr %27, i64 24 ; 2 uses
  store ptr %i.nk, ptr %i.no, align 8, !tbaa !142, !alias.scope !1138
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #36, !noalias !1138
  %i.np = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN9grpc_core8channelz12PropertyList5MergeES1_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 %27)
          to label %bb.br unwind label %bb.bz

bb.br:                                            ; preds = %bb.bq
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %0, align 8, !tbaa !35
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.nr = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESaISM_EEC2ERKSO_(ptr noundef nonnull align 8 dereferenceable(24) %i.nq, ptr noundef nonnull align 8 dereferenceable(24) %i.nr)
          to label %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit unwind label %bb.bz

_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit: ; preds = %bb.br
  %i.ns = load ptr, ptr %i.nm, align 8, !tbaa !138 ; 3 uses
  %i.nt = load ptr, ptr %i.nn, align 8, !tbaa !139 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ns, %i.nt
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.oe, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i ], [ %i.ns, %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit ] ; 5 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64
  %i.nv = load i8, ptr %i.nu, align 8, !tbaa !128
  %.not.i.i.i.i.i.i.i.i8 = icmp eq i8 %i.nv, -1
  br i1 %.not.i.i.i.i.i.i.i.i8, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i, label %bb.bs, !prof !31

bb.bs:                                            ; preds = %.lr.ph.i.i.i.i
  %i.nw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(33) %i.nw)
          to label %.noexc.i.i.i.i.i.i.i9 unwind label %bb.bt

.noexc.i.i.i.i.i.i.i9:                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.nx = landingpad { ptr, i32 }
          catch ptr null
  %i.ny = extractvalue { ptr, i32 } %i.nx, 0
  call void @__clang_call_terminate(ptr %i.ny) #34
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i9, %.lr.ph.i.i.i.i
  %i.nz = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !140 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.ob = icmp eq ptr %i.nz, %i.oa
  br i1 %i.ob, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i
  %i.oc = load i64, ptr %i.oa, align 8, !tbaa !103
  %i.od = add i64 %i.oc, 1
  call void @_ZdlPvm(ptr noundef %i.nz, i64 noundef %i.od) #37
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.oe = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.oe, %i.nt
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.nm, align 8, !tbaa !138
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i, %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit
  %i.of = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ns, %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.of, null
  br i1 %.not.i.i1.i.i, label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i
  %i.og = load ptr, ptr %i.no, align 8, !tbaa !142
  %i.oh = ptrtoint ptr %i.og to i64
  %i.oi = ptrtoint ptr %i.of to i64
  %i.oj = sub i64 %i.oh, %i.oi
  call void @_ZdlPvm(ptr noundef nonnull %i.of, i64 noundef %i.oj) #37
  br label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit

_ZN9grpc_core8channelz12PropertyListD2Ev.exit:    ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i, %bb.bu
  %i.ok = load ptr, ptr %i.a, align 8, !tbaa !138 ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !139 ; 2 uses
  %.not4.i.i.i.i10 = icmp eq ptr %i.ok, %i.om
  br i1 %.not4.i.i.i.i10, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i21, label %.lr.ph.i.i.i.i11

.lr.ph.i.i.i.i11:                                 ; preds = %_ZN9grpc_core8channelz12PropertyListD2Ev.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i17
  %.05.i.i.i.i12 = phi ptr [ %i.ox, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i17 ], [ %i.ok, %_ZN9grpc_core8channelz12PropertyListD2Ev.exit ] ; 5 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i12, i64 64
  %i.oo = load i8, ptr %i.on, align 8, !tbaa !128
  %.not.i.i.i.i.i.i.i.i13 = icmp eq i8 %i.oo, -1
  br i1 %.not.i.i.i.i.i.i.i.i13, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i15, label %bb.bv, !prof !31

bb.bv:                                            ; preds = %.lr.ph.i.i.i.i11
  %i.op = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i12, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(33) %i.op)
          to label %.noexc.i.i.i.i.i.i.i14 unwind label %bb.bw

.noexc.i.i.i.i.i.i.i14:                           ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i15

bb.bw:                                            ; preds = %bb.bv
  %i.oq = landingpad { ptr, i32 }
          catch ptr null
  %i.or = extractvalue { ptr, i32 } %i.oq, 0
  call void @__clang_call_terminate(ptr %i.or) #34
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i15: ; preds = %.noexc.i.i.i.i.i.i.i14, %.lr.ph.i.i.i.i11
  %i.os = load ptr, ptr %.05.i.i.i.i12, align 8, !tbaa !140 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i12, i64 16 ; 2 uses
  %i.ou = icmp eq ptr %i.os, %i.ot
  br i1 %i.ou, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i16: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i15
  %i.ov = load i64, ptr %i.ot, align 8, !tbaa !103
  %i.ow = add i64 %i.ov, 1
  call void @_ZdlPvm(ptr noundef %i.os, i64 noundef %i.ow) #37
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i17

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i17: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i16
  %i.ox = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i12, i64 72 ; 2 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.ox, %i.om
  br i1 %.not.i.i.i.i18, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i19, label %.lr.ph.i.i.i.i11, !llvm.loop !2

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i19: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i17
  %.pr.i.i20 = load ptr, ptr %i.a, align 8, !tbaa !138
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i21

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i21: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i19, %_ZN9grpc_core8channelz12PropertyListD2Ev.exit
  %i.oy = phi ptr [ %.pr.i.i20, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i19 ], [ %i.ok, %_ZN9grpc_core8channelz12PropertyListD2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i22 = icmp eq ptr %i.oy, null
  br i1 %.not.i.i1.i.i22, label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit24, label %bb.bx

bb.bx:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i21
  %i.oz = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !142
  %i.pb = ptrtoint ptr %i.pa to i64
  %i.pc = ptrtoint ptr %i.oy to i64
  %i.pd = sub i64 %i.pb, %i.pc
  call void @_ZdlPvm(ptr noundef nonnull %i.oy, i64 noundef %i.pd) #37
  br label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit24

_ZN9grpc_core8channelz12PropertyListD2Ev.exit24:  ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i21, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #36
  ret void

bb.by:                                            ; preds = %bb.b, %bb.a
  %i.pe = landingpad { ptr, i32 }
          cleanup
  br label %.body
end_hunk_4
begin_hunk_5_@"_ZN9grpc_core14PromiseAsProtoINS_14promise_detail11PromiseLikeINS_3MapINS1_5AllOkINS_10StatusFlagEJNS1_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERSA_EUlvE_L12grpc_op_type1EEEJNS7_IZZNS8_11CommitBatchESB_mSC_bENK3$_1clESE_EUlvE_LSG_2EEEEEENS6_INS7_IZZNS8_11CommitBatchESB_mSC_bENK3$_3clESE_EUlvE_LSG_4EEEJNS7_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSE_PT_EUlvE_LSG_5EEEEEEEEEZNS8_11CommitBatchESB_mSC_bE3$_4EEvEEEEvRKSS_P24grpc_channelz_v2_PromiseP9upb_Arena":bb.a
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 32 ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 1            ; 2 uses
  %i.fn = inttoptr i64 %i.fm to ptr
  %i.fo = icmp eq i64 %i.fm, 0
  br i1 %i.fo, label %bb.o, label %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.fp = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__Promise_msg_init, i64 8), align 8, !tbaa !362
  %i.fq = zext i16 %i.fp to i64                   ; 5 uses
  %i.fr = and i64 %i.fq, 7
  %i.fs = icmp eq i64 %i.fr, 0
  call void @llvm.assume(i1 %i.fs)
  %i.ft = load ptr, ptr %i.bk, align 8, !tbaa !364
  %i.fu = load ptr, ptr %2, align 8, !tbaa !365   ; 4 uses
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = ptrtoint ptr %i.fu to i64               ; 2 uses
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = icmp ult i64 %i.fx, %i.fq
  br i1 %i.fy, label %upb_Arena_Malloc.exit.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !31

upb_Arena_Malloc.exit.thread.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.o
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fq
  store ptr %i.fz, ptr %2, align 8, !tbaa !365
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fu) ]
  br label %bb.p

upb_Arena_Malloc.exit.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.o
  %i.ga = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %2, i64 noundef %i.fq) ; 3 uses
  %.not.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ga, null
  br i1 %.not.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i, label %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.i._crit_edge.i31.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !431

upb_Arena_Malloc.exit.i._crit_edge.i31.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %upb_Arena_Malloc.exit.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre.i32.i.i.i.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.ga to i64
  br label %bb.p

bb.p:                                             ; preds = %upb_Arena_Malloc.exit.i._crit_edge.i31.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre-phi.i27.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i32.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i._crit_edge.i31.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fw, %upb_Arena_Malloc.exit.thread.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.0.i11.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ga, %upb_Arena_Malloc.exit.i._crit_edge.i31.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fu, %upb_Arena_Malloc.exit.thread.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 %i.fq, i1 false)
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise_msg_init) #36, !srcloc !432
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !103
  %i.gd = or i8 %i.gc, 1
  store i8 %i.gd, ptr %i.gb, align 1, !tbaa !103
  store i64 %.pre-phi.i27.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.fl, align 1
  br label %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p, %upb_Arena_Malloc.exit.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.n
  %.0.i25.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.0.i11.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.p ], [ %i.fn, %bb.n ], [ null, %upb_Arena_Malloc.exit.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise__Custom_msg_init) #36, !srcloc !432
  %i.ge = getelementptr inbounds nuw i8, ptr %.0.i25.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !97
  %i.gg = icmp eq i32 %i.gf, 1
  br i1 %i.gg, label %grpc_channelz_v2_Promise_custom_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %grpc_channelz_v2_Promise_custom_promise.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

grpc_channelz_v2_Promise_custom_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.i25.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %.0.in.then.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gh, align 4 ; 2 uses
  %i.gi = inttoptr i64 %.0.in.then.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to ptr
  %i.gj = icmp eq i64 %.0.in.then.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.gj, label %grpc_channelz_v2_Promise_custom_promise.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %grpc_channelz_v2_Promise_mutable_custom_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

grpc_channelz_v2_Promise_custom_promise.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %grpc_channelz_v2_Promise_custom_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gk = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__Promise__Custom_msg_init, i64 8), align 8, !tbaa !362
  %i.gl = zext i16 %i.gk to i64                   ; 5 uses
  %i.gm = and i64 %i.gl, 7
  %i.gn = icmp eq i64 %i.gm, 0
  call void @llvm.assume(i1 %i.gn)
  %i.go = load ptr, ptr %i.bk, align 8, !tbaa !364
  %i.gp = load ptr, ptr %2, align 8, !tbaa !365   ; 4 uses
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = ptrtoint ptr %i.gp to i64               ; 2 uses
  %i.gs = sub i64 %i.gq, %i.gr
  %i.gt = icmp ult i64 %i.gs, %i.gl
  br i1 %i.gt, label %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !31

upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %grpc_channelz_v2_Promise_custom_promise.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gl
  store ptr %i.gu, ptr %2, align 8, !tbaa !365
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gp) ]
  br label %bb.q

upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %grpc_channelz_v2_Promise_custom_promise.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gv = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %2, i64 noundef %i.gl) ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %grpc_channelz_v2_Promise_mutable_custom_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !431

upb_Arena_Malloc.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.gv to i64
  br label %bb.q

bb.q:                                             ; preds = %upb_Arena_Malloc.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gr, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.0.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gv, %upb_Arena_Malloc.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gp, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 %i.gl, i1 false)
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise__Custom_msg_init) #36, !srcloc !432
  store i32 1, ptr %i.ge, align 4, !tbaa !97
  %i.gw = getelementptr inbounds nuw i8, ptr %.0.i25.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.gw, align 4
  br label %grpc_channelz_v2_Promise_mutable_custom_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

grpc_channelz_v2_Promise_mutable_custom_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %grpc_channelz_v2_Promise_custom_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.0.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.q ], [ %i.gi, %grpc_channelz_v2_Promise_custom_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ null, %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #36
  store i64 14, ptr %46, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %46, i64 8
  store ptr @.str.184, ptr %i.gx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #36
  %i.gy = call noundef ptr @_ZN9grpc_core14GrpcOpTypeNameE12grpc_op_type(i32 noundef 1) ; 3 uses
  %.not.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gy, null
  br i1 %.not.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %grpc_channelz_v2_Promise_mutable_custom_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gy) #36
  br label %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4absl12lts_202505128AlphaNumC2EPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r, %grpc_channelz_v2_Promise_mutable_custom_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gz, %bb.r ], [ 0, %grpc_channelz_v2_Promise_mutable_custom_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %47, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %47, i64 8
  store ptr %i.gy, ptr %i.ha, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #36
  store i64 1, ptr %48, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr @.str.185, ptr %i.hb, align 8
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %45, ptr noundef nonnull align 8 dereferenceable(48) %46, ptr noundef nonnull align 8 dereferenceable(48) %47, ptr noundef nonnull align 8 dereferenceable(48) %48)
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #36
  %i.hc = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 3 uses
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !135 ; 2 uses
  %i.he = add i64 %i.hd, 7
  %i.hf = and i64 %i.he, -8                       ; 3 uses
  %i.hg = load ptr, ptr %i.bk, align 8, !tbaa !364
  %i.hh = load ptr, ptr %2, align 8, !tbaa !365   ; 4 uses
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = sub i64 %i.hi, %i.hj
  %i.hl = icmp ult i64 %i.hk, %i.hf
  br i1 %i.hl, label %bb.s, label %bb.t, !prof !31

bb.s:                                             ; preds = %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hm = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %2, i64 noundef %i.hf)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.v

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.s
  %.pre.i13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hc, align 8, !tbaa !135
  br label %bb.u

bb.t:                                             ; preds = %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hf
  store ptr %i.hn, ptr %2, align 8, !tbaa !365
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hh) ]
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ho = phi i64 [ %.pre.i13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hd, %bb.t ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hm, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hh, %bb.t ] ; 2 uses
  %i.hp = load ptr, ptr %45, align 8, !tbaa !140
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr align 1 %i.hp, i64 %i.ho, i1 false)
  %i.hq = load i64, ptr %i.hc, align 8, !tbaa !135
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.hr, align 1
  %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  store i64 %i.hq, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #36
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %49, align 8, !tbaa !35
  %i.hs = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hs, i8 0, i64 24, i1 false)
  %i.ht = load i32, ptr %0, align 8, !tbaa !159
  switch i32 %i.ht, label %bb.ar [
    i32 0, label %bb.w
    i32 1, label %bb.ac
    i32 2, label %bb.ah
  ]

bb.v:                                             ; preds = %bb.s
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %44)
  store i64 9, ptr %44, align 8, !tbaa !111, !alias.scope !1397
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %44, i64 8
  store ptr @.str.187, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !126, !alias.scope !1397
  %i.hv = getelementptr inbounds nuw i8, ptr %44, i64 32 ; 2 uses
  store i8 0, ptr %i.hv, align 8, !tbaa !128, !alias.scope !1397
  %i.hw = getelementptr inbounds nuw i8, ptr %44, i64 40 ; 3 uses
  store i8 1, ptr %i.hw, align 8, !tbaa !130, !alias.scope !1397
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %49, i64 5, ptr nonnull @.str.186, ptr noundef nonnull align 8 %44)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.hx = load i8, ptr %i.hw, align 8, !tbaa !130, !range !109, !noundef !110
  %i.hy = trunc nuw i8 %i.hx to i1
  store i8 0, ptr %i.hw, align 8, !tbaa !130
  %i.hz = load i8, ptr %i.hv, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i8 %i.hz, -1
  %or.cond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.hy, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.y, label %_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !131

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %43, ptr noundef nonnull align 8 dereferenceable(48) %44)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.z

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #36
  br label %_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.ia = landingpad { ptr, i32 }
          catch ptr null
  %i.ib = extractvalue { ptr, i32 } %i.ia, 0
  call void @__clang_call_terminate(ptr %i.ib) #34
  unreachable

bb.aa:                                            ; preds = %bb.w
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %44) #36
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %44)
  br label %bb.ar

bb.ab:                                            ; preds = %grpc_channelz_v2_Promise_Custom_mutable_properties.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i.i38.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.am
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.aq, %bb.al, %bb.ag, %bb.ab, %bb.aa
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ic, %bb.aa ], [ %i.il, %bb.ag ], [ %i.it, %bb.al ], [ %i.id, %bb.ab ], [ %i.jc, %bb.aq ]
  call void @_ZN9grpc_core8channelz12PropertyListD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %49) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #36
  br label %bb.ay

bb.ac:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %42)
  store i64 15, ptr %42, align 8, !tbaa !111, !alias.scope !1398
  %.sroa.4.0..sroa_idx.i.i14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %42, i64 8
  store ptr @.str.188, ptr %.sroa.4.0..sroa_idx.i.i14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !126, !alias.scope !1398
  %i.ie = getelementptr inbounds nuw i8, ptr %42, i64 32 ; 2 uses
  store i8 0, ptr %i.ie, align 8, !tbaa !128, !alias.scope !1398
  %i.if = getelementptr inbounds nuw i8, ptr %42, i64 40 ; 3 uses
  store i8 1, ptr %i.if, align 8, !tbaa !130, !alias.scope !1398
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %49, i64 5, ptr nonnull @.str.186, ptr noundef nonnull align 8 %42)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.ig = load i8, ptr %i.if, align 8, !tbaa !130, !range !109, !noundef !110
  %i.ih = trunc nuw i8 %i.ig to i1
  store i8 0, ptr %i.if, align 8, !tbaa !130
  %i.ii = load i8, ptr %i.ie, align 8
  %.not.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i8 %i.ii, -1
  %or.cond.not.i.i.i.i16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ih, i1 %.not.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ae, label %_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !131

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %41, ptr noundef nonnull align 8 dereferenceable(48) %42)
          to label %.noexc.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.af

.noexc.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #36
  br label %_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.ij = landingpad { ptr, i32 }
          catch ptr null
  %i.ik = extractvalue { ptr, i32 } %i.ij, 0
  call void @__clang_call_terminate(ptr %i.ik) #34
  unreachable

bb.ag:                                            ; preds = %bb.ac
  %i.il = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %42) #36
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %42)
  br label %bb.ar

bb.ah:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %40)
  store i64 7, ptr %40, align 8, !tbaa !111, !alias.scope !1399
  %.sroa.4.0..sroa_idx.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %40, i64 8
  store ptr @.str.108, ptr %.sroa.4.0..sroa_idx.i.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !126, !alias.scope !1399
  %i.im = getelementptr inbounds nuw i8, ptr %40, i64 32 ; 2 uses
  store i8 0, ptr %i.im, align 8, !tbaa !128, !alias.scope !1399
  %i.in = getelementptr inbounds nuw i8, ptr %40, i64 40 ; 3 uses
  store i8 1, ptr %i.in, align 8, !tbaa !130, !alias.scope !1399
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %49, i64 5, ptr nonnull @.str.186, ptr noundef nonnull align 8 %40)
          to label %bb.ai unwind label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.io = load i8, ptr %i.in, align 8, !tbaa !130, !range !109, !noundef !110
  %i.ip = trunc nuw i8 %i.io to i1
  store i8 0, ptr %i.in, align 8, !tbaa !130
  %i.iq = load i8, ptr %i.im, align 8
  %.not.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i8 %i.iq, -1
  %or.cond.not.i.i.i.i23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ip, i1 %.not.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.aj, label %bb.am, !prof !131

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %39, ptr noundef nonnull align 8 dereferenceable(48) %40)
          to label %.noexc.i.i.i.i.i.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ak

.noexc.i.i.i.i.i.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #36
  br label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.ir = landingpad { ptr, i32 }
          catch ptr null
  %i.is = extractvalue { ptr, i32 } %i.ir, 0
  call void @__clang_call_terminate(ptr %i.is) #34
  unreachable

bb.al:                                            ; preds = %bb.ah
  %i.it = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %40) #36
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.am:                                            ; preds = %.noexc.i.i.i.i.i.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %40)
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  invoke void @_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeINS_3MapIZNS_11CallFilters25PushClientToServerMessageESt10unique_ptrINS_7MessageENS_5Arena13PooledDeleterEEEUlvE_ZNS7_25PushClientToServerMessageESC_EUlNS_10StatusFlagEE_EEvEEEEvE4WrapB5cxx11ESJ_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.399") align 8 %38, ptr nonnull %i.iu)
          to label %.noexc31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ab

.noexc31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.am
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %49, i64 7, ptr nonnull @.str.108, ptr noundef nonnull align 8 %38)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %.noexc31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.iv = getelementptr inbounds nuw i8, ptr %38, i64 40 ; 2 uses
  %i.iw = load i8, ptr %i.iv, align 8, !tbaa !130, !range !109, !noundef !110
  %i.ix = trunc nuw i8 %i.iw to i1
  store i8 0, ptr %i.iv, align 8, !tbaa !130
  %i.iy = getelementptr inbounds nuw i8, ptr %38, i64 32
  %i.iz = load i8, ptr %i.iy, align 8
  %.not.i.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i8 %i.iz, -1
  %or.cond.not.i.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ix, i1 %.not.i.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ao, label %_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeINS_3MapIZNS_11CallFilters25PushClientToServerMessageESt10unique_ptrINS_7MessageENS_5Arena13PooledDeleterEEEUlvE_ZNS7_25PushClientToServerMessageESC_EUlNS_10StatusFlagEE_EEvEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !131

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %37, ptr noundef nonnull align 8 dereferenceable(48) %38)
          to label %.noexc.i.i.i.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ap

.noexc.i.i.i.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #36
  br label %_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeINS_3MapIZNS_11CallFilters25PushClientToServerMessageESt10unique_ptrINS_7MessageENS_5Arena13PooledDeleterEEEUlvE_ZNS7_25PushClientToServerMessageESC_EUlNS_10StatusFlagEE_EEvEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.ja = landingpad { ptr, i32 }
          catch ptr null
  %i.jb = extractvalue { ptr, i32 } %i.ja, 0
  call void @__clang_call_terminate(ptr %i.jb) #34
  unreachable

bb.aq:                                            ; preds = %.noexc31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %38) #36
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeINS_3MapIZNS_11CallFilters25PushClientToServerMessageESt10unique_ptrINS_7MessageENS_5Arena13PooledDeleterEEEUlvE_ZNS7_25PushClientToServerMessageESC_EUlNS_10StatusFlagEE_EEvEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %38)
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeINS_3MapIZNS_11CallFilters25PushClientToServerMessageESt10unique_ptrINS_7MessageENS_5Arena13PooledDeleterEEEUlvE_ZNS7_25PushClientToServerMessageESC_EUlNS_10StatusFlagEE_EEvEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.u
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__PropertyList_msg_init) #36, !srcloc !432
  %i.jd = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.je = load i64, ptr %i.jd, align 1            ; 2 uses
  %i.jf = inttoptr i64 %i.je to ptr
  %i.jg = icmp eq i64 %i.je, 0
  br i1 %i.jg, label %bb.as, label %grpc_channelz_v2_Promise_Custom_mutable_properties.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.as:                                            ; preds = %bb.ar
  %i.jh = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__PropertyList_msg_init, i64 8), align 8, !tbaa !362
  %i.ji = zext i16 %i.jh to i64                   ; 5 uses
  %i.jj = and i64 %i.ji, 7
  %i.jk = icmp eq i64 %i.jj, 0
  call void @llvm.assume(i1 %i.jk)
  %i.jl = load ptr, ptr %i.bk, align 8, !tbaa !364
  %i.jm = load ptr, ptr %2, align 8, !tbaa !365   ; 4 uses
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = ptrtoint ptr %i.jm to i64               ; 2 uses
  %i.jp = sub i64 %i.jn, %i.jo
  %i.jq = icmp ult i64 %i.jp, %i.ji
  br i1 %i.jq, label %upb_Arena_Malloc.exit.i.i38.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i35.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !31

upb_Arena_Malloc.exit.thread.i.i35.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.as
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.ji
  store ptr %i.jr, ptr %2, align 8, !tbaa !365
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jm) ]
  br label %bb.at

upb_Arena_Malloc.exit.i.i38.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.as
  %i.js = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %2, i64 noundef %i.ji)
          to label %.noexc42.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ab ; 3 uses

.noexc42.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %upb_Arena_Malloc.exit.i.i38.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.js, null
  br i1 %.not.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %grpc_channelz_v2_Promise_Custom_mutable_properties.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.i._crit_edge.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !431

upb_Arena_Malloc.exit.i._crit_edge.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc42.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre.i41.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.js to i64
  br label %bb.at

bb.at:                                            ; preds = %upb_Arena_Malloc.exit.i._crit_edge.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i35.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre-phi.i36.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i41.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i._crit_edge.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jo, %upb_Arena_Malloc.exit.thread.i.i35.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.0.i11.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.js, %upb_Arena_Malloc.exit.i._crit_edge.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jm, %upb_Arena_Malloc.exit.thread.i.i35.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 %i.ji, i1 false)
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__PropertyList_msg_init) #36, !srcloc !432
  %i.jt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !103
  %i.jv = or i8 %i.ju, 1
  store i8 %i.jv, ptr %i.jt, align 1, !tbaa !103
  store i64 %.pre-phi.i36.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.jd, align 1
  br label %grpc_channelz_v2_Promise_Custom_mutable_properties.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

grpc_channelz_v2_Promise_Custom_mutable_properties.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.at, %.noexc42.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ar
  %.0.i34.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.0.i11.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.at ], [ %i.jf, %bb.ar ], [ null, %.noexc42.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_ZN9grpc_core8channelz12PropertyList12FillUpbProtoEP29grpc_channelz_v2_PropertyListP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(32) %49, ptr noundef %.0.i34.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull %2)
          to label %bb.au unwind label %bb.ab

bb.au:                                            ; preds = %grpc_channelz_v2_Promise_Custom_mutable_properties.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jw = load ptr, ptr %i.hs, align 8, !tbaa !138 ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %49, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !139 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jw, %i.jy
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.au, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.kj, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jw, %bb.au ] ; 5 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 64
  %i.ka = load i8, ptr %i.jz, align 8, !tbaa !128
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ka, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.av, !prof !31

bb.av:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %36, ptr noundef nonnull align 8 dereferenceable(33) %i.kb)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.aw

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #36
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.kc = landingpad { ptr, i32 }
          catch ptr null
  %i.kd = extractvalue { ptr, i32 } %i.kc, 0
  call void @__clang_call_terminate(ptr %i.kd) #34
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ke = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !140 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.kg = icmp eq ptr %i.ke, %i.kf
  br i1 %i.kg, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kh = load i64, ptr %i.kf, align 8, !tbaa !103
  %i.ki = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.ke, i64 noundef %i.ki) #37
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.kj, %i.jy
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.hs, align 8, !tbaa !138
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.au
  %i.kk = phi ptr [ %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jw, %bb.au ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.kk, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kl = getelementptr inbounds nuw i8, ptr %49, i64 24
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !142
  %i.kn = ptrtoint ptr %i.km to i64
  %i.ko = ptrtoint ptr %i.kk to i64
  %i.kp = sub i64 %i.kn, %i.ko
  call void @_ZdlPvm(ptr noundef nonnull %i.kk, i64 noundef %i.kp) #37
  br label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9grpc_core8channelz12PropertyListD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ax, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #36
  %i.kq = load ptr, ptr %45, align 8, !tbaa !140  ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.ks = icmp eq ptr %i.kq, %i.kr
  br i1 %i.ks, label %"_ZN9grpc_core14PromiseAsProtoINS_14promise_detail11PromiseLikeINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS6_EUlvE_L12grpc_op_type1EEEvEEEEvRKT_P24grpc_channelz_v2_PromiseP9upb_Arena.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN9grpc_core8channelz12PropertyListD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kt = load i64, ptr %i.kr, align 8, !tbaa !103
  %i.ku = add i64 %i.kt, 1
  call void @_ZdlPvm(ptr noundef %i.kq, i64 noundef %i.ku) #37
  br label %"_ZN9grpc_core14PromiseAsProtoINS_14promise_detail11PromiseLikeINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS6_EUlvE_L12grpc_op_type1EEEvEEEEvRKT_P24grpc_channelz_v2_PromiseP9upb_Arena.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.ay:                                            ; preds = %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.v
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hu, %bb.v ]
  %i.kv = load ptr, ptr %45, align 8, !tbaa !140  ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.kx = icmp eq ptr %i.kv, %i.kw
  br i1 %i.kx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ay
  %i.ky = load i64, ptr %i.kw, align 8, !tbaa !103
  %i.kz = add i64 %i.ky, 1
  call void @_ZdlPvm(ptr noundef %i.kv, i64 noundef %i.kz) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

common.resume.i.i.i.i.i.i.i.i:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i.i.i.i.i.i.i.i.i102.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i.i.i.i61.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %common.resume.op.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i.i.i.i100.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i.i.i.i.i.i.i.i.i102.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i59.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i.i.i.i61.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #36
  br label %common.resume.i.i.i.i.i.i.i.i

"_ZN9grpc_core14PromiseAsProtoINS_14promise_detail11PromiseLikeINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS6_EUlvE_L12grpc_op_type1EEEvEEEEvRKT_P24grpc_channelz_v2_PromiseP9upb_Arena.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN9grpc_core8channelz12PropertyListD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #36
  br label %bb.az

bb.az:                                            ; preds = %"_ZN9grpc_core14PromiseAsProtoINS_14promise_detail11PromiseLikeINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS6_EUlvE_L12grpc_op_type1EEEvEEEEvRKT_P24grpc_channelz_v2_PromiseP9upb_Arena.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %grpc_channelz_v2_Promise_SeqStep_new.exit.1.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.la = load ptr, ptr %i.fe, align 8, !tbaa !434 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.191, i64 45), ptr %i.lb, align 1
  %.sroa.56.0..sroa_idx.i35.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.la, i64 24
  store i64 131, ptr %.sroa.56.0..sroa_idx.i35.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.lc = load i8, ptr %i.fh, align 8, !tbaa !185
  %i.ld = icmp eq i8 %i.lc, 1
  br i1 %i.ld, label %bb.ba, label %"_ZN9grpc_core14PromiseAsProtoINS_14promise_detail11PromiseLikeINS1_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS7_EUlvE_L12grpc_op_type1EEEJNS4_IZZNS5_11CommitBatchES8_mS9_bENK3$_1clESB_EUlvE_LSD_2EEEEEEvEEEEvRKT_P24grpc_channelz_v2_PromiseP9upb_Arena.exit.i.i.i.i.i.i.i.i"

bb.ba:                                            ; preds = %bb.az
end_hunk_5
begin_hunk_6_@"_ZN9grpc_core14PromiseAsProtoINS_14promise_detail11PromiseLikeINS_3MapINS1_5AllOkINS_10StatusFlagEJNS1_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERSA_EUlvE_L12grpc_op_type1EEEJNS7_IZZNS8_11CommitBatchESB_mSC_bENK3$_1clESE_EUlvE_LSG_2EEEEEENS6_INS7_IZZNS8_11CommitBatchESB_mSC_bENK3$_3clESE_EUlvE_LSG_4EEEJNS7_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSE_PT_EUlvE_LSG_5EEEEEEEEEZNS8_11CommitBatchESB_mSC_bE3$_4EEvEEEEvRKSS_P24grpc_channelz_v2_PromiseP9upb_Arena":bb.a
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 32 ; 2 uses
  %i.lg = load i64, ptr %i.lf, align 1            ; 2 uses
  %i.lh = inttoptr i64 %i.lg to ptr
  %i.li = icmp eq i64 %i.lg, 0
  br i1 %i.li, label %bb.bb, label %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit44.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.lj = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__Promise_msg_init, i64 8), align 8, !tbaa !362
  %i.lk = zext i16 %i.lj to i64                   ; 5 uses
  %i.ll = and i64 %i.lk, 7
  %i.lm = icmp eq i64 %i.ll, 0
  call void @llvm.assume(i1 %i.lm)
  %i.ln = load ptr, ptr %i.bk, align 8, !tbaa !364
  %i.lo = load ptr, ptr %2, align 8, !tbaa !365   ; 4 uses
  %i.lp = ptrtoint ptr %i.ln to i64
  %i.lq = ptrtoint ptr %i.lo to i64               ; 2 uses
  %i.lr = sub i64 %i.lp, %i.lq
  %i.ls = icmp ult i64 %i.lr, %i.lk
  br i1 %i.ls, label %upb_Arena_Malloc.exit.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !31

upb_Arena_Malloc.exit.thread.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bb
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.lk
  store ptr %i.lt, ptr %2, align 8, !tbaa !365
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lo) ]
  br label %bb.bc

upb_Arena_Malloc.exit.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bb
  %i.lu = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %2, i64 noundef %i.lk) ; 3 uses
  %.not.i.i41.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.lu, null
  br i1 %.not.i.i41.i.i.i.i.i.i.i.i.i.i.i.i.i, label %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit44.i.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.i._crit_edge.i42.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !431

upb_Arena_Malloc.exit.i._crit_edge.i42.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %upb_Arena_Malloc.exit.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre.i43.i.i.i.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.lu to i64
  br label %bb.bc

bb.bc:                                            ; preds = %upb_Arena_Malloc.exit.i._crit_edge.i42.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre-phi.i38.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i43.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i._crit_edge.i42.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.lq, %upb_Arena_Malloc.exit.thread.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.0.i11.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.lu, %upb_Arena_Malloc.exit.i._crit_edge.i42.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.lo, %upb_Arena_Malloc.exit.thread.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 %i.lk, i1 false)
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise_msg_init) #36, !srcloc !432
  %i.lv = getelementptr inbounds nuw i8, ptr %i.le, i64 8 ; 2 uses
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !103
  %i.lx = or i8 %i.lw, 1
  store i8 %i.lx, ptr %i.lv, align 1, !tbaa !103
  store i64 %.pre-phi.i38.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.lf, align 1
  br label %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit44.i.i.i.i.i.i.i.i.i.i.i.i.i

grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit44.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bc, %upb_Arena_Malloc.exit.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ba
  %.0.i36.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.0.i11.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bc ], [ %i.lh, %bb.ba ], [ null, %upb_Arena_Malloc.exit.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise__Custom_msg_init) #36, !srcloc !432
  %i.ly = getelementptr inbounds nuw i8, ptr %.0.i36.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !97
  %i.ma = icmp eq i32 %i.lz, 1
  br i1 %i.ma, label %grpc_channelz_v2_Promise_custom_promise.exit.i.i.i.i.i110.i.i.i.i.i.i.i.i.i.i.i.i.i, label %grpc_channelz_v2_Promise_custom_promise.exit.thread.i.i.i.i.i45.i.i.i.i.i.i.i.i.i.i.i.i.i

grpc_channelz_v2_Promise_custom_promise.exit.i.i.i.i.i110.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit44.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mb = getelementptr inbounds nuw i8, ptr %.0.i36.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %.0.in.then.val.i.i.i.i.i.i111.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.mb, align 4 ; 2 uses
  %i.mc = inttoptr i64 %.0.in.then.val.i.i.i.i.i.i111.i.i.i.i.i.i.i.i.i.i.i.i.i to ptr
  %i.md = icmp eq i64 %.0.in.then.val.i.i.i.i.i.i111.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.md, label %grpc_channelz_v2_Promise_custom_promise.exit.thread.i.i.i.i.i45.i.i.i.i.i.i.i.i.i.i.i.i.i, label %grpc_channelz_v2_Promise_mutable_custom_promise.exit.i.i.i.i49.i.i.i.i.i.i.i.i.i.i.i.i.i

grpc_channelz_v2_Promise_custom_promise.exit.thread.i.i.i.i.i45.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %grpc_channelz_v2_Promise_custom_promise.exit.i.i.i.i.i110.i.i.i.i.i.i.i.i.i.i.i.i.i, %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit44.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.me = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__Promise__Custom_msg_init, i64 8), align 8, !tbaa !362
  %i.mf = zext i16 %i.me to i64                   ; 5 uses
  %i.mg = and i64 %i.mf, 7
  %i.mh = icmp eq i64 %i.mg, 0
  call void @llvm.assume(i1 %i.mh)
  %i.mi = load ptr, ptr %i.bk, align 8, !tbaa !364
  %i.mj = load ptr, ptr %2, align 8, !tbaa !365   ; 4 uses
  %i.mk = ptrtoint ptr %i.mi to i64
  %i.ml = ptrtoint ptr %i.mj to i64               ; 2 uses
  %i.mm = sub i64 %i.mk, %i.ml
  %i.mn = icmp ult i64 %i.mm, %i.mf
  br i1 %i.mn, label %upb_Arena_Malloc.exit.i.i.i.i.i.i106.i.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i46.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !31

upb_Arena_Malloc.exit.thread.i.i.i.i.i.i46.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %grpc_channelz_v2_Promise_custom_promise.exit.thread.i.i.i.i.i45.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.mf
  store ptr %i.mo, ptr %2, align 8, !tbaa !365
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mj) ]
  br label %bb.bd

upb_Arena_Malloc.exit.i.i.i.i.i.i106.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %grpc_channelz_v2_Promise_custom_promise.exit.thread.i.i.i.i.i45.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mp = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %2, i64 noundef %i.mf) ; 3 uses
  %.not.i.i.i.i.i.i107.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mp, null
  br i1 %.not.i.i.i.i.i.i107.i.i.i.i.i.i.i.i.i.i.i.i.i, label %grpc_channelz_v2_Promise_mutable_custom_promise.exit.i.i.i.i49.i.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.i._crit_edge.i.i.i.i.i108.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !431

upb_Arena_Malloc.exit.i._crit_edge.i.i.i.i.i108.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %upb_Arena_Malloc.exit.i.i.i.i.i.i106.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i109.i.i.i.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.mp to i64
  br label %bb.bd

bb.bd:                                            ; preds = %upb_Arena_Malloc.exit.i._crit_edge.i.i.i.i.i108.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i46.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i109.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i._crit_edge.i.i.i.i.i108.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ml, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i46.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.0.i11.i.i.i.i.i.i48.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.mp, %upb_Arena_Malloc.exit.i._crit_edge.i.i.i.i.i108.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.mj, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i46.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i.i.i.i.i48.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 %i.mf, i1 false)
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise__Custom_msg_init) #36, !srcloc !432
  store i32 1, ptr %i.ly, align 4, !tbaa !97
  %i.mq = getelementptr inbounds nuw i8, ptr %.0.i36.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store i64 %.pre-phi.i.i.i.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.mq, align 4
  br label %grpc_channelz_v2_Promise_mutable_custom_promise.exit.i.i.i.i49.i.i.i.i.i.i.i.i.i.i.i.i.i

grpc_channelz_v2_Promise_mutable_custom_promise.exit.i.i.i.i49.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bd, %upb_Arena_Malloc.exit.i.i.i.i.i.i106.i.i.i.i.i.i.i.i.i.i.i.i.i, %grpc_channelz_v2_Promise_custom_promise.exit.i.i.i.i.i110.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i50.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.0.i11.i.i.i.i.i.i48.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bd ], [ %i.mc, %grpc_channelz_v2_Promise_custom_promise.exit.i.i.i.i.i110.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ null, %upb_Arena_Malloc.exit.i.i.i.i.i.i106.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #36
  store i64 14, ptr %32, align 8
  %i.mr = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr @.str.184, ptr %i.mr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #36
  %i.ms = call noundef ptr @_ZN9grpc_core14GrpcOpTypeNameE12grpc_op_type(i32 noundef 2) ; 3 uses
  %.not.i.i11.i.i.i.i51.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ms, null
  br i1 %.not.i.i11.i.i.i.i51.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit.i.i.i.i52.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %grpc_channelz_v2_Promise_mutable_custom_promise.exit.i.i.i.i49.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mt = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ms) #36
  br label %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit.i.i.i.i52.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4absl12lts_202505128AlphaNumC2EPKc.exit.i.i.i.i52.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.be, %grpc_channelz_v2_Promise_mutable_custom_promise.exit.i.i.i.i49.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i53.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.mt, %bb.be ], [ 0, %grpc_channelz_v2_Promise_mutable_custom_promise.exit.i.i.i.i49.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  store i64 %.sroa.0.0.i.i.i.i.i.i53.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %33, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %33, i64 8
  store ptr %i.ms, ptr %i.mu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #36
  store i64 1, ptr %34, align 8
  %i.mv = getelementptr inbounds nuw i8, ptr %34, i64 8
  store ptr @.str.185, ptr %i.mv, align 8
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr noundef nonnull align 8 dereferenceable(48) %32, ptr noundef nonnull align 8 dereferenceable(48) %33, ptr noundef nonnull align 8 dereferenceable(48) %34)
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #36
  %i.mw = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 3 uses
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !135 ; 2 uses
  %i.my = add i64 %i.mx, 7
  %i.mz = and i64 %i.my, -8                       ; 3 uses
  %i.na = load ptr, ptr %i.bk, align 8, !tbaa !364
  %i.nb = load ptr, ptr %2, align 8, !tbaa !365   ; 4 uses
  %i.nc = ptrtoint ptr %i.na to i64
  %i.nd = ptrtoint ptr %i.nb to i64
  %i.ne = sub i64 %i.nc, %i.nd
  %i.nf = icmp ult i64 %i.ne, %i.mz
  br i1 %i.nf, label %bb.bf, label %bb.bg, !prof !31

bb.bf:                                            ; preds = %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit.i.i.i.i52.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ng = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %2, i64 noundef %i.mz)
          to label %.noexc.i.i.i.i104.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.bi

.noexc.i.i.i.i104.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %bb.bf
  %.pre.i13.i.i.i.i105.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.mw, align 8, !tbaa !135
  br label %bb.bh

bb.bg:                                            ; preds = %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit.i.i.i.i52.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.mz
  store ptr %i.nh, ptr %2, align 8, !tbaa !365
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nb) ]
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.noexc.i.i.i.i104.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ni = phi i64 [ %.pre.i13.i.i.i.i105.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i104.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.mx, %bb.bg ]
  %.0.i.i.i.i.i.i54.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ng, %.noexc.i.i.i.i104.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.nb, %bb.bg ] ; 2 uses
  %i.nj = load ptr, ptr %31, align 8, !tbaa !140
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i.i.i.i54.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr align 1 %i.nj, i64 %i.ni, i1 false)
  %i.nk = load i64, ptr %i.mw, align 8, !tbaa !135
  %i.nl = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i50.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr %.0.i.i.i.i.i.i54.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.nl, align 1
  %.sroa.56.0..sroa_idx.i.i.i.i.i55.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i50.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  store i64 %i.nk, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i55.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #36
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %35, align 8, !tbaa !35
  %i.nm = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nm, i8 0, i64 24, i1 false)
  %i.nn = load i32, ptr %0, align 8, !tbaa !187
  switch i32 %i.nn, label %bb.cg [
    i32 0, label %bb.bj
    i32 1, label %bb.bp
    i32 2, label %bb.bu
  ]

bb.bi:                                            ; preds = %bb.bf
  %i.no = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  store i64 9, ptr %30, align 8, !tbaa !111, !alias.scope !1400
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i99.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr @.str.187, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i99.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !126, !alias.scope !1400
  %i.np = getelementptr inbounds nuw i8, ptr %30, i64 32 ; 2 uses
  store i8 0, ptr %i.np, align 8, !tbaa !128, !alias.scope !1400
  %i.nq = getelementptr inbounds nuw i8, ptr %30, i64 40 ; 3 uses
  store i8 1, ptr %i.nq, align 8, !tbaa !130, !alias.scope !1400
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %35, i64 5, ptr nonnull @.str.186, ptr noundef nonnull align 8 %30)
          to label %bb.bk unwind label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.nr = load i8, ptr %i.nq, align 8, !tbaa !130, !range !109, !noundef !110
  %i.ns = trunc nuw i8 %i.nr to i1
  store i8 0, ptr %i.nq, align 8, !tbaa !130
  %i.nt = load i8, ptr %i.np, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i100.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i8 %i.nt, -1
  %or.cond.not.i.i.i.i.i.i.i.i101.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ns, i1 %.not.i.i.i.i.i.i.i.i.i.i.i100.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i.i.i.i101.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bl, label %_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i.i.i.i102.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !131

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %29, ptr noundef nonnull align 8 dereferenceable(48) %30)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i103.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.bm

.noexc.i.i.i.i.i.i.i.i.i.i103.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #36
  br label %_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i.i.i.i102.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.nu = landingpad { ptr, i32 }
          catch ptr null
  %i.nv = extractvalue { ptr, i32 } %i.nu, 0
  call void @__clang_call_terminate(ptr %i.nv) #34
  unreachable

bb.bn:                                            ; preds = %bb.bj
  %i.nw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %30) #36
  br label %.body.i.i.i.i57.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i.i.i.i102.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i103.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  br label %bb.cg

bb.bo:                                            ; preds = %grpc_channelz_v2_Promise_Custom_mutable_properties.exit.i.i.i.i66.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i.i38.i.i.i.i88.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bz
  %i.nx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i57.i.i.i.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i57.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %bb.cf, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.by, %bb.bt, %bb.bo, %bb.bn
  %eh.lpad-body.i.i.i.i58.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.nw, %bb.bn ], [ %i.of, %bb.bt ], [ %i.on, %bb.by ], [ %i.nx, %bb.bo ], [ %i.ph, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.px, %bb.cf ]
  call void @_ZN9grpc_core8channelz12PropertyListD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %35) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #36
  br label %bb.cn

bb.bp:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  store i64 15, ptr %28, align 8, !tbaa !111, !alias.scope !1401
  %.sroa.4.0..sroa_idx.i.i14.i.i.i.i94.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr @.str.188, ptr %.sroa.4.0..sroa_idx.i.i14.i.i.i.i94.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !126, !alias.scope !1401
  %i.ny = getelementptr inbounds nuw i8, ptr %28, i64 32 ; 2 uses
  store i8 0, ptr %i.ny, align 8, !tbaa !128, !alias.scope !1401
  %i.nz = getelementptr inbounds nuw i8, ptr %28, i64 40 ; 3 uses
  store i8 1, ptr %i.nz, align 8, !tbaa !130, !alias.scope !1401
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %35, i64 5, ptr nonnull @.str.186, ptr noundef nonnull align 8 %28)
          to label %bb.bq unwind label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  %i.oa = load i8, ptr %i.nz, align 8, !tbaa !130, !range !109, !noundef !110
  %i.ob = trunc nuw i8 %i.oa to i1
  store i8 0, ptr %i.nz, align 8, !tbaa !130
  %i.oc = load i8, ptr %i.ny, align 8
  %.not.i.i.i.i.i.i.i15.i.i.i.i95.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i8 %i.oc, -1
  %or.cond.not.i.i.i.i16.i.i.i.i96.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ob, i1 %.not.i.i.i.i.i.i.i15.i.i.i.i95.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i16.i.i.i.i96.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.br, label %_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit20.i.i.i.i97.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !131

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %27, ptr noundef nonnull align 8 dereferenceable(48) %28)
          to label %.noexc.i.i.i.i.i.i17.i.i.i.i98.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.bs

.noexc.i.i.i.i.i.i17.i.i.i.i98.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #36
  br label %_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit20.i.i.i.i97.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.bs:                                            ; preds = %bb.br
  %i.od = landingpad { ptr, i32 }
          catch ptr null
  %i.oe = extractvalue { ptr, i32 } %i.od, 0
  call void @__clang_call_terminate(ptr %i.oe) #34
  unreachable

bb.bt:                                            ; preds = %bb.bp
  %i.of = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %28) #36
  br label %.body.i.i.i.i57.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit20.i.i.i.i97.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i17.i.i.i.i98.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  br label %bb.cg

bb.bu:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  store i64 7, ptr %26, align 8, !tbaa !111, !alias.scope !1402
  %.sroa.4.0..sroa_idx.i.i21.i.i.i.i56.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr @.str.108, ptr %.sroa.4.0..sroa_idx.i.i21.i.i.i.i56.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !126, !alias.scope !1402
  %i.og = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 2 uses
  store i8 0, ptr %i.og, align 8, !tbaa !128, !alias.scope !1402
  %i.oh = getelementptr inbounds nuw i8, ptr %26, i64 40 ; 3 uses
  store i8 1, ptr %i.oh, align 8, !tbaa !130, !alias.scope !1402
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %35, i64 5, ptr nonnull @.str.186, ptr noundef nonnull align 8 %26)
          to label %bb.bv unwind label %bb.by

bb.bv:                                            ; preds = %bb.bu
  %i.oi = load i8, ptr %i.oh, align 8, !tbaa !130, !range !109, !noundef !110
  %i.oj = trunc nuw i8 %i.oi to i1
  store i8 0, ptr %i.oh, align 8, !tbaa !130
  %i.ok = load i8, ptr %i.og, align 8
  %.not.i.i.i.i.i.i.i22.i.i.i.i63.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i8 %i.ok, -1
  %or.cond.not.i.i.i.i23.i.i.i.i64.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.oj, i1 %.not.i.i.i.i.i.i.i22.i.i.i.i63.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i23.i.i.i.i64.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bw, label %bb.bz, !prof !131

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %25, ptr noundef nonnull align 8 dereferenceable(48) %26)
          to label %.noexc.i.i.i.i.i.i24.i.i.i.i93.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.bx

.noexc.i.i.i.i.i.i24.i.i.i.i93.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #36
  br label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  %i.ol = landingpad { ptr, i32 }
          catch ptr null
  %i.om = extractvalue { ptr, i32 } %i.ol, 0
  call void @__clang_call_terminate(ptr %i.om) #34
  unreachable

bb.by:                                            ; preds = %bb.bu
  %i.on = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %26) #36
  br label %.body.i.i.i.i57.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.bz:                                            ; preds = %.noexc.i.i.i.i.i.i24.i.i.i.i93.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.experimental.noalias.scope.decl(metadata !1403)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #36, !noalias !1403
  %i.oo = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35
          to label %.noexc31.i.i.i.i65.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.bo ; 8 uses

.noexc31.i.i.i.i65.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.bz
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  store i32 1, ptr %i.op, align 8, !tbaa !123, !noalias !1404
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oo, i64 12
  store i32 1, ptr %i.oq, align 4, !tbaa !124, !noalias !1404
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.oo, align 8, !tbaa !35, !noalias !1404
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz20property_list_detail20PromisePropertyValueE, i64 16), ptr %i.or, align 8, !tbaa !35, !noalias !1404
  %i.os = invoke ptr @upb_Arena_Init(ptr noundef null, i64 noundef 0, ptr noundef nonnull @upb_alloc_global)
          to label %.noexc.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !1404 ; 5 uses

.noexc.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc31.i.i.i.i65.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oo, i64 24
  store ptr %i.os, ptr %i.ot, align 8, !tbaa !359, !noalias !1404
  %i.ou = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__Promise_msg_init, i64 8), align 8, !tbaa !362, !noalias !1404
  %i.ov = zext i16 %i.ou to i64                   ; 5 uses
  %i.ow = and i64 %i.ov, 7
  %i.ox = icmp eq i64 %i.ow, 0
  call void @llvm.assume(i1 %i.ox)
  %i.oy = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !364, !noalias !1404
  %i.pa = load ptr, ptr %i.os, align 8, !tbaa !365, !noalias !1404 ; 3 uses
  %i.pb = ptrtoint ptr %i.oz to i64
  %i.pc = ptrtoint ptr %i.pa to i64
  %i.pd = sub i64 %i.pb, %i.pc
  %i.pe = icmp ult i64 %i.pd, %i.ov
  br i1 %i.pe, label %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !31

upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pa, i64 %i.ov
  store ptr %i.pf, ptr %i.os, align 8, !tbaa !365, !noalias !1404
  br label %bb.ca

upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.pg = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.os, i64 noundef %i.ov)
          to label %bb.ca unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !1404

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc31.i.i.i.i65.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ph = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.oo, i64 noundef 40) #37, !noalias !1404
  br label %.body.i.i.i.i57.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ca:                                            ; preds = %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.pa, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.pg, %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 %i.ov, i1 false), !noalias !1404
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oo, i64 32
  store ptr %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.pi, align 8, !tbaa !366, !noalias !1404
  %i.pj = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  store i32 2, ptr %i.pj, align 4, !tbaa !97, !noalias !1404
  %i.pk = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.192, i64 45), ptr %i.pk, align 4, !noalias !1404
  %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  store i64 90, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !1404
  %i.pl = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.pm = getelementptr inbounds nuw i8, ptr %23, i64 32
  store i8 10, ptr %i.pm, align 8, !tbaa !128, !noalias !1403
  %i.pn = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 2 uses
  store ptr %i.or, ptr %24, align 8, !tbaa !369, !alias.scope !1403
  %i.po = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr null, ptr %i.pl, align 8, !tbaa !121, !noalias !1403
  store ptr %i.oo, ptr %i.po, align 8, !tbaa !121, !alias.scope !1403
  store ptr null, ptr %23, align 8, !tbaa !369, !noalias !1403
  store i8 10, ptr %i.pn, align 8, !tbaa !128, !alias.scope !1403
  %i.pp = getelementptr inbounds nuw i8, ptr %24, i64 40 ; 3 uses
  store i8 1, ptr %i.pp, align 8, !tbaa !130, !alias.scope !1403
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #36, !noalias !1403
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %22, ptr noundef nonnull align 8 dereferenceable(33) %23)
          to label %"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeIZNS4_18PromiseFactoryImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_1clERS9_EUlvE_EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS4_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISK_EE7is_pollEntsr3stdE9is_same_vISK_vEENS4_9OnceTokenEE4typeEOSH_EUlvE_vEEEEvE4WrapB5cxx11ESS_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %bb.cb, !noalias !1403

bb.cb:                                            ; preds = %bb.ca
  %i.pq = landingpad { ptr, i32 }
          catch ptr null
  %i.pr = extractvalue { ptr, i32 } %i.pq, 0
  call void @__clang_call_terminate(ptr %i.pr) #34, !noalias !1403
  unreachable

"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeIZNS4_18PromiseFactoryImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_1clERS9_EUlvE_EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS4_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISK_EE7is_pollEntsr3stdE9is_same_vISK_vEENS4_9OnceTokenEE4typeEOSH_EUlvE_vEEEEvE4WrapB5cxx11ESS_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #36, !noalias !1403
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #36, !noalias !1403
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %35, i64 7, ptr nonnull @.str.108, ptr noundef nonnull align 8 %24)
          to label %bb.cc unwind label %bb.cf

bb.cc:                                            ; preds = %"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeIZNS4_18PromiseFactoryImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_1clERS9_EUlvE_EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS4_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISK_EE7is_pollEntsr3stdE9is_same_vISK_vEENS4_9OnceTokenEE4typeEOSH_EUlvE_vEEEEvE4WrapB5cxx11ESS_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ps = load i8, ptr %i.pp, align 8, !tbaa !130, !range !109, !noundef !110
  %i.pt = trunc nuw i8 %i.ps to i1
  store i8 0, ptr %i.pp, align 8, !tbaa !130
  %i.pu = load i8, ptr %i.pn, align 8
  %.not.i.i.i.i.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i8 %i.pu, -1
  %or.cond.not.i.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.pt, i1 %.not.i.i.i.i.i.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cd, label %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeIZNS4_18PromiseFactoryImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_1clERS9_EUlvE_EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS4_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISK_EE7is_pollEntsr3stdE9is_same_vISK_vEENS4_9OnceTokenEE4typeEOSH_EUlvE_vEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEESH_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !131

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull align 8 dereferenceable(48) %24)
          to label %.noexc.i.i.i.i.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ce

.noexc.i.i.i.i.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #36
  br label %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeIZNS4_18PromiseFactoryImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_1clERS9_EUlvE_EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS4_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISK_EE7is_pollEntsr3stdE9is_same_vISK_vEENS4_9OnceTokenEE4typeEOSH_EUlvE_vEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEESH_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.ce:                                            ; preds = %bb.cd
  %i.pv = landingpad { ptr, i32 }
          catch ptr null
  %i.pw = extractvalue { ptr, i32 } %i.pv, 0
  call void @__clang_call_terminate(ptr %i.pw) #34
  unreachable

bb.cf:                                            ; preds = %"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeIZNS4_18PromiseFactoryImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_1clERS9_EUlvE_EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS4_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISK_EE7is_pollEntsr3stdE9is_same_vISK_vEENS4_9OnceTokenEE4typeEOSH_EUlvE_vEEEEvE4WrapB5cxx11ESS_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.px = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %24) #36
  br label %.body.i.i.i.i57.i.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeIZNS4_18PromiseFactoryImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_1clERS9_EUlvE_EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS4_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISK_EE7is_pollEntsr3stdE9is_same_vISK_vEENS4_9OnceTokenEE4typeEOSH_EUlvE_vEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEESH_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  br label %bb.cg

bb.cg:                                            ; preds = %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeIZNS4_18PromiseFactoryImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_1clERS9_EUlvE_EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS4_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISK_EE7is_pollEntsr3stdE9is_same_vISK_vEENS4_9OnceTokenEE4typeEOSH_EUlvE_vEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEESH_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit20.i.i.i.i97.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i.i.i.i102.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bh
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__PropertyList_msg_init) #36, !srcloc !432
  %i.py = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i50.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.pz = load i64, ptr %i.py, align 1            ; 2 uses
  %i.qa = inttoptr i64 %i.pz to ptr
  %i.qb = icmp eq i64 %i.pz, 0
  br i1 %i.qb, label %bb.ch, label %grpc_channelz_v2_Promise_Custom_mutable_properties.exit.i.i.i.i66.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ch:                                            ; preds = %bb.cg
  %i.qc = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__PropertyList_msg_init, i64 8), align 8, !tbaa !362
  %i.qd = zext i16 %i.qc to i64                   ; 5 uses
  %i.qe = and i64 %i.qd, 7
  %i.qf = icmp eq i64 %i.qe, 0
  call void @llvm.assume(i1 %i.qf)
  %i.qg = load ptr, ptr %i.bk, align 8, !tbaa !364
  %i.qh = load ptr, ptr %2, align 8, !tbaa !365   ; 4 uses
  %i.qi = ptrtoint ptr %i.qg to i64
  %i.qj = ptrtoint ptr %i.qh to i64               ; 2 uses
  %i.qk = sub i64 %i.qi, %i.qj
  %i.ql = icmp ult i64 %i.qk, %i.qd
  br i1 %i.ql, label %upb_Arena_Malloc.exit.i.i38.i.i.i.i88.i.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i35.i.i.i.i85.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !31

upb_Arena_Malloc.exit.thread.i.i35.i.i.i.i85.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ch
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qh, i64 %i.qd
  store ptr %i.qm, ptr %2, align 8, !tbaa !365
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qh) ]
  br label %bb.ci

upb_Arena_Malloc.exit.i.i38.i.i.i.i88.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ch
  %i.qn = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %2, i64 noundef %i.qd)
          to label %.noexc42.i.i.i.i89.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.bo ; 3 uses

.noexc42.i.i.i.i89.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %upb_Arena_Malloc.exit.i.i38.i.i.i.i88.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i39.i.i.i.i90.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.qn, null
  br i1 %.not.i.i39.i.i.i.i90.i.i.i.i.i.i.i.i.i.i.i.i.i, label %grpc_channelz_v2_Promise_Custom_mutable_properties.exit.i.i.i.i66.i.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.i._crit_edge.i40.i.i.i.i91.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !431

upb_Arena_Malloc.exit.i._crit_edge.i40.i.i.i.i91.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc42.i.i.i.i89.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre.i41.i.i.i.i92.i.i.i.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.qn to i64
  br label %bb.ci

bb.ci:                                            ; preds = %upb_Arena_Malloc.exit.i._crit_edge.i40.i.i.i.i91.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i35.i.i.i.i85.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre-phi.i36.i.i.i.i86.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i41.i.i.i.i92.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i._crit_edge.i40.i.i.i.i91.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.qj, %upb_Arena_Malloc.exit.thread.i.i35.i.i.i.i85.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.0.i11.i.i37.i.i.i.i87.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.qn, %upb_Arena_Malloc.exit.i._crit_edge.i40.i.i.i.i91.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.qh, %upb_Arena_Malloc.exit.thread.i.i35.i.i.i.i85.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i37.i.i.i.i87.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 %i.qd, i1 false)
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__PropertyList_msg_init) #36, !srcloc !432
  %i.qo = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i50.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !103
  %i.qq = or i8 %i.qp, 1
  store i8 %i.qq, ptr %i.qo, align 1, !tbaa !103
  store i64 %.pre-phi.i36.i.i.i.i86.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.py, align 1
  br label %grpc_channelz_v2_Promise_Custom_mutable_properties.exit.i.i.i.i66.i.i.i.i.i.i.i.i.i.i.i.i.i

grpc_channelz_v2_Promise_Custom_mutable_properties.exit.i.i.i.i66.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ci, %.noexc42.i.i.i.i89.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cg
  %.0.i34.i.i.i.i67.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.0.i11.i.i37.i.i.i.i87.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ci ], [ %i.qa, %bb.cg ], [ null, %.noexc42.i.i.i.i89.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_ZN9grpc_core8channelz12PropertyList12FillUpbProtoEP29grpc_channelz_v2_PropertyListP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef %.0.i34.i.i.i.i67.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull %2)
          to label %bb.cj unwind label %bb.bo

bb.cj:                                            ; preds = %grpc_channelz_v2_Promise_Custom_mutable_properties.exit.i.i.i.i66.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.qr = load ptr, ptr %i.nm, align 8, !tbaa !138 ; 3 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !139 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i68.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.qr, %i.qt
  br i1 %.not4.i.i.i.i.i.i.i.i68.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i.i.i.i79.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i69.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i69.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cj, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i70.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.re, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.qr, %bb.cj ] ; 5 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i70.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 64
  %i.qv = load i8, ptr %i.qu, align 8, !tbaa !128
  %.not.i.i.i.i.i.i.i.i.i.i.i.i71.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.qv, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i71.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i73.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ck, !prof !31

bb.ck:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i69.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.qw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i70.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %20, ptr noundef nonnull align 8 dereferenceable(33) %i.qw)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i72.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.cl

.noexc.i.i.i.i.i.i.i.i.i.i.i72.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #36
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i73.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.qx = landingpad { ptr, i32 }
          catch ptr null
  %i.qy = extractvalue { ptr, i32 } %i.qx, 0
  call void @__clang_call_terminate(ptr %i.qy) #34
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i73.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i72.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i69.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.qz = load ptr, ptr %.05.i.i.i.i.i.i.i.i70.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !140 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i70.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.rb = icmp eq ptr %i.qz, %i.ra
  br i1 %i.rb, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i74.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i74.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i73.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.rc = load i64, ptr %i.ra, align 8, !tbaa !103
  %i.rd = add i64 %i.rc, 1
  call void @_ZdlPvm(ptr noundef %i.qz, i64 noundef %i.rd) #37
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i73.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i74.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.re = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i70.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i.i.i.i76.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.re, %i.qt
  br i1 %.not.i.i.i.i.i.i.i.i76.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i77.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i69.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i77.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i78.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.nm, align 8, !tbaa !138
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i.i.i.i79.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i.i.i.i79.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i77.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cj
  %i.rf = phi ptr [ %.pr.i.i.i.i.i.i78.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i77.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.qr, %bb.cj ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i80.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.rf, null
  br i1 %.not.i.i1.i.i.i.i.i.i80.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit.i.i.i.i81.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i.i.i.i79.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.rg = getelementptr inbounds nuw i8, ptr %35, i64 24
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !142
  %i.ri = ptrtoint ptr %i.rh to i64
  %i.rj = ptrtoint ptr %i.rf to i64
  %i.rk = sub i64 %i.ri, %i.rj
  call void @_ZdlPvm(ptr noundef nonnull %i.rf, i64 noundef %i.rk) #37
  br label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit.i.i.i.i81.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9grpc_core8channelz12PropertyListD2Ev.exit.i.i.i.i81.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cm, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i.i.i.i79.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #36
  %i.rl = load ptr, ptr %31, align 8, !tbaa !140  ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.rn = icmp eq ptr %i.rl, %i.rm
  br i1 %i.rn, label %"_ZN9grpc_core14PromiseAsProtoINS_14promise_detail11PromiseLikeINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_1clERS6_EUlvE_L12grpc_op_type2EEEvEEEEvRKT_P24grpc_channelz_v2_PromiseP9upb_Arena.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i82.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i82.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN9grpc_core8channelz12PropertyListD2Ev.exit.i.i.i.i81.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ro = load i64, ptr %i.rm, align 8, !tbaa !103
  %i.rp = add i64 %i.ro, 1
  call void @_ZdlPvm(ptr noundef %i.rl, i64 noundef %i.rp) #37
  br label %"_ZN9grpc_core14PromiseAsProtoINS_14promise_detail11PromiseLikeINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_1clERS6_EUlvE_L12grpc_op_type2EEEvEEEEvRKT_P24grpc_channelz_v2_PromiseP9upb_Arena.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.cn:                                            ; preds = %.body.i.i.i.i57.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bi
  %.pn.i.i.i.i59.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i58.i.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i57.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.no, %bb.bi ]
  %i.rq = load ptr, ptr %31, align 8, !tbaa !140  ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.rs = icmp eq ptr %i.rq, %i.rr
  br i1 %i.rs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i.i.i.i61.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i.i.i.i60.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i.i.i.i60.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cn
  %i.rt = load i64, ptr %i.rr, align 8, !tbaa !103
  %i.ru = add i64 %i.rt, 1
  call void @_ZdlPvm(ptr noundef %i.rq, i64 noundef %i.ru) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i.i.i.i61.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i.i.i.i61.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i.i.i.i60.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #36
  br label %common.resume.i.i.i.i.i.i.i.i

"_ZN9grpc_core14PromiseAsProtoINS_14promise_detail11PromiseLikeINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_1clERS6_EUlvE_L12grpc_op_type2EEEvEEEEvRKT_P24grpc_channelz_v2_PromiseP9upb_Arena.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN9grpc_core8channelz12PropertyListD2Ev.exit.i.i.i.i81.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i82.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #36
  br label %"_ZN9grpc_core14PromiseAsProtoINS_14promise_detail11PromiseLikeINS1_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS7_EUlvE_L12grpc_op_type1EEEJNS4_IZZNS5_11CommitBatchES8_mS9_bENK3$_1clESB_EUlvE_LSD_2EEEEEEvEEEEvRKT_P24grpc_channelz_v2_PromiseP9upb_Arena.exit.i.i.i.i.i.i.i.i"

"_ZN9grpc_core14PromiseAsProtoINS_14promise_detail11PromiseLikeINS1_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS7_EUlvE_L12grpc_op_type1EEEJNS4_IZZNS5_11CommitBatchES8_mS9_bENK3$_1clESB_EUlvE_LSD_2EEEEEEvEEEEvRKT_P24grpc_channelz_v2_PromiseP9upb_Arena.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN9grpc_core14PromiseAsProtoINS_14promise_detail11PromiseLikeINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_1clERS6_EUlvE_L12grpc_op_type2EEEvEEEEvRKT_P24grpc_channelz_v2_PromiseP9upb_Arena.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.az, %bb.h
  %i.rv = load ptr, ptr %i.cj, align 8, !tbaa !1396 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.193, i64 45), ptr %i.rw, align 1
  %.sroa.56.0..sroa_idx.i44.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.rv, i64 24
  store i64 293, ptr %.sroa.56.0..sroa_idx.i44.i.i.i.i.i.i.i.i, align 1
  %i.rx = load i8, ptr %i.cm, align 8, !tbaa !103
  %i.ry = and i8 %i.rx, 2
  %.not178.i.i.i.i.i.i.i.i = icmp eq i8 %i.ry, 0
  br i1 %.not178.i.i.i.i.i.i.i.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %"_ZN9grpc_core14PromiseAsProtoINS_14promise_detail11PromiseLikeINS1_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS7_EUlvE_L12grpc_op_type1EEEJNS4_IZZNS5_11CommitBatchES8_mS9_bENK3$_1clESB_EUlvE_LSD_2EEEEEEvEEEEvRKT_P24grpc_channelz_v2_PromiseP9upb_Arena.exit.i.i.i.i.i.i.i.i"
  %i.rz = load ptr, ptr %i.cj, align 8, !tbaa !1396 ; 3 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  store i32 3, ptr %i.sa, align 4, !tbaa !97
end_hunk_6
begin_hunk_7_@"_ZN9grpc_core14PromiseAsProtoINS_14promise_detail11PromiseLikeINS_3MapINS1_5AllOkINS_10StatusFlagEJNS1_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERSA_EUlvE_L12grpc_op_type1EEEJNS7_IZZNS8_11CommitBatchESB_mSC_bENK3$_1clESE_EUlvE_LSG_2EEEEEENS6_INS7_IZZNS8_11CommitBatchESB_mSC_bENK3$_3clESE_EUlvE_LSG_4EEEJNS7_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSE_PT_EUlvE_LSG_5EEEEEEEEEZNS8_11CommitBatchESB_mSC_bE3$_4EEvEEEEvRKSS_P24grpc_channelz_v2_PromiseP9upb_Arena":bb.a
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 32 ; 2 uses
  %i.uy = load i64, ptr %i.ux, align 1            ; 2 uses
  %i.uz = inttoptr i64 %i.uy to ptr
  %i.va = icmp eq i64 %i.uy, 0
  br i1 %i.va, label %bb.cv, label %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit.i.i.i.i.i84.i.i.i.i.i.i.i.i

bb.cv:                                            ; preds = %bb.cu
  %i.vb = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__Promise_msg_init, i64 8), align 8, !tbaa !362
  %i.vc = zext i16 %i.vb to i64                   ; 5 uses
  %i.vd = and i64 %i.vc, 7
  %i.ve = icmp eq i64 %i.vd, 0
  call void @llvm.assume(i1 %i.ve)
  %i.vf = load ptr, ptr %i.bk, align 8, !tbaa !364
  %i.vg = load ptr, ptr %2, align 8, !tbaa !365   ; 4 uses
  %i.vh = ptrtoint ptr %i.vf to i64
  %i.vi = ptrtoint ptr %i.vg to i64               ; 2 uses
  %i.vj = sub i64 %i.vh, %i.vi
  %i.vk = icmp ult i64 %i.vj, %i.vc
  br i1 %i.vk, label %upb_Arena_Malloc.exit.i.i29.i.i.i.i.i162.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i26.i.i.i.i.i159.i.i.i.i.i.i.i.i, !prof !31

upb_Arena_Malloc.exit.thread.i.i26.i.i.i.i.i159.i.i.i.i.i.i.i.i: ; preds = %bb.cv
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vg, i64 %i.vc
  store ptr %i.vl, ptr %2, align 8, !tbaa !365
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.vg) ]
  br label %bb.cw

upb_Arena_Malloc.exit.i.i29.i.i.i.i.i162.i.i.i.i.i.i.i.i: ; preds = %bb.cv
  %i.vm = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %2, i64 noundef %i.vc) ; 3 uses
  %.not.i.i30.i.i.i.i.i163.i.i.i.i.i.i.i.i = icmp eq ptr %i.vm, null
  br i1 %.not.i.i30.i.i.i.i.i163.i.i.i.i.i.i.i.i, label %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit.i.i.i.i.i84.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.i._crit_edge.i31.i.i.i.i.i164.i.i.i.i.i.i.i.i, !prof !431

upb_Arena_Malloc.exit.i._crit_edge.i31.i.i.i.i.i164.i.i.i.i.i.i.i.i: ; preds = %upb_Arena_Malloc.exit.i.i29.i.i.i.i.i162.i.i.i.i.i.i.i.i
  %.pre.i32.i.i.i.i.i165.i.i.i.i.i.i.i.i = ptrtoint ptr %i.vm to i64
  br label %bb.cw

bb.cw:                                            ; preds = %upb_Arena_Malloc.exit.i._crit_edge.i31.i.i.i.i.i164.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i26.i.i.i.i.i159.i.i.i.i.i.i.i.i
  %.pre-phi.i27.i.i.i.i.i160.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i32.i.i.i.i.i165.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i._crit_edge.i31.i.i.i.i.i164.i.i.i.i.i.i.i.i ], [ %i.vi, %upb_Arena_Malloc.exit.thread.i.i26.i.i.i.i.i159.i.i.i.i.i.i.i.i ]
  %.0.i11.i.i28.i.i.i.i.i161.i.i.i.i.i.i.i.i = phi ptr [ %i.vm, %upb_Arena_Malloc.exit.i._crit_edge.i31.i.i.i.i.i164.i.i.i.i.i.i.i.i ], [ %i.vg, %upb_Arena_Malloc.exit.thread.i.i26.i.i.i.i.i159.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i28.i.i.i.i.i161.i.i.i.i.i.i.i.i, i8 0, i64 %i.vc, i1 false)
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise_msg_init) #36, !srcloc !432
  %i.vn = getelementptr inbounds nuw i8, ptr %i.uw, i64 8 ; 2 uses
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !103
  %i.vp = or i8 %i.vo, 1
  store i8 %i.vp, ptr %i.vn, align 1, !tbaa !103
  store i64 %.pre-phi.i27.i.i.i.i.i160.i.i.i.i.i.i.i.i, ptr %i.ux, align 1
  br label %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit.i.i.i.i.i84.i.i.i.i.i.i.i.i

grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit.i.i.i.i.i84.i.i.i.i.i.i.i.i: ; preds = %bb.cw, %upb_Arena_Malloc.exit.i.i29.i.i.i.i.i162.i.i.i.i.i.i.i.i, %bb.cu
  %.0.i25.i.i.i.i.i85.i.i.i.i.i.i.i.i = phi ptr [ %.0.i11.i.i28.i.i.i.i.i161.i.i.i.i.i.i.i.i, %bb.cw ], [ %i.uz, %bb.cu ], [ null, %upb_Arena_Malloc.exit.i.i29.i.i.i.i.i162.i.i.i.i.i.i.i.i ] ; 3 uses
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise__Custom_msg_init) #36, !srcloc !432
  %i.vq = getelementptr inbounds nuw i8, ptr %.0.i25.i.i.i.i.i85.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !97
  %i.vs = icmp eq i32 %i.vr, 1
  br i1 %i.vs, label %grpc_channelz_v2_Promise_custom_promise.exit.i.i.i.i.i.i.i.i.i.i157.i.i.i.i.i.i.i.i, label %grpc_channelz_v2_Promise_custom_promise.exit.thread.i.i.i.i.i.i.i.i.i.i86.i.i.i.i.i.i.i.i

grpc_channelz_v2_Promise_custom_promise.exit.i.i.i.i.i.i.i.i.i.i157.i.i.i.i.i.i.i.i: ; preds = %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit.i.i.i.i.i84.i.i.i.i.i.i.i.i
  %i.vt = getelementptr inbounds nuw i8, ptr %.0.i25.i.i.i.i.i85.i.i.i.i.i.i.i.i, i64 16
  %.0.in.then.val.i.i.i.i.i.i.i.i.i.i.i158.i.i.i.i.i.i.i.i = load i64, ptr %i.vt, align 4 ; 2 uses
  %i.vu = inttoptr i64 %.0.in.then.val.i.i.i.i.i.i.i.i.i.i.i158.i.i.i.i.i.i.i.i to ptr
  %i.vv = icmp eq i64 %.0.in.then.val.i.i.i.i.i.i.i.i.i.i.i158.i.i.i.i.i.i.i.i, 0
  br i1 %i.vv, label %grpc_channelz_v2_Promise_custom_promise.exit.thread.i.i.i.i.i.i.i.i.i.i86.i.i.i.i.i.i.i.i, label %grpc_channelz_v2_Promise_mutable_custom_promise.exit.i.i.i.i.i.i.i.i.i90.i.i.i.i.i.i.i.i

grpc_channelz_v2_Promise_custom_promise.exit.thread.i.i.i.i.i.i.i.i.i.i86.i.i.i.i.i.i.i.i: ; preds = %grpc_channelz_v2_Promise_custom_promise.exit.i.i.i.i.i.i.i.i.i.i157.i.i.i.i.i.i.i.i, %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit.i.i.i.i.i84.i.i.i.i.i.i.i.i
  %i.vw = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__Promise__Custom_msg_init, i64 8), align 8, !tbaa !362
  %i.vx = zext i16 %i.vw to i64                   ; 5 uses
  %i.vy = and i64 %i.vx, 7
  %i.vz = icmp eq i64 %i.vy, 0
  call void @llvm.assume(i1 %i.vz)
  %i.wa = load ptr, ptr %i.bk, align 8, !tbaa !364
  %i.wb = load ptr, ptr %2, align 8, !tbaa !365   ; 4 uses
  %i.wc = ptrtoint ptr %i.wa to i64
  %i.wd = ptrtoint ptr %i.wb to i64               ; 2 uses
  %i.we = sub i64 %i.wc, %i.wd
  %i.wf = icmp ult i64 %i.we, %i.vx
  br i1 %i.wf, label %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i153.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i87.i.i.i.i.i.i.i.i, !prof !31

upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i87.i.i.i.i.i.i.i.i: ; preds = %grpc_channelz_v2_Promise_custom_promise.exit.thread.i.i.i.i.i.i.i.i.i.i86.i.i.i.i.i.i.i.i
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.vx
  store ptr %i.wg, ptr %2, align 8, !tbaa !365
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.wb) ]
  br label %bb.cx

upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i153.i.i.i.i.i.i.i.i: ; preds = %grpc_channelz_v2_Promise_custom_promise.exit.thread.i.i.i.i.i.i.i.i.i.i86.i.i.i.i.i.i.i.i
  %i.wh = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %2, i64 noundef %i.vx) ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i154.i.i.i.i.i.i.i.i = icmp eq ptr %i.wh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i154.i.i.i.i.i.i.i.i, label %grpc_channelz_v2_Promise_mutable_custom_promise.exit.i.i.i.i.i.i.i.i.i90.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i155.i.i.i.i.i.i.i.i, !prof !431

upb_Arena_Malloc.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i155.i.i.i.i.i.i.i.i: ; preds = %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i153.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i.i.i156.i.i.i.i.i.i.i.i = ptrtoint ptr %i.wh to i64
  br label %bb.cx

bb.cx:                                            ; preds = %upb_Arena_Malloc.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i155.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i87.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i.i88.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i156.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i155.i.i.i.i.i.i.i.i ], [ %i.wd, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i87.i.i.i.i.i.i.i.i ]
  %.0.i11.i.i.i.i.i.i.i.i.i.i.i89.i.i.i.i.i.i.i.i = phi ptr [ %i.wh, %upb_Arena_Malloc.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i155.i.i.i.i.i.i.i.i ], [ %i.wb, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i87.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i.i.i.i.i.i.i.i.i.i89.i.i.i.i.i.i.i.i, i8 0, i64 %i.vx, i1 false)
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise__Custom_msg_init) #36, !srcloc !432
  store i32 1, ptr %i.vq, align 4, !tbaa !97
  %i.wi = getelementptr inbounds nuw i8, ptr %.0.i25.i.i.i.i.i85.i.i.i.i.i.i.i.i, i64 16
  store i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i88.i.i.i.i.i.i.i.i, ptr %i.wi, align 4
  br label %grpc_channelz_v2_Promise_mutable_custom_promise.exit.i.i.i.i.i.i.i.i.i90.i.i.i.i.i.i.i.i

grpc_channelz_v2_Promise_mutable_custom_promise.exit.i.i.i.i.i.i.i.i.i90.i.i.i.i.i.i.i.i: ; preds = %bb.cx, %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i153.i.i.i.i.i.i.i.i, %grpc_channelz_v2_Promise_custom_promise.exit.i.i.i.i.i.i.i.i.i.i157.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i91.i.i.i.i.i.i.i.i = phi ptr [ %.0.i11.i.i.i.i.i.i.i.i.i.i.i89.i.i.i.i.i.i.i.i, %bb.cx ], [ %i.vu, %grpc_channelz_v2_Promise_custom_promise.exit.i.i.i.i.i.i.i.i.i.i157.i.i.i.i.i.i.i.i ], [ null, %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i153.i.i.i.i.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36
  store i64 14, ptr %15, align 8
  %i.wj = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr @.str.184, ptr %i.wj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #36
  %i.wk = call noundef ptr @_ZN9grpc_core14GrpcOpTypeNameE12grpc_op_type(i32 noundef 4) ; 3 uses
  %.not.i.i11.i.i.i.i.i.i.i.i.i92.i.i.i.i.i.i.i.i = icmp eq ptr %i.wk, null
  br i1 %.not.i.i11.i.i.i.i.i.i.i.i.i92.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit.i.i.i.i.i.i.i.i.i93.i.i.i.i.i.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %grpc_channelz_v2_Promise_mutable_custom_promise.exit.i.i.i.i.i.i.i.i.i90.i.i.i.i.i.i.i.i
  %i.wl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.wk) #36
  br label %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit.i.i.i.i.i.i.i.i.i93.i.i.i.i.i.i.i.i

_ZN4absl12lts_202505128AlphaNumC2EPKc.exit.i.i.i.i.i.i.i.i.i93.i.i.i.i.i.i.i.i: ; preds = %bb.cy, %grpc_channelz_v2_Promise_mutable_custom_promise.exit.i.i.i.i.i.i.i.i.i90.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i94.i.i.i.i.i.i.i.i = phi i64 [ %i.wl, %bb.cy ], [ 0, %grpc_channelz_v2_Promise_mutable_custom_promise.exit.i.i.i.i.i.i.i.i.i90.i.i.i.i.i.i.i.i ]
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i94.i.i.i.i.i.i.i.i, ptr %16, align 8
  %i.wm = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.wk, ptr %i.wm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #36
  store i64 1, ptr %17, align 8
  %i.wn = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr @.str.185, ptr %i.wn, align 8
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull align 8 dereferenceable(48) %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  %i.wo = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.wp = load i64, ptr %i.wo, align 8, !tbaa !135 ; 2 uses
  %i.wq = add i64 %i.wp, 7
  %i.wr = and i64 %i.wq, -8                       ; 3 uses
  %i.ws = load ptr, ptr %i.bk, align 8, !tbaa !364
  %i.wt = load ptr, ptr %2, align 8, !tbaa !365   ; 4 uses
  %i.wu = ptrtoint ptr %i.ws to i64
  %i.wv = ptrtoint ptr %i.wt to i64
  %i.ww = sub i64 %i.wu, %i.wv
  %i.wx = icmp ult i64 %i.ww, %i.wr
  br i1 %i.wx, label %bb.cz, label %bb.da, !prof !31

bb.cz:                                            ; preds = %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit.i.i.i.i.i.i.i.i.i93.i.i.i.i.i.i.i.i
  %i.wy = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %2, i64 noundef %i.wr)
          to label %.noexc.i.i.i.i.i.i.i.i.i151.i.i.i.i.i.i.i.i unwind label %bb.dc

.noexc.i.i.i.i.i.i.i.i.i151.i.i.i.i.i.i.i.i:      ; preds = %bb.cz
  %.pre.i13.i.i.i.i.i.i.i.i.i152.i.i.i.i.i.i.i.i = load i64, ptr %i.wo, align 8, !tbaa !135
  br label %bb.db

bb.da:                                            ; preds = %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit.i.i.i.i.i.i.i.i.i93.i.i.i.i.i.i.i.i
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wt, i64 %i.wr
  store ptr %i.wz, ptr %2, align 8, !tbaa !365
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.wt) ]
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %.noexc.i.i.i.i.i.i.i.i.i151.i.i.i.i.i.i.i.i
  %i.xa = phi i64 [ %.pre.i13.i.i.i.i.i.i.i.i.i152.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i151.i.i.i.i.i.i.i.i ], [ %i.wp, %bb.da ]
  %.0.i.i.i.i.i.i.i.i.i.i.i95.i.i.i.i.i.i.i.i = phi ptr [ %i.wy, %.noexc.i.i.i.i.i.i.i.i.i151.i.i.i.i.i.i.i.i ], [ %i.wt, %bb.da ] ; 2 uses
  %i.xb = load ptr, ptr %14, align 8, !tbaa !140
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i.i.i.i.i.i.i.i.i95.i.i.i.i.i.i.i.i, ptr align 1 %i.xb, i64 %i.xa, i1 false)
  %i.xc = load i64, ptr %i.wo, align 8, !tbaa !135
  %i.xd = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i91.i.i.i.i.i.i.i.i, i64 16
  store ptr %.0.i.i.i.i.i.i.i.i.i.i.i95.i.i.i.i.i.i.i.i, ptr %i.xd, align 1
  %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i96.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i91.i.i.i.i.i.i.i.i, i64 24
  store i64 %i.xc, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i96.i.i.i.i.i.i.i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #36
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %18, align 8, !tbaa !35
  %i.xe = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xe, i8 0, i64 24, i1 false)
  %i.xf = load i32, ptr %i.sc, align 8, !tbaa !180
  switch i32 %i.xf, label %bb.ee [
    i32 0, label %bb.dd
    i32 1, label %bb.dj
    i32 2, label %bb.do
  ]

bb.dc:                                            ; preds = %bb.cz
  %i.xg = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.dd:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store i64 9, ptr %13, align 8, !tbaa !111, !alias.scope !1405
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i146.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @.str.187, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i146.i.i.i.i.i.i.i.i, align 8, !tbaa !126, !alias.scope !1405
  %i.xh = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  store i8 0, ptr %i.xh, align 8, !tbaa !128, !alias.scope !1405
  %i.xi = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 3 uses
  store i8 1, ptr %i.xi, align 8, !tbaa !130, !alias.scope !1405
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 5, ptr nonnull @.str.186, ptr noundef nonnull align 8 %13)
          to label %bb.de unwind label %bb.dh

bb.de:                                            ; preds = %bb.dd
  %i.xj = load i8, ptr %i.xi, align 8, !tbaa !130, !range !109, !noundef !110
  %i.xk = trunc nuw i8 %i.xj to i1
  store i8 0, ptr %i.xi, align 8, !tbaa !130
  %i.xl = load i8, ptr %i.xh, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i147.i.i.i.i.i.i.i.i = icmp ne i8 %i.xl, -1
  %or.cond.not.i.i.i.i.i.i.i.i.i.i.i.i.i148.i.i.i.i.i.i.i.i = select i1 %i.xk, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i147.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i.i.i.i148.i.i.i.i.i.i.i.i, label %bb.df, label %_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i.i.i.i.i.i.i.i.i149.i.i.i.i.i.i.i.i, !prof !131

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(48) %13)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i150.i.i.i.i.i.i.i.i unwind label %bb.dg

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i150.i.i.i.i.i.i.i.i: ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  br label %_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i.i.i.i.i.i.i.i.i149.i.i.i.i.i.i.i.i

bb.dg:                                            ; preds = %bb.df
  %i.xm = landingpad { ptr, i32 }
          catch ptr null
  %i.xn = extractvalue { ptr, i32 } %i.xm, 0
  call void @__clang_call_terminate(ptr %i.xn) #34
  unreachable

bb.dh:                                            ; preds = %bb.dd
  %i.xo = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %13) #36
  br label %.body.i.i.i.i.i.i.i.i.i98.i.i.i.i.i.i.i.i

_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i.i.i.i.i.i.i.i.i149.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i150.i.i.i.i.i.i.i.i, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.ee

bb.di:                                            ; preds = %grpc_channelz_v2_Promise_Custom_mutable_properties.exit.i.i.i.i.i.i.i.i.i111.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i.i38.i.i.i.i.i.i.i.i.i133.i.i.i.i.i.i.i.i, %bb.dt
  %i.xp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i98.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i98.i.i.i.i.i.i.i.i:        ; preds = %bb.ed, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ds, %bb.dn, %bb.di, %bb.dh
  %eh.lpad-body.i.i.i.i.i.i.i.i.i99.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.xo, %bb.dh ], [ %i.xx, %bb.dn ], [ %i.yf, %bb.ds ], [ %i.xp, %bb.di ], [ %i.aaq, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.abe, %bb.ed ]
  call void @_ZN9grpc_core8channelz12PropertyListD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %18) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36
  br label %bb.el

bb.dj:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store i64 15, ptr %11, align 8, !tbaa !111, !alias.scope !1406
  %.sroa.4.0..sroa_idx.i.i14.i.i.i.i.i.i.i.i.i141.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.188, ptr %.sroa.4.0..sroa_idx.i.i14.i.i.i.i.i.i.i.i.i141.i.i.i.i.i.i.i.i, align 8, !tbaa !126, !alias.scope !1406
  %i.xq = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  store i8 0, ptr %i.xq, align 8, !tbaa !128, !alias.scope !1406
  %i.xr = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 3 uses
  store i8 1, ptr %i.xr, align 8, !tbaa !130, !alias.scope !1406
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 5, ptr nonnull @.str.186, ptr noundef nonnull align 8 %11)
          to label %bb.dk unwind label %bb.dn

bb.dk:                                            ; preds = %bb.dj
  %i.xs = load i8, ptr %i.xr, align 8, !tbaa !130, !range !109, !noundef !110
  %i.xt = trunc nuw i8 %i.xs to i1
  store i8 0, ptr %i.xr, align 8, !tbaa !130
  %i.xu = load i8, ptr %i.xq, align 8
  %.not.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i142.i.i.i.i.i.i.i.i = icmp ne i8 %i.xu, -1
  %or.cond.not.i.i.i.i16.i.i.i.i.i.i.i.i.i143.i.i.i.i.i.i.i.i = select i1 %i.xt, i1 %.not.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i142.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i16.i.i.i.i.i.i.i.i.i143.i.i.i.i.i.i.i.i, label %bb.dl, label %_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit20.i.i.i.i.i.i.i.i.i144.i.i.i.i.i.i.i.i, !prof !131

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %.noexc.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i unwind label %bb.dm

.noexc.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i: ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  br label %_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit20.i.i.i.i.i.i.i.i.i144.i.i.i.i.i.i.i.i

bb.dm:                                            ; preds = %bb.dl
  %i.xv = landingpad { ptr, i32 }
          catch ptr null
  %i.xw = extractvalue { ptr, i32 } %i.xv, 0
  call void @__clang_call_terminate(ptr %i.xw) #34
  unreachable

bb.dn:                                            ; preds = %bb.dj
  %i.xx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #36
  br label %.body.i.i.i.i.i.i.i.i.i98.i.i.i.i.i.i.i.i

_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit20.i.i.i.i.i.i.i.i.i144.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i17.i.i.i.i.i.i.i.i.i145.i.i.i.i.i.i.i.i, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.ee

bb.do:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 7, ptr %9, align 8, !tbaa !111, !alias.scope !1407
  %.sroa.4.0..sroa_idx.i.i21.i.i.i.i.i.i.i.i.i97.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.108, ptr %.sroa.4.0..sroa_idx.i.i21.i.i.i.i.i.i.i.i.i97.i.i.i.i.i.i.i.i, align 8, !tbaa !126, !alias.scope !1407
  %i.xy = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store i8 0, ptr %i.xy, align 8, !tbaa !128, !alias.scope !1407
  %i.xz = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  store i8 1, ptr %i.xz, align 8, !tbaa !130, !alias.scope !1407
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 5, ptr nonnull @.str.186, ptr noundef nonnull align 8 %9)
          to label %bb.dp unwind label %bb.ds

bb.dp:                                            ; preds = %bb.do
  %i.ya = load i8, ptr %i.xz, align 8, !tbaa !130, !range !109, !noundef !110
  %i.yb = trunc nuw i8 %i.ya to i1
  store i8 0, ptr %i.xz, align 8, !tbaa !130
  %i.yc = load i8, ptr %i.xy, align 8
  %.not.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.i104.i.i.i.i.i.i.i.i = icmp ne i8 %i.yc, -1
  %or.cond.not.i.i.i.i23.i.i.i.i.i.i.i.i.i105.i.i.i.i.i.i.i.i = select i1 %i.yb, i1 %.not.i.i.i.i.i.i.i22.i.i.i.i.i.i.i.i.i104.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i23.i.i.i.i.i.i.i.i.i105.i.i.i.i.i.i.i.i, label %bb.dq, label %bb.dt, !prof !131

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(48) %9)
          to label %.noexc.i.i.i.i.i.i24.i.i.i.i.i.i.i.i.i140.i.i.i.i.i.i.i.i unwind label %bb.dr

.noexc.i.i.i.i.i.i24.i.i.i.i.i.i.i.i.i140.i.i.i.i.i.i.i.i: ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.dt

bb.dr:                                            ; preds = %bb.dq
  %i.yd = landingpad { ptr, i32 }
          catch ptr null
  %i.ye = extractvalue { ptr, i32 } %i.yd, 0
  call void @__clang_call_terminate(ptr %i.ye) #34
  unreachable

bb.ds:                                            ; preds = %bb.do
  %i.yf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #36
  br label %.body.i.i.i.i.i.i.i.i.i98.i.i.i.i.i.i.i.i

bb.dt:                                            ; preds = %.noexc.i.i.i.i.i.i24.i.i.i.i.i.i.i.i.i140.i.i.i.i.i.i.i.i, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.experimental.noalias.scope.decl(metadata !1408)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36, !noalias !1408
  %i.yh = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35
          to label %.noexc31.i.i.i.i.i.i.i.i.i106.i.i.i.i.i.i.i.i unwind label %bb.di ; 8 uses

.noexc31.i.i.i.i.i.i.i.i.i106.i.i.i.i.i.i.i.i:    ; preds = %bb.dt
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 8
  store i32 1, ptr %i.yi, align 8, !tbaa !123, !noalias !1409
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yh, i64 12
  store i32 1, ptr %i.yj, align 4, !tbaa !124, !noalias !1409
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.yh, align 8, !tbaa !35, !noalias !1409
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yh, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz20property_list_detail20PromisePropertyValueE, i64 16), ptr %i.yk, align 8, !tbaa !35, !noalias !1409
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yh, i64 24 ; 2 uses
  %i.ym = invoke ptr @upb_Arena_Init(ptr noundef null, i64 noundef 0, ptr noundef nonnull @upb_alloc_global)
          to label %.noexc.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i107.i.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !1409 ; 5 uses

.noexc.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i107.i.i.i.i.i.i.i.i: ; preds = %.noexc31.i.i.i.i.i.i.i.i.i106.i.i.i.i.i.i.i.i
  store ptr %i.ym, ptr %i.yl, align 8, !tbaa !359, !noalias !1409
  %i.yn = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__Promise_msg_init, i64 8), align 8, !tbaa !362, !noalias !1409
  %i.yo = zext i16 %i.yn to i64                   ; 5 uses
  %i.yp = and i64 %i.yo, 7
  %i.yq = icmp eq i64 %i.yp, 0
  call void @llvm.assume(i1 %i.yq)
  %i.yr = getelementptr inbounds nuw i8, ptr %i.ym, i64 8
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !364, !noalias !1409
  %i.yt = load ptr, ptr %i.ym, align 8, !tbaa !365, !noalias !1409 ; 4 uses
  %i.yu = ptrtoint ptr %i.ys to i64
  %i.yv = ptrtoint ptr %i.yt to i64
  %i.yw = sub i64 %i.yu, %i.yv
  %i.yx = icmp ult i64 %i.yw, %i.yo
  br i1 %i.yx, label %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i139.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i108.i.i.i.i.i.i.i.i, !prof !31

upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i108.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i107.i.i.i.i.i.i.i.i
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yt, i64 %i.yo
  store ptr %i.yy, ptr %i.ym, align 8, !tbaa !365, !noalias !1409
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yt) ]
  br label %bb.du

upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i139.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i28.i.i.i.i.i.i.i.i.i107.i.i.i.i.i.i.i.i
  %i.yz = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.ym, i64 noundef %i.yo)
          to label %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !1409 ; 2 uses

.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i139.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.yz, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %grpc_channelz_v2_Promise_new.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.du, !prof !431

bb.du:                                            ; preds = %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i108.i.i.i.i.i.i.i.i
  %.0.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.yt, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i108.i.i.i.i.i.i.i.i ], [ %i.yz, %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 %i.yo, i1 false), !noalias !1409
  br label %grpc_channelz_v2_Promise_new.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

grpc_channelz_v2_Promise_new.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.du, %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.0.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.du ], [ null, %.noexc9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yh, i64 32
  store ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.za, align 8, !tbaa !366, !noalias !1409
  %i.zb = load ptr, ptr %i.yl, align 8, !tbaa !359, !noalias !1409 ; 9 uses
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise__Map_msg_init) #36, !noalias !1409, !srcloc !432
  %i.zc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !97, !noalias !1409
  %i.ze = icmp eq i32 %i.zd, 8
  br i1 %i.ze, label %grpc_channelz_v2_Promise_map_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %grpc_channelz_v2_Promise_map_promise.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

grpc_channelz_v2_Promise_map_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %grpc_channelz_v2_Promise_new.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.zf = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %.0.in.then.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.zf, align 4, !noalias !1409 ; 2 uses
  %i.zg = inttoptr i64 %.0.in.then.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to ptr
  %i.zh = icmp eq i64 %.0.in.then.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.zh, label %grpc_channelz_v2_Promise_map_promise.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %grpc_channelz_v2_Promise_mutable_map_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

grpc_channelz_v2_Promise_map_promise.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %grpc_channelz_v2_Promise_map_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %grpc_channelz_v2_Promise_new.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.zi = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__Promise__Map_msg_init, i64 8), align 8, !tbaa !362, !noalias !1409
  %i.zj = zext i16 %i.zi to i64                   ; 5 uses
  %i.zk = and i64 %i.zj, 7
  %i.zl = icmp eq i64 %i.zk, 0
  call void @llvm.assume(i1 %i.zl)
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !364, !noalias !1409
  %i.zo = load ptr, ptr %i.zb, align 8, !tbaa !365, !noalias !1409 ; 4 uses
  %i.zp = ptrtoint ptr %i.zn to i64
  %i.zq = ptrtoint ptr %i.zo to i64               ; 2 uses
  %i.zr = sub i64 %i.zp, %i.zq
  %i.zs = icmp ult i64 %i.zr, %i.zj
  br i1 %i.zs, label %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !31

upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %grpc_channelz_v2_Promise_map_promise.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zo, i64 %i.zj
  store ptr %i.zt, ptr %i.zb, align 8, !tbaa !365, !noalias !1409
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.zo) ]
  br label %bb.dv

upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %grpc_channelz_v2_Promise_map_promise.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.zu = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.zb, i64 noundef %i.zj)
          to label %.noexc10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !1409 ; 3 uses

.noexc10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.zu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %grpc_channelz_v2_Promise_mutable_map_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !431

upb_Arena_Malloc.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.zu to i64
  br label %bb.dv

bb.dv:                                            ; preds = %upb_Arena_Malloc.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.zq, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.0.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.zu, %upb_Arena_Malloc.exit.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.zo, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 %i.zj, i1 false), !noalias !1409
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise__Map_msg_init) #36, !noalias !1409, !srcloc !432
  store i32 8, ptr %i.zc, align 4, !tbaa !97, !noalias !1409
  %i.zv = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.zv, align 4, !noalias !1409
  br label %grpc_channelz_v2_Promise_mutable_map_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

grpc_channelz_v2_Promise_mutable_map_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dv, %.noexc10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %grpc_channelz_v2_Promise_map_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.0.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dv ], [ %i.zg, %grpc_channelz_v2_Promise_map_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ null, %.noexc10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise_msg_init) #36, !noalias !1409, !srcloc !432
  %i.zw = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.zx = load i64, ptr %i.zw, align 1, !noalias !1409 ; 2 uses
  %i.zy = inttoptr i64 %i.zx to ptr
  %i.zz = icmp eq i64 %i.zx, 0
  br i1 %i.zz, label %bb.dw, label %"_ZN9grpc_core8channelz20property_list_detail20PromisePropertyValueC2IKNS_14promise_detail11PromiseLikeINS_3MapINS4_3SeqIZNS_11CallFilters25PullServerInitialMetadataEvEUlvE_JZNS8_25PullServerInitialMetadataEvEUlbE_EEEZZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERSE_ENKUlvE_clEvEUlNS_14ValueOrFailureISt8optionalISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEEE_EEvEEEEPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.dw:                                            ; preds = %grpc_channelz_v2_Promise_mutable_map_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aaa = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__Promise_msg_init, i64 8), align 8, !tbaa !362, !noalias !1409
  %i.aab = zext i16 %i.aaa to i64                 ; 5 uses
  %i.aac = and i64 %i.aab, 7
  %i.aad = icmp eq i64 %i.aac, 0
  call void @llvm.assume(i1 %i.aad)
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !364, !noalias !1409
  %i.aag = load ptr, ptr %i.zb, align 8, !tbaa !365, !noalias !1409 ; 4 uses
  %i.aah = ptrtoint ptr %i.aaf to i64
  %i.aai = ptrtoint ptr %i.aag to i64             ; 2 uses
  %i.aaj = sub i64 %i.aah, %i.aai
  %i.aak = icmp ult i64 %i.aaj, %i.aab
  br i1 %i.aak, label %upb_Arena_Malloc.exit.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !31

upb_Arena_Malloc.exit.thread.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dw
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aag, i64 %i.aab
  store ptr %i.aal, ptr %i.zb, align 8, !tbaa !365, !noalias !1409
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aag) ]
  br label %bb.dx

upb_Arena_Malloc.exit.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dw
  %i.aam = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.zb, i64 noundef %i.aab)
          to label %.noexc11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !1409 ; 3 uses

.noexc11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %upb_Arena_Malloc.exit.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aam, null
  br i1 %.not.i.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9grpc_core8channelz20property_list_detail20PromisePropertyValueC2IKNS_14promise_detail11PromiseLikeINS_3MapINS4_3SeqIZNS_11CallFilters25PullServerInitialMetadataEvEUlvE_JZNS8_25PullServerInitialMetadataEvEUlbE_EEEZZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERSE_ENKUlvE_clEvEUlNS_14ValueOrFailureISt8optionalISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEEE_EEvEEEEPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %upb_Arena_Malloc.exit.i._crit_edge.i13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !431

upb_Arena_Malloc.exit.i._crit_edge.i13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre.i14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.aam to i64
  br label %bb.dx

bb.dx:                                            ; preds = %upb_Arena_Malloc.exit.i._crit_edge.i13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre-phi.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i._crit_edge.i13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aai, %upb_Arena_Malloc.exit.thread.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.0.i11.i.i10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aam, %upb_Arena_Malloc.exit.i._crit_edge.i13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aag, %upb_Arena_Malloc.exit.thread.i.i8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 %i.aab, i1 false), !noalias !1409
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise_msg_init) #36, !noalias !1409, !srcloc !432
  %i.aan = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aao = load i8, ptr %i.aan, align 1, !tbaa !103, !noalias !1409
  %i.aap = or i8 %i.aao, 1
  store i8 %i.aap, ptr %i.aan, align 1, !tbaa !103, !noalias !1409
  store i64 %.pre-phi.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.zw, align 1, !noalias !1409
  br label %"_ZN9grpc_core8channelz20property_list_detail20PromisePropertyValueC2IKNS_14promise_detail11PromiseLikeINS_3MapINS4_3SeqIZNS_11CallFilters25PullServerInitialMetadataEvEUlvE_JZNS8_25PullServerInitialMetadataEvEUlbE_EEEZZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERSE_ENKUlvE_clEvEUlNS_14ValueOrFailureISt8optionalISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEEE_EEvEEEEPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN9grpc_core8channelz20property_list_detail20PromisePropertyValueC2IKNS_14promise_detail11PromiseLikeINS_3MapINS4_3SeqIZNS_11CallFilters25PullServerInitialMetadataEvEUlvE_JZNS8_25PullServerInitialMetadataEvEUlbE_EEEZZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERSE_ENKUlvE_clEvEUlNS_14ValueOrFailureISt8optionalISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEEE_EEvEEEEPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.dx, %.noexc11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %grpc_channelz_v2_Promise_mutable_map_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.0.i11.i.i10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dx ], [ %i.zy, %grpc_channelz_v2_Promise_mutable_map_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ null, %.noexc11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_ZNK9grpc_core14promise_detail8SeqStateINS0_9SeqTraitsEZNS_11CallFilters25PullServerInitialMetadataEvEUlvE_JZNS3_25PullServerInitialMetadataEvEUlbE_EE7ToProtoE40grpc_channelz_v2_Promise_CompositionKindP24grpc_channelz_v2_PromiseP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(80) %i.yg, i32 noundef 1, ptr noundef %.0.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef %i.zb)
          to label %bb.dy unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !noalias !1409

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN9grpc_core8channelz20property_list_detail20PromisePropertyValueC2IKNS_14promise_detail11PromiseLikeINS_3MapINS4_3SeqIZNS_11CallFilters25PullServerInitialMetadataEvEUlvE_JZNS8_25PullServerInitialMetadataEvEUlbE_EEEZZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERSE_ENKUlvE_clEvEUlNS_14ValueOrFailureISt8optionalISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEEE_EEvEEEEPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %upb_Arena_Malloc.exit.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i139.i.i.i.i.i.i.i.i, %.noexc31.i.i.i.i.i.i.i.i.i106.i.i.i.i.i.i.i.i
  %i.aaq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.yh, i64 noundef 40) #37, !noalias !1409
  br label %.body.i.i.i.i.i.i.i.i.i98.i.i.i.i.i.i.i.i

bb.dy:                                            ; preds = %"_ZN9grpc_core8channelz20property_list_detail20PromisePropertyValueC2IKNS_14promise_detail11PromiseLikeINS_3MapINS4_3SeqIZNS_11CallFilters25PullServerInitialMetadataEvEUlvE_JZNS8_25PullServerInitialMetadataEvEUlbE_EEEZZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERSE_ENKUlvE_clEvEUlNS_14ValueOrFailureISt8optionalISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEEE_EEvEEEEPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.aar = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.202, i64 45), ptr %i.aar, align 1, !noalias !1409
  %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  store i64 73, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !1409
  %i.aas = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aat = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 10, ptr %i.aat, align 8, !tbaa !128, !noalias !1408
  %i.aau = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store ptr %i.yk, ptr %7, align 8, !tbaa !369, !alias.scope !1408
  %i.aav = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.aas, align 8, !tbaa !121, !noalias !1408
  store ptr %i.yh, ptr %i.aav, align 8, !tbaa !121, !alias.scope !1408
  store ptr null, ptr %6, align 8, !tbaa !369, !noalias !1408
  store i8 10, ptr %i.aau, align 8, !tbaa !128, !alias.scope !1408
  %i.aaw = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  store i8 1, ptr %i.aaw, align 8, !tbaa !130, !alias.scope !1408
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36, !noalias !1408
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(33) %6)
          to label %"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeINS_3MapINS4_3SeqIZNS_11CallFilters25PullServerInitialMetadataEvEUlvE_JZNS8_25PullServerInitialMetadataEvEUlbE_EEEZZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERSE_ENKUlvE_clEvEUlNS_14ValueOrFailureISt8optionalISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEEE_EEvEEEEvE4WrapB5cxx11ESX_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %bb.dz, !noalias !1408

bb.dz:                                            ; preds = %bb.dy
  %i.aax = landingpad { ptr, i32 }
          catch ptr null
  %i.aay = extractvalue { ptr, i32 } %i.aax, 0
  call void @__clang_call_terminate(ptr %i.aay) #34, !noalias !1408
  unreachable

"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeINS_3MapINS4_3SeqIZNS_11CallFilters25PullServerInitialMetadataEvEUlvE_JZNS8_25PullServerInitialMetadataEvEUlbE_EEEZZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERSE_ENKUlvE_clEvEUlNS_14ValueOrFailureISt8optionalISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEEE_EEvEEEEvE4WrapB5cxx11ESX_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36, !noalias !1408
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36, !noalias !1408
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 7, ptr nonnull @.str.108, ptr noundef nonnull align 8 %7)
          to label %bb.ea unwind label %bb.ed

bb.ea:                                            ; preds = %"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeINS_3MapINS4_3SeqIZNS_11CallFilters25PullServerInitialMetadataEvEUlvE_JZNS8_25PullServerInitialMetadataEvEUlbE_EEEZZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERSE_ENKUlvE_clEvEUlNS_14ValueOrFailureISt8optionalISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEEE_EEvEEEEvE4WrapB5cxx11ESX_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.aaz = load i8, ptr %i.aaw, align 8, !tbaa !130, !range !109, !noundef !110
  %i.aba = trunc nuw i8 %i.aaz to i1
  store i8 0, ptr %i.aaw, align 8, !tbaa !130
  %i.abb = load i8, ptr %i.aau, align 8
  %.not.i.i.i.i.i.i.i29.i.i.i.i.i.i.i.i.i109.i.i.i.i.i.i.i.i = icmp ne i8 %i.abb, -1
  %or.cond.not.i.i.i.i30.i.i.i.i.i.i.i.i.i110.i.i.i.i.i.i.i.i = select i1 %i.aba, i1 %.not.i.i.i.i.i.i.i29.i.i.i.i.i.i.i.i.i109.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i30.i.i.i.i.i.i.i.i.i110.i.i.i.i.i.i.i.i, label %bb.eb, label %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeINS_3MapINS4_3SeqIZNS_11CallFilters25PullServerInitialMetadataEvEUlvE_JZNS8_25PullServerInitialMetadataEvEUlbE_EEEZZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERSE_ENKUlvE_clEvEUlNS_14ValueOrFailureISt8optionalISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEEE_EEvEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !131

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %.noexc.i.i.i.i.i6.i.i.i.i.i.i.i.i.i.i138.i.i.i.i.i.i.i.i unwind label %bb.ec

.noexc.i.i.i.i.i6.i.i.i.i.i.i.i.i.i.i138.i.i.i.i.i.i.i.i: ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeINS_3MapINS4_3SeqIZNS_11CallFilters25PullServerInitialMetadataEvEUlvE_JZNS8_25PullServerInitialMetadataEvEUlbE_EEEZZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERSE_ENKUlvE_clEvEUlNS_14ValueOrFailureISt8optionalISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEEE_EEvEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.ec:                                            ; preds = %bb.eb
  %i.abc = landingpad { ptr, i32 }
          catch ptr null
  %i.abd = extractvalue { ptr, i32 } %i.abc, 0
  call void @__clang_call_terminate(ptr %i.abd) #34
  unreachable

bb.ed:                                            ; preds = %"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeINS_3MapINS4_3SeqIZNS_11CallFilters25PullServerInitialMetadataEvEUlvE_JZNS8_25PullServerInitialMetadataEvEUlbE_EEEZZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERSE_ENKUlvE_clEvEUlNS_14ValueOrFailureISt8optionalISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEEE_EEvEEEEvE4WrapB5cxx11ESX_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.abe = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #36
  br label %.body.i.i.i.i.i.i.i.i.i98.i.i.i.i.i.i.i.i

"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeINS_3MapINS4_3SeqIZNS_11CallFilters25PullServerInitialMetadataEvEUlvE_JZNS8_25PullServerInitialMetadataEvEUlbE_EEEZZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERSE_ENKUlvE_clEvEUlNS_14ValueOrFailureISt8optionalISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEEE_EEvEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i6.i.i.i.i.i.i.i.i.i.i138.i.i.i.i.i.i.i.i, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.ee

bb.ee:                                            ; preds = %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeINS_3MapINS4_3SeqIZNS_11CallFilters25PullServerInitialMetadataEvEUlvE_JZNS8_25PullServerInitialMetadataEvEUlbE_EEEZZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERSE_ENKUlvE_clEvEUlNS_14ValueOrFailureISt8optionalISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEEEEE_EEvEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit20.i.i.i.i.i.i.i.i.i144.i.i.i.i.i.i.i.i, %_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit.i.i.i.i.i.i.i.i.i149.i.i.i.i.i.i.i.i, %bb.db
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__PropertyList_msg_init) #36, !srcloc !432
  %i.abf = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i91.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.abg = load i64, ptr %i.abf, align 1          ; 2 uses
  %i.abh = inttoptr i64 %i.abg to ptr
  %i.abi = icmp eq i64 %i.abg, 0
  br i1 %i.abi, label %bb.ef, label %grpc_channelz_v2_Promise_Custom_mutable_properties.exit.i.i.i.i.i.i.i.i.i111.i.i.i.i.i.i.i.i

bb.ef:                                            ; preds = %bb.ee
  %i.abj = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__PropertyList_msg_init, i64 8), align 8, !tbaa !362
  %i.abk = zext i16 %i.abj to i64                 ; 5 uses
  %i.abl = and i64 %i.abk, 7
  %i.abm = icmp eq i64 %i.abl, 0
  call void @llvm.assume(i1 %i.abm)
  %i.abn = load ptr, ptr %i.bk, align 8, !tbaa !364
  %i.abo = load ptr, ptr %2, align 8, !tbaa !365  ; 4 uses
  %i.abp = ptrtoint ptr %i.abn to i64
  %i.abq = ptrtoint ptr %i.abo to i64             ; 2 uses
  %i.abr = sub i64 %i.abp, %i.abq
  %i.abs = icmp ult i64 %i.abr, %i.abk
  br i1 %i.abs, label %upb_Arena_Malloc.exit.i.i38.i.i.i.i.i.i.i.i.i133.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i35.i.i.i.i.i.i.i.i.i130.i.i.i.i.i.i.i.i, !prof !31

upb_Arena_Malloc.exit.thread.i.i35.i.i.i.i.i.i.i.i.i130.i.i.i.i.i.i.i.i: ; preds = %bb.ef
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abo, i64 %i.abk
  store ptr %i.abt, ptr %2, align 8, !tbaa !365
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.abo) ]
  br label %bb.eg

upb_Arena_Malloc.exit.i.i38.i.i.i.i.i.i.i.i.i133.i.i.i.i.i.i.i.i: ; preds = %bb.ef
  %i.abu = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %2, i64 noundef %i.abk)
          to label %.noexc42.i.i.i.i.i.i.i.i.i134.i.i.i.i.i.i.i.i unwind label %bb.di ; 3 uses

.noexc42.i.i.i.i.i.i.i.i.i134.i.i.i.i.i.i.i.i:    ; preds = %upb_Arena_Malloc.exit.i.i38.i.i.i.i.i.i.i.i.i133.i.i.i.i.i.i.i.i
  %.not.i.i39.i.i.i.i.i.i.i.i.i135.i.i.i.i.i.i.i.i = icmp eq ptr %i.abu, null
  br i1 %.not.i.i39.i.i.i.i.i.i.i.i.i135.i.i.i.i.i.i.i.i, label %grpc_channelz_v2_Promise_Custom_mutable_properties.exit.i.i.i.i.i.i.i.i.i111.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.i._crit_edge.i40.i.i.i.i.i.i.i.i.i136.i.i.i.i.i.i.i.i, !prof !431

upb_Arena_Malloc.exit.i._crit_edge.i40.i.i.i.i.i.i.i.i.i136.i.i.i.i.i.i.i.i: ; preds = %.noexc42.i.i.i.i.i.i.i.i.i134.i.i.i.i.i.i.i.i
  %.pre.i41.i.i.i.i.i.i.i.i.i137.i.i.i.i.i.i.i.i = ptrtoint ptr %i.abu to i64
  br label %bb.eg

bb.eg:                                            ; preds = %upb_Arena_Malloc.exit.i._crit_edge.i40.i.i.i.i.i.i.i.i.i136.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i35.i.i.i.i.i.i.i.i.i130.i.i.i.i.i.i.i.i
  %.pre-phi.i36.i.i.i.i.i.i.i.i.i131.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i41.i.i.i.i.i.i.i.i.i137.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i._crit_edge.i40.i.i.i.i.i.i.i.i.i136.i.i.i.i.i.i.i.i ], [ %i.abq, %upb_Arena_Malloc.exit.thread.i.i35.i.i.i.i.i.i.i.i.i130.i.i.i.i.i.i.i.i ]
  %.0.i11.i.i37.i.i.i.i.i.i.i.i.i132.i.i.i.i.i.i.i.i = phi ptr [ %i.abu, %upb_Arena_Malloc.exit.i._crit_edge.i40.i.i.i.i.i.i.i.i.i136.i.i.i.i.i.i.i.i ], [ %i.abo, %upb_Arena_Malloc.exit.thread.i.i35.i.i.i.i.i.i.i.i.i130.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i37.i.i.i.i.i.i.i.i.i132.i.i.i.i.i.i.i.i, i8 0, i64 %i.abk, i1 false)
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__PropertyList_msg_init) #36, !srcloc !432
  %i.abv = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i91.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.abw = load i8, ptr %i.abv, align 1, !tbaa !103
  %i.abx = or i8 %i.abw, 1
  store i8 %i.abx, ptr %i.abv, align 1, !tbaa !103
  store i64 %.pre-phi.i36.i.i.i.i.i.i.i.i.i131.i.i.i.i.i.i.i.i, ptr %i.abf, align 1
  br label %grpc_channelz_v2_Promise_Custom_mutable_properties.exit.i.i.i.i.i.i.i.i.i111.i.i.i.i.i.i.i.i

grpc_channelz_v2_Promise_Custom_mutable_properties.exit.i.i.i.i.i.i.i.i.i111.i.i.i.i.i.i.i.i: ; preds = %bb.eg, %.noexc42.i.i.i.i.i.i.i.i.i134.i.i.i.i.i.i.i.i, %bb.ee
  %.0.i34.i.i.i.i.i.i.i.i.i112.i.i.i.i.i.i.i.i = phi ptr [ %.0.i11.i.i37.i.i.i.i.i.i.i.i.i132.i.i.i.i.i.i.i.i, %bb.eg ], [ %i.abh, %bb.ee ], [ null, %.noexc42.i.i.i.i.i.i.i.i.i134.i.i.i.i.i.i.i.i ]
  invoke void @_ZN9grpc_core8channelz12PropertyList12FillUpbProtoEP29grpc_channelz_v2_PropertyListP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef %.0.i34.i.i.i.i.i.i.i.i.i112.i.i.i.i.i.i.i.i, ptr noundef nonnull %2)
          to label %bb.eh unwind label %bb.di

bb.eh:                                            ; preds = %grpc_channelz_v2_Promise_Custom_mutable_properties.exit.i.i.i.i.i.i.i.i.i111.i.i.i.i.i.i.i.i
  %i.aby = load ptr, ptr %i.xe, align 8, !tbaa !138 ; 3 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.aca = load ptr, ptr %i.abz, align 8, !tbaa !139 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i113.i.i.i.i.i.i.i.i = icmp eq ptr %i.aby, %i.aca
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i113.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i124.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i114.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i114.i.i.i.i.i.i.i.i: ; preds = %bb.eh, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i120.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i115.i.i.i.i.i.i.i.i = phi ptr [ %i.acl, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i120.i.i.i.i.i.i.i.i ], [ %i.aby, %bb.eh ] ; 5 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i.i115.i.i.i.i.i.i.i.i, i64 64
  %i.acc = load i8, ptr %i.acb, align 8, !tbaa !128
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i116.i.i.i.i.i.i.i.i = icmp eq i8 %i.acc, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i116.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i118.i.i.i.i.i.i.i.i, label %bb.ei, !prof !31

bb.ei:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i114.i.i.i.i.i.i.i.i
  %i.acd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i.i115.i.i.i.i.i.i.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(33) %i.acd)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i117.i.i.i.i.i.i.i.i unwind label %bb.ej

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i117.i.i.i.i.i.i.i.i: ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i118.i.i.i.i.i.i.i.i

bb.ej:                                            ; preds = %bb.ei
  %i.ace = landingpad { ptr, i32 }
          catch ptr null
  %i.acf = extractvalue { ptr, i32 } %i.ace, 0
  call void @__clang_call_terminate(ptr %i.acf) #34
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i118.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i117.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i114.i.i.i.i.i.i.i.i
  %i.acg = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i.i115.i.i.i.i.i.i.i.i, align 8, !tbaa !140 ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i.i115.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.aci = icmp eq ptr %i.acg, %i.ach
  br i1 %i.aci, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i120.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i119.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i119.i.i.i.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i118.i.i.i.i.i.i.i.i
  %i.acj = load i64, ptr %i.ach, align 8, !tbaa !103
  %i.ack = add i64 %i.acj, 1
  call void @_ZdlPvm(ptr noundef %i.acg, i64 noundef %i.ack) #37
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i120.i.i.i.i.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i120.i.i.i.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i118.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i119.i.i.i.i.i.i.i.i
  %i.acl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i.i115.i.i.i.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i121.i.i.i.i.i.i.i.i = icmp eq ptr %i.acl, %i.aca
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i121.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i122.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i114.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i122.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i120.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i.i.i123.i.i.i.i.i.i.i.i = load ptr, ptr %i.xe, align 8, !tbaa !138
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i124.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i124.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i122.i.i.i.i.i.i.i.i, %bb.eh
  %i.acm = phi ptr [ %.pr.i.i.i.i.i.i.i.i.i.i.i123.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i122.i.i.i.i.i.i.i.i ], [ %i.aby, %bb.eh ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i.i.i.i.i125.i.i.i.i.i.i.i.i = icmp eq ptr %i.acm, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i.i.i.i125.i.i.i.i.i.i.i.i, label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit.i.i.i.i.i.i.i.i.i126.i.i.i.i.i.i.i.i, label %bb.ek

bb.ek:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i124.i.i.i.i.i.i.i.i
  %i.acn = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.aco = load ptr, ptr %i.acn, align 8, !tbaa !142
  %i.acp = ptrtoint ptr %i.aco to i64
  %i.acq = ptrtoint ptr %i.acm to i64
  %i.acr = sub i64 %i.acp, %i.acq
  call void @_ZdlPvm(ptr noundef nonnull %i.acm, i64 noundef %i.acr) #37
  br label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit.i.i.i.i.i.i.i.i.i126.i.i.i.i.i.i.i.i

_ZN9grpc_core8channelz12PropertyListD2Ev.exit.i.i.i.i.i.i.i.i.i126.i.i.i.i.i.i.i.i: ; preds = %bb.ek, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i124.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36
  %i.acs = load ptr, ptr %14, align 8, !tbaa !140 ; 2 uses
  %i.act = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.acu = icmp eq ptr %i.acs, %i.act
  br i1 %i.acu, label %"_ZN9grpc_core14PromiseAsProtoINS_14promise_detail11PromiseLikeINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERS6_EUlvE_L12grpc_op_type4EEEvEEEEvRKT_P24grpc_channelz_v2_PromiseP9upb_Arena.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i127.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i127.i.i.i.i.i.i.i.i: ; preds = %_ZN9grpc_core8channelz12PropertyListD2Ev.exit.i.i.i.i.i.i.i.i.i126.i.i.i.i.i.i.i.i
  %i.acv = load i64, ptr %i.act, align 8, !tbaa !103
  %i.acw = add i64 %i.acv, 1
  call void @_ZdlPvm(ptr noundef %i.acs, i64 noundef %i.acw) #37
  br label %"_ZN9grpc_core14PromiseAsProtoINS_14promise_detail11PromiseLikeINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERS6_EUlvE_L12grpc_op_type4EEEvEEEEvRKT_P24grpc_channelz_v2_PromiseP9upb_Arena.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.el:                                            ; preds = %.body.i.i.i.i.i.i.i.i.i98.i.i.i.i.i.i.i.i, %bb.dc
  %.pn.i.i.i.i.i.i.i.i.i100.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i.i.i.i.i99.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i98.i.i.i.i.i.i.i.i ], [ %i.xg, %bb.dc ]
  %i.acx = load ptr, ptr %14, align 8, !tbaa !140 ; 2 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.acz = icmp eq ptr %i.acx, %i.acy
  br i1 %i.acz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i.i.i.i.i.i.i.i.i102.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i.i.i.i.i.i.i.i.i101.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i.i.i.i.i.i.i.i.i101.i.i.i.i.i.i.i.i: ; preds = %bb.el
  %i.ada = load i64, ptr %i.acy, align 8, !tbaa !103
  %i.adb = add i64 %i.ada, 1
  call void @_ZdlPvm(ptr noundef %i.acx, i64 noundef %i.adb) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i.i.i.i.i.i.i.i.i102.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i.i.i.i.i.i.i.i.i102.i.i.i.i.i.i.i.i: ; preds = %bb.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i.i.i.i.i.i.i.i.i101.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  br label %common.resume.i.i.i.i.i.i.i.i

"_ZN9grpc_core14PromiseAsProtoINS_14promise_detail11PromiseLikeINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERS6_EUlvE_L12grpc_op_type4EEEvEEEEvRKT_P24grpc_channelz_v2_PromiseP9upb_Arena.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN9grpc_core8channelz12PropertyListD2Ev.exit.i.i.i.i.i.i.i.i.i126.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i127.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  br label %bb.em

bb.em:                                            ; preds = %"_ZN9grpc_core14PromiseAsProtoINS_14promise_detail11PromiseLikeINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_3clERS6_EUlvE_L12grpc_op_type4EEEvEEEEvRKT_P24grpc_channelz_v2_PromiseP9upb_Arena.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %grpc_channelz_v2_Promise_SeqStep_new.exit.1.i.i.i.i.i71.i.i.i.i.i.i.i.i
  %i.adc = load ptr, ptr %i.uq, align 8, !tbaa !434 ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.203, i64 45), ptr %i.add, align 1
  %.sroa.56.0..sroa_idx.i35.i.i.i.i.i74.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.adc, i64 24
  store i64 126, ptr %.sroa.56.0..sroa_idx.i35.i.i.i.i.i74.i.i.i.i.i.i.i.i, align 1
  %i.ade = load i8, ptr %i.ut, align 8, !tbaa !182
  %i.adf = icmp eq i8 %i.ade, 1
  br i1 %i.adf, label %bb.en, label %"_ZNK9grpc_core14promise_detail11PromiseLikeINS_3MapINS0_5AllOkINS_10StatusFlagEJNS0_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS9_EUlvE_L12grpc_op_type1EEEJNS6_IZZNS7_11CommitBatchESA_mSB_bENK3$_1clESD_EUlvE_LSF_2EEEEEENS5_INS6_IZZNS7_11CommitBatchESA_mSB_bENK3$_3clESD_EUlvE_LSF_4EEEJNS6_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSD_PT_EUlvE_LSF_5EEEEEEEEEZNS7_11CommitBatchESA_mSB_bE3$_4EEvE7ToProtoEP24grpc_channelz_v2_PromiseP9upb_Arena.exit"

bb.en:                                            ; preds = %bb.em
  %i.adg = load ptr, ptr %i.uq, align 8, !tbaa !434 ; 2 uses
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise_msg_init) #36, !srcloc !432
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 32 ; 2 uses
  %i.adi = load i64, ptr %i.adh, align 1          ; 2 uses
end_hunk_7
begin_hunk_8_@_ZNK9grpc_core3MapINS_11CallFilters16MetadataExecutorISt8optionalISt10unique_ptrI19grpc_metadata_batchNS_5Arena13PooledDeleterEEES8_XadL_ZNS1_29push_server_initial_metadata_EEEXadL_ZNS_14filters_detail9StackData23server_initial_metadataEEEXadL_ZNS_9CallState31FinishPullServerInitialMetadataEvEESt16reverse_iteratorIPKNS1_10AddedStackEEEEZZZNS1_25PullServerInitialMetadataEvENKUlbE_clEbENKUlvE_clEvEUlNS_14ValueOrFailureIS9_EEE_E7ToProtoEP24grpc_channelz_v2_PromiseP9upb_Arena:bb.a
  %.pre.i14 = ptrtoint ptr %i.ak to i64
  br label %bb.d

bb.d:                                             ; preds = %upb_Arena_Malloc.exit.i.i11, %upb_Arena_Malloc.exit.thread.i.i8
  %.pre-phi.i9 = phi i64 [ %.pre.i14, %upb_Arena_Malloc.exit.i.i11 ], [ %i.ag, %upb_Arena_Malloc.exit.thread.i.i8 ]
  %.0.i11.i.i10 = phi ptr [ %i.ak, %upb_Arena_Malloc.exit.i.i11 ], [ %i.ae, %upb_Arena_Malloc.exit.thread.i.i8 ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i10, i8 0, i64 %i.z, i1 false)
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise_msg_init) #36, !srcloc !432
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !103
  %i.an = or i8 %i.am, 1
  store i8 %i.an, ptr %i.al, align 1, !tbaa !103
  store i64 %.pre-phi.i9, ptr %i.u, align 1
  br label %grpc_channelz_v2_Promise_Map_mutable_promise.exit

grpc_channelz_v2_Promise_Map_mutable_promise.exit: ; preds = %grpc_channelz_v2_Promise_mutable_map_promise.exit, %bb.d
  %.0.i7 = phi ptr [ %.0.i11.i.i10, %bb.d ], [ %i.w, %grpc_channelz_v2_Promise_mutable_map_promise.exit ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i7, i64 8
  store i32 2, ptr %i.ao, align 4, !tbaa !97
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i7, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.197, i64 45), ptr %i.ap, align 4
  %.sroa.56.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i7, i64 24
  store i64 440, ptr %.sroa.56.0..sroa_idx.i.i.i.i, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.198, i64 45), ptr %i.aq, align 1
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store i64 74, ptr %.sroa.56.0..sroa_idx.i, align 1
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK9grpc_core13OpHandlerImplIZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaRK7grpc_opPT_EUlvE_L12grpc_op_type5EE7ToProtoEP24grpc_channelz_v2_PromiseP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.312, align 1            ; 3 uses
  %4 = alloca %class.anon.312, align 1            ; 3 uses
  %5 = alloca %"class.std::optional.399", align 8 ; 8 uses
  %6 = alloca %class.anon.312, align 1            ; 3 uses
  %7 = alloca %"class.std::optional.399", align 8 ; 9 uses
  %8 = alloca %class.anon.312, align 1            ; 3 uses
  %9 = alloca %"class.std::optional.399", align 8 ; 9 uses
  %10 = alloca %class.anon.312, align 1           ; 3 uses
  %11 = alloca %"class.std::optional.399", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %14 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %15 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %16 = alloca %"class.grpc_core::channelz::PropertyList", align 8 ; 13 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise__Custom_msg_init) #36, !srcloc !432
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !97
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %grpc_channelz_v2_Promise_custom_promise.exit.i, label %grpc_channelz_v2_Promise_custom_promise.exit.thread.i

grpc_channelz_v2_Promise_custom_promise.exit.i:   ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.0.in.then.val.i.i = load i64, ptr %i.d, align 4 ; 2 uses
  %i.e = inttoptr i64 %.0.in.then.val.i.i to ptr
  %i.f = icmp eq i64 %.0.in.then.val.i.i, 0
  br i1 %i.f, label %grpc_channelz_v2_Promise_custom_promise.exit.thread.i, label %grpc_channelz_v2_Promise_mutable_custom_promise.exit

grpc_channelz_v2_Promise_custom_promise.exit.thread.i: ; preds = %grpc_channelz_v2_Promise_custom_promise.exit.i, %bb.a
  %i.g = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__Promise__Custom_msg_init, i64 8), align 8, !tbaa !362
  %i.h = zext i16 %i.g to i64                     ; 5 uses
  %i.i = and i64 %i.h, 7
  %i.j = icmp eq i64 %i.i, 0
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !364
  %i.m = load ptr, ptr %2, align 8, !tbaa !365    ; 4 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o
  %i.q = icmp ult i64 %i.p, %i.h
  br i1 %i.q, label %upb_Arena_Malloc.exit.i.i, label %upb_Arena_Malloc.exit.thread.i.i, !prof !31

upb_Arena_Malloc.exit.thread.i.i:                 ; preds = %grpc_channelz_v2_Promise_custom_promise.exit.thread.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h
  store ptr %i.r, ptr %2, align 8, !tbaa !365
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  br label %bb.b

upb_Arena_Malloc.exit.i.i:                        ; preds = %grpc_channelz_v2_Promise_custom_promise.exit.thread.i
  %i.s = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %2, i64 noundef %i.h) ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %grpc_channelz_v2_Promise_mutable_custom_promise.exit, label %upb_Arena_Malloc.exit.i._crit_edge.i, !prof !431

upb_Arena_Malloc.exit.i._crit_edge.i:             ; preds = %upb_Arena_Malloc.exit.i.i
  %.pre.i = ptrtoint ptr %i.s to i64
  br label %bb.b

bb.b:                                             ; preds = %upb_Arena_Malloc.exit.i._crit_edge.i, %upb_Arena_Malloc.exit.thread.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %upb_Arena_Malloc.exit.i._crit_edge.i ], [ %i.o, %upb_Arena_Malloc.exit.thread.i.i ]
  %.0.i11.i.i = phi ptr [ %i.s, %upb_Arena_Malloc.exit.i._crit_edge.i ], [ %i.m, %upb_Arena_Malloc.exit.thread.i.i ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i, i8 0, i64 %i.h, i1 false)
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise__Custom_msg_init) #36, !srcloc !432
  store i32 1, ptr %i.a, align 4, !tbaa !97
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.pre-phi.i, ptr %i.t, align 4
  br label %grpc_channelz_v2_Promise_mutable_custom_promise.exit

grpc_channelz_v2_Promise_mutable_custom_promise.exit: ; preds = %grpc_channelz_v2_Promise_custom_promise.exit.i, %upb_Arena_Malloc.exit.i.i, %bb.b
  %.0.i = phi ptr [ %.0.i11.i.i, %bb.b ], [ %i.e, %grpc_channelz_v2_Promise_custom_promise.exit.i ], [ null, %upb_Arena_Malloc.exit.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  store i64 14, ptr %13, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @.str.184, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36
  %i.v = tail call noundef ptr @_ZN9grpc_core14GrpcOpTypeNameE12grpc_op_type(i32 noundef 5) ; 3 uses
  %.not.i.i11 = icmp eq ptr %i.v, null
  br i1 %.not.i.i11, label %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit, label %bb.c

bb.c:                                             ; preds = %grpc_channelz_v2_Promise_mutable_custom_promise.exit
  %i.w = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.v) #36
  br label %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit

_ZN4absl12lts_202505128AlphaNumC2EPKc.exit:       ; preds = %grpc_channelz_v2_Promise_mutable_custom_promise.exit, %bb.c
  %.sroa.0.0.i.i = phi i64 [ %i.w, %bb.c ], [ 0, %grpc_channelz_v2_Promise_mutable_custom_promise.exit ]
  store i64 %.sroa.0.0.i.i, ptr %14, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.v, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36
  store i64 1, ptr %15, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr @.str.185, ptr %i.y, align 8
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull align 8 dereferenceable(48) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !135 ; 2 uses
  %i.ab = add i64 %i.aa, 7
  %i.ac = and i64 %i.ab, -8                       ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !364
  %i.af = load ptr, ptr %2, align 8, !tbaa !365   ; 4 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = icmp ult i64 %i.ai, %i.ac
  br i1 %i.aj, label %bb.d, label %bb.e, !prof !31

bb.d:                                             ; preds = %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit
  %i.ak = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %2, i64 noundef %i.ac)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  %.pre.i13 = load i64, ptr %i.z, align 8, !tbaa !135
  br label %bb.f

bb.e:                                             ; preds = %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  store ptr %i.al, ptr %2, align 8, !tbaa !365
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  br label %bb.f

bb.f:                                             ; preds = %.noexc, %bb.e
  %i.am = phi i64 [ %.pre.i13, %.noexc ], [ %i.aa, %bb.e ]
  %.0.i.i = phi ptr [ %i.ak, %.noexc ], [ %i.af, %bb.e ] ; 2 uses
  %i.an = load ptr, ptr %12, align 8, !tbaa !140
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i, ptr align 1 %i.an, i64 %i.am, i1 false)
  %i.ao = load i64, ptr %i.z, align 8, !tbaa !135
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %.0.i.i, ptr %i.ap, align 1
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store i64 %i.ao, ptr %.sroa.56.0..sroa_idx.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #36
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %16, align 8, !tbaa !35
  %i.aq = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  %i.ar = load i32, ptr %0, align 8, !tbaa !173
  switch i32 %i.ar, label %bb.ac [
    i32 0, label %bb.h
    i32 1, label %bb.n
    i32 2, label %bb.s
  ]

bb.g:                                             ; preds = %bb.d
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store i64 9, ptr %11, align 8, !tbaa !111, !alias.scope !1428
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.187, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !126, !alias.scope !1428
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  store i8 0, ptr %i.at, align 8, !tbaa !128, !alias.scope !1428
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 3 uses
  store i8 1, ptr %i.au, align 8, !tbaa !130, !alias.scope !1428
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 5, ptr nonnull @.str.186, ptr noundef nonnull align 8 %11)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.av = load i8, ptr %i.au, align 8, !tbaa !130, !range !109, !noundef !110
  %i.aw = trunc nuw i8 %i.av to i1
  store i8 0, ptr %i.au, align 8, !tbaa !130
  %i.ax = load i8, ptr %i.at, align 8
  %.not.i.i.i.i.i.i.i = icmp ne i8 %i.ax, -1
  %or.cond.not.i.i.i.i = select i1 %i.aw, i1 %.not.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i, label %bb.j, label %_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit, !prof !131

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.k

.noexc.i.i.i.i.i.i:                               ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  br label %_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit

bb.k:                                             ; preds = %bb.j
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #34
  unreachable

bb.l:                                             ; preds = %bb.h
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #36
  br label %.body

_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit: ; preds = %bb.i, %.noexc.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.ac

bb.m:                                             ; preds = %upb_Arena_Malloc.exit.i.i38, %bb.x, %grpc_channelz_v2_Promise_Custom_mutable_properties.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.r, %bb.m, %bb.ab, %bb.w, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.ba, %bb.l ], [ %i.bj, %bb.r ], [ %i.br, %bb.w ], [ %i.bb, %bb.m ], [ %i.ca, %bb.ab ]
  call void @_ZN9grpc_core8channelz12PropertyListD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %16) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  br label %bb.aj

bb.n:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 15, ptr %9, align 8, !tbaa !111, !alias.scope !1429
  %.sroa.4.0..sroa_idx.i.i14 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.188, ptr %.sroa.4.0..sroa_idx.i.i14, align 8, !tbaa !126, !alias.scope !1429
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store i8 0, ptr %i.bc, align 8, !tbaa !128, !alias.scope !1429
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  store i8 1, ptr %i.bd, align 8, !tbaa !130, !alias.scope !1429
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 5, ptr nonnull @.str.186, ptr noundef nonnull align 8 %9)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !130, !range !109, !noundef !110
  %i.bf = trunc nuw i8 %i.be to i1
  store i8 0, ptr %i.bd, align 8, !tbaa !130
  %i.bg = load i8, ptr %i.bc, align 8
  %.not.i.i.i.i.i.i.i15 = icmp ne i8 %i.bg, -1
  %or.cond.not.i.i.i.i16 = select i1 %i.bf, i1 %.not.i.i.i.i.i.i.i15, i1 false
  br i1 %or.cond.not.i.i.i.i16, label %bb.p, label %_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit20, !prof !131

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(48) %9)
          to label %.noexc.i.i.i.i.i.i17 unwind label %bb.q

.noexc.i.i.i.i.i.i17:                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit20

bb.q:                                             ; preds = %bb.p
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #34
  unreachable

bb.r:                                             ; preds = %bb.n
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #36
  br label %.body

_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit20: ; preds = %bb.o, %.noexc.i.i.i.i.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.ac

bb.s:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 7, ptr %7, align 8, !tbaa !111, !alias.scope !1430
  %.sroa.4.0..sroa_idx.i.i21 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.108, ptr %.sroa.4.0..sroa_idx.i.i21, align 8, !tbaa !126, !alias.scope !1430
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store i8 0, ptr %i.bk, align 8, !tbaa !128, !alias.scope !1430
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  store i8 1, ptr %i.bl, align 8, !tbaa !130, !alias.scope !1430
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 5, ptr nonnull @.str.186, ptr noundef nonnull align 8 %7)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !130, !range !109, !noundef !110
  %i.bn = trunc nuw i8 %i.bm to i1
  store i8 0, ptr %i.bl, align 8, !tbaa !130
  %i.bo = load i8, ptr %i.bk, align 8
  %.not.i.i.i.i.i.i.i22 = icmp ne i8 %i.bo, -1
  %or.cond.not.i.i.i.i23 = select i1 %i.bn, i1 %.not.i.i.i.i.i.i.i22, i1 false
  br i1 %or.cond.not.i.i.i.i23, label %bb.u, label %bb.x, !prof !131

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %.noexc.i.i.i.i.i.i24 unwind label %bb.v

.noexc.i.i.i.i.i.i24:                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #34
  unreachable

bb.w:                                             ; preds = %bb.s
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #36
  br label %.body

bb.x:                                             ; preds = %.noexc.i.i.i.i.i.i24, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  invoke void @_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeINS_3MapINS4_6TrySeqIZNS_11CallFilters25PullServerToClientMessageEvEUlvE_JZNS8_25PullServerToClientMessageEvEUlbE_EEEZZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaRK7grpc_opPT_ENUlvE_clEvEUlONS_14filters_detail11NextMessageIXadL_ZNS_9CallState31FinishPullServerToClientMessageEvEEEEE_EEvEEEEvE4WrapB5cxx11ESU_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.399") align 8 %5, ptr nonnull %i.bs)
          to label %.noexc31 unwind label %bb.m

.noexc31:                                         ; preds = %bb.x
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 7, ptr nonnull @.str.108, ptr noundef nonnull align 8 %5)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %.noexc31
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !130, !range !109, !noundef !110
  %i.bv = trunc nuw i8 %i.bu to i1
  store i8 0, ptr %i.bt, align 8, !tbaa !130
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bx = load i8, ptr %i.bw, align 8
  %.not.i.i.i.i.i.i.i28 = icmp ne i8 %i.bx, -1
  %or.cond.not.i.i.i.i29 = select i1 %i.bv, i1 %.not.i.i.i.i.i.i.i28, i1 false
  br i1 %or.cond.not.i.i.i.i29, label %bb.z, label %_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeINS_3MapINS4_6TrySeqIZNS_11CallFilters25PullServerToClientMessageEvEUlvE_JZNS8_25PullServerToClientMessageEvEUlbE_EEEZZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaRK7grpc_opPT_ENUlvE_clEvEUlONS_14filters_detail11NextMessageIXadL_ZNS_9CallState31FinishPullServerToClientMessageEvEEEEE_EEvEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEESI_.exit, !prof !131

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc.i.i.i.i.i.i30 unwind label %bb.aa

.noexc.i.i.i.i.i.i30:                             ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeINS_3MapINS4_6TrySeqIZNS_11CallFilters25PullServerToClientMessageEvEUlvE_JZNS8_25PullServerToClientMessageEvEUlbE_EEEZZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaRK7grpc_opPT_ENUlvE_clEvEUlONS_14filters_detail11NextMessageIXadL_ZNS_9CallState31FinishPullServerToClientMessageEvEEEEE_EEvEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEESI_.exit

bb.aa:                                            ; preds = %bb.z
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #34
  unreachable

bb.ab:                                            ; preds = %.noexc31
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #36
  br label %.body

_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeINS_3MapINS4_6TrySeqIZNS_11CallFilters25PullServerToClientMessageEvEUlvE_JZNS8_25PullServerToClientMessageEvEUlbE_EEEZZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaRK7grpc_opPT_ENUlvE_clEvEUlONS_14filters_detail11NextMessageIXadL_ZNS_9CallState31FinishPullServerToClientMessageEvEEEEE_EEvEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEESI_.exit: ; preds = %bb.y, %.noexc.i.i.i.i.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeINS_3MapINS4_6TrySeqIZNS_11CallFilters25PullServerToClientMessageEvEUlvE_JZNS8_25PullServerToClientMessageEvEUlbE_EEEZZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaRK7grpc_opPT_ENUlvE_clEvEUlONS_14filters_detail11NextMessageIXadL_ZNS_9CallState31FinishPullServerToClientMessageEvEEEEE_EEvEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEESI_.exit, %_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit20, %_ZN9grpc_core8channelz12PropertyList3SetIPKcEERS1_St17basic_string_viewIcSt11char_traitsIcEET_.exit, %bb.f
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__PropertyList_msg_init) #36, !srcloc !432
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 1            ; 2 uses
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = icmp eq i64 %i.cc, 0
  br i1 %i.ce, label %bb.ad, label %grpc_channelz_v2_Promise_Custom_mutable_properties.exit

bb.ad:                                            ; preds = %bb.ac
  %i.cf = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__PropertyList_msg_init, i64 8), align 8, !tbaa !362
  %i.cg = zext i16 %i.cf to i64                   ; 5 uses
  %i.ch = and i64 %i.cg, 7
  %i.ci = icmp eq i64 %i.ch, 0
  call void @llvm.assume(i1 %i.ci)
  %i.cj = load ptr, ptr %i.ad, align 8, !tbaa !364
  %i.ck = load ptr, ptr %2, align 8, !tbaa !365   ; 4 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64               ; 2 uses
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = icmp ult i64 %i.cn, %i.cg
  br i1 %i.co, label %upb_Arena_Malloc.exit.i.i38, label %upb_Arena_Malloc.exit.thread.i.i35, !prof !31

upb_Arena_Malloc.exit.thread.i.i35:               ; preds = %bb.ad
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cg
  store ptr %i.cp, ptr %2, align 8, !tbaa !365
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ck) ]
  br label %bb.ae

upb_Arena_Malloc.exit.i.i38:                      ; preds = %bb.ad
  %i.cq = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %2, i64 noundef %i.cg)
          to label %.noexc42 unwind label %bb.m   ; 3 uses

.noexc42:                                         ; preds = %upb_Arena_Malloc.exit.i.i38
  %.not.i.i39 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i39, label %grpc_channelz_v2_Promise_Custom_mutable_properties.exit, label %upb_Arena_Malloc.exit.i._crit_edge.i40, !prof !431

upb_Arena_Malloc.exit.i._crit_edge.i40:           ; preds = %.noexc42
  %.pre.i41 = ptrtoint ptr %i.cq to i64
  br label %bb.ae

bb.ae:                                            ; preds = %upb_Arena_Malloc.exit.i._crit_edge.i40, %upb_Arena_Malloc.exit.thread.i.i35
  %.pre-phi.i36 = phi i64 [ %.pre.i41, %upb_Arena_Malloc.exit.i._crit_edge.i40 ], [ %i.cm, %upb_Arena_Malloc.exit.thread.i.i35 ]
  %.0.i11.i.i37 = phi ptr [ %i.cq, %upb_Arena_Malloc.exit.i._crit_edge.i40 ], [ %i.ck, %upb_Arena_Malloc.exit.thread.i.i35 ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i37, i8 0, i64 %i.cg, i1 false)
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__PropertyList_msg_init) #36, !srcloc !432
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !103
  %i.ct = or i8 %i.cs, 1
  store i8 %i.ct, ptr %i.cr, align 1, !tbaa !103
  store i64 %.pre-phi.i36, ptr %i.cb, align 1
  br label %grpc_channelz_v2_Promise_Custom_mutable_properties.exit

grpc_channelz_v2_Promise_Custom_mutable_properties.exit: ; preds = %bb.ae, %.noexc42, %bb.ac
  %.0.i34 = phi ptr [ %.0.i11.i.i37, %bb.ae ], [ %i.cd, %bb.ac ], [ null, %.noexc42 ]
  invoke void @_ZN9grpc_core8channelz12PropertyList12FillUpbProtoEP29grpc_channelz_v2_PropertyListP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef %.0.i34, ptr noundef nonnull %2)
          to label %bb.af unwind label %bb.m

bb.af:                                            ; preds = %grpc_channelz_v2_Promise_Custom_mutable_properties.exit
  %i.cu = load ptr, ptr %i.aq, align 8, !tbaa !138 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !139 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cu, %i.cw
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.af, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.dh, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i ], [ %i.cu, %bb.af ] ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !128
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.cy, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i, label %bb.ag, !prof !31

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(33) %i.cz)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.ah

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #34
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.dc = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !140 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !103
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #37
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dh, %i.cw
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.aq, align 8, !tbaa !138
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i, %bb.af
  %i.di = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.cu, %bb.af ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i1.i.i, label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !142
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.di to i64
  %i.dn = sub i64 %i.dl, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dn) #37
  br label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit

_ZN9grpc_core8channelz12PropertyListD2Ev.exit:    ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  %i.do = load ptr, ptr %12, align 8, !tbaa !140  ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN9grpc_core8channelz12PropertyListD2Ev.exit
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !103
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN9grpc_core8channelz12PropertyListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  ret void

bb.aj:                                            ; preds = %.body, %bb.g
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.as, %bb.g ]
  %i.dt = load ptr, ptr %12, align 8, !tbaa !140  ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.aj
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !103
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyIKNS_14promise_detail11PromiseLikeINS_3MapINS4_6TrySeqIZNS_11CallFilters25PullServerToClientMessageEvEUlvE_JZNS8_25PullServerToClientMessageEvEUlbE_EEEZZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaRK7grpc_opPT_ENUlvE_clEvEUlONS_14filters_detail11NextMessageIXadL_ZNS_9CallState31FinishPullServerToClientMessageEvEEEEE_EEvEEEEvE4WrapB5cxx11ESU_(ptr dead_on_unwind noalias writable sret(%"class.std::optional.399") align 8 %0, ptr %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.312, align 1            ; 3 uses
  %3 = alloca %"class.std::allocator.484", align 1 ; 3 uses
  %4 = alloca %"class.std::variant", align 8      ; 6 uses
  %5 = alloca %"class.std::shared_ptr.481", align 16 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store ptr %1, ptr %i.a, align 8, !tbaa !514
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36, !noalias !1433
end_hunk_8
begin_hunk_9_@_ZNK9grpc_core14WaitForCqEndOp7ToProtoEP24grpc_channelz_v2_PromiseP9upb_Arena:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !430
  %.not.i.i11 = icmp eq i8 %i.ag, -1
  br i1 %.not.i.i11, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN9grpc_core24CopyStdStringToUpbStringEPKcP9upb_Arena.exit
  %i.ah = call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ah, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @.str.216, ptr %i.ai, align 8, !tbaa !390
  invoke void @__cxa_throw(ptr nonnull %i.ah, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #40
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZN9grpc_core24CopyStdStringToUpbStringEPKcP9upb_Arena.exit
  invoke void @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEEZNK9grpc_core14WaitForCqEndOp7ToProtoEP24grpc_channelz_v2_PromiseP9upb_ArenaEUlRKT_E_JRKSt7variantIJNS5_10NotStartedENS5_7StartedENS5_7InvalidEEEEEDcOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(65) %0)
          to label %_ZSt5visitIZNK9grpc_core14WaitForCqEndOp7ToProtoEP24grpc_channelz_v2_PromiseP9upb_ArenaEUlRKT_E_JRKSt7variantIJNS1_10NotStartedENS1_7StartedENS1_7InvalidEEEEENSt13invoke_resultIS6_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISJ_EEEEE4typeEE4typeEOSS_EEEE4typeEOS6_DpOSJ_.exit unwind label %bb.m

_ZSt5visitIZNK9grpc_core14WaitForCqEndOp7ToProtoEP24grpc_channelz_v2_PromiseP9upb_ArenaEUlRKT_E_JRKSt7variantIJNS1_10NotStartedENS1_7StartedENS1_7InvalidEEEEENSt13invoke_resultIS6_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISJ_EEEEE4typeEE4typeEOSS_EEEE4typeEOS6_DpOSJ_.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__PropertyList_msg_init) #36, !srcloc !432
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 1            ; 2 uses
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = icmp eq i64 %i.ak, 0
  br i1 %i.am, label %bb.g, label %grpc_channelz_v2_Promise_Custom_mutable_properties.exit

bb.g:                                             ; preds = %_ZSt5visitIZNK9grpc_core14WaitForCqEndOp7ToProtoEP24grpc_channelz_v2_PromiseP9upb_ArenaEUlRKT_E_JRKSt7variantIJNS1_10NotStartedENS1_7StartedENS1_7InvalidEEEEENSt13invoke_resultIS6_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISJ_EEEEE4typeEE4typeEOSS_EEEE4typeEOS6_DpOSJ_.exit
  %i.an = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__PropertyList_msg_init, i64 8), align 8, !tbaa !362
  %i.ao = zext i16 %i.an to i64                   ; 5 uses
  %i.ap = and i64 %i.ao, 7
  %i.aq = icmp eq i64 %i.ap, 0
  call void @llvm.assume(i1 %i.aq)
  %i.ar = load ptr, ptr %i.u, align 8, !tbaa !364
  %i.as = load ptr, ptr %2, align 8, !tbaa !365   ; 4 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.av = sub i64 %i.at, %i.au
  %i.aw = icmp ult i64 %i.av, %i.ao
  br i1 %i.aw, label %upb_Arena_Malloc.exit.i.i17, label %upb_Arena_Malloc.exit.thread.i.i14, !prof !31

upb_Arena_Malloc.exit.thread.i.i14:               ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ao
  store ptr %i.ax, ptr %2, align 8, !tbaa !365
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  br label %bb.h

upb_Arena_Malloc.exit.i.i17:                      ; preds = %bb.g
  %i.ay = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %2, i64 noundef %i.ao)
          to label %.noexc21 unwind label %bb.n   ; 3 uses

.noexc21:                                         ; preds = %upb_Arena_Malloc.exit.i.i17
  %.not.i.i18 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i18, label %grpc_channelz_v2_Promise_Custom_mutable_properties.exit, label %upb_Arena_Malloc.exit.i._crit_edge.i19, !prof !431

upb_Arena_Malloc.exit.i._crit_edge.i19:           ; preds = %.noexc21
  %.pre.i20 = ptrtoint ptr %i.ay to i64
  br label %bb.h

bb.h:                                             ; preds = %upb_Arena_Malloc.exit.i._crit_edge.i19, %upb_Arena_Malloc.exit.thread.i.i14
  %.pre-phi.i15 = phi i64 [ %.pre.i20, %upb_Arena_Malloc.exit.i._crit_edge.i19 ], [ %i.au, %upb_Arena_Malloc.exit.thread.i.i14 ]
  %.0.i11.i.i16 = phi ptr [ %i.ay, %upb_Arena_Malloc.exit.i._crit_edge.i19 ], [ %i.as, %upb_Arena_Malloc.exit.thread.i.i14 ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i16, i8 0, i64 %i.ao, i1 false)
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__PropertyList_msg_init) #36, !srcloc !432
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !103
  %i.bb = or i8 %i.ba, 1
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !103
  store i64 %.pre-phi.i15, ptr %i.aj, align 1
  br label %grpc_channelz_v2_Promise_Custom_mutable_properties.exit

grpc_channelz_v2_Promise_Custom_mutable_properties.exit: ; preds = %bb.h, %.noexc21, %_ZSt5visitIZNK9grpc_core14WaitForCqEndOp7ToProtoEP24grpc_channelz_v2_PromiseP9upb_ArenaEUlRKT_E_JRKSt7variantIJNS1_10NotStartedENS1_7StartedENS1_7InvalidEEEEENSt13invoke_resultIS6_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISJ_EEEEE4typeEE4typeEOSS_EEEE4typeEOS6_DpOSJ_.exit
  %.0.i13 = phi ptr [ %.0.i11.i.i16, %bb.h ], [ %i.al, %_ZSt5visitIZNK9grpc_core14WaitForCqEndOp7ToProtoEP24grpc_channelz_v2_PromiseP9upb_ArenaEUlRKT_E_JRKSt7variantIJNS1_10NotStartedENS1_7StartedENS1_7InvalidEEEEENSt13invoke_resultIS6_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISJ_EEEEE4typeEE4typeEOSS_EEEE4typeEOS6_DpOSJ_.exit ], [ null, %.noexc21 ]
  invoke void @_ZN9grpc_core8channelz12PropertyList12FillUpbProtoEP29grpc_channelz_v2_PropertyListP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %.0.i13, ptr noundef nonnull %2)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %grpc_channelz_v2_Promise_Custom_mutable_properties.exit
  %i.bc = load ptr, ptr %i.ae, align 8, !tbaa !138 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !139 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bc, %i.be
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bp, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i ], [ %i.bc, %bb.i ] ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !128
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.bg, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i, label %bb.j, !prof !31

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(33) %i.bh)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.k

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #34
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.bk = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !140 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !103
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #37
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bp, %i.be
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.ae, align 8, !tbaa !138
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i, %bb.i
  %i.bq = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.bc, %bb.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i1.i.i, label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !142
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bv) #37
  br label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit

_ZN9grpc_core8channelz12PropertyListD2Ev.exit:    ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret void

bb.m:                                             ; preds = %bb.f, %bb.e
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.o

bb.n:                                             ; preds = %upb_Arena_Malloc.exit.i.i17, %grpc_channelz_v2_Promise_Custom_mutable_properties.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.n ], [ %i.bw, %bb.m ]
  call void @_ZN9grpc_core8channelz12PropertyListD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEEZNK9grpc_core14WaitForCqEndOp7ToProtoEP24grpc_channelz_v2_PromiseP9upb_ArenaEUlRKT_E_JRKSt7variantIJNS5_10NotStartedENS5_7StartedENS5_7InvalidEEEEEDcOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(65) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.312, align 1            ; 3 uses
  %3 = alloca %"class.std::optional.399", align 8 ; 9 uses
  %4 = alloca %class.anon.312, align 1            ; 3 uses
  %5 = alloca %"class.std::optional.399", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !430
  switch i8 %i.b, label %bb.m [
    i8 0, label %bb.b
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !517, !nonnull !110, !align !293
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 11, ptr %5, align 8, !tbaa !111, !alias.scope !1439
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.217, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !126, !alias.scope !1439
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store i8 0, ptr %i.d, align 8, !tbaa !128, !alias.scope !1439
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  store i8 1, ptr %i.e, align 8, !tbaa !130, !alias.scope !1439
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 5, ptr nonnull @.str.186, ptr noundef nonnull align 8 %5)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.e, align 8, !tbaa !130, !range !109, !noundef !110
  %i.g = trunc nuw i8 %i.f to i1
  store i8 0, ptr %i.e, align 8, !tbaa !130
  %i.h = load i8, ptr %i.d, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ne i8 %i.h, -1
  %or.cond.not.i.i.i.i.i.i.i.i = select i1 %i.g, i1 %.not.i.i.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i.i.i.i, label %bb.d, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK9grpc_core14WaitForCqEndOp7ToProtoEP24grpc_channelz_v2_PromiseP9upb_ArenaEUlRKT_E_RKSt7variantIJNS6_10NotStartedENS6_7StartedENS6_7InvalidEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SM_.exit, !prof !131

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %bb.e

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK9grpc_core14WaitForCqEndOp7ToProtoEP24grpc_channelz_v2_PromiseP9upb_ArenaEUlRKT_E_RKSt7variantIJNS6_10NotStartedENS6_7StartedENS6_7InvalidEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SM_.exit

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #34
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.f
  %.sink = phi ptr [ %3, %bb.l ], [ %5, %bb.f ]
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.l ], [ %i.k, %bb.f ]
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.sink) #36
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK9grpc_core14WaitForCqEndOp7ToProtoEP24grpc_channelz_v2_PromiseP9upb_ArenaEUlRKT_E_RKSt7variantIJNS6_10NotStartedENS6_7StartedENS6_7InvalidEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SM_.exit: ; preds = %bb.c, %.noexc.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  tail call void @_ZSt13__invoke_implIvZNK9grpc_core14WaitForCqEndOp7ToProtoEP24grpc_channelz_v2_PromiseP9upb_ArenaEUlRKT_E_JRKNS1_7StartedEEES6_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(65) %1)
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !517, !nonnull !110, !align !293
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 7, ptr %3, align 8, !tbaa !111, !alias.scope !1440
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.220, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i8, align 8, !tbaa !126, !alias.scope !1440
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i8 0, ptr %i.m, align 8, !tbaa !128, !alias.scope !1440
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  store i8 1, ptr %i.n, align 8, !tbaa !130, !alias.scope !1440
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 5, ptr nonnull @.str.186, ptr noundef nonnull align 8 %3)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.o = load i8, ptr %i.n, align 8, !tbaa !130, !range !109, !noundef !110
  %i.p = trunc nuw i8 %i.o to i1
  store i8 0, ptr %i.n, align 8, !tbaa !130
  %i.q = load i8, ptr %i.m, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i9 = icmp ne i8 %i.q, -1
  %or.cond.not.i.i.i.i.i.i.i.i10 = select i1 %i.p, i1 %.not.i.i.i.i.i.i.i.i.i.i.i9, i1 false
  br i1 %or.cond.not.i.i.i.i.i.i.i.i10, label %bb.j, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK9grpc_core14WaitForCqEndOp7ToProtoEP24grpc_channelz_v2_PromiseP9upb_ArenaEUlRKT_E_RKSt7variantIJNS6_10NotStartedENS6_7StartedENS6_7InvalidEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESF_SM_.exit, !prof !131

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i11 unwind label %bb.k

.noexc.i.i.i.i.i.i.i.i.i.i11:                     ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK9grpc_core14WaitForCqEndOp7ToProtoEP24grpc_channelz_v2_PromiseP9upb_ArenaEUlRKT_E_RKSt7variantIJNS6_10NotStartedENS6_7StartedENS6_7InvalidEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESF_SM_.exit

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #34
  unreachable

bb.l:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK9grpc_core14WaitForCqEndOp7ToProtoEP24grpc_channelz_v2_PromiseP9upb_ArenaEUlRKT_E_RKSt7variantIJNS6_10NotStartedENS6_7StartedENS6_7InvalidEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESF_SM_.exit: ; preds = %bb.i, %.noexc.i.i.i.i.i.i.i.i.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  unreachable

bb.n:                                             ; preds = %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK9grpc_core14WaitForCqEndOp7ToProtoEP24grpc_channelz_v2_PromiseP9upb_ArenaEUlRKT_E_RKSt7variantIJNS6_10NotStartedENS6_7StartedENS6_7InvalidEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESF_SM_.exit, %bb.g, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK9grpc_core14WaitForCqEndOp7ToProtoEP24grpc_channelz_v2_PromiseP9upb_ArenaEUlRKT_E_RKSt7variantIJNS6_10NotStartedENS6_7StartedENS6_7InvalidEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SM_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__invoke_implIvZNK9grpc_core14WaitForCqEndOp7ToProtoEP24grpc_channelz_v2_PromiseP9upb_ArenaEUlRKT_E_JRKNS1_7StartedEEES6_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(57) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.312, align 1            ; 3 uses
  %3 = alloca %"class.std::optional.399", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !517, !nonnull !110, !align !293
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 7, ptr %3, align 8, !tbaa !111, !alias.scope !1443
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.218, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !126, !alias.scope !1443
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i8 0, ptr %i.b, align 8, !tbaa !128, !alias.scope !1443
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  store i8 1, ptr %i.c, align 8, !tbaa !130, !alias.scope !1443
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 5, ptr nonnull @.str.186, ptr noundef nonnull align 8 %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.c, align 8, !tbaa !130, !range !109, !noundef !110
  %i.e = trunc nuw i8 %i.d to i1
  store i8 0, ptr %i.c, align 8, !tbaa !130
  %i.f = load i8, ptr %i.b, align 8
  %.not.i.i.i.i.i.i.i.i = icmp ne i8 %i.f, -1
  %or.cond.not.i.i.i.i.i = select i1 %i.e, i1 %.not.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i, label %bb.c, label %_ZZNK9grpc_core14WaitForCqEndOp7ToProtoEP24grpc_channelz_v2_PromiseP9upb_ArenaENKUlRKT_E_clINS0_7StartedEEEDaS7_.exit, !prof !131

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.d

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %_ZZNK9grpc_core14WaitForCqEndOp7ToProtoEP24grpc_channelz_v2_PromiseP9upb_ArenaENKUlRKT_E_clINS0_7StartedEEEDaS7_.exit

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #34
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #36
  resume { ptr, i32 } %i.i

_ZZNK9grpc_core14WaitForCqEndOp7ToProtoEP24grpc_channelz_v2_PromiseP9upb_ArenaENKUlRKT_E_clINS0_7StartedEEEDaS7_.exit: ; preds = %bb.b, %.noexc.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.j = load ptr, ptr %0, align 8, !tbaa !517, !nonnull !110, !align !293
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load atomic i8, ptr %i.k monotonic, align 8, !range !109, !noundef !110
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN9grpc_core8channelz12PropertyList3SetIbEERS1_St17basic_string_viewIcSt11char_traitsIcEET_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 4, ptr nonnull @.str.219, i1 noundef zeroext %i.m) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2025051222internal_any_invocable13RemoteInvokerILb0EvRZN9grpc_core10ClientCall22ScheduleCommittedBatchIZNS3_15OnCancelFactoryIZNS3_13FallibleBatchINS3_3MapINS3_14promise_detail5AllOkINS3_10StatusFlagEJNS9_6TrySeqINS3_13OpHandlerImplIZZNS4_11CommitBatchEPK7grpc_opmPvbENK3$_0clERSF_EUlvE_L12grpc_op_type1EEEJNSD_IZZNS4_11CommitBatchESG_mSH_bENK3$_1clESJ_EUlvE_LSL_2EEEEEENSC_INSD_IZZNS4_11CommitBatchESG_mSH_bENK3$_3clESJ_EUlvE_LSL_4EEEJNSD_IZNS3_15MessageReceiver11MakeBatchOpINS3_13CallInitiatorEEEDaSJ_PT_EUlvE_LSL_5EEEEEEEEEZNS4_11CommitBatchESG_mSH_bE3$_4EEEEDaOSX_bSH_P21grpc_completion_queueEUlvE_ZNS7_IS14_EEDaS15_bSH_S17_EUlvE0_EEDaS15_OT0_EUlvE_EEvS15_EUlvE_JEEES1A_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE"(ptr nofree noundef readonly captures(none) %0) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !103   ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !239
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !114
  %i.e = tail call noalias noundef nonnull dereferenceable(336) ptr @_Znwm(i64 noundef 336) #35 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !242
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN9grpc_core5Party15ParticipantImplIZNS_15OnCancelFactoryIZNS_13FallibleBatchINS_3MapINS_14promise_detail5AllOkINS_10StatusFlagEJNS5_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERSC_EUlvE_L12grpc_op_type1EEEJNS9_IZZNSA_11CommitBatchESD_mSE_bENK3$_1clESG_EUlvE_LSI_2EEEEEENS8_INS9_IZZNSA_11CommitBatchESD_mSE_bENK3$_3clESG_EUlvE_LSI_4EEEJNS9_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSG_PT_EUlvE_LSI_5EEEEEEEEEZNSA_11CommitBatchESD_mSE_bE3$_4EEEEDaOSU_bSE_P21grpc_completion_queueEUlvE_ZNS3_IS11_EEDaS12_bSE_S14_EUlvE0_EEDaS12_OT0_EUlvE_ZNS_9CallSpine15SpawnInfallibleIS19_EEvSt17basic_string_viewIcSt11char_traitsIcEES12_EUlNS_5EmptyEE_EE", i64 16), ptr %i.e, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 328
  store i8 0, ptr %i.g, align 8, !tbaa !244
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.h, ptr noundef nonnull align 8 dereferenceable(312) %i.d, i64 24, i1 false), !tbaa.struct !224
  %i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core14promise_detail18ThreadLocalContextINS_5ArenaEE8current_E)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !194  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core10ClientCall22ScheduleCommittedBatchIZNS3_15OnCancelFactoryIZNS3_13FallibleBatchINS3_3MapINS3_14promise_detail5AllOkINS3_10StatusFlagEJNS9_6TrySeqINS3_13OpHandlerImplIZZNS4_11CommitBatchEPK7grpc_opmPvbENK3$_0clERSF_EUlvE_L12grpc_op_type1EEEJNSD_IZZNS4_11CommitBatchESG_mSH_bENK3$_1clESJ_EUlvE_LSL_2EEEEEENSC_INSD_IZZNS4_11CommitBatchESG_mSH_bENK3$_3clESJ_EUlvE_LSL_4EEEJNSD_IZNS3_15MessageReceiver11MakeBatchOpINS3_13CallInitiatorEEEDaSJ_PT_EUlvE_LSL_5EEEEEEEEEZNS4_11CommitBatchESG_mSH_bE3$_4EEEEDaOSX_bSH_P21grpc_completion_queueEUlvE_ZNS7_IS14_EEDaS15_bSH_S17_EUlvE0_EEDaS15_OT0_EUlvE_EEvS15_EUlvE_JEEESX_S1B_DpOT1_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = atomicrmw add ptr %i.j, i64 1 monotonic, align 8, !noalias !1446 ; 0 uses
  br label %"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core10ClientCall22ScheduleCommittedBatchIZNS3_15OnCancelFactoryIZNS3_13FallibleBatchINS3_3MapINS3_14promise_detail5AllOkINS3_10StatusFlagEJNS9_6TrySeqINS3_13OpHandlerImplIZZNS4_11CommitBatchEPK7grpc_opmPvbENK3$_0clERSF_EUlvE_L12grpc_op_type1EEEJNSD_IZZNS4_11CommitBatchESG_mSH_bENK3$_1clESJ_EUlvE_LSL_2EEEEEENSC_INSD_IZZNS4_11CommitBatchESG_mSH_bENK3$_3clESJ_EUlvE_LSL_4EEEJNSD_IZNS3_15MessageReceiver11MakeBatchOpINS3_13CallInitiatorEEEDaSJ_PT_EUlvE_LSL_5EEEEEEEEEZNS4_11CommitBatchESG_mSH_bE3$_4EEEEDaOSX_bSH_P21grpc_completion_queueEUlvE_ZNS7_IS14_EEDaS15_bSH_S17_EUlvE0_EEDaS15_OT0_EUlvE_EEvS15_EUlvE_JEEESX_S1B_DpOT1_.exit"

"_ZN4absl12lts_2025051222internal_any_invocable7InvokeRIvRZN9grpc_core10ClientCall22ScheduleCommittedBatchIZNS3_15OnCancelFactoryIZNS3_13FallibleBatchINS3_3MapINS3_14promise_detail5AllOkINS3_10StatusFlagEJNS9_6TrySeqINS3_13OpHandlerImplIZZNS4_11CommitBatchEPK7grpc_opmPvbENK3$_0clERSF_EUlvE_L12grpc_op_type1EEEJNSD_IZZNS4_11CommitBatchESG_mSH_bENK3$_1clESJ_EUlvE_LSL_2EEEEEENSC_INSD_IZZNS4_11CommitBatchESG_mSH_bENK3$_3clESJ_EUlvE_LSL_4EEEJNSD_IZNS3_15MessageReceiver11MakeBatchOpINS3_13CallInitiatorEEEDaSJ_PT_EUlvE_LSL_5EEEEEEEEEZNS4_11CommitBatchESG_mSH_bE3$_4EEEEDaOSX_bSH_P21grpc_completion_queueEUlvE_ZNS7_IS14_EEDaS15_bSH_S17_EUlvE0_EEDaS15_OT0_EUlvE_EEvS15_EUlvE_JEEESX_S1B_DpOT1_.exit": ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.j, ptr %i.l, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !236, !range !109, !noundef !110
  store i8 %i.o, ptr %i.m, align 8, !tbaa !236
  store i8 1, ptr %i.n, align 8, !tbaa !236
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  tail call fastcc void @"_ZN9grpc_core3MapINS_14promise_detail5AllOkINS_10StatusFlagEJNS1_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS8_EUlvE_L12grpc_op_type1EEEJNS5_IZZNS6_11CommitBatchES9_mSA_bENK3$_1clESC_EUlvE_LSE_2EEEEEENS4_INS5_IZZNS6_11CommitBatchES9_mSA_bENK3$_3clESC_EUlvE_LSE_4EEEJNS5_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSC_PT_EUlvE_LSE_5EEEEEEEEEZNS6_11CommitBatchES9_mSA_bE3$_4EC2EOSX_"(ptr noundef nonnull align 8 dereferenceable(272) %i.p, ptr noundef nonnull align 8 dereferenceable(272) %i.q) #36
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  tail call void @_ZN9grpc_core5Party24MaybeAsyncAddParticipantEPNS0_11ParticipantE(ptr noundef nonnull align 16 dereferenceable(416) %.val.i.i.i.i.i, ptr noundef nonnull %i.e)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4absl12lts_2025051222internal_any_invocable23RemoteManagerNontrivialIZN9grpc_core10ClientCall22ScheduleCommittedBatchIZNS3_15OnCancelFactoryIZNS3_13FallibleBatchINS3_3MapINS3_14promise_detail5AllOkINS3_10StatusFlagEJNS9_6TrySeqINS3_13OpHandlerImplIZZNS4_11CommitBatchEPK7grpc_opmPvbENK3$_0clERSF_EUlvE_L12grpc_op_type1EEEJNSD_IZZNS4_11CommitBatchESG_mSH_bENK3$_1clESJ_EUlvE_LSL_2EEEEEENSC_INSD_IZZNS4_11CommitBatchESG_mSH_bENK3$_3clESJ_EUlvE_LSL_4EEEJNSD_IZNS3_15MessageReceiver11MakeBatchOpINS3_13CallInitiatorEEEDaSJ_PT_EUlvE_LSL_5EEEEEEEEEZNS4_11CommitBatchESG_mSH_bE3$_4EEEEDaOSX_bSH_P21grpc_completion_queueEUlvE_ZNS7_IS14_EEDaS15_bSH_S17_EUlvE0_EEDaS15_OT0_EUlvE_EEvS15_EUlvE_EEvNS1_14FunctionToCallEPNS1_15TypeErasedStateES1G_"(i1 noundef zeroext %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #3 {
bb.a:
  %i.a = load ptr, ptr %1, align 16, !tbaa !103   ; 4 uses
  br i1 %0, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %2, align 16, !tbaa !103
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call fastcc void @"_ZZN9grpc_core15OnCancelFactoryIZNS_13FallibleBatchINS_3MapINS_14promise_detail5AllOkINS_10StatusFlagEJNS3_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERSA_EUlvE_L12grpc_op_type1EEEJNS7_IZZNS8_11CommitBatchESB_mSC_bENK3$_1clESE_EUlvE_LSG_2EEEEEENS6_INS7_IZZNS8_11CommitBatchESB_mSC_bENK3$_3clESE_EUlvE_LSG_4EEEJNS7_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSE_PT_EUlvE_LSG_5EEEEEEEEEZNS8_11CommitBatchESB_mSC_bE3$_4EEEEDaOSS_bSC_P21grpc_completion_queueEUlvE_ZNS1_ISZ_EEDaS10_bSC_S12_EUlvE0_EEDaS10_OT0_ENUlvE_D2Ev"(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %i.c) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 320) #37
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZN9grpc_core5Party15ParticipantImplIZNS_15OnCancelFactoryIZNS_13FallibleBatchINS_3MapINS_14promise_detail5AllOkINS_10StatusFlagEJNS5_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERSC_EUlvE_L12grpc_op_type1EEEJNS9_IZZNSA_11CommitBatchESD_mSE_bENK3$_1clESG_EUlvE_LSI_2EEEEEENS8_INS9_IZZNSA_11CommitBatchESD_mSE_bENK3$_3clESG_EUlvE_LSI_4EEEJNS9_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSG_PT_EUlvE_LSI_5EEEEEEEEEZNSA_11CommitBatchESD_mSE_bE3$_4EEEEDaOSU_bSE_P21grpc_completion_queueEUlvE_ZNS3_IS11_EEDaS12_bSE_S14_EUlvE0_EEDaS12_OT0_EUlvE_ZNS_9CallSpine15SpawnInfallibleIS19_EEvSt17basic_string_viewIcSt11char_traitsIcEES12_EUlNS_5EmptyEE_E22PollParticipantPromiseEv"(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %"class.grpc_core::Poll.627", align 1 ; 7 uses
  %2 = alloca %"class.grpc_core::promise_detail::PromiseLike.182", align 8 ; 13 uses
  %3 = alloca %"class.grpc_core::Poll.627", align 1 ; 6 uses
  %4 = alloca %"class.grpc_core::Poll.627", align 1 ; 7 uses
  %5 = alloca %"class.grpc_core::Poll.627", align 1 ; 6 uses
  %6 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %7 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.grpc_core::promise_detail::Seq.753", align 8 ; 8 uses
  %10 = alloca %"class.grpc_core::promise_detail::PromiseLike.751", align 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !244, !range !109, !noundef !110
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1467)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.g, align 8, !tbaa !236, !noalias !1467
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1468)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36, !noalias !1469
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.k = load i8, ptr %i.j, align 8, !tbaa !232, !range !109, !noalias !1469, !noundef !110
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 272 ; 2 uses
  store i8 0, ptr %i.l, align 8, !tbaa !519, !noalias !1469
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 248 ; 2 uses
  %.sroa.52.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 256
  %i.n = load <2 x ptr>, ptr %i.i, align 8, !tbaa !119, !noalias !1469
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !233, !noalias !1469
  call fastcc void @"_ZN9grpc_core3MapINS_14promise_detail5AllOkINS_10StatusFlagEJNS1_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS8_EUlvE_L12grpc_op_type1EEEJNS5_IZZNS6_11CommitBatchES9_mSA_bENK3$_1clESC_EUlvE_LSE_2EEEEEENS4_INS5_IZZNS6_11CommitBatchES9_mSA_bENK3$_3clESC_EUlvE_LSE_4EEEJNS5_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSC_PT_EUlvE_LSE_5EEEEEEEEEZNS6_11CommitBatchES9_mSA_bE3$_4EC2EOSX_"(ptr noundef nonnull align 8 dereferenceable(280) %9, ptr noundef nonnull align 8 dereferenceable(272) %i.h) #36, !noalias !1469
  store i8 %i.k, ptr %i.m, align 8, !tbaa !39, !noalias !1469
  store <2 x ptr> %i.n, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !tbaa !119, !noalias !1469
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1470)
  store ptr %i.o, ptr %10, align 8, !tbaa !1473, !alias.scope !1474
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 280 ; 2 uses
  %i.r = load i8, ptr %i.l, align 8, !tbaa !519, !noalias !1474
  store i8 %i.r, ptr %i.q, align 8, !tbaa !519, !alias.scope !1474
  call fastcc void @"_ZN9grpc_core3MapINS_14promise_detail5AllOkINS_10StatusFlagEJNS1_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS8_EUlvE_L12grpc_op_type1EEEJNS5_IZZNS6_11CommitBatchES9_mSA_bENK3$_1clESC_EUlvE_LSE_2EEEEEENS4_INS5_IZZNS6_11CommitBatchES9_mSA_bENK3$_3clESC_EUlvE_LSE_4EEEJNS5_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSC_PT_EUlvE_LSE_5EEEEEEEEEZNS6_11CommitBatchES9_mSA_bE3$_4EC2EOSX_"(ptr noundef nonnull align 8 dereferenceable(280) %i.p, ptr noundef nonnull align 8 dereferenceable(280) %9) #36
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 256 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !tbaa.struct !422
  call fastcc void @"_ZN9grpc_core14promise_detail3SeqINS_3MapINS0_5AllOkINS_10StatusFlagEJNS0_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS9_EUlvE_L12grpc_op_type1EEEJNS6_IZZNS7_11CommitBatchESA_mSB_bENK3$_1clESD_EUlvE_LSF_2EEEEEENS5_INS6_IZZNS7_11CommitBatchESA_mSB_bENK3$_3clESD_EUlvE_LSF_4EEEJNS6_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSD_PT_EUlvE_LSF_5EEEEEEEEEZNS7_11CommitBatchESA_mSB_bE3$_4EEJZZNS_13FallibleBatchISY_EEDaOSR_bSB_P21grpc_completion_queueENUlvE_clEvEUlS4_E_EED2Ev"(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %9) #36, !noalias !1469
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36, !noalias !1469
  call fastcc void @"_ZZN9grpc_core15OnCancelFactoryIZNS_13FallibleBatchINS_3MapINS_14promise_detail5AllOkINS_10StatusFlagEJNS3_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERSA_EUlvE_L12grpc_op_type1EEEJNS7_IZZNS8_11CommitBatchESB_mSC_bENK3$_1clESE_EUlvE_LSG_2EEEEEENS6_INS7_IZZNS8_11CommitBatchESB_mSC_bENK3$_3clESE_EUlvE_LSG_4EEEJNS7_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSE_PT_EUlvE_LSG_5EEEEEEEEEZNS8_11CommitBatchESB_mSC_bE3$_4EEEEDaOSS_bSC_P21grpc_completion_queueEUlvE_ZNS1_ISZ_EEDaS10_bSC_S12_EUlvE0_EEDaS10_OT0_ENUlvE_D2Ev"(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %i.f) #36
  %i.t = load ptr, ptr %10, align 8, !tbaa !1473
  store ptr %i.t, ptr %i.f, align 8, !tbaa !1473
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.w = load i8, ptr %i.q, align 8, !tbaa !519
  store i8 %i.w, ptr %i.v, align 8, !tbaa !519
  call fastcc void @"_ZN9grpc_core3MapINS_14promise_detail5AllOkINS_10StatusFlagEJNS1_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS8_EUlvE_L12grpc_op_type1EEEJNS5_IZZNS6_11CommitBatchES9_mSA_bENK3$_1clESC_EUlvE_LSE_2EEEEEENS4_INS5_IZZNS6_11CommitBatchES9_mSA_bENK3$_3clESC_EUlvE_LSE_4EEEJNS5_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSC_PT_EUlvE_LSE_5EEEEEEEEEZNS6_11CommitBatchES9_mSA_bE3$_4EC2EOSX_"(ptr noundef nonnull align 8 dereferenceable(280) %i.u, ptr noundef nonnull align 8 dereferenceable(280) %i.p) #36
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !tbaa.struct !422
  store i8 1, ptr %i.c, align 8, !tbaa !244
  call fastcc void @"_ZN9grpc_core14promise_detail3SeqINS_3MapINS0_5AllOkINS_10StatusFlagEJNS0_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERS9_EUlvE_L12grpc_op_type1EEEJNS6_IZZNS7_11CommitBatchESA_mSB_bENK3$_1clESD_EUlvE_LSF_2EEEEEENS5_INS6_IZZNS7_11CommitBatchESA_mSB_bENK3$_3clESD_EUlvE_LSF_4EEEJNS6_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSD_PT_EUlvE_LSF_5EEEEEEEEEZNS7_11CommitBatchESA_mSB_bE3$_4EEJZZNS_13FallibleBatchISY_EEDaOSR_bSB_P21grpc_completion_queueENUlvE_clEvEUlS4_E_EED2Ev"(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.p) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core10call_traceE, i64 8) monotonic, align 8, !range !109, !noundef !110
  %i.aa = trunc nuw i8 %i.z to i1
  %.sink4.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %8, i64 20
  %.sink4.i.sroa.gep45.i = getelementptr inbounds nuw i8, ptr %8, i64 23
  br i1 %i.aa, label %bb.d, label %.critedge28.i, !prof !31

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.30, i32 noundef 484) #38
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 11, ptr nonnull @.str.139)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i unwind label %bb.aw

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i: ; preds = %bb.d
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !1473
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !119
  %i.ac = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPvEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.e unwind label %bb.aw

bb.e:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac)
          to label %.critedge.i unwind label %bb.aw

.critedge.i:                                      ; preds = %bb.e
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %.critedge28.i

.critedge28.i:                                    ; preds = %.critedge.i, %bb.c
end_hunk_9
begin_hunk_10_@"_ZN9grpc_core5Party15ParticipantImplIZNS_15OnCancelFactoryIZNS_13FallibleBatchINS_3MapINS_14promise_detail5AllOkINS_10StatusFlagEJNS5_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERSC_EUlvE_L12grpc_op_type1EEEJNS9_IZZNSA_11CommitBatchESD_mSE_bENK3$_1clESG_EUlvE_LSI_2EEEEEENS8_INS9_IZZNSA_11CommitBatchESD_mSE_bENK3$_3clESG_EUlvE_LSI_4EEEJNS9_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSG_PT_EUlvE_LSI_5EEEEEEEEEZNSA_11CommitBatchESD_mSE_bE3$_4EEEEDaOSU_bSE_P21grpc_completion_queueEUlvE_ZNS3_IS11_EEDaS12_bSE_S14_EUlvE0_EEDaS12_OT0_EUlvE_ZNS_9CallSpine15SpawnInfallibleIS19_EEvSt17basic_string_viewIcSt11char_traitsIcEES12_EUlNS_5EmptyEE_E18ChannelzPropertiesEv":bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bn
  store ptr %i.bw, ptr %i.ab, align 8, !tbaa !365, !noalias !1495
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
  br label %bb.h

upb_Arena_Malloc.exit.i.i23.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %grpc_channelz_v2_Promise_SeqStep_new.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bx = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.ab, i64 noundef %i.bn)
          to label %.noexc13.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit19.i.i.i.i.i.i.i, !noalias !1495 ; 2 uses

.noexc13.i.i.i.i.i.i.i:                           ; preds = %upb_Arena_Malloc.exit.i.i23.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i24.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i24.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %grpc_channelz_v2_Promise_SeqStep_new.exit.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.h, !prof !431

bb.h:                                             ; preds = %.noexc13.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i21.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i11.i.i22.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.br, %upb_Arena_Malloc.exit.thread.i.i21.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bx, %.noexc13.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i22.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 %i.bn, i1 false), !noalias !1495
  br label %grpc_channelz_v2_Promise_SeqStep_new.exit.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

grpc_channelz_v2_Promise_SeqStep_new.exit.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %.noexc13.i.i.i.i.i.i.i
  %.0.i.i.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.0.i11.i.i22.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h ], [ null, %.noexc13.i.i.i.i.i.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  store ptr %.0.i.i.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.by, align 8, !tbaa !434, !noalias !1495
  %i.bz = load ptr, ptr %i.ay, align 8, !tbaa !434, !noalias !1495 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.180, i64 45), ptr %i.ca, align 1, !noalias !1495
  %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store i64 731, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !1495
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !519, !noalias !1495
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %bb.i, label %.noexc8.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %grpc_channelz_v2_Promise_SeqStep_new.exit.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ce = load ptr, ptr %i.ay, align 8, !tbaa !434, !noalias !1495 ; 2 uses
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise_msg_init) #36, !noalias !1495, !srcloc !432
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 1, !noalias !1495 ; 2 uses
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = icmp eq i64 %i.cg, 0
  br i1 %i.ci, label %bb.j, label %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.cj = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__Promise_msg_init, i64 8), align 8, !tbaa !362, !noalias !1495
  %i.ck = zext i16 %i.cj to i64                   ; 5 uses
  %i.cl = and i64 %i.ck, 7
  %i.cm = icmp eq i64 %i.cl, 0
  call void @llvm.assume(i1 %i.cm)
  %i.cn = load ptr, ptr %i.az, align 8, !tbaa !364, !noalias !1495
  %i.co = load ptr, ptr %i.ab, align 8, !tbaa !365, !noalias !1495 ; 4 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = icmp ult i64 %i.cr, %i.ck
  br i1 %i.cs, label %upb_Arena_Malloc.exit.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !31

upb_Arena_Malloc.exit.thread.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ck
  store ptr %i.ct, ptr %i.ab, align 8, !tbaa !365, !noalias !1495
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.co) ]
  br label %bb.k

upb_Arena_Malloc.exit.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.cu = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.ab, i64 noundef %i.ck)
          to label %.noexc14.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit19.i.i.i.i.i.i.i, !noalias !1495 ; 3 uses

.noexc14.i.i.i.i.i.i.i:                           ; preds = %upb_Arena_Malloc.exit.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i30.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.i._crit_edge.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !431

upb_Arena_Malloc.exit.i._crit_edge.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc14.i.i.i.i.i.i.i
  %.pre.i32.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.cu to i64
  br label %bb.k

bb.k:                                             ; preds = %upb_Arena_Malloc.exit.i._crit_edge.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre-phi.i27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i32.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i._crit_edge.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cq, %upb_Arena_Malloc.exit.thread.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.0.i11.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cu, %upb_Arena_Malloc.exit.i._crit_edge.i31.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.co, %upb_Arena_Malloc.exit.thread.i.i26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 %i.ck, i1 false), !noalias !1495
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise_msg_init) #36, !noalias !1495, !srcloc !432
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !103, !noalias !1495
  %i.cx = or i8 %i.cw, 1
  store i8 %i.cx, ptr %i.cv, align 1, !tbaa !103, !noalias !1495
  store i64 %.pre-phi.i27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.cf, align 1, !noalias !1495
  br label %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k, %.noexc14.i.i.i.i.i.i.i, %bb.i
  %.0.i25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.0.i11.i.i28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.k ], [ %i.ch, %bb.i ], [ null, %.noexc14.i.i.i.i.i.i.i ]
  invoke fastcc void @"_ZN9grpc_core14PromiseAsProtoINS_14promise_detail11PromiseLikeINS_3MapINS1_5AllOkINS_10StatusFlagEJNS1_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERSA_EUlvE_L12grpc_op_type1EEEJNS7_IZZNS8_11CommitBatchESB_mSC_bENK3$_1clESE_EUlvE_LSG_2EEEEEENS6_INS7_IZZNS8_11CommitBatchESB_mSC_bENK3$_3clESE_EUlvE_LSG_4EEEJNS7_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSE_PT_EUlvE_LSG_5EEEEEEEEEZNS8_11CommitBatchESB_mSC_bE3$_4EEvEEEEvRKSS_P24grpc_channelz_v2_PromiseP9upb_Arena"(ptr noundef nonnull align 8 dereferenceable(280) %i.ac, ptr noundef %.0.i25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull %i.ab)
          to label %.noexc8.i.i.i.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit19.i.i.i.i.i.i.i, !noalias !1495

.noexc8.i.i.i.i.i.i.i.i.i.i:                      ; preds = %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %grpc_channelz_v2_Promise_SeqStep_new.exit.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cy = load ptr, ptr %i.by, align 8, !tbaa !434, !noalias !1495 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.221, i64 45), ptr %i.cz, align 1, !noalias !1495
  %.sroa.56.0..sroa_idx.i35.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  store i64 78, ptr %.sroa.56.0..sroa_idx.i35.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !1495
  %i.da = load i8, ptr %i.cb, align 8, !tbaa !519, !noalias !1495
  %i.db = icmp eq i8 %i.da, 1
  br i1 %i.db, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.noexc8.i.i.i.i.i.i.i.i.i.i
  %i.dc = load ptr, ptr %i.by, align 8, !tbaa !434, !noalias !1495 ; 2 uses
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise_msg_init) #36, !noalias !1495, !srcloc !432
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 1, !noalias !1495 ; 2 uses
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = icmp eq i64 %i.de, 0
  br i1 %i.dg, label %bb.m, label %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.dh = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__Promise_msg_init, i64 8), align 8, !tbaa !362, !noalias !1495
  %i.di = zext i16 %i.dh to i64                   ; 5 uses
  %i.dj = and i64 %i.di, 7
  %i.dk = icmp eq i64 %i.dj, 0
  call void @llvm.assume(i1 %i.dk)
  %i.dl = load ptr, ptr %i.az, align 8, !tbaa !364, !noalias !1495
  %i.dm = load ptr, ptr %i.ab, align 8, !tbaa !365, !noalias !1495 ; 4 uses
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64               ; 2 uses
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = icmp ult i64 %i.dp, %i.di
  br i1 %i.dq, label %upb_Arena_Malloc.exit.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !31

upb_Arena_Malloc.exit.thread.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.m
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.di
  store ptr %i.dr, ptr %i.ab, align 8, !tbaa !365, !noalias !1495
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dm) ]
  br label %bb.n

upb_Arena_Malloc.exit.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.m
  %i.ds = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.ab, i64 noundef %i.di)
          to label %.noexc16.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit19.i.i.i.i.i.i.i, !noalias !1495 ; 3 uses

.noexc16.i.i.i.i.i.i.i:                           ; preds = %upb_Arena_Malloc.exit.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i41.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i41.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.i._crit_edge.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !431

upb_Arena_Malloc.exit.i._crit_edge.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc16.i.i.i.i.i.i.i
  %.pre.i43.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %i.ds to i64
  br label %bb.n

bb.n:                                             ; preds = %upb_Arena_Malloc.exit.i._crit_edge.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre-phi.i38.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre.i43.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i._crit_edge.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.do, %upb_Arena_Malloc.exit.thread.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.0.i11.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ds, %upb_Arena_Malloc.exit.i._crit_edge.i42.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dm, %upb_Arena_Malloc.exit.thread.i.i37.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i11.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 %i.di, i1 false), !noalias !1495
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__channelz__v2__Promise_msg_init) #36, !noalias !1495, !srcloc !432
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !103, !noalias !1495
  %i.dv = or i8 %i.du, 1
  store i8 %i.dv, ptr %i.dt, align 1, !tbaa !103, !noalias !1495
  store i64 %.pre-phi.i38.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.dd, align 1, !noalias !1495
  br label %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %.noexc16.i.i.i.i.i.i.i, %bb.l
  %.0.i36.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.0.i11.i.i39.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.n ], [ %i.df, %bb.l ], [ null, %.noexc16.i.i.i.i.i.i.i ]
  invoke void @_ZNK9grpc_core14WaitForCqEndOp7ToProtoEP24grpc_channelz_v2_PromiseP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(280) %i.ac, ptr noundef %.0.i36.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull %i.ab)
          to label %bb.o unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit19.i.i.i.i.i.i.i, !noalias !1495

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit19.i.i.i.i.i.i.i: ; preds = %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i.i40.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i.i29.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i.i23.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i.i23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %grpc_channelz_v2_Promise_mutable_seq_promise.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 40) #37, !noalias !1495
  br label %.body.i

bb.o:                                             ; preds = %grpc_channelz_v2_Promise_SeqStep_mutable_polling_promise.exit44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc8.i.i.i.i.i.i.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 10, ptr %i.dy, align 8, !tbaa !128, !noalias !1494
  %i.dz = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store ptr %i.k, ptr %8, align 8, !tbaa !369, !alias.scope !1493, !noalias !1492
  %i.ea = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.dx, align 8, !tbaa !121, !noalias !1494
  store ptr %i.h, ptr %i.ea, align 8, !tbaa !121, !alias.scope !1493, !noalias !1492
  store ptr null, ptr %7, align 8, !tbaa !369, !noalias !1494
  store i8 10, ptr %i.dz, align 8, !tbaa !128, !alias.scope !1493, !noalias !1492
  %i.eb = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  store i8 1, ptr %i.eb, align 8, !tbaa !130, !alias.scope !1493, !noalias !1492
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36, !noalias !1494
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(33) %7)
          to label %"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyINS_14promise_detail11PromiseLikeINS_15PollBatchLoggerINS4_3SeqINS_3MapINS4_5AllOkINS_10StatusFlagEJNS4_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERSF_EUlvE_L12grpc_op_type1EEEJNSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_1clESJ_EUlvE_LSL_2EEEEEENSB_INSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_3clESJ_EUlvE_LSL_4EEEJNSC_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSJ_PT_EUlvE_LSL_5EEEEEEEEEZNSD_11CommitBatchESG_mSH_bE3$_4EEJZZNS_13FallibleBatchIS14_EEDaOSX_bSH_P21grpc_completion_queueENUlvE_clEvEUlSA_E_EEEEEvEEEEvE4WrapB5cxx11ES1E_.exit.i.i" unwind label %bb.p, !noalias !1494

bb.p:                                             ; preds = %bb.o
  %i.ec = landingpad { ptr, i32 }
          catch ptr null
  %i.ed = extractvalue { ptr, i32 } %i.ec, 0
  call void @__clang_call_terminate(ptr %i.ed) #34, !noalias !1494
  unreachable

"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyINS_14promise_detail11PromiseLikeINS_15PollBatchLoggerINS4_3SeqINS_3MapINS4_5AllOkINS_10StatusFlagEJNS4_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERSF_EUlvE_L12grpc_op_type1EEEJNSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_1clESJ_EUlvE_LSL_2EEEEEENSB_INSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_3clESJ_EUlvE_LSL_4EEEJNSC_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSJ_PT_EUlvE_LSL_5EEEEEEEEEZNSD_11CommitBatchESG_mSH_bE3$_4EEJZZNS_13FallibleBatchIS14_EEDaOSX_bSH_P21grpc_completion_queueENUlvE_clEvEUlSA_E_EEEEEvEEEEvE4WrapB5cxx11ES1E_.exit.i.i": ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36, !noalias !1494
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36, !noalias !1494
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 7, ptr nonnull @.str.108, ptr noundef nonnull align 8 %8)
          to label %bb.q unwind label %bb.t, !noalias !1492

bb.q:                                             ; preds = %"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyINS_14promise_detail11PromiseLikeINS_15PollBatchLoggerINS4_3SeqINS_3MapINS4_5AllOkINS_10StatusFlagEJNS4_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERSF_EUlvE_L12grpc_op_type1EEEJNSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_1clESJ_EUlvE_LSL_2EEEEEENSB_INSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_3clESJ_EUlvE_LSL_4EEEJNSC_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSJ_PT_EUlvE_LSL_5EEEEEEEEEZNSD_11CommitBatchESG_mSH_bE3$_4EEJZZNS_13FallibleBatchIS14_EEDaOSX_bSH_P21grpc_completion_queueENUlvE_clEvEUlSA_E_EEEEEvEEEEvE4WrapB5cxx11ES1E_.exit.i.i"
  %i.ee = load i8, ptr %i.eb, align 8, !tbaa !130, !range !109, !noalias !1492, !noundef !110
  %i.ef = trunc nuw i8 %i.ee to i1
  store i8 0, ptr %i.eb, align 8, !tbaa !130, !noalias !1492
  %i.eg = load i8, ptr %i.dz, align 8, !noalias !1492
  %.not.i.i.i.i.i.i.i.i = icmp ne i8 %i.eg, -1
  %or.cond.not.i.i.i.i.i = select i1 %i.ef, i1 %.not.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i, label %bb.r, label %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeINS_15PollBatchLoggerINS4_3SeqINS_3MapINS4_5AllOkINS_10StatusFlagEJNS4_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERSF_EUlvE_L12grpc_op_type1EEEJNSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_1clESJ_EUlvE_LSL_2EEEEEENSB_INSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_3clESJ_EUlvE_LSL_4EEEJNSC_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSJ_PT_EUlvE_LSL_5EEEEEEEEEZNSD_11CommitBatchESG_mSH_bE3$_4EEJZZNS_13FallibleBatchIS14_EEDaOSX_bSH_P21grpc_completion_queueENUlvE_clEvEUlSA_E_EEEEEvEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEESX_.exit.i", !prof !131

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36, !noalias !1492
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(48) %8)
          to label %.noexc.i.i.i.i.i6.i.i unwind label %bb.s, !noalias !1492

.noexc.i.i.i.i.i6.i.i:                            ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36, !noalias !1492
  br label %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeINS_15PollBatchLoggerINS4_3SeqINS_3MapINS4_5AllOkINS_10StatusFlagEJNS4_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERSF_EUlvE_L12grpc_op_type1EEEJNSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_1clESJ_EUlvE_LSL_2EEEEEENSB_INSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_3clESJ_EUlvE_LSL_4EEEJNSC_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSJ_PT_EUlvE_LSL_5EEEEEEEEEZNSD_11CommitBatchESG_mSH_bE3$_4EEJZZNS_13FallibleBatchIS14_EEDaOSX_bSH_P21grpc_completion_queueENUlvE_clEvEUlSA_E_EEEEEvEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEESX_.exit.i"

bb.s:                                             ; preds = %bb.r
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0
  call void @__clang_call_terminate(ptr %i.ei) #34, !noalias !1492
  unreachable

bb.t:                                             ; preds = %"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyINS_14promise_detail11PromiseLikeINS_15PollBatchLoggerINS4_3SeqINS_3MapINS4_5AllOkINS_10StatusFlagEJNS4_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERSF_EUlvE_L12grpc_op_type1EEEJNSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_1clESJ_EUlvE_LSL_2EEEEEENSB_INSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_3clESJ_EUlvE_LSL_4EEEJNSC_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSJ_PT_EUlvE_LSL_5EEEEEEEEEZNSD_11CommitBatchESG_mSH_bE3$_4EEJZZNS_13FallibleBatchIS14_EEDaOSX_bSH_P21grpc_completion_queueENUlvE_clEvEUlSA_E_EEEEEvEEEEvE4WrapB5cxx11ES1E_.exit.i.i"
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #36, !noalias !1492
  br label %.body.i

"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeINS_15PollBatchLoggerINS4_3SeqINS_3MapINS4_5AllOkINS_10StatusFlagEJNS4_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERSF_EUlvE_L12grpc_op_type1EEEJNSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_1clESJ_EUlvE_LSL_2EEEEEENSB_INSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_3clESJ_EUlvE_LSL_4EEEJNSC_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSJ_PT_EUlvE_LSL_5EEEEEEEEEZNSD_11CommitBatchESG_mSH_bE3$_4EEJZZNS_13FallibleBatchIS14_EEDaOSX_bSH_P21grpc_completion_queueENUlvE_clEvEUlSA_E_EEEEEvEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEESX_.exit.i": ; preds = %.noexc.i.i.i.i.i6.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !1492
  %i.ek = load <2 x ptr>, ptr %i.d, align 8, !tbaa !143, !noalias !1492
  %.phi.trans.insert4.i = getelementptr inbounds nuw i8, ptr %9, i64 24
  %.pre5.i = load ptr, ptr %.phi.trans.insert4.i, align 8, !tbaa !142, !noalias !1492
  br label %bb.v

bb.u:                                             ; preds = %bb.d
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.u, %bb.t, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit19.i.i.i.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.el, %bb.u ], [ %i.dw, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit19.i.i.i.i.i.i.i ], [ %i.ej, %bb.t ]
  call void @_ZN9grpc_core8channelz12PropertyListD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #36, !noalias !1492
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36, !noalias !1492
  br label %.body

bb.v:                                             ; preds = %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeINS_15PollBatchLoggerINS4_3SeqINS_3MapINS4_5AllOkINS_10StatusFlagEJNS4_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERSF_EUlvE_L12grpc_op_type1EEEJNSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_1clESJ_EUlvE_LSL_2EEEEEENSB_INSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_3clESJ_EUlvE_LSL_4EEEJNSC_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSJ_PT_EUlvE_LSL_5EEEEEEEEEZNSD_11CommitBatchESG_mSH_bE3$_4EEJZZNS_13FallibleBatchIS14_EEDaOSX_bSH_P21grpc_completion_queueENUlvE_clEvEUlSA_E_EEEEEvEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEESX_.exit.i", %bb.c
  %i.em = phi ptr [ %.pre5.i, %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeINS_15PollBatchLoggerINS4_3SeqINS_3MapINS4_5AllOkINS_10StatusFlagEJNS4_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERSF_EUlvE_L12grpc_op_type1EEEJNSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_1clESJ_EUlvE_LSL_2EEEEEENSB_INSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_3clESJ_EUlvE_LSL_4EEEJNSC_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSJ_PT_EUlvE_LSL_5EEEEEEEEEZNSD_11CommitBatchESG_mSH_bE3$_4EEJZZNS_13FallibleBatchIS14_EEDaOSX_bSH_P21grpc_completion_queueENUlvE_clEvEUlSA_E_EEEEEvEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEESX_.exit.i" ], [ null, %bb.c ]
  %i.en = phi <2 x ptr> [ %i.ek, %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeINS_15PollBatchLoggerINS4_3SeqINS_3MapINS4_5AllOkINS_10StatusFlagEJNS4_6TrySeqINS_13OpHandlerImplIZZNS_10ClientCall11CommitBatchEPK7grpc_opmPvbENK3$_0clERSF_EUlvE_L12grpc_op_type1EEEJNSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_1clESJ_EUlvE_LSL_2EEEEEENSB_INSC_IZZNSD_11CommitBatchESG_mSH_bENK3$_3clESJ_EUlvE_LSL_4EEEJNSC_IZNS_15MessageReceiver11MakeBatchOpINS_13CallInitiatorEEEDaSJ_PT_EUlvE_LSL_5EEEEEEEEEZNSD_11CommitBatchESG_mSH_bE3$_4EEJZZNS_13FallibleBatchIS14_EEDaOSX_bSH_P21grpc_completion_queueENUlvE_clEvEUlSA_E_EEEEEvEEEEEERS1_St17basic_string_viewIcSt11char_traitsIcEESX_.exit.i" ], [ splat (ptr null), %bb.c ]
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %11, align 8, !tbaa !35, !alias.scope !1492
  %i.eo = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %11, i64 16
  store <2 x ptr> %i.en, ptr %i.eo, align 8, !tbaa !143, !alias.scope !1492
  %i.eq = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr %i.em, ptr %i.eq, align 8, !tbaa !142, !alias.scope !1492
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36, !noalias !1492
  %i.er = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN9grpc_core8channelz12PropertyList5MergeES1_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 %11)
          to label %bb.w unwind label %bb.ae

bb.w:                                             ; preds = %bb.v
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %0, align 8, !tbaa !35
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESaISM_EEC2ERKSO_(ptr noundef nonnull align 8 dereferenceable(24) %i.es, ptr noundef nonnull align 8 dereferenceable(24) %i.et)
          to label %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit unwind label %bb.ae

_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit: ; preds = %bb.w
  %i.eu = load ptr, ptr %i.eo, align 8, !tbaa !138 ; 3 uses
  %i.ev = load ptr, ptr %i.ep, align 8, !tbaa !139 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.eu, %i.ev
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.fg, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i ], [ %i.eu, %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit ] ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64
  %i.ex = load i8, ptr %i.ew, align 8, !tbaa !128
  %.not.i.i.i.i.i.i.i.i8 = icmp eq i8 %i.ex, -1
  br i1 %.not.i.i.i.i.i.i.i.i8, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i, label %bb.x, !prof !31

bb.x:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(33) %i.ey)
          to label %.noexc.i.i.i.i.i.i.i9 unwind label %bb.y

.noexc.i.i.i.i.i.i.i9:                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.ez = landingpad { ptr, i32 }
          catch ptr null
  %i.fa = extractvalue { ptr, i32 } %i.ez, 0
  call void @__clang_call_terminate(ptr %i.fa) #34
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i9, %.lr.ph.i.i.i.i
  %i.fb = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !140 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !103
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #37
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fg, %i.ev
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.eo, align 8, !tbaa !138
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i, %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit
  %i.fh = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.eu, %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.fh, null
  br i1 %.not.i.i1.i.i, label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i
  %i.fi = load ptr, ptr %i.eq, align 8, !tbaa !142
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = ptrtoint ptr %i.fh to i64
  %i.fl = sub i64 %i.fj, %i.fk
  call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef %i.fl) #37
  br label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit

_ZN9grpc_core8channelz12PropertyListD2Ev.exit:    ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i, %bb.z
  %i.fm = load ptr, ptr %i.a, align 8, !tbaa !138 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !139 ; 2 uses
  %.not4.i.i.i.i10 = icmp eq ptr %i.fm, %i.fo
  br i1 %.not4.i.i.i.i10, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i21, label %.lr.ph.i.i.i.i11

.lr.ph.i.i.i.i11:                                 ; preds = %_ZN9grpc_core8channelz12PropertyListD2Ev.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i17
  %.05.i.i.i.i12 = phi ptr [ %i.fz, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i17 ], [ %i.fm, %_ZN9grpc_core8channelz12PropertyListD2Ev.exit ] ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i12, i64 64
  %i.fq = load i8, ptr %i.fp, align 8, !tbaa !128
  %.not.i.i.i.i.i.i.i.i13 = icmp eq i8 %i.fq, -1
  br i1 %.not.i.i.i.i.i.i.i.i13, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i15, label %bb.aa, !prof !31

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i11
  %i.fr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i12, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(33) %i.fr)
          to label %.noexc.i.i.i.i.i.i.i14 unwind label %bb.ab

.noexc.i.i.i.i.i.i.i14:                           ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i15

bb.ab:                                            ; preds = %bb.aa
  %i.fs = landingpad { ptr, i32 }
          catch ptr null
  %i.ft = extractvalue { ptr, i32 } %i.fs, 0
  call void @__clang_call_terminate(ptr %i.ft) #34
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i15: ; preds = %.noexc.i.i.i.i.i.i.i14, %.lr.ph.i.i.i.i11
  %i.fu = load ptr, ptr %.05.i.i.i.i12, align 8, !tbaa !140 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i12, i64 16 ; 2 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i16: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i15
  %i.fx = load i64, ptr %i.fv, align 8, !tbaa !103
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fy) #37
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i17

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i17: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i16
  %i.fz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i12, i64 72 ; 2 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.fz, %i.fo
  br i1 %.not.i.i.i.i18, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i19, label %.lr.ph.i.i.i.i11, !llvm.loop !2

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i19: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i17
  %.pr.i.i20 = load ptr, ptr %i.a, align 8, !tbaa !138
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i21

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i21: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i19, %_ZN9grpc_core8channelz12PropertyListD2Ev.exit
  %i.ga = phi ptr [ %.pr.i.i20, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i19 ], [ %i.fm, %_ZN9grpc_core8channelz12PropertyListD2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i22 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i1.i.i22, label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit24, label %bb.ac

bb.ac:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i21
  %i.gb = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !142
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = ptrtoint ptr %i.ga to i64
  %i.gf = sub i64 %i.gd, %i.ge
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef %i.gf) #37
  br label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit24

_ZN9grpc_core8channelz12PropertyListD2Ev.exit24:  ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i21, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  ret void

bb.ad:                                            ; preds = %bb.b, %bb.a
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body
end_hunk_10
