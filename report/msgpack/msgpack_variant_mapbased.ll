Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msgpack/original/msgpack_variant_mapbased?download=true
inline.NumInlined: 4551
inline.NumDeleted: 2603
begin_hunk_0_@_ZNSt10unique_ptrIN7msgpack2v14zoneESt14default_deleteIS2_EED2Ev:bb.a
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteIN7msgpack2v14zoneEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail9parse_impINS1_21create_object_visitorEEENS0_12parse_returnEPKcmRmRT_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(121) %3) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %4 = alloca %"struct.msgpack::v2::detail::parse_helper", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = load i64, ptr %2, align 8, !tbaa !37     ; 2 uses
  store i64 %i.b, ptr %i.a, align 8, !tbaa !37
  %.not = icmp ugt i64 %1, %i.b
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN7msgpack2v118insufficient_bytesC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.10)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN7msgpack2v118insufficient_bytesE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
  unreachable

common.resume:                                    ; preds = %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEED2Ev.exit, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %eh.lpad-body, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #26
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.e, align 8, !tbaa !131
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 0, ptr %i.f, align 8, !tbaa !132
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.h = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !133
  store ptr %i.h, ptr %i.i, align 8, !tbaa !134
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  store ptr %i.k, ptr %i.j, align 8, !tbaa !135
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %3, ptr %i.l, align 8, !tbaa !261
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
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !133  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.body
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !135
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.s) #27
  br label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEED2Ev.exit

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEED2Ev.exit: ; preds = %.body, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %common.resume

bb.h:                                             ; preds = %_ZN7msgpack2v26detail12parse_helperINS1_21create_object_visitorEE7executeEPKcmRm.exit
  %i.t = load i64, ptr %i.a, align 8, !tbaa !37
  store i64 %i.t, ptr %2, align 8, !tbaa !37
  %i.u = call ptr @__cxa_allocate_exception(i64 16) #26 ; 4 uses
  invoke void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.10)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v118insufficient_bytesE, i64 16), ptr %i.u, align 8, !tbaa !42
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTIN7msgpack2v118insufficient_bytesE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.u) #26
  br label %.body

bb.k:                                             ; preds = %_ZN7msgpack2v26detail12parse_helperINS1_21create_object_visitorEE7executeEPKcmRm.exit
  %i.w = load i64, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  store i64 %i.w, ptr %2, align 8, !tbaa !37
  %i.x = icmp ult i64 %i.w, %1
  %. = select i1 %i.x, i32 1, i32 2
  br label %bb.l

bb.l:                                             ; preds = %_ZN7msgpack2v26detail12parse_helperINS1_21create_object_visitorEE7executeEPKcmRm.exit, %bb.k
  %.0 = phi i32 [ %., %bb.k ], [ %i.m, %_ZN7msgpack2v26detail12parse_helperINS1_21create_object_visitorEE7executeEPKcmRm.exit ]
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !133  ; 3 uses
  %.not.i.i.i.i.i21 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i21, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEED2Ev.exit22, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !135
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #27
  br label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEED2Ev.exit22

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEED2Ev.exit22: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v118insufficient_bytesC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v118insufficient_bytesE, i64 16), ptr %0, align 8, !tbaa !42
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v118insufficient_bytesD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #13

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #16

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE7executeEPKcmRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  store ptr %1, ptr %0, align 8, !tbaa !137
  %i.a = load i64, ptr %3, align 8, !tbaa !37     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 59 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !138
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.e = icmp samesign eq i64 %i.a, %2
  br i1 %i.e, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 32 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 59 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 27 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 54 uses
  %i.k = ptrtoint ptr %i.d to i64                 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.ig
  %i.l = phi ptr [ %i.ayb, %bb.ig ], [ %i.b, %.preheader ] ; 6 uses
  %.0363 = phi ptr [ %.1364, %bb.ig ], [ null, %.preheader ] ; 2 uses
  %.0 = phi i1 [ %.23, %bb.ig ], [ false, %.preheader ]
  %i.m = load i32, ptr %i.f, align 8, !tbaa !132
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.an

bb.c:                                             ; preds = %bb.b
  %i.o = load i8, ptr %i.l, align 1, !tbaa !31    ; 10 uses
  %i.p = zext i8 %i.o to i64                      ; 2 uses
  %i.q = icmp sgt i8 %i.o, -1
  br i1 %i.q, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !140, !nonnull !123, !align !141
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !142
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !118  ; 2 uses
  store i32 2, ptr %i.v, align 8, !tbaa !91
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.p, ptr %i.w, align 8, !tbaa !31
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !138  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store ptr %i.y, ptr %i.c, align 8, !tbaa !138
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !143  ; 2 uses
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !143 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.ac = load ptr, ptr %i.g, align 8, !nonnull !123, !align !141
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 96 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i.i
  %i.ae = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %i.bb, %bb.j ] ; 4 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8 ; 5 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !146
  switch i32 %i.ag, label %bb.j [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !142
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -8 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !118
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !118
  %i.al = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !147
  %i.an = add i32 %i.am, -1                       ; 2 uses
  store i32 %i.an, ptr %i.al, align 4, !tbaa !147
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.sink.split.i.i, label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.ad, align 8, !tbaa !142
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !118
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !118
  store i32 2, ptr %i.af, align 4, !tbaa !146
  br label %.sink.split

bb.h:                                             ; preds = %bb.e
  %i.at = load ptr, ptr %i.ad, align 8, !tbaa !142
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -8 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !118
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !118
  %i.ax = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !147
  %i.az = add i32 %i.ay, -1                       ; 2 uses
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !147
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.sink.split.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.af, align 4, !tbaa !146
  br label %.sink.split

.sink.split.i.i:                                  ; preds = %bb.h, %bb.f
  %.sink.i.i = phi ptr [ %i.ai, %bb.f ], [ %i.au, %bb.h ]
  store ptr %i.af, ptr %i.j, align 8, !tbaa !134
  store ptr %.sink.i.i, ptr %i.ad, align 8, !tbaa !119
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i.i, %bb.e
  %i.bb = phi ptr [ %i.ae, %bb.e ], [ %i.af, %.sink.split.i.i ] ; 2 uses
  %i.bc = icmp eq ptr %i.z, %i.bb
  br i1 %i.bc, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit, label %bb.e

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit: ; preds = %bb.d, %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.be = load ptr, ptr %0, align 8, !tbaa !137
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  store i64 %i.bh, ptr %3, align 8, !tbaa !37
  store i32 0, ptr %i.f, align 8, !tbaa !132
  br label %.thread

bb.k:                                             ; preds = %bb.c
  %i.bi = icmp samesign ugt i8 %i.o, -33
  br i1 %i.bi, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.bj = load ptr, ptr %i.g, align 8, !tbaa !140, !nonnull !123, !align !141
  %i.bk = sext i8 %i.o to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !142
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !118 ; 2 uses
  store i32 3, ptr %i.bo, align 8, !tbaa !91
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %i.bk, ptr %i.bp, align 8, !tbaa !31
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !138 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store ptr %i.br, ptr %i.c, align 8, !tbaa !138
  %i.bs = load ptr, ptr %i.i, align 8, !tbaa !143 ; 2 uses
  %i.bt = load ptr, ptr %i.j, align 8, !tbaa !143 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit538, label %.lr.ph.i.i533

.lr.ph.i.i533:                                    ; preds = %bb.l
  %i.bv = load ptr, ptr %i.g, align 8, !nonnull !123, !align !141
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 96 ; 4 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.r, %.lr.ph.i.i533
  %i.bx = phi ptr [ %i.bt, %.lr.ph.i.i533 ], [ %i.cu, %bb.r ] ; 4 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -8 ; 5 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !146
  switch i32 %i.bz, label %bb.r [
    i32 0, label %bb.n
    i32 1, label %bb.o
    i32 2, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.ca = load ptr, ptr %i.bw, align 8, !tbaa !142
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -8 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !118
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store ptr %i.cd, ptr %i.cb, align 8, !tbaa !118
  %i.ce = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !147
  %i.cg = add i32 %i.cf, -1                       ; 2 uses
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !147
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %.sink.split.i.i535, label %.sink.split

bb.o:                                             ; preds = %bb.m
  %i.ci = load ptr, ptr %i.bw, align 8, !tbaa !142
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -8 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !118
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !118
  store i32 2, ptr %i.by, align 4, !tbaa !146
  br label %.sink.split

bb.p:                                             ; preds = %bb.m
  %i.cm = load ptr, ptr %i.bw, align 8, !tbaa !142
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -8 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !118
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  store ptr %i.cp, ptr %i.cn, align 8, !tbaa !118
  %i.cq = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !147
  %i.cs = add i32 %i.cr, -1                       ; 2 uses
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !147
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %.sink.split.i.i535, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 1, ptr %i.by, align 4, !tbaa !146
  br label %.sink.split

.sink.split.i.i535:                               ; preds = %bb.p, %bb.n
  %.sink.i.i536 = phi ptr [ %i.cb, %bb.n ], [ %i.cn, %bb.p ]
  store ptr %i.by, ptr %i.j, align 8, !tbaa !134
  store ptr %.sink.i.i536, ptr %i.bw, align 8, !tbaa !119
  br label %bb.r

bb.r:                                             ; preds = %.sink.split.i.i535, %bb.m
  %i.cu = phi ptr [ %i.bx, %bb.m ], [ %i.by, %.sink.split.i.i535 ] ; 2 uses
  %i.cv = icmp eq ptr %i.bs, %i.cu
  br i1 %i.cv, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit538, label %bb.m

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit538: ; preds = %bb.l, %bb.r
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.cx = load ptr, ptr %0, align 8, !tbaa !137
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
end_hunk_0
begin_hunk_1_@_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE7executeEPKcmRm:bb.a
  %i.avj = getelementptr inbounds i8, ptr %i.avi, i64 -8 ; 3 uses
  %i.avk = load ptr, ptr %i.avj, align 8, !tbaa !118
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avk, i64 24
  store ptr %i.avl, ptr %i.avj, align 8, !tbaa !118
  %i.avm = getelementptr inbounds i8, ptr %i.aut, i64 -4 ; 2 uses
  %i.avn = load i32, ptr %i.avm, align 4, !tbaa !147
  %i.avo = add i32 %i.avn, -1                     ; 2 uses
  store i32 %i.avo, ptr %i.avm, align 4, !tbaa !147
  %i.avp = icmp eq i32 %i.avo, 0
  br i1 %i.avp, label %.sink.split.i.i733, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  store i32 1, ptr %i.auu, align 4, !tbaa !146
  br label %.sink.split2324

.sink.split.i.i733:                               ; preds = %bb.hq, %bb.ho
  %.sink.i.i734 = phi ptr [ %i.aux, %bb.ho ], [ %i.avj, %bb.hq ]
  store ptr %i.auu, ptr %i.j, align 8, !tbaa !134
  store ptr %.sink.i.i734, ptr %i.aus, align 8, !tbaa !119
  br label %bb.hs

bb.hs:                                            ; preds = %.sink.split.i.i733, %bb.hn
  %i.avq = phi ptr [ %i.aut, %bb.hn ], [ %i.auu, %.sink.split.i.i733 ] ; 2 uses
  %i.avr = icmp eq ptr %i.auo, %i.avq
  br i1 %i.avr, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit736, label %bb.hn

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit736: ; preds = %bb.hm, %bb.hs
  %i.avs = getelementptr inbounds nuw i8, ptr %i.auh, i64 1
  %i.avt = load ptr, ptr %0, align 8, !tbaa !137
  %i.avu = ptrtoint ptr %i.avs to i64
  %i.avv = ptrtoint ptr %i.avt to i64
  %i.avw = sub i64 %i.avu, %i.avv
  store i64 %i.avw, ptr %3, align 8, !tbaa !37
  store i32 0, ptr %i.f, align 8, !tbaa !132
  br label %.thread

bb.ht:                                            ; preds = %bb.ar
  %i.avx = load ptr, ptr %i.g, align 8, !tbaa !140, !nonnull !123, !align !141
  %i.avy = call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9visit_extEPKcm(ptr noundef nonnull align 8 dereferenceable(121) %i.avx, ptr noundef %i.go, i64 noundef %i.gs)
  %i.avz = load ptr, ptr %i.c, align 8, !tbaa !138 ; 3 uses
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avz, i64 1
  store ptr %i.awa, ptr %i.c, align 8, !tbaa !138
  br i1 %i.avy, label %bb.hu, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit744.thread

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit744.thread: ; preds = %bb.ht
  %i.awb = getelementptr inbounds nuw i8, ptr %i.avz, i64 1
  %i.awc = load ptr, ptr %0, align 8, !tbaa !137
  %i.awd = ptrtoint ptr %i.awb to i64
  %i.awe = ptrtoint ptr %i.awc to i64
  %i.awf = sub i64 %i.awd, %i.awe
  store i64 %i.awf, ptr %3, align 8, !tbaa !37
  br label %.thread

bb.hu:                                            ; preds = %bb.ht
  %i.awg = load ptr, ptr %i.i, align 8, !tbaa !143 ; 2 uses
  %i.awh = load ptr, ptr %i.j, align 8, !tbaa !143 ; 2 uses
  %i.awi = icmp eq ptr %i.awg, %i.awh
  br i1 %i.awi, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit744, label %.lr.ph.i.i738

.lr.ph.i.i738:                                    ; preds = %bb.hu
  %i.awj = load ptr, ptr %i.g, align 8, !nonnull !123, !align !141
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awj, i64 96 ; 4 uses
  br label %bb.hv

bb.hv:                                            ; preds = %bb.ia, %.lr.ph.i.i738
  %i.awl = phi ptr [ %i.awh, %.lr.ph.i.i738 ], [ %i.axi, %bb.ia ] ; 4 uses
  %i.awm = getelementptr inbounds i8, ptr %i.awl, i64 -8 ; 5 uses
  %i.awn = load i32, ptr %i.awm, align 4, !tbaa !146
  switch i32 %i.awn, label %bb.ia [
    i32 0, label %bb.hw
    i32 1, label %bb.hx
    i32 2, label %bb.hy
  ]

bb.hw:                                            ; preds = %bb.hv
  %i.awo = load ptr, ptr %i.awk, align 8, !tbaa !142
  %i.awp = getelementptr inbounds i8, ptr %i.awo, i64 -8 ; 3 uses
  %i.awq = load ptr, ptr %i.awp, align 8, !tbaa !118
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awq, i64 24
  store ptr %i.awr, ptr %i.awp, align 8, !tbaa !118
  %i.aws = getelementptr inbounds i8, ptr %i.awl, i64 -4 ; 2 uses
  %i.awt = load i32, ptr %i.aws, align 4, !tbaa !147
  %i.awu = add i32 %i.awt, -1                     ; 2 uses
  store i32 %i.awu, ptr %i.aws, align 4, !tbaa !147
  %i.awv = icmp eq i32 %i.awu, 0
  br i1 %i.awv, label %.sink.split.i.i741, label %.sink.split2324

bb.hx:                                            ; preds = %bb.hv
  %i.aww = load ptr, ptr %i.awk, align 8, !tbaa !142
  %i.awx = getelementptr inbounds i8, ptr %i.aww, i64 -8 ; 2 uses
  %i.awy = load ptr, ptr %i.awx, align 8, !tbaa !118
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awy, i64 24
  store ptr %i.awz, ptr %i.awx, align 8, !tbaa !118
  store i32 2, ptr %i.awm, align 4, !tbaa !146
  br label %.sink.split2324

bb.hy:                                            ; preds = %bb.hv
  %i.axa = load ptr, ptr %i.awk, align 8, !tbaa !142
  %i.axb = getelementptr inbounds i8, ptr %i.axa, i64 -8 ; 3 uses
  %i.axc = load ptr, ptr %i.axb, align 8, !tbaa !118
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axc, i64 24
  store ptr %i.axd, ptr %i.axb, align 8, !tbaa !118
  %i.axe = getelementptr inbounds i8, ptr %i.awl, i64 -4 ; 2 uses
  %i.axf = load i32, ptr %i.axe, align 4, !tbaa !147
  %i.axg = add i32 %i.axf, -1                     ; 2 uses
  store i32 %i.axg, ptr %i.axe, align 4, !tbaa !147
  %i.axh = icmp eq i32 %i.axg, 0
  br i1 %i.axh, label %.sink.split.i.i741, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  store i32 1, ptr %i.awm, align 4, !tbaa !146
  br label %.sink.split2324

.sink.split.i.i741:                               ; preds = %bb.hy, %bb.hw
  %.sink.i.i742 = phi ptr [ %i.awp, %bb.hw ], [ %i.axb, %bb.hy ]
  store ptr %i.awm, ptr %i.j, align 8, !tbaa !134
  store ptr %.sink.i.i742, ptr %i.awk, align 8, !tbaa !119
  br label %bb.ia

bb.ia:                                            ; preds = %.sink.split.i.i741, %bb.hv
  %i.axi = phi ptr [ %i.awl, %bb.hv ], [ %i.awm, %.sink.split.i.i741 ] ; 2 uses
  %i.axj = icmp eq ptr %i.awg, %i.axi
  br i1 %i.axj, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit744, label %bb.hv

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit744: ; preds = %bb.hu, %bb.ia
  %i.axk = getelementptr inbounds nuw i8, ptr %i.avz, i64 1
  %i.axl = load ptr, ptr %0, align 8, !tbaa !137
  %i.axm = ptrtoint ptr %i.axk to i64
  %i.axn = ptrtoint ptr %i.axl to i64
  %i.axo = sub i64 %i.axm, %i.axn
  store i64 %i.axo, ptr %3, align 8, !tbaa !37
  store i32 0, ptr %i.f, align 8, !tbaa !132
  br label %.thread

bb.ib:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store ptr %0, ptr %8, align 8, !tbaa !263
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store ptr %0, ptr %9, align 8, !tbaa !263
  %i.axp = call noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE15start_aggregateItNS6_8array_svENS6_8array_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %i.go, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %.not468 = icmp eq i32 %i.axp, 0
  br i1 %.not468, label %bb.ig, label %.thread

bb.ic:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store ptr %0, ptr %10, align 8, !tbaa !263
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  store ptr %0, ptr %11, align 8, !tbaa !263
  %i.axq = call noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE15start_aggregateIjNS6_8array_svENS6_8array_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %i.go, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %.not467 = icmp eq i32 %i.axq, 0
  br i1 %.not467, label %bb.ig, label %.thread

bb.id:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  store ptr %0, ptr %12, align 8, !tbaa !263
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  store ptr %0, ptr %13, align 8, !tbaa !263
  %i.axr = call noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE15start_aggregateItNS6_6map_svENS6_6map_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %i.go, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %.not466 = icmp eq i32 %i.axr, 0
  br i1 %.not466, label %bb.ig, label %.thread

bb.ie:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  store ptr %0, ptr %14, align 8, !tbaa !263
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  store ptr %0, ptr %15, align 8, !tbaa !263
  %i.axs = call noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE15start_aggregateIjNS6_6map_svENS6_6map_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %i.go, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %.not465 = icmp eq i32 %i.axs, 0
  br i1 %.not465, label %bb.ig, label %.thread

bb.if:                                            ; preds = %bb.ar
  %i.axt = getelementptr i8, ptr %i.gx, i64 -1
  %i.axu = load ptr, ptr %0, align 8, !tbaa !137
  %i.axv = ptrtoint ptr %i.axt to i64
  %i.axw = ptrtoint ptr %i.axu to i64             ; 2 uses
  %i.axx = sub i64 %i.axv, %i.axw
  store i64 %i.axx, ptr %3, align 8, !tbaa !37
  %i.axy = load ptr, ptr %i.g, align 8, !tbaa !140, !nonnull !123, !align !141
  %i.axz = sub i64 %i.gq, %i.axw                  ; 2 uses
  %i.aya = add nsw i64 %i.axz, -1
  call void @_ZN7msgpack2v26detail21create_object_visitor11parse_errorEmm(ptr noundef nonnull align 8 dereferenceable(121) %i.axy, i64 noundef %i.aya, i64 noundef %i.axz)
  br label %.thread

.sink.split2324:                                  ; preds = %bb.hw, %bb.ho, %bb.hg, %bb.gx, %bb.go, %bb.ge, %bb.fv, %bb.fl, %bb.fc, %bb.et, %bb.el, %bb.ed, %bb.dv, %bb.dn, %bb.df, %bb.cy, %bb.cr, %bb.ck, %bb.cd, %bb.bw, %bb.bp, %bb.bi, %bb.bb, %bb.au, %bb.hz, %bb.hx, %bb.hr, %bb.hp, %bb.hj, %bb.hh, %bb.ha, %bb.gy, %bb.gt, %bb.gr, %bb.gp, %bb.gk, %bb.gh, %bb.gf, %bb.ga, %bb.fy, %bb.fw, %bb.fr, %bb.fo, %bb.fm, %bb.fh, %bb.ff, %bb.fd, %bb.ey, %bb.ew, %bb.eu, %bb.eo, %bb.em, %bb.eg, %bb.ee, %bb.dy, %bb.dw, %bb.dq, %bb.do, %bb.di, %bb.dg, %bb.db, %bb.cz, %bb.cu, %bb.cs, %bb.cn, %bb.cl, %bb.cg, %bb.ce, %bb.bz, %bb.bx, %bb.bs, %bb.bq, %bb.bl, %bb.bj, %bb.be, %bb.bc, %bb.ax, %bb.av, %bb.fq, %bb.gj, %bb.hc
  %.sink = phi i32 [ 0, %bb.hr ], [ 0, %bb.hj ], [ 0, %bb.ha ], [ 33, %bb.gt ], [ 0, %bb.gr ], [ 32, %bb.gk ], [ 0, %bb.gh ], [ 33, %bb.ga ], [ 0, %bb.fy ], [ 32, %bb.fr ], [ 0, %bb.fo ], [ 33, %bb.fh ], [ 0, %bb.ff ], [ 32, %bb.ey ], [ 0, %bb.ew ], [ 0, %bb.eo ], [ 0, %bb.eg ], [ 0, %bb.dy ], [ 0, %bb.dq ], [ 0, %bb.di ], [ 0, %bb.db ], [ 0, %bb.cu ], [ 0, %bb.cn ], [ 0, %bb.cg ], [ 0, %bb.bz ], [ 0, %bb.bs ], [ 0, %bb.bl ], [ 0, %bb.be ], [ 0, %bb.ax ], [ 34, %bb.fq ], [ 34, %bb.hc ], [ 34, %bb.gj ], [ 0, %bb.hz ], [ 0, %bb.av ], [ 0, %bb.gx ], [ 0, %bb.bc ], [ 0, %bb.hg ], [ 0, %bb.bj ], [ 0, %bb.ho ], [ 0, %bb.bq ], [ 0, %bb.au ], [ 0, %bb.bx ], [ 0, %bb.bb ], [ 0, %bb.ce ], [ 0, %bb.bi ], [ 0, %bb.cl ], [ 0, %bb.bp ], [ 0, %bb.cs ], [ 0, %bb.bw ], [ 0, %bb.cz ], [ 0, %bb.cd ], [ 0, %bb.dg ], [ 0, %bb.ck ], [ 0, %bb.do ], [ 0, %bb.cr ], [ 0, %bb.dw ], [ 0, %bb.cy ], [ 0, %bb.ee ], [ 0, %bb.df ], [ 0, %bb.em ], [ 0, %bb.dn ], [ 0, %bb.eu ], [ 0, %bb.dv ], [ 0, %bb.fd ], [ 0, %bb.ed ], [ 0, %bb.fm ], [ 0, %bb.el ], [ 0, %bb.fw ], [ 0, %bb.et ], [ 0, %bb.gf ], [ 0, %bb.fc ], [ 0, %bb.gp ], [ 0, %bb.fl ], [ 0, %bb.gy ], [ 0, %bb.fv ], [ 0, %bb.hh ], [ 0, %bb.ge ], [ 0, %bb.hp ], [ 0, %bb.go ], [ 0, %bb.hx ], [ 0, %bb.hw ]
  %.23.ph = phi i1 [ false, %bb.hr ], [ false, %bb.hj ], [ false, %bb.ha ], [ true, %bb.gt ], [ false, %bb.gr ], [ true, %bb.gk ], [ false, %bb.gh ], [ true, %bb.ga ], [ false, %bb.fy ], [ true, %bb.fr ], [ false, %bb.fo ], [ true, %bb.fh ], [ false, %bb.ff ], [ true, %bb.ey ], [ false, %bb.ew ], [ false, %bb.eo ], [ false, %bb.eg ], [ false, %bb.dy ], [ false, %bb.dq ], [ false, %bb.di ], [ false, %bb.db ], [ false, %bb.cu ], [ false, %bb.cn ], [ false, %bb.cg ], [ false, %bb.bz ], [ false, %bb.bs ], [ false, %bb.bl ], [ false, %bb.be ], [ false, %bb.ax ], [ true, %bb.fq ], [ true, %bb.hc ], [ true, %bb.gj ], [ false, %bb.hz ], [ false, %bb.av ], [ false, %bb.gx ], [ false, %bb.bc ], [ false, %bb.hg ], [ false, %bb.bj ], [ false, %bb.ho ], [ false, %bb.bq ], [ false, %bb.au ], [ false, %bb.bx ], [ false, %bb.bb ], [ false, %bb.ce ], [ false, %bb.bi ], [ false, %bb.cl ], [ false, %bb.bp ], [ false, %bb.cs ], [ false, %bb.bw ], [ false, %bb.cz ], [ false, %bb.cd ], [ false, %bb.dg ], [ false, %bb.ck ], [ false, %bb.do ], [ false, %bb.cr ], [ false, %bb.dw ], [ false, %bb.cy ], [ false, %bb.ee ], [ false, %bb.df ], [ false, %bb.em ], [ false, %bb.dn ], [ false, %bb.eu ], [ false, %bb.dv ], [ false, %bb.fd ], [ false, %bb.ed ], [ false, %bb.fm ], [ false, %bb.el ], [ false, %bb.fw ], [ false, %bb.et ], [ false, %bb.gf ], [ false, %bb.fc ], [ false, %bb.gp ], [ false, %bb.fl ], [ false, %bb.gy ], [ false, %bb.fv ], [ false, %bb.hh ], [ false, %bb.ge ], [ false, %bb.hp ], [ false, %bb.go ], [ false, %bb.hx ], [ false, %bb.hw ]
  store i32 %.sink, ptr %i.f, align 8, !tbaa !132
  br label %bb.ig

bb.ig:                                            ; preds = %.sink.split2324, %bb.an, %bb.ie, %bb.id, %bb.ic, %bb.ib
  %.1364 = phi ptr [ %i.go, %bb.ie ], [ %.0363, %bb.an ], [ %i.go, %bb.ib ], [ %i.go, %bb.ic ], [ %i.go, %bb.id ], [ %i.go, %.sink.split2324 ]
  %.23 = phi i1 [ false, %bb.ie ], [ false, %bb.an ], [ false, %bb.ib ], [ false, %bb.ic ], [ false, %bb.id ], [ %.23.ph, %.sink.split2324 ]
  %i.ayb = load ptr, ptr %i.c, align 8, !tbaa !138 ; 2 uses
  %.not493 = icmp eq ptr %i.ayb, %i.d
  br i1 %.not493, label %bb.ih, label %bb.b, !llvm.loop !262

bb.ih:                                            ; preds = %bb.ig
  %i.ayc = load ptr, ptr %0, align 8, !tbaa !137
  %i.ayd = ptrtoint ptr %i.ayc to i64
  %i.aye = sub i64 %i.k, %i.ayd
  store i64 %i.aye, ptr %3, align 8, !tbaa !37
  br label %.thread

.thread:                                          ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ah, %bb.af, %bb.ie, %bb.id, %bb.ic, %bb.ib, %bb.a, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit544.thread, %bb.am, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit544, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit538, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit744, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit744.thread, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit736, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit736.thread, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit728, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit728.thread, %.loopexit959, %.thread925, %.loopexit958, %.thread912, %.loopexit957, %.thread899, %.loopexit956, %.thread886, %.loopexit955, %.thread873, %.loopexit, %.thread860, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit669, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit669.thread, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit661, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit661.thread, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit653, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit653.thread, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit645, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit645.thread, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit637, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit637.thread, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit629, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit620, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit611, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit601, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit592, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit584, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit576, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit568, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit560, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit552, %bb.aq, %bb.if, %bb.ih
  %.63 = phi i32 [ 0, %bb.a ], [ 0, %bb.aq ], [ -1, %bb.if ], [ 0, %bb.ih ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit552 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit560 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit568 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit576 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit584 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit592 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit601 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit611 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit620 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit629 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit637 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit645 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit653 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit661 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit669 ], [ 2, %.loopexit ], [ 2, %.loopexit955 ], [ -2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit744.thread ], [ 2, %.loopexit956 ], [ 2, %.loopexit957 ], [ -1, %bb.am ], [ 2, %.loopexit958 ], [ 2, %.loopexit959 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit538 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit728 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit736 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit744 ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit544 ], [ -2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit637.thread ], [ -2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit645.thread ], [ -2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit653.thread ], [ -2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit661.thread ], [ -2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit669.thread ], [ -2, %.thread860 ], [ -2, %.thread873 ], [ -2, %.thread886 ], [ -2, %.thread899 ], [ -2, %.thread912 ], [ -2, %.thread925 ], [ -2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit728.thread ], [ -2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit736.thread ], [ -2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm.exit544.thread ], [ %i.fg, %bb.af ], [ %i.fi, %bb.ah ], [ %i.fp, %bb.aj ], [ %i.fw, %bb.ak ], [ %i.gc, %bb.al ], [ %i.axq, %bb.ic ], [ %i.axp, %bb.ib ], [ %i.axr, %bb.id ], [ %i.axs, %bb.ie ]
  ret i32 %.63
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE16after_visit_procEbRm(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !138
  br i1 %1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !137
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  store i64 %i.g, ptr %2, align 8, !tbaa !37
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !143  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !143  ; 2 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !123, !align !141
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %.lr.ph.i
  %i.p = phi ptr [ %i.k, %.lr.ph.i ], [ %i.am, %bb.i ] ; 4 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -8 ; 5 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !146
  switch i32 %i.r, label %bb.i [
    i32 0, label %bb.e
    i32 1, label %bb.f
    i32 2, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !142
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !118
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.v, ptr %i.t, align 8, !tbaa !118
  %i.w = getelementptr inbounds i8, ptr %i.p, i64 -4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !147
  %i.y = add i32 %i.x, -1                         ; 2 uses
  store i32 %i.y, ptr %i.w, align 4, !tbaa !147
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.sink.split.i, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !142
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !118
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !118
  store i32 2, ptr %i.q, align 4, !tbaa !146
  br label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit.thread

bb.g:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !142
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !118
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !118
  %i.ai = getelementptr inbounds i8, ptr %i.p, i64 -4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !147
  %i.ak = add i32 %i.aj, -1                       ; 2 uses
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !147
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %.sink.split.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %i.q, align 4, !tbaa !146
  br label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit.thread

.sink.split.i:                                    ; preds = %bb.g, %bb.e
  %.sink.i = phi ptr [ %i.t, %bb.e ], [ %i.af, %bb.g ]
  store ptr %i.q, ptr %i.j, align 8, !tbaa !134
  store ptr %.sink.i, ptr %i.o, align 8, !tbaa !119
  br label %bb.i

bb.i:                                             ; preds = %.sink.split.i, %bb.d
  %i.am = phi ptr [ %i.p, %bb.d ], [ %i.q, %.sink.split.i ] ; 2 uses
  %i.an = icmp eq ptr %i.i, %i.am
  br i1 %i.an, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %bb.d

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit: ; preds = %bb.i, %bb.c
  %i.ao = load ptr, ptr %0, align 8, !tbaa !137
  %i.ap = ptrtoint ptr %i.c to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  store i64 %i.ar, ptr %2, align 8, !tbaa !37
  br label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit.thread

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit.thread: ; preds = %bb.e, %bb.h, %bb.f, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit
  %.2.i8 = phi i32 [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.e ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.as, align 8, !tbaa !132
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
  %i.c = load i64, ptr %i.b, align 8, !tbaa !264
  %i.d = icmp ult i64 %i.c, %i.a
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN7msgpack2v117str_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.11)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN7msgpack2v117str_size_overflowE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #26
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !118  ; 7 uses
  store i32 5, ptr %i.j, align 8, !tbaa !91
  %i.k = load ptr, ptr %0, align 8, !tbaa !114    ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !115
  %i.n = tail call noundef zeroext i1 %i.k(i32 noundef 5, i64 noundef %i.a, ptr noundef %i.m)
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %1, ptr %i.p, align 8, !tbaa !31
  store i32 %2, ptr %i.o, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 1, ptr %i.q, align 8, !tbaa !121
  br label %bb.q

bb.h:                                             ; preds = %bb.f, %bb.e
  %.not23 = icmp eq ptr %1, null
  br i1 %.not23, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !120  ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !149
  %i.w = load i64, ptr %i.t, align 8, !tbaa !150  ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.a
  br i1 %i.x, label %bb.j, label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

bb.j:                                             ; preds = %bb.i
  %i.y = load i64, ptr %i.s, align 8, !tbaa !84
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
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ac, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

.thread:                                          ; preds = %bb.l, %bb.m
  %.2.i.i25 = phi i64 [ %.022.i.i, %bb.m ], [ %i.a, %bb.l ] ; 2 uses
  %i.ad = add nuw i64 %.2.i.i25, 8
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ad) #29 ; 4 uses
  %.not27.i.i = icmp eq ptr %i.ae, null
  br i1 %.not27.i.i, label %bb.o, label %_ZN7msgpack2v14zone15allocate_expandEm.exit.i

bb.o:                                             ; preds = %.thread
  %i.af = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.af, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

_ZN7msgpack2v14zone15allocate_expandEm.exit.i:    ; preds = %.thread
  %i.ag = getelementptr i8, ptr %i.ae, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !85
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !89
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !85
  br label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

_ZN7msgpack2v14zone14allocate_alignEmm.exit:      ; preds = %bb.i, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i
  %i.aj = phi ptr [ %i.ag, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.v, %bb.i ] ; 3 uses
  %i.ak = phi i64 [ %.2.i.i25, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.w, %bb.i ]
  %i.al = sub i64 %i.ak, %i.a
  store i64 %i.al, ptr %i.t, align 8, !tbaa !150
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.a
  store ptr %i.am, ptr %i.u, align 8, !tbaa !149
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr nonnull align 1 %1, i64 %i.a, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.aj, ptr %i.ao, align 8, !tbaa !31
  store i32 %2, ptr %i.an, align 8, !tbaa !31
  br label %bb.q

bb.p:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %i.aq, align 8, !tbaa !31
  store i32 0, ptr %i.ap, align 8, !tbaa !31
  br label %bb.q

bb.q:                                             ; preds = %_ZN7msgpack2v14zone14allocate_alignEmm.exit, %bb.p, %bb.g
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE15start_aggregateINS_2v16detail7fix_tagENS6_8array_svENS6_8array_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !31
  %i.b = and i8 %i.a, 15                          ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.e, ptr %i.c, align 8, !tbaa !138
  %i.f = icmp eq i8 %i.b, 0
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !152, !nonnull !123, !align !141
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !140, !nonnull !123, !align !141
  %i.j = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(121) %i.i, i32 noundef 0)
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.l = load ptr, ptr %0, align 8, !tbaa !137
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  store i64 %i.o, ptr %4, align 8, !tbaa !37
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %2, align 8, !tbaa !154, !nonnull !123, !align !141
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !140, !nonnull !123, !align !141
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !119
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  store ptr %i.u, ptr %i.s, align 8, !tbaa !119
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !143  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !143  ; 2 uses
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !123, !align !141
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i
  %i.ad = phi ptr [ %i.y, %.lr.ph.i ], [ %i.ba, %bb.j ] ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 5 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !146
  switch i32 %i.af, label %bb.j [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !142
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !118
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !118
  %i.ak = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !147
  %i.am = add i32 %i.al, -1                       ; 2 uses
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !147
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.sink.split.i, label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.ac, align 8, !tbaa !142
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !118
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !118
  store i32 2, ptr %i.ae, align 4, !tbaa !146
  br label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !142
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !118
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %i.av, ptr %i.at, align 8, !tbaa !118
  %i.aw = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !147
  %i.ay = add i32 %i.ax, -1                       ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !147
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.ae, align 4, !tbaa !146
  br label %.critedge

.sink.split.i:                                    ; preds = %bb.h, %bb.f
  %.sink.i = phi ptr [ %i.ah, %bb.f ], [ %i.at, %bb.h ]
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !134
  store ptr %.sink.i, ptr %i.ac, align 8, !tbaa !119
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.e
  %i.ba = phi ptr [ %i.ad, %bb.e ], [ %i.ae, %.sink.split.i ] ; 2 uses
  %i.bb = icmp eq ptr %i.w, %i.ba
  br i1 %i.bb, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %bb.e

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit: ; preds = %bb.j, %bb.d
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.bd = load ptr, ptr %0, align 8, !tbaa !137
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  store i64 %i.bg, ptr %4, align 8, !tbaa !37
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %i.bh = zext nneg i8 %i.b to i32
  %i.bi = load ptr, ptr %1, align 8, !tbaa !152, !nonnull !123, !align !141
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !140, !nonnull !123, !align !141
  %i.bl = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(121) %i.bk, i32 noundef %i.bh)
  br i1 %i.bl, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.bn = load ptr, ptr %0, align 8, !tbaa !137
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  store i64 %i.bq, ptr %4, align 8, !tbaa !37
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !134 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !135
  %.not.i.i.i = icmp eq ptr %i.bt, %i.bv
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.5.0.insert.ext.i = zext nneg i8 %i.b to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 32
  store i64 %.sroa.5.0.insert.shift.i, ptr %i.bt, align 4
  %i.bw = load ptr, ptr %i.bs, align 8, !tbaa !134
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.bx, ptr %i.bs, align 8, !tbaa !134
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.by = load ptr, ptr %i.br, align 8, !tbaa !133 ; 7 uses
  %i.bz = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64               ; 2 uses
  %i.cb = sub i64 %i.bz, %i.ca                    ; 4 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775800
  br i1 %i.cc, label %bb.p, label %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #28
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
  %i.cj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #32 ; 7 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %i.ct = getelementptr i8, ptr %next.gep51, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep51, align 4, !alias.scope !271
  %wide.load52 = load <2 x i64>, ptr %i.ct, align 4, !alias.scope !271
  %i.cu = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !270
  store <2 x i64> %wide.load52, ptr %i.cu, align 4, !alias.scope !270
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !268

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %i.cw = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !271
  store i64 %i.cw, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !270
  %i.cx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cx, %i.bt
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !269

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cj, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cq, %middle.block ], [ %i.cy, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cb) #27
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  store ptr %i.cj, ptr %i.br, align 8, !tbaa !133
  store ptr %i.cz, ptr %i.bs, align 8, !tbaa !134
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ch
  store ptr %i.da, ptr %i.bu, align 8, !tbaa !135
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.i, %bb.g, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, %bb.n
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.db, align 8, !tbaa !132
  br label %bb.r

bb.r:                                             ; preds = %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, %.critedge, %bb.l, %bb.c
  %.2 = phi i32 [ 0, %.critedge ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit ], [ -2, %bb.l ], [ -2, %bb.c ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE15start_aggregateINS_2v16detail7fix_tagENS6_6map_svENS6_6map_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !31
  %i.b = and i8 %i.a, 15                          ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.e, ptr %i.c, align 8, !tbaa !138
  %i.f = icmp eq i8 %i.b, 0
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !158, !nonnull !123, !align !141
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !140, !nonnull !123, !align !141
  %i.j = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(121) %i.i, i32 noundef 0)
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.l = load ptr, ptr %0, align 8, !tbaa !137
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  store i64 %i.o, ptr %4, align 8, !tbaa !37
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %2, align 8, !tbaa !160, !nonnull !123, !align !141
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !140, !nonnull !123, !align !141
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !119
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  store ptr %i.u, ptr %i.s, align 8, !tbaa !119
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !143  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !143  ; 2 uses
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !123, !align !141
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i
  %i.ad = phi ptr [ %i.y, %.lr.ph.i ], [ %i.ba, %bb.j ] ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 5 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !146
  switch i32 %i.af, label %bb.j [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !142
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !118
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !118
  %i.ak = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !147
  %i.am = add i32 %i.al, -1                       ; 2 uses
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !147
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.sink.split.i, label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.ac, align 8, !tbaa !142
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !118
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !118
  store i32 2, ptr %i.ae, align 4, !tbaa !146
  br label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !142
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !118
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %i.av, ptr %i.at, align 8, !tbaa !118
  %i.aw = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !147
  %i.ay = add i32 %i.ax, -1                       ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !147
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.ae, align 4, !tbaa !146
  br label %.critedge

.sink.split.i:                                    ; preds = %bb.h, %bb.f
  %.sink.i = phi ptr [ %i.ah, %bb.f ], [ %i.at, %bb.h ]
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !134
  store ptr %.sink.i, ptr %i.ac, align 8, !tbaa !119
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.e
  %i.ba = phi ptr [ %i.ad, %bb.e ], [ %i.ae, %.sink.split.i ] ; 2 uses
  %i.bb = icmp eq ptr %i.w, %i.ba
  br i1 %i.bb, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %bb.e

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit: ; preds = %bb.j, %bb.d
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.bd = load ptr, ptr %0, align 8, !tbaa !137
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  store i64 %i.bg, ptr %4, align 8, !tbaa !37
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %i.bh = zext nneg i8 %i.b to i32
  %i.bi = load ptr, ptr %1, align 8, !tbaa !158, !nonnull !123, !align !141
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !140, !nonnull !123, !align !141
  %i.bl = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(121) %i.bk, i32 noundef %i.bh)
  br i1 %i.bl, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.bn = load ptr, ptr %0, align 8, !tbaa !137
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  store i64 %i.bq, ptr %4, align 8, !tbaa !37
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !134 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !135
  %.not.i.i.i = icmp eq ptr %i.bt, %i.bv
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.5.0.insert.ext.i = zext nneg i8 %i.b to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, 1
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bt, align 4
  %i.bw = load ptr, ptr %i.bs, align 8, !tbaa !134
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.bx, ptr %i.bs, align 8, !tbaa !134
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.by = load ptr, ptr %i.br, align 8, !tbaa !133 ; 7 uses
  %i.bz = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64               ; 2 uses
  %i.cb = sub i64 %i.bz, %i.ca                    ; 4 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775800
  br i1 %i.cc, label %bb.p, label %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #28
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
  %i.cj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #32 ; 7 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.ct = getelementptr i8, ptr %next.gep51, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep51, align 4, !alias.scope !278
  %wide.load52 = load <2 x i64>, ptr %i.ct, align 4, !alias.scope !278
  %i.cu = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !277
  store <2 x i64> %wide.load52, ptr %i.cu, align 4, !alias.scope !277
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !275

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.cw = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !278
  store i64 %i.cw, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !277
  %i.cx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cx, %i.bt
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !276

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cj, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cq, %middle.block ], [ %i.cy, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cb) #27
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  store ptr %i.cj, ptr %i.br, align 8, !tbaa !133
  store ptr %i.cz, ptr %i.bs, align 8, !tbaa !134
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ch
  store ptr %i.da, ptr %i.bu, align 8, !tbaa !135
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.i, %bb.g, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, %bb.n
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.db, align 8, !tbaa !132
  br label %bb.r

bb.r:                                             ; preds = %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, %.critedge, %bb.l, %bb.c
  %.2 = phi i32 [ 0, %.critedge ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit ], [ -2, %bb.l ], [ -2, %bb.c ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v26detail21create_object_visitor11parse_errorEmm(ptr noundef nonnull align 8 dereferenceable(121) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN7msgpack2v111parse_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.15)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN7msgpack2v111parse_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #26
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9visit_extEPKcm(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !39
  %i.c = icmp ugt i64 %2, %i.b
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN7msgpack2v117ext_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.16)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN7msgpack2v117ext_size_overflowE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #26
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !142
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !118  ; 7 uses
  store i32 9, ptr %i.i, align 8, !tbaa !91
  %i.j = load ptr, ptr %0, align 8, !tbaa !114    ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !115
  %i.m = tail call noundef zeroext i1 %i.j(i32 noundef 9, i64 noundef %2, ptr noundef %i.l)
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %1, ptr %i.o, align 8, !tbaa !31
  %i.p = trunc i64 %2 to i32
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr %i.n, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 1, ptr %i.r, align 8, !tbaa !121
  br label %bb.r

bb.h:                                             ; preds = %bb.f, %bb.e
  %.not23 = icmp eq ptr %1, null
  br i1 %.not23, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !120  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !149
  %i.x = load i64, ptr %i.u, align 8, !tbaa !150  ; 2 uses
  %i.y = icmp ult i64 %i.x, %2
  br i1 %i.y, label %bb.j, label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

bb.j:                                             ; preds = %bb.i
  %i.z = load i64, ptr %i.t, align 8, !tbaa !84
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
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ad, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ae = add nuw i64 %.2.i.i, 8
  %i.af = tail call noalias ptr @malloc(i64 noundef %i.ae) #29 ; 4 uses
  %.not27.i.i = icmp eq ptr %i.af, null
  br i1 %.not27.i.i, label %bb.p, label %_ZN7msgpack2v14zone15allocate_expandEm.exit.i

bb.p:                                             ; preds = %bb.o
  %i.ag = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ag, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

_ZN7msgpack2v14zone15allocate_expandEm.exit.i:    ; preds = %bb.o
  %i.ah = getelementptr i8, ptr %i.af, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !85
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !89
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !85
  br label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

_ZN7msgpack2v14zone14allocate_alignEmm.exit:      ; preds = %bb.i, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i
  %i.ak = phi ptr [ %i.ah, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.w, %bb.i ] ; 3 uses
  %i.al = phi i64 [ %.2.i.i, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.x, %bb.i ]
  %i.am = sub i64 %i.al, %2
  store i64 %i.am, ptr %i.u, align 8, !tbaa !150
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %2
  store ptr %i.an, ptr %i.v, align 8, !tbaa !149
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr nonnull align 1 %1, i64 %2, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.ak, ptr %i.ap, align 8, !tbaa !31
  %i.aq = trunc i64 %2 to i32
  %i.ar = add i32 %i.aq, -1
  store i32 %i.ar, ptr %i.ao, align 8, !tbaa !31
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr null, ptr %i.at, align 8, !tbaa !31
  store i32 0, ptr %i.as, align 8, !tbaa !31
  br label %bb.r

bb.r:                                             ; preds = %_ZN7msgpack2v14zone14allocate_alignEmm.exit, %bb.q, %bb.g
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9visit_binEPKcj(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i32 %2 to i64                       ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !279
  %i.d = icmp ult i64 %i.c, %i.a
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN7msgpack2v117bin_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.17)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN7msgpack2v117bin_size_overflowE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #26
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !142
end_hunk_1
begin_hunk_2_@_ZN7msgpack2v26detail21create_object_visitor9visit_binEPKcj:bb.a
  %.not.i.i = icmp sgt i64 %.022.i.i, 0
  %i.aa = shl nuw nsw i64 %.022.i.i, 1
  br i1 %.not.i.i, label %bb.k, label %.thread

bb.m:                                             ; preds = %bb.k
  %i.ab = icmp ugt i64 %.022.i.i, -9
  br i1 %i.ab, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ac, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

.thread:                                          ; preds = %bb.l, %bb.m
  %.2.i.i25 = phi i64 [ %.022.i.i, %bb.m ], [ %i.a, %bb.l ] ; 2 uses
  %i.ad = add nuw i64 %.2.i.i25, 8
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ad) #29 ; 4 uses
  %.not27.i.i = icmp eq ptr %i.ae, null
  br i1 %.not27.i.i, label %bb.o, label %_ZN7msgpack2v14zone15allocate_expandEm.exit.i

bb.o:                                             ; preds = %.thread
  %i.af = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.af, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

_ZN7msgpack2v14zone15allocate_expandEm.exit.i:    ; preds = %.thread
  %i.ag = getelementptr i8, ptr %i.ae, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !85
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !89
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !85
  br label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

_ZN7msgpack2v14zone14allocate_alignEmm.exit:      ; preds = %bb.i, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i
  %i.aj = phi ptr [ %i.ag, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.v, %bb.i ] ; 3 uses
  %i.ak = phi i64 [ %.2.i.i25, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.w, %bb.i ]
  %i.al = sub i64 %i.ak, %i.a
  store i64 %i.al, ptr %i.t, align 8, !tbaa !150
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.a
  store ptr %i.am, ptr %i.u, align 8, !tbaa !149
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr nonnull align 1 %1, i64 %i.a, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.aj, ptr %i.ao, align 8, !tbaa !31
  store i32 %2, ptr %i.an, align 8, !tbaa !31
  br label %bb.q

bb.p:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %i.aq, align 8, !tbaa !31
  store i32 0, ptr %i.ap, align 8, !tbaa !31
  br label %bb.q

bb.q:                                             ; preds = %_ZN7msgpack2v14zone14allocate_alignEmm.exit, %bb.p, %bb.g
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE15start_aggregateItNS6_8array_svENS6_8array_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %3, align 1                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !138
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.d, ptr %i.b, align 8, !tbaa !138
  %i.e = icmp eq i16 %i.a, 0
  br i1 %i.e, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !152, !nonnull !123, !align !141
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !140, !nonnull !123, !align !141
  %i.i = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(121) %i.h, i32 noundef 0)
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !138
  %i.k = load ptr, ptr %0, align 8, !tbaa !137
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  store i64 %i.n, ptr %4, align 8, !tbaa !37
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %2, align 8, !tbaa !154, !nonnull !123, !align !141
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !140, !nonnull !123, !align !141
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !119
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  store ptr %i.t, ptr %i.r, align 8, !tbaa !119
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !143  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !143  ; 2 uses
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !123, !align !141
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 96 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i
  %i.ac = phi ptr [ %i.x, %.lr.ph.i ], [ %i.az, %bb.j ] ; 4 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8 ; 5 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !146
  switch i32 %i.ae, label %bb.j [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !142
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !118
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !118
  %i.aj = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !147
  %i.al = add i32 %i.ak, -1                       ; 2 uses
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !147
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.sink.split.i, label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.ab, align 8, !tbaa !142
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !118
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !118
  store i32 2, ptr %i.ad, align 4, !tbaa !146
  br label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.ab, align 8, !tbaa !142
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !118
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %i.au, ptr %i.as, align 8, !tbaa !118
  %i.av = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !147
  %i.ax = add i32 %i.aw, -1                       ; 2 uses
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !147
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.ad, align 4, !tbaa !146
  br label %.critedge

.sink.split.i:                                    ; preds = %bb.h, %bb.f
  %.sink.i = phi ptr [ %i.ag, %bb.f ], [ %i.as, %bb.h ]
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !134
  store ptr %.sink.i, ptr %i.ab, align 8, !tbaa !119
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.e
  %i.az = phi ptr [ %i.ac, %bb.e ], [ %i.ad, %.sink.split.i ] ; 2 uses
  %i.ba = icmp eq ptr %i.v, %i.az
  br i1 %i.ba, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %bb.e

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit: ; preds = %bb.j, %bb.d
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !138
  %i.bc = load ptr, ptr %0, align 8, !tbaa !137
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  store i64 %i.bf, ptr %4, align 8, !tbaa !37
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.a) ; 3 uses
  %i.bg = zext i16 %rev.i.i to i32
  %i.bh = load ptr, ptr %1, align 8, !tbaa !152, !nonnull !123, !align !141
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !140, !nonnull !123, !align !141
  %i.bk = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(121) %i.bj, i32 noundef %i.bg)
  br i1 %i.bk, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !138
  %i.bm = load ptr, ptr %0, align 8, !tbaa !137
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  store i64 %i.bp, ptr %4, align 8, !tbaa !37
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !134 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !135
  %.not.i.i.i = icmp eq ptr %i.bs, %i.bu
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.5.0.insert.ext.i = zext i16 %rev.i.i to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 32
  store i64 %.sroa.5.0.insert.shift.i, ptr %i.bs, align 4
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !134
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.bw, ptr %i.br, align 8, !tbaa !134
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !133 ; 7 uses
  %i.by = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bz = ptrtoint ptr %i.bx to i64               ; 2 uses
  %i.ca = sub i64 %i.by, %i.bz                    ; 4 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775800
  br i1 %i.cb, label %bb.p, label %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #28
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
  %i.ci = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #32 ; 7 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  %i.cs = getelementptr i8, ptr %next.gep51, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep51, align 4, !alias.scope !286
  %wide.load52 = load <2 x i64>, ptr %i.cs, align 4, !alias.scope !286
  %i.ct = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !285
  store <2 x i64> %wide.load52, ptr %i.ct, align 4, !alias.scope !285
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !283

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  %i.cv = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !286
  store i64 %i.cv, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !285
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cw, %i.bs
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !284

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ci, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cp, %middle.block ], [ %i.cx, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.ca) #27
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  store ptr %i.ci, ptr %i.bq, align 8, !tbaa !133
  store ptr %i.cy, ptr %i.br, align 8, !tbaa !134
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cg
  store ptr %i.cz, ptr %i.bt, align 8, !tbaa !135
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.i, %bb.g, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, %bb.n
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.da, align 8, !tbaa !132
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.e, ptr %i.c, align 8, !tbaa !138
  %i.f = icmp eq i32 %i.a, 0
  %i.g = load ptr, ptr %1, align 8, !tbaa !152, !nonnull !123, !align !141
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !140, !nonnull !123, !align !141 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(121) %i.i, i32 noundef 0)
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.l = load ptr, ptr %0, align 8, !tbaa !137
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  store i64 %i.o, ptr %4, align 8, !tbaa !37
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %2, align 8, !tbaa !154, !nonnull !123, !align !141
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !140, !nonnull !123, !align !141
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !119
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  store ptr %i.u, ptr %i.s, align 8, !tbaa !119
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !143  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !143  ; 2 uses
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !123, !align !141
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i
  %i.ad = phi ptr [ %i.y, %.lr.ph.i ], [ %i.ba, %bb.j ] ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 5 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !146
  switch i32 %i.af, label %bb.j [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !142
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !118
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !118
  %i.ak = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !147
  %i.am = add i32 %i.al, -1                       ; 2 uses
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !147
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.sink.split.i, label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.ac, align 8, !tbaa !142
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !118
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !118
  store i32 2, ptr %i.ae, align 4, !tbaa !146
  br label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !142
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !118
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %i.av, ptr %i.at, align 8, !tbaa !118
  %i.aw = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !147
  %i.ay = add i32 %i.ax, -1                       ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !147
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.ae, align 4, !tbaa !146
  br label %.critedge

.sink.split.i:                                    ; preds = %bb.h, %bb.f
  %.sink.i = phi ptr [ %i.ah, %bb.f ], [ %i.at, %bb.h ]
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !134
  store ptr %.sink.i, ptr %i.ac, align 8, !tbaa !119
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.e
  %i.ba = phi ptr [ %i.ad, %bb.e ], [ %i.ae, %.sink.split.i ] ; 2 uses
  %i.bb = icmp eq ptr %i.w, %i.ba
  br i1 %i.bb, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %bb.e

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit: ; preds = %bb.j, %bb.d
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.bd = load ptr, ptr %0, align 8, !tbaa !137
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  store i64 %i.bg, ptr %4, align 8, !tbaa !37
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %i.bh = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(121) %i.i, i32 noundef %i.b)
  br i1 %i.bh, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.bj = load ptr, ptr %0, align 8, !tbaa !137
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  store i64 %i.bm, ptr %4, align 8, !tbaa !37
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !134 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !135
  %.not.i.i.i = icmp eq ptr %i.bp, %i.br
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.5.0.insert.ext.i = zext i32 %i.b to i64
  %.sroa.5.0.insert.shift.i = shl nuw i64 %.sroa.5.0.insert.ext.i, 32
  store i64 %.sroa.5.0.insert.shift.i, ptr %i.bp, align 4
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !134
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bt, ptr %i.bo, align 8, !tbaa !134
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !133 ; 7 uses
  %i.bv = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.bw = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.bx = sub i64 %i.bv, %i.bw                    ; 4 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775800
  br i1 %i.by, label %bb.p, label %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #28
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
  %i.cf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #32 ; 7 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %i.cp = getelementptr i8, ptr %next.gep50, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep50, align 4, !alias.scope !293
  %wide.load51 = load <2 x i64>, ptr %i.cp, align 4, !alias.scope !293
  %i.cq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !292
  store <2 x i64> %wide.load51, ptr %i.cq, align 4, !alias.scope !292
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !290

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %i.cs = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !293
  store i64 %i.cs, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !292
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ct, %i.bp
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !291

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cf, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cm, %middle.block ], [ %i.cu, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bx) #27
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  store ptr %i.cf, ptr %i.bn, align 8, !tbaa !133
  store ptr %i.cv, ptr %i.bo, align 8, !tbaa !134
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cd
  store ptr %i.cw, ptr %i.bq, align 8, !tbaa !135
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.i, %bb.g, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, %bb.n
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.cx, align 8, !tbaa !132
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !138
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.d, ptr %i.b, align 8, !tbaa !138
  %i.e = icmp eq i16 %i.a, 0
  br i1 %i.e, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !158, !nonnull !123, !align !141
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !140, !nonnull !123, !align !141
  %i.i = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(121) %i.h, i32 noundef 0)
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !138
  %i.k = load ptr, ptr %0, align 8, !tbaa !137
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  store i64 %i.n, ptr %4, align 8, !tbaa !37
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %2, align 8, !tbaa !160, !nonnull !123, !align !141
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !140, !nonnull !123, !align !141
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !119
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  store ptr %i.t, ptr %i.r, align 8, !tbaa !119
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !143  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !143  ; 2 uses
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !123, !align !141
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 96 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i
  %i.ac = phi ptr [ %i.x, %.lr.ph.i ], [ %i.az, %bb.j ] ; 4 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8 ; 5 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !146
  switch i32 %i.ae, label %bb.j [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !142
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !118
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !118
  %i.aj = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !147
  %i.al = add i32 %i.ak, -1                       ; 2 uses
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !147
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.sink.split.i, label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.ab, align 8, !tbaa !142
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !118
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !118
  store i32 2, ptr %i.ad, align 4, !tbaa !146
  br label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.ab, align 8, !tbaa !142
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !118
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %i.au, ptr %i.as, align 8, !tbaa !118
  %i.av = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !147
  %i.ax = add i32 %i.aw, -1                       ; 2 uses
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !147
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.ad, align 4, !tbaa !146
  br label %.critedge

.sink.split.i:                                    ; preds = %bb.h, %bb.f
  %.sink.i = phi ptr [ %i.ag, %bb.f ], [ %i.as, %bb.h ]
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !134
  store ptr %.sink.i, ptr %i.ab, align 8, !tbaa !119
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.e
  %i.az = phi ptr [ %i.ac, %bb.e ], [ %i.ad, %.sink.split.i ] ; 2 uses
  %i.ba = icmp eq ptr %i.v, %i.az
  br i1 %i.ba, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %bb.e

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit: ; preds = %bb.j, %bb.d
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !138
  %i.bc = load ptr, ptr %0, align 8, !tbaa !137
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  store i64 %i.bf, ptr %4, align 8, !tbaa !37
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.a) ; 3 uses
  %i.bg = zext i16 %rev.i.i to i32
  %i.bh = load ptr, ptr %1, align 8, !tbaa !158, !nonnull !123, !align !141
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !140, !nonnull !123, !align !141
  %i.bk = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(121) %i.bj, i32 noundef %i.bg)
  br i1 %i.bk, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !138
  %i.bm = load ptr, ptr %0, align 8, !tbaa !137
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  store i64 %i.bp, ptr %4, align 8, !tbaa !37
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !134 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !135
  %.not.i.i.i = icmp eq ptr %i.bs, %i.bu
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.5.0.insert.ext.i = zext i16 %rev.i.i to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, 1
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bs, align 4
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !134
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.bw, ptr %i.br, align 8, !tbaa !134
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !133 ; 7 uses
  %i.by = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bz = ptrtoint ptr %i.bx to i64               ; 2 uses
  %i.ca = sub i64 %i.by, %i.bz                    ; 4 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775800
  br i1 %i.cb, label %bb.p, label %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #28
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
  %i.ci = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #32 ; 7 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.cs = getelementptr i8, ptr %next.gep51, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep51, align 4, !alias.scope !300
  %wide.load52 = load <2 x i64>, ptr %i.cs, align 4, !alias.scope !300
  %i.ct = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !299
  store <2 x i64> %wide.load52, ptr %i.ct, align 4, !alias.scope !299
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !297

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.cv = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !300
  store i64 %i.cv, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !299
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cw, %i.bs
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !298

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ci, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cp, %middle.block ], [ %i.cx, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.ca) #27
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  store ptr %i.ci, ptr %i.bq, align 8, !tbaa !133
  store ptr %i.cy, ptr %i.br, align 8, !tbaa !134
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cg
  store ptr %i.cz, ptr %i.bt, align 8, !tbaa !135
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.i, %bb.g, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, %bb.n
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.da, align 8, !tbaa !132
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.e, ptr %i.c, align 8, !tbaa !138
  %i.f = icmp eq i32 %i.a, 0
  %i.g = load ptr, ptr %1, align 8, !tbaa !158, !nonnull !123, !align !141
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !140, !nonnull !123, !align !141 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(121) %i.i, i32 noundef 0)
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.l = load ptr, ptr %0, align 8, !tbaa !137
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  store i64 %i.o, ptr %4, align 8, !tbaa !37
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %2, align 8, !tbaa !160, !nonnull !123, !align !141
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !140, !nonnull !123, !align !141
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !119
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  store ptr %i.u, ptr %i.s, align 8, !tbaa !119
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !143  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !143  ; 2 uses
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !123, !align !141
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i
  %i.ad = phi ptr [ %i.y, %.lr.ph.i ], [ %i.ba, %bb.j ] ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 5 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !146
  switch i32 %i.af, label %bb.j [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !142
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !118
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !118
  %i.ak = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !147
  %i.am = add i32 %i.al, -1                       ; 2 uses
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !147
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.sink.split.i, label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.ac, align 8, !tbaa !142
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !118
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !118
  store i32 2, ptr %i.ae, align 4, !tbaa !146
  br label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !142
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !118
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %i.av, ptr %i.at, align 8, !tbaa !118
  %i.aw = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !147
  %i.ay = add i32 %i.ax, -1                       ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !147
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.ae, align 4, !tbaa !146
  br label %.critedge

.sink.split.i:                                    ; preds = %bb.h, %bb.f
  %.sink.i = phi ptr [ %i.ah, %bb.f ], [ %i.at, %bb.h ]
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !134
  store ptr %.sink.i, ptr %i.ac, align 8, !tbaa !119
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.e
  %i.ba = phi ptr [ %i.ad, %bb.e ], [ %i.ae, %.sink.split.i ] ; 2 uses
  %i.bb = icmp eq ptr %i.w, %i.ba
  br i1 %i.bb, label %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, label %bb.e

_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit: ; preds = %bb.j, %bb.d
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.bd = load ptr, ptr %0, align 8, !tbaa !137
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  store i64 %i.bg, ptr %4, align 8, !tbaa !37
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %i.bh = tail call noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(121) %i.i, i32 noundef %i.b)
  br i1 %i.bh, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !138
  %i.bj = load ptr, ptr %0, align 8, !tbaa !137
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  store i64 %i.bm, ptr %4, align 8, !tbaa !37
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !134 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !135
  %.not.i.i.i = icmp eq ptr %i.bp, %i.br
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.5.0.insert.ext.i = zext i32 %i.b to i64
  %.sroa.5.0.insert.shift.i = shl nuw i64 %.sroa.5.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, 1
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bp, align 4
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !134
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bt, ptr %i.bo, align 8, !tbaa !134
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !133 ; 7 uses
  %i.bv = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.bw = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.bx = sub i64 %i.bv, %i.bw                    ; 4 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775800
  br i1 %i.by, label %bb.p, label %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #28
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
  %i.cf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #32 ; 7 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.cp = getelementptr i8, ptr %next.gep50, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep50, align 4, !alias.scope !307
  %wide.load51 = load <2 x i64>, ptr %i.cp, align 4, !alias.scope !307
  %i.cq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !306
  store <2 x i64> %wide.load51, ptr %i.cq, align 4, !alias.scope !306
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !304

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.cs = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !307
  store i64 %i.cs, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !306
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ct, %i.bp
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !305

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cf, %_ZNKSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cm, %middle.block ], [ %i.cu, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bx) #27
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i: ; preds = %bb.q, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22.i.i.i.i
  store ptr %i.cf, ptr %i.bn, align 8, !tbaa !133
  store ptr %i.cv, ptr %i.bo, align 8, !tbaa !134
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cd
  store ptr %i.cw, ptr %i.bq, align 8, !tbaa !135
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.i, %bb.g, %_ZNSt6vectorIN7msgpack2v26detail7contextINS2_12parse_helperINS2_21create_object_visitorEEEE12unpack_stack10stack_elemESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i.i, %bb.n
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.cx, align 8, !tbaa !132
  br label %bb.r

bb.r:                                             ; preds = %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit, %.critedge, %bb.l, %bb.c
  %.2 = phi i32 [ 0, %.critedge ], [ 2, %_ZN7msgpack2v26detail7contextINS1_12parse_helperINS1_21create_object_visitorEEEE12unpack_stack7consumeERS5_.exit ], [ -2, %bb.l ], [ -2, %bb.c ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v117str_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v117str_size_overflowE, i64 16), ptr %0, align 8, !tbaa !42
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v117str_size_overflowD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(121) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !308
  %i.d = icmp ult i64 %i.c, %i.a
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN7msgpack2v119array_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.12)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN7msgpack2v119array_size_overflowE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !119  ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !116
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load i64, ptr %i.o, align 8, !tbaa !40
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN7msgpack2v119depth_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull @.str.13)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTIN7msgpack2v119depth_size_overflowE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.i:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !118  ; 3 uses
  store i32 7, ptr %i.u, align 8, !tbaa !91
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %1, ptr %i.v, align 8, !tbaa !31
  %i.w = icmp eq i32 %1, 0
  br i1 %i.w, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = mul nuw nsw i64 %i.a, 24                 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !120  ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !149 ; 3 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 7
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = and i64 %i.ae, -8                       ; 2 uses
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = add i64 %i.ah, %i.x                     ; 2 uses
  %i.aj = load i64, ptr %i.aa, align 8, !tbaa !150 ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  br i1 %i.ak, label %bb.k, label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

bb.k:                                             ; preds = %bb.j
  %i.al = or disjoint i64 %i.x, 7                 ; 2 uses
  %i.am = load i64, ptr %i.z, align 8, !tbaa !84
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
  %i.aq = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aq, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ar = add nuw i64 %.2.i.i, 8
  %i.as = tail call noalias ptr @malloc(i64 noundef %i.ar) #29 ; 5 uses
  %.not27.i.i = icmp eq ptr %i.as, null
  br i1 %.not27.i.i, label %bb.q, label %_ZN7msgpack2v14zone15allocate_expandEm.exit.i

bb.q:                                             ; preds = %bb.p
  %i.at = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.at, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.at, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

_ZN7msgpack2v14zone15allocate_expandEm.exit.i:    ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !85
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !89
  store ptr %i.as, ptr %i.av, align 8, !tbaa !85
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
  store i64 %i.bf, ptr %i.aa, align 8, !tbaa !150
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.014.i
  store ptr %i.bg, ptr %i.ab, align 8, !tbaa !149
  br label %bb.r

bb.r:                                             ; preds = %bb.i, %_ZN7msgpack2v14zone14allocate_alignEmm.exit
  %.0.i.sink = phi ptr [ %.0.i, %_ZN7msgpack2v14zone14allocate_alignEmm.exit ], [ null, %bb.i ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %.0.i.sink, ptr %i.bh, align 8, !tbaa !31
  %i.bi = load ptr, ptr %i.h, align 8, !tbaa !119 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !117
  %.not.i = icmp eq ptr %i.bi, %i.bk
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %.0.i.sink, ptr %i.bi, align 8, !tbaa !118
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bl, ptr %i.h, align 8, !tbaa !119
  br label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE9push_backERKS3_.exit

bb.t:                                             ; preds = %bb.r
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !116 ; 4 uses
  %i.bn = ptrtoint ptr %i.bi to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 6 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.u, label %_ZNKSt6vectorIPN7msgpack2v26objectESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #28
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
  %i.bx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #32 ; 4 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %i.bp ; 2 uses
  store ptr %.0.i.sink, ptr %i.by, align 8, !tbaa !118
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
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #27
  br label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.w, %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.bx, ptr %i.g, align 8, !tbaa !116
  store ptr %i.ca, ptr %i.h, align 8, !tbaa !119
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.cb, ptr %i.bj, align 8, !tbaa !117
  br label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.s, %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  ret i1 true

bb.x:                                             ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.r, %bb.h ], [ %i.e, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.f, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #26
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v119array_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v119array_size_overflowE, i64 16), ptr %0, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v119depth_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v119depth_size_overflowE, i64 16), ptr %0, align 8, !tbaa !42
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v119array_size_overflowD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v119depth_size_overflowD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7msgpack2v26detail21create_object_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(121) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !309
  %i.d = icmp ult i64 %i.c, %i.a
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN7msgpack2v117map_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.14)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN7msgpack2v117map_size_overflowE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !119  ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !116
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load i64, ptr %i.o, align 8, !tbaa !40
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN7msgpack2v119depth_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull @.str.13)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTIN7msgpack2v119depth_size_overflowE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.i:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !118  ; 3 uses
  store i32 8, ptr %i.u, align 8, !tbaa !91
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %1, ptr %i.v, align 8, !tbaa !31
  %i.w = icmp eq i32 %1, 0
  br i1 %i.w, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = mul nuw nsw i64 %i.a, 48                 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !120  ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !149 ; 3 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 7
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = and i64 %i.ae, -8                       ; 2 uses
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = add i64 %i.ah, %i.x                     ; 2 uses
  %i.aj = load i64, ptr %i.aa, align 8, !tbaa !150 ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  br i1 %i.ak, label %bb.k, label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

bb.k:                                             ; preds = %bb.j
  %i.al = or disjoint i64 %i.x, 7                 ; 2 uses
  %i.am = load i64, ptr %i.z, align 8, !tbaa !84
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
  %i.aq = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aq, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ar = add nuw i64 %.2.i.i, 8
  %i.as = tail call noalias ptr @malloc(i64 noundef %i.ar) #29 ; 5 uses
  %.not27.i.i = icmp eq ptr %i.as, null
  br i1 %.not27.i.i, label %bb.q, label %_ZN7msgpack2v14zone15allocate_expandEm.exit.i

bb.q:                                             ; preds = %bb.p
  %i.at = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.at, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.at, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

_ZN7msgpack2v14zone15allocate_expandEm.exit.i:    ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !85
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !89
  store ptr %i.as, ptr %i.av, align 8, !tbaa !85
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
  store i64 %i.bf, ptr %i.aa, align 8, !tbaa !150
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.014.i
  store ptr %i.bg, ptr %i.ab, align 8, !tbaa !149
  br label %bb.r

bb.r:                                             ; preds = %bb.i, %_ZN7msgpack2v14zone14allocate_alignEmm.exit
  %.0.i.sink = phi ptr [ %.0.i, %_ZN7msgpack2v14zone14allocate_alignEmm.exit ], [ null, %bb.i ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %.0.i.sink, ptr %i.bh, align 8, !tbaa !31
  %i.bi = load ptr, ptr %i.h, align 8, !tbaa !119 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !117
  %.not.i.i15 = icmp eq ptr %i.bi, %i.bk
  br i1 %.not.i.i15, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %.0.i.sink, ptr %i.bi, align 8, !tbaa !118
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bl, ptr %i.h, align 8, !tbaa !119
  br label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE9push_backEOS3_.exit

bb.t:                                             ; preds = %bb.r
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !116 ; 4 uses
  %i.bn = ptrtoint ptr %i.bi to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 6 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.u, label %_ZNKSt6vectorIPN7msgpack2v26objectESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #28
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
  %i.bx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #32 ; 4 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %i.bp ; 2 uses
  store ptr %.0.i.sink, ptr %i.by, align 8, !tbaa !118
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
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #27
  br label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.w, %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.bx, ptr %i.g, align 8, !tbaa !116
  store ptr %i.ca, ptr %i.h, align 8, !tbaa !119
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.cb, ptr %i.bj, align 8, !tbaa !117
  br label %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.s, %_ZNSt6vectorIPN7msgpack2v26objectESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  ret i1 true

bb.x:                                             ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.r, %bb.h ], [ %i.e, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.f, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #26
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v117map_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v117map_size_overflowE, i64 16), ptr %0, align 8, !tbaa !42
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v117map_size_overflowD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v111parse_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v111parse_errorE, i64 16), ptr %0, align 8, !tbaa !42
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v111parse_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v117ext_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v117ext_size_overflowE, i64 16), ptr %0, align 8, !tbaa !42
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v117ext_size_overflowD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v117bin_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v117bin_size_overflowE, i64 16), ptr %0, align 8, !tbaa !42
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v117bin_size_overflowD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v113object_parser5parseINS0_24object_stringize_visitorEEEvRT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !70
  br label %bb.b

bb.b:                                             ; preds = %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread62, %bb.a
  %i.e = phi ptr [ %.0.i38, %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread62 ], [ %.pre, %bb.a ] ; 13 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !91
  switch i32 %i.f, label %bb.z [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 10, label %bb.i
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.l
    i32 9, label %bb.m
    i32 7, label %bb.n
    i32 8, label %bb.t
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !165, !nonnull !123, !align !141
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.18, i64 noundef 4) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load i8, ptr %i.i, align 8, !tbaa !31, !range !122, !noundef !123
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = load ptr, ptr %1, align 8, !tbaa !165, !nonnull !123, !align !141 ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.19, i64 noundef 4) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.f:                                             ; preds = %bb.d
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.20, i64 noundef 5) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.g:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !31
  %i.q = load ptr, ptr %1, align 8, !tbaa !165, !nonnull !123, !align !141
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef %i.p) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.h:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !31
  %i.u = load ptr, ptr %1, align 8, !tbaa !165, !nonnull !123, !align !141
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i64 noundef %i.t) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.i:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.x = load double, ptr %i.w, align 8, !tbaa !31
  %i.y = fptrunc double %i.x to float
  %i.z = load ptr, ptr %1, align 8, !tbaa !165, !nonnull !123, !align !141
  %i.aa = fpext float %i.y to double
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.z, double noundef %i.aa) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.j:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !31
  %i.ae = load ptr, ptr %1, align 8, !tbaa !165, !nonnull !123, !align !141
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, double noundef %i.ad) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.k:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31
  %i.aj = load i32, ptr %i.ag, align 8, !tbaa !31
  %i.ak = tail call noundef zeroext i1 @_ZN7msgpack2v124object_stringize_visitor9visit_strEPKcj(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ai, i32 noundef %i.aj)
  br i1 %i.ak, label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread64

bb.l:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !31
  %i.an = load ptr, ptr %1, align 8, !tbaa !165, !nonnull !123, !align !141 ; 2 uses
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.30, i64 noundef 10) ; 0 uses
  %i.ap = zext i32 %i.am to i64
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i64 noundef %i.ap)
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.31, i64 noundef 2) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.m:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !31
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !31
  %i.aw = zext i32 %i.at to i64
  %i.ax = load ptr, ptr %1, align 8, !tbaa !165, !nonnull !123, !align !141 ; 2 uses
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.34, i64 noundef 10) ; 0 uses
  %i.az = load i8, ptr %i.av, align 1, !tbaa !31
  %i.ba = sext i8 %i.az to i32
  %i.bb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i32 noundef %i.ba) ; 2 uses
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull @.str.35, i64 noundef 6) ; 0 uses
  %i.bd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, i64 noundef %i.aw)
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @.str.31, i64 noundef 2) ; 0 uses
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.n:                                             ; preds = %bb.b
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !31
  %i.bh = tail call noundef zeroext i1 @_ZN7msgpack2v124object_stringize_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.bg)
  br i1 %i.bh, label %bb.o, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread64

bb.o:                                             ; preds = %bb.n
  %i.bi = load ptr, ptr %0, align 8, !tbaa !70    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !31 ; 2 uses
  %i.bm = load i32, ptr %i.bj, align 8, !tbaa !31
  %i.bn = zext i32 %i.bm to i64                   ; 2 uses
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !317 ; 8 uses
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !72
  %.not.i.i = icmp eq ptr %i.bo, %i.bp
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.bl, ptr %i.bo, align 8, !tbaa !31
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %i.bn, ptr %.sroa.549.0..sroa_idx, align 8, !tbaa !37
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i8 0, ptr %.sroa.652.0..sroa_idx, align 8, !tbaa !105
  %.sroa.755.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 17
  store i8 0, ptr %.sroa.755.0..sroa_idx, align 1, !tbaa !105
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !317
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store ptr %i.br, ptr %i.b, align 8, !tbaa !317
  br label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit

bb.q:                                             ; preds = %bb.o
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !71  ; 5 uses
  %i.bt = ptrtoint ptr %i.bo to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 4 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775800
  br i1 %i.bw, label %bb.r, label %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #28
  unreachable

_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.bx = sdiv exact i64 %i.bv, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bx, i64 1)
  %i.by = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bx ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bx
  %i.ca = tail call i64 @llvm.umin.i64(i64 %i.by, i64 384307168202282325)
  %i.cb = select i1 %i.bz, i64 384307168202282325, i64 %i.ca ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cc = mul nuw nsw i64 %i.cb, 24
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #32 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bv ; 4 uses
  store ptr %i.bl, ptr %i.ce, align 8, !tbaa !31
  %.sroa.549.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 %i.bn, ptr %.sroa.549.0..sroa_idx50, align 8, !tbaa !37
  %.sroa.652.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store i8 0, ptr %.sroa.652.0..sroa_idx53, align 8, !tbaa !105
  %.sroa.755.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.ce, i64 17
  store i8 0, ptr %.sroa.755.0..sroa_idx56, align 1, !tbaa !105
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bs, %i.bo
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i ], [ %i.cd, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i ], [ %i.bs, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !318, !alias.scope !319
  %i.cf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cf, %i.bo
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !313

_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cd, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cg, %.lr.ph.i.i.i.i.i.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i23.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bv) #27
  br label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.s, %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.cd, ptr %i.a, align 8, !tbaa !71
  store ptr %i.ch, ptr %i.b, align 8, !tbaa !317
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %i.cb
  store ptr %i.ci, ptr %i.c, align 8, !tbaa !72
  br label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.p, %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.cj = load ptr, ptr %0, align 8, !tbaa !70
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !31
  %i.cm = icmp ne i32 %i.cl, 0
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.t:                                             ; preds = %bb.b
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !31
  %i.cp = tail call noundef zeroext i1 @_ZN7msgpack2v124object_stringize_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.co)
  br i1 %i.cp, label %bb.u, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread64

bb.u:                                             ; preds = %bb.t
  %i.cq = load ptr, ptr %0, align 8, !tbaa !70    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !31 ; 2 uses
  %i.cu = load i32, ptr %i.cr, align 8, !tbaa !31
  %i.cv = zext i32 %i.cu to i64                   ; 2 uses
  %i.cw = load ptr, ptr %i.b, align 8, !tbaa !317 ; 8 uses
  %i.cx = load ptr, ptr %i.c, align 8, !tbaa !72
  %.not.i.i23 = icmp eq ptr %i.cw, %i.cx
  br i1 %.not.i.i23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr %i.ct, ptr %i.cw, align 8, !tbaa !31
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %i.cv, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !37
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !105
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 17
  store i8 1, ptr %.sroa.7.0..sroa_idx, align 1, !tbaa !105
  %i.cy = load ptr, ptr %i.b, align 8, !tbaa !317
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  store ptr %i.cz, ptr %i.b, align 8, !tbaa !317
  br label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit36

bb.w:                                             ; preds = %bb.u
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !71  ; 5 uses
  %i.db = ptrtoint ptr %i.cw to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc                    ; 4 uses
  %i.de = icmp eq i64 %i.dd, 9223372036854775800
  br i1 %i.de, label %bb.x, label %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i24

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #28
  unreachable

_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i24: ; preds = %bb.w
  %i.df = sdiv exact i64 %i.dd, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i25 = tail call i64 @llvm.umax.i64(i64 %i.df, i64 1)
  %i.dg = add nsw i64 %.sroa.speculated.i.i.i.i25, %i.df ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %i.df
  %i.di = tail call i64 @llvm.umin.i64(i64 %i.dg, i64 384307168202282325)
  %i.dj = select i1 %i.dh, i64 384307168202282325, i64 %i.di ; 3 uses
  %.not.i.i.i.i26 = icmp ne i64 %i.dj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i26)
  %i.dk = mul nuw nsw i64 %i.dj, 24
  %i.dl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #32 ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dd ; 4 uses
  store ptr %i.ct, ptr %i.dm, align 8, !tbaa !31
  %.sroa.5.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store i64 %i.cv, ptr %.sroa.5.0..sroa_idx40, align 8, !tbaa !37
  %.sroa.6.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i8 1, ptr %.sroa.6.0..sroa_idx42, align 8, !tbaa !105
  %.sroa.7.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.dm, i64 17
  store i8 1, ptr %.sroa.7.0..sroa_idx44, align 1, !tbaa !105
  %.not10.i.i.i.i.i.i27 = icmp eq ptr %i.da, %i.cw
  br i1 %.not10.i.i.i.i.i.i27, label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i32, label %.lr.ph.i.i.i.i.i.i28

.lr.ph.i.i.i.i.i.i28:                             ; preds = %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i24, %.lr.ph.i.i.i.i.i.i28
  %.012.i.i.i.i.i.i29 = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i.i28 ], [ %i.dl, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i24 ] ; 2 uses
  %.0911.i.i.i.i.i.i30 = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.i28 ], [ %i.da, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i24 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i29, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i30, i64 24, i1 false), !tbaa.struct !318, !alias.scope !320
  %i.dn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i30, i64 24 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i29, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i31 = icmp eq ptr %i.dn, %i.cw
  br i1 %.not.i.i.i.i.i.i31, label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i32, label %.lr.ph.i.i.i.i.i.i28, !llvm.loop !313

_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i32: ; preds = %.lr.ph.i.i.i.i.i.i28, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i24
  %.0.lcssa.i.i.i.i.i.i33 = phi ptr [ %i.dl, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i24 ], [ %i.do, %.lr.ph.i.i.i.i.i.i28 ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i33, i64 24
  %.not.i23.i.i.i34 = icmp eq ptr %i.da, null
  br i1 %.not.i23.i.i.i34, label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i35, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i32
  tail call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.dd) #27
  br label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i35

_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i35: ; preds = %bb.y, %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i32
  store ptr %i.dl, ptr %i.a, align 8, !tbaa !71
  store ptr %i.dp, ptr %i.b, align 8, !tbaa !317
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %i.dl, i64 %i.dj
  store ptr %i.dq, ptr %i.c, align 8, !tbaa !72
  br label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit36

_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit36: ; preds = %bb.v, %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i35
  %i.dr = load ptr, ptr %0, align 8, !tbaa !70
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !31
  %i.du = icmp ne i32 %i.dt, 0
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.z:                                             ; preds = %bb.b
  %i.dv = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v110type_errorE, i64 16), ptr %i.dv, align 8, !tbaa !42
  tail call void @__cxa_throw(ptr nonnull %i.dv, ptr nonnull @_ZTIN7msgpack2v110type_errorE, ptr nonnull @_ZNSt8bad_castD2Ev) #28
  unreachable

_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit: ; preds = %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit36, %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit, %bb.m, %bb.l, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.k
  %.021.shrunk = phi i1 [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.m ], [ false, %bb.f ], [ %i.du, %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit36 ], [ %i.cm, %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit ]
  %i.dw = load ptr, ptr %i.a, align 8, !tbaa !321
  %i.dx = load ptr, ptr %i.b, align 8, !tbaa !321 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread64, label %bb.aa

bb.aa:                                            ; preds = %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit
  br i1 %.021.shrunk, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread62, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit

_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit: ; preds = %bb.aa, %bb.ap
  %i.dz = phi ptr [ %i.fz, %bb.ap ], [ %i.dx, %bb.aa ] ; 7 uses
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 -16 ; 5 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !323 ; 3 uses
  %i.ec = icmp eq i64 %i.eb, 0
  %i.ed = getelementptr inbounds i8, ptr %i.dz, i64 -8
  %i.ee = load i8, ptr %i.ed, align 8, !tbaa !324, !range !122, !noundef !123
  %i.ef = trunc nuw i8 %i.ee to i1                ; 2 uses
  br i1 %i.ec, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit
  %i.eg = load ptr, ptr %i.d, align 8, !tbaa !166
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -4
  store ptr %i.eh, ptr %i.d, align 8, !tbaa !166
  %i.ei = load ptr, ptr %1, align 8, !tbaa !165, !nonnull !123, !align !141 ; 2 uses
  br i1 %i.ef, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ej = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef nonnull @.str.38, i64 noundef 1) ; 0 uses
  br label %bb.ap

bb.ad:                                            ; preds = %bb.ab
  %i.ek = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef nonnull @.str.39, i64 noundef 1) ; 0 uses
  br label %bb.ap

bb.ae:                                            ; preds = %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit
  br i1 %i.ef, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  %i.el = getelementptr inbounds i8, ptr %i.dz, i64 -7
  %i.em = load i8, ptr %i.el, align 1, !tbaa !325, !range !122, !noundef !123
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eo = getelementptr inbounds i8, ptr %i.dz, i64 -7
  %i.ep = load ptr, ptr %1, align 8, !tbaa !165, !nonnull !123, !align !141
  %i.eq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr noundef nonnull @.str.40, i64 noundef 1) ; 0 uses
  store i8 0, ptr %i.eo, align 1, !tbaa !325
  br label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread62

bb.ah:                                            ; preds = %bb.af
  %i.er = load ptr, ptr %i.d, align 8, !tbaa !326
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -4 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !33
  %i.eu = add i32 %i.et, -1                       ; 2 uses
  store i32 %i.eu, ptr %i.es, align 4, !tbaa !33
  %.not.i.i37 = icmp eq i32 %i.eu, 0
  br i1 %.not.i.i37, label %_ZN7msgpack2v124object_stringize_visitor13end_map_valueEv.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ev = load ptr, ptr %1, align 8, !tbaa !165, !nonnull !123, !align !141
  %i.ew = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef nonnull @.str.41, i64 noundef 1) ; 0 uses
  %.pre13.i = load i64, ptr %i.ea, align 8, !tbaa !323
  br label %_ZN7msgpack2v124object_stringize_visitor13end_map_valueEv.exit.i

_ZN7msgpack2v124object_stringize_visitor13end_map_valueEv.exit.i: ; preds = %bb.ai, %bb.ah
  %i.ex = phi i64 [ %.pre13.i, %bb.ai ], [ %i.eb, %bb.ah ]
  %i.ey = add i64 %i.ex, -1                       ; 2 uses
  store i64 %i.ey, ptr %i.ea, align 8, !tbaa !323
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN7msgpack2v124object_stringize_visitor13end_map_valueEv.exit.i
  %i.fa = load ptr, ptr %i.d, align 8, !tbaa !166
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 -4
  store ptr %i.fb, ptr %i.d, align 8, !tbaa !166
  %i.fc = load ptr, ptr %1, align 8, !tbaa !165, !nonnull !123, !align !141
  %i.fd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fc, ptr noundef nonnull @.str.38, i64 noundef 1) ; 0 uses
  br label %bb.ap

bb.ak:                                            ; preds = %_ZN7msgpack2v124object_stringize_visitor13end_map_valueEv.exit.i
  %i.fe = getelementptr inbounds i8, ptr %i.dz, i64 -7
  %i.ff = getelementptr inbounds i8, ptr %i.dz, i64 -24 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !31
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  store ptr %i.fh, ptr %i.ff, align 8, !tbaa !31
  store i8 1, ptr %i.fe, align 1, !tbaa !325
  br label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread62

bb.al:                                            ; preds = %bb.ae
  %i.fi = load ptr, ptr %i.d, align 8, !tbaa !326
  %i.fj = getelementptr inbounds i8, ptr %i.fi, i64 -4 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !33
  %i.fl = add i32 %i.fk, -1                       ; 2 uses
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !33
  %.not.i12.i = icmp eq i32 %i.fl, 0
  br i1 %.not.i12.i, label %_ZN7msgpack2v124object_stringize_visitor14end_array_itemEv.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fm = load ptr, ptr %1, align 8, !tbaa !165, !nonnull !123, !align !141
  %i.fn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noundef nonnull @.str.41, i64 noundef 1) ; 0 uses
  %.pre.i = load i64, ptr %i.ea, align 8, !tbaa !323
  br label %_ZN7msgpack2v124object_stringize_visitor14end_array_itemEv.exit.i

_ZN7msgpack2v124object_stringize_visitor14end_array_itemEv.exit.i: ; preds = %bb.am, %bb.al
  %i.fo = phi i64 [ %.pre.i, %bb.am ], [ %i.eb, %bb.al ]
  %i.fp = add i64 %i.fo, -1                       ; 2 uses
  store i64 %i.fp, ptr %i.ea, align 8, !tbaa !323
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN7msgpack2v124object_stringize_visitor14end_array_itemEv.exit.i
  %i.fr = load ptr, ptr %i.d, align 8, !tbaa !166
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 -4
  store ptr %i.fs, ptr %i.d, align 8, !tbaa !166
  %i.ft = load ptr, ptr %1, align 8, !tbaa !165, !nonnull !123, !align !141
  %i.fu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ft, ptr noundef nonnull @.str.39, i64 noundef 1) ; 0 uses
  br label %bb.ap

bb.ao:                                            ; preds = %_ZN7msgpack2v124object_stringize_visitor14end_array_itemEv.exit.i
  %i.fv = getelementptr inbounds i8, ptr %i.dz, i64 -24 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !31
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  store ptr %i.fx, ptr %i.fv, align 8, !tbaa !31
  br label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread62

bb.ap:                                            ; preds = %bb.ad, %bb.aj, %bb.ac, %bb.an
  %i.fy = load ptr, ptr %i.b, align 8, !tbaa !317
  %i.fz = getelementptr inbounds i8, ptr %i.fy, i64 -24 ; 3 uses
  store ptr %i.fz, ptr %i.b, align 8, !tbaa !317
  %i.ga = load ptr, ptr %i.a, align 8, !tbaa !321
  %i.gb = icmp eq ptr %i.ga, %i.fz
  br i1 %i.gb, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread64, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit

_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread62: ; preds = %bb.ak, %bb.ag, %bb.ao, %bb.aa
  %i.gc = load ptr, ptr %i.b, align 8, !tbaa !321 ; 3 uses
  %i.gd = getelementptr inbounds i8, ptr %i.gc, i64 -24
  %i.ge = getelementptr inbounds i8, ptr %i.gc, i64 -8
  %i.gf = load i8, ptr %i.ge, align 8, !tbaa !324, !range !122, !noundef !123
  %i.gg = trunc nuw i8 %i.gf to i1
  %i.gh = load ptr, ptr %i.gd, align 8
  %i.gi = getelementptr inbounds i8, ptr %i.gc, i64 -7
  %i.gj = load i8, ptr %i.gi, align 1, !range !122
  %i.gk = trunc nuw i8 %i.gj to i1
  %i.gl = xor i1 %i.gk, true
  %i.gm = select i1 %i.gg, i1 %i.gl, i1 false
  %.0.idx.i = select i1 %i.gm, i64 24, i64 0
  %.0.i38 = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.0.idx.i ; 2 uses
  store ptr %.0.i38, ptr %0, align 8, !tbaa !70
  br label %bb.b

_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread64: ; preds = %bb.k, %bb.n, %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit, %bb.t, %bb.ap
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7msgpack2v124object_stringize_visitor9visit_strEPKcj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !165, !nonnull !123, !align !141 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 34, ptr %i.c, align 1, !tbaa !31
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !329
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

end_hunk_2
begin_hunk_3_@_ZN7msgpack2v124object_stringize_visitor9visit_strEPKcj:bb.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %wide.trip.count = zext i32 %2 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.v, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.m = load ptr, ptr %0, align 8, !tbaa !165, !nonnull !123, !align !141 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 34, ptr %i.b, align 1, !tbaa !31
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !329
  %.not.i14 = icmp eq i64 %i.s, 0
  br i1 %.not.i14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit16

bb.e:                                             ; preds = %._crit_edge
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i8 noundef signext 34) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit16

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit16: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 true

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.v ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.w = load i8, ptr %i.v, align 1, !tbaa !31    ; 6 uses
  switch i8 %i.w, label %bb.n [
    i8 92, label %bb.f
    i8 34, label %bb.g
    i8 47, label %bb.h
    i8 8, label %bb.i
    i8 12, label %bb.j
    i8 10, label %bb.k
    i8 13, label %bb.l
    i8 9, label %bb.m
  ]

bb.f:                                             ; preds = %.lr.ph
  %i.x = load ptr, ptr %0, align 8, !tbaa !165, !nonnull !123, !align !141
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.21, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.g:                                             ; preds = %.lr.ph
  %i.z = load ptr, ptr %0, align 8, !tbaa !165, !nonnull !123, !align !141
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.22, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.h:                                             ; preds = %.lr.ph
  %i.ab = load ptr, ptr %0, align 8, !tbaa !165, !nonnull !123, !align !141
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.23, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.i:                                             ; preds = %.lr.ph
  %i.ad = load ptr, ptr %0, align 8, !tbaa !165, !nonnull !123, !align !141
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.24, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.j:                                             ; preds = %.lr.ph
  %i.af = load ptr, ptr %0, align 8, !tbaa !165, !nonnull !123, !align !141
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.25, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.k:                                             ; preds = %.lr.ph
  %i.ah = load ptr, ptr %0, align 8, !tbaa !165, !nonnull !123, !align !141
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @.str.26, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.l:                                             ; preds = %.lr.ph
  %i.aj = load ptr, ptr %0, align 8, !tbaa !165, !nonnull !123, !align !141
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.27, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.m:                                             ; preds = %.lr.ph
  %i.al = load ptr, ptr %0, align 8, !tbaa !165, !nonnull !123, !align !141
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.28, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.n:                                             ; preds = %.lr.ph
  %i.an = icmp ult i8 %i.w, 32
  %i.ao = icmp eq i8 %i.w, 127
  %or.cond = or i1 %i.an, %i.ao
  %i.ap = load ptr, ptr %0, align 8, !tbaa !165, !nonnull !123, !align !141 ; 12 uses
  br i1 %or.cond, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !42
  %i.ar = getelementptr i8, ptr %i.aq, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %i.ap, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !330
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull @.str.29, i64 noundef 2) ; 0 uses
  %i.ax = load ptr, ptr %i.ap, align 8, !tbaa !42
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24    ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.ap, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !330
  %i.bd = and i32 %i.bc, -75
  %i.be = or disjoint i32 %i.bd, 8
  store i32 %i.be, ptr %i.bb, align 8, !tbaa !331
  %i.bf = load i64, ptr %i.ay, align 8
  %i.bg = getelementptr inbounds i8, ptr %i.ap, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 4, ptr %i.bh, align 8, !tbaa !329
  %i.bi = load i64, ptr %i.ay, align 8
  %i.bj = getelementptr inbounds i8, ptr %i.ap, i64 %i.bi ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 225 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !332, !range !122, !noundef !123
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 240
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !56 ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i, label %bb.q, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt16__throw_bad_castv() #28
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !62
  %.not.i1.i.i.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i1.i.i.i.i, label %bb.r, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bo)
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !42
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef signext i8 %i.bt(ptr noundef nonnull align 8 dereferenceable(570) %i.bo, i8 noundef signext 32), !inline_history !327 ; 0 uses
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i: ; preds = %bb.r, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  store i8 1, ptr %i.bk, align 1, !tbaa !332
  br label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit: ; preds = %bb.o, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 224
  store i8 48, ptr %i.bv, align 8, !tbaa !333
  %i.bw = zext nneg i8 %i.w to i64
  %i.bx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i64 noundef %i.bw) ; 0 uses
  %i.by = load ptr, ptr %0, align 8, !tbaa !165, !nonnull !123, !align !141 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !42
  %i.ca = getelementptr i8, ptr %i.bz, i64 -24
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds i8, ptr %i.by, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store i32 %i.av, ptr %i.cd, align 8, !tbaa !330
  br label %bb.v

bb.s:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.w, ptr %i.a, align 1, !tbaa !31
  %i.ce = load ptr, ptr %i.ap, align 8, !tbaa !42
  %i.cf = getelementptr i8, ptr %i.ce, i64 -24
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds i8, ptr %i.ap, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !329
  %.not.i17 = icmp eq i64 %i.cj, 0
  br i1 %.not.i17, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19

bb.u:                                             ; preds = %bb.s
  %i.cl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i8 noundef signext %i.w) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.v

bb.v:                                             ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !328
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7msgpack2v124object_stringize_visitor11start_arrayEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !166  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.c, align 4, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.f, ptr %i.b, align 8, !tbaa !166
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !74   ; 4 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 6 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775804
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #28
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 2305843009213693951)
  %i.p = select i1 %i.n, i64 2305843009213693951, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #32 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  store i32 %1, ptr %i.s, align 4, !tbaa !33
  %i.t = icmp sgt i64 %i.j, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.r, ptr align 4 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.j) #27
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !74
  store ptr %i.u, ptr %i.b, align 8, !tbaa !166
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.p
  store ptr %i.v, ptr %i.d, align 8, !tbaa !75
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %bb.b, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  %i.w = load ptr, ptr %0, align 8, !tbaa !165, !nonnull !123, !align !141
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.36, i64 noundef 1) ; 0 uses
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7msgpack2v124object_stringize_visitor9start_mapEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !166  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.c, align 4, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.f, ptr %i.b, align 8, !tbaa !166
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !74   ; 4 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 6 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775804
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #28
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 2305843009213693951)
  %i.p = select i1 %i.n, i64 2305843009213693951, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #32 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  store i32 %1, ptr %i.s, align 4, !tbaa !33
  %i.t = icmp sgt i64 %i.j, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.r, ptr align 4 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.j) #27
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !74
  store ptr %i.u, ptr %i.b, align 8, !tbaa !166
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.p
  store ptr %i.v, ptr %i.d, align 8, !tbaa !75
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %bb.b, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  %i.w = load ptr, ptr %0, align 8, !tbaa !165, !nonnull !123, !align !141
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.37, i64 noundef 1) ; 0 uses
  ret i1 true
}

; Function Attrs: nounwind
declare void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #16

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #16

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #16

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #16

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #8

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v123container_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v123container_size_overflowE, i64 16), ptr %0, align 8, !tbaa !42
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v123container_size_overflowD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v110type_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #27
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt8bad_cast4whatEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = load i32, ptr %0, align 8, !tbaa !170    ; 2 uses
  %.lobit.i = ashr i32 %i.a, 31
  %spec.select.i = xor i32 %.lobit.i, %i.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  switch i32 %spec.select.i, label %bb.o [
    i32 0, label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9destroyerEEENT_11result_typeERS15_.exit
    i32 1, label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9destroyerEEENT_11result_typeERS15_.exit
    i32 2, label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9destroyerEEENT_11result_typeERS15_.exit
    i32 3, label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9destroyerEEENT_11result_typeERS15_.exit
    i32 4, label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9destroyerEEENT_11result_typeERS15_.exit
    i32 5, label %bb.a
    i32 6, label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9destroyerEEENT_11result_typeERS15_.exit
    i32 7, label %bb.b
    i32 8, label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9destroyerEEENT_11result_typeERS15_.exit
    i32 9, label %bb.d
    i32 10, label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9destroyerEEENT_11result_typeERS15_.exit
    i32 11, label %bb.f
    i32 12, label %bb.i
    i32 13, label %bb.l
  ]

bb.a:                                             ; preds = %.noexc
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9destroyerEEENT_11result_typeERS15_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !31
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #27
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9destroyerEEENT_11result_typeERS15_.exit

bb.b:                                             ; preds = %.noexc
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !172  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9destroyerEEENT_11result_typeERS15_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !173
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #27
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9destroyerEEENT_11result_typeERS15_.exit

bb.d:                                             ; preds = %.noexc
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !172  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9destroyerEEENT_11result_typeERS15_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !173
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #27
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9destroyerEEENT_11result_typeERS15_.exit

bb.f:                                             ; preds = %.noexc
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !176  ; 6 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9destroyerEEENT_11result_typeERS15_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !179  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !180  ; 2 uses
  %.not.i32 = icmp eq ptr %i.v, %i.x
  br i1 %.not.i32, label %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEvT_SD_.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.0.i33 = phi ptr [ %i.y, %.lr.ph ], [ %i.v, %bb.g ] ; 2 uses
  tail call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %.0.i33) #26, !inline_history !334
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i33, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.y, %i.x
  br i1 %.not.i, label %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEvT_SD_.exit.i.i.loopexit, label %.lr.ph, !llvm.loop !6

_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEvT_SD_.exit.i.i.loopexit: ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !179
  br label %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEvT_SD_.exit.i.i

_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEvT_SD_.exit.i.i: ; preds = %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEvT_SD_.exit.i.i.loopexit, %bb.g
  %i.z = phi ptr [ %.pre, %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEvT_SD_.exit.i.i.loopexit ], [ %i.v, %bb.g ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESaISB_EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEvT_SD_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !181
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #27, !inline_history !335
  br label %_ZNSt6vectorIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESaISB_EED2Ev.exit.i

_ZNSt6vectorIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESaISB_EED2Ev.exit.i: ; preds = %bb.h, %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEvT_SD_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 24) #27, !inline_history !336
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9destroyerEEENT_11result_typeERS15_.exit

bb.i:                                             ; preds = %.noexc
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !184 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9destroyerEEENT_11result_typeERS15_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !189
  invoke void @_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESt4pairIKSB_SB_ESt10_Select1stISE_ESt4lessISB_ESaISE_EE8_M_eraseEPSt13_Rb_tree_nodeISE_E(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef %i.ai)
          to label %_ZNSt3mapIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESB_St4lessISB_ESaISt4pairIKSB_SB_EEED2Ev.exit.i unwind label %bb.k, !inline_history !337

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #30, !inline_history !337
  unreachable

_ZNSt3mapIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESB_St4lessISB_ESaISt4pairIKSB_SB_EEED2Ev.exit.i: ; preds = %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 48) #27, !inline_history !338
  br label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9destroyerEEENT_11result_typeERS15_.exit

bb.l:                                             ; preds = %.noexc
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !192 ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9destroyerEEENT_11result_typeERS15_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !189
end_hunk_3
