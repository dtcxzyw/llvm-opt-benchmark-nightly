Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/float_points_tree_encoder?download=true
inline.NumInlined: 1853
inline.NumDeleted: 689
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE12EncodePointsIN9__gnu_cxx17__normal_iteratorIPNS_7VectorDIjLi3EEESt6vectorIS6_SaIS6_EEEEEEbT_SC_RKjPNS_13EncoderBufferE:bb.a
  ret i1 true
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi0EED2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #17
  br label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i:  ; preds = %bb.b, %.lr.ph.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !60
  br label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.l = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !65
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #17
  br label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !60   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !61   ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i9, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5
  %.05.i.i.i3 = phi ptr [ %i.ab, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5 ], [ %i.s, %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit ] ; 3 uses
  %i.v = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i.i.i.i.i4 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i4, label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i2
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !63
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #17
  br label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5

_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5: ; preds = %bb.d, %.lr.ph.i.i.i2
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 24 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.ab, %i.u
  br i1 %.not.i.i.i6, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i7, label %.lr.ph.i.i.i2, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i7: ; preds = %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5
  %.pr.i8 = load ptr, ptr %i.r, align 8, !tbaa !60
  br label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i9

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i9: ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i7, %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit
  %i.ac = phi ptr [ %.pr.i8, %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i7 ], [ %i.s, %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i10 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i10, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit11, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i9
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !65
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #17
  br label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit11

_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit11:       ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i9, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit11
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !63
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit11, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIjSaIjEED2Ev.exit14, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !63
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit14

_ZNSt6vectorIjSaIjEED2Ev.exit14:                  ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIjSaIjEED2Ev.exit16, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit14
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !63
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit16

_ZNSt6vectorIjSaIjEED2Ev.exit16:                  ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit14, %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN5draco16DirectBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.bd) #16
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN5draco16DirectBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.be) #16
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN5draco16DirectBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.bf) #16
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5draco16DirectBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.bg) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi1EEC2Ej(ptr noundef nonnull align 8 dereferenceable(264) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.2", align 8     ; 13 uses
  %3 = alloca %"class.std::vector.2", align 8     ; 12 uses
  store i32 0, ptr %0, align 8, !tbaa !67
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !68
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZN5draco16DirectBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  invoke void @_ZN5draco16DirectBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  invoke void @_ZN5draco16DirectBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.c unwind label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  invoke void @_ZN5draco16DirectBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %bb.d unwind label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.g = zext i32 %1 to i64                       ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %1, 0               ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = shl nuw nsw i64 %i.g, 2                  ; 12 uses
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #18
          to label %.noexc unwind label %bb.r     ; 4 uses

.noexc:                                           ; preds = %bb.e
  store ptr %i.i, ptr %i.f, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.j, ptr %i.k, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.i, i8 0, i64 range(i64 0, 17179869181) %i.h, i1 false), !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.l, ptr %i.m, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #18
          to label %.noexc35 unwind label %bb.s   ; 4 uses

.noexc35:                                         ; preds = %.noexc
  store ptr %i.o, ptr %i.n, align 8, !tbaa !62
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.p, ptr %i.q, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.o, i8 0, i64 range(i64 0, 17179869181) %i.h, i1 false), !tbaa !44
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.r, ptr %i.s, align 8, !tbaa !69
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #18
          to label %.noexc43 unwind label %bb.t   ; 4 uses

.noexc43:                                         ; preds = %.noexc35
  store ptr %i.u, ptr %i.t, align 8, !tbaa !62
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.v, ptr %i.w, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.u, i8 0, i64 range(i64 0, 17179869181) %i.h, i1 false), !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.x, ptr %i.y, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #18
          to label %.noexc51 unwind label %bb.u   ; 4 uses

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50: ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %.loopexit98

.noexc51:                                         ; preds = %.noexc43
  %i.ac = shl i32 %1, 5
  %i.ad = or disjoint i32 %i.ac, 1
  %i.ae = zext i32 %i.ad to i64
  store ptr %i.z, ptr %2, align 8, !tbaa !62
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.g
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.z, i8 0, i64 range(i64 0, 17179869181) %i.h, i1 false), !tbaa !44
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.h
  br label %.loopexit98

.loopexit98:                                      ; preds = %.noexc51, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50
  %i.ai = phi i64 [ 1, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50 ], [ %i.ae, %.noexc51 ] ; 5 uses
  %i.aj = phi ptr [ %i.aa, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50 ], [ %i.n, %.noexc51 ] ; 3 uses
  %i.ak = phi ptr [ %i.ab, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50 ], [ %i.t, %.noexc51 ] ; 3 uses
  %.0.i.i.i.i.i.i.i49 = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50 ], [ %i.ah, %.noexc51 ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.0.i.i.i.i.i.i.i49, ptr %i.am, align 8, !tbaa !69
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %i.an = mul nuw nsw i64 %i.ai, 24               ; 2 uses
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #18
          to label %.noexc54 unwind label %bb.v   ; 4 uses

.noexc54:                                         ; preds = %.loopexit98
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !60
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !61
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.ai
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !65
  %i.as = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIjSaIjEEmS2_ET_S4_T0_RKT1_(ptr noundef nonnull %i.ao, i64 noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %.noexc54
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !60 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !65
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #17
  br label %.body

bb.h:                                             ; preds = %.noexc54
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !61
  %i.az = load ptr, ptr %2, align 8, !tbaa !62    ; 3 uses
  %.not.i.i.i55 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !63
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i61, label %bb.j

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i61: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %.loopexit

bb.j:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.bf = shl nuw nsw i64 %i.g, 2                 ; 3 uses
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #18
          to label %.noexc62 unwind label %bb.x   ; 4 uses

.noexc62:                                         ; preds = %bb.j
  store ptr %i.bg, ptr %3, align 8, !tbaa !62
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.g
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !63
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bg, i8 0, i64 range(i64 0, 17179869181) %i.bf, i1 false), !tbaa !44
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf
  br label %.loopexit

.loopexit:                                        ; preds = %.noexc62, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i61
  %.0.i.i.i.i.i.i.i60 = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i61 ], [ %i.bj, %.noexc62 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.0.i.i.i.i.i.i.i60, ptr %i.bk, align 8, !tbaa !69
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i8 0, i64 24, i1 false)
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #18
          to label %.noexc67 unwind label %bb.y   ; 4 uses

.noexc67:                                         ; preds = %.loopexit
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !60
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !61
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.ai
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !65
  %i.bq = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIjSaIjEEmS2_ET_S4_T0_RKT1_(ptr noundef nonnull %i.bm, i64 noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %.noexc67
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %i.bl, align 8, !tbaa !60 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i65, label %.body68, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !65
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bw) #17
  br label %.body68

bb.m:                                             ; preds = %.noexc67
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !61
  %i.bx = load ptr, ptr %3, align 8, !tbaa !62    ; 3 uses
  %.not.i.i.i71 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i71, label %_ZNSt6vectorIjSaIjEED2Ev.exit72, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !63
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit72

_ZNSt6vectorIjSaIjEED2Ev.exit72:                  ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

bb.o:                                             ; preds = %bb.a
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.p:                                             ; preds = %bb.b
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.q:                                             ; preds = %bb.c
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.r:                                             ; preds = %bb.e
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit82

bb.s:                                             ; preds = %.noexc
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit80

bb.t:                                             ; preds = %.noexc35
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit78

bb.u:                                             ; preds = %.noexc43
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit74

bb.v:                                             ; preds = %.loopexit98
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.g, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.ck, %bb.v ], [ %i.at, %bb.g ], [ %i.at, %bb.f ] ; 2 uses
  %i.cl = load ptr, ptr %2, align 8, !tbaa !62    ; 3 uses
  %.not.i.i.i73 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i73, label %_ZNSt6vectorIjSaIjEED2Ev.exit74, label %bb.w

bb.w:                                             ; preds = %.body
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !63
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cq) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit74

_ZNSt6vectorIjSaIjEED2Ev.exit74:                  ; preds = %bb.w, %.body, %bb.u
  %i.cr = phi ptr [ %i.n, %bb.u ], [ %i.aj, %.body ], [ %i.aj, %bb.w ]
  %i.cs = phi ptr [ %i.t, %bb.u ], [ %i.ak, %.body ], [ %i.ak, %bb.w ]
  %.pn = phi { ptr, i32 } [ %i.cj, %bb.u ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.aa

bb.x:                                             ; preds = %bb.j
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit76

bb.y:                                             ; preds = %.loopexit
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body68

.body68:                                          ; preds = %bb.k, %bb.l, %bb.y
  %eh.lpad-body69 = phi { ptr, i32 } [ %i.cu, %bb.y ], [ %i.br, %bb.l ], [ %i.br, %bb.k ] ; 2 uses
  %i.cv = load ptr, ptr %3, align 8, !tbaa !62    ; 3 uses
  %.not.i.i.i75 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i75, label %_ZNSt6vectorIjSaIjEED2Ev.exit76, label %bb.z

bb.z:                                             ; preds = %.body68
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !63
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit76

_ZNSt6vectorIjSaIjEED2Ev.exit76:                  ; preds = %bb.z, %.body68, %bb.x
  %.pn20 = phi { ptr, i32 } [ %i.ct, %bb.x ], [ %eh.lpad-body69, %.body68 ], [ %eh.lpad-body69, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.al) #16
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit76, %_ZNSt6vectorIjSaIjEED2Ev.exit74
  %i.db = phi ptr [ %i.aj, %_ZNSt6vectorIjSaIjEED2Ev.exit76 ], [ %i.cr, %_ZNSt6vectorIjSaIjEED2Ev.exit74 ] ; 2 uses
  %i.dc = phi ptr [ %i.ak, %_ZNSt6vectorIjSaIjEED2Ev.exit76 ], [ %i.cs, %_ZNSt6vectorIjSaIjEED2Ev.exit74 ] ; 2 uses
  %.pn20.pn = phi { ptr, i32 } [ %.pn20, %_ZNSt6vectorIjSaIjEED2Ev.exit76 ], [ %.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit74 ] ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i77 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorIjSaIjEED2Ev.exit78, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !63
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.di) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit78

_ZNSt6vectorIjSaIjEED2Ev.exit78:                  ; preds = %bb.ab, %bb.aa, %bb.t
  %i.dj = phi ptr [ %i.n, %bb.t ], [ %i.db, %bb.aa ], [ %i.db, %bb.ab ] ; 2 uses
  %.pn20.pn.pn = phi { ptr, i32 } [ %i.ci, %bb.t ], [ %.pn20.pn, %bb.aa ], [ %.pn20.pn, %bb.ab ] ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i79 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorIjSaIjEED2Ev.exit80, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit78
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !63
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit80

_ZNSt6vectorIjSaIjEED2Ev.exit80:                  ; preds = %bb.ac, %_ZNSt6vectorIjSaIjEED2Ev.exit78, %bb.s
  %.pn20.pn.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.s ], [ %.pn20.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit78 ], [ %.pn20.pn.pn, %bb.ac ] ; 2 uses
  %i.dq = load ptr, ptr %i.f, align 8, !tbaa !62  ; 3 uses
  %.not.i.i.i81 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i81, label %_ZNSt6vectorIjSaIjEED2Ev.exit82, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit80
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !63
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dq to i64
  %i.dv = sub i64 %i.dt, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.dv) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit82

_ZNSt6vectorIjSaIjEED2Ev.exit82:                  ; preds = %bb.ad, %_ZNSt6vectorIjSaIjEED2Ev.exit80, %bb.r
  %.pn20.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cg, %bb.r ], [ %.pn20.pn.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit80 ], [ %.pn20.pn.pn.pn, %bb.ad ]
  call void @_ZN5draco16DirectBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.e) #16
end_hunk_0
begin_hunk_1_@_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE12EncodePointsIN9__gnu_cxx17__normal_iteratorIPNS_7VectorDIjLi3EEESt6vectorIS6_SaIS6_EEEEEEbT_SC_RKjPNS_13EncoderBufferE:bb.a
  tail call void @_ZN5draco16DirectBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull %4)
  tail call void @_ZN5draco16DirectBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull %4)
  br label %bb.d

bb.d:                                             ; preds = %_ZN5draco13EncoderBuffer6EncodeIjEEbRKT_.exit10, %bb.c
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi2EED2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #17
  br label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i:  ; preds = %bb.b, %.lr.ph.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !60
  br label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.l = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !65
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #17
  br label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !60   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !61   ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i9, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5
  %.05.i.i.i3 = phi ptr [ %i.ab, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5 ], [ %i.s, %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit ] ; 3 uses
  %i.v = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i.i.i.i.i4 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i4, label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i2
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !63
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #17
  br label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5

_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5: ; preds = %bb.d, %.lr.ph.i.i.i2
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 24 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.ab, %i.u
  br i1 %.not.i.i.i6, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i7, label %.lr.ph.i.i.i2, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i7: ; preds = %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5
  %.pr.i8 = load ptr, ptr %i.r, align 8, !tbaa !60
  br label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i9

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i9: ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i7, %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit
  %i.ac = phi ptr [ %.pr.i8, %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i7 ], [ %i.s, %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i10 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i10, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit11, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i9
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !65
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #17
  br label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit11

_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit11:       ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i9, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit11
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !63
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit11, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIjSaIjEED2Ev.exit14, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !63
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit14

_ZNSt6vectorIjSaIjEED2Ev.exit14:                  ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIjSaIjEED2Ev.exit16, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit14
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !63
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit16

_ZNSt6vectorIjSaIjEED2Ev.exit16:                  ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit14, %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN5draco16DirectBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.bd) #16
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN5draco16DirectBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.be) #16
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN5draco16DirectBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.bf) #16
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.bg) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi3EEC2Ej(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.2", align 8     ; 13 uses
  %3 = alloca %"class.std::vector.2", align 8     ; 12 uses
  store i32 0, ptr %0, align 8, !tbaa !79
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  invoke void @_ZN5draco16DirectBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  invoke void @_ZN5draco16DirectBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.c unwind label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  invoke void @_ZN5draco16DirectBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %bb.d unwind label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.g = zext i32 %1 to i64                       ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %1, 0               ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = shl nuw nsw i64 %i.g, 2                  ; 12 uses
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #18
          to label %.noexc unwind label %bb.r     ; 4 uses

.noexc:                                           ; preds = %bb.e
  store ptr %i.i, ptr %i.f, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.j, ptr %i.k, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.i, i8 0, i64 range(i64 0, 17179869181) %i.h, i1 false), !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.l, ptr %i.m, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #18
          to label %.noexc35 unwind label %bb.s   ; 4 uses

.noexc35:                                         ; preds = %.noexc
  store ptr %i.o, ptr %i.n, align 8, !tbaa !62
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.p, ptr %i.q, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.o, i8 0, i64 range(i64 0, 17179869181) %i.h, i1 false), !tbaa !44
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.r, ptr %i.s, align 8, !tbaa !69
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #18
          to label %.noexc43 unwind label %bb.t   ; 4 uses

.noexc43:                                         ; preds = %.noexc35
  store ptr %i.u, ptr %i.t, align 8, !tbaa !62
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.v, ptr %i.w, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.u, i8 0, i64 range(i64 0, 17179869181) %i.h, i1 false), !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.x, ptr %i.y, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #18
          to label %.noexc51 unwind label %bb.u   ; 4 uses

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50: ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %.loopexit98

.noexc51:                                         ; preds = %.noexc43
  %i.ac = shl i32 %1, 5
  %i.ad = or disjoint i32 %i.ac, 1
  %i.ae = zext i32 %i.ad to i64
  store ptr %i.z, ptr %2, align 8, !tbaa !62
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.g
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.z, i8 0, i64 range(i64 0, 17179869181) %i.h, i1 false), !tbaa !44
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.h
  br label %.loopexit98

.loopexit98:                                      ; preds = %.noexc51, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50
  %i.ai = phi i64 [ 1, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50 ], [ %i.ae, %.noexc51 ] ; 5 uses
  %i.aj = phi ptr [ %i.aa, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50 ], [ %i.n, %.noexc51 ] ; 3 uses
  %i.ak = phi ptr [ %i.ab, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50 ], [ %i.t, %.noexc51 ] ; 3 uses
  %.0.i.i.i.i.i.i.i49 = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50 ], [ %i.ah, %.noexc51 ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.0.i.i.i.i.i.i.i49, ptr %i.am, align 8, !tbaa !69
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %i.an = mul nuw nsw i64 %i.ai, 24               ; 2 uses
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #18
          to label %.noexc54 unwind label %bb.v   ; 4 uses

.noexc54:                                         ; preds = %.loopexit98
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !60
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !61
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.ai
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !65
  %i.as = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIjSaIjEEmS2_ET_S4_T0_RKT1_(ptr noundef nonnull %i.ao, i64 noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %.noexc54
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !60 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !65
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #17
  br label %.body

bb.h:                                             ; preds = %.noexc54
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !61
  %i.az = load ptr, ptr %2, align 8, !tbaa !62    ; 3 uses
  %.not.i.i.i55 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !63
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i61, label %bb.j

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i61: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %.loopexit

bb.j:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.bf = shl nuw nsw i64 %i.g, 2                 ; 3 uses
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #18
          to label %.noexc62 unwind label %bb.x   ; 4 uses

.noexc62:                                         ; preds = %bb.j
  store ptr %i.bg, ptr %3, align 8, !tbaa !62
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.g
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !63
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bg, i8 0, i64 range(i64 0, 17179869181) %i.bf, i1 false), !tbaa !44
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf
  br label %.loopexit

.loopexit:                                        ; preds = %.noexc62, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i61
  %.0.i.i.i.i.i.i.i60 = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i61 ], [ %i.bj, %.noexc62 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.0.i.i.i.i.i.i.i60, ptr %i.bk, align 8, !tbaa !69
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i8 0, i64 24, i1 false)
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #18
          to label %.noexc67 unwind label %bb.y   ; 4 uses

.noexc67:                                         ; preds = %.loopexit
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !60
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !61
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.ai
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !65
  %i.bq = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIjSaIjEEmS2_ET_S4_T0_RKT1_(ptr noundef nonnull %i.bm, i64 noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %.noexc67
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %i.bl, align 8, !tbaa !60 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i65, label %.body68, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !65
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bw) #17
  br label %.body68

bb.m:                                             ; preds = %.noexc67
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !61
  %i.bx = load ptr, ptr %3, align 8, !tbaa !62    ; 3 uses
  %.not.i.i.i71 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i71, label %_ZNSt6vectorIjSaIjEED2Ev.exit72, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !63
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit72

_ZNSt6vectorIjSaIjEED2Ev.exit72:                  ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

bb.o:                                             ; preds = %bb.a
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.p:                                             ; preds = %bb.b
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.q:                                             ; preds = %bb.c
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.r:                                             ; preds = %bb.e
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit82

bb.s:                                             ; preds = %.noexc
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit80

bb.t:                                             ; preds = %.noexc35
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit78

bb.u:                                             ; preds = %.noexc43
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit74

bb.v:                                             ; preds = %.loopexit98
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.g, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.ck, %bb.v ], [ %i.at, %bb.g ], [ %i.at, %bb.f ] ; 2 uses
  %i.cl = load ptr, ptr %2, align 8, !tbaa !62    ; 3 uses
  %.not.i.i.i73 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i73, label %_ZNSt6vectorIjSaIjEED2Ev.exit74, label %bb.w

bb.w:                                             ; preds = %.body
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !63
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cq) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit74

_ZNSt6vectorIjSaIjEED2Ev.exit74:                  ; preds = %bb.w, %.body, %bb.u
  %i.cr = phi ptr [ %i.n, %bb.u ], [ %i.aj, %.body ], [ %i.aj, %bb.w ]
  %i.cs = phi ptr [ %i.t, %bb.u ], [ %i.ak, %.body ], [ %i.ak, %bb.w ]
  %.pn = phi { ptr, i32 } [ %i.cj, %bb.u ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.aa

bb.x:                                             ; preds = %bb.j
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit76

bb.y:                                             ; preds = %.loopexit
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body68

.body68:                                          ; preds = %bb.k, %bb.l, %bb.y
  %eh.lpad-body69 = phi { ptr, i32 } [ %i.cu, %bb.y ], [ %i.br, %bb.l ], [ %i.br, %bb.k ] ; 2 uses
  %i.cv = load ptr, ptr %3, align 8, !tbaa !62    ; 3 uses
  %.not.i.i.i75 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i75, label %_ZNSt6vectorIjSaIjEED2Ev.exit76, label %bb.z

bb.z:                                             ; preds = %.body68
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !63
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit76

_ZNSt6vectorIjSaIjEED2Ev.exit76:                  ; preds = %bb.z, %.body68, %bb.x
  %.pn20 = phi { ptr, i32 } [ %i.ct, %bb.x ], [ %eh.lpad-body69, %.body68 ], [ %eh.lpad-body69, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.al) #16
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit76, %_ZNSt6vectorIjSaIjEED2Ev.exit74
  %i.db = phi ptr [ %i.aj, %_ZNSt6vectorIjSaIjEED2Ev.exit76 ], [ %i.cr, %_ZNSt6vectorIjSaIjEED2Ev.exit74 ] ; 2 uses
  %i.dc = phi ptr [ %i.ak, %_ZNSt6vectorIjSaIjEED2Ev.exit76 ], [ %i.cs, %_ZNSt6vectorIjSaIjEED2Ev.exit74 ] ; 2 uses
  %.pn20.pn = phi { ptr, i32 } [ %.pn20, %_ZNSt6vectorIjSaIjEED2Ev.exit76 ], [ %.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit74 ] ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i77 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorIjSaIjEED2Ev.exit78, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !63
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.di) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit78

_ZNSt6vectorIjSaIjEED2Ev.exit78:                  ; preds = %bb.ab, %bb.aa, %bb.t
  %i.dj = phi ptr [ %i.n, %bb.t ], [ %i.db, %bb.aa ], [ %i.db, %bb.ab ] ; 2 uses
  %.pn20.pn.pn = phi { ptr, i32 } [ %i.ci, %bb.t ], [ %.pn20.pn, %bb.aa ], [ %.pn20.pn, %bb.ab ] ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i79 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorIjSaIjEED2Ev.exit80, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit78
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !63
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit80

_ZNSt6vectorIjSaIjEED2Ev.exit80:                  ; preds = %bb.ac, %_ZNSt6vectorIjSaIjEED2Ev.exit78, %bb.s
  %.pn20.pn.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.s ], [ %.pn20.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit78 ], [ %.pn20.pn.pn, %bb.ac ] ; 2 uses
  %i.dq = load ptr, ptr %i.f, align 8, !tbaa !62  ; 3 uses
  %.not.i.i.i81 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i81, label %_ZNSt6vectorIjSaIjEED2Ev.exit82, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit80
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !63
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dq to i64
  %i.dv = sub i64 %i.dt, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.dv) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit82

_ZNSt6vectorIjSaIjEED2Ev.exit82:                  ; preds = %bb.ad, %_ZNSt6vectorIjSaIjEED2Ev.exit80, %bb.r
  %.pn20.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cg, %bb.r ], [ %.pn20.pn.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit80 ], [ %.pn20.pn.pn.pn, %bb.ad ]
  call void @_ZN5draco16DirectBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.e) #16
end_hunk_1
begin_hunk_2_@_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi4EED2Ev:bb.a

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #17
  br label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i:  ; preds = %bb.b, %.lr.ph.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !60
  br label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.l = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !65
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #17
  br label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2032 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !60   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2040
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !61   ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i9, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5
  %.05.i.i.i3 = phi ptr [ %i.ab, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5 ], [ %i.s, %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit ] ; 3 uses
  %i.v = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i.i.i.i.i4 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i4, label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i2
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !63
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #17
  br label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5

_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5: ; preds = %bb.d, %.lr.ph.i.i.i2
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 24 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.ab, %i.u
  br i1 %.not.i.i.i6, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i7, label %.lr.ph.i.i.i2, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i7: ; preds = %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5
  %.pr.i8 = load ptr, ptr %i.r, align 8, !tbaa !60
  br label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i9

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i9: ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i7, %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit
  %i.ac = phi ptr [ %.pr.i8, %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i7 ], [ %i.s, %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i10 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i10, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit11, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i9
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !65
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #17
  br label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit11

_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit11:       ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i9, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2008
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit11
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2024
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !63
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit11, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIjSaIjEED2Ev.exit14, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !63
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit14

_ZNSt6vectorIjSaIjEED2Ev.exit14:                  ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIjSaIjEED2Ev.exit16, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit14
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !63
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit16

_ZNSt6vectorIjSaIjEED2Ev.exit16:                  ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit14, %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1928
  tail call void @_ZN5draco16DirectBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.bd) #16
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1896
  tail call void @_ZN5draco16DirectBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.be) #16
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1864
  tail call void @_ZN5draco16DirectBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.bf) #16
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1808
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.bh) #16
  tail call void @_ZNSt5arrayIN5draco14RAnsBitEncoderELm32EED2Ev(ptr noundef nonnull align 8 dead_on_return(1792) dereferenceable(1848) %i.bg) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi5EEC2Ej(ptr noundef nonnull align 8 dereferenceable(2080) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.2", align 8     ; 13 uses
  %3 = alloca %"class.std::vector.2", align 8     ; 12 uses
  store i32 0, ptr %0, align 8, !tbaa !86
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @_ZNSt5arrayIN5draco14RAnsBitEncoderELm32EEC2Ev(ptr noundef nonnull align 8 dereferenceable(1848) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1808 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_ZN5draco18FoldedBit32EncoderINS_14RAnsBitEncoderEEC2Ev.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.ah, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.b ], [ %.pn20.pn.pn.pn.pn.pn.pn.pn, %bb.ah ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt5arrayIN5draco14RAnsBitEncoderELm32EED2Ev(ptr noundef nonnull align 8 dead_on_return(1792) dereferenceable(1848) %i.b) #16
  br label %common.resume

_ZN5draco18FoldedBit32EncoderINS_14RAnsBitEncoderEEC2Ev.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1864 ; 2 uses
  invoke void @_ZN5draco16DirectBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %bb.c unwind label %bb.p

bb.c:                                             ; preds = %_ZN5draco18FoldedBit32EncoderINS_14RAnsBitEncoderEEC2Ev.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1896 ; 2 uses
  invoke void @_ZN5draco16DirectBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.d unwind label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1928 ; 2 uses
  invoke void @_ZN5draco16DirectBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1960 ; 4 uses
  %i.i = zext i32 %1 to i64                       ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %1, 0               ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 12 uses
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #18
          to label %.noexc unwind label %bb.s     ; 4 uses

.noexc:                                           ; preds = %bb.f
  store ptr %i.k, ptr %i.h, align 8, !tbaa !62
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1976
  store ptr %i.l, ptr %i.m, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.k, i8 0, i64 range(i64 0, 17179869181) %i.j, i1 false), !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1968
  store ptr %i.n, ptr %i.o, align 8, !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1984 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #18
          to label %.noexc35 unwind label %bb.t   ; 4 uses

.noexc35:                                         ; preds = %.noexc
  store ptr %i.q, ptr %i.p, align 8, !tbaa !62
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2000
  store ptr %i.r, ptr %i.s, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.q, i8 0, i64 range(i64 0, 17179869181) %i.j, i1 false), !tbaa !44
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.j
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1992
  store ptr %i.t, ptr %i.u, align 8, !tbaa !69
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2008 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #18
          to label %.noexc43 unwind label %bb.u   ; 4 uses

.noexc43:                                         ; preds = %.noexc35
  store ptr %i.w, ptr %i.v, align 8, !tbaa !62
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2024
  store ptr %i.x, ptr %i.y, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.w, i8 0, i64 range(i64 0, 17179869181) %i.j, i1 false), !tbaa !44
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.j
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2016
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #18
          to label %.noexc51 unwind label %bb.v   ; 4 uses

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2008
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.h, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %.loopexit98

.noexc51:                                         ; preds = %.noexc43
  %i.ae = shl i32 %1, 5
  %i.af = or disjoint i32 %i.ae, 1
  %i.ag = zext i32 %i.af to i64
  store ptr %i.ab, ptr %2, align 8, !tbaa !62
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ab, i8 0, i64 range(i64 0, 17179869181) %i.j, i1 false), !tbaa !44
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.j
  br label %.loopexit98

.loopexit98:                                      ; preds = %.noexc51, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50
  %i.ak = phi i64 [ 1, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50 ], [ %i.ag, %.noexc51 ] ; 5 uses
  %i.al = phi ptr [ %i.ac, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50 ], [ %i.p, %.noexc51 ] ; 3 uses
  %i.am = phi ptr [ %i.ad, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50 ], [ %i.v, %.noexc51 ] ; 3 uses
  %.0.i.i.i.i.i.i.i49 = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50 ], [ %i.aj, %.noexc51 ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2032 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.0.i.i.i.i.i.i.i49, ptr %i.ao, align 8, !tbaa !69
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  %i.ap = mul nuw nsw i64 %i.ak, 24               ; 2 uses
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #18
          to label %.noexc54 unwind label %bb.w   ; 4 uses

.noexc54:                                         ; preds = %.loopexit98
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !60
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2040 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !61
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.ak
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 2 uses
  store ptr %i.as, ptr %i.at, align 8, !tbaa !65
  %i.au = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIjSaIjEEmS2_ET_S4_T0_RKT1_(ptr noundef nonnull %i.aq, i64 noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc54
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !60 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !65
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.ba) #17
  br label %.body

bb.i:                                             ; preds = %.noexc54
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !61
  %i.bb = load ptr, ptr %2, align 8, !tbaa !62    ; 3 uses
  %.not.i.i.i55 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !63
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bg) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i61, label %bb.k

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i61: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %.loopexit

bb.k:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.bh = shl nuw nsw i64 %i.i, 2                 ; 3 uses
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #18
          to label %.noexc62 unwind label %bb.y   ; 4 uses

.noexc62:                                         ; preds = %bb.k
  store ptr %i.bi, ptr %3, align 8, !tbaa !62
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !63
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bi, i8 0, i64 range(i64 0, 17179869181) %i.bh, i1 false), !tbaa !44
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bh
  br label %.loopexit

.loopexit:                                        ; preds = %.noexc62, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i61
  %.0.i.i.i.i.i.i.i60 = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i61 ], [ %i.bl, %.noexc62 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.0.i.i.i.i.i.i.i60, ptr %i.bm, align 8, !tbaa !69
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  %i.bo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #18
          to label %.noexc67 unwind label %bb.z   ; 4 uses

.noexc67:                                         ; preds = %.loopexit
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !60
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 2064 ; 2 uses
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !61
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.ak
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 2072 ; 2 uses
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !65
  %i.bs = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIjSaIjEEmS2_ET_S4_T0_RKT1_(ptr noundef nonnull %i.bo, i64 noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %.noexc67
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !60 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i65, label %.body68, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !65
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.by) #17
  br label %.body68

bb.n:                                             ; preds = %.noexc67
  store ptr %i.bs, ptr %i.bp, align 8, !tbaa !61
  %i.bz = load ptr, ptr %3, align 8, !tbaa !62    ; 3 uses
  %.not.i.i.i71 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i71, label %_ZNSt6vectorIjSaIjEED2Ev.exit72, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !63
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.ce) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit72

_ZNSt6vectorIjSaIjEED2Ev.exit72:                  ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

bb.p:                                             ; preds = %_ZN5draco18FoldedBit32EncoderINS_14RAnsBitEncoderEEC2Ev.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.q:                                             ; preds = %bb.c
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.r:                                             ; preds = %bb.d
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.s:                                             ; preds = %bb.f
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit82

bb.t:                                             ; preds = %.noexc
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit80

bb.u:                                             ; preds = %.noexc35
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit78

bb.v:                                             ; preds = %.noexc43
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit74

bb.w:                                             ; preds = %.loopexit98
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.w
  %eh.lpad-body = phi { ptr, i32 } [ %i.cm, %bb.w ], [ %i.av, %bb.h ], [ %i.av, %bb.g ] ; 2 uses
  %i.cn = load ptr, ptr %2, align 8, !tbaa !62    ; 3 uses
  %.not.i.i.i73 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i73, label %_ZNSt6vectorIjSaIjEED2Ev.exit74, label %bb.x

bb.x:                                             ; preds = %.body
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !63
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.cs) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit74

_ZNSt6vectorIjSaIjEED2Ev.exit74:                  ; preds = %bb.x, %.body, %bb.v
  %i.ct = phi ptr [ %i.p, %bb.v ], [ %i.al, %.body ], [ %i.al, %bb.x ]
  %i.cu = phi ptr [ %i.v, %bb.v ], [ %i.am, %.body ], [ %i.am, %bb.x ]
  %.pn = phi { ptr, i32 } [ %i.cl, %bb.v ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.ab

bb.y:                                             ; preds = %bb.k
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit76

bb.z:                                             ; preds = %.loopexit
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body68

.body68:                                          ; preds = %bb.l, %bb.m, %bb.z
  %eh.lpad-body69 = phi { ptr, i32 } [ %i.cw, %bb.z ], [ %i.bt, %bb.m ], [ %i.bt, %bb.l ] ; 2 uses
  %i.cx = load ptr, ptr %3, align 8, !tbaa !62    ; 3 uses
  %.not.i.i.i75 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i75, label %_ZNSt6vectorIjSaIjEED2Ev.exit76, label %bb.aa

bb.aa:                                            ; preds = %.body68
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !63
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit76

_ZNSt6vectorIjSaIjEED2Ev.exit76:                  ; preds = %bb.aa, %.body68, %bb.y
  %.pn20 = phi { ptr, i32 } [ %i.cv, %bb.y ], [ %eh.lpad-body69, %.body68 ], [ %eh.lpad-body69, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.an) #16
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit76, %_ZNSt6vectorIjSaIjEED2Ev.exit74
  %i.dd = phi ptr [ %i.al, %_ZNSt6vectorIjSaIjEED2Ev.exit76 ], [ %i.ct, %_ZNSt6vectorIjSaIjEED2Ev.exit74 ] ; 2 uses
  %i.de = phi ptr [ %i.am, %_ZNSt6vectorIjSaIjEED2Ev.exit76 ], [ %i.cu, %_ZNSt6vectorIjSaIjEED2Ev.exit74 ] ; 2 uses
  %.pn20.pn = phi { ptr, i32 } [ %.pn20, %_ZNSt6vectorIjSaIjEED2Ev.exit76 ], [ %.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit74 ] ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i77 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorIjSaIjEED2Ev.exit78, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !63
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.df to i64
  %i.dk = sub i64 %i.di, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.dk) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit78

_ZNSt6vectorIjSaIjEED2Ev.exit78:                  ; preds = %bb.ac, %bb.ab, %bb.u
  %i.dl = phi ptr [ %i.p, %bb.u ], [ %i.dd, %bb.ab ], [ %i.dd, %bb.ac ] ; 2 uses
  %.pn20.pn.pn = phi { ptr, i32 } [ %i.ck, %bb.u ], [ %.pn20.pn, %bb.ab ], [ %.pn20.pn, %bb.ac ] ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i79 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorIjSaIjEED2Ev.exit80, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit78
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !63
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dr) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit80

_ZNSt6vectorIjSaIjEED2Ev.exit80:                  ; preds = %bb.ad, %_ZNSt6vectorIjSaIjEED2Ev.exit78, %bb.t
  %.pn20.pn.pn.pn = phi { ptr, i32 } [ %i.cj, %bb.t ], [ %.pn20.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit78 ], [ %.pn20.pn.pn, %bb.ad ] ; 2 uses
  %i.ds = load ptr, ptr %i.h, align 8, !tbaa !62  ; 3 uses
  %.not.i.i.i81 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i81, label %_ZNSt6vectorIjSaIjEED2Ev.exit82, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit80
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !63
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.ds to i64
  %i.dx = sub i64 %i.dv, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dx) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit82

_ZNSt6vectorIjSaIjEED2Ev.exit82:                  ; preds = %bb.ae, %_ZNSt6vectorIjSaIjEED2Ev.exit80, %bb.s
  %.pn20.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ci, %bb.s ], [ %.pn20.pn.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit80 ], [ %.pn20.pn.pn.pn, %bb.ae ]
  call void @_ZN5draco16DirectBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.g) #16
end_hunk_2
begin_hunk_3_@_ZNSt5arrayIN5draco14RAnsBitEncoderELm32EED2Ev:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 952
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.o) #16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 896
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.p) #16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 840
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.q) #16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 784
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.r) #16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 728
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.s) #16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 672
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.t) #16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 616
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.u) #16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 560
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.v) #16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 504
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.w) #16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.x) #16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 392
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.y) #16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 336
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.z) #16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.aa) #16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ab) #16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ac) #16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ad) #16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ae) #16
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #16
  ret void
}

declare void @_ZN5draco16DirectBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIjSaIjEEmS2_ET_S4_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not16 = icmp eq i64 %1, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !62
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.b = phi ptr [ %.pre, %.lr.ph ], [ %i.m, %bb.g ] ; 2 uses
  %.018 = phi ptr [ %0, %.lr.ph ], [ %i.w, %bb.g ] ; 6 uses
  %.01117 = phi i64 [ %1, %.lr.ph ], [ %i.v, %bb.g ]
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.018, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not.i.i.i.i.i, label %.noexc12, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, !prof !90

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #20
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #18
          to label %.noexc12 unwind label %.loopexit

.noexc12:                                         ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, %bb.b
  %i.i = phi ptr [ null, %bb.b ], [ %i.h, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %.018, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw i8, ptr %.018, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.018, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !63
  %i.m = load ptr, ptr %2, align 8, !tbaa !209    ; 4 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !209
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 4
  br i1 %i.r, label %bb.d, label %bb.e, !prof !91

bb.d:                                             ; preds = %.noexc12
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.m, i64 %i.q, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %.noexc12
  %i.s = icmp eq i64 %i.q, 4
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.m, align 4, !tbaa !44
  store i32 %i.t, ptr %i.i, align 4, !tbaa !44
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !69
  %i.v = add i64 %.01117, -1                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.018, i64 24 ; 2 uses
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !208

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.x = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #16 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt6vectorIjSaIjEEEvT_S4_(ptr noundef %0, ptr noundef nonnull %.018)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_rethrow() #20
          to label %bb.m unwind label %bb.j

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.w, %bb.g ]
  ret ptr %.0.lcssa

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.z

bb.l:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #19
  unreachable

bb.m:                                             ; preds = %bb.i
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare void @_ZN5draco16DirectBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodeInternalIN9__gnu_cxx17__normal_iteratorIPNS_7VectorDIjLi3EEESt6vectorIS6_SaIS6_EEEEEEvT_SC_(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<0>::EncodingStatus", align 8 ; 10 uses
  %4 = alloca %"class.std::stack", align 8        ; 19 uses
  %5 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<0>::EncodingStatus", align 8 ; 10 uses
  %6 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<0>::EncodingStatus", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !219  ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = shl nuw nsw i64 %i.c, 2                  ; 3 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #18 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.e, i8 0, i64 range(i64 0, 17179869181) %i.d, i1 false), !tbaa !44
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit:            ; preds = %.noexc, %bb.a
  %.sroa.11132.0 = phi ptr [ null, %bb.a ], [ %i.f, %.noexc ]
  %.sroa.0129.0 = phi ptr [ null, %bb.a ], [ %i.e, %.noexc ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.a ], [ %i.g, %.noexc ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60   ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !63
  store ptr %.sroa.0129.0, ptr %i.i, align 8, !tbaa !62
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.k, align 8, !tbaa !69
  store ptr %.sroa.11132.0, ptr %i.l, align 8, !tbaa !63
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.p) #17
  %.pre = load i32, ptr %i.a, align 8, !tbaa !219
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.b, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.q = phi i32 [ %.pre, %bb.b ], [ %i.b, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit ] ; 2 uses
  %.not.i.i.i.i95 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i95, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit102, label %.noexc101

.noexc101:                                        ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 2                  ; 3 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #18 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 0, i64 range(i64 0, 17179869181) %i.s, i1 false), !tbaa !44
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit102

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit102:         ; preds = %.noexc101, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.sroa.0124.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.t, %.noexc101 ]
  %.sroa.11.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.u, %.noexc101 ]
  %.0.i.i.i.i.i.i.i99 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.v, %.noexc101 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !60   ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !62   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !63
  store ptr %.sroa.0124.0, ptr %i.x, align 8, !tbaa !62
  store ptr %.0.i.i.i.i.i.i.i99, ptr %i.z, align 8, !tbaa !69
  store ptr %.sroa.11.0, ptr %i.aa, align 8, !tbaa !63
  %.not.i.i.i.i.i103 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i103, label %_ZNSt6vectorIjSaIjEED2Ev.exit106, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit102
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.y to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ae) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit106

_ZNSt6vectorIjSaIjEED2Ev.exit106:                 ; preds = %bb.c, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit102
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr %1, ptr %3, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.af, align 8, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.ag, align 8, !tbaa !221
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !222
  %i.ai = ptrtoint ptr %2 to i64
  %i.aj = ptrtoint ptr %1 to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv exact i64 %i.ak, 12
  %i.am = trunc i64 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.am, ptr %i.an, align 4, !tbaa !223
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %4, i64 noundef 0)
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 12 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !98 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !224
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -32
  %.not.i.i = icmp eq ptr %i.ap, %i.as
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !99
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !98
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  store ptr %i.au, ptr %i.ao, align 8, !tbaa !98
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit106
  invoke void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_push_back_auxIJRKSD_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(28) %3)
          to label %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit_crit_edge unwind label %bb.i

._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit_crit_edge: ; preds = %bb.e
  %.pre190 = load ptr, ptr %i.ao, align 8, !tbaa !100
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit: ; preds = %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit_crit_edge, %bb.d
  %i.av = phi ptr [ %.pre190, %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit_crit_edge ], [ %i.au, %bb.d ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !100
  %i.ay = icmp eq ptr %i.av, %i.ax
  br i1 %i.ay, label %._crit_edge171, label %.lr.ph170

.lr.ph170:                                        ; preds = %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph170, %.loopexit
  %i.bn = phi ptr [ %i.av, %.lr.ph170 ], [ %i.gr, %.loopexit ] ; 5 uses
  %i.bo = load ptr, ptr %i.az, align 8, !tbaa !101, !noalias !225 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds i8, ptr %i.bn, i64 -32 ; 2 uses
  %.sroa.065.sroa.0.0.copyload = load i64, ptr %i.bq, align 8, !tbaa !43
  %.sroa.065.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.bn, i64 -24
  %.sroa.065.sroa.5.0.copyload = load i64, ptr %.sroa.065.sroa.5.0..sroa_idx, align 8, !tbaa !43
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.bn, i64 -16
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !44
  %.sroa.766.0..sroa_idx = getelementptr inbounds i8, ptr %i.bn, i64 -8
  %.sroa.766.0.copyload = load i32, ptr %.sroa.766.0..sroa_idx, align 8, !tbaa !44
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE3popEv.exit

bb.h:                                             ; preds = %bb.f
  %i.br = load ptr, ptr %i.ba, align 8, !tbaa !102, !noalias !225
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !103 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 480
  %.sroa.065.sroa.0.0.copyload141 = load i64, ptr %i.bu, align 8, !tbaa !43
  %.sroa.065.sroa.5.0..sroa_idx142 = getelementptr inbounds nuw i8, ptr %i.bt, i64 488
  %.sroa.065.sroa.5.0.copyload143 = load i64, ptr %.sroa.065.sroa.5.0..sroa_idx142, align 8, !tbaa !43
  %.sroa.6.0..sroa_idx144 = getelementptr inbounds nuw i8, ptr %i.bt, i64 496
  %.sroa.6.0.copyload145 = load i32, ptr %.sroa.6.0..sroa_idx144, align 8, !tbaa !44
  %.sroa.766.0..sroa_idx146 = getelementptr inbounds nuw i8, ptr %i.bt, i64 504
  %.sroa.766.0.copyload147 = load i32, ptr %.sroa.766.0..sroa_idx146, align 8, !tbaa !44
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef 512) #17
  %i.bv = load ptr, ptr %i.ba, align 8, !tbaa !104
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -8 ; 2 uses
  store ptr %i.bw, ptr %i.ba, align 8, !tbaa !102
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !103 ; 3 uses
  store ptr %i.bx, ptr %i.az, align 8, !tbaa !101
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 512
  store ptr %i.by, ptr %i.aq, align 8, !tbaa !105
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 480
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE3popEv.exit

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE3popEv.exit: ; preds = %bb.g, %bb.h
  %.sroa.766.0.copyload154 = phi i32 [ %.sroa.766.0.copyload, %bb.g ], [ %.sroa.766.0.copyload147, %bb.h ] ; 3 uses
  %.sroa.6.0.copyload152 = phi i32 [ %.sroa.6.0.copyload, %bb.g ], [ %.sroa.6.0.copyload145, %bb.h ] ; 2 uses
  %.sroa.065.sroa.5.0.copyload150 = phi i64 [ %.sroa.065.sroa.5.0.copyload, %bb.g ], [ %.sroa.065.sroa.5.0.copyload143, %bb.h ] ; 4 uses
  %.sroa.065.sroa.0.0.copyload148 = phi i64 [ %.sroa.065.sroa.0.0.copyload, %bb.g ], [ %.sroa.065.sroa.0.0.copyload141, %bb.h ] ; 4 uses
  %storemerge.i.i = phi ptr [ %i.bq, %bb.g ], [ %i.bz, %bb.h ]
  store ptr %storemerge.i.i, ptr %i.ao, align 8, !tbaa !98
  %i.ca = inttoptr i64 %.sroa.065.sroa.0.0.copyload148 to ptr ; 5 uses
  %i.cb = inttoptr i64 %.sroa.065.sroa.5.0.copyload150 to ptr ; 3 uses
  %i.cc = zext i32 %.sroa.766.0.copyload154 to i64 ; 3 uses
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !60  ; 2 uses
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %i.cc
  %i.cf = load ptr, ptr %i.w, align 8, !tbaa !60
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %i.cc ; 2 uses
  %i.ch = load i32, ptr %i.a, align 8, !tbaa !219
  %i.ci = add i32 %i.ch, -1
  %i.cj = icmp eq i32 %.sroa.6.0.copyload152, %i.ci
  %i.ck = add i32 %.sroa.6.0.copyload152, 1
  %i.cl = select i1 %i.cj, i32 0, i32 %i.ck       ; 6 uses
  %i.cm = zext i32 %i.cl to i64                   ; 3 uses
  %i.cn = load ptr, ptr %i.cg, align 8, !tbaa !62
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cm
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !44 ; 2 uses
  %i.cq = sub i64 %.sroa.065.sroa.5.0.copyload150, %.sroa.065.sroa.0.0.copyload148
  %i.cr = sdiv exact i64 %i.cq, 12                ; 2 uses
  %i.cs = trunc i64 %i.cr to i32                  ; 4 uses
  %i.ct = load i32, ptr %0, align 8, !tbaa !57    ; 2 uses
  %i.cu = icmp eq i32 %i.ct, %i.cp
  br i1 %i.cu, label %.loopexit, label %bb.j, !llvm.loop !212

bb.i:                                             ; preds = %bb.e
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.j:                                             ; preds = %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE3popEv.exit
  %i.cw = icmp ult i32 %i.cs, 3
  br i1 %i.cw, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.cx = load ptr, ptr %i.bl, align 8, !tbaa !62 ; 2 uses
  store i32 %i.cl, ptr %i.cx, align 4, !tbaa !44
  %i.cy = load i32, ptr %i.a, align 8, !tbaa !219 ; 3 uses
  %i.cz = icmp ugt i32 %i.cy, 1
  br i1 %i.cz, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.k
  %i.da = phi i32 [ %i.cy, %bb.k ], [ %i.dh, %.lr.ph ] ; 2 uses
  %.not172 = icmp eq i32 %i.cs, 0
  br i1 %.not172, label %.loopexit, label %.lr.ph169, !llvm.loop !212

.lr.ph169:                                        ; preds = %.preheader
  %.not173 = icmp eq i32 %i.da, 0
  br i1 %.not173, label %..loopexit_crit_edge, label %.lr.ph169.split, !llvm.loop !212

.lr.ph169.split:                                  ; preds = %.lr.ph169
  %wide.trip.count = and i64 %i.cr, 3
  br label %bb.l, !llvm.loop !212

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %i.db = phi i32 [ %spec.select, %.lr.ph ], [ %i.cl, %bb.k ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.k ] ; 2 uses
  %i.dc = phi i32 [ %i.dh, %.lr.ph ], [ %i.cy, %bb.k ]
  %i.dd = add i32 %i.dc, -1
  %i.de = icmp eq i32 %i.db, %i.dd
  %i.df = add i32 %i.db, 1
  %spec.select = select i1 %i.de, i32 0, i32 %i.df ; 2 uses
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag:bb.a
  %i.bh = and i64 %i.ax, 3
  %i.bi = getelementptr i8, ptr %i.g, i64 %n.vec101
  %i.bj = getelementptr i8, ptr %i.av, i64 %n.vec101
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index102 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next106, %vec.epilog.vector.body ] ; 3 uses
  %next.gep103 = getelementptr i8, ptr %i.g, i64 %index102
  %next.gep104 = getelementptr i8, ptr %i.av, i64 %index102
  %wide.load105 = load <4 x i8>, ptr %next.gep104, align 1, !tbaa !107
  store <4 x i8> %wide.load105, ptr %next.gep103, align 1, !tbaa !107
  %index.next106 = add nuw i64 %index102, 4       ; 2 uses
  %i.bk = icmp eq i64 %index.next106, %n.vec101
  br i1 %i.bk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !230

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n107 = icmp eq i64 %i.ax, %n.vec101
  br i1 %cmp.n107, label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ax, %iter.check ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.g, %iter.check ], [ %i.bc, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.av, %iter.check ], [ %i.bd, %vec.epilog.iter.check ], [ %i.bj, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.bl = load i8, ptr %.0910.i.i.i.i.i.i.i.i, align 1, !tbaa !107
  store i8 %i.bl, ptr %.0811.i.i.i.i.i.i.i.i, align 1, !tbaa !107
  %i.bm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 1
  %i.bo = add nsw i64 %.012.i.i.i.i.i.i.i.i, -1
  %i.bp = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i, 1
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit.loopexit, !llvm.loop !231

_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !236
  br label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit
  %i.bq = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit.loopexit ], [ %i.g, %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.br = sub nuw i64 %i.c, %i.l
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br ; 3 uses
  store ptr %i.bs, ptr %i.f, align 8, !tbaa !236
  %i.bt = icmp sgt i64 %i.l, 1
  br i1 %i.bt, label %bb.k, label %bb.l, !prof !91

bb.k:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bs, ptr align 1 %1, i64 %i.l, i1 false)
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55

bb.l:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit
  br i1 %i.au, label %bb.m, label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55

bb.m:                                             ; preds = %bb.l
  %i.bu = load i8, ptr %1, align 1, !tbaa !107
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !107
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55

_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55: ; preds = %bb.k, %bb.l, %bb.m
  %i.bv = load ptr, ptr %i.f, align 8, !tbaa !236
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.l
  store ptr %i.bw, ptr %i.f, align 8, !tbaa !236
  %i.bx = icmp sgt i64 %i.l, 0
  br i1 %i.bx, label %iter.check130, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

iter.check130:                                    ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55
  %min.iters.check113 = icmp ult i64 %i.l, 4
  %i.by = sub i64 %i.b, %i.k
  %diff.check112 = icmp ugt i64 %i.by, -32
  %or.cond184 = or i1 %min.iters.check113, %diff.check112
  br i1 %or.cond184, label %.lr.ph.i.i.i.i.i57.preheader, label %vector.main.loop.iter.check114

vector.main.loop.iter.check114:                   ; preds = %iter.check130
  %min.iters.check115 = icmp ult i64 %i.l, 32
  br i1 %min.iters.check115, label %vec.epilog.ph134, label %vector.ph116

vector.ph116:                                     ; preds = %vector.main.loop.iter.check114
  %i.bz = and i64 %i.l, 28
  %n.vec117 = and i64 %i.l, 9223372036854775776   ; 5 uses
  %i.ca = and i64 %i.l, 31
  %i.cb = getelementptr i8, ptr %1, i64 %n.vec117
  %i.cc = getelementptr i8, ptr %2, i64 %n.vec117
  br label %vector.body118

vector.body118:                                   ; preds = %vector.ph116, %vector.body118
  %index119 = phi i64 [ 0, %vector.ph116 ], [ %index.next124, %vector.body118 ] ; 3 uses
  %next.gep120 = getelementptr i8, ptr %1, i64 %index119 ; 2 uses
  %next.gep121 = getelementptr i8, ptr %2, i64 %index119 ; 2 uses
  %i.cd = getelementptr i8, ptr %next.gep121, i64 16
  %wide.load122 = load <16 x i8>, ptr %next.gep121, align 1, !tbaa !107
  %wide.load123 = load <16 x i8>, ptr %i.cd, align 1, !tbaa !107
  %i.ce = getelementptr i8, ptr %next.gep120, i64 16
  store <16 x i8> %wide.load122, ptr %next.gep120, align 1, !tbaa !107
  store <16 x i8> %wide.load123, ptr %i.ce, align 1, !tbaa !107
  %index.next124 = add nuw i64 %index119, 32      ; 2 uses
  %i.cf = icmp eq i64 %index.next124, %n.vec117
  br i1 %i.cf, label %middle.block125, label %vector.body118, !llvm.loop !232

middle.block125:                                  ; preds = %vector.body118
  %cmp.n126 = icmp eq i64 %i.l, %n.vec117
  br i1 %cmp.n126, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, label %vec.epilog.iter.check132

vec.epilog.iter.check132:                         ; preds = %middle.block125
  %min.epilog.iters.check133 = icmp eq i64 %i.bz, 0
  br i1 %min.epilog.iters.check133, label %.lr.ph.i.i.i.i.i57.preheader, label %vec.epilog.ph134, !prof !237

vec.epilog.ph134:                                 ; preds = %vector.main.loop.iter.check114, %vec.epilog.iter.check132
  %vec.epilog.resume.val127 = phi i64 [ %n.vec117, %vec.epilog.iter.check132 ], [ 0, %vector.main.loop.iter.check114 ]
  %n.vec135 = and i64 %i.l, 9223372036854775804   ; 4 uses
  %i.cg = and i64 %i.l, 3
  %i.ch = getelementptr i8, ptr %1, i64 %n.vec135
  %i.ci = getelementptr i8, ptr %2, i64 %n.vec135
  br label %vec.epilog.vector.body136

vec.epilog.vector.body136:                        ; preds = %vec.epilog.vector.body136, %vec.epilog.ph134
  %index137 = phi i64 [ %vec.epilog.resume.val127, %vec.epilog.ph134 ], [ %index.next141, %vec.epilog.vector.body136 ] ; 3 uses
  %next.gep138 = getelementptr i8, ptr %1, i64 %index137
  %next.gep139 = getelementptr i8, ptr %2, i64 %index137
  %wide.load140 = load <4 x i8>, ptr %next.gep139, align 1, !tbaa !107
  store <4 x i8> %wide.load140, ptr %next.gep138, align 1, !tbaa !107
  %index.next141 = add nuw i64 %index137, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next141, %n.vec135
  br i1 %i.cj, label %vec.epilog.middle.block142, label %vec.epilog.vector.body136, !llvm.loop !233

vec.epilog.middle.block142:                       ; preds = %vec.epilog.vector.body136
  %cmp.n143 = icmp eq i64 %i.l, %n.vec135
  br i1 %cmp.n143, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i57.preheader

.lr.ph.i.i.i.i.i57.preheader:                     ; preds = %iter.check130, %vec.epilog.iter.check132, %vec.epilog.middle.block142
  %.012.i.i.i.i.i58.ph = phi i64 [ %i.l, %iter.check130 ], [ %i.ca, %vec.epilog.iter.check132 ], [ %i.cg, %vec.epilog.middle.block142 ]
  %.0811.i.i.i.i.i59.ph = phi ptr [ %1, %iter.check130 ], [ %i.cb, %vec.epilog.iter.check132 ], [ %i.ch, %vec.epilog.middle.block142 ]
  %.0910.i.i.i.i.i60.ph = phi ptr [ %2, %iter.check130 ], [ %i.cc, %vec.epilog.iter.check132 ], [ %i.ci, %vec.epilog.middle.block142 ]
  br label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %.lr.ph.i.i.i.i.i57.preheader, %.lr.ph.i.i.i.i.i57
  %.012.i.i.i.i.i58 = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i57 ], [ %.012.i.i.i.i.i58.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 2 uses
  %.0811.i.i.i.i.i59 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i57 ], [ %.0811.i.i.i.i.i59.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 2 uses
  %.0910.i.i.i.i.i60 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i57 ], [ %.0910.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 2 uses
  %i.ck = load i8, ptr %.0910.i.i.i.i.i60, align 1, !tbaa !107
  store i8 %i.ck, ptr %.0811.i.i.i.i.i59, align 1, !tbaa !107
  %i.cl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i60, i64 1
  %i.cm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i59, i64 1
  %i.cn = add nsw i64 %.012.i.i.i.i.i58, -1
  %i.co = icmp samesign ugt i64 %.012.i.i.i.i.i58, 1
  br i1 %i.co, label %.lr.ph.i.i.i.i.i57, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, !llvm.loop !234

bb.n:                                             ; preds = %bb.b
  %i.cp = load ptr, ptr %0, align 8, !tbaa !238   ; 5 uses
  %i.cq = ptrtoint ptr %i.cp to i64               ; 4 uses
  %i.cr = sub i64 %i.i, %i.cq                     ; 4 uses
  %i.cs = sub i64 9223372036854775807, %i.cr
  %i.ct = icmp ult i64 %i.cs, %i.c
  br i1 %i.ct, label %bb.o, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #20
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit:    ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cr, i64 %i.c)
  %i.cu = add i64 %.sroa.speculated.i, %i.cr      ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.cr
  %i.cw = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 9223372036854775807)
  %i.cx = select i1 %i.cv, i64 9223372036854775807, i64 %i.cw ; 3 uses
  %.not.i = icmp eq i64 %i.cx, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit
  %i.cy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #18
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit, %bb.p
  %i.cz = phi ptr [ %i.cy, %bb.p ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.da = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.db = sub i64 %i.da, %i.cq                    ; 4 uses
  %i.dc = icmp sgt i64 %i.db, 1
  br i1 %i.dc, label %bb.q, label %bb.r, !prof !91

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cz, ptr align 1 %i.cp, i64 %i.db, i1 false)
  br label %bb.t

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit
  %i.dd = icmp eq i64 %i.db, 1
  br i1 %i.dd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.de = load i8, ptr %i.cp, align 1, !tbaa !107
  store i8 %i.de, ptr %i.cz, align 1, !tbaa !107
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.df = getelementptr i8, ptr %i.cz, i64 %i.db  ; 2 uses
  %i.dg = icmp sgt i64 %i.c, 0
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i.i.i.i63.preheader, label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67

.lr.ph.i.i.i.i.i.i.i.i63.preheader:               ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr align 1 %2, i64 range(i64 0, -9223372036854775808) %i.c, i1 false), !tbaa !107
  %i.dh = add i64 %i.a, %i.da
  %i.di = add i64 %i.b, %i.cq
  %i.dj = sub i64 %i.dh, %i.di
  %scevgep = getelementptr i8, ptr %i.cz, i64 %i.dj
  br label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67

_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67: ; preds = %.lr.ph.i.i.i.i.i.i.i.i63.preheader, %bb.t
  %.08.lcssa.i.i.i.i.i.i.i.i62 = phi ptr [ %i.df, %bb.t ], [ %scevgep, %.lr.ph.i.i.i.i.i.i.i.i63.preheader ] ; 3 uses
  %i.dk = sub i64 %i.i, %i.da                     ; 4 uses
  %i.dl = icmp sgt i64 %i.dk, 1
  br i1 %i.dl, label %bb.u, label %bb.v, !prof !91

bb.u:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i.i.i.i62, ptr align 1 %1, i64 %i.dk, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67
  %i.dm = icmp eq i64 %i.dk, 1
  br i1 %i.dm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dn = load i8, ptr %1, align 1, !tbaa !107
  store i8 %i.dn, ptr %.08.lcssa.i.i.i.i.i.i.i.i62, align 1, !tbaa !107
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.do = getelementptr inbounds i8, ptr %.08.lcssa.i.i.i.i.i.i.i.i62, i64 %i.dk
  %.not.i69 = icmp eq ptr %i.cp, null
  br i1 %.not.i69, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = sub i64 %i.h, %i.cq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.dp) #17
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit: ; preds = %bb.x, %bb.y
  store ptr %i.cz, ptr %0, align 8, !tbaa !238
  store ptr %i.do, ptr %i.f, align 8, !tbaa !236
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cx
  store ptr %i.dq, ptr %i.d, align 8, !tbaa !235
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i57, %.lr.ph.i.i.i.i.i, %middle.block125, %vec.epilog.middle.block142, %middle.block161, %vec.epilog.middle.block178, %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55, %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco16DirectBitEncoder28EncodeLeastSignificantBits32Eij(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !114  ; 3 uses
  %i.c = sub i32 32, %i.b                         ; 2 uses
  %i.d = sub nsw i32 32, %1                       ; 2 uses
  %i.e = shl i32 %2, %i.d                         ; 2 uses
  %.not = icmp sgt i32 %1, %i.c
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i32 %i.e, %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !115
  %i.i = or i32 %i.h, %i.f                        ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !115
  %i.j = add i32 %i.b, %1                         ; 2 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !114
  %i.k = icmp eq i32 %i.j, 32
  br i1 %i.k, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !69   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !63
  %.not.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.i, ptr %i.m, align 4, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store ptr %i.p, ptr %i.l, align 8, !tbaa !69
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.e:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %0, align 8, !tbaa !62     ; 4 uses
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 6 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775804
  br i1 %i.u, label %bb.f, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #20
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.v = ashr exact i64 %i.t, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 2305843009213693951)
  %i.z = select i1 %i.x, i64 2305843009213693951, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 2
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #18 ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.t ; 2 uses
  %i.ad = load i32, ptr %i.g, align 8, !tbaa !44
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !44
  %i.ae = icmp sgt i64 %i.t, 0
  br i1 %i.ae, label %bb.g, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr align 4 %i.q, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %.not.i17.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.t) #17
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.ab, ptr %0, align 8, !tbaa !62
  store ptr %i.af, ptr %i.l, align 8, !tbaa !69
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.z
  store ptr %i.ag, ptr %i.n, align 8, !tbaa !63
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %bb.d, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  store i32 0, ptr %i.g, align 8, !tbaa !115
  store i32 0, ptr %i.a, align 4, !tbaa !114
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.ah = lshr exact i32 %i.e, %i.d               ; 2 uses
  %i.ai = sub nsw i32 %1, %i.c                    ; 2 uses
  store i32 %i.ai, ptr %i.a, align 4, !tbaa !114
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !115
  %i.am = or i32 %i.al, %i.aj                     ; 2 uses
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !115
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !69 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !63
  %.not.i15 = icmp eq ptr %i.ao, %i.aq
  br i1 %.not.i15, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.am, ptr %i.ao, align 4, !tbaa !44
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store ptr %i.ar, ptr %i.an, align 8, !tbaa !69
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit22

bb.k:                                             ; preds = %bb.i
  %i.as = load ptr, ptr %0, align 8, !tbaa !62    ; 4 uses
  %i.at = ptrtoint ptr %i.ao to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 6 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775804
  br i1 %i.aw, label %bb.l, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i16

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #20
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i16: ; preds = %bb.k
  %i.ax = ashr exact i64 %i.av, 2                 ; 3 uses
  %.sroa.speculated.i.i.i17 = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.ay = add nsw i64 %.sroa.speculated.i.i.i17, %i.ax ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ax
  %i.ba = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 2305843009213693951)
  %i.bb = select i1 %i.az, i64 2305843009213693951, i64 %i.ba ; 3 uses
  %.not.i.i.i18 = icmp ne i64 %i.bb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i18)
  %i.bc = shl nuw nsw i64 %i.bb, 2
  %i.bd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #18 ; 4 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %i.av ; 2 uses
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !44
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !44
  %i.bg = icmp sgt i64 %i.av, 0
  br i1 %i.bg, label %bb.m, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i19

bb.m:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bd, ptr align 4 %i.as, i64 %i.av, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i19

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i19: ; preds = %bb.m, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %.not.i17.i.i20 = icmp eq ptr %i.as, null
  br i1 %.not.i17.i.i20, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i21, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.av) #17
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i21

end_hunk_4
begin_hunk_5_@_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE17_M_reallocate_mapEmb:bb.a
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !103
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !103
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !91

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !103
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !103
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE15_M_allocate_mapEm.exit, !prof !90

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #18 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.m, label %bb.n, !prof !91

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.o, label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit24

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !103
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !103
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit24

_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit24: ; preds = %bb.m, %bb.n, %bb.o
  %i.bc = load ptr, ptr %0, align 8, !tbaa !109
  %i.bd = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bd) #17
  store ptr %i.aq, ptr %0, align 8, !tbaa !109
  store i64 %i.am, ptr %i.k, align 8, !tbaa !111
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit

_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !102
  %i.be = load ptr, ptr %.0, align 8, !tbaa !103  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !101
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 512
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !105
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !102
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !103 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !101
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 512
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !105
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_push_back_auxIJSD_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !102
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 4
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !100
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !101
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 5
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !105
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !100
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 5
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 288230376151711743
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !111
  %i.ag = load ptr, ptr %0, align 8, !tbaa !109
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #18
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !104
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !103
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !99
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !104
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !102
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !103 ; 3 uses
  store ptr %i.as, ptr %i.o, align 8, !tbaa !101
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 512
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !105
  store ptr %i.as, ptr %i.a, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodeInternalIN9__gnu_cxx17__normal_iteratorIPNS_7VectorDIjLi3EEESt6vectorIS6_SaIS6_EEEEEEvT_SC_(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<1>::EncodingStatus", align 8 ; 10 uses
  %4 = alloca %"class.std::stack.39", align 8     ; 19 uses
  %5 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<1>::EncodingStatus", align 8 ; 10 uses
  %6 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<1>::EncodingStatus", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68   ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = shl nuw nsw i64 %i.c, 2                  ; 3 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #18 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.e, i8 0, i64 range(i64 0, 17179869181) %i.d, i1 false), !tbaa !44
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit:            ; preds = %.noexc, %bb.a
  %.sroa.11132.0 = phi ptr [ null, %bb.a ], [ %i.f, %.noexc ]
  %.sroa.0129.0 = phi ptr [ null, %bb.a ], [ %i.e, %.noexc ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.a ], [ %i.g, %.noexc ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60   ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !63
  store ptr %.sroa.0129.0, ptr %i.i, align 8, !tbaa !62
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.k, align 8, !tbaa !69
  store ptr %.sroa.11132.0, ptr %i.l, align 8, !tbaa !63
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.p) #17
  %.pre = load i32, ptr %i.a, align 8, !tbaa !68
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.b, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.q = phi i32 [ %.pre, %bb.b ], [ %i.b, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit ] ; 2 uses
  %.not.i.i.i.i95 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i95, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit102, label %.noexc101

.noexc101:                                        ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 2                  ; 3 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #18 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 0, i64 range(i64 0, 17179869181) %i.s, i1 false), !tbaa !44
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit102

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit102:         ; preds = %.noexc101, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.sroa.0124.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.t, %.noexc101 ]
  %.sroa.11.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.u, %.noexc101 ]
  %.0.i.i.i.i.i.i.i99 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.v, %.noexc101 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !60   ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !62   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !63
  store ptr %.sroa.0124.0, ptr %i.x, align 8, !tbaa !62
  store ptr %.0.i.i.i.i.i.i.i99, ptr %i.z, align 8, !tbaa !69
  store ptr %.sroa.11.0, ptr %i.aa, align 8, !tbaa !63
  %.not.i.i.i.i.i103 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i103, label %_ZNSt6vectorIjSaIjEED2Ev.exit106, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit102
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.y to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ae) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit106

_ZNSt6vectorIjSaIjEED2Ev.exit106:                 ; preds = %bb.c, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit102
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr %1, ptr %3, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.af, align 8, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.ag, align 8, !tbaa !251
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !252
  %i.ai = ptrtoint ptr %2 to i64
  %i.aj = ptrtoint ptr %1 to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv exact i64 %i.ak, 12
  %i.am = trunc i64 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.am, ptr %i.an, align 4, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %4, i64 noundef 0)
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 12 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !120 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !254
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -32
  %.not.i.i = icmp eq ptr %i.ap, %i.as
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !99
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !120
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  store ptr %i.au, ptr %i.ao, align 8, !tbaa !120
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit106
  invoke void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_push_back_auxIJRKSD_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(28) %3)
          to label %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit_crit_edge unwind label %bb.i

._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit_crit_edge: ; preds = %bb.e
  %.pre190 = load ptr, ptr %i.ao, align 8, !tbaa !121
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit: ; preds = %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit_crit_edge, %bb.d
  %i.av = phi ptr [ %.pre190, %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit_crit_edge ], [ %i.au, %bb.d ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !121
  %i.ay = icmp eq ptr %i.av, %i.ax
  br i1 %i.ay, label %._crit_edge171, label %.lr.ph170

.lr.ph170:                                        ; preds = %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph170, %.loopexit
  %i.bn = phi ptr [ %i.av, %.lr.ph170 ], [ %i.gr, %.loopexit ] ; 5 uses
  %i.bo = load ptr, ptr %i.az, align 8, !tbaa !122, !noalias !255 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds i8, ptr %i.bn, i64 -32 ; 2 uses
  %.sroa.065.sroa.0.0.copyload = load i64, ptr %i.bq, align 8, !tbaa !43
  %.sroa.065.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.bn, i64 -24
  %.sroa.065.sroa.5.0.copyload = load i64, ptr %.sroa.065.sroa.5.0..sroa_idx, align 8, !tbaa !43
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.bn, i64 -16
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !44
  %.sroa.766.0..sroa_idx = getelementptr inbounds i8, ptr %i.bn, i64 -8
  %.sroa.766.0.copyload = load i32, ptr %.sroa.766.0..sroa_idx, align 8, !tbaa !44
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE3popEv.exit

bb.h:                                             ; preds = %bb.f
  %i.br = load ptr, ptr %i.ba, align 8, !tbaa !123, !noalias !255
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !124 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 480
  %.sroa.065.sroa.0.0.copyload141 = load i64, ptr %i.bu, align 8, !tbaa !43
  %.sroa.065.sroa.5.0..sroa_idx142 = getelementptr inbounds nuw i8, ptr %i.bt, i64 488
  %.sroa.065.sroa.5.0.copyload143 = load i64, ptr %.sroa.065.sroa.5.0..sroa_idx142, align 8, !tbaa !43
  %.sroa.6.0..sroa_idx144 = getelementptr inbounds nuw i8, ptr %i.bt, i64 496
  %.sroa.6.0.copyload145 = load i32, ptr %.sroa.6.0..sroa_idx144, align 8, !tbaa !44
  %.sroa.766.0..sroa_idx146 = getelementptr inbounds nuw i8, ptr %i.bt, i64 504
  %.sroa.766.0.copyload147 = load i32, ptr %.sroa.766.0..sroa_idx146, align 8, !tbaa !44
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef 512) #17
  %i.bv = load ptr, ptr %i.ba, align 8, !tbaa !125
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -8 ; 2 uses
  store ptr %i.bw, ptr %i.ba, align 8, !tbaa !123
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !124 ; 3 uses
  store ptr %i.bx, ptr %i.az, align 8, !tbaa !122
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 512
  store ptr %i.by, ptr %i.aq, align 8, !tbaa !126
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 480
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE3popEv.exit

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE3popEv.exit: ; preds = %bb.g, %bb.h
  %.sroa.766.0.copyload154 = phi i32 [ %.sroa.766.0.copyload, %bb.g ], [ %.sroa.766.0.copyload147, %bb.h ] ; 3 uses
  %.sroa.6.0.copyload152 = phi i32 [ %.sroa.6.0.copyload, %bb.g ], [ %.sroa.6.0.copyload145, %bb.h ] ; 2 uses
  %.sroa.065.sroa.5.0.copyload150 = phi i64 [ %.sroa.065.sroa.5.0.copyload, %bb.g ], [ %.sroa.065.sroa.5.0.copyload143, %bb.h ] ; 4 uses
  %.sroa.065.sroa.0.0.copyload148 = phi i64 [ %.sroa.065.sroa.0.0.copyload, %bb.g ], [ %.sroa.065.sroa.0.0.copyload141, %bb.h ] ; 4 uses
  %storemerge.i.i = phi ptr [ %i.bq, %bb.g ], [ %i.bz, %bb.h ]
  store ptr %storemerge.i.i, ptr %i.ao, align 8, !tbaa !120
  %i.ca = inttoptr i64 %.sroa.065.sroa.0.0.copyload148 to ptr ; 5 uses
  %i.cb = inttoptr i64 %.sroa.065.sroa.5.0.copyload150 to ptr ; 3 uses
  %i.cc = zext i32 %.sroa.766.0.copyload154 to i64 ; 3 uses
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !60  ; 2 uses
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %i.cc
  %i.cf = load ptr, ptr %i.w, align 8, !tbaa !60
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %i.cc ; 2 uses
  %i.ch = load i32, ptr %i.a, align 8, !tbaa !68
  %i.ci = add i32 %i.ch, -1
  %i.cj = icmp eq i32 %.sroa.6.0.copyload152, %i.ci
  %i.ck = add i32 %.sroa.6.0.copyload152, 1
  %i.cl = select i1 %i.cj, i32 0, i32 %i.ck       ; 6 uses
  %i.cm = zext i32 %i.cl to i64                   ; 3 uses
  %i.cn = load ptr, ptr %i.cg, align 8, !tbaa !62
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cm
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !44 ; 2 uses
  %i.cq = sub i64 %.sroa.065.sroa.5.0.copyload150, %.sroa.065.sroa.0.0.copyload148
  %i.cr = sdiv exact i64 %i.cq, 12                ; 2 uses
  %i.cs = trunc i64 %i.cr to i32                  ; 4 uses
  %i.ct = load i32, ptr %0, align 8, !tbaa !67    ; 2 uses
  %i.cu = icmp eq i32 %i.ct, %i.cp
  br i1 %i.cu, label %.loopexit, label %bb.j, !llvm.loop !243

bb.i:                                             ; preds = %bb.e
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.j:                                             ; preds = %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE3popEv.exit
  %i.cw = icmp ult i32 %i.cs, 3
  br i1 %i.cw, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.cx = load ptr, ptr %i.bl, align 8, !tbaa !62 ; 2 uses
  store i32 %i.cl, ptr %i.cx, align 4, !tbaa !44
  %i.cy = load i32, ptr %i.a, align 8, !tbaa !68  ; 3 uses
  %i.cz = icmp ugt i32 %i.cy, 1
  br i1 %i.cz, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.k
  %i.da = phi i32 [ %i.cy, %bb.k ], [ %i.dh, %.lr.ph ] ; 2 uses
  %.not172 = icmp eq i32 %i.cs, 0
  br i1 %.not172, label %.loopexit, label %.lr.ph169, !llvm.loop !243

.lr.ph169:                                        ; preds = %.preheader
  %.not173 = icmp eq i32 %i.da, 0
  br i1 %.not173, label %..loopexit_crit_edge, label %.lr.ph169.split, !llvm.loop !243

.lr.ph169.split:                                  ; preds = %.lr.ph169
  %wide.trip.count = and i64 %i.cr, 3
  br label %bb.l, !llvm.loop !243

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %i.db = phi i32 [ %spec.select, %.lr.ph ], [ %i.cl, %bb.k ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.k ] ; 2 uses
  %i.dc = phi i32 [ %i.dh, %.lr.ph ], [ %i.cy, %bb.k ]
  %i.dd = add i32 %i.dc, -1
  %i.de = icmp eq i32 %i.db, %i.dd
  %i.df = add i32 %i.db, 1
  %spec.select = select i1 %i.de, i32 0, i32 %i.df ; 2 uses
end_hunk_5
begin_hunk_6_@_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE17_M_reallocate_mapEmb:bb.a
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !124
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !124
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !91

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !124
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !124
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE15_M_allocate_mapEm.exit, !prof !90

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #18 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.m, label %bb.n, !prof !91

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.o, label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit24

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !124
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !124
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit24

_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit24: ; preds = %bb.m, %bb.n, %bb.o
  %i.bc = load ptr, ptr %0, align 8, !tbaa !127
  %i.bd = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bd) #17
  store ptr %i.aq, ptr %0, align 8, !tbaa !127
  store i64 %i.am, ptr %i.k, align 8, !tbaa !129
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit

_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !123
  %i.be = load ptr, ptr %.0, align 8, !tbaa !124  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !122
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 512
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !126
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !123
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !124 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !122
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 512
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !126
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_push_back_auxIJSD_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !123  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 4
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !122
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 5
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !126
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 5
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 288230376151711743
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !129
  %i.ag = load ptr, ptr %0, align 8, !tbaa !127
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #18
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !125
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !124
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !99
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !125
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !123
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !124 ; 3 uses
  store ptr %i.as, ptr %i.o, align 8, !tbaa !122
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 512
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !126
  store ptr %i.as, ptr %i.a, align 8, !tbaa !120
  ret void
}

declare void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

declare void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodeInternalIN9__gnu_cxx17__normal_iteratorIPNS_7VectorDIjLi3EEESt6vectorIS6_SaIS6_EEEEEEvT_SC_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<2>::EncodingStatus", align 8 ; 10 uses
  %4 = alloca %"class.std::stack.49", align 8     ; 19 uses
  %5 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<2>::EncodingStatus", align 8 ; 10 uses
  %6 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<2>::EncodingStatus", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !267  ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = shl nuw nsw i64 %i.c, 2                  ; 3 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #18 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.e, i8 0, i64 range(i64 0, 17179869181) %i.d, i1 false), !tbaa !44
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit:            ; preds = %.noexc, %bb.a
  %.sroa.11132.0 = phi ptr [ null, %bb.a ], [ %i.f, %.noexc ]
  %.sroa.0129.0 = phi ptr [ null, %bb.a ], [ %i.e, %.noexc ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.a ], [ %i.g, %.noexc ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60   ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !63
  store ptr %.sroa.0129.0, ptr %i.i, align 8, !tbaa !62
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.k, align 8, !tbaa !69
  store ptr %.sroa.11132.0, ptr %i.l, align 8, !tbaa !63
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.p) #17
  %.pre = load i32, ptr %i.a, align 8, !tbaa !267
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.b, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.q = phi i32 [ %.pre, %bb.b ], [ %i.b, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit ] ; 2 uses
  %.not.i.i.i.i95 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i95, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit102, label %.noexc101

.noexc101:                                        ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 2                  ; 3 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #18 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 0, i64 range(i64 0, 17179869181) %i.s, i1 false), !tbaa !44
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit102

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit102:         ; preds = %.noexc101, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.sroa.0124.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.t, %.noexc101 ]
  %.sroa.11.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.u, %.noexc101 ]
  %.0.i.i.i.i.i.i.i99 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.v, %.noexc101 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !60   ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !62   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !63
  store ptr %.sroa.0124.0, ptr %i.x, align 8, !tbaa !62
  store ptr %.0.i.i.i.i.i.i.i99, ptr %i.z, align 8, !tbaa !69
  store ptr %.sroa.11.0, ptr %i.aa, align 8, !tbaa !63
  %.not.i.i.i.i.i103 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i103, label %_ZNSt6vectorIjSaIjEED2Ev.exit106, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit102
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.y to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ae) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit106

_ZNSt6vectorIjSaIjEED2Ev.exit106:                 ; preds = %bb.c, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit102
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr %1, ptr %3, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.af, align 8, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.ag, align 8, !tbaa !269
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !270
  %i.ai = ptrtoint ptr %2 to i64
  %i.aj = ptrtoint ptr %1 to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv exact i64 %i.ak, 12
  %i.am = trunc i64 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.am, ptr %i.an, align 4, !tbaa !271
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %4, i64 noundef 0)
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 12 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !134 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !272
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -32
  %.not.i.i = icmp eq ptr %i.ap, %i.as
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !99
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !134
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  store ptr %i.au, ptr %i.ao, align 8, !tbaa !134
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit106
  invoke void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_push_back_auxIJRKSD_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(28) %3)
          to label %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit_crit_edge unwind label %bb.i

._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit_crit_edge: ; preds = %bb.e
  %.pre190 = load ptr, ptr %i.ao, align 8, !tbaa !135
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit: ; preds = %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit_crit_edge, %bb.d
  %i.av = phi ptr [ %.pre190, %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit_crit_edge ], [ %i.au, %bb.d ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !135
  %i.ay = icmp eq ptr %i.av, %i.ax
  br i1 %i.ay, label %._crit_edge171, label %.lr.ph170

.lr.ph170:                                        ; preds = %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph170, %.loopexit
  %i.bn = phi ptr [ %i.av, %.lr.ph170 ], [ %i.gr, %.loopexit ] ; 5 uses
  %i.bo = load ptr, ptr %i.az, align 8, !tbaa !136, !noalias !273 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds i8, ptr %i.bn, i64 -32 ; 2 uses
  %.sroa.065.sroa.0.0.copyload = load i64, ptr %i.bq, align 8, !tbaa !43
  %.sroa.065.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.bn, i64 -24
  %.sroa.065.sroa.5.0.copyload = load i64, ptr %.sroa.065.sroa.5.0..sroa_idx, align 8, !tbaa !43
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.bn, i64 -16
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !44
  %.sroa.766.0..sroa_idx = getelementptr inbounds i8, ptr %i.bn, i64 -8
  %.sroa.766.0.copyload = load i32, ptr %.sroa.766.0..sroa_idx, align 8, !tbaa !44
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE3popEv.exit

bb.h:                                             ; preds = %bb.f
  %i.br = load ptr, ptr %i.ba, align 8, !tbaa !137, !noalias !273
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !138 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 480
  %.sroa.065.sroa.0.0.copyload141 = load i64, ptr %i.bu, align 8, !tbaa !43
  %.sroa.065.sroa.5.0..sroa_idx142 = getelementptr inbounds nuw i8, ptr %i.bt, i64 488
  %.sroa.065.sroa.5.0.copyload143 = load i64, ptr %.sroa.065.sroa.5.0..sroa_idx142, align 8, !tbaa !43
  %.sroa.6.0..sroa_idx144 = getelementptr inbounds nuw i8, ptr %i.bt, i64 496
  %.sroa.6.0.copyload145 = load i32, ptr %.sroa.6.0..sroa_idx144, align 8, !tbaa !44
  %.sroa.766.0..sroa_idx146 = getelementptr inbounds nuw i8, ptr %i.bt, i64 504
  %.sroa.766.0.copyload147 = load i32, ptr %.sroa.766.0..sroa_idx146, align 8, !tbaa !44
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef 512) #17
  %i.bv = load ptr, ptr %i.ba, align 8, !tbaa !139
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -8 ; 2 uses
  store ptr %i.bw, ptr %i.ba, align 8, !tbaa !137
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !138 ; 3 uses
  store ptr %i.bx, ptr %i.az, align 8, !tbaa !136
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 512
  store ptr %i.by, ptr %i.aq, align 8, !tbaa !140
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 480
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE3popEv.exit

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE3popEv.exit: ; preds = %bb.g, %bb.h
  %.sroa.766.0.copyload154 = phi i32 [ %.sroa.766.0.copyload, %bb.g ], [ %.sroa.766.0.copyload147, %bb.h ] ; 3 uses
  %.sroa.6.0.copyload152 = phi i32 [ %.sroa.6.0.copyload, %bb.g ], [ %.sroa.6.0.copyload145, %bb.h ] ; 2 uses
  %.sroa.065.sroa.5.0.copyload150 = phi i64 [ %.sroa.065.sroa.5.0.copyload, %bb.g ], [ %.sroa.065.sroa.5.0.copyload143, %bb.h ] ; 4 uses
  %.sroa.065.sroa.0.0.copyload148 = phi i64 [ %.sroa.065.sroa.0.0.copyload, %bb.g ], [ %.sroa.065.sroa.0.0.copyload141, %bb.h ] ; 4 uses
  %storemerge.i.i = phi ptr [ %i.bq, %bb.g ], [ %i.bz, %bb.h ]
  store ptr %storemerge.i.i, ptr %i.ao, align 8, !tbaa !134
  %i.ca = inttoptr i64 %.sroa.065.sroa.0.0.copyload148 to ptr ; 5 uses
  %i.cb = inttoptr i64 %.sroa.065.sroa.5.0.copyload150 to ptr ; 3 uses
  %i.cc = zext i32 %.sroa.766.0.copyload154 to i64 ; 3 uses
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !60  ; 2 uses
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %i.cc
  %i.cf = load ptr, ptr %i.w, align 8, !tbaa !60
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %i.cc ; 2 uses
  %i.ch = load i32, ptr %i.a, align 8, !tbaa !267
  %i.ci = add i32 %i.ch, -1
  %i.cj = icmp eq i32 %.sroa.6.0.copyload152, %i.ci
  %i.ck = add i32 %.sroa.6.0.copyload152, 1
  %i.cl = select i1 %i.cj, i32 0, i32 %i.ck       ; 6 uses
  %i.cm = zext i32 %i.cl to i64                   ; 3 uses
  %i.cn = load ptr, ptr %i.cg, align 8, !tbaa !62
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cm
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !44 ; 2 uses
  %i.cq = sub i64 %.sroa.065.sroa.5.0.copyload150, %.sroa.065.sroa.0.0.copyload148
  %i.cr = sdiv exact i64 %i.cq, 12                ; 2 uses
  %i.cs = trunc i64 %i.cr to i32                  ; 4 uses
  %i.ct = load i32, ptr %0, align 8, !tbaa !77    ; 2 uses
  %i.cu = icmp eq i32 %i.ct, %i.cp
  br i1 %i.cu, label %.loopexit, label %bb.j, !llvm.loop !260

bb.i:                                             ; preds = %bb.e
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.j:                                             ; preds = %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE3popEv.exit
  %i.cw = icmp ult i32 %i.cs, 3
  br i1 %i.cw, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.cx = load ptr, ptr %i.bl, align 8, !tbaa !62 ; 2 uses
  store i32 %i.cl, ptr %i.cx, align 4, !tbaa !44
  %i.cy = load i32, ptr %i.a, align 8, !tbaa !267 ; 3 uses
  %i.cz = icmp ugt i32 %i.cy, 1
  br i1 %i.cz, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.k
  %i.da = phi i32 [ %i.cy, %bb.k ], [ %i.dh, %.lr.ph ] ; 2 uses
  %.not172 = icmp eq i32 %i.cs, 0
  br i1 %.not172, label %.loopexit, label %.lr.ph169, !llvm.loop !260

.lr.ph169:                                        ; preds = %.preheader
  %.not173 = icmp eq i32 %i.da, 0
  br i1 %.not173, label %..loopexit_crit_edge, label %.lr.ph169.split, !llvm.loop !260

.lr.ph169.split:                                  ; preds = %.lr.ph169
  %wide.trip.count = and i64 %i.cr, 3
  br label %bb.l, !llvm.loop !260

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %i.db = phi i32 [ %spec.select, %.lr.ph ], [ %i.cl, %bb.k ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.k ] ; 2 uses
  %i.dc = phi i32 [ %i.dh, %.lr.ph ], [ %i.cy, %bb.k ]
  %i.dd = add i32 %i.dc, -1
  %i.de = icmp eq i32 %i.db, %i.dd
  %i.df = add i32 %i.db, 1
  %spec.select = select i1 %i.de, i32 0, i32 %i.df ; 2 uses
end_hunk_6
begin_hunk_7_@_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE17_M_reallocate_mapEmb:bb.a
bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !138
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !138
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !91

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !138
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !138
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE15_M_allocate_mapEm.exit, !prof !90

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #18 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.m, label %bb.n, !prof !91

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.o, label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit24

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !138
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !138
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit24

_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit24: ; preds = %bb.m, %bb.n, %bb.o
  %i.bc = load ptr, ptr %0, align 8, !tbaa !141
  %i.bd = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bd) #17
  store ptr %i.aq, ptr %0, align 8, !tbaa !141
  store i64 %i.am, ptr %i.k, align 8, !tbaa !143
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit

_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !137
  %i.be = load ptr, ptr %.0, align 8, !tbaa !138  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !136
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 512
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !140
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !137
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !138 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !136
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 512
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !140
  ret void
}

declare void @_ZN5draco14RAnsBitEncoder28EncodeLeastSignificantBits32Eij(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_push_back_auxIJSD_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !137  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !137
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 4
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !136
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 5
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !140
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !135
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 5
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 288230376151711743
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !143
  %i.ag = load ptr, ptr %0, align 8, !tbaa !141
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #18
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !139
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !138
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !134
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !99
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !139
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !137
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !138 ; 3 uses
  store ptr %i.as, ptr %i.o, align 8, !tbaa !136
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 512
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !140
  store ptr %i.as, ptr %i.a, align 8, !tbaa !134
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodeInternalIN9__gnu_cxx17__normal_iteratorIPNS_7VectorDIjLi3EEESt6vectorIS6_SaIS6_EEEEEEvT_SC_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<3>::EncodingStatus", align 8 ; 10 uses
  %4 = alloca %"class.std::stack.59", align 8     ; 19 uses
  %5 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<3>::EncodingStatus", align 8 ; 10 uses
  %6 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<3>::EncodingStatus", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !80   ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = shl nuw nsw i64 %i.c, 2                  ; 3 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #18 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.e, i8 0, i64 range(i64 0, 17179869181) %i.d, i1 false), !tbaa !44
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit:            ; preds = %.noexc, %bb.a
  %.sroa.11132.0 = phi ptr [ null, %bb.a ], [ %i.f, %.noexc ]
  %.sroa.0129.0 = phi ptr [ null, %bb.a ], [ %i.e, %.noexc ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.a ], [ %i.g, %.noexc ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60   ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !63
  store ptr %.sroa.0129.0, ptr %i.i, align 8, !tbaa !62
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.k, align 8, !tbaa !69
  store ptr %.sroa.11132.0, ptr %i.l, align 8, !tbaa !63
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.p) #17
  %.pre = load i32, ptr %i.a, align 8, !tbaa !80
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.b, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.q = phi i32 [ %.pre, %bb.b ], [ %i.b, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit ] ; 2 uses
  %.not.i.i.i.i95 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i95, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit102, label %.noexc101

.noexc101:                                        ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 2                  ; 3 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #18 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 0, i64 range(i64 0, 17179869181) %i.s, i1 false), !tbaa !44
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit102

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit102:         ; preds = %.noexc101, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.sroa.0124.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.t, %.noexc101 ]
  %.sroa.11.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.u, %.noexc101 ]
  %.0.i.i.i.i.i.i.i99 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.v, %.noexc101 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !60   ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !62   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !63
  store ptr %.sroa.0124.0, ptr %i.x, align 8, !tbaa !62
  store ptr %.0.i.i.i.i.i.i.i99, ptr %i.z, align 8, !tbaa !69
  store ptr %.sroa.11.0, ptr %i.aa, align 8, !tbaa !63
  %.not.i.i.i.i.i103 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i103, label %_ZNSt6vectorIjSaIjEED2Ev.exit106, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit102
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.y to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ae) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit106

_ZNSt6vectorIjSaIjEED2Ev.exit106:                 ; preds = %bb.c, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit102
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr %1, ptr %3, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.af, align 8, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.ag, align 8, !tbaa !286
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !287
  %i.ai = ptrtoint ptr %2 to i64
  %i.aj = ptrtoint ptr %1 to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv exact i64 %i.ak, 12
  %i.am = trunc i64 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.am, ptr %i.an, align 4, !tbaa !288
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %4, i64 noundef 0)
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 12 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !148 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !289
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -32
  %.not.i.i = icmp eq ptr %i.ap, %i.as
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !99
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !148
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  store ptr %i.au, ptr %i.ao, align 8, !tbaa !148
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit106
  invoke void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_push_back_auxIJRKSD_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(28) %3)
          to label %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit_crit_edge unwind label %bb.i

._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit_crit_edge: ; preds = %bb.e
  %.pre190 = load ptr, ptr %i.ao, align 8, !tbaa !149
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit: ; preds = %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit_crit_edge, %bb.d
  %i.av = phi ptr [ %.pre190, %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit_crit_edge ], [ %i.au, %bb.d ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !149
  %i.ay = icmp eq ptr %i.av, %i.ax
  br i1 %i.ay, label %._crit_edge171, label %.lr.ph170

.lr.ph170:                                        ; preds = %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph170, %.loopexit
  %i.bn = phi ptr [ %i.av, %.lr.ph170 ], [ %i.gr, %.loopexit ] ; 5 uses
  %i.bo = load ptr, ptr %i.az, align 8, !tbaa !150, !noalias !290 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds i8, ptr %i.bn, i64 -32 ; 2 uses
  %.sroa.065.sroa.0.0.copyload = load i64, ptr %i.bq, align 8, !tbaa !43
  %.sroa.065.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.bn, i64 -24
  %.sroa.065.sroa.5.0.copyload = load i64, ptr %.sroa.065.sroa.5.0..sroa_idx, align 8, !tbaa !43
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.bn, i64 -16
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !44
  %.sroa.766.0..sroa_idx = getelementptr inbounds i8, ptr %i.bn, i64 -8
  %.sroa.766.0.copyload = load i32, ptr %.sroa.766.0..sroa_idx, align 8, !tbaa !44
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE3popEv.exit

bb.h:                                             ; preds = %bb.f
  %i.br = load ptr, ptr %i.ba, align 8, !tbaa !151, !noalias !290
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !152 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 480
  %.sroa.065.sroa.0.0.copyload141 = load i64, ptr %i.bu, align 8, !tbaa !43
  %.sroa.065.sroa.5.0..sroa_idx142 = getelementptr inbounds nuw i8, ptr %i.bt, i64 488
  %.sroa.065.sroa.5.0.copyload143 = load i64, ptr %.sroa.065.sroa.5.0..sroa_idx142, align 8, !tbaa !43
  %.sroa.6.0..sroa_idx144 = getelementptr inbounds nuw i8, ptr %i.bt, i64 496
  %.sroa.6.0.copyload145 = load i32, ptr %.sroa.6.0..sroa_idx144, align 8, !tbaa !44
  %.sroa.766.0..sroa_idx146 = getelementptr inbounds nuw i8, ptr %i.bt, i64 504
  %.sroa.766.0.copyload147 = load i32, ptr %.sroa.766.0..sroa_idx146, align 8, !tbaa !44
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef 512) #17
  %i.bv = load ptr, ptr %i.ba, align 8, !tbaa !153
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -8 ; 2 uses
  store ptr %i.bw, ptr %i.ba, align 8, !tbaa !151
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !152 ; 3 uses
  store ptr %i.bx, ptr %i.az, align 8, !tbaa !150
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 512
  store ptr %i.by, ptr %i.aq, align 8, !tbaa !154
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 480
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE3popEv.exit

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE3popEv.exit: ; preds = %bb.g, %bb.h
  %.sroa.766.0.copyload154 = phi i32 [ %.sroa.766.0.copyload, %bb.g ], [ %.sroa.766.0.copyload147, %bb.h ] ; 3 uses
  %.sroa.6.0.copyload152 = phi i32 [ %.sroa.6.0.copyload, %bb.g ], [ %.sroa.6.0.copyload145, %bb.h ] ; 2 uses
  %.sroa.065.sroa.5.0.copyload150 = phi i64 [ %.sroa.065.sroa.5.0.copyload, %bb.g ], [ %.sroa.065.sroa.5.0.copyload143, %bb.h ] ; 4 uses
  %.sroa.065.sroa.0.0.copyload148 = phi i64 [ %.sroa.065.sroa.0.0.copyload, %bb.g ], [ %.sroa.065.sroa.0.0.copyload141, %bb.h ] ; 4 uses
  %storemerge.i.i = phi ptr [ %i.bq, %bb.g ], [ %i.bz, %bb.h ]
  store ptr %storemerge.i.i, ptr %i.ao, align 8, !tbaa !148
  %i.ca = inttoptr i64 %.sroa.065.sroa.0.0.copyload148 to ptr ; 5 uses
  %i.cb = inttoptr i64 %.sroa.065.sroa.5.0.copyload150 to ptr ; 3 uses
  %i.cc = zext i32 %.sroa.766.0.copyload154 to i64 ; 3 uses
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !60  ; 2 uses
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %i.cc
  %i.cf = load ptr, ptr %i.w, align 8, !tbaa !60
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %i.cc ; 2 uses
  %i.ch = load i32, ptr %i.a, align 8, !tbaa !80
  %i.ci = add i32 %i.ch, -1
  %i.cj = icmp eq i32 %.sroa.6.0.copyload152, %i.ci
  %i.ck = add i32 %.sroa.6.0.copyload152, 1
  %i.cl = select i1 %i.cj, i32 0, i32 %i.ck       ; 6 uses
  %i.cm = zext i32 %i.cl to i64                   ; 3 uses
  %i.cn = load ptr, ptr %i.cg, align 8, !tbaa !62
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cm
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !44 ; 2 uses
  %i.cq = sub i64 %.sroa.065.sroa.5.0.copyload150, %.sroa.065.sroa.0.0.copyload148
  %i.cr = sdiv exact i64 %i.cq, 12                ; 2 uses
  %i.cs = trunc i64 %i.cr to i32                  ; 4 uses
  %i.ct = load i32, ptr %0, align 8, !tbaa !79    ; 2 uses
  %i.cu = icmp eq i32 %i.ct, %i.cp
  br i1 %i.cu, label %.loopexit, label %bb.j, !llvm.loop !278

bb.i:                                             ; preds = %bb.e
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.j:                                             ; preds = %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE3popEv.exit
  %i.cw = icmp ult i32 %i.cs, 3
  br i1 %i.cw, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.cx = load ptr, ptr %i.bl, align 8, !tbaa !62 ; 2 uses
  store i32 %i.cl, ptr %i.cx, align 4, !tbaa !44
  %i.cy = load i32, ptr %i.a, align 8, !tbaa !80  ; 3 uses
  %i.cz = icmp ugt i32 %i.cy, 1
  br i1 %i.cz, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.k
  %i.da = phi i32 [ %i.cy, %bb.k ], [ %i.dh, %.lr.ph ] ; 2 uses
  %.not172 = icmp eq i32 %i.cs, 0
  br i1 %.not172, label %.loopexit, label %.lr.ph169, !llvm.loop !278

.lr.ph169:                                        ; preds = %.preheader
  %.not173 = icmp eq i32 %i.da, 0
  br i1 %.not173, label %..loopexit_crit_edge, label %.lr.ph169.split, !llvm.loop !278

.lr.ph169.split:                                  ; preds = %.lr.ph169
  %wide.trip.count = and i64 %i.cr, 3
  br label %bb.l, !llvm.loop !278

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %i.db = phi i32 [ %spec.select, %.lr.ph ], [ %i.cl, %bb.k ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.k ] ; 2 uses
  %i.dc = phi i32 [ %i.dh, %.lr.ph ], [ %i.cy, %bb.k ]
  %i.dd = add i32 %i.dc, -1
  %i.de = icmp eq i32 %i.db, %i.dd
  %i.df = add i32 %i.db, 1
  %spec.select = select i1 %i.de, i32 0, i32 %i.df ; 2 uses
end_hunk_7
begin_hunk_8_@_ZNSt5arrayIN5draco14RAnsBitEncoderELm32EEC2Ev:bb.a
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.13)
          to label %bb.n unwind label %.preheader.preheader

bb.n:                                             ; preds = %bb.m
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.14)
          to label %bb.o unwind label %.preheader.preheader

bb.o:                                             ; preds = %bb.n
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.15)
          to label %bb.p unwind label %.preheader.preheader

bb.p:                                             ; preds = %bb.o
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.16)
          to label %bb.q unwind label %.preheader.preheader

bb.q:                                             ; preds = %bb.p
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.17)
          to label %bb.r unwind label %.preheader.preheader

bb.r:                                             ; preds = %bb.q
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.18)
          to label %bb.s unwind label %.preheader.preheader

bb.s:                                             ; preds = %bb.r
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.19)
          to label %bb.t unwind label %.preheader.preheader

bb.t:                                             ; preds = %bb.s
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.20)
          to label %bb.u unwind label %.preheader.preheader

bb.u:                                             ; preds = %bb.t
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.21)
          to label %bb.v unwind label %.preheader.preheader

bb.v:                                             ; preds = %bb.u
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.22)
          to label %bb.w unwind label %.preheader.preheader

bb.w:                                             ; preds = %bb.v
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %0, i64 1288 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.23)
          to label %bb.x unwind label %.preheader.preheader

bb.x:                                             ; preds = %bb.w
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %0, i64 1344 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.24)
          to label %bb.y unwind label %.preheader.preheader

bb.y:                                             ; preds = %bb.x
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.25)
          to label %bb.z unwind label %.preheader.preheader

bb.z:                                             ; preds = %bb.y
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.26)
          to label %bb.aa unwind label %.preheader.preheader

bb.aa:                                            ; preds = %bb.z
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %0, i64 1512 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.27)
          to label %bb.ab unwind label %.preheader.preheader

bb.ab:                                            ; preds = %bb.aa
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %0, i64 1568 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.28)
          to label %bb.ac unwind label %.preheader.preheader

bb.ac:                                            ; preds = %bb.ab
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.29)
          to label %bb.ad unwind label %.preheader.preheader

bb.ad:                                            ; preds = %bb.ac
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %0, i64 1680 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.30)
          to label %bb.ae unwind label %.preheader.preheader

bb.ae:                                            ; preds = %bb.ad
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %0, i64 1736 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.31)
          to label %bb.af unwind label %.preheader.preheader

bb.af:                                            ; preds = %bb.ae
  ret void

.preheader.preheader:                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae
  %.ptr.lcssa.ph = phi ptr [ %.ptr.31, %bb.ae ], [ %.ptr.30, %bb.ad ], [ %.ptr.29, %bb.ac ], [ %.ptr.28, %bb.ab ], [ %.ptr.27, %bb.aa ], [ %.ptr.26, %bb.z ], [ %.ptr.25, %bb.y ], [ %.ptr.24, %bb.x ], [ %.ptr.23, %bb.w ], [ %.ptr.22, %bb.v ], [ %.ptr.21, %bb.u ], [ %.ptr.20, %bb.t ], [ %.ptr.19, %bb.s ], [ %.ptr.18, %bb.r ], [ %.ptr.17, %bb.q ], [ %.ptr.16, %bb.p ], [ %.ptr.15, %bb.o ], [ %.ptr.14, %bb.n ], [ %.ptr.13, %bb.m ], [ %.ptr.12, %bb.l ], [ %.ptr.11, %bb.k ], [ %.ptr.10, %bb.j ], [ %.ptr.9, %bb.i ], [ %.ptr.8, %bb.h ], [ %.ptr.7, %bb.g ], [ %.ptr.6, %bb.f ], [ %.ptr.5, %bb.e ], [ %.ptr.4, %bb.d ], [ %.ptr.3, %bb.c ], [ %.ptr.2, %bb.b ], [ %.ptr.1, %bb.a ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.a = phi ptr [ %i.b, %.preheader ], [ %.ptr.lcssa.ph, %.preheader.preheader ]
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -56 ; 3 uses
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.b) #16
  %i.c = icmp eq ptr %i.b, %0
  br i1 %i.c, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader
  resume { ptr, i32 } %lpad.thr_comm
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco18FoldedBit32EncoderINS_14RAnsBitEncoderEE13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(1848) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 336
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 392
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 504
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 560
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 616
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 672
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 728
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 784
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 840
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 896
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 952
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1008
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1064
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1120
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1176
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1232
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1288
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1344
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1400
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1456
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1512
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1568
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1624
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1680
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1736
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1792
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %i.af)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodeInternalIN9__gnu_cxx17__normal_iteratorIPNS_7VectorDIjLi3EEESt6vectorIS6_SaIS6_EEEEEEvT_SC_(ptr noundef nonnull align 8 dereferenceable(2080) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<4>::EncodingStatus", align 8 ; 10 uses
  %4 = alloca %"class.std::stack.69", align 8     ; 19 uses
  %5 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<4>::EncodingStatus", align 8 ; 10 uses
  %6 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<4>::EncodingStatus", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !302  ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = shl nuw nsw i64 %i.c, 2                  ; 3 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #18 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.e, i8 0, i64 range(i64 0, 17179869181) %i.d, i1 false), !tbaa !44
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit:            ; preds = %.noexc, %bb.a
  %.sroa.11140.0 = phi ptr [ null, %bb.a ], [ %i.f, %.noexc ]
  %.sroa.0137.0 = phi ptr [ null, %bb.a ], [ %i.e, %.noexc ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.a ], [ %i.g, %.noexc ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2032 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60   ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !63
  store ptr %.sroa.0137.0, ptr %i.i, align 8, !tbaa !62
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.k, align 8, !tbaa !69
  store ptr %.sroa.11140.0, ptr %i.l, align 8, !tbaa !63
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.p) #17
  %.pre = load i32, ptr %i.a, align 8, !tbaa !302
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.b, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.q = phi i32 [ %.pre, %bb.b ], [ %i.b, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit ] ; 2 uses
  %.not.i.i.i.i95 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i95, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit102, label %.noexc101

.noexc101:                                        ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 2                  ; 3 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #18 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 0, i64 range(i64 0, 17179869181) %i.s, i1 false), !tbaa !44
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit102

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit102:         ; preds = %.noexc101, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.sroa.0132.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.t, %.noexc101 ]
  %.sroa.11.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.u, %.noexc101 ]
  %.0.i.i.i.i.i.i.i99 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.v, %.noexc101 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !60   ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !62   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !63
  store ptr %.sroa.0132.0, ptr %i.x, align 8, !tbaa !62
  store ptr %.0.i.i.i.i.i.i.i99, ptr %i.z, align 8, !tbaa !69
  store ptr %.sroa.11.0, ptr %i.aa, align 8, !tbaa !63
  %.not.i.i.i.i.i103 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i103, label %_ZNSt6vectorIjSaIjEED2Ev.exit106, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit102
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.y to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ae) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit106

_ZNSt6vectorIjSaIjEED2Ev.exit106:                 ; preds = %bb.c, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit102
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr %1, ptr %3, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.af, align 8, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.ag, align 8, !tbaa !304
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !305
  %i.ai = ptrtoint ptr %2 to i64
  %i.aj = ptrtoint ptr %1 to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv exact i64 %i.ak, 12
  %i.am = trunc i64 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.am, ptr %i.an, align 4, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %4, i64 noundef 0)
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 12 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !162 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !307
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -32
  %.not.i.i = icmp eq ptr %i.ap, %i.as
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !99
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !162
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  store ptr %i.au, ptr %i.ao, align 8, !tbaa !162
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit106
  invoke void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_push_back_auxIJRKSD_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(28) %3)
          to label %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit_crit_edge unwind label %bb.i

._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit_crit_edge: ; preds = %bb.e
  %.pre206 = load ptr, ptr %i.ao, align 8, !tbaa !163
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit: ; preds = %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit_crit_edge, %bb.d
  %i.av = phi ptr [ %.pre206, %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit_crit_edge ], [ %i.au, %bb.d ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !163
  %i.ay = icmp eq ptr %i.av, %i.ax
  br i1 %i.ay, label %._crit_edge186, label %.lr.ph185

.lr.ph185:                                        ; preds = %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1928
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 2008 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1864
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph185, %.loopexit
  %i.bn = phi ptr [ %i.av, %.lr.ph185 ], [ %i.ha, %.loopexit ] ; 5 uses
  %i.bo = load ptr, ptr %i.az, align 8, !tbaa !164, !noalias !308 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds i8, ptr %i.bn, i64 -32 ; 2 uses
  %.sroa.065.sroa.0.0.copyload = load i64, ptr %i.bq, align 8, !tbaa !43
  %.sroa.065.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.bn, i64 -24
  %.sroa.065.sroa.5.0.copyload = load i64, ptr %.sroa.065.sroa.5.0..sroa_idx, align 8, !tbaa !43
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.bn, i64 -16
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !44
  %.sroa.766.0..sroa_idx = getelementptr inbounds i8, ptr %i.bn, i64 -8
  %.sroa.766.0.copyload = load i32, ptr %.sroa.766.0..sroa_idx, align 8, !tbaa !44
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE3popEv.exit

bb.h:                                             ; preds = %bb.f
  %i.br = load ptr, ptr %i.ba, align 8, !tbaa !165, !noalias !308
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !166 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 480
  %.sroa.065.sroa.0.0.copyload149 = load i64, ptr %i.bu, align 8, !tbaa !43
  %.sroa.065.sroa.5.0..sroa_idx150 = getelementptr inbounds nuw i8, ptr %i.bt, i64 488
  %.sroa.065.sroa.5.0.copyload151 = load i64, ptr %.sroa.065.sroa.5.0..sroa_idx150, align 8, !tbaa !43
  %.sroa.6.0..sroa_idx152 = getelementptr inbounds nuw i8, ptr %i.bt, i64 496
  %.sroa.6.0.copyload153 = load i32, ptr %.sroa.6.0..sroa_idx152, align 8, !tbaa !44
  %.sroa.766.0..sroa_idx154 = getelementptr inbounds nuw i8, ptr %i.bt, i64 504
  %.sroa.766.0.copyload155 = load i32, ptr %.sroa.766.0..sroa_idx154, align 8, !tbaa !44
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef 512) #17
  %i.bv = load ptr, ptr %i.ba, align 8, !tbaa !167
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -8 ; 2 uses
  store ptr %i.bw, ptr %i.ba, align 8, !tbaa !165
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !166 ; 3 uses
  store ptr %i.bx, ptr %i.az, align 8, !tbaa !164
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 512
  store ptr %i.by, ptr %i.aq, align 8, !tbaa !168
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 480
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE3popEv.exit

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE3popEv.exit: ; preds = %bb.g, %bb.h
  %.sroa.766.0.copyload162 = phi i32 [ %.sroa.766.0.copyload, %bb.g ], [ %.sroa.766.0.copyload155, %bb.h ] ; 3 uses
  %.sroa.6.0.copyload160 = phi i32 [ %.sroa.6.0.copyload, %bb.g ], [ %.sroa.6.0.copyload153, %bb.h ] ; 2 uses
  %.sroa.065.sroa.5.0.copyload158 = phi i64 [ %.sroa.065.sroa.5.0.copyload, %bb.g ], [ %.sroa.065.sroa.5.0.copyload151, %bb.h ] ; 4 uses
  %.sroa.065.sroa.0.0.copyload156 = phi i64 [ %.sroa.065.sroa.0.0.copyload, %bb.g ], [ %.sroa.065.sroa.0.0.copyload149, %bb.h ] ; 4 uses
  %storemerge.i.i = phi ptr [ %i.bq, %bb.g ], [ %i.bz, %bb.h ]
  store ptr %storemerge.i.i, ptr %i.ao, align 8, !tbaa !162
  %i.ca = inttoptr i64 %.sroa.065.sroa.0.0.copyload156 to ptr ; 5 uses
  %i.cb = inttoptr i64 %.sroa.065.sroa.5.0.copyload158 to ptr ; 3 uses
  %i.cc = zext i32 %.sroa.766.0.copyload162 to i64 ; 3 uses
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !60  ; 2 uses
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %i.cc
  %i.cf = load ptr, ptr %i.w, align 8, !tbaa !60
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %i.cc ; 2 uses
  %i.ch = load i32, ptr %i.a, align 8, !tbaa !302
  %i.ci = add i32 %i.ch, -1
  %i.cj = icmp eq i32 %.sroa.6.0.copyload160, %i.ci
  %i.ck = add i32 %.sroa.6.0.copyload160, 1
  %i.cl = select i1 %i.cj, i32 0, i32 %i.ck       ; 6 uses
  %i.cm = zext i32 %i.cl to i64                   ; 3 uses
  %i.cn = load ptr, ptr %i.cg, align 8, !tbaa !62
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cm
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !44 ; 2 uses
  %i.cq = sub i64 %.sroa.065.sroa.5.0.copyload158, %.sroa.065.sroa.0.0.copyload156
  %i.cr = sdiv exact i64 %i.cq, 12                ; 2 uses
  %i.cs = trunc i64 %i.cr to i32                  ; 4 uses
  %i.ct = load i32, ptr %0, align 8, !tbaa !84    ; 2 uses
  %i.cu = icmp eq i32 %i.ct, %i.cp
  br i1 %i.cu, label %.loopexit, label %bb.j, !llvm.loop !295

bb.i:                                             ; preds = %bb.e
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.j:                                             ; preds = %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE3popEv.exit
  %i.cw = icmp ult i32 %i.cs, 3
  br i1 %i.cw, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.cx = load ptr, ptr %i.bl, align 8, !tbaa !62 ; 2 uses
  store i32 %i.cl, ptr %i.cx, align 4, !tbaa !44
  %i.cy = load i32, ptr %i.a, align 8, !tbaa !302 ; 3 uses
  %i.cz = icmp ugt i32 %i.cy, 1
  br i1 %i.cz, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.k
  %i.da = phi i32 [ %i.cy, %bb.k ], [ %i.dh, %.lr.ph ] ; 2 uses
  %.not187 = icmp eq i32 %i.cs, 0
  br i1 %.not187, label %.loopexit, label %.lr.ph184, !llvm.loop !295

.lr.ph184:                                        ; preds = %.preheader
  %.not188 = icmp eq i32 %i.da, 0
  br i1 %.not188, label %..loopexit_crit_edge, label %.lr.ph184.split, !llvm.loop !295

.lr.ph184.split:                                  ; preds = %.lr.ph184
  %wide.trip.count = and i64 %i.cr, 3
  br label %bb.l, !llvm.loop !295

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %i.db = phi i32 [ %spec.select, %.lr.ph ], [ %i.cl, %bb.k ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.k ] ; 2 uses
  %i.dc = phi i32 [ %i.dh, %.lr.ph ], [ %i.cy, %bb.k ]
  %i.dd = add i32 %i.dc, -1
  %i.de = icmp eq i32 %i.db, %i.dd
  %i.df = add i32 %i.db, 1
  %spec.select = select i1 %i.de, i32 0, i32 %i.df ; 2 uses
end_hunk_8
begin_hunk_9_@_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE17_M_reallocate_mapEmb:bb.a
bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !166
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !166
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !91

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !166
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !166
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE15_M_allocate_mapEm.exit, !prof !90

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #18 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.m, label %bb.n, !prof !91

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.o, label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit24

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !166
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !166
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit24

_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit24: ; preds = %bb.m, %bb.n, %bb.o
  %i.bc = load ptr, ptr %0, align 8, !tbaa !169
  %i.bd = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bd) #17
  store ptr %i.aq, ptr %0, align 8, !tbaa !169
  store i64 %i.am, ptr %i.k, align 8, !tbaa !171
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit

_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !165
  %i.be = load ptr, ptr %.0, align 8, !tbaa !166  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !164
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 512
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !168
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !165
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !166 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !164
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 512
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !168
  ret void
}

declare void @_ZN5draco14RAnsBitEncoder9EncodeBitEb(ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_push_back_auxIJSD_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !165  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !165
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 4
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !163
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !164
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 5
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !168
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !163
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 5
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 288230376151711743
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !171
  %i.ag = load ptr, ptr %0, align 8, !tbaa !169
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #18
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !167
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !166
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !162
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !99
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !167
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !165
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !166 ; 3 uses
  store ptr %i.as, ptr %i.o, align 8, !tbaa !164
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 512
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !168
  store ptr %i.as, ptr %i.a, align 8, !tbaa !162
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodeInternalIN9__gnu_cxx17__normal_iteratorIPNS_7VectorDIjLi3EEESt6vectorIS6_SaIS6_EEEEEEvT_SC_(ptr noundef nonnull align 8 dereferenceable(2080) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<5>::EncodingStatus", align 8 ; 10 uses
  %4 = alloca %"class.std::stack.79", align 8     ; 19 uses
  %5 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<5>::EncodingStatus", align 8 ; 10 uses
  %6 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<5>::EncodingStatus", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = shl nuw nsw i64 %i.c, 2                  ; 3 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #18 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.e, i8 0, i64 range(i64 0, 17179869181) %i.d, i1 false), !tbaa !44
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit:            ; preds = %.noexc, %bb.a
  %.sroa.11140.0 = phi ptr [ null, %bb.a ], [ %i.f, %.noexc ]
  %.sroa.0137.0 = phi ptr [ null, %bb.a ], [ %i.e, %.noexc ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.a ], [ %i.g, %.noexc ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2032 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60   ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !63
  store ptr %.sroa.0137.0, ptr %i.i, align 8, !tbaa !62
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.k, align 8, !tbaa !69
  store ptr %.sroa.11140.0, ptr %i.l, align 8, !tbaa !63
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.p) #17
  %.pre = load i32, ptr %i.a, align 8, !tbaa !87
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.b, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.q = phi i32 [ %.pre, %bb.b ], [ %i.b, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit ] ; 2 uses
  %.not.i.i.i.i95 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i95, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit102, label %.noexc101

.noexc101:                                        ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 2                  ; 3 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #18 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 0, i64 range(i64 0, 17179869181) %i.s, i1 false), !tbaa !44
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit102

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit102:         ; preds = %.noexc101, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.sroa.0132.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.t, %.noexc101 ]
  %.sroa.11.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.u, %.noexc101 ]
  %.0.i.i.i.i.i.i.i99 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.v, %.noexc101 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !60   ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !62   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !63
  store ptr %.sroa.0132.0, ptr %i.x, align 8, !tbaa !62
  store ptr %.0.i.i.i.i.i.i.i99, ptr %i.z, align 8, !tbaa !69
  store ptr %.sroa.11.0, ptr %i.aa, align 8, !tbaa !63
  %.not.i.i.i.i.i103 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i103, label %_ZNSt6vectorIjSaIjEED2Ev.exit106, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit102
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.y to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ae) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit106

_ZNSt6vectorIjSaIjEED2Ev.exit106:                 ; preds = %bb.c, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit102
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr %1, ptr %3, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.af, align 8, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.ag, align 8, !tbaa !321
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !322
  %i.ai = ptrtoint ptr %2 to i64
  %i.aj = ptrtoint ptr %1 to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv exact i64 %i.ak, 12
  %i.am = trunc i64 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.am, ptr %i.an, align 4, !tbaa !323
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %4, i64 noundef 0)
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 12 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !176 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !324
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -32
  %.not.i.i = icmp eq ptr %i.ap, %i.as
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !99
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !176
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  store ptr %i.au, ptr %i.ao, align 8, !tbaa !176
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit106
  invoke void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_push_back_auxIJRKSD_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(28) %3)
          to label %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit_crit_edge unwind label %bb.i

._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit_crit_edge: ; preds = %bb.e
  %.pre206 = load ptr, ptr %i.ao, align 8, !tbaa !177
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit: ; preds = %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit_crit_edge, %bb.d
  %i.av = phi ptr [ %.pre206, %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit_crit_edge ], [ %i.au, %bb.d ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !177
  %i.ay = icmp eq ptr %i.av, %i.ax
  br i1 %i.ay, label %._crit_edge186, label %.lr.ph185

.lr.ph185:                                        ; preds = %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1928
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 2008 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1864
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph185, %.loopexit
  %i.bn = phi ptr [ %i.av, %.lr.ph185 ], [ %i.ha, %.loopexit ] ; 5 uses
  %i.bo = load ptr, ptr %i.az, align 8, !tbaa !178, !noalias !325 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds i8, ptr %i.bn, i64 -32 ; 2 uses
  %.sroa.065.sroa.0.0.copyload = load i64, ptr %i.bq, align 8, !tbaa !43
  %.sroa.065.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.bn, i64 -24
  %.sroa.065.sroa.5.0.copyload = load i64, ptr %.sroa.065.sroa.5.0..sroa_idx, align 8, !tbaa !43
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.bn, i64 -16
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !44
  %.sroa.766.0..sroa_idx = getelementptr inbounds i8, ptr %i.bn, i64 -8
  %.sroa.766.0.copyload = load i32, ptr %.sroa.766.0..sroa_idx, align 8, !tbaa !44
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE3popEv.exit

bb.h:                                             ; preds = %bb.f
  %i.br = load ptr, ptr %i.ba, align 8, !tbaa !179, !noalias !325
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !180 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 480
  %.sroa.065.sroa.0.0.copyload149 = load i64, ptr %i.bu, align 8, !tbaa !43
  %.sroa.065.sroa.5.0..sroa_idx150 = getelementptr inbounds nuw i8, ptr %i.bt, i64 488
  %.sroa.065.sroa.5.0.copyload151 = load i64, ptr %.sroa.065.sroa.5.0..sroa_idx150, align 8, !tbaa !43
  %.sroa.6.0..sroa_idx152 = getelementptr inbounds nuw i8, ptr %i.bt, i64 496
  %.sroa.6.0.copyload153 = load i32, ptr %.sroa.6.0..sroa_idx152, align 8, !tbaa !44
  %.sroa.766.0..sroa_idx154 = getelementptr inbounds nuw i8, ptr %i.bt, i64 504
  %.sroa.766.0.copyload155 = load i32, ptr %.sroa.766.0..sroa_idx154, align 8, !tbaa !44
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef 512) #17
  %i.bv = load ptr, ptr %i.ba, align 8, !tbaa !181
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -8 ; 2 uses
  store ptr %i.bw, ptr %i.ba, align 8, !tbaa !179
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !180 ; 3 uses
  store ptr %i.bx, ptr %i.az, align 8, !tbaa !178
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 512
  store ptr %i.by, ptr %i.aq, align 8, !tbaa !182
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 480
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE3popEv.exit

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE3popEv.exit: ; preds = %bb.g, %bb.h
  %.sroa.766.0.copyload162 = phi i32 [ %.sroa.766.0.copyload, %bb.g ], [ %.sroa.766.0.copyload155, %bb.h ] ; 3 uses
  %.sroa.6.0.copyload160 = phi i32 [ %.sroa.6.0.copyload, %bb.g ], [ %.sroa.6.0.copyload153, %bb.h ] ; 2 uses
  %.sroa.065.sroa.5.0.copyload158 = phi i64 [ %.sroa.065.sroa.5.0.copyload, %bb.g ], [ %.sroa.065.sroa.5.0.copyload151, %bb.h ] ; 4 uses
  %.sroa.065.sroa.0.0.copyload156 = phi i64 [ %.sroa.065.sroa.0.0.copyload, %bb.g ], [ %.sroa.065.sroa.0.0.copyload149, %bb.h ] ; 4 uses
  %storemerge.i.i = phi ptr [ %i.bq, %bb.g ], [ %i.bz, %bb.h ]
  store ptr %storemerge.i.i, ptr %i.ao, align 8, !tbaa !176
  %i.ca = inttoptr i64 %.sroa.065.sroa.0.0.copyload156 to ptr ; 5 uses
  %i.cb = inttoptr i64 %.sroa.065.sroa.5.0.copyload158 to ptr ; 3 uses
  %i.cc = zext i32 %.sroa.766.0.copyload162 to i64 ; 3 uses
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !60  ; 2 uses
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %i.cc
  %i.cf = load ptr, ptr %i.w, align 8, !tbaa !60
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %i.cc ; 2 uses
  %i.ch = load i32, ptr %i.a, align 8, !tbaa !87
  %i.ci = add i32 %i.ch, -1
  %i.cj = icmp eq i32 %.sroa.6.0.copyload160, %i.ci
  %i.ck = add i32 %.sroa.6.0.copyload160, 1
  %i.cl = select i1 %i.cj, i32 0, i32 %i.ck       ; 6 uses
  %i.cm = zext i32 %i.cl to i64                   ; 3 uses
  %i.cn = load ptr, ptr %i.cg, align 8, !tbaa !62
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cm
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !44 ; 2 uses
  %i.cq = sub i64 %.sroa.065.sroa.5.0.copyload158, %.sroa.065.sroa.0.0.copyload156
  %i.cr = sdiv exact i64 %i.cq, 12                ; 2 uses
  %i.cs = trunc i64 %i.cr to i32                  ; 4 uses
  %i.ct = load i32, ptr %0, align 8, !tbaa !86    ; 2 uses
  %i.cu = icmp eq i32 %i.ct, %i.cp
  br i1 %i.cu, label %.loopexit, label %bb.j, !llvm.loop !313

bb.i:                                             ; preds = %bb.e
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.j:                                             ; preds = %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE3popEv.exit
  %i.cw = icmp ult i32 %i.cs, 3
  br i1 %i.cw, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.cx = load ptr, ptr %i.bl, align 8, !tbaa !62 ; 2 uses
  store i32 %i.cl, ptr %i.cx, align 4, !tbaa !44
  %i.cy = load i32, ptr %i.a, align 8, !tbaa !87  ; 3 uses
  %i.cz = icmp ugt i32 %i.cy, 1
  br i1 %i.cz, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.k
  %i.da = phi i32 [ %i.cy, %bb.k ], [ %i.dh, %.lr.ph ] ; 2 uses
  %.not187 = icmp eq i32 %i.cs, 0
  br i1 %.not187, label %.loopexit, label %.lr.ph184, !llvm.loop !313

.lr.ph184:                                        ; preds = %.preheader
  %.not188 = icmp eq i32 %i.da, 0
  br i1 %.not188, label %..loopexit_crit_edge, label %.lr.ph184.split, !llvm.loop !313

.lr.ph184.split:                                  ; preds = %.lr.ph184
  %wide.trip.count = and i64 %i.cr, 3
  br label %bb.l, !llvm.loop !313

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %i.db = phi i32 [ %spec.select, %.lr.ph ], [ %i.cl, %bb.k ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.k ] ; 2 uses
  %i.dc = phi i32 [ %i.dh, %.lr.ph ], [ %i.cy, %bb.k ]
  %i.dd = add i32 %i.dc, -1
  %i.de = icmp eq i32 %i.db, %i.dd
  %i.df = add i32 %i.db, 1
  %spec.select = select i1 %i.de, i32 0, i32 %i.df ; 2 uses
end_hunk_9
begin_hunk_10_@_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE17_M_reallocate_mapEmb:bb.a
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !180
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !180
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !91

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !180
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !180
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE15_M_allocate_mapEm.exit, !prof !90

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #18 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.m, label %bb.n, !prof !91

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.o, label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit24

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !180
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !180
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit24

_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit24: ; preds = %bb.m, %bb.n, %bb.o
  %i.bc = load ptr, ptr %0, align 8, !tbaa !183
  %i.bd = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bd) #17
  store ptr %i.aq, ptr %0, align 8, !tbaa !183
  store i64 %i.am, ptr %i.k, align 8, !tbaa !185
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit

_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESF_ET0_T_SH_SG_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !179
  %i.be = load ptr, ptr %.0, align 8, !tbaa !180  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !178
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 512
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !182
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !179
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !180 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !178
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 512
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !182
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_push_back_auxIJSD_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !179  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !179
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 4
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !177
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !178
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 5
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !182
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !177
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 5
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 288230376151711743
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !185
  %i.ag = load ptr, ptr %0, align 8, !tbaa !183
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #18
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !181
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !180
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !99
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !181
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !179
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !180 ; 3 uses
  store ptr %i.as, ptr %i.o, align 8, !tbaa !178
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 512
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !182
  store ptr %i.as, ptr %i.a, align 8, !tbaa !176
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodeInternalIN9__gnu_cxx17__normal_iteratorIPNS_7VectorDIjLi3EEESt6vectorIS6_SaIS6_EEEEEEvT_SC_(ptr noundef nonnull align 8 dereferenceable(2080) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<6>::EncodingStatus", align 8 ; 10 uses
  %4 = alloca %"class.std::stack.89", align 8     ; 19 uses
  %5 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<6>::EncodingStatus", align 8 ; 10 uses
  %6 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<6>::EncodingStatus", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !186  ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = shl nuw nsw i64 %i.c, 2                  ; 3 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #18 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.e, i8 0, i64 range(i64 0, 17179869181) %i.d, i1 false), !tbaa !44
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit:            ; preds = %.noexc, %bb.a
  %.sroa.11142.0 = phi ptr [ null, %bb.a ], [ %i.f, %.noexc ]
  %.sroa.0139.0 = phi ptr [ null, %bb.a ], [ %i.e, %.noexc ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.a ], [ %i.g, %.noexc ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2032 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60   ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !63
  store ptr %.sroa.0139.0, ptr %i.i, align 8, !tbaa !62
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.k, align 8, !tbaa !69
  store ptr %.sroa.11142.0, ptr %i.l, align 8, !tbaa !63
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.p) #17
  %.pre = load i32, ptr %i.a, align 8, !tbaa !186
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.b, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.q = phi i32 [ %.pre, %bb.b ], [ %i.b, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit ] ; 2 uses
  %.not.i.i.i.i97 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i97, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit104, label %.noexc103

.noexc103:                                        ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 2                  ; 3 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #18 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 0, i64 range(i64 0, 17179869181) %i.s, i1 false), !tbaa !44
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit104

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit104:         ; preds = %.noexc103, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.sroa.0134.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.t, %.noexc103 ]
  %.sroa.11.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.u, %.noexc103 ]
  %.0.i.i.i.i.i.i.i101 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.v, %.noexc103 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !60   ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !62   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !63
  store ptr %.sroa.0134.0, ptr %i.x, align 8, !tbaa !62
  store ptr %.0.i.i.i.i.i.i.i101, ptr %i.z, align 8, !tbaa !69
  store ptr %.sroa.11.0, ptr %i.aa, align 8, !tbaa !63
  %.not.i.i.i.i.i105 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i105, label %_ZNSt6vectorIjSaIjEED2Ev.exit108, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit104
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.y to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ae) #17
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit108

_ZNSt6vectorIjSaIjEED2Ev.exit108:                 ; preds = %bb.c, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit104
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr %1, ptr %3, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.af, align 8, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.ag, align 8, !tbaa !338
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !339
  %i.ai = ptrtoint ptr %2 to i64
  %i.aj = ptrtoint ptr %1 to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv exact i64 %i.ak, 12
  %i.am = trunc i64 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.am, ptr %i.an, align 4, !tbaa !340
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %4, i64 noundef 0)
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 12 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !191 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !341
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -32
  %.not.i.i = icmp eq ptr %i.ap, %i.as
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !99
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !191
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  store ptr %i.au, ptr %i.ao, align 8, !tbaa !191
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit108
  invoke void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESaISD_EE16_M_push_back_auxIJRKSD_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(28) %3)
          to label %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit_crit_edge unwind label %bb.j

._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit_crit_edge: ; preds = %bb.e
  %.pre208 = load ptr, ptr %i.ao, align 8, !tbaa !192
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit: ; preds = %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit_crit_edge, %bb.d
  %i.av = phi ptr [ %.pre208, %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit_crit_edge ], [ %i.au, %bb.d ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !192
  %i.ay = icmp eq ptr %i.av, %i.ax
  br i1 %i.ay, label %._crit_edge188, label %.lr.ph187

.lr.ph187:                                        ; preds = %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE4pushERKSD_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1928
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 2008 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1864
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph187, %.loopexit
  %i.bn = phi ptr [ %i.av, %.lr.ph187 ], [ %i.gy, %.loopexit ] ; 5 uses
  %i.bo = load ptr, ptr %i.az, align 8, !tbaa !193, !noalias !342 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds i8, ptr %i.bn, i64 -32 ; 2 uses
  %.sroa.065.sroa.0.0.copyload = load i64, ptr %i.bq, align 8, !tbaa !43
  %.sroa.065.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.bn, i64 -24
  %.sroa.065.sroa.5.0.copyload = load i64, ptr %.sroa.065.sroa.5.0..sroa_idx, align 8, !tbaa !43
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.bn, i64 -16
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !44
  %.sroa.766.0..sroa_idx = getelementptr inbounds i8, ptr %i.bn, i64 -8
  %.sroa.766.0.copyload = load i32, ptr %.sroa.766.0..sroa_idx, align 8, !tbaa !44
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE3popEv.exit

bb.h:                                             ; preds = %bb.f
  %i.br = load ptr, ptr %i.ba, align 8, !tbaa !194, !noalias !342
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !195 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 480
  %.sroa.065.sroa.0.0.copyload151 = load i64, ptr %i.bu, align 8, !tbaa !43
  %.sroa.065.sroa.5.0..sroa_idx152 = getelementptr inbounds nuw i8, ptr %i.bt, i64 488
  %.sroa.065.sroa.5.0.copyload153 = load i64, ptr %.sroa.065.sroa.5.0..sroa_idx152, align 8, !tbaa !43
  %.sroa.6.0..sroa_idx154 = getelementptr inbounds nuw i8, ptr %i.bt, i64 496
  %.sroa.6.0.copyload155 = load i32, ptr %.sroa.6.0..sroa_idx154, align 8, !tbaa !44
  %.sroa.766.0..sroa_idx156 = getelementptr inbounds nuw i8, ptr %i.bt, i64 504
  %.sroa.766.0.copyload157 = load i32, ptr %.sroa.766.0..sroa_idx156, align 8, !tbaa !44
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef 512) #17
  %i.bv = load ptr, ptr %i.ba, align 8, !tbaa !196
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -8 ; 2 uses
  store ptr %i.bw, ptr %i.ba, align 8, !tbaa !194
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !195 ; 3 uses
  store ptr %i.bx, ptr %i.az, align 8, !tbaa !193
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 512
  store ptr %i.by, ptr %i.aq, align 8, !tbaa !197
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 480
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE3popEv.exit

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE3popEv.exit: ; preds = %bb.g, %bb.h
  %.sroa.766.0.copyload164 = phi i32 [ %.sroa.766.0.copyload, %bb.g ], [ %.sroa.766.0.copyload157, %bb.h ] ; 3 uses
  %.sroa.6.0.copyload162 = phi i32 [ %.sroa.6.0.copyload, %bb.g ], [ %.sroa.6.0.copyload155, %bb.h ]
  %.sroa.065.sroa.5.0.copyload160 = phi i64 [ %.sroa.065.sroa.5.0.copyload, %bb.g ], [ %.sroa.065.sroa.5.0.copyload153, %bb.h ] ; 4 uses
  %.sroa.065.sroa.0.0.copyload158 = phi i64 [ %.sroa.065.sroa.0.0.copyload, %bb.g ], [ %.sroa.065.sroa.0.0.copyload151, %bb.h ] ; 4 uses
  %storemerge.i.i = phi ptr [ %i.bq, %bb.g ], [ %i.bz, %bb.h ]
  store ptr %storemerge.i.i, ptr %i.ao, align 8, !tbaa !191
  %i.ca = inttoptr i64 %.sroa.065.sroa.0.0.copyload158 to ptr ; 6 uses
  %i.cb = inttoptr i64 %.sroa.065.sroa.5.0.copyload160 to ptr ; 4 uses
  %i.cc = zext i32 %.sroa.766.0.copyload164 to i64 ; 3 uses
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %i.cc ; 2 uses
  %i.cf = load ptr, ptr %i.w, align 8, !tbaa !60
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %i.cc ; 3 uses
  %i.ch = invoke noundef i32 @_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE16GetAndEncodeAxisIN9__gnu_cxx17__normal_iteratorIPNS_7VectorDIjLi3EEESt6vectorIS6_SaIS6_EEEEEEjT_SC_RKS8_IjSaIjEESG_j(ptr noundef nonnull align 8 dereferenceable(2080) %0, ptr %i.ca, ptr %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i32 noundef %.sroa.6.0.copyload162)
          to label %bb.i unwind label %bb.k       ; 6 uses

bb.i:                                             ; preds = %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE3popEv.exit
  %i.ci = zext i32 %i.ch to i64                   ; 3 uses
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !62
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ci
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !44 ; 2 uses
  %i.cm = sub i64 %.sroa.065.sroa.5.0.copyload160, %.sroa.065.sroa.0.0.copyload158
  %i.cn = sdiv exact i64 %i.cm, 12                ; 2 uses
  %i.co = trunc i64 %i.cn to i32                  ; 4 uses
  %i.cp = load i32, ptr %0, align 8, !tbaa !89    ; 2 uses
  %i.cq = icmp eq i32 %i.cp, %i.cl
  br i1 %i.cq, label %.loopexit, label %bb.l, !llvm.loop !330

bb.j:                                             ; preds = %bb.e
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.k:                                             ; preds = %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusIN9__gnu_cxx17__normal_iteratorIPNS0_7VectorDIjLi3EEESt6vectorIS7_SaIS7_EEEEEESt5dequeISD_SaISD_EEE3popEv.exit
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.l:                                             ; preds = %bb.i
  %i.ct = icmp ult i32 %i.co, 3
  br i1 %i.ct, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.cu = load ptr, ptr %i.bl, align 8, !tbaa !62 ; 2 uses
  store i32 %i.ch, ptr %i.cu, align 4, !tbaa !44
  %i.cv = load i32, ptr %i.a, align 8, !tbaa !186 ; 3 uses
  %i.cw = icmp ugt i32 %i.cv, 1
  br i1 %i.cw, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.m
  %i.cx = phi i32 [ %i.cv, %bb.m ], [ %i.de, %.lr.ph ] ; 2 uses
  %.not189 = icmp eq i32 %i.co, 0
  br i1 %.not189, label %.loopexit, label %.lr.ph186, !llvm.loop !330

.lr.ph186:                                        ; preds = %.preheader
  %.not190 = icmp eq i32 %i.cx, 0
  br i1 %.not190, label %..loopexit_crit_edge, label %.lr.ph186.split, !llvm.loop !330

.lr.ph186.split:                                  ; preds = %.lr.ph186
  %wide.trip.count = and i64 %i.cn, 3
  br label %bb.n, !llvm.loop !330

.lr.ph:                                           ; preds = %bb.m, %.lr.ph
  %i.cy = phi i32 [ %spec.select, %.lr.ph ], [ %i.ch, %bb.m ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.m ] ; 2 uses
  %i.cz = phi i32 [ %i.de, %.lr.ph ], [ %i.cv, %bb.m ]
end_hunk_10
