Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msgpack/original/enum?download=true
inline.NumInlined: 766
inline.NumDeleted: 323
begin_hunk_0_@free
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail9parse_impINS1_21create_object_visitorEEENS0_12parse_returnEPKcmRmRT_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(121) %3) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %4 = alloca %"struct.msgpack::v2::detail::parse_helper", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = load i64, ptr %2, align 8, !tbaa !19     ; 2 uses
  store i64 %i.b, ptr %i.a, align 8, !tbaa !19
  %.not = icmp ugt i64 %1, %i.b
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN7msgpack2v118insufficient_bytesC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN7msgpack2v118insufficient_bytesE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

common.resume:                                    ; preds = %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEED2Ev.exit, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %eh.lpad-body, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #21
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.e, align 8, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 0, ptr %i.f, align 8, !tbaa !75
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.h = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #26 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !76
  store ptr %i.h, ptr %i.i, align 8, !tbaa !77
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  store ptr %i.k, ptr %i.j, align 8, !tbaa !78
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %3, ptr %i.l, align 8, !tbaa !181
  %i.m = invoke noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE7executeEPKcmRm(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN7msgpack2v26detail12parse_helperINS1_21create_object_visitorEE7executeEPKcmRm.exit unwind label %bb.f ; 2 uses

_ZN7msgpack2v26detail12parse_helperINS1_21create_object_visitorEE7executeEPKcmRm.exit: ; preds = %bb.e
  switch i32 %i.m, label %bb.l [
    i32 0, label %bb.h
    i32 2, label %bb.k
  ]

bb.f:                                             ; preds = %bb.i, %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.v, %bb.j ]
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !76   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.body
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !78
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.s) #22
  br label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEED2Ev.exit

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEED2Ev.exit: ; preds = %.body, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %common.resume

bb.h:                                             ; preds = %_ZN7msgpack2v26detail12parse_helperINS1_21create_object_visitorEE7executeEPKcmRm.exit
  %i.t = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.t, ptr %2, align 8, !tbaa !19
  %i.u = call ptr @__cxa_allocate_exception(i64 16) #21 ; 4 uses
  invoke void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.3)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v118insufficient_bytesE, i64 16), ptr %i.u, align 8, !tbaa !29
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTIN7msgpack2v118insufficient_bytesE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.u) #21
  br label %.body

bb.k:                                             ; preds = %_ZN7msgpack2v26detail12parse_helperINS1_21create_object_visitorEE7executeEPKcmRm.exit
  %i.w = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  store i64 %i.w, ptr %2, align 8, !tbaa !19
  %i.x = icmp ult i64 %i.w, %1
  %. = select i1 %i.x, i32 1, i32 2
  br label %bb.l

bb.l:                                             ; preds = %_ZN7msgpack2v26detail12parse_helperINS1_21create_object_visitorEE7executeEPKcmRm.exit, %bb.k
  %.0 = phi i32 [ %., %bb.k ], [ %i.m, %_ZN7msgpack2v26detail12parse_helperINS1_21create_object_visitorEE7executeEPKcmRm.exit ]
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !76   ; 3 uses
  %.not.i.i.i.i.i21 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i21, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEED2Ev.exit22, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !78
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #22
  br label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEED2Ev.exit22

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEED2Ev.exit22: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v118insufficient_bytesC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v118insufficient_bytesE, i64 16), ptr %0, align 8, !tbaa !29
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v118insufficient_bytesD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #11

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE7executeEPKcmRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.msgpack::v2::detail::context<msgpack::v2::detail::parse_helper<msgpack::v2::detail::create_object_visitor>>::array_sv", align 8 ; 4 uses
  %5 = alloca %"struct.msgpack::v2::detail::context<msgpack::v2::detail::parse_helper<msgpack::v2::detail::create_object_visitor>>::array_ev", align 8 ; 4 uses
  %6 = alloca %"struct.msgpack::v2::detail::context<msgpack::v2::detail::parse_helper<msgpack::v2::detail::create_object_visitor>>::map_sv", align 8 ; 4 uses
  %7 = alloca %"struct.msgpack::v2::detail::context<msgpack::v2::detail::parse_helper<msgpack::v2::detail::create_object_visitor>>::map_ev", align 8 ; 4 uses
  %8 = alloca %"struct.msgpack::v2::detail::context<msgpack::v2::detail::parse_helper<msgpack::v2::detail::create_object_visitor>>::array_sv", align 8 ; 4 uses
  %9 = alloca %"struct.msgpack::v2::detail::context<msgpack::v2::detail::parse_helper<msgpack::v2::detail::create_object_visitor>>::array_ev", align 8 ; 4 uses
  %10 = alloca %"struct.msgpack::v2::detail::context<msgpack::v2::detail::parse_helper<msgpack::v2::detail::create_object_visitor>>::array_sv", align 8 ; 4 uses
  %11 = alloca %"struct.msgpack::v2::detail::context<msgpack::v2::detail::parse_helper<msgpack::v2::detail::create_object_visitor>>::array_ev", align 8 ; 4 uses
  %12 = alloca %"struct.msgpack::v2::detail::context<msgpack::v2::detail::parse_helper<msgpack::v2::detail::create_object_visitor>>::map_sv", align 8 ; 4 uses
  %13 = alloca %"struct.msgpack::v2::detail::context<msgpack::v2::detail::parse_helper<msgpack::v2::detail::create_object_visitor>>::map_ev", align 8 ; 4 uses
  %14 = alloca %"struct.msgpack::v2::detail::context<msgpack::v2::detail::parse_helper<msgpack::v2::detail::create_object_visitor>>::map_sv", align 8 ; 4 uses
  %15 = alloca %"struct.msgpack::v2::detail::context<msgpack::v2::detail::parse_helper<msgpack::v2::detail::create_object_visitor>>::map_ev", align 8 ; 4 uses
  store ptr %1, ptr %0, align 8, !tbaa !80
  %i.a = load i64, ptr %3, align 8, !tbaa !19     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 59 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.e = icmp samesign eq i64 %i.a, %2
  br i1 %i.e, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 32 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 59 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 27 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 54 uses
  %i.k = ptrtoint ptr %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.ig
  %i.l = phi ptr [ %i.ayb, %bb.ig ], [ %i.b, %.preheader ] ; 6 uses
  %.0363 = phi ptr [ %.1364, %bb.ig ], [ null, %.preheader ] ; 2 uses
  %.0 = phi i1 [ %.23, %bb.ig ], [ false, %.preheader ]
  %i.m = load i32, ptr %i.f, align 8, !tbaa !75
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.an

bb.c:                                             ; preds = %bb.b
  %i.o = load i8, ptr %i.l, align 1, !tbaa !12    ; 10 uses
  %i.p = zext i8 %i.o to i64                      ; 2 uses
  %i.q = icmp sgt i8 %i.o, -1
  br i1 %i.q, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !83, !nonnull !66, !align !84
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !85
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !62   ; 2 uses
  store i32 2, ptr %i.v, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.p, ptr %i.w, align 8, !tbaa !12
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !81   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store ptr %i.y, ptr %i.c, align 8, !tbaa !81
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !86   ; 2 uses
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !86  ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.ac = load ptr, ptr %i.g, align 8, !nonnull !66, !align !84
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 96 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i.i
  %i.ae = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %i.bb, %bb.j ] ; 4 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8 ; 5 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !89
  switch i32 %i.ag, label %bb.j [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !85
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -8 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !62
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !62
  %i.al = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !90
  %i.an = add i32 %i.am, -1                       ; 2 uses
  store i32 %i.an, ptr %i.al, align 4, !tbaa !90
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.sink.split.i.i, label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.ad, align 8, !tbaa !85
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !62
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !62
  store i32 2, ptr %i.af, align 4, !tbaa !89
  br label %.sink.split

bb.h:                                             ; preds = %bb.e
  %i.at = load ptr, ptr %i.ad, align 8, !tbaa !85
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -8 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !62
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !62
  %i.ax = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !90
  %i.az = add i32 %i.ay, -1                       ; 2 uses
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !90
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.sink.split.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.af, align 4, !tbaa !89
  br label %.sink.split

.sink.split.i.i:                                  ; preds = %bb.h, %bb.f
  %.sink.i.i = phi ptr [ %i.ai, %bb.f ], [ %i.au, %bb.h ]
  store ptr %i.af, ptr %i.j, align 8, !tbaa !77
  store ptr %.sink.i.i, ptr %i.ad, align 8, !tbaa !63
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i.i, %bb.e
  %i.bb = phi ptr [ %i.ae, %bb.e ], [ %i.af, %.sink.split.i.i ] ; 2 uses
  %i.bc = icmp eq ptr %i.z, %i.bb
  br i1 %i.bc, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit, label %bb.e

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit: ; preds = %bb.d, %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.be = load ptr, ptr %0, align 8, !tbaa !80
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  store i64 %i.bh, ptr %3, align 8, !tbaa !19
  store i32 0, ptr %i.f, align 8, !tbaa !75
  br label %.thread

bb.k:                                             ; preds = %bb.c
  %i.bi = icmp samesign ugt i8 %i.o, -33
  br i1 %i.bi, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.bj = load ptr, ptr %i.g, align 8, !tbaa !83, !nonnull !66, !align !84
  %i.bk = sext i8 %i.o to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !85
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !62 ; 2 uses
  store i32 3, ptr %i.bo, align 8, !tbaa !15
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %i.bk, ptr %i.bp, align 8, !tbaa !12
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !81  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store ptr %i.br, ptr %i.c, align 8, !tbaa !81
  %i.bs = load ptr, ptr %i.i, align 8, !tbaa !86  ; 2 uses
  %i.bt = load ptr, ptr %i.j, align 8, !tbaa !86  ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit538, label %.lr.ph.i.i533

.lr.ph.i.i533:                                    ; preds = %bb.l
  %i.bv = load ptr, ptr %i.g, align 8, !nonnull !66, !align !84
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 96 ; 4 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.r, %.lr.ph.i.i533
  %i.bx = phi ptr [ %i.bt, %.lr.ph.i.i533 ], [ %i.cu, %bb.r ] ; 4 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -8 ; 5 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !89
  switch i32 %i.bz, label %bb.r [
    i32 0, label %bb.n
    i32 1, label %bb.o
    i32 2, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.ca = load ptr, ptr %i.bw, align 8, !tbaa !85
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -8 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !62
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store ptr %i.cd, ptr %i.cb, align 8, !tbaa !62
  %i.ce = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !90
  %i.cg = add i32 %i.cf, -1                       ; 2 uses
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !90
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %.sink.split.i.i535, label %.sink.split

bb.o:                                             ; preds = %bb.m
  %i.ci = load ptr, ptr %i.bw, align 8, !tbaa !85
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -8 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !62
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !62
  store i32 2, ptr %i.by, align 4, !tbaa !89
  br label %.sink.split

bb.p:                                             ; preds = %bb.m
  %i.cm = load ptr, ptr %i.bw, align 8, !tbaa !85
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -8 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !62
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  store ptr %i.cp, ptr %i.cn, align 8, !tbaa !62
  %i.cq = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !90
  %i.cs = add i32 %i.cr, -1                       ; 2 uses
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !90
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %.sink.split.i.i535, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 1, ptr %i.by, align 4, !tbaa !89
  br label %.sink.split

.sink.split.i.i535:                               ; preds = %bb.p, %bb.n
  %.sink.i.i536 = phi ptr [ %i.cb, %bb.n ], [ %i.cn, %bb.p ]
  store ptr %i.by, ptr %i.j, align 8, !tbaa !77
  store ptr %.sink.i.i536, ptr %i.bw, align 8, !tbaa !63
  br label %bb.r

bb.r:                                             ; preds = %.sink.split.i.i535, %bb.m
  %i.cu = phi ptr [ %i.bx, %bb.m ], [ %i.by, %.sink.split.i.i535 ] ; 2 uses
  %i.cv = icmp eq ptr %i.bs, %i.cu
  br i1 %i.cv, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit538, label %bb.m

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit538: ; preds = %bb.l, %bb.r
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.cx = load ptr, ptr %0, align 8, !tbaa !80
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
end_hunk_0
begin_hunk_1_@_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE7executeEPKcmRm:bb.a
  %i.avj = getelementptr inbounds i8, ptr %i.avi, i64 -8 ; 3 uses
  %i.avk = load ptr, ptr %i.avj, align 8, !tbaa !62
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avk, i64 24
  store ptr %i.avl, ptr %i.avj, align 8, !tbaa !62
  %i.avm = getelementptr inbounds i8, ptr %i.aut, i64 -4 ; 2 uses
  %i.avn = load i32, ptr %i.avm, align 4, !tbaa !90
  %i.avo = add i32 %i.avn, -1                     ; 2 uses
  store i32 %i.avo, ptr %i.avm, align 4, !tbaa !90
  %i.avp = icmp eq i32 %i.avo, 0
  br i1 %i.avp, label %.sink.split.i.i733, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  store i32 1, ptr %i.auu, align 4, !tbaa !89
  br label %.sink.split2324

.sink.split.i.i733:                               ; preds = %bb.hq, %bb.ho
  %.sink.i.i734 = phi ptr [ %i.aux, %bb.ho ], [ %i.avj, %bb.hq ]
  store ptr %i.auu, ptr %i.j, align 8, !tbaa !77
  store ptr %.sink.i.i734, ptr %i.aus, align 8, !tbaa !63
  br label %bb.hs

bb.hs:                                            ; preds = %.sink.split.i.i733, %bb.hn
  %i.avq = phi ptr [ %i.aut, %bb.hn ], [ %i.auu, %.sink.split.i.i733 ] ; 2 uses
  %i.avr = icmp eq ptr %i.auo, %i.avq
  br i1 %i.avr, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit736, label %bb.hn

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit736: ; preds = %bb.hm, %bb.hs
  %i.avs = getelementptr inbounds nuw i8, ptr %i.auh, i64 1
  %i.avt = load ptr, ptr %0, align 8, !tbaa !80
  %i.avu = ptrtoint ptr %i.avs to i64
  %i.avv = ptrtoint ptr %i.avt to i64
  %i.avw = sub i64 %i.avu, %i.avv
  store i64 %i.avw, ptr %3, align 8, !tbaa !19
  store i32 0, ptr %i.f, align 8, !tbaa !75
  br label %.thread

bb.ht:                                            ; preds = %bb.ar
  %i.avx = load ptr, ptr %i.g, align 8, !tbaa !83, !nonnull !66, !align !84
  %i.avy = call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9visit_extEPKcm(ptr noundef nonnull align 8 dereferenceable(121) %i.avx, ptr noundef %i.go, i64 noundef %i.gs)
  %i.avz = load ptr, ptr %i.c, align 8, !tbaa !81 ; 3 uses
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avz, i64 1
  store ptr %i.awa, ptr %i.c, align 8, !tbaa !81
  br i1 %i.avy, label %bb.hu, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit744.thread

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit744.thread: ; preds = %bb.ht
  %i.awb = getelementptr inbounds nuw i8, ptr %i.avz, i64 1
  %i.awc = load ptr, ptr %0, align 8, !tbaa !80
  %i.awd = ptrtoint ptr %i.awb to i64
  %i.awe = ptrtoint ptr %i.awc to i64
  %i.awf = sub i64 %i.awd, %i.awe
  store i64 %i.awf, ptr %3, align 8, !tbaa !19
  br label %.thread

bb.hu:                                            ; preds = %bb.ht
  %i.awg = load ptr, ptr %i.i, align 8, !tbaa !86 ; 2 uses
  %i.awh = load ptr, ptr %i.j, align 8, !tbaa !86 ; 2 uses
  %i.awi = icmp eq ptr %i.awg, %i.awh
  br i1 %i.awi, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit744, label %.lr.ph.i.i738

.lr.ph.i.i738:                                    ; preds = %bb.hu
  %i.awj = load ptr, ptr %i.g, align 8, !nonnull !66, !align !84
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awj, i64 96 ; 4 uses
  br label %bb.hv

bb.hv:                                            ; preds = %bb.ia, %.lr.ph.i.i738
  %i.awl = phi ptr [ %i.awh, %.lr.ph.i.i738 ], [ %i.axi, %bb.ia ] ; 4 uses
  %i.awm = getelementptr inbounds i8, ptr %i.awl, i64 -8 ; 5 uses
  %i.awn = load i32, ptr %i.awm, align 4, !tbaa !89
  switch i32 %i.awn, label %bb.ia [
    i32 0, label %bb.hw
    i32 1, label %bb.hx
    i32 2, label %bb.hy
  ]

bb.hw:                                            ; preds = %bb.hv
  %i.awo = load ptr, ptr %i.awk, align 8, !tbaa !85
  %i.awp = getelementptr inbounds i8, ptr %i.awo, i64 -8 ; 3 uses
  %i.awq = load ptr, ptr %i.awp, align 8, !tbaa !62
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awq, i64 24
  store ptr %i.awr, ptr %i.awp, align 8, !tbaa !62
  %i.aws = getelementptr inbounds i8, ptr %i.awl, i64 -4 ; 2 uses
  %i.awt = load i32, ptr %i.aws, align 4, !tbaa !90
  %i.awu = add i32 %i.awt, -1                     ; 2 uses
  store i32 %i.awu, ptr %i.aws, align 4, !tbaa !90
  %i.awv = icmp eq i32 %i.awu, 0
  br i1 %i.awv, label %.sink.split.i.i741, label %.sink.split2324

bb.hx:                                            ; preds = %bb.hv
  %i.aww = load ptr, ptr %i.awk, align 8, !tbaa !85
  %i.awx = getelementptr inbounds i8, ptr %i.aww, i64 -8 ; 2 uses
  %i.awy = load ptr, ptr %i.awx, align 8, !tbaa !62
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awy, i64 24
  store ptr %i.awz, ptr %i.awx, align 8, !tbaa !62
  store i32 2, ptr %i.awm, align 4, !tbaa !89
  br label %.sink.split2324

bb.hy:                                            ; preds = %bb.hv
  %i.axa = load ptr, ptr %i.awk, align 8, !tbaa !85
  %i.axb = getelementptr inbounds i8, ptr %i.axa, i64 -8 ; 3 uses
  %i.axc = load ptr, ptr %i.axb, align 8, !tbaa !62
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axc, i64 24
  store ptr %i.axd, ptr %i.axb, align 8, !tbaa !62
  %i.axe = getelementptr inbounds i8, ptr %i.awl, i64 -4 ; 2 uses
  %i.axf = load i32, ptr %i.axe, align 4, !tbaa !90
  %i.axg = add i32 %i.axf, -1                     ; 2 uses
  store i32 %i.axg, ptr %i.axe, align 4, !tbaa !90
  %i.axh = icmp eq i32 %i.axg, 0
  br i1 %i.axh, label %.sink.split.i.i741, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  store i32 1, ptr %i.awm, align 4, !tbaa !89
  br label %.sink.split2324

.sink.split.i.i741:                               ; preds = %bb.hy, %bb.hw
  %.sink.i.i742 = phi ptr [ %i.awp, %bb.hw ], [ %i.axb, %bb.hy ]
  store ptr %i.awm, ptr %i.j, align 8, !tbaa !77
  store ptr %.sink.i.i742, ptr %i.awk, align 8, !tbaa !63
  br label %bb.ia

bb.ia:                                            ; preds = %.sink.split.i.i741, %bb.hv
  %i.axi = phi ptr [ %i.awl, %bb.hv ], [ %i.awm, %.sink.split.i.i741 ] ; 2 uses
  %i.axj = icmp eq ptr %i.awg, %i.axi
  br i1 %i.axj, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit744, label %bb.hv

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit744: ; preds = %bb.hu, %bb.ia
  %i.axk = getelementptr inbounds nuw i8, ptr %i.avz, i64 1
  %i.axl = load ptr, ptr %0, align 8, !tbaa !80
  %i.axm = ptrtoint ptr %i.axk to i64
  %i.axn = ptrtoint ptr %i.axl to i64
  %i.axo = sub i64 %i.axm, %i.axn
  store i64 %i.axo, ptr %3, align 8, !tbaa !19
  store i32 0, ptr %i.f, align 8, !tbaa !75
  br label %.thread

bb.ib:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %0, ptr %8, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store ptr %0, ptr %9, align 8, !tbaa !184
  %i.axp = call noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE15start_aggregateItNS6_8array_svENS6_8array_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %i.go, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %.not468 = icmp eq i32 %i.axp, 0
  br i1 %.not468, label %bb.ig, label %.thread

bb.ic:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr %0, ptr %10, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr %0, ptr %11, align 8, !tbaa !184
  %i.axq = call noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE15start_aggregateIjNS6_8array_svENS6_8array_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %i.go, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %.not467 = icmp eq i32 %i.axq, 0
  br i1 %.not467, label %bb.ig, label %.thread

bb.id:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  store ptr %0, ptr %12, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  store ptr %0, ptr %13, align 8, !tbaa !184
  %i.axr = call noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE15start_aggregateItNS6_6map_svENS6_6map_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %i.go, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %.not466 = icmp eq i32 %i.axr, 0
  br i1 %.not466, label %bb.ig, label %.thread

bb.ie:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  store ptr %0, ptr %14, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  store ptr %0, ptr %15, align 8, !tbaa !184
  %i.axs = call noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE15start_aggregateIjNS6_6map_svENS6_6map_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %i.go, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %.not465 = icmp eq i32 %i.axs, 0
  br i1 %.not465, label %bb.ig, label %.thread

bb.if:                                            ; preds = %bb.ar
  %i.axt = getelementptr i8, ptr %i.gx, i64 -1
  %i.axu = load ptr, ptr %0, align 8, !tbaa !80
  %i.axv = ptrtoint ptr %i.axt to i64
  %i.axw = ptrtoint ptr %i.axu to i64             ; 2 uses
  %i.axx = sub i64 %i.axv, %i.axw
  store i64 %i.axx, ptr %3, align 8, !tbaa !19
  %i.axy = load ptr, ptr %i.g, align 8, !tbaa !83, !nonnull !66, !align !84
  %i.axz = sub i64 %i.gq, %i.axw                  ; 2 uses
  %i.aya = add nsw i64 %i.axz, -1
  call void @_ZN7msgpack2v26detail21create_object_visitor11parse_errorEmm(ptr noundef nonnull align 8 dereferenceable(121) %i.axy, i64 noundef %i.aya, i64 noundef %i.axz)
  br label %.thread

.sink.split2324:                                  ; preds = %bb.hw, %bb.ho, %bb.hg, %bb.gx, %bb.go, %bb.ge, %bb.fv, %bb.fl, %bb.fc, %bb.et, %bb.el, %bb.ed, %bb.dv, %bb.dn, %bb.df, %bb.cy, %bb.cr, %bb.ck, %bb.cd, %bb.bw, %bb.bp, %bb.bi, %bb.bb, %bb.au, %bb.hz, %bb.hx, %bb.hr, %bb.hp, %bb.hj, %bb.hh, %bb.ha, %bb.gy, %bb.gt, %bb.gr, %bb.gp, %bb.gk, %bb.gh, %bb.gf, %bb.ga, %bb.fy, %bb.fw, %bb.fr, %bb.fo, %bb.fm, %bb.fh, %bb.ff, %bb.fd, %bb.ey, %bb.ew, %bb.eu, %bb.eo, %bb.em, %bb.eg, %bb.ee, %bb.dy, %bb.dw, %bb.dq, %bb.do, %bb.di, %bb.dg, %bb.db, %bb.cz, %bb.cu, %bb.cs, %bb.cn, %bb.cl, %bb.cg, %bb.ce, %bb.bz, %bb.bx, %bb.bs, %bb.bq, %bb.bl, %bb.bj, %bb.be, %bb.bc, %bb.ax, %bb.av, %bb.fq, %bb.gj, %bb.hc
  %.sink = phi i32 [ 0, %bb.hr ], [ 0, %bb.hj ], [ 0, %bb.ha ], [ 33, %bb.gt ], [ 0, %bb.gr ], [ 32, %bb.gk ], [ 0, %bb.gh ], [ 33, %bb.ga ], [ 0, %bb.fy ], [ 32, %bb.fr ], [ 0, %bb.fo ], [ 33, %bb.fh ], [ 0, %bb.ff ], [ 32, %bb.ey ], [ 0, %bb.ew ], [ 0, %bb.eo ], [ 0, %bb.eg ], [ 0, %bb.dy ], [ 0, %bb.dq ], [ 0, %bb.di ], [ 0, %bb.db ], [ 0, %bb.cu ], [ 0, %bb.cn ], [ 0, %bb.cg ], [ 0, %bb.bz ], [ 0, %bb.bs ], [ 0, %bb.bl ], [ 0, %bb.be ], [ 0, %bb.ax ], [ 34, %bb.fq ], [ 34, %bb.hc ], [ 34, %bb.gj ], [ 0, %bb.hz ], [ 0, %bb.av ], [ 0, %bb.gx ], [ 0, %bb.bc ], [ 0, %bb.hg ], [ 0, %bb.bj ], [ 0, %bb.ho ], [ 0, %bb.bq ], [ 0, %bb.au ], [ 0, %bb.bx ], [ 0, %bb.bb ], [ 0, %bb.ce ], [ 0, %bb.bi ], [ 0, %bb.cl ], [ 0, %bb.bp ], [ 0, %bb.cs ], [ 0, %bb.bw ], [ 0, %bb.cz ], [ 0, %bb.cd ], [ 0, %bb.dg ], [ 0, %bb.ck ], [ 0, %bb.do ], [ 0, %bb.cr ], [ 0, %bb.dw ], [ 0, %bb.cy ], [ 0, %bb.ee ], [ 0, %bb.df ], [ 0, %bb.em ], [ 0, %bb.dn ], [ 0, %bb.eu ], [ 0, %bb.dv ], [ 0, %bb.fd ], [ 0, %bb.ed ], [ 0, %bb.fm ], [ 0, %bb.el ], [ 0, %bb.fw ], [ 0, %bb.et ], [ 0, %bb.gf ], [ 0, %bb.fc ], [ 0, %bb.gp ], [ 0, %bb.fl ], [ 0, %bb.gy ], [ 0, %bb.fv ], [ 0, %bb.hh ], [ 0, %bb.ge ], [ 0, %bb.hp ], [ 0, %bb.go ], [ 0, %bb.hx ], [ 0, %bb.hw ]
  %.23.ph = phi i1 [ false, %bb.hr ], [ false, %bb.hj ], [ false, %bb.ha ], [ true, %bb.gt ], [ false, %bb.gr ], [ true, %bb.gk ], [ false, %bb.gh ], [ true, %bb.ga ], [ false, %bb.fy ], [ true, %bb.fr ], [ false, %bb.fo ], [ true, %bb.fh ], [ false, %bb.ff ], [ true, %bb.ey ], [ false, %bb.ew ], [ false, %bb.eo ], [ false, %bb.eg ], [ false, %bb.dy ], [ false, %bb.dq ], [ false, %bb.di ], [ false, %bb.db ], [ false, %bb.cu ], [ false, %bb.cn ], [ false, %bb.cg ], [ false, %bb.bz ], [ false, %bb.bs ], [ false, %bb.bl ], [ false, %bb.be ], [ false, %bb.ax ], [ true, %bb.fq ], [ true, %bb.hc ], [ true, %bb.gj ], [ false, %bb.hz ], [ false, %bb.av ], [ false, %bb.gx ], [ false, %bb.bc ], [ false, %bb.hg ], [ false, %bb.bj ], [ false, %bb.ho ], [ false, %bb.bq ], [ false, %bb.au ], [ false, %bb.bx ], [ false, %bb.bb ], [ false, %bb.ce ], [ false, %bb.bi ], [ false, %bb.cl ], [ false, %bb.bp ], [ false, %bb.cs ], [ false, %bb.bw ], [ false, %bb.cz ], [ false, %bb.cd ], [ false, %bb.dg ], [ false, %bb.ck ], [ false, %bb.do ], [ false, %bb.cr ], [ false, %bb.dw ], [ false, %bb.cy ], [ false, %bb.ee ], [ false, %bb.df ], [ false, %bb.em ], [ false, %bb.dn ], [ false, %bb.eu ], [ false, %bb.dv ], [ false, %bb.fd ], [ false, %bb.ed ], [ false, %bb.fm ], [ false, %bb.el ], [ false, %bb.fw ], [ false, %bb.et ], [ false, %bb.gf ], [ false, %bb.fc ], [ false, %bb.gp ], [ false, %bb.fl ], [ false, %bb.gy ], [ false, %bb.fv ], [ false, %bb.hh ], [ false, %bb.ge ], [ false, %bb.hp ], [ false, %bb.go ], [ false, %bb.hx ], [ false, %bb.hw ]
  store i32 %.sink, ptr %i.f, align 8, !tbaa !75
  br label %bb.ig

bb.ig:                                            ; preds = %.sink.split2324, %bb.an, %bb.ie, %bb.id, %bb.ic, %bb.ib
  %.1364 = phi ptr [ %i.go, %bb.ie ], [ %.0363, %bb.an ], [ %i.go, %bb.ib ], [ %i.go, %bb.ic ], [ %i.go, %bb.id ], [ %i.go, %.sink.split2324 ]
  %.23 = phi i1 [ false, %bb.ie ], [ false, %bb.an ], [ false, %bb.ib ], [ false, %bb.ic ], [ false, %bb.id ], [ %.23.ph, %.sink.split2324 ]
  %i.ayb = load ptr, ptr %i.c, align 8, !tbaa !81 ; 3 uses
  %.not493 = icmp eq ptr %i.ayb, %i.d
  br i1 %.not493, label %bb.ih, label %bb.b, !llvm.loop !182

bb.ih:                                            ; preds = %bb.ig
  %i.ayc = load ptr, ptr %0, align 8, !tbaa !80
  %16 = ptrtoint ptr %i.ayb to i64
  %i.ayd = ptrtoint ptr %i.ayc to i64
  %i.aye = sub i64 %16, %i.ayd
  store i64 %i.aye, ptr %3, align 8, !tbaa !19
  br label %.thread

.thread:                                          ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ah, %bb.af, %bb.ie, %bb.id, %bb.ic, %bb.ib, %bb.a, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit544.thread, %bb.am, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit544, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit538, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit744, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit744.thread, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit736, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit736.thread, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit728, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit728.thread, %.loopexit959, %.thread925, %.loopexit958, %.thread912, %.loopexit957, %.thread899, %.loopexit956, %.thread886, %.loopexit955, %.thread873, %.loopexit, %.thread860, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit669, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit669.thread, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit661, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit661.thread, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit653, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit653.thread, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit645, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit645.thread, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit637, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit637.thread, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit629, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit620, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit611, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit601, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit592, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit584, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit576, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit568, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit560, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit552, %bb.aq, %bb.if, %bb.ih
  %.63 = phi i32 [ 0, %bb.a ], [ 0, %bb.aq ], [ -1, %bb.if ], [ 0, %bb.ih ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit552 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit560 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit568 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit576 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit584 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit592 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit601 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit611 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit620 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit629 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit637 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit645 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit653 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit661 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit669 ], [ 2, %.loopexit ], [ 2, %.loopexit955 ], [ -2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit744.thread ], [ 2, %.loopexit956 ], [ 2, %.loopexit957 ], [ -1, %bb.am ], [ 2, %.loopexit958 ], [ 2, %.loopexit959 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit538 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit728 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit736 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit744 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit544 ], [ -2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit637.thread ], [ -2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit645.thread ], [ -2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit653.thread ], [ -2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit661.thread ], [ -2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit669.thread ], [ -2, %.thread860 ], [ -2, %.thread873 ], [ -2, %.thread886 ], [ -2, %.thread899 ], [ -2, %.thread912 ], [ -2, %.thread925 ], [ -2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit728.thread ], [ -2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit736.thread ], [ -2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit544.thread ], [ %i.fg, %bb.af ], [ %i.fi, %bb.ah ], [ %i.fp, %bb.aj ], [ %i.fw, %bb.ak ], [ %i.gc, %bb.al ], [ %i.axq, %bb.ic ], [ %i.axp, %bb.ib ], [ %i.axr, %bb.id ], [ %i.axs, %bb.ie ]
  ret i32 %.63
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !81
  br i1 %1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !80
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  store i64 %i.g, ptr %2, align 8, !tbaa !19
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !86   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !86   ; 2 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !66, !align !84
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %.lr.ph.i
  %i.p = phi ptr [ %i.k, %.lr.ph.i ], [ %i.am, %bb.i ] ; 4 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -8 ; 5 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !89
  switch i32 %i.r, label %bb.i [
    i32 0, label %bb.e
    i32 1, label %bb.f
    i32 2, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !85
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !62
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.v, ptr %i.t, align 8, !tbaa !62
  %i.w = getelementptr inbounds i8, ptr %i.p, i64 -4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !90
  %i.y = add i32 %i.x, -1                         ; 2 uses
  store i32 %i.y, ptr %i.w, align 4, !tbaa !90
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.sink.split.i, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !85
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !62
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !62
  store i32 2, ptr %i.q, align 4, !tbaa !89
  br label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit.thread

bb.g:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !85
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !62
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !62
  %i.ai = getelementptr inbounds i8, ptr %i.p, i64 -4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !90
  %i.ak = add i32 %i.aj, -1                       ; 2 uses
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !90
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %.sink.split.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %i.q, align 4, !tbaa !89
  br label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit.thread

.sink.split.i:                                    ; preds = %bb.g, %bb.e
  %.sink.i = phi ptr [ %i.t, %bb.e ], [ %i.af, %bb.g ]
  store ptr %i.q, ptr %i.j, align 8, !tbaa !77
  store ptr %.sink.i, ptr %i.o, align 8, !tbaa !63
  br label %bb.i

bb.i:                                             ; preds = %.sink.split.i, %bb.d
  %i.am = phi ptr [ %i.p, %bb.d ], [ %i.q, %.sink.split.i ] ; 2 uses
  %i.an = icmp eq ptr %i.i, %i.am
  br i1 %i.an, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %bb.d

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit: ; preds = %bb.i, %bb.c
  %i.ao = load ptr, ptr %0, align 8, !tbaa !80
  %i.ap = ptrtoint ptr %i.c to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  store i64 %i.ar, ptr %2, align 8, !tbaa !19
  br label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit.thread

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit.thread: ; preds = %bb.e, %bb.h, %bb.f, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit
  %.2.i8 = phi i32 [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.e ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.as, align 8, !tbaa !75
  br label %bb.j

bb.j:                                             ; preds = %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit.thread, %bb.b
  %.0 = phi i32 [ %.2.i8, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit.thread ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9visit_strEPKcj(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i32 %2 to i64                       ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !185
  %i.d = icmp ult i64 %i.c, %i.a
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN7msgpack2v117str_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN7msgpack2v117str_size_overflowE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #21
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !85
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62   ; 7 uses
  store i32 5, ptr %i.j, align 8, !tbaa !15
  %i.k = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58
  %i.n = tail call noundef zeroext i1 %i.k(i32 noundef 5, i64 noundef %i.a, ptr noundef %i.m)
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %1, ptr %i.p, align 8, !tbaa !12
  store i32 %2, ptr %i.o, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 1, ptr %i.q, align 8, !tbaa !65
  br label %bb.q

bb.h:                                             ; preds = %bb.f, %bb.e
  %.not23 = icmp eq ptr %1, null
  br i1 %.not23, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !64   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !92
  %i.w = load i64, ptr %i.t, align 8, !tbaa !93   ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.a
  br i1 %i.x, label %bb.j, label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

bb.j:                                             ; preds = %bb.i
  %i.y = load i64, ptr %i.s, align 8, !tbaa !46
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.022.i.i = phi i64 [ %i.y, %bb.j ], [ %i.aa, %bb.l ] ; 5 uses
  %i.z = icmp ult i64 %.022.i.i, %i.a
  br i1 %i.z, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.not.i.i = icmp sgt i64 %.022.i.i, 0
  %i.aa = shl nuw nsw i64 %.022.i.i, 1
  br i1 %.not.i.i, label %bb.k, label %.thread

bb.m:                                             ; preds = %bb.k
  %i.ab = icmp ugt i64 %.022.i.i, -9
  br i1 %i.ab, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ac, align 8, !tbaa !29
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

.thread:                                          ; preds = %bb.l, %bb.m
  %.2.i.i25 = phi i64 [ %.022.i.i, %bb.m ], [ %i.a, %bb.l ] ; 2 uses
  %i.ad = add nuw i64 %.2.i.i25, 8
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ad) #25 ; 4 uses
  %.not27.i.i = icmp eq ptr %i.ae, null
  br i1 %.not27.i.i, label %bb.o, label %_ZN7msgpack2v14zone15allocate_expandEm.exit.i

bb.o:                                             ; preds = %.thread
  %i.af = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.af, align 8, !tbaa !29
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN7msgpack2v14zone15allocate_expandEm.exit.i:    ; preds = %.thread
  %i.ag = getelementptr i8, ptr %i.ae, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !42
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !44
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !42
  br label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

_ZN7msgpack2v14zone14allocate_alignEmm.exit:      ; preds = %bb.i, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i
  %i.aj = phi ptr [ %i.ag, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.v, %bb.i ] ; 3 uses
  %i.ak = phi i64 [ %.2.i.i25, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.w, %bb.i ]
  %i.al = sub i64 %i.ak, %i.a
  store i64 %i.al, ptr %i.t, align 8, !tbaa !93
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.a
  store ptr %i.am, ptr %i.u, align 8, !tbaa !92
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr nonnull align 1 %1, i64 %i.a, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.aj, ptr %i.ao, align 8, !tbaa !12
  store i32 %2, ptr %i.an, align 8, !tbaa !12
  br label %bb.q

bb.p:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %i.aq, align 8, !tbaa !12
  store i32 0, ptr %i.ap, align 8, !tbaa !12
  br label %bb.q

bb.q:                                             ; preds = %_ZN7msgpack2v14zone14allocate_alignEmm.exit, %bb.p, %bb.g
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE15start_aggregateINS_2v16detail7fix_tagENS6_8array_svENS6_8array_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !12
  %i.b = and i8 %i.a, 15                          ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.e, ptr %i.c, align 8, !tbaa !81
  %i.f = icmp eq i8 %i.b, 0
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !95, !nonnull !66, !align !84
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83, !nonnull !66, !align !84
  %i.j = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(121) %i.i, i32 noundef 0)
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.l = load ptr, ptr %0, align 8, !tbaa !80
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  store i64 %i.o, ptr %4, align 8, !tbaa !19
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %2, align 8, !tbaa !97, !nonnull !66, !align !84
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !83, !nonnull !66, !align !84
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !63
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  store ptr %i.u, ptr %i.s, align 8, !tbaa !63
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !86   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !86   ; 2 uses
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !66, !align !84
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i
  %i.ad = phi ptr [ %i.y, %.lr.ph.i ], [ %i.ba, %bb.j ] ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 5 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !89
  switch i32 %i.af, label %bb.j [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !85
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !62
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !62
  %i.ak = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !90
  %i.am = add i32 %i.al, -1                       ; 2 uses
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !90
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.sink.split.i, label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.ac, align 8, !tbaa !85
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !62
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !62
  store i32 2, ptr %i.ae, align 4, !tbaa !89
  br label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !85
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !62
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %i.av, ptr %i.at, align 8, !tbaa !62
  %i.aw = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !90
  %i.ay = add i32 %i.ax, -1                       ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !90
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.ae, align 4, !tbaa !89
  br label %.critedge

.sink.split.i:                                    ; preds = %bb.h, %bb.f
  %.sink.i = phi ptr [ %i.ah, %bb.f ], [ %i.at, %bb.h ]
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !77
  store ptr %.sink.i, ptr %i.ac, align 8, !tbaa !63
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.e
  %i.ba = phi ptr [ %i.ad, %bb.e ], [ %i.ae, %.sink.split.i ] ; 2 uses
  %i.bb = icmp eq ptr %i.w, %i.ba
  br i1 %i.bb, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %bb.e

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit: ; preds = %bb.j, %bb.d
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.bd = load ptr, ptr %0, align 8, !tbaa !80
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  store i64 %i.bg, ptr %4, align 8, !tbaa !19
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %i.bh = zext nneg i8 %i.b to i32
  %i.bi = load ptr, ptr %1, align 8, !tbaa !95, !nonnull !66, !align !84
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !83, !nonnull !66, !align !84
  %i.bl = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(121) %i.bk, i32 noundef %i.bh)
  br i1 %i.bl, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.bn = load ptr, ptr %0, align 8, !tbaa !80
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  store i64 %i.bq, ptr %4, align 8, !tbaa !19
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !77 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bt, %i.bv
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.5.0.insert.ext.i = zext nneg i8 %i.b to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 32
  store i64 %.sroa.5.0.insert.shift.i, ptr %i.bt, align 4
  %i.bw = load ptr, ptr %i.bs, align 8, !tbaa !77
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.bx, ptr %i.bs, align 8, !tbaa !77
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.by = load ptr, ptr %i.br, align 8, !tbaa !76 ; 7 uses
  %i.bz = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64               ; 3 uses
  %i.cb = sub i64 %i.bz, %i.ca                    ; 3 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775800
  br i1 %i.cc, label %bb.p, label %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #23
  unreachable

_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.o
  %i.cd = ashr exact i64 %i.cb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cd, i64 1)
  %i.ce = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.cd ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.cd
  %i.cg = tail call i64 @llvm.umin.i64(i64 %i.ce, i64 1152921504606846975)
  %i.ch = select i1 %i.cf, i64 1152921504606846975, i64 %i.cg ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ch, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ci = shl nuw nsw i64 %i.ch, 3
  %i.cj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #26 ; 7 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cb
  %.sroa.5.0.insert.ext11.i = zext nneg i8 %i.b to i64
  %.sroa.5.0.insert.shift12.i = shl nuw nsw i64 %.sroa.5.0.insert.ext11.i, 32
  store i64 %.sroa.5.0.insert.shift12.i, ptr %i.ck, align 4
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.by, %i.bt
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.cl = add i64 %i.bz, -8
  %i.cm = sub i64 %i.cl, %i.ca                    ; 2 uses
  %i.cn = lshr i64 %i.cm, 3
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cm, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader57, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.co, 4611686018427387900     ; 3 uses
  %i.cp = shl i64 %n.vec, 3                       ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cj, i64 %i.cp  ; 2 uses
  %i.cr = getelementptr i8, ptr %i.by, i64 %i.cp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cs = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cj, i64 %i.cs ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.by, i64 %i.cs ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.ct = getelementptr i8, ptr %next.gep51, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep51, align 4, !alias.scope !192
  %wide.load52 = load <2 x i64>, ptr %i.ct, align 4, !alias.scope !192
  %i.cu = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !191
  store <2 x i64> %wide.load52, ptr %i.cu, align 4, !alias.scope !191
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !189

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader57

.lr.ph.i.i.i.i.i.i.i.preheader57:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cq, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cr, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader57, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader57 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader57 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.cw = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !192
  store i64 %i.cw, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !191
  %i.cx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cx, %i.bt
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !190

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cj, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cq, %middle.block ], [ %i.cy, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  %5 = ptrtoint ptr %i.bv to i64
  %6 = sub i64 %5, %i.ca
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %6) #22
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  store ptr %i.cj, ptr %i.br, align 8, !tbaa !76
  store ptr %i.cz, ptr %i.bs, align 8, !tbaa !77
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ch
  store ptr %i.da, ptr %i.bu, align 8, !tbaa !78
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.i, %bb.g, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, %bb.n
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.db, align 8, !tbaa !75
  br label %bb.r

bb.r:                                             ; preds = %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, %.critedge, %bb.l, %bb.c
  %.2 = phi i32 [ 0, %.critedge ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit ], [ -2, %bb.l ], [ -2, %bb.c ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE15start_aggregateINS_2v16detail7fix_tagENS6_6map_svENS6_6map_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !12
  %i.b = and i8 %i.a, 15                          ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.e, ptr %i.c, align 8, !tbaa !81
  %i.f = icmp eq i8 %i.b, 0
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !101, !nonnull !66, !align !84
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83, !nonnull !66, !align !84
  %i.j = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(121) %i.i, i32 noundef 0)
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.l = load ptr, ptr %0, align 8, !tbaa !80
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  store i64 %i.o, ptr %4, align 8, !tbaa !19
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %2, align 8, !tbaa !103, !nonnull !66, !align !84
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !83, !nonnull !66, !align !84
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !63
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  store ptr %i.u, ptr %i.s, align 8, !tbaa !63
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !86   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !86   ; 2 uses
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !66, !align !84
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i
  %i.ad = phi ptr [ %i.y, %.lr.ph.i ], [ %i.ba, %bb.j ] ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 5 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !89
  switch i32 %i.af, label %bb.j [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !85
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !62
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !62
  %i.ak = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !90
  %i.am = add i32 %i.al, -1                       ; 2 uses
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !90
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.sink.split.i, label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.ac, align 8, !tbaa !85
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !62
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !62
  store i32 2, ptr %i.ae, align 4, !tbaa !89
  br label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !85
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !62
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %i.av, ptr %i.at, align 8, !tbaa !62
  %i.aw = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !90
  %i.ay = add i32 %i.ax, -1                       ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !90
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.ae, align 4, !tbaa !89
  br label %.critedge

.sink.split.i:                                    ; preds = %bb.h, %bb.f
  %.sink.i = phi ptr [ %i.ah, %bb.f ], [ %i.at, %bb.h ]
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !77
  store ptr %.sink.i, ptr %i.ac, align 8, !tbaa !63
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.e
  %i.ba = phi ptr [ %i.ad, %bb.e ], [ %i.ae, %.sink.split.i ] ; 2 uses
  %i.bb = icmp eq ptr %i.w, %i.ba
  br i1 %i.bb, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %bb.e

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit: ; preds = %bb.j, %bb.d
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.bd = load ptr, ptr %0, align 8, !tbaa !80
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  store i64 %i.bg, ptr %4, align 8, !tbaa !19
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %i.bh = zext nneg i8 %i.b to i32
  %i.bi = load ptr, ptr %1, align 8, !tbaa !101, !nonnull !66, !align !84
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !83, !nonnull !66, !align !84
  %i.bl = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(121) %i.bk, i32 noundef %i.bh)
  br i1 %i.bl, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.bn = load ptr, ptr %0, align 8, !tbaa !80
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  store i64 %i.bq, ptr %4, align 8, !tbaa !19
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !77 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bt, %i.bv
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.5.0.insert.ext.i = zext nneg i8 %i.b to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, 1
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bt, align 4
  %i.bw = load ptr, ptr %i.bs, align 8, !tbaa !77
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.bx, ptr %i.bs, align 8, !tbaa !77
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.by = load ptr, ptr %i.br, align 8, !tbaa !76 ; 7 uses
  %i.bz = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64               ; 3 uses
  %i.cb = sub i64 %i.bz, %i.ca                    ; 3 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775800
  br i1 %i.cc, label %bb.p, label %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #23
  unreachable

_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.o
  %i.cd = ashr exact i64 %i.cb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cd, i64 1)
  %i.ce = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.cd ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.cd
  %i.cg = tail call i64 @llvm.umin.i64(i64 %i.ce, i64 1152921504606846975)
  %i.ch = select i1 %i.cf, i64 1152921504606846975, i64 %i.cg ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ch, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ci = shl nuw nsw i64 %i.ch, 3
  %i.cj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #26 ; 7 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cb
  %.sroa.5.0.insert.ext11.i = zext nneg i8 %i.b to i64
  %.sroa.5.0.insert.shift12.i = shl nuw nsw i64 %.sroa.5.0.insert.ext11.i, 32
  %.sroa.0.0.insert.insert9.i = or disjoint i64 %.sroa.5.0.insert.shift12.i, 1
  store i64 %.sroa.0.0.insert.insert9.i, ptr %i.ck, align 4
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.by, %i.bt
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.cl = add i64 %i.bz, -8
  %i.cm = sub i64 %i.cl, %i.ca                    ; 2 uses
  %i.cn = lshr i64 %i.cm, 3
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cm, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader57, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.co, 4611686018427387900     ; 3 uses
  %i.cp = shl i64 %n.vec, 3                       ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cj, i64 %i.cp  ; 2 uses
  %i.cr = getelementptr i8, ptr %i.by, i64 %i.cp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cs = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cj, i64 %i.cs ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.by, i64 %i.cs ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.ct = getelementptr i8, ptr %next.gep51, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep51, align 4, !alias.scope !199
  %wide.load52 = load <2 x i64>, ptr %i.ct, align 4, !alias.scope !199
  %i.cu = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !198
  store <2 x i64> %wide.load52, ptr %i.cu, align 4, !alias.scope !198
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !196

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader57

.lr.ph.i.i.i.i.i.i.i.preheader57:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cq, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cr, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader57, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader57 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader57 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.cw = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !199
  store i64 %i.cw, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !198
  %i.cx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cx, %i.bt
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !197

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cj, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cq, %middle.block ], [ %i.cy, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  %5 = ptrtoint ptr %i.bv to i64
  %6 = sub i64 %5, %i.ca
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %6) #22
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  store ptr %i.cj, ptr %i.br, align 8, !tbaa !76
  store ptr %i.cz, ptr %i.bs, align 8, !tbaa !77
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ch
  store ptr %i.da, ptr %i.bu, align 8, !tbaa !78
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.i, %bb.g, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, %bb.n
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.db, align 8, !tbaa !75
  br label %bb.r

bb.r:                                             ; preds = %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, %.critedge, %bb.l, %bb.c
  %.2 = phi i32 [ 0, %.critedge ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit ], [ -2, %bb.l ], [ -2, %bb.c ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v26detail21create_object_visitor11parse_errorEmm(ptr noundef nonnull align 8 dereferenceable(121) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN7msgpack2v111parse_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.8)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN7msgpack2v111parse_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #21
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9visit_extEPKcm(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26
  %i.c = icmp ugt i64 %2, %i.b
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN7msgpack2v117ext_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.9)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN7msgpack2v117ext_size_overflowE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #21
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !85
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62   ; 7 uses
  store i32 9, ptr %i.i, align 8, !tbaa !15
  %i.j = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58
  %i.m = tail call noundef zeroext i1 %i.j(i32 noundef 9, i64 noundef %2, ptr noundef %i.l)
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %1, ptr %i.o, align 8, !tbaa !12
  %i.p = trunc i64 %2 to i32
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr %i.n, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 1, ptr %i.r, align 8, !tbaa !65
  br label %bb.r

bb.h:                                             ; preds = %bb.f, %bb.e
  %.not23 = icmp eq ptr %1, null
  br i1 %.not23, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !64   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !92
  %i.x = load i64, ptr %i.u, align 8, !tbaa !93   ; 2 uses
  %i.y = icmp ult i64 %i.x, %2
  br i1 %i.y, label %bb.j, label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

bb.j:                                             ; preds = %bb.i
  %i.z = load i64, ptr %i.t, align 8, !tbaa !46
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.022.i.i = phi i64 [ %i.z, %bb.j ], [ %i.ab, %bb.l ] ; 4 uses
  %i.aa = icmp ult i64 %.022.i.i, %2
  br i1 %i.aa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.not.i.i = icmp sgt i64 %.022.i.i, 0
  %i.ab = shl nuw i64 %.022.i.i, 1
  br i1 %.not.i.i, label %bb.k, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2.i.i = phi i64 [ %2, %bb.l ], [ %.022.i.i, %bb.k ] ; 3 uses
  %i.ac = icmp ugt i64 %.2.i.i, -9
  br i1 %i.ac, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ad, align 8, !tbaa !29
  tail call void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ae = add nuw i64 %.2.i.i, 8
  %i.af = tail call noalias ptr @malloc(i64 noundef %i.ae) #25 ; 4 uses
  %.not27.i.i = icmp eq ptr %i.af, null
  br i1 %.not27.i.i, label %bb.p, label %_ZN7msgpack2v14zone15allocate_expandEm.exit.i

bb.p:                                             ; preds = %bb.o
  %i.ag = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ag, align 8, !tbaa !29
  tail call void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN7msgpack2v14zone15allocate_expandEm.exit.i:    ; preds = %bb.o
  %i.ah = getelementptr i8, ptr %i.af, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !42
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !44
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !42
  br label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

_ZN7msgpack2v14zone14allocate_alignEmm.exit:      ; preds = %bb.i, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i
  %i.ak = phi ptr [ %i.ah, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.w, %bb.i ] ; 3 uses
  %i.al = phi i64 [ %.2.i.i, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.x, %bb.i ]
  %i.am = sub i64 %i.al, %2
  store i64 %i.am, ptr %i.u, align 8, !tbaa !93
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %2
  store ptr %i.an, ptr %i.v, align 8, !tbaa !92
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr nonnull align 1 %1, i64 %2, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.ak, ptr %i.ap, align 8, !tbaa !12
  %i.aq = trunc i64 %2 to i32
  %i.ar = add i32 %i.aq, -1
  store i32 %i.ar, ptr %i.ao, align 8, !tbaa !12
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr null, ptr %i.at, align 8, !tbaa !12
  store i32 0, ptr %i.as, align 8, !tbaa !12
  br label %bb.r

bb.r:                                             ; preds = %_ZN7msgpack2v14zone14allocate_alignEmm.exit, %bb.q, %bb.g
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9visit_binEPKcj(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i32 %2 to i64                       ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !200
  %i.d = icmp ult i64 %i.c, %i.a
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN7msgpack2v117bin_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.10)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN7msgpack2v117bin_size_overflowE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #21
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !85
end_hunk_1
begin_hunk_2_@_ZN7msgpack2v26detail21create_object_visitor9visit_binEPKcj:bb.a
  %.not.i.i = icmp sgt i64 %.022.i.i, 0
  %i.aa = shl nuw nsw i64 %.022.i.i, 1
  br i1 %.not.i.i, label %bb.k, label %.thread

bb.m:                                             ; preds = %bb.k
  %i.ab = icmp ugt i64 %.022.i.i, -9
  br i1 %i.ab, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ac, align 8, !tbaa !29
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

.thread:                                          ; preds = %bb.l, %bb.m
  %.2.i.i25 = phi i64 [ %.022.i.i, %bb.m ], [ %i.a, %bb.l ] ; 2 uses
  %i.ad = add nuw i64 %.2.i.i25, 8
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ad) #25 ; 4 uses
  %.not27.i.i = icmp eq ptr %i.ae, null
  br i1 %.not27.i.i, label %bb.o, label %_ZN7msgpack2v14zone15allocate_expandEm.exit.i

bb.o:                                             ; preds = %.thread
  %i.af = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.af, align 8, !tbaa !29
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN7msgpack2v14zone15allocate_expandEm.exit.i:    ; preds = %.thread
  %i.ag = getelementptr i8, ptr %i.ae, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !42
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !44
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !42
  br label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

_ZN7msgpack2v14zone14allocate_alignEmm.exit:      ; preds = %bb.i, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i
  %i.aj = phi ptr [ %i.ag, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.v, %bb.i ] ; 3 uses
  %i.ak = phi i64 [ %.2.i.i25, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.w, %bb.i ]
  %i.al = sub i64 %i.ak, %i.a
  store i64 %i.al, ptr %i.t, align 8, !tbaa !93
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.a
  store ptr %i.am, ptr %i.u, align 8, !tbaa !92
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr nonnull align 1 %1, i64 %i.a, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.aj, ptr %i.ao, align 8, !tbaa !12
  store i32 %2, ptr %i.an, align 8, !tbaa !12
  br label %bb.q

bb.p:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %i.aq, align 8, !tbaa !12
  store i32 0, ptr %i.ap, align 8, !tbaa !12
  br label %bb.q

bb.q:                                             ; preds = %_ZN7msgpack2v14zone14allocate_alignEmm.exit, %bb.p, %bb.g
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE15start_aggregateItNS6_8array_svENS6_8array_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %3, align 1                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.d, ptr %i.b, align 8, !tbaa !81
  %i.e = icmp eq i16 %i.a, 0
  br i1 %i.e, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !95, !nonnull !66, !align !84
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !83, !nonnull !66, !align !84
  %i.i = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(121) %i.h, i32 noundef 0)
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.k = load ptr, ptr %0, align 8, !tbaa !80
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  store i64 %i.n, ptr %4, align 8, !tbaa !19
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %2, align 8, !tbaa !97, !nonnull !66, !align !84
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !83, !nonnull !66, !align !84
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !63
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  store ptr %i.t, ptr %i.r, align 8, !tbaa !63
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !86   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !86   ; 2 uses
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !66, !align !84
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 96 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i
  %i.ac = phi ptr [ %i.x, %.lr.ph.i ], [ %i.az, %bb.j ] ; 4 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8 ; 5 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !89
  switch i32 %i.ae, label %bb.j [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !85
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !62
  %i.aj = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !90
  %i.al = add i32 %i.ak, -1                       ; 2 uses
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !90
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.sink.split.i, label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.ab, align 8, !tbaa !85
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !62
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !62
  store i32 2, ptr %i.ad, align 4, !tbaa !89
  br label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.ab, align 8, !tbaa !85
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !62
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %i.au, ptr %i.as, align 8, !tbaa !62
  %i.av = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !90
  %i.ax = add i32 %i.aw, -1                       ; 2 uses
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !90
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.ad, align 4, !tbaa !89
  br label %.critedge

.sink.split.i:                                    ; preds = %bb.h, %bb.f
  %.sink.i = phi ptr [ %i.ag, %bb.f ], [ %i.as, %bb.h ]
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !77
  store ptr %.sink.i, ptr %i.ab, align 8, !tbaa !63
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.e
  %i.az = phi ptr [ %i.ac, %bb.e ], [ %i.ad, %.sink.split.i ] ; 2 uses
  %i.ba = icmp eq ptr %i.v, %i.az
  br i1 %i.ba, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %bb.e

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit: ; preds = %bb.j, %bb.d
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.bc = load ptr, ptr %0, align 8, !tbaa !80
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  store i64 %i.bf, ptr %4, align 8, !tbaa !19
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.a) ; 3 uses
  %i.bg = zext i16 %rev.i.i to i32
  %i.bh = load ptr, ptr %1, align 8, !tbaa !95, !nonnull !66, !align !84
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !83, !nonnull !66, !align !84
  %i.bk = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(121) %i.bj, i32 noundef %i.bg)
  br i1 %i.bk, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.bm = load ptr, ptr %0, align 8, !tbaa !80
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  store i64 %i.bp, ptr %4, align 8, !tbaa !19
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !77 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bs, %i.bu
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.5.0.insert.ext.i = zext i16 %rev.i.i to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 32
  store i64 %.sroa.5.0.insert.shift.i, ptr %i.bs, align 4
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !77
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.bw, ptr %i.br, align 8, !tbaa !77
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !76 ; 7 uses
  %i.by = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bz = ptrtoint ptr %i.bx to i64               ; 3 uses
  %i.ca = sub i64 %i.by, %i.bz                    ; 3 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775800
  br i1 %i.cb, label %bb.p, label %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #23
  unreachable

_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.o
  %i.cc = ashr exact i64 %i.ca, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cc, i64 1)
  %i.cd = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.cc ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %i.cc
  %i.cf = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 1152921504606846975)
  %i.cg = select i1 %i.ce, i64 1152921504606846975, i64 %i.cf ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.cg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ch = shl nuw nsw i64 %i.cg, 3
  %i.ci = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #26 ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ca
  %.sroa.5.0.insert.ext11.i = zext i16 %rev.i.i to i64
  %.sroa.5.0.insert.shift12.i = shl nuw nsw i64 %.sroa.5.0.insert.ext11.i, 32
  store i64 %.sroa.5.0.insert.shift12.i, ptr %i.cj, align 4
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bx, %i.bs
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ck = add i64 %i.by, -8
  %i.cl = sub i64 %i.ck, %i.bz                    ; 2 uses
  %i.cm = lshr i64 %i.cl, 3
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cl, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader57, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cn, 4611686018427387900     ; 3 uses
  %i.co = shl i64 %n.vec, 3                       ; 2 uses
  %i.cp = getelementptr i8, ptr %i.ci, i64 %i.co  ; 2 uses
  %i.cq = getelementptr i8, ptr %i.bx, i64 %i.co
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cr = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ci, i64 %i.cr ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.bx, i64 %i.cr ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.cs = getelementptr i8, ptr %next.gep51, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep51, align 4, !alias.scope !207
  %wide.load52 = load <2 x i64>, ptr %i.cs, align 4, !alias.scope !207
  %i.ct = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !206
  store <2 x i64> %wide.load52, ptr %i.ct, align 4, !alias.scope !206
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !204

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader57

.lr.ph.i.i.i.i.i.i.i.preheader57:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cp, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader57, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader57 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader57 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.cv = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !207
  store i64 %i.cv, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !206
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cw, %i.bs
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !205

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ci, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cp, %middle.block ], [ %i.cx, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  %5 = ptrtoint ptr %i.bu to i64
  %6 = sub i64 %5, %i.bz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %6) #22
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  store ptr %i.ci, ptr %i.bq, align 8, !tbaa !76
  store ptr %i.cy, ptr %i.br, align 8, !tbaa !77
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cg
  store ptr %i.cz, ptr %i.bt, align 8, !tbaa !78
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.i, %bb.g, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, %bb.n
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.da, align 8, !tbaa !75
  br label %bb.r

bb.r:                                             ; preds = %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, %.critedge, %bb.l, %bb.c
  %.2 = phi i32 [ 0, %.critedge ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit ], [ -2, %bb.l ], [ -2, %bb.c ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE15start_aggregateIjNS6_8array_svENS6_8array_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %3, align 1                ; 2 uses
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %i.a) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.e, ptr %i.c, align 8, !tbaa !81
  %i.f = icmp eq i32 %i.a, 0
  %i.g = load ptr, ptr %1, align 8, !tbaa !95, !nonnull !66, !align !84
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83, !nonnull !66, !align !84 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(121) %i.i, i32 noundef 0)
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.l = load ptr, ptr %0, align 8, !tbaa !80
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  store i64 %i.o, ptr %4, align 8, !tbaa !19
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %2, align 8, !tbaa !97, !nonnull !66, !align !84
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !83, !nonnull !66, !align !84
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !63
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  store ptr %i.u, ptr %i.s, align 8, !tbaa !63
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !86   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !86   ; 2 uses
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !66, !align !84
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i
  %i.ad = phi ptr [ %i.y, %.lr.ph.i ], [ %i.ba, %bb.j ] ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 5 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !89
  switch i32 %i.af, label %bb.j [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !85
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !62
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !62
  %i.ak = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !90
  %i.am = add i32 %i.al, -1                       ; 2 uses
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !90
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.sink.split.i, label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.ac, align 8, !tbaa !85
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !62
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !62
  store i32 2, ptr %i.ae, align 4, !tbaa !89
  br label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !85
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !62
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %i.av, ptr %i.at, align 8, !tbaa !62
  %i.aw = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !90
  %i.ay = add i32 %i.ax, -1                       ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !90
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.ae, align 4, !tbaa !89
  br label %.critedge

.sink.split.i:                                    ; preds = %bb.h, %bb.f
  %.sink.i = phi ptr [ %i.ah, %bb.f ], [ %i.at, %bb.h ]
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !77
  store ptr %.sink.i, ptr %i.ac, align 8, !tbaa !63
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.e
  %i.ba = phi ptr [ %i.ad, %bb.e ], [ %i.ae, %.sink.split.i ] ; 2 uses
  %i.bb = icmp eq ptr %i.w, %i.ba
  br i1 %i.bb, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %bb.e

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit: ; preds = %bb.j, %bb.d
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.bd = load ptr, ptr %0, align 8, !tbaa !80
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  store i64 %i.bg, ptr %4, align 8, !tbaa !19
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %i.bh = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(121) %i.i, i32 noundef %i.b)
  br i1 %i.bh, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.bj = load ptr, ptr %0, align 8, !tbaa !80
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  store i64 %i.bm, ptr %4, align 8, !tbaa !19
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !77 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bp, %i.br
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.5.0.insert.ext.i = zext i32 %i.b to i64
  %.sroa.5.0.insert.shift.i = shl nuw i64 %.sroa.5.0.insert.ext.i, 32
  store i64 %.sroa.5.0.insert.shift.i, ptr %i.bp, align 4
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !77
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bt, ptr %i.bo, align 8, !tbaa !77
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !76 ; 7 uses
  %i.bv = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.bw = ptrtoint ptr %i.bu to i64               ; 3 uses
  %i.bx = sub i64 %i.bv, %i.bw                    ; 3 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775800
  br i1 %i.by, label %bb.p, label %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #23
  unreachable

_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.o
  %i.bz = ashr exact i64 %i.bx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bz, i64 1)
  %i.ca = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bz ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bz
  %i.cc = tail call i64 @llvm.umin.i64(i64 %i.ca, i64 1152921504606846975)
  %i.cd = select i1 %i.cb, i64 1152921504606846975, i64 %i.cc ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.cd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ce = shl nuw nsw i64 %i.cd, 3
  %i.cf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #26 ; 7 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bx
  %.sroa.5.0.insert.ext11.i = zext i32 %i.b to i64
  %.sroa.5.0.insert.shift12.i = shl nuw i64 %.sroa.5.0.insert.ext11.i, 32
  store i64 %.sroa.5.0.insert.shift12.i, ptr %i.cg, align 4
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bu, %i.bp
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ch = add i64 %i.bv, -8
  %i.ci = sub i64 %i.ch, %i.bw                    ; 2 uses
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ci, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader56, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ck, 4611686018427387900     ; 3 uses
  %i.cl = shl i64 %n.vec, 3                       ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cl  ; 2 uses
  %i.cn = getelementptr i8, ptr %i.bu, i64 %i.cl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.co = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cf, i64 %i.co ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.bu, i64 %i.co ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.cp = getelementptr i8, ptr %next.gep50, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep50, align 4, !alias.scope !214
  %wide.load51 = load <2 x i64>, ptr %i.cp, align 4, !alias.scope !214
  %i.cq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !213
  store <2 x i64> %wide.load51, ptr %i.cq, align 4, !alias.scope !213
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !211

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ck, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader56

.lr.ph.i.i.i.i.i.i.i.preheader56:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cm, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cn, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader56, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader56 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader56 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.cs = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !214
  store i64 %i.cs, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !213
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ct, %i.bp
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !212

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cf, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cm, %middle.block ], [ %i.cu, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  %5 = ptrtoint ptr %i.br to i64
  %6 = sub i64 %5, %i.bw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %6) #22
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  store ptr %i.cf, ptr %i.bn, align 8, !tbaa !76
  store ptr %i.cv, ptr %i.bo, align 8, !tbaa !77
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cd
  store ptr %i.cw, ptr %i.bq, align 8, !tbaa !78
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.i, %bb.g, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, %bb.n
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.cx, align 8, !tbaa !75
  br label %bb.r

bb.r:                                             ; preds = %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, %.critedge, %bb.l, %bb.c
  %.2 = phi i32 [ 0, %.critedge ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit ], [ -2, %bb.l ], [ -2, %bb.c ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE15start_aggregateItNS6_6map_svENS6_6map_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %3, align 1                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.d, ptr %i.b, align 8, !tbaa !81
  %i.e = icmp eq i16 %i.a, 0
  br i1 %i.e, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !101, !nonnull !66, !align !84
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !83, !nonnull !66, !align !84
  %i.i = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(121) %i.h, i32 noundef 0)
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.k = load ptr, ptr %0, align 8, !tbaa !80
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  store i64 %i.n, ptr %4, align 8, !tbaa !19
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %2, align 8, !tbaa !103, !nonnull !66, !align !84
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !83, !nonnull !66, !align !84
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !63
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  store ptr %i.t, ptr %i.r, align 8, !tbaa !63
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !86   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !86   ; 2 uses
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !66, !align !84
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 96 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i
  %i.ac = phi ptr [ %i.x, %.lr.ph.i ], [ %i.az, %bb.j ] ; 4 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8 ; 5 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !89
  switch i32 %i.ae, label %bb.j [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !85
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !62
  %i.aj = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !90
  %i.al = add i32 %i.ak, -1                       ; 2 uses
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !90
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.sink.split.i, label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.ab, align 8, !tbaa !85
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !62
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !62
  store i32 2, ptr %i.ad, align 4, !tbaa !89
  br label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.ab, align 8, !tbaa !85
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !62
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %i.au, ptr %i.as, align 8, !tbaa !62
  %i.av = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !90
  %i.ax = add i32 %i.aw, -1                       ; 2 uses
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !90
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.ad, align 4, !tbaa !89
  br label %.critedge

.sink.split.i:                                    ; preds = %bb.h, %bb.f
  %.sink.i = phi ptr [ %i.ag, %bb.f ], [ %i.as, %bb.h ]
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !77
  store ptr %.sink.i, ptr %i.ab, align 8, !tbaa !63
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.e
  %i.az = phi ptr [ %i.ac, %bb.e ], [ %i.ad, %.sink.split.i ] ; 2 uses
  %i.ba = icmp eq ptr %i.v, %i.az
  br i1 %i.ba, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %bb.e

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit: ; preds = %bb.j, %bb.d
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.bc = load ptr, ptr %0, align 8, !tbaa !80
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  store i64 %i.bf, ptr %4, align 8, !tbaa !19
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.a) ; 3 uses
  %i.bg = zext i16 %rev.i.i to i32
  %i.bh = load ptr, ptr %1, align 8, !tbaa !101, !nonnull !66, !align !84
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !83, !nonnull !66, !align !84
  %i.bk = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(121) %i.bj, i32 noundef %i.bg)
  br i1 %i.bk, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.bm = load ptr, ptr %0, align 8, !tbaa !80
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  store i64 %i.bp, ptr %4, align 8, !tbaa !19
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !77 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bs, %i.bu
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.5.0.insert.ext.i = zext i16 %rev.i.i to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, 1
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bs, align 4
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !77
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.bw, ptr %i.br, align 8, !tbaa !77
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !76 ; 7 uses
  %i.by = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bz = ptrtoint ptr %i.bx to i64               ; 3 uses
  %i.ca = sub i64 %i.by, %i.bz                    ; 3 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775800
  br i1 %i.cb, label %bb.p, label %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #23
  unreachable

_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.o
  %i.cc = ashr exact i64 %i.ca, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cc, i64 1)
  %i.cd = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.cc ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %i.cc
  %i.cf = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 1152921504606846975)
  %i.cg = select i1 %i.ce, i64 1152921504606846975, i64 %i.cf ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.cg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ch = shl nuw nsw i64 %i.cg, 3
  %i.ci = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #26 ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ca
  %.sroa.5.0.insert.ext11.i = zext i16 %rev.i.i to i64
  %.sroa.5.0.insert.shift12.i = shl nuw nsw i64 %.sroa.5.0.insert.ext11.i, 32
  %.sroa.0.0.insert.insert9.i = or disjoint i64 %.sroa.5.0.insert.shift12.i, 1
  store i64 %.sroa.0.0.insert.insert9.i, ptr %i.cj, align 4
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bx, %i.bs
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ck = add i64 %i.by, -8
  %i.cl = sub i64 %i.ck, %i.bz                    ; 2 uses
  %i.cm = lshr i64 %i.cl, 3
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cl, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader57, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cn, 4611686018427387900     ; 3 uses
  %i.co = shl i64 %n.vec, 3                       ; 2 uses
  %i.cp = getelementptr i8, ptr %i.ci, i64 %i.co  ; 2 uses
  %i.cq = getelementptr i8, ptr %i.bx, i64 %i.co
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cr = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ci, i64 %i.cr ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.bx, i64 %i.cr ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %i.cs = getelementptr i8, ptr %next.gep51, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep51, align 4, !alias.scope !221
  %wide.load52 = load <2 x i64>, ptr %i.cs, align 4, !alias.scope !221
  %i.ct = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !220
  store <2 x i64> %wide.load52, ptr %i.ct, align 4, !alias.scope !220
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !218

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader57

.lr.ph.i.i.i.i.i.i.i.preheader57:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cp, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader57, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader57 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader57 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %i.cv = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !221
  store i64 %i.cv, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !220
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cw, %i.bs
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !219

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ci, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cp, %middle.block ], [ %i.cx, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  %5 = ptrtoint ptr %i.bu to i64
  %6 = sub i64 %5, %i.bz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %6) #22
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  store ptr %i.ci, ptr %i.bq, align 8, !tbaa !76
  store ptr %i.cy, ptr %i.br, align 8, !tbaa !77
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cg
  store ptr %i.cz, ptr %i.bt, align 8, !tbaa !78
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.i, %bb.g, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, %bb.n
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.da, align 8, !tbaa !75
  br label %bb.r

bb.r:                                             ; preds = %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, %.critedge, %bb.l, %bb.c
  %.2 = phi i32 [ 0, %.critedge ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit ], [ -2, %bb.l ], [ -2, %bb.c ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE15start_aggregateIjNS6_6map_svENS6_6map_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %3, align 1                ; 2 uses
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %i.a) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.e, ptr %i.c, align 8, !tbaa !81
  %i.f = icmp eq i32 %i.a, 0
  %i.g = load ptr, ptr %1, align 8, !tbaa !101, !nonnull !66, !align !84
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83, !nonnull !66, !align !84 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(121) %i.i, i32 noundef 0)
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.l = load ptr, ptr %0, align 8, !tbaa !80
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  store i64 %i.o, ptr %4, align 8, !tbaa !19
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %2, align 8, !tbaa !103, !nonnull !66, !align !84
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !83, !nonnull !66, !align !84
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !63
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  store ptr %i.u, ptr %i.s, align 8, !tbaa !63
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !86   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !86   ; 2 uses
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !66, !align !84
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i
  %i.ad = phi ptr [ %i.y, %.lr.ph.i ], [ %i.ba, %bb.j ] ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 5 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !89
  switch i32 %i.af, label %bb.j [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !85
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !62
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !62
  %i.ak = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !90
  %i.am = add i32 %i.al, -1                       ; 2 uses
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !90
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.sink.split.i, label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.ac, align 8, !tbaa !85
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !62
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !62
  store i32 2, ptr %i.ae, align 4, !tbaa !89
  br label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !85
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !62
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %i.av, ptr %i.at, align 8, !tbaa !62
  %i.aw = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !90
  %i.ay = add i32 %i.ax, -1                       ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !90
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.ae, align 4, !tbaa !89
  br label %.critedge

.sink.split.i:                                    ; preds = %bb.h, %bb.f
  %.sink.i = phi ptr [ %i.ah, %bb.f ], [ %i.at, %bb.h ]
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !77
  store ptr %.sink.i, ptr %i.ac, align 8, !tbaa !63
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.e
  %i.ba = phi ptr [ %i.ad, %bb.e ], [ %i.ae, %.sink.split.i ] ; 2 uses
  %i.bb = icmp eq ptr %i.w, %i.ba
  br i1 %i.bb, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %bb.e

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit: ; preds = %bb.j, %bb.d
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.bd = load ptr, ptr %0, align 8, !tbaa !80
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  store i64 %i.bg, ptr %4, align 8, !tbaa !19
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %i.bh = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(121) %i.i, i32 noundef %i.b)
  br i1 %i.bh, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.bj = load ptr, ptr %0, align 8, !tbaa !80
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  store i64 %i.bm, ptr %4, align 8, !tbaa !19
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !77 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bp, %i.br
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.5.0.insert.ext.i = zext i32 %i.b to i64
  %.sroa.5.0.insert.shift.i = shl nuw i64 %.sroa.5.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, 1
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bp, align 4
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !77
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bt, ptr %i.bo, align 8, !tbaa !77
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !76 ; 7 uses
  %i.bv = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.bw = ptrtoint ptr %i.bu to i64               ; 3 uses
  %i.bx = sub i64 %i.bv, %i.bw                    ; 3 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775800
  br i1 %i.by, label %bb.p, label %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #23
  unreachable

_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.o
  %i.bz = ashr exact i64 %i.bx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bz, i64 1)
  %i.ca = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bz ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bz
  %i.cc = tail call i64 @llvm.umin.i64(i64 %i.ca, i64 1152921504606846975)
  %i.cd = select i1 %i.cb, i64 1152921504606846975, i64 %i.cc ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.cd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ce = shl nuw nsw i64 %i.cd, 3
  %i.cf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #26 ; 7 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bx
  %.sroa.5.0.insert.ext11.i = zext i32 %i.b to i64
  %.sroa.5.0.insert.shift12.i = shl nuw i64 %.sroa.5.0.insert.ext11.i, 32
  %.sroa.0.0.insert.insert9.i = or disjoint i64 %.sroa.5.0.insert.shift12.i, 1
  store i64 %.sroa.0.0.insert.insert9.i, ptr %i.cg, align 4
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bu, %i.bp
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ch = add i64 %i.bv, -8
  %i.ci = sub i64 %i.ch, %i.bw                    ; 2 uses
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ci, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader56, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ck, 4611686018427387900     ; 3 uses
  %i.cl = shl i64 %n.vec, 3                       ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cl  ; 2 uses
  %i.cn = getelementptr i8, ptr %i.bu, i64 %i.cl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.co = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cf, i64 %i.co ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.bu, i64 %i.co ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.cp = getelementptr i8, ptr %next.gep50, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep50, align 4, !alias.scope !228
  %wide.load51 = load <2 x i64>, ptr %i.cp, align 4, !alias.scope !228
  %i.cq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !227
  store <2 x i64> %wide.load51, ptr %i.cq, align 4, !alias.scope !227
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !225

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ck, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader56

.lr.ph.i.i.i.i.i.i.i.preheader56:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cm, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cn, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader56, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader56 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader56 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.cs = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !228
  store i64 %i.cs, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !227
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ct, %i.bp
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !226

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cf, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cm, %middle.block ], [ %i.cu, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  %5 = ptrtoint ptr %i.br to i64
  %6 = sub i64 %5, %i.bw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %6) #22
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  store ptr %i.cf, ptr %i.bn, align 8, !tbaa !76
  store ptr %i.cv, ptr %i.bo, align 8, !tbaa !77
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cd
  store ptr %i.cw, ptr %i.bq, align 8, !tbaa !78
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.i, %bb.g, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, %bb.n
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.cx, align 8, !tbaa !75
  br label %bb.r

bb.r:                                             ; preds = %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, %.critedge, %bb.l, %bb.c
  %.2 = phi i32 [ 0, %.critedge ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit ], [ -2, %bb.l ], [ -2, %bb.c ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v117str_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v117str_size_overflowE, i64 16), ptr %0, align 8, !tbaa !29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v117str_size_overflowD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(121) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !229
  %i.d = icmp ult i64 %i.c, %i.a
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN7msgpack2v119array_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.5)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN7msgpack2v119array_size_overflowE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !63   ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !59
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load i64, ptr %i.o, align 8, !tbaa !27
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN7msgpack2v119depth_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull @.str.6)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTIN7msgpack2v119depth_size_overflowE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.i:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !62   ; 3 uses
  store i32 7, ptr %i.u, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %1, ptr %i.v, align 8, !tbaa !12
  %i.w = icmp eq i32 %1, 0
  br i1 %i.w, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = mul nuw nsw i64 %i.a, 24                 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !64   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !92 ; 3 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 7
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = and i64 %i.ae, -8                       ; 2 uses
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = add i64 %i.ah, %i.x                     ; 2 uses
  %i.aj = load i64, ptr %i.aa, align 8, !tbaa !93 ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  br i1 %i.ak, label %bb.k, label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

bb.k:                                             ; preds = %bb.j
  %i.al = or disjoint i64 %i.x, 7                 ; 2 uses
  %i.am = load i64, ptr %i.z, align 8, !tbaa !46
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %.022.i.i = phi i64 [ %i.am, %bb.k ], [ %i.ao, %bb.m ] ; 4 uses
  %i.an = icmp ult i64 %.022.i.i, %i.al
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.not.i.i = icmp sgt i64 %.022.i.i, 0
  %i.ao = shl nuw nsw i64 %.022.i.i, 1
  br i1 %.not.i.i, label %bb.l, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.2.i.i = phi i64 [ %i.al, %bb.m ], [ %.022.i.i, %bb.l ] ; 3 uses
  %i.ap = icmp ugt i64 %.2.i.i, -9
  br i1 %i.ap, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aq = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aq, align 8, !tbaa !29
  tail call void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ar = add nuw i64 %.2.i.i, 8
  %i.as = tail call noalias ptr @malloc(i64 noundef %i.ar) #25 ; 5 uses
  %.not27.i.i = icmp eq ptr %i.as, null
  br i1 %.not27.i.i, label %bb.q, label %_ZN7msgpack2v14zone15allocate_expandEm.exit.i

bb.q:                                             ; preds = %bb.p
  %i.at = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.at, align 8, !tbaa !29
  tail call void @__cxa_throw(ptr nonnull %i.at, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN7msgpack2v14zone15allocate_expandEm.exit.i:    ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !42
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !44
  store ptr %i.as, ptr %i.av, align 8, !tbaa !42
  %i.ax = getelementptr i8, ptr %i.as, i64 15
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = and i64 %i.ay, -8                       ; 2 uses
  %i.ba = ptrtoint ptr %i.au to i64
  %i.bb = sub i64 %i.x, %i.ba
  %i.bc = add i64 %i.bb, %i.az
  br label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

_ZN7msgpack2v14zone14allocate_alignEmm.exit:      ; preds = %bb.j, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i
  %i.bd = phi ptr [ %i.au, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.ac, %bb.j ]
  %i.be = phi i64 [ %.2.i.i, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.aj, %bb.j ]
  %.014.i = phi i64 [ %i.bc, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.ai, %bb.j ] ; 2 uses
  %.0.in.i = phi i64 [ %i.az, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.af, %bb.j ]
  %.0.i = inttoptr i64 %.0.in.i to ptr
  %i.bf = sub i64 %i.be, %.014.i
  store i64 %i.bf, ptr %i.aa, align 8, !tbaa !93
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.014.i
  store ptr %i.bg, ptr %i.ab, align 8, !tbaa !92
  br label %bb.r

bb.r:                                             ; preds = %bb.i, %_ZN7msgpack2v14zone14allocate_alignEmm.exit
  %.0.i.sink = phi ptr [ %.0.i, %_ZN7msgpack2v14zone14allocate_alignEmm.exit ], [ null, %bb.i ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %.0.i.sink, ptr %i.bh, align 8, !tbaa !12
  %i.bi = load ptr, ptr %i.h, align 8, !tbaa !63  ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !60 ; 2 uses
  %.not.i = icmp eq ptr %i.bi, %i.bk
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %.0.i.sink, ptr %i.bi, align 8, !tbaa !62
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bl, ptr %i.h, align 8, !tbaa !63
  br label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE9push_backERKS3_.exit

bb.t:                                             ; preds = %bb.r
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !59  ; 4 uses
  %i.bn = ptrtoint ptr %i.bi to i64
  %i.bo = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 5 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.u, label %_ZNKSt6vectorIPN7msgpack2v26objectESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #23
  unreachable

_ZNKSt6vectorIPN7msgpack2v26objectESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.t
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #26 ; 4 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %i.bp ; 2 uses
  store ptr %.0.i.sink, ptr %i.by, align 8, !tbaa !62
  %i.bz = icmp sgt i64 %i.bp, 0
  br i1 %i.bz, label %bb.v, label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.v:                                             ; preds = %_ZNKSt6vectorIPN7msgpack2v26objectESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bx, ptr align 8 %i.bm, i64 %i.bp, i1 false)
  br label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.v, %_ZNKSt6vectorIPN7msgpack2v26objectESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.not.i17.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %2 = ptrtoint ptr %i.bk to i64
  %3 = sub i64 %2, %i.bo
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %3) #22
  br label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.w, %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.bx, ptr %i.g, align 8, !tbaa !59
  store ptr %i.ca, ptr %i.h, align 8, !tbaa !63
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.cb, ptr %i.bj, align 8, !tbaa !60
  br label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.s, %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  ret i1 true

bb.x:                                             ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.r, %bb.h ], [ %i.e, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.f, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v119array_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v119array_size_overflowE, i64 16), ptr %0, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v119depth_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v119depth_size_overflowE, i64 16), ptr %0, align 8, !tbaa !29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v119array_size_overflowD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v119depth_size_overflowD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(121) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !230
  %i.d = icmp ult i64 %i.c, %i.a
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN7msgpack2v117map_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.7)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN7msgpack2v117map_size_overflowE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !63   ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !59
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load i64, ptr %i.o, align 8, !tbaa !27
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN7msgpack2v119depth_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull @.str.6)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTIN7msgpack2v119depth_size_overflowE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.i:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !62   ; 3 uses
  store i32 8, ptr %i.u, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %1, ptr %i.v, align 8, !tbaa !12
  %i.w = icmp eq i32 %1, 0
  br i1 %i.w, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = mul nuw nsw i64 %i.a, 48                 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !64   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !92 ; 3 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 7
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = and i64 %i.ae, -8                       ; 2 uses
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = add i64 %i.ah, %i.x                     ; 2 uses
  %i.aj = load i64, ptr %i.aa, align 8, !tbaa !93 ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  br i1 %i.ak, label %bb.k, label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

bb.k:                                             ; preds = %bb.j
  %i.al = or disjoint i64 %i.x, 7                 ; 2 uses
  %i.am = load i64, ptr %i.z, align 8, !tbaa !46
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %.022.i.i = phi i64 [ %i.am, %bb.k ], [ %i.ao, %bb.m ] ; 4 uses
  %i.an = icmp ult i64 %.022.i.i, %i.al
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.not.i.i = icmp sgt i64 %.022.i.i, 0
  %i.ao = shl nuw nsw i64 %.022.i.i, 1
  br i1 %.not.i.i, label %bb.l, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.2.i.i = phi i64 [ %i.al, %bb.m ], [ %.022.i.i, %bb.l ] ; 3 uses
  %i.ap = icmp ugt i64 %.2.i.i, -9
  br i1 %i.ap, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aq = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aq, align 8, !tbaa !29
  tail call void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ar = add nuw i64 %.2.i.i, 8
  %i.as = tail call noalias ptr @malloc(i64 noundef %i.ar) #25 ; 5 uses
  %.not27.i.i = icmp eq ptr %i.as, null
  br i1 %.not27.i.i, label %bb.q, label %_ZN7msgpack2v14zone15allocate_expandEm.exit.i

bb.q:                                             ; preds = %bb.p
  %i.at = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.at, align 8, !tbaa !29
  tail call void @__cxa_throw(ptr nonnull %i.at, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN7msgpack2v14zone15allocate_expandEm.exit.i:    ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !42
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !44
  store ptr %i.as, ptr %i.av, align 8, !tbaa !42
  %i.ax = getelementptr i8, ptr %i.as, i64 15
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = and i64 %i.ay, -8                       ; 2 uses
  %i.ba = ptrtoint ptr %i.au to i64
  %i.bb = sub i64 %i.x, %i.ba
  %i.bc = add i64 %i.bb, %i.az
  br label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

_ZN7msgpack2v14zone14allocate_alignEmm.exit:      ; preds = %bb.j, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i
  %i.bd = phi ptr [ %i.au, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.ac, %bb.j ]
  %i.be = phi i64 [ %.2.i.i, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.aj, %bb.j ]
  %.014.i = phi i64 [ %i.bc, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.ai, %bb.j ] ; 2 uses
  %.0.in.i = phi i64 [ %i.az, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.af, %bb.j ]
  %.0.i = inttoptr i64 %.0.in.i to ptr
  %i.bf = sub i64 %i.be, %.014.i
  store i64 %i.bf, ptr %i.aa, align 8, !tbaa !93
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.014.i
  store ptr %i.bg, ptr %i.ab, align 8, !tbaa !92
  br label %bb.r

bb.r:                                             ; preds = %bb.i, %_ZN7msgpack2v14zone14allocate_alignEmm.exit
  %.0.i.sink = phi ptr [ %.0.i, %_ZN7msgpack2v14zone14allocate_alignEmm.exit ], [ null, %bb.i ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %.0.i.sink, ptr %i.bh, align 8, !tbaa !12
  %i.bi = load ptr, ptr %i.h, align 8, !tbaa !63  ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !60 ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.bi, %i.bk
  br i1 %.not.i.i15, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %.0.i.sink, ptr %i.bi, align 8, !tbaa !62
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bl, ptr %i.h, align 8, !tbaa !63
  br label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE9push_backEOS3_.exit

bb.t:                                             ; preds = %bb.r
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !59  ; 4 uses
  %i.bn = ptrtoint ptr %i.bi to i64
  %i.bo = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 5 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.u, label %_ZNKSt6vectorIPN7msgpack2v26objectESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #23
  unreachable

_ZNKSt6vectorIPN7msgpack2v26objectESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.t
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #26 ; 4 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %i.bp ; 2 uses
  store ptr %.0.i.sink, ptr %i.by, align 8, !tbaa !62
  %i.bz = icmp sgt i64 %i.bp, 0
  br i1 %i.bz, label %bb.v, label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.v:                                             ; preds = %_ZNKSt6vectorIPN7msgpack2v26objectESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bx, ptr align 8 %i.bm, i64 %i.bp, i1 false)
  br label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.v, %_ZNKSt6vectorIPN7msgpack2v26objectESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %2 = ptrtoint ptr %i.bk to i64
  %3 = sub i64 %2, %i.bo
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %3) #22
  br label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.w, %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.bx, ptr %i.g, align 8, !tbaa !59
  store ptr %i.ca, ptr %i.h, align 8, !tbaa !63
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.cb, ptr %i.bj, align 8, !tbaa !60
  br label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.s, %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  ret i1 true

bb.x:                                             ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.r, %bb.h ], [ %i.e, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.f, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v117map_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v117map_size_overflowE, i64 16), ptr %0, align 8, !tbaa !29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v117map_size_overflowD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v111parse_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v111parse_errorE, i64 16), ptr %0, align 8, !tbaa !29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v111parse_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v117ext_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v117ext_size_overflowE, i64 16), ptr %0, align 8, !tbaa !29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v117ext_size_overflowD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v117bin_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v117bin_size_overflowE, i64 16), ptr %0, align 8, !tbaa !29
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v117bin_size_overflowD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !23   ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #23
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !24     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.k = load i64, ptr %i.h, align 8, !tbaa !12
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.d, label %bb.j, !prof !231

bb.d:                                             ; preds = %bb.c
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.u, align 1, !tbaa !12
  store i8 %i.v, ptr %i.t, align 1, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.g, %bb.f, %bb.d
  switch i64 %4, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1, !tbaa !12
  store i8 %i.w, ptr %i.m, align 1, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.c
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.i, %bb.h, %bb.j, %bb.k
  store i64 %i.f, ptr %i.a, align 8, !tbaa !23
  %i.x = load ptr, ptr %0, align 8, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !12
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !23   ; 5 uses
end_hunk_2
