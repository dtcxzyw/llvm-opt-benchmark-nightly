Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/chttp2_transport?download=true
inline.NumInlined: 14543
inline.NumDeleted: 7137
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZNSt11_Deque_baseISt4pairIdN9grpc_core11H2DataTraceILb0EEEESaIS4_EE17_M_initialize_mapEm:_ZNSt11_Deque_baseISt4pairIdN9grpc_core11H2DataTraceILb0EEEESaIS4_EE15_M_allocate_mapEm.exit
.body:                                            ; preds = %bb.b
  %i.z = extractvalue { ptr, i32 } %i.w, 0
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.z) #44 ; 0 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !1151
  %i.ac = load i64, ptr %i.e, align 8, !tbaa !1155
  %i.ad = shl i64 %i.ac, 3
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ad) #43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #48
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.body
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ae

_ZNSt11_Deque_baseISt4pairIdN9grpc_core11H2DataTraceILb0EEEESaIS4_EE15_M_create_nodesEPPS4_S8_.exit: ; preds = %_ZNSt11_Deque_baseISt4pairIdN9grpc_core11H2DataTraceILb0EEEESaIS4_EE16_M_allocate_nodeEv.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.k, ptr %i.ag, align 8, !tbaa !1350
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !1154 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !1351
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 504
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !1352
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = getelementptr inbounds i8, ptr %i.l, i64 -8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.am, ptr %i.an, align 8, !tbaa !1350
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !1154 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !1351
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 504
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !1352
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !1353
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.b
  store ptr %i.as, ptr %i.al, align 8, !tbaa !2873
  ret void

bb.g:                                             ; preds = %bb.e
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #42
  unreachable

bb.h:                                             ; preds = %.body
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051222internal_any_invocable13RemoteInvokerILb0EvRZN9grpc_core8channelz15ZTraceCollectorINS3_29http2_ztrace_collector_detail6ConfigEJNS3_11H2DataTraceILb0EEENS3_13H2HeaderTraceILb0EEENS3_16H2RstStreamTraceILb0EEENS3_15H2SettingsTraceILb0EEENS3_11H2PingTraceILb0EEENS3_13H2GoAwayTraceILb0EEENS3_19H2WindowUpdateTraceILb0EEENS3_15H2SecurityTraceILb0EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENSK_ILb1EEENSM_ILb1EEENS3_19H2UnknownFrameTraceENS3_18H2FlowControlStallENS3_17H2BeginWriteCycleENS3_15H2EndWriteCycleENS3_20H2BeginEndpointWriteENS3_17H2TcpMetricsTraceEEE8Instance18QueueCallbackReadyEvEUlvE_JEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE(ptr noundef %0) #2 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !138
  tail call void @_ZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8Instance18QueueCallbackReadyEvENUlvE_clEv(ptr noundef nonnull align 16 dereferenceable(1808) %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051222internal_any_invocable23RemoteManagerNontrivialIZN9grpc_core8channelz15ZTraceCollectorINS3_29http2_ztrace_collector_detail6ConfigEJNS3_11H2DataTraceILb0EEENS3_13H2HeaderTraceILb0EEENS3_16H2RstStreamTraceILb0EEENS3_15H2SettingsTraceILb0EEENS3_11H2PingTraceILb0EEENS3_13H2GoAwayTraceILb0EEENS3_19H2WindowUpdateTraceILb0EEENS3_15H2SecurityTraceILb0EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENSK_ILb1EEENSM_ILb1EEENS3_19H2UnknownFrameTraceENS3_18H2FlowControlStallENS3_17H2BeginWriteCycleENS3_15H2EndWriteCycleENS3_20H2BeginEndpointWriteENS3_17H2TcpMetricsTraceEEE8Instance18QueueCallbackReadyEvEUlvE_EEvNS1_14FunctionToCallEPNS1_15TypeErasedStateES17_(i1 noundef zeroext %0, ptr noundef %1, ptr noundef %2) #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 16, !tbaa !138   ; 14 uses
  br i1 %0, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %2, align 16, !tbaa !138
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1776 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1792
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !1146
  tail call void %i.e(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull align 16 dereferenceable(32) %i.c) #44, !inline_history !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1680 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !1151 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt5dequeISt4pairIdN9grpc_core11H2DataTraceILb0EEEESaIS5_EELb0EED2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1752
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1720
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1152 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !1153 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = icmp ult ptr %i.j, %i.l
  br i1 %i.m, label %.lr.ph.i.i.i.i.i.i, label %_ZNSt11_Deque_baseISt4pairIdN9grpc_core11H2DataTraceILb0EEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %i.j, %bb.e ] ; 3 uses
  %i.n = load ptr, ptr %.06.i.i.i.i.i.i, align 8, !tbaa !1154
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef 504) #43
  %i.o = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 8
  %i.p = icmp ult ptr %.06.i.i.i.i.i.i, %i.k
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.i, label %_ZNSt11_Deque_baseISt4pairIdN9grpc_core11H2DataTraceILb0EEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i.i.i, !llvm.loop !52

_ZNSt11_Deque_baseISt4pairIdN9grpc_core11H2DataTraceILb0EEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %i.f, align 16, !tbaa !1151
  br label %_ZNSt11_Deque_baseISt4pairIdN9grpc_core11H2DataTraceILb0EEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i.i.i

_ZNSt11_Deque_baseISt4pairIdN9grpc_core11H2DataTraceILb0EEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i.i.i: ; preds = %_ZNSt11_Deque_baseISt4pairIdN9grpc_core11H2DataTraceILb0EEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i.i.i, %bb.e
  %i.q = phi ptr [ %.pre.i.i.i.i.i, %_ZNSt11_Deque_baseISt4pairIdN9grpc_core11H2DataTraceILb0EEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i.i.i ], [ %i.g, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1688
  %i.s = load i64, ptr %i.r, align 8, !tbaa !1155
  %i.t = shl i64 %i.s, 3
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #43
  br label %_ZNSt10_Head_baseILm0ESt5dequeISt4pairIdN9grpc_core11H2DataTraceILb0EEEESaIS5_EELb0EED2Ev.exit.i.i

_ZNSt10_Head_baseILm0ESt5dequeISt4pairIdN9grpc_core11H2DataTraceILb0EEEESaIS5_EELb0EED2Ev.exit.i.i: ; preds = %_ZNSt11_Deque_baseISt4pairIdN9grpc_core11H2DataTraceILb0EEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i.i.i, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 1600 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 16, !tbaa !1156 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i, label %_ZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8Instance18QueueCallbackReadyEvENUlvE_D2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt10_Head_baseILm0ESt5dequeISt4pairIdN9grpc_core11H2DataTraceILb0EEEESaIS5_EELb0EED2Ev.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1672
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 1640
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1157 ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !1158 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = icmp ult ptr %i.y, %i.aa
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i.i.i, label %_ZNSt11_Deque_baseISt4pairIdN9grpc_core13H2HeaderTraceILb0EEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i ], [ %i.y, %bb.f ] ; 3 uses
  %i.ac = load ptr, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !1159
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef 504) #43
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8
  %i.ae = icmp ult ptr %.06.i.i.i.i.i.i.i, %i.z
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i.i.i, label %_ZNSt11_Deque_baseISt4pairIdN9grpc_core13H2HeaderTraceILb0EEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i.i.i.i, !llvm.loop !53

_ZNSt11_Deque_baseISt4pairIdN9grpc_core13H2HeaderTraceILb0EEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.u, align 16, !tbaa !1156
  br label %_ZNSt11_Deque_baseISt4pairIdN9grpc_core13H2HeaderTraceILb0EEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i.i.i.i

_ZNSt11_Deque_baseISt4pairIdN9grpc_core13H2HeaderTraceILb0EEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i.i.i.i: ; preds = %_ZNSt11_Deque_baseISt4pairIdN9grpc_core13H2HeaderTraceILb0EEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i.i.i.i, %bb.f
  %i.af = phi ptr [ %.pre.i.i.i.i.i.i, %_ZNSt11_Deque_baseISt4pairIdN9grpc_core13H2HeaderTraceILb0EEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i.i.i.i ], [ %i.v, %bb.f ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 1608
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !1160
  %i.ai = shl i64 %i.ah, 3
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #43
  br label %_ZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8Instance18QueueCallbackReadyEvENUlvE_D2Ev.exit

_ZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8Instance18QueueCallbackReadyEvENUlvE_D2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt5dequeISt4pairIdN9grpc_core11H2DataTraceILb0EEEESaIS5_EELb0EED2Ev.exit.i.i, %_ZNSt11_Deque_baseISt4pairIdN9grpc_core13H2HeaderTraceILb0EEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i.i.i.i
  tail call void @_ZNSt11_Tuple_implILm2EJSt5dequeISt4pairIdN9grpc_core16H2RstStreamTraceILb0EEEESaIS5_EES0_IS1_IdNS2_15H2SettingsTraceILb0EEEESaISA_EES0_IS1_IdNS2_11H2PingTraceILb0EEEESaISF_EES0_IS1_IdNS2_13H2GoAwayTraceILb0EEEESaISK_EES0_IS1_IdNS2_19H2WindowUpdateTraceILb0EEEESaISP_EES0_IS1_IdNS2_15H2SecurityTraceILb0EEEESaISU_EES0_IS1_IdNS2_11H2DataTraceILb1EEEESaISZ_EES0_IS1_IdNS2_13H2HeaderTraceILb1EEEESaIS14_EES0_IS1_IdNS3_ILb1EEEESaIS18_EES0_IS1_IdNS8_ILb1EEEESaIS1C_EES0_IS1_IdNSD_ILb1EEEESaIS1G_EES0_IS1_IdNSI_ILb1EEEESaIS1K_EES0_IS1_IdNSN_ILb1EEEESaIS1O_EES0_IS1_IdNSS_ILb1EEEESaIS1S_EES0_IS1_IdNS2_19H2UnknownFrameTraceEESaIS1W_EES0_IS1_IdNS2_18H2FlowControlStallEESaIS20_EES0_IS1_IdNS2_17H2BeginWriteCycleEESaIS24_EES0_IS1_IdNS2_15H2EndWriteCycleEESaIS28_EES0_IS1_IdNS2_20H2BeginEndpointWriteEESaIS2C_EES0_IS1_IdNS2_17H2TcpMetricsTraceEESaIS2G_EEEED2Ev(ptr noundef nonnull align 16 dead_on_return(1600) dereferenceable(1808) %i.a) #44
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1808) #43
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %_ZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8Instance18QueueCallbackReadyEvENUlvE_D2Ev.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8Instance18QueueCallbackReadyEvENUlvE_clEv(ptr noundef nonnull align 16 dereferenceable(1808) %0) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.absl::lts_20250512::StatusOr.1502", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.d = tail call ptr @upb_Arena_Init(ptr noundef null, i64 noundef 0, ptr noundef nonnull @upb_alloc_global) ; 29 uses
  %i.e = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__QueryTraceResponse_msg_init, i64 8), align 8, !tbaa !1356
  %i.f = zext i16 %i.e to i64                     ; 5 uses
  %i.g = and i64 %i.f, 7
  %i.h = icmp eq i64 %i.g, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1358
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !1359 ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ult i64 %i.n, %i.f
  br i1 %i.o, label %upb_Arena_Malloc.exit.i.i, label %upb_Arena_Malloc.exit.thread.i.i, !prof !151

upb_Arena_Malloc.exit.thread.i.i:                 ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  store ptr %i.p, ptr %i.d, align 8, !tbaa !1359
  br label %.noexc

upb_Arena_Malloc.exit.i.i:                        ; preds = %bb.a
  %i.q = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.d, i64 noundef %i.f)
          to label %.noexc unwind label %bb.ak

.noexc:                                           ; preds = %upb_Arena_Malloc.exit.i.i, %upb_Arena_Malloc.exit.thread.i.i
  %.sink = phi ptr [ %i.k, %upb_Arena_Malloc.exit.thread.i.i ], [ %i.q, %upb_Arena_Malloc.exit.i.i ] ; 26 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink) ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.sink, i8 0, i64 %i.f, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.s = load i64, ptr %i.r, align 16, !tbaa !1150
  %i.t = getelementptr inbounds nuw i8, ptr %.sink, i64 16
  store i64 %i.s, ptr %i.t, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1680
  invoke void @_ZN9grpc_core8channelz23ztrace_collector_detail13AppendResultsINS_11H2DataTraceILb0EEEEEvRKSt5dequeISt4pairIdT_ESaIS8_EEP35grpc_channelz_v2_QueryTraceResponseP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(80) %i.u, ptr noundef nonnull %.sink, ptr noundef nonnull %i.d)
          to label %bb.b unwind label %bb.ak

bb.b:                                             ; preds = %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1600
  invoke void @_ZN9grpc_core8channelz23ztrace_collector_detail13AppendResultsINS_13H2HeaderTraceILb0EEEEEvRKSt5dequeISt4pairIdT_ESaIS8_EEP35grpc_channelz_v2_QueryTraceResponseP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(80) %i.v, ptr noundef nonnull %.sink, ptr noundef nonnull %i.d)
          to label %bb.c unwind label %bb.ak

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1520
  invoke void @_ZN9grpc_core8channelz23ztrace_collector_detail13AppendResultsINS_16H2RstStreamTraceILb0EEEEEvRKSt5dequeISt4pairIdT_ESaIS8_EEP35grpc_channelz_v2_QueryTraceResponseP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(80) %i.w, ptr noundef nonnull %.sink, ptr noundef nonnull %i.d)
          to label %bb.d unwind label %bb.ak

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1440
  invoke void @_ZN9grpc_core8channelz23ztrace_collector_detail13AppendResultsINS_15H2SettingsTraceILb0EEEEEvRKSt5dequeISt4pairIdT_ESaIS8_EEP35grpc_channelz_v2_QueryTraceResponseP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef nonnull %.sink, ptr noundef nonnull %i.d)
          to label %bb.e unwind label %bb.ak

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1360
  invoke void @_ZN9grpc_core8channelz23ztrace_collector_detail13AppendResultsINS_11H2PingTraceILb0EEEEEvRKSt5dequeISt4pairIdT_ESaIS8_EEP35grpc_channelz_v2_QueryTraceResponseP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(80) %i.y, ptr noundef nonnull %.sink, ptr noundef nonnull %i.d)
          to label %bb.f unwind label %bb.ak

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1280
  invoke void @_ZN9grpc_core8channelz23ztrace_collector_detail13AppendResultsINS_13H2GoAwayTraceILb0EEEEEvRKSt5dequeISt4pairIdT_ESaIS8_EEP35grpc_channelz_v2_QueryTraceResponseP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(80) %i.z, ptr noundef nonnull %.sink, ptr noundef nonnull %i.d)
          to label %bb.g unwind label %bb.ak

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1200
  invoke void @_ZN9grpc_core8channelz23ztrace_collector_detail13AppendResultsINS_19H2WindowUpdateTraceILb0EEEEEvRKSt5dequeISt4pairIdT_ESaIS8_EEP35grpc_channelz_v2_QueryTraceResponseP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, ptr noundef nonnull %.sink, ptr noundef nonnull %i.d)
          to label %bb.h unwind label %bb.ak

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1120
  invoke void @_ZN9grpc_core8channelz23ztrace_collector_detail13AppendResultsINS_15H2SecurityTraceILb0EEEEEvRKSt5dequeISt4pairIdT_ESaIS8_EEP35grpc_channelz_v2_QueryTraceResponseP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(80) %i.ab, ptr noundef nonnull %.sink, ptr noundef nonnull %i.d)
          to label %bb.i unwind label %bb.ak

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1040
  invoke void @_ZN9grpc_core8channelz23ztrace_collector_detail13AppendResultsINS_11H2DataTraceILb1EEEEEvRKSt5dequeISt4pairIdT_ESaIS8_EEP35grpc_channelz_v2_QueryTraceResponseP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(80) %i.ac, ptr noundef nonnull %.sink, ptr noundef nonnull %i.d)
          to label %bb.j unwind label %bb.ak

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 960
  invoke void @_ZN9grpc_core8channelz23ztrace_collector_detail13AppendResultsINS_13H2HeaderTraceILb1EEEEEvRKSt5dequeISt4pairIdT_ESaIS8_EEP35grpc_channelz_v2_QueryTraceResponseP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(80) %i.ad, ptr noundef nonnull %.sink, ptr noundef nonnull %i.d)
          to label %bb.k unwind label %bb.ak

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 880
  invoke void @_ZN9grpc_core8channelz23ztrace_collector_detail13AppendResultsINS_16H2RstStreamTraceILb1EEEEEvRKSt5dequeISt4pairIdT_ESaIS8_EEP35grpc_channelz_v2_QueryTraceResponseP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(80) %i.ae, ptr noundef nonnull %.sink, ptr noundef nonnull %i.d)
          to label %bb.l unwind label %bb.ak

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 800
  invoke void @_ZN9grpc_core8channelz23ztrace_collector_detail13AppendResultsINS_15H2SettingsTraceILb1EEEEEvRKSt5dequeISt4pairIdT_ESaIS8_EEP35grpc_channelz_v2_QueryTraceResponseP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(80) %i.af, ptr noundef nonnull %.sink, ptr noundef nonnull %i.d)
          to label %bb.m unwind label %bb.ak

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 720
  invoke void @_ZN9grpc_core8channelz23ztrace_collector_detail13AppendResultsINS_11H2PingTraceILb1EEEEEvRKSt5dequeISt4pairIdT_ESaIS8_EEP35grpc_channelz_v2_QueryTraceResponseP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(80) %i.ag, ptr noundef nonnull %.sink, ptr noundef nonnull %i.d)
          to label %bb.n unwind label %bb.ak

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 640
  invoke void @_ZN9grpc_core8channelz23ztrace_collector_detail13AppendResultsINS_13H2GoAwayTraceILb1EEEEEvRKSt5dequeISt4pairIdT_ESaIS8_EEP35grpc_channelz_v2_QueryTraceResponseP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, ptr noundef nonnull %.sink, ptr noundef nonnull %i.d)
          to label %bb.o unwind label %bb.ak

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 560
  invoke void @_ZN9grpc_core8channelz23ztrace_collector_detail13AppendResultsINS_19H2WindowUpdateTraceILb1EEEEEvRKSt5dequeISt4pairIdT_ESaIS8_EEP35grpc_channelz_v2_QueryTraceResponseP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, ptr noundef nonnull %.sink, ptr noundef nonnull %i.d)
          to label %bb.p unwind label %bb.ak

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 480
  invoke void @_ZN9grpc_core8channelz23ztrace_collector_detail13AppendResultsINS_15H2SecurityTraceILb1EEEEEvRKSt5dequeISt4pairIdT_ESaIS8_EEP35grpc_channelz_v2_QueryTraceResponseP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(80) %i.aj, ptr noundef nonnull %.sink, ptr noundef nonnull %i.d)
          to label %bb.q unwind label %bb.ak

bb.q:                                             ; preds = %bb.p
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 400
  invoke void @_ZN9grpc_core8channelz23ztrace_collector_detail13AppendResultsINS_19H2UnknownFrameTraceEEEvRKSt5dequeISt4pairIdT_ESaIS7_EEP35grpc_channelz_v2_QueryTraceResponseP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(80) %i.ak, ptr noundef nonnull %.sink, ptr noundef nonnull %i.d)
          to label %bb.r unwind label %bb.ak

bb.r:                                             ; preds = %bb.q
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 320
  invoke void @_ZN9grpc_core8channelz23ztrace_collector_detail13AppendResultsINS_18H2FlowControlStallEEEvRKSt5dequeISt4pairIdT_ESaIS7_EEP35grpc_channelz_v2_QueryTraceResponseP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(80) %i.al, ptr noundef nonnull %.sink, ptr noundef nonnull %i.d)
          to label %bb.s unwind label %bb.ak

bb.s:                                             ; preds = %bb.r
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 240
  invoke void @_ZN9grpc_core8channelz23ztrace_collector_detail13AppendResultsINS_17H2BeginWriteCycleEEEvRKSt5dequeISt4pairIdT_ESaIS7_EEP35grpc_channelz_v2_QueryTraceResponseP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(80) %i.am, ptr noundef nonnull %.sink, ptr noundef nonnull %i.d)
          to label %bb.t unwind label %bb.ak

bb.t:                                             ; preds = %bb.s
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 160
  invoke void @_ZN9grpc_core8channelz23ztrace_collector_detail13AppendResultsINS_15H2EndWriteCycleEEEvRKSt5dequeISt4pairIdT_ESaIS7_EEP35grpc_channelz_v2_QueryTraceResponseP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(80) %i.an, ptr noundef nonnull %.sink, ptr noundef nonnull %i.d)
          to label %bb.u unwind label %bb.ak

bb.u:                                             ; preds = %bb.t
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_ZN9grpc_core8channelz23ztrace_collector_detail13AppendResultsINS_20H2BeginEndpointWriteEEEvRKSt5dequeISt4pairIdT_ESaIS7_EEP35grpc_channelz_v2_QueryTraceResponseP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(80) %i.ao, ptr noundef nonnull %.sink, ptr noundef nonnull %i.d)
          to label %bb.v unwind label %bb.ak

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN9grpc_core8channelz23ztrace_collector_detail13AppendResultsINS_17H2TcpMetricsTraceEEEvRKSt5dequeISt4pairIdT_ESaIS7_EEP35grpc_channelz_v2_QueryTraceResponseP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %.sink, ptr noundef nonnull %i.d)
          to label %bb.w unwind label %bb.ak

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #44
  store i64 0, ptr %i.c, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #44
  %i.ap = invoke i32 @upb_Encode(ptr noundef nonnull %.sink, ptr noundef nonnull @grpc__channelz__v2__QueryTraceResponse_msg_init, i32 noundef 0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
          to label %bb.x unwind label %bb.al      ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !638 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #44
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1776
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  %i.as = load i64, ptr %i.c, align 8, !tbaa !129 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 12 uses
  store ptr %i.at, ptr %2, align 8, !tbaa !135
  %i.au = icmp eq ptr %i.aq, null
  %i.av = icmp ne i64 %i.as, 0
  %or.cond.i = and i1 %i.au, %i.av
  br i1 %or.cond.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.308) #48
          to label %.noexc36 unwind label %bb.am

.noexc36:                                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #44
  store i64 %i.as, ptr %i.a, align 8, !tbaa !129
  %i.aw = icmp ugt i64 %i.as, 15
  br i1 %i.aw, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.z
  %i.ax = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc37 unwind label %bb.am  ; 2 uses

.noexc37:                                         ; preds = %.noexc.i
  store ptr %i.ax, ptr %2, align 8, !tbaa !137
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !129
  store i64 %i.ay, ptr %i.at, align 8, !tbaa !138
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc37, %bb.z
  %i.az = phi ptr [ %i.ax, %.noexc37 ], [ %i.at, %bb.z ] ; 2 uses
  switch i64 %i.as, label %bb.ab [
    i64 1, label %bb.aa
    i64 0, label %bb.ac
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i
  %i.ba = load i8, ptr %i.aq, align 1, !tbaa !138
  store i8 %i.ba, ptr %i.az, align 1, !tbaa !138
  br label %bb.ac

bb.ab:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr align 1 %i.aq, i64 %i.as, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %._crit_edge.i.i
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !129 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !139
  %i.bd = load ptr, ptr %2, align 8, !tbaa !137
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb
  store i8 0, ptr %i.be, align 1, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !135
  %i.bh = load ptr, ptr %2, align 8, !tbaa !137   ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.at
  br i1 %i.bi, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.bj = load i64, ptr %i.bc, align 8, !tbaa !139 ; 3 uses
  %i.bk = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %i.bk)
  %i.bl = add nuw nsw i64 %i.bj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bg, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.bl, i1 false)
  br label %bb.ae

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ac
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !137
  %i.bm = load i64, ptr %i.at, align 8, !tbaa !138
  store i64 %i.bm, ptr %i.bg, align 8, !tbaa !138
  %.pre = load i64, ptr %i.bc, align 8, !tbaa !139
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i, %bb.ad
  %i.bn = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.bj, %bb.ad ]
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_0
