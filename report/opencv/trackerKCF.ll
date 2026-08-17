inline.NumInlined: 1275
inline.NumDeleted: 443
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNK2cv8tracking4impl14TrackerKCFImpl9shiftRowsERNS_3MatE:bb.a
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %16, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.h
  %.01935 = phi i32 [ %i.c, %.lr.ph ], [ %i.n, %bb.h ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !221
  %i.l = add nuw nsw i32 %.01935, 1
  store i32 %.01935, ptr %6, align 4, !tbaa !218, !noalias !221
  store i32 %i.l, ptr %i.h, align 4, !tbaa !220, !noalias !221
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !221
  store i64 9223372034707292160, ptr %7, align 8, !noalias !221
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !221
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !221
  %i.m = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %14)
          to label %bb.f unwind label %bb.m       ; 0 uses

bb.f:                                             ; preds = %bb.e
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.n = add nsw i32 %.01935, -1                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !224
  store i32 %i.n, ptr %4, align 4, !tbaa !218, !noalias !224
  store i32 %.01935, ptr %i.i, align 4, !tbaa !220, !noalias !224
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !224
  store i64 9223372034707292160, ptr %5, align 8, !noalias !224
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !224
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !224
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  store i64 0, ptr %i.k, align 8
  store i32 33619968, ptr %16, align 8, !tbaa !66
  store ptr %11, ptr %i.j, align 8, !tbaa !69
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.o = icmp samesign ugt i32 %.01935, 1
  br i1 %i.o, label %bb.d, label %._crit_edge, !llvm.loop !227

bb.i:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.q, %bb.j ], [ %i.p, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.y

bb.l:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn26 = phi { ptr, i32 } [ %i.s, %bb.m ], [ %i.r, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.y

bb.o:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #25
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn28.pn = phi { ptr, i32 } [ %i.u, %bb.p ], [ %i.t, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.y

._crit_edge:                                      ; preds = %bb.h, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !228
  store i32 0, ptr %2, align 4, !tbaa !218, !noalias !228
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 1, ptr %i.v, align 4, !tbaa !220, !noalias !228
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !228
  store i64 9223372034707292160, ptr %3, align 8, !noalias !228
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !228
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !228
  %i.w = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %bb.s unwind label %bb.v       ; 0 uses

bb.s:                                             ; preds = %bb.r
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  %i.x = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 0, ptr %i.y, align 8
  store i32 33619968, ptr %18, align 8, !tbaa !66
  store ptr %11, ptr %i.x, align 8, !tbaa !69
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  ret void

bb.u:                                             ; preds = %._crit_edge
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.r
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #25
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn22 = phi { ptr, i32 } [ %i.aa, %bb.v ], [ %i.z, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %bb.y

bb.x:                                             ; preds = %bb.s
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.q, %bb.n, %bb.k
  %.pn28.pn.pn = phi { ptr, i32 } [ %.pn28.pn, %bb.q ], [ %.pn26, %bb.n ], [ %i.ab, %bb.x ], [ %.pn22, %bb.w ], [ %.pn.pn, %bb.k ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  resume { ptr, i32 } %.pn28.pn.pn
}

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN2cv4flipERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #5

declare void @_ZN2cv9transposeERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8tracking4impl14TrackerKCFImpl19setFeatureExtractorEPFvNS_3MatENS_5Rect_IiEERS3_Eb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7488) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7432 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 7440 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !148  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 7448 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !231
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %1, ptr %i.c, align 8, !tbaa !151
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !148
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.b, align 8, !tbaa !148
  br label %_ZNSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE9push_backERKS6_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !149  ; 4 uses
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 6 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.e, label %_ZNKSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #28
  unreachable

_ZNKSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #26 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.k ; 2 uses
  store ptr %1, ptr %i.t, align 8, !tbaa !151
  %i.u = icmp sgt i64 %i.k, 0
  br i1 %i.u, label %bb.f, label %_ZNSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i

_ZNSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.not.i17.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #27
  br label %_ZNSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i
  store ptr %i.s, ptr %i.a, align 8, !tbaa !149
  store ptr %i.v, ptr %i.b, align 8, !tbaa !148
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.w, ptr %i.d, align 8, !tbaa !231
  br label %_ZNSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE9push_backERKS6_.exit

_ZNSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE9push_backERKS6_.exit: ; preds = %bb.c, %_ZNSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 7424
  store i8 1, ptr %3, align 8, !tbaa !16
  br label %4

bb.h:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 7456 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 7464 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !148  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 7472 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !231
  %.not.i1 = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %1, ptr %i.z, align 8, !tbaa !151
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !148
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !148
  br label %_ZNSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE9push_backERKS6_.exit8

bb.j:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !149 ; 4 uses
  %i.af = ptrtoint ptr %i.z to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 6 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.k, label %_ZNKSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE12_M_check_lenEmPKc.exit.i.i2

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #28
  unreachable

_ZNKSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE12_M_check_lenEmPKc.exit.i.i2: ; preds = %bb.j
  %i.aj = ashr exact i64 %i.ah, 3                 ; 3 uses
  %.sroa.speculated.i.i.i3 = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i3, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 1152921504606846975)
  %i.an = select i1 %i.al, i64 1152921504606846975, i64 %i.am ; 3 uses
  %.not.i.i.i4 = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %.not.i.i.i4)
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #26 ; 4 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.ah ; 2 uses
  store ptr %1, ptr %i.aq, align 8, !tbaa !151
  %i.ar = icmp sgt i64 %i.ah, 0
  br i1 %i.ar, label %bb.l, label %_ZNSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i5

bb.l:                                             ; preds = %_ZNKSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE12_M_check_lenEmPKc.exit.i.i2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr align 8 %i.ae, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i5

_ZNSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i5: ; preds = %bb.l, %_ZNKSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE12_M_check_lenEmPKc.exit.i.i2
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.not.i17.i.i6 = icmp eq ptr %i.ae, null
  br i1 %.not.i17.i.i6, label %_ZNSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i7, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i5
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ah) #27
  br label %_ZNSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i7

_ZNSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i7: ; preds = %bb.m, %_ZNSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i5
  store ptr %i.ap, ptr %i.x, align 8, !tbaa !149
  store ptr %i.as, ptr %i.y, align 8, !tbaa !148
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.an
  store ptr %i.at, ptr %i.aa, align 8, !tbaa !231
  br label %_ZNSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE9push_backERKS6_.exit8

_ZNSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE9push_backERKS6_.exit8: ; preds = %bb.i, %_ZNSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i7
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 7425
  store i8 1, ptr %i.au, align 1, !tbaa !56
  br label %4

4:                                                ; preds = %_ZNSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE9push_backERKS6_.exit8, %_ZNSt6vectorIPFvN2cv3MatENS0_5Rect_IiEERS1_ESaIS6_EE9push_backERKS6_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN2cv8tracking10TrackerKCF6ParamsC2Ev(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(44) initializes((0, 44)) %0) unnamed_addr #11 align 2 {
bb.a:
  store <4 x float> <float 5.000000e-01, float 2.000000e-01, float f0x38D1B717, float 7.500000e-02>, ptr %0, align 4, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <4 x i8> <i8 1, i8 1, i8 0, i8 1>, ptr %i.b, align 4, !tbaa !13
  store <4 x i32> <i32 6400, i32 2, i32 2, i32 1>, ptr %i.c, align 4, !tbaa !15
  store <2 x float> <float 6.250000e-02, float 1.500000e-01>, ptr %i.a, align 4, !tbaa !11
  ret void
}

declare void @_ZN2cv7TrackerC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN2cv7TrackerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN2cv8tracking10TrackerKCFD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #12 align 2 {
bb.a:
  tail call void @llvm.trap() #29
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

; Function Attrs: mustprogress uwtable
define void @_ZN2cv8tracking10TrackerKCF6createERKNS1_6ParamsE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.cv::Ptr.26") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(44) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(7504) ptr @_Znwm(i64 noundef 7504) #26, !noalias !232 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !90, !noalias !232
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !97, !noalias !232
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN2cv8tracking4impl14TrackerKCFImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !8, !noalias !232
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  invoke void @_ZN2cv8tracking4impl14TrackerKCFImplC2ERKNS0_10TrackerKCF6ParamsE(ptr noundef nonnull align 8 dereferenceable(7488) %i.d, ptr noundef nonnull readonly align 4 dereferenceable(44) %1)
          to label %_ZNSt12__shared_ptrIN2cv8tracking4impl14TrackerKCFImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv8tracking4impl14TrackerKCFImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !232

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv8tracking4impl14TrackerKCFImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 7504) #27, !noalias !232
  resume { ptr, i32 } %i.e

_ZNSt12__shared_ptrIN2cv8tracking4impl14TrackerKCFImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !237
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv6legacy8tracking10TrackerKCF6Params4readERKNS_8FileNodeE(ptr noundef nonnull align 4 dereferenceable(44) initializes((0, 44)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.cv::FileNode", align 8      ; 4 uses
  %3 = alloca %"class.cv::FileNode", align 8      ; 4 uses
  %4 = alloca %"class.cv::FileNode", align 8      ; 4 uses
  %5 = alloca %"class.cv::FileNode", align 8      ; 4 uses
  %6 = alloca %"class.cv::FileNode", align 8      ; 4 uses
  %7 = alloca %"class.cv::FileNode", align 8      ; 4 uses
  %8 = alloca %"class.cv::FileNode", align 8      ; 4 uses
  %9 = alloca %"class.cv::FileNode", align 8      ; 4 uses
  %10 = alloca %"class.cv::FileNode", align 8     ; 4 uses
  %11 = alloca %"class.cv::FileNode", align 8     ; 4 uses
  %12 = alloca %"class.cv::FileNode", align 8     ; 4 uses
  %13 = alloca %"class.cv::FileNode", align 8     ; 4 uses
  %14 = alloca %"class.cv::FileNode", align 8     ; 4 uses
  %15 = alloca %"class.cv::FileNode", align 8     ; 4 uses
  %16 = alloca %"class.cv::FileNode", align 8     ; 4 uses
  %17 = alloca %"class.cv::FileNode", align 8     ; 4 uses
  %18 = alloca %"class.cv::FileNode", align 8     ; 4 uses
  %19 = alloca %"class.cv::FileNode", align 8     ; 4 uses
  %20 = alloca %"class.cv::FileNode", align 8     ; 4 uses
  %21 = alloca %"class.cv::FileNode", align 8     ; 4 uses
  %22 = alloca %"class.cv::FileNode", align 8     ; 4 uses
  %23 = alloca %"class.cv::FileNode", align 8     ; 4 uses
  %24 = alloca %"class.cv::FileNode", align 8     ; 4 uses
  %25 = alloca %"class.cv::FileNode", align 8     ; 4 uses
  %26 = alloca %"class.cv::FileNode", align 8     ; 4 uses
  %27 = alloca %"class.cv::FileNode", align 8     ; 4 uses
  %28 = alloca %"class.cv::FileNode", align 8     ; 4 uses
  %29 = alloca %"class.cv::FileNode", align 8     ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <4 x float> <float 5.000000e-01, float 2.000000e-01, float f0x38D1B717, float 7.500000e-02>, ptr %0, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store <2 x float> <float 6.250000e-02, float 1.500000e-01>, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 26
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 27
  store <4 x i8> <i8 1, i8 1, i8 0, i8 1>, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <4 x i32> <i32 6400, i32 2, i32 2, i32 1>, ptr %.sroa.14.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZNK2cv8FileNodeixEPKc(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.8)
  %i.e = call noundef zeroext i1 @_ZNK2cv8FileNode5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZNK2cv8FileNodeixEPKc(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.8)
  call void @_ZN2cv4readERKNS_8FileNodeERff(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(4) %0, float noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNK2cv8FileNodeixEPKc(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.9)
  %i.f = call noundef zeroext i1 @_ZNK2cv8FileNode5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZNK2cv8FileNodeixEPKc(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.9)
  call void @_ZN2cv4readERKNS_8FileNodeERff(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.5.0..sroa_idx, float noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZNK2cv8FileNodeixEPKc(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.10)
  %i.g = call noundef zeroext i1 @_ZNK2cv8FileNode5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZNK2cv8FileNodeixEPKc(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.10)
  call void @_ZN2cv4readERKNS_8FileNodeERff(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.6.0..sroa_idx, float noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @_ZNK2cv8FileNodeixEPKc(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.11)
  %i.h = call noundef zeroext i1 @_ZNK2cv8FileNode5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %i.h, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @_ZNK2cv8FileNodeixEPKc(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.11)
  call void @_ZN2cv4readERKNS_8FileNodeERff(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.7.0..sroa_idx, float noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @_ZNK2cv8FileNodeixEPKc(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.12)
  %i.i = call noundef zeroext i1 @_ZNK2cv8FileNode5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @_ZNK2cv8FileNodeixEPKc(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.12)
  call void @_ZN2cv4readERKNS_8FileNodeERff(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.8.0..sroa_idx, float noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @_ZNK2cv8FileNodeixEPKc(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.13)
  %i.j = call noundef zeroext i1 @_ZNK2cv8FileNode5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br i1 %i.j, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @_ZNK2cv8FileNodeixEPKc(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @_ZN2cv4readERKNS_8FileNodeERii(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef 0)
  %i.k = load i32, ptr %i.d, align 4, !tbaa !15
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i8
  store i8 %i.m, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
end_hunk_0
