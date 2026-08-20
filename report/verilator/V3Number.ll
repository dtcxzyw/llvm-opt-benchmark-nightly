inline.NumInlined: 2597
inline.NumDeleted: 451
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN8V3Number9setDoubleEd:bb.a
  %i.o = phi i32 [ 64, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ] ; 3 uses
  %i.p = icmp slt i32 %i.o, 129
  %i.q = add i8 %i.n, -1
  %spec.select.i.i = icmp ult i8 %i.q, 2
  %i.r = select i1 %i.p, i1 %spec.select.i.i, i1 false
  br i1 %i.r, label %bb.e, label %_ZN12V3NumberData18destroyStoredValueEv.exit.i.thread

_ZN12V3NumberData18destroyStoredValueEv.exit.i.thread: ; preds = %bb.d, %_ZN12V3NumberData18destroyStoredValueEv.exit.i
  %i.s = phi i32 [ %i.o, %_ZN12V3NumberData18destroyStoredValueEv.exit.i ], [ 64, %bb.d ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 32, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_ZN12V3NumberData18destroyStoredValueEv.exit.i.thread, %_ZN12V3NumberData18destroyStoredValueEv.exit.i
  %i.t = phi i32 [ %i.s, %_ZN12V3NumberData18destroyStoredValueEv.exit.i.thread ], [ %i.o, %_ZN12V3NumberData18destroyStoredValueEv.exit.i ]
  store i8 2, ptr %i.f, align 4, !tbaa !42
  %i.u = icmp eq i32 %i.t, 64
  br i1 %i.u, label %_ZN12V3NumberData3numEv.exit8, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.e
  store i32 64, ptr %i.a, align 8, !tbaa !41
  br label %_ZN12V3NumberData3numEv.exit8

_ZN12V3NumberData3numEv.exit8:                    ; preds = %bb.e, %.sink.split.i.i
  %i.v = bitcast double %1 to i64                 ; 2 uses
  %.sroa.03.0.extract.trunc = trunc i64 %i.v to i32
  store i32 %.sroa.03.0.extract.trunc, ptr %0, align 8, !tbaa !44
  %.sroa.03.4.extract.shift = lshr i64 %i.v, 32
  %.sroa.03.4.extract.trunc = trunc nuw i64 %.sroa.03.4.extract.shift to i32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.03.4.extract.trunc, ptr %i.w, align 8, !tbaa !44
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7AstNode8isStringEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(162) %i.b)
  %.not1 = icmp eq ptr %i.f, null
  br i1 %.not1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !77   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 352
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(162) %i.g)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 164
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.l, align 4, !tbaa !79
  %i.m = icmp eq i8 %.sroa.0.0.copyload.i.i, 13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.n = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.m, %bb.c ]
  ret i1 %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK12AstNodeDType5widthEv(ptr noundef nonnull align 8 dereferenceable(162) %0) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load i32, ptr %i.a, align 8, !tbaa !85
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12AstNodeDType10widthSizedEv(ptr noundef nonnull align 8 dereferenceable(162) %0) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.b = load i32, ptr %i.a, align 4, !tbaa !89   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.b, %i.d
  %i.f = select i1 %.not, i1 true, i1 %i.e
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8V3Number6createEPKc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %3 = alloca %class.V3Number, align 8            ; 18 uses
  %4 = alloca %class.V3Number, align 8            ; 11 uses
  %5 = alloca %class.V3Number, align 8            ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 39 uses
  %i.h = load i8, ptr %i.g, align 4, !tbaa !42    ; 2 uses
  %i.i = icmp eq i8 %i.h, 3
  br i1 %i.i, label %bb.b, label %_ZN12V3NumberData13destroyStringEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN12V3NumberData13destroyStringEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8, !tbaa !23
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #31
  %.pre.i = load i8, ptr %i.g, align 4, !tbaa !42
  br label %_ZN12V3NumberData13destroyStringEv.exit.i

_ZN12V3NumberData13destroyStringEv.exit.i:        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.a
  %i.o = phi i8 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.h, %bb.a ]
  %i.p = add i8 %i.o, -1
  %spec.select.i.i = icmp ult i8 %i.p, 2
  br i1 %spec.select.i.i, label %_ZN12V3NumberData13destroyStringEv.exit._crit_edge.i, label %_ZN12V3NumberData13destroyStringEv.exit.thread.i

_ZN12V3NumberData13destroyStringEv.exit._crit_edge.i: ; preds = %_ZN12V3NumberData13destroyStringEv.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre1.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !41
  br label %_ZN12V3NumberData8setLogicEv.exit

_ZN12V3NumberData13destroyStringEv.exit.thread.i: ; preds = %bb.b, %_ZN12V3NumberData13destroyStringEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !41   ; 4 uses
  %i.s = icmp slt i32 %i.r, 129
  br i1 %i.s, label %bb.c, label %vector.ph

bb.c:                                             ; preds = %_ZN12V3NumberData13destroyStringEv.exit.thread.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 32, i1 false)
  br label %_ZN12V3NumberData8setLogicEv.exit

vector.ph:                                        ; preds = %_ZN12V3NumberData13destroyStringEv.exit.thread.i
  %i.t = add nuw nsw i32 %i.r, 31
  %i.u = lshr i32 %i.t, 5
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %i.w = shl nuw nsw i64 %i.v, 3                  ; 3 uses
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #33 ; 7 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !57
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !60
  store i64 0, ptr %i.x, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.x, i64 %i.w    ; 2 uses
  %i.ac = add nsw i64 %i.w, -16
  %i.ad = lshr exact i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %n.vec = and i64 %i.ae, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3
  %i.ag = getelementptr i8, ptr %i.aa, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.ah ; 2 uses
  %i.ai = load i64, ptr %i.x, align 4
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ai, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 4
  store <2 x i64> %broadcast.splat, ptr %i.aj, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %middle.block, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ag, %middle.block ] ; 2 uses
  %i.al = load i64, ptr %i.x, align 4
  store i64 %i.al, ptr %.06.i.i.i.i.i.i.i.i.i.i.i, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.am, %i.ab
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !91

_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %middle.block
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.an, align 8, !tbaa !65
  br label %_ZN12V3NumberData8setLogicEv.exit

_ZN12V3NumberData8setLogicEv.exit:                ; preds = %_ZN12V3NumberData13destroyStringEv.exit._crit_edge.i, %bb.c, %_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit.i
  %i.ao = phi i32 [ %.pre1.i, %_ZN12V3NumberData13destroyStringEv.exit._crit_edge.i ], [ %i.r, %bb.c ], [ %i.r, %_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit.i ]
  store i8 1, ptr %i.g, align 4, !tbaa !42
  tail call void @_ZN12V3NumberData6resizeEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %i.ao)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN12V3NumberData8setLogicEv.exit
  %.0228 = phi ptr [ %1, %_ZN12V3NumberData8setLogicEv.exit ], [ %i.aq, %bb.e ] ; 3 uses
  %i.ap = load i8, ptr %.0228, align 1, !tbaa !23
  switch i8 %i.ap, label %bb.e [
    i8 0, label %.thread
    i8 39, label %8
  ]

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %.0228, i64 1
  br label %bb.d, !llvm.loop !92

8:                                                ; preds = %bb.d
  %9 = getelementptr inbounds nuw i8, ptr %.0228, i64 1
  %.not263 = icmp eq ptr %9, %1
  br i1 %.not263, label %.thread, label %bb.f

bb.f:                                             ; preds = %8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.ar, ptr %2, align 8, !tbaa !15
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 0, ptr %i.as, align 8, !tbaa !20
  store i8 0, ptr %i.ar, align 8, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %bb.f
  %.0242 = phi ptr [ %1, %bb.f ], [ %i.bl, %bb.k ] ; 4 uses
  %i.at = load i8, ptr %.0242, align 1, !tbaa !23 ; 2 uses
  switch i8 %i.at, label %bb.i [
    i8 0, label %.loopexit498.preheader
    i8 39, label %bb.h
    i8 95, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %.0242, i64 1
  br label %.loopexit498.preheader

.loopexit498.preheader:                           ; preds = %bb.g, %bb.h
  %.2244.ph = phi ptr [ %i.au, %bb.h ], [ %.0242, %bb.g ]
  br label %.loopexit498

bb.i:                                             ; preds = %bb.g
  %i.av = load i64, ptr %i.as, align 8, !tbaa !20 ; 4 uses
  %i.aw = add i64 %i.av, 1                        ; 3 uses
  %i.ax = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ar
  br i1 %i.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.i
  %i.az = icmp ult i64 %i.av, 16
  call void @llvm.assume(i1 %i.az)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.ba = load i64, ptr %i.ar, align 8, !tbaa !23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bb = phi i64 [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.bc = icmp ugt i64 %i.aw, %i.bb
  br i1 %i.bc, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.av, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %.loopexit499

.noexc:                                           ; preds = %bb.j
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc
  %i.bd = phi ptr [ %.pre.i.i, %.noexc ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.av
  store i8 %i.at, ptr %i.be, align 1, !tbaa !23
  store i64 %i.aw, ptr %i.as, align 8, !tbaa !20
  %i.bf = load ptr, ptr %2, align 8, !tbaa !29
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.aw
  store i8 0, ptr %i.bg, align 1, !tbaa !23
  br label %bb.k

.loopexit499:                                     ; preds = %bb.j
  %lpad.loopexit501 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp500:                            ; preds = %.invoke, %bb.q, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit297, %bb.w, %bb.x, %bb.y, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit295
  %lpad.loopexit.split-lp502 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit499, %.loopexit.split-lp500, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.co, %bb.v ], [ %lpad.loopexit501, %.loopexit499 ], [ %lpad.loopexit.split-lp502, %.loopexit.split-lp500 ]
  %i.bh = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.ar
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.bj = load i64, ptr %i.ar, align 8, !tbaa !23
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %.0242, i64 1
  br label %bb.g, !llvm.loop !93

.loopexit498:                                     ; preds = %.loopexit498.preheader, %bb.l
  %.2244 = phi ptr [ %i.bn, %bb.l ], [ %.2244.ph, %.loopexit498.preheader ] ; 5 uses
  %i.bm = load i8, ptr %.2244, align 1, !tbaa !23 ; 4 uses
  switch i8 %i.bm, label %bb.m [
    i8 95, label %bb.l
    i8 0, label %.loopexit497
  ]

bb.l:                                             ; preds = %.loopexit498
  %i.bn = getelementptr inbounds nuw i8, ptr %.2244, i64 1
  br label %.loopexit498, !llvm.loop !94

bb.m:                                             ; preds = %.loopexit498
  %i.bo = sext i8 %i.bm to i32
  %i.bp = call i32 @tolower(i32 noundef %i.bo) #34
  %i.bq = icmp eq i32 %i.bp, 115
  br i1 %i.bq, label %bb.n, label %.loopexit497

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %.2244, i64 1 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = or i8 %i.bt, 2
  store i8 %i.bu, ptr %i.bs, align 1
  %.pre = load i8, ptr %i.br, align 1, !tbaa !23
  br label %.loopexit497

.loopexit497:                                     ; preds = %.loopexit498, %bb.n, %bb.m
  %i.bv = phi i8 [ %.pre, %bb.n ], [ %i.bm, %bb.m ], [ %i.bm, %.loopexit498 ] ; 2 uses
  %.3245 = phi ptr [ %i.br, %bb.n ], [ %.2244, %bb.m ], [ %.2244, %.loopexit498 ]
  %.not267 = icmp ne i8 %i.bv, 0
  %spec.select291.idx = zext i1 %.not267 to i64
  %spec.select291 = getelementptr inbounds nuw i8, ptr %.3245, i64 %spec.select291.idx
  %i.bw = load i64, ptr %i.as, align 8, !tbaa !20
  %i.bx = icmp ne i64 %i.bw, 0
  %i.by = load ptr, ptr %2, align 8, !tbaa !29
  %i.bz = call i64 @__isoc23_strtol(ptr noundef nonnull %i.by, ptr noundef null, i32 noundef 10) #30, !inline_history !95
  %i.ca = and i64 %i.bz, 4294967295
  %.not268 = icmp eq i64 %i.ca, 0
  br i1 %.not268, label %_ZN8V3Number5widthEib.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit497
  %i.cb = load ptr, ptr %2, align 8, !tbaa !29
  %i.cc = call i64 @__isoc23_strtol(ptr noundef nonnull %i.cb, ptr noundef null, i32 noundef 10) #30, !inline_history !95
  %i.cd = and i64 %i.cc, 2147483648
  %.not = icmp eq i64 %i.cd, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ce = load ptr, ptr %2, align 8, !tbaa !29
  %i.cf = call i64 @__isoc23_strtol(ptr noundef nonnull %i.ce, ptr noundef null, i32 noundef 10) #30, !inline_history !95
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = load i32, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 1120), align 8, !tbaa !96
  %i.ci = icmp slt i32 %i.ch, %i.cg
  br i1 %i.ci, label %bb.q, label %bb.aa

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cj = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5)
          to label %bb.r unwind label %.loopexit.split-lp500 ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.ck = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %bb.s, label %bb.w, !prof !68

bb.s:                                             ; preds = %bb.r
  %i.cm = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #30
  %.not.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cn = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #30
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #30
  br label %.body

bb.w:                                             ; preds = %bb.u, %bb.s, %bb.r
  %i.cp = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.123, ptr nonnull @.str.124, i32 481, ptr null) ; 6 uses
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull @.str.1, i64 noundef 59)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp500 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.w
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !38
  %i.cs = getelementptr i8, ptr %i.cr, i64 -24
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds i8, ptr %i.cp, i64 %i.ct ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !140
  %i.cx = or i32 %i.cw, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cu, i32 noundef %i.cx)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit295 unwind label %.loopexit.split-lp500

bb.y:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cy = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %i.cz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull %1, i64 noundef %i.cy)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit295 unwind label %.loopexit.split-lp500 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit295: ; preds = %bb.x, %bb.y
  %i.da = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull @.str.2, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit297 unwind label %.loopexit.split-lp500 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit297: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit295
  invoke void @_ZNK8V3Number10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.cp)
          to label %bb.z unwind label %.loopexit.split-lp500

bb.z:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit297
  %i.db = load i32, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 1120), align 8, !tbaa !96
  br label %.invoke

.invoke:                                          ; preds = %bb.aa, %bb.z
  %i.dc = phi i32 [ %i.db, %bb.z ], [ %i.di, %bb.aa ]
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.de = load i8, ptr %i.dd, align 1
  %i.df = or i8 %i.de, 1
  store i8 %i.df, ptr %i.dd, align 1
  invoke void @_ZN12V3NumberData6resizeEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %i.dc)
          to label %_ZN8V3Number5widthEib.exit unwind label %.loopexit.split-lp500

bb.aa:                                            ; preds = %bb.p
  %i.dg = load ptr, ptr %2, align 8, !tbaa !29
  %i.dh = call i64 @__isoc23_strtol(ptr noundef nonnull %i.dg, ptr noundef null, i32 noundef 10) #30, !inline_history !95
  %i.di = trunc i64 %i.dh to i32
  br label %.invoke

_ZN8V3Number5widthEib.exit:                       ; preds = %.invoke, %.loopexit497
  %i.dj = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.ar
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301: ; preds = %_ZN8V3Number5widthEib.exit
  %i.dl = load i64, ptr %i.ar, align 8, !tbaa !23
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303: ; preds = %_ZN8V3Number5widthEib.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %.thread

.thread:                                          ; preds = %bb.d, %8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303
  %.not263484 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303 ], [ true, %8 ], [ true, %bb.d ]
  %.0250 = phi i1 [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303 ], [ false, %8 ], [ false, %bb.d ] ; 4 uses
  %.1248 = phi i8 [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303 ], [ 100, %8 ], [ 100, %bb.d ] ; 4 uses
  %.1225 = phi ptr [ %spec.select291, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303 ], [ %1, %8 ], [ %1, %bb.d ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 24 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !41 ; 3 uses
  %i.dp = icmp sgt i32 %i.do, 0
  br i1 %i.dp, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread
  %i.dq = load i8, ptr %i.g, align 4, !tbaa !42
  %i.dr = add i8 %i.dq, -1
  %spec.select.i.i304 = icmp ult i8 %i.dr, 2
  br i1 %spec.select.i.i304, label %_ZN12V3NumberData3numEv.exit, label %bb.ab, !prof !43

._crit_edge:                                      ; preds = %_ZN12V3NumberData3numEv.exit, %.thread
  %.lcssa563 = phi i32 [ %i.do, %.thread ], [ %i.dx, %_ZN12V3NumberData3numEv.exit ] ; 12 uses
  %i.ds = sext i8 %.1248 to i32                   ; 3 uses
  switch i8 %.1248, label %bb.am [
    i8 48, label %bb.ac
    i8 49, label %bb.ah
  ]

_ZN12V3NumberData3numEv.exit:                     ; preds = %.lr.ph, %_ZN12V3NumberData3numEv.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN12V3NumberData3numEv.exit ], [ 0, %.lr.ph ] ; 2 uses
  %i.dt = phi i32 [ %i.dx, %_ZN12V3NumberData3numEv.exit ], [ %i.do, %.lr.ph ]
  %i.du = icmp slt i32 %i.dt, 129
  %i.dv = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.du, ptr %0, ptr %i.dv
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %indvars.iv ; 2 uses
  store i32 0, ptr %i.dw, align 4, !tbaa !66
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dx = load i32, ptr %i.dn, align 8, !tbaa !41 ; 3 uses
  %i.dy = add nsw i32 %i.dx, 31
  %i.dz = sdiv i32 %i.dy, 32
  %i.ea = sext i32 %i.dz to i64
  %i.eb = icmp slt i64 %indvars.iv.next, %i.ea
  br i1 %i.eb, label %_ZN12V3NumberData3numEv.exit, label %._crit_edge, !llvm.loop !147

bb.ab:                                            ; preds = %.lr.ph
  %i.ec = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242) ; 0 uses
  %i.ed = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.ee = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ed, ptr noundef nonnull @.str.118)
  %i.ef = call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.ee, ptr noundef nonnull align 1 dereferenceable(1) %i.g)
  call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.ef) #32
  unreachable

bb.ac:                                            ; preds = %._crit_edge
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 4 uses
  %i.eh = load i8, ptr %i.eg, align 1
  %i.ei = and i8 %i.eh, -2
  store i8 %i.ei, ptr %i.eg, align 1
  %i.ej = icmp eq i32 %.lcssa563, 1
  br i1 %i.ej, label %_ZN12V3NumberData6resizeEi.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.off488 = add i32 %.lcssa563, -1
  %i.ek = icmp ult i32 %.off488, 32
  br i1 %i.ek, label %.sink.split.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.el = icmp sgt i32 %.lcssa563, 128
  %i.em = load i8, ptr %i.g, align 4
  %i.en = icmp eq i8 %i.em, 1
  %i.eo = select i1 %i.el, i1 %i.en, i1 false
  br i1 %i.eo, label %bb.af, label %.sink.split.i

bb.af:                                            ; preds = %bb.ae
  %i.ep = load ptr, ptr %0, align 8, !tbaa !57    ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(32) %i.ep, i64 32, i1 false)
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.ep to i64
  %i.eu = sub i64 %i.es, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef %i.eu) #31
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ae, %bb.af, %bb.ad
  store i32 1, ptr %i.dn, align 8, !tbaa !41
  br label %_ZN12V3NumberData6resizeEi.exit

_ZN12V3NumberData6resizeEi.exit:                  ; preds = %.sink.split.i, %bb.ac
  %i.ev = load i8, ptr %i.g, align 4, !tbaa !42
  %i.ew = add i8 %i.ev, -1
  %spec.select.i.i.i = icmp ult i8 %i.ew, 2
  br i1 %spec.select.i.i.i, label %_ZN8V3Number6setBitEic.exit, label %bb.ag, !prof !43

bb.ag:                                            ; preds = %_ZN12V3NumberData6resizeEi.exit
  %i.ex = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242) ; 0 uses
  %i.ey = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.ez = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef nonnull @.str.118)
  %i.fa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, ptr noundef nonnull align 1 dereferenceable(1) %i.g)
  call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.fa) #32
  unreachable

_ZN8V3Number6setBitEic.exit:                      ; preds = %_ZN12V3NumberData6resizeEi.exit
  %i.fb = load ptr, ptr %0, align 8
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = and i32 %i.fd, -2
  store i32 %i.fe, ptr %0, align 8, !tbaa !44
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !148
  %i.fh = and i32 %i.fg, -2
  store i32 %i.fh, ptr %i.ff, align 4, !tbaa !148
  %i.fi = load i8, ptr %i.eg, align 1
  %i.fj = or i8 %i.fi, 32
  store i8 %i.fj, ptr %i.eg, align 1
  br label %.preheader

bb.ah:                                            ; preds = %._crit_edge
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 4 uses
  %i.fl = load i8, ptr %i.fk, align 1
  %i.fm = and i8 %i.fl, -2
  store i8 %i.fm, ptr %i.fk, align 1
  %i.fn = icmp eq i32 %.lcssa563, 1
  br i1 %i.fn, label %_ZN12V3NumberData6resizeEi.exit443, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.off = add i32 %.lcssa563, -1
  %i.fo = icmp ult i32 %.off, 32
  br i1 %i.fo, label %.sink.split.i441, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fp = icmp sgt i32 %.lcssa563, 128
  %i.fq = load i8, ptr %i.g, align 4
  %i.fr = icmp eq i8 %i.fq, 1
  %i.fs = select i1 %i.fp, i1 %i.fr, i1 false
  br i1 %i.fs, label %bb.ak, label %.sink.split.i441

bb.ak:                                            ; preds = %bb.aj
  %i.ft = load ptr, ptr %0, align 8, !tbaa !57    ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(32) %i.ft, i64 32, i1 false)
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = ptrtoint ptr %i.ft to i64
  %i.fy = sub i64 %i.fw, %i.fx
  call void @_ZdlPvm(ptr noundef nonnull %i.ft, i64 noundef %i.fy) #31
  br label %.sink.split.i441

.sink.split.i441:                                 ; preds = %bb.aj, %bb.ak, %bb.ai
  store i32 1, ptr %i.dn, align 8, !tbaa !41
  br label %_ZN12V3NumberData6resizeEi.exit443

_ZN12V3NumberData6resizeEi.exit443:               ; preds = %.sink.split.i441, %bb.ah
  %i.fz = load i8, ptr %i.g, align 4, !tbaa !42
  %i.ga = add i8 %i.fz, -1
  %spec.select.i.i.i308 = icmp ult i8 %i.ga, 2
  br i1 %spec.select.i.i.i308, label %_ZN8V3Number6setBitEic.exit311, label %bb.al, !prof !43

bb.al:                                            ; preds = %_ZN12V3NumberData6resizeEi.exit443
  %i.gb = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242) ; 0 uses
  %i.gc = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.gd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, ptr noundef nonnull @.str.118)
  %i.ge = call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.gd, ptr noundef nonnull align 1 dereferenceable(1) %i.g)
  call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.ge) #32
  unreachable

_ZN8V3Number6setBitEic.exit311:                   ; preds = %_ZN12V3NumberData6resizeEi.exit443
  %i.gf = load ptr, ptr %0, align 8
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = trunc i64 %i.gg to i32
  %i.gi = or i32 %i.gh, 1
  store i32 %i.gi, ptr %0, align 8, !tbaa !44
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !148
  %i.gl = and i32 %i.gk, -2
  store i32 %i.gl, ptr %i.gj, align 4, !tbaa !148
  %i.gm = load i8, ptr %i.fk, align 1
  %i.gn = or i8 %i.gm, 32
  store i8 %i.gn, ptr %i.fk, align 1
  br label %.preheader

bb.am:                                            ; preds = %._crit_edge
  %i.go = call i32 @tolower(i32 noundef %i.ds) #34
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 9 uses
  %i.gq = load i8, ptr %i.gp, align 1             ; 3 uses
  switch i32 %i.go, label %bb.ax [
    i32 122, label %bb.an
    i32 120, label %bb.as
  ]

bb.an:                                            ; preds = %bb.am
  %i.gr = and i8 %i.gq, -2
  store i8 %i.gr, ptr %i.gp, align 1
  %i.gs = icmp eq i32 %.lcssa563, 1
  br i1 %i.gs, label %_ZN12V3NumberData6resizeEi.exit448, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.off490 = add i32 %.lcssa563, -1
  %i.gt = icmp ult i32 %.off490, 32
  br i1 %i.gt, label %.sink.split.i446, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gu = icmp sgt i32 %.lcssa563, 128
  %i.gv = load i8, ptr %i.g, align 4
  %i.gw = icmp eq i8 %i.gv, 1
  %i.gx = select i1 %i.gu, i1 %i.gw, i1 false
end_hunk_0
begin_hunk_1_@_ZNK8V3Number9displayedEP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK11VFormatAttr:bb.a
  %.not.i578 = icmp eq ptr %i.aow, null
  br i1 %.not.i578, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i577
  store ptr %i.aow, ptr %18, align 8, !tbaa !29
  store i64 %i.apk, ptr %i.aoz, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit584

bb.gi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i577, %.thread.i583
  store ptr %i.aoz, ptr %18, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit584

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit584: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i580, %bb.gh, %bb.gi
  %i.apn = phi ptr [ %.pre.i581, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i580 ], [ %i.aow, %bb.gh ], [ %i.aoz, %bb.gi ]
  %i.apo = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.apo, align 8, !tbaa !20
  store i8 0, ptr %i.apn, align 1, !tbaa !23
  %i.app = load ptr, ptr %18, align 8, !tbaa !29  ; 2 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.apr = icmp eq ptr %i.app, %i.apq
  br i1 %i.apr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit587, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i585

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i585: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit584
  %i.aps = load i64, ptr %i.apq, align 8, !tbaa !23
  %i.apt = add i64 %i.aps, 1
  call void @_ZdlPvm(ptr noundef %i.app, i64 noundef %i.apt) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit587

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit587: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit584, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i585
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  %i.apu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.apu, ptr %0, align 8, !tbaa !15
  %i.apv = load ptr, ptr %6, align 8, !tbaa !29   ; 2 uses
  %i.apw = icmp eq ptr %i.apv, %i.av
  br i1 %i.apw, label %bb.gj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i588

bb.gj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit587
  %i.apx = load i64, ptr %i.aw, align 8, !tbaa !20 ; 3 uses
  %i.apy = icmp ult i64 %i.apx, 16
  call void @llvm.assume(i1 %i.apy)
  %i.apz = add nuw nsw i64 %i.apx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.apu, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.apz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit589

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i588: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit587
  store ptr %i.apv, ptr %0, align 8, !tbaa !29
  %i.aqa = load i64, ptr %i.av, align 8, !tbaa !23
  store i64 %i.aqa, ptr %i.apu, align 8, !tbaa !23
  %.pre1077 = load i64, ptr %i.aw, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit589

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit589: ; preds = %bb.gj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i588
  %i.aqb = phi i64 [ %i.apx, %bb.gj ], [ %.pre1077, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i588 ]
  %i.aqc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aqb, ptr %i.aqc, align 8, !tbaa !20
  store ptr %i.av, ptr %6, align 8, !tbaa !29
  store i64 0, ptr %i.aw, align 8, !tbaa !20
  store i8 0, ptr %i.av, align 8, !tbaa !23
  br label %bb.jp

bb.gk:                                            ; preds = %.loopexit995
  %i.aqd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %.body258

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread877: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread874._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread877_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.aqe = phi i8 [ %.pre1074.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread874._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread877_crit_edge ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ]
  %i.aqf = icmp eq i8 %i.aqe, 126                 ; 3 uses
  %i.aqg = load i64, ptr %i.u, align 8, !tbaa !20
  %i.aqh = icmp ne i64 %i.aqg, 0
  %brmerge = or i1 %i.r, %i.aqh
  br i1 %brmerge, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit591.thread, label %bb.gl

bb.gl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread877
  %i.aqi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aqj = load i32, ptr %i.aqi, align 8, !tbaa !41
  %.neg = sext i1 %i.aqf to i32
  %i.aqk = add i32 %i.aqj, %.neg
  %i.aql = sitofp i32 %i.aqk to double
  %i.aqm = fdiv double %i.aql, f0x400A934F0979A371
  %i.aqn = fadd double %i.aqm, 1.000000e+00       ; 2 uses
  %i.aqo = fadd double %i.aqn, 1.000000e+00
  %.0158 = select i1 %i.aqf, double %i.aqo, double %i.aqn
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  %i.aqp = fptosi double %.0158 to i32
  store i32 %i.aqp, ptr %i.e, align 4, !tbaa !66
  invoke void @_Z8cvtToStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %bb.gm unwind label %bb.gs

bb.gm:                                            ; preds = %bb.gl
  %i.aqq = load ptr, ptr %5, align 8, !tbaa !29   ; 6 uses
  %i.aqr = icmp eq ptr %i.aqq, %i.t
  %i.aqs = load ptr, ptr %19, align 8, !tbaa !29  ; 5 uses
  %i.aqt = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.aqu = icmp eq ptr %i.aqs, %i.aqt             ; 2 uses
  br i1 %i.aqr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i598, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i592

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i598: ; preds = %bb.gm
  br i1 %i.aqu, label %bb.gn, label %.thread.i599

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i592: ; preds = %bb.gm
  br i1 %i.aqu, label %bb.gn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i593

bb.gn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i592, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i598
  %i.aqv = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.aqw = load i64, ptr %i.aqv, align 8, !tbaa !20 ; 3 uses
  %i.aqx = icmp ult i64 %i.aqw, 16
  call void @llvm.assume(i1 %i.aqx)
  switch i64 %i.aqw, label %bb.gp [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i596
    i64 1, label %bb.go
  ]

bb.go:                                            ; preds = %bb.gn
  %i.aqy = load i8, ptr %i.aqs, align 1, !tbaa !23
  store i8 %i.aqy, ptr %i.aqq, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i596

bb.gp:                                            ; preds = %bb.gn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aqq, ptr align 1 %i.aqs, i64 %i.aqw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i596

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i596: ; preds = %bb.gp, %bb.go, %bb.gn
  %i.aqz = load i64, ptr %i.aqv, align 8, !tbaa !20 ; 2 uses
  store i64 %i.aqz, ptr %i.u, align 8, !tbaa !20
  %i.ara = load ptr, ptr %5, align 8, !tbaa !29
  %i.arb = getelementptr inbounds nuw i8, ptr %i.ara, i64 %i.aqz
  store i8 0, ptr %i.arb, align 1, !tbaa !23
  %.pre.i597 = load ptr, ptr %19, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit600

.thread.i599:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i598
  store ptr %i.aqs, ptr %5, align 8, !tbaa !29
  %i.arc = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ard = load <2 x i64>, ptr %i.arc, align 8, !tbaa !23
  store <2 x i64> %i.ard, ptr %i.u, align 8, !tbaa !23
  br label %bb.gr

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i593: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i592
  %i.are = load i64, ptr %i.t, align 8, !tbaa !23
  store ptr %i.aqs, ptr %5, align 8, !tbaa !29
  %i.arf = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.arg = load <2 x i64>, ptr %i.arf, align 8, !tbaa !23
  store <2 x i64> %i.arg, ptr %i.u, align 8, !tbaa !23
  %.not.i594 = icmp eq ptr %i.aqq, null
  br i1 %.not.i594, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i593
  store ptr %i.aqq, ptr %19, align 8, !tbaa !29
  store i64 %i.are, ptr %i.aqt, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit600

bb.gr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i593, %.thread.i599
  store ptr %i.aqt, ptr %19, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit600

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit600: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i596, %bb.gq, %bb.gr
  %i.arh = phi ptr [ %.pre.i597, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i596 ], [ %i.aqq, %bb.gq ], [ %i.aqt, %bb.gr ]
  %i.ari = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 0, ptr %i.ari, align 8, !tbaa !20
  store i8 0, ptr %i.arh, align 1, !tbaa !23
  %i.arj = load ptr, ptr %19, align 8, !tbaa !29  ; 2 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.arl = icmp eq ptr %i.arj, %i.ark
  br i1 %i.arl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit600
  %i.arm = load i64, ptr %i.ark, align 8, !tbaa !23
  %i.arn = add i64 %i.arm, 1
  call void @_ZdlPvm(ptr noundef %i.arj, i64 noundef %i.arn) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit600, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit591.thread

bb.gs:                                            ; preds = %bb.gl
  %i.aro = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %.body258

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit591.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.thread877, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603
  %i.arp = invoke noundef zeroext i1 @_ZNK8V3Number6isAllXEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.gt unwind label %bb.gu

bb.gt:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit591.thread
  br i1 %i.arp, label %.invoke.invoke, label %bb.gv

bb.gu:                                            ; preds = %.invoke.invoke, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit591.thread
  %i.arq = landingpad { ptr, i32 }
          cleanup
  br label %.body258

bb.gv:                                            ; preds = %bb.gt
  %i.arr = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ars = load i8, ptr %i.arr, align 4, !tbaa !42 ; 2 uses
  %i.art = and i8 %i.ars, -2
  %switch.i = icmp eq i8 %i.art, 2
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre1319 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !41
  %.fr.i.i606 = freeze i32 %.pre1319              ; 8 uses
  br i1 %switch.i, label %.critedge251, label %.preheader.i

.preheader.i:                                     ; preds = %bb.gv
  %i.aru = add i8 %i.ars, -3
  %spec.select.i.i.i607 = icmp ult i8 %i.aru, -2  ; 2 uses
  %i.arv = icmp slt i32 %.fr.i.i606, 1            ; 2 uses
  %invariant.op.i = or i1 %spec.select.i.i.i607, %i.arv
  br i1 %invariant.op.i, label %_ZNK8V3Number6isAllZEv.exit, label %tailrecurse.preheader.i.lr.ph.i

tailrecurse.preheader.i.lr.ph.i:                  ; preds = %.preheader.i
  %i.arw = icmp samesign ult i32 %.fr.i.i606, 129
  %i.arx = load ptr, ptr %1, align 8              ; 3 uses
  %spec.select.i9.i.i608 = select i1 %i.arw, ptr %1, ptr %i.arx
  br label %tailrecurse.preheader.i.i609

bb.gw:                                            ; preds = %_ZNK8V3Number6bitIsZEi.exit.i612
  %i.ary = add nuw nsw i32 %.059.i.a, 1           ; 2 uses
  %exitcond.not.i616 = icmp eq i32 %i.ary, %.fr.i.i606
  br i1 %exitcond.not.i616, label %.invoke.invoke, label %tailrecurse.preheader.i.i609, !llvm.loop !256

tailrecurse.preheader.i.i609:                     ; preds = %bb.gw, %tailrecurse.preheader.i.lr.ph.i
  %.059.i.a = phi i32 [ 0, %tailrecurse.preheader.i.lr.ph.i ], [ %i.ary, %bb.gw ] ; 3 uses
  %i.arz = lshr i32 %.059.i.a, 5
  %i.asa = zext nneg i32 %i.arz to i64
  %i.asb = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i9.i.i608, i64 %i.asa ; 2 uses
  %.sroa.0.0.copyload.i.i610 = load i32, ptr %i.asb, align 4, !tbaa !66
  %i.asc = xor i32 %.sroa.0.0.copyload.i.i610, -1
  %i.asd = zext i32 %i.asc to i64
  %i.ase = and i32 %.059.i.a, 31
  %i.asf = zext nneg i32 %i.ase to i64
  %i.asg = shl nuw nsw i64 1, %i.asf              ; 2 uses
  %i.ash = and i64 %i.asg, %i.asd
  %.not7.i.i611 = icmp eq i64 %i.ash, 0
  br i1 %.not7.i.i611, label %.lr.ph.i624, label %_ZNK8V3Number6bitIsZEi.exit.i612

_ZNK8V3Number6bitIsZEi.exit.i612:                 ; preds = %tailrecurse.preheader.i.i609
  %.sroa.4.0..sroa_idx.i.i613 = getelementptr inbounds nuw i8, ptr %i.asb, i64 4
  %.sroa.4.0.copyload.i.i614 = load i32, ptr %.sroa.4.0..sroa_idx.i.i613, align 4, !tbaa !66
  %i.asi = zext i32 %.sroa.4.0.copyload.i.i614 to i64
  %i.asj = and i64 %i.asg, %i.asi
  %.not.i615 = icmp eq i64 %i.asj, 0
  br i1 %.not.i615, label %.lr.ph.i624, label %bb.gw

_ZNK8V3Number6isAllZEv.exit:                      ; preds = %.preheader.i
  br i1 %i.arv, label %.invoke.invoke, label %_ZNK8V3Number6isAllZEv.exit..lr.ph.i624_crit_edge

_ZNK8V3Number6isAllZEv.exit..lr.ph.i624_crit_edge: ; preds = %_ZNK8V3Number6isAllZEv.exit
  %.pre1318 = load ptr, ptr %1, align 8
  br label %.lr.ph.i624

.lr.ph.i624:                                      ; preds = %_ZNK8V3Number6bitIsZEi.exit.i612, %tailrecurse.preheader.i.i609, %_ZNK8V3Number6isAllZEv.exit..lr.ph.i624_crit_edge
  %i.ask = phi ptr [ %.pre1318, %_ZNK8V3Number6isAllZEv.exit..lr.ph.i624_crit_edge ], [ %i.arx, %tailrecurse.preheader.i.i609 ], [ %i.arx, %_ZNK8V3Number6bitIsZEi.exit.i612 ]
  %i.asl = icmp samesign ult i32 %.fr.i.i606, 129
  %spec.select.i11.i.i626 = select i1 %i.asl, ptr %1, ptr %i.ask ; 2 uses
  br i1 %spec.select.i.i.i607, label %.critedge251, label %_ZNK12V3NumberData3numEv.exit.i.i627

_ZNK12V3NumberData3numEv.exit.i.i627:             ; preds = %.lr.ph.i624, %_ZNK8V3Number6bitIsXEi.exit.thread.i635
  %.059.i628 = phi i32 [ %i.asw, %_ZNK8V3Number6bitIsXEi.exit.thread.i635 ], [ 0, %.lr.ph.i624 ] ; 3 uses
  %i.asm = lshr i32 %.059.i628, 5
  %i.asn = zext nneg i32 %i.asm to i64
  %i.aso = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i11.i.i626, i64 %i.asn ; 2 uses
  %.sroa.0.0.copyload.i.i629 = load i32, ptr %i.aso, align 4, !tbaa !66
  %i.asp = zext i32 %.sroa.0.0.copyload.i.i629 to i64
  %i.asq = and i32 %.059.i628, 31
  %i.asr = zext nneg i32 %i.asq to i64
  %i.ass = shl nuw nsw i64 1, %i.asr              ; 2 uses
  %i.ast = and i64 %i.ass, %i.asp
  %.not7.i.i630 = icmp eq i64 %i.ast, 0
  br i1 %.not7.i.i630, label %_ZNK8V3Number6bitIsXEi.exit.thread.i635, label %_ZNK8V3Number6bitIsXEi.exit.i631

_ZNK8V3Number6bitIsXEi.exit.i631:                 ; preds = %_ZNK12V3NumberData3numEv.exit.i.i627
  %.sroa.4.0..sroa_idx.i.i.i632 = getelementptr inbounds nuw i8, ptr %i.aso, i64 4
  %.sroa.4.0.copyload.i.i.i633 = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i632, align 4, !tbaa !66
  %i.asu = zext i32 %.sroa.4.0.copyload.i.i.i633 to i64
  %i.asv = and i64 %i.ass, %i.asu
  %.not.i634 = icmp eq i64 %i.asv, 0
  br i1 %.not.i634, label %_ZNK8V3Number6bitIsXEi.exit.thread.i635, label %.invoke.invoke

_ZNK8V3Number6bitIsXEi.exit.thread.i635:          ; preds = %_ZNK8V3Number6bitIsXEi.exit.i631, %_ZNK12V3NumberData3numEv.exit.i.i627
  %i.asw = add nuw nsw i32 %.059.i628, 1          ; 2 uses
  %exitcond.not.i636 = icmp eq i32 %i.asw, %.fr.i.i606
  br i1 %exitcond.not.i636, label %.preheader.i1284, label %_ZNK12V3NumberData3numEv.exit.i.i627, !llvm.loop !257

.preheader.i1284:                                 ; preds = %_ZNK8V3Number6bitIsXEi.exit.thread.i635
  %25 = icmp slt i32 %.fr.i.i606, 1
  br i1 %25, label %.critedge251, label %tailrecurse.preheader.i.i1287

tailrecurse.preheader.i.i1287:                    ; preds = %.preheader.i1284, %_ZNK8V3Number6bitIsZEi.exit.thread.i1295
  %.059.i1288 = phi i32 [ %i.ati, %_ZNK8V3Number6bitIsZEi.exit.thread.i1295 ], [ 0, %.preheader.i1284 ] ; 3 uses
  %i.asx = lshr i32 %.059.i1288, 5
  %i.asy = zext nneg i32 %i.asx to i64
  %i.asz = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i11.i.i626, i64 %i.asy ; 2 uses
  %.sroa.0.0.copyload.i.i1289 = load i32, ptr %i.asz, align 4, !tbaa !66
  %i.ata = xor i32 %.sroa.0.0.copyload.i.i1289, -1
  %i.atb = zext i32 %i.ata to i64
  %i.atc = and i32 %.059.i1288, 31
  %i.atd = zext nneg i32 %i.atc to i64
  %i.ate = shl nuw nsw i64 1, %i.atd              ; 2 uses
  %i.atf = and i64 %i.ate, %i.atb
  %.not7.i.i1290 = icmp eq i64 %i.atf, 0
  br i1 %.not7.i.i1290, label %_ZNK8V3Number6bitIsZEi.exit.thread.i1295, label %_ZNK8V3Number6bitIsZEi.exit.i1291

_ZNK8V3Number6bitIsZEi.exit.i1291:                ; preds = %tailrecurse.preheader.i.i1287
  %.sroa.4.0..sroa_idx.i.i1292 = getelementptr inbounds nuw i8, ptr %i.asz, i64 4
  %.sroa.4.0.copyload.i.i1293 = load i32, ptr %.sroa.4.0..sroa_idx.i.i1292, align 4, !tbaa !66
  %i.atg = zext i32 %.sroa.4.0.copyload.i.i1293 to i64
  %i.ath = and i64 %i.ate, %i.atg
  %.not.i1294 = icmp eq i64 %i.ath, 0
  br i1 %.not.i1294, label %_ZNK8V3Number6bitIsZEi.exit.thread.i1295, label %.invoke.invoke

_ZNK8V3Number6bitIsZEi.exit.thread.i1295:         ; preds = %_ZNK8V3Number6bitIsZEi.exit.i1291, %tailrecurse.preheader.i.i1287
  %i.ati = add nuw nsw i32 %.059.i1288, 1         ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ati, %.fr.i.i606
  br i1 %exitcond.not.i, label %.critedge251, label %tailrecurse.preheader.i.i1287, !llvm.loop !258

.invoke.invoke:                                   ; preds = %bb.gw, %_ZNK8V3Number6bitIsXEi.exit.i631, %_ZNK8V3Number6bitIsZEi.exit.i1291, %bb.gt, %_ZNK8V3Number6isAllZEv.exit
  %i.atj = phi ptr [ @.str.41, %_ZNK8V3Number6bitIsZEi.exit.i1291 ], [ @.str.38, %bb.gt ], [ @.str.39, %_ZNK8V3Number6isAllZEv.exit ], [ @.str.40, %_ZNK8V3Number6bitIsXEi.exit.i631 ], [ @.str.39, %bb.gw ]
  %i.atk = load i64, ptr %i.aw, align 8, !tbaa !20
  %i.atl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef %i.atk, ptr noundef nonnull %i.atj, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit605 unwind label %bb.gu ; 0 uses

.critedge251:                                     ; preds = %_ZNK8V3Number6bitIsZEi.exit.thread.i1295, %.preheader.i1284, %.lr.ph.i624, %bb.gv
  %i.atm = icmp sgt i32 %.fr.i.i606, 64           ; 2 uses
  br i1 %i.aqf, label %bb.gx, label %bb.hf

bb.gx:                                            ; preds = %.critedge251
  br i1 %i.atm, label %bb.gy, label %bb.hb

bb.gy:                                            ; preds = %bb.gx
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  invoke void @_ZNK8V3Number10toDecimalSB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.gz unwind label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.atn = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %20) #30 ; 0 uses
  %i.ato = load ptr, ptr %20, align 8, !tbaa !29  ; 2 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.atq = icmp eq ptr %i.ato, %i.atp
  br i1 %i.atq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637: ; preds = %bb.gz
  %i.atr = load i64, ptr %i.atp, align 8, !tbaa !23
  %i.ats = add i64 %i.atr, 1
  call void @_ZdlPvm(ptr noundef %i.ato, i64 noundef %i.ats) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639: ; preds = %bb.gz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit605

bb.ha:                                            ; preds = %bb.gy
  %i.att = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %.body258

bb.hb:                                            ; preds = %bb.gx
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  %i.atu = invoke noundef i64 @_ZNK8V3Number7toSQuadEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.hc unwind label %bb.he

bb.hc:                                            ; preds = %bb.hb
  store i64 %i.atu, ptr %i.f, align 8, !tbaa !40
  invoke void @_Z8cvtToStrIlENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.hd unwind label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.atv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %21) #30 ; 0 uses
  %i.atw = load ptr, ptr %21, align 8, !tbaa !29  ; 2 uses
  %i.atx = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.aty = icmp eq ptr %i.atw, %i.atx
  br i1 %i.aty, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i640

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i640: ; preds = %bb.hd
  %i.atz = load i64, ptr %i.atx, align 8, !tbaa !23
  %i.aua = add i64 %i.atz, 1
  call void @_ZdlPvm(ptr noundef %i.atw, i64 noundef %i.aua) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642: ; preds = %bb.hd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit605

bb.he:                                            ; preds = %bb.hc, %bb.hb
  %i.aub = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  br label %.body258

bb.hf:                                            ; preds = %.critedge251
  br i1 %i.atm, label %bb.hg, label %bb.hj

bb.hg:                                            ; preds = %bb.hf
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  invoke void @_ZNK8V3Number10toDecimalUB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.hh unwind label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.auc = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %22) #30 ; 0 uses
  %i.aud = load ptr, ptr %22, align 8, !tbaa !29  ; 2 uses
  %i.aue = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.auf = icmp eq ptr %i.aud, %i.aue
  br i1 %i.auf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit645, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i643

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i643: ; preds = %bb.hh
  %i.aug = load i64, ptr %i.aue, align 8, !tbaa !23
  %i.auh = add i64 %i.aug, 1
  call void @_ZdlPvm(ptr noundef %i.aud, i64 noundef %i.auh) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit645

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit645: ; preds = %bb.hh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i643
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit605

bb.hi:                                            ; preds = %bb.hg
  %i.aui = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  br label %.body258

bb.hj:                                            ; preds = %bb.hf
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  %i.auj = invoke noundef i64 @_ZNK8V3Number7toUQuadEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.hk unwind label %bb.hm

bb.hk:                                            ; preds = %bb.hj
  store i64 %i.auj, ptr %i.g, align 8, !tbaa !40
  invoke void @_Z8cvtToStrImENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.hl unwind label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  %i.auk = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %23) #30 ; 0 uses
  %i.aul = load ptr, ptr %23, align 8, !tbaa !29  ; 2 uses
  %i.aum = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.aun = icmp eq ptr %i.aul, %i.aum
  br i1 %i.aun, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit648, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i646

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i646: ; preds = %bb.hl
  %i.auo = load i64, ptr %i.aum, align 8, !tbaa !23
  %i.aup = add i64 %i.auo, 1
  call void @_ZdlPvm(ptr noundef %i.aul, i64 noundef %i.aup) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit648

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit648: ; preds = %bb.hl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit605

bb.hm:                                            ; preds = %bb.hk, %bb.hj
  %i.auq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %.body258

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit605: ; preds = %.invoke.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit648, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit645
  %i.aur = load i64, ptr %i.u, align 8, !tbaa !20
  %.not219 = icmp eq i64 %i.aur, 0
  %.pre1075 = load ptr, ptr %5, align 8, !tbaa !29 ; 2 uses
  br i1 %.not219, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit605
  %i.aus = load i8, ptr %.pre1075, align 1, !tbaa !23
  %i.aut = icmp ne i8 %i.aus, 48
  %.not987 = or i1 %i.r, %i.aut
  %spec.select = select i1 %.not987, i8 32, i8 48
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit605
  %i.auu = phi i8 [ %spec.select, %bb.hn ], [ 32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit605 ]
  %i.auv = call i64 @__isoc23_strtol(ptr noundef nonnull %.pre1075, ptr noundef null, i32 noundef 10) #30, !inline_history !95
  %sext = shl i64 %i.auv, 32
  %i.auw = ashr exact i64 %sext, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  invoke void @_ZN8V3Number10displayPadEmcbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, i64 noundef %i.auw, i8 noundef signext %i.auu, i1 noundef zeroext %i.r, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.hp unwind label %bb.hw

bb.hp:                                            ; preds = %bb.ho
  %i.aux = load ptr, ptr %6, align 8, !tbaa !29   ; 6 uses
  %i.auy = icmp eq ptr %i.aux, %i.av
  %i.auz = load ptr, ptr %24, align 8, !tbaa !29  ; 5 uses
  %i.ava = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %i.avb = icmp eq ptr %i.auz, %i.ava             ; 2 uses
  br i1 %i.auy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i655, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i649

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i655: ; preds = %bb.hp
  br i1 %i.avb, label %bb.hq, label %.thread.i656

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i649: ; preds = %bb.hp
  br i1 %i.avb, label %bb.hq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i650

bb.hq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i649, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i655
  %i.avc = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.avd = load i64, ptr %i.avc, align 8, !tbaa !20 ; 3 uses
  %i.ave = icmp ult i64 %i.avd, 16
  call void @llvm.assume(i1 %i.ave)
  switch i64 %i.avd, label %bb.hs [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i653
    i64 1, label %bb.hr
  ]

bb.hr:                                            ; preds = %bb.hq
  %i.avf = load i8, ptr %i.auz, align 1, !tbaa !23
  store i8 %i.avf, ptr %i.aux, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i653

bb.hs:                                            ; preds = %bb.hq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aux, ptr align 1 %i.auz, i64 %i.avd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i653

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i653: ; preds = %bb.hs, %bb.hr, %bb.hq
  %i.avg = load i64, ptr %i.avc, align 8, !tbaa !20 ; 2 uses
  store i64 %i.avg, ptr %i.aw, align 8, !tbaa !20
  %i.avh = load ptr, ptr %6, align 8, !tbaa !29
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avh, i64 %i.avg
  store i8 0, ptr %i.avi, align 1, !tbaa !23
  %.pre.i654 = load ptr, ptr %24, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit657

end_hunk_1
begin_hunk_2_@_ZNK8V3Number6countZEii:bb.a
  %.not21 = icmp ne i64 %.fr, 0
  %i.v = zext i1 %.not21 to i32
  %spec.select = add nsw i32 %.01323, %i.v
  br label %_ZNK8V3Number6bitIsZEi.exit.thread

_ZNK8V3Number6bitIsZEi.exit.thread:               ; preds = %_ZNK8V3Number6bitIsZEi.exit, %bb.b, %tailrecurse.preheader.i
  %i.w = phi i32 [ %.01323, %bb.b ], [ %spec.select, %_ZNK8V3Number6bitIsZEi.exit ], [ %.01323, %tailrecurse.preheader.i ] ; 2 uses
  %i.x = add nuw nsw i32 %.01224, 1               ; 2 uses
  %exitcond31.not = icmp eq i32 %i.x, %2
  br i1 %exitcond31.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !268

._crit_edge:                                      ; preds = %_ZNK8V3Number6bitIsZEi.exit.thread, %.lr.ph.split, %.lr.ph, %bb.a
  %.013.lcssa = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph ], [ %.01323, %.lr.ph.split ], [ %i.w, %_ZNK8V3Number6bitIsZEi.exit.thread ]
  ret i32 %.013.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z8cvtToStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = load i32, ptr %1, align 4, !tbaa !66
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.a)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !15, !alias.scope !275
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !20, !alias.scope !275
  store i8 0, ptr %i.c, align 8, !tbaa !23, !alias.scope !275
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24, !noalias !275 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !275 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28, !noalias !275 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !29, !alias.scope !275 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.s = load i64, ptr %i.c, align 8, !tbaa !23, !alias.scope !275
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #31
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !38
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8, !tbaa !38
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !23
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #31
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #30
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ai) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

bb.f:                                             ; preds = %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.f ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK8V3Number6isAllXEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !42
  %.fr13 = freeze i8 %i.b                         ; 2 uses
  %i.c = and i8 %.fr13, -2
  %switch = icmp eq i8 %i.c, 2
  br i1 %switch, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !41   ; 5 uses
  %i.f = and i32 %i.e, 31                         ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0
  %notmask.i = shl nsw i32 -1, %i.f
  %i.g = xor i32 %notmask.i, -1
  %i.h = select i1 %.not.i, i32 -1, i32 %i.g
  %i.i = add i8 %.fr13, -1
  %spec.select.i.i = icmp ult i8 %i.i, 2
  %i.j = icmp slt i32 %i.e, 129
  %i.k = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.j, ptr %0, ptr %i.k ; 2 uses
  %i.l = icmp slt i32 %i.e, 1                     ; 2 uses
  br i1 %spec.select.i.i, label %.split.us.preheader, label %.split, !prof !43

.split.us.preheader:                              ; preds = %bb.b
  br i1 %i.l, label %.critedge, label %_ZNK12V3NumberData3numEv.exit.us.peel

_ZNK12V3NumberData3numEv.exit.us.peel:            ; preds = %.split.us.preheader
  %i.m = add nuw nsw i32 %i.e, 31
  %i.n = lshr i32 %i.m, 5
  %i.o = zext nneg i32 %i.n to i64
  %i.p = add nsw i64 %i.o, -1                     ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %i.p ; 2 uses
  %.sroa.0.0.copyload.us.peel = load i32, ptr %i.q, align 4, !tbaa !66
  %.sroa.4.0..sroa_idx.us.peel = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.sroa.4.0.copyload.us.peel = load i32, ptr %.sroa.4.0..sroa_idx.us.peel, align 4, !tbaa !66
  %i.r = and i32 %.sroa.4.0.copyload.us.peel, %.sroa.0.0.copyload.us.peel
  %.not.us.peel = icmp eq i32 %i.r, %i.h
  br i1 %.not.us.peel, label %.split.us.preheader17, label %.critedge

.split.us.preheader17:                            ; preds = %_ZNK12V3NumberData3numEv.exit.us.peel
  %i.s = icmp ult i32 %i.e, 33
  br i1 %i.s, label %.critedge, label %_ZNK12V3NumberData3numEv.exit.us

.split.us:                                        ; preds = %_ZNK12V3NumberData3numEv.exit.us
  %i.t = trunc nuw i64 %i.v to i32
  %i.u = icmp slt i32 %i.t, 1
  br i1 %i.u, label %.critedge, label %_ZNK12V3NumberData3numEv.exit.us, !llvm.loop !276

_ZNK12V3NumberData3numEv.exit.us:                 ; preds = %.split.us.preheader17, %.split.us
  %indvars.iv18 = phi i64 [ %i.v, %.split.us ], [ %i.p, %.split.us.preheader17 ]
  %i.v = add nsw i64 %indvars.iv18, -1            ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %i.v ; 2 uses
  %.sroa.0.0.copyload.us = load i32, ptr %i.w, align 4, !tbaa !66
  %.sroa.4.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.sroa.4.0.copyload.us = load i32, ptr %.sroa.4.0..sroa_idx.us, align 4, !tbaa !66
  %i.x = and i32 %.sroa.4.0.copyload.us, %.sroa.0.0.copyload.us
  %.not.us = icmp eq i32 %i.x, -1
  br i1 %.not.us, label %.split.us, label %_ZNK12V3NumberData3numEv.exit.us..critedge.loopexit_crit_edge, !llvm.loop !276

.split:                                           ; preds = %bb.b
  br i1 %i.l, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.split
  %i.y = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.z = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.118)
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.ab) #32
  unreachable

_ZNK12V3NumberData3numEv.exit.us..critedge.loopexit_crit_edge: ; preds = %_ZNK12V3NumberData3numEv.exit.us
  br label %.critedge, !llvm.loop !276

.critedge:                                        ; preds = %.split.us, %.split.us.preheader17, %_ZNK12V3NumberData3numEv.exit.us..critedge.loopexit_crit_edge, %.split.us.preheader, %_ZNK12V3NumberData3numEv.exit.us.peel, %.split, %bb.a
  %.4 = phi i1 [ false, %bb.a ], [ true, %.split ], [ true, %.split.us.preheader ], [ false, %_ZNK12V3NumberData3numEv.exit.us.peel ], [ false, %_ZNK12V3NumberData3numEv.exit.us..critedge.loopexit_crit_edge ], [ true, %.split.us.preheader17 ], [ true, %.split.us ]
  ret i1 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK8V3Number6isAllZEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !42    ; 2 uses
  %i.c = and i8 %i.b, -2
  %switch = icmp eq i8 %i.c, 2
  br i1 %switch, label %_ZNK8V3Number6bitIsZEi.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !41
  %.fr.i = freeze i32 %i.e                        ; 3 uses
  %i.f = add i8 %i.b, -3
  %spec.select.i.i = icmp ult i8 %i.f, -2
  %i.g = icmp slt i32 %.fr.i, 1                   ; 2 uses
  %invariant.op = or i1 %spec.select.i.i, %i.g
  br i1 %invariant.op, label %_ZNK8V3Number6bitIsZEi.exit.thread, label %tailrecurse.preheader.i.lr.ph

tailrecurse.preheader.i.lr.ph:                    ; preds = %.preheader
  %i.h = icmp samesign ult i32 %.fr.i, 129
  %i.i = load ptr, ptr %0, align 8
  %spec.select.i9.i = select i1 %i.h, ptr %0, ptr %i.i
  br label %tailrecurse.preheader.i

bb.b:                                             ; preds = %_ZNK8V3Number6bitIsZEi.exit
  %i.j = add nuw nsw i32 %.059, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.j, %.fr.i
  br i1 %exitcond.not, label %_ZNK8V3Number6bitIsZEi.exit.thread, label %tailrecurse.preheader.i, !llvm.loop !256

tailrecurse.preheader.i:                          ; preds = %tailrecurse.preheader.i.lr.ph, %bb.b
  %.059 = phi i32 [ 0, %tailrecurse.preheader.i.lr.ph ], [ %i.j, %bb.b ] ; 3 uses
  %i.k = lshr i32 %.059, 5
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i9.i, i64 %i.l ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.m, align 4, !tbaa !66
  %i.n = xor i32 %.sroa.0.0.copyload.i, -1
  %i.o = zext i32 %i.n to i64
  %i.p = and i32 %.059, 31
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw nsw i64 1, %i.q                  ; 2 uses
  %i.s = and i64 %i.r, %i.o
  %.not7.i = icmp eq i64 %i.s, 0
  br i1 %.not7.i, label %_ZNK8V3Number6bitIsZEi.exit.thread, label %_ZNK8V3Number6bitIsZEi.exit

_ZNK8V3Number6bitIsZEi.exit:                      ; preds = %tailrecurse.preheader.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !66
  %i.t = zext i32 %.sroa.4.0.copyload.i to i64
  %i.u = and i64 %i.r, %i.t
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %_ZNK8V3Number6bitIsZEi.exit.thread, label %bb.b

_ZNK8V3Number6bitIsZEi.exit.thread:               ; preds = %tailrecurse.preheader.i, %_ZNK8V3Number6bitIsZEi.exit, %bb.b, %.preheader, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %i.g, %.preheader ], [ false, %_ZNK8V3Number6bitIsZEi.exit ], [ false, %tailrecurse.preheader.i ], [ true, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK8V3Number6isAnyXEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !42    ; 2 uses
  %i.c = and i8 %i.b, -2
  %switch = icmp eq i8 %i.c, 2
  br i1 %switch, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !41
  %.fr.i.i = freeze i32 %i.e                      ; 3 uses
  %i.f = icmp sgt i32 %.fr.i.i, 0
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.g = add i8 %i.b, -3
  %spec.select.i.i = icmp ult i8 %i.g, -2
  %i.h = icmp samesign ult i32 %.fr.i.i, 129
  %i.i = load ptr, ptr %0, align 8
  %spec.select.i11.i = select i1 %i.h, ptr %0, ptr %i.i
  br i1 %spec.select.i.i, label %.loopexit, label %_ZNK12V3NumberData3numEv.exit.i

_ZNK12V3NumberData3numEv.exit.i:                  ; preds = %.lr.ph, %_ZNK8V3Number6bitIsXEi.exit.thread
  %.059 = phi i32 [ %i.t, %_ZNK8V3Number6bitIsXEi.exit.thread ], [ 0, %.lr.ph ] ; 3 uses
  %i.j = lshr i32 %.059, 5
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i11.i, i64 %i.k ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.l, align 4, !tbaa !66
  %i.m = zext i32 %.sroa.0.0.copyload.i to i64
  %i.n = and i32 %.059, 31
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = and i64 %i.p, %i.m
  %.not7.i = icmp eq i64 %i.q, 0
  br i1 %.not7.i, label %_ZNK8V3Number6bitIsXEi.exit.thread, label %_ZNK8V3Number6bitIsXEi.exit

_ZNK8V3Number6bitIsXEi.exit:                      ; preds = %_ZNK12V3NumberData3numEv.exit.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !66
  %i.r = zext i32 %.sroa.4.0.copyload.i.i to i64
  %i.s = and i64 %i.p, %i.r
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %_ZNK8V3Number6bitIsXEi.exit.thread, label %.loopexit

_ZNK8V3Number6bitIsXEi.exit.thread:               ; preds = %_ZNK12V3NumberData3numEv.exit.i, %_ZNK8V3Number6bitIsXEi.exit
  %i.t = add nuw nsw i32 %.059, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.t, %.fr.i.i
  br i1 %exitcond.not, label %.loopexit, label %_ZNK12V3NumberData3numEv.exit.i, !llvm.loop !257

.loopexit:                                        ; preds = %_ZNK8V3Number6bitIsXEi.exit.thread, %_ZNK8V3Number6bitIsXEi.exit, %.preheader, %.lr.ph, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %.lr.ph ], [ false, %.preheader ], [ false, %_ZNK8V3Number6bitIsXEi.exit.thread ], [ true, %_ZNK8V3Number6bitIsXEi.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK8V3Number6isAnyZEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !42    ; 2 uses
  %i.c = and i8 %i.b, -2
  %switch = icmp eq i8 %i.c, 2
  br i1 %switch, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !41
  %.fr.i = freeze i32 %i.e                        ; 3 uses
  %i.f = icmp sgt i32 %.fr.i, 0
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.g = add i8 %i.b, -3
  %spec.select.i.i = icmp ult i8 %i.g, -2
  %i.h = icmp samesign ult i32 %.fr.i, 129
  %i.i = load ptr, ptr %0, align 8
  %spec.select.i9.i = select i1 %i.h, ptr %0, ptr %i.i
  br i1 %spec.select.i.i, label %.loopexit, label %tailrecurse.preheader.i

tailrecurse.preheader.i:                          ; preds = %.lr.ph, %_ZNK8V3Number6bitIsZEi.exit.thread
  %.059 = phi i32 [ %i.u, %_ZNK8V3Number6bitIsZEi.exit.thread ], [ 0, %.lr.ph ] ; 3 uses
  %i.j = lshr i32 %.059, 5
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i9.i, i64 %i.k ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.l, align 4, !tbaa !66
  %i.m = xor i32 %.sroa.0.0.copyload.i, -1
  %i.n = zext i32 %i.m to i64
  %i.o = and i32 %.059, 31
  %i.p = zext nneg i32 %i.o to i64
  %i.q = shl nuw nsw i64 1, %i.p                  ; 2 uses
  %i.r = and i64 %i.q, %i.n
  %.not7.i = icmp eq i64 %i.r, 0
  br i1 %.not7.i, label %_ZNK8V3Number6bitIsZEi.exit.thread, label %_ZNK8V3Number6bitIsZEi.exit

_ZNK8V3Number6bitIsZEi.exit:                      ; preds = %tailrecurse.preheader.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !66
  %i.s = zext i32 %.sroa.4.0.copyload.i to i64
  %i.t = and i64 %i.q, %i.s
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %_ZNK8V3Number6bitIsZEi.exit.thread, label %.loopexit

_ZNK8V3Number6bitIsZEi.exit.thread:               ; preds = %tailrecurse.preheader.i, %_ZNK8V3Number6bitIsZEi.exit
  %i.u = add nuw nsw i32 %.059, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.u, %.fr.i
  br i1 %exitcond.not, label %.loopexit, label %tailrecurse.preheader.i, !llvm.loop !258

.loopexit:                                        ; preds = %_ZNK8V3Number6bitIsZEi.exit.thread, %_ZNK8V3Number6bitIsZEi.exit, %.preheader, %.lr.ph, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %.lr.ph ], [ false, %.preheader ], [ false, %_ZNK8V3Number6bitIsZEi.exit.thread ], [ true, %_ZNK8V3Number6bitIsZEi.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK8V3Number10toDecimalSB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.V3Number, align 8            ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !42    ; 2 uses
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %_ZNK8V3Number10isNegativeEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !41   ; 3 uses
  %i.f = add i8 %i.b, -3
  %spec.select.i.i.i = icmp ult i8 %i.f, -2
  %i.g = icmp slt i32 %i.e, 1
  %or.cond.i.i = or i1 %spec.select.i.i.i, %i.g
  br i1 %or.cond.i.i, label %_ZNK8V3Number10isNegativeEv.exit.thread, label %_ZNK12V3NumberData3numEv.exit.i.i

_ZNK12V3NumberData3numEv.exit.i.i:                ; preds = %bb.b
  %i.h = add nsw i32 %i.e, -1                     ; 2 uses
  %i.i = icmp samesign ult i32 %i.e, 129
  %i.j = load ptr, ptr %1, align 8
  %spec.select.i10.i.i = select i1 %i.i, ptr %1, ptr %i.j
  %i.k = lshr i32 %i.h, 5
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i10.i.i, i64 %i.l ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.m, align 4, !tbaa !66
  %i.n = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.o = and i32 %i.h, 31
  %i.p = zext nneg i32 %i.o to i64
  %i.q = shl nuw nsw i64 1, %i.p                  ; 2 uses
  %i.r = and i64 %i.q, %i.n
  %.not7.i.i = icmp eq i64 %i.r, 0
  br i1 %.not7.i.i, label %_ZNK8V3Number10isNegativeEv.exit.thread, label %_ZNK8V3Number10isNegativeEv.exit

_ZNK8V3Number10isNegativeEv.exit:                 ; preds = %_ZNK12V3NumberData3numEv.exit.i.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !66
  %i.s = zext i32 %.sroa.4.0.copyload.i.i to i64
  %i.t = and i64 %i.q, %i.s
  %.not8.i.i = icmp eq i64 %i.t, 0
  br i1 %.not8.i.i, label %bb.c, label %_ZNK8V3Number10isNegativeEv.exit.thread

bb.c:                                             ; preds = %_ZNK8V3Number10isNegativeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZN12V3NumberDataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false)
  %i.w = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number8opNegateERKS_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.d unwind label %bb.k       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.x, ptr %3, align 8, !tbaa !15, !alias.scope !278
  store i8 45, ptr %i.x, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.y, align 8, !tbaa !20, !alias.scope !278
end_hunk_2
