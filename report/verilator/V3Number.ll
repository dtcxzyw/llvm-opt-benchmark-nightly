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
  %.0228 = phi ptr [ %1, %_ZN12V3NumberData8setLogicEv.exit ], [ %i.aq, %bb.e ] ; 2 uses
  %i.ap = load i8, ptr %.0228, align 1, !tbaa !23
  switch i8 %i.ap, label %bb.e [
    i8 0, label %.thread
    i8 39, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %.0228, i64 1
  br label %bb.d, !llvm.loop !92

bb.f:                                             ; preds = %bb.d
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

.thread:                                          ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303
  %.not263484 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303 ], [ true, %bb.d ]
  %.0250 = phi i1 [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303 ], [ false, %bb.d ] ; 4 uses
  %.1248 = phi i8 [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303 ], [ 100, %bb.d ] ; 4 uses
  %.1225 = phi ptr [ %spec.select291, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303 ], [ %1, %bb.d ] ; 2 uses
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
