Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonMCDuplexInfo?download=true
inline.NumInlined: 466
inline.NumDeleted: 144
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm18HexagonMCInstrInfo13deriveSubInstERKNS_6MCInstE:bb.a

bb.bm:                                            ; preds = %bb.bk
  store i32 2612, ptr %0, align 8, !tbaa !18
  %.val118 = load ptr, ptr %i.bv, align 8, !tbaa !19
  call fastcc void @_ZL6addOpsRN4llvm6MCInstERKS0_j(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr %.val118, i32 noundef 0)
  %.val117 = load ptr, ptr %i.bv, align 8, !tbaa !19
  call fastcc void @_ZL6addOpsRN4llvm6MCInstERKS0_j(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr %.val117, i32 noundef 1)
  br label %bb.bp

bb.bn:                                            ; preds = %bb.a
  store i32 2617, ptr %0, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val116 = load ptr, ptr %i.cc, align 8, !tbaa !19
  tail call fastcc void @_ZL6addOpsRN4llvm6MCInstERKS0_j(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr %.val116, i32 noundef 0)
  %.val115 = load ptr, ptr %i.cc, align 8, !tbaa !19
  tail call fastcc void @_ZL6addOpsRN4llvm6MCInstERKS0_j(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr %.val115, i32 noundef 1)
  br label %bb.bp

bb.bo:                                            ; preds = %bb.a
  store i32 2618, ptr %0, align 8, !tbaa !18
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val114 = load ptr, ptr %i.cd, align 8, !tbaa !19
  tail call fastcc void @_ZL6addOpsRN4llvm6MCInstERKS0_j(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr %.val114, i32 noundef 0)
  %.val = load ptr, ptr %i.cd, align 8, !tbaa !19
  tail call fastcc void @_ZL6addOpsRN4llvm6MCInstERKS0_j(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr %.val, i32 noundef 1)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.ap, %bb.p, %bb.bb, %bb.bc, %bb.ay, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.az, %bb.ax, %bb.aw, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ao, %bb.an, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.o, %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm18HexagonMCInstrInfo12isDuplexPairERKNS_6MCInstES3_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4llvm18HexagonMCInstrInfo23getDuplexCandidateGroupERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(128) %0) ; 8 uses
  %i.b = tail call noundef i32 @_ZN4llvm18HexagonMCInstrInfo23getDuplexCandidateGroupERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(128) %1) ; 6 uses
  switch i32 %i.a, label %_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit.thread [
    i32 5, label %.split
    i32 1, label %.split15
    i32 2, label %.split14
    i32 3, label %.split13
    i32 4, label %_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit
  ]

.split15:                                         ; preds = %bb.a
  %i.c = and i32 %i.b, 3
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit11, label %_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit.thread

.split14:                                         ; preds = %bb.a
  switch i32 %i.b, label %_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit11.fold.split [
    i32 5, label %_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit11
    i32 2, label %_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit11
    i32 1, label %_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit11
    i32 3, label %bb.d
    i32 4, label %bb.e
  ]

.split13:                                         ; preds = %bb.a
  switch i32 %i.b, label %_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit11.fold.split [
    i32 5, label %_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit11
    i32 3, label %_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit11
    i32 2, label %_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit11
    i32 1, label %_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit11
    i32 4, label %bb.e
  ]

.split:                                           ; preds = %bb.a
  switch i32 %i.b, label %_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit11.fold.split [
    i32 5, label %_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit11
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
  ]

_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit: ; preds = %bb.a
  %i.e = icmp ne i32 %i.b, 0
  br label %_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit11

_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit.thread: ; preds = %bb.a, %.split15
  switch i32 %i.b, label %_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit11.fold.split [
    i32 5, label %bb.f
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
  ]

bb.b:                                             ; preds = %.split, %_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit.thread
  %i.f = and i32 %i.a, 3
  %i.g = icmp eq i32 %i.f, 1
  br label %_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit11

bb.c:                                             ; preds = %.split, %_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit.thread
  %i.h = add nsw i32 %i.a, -1
  %or.cond.i9 = icmp ult i32 %i.h, 2
  %i.i = icmp eq i32 %i.a, 5
  %spec.select.i10 = or i1 %i.i, %or.cond.i9
  br label %_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit11

bb.d:                                             ; preds = %.split14, %.split, %_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit.thread
  %i.j = add nsw i32 %i.a, -1
  %or.cond5.i7 = icmp ult i32 %i.j, 3
  %i.k = icmp eq i32 %i.a, 5
  %spec.select29.i8 = or i1 %i.k, %or.cond5.i7
  br label %_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit11

bb.e:                                             ; preds = %.split13, %.split14, %.split, %_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit.thread
  %i.l = icmp ne i32 %i.a, 0
  br label %_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit11

bb.f:                                             ; preds = %_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit.thread
  %i.m = icmp eq i32 %i.a, 5
  br label %_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit11

_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit11.fold.split: ; preds = %.split13, %.split14, %.split, %_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit.thread
  br label %_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit11

_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit11: ; preds = %_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit, %.split13, %.split13, %.split13, %.split13, %.split14, %.split14, %.split14, %.split, %_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit11.fold.split, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.split15
  %i.n = phi i1 [ false, %_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit11.fold.split ], [ true, %.split15 ], [ true, %.split ], [ true, %.split13 ], [ true, %.split14 ], [ %i.m, %bb.f ], [ true, %.split13 ], [ %i.g, %bb.b ], [ %spec.select.i10, %bb.c ], [ %spec.select29.i8, %bb.d ], [ %i.l, %bb.e ], [ %i.e, %_ZN4llvm18HexagonMCInstrInfo17isDuplexPairMatchEjj.exit ], [ true, %.split14 ], [ true, %.split14 ], [ true, %.split13 ], [ true, %.split13 ]
  ret i1 %i.n
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZL6addOpsRN4llvm6MCInstERKS0_j(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nofree readonly captures(none) %.16.val, i32 noundef range(i32 0, 3) %1) unnamed_addr #5 {
bb.a:
  %i.a = zext nneg i32 %1 to i64
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %.16.val, i64 %i.a ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !36    ; 3 uses
  %i.d = icmp eq i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.24.0.copyload = load i64, ptr %i.e, align 8, !tbaa !20 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !33   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !37
  %.not.i.i = icmp ult i32 %i.h, %i.j             ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !38

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 1, i64 %.sroa.24.0.copyload)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

bb.d:                                             ; preds = %bb.b
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k ; 2 uses
  store i8 1, ptr %i.m, align 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sroa.24.0.copyload, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %i.n = load i32, ptr %i.g, align 8, !tbaa !33
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.g, align 8, !tbaa !33
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !38

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 %i.c, i64 %.sroa.24.0.copyload)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

bb.g:                                             ; preds = %bb.e
  %i.p = zext i32 %i.h to i64
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.p ; 2 uses
  store i8 %i.c, ptr %i.r, align 1
  %.sroa.4.0..sroa_idx.i.i14 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.24.0.copyload, ptr %.sroa.4.0..sroa_idx.i.i14, align 1
  %i.s = load i32, ptr %i.g, align 8, !tbaa !33
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.g, align 8, !tbaa !33
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit:  ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18HexagonMCInstrInfo21getDuplexPossibiltiesERKNS_11MCInstrInfoERKNS_15MCSubtargetInfoERKNS_6MCInstE(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.7") align 8 %0, ptr nofree noundef nonnull readnone align 1 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %2, ptr noundef nonnull align 8 dereferenceable(128) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i32 0, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 8, ptr %i.c, align 4, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !33   ; 4 uses
  %i.f = icmp ugt i32 %i.e, 1
  br i1 %i.f, label %.lr.ph82.split.preheader, label %._crit_edge

.lr.ph82.split.preheader:                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.h = zext i32 %i.e to i64
  %i.i = add i32 %i.e, 1
  br label %.lr.ph82.split

.loopexit:                                        ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_15DuplexCandidateELb1EE9push_backES1_.exit, %.lr.ph82.split
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next85 to i32
  %exitcond.not = icmp eq i32 %i.i, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph82.split, !llvm.loop !49

.lr.ph82.split:                                   ; preds = %.lr.ph82.split.preheader, %.loopexit
  %indvars.iv84 = phi i64 [ 2, %.lr.ph82.split.preheader ], [ %indvars.iv.next85, %.loopexit ] ; 2 uses
  %.081 = phi i32 [ 1, %.lr.ph82.split.preheader ], [ %i.j, %.loopexit ]
  %i.j = add nuw i32 %.081, 1                     ; 2 uses
  %i.k = icmp ult i32 %i.j, %i.e
  br i1 %i.k, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph82.split, %_ZN4llvm23SmallVectorTemplateBaseINS_15DuplexCandidateELb1EE9push_backES1_.exit
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %_ZN4llvm23SmallVectorTemplateBaseINS_15DuplexCandidateELb1EE9push_backES1_.exit ], [ %indvars.iv84, %.lr.ph82.split ] ; 9 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseINS_15DuplexCandidateELb1EE9push_backES1_.exit ], [ 1, %.lr.ph82.split ] ; 9 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.p = load i32, ptr %i.o, align 8, !tbaa !18
  switch i32 %i.p, label %_ZL11isStoreInstj.exit [
    i32 2368, label %bb.b
    i32 2326, label %bb.b
    i32 2354, label %bb.b
    i32 2340, label %bb.b
    i32 2536, label %bb.b
    i32 2526, label %bb.b
    i32 2142, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %indvars.iv86
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !20
  %i.t = load i32, ptr %i.s, align 8, !tbaa !18
  switch i32 %i.t, label %_ZL11isStoreInstj.exit [
    i32 2368, label %bb.c
    i32 2326, label %bb.c
    i32 2354, label %bb.c
    i32 2340, label %bb.c
    i32 2536, label %bb.c
    i32 2526, label %bb.c
    i32 2142, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  br label %_ZL11isStoreInstj.exit

_ZL11isStoreInstj.exit:                           ; preds = %bb.c, %bb.b, %.lr.ph
  %.058 = phi i1 [ true, %.lr.ph ], [ false, %bb.c ], [ true, %bb.b ]
  %i.u = tail call noundef zeroext i1 @_ZN4llvm18HexagonMCInstrInfo20isMemReorderDisabledERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(128) %3) #13
  %not. = xor i1 %i.u, true
  %spec.select60 = and i1 %.058, %not.            ; 2 uses
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv86
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !20
  %i.z = add nsw i64 %indvars.iv86, -1            ; 2 uses
  %i.aa = tail call noundef zeroext i1 @_ZN4llvm18HexagonMCInstrInfo19hasExtenderForIndexERKNS_6MCInstEm(ptr noundef nonnull align 8 dereferenceable(128) %3, i64 noundef %i.z) #13
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !20
  %i.af = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.ag = tail call noundef zeroext i1 @_ZN4llvm18HexagonMCInstrInfo19hasExtenderForIndexERKNS_6MCInstEm(ptr noundef nonnull align 8 dereferenceable(128) %3, i64 noundef %i.af) #13
  %i.ah = tail call noundef zeroext i1 @_ZN4llvm18HexagonMCInstrInfo19isOrderedDuplexPairERKNS_11MCInstrInfoERKNS_6MCInstEbS6_bbRKNS_15MCSubtargetInfoE(ptr nonnull align 1 poison, ptr noundef nonnull align 8 dereferenceable(128) %i.y, i1 noundef zeroext %i.aa, ptr noundef nonnull align 8 dereferenceable(128) %i.ae, i1 noundef zeroext %i.ag, i1 noundef zeroext %spec.select60, ptr noundef nonnull align 8 dereferenceable(320) %2)
  br i1 %i.ah, label %bb.d, label %bb.m

bb.d:                                             ; preds = %_ZL11isStoreInstj.exit
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %indvars.iv86
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !20
  %i.am = tail call noundef i32 @_ZN4llvm18HexagonMCInstrInfo23getDuplexCandidateGroupERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(128) %i.al)
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !20
  %i.ar = tail call noundef i32 @_ZN4llvm18HexagonMCInstrInfo23getDuplexCandidateGroupERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(128) %i.aq) ; 6 uses
  switch i32 %i.am, label %bb.j [
    i32 5, label %bb.i
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %switch.selectcmp.i = icmp eq i32 %i.ar, 5
  %switch.select.i = select i1 %switch.selectcmp.i, i32 4, i32 -1
  %switch.selectcmp9.i = icmp eq i32 %i.ar, 1
  %switch.select10.i = select i1 %switch.selectcmp9.i, i32 0, i32 %switch.select.i
  br label %_ZN4llvm18HexagonMCInstrInfo18iClassOfDuplexPairEjj.exit

bb.f:                                             ; preds = %bb.d
  %switch.tableidx = add nsw i32 %i.ar, -1        ; 2 uses
  %i.as = icmp ult i32 %switch.tableidx, 5
  br i1 %i.as, label %switch.lookup, label %bb.j

bb.g:                                             ; preds = %bb.d
  %switch.tableidx93 = add nsw i32 %i.ar, -1      ; 2 uses
  %i.at = icmp ult i32 %switch.tableidx93, 5
  br i1 %i.at, label %switch.lookup94, label %bb.j

bb.h:                                             ; preds = %bb.d
  %switch.tableidx97 = add nsw i32 %i.ar, -1      ; 2 uses
  %i.au = icmp ult i32 %switch.tableidx97, 5
  br i1 %i.au, label %switch.lookup98, label %bb.j

bb.i:                                             ; preds = %bb.d
  %cond1.i = icmp eq i32 %i.ar, 5
  br i1 %cond1.i, label %_ZN4llvm18HexagonMCInstrInfo18iClassOfDuplexPairEjj.exit, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.i, %bb.d
  br label %_ZN4llvm18HexagonMCInstrInfo18iClassOfDuplexPairEjj.exit

switch.lookup:                                    ; preds = %bb.f
  %i.av = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN4llvm18HexagonMCInstrInfo21getDuplexPossibiltiesERKNS_11MCInstrInfoERKNS_15MCSubtargetInfoERKNS_6MCInstE.6, i64 %i.av
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_ZN4llvm18HexagonMCInstrInfo18iClassOfDuplexPairEjj.exit

switch.lookup94:                                  ; preds = %bb.g
  %i.aw = zext nneg i32 %switch.tableidx93 to i64
  %switch.gep95 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN4llvm18HexagonMCInstrInfo21getDuplexPossibiltiesERKNS_11MCInstrInfoERKNS_15MCSubtargetInfoERKNS_6MCInstE.7, i64 %i.aw
  %switch.load96 = load i32, ptr %switch.gep95, align 4
  br label %_ZN4llvm18HexagonMCInstrInfo18iClassOfDuplexPairEjj.exit

switch.lookup98:                                  ; preds = %bb.h
  %i.ax = zext nneg i32 %switch.tableidx97 to i64
  %switch.gep99 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvm18HexagonMCInstrInfo21getDuplexPossibiltiesERKNS_11MCInstrInfoERKNS_15MCSubtargetInfoERKNS_6MCInstE.8, i64 %i.ax
  %switch.load100 = load i8, ptr %switch.gep99, align 1
  %switch.ext = zext i8 %switch.load100 to i32
  br label %_ZN4llvm18HexagonMCInstrInfo18iClassOfDuplexPairEjj.exit

_ZN4llvm18HexagonMCInstrInfo18iClassOfDuplexPairEjj.exit: ; preds = %switch.lookup98, %switch.lookup94, %switch.lookup, %bb.e, %bb.i, %bb.j
  %.0.i63 = phi i32 [ -1, %bb.j ], [ 3, %bb.i ], [ %switch.select10.i, %bb.e ], [ %switch.ext, %switch.lookup98 ], [ %switch.load96, %switch.lookup94 ], [ %switch.load, %switch.lookup ] ; 2 uses
  %.sroa.275.0.insert.shift = shl nuw i64 %indvars.iv86, 32
  %.sroa.074.0.insert.insert = or disjoint i64 %.sroa.275.0.insert.shift, %indvars.iv ; 2 uses
  %i.ay = load i32, ptr %i.b, align 8, !tbaa !33  ; 2 uses
  %i.az = load i32, ptr %i.c, align 4, !tbaa !37
  %.not.i = icmp ult i32 %i.ay, %i.az
  br i1 %.not.i, label %bb.l, label %bb.k, !prof !38

bb.k:                                             ; preds = %_ZN4llvm18HexagonMCInstrInfo18iClassOfDuplexPairEjj.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_15DuplexCandidateELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %.sroa.074.0.insert.insert, i32 %.0.i63)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_15DuplexCandidateELb1EE9push_backES1_.exit

bb.l:                                             ; preds = %_ZN4llvm18HexagonMCInstrInfo18iClassOfDuplexPairEjj.exit
  %i.ba = zext i32 %i.ay to i64
  %i.bb = load ptr, ptr %0, align 8, !tbaa !19
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %i.bb, i64 %i.ba ; 2 uses
  store i64 %.sroa.074.0.insert.insert, ptr %i.bc, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i32 %.0.i63, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.bd = load i32, ptr %i.b, align 8, !tbaa !33
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.b, align 8, !tbaa !33
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_15DuplexCandidateELb1EE9push_backES1_.exit

bb.m:                                             ; preds = %_ZL11isStoreInstj.exit
  br i1 %spec.select60, label %bb.n, label %_ZN4llvm23SmallVectorTemplateBaseINS_15DuplexCandidateELb1EE9push_backES1_.exit

bb.n:                                             ; preds = %bb.m
  %i.bf = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %indvars.iv
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !20
  %i.bj = tail call noundef zeroext i1 @_ZN4llvm18HexagonMCInstrInfo19hasExtenderForIndexERKNS_6MCInstEm(ptr noundef nonnull align 8 dereferenceable(128) %3, i64 noundef %i.af) #13
  %i.bk = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %indvars.iv86
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !20
  %i.bo = tail call noundef zeroext i1 @_ZN4llvm18HexagonMCInstrInfo19hasExtenderForIndexERKNS_6MCInstEm(ptr noundef nonnull align 8 dereferenceable(128) %3, i64 noundef %i.z) #13
  %i.bp = tail call noundef zeroext i1 @_ZN4llvm18HexagonMCInstrInfo19isOrderedDuplexPairERKNS_11MCInstrInfoERKNS_6MCInstEbS6_bbRKNS_15MCSubtargetInfoE(ptr nonnull align 1 poison, ptr noundef nonnull align 8 dereferenceable(128) %i.bi, i1 noundef zeroext %i.bj, ptr noundef nonnull align 8 dereferenceable(128) %i.bn, i1 noundef zeroext %i.bo, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(320) %2)
  br i1 %i.bp, label %bb.o, label %_ZN4llvm23SmallVectorTemplateBaseINS_15DuplexCandidateELb1EE9push_backES1_.exit

bb.o:                                             ; preds = %bb.n
  %i.bq = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %indvars.iv
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !20
  %i.bu = tail call noundef i32 @_ZN4llvm18HexagonMCInstrInfo23getDuplexCandidateGroupERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(128) %i.bt)
  %i.bv = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %indvars.iv86
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !20
  %i.bz = tail call noundef i32 @_ZN4llvm18HexagonMCInstrInfo23getDuplexCandidateGroupERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(128) %i.by) ; 6 uses
  switch i32 %i.bu, label %bb.u [
    i32 5, label %bb.t
    i32 1, label %bb.p
    i32 2, label %bb.q
    i32 3, label %bb.r
    i32 4, label %bb.s
  ]

bb.p:                                             ; preds = %bb.o
  %switch.selectcmp.i66 = icmp eq i32 %i.bz, 5
  %switch.select.i67 = select i1 %switch.selectcmp.i66, i32 4, i32 -1
  %switch.selectcmp9.i68 = icmp eq i32 %i.bz, 1
  %switch.select10.i69 = select i1 %switch.selectcmp9.i68, i32 0, i32 %switch.select.i67
  br label %_ZN4llvm18HexagonMCInstrInfo18iClassOfDuplexPairEjj.exit70

bb.q:                                             ; preds = %bb.o
  %switch.tableidx101 = add nsw i32 %i.bz, -1     ; 2 uses
  %i.ca = icmp ult i32 %switch.tableidx101, 5
  br i1 %i.ca, label %switch.lookup102, label %bb.u

bb.r:                                             ; preds = %bb.o
  %switch.tableidx105 = add nsw i32 %i.bz, -1     ; 2 uses
  %i.cb = icmp ult i32 %switch.tableidx105, 5
  br i1 %i.cb, label %switch.lookup106, label %bb.u

bb.s:                                             ; preds = %bb.o
  %switch.tableidx109 = add nsw i32 %i.bz, -1     ; 2 uses
  %i.cc = icmp ult i32 %switch.tableidx109, 5
  br i1 %i.cc, label %switch.lookup110, label %bb.u

bb.t:                                             ; preds = %bb.o
  %cond1.i64 = icmp eq i32 %i.bz, 5
  br i1 %cond1.i64, label %_ZN4llvm18HexagonMCInstrInfo18iClassOfDuplexPairEjj.exit70, label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.t, %bb.o
  br label %_ZN4llvm18HexagonMCInstrInfo18iClassOfDuplexPairEjj.exit70

switch.lookup102:                                 ; preds = %bb.q
  %i.cd = zext nneg i32 %switch.tableidx101 to i64
  %switch.gep103 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN4llvm18HexagonMCInstrInfo21getDuplexPossibiltiesERKNS_11MCInstrInfoERKNS_15MCSubtargetInfoERKNS_6MCInstE.6, i64 %i.cd
  %switch.load104 = load i32, ptr %switch.gep103, align 4
  br label %_ZN4llvm18HexagonMCInstrInfo18iClassOfDuplexPairEjj.exit70

switch.lookup106:                                 ; preds = %bb.r
  %i.ce = zext nneg i32 %switch.tableidx105 to i64
  %switch.gep107 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN4llvm18HexagonMCInstrInfo21getDuplexPossibiltiesERKNS_11MCInstrInfoERKNS_15MCSubtargetInfoERKNS_6MCInstE.7, i64 %i.ce
  %switch.load108 = load i32, ptr %switch.gep107, align 4
  br label %_ZN4llvm18HexagonMCInstrInfo18iClassOfDuplexPairEjj.exit70

switch.lookup110:                                 ; preds = %bb.s
  %i.cf = zext nneg i32 %switch.tableidx109 to i64
  %switch.gep111 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvm18HexagonMCInstrInfo21getDuplexPossibiltiesERKNS_11MCInstrInfoERKNS_15MCSubtargetInfoERKNS_6MCInstE.8, i64 %i.cf
  %switch.load112 = load i8, ptr %switch.gep111, align 1
  %switch.ext113 = zext i8 %switch.load112 to i32
  br label %_ZN4llvm18HexagonMCInstrInfo18iClassOfDuplexPairEjj.exit70

_ZN4llvm18HexagonMCInstrInfo18iClassOfDuplexPairEjj.exit70: ; preds = %switch.lookup110, %switch.lookup106, %switch.lookup102, %bb.p, %bb.t, %bb.u
  %.0.i65 = phi i32 [ -1, %bb.u ], [ 3, %bb.t ], [ %switch.select10.i69, %bb.p ], [ %switch.ext113, %switch.lookup110 ], [ %switch.load108, %switch.lookup106 ], [ %switch.load104, %switch.lookup102 ] ; 2 uses
  %.sroa.2.0.insert.shift = shl nuw i64 %indvars.iv, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %indvars.iv86 ; 2 uses
  %i.cg = load i32, ptr %i.b, align 8, !tbaa !33  ; 2 uses
  %i.ch = load i32, ptr %i.c, align 4, !tbaa !37
  %.not.i71 = icmp ult i32 %i.cg, %i.ch
  br i1 %.not.i71, label %bb.w, label %bb.v, !prof !38

bb.v:                                             ; preds = %_ZN4llvm18HexagonMCInstrInfo18iClassOfDuplexPairEjj.exit70
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_15DuplexCandidateELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %.sroa.0.0.insert.insert, i32 %.0.i65)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_15DuplexCandidateELb1EE9push_backES1_.exit

bb.w:                                             ; preds = %_ZN4llvm18HexagonMCInstrInfo18iClassOfDuplexPairEjj.exit70
  %i.ci = zext i32 %i.cg to i64
  %i.cj = load ptr, ptr %0, align 8, !tbaa !19
  %i.ck = getelementptr inbounds nuw [12 x i8], ptr %i.cj, i64 %i.ci ; 2 uses
  store i64 %.sroa.0.0.insert.insert, ptr %i.ck, align 1
  %.sroa.3.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i32 %.0.i65, ptr %.sroa.3.0..sroa_idx.i72, align 1
  %i.cl = load i32, ptr %i.b, align 8, !tbaa !33
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.b, align 8, !tbaa !33
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_15DuplexCandidateELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_15DuplexCandidateELb1EE9push_backES1_.exit: ; preds = %bb.w, %bb.v, %bb.l, %bb.k, %bb.m, %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.cn = icmp samesign ult i64 %indvars.iv.next87, %i.h
  br i1 %i.cn, label %.lr.ph, label %.loopexit, !llvm.loop !50

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN4llvm18HexagonMCInstrInfo20isMemReorderDisabledERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4llvm18HexagonMCInstrInfo19hasExtenderForIndexERKNS_6MCInstEm(ptr noundef nonnull align 8 dereferenceable(128), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53   ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #14
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !51

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 %1, i64 %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #13
  %i.f = load ptr, ptr %0, align 8, !tbaa !19
  %i.g = load i32, ptr %i.a, align 8, !tbaa !33
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store i8 %1, ptr %i.i, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !33
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !33
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE17_M_emplace_uniqueIJRKS0_IjjEEEES0_ISt17_Rb_tree_iteratorIS2_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #15 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load <2 x i32>, ptr %1, align 4, !tbaa !30
  %i.d = load i32, ptr %1, align 4, !tbaa !56     ; 3 uses
  store <2 x i32> %i.c, ptr %i.b, align 4, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02022.i = load ptr, ptr %i.e, align 8, !tbaa !31 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.02024.i = phi ptr [ %.020.i, %.lr.ph.i ], [ %.02022.i, %bb.a ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !30   ; 2 uses
  %i.i = icmp ult i32 %i.d, %i.h                  ; 2 uses
  %.in.v.i = select i1 %i.i, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !31 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !54

._crit_edge.i:                                    ; preds = %.lr.ph.i
  br i1 %i.i, label %._crit_edge.thread.i, label %bb.c

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.f, %bb.a ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.l = icmp eq ptr %.019.lcssa29.i, %i.k
  br i1 %i.l, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread.i
  %i.m = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #16 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i
  %i.n = phi i32 [ %.pre, %bb.b ], [ %i.h, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.b ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.m, %bb.b ], [ %.02024.i, %._crit_edge.i ]
  %i.o = icmp ult i32 %i.n, %i.d
  br i1 %i.o, label %select.unfold, label %bb.e

select.unfold:                                    ; preds = %bb.c, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %.019.lcssa28.i, %bb.c ] ; 3 uses
  %i.p = icmp eq ptr %.sroa.4.0.i.ph, %i.f
  br i1 %i.p, label %.thread, label %bb.d

bb.d:                                             ; preds = %select.unfold
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.r = load i32, ptr %i.q, align 4, !tbaa !30
  %i.s = icmp ult i32 %i.d, %i.r
  br label %.thread

.thread:                                          ; preds = %bb.d, %select.unfold
  %i.t = phi i1 [ %i.s, %bb.d ], [ true, %select.unfold ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.t, ptr noundef nonnull %i.a, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.f) #13
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !28
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !28
  br label %_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #14
  br label %_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %bb.e
  %.sroa.3.022 = phi i8 [ 1, %.thread ], [ 0, %bb.e ]
  %.sroa.09.021 = phi ptr [ %i.a, %.thread ], [ %.sroa.05.0.i, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.09.021, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.022, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_15DuplexCandidateELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i32 %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 12) #13
  %i.f = load ptr, ptr %0, align 8, !tbaa !19
  %i.g = load i32, ptr %i.a, align 8, !tbaa !33
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store i64 %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !33
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !33
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { builtin nounwind allocsize(0) }
attributes #16 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
end_hunk_0
