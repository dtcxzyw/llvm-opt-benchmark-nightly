Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/channel_cc?download=true
inline.NumInlined: 493
inline.NumDeleted: 339
begin_hunk_0_@_ZN4grpc16ChannelInterface18CreateCallInternalERKNS_8internal9RpcMethodEPNS_13ClientContextEPNS_15CompletionQueueEm:bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN4grpc16ChannelInterface10CallbackCQEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #18

declare void @grpc_init() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4grpc8internal11GrpcLibraryD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4grpc8internal11GrpcLibraryE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !14, !range !55, !noundef !56
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @grpc_shutdown()
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #30
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4grpc8internal11GrpcLibraryD0Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4grpc8internal11GrpcLibraryE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !14, !range !55, !noundef !56
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN4grpc8internal11GrpcLibraryD2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @grpc_shutdown()
          to label %_ZN4grpc8internal11GrpcLibraryD2Ev.exit unwind label %bb.c, !inline_history !57

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #30, !inline_history !57
  unreachable

_ZN4grpc8internal11GrpcLibraryD2Ev.exit:          ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

declare void @grpc_shutdown() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

declare void @grpc_channel_get_info(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gpr_free(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare noundef i64 @_ZN9grpc_core8channelz8BaseNode8UuidSlowEv(ptr noundef nonnull align 8 dereferenceable(232)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN4grpc7Channel18CreateCallInternalERKNS3_8internal9RpcMethodEPNS3_13ClientContextEPNS3_15CompletionQueueEmE3$_0vJPN9grpc_core5ArenaEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr nofree readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !89
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 344
  tail call void @_ZN4grpc4impl19CallContextRegistry9PropagateERPPvPN9grpc_core5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %1)
  ret void
}

declare void @_ZN4grpc4impl19CallContextRegistry9PropagateERPPvPN9grpc_core5ArenaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare void @grpc_slice_from_copied_buffer(ptr dead_on_unwind writable sret(%struct.grpc_slice) align 8, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN4grpc7Channel18CreateCallInternalERKNS3_8internal9RpcMethodEPNS3_13ClientContextEPNS3_15CompletionQueueEmE3$_1vJPN9grpc_core5ArenaEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr nofree readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !93
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 344
  tail call void @_ZN4grpc4impl19CallContextRegistry9PropagateERPPvPN9grpc_core5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4grpc12experimental13ClientRpcInfo20RegisterInterceptorsERKSt6vectorISt10unique_ptrINS0_33ClientInterceptorFactoryInterfaceESt14default_deleteIS4_EESaIS7_EEm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !50     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3
  %i.h = load ptr, ptr @_ZN4grpc8internal41g_global_client_stats_interceptor_factoryE, align 8, !tbaa !53 ; 3 uses
  %i.i = icmp ne ptr %i.h, null                   ; 2 uses
  %i.j = zext i1 %i.i to i64
  %i.k = add nsw i64 %i.g, %i.j
  %i.l = load ptr, ptr @_ZN4grpc8internal35g_global_client_interceptor_factoryE, align 8, !tbaa !53
  %i.m = icmp ne ptr %i.l, null
  %i.n = zext i1 %i.m to i64
  %i.o = add nsw i64 %i.k, %i.n
  %i.p = icmp ugt i64 %2, %i.o
  br i1 %i.p, label %_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit34, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef ptr %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %0) ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !95   ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !96
  %.not.i.i = icmp eq ptr %i.w, %i.y
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = ptrtoint ptr %i.u to i64
  store i64 %i.z, ptr %i.w, align 8, !tbaa !98
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !95
  br label %_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !94  ; 7 uses
  %i.ac = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64               ; 3 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775800
  br i1 %i.af, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #32
          to label %.noexc39 unwind label %bb.h

.noexc39:                                         ; preds = %bb.f
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.e
  %i.ag = ashr exact i64 %i.ae, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 1152921504606846975)
  %i.ak = select i1 %i.ai, i64 1152921504606846975, i64 %i.aj ; 3 uses
  %.not.i.i38 = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i38)
  %i.al = shl nuw nsw i64 %i.ak, 3
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #33
          to label %.noexc40 unwind label %bb.h   ; 7 uses

.noexc40:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae
  %i.ao = ptrtoint ptr %i.u to i64
  store i64 %i.ao, ptr %i.an, align 8, !tbaa !98
  %.not10.i.i.i.i = icmp eq ptr %i.ab, %i.w
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc40
  %i.ap = add i64 %i.ac, -8
  %i.aq = sub i64 %i.ap, %i.ad                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader185, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.at = shl i64 %n.vec, 3                       ; 2 uses
  %i.au = getelementptr i8, ptr %i.am, i64 %i.at  ; 2 uses
  %i.av = getelementptr i8, ptr %i.ab, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.aw ; 2 uses
  %next.gep143 = getelementptr i8, ptr %i.ab, i64 %i.aw ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %i.ax = getelementptr i8, ptr %next.gep143, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep143, align 8, !tbaa !98, !alias.scope !260
  %wide.load144 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !98, !alias.scope !260
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !98, !alias.scope !259
  store <2 x i64> %wide.load144, ptr %i.ay, align 8, !tbaa !98, !alias.scope !259
  %i.az = getelementptr i8, ptr %next.gep143, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep143, align 8, !tbaa !98, !alias.scope !260
  store <2 x ptr> splat (ptr null), ptr %i.az, align 8, !tbaa !98, !alias.scope !260
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !243

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader185

.lr.ph.i.i.i.i.preheader185:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.am, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader185, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader185 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader185 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %i.bb = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !98, !alias.scope !260
  store i64 %i.bb, ptr %.012.i.i.i.i, align 8, !tbaa !98, !alias.scope !259
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !98, !alias.scope !260
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bc, %i.w
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !244

_ZNSt6vectorISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc40
  %.0.lcssa.i.i.i.i = phi ptr [ %i.am, %.noexc40 ], [ %i.au, %middle.block ], [ %i.bd, %.lr.ph.i.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ab, null
  br i1 %.not.i23.i, label %.noexc, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.bf = load ptr, ptr %i.x, align 8, !tbaa !96
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.bh) #29
  br label %.noexc

.noexc:                                           ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  store ptr %i.am, ptr %i.q, align 8, !tbaa !94
  store ptr %i.be, ptr %i.v, align 8, !tbaa !95
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.bi, ptr %i.x, align 8, !tbaa !96
  br label %_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.d, %.noexc
  %i.bj = add i64 %2, -1
  %.pre = load ptr, ptr %1, align 8, !tbaa !46
  %.pre108 = load ptr, ptr %i.a, align 8, !tbaa !46
  br label %bb.i

bb.h:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i, %bb.f
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i17 = icmp eq ptr %i.u, null
  br i1 %.not.i17, label %_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit19, label %_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit19.sink.split

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %i.bl = phi ptr [ %.pre108, %_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit ], [ %i.b, %bb.b ]
  %i.bm = phi ptr [ %.pre, %_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit ], [ %i.c, %bb.b ]
  %.012 = phi i64 [ %i.bj, %_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit ], [ %2, %bb.b ]
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %.012 ; 2 uses
  %.not96101 = icmp eq ptr %i.bn, %i.bl
  br i1 %.not96101, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit25, %bb.i
  %i.br = load ptr, ptr @_ZN4grpc8internal35g_global_client_interceptor_factoryE, align 8, !tbaa !53 ; 3 uses
  %.not = icmp eq ptr %i.br, null
  br i1 %.not, label %_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit34, label %bb.p

bb.j:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit25
  %.sroa.090.0102 = phi ptr [ %i.bn, %.lr.ph ], [ %i.dm, %_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit25 ] ; 2 uses
  %i.bs = load ptr, ptr %.sroa.090.0102, align 8, !tbaa !53 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !11
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = tail call noundef ptr %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull %0) ; 5 uses
  %.not15 = icmp eq ptr %i.bw, null
  br i1 %.not15, label %_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit25, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = load ptr, ptr %i.bp, align 8, !tbaa !95 ; 6 uses
  %i.by = load ptr, ptr %i.bq, align 8, !tbaa !96
  %.not.i.i20 = icmp eq ptr %i.bx, %i.by
  br i1 %.not.i.i20, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = ptrtoint ptr %i.bw to i64
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !98
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.ca, ptr %i.bp, align 8, !tbaa !95
  br label %_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit25

bb.m:                                             ; preds = %bb.k
  %i.cb = load ptr, ptr %i.bo, align 8, !tbaa !94 ; 10 uses
  %i.cc = ptrtoint ptr %i.bx to i64               ; 3 uses
  %i.cd = ptrtoint ptr %i.cb to i64               ; 4 uses
  %i.ce = sub i64 %i.cc, %i.cd                    ; 3 uses
  %i.cf = icmp eq i64 %i.ce, 9223372036854775800
  br i1 %i.cf, label %bb.n, label %_ZNKSt6vectorISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i41

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #32
          to label %.noexc59 unwind label %_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit28.loopexit.split-lp

.noexc59:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i41: ; preds = %bb.m
  %i.cg = ashr exact i64 %i.ce, 3                 ; 3 uses
  %.sroa.speculated.i.i42 = tail call i64 @llvm.umax.i64(i64 %i.cg, i64 1)
  %i.ch = add nsw i64 %.sroa.speculated.i.i42, %i.cg ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cg
  %i.cj = tail call i64 @llvm.umin.i64(i64 %i.ch, i64 1152921504606846975)
  %i.ck = select i1 %i.ci, i64 1152921504606846975, i64 %i.cj ; 3 uses
  %.not.i.i43 = icmp ne i64 %i.ck, 0
  tail call void @llvm.assume(i1 %.not.i.i43)
  %i.cl = shl nuw nsw i64 %i.ck, 3
  %i.cm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #33
          to label %.noexc60 unwind label %_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit28.loopexit ; 10 uses

.noexc60:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i41
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ce
  %i.co = ptrtoint ptr %i.bw to i64
  store i64 %i.co, ptr %i.cn, align 8, !tbaa !98
  %.not10.i.i.i.i44 = icmp eq ptr %i.cb, %i.bx
  br i1 %.not10.i.i.i.i44, label %_ZNSt6vectorISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i56, label %.lr.ph.i.i.i.i45.preheader

.lr.ph.i.i.i.i45.preheader:                       ; preds = %.noexc60
  %i.cp = add i64 %i.cc, -8
  %i.cq = sub i64 %i.cp, %i.cd                    ; 2 uses
  %i.cr = lshr i64 %i.cq, 3
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 2 uses
  %min.iters.check150 = icmp ult i64 %i.cq, 56
  br i1 %min.iters.check150, label %.lr.ph.i.i.i.i45.preheader180, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i45.preheader
  %scevgep = getelementptr i8, ptr %i.cm, i64 8
  %i.ct = add i64 %i.cc, -8
  %i.cu = sub i64 %i.ct, %i.cd
  %i.cv = and i64 %i.cu, -8                       ; 2 uses
  %scevgep146 = getelementptr i8, ptr %scevgep, i64 %i.cv
  %scevgep147 = getelementptr i8, ptr %i.cb, i64 8
  %scevgep148 = getelementptr i8, ptr %scevgep147, i64 %i.cv
  %bound0 = icmp ult ptr %i.cm, %scevgep148
  %bound1 = icmp ult ptr %i.cb, %scevgep146
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i45.preheader180, label %vector.ph151

vector.ph151:                                     ; preds = %vector.memcheck
  %n.vec152 = and i64 %i.cs, 4611686018427387900  ; 3 uses
  %i.cw = shl i64 %n.vec152, 3                    ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cm, i64 %i.cw  ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cb, i64 %i.cw
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next159, %vector.body153 ] ; 2 uses
  %i.cz = shl i64 %index154, 3                    ; 2 uses
  %next.gep155 = getelementptr i8, ptr %i.cm, i64 %i.cz ; 2 uses
  %next.gep156 = getelementptr i8, ptr %i.cb, i64 %i.cz ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.da = getelementptr i8, ptr %next.gep156, i64 16
  %wide.load157 = load <2 x i64>, ptr %next.gep156, align 8, !tbaa !98, !alias.scope !265
  %wide.load158 = load <2 x i64>, ptr %i.da, align 8, !tbaa !98, !alias.scope !265
  %i.db = getelementptr i8, ptr %next.gep155, i64 16
  store <2 x i64> %wide.load157, ptr %next.gep155, align 8, !tbaa !98, !alias.scope !266, !noalias !267
  store <2 x i64> %wide.load158, ptr %i.db, align 8, !tbaa !98, !alias.scope !266, !noalias !267
  %i.dc = getelementptr i8, ptr %next.gep156, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep156, align 8, !tbaa !98, !alias.scope !265
  store <2 x ptr> splat (ptr null), ptr %i.dc, align 8, !tbaa !98, !alias.scope !265
  %index.next159 = add nuw i64 %index154, 4       ; 2 uses
  %i.dd = icmp eq i64 %index.next159, %n.vec152
  br i1 %i.dd, label %middle.block160, label %vector.body153, !llvm.loop !251

middle.block160:                                  ; preds = %vector.body153
  %cmp.n161 = icmp eq i64 %i.cs, %n.vec152
  br i1 %cmp.n161, label %_ZNSt6vectorISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i56, label %.lr.ph.i.i.i.i45.preheader180

.lr.ph.i.i.i.i45.preheader180:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i45.preheader, %middle.block160
  %.012.i.i.i.i46.ph = phi ptr [ %i.cm, %vector.memcheck ], [ %i.cm, %.lr.ph.i.i.i.i45.preheader ], [ %i.cx, %middle.block160 ]
  %.0911.i.i.i.i47.ph = phi ptr [ %i.cb, %vector.memcheck ], [ %i.cb, %.lr.ph.i.i.i.i45.preheader ], [ %i.cy, %middle.block160 ]
  br label %.lr.ph.i.i.i.i45

.lr.ph.i.i.i.i45:                                 ; preds = %.lr.ph.i.i.i.i45.preheader180, %.lr.ph.i.i.i.i45
  %.012.i.i.i.i46 = phi ptr [ %i.dg, %.lr.ph.i.i.i.i45 ], [ %.012.i.i.i.i46.ph, %.lr.ph.i.i.i.i45.preheader180 ] ; 2 uses
  %.0911.i.i.i.i47 = phi ptr [ %i.df, %.lr.ph.i.i.i.i45 ], [ %.0911.i.i.i.i47.ph, %.lr.ph.i.i.i.i45.preheader180 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.de = load i64, ptr %.0911.i.i.i.i47, align 8, !tbaa !98, !alias.scope !264
  store i64 %i.de, ptr %.012.i.i.i.i46, align 8, !tbaa !98, !alias.scope !263
  store ptr null, ptr %.0911.i.i.i.i47, align 8, !tbaa !98, !alias.scope !264
  %i.df = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i47, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i46, i64 8 ; 2 uses
  %.not.i.i.i.i48 = icmp eq ptr %i.df, %i.bx
  br i1 %.not.i.i.i.i48, label %_ZNSt6vectorISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i56, label %.lr.ph.i.i.i.i45, !llvm.loop !252

_ZNSt6vectorISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i56: ; preds = %.lr.ph.i.i.i.i45, %middle.block160, %.noexc60
  %.0.lcssa.i.i.i.i50 = phi ptr [ %i.cm, %.noexc60 ], [ %i.cx, %middle.block160 ], [ %i.dg, %.lr.ph.i.i.i.i45 ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i50, i64 8
  %.not.i23.i58 = icmp eq ptr %i.cb, null
  br i1 %.not.i23.i58, label %.noexc21, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i56
  %i.di = load ptr, ptr %i.bq, align 8, !tbaa !96
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = sub i64 %i.dj, %i.cd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.dk) #29
  br label %.noexc21

.noexc21:                                         ; preds = %bb.o, %_ZNSt6vectorISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i56
  store ptr %i.cm, ptr %i.bo, align 8, !tbaa !94
  store ptr %i.dh, ptr %i.bp, align 8, !tbaa !95
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ck
  store ptr %i.dl, ptr %i.bq, align 8, !tbaa !96
  br label %_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit25

_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit28.loopexit: ; preds = %_ZNKSt6vectorISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i41
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit19.sink.split

_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit28.loopexit.split-lp: ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit19.sink.split

_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit25: ; preds = %.noexc21, %bb.l, %bb.j
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.090.0102, i64 8 ; 2 uses
  %i.dn = load ptr, ptr %i.a, align 8, !tbaa !46
  %.not96 = icmp eq ptr %i.dm, %i.dn
  br i1 %.not96, label %._crit_edge, label %bb.j, !llvm.loop !253

bb.p:                                             ; preds = %._crit_edge
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dp = load ptr, ptr %i.br, align 8, !tbaa !11
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = tail call noundef ptr %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull %0) ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !95 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !96
  %.not.i.i29 = icmp eq ptr %i.du, %i.dw
  br i1 %.not.i.i29, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dx = ptrtoint ptr %i.ds to i64
  store i64 %i.dx, ptr %i.du, align 8, !tbaa !98
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr %i.dy, ptr %i.dt, align 8, !tbaa !95
  br label %_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit34

bb.r:                                             ; preds = %bb.p
  %i.dz = load ptr, ptr %i.do, align 8, !tbaa !94 ; 7 uses
  %i.ea = ptrtoint ptr %i.du to i64               ; 2 uses
  %i.eb = ptrtoint ptr %i.dz to i64               ; 3 uses
  %i.ec = sub i64 %i.ea, %i.eb                    ; 3 uses
  %i.ed = icmp eq i64 %i.ec, 9223372036854775800
  br i1 %i.ed, label %bb.s, label %_ZNKSt6vectorISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i62

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #32
          to label %.noexc80 unwind label %bb.u

.noexc80:                                         ; preds = %bb.s
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i62: ; preds = %bb.r
  %i.ee = ashr exact i64 %i.ec, 3                 ; 3 uses
  %.sroa.speculated.i.i63 = tail call i64 @llvm.umax.i64(i64 %i.ee, i64 1)
  %i.ef = add nsw i64 %.sroa.speculated.i.i63, %i.ee ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %i.ee
  %i.eh = tail call i64 @llvm.umin.i64(i64 %i.ef, i64 1152921504606846975)
  %i.ei = select i1 %i.eg, i64 1152921504606846975, i64 %i.eh ; 3 uses
  %.not.i.i64 = icmp ne i64 %i.ei, 0
  tail call void @llvm.assume(i1 %.not.i.i64)
  %i.ej = shl nuw nsw i64 %i.ei, 3
  %i.ek = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ej) #33
          to label %.noexc81 unwind label %bb.u   ; 7 uses

.noexc81:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i62
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ec
  %i.em = ptrtoint ptr %i.ds to i64
  store i64 %i.em, ptr %i.el, align 8, !tbaa !98
  %.not10.i.i.i.i65 = icmp eq ptr %i.dz, %i.du
  br i1 %.not10.i.i.i.i65, label %_ZNSt6vectorISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i77, label %.lr.ph.i.i.i.i66.preheader

.lr.ph.i.i.i.i66.preheader:                       ; preds = %.noexc81
  %i.en = add i64 %i.ea, -8
  %i.eo = sub i64 %i.en, %i.eb                    ; 2 uses
  %i.ep = lshr i64 %i.eo, 3
  %i.eq = add nuw nsw i64 %i.ep, 1                ; 2 uses
  %min.iters.check165 = icmp ult i64 %i.eo, 24
  br i1 %min.iters.check165, label %.lr.ph.i.i.i.i66.preheader179, label %vector.ph166

vector.ph166:                                     ; preds = %.lr.ph.i.i.i.i66.preheader
  %n.vec167 = and i64 %i.eq, 4611686018427387900  ; 3 uses
  %i.er = shl i64 %n.vec167, 3                    ; 2 uses
  %i.es = getelementptr i8, ptr %i.ek, i64 %i.er  ; 2 uses
  %i.et = getelementptr i8, ptr %i.dz, i64 %i.er
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph166
  %index169 = phi i64 [ 0, %vector.ph166 ], [ %index.next174, %vector.body168 ] ; 2 uses
  %i.eu = shl i64 %index169, 3                    ; 2 uses
  %next.gep170 = getelementptr i8, ptr %i.ek, i64 %i.eu ; 2 uses
  %next.gep171 = getelementptr i8, ptr %i.dz, i64 %i.eu ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.ev = getelementptr i8, ptr %next.gep171, i64 16
  %wide.load172 = load <2 x i64>, ptr %next.gep171, align 8, !tbaa !98, !alias.scope !269
  %wide.load173 = load <2 x i64>, ptr %i.ev, align 8, !tbaa !98, !alias.scope !269
  %i.ew = getelementptr i8, ptr %next.gep170, i64 16
  store <2 x i64> %wide.load172, ptr %next.gep170, align 8, !tbaa !98, !alias.scope !268
  store <2 x i64> %wide.load173, ptr %i.ew, align 8, !tbaa !98, !alias.scope !268
  %i.ex = getelementptr i8, ptr %next.gep171, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep171, align 8, !tbaa !98, !alias.scope !269
  store <2 x ptr> splat (ptr null), ptr %i.ex, align 8, !tbaa !98, !alias.scope !269
  %index.next174 = add nuw i64 %index169, 4       ; 2 uses
  %i.ey = icmp eq i64 %index.next174, %n.vec167
  br i1 %i.ey, label %middle.block175, label %vector.body168, !llvm.loop !257

middle.block175:                                  ; preds = %vector.body168
  %cmp.n176 = icmp eq i64 %i.eq, %n.vec167
  br i1 %cmp.n176, label %_ZNSt6vectorISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i77, label %.lr.ph.i.i.i.i66.preheader179

.lr.ph.i.i.i.i66.preheader179:                    ; preds = %.lr.ph.i.i.i.i66.preheader, %middle.block175
  %.012.i.i.i.i67.ph = phi ptr [ %i.ek, %.lr.ph.i.i.i.i66.preheader ], [ %i.es, %middle.block175 ]
  %.0911.i.i.i.i68.ph = phi ptr [ %i.dz, %.lr.ph.i.i.i.i66.preheader ], [ %i.et, %middle.block175 ]
  br label %.lr.ph.i.i.i.i66

.lr.ph.i.i.i.i66:                                 ; preds = %.lr.ph.i.i.i.i66.preheader179, %.lr.ph.i.i.i.i66
  %.012.i.i.i.i67 = phi ptr [ %i.fb, %.lr.ph.i.i.i.i66 ], [ %.012.i.i.i.i67.ph, %.lr.ph.i.i.i.i66.preheader179 ] ; 2 uses
  %.0911.i.i.i.i68 = phi ptr [ %i.fa, %.lr.ph.i.i.i.i66 ], [ %.0911.i.i.i.i68.ph, %.lr.ph.i.i.i.i66.preheader179 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.ez = load i64, ptr %.0911.i.i.i.i68, align 8, !tbaa !98, !alias.scope !269
  store i64 %i.ez, ptr %.012.i.i.i.i67, align 8, !tbaa !98, !alias.scope !268
  store ptr null, ptr %.0911.i.i.i.i68, align 8, !tbaa !98, !alias.scope !269
  %i.fa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i68, i64 8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i67, i64 8 ; 2 uses
  %.not.i.i.i.i69 = icmp eq ptr %i.fa, %i.du
  br i1 %.not.i.i.i.i69, label %_ZNSt6vectorISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i77, label %.lr.ph.i.i.i.i66, !llvm.loop !258

_ZNSt6vectorISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i77: ; preds = %.lr.ph.i.i.i.i66, %middle.block175, %.noexc81
  %.0.lcssa.i.i.i.i71 = phi ptr [ %i.ek, %.noexc81 ], [ %i.es, %middle.block175 ], [ %i.fb, %.lr.ph.i.i.i.i66 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i71, i64 8
  %.not.i23.i79 = icmp eq ptr %i.dz, null
  br i1 %.not.i23.i79, label %.noexc30, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i77
  %i.fd = load ptr, ptr %i.dv, align 8, !tbaa !96
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = sub i64 %i.fe, %i.eb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.ff) #29
  br label %.noexc30

.noexc30:                                         ; preds = %bb.t, %_ZNSt6vectorISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i77
  store ptr %i.ek, ptr %i.do, align 8, !tbaa !94
  store ptr %i.fc, ptr %i.dt, align 8, !tbaa !95
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ei
  store ptr %i.fg, ptr %i.dv, align 8, !tbaa !96
  br label %_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit34

bb.u:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i62, %bb.s
  %i.fh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i35 = icmp eq ptr %i.ds, null
  br i1 %.not.i35, label %_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit19, label %_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit19.sink.split

_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit34: ; preds = %.noexc30, %bb.q, %._crit_edge, %bb.a
  ret void

_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit19.sink.split: ; preds = %bb.u, %_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit28.loopexit, %_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit28.loopexit.split-lp, %bb.h
  %.sink137 = phi ptr [ %i.bw, %_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit28.loopexit.split-lp ], [ %i.u, %bb.h ], [ %i.bw, %_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit28.loopexit ], [ %i.ds, %bb.u ] ; 2 uses
  %.pn.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit28.loopexit.split-lp ], [ %i.bk, %bb.h ], [ %lpad.loopexit, %_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit28.loopexit ], [ %i.fh, %bb.u ]
  %i.fi = load ptr, ptr %.sink137, align 8, !tbaa !11
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8
  tail call void %i.fk(ptr noundef nonnull align 8 dereferenceable(8) %.sink137) #28
  br label %_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit19

_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit19: ; preds = %_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit19.sink.split, %bb.u, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.h ], [ %i.fh, %bb.u ], [ %.pn.ph, %_ZNSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EED2Ev.exit19.sink.split ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #20

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #28, !inline_history !270
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !49   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #28, !inline_history !270
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4grpc8internal18CompletionQueueTagD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4grpc12_GLOBAL__N_18TagSaverD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN4grpc12_GLOBAL__N_18TagSaver14FinalizeResultEPPvPb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree readnone captures(none) %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110
  store ptr %i.b, ptr %1, align 8, !tbaa !111
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret i1 true
}

declare ptr @grpc_completion_queue_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @grpc_completion_queue_factory_lookup(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4grpc15CompletionQueueD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4grpc15CompletionQueueE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  invoke void @grpc_completion_queue_destroy(ptr noundef %i.b)
          to label %bb.b unwind label %bb.e, !inline_history !112

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !113  ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1110_List_baseIPKN4grpc6ServerESaIS4_EED2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %.09.i.i.i, align 8, !tbaa !113 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #29, !inline_history !112
  %.not.i.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i.i, label %_ZNSt7__cxx1110_List_baseIPKN4grpc6ServerESaIS4_EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt7__cxx1110_List_baseIPKN4grpc6ServerESaIS4_EED2Ev.exit.i: ; preds = %.lr.ph.i.i.i, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4grpc8internal11GrpcLibraryE, i64 16), ptr %0, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i8, ptr %i.f, align 8, !tbaa !14, !range !55, !noundef !56
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %_ZN4grpc15CompletionQueueD2Ev.exit

bb.c:                                             ; preds = %_ZNSt7__cxx1110_List_baseIPKN4grpc6ServerESaIS4_EED2Ev.exit.i
  invoke void @grpc_shutdown()
          to label %_ZN4grpc15CompletionQueueD2Ev.exit unwind label %bb.d, !inline_history !114

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #30, !inline_history !114
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #30, !inline_history !112
  unreachable

_ZN4grpc15CompletionQueueD2Ev.exit:               ; preds = %_ZNSt7__cxx1110_List_baseIPKN4grpc6ServerESaIS4_EED2Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #29
  ret void
}

declare noundef i32 @_ZN4grpc15CompletionQueue17AsyncNextInternalEPPvPb12gpr_timespec(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef, i64, i64) local_unnamed_addr #2

declare { i64, i64 } @gpr_inf_future(i32 noundef) local_unnamed_addr #2

declare noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIPKvS4_EEPKcT_T0_S6_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @grpc_completion_queue_destroy(ptr noundef) local_unnamed_addr #2

declare void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4grpc12_GLOBAL__N_116ShutdownCallback3RunEP29grpc_completion_queue_functori(ptr noundef %0, i32 %1) #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(64) %i.b) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #29
  ret void
}

declare void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt12bad_weak_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #23

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #27

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { alwaysinline mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind }
attributes #23 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold noreturn }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nounwind }
attributes #29 = { builtin nounwind }
attributes #30 = { noreturn nounwind }
attributes #31 = { nounwind willreturn memory(read) }
attributes #32 = { noreturn }
attributes #33 = { builtin allocsize(0) }
attributes #34 = { cold }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = distinct !{!1, !54}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"vtable pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"bool", !6, i64 0}
!13 = !{!"_ZTSN4grpc8internal11GrpcLibraryE", !12, i64 8}
!14 = !{!13, !12, i64 8}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"p1 omnipotent char", !15, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"long", !6, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0, !19, i64 8, !6, i64 16}
!21 = !{!20, !16, i64 0}
!22 = !{!20, !19, i64 8}
!23 = !{!19, !19, i64 0}
!24 = !{!6, !6, i64 0}
!25 = !{!"_ZTSN4grpc16ChannelInterfaceE"}
!26 = !{!"p1 _ZTSN4grpc7ChannelE", !15, i64 0}
!27 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !15, i64 0}
!28 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !27, i64 0}
!29 = !{!"_ZTSSt10__weak_ptrIN4grpc7ChannelELN9__gnu_cxx12_Lock_policyE2EE", !26, i64 0, !28, i64 8}
!30 = !{!"_ZTSSt8weak_ptrIN4grpc7ChannelEE", !29, i64 0}
!31 = !{!"_ZTSSt23enable_shared_from_thisIN4grpc7ChannelEE", !30, i64 0}
!32 = !{!"p1 _ZTS12grpc_channel", !15, i64 0}
!33 = !{!"_ZTSSt13__atomic_baseIlE", !19, i64 0}
!34 = !{!"_ZTSSt6atomicIlE", !33, i64 0}
!35 = !{!"_ZTSN4absl12lts_202505125MutexE", !34, i64 0}
!36 = !{!"p1 _ZTSN4grpc15CompletionQueueE", !15, i64 0}
!37 = !{!"_ZTSSt13__atomic_baseIPN4grpc15CompletionQueueEE", !36, i64 0}
!38 = !{!"_ZTSSt6atomicIPN4grpc15CompletionQueueEE", !37, i64 0}
!39 = !{!"p1 _ZTSSt10unique_ptrIN4grpc12experimental33ClientInterceptorFactoryInterfaceESt14default_deleteIS2_EE", !15, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4grpc12experimental33ClientInterceptorFactoryInterfaceESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!41 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4grpc12experimental33ClientInterceptorFactoryInterfaceESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !40, i64 0}
!42 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN4grpc12experimental33ClientInterceptorFactoryInterfaceESt14default_deleteIS3_EESaIS6_EE", !41, i64 0}
!43 = !{!"_ZTSSt6vectorISt10unique_ptrIN4grpc12experimental33ClientInterceptorFactoryInterfaceESt14default_deleteIS3_EESaIS6_EE", !42, i64 0}
!44 = !{!"_ZTSN4grpc7ChannelE", !25, i64 0, !31, i64 8, !13, i64 24, !20, i64 40, !32, i64 72, !35, i64 80, !38, i64 88, !43, i64 96}
!45 = !{!44, !32, i64 72}
!46 = !{!39, !39, i64 0}
!47 = !{!40, !39, i64 16}
!48 = !{!28, !27, i64 0}
!49 = !{!7, !7, i64 0}
!50 = !{!40, !39, i64 0}
!51 = !{!40, !39, i64 8}
!52 = !{!"p1 _ZTSN4grpc12experimental33ClientInterceptorFactoryInterfaceE", !15, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{i8 0, i8 2}
!56 = !{}
!57 = !{ptr @_ZN4grpc8internal11GrpcLibraryD2Ev}
!58 = !{!"_ZTSSt13__atomic_baseImE", !19, i64 0}
!59 = !{!"_ZTSSt6atomicImE", !58, i64 0}
!60 = !{!"p1 _ZTSN9grpc_core8channelz11ChannelNodeE", !15, i64 0}
!61 = !{!"_ZTSN9grpc_core13RefCountedPtrINS_8channelz11ChannelNodeEEE", !60, i64 0}
!62 = !{!"_ZTS26grpc_compression_algorithm", !6, i64 0}
!63 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!64 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !15, i64 0}
!65 = !{!"_ZTSSt18_Rb_tree_node_base", !63, i64 0, !64, i64 8, !64, i64 16, !64, i64 24}
!66 = !{!"_ZTSSt15_Rb_tree_header", !65, i64 0, !19, i64 32}
!67 = !{!16, !16, i64 0}
!68 = !{!"any p2 pointer", !15, i64 0}
!69 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !27, i64 0}
!70 = !{!"p1 _ZTS9grpc_call", !15, i64 0}
!71 = !{!"p1 _ZTSN4grpc13ClientContextE", !15, i64 0}
!72 = !{!"p1 _ZTSSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS2_EE", !15, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !72, i64 0, !72, i64 8, !72, i64 16}
!74 = !{!"p1 _ZTS21grpc_completion_queue", !15, i64 0}
!75 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !15, i64 0}
!76 = !{!"_ZTSNSt8__detail15_List_node_baseE", !75, i64 0, !75, i64 8}
!77 = !{!"_ZTSNSt8__detail17_List_node_headerE", !76, i64 0, !19, i64 16}
!78 = !{!"_ZTSNSt7__cxx1110_List_baseIPKN4grpc6ServerESaIS4_EE10_List_implE", !77, i64 0}
!79 = !{!"_ZTSNSt7__cxx1110_List_baseIPKN4grpc6ServerESaIS4_EEE", !78, i64 0}
!80 = !{!"_ZTSNSt7__cxx114listIPKN4grpc6ServerESaIS4_EEE", !79, i64 0}
!81 = !{!"_ZTSN4grpc15CompletionQueueE", !13, i64 0, !74, i64 16, !19, i64 24, !35, i64 32, !80, i64 40}
!82 = !{!81, !74, i64 16}
!83 = !{!"p1 _ZTS19grpc_slice_refcount", !15, i64 0}
!84 = !{!"_ZTS10grpc_slice", !83, i64 0, !6, i64 8}
!85 = !{!84, !83, i64 0}
!86 = !{!"_ZTSSt22_Optional_payload_baseIN9grpc_core5SliceEE", !6, i64 0, !12, i64 32}
!87 = !{!86, !12, i64 32}
!88 = !{!"_ZTSZN4grpc7Channel18CreateCallInternalERKNS_8internal9RpcMethodEPNS_13ClientContextEPNS_15CompletionQueueEmE3$_0", !71, i64 0}
!89 = !{!88, !71, i64 0}
!90 = !{!"_ZTS19grpc_slice_refcount", !59, i64 0, !15, i64 8}
!91 = !{!90, !15, i64 8}
!92 = !{!"_ZTSZN4grpc7Channel18CreateCallInternalERKNS_8internal9RpcMethodEPNS_13ClientContextEPNS_15CompletionQueueEmE3$_1", !71, i64 0}
!93 = !{!92, !71, i64 0}
!94 = !{!73, !72, i64 0}
!95 = !{!73, !72, i64 8}
!96 = !{!73, !72, i64 16}
!97 = !{!"p1 _ZTSN4grpc12experimental11InterceptorE", !15, i64 0}
!98 = !{!97, !97, i64 0}
!99 = !{!69, !27, i64 0}
!100 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !7, i64 8, !7, i64 12}
!101 = !{!100, !7, i64 8}
!102 = !{!100, !7, i64 12}
!103 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!104 = !{!"p1 _ZTSN4grpc12experimental13ClientRpcInfoE", !15, i64 0}
!105 = !{!"p1 _ZTSN4grpc12experimental13ServerRpcInfoE", !15, i64 0}
!106 = !{!"_ZTSN4grpc8internal4CallE", !36, i64 0, !70, i64 8, !7, i64 16, !104, i64 24, !105, i64 32}
!107 = !{!106, !7, i64 16}
!108 = !{!"_ZTSN4grpc8internal18CompletionQueueTagE"}
!109 = !{!"_ZTSN4grpc12_GLOBAL__N_18TagSaverE", !108, i64 0, !15, i64 8}
!110 = !{!109, !15, i64 8}
!111 = !{!15, !15, i64 0}
!112 = !{ptr @_ZN4grpc15CompletionQueueD2Ev}
!113 = !{!76, !75, i64 0}
!114 = !{ptr @_ZN4grpc15CompletionQueueD2Ev, ptr @_ZN4grpc8internal11GrpcLibraryD2Ev}
!115 = !{!"_ZTS23grpc_cq_completion_type", !6, i64 0}
!116 = !{!"_ZTS20grpc_cq_polling_type", !6, i64 0}
!117 = !{!"p1 _ZTS29grpc_completion_queue_functor", !15, i64 0}
!118 = !{!"_ZTS32grpc_completion_queue_attributes", !7, i64 0, !115, i64 4, !116, i64 8, !117, i64 16}
!119 = !{!118, !7, i64 0}
!120 = !{!118, !115, i64 4}
!121 = !{!118, !116, i64 8}
!122 = !{!118, !117, i64 16}
!123 = !{!33, !19, i64 0}
!124 = !{!76, !75, i64 8}
!125 = !{!77, !19, i64 16}
!126 = !{!"_ZTS29grpc_completion_queue_functor", !15, i64 0, !7, i64 8, !7, i64 12, !117, i64 16}
!127 = !{!"_ZTSN4grpc12_GLOBAL__N_116ShutdownCallbackE", !126, i64 0, !36, i64 24}
!128 = !{!127, !36, i64 24}
!129 = !{!"short", !6, i64 0}
!130 = !{!129, !129, i64 0}
!131 = distinct !{null, null, null}
!132 = distinct !{null, null, null, null, null, null}
!133 = distinct !{!133, !54}
!134 = distinct !{ptr @_ZNSt23enable_shared_from_thisIN4grpc7ChannelEED2Ev, null, null, null}
!135 = !{!"_ZTSN9grpc_core19PolymorphicRefCountE"}
!136 = !{!"_ZTSN9grpc_core14DualRefCountedINS_24UnstartedCallDestinationENS_19PolymorphicRefCountENS_11UnrefDeleteEEE", !135, i64 0, !59, i64 8}
!137 = !{!"_ZTSN9grpc_core24UnstartedCallDestinationE", !136, i64 0}
!138 = !{!"_ZTS22grpc_compression_level", !6, i64 0}
!139 = !{!"_ZTSN24grpc_compression_options38grpc_compression_options_default_levelE", !7, i64 0, !138, i64 4}
!140 = !{!"_ZTSN24grpc_compression_options42grpc_compression_options_default_algorithmE", !7, i64 0, !62, i64 4}
!141 = !{!"_ZTS24grpc_compression_options", !7, i64 0, !139, i64 4, !140, i64 12}
!142 = !{!"_ZTSSt4lessISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE"}
!143 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE", !142, i64 0}
!144 = !{!"_ZTSNSt8_Rb_treeISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_N9grpc_core7Channel14RegisteredCallEESt10_Select1stISC_ESt4lessIS7_ESaISC_EE13_Rb_tree_implISG_Lb1EEE", !143, i64 0, !66, i64 8}
!145 = !{!"_ZTSSt8_Rb_treeISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_N9grpc_core7Channel14RegisteredCallEESt10_Select1stISC_ESt4lessIS7_ESaISC_EE", !144, i64 0}
!146 = !{!"_ZTSSt3mapISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EN9grpc_core7Channel14RegisteredCallESt4lessIS7_ESaIS0_IKS7_SA_EEE", !145, i64 0}
!147 = !{!"p1 _ZTSN9grpc_core18CallArenaAllocatorE", !15, i64 0}
!148 = !{!"_ZTSN9grpc_core13RefCountedPtrINS_18CallArenaAllocatorEEE", !147, i64 0}
!149 = !{!"p1 _ZTSN17grpc_event_engine12experimental15MemoryAllocatorE", !15, i64 0}
!150 = !{!"_ZTSN9grpc_core7ChannelE", !137, i64 0, !20, i64 16, !61, i64 48, !141, i64 56, !35, i64 80, !146, i64 88, !148, i64 136, !149, i64 144}
!151 = !{!150, !149, i64 144}
!152 = !{!"p2 omnipotent char", !68, i64 0}
!153 = !{!152, !152, i64 0}
!154 = !{!61, !60, i64 0}
!155 = distinct !{!155, i1 true, !"_ZN4grpc13ClientContext9authorityB5cxx11Ev"}
!156 = distinct !{!156, !155, !"_ZN4grpc13ClientContext9authorityB5cxx11Ev: argument 0"}
!157 = distinct !{!157, i1 true, !"_ZNK9grpc_core5Slice3RefEv"}
!158 = distinct !{!158, !157, !"_ZNK9grpc_core5Slice3RefEv: argument 0"}
!159 = distinct !{!159, i1 true, !"_ZNK9grpc_core5Slice3RefEv"}
!160 = distinct !{!160, !159, !"_ZNK9grpc_core5Slice3RefEv: argument 0"}
!161 = distinct !{!161, i1 true, !"_ZN9grpc_core12slice_detail9BaseSlice10TakeCSliceEv"}
!162 = distinct !{!162, !161, !"_ZN9grpc_core12slice_detail9BaseSlice10TakeCSliceEv: argument 0"}
!163 = distinct !{!163, i1 true, !"_ZN4grpc21SliceFromCopiedStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!164 = distinct !{!164, !163, !"_ZN4grpc21SliceFromCopiedStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!165 = distinct !{null, null, null, null, null, null, null, null, null, null}
!166 = distinct !{!166, !54}
!167 = distinct !{!167, i1 true, !"_ZNSt23enable_shared_from_thisIN4grpc7ChannelEE16shared_from_thisEv"}
!168 = distinct !{!168, !167, !"_ZNSt23enable_shared_from_thisIN4grpc7ChannelEE16shared_from_thisEv: argument 0"}
!169 = distinct !{!169, !54}
!170 = distinct !{ptr @_ZNSt12__shared_ptrIN4grpc7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!171 = !{!"_ZTSN4grpc8internal9RpcMethod7RpcTypeE", !6, i64 0}
!172 = !{!"_ZTSN4grpc8internal9RpcMethodE", !16, i64 0, !16, i64 8, !171, i64 16, !15, i64 24}
!173 = !{!172, !15, i64 24}
!174 = !{!156}
!175 = !{!"_ZTSSt12__shared_ptrIN4grpc7ChannelELN9__gnu_cxx12_Lock_policyE2EE", !26, i64 0, !69, i64 8}
!176 = !{!"_ZTSSt10shared_ptrIN4grpc7ChannelEE", !175, i64 0}
!177 = !{!"_ZTS14gpr_clock_type", !6, i64 0}
!178 = !{!"_ZTS12gpr_timespec", !19, i64 0, !7, i64 8, !177, i64 12}
!179 = !{!"p1 _ZTSN4grpc15CallCredentialsE", !15, i64 0}
!180 = !{!"_ZTSSt12__shared_ptrIN4grpc15CallCredentialsELN9__gnu_cxx12_Lock_policyE2EE", !179, i64 0, !69, i64 8}
!181 = !{!"_ZTSSt10shared_ptrIN4grpc15CallCredentialsEE", !180, i64 0}
!182 = !{!"p1 _ZTSN4grpc11AuthContextE", !15, i64 0}
!183 = !{!"_ZTSSt12__shared_ptrIKN4grpc11AuthContextELN9__gnu_cxx12_Lock_policyE2EE", !182, i64 0, !69, i64 8}
!184 = !{!"_ZTSSt10shared_ptrIKN4grpc11AuthContextEE", !183, i64 0}
!185 = !{!"p1 _ZTS14census_context", !15, i64 0}
!186 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!187 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !186, i64 0}
!188 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !187, i64 0, !66, i64 8}
!189 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE", !188, i64 0}
!190 = !{!"_ZTSSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE", !189, i64 0}
!191 = !{!"p1 _ZTS13grpc_metadata", !15, i64 0}
!192 = !{!"_ZTS19grpc_metadata_array", !19, i64 0, !19, i64 8, !191, i64 16}
!193 = !{!"_ZTSSt4lessIN4grpc10string_refEE"}
!194 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN4grpc10string_refEEE", !193, i64 0}
!195 = !{!"_ZTSNSt8_Rb_treeIN4grpc10string_refESt4pairIKS1_S1_ESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !194, i64 0, !66, i64 8}
!196 = !{!"_ZTSSt8_Rb_treeIN4grpc10string_refESt4pairIKS1_S1_ESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE", !195, i64 0}
!197 = !{!"_ZTSSt8multimapIN4grpc10string_refES1_St4lessIS1_ESaISt4pairIKS1_S1_EEE", !196, i64 0}
!198 = !{!"_ZTSN4grpc8internal11MetadataMapE", !12, i64 0, !192, i64 8, !197, i64 32}
!199 = !{!"_ZTSN4grpc18PropagationOptionsE", !7, i64 0}
!200 = !{!"_ZTSN4grpc12experimental13ClientRpcInfo4TypeE", !6, i64 0}
!201 = !{!"p1 _ZTSN4grpc16ChannelInterfaceE", !15, i64 0}
!202 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !73, i64 0}
!203 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE", !202, i64 0}
!204 = !{!"_ZTSSt6vectorISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EESaIS6_EE", !203, i64 0}
!205 = !{!"_ZTSN4grpc12experimental13ClientRpcInfoE", !71, i64 0, !200, i64 8, !16, i64 16, !16, i64 24, !201, i64 32, !204, i64 40, !12, i64 64, !19, i64 72}
!206 = !{!"_ZTSN4grpc13ClientContextE", !12, i64 0, !12, i64 1, !12, i64 2, !176, i64 8, !35, i64 24, !70, i64 32, !12, i64 40, !178, i64 48, !20, i64 64, !181, i64 96, !184, i64 112, !185, i64 128, !190, i64 136, !198, i64 184, !198, i64 264, !68, i64 344, !70, i64 352, !199, i64 360, !62, i64 364, !12, i64 368, !20, i64 376, !205, i64 408}
!207 = !{!206, !70, i64 352}
!208 = !{!199, !7, i64 0}
!209 = !{!158}
!210 = !{!83, !83, i64 0}
!211 = !{i64 0, i64 8, !210, i64 8, i64 24, !24}
!212 = !{!160}
!213 = !{!162}
!214 = !{!"_ZTSN4absl12lts_2025051211FunctionRefIFvPN9grpc_core5ArenaEEEE", !6, i64 0, !15, i64 8}
!215 = !{!214, !15, i64 8}
!216 = !{!"_ZTSSt22_Optional_payload_baseIN4absl12lts_2025051211FunctionRefIFvPN9grpc_core5ArenaEEEEE", !6, i64 0, !12, i64 16}
!217 = !{!216, !12, i64 16}
!218 = !{!172, !16, i64 0}
!219 = !{!164}
!220 = !{i64 0, i64 24, !24}
!221 = !{!206, !185, i64 128}
!222 = !{!172, !171, i64 16}
!223 = !{!168}
!224 = !{!29, !26, i64 0}
!225 = !{!175, !26, i64 0}
!226 = !{!106, !36, i64 0}
!227 = !{!106, !70, i64 8}
!228 = !{!106, !104, i64 24}
!229 = !{!106, !105, i64 32}
!230 = distinct !{null, null}
!231 = !{!12, !12, i64 0}
!232 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!233 = !{!126, !15, i64 0}
!234 = !{!126, !7, i64 8}
!235 = !{!"branch_weights", i32 1, i32 1048575}
!236 = !{!"_ZTSNSt12_Vector_baseIPFvPvESaIS2_EE17_Vector_impl_dataE", !68, i64 0, !68, i64 8, !68, i64 16}
!237 = !{!236, !68, i64 8}
!238 = !{!236, !68, i64 0}
!239 = !{!236, !68, i64 16}
!240 = distinct !{!240, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!241 = distinct !{!241, !240, !"_ZSt19__relocate_object_aISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!242 = distinct !{!242, !240, !"_ZSt19__relocate_object_aISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!243 = distinct !{!243, !54, !261, !262}
!244 = distinct !{!244, !54, !262, !261}
!245 = distinct !{!245, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!246 = distinct !{!246, !245, !"_ZSt19__relocate_object_aISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!247 = distinct !{!247, !245, !"_ZSt19__relocate_object_aISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!248 = distinct !{!248, i1 false, !"LVerDomain"}
!249 = distinct !{!249, !248}
!250 = distinct !{!250, !248}
!251 = distinct !{!251, !54, !261, !262}
!252 = distinct !{!252, !54, !261}
!253 = distinct !{!253, !54}
!254 = distinct !{!254, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!255 = distinct !{!255, !254, !"_ZSt19__relocate_object_aISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!256 = distinct !{!256, !254, !"_ZSt19__relocate_object_aISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!257 = distinct !{!257, !54, !261, !262}
!258 = distinct !{!258, !54, !262, !261}
!259 = !{!241}
!260 = !{!242}
!261 = !{!"llvm.loop.isvectorized", i32 1}
!262 = !{!"llvm.loop.unroll.runtime.disable"}
!263 = !{!246}
!264 = !{!247}
!265 = !{!247, !249}
!266 = !{!246, !250}
!267 = !{!249}
!268 = !{!255}
!269 = !{!256}
!270 = distinct !{null}
end_hunk_0
