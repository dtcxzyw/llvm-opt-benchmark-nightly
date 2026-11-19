Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/parquet_reader?download=true
inline.NumInlined: 4640
inline.NumDeleted: 2561
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN13duckdb_apache6thrift8protocol17TCompactProtocolTIN6duckdb19ThriftFileTransportEE16readMessageBeginERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_12TMessageTypeERi:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.91, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN13duckdb_apache6thrift8protocol18TProtocolExceptionC2ENS2_22TProtocolExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(44) %i.h, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN13duckdb_apache6thrift8protocol18TProtocolExceptionE, ptr nonnull @_ZN13duckdb_apache6thrift10TExceptionD2Ev) #25
          to label %bb.m unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.sink.split

bb.e:                                             ; preds = %bb.d, %bb.c
  %.013 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !262    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %.013, label %.sink.split, label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %.013, label %.sink.split, label %bb.l

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !909
  %i.o = call noundef i32 @_ZN13duckdb_apache6thrift9transport7readAllIN6duckdb19ThriftFileTransportEEEjRT_Phj(ptr noundef nonnull align 8 dereferenceable(129) %i.n, ptr noundef nonnull %i.b, i32 noundef 1) ; 0 uses
  %i.p = load i8, ptr %i.b, align 1, !tbaa !406   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.q = and i8 %i.p, 31
  %.not20 = icmp eq i8 %i.q, 1
  br i1 %.not20, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = call ptr @__cxa_allocate_exception(i64 48) #24 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.92, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN13duckdb_apache6thrift8protocol18TProtocolExceptionC2ENS2_22TProtocolExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(44) %i.r, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTIN13duckdb_apache6thrift8protocol18TProtocolExceptionE, ptr nonnull @_ZN13duckdb_apache6thrift10TExceptionD2Ev) #25
          to label %bb.m unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread: ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %.sink.split

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i1 [ false, %bb.i ], [ true, %bb.h ]  ; 2 uses
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.u = load ptr, ptr %6, align 8, !tbaa !262    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.u) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.0, label %.sink.split, label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.0, label %.sink.split, label %bb.l

bb.k:                                             ; preds = %bb.f
  %i.x = lshr i8 %i.p, 5
  %i.y = zext nneg i8 %i.x to i32
  store i32 %i.y, ptr %2, align 4, !tbaa !1639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.z = call noundef i32 @_ZN13duckdb_apache6thrift8protocol17TCompactProtocolTIN6duckdb19ThriftFileTransportEE12readBignum64ERl(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !325
  %i.ab = trunc i64 %i.aa to i32
  store i32 %i.ab, ptr %3, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ac = add i32 %i.z, 2
  %i.ad = call noundef i32 @_ZN13duckdb_apache6thrift8protocol17TCompactProtocolTIN6duckdb19ThriftFileTransportEE10readBinaryERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.ae = add i32 %i.ac, %i.ad
  ret i32 %i.ae

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.sink = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ]
  %.pn22.pn.ph = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ]
  call void @__cxa_free_exception(ptr %.sink) #24
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn22.pn = phi { ptr, i32 } [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %.pn22.pn.ph, %.sink.split ]
  resume { ptr, i32 } %.pn22.pn

bb.m:                                             ; preds = %bb.i, %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN13duckdb_apache6thrift8protocol18TProtocolExceptionC2ENS2_22TProtocolExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(44) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1640 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13duckdb_apache6thrift10TExceptionE, i64 16), ptr %0, align 8, !tbaa !315
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !404
  %i.d = load ptr, ptr %2, align 8, !tbaa !262    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !405  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.f, ptr %i.a, align 8, !tbaa !325
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %bb.d   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !262
  %i.i = load i64, ptr %i.a, align 8, !tbaa !325
  store i64 %i.i, ptr %i.c, align 8, !tbaa !406
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN13duckdb_apache6thrift10TExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !406
  store i8 %i.k, ptr %i.j, align 1, !tbaa !406
  br label %_ZN13duckdb_apache6thrift10TExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZN13duckdb_apache6thrift10TExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.d:                                             ; preds = %.noexc.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #24
  resume { ptr, i32 } %i.l

_ZN13duckdb_apache6thrift10TExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !325  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !405
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !262
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13duckdb_apache6thrift8protocol18TProtocolExceptionE, i64 16), ptr %0, align 8, !tbaa !315
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %1, ptr %i.q, align 8, !tbaa !934
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN13duckdb_apache6thrift8protocol17TCompactProtocolTIN6duckdb19ThriftFileTransportEE12readBignum64ERl(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1642 {
bb.a:
  %i.a = alloca i8, align 1                       ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !909
  %i.d = call noundef i32 @_ZN13duckdb_apache6thrift9transport7readAllIN6duckdb19ThriftFileTransportEEEjRT_Phj(ptr noundef nonnull align 8 dereferenceable(129) %i.c, ptr noundef nonnull %i.a, i32 noundef 1) ; 2 uses
  %i.e = load i8, ptr %i.a, align 1, !tbaa !406   ; 2 uses
  %i.f = and i8 %i.e, 127
  %i.g = zext nneg i8 %i.f to i64                 ; 2 uses
  %.not4866 = icmp slt i8 %i.e, 0
  br i1 %.not4866, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 7, %bb.a ] ; 2 uses
  %i.h = phi i64 [ %i.x, %bb.g ], [ %i.g, %bb.a ]
  %i.i = phi i32 [ %i.s, %bb.g ], [ %i.d, %bb.a ] ; 2 uses
  %i.j = icmp ugt i32 %i.i, 9
  br i1 %i.j, label %bb.b, label %bb.g, !prof !413

bb.b:                                             ; preds = %.lr.ph
  %i.k = call ptr @__cxa_allocate_exception(i64 48) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.93, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN13duckdb_apache6thrift8protocol18TProtocolExceptionC2ENS2_22TProtocolExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(44) %i.k, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTIN13duckdb_apache6thrift8protocol18TProtocolExceptionE, ptr nonnull @_ZN13duckdb_apache6thrift10TExceptionD2Ev) #25
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread: ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !262    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %.pn60 = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ]
  call void @__cxa_free_exception(ptr %i.k) #24
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !909
  %i.r = call noundef i32 @_ZN13duckdb_apache6thrift9transport7readAllIN6duckdb19ThriftFileTransportEEEjRT_Phj(ptr noundef nonnull align 8 dereferenceable(129) %i.q, ptr noundef nonnull %i.a, i32 noundef 1)
  %i.s = add i32 %i.r, %i.i                       ; 2 uses
  %i.t = load i8, ptr %i.a, align 1, !tbaa !406   ; 2 uses
  %i.u = and i8 %i.t, 127
  %i.v = zext nneg i8 %i.u to i64
  %i.w = shl i64 %i.v, %indvars.iv
  %i.x = or i64 %i.w, %i.h                        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 7
  %.not48 = icmp slt i8 %i.t, 0
  br i1 %.not48, label %.lr.ph, label %._crit_edge, !llvm.loop !1641

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %.lcssa64 = phi i32 [ %i.d, %bb.a ], [ %i.s, %bb.g ]
  %.lcssa = phi i64 [ %i.g, %bb.a ], [ %i.x, %bb.g ]
  store i64 %.lcssa, ptr %1, align 8, !tbaa !325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i32 %.lcssa64

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  %.pn59 = phi { ptr, i32 } [ %.pn60, %bb.f ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  resume { ptr, i32 } %.pn59

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN13duckdb_apache6thrift8protocol17TCompactProtocolTIN6duckdb19ThriftFileTransportEE10readBinaryERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1643 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = call noundef i32 @_ZN13duckdb_apache6thrift8protocol17TCompactProtocolTIN6duckdb19ThriftFileTransportEE12readBignum64ERl(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !325  ; 3 uses
  %i.d = trunc i64 %i.c to i32                    ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !405
  %i.h = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.g, ptr noundef nonnull @.str.94, i64 noundef 0) ; 0 uses
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.i = icmp slt i32 %i.d, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = call ptr @__cxa_allocate_exception(i64 48) #24 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !404
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %i.m, align 8, !tbaa !405
  store i8 0, ptr %i.l, align 8, !tbaa !406
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13duckdb_apache6thrift8protocol18TProtocolExceptionE, i64 16), ptr %i.j, align 8, !tbaa !315
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i32 2, ptr %i.n, align 8, !tbaa !934
  call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN13duckdb_apache6thrift8protocol18TProtocolExceptionE, ptr nonnull @_ZN13duckdb_apache6thrift10TExceptionD2Ev) #25
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.p = load i32, ptr %i.o, align 4, !tbaa !1644 ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  %i.r = icmp slt i32 %i.p, %i.d
  %or.cond = and i1 %i.q, %i.r
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = call ptr @__cxa_allocate_exception(i64 48) #24 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !404
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 0, ptr %i.v, align 8, !tbaa !405
  store i8 0, ptr %i.u, align 8, !tbaa !406
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13duckdb_apache6thrift8protocol18TProtocolExceptionE, i64 16), ptr %i.s, align 8, !tbaa !315
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i32 3, ptr %i.w, align 8, !tbaa !934
  call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTIN13duckdb_apache6thrift8protocol18TProtocolExceptionE, ptr nonnull @_ZN13duckdb_apache6thrift10TExceptionD2Ev) #25
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !1645
  %i.z = icmp slt i32 %i.y, %i.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !915 ; 3 uses
  br i1 %i.z, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp eq ptr %.pre, null
  br i1 %i.aa, label %._crit_edge, label %._crit_edge22

._crit_edge22:                                    ; preds = %bb.h
  %.pre23 = and i64 %i.c, 2147483647
  br label %bb.k

._crit_edge:                                      ; preds = %bb.g, %bb.h
  %i.ab = phi ptr [ null, %bb.h ], [ %.pre, %bb.g ]
  %i.ac = and i64 %i.c, 2147483647                ; 2 uses
  %i.ad = call ptr @realloc(ptr noundef %i.ab, i64 noundef %i.ac) #30 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.af = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.af, align 8, !tbaa !315
  call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

bb.j:                                             ; preds = %._crit_edge
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !915
  store i32 %i.d, ptr %i.x, align 8, !tbaa !1645
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge22, %bb.j
  %.pre-phi = phi i64 [ %.pre23, %._crit_edge22 ], [ %i.ac, %bb.j ]
  %i.ah = phi ptr [ %.pre, %._crit_edge22 ], [ %i.ad, %bb.j ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !909
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.al = call noundef i32 @_ZN13duckdb_apache6thrift9transport7readAllIN6duckdb19ThriftFileTransportEEEjRT_Phj(ptr noundef nonnull align 8 dereferenceable(129) %i.aj, ptr noundef nonnull %i.ah, i32 noundef %i.d) ; 0 uses
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !915
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !405
  %i.ap = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.ao, ptr noundef %i.am, i64 noundef %.pre-phi) ; 0 uses
  %i.aq = add i32 %i.b, %i.d
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  %.011 = phi i32 [ %i.b, %bb.b ], [ %i.aq, %bb.k ]
  ret i32 %.011
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #18

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN13duckdb_apache6thrift8protocol17TCompactProtocolTIN6duckdb19ThriftFileTransportEE8getTTypeEa(ptr noundef nonnull align 8 dereferenceable(176) %0, i8 noundef signext %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1646 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = icmp ult i8 %1, 13
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 40) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.95, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %1)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN13duckdb_apache6thrift10TExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN13duckdb_apache6thrift10TExceptionE, ptr nonnull @_ZN13duckdb_apache6thrift10TExceptionD2Ev) #25
          to label %bb.i unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !262    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.e) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %3, align 8, !tbaa !262    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %3, align 8, !tbaa !262    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
end_hunk_0
