Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/hpack_parser?download=true
inline.NumInlined: 3016
inline.NumDeleted: 1439
begin_hunk_0_@_ZN9grpc_core11HPackParser6String17ParseUncompressedEPNS0_5InputEjj:bb.a
bb.p:                                             ; preds = %_ZN9grpc_core11HPackParser6StringC2EP19grpc_slice_refcountPKhS5_.exit
  %i.ap = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i18 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i18, label %_ZN9grpc_core11HPackParser6StringD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !52
  br label %_ZN9grpc_core11HPackParser6StringD2Ev.exit.sink.split

bb.r:                                             ; preds = %_ZN9grpc_core11HPackParser6StringC2EP19grpc_slice_refcountPKhS5_.exit
  unreachable

bb.s:                                             ; preds = %bb.j
  store ptr %i.d, ptr %6, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.h, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !56
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store i8 1, ptr %i.ar, align 8, !tbaa !18
  store i8 0, ptr %0, align 8, !tbaa !45
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ab, ptr %i.as, align 8, !tbaa !46
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN9grpc_core11HPackParser6StringC2EOS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(40) %6) #30
  %i.au = load i8, ptr %i.ar, align 8, !tbaa !18
  switch i8 %i.au, label %bb.z [
    i8 -1, label %_ZN9grpc_core11HPackParser6StringD2Ev.exit
    i8 0, label %bb.t
    i8 1, label %_ZN9grpc_core11HPackParser6StringD2Ev.exit
    i8 2, label %bb.x
  ], !prof !47

bb.t:                                             ; preds = %bb.s
  %i.av = load ptr, ptr %6, align 8, !tbaa !22    ; 4 uses
  %i.aw = icmp ugt ptr %i.av, inttoptr (i64 1 to ptr)
  br i1 %i.aw, label %bb.u, label %_ZN9grpc_core11HPackParser6StringD2Ev.exit

bb.u:                                             ; preds = %bb.t
  %i.ax = atomicrmw sub ptr %i.av, i64 1 acq_rel, align 8
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %bb.v, label %_ZN9grpc_core11HPackParser6StringD2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !51
  invoke void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.av)
          to label %_ZN9grpc_core11HPackParser6StringD2Ev.exit unwind label %bb.w, !inline_history !0

bb.w:                                             ; preds = %bb.v
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #31
  unreachable

bb.x:                                             ; preds = %bb.s
  %i.bd = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i20 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i20, label %_ZN9grpc_core11HPackParser6StringD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !52
  br label %_ZN9grpc_core11HPackParser6StringD2Ev.exit.sink.split

bb.z:                                             ; preds = %bb.s
  unreachable

_ZN9grpc_core11HPackParser6StringD2Ev.exit.sink.split: ; preds = %bb.h, %bb.q, %bb.y
  %.sink33 = phi ptr [ %i.bf, %bb.y ], [ %i.aq, %bb.q ], [ %i.y, %bb.h ]
  %.sink32 = phi ptr [ %i.bd, %bb.y ], [ %i.ap, %bb.q ], [ %i.w, %bb.h ] ; 2 uses
  %i.bg = ptrtoint ptr %.sink33 to i64
  %i.bh = ptrtoint ptr %.sink32 to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %.sink32, i64 noundef %i.bi) #32
  br label %_ZN9grpc_core11HPackParser6StringD2Ev.exit

_ZN9grpc_core11HPackParser6StringD2Ev.exit:       ; preds = %_ZN9grpc_core11HPackParser6StringD2Ev.exit.sink.split, %bb.x, %bb.v, %bb.u, %bb.t, %bb.s, %bb.s, %bb.p, %bb.n, %bb.m, %bb.l, %_ZN9grpc_core11HPackParser6StringC2EP19grpc_slice_refcountPKhS5_.exit, %_ZN9grpc_core11HPackParser6StringC2EP19grpc_slice_refcountPKhS5_.exit, %bb.g, %bb.e, %bb.d, %bb.c, %bb.b, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core11HPackParser5Input13UnexpectedEOFEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.b, !prof !57

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !58
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.c, label %_ZNK9grpc_core11HPackParser5Input9eof_errorEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59, !nonnull !60, !align !61
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64   ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNK9grpc_core11HPackParser5Input9eof_errorEv.exit.thread6, label %_ZNK9grpc_core11HPackParser5Input9eof_errorEv.exit

_ZNK9grpc_core11HPackParser5Input9eof_errorEv.exit: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i8, ptr %i.f, align 1, !tbaa !66
  %i.h = icmp ugt i8 %i.g, 10
  br i1 %i.h, label %_ZNK9grpc_core11HPackParser5Input9eof_errorEv.exit.thread, label %_ZNK9grpc_core11HPackParser5Input9eof_errorEv.exit.thread6

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringImlEEPKcT_T0_S4_(i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.1, i32 noundef 252, ptr noundef nonnull %i.i) #33
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.e

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.d
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #31
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #31
  unreachable

_ZNK9grpc_core11HPackParser5Input9eof_errorEv.exit.thread6: ; preds = %bb.c, %_ZNK9grpc_core11HPackParser5Input9eof_errorEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !67
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = add i64 %1, %i.o
  %i.r = sub i64 %i.q, %i.p
  store i64 %i.r, ptr %i.a, align 8, !tbaa !58
  br label %_ZNK9grpc_core11HPackParser5Input9eof_errorEv.exit.thread

_ZNK9grpc_core11HPackParser5Input9eof_errorEv.exit.thread: ; preds = %bb.b, %_ZNK9grpc_core11HPackParser5Input9eof_errorEv.exit, %_ZNK9grpc_core11HPackParser5Input9eof_errorEv.exit.thread6
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core11HPackParser6StringD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !18
  switch i8 %i.b, label %bb.h [
    i8 -1, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core5SliceEN4absl12lts_202505124SpanIKhEESt6vectorIhSaIhEEEED2Ev.exit
    i8 0, label %bb.b
    i8 1, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core5SliceEN4absl12lts_202505124SpanIKhEESt6vectorIhSaIhEEEED2Ev.exit
    i8 2, label %bb.f
  ], !prof !47

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !22     ; 4 uses
  %i.d = icmp ugt ptr %i.c, inttoptr (i64 1 to ptr)
  br i1 %i.d, label %bb.c, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core5SliceEN4absl12lts_202505124SpanIKhEESt6vectorIhSaIhEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw sub ptr %i.c, i64 1 acq_rel, align 8
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core5SliceEN4absl12lts_202505124SpanIKhEESt6vectorIhSaIhEEEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core5SliceEN4absl12lts_202505124SpanIKhEESt6vectorIhSaIhEEEED2Ev.exit unwind label %bb.e, !inline_history !0

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #31
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !29     ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core5SliceEN4absl12lts_202505124SpanIKhEESt6vectorIhSaIhEEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #32
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core5SliceEN4absl12lts_202505124SpanIKhEESt6vectorIhSaIhEEEED2Ev.exit

bb.h:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core5SliceEN4absl12lts_202505124SpanIKhEESt6vectorIhSaIhEEEED2Ev.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c, %bb.d, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core11HPackParser6String12Unbase64LoopEPKhS3_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional") align 8 captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %3 = alloca %"class.std::vector", align 16      ; 20 uses
  %i.b = alloca [3 x i8], align 1                 ; 8 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %.not126 = icmp eq ptr %1, %2
  br i1 %.not126, label %.critedge, label %.lr.ph129

bb.b:                                             ; preds = %.lr.ph129
  %.not = icmp eq ptr %1, %i.f
  br i1 %.not, label %.critedge, label %.lr.ph129, !llvm.loop !230

.lr.ph129:                                        ; preds = %bb.a, %bb.b
  %.062127 = phi ptr [ %i.f, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.062127, i64 -1 ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !69
  %i.h = icmp eq i8 %i.g, 61
  br i1 %i.h, label %bb.b, label %..critedge_crit_edge130, !llvm.loop !230

..critedge_crit_edge130:                          ; preds = %.lr.ph129
  %4 = ptrtoint ptr %.062127 to i64
  br label %.critedge, !llvm.loop !230

.critedge:                                        ; preds = %bb.b, %..critedge_crit_edge130, %bb.a
  %.062.lcssa = phi i64 [ %i.a, %bb.a ], [ %4, %..critedge_crit_edge130 ], [ %i.a, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.i = ptrtoint ptr %1 to i64
  %i.j = sub i64 %.062.lcssa, %i.i                ; 4 uses
  %i.k = mul nsw i64 %i.j, 3
  %i.l = sdiv i64 %i.k, 4
  %i.m = add nsw i64 %i.l, 3                      ; 3 uses
  %i.n = icmp slt i64 %i.j, -5
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.88) #29
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %.critedge
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %.not120 = icmp eq i64 %i.m, 0
  br i1 %.not120, label %_ZNSt6vectorIhSaIhEE7reserveEm.exit, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #34
          to label %.noexc86 unwind label %bb.h   ; 4 uses

.noexc86:                                         ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  %i.r = load ptr, ptr %3, align 16, !tbaa !29    ; 4 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !30
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %bb.e, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

bb.e:                                             ; preds = %.noexc86
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.r, i64 %i.v, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i: ; preds = %bb.e, %.noexc86
  %.not.i8.i = icmp eq ptr %i.r, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  %i.x = load ptr, ptr %i.o, align 16, !tbaa !52
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.z) #32
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  store ptr %i.q, ptr %3, align 16, !tbaa !29
  store ptr %i.q, ptr %i.p, align 8, !tbaa !30
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.m
  store ptr %i.aa, ptr %i.o, align 16, !tbaa !52
  br label %_ZNSt6vectorIhSaIhEE7reserveEm.exit

_ZNSt6vectorIhSaIhEE7reserveEm.exit:              ; preds = %bb.d, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i
  %i.ab = icmp sgt i64 %i.j, 3
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIhSaIhEE7reserveEm.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.m
  %.0101 = phi ptr [ %1, %.lr.ph ], [ %i.by, %bb.m ] ; 5 uses
  %i.ag = load i8, ptr %.0101, align 1, !tbaa !69
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @_ZN9grpc_core12_GLOBAL__N_119kBase64InverseTableE, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !69  ; 2 uses
  %i.ak = icmp ugt i8 %i.aj, 63
  br i1 %i.ak, label %.critedge85, label %bb.i

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i, %bb.c, %bb.ae
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.i:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.0101, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !69
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @_ZN9grpc_core12_GLOBAL__N_119kBase64InverseTableE, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !69  ; 2 uses
  %i.ar = icmp ugt i8 %i.aq, 63
  br i1 %i.ar, label %.critedge85, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %.0101, i64 2
  %i.at = load i8, ptr %i.as, align 1, !tbaa !69
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @_ZN9grpc_core12_GLOBAL__N_119kBase64InverseTableE, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !69  ; 2 uses
  %i.ax = icmp ugt i8 %i.aw, 63
  br i1 %i.ax, label %.critedge85, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %.0101, i64 3
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !69
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @_ZN9grpc_core12_GLOBAL__N_119kBase64InverseTableE, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !69  ; 2 uses
  %i.bd = icmp ugt i8 %i.bc, 63
  br i1 %i.bd, label %.critedge85, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = zext nneg i8 %i.aj to i32
  %i.bf = shl nuw nsw i32 %i.be, 18
  %i.bg = zext nneg i8 %i.aq to i32
  %i.bh = shl nuw nsw i32 %i.bg, 12               ; 2 uses
  %i.bi = or disjoint i32 %i.bh, %i.bf
  %i.bj = zext nneg i8 %i.aw to i32
  %i.bk = shl nuw nsw i32 %i.bj, 6                ; 2 uses
  %i.bl = or disjoint i32 %i.bk, %i.bh
  %i.bm = load ptr, ptr %i.ac, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.bn = lshr i32 %i.bi, 16
  %i.bo = trunc nuw i32 %i.bn to i8
  store i8 %i.bo, ptr %i.b, align 1, !tbaa !69
  %i.bp = lshr i32 %i.bl, 8
  %i.bq = trunc i32 %i.bp to i8
  store i8 %i.bq, ptr %i.ad, align 1, !tbaa !69
  %i.br = trunc i32 %i.bk to i8
  %i.bs = or disjoint i8 %i.bc, %i.br
  store i8 %i.bs, ptr %i.ae, align 1, !tbaa !69
  %i.bt = load ptr, ptr %3, align 16, !tbaa !55   ; 2 uses
  %i.bu = ptrtoint ptr %i.bm to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = getelementptr inbounds i8, ptr %i.bt, i64 %i.bw
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.bx, ptr noundef nonnull %i.b, ptr noundef nonnull %i.af)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %.0101, i64 4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = sub i64 %.062.lcssa, %i.bz              ; 2 uses
  %i.cb = icmp sgt i64 %i.ca, 3
  br i1 %i.cb, label %bb.g, label %._crit_edge, !llvm.loop !231

bb.n:                                             ; preds = %bb.l
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.ah

._crit_edge:                                      ; preds = %bb.m, %_ZNSt6vectorIhSaIhEE7reserveEm.exit
  %.0.lcssa = phi ptr [ %1, %_ZNSt6vectorIhSaIhEE7reserveEm.exit ], [ %i.by, %bb.m ] ; 5 uses
  %.lcssa = phi i64 [ %i.j, %_ZNSt6vectorIhSaIhEE7reserveEm.exit ], [ %i.ca, %bb.m ]
  switch i64 %.lcssa, label %bb.ae [
    i64 0, label %bb.o
    i64 1, label %.critedge85
    i64 2, label %bb.p
    i64 3, label %bb.v
  ]

bb.o:                                             ; preds = %._crit_edge
  %i.cd = load <2 x ptr>, ptr %3, align 16, !tbaa !55
  store <2 x ptr> %i.cd, ptr %0, align 8, !tbaa !55
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cf = load ptr, ptr %i.o, align 16, !tbaa !52
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !52
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.cg, align 8, !tbaa !233
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.p:                                             ; preds = %._crit_edge
  %i.ch = load i8, ptr %.0.lcssa, align 1, !tbaa !69
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @_ZN9grpc_core12_GLOBAL__N_119kBase64InverseTableE, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !69  ; 2 uses
  %i.cl = icmp ugt i8 %i.ck, 63
  br i1 %i.cl, label %.critedge85, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !69
  %i.co = zext i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr @_ZN9grpc_core12_GLOBAL__N_119kBase64InverseTableE, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !69  ; 2 uses
  %i.cr = icmp ugt i8 %i.cq, 63
  br i1 %i.cr, label %.critedge85, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cs = zext nneg i8 %i.cq to i32               ; 2 uses
  %i.ct = and i32 %i.cs, 15
  %.not81 = icmp eq i32 %i.ct, 0
  br i1 %.not81, label %bb.s, label %.critedge85

bb.s:                                             ; preds = %bb.r
  %i.cu = shl nuw nsw i32 %i.cs, 12
  %i.cv = zext nneg i8 %i.ck to i32
  %i.cw = shl nuw nsw i32 %i.cv, 18
  %i.cx = or disjoint i32 %i.cu, %i.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.cy = lshr exact i32 %i.cx, 16
  %i.cz = trunc nuw i32 %i.cy to i8
  store i8 %i.cz, ptr %i.c, align 1, !tbaa !69
  invoke void @_ZNSt6vectorIhSaIhEE9push_backEOh(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.da = load <2 x ptr>, ptr %3, align 16, !tbaa !55
  store <2 x ptr> %i.da, ptr %0, align 8, !tbaa !55
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dc = load ptr, ptr %i.o, align 16, !tbaa !52
  store ptr %i.dc, ptr %i.db, align 8, !tbaa !52
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.dd, align 8, !tbaa !233
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %bb.ah

bb.v:                                             ; preds = %._crit_edge
  %i.df = load i8, ptr %.0.lcssa, align 1, !tbaa !69
  %i.dg = zext i8 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @_ZN9grpc_core12_GLOBAL__N_119kBase64InverseTableE, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !69  ; 2 uses
  %i.dj = icmp ugt i8 %i.di, 63
  br i1 %i.dj, label %.critedge85, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !69
  %i.dm = zext i8 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr @_ZN9grpc_core12_GLOBAL__N_119kBase64InverseTableE, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !69  ; 2 uses
  %i.dp = icmp ugt i8 %i.do, 63
  br i1 %i.dp, label %.critedge85, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 2
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !69
  %i.ds = zext i8 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @_ZN9grpc_core12_GLOBAL__N_119kBase64InverseTableE, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !69  ; 2 uses
  %i.dv = icmp ugt i8 %i.du, 63
  br i1 %i.dv, label %.critedge85, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dw = zext nneg i8 %i.du to i32               ; 2 uses
  %i.dx = zext nneg i8 %i.do to i32
  %i.dy = shl nuw nsw i32 %i.dx, 12               ; 2 uses
  %i.dz = shl nuw nsw i32 %i.dw, 6
  %i.ea = or disjoint i32 %i.dz, %i.dy
  %i.eb = and i32 %i.dw, 3
  %.not79 = icmp eq i32 %i.eb, 0
  br i1 %.not79, label %bb.z, label %.critedge85

bb.z:                                             ; preds = %bb.y
  %i.ec = zext nneg i8 %i.di to i32
  %i.ed = shl nuw nsw i32 %i.ec, 18
  %i.ee = or disjoint i32 %i.dy, %i.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %i.ef = lshr i32 %i.ee, 16
  %i.eg = trunc nuw i32 %i.ef to i8
  store i8 %i.eg, ptr %i.d, align 1, !tbaa !69
  invoke void @_ZNSt6vectorIhSaIhEE9push_backEOh(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  %i.eh = lshr exact i32 %i.ea, 8
  %i.ei = trunc i32 %i.eh to i8
  store i8 %i.ei, ptr %i.e, align 1, !tbaa !69
  invoke void @_ZNSt6vectorIhSaIhEE9push_backEOh(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  %i.ej = load <2 x ptr>, ptr %3, align 16, !tbaa !55
  store <2 x ptr> %i.ej, ptr %0, align 8, !tbaa !55
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.el = load ptr, ptr %i.o, align 16, !tbaa !52
  store ptr %i.el, ptr %i.ek, align 8, !tbaa !52
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.em, align 8, !tbaa !233
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.ac:                                            ; preds = %bb.z
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  br label %bb.ah

bb.ad:                                            ; preds = %bb.aa
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  br label %bb.ah

bb.ae:                                            ; preds = %._crit_edge
  invoke void @gpr_unreachable_code(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 478) #29
          to label %bb.af unwind label %bb.h

bb.af:                                            ; preds = %bb.ae
  unreachable

.critedge85:                                      ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %bb.y, %bb.x, %bb.w, %bb.v, %bb.r, %bb.q, %bb.p, %._crit_edge
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.ep, align 8, !tbaa !233
  %.pr = load ptr, ptr %3, align 16, !tbaa !29    ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %.critedge85
  %i.eq = load ptr, ptr %i.o, align 16, !tbaa !52
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = ptrtoint ptr %.pr to i64
  %i.et = sub i64 %i.er, %i.es
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.et) #32
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.o, %bb.t, %bb.ab, %.critedge85, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.ah:                                            ; preds = %bb.ac, %bb.ad, %bb.u, %bb.n, %bb.h
  %.pn82 = phi { ptr, i32 } [ %i.cc, %bb.n ], [ %i.al, %bb.h ], [ %i.de, %bb.u ], [ %i.eo, %bb.ad ], [ %i.en, %bb.ac ]
  %i.eu = load ptr, ptr %3, align 16, !tbaa !29   ; 3 uses
  %.not.i.i.i88 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i88, label %_ZNSt6vectorIhSaIhEED2Ev.exit89, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ew = load ptr, ptr %i.ev, align 16, !tbaa !52
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.eu to i64
  %i.ez = sub i64 %i.ex, %i.ey
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.ez) #32
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit89

_ZNSt6vectorIhSaIhEED2Ev.exit89:                  ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn82
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE9push_backEOh(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %1, align 1, !tbaa !69
  store i8 %i.e, ptr %i.b, align 1, !tbaa !69
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.g, ptr %i.a, align 8, !tbaa !30
  br label %_ZNSt6vectorIhSaIhEE12emplace_backIJhEEERhDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !29     ; 4 uses
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 7 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #29
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i, %i.k    ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #34 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k ; 2 uses
  %i.s = load i8, ptr %1, align 1, !tbaa !69
  store i8 %i.s, ptr %i.r, align 1, !tbaa !69
  %i.t = icmp sgt i64 %i.k, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.not.i17.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !52
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.x) #32
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !29
  store ptr %i.u, ptr %i.a, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store ptr %i.y, ptr %i.c, align 8, !tbaa !52
  br label %_ZNSt6vectorIhSaIhEE12emplace_backIJhEEERhDpOT_.exit

_ZNSt6vectorIhSaIhEE12emplace_backIJhEEERhDpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core11HPackParser6String8Unbase64ES1_(ptr dead_on_unwind noalias writable sret(%"struct.grpc_core::HPackParser::String::StringResult") align 8 %0, ptr noundef align 8 %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::optional", align 8     ; 7 uses
  %3 = alloca %"class.std::optional", align 8     ; 15 uses
  %4 = alloca %"class.std::optional", align 8     ; 15 uses
  %5 = alloca %"class.grpc_core::HPackParser::String", align 8 ; 6 uses
  %6 = alloca %"class.grpc_core::HPackParser::String", align 8 ; 7 uses
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %_ZSt6get_ifISt6vectorIhSaIhEEJN9grpc_core5SliceEN4absl12lts_202505124SpanIKhEES2_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !18    ; 2 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %_ZSt6get_ifIN9grpc_core5SliceEJS1_N4absl12lts_202505124SpanIKhEESt6vectorIhSaIhEEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit, label %bb.d

_ZSt6get_ifIN9grpc_core5SliceEJS1_N4absl12lts_202505124SpanIKhEESt6vectorIhSaIhEEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.d = load ptr, ptr %1, align 8, !tbaa !22
  %.not.i = icmp eq ptr %i.d, null                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.h = select i1 %.not.i, ptr %i.g, ptr %i.f    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %i.j, 255
  %i.l = select i1 %.not.i, i64 %i.k, i64 %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  call void @_ZN9grpc_core11HPackParser6String12Unbase64LoopEPKhS3_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %2, ptr noundef %i.h, ptr noundef %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = load i8, ptr %i.n, align 8, !range !71
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %.thread

bb.c:                                             ; preds = %_ZSt6get_ifIN9grpc_core5SliceEJS1_N4absl12lts_202505124SpanIKhEESt6vectorIhSaIhEEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %i.q = load ptr, ptr %2, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52
  br label %.thread

.thread:                                          ; preds = %_ZSt6get_ifIN9grpc_core5SliceEJS1_N4absl12lts_202505124SpanIKhEESt6vectorIhSaIhEEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit, %bb.c
  %.sroa.056.590 = phi ptr [ %i.q, %bb.c ], [ undef, %_ZSt6get_ifIN9grpc_core5SliceEJS1_N4absl12lts_202505124SpanIKhEESt6vectorIhSaIhEEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit ]
  %.sroa.26.588 = phi ptr [ %i.u, %bb.c ], [ undef, %_ZSt6get_ifIN9grpc_core5SliceEJS1_N4absl12lts_202505124SpanIKhEESt6vectorIhSaIhEEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit ]
  %.sroa.41.486 = phi i8 [ 1, %bb.c ], [ 0, %_ZSt6get_ifIN9grpc_core5SliceEJS1_N4absl12lts_202505124SpanIKhEESt6vectorIhSaIhEEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit ]
  %.sroa.19.384 = phi ptr [ %i.s, %bb.c ], [ undef, %_ZSt6get_ifIN9grpc_core5SliceEJS1_N4absl12lts_202505124SpanIKhEESt6vectorIhSaIhEEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.pre = load i8, ptr %i.a, align 8, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %.thread
  %i.v = phi i8 [ %.pre, %.thread ], [ %i.b, %bb.b ] ; 2 uses
  %.sroa.056.0102 = phi ptr [ %.sroa.056.590, %.thread ], [ undef, %bb.b ] ; 9 uses
  %.sroa.26.0100 = phi ptr [ %.sroa.26.588, %.thread ], [ undef, %bb.b ] ; 7 uses
  %.sroa.41.098 = phi i8 [ %.sroa.41.486, %.thread ], [ 0, %bb.b ] ; 3 uses
  %.sroa.19.096 = phi ptr [ %.sroa.19.384, %.thread ], [ undef, %bb.b ] ; 4 uses
  %i.w = icmp eq i8 %i.v, 1
  br i1 %i.w, label %_ZSt6get_ifIN4absl12lts_202505124SpanIKhEEJN9grpc_core5SliceES4_St6vectorIhSaIhEEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit, label %bb.o

_ZSt6get_ifIN4absl12lts_202505124SpanIKhEEJN9grpc_core5SliceES4_St6vectorIhSaIhEEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.x = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !27
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z
  invoke void @_ZN9grpc_core11HPackParser6String12Unbase64LoopEPKhS3_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %3, ptr noundef %i.x, ptr noundef %i.aa)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %_ZSt6get_ifIN4absl12lts_202505124SpanIKhEEJN9grpc_core5SliceES4_St6vectorIhSaIhEEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %i.ab = trunc nuw i8 %.sroa.41.098 to i1        ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ad = load i8, ptr %i.ac, align 8, !range !71
  %i.ae = trunc nuw i8 %i.ad to i1                ; 2 uses
  %or.cond.i.i.i.i.i22 = select i1 %i.ab, i1 %i.ae, i1 false
  br i1 %or.cond.i.i.i.i.i22, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !30 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i24 = icmp eq ptr %.sroa.056.0102, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i24, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = ptrtoint ptr %.sroa.26.0100 to i64
  %i.al = ptrtoint ptr %.sroa.056.0102 to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.056.0102, i64 noundef %i.am) #32
  %.pr = load ptr, ptr %3, align 8, !tbaa !29
  br label %bb.l

bb.h:                                             ; preds = %bb.e
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %3, align 8, !tbaa !29
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !30
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  br i1 %i.ab, label %bb.k, label %.thread112

bb.k:                                             ; preds = %bb.j
  %.not.i.i.i.i.i7.i.i.i.i.i23 = icmp eq ptr %.sroa.056.0102, null
  br i1 %.not.i.i.i.i.i7.i.i.i.i.i23, label %.thread112, label %.thread112.sink.split

bb.l:                                             ; preds = %bb.f, %bb.g, %bb.i
  %i.as = phi ptr [ null, %bb.f ], [ %.pr, %bb.g ], [ null, %bb.i ] ; 2 uses
  %.sroa.19.4.ph = phi ptr [ %i.ah, %bb.f ], [ %i.ah, %bb.g ], [ %i.ap, %bb.i ] ; 2 uses
  %.sroa.26.6.ph = phi ptr [ %i.aj, %bb.f ], [ %i.aj, %bb.g ], [ %i.ar, %bb.i ] ; 2 uses
  %.sroa.056.6.ph = phi ptr [ %i.af, %bb.f ], [ %i.af, %bb.g ], [ %i.an, %bb.i ] ; 2 uses
  %.not.i.i.i.i.i.i.i26 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i.i.i26, label %.thread112, label %bb.m

bb.m:                                             ; preds = %bb.l
end_hunk_0
