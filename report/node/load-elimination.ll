Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/load-elimination?download=true
inline.NumInlined: 1968
inline.NumDeleted: 802
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE:bb.a
  br i1 %.not27.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not28.i = icmp eq ptr %.036.i, null
  br i1 %.not28.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = load i64, ptr %i.d, align 8
  %i.l = load i64, ptr %i.e, align 8              ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ult i64 %i.m, 536
  br i1 %i.n, label %bb.f, label %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i, !prof !22

bb.f:                                             ; preds = %bb.e
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 noundef 536) #22
  %.pre.i.i.i = load i64, ptr %i.e, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i

_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i: ; preds = %bb.f, %bb.e
  %i.o = phi i64 [ %.pre.i.i.i, %bb.f ], [ %i.l, %bb.e ] ; 2 uses
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = add i64 %i.o, 536
  store i64 %i.q, ptr %i.e, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(536) %0, i64 536, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i, %bb.d
  %.1.i = phi ptr [ %.036.i, %bb.d ], [ %i.p, %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i
  store ptr %i.i, ptr %i.s, align 8
  %i.t = load ptr, ptr %i.g, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load i64, ptr %i.u, align 8
  %i.w = trunc i64 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.y = load i64, ptr %i.x, align 8
  %i.z = trunc i64 %i.y to i32
  %.neg.i = sub i32 %i.z, %i.w
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i, i64 532 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = add i32 %.neg.i, %i.ab
  store i32 %i.ac, ptr %i.aa, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c, %bb.b
  %.2.i = phi ptr [ %.1.i, %bb.g ], [ %.036.i, %bb.c ], [ %.036.i, %bb.b ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ad = trunc nsw i64 %indvars.iv.next.i to i32
  %.not32.i = icmp eq i32 %i.ad, %.sroa.2.0.extract.trunc.i
  br i1 %.not32.i, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldERKNS2_14AliasStateInfoENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit, label %bb.b

_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldERKNS2_14AliasStateInfoENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit: ; preds = %bb.h, %bb.a
  %.0.lcssa.i = phi ptr [ null, %bb.a ], [ %.2.i, %bb.h ] ; 2 uses
  %.not.i = icmp eq ptr %.0.lcssa.i, null
  %i.ae = select i1 %.not.i, ptr %0, ptr %.0.lcssa.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret ptr %i.ae
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldERKNS2_14AliasStateInfoENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(536) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 %2, ptr nofree readnone captures(address) %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.031.0.extract.trunc = trunc i64 %2 to i32
  %.sroa.2.0.extract.shift = lshr i64 %2, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32 ; 2 uses
  %.not3234 = icmp eq i32 %.sroa.031.0.extract.trunc, %.sroa.2.0.extract.trunc
  br i1 %.not3234, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %sext = shl i64 %2, 32
  %i.d = ashr exact i64 %sext, 32
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.0.lcssa = phi ptr [ null, %bb.a ], [ %.2, %bb.h ] ; 2 uses
  %.not = icmp eq ptr %.0.lcssa, null
  %i.e = select i1 %.not, ptr %0, ptr %.0.lcssa
  ret ptr %i.e

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %i.d, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %.036 = phi ptr [ null, %.lr.ph ], [ %.2, %bb.h ] ; 4 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not26 = icmp eq ptr %i.g, null
  br i1 %.not26, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef ptr @_ZNK2v88internal8compiler15LoadElimination13AbstractField4KillERKNS2_14AliasStateInfoENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %3, ptr noundef %4) ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8
  %.not27 = icmp eq ptr %i.i, %i.h
  br i1 %.not27, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not28 = icmp eq ptr %.036, null
  br i1 %.not28, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = load i64, ptr %i.b, align 8
  %i.k = load i64, ptr %i.c, align 8              ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, 536
  br i1 %i.m, label %bb.f, label %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit, !prof !22

bb.f:                                             ; preds = %bb.e
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 noundef 536) #22
  %.pre.i.i = load i64, ptr %i.c, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit: ; preds = %bb.e, %bb.f
  %i.n = phi i64 [ %.pre.i.i, %bb.f ], [ %i.k, %bb.e ] ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = add i64 %i.n, 536
  store i64 %i.p, ptr %i.c, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.o, ptr noundef nonnull align 8 dereferenceable(536) %0, i64 536, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit, %bb.d
  %.1 = phi ptr [ %.036, %bb.d ], [ %i.o, %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  store ptr %i.h, ptr %i.r, align 8
  %i.s = load ptr, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = load i64, ptr %i.t, align 8
  %i.v = trunc i64 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.x = load i64, ptr %i.w, align 8
  %i.y = trunc i64 %i.x to i32
  %.neg = sub i32 %i.y, %i.v
  %i.z = getelementptr inbounds nuw i8, ptr %.1, i64 532 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = add i32 %.neg, %i.aa
  store i32 %i.ab, ptr %i.z, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g, %bb.b
  %.2 = phi ptr [ %.1, %bb.g ], [ %.036, %bb.c ], [ %.036, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ac = trunc nsw i64 %indvars.iv.next to i32
  %.not32 = icmp eq i32 %i.ac, %.sroa.2.0.extract.trunc
  br i1 %.not32, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK2v88internal8compiler15LoadElimination13AbstractState10KillFieldsEPNS1_4NodeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr nofree readnone captures(address) %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::compiler::LoadElimination::AliasStateInfo", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %0, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.thread
  %.03155 = phi i64 [ 0, %bb.a ], [ %i.ah, %.thread ] ; 5 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.03155
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call noundef ptr @_ZNK2v88internal8compiler15LoadElimination13AbstractField4KillERKNS2_14AliasStateInfoENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %2, ptr noundef %3) ; 2 uses
  %.not43 = icmp eq ptr %i.f, %i.e
  br i1 %.not43, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = sub i64 %i.h, %i.j
  %i.l = icmp ult i64 %i.k, 536
  br i1 %i.l, label %bb.e, label %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit, !prof !22

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 noundef 536) #22
  %.pre.i.i = load i64, ptr %i.i, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit: ; preds = %bb.d, %bb.e
  %i.m = phi i64 [ %.pre.i.i, %bb.e ], [ %i.j, %bb.d ] ; 2 uses
  %i.n = inttoptr i64 %i.m to ptr                 ; 5 uses
  %i.o = add i64 %i.m, 536
  store i64 %i.o, ptr %i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.n, ptr noundef nonnull align 8 dereferenceable(536) %0, i64 536, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.03155
  store ptr %i.f, ptr %i.q, align 8
  %i.r = icmp samesign ult i64 %.03155, 31
  br i1 %i.r, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit
  %5 = add nuw nsw i64 %.03155, 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 532 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %i.t = phi i64 [ %5, %.lr.ph ], [ %6, %bb.h ]   ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not44 = icmp eq ptr %i.v, null
  br i1 %.not44, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = call noundef ptr @_ZNK2v88internal8compiler15LoadElimination13AbstractField4KillERKNS2_14AliasStateInfoENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %2, ptr noundef nonnull %3) ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.t
  store ptr %i.w, ptr %i.x, align 8
  %i.y = load ptr, ptr %i.u, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = trunc i64 %i.ad to i32
  %.neg = sub i32 %i.ae, %i.ab
  %i.af = load i32, ptr %i.s, align 4
  %i.ag = add i32 %.neg, %i.af
  store i32 %i.ag, ptr %i.s, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %6 = add nuw nsw i64 %i.t, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %6, 32
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !46

.thread:                                          ; preds = %bb.c, %bb.b
  %i.ah = add nuw nsw i64 %.03155, 1              ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 32
  br i1 %i.ai, label %.loopexit, label %bb.b, !llvm.loop !47

.loopexit:                                        ; preds = %.thread, %bb.h, %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit
  %.4 = phi ptr [ %i.n, %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit ], [ %i.n, %bb.h ], [ %0, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret ptr %.4
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK2v88internal8compiler15LoadElimination13AbstractState7KillAllEPNS0_4ZoneE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(536) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.b = load <8 x ptr>, ptr %i.a, align 8
  %.fr = freeze <8 x ptr> %i.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.d = load ptr, ptr %i.c, align 8
  %.not.8 = icmp eq ptr %i.d, null
  %i.e = icmp ne <8 x ptr> %.fr, splat (ptr null)
  %i.f = bitcast <8 x i1> %i.e to i8
  %i.g = icmp eq i8 %i.f, 0
  %op.rdx = select i1 %i.g, i1 %.not.8, i1 false
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.i = load ptr, ptr %i.h, align 8
  %.not.9 = icmp eq ptr %i.i, null
  %or.cond = select i1 %op.rdx, i1 %.not.9, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.k = load ptr, ptr %i.j, align 8
  %.not.10 = icmp eq ptr %i.k, null
  %or.cond33 = select i1 %or.cond, i1 %.not.10, i1 false
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.m = load ptr, ptr %i.l, align 8
  %.not.11 = icmp eq ptr %i.m, null
  %or.cond35 = select i1 %or.cond33, i1 %.not.11, i1 false
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.o = load ptr, ptr %i.n, align 8
  %.not.12 = icmp eq ptr %i.o, null
  %or.cond37 = select i1 %or.cond35, i1 %.not.12, i1 false
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.q = load ptr, ptr %i.p, align 8
  %.not.13 = icmp eq ptr %i.q, null
  %or.cond39 = select i1 %or.cond37, i1 %.not.13, i1 false
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.s = load ptr, ptr %i.r, align 8
  %.not.14 = icmp eq ptr %i.s, null
  %or.cond41 = select i1 %or.cond39, i1 %.not.14, i1 false
  br i1 %or.cond41, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.u = load ptr, ptr %i.t, align 8
  %.not.15 = icmp eq ptr %i.u, null
  br i1 %.not.15, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.w = load ptr, ptr %i.v, align 8
  %.not.16 = icmp eq ptr %i.w, null
  br i1 %.not.16, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.y = load ptr, ptr %i.x, align 8
  %.not.17 = icmp eq ptr %i.y, null
  br i1 %.not.17, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.aa = load ptr, ptr %i.z, align 8
  %.not.18 = icmp eq ptr %i.aa, null
  br i1 %.not.18, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ac = load ptr, ptr %i.ab, align 8
  %.not.19 = icmp eq ptr %i.ac, null
  br i1 %.not.19, label %bb.g, label %bb.s

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.20 = icmp eq ptr %i.ae, null
  br i1 %.not.20, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ag = load ptr, ptr %i.af, align 8
  %.not.21 = icmp eq ptr %i.ag, null
  br i1 %.not.21, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.22 = icmp eq ptr %i.ai, null
  br i1 %.not.22, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ak = load ptr, ptr %i.aj, align 8
  %.not.23 = icmp eq ptr %i.ak, null
  br i1 %.not.23, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.am = load ptr, ptr %i.al, align 8
  %.not.24 = icmp eq ptr %i.am, null
  br i1 %.not.24, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ao = load ptr, ptr %i.an, align 8
  %.not.25 = icmp eq ptr %i.ao, null
  br i1 %.not.25, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.aq = load ptr, ptr %i.ap, align 8
  %.not.26 = icmp eq ptr %i.aq, null
  br i1 %.not.26, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.as = load ptr, ptr %i.ar, align 8
  %.not.27 = icmp eq ptr %i.as, null
  br i1 %.not.27, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.au = load ptr, ptr %i.at, align 8
  %.not.28 = icmp eq ptr %i.au, null
  br i1 %.not.28, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.aw = load ptr, ptr %i.av, align 8
  %.not.29 = icmp eq ptr %i.aw, null
  br i1 %.not.29, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ay = load ptr, ptr %i.ax, align 8
  %.not.30 = icmp eq ptr %i.ay, null
  br i1 %.not.30, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ba = load ptr, ptr %i.az, align 8
  %.not.31 = icmp eq ptr %i.ba, null
  br i1 %.not.31, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  %i.bf = sub i64 %i.bc, %i.be
  %i.bg = icmp ult i64 %i.bf, 536
  br i1 %i.bg, label %bb.t, label %bb.u, !prof !22

bb.t:                                             ; preds = %bb.s
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef 536) #22
  %.pre.i.i = load i64, ptr %i.bd, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bh = phi i64 [ %.pre.i.i, %bb.t ], [ %i.be, %bb.s ] ; 2 uses
  %i.bi = inttoptr i64 %i.bh to ptr               ; 5 uses
  %i.bj = add i64 %i.bh, 536
  store i64 %i.bj, ptr %i.bd, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.bi, i8 0, i64 536, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 264
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.bk, ptr noundef nonnull align 8 dereferenceable(256) %i.a, i64 256, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.bm = load i32, ptr %i.bl, align 8            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 528
  store i32 %i.bm, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 532
  store i32 %i.bm, ptr %i.bo, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.r, %bb.u
  %.1 = phi ptr [ %i.bi, %bb.u ], [ @_ZN2v88internal8compiler15LoadElimination13AbstractState12empty_state_E, %bb.r ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK2v88internal8compiler15LoadElimination13AbstractState11LookupFieldEPNS1_4NodeENS2_10IndexRangeENS1_14ConstFieldInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(536) %0, ptr noundef %1, i64 %2, ptr %3) local_unnamed_addr #0 align 2 {
.lr.ph:
  %4 = alloca %"struct.v8::internal::compiler::ConstFieldInfo", align 8 ; 3 uses
  %.sroa.047.0.extract.trunc = trunc i64 %2 to i32
  %.sroa.2.0.extract.shift = lshr i64 %2, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32 ; 2 uses
  store ptr %3, ptr %4, align 8
  %.not5258 = icmp ne i32 %.sroa.047.0.extract.trunc, %.sroa.2.0.extract.trunc
  tail call void @llvm.assume(i1 %.not5258)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
end_hunk_0
