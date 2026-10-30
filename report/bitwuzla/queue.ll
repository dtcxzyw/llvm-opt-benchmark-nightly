Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/queue?download=true
inline.NumInlined: 84
inline.NumDeleted: 49
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7CaDiCaL8Internal10init_queueEii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7288) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3696
  %i.e = load i32, ptr %i.d, align 8, !tbaa !166
  %.not.i = icmp eq i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 580 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4632 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.m = sext i32 %1 to i64                       ; 2 uses
  %wide.trip.count14 = sext i32 %2 to i64         ; 2 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.promoted6 = load i32, ptr %i.i, align 4, !tbaa !156
  br label %bb.b

bb.b:                                             ; preds = %.sink.split.i.us, %.lr.ph.split.us
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %.sink.split.i.us ], [ %i.m, %.lr.ph.split.us ]
  %i.n = phi i32 [ %.pre-phi, %.sink.split.i.us ], [ %.promoted6, %.lr.ph.split.us ] ; 3 uses
  %indvars.iv.next12 = add nsw i64 %indvars.iv11, 1 ; 6 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next12 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 0, ptr %i.p, align 4, !tbaa !158
  %.not15.i.us = icmp eq i32 %i.n, 0
  br i1 %.not15.i.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = trunc nsw i64 %indvars.iv.next12 to i32  ; 2 uses
  store i32 %i.t, ptr %i.s, align 4, !tbaa !158
  br label %.sink.split.i.us

bb.d:                                             ; preds = %bb.b
  %i.u = trunc nsw i64 %indvars.iv.next12 to i32  ; 2 uses
  store i32 %i.u, ptr %i.f, align 8, !tbaa !159
  br label %.sink.split.i.us

.sink.split.i.us:                                 ; preds = %bb.d, %bb.c
  %.pre-phi = phi i32 [ %i.u, %bb.d ], [ %i.t, %bb.c ]
  %i.v = load i64, ptr %i.k, align 8, !tbaa !167
  %i.w = add nsw i64 %i.v, 1                      ; 3 uses
  store i64 %i.w, ptr %i.k, align 8, !tbaa !167
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next12
  store i64 %i.w, ptr %i.x, align 8, !tbaa !160
  store i32 %i.n, ptr %i.o, align 4, !tbaa !161
  store i64 %i.w, ptr %i.l, align 8, !tbaa !162
  %exitcond15.not = icmp eq i64 %indvars.iv.next12, %wide.trip.count14
  br i1 %exitcond15.not, label %._crit_edge.split.us, label %bb.b, !llvm.loop !165

._crit_edge.split.us:                             ; preds = %.sink.split.i.us
  store i32 %2, ptr %i.i, align 4, !tbaa !156
  store i32 %2, ptr %i.j, align 8, !tbaa !164
  br label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph
  %.promoted = load i32, ptr %i.f, align 8, !tbaa !159 ; 2 uses
  %3 = sext i32 %.promoted to i64
  br label %bb.e

._crit_edge.split:                                ; preds = %_ZN7CaDiCaL8Internal12init_enqueueEi.exit
  store i32 %2, ptr %i.f, align 8, !tbaa !159
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.split, %._crit_edge.split.us, %bb.a
  ret void

bb.e:                                             ; preds = %.lr.ph.split, %_ZN7CaDiCaL8Internal12init_enqueueEi.exit
  %indvars.iv = phi i64 [ %i.m, %.lr.ph.split ], [ %indvars.iv.next, %_ZN7CaDiCaL8Internal12init_enqueueEi.exit ]
  %indvars.iv.a = phi i64 [ %3, %.lr.ph.split ], [ %indvars.iv.next, %_ZN7CaDiCaL8Internal12init_enqueueEi.exit ] ; 2 uses
  %i.y = phi i32 [ %.promoted, %.lr.ph.split ], [ %i.an, %_ZN7CaDiCaL8Internal12init_enqueueEi.exit ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 8 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next ; 2 uses
  store i32 0, ptr %i.z, align 4, !tbaa !161
  %.not16.i = icmp eq i32 %i.y, 0
  br i1 %.not16.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.a
  %i.ab = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !161
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.a
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !160
  %i.ae = add nsw i64 %i.ad, -1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.af = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.af, ptr %i.i, align 4, !tbaa !156
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi i64 [ 0, %bb.g ], [ %i.ae, %bb.f ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next
  store i64 %.sink.i, ptr %i.ag, align 8, !tbaa !160
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %i.y, ptr %i.ah, align 4, !tbaa !158
  %i.ai = load i32, ptr %i.j, align 8, !tbaa !164
  %.not17.i = icmp eq i32 %i.ai, 0
  br i1 %.not17.i, label %.sink.split.i, label %_ZN7CaDiCaL8Internal12init_enqueueEi.exit

.sink.split.i:                                    ; preds = %bb.h
  %i.aj = load i32, ptr %i.i, align 4, !tbaa !156 ; 2 uses
  store i32 %i.aj, ptr %i.j, align 8, !tbaa !164
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !160
  store i64 %i.am, ptr %i.l, align 8, !tbaa !162
  br label %_ZN7CaDiCaL8Internal12init_enqueueEi.exit

_ZN7CaDiCaL8Internal12init_enqueueEi.exit:        ; preds = %bb.h, %.sink.split.i
  %i.an = trunc nsw i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count14
  br i1 %exitcond.not, label %._crit_edge.split, label %bb.e, !llvm.loop !165
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal13shuffle_queueEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7288) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3720
  %i.b = load i32, ptr %i.a, align 8, !tbaa !172
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3724
  %i.d = load i32, ptr %i.c, align 4
  %.not19 = icmp eq i32 %i.d, 0
  %or.cond = select i1 %.not, i1 true, i1 %.not19
  br i1 %or.cond, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4504 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !173
  %i.g = add nsw i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !173
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3728
  %i.i = load i32, ptr %i.h, align 8, !tbaa !174
  %.not20 = icmp eq i32 %i.i, 0
  br i1 %.not20, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !175  ; 2 uses
  %.not2391 = icmp eq i32 %i.k, 0
  br i1 %.not2391, label %._crit_edge123.thread, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.pre130 = load i32, ptr %i.j, align 8, !tbaa !175 ; 2 uses
  %.not2497 = icmp slt i32 %.pre130, 2
  br i1 %.not2497, label %.loopexit, label %.lr.ph101.preheader

.lr.ph101.preheader:                              ; preds = %._crit_edge
  %.pre = load i64, ptr %i.e, align 8, !tbaa !173
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3708
  %i.m = load i32, ptr %i.l, align 4, !tbaa !176
  %i.n = sext i32 %i.m to i64
  %i.o = add i64 %.pre, %i.n
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = mul i64 %spec.select.i.i, 6364136223846793005
  %i.q = add i64 %i.p, 1442695040888963407
  br label %.lr.ph101

.lr.ph:                                           ; preds = %bb.c, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %storemerge2295 = phi i32 [ %i.af, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.k, %bb.c ] ; 3 uses
  %.sroa.20.094 = phi ptr [ %.sroa.20.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.c ] ; 3 uses
  %.sroa.13.093 = phi ptr [ %.sroa.13.3, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.c ] ; 3 uses
  %.sroa.056.092 = phi ptr [ %.sroa.056.4, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.c ] ; 6 uses
  %.not.i = icmp eq ptr %.sroa.13.093, %.sroa.20.094
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  store i32 %storemerge2295, ptr %.sroa.13.093, align 4, !tbaa !177
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.e:                                             ; preds = %.lr.ph
  %i.r = ptrtoint ptr %.sroa.20.094 to i64
  %i.s = ptrtoint ptr %.sroa.056.092 to i64
  %i.t = sub i64 %i.r, %i.s                       ; 5 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775804
  br i1 %i.u, label %bb.f, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #8
          to label %.noexc unwind label %.loopexit.split-lp77.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.v = ashr exact i64 %i.t, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 2305843009213693951)
  %i.z = select i1 %i.x, i64 2305843009213693951, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 2
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #9
          to label %.noexc30 unwind label %.loopexit.split-lp77.loopexit.split-lp ; 4 uses

.noexc30:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.t ; 2 uses
  store i32 %storemerge2295, ptr %i.ac, align 4, !tbaa !177
  %i.ad = icmp sgt i64 %i.t, 0
  br i1 %i.ad, label %bb.g, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %.noexc30
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr align 4 %.sroa.056.092, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %.noexc30
  %.not.i17.i.i = icmp eq ptr %.sroa.056.092, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.056.092) #10
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.z
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.d
  %.sroa.056.4 = phi ptr [ %i.ab, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.056.092, %bb.d ] ; 5 uses
  %.pn = phi ptr [ %i.ac, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.13.093, %bb.d ]
  %.sroa.20.2 = phi ptr [ %i.ae, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.20.094, %bb.d ]
  %.sroa.13.3 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 3 uses
  %i.af = add nsw i32 %storemerge2295, -1         ; 2 uses
  %.not23 = icmp eq i32 %i.af, 0
  br i1 %.not23, label %._crit_edge, label %.lr.ph, !llvm.loop !168

.loopexit.split-lp77.loopexit.split-lp:           ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.lr.ph101:                                        ; preds = %.lr.ph101.preheader, %.lr.ph101
  %indvars.iv = phi i64 [ 0, %.lr.ph101.preheader ], [ %indvars.iv.next, %.lr.ph101 ] ; 4 uses
  %i.ag = phi i32 [ %.pre130, %.lr.ph101.preheader ], [ %i.ay, %.lr.ph101 ]
  %.sroa.051.098 = phi i64 [ %i.q, %.lr.ph101.preheader ], [ %i.ai, %.lr.ph101 ]
  %i.ah = mul i64 %.sroa.051.098, 6364136223846793005
  %i.ai = add i64 %i.ah, 1442695040888963407      ; 2 uses
  %i.aj = lshr i64 %i.ai, 32
  %i.ak = trunc nuw i64 %i.aj to i32
  %i.al = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.am = sub nsw i32 %i.ag, %i.al
  %i.an = uitofp i32 %i.ak to double
  %i.ao = fmul nnan double %i.an, f0x3DF0000000000000
  %i.ap = uitofp i32 %i.am to double
  %i.aq = fmul double %i.ao, %i.ap
  %i.ar = fptoui double %i.aq to i32
  %i.as = add i32 %i.al, %i.ar
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.sroa.056.4, i64 %indvars.iv ; 2 uses
  %i.au = sext i32 %i.as to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.sroa.056.4, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !177
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !177
  store i32 %i.ax, ptr %i.at, align 4, !tbaa !177
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !177
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ay = load i32, ptr %i.j, align 8, !tbaa !175 ; 2 uses
  %i.az = add nsw i32 %i.ay, -2
  %i.ba = sext i32 %i.az to i64
  %.not24.not = icmp slt i64 %indvars.iv, %i.ba
  br i1 %.not24.not, label %.lr.ph101, label %.loopexit, !llvm.loop !169

bb.i:                                             ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 580
  %storemerge102 = load i32, ptr %i.bb, align 4, !tbaa !177 ; 2 uses
  %.not21103 = icmp eq i32 %storemerge102, 0
  br i1 %.not21103, label %._crit_edge123.thread, label %.lr.ph109

.lr.ph109:                                        ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 600
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph109, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit41
  %storemerge107 = phi i32 [ %storemerge102, %.lr.ph109 ], [ %storemerge, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit41 ] ; 3 uses
  %.sroa.20.1106 = phi ptr [ null, %.lr.ph109 ], [ %.sroa.20.3, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit41 ] ; 3 uses
  %.sroa.13.1105 = phi ptr [ null, %.lr.ph109 ], [ %.sroa.13.4, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit41 ] ; 3 uses
  %.sroa.056.1104 = phi ptr [ null, %.lr.ph109 ], [ %.sroa.056.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit41 ] ; 6 uses
  %.not.i32 = icmp eq ptr %.sroa.13.1105, %.sroa.20.1106
  br i1 %.not.i32, label %bb.l, label %bb.k
end_hunk_0
