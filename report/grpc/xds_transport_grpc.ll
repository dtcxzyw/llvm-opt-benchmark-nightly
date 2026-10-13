Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/xds_transport_grpc?download=true
inline.NumInlined: 2463
inline.NumDeleted: 1257
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9grpc_core23GrpcXdsTransportFactory16GrpcXdsTransport17GrpcStreamingCallC2ENS_17WeakRefCountedPtrIS0_EEPNS_7ChannelEPKcSt10unique_ptrINS_19XdsTransportFactory12XdsTransport13StreamingCall12EventHandlerESt14default_deleteISD_EERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESO_ESaISP_EENS_8DurationE:bb.a
  store ptr null, ptr %i.i, align 8, !tbaa !52
  %i.j = icmp eq i64 %6, 9223372036854775807
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  br i1 %i.j, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i, label %_ZTWN9grpc_core9Timestamp25thread_local_time_source_E.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E()
          to label %_ZTWN9grpc_core9Timestamp25thread_local_time_source_E.exit.i unwind label %bb.t

_ZTWN9grpc_core9Timestamp25thread_local_time_source_E.exit.i: ; preds = %bb.c, %bb.b
  %i.k = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke i64 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_ZN9grpc_core9Timestamp3NowEv.exit unwind label %bb.t, !inline_history !220 ; 6 uses

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
          to label %bb.j unwind label %bb.u

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
  %i.an = atomicrmw sub ptr %i.al, i64 1 acq_rel, align 8
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
  %i.av = atomicrmw sub ptr %i.at, i64 1 acq_rel, align 8
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
          to label %_ZN4absl12lts_2025051212log_internal12Check_NEImplIP9grpc_callDnEEPKcRKT_RKT0_S6_.exit unwind label %bb.v

bb.s:                                             ; preds = %_ZN9grpc_core5SliceD2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  invoke void @grpc_metadata_array_init(ptr noundef nonnull %i.bd)
          to label %bb.z unwind label %bb.t

bb.t:                                             ; preds = %_ZTWN9grpc_core9Timestamp25thread_local_time_source_E.exit.i, %bb.c, %bb.z, %bb.s
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.u:                                             ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #36
  call void @_ZN9grpc_core5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #36
  br label %bb.bi

bb.v:                                             ; preds = %bb.r
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

_ZN4absl12lts_2025051212log_internal12Check_NEImplIP9grpc_callDnEEPKcRKT_RKT0_S6_.exit: ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.1, i32 noundef 93, ptr noundef nonnull %i.bc) #37
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %_ZN4absl12lts_2025051212log_internal12Check_NEImplIP9grpc_callDnEEPKcRKT_RKT0_S6_.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.y

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.w
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #35
  unreachable

bb.x:                                             ; preds = %_ZN4absl12lts_2025051212log_internal12Check_NEImplIP9grpc_callDnEEPKcRKT_RKT0_S6_.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  br label %bb.bi

bb.y:                                             ; preds = %bb.w
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #35
  unreachable

bb.z:                                             ; preds = %bb.s
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  invoke void @grpc_metadata_array_init(ptr noundef nonnull %i.bj)
          to label %bb.aa unwind label %bb.t

bb.aa:                                            ; preds = %bb.z
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr @_ZN9grpc_core23GrpcXdsTransportFactory16GrpcXdsTransport17GrpcStreamingCall13OnRequestSentEPvN4absl12lts_202505126StatusE, ptr %i.bk, align 8, !tbaa !232
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %0, ptr %i.bl, align 8, !tbaa !233
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 0, ptr %i.bm, align 8, !tbaa !93
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr @_ZN9grpc_core23GrpcXdsTransportFactory16GrpcXdsTransport17GrpcStreamingCall12OnHalfClosedEPvN4absl12lts_202505126StatusE, ptr %i.bn, align 8, !tbaa !232
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %0, ptr %i.bo, align 8, !tbaa !233
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 0, ptr %i.bp, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %11, i8 0, i64 160, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !96 ; 4 uses
  %i.bs = load ptr, ptr %5, align 8, !tbaa !97    ; 4 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 6                 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !98 ; 2 uses
  %i.bz = load ptr, ptr %i.h, align 8, !tbaa !99  ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = sdiv exact i64 %i.cc, 96                ; 3 uses
  %i.ce = icmp ugt i64 %i.bw, %i.cd
  br i1 %i.ce, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cf = sub nuw nsw i64 %i.bw, %i.cd
  invoke void @_ZNSt6vectorI13grpc_metadataSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.cf)
          to label %._ZNSt6vectorI13grpc_metadataSaIS0_EE6resizeEm.exit_crit_edge unwind label %bb.ae

._ZNSt6vectorI13grpc_metadataSaIS0_EE6resizeEm.exit_crit_edge: ; preds = %bb.ab
  %.pre = load ptr, ptr %i.bq, align 8, !tbaa !96
  %.pre124 = load ptr, ptr %5, align 8, !tbaa !97
  br label %_ZNSt6vectorI13grpc_metadataSaIS0_EE6resizeEm.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cg = icmp ult i64 %i.bw, %i.cd
  br i1 %i.cg, label %bb.ad, label %_ZNSt6vectorI13grpc_metadataSaIS0_EE6resizeEm.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ch = getelementptr inbounds nuw [96 x i8], ptr %i.bz, i64 %i.bw ; 2 uses
  %.not.i.i75 = icmp eq ptr %i.by, %i.ch
  br i1 %.not.i.i75, label %_ZNSt6vectorI13grpc_metadataSaIS0_EE6resizeEm.exit, label %_ZSt8_DestroyIP13grpc_metadataS0_EvT_S2_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP13grpc_metadataS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %bb.ad
  store ptr %i.ch, ptr %i.bx, align 8, !tbaa !98
  br label %_ZNSt6vectorI13grpc_metadataSaIS0_EE6resizeEm.exit

_ZNSt6vectorI13grpc_metadataSaIS0_EE6resizeEm.exit: ; preds = %._ZNSt6vectorI13grpc_metadataSaIS0_EE6resizeEm.exit_crit_edge, %bb.ac, %bb.ad, %_ZSt8_DestroyIP13grpc_metadataS0_EvT_S2_RSaIT0_E.exit.i.i
  %i.ci = phi ptr [ %.pre124, %._ZNSt6vectorI13grpc_metadataSaIS0_EE6resizeEm.exit_crit_edge ], [ %i.bs, %bb.ac ], [ %i.bs, %bb.ad ], [ %i.bs, %_ZSt8_DestroyIP13grpc_metadataS0_EvT_S2_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.cj = phi ptr [ %.pre, %._ZNSt6vectorI13grpc_metadataSaIS0_EE6resizeEm.exit_crit_edge ], [ %i.br, %bb.ac ], [ %i.br, %bb.ad ], [ %i.br, %_ZSt8_DestroyIP13grpc_metadataS0_EvT_S2_RSaIT0_E.exit.i.i ]
  %.not = icmp eq ptr %i.cj, %i.ci
  br i1 %.not, label %_ZN9grpc_core13RefCountedPtrINS_19XdsTransportFactory12XdsTransport13StreamingCallEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorI13grpc_metadataSaIS0_EE6resizeEm.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %bb.af

_ZN9grpc_core13RefCountedPtrINS_19XdsTransportFactory12XdsTransport13StreamingCallEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNSt6vectorI13grpc_metadataSaIS0_EE6resizeEm.exit
  store i32 0, ptr %11, align 16, !tbaa !102
  %i.co = load ptr, ptr %i.bx, align 8, !tbaa !98 ; 2 uses
  %i.cp = load ptr, ptr %i.h, align 8, !tbaa !99  ; 3 uses
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = sdiv exact i64 %i.cs, 96
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store i64 %i.ct, ptr %i.cu, align 16, !tbaa !93
  %i.cv = icmp eq ptr %i.cp, %i.co
  %spec.select = select i1 %i.cv, ptr null, ptr %i.cp
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr %spec.select, ptr %i.cw, align 8, !tbaa !93
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  store i32 160, ptr %i.cx, align 4, !tbaa !234
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr null, ptr %i.cy, align 8, !tbaa !235
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 80
  store i32 4, ptr %i.cz, align 16, !tbaa !102
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 96
  store ptr %i.bd, ptr %i.da, align 16, !tbaa !93
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 84
  store i32 0, ptr %i.db, align 4, !tbaa !234
  %i.dc = getelementptr inbounds nuw i8, ptr %11, i64 88
  store ptr null, ptr %i.dc, align 8, !tbaa !235
  %i.dd = atomicrmw add ptr %i.c, i64 1 monotonic, align 8, !noalias !236 ; 0 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @_ZN9grpc_core23GrpcXdsTransportFactory16GrpcXdsTransport17GrpcStreamingCall21OnRecvInitialMetadataEPvN4absl12lts_202505126StatusE, ptr %i.df, align 8, !tbaa !232
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %0, ptr %i.dg, align 8, !tbaa !233
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.dh, align 8, !tbaa !93
  %i.di = load ptr, ptr %i.ai, align 8, !tbaa !85
  %i.dj = invoke noundef i32 @_Z33grpc_call_start_batch_and_executeP9grpc_callPK7grpc_opmP12grpc_closure(ptr noundef %i.di, ptr noundef nonnull %11, i64 noundef 2, ptr noundef nonnull %i.de)
          to label %bb.as unwind label %bb.av     ; 2 uses

bb.ae:                                            ; preds = %bb.ab
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.af:                                            ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  %i.dl = phi ptr [ %i.ci, %.lr.ph ], [ %i.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ]
  %.0123 = phi i64 [ 0, %.lr.ph ], [ %i.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  %i.dm = getelementptr inbounds nuw [64 x i8], ptr %i.dl, i64 %.0123 ; 2 uses
  store ptr %i.ck, ptr %13, align 8, !tbaa !105
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !107 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !108 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  store i64 %i.dp, ptr %i.b, align 8, !tbaa !109
  %i.dq = icmp ugt i64 %i.dp, 15
  br i1 %i.dq, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.af
  %i.dr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc77 unwind label %bb.ao  ; 2 uses

.noexc77:                                         ; preds = %.noexc.i
  store ptr %i.dr, ptr %13, align 8, !tbaa !107
  %i.ds = load i64, ptr %i.b, align 8, !tbaa !109
  store i64 %i.ds, ptr %i.ck, align 8, !tbaa !93
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc77, %bb.af
  %i.dt = phi ptr [ %i.dr, %.noexc77 ], [ %i.ck, %bb.af ] ; 2 uses
  switch i64 %i.dp, label %bb.ah [
    i64 1, label %bb.ag
    i64 0, label %bb.ai
  ]

bb.ag:                                            ; preds = %._crit_edge.i.i
  %i.du = load i8, ptr %i.dn, align 1, !tbaa !93
  store i8 %i.du, ptr %i.dt, align 1, !tbaa !93
  br label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dt, ptr align 1 %i.dn, i64 %i.dp, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %._crit_edge.i.i
  %i.dv = load i64, ptr %i.b, align 8, !tbaa !109 ; 2 uses
  store i64 %i.dv, ptr %i.cl, align 8, !tbaa !108
  %i.dw = load ptr, ptr %13, align 8, !tbaa !107
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dv
  store i8 0, ptr %i.dx, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  invoke void @_Z26grpc_slice_from_cpp_stringNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%struct.grpc_slice) align 8 %12, ptr noundef nonnull align 8 %13)
          to label %bb.aj unwind label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  %i.dy = load ptr, ptr %i.h, align 8, !tbaa !99
  %i.dz = getelementptr inbounds nuw [96 x i8], ptr %i.dy, i64 %.0123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dz, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false), !tbaa.struct !237
  %i.ea = load ptr, ptr %13, align 8, !tbaa !107  ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.ck
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aj
  %i.ec = load i64, ptr %i.ck, align 8, !tbaa !93
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36
  %i.ee = load ptr, ptr %5, align 8, !tbaa !97
  %i.ef = getelementptr inbounds nuw [64 x i8], ptr %i.ee, i64 %.0123 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  store ptr %i.cm, ptr %15, align 8, !tbaa !105
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !107 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !108 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i64 %i.ej, ptr %i.a, align 8, !tbaa !109
  %i.ek = icmp ugt i64 %i.ej, 15
  br i1 %i.ek, label %.noexc.i79, label %._crit_edge.i.i78

.noexc.i79:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.el = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc80 unwind label %bb.aq  ; 2 uses

.noexc80:                                         ; preds = %.noexc.i79
  store ptr %i.el, ptr %15, align 8, !tbaa !107
  %i.em = load i64, ptr %i.a, align 8, !tbaa !109
  store i64 %i.em, ptr %i.cm, align 8, !tbaa !93
  br label %._crit_edge.i.i78

._crit_edge.i.i78:                                ; preds = %.noexc80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.en = phi ptr [ %i.el, %.noexc80 ], [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  switch i64 %i.ej, label %bb.al [
    i64 1, label %bb.ak
    i64 0, label %bb.am
  ]

bb.ak:                                            ; preds = %._crit_edge.i.i78
  %i.eo = load i8, ptr %i.eh, align 1, !tbaa !93
  store i8 %i.eo, ptr %i.en, align 1, !tbaa !93
  br label %bb.am

bb.al:                                            ; preds = %._crit_edge.i.i78
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.en, ptr align 1 %i.eh, i64 %i.ej, i1 false)
  br label %bb.am
end_hunk_0
