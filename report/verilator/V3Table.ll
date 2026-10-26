Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Table?download=true
inline.NumInlined: 3876
inline.NumDeleted: 1079
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK17AstNodeArrayDType13elementsConstEv:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !194  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK8AstRange9leftConstEv.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i16, ptr %i.e, align 8, !tbaa !204
  %i.f = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i.i, 121
  br i1 %i.f, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i, label %_ZNK8AstRange9leftConstEv.exit.i.i

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.h = tail call noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.g)
  br label %_ZNK8AstRange9leftConstEv.exit.i.i

_ZNK8AstRange9leftConstEv.exit.i.i:               ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i, %bb.b, %bb.a
  %i.i = phi i32 [ %i.h, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i ], [ 0, %bb.a ], [ 0, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !205  ; 3 uses
  %.not.i.i4.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i4.i.i, label %_ZNK8AstRange7hiConstEv.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK8AstRange9leftConstEv.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %.sroa.0.0.copyload.i.i.i.i5.i.i = load i16, ptr %i.l, align 8, !tbaa !204
  %i.m = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i5.i.i, 121
  br i1 %i.m, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i, label %_ZNK8AstRange7hiConstEv.exit.i

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.o = tail call noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.n)
  br label %_ZNK8AstRange7hiConstEv.exit.i

_ZNK8AstRange7hiConstEv.exit.i:                   ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i, %bb.c, %_ZNK8AstRange9leftConstEv.exit.i.i
  %i.p = phi i32 [ %i.o, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i ], [ 0, %_ZNK8AstRange9leftConstEv.exit.i.i ], [ 0, %bb.c ]
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !194  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i1.i, label %_ZNK8AstRange9leftConstEv.exit.i3.i, label %bb.d

bb.d:                                             ; preds = %_ZNK8AstRange7hiConstEv.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i2.i = load i16, ptr %i.r, align 8, !tbaa !204
  %i.s = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i2.i, 121
  br i1 %i.s, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i7.i, label %_ZNK8AstRange9leftConstEv.exit.i3.i

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i7.i: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  %i.u = tail call noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.t)
  br label %_ZNK8AstRange9leftConstEv.exit.i3.i

_ZNK8AstRange9leftConstEv.exit.i3.i:              ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i7.i, %bb.d, %_ZNK8AstRange7hiConstEv.exit.i
  %i.v = phi i32 [ %i.u, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i7.i ], [ 0, %_ZNK8AstRange7hiConstEv.exit.i ], [ 0, %bb.d ]
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !205  ; 3 uses
  %.not.i.i4.i4.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i4.i4.i, label %_ZNK8AstRange13elementsConstEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8AstRange9leftConstEv.exit.i3.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %.sroa.0.0.copyload.i.i.i.i5.i5.i = load i16, ptr %i.x, align 8, !tbaa !204
  %i.y = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i5.i5.i, 121
  br i1 %i.y, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i6.i, label %_ZNK8AstRange13elementsConstEv.exit

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i6.i: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  %i.aa = tail call noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.z)
  br label %_ZNK8AstRange13elementsConstEv.exit

_ZNK8AstRange13elementsConstEv.exit:              ; preds = %_ZNK8AstRange9leftConstEv.exit.i3.i, %bb.e, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i6.i
  %i.ab = phi i32 [ %i.aa, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i6.i ], [ 0, %_ZNK8AstRange9leftConstEv.exit.i3.i ], [ 0, %bb.e ]
  %i.ac = tail call noundef i32 @llvm.smax.i32(i32 %i.i, i32 %i.p)
  %i.ad = tail call noundef i32 @llvm.smin.i32(i32 %i.v, i32 %i.ab)
  %i.ae = add i32 %i.ac, 1
  %i.af = sub i32 %i.ae, %i.ad
  ret i32 %i.af
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK17AstNodeArrayDType2loEv(ptr noundef nonnull align 8 dereferenceable(176) %0) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !205  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !194  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNK8AstRange9leftConstEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i = load i16, ptr %i.e, align 8, !tbaa !204
  %i.f = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i, 121
  br i1 %i.f, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i, label %_ZNK8AstRange9leftConstEv.exit.i

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.h = tail call noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.g)
  br label %_ZNK8AstRange9leftConstEv.exit.i

_ZNK8AstRange9leftConstEv.exit.i:                 ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i, %bb.b, %bb.a
  %i.i = phi i32 [ %i.h, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i ], [ 0, %bb.a ], [ 0, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !205  ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i4.i, label %_ZNK8AstRange7loConstEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK8AstRange9leftConstEv.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %.sroa.0.0.copyload.i.i.i.i5.i = load i16, ptr %i.l, align 8, !tbaa !204
  %i.m = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i5.i, 121
  br i1 %i.m, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i, label %_ZNK8AstRange7loConstEv.exit

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.o = tail call noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.n)
  br label %_ZNK8AstRange7loConstEv.exit

_ZNK8AstRange7loConstEv.exit:                     ; preds = %_ZNK8AstRange9leftConstEv.exit.i, %bb.c, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i
  %i.p = phi i32 [ %i.o, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i ], [ 0, %_ZNK8AstRange9leftConstEv.exit.i ], [ 0, %bb.c ]
  %i.q = tail call noundef i32 @llvm.smin.i32(i32 %i.i, i32 %i.p)
  ret i32 %i.q
}

declare void @_ZNK8V3Number5asciiB5cxx11Ebb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext, i1 noundef zeroext) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i16 @_ZNK6VNTypecvNS_2enEEv(ptr noundef nonnull align 2 dereferenceable(2) %0) #4 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !370
  ret i16 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode15unsafePrivateAsI14AstMemberDTypeS_EEPT_PT0_(ptr noundef %0) #4 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8V3Number4initEP7AstNodeib(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN8V3Number5nodepEP7AstNode(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1)
  %i.a = icmp sgt i32 %2, -1
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i32 %2, 0                        ; 2 uses
  %spec.select = and i1 %i.b, %3
  %spec.select11 = select i1 %i.b, i32 %2, i32 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 5 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !211   ; 2 uses
  %i.e = icmp eq i8 %i.d, 3
  br i1 %i.e, label %bb.c, label %_ZN12V3NumberData13destroyStringEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN12V3NumberData13destroyStringEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.i = load i64, ptr %i.g, align 8, !tbaa !60
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #24
  %.pre.i = load i8, ptr %i.c, align 4, !tbaa !211
  br label %_ZN12V3NumberData13destroyStringEv.exit.i

_ZN12V3NumberData13destroyStringEv.exit.i:        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.b
  %i.k = phi i8 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.d, %bb.b ]
  %i.l = add i8 %i.k, -1
  %spec.select.i.i = icmp ult i8 %i.l, 2
  br i1 %spec.select.i.i, label %_ZN12V3NumberData8setLogicEv.exit, label %_ZN12V3NumberData13destroyStringEv.exit.thread.i

_ZN12V3NumberData13destroyStringEv.exit.thread.i: ; preds = %bb.c, %_ZN12V3NumberData13destroyStringEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !210  ; 2 uses
  %i.o = icmp slt i32 %i.n, 129
  br i1 %i.o, label %bb.d, label %vector.ph

bb.d:                                             ; preds = %_ZN12V3NumberData13destroyStringEv.exit.thread.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 32, i1 false)
  br label %_ZN12V3NumberData8setLogicEv.exit

vector.ph:                                        ; preds = %_ZN12V3NumberData13destroyStringEv.exit.thread.i
  %i.p = add nuw nsw i32 %i.n, 31
  %i.q = lshr i32 %i.p, 5
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 3 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #26 ; 7 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !214
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.u, ptr %i.v, align 8, !tbaa !215
  store i64 0, ptr %i.t, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.x = getelementptr i8, ptr %i.t, i64 %i.s     ; 2 uses
  %i.y = add nsw i64 %i.s, -16
  %i.z = lshr exact i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.ab = shl i64 %n.vec, 3
  %i.ac = getelementptr i8, ptr %i.w, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ad ; 2 uses
  %i.ae = load i64, ptr %i.t, align 4, !tbaa !107
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ae, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 4, !tbaa !107
  store <2 x i64> %broadcast.splat, ptr %i.af, align 4, !tbaa !107
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !698

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %middle.block, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ac, %middle.block ] ; 2 uses
  %i.ah = load i64, ptr %i.t, align 4, !tbaa !107
  store i64 %i.ah, ptr %.06.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !107
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ai, %i.x
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !699

_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %middle.block
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.aj, align 8, !tbaa !373
  br label %_ZN12V3NumberData8setLogicEv.exit

_ZN12V3NumberData8setLogicEv.exit:                ; preds = %_ZN12V3NumberData13destroyStringEv.exit.i, %bb.d, %_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit.i
  store i8 1, ptr %i.c, align 4, !tbaa !211
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !210
  tail call void @_ZN12V3NumberData6resizeEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %i.al)
  tail call void @_ZN12V3NumberData6resizeEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %spec.select11)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.an = zext i1 %spec.select to i8
  %i.ao = load i8, ptr %i.am, align 1
  %i.ap = and i8 %i.ao, -2
  %i.aq = or disjoint i8 %i.ap, %i.an
  store i8 %i.aq, ptr %i.am, align 1
  %i.ar = load i32, ptr %i.ak, align 8, !tbaa !210 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN12V3NumberData8setLogicEv.exit
  %i.at = load i8, ptr %i.c, align 4, !tbaa !211
  %i.au = add i8 %i.at, -1
  %spec.select.i.i12 = icmp ult i8 %i.au, 2
  br i1 %spec.select.i.i12, label %_ZN12V3NumberData3numEv.exit, label %bb.e, !prof !217

_ZN12V3NumberData3numEv.exit:                     ; preds = %.lr.ph, %_ZN12V3NumberData3numEv.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN12V3NumberData3numEv.exit ], [ 0, %.lr.ph ] ; 2 uses
  %i.av = phi i32 [ %i.az, %_ZN12V3NumberData3numEv.exit ], [ %i.ar, %.lr.ph ]
  %i.aw = icmp slt i32 %i.av, 129
  %i.ax = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.aw, ptr %0, ptr %i.ax
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %indvars.iv ; 2 uses
  store i32 0, ptr %i.ay, align 4, !tbaa !107
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !107
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = load i32, ptr %i.ak, align 8, !tbaa !210 ; 2 uses
  %i.ba = add nsw i32 %i.az, 31
  %i.bb = sdiv i32 %i.ba, 32
  %i.bc = sext i32 %i.bb to i64
  %i.bd = icmp slt i64 %indvars.iv.next, %i.bc
  br i1 %i.bd, label %_ZN12V3NumberData3numEv.exit, label %.loopexit, !llvm.loop !700

bb.e:                                             ; preds = %.lr.ph
  %i.be = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.64, i32 noundef 242) ; 0 uses
  %i.bf = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull @.str.65)
  %i.bh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.bh) #25
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !210 ; 3 uses
  %i.bk = icmp eq i32 %i.bj, 1
  br i1 %i.bk, label %_ZN12V3NumberData6resizeEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.off = add i32 %i.bj, -1
  %i.bl = icmp ult i32 %.off, 32
  br i1 %i.bl, label %.sink.split.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = icmp sgt i32 %i.bj, 128
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bo = load i8, ptr %i.bn, align 4
  %i.bp = icmp eq i8 %i.bo, 1
  %i.bq = select i1 %i.bm, i1 %i.bp, i1 false
  br i1 %i.bq, label %bb.i, label %.sink.split.i

bb.i:                                             ; preds = %bb.h
  %i.br = load ptr, ptr %0, align 8, !tbaa !214   ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !215
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(32) %i.br, i64 32, i1 false)
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #24
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h, %bb.i, %bb.g
  store i32 1, ptr %i.bi, align 8, !tbaa !210
  br label %_ZN12V3NumberData6resizeEi.exit

_ZN12V3NumberData6resizeEi.exit:                  ; preds = %bb.f, %.sink.split.i
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = and i8 %i.by, -2
  store i8 %i.bz, ptr %i.bx, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN12V3NumberData3numEv.exit, %_ZN12V3NumberData8setLogicEv.exit, %_ZN12V3NumberData6resizeEi.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK8V3Number8filelineEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !366
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12V3NumberDataD2Ev(ptr noundef nonnull align 8 dead_on_return(38) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !211   ; 2 uses
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN12V3NumberData18destroyStoredValueEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !60
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #24
  br label %_ZN12V3NumberData18destroyStoredValueEv.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !210
  %i.k = icmp sgt i32 %i.j, 128
  %i.l = icmp eq i8 %i.b, 1
  %i.m = and i1 %i.l, %i.k
  br i1 %i.m, label %bb.d, label %_ZN12V3NumberData18destroyStoredValueEv.exit

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !tbaa !214    ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZN12V3NumberData18destroyStoredValueEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !215
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #24
  br label %_ZN12V3NumberData18destroyStoredValueEv.exit

_ZN12V3NumberData18destroyStoredValueEv.exit:     ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.c, %bb.d, %bb.e
  ret void
}

declare void @_ZN8V3Number5nodepEP7AstNode(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12V3NumberData6resizeEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0 = alloca [4 x %"struct.V3NumberData::ValueAndX"], align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !210  ; 4 uses
  %i.c = icmp eq i32 %i.b, %1
  br i1 %i.c, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, 31
  %i.e = sdiv i32 %i.d, 32
  %i.f = add nsw i32 %1, 31
  %i.g = sdiv i32 %i.f, 32                        ; 3 uses
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %.sink.split, label %bb.c
end_hunk_0
begin_hunk_1_@_ZN12V3NumberData6resizeEi:bb.a
_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EED2Ev.exit: ; preds = %bb.d
  %i.aa = load ptr, ptr %0, align 8, !tbaa !214   ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !215
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %i.aa, i64 32, i1 false)
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #24
  br label %.sink.split

bb.i:                                             ; preds = %bb.c
  %i.ag = icmp slt i32 %i.b, 129
  %i.ah = add i8 %i.k, -1
  %spec.select.i = icmp ult i8 %i.ah, 2
  %i.ai = select i1 %i.ag, i1 %spec.select.i, i1 false
  %i.aj = icmp sgt i32 %1, 128
  %or.cond = and i1 %i.aj, %i.ai
  br i1 %or.cond, label %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i, label %.sink.split

_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !374
  %i.ak = zext nneg i32 %i.g to i64               ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %i.al = shl nuw nsw i64 %i.ak, 3
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #26 ; 7 uses
  store ptr %i.am, ptr %0, align 8, !tbaa !214
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ak
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !215
  store i64 0, ptr %i.am, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 5 uses
  %i.aq = add nsw i64 %i.ak, -1                   ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aq, 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx.i.i.i.i.i.i.i.i ; 3 uses
  %i.at = add nuw nsw i64 %i.ak, 2305843009213693950
  %i.au = and i64 %i.at, 2305843009213693951      ; 2 uses
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.au, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.j
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.aw = shl i64 %n.vec, 3
  %i.ax = getelementptr i8, ptr %i.ap, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.ay ; 2 uses
  %i.az = load i64, ptr %i.am, align 4, !tbaa !107
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.az, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 4, !tbaa !107
  store <2 x i64> %broadcast.splat, ptr %i.ba, align 4, !tbaa !107
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !701

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.j, %middle.block
  %.06.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ap, %bb.j ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.bc = load i64, ptr %i.am, align 4, !tbaa !107
  store i64 %i.bc, ptr %.06.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !107
  %i.bd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bd, %i.as
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !702

_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.ap, %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ], [ %i.as, %middle.block ], [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i.i, ptr %i.be, align 8, !tbaa !373
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EED2Ev.exit, %_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit, %bb.i, %bb.f, %bb.g, %bb.h, %_ZSt8_DestroyIPN12V3NumberData9ValueAndXES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.b
  store i32 %1, ptr %i.a, align 8, !tbaa !210
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8V3Number5wordsEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !210
  %i.c = add nsw i32 %i.b, 31
  %i.d = sdiv i32 %i.c, 32
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12V3NumberData8isStringEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !211
  %i.c = icmp eq i8 %i.b, 3
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12V3NumberData8isNumberEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !211
  %i.c = add i8 %i.b, -1
  %spec.select = icmp ult i8 %i.c, 2
  ret i1 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN12V3NumberData11bitsToWordsEi(i32 noundef %0) #4 comdat align 2 {
bb.a:
  %i.a = add nsw i32 %0, 31
  %i.b = sdiv i32 %i.a, 32
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12V3NumberData15isDynamicNumberEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !210
  %i.c = icmp sgt i32 %i.b, 128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i8, ptr %i.d, align 4
  %i.f = icmp eq i8 %i.e, 1
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  ret i1 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12V3NumberData14isInlineNumberEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !210
  %i.c = icmp slt i32 %i.b, 129
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i8, ptr %i.d, align 4
  %i.f = add i8 %i.e, -1
  %spec.select = icmp ult i8 %i.f, 2
  %i.g = select i1 %i.c, i1 %spec.select, i1 false
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !373  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !214    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !215
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.t = add i64 %1, 2305843009213693950
  %i.u = and i64 %i.t, 2305843009213693951        ; 2 uses
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.u, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.d
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.y ; 2 uses
  %i.z = load i64, ptr %i.b, align 4, !tbaa !107
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 4, !tbaa !107
  store <2 x i64> %broadcast.splat, ptr %i.aa, align 4, !tbaa !107
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !703

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.d, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.p, %bb.d ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ac = load i64, ptr %i.b, align 4, !tbaa !107
  store i64 %i.ac, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !107
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.s
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !704

_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.c
  %.0.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.s, %middle.block ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !373
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.ae = icmp ult i64 %i.n, %1
  br i1 %i.ae, label %bb.f, label %_ZNKSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #25
  unreachable

_ZNKSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.af = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.af, i64 1152921504606846975) ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #26 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.f ; 5 uses
  store i64 0, ptr %i.aj, align 4
  %i.ak = add nsw i64 %1, -1                      ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit35, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE12_M_check_lenEmPKc.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %.idx.i.i.i.i.i30 = shl nuw nsw i64 %i.ak, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i.i.i.i.i30
  %i.ao = add i64 %1, 2305843009213693950
  %i.ap = and i64 %i.ao, 2305843009213693951      ; 2 uses
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check45 = icmp samesign ult i64 %i.ap, 3
  br i1 %min.iters.check45, label %.lr.ph.i.i.i.i.i.i.i31.preheader, label %vector.ph46

vector.ph46:                                      ; preds = %bb.g
  %n.vec47 = and i64 %i.aq, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec47, 3
  %i.as = getelementptr i8, ptr %i.am, i64 %i.ar
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph46
  %index49 = phi i64 [ 0, %vector.ph46 ], [ %index.next53, %vector.body48 ] ; 2 uses
  %i.at = shl i64 %index49, 3
  %next.gep50 = getelementptr i8, ptr %i.am, i64 %i.at ; 2 uses
  %i.au = load i64, ptr %i.aj, align 4, !tbaa !107
  %broadcast.splatinsert51 = insertelement <2 x i64> poison, i64 %i.au, i64 0
  %broadcast.splat52 = shufflevector <2 x i64> %broadcast.splatinsert51, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep50, i64 16
  store <2 x i64> %broadcast.splat52, ptr %next.gep50, align 4, !tbaa !107
  store <2 x i64> %broadcast.splat52, ptr %i.av, align 4, !tbaa !107
  %index.next53 = add nuw i64 %index49, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next53, %n.vec47
  br i1 %i.aw, label %middle.block54, label %vector.body48, !llvm.loop !705

middle.block54:                                   ; preds = %vector.body48
  %cmp.n55 = icmp eq i64 %i.aq, %n.vec47
  br i1 %cmp.n55, label %_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31.preheader

.lr.ph.i.i.i.i.i.i.i31.preheader:                 ; preds = %bb.g, %middle.block54
  %.06.i.i.i.i.i.i.i32.ph = phi ptr [ %i.am, %bb.g ], [ %i.as, %middle.block54 ]
  br label %.lr.ph.i.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i.i31:                           ; preds = %.lr.ph.i.i.i.i.i.i.i31.preheader, %.lr.ph.i.i.i.i.i.i.i31
  %.06.i.i.i.i.i.i.i32 = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i31 ], [ %.06.i.i.i.i.i.i.i32.ph, %.lr.ph.i.i.i.i.i.i.i31.preheader ] ; 2 uses
  %i.ax = load i64, ptr %i.aj, align 4, !tbaa !107
  store i64 %i.ax, ptr %.06.i.i.i.i.i.i.i32, align 4, !tbaa !107
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i33 = icmp eq ptr %i.ay, %i.an
  br i1 %.not.i.i.i.i.i.i.i33, label %_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31, !llvm.loop !706

_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i.i.i.i.i31, %middle.block54, %_ZNKSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE12_M_check_lenEmPKc.exit
  %i.az = icmp sgt i64 %i.f, 0
  br i1 %i.az, label %bb.h, label %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit35
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit35, %bb.h
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN12V3NumberData9ValueAndXESaIS1_EE13_M_deallocateEPS1_m.exit38, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.ba = load ptr, ptr %i.h, align 8, !tbaa !215
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bc) #24
  br label %_ZNSt12_Vector_baseIN12V3NumberData9ValueAndXESaIS1_EE13_M_deallocateEPS1_m.exit38

_ZNSt12_Vector_baseIN12V3NumberData9ValueAndXESaIS1_EE13_M_deallocateEPS1_m.exit38: ; preds = %_ZNSt6vectorIN12V3NumberData9ValueAndXESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.i
  store ptr %i.ai, ptr %0, align 8, !tbaa !214
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %1
  store ptr %i.bd, ptr %i.a, align 8, !tbaa !373
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.be, ptr %i.h, align 8, !tbaa !215
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN12V3NumberData9ValueAndXEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN12V3NumberData9ValueAndXESaIS1_EE13_M_deallocateEPS1_m.exit38, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8V3Number5widthEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !210
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK12V3NumberData5widthEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !210
  ret i32 %i.b
}

; Function Attrs: noreturn
declare void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112)) #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #0 comdat {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !707
  switch i8 %i.a, label %bb.f [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.66, i64 noundef 13) ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.67, i64 noundef 5) ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.68, i64 noundef 6) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.69, i64 noundef 6) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  ret ptr %0
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14AstMemberDType11childDTypepEv(ptr noundef nonnull align 8 dereferenceable(248) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !194
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstNode8typeNameEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i = load i16, ptr %i.a, align 8, !tbaa !204
  %i.b = zext i16 %.sroa.0.0.copyload.i to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !218
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK6VNType5asciiEv(ptr noundef nonnull align 2 dereferenceable(2) %0) #4 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !370
  %i.b = zext i16 %i.a to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !218
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17AstNodeArrayDType11childDTypepEv(ptr noundef nonnull align 8 dereferenceable(176) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !194
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17AstNodeArrayDType6rangepEv(ptr noundef nonnull align 8 dereferenceable(176) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !205
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8AstRange13elementsConstEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !194  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNK8AstRange9leftConstEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i = load i16, ptr %i.c, align 8, !tbaa !204
  %i.d = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i, 121
  br i1 %i.d, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i, label %_ZNK8AstRange9leftConstEv.exit.i

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.f = tail call noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.e)
  br label %_ZNK8AstRange9leftConstEv.exit.i

_ZNK8AstRange9leftConstEv.exit.i:                 ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i, %bb.b, %bb.a
  %i.g = phi i32 [ %i.f, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i ], [ 0, %bb.a ], [ 0, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !205  ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i4.i, label %_ZNK8AstRange7hiConstEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK8AstRange9leftConstEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %.sroa.0.0.copyload.i.i.i.i5.i = load i16, ptr %i.j, align 8, !tbaa !204
  %i.k = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i5.i, 121
  br i1 %i.k, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i, label %_ZNK8AstRange7hiConstEv.exit

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  %i.m = tail call noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.l)
  br label %_ZNK8AstRange7hiConstEv.exit

_ZNK8AstRange7hiConstEv.exit:                     ; preds = %_ZNK8AstRange9leftConstEv.exit.i, %bb.c, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i
  %i.n = phi i32 [ %i.m, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i ], [ 0, %_ZNK8AstRange9leftConstEv.exit.i ], [ 0, %bb.c ]
end_hunk_1
begin_hunk_2_@_ZN15SimulateVisitor19handleAssignRecurseEP13AstNodeAssignP11AstNodeExprS3_:bb.a

bb.t:                                             ; preds = %.noexc128, %_ZNK7AstNode5widthEv.exit
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.dc, %bb.t ], [ %i.bk, %bb.n ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 208) #24
  br label %bb.aj

bb.u:                                             ; preds = %.noexc137, %_ZNK7AstNode8widthMinEv.exit
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %.body139

.body139:                                         ; preds = %bb.r, %bb.u
  %eh.lpad-body140 = phi { ptr, i32 } [ %i.dd, %bb.u ], [ %i.cq, %bb.r ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef 208) #24
  br label %bb.aj

tailrecurse.outer:                                ; preds = %_ZNK7AstNode5widthEv.exit143, %bb.k
  %i.de = getelementptr inbounds nuw i8, ptr %.tr199229, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !194 ; 2 uses
  tail call void @_ZN15SimulateVisitor19handleAssignRecurseEP13AstNodeAssignP11AstNodeExprS3_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %i.df, ptr noundef %i.df)
  %i.dg = load ptr, ptr %i.ab, align 8, !tbaa !205 ; 2 uses
  %i.dh = load ptr, ptr %i.d, align 8, !tbaa !207
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %.lr.ph, label %.critedge107

_ZN7AstNode4castI12AstReplicate11AstNodeExprEEPT_PT0_.exit: ; preds = %bb.c
  tail call void @_ZN15SimulateVisitor13checkNodeInfoEP7AstNodeb(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull %.tr199229, i1 noundef zeroext false)
  %i.dj = getelementptr inbounds nuw i8, ptr %.tr199229, i64 32 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !205 ; 2 uses
  %.not.i147 = icmp eq ptr %i.dk, null
  br i1 %.not.i147, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.thread, label %_ZN14VNVisitorConst23iterateAndNextConstNullEP7AstNode.exit, !prof !57

_ZN14VNVisitorConst23iterateAndNextConstNullEP7AstNode.exit: ; preds = %_ZN7AstNode4castI12AstReplicate11AstNodeExprEEPT_PT0_.exit
  tail call void @_ZN7AstNode19iterateAndNextConstER14VNVisitorConst(ptr noundef nonnull align 8 dereferenceable(152) %i.dk, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.pr = load ptr, ptr %i.dj, align 8, !tbaa !205 ; 3 uses
  %.not.i148 = icmp eq ptr %.pr, null
  br i1 %.not.i148, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZN14VNVisitorConst23iterateAndNextConstNullEP7AstNode.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %.pr, i64 64
  %.sroa.0.0.copyload.i.i.i149 = load i16, ptr %i.dl, align 8, !tbaa !204
  %i.dm = icmp eq i16 %.sroa.0.0.copyload.i.i.i149, 121
  br i1 %i.dm, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.thread

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit: ; preds = %bb.v
  %i.dn = getelementptr inbounds nuw i8, ptr %.pr, i64 152
  %i.do = tail call noundef zeroext i1 @_ZNK8V3Number7isEqOneEv(ptr noundef nonnull align 8 dereferenceable(56) %i.dn)
  br i1 %i.do, label %.critedge, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.thread

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.thread: ; preds = %_ZN7AstNode4castI12AstReplicate11AstNodeExprEEPT_PT0_.exit, %bb.v, %_ZN14VNVisitorConst23iterateAndNextConstNullEP7AstNode.exit, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.dp, ptr %6, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 29, ptr %i.a, align 8, !tbaa !173
  %i.dq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc153 unwind label %bb.x  ; 2 uses

.noexc153:                                        ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.thread
  store ptr %i.dq, ptr %6, align 8, !tbaa !58
  %i.dr = load i64, ptr %i.a, align 8, !tbaa !173 ; 3 uses
  store i64 %i.dr, ptr %i.dp, align 8, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.dq, ptr noundef nonnull align 1 dereferenceable(29) @.str.615, i64 29, i1 false)
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !59
  %i.dt = load ptr, ptr %6, align 8, !tbaa !58
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dr
  store i8 0, ptr %i.du, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  invoke void @_ZN15SimulateVisitor16clearOptimizableEP7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull %.tr199229, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %.noexc153
  %i.dv = load ptr, ptr %6, align 8, !tbaa !58    ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.dp
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %bb.w
  %i.dx = load i64, ptr %i.dp, align 8, !tbaa !60
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.critedge107

bb.x:                                             ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.thread
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

bb.y:                                             ; preds = %.noexc153
  %i.ea = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eb = load ptr, ptr %6, align 8, !tbaa !58    ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.dp
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %bb.y
  %i.ed = load i64, ptr %i.dp, align 8, !tbaa !60
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158, %bb.x
  %.pn94 = phi { ptr, i32 } [ %i.dz, %bb.x ], [ %i.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158 ], [ %i.ea, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.aj

.critedge:                                        ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %.tr199229, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !194
  %i.eh = load ptr, ptr %i.d, align 8, !tbaa !207
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %bb.b, label %.critedge107

_ZN7AstNode4castI6AstSel11AstNodeExprEEPT_PT0_.exit: ; preds = %bb.c
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.ek = load i8, ptr %i.ej, align 2, !tbaa !224, !range !171, !noundef !172
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %_ZN7AstNode4castI6AstSel11AstNodeExprEEPT_PT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.613, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN15SimulateVisitor16clearOptimizableEP7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull %.tr199229, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.critedge105 unwind label %bb.ac

.critedge105:                                     ; preds = %bb.aa
  %i.em = load ptr, ptr %7, align 8, !tbaa !58    ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %.critedge105
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !60
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %.critedge105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.critedge107

bb.ab:                                            ; preds = %bb.z
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

bb.ac:                                            ; preds = %bb.aa
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.et = load ptr, ptr %7, align 8, !tbaa !58    ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %bb.ac
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !60
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167, %bb.ab
  %.pn90 = phi { ptr, i32 } [ %i.er, %bb.ab ], [ %i.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167 ], [ %i.es, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.aj

bb.ad:                                            ; preds = %_ZN7AstNode4castI6AstSel11AstNodeExprEEPT_PT0_.exit
  tail call void @_ZN15SimulateVisitor15handleAssignSelEP13AstNodeAssignP6AstSelP11AstNodeExpr(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef nonnull %.tr199229, ptr noundef %.tr200.ph231)
  br label %.critedge107

bb.ae:                                            ; preds = %bb.c
  %i.ey = load i8, ptr %i.g, align 8, !tbaa !206, !range !171, !noundef !172
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %_ZN14VNVisitorConst23iterateAndNextConstNullEP7AstNode.exit173, label %_ZN7AstNode4castI9AstVarRef11AstNodeExprEEPT_PT0_.exit

_ZN14VNVisitorConst23iterateAndNextConstNullEP7AstNode.exit173: ; preds = %bb.ae
  tail call void @_ZN7AstNode19iterateAndNextConstER14VNVisitorConst(ptr noundef nonnull align 8 dereferenceable(152) %.tr199229, ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %.critedge107

_ZN7AstNode4castI9AstVarRef11AstNodeExprEEPT_PT0_.exit: ; preds = %bb.ae
  %i.fa = tail call noundef ptr @_ZNK15SimulateVisitor10varOrScopeEP9AstVarRef(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull %.tr199229)
  %i.fb = tail call noundef ptr @_ZN15SimulateVisitor10fetchValueEP7AstNode(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %.tr200.ph231)
  tail call void @_ZN15SimulateVisitor14assignOutValueEPK13AstNodeAssignP7AstNodePK11AstNodeExpr(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %i.fa, ptr noundef %i.fb)
  br label %.critedge107

_ZN7AstNode2isI9AstVarRef11AstNodeExprEEbPKT0_.exit.thread: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.616, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %_ZN7AstNode2isI9AstVarRef11AstNodeExprEEbPKT0_.exit.thread
  invoke void @_ZN15SimulateVisitor16clearOptimizableEP7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %.tr199229, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.fc = load ptr, ptr %9, align 8, !tbaa !58    ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %bb.ag
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !60
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %.critedge107

bb.ah:                                            ; preds = %_ZN7AstNode2isI9AstVarRef11AstNodeExprEEbPKT0_.exit.thread
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

bb.ai:                                            ; preds = %bb.af
  %i.fi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fj = load ptr, ptr %9, align 8, !tbaa !58    ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %bb.ai
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !60
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.fh, %bb.ah ], [ %i.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180 ], [ %i.fi, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.aj

.critedge107:                                     ; preds = %tailrecurse.outer, %.critedge, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %_ZN7AstNode4castI9AstVarRef11AstNodeExprEEPT_PT0_.exit, %_ZN14VNVisitorConst23iterateAndNextConstNullEP7AstNode.exit173, %bb.ad, %bb.g
  ret void

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %.body, %.body139, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %.pn101.pn = phi { ptr, i32 } [ %.pn101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111 ], [ %eh.lpad-body140, %.body139 ], [ %eh.lpad-body, %.body ], [ %.pn97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ], [ %.pn94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ], [ %.pn90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182 ]
  resume { ptr, i32 } %.pn101.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode15unsafePrivateAsI9AstVarRef11AstNodeExprEEPT_PT0_(ptr noundef %0) #4 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode4castI11AstArraySel11AstNodeExprEEPT_PT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !204
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 279
  %spec.select = select i1 %i.b, ptr %0, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15SimulateVisitor17handleAssignArrayEP13AstNodeAssignP11AstArraySelP11AstNodeExpr(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  tail call void @_ZN15SimulateVisitor13checkNodeInfoEP7AstNodeb(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %2, i1 noundef zeroext false)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !205  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN14VNVisitorConst23iterateAndNextConstNullEP7AstNode.exit, label %bb.b, !prof !57

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7AstNode19iterateAndNextConstER14VNVisitorConst(ptr noundef nonnull align 8 dereferenceable(152) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %_ZN14VNVisitorConst23iterateAndNextConstNullEP7AstNode.exit

_ZN14VNVisitorConst23iterateAndNextConstNullEP7AstNode.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !194  ; 6 uses
  %.not.i114 = icmp eq ptr %i.g, null
  br i1 %.not.i114, label %.noexc.i, label %bb.c

bb.c:                                             ; preds = %_ZN14VNVisitorConst23iterateAndNextConstNullEP7AstNode.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.h, align 8, !tbaa !204
  %i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 369
  br i1 %i.i, label %_ZN7AstNode4castI9AstVarRef11AstNodeExprEEPT_PT0_.exit, label %.noexc.i

.noexc.i:                                         ; preds = %_ZN14VNVisitorConst23iterateAndNextConstNullEP7AstNode.exit, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 38, ptr %i.b, align 8, !tbaa !173
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.k, ptr %4, align 8, !tbaa !58
  %i.l = load i64, ptr %i.b, align 8, !tbaa !173  ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.k, ptr noundef nonnull align 1 dereferenceable(38) @.str.617, i64 38, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !59
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  store i8 0, ptr %i.n, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  invoke void @_ZN15SimulateVisitor16clearOptimizableEP7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %i.g, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %.noexc
  %i.o = load ptr, ptr %4, align 8, !tbaa !58     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.j
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.q = load i64, ptr %i.j, align 8, !tbaa !60
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.cx

bb.e:                                             ; preds = %.noexc.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

bb.f:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %4, align 8, !tbaa !58     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.j
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %bb.f
  %i.w = load i64, ptr %i.j, align 8, !tbaa !60
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115, %bb.e
  %.pn = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115 ], [ %i.t, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.cy

_ZN7AstNode4castI9AstVarRef11AstNodeExprEEPT_PT0_.exit: ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !84   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !85 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = select i1 %.not.i.i, ptr %i.ad, ptr %i.ab
  %i.af = tail call noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %i.ae, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true) ; 6 uses
  %.not.i118 = icmp eq ptr %i.af, null
  br i1 %.not.i118, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN7AstNode4castI9AstVarRef11AstNodeExprEEPT_PT0_.exit
end_hunk_2
