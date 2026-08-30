Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/contour-combiners?download=true
inline.NumInlined: 515
inline.NumDeleted: 217
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK7msdfgen21SimpleContourCombinerINS_21MultiDistanceSelectorEE8distanceEv:bb.a
  tail call void @_ZNK7msdfgen21MultiDistanceSelector8distanceEv(ptr dead_on_unwind writable sret(%"struct.msdfgen::MultiDistance") align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1)
  ret void
}

declare void @_ZNK7msdfgen21MultiDistanceSelector8distanceEv(ptr dead_on_unwind writable sret(%"struct.msdfgen::MultiDistance") align 8, ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7msdfgen21SimpleContourCombinerINS_28MultiAndTrueDistanceSelectorEEC2ERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat($_ZN7msdfgen21SimpleContourCombinerINS_28MultiAndTrueDistanceSelectorEEC5ERKNS_5ShapeE) align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, i8 0, i64 16, i1 false)
  tail call void @_ZN7msdfgen33PerpendicularDistanceSelectorBaseC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN7msdfgen33PerpendicularDistanceSelectorBaseC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN7msdfgen33PerpendicularDistanceSelectorBaseC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7msdfgen21SimpleContourCombinerINS_28MultiAndTrueDistanceSelectorEE5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7msdfgen21MultiDistanceSelector5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef nonnull align 8 dereferenceable(160) ptr @_ZN7msdfgen21SimpleContourCombinerINS_28MultiAndTrueDistanceSelectorEE12edgeSelectorEi(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK7msdfgen21SimpleContourCombinerINS_28MultiAndTrueDistanceSelectorEE8distanceEv(ptr dead_on_unwind noalias writable sret(%"struct.msdfgen::MultiAndTrueDistance") align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNK7msdfgen28MultiAndTrueDistanceSelector8distanceEv(ptr dead_on_unwind writable sret(%"struct.msdfgen::MultiAndTrueDistance") align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1)
  ret void
}

declare void @_ZNK7msdfgen28MultiAndTrueDistanceSelector8distanceEv(ptr dead_on_unwind writable sret(%"struct.msdfgen::MultiAndTrueDistance") align 8, ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7msdfgen26OverlappingContourCombinerINS_20TrueDistanceSelectorEEC2ERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat($_ZN7msdfgen26OverlappingContourCombinerINS_20TrueDistanceSelectorEEC5ERKNS_5ShapeE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10   ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !14     ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 3 uses
  %i.j = icmp ugt i64 %i.i, 2305843009213693951
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %.not41 = icmp eq ptr %i.d, %i.e
  br i1 %.not41, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = shl nuw nsw i64 %i.i, 2
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #13
          to label %.noexc8 unwind label %bb.i    ; 4 uses

.noexc8:                                          ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !15   ; 4 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %bb.d, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %.noexc8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 4 %i.o, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.d, %.noexc8
  %.not.i8.i = icmp eq ptr %i.o, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.w) #14
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.e, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.n, ptr %i.a, align 8, !tbaa !15
  store ptr %i.n, ptr %i.l, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.i
  store ptr %i.x, ptr %i.k, align 8, !tbaa !19
  %.pre = load ptr, ptr %1, align 8, !tbaa !20
  %.pre23 = load ptr, ptr %i.c, align 8, !tbaa !20
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, %bb.c
  %i.y = phi ptr [ %.pre23, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.d, %bb.c ] ; 3 uses
  %i.z = phi ptr [ %.pre, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.e, %bb.c ] ; 2 uses
  %.not20 = icmp eq ptr %i.z, %i.y
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br label %bb.j

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.pre24 = load ptr, ptr %1, align 8, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.ab = phi ptr [ %i.y, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.pre24, %._crit_edge.loopexit ]
  %.lcssa = phi ptr [ %i.y, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %i.bp, %._crit_edge.loopexit ]
  %i.ac = ptrtoint ptr %.lcssa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 24                ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !21 ; 2 uses
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !24  ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 5                 ; 3 uses
  %i.an = icmp ugt i64 %i.af, %i.am
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.ao = sub nuw nsw i64 %i.af, %i.am
  invoke void @_ZNSt6vectorIN7msdfgen20TrueDistanceSelectorESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ao)
          to label %_ZNSt6vectorIN7msdfgen20TrueDistanceSelectorESaIS1_EE6resizeEm.exit unwind label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.ap = icmp ult i64 %i.af, %i.am
  br i1 %i.ap, label %bb.h, label %_ZNSt6vectorIN7msdfgen20TrueDistanceSelectorESaIS1_EE6resizeEm.exit

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.af ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, %i.aq
  br i1 %.not.i.i, label %_ZNSt6vectorIN7msdfgen20TrueDistanceSelectorESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN7msdfgen20TrueDistanceSelectorES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7msdfgen20TrueDistanceSelectorES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.h
  store ptr %i.aq, ptr %i.ag, align 8, !tbaa !21
  br label %_ZNSt6vectorIN7msdfgen20TrueDistanceSelectorESaIS1_EE6resizeEm.exit

bb.i:                                             ; preds = %bb.f, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %bb.b
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.sroa.015.021 = phi ptr [ %i.z, %.lr.ph ], [ %i.bp, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %i.as = invoke noundef i32 @_ZNK7msdfgen7Contour7windingEv(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.015.021)
          to label %bb.k unwind label %.loopexit  ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.at = load ptr, ptr %i.aa, align 8, !tbaa !18 ; 4 uses
  %i.au = load ptr, ptr %i.k, align 8, !tbaa !19
  %.not.i.i10 = icmp eq ptr %i.at, %i.au
  br i1 %.not.i.i10, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.as, ptr %i.at, align 4, !tbaa !25
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store ptr %i.av, ptr %i.aa, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.m:                                             ; preds = %bb.k
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !15  ; 4 uses
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 5 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775804
  br i1 %i.ba, label %bb.n, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #12
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.m
  %i.bb = ashr exact i64 %i.az, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bb ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.bb
  %i.be = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 2305843009213693951)
  %i.bf = select i1 %i.bd, i64 2305843009213693951, i64 %i.be ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bg = shl nuw nsw i64 %i.bf, 2
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #13
          to label %.noexc12 unwind label %.loopexit ; 4 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %i.az ; 2 uses
  store i32 %i.as, ptr %i.bi, align 4, !tbaa !25
  %i.bj = icmp sgt i64 %i.az, 0
  br i1 %i.bj, label %bb.o, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.o:                                             ; preds = %.noexc12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bh, ptr align 4 %i.aw, i64 %i.az, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.o, %.noexc12
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = sub i64 %i.bm, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bn) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !15
  store ptr %i.bk, ptr %i.aa, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bf
  store ptr %i.bo, ptr %i.k, align 8, !tbaa !19
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.015.021, i64 24 ; 3 uses
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !20
  %.not = icmp eq ptr %i.bp, %i.bq
  br i1 %.not, label %._crit_edge.loopexit, label %bb.j, !llvm.loop !26

.loopexit:                                        ; preds = %bb.j, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZNSt6vectorIN7msdfgen20TrueDistanceSelectorESaIS1_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN7msdfgen20TrueDistanceSelectorES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.h, %bb.g, %bb.f
  ret void

bb.q:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.br = load ptr, ptr %i.b, align 8, !tbaa !24  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7msdfgen20TrueDistanceSelectorESaIS1_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !28
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #14
  br label %_ZNSt6vectorIN7msdfgen20TrueDistanceSelectorESaIS1_EED2Ev.exit

_ZNSt6vectorIN7msdfgen20TrueDistanceSelectorESaIS1_EED2Ev.exit: ; preds = %bb.q, %bb.r
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !15  ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN7msdfgen20TrueDistanceSelectorESaIS1_EED2Ev.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !19
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN7msdfgen20TrueDistanceSelectorESaIS1_EED2Ev.exit, %bb.s
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare noundef i32 @_ZNK7msdfgen7Contour7windingEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7msdfgen26OverlappingContourCombinerINS_20TrueDistanceSelectorEE5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %.not6 = icmp eq ptr %i.b, %i.d
  br i1 %.not6, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.03.07 = phi ptr [ %i.e, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZN7msdfgen20TrueDistanceSelector5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.07, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.03.07, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !30
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !31
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZN7msdfgen26OverlappingContourCombinerINS_20TrueDistanceSelectorEE12edgeSelectorEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = sext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.b
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef double @_ZNK7msdfgen26OverlappingContourCombinerINS_20TrueDistanceSelectorEE8distanceEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.msdfgen::TrueDistanceSelector", align 8 ; 7 uses
  %2 = alloca %"class.msdfgen::TrueDistanceSelector", align 8 ; 7 uses
  %3 = alloca %"class.msdfgen::TrueDistanceSelector", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr i64 %i.g, 5                         ; 5 uses
  %i.i = trunc i64 %i.h to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  store <2 x double> <double f0xFFEFFFFFFFFFFFFF, double 0.000000e+00>, ptr %i.j, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  store <2 x double> <double f0xFFEFFFFFFFFFFFFF, double 0.000000e+00>, ptr %i.k, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 16, i1 false)
  store <2 x double> <double f0xFFEFFFFFFFFFFFFF, double 0.000000e+00>, ptr %i.l, align 8, !tbaa !8
  call void @_ZN7msdfgen20TrueDistanceSelector5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %0)
  call void @_ZN7msdfgen20TrueDistanceSelector5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %0)
  call void @_ZN7msdfgen20TrueDistanceSelector5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.m = icmp sgt i32 %i.i, 0                     ; 4 uses
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %wide.trip.count = and i64 %i.h, 2147483647
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %i.o = call noundef double @_ZNK7msdfgen20TrueDistanceSelector8distanceEv(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 4 uses
  %i.p = call noundef double @_ZNK7msdfgen20TrueDistanceSelector8distanceEv(ptr noundef nonnull align 8 dereferenceable(32) %2) ; 5 uses
  %i.q = call noundef double @_ZNK7msdfgen20TrueDistanceSelector8distanceEv(ptr noundef nonnull align 8 dereferenceable(32) %3) ; 5 uses
  %i.r = fcmp ult double %i.p, 0.000000e+00
  br i1 %i.r, label %bb.l, label %bb.g

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 7 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = call noundef double @_ZNK7msdfgen20TrueDistanceSelector8distanceEv(ptr noundef nonnull align 8 dereferenceable(32) %i.t) ; 2 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %indvars.iv
  call void @_ZN7msdfgen20TrueDistanceSelector5mergeERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !25   ; 2 uses
  %i.aa = icmp slt i32 %i.z, 1
  %i.ab = fcmp ult double %i.u, 0.000000e+00
  %or.cond = or i1 %i.ab, %i.aa
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv
  call void @_ZN7msdfgen20TrueDistanceSelector5mergeERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !15
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv
  %.pre104 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !25
  br label %bb.d
end_hunk_0
begin_hunk_1_@_ZNK7msdfgen26OverlappingContourCombinerINS_20TrueDistanceSelectorEE8distanceEv:bb.a
  br i1 %.not, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.br, i64 %indvars.iv99
  %i.bt = call noundef double @_ZNK7msdfgen20TrueDistanceSelector8distanceEv(ptr noundef nonnull align 8 dereferenceable(32) %i.bs) ; 3 uses
  %i.bu = fmul double %.581, %i.bt
  %i.bv = fcmp ult double %i.bu, 0.000000e+00
  br i1 %i.bv, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = call double @llvm.fabs.f64(double %i.bt)
  %i.bx = call double @llvm.fabs.f64(double %.581)
  %i.by = fcmp olt double %i.bw, %i.bx
  br i1 %i.by, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.u, %bb.r
  %.6 = phi double [ %.581, %bb.r ], [ %.581, %bb.s ], [ %i.bt, %bb.u ], [ %.581, %bb.t ] ; 2 uses
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond103.not = icmp eq i64 %indvars.iv.next100, %wide.trip.count102
  br i1 %exitcond103.not, label %._crit_edge85, label %bb.r, !llvm.loop !35

bb.w:                                             ; preds = %._crit_edge85
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge85, %bb.w, %bb.l, %bb.m
  %.056 = phi double [ %i.o, %bb.l ], [ %i.o, %bb.m ], [ %i.o, %bb.w ], [ %.5.lcssa, %._crit_edge85 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret double %.056
}

declare void @_ZN7msdfgen20TrueDistanceSelector5mergeERKS0_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEC2ERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat($_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEC5ERKNS_5ShapeE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10   ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !14     ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 3 uses
  %i.j = icmp ugt i64 %i.i, 2305843009213693951
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %.not41 = icmp eq ptr %i.d, %i.e
  br i1 %.not41, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = shl nuw nsw i64 %i.i, 2
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #13
          to label %.noexc8 unwind label %bb.i    ; 4 uses

.noexc8:                                          ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !15   ; 4 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %bb.d, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %.noexc8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 4 %i.o, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.d, %.noexc8
  %.not.i8.i = icmp eq ptr %i.o, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.w) #14
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.e, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.n, ptr %i.a, align 8, !tbaa !15
  store ptr %i.n, ptr %i.l, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.i
  store ptr %i.x, ptr %i.k, align 8, !tbaa !19
  %.pre = load ptr, ptr %1, align 8, !tbaa !20
  %.pre23 = load ptr, ptr %i.c, align 8, !tbaa !20
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, %bb.c
  %i.y = phi ptr [ %.pre23, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.d, %bb.c ] ; 3 uses
  %i.z = phi ptr [ %.pre, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.e, %bb.c ] ; 2 uses
  %.not20 = icmp eq ptr %i.z, %i.y
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br label %bb.j

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.pre24 = load ptr, ptr %1, align 8, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.ab = phi ptr [ %i.y, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.pre24, %._crit_edge.loopexit ]
  %.lcssa = phi ptr [ %i.y, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %i.bp, %._crit_edge.loopexit ]
  %i.ac = ptrtoint ptr %.lcssa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 24                ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !36 ; 2 uses
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !39  ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 6                 ; 3 uses
  %i.an = icmp ugt i64 %i.af, %i.am
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.ao = sub nuw nsw i64 %i.af, %i.am
  invoke void @_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ao)
          to label %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EE6resizeEm.exit unwind label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.ap = icmp ult i64 %i.af, %i.am
  br i1 %i.ap, label %bb.h, label %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EE6resizeEm.exit

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw [64 x i8], ptr %i.ai, i64 %i.af ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, %i.aq
  br i1 %.not.i.i, label %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN7msdfgen29PerpendicularDistanceSelectorES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7msdfgen29PerpendicularDistanceSelectorES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.h
  store ptr %i.aq, ptr %i.ag, align 8, !tbaa !36
  br label %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EE6resizeEm.exit

bb.i:                                             ; preds = %bb.f, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %bb.b
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.sroa.015.021 = phi ptr [ %i.z, %.lr.ph ], [ %i.bp, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %i.as = invoke noundef i32 @_ZNK7msdfgen7Contour7windingEv(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.015.021)
          to label %bb.k unwind label %.loopexit  ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.at = load ptr, ptr %i.aa, align 8, !tbaa !18 ; 4 uses
  %i.au = load ptr, ptr %i.k, align 8, !tbaa !19
  %.not.i.i10 = icmp eq ptr %i.at, %i.au
  br i1 %.not.i.i10, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.as, ptr %i.at, align 4, !tbaa !25
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store ptr %i.av, ptr %i.aa, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.m:                                             ; preds = %bb.k
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !15  ; 4 uses
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 5 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775804
  br i1 %i.ba, label %bb.n, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #12
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.m
  %i.bb = ashr exact i64 %i.az, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bb ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.bb
  %i.be = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 2305843009213693951)
  %i.bf = select i1 %i.bd, i64 2305843009213693951, i64 %i.be ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bg = shl nuw nsw i64 %i.bf, 2
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #13
          to label %.noexc12 unwind label %.loopexit ; 4 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %i.az ; 2 uses
  store i32 %i.as, ptr %i.bi, align 4, !tbaa !25
  %i.bj = icmp sgt i64 %i.az, 0
  br i1 %i.bj, label %bb.o, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.o:                                             ; preds = %.noexc12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bh, ptr align 4 %i.aw, i64 %i.az, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.o, %.noexc12
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = sub i64 %i.bm, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bn) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !15
  store ptr %i.bk, ptr %i.aa, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bf
  store ptr %i.bo, ptr %i.k, align 8, !tbaa !19
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.015.021, i64 24 ; 3 uses
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !20
  %.not = icmp eq ptr %i.bp, %i.bq
  br i1 %.not, label %._crit_edge.loopexit, label %bb.j, !llvm.loop !40

.loopexit:                                        ; preds = %bb.j, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN7msdfgen29PerpendicularDistanceSelectorES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.h, %bb.g, %bb.f
  ret void

bb.q:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.br = load ptr, ptr %i.b, align 8, !tbaa !39  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !41
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #14
  br label %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit

_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit: ; preds = %bb.q, %bb.r
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !15  ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !19
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit, %bb.s
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEE5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42
  %.not6 = icmp eq ptr %i.b, %i.d
  br i1 %.not6, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.03.07 = phi ptr [ %i.e, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZN7msdfgen29PerpendicularDistanceSelector5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.03.07, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.03.07, i64 64 ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !42
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !43
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef nonnull align 8 dereferenceable(64) ptr @_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEE12edgeSelectorEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = sext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.b
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef double @_ZNK7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEE8distanceEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.msdfgen::PerpendicularDistanceSelector", align 8 ; 7 uses
  %2 = alloca %"class.msdfgen::PerpendicularDistanceSelector", align 8 ; 7 uses
  %3 = alloca %"class.msdfgen::PerpendicularDistanceSelector", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr i64 %i.g, 6                         ; 5 uses
  %i.i = trunc i64 %i.h to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @_ZN7msdfgen33PerpendicularDistanceSelectorBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZN7msdfgen33PerpendicularDistanceSelectorBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %2)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN7msdfgen33PerpendicularDistanceSelectorBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  call void @_ZN7msdfgen29PerpendicularDistanceSelector5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(16) %0)
  call void @_ZN7msdfgen29PerpendicularDistanceSelector5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(16) %0)
  call void @_ZN7msdfgen29PerpendicularDistanceSelector5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.m = icmp sgt i32 %i.i, 0                     ; 4 uses
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %wide.trip.count = and i64 %i.h, 2147483647
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %i.o = call noundef double @_ZNK7msdfgen29PerpendicularDistanceSelector8distanceEv(ptr noundef nonnull align 8 dereferenceable(64) %1) ; 4 uses
  %i.p = call noundef double @_ZNK7msdfgen29PerpendicularDistanceSelector8distanceEv(ptr noundef nonnull align 8 dereferenceable(64) %2) ; 5 uses
  %i.q = call noundef double @_ZNK7msdfgen29PerpendicularDistanceSelector8distanceEv(ptr noundef nonnull align 8 dereferenceable(64) %3) ; 5 uses
  %i.r = fcmp ult double %i.p, 0.000000e+00
  br i1 %i.r, label %bb.l, label %bb.g

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 7 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = call noundef double @_ZNK7msdfgen29PerpendicularDistanceSelector8distanceEv(ptr noundef nonnull align 8 dereferenceable(64) %i.t) ; 2 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %i.v, i64 %indvars.iv
  call void @_ZN7msdfgen33PerpendicularDistanceSelectorBase5mergeERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.w)
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !25   ; 2 uses
  %i.aa = icmp slt i32 %i.z, 1
  %i.ab = fcmp ult double %i.u, 0.000000e+00
  %or.cond = or i1 %i.ab, %i.aa
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.ad = getelementptr inbounds nuw [64 x i8], ptr %i.ac, i64 %indvars.iv
  call void @_ZN7msdfgen33PerpendicularDistanceSelectorBase5mergeERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.ad)
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !15
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv
  %.pre104 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ae = phi i32 [ %.pre104, %bb.c ], [ %i.z, %bb.b ]
  %i.af = icmp sgt i32 %i.ae, -1
  %i.ag = fcmp ugt double %i.u, 0.000000e+00
  %or.cond68 = or i1 %i.ag, %i.af
  br i1 %or.cond68, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.ai = getelementptr inbounds nuw [64 x i8], ptr %i.ah, i64 %indvars.iv
  call void @_ZN7msdfgen33PerpendicularDistanceSelectorBase5mergeERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.ai)
  br label %bb.f
end_hunk_1
begin_hunk_2_@_ZNK7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEE8distanceEv:bb.a
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv99
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !25
  %.not = icmp eq i32 %i.bq, %.054
  br i1 %.not, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.bs = getelementptr inbounds nuw [64 x i8], ptr %i.br, i64 %indvars.iv99
  %i.bt = call noundef double @_ZNK7msdfgen29PerpendicularDistanceSelector8distanceEv(ptr noundef nonnull align 8 dereferenceable(64) %i.bs) ; 3 uses
  %i.bu = fmul double %.581, %i.bt
  %i.bv = fcmp ult double %i.bu, 0.000000e+00
  br i1 %i.bv, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = call double @llvm.fabs.f64(double %i.bt)
  %i.bx = call double @llvm.fabs.f64(double %.581)
  %i.by = fcmp olt double %i.bw, %i.bx
  br i1 %i.by, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.u, %bb.r
  %.6 = phi double [ %.581, %bb.r ], [ %.581, %bb.s ], [ %i.bt, %bb.u ], [ %.581, %bb.t ] ; 2 uses
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond103.not = icmp eq i64 %indvars.iv.next100, %wide.trip.count102
  br i1 %exitcond103.not, label %._crit_edge85, label %bb.r, !llvm.loop !47

bb.w:                                             ; preds = %._crit_edge85
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge85, %bb.w, %bb.l, %bb.m
  %.056 = phi double [ %i.o, %bb.l ], [ %i.o, %bb.m ], [ %i.o, %bb.w ], [ %.5.lcssa, %._crit_edge85 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret double %.056
}

declare void @_ZN7msdfgen33PerpendicularDistanceSelectorBase5mergeERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7msdfgen26OverlappingContourCombinerINS_21MultiDistanceSelectorEEC2ERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat($_ZN7msdfgen26OverlappingContourCombinerINS_21MultiDistanceSelectorEEC5ERKNS_5ShapeE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10   ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !14     ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 3 uses
  %i.j = icmp ugt i64 %i.i, 2305843009213693951
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %.not41 = icmp eq ptr %i.d, %i.e
  br i1 %.not41, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = shl nuw nsw i64 %i.i, 2
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #13
          to label %.noexc8 unwind label %bb.i    ; 4 uses

.noexc8:                                          ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !15   ; 4 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %bb.d, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %.noexc8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 4 %i.o, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.d, %.noexc8
  %.not.i8.i = icmp eq ptr %i.o, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.w) #14
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.e, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.n, ptr %i.a, align 8, !tbaa !15
  store ptr %i.n, ptr %i.l, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.i
  store ptr %i.x, ptr %i.k, align 8, !tbaa !19
  %.pre = load ptr, ptr %1, align 8, !tbaa !20
  %.pre23 = load ptr, ptr %i.c, align 8, !tbaa !20
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, %bb.c
  %i.y = phi ptr [ %.pre23, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.d, %bb.c ] ; 3 uses
  %i.z = phi ptr [ %.pre, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.e, %bb.c ] ; 2 uses
  %.not20 = icmp eq ptr %i.z, %i.y
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br label %bb.j

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.pre24 = load ptr, ptr %1, align 8, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.ab = phi ptr [ %i.y, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.pre24, %._crit_edge.loopexit ]
  %.lcssa = phi ptr [ %i.y, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %i.bp, %._crit_edge.loopexit ]
  %i.ac = ptrtoint ptr %.lcssa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 24                ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !48 ; 2 uses
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !51  ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = sdiv exact i64 %i.al, 160               ; 3 uses
  %i.an = icmp ugt i64 %i.af, %i.am
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.ao = sub nuw nsw i64 %i.af, %i.am
  invoke void @_ZNSt6vectorIN7msdfgen21MultiDistanceSelectorESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ao)
          to label %_ZNSt6vectorIN7msdfgen21MultiDistanceSelectorESaIS1_EE6resizeEm.exit unwind label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.ap = icmp ult i64 %i.af, %i.am
  br i1 %i.ap, label %bb.h, label %_ZNSt6vectorIN7msdfgen21MultiDistanceSelectorESaIS1_EE6resizeEm.exit

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw [160 x i8], ptr %i.ai, i64 %i.af ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, %i.aq
  br i1 %.not.i.i, label %_ZNSt6vectorIN7msdfgen21MultiDistanceSelectorESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN7msdfgen21MultiDistanceSelectorES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7msdfgen21MultiDistanceSelectorES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.h
  store ptr %i.aq, ptr %i.ag, align 8, !tbaa !48
  br label %_ZNSt6vectorIN7msdfgen21MultiDistanceSelectorESaIS1_EE6resizeEm.exit

bb.i:                                             ; preds = %bb.f, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %bb.b
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.sroa.015.021 = phi ptr [ %i.z, %.lr.ph ], [ %i.bp, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %i.as = invoke noundef i32 @_ZNK7msdfgen7Contour7windingEv(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.015.021)
          to label %bb.k unwind label %.loopexit  ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.at = load ptr, ptr %i.aa, align 8, !tbaa !18 ; 4 uses
  %i.au = load ptr, ptr %i.k, align 8, !tbaa !19
  %.not.i.i10 = icmp eq ptr %i.at, %i.au
  br i1 %.not.i.i10, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.as, ptr %i.at, align 4, !tbaa !25
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store ptr %i.av, ptr %i.aa, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.m:                                             ; preds = %bb.k
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !15  ; 4 uses
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 5 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775804
  br i1 %i.ba, label %bb.n, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #12
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.m
  %i.bb = ashr exact i64 %i.az, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bb ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.bb
  %i.be = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 2305843009213693951)
  %i.bf = select i1 %i.bd, i64 2305843009213693951, i64 %i.be ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bg = shl nuw nsw i64 %i.bf, 2
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #13
          to label %.noexc12 unwind label %.loopexit ; 4 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %i.az ; 2 uses
  store i32 %i.as, ptr %i.bi, align 4, !tbaa !25
  %i.bj = icmp sgt i64 %i.az, 0
  br i1 %i.bj, label %bb.o, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.o:                                             ; preds = %.noexc12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bh, ptr align 4 %i.aw, i64 %i.az, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.o, %.noexc12
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = sub i64 %i.bm, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bn) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !15
  store ptr %i.bk, ptr %i.aa, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bf
  store ptr %i.bo, ptr %i.k, align 8, !tbaa !19
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.015.021, i64 24 ; 3 uses
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !20
  %.not = icmp eq ptr %i.bp, %i.bq
  br i1 %.not, label %._crit_edge.loopexit, label %bb.j, !llvm.loop !52

.loopexit:                                        ; preds = %bb.j, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZNSt6vectorIN7msdfgen21MultiDistanceSelectorESaIS1_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN7msdfgen21MultiDistanceSelectorES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.h, %bb.g, %bb.f
  ret void

bb.q:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.br = load ptr, ptr %i.b, align 8, !tbaa !51  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7msdfgen21MultiDistanceSelectorESaIS1_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !53
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #14
  br label %_ZNSt6vectorIN7msdfgen21MultiDistanceSelectorESaIS1_EED2Ev.exit

_ZNSt6vectorIN7msdfgen21MultiDistanceSelectorESaIS1_EED2Ev.exit: ; preds = %bb.q, %bb.r
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !15  ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN7msdfgen21MultiDistanceSelectorESaIS1_EED2Ev.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !19
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN7msdfgen21MultiDistanceSelectorESaIS1_EED2Ev.exit, %bb.s
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7msdfgen26OverlappingContourCombinerINS_21MultiDistanceSelectorEE5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54
  %.not6 = icmp eq ptr %i.b, %i.d
  br i1 %.not6, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.03.07 = phi ptr [ %i.e, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZN7msdfgen21MultiDistanceSelector5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.03.07, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.03.07, i64 160 ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !54
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !55
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef nonnull align 8 dereferenceable(160) ptr @_ZN7msdfgen26OverlappingContourCombinerINS_21MultiDistanceSelectorEE12edgeSelectorEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = sext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw [160 x i8], ptr %i.c, i64 %i.b
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK7msdfgen26OverlappingContourCombinerINS_21MultiDistanceSelectorEE8distanceEv(ptr dead_on_unwind noalias writable sret(%"struct.msdfgen::MultiDistance") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.msdfgen::MultiDistanceSelector", align 8 ; 9 uses
  %3 = alloca %"class.msdfgen::MultiDistanceSelector", align 8 ; 9 uses
  %4 = alloca %"class.msdfgen::MultiDistanceSelector", align 8 ; 9 uses
  %5 = alloca %"struct.msdfgen::MultiDistance", align 8 ; 7 uses
  %6 = alloca %"struct.msdfgen::MultiDistance", align 8 ; 7 uses
  %7 = alloca %"struct.msdfgen::MultiDistance", align 8 ; 6 uses
  %8 = alloca %"struct.msdfgen::MultiDistance", align 8 ; 6 uses
  %9 = alloca %"struct.msdfgen::MultiDistance", align 8 ; 6 uses
  %10 = alloca %"struct.msdfgen::MultiDistance", align 8 ; 6 uses
  %11 = alloca %"struct.msdfgen::MultiDistance", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 160                 ; 5 uses
  %i.i = trunc i64 %i.h to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %2, i8 0, i64 16, i1 false)
  call void @_ZN7msdfgen33PerpendicularDistanceSelectorBaseC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZN7msdfgen33PerpendicularDistanceSelectorBaseC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZN7msdfgen33PerpendicularDistanceSelectorBaseC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %3, i8 0, i64 16, i1 false)
  call void @_ZN7msdfgen33PerpendicularDistanceSelectorBaseC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZN7msdfgen33PerpendicularDistanceSelectorBaseC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZN7msdfgen33PerpendicularDistanceSelectorBaseC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %4, i8 0, i64 16, i1 false)
  call void @_ZN7msdfgen33PerpendicularDistanceSelectorBaseC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZN7msdfgen33PerpendicularDistanceSelectorBaseC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZN7msdfgen33PerpendicularDistanceSelectorBaseC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.r)
  call void @_ZN7msdfgen21MultiDistanceSelector5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @_ZN7msdfgen21MultiDistanceSelector5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(160) %3, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @_ZN7msdfgen21MultiDistanceSelector5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(160) %4, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.s = icmp sgt i32 %i.i, 0                     ; 4 uses
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %wide.trip.count = and i64 %i.h, 2147483647
  br label %bb.b

._crit_edge:                                      ; preds = %.thread, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @_ZNK7msdfgen21MultiDistanceSelector8distanceEv(ptr dead_on_unwind nonnull writable sret(%"struct.msdfgen::MultiDistance") align 8 %6, ptr noundef nonnull align 8 dereferenceable(160) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @_ZNK7msdfgen21MultiDistanceSelector8distanceEv(ptr dead_on_unwind nonnull writable sret(%"struct.msdfgen::MultiDistance") align 8 %7, ptr noundef nonnull align 8 dereferenceable(160) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @_ZNK7msdfgen21MultiDistanceSelector8distanceEv(ptr dead_on_unwind nonnull writable sret(%"struct.msdfgen::MultiDistance") align 8 %8, ptr noundef nonnull align 8 dereferenceable(160) %4)
  %i.w = load double, ptr %7, align 8, !tbaa !56  ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.y = load double, ptr %i.x, align 8, !tbaa !58 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aa = load double, ptr %i.z, align 8, !tbaa !59 ; 4 uses
  %i.ab = fcmp olt double %i.y, %i.w
  %i.ac = select i1 %i.ab, double %i.y, double %i.w ; 2 uses
  %i.ad = fcmp olt double %i.w, %i.y
  %i.ae = select i1 %i.ad, double %i.y, double %i.w ; 2 uses
  %i.af = fcmp olt double %i.aa, %i.ae
  %i.ag = select i1 %i.af, double %i.aa, double %i.ae ; 2 uses
  %i.ah = fcmp olt double %i.ac, %i.ag
  %i.ai = select i1 %i.ah, double %i.ag, double %i.ac ; 3 uses
  %i.aj = load double, ptr %8, align 8, !tbaa !56 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.al = load double, ptr %i.ak, align 8, !tbaa !58 ; 6 uses
end_hunk_2
begin_hunk_3_@_ZNK7msdfgen26OverlappingContourCombinerINS_21MultiDistanceSelectorEE8distanceEv:bb.a
  %i.gw = select i1 %i.gv, double %i.gu, double %i.gq ; 2 uses
  %i.gx = fmul double %i.gw, %i.go
  %i.gy = fcmp ult double %i.gx, 0.000000e+00
  br i1 %i.gy, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gz = call double @llvm.fabs.f64(double %i.go)
  %i.ha = call double @llvm.fabs.f64(double %i.gw)
  %i.hb = fcmp olt double %i.gz, %i.ha
  br i1 %i.hb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.sroa.21.8 = phi double [ %.sroa.21.7102, %bb.y ], [ %i.gg, %bb.aa ], [ %.sroa.21.7102, %bb.z ]
  %.sroa.15.8 = phi double [ %.sroa.15.7103, %bb.y ], [ %i.gf, %bb.aa ], [ %.sroa.15.7103, %bb.z ]
  %.sroa.0.8 = phi double [ %.sroa.0.7104, %bb.y ], [ %i.ge, %bb.aa ], [ %.sroa.0.7104, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %bb.ac

bb.ac:                                            ; preds = %bb.x, %bb.ab
  %.sroa.21.9 = phi double [ %.sroa.21.7102, %bb.x ], [ %.sroa.21.8, %bb.ab ] ; 2 uses
  %.sroa.15.9 = phi double [ %.sroa.15.7103, %bb.x ], [ %.sroa.15.8, %bb.ab ] ; 2 uses
  %.sroa.0.9 = phi double [ %.sroa.0.7104, %bb.x ], [ %.sroa.0.8, %bb.ab ] ; 2 uses
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count127
  br i1 %exitcond128.not, label %._crit_edge108, label %bb.x, !llvm.loop !64

bb.ad:                                            ; preds = %._crit_edge108, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

declare void @_ZN7msdfgen21MultiDistanceSelector5mergeERKS0_(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7msdfgen26OverlappingContourCombinerINS_28MultiAndTrueDistanceSelectorEEC2ERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat($_ZN7msdfgen26OverlappingContourCombinerINS_28MultiAndTrueDistanceSelectorEEC5ERKNS_5ShapeE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10   ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !14     ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 3 uses
  %i.j = icmp ugt i64 %i.i, 2305843009213693951
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %.not41 = icmp eq ptr %i.d, %i.e
  br i1 %.not41, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = shl nuw nsw i64 %i.i, 2
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #13
          to label %.noexc8 unwind label %bb.i    ; 4 uses

.noexc8:                                          ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !15   ; 4 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %bb.d, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %.noexc8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 4 %i.o, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.d, %.noexc8
  %.not.i8.i = icmp eq ptr %i.o, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.w) #14
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.e, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.n, ptr %i.a, align 8, !tbaa !15
  store ptr %i.n, ptr %i.l, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.i
  store ptr %i.x, ptr %i.k, align 8, !tbaa !19
  %.pre = load ptr, ptr %1, align 8, !tbaa !20
  %.pre23 = load ptr, ptr %i.c, align 8, !tbaa !20
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, %bb.c
  %i.y = phi ptr [ %.pre23, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.d, %bb.c ] ; 3 uses
  %i.z = phi ptr [ %.pre, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.e, %bb.c ] ; 2 uses
  %.not20 = icmp eq ptr %i.z, %i.y
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br label %bb.j

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.pre24 = load ptr, ptr %1, align 8, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.ab = phi ptr [ %i.y, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.pre24, %._crit_edge.loopexit ]
  %.lcssa = phi ptr [ %i.y, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %i.bp, %._crit_edge.loopexit ]
  %i.ac = ptrtoint ptr %.lcssa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 24                ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !65 ; 2 uses
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !68  ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = sdiv exact i64 %i.al, 160               ; 3 uses
  %i.an = icmp ugt i64 %i.af, %i.am
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.ao = sub nuw nsw i64 %i.af, %i.am
  invoke void @_ZNSt6vectorIN7msdfgen28MultiAndTrueDistanceSelectorESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ao)
          to label %_ZNSt6vectorIN7msdfgen28MultiAndTrueDistanceSelectorESaIS1_EE6resizeEm.exit unwind label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.ap = icmp ult i64 %i.af, %i.am
  br i1 %i.ap, label %bb.h, label %_ZNSt6vectorIN7msdfgen28MultiAndTrueDistanceSelectorESaIS1_EE6resizeEm.exit

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw [160 x i8], ptr %i.ai, i64 %i.af ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, %i.aq
  br i1 %.not.i.i, label %_ZNSt6vectorIN7msdfgen28MultiAndTrueDistanceSelectorESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN7msdfgen28MultiAndTrueDistanceSelectorES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7msdfgen28MultiAndTrueDistanceSelectorES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.h
  store ptr %i.aq, ptr %i.ag, align 8, !tbaa !65
  br label %_ZNSt6vectorIN7msdfgen28MultiAndTrueDistanceSelectorESaIS1_EE6resizeEm.exit

bb.i:                                             ; preds = %bb.f, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %bb.b
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.sroa.015.021 = phi ptr [ %i.z, %.lr.ph ], [ %i.bp, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %i.as = invoke noundef i32 @_ZNK7msdfgen7Contour7windingEv(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.015.021)
          to label %bb.k unwind label %.loopexit  ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.at = load ptr, ptr %i.aa, align 8, !tbaa !18 ; 4 uses
  %i.au = load ptr, ptr %i.k, align 8, !tbaa !19
  %.not.i.i10 = icmp eq ptr %i.at, %i.au
  br i1 %.not.i.i10, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.as, ptr %i.at, align 4, !tbaa !25
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store ptr %i.av, ptr %i.aa, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.m:                                             ; preds = %bb.k
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !15  ; 4 uses
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 5 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775804
  br i1 %i.ba, label %bb.n, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #12
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.m
  %i.bb = ashr exact i64 %i.az, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bb ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.bb
  %i.be = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 2305843009213693951)
  %i.bf = select i1 %i.bd, i64 2305843009213693951, i64 %i.be ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bg = shl nuw nsw i64 %i.bf, 2
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #13
          to label %.noexc12 unwind label %.loopexit ; 4 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %i.az ; 2 uses
  store i32 %i.as, ptr %i.bi, align 4, !tbaa !25
  %i.bj = icmp sgt i64 %i.az, 0
  br i1 %i.bj, label %bb.o, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.o:                                             ; preds = %.noexc12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bh, ptr align 4 %i.aw, i64 %i.az, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.o, %.noexc12
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = sub i64 %i.bm, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bn) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !15
  store ptr %i.bk, ptr %i.aa, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bf
  store ptr %i.bo, ptr %i.k, align 8, !tbaa !19
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.015.021, i64 24 ; 3 uses
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !20
  %.not = icmp eq ptr %i.bp, %i.bq
  br i1 %.not, label %._crit_edge.loopexit, label %bb.j, !llvm.loop !69

.loopexit:                                        ; preds = %bb.j, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZNSt6vectorIN7msdfgen28MultiAndTrueDistanceSelectorESaIS1_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN7msdfgen28MultiAndTrueDistanceSelectorES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.h, %bb.g, %bb.f
  ret void

bb.q:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.br = load ptr, ptr %i.b, align 8, !tbaa !68  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7msdfgen28MultiAndTrueDistanceSelectorESaIS1_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !70
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #14
  br label %_ZNSt6vectorIN7msdfgen28MultiAndTrueDistanceSelectorESaIS1_EED2Ev.exit

_ZNSt6vectorIN7msdfgen28MultiAndTrueDistanceSelectorESaIS1_EED2Ev.exit: ; preds = %bb.q, %bb.r
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !15  ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN7msdfgen28MultiAndTrueDistanceSelectorESaIS1_EED2Ev.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !19
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN7msdfgen28MultiAndTrueDistanceSelectorESaIS1_EED2Ev.exit, %bb.s
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7msdfgen26OverlappingContourCombinerINS_28MultiAndTrueDistanceSelectorEE5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71
  %.not6 = icmp eq ptr %i.b, %i.d
  br i1 %.not6, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.03.07 = phi ptr [ %i.e, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZN7msdfgen21MultiDistanceSelector5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.03.07, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.03.07, i64 160 ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !71
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !72
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef nonnull align 8 dereferenceable(160) ptr @_ZN7msdfgen26OverlappingContourCombinerINS_28MultiAndTrueDistanceSelectorEE12edgeSelectorEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = sext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.d = getelementptr inbounds nuw [160 x i8], ptr %i.c, i64 %i.b
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK7msdfgen26OverlappingContourCombinerINS_28MultiAndTrueDistanceSelectorEE8distanceEv(ptr dead_on_unwind noalias writable sret(%"struct.msdfgen::MultiAndTrueDistance") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.msdfgen::MultiAndTrueDistanceSelector", align 8 ; 9 uses
  %3 = alloca %"class.msdfgen::MultiAndTrueDistanceSelector", align 8 ; 9 uses
  %4 = alloca %"class.msdfgen::MultiAndTrueDistanceSelector", align 8 ; 9 uses
  %5 = alloca %"struct.msdfgen::MultiAndTrueDistance", align 8 ; 7 uses
  %6 = alloca %"struct.msdfgen::MultiAndTrueDistance", align 8 ; 8 uses
  %7 = alloca %"struct.msdfgen::MultiAndTrueDistance", align 8 ; 7 uses
  %8 = alloca %"struct.msdfgen::MultiAndTrueDistance", align 8 ; 7 uses
  %9 = alloca %"struct.msdfgen::MultiAndTrueDistance", align 8 ; 7 uses
  %10 = alloca %"struct.msdfgen::MultiAndTrueDistance", align 8 ; 7 uses
  %11 = alloca %"struct.msdfgen::MultiAndTrueDistance", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 160                 ; 5 uses
  %i.i = trunc i64 %i.h to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %2, i8 0, i64 16, i1 false)
  call void @_ZN7msdfgen33PerpendicularDistanceSelectorBaseC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZN7msdfgen33PerpendicularDistanceSelectorBaseC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZN7msdfgen33PerpendicularDistanceSelectorBaseC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %3, i8 0, i64 16, i1 false)
  call void @_ZN7msdfgen33PerpendicularDistanceSelectorBaseC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZN7msdfgen33PerpendicularDistanceSelectorBaseC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZN7msdfgen33PerpendicularDistanceSelectorBaseC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %4, i8 0, i64 16, i1 false)
  call void @_ZN7msdfgen33PerpendicularDistanceSelectorBaseC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZN7msdfgen33PerpendicularDistanceSelectorBaseC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZN7msdfgen33PerpendicularDistanceSelectorBaseC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.r)
  call void @_ZN7msdfgen21MultiDistanceSelector5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @_ZN7msdfgen21MultiDistanceSelector5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(160) %3, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @_ZN7msdfgen21MultiDistanceSelector5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(160) %4, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.s = icmp sgt i32 %i.i, 0                     ; 4 uses
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %wide.trip.count = and i64 %i.h, 2147483647
  br label %bb.b

._crit_edge:                                      ; preds = %.thread, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @_ZNK7msdfgen28MultiAndTrueDistanceSelector8distanceEv(ptr dead_on_unwind nonnull writable sret(%"struct.msdfgen::MultiAndTrueDistance") align 8 %6, ptr noundef nonnull align 8 dereferenceable(160) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @_ZNK7msdfgen28MultiAndTrueDistanceSelector8distanceEv(ptr dead_on_unwind nonnull writable sret(%"struct.msdfgen::MultiAndTrueDistance") align 8 %7, ptr noundef nonnull align 8 dereferenceable(160) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @_ZNK7msdfgen28MultiAndTrueDistanceSelector8distanceEv(ptr dead_on_unwind nonnull writable sret(%"struct.msdfgen::MultiAndTrueDistance") align 8 %8, ptr noundef nonnull align 8 dereferenceable(160) %4)
  %i.w = load double, ptr %7, align 8, !tbaa !56  ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.y = load double, ptr %i.x, align 8, !tbaa !58 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aa = load double, ptr %i.z, align 8, !tbaa !59 ; 4 uses
  %i.ab = fcmp olt double %i.y, %i.w
  %i.ac = select i1 %i.ab, double %i.y, double %i.w ; 2 uses
  %i.ad = fcmp olt double %i.w, %i.y
  %i.ae = select i1 %i.ad, double %i.y, double %i.w ; 2 uses
  %i.af = fcmp olt double %i.aa, %i.ae
  %i.ag = select i1 %i.af, double %i.aa, double %i.ae ; 2 uses
  %i.ah = fcmp olt double %i.ac, %i.ag
  %i.ai = select i1 %i.ah, double %i.ag, double %i.ac ; 3 uses
  %i.aj = load double, ptr %8, align 8, !tbaa !56 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.al = load double, ptr %i.ak, align 8, !tbaa !58 ; 6 uses
end_hunk_3
