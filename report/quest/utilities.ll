Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/utilities?download=true
inline.NumInlined: 1369
inline.NumDeleted: 580
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_Z17util_getBraQubitsSt6vectorIiSaIiEE5Qureg:bb.a
  store i32 %i.r, ptr %i.n, align 4, !tbaa !33
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.g:                                             ; preds = %bb.e
  %i.s = ptrtoint ptr %i.n to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t                       ; 6 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775804
  br i1 %i.v, label %bb.h, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.n, ptr %i.a, align 8
  store ptr %i.o, ptr %i.i, align 8
  store ptr %i.p, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #29
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.w = ashr exact i64 %i.u, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.x, i64 2305843009213693951)
  %i.aa = select i1 %i.y, i64 2305843009213693951, i64 %i.z ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ab = shl nuw nsw i64 %i.aa, 2
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #30
          to label %.noexc12 unwind label %.loopexit ; 4 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.u ; 2 uses
  store i32 %i.r, ptr %i.ad, align 4, !tbaa !33
  %i.ae = icmp sgt i64 %i.u, 0
  br i1 %i.ae, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %.noexc12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ac, ptr align 4 %i.p, i64 %i.u, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %.noexc12
  %.not.i17.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #31
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.aa
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.f
  %i.ag = phi ptr [ %i.ac, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.p, %bb.f ] ; 2 uses
  %i.ah = phi ptr [ %i.af, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.o, %bb.f ] ; 2 uses
  %.pn36 = phi ptr [ %i.ad, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.n, %bb.f ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn36, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.014.033, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.aj, %i.l
  br i1 %.not, label %._crit_edge, label %bb.c

.loopexit:                                        ; preds = %bb.d, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.n, ptr %i.a, align 8
  store ptr %i.o, ptr %i.i, align 8
  store ptr %i.p, ptr %0, align 8
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %i.ak = phi ptr [ %i.n, %.loopexit.split-lp ], [ %i.o, %.loopexit ]
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.p to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.an) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.l, %bb.k
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_Z25util_getNonTargetedQubitsPiii(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %_Z10getBitMaskPii.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader94, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi81 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.i, %vector.body ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %wide.load = load <2 x i32>, ptr %i.b, align 4, !tbaa !33
  %wide.load82 = load <2 x i32>, ptr %i.c, align 4, !tbaa !33
  %i.d = zext nneg <2 x i32> %wide.load to <2 x i64>
  %i.e = zext nneg <2 x i32> %wide.load82 to <2 x i64>
  %i.f = shl nuw <2 x i64> splat (i64 1), %i.d
  %i.g = shl nuw <2 x i64> splat (i64 1), %i.e
  %i.h = xor <2 x i64> %i.f, %vec.phi             ; 2 uses
  %i.i = xor <2 x i64> %i.g, %vec.phi81           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <2 x i64> %i.i, %i.h
  %i.k = tail call i64 @llvm.vector.reduce.xor.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %_Z10getBitMaskPii.exit, label %.lr.ph.preheader94

.lr.ph.preheader94:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.06.i17.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader94, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader94 ] ; 2 uses
  %.06.i17 = phi i64 [ %i.p, %.lr.ph ], [ %.06.i17.ph, %.lr.ph.preheader94 ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !33
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl nuw i64 1, %i.n
  %i.p = xor i64 %i.o, %.06.i17                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_Z10getBitMaskPii.exit, label %.lr.ph, !llvm.loop !129

_Z10getBitMaskPii.exit:                           ; preds = %.lr.ph, %middle.block, %bb.a
  %.06.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.k, %middle.block ], [ %i.p, %.lr.ph ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.q = sub nsw i32 %3, %2                       ; 2 uses
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = icmp slt i32 %i.q, 0
  br i1 %i.s, label %.noexc, label %bb.b

.noexc:                                           ; preds = %_Z10getBitMaskPii.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #29
  unreachable

bb.b:                                             ; preds = %_Z10getBitMaskPii.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not = icmp eq i32 %3, %2
  br i1 %.not, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.u = shl nuw nsw i64 %i.r, 2
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #30 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %0, align 8, !tbaa !36
  store ptr %i.v, ptr %i.w, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.r ; 2 uses
  store ptr %i.x, ptr %i.t, align 8, !tbaa !37
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %bb.b
  %.promoted21 = phi ptr [ %i.v, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 3 uses
  %.promoted = phi ptr [ %i.x, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 2 uses
  %i.y = icmp sgt i32 %3, 0
  br i1 %i.y, label %.lr.ph26, label %._crit_edge

.lr.ph26:                                         ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %wide.trip.count42 = zext nneg i32 %3 to i64
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %.lcssa22 = phi ptr [ %.promoted21, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %i.aw, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.lcssa = phi ptr [ %.promoted, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %i.ax, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  store ptr %.lcssa, ptr %i.t, align 8
  store ptr %.lcssa22, ptr %0, align 8
  ret void

bb.c:                                             ; preds = %.lr.ph26, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.aa = phi ptr [ %.promoted21, %.lr.ph26 ], [ %i.av, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 6 uses
  %indvars.iv39 = phi i64 [ 0, %.lr.ph26 ], [ %indvars.iv.next40, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %i.ab = phi ptr [ %.promoted, %.lr.ph26 ], [ %i.ax, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 5 uses
  %i.ac = phi ptr [ %.promoted21, %.lr.ph26 ], [ %i.aw, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 11 uses
  %4 = shl nuw i64 1, %indvars.iv39
  %5 = and i64 %4, %.06.i.lcssa
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %bb.d, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = trunc nuw nsw i64 %indvars.iv39 to i32
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !35
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.f:                                             ; preds = %bb.d
  %i.af = ptrtoint ptr %i.aa to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 6 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775804
  br i1 %i.ai, label %bb.g, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.ab, ptr %i.t, align 8
  store ptr %i.ac, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #29
          to label %.noexc12 unwind label %.loopexit.split-lp

.noexc12:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.aj = ashr exact i64 %i.ah, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 2305843009213693951)
  %i.an = select i1 %i.al, i64 2305843009213693951, i64 %i.am ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ao = shl nuw nsw i64 %i.an, 2
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #30
          to label %.noexc13 unwind label %.loopexit ; 4 uses

.noexc13:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.ah ; 2 uses
  %i.ar = trunc nuw nsw i64 %indvars.iv39 to i32
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !33
  %i.as = icmp sgt i64 %i.ah, 0
  br i1 %i.as, label %bb.h, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %.noexc13
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ap, ptr align 4 %i.ac, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %.noexc13
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #31
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.at, ptr %i.z, align 8, !tbaa !35
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.an
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ab, ptr %i.t, align 8
  store ptr %i.ac, ptr %0, align 8
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.e, %bb.c
  %i.av = phi ptr [ %i.at, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ae, %bb.e ], [ %i.aa, %bb.c ]
  %i.aw = phi ptr [ %i.ap, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ac, %bb.e ], [ %i.ac, %bb.c ] ; 2 uses
  %i.ax = phi ptr [ %i.au, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ab, %bb.e ], [ %i.ab, %bb.c ] ; 2 uses
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %exitcond43.not = icmp eq i64 %indvars.iv.next40, %wide.trip.count42
  br i1 %exitcond43.not, label %._crit_edge, label %bb.c, !llvm.loop !130

bb.j:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i14 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = ptrtoint ptr %i.aa to i64
  %i.az = ptrtoint ptr %i.ac to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ba) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_Z20util_getConcatenatedSt6vectorIiSaIiEES1_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef align 8 dereferenceable(24) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = load ptr, ptr %2, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.f = load ptr, ptr %1, align 8, !tbaa !31     ; 2 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  tail call void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.j, ptr %i.c, ptr %i.e)
  %i.k = load <2 x ptr>, ptr %1, align 8, !tbaa !31
  store <2 x ptr> %i.k, ptr %0, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !37
  store ptr %i.n, ptr %i.l, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not70 = icmp eq ptr %2, %3
  br i1 %.not70, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35   ; 12 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 9 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 0, %i.d
  %i.q = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = icmp sgt i64 %i.c, 4                     ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f, !prof !39

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.h, ptr nonnull align 4 %i.q, i64 %i.c, i1 false)
  %.pre72 = load ptr, ptr %i.g, align 8, !tbaa !35
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %i.c, 4
  br i1 %i.t, label %bb.g, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.q, align 4, !tbaa !33
  store i32 %i.u, ptr %i.h, align 4, !tbaa !33
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.v = phi ptr [ %.pre72, %bb.e ], [ %i.h, %bb.f ], [ %i.h, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.c
  store ptr %i.w, ptr %i.g, align 8, !tbaa !35
  %i.x = sub i64 %i.r, %i.l                       ; 3 uses
  %i.y = ashr exact i64 %i.x, 2                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.h, label %bb.i, !prof !39

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.aa = sub nsw i64 0, %i.y
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr align 4 %1, i64 %i.x, i1 false)
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.ac = icmp eq i64 %i.x, 4
  br i1 %i.ac, label %bb.j, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.ae = load i32, ptr %1, align 4, !tbaa !33
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !33
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

end_hunk_0
begin_hunk_1_@_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag:bb.a
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit
  %i.bo = icmp eq i64 %i.bm, 4
  br i1 %i.bo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load i32, ptr %i.ay, align 4, !tbaa !33
  store i32 %i.bp, ptr %i.bk, align 4, !tbaa !33
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm ; 3 uses
  %i.br = icmp sgt i64 %i.c, 4
  br i1 %i.br, label %bb.ad, label %bb.ae, !prof !39

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bq, ptr align 4 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bs = icmp eq i64 %i.c, 4
  br i1 %i.bs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bt = load i32, ptr %2, align 4, !tbaa !33
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !33
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.c ; 3 uses
  %i.bv = sub i64 %i.j, %i.bl                     ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, 4
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !39

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bu, ptr align 4 %1, i64 %i.bv, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bx = icmp eq i64 %i.bv, 4
  br i1 %i.bx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.by = load i32, ptr %1, align 4, !tbaa !33
  store i32 %i.by, ptr %i.bu, align 4, !tbaa !33
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %.not.i55 = icmp eq ptr %i.ay, null
  br i1 %.not.i55, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.cc) #31
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bk, ptr %0, align 8, !tbaa !36
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !35
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.cd, ptr %i.e, align 8, !tbaa !37
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_Z14util_getSortedSt6vectorIiSaIiEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !36     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !38

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30
  %.pre = load ptr, ptr %1, align 8, !tbaa !31    ; 3 uses
  %.pre4 = load ptr, ptr %i.a, align 8, !tbaa !31 ; 2 uses
  %.pre5 = ptrtoint ptr %.pre4 to i64
  %.pre6 = ptrtoint ptr %.pre to i64
  %i.i = icmp eq ptr %.pre4, %.pre
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi7 = phi i64 [ %.pre6, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ]
  %.pre-phi = phi i64 [ %.pre5, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.d, %bb.a ]
  %.not.i.i = phi i1 [ %i.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ true, %bb.a ]
  %i.j = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %i.h, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 9 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !37
  %i.o = sub i64 %.pre-phi, %.pre-phi7            ; 5 uses
  %i.p = icmp sgt i64 %i.o, 4
  br i1 %i.p, label %bb.d, label %bb.e, !prof !39

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.j, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.q = icmp eq i64 %i.o, 4
  br i1 %i.q, label %bb.f, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.j, align 4, !tbaa !33
  store i32 %i.r, ptr %i.k, align 4, !tbaa !33
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.s = getelementptr inbounds i8, ptr %i.k, i64 %i.o ; 3 uses
  store ptr %i.s, ptr %i.l, align 8, !tbaa !35
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.t = ashr exact i64 %i.o, 2
  %i.u = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.t, i1 true)
  %i.v = shl nuw nsw i64 %i.u, 1
  %i.w = xor i64 %i.v, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.k, ptr nonnull %i.s, i64 noundef %i.w)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.k, ptr nonnull %i.s)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit unwind label %bb.h

bb.h:                                             ; preds = %.noexc, %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.f) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %i.x

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit: ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit, %.noexc
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph43

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit
  %i.h = icmp eq i64 %i.as, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph43, !llvm.loop !131

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge17.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %storemerge17.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i ], [ %storemerge17.lcssa, %._crit_edge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !33   ; 2 uses
  %i.k = load i32, ptr %0, align 4, !tbaa !33
  store i32 %i.k, ptr %i.i, align 4, !tbaa !33
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.a                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 3 uses
  %i.o = add nsw i64 %i.n, -1
  %i.p = lshr i64 %i.o, 1
  %i.q = icmp sgt i64 %i.n, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.r = shl i64 %.035.i.i.i.i, 1                 ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.t, align 4, !tbaa !33
  %i.x = load i32, ptr %i.v, align 4, !tbaa !33
  %i.y = icmp slt i32 %i.w, %i.x
  %spec.select.i.i.i.i = select i1 %i.y, i64 %i.u, i64 %i.s ; 4 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !33
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i.i.i.i
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !33
  %i.ac = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !0

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %4 = and i64 %i.m, 4
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ad = add nsw i64 %i.n, -2
  %i.ae = ashr exact i64 %i.ad, 1
  %i.af = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ae
  br i1 %i.af, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ag = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ah = or disjoint i64 %i.ag, 1                ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !33
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !33
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ah, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i56.i.i.i, %bb.e ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i56.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i56.i.i.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !33 ; 2 uses
  %i.an = icmp slt i32 %i.am, %i.j
  br i1 %i.an, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ao = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i32 %i.am, ptr %i.ao, align 4, !tbaa !33
  %.not7.i.i.i = icmp eq i64 %.0920.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ap = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.j, ptr %i.ap, align 4, !tbaa !33
  %i.aq = icmp sgt i64 %i.m, 4
  br i1 %i.aq, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !132

.lr.ph43:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1742 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01841 = phi i64 [ %i.as, %bb.b ], [ %2, %.lr.ph ]
  %i.ar = phi i64 [ %i.br, %bb.b ], [ %i.d, %.lr.ph ]
  %i.as = add nsw i64 %.01841, -1                 ; 3 uses
  %i.at = lshr i64 %i.ar, 1
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds i8, ptr %storemerge1742, i64 -4 ; 3 uses
  %i.aw = load i32, ptr %i.f, align 4, !tbaa !33  ; 5 uses
  %i.ax = load i32, ptr %i.au, align 4, !tbaa !33 ; 5 uses
  %i.ay = icmp slt i32 %i.aw, %i.ax
  %i.az = load i32, ptr %i.av, align 4, !tbaa !33 ; 6 uses
  br i1 %i.ay, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph43
  %i.ba = icmp slt i32 %i.ax, %i.az
  br i1 %i.ba, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bb = load i32, ptr %0, align 4, !tbaa !33
  store i32 %i.ax, ptr %0, align 4, !tbaa !33
  store i32 %i.bb, ptr %i.au, align 4, !tbaa !33
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bc = icmp slt i32 %i.aw, %i.az
  %i.bd = load i32, ptr %0, align 4, !tbaa !33    ; 2 uses
  br i1 %i.bc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.az, ptr %0, align 4, !tbaa !33
  store i32 %i.bd, ptr %i.av, align 4, !tbaa !33
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i32 %i.aw, ptr %0, align 4, !tbaa !33
  store i32 %i.bd, ptr %i.f, align 4, !tbaa !33
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph43
  %i.be = icmp slt i32 %i.aw, %i.az
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bf = load i32, ptr %0, align 4, !tbaa !33
  store i32 %i.aw, ptr %0, align 4, !tbaa !33
  store i32 %i.bf, ptr %i.f, align 4, !tbaa !33
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bg = icmp slt i32 %i.ax, %i.az
  %i.bh = load i32, ptr %0, align 4, !tbaa !33    ; 2 uses
  br i1 %i.bg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %i.az, ptr %0, align 4, !tbaa !33
  store i32 %i.bh, ptr %i.av, align 4, !tbaa !33
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store i32 %i.ax, ptr %0, align 4, !tbaa !33
  store i32 %i.bh, ptr %i.au, align 4, !tbaa !33
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader, %bb.r
  %.sroa.010.0.i.i = phi ptr [ %i.bl, %bb.r ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.r ], [ %storemerge1742, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %i.bi = load i32, ptr %0, align 4, !tbaa !33    ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i ], [ %i.bl, %bb.p ] ; 8 uses
  %i.bj = load i32, ptr %.sroa.010.1.i.i, align 4, !tbaa !33 ; 2 uses
  %i.bk = icmp slt i32 %i.bj, %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 4 ; 2 uses
  br i1 %i.bk, label %bb.p, label %.preheader.i.i, !llvm.loop !133

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.p ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4 ; 5 uses
  %i.bm = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !33 ; 2 uses
  %i.bn = icmp slt i32 %i.bi, %i.bm
  br i1 %i.bn, label %.preheader.i.i, label %bb.q, !llvm.loop !134

bb.q:                                             ; preds = %.preheader.i.i
  %i.bo = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.bo, label %bb.r, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit

bb.r:                                             ; preds = %bb.q
  store i32 %i.bm, ptr %.sroa.010.1.i.i, align 4, !tbaa !33
  store i32 %i.bj, ptr %.sroa.0.1.i.i, align 4, !tbaa !33
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i, !llvm.loop !135

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge1742, i64 noundef %i.as)
  %i.bp = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.bq = sub i64 %i.bp, %i.a
  %i.br = ashr exact i64 %i.bq, 2                 ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 16
  br i1 %i.bs, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !131

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.g

.lr.ph.i:                                         ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %.sroa.0.018.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.018.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn17.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.018.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.018.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.018.i.idx ; 4 uses
  %i.e = load i32, ptr %.sroa.0.018.i.ptr, align 4, !tbaa !33 ; 4 uses
  %i.f = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %.sroa.0.018.i.idx, 4
  br i1 %i.h, label %bb.d, label %bb.e, !prof !39

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.018.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 4
  store i32 %i.f, ptr %i.i, align 4, !tbaa !33
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.j = load i32, ptr %.pn17.i, align 4, !tbaa !33 ; 2 uses
  %i.k = icmp slt i32 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.l = phi i32 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.f ]
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn17.i, %bb.f ] ; 3 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.018.i.ptr, %bb.f ]
  store i32 %i.l, ptr %.sroa.04.08.i.i, align 4, !tbaa !33
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -4 ; 2 uses
  %i.m = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !33 ; 2 uses
  %i.n = icmp slt i32 %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !136

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.018.i.ptr, %bb.f ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  store i32 %i.e, ptr %.sink.i, align 4, !tbaa !33
  %.sroa.0.018.i.add = add nuw nsw i64 %.sroa.0.018.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.018.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %bb.b, !llvm.loop !137

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not4.i = icmp eq ptr %i.o, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i
  %.sroa.0.05.i = phi ptr [ %i.v, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ], [ %i.o, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit ] ; 5 uses
  %i.p = load i32, ptr %.sroa.0.05.i, align 4, !tbaa !33 ; 3 uses
  %.sroa.0.07.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -4 ; 2 uses
  %i.q = load i32, ptr %.sroa.0.07.i.i, align 4, !tbaa !33 ; 2 uses
  %i.r = icmp slt i32 %i.p, %i.q
  br i1 %i.r, label %.lr.ph.i.i8, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i8:                                      ; preds = %.lr.ph.i6, %.lr.ph.i.i8
  %i.s = phi i32 [ %i.t, %.lr.ph.i.i8 ], [ %i.q, %.lr.ph.i6 ]
  %.sroa.0.09.i.i9 = phi ptr [ %.sroa.0.0.i.i11, %.lr.ph.i.i8 ], [ %.sroa.0.07.i.i, %.lr.ph.i6 ] ; 3 uses
  %.sroa.04.08.i.i10 = phi ptr [ %.sroa.0.09.i.i9, %.lr.ph.i.i8 ], [ %.sroa.0.05.i, %.lr.ph.i6 ]
  store i32 %i.s, ptr %.sroa.04.08.i.i10, align 4, !tbaa !33
  %.sroa.0.0.i.i11 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i9, i64 -4 ; 2 uses
  %i.t = load i32, ptr %.sroa.0.0.i.i11, align 4, !tbaa !33 ; 2 uses
  %i.u = icmp slt i32 %i.p, %i.t
  br i1 %i.u, label %.lr.ph.i.i8, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !136

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i8, %.lr.ph.i6
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.0.05.i, %.lr.ph.i6 ], [ %.sroa.0.09.i.i9, %.lr.ph.i.i8 ]
  store i32 %i.p, ptr %.sroa.04.0.lcssa.i.i, align 4, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 4 ; 2 uses
  %.not.i7 = icmp eq ptr %i.v, %1
  br i1 %.not.i7, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6, !llvm.loop !138

bb.g:                                             ; preds = %bb.a
  %i.w = icmp eq ptr %0, %1
  %.sroa.0.015.i13 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not16.i14 = icmp eq ptr %.sroa.0.015.i13, %1
  %or.cond = select i1 %i.w, i1 true, i1 %.not16.i14
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %bb.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18
  %.sroa.0.018.i16 = phi ptr [ %.sroa.0.0.i20, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18 ], [ %.sroa.0.015.i13, %bb.g ] ; 6 uses
  %.pn17.i17 = phi ptr [ %.sroa.0.018.i16, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18 ], [ %0, %bb.g ] ; 4 uses
  %i.x = load i32, ptr %.sroa.0.018.i16, align 4, !tbaa !33 ; 4 uses
  %i.y = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  %i.z = icmp slt i32 %i.x, %i.y
  br i1 %i.z, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i15
  %i.aa = ptrtoint ptr %.sroa.0.018.i16 to i64
  %i.ab = sub i64 %i.aa, %i.b                     ; 3 uses
  %i.ac = ashr exact i64 %i.ab, 2                 ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 1
  br i1 %i.ad, label %bb.i, label %bb.j, !prof !39

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn17.i17, i64 8
  %i.af = sub nsw i64 0, %i.ac
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.af
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ag, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.ab, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18

bb.j:                                             ; preds = %bb.h
  %i.ah = icmp eq i64 %i.ab, 4
  br i1 %i.ah, label %bb.k, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn17.i17, i64 4
  store i32 %i.y, ptr %i.ai, align 4, !tbaa !33
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18

bb.l:                                             ; preds = %.lr.ph.i15
  %i.aj = load i32, ptr %.pn17.i17, align 4, !tbaa !33 ; 2 uses
  %i.ak = icmp slt i32 %i.x, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i22, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18

.lr.ph.i.i22:                                     ; preds = %bb.l, %.lr.ph.i.i22
  %i.al = phi i32 [ %i.am, %.lr.ph.i.i22 ], [ %i.aj, %bb.l ]
  %.sroa.0.09.i.i23 = phi ptr [ %.sroa.0.0.i.i25, %.lr.ph.i.i22 ], [ %.pn17.i17, %bb.l ] ; 3 uses
  %.sroa.04.08.i.i24 = phi ptr [ %.sroa.0.09.i.i23, %.lr.ph.i.i22 ], [ %.sroa.0.018.i16, %bb.l ]
  store i32 %i.al, ptr %.sroa.04.08.i.i24, align 4, !tbaa !33
  %.sroa.0.0.i.i25 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i23, i64 -4 ; 2 uses
  %i.am = load i32, ptr %.sroa.0.0.i.i25, align 4, !tbaa !33 ; 2 uses
  %i.an = icmp slt i32 %i.x, %i.am
  br i1 %i.an, label %.lr.ph.i.i22, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18, !llvm.loop !136

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18: ; preds = %.lr.ph.i.i22, %bb.l, %bb.k, %bb.j, %bb.i
  %.sink.i19 = phi ptr [ %0, %bb.k ], [ %0, %bb.i ], [ %0, %bb.j ], [ %.sroa.0.018.i16, %bb.l ], [ %.sroa.0.09.i.i23, %.lr.ph.i.i22 ]
  store i32 %i.x, ptr %.sink.i19, align 4, !tbaa !33
  %.sroa.0.0.i20 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i16, i64 4 ; 2 uses
  %.not.i21 = icmp eq ptr %.sroa.0.0.i20, %1
  br i1 %.not.i21, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i15, !llvm.loop !137

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %bb.g, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %3 = and i64 %.fr, 4
  %4 = icmp eq i64 %3, 0
  %i.j = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %4, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.k = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us
  %.08.us = phi i64 [ %i.aj, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %0, i64 %.08.us
  %i.o = load i32, ptr %i.n, align 4, !tbaa !33   ; 2 uses
  %i.p = icmp slt i64 %.08.us, %i.i
  br i1 %i.p, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.035.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.08.us, %.split.us ] ; 2 uses
  %i.q = shl i64 %.035.i.us, 1                    ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %0, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = load i32, ptr %i.s, align 4, !tbaa !33
  %i.w = load i32, ptr %i.u, align 4, !tbaa !33
  %i.x = icmp slt i32 %i.v, %i.w
  %spec.select.i.us = select i1 %i.x, i64 %i.t, i64 %i.r ; 6 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.z = load i32, ptr %i.y, align 4, !tbaa !33
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i.us
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !33
  %i.ab = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ab, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !0

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ac = icmp sgt i64 %spec.select.i.us, %.08.us
  br i1 %i.ac, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.019.i.i.us = phi i64 [ %.0920.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i.us
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !33 ; 2 uses
  %i.af = icmp slt i32 %i.ae, %i.o
  br i1 %i.af, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i.us
  store i32 %i.ae, ptr %i.ag, align 4, !tbaa !33
  %i.ah = icmp sgt i64 %.0920.i.i.us, %.08.us
  br i1 %i.ah, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, !llvm.loop !1

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.08.us, %.split.us ], [ %.019.i.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.c ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store i32 %i.o, ptr %i.ai, align 4, !tbaa !33
  %.not.us = icmp eq i64 %.08.us, 0
  %i.aj = add nsw i64 %.08.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !139

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit
  %.08 = phi i64 [ %i.bi, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !33 ; 2 uses
  %i.am = icmp slt i64 %.08, %i.i
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.035.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.08, %.split ] ; 2 uses
  %i.an = shl i64 %.035.i, 1                      ; 2 uses
  %i.ao = add i64 %i.an, 2                        ; 2 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ao
  %i.aq = or disjoint i64 %i.an, 1                ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aq
  %i.as = load i32, ptr %i.ap, align 4, !tbaa !33
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !33
  %i.au = icmp slt i32 %i.as, %i.at
  %spec.select.i = select i1 %i.au, i64 %i.aq, i64 %i.ao ; 4 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !33
  %i.ax = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !33
  %i.ay = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.08, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.az = icmp eq i64 %.0.lcssa.i, %i.j
  br i1 %i.az, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.ba = load i32, ptr %i.l, align 4, !tbaa !33
  store i32 %i.ba, ptr %i.m, align 4, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.k, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bb = icmp sgt i64 %.1.i, %.08
  br i1 %i.bb, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !33 ; 2 uses
  %i.be = icmp slt i32 %i.bd, %i.al
  br i1 %i.be, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i
  store i32 %i.bd, ptr %i.bf, align 4, !tbaa !33
  %i.bg = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, !llvm.loop !1

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.al, ptr %i.bh, align 4, !tbaa !33
  %.not = icmp eq i64 %.08, 0
  %i.bi = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !139

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #10

; Function Attrs: mustprogress uwtable
define void @_Z14util_getSortedSt6vectorIiSaIiEES1_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 16      ; 3 uses
  %4 = alloca %"class.std::vector", align 16      ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !36     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !38

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30
  %.pre = load ptr, ptr %1, align 8, !tbaa !31    ; 2 uses
  %.pre24 = load ptr, ptr %i.a, align 8, !tbaa !31
  %.pre27 = ptrtoint ptr %.pre24 to i64
  %.pre28 = ptrtoint ptr %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi29 = phi i64 [ %.pre28, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ]
  %.pre-phi = phi i64 [ %.pre27, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.d, %bb.a ]
  %i.i = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %i.h, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.j, ptr %4, align 16, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.l, ptr %i.m, align 16, !tbaa !37
  %i.n = sub i64 %.pre-phi, %.pre-phi29           ; 4 uses
  %i.o = icmp sgt i64 %i.n, 4
  br i1 %i.o, label %bb.d, label %bb.e, !prof !39

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.j, ptr align 4 %i.i, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = icmp eq i64 %i.n, 4
  br i1 %i.p, label %bb.f, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %i.i, align 4, !tbaa !33
  store i32 %i.q, ptr %i.j, align 4, !tbaa !33
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.r = getelementptr inbounds i8, ptr %i.j, i64 %i.n ; 2 uses
  store ptr %i.r, ptr %i.k, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !35   ; 2 uses
  %i.u = load ptr, ptr %2, align 8, !tbaa !36     ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w                       ; 4 uses
  %.not.i.i.i.i5 = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i.i.i5, label %.noexc8, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.y = icmp ugt i64 %i.x, 9223372036854775804
  br i1 %i.y, label %.noexc.i.i7, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i6, !prof !38

.noexc.i.i7:                                      ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %.noexc.i.i7
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i6: ; preds = %bb.g
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #30
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i6..noexc8_crit_edge unwind label %bb.q

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i6..noexc8_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i6
  %.pre25 = load ptr, ptr %2, align 8, !tbaa !31  ; 2 uses
  %.pre26 = load ptr, ptr %i.s, align 8, !tbaa !31
  %.pre30 = ptrtoint ptr %.pre26 to i64
  %.pre32 = ptrtoint ptr %.pre25 to i64
  br label %.noexc8

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i6..noexc8_crit_edge, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %.pre-phi33 = phi i64 [ %.pre32, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i6..noexc8_crit_edge ], [ %i.w, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ]
  %.pre-phi31 = phi i64 [ %.pre30, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i6..noexc8_crit_edge ], [ %i.v, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ]
  %i.aa = phi ptr [ %.pre25, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i6..noexc8_crit_edge ], [ %i.u, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ] ; 2 uses
  %i.ab = phi ptr [ %i.z, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i6..noexc8_crit_edge ], [ null, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ] ; 8 uses
  %i.ac = sub i64 %.pre-phi31, %.pre-phi33        ; 4 uses
  %i.ad = icmp sgt i64 %i.ac, 4
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !39

bb.h:                                             ; preds = %.noexc8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ab, ptr align 4 %i.aa, i64 %i.ac, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %.noexc8
  %i.ae = icmp eq i64 %i.ac, 4
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = load i32, ptr %i.aa, align 4, !tbaa !33
  store i32 %i.af, ptr %i.ab, align 4, !tbaa !33
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.ag = getelementptr inbounds i8, ptr %i.ab, i64 %i.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  invoke void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.r, ptr %i.ab, ptr %i.ag)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.ah = load <2 x ptr>, ptr %4, align 16, !tbaa !31, !noalias !142
  %i.ai = load ptr, ptr %4, align 16, !tbaa !31, !noalias !142 ; 6 uses
  store <2 x ptr> %i.ah, ptr %3, align 16, !tbaa !31, !alias.scope !142
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ak = load ptr, ptr %i.m, align 16, !tbaa !37, !noalias !142 ; 3 uses
  store ptr %i.ak, ptr %i.aj, align 16, !tbaa !37, !alias.scope !142
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !142
  invoke void @_Z14util_getSortedSt6vectorIiSaIiEE(ptr dead_on_unwind writable sret(%"class.std::vector") align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.m, %bb.n
  %.not.i.i.i11 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIiSaIiEED2Ev.exit12, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.x) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit12

_ZNSt6vectorIiSaIiEED2Ev.exit12:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.o
  %i.ao = load ptr, ptr %4, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIiSaIiEED2Ev.exit14, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit12
  %i.ap = load ptr, ptr %i.m, align 16, !tbaa !37
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.as) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit14

_ZNSt6vectorIiSaIiEED2Ev.exit14:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit12, %bb.p
  ret void

bb.q:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i6, %.noexc.i.i7
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit18

bb.r:                                             ; preds = %bb.k
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit16

bb.s:                                             ; preds = %bb.l
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIiSaIiEED2Ev.exit16, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aw = ptrtoint ptr %i.ak to i64
  %i.ax = ptrtoint ptr %i.ai to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.ay) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit16

_ZNSt6vectorIiSaIiEED2Ev.exit16:                  ; preds = %bb.t, %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.au, %bb.r ], [ %i.av, %bb.s ], [ %i.av, %bb.t ] ; 2 uses
  %.not.i.i.i17 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i17, label %_ZNSt6vectorIiSaIiEED2Ev.exit18, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit16
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.x) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit18

_ZNSt6vectorIiSaIiEED2Ev.exit18:                  ; preds = %bb.u, %_ZNSt6vectorIiSaIiEED2Ev.exit16, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.at, %bb.q ], [ %.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit16 ], [ %.pn, %bb.u ]
  %i.az = load ptr, ptr %4, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIiSaIiEED2Ev.exit20, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit18
  %i.ba = load ptr, ptr %i.m, align 16, !tbaa !37
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bd) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit20

_ZNSt6vectorIiSaIiEED2Ev.exit20:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit18, %bb.v
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_Z15util_getBitMaskSt6vectorIiSaIiEE(ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2                   ; 3 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.preheader, label %_Z10getBitMaskPii.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = and i64 %i.g, 2147483647     ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 4
  br i1 %min.iters.check, label %.lr.ph.preheader6, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.g, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi4 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %wide.load = load <2 x i32>, ptr %i.j, align 4, !tbaa !33
  %wide.load5 = load <2 x i32>, ptr %i.k, align 4, !tbaa !33
  %i.l = zext nneg <2 x i32> %wide.load to <2 x i64>
  %i.m = zext nneg <2 x i32> %wide.load5 to <2 x i64>
  %i.n = shl nuw <2 x i64> splat (i64 1), %i.l
  %i.o = shl nuw <2 x i64> splat (i64 1), %i.m
  %i.p = xor <2 x i64> %i.n, %vec.phi             ; 2 uses
  %i.q = xor <2 x i64> %i.o, %vec.phi4            ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !143

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <2 x i64> %i.q, %i.p
  %i.s = tail call i64 @llvm.vector.reduce.xor.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %_Z10getBitMaskPii.exit, label %.lr.ph.preheader6

.lr.ph.preheader6:                                ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.06.i1.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader6, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader6 ] ; 2 uses
  %.06.i1 = phi i64 [ %i.x, %.lr.ph ], [ %.06.i1.ph, %.lr.ph.preheader6 ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !33
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl nuw i64 1, %i.v
  %i.x = xor i64 %i.w, %.06.i1                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_Z10getBitMaskPii.exit, label %.lr.ph, !llvm.loop !144

_Z10getBitMaskPii.exit:                           ; preds = %.lr.ph, %middle.block, %bb.a
  %.06.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.s, %middle.block ], [ %i.x, %.lr.ph ]
  ret i64 %.06.i.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_Z15util_getBitMaskSt6vectorIiSaIiEES1_(ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !36     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 3 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.preheader, label %_Z10getBitMaskPiS_i.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.k = and i64 %i.g, 8589934588
  %i.l = icmp eq i64 %i.k, 4
  br i1 %i.l, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.h, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %.08.i1 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ah, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !33
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !33
  %i.q = sext i32 %i.p to i64
  %i.r = zext i32 %i.n to i64                     ; 2 uses
  %i.s = shl i64 %i.q, %i.r
  %i.t = shl nuw i64 1, %i.r
  %i.u = xor i64 %i.t, -1
  %i.v = and i64 %.08.i1, %i.u
  %i.w = or i64 %i.v, %i.s
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.y = load i32, ptr %i.x, align 4, !tbaa !33
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !33
  %i.ab = sext i32 %i.aa to i64
  %i.ac = zext i32 %i.y to i64                    ; 2 uses
  %i.ad = shl i64 %i.ab, %i.ac
  %i.ae = shl nuw i64 1, %i.ac
  %i.af = xor i64 %i.ae, -1
  %i.ag = and i64 %i.w, %i.af
  %i.ah = or i64 %i.ag, %i.ad                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Z10getBitMaskPiS_i.exit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !2

_Z10getBitMaskPiS_i.exit.loopexit.unr-lcssa:      ; preds = %.lr.ph
  %2 = and i64 %i.g, 4
  %lcmp.mod.not = icmp eq i64 %2, 0
  br i1 %lcmp.mod.not, label %_Z10getBitMaskPiS_i.exit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %_Z10getBitMaskPiS_i.exit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %_Z10getBitMaskPiS_i.exit.loopexit.unr-lcssa ] ; 2 uses
  %.08.i1.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ah, %_Z10getBitMaskPiS_i.exit.loopexit.unr-lcssa ]
  %lcmp.mod5 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !33
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.epil.init
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !33
  %i.am = sext i32 %i.al to i64
  %i.an = zext i32 %i.aj to i64                   ; 2 uses
  %i.ao = shl i64 %i.am, %i.an
  %i.ap = shl nuw i64 1, %i.an
  %i.aq = xor i64 %i.ap, -1
  %i.ar = and i64 %.08.i1.epil.init, %i.aq
  %i.as = or i64 %i.ar, %i.ao
  br label %_Z10getBitMaskPiS_i.exit

_Z10getBitMaskPiS_i.exit:                         ; preds = %.lr.ph.epil.preheader, %_Z10getBitMaskPiS_i.exit.loopexit.unr-lcssa, %bb.a
  %.08.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.ah, %_Z10getBitMaskPiS_i.exit.loopexit.unr-lcssa ], [ %i.as, %.lr.ph.epil.preheader ]
  ret i64 %.08.i.lcssa
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_Z15util_getBitMaskSt6vectorIiSaIiEES1_S1_S1_(ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector", align 8       ; 10 uses
  %5 = alloca %"class.std::vector", align 8       ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !36     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.g, align 8
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !38

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30
  %.pre = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %.pre126 = load ptr, ptr %i.a, align 8, !tbaa !31
  %.pre133 = ptrtoint ptr %.pre126 to i64
  %.pre134 = ptrtoint ptr %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi135 = phi i64 [ %.pre134, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ]
  %.pre-phi = phi i64 [ %.pre133, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.d, %bb.a ]
  %i.j = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %i.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !37
  %i.o = sub i64 %.pre-phi, %.pre-phi135          ; 4 uses
  %i.p = icmp sgt i64 %i.o, 4
  br i1 %i.p, label %bb.d, label %bb.e, !prof !39

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.j, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.q = icmp eq i64 %i.o, 4
  br i1 %i.q, label %bb.f, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.j, align 4, !tbaa !33
  store i32 %i.r, ptr %i.k, align 4, !tbaa !33
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.s = getelementptr inbounds i8, ptr %i.k, i64 %i.o
  store ptr %i.s, ptr %i.l, align 8, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !35   ; 2 uses
  %i.v = load ptr, ptr %2, align 8, !tbaa !36     ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.y = sub i64 %i.w, %i.x                       ; 4 uses
  %.not.i.i.i.i15 = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i.i.i15, label %.noexc18, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.z = icmp ugt i64 %i.y, 9223372036854775804
  br i1 %i.z, label %.noexc.i.i17, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i16, !prof !38

.noexc.i.i17:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.aj

.noexc:                                           ; preds = %.noexc.i.i17
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i16: ; preds = %bb.g
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #30
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i16..noexc18_crit_edge unwind label %bb.aj

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i16..noexc18_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i16
  %.pre127 = load ptr, ptr %2, align 8, !tbaa !31 ; 2 uses
  %.pre128 = load ptr, ptr %i.t, align 8, !tbaa !31
  %.pre136 = ptrtoint ptr %.pre128 to i64
  %.pre138 = ptrtoint ptr %.pre127 to i64
  br label %.noexc18

.noexc18:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i16..noexc18_crit_edge, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %.pre-phi139 = phi i64 [ %.pre138, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i16..noexc18_crit_edge ], [ %i.x, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ]
  %.pre-phi137 = phi i64 [ %.pre136, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i16..noexc18_crit_edge ], [ %i.w, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ]
  %i.ab = phi ptr [ %.pre127, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i16..noexc18_crit_edge ], [ %i.v, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ] ; 2 uses
  %i.ac = phi ptr [ %i.aa, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i16..noexc18_crit_edge ], [ null, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ] ; 8 uses
  %i.ad = sub i64 %.pre-phi137, %.pre-phi139      ; 4 uses
  %i.ae = icmp sgt i64 %i.ad, 4
  br i1 %i.ae, label %bb.h, label %bb.i, !prof !39

bb.h:                                             ; preds = %.noexc18
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ac, ptr align 4 %i.ab, i64 %i.ad, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %.noexc18
  %i.af = icmp eq i64 %i.ad, 4
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = load i32, ptr %i.ab, align 4, !tbaa !33
  store i32 %i.ag, ptr %i.ac, align 4, !tbaa !33
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.ah = getelementptr inbounds i8, ptr %i.ac, i64 %i.ad
  %i.ai = load ptr, ptr %i.l, align 8, !tbaa !31, !noalias !149
  %i.aj = load ptr, ptr %4, align 8, !tbaa !31, !noalias !149 ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds i8, ptr %i.aj, i64 %i.am
  invoke void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.an, ptr %i.ac, ptr %i.ah)
          to label %bb.l unwind label %bb.ak

bb.l:                                             ; preds = %bb.k
  %i.ao = load ptr, ptr %4, align 8, !tbaa !31, !noalias !149 ; 8 uses
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !35, !noalias !149 ; 2 uses
  %i.aq = load ptr, ptr %i.n, align 8, !tbaa !37, !noalias !149 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !149
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit22, label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.y) #31
  %.pr = load ptr, ptr %4, align 8, !tbaa !36     ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIiSaIiEED2Ev.exit22, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ar = load ptr, ptr %i.n, align 8, !tbaa !37
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %.pr to i64
  %i.au = sub i64 %i.as, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.au) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit22

_ZNSt6vectorIiSaIiEED2Ev.exit22:                  ; preds = %bb.l, %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !35 ; 2 uses
  %i.ax = load ptr, ptr %1, align 8, !tbaa !36    ; 3 uses
  %i.ay = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64               ; 2 uses
  %i.ba = sub i64 %i.ay, %i.az                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %.not.i.i.i.i23 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not.i.i.i.i23, label %.noexc27, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit22
  %i.bb = icmp ugt i64 %i.ba, 9223372036854775804
  br i1 %i.bb, label %.noexc.i.i25, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i24, !prof !38

.noexc.i.i25:                                     ; preds = %bb.n
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc26 unwind label %bb.an

.noexc26:                                         ; preds = %.noexc.i.i25
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i24: ; preds = %bb.n
  %i.bc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #30
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i24..noexc27_crit_edge unwind label %bb.an

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i24..noexc27_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i24
  %.pre129 = load ptr, ptr %1, align 8, !tbaa !31 ; 2 uses
end_hunk_1
begin_hunk_2_@_Z15util_getBitMaskSt6vectorIiSaIiEES1_S1_S1_:bb.a
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !37
  %i.bi = sub i64 %.pre-phi141, %.pre-phi143      ; 4 uses
  %i.bj = icmp sgt i64 %i.bi, 4
  br i1 %i.bj, label %bb.o, label %bb.p, !prof !39

bb.o:                                             ; preds = %.noexc27
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.be, ptr align 4 %i.bd, i64 %i.bi, i1 false)
  br label %bb.r

bb.p:                                             ; preds = %.noexc27
  %i.bk = icmp eq i64 %i.bi, 4
  br i1 %i.bk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bl = load i32, ptr %i.bd, align 4, !tbaa !33
  store i32 %i.bl, ptr %i.be, align 4, !tbaa !33
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.bm = getelementptr inbounds i8, ptr %i.be, i64 %i.bi
  store ptr %i.bm, ptr %i.bf, align 8, !tbaa !35
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !35 ; 2 uses
  %i.bp = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.bq = ptrtoint ptr %i.bo to i64               ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.bs = sub i64 %i.bq, %i.br                    ; 4 uses
  %.not.i.i.i.i29 = icmp eq ptr %i.bo, %i.bp
  br i1 %.not.i.i.i.i29, label %.noexc33, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = icmp ugt i64 %i.bs, 9223372036854775804
  br i1 %i.bt, label %.noexc.i.i31, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i30, !prof !38

.noexc.i.i31:                                     ; preds = %bb.s
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc32 unwind label %bb.ao

.noexc32:                                         ; preds = %.noexc.i.i31
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i30: ; preds = %bb.s
  %i.bu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #30
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i30..noexc33_crit_edge unwind label %bb.ao

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i30..noexc33_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i30
  %.pre131 = load ptr, ptr %3, align 8, !tbaa !31 ; 2 uses
  %.pre132 = load ptr, ptr %i.bn, align 8, !tbaa !31
  %.pre144 = ptrtoint ptr %.pre132 to i64
  %.pre146 = ptrtoint ptr %.pre131 to i64
  br label %.noexc33

.noexc33:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i30..noexc33_crit_edge, %bb.r
  %.pre-phi147 = phi i64 [ %.pre146, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i30..noexc33_crit_edge ], [ %i.br, %bb.r ]
  %.pre-phi145 = phi i64 [ %.pre144, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i30..noexc33_crit_edge ], [ %i.bq, %bb.r ]
  %i.bv = phi ptr [ %.pre131, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i30..noexc33_crit_edge ], [ %i.bp, %bb.r ] ; 2 uses
  %i.bw = phi ptr [ %i.bu, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i30..noexc33_crit_edge ], [ null, %bb.r ] ; 8 uses
  %i.bx = sub i64 %.pre-phi145, %.pre-phi147      ; 4 uses
  %i.by = icmp sgt i64 %i.bx, 4
  br i1 %i.by, label %bb.t, label %bb.u, !prof !39

bb.t:                                             ; preds = %.noexc33
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bw, ptr align 4 %i.bv, i64 %i.bx, i1 false)
  br label %bb.w

bb.u:                                             ; preds = %.noexc33
  %i.bz = icmp eq i64 %i.bx, 4
  br i1 %i.bz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ca = load i32, ptr %i.bv, align 4, !tbaa !33
  store i32 %i.ca, ptr %i.bw, align 4, !tbaa !33
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.cb = getelementptr inbounds i8, ptr %i.bw, i64 %i.bx
  %i.cc = load ptr, ptr %i.bf, align 8, !tbaa !31, !noalias !150
  %i.cd = load ptr, ptr %5, align 8, !tbaa !31, !noalias !150 ; 2 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = getelementptr inbounds i8, ptr %i.cd, i64 %i.cg
  invoke void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.ch, ptr %i.bw, ptr %i.cb)
          to label %bb.x unwind label %bb.ap

bb.x:                                             ; preds = %bb.w
  %i.ci = load ptr, ptr %5, align 8, !tbaa !31, !noalias !150 ; 9 uses
  %i.cj = load ptr, ptr %i.bf, align 8, !tbaa !35, !noalias !150 ; 2 uses
  %i.ck = load ptr, ptr %i.bh, align 8, !tbaa !37, !noalias !150 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !150
  %.not.i.i.i37 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i37, label %_ZNSt6vectorIiSaIiEED2Ev.exit40, label %_ZNSt6vectorIiSaIiEED2Ev.exit38

_ZNSt6vectorIiSaIiEED2Ev.exit38:                  ; preds = %bb.x
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.bs) #31
  %.pr112 = load ptr, ptr %5, align 8, !tbaa !36  ; 3 uses
  %.not.i.i.i39 = icmp eq ptr %.pr112, null
  br i1 %.not.i.i.i39, label %_ZNSt6vectorIiSaIiEED2Ev.exit40, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit38
  %i.cl = load ptr, ptr %i.bh, align 8, !tbaa !37
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %.pr112 to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %.pr112, i64 noundef %i.co) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit40

_ZNSt6vectorIiSaIiEED2Ev.exit40:                  ; preds = %bb.x, %_ZNSt6vectorIiSaIiEED2Ev.exit38, %bb.y
  %i.cp = ptrtoint ptr %i.ap to i64
  %i.cq = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.cr = sub i64 %i.cp, %i.cq                    ; 7 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.ap, %i.ao
  br i1 %.not.i.i.i.i41, label %.thread, label %bb.z

.thread:                                          ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit40
  %i.cs = getelementptr inbounds nuw i8, ptr null, i64 %i.cr
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit46

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit40
  %i.ct = icmp ugt i64 %i.cr, 9223372036854775804
  br i1 %i.ct, label %.noexc.i.i43, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i42, !prof !38

.noexc.i.i43:                                     ; preds = %bb.z
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc44 unwind label %bb.as

.noexc44:                                         ; preds = %.noexc.i.i43
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i42: ; preds = %bb.z
  %i.cu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #30
          to label %.noexc45 unwind label %bb.as  ; 6 uses

.noexc45:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i42
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cr ; 3 uses
  %i.cw = icmp samesign ugt i64 %i.cr, 4
  br i1 %i.cw, label %bb.aa, label %bb.ab, !prof !44

bb.aa:                                            ; preds = %.noexc45
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %i.ao, i64 %i.cr, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit46

bb.ab:                                            ; preds = %.noexc45
  %i.cx = icmp eq i64 %i.cr, 4
  br i1 %i.cx, label %bb.ac, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit46

bb.ac:                                            ; preds = %bb.ab
  %i.cy = load i32, ptr %i.ao, align 4, !tbaa !33
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !33
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit46

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit46:              ; preds = %bb.ac, %bb.ab, %bb.aa, %.thread
  %i.cz = phi ptr [ %i.cv, %bb.aa ], [ %i.cv, %bb.ab ], [ %i.cv, %bb.ac ], [ %i.cs, %.thread ] ; 2 uses
  %i.da = phi ptr [ %i.cu, %bb.aa ], [ %i.cu, %bb.ab ], [ %i.cu, %bb.ac ], [ null, %.thread ] ; 9 uses
  %i.db = ptrtoint ptr %i.cj to i64
  %i.dc = ptrtoint ptr %i.ci to i64               ; 2 uses
  %i.dd = sub i64 %i.db, %i.dc                    ; 7 uses
  %.not.i.i.i.i47 = icmp eq ptr %i.cj, %i.ci
  br i1 %.not.i.i.i.i47, label %_ZNSt6vectorIiSaIiEED2Ev.exit54, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit46
  %i.de = icmp ugt i64 %i.dd, 9223372036854775804
  br i1 %i.de, label %.noexc.i.i49, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i48, !prof !38

.noexc.i.i49:                                     ; preds = %bb.ad
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc50 unwind label %bb.at

.noexc50:                                         ; preds = %.noexc.i.i49
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i48: ; preds = %bb.ad
  %i.df = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #30
          to label %.noexc51 unwind label %bb.at  ; 6 uses

.noexc51:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i48
  %i.dg = icmp samesign ugt i64 %i.dd, 4
  br i1 %i.dg, label %bb.ae, label %bb.af, !prof !44

bb.ae:                                            ; preds = %.noexc51
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.df, ptr align 4 %i.ci, i64 %i.dd, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit52

bb.af:                                            ; preds = %.noexc51
  %i.dh = icmp eq i64 %i.dd, 4
  br i1 %i.dh, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit52.thread185, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit52

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit52.thread185:    ; preds = %bb.af
  %i.di = load i32, ptr %i.ci, align 4, !tbaa !33
  store i32 %i.di, ptr %i.df, align 4, !tbaa !33
  br label %.lr.ph.preheader.i

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit52:              ; preds = %bb.af, %bb.ae
  %i.dj = lshr exact i64 %i.dd, 2                 ; 2 uses
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %.lr.ph.preheader.i, label %_Z15util_getBitMaskSt6vectorIiSaIiEES1_.exit

.lr.ph.preheader.i:                               ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit52.thread185, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit52
  %i.dm = phi i64 [ 1, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit52.thread185 ], [ %i.dj, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit52 ] ; 4 uses
  %wide.trip.count.i = and i64 %i.dm, 2147483647
  %xtraiter = and i64 %i.dm, 1
  %i.dn = icmp eq i64 %wide.trip.count.i, 1
  br i1 %i.dn, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.dm, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 4 uses
  %.08.i1.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %i.ej, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.i
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !33
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !33
  %i.ds = sext i32 %i.dr to i64
  %i.dt = zext i32 %i.dp to i64                   ; 2 uses
  %i.du = shl i64 %i.ds, %i.dt
  %i.dv = shl nuw i64 1, %i.dt
  %i.dw = xor i64 %i.dv, -1
  %i.dx = and i64 %.08.i1.i, %i.dw
  %i.dy = or i64 %i.dx, %i.du
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.next.i
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !33
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.next.i
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !33
  %i.ed = sext i32 %i.ec to i64
  %i.ee = zext i32 %i.ea to i64                   ; 2 uses
  %i.ef = shl i64 %i.ed, %i.ee
  %i.eg = shl nuw i64 1, %i.ee
  %i.eh = xor i64 %i.eg, -1
  %i.ei = and i64 %i.dy, %i.eh
  %i.ej = or i64 %i.ei, %i.ef                     ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Z15util_getBitMaskSt6vectorIiSaIiEES1_.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !2

_Z15util_getBitMaskSt6vectorIiSaIiEES1_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z15util_getBitMaskSt6vectorIiSaIiEES1_.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_Z15util_getBitMaskSt6vectorIiSaIiEES1_.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %_Z15util_getBitMaskSt6vectorIiSaIiEES1_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.08.i1.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.ej, %_Z15util_getBitMaskSt6vectorIiSaIiEES1_.exit.loopexit.unr-lcssa ]
  %lcmp.mod192 = trunc i64 %i.dm to i1
  call void @llvm.assume(i1 %lcmp.mod192)
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.i.epil.init
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !33
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.i.epil.init
  %i.en = load i32, ptr %i.em, align 4, !tbaa !33
  %i.eo = sext i32 %i.en to i64
  %i.ep = zext i32 %i.el to i64                   ; 2 uses
  %i.eq = shl i64 %i.eo, %i.ep
  %i.er = shl nuw i64 1, %i.ep
  %i.es = xor i64 %i.er, -1
  %i.et = and i64 %.08.i1.i.epil.init, %i.es
  %i.eu = or i64 %i.et, %i.eq
  br label %_Z15util_getBitMaskSt6vectorIiSaIiEES1_.exit

_Z15util_getBitMaskSt6vectorIiSaIiEES1_.exit:     ; preds = %.lr.ph.i.epil.preheader, %_Z15util_getBitMaskSt6vectorIiSaIiEES1_.exit.loopexit.unr-lcssa, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit52
  %.08.i.lcssa.i116 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit52 ], [ %i.ej, %_Z15util_getBitMaskSt6vectorIiSaIiEES1_.exit.loopexit.unr-lcssa ], [ %i.eu, %.lr.ph.i.epil.preheader ]
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.dd) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit54

_ZNSt6vectorIiSaIiEED2Ev.exit54:                  ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit46, %_Z15util_getBitMaskSt6vectorIiSaIiEES1_.exit
  %.08.i.lcssa.i117 = phi i64 [ %.08.i.lcssa.i116, %_Z15util_getBitMaskSt6vectorIiSaIiEES1_.exit ], [ 0, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit46 ]
  %.not.i.i.i55 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIiSaIiEED2Ev.exit56, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit54
  %i.ev = ptrtoint ptr %i.cz to i64
  %i.ew = ptrtoint ptr %i.da to i64
  %i.ex = sub i64 %i.ev, %i.ew
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.ex) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit56

_ZNSt6vectorIiSaIiEED2Ev.exit56:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit54, %bb.ag
  %.not.i.i.i57 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i57, label %_ZNSt6vectorIiSaIiEED2Ev.exit58, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit56
  %i.ey = ptrtoint ptr %i.ck to i64
  %i.ez = sub i64 %i.ey, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.ez) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit58

_ZNSt6vectorIiSaIiEED2Ev.exit58:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit56, %bb.ah
  %.not.i.i.i59 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i59, label %_ZNSt6vectorIiSaIiEED2Ev.exit60, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit58
  %i.fa = ptrtoint ptr %i.aq to i64
  %i.fb = sub i64 %i.fa, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.fb) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit60

_ZNSt6vectorIiSaIiEED2Ev.exit60:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit58, %bb.ai
  ret i64 %.08.i.lcssa.i117

bb.aj:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i16, %.noexc.i.i17
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit62

bb.ak:                                            ; preds = %bb.k
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i61, label %_ZNSt6vectorIiSaIiEED2Ev.exit62, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.y) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit62

_ZNSt6vectorIiSaIiEED2Ev.exit62:                  ; preds = %bb.al, %bb.ak, %bb.aj
  %.pn = phi { ptr, i32 } [ %i.fc, %bb.aj ], [ %i.fd, %bb.ak ], [ %i.fd, %bb.al ] ; 2 uses
  %i.fe = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %.not.i.i.i63 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i63, label %_ZNSt6vectorIiSaIiEED2Ev.exit64, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit62
  %i.ff = load ptr, ptr %i.n, align 8, !tbaa !37
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit64.sink.split

bb.an:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i24, %.noexc.i.i25
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit68

bb.ao:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i30, %.noexc.i.i31
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit66

bb.ap:                                            ; preds = %bb.w
  %i.fi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i65 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIiSaIiEED2Ev.exit66, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.bs) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit66

_ZNSt6vectorIiSaIiEED2Ev.exit66:                  ; preds = %bb.aq, %bb.ap, %bb.ao
  %.pn8 = phi { ptr, i32 } [ %i.fh, %bb.ao ], [ %i.fi, %bb.ap ], [ %i.fi, %bb.aq ] ; 2 uses
  %i.fj = load ptr, ptr %5, align 8, !tbaa !36    ; 3 uses
  %.not.i.i.i67 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i67, label %_ZNSt6vectorIiSaIiEED2Ev.exit68, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit66
  %i.fk = load ptr, ptr %i.bh, align 8, !tbaa !37
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = ptrtoint ptr %i.fj to i64
  %i.fn = sub i64 %i.fl, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %i.fj, i64 noundef %i.fn) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit68

bb.as:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i42, %.noexc.i.i43
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit72

bb.at:                                            ; preds = %.noexc.i.i49, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i48
  %i.fp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i71 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i71, label %_ZNSt6vectorIiSaIiEED2Ev.exit72, label %.thread121

.thread121:                                       ; preds = %bb.at
  %i.fq = ptrtoint ptr %i.cz to i64
  %i.fr = ptrtoint ptr %i.da to i64
  %i.fs = sub i64 %i.fq, %i.fr
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.fs) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit72

_ZNSt6vectorIiSaIiEED2Ev.exit72:                  ; preds = %.thread121, %bb.at, %bb.as
  %.pn10.pn = phi { ptr, i32 } [ %i.fo, %bb.as ], [ %i.fp, %bb.at ], [ %i.fp, %.thread121 ] ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i73, label %_ZNSt6vectorIiSaIiEED2Ev.exit68, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit72
  %i.ft = ptrtoint ptr %i.ck to i64
  %i.fu = ptrtoint ptr %i.ci to i64
  %i.fv = sub i64 %i.ft, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.fv) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit68

_ZNSt6vectorIiSaIiEED2Ev.exit68:                  ; preds = %bb.au, %_ZNSt6vectorIiSaIiEED2Ev.exit72, %bb.ar, %_ZNSt6vectorIiSaIiEED2Ev.exit66, %bb.an
  %.pn10.pn.pn = phi { ptr, i32 } [ %.pn8, %bb.ar ], [ %i.fg, %bb.an ], [ %.pn8, %_ZNSt6vectorIiSaIiEED2Ev.exit66 ], [ %.pn10.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit72 ], [ %.pn10.pn, %bb.au ] ; 2 uses
  %.not.i.i.i75 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i75, label %_ZNSt6vectorIiSaIiEED2Ev.exit64, label %_ZNSt6vectorIiSaIiEED2Ev.exit64.sink.split

_ZNSt6vectorIiSaIiEED2Ev.exit64.sink.split:       ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit68, %bb.am
  %.sink190 = phi ptr [ %i.ff, %bb.am ], [ %i.aq, %_ZNSt6vectorIiSaIiEED2Ev.exit68 ]
  %.sink189 = phi ptr [ %i.fe, %bb.am ], [ %i.ao, %_ZNSt6vectorIiSaIiEED2Ev.exit68 ] ; 2 uses
  %.pn10.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn, %bb.am ], [ %.pn10.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit68 ]
  %i.fw = ptrtoint ptr %.sink190 to i64
  %i.fx = ptrtoint ptr %.sink189 to i64
  %i.fy = sub i64 %i.fw, %i.fx
  call void @_ZdlPvm(ptr noundef nonnull %.sink189, i64 noundef %i.fy) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit64

_ZNSt6vectorIiSaIiEED2Ev.exit64:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit64.sink.split, %_ZNSt6vectorIiSaIiEED2Ev.exit68, %_ZNSt6vectorIiSaIiEED2Ev.exit62
  %.pn10.pn.pn.pn = phi { ptr, i32 } [ %.pn10.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit68 ], [ %.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit62 ], [ %.pn10.pn.pn.pn.ph, %_ZNSt6vectorIiSaIiEED2Ev.exit64.sink.split ]
  resume { ptr, i32 } %.pn10.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_Z34util_getGlobalIndexOfFirstLocalAmp5Qureg(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !40
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !45
  %i.f = mul nsw i64 %i.e, %i.c
  ret i64 %i.f
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_Z35util_getGlobalColumnOfFirstLocalAmp5Qureg(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z25assert_utilsGivenDensMatr5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !40
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i64, ptr %i.d, align 8, !tbaa !29
  %i.f = and i64 %i.e, 4294967295
  %i.g = shl i64 %i.c, %i.f
  ret i64 %i.g
}

declare void @_Z25assert_utilsGivenDensMatr5Qureg(ptr noundef byval(%struct.Qureg) align 8) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef i64 @_Z31util_getLocalIndexOfGlobalIndex5Quregx(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_2
