Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/kd_tree_attributes_encoder?download=true
inline.NumInlined: 2777
inline.NumDeleted: 1138
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi6EED2Ev:bb.a

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !161
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #20
  br label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i:  ; preds = %bb.b, %.lr.ph.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !190
  br label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.l = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !192
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #20
  br label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2032 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !190  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2040
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !191  ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i9, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5
  %.05.i.i.i3 = phi ptr [ %i.ab, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5 ], [ %i.s, %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit ] ; 3 uses
  %i.v = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i.i.i.i.i4 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i4, label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i2
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !161
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #20
  br label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5

_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5: ; preds = %bb.d, %.lr.ph.i.i.i2
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 24 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.ab, %i.u
  br i1 %.not.i.i.i6, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i7, label %.lr.ph.i.i.i2, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i7: ; preds = %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5
  %.pr.i8 = load ptr, ptr %i.r, align 8, !tbaa !190
  br label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i9

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i9: ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i7, %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit
  %i.ac = phi ptr [ %.pr.i8, %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i7 ], [ %i.s, %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i10 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i10, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit11, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i9
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !192
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #20
  br label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit11

_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit11:       ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i9, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2008
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit11
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2024
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !161
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit11, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIjSaIjEED2Ev.exit14, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !161
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit14

_ZNSt6vectorIjSaIjEED2Ev.exit14:                  ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIjSaIjEED2Ev.exit16, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit14
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !161
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit16

_ZNSt6vectorIjSaIjEED2Ev.exit16:                  ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit14, %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1928
  tail call void @_ZN5draco16DirectBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.bd) #19
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1896
  tail call void @_ZN5draco16DirectBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.be) #19
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1864
  tail call void @_ZN5draco16DirectBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.bf) #19
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1808
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.bh) #19
  tail call void @_ZNSt5arrayIN5draco14RAnsBitEncoderELm32EED2Ev(ptr noundef nonnull align 8 dead_on_return(1792) dereferenceable(1848) %i.bg) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi5EEC2Ej(ptr noundef nonnull align 8 dereferenceable(2080) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.78", align 8    ; 13 uses
  %3 = alloca %"class.std::vector.78", align 8    ; 12 uses
  store i32 0, ptr %0, align 8, !tbaa !194
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !195
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
  tail call void @_ZNSt5arrayIN5draco14RAnsBitEncoderELm32EED2Ev(ptr noundef nonnull align 8 dead_on_return(1792) dereferenceable(1848) %i.b) #19
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
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #21
          to label %.noexc unwind label %bb.s     ; 4 uses

.noexc:                                           ; preds = %bb.f
  store ptr %i.k, ptr %i.h, align 8, !tbaa !160
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1976
  store ptr %i.l, ptr %i.m, align 8, !tbaa !161
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1968
  store ptr %i.n, ptr %i.o, align 8, !tbaa !162
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1984 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #21
          to label %.noexc35 unwind label %bb.t   ; 4 uses

.noexc35:                                         ; preds = %.noexc
  store ptr %i.q, ptr %i.p, align 8, !tbaa !160
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2000
  store ptr %i.r, ptr %i.s, align 8, !tbaa !161
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.q, i8 0, i64 %i.j, i1 false), !tbaa !58
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.j
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1992
  store ptr %i.t, ptr %i.u, align 8, !tbaa !162
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2008 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #21
          to label %.noexc43 unwind label %bb.u   ; 4 uses

.noexc43:                                         ; preds = %.noexc35
  store ptr %i.w, ptr %i.v, align 8, !tbaa !160
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2024
  store ptr %i.x, ptr %i.y, align 8, !tbaa !161
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.w, i8 0, i64 %i.j, i1 false), !tbaa !58
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.j
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2016
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #21
          to label %.noexc51 unwind label %bb.v   ; 4 uses

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2008
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.h, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %.loopexit98

.noexc51:                                         ; preds = %.noexc43
  %i.ae = shl i32 %1, 5
  %i.af = or disjoint i32 %i.ae, 1
  %i.ag = zext i32 %i.af to i64
  store ptr %i.ab, ptr %2, align 8, !tbaa !160
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !161
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ab, i8 0, i64 %i.j, i1 false), !tbaa !58
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.j
  br label %.loopexit98

.loopexit98:                                      ; preds = %.noexc51, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50
  %i.ak = phi i64 [ 1, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50 ], [ %i.ag, %.noexc51 ] ; 5 uses
  %i.al = phi ptr [ %i.ac, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50 ], [ %i.p, %.noexc51 ] ; 3 uses
  %i.am = phi ptr [ %i.ad, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50 ], [ %i.v, %.noexc51 ] ; 3 uses
  %.0.i.i.i.i.i.i.i49 = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50 ], [ %i.aj, %.noexc51 ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2032 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.0.i.i.i.i.i.i.i49, ptr %i.ao, align 8, !tbaa !162
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  %i.ap = mul nuw nsw i64 %i.ak, 24               ; 2 uses
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #21
          to label %.noexc54 unwind label %bb.w   ; 4 uses

.noexc54:                                         ; preds = %.loopexit98
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !190
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2040 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !191
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.ak
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 2 uses
  store ptr %i.as, ptr %i.at, align 8, !tbaa !192
  %i.au = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIjSaIjEEmS2_ET_S4_T0_RKT1_(ptr noundef nonnull %i.aq, i64 noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc54
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !190 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !192
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.ba) #20
  br label %.body

bb.i:                                             ; preds = %.noexc54
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !191
  %i.bb = load ptr, ptr %2, align 8, !tbaa !160   ; 3 uses
  %.not.i.i.i55 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !161
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bg) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i61, label %bb.k

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i61: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %.loopexit

bb.k:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.bh = shl nuw nsw i64 %i.i, 2                 ; 3 uses
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #21
          to label %.noexc62 unwind label %bb.y   ; 4 uses

.noexc62:                                         ; preds = %bb.k
  store ptr %i.bi, ptr %3, align 8, !tbaa !160
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !161
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bi, i8 0, i64 %i.bh, i1 false), !tbaa !58
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bh
  br label %.loopexit

.loopexit:                                        ; preds = %.noexc62, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i61
  %.0.i.i.i.i.i.i.i60 = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i61 ], [ %i.bl, %.noexc62 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.0.i.i.i.i.i.i.i60, ptr %i.bm, align 8, !tbaa !162
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  %i.bo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #21
          to label %.noexc67 unwind label %bb.z   ; 4 uses

.noexc67:                                         ; preds = %.loopexit
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !190
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 2064 ; 2 uses
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !191
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.ak
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 2072 ; 2 uses
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !192
  %i.bs = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIjSaIjEEmS2_ET_S4_T0_RKT1_(ptr noundef nonnull %i.bo, i64 noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %.noexc67
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !190 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i65, label %.body68, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !192
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.by) #20
  br label %.body68

bb.n:                                             ; preds = %.noexc67
  store ptr %i.bs, ptr %i.bp, align 8, !tbaa !191
  %i.bz = load ptr, ptr %3, align 8, !tbaa !160   ; 3 uses
  %.not.i.i.i71 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i71, label %_ZNSt6vectorIjSaIjEED2Ev.exit72, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !161
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.ce) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit72

_ZNSt6vectorIjSaIjEED2Ev.exit72:                  ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
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
  %i.cn = load ptr, ptr %2, align 8, !tbaa !160   ; 3 uses
  %.not.i.i.i73 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i73, label %_ZNSt6vectorIjSaIjEED2Ev.exit74, label %bb.x

bb.x:                                             ; preds = %.body
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !161
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.cs) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit74

_ZNSt6vectorIjSaIjEED2Ev.exit74:                  ; preds = %bb.x, %.body, %bb.v
  %i.ct = phi ptr [ %i.p, %bb.v ], [ %i.al, %.body ], [ %i.al, %bb.x ]
  %i.cu = phi ptr [ %i.v, %bb.v ], [ %i.am, %.body ], [ %i.am, %bb.x ]
  %.pn = phi { ptr, i32 } [ %i.cl, %bb.v ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
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
  %i.cx = load ptr, ptr %3, align 8, !tbaa !160   ; 3 uses
  %.not.i.i.i75 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i75, label %_ZNSt6vectorIjSaIjEED2Ev.exit76, label %bb.aa

bb.aa:                                            ; preds = %.body68
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !161
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit76

_ZNSt6vectorIjSaIjEED2Ev.exit76:                  ; preds = %bb.aa, %.body68, %bb.y
  %.pn20 = phi { ptr, i32 } [ %i.cv, %bb.y ], [ %eh.lpad-body69, %.body68 ], [ %eh.lpad-body69, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.an) #19
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit76, %_ZNSt6vectorIjSaIjEED2Ev.exit74
  %i.dd = phi ptr [ %i.al, %_ZNSt6vectorIjSaIjEED2Ev.exit76 ], [ %i.ct, %_ZNSt6vectorIjSaIjEED2Ev.exit74 ] ; 2 uses
  %i.de = phi ptr [ %i.am, %_ZNSt6vectorIjSaIjEED2Ev.exit76 ], [ %i.cu, %_ZNSt6vectorIjSaIjEED2Ev.exit74 ] ; 2 uses
  %.pn20.pn = phi { ptr, i32 } [ %.pn20, %_ZNSt6vectorIjSaIjEED2Ev.exit76 ], [ %.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit74 ] ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i77 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorIjSaIjEED2Ev.exit78, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !161
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.df to i64
  %i.dk = sub i64 %i.di, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.dk) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit78

_ZNSt6vectorIjSaIjEED2Ev.exit78:                  ; preds = %bb.ac, %bb.ab, %bb.u
  %i.dl = phi ptr [ %i.p, %bb.u ], [ %i.dd, %bb.ab ], [ %i.dd, %bb.ac ] ; 2 uses
  %.pn20.pn.pn = phi { ptr, i32 } [ %i.ck, %bb.u ], [ %.pn20.pn, %bb.ab ], [ %.pn20.pn, %bb.ac ] ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i79 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorIjSaIjEED2Ev.exit80, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit78
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !161
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dr) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit80

_ZNSt6vectorIjSaIjEED2Ev.exit80:                  ; preds = %bb.ad, %_ZNSt6vectorIjSaIjEED2Ev.exit78, %bb.t
  %.pn20.pn.pn.pn = phi { ptr, i32 } [ %i.cj, %bb.t ], [ %.pn20.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit78 ], [ %.pn20.pn.pn, %bb.ad ] ; 2 uses
  %i.ds = load ptr, ptr %i.h, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i81 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i81, label %_ZNSt6vectorIjSaIjEED2Ev.exit82, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit80
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !161
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.ds to i64
  %i.dx = sub i64 %i.dv, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dx) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit82

_ZNSt6vectorIjSaIjEED2Ev.exit82:                  ; preds = %bb.ae, %_ZNSt6vectorIjSaIjEED2Ev.exit80, %bb.s
  %.pn20.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ci, %bb.s ], [ %.pn20.pn.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit80 ], [ %.pn20.pn.pn.pn, %bb.ae ]
  call void @_ZN5draco16DirectBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.g) #19
end_hunk_0
begin_hunk_1_@_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE12EncodePointsINS_12PointDVectorIjE20PointDVectorIteratorEEEbT_S6_RKjPNS_13EncoderBufferE:bb.a
  br label %bb.d

bb.d:                                             ; preds = %_ZN5draco13EncoderBuffer6EncodeIjEEbRKT_.exit9, %bb.c
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi4EED2Ev(ptr noundef nonnull align 8 dead_on_return(2080) dereferenceable(2080) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !191  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !161
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #20
  br label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i:  ; preds = %bb.b, %.lr.ph.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !190
  br label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.l = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !192
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #20
  br label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2032 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !190  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2040
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !191  ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i9, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5
  %.05.i.i.i3 = phi ptr [ %i.ab, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5 ], [ %i.s, %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit ] ; 3 uses
  %i.v = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i.i.i.i.i4 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i4, label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i2
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !161
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #20
  br label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5

_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5: ; preds = %bb.d, %.lr.ph.i.i.i2
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 24 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.ab, %i.u
  br i1 %.not.i.i.i6, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i7, label %.lr.ph.i.i.i2, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i7: ; preds = %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5
  %.pr.i8 = load ptr, ptr %i.r, align 8, !tbaa !190
  br label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i9

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i9: ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i7, %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit
  %i.ac = phi ptr [ %.pr.i8, %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i7 ], [ %i.s, %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i10 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i10, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit11, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i9
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !192
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #20
  br label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit11

_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit11:       ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i9, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2008
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit11
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2024
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !161
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit11, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIjSaIjEED2Ev.exit14, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !161
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit14

_ZNSt6vectorIjSaIjEED2Ev.exit14:                  ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIjSaIjEED2Ev.exit16, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit14
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !161
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit16

_ZNSt6vectorIjSaIjEED2Ev.exit16:                  ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit14, %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1928
  tail call void @_ZN5draco16DirectBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.bd) #19
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1896
  tail call void @_ZN5draco16DirectBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.be) #19
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1864
  tail call void @_ZN5draco16DirectBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.bf) #19
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1808
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.bh) #19
  tail call void @_ZNSt5arrayIN5draco14RAnsBitEncoderELm32EED2Ev(ptr noundef nonnull align 8 dead_on_return(1792) dereferenceable(1848) %i.bg) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi3EEC2Ej(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.78", align 8    ; 13 uses
  %3 = alloca %"class.std::vector.78", align 8    ; 12 uses
  store i32 0, ptr %0, align 8, !tbaa !199
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !200
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
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #21
          to label %.noexc unwind label %bb.r     ; 4 uses

.noexc:                                           ; preds = %bb.e
  store ptr %i.i, ptr %i.f, align 8, !tbaa !160
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.j, ptr %i.k, align 8, !tbaa !161
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.i, i8 0, i64 %i.h, i1 false), !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.l, ptr %i.m, align 8, !tbaa !162
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #21
          to label %.noexc35 unwind label %bb.s   ; 4 uses

.noexc35:                                         ; preds = %.noexc
  store ptr %i.o, ptr %i.n, align 8, !tbaa !160
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.p, ptr %i.q, align 8, !tbaa !161
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.o, i8 0, i64 %i.h, i1 false), !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.r, ptr %i.s, align 8, !tbaa !162
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #21
          to label %.noexc43 unwind label %bb.t   ; 4 uses

.noexc43:                                         ; preds = %.noexc35
  store ptr %i.u, ptr %i.t, align 8, !tbaa !160
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.v, ptr %i.w, align 8, !tbaa !161
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.u, i8 0, i64 %i.h, i1 false), !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.x, ptr %i.y, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #21
          to label %.noexc51 unwind label %bb.u   ; 4 uses

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50: ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %.loopexit98

.noexc51:                                         ; preds = %.noexc43
  %i.ac = shl i32 %1, 5
  %i.ad = or disjoint i32 %i.ac, 1
  %i.ae = zext i32 %i.ad to i64
  store ptr %i.z, ptr %2, align 8, !tbaa !160
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.g
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !161
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.z, i8 0, i64 %i.h, i1 false), !tbaa !58
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.h
  br label %.loopexit98

.loopexit98:                                      ; preds = %.noexc51, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50
  %i.ai = phi i64 [ 1, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50 ], [ %i.ae, %.noexc51 ] ; 5 uses
  %i.aj = phi ptr [ %i.aa, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50 ], [ %i.n, %.noexc51 ] ; 3 uses
  %i.ak = phi ptr [ %i.ab, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50 ], [ %i.t, %.noexc51 ] ; 3 uses
  %.0.i.i.i.i.i.i.i49 = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50 ], [ %i.ah, %.noexc51 ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.0.i.i.i.i.i.i.i49, ptr %i.am, align 8, !tbaa !162
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %i.an = mul nuw nsw i64 %i.ai, 24               ; 2 uses
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #21
          to label %.noexc54 unwind label %bb.v   ; 4 uses

.noexc54:                                         ; preds = %.loopexit98
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !190
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !191
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.ai
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !192
  %i.as = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIjSaIjEEmS2_ET_S4_T0_RKT1_(ptr noundef nonnull %i.ao, i64 noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %.noexc54
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !190 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !192
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #20
  br label %.body

bb.h:                                             ; preds = %.noexc54
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !191
  %i.az = load ptr, ptr %2, align 8, !tbaa !160   ; 3 uses
  %.not.i.i.i55 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !161
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i61, label %bb.j

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i61: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %.loopexit

bb.j:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.bf = shl nuw nsw i64 %i.g, 2                 ; 3 uses
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #21
          to label %.noexc62 unwind label %bb.x   ; 4 uses

.noexc62:                                         ; preds = %bb.j
  store ptr %i.bg, ptr %3, align 8, !tbaa !160
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.g
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !161
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bg, i8 0, i64 %i.bf, i1 false), !tbaa !58
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf
  br label %.loopexit

.loopexit:                                        ; preds = %.noexc62, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i61
  %.0.i.i.i.i.i.i.i60 = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i61 ], [ %i.bj, %.noexc62 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.0.i.i.i.i.i.i.i60, ptr %i.bk, align 8, !tbaa !162
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i8 0, i64 24, i1 false)
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #21
          to label %.noexc67 unwind label %bb.y   ; 4 uses

.noexc67:                                         ; preds = %.loopexit
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !190
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !191
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.ai
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !192
  %i.bq = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIjSaIjEEmS2_ET_S4_T0_RKT1_(ptr noundef nonnull %i.bm, i64 noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %.noexc67
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %i.bl, align 8, !tbaa !190 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i65, label %.body68, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !192
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bw) #20
  br label %.body68

bb.m:                                             ; preds = %.noexc67
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !191
  %i.bx = load ptr, ptr %3, align 8, !tbaa !160   ; 3 uses
  %.not.i.i.i71 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i71, label %_ZNSt6vectorIjSaIjEED2Ev.exit72, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !161
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit72

_ZNSt6vectorIjSaIjEED2Ev.exit72:                  ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
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
  %i.cl = load ptr, ptr %2, align 8, !tbaa !160   ; 3 uses
  %.not.i.i.i73 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i73, label %_ZNSt6vectorIjSaIjEED2Ev.exit74, label %bb.w

bb.w:                                             ; preds = %.body
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !161
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cq) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit74

_ZNSt6vectorIjSaIjEED2Ev.exit74:                  ; preds = %bb.w, %.body, %bb.u
  %i.cr = phi ptr [ %i.n, %bb.u ], [ %i.aj, %.body ], [ %i.aj, %bb.w ]
  %i.cs = phi ptr [ %i.t, %bb.u ], [ %i.ak, %.body ], [ %i.ak, %bb.w ]
  %.pn = phi { ptr, i32 } [ %i.cj, %bb.u ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
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
  %i.cv = load ptr, ptr %3, align 8, !tbaa !160   ; 3 uses
  %.not.i.i.i75 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i75, label %_ZNSt6vectorIjSaIjEED2Ev.exit76, label %bb.z

bb.z:                                             ; preds = %.body68
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !161
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit76

_ZNSt6vectorIjSaIjEED2Ev.exit76:                  ; preds = %bb.z, %.body68, %bb.x
  %.pn20 = phi { ptr, i32 } [ %i.ct, %bb.x ], [ %eh.lpad-body69, %.body68 ], [ %eh.lpad-body69, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.al) #19
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit76, %_ZNSt6vectorIjSaIjEED2Ev.exit74
  %i.db = phi ptr [ %i.aj, %_ZNSt6vectorIjSaIjEED2Ev.exit76 ], [ %i.cr, %_ZNSt6vectorIjSaIjEED2Ev.exit74 ] ; 2 uses
  %i.dc = phi ptr [ %i.ak, %_ZNSt6vectorIjSaIjEED2Ev.exit76 ], [ %i.cs, %_ZNSt6vectorIjSaIjEED2Ev.exit74 ] ; 2 uses
  %.pn20.pn = phi { ptr, i32 } [ %.pn20, %_ZNSt6vectorIjSaIjEED2Ev.exit76 ], [ %.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit74 ] ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i77 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorIjSaIjEED2Ev.exit78, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !161
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.di) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit78

_ZNSt6vectorIjSaIjEED2Ev.exit78:                  ; preds = %bb.ab, %bb.aa, %bb.t
  %i.dj = phi ptr [ %i.n, %bb.t ], [ %i.db, %bb.aa ], [ %i.db, %bb.ab ] ; 2 uses
  %.pn20.pn.pn = phi { ptr, i32 } [ %i.ci, %bb.t ], [ %.pn20.pn, %bb.aa ], [ %.pn20.pn, %bb.ab ] ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i79 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorIjSaIjEED2Ev.exit80, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit78
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !161
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit80

_ZNSt6vectorIjSaIjEED2Ev.exit80:                  ; preds = %bb.ac, %_ZNSt6vectorIjSaIjEED2Ev.exit78, %bb.s
  %.pn20.pn.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.s ], [ %.pn20.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit78 ], [ %.pn20.pn.pn, %bb.ac ] ; 2 uses
  %i.dq = load ptr, ptr %i.f, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i81 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i81, label %_ZNSt6vectorIjSaIjEED2Ev.exit82, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit80
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !161
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dq to i64
  %i.dv = sub i64 %i.dt, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.dv) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit82

_ZNSt6vectorIjSaIjEED2Ev.exit82:                  ; preds = %bb.ad, %_ZNSt6vectorIjSaIjEED2Ev.exit80, %bb.r
  %.pn20.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cg, %bb.r ], [ %.pn20.pn.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit80 ], [ %.pn20.pn.pn.pn, %bb.ad ]
  call void @_ZN5draco16DirectBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.e) #19
end_hunk_1
begin_hunk_2_@_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE12EncodePointsINS_12PointDVectorIjE20PointDVectorIteratorEEEbT_S6_RKjPNS_13EncoderBufferE:bb.a
  tail call void @_ZN5draco16DirectBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull %4)
  tail call void @_ZN5draco16DirectBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull %4)
  br label %bb.d

bb.d:                                             ; preds = %_ZN5draco13EncoderBuffer6EncodeIjEEbRKT_.exit9, %bb.c
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi2EED2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !191  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !161
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #20
  br label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i:  ; preds = %bb.b, %.lr.ph.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !190
  br label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.l = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !192
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #20
  br label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !190  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !191  ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i9, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5
  %.05.i.i.i3 = phi ptr [ %i.ab, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5 ], [ %i.s, %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit ] ; 3 uses
  %i.v = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i.i.i.i.i4 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i4, label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i2
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !161
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #20
  br label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5

_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5: ; preds = %bb.d, %.lr.ph.i.i.i2
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 24 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.ab, %i.u
  br i1 %.not.i.i.i6, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i7, label %.lr.ph.i.i.i2, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i7: ; preds = %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i5
  %.pr.i8 = load ptr, ptr %i.r, align 8, !tbaa !190
  br label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i9

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i9: ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i7, %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit
  %i.ac = phi ptr [ %.pr.i8, %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i7 ], [ %i.s, %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i10 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i10, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit11, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i9
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !192
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #20
  br label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit11

_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit11:       ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i9, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit11
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !161
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit11, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIjSaIjEED2Ev.exit14, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !161
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit14

_ZNSt6vectorIjSaIjEED2Ev.exit14:                  ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIjSaIjEED2Ev.exit16, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit14
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !161
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit16

_ZNSt6vectorIjSaIjEED2Ev.exit16:                  ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit14, %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN5draco16DirectBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.bd) #19
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN5draco16DirectBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.be) #19
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN5draco16DirectBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.bf) #19
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.bg) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi1EEC2Ej(ptr noundef nonnull align 8 dereferenceable(264) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.78", align 8    ; 13 uses
  %3 = alloca %"class.std::vector.78", align 8    ; 12 uses
  store i32 0, ptr %0, align 8, !tbaa !204
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !205
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
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #21
          to label %.noexc unwind label %bb.r     ; 4 uses

.noexc:                                           ; preds = %bb.e
  store ptr %i.i, ptr %i.f, align 8, !tbaa !160
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.j, ptr %i.k, align 8, !tbaa !161
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.i, i8 0, i64 %i.h, i1 false), !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.l, ptr %i.m, align 8, !tbaa !162
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #21
          to label %.noexc35 unwind label %bb.s   ; 4 uses

.noexc35:                                         ; preds = %.noexc
  store ptr %i.o, ptr %i.n, align 8, !tbaa !160
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.p, ptr %i.q, align 8, !tbaa !161
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.o, i8 0, i64 %i.h, i1 false), !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.r, ptr %i.s, align 8, !tbaa !162
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #21
          to label %.noexc43 unwind label %bb.t   ; 4 uses

.noexc43:                                         ; preds = %.noexc35
  store ptr %i.u, ptr %i.t, align 8, !tbaa !160
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.v, ptr %i.w, align 8, !tbaa !161
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.u, i8 0, i64 %i.h, i1 false), !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.x, ptr %i.y, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #21
          to label %.noexc51 unwind label %bb.u   ; 4 uses

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50: ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %.loopexit98

.noexc51:                                         ; preds = %.noexc43
  %i.ac = shl i32 %1, 5
  %i.ad = or disjoint i32 %i.ac, 1
  %i.ae = zext i32 %i.ad to i64
  store ptr %i.z, ptr %2, align 8, !tbaa !160
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.g
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !161
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.z, i8 0, i64 %i.h, i1 false), !tbaa !58
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.h
  br label %.loopexit98

.loopexit98:                                      ; preds = %.noexc51, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50
  %i.ai = phi i64 [ 1, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50 ], [ %i.ae, %.noexc51 ] ; 5 uses
  %i.aj = phi ptr [ %i.aa, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50 ], [ %i.n, %.noexc51 ] ; 3 uses
  %i.ak = phi ptr [ %i.ab, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50 ], [ %i.t, %.noexc51 ] ; 3 uses
  %.0.i.i.i.i.i.i.i49 = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i50 ], [ %i.ah, %.noexc51 ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.0.i.i.i.i.i.i.i49, ptr %i.am, align 8, !tbaa !162
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %i.an = mul nuw nsw i64 %i.ai, 24               ; 2 uses
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #21
          to label %.noexc54 unwind label %bb.v   ; 4 uses

.noexc54:                                         ; preds = %.loopexit98
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !190
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !191
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.ai
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !192
  %i.as = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIjSaIjEEmS2_ET_S4_T0_RKT1_(ptr noundef nonnull %i.ao, i64 noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %.noexc54
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !190 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !192
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #20
  br label %.body

bb.h:                                             ; preds = %.noexc54
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !191
  %i.az = load ptr, ptr %2, align 8, !tbaa !160   ; 3 uses
  %.not.i.i.i55 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !161
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i61, label %bb.j

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i61: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %.loopexit

bb.j:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.bf = shl nuw nsw i64 %i.g, 2                 ; 3 uses
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #21
          to label %.noexc62 unwind label %bb.x   ; 4 uses

.noexc62:                                         ; preds = %bb.j
  store ptr %i.bg, ptr %3, align 8, !tbaa !160
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.g
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !161
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bg, i8 0, i64 %i.bf, i1 false), !tbaa !58
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf
  br label %.loopexit

.loopexit:                                        ; preds = %.noexc62, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i61
  %.0.i.i.i.i.i.i.i60 = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i61 ], [ %i.bj, %.noexc62 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.0.i.i.i.i.i.i.i60, ptr %i.bk, align 8, !tbaa !162
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i8 0, i64 24, i1 false)
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #21
          to label %.noexc67 unwind label %bb.y   ; 4 uses

.noexc67:                                         ; preds = %.loopexit
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !190
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !191
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.ai
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !192
  %i.bq = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIjSaIjEEmS2_ET_S4_T0_RKT1_(ptr noundef nonnull %i.bm, i64 noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %.noexc67
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %i.bl, align 8, !tbaa !190 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i65, label %.body68, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !192
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bw) #20
  br label %.body68

bb.m:                                             ; preds = %.noexc67
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !191
  %i.bx = load ptr, ptr %3, align 8, !tbaa !160   ; 3 uses
  %.not.i.i.i71 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i71, label %_ZNSt6vectorIjSaIjEED2Ev.exit72, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !161
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit72

_ZNSt6vectorIjSaIjEED2Ev.exit72:                  ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
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
  %i.cl = load ptr, ptr %2, align 8, !tbaa !160   ; 3 uses
  %.not.i.i.i73 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i73, label %_ZNSt6vectorIjSaIjEED2Ev.exit74, label %bb.w

bb.w:                                             ; preds = %.body
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !161
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cq) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit74

_ZNSt6vectorIjSaIjEED2Ev.exit74:                  ; preds = %bb.w, %.body, %bb.u
  %i.cr = phi ptr [ %i.n, %bb.u ], [ %i.aj, %.body ], [ %i.aj, %bb.w ]
  %i.cs = phi ptr [ %i.t, %bb.u ], [ %i.ak, %.body ], [ %i.ak, %bb.w ]
  %.pn = phi { ptr, i32 } [ %i.cj, %bb.u ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
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
  %i.cv = load ptr, ptr %3, align 8, !tbaa !160   ; 3 uses
  %.not.i.i.i75 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i75, label %_ZNSt6vectorIjSaIjEED2Ev.exit76, label %bb.z

bb.z:                                             ; preds = %.body68
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !161
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit76

_ZNSt6vectorIjSaIjEED2Ev.exit76:                  ; preds = %bb.z, %.body68, %bb.x
  %.pn20 = phi { ptr, i32 } [ %i.ct, %bb.x ], [ %eh.lpad-body69, %.body68 ], [ %eh.lpad-body69, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.al) #19
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit76, %_ZNSt6vectorIjSaIjEED2Ev.exit74
  %i.db = phi ptr [ %i.aj, %_ZNSt6vectorIjSaIjEED2Ev.exit76 ], [ %i.cr, %_ZNSt6vectorIjSaIjEED2Ev.exit74 ] ; 2 uses
  %i.dc = phi ptr [ %i.ak, %_ZNSt6vectorIjSaIjEED2Ev.exit76 ], [ %i.cs, %_ZNSt6vectorIjSaIjEED2Ev.exit74 ] ; 2 uses
  %.pn20.pn = phi { ptr, i32 } [ %.pn20, %_ZNSt6vectorIjSaIjEED2Ev.exit76 ], [ %.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit74 ] ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i77 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorIjSaIjEED2Ev.exit78, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !161
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.di) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit78

_ZNSt6vectorIjSaIjEED2Ev.exit78:                  ; preds = %bb.ab, %bb.aa, %bb.t
  %i.dj = phi ptr [ %i.n, %bb.t ], [ %i.db, %bb.aa ], [ %i.db, %bb.ab ] ; 2 uses
  %.pn20.pn.pn = phi { ptr, i32 } [ %i.ci, %bb.t ], [ %.pn20.pn, %bb.aa ], [ %.pn20.pn, %bb.ab ] ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i79 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i79, label %_ZNSt6vectorIjSaIjEED2Ev.exit80, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit78
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !161
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit80

_ZNSt6vectorIjSaIjEED2Ev.exit80:                  ; preds = %bb.ac, %_ZNSt6vectorIjSaIjEED2Ev.exit78, %bb.s
  %.pn20.pn.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.s ], [ %.pn20.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit78 ], [ %.pn20.pn.pn, %bb.ac ] ; 2 uses
  %i.dq = load ptr, ptr %i.f, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i81 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i81, label %_ZNSt6vectorIjSaIjEED2Ev.exit82, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit80
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !161
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dq to i64
  %i.dv = sub i64 %i.dt, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.dv) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit82

_ZNSt6vectorIjSaIjEED2Ev.exit82:                  ; preds = %bb.ad, %_ZNSt6vectorIjSaIjEED2Ev.exit80, %bb.r
  %.pn20.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cg, %bb.r ], [ %.pn20.pn.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit80 ], [ %.pn20.pn.pn.pn, %bb.ad ]
  call void @_ZN5draco16DirectBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.e) #19
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN5draco30AttributeQuantizationTransformESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  store ptr %i.p, ptr %0, align 8, !tbaa !139
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !97
  %i.cd = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.l
  store ptr %i.cd, ptr %i.bz, align 8, !tbaa !98
  ret void

bb.i:                                             ; preds = %bb.j
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  %i.ch = tail call ptr @__cxa_begin_catch(ptr %i.cg) #19 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #20
  invoke void @__cxa_rethrow() #22
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ce

bb.l:                                             ; preds = %bb.i
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  tail call void @__clang_call_terminate(ptr %i.cj) #23
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN5draco14PointAttributeEEclEPS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !437  ; 4 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5draco22AttributeTransformDataESt14default_deleteIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !170  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5draco22AttributeTransformDataEEclEPS1_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !438
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #20
  br label %_ZNKSt14default_deleteIN5draco22AttributeTransformDataEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5draco22AttributeTransformDataEEclEPS1_.exit.i.i: ; preds = %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 48) #20
  br label %_ZNSt10unique_ptrIN5draco22AttributeTransformDataESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN5draco22AttributeTransformDataESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5draco22AttributeTransformDataEEclEPS1_.exit.i.i, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !439  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEENS1_IjNS_29AttributeValueIndex_tag_type_EEEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN5draco22AttributeTransformDataESt14default_deleteIS1_EED2Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !440
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #20
  br label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEENS1_IjNS_29AttributeValueIndex_tag_type_EEEED2Ev.exit.i

_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEENS1_IjNS_29AttributeValueIndex_tag_type_EEEED2Ev.exit.i: ; preds = %bb.e, %_ZNSt10unique_ptrIN5draco22AttributeTransformDataESt14default_deleteIS1_EED2Ev.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !441  ; 4 uses
  %.not.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i1.i, label %_ZN5draco14PointAttributeD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEENS1_IjNS_29AttributeValueIndex_tag_type_EEEED2Ev.exit.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !170  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5draco10DataBufferEEclEPS1_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !438
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #20
  br label %_ZNKSt14default_deleteIN5draco10DataBufferEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5draco10DataBufferEEclEPS1_.exit.i.i: ; preds = %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 40) #20
  br label %_ZN5draco14PointAttributeD2Ev.exit

_ZN5draco14PointAttributeD2Ev.exit:               ; preds = %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEENS1_IjNS_29AttributeValueIndex_tag_type_EEEED2Ev.exit.i, %_ZNKSt14default_deleteIN5draco10DataBufferEEclEPS1_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 112) #20
  br label %bb.h

bb.h:                                             ; preds = %_ZN5draco14PointAttributeD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, i8 noundef signext %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.draco::IndexType", align 4  ; 2 uses
  %5 = alloca %"class.draco::IndexType", align 4  ; 2 uses
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !77
  switch i32 %i.c, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit [
    i32 1, label %bb.c
    i32 2, label %bb.e
    i32 3, label %bb.g
    i32 4, label %bb.j
    i32 5, label %bb.m
    i32 6, label %bb.p
    i32 7, label %bb.t
    i32 8, label %bb.x
    i32 9, label %bb.ab
    i32 10, label %bb.ac
    i32 11, label %bb.ad
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !94    ; 2 uses
  %.sroa.speculated29.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.e)
  %.not30.i = icmp eq i8 %.sroa.speculated29.i, 0
  br i1 %.not30.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.f = load i32, ptr %1, align 4, !tbaa !132
  %i.g = load ptr, ptr %0, align 8, !tbaa !168    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !170
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !167
  %i.k = zext i32 %i.f to i64
  %i.l = mul nsw i64 %i.j, %i.k
  %i.m = getelementptr i8, ptr %i.h, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i64, ptr %i.n, align 8, !tbaa !166
  %i.p = getelementptr i8, ptr %i.m, i64 %i.o     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !208  ; 2 uses
  %i.s = icmp ugt ptr %i.r, %i.p
  br i1 %i.s, label %.lr.ph207, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.d:                                             ; preds = %.lr.ph207
  %i.t = getelementptr inbounds nuw i8, ptr %.01731.i206, i64 1 ; 2 uses
  %i.u = icmp ugt ptr %i.r, %i.t
  br i1 %i.u, label %.lr.ph207, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !442

.lr.ph207:                                        ; preds = %.lr.ph.i, %bb.d
  %.01731.i206 = phi ptr [ %i.t, %bb.d ], [ %i.p, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i205 = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.v = load i8, ptr %.01731.i206, align 1, !tbaa !94
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i205
  %i.x = sext i8 %i.v to i32
  store i32 %i.x, ptr %i.w, align 4, !tbaa !58
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i205, 1 ; 2 uses
  %i.y = load i8, ptr %i.d, align 8, !tbaa !94    ; 2 uses
  %.sroa.speculated.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.y)
  %i.z = zext i8 %.sroa.speculated.i to i64
  %.not.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.z
  br i1 %.not.not.i, label %bb.d, label %.critedge.i, !llvm.loop !442

.critedge.i:                                      ; preds = %.lr.ph207, %bb.c
  %.lcssa.i = phi i8 [ %i.e, %bb.c ], [ %i.y, %.lr.ph207 ] ; 2 uses
  %i.aa = icmp ult i8 %.lcssa.i, %2
  br i1 %i.aa, label %.lr.ph36.preheader.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i:                             ; preds = %.critedge.i
  %i.ab = zext i8 %2 to i64
  %i.ac = zext i8 %.lcssa.i to i64                ; 2 uses
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %scevgep.i = getelementptr i8, ptr %3, i64 %i.ad
  %i.ae = xor i64 %i.ac, -1
  %i.af = add nsw i64 %i.ae, %i.ab
  %i.ag = shl nsw i64 %i.af, 2
  %i.ah = and i64 %i.ag, 17179869180
  %i.ai = add nuw nsw i64 %i.ah, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.ai, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.e:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated29.i25 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ak)
  %.not30.i26 = icmp eq i8 %.sroa.speculated29.i25, 0
  br i1 %.not30.i26, label %.critedge.i34, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %bb.e
  %i.al = load i32, ptr %1, align 4, !tbaa !132
  %i.am = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !170
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !167
  %i.aq = zext i32 %i.al to i64
  %i.ar = mul nsw i64 %i.ap, %i.aq
  %i.as = getelementptr i8, ptr %i.an, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load i64, ptr %i.at, align 8, !tbaa !166
  %i.av = getelementptr i8, ptr %i.as, i64 %i.au  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !208 ; 2 uses
  %i.ay = icmp ugt ptr %i.ax, %i.av
  br i1 %i.ay, label %.lr.ph204, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.f:                                             ; preds = %.lr.ph204
  %i.az = getelementptr inbounds nuw i8, ptr %.01731.i29203, i64 1 ; 2 uses
  %i.ba = icmp ugt ptr %i.ax, %i.az
  br i1 %i.ba, label %.lr.ph204, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !443

.lr.ph204:                                        ; preds = %.lr.ph.i27, %bb.f
  %.01731.i29203 = phi ptr [ %i.az, %bb.f ], [ %i.av, %.lr.ph.i27 ] ; 2 uses
  %indvars.iv.i28202 = phi i64 [ %indvars.iv.next.i31, %bb.f ], [ 0, %.lr.ph.i27 ] ; 2 uses
  %i.bb = load i8, ptr %.01731.i29203, align 1, !tbaa !94
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i28202
  %i.bd = zext i8 %i.bb to i32
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !58
  %indvars.iv.next.i31 = add nuw nsw i64 %indvars.iv.i28202, 1 ; 2 uses
  %i.be = load i8, ptr %i.aj, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i32 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.be)
  %i.bf = zext i8 %.sroa.speculated.i32 to i64
  %.not.not.i33 = icmp samesign ult i64 %indvars.iv.next.i31, %i.bf
  br i1 %.not.not.i33, label %bb.f, label %.critedge.i34, !llvm.loop !443

.critedge.i34:                                    ; preds = %.lr.ph204, %bb.e
  %.lcssa.i35 = phi i8 [ %i.ak, %bb.e ], [ %i.be, %.lr.ph204 ] ; 2 uses
  %i.bg = icmp ult i8 %.lcssa.i35, %2
  br i1 %i.bg, label %.lr.ph36.preheader.i36, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i36:                           ; preds = %.critedge.i34
  %i.bh = zext i8 %2 to i64
  %i.bi = zext i8 %.lcssa.i35 to i64              ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 2
  %scevgep.i37 = getelementptr i8, ptr %3, i64 %i.bj
  %i.bk = xor i64 %i.bi, -1
  %i.bl = add nsw i64 %i.bk, %i.bh
  %i.bm = shl nsw i64 %i.bl, 2
  %i.bn = and i64 %i.bm, 17179869180
  %i.bo = add nuw nsw i64 %i.bn, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i37, i8 0, i64 %i.bo, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.g:                                             ; preds = %bb.b
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated29.i38 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.bq)
  %.not30.i39 = icmp eq i8 %.sroa.speculated29.i38, 0
  br i1 %.not30.i39, label %.critedge.i47, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %bb.g
  %i.br = load i32, ptr %1, align 4, !tbaa !132
  %i.bs = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !170
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !167
  %i.bw = zext i32 %i.br to i64
  %i.bx = mul nsw i64 %i.bv, %i.bw
  %i.by = getelementptr i8, ptr %i.bt, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !166
  %i.cb = getelementptr i8, ptr %i.by, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !208
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i40
  %indvars.iv.i41 = phi i64 [ 0, %.lr.ph.i40 ], [ %indvars.iv.next.i44, %bb.i ] ; 2 uses
  %.01731.i42 = phi ptr [ %i.cb, %.lr.ph.i40 ], [ %i.ci, %bb.i ] ; 3 uses
  %i.ce = icmp ugt ptr %i.cd, %.01731.i42
  br i1 %i.ce, label %bb.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.i:                                             ; preds = %bb.h
  %i.cf = load i16, ptr %.01731.i42, align 2, !tbaa !210
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i41
  %i.ch = sext i16 %i.cf to i32
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !58
  %i.ci = getelementptr inbounds nuw i8, ptr %.01731.i42, i64 2
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i41, 1 ; 2 uses
  %i.cj = load i8, ptr %i.bp, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i45 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.cj)
  %i.ck = zext i8 %.sroa.speculated.i45 to i64
  %.not.not.i46 = icmp samesign ult i64 %indvars.iv.next.i44, %i.ck
  br i1 %.not.not.i46, label %bb.h, label %.critedge.i47, !llvm.loop !444

.critedge.i47:                                    ; preds = %bb.i, %bb.g
  %.lcssa.i48 = phi i8 [ %i.bq, %bb.g ], [ %i.cj, %bb.i ] ; 2 uses
  %i.cl = icmp ult i8 %.lcssa.i48, %2
  br i1 %i.cl, label %.lr.ph36.preheader.i49, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i49:                           ; preds = %.critedge.i47
  %i.cm = zext i8 %2 to i64
  %i.cn = zext i8 %.lcssa.i48 to i64              ; 2 uses
  %i.co = shl nuw nsw i64 %i.cn, 2
  %scevgep.i50 = getelementptr i8, ptr %3, i64 %i.co
  %i.cp = xor i64 %i.cn, -1
  %i.cq = add nsw i64 %i.cp, %i.cm
  %i.cr = shl nsw i64 %i.cq, 2
  %i.cs = and i64 %i.cr, 17179869180
  %i.ct = add nuw nsw i64 %i.cs, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i50, i8 0, i64 %i.ct, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.j:                                             ; preds = %bb.b
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated29.i51 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.cv)
  %.not30.i52 = icmp eq i8 %.sroa.speculated29.i51, 0
  br i1 %.not30.i52, label %.critedge.i60, label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %bb.j
  %i.cw = load i32, ptr %1, align 4, !tbaa !132
  %i.cx = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !170
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !167
  %i.db = zext i32 %i.cw to i64
  %i.dc = mul nsw i64 %i.da, %i.db
  %i.dd = getelementptr i8, ptr %i.cy, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.df = load i64, ptr %i.de, align 8, !tbaa !166
  %i.dg = getelementptr i8, ptr %i.dd, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !208
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i53
  %indvars.iv.i54 = phi i64 [ 0, %.lr.ph.i53 ], [ %indvars.iv.next.i57, %bb.l ] ; 2 uses
  %.01731.i55 = phi ptr [ %i.dg, %.lr.ph.i53 ], [ %i.dn, %bb.l ] ; 3 uses
  %i.dj = icmp ugt ptr %i.di, %.01731.i55
  br i1 %i.dj, label %bb.l, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.l:                                             ; preds = %bb.k
  %i.dk = load i16, ptr %.01731.i55, align 2, !tbaa !210
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i54
  %i.dm = zext i16 %i.dk to i32
  store i32 %i.dm, ptr %i.dl, align 4, !tbaa !58
  %i.dn = getelementptr inbounds nuw i8, ptr %.01731.i55, i64 2
  %indvars.iv.next.i57 = add nuw nsw i64 %indvars.iv.i54, 1 ; 2 uses
  %i.do = load i8, ptr %i.cu, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i58 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.do)
  %i.dp = zext i8 %.sroa.speculated.i58 to i64
  %.not.not.i59 = icmp samesign ult i64 %indvars.iv.next.i57, %i.dp
  br i1 %.not.not.i59, label %bb.k, label %.critedge.i60, !llvm.loop !445

.critedge.i60:                                    ; preds = %bb.l, %bb.j
  %.lcssa.i61 = phi i8 [ %i.cv, %bb.j ], [ %i.do, %bb.l ] ; 2 uses
  %i.dq = icmp ult i8 %.lcssa.i61, %2
  br i1 %i.dq, label %.lr.ph36.preheader.i62, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i62:                           ; preds = %.critedge.i60
  %i.dr = zext i8 %2 to i64
  %i.ds = zext i8 %.lcssa.i61 to i64              ; 2 uses
  %i.dt = shl nuw nsw i64 %i.ds, 2
  %scevgep.i63 = getelementptr i8, ptr %3, i64 %i.dt
  %i.du = xor i64 %i.ds, -1
  %i.dv = add nsw i64 %i.du, %i.dr
  %i.dw = shl nsw i64 %i.dv, 2
  %i.dx = and i64 %i.dw, 17179869180
  %i.dy = add nuw nsw i64 %i.dx, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i63, i8 0, i64 %i.dy, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.m:                                             ; preds = %bb.b
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated29.i64 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ea)
  %.not30.i65 = icmp eq i8 %.sroa.speculated29.i64, 0
  br i1 %.not30.i65, label %.critedge.i73, label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %bb.m
  %i.eb = load i32, ptr %1, align 4, !tbaa !132
  %i.ec = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !170
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !167
  %i.eg = zext i32 %i.eb to i64
  %i.eh = mul nsw i64 %i.ef, %i.eg
  %i.ei = getelementptr i8, ptr %i.ed, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !166
  %i.el = getelementptr i8, ptr %i.ei, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !208
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i66
  %indvars.iv.i67 = phi i64 [ 0, %.lr.ph.i66 ], [ %indvars.iv.next.i70, %bb.o ] ; 2 uses
  %.01731.i68 = phi ptr [ %i.el, %.lr.ph.i66 ], [ %i.er, %bb.o ] ; 3 uses
  %i.eo = icmp ugt ptr %i.en, %.01731.i68
  br i1 %i.eo, label %bb.o, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.o:                                             ; preds = %bb.n
  %i.ep = load i32, ptr %.01731.i68, align 4, !tbaa !58
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i67
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !58
  %i.er = getelementptr inbounds nuw i8, ptr %.01731.i68, i64 4
  %indvars.iv.next.i70 = add nuw nsw i64 %indvars.iv.i67, 1 ; 2 uses
  %i.es = load i8, ptr %i.dz, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i71 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.es)
  %i.et = zext i8 %.sroa.speculated.i71 to i64
  %.not.not.i72 = icmp samesign ult i64 %indvars.iv.next.i70, %i.et
  br i1 %.not.not.i72, label %bb.n, label %.critedge.i73, !llvm.loop !446

.critedge.i73:                                    ; preds = %bb.o, %bb.m
  %.lcssa.i74 = phi i8 [ %i.ea, %bb.m ], [ %i.es, %bb.o ] ; 2 uses
  %i.eu = icmp ult i8 %.lcssa.i74, %2
  br i1 %i.eu, label %.lr.ph36.preheader.i75, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i75:                           ; preds = %.critedge.i73
  %i.ev = zext i8 %2 to i64
  %i.ew = zext i8 %.lcssa.i74 to i64              ; 2 uses
  %i.ex = shl nuw nsw i64 %i.ew, 2
  %scevgep.i76 = getelementptr i8, ptr %3, i64 %i.ex
  %i.ey = xor i64 %i.ew, -1
  %i.ez = add nsw i64 %i.ey, %i.ev
  %i.fa = shl nsw i64 %i.ez, 2
  %i.fb = and i64 %i.fa, 17179869180
  %i.fc = add nuw nsw i64 %i.fb, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i76, i8 0, i64 %i.fc, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.p:                                             ; preds = %bb.b
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated31.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.fe)
  %.not32.i = icmp eq i8 %.sroa.speculated31.i, 0
  br i1 %.not32.i, label %.critedge.i82, label %.lr.ph.i77

.lr.ph.i77:                                       ; preds = %bb.p
  %i.ff = load i32, ptr %1, align 4, !tbaa !132
  %i.fg = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !170
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !167
  %i.fk = zext i32 %i.ff to i64
  %i.fl = mul nsw i64 %i.fj, %i.fk
  %i.fm = getelementptr i8, ptr %i.fh, i64 %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !166
  %i.fp = getelementptr i8, ptr %i.fm, i64 %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !208
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %.lr.ph.i77
  %indvars.iv.i78 = phi i64 [ 0, %.lr.ph.i77 ], [ %indvars.iv.next.i79, %bb.s ] ; 2 uses
  %.01733.i = phi ptr [ %i.fp, %.lr.ph.i77 ], [ %i.fw, %bb.s ] ; 3 uses
  %i.fs = icmp ugt ptr %i.fr, %.01733.i
  br i1 %i.fs, label %bb.r, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.r:                                             ; preds = %bb.q
  %i.ft = load i32, ptr %.01733.i, align 4, !tbaa !58 ; 2 uses
  %i.fu = icmp sgt i32 %i.ft, -1
  br i1 %i.fu, label %bb.s, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.s:                                             ; preds = %bb.r
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i78
  store i32 %i.ft, ptr %i.fv, align 4, !tbaa !58
  %i.fw = getelementptr inbounds nuw i8, ptr %.01733.i, i64 4
  %indvars.iv.next.i79 = add nuw nsw i64 %indvars.iv.i78, 1 ; 2 uses
  %i.fx = load i8, ptr %i.fd, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i80 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.fx)
  %i.fy = zext i8 %.sroa.speculated.i80 to i64
  %.not.not.i81 = icmp samesign ult i64 %indvars.iv.next.i79, %i.fy
  br i1 %.not.not.i81, label %bb.q, label %.critedge.i82, !llvm.loop !447

.critedge.i82:                                    ; preds = %bb.s, %bb.p
  %.lcssa.i83 = phi i8 [ %i.fe, %bb.p ], [ %i.fx, %bb.s ] ; 2 uses
  %i.fz = icmp ult i8 %.lcssa.i83, %2
  br i1 %i.fz, label %.lr.ph38.preheader.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph38.preheader.i:                             ; preds = %.critedge.i82
  %i.ga = zext i8 %2 to i64
  %i.gb = zext i8 %.lcssa.i83 to i64              ; 2 uses
  %i.gc = shl nuw nsw i64 %i.gb, 2
  %scevgep.i84 = getelementptr i8, ptr %3, i64 %i.gc
  %i.gd = xor i64 %i.gb, -1
  %i.ge = add nsw i64 %i.gd, %i.ga
  %i.gf = shl nsw i64 %i.ge, 2
  %i.gg = and i64 %i.gf, 17179869180
  %i.gh = add nuw nsw i64 %i.gg, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i84, i8 0, i64 %i.gh, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.t:                                             ; preds = %bb.b
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated31.i85 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.gj)
  %.not32.i86 = icmp eq i8 %.sroa.speculated31.i85, 0
  br i1 %.not32.i86, label %.critedge.i94, label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %bb.t
  %i.gk = load i32, ptr %1, align 4, !tbaa !132
  %i.gl = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !170
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !167
  %i.gp = zext i32 %i.gk to i64
  %i.gq = mul nsw i64 %i.go, %i.gp
  %i.gr = getelementptr i8, ptr %i.gm, i64 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !166
  %i.gu = getelementptr i8, ptr %i.gr, i64 %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !208
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %.lr.ph.i87
  %indvars.iv.i88 = phi i64 [ 0, %.lr.ph.i87 ], [ %indvars.iv.next.i91, %bb.w ] ; 2 uses
  %.01733.i89 = phi ptr [ %i.gu, %.lr.ph.i87 ], [ %i.hc, %bb.w ] ; 3 uses
  %i.gx = icmp ugt ptr %i.gw, %.01733.i89
  br i1 %i.gx, label %bb.v, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.v:                                             ; preds = %bb.u
  %i.gy = load i64, ptr %.01733.i89, align 8, !tbaa !91 ; 2 uses
  %i.gz = add i64 %i.gy, 2147483648
  %or.cond.i.i = icmp ult i64 %i.gz, 4294967296
  br i1 %or.cond.i.i, label %bb.w, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.w:                                             ; preds = %bb.v
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i88
  %i.hb = trunc nsw i64 %i.gy to i32
  store i32 %i.hb, ptr %i.ha, align 4, !tbaa !58
  %i.hc = getelementptr inbounds nuw i8, ptr %.01733.i89, i64 8
  %indvars.iv.next.i91 = add nuw nsw i64 %indvars.iv.i88, 1 ; 2 uses
  %i.hd = load i8, ptr %i.gi, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i92 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.hd)
  %i.he = zext i8 %.sroa.speculated.i92 to i64
  %.not.not.i93 = icmp samesign ult i64 %indvars.iv.next.i91, %i.he
  br i1 %.not.not.i93, label %bb.u, label %.critedge.i94, !llvm.loop !448

.critedge.i94:                                    ; preds = %bb.w, %bb.t
  %.lcssa.i95 = phi i8 [ %i.gj, %bb.t ], [ %i.hd, %bb.w ] ; 2 uses
  %i.hf = icmp ult i8 %.lcssa.i95, %2
  br i1 %i.hf, label %.lr.ph38.preheader.i96, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph38.preheader.i96:                           ; preds = %.critedge.i94
  %i.hg = zext i8 %2 to i64
  %i.hh = zext i8 %.lcssa.i95 to i64              ; 2 uses
  %i.hi = shl nuw nsw i64 %i.hh, 2
  %scevgep.i97 = getelementptr i8, ptr %3, i64 %i.hi
  %i.hj = xor i64 %i.hh, -1
  %i.hk = add nsw i64 %i.hj, %i.hg
  %i.hl = shl nsw i64 %i.hk, 2
  %i.hm = and i64 %i.hl, 17179869180
  %i.hn = add nuw nsw i64 %i.hm, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i97, i8 0, i64 %i.hn, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.x:                                             ; preds = %bb.b
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.hp = load i8, ptr %i.ho, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated31.i98 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.hp)
  %.not32.i99 = icmp eq i8 %.sroa.speculated31.i98, 0
  br i1 %.not32.i99, label %.critedge.i107, label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %bb.x
  %i.hq = load i32, ptr %1, align 4, !tbaa !132
  %i.hr = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !170
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !167
  %i.hv = zext i32 %i.hq to i64
  %i.hw = mul nsw i64 %i.hu, %i.hv
  %i.hx = getelementptr i8, ptr %i.hs, i64 %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !166
  %i.ia = getelementptr i8, ptr %i.hx, i64 %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !208
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %.lr.ph.i100
  %indvars.iv.i101 = phi i64 [ 0, %.lr.ph.i100 ], [ %indvars.iv.next.i104, %bb.aa ] ; 2 uses
  %.01733.i102 = phi ptr [ %i.ia, %.lr.ph.i100 ], [ %i.ii, %bb.aa ] ; 3 uses
  %i.id = icmp ugt ptr %i.ic, %.01733.i102
  br i1 %i.id, label %bb.z, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.z:                                             ; preds = %bb.y
  %i.ie = load i64, ptr %.01733.i102, align 8, !tbaa !91 ; 2 uses
  %i.if = icmp ult i64 %i.ie, 2147483648
  br i1 %i.if, label %bb.aa, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.aa:                                            ; preds = %bb.z
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i101
  %i.ih = trunc nuw nsw i64 %i.ie to i32
  store i32 %i.ih, ptr %i.ig, align 4, !tbaa !58
  %i.ii = getelementptr inbounds nuw i8, ptr %.01733.i102, i64 8
  %indvars.iv.next.i104 = add nuw nsw i64 %indvars.iv.i101, 1 ; 2 uses
  %i.ij = load i8, ptr %i.ho, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i105 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ij)
  %i.ik = zext i8 %.sroa.speculated.i105 to i64
  %.not.not.i106 = icmp samesign ult i64 %indvars.iv.next.i104, %i.ik
  br i1 %.not.not.i106, label %bb.y, label %.critedge.i107, !llvm.loop !449

.critedge.i107:                                   ; preds = %bb.aa, %bb.x
  %.lcssa.i108 = phi i8 [ %i.hp, %bb.x ], [ %i.ij, %bb.aa ] ; 2 uses
  %i.il = icmp ult i8 %.lcssa.i108, %2
  br i1 %i.il, label %.lr.ph38.preheader.i109, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph38.preheader.i109:                          ; preds = %.critedge.i107
  %i.im = zext i8 %2 to i64
  %i.in = zext i8 %.lcssa.i108 to i64             ; 2 uses
  %i.io = shl nuw nsw i64 %i.in, 2
  %scevgep.i110 = getelementptr i8, ptr %3, i64 %i.io
  %i.ip = xor i64 %i.in, -1
  %i.iq = add nsw i64 %i.ip, %i.im
  %i.ir = shl nsw i64 %i.iq, 2
  %i.is = and i64 %i.ir, 17179869180
  %i.it = add nuw nsw i64 %i.is, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i110, i8 0, i64 %i.it, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.ab:                                            ; preds = %bb.b
  %i.iu = load i32, ptr %1, align 4, !tbaa !132
  store i32 %i.iu, ptr %4, align 4, !tbaa !132
  %i.iv = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute17ConvertTypedValueIfiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %4, i8 noundef zeroext %2, ptr noundef nonnull %3)
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.ac:                                            ; preds = %bb.b
  %i.iw = load i32, ptr %1, align 4, !tbaa !132
  store i32 %i.iw, ptr %5, align 4, !tbaa !132
  %i.ix = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute17ConvertTypedValueIdiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %5, i8 noundef zeroext %2, ptr noundef nonnull %3)
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.ad:                                            ; preds = %bb.b
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.iz = load i8, ptr %i.iy, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated29.i111 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.iz)
  %.not30.i112 = icmp eq i8 %.sroa.speculated29.i111, 0
  br i1 %.not30.i112, label %.critedge.i120, label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %bb.ad
  %i.ja = load i32, ptr %1, align 4, !tbaa !132
  %i.jb = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !170
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !167
  %i.jf = zext i32 %i.ja to i64
  %i.jg = mul nsw i64 %i.je, %i.jf
  %i.jh = getelementptr i8, ptr %i.jc, i64 %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !166
  %i.jk = getelementptr i8, ptr %i.jh, i64 %i.jj  ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !208 ; 2 uses
  %i.jn = icmp ugt ptr %i.jm, %i.jk
  br i1 %i.jn, label %.lr.ph, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.ae:                                            ; preds = %.lr.ph
  %i.jo = getelementptr inbounds nuw i8, ptr %.01731.i115201, i64 1 ; 2 uses
  %i.jp = icmp ugt ptr %i.jm, %i.jo
  br i1 %i.jp, label %.lr.ph, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !450

.lr.ph:                                           ; preds = %.lr.ph.i113, %bb.ae
  %.01731.i115201 = phi ptr [ %i.jo, %bb.ae ], [ %i.jk, %.lr.ph.i113 ] ; 2 uses
  %indvars.iv.i114200 = phi i64 [ %indvars.iv.next.i117, %bb.ae ], [ 0, %.lr.ph.i113 ] ; 2 uses
  %i.jq = load i8, ptr %.01731.i115201, align 1, !tbaa !211, !range !164, !noundef !165
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i114200
  %i.js = zext nneg i8 %i.jq to i32
  store i32 %i.js, ptr %i.jr, align 4, !tbaa !58
  %indvars.iv.next.i117 = add nuw nsw i64 %indvars.iv.i114200, 1 ; 2 uses
  %i.jt = load i8, ptr %i.iy, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i118 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.jt)
  %i.ju = zext i8 %.sroa.speculated.i118 to i64
  %.not.not.i119 = icmp samesign ult i64 %indvars.iv.next.i117, %i.ju
  br i1 %.not.not.i119, label %bb.ae, label %.critedge.i120, !llvm.loop !450

.critedge.i120:                                   ; preds = %.lr.ph, %bb.ad
  %.lcssa.i121 = phi i8 [ %i.iz, %bb.ad ], [ %i.jt, %.lr.ph ] ; 2 uses
  %i.jv = icmp ult i8 %.lcssa.i121, %2
  br i1 %i.jv, label %.lr.ph36.preheader.i122, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i122:                          ; preds = %.critedge.i120
  %i.jw = zext i8 %2 to i64
  %i.jx = zext i8 %.lcssa.i121 to i64             ; 2 uses
  %i.jy = shl nuw nsw i64 %i.jx, 2
  %scevgep.i123 = getelementptr i8, ptr %3, i64 %i.jy
  %i.jz = xor i64 %i.jx, -1
  %i.ka = add nsw i64 %i.jz, %i.jw
  %i.kb = shl nsw i64 %i.ka, 2
  %i.kc = and i64 %i.kb, 17179869180
  %i.kd = add nuw nsw i64 %i.kc, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i123, i8 0, i64 %i.kd, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit: ; preds = %bb.ae, %bb.z, %bb.y, %bb.v, %bb.u, %bb.r, %bb.q, %bb.n, %bb.k, %bb.h, %bb.f, %bb.d, %.lr.ph.i113, %.lr.ph.i27, %.lr.ph.i, %.lr.ph36.preheader.i122, %.critedge.i120, %.lr.ph38.preheader.i109, %.critedge.i107, %.lr.ph38.preheader.i96, %.critedge.i94, %.lr.ph38.preheader.i, %.critedge.i82, %.lr.ph36.preheader.i75, %.critedge.i73, %.lr.ph36.preheader.i62, %.critedge.i60, %.lr.ph36.preheader.i49, %.critedge.i47, %.lr.ph36.preheader.i36, %.critedge.i34, %.lr.ph36.preheader.i, %.critedge.i, %bb.b, %bb.a, %bb.ac, %bb.ab
  %.0 = phi i1 [ false, %bb.n ], [ false, %bb.a ], [ false, %bb.b ], [ false, %.lr.ph.i ], [ false, %.lr.ph.i27 ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.h ], [ true, %.lr.ph36.preheader.i122 ], [ true, %.critedge.i120 ], [ %i.iv, %bb.ab ], [ %i.ix, %bb.ac ], [ true, %.critedge.i ], [ true, %.lr.ph36.preheader.i ], [ true, %.critedge.i34 ], [ true, %.lr.ph36.preheader.i36 ], [ true, %.critedge.i47 ], [ true, %.lr.ph36.preheader.i49 ], [ true, %.critedge.i60 ], [ true, %.lr.ph36.preheader.i62 ], [ true, %.critedge.i73 ], [ true, %.lr.ph36.preheader.i75 ], [ true, %.critedge.i82 ], [ true, %.lr.ph38.preheader.i ], [ false, %bb.v ], [ true, %.critedge.i94 ], [ true, %.lr.ph38.preheader.i96 ], [ false, %bb.r ], [ true, %.critedge.i107 ], [ true, %.lr.ph38.preheader.i109 ], [ false, %.lr.ph.i113 ], [ false, %bb.z ], [ false, %bb.k ], [ false, %bb.q ], [ false, %bb.u ], [ false, %bb.y ], [ false, %bb.ae ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5draco17GeometryAttribute17ConvertTypedValueIfiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8, !tbaa !166
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !167
  %i.f = zext i32 %i.a to i64
  %i.g = mul nsw i64 %i.e, %i.f
  %i.h = load ptr, ptr %0, align 8, !tbaa !168    ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !170
  %i.j = getelementptr i8, ptr %i.i, i64 %i.g
  %i.k = getelementptr i8, ptr %i.j, i64 %i.c     ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !94    ; 2 uses
  %.sroa.speculated32 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.m)
  %.not33 = icmp eq i8 %.sroa.speculated32, 0
  br i1 %.not33, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !208  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i8, ptr %i.p, align 8, !range !164
  %.fr59 = freeze i8 %i.q
  %i.r = trunc i8 %.fr59 to i1
  %i.s = icmp ugt ptr %i.o, %i.k                  ; 2 uses
  br i1 %i.r, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.s, label %.lr.ph51, label %.loopexit

bb.b:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.01734.us50, i64 4 ; 2 uses
  %i.u = icmp ugt ptr %i.o, %i.t
  br i1 %i.u, label %.lr.ph51, label %.loopexit, !llvm.loop !451

.lr.ph51:                                         ; preds = %.lr.ph.split.us, %bb.b
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %bb.b ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.01734.us50 = phi ptr [ %i.t, %bb.b ], [ %i.k, %.lr.ph.split.us ] ; 2 uses
  %i.v = load float, ptr %.01734.us50, align 4, !tbaa !96 ; 6 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv66
  %i.x = tail call float @llvm.fabs.f32(float %i.v)
  %or.cond13.i.us = fcmp one float %i.x, +inf
  %i.y = fcmp uge float %i.v, f0xCF000000
  %or.cond14.not16.i.us = and i1 %i.y, %or.cond13.i.us
  %i.z = fcmp ult float %i.v, f0x4F000000
  %or.cond15.i.us = and i1 %i.z, %or.cond14.not16.i.us
  br i1 %or.cond15.i.us, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph51
  %i.aa = fcmp ogt float %i.v, 1.000000e+00
  %i.ab = fcmp olt float %i.v, 0.000000e+00
  %or.cond.i.us = or i1 %i.aa, %i.ab
  br i1 %or.cond.i.us, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = fpext float %i.v to double
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ac, double f0x41DFFFFFFFC00000, double 5.000000e-01)
  %i.ae = tail call double @llvm.floor.f64(double %i.ad)
  %i.af = fptosi double %i.ae to i32
  store i32 %i.af, ptr %i.w, align 4, !tbaa !58
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %i.ag = load i8, ptr %i.l, align 8, !tbaa !94   ; 2 uses
  %.sroa.speculated.us = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ag)
  %i.ah = zext i8 %.sroa.speculated.us to i64
  %.not.us.not = icmp samesign ult i64 %indvars.iv.next67, %i.ah
  br i1 %.not.us.not, label %bb.b, label %.critedge, !llvm.loop !451

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.s, label %.lr.ph44, label %.loopexit

bb.e:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.0173443, i64 4 ; 2 uses
  %i.aj = icmp ugt ptr %i.o, %i.ai
  br i1 %i.aj, label %.lr.ph44, label %.loopexit, !llvm.loop !451

.lr.ph44:                                         ; preds = %.lr.ph.split, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.lr.ph.split ] ; 2 uses
  %.0173443 = phi ptr [ %i.ai, %bb.e ], [ %i.k, %.lr.ph.split ] ; 2 uses
  %i.ak = load float, ptr %.0173443, align 4, !tbaa !96 ; 4 uses
  %i.al = tail call float @llvm.fabs.f32(float %i.ak)
  %or.cond13.i = fcmp one float %i.al, +inf
  %i.am = fcmp uge float %i.ak, f0xCF000000
  %or.cond14.not16.i = and i1 %i.am, %or.cond13.i
  %i.an = fcmp ult float %i.ak, f0x4F000000
  %or.cond15.i = and i1 %i.an, %or.cond14.not16.i
  br i1 %or.cond15.i, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph44
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.ap = fptosi float %i.ak to i32
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = load i8, ptr %i.l, align 8, !tbaa !94   ; 2 uses
  %.sroa.speculated = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.aq)
  %i.ar = zext i8 %.sroa.speculated to i64
  %.not.not = icmp samesign ult i64 %indvars.iv.next, %i.ar
  br i1 %.not.not, label %bb.e, label %.critedge, !llvm.loop !451

.critedge:                                        ; preds = %bb.f, %bb.d, %bb.a
  %.lcssa = phi i8 [ %i.m, %bb.a ], [ %i.ag, %bb.d ], [ %i.aq, %bb.f ] ; 3 uses
  %i.as = icmp ult i8 %.lcssa, %2
  br i1 %i.as, label %.lr.ph58.preheader, label %.loopexit

.lr.ph58.preheader:                               ; preds = %.critedge
  %i.at = zext i8 %2 to i64
  %i.au = zext i8 %.lcssa to i64
  %i.av = zext i8 %.lcssa to i64
  %i.aw = shl nuw nsw i64 %i.av, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.aw
  %i.ax = xor i64 %i.au, -1
  %i.ay = add nsw i64 %i.ax, %i.at
  %i.az = shl nsw i64 %i.ay, 2
  %i.ba = and i64 %i.az, 17179869180
  %i.bb = add nuw nsw i64 %i.ba, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.bb, i1 false), !tbaa !58
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.lr.ph44, %bb.b, %.lr.ph51, %bb.c, %.lr.ph58.preheader, %.lr.ph.split.us, %.lr.ph.split, %.critedge
  %.not30 = phi i1 [ true, %.critedge ], [ true, %.lr.ph58.preheader ], [ false, %.lr.ph.split ], [ false, %.lr.ph.split.us ], [ false, %bb.b ], [ false, %bb.c ], [ false, %.lr.ph51 ], [ false, %.lr.ph44 ], [ false, %bb.e ]
  ret i1 %.not30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5draco17GeometryAttribute17ConvertTypedValueIdiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8, !tbaa !166
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !167
  %i.f = zext i32 %i.a to i64
  %i.g = mul nsw i64 %i.e, %i.f
  %i.h = load ptr, ptr %0, align 8, !tbaa !168    ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !170
  %i.j = getelementptr i8, ptr %i.i, i64 %i.g
  %i.k = getelementptr i8, ptr %i.j, i64 %i.c     ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !94    ; 2 uses
  %.sroa.speculated32 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.m)
  %.not33 = icmp eq i8 %.sroa.speculated32, 0
  br i1 %.not33, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !208  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i8, ptr %i.p, align 8, !range !164
  %.fr59 = freeze i8 %i.q
  %i.r = trunc i8 %.fr59 to i1
  %i.s = icmp ugt ptr %i.o, %i.k                  ; 2 uses
  br i1 %i.r, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.s, label %.lr.ph51, label %.loopexit

bb.b:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.01734.us50, i64 8 ; 2 uses
  %i.u = icmp ugt ptr %i.o, %i.t
  br i1 %i.u, label %.lr.ph51, label %.loopexit, !llvm.loop !452

.lr.ph51:                                         ; preds = %.lr.ph.split.us, %bb.b
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %bb.b ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.01734.us50 = phi ptr [ %i.t, %bb.b ], [ %i.k, %.lr.ph.split.us ] ; 2 uses
  %i.v = load double, ptr %.01734.us50, align 8, !tbaa !213 ; 6 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv66
  %i.x = tail call double @llvm.fabs.f64(double %i.v)
  %or.cond13.i.us = fcmp one double %i.x, +inf
  %i.y = fcmp uge double %i.v, f0xC1E0000000000000
  %or.cond14.not16.i.us = and i1 %i.y, %or.cond13.i.us
  %i.z = fcmp ult double %i.v, f0x41DFFFFFFFC00000
  %or.cond15.i.us = and i1 %i.z, %or.cond14.not16.i.us
  br i1 %or.cond15.i.us, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph51
  %i.aa = fcmp ogt double %i.v, 1.000000e+00
  %i.ab = fcmp olt double %i.v, 0.000000e+00
  %or.cond.i.us = or i1 %i.aa, %i.ab
  br i1 %or.cond.i.us, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.v, double f0x41DFFFFFFFC00000, double 5.000000e-01)
  %i.ad = tail call double @llvm.floor.f64(double %i.ac)
  %storemerge.i.us = fptosi double %i.ad to i32
  store i32 %storemerge.i.us, ptr %i.w, align 4, !tbaa !58
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %i.ae = load i8, ptr %i.l, align 8, !tbaa !94   ; 2 uses
  %.sroa.speculated.us = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ae)
  %i.af = zext i8 %.sroa.speculated.us to i64
  %.not.us.not = icmp samesign ult i64 %indvars.iv.next67, %i.af
  br i1 %.not.us.not, label %bb.b, label %.critedge, !llvm.loop !452

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.s, label %.lr.ph44, label %.loopexit

bb.e:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.0173443, i64 8 ; 2 uses
  %i.ah = icmp ugt ptr %i.o, %i.ag
  br i1 %i.ah, label %.lr.ph44, label %.loopexit, !llvm.loop !452

.lr.ph44:                                         ; preds = %.lr.ph.split, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.lr.ph.split ] ; 2 uses
  %.0173443 = phi ptr [ %i.ag, %bb.e ], [ %i.k, %.lr.ph.split ] ; 2 uses
  %i.ai = load double, ptr %.0173443, align 8, !tbaa !213 ; 4 uses
  %i.aj = tail call double @llvm.fabs.f64(double %i.ai)
  %or.cond13.i = fcmp one double %i.aj, +inf
  %i.ak = fcmp uge double %i.ai, f0xC1E0000000000000
  %or.cond14.not16.i = and i1 %i.ak, %or.cond13.i
  %i.al = fcmp ult double %i.ai, f0x41DFFFFFFFC00000
  %or.cond15.i = and i1 %i.al, %or.cond14.not16.i
  br i1 %or.cond15.i, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph44
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %storemerge.i = fptosi double %i.ai to i32
  store i32 %storemerge.i, ptr %i.am, align 4, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = load i8, ptr %i.l, align 8, !tbaa !94   ; 2 uses
  %.sroa.speculated = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.an)
  %i.ao = zext i8 %.sroa.speculated to i64
  %.not.not = icmp samesign ult i64 %indvars.iv.next, %i.ao
  br i1 %.not.not, label %bb.e, label %.critedge, !llvm.loop !452

.critedge:                                        ; preds = %bb.f, %bb.d, %bb.a
  %.lcssa = phi i8 [ %i.m, %bb.a ], [ %i.ae, %bb.d ], [ %i.an, %bb.f ] ; 3 uses
  %i.ap = icmp ult i8 %.lcssa, %2
  br i1 %i.ap, label %.lr.ph58.preheader, label %.loopexit

.lr.ph58.preheader:                               ; preds = %.critedge
  %i.aq = zext i8 %2 to i64
  %i.ar = zext i8 %.lcssa to i64
  %i.as = zext i8 %.lcssa to i64
  %i.at = shl nuw nsw i64 %i.as, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.at
  %i.au = xor i64 %i.ar, -1
  %i.av = add nsw i64 %i.au, %i.aq
  %i.aw = shl nsw i64 %i.av, 2
  %i.ax = and i64 %i.aw, 17179869180
  %i.ay = add nuw nsw i64 %i.ax, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.ay, i1 false), !tbaa !58
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.lr.ph44, %bb.b, %.lr.ph51, %bb.c, %.lr.ph58.preheader, %.lr.ph.split.us, %.lr.ph.split, %.critedge
  %.not30 = phi i1 [ true, %.critedge ], [ true, %.lr.ph58.preheader ], [ false, %.lr.ph.split ], [ false, %.lr.ph.split.us ], [ false, %bb.b ], [ false, %bb.c ], [ false, %.lr.ph51 ], [ false, %.lr.ph44 ], [ false, %bb.e ]
  ret i1 %.not30
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f32(float, i32 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco12EncodeVarintIjEEbT_PNS_13EncoderBufferE(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = trunc i32 %0 to i8                       ; 2 uses
  %i.c = and i8 %i.b, 127
  store i8 %i.c, ptr %i.a, align 1, !tbaa !94
  %i.d = icmp ugt i32 %0, 127
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = or i8 %i.b, -128
  store i8 %i.e, ptr %i.a, align 1, !tbaa !94
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !152
  %i.h = icmp slt i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !153
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.l = load ptr, ptr %1, align 8, !tbaa !153    ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 %i.o
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.k)
  %i.q = lshr i32 %0, 7
  %i.r = call noundef zeroext i1 @_ZN5draco12EncodeVarintIjEEbT_PNS_13EncoderBufferE(i32 noundef %i.q, ptr noundef nonnull %1)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

bb.d:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !152
  %i.u = icmp slt i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !153
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.y = load ptr, ptr %1, align 8, !tbaa !153    ; 2 uses
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 %i.ab
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.ac, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.x)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit:    ; preds = %bb.e, %bb.d, %bb.b, %bb.c
  %spec.select = phi i1 [ false, %bb.b ], [ %i.r, %bb.c ], [ false, %bb.d ], [ true, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i1 %spec.select
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 5 uses
  %i.c = sub i64 %i.a, %i.b                       ; 23 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !462
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !463  ; 12 uses
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not54 = icmp ult i64 %i.j, %i.c
  br i1 %.not54, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.l = sub i64 %i.i, %i.k                       ; 18 uses
  %i.m = icmp ugt i64 %i.l, %i.c
  br i1 %i.m, label %bb.d, label %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %i.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %i.c, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !104

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.o, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.c, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.o, align 1, !tbaa !94
  store i8 %i.s, ptr %i.g, align 1, !tbaa !94
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !463
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.f, align 8, !tbaa !463
  %i.v = sub i64 %i.p, %i.k                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.i, !prof !104

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds i8, ptr %i.g, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  %i.z = icmp eq i64 %i.v, 1
  br i1 %i.z, label %bb.j, label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.ab = load i8, ptr %1, align 1, !tbaa !94
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !94
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  %i.ac = icmp sgt i64 %i.c, 0
  br i1 %i.ac, label %iter.check166, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

iter.check166:                                    ; preds = %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit
  %min.iters.check149 = icmp ult i64 %i.c, 4
  %i.ad = sub i64 %i.b, %i.k
  %diff.check148 = icmp ugt i64 %i.ad, -32
  %or.cond = or i1 %min.iters.check149, %diff.check148
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check150

vector.main.loop.iter.check150:                   ; preds = %iter.check166
  %min.iters.check151 = icmp ult i64 %i.c, 32
  br i1 %min.iters.check151, label %vec.epilog.ph170, label %vector.ph152

vector.ph152:                                     ; preds = %vector.main.loop.iter.check150
  %i.ae = and i64 %i.c, 28
  %n.vec153 = and i64 %i.c, 9223372036854775776   ; 5 uses
  %i.af = and i64 %i.c, 31
  %i.ag = getelementptr i8, ptr %1, i64 %n.vec153
  %i.ah = getelementptr i8, ptr %2, i64 %n.vec153
  br label %vector.body154

vector.body154:                                   ; preds = %vector.ph152, %vector.body154
  %index155 = phi i64 [ 0, %vector.ph152 ], [ %index.next160, %vector.body154 ] ; 3 uses
  %next.gep156 = getelementptr i8, ptr %1, i64 %index155 ; 2 uses
  %next.gep157 = getelementptr i8, ptr %2, i64 %index155 ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep157, i64 16
  %wide.load158 = load <16 x i8>, ptr %next.gep157, align 1, !tbaa !94
  %wide.load159 = load <16 x i8>, ptr %i.ai, align 1, !tbaa !94
  %i.aj = getelementptr i8, ptr %next.gep156, i64 16
  store <16 x i8> %wide.load158, ptr %next.gep156, align 1, !tbaa !94
  store <16 x i8> %wide.load159, ptr %i.aj, align 1, !tbaa !94
  %index.next160 = add nuw i64 %index155, 32      ; 2 uses
  %i.ak = icmp eq i64 %index.next160, %n.vec153
  br i1 %i.ak, label %middle.block161, label %vector.body154, !llvm.loop !453

middle.block161:                                  ; preds = %vector.body154
  %cmp.n162 = icmp eq i64 %i.c, %n.vec153
  br i1 %cmp.n162, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, label %vec.epilog.iter.check168

vec.epilog.iter.check168:                         ; preds = %middle.block161
  %min.epilog.iters.check169 = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check169, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph170, !prof !464

vec.epilog.ph170:                                 ; preds = %vector.main.loop.iter.check150, %vec.epilog.iter.check168
  %vec.epilog.resume.val163 = phi i64 [ %n.vec153, %vec.epilog.iter.check168 ], [ 0, %vector.main.loop.iter.check150 ]
  %n.vec171 = and i64 %i.c, 9223372036854775804   ; 4 uses
  %i.al = and i64 %i.c, 3
  %i.am = getelementptr i8, ptr %1, i64 %n.vec171
  %i.an = getelementptr i8, ptr %2, i64 %n.vec171
  br label %vec.epilog.vector.body172

vec.epilog.vector.body172:                        ; preds = %vec.epilog.vector.body172, %vec.epilog.ph170
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
  %wide.load105 = load <4 x i8>, ptr %next.gep104, align 1, !tbaa !94
  store <4 x i8> %wide.load105, ptr %next.gep103, align 1, !tbaa !94
  %index.next106 = add nuw i64 %index102, 4       ; 2 uses
  %i.bk = icmp eq i64 %index.next106, %n.vec101
  br i1 %i.bk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !457

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
  %i.bl = load i8, ptr %.0910.i.i.i.i.i.i.i.i, align 1, !tbaa !94
  store i8 %i.bl, ptr %.0811.i.i.i.i.i.i.i.i, align 1, !tbaa !94
  %i.bm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 1
  %i.bo = add nsw i64 %.012.i.i.i.i.i.i.i.i, -1
  %i.bp = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i, 1
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit.loopexit, !llvm.loop !458

_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !463
  br label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit
  %i.bq = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit.loopexit ], [ %i.g, %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.br = sub nuw i64 %i.c, %i.l
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br ; 3 uses
  store ptr %i.bs, ptr %i.f, align 8, !tbaa !463
  %i.bt = icmp sgt i64 %i.l, 1
  br i1 %i.bt, label %bb.k, label %bb.l, !prof !104

bb.k:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bs, ptr align 1 %1, i64 %i.l, i1 false)
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55

bb.l:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit
  br i1 %i.au, label %bb.m, label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55

bb.m:                                             ; preds = %bb.l
  %i.bu = load i8, ptr %1, align 1, !tbaa !94
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !94
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55

_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55: ; preds = %bb.k, %bb.l, %bb.m
  %i.bv = load ptr, ptr %i.f, align 8, !tbaa !463
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.l
  store ptr %i.bw, ptr %i.f, align 8, !tbaa !463
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
  %wide.load122 = load <16 x i8>, ptr %next.gep121, align 1, !tbaa !94
  %wide.load123 = load <16 x i8>, ptr %i.cd, align 1, !tbaa !94
  %i.ce = getelementptr i8, ptr %next.gep120, i64 16
  store <16 x i8> %wide.load122, ptr %next.gep120, align 1, !tbaa !94
  store <16 x i8> %wide.load123, ptr %i.ce, align 1, !tbaa !94
  %index.next124 = add nuw i64 %index119, 32      ; 2 uses
  %i.cf = icmp eq i64 %index.next124, %n.vec117
  br i1 %i.cf, label %middle.block125, label %vector.body118, !llvm.loop !459

middle.block125:                                  ; preds = %vector.body118
  %cmp.n126 = icmp eq i64 %i.l, %n.vec117
  br i1 %cmp.n126, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, label %vec.epilog.iter.check132

vec.epilog.iter.check132:                         ; preds = %middle.block125
  %min.epilog.iters.check133 = icmp eq i64 %i.bz, 0
  br i1 %min.epilog.iters.check133, label %.lr.ph.i.i.i.i.i57.preheader, label %vec.epilog.ph134, !prof !464

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
  %wide.load140 = load <4 x i8>, ptr %next.gep139, align 1, !tbaa !94
  store <4 x i8> %wide.load140, ptr %next.gep138, align 1, !tbaa !94
  %index.next141 = add nuw i64 %index137, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next141, %n.vec135
  br i1 %i.cj, label %vec.epilog.middle.block142, label %vec.epilog.vector.body136, !llvm.loop !460

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
  %i.ck = load i8, ptr %.0910.i.i.i.i.i60, align 1, !tbaa !94
  store i8 %i.ck, ptr %.0811.i.i.i.i.i59, align 1, !tbaa !94
  %i.cl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i60, i64 1
  %i.cm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i59, i64 1
  %i.cn = add nsw i64 %.012.i.i.i.i.i58, -1
  %i.co = icmp samesign ugt i64 %.012.i.i.i.i.i58, 1
  br i1 %i.co, label %.lr.ph.i.i.i.i.i57, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, !llvm.loop !461

bb.n:                                             ; preds = %bb.b
  %i.cp = load ptr, ptr %0, align 8, !tbaa !465   ; 5 uses
  %i.cq = ptrtoint ptr %i.cp to i64               ; 4 uses
  %i.cr = sub i64 %i.i, %i.cq                     ; 4 uses
  %i.cs = sub i64 9223372036854775807, %i.cr
  %i.ct = icmp ult i64 %i.cs, %i.c
  br i1 %i.ct, label %bb.o, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #22
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
  %i.cy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #21
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit, %bb.p
  %i.cz = phi ptr [ %i.cy, %bb.p ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.da = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.db = sub i64 %i.da, %i.cq                    ; 4 uses
  %i.dc = icmp sgt i64 %i.db, 1
  br i1 %i.dc, label %bb.q, label %bb.r, !prof !104

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cz, ptr align 1 %i.cp, i64 %i.db, i1 false)
  br label %bb.t

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit
  %i.dd = icmp eq i64 %i.db, 1
  br i1 %i.dd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.de = load i8, ptr %i.cp, align 1, !tbaa !94
  store i8 %i.de, ptr %i.cz, align 1, !tbaa !94
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.df = getelementptr i8, ptr %i.cz, i64 %i.db  ; 2 uses
  %i.dg = icmp sgt i64 %i.c, 0
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i.i.i.i63.preheader, label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67

.lr.ph.i.i.i.i.i.i.i.i63.preheader:               ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr align 1 %2, i64 %i.c, i1 false), !tbaa !94
  %i.dh = add i64 %i.a, %i.da
  %i.di = add i64 %i.b, %i.cq
  %i.dj = sub i64 %i.dh, %i.di
  %scevgep = getelementptr i8, ptr %i.cz, i64 %i.dj
  br label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67

_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67: ; preds = %.lr.ph.i.i.i.i.i.i.i.i63.preheader, %bb.t
  %.08.lcssa.i.i.i.i.i.i.i.i62 = phi ptr [ %i.df, %bb.t ], [ %scevgep, %.lr.ph.i.i.i.i.i.i.i.i63.preheader ] ; 3 uses
  %i.dk = sub i64 %i.i, %i.da                     ; 4 uses
  %i.dl = icmp sgt i64 %i.dk, 1
  br i1 %i.dl, label %bb.u, label %bb.v, !prof !104

bb.u:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i.i.i.i62, ptr align 1 %1, i64 %i.dk, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67
  %i.dm = icmp eq i64 %i.dk, 1
  br i1 %i.dm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dn = load i8, ptr %1, align 1, !tbaa !94
  store i8 %i.dn, ptr %.08.lcssa.i.i.i.i.i.i.i.i62, align 1, !tbaa !94
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.do = getelementptr inbounds i8, ptr %.08.lcssa.i.i.i.i.i.i.i.i62, i64 %i.dk
  %.not.i69 = icmp eq ptr %i.cp, null
  br i1 %.not.i69, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = sub i64 %i.h, %i.cq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.dp) #20
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit: ; preds = %bb.x, %bb.y
  store ptr %i.cz, ptr %0, align 8, !tbaa !465
  store ptr %i.do, ptr %i.f, align 8, !tbaa !463
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cx
  store ptr %i.dq, ptr %i.d, align 8, !tbaa !462
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i57, %.lr.ph.i.i.i.i.i, %middle.block125, %vec.epilog.middle.block142, %middle.block161, %vec.epilog.middle.block178, %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55, %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIjEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, i8 noundef signext %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.draco::IndexType", align 4  ; 2 uses
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !77
  switch i32 %i.c, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit [
    i32 1, label %bb.c
    i32 2, label %bb.e
    i32 3, label %bb.g
    i32 4, label %bb.j
    i32 5, label %bb.m
    i32 6, label %bb.p
    i32 7, label %bb.s
    i32 8, label %bb.w
    i32 9, label %bb.aa
    i32 10, label %bb.ab
    i32 11, label %bb.ag
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !94    ; 2 uses
  %.sroa.speculated29.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.e)
  %.not30.i = icmp eq i8 %.sroa.speculated29.i, 0
  br i1 %.not30.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.f = load i32, ptr %1, align 4, !tbaa !132
  %i.g = load ptr, ptr %0, align 8, !tbaa !168    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !170
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !167
  %i.k = zext i32 %i.f to i64
  %i.l = mul nsw i64 %i.j, %i.k
  %i.m = getelementptr i8, ptr %i.h, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i64, ptr %i.n, align 8, !tbaa !166
  %i.p = getelementptr i8, ptr %i.m, i64 %i.o     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !208  ; 2 uses
  %i.s = icmp ugt ptr %i.r, %i.p
  br i1 %i.s, label %.lr.ph245, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.d:                                             ; preds = %.lr.ph245
  %i.t = getelementptr inbounds nuw i8, ptr %.01731.i244, i64 1 ; 2 uses
  %i.u = icmp ugt ptr %i.r, %i.t
  br i1 %i.u, label %.lr.ph245, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !466

.lr.ph245:                                        ; preds = %.lr.ph.i, %bb.d
  %.01731.i244 = phi ptr [ %i.t, %bb.d ], [ %i.p, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i243 = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.v = load i8, ptr %.01731.i244, align 1, !tbaa !94
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i243
  %i.x = sext i8 %i.v to i32
  store i32 %i.x, ptr %i.w, align 4, !tbaa !58
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i243, 1 ; 2 uses
  %i.y = load i8, ptr %i.d, align 8, !tbaa !94    ; 2 uses
  %.sroa.speculated.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.y)
  %i.z = zext i8 %.sroa.speculated.i to i64
  %.not.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.z
  br i1 %.not.not.i, label %bb.d, label %.critedge.i, !llvm.loop !466

.critedge.i:                                      ; preds = %.lr.ph245, %bb.c
  %.lcssa.i = phi i8 [ %i.e, %bb.c ], [ %i.y, %.lr.ph245 ] ; 2 uses
  %i.aa = icmp ult i8 %.lcssa.i, %2
  br i1 %i.aa, label %.lr.ph36.preheader.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i:                             ; preds = %.critedge.i
  %i.ab = zext i8 %2 to i64
  %i.ac = zext i8 %.lcssa.i to i64                ; 2 uses
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %scevgep.i = getelementptr i8, ptr %3, i64 %i.ad
  %i.ae = xor i64 %i.ac, -1
  %i.af = add nsw i64 %i.ae, %i.ab
  %i.ag = shl nsw i64 %i.af, 2
  %i.ah = and i64 %i.ag, 17179869180
  %i.ai = add nuw nsw i64 %i.ah, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.ai, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.e:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated29.i25 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ak)
  %.not30.i26 = icmp eq i8 %.sroa.speculated29.i25, 0
  br i1 %.not30.i26, label %.critedge.i34, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %bb.e
  %i.al = load i32, ptr %1, align 4, !tbaa !132
  %i.am = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !170
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !167
  %i.aq = zext i32 %i.al to i64
  %i.ar = mul nsw i64 %i.ap, %i.aq
  %i.as = getelementptr i8, ptr %i.an, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load i64, ptr %i.at, align 8, !tbaa !166
  %i.av = getelementptr i8, ptr %i.as, i64 %i.au  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !208 ; 2 uses
  %i.ay = icmp ugt ptr %i.ax, %i.av
  br i1 %i.ay, label %.lr.ph242, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.f:                                             ; preds = %.lr.ph242
  %i.az = getelementptr inbounds nuw i8, ptr %.01731.i29241, i64 1 ; 2 uses
  %i.ba = icmp ugt ptr %i.ax, %i.az
  br i1 %i.ba, label %.lr.ph242, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !467

.lr.ph242:                                        ; preds = %.lr.ph.i27, %bb.f
  %.01731.i29241 = phi ptr [ %i.az, %bb.f ], [ %i.av, %.lr.ph.i27 ] ; 2 uses
  %indvars.iv.i28240 = phi i64 [ %indvars.iv.next.i31, %bb.f ], [ 0, %.lr.ph.i27 ] ; 2 uses
  %i.bb = load i8, ptr %.01731.i29241, align 1, !tbaa !94
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i28240
  %i.bd = zext i8 %i.bb to i32
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !58
  %indvars.iv.next.i31 = add nuw nsw i64 %indvars.iv.i28240, 1 ; 2 uses
  %i.be = load i8, ptr %i.aj, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i32 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.be)
  %i.bf = zext i8 %.sroa.speculated.i32 to i64
  %.not.not.i33 = icmp samesign ult i64 %indvars.iv.next.i31, %i.bf
  br i1 %.not.not.i33, label %bb.f, label %.critedge.i34, !llvm.loop !467

.critedge.i34:                                    ; preds = %.lr.ph242, %bb.e
  %.lcssa.i35 = phi i8 [ %i.ak, %bb.e ], [ %i.be, %.lr.ph242 ] ; 2 uses
  %i.bg = icmp ult i8 %.lcssa.i35, %2
  br i1 %i.bg, label %.lr.ph36.preheader.i36, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i36:                           ; preds = %.critedge.i34
  %i.bh = zext i8 %2 to i64
  %i.bi = zext i8 %.lcssa.i35 to i64              ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 2
  %scevgep.i37 = getelementptr i8, ptr %3, i64 %i.bj
  %i.bk = xor i64 %i.bi, -1
  %i.bl = add nsw i64 %i.bk, %i.bh
  %i.bm = shl nsw i64 %i.bl, 2
  %i.bn = and i64 %i.bm, 17179869180
  %i.bo = add nuw nsw i64 %i.bn, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i37, i8 0, i64 %i.bo, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.g:                                             ; preds = %bb.b
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated29.i38 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.bq)
  %.not30.i39 = icmp eq i8 %.sroa.speculated29.i38, 0
  br i1 %.not30.i39, label %.critedge.i47, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %bb.g
  %i.br = load i32, ptr %1, align 4, !tbaa !132
  %i.bs = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !170
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !167
  %i.bw = zext i32 %i.br to i64
  %i.bx = mul nsw i64 %i.bv, %i.bw
  %i.by = getelementptr i8, ptr %i.bt, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !166
  %i.cb = getelementptr i8, ptr %i.by, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !208
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i40
  %indvars.iv.i41 = phi i64 [ 0, %.lr.ph.i40 ], [ %indvars.iv.next.i44, %bb.i ] ; 2 uses
  %.01731.i42 = phi ptr [ %i.cb, %.lr.ph.i40 ], [ %i.ci, %bb.i ] ; 3 uses
  %i.ce = icmp ugt ptr %i.cd, %.01731.i42
  br i1 %i.ce, label %bb.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.i:                                             ; preds = %bb.h
  %i.cf = load i16, ptr %.01731.i42, align 2, !tbaa !210
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i41
  %i.ch = sext i16 %i.cf to i32
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !58
  %i.ci = getelementptr inbounds nuw i8, ptr %.01731.i42, i64 2
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i41, 1 ; 2 uses
  %i.cj = load i8, ptr %i.bp, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i45 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.cj)
  %i.ck = zext i8 %.sroa.speculated.i45 to i64
  %.not.not.i46 = icmp samesign ult i64 %indvars.iv.next.i44, %i.ck
  br i1 %.not.not.i46, label %bb.h, label %.critedge.i47, !llvm.loop !468

.critedge.i47:                                    ; preds = %bb.i, %bb.g
  %.lcssa.i48 = phi i8 [ %i.bq, %bb.g ], [ %i.cj, %bb.i ] ; 2 uses
  %i.cl = icmp ult i8 %.lcssa.i48, %2
  br i1 %i.cl, label %.lr.ph36.preheader.i49, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i49:                           ; preds = %.critedge.i47
  %i.cm = zext i8 %2 to i64
  %i.cn = zext i8 %.lcssa.i48 to i64              ; 2 uses
  %i.co = shl nuw nsw i64 %i.cn, 2
  %scevgep.i50 = getelementptr i8, ptr %3, i64 %i.co
  %i.cp = xor i64 %i.cn, -1
  %i.cq = add nsw i64 %i.cp, %i.cm
  %i.cr = shl nsw i64 %i.cq, 2
  %i.cs = and i64 %i.cr, 17179869180
  %i.ct = add nuw nsw i64 %i.cs, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i50, i8 0, i64 %i.ct, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.j:                                             ; preds = %bb.b
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated29.i51 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.cv)
  %.not30.i52 = icmp eq i8 %.sroa.speculated29.i51, 0
  br i1 %.not30.i52, label %.critedge.i60, label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %bb.j
  %i.cw = load i32, ptr %1, align 4, !tbaa !132
  %i.cx = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !170
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !167
  %i.db = zext i32 %i.cw to i64
  %i.dc = mul nsw i64 %i.da, %i.db
  %i.dd = getelementptr i8, ptr %i.cy, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.df = load i64, ptr %i.de, align 8, !tbaa !166
  %i.dg = getelementptr i8, ptr %i.dd, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !208
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i53
  %indvars.iv.i54 = phi i64 [ 0, %.lr.ph.i53 ], [ %indvars.iv.next.i57, %bb.l ] ; 2 uses
  %.01731.i55 = phi ptr [ %i.dg, %.lr.ph.i53 ], [ %i.dn, %bb.l ] ; 3 uses
  %i.dj = icmp ugt ptr %i.di, %.01731.i55
  br i1 %i.dj, label %bb.l, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.l:                                             ; preds = %bb.k
  %i.dk = load i16, ptr %.01731.i55, align 2, !tbaa !210
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i54
  %i.dm = zext i16 %i.dk to i32
  store i32 %i.dm, ptr %i.dl, align 4, !tbaa !58
  %i.dn = getelementptr inbounds nuw i8, ptr %.01731.i55, i64 2
  %indvars.iv.next.i57 = add nuw nsw i64 %indvars.iv.i54, 1 ; 2 uses
  %i.do = load i8, ptr %i.cu, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i58 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.do)
  %i.dp = zext i8 %.sroa.speculated.i58 to i64
  %.not.not.i59 = icmp samesign ult i64 %indvars.iv.next.i57, %i.dp
  br i1 %.not.not.i59, label %bb.k, label %.critedge.i60, !llvm.loop !469

.critedge.i60:                                    ; preds = %bb.l, %bb.j
  %.lcssa.i61 = phi i8 [ %i.cv, %bb.j ], [ %i.do, %bb.l ] ; 2 uses
  %i.dq = icmp ult i8 %.lcssa.i61, %2
  br i1 %i.dq, label %.lr.ph36.preheader.i62, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i62:                           ; preds = %.critedge.i60
  %i.dr = zext i8 %2 to i64
  %i.ds = zext i8 %.lcssa.i61 to i64              ; 2 uses
  %i.dt = shl nuw nsw i64 %i.ds, 2
  %scevgep.i63 = getelementptr i8, ptr %3, i64 %i.dt
  %i.du = xor i64 %i.ds, -1
  %i.dv = add nsw i64 %i.du, %i.dr
  %i.dw = shl nsw i64 %i.dv, 2
  %i.dx = and i64 %i.dw, 17179869180
  %i.dy = add nuw nsw i64 %i.dx, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i63, i8 0, i64 %i.dy, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.m:                                             ; preds = %bb.b
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated29.i64 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ea)
  %.not30.i65 = icmp eq i8 %.sroa.speculated29.i64, 0
  br i1 %.not30.i65, label %.critedge.i73, label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %bb.m
  %i.eb = load i32, ptr %1, align 4, !tbaa !132
  %i.ec = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !170
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !167
  %i.eg = zext i32 %i.eb to i64
  %i.eh = mul nsw i64 %i.ef, %i.eg
  %i.ei = getelementptr i8, ptr %i.ed, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !166
  %i.el = getelementptr i8, ptr %i.ei, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !208
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i66
  %indvars.iv.i67 = phi i64 [ 0, %.lr.ph.i66 ], [ %indvars.iv.next.i70, %bb.o ] ; 2 uses
  %.01731.i68 = phi ptr [ %i.el, %.lr.ph.i66 ], [ %i.er, %bb.o ] ; 3 uses
  %i.eo = icmp ugt ptr %i.en, %.01731.i68
  br i1 %i.eo, label %bb.o, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.o:                                             ; preds = %bb.n
  %i.ep = load i32, ptr %.01731.i68, align 4, !tbaa !58
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i67
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !58
  %i.er = getelementptr inbounds nuw i8, ptr %.01731.i68, i64 4
  %indvars.iv.next.i70 = add nuw nsw i64 %indvars.iv.i67, 1 ; 2 uses
  %i.es = load i8, ptr %i.dz, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i71 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.es)
  %i.et = zext i8 %.sroa.speculated.i71 to i64
  %.not.not.i72 = icmp samesign ult i64 %indvars.iv.next.i70, %i.et
  br i1 %.not.not.i72, label %bb.n, label %.critedge.i73, !llvm.loop !470

.critedge.i73:                                    ; preds = %bb.o, %bb.m
  %.lcssa.i74 = phi i8 [ %i.ea, %bb.m ], [ %i.es, %bb.o ] ; 2 uses
  %i.eu = icmp ult i8 %.lcssa.i74, %2
  br i1 %i.eu, label %.lr.ph36.preheader.i75, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i75:                           ; preds = %.critedge.i73
  %i.ev = zext i8 %2 to i64
  %i.ew = zext i8 %.lcssa.i74 to i64              ; 2 uses
  %i.ex = shl nuw nsw i64 %i.ew, 2
  %scevgep.i76 = getelementptr i8, ptr %3, i64 %i.ex
  %i.ey = xor i64 %i.ew, -1
  %i.ez = add nsw i64 %i.ey, %i.ev
  %i.fa = shl nsw i64 %i.ez, 2
  %i.fb = and i64 %i.fa, 17179869180
  %i.fc = add nuw nsw i64 %i.fb, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i76, i8 0, i64 %i.fc, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.p:                                             ; preds = %bb.b
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated29.i77 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.fe)
  %.not30.i78 = icmp eq i8 %.sroa.speculated29.i77, 0
  br i1 %.not30.i78, label %.critedge.i86, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.p
  %i.ff = load i32, ptr %1, align 4, !tbaa !132
  %i.fg = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !170
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !167
  %i.fk = zext i32 %i.ff to i64
  %i.fl = mul nsw i64 %i.fj, %i.fk
  %i.fm = getelementptr i8, ptr %i.fh, i64 %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !166
  %i.fp = getelementptr i8, ptr %i.fm, i64 %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !208
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.lr.ph.i79
  %indvars.iv.i80 = phi i64 [ 0, %.lr.ph.i79 ], [ %indvars.iv.next.i83, %bb.r ] ; 2 uses
  %.01731.i81 = phi ptr [ %i.fp, %.lr.ph.i79 ], [ %i.fv, %bb.r ] ; 3 uses
  %i.fs = icmp ugt ptr %i.fr, %.01731.i81
  br i1 %i.fs, label %bb.r, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.r:                                             ; preds = %bb.q
  %i.ft = load i32, ptr %.01731.i81, align 4, !tbaa !58
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i80
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !58
  %i.fv = getelementptr inbounds nuw i8, ptr %.01731.i81, i64 4
  %indvars.iv.next.i83 = add nuw nsw i64 %indvars.iv.i80, 1 ; 2 uses
  %i.fw = load i8, ptr %i.fd, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i84 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.fw)
  %i.fx = zext i8 %.sroa.speculated.i84 to i64
  %.not.not.i85 = icmp samesign ult i64 %indvars.iv.next.i83, %i.fx
  br i1 %.not.not.i85, label %bb.q, label %.critedge.i86, !llvm.loop !471

.critedge.i86:                                    ; preds = %bb.r, %bb.p
  %.lcssa.i87 = phi i8 [ %i.fe, %bb.p ], [ %i.fw, %bb.r ] ; 2 uses
  %i.fy = icmp ult i8 %.lcssa.i87, %2
  br i1 %i.fy, label %.lr.ph36.preheader.i88, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i88:                           ; preds = %.critedge.i86
  %i.fz = zext i8 %2 to i64
  %i.ga = zext i8 %.lcssa.i87 to i64              ; 2 uses
  %i.gb = shl nuw nsw i64 %i.ga, 2
  %scevgep.i89 = getelementptr i8, ptr %3, i64 %i.gb
  %i.gc = xor i64 %i.ga, -1
  %i.gd = add nsw i64 %i.gc, %i.fz
  %i.ge = shl nsw i64 %i.gd, 2
  %i.gf = and i64 %i.ge, 17179869180
  %i.gg = add nuw nsw i64 %i.gf, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i89, i8 0, i64 %i.gg, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.s:                                             ; preds = %bb.b
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated31.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.gi)
  %.not32.i = icmp eq i8 %.sroa.speculated31.i, 0
  br i1 %.not32.i, label %.critedge.i95, label %.lr.ph.i90

.lr.ph.i90:                                       ; preds = %bb.s
  %i.gj = load i32, ptr %1, align 4, !tbaa !132
  %i.gk = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !170
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !167
  %i.go = zext i32 %i.gj to i64
  %i.gp = mul nsw i64 %i.gn, %i.go
  %i.gq = getelementptr i8, ptr %i.gl, i64 %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !166
  %i.gt = getelementptr i8, ptr %i.gq, i64 %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !208
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %.lr.ph.i90
  %indvars.iv.i91 = phi i64 [ 0, %.lr.ph.i90 ], [ %indvars.iv.next.i92, %bb.v ] ; 2 uses
  %.01733.i = phi ptr [ %i.gt, %.lr.ph.i90 ], [ %i.ha, %bb.v ] ; 3 uses
  %i.gw = icmp ugt ptr %i.gv, %.01733.i
  br i1 %i.gw, label %bb.u, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.u:                                             ; preds = %bb.t
  %i.gx = load i64, ptr %.01733.i, align 8, !tbaa !91 ; 2 uses
  %or.cond.not.i.i = icmp ult i64 %i.gx, 4294967296
  br i1 %or.cond.not.i.i, label %bb.v, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.v:                                             ; preds = %bb.u
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i91
  %i.gz = trunc nuw i64 %i.gx to i32
  store i32 %i.gz, ptr %i.gy, align 4, !tbaa !58
  %i.ha = getelementptr inbounds nuw i8, ptr %.01733.i, i64 8
  %indvars.iv.next.i92 = add nuw nsw i64 %indvars.iv.i91, 1 ; 2 uses
  %i.hb = load i8, ptr %i.gh, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i93 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.hb)
  %i.hc = zext i8 %.sroa.speculated.i93 to i64
  %.not.not.i94 = icmp samesign ult i64 %indvars.iv.next.i92, %i.hc
  br i1 %.not.not.i94, label %bb.t, label %.critedge.i95, !llvm.loop !472

.critedge.i95:                                    ; preds = %bb.v, %bb.s
  %.lcssa.i96 = phi i8 [ %i.gi, %bb.s ], [ %i.hb, %bb.v ] ; 2 uses
  %i.hd = icmp ult i8 %.lcssa.i96, %2
  br i1 %i.hd, label %.lr.ph38.preheader.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph38.preheader.i:                             ; preds = %.critedge.i95
  %i.he = zext i8 %2 to i64
  %i.hf = zext i8 %.lcssa.i96 to i64              ; 2 uses
  %i.hg = shl nuw nsw i64 %i.hf, 2
  %scevgep.i97 = getelementptr i8, ptr %3, i64 %i.hg
  %i.hh = xor i64 %i.hf, -1
  %i.hi = add nsw i64 %i.hh, %i.he
  %i.hj = shl nsw i64 %i.hi, 2
  %i.hk = and i64 %i.hj, 17179869180
  %i.hl = add nuw nsw i64 %i.hk, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i97, i8 0, i64 %i.hl, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.w:                                             ; preds = %bb.b
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.hn = load i8, ptr %i.hm, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated31.i98 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.hn)
  %.not32.i99 = icmp eq i8 %.sroa.speculated31.i98, 0
  br i1 %.not32.i99, label %.critedge.i107, label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %bb.w
  %i.ho = load i32, ptr %1, align 4, !tbaa !132
  %i.hp = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !170
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !167
  %i.ht = zext i32 %i.ho to i64
  %i.hu = mul nsw i64 %i.hs, %i.ht
  %i.hv = getelementptr i8, ptr %i.hq, i64 %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !166
  %i.hy = getelementptr i8, ptr %i.hv, i64 %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !208
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %.lr.ph.i100
  %indvars.iv.i101 = phi i64 [ 0, %.lr.ph.i100 ], [ %indvars.iv.next.i104, %bb.z ] ; 2 uses
  %.01733.i102 = phi ptr [ %i.hy, %.lr.ph.i100 ], [ %i.ig, %bb.z ] ; 3 uses
  %i.ib = icmp ugt ptr %i.ia, %.01733.i102
  br i1 %i.ib, label %bb.y, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.y:                                             ; preds = %bb.x
  %i.ic = load i64, ptr %.01733.i102, align 8, !tbaa !91 ; 2 uses
  %i.id = icmp ult i64 %i.ic, 4294967296
  br i1 %i.id, label %bb.z, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.z:                                             ; preds = %bb.y
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i101
  %i.if = trunc nuw i64 %i.ic to i32
  store i32 %i.if, ptr %i.ie, align 4, !tbaa !58
  %i.ig = getelementptr inbounds nuw i8, ptr %.01733.i102, i64 8
  %indvars.iv.next.i104 = add nuw nsw i64 %indvars.iv.i101, 1 ; 2 uses
  %i.ih = load i8, ptr %i.hm, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i105 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ih)
  %i.ii = zext i8 %.sroa.speculated.i105 to i64
  %.not.not.i106 = icmp samesign ult i64 %indvars.iv.next.i104, %i.ii
  br i1 %.not.not.i106, label %bb.x, label %.critedge.i107, !llvm.loop !473

.critedge.i107:                                   ; preds = %bb.z, %bb.w
  %.lcssa.i108 = phi i8 [ %i.hn, %bb.w ], [ %i.ih, %bb.z ] ; 2 uses
  %i.ij = icmp ult i8 %.lcssa.i108, %2
  br i1 %i.ij, label %.lr.ph38.preheader.i109, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph38.preheader.i109:                          ; preds = %.critedge.i107
  %i.ik = zext i8 %2 to i64
  %i.il = zext i8 %.lcssa.i108 to i64             ; 2 uses
  %i.im = shl nuw nsw i64 %i.il, 2
  %scevgep.i110 = getelementptr i8, ptr %3, i64 %i.im
  %i.in = xor i64 %i.il, -1
  %i.io = add nsw i64 %i.in, %i.ik
  %i.ip = shl nsw i64 %i.io, 2
  %i.iq = and i64 %i.ip, 17179869180
  %i.ir = add nuw nsw i64 %i.iq, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i110, i8 0, i64 %i.ir, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.aa:                                            ; preds = %bb.b
  %i.is = load i32, ptr %1, align 4, !tbaa !132
  store i32 %i.is, ptr %4, align 4, !tbaa !132
  %i.it = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute17ConvertTypedValueIfjEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %4, i8 noundef zeroext %2, ptr noundef nonnull %3)
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.ab:                                            ; preds = %bb.b
  %i.iu = load i32, ptr %1, align 4, !tbaa !132
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !166
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !167
  %i.iz = zext i32 %i.iu to i64
  %i.ja = mul nsw i64 %i.iy, %i.iz
  %i.jb = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !170
  %i.jd = getelementptr i8, ptr %i.jc, i64 %i.ja
  %i.je = getelementptr i8, ptr %i.jd, i64 %i.iw  ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.jg = load i8, ptr %i.jf, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated32.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.jg)
  %.not33.i = icmp eq i8 %.sroa.speculated32.i, 0
  br i1 %.not33.i, label %.critedge.i117, label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %bb.ab
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !208 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jk = load i8, ptr %i.jj, align 8, !range !164
  %.fr59.i = freeze i8 %i.jk
  %i.jl = trunc i8 %.fr59.i to i1
  %i.jm = icmp ugt ptr %i.ji, %i.je               ; 2 uses
  br i1 %i.jl, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i111
  br i1 %i.jm, label %.lr.ph51.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.ac:                                            ; preds = %bb.ad
  %i.jn = getelementptr inbounds nuw i8, ptr %.01734.us50.i, i64 8 ; 2 uses
  %i.jo = icmp ugt ptr %i.ji, %i.jn
  br i1 %i.jo, label %.lr.ph51.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !474

.lr.ph51.i:                                       ; preds = %.lr.ph.split.us.i, %bb.ac
  %indvars.iv66.i = phi i64 [ %indvars.iv.next67.i, %bb.ac ], [ 0, %.lr.ph.split.us.i ] ; 2 uses
  %.01734.us50.i = phi ptr [ %i.jn, %bb.ac ], [ %i.je, %.lr.ph.split.us.i ] ; 2 uses
  %i.jp = load double, ptr %.01734.us50.i, align 8, !tbaa !213 ; 3 uses
  %or.cond13.i.us.i = tail call i1 @llvm.is.fpclass.f64(double %i.jp, /* (zero psub pnorm) */ i32 480)
  %i.jq = fcmp ule double %i.jp, 1.000000e+00
  %or.cond.not.i = and i1 %or.cond13.i.us.i, %i.jq
  br i1 %or.cond.not.i, label %bb.ad, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.ad:                                            ; preds = %.lr.ph51.i
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv66.i
  %i.js = tail call double @llvm.fmuladd.f64(double %i.jp, double f0x41EFFFFFFFE00000, double 5.000000e-01)
  %i.jt = tail call double @llvm.floor.f64(double %i.js)
  %storemerge.i.us.i = fptoui double %i.jt to i32
  store i32 %storemerge.i.us.i, ptr %i.jr, align 4, !tbaa !58
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %i.ju = load i8, ptr %i.jf, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.us.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ju)
  %i.jv = zext i8 %.sroa.speculated.us.i to i64
  %.not.us.not.i = icmp samesign ult i64 %indvars.iv.next67.i, %i.jv
  br i1 %.not.us.not.i, label %bb.ac, label %.critedge.i117, !llvm.loop !474

.lr.ph.split.i:                                   ; preds = %.lr.ph.i111
  br i1 %i.jm, label %.lr.ph44.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.ae:                                            ; preds = %bb.af
  %i.jw = getelementptr inbounds nuw i8, ptr %.0173443.i, i64 8 ; 2 uses
  %i.jx = icmp ugt ptr %i.ji, %i.jw
  br i1 %i.jx, label %.lr.ph44.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !474

.lr.ph44.i:                                       ; preds = %.lr.ph.split.i, %bb.ae
  %indvars.iv.i113 = phi i64 [ %indvars.iv.next.i114, %bb.ae ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %.0173443.i = phi ptr [ %i.jw, %bb.ae ], [ %i.je, %.lr.ph.split.i ] ; 2 uses
  %i.jy = load double, ptr %.0173443.i, align 8, !tbaa !213 ; 3 uses
  %or.cond13.i.i = tail call i1 @llvm.is.fpclass.f64(double %i.jy, /* (zero psub pnorm) */ i32 480)
  %i.jz = fcmp ult double %i.jy, f0x41EFFFFFFFE00000
  %or.cond14.i.i = and i1 %or.cond13.i.i, %i.jz
  br i1 %or.cond14.i.i, label %bb.af, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.af:                                            ; preds = %.lr.ph44.i
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i113
  %storemerge.i.i = fptoui double %i.jy to i32
  store i32 %storemerge.i.i, ptr %i.ka, align 4, !tbaa !58
  %indvars.iv.next.i114 = add nuw nsw i64 %indvars.iv.i113, 1 ; 2 uses
  %i.kb = load i8, ptr %i.jf, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i115 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.kb)
  %i.kc = zext i8 %.sroa.speculated.i115 to i64
  %.not.not.i116 = icmp samesign ult i64 %indvars.iv.next.i114, %i.kc
  br i1 %.not.not.i116, label %bb.ae, label %.critedge.i117, !llvm.loop !474

.critedge.i117:                                   ; preds = %bb.af, %bb.ad, %bb.ab
  %.lcssa.i118 = phi i8 [ %i.jg, %bb.ab ], [ %i.ju, %bb.ad ], [ %i.kb, %bb.af ] ; 2 uses
  %i.kd = icmp ult i8 %.lcssa.i118, %2
  br i1 %i.kd, label %.lr.ph58.preheader.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph58.preheader.i:                             ; preds = %.critedge.i117
  %i.ke = zext i8 %2 to i64
  %i.kf = zext i8 %.lcssa.i118 to i64             ; 2 uses
  %i.kg = shl nuw nsw i64 %i.kf, 2
  %scevgep.i119 = getelementptr i8, ptr %3, i64 %i.kg
  %i.kh = xor i64 %i.kf, -1
  %i.ki = add nsw i64 %i.kh, %i.ke
  %i.kj = shl nsw i64 %i.ki, 2
  %i.kk = and i64 %i.kj, 17179869180
  %i.kl = add nuw nsw i64 %i.kk, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i119, i8 0, i64 %i.kl, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.ag:                                            ; preds = %bb.b
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.kn = load i8, ptr %i.km, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated29.i120 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.kn)
  %.not30.i121 = icmp eq i8 %.sroa.speculated29.i120, 0
  br i1 %.not30.i121, label %.critedge.i129, label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %bb.ag
  %i.ko = load i32, ptr %1, align 4, !tbaa !132
  %i.kp = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !170
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !167
  %i.kt = zext i32 %i.ko to i64
  %i.ku = mul nsw i64 %i.ks, %i.kt
  %i.kv = getelementptr i8, ptr %i.kq, i64 %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !166
  %i.ky = getelementptr i8, ptr %i.kv, i64 %i.kx  ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !208 ; 2 uses
  %i.lb = icmp ugt ptr %i.la, %i.ky
  br i1 %i.lb, label %.lr.ph, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.ah:                                            ; preds = %.lr.ph
  %i.lc = getelementptr inbounds nuw i8, ptr %.01731.i124239, i64 1 ; 2 uses
  %i.ld = icmp ugt ptr %i.la, %i.lc
  br i1 %i.ld, label %.lr.ph, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !475

.lr.ph:                                           ; preds = %.lr.ph.i122, %bb.ah
  %.01731.i124239 = phi ptr [ %i.lc, %bb.ah ], [ %i.ky, %.lr.ph.i122 ] ; 2 uses
  %indvars.iv.i123238 = phi i64 [ %indvars.iv.next.i126, %bb.ah ], [ 0, %.lr.ph.i122 ] ; 2 uses
  %i.le = load i8, ptr %.01731.i124239, align 1, !tbaa !211, !range !164, !noundef !165
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i123238
  %i.lg = zext nneg i8 %i.le to i32
  store i32 %i.lg, ptr %i.lf, align 4, !tbaa !58
  %indvars.iv.next.i126 = add nuw nsw i64 %indvars.iv.i123238, 1 ; 2 uses
  %i.lh = load i8, ptr %i.km, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i127 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.lh)
  %i.li = zext i8 %.sroa.speculated.i127 to i64
  %.not.not.i128 = icmp samesign ult i64 %indvars.iv.next.i126, %i.li
  br i1 %.not.not.i128, label %bb.ah, label %.critedge.i129, !llvm.loop !475

.critedge.i129:                                   ; preds = %.lr.ph, %bb.ag
  %.lcssa.i130 = phi i8 [ %i.kn, %bb.ag ], [ %i.lh, %.lr.ph ] ; 2 uses
  %i.lj = icmp ult i8 %.lcssa.i130, %2
  br i1 %i.lj, label %.lr.ph36.preheader.i131, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i131:                          ; preds = %.critedge.i129
  %i.lk = zext i8 %2 to i64
  %i.ll = zext i8 %.lcssa.i130 to i64             ; 2 uses
  %i.lm = shl nuw nsw i64 %i.ll, 2
  %scevgep.i132 = getelementptr i8, ptr %3, i64 %i.lm
  %i.ln = xor i64 %i.ll, -1
  %i.lo = add nsw i64 %i.ln, %i.lk
  %i.lp = shl nsw i64 %i.lo, 2
  %i.lq = and i64 %i.lp, 17179869180
  %i.lr = add nuw nsw i64 %i.lq, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i132, i8 0, i64 %i.lr, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit: ; preds = %bb.ah, %.lr.ph44.i, %bb.ae, %.lr.ph51.i, %bb.ac, %bb.y, %bb.x, %bb.u, %bb.t, %bb.q, %bb.n, %bb.k, %bb.h, %bb.f, %bb.d, %.lr.ph.i122, %.lr.ph.i27, %.lr.ph.i, %.lr.ph36.preheader.i131, %.critedge.i129, %.lr.ph58.preheader.i, %.critedge.i117, %.lr.ph.split.i, %.lr.ph.split.us.i, %.lr.ph38.preheader.i109, %.critedge.i107, %.lr.ph38.preheader.i, %.critedge.i95, %.lr.ph36.preheader.i88, %.critedge.i86, %.lr.ph36.preheader.i75, %.critedge.i73, %.lr.ph36.preheader.i62, %.critedge.i60, %.lr.ph36.preheader.i49, %.critedge.i47, %.lr.ph36.preheader.i36, %.critedge.i34, %.lr.ph36.preheader.i, %.critedge.i, %bb.b, %bb.a, %bb.aa
  %.0 = phi i1 [ false, %.lr.ph.i ], [ false, %bb.a ], [ false, %bb.b ], [ false, %.lr.ph.i27 ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.d ], [ false, %bb.k ], [ false, %bb.q ], [ true, %.lr.ph36.preheader.i131 ], [ %i.it, %bb.aa ], [ true, %.critedge.i129 ], [ true, %.critedge.i ], [ true, %.lr.ph36.preheader.i ], [ true, %.critedge.i34 ], [ true, %.lr.ph36.preheader.i36 ], [ true, %.critedge.i47 ], [ true, %.lr.ph36.preheader.i49 ], [ true, %.critedge.i60 ], [ true, %.lr.ph36.preheader.i62 ], [ true, %.critedge.i73 ], [ true, %.lr.ph36.preheader.i75 ], [ true, %.critedge.i86 ], [ true, %.lr.ph36.preheader.i88 ], [ true, %.critedge.i95 ], [ true, %.lr.ph38.preheader.i ], [ false, %bb.u ], [ true, %.critedge.i107 ], [ true, %.lr.ph38.preheader.i109 ], [ false, %bb.y ], [ true, %.critedge.i117 ], [ true, %.lr.ph58.preheader.i ], [ false, %.lr.ph.split.i ], [ false, %.lr.ph.split.us.i ], [ false, %.lr.ph51.i ], [ false, %.lr.ph.i122 ], [ false, %.lr.ph44.i ], [ false, %bb.n ], [ false, %bb.t ], [ false, %bb.x ], [ false, %bb.ac ], [ false, %bb.ae ], [ false, %bb.ah ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5draco17GeometryAttribute17ConvertTypedValueIfjEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8, !tbaa !166
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !167
  %i.f = zext i32 %i.a to i64
  %i.g = mul nsw i64 %i.e, %i.f
  %i.h = load ptr, ptr %0, align 8, !tbaa !168    ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !170
  %i.j = getelementptr i8, ptr %i.i, i64 %i.g
  %i.k = getelementptr i8, ptr %i.j, i64 %i.c     ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !94    ; 2 uses
  %.sroa.speculated32 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.m)
  %.not33 = icmp eq i8 %.sroa.speculated32, 0
  br i1 %.not33, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !208  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i8, ptr %i.p, align 8, !range !164
  %.fr59 = freeze i8 %i.q
  %i.r = trunc i8 %.fr59 to i1
  %i.s = icmp ugt ptr %i.o, %i.k                  ; 2 uses
  br i1 %i.r, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.s, label %.lr.ph51, label %.loopexit

bb.b:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.01734.us50, i64 4 ; 2 uses
  %i.u = icmp ugt ptr %i.o, %i.t
  br i1 %i.u, label %.lr.ph51, label %.loopexit, !llvm.loop !476

.lr.ph51:                                         ; preds = %.lr.ph.split.us, %bb.b
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %bb.b ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.01734.us50 = phi ptr [ %i.t, %bb.b ], [ %i.k, %.lr.ph.split.us ] ; 2 uses
  %i.v = load float, ptr %.01734.us50, align 4, !tbaa !96 ; 3 uses
  %or.cond13.i.us = tail call i1 @llvm.is.fpclass.f32(float %i.v, /* (zero psub pnorm) */ i32 480)
  %i.w = fcmp ule float %i.v, 1.000000e+00
  %or.cond.not = and i1 %or.cond13.i.us, %i.w
  br i1 %or.cond.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph51
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv66
  %i.y = fpext float %i.v to double
  %i.z = tail call double @llvm.fmuladd.f64(double %i.y, double f0x41EFFFFFFFE00000, double 5.000000e-01)
  %i.aa = tail call double @llvm.floor.f64(double %i.z)
  %i.ab = fptoui double %i.aa to i32
  store i32 %i.ab, ptr %i.x, align 4, !tbaa !58
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %i.ac = load i8, ptr %i.l, align 8, !tbaa !94   ; 2 uses
  %.sroa.speculated.us = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ac)
  %i.ad = zext i8 %.sroa.speculated.us to i64
  %.not.us.not = icmp samesign ult i64 %indvars.iv.next67, %i.ad
  br i1 %.not.us.not, label %bb.b, label %.critedge, !llvm.loop !476

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.s, label %.lr.ph44, label %.loopexit

bb.d:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.0173443, i64 4 ; 2 uses
  %i.af = icmp ugt ptr %i.o, %i.ae
  br i1 %i.af, label %.lr.ph44, label %.loopexit, !llvm.loop !476

.lr.ph44:                                         ; preds = %.lr.ph.split, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.lr.ph.split ] ; 2 uses
  %.0173443 = phi ptr [ %i.ae, %bb.d ], [ %i.k, %.lr.ph.split ] ; 2 uses
  %i.ag = load float, ptr %.0173443, align 4, !tbaa !96 ; 3 uses
  %or.cond13.i = tail call i1 @llvm.is.fpclass.f32(float %i.ag, /* (zero psub pnorm) */ i32 480)
  %i.ah = fcmp ult float %i.ag, f0x4F800000
  %or.cond14.i = and i1 %or.cond13.i, %i.ah
  br i1 %or.cond14.i, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.lr.ph44
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.aj = fptoui float %i.ag to i32
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = load i8, ptr %i.l, align 8, !tbaa !94   ; 2 uses
  %.sroa.speculated = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ak)
  %i.al = zext i8 %.sroa.speculated to i64
  %.not.not = icmp samesign ult i64 %indvars.iv.next, %i.al
  br i1 %.not.not, label %bb.d, label %.critedge, !llvm.loop !476

.critedge:                                        ; preds = %bb.e, %bb.c, %bb.a
  %.lcssa = phi i8 [ %i.m, %bb.a ], [ %i.ac, %bb.c ], [ %i.ak, %bb.e ] ; 3 uses
  %i.am = icmp ult i8 %.lcssa, %2
  br i1 %i.am, label %.lr.ph58.preheader, label %.loopexit

.lr.ph58.preheader:                               ; preds = %.critedge
  %i.an = zext i8 %2 to i64
  %i.ao = zext i8 %.lcssa to i64
  %i.ap = zext i8 %.lcssa to i64
  %i.aq = shl nuw nsw i64 %i.ap, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.aq
  %i.ar = xor i64 %i.ao, -1
  %i.as = add nsw i64 %i.ar, %i.an
  %i.at = shl nsw i64 %i.as, 2
  %i.au = and i64 %i.at, 17179869180
  %i.av = add nuw nsw i64 %i.au, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.av, i1 false), !tbaa !58
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.lr.ph44, %bb.b, %.lr.ph51, %.lr.ph58.preheader, %.lr.ph.split.us, %.lr.ph.split, %.critedge
  %.not30 = phi i1 [ true, %.critedge ], [ true, %.lr.ph58.preheader ], [ false, %.lr.ph.split ], [ false, %.lr.ph.split.us ], [ false, %bb.b ], [ false, %.lr.ph51 ], [ false, %.lr.ph44 ], [ false, %bb.d ]
  ret i1 %.not30
}

declare void @_ZN5draco16DirectBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNSt5arrayIN5draco14RAnsBitEncoderELm32EEC2Ev(ptr noundef nonnull align 8 dereferenceable(1792) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.1)
          to label %bb.b unwind label %.preheader.preheader

bb.b:                                             ; preds = %bb.a
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.2)
          to label %bb.c unwind label %.preheader.preheader

bb.c:                                             ; preds = %bb.b
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.3)
          to label %bb.d unwind label %.preheader.preheader

bb.d:                                             ; preds = %bb.c
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.4)
          to label %bb.e unwind label %.preheader.preheader

bb.e:                                             ; preds = %bb.d
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.5)
          to label %bb.f unwind label %.preheader.preheader

bb.f:                                             ; preds = %bb.e
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.6)
          to label %bb.g unwind label %.preheader.preheader

bb.g:                                             ; preds = %bb.f
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.7)
          to label %bb.h unwind label %.preheader.preheader

bb.h:                                             ; preds = %bb.g
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.8)
          to label %bb.i unwind label %.preheader.preheader

bb.i:                                             ; preds = %bb.h
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.9)
          to label %bb.j unwind label %.preheader.preheader

bb.j:                                             ; preds = %bb.i
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.10)
          to label %bb.k unwind label %.preheader.preheader

bb.k:                                             ; preds = %bb.j
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.11)
          to label %bb.l unwind label %.preheader.preheader

bb.l:                                             ; preds = %bb.k
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.12)
          to label %bb.m unwind label %.preheader.preheader

bb.m:                                             ; preds = %bb.l
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
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
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.b) #19
  %i.c = icmp eq ptr %i.b, %0
  br i1 %i.c, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader
  resume { ptr, i32 } %lpad.thr_comm
}

declare void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIjSaIjEEmS2_ET_S4_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not16 = icmp eq i64 %1, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !160
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.b = phi ptr [ %.pre, %.lr.ph ], [ %i.m, %bb.g ] ; 2 uses
  %.018 = phi ptr [ %0, %.lr.ph ], [ %i.w, %bb.g ] ; 6 uses
  %.01117 = phi i64 [ %1, %.lr.ph ], [ %i.v, %bb.g ]
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !162  ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.018, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not.i.i.i.i.i, label %.noexc12, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, !prof !101

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #21
          to label %.noexc12 unwind label %.loopexit

.noexc12:                                         ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, %bb.b
  %i.i = phi ptr [ null, %bb.b ], [ %i.h, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %.018, align 8, !tbaa !160
  %i.j = getelementptr inbounds nuw i8, ptr %.018, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !162
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.018, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !161
  %i.m = load ptr, ptr %2, align 8, !tbaa !478    ; 4 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !478
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 4
  br i1 %i.r, label %bb.d, label %bb.e, !prof !104

bb.d:                                             ; preds = %.noexc12
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.m, i64 %i.q, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %.noexc12
  %i.s = icmp eq i64 %i.q, 4
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.m, align 4, !tbaa !58
  store i32 %i.t, ptr %i.i, align 4, !tbaa !58
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !162
  %i.v = add i64 %.01117, -1                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.018, i64 24 ; 2 uses
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !477

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
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #19 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt6vectorIjSaIjEEEvT_S4_(ptr noundef %0, ptr noundef nonnull %.018)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_rethrow() #22
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
  tail call void @__clang_call_terminate(ptr %i.ab) #23
  unreachable

bb.m:                                             ; preds = %bb.i
  unreachable
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

declare void @_ZN5draco16DirectBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodeInternalINS_12PointDVectorIjE20PointDVectorIteratorEEEvT_S6_(ptr noundef nonnull align 8 dereferenceable(2080) %0, ptr noundef byval(%"class.draco::PointDVector<unsigned int>::PointDVectorIterator") align 8 %1, ptr noundef byval(%"class.draco::PointDVector<unsigned int>::PointDVectorIterator") align 8 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<6>::EncodingStatus", align 8 ; 11 uses
  %4 = alloca %"class.std::stack", align 8        ; 19 uses
  %5 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<6>::EncodingStatus", align 8 ; 14 uses
  %6 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<6>::EncodingStatus", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !214  ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = shl nuw nsw i64 %i.c, 2                  ; 3 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #21 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.e, i8 0, i64 %i.d, i1 false), !tbaa !58
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit:            ; preds = %.noexc, %bb.a
  %.sroa.11161.0 = phi ptr [ null, %bb.a ], [ %i.f, %.noexc ]
  %.sroa.0158.0 = phi ptr [ null, %bb.a ], [ %i.e, %.noexc ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.a ], [ %i.g, %.noexc ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2032 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !190  ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !160  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !161
  store ptr %.sroa.0158.0, ptr %i.i, align 8, !tbaa !160
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.k, align 8, !tbaa !162
  store ptr %.sroa.11161.0, ptr %i.l, align 8, !tbaa !161
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.p) #20
  %.pre = load i32, ptr %i.a, align 8, !tbaa !214
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.b, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.q = phi i32 [ %.pre, %bb.b ], [ %i.b, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit ] ; 2 uses
  %.not.i.i.i.i88 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i88, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit95, label %.noexc94

.noexc94:                                         ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 2                  ; 3 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #21 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 0, i64 %i.s, i1 false), !tbaa !58
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit95

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit95:          ; preds = %.noexc94, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.sroa.11154.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.u, %.noexc94 ]
  %.sroa.0151.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.t, %.noexc94 ]
  %.0.i.i.i.i.i.i.i92 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.v, %.noexc94 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !190  ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !160  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !161
  store ptr %.sroa.0151.0, ptr %i.x, align 8, !tbaa !160
  store ptr %.0.i.i.i.i.i.i.i92, ptr %i.z, align 8, !tbaa !162
  store ptr %.sroa.11154.0, ptr %i.aa, align 8, !tbaa !161
  %.not.i.i.i.i.i96 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i96, label %_ZNSt6vectorIjSaIjEED2Ev.exit99, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit95
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.y to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ae) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit99

_ZNSt6vectorIjSaIjEED2Ev.exit99:                  ; preds = %bb.c, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit95
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 0, ptr %i.ag, align 8, !tbaa !506
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.ah, align 8, !tbaa !507
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !173
  %i.aj = load i64, ptr %3, align 8, !tbaa !173
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = trunc i64 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 %i.al, ptr %i.am, align 4, !tbaa !508
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %4, i64 noundef 0)
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 12 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !220 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !509
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -64
  %.not.i.i = icmp eq ptr %i.ao, %i.ar
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !222
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !220
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64 ; 2 uses
  store ptr %i.at, ptr %i.an, align 8, !tbaa !220
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit99
  invoke void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE16_M_push_back_auxIJRKS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(60) %3)
          to label %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit_crit_edge unwind label %bb.j

._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit_crit_edge: ; preds = %bb.e
  %.pre251 = load ptr, ptr %i.an, align 8, !tbaa !223
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit: ; preds = %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit_crit_edge, %bb.d
  %i.au = phi ptr [ %.pre251, %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit_crit_edge ], [ %i.at, %bb.d ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !223
  %i.ax = icmp eq ptr %i.au, %i.aw
  br i1 %i.ax, label %._crit_edge221, label %.lr.ph220

.lr.ph220:                                        ; preds = %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %.sroa.2168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.3169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.3177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.2176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1928
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.4180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.5181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.6182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 52
  %.sroa.4184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.5185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.6186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 52
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 2008 ; 2 uses
  %i.bl = load ptr, ptr %.sroa.2168.0..sroa_idx, align 8 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 40 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1864
  %.sroa.3169.0.copyload = load i32, ptr %.sroa.3169.0..sroa_idx, align 8
  %.sroa.4170.0.copyload = load i32, ptr %.sroa.4170.0..sroa_idx, align 4 ; 2 uses
  %.fr.i.i = freeze i32 %.sroa.3169.0.copyload    ; 5 uses
  %.sroa.3177.0.copyload = load i32, ptr %.sroa.3177.0..sroa_idx, align 8
  %.sroa.2176.0.copyload = load ptr, ptr %.sroa.2176.0..sroa_idx, align 8
  %i.bp = zext i32 %.fr.i.i to i64                ; 10 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.2176.0.copyload, i64 40 ; 2 uses
  %i.br = zext i32 %.sroa.3177.0.copyload to i64  ; 4 uses
  %.not.i.i.i.i.i102 = icmp eq i32 %.fr.i.i, 0
  %i.bs = shl nuw nsw i64 %i.bp, 2
  %i.bt = shl nuw nsw i64 %i.bp, 2
  %i.bu = shl nuw nsw i64 %i.br, 2
  %i.bv = mul nsw i64 %i.br, -4
  %min.iters.check = icmp ult i32 %.fr.i.i, 16
  %n.vec = and i64 %i.bp, 4294967288              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bp
  %xtraiter = and i64 %i.bp, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bw = add nsw i64 %i.bp, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph220, %.loopexit
  %i.bx = phi ptr [ %i.au, %.lr.ph220 ], [ %i.jg, %.loopexit ] ; 6 uses
  %i.by = load ptr, ptr %i.ay, align 8, !tbaa !224, !noalias !510 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ca = getelementptr inbounds i8, ptr %i.bx, i64 -64
  %.sroa.0142.0.copyload = load i64, ptr %i.ca, align 8, !tbaa !91
  %.sroa.5144.0..sroa_idx = getelementptr inbounds i8, ptr %i.bx, i64 -40
  %.sroa.5144.0.copyload = load i64, ptr %.sroa.5144.0..sroa_idx, align 8, !tbaa !91
  %.sroa.6146.0..sroa_idx = getelementptr inbounds i8, ptr %i.bx, i64 -16
  %.sroa.6146.0.copyload = load i32, ptr %.sroa.6146.0..sroa_idx, align 8, !tbaa !58
  %.sroa.7148.0..sroa_idx = getelementptr inbounds i8, ptr %i.bx, i64 -8
  %.sroa.7148.0.copyload = load i32, ptr %.sroa.7148.0..sroa_idx, align 8, !tbaa !58
  %i.cb = getelementptr inbounds i8, ptr %i.bx, i64 -64
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE3popEv.exit

bb.h:                                             ; preds = %bb.f
  %i.cc = load ptr, ptr %i.az, align 8, !tbaa !225, !noalias !510
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !226 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 448
  %.sroa.0142.0.copyload287 = load i64, ptr %i.cf, align 8, !tbaa !91
  %.sroa.5144.0..sroa_idx288 = getelementptr inbounds nuw i8, ptr %i.ce, i64 472
  %.sroa.5144.0.copyload289 = load i64, ptr %.sroa.5144.0..sroa_idx288, align 8, !tbaa !91
  %.sroa.6146.0..sroa_idx290 = getelementptr inbounds nuw i8, ptr %i.ce, i64 496
  %.sroa.6146.0.copyload291 = load i32, ptr %.sroa.6146.0..sroa_idx290, align 8, !tbaa !58
  %.sroa.7148.0..sroa_idx292 = getelementptr inbounds nuw i8, ptr %i.ce, i64 504
  %.sroa.7148.0.copyload293 = load i32, ptr %.sroa.7148.0..sroa_idx292, align 8, !tbaa !58
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef 512) #20
  %i.cg = load ptr, ptr %i.az, align 8, !tbaa !227
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -8 ; 2 uses
  store ptr %i.ch, ptr %i.az, align 8, !tbaa !225
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !226 ; 3 uses
  store ptr %i.ci, ptr %i.ay, align 8, !tbaa !224
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 512
  store ptr %i.cj, ptr %i.ap, align 8, !tbaa !228
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 448
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE3popEv.exit

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE3popEv.exit: ; preds = %bb.g, %bb.h
  %.sroa.7148.0.copyload300 = phi i32 [ %.sroa.7148.0.copyload, %bb.g ], [ %.sroa.7148.0.copyload293, %bb.h ] ; 3 uses
  %.sroa.6146.0.copyload298 = phi i32 [ %.sroa.6146.0.copyload, %bb.g ], [ %.sroa.6146.0.copyload291, %bb.h ]
  %.sroa.5144.0.copyload296 = phi i64 [ %.sroa.5144.0.copyload, %bb.g ], [ %.sroa.5144.0.copyload289, %bb.h ] ; 7 uses
  %.sroa.0142.0.copyload294 = phi i64 [ %.sroa.0142.0.copyload, %bb.g ], [ %.sroa.0142.0.copyload287, %bb.h ] ; 9 uses
  %storemerge.i.i = phi ptr [ %i.cb, %bb.g ], [ %i.ck, %bb.h ]
  store ptr %storemerge.i.i, ptr %i.an, align 8, !tbaa !220
  store i64 %.sroa.0142.0.copyload294, ptr %1, align 8, !tbaa !173
  store i64 %.sroa.5144.0.copyload296, ptr %2, align 8, !tbaa !173
  %i.cl = zext i32 %.sroa.7148.0.copyload300 to i64 ; 3 uses
  %i.cm = load ptr, ptr %i.h, align 8, !tbaa !190
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.cl ; 2 uses
  %i.co = load ptr, ptr %i.w, align 8, !tbaa !190
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %i.cl ; 3 uses
  %i.cq = invoke noundef i32 @_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE16GetAndEncodeAxisINS_12PointDVectorIjE20PointDVectorIteratorEEEjT_S6_RKSt6vectorIjSaIjEESB_j(ptr noundef nonnull align 8 dereferenceable(2080) %0, ptr noundef nonnull byval(%"class.draco::PointDVector<unsigned int>::PointDVectorIterator") align 8 %1, ptr noundef nonnull byval(%"class.draco::PointDVector<unsigned int>::PointDVectorIterator") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i32 noundef %.sroa.6146.0.copyload298)
          to label %bb.i unwind label %bb.k       ; 5 uses

bb.i:                                             ; preds = %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE3popEv.exit
  %i.cr = zext i32 %i.cq to i64                   ; 7 uses
  %i.cs = load ptr, ptr %i.cp, align 8, !tbaa !160
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cr
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !58 ; 2 uses
  %i.cv = sub i64 %.sroa.5144.0.copyload296, %.sroa.0142.0.copyload294 ; 2 uses
  %i.cw = trunc i64 %i.cv to i32                  ; 4 uses
  %i.cx = load i32, ptr %0, align 8, !tbaa !189   ; 2 uses
  %i.cy = icmp eq i32 %i.cx, %i.cu
  br i1 %i.cy, label %.loopexit, label %bb.l, !llvm.loop !481

bb.j:                                             ; preds = %bb.e
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.k:                                             ; preds = %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE3popEv.exit
end_hunk_4
begin_hunk_5_@_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE17_M_reallocate_mapEmb:bb.a
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !226
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !226
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !104

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !226
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !226
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE15_M_allocate_mapEm.exit, !prof !101

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #21 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.m, label %bb.n, !prof !104

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.o, label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !226
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !226
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24

_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24: ; preds = %bb.m, %bb.n, %bb.o
  %i.bc = load ptr, ptr %0, align 8, !tbaa !229
  %i.bd = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bd) #20
  store ptr %i.aq, ptr %0, align 8, !tbaa !229
  store i64 %i.am, ptr %i.k, align 8, !tbaa !231
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !225
  %i.be = load ptr, ptr %.0, align 8, !tbaa !226  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !224
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 512
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !228
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !225
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !226 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !224
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 512
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !228
  ret void
}

declare void @_ZN5draco14RAnsBitEncoder9EncodeBitEb(ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE16_M_push_back_auxIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(60) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !225  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !225
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.j to i64
  %i.k = shl nsw i64 %.neg.i.i, 3
  %i.l = add i64 %i.i, %i.k
  %i.m = and i64 %i.l, -8
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !223
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !224
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 6
  %i.u = add nsw i64 %i.t, %i.m
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !228
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !223
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 6
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 144115188075855871
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !231
  %i.ag = load ptr, ptr %0, align 8, !tbaa !229
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi6EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #21
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !227
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !226
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !220
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !222
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !227
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !225
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !226 ; 3 uses
  store ptr %i.as, ptr %i.o, align 8, !tbaa !224
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 512
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !228
  store ptr %i.as, ptr %i.a, align 8, !tbaa !220
  ret void
}

declare void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodeInternalINS_12PointDVectorIjE20PointDVectorIteratorEEEvT_S6_(ptr noundef nonnull align 8 dereferenceable(2080) %0, ptr noundef byval(%"class.draco::PointDVector<unsigned int>::PointDVectorIterator") align 8 %1, ptr noundef byval(%"class.draco::PointDVector<unsigned int>::PointDVectorIterator") align 8 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<5>::EncodingStatus", align 8 ; 11 uses
  %4 = alloca %"class.std::stack.132", align 8    ; 19 uses
  %5 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<5>::EncodingStatus", align 8 ; 14 uses
  %6 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<5>::EncodingStatus", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !195  ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = shl nuw nsw i64 %i.c, 2                  ; 3 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #21 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.e, i8 0, i64 %i.d, i1 false), !tbaa !58
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit:            ; preds = %.noexc, %bb.a
  %.sroa.11159.0 = phi ptr [ null, %bb.a ], [ %i.f, %.noexc ]
  %.sroa.0156.0 = phi ptr [ null, %bb.a ], [ %i.e, %.noexc ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.a ], [ %i.g, %.noexc ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2032 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !190  ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !160  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !161
  store ptr %.sroa.0156.0, ptr %i.i, align 8, !tbaa !160
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.k, align 8, !tbaa !162
  store ptr %.sroa.11159.0, ptr %i.l, align 8, !tbaa !161
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.p) #20
  %.pre = load i32, ptr %i.a, align 8, !tbaa !195
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.b, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.q = phi i32 [ %.pre, %bb.b ], [ %i.b, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit ] ; 2 uses
  %.not.i.i.i.i86 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i86, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit93, label %.noexc92

.noexc92:                                         ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 2                  ; 3 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #21 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 0, i64 %i.s, i1 false), !tbaa !58
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit93

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit93:          ; preds = %.noexc92, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.sroa.11152.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.u, %.noexc92 ]
  %.sroa.0149.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.t, %.noexc92 ]
  %.0.i.i.i.i.i.i.i90 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.v, %.noexc92 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !190  ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !160  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !161
  store ptr %.sroa.0149.0, ptr %i.x, align 8, !tbaa !160
  store ptr %.0.i.i.i.i.i.i.i90, ptr %i.z, align 8, !tbaa !162
  store ptr %.sroa.11152.0, ptr %i.aa, align 8, !tbaa !161
  %.not.i.i.i.i.i94 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i94, label %_ZNSt6vectorIjSaIjEED2Ev.exit97, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit93
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.y to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ae) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit97

_ZNSt6vectorIjSaIjEED2Ev.exit97:                  ; preds = %bb.c, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit93
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 0, ptr %i.ag, align 8, !tbaa !562
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.ah, align 8, !tbaa !563
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !173
  %i.aj = load i64, ptr %3, align 8, !tbaa !173
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = trunc i64 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 %i.al, ptr %i.am, align 4, !tbaa !564
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %4, i64 noundef 0)
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 12 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !238 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !565
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -64
  %.not.i.i = icmp eq ptr %i.ao, %i.ar
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !222
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !238
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64 ; 2 uses
  store ptr %i.at, ptr %i.an, align 8, !tbaa !238
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit97
  invoke void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE16_M_push_back_auxIJRKS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(60) %3)
          to label %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit_crit_edge unwind label %bb.i

._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit_crit_edge: ; preds = %bb.e
  %.pre249 = load ptr, ptr %i.an, align 8, !tbaa !239
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit: ; preds = %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit_crit_edge, %bb.d
  %i.au = phi ptr [ %.pre249, %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit_crit_edge ], [ %i.at, %bb.d ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !239
  %i.ax = icmp eq ptr %i.au, %i.aw
  br i1 %i.ax, label %._crit_edge219, label %.lr.ph218

.lr.ph218:                                        ; preds = %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %.sroa.2166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2166.0.copyload = load ptr, ptr %.sroa.2166.0..sroa_idx, align 8 ; 4 uses
  %.sroa.3167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3167.0.copyload = load i32, ptr %.sroa.3167.0..sroa_idx, align 8
  %.sroa.4168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.4168.0.copyload = load i32, ptr %.sroa.4168.0..sroa_idx, align 4 ; 2 uses
  %.fr.i.i = freeze i32 %.sroa.3167.0.copyload    ; 5 uses
  %.sroa.3175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.3175.0.copyload = load i32, ptr %.sroa.3175.0..sroa_idx, align 8
  %.sroa.2174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2174.0.copyload = load ptr, ptr %.sroa.2174.0..sroa_idx, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.2166.0.copyload, i64 40 ; 2 uses
  %i.bb = zext i32 %.fr.i.i to i64                ; 10 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.2174.0.copyload, i64 40 ; 2 uses
  %i.bd = zext i32 %.sroa.3175.0.copyload to i64  ; 4 uses
  %.not.i.i.i.i.i100 = icmp eq i32 %.fr.i.i, 0
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1928
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.4178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.5179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.6180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 52
  %.sroa.4182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.5183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.6184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 52
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2008 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.2166.0.copyload, i64 4
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1864
  %i.br = shl nuw nsw i64 %i.bb, 2
  %i.bs = shl nuw nsw i64 %i.bb, 2
  %i.bt = shl nuw nsw i64 %i.bd, 2
  %i.bu = mul nsw i64 %i.bd, -4
  %min.iters.check = icmp ult i32 %.fr.i.i, 16
  %n.vec = and i64 %i.bb, 4294967288              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bb
  %xtraiter = and i64 %i.bb, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bv = add nsw i64 %i.bb, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph218, %.loopexit
  %i.bw = phi ptr [ %i.au, %.lr.ph218 ], [ %i.jh, %.loopexit ] ; 6 uses
  %i.bx = load ptr, ptr %i.ay, align 8, !tbaa !240, !noalias !566 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bz = getelementptr inbounds i8, ptr %i.bw, i64 -64
  %.sroa.0140.0.copyload = load i64, ptr %i.bz, align 8, !tbaa !91
  %.sroa.5142.0..sroa_idx = getelementptr inbounds i8, ptr %i.bw, i64 -40
  %.sroa.5142.0.copyload = load i64, ptr %.sroa.5142.0..sroa_idx, align 8, !tbaa !91
  %.sroa.6144.0..sroa_idx = getelementptr inbounds i8, ptr %i.bw, i64 -16
  %.sroa.6144.0.copyload = load i32, ptr %.sroa.6144.0..sroa_idx, align 8, !tbaa !58
  %.sroa.7146.0..sroa_idx = getelementptr inbounds i8, ptr %i.bw, i64 -8
  %.sroa.7146.0.copyload = load i32, ptr %.sroa.7146.0..sroa_idx, align 8, !tbaa !58
  %i.ca = getelementptr inbounds i8, ptr %i.bw, i64 -64
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE3popEv.exit

bb.h:                                             ; preds = %bb.f
  %i.cb = load ptr, ptr %i.az, align 8, !tbaa !241, !noalias !566
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !242 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 448
  %.sroa.0140.0.copyload285 = load i64, ptr %i.ce, align 8, !tbaa !91
  %.sroa.5142.0..sroa_idx286 = getelementptr inbounds nuw i8, ptr %i.cd, i64 472
  %.sroa.5142.0.copyload287 = load i64, ptr %.sroa.5142.0..sroa_idx286, align 8, !tbaa !91
  %.sroa.6144.0..sroa_idx288 = getelementptr inbounds nuw i8, ptr %i.cd, i64 496
  %.sroa.6144.0.copyload289 = load i32, ptr %.sroa.6144.0..sroa_idx288, align 8, !tbaa !58
  %.sroa.7146.0..sroa_idx290 = getelementptr inbounds nuw i8, ptr %i.cd, i64 504
  %.sroa.7146.0.copyload291 = load i32, ptr %.sroa.7146.0..sroa_idx290, align 8, !tbaa !58
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef 512) #20
  %i.cf = load ptr, ptr %i.az, align 8, !tbaa !243
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -8 ; 2 uses
  store ptr %i.cg, ptr %i.az, align 8, !tbaa !241
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !242 ; 3 uses
  store ptr %i.ch, ptr %i.ay, align 8, !tbaa !240
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 512
  store ptr %i.ci, ptr %i.ap, align 8, !tbaa !244
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 448
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE3popEv.exit

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE3popEv.exit: ; preds = %bb.g, %bb.h
  %.sroa.7146.0.copyload298 = phi i32 [ %.sroa.7146.0.copyload, %bb.g ], [ %.sroa.7146.0.copyload291, %bb.h ] ; 3 uses
  %.sroa.6144.0.copyload296 = phi i32 [ %.sroa.6144.0.copyload, %bb.g ], [ %.sroa.6144.0.copyload289, %bb.h ] ; 2 uses
  %.sroa.5142.0.copyload294 = phi i64 [ %.sroa.5142.0.copyload, %bb.g ], [ %.sroa.5142.0.copyload287, %bb.h ] ; 7 uses
  %.sroa.0140.0.copyload292 = phi i64 [ %.sroa.0140.0.copyload, %bb.g ], [ %.sroa.0140.0.copyload285, %bb.h ] ; 9 uses
  %storemerge.i.i = phi ptr [ %i.ca, %bb.g ], [ %i.cj, %bb.h ]
  store ptr %storemerge.i.i, ptr %i.an, align 8, !tbaa !238
  store i64 %.sroa.0140.0.copyload292, ptr %1, align 8, !tbaa !173
  store i64 %.sroa.5142.0.copyload294, ptr %2, align 8, !tbaa !173
  %i.ck = zext i32 %.sroa.7146.0.copyload298 to i64 ; 3 uses
  %i.cl = load ptr, ptr %i.h, align 8, !tbaa !190 ; 2 uses
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %i.ck
  %i.cn = load ptr, ptr %i.w, align 8, !tbaa !190
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.ck ; 2 uses
  %i.cp = load i32, ptr %i.a, align 8, !tbaa !195
  %i.cq = add i32 %i.cp, -1
  %i.cr = icmp eq i32 %.sroa.6144.0.copyload296, %i.cq
  %i.cs = add i32 %.sroa.6144.0.copyload296, 1
  %i.ct = select i1 %i.cr, i32 0, i32 %i.cs       ; 5 uses
  %i.cu = zext i32 %i.ct to i64                   ; 7 uses
  %i.cv = load ptr, ptr %i.co, align 8, !tbaa !160
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cu
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !58 ; 2 uses
  %i.cy = sub i64 %.sroa.5142.0.copyload294, %.sroa.0140.0.copyload292 ; 2 uses
  %i.cz = trunc i64 %i.cy to i32                  ; 4 uses
  %i.da = load i32, ptr %0, align 8, !tbaa !194   ; 2 uses
  %i.db = icmp eq i32 %i.da, %i.cx
  br i1 %i.db, label %.loopexit, label %bb.j, !llvm.loop !537

bb.i:                                             ; preds = %bb.e
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

end_hunk_5
begin_hunk_6_@_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE17_M_reallocate_mapEmb:bb.a
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !242
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !242
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !104

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !242
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !242
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE15_M_allocate_mapEm.exit, !prof !101

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #21 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.m, label %bb.n, !prof !104

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.o, label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !242
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !242
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24

_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24: ; preds = %bb.m, %bb.n, %bb.o
  %i.bc = load ptr, ptr %0, align 8, !tbaa !245
  %i.bd = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bd) #20
  store ptr %i.aq, ptr %0, align 8, !tbaa !245
  store i64 %i.am, ptr %i.k, align 8, !tbaa !247
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !241
  %i.be = load ptr, ptr %.0, align 8, !tbaa !242  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !240
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 512
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !244
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !241
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !242 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !240
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 512
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !244
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE16_M_push_back_auxIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(60) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !241  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !241
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.j to i64
  %i.k = shl nsw i64 %.neg.i.i, 3
  %i.l = add i64 %i.i, %i.k
  %i.m = and i64 %i.l, -8
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !239
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !240
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 6
  %i.u = add nsw i64 %i.t, %i.m
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !244
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !239
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 6
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 144115188075855871
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !247
  %i.ag = load ptr, ptr %0, align 8, !tbaa !245
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi5EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #21
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !243
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !242
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !238
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !222
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !243
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !241
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !242 ; 3 uses
  store ptr %i.as, ptr %i.o, align 8, !tbaa !240
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 512
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !244
  store ptr %i.as, ptr %i.a, align 8, !tbaa !238
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodeInternalINS_12PointDVectorIjE20PointDVectorIteratorEEEvT_S6_(ptr noundef nonnull align 8 dereferenceable(2080) %0, ptr noundef byval(%"class.draco::PointDVector<unsigned int>::PointDVectorIterator") align 8 %1, ptr noundef byval(%"class.draco::PointDVector<unsigned int>::PointDVectorIterator") align 8 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<4>::EncodingStatus", align 8 ; 11 uses
  %4 = alloca %"class.std::stack.142", align 8    ; 19 uses
  %5 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<4>::EncodingStatus", align 8 ; 14 uses
  %6 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<4>::EncodingStatus", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !603  ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = shl nuw nsw i64 %i.c, 2                  ; 3 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #21 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.e, i8 0, i64 %i.d, i1 false), !tbaa !58
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit:            ; preds = %.noexc, %bb.a
  %.sroa.11159.0 = phi ptr [ null, %bb.a ], [ %i.f, %.noexc ]
  %.sroa.0156.0 = phi ptr [ null, %bb.a ], [ %i.e, %.noexc ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.a ], [ %i.g, %.noexc ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2032 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !190  ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !160  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !161
  store ptr %.sroa.0156.0, ptr %i.i, align 8, !tbaa !160
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.k, align 8, !tbaa !162
  store ptr %.sroa.11159.0, ptr %i.l, align 8, !tbaa !161
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.p) #20
  %.pre = load i32, ptr %i.a, align 8, !tbaa !603
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.b, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.q = phi i32 [ %.pre, %bb.b ], [ %i.b, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit ] ; 2 uses
  %.not.i.i.i.i86 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i86, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit93, label %.noexc92

.noexc92:                                         ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 2                  ; 3 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #21 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 0, i64 %i.s, i1 false), !tbaa !58
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit93

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit93:          ; preds = %.noexc92, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.sroa.11152.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.u, %.noexc92 ]
  %.sroa.0149.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.t, %.noexc92 ]
  %.0.i.i.i.i.i.i.i90 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.v, %.noexc92 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !190  ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !160  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !161
  store ptr %.sroa.0149.0, ptr %i.x, align 8, !tbaa !160
  store ptr %.0.i.i.i.i.i.i.i90, ptr %i.z, align 8, !tbaa !162
  store ptr %.sroa.11152.0, ptr %i.aa, align 8, !tbaa !161
  %.not.i.i.i.i.i94 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i94, label %_ZNSt6vectorIjSaIjEED2Ev.exit97, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit93
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.y to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ae) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit97

_ZNSt6vectorIjSaIjEED2Ev.exit97:                  ; preds = %bb.c, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit93
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 0, ptr %i.ag, align 8, !tbaa !605
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.ah, align 8, !tbaa !606
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !173
  %i.aj = load i64, ptr %3, align 8, !tbaa !173
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = trunc i64 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 %i.al, ptr %i.am, align 4, !tbaa !607
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %4, i64 noundef 0)
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 12 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !252 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !608
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -64
  %.not.i.i = icmp eq ptr %i.ao, %i.ar
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !222
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !252
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64 ; 2 uses
  store ptr %i.at, ptr %i.an, align 8, !tbaa !252
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit97
  invoke void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE16_M_push_back_auxIJRKS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(60) %3)
          to label %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit_crit_edge unwind label %bb.i

._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit_crit_edge: ; preds = %bb.e
  %.pre249 = load ptr, ptr %i.an, align 8, !tbaa !253
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit: ; preds = %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit_crit_edge, %bb.d
  %i.au = phi ptr [ %.pre249, %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit_crit_edge ], [ %i.at, %bb.d ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !253
  %i.ax = icmp eq ptr %i.au, %i.aw
  br i1 %i.ax, label %._crit_edge219, label %.lr.ph218

.lr.ph218:                                        ; preds = %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %.sroa.2166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2166.0.copyload = load ptr, ptr %.sroa.2166.0..sroa_idx, align 8 ; 4 uses
  %.sroa.3167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3167.0.copyload = load i32, ptr %.sroa.3167.0..sroa_idx, align 8
  %.sroa.4168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.4168.0.copyload = load i32, ptr %.sroa.4168.0..sroa_idx, align 4 ; 2 uses
  %.fr.i.i = freeze i32 %.sroa.3167.0.copyload    ; 5 uses
  %.sroa.3175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.3175.0.copyload = load i32, ptr %.sroa.3175.0..sroa_idx, align 8
  %.sroa.2174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2174.0.copyload = load ptr, ptr %.sroa.2174.0..sroa_idx, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.2166.0.copyload, i64 40 ; 2 uses
  %i.bb = zext i32 %.fr.i.i to i64                ; 10 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.2174.0.copyload, i64 40 ; 2 uses
  %i.bd = zext i32 %.sroa.3175.0.copyload to i64  ; 4 uses
  %.not.i.i.i.i.i100 = icmp eq i32 %.fr.i.i, 0
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1928
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.4178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.5179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.6180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 52
  %.sroa.4182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.5183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.6184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 52
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2008 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.2166.0.copyload, i64 4
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1864
  %i.br = shl nuw nsw i64 %i.bb, 2
  %i.bs = shl nuw nsw i64 %i.bb, 2
  %i.bt = shl nuw nsw i64 %i.bd, 2
  %i.bu = mul nsw i64 %i.bd, -4
  %min.iters.check = icmp ult i32 %.fr.i.i, 16
  %n.vec = and i64 %i.bb, 4294967288              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bb
  %xtraiter = and i64 %i.bb, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bv = add nsw i64 %i.bb, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph218, %.loopexit
  %i.bw = phi ptr [ %i.au, %.lr.ph218 ], [ %i.jh, %.loopexit ] ; 6 uses
  %i.bx = load ptr, ptr %i.ay, align 8, !tbaa !254, !noalias !609 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bz = getelementptr inbounds i8, ptr %i.bw, i64 -64
  %.sroa.0140.0.copyload = load i64, ptr %i.bz, align 8, !tbaa !91
  %.sroa.5142.0..sroa_idx = getelementptr inbounds i8, ptr %i.bw, i64 -40
  %.sroa.5142.0.copyload = load i64, ptr %.sroa.5142.0..sroa_idx, align 8, !tbaa !91
  %.sroa.6144.0..sroa_idx = getelementptr inbounds i8, ptr %i.bw, i64 -16
  %.sroa.6144.0.copyload = load i32, ptr %.sroa.6144.0..sroa_idx, align 8, !tbaa !58
  %.sroa.7146.0..sroa_idx = getelementptr inbounds i8, ptr %i.bw, i64 -8
  %.sroa.7146.0.copyload = load i32, ptr %.sroa.7146.0..sroa_idx, align 8, !tbaa !58
  %i.ca = getelementptr inbounds i8, ptr %i.bw, i64 -64
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE3popEv.exit

bb.h:                                             ; preds = %bb.f
  %i.cb = load ptr, ptr %i.az, align 8, !tbaa !255, !noalias !609
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !256 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 448
  %.sroa.0140.0.copyload285 = load i64, ptr %i.ce, align 8, !tbaa !91
  %.sroa.5142.0..sroa_idx286 = getelementptr inbounds nuw i8, ptr %i.cd, i64 472
  %.sroa.5142.0.copyload287 = load i64, ptr %.sroa.5142.0..sroa_idx286, align 8, !tbaa !91
  %.sroa.6144.0..sroa_idx288 = getelementptr inbounds nuw i8, ptr %i.cd, i64 496
  %.sroa.6144.0.copyload289 = load i32, ptr %.sroa.6144.0..sroa_idx288, align 8, !tbaa !58
  %.sroa.7146.0..sroa_idx290 = getelementptr inbounds nuw i8, ptr %i.cd, i64 504
  %.sroa.7146.0.copyload291 = load i32, ptr %.sroa.7146.0..sroa_idx290, align 8, !tbaa !58
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef 512) #20
  %i.cf = load ptr, ptr %i.az, align 8, !tbaa !257
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -8 ; 2 uses
  store ptr %i.cg, ptr %i.az, align 8, !tbaa !255
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !256 ; 3 uses
  store ptr %i.ch, ptr %i.ay, align 8, !tbaa !254
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 512
  store ptr %i.ci, ptr %i.ap, align 8, !tbaa !258
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 448
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE3popEv.exit

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE3popEv.exit: ; preds = %bb.g, %bb.h
  %.sroa.7146.0.copyload298 = phi i32 [ %.sroa.7146.0.copyload, %bb.g ], [ %.sroa.7146.0.copyload291, %bb.h ] ; 3 uses
  %.sroa.6144.0.copyload296 = phi i32 [ %.sroa.6144.0.copyload, %bb.g ], [ %.sroa.6144.0.copyload289, %bb.h ] ; 2 uses
  %.sroa.5142.0.copyload294 = phi i64 [ %.sroa.5142.0.copyload, %bb.g ], [ %.sroa.5142.0.copyload287, %bb.h ] ; 7 uses
  %.sroa.0140.0.copyload292 = phi i64 [ %.sroa.0140.0.copyload, %bb.g ], [ %.sroa.0140.0.copyload285, %bb.h ] ; 9 uses
  %storemerge.i.i = phi ptr [ %i.ca, %bb.g ], [ %i.cj, %bb.h ]
  store ptr %storemerge.i.i, ptr %i.an, align 8, !tbaa !252
  store i64 %.sroa.0140.0.copyload292, ptr %1, align 8, !tbaa !173
  store i64 %.sroa.5142.0.copyload294, ptr %2, align 8, !tbaa !173
  %i.ck = zext i32 %.sroa.7146.0.copyload298 to i64 ; 3 uses
  %i.cl = load ptr, ptr %i.h, align 8, !tbaa !190 ; 2 uses
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %i.ck
  %i.cn = load ptr, ptr %i.w, align 8, !tbaa !190
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.ck ; 2 uses
  %i.cp = load i32, ptr %i.a, align 8, !tbaa !603
  %i.cq = add i32 %i.cp, -1
  %i.cr = icmp eq i32 %.sroa.6144.0.copyload296, %i.cq
  %i.cs = add i32 %.sroa.6144.0.copyload296, 1
  %i.ct = select i1 %i.cr, i32 0, i32 %i.cs       ; 5 uses
  %i.cu = zext i32 %i.ct to i64                   ; 7 uses
  %i.cv = load ptr, ptr %i.co, align 8, !tbaa !160
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cu
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !58 ; 2 uses
  %i.cy = sub i64 %.sroa.5142.0.copyload294, %.sroa.0140.0.copyload292 ; 2 uses
  %i.cz = trunc i64 %i.cy to i32                  ; 4 uses
  %i.da = load i32, ptr %0, align 8, !tbaa !197   ; 2 uses
  %i.db = icmp eq i32 %i.da, %i.cx
  br i1 %i.db, label %.loopexit, label %bb.j, !llvm.loop !579

bb.i:                                             ; preds = %bb.e
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

end_hunk_6
begin_hunk_7_@_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE17_M_reallocate_mapEmb:bb.a
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !256
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !256
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !104

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !256
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !256
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE15_M_allocate_mapEm.exit, !prof !101

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #21 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.m, label %bb.n, !prof !104

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.o, label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !256
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !256
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24

_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24: ; preds = %bb.m, %bb.n, %bb.o
  %i.bc = load ptr, ptr %0, align 8, !tbaa !259
  %i.bd = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bd) #20
  store ptr %i.aq, ptr %0, align 8, !tbaa !259
  store i64 %i.am, ptr %i.k, align 8, !tbaa !261
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !255
  %i.be = load ptr, ptr %.0, align 8, !tbaa !256  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !254
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 512
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !258
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !255
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !256 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !254
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 512
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !258
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE16_M_push_back_auxIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(60) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !255  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !255
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.j to i64
  %i.k = shl nsw i64 %.neg.i.i, 3
  %i.l = add i64 %i.i, %i.k
  %i.m = and i64 %i.l, -8
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !253
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !254
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 6
  %i.u = add nsw i64 %i.t, %i.m
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !258
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !253
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 6
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 144115188075855871
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !261
  %i.ag = load ptr, ptr %0, align 8, !tbaa !259
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi4EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #21
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !257
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !256
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !252
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !222
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !257
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !255
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !256 ; 3 uses
  store ptr %i.as, ptr %i.o, align 8, !tbaa !254
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 512
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !258
  store ptr %i.as, ptr %i.a, align 8, !tbaa !252
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodeInternalINS_12PointDVectorIjE20PointDVectorIteratorEEEvT_S6_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef byval(%"class.draco::PointDVector<unsigned int>::PointDVectorIterator") align 8 %1, ptr noundef byval(%"class.draco::PointDVector<unsigned int>::PointDVectorIterator") align 8 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<3>::EncodingStatus", align 8 ; 11 uses
  %4 = alloca %"class.std::stack.152", align 8    ; 19 uses
  %5 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<3>::EncodingStatus", align 8 ; 14 uses
  %6 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<3>::EncodingStatus", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !200  ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = shl nuw nsw i64 %i.c, 2                  ; 3 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #21 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.e, i8 0, i64 %i.d, i1 false), !tbaa !58
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit:            ; preds = %.noexc, %bb.a
  %.sroa.11151.0 = phi ptr [ null, %bb.a ], [ %i.f, %.noexc ]
  %.sroa.0148.0 = phi ptr [ null, %bb.a ], [ %i.e, %.noexc ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.a ], [ %i.g, %.noexc ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !190  ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !160  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !161
  store ptr %.sroa.0148.0, ptr %i.i, align 8, !tbaa !160
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.k, align 8, !tbaa !162
  store ptr %.sroa.11151.0, ptr %i.l, align 8, !tbaa !161
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.p) #20
  %.pre = load i32, ptr %i.a, align 8, !tbaa !200
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.b, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.q = phi i32 [ %.pre, %bb.b ], [ %i.b, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit ] ; 2 uses
  %.not.i.i.i.i86 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i86, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit93, label %.noexc92

.noexc92:                                         ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 2                  ; 3 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #21 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 0, i64 %i.s, i1 false), !tbaa !58
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit93

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit93:          ; preds = %.noexc92, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.sroa.11144.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.u, %.noexc92 ]
  %.sroa.0141.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.t, %.noexc92 ]
  %.0.i.i.i.i.i.i.i90 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.v, %.noexc92 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !190  ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !160  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !161
  store ptr %.sroa.0141.0, ptr %i.x, align 8, !tbaa !160
  store ptr %.0.i.i.i.i.i.i.i90, ptr %i.z, align 8, !tbaa !162
  store ptr %.sroa.11144.0, ptr %i.aa, align 8, !tbaa !161
  %.not.i.i.i.i.i94 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i94, label %_ZNSt6vectorIjSaIjEED2Ev.exit97, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit93
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.y to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ae) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit97

_ZNSt6vectorIjSaIjEED2Ev.exit97:                  ; preds = %bb.c, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit93
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 0, ptr %i.ag, align 8, !tbaa !647
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.ah, align 8, !tbaa !648
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !173
  %i.aj = load i64, ptr %3, align 8, !tbaa !173
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = trunc i64 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 %i.al, ptr %i.am, align 4, !tbaa !649
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %4, i64 noundef 0)
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 12 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !266 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !650
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -64
  %.not.i.i = icmp eq ptr %i.ao, %i.ar
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !222
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !266
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64 ; 2 uses
  store ptr %i.at, ptr %i.an, align 8, !tbaa !266
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit97
  invoke void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE16_M_push_back_auxIJRKS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(60) %3)
          to label %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit_crit_edge unwind label %bb.i

._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit_crit_edge: ; preds = %bb.e
  %.pre235 = load ptr, ptr %i.an, align 8, !tbaa !267
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit: ; preds = %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit_crit_edge, %bb.d
  %i.au = phi ptr [ %.pre235, %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit_crit_edge ], [ %i.at, %bb.d ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !267
  %i.ax = icmp eq ptr %i.au, %i.aw
  br i1 %i.ax, label %._crit_edge204, label %.lr.ph203

.lr.ph203:                                        ; preds = %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %.sroa.2158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2158.0.copyload = load ptr, ptr %.sroa.2158.0..sroa_idx, align 8 ; 4 uses
  %.sroa.3159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3159.0.copyload = load i32, ptr %.sroa.3159.0..sroa_idx, align 8
  %.sroa.4160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.4160.0.copyload = load i32, ptr %.sroa.4160.0..sroa_idx, align 4 ; 2 uses
  %.fr.i.i = freeze i32 %.sroa.3159.0.copyload    ; 5 uses
  %.sroa.3167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.3167.0.copyload = load i32, ptr %.sroa.3167.0..sroa_idx, align 8
  %.sroa.2166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2166.0.copyload = load ptr, ptr %.sroa.2166.0..sroa_idx, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.2158.0.copyload, i64 40 ; 2 uses
  %i.bb = zext i32 %.fr.i.i to i64                ; 10 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.2166.0.copyload, i64 40 ; 2 uses
  %i.bd = zext i32 %.sroa.3167.0.copyload to i64  ; 4 uses
  %.not.i.i.i.i.i100 = icmp eq i32 %.fr.i.i, 0
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.4170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.5171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.6172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 52
  %.sroa.4174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.5175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.6176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 52
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.2158.0.copyload, i64 4
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.br = shl nuw nsw i64 %i.bb, 2
  %i.bs = shl nuw nsw i64 %i.bb, 2
  %i.bt = shl nuw nsw i64 %i.bd, 2
  %i.bu = mul nsw i64 %i.bd, -4
  %min.iters.check = icmp ult i32 %.fr.i.i, 16
  %n.vec = and i64 %i.bb, 4294967288              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bb
  %xtraiter = and i64 %i.bb, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bv = add nsw i64 %i.bb, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph203, %.loopexit
  %i.bw = phi ptr [ %i.au, %.lr.ph203 ], [ %i.iy, %.loopexit ] ; 6 uses
  %i.bx = load ptr, ptr %i.ay, align 8, !tbaa !268, !noalias !651 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bz = getelementptr inbounds i8, ptr %i.bw, i64 -64
  %.sroa.0132.0.copyload = load i64, ptr %i.bz, align 8, !tbaa !91
  %.sroa.5134.0..sroa_idx = getelementptr inbounds i8, ptr %i.bw, i64 -40
  %.sroa.5134.0.copyload = load i64, ptr %.sroa.5134.0..sroa_idx, align 8, !tbaa !91
  %.sroa.6136.0..sroa_idx = getelementptr inbounds i8, ptr %i.bw, i64 -16
  %.sroa.6136.0.copyload = load i32, ptr %.sroa.6136.0..sroa_idx, align 8, !tbaa !58
  %.sroa.7138.0..sroa_idx = getelementptr inbounds i8, ptr %i.bw, i64 -8
  %.sroa.7138.0.copyload = load i32, ptr %.sroa.7138.0..sroa_idx, align 8, !tbaa !58
  %i.ca = getelementptr inbounds i8, ptr %i.bw, i64 -64
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE3popEv.exit

bb.h:                                             ; preds = %bb.f
  %i.cb = load ptr, ptr %i.az, align 8, !tbaa !269, !noalias !651
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !270 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 448
  %.sroa.0132.0.copyload270 = load i64, ptr %i.ce, align 8, !tbaa !91
  %.sroa.5134.0..sroa_idx271 = getelementptr inbounds nuw i8, ptr %i.cd, i64 472
  %.sroa.5134.0.copyload272 = load i64, ptr %.sroa.5134.0..sroa_idx271, align 8, !tbaa !91
  %.sroa.6136.0..sroa_idx273 = getelementptr inbounds nuw i8, ptr %i.cd, i64 496
  %.sroa.6136.0.copyload274 = load i32, ptr %.sroa.6136.0..sroa_idx273, align 8, !tbaa !58
  %.sroa.7138.0..sroa_idx275 = getelementptr inbounds nuw i8, ptr %i.cd, i64 504
  %.sroa.7138.0.copyload276 = load i32, ptr %.sroa.7138.0..sroa_idx275, align 8, !tbaa !58
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef 512) #20
  %i.cf = load ptr, ptr %i.az, align 8, !tbaa !271
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -8 ; 2 uses
  store ptr %i.cg, ptr %i.az, align 8, !tbaa !269
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !270 ; 3 uses
  store ptr %i.ch, ptr %i.ay, align 8, !tbaa !268
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 512
  store ptr %i.ci, ptr %i.ap, align 8, !tbaa !272
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 448
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE3popEv.exit

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE3popEv.exit: ; preds = %bb.g, %bb.h
  %.sroa.7138.0.copyload283 = phi i32 [ %.sroa.7138.0.copyload, %bb.g ], [ %.sroa.7138.0.copyload276, %bb.h ] ; 3 uses
  %.sroa.6136.0.copyload281 = phi i32 [ %.sroa.6136.0.copyload, %bb.g ], [ %.sroa.6136.0.copyload274, %bb.h ] ; 2 uses
  %.sroa.5134.0.copyload279 = phi i64 [ %.sroa.5134.0.copyload, %bb.g ], [ %.sroa.5134.0.copyload272, %bb.h ] ; 7 uses
  %.sroa.0132.0.copyload277 = phi i64 [ %.sroa.0132.0.copyload, %bb.g ], [ %.sroa.0132.0.copyload270, %bb.h ] ; 9 uses
  %storemerge.i.i = phi ptr [ %i.ca, %bb.g ], [ %i.cj, %bb.h ]
  store ptr %storemerge.i.i, ptr %i.an, align 8, !tbaa !266
  store i64 %.sroa.0132.0.copyload277, ptr %1, align 8, !tbaa !173
  store i64 %.sroa.5134.0.copyload279, ptr %2, align 8, !tbaa !173
  %i.ck = zext i32 %.sroa.7138.0.copyload283 to i64 ; 3 uses
  %i.cl = load ptr, ptr %i.h, align 8, !tbaa !190 ; 2 uses
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %i.ck
  %i.cn = load ptr, ptr %i.w, align 8, !tbaa !190
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.ck ; 2 uses
  %i.cp = load i32, ptr %i.a, align 8, !tbaa !200
  %i.cq = add i32 %i.cp, -1
  %i.cr = icmp eq i32 %.sroa.6136.0.copyload281, %i.cq
  %i.cs = add i32 %.sroa.6136.0.copyload281, 1
  %i.ct = select i1 %i.cr, i32 0, i32 %i.cs       ; 5 uses
  %i.cu = zext i32 %i.ct to i64                   ; 7 uses
  %i.cv = load ptr, ptr %i.co, align 8, !tbaa !160
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cu
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !58 ; 2 uses
  %i.cy = sub i64 %.sroa.5134.0.copyload279, %.sroa.0132.0.copyload277 ; 2 uses
  %i.cz = trunc i64 %i.cy to i32                  ; 4 uses
  %i.da = load i32, ptr %0, align 8, !tbaa !199   ; 2 uses
  %i.db = icmp eq i32 %i.da, %i.cx
  br i1 %i.db, label %.loopexit, label %bb.j, !llvm.loop !622

bb.i:                                             ; preds = %bb.e
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

end_hunk_7
begin_hunk_8_@_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE17_M_reallocate_mapEmb:bb.a
bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !270
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !270
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !104

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !270
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !270
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE15_M_allocate_mapEm.exit, !prof !101

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #21 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.m, label %bb.n, !prof !104

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.o, label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !270
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !270
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24

_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24: ; preds = %bb.m, %bb.n, %bb.o
  %i.bc = load ptr, ptr %0, align 8, !tbaa !274
  %i.bd = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bd) #20
  store ptr %i.aq, ptr %0, align 8, !tbaa !274
  store i64 %i.am, ptr %i.k, align 8, !tbaa !276
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !269
  %i.be = load ptr, ptr %.0, align 8, !tbaa !270  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !268
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 512
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !272
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !269
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !270 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !268
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 512
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !272
  ret void
}

declare void @_ZN5draco14RAnsBitEncoder28EncodeLeastSignificantBits32Eij(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE16_M_push_back_auxIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(60) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !269  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !269
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.j to i64
  %i.k = shl nsw i64 %.neg.i.i, 3
  %i.l = add i64 %i.i, %i.k
  %i.m = and i64 %i.l, -8
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !267
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !268
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 6
  %i.u = add nsw i64 %i.t, %i.m
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !272
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !267
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 6
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 144115188075855871
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !276
  %i.ag = load ptr, ptr %0, align 8, !tbaa !274
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi3EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #21
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !271
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !270
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !266
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !222
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !271
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !269
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !270 ; 3 uses
  store ptr %i.as, ptr %i.o, align 8, !tbaa !268
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 512
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !272
  store ptr %i.as, ptr %i.a, align 8, !tbaa !266
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodeInternalINS_12PointDVectorIjE20PointDVectorIteratorEEEvT_S6_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef byval(%"class.draco::PointDVector<unsigned int>::PointDVectorIterator") align 8 %1, ptr noundef byval(%"class.draco::PointDVector<unsigned int>::PointDVectorIterator") align 8 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<2>::EncodingStatus", align 8 ; 11 uses
  %4 = alloca %"class.std::stack.162", align 8    ; 19 uses
  %5 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<2>::EncodingStatus", align 8 ; 14 uses
  %6 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<2>::EncodingStatus", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !688  ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = shl nuw nsw i64 %i.c, 2                  ; 3 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #21 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.e, i8 0, i64 %i.d, i1 false), !tbaa !58
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit:            ; preds = %.noexc, %bb.a
  %.sroa.11151.0 = phi ptr [ null, %bb.a ], [ %i.f, %.noexc ]
  %.sroa.0148.0 = phi ptr [ null, %bb.a ], [ %i.e, %.noexc ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.a ], [ %i.g, %.noexc ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !190  ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !160  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !161
  store ptr %.sroa.0148.0, ptr %i.i, align 8, !tbaa !160
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.k, align 8, !tbaa !162
  store ptr %.sroa.11151.0, ptr %i.l, align 8, !tbaa !161
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.p) #20
  %.pre = load i32, ptr %i.a, align 8, !tbaa !688
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.b, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.q = phi i32 [ %.pre, %bb.b ], [ %i.b, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit ] ; 2 uses
  %.not.i.i.i.i86 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i86, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit93, label %.noexc92

.noexc92:                                         ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 2                  ; 3 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #21 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 0, i64 %i.s, i1 false), !tbaa !58
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit93

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit93:          ; preds = %.noexc92, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.sroa.11144.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.u, %.noexc92 ]
  %.sroa.0141.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.t, %.noexc92 ]
  %.0.i.i.i.i.i.i.i90 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.v, %.noexc92 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !190  ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !160  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !161
  store ptr %.sroa.0141.0, ptr %i.x, align 8, !tbaa !160
  store ptr %.0.i.i.i.i.i.i.i90, ptr %i.z, align 8, !tbaa !162
  store ptr %.sroa.11144.0, ptr %i.aa, align 8, !tbaa !161
  %.not.i.i.i.i.i94 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i94, label %_ZNSt6vectorIjSaIjEED2Ev.exit97, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit93
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.y to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ae) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit97

_ZNSt6vectorIjSaIjEED2Ev.exit97:                  ; preds = %bb.c, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit93
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 0, ptr %i.ag, align 8, !tbaa !690
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.ah, align 8, !tbaa !691
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !173
  %i.aj = load i64, ptr %3, align 8, !tbaa !173
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = trunc i64 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 %i.al, ptr %i.am, align 4, !tbaa !692
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %4, i64 noundef 0)
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 12 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !281 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !693
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -64
  %.not.i.i = icmp eq ptr %i.ao, %i.ar
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !222
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !281
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64 ; 2 uses
  store ptr %i.at, ptr %i.an, align 8, !tbaa !281
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit97
  invoke void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE16_M_push_back_auxIJRKS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(60) %3)
          to label %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit_crit_edge unwind label %bb.i

._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit_crit_edge: ; preds = %bb.e
  %.pre235 = load ptr, ptr %i.an, align 8, !tbaa !282
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit: ; preds = %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit_crit_edge, %bb.d
  %i.au = phi ptr [ %.pre235, %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit_crit_edge ], [ %i.at, %bb.d ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !282
  %i.ax = icmp eq ptr %i.au, %i.aw
  br i1 %i.ax, label %._crit_edge204, label %.lr.ph203

.lr.ph203:                                        ; preds = %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %.sroa.2158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2158.0.copyload = load ptr, ptr %.sroa.2158.0..sroa_idx, align 8 ; 4 uses
  %.sroa.3159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3159.0.copyload = load i32, ptr %.sroa.3159.0..sroa_idx, align 8
  %.sroa.4160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.4160.0.copyload = load i32, ptr %.sroa.4160.0..sroa_idx, align 4 ; 2 uses
  %.fr.i.i = freeze i32 %.sroa.3159.0.copyload    ; 5 uses
  %.sroa.3167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.3167.0.copyload = load i32, ptr %.sroa.3167.0..sroa_idx, align 8
  %.sroa.2166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2166.0.copyload = load ptr, ptr %.sroa.2166.0..sroa_idx, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.2158.0.copyload, i64 40 ; 2 uses
  %i.bb = zext i32 %.fr.i.i to i64                ; 10 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.2166.0.copyload, i64 40 ; 2 uses
  %i.bd = zext i32 %.sroa.3167.0.copyload to i64  ; 4 uses
  %.not.i.i.i.i.i100 = icmp eq i32 %.fr.i.i, 0
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.4170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.5171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.6172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 52
  %.sroa.4174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.5175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.6176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 52
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.2158.0.copyload, i64 4
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.br = shl nuw nsw i64 %i.bb, 2
  %i.bs = shl nuw nsw i64 %i.bb, 2
  %i.bt = shl nuw nsw i64 %i.bd, 2
  %i.bu = mul nsw i64 %i.bd, -4
  %min.iters.check = icmp ult i32 %.fr.i.i, 16
  %n.vec = and i64 %i.bb, 4294967288              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bb
  %xtraiter = and i64 %i.bb, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bv = add nsw i64 %i.bb, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph203, %.loopexit
  %i.bw = phi ptr [ %i.au, %.lr.ph203 ], [ %i.iy, %.loopexit ] ; 6 uses
  %i.bx = load ptr, ptr %i.ay, align 8, !tbaa !283, !noalias !694 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bz = getelementptr inbounds i8, ptr %i.bw, i64 -64
  %.sroa.0132.0.copyload = load i64, ptr %i.bz, align 8, !tbaa !91
  %.sroa.5134.0..sroa_idx = getelementptr inbounds i8, ptr %i.bw, i64 -40
  %.sroa.5134.0.copyload = load i64, ptr %.sroa.5134.0..sroa_idx, align 8, !tbaa !91
  %.sroa.6136.0..sroa_idx = getelementptr inbounds i8, ptr %i.bw, i64 -16
  %.sroa.6136.0.copyload = load i32, ptr %.sroa.6136.0..sroa_idx, align 8, !tbaa !58
  %.sroa.7138.0..sroa_idx = getelementptr inbounds i8, ptr %i.bw, i64 -8
  %.sroa.7138.0.copyload = load i32, ptr %.sroa.7138.0..sroa_idx, align 8, !tbaa !58
  %i.ca = getelementptr inbounds i8, ptr %i.bw, i64 -64
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE3popEv.exit

bb.h:                                             ; preds = %bb.f
  %i.cb = load ptr, ptr %i.az, align 8, !tbaa !284, !noalias !694
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !285 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 448
  %.sroa.0132.0.copyload270 = load i64, ptr %i.ce, align 8, !tbaa !91
  %.sroa.5134.0..sroa_idx271 = getelementptr inbounds nuw i8, ptr %i.cd, i64 472
  %.sroa.5134.0.copyload272 = load i64, ptr %.sroa.5134.0..sroa_idx271, align 8, !tbaa !91
  %.sroa.6136.0..sroa_idx273 = getelementptr inbounds nuw i8, ptr %i.cd, i64 496
  %.sroa.6136.0.copyload274 = load i32, ptr %.sroa.6136.0..sroa_idx273, align 8, !tbaa !58
  %.sroa.7138.0..sroa_idx275 = getelementptr inbounds nuw i8, ptr %i.cd, i64 504
  %.sroa.7138.0.copyload276 = load i32, ptr %.sroa.7138.0..sroa_idx275, align 8, !tbaa !58
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef 512) #20
  %i.cf = load ptr, ptr %i.az, align 8, !tbaa !286
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -8 ; 2 uses
  store ptr %i.cg, ptr %i.az, align 8, !tbaa !284
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !285 ; 3 uses
  store ptr %i.ch, ptr %i.ay, align 8, !tbaa !283
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 512
  store ptr %i.ci, ptr %i.ap, align 8, !tbaa !287
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 448
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE3popEv.exit

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE3popEv.exit: ; preds = %bb.g, %bb.h
  %.sroa.7138.0.copyload283 = phi i32 [ %.sroa.7138.0.copyload, %bb.g ], [ %.sroa.7138.0.copyload276, %bb.h ] ; 3 uses
  %.sroa.6136.0.copyload281 = phi i32 [ %.sroa.6136.0.copyload, %bb.g ], [ %.sroa.6136.0.copyload274, %bb.h ] ; 2 uses
  %.sroa.5134.0.copyload279 = phi i64 [ %.sroa.5134.0.copyload, %bb.g ], [ %.sroa.5134.0.copyload272, %bb.h ] ; 7 uses
  %.sroa.0132.0.copyload277 = phi i64 [ %.sroa.0132.0.copyload, %bb.g ], [ %.sroa.0132.0.copyload270, %bb.h ] ; 9 uses
  %storemerge.i.i = phi ptr [ %i.ca, %bb.g ], [ %i.cj, %bb.h ]
  store ptr %storemerge.i.i, ptr %i.an, align 8, !tbaa !281
  store i64 %.sroa.0132.0.copyload277, ptr %1, align 8, !tbaa !173
  store i64 %.sroa.5134.0.copyload279, ptr %2, align 8, !tbaa !173
  %i.ck = zext i32 %.sroa.7138.0.copyload283 to i64 ; 3 uses
  %i.cl = load ptr, ptr %i.h, align 8, !tbaa !190 ; 2 uses
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %i.ck
  %i.cn = load ptr, ptr %i.w, align 8, !tbaa !190
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.ck ; 2 uses
  %i.cp = load i32, ptr %i.a, align 8, !tbaa !688
  %i.cq = add i32 %i.cp, -1
  %i.cr = icmp eq i32 %.sroa.6136.0.copyload281, %i.cq
  %i.cs = add i32 %.sroa.6136.0.copyload281, 1
  %i.ct = select i1 %i.cr, i32 0, i32 %i.cs       ; 5 uses
  %i.cu = zext i32 %i.ct to i64                   ; 7 uses
  %i.cv = load ptr, ptr %i.co, align 8, !tbaa !160
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cu
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !58 ; 2 uses
  %i.cy = sub i64 %.sroa.5134.0.copyload279, %.sroa.0132.0.copyload277 ; 2 uses
  %i.cz = trunc i64 %i.cy to i32                  ; 4 uses
  %i.da = load i32, ptr %0, align 8, !tbaa !202   ; 2 uses
  %i.db = icmp eq i32 %i.da, %i.cx
  br i1 %i.db, label %.loopexit, label %bb.j, !llvm.loop !664

bb.i:                                             ; preds = %bb.e
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

end_hunk_8
begin_hunk_9_@_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE17_M_reallocate_mapEmb:bb.a
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !285
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !285
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !104

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !285
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !285
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE15_M_allocate_mapEm.exit, !prof !101

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #21 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.m, label %bb.n, !prof !104

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.o, label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !285
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !285
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24

_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24: ; preds = %bb.m, %bb.n, %bb.o
  %i.bc = load ptr, ptr %0, align 8, !tbaa !288
  %i.bd = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bd) #20
  store ptr %i.aq, ptr %0, align 8, !tbaa !288
  store i64 %i.am, ptr %i.k, align 8, !tbaa !290
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !284
  %i.be = load ptr, ptr %.0, align 8, !tbaa !285  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !283
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 512
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !287
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !284
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !285 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !283
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 512
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !287
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE16_M_push_back_auxIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(60) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !284  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !284
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.j to i64
  %i.k = shl nsw i64 %.neg.i.i, 3
  %i.l = add i64 %i.i, %i.k
  %i.m = and i64 %i.l, -8
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !282
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !283
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 6
  %i.u = add nsw i64 %i.t, %i.m
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !287
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !282
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 6
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 144115188075855871
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !290
  %i.ag = load ptr, ptr %0, align 8, !tbaa !288
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi2EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #21
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !286
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !285
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !281
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !222
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !286
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !284
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !285 ; 3 uses
  store ptr %i.as, ptr %i.o, align 8, !tbaa !283
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 512
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !287
  store ptr %i.as, ptr %i.a, align 8, !tbaa !281
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodeInternalINS_12PointDVectorIjE20PointDVectorIteratorEEEvT_S6_(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef byval(%"class.draco::PointDVector<unsigned int>::PointDVectorIterator") align 8 %1, ptr noundef byval(%"class.draco::PointDVector<unsigned int>::PointDVectorIterator") align 8 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<1>::EncodingStatus", align 8 ; 11 uses
  %4 = alloca %"class.std::stack.172", align 8    ; 19 uses
  %5 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<1>::EncodingStatus", align 8 ; 14 uses
  %6 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<1>::EncodingStatus", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !205  ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = shl nuw nsw i64 %i.c, 2                  ; 3 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #21 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.e, i8 0, i64 %i.d, i1 false), !tbaa !58
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit:            ; preds = %.noexc, %bb.a
  %.sroa.11151.0 = phi ptr [ null, %bb.a ], [ %i.f, %.noexc ]
  %.sroa.0148.0 = phi ptr [ null, %bb.a ], [ %i.e, %.noexc ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.a ], [ %i.g, %.noexc ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !190  ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !160  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !161
  store ptr %.sroa.0148.0, ptr %i.i, align 8, !tbaa !160
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.k, align 8, !tbaa !162
  store ptr %.sroa.11151.0, ptr %i.l, align 8, !tbaa !161
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.p) #20
  %.pre = load i32, ptr %i.a, align 8, !tbaa !205
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.b, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.q = phi i32 [ %.pre, %bb.b ], [ %i.b, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit ] ; 2 uses
  %.not.i.i.i.i86 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i86, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit93, label %.noexc92

.noexc92:                                         ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 2                  ; 3 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #21 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 0, i64 %i.s, i1 false), !tbaa !58
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit93

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit93:          ; preds = %.noexc92, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.sroa.11144.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.u, %.noexc92 ]
  %.sroa.0141.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.t, %.noexc92 ]
  %.0.i.i.i.i.i.i.i90 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.v, %.noexc92 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !190  ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !160  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !161
  store ptr %.sroa.0141.0, ptr %i.x, align 8, !tbaa !160
  store ptr %.0.i.i.i.i.i.i.i90, ptr %i.z, align 8, !tbaa !162
  store ptr %.sroa.11144.0, ptr %i.aa, align 8, !tbaa !161
  %.not.i.i.i.i.i94 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i94, label %_ZNSt6vectorIjSaIjEED2Ev.exit97, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit93
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.y to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ae) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit97

_ZNSt6vectorIjSaIjEED2Ev.exit97:                  ; preds = %bb.c, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit93
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 0, ptr %i.ag, align 8, !tbaa !732
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.ah, align 8, !tbaa !733
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !173
  %i.aj = load i64, ptr %3, align 8, !tbaa !173
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = trunc i64 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 %i.al, ptr %i.am, align 4, !tbaa !734
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %4, i64 noundef 0)
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 12 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !295 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !735
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -64
  %.not.i.i = icmp eq ptr %i.ao, %i.ar
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !222
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !295
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64 ; 2 uses
  store ptr %i.at, ptr %i.an, align 8, !tbaa !295
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit97
  invoke void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE16_M_push_back_auxIJRKS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(60) %3)
          to label %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit_crit_edge unwind label %bb.i

._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit_crit_edge: ; preds = %bb.e
  %.pre235 = load ptr, ptr %i.an, align 8, !tbaa !296
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit: ; preds = %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit_crit_edge, %bb.d
  %i.au = phi ptr [ %.pre235, %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit_crit_edge ], [ %i.at, %bb.d ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !296
  %i.ax = icmp eq ptr %i.au, %i.aw
  br i1 %i.ax, label %._crit_edge204, label %.lr.ph203

.lr.ph203:                                        ; preds = %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %.sroa.2158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2158.0.copyload = load ptr, ptr %.sroa.2158.0..sroa_idx, align 8 ; 4 uses
  %.sroa.3159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3159.0.copyload = load i32, ptr %.sroa.3159.0..sroa_idx, align 8
  %.sroa.4160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.4160.0.copyload = load i32, ptr %.sroa.4160.0..sroa_idx, align 4 ; 2 uses
  %.fr.i.i = freeze i32 %.sroa.3159.0.copyload    ; 5 uses
  %.sroa.3167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.3167.0.copyload = load i32, ptr %.sroa.3167.0..sroa_idx, align 8
  %.sroa.2166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2166.0.copyload = load ptr, ptr %.sroa.2166.0..sroa_idx, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.2158.0.copyload, i64 40 ; 2 uses
  %i.bb = zext i32 %.fr.i.i to i64                ; 10 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.2166.0.copyload, i64 40 ; 2 uses
  %i.bd = zext i32 %.sroa.3167.0.copyload to i64  ; 4 uses
  %.not.i.i.i.i.i100 = icmp eq i32 %.fr.i.i, 0
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.4170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.5171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.6172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 52
  %.sroa.4174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.5175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.6176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 52
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.2158.0.copyload, i64 4
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.br = shl nuw nsw i64 %i.bb, 2
  %i.bs = shl nuw nsw i64 %i.bb, 2
  %i.bt = shl nuw nsw i64 %i.bd, 2
  %i.bu = mul nsw i64 %i.bd, -4
  %min.iters.check = icmp ult i32 %.fr.i.i, 16
  %n.vec = and i64 %i.bb, 4294967288              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bb
  %xtraiter = and i64 %i.bb, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bv = add nsw i64 %i.bb, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph203, %.loopexit
  %i.bw = phi ptr [ %i.au, %.lr.ph203 ], [ %i.iy, %.loopexit ] ; 6 uses
  %i.bx = load ptr, ptr %i.ay, align 8, !tbaa !297, !noalias !736 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bz = getelementptr inbounds i8, ptr %i.bw, i64 -64
  %.sroa.0132.0.copyload = load i64, ptr %i.bz, align 8, !tbaa !91
  %.sroa.5134.0..sroa_idx = getelementptr inbounds i8, ptr %i.bw, i64 -40
  %.sroa.5134.0.copyload = load i64, ptr %.sroa.5134.0..sroa_idx, align 8, !tbaa !91
  %.sroa.6136.0..sroa_idx = getelementptr inbounds i8, ptr %i.bw, i64 -16
  %.sroa.6136.0.copyload = load i32, ptr %.sroa.6136.0..sroa_idx, align 8, !tbaa !58
  %.sroa.7138.0..sroa_idx = getelementptr inbounds i8, ptr %i.bw, i64 -8
  %.sroa.7138.0.copyload = load i32, ptr %.sroa.7138.0..sroa_idx, align 8, !tbaa !58
  %i.ca = getelementptr inbounds i8, ptr %i.bw, i64 -64
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE3popEv.exit

bb.h:                                             ; preds = %bb.f
  %i.cb = load ptr, ptr %i.az, align 8, !tbaa !298, !noalias !736
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !299 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 448
  %.sroa.0132.0.copyload270 = load i64, ptr %i.ce, align 8, !tbaa !91
  %.sroa.5134.0..sroa_idx271 = getelementptr inbounds nuw i8, ptr %i.cd, i64 472
  %.sroa.5134.0.copyload272 = load i64, ptr %.sroa.5134.0..sroa_idx271, align 8, !tbaa !91
  %.sroa.6136.0..sroa_idx273 = getelementptr inbounds nuw i8, ptr %i.cd, i64 496
  %.sroa.6136.0.copyload274 = load i32, ptr %.sroa.6136.0..sroa_idx273, align 8, !tbaa !58
  %.sroa.7138.0..sroa_idx275 = getelementptr inbounds nuw i8, ptr %i.cd, i64 504
  %.sroa.7138.0.copyload276 = load i32, ptr %.sroa.7138.0..sroa_idx275, align 8, !tbaa !58
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef 512) #20
  %i.cf = load ptr, ptr %i.az, align 8, !tbaa !300
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -8 ; 2 uses
  store ptr %i.cg, ptr %i.az, align 8, !tbaa !298
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !299 ; 3 uses
  store ptr %i.ch, ptr %i.ay, align 8, !tbaa !297
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 512
  store ptr %i.ci, ptr %i.ap, align 8, !tbaa !301
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 448
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE3popEv.exit

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE3popEv.exit: ; preds = %bb.g, %bb.h
  %.sroa.7138.0.copyload283 = phi i32 [ %.sroa.7138.0.copyload, %bb.g ], [ %.sroa.7138.0.copyload276, %bb.h ] ; 3 uses
  %.sroa.6136.0.copyload281 = phi i32 [ %.sroa.6136.0.copyload, %bb.g ], [ %.sroa.6136.0.copyload274, %bb.h ] ; 2 uses
  %.sroa.5134.0.copyload279 = phi i64 [ %.sroa.5134.0.copyload, %bb.g ], [ %.sroa.5134.0.copyload272, %bb.h ] ; 7 uses
  %.sroa.0132.0.copyload277 = phi i64 [ %.sroa.0132.0.copyload, %bb.g ], [ %.sroa.0132.0.copyload270, %bb.h ] ; 9 uses
  %storemerge.i.i = phi ptr [ %i.ca, %bb.g ], [ %i.cj, %bb.h ]
  store ptr %storemerge.i.i, ptr %i.an, align 8, !tbaa !295
  store i64 %.sroa.0132.0.copyload277, ptr %1, align 8, !tbaa !173
  store i64 %.sroa.5134.0.copyload279, ptr %2, align 8, !tbaa !173
  %i.ck = zext i32 %.sroa.7138.0.copyload283 to i64 ; 3 uses
  %i.cl = load ptr, ptr %i.h, align 8, !tbaa !190 ; 2 uses
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %i.ck
  %i.cn = load ptr, ptr %i.w, align 8, !tbaa !190
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.ck ; 2 uses
  %i.cp = load i32, ptr %i.a, align 8, !tbaa !205
  %i.cq = add i32 %i.cp, -1
  %i.cr = icmp eq i32 %.sroa.6136.0.copyload281, %i.cq
  %i.cs = add i32 %.sroa.6136.0.copyload281, 1
  %i.ct = select i1 %i.cr, i32 0, i32 %i.cs       ; 5 uses
  %i.cu = zext i32 %i.ct to i64                   ; 7 uses
  %i.cv = load ptr, ptr %i.co, align 8, !tbaa !160
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cu
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !58 ; 2 uses
  %i.cy = sub i64 %.sroa.5134.0.copyload279, %.sroa.0132.0.copyload277 ; 2 uses
  %i.cz = trunc i64 %i.cy to i32                  ; 4 uses
  %i.da = load i32, ptr %0, align 8, !tbaa !204   ; 2 uses
  %i.db = icmp eq i32 %i.da, %i.cx
  br i1 %i.db, label %.loopexit, label %bb.j, !llvm.loop !707

bb.i:                                             ; preds = %bb.e
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

end_hunk_9
begin_hunk_10_@_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE17_M_reallocate_mapEmb:bb.a
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !299
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !299
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !104

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !299
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !299
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE15_M_allocate_mapEm.exit, !prof !101

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #21 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.m, label %bb.n, !prof !104

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.o, label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !299
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !299
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24

_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24: ; preds = %bb.m, %bb.n, %bb.o
  %i.bc = load ptr, ptr %0, align 8, !tbaa !302
  %i.bd = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bd) #20
  store ptr %i.aq, ptr %0, align 8, !tbaa !302
  store i64 %i.am, ptr %i.k, align 8, !tbaa !304
  br label %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit

_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEES9_ET0_T_SB_SA_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !298
  %i.be = load ptr, ptr %.0, align 8, !tbaa !299  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !297
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 512
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !301
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !298
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !299 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !297
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 512
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !301
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE16_M_push_back_auxIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(60) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !298  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !298
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.j to i64
  %i.k = shl nsw i64 %.neg.i.i, 3
  %i.l = add i64 %i.i, %i.k
  %i.m = and i64 %i.l, -8
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !296
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !297
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 6
  %i.u = add nsw i64 %i.t, %i.m
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !301
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !296
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 6
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 144115188075855871
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !304
  %i.ag = load ptr, ptr %0, align 8, !tbaa !302
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi1EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #21
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !300
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !299
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !295
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !222
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !300
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !298
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !299 ; 3 uses
  store ptr %i.as, ptr %i.o, align 8, !tbaa !297
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 512
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !301
  store ptr %i.as, ptr %i.a, align 8, !tbaa !295
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodeInternalINS_12PointDVectorIjE20PointDVectorIteratorEEEvT_S6_(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef byval(%"class.draco::PointDVector<unsigned int>::PointDVectorIterator") align 8 %1, ptr noundef byval(%"class.draco::PointDVector<unsigned int>::PointDVectorIterator") align 8 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<0>::EncodingStatus", align 8 ; 11 uses
  %4 = alloca %"class.std::stack.182", align 8    ; 19 uses
  %5 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<0>::EncodingStatus", align 8 ; 14 uses
  %6 = alloca %"struct.draco::DynamicIntegerPointsKdTreeEncoder<0>::EncodingStatus", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !773  ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = shl nuw nsw i64 %i.c, 2                  ; 3 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #21 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.e, i8 0, i64 %i.d, i1 false), !tbaa !58
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit:            ; preds = %.noexc, %bb.a
  %.sroa.11151.0 = phi ptr [ null, %bb.a ], [ %i.f, %.noexc ]
  %.sroa.0148.0 = phi ptr [ null, %bb.a ], [ %i.e, %.noexc ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.a ], [ %i.g, %.noexc ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !190  ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !160  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !161
  store ptr %.sroa.0148.0, ptr %i.i, align 8, !tbaa !160
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.k, align 8, !tbaa !162
  store ptr %.sroa.11151.0, ptr %i.l, align 8, !tbaa !161
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.p) #20
  %.pre = load i32, ptr %i.a, align 8, !tbaa !773
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.b, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.q = phi i32 [ %.pre, %bb.b ], [ %i.b, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit ] ; 2 uses
  %.not.i.i.i.i86 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i86, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit93, label %.noexc92

.noexc92:                                         ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 2                  ; 3 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #21 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 0, i64 %i.s, i1 false), !tbaa !58
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit93

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit93:          ; preds = %.noexc92, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.sroa.11144.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.u, %.noexc92 ]
  %.sroa.0141.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.t, %.noexc92 ]
  %.0.i.i.i.i.i.i.i90 = phi ptr [ null, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.v, %.noexc92 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !190  ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !160  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !161
  store ptr %.sroa.0141.0, ptr %i.x, align 8, !tbaa !160
  store ptr %.0.i.i.i.i.i.i.i90, ptr %i.z, align 8, !tbaa !162
  store ptr %.sroa.11144.0, ptr %i.aa, align 8, !tbaa !161
  %.not.i.i.i.i.i94 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i94, label %_ZNSt6vectorIjSaIjEED2Ev.exit97, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit93
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.y to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ae) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit97

_ZNSt6vectorIjSaIjEED2Ev.exit97:                  ; preds = %bb.c, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit93
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 0, ptr %i.ag, align 8, !tbaa !775
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.ah, align 8, !tbaa !776
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !173
  %i.aj = load i64, ptr %3, align 8, !tbaa !173
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = trunc i64 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 %i.al, ptr %i.am, align 4, !tbaa !777
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %4, i64 noundef 0)
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 12 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !309 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !778
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -64
  %.not.i.i = icmp eq ptr %i.ao, %i.ar
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !222
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !309
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64 ; 2 uses
  store ptr %i.at, ptr %i.an, align 8, !tbaa !309
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit97
  invoke void @_ZNSt5dequeIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESaIS7_EE16_M_push_back_auxIJRKS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(60) %3)
          to label %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit_crit_edge unwind label %bb.i

._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit_crit_edge: ; preds = %bb.e
  %.pre235 = load ptr, ptr %i.an, align 8, !tbaa !310
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit: ; preds = %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit_crit_edge, %bb.d
  %i.au = phi ptr [ %.pre235, %._ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit_crit_edge ], [ %i.at, %bb.d ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !310
  %i.ax = icmp eq ptr %i.au, %i.aw
  br i1 %i.ax, label %._crit_edge204, label %.lr.ph203

.lr.ph203:                                        ; preds = %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE4pushERKS7_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %.sroa.2158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2158.0.copyload = load ptr, ptr %.sroa.2158.0..sroa_idx, align 8 ; 4 uses
  %.sroa.3159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3159.0.copyload = load i32, ptr %.sroa.3159.0..sroa_idx, align 8
  %.sroa.4160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.4160.0.copyload = load i32, ptr %.sroa.4160.0..sroa_idx, align 4 ; 2 uses
  %.fr.i.i = freeze i32 %.sroa.3159.0.copyload    ; 5 uses
  %.sroa.3167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.3167.0.copyload = load i32, ptr %.sroa.3167.0..sroa_idx, align 8
  %.sroa.2166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2166.0.copyload = load ptr, ptr %.sroa.2166.0..sroa_idx, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.2158.0.copyload, i64 40 ; 2 uses
  %i.bb = zext i32 %.fr.i.i to i64                ; 10 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.2166.0.copyload, i64 40 ; 2 uses
  %i.bd = zext i32 %.sroa.3167.0.copyload to i64  ; 4 uses
  %.not.i.i.i.i.i100 = icmp eq i32 %.fr.i.i, 0
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.4170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.5171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.6172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 52
  %.sroa.4174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.5175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.6176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 52
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.2158.0.copyload, i64 4
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.br = shl nuw nsw i64 %i.bb, 2
  %i.bs = shl nuw nsw i64 %i.bb, 2
  %i.bt = shl nuw nsw i64 %i.bd, 2
  %i.bu = mul nsw i64 %i.bd, -4
  %min.iters.check = icmp ult i32 %.fr.i.i, 16
  %n.vec = and i64 %i.bb, 4294967288              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bb
  %xtraiter = and i64 %i.bb, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bv = add nsw i64 %i.bb, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph203, %.loopexit
  %i.bw = phi ptr [ %i.au, %.lr.ph203 ], [ %i.iy, %.loopexit ] ; 6 uses
  %i.bx = load ptr, ptr %i.ay, align 8, !tbaa !311, !noalias !779 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bz = getelementptr inbounds i8, ptr %i.bw, i64 -64
  %.sroa.0132.0.copyload = load i64, ptr %i.bz, align 8, !tbaa !91
  %.sroa.5134.0..sroa_idx = getelementptr inbounds i8, ptr %i.bw, i64 -40
  %.sroa.5134.0.copyload = load i64, ptr %.sroa.5134.0..sroa_idx, align 8, !tbaa !91
  %.sroa.6136.0..sroa_idx = getelementptr inbounds i8, ptr %i.bw, i64 -16
  %.sroa.6136.0.copyload = load i32, ptr %.sroa.6136.0..sroa_idx, align 8, !tbaa !58
  %.sroa.7138.0..sroa_idx = getelementptr inbounds i8, ptr %i.bw, i64 -8
  %.sroa.7138.0.copyload = load i32, ptr %.sroa.7138.0..sroa_idx, align 8, !tbaa !58
  %i.ca = getelementptr inbounds i8, ptr %i.bw, i64 -64
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE3popEv.exit

bb.h:                                             ; preds = %bb.f
  %i.cb = load ptr, ptr %i.az, align 8, !tbaa !312, !noalias !779
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !313 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 448
  %.sroa.0132.0.copyload270 = load i64, ptr %i.ce, align 8, !tbaa !91
  %.sroa.5134.0..sroa_idx271 = getelementptr inbounds nuw i8, ptr %i.cd, i64 472
  %.sroa.5134.0.copyload272 = load i64, ptr %.sroa.5134.0..sroa_idx271, align 8, !tbaa !91
  %.sroa.6136.0..sroa_idx273 = getelementptr inbounds nuw i8, ptr %i.cd, i64 496
  %.sroa.6136.0.copyload274 = load i32, ptr %.sroa.6136.0..sroa_idx273, align 8, !tbaa !58
  %.sroa.7138.0..sroa_idx275 = getelementptr inbounds nuw i8, ptr %i.cd, i64 504
  %.sroa.7138.0.copyload276 = load i32, ptr %.sroa.7138.0..sroa_idx275, align 8, !tbaa !58
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef 512) #20
  %i.cf = load ptr, ptr %i.az, align 8, !tbaa !314
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -8 ; 2 uses
  store ptr %i.cg, ptr %i.az, align 8, !tbaa !312
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !313 ; 3 uses
  store ptr %i.ch, ptr %i.ay, align 8, !tbaa !311
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 512
  store ptr %i.ci, ptr %i.ap, align 8, !tbaa !315
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 448
  br label %_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE3popEv.exit

_ZNSt5stackIN5draco33DynamicIntegerPointsKdTreeEncoderILi0EE14EncodingStatusINS0_12PointDVectorIjE20PointDVectorIteratorEEESt5dequeIS7_SaIS7_EEE3popEv.exit: ; preds = %bb.g, %bb.h
  %.sroa.7138.0.copyload283 = phi i32 [ %.sroa.7138.0.copyload, %bb.g ], [ %.sroa.7138.0.copyload276, %bb.h ] ; 3 uses
  %.sroa.6136.0.copyload281 = phi i32 [ %.sroa.6136.0.copyload, %bb.g ], [ %.sroa.6136.0.copyload274, %bb.h ] ; 2 uses
  %.sroa.5134.0.copyload279 = phi i64 [ %.sroa.5134.0.copyload, %bb.g ], [ %.sroa.5134.0.copyload272, %bb.h ] ; 7 uses
  %.sroa.0132.0.copyload277 = phi i64 [ %.sroa.0132.0.copyload, %bb.g ], [ %.sroa.0132.0.copyload270, %bb.h ] ; 9 uses
  %storemerge.i.i = phi ptr [ %i.ca, %bb.g ], [ %i.cj, %bb.h ]
  store ptr %storemerge.i.i, ptr %i.an, align 8, !tbaa !309
  store i64 %.sroa.0132.0.copyload277, ptr %1, align 8, !tbaa !173
  store i64 %.sroa.5134.0.copyload279, ptr %2, align 8, !tbaa !173
  %i.ck = zext i32 %.sroa.7138.0.copyload283 to i64 ; 3 uses
  %i.cl = load ptr, ptr %i.h, align 8, !tbaa !190 ; 2 uses
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %i.ck
  %i.cn = load ptr, ptr %i.w, align 8, !tbaa !190
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.ck ; 2 uses
  %i.cp = load i32, ptr %i.a, align 8, !tbaa !773
  %i.cq = add i32 %i.cp, -1
  %i.cr = icmp eq i32 %.sroa.6136.0.copyload281, %i.cq
  %i.cs = add i32 %.sroa.6136.0.copyload281, 1
  %i.ct = select i1 %i.cr, i32 0, i32 %i.cs       ; 5 uses
  %i.cu = zext i32 %i.ct to i64                   ; 7 uses
  %i.cv = load ptr, ptr %i.co, align 8, !tbaa !160
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cu
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !58 ; 2 uses
  %i.cy = sub i64 %.sroa.5134.0.copyload279, %.sroa.0132.0.copyload277 ; 2 uses
  %i.cz = trunc i64 %i.cy to i32                  ; 4 uses
  %i.da = load i32, ptr %0, align 8, !tbaa !207   ; 2 uses
  %i.db = icmp eq i32 %i.da, %i.cx
  br i1 %i.db, label %.loopexit, label %bb.j, !llvm.loop !749

bb.i:                                             ; preds = %bb.e
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

end_hunk_10
