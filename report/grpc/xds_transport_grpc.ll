Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/xds_transport_grpc?download=true
inline.NumInlined: 2463
inline.NumDeleted: 1257
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9grpc_core23GrpcXdsTransportFactory16GrpcXdsTransport17GrpcStreamingCallC2ENS_17WeakRefCountedPtrIS0_EEPNS_7ChannelEPKcSt10unique_ptrINS_19XdsTransportFactory12XdsTransport13StreamingCall12EventHandlerESt14default_deleteISD_EERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESO_ESaISP_EENS_8DurationE:bb.a
  %i.g = load i64, ptr %4, align 8, !tbaa !27
  store i64 %i.g, ptr %i.f, align 8, !tbaa !27
  store ptr null, ptr %4, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr null, ptr %i.i, align 8, !tbaa !52
  %i.j = icmp eq i64 %6, 9223372036854775807
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  br i1 %i.j, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i, label %_ZTWN9grpc_core9Timestamp25thread_local_time_source_E.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E()
          to label %_ZTWN9grpc_core9Timestamp25thread_local_time_source_E.exit.i unwind label %bb.u

_ZTWN9grpc_core9Timestamp25thread_local_time_source_E.exit.i: ; preds = %bb.c, %bb.b
  %i.k = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke i64 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_ZN9grpc_core9Timestamp3NowEv.exit unwind label %bb.u, !inline_history !220 ; 6 uses

_ZN9grpc_core9Timestamp3NowEv.exit:               ; preds = %_ZTWN9grpc_core9Timestamp25thread_local_time_source_E.exit.i
  %i.p = icmp eq i64 %i.o, 9223372036854775807
  br i1 %i.p, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_ZN9grpc_core9Timestamp3NowEv.exit
  %i.q = icmp eq i64 %i.o, -9223372036854775808
  %i.r = icmp eq i64 %6, -9223372036854775808
  %or.cond9.i.i = or i1 %i.r, %i.q
  br i1 %or.cond9.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp sgt i64 %i.o, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = sub nuw nsw i64 9223372036854775807, %i.o
  %i.u = icmp sgt i64 %6, %i.t
  br i1 %i.u, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = sub nsw i64 -9223372036854775808, %i.o
  %i.w = icmp slt i64 %6, %i.v
  br i1 %i.w, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = add nsw i64 %i.o, %6
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZN9grpc_core9Timestamp3NowEv.exit, %bb.d, %bb.f, %bb.g, %bb.h
  %.sroa.036.0 = phi i64 [ 9223372036854775807, %bb.a ], [ -9223372036854775808, %bb.d ], [ 9223372036854775807, %_ZN9grpc_core9Timestamp3NowEv.exit ], [ -9223372036854775808, %bb.g ], [ %i.x, %bb.h ], [ 9223372036854775807, %bb.f ]
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #34, !noalias !228
  store ptr inttoptr (i64 1 to ptr), ptr %7, align 8, !tbaa !81, !alias.scope !229
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ab, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !229
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %3, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !229
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  store i8 0, ptr %i.ac, align 8, !tbaa !84
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 0, ptr %i.ad, align 8, !tbaa !231
  %i.ae = load ptr, ptr %2, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = invoke noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(152) %2, ptr noundef null, i32 noundef 65535, ptr noundef null, ptr noundef %i.aa, ptr noundef nonnull align 8 %7, ptr noundef nonnull align 8 %8, i64 %.sroa.036.0, i1 noundef zeroext true, ptr noundef nonnull byval(%"class.std::optional.24") align 8 %9)
          to label %bb.j unwind label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !85
  %i.aj = load i8, ptr %i.ac, align 8, !tbaa !84, !range !86, !noundef !87
  %i.ak = trunc nuw i8 %i.aj to i1
  store i8 0, ptr %i.ac, align 8, !tbaa !84
  br i1 %i.ak, label %bb.k, label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.al = load ptr, ptr %8, align 8, !tbaa !88    ; 4 uses
  %i.am = icmp ugt ptr %i.al, inttoptr (i64 1 to ptr)
  br i1 %i.am, label %bb.l, label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.an = atomicrmw add ptr %i.al, i64 -1 acq_rel, align 8
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.m, label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !90
  invoke void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.al)
          to label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit unwind label %bb.n, !inline_history !0

bb.n:                                             ; preds = %bb.m
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #35
  unreachable

_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit: ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %i.at = load ptr, ptr %7, align 8, !tbaa !88    ; 4 uses
  %i.au = icmp ugt ptr %i.at, inttoptr (i64 1 to ptr)
  br i1 %i.au, label %bb.o, label %_ZN9grpc_core5SliceD2Ev.exit

bb.o:                                             ; preds = %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit
  %i.av = atomicrmw add ptr %i.at, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.p, label %_ZN9grpc_core5SliceD2Ev.exit

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !90
  invoke void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.at)
          to label %_ZN9grpc_core5SliceD2Ev.exit unwind label %bb.q, !inline_history !0

bb.q:                                             ; preds = %bb.p
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #35
  unreachable

_ZN9grpc_core5SliceD2Ev.exit:                     ; preds = %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit, %bb.o, %bb.p
  %i.bb = load ptr, ptr %i.ai, align 8, !tbaa !91
  %.not.i = icmp eq ptr %i.bb, null
  br i1 %.not.i, label %bb.r, label %bb.s, !prof !92

bb.r:                                             ; preds = %_ZN9grpc_core5SliceD2Ev.exit
  %i.bc = invoke noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIPKvS4_EEPKcT_T0_S6_(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str)
          to label %_ZN4absl12lts_2025051212log_internal12Check_NEImplIP9grpc_callDnEEPKcRKT_RKT0_S6_.exit unwind label %bb.u

bb.s:                                             ; preds = %_ZN9grpc_core5SliceD2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  invoke void @grpc_metadata_array_init(ptr noundef nonnull %i.bd)
          to label %bb.y unwind label %bb.u

bb.t:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #36
  call void @_ZN9grpc_core5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #36
  br label %bb.be

bb.u:                                             ; preds = %bb.s, %bb.y, %bb.c, %_ZTWN9grpc_core9Timestamp25thread_local_time_source_E.exit.i, %bb.r
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

_ZN4absl12lts_2025051212log_internal12Check_NEImplIP9grpc_callDnEEPKcRKT_RKT0_S6_.exit: ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.1, i32 noundef 93, ptr noundef nonnull %i.bc) #37
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %_ZN4absl12lts_2025051212log_internal12Check_NEImplIP9grpc_callDnEEPKcRKT_RKT0_S6_.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.x

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.v
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #35
  unreachable

bb.w:                                             ; preds = %_ZN4absl12lts_2025051212log_internal12Check_NEImplIP9grpc_callDnEEPKcRKT_RKT0_S6_.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  br label %bb.be

bb.x:                                             ; preds = %bb.v
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #35
  unreachable

bb.y:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  invoke void @grpc_metadata_array_init(ptr noundef nonnull %i.bi)
          to label %bb.z unwind label %bb.u

bb.z:                                             ; preds = %bb.y
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr @_ZN9grpc_core23GrpcXdsTransportFactory16GrpcXdsTransport17GrpcStreamingCall13OnRequestSentEPvN4absl12lts_202505126StatusE, ptr %i.bj, align 8, !tbaa !232
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %0, ptr %i.bk, align 8, !tbaa !233
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 0, ptr %i.bl, align 8, !tbaa !93
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr @_ZN9grpc_core23GrpcXdsTransportFactory16GrpcXdsTransport17GrpcStreamingCall12OnHalfClosedEPvN4absl12lts_202505126StatusE, ptr %i.bm, align 8, !tbaa !232
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %0, ptr %i.bn, align 8, !tbaa !233
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 0, ptr %i.bo, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  %18 = getelementptr inbounds nuw i8, ptr %11, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %18, i8 0, i64 128, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !96 ; 4 uses
  %i.br = load ptr, ptr %5, align 8, !tbaa !97    ; 4 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = ashr exact i64 %i.bu, 6                 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !98 ; 2 uses
  %i.by = load ptr, ptr %i.h, align 8, !tbaa !99  ; 2 uses
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = sdiv exact i64 %i.cb, 96                ; 3 uses
  %i.cd = icmp ugt i64 %i.bv, %i.cc
  br i1 %i.cd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ce = sub nuw nsw i64 %i.bv, %i.cc
  invoke void @_ZNSt6vectorI13grpc_metadataSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.ce)
          to label %._ZNSt6vectorI13grpc_metadataSaIS0_EE6resizeEm.exit_crit_edge unwind label %bb.az

._ZNSt6vectorI13grpc_metadataSaIS0_EE6resizeEm.exit_crit_edge: ; preds = %bb.aa
  %.pre = load ptr, ptr %i.bp, align 8, !tbaa !96
  %.pre124 = load ptr, ptr %5, align 8, !tbaa !97
  br label %_ZNSt6vectorI13grpc_metadataSaIS0_EE6resizeEm.exit

bb.ab:                                            ; preds = %bb.z
  %i.cf = icmp ult i64 %i.bv, %i.cc
  br i1 %i.cf, label %bb.ac, label %_ZNSt6vectorI13grpc_metadataSaIS0_EE6resizeEm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cg = getelementptr inbounds nuw [96 x i8], ptr %i.by, i64 %i.bv ; 2 uses
  %.not.i.i75 = icmp eq ptr %i.bx, %i.cg
  br i1 %.not.i.i75, label %_ZNSt6vectorI13grpc_metadataSaIS0_EE6resizeEm.exit, label %_ZSt8_DestroyIP13grpc_metadataS0_EvT_S2_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP13grpc_metadataS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %bb.ac
  store ptr %i.cg, ptr %i.bw, align 8, !tbaa !98
  br label %_ZNSt6vectorI13grpc_metadataSaIS0_EE6resizeEm.exit

_ZNSt6vectorI13grpc_metadataSaIS0_EE6resizeEm.exit: ; preds = %._ZNSt6vectorI13grpc_metadataSaIS0_EE6resizeEm.exit_crit_edge, %bb.ab, %bb.ac, %_ZSt8_DestroyIP13grpc_metadataS0_EvT_S2_RSaIT0_E.exit.i.i
  %i.ch = phi ptr [ %.pre124, %._ZNSt6vectorI13grpc_metadataSaIS0_EE6resizeEm.exit_crit_edge ], [ %i.br, %bb.ab ], [ %i.br, %bb.ac ], [ %i.br, %_ZSt8_DestroyIP13grpc_metadataS0_EvT_S2_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.ci = phi ptr [ %.pre, %._ZNSt6vectorI13grpc_metadataSaIS0_EE6resizeEm.exit_crit_edge ], [ %i.bq, %bb.ab ], [ %i.bq, %bb.ac ], [ %i.bq, %_ZSt8_DestroyIP13grpc_metadataS0_EvT_S2_RSaIT0_E.exit.i.i ]
  %.not = icmp eq ptr %i.ci, %i.ch
  br i1 %.not, label %_ZN9grpc_core13RefCountedPtrINS_19XdsTransportFactory12XdsTransport13StreamingCallEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorI13grpc_metadataSaIS0_EE6resizeEm.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %bb.ad

_ZN9grpc_core13RefCountedPtrINS_19XdsTransportFactory12XdsTransport13StreamingCallEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNSt6vectorI13grpc_metadataSaIS0_EE6resizeEm.exit
  store i32 0, ptr %11, align 16, !tbaa !102
  %i.cn = load ptr, ptr %i.bw, align 8, !tbaa !98 ; 2 uses
  %i.co = load ptr, ptr %i.h, align 8, !tbaa !99  ; 3 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = sdiv exact i64 %i.cr, 96
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store i64 %i.cs, ptr %i.ct, align 16, !tbaa !93
  %i.cu = icmp eq ptr %i.co, %i.cn
  %spec.select = select i1 %i.cu, ptr null, ptr %i.co
  %i.cv = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr %spec.select, ptr %i.cv, align 8, !tbaa !93
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  store i32 160, ptr %i.cw, align 4, !tbaa !234
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr null, ptr %i.cx, align 8, !tbaa !235
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 80
  store i32 4, ptr %i.cy, align 16, !tbaa !102
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 96
  store ptr %i.bd, ptr %i.cz, align 16, !tbaa !93
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 84
  store i32 0, ptr %i.da, align 4, !tbaa !234
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 88
  store ptr null, ptr %i.db, align 8, !tbaa !235
  %i.dc = atomicrmw add ptr %i.c, i64 1 monotonic, align 8, !noalias !236 ; 0 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @_ZN9grpc_core23GrpcXdsTransportFactory16GrpcXdsTransport17GrpcStreamingCall21OnRecvInitialMetadataEPvN4absl12lts_202505126StatusE, ptr %i.de, align 8, !tbaa !232
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %0, ptr %i.df, align 8, !tbaa !233
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.dg, align 8, !tbaa !93
  %i.dh = load ptr, ptr %i.ai, align 8, !tbaa !85
  %i.di = invoke noundef i32 @_Z33grpc_call_start_batch_and_executeP9grpc_callPK7grpc_opmP12grpc_closure(ptr noundef %i.dh, ptr noundef nonnull %11, i64 noundef 2, ptr noundef nonnull %i.dd)
          to label %bb.aq unwind label %bb.az     ; 2 uses

bb.ad:                                            ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  %i.dj = phi ptr [ %i.ch, %.lr.ph ], [ %i.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ]
  %.0123 = phi i64 [ 0, %.lr.ph ], [ %i.ex, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  %i.dk = getelementptr inbounds nuw [64 x i8], ptr %i.dj, i64 %.0123 ; 2 uses
  store ptr %i.cj, ptr %13, align 8, !tbaa !105
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !107 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !108 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  store i64 %i.dn, ptr %i.b, align 8, !tbaa !109
  %i.do = icmp ugt i64 %i.dn, 15
  br i1 %i.do, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.ad
  %i.dp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc77 unwind label %bb.am  ; 2 uses

.noexc77:                                         ; preds = %.noexc.i
  store ptr %i.dp, ptr %13, align 8, !tbaa !107
  %i.dq = load i64, ptr %i.b, align 8, !tbaa !109
  store i64 %i.dq, ptr %i.cj, align 8, !tbaa !93
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc77, %bb.ad
  %i.dr = phi ptr [ %i.dp, %.noexc77 ], [ %i.cj, %bb.ad ] ; 2 uses
  switch i64 %i.dn, label %bb.af [
    i64 1, label %bb.ae
    i64 0, label %bb.ag
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i
  %i.ds = load i8, ptr %i.dl, align 1, !tbaa !93
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !93
  br label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dr, ptr align 1 %i.dl, i64 %i.dn, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %._crit_edge.i.i
  %i.dt = load i64, ptr %i.b, align 8, !tbaa !109 ; 2 uses
  store i64 %i.dt, ptr %i.ck, align 8, !tbaa !108
  %i.du = load ptr, ptr %13, align 8, !tbaa !107
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dt
  store i8 0, ptr %i.dv, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  invoke void @_Z26grpc_slice_from_cpp_stringNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%struct.grpc_slice) align 8 %12, ptr noundef nonnull align 8 %13)
          to label %bb.ah unwind label %bb.an

bb.ah:                                            ; preds = %bb.ag
  %i.dw = load ptr, ptr %i.h, align 8, !tbaa !99
  %i.dx = getelementptr inbounds nuw [96 x i8], ptr %i.dw, i64 %.0123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dx, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false), !tbaa.struct !237
  %i.dy = load ptr, ptr %13, align 8, !tbaa !107  ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.cj
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ah
  %i.ea = load i64, ptr %i.cj, align 8, !tbaa !93
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36
  %i.ec = load ptr, ptr %5, align 8, !tbaa !97
  %i.ed = getelementptr inbounds nuw [64 x i8], ptr %i.ec, i64 %.0123 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  store ptr %i.cl, ptr %15, align 8, !tbaa !105
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !107 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !108 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i64 %i.eh, ptr %i.a, align 8, !tbaa !109
  %i.ei = icmp ugt i64 %i.eh, 15
  br i1 %i.ei, label %.noexc.i79, label %._crit_edge.i.i78

.noexc.i79:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ej = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc80 unwind label %bb.ao  ; 2 uses

.noexc80:                                         ; preds = %.noexc.i79
  store ptr %i.ej, ptr %15, align 8, !tbaa !107
  %i.ek = load i64, ptr %i.a, align 8, !tbaa !109
  store i64 %i.ek, ptr %i.cl, align 8, !tbaa !93
  br label %._crit_edge.i.i78

._crit_edge.i.i78:                                ; preds = %.noexc80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.el = phi ptr [ %i.ej, %.noexc80 ], [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  switch i64 %i.eh, label %bb.aj [
    i64 1, label %bb.ai
    i64 0, label %bb.ak
  ]

bb.ai:                                            ; preds = %._crit_edge.i.i78
  %i.em = load i8, ptr %i.ef, align 1, !tbaa !93
  store i8 %i.em, ptr %i.el, align 1, !tbaa !93
  br label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.i.i78
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.el, ptr align 1 %i.ef, i64 %i.eh, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge.i.i78
  %i.en = load i64, ptr %i.a, align 8, !tbaa !109 ; 2 uses
  store i64 %i.en, ptr %i.cm, align 8, !tbaa !108
  %i.eo = load ptr, ptr %15, align 8, !tbaa !107
end_hunk_0
