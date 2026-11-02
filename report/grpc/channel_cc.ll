Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/channel_cc?download=true
inline.NumInlined: 493
inline.NumDeleted: 339
begin_hunk_0_@_ZNK4grpc7Channel20GetServiceConfigJSONB5cxx11Ev
define void @_ZNK4grpc7Channel20GetServiceConfigJSONB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %struct.grpc_channel_info, align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  call fastcc void @_ZN4grpc12_GLOBAL__N_119GetChannelInfoFieldB5cxx11EP12grpc_channelP17grpc_channel_infoPPPc(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %i.b, ptr noundef %2, ptr noundef %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4grpc12experimental29ChannelResetConnectionBackoffEPNS_7ChannelE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  tail call void @grpc_channel_reset_connect_backoff(ptr noundef %i.b)
  ret void
}

declare void @grpc_channel_reset_connect_backoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN4grpc12experimental22ChannelGetChannelzUuidEPNS_7ChannelE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !154  ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN9grpc_core8channelz8BaseNode4uuidEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = load atomic i64, ptr %i.f monotonic, align 8 ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %_ZN9grpc_core8channelz8BaseNode4uuidEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_ZN9grpc_core8channelz8BaseNode8UuidSlowEv(ptr noundef nonnull align 8 dereferenceable(232) %i.d)
  br label %_ZN9grpc_core8channelz8BaseNode4uuidEv.exit

_ZN9grpc_core8channelz8BaseNode4uuidEv.exit:      ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.i, %bb.c ], [ %i.g, %bb.b ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN4grpc7Channel18CreateCallInternalERKNS_8internal9RpcMethodEPNS_13ClientContextEPNS_15CompletionQueueEm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.grpc::internal::Call") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.grpc_core::Slice", align 8  ; 4 uses
  %8 = alloca %"class.std::optional", align 8     ; 7 uses
  %9 = alloca %"class.grpc_core::Slice", align 8  ; 6 uses
  %10 = alloca %struct.gpr_timespec, align 16     ; 2 uses
  %11 = alloca %"class.std::optional.58", align 8 ; 4 uses
  %12 = alloca %class.anon, align 8               ; 5 uses
  %13 = alloca %struct.grpc_slice, align 8        ; 7 uses
  %.sroa.7 = alloca %"union.grpc_slice::grpc_slice_data", align 8 ; 6 uses
  %14 = alloca %struct.grpc_slice, align 8        ; 5 uses
  %15 = alloca %"class.grpc_core::Slice", align 8 ; 4 uses
  %16 = alloca %"class.std::optional", align 8    ; 7 uses
  %17 = alloca %struct.gpr_timespec, align 16     ; 2 uses
  %18 = alloca %"class.std::optional.58", align 8 ; 4 uses
  %19 = alloca %class.anon.66, align 8            ; 5 uses
  %20 = alloca %struct.grpc_slice, align 8        ; 3 uses
  %21 = alloca %"class.std::shared_ptr", align 8  ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !173
  %.not.not = icmp eq ptr %i.c, null
  br i1 %.not.not, label %.critedge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.e, ptr %6, align 8, !tbaa !18, !alias.scope !174
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !21, !noalias !174 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22, !noalias !174 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !174
  store i64 %i.h, ptr %i.a, align 8, !tbaa !23, !noalias !174
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %6, align 8, !tbaa !21, !alias.scope !174
  %i.k = load i64, ptr %i.a, align 8, !tbaa !23, !noalias !174
  store i64 %i.k, ptr %i.e, align 8, !tbaa !24, !alias.scope !174
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.l = phi ptr [ %i.j, %.noexc.i.i ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.h, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !24
  store i8 %i.m, ptr %i.l, align 1, !tbaa !24
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.n = load i64, ptr %i.a, align 8, !tbaa !23, !noalias !174 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.n, ptr %i.o, align 8, !tbaa !22, !alias.scope !174
  %i.p = load ptr, ptr %6, align 8, !tbaa !21, !alias.scope !174
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !174
  %i.r = load i64, ptr %i.o, align 8, !tbaa !22   ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = load ptr, ptr %6, align 8, !tbaa !21     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.e
  br i1 %i.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.e
  %i.v = icmp ult i64 %i.r, 16
  call void @llvm.assume(i1 %i.v)
  br label %.critedge

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.w = load i64, ptr %i.e, align 8, !tbaa !24
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #29
  br label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %i.s, label %bb.f, label %.critedge.thread

bb.f:                                             ; preds = %.critedge
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !173  ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 352
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !207
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 360
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !208
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !82
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !85, !noalias !209 ; 2 uses
  %i.ai = icmp ugt ptr %i.ah, inttoptr (i64 1 to ptr)
  br i1 %i.ai, label %bb.g, label %_ZNK9grpc_core5Slice3RefEv.exit

bb.g:                                             ; preds = %bb.f
  %i.aj = atomicrmw add ptr %i.ah, i64 1 monotonic, align 8, !noalias !209 ; 0 uses
  br label %_ZNK9grpc_core5Slice3RefEv.exit

_ZNK9grpc_core5Slice3RefEv.exit:                  ; preds = %bb.f, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false), !tbaa.struct !211
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.am = load i8, ptr %i.al, align 8, !tbaa !87, !range !55, !noundef !56
  %i.an = trunc nuw i8 %i.am to i1                ; 3 uses
  br i1 %i.an, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZNK9grpc_core5Slice3RefEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !85, !noalias !212 ; 2 uses
  %i.ap = icmp ugt ptr %i.ao, inttoptr (i64 1 to ptr)
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = atomicrmw add ptr %i.ao, i64 1 monotonic, align 8, !noalias !212 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false), !noalias !213
  br label %bb.k

bb.k:                                             ; preds = %_ZNK9grpc_core5Slice3RefEv.exit, %bb.j
  %.sink = phi i8 [ 1, %bb.j ], [ 0, %_ZNK9grpc_core5Slice3RefEv.exit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 %.sink, ptr %i.ar, align 8, !tbaa !87
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.at = load <2 x i64>, ptr %i.as, align 8
  store <2 x i64> %i.at, ptr %10, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  store ptr %3, ptr %12, align 8, !tbaa !89
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN4grpc7Channel18CreateCallInternalERKNS3_8internal9RpcMethodEPNS3_13ClientContextEPNS3_15CompletionQueueEmE3$_0vJPN9grpc_core5ArenaEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %i.au, align 8, !tbaa !215
  store ptr %12, ptr %11, align 8, !tbaa !24
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i8 1, ptr %i.av, align 8, !tbaa !217
  %i.aw = invoke noundef ptr @_Z40grpc_channel_create_call_with_arena_initP12grpc_channelP9grpc_calljP21grpc_completion_queueN9grpc_core5SliceESt8optionalIS6_E12gpr_timespecbS7_IN4absl12lts_2025051211FunctionRefIFvPNS5_5ArenaEEEEE(ptr noundef %i.aa, ptr noundef %i.ac, i32 noundef %i.ae, ptr noundef %i.ag, ptr noundef nonnull align 8 %7, ptr noundef nonnull align 8 %8, ptr noundef nonnull byval(%struct.gpr_timespec) align 8 %10, i1 noundef zeroext true, ptr noundef nonnull byval(%"class.std::optional.58") align 8 %11)
          to label %bb.l unwind label %bb.ab      ; 3 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !87, !range !55, !noundef !56
  %i.az = trunc nuw i8 %i.ay to i1                ; 2 uses
  br i1 %i.an, label %.critedge74, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.az, label %bb.n, label %.critedge77

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr %i.ax, align 8, !tbaa !87
  %i.ba = load ptr, ptr %8, align 8, !tbaa !85    ; 4 uses
  %i.bb = icmp ugt ptr %i.ba, inttoptr (i64 1 to ptr)
  br i1 %i.bb, label %bb.o, label %.critedge77

bb.o:                                             ; preds = %bb.n
  %i.bc = atomicrmw add ptr %i.ba, i64 -1 acq_rel, align 8
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.p, label %.critedge77

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !91
  invoke void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.ba)
          to label %.critedge77 unwind label %bb.q, !inline_history !0

bb.q:                                             ; preds = %bb.p
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #30
  unreachable

.critedge74:                                      ; preds = %bb.l
  br i1 %i.az, label %bb.r, label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit85

bb.r:                                             ; preds = %.critedge74
  store i8 0, ptr %i.ax, align 8, !tbaa !87
  %i.bi = load ptr, ptr %8, align 8, !tbaa !85    ; 4 uses
  %i.bj = icmp ugt ptr %i.bi, inttoptr (i64 1 to ptr)
  br i1 %i.bj, label %bb.s, label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit85

bb.s:                                             ; preds = %bb.r
  %i.bk = atomicrmw add ptr %i.bi, i64 -1 acq_rel, align 8
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.t, label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit85

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !91
  invoke void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bi)
          to label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit85 unwind label %bb.u, !inline_history !0

bb.u:                                             ; preds = %bb.t
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #30
  unreachable

_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit85: ; preds = %.critedge74, %bb.r, %bb.s, %bb.t
  %i.bq = load ptr, ptr %9, align 8, !tbaa !85    ; 4 uses
  %i.br = icmp ugt ptr %i.bq, inttoptr (i64 1 to ptr)
  br i1 %i.br, label %bb.v, label %_ZN9grpc_core5SliceD2Ev.exit

bb.v:                                             ; preds = %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit85
  %i.bs = atomicrmw add ptr %i.bq, i64 -1 acq_rel, align 8
  %i.bt = icmp eq i64 %i.bs, 1
  br i1 %i.bt, label %bb.w, label %_ZN9grpc_core5SliceD2Ev.exit

bb.w:                                             ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !91
  invoke void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq)
          to label %_ZN9grpc_core5SliceD2Ev.exit unwind label %bb.x, !inline_history !0

bb.x:                                             ; preds = %bb.w
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #30
  unreachable

_ZN9grpc_core5SliceD2Ev.exit:                     ; preds = %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit85, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.critedge77

.critedge77:                                      ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %_ZN9grpc_core5SliceD2Ev.exit
  %i.by = load ptr, ptr %7, align 8, !tbaa !85    ; 4 uses
  %i.bz = icmp ugt ptr %i.by, inttoptr (i64 1 to ptr)
  br i1 %i.bz, label %bb.y, label %_ZN9grpc_core5SliceD2Ev.exit86

bb.y:                                             ; preds = %.critedge77
  %i.ca = atomicrmw add ptr %i.by, i64 -1 acq_rel, align 8
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.z, label %_ZN9grpc_core5SliceD2Ev.exit86

bb.z:                                             ; preds = %bb.y
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !91
  invoke void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.by)
          to label %_ZN9grpc_core5SliceD2Ev.exit86 unwind label %bb.aa, !inline_history !0

bb.aa:                                            ; preds = %bb.z
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #30
  unreachable

bb.ab:                                            ; preds = %bb.k
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #28
  br i1 %i.an, label %.critedge79, label %.critedge81

.critedge79:                                      ; preds = %bb.ab
  call void @_ZN9grpc_core5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.critedge81

.critedge81:                                      ; preds = %bb.ab, %.critedge79
  call void @_ZN9grpc_core5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #28
  br label %bb.bf

.critedge.thread:                                 ; preds = %bb.a, %.critedge
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !22
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.ac, label %select.unfold

bb.ac:                                            ; preds = %.critedge.thread
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !22
  %i.co = icmp eq i64 %i.cn, 0
  %spec.select = select i1 %i.co, ptr null, ptr %i.cl
  br label %select.unfold

select.unfold:                                    ; preds = %bb.ac, %.critedge.thread
  %.054 = phi ptr [ %spec.select, %bb.ac ], [ %i.ch, %.critedge.thread ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.cp = load ptr, ptr %2, align 8, !tbaa !218   ; 2 uses
  %i.cq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cp) #31
  call void @grpc_slice_from_copied_buffer(ptr dead_on_unwind nonnull writable sret(%struct.grpc_slice) align 8 %13, ptr noundef nonnull %i.cp, i64 noundef %i.cq)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %.not = icmp eq ptr %.054, null                 ; 3 uses
  br i1 %.not, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %select.unfold
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.cr = load ptr, ptr %.054, align 8, !tbaa !21, !noalias !219
  %i.cs = getelementptr inbounds nuw i8, ptr %.054, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !22, !noalias !219
  call void @grpc_slice_from_copied_buffer(ptr dead_on_unwind nonnull writable sret(%struct.grpc_slice) align 8 %14, ptr noundef %i.cr, i64 noundef %i.ct)
  %.sroa.0.0.copyload = load ptr, ptr %14, align 8, !tbaa !210
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, i64 24, i1 false), !tbaa.struct !220
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %select.unfold
  %.sroa.0.0 = phi ptr [ undef, %select.unfold ], [ %.sroa.0.0.copyload, %bb.ad ] ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !45
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 352
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !207
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 360
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !208
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !82
  %i.dc = load ptr, ptr %13, align 8, !tbaa !85   ; 2 uses
  %i.dd = icmp ugt ptr %i.dc, inttoptr (i64 1 to ptr)
  br i1 %i.dd, label %bb.af, label %_ZN9grpc_core9CSliceRefERK10grpc_sliceNS_13DebugLocationE.exit

bb.af:                                            ; preds = %bb.ae
  %i.de = atomicrmw add ptr %i.dc, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZN9grpc_core9CSliceRefERK10grpc_sliceNS_13DebugLocationE.exit

_ZN9grpc_core9CSliceRefERK10grpc_sliceNS_13DebugLocationE.exit: ; preds = %bb.ae, %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !211
  br i1 %.not, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %_ZN9grpc_core9CSliceRefERK10grpc_sliceNS_13DebugLocationE.exit
  %i.df = icmp ugt ptr %.sroa.0.0, inttoptr (i64 1 to ptr)
  br i1 %i.df, label %bb.ah, label %_ZN9grpc_core9CSliceRefERK10grpc_sliceNS_13DebugLocationE.exit87

bb.ah:                                            ; preds = %bb.ag
  %i.dg = atomicrmw add ptr %.sroa.0.0, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZN9grpc_core9CSliceRefERK10grpc_sliceNS_13DebugLocationE.exit87

_ZN9grpc_core9CSliceRefERK10grpc_sliceNS_13DebugLocationE.exit87: ; preds = %bb.ah, %bb.ag
  store ptr %.sroa.0.0, ptr %16, align 8, !tbaa !210
  %.sroa.7.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %16, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx98, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false), !tbaa.struct !220
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN9grpc_core9CSliceRefERK10grpc_sliceNS_13DebugLocationE.exit, %_ZN9grpc_core9CSliceRefERK10grpc_sliceNS_13DebugLocationE.exit87
  %.sink125 = phi i8 [ 1, %_ZN9grpc_core9CSliceRefERK10grpc_sliceNS_13DebugLocationE.exit87 ], [ 0, %_ZN9grpc_core9CSliceRefERK10grpc_sliceNS_13DebugLocationE.exit ]
  %i.dh = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i8 %.sink125, ptr %i.dh, align 8, !tbaa !87
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.dj = load <2 x i64>, ptr %i.di, align 8
  store <2 x i64> %i.dj, ptr %17, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  store ptr %3, ptr %19, align 8, !tbaa !93
  %i.dk = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN4grpc7Channel18CreateCallInternalERKNS3_8internal9RpcMethodEPNS3_13ClientContextEPNS3_15CompletionQueueEmE3$_1vJPN9grpc_core5ArenaEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %i.dk, align 8, !tbaa !215
  store ptr %19, ptr %18, align 8, !tbaa !24
  %i.dl = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i8 1, ptr %i.dl, align 8, !tbaa !217
  %i.dm = invoke noundef ptr @_Z40grpc_channel_create_call_with_arena_initP12grpc_channelP9grpc_calljP21grpc_completion_queueN9grpc_core5SliceESt8optionalIS6_E12gpr_timespecbS7_IN4absl12lts_2025051211FunctionRefIFvPNS5_5ArenaEEEEE(ptr noundef %i.cv, ptr noundef %i.cx, i32 noundef %i.cz, ptr noundef %i.db, ptr noundef nonnull align 8 %15, ptr noundef nonnull align 8 %16, ptr noundef nonnull byval(%struct.gpr_timespec) align 8 %17, i1 noundef zeroext false, ptr noundef nonnull byval(%"class.std::optional.58") align 8 %18)
          to label %bb.aj unwind label %.thread103

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  %i.dn = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.do = load i8, ptr %i.dn, align 8, !tbaa !87, !range !55, !noundef !56
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.ak, label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit93

bb.ak:                                            ; preds = %bb.aj
  store i8 0, ptr %i.dn, align 8, !tbaa !87
  %i.dq = load ptr, ptr %16, align 8, !tbaa !85   ; 4 uses
  %i.dr = icmp ugt ptr %i.dq, inttoptr (i64 1 to ptr)
  br i1 %i.dr, label %bb.al, label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit93

bb.al:                                            ; preds = %bb.ak
  %i.ds = atomicrmw add ptr %i.dq, i64 -1 acq_rel, align 8
  %i.dt = icmp eq i64 %i.ds, 1
  br i1 %i.dt, label %bb.am, label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit93

bb.am:                                            ; preds = %bb.al
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !91
  invoke void %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %i.dq)
          to label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit93 unwind label %bb.an, !inline_history !0

bb.an:                                            ; preds = %bb.am
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #30
  unreachable

_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit93: ; preds = %bb.aj, %bb.ak, %bb.al, %bb.am
  %i.dy = load ptr, ptr %15, align 8, !tbaa !85   ; 4 uses
  %i.dz = icmp ugt ptr %i.dy, inttoptr (i64 1 to ptr)
  br i1 %i.dz, label %bb.ao, label %_ZN9grpc_core5SliceD2Ev.exit94

bb.ao:                                            ; preds = %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit93
  %i.ea = atomicrmw add ptr %i.dy, i64 -1 acq_rel, align 8
  %i.eb = icmp eq i64 %i.ea, 1
  br i1 %i.eb, label %bb.ap, label %_ZN9grpc_core5SliceD2Ev.exit94

bb.ap:                                            ; preds = %bb.ao
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !91
  invoke void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.dy)
          to label %_ZN9grpc_core5SliceD2Ev.exit94 unwind label %bb.aq, !inline_history !0

bb.aq:                                            ; preds = %bb.ap
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #30
  unreachable

_ZN9grpc_core5SliceD2Ev.exit94:                   ; preds = %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit93, %bb.ao, %bb.ap
  call void @grpc_slice_unref(ptr noundef nonnull byval(%struct.grpc_slice) align 8 %13)
  br i1 %.not, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZN9grpc_core5SliceD2Ev.exit94
  store ptr %.sroa.0.0, ptr %20, align 8, !tbaa !210
  %.sroa.7.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %20, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx97, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i64 24, i1 false), !tbaa.struct !220
  call void @grpc_slice_unref(ptr noundef nonnull byval(%struct.grpc_slice) align 8 %20)
  br label %bb.as

.thread103:                                       ; preds = %bb.ai
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  call void @_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %16) #28
  call void @_ZN9grpc_core5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.bf

bb.as:                                            ; preds = %bb.ar, %_ZN9grpc_core5SliceD2Ev.exit94
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %_ZN9grpc_core5SliceD2Ev.exit86

_ZN9grpc_core5SliceD2Ev.exit86:                   ; preds = %bb.z, %bb.y, %.critedge77, %bb.as
  %.065 = phi ptr [ %i.dm, %bb.as ], [ %i.aw, %.critedge77 ], [ %i.aw, %bb.y ], [ %i.aw, %bb.z ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !221
  call void @grpc_census_call_set_context(ptr noundef %.065, ptr noundef %i.ei)
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !222
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 408 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 416
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 424
  %i.en = load <2 x ptr>, ptr %2, align 8, !tbaa !67
  store ptr %3, ptr %i.em, align 8
  store i32 %i.ek, ptr %.sroa.4.0..sroa_idx.i, align 8
  store <2 x ptr> %i.en, ptr %.sroa.57.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 440
  store ptr %1, ptr %.sroa.7.0..sroa_idx.i, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 448 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !94 ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 456
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !95 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 464
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !96
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.ep, %i.er
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eo, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN9grpc_core5SliceD2Ev.exit86, %_ZSt8_DestroyISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ey, %_ZSt8_DestroyISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.ep, %_ZN9grpc_core5SliceD2Ev.exit86 ] ; 2 uses
  %i.eu = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !98 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4grpc12experimental11InterceptorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4grpc12experimental11InterceptorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !11
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(8) %i.eu) #28, !inline_history !165
  br label %_ZSt8_DestroyISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4grpc12experimental11InterceptorEEclEPS2_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ey, %i.er
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !166

_ZSt8_DestroyIPSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i.i.i.i, %_ZN9grpc_core5SliceD2Ev.exit86
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZN4grpc13ClientContext19set_client_rpc_infoEPKcS2_NS_8internal9RpcMethod7RpcTypeEPNS_16ChannelInterfaceERKSt6vectorISt10unique_ptrINS_12experimental33ClientInterceptorFactoryInterfaceESt14default_deleteISB_EESaISE_EEm.exit, label %bb.at

bb.at:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i.i.i
  %i.ez = ptrtoint ptr %i.et to i64
  %i.fa = ptrtoint ptr %i.ep to i64
  %i.fb = sub i64 %i.ez, %i.fa
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef %i.fb) #29
  br label %_ZN4grpc13ClientContext19set_client_rpc_infoEPKcS2_NS_8internal9RpcMethod7RpcTypeEPNS_16ChannelInterfaceERKSt6vectorISt10unique_ptrINS_12experimental33ClientInterceptorFactoryInterfaceESt14default_deleteISB_EESaISE_EEm.exit

_ZN4grpc13ClientContext19set_client_rpc_infoEPKcS2_NS_8internal9RpcMethod7RpcTypeEPNS_16ChannelInterfaceERKSt6vectorISt10unique_ptrINS_12experimental33ClientInterceptorFactoryInterfaceESt14default_deleteISB_EESaISE_EEm.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4grpc12experimental11InterceptorESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i.i.i.i, %bb.at
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, i8 0, i64 16, i1 false)
  call void @_ZN4grpc12experimental13ClientRpcInfo20RegisterInterceptorsERKSt6vectorISt10unique_ptrINS0_33ClientInterceptorFactoryInterfaceESt14default_deleteIS4_EESaIS7_EEm(ptr noundef nonnull align 8 dereferenceable(80) %i.em, ptr noundef nonnull align 8 dereferenceable(24) %i.el, i64 noundef %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.fe = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !48, !noalias !223 ; 3 uses
  store ptr %i.fg, ptr %i.fe, align 8, !tbaa !99, !alias.scope !223
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %_ZN4grpc13ClientContext19set_client_rpc_infoEPKcS2_NS_8internal9RpcMethod7RpcTypeEPNS_16ChannelInterfaceERKSt6vectorISt10unique_ptrINS_12experimental33ClientInterceptorFactoryInterfaceESt14default_deleteISB_EESaISE_EEm.exit
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 2 uses
  %i.fj = load atomic i32, ptr %i.fi monotonic, align 8, !noalias !223
  br label %bb.av

bb.av:                                            ; preds = %bb.aw, %bb.au
  %.06.i.i.i.i.i = phi i32 [ %i.fj, %bb.au ], [ %i.fn, %bb.aw ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fk = add nsw i32 %.06.i.i.i.i.i, 1
  %i.fl = cmpxchg weak ptr %i.fi, i32 %.06.i.i.i.i.i, i32 %i.fk acq_rel monotonic, align 8, !noalias !223 ; 2 uses
  %i.fm = extractvalue { i32, i1 } %i.fl, 1
  %i.fn = extractvalue { i32, i1 } %i.fl, 0
  br i1 %i.fm, label %_ZNSt23enable_shared_from_thisIN4grpc7ChannelEE16shared_from_thisEv.exit, label %bb.av, !llvm.loop !169

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.av, %_ZN4grpc13ClientContext19set_client_rpc_infoEPKcS2_NS_8internal9RpcMethod7RpcTypeEPNS_16ChannelInterfaceERKSt6vectorISt10unique_ptrINS_12experimental33ClientInterceptorFactoryInterfaceESt14default_deleteISB_EESaISE_EEm.exit
  %i.fo = call ptr @__cxa_allocate_exception(i64 8) #28, !noalias !223 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.fo, align 8, !tbaa !11, !noalias !223
  call void @__cxa_throw(ptr nonnull %i.fo, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #32, !noalias !223
  unreachable

_ZNSt23enable_shared_from_thisIN4grpc7ChannelEE16shared_from_thisEv.exit: ; preds = %bb.aw
  %i.fp = load ptr, ptr %i.fd, align 8, !tbaa !224, !noalias !223
  store ptr %i.fp, ptr %21, align 8, !tbaa !225, !alias.scope !223
  invoke void @_ZN4grpc13ClientContext8set_callEP9grpc_callRKSt10shared_ptrINS_7ChannelEE(ptr noundef nonnull align 8 dereferenceable(488) %3, ptr noundef %.065, ptr noundef nonnull align 8 dereferenceable(16) %21)
          to label %bb.ax unwind label %bb.be

bb.ax:                                            ; preds = %_ZNSt23enable_shared_from_thisIN4grpc7ChannelEE16shared_from_thisEv.exit
  %i.fq = load ptr, ptr %i.fe, align 8, !tbaa !99 ; 8 uses
  %.not.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN4grpc7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 4 uses
  %i.fs = load atomic i64, ptr %i.fr acquire, align 8 ; 2 uses
  %i.ft = icmp eq i64 %i.fs, 4294967297
  %i.fu = trunc i64 %i.fs to i32                  ; 2 uses
  br i1 %i.ft, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.fr, align 8, !tbaa !101
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  store i32 0, ptr %i.fv, align 4, !tbaa !102
  %i.fw = load ptr, ptr %i.fq, align 8, !tbaa !11
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #28, !inline_history !170
  %i.fz = load ptr, ptr %i.fq, align 8, !tbaa !11
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8
  call void %i.gb(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #28, !inline_history !170
  br label %_ZNSt12__shared_ptrIN4grpc7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ba:                                            ; preds = %bb.ay
  %i.gc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i = icmp eq i8 %i.gc, 0
  br i1 %.not.i.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gd = add nsw i32 %i.fu, -1
  store i32 %i.gd, ptr %i.fr, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.ge = atomicrmw volatile add ptr %i.fr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i = phi i32 [ %i.fu, %bb.bb ], [ %i.ge, %bb.bc ]
  %i.gf = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.gf, label %bb.bd, label %_ZNSt12__shared_ptrIN4grpc7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !103

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #28
  br label %_ZNSt12__shared_ptrIN4grpc7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4grpc7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ax, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  store ptr %4, ptr %0, align 8, !tbaa !226
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.065, ptr %i.gg, align 8, !tbaa !227
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1, ptr %i.gh, align 8, !tbaa !107
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.em, ptr %i.gi, align 8, !tbaa !228
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.gj, align 8, !tbaa !229
  ret void

bb.be:                                            ; preds = %_ZNSt23enable_shared_from_thisIN4grpc7ChannelEE16shared_from_thisEv.exit
  %i.gk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN4grpc7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.thread103, %.critedge81
  %.pn71 = phi { ptr, i32 } [ %i.gk, %bb.be ], [ %i.cg, %.critedge81 ], [ %i.eg, %.thread103 ]
  resume { ptr, i32 } %.pn71
}

declare noundef ptr @_Z40grpc_channel_create_call_with_arena_initP12grpc_channelP9grpc_calljP21grpc_completion_queueN9grpc_core5SliceESt8optionalIS6_E12gpr_timespecbS7_IN4absl12lts_2025051211FunctionRefIFvPNS5_5ArenaEEEEE(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef align 8, ptr noundef align 8, ptr noundef byval(%struct.gpr_timespec) align 8, i1 noundef zeroext, ptr noundef byval(%"class.std::optional.58") align 8) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !87, !range !55, !noundef !56
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadIN9grpc_core5SliceELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !87
  %i.d = load ptr, ptr %0, align 8, !tbaa !85     ; 4 uses
  %i.e = icmp ugt ptr %i.d, inttoptr (i64 1 to ptr)
  br i1 %i.e, label %bb.c, label %_ZNSt17_Optional_payloadIN9grpc_core5SliceELb0ELb0ELb0EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw add ptr %i.d, i64 -1 acq_rel, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_ZNSt17_Optional_payloadIN9grpc_core5SliceELb0ELb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !91
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_ZNSt17_Optional_payloadIN9grpc_core5SliceELb0ELb0ELb0EED2Ev.exit unwind label %bb.e, !inline_history !0

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #30
  unreachable

_ZNSt17_Optional_payloadIN9grpc_core5SliceELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !85     ; 4 uses
  %i.b = icmp ugt ptr %i.a, inttoptr (i64 1 to ptr)
  br i1 %i.b, label %bb.b, label %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw add ptr %i.a, i64 -1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !91
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit unwind label %bb.d, !inline_history !0

_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit: ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #30
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare void @grpc_slice_unref(ptr noundef byval(%struct.grpc_slice) align 8) local_unnamed_addr #2

declare void @grpc_census_call_set_context(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN4grpc13ClientContext8set_callEP9grpc_callRKSt10shared_ptrINS_7ChannelEE(ptr noundef nonnull align 8 dereferenceable(488), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN4grpc7ChannelELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !102
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !230
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !230
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !49
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !103

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4grpc7Channel10CreateCallERKNS_8internal9RpcMethodEPNS_13ClientContextEPNS_15CompletionQueueE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.grpc::internal::Call") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4grpc7Channel18CreateCallInternalERKNS_8internal9RpcMethodEPNS_13ClientContextEPNS_15CompletionQueueEm(ptr dead_on_unwind writable sret(%"class.grpc::internal::Call") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3, ptr noundef %4, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN4grpc7Channel16PerformOpsOnCallEPNS_8internal18CallOpSetInterfaceEPNS1_4CallE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #11 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4grpc7Channel14RegisterMethodEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !22
  %i.f = icmp eq i64 %i.e, 0
  %i.g = load ptr, ptr %i.c, align 8
  %spec.select = select i1 %i.f, ptr null, ptr %i.g
  %i.h = tail call ptr @grpc_channel_register_call(ptr noundef %i.b, ptr noundef %1, ptr noundef %spec.select, ptr noundef null)
  ret ptr %i.h
}

declare ptr @grpc_channel_register_call(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN4grpc7Channel8GetStateEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.c = zext i1 %1 to i32
  %i.d = tail call i32 @grpc_channel_check_connectivity_state(ptr noundef %i.b, i32 noundef %i.c)
  ret i32 %i.d
}

declare i32 @grpc_channel_check_connectivity_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN4grpc7Channel23NotifyOnStateChangeImplE23grpc_connectivity_state12gpr_timespecPNS_15CompletionQueueEPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, i32 noundef %1, i64 %2, i64 %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4grpc12_GLOBAL__N_18TagSaverE, i64 16), ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %5, ptr %i.b, align 8, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82
  tail call void @grpc_channel_watch_connectivity_state(ptr noundef %i.d, i32 noundef %1, i64 %2, i64 %3, ptr noundef %i.f, ptr noundef nonnull %i.a)
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

declare void @grpc_channel_watch_connectivity_state(ptr noundef, i32 noundef, i64, i64, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4grpc7Channel22WaitForStateChangeImplE23grpc_connectivity_state12gpr_timespec(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, i32 noundef %1, i64 %2, i64 %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.grpc::CompletionQueue", align 8 ; 11 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN4grpc15CompletionQueueC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i8 0, ptr %i.a, align 1, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store ptr null, ptr %i.b, align 8, !tbaa !111
  %i.c = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33
          to label %.noexc unwind label %bb.h     ; 3 uses
end_hunk_0
