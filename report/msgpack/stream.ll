Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msgpack/original/stream?download=true
inline.NumInlined: 1021
inline.NumDeleted: 491
begin_hunk_0_@_ZN7msgpack2v28unpackerC2EPFbNS_2v14type11object_typeEmPvES5_mRKNS2_12unpack_limitE:bb.a
  br i1 %.not.i.i.i.i, label %_ZN7msgpack2v26detail21create_object_visitorD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = load ptr, ptr %i.ae, align 8, !tbaa !106
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bb) #27
  br label %_ZN7msgpack2v26detail21create_object_visitorD2Ev.exit

_ZN7msgpack2v26detail21create_object_visitorD2Ev.exit: ; preds = %bb.n, %bb.m, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.au, %bb.j ], [ %.pn, %bb.m ], [ %.pn, %bb.n ]
  tail call void @_ZN7msgpack2v26parserINS0_8unpackerENS0_19zone_push_finalizerEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) #26
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v26parserINS0_8unpackerENS0_19zone_push_finalizerEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN7msgpack2v16detail10decr_countEPv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i32 1 seq_cst, align 4
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %_ZN7msgpack2v16detail10decr_countEPv.exit

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #26
  br label %_ZN7msgpack2v16detail10decr_countEPv.exit

_ZN7msgpack2v16detail10decr_countEPv.exit:        ; preds = %bb.c, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !90   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZN7msgpack2v26detail7contextINS0_8unpackerEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN7msgpack2v16detail10decr_countEPv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !92
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #27
  br label %_ZN7msgpack2v26detail7contextINS0_8unpackerEED2Ev.exit

_ZN7msgpack2v26detail7contextINS0_8unpackerEED2Ev.exit: ; preds = %_ZN7msgpack2v16detail10decr_countEPv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v16detail10decr_countEPv(ptr noundef %0) #5 comdat {
bb.a:
  %i.a = atomicrmw sub ptr %0, i32 1 seq_cst, align 4
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %0) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6Server15socket_readableEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %1 = alloca %"class.msgpack::v1::object_handle", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !96   ; 2 uses
  %.not.i = icmp ult i64 %i.d, 1024
  br i1 %.not.i, label %bb.b, label %_ZN7msgpack2v26parserINS0_8unpackerENS0_19zone_push_finalizerEE14reserve_bufferEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7msgpack2v26parserINS0_8unpackerENS0_19zone_push_finalizerEE13expand_bufferEm(ptr noundef nonnull align 8 dereferenceable(112) %i.b, i64 noundef 1024)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !96
  br label %_ZN7msgpack2v26parserINS0_8unpackerENS0_19zone_push_finalizerEE14reserve_bufferEm.exit

_ZN7msgpack2v26parserINS0_8unpackerENS0_19zone_push_finalizerEE14reserve_bufferEm.exit: ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %i.d, %bb.a ], [ %.pre, %bb.b ]
  %i.f = load i32, ptr %0, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !94
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !95
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  %i.l = tail call i64 @read(i32 noundef %i.f, ptr noundef %i.k, i64 noundef %i.e) ; 4 uses
  %i.m = icmp slt i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %bb.k

bb.c:                                             ; preds = %_ZN7msgpack2v26parserINS0_8unpackerENS0_19zone_push_finalizerEE14reserve_bufferEm.exit
  %i.n = icmp eq i64 %i.l, 0
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull @.str.11)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #28
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.o) #26
  br label %bb.y

bb.g:                                             ; preds = %bb.c
  %i.q = tail call ptr @__errno_location() #32    ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !13
  switch i32 %i.r, label %bb.h [
    i32 11, label %bb.w
    i32 4, label %bb.w
  ]

bb.h:                                             ; preds = %bb.g
  %i.s = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  %i.t = load i32, ptr %i.q, align 4, !tbaa !13
  %i.u = tail call ptr @strerror(i32 noundef %i.t) #26
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef %i.u)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #28
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.s) #26
  br label %bb.y

bb.k:                                             ; preds = %_ZN7msgpack2v26parserINS0_8unpackerENS0_19zone_push_finalizerEE14reserve_bufferEm.exit
  %i.w = load i64, ptr %i.i, align 8, !tbaa !95
  %i.x = add i64 %i.w, %i.l
  store i64 %i.x, ptr %i.i, align 8, !tbaa !95
  %i.y = load i64, ptr %i.c, align 8, !tbaa !96
  %i.z = sub i64 %i.y, %i.l
  store i64 %i.z, ptr %i.c, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store i32 0, ptr %1, align 8, !tbaa !104
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !179
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.ab = invoke noundef zeroext i1 @_ZN7msgpack2v28unpacker4nextERNS_2v113object_handleERb(ptr noundef nonnull align 8 dereferenceable(256) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.m unwind label %.loopexit

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br i1 %i.ab, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6Server15process_messageEN7msgpack2v26objectERSt10unique_ptrINS0_2v14zoneESt14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull byval(%"struct.msgpack::v2::object") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.l unwind label %bb.o, !llvm.loop !178

.loopexit:                                        ; preds = %bb.l
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp:                               ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.p:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !98
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !97
  %i.ah = sub i64 %i.ae, %i.ag
  %i.ai = load i64, ptr %i.i, align 8, !tbaa !95
  %i.aj = add i64 %i.ah, %i.ai
  %i.ak = icmp ugt i64 %i.aj, 10485760
  br i1 %i.ak, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.al = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull @.str.12)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #28
          to label %bb.z unwind label %.loopexit.split-lp

bb.s:                                             ; preds = %bb.q
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.al) #26
  br label %bb.x

bb.t:                                             ; preds = %bb.p
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !121 ; 5 uses
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %_ZN7msgpack2v113object_handleD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !125 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 48 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !126 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.ar
  br i1 %.not4.i.i.i.i.i.i, label %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.u, %.noexc.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.as, %.noexc.i.i.i.i.i ], [ %i.ap, %bb.u ] ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i, i64 -16 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !128
  %i.au = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i, i64 -8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !129
  invoke void %i.at(ptr noundef %i.av)
          to label %.noexc.i.i.i.i.i unwind label %bb.v, !inline_history !0

.noexc.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !126 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.as, %i.aw
  br i1 %.not.i.i.i.i.i.i, label %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #29
  unreachable

_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit.i.i.i.i: ; preds = %.noexc.i.i.i.i.i, %bb.u
  %i.az = phi ptr [ %i.ar, %bb.u ], [ %i.aw, %.noexc.i.i.i.i.i ]
  call void @free(ptr noundef %i.az) #26
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !116 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not5.i.i.i.i.i, label %_ZNKSt14default_deleteIN7msgpack2v14zoneEEclEPS2_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %i.bb, %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit.i.i.i.i ] ; 2 uses
  %i.bc = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !120 ; 2 uses
  call void @free(ptr noundef nonnull %.06.i.i.i.i.i) #26
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN7msgpack2v14zoneEEclEPS2_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZNKSt14default_deleteIN7msgpack2v14zoneEEclEPS2_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit.i.i.i.i
  call void @free(ptr noundef nonnull %i.an) #26
  br label %_ZN7msgpack2v113object_handleD2Ev.exit

_ZN7msgpack2v113object_handleD2Ev.exit:           ; preds = %bb.t, %_ZNKSt14default_deleteIN7msgpack2v14zoneEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.w

bb.w:                                             ; preds = %bb.g, %bb.g, %_ZN7msgpack2v113object_handleD2Ev.exit
  ret void

bb.x:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.s, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.o ], [ %i.am, %bb.s ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN7msgpack2v113object_handleD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.j, %bb.f
  %.pn12 = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.v, %bb.j ], [ %.pn, %bb.x ]
  resume { ptr, i32 } %.pn12

bb.z:                                             ; preds = %bb.r
  unreachable
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #15

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #16

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #17

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #4

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #18

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6Server15process_messageEN7msgpack2v26objectERSt10unique_ptrINS0_2v14zoneESt14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef byval(%"struct.msgpack::v2::object") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.msgpack::v1::object_stringize_visitor", align 8 ; 8 uses
  %4 = alloca %"class.msgpack::v1::object_parser", align 8 ; 8 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.21, i64 noundef 17) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr @_ZSt4cout, ptr %3, align 8, !tbaa !181
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %1, ptr %4, align 8, !tbaa !136
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  invoke void @_ZN7msgpack2v113object_parser5parseINS0_24object_stringize_visitorEEEvRT_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !137  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZN7msgpack2v113object_parserD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !138
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #27
  br label %_ZN7msgpack2v113object_parserD2Ev.exit.i

_ZN7msgpack2v113object_parserD2Ev.exit.i:         ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !140  ; 3 uses
  %.not.i.i.i.i4.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i4.i, label %_ZN7msgpack2v1lsERSoRKNS_2v26objectE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN7msgpack2v113object_parserD2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !141
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #27
  br label %_ZN7msgpack2v1lsERSoRKNS_2v26objectE.exit

bb.e:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !137  ; 3 uses
  %.not.i.i.i.i5.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i5.i, label %_ZN7msgpack2v113object_parserD2Ev.exit6.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !138
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #27
  br label %_ZN7msgpack2v113object_parserD2Ev.exit6.i

_ZN7msgpack2v113object_parserD2Ev.exit6.i:        ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !140  ; 3 uses
  %.not.i.i.i.i7.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i7.i, label %_ZN7msgpack2v124object_stringize_visitorD2Ev.exit8.i, label %bb.g

bb.g:                                             ; preds = %_ZN7msgpack2v113object_parserD2Ev.exit6.i
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !141
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #27
  br label %_ZN7msgpack2v124object_stringize_visitorD2Ev.exit8.i

_ZN7msgpack2v124object_stringize_visitorD2Ev.exit8.i: ; preds = %bb.g, %_ZN7msgpack2v113object_parserD2Ev.exit6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.p

_ZN7msgpack2v1lsERSoRKNS_2v26objectE.exit:        ; preds = %_ZN7msgpack2v113object_parserD2Ev.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ac = load ptr, ptr @_ZSt4cout, align 8, !tbaa !66
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 240
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !81 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %bb.h, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.h:                                             ; preds = %_ZN7msgpack2v1lsERSoRKNS_2v26objectE.exit
  call void @_ZSt16__throw_bad_castv() #28
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZN7msgpack2v1lsERSoRKNS_2v26objectE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !87
  %.not.i1.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i1.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 67
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !56
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ah)
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !66
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call noundef signext i8 %i.ao(ptr noundef nonnull align 8 dereferenceable(570) %i.ah, i8 noundef signext 10), !inline_history !180
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.i, %bb.j
  %.0.i.i.i = phi i8 [ %i.al, %bb.i ], [ %i.ap, %bb.j ]
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aq) ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v113object_handleD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121  ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7msgpack2v14zoneESt14default_deleteIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !125  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !126  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i, label %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.noexc.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.g, %.noexc.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !128
  %i.i = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !129
  invoke void %i.h(ptr noundef %i.j)
          to label %.noexc.i.i.i.i unwind label %bb.c, !inline_history !0

.noexc.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.i
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !126  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #29
  unreachable

_ZN7msgpack2v14zone15finalizer_arrayD2Ev.exit.i.i.i: ; preds = %.noexc.i.i.i.i, %bb.b
  %i.n = phi ptr [ %i.f, %bb.b ], [ %i.k, %.noexc.i.i.i.i ]
  tail call void @free(ptr noundef %i.n) #26
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !116  ; 2 uses
end_hunk_0
