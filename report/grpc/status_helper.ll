Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/status_helper?download=true
inline.NumInlined: 840
inline.NumDeleted: 406
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9grpc_core8internal15StatusFromProtoEP17google_rpc_Status:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = and i64 %i.r, 255
  %i.t = select i1 %.not.i, i64 %i.s, i64 %i.r
  invoke void @_ZN4absl12lts_202505126StatusC1ENS0_10StatusCodeESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.b, i64 %i.t, ptr %i.p)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %_ZN9grpc_core5SliceD2Ev.exit
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__Any_msg_init) #22, !srcloc !132
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load i64, ptr %i.u, align 1              ; 2 uses
  %.not.i28 = icmp eq i64 %i.v, 0
  br i1 %.not.i28, label %._crit_edge, label %google_rpc_Status_details.exit

google_rpc_Status_details.exit:                   ; preds = %bb.f
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !133  ; 2 uses
  %i.z = load i64, ptr %i.w, align 8, !tbaa !135
  %i.aa = and i64 %i.z, -8
  %i.ab = inttoptr i64 %i.aa to ptr
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4absl12lts_202505124CordD2Ev.exit, %bb.f, %google_rpc_Status_details.exit
  %i.ac = load ptr, ptr %4, align 8, !tbaa !110   ; 4 uses
  %i.ad = icmp ugt ptr %i.ac, inttoptr (i64 1 to ptr)
  br i1 %i.ad, label %bb.g, label %_ZN9grpc_core5SliceD2Ev.exit29

bb.g:                                             ; preds = %._crit_edge
  %i.ae = atomicrmw sub ptr %i.ac, i64 1 acq_rel, align 8
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %_ZN9grpc_core5SliceD2Ev.exit29

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !112
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.ac)
          to label %_ZN9grpc_core5SliceD2Ev.exit29 unwind label %bb.i, !inline_history !116

bb.i:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #21
  unreachable

_ZN9grpc_core5SliceD2Ev.exit29:                   ; preds = %._crit_edge, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ak = load ptr, ptr %3, align 8, !tbaa !110   ; 4 uses
  %i.al = icmp ugt ptr %i.ak, inttoptr (i64 1 to ptr)
  br i1 %i.al, label %bb.j, label %_ZN9grpc_core5SliceD2Ev.exit30

bb.j:                                             ; preds = %_ZN9grpc_core5SliceD2Ev.exit29
  %i.am = atomicrmw sub ptr %i.ak, i64 1 acq_rel, align 8
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.k, label %_ZN9grpc_core5SliceD2Ev.exit30

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !112
  invoke void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ak)
          to label %_ZN9grpc_core5SliceD2Ev.exit30 unwind label %bb.l, !inline_history !116

bb.l:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #21
  unreachable

_ZN9grpc_core5SliceD2Ev.exit30:                   ; preds = %_ZN9grpc_core5SliceD2Ev.exit29, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

bb.m:                                             ; preds = %bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.n:                                             ; preds = %_ZN9grpc_core5SliceD2Ev.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.lr.ph:                                           ; preds = %google_rpc_Status_details.exit, %_ZN4absl12lts_202505124CordD2Ev.exit
  %.048 = phi i64 [ %i.bl, %_ZN4absl12lts_202505124CordD2Ev.exit ], [ 0, %google_rpc_Status_details.exit ] ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.048
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !136 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.010.0.copyload11.i31 = load ptr, ptr %i.aw, align 1
  %.sroa.9.0..sroa_idx12.i32 = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.9.0.copyload13.i33 = load i64, ptr %.sroa.9.0..sroa_idx12.i32, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.sroa.010.0.copyload11.i36 = load ptr, ptr %i.ax, align 1
  %.sroa.9.0..sroa_idx12.i37 = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %.sroa.9.0.copyload13.i38 = load i64, ptr %.sroa.9.0..sroa_idx12.i37, align 1
  invoke void @_ZN4absl12lts_202505124CordC2ESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 %.sroa.9.0.copyload13.i38, ptr %.sroa.010.0.copyload11.i36, i32 noundef 9)
          to label %_ZN4absl12lts_202505124CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit unwind label %bb.w

_ZN4absl12lts_202505124CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.ay = load i64, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.t, label %bb.o

bb.o:                                             ; preds = %_ZN4absl12lts_202505124CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.ba = invoke noundef ptr @_ZN4absl12lts_202505126Status15PrepareToModifyEm(i64 noundef %i.ay)
          to label %.noexc unwind label %bb.x     ; 2 uses

.noexc:                                           ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  invoke void @_ZN4absl12lts_2025051215status_internal9StatusRep10SetPayloadESt17basic_string_viewIcSt11char_traitsIcEENS0_4CordE(ptr noundef nonnull align 8 dereferenceable(48) %i.ba, i64 %.sroa.9.0.copyload13.i33, ptr %.sroa.010.0.copyload11.i31, ptr noundef nonnull align 8 %2)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %.noexc
  %i.bb = load i8, ptr %2, align 8, !tbaa !33
  %i.bc = trunc i8 %i.bb to i1
  br i1 %i.bc, label %bb.q, label %_ZN4absl12lts_202505124CordD2Ev.exit.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN4absl12lts_202505124Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN4absl12lts_202505124CordD2Ev.exit.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #21
  unreachable

_ZN4absl12lts_202505124CordD2Ev.exit.i:           ; preds = %bb.q, %bb.p
  %i.bf = ptrtoint ptr %i.ba to i64
  store i64 %i.bf, ptr %0, align 8, !tbaa !11
  br label %bb.t

bb.s:                                             ; preds = %.noexc
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505124CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #22
  br label %.body

bb.t:                                             ; preds = %_ZN4absl12lts_202505124CordD2Ev.exit.i, %_ZN4absl12lts_202505124CordC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.bh = load i8, ptr %6, align 8, !tbaa !33
  %i.bi = trunc i8 %i.bh to i1
  br i1 %i.bi, label %bb.u, label %_ZN4absl12lts_202505124CordD2Ev.exit

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN4absl12lts_202505124Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZN4absl12lts_202505124CordD2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #21
  unreachable

_ZN4absl12lts_202505124CordD2Ev.exit:             ; preds = %bb.t, %bb.u
  %i.bl = add nuw i64 %.048, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bl, %i.y
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !138

bb.w:                                             ; preds = %.lr.ph
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.o
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.s, %bb.x
  %eh.lpad-body = phi { ptr, i32 } [ %i.bn, %bb.x ], [ %i.bg, %bb.s ]
  call void @_ZN4absl12lts_202505124CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #22
  br label %bb.y

bb.y:                                             ; preds = %.body, %bb.w
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bm, %bb.w ], [ %eh.lpad-body, %.body ]
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #22
  br label %bb.z

bb.z:                                             ; preds = %bb.n, %bb.y, %bb.m
  %.sink = phi ptr [ %5, %bb.m ], [ %4, %bb.y ], [ %4, %bb.n ]
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.as, %bb.m ], [ %.pn.pn.pn, %bb.y ], [ %i.at, %bb.n ]
  call void @_ZN9grpc_core5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.sink) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZN9grpc_core5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

declare void @_ZN9grpc_core28PermissivePercentDecodeSliceENS_5SliceE(ptr dead_on_unwind writable sret(%"class.grpc_core::Slice") align 8, ptr noundef align 8) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN9grpc_core8internal18StatusAllocHeapPtrEN4absl12lts_202505126StatusE(ptr nofree noundef readonly align 8 captures(none) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !11     ; 4 uses
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #25 ; 2 uses
  store i64 %i.a, ptr %i.c, align 8, !tbaa !11
  %i.d = trunc i64 %i.a to i1
  br i1 %i.d, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = inttoptr i64 %i.a to ptr
  %i.f = atomicrmw add ptr %i.e, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit

_ZN4absl12lts_202505126StatusC2ERKS1_.exit:       ; preds = %bb.c, %bb.b
  %i.g = ptrtoint ptr %i.c to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN4absl12lts_202505126StatusC2ERKS1_.exit
  %.0 = phi i64 [ %i.g, %_ZN4absl12lts_202505126StatusC2ERKS1_.exit ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN9grpc_core8internal17StatusFreeHeapPtrEm(i64 noundef %0) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.d = trunc i64 %i.c to i1
  br i1 %i.d, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = inttoptr i64 %i.c to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #21
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 8) #23
  br label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN9grpc_core8internal20StatusGetFromHeapPtrEm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.absl::lts_20250512::Status") align 8 captures(none) initializes((0, 8)) %0, i64 noundef %1) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 1, ptr %0, align 8, !tbaa !11, !alias.scope !139
  br label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %1 to ptr
  %i.c = load i64, ptr %i.b, align 8, !tbaa !11   ; 3 uses
  store i64 %i.c, ptr %0, align 8, !tbaa !11
  %i.d = trunc i64 %i.c to i1
  br i1 %i.d, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = inttoptr i64 %i.c to ptr
  %i.f = atomicrmw add ptr %i.e, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit

_ZN4absl12lts_202505126StatusC2ERKS1_.exit:       ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN9grpc_core8internal21StatusMoveFromHeapPtrEm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.absl::lts_20250512::Status") align 8 captures(none) initializes((0, 8)) %0, i64 noundef %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.b, label %_ZN4absl12lts_202505126StatusD2Ev.exit

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.a
  %i.b = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !11
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef 8) #23
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN4absl12lts_202505126StatusD2Ev.exit
  %.sink = phi i64 [ %i.c, %_ZN4absl12lts_202505126StatusD2Ev.exit ], [ 1, %bb.a ]
  store i64 %.sink, ptr %0, align 8, !tbaa !11
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

declare void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN9grpc_core12_GLOBAL__N_117ReplaceStatusCodeERKNS0_6StatusENS0_10StatusCodeEE3$_0vJSt17basic_string_viewIcSt11char_traitsIcEERKNS0_4CordEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr nofree readonly captures(none) %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::Cord", align 8 ; 7 uses
  %5 = alloca %"class.absl::lts_20250512::Cord", align 8 ; 11 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !142   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.a = load i8, ptr %3, align 8, !tbaa !33
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not6.i.i.i.i.i.i = icmp ne ptr %i.d, null
  %.not.not.i.i.i.i.i.i = select i1 %i.b, i1 %.not6.i.i.i.i.i.i, i1 false
  br i1 %.not.not.i.i.i.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = atomicrmw add ptr %i.e, i32 2 monotonic, align 4 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.d, ptr %i.g, align 8, !tbaa !33
  store i64 1, ptr %5, align 8, !tbaa !33
  %i.h = load i64, ptr %3, align 8, !tbaa !33
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.h, 2
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4absl12lts_202505124CordC2ERKS1_.exit.i.i.i.i, label %bb.c, !prof !144

bb.c:                                             ; preds = %bb.b
  call void @_ZN4absl12lts_2025051213cord_internal9CordzInfo18MaybeTrackCordImplERNS1_10InlineDataERKS3_NS1_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 8)
  br label %_ZN4absl12lts_202505124CordC2ERKS1_.exit.i.i.i.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !44
  br label %_ZN4absl12lts_202505124CordC2ERKS1_.exit.i.i.i.i

_ZN4absl12lts_202505124CordC2ERKS1_.exit.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.i = load i64, ptr %.val, align 8, !tbaa !11  ; 2 uses
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.j, label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_202505124CordC2ERKS1_.exit.i.i.i.i
  %i.k = invoke noundef ptr @_ZN4absl12lts_202505126Status15PrepareToModifyEm(i64 noundef %i.i)
          to label %.noexc.i.i.i.i unwind label %bb.m ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZN4absl12lts_2025051215status_internal9StatusRep10SetPayloadESt17basic_string_viewIcSt11char_traitsIcEENS0_4CordE(ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 %1, ptr %2, ptr noundef nonnull align 8 %4)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %.noexc.i.i.i.i
  %i.l = load i8, ptr %4, align 8, !tbaa !33
  %i.m = trunc i8 %i.l to i1
  br i1 %i.m, label %bb.g, label %_ZN4absl12lts_202505124CordD2Ev.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4absl12lts_202505124Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN4absl12lts_202505124CordD2Ev.exit.i.i.i.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #21
  unreachable

_ZN4absl12lts_202505124CordD2Ev.exit.i.i.i.i.i:   ; preds = %bb.g, %bb.f
  %i.p = ptrtoint ptr %i.k to i64
  store i64 %i.p, ptr %.val, align 8, !tbaa !11
  br label %bb.j

bb.i:                                             ; preds = %.noexc.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505124CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  br label %.body.i.i.i.i

bb.j:                                             ; preds = %_ZN4absl12lts_202505124CordD2Ev.exit.i.i.i.i.i, %_ZN4absl12lts_202505124CordC2ERKS1_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.r = load i8, ptr %5, align 8, !tbaa !33
  %i.s = trunc i8 %i.r to i1
  br i1 %i.s, label %bb.k, label %"_ZSt6invokeIRKZN9grpc_core12_GLOBAL__N_117ReplaceStatusCodeERKN4absl12lts_202505126StatusENS3_10StatusCodeEE3$_0JSt17basic_string_viewIcSt11char_traitsIcEERKNS3_4CordEEENSt13invoke_resultIT_JDpT0_EE4typeEOSJ_DpOSK_.exit"

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4absl12lts_202505124Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %"_ZSt6invokeIRKZN9grpc_core12_GLOBAL__N_117ReplaceStatusCodeERKN4absl12lts_202505126StatusENS3_10StatusCodeEE3$_0JSt17basic_string_viewIcSt11char_traitsIcEERKNS3_4CordEEENSt13invoke_resultIT_JDpT0_EE4typeEOSJ_DpOSK_.exit" unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #21
end_hunk_0
