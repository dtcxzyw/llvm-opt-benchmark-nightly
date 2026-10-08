Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/map?download=true
inline.NumInlined: 1940
inline.NumDeleted: 1002
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3Map16getBlockNoCreateEN4core8vector3dIsEE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 40) #27 ; 3 uses
  invoke void @_ZN24InvalidPositionExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTI24InvalidPositionException, ptr nonnull @_ZN13BaseExceptionD2Ev) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #27
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  ret ptr %i.a
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN24InvalidPositionExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 62, ptr %i.b, align 8, !tbaa !65
  %i.d = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 3 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !117
  %i.e = load i64, ptr %i.b, align 8, !tbaa !65   ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(62) %i.d, ptr noundef nonnull align 1 dereferenceable(62) @.str.31, i64 62, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.e, ptr %i.f, align 8, !tbaa !118
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !115
  %i.j = load ptr, ptr %1, align 8, !tbaa !117    ; 2 uses
  %i.k = load i64, ptr %i.f, align 8, !tbaa !118  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.k, ptr %i.a, align 8, !tbaa !65
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc.i
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i2 unwind label %bb.c  ; 2 uses

.noexc.i2:                                        ; preds = %.noexc.i.i
  store ptr %i.m, ptr %i.h, align 8, !tbaa !117
  %i.n = load i64, ptr %i.a, align 8, !tbaa !65
  store i64 %i.n, ptr %i.i, align 8, !tbaa !103
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i2, %.noexc.i
  %i.o = phi ptr [ %i.m, %.noexc.i2 ], [ %i.i, %.noexc.i ] ; 2 uses
  switch i64 %i.k, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.a:                                             ; preds = %._crit_edge.i.i.i
  %i.p = load i8, ptr %i.j, align 1, !tbaa !103
  store i8 %i.p, ptr %i.o, align 1, !tbaa !103
  br label %_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.b:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.j, i64 %i.k, i1 false)
  br label %_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.c:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #29
  unreachable

_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.a, %bb.b
  %i.s = load i64, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.t, align 8, !tbaa !118
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !117
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.w = load ptr, ptr %1, align 8, !tbaa !117    ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.c
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.y = load i64, ptr %i.c, align 8, !tbaa !103
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV24InvalidPositionException, i64 16), ptr %0, align 8, !tbaa !26
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3Map15isValidPositionEN4core8vector3dIsEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(144) %0, i48 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.extract.trunc.i.i = trunc i48 %1 to i16 ; 2 uses
  %.sroa.2.0.extract.shift.i.i = lshr i48 %1, 16
  %.sroa.2.0.extract.trunc.i.i = trunc i48 %.sroa.2.0.extract.shift.i.i to i16 ; 2 uses
  %i.a = sext i16 %.sroa.0.0.extract.trunc.i.i to i32 ; 2 uses
  %i.b = add nsw i32 %i.a, -15
  %i.c = icmp slt i16 %.sroa.0.0.extract.trunc.i.i, 0
  %i.d = select i1 %i.c, i32 %i.b, i32 %i.a
  %i.e = sdiv i32 %i.d, 16
  %i.f = sext i16 %.sroa.2.0.extract.trunc.i.i to i32 ; 2 uses
  %i.g = add nsw i32 %i.f, -15
  %i.h = icmp slt i16 %.sroa.2.0.extract.trunc.i.i, 0
  %i.i = select i1 %i.h, i32 %i.g, i32 %i.f
  %i.j = sdiv i32 %i.i, 16
  %i.k = ashr i48 %1, 32
  %i.l = trunc nsw i48 %i.k to i32                ; 2 uses
  %i.m = add nsw i32 %i.l, -15
  %i.n = icmp slt i48 %1, 0
  %i.o = select i1 %i.n, i32 %i.m, i32 %i.l
  %i.p = sdiv i32 %i.o, 16
  %.mask.i.i = and i32 %i.p, 65535
  %.sroa.3.0.insert.ext.i.i = zext nneg i32 %.mask.i.i to i48
  %.sroa.3.0.insert.shift.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i, 32
  %i.q = shl nsw i32 %i.j, 16
  %.sroa.2.0.insert.shift.i.i = zext i32 %i.q to i48
  %.sroa.2.0.insert.insert.i.i = or disjoint i48 %.sroa.3.0.insert.shift.i.i, %.sroa.2.0.insert.shift.i.i
  %.mask5.i.i = and i32 %i.e, 65535
  %.sroa.0.0.insert.ext.i.i = zext nneg i32 %.mask5.i.i to i48
  %.sroa.0.0.insert.insert.i.i = or disjoint i48 %.sroa.2.0.insert.insert.i.i, %.sroa.0.0.insert.ext.i.i
  %i.r = tail call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i.i)
  %i.s = icmp ne ptr %i.r, null
  ret i1 %i.s
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(144) %0, i48 %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.024.0.extract.trunc = trunc i48 %1 to i16 ; 3 uses
  %.sroa.2.0.extract.shift = lshr i48 %1, 16
  %.sroa.2.0.extract.trunc = trunc i48 %.sroa.2.0.extract.shift to i16 ; 3 uses
  %i.a = sext i16 %.sroa.024.0.extract.trunc to i32 ; 2 uses
  %i.b = add nsw i32 %i.a, -15
  %i.c = icmp slt i16 %.sroa.024.0.extract.trunc, 0
  %i.d = select i1 %i.c, i32 %i.b, i32 %i.a
  %i.e = sdiv i32 %i.d, 16                        ; 2 uses
  %i.f = sext i16 %.sroa.2.0.extract.trunc to i32 ; 2 uses
  %i.g = add nsw i32 %i.f, -15
  %i.h = icmp slt i16 %.sroa.2.0.extract.trunc, 0
  %i.i = select i1 %i.h, i32 %i.g, i32 %i.f
  %i.j = sdiv i32 %i.i, 16                        ; 2 uses
  %i.k = ashr i48 %1, 32
  %i.l = trunc nsw i48 %i.k to i32                ; 2 uses
  %i.m = add nsw i32 %i.l, -15
  %i.n = icmp slt i48 %1, 0
  %i.o = select i1 %i.n, i32 %i.m, i32 %i.l
  %i.p = sdiv i32 %i.o, 16                        ; 2 uses
  %.mask.i.i = and i32 %i.p, 65535
  %.sroa.3.0.insert.ext.i.i = zext nneg i32 %.mask.i.i to i48
  %.sroa.3.0.insert.shift.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i, 32
  %i.q = shl nsw i32 %i.j, 16
  %.sroa.2.0.insert.shift.i.i = zext i32 %i.q to i48
  %.mask5.i.i = and i32 %i.e, 65535
  %.sroa.0.0.insert.ext.i.i = zext nneg i32 %.mask5.i.i to i48
  %i.r = or disjoint i48 %.sroa.3.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i48 %i.r, %.sroa.2.0.insert.shift.i.i
  %i.s = tail call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i.i) ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not13 = icmp eq ptr %2, null
  br i1 %.not13, label %bb.e, label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !153
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 36
  %i.x = load i8, ptr %i.w, align 4, !tbaa !154, !range !155, !noundef !82
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.3.0.extract.shift = lshr i48 %1, 32
  %.sroa.3.0.extract.trunc = trunc nuw i48 %.sroa.3.0.extract.shift to i16
  %.sroa.523.0.extract.trunc = trunc nsw i32 %i.p to i16
  %3 = shl nsw i16 %.sroa.523.0.extract.trunc, 4
  %4 = sub i16 %.sroa.3.0.extract.trunc, %3
  %.sroa.422.0.extract.trunc = trunc nsw i32 %i.j to i16
  %i.z = shl nsw i16 %.sroa.422.0.extract.trunc, 4
  %i.aa = sub i16 %.sroa.2.0.extract.trunc, %i.z
  %.sroa.021.0.extract.trunc = trunc nsw i32 %i.e to i16
  %i.ab = shl nsw i16 %.sroa.021.0.extract.trunc, 4
  %i.ac = sub i16 %.sroa.024.0.extract.trunc, %i.ab
  %.sroa.2.0.extract.trunc.i = zext i16 %i.aa to i64
  %5 = sext i16 %4 to i64
  %i.ad = shl nsw i64 %5, 8
  %sext2.i = shl nuw i64 %.sroa.2.0.extract.trunc.i, 48
  %i.ae = ashr exact i64 %sext2.i, 44
  %i.af = sext i16 %i.ac to i64
  %i.ag = add nsw i64 %i.ad, %i.af
  %i.ah = add nsw i64 %i.ag, %i.ae
  %i.ai = and i64 %i.ah, 4294967295
  br label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit

_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit: ; preds = %bb.c, %bb.d
  %i.aj = phi i64 [ %i.ai, %bb.d ], [ 0, %bb.c ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aj
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ak, align 4 ; 4 uses
  %.sroa.326.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i.i, 16 ; 2 uses
  %.sroa.427.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i.i, 24 ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.e, label %.sink.split

.sink.split:                                      ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit, %bb.b
  %.sink = phi i8 [ 0, %bb.b ], [ 1, %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit ]
  %.sroa.025.0.ph = phi i32 [ 127, %bb.b ], [ %.sroa.0.0.copyload.i.i, %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit ]
  %.sroa.326.0.ph = phi i32 [ 0, %bb.b ], [ %.sroa.326.0.extract.shift, %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit ]
  %.sroa.427.0.ph = phi i32 [ 0, %bb.b ], [ %.sroa.427.0.extract.shift, %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit ]
  store i8 %.sink, ptr %2, align 1, !tbaa !156
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.b, %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit
  %.sroa.025.0 = phi i32 [ 127, %bb.b ], [ %.sroa.0.0.copyload.i.i, %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit ], [ %.sroa.025.0.ph, %.sink.split ]
  %.sroa.326.0 = phi i32 [ 0, %bb.b ], [ %.sroa.326.0.extract.shift, %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit ], [ %.sroa.326.0.ph, %.sink.split ]
  %.sroa.427.0 = phi i32 [ 0, %bb.b ], [ %.sroa.427.0.extract.shift, %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit ], [ %.sroa.427.0.ph, %.sink.split ]
  %.sroa.427.0.insert.shift = shl nuw i32 %.sroa.427.0, 24
  %.sroa.326.0.insert.ext = shl nuw i32 %.sroa.326.0, 16
  %.sroa.326.0.insert.shift = and i32 %.sroa.326.0.insert.ext, 16711680
  %.sroa.326.0.insert.insert = or disjoint i32 %.sroa.427.0.insert.shift, %.sroa.326.0.insert.shift
  %.sroa.025.0.insert.ext = and i32 %.sroa.025.0, 65535
  %.sroa.025.0.insert.insert = or disjoint i32 %.sroa.326.0.insert.insert, %.sroa.025.0.insert.ext
  ret i32 %.sroa.025.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3Map7setNodeEN4core8vector3dIsEE7MapNode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(144) %0, i48 %1, i32 %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.019.0.extract.trunc = trunc i48 %1 to i16 ; 3 uses
  %.sroa.2.0.extract.shift = lshr i48 %1, 16
  %.sroa.2.0.extract.trunc = trunc i48 %.sroa.2.0.extract.shift to i16 ; 3 uses
  %i.a = sext i16 %.sroa.019.0.extract.trunc to i32 ; 2 uses
  %i.b = add nsw i32 %i.a, -15
  %i.c = icmp slt i16 %.sroa.019.0.extract.trunc, 0
  %i.d = select i1 %i.c, i32 %i.b, i32 %i.a
  %i.e = sdiv i32 %i.d, 16                        ; 2 uses
  %i.f = sext i16 %.sroa.2.0.extract.trunc to i32 ; 2 uses
  %i.g = add nsw i32 %i.f, -15
  %i.h = icmp slt i16 %.sroa.2.0.extract.trunc, 0
  %i.i = select i1 %i.h, i32 %i.g, i32 %i.f
  %i.j = sdiv i32 %i.i, 16                        ; 2 uses
  %i.k = ashr i48 %1, 32
  %i.l = trunc nsw i48 %i.k to i32                ; 2 uses
  %i.m = add nsw i32 %i.l, -15
  %i.n = icmp slt i48 %1, 0
  %i.o = select i1 %i.n, i32 %i.m, i32 %i.l
  %i.p = sdiv i32 %i.o, 16                        ; 2 uses
  %.mask.i.i = and i32 %i.p, 65535
  %.sroa.3.0.insert.ext.i.i = zext nneg i32 %.mask.i.i to i48
  %.sroa.3.0.insert.shift.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i, 32
  %i.q = shl nsw i32 %i.j, 16
  %.sroa.2.0.insert.shift.i.i = zext i32 %i.q to i48
  %.mask5.i.i = and i32 %i.e, 65535
  %.sroa.0.0.insert.ext.i.i = zext nneg i32 %.mask5.i.i to i48
  %i.r = or disjoint i48 %.sroa.3.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i48 %i.r, %.sroa.2.0.insert.shift.i.i
  %i.s = tail call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i.i) ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.b, label %_ZN3Map16getBlockNoCreateEN4core8vector3dIsEE.exit

bb.b:                                             ; preds = %bb.a
  %i.u = tail call ptr @__cxa_allocate_exception(i64 40) #27 ; 3 uses
  invoke void @_ZN24InvalidPositionExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.u)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTI24InvalidPositionException, ptr nonnull @_ZN13BaseExceptionD2Ev) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.u) #27
  resume { ptr, i32 } %i.v

_ZN3Map16getBlockNoCreateEN4core8vector3dIsEE.exit: ; preds = %bb.a
  %.sroa.518.0.extract.trunc = trunc nsw i32 %i.p to i16
  %.sroa.417.0.extract.trunc = trunc nsw i32 %i.j to i16
  %.sroa.016.0.extract.trunc = trunc nsw i32 %i.e to i16
  %.sroa.3.0.extract.shift = lshr i48 %1, 32
  %.sroa.3.0.extract.trunc = trunc nuw i48 %.sroa.3.0.extract.shift to i16
  %i.w = shl nsw i16 %.sroa.016.0.extract.trunc, 4
  %i.x = shl nsw i16 %.sroa.417.0.extract.trunc, 4
  %i.y = shl nsw i16 %.sroa.518.0.extract.trunc, 4
  %i.z = sub i16 %.sroa.019.0.extract.trunc, %i.w
  %i.aa = sub i16 %.sroa.2.0.extract.trunc, %i.x
  %i.ab = sub i16 %.sroa.3.0.extract.trunc, %i.y
  %.sroa.3.0.insert.ext.i9 = zext i16 %i.ab to i48
  %.sroa.3.0.insert.shift.i10 = shl nuw i48 %.sroa.3.0.insert.ext.i9, 32
  %.sroa.2.0.insert.ext.i11 = zext i16 %i.aa to i48
  %.sroa.2.0.insert.shift.i12 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i11, 16
  %.sroa.2.0.insert.insert.i13 = or disjoint i48 %.sroa.2.0.insert.shift.i12, %.sroa.3.0.insert.shift.i10
  %.sroa.0.0.insert.ext.i14 = zext i16 %i.z to i48
  %.sroa.0.0.insert.insert.i15 = or disjoint i48 %.sroa.2.0.insert.insert.i13, %.sroa.0.0.insert.ext.i14
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !52 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad), !inline_history !0
  tail call fastcc void @_ZL17set_node_in_blockPK14NodeDefManagerP8MapBlockN4core8vector3dIsEE7MapNode(ptr noundef %i.ah, ptr noundef %i.s, i48 %.sroa.0.0.insert.insert.i15, i32 %2)
  ret void
}

; Function Attrs: uwtable
define internal fastcc void @_ZL17set_node_in_blockPK14NodeDefManagerP8MapBlockN4core8vector3dIsEE7MapNode(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1, i48 %2, i32 %3) unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.core::vector3d", align 8    ; 4 uses
  %5 = alloca %"class.core::vector3d", align 8    ; 4 uses
  %i.f = and i32 %3, 65535
  %i.g = icmp eq i32 %i.f, 127
  %.sroa.431.0.extract.shift = lshr i48 %2, 16    ; 3 uses
  br i1 %i.g, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %.sroa.027.0.extract.trunc = trunc i48 %2 to i16
  %.sroa.431.0.extract.trunc = trunc i48 %.sroa.431.0.extract.shift to i16
  %.sroa.533.0.extract.shift = lshr i48 %2, 32
  %.sroa.536.0.extract.trunc = trunc nuw i48 %.sroa.533.0.extract.shift to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.sroa.0.0.copyload.i = load i48, ptr %i.h, align 2, !tbaa !113 ; 4 uses
  store i48 %.sroa.0.0.copyload.i, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.i = trunc i48 %.sroa.0.0.copyload.i to i16
  %i.j = shl i16 %i.i, 4
  %sh.diff = lshr i48 %.sroa.0.0.copyload.i, 12
  %tr.sh.diff = trunc i48 %sh.diff to i16
  %i.k = and i16 %tr.sh.diff, -16
  %sh.diff47 = lshr i48 %.sroa.0.0.copyload.i, 28
  %tr.sh.diff48 = trunc i48 %sh.diff47 to i16
  %i.l = and i16 %tr.sh.diff48, -16
  %i.m = add i16 %i.j, %.sroa.027.0.extract.trunc
  %i.n = add i16 %i.k, %.sroa.431.0.extract.trunc
  %i.o = add i16 %i.l, %.sroa.536.0.extract.trunc
  %.sroa.3.0.insert.ext.i7 = zext i16 %i.o to i48
  %.sroa.3.0.insert.shift.i8 = shl nuw i48 %.sroa.3.0.insert.ext.i7, 32
  %.sroa.2.0.insert.ext.i9 = zext i16 %i.n to i48
  %.sroa.2.0.insert.shift.i10 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i9, 16
  %.sroa.2.0.insert.insert.i11 = or disjoint i48 %.sroa.3.0.insert.shift.i8, %.sroa.2.0.insert.shift.i10
  %.sroa.0.0.insert.ext.i12 = zext i16 %i.m to i48
  %.sroa.0.0.insert.insert.i13 = or disjoint i48 %.sroa.2.0.insert.insert.i11, %.sroa.0.0.insert.ext.i12
  store i48 %.sroa.0.0.insert.insert.i13, ptr %5, align 8
  %.not.i = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i, label %_ZTW11errorstream.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit

_ZTW11errorstream.exit:                           ; preds = %bb.b, %bb.c
  %i.p = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !81, !nonnull !82, !align !83 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.q), !inline_history !5
  %.v.i = select i1 %i.t, i64 976, i64 984
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %.v.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @.str.32, ptr %i.e, align 8, !tbaa !157
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.33, ptr %i.d, align 8, !tbaa !157
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !153
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !154, !range !155, !noundef !82
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit, label %bb.d

bb.d:                                             ; preds = %_ZTW11errorstream.exit
  %.sroa.3.0.extract.trunc.i = zext nneg i48 %.sroa.431.0.extract.shift to i64
  %.sroa.2.0.extract.trunc.i = zext i48 %2 to i64
  %6 = ashr i48 %2, 32
  %7 = sext i48 %6 to i64
  %8 = shl nsw i64 %7, 8
  %sext2.i.a = shl i64 %.sroa.3.0.extract.trunc.i, 48
  %i.ac = ashr exact i64 %sext2.i.a, 44
  %sext3.i.a = shl i64 %.sroa.2.0.extract.trunc.i, 48
  %i.ad = ashr exact i64 %sext3.i.a, 48
  %i.ae = add nsw i64 %8, %i.ad
  %i.af = add nsw i64 %i.ae, %i.ac
  %i.ag = and i64 %i.af, 4294967295
  br label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit

_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit: ; preds = %_ZTW11errorstream.exit, %bb.d
  %i.ah = phi i64 [ %i.ag, %bb.d ], [ 0, %_ZTW11errorstream.exit ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ah
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ai, align 4
  %i.aj = and i32 %.sroa.0.0.copyload.i.i, 65535
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !250
  %i.an = load ptr, ptr %0, align 8, !tbaa !251   ; 3 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 2072
  %i.as = icmp ugt i64 %i.ar, %i.ak
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit
  %i.at = getelementptr inbounds nuw [2072 x i8], ptr %i.an, i64 %i.ak ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !118
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.f, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.f:                                             ; preds = %bb.e, %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.e, %bb.f
  %i.ay = phi ptr [ %i.ax, %bb.f ], [ %i.at, %bb.e ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !158 ; 5 uses
  %.not.i14 = icmp eq ptr %i.ba, null
  br i1 %.not.i14, label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !26
  %i.bc = getelementptr i8, ptr %i.bb, i64 -24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds i8, ptr %i.ba, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !159
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
  %.pre.i = load ptr, ptr %i.w, align 8, !tbaa !158
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bi = phi ptr [ %.pre.i, %bb.h ], [ %i.ba, %bb.g ]
  %i.bj = load ptr, ptr %i.az, align 8, !tbaa !117
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !118
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef %i.bj, i64 noundef %i.bl) ; 0 uses
  br label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit

_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit: ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.34, ptr %i.c, align 8, !tbaa !157
  %i.bn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRN4core8vector3dIsEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull align 2 dereferenceable(6) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.35, ptr %i.b, align 8, !tbaa !157
  %i.bp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRN4core8vector3dIsEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull align 2 dereferenceable(6) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.36, ptr %i.a, align 8, !tbaa !157
  %i.br = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !158 ; 5 uses
  %.not.i15 = icmp eq ptr %i.bs, null
  br i1 %.not.i15, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.j

bb.j:                                             ; preds = %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !26
  %i.bu = getelementptr i8, ptr %i.bt, i64 -24
  %i.bv = load i64, ptr %i.bu, align 8            ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bs, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !159
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.bs)
  %.pre.i16 = load ptr, ptr %i.br, align 8, !tbaa !158 ; 2 uses
  %.pre = load ptr, ptr %.pre.i16, align 8, !tbaa !26
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre41 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ca = phi i64 [ %.pre41, %bb.k ], [ %i.bv, %bb.j ]
  %i.cb = phi ptr [ %.pre.i16, %bb.k ], [ %i.bs, %bb.j ] ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 %i.ca
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 240
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !96 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i, label %bb.m, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZSt16__throw_bad_castv() #30
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !102
  %.not.i1.i.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i1.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 67
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !103
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ce)
  %i.cj = load ptr, ptr %i.ce, align 8, !tbaa !26
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = call noundef signext i8 %i.cl(ptr noundef nonnull align 8 dereferenceable(570) %i.ce, i8 noundef signext 10), !inline_history !6
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.n, %bb.o
  %.0.i.i.i = phi i8 [ %i.ci, %bb.n ], [ %i.cm, %bb.o ]
  %i.cn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, i8 noundef signext %.0.i.i.i)
  %i.co = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cn) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit

bb.p:                                             ; preds = %bb.a
  %.sroa.02.0.extract.trunc.i = zext i48 %2 to i64
  %.sroa.2.0.extract.trunc.i18 = zext nneg i48 %.sroa.431.0.extract.shift to i64
  tail call void @_ZN8MapBlock19expandNodesIfNeededEv(ptr noundef nonnull align 8 dereferenceable(328) %1)
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !153
  %9 = ashr i48 %2, 32
  %10 = sext i48 %9 to i64
  %11 = shl nsw i64 %10, 8
  %sext3.i22 = shl i64 %.sroa.2.0.extract.trunc.i18, 48
  %i.cr = ashr exact i64 %sext3.i22, 44
  %sext4.i = shl i64 %.sroa.02.0.extract.trunc.i, 48
  %i.cs = ashr exact i64 %sext4.i, 48
  %i.ct = add nsw i64 %11, %i.cs
  %i.cu = add nsw i64 %i.ct, %i.cr
  %i.cv = and i64 %i.cu, 4294967295
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cv
  store i32 %3, ptr %i.cw, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 66 ; 2 uses
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !160 ; 2 uses
  %i.cz = icmp ult i16 %i.cy, 4
  br i1 %i.cz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i16 4, ptr %i.cx, align 2, !tbaa !160
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 68
  store i32 16, ptr %i.da, align 4, !tbaa !161
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !162
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !163
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.de = icmp eq i16 %i.cy, 4
  br i1 %i.de, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !161
  %i.dh = or i32 %i.dg, 16
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !161
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !164 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !165
  %.not.i.i.i.i.i = icmp eq ptr %i.dl, %i.dj
  br i1 %.not.i.i.i.i.i, label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i:  ; preds = %bb.t
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !165
  br label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit

_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit: ; preds = %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i, %bb.t, %_ZN11StreamProxylsEPFRSoS0_E.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3Map16addNodeAndUpdateEN4core8vector3dIsEE7MapNodeRSt3mapIS2_P8MapBlockSt4lessIS2_ESaISt4pairIKS2_S6_EEEb(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::tuple.338", align 8    ; 4 uses
  %6 = alloca %"class.std::tuple.341", align 1    ; 3 uses
  %7 = alloca %struct.RollbackNode, align 8       ; 12 uses
  %8 = alloca %"class.core::vector3d", align 8    ; 8 uses
  %9 = alloca %"class.std::vector.134", align 8   ; 10 uses
  %10 = alloca %struct.RollbackNode, align 8      ; 11 uses
  %11 = alloca %struct.RollbackAction, align 8    ; 50 uses
  %.sroa.0143.0.extract.trunc = trunc i48 %1 to i16 ; 4 uses
  %.sroa.8.0.extract.shift = lshr i48 %1, 16
  %.sroa.8.0.extract.trunc = trunc i48 %.sroa.8.0.extract.shift to i16 ; 4 uses
  %.sroa.9168.0.extract.shift = lshr i48 %1, 32
  %.sroa.9168.0.extract.trunc = trunc nuw i48 %.sroa.9168.0.extract.shift to i16 ; 2 uses
  %.sroa.0125.0.extract.trunc = trunc i32 %2 to i16 ; 2 uses
  %.sroa.6131.0.extract.shift = lshr i32 %2, 16   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  call void @_ZN12RollbackNodeC1EP3MapN4core8vector3dIsEEP8IGameDef(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull %0, i48 %1, ptr noundef %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.c = sext i16 %.sroa.0143.0.extract.trunc to i32 ; 2 uses
  %i.d = add nsw i32 %i.c, -15
  %i.e = icmp slt i16 %.sroa.0143.0.extract.trunc, 0
  %i.f = select i1 %i.e, i32 %i.d, i32 %i.c
  %i.g = sdiv i32 %i.f, 16                        ; 2 uses
  %i.h = sext i16 %.sroa.8.0.extract.trunc to i32 ; 2 uses
  %i.i = add nsw i32 %i.h, -15
  %i.j = icmp slt i16 %.sroa.8.0.extract.trunc, 0
  %i.k = select i1 %i.j, i32 %i.i, i32 %i.h
  %i.l = sdiv i32 %i.k, 16                        ; 2 uses
  %i.m = ashr i48 %1, 32
  %i.n = trunc nsw i48 %i.m to i32                ; 2 uses
  %i.o = add nsw i32 %i.n, -15
  %i.p = icmp slt i48 %1, 0
  %i.q = select i1 %i.p, i32 %i.o, i32 %i.n
  %i.r = sdiv i32 %i.q, 16                        ; 2 uses
  %.mask.i.i = and i32 %i.r, 65535
  %.sroa.3.0.insert.ext.i.i = zext nneg i32 %.mask.i.i to i48
  %.sroa.3.0.insert.shift.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i, 32
  %i.s = shl nsw i32 %i.l, 16
  %.sroa.2.0.insert.shift.i.i = zext i32 %i.s to i48
  %.mask5.i.i = and i32 %i.g, 65535
  %.sroa.0.0.insert.ext.i.i = zext nneg i32 %.mask5.i.i to i48
  %i.t = or disjoint i48 %.sroa.3.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i48 %i.t, %.sroa.2.0.insert.shift.i.i ; 2 uses
  store i48 %.sroa.0.0.insert.insert.i.i, ptr %8, align 8
  %i.u = trunc nsw i32 %i.g to i16
  %i.v = trunc nsw i32 %i.l to i16
  %i.w = trunc nsw i32 %i.r to i16
  %i.x = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i.i)
          to label %.noexc unwind label %bb.i     ; 7 uses

.noexc:                                           ; preds = %bb.a
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.noexc
  %i.z = call ptr @__cxa_allocate_exception(i64 40) #27 ; 3 uses
  invoke void @_ZN24InvalidPositionExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.z)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTI24InvalidPositionException, ptr nonnull @_ZN13BaseExceptionD2Ev) #30
          to label %.noexc55 unwind label %bb.i

.noexc55:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.z) #27
  br label %.body

bb.e:                                             ; preds = %.noexc
  %i.ab = shl nsw i16 %i.u, 4
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 2
  %i.ad = shl nsw i16 %i.v, 4
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.af = shl nsw i16 %i.w, 4
  %i.ag = sub i16 %.sroa.0143.0.extract.trunc, %i.ab ; 2 uses
  %i.ah = sub i16 %.sroa.8.0.extract.trunc, %i.ad ; 2 uses
  %i.ai = sub i16 %.sroa.9168.0.extract.trunc, %i.af ; 2 uses
  %.sroa.3.0.insert.ext.i56 = zext i16 %i.ai to i48
  %.sroa.3.0.insert.shift.i57 = shl nuw i48 %.sroa.3.0.insert.ext.i56, 32
  %.sroa.2.0.insert.ext.i58 = zext i16 %i.ah to i48
  %.sroa.2.0.insert.shift.i59 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i58, 16
  %.sroa.0.0.insert.ext.i61 = zext i16 %i.ag to i48
  %i.aj = or disjoint i48 %.sroa.3.0.insert.shift.i57, %.sroa.2.0.insert.shift.i59
  %.sroa.0.0.insert.insert.i62 = or disjoint i48 %i.aj, %.sroa.0.0.insert.ext.i61 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !153
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 36
  %i.an = load i8, ptr %i.am, align 4, !tbaa !154, !range !155, !noundef !82
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.2.0.extract.trunc.i = zext i16 %i.ah to i64
  %12 = sext i16 %i.ai to i64
  %13 = shl nsw i64 %12, 8
  %sext2.i = shl nuw i64 %.sroa.2.0.extract.trunc.i, 48
  %i.ap = ashr exact i64 %sext2.i, 44
  %i.aq = sext i16 %i.ag to i64
  %i.ar = add nsw i64 %13, %i.aq
  %i.as = add nsw i64 %i.ar, %i.ap
  %i.at = and i64 %i.as, 4294967295
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.au = phi i64 [ %i.at, %bb.f ], [ 0, %bb.e ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.au
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.av, align 4 ; 4 uses
  %.sroa.0105.0.extract.trunc = trunc i32 %.sroa.0.0.copyload.i.i to i16 ; 2 uses
  %.sroa.9.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i.i, 16 ; 2 uses
  br i1 %4, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN3Map18removeNodeMetadataEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %1)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.c, %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.h
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !61
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 312 ; 2 uses
  %.sroa.0125.0.extract.trunc.mask = and i32 %2, 65535
  %i.bb = zext nneg i32 %.sroa.0125.0.extract.trunc.mask to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bb
  %.sroa.0.0.copyload.i.i63 = load i8, ptr %i.bc, align 1, !tbaa !103 ; 3 uses
  %.sroa.0105.0.extract.trunc.mask = and i32 %.sroa.0.0.copyload.i.i, 65535
  %i.bd = zext nneg i32 %.sroa.0105.0.extract.trunc.mask to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bd
  %.sroa.0.0.copyload.i.i64 = load i8, ptr %i.be, align 1, !tbaa !103 ; 2 uses
  %i.bf = xor i8 %.sroa.0.0.copyload.i.i64, %.sroa.0.0.copyload.i.i63
  %i.bg = and i8 %i.bf, 127
  %i.bh = icmp eq i8 %i.bg, 0
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !52  ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !26
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  br i1 %i.bh, label %_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit, label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit76

_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit: ; preds = %bb.k
  %i.bm = invoke noundef ptr %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bi)
          to label %_ZN8IGameDef4ndefEv.exit unwind label %bb.v, !inline_history !0

_ZN8IGameDef4ndefEv.exit:                         ; preds = %_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit
  %i.bn = and i8 %.sroa.0.0.copyload.i.i63, 16
  %.not.i65 = icmp eq i8 %i.bn, 0                 ; 2 uses
  %i.bo = and i8 %.sroa.0.0.copyload.i.i64, 16
  %.not.i = icmp eq i8 %i.bo, 0                   ; 2 uses
  %spec.select = select i1 %.not.i, i32 0, i32 %.sroa.9.0.extract.shift
  %.sroa.6131.0 = select i1 %.not.i65, i32 %.sroa.6131.0.extract.shift, i32 %spec.select
  %i.bp = and i32 %.sroa.6131.0, 15
  %i.bq = and i32 %.sroa.9.0.extract.shift, 240
  %.0.i67 = select i1 %.not.i, i32 0, i32 %i.bq
  %i.br = or disjoint i32 %i.bp, %.0.i67
  %i.bs = and i32 %.sroa.6131.0.extract.shift, 255
  %.sroa.6131.0.insert.ext132 = select i1 %.not.i65, i32 %i.bs, i32 %i.br
  %.sroa.6131.0.insert.shift133 = shl nuw nsw i32 %.sroa.6131.0.insert.ext132, 16
  %i.bt = and i32 %2, -16711681
  %.sroa.0125.0.insert.insert130 = or disjoint i32 %.sroa.6131.0.insert.shift133, %i.bt
  invoke fastcc void @_ZL17set_node_in_blockPK14NodeDefManagerP8MapBlockN4core8vector3dIsEE7MapNode(ptr noundef %i.bm, ptr noundef %i.x, i48 %.sroa.0.0.insert.insert.i62, i32 %.sroa.0125.0.insert.insert130)
          to label %bb.l unwind label %bb.v

bb.l:                                             ; preds = %_ZN8IGameDef4ndefEv.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !54 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.not12.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not12.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.l
  %i.bx = load i16, ptr %8, align 8, !tbaa !166   ; 4 uses
  %i.by = load i16, ptr %i.ac, align 2            ; 4 uses
  %i.bz = load i16, ptr %i.ae, align 4            ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i, %.lr.ph.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !166 ; 2 uses
  %i.cc = icmp slt i16 %i.cb, %i.bx
  br i1 %i.cc, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = icmp eq i16 %i.cb, %i.bx
  br i1 %i.cd, label %bb.o, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 34
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !167 ; 2 uses
  %i.cg = icmp slt i16 %i.cf, %i.by
  br i1 %i.cg, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ch = icmp eq i16 %i.cf, %i.by
  br i1 %i.ch, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i: ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !168
  %i.ck = icmp slt i16 %i.cj, %i.bz
  br i1 %i.ck, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, %bb.o, %bb.m
  br label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, %bb.p, %bb.n
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i ], [ 16, %bb.p ], [ 16, %bb.n ], [ 16, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.p ], [ %.014.i.i.i.i, %bb.n ], [ %.014.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i ] ; 12 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.cl, align 8, !tbaa !104 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, label %bb.m, !llvm.loop !7

_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i
  %i.cm = icmp eq ptr %.19.i.i.i.i, %i.bw
  br i1 %i.cm, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !166 ; 2 uses
  %i.cp = icmp slt i16 %i.bx, %i.co
  br i1 %i.cp, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cq = icmp eq i16 %i.bx, %i.co
  br i1 %i.cq, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cr = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 34
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !167 ; 2 uses
  %i.ct = icmp slt i16 %i.by, %i.cs
  br i1 %i.ct, label %.critedge.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cu = icmp eq i16 %i.by, %i.cs
  br i1 %i.cu, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i, label %bb.u

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i: ; preds = %bb.t
  %i.cv = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !168
  %i.cx = icmp slt i16 %i.bz, %i.cw
  br i1 %i.cx, label %.critedge.i, label %bb.u

.critedge.i:                                      ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i, %bb.s, %bb.q, %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, %bb.l
  %.08.lcssa.i.i.i11.i = phi ptr [ %i.bw, %bb.l ], [ %.19.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i ], [ %.19.i.i.i.i, %bb.s ], [ %.19.i.i.i.i, %bb.q ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %8, ptr %5, align 8, !tbaa !170
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.cy = invoke ptr @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc72 unwind label %bb.v

.noexc72:                                         ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.u

bb.u:                                             ; preds = %.noexc72, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i, %bb.t, %bb.r
  %.sroa.06.0.i = phi ptr [ %i.cy, %.noexc72 ], [ %.19.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i ], [ %.19.i.i.i.i, %bb.r ], [ %.19.i.i.i.i, %bb.t ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  store ptr %i.x, ptr %i.cz, align 8, !tbaa !172
  br label %bb.aa

bb.v:                                             ; preds = %bb.ad, %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit76, %.critedge.i, %_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit, %bb.ac, %_ZN8IGameDef4ndefEv.exit78, %_ZN8IGameDef4ndefEv.exit
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit76: ; preds = %bb.k
  %i.db = invoke noundef ptr %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bi)
          to label %_ZN8IGameDef4ndefEv.exit78 unwind label %bb.v, !inline_history !0

_ZN8IGameDef4ndefEv.exit78:                       ; preds = %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit76
  %i.dc = and i8 %.sroa.0.0.copyload.i.i63, 16
  %.not.i73 = icmp eq i8 %i.dc, 0
  %i.dd = and i32 %2, 16711680
  %.sroa.6131.0.insert.shift = select i1 %.not.i73, i32 %i.dd, i32 0
  %i.de = and i32 %2, -16711681
  %.sroa.0125.0.insert.insert = or disjoint i32 %.sroa.6131.0.insert.shift, %i.de
  invoke fastcc void @_ZL17set_node_in_blockPK14NodeDefManagerP8MapBlockN4core8vector3dIsEE7MapNode(ptr noundef %i.db, ptr noundef %i.x, i48 %.sroa.0.0.insert.insert.i62, i32 %.sroa.0125.0.insert.insert)
          to label %_ZNKSt6vectorISt4pairIN4core8vector3dIsEE7MapNodeESaIS5_EE12_M_check_lenEmPKc.exit.i.i unwind label %bb.v

_ZNKSt6vectorISt4pairIN4core8vector3dIsEE7MapNodeESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %_ZN8IGameDef4ndefEv.exit78
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.dg = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #32
          to label %.noexc81 unwind label %bb.y   ; 6 uses

.noexc81:                                         ; preds = %_ZNKSt6vectorISt4pairIN4core8vector3dIsEE7MapNodeESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i16 %.sroa.0143.0.extract.trunc, ptr %i.dg, align 4, !tbaa !113
  %.sroa.8.0..sroa_idx166 = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
end_hunk_0
