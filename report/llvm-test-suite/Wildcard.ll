inline.NumInlined: 245
inline.NumDeleted: 66
begin_hunk_0_@_Z23CompareWildCardWithNameRK11CStringBaseIwES2_:bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !8
  %i.c = tail call fastcc noundef zeroext i1 @_ZL16EnhancedMaskTestPKwS0_(ptr noundef %i.a, ptr noundef %i.b)
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZL16EnhancedMaskTestPKwS0_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %bb.a
  %.020 = phi ptr [ %1, %bb.a ], [ %i.m, %bb.k ]  ; 3 uses
  %.018 = phi ptr [ %0, %bb.a ], [ %.119, %bb.k ] ; 4 uses
  %i.a = load i32, ptr %.018, align 4, !tbaa !16  ; 3 uses
  %i.b = load i32, ptr %.020, align 4, !tbaa !16  ; 5 uses
  switch i32 %i.a, label %bb.g [
    i32 0, label %bb.c
    i32 42, label %bb.d
    i32 63, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %i.b, 0
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.018, i64 4
  %i.e = tail call fastcc noundef zeroext i1 @_ZL16EnhancedMaskTestPKwS0_(ptr noundef nonnull %i.d, ptr noundef nonnull %.020)
  br i1 %i.e, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = icmp eq i32 %i.b, 0
  br i1 %i.f, label %.loopexit, label %bb.k

bb.f:                                             ; preds = %bb.b
  %i.g = icmp eq i32 %i.b, 0
  br i1 %i.g, label %.loopexit, label %bb.j

bb.g:                                             ; preds = %bb.b
  %.not = icmp eq i32 %i.a, %i.b
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = load i8, ptr @g_CaseSensitive, align 1, !tbaa !12, !range !14, !noundef !15
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = tail call noundef signext i32 @_Z11MyCharUpperw(i32 noundef signext %i.a)
  %i.k = tail call noundef signext i32 @_Z11MyCharUpperw(i32 noundef signext %i.b)
  %.not24 = icmp eq i32 %i.j, %i.k
  br i1 %.not24, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.018, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  %.119 = phi ptr [ %.018, %bb.e ], [ %i.l, %bb.j ]
  %i.m = getelementptr inbounds nuw i8, ptr %.020, i64 4
  br label %bb.b

.loopexit:                                        ; preds = %bb.f, %bb.d, %bb.e, %bb.i, %bb.h, %bb.c
  %.1.ph = phi i1 [ %i.c, %bb.c ], [ false, %bb.f ], [ true, %bb.d ], [ false, %bb.e ], [ false, %bb.i ], [ false, %bb.h ]
  ret i1 %.1.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_Z23DoesNameContainWildCardRK11CStringBaseIwE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %_ZNK11CStringBaseIwE9FindOneOfERKS0_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !8
  %i.e = load ptr, ptr @_ZL16kWildCardCharSet, align 8, !tbaa !8 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !16   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZNK11CStringBaseIwE4FindEw.exit.thread.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNK11CStringBaseIwE4FindEw.exit.thread.i ] ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16   ; 2 uses
  %i.j = icmp eq i32 %i.f, %i.i
  br i1 %i.j, label %_ZNK11CStringBaseIwE4FindEw.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %i.k = phi i32 [ %i.n, %bb.c ], [ %i.f, %bb.b ]
  %.010.i.i.i = phi ptr [ %i.m, %bb.c ], [ %i.e, %bb.b ]
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK11CStringBaseIwE4FindEw.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16   ; 2 uses
  %i.o = icmp eq i32 %i.n, %i.i
  br i1 %i.o, label %_ZNK11CStringBaseIwE4FindEw.exit.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !40

_ZNK11CStringBaseIwE4FindEw.exit.loopexit.i:      ; preds = %bb.c
  %.pre.i = ptrtoint ptr %i.m to i64
  br label %_ZNK11CStringBaseIwE4FindEw.exit.i

_ZNK11CStringBaseIwE4FindEw.exit.i:               ; preds = %_ZNK11CStringBaseIwE4FindEw.exit.loopexit.i, %bb.b
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZNK11CStringBaseIwE4FindEw.exit.loopexit.i ], [ %i.g, %bb.b ]
  %i.p = sub i64 %.pre-phi.i, %i.g
  %i.q = and i64 %i.p, 8589934592
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZNK11CStringBaseIwE9FindOneOfERKS0_.exit, label %_ZNK11CStringBaseIwE4FindEw.exit.thread.i

_ZNK11CStringBaseIwE4FindEw.exit.thread.i:        ; preds = %.lr.ph.i.i.i, %_ZNK11CStringBaseIwE4FindEw.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK11CStringBaseIwE9FindOneOfERKS0_.exit, label %bb.b, !llvm.loop !41

_ZNK11CStringBaseIwE9FindOneOfERKS0_.exit:        ; preds = %_ZNK11CStringBaseIwE4FindEw.exit.i, %_ZNK11CStringBaseIwE4FindEw.exit.thread.i, %bb.a
  %i.s = phi i1 [ false, %bb.a ], [ true, %_ZNK11CStringBaseIwE4FindEw.exit.i ], [ false, %_ZNK11CStringBaseIwE4FindEw.exit.thread.i ]
  ret i1 %i.s
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK9NWildcard5CItem9CheckPathERK13CObjectVectorI11CStringBaseIwEEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(35) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.b = load i8, ptr %i.a, align 2, !range !14
  %i.c = trunc nuw i8 %i.b to i1                  ; 3 uses
  %or.cond = select i1 %2, i1 true, i1 %i.c
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !25   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !25   ; 6 uses
  %i.h = sub nsw i32 %i.e, %i.g                   ; 3 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %2, label %bb.d, label %._crit_edge63

._crit_edge63:                                    ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !42, !range !14
  %.phi.trans.insert64 = getelementptr inbounds nuw i8, ptr %0, i64 33
  %.pre65 = load i8, ptr %.phi.trans.insert64, align 1, !range !14
  %.pre67 = trunc nuw i8 %.pre to i1
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i8, ptr %i.j, align 8, !tbaa !42, !range !14, !noundef !15
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = icmp eq i32 %i.e, %i.g
  %or.cond.not = or i1 %i.m, %i.l
  br i1 %or.cond.not, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.o = load i8, ptr %i.n, align 1, !tbaa !46, !range !14, !noundef !15 ; 2 uses
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = icmp ne i32 %i.e, %i.g
  %or.cond5.not = or i1 %i.q, %i.p
  br i1 %or.cond5.not, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %.not40 = xor i1 %i.c, true
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load i8, ptr %i.r, align 8, !range !14
  %i.t = trunc nuw i8 %i.s to i1                  ; 2 uses
  %or.cond43 = select i1 %.not40, i1 %i.t, i1 false
  %spec.select47 = select i1 %or.cond43, i32 %i.h, i32 0
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge63, %bb.g
  %.pre-phi = phi i1 [ %.pre67, %._crit_edge63 ], [ %i.t, %bb.g ]
  %i.u = phi i8 [ %.pre65, %._crit_edge63 ], [ %i.o, %bb.g ]
  %.031 = phi i32 [ 0, %._crit_edge63 ], [ %spec.select47, %bb.g ] ; 2 uses
  %i.v = xor i8 %i.u, 1
  %i.w = zext nneg i8 %i.v to i32
  %spec.select = select i1 %2, i32 %i.w, i32 0
  %.mux = sub nsw i32 %i.h, %spec.select
  %.030 = select i1 %.pre-phi, i32 %.mux, i32 0   ; 2 uses
  %.not51.not = icmp sgt i32 %.031, %.030
  br i1 %.not51.not, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = icmp sgt i32 %i.g, 0
  br i1 %i.z, label %.preheader.preheader, label %.preheader.lr.ph.split.us

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.aa = zext nneg i32 %.031 to i64
  %3 = add nuw i32 %.030, 1
  br label %.preheader

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %.not37.us = icmp eq i32 %i.g, 0
  br label %.loopexit

.preheader:                                       ; preds = %._crit_edge, %.preheader.preheader
  %i.ab = phi i32 [ %i.g, %.preheader.preheader ], [ %i.ap, %._crit_edge ] ; 2 uses
  %indvars.iv59 = phi i64 [ %i.aa, %.preheader.preheader ], [ %indvars.iv.next60, %._crit_edge ] ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %.preheader ] ; 4 uses
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !26
  %i.ag = load ptr, ptr %i.y, align 8, !tbaa !22
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv59
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !26
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !8
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !8
  %i.am = tail call fastcc noundef zeroext i1 @_ZL16EnhancedMaskTestPKwS0_(ptr noundef %i.ak, ptr noundef %i.al)
  %.pre66.pre = load i32, ptr %i.f, align 4, !tbaa !25 ; 2 uses
  br i1 %i.am, label %bb.i, label %._crit_edge.loopexit

bb.i:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.an = sext i32 %.pre66.pre to i64
  %i.ao = icmp slt i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !47

._crit_edge.loopexit:                             ; preds = %.lr.ph, %bb.i
  %.0.lcssa.ph.in = phi i64 [ %indvars.iv.next, %bb.i ], [ %indvars.iv, %.lr.ph ]
  %.0.lcssa.ph = trunc i64 %.0.lcssa.ph.in to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ap = phi i32 [ %i.ab, %.preheader ], [ %.pre66.pre, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.preheader ], [ %.0.lcssa.ph, %._crit_edge.loopexit ]
  %.not37 = icmp eq i32 %.0.lcssa, %i.ap          ; 2 uses
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next60 to i32
  %exitcond.not = icmp eq i32 %3, %lftr.wideiv
  %or.cond72 = select i1 %.not37, i1 true, i1 %exitcond.not
  br i1 %or.cond72, label %.loopexit, label %.preheader, !llvm.loop !48

.loopexit:                                        ; preds = %._crit_edge, %.preheader.lr.ph.split.us, %bb.h, %bb.b, %bb.f, %bb.e, %bb.a
  %.5 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.e ], [ false, %bb.f ], [ %.not37.us, %.preheader.lr.ph.split.us ], [ false, %bb.h ], [ %.not37, %._crit_edge ]
  ret i1 %.5
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -1, 2147483647) i32 @_ZNK9NWildcard11CCensorNode11FindSubNodeERK11CStringBaseIwE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i8, ptr @g_CaseSensitive, align 1, !tbaa !12, !range !14, !noundef !15
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !8    ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !8      ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %i.k, ptr noundef %i.l)
  br label %_Z16CompareFileNamesRK11CStringBaseIwES2_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = tail call noundef i32 @_Z21MyStringCompareNoCasePKwS0_(ptr noundef %i.k, ptr noundef %i.l)
  br label %_Z16CompareFileNamesRK11CStringBaseIwES2_.exit

_Z16CompareFileNamesRK11CStringBaseIwES2_.exit:   ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.m, %bb.c ], [ %i.n, %bb.d ]
  %i.o = icmp eq i32 %.0.i, 0
  br i1 %i.o, label %._crit_edge.loopexit.split.loop.exit13, label %bb.e

bb.e:                                             ; preds = %_Z16CompareFileNamesRK11CStringBaseIwES2_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = load i32, ptr %i.a, align 4, !tbaa !25
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %bb.b, label %._crit_edge, !llvm.loop !50

._crit_edge.loopexit.split.loop.exit13:           ; preds = %_Z16CompareFileNamesRK11CStringBaseIwES2_.exit
  %i.s = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %._crit_edge.loopexit.split.loop.exit13, %bb.a
  %i.t = phi i32 [ -1, %bb.a ], [ %i.s, %._crit_edge.loopexit.split.loop.exit13 ], [ -1, %bb.e ]
  ret i32 %i.t
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9NWildcard11CCensorNode13AddItemSimpleEbRNS_5CItemE(ptr noundef nonnull align 8 dereferenceable(120) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(35) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #20 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.c, align 8, !tbaa !51
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI11CStringBaseIwEE, i64 16), ptr %i.a, align 8, !tbaa !52
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(35) %i.a)
          to label %.noexc.i.i.i unwind label %.body.i

.noexc.i.i.i:                                     ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN13CObjectVectorI11CStringBaseIwEEpLERKS2_(ptr noundef nonnull align 8 dereferenceable(35) %i.a, ptr noundef nonnull align 8 dereferenceable(35) %2)
          to label %_ZN13CObjectVectorIN9NWildcard5CItemEE3AddERKS1_.exit unwind label %.body.i ; 0 uses

common.resume:                                    ; preds = %.body.i3, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.f, %.body.i ], [ %i.i, %.body.i3 ]
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(35) %i.a) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #19
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %.noexc.i.i.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(35) %i.a)
          to label %.noexc.i.i.i4 unwind label %.body.i3

.noexc.i.i.i4:                                    ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN13CObjectVectorI11CStringBaseIwEEpLERKS2_(ptr noundef nonnull align 8 dereferenceable(35) %i.a, ptr noundef nonnull align 8 dereferenceable(35) %2)
          to label %_ZN13CObjectVectorIN9NWildcard5CItemEE3AddERKS1_.exit unwind label %.body.i3 ; 0 uses

.body.i3:                                         ; preds = %.noexc.i.i.i4, %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN13CObjectVectorIN9NWildcard5CItemEE3AddERKS1_.exit: ; preds = %.noexc.i.i.i4, %.noexc.i.i.i
  %.sink13 = phi ptr [ %i.d, %.noexc.i.i.i ], [ %i.g, %.noexc.i.i.i4 ]
  %.sink12 = phi i64 [ 72, %.noexc.i.i.i ], [ 104, %.noexc.i.i.i4 ]
  %.sink = phi i64 [ 68, %.noexc.i.i.i ], [ 100, %.noexc.i.i.i4 ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.j, ptr noundef nonnull align 8 dereferenceable(3) %i.k, i64 3, i1 false)
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %.sink13)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !25   ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.p
  store ptr %i.a, ptr %i.q, align 8, !tbaa !26
  %i.r = add nsw i32 %i.o, 1
  store i32 %i.r, ptr %i.n, align 4, !tbaa !25
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9NWildcard11CCensorNode7AddItemEbRNS_5CItemE(ptr noundef nonnull align 8 dereferenceable(120) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(35) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.NWildcard::CCensorNode", align 8 ; 19 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN9NWildcard11CCensorNode13AddItemSimpleEbRNS_5CItemE(ptr noundef nonnull align 8 dereferenceable(120) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(35) %2)
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !18   ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.k = load ptr, ptr @_ZL16kWildCardCharSet, align 8, !tbaa !8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !16   ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.h to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZNK11CStringBaseIwE4FindEw.exit.thread.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZNK11CStringBaseIwE4FindEw.exit.thread.i.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i.i
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16   ; 2 uses
  %i.p = icmp eq i32 %i.l, %i.o
  br i1 %i.p, label %_ZNK11CStringBaseIwE4FindEw.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %bb.e
  %i.q = phi i32 [ %i.t, %bb.e ], [ %i.l, %bb.d ]
  %.010.i.i.i.i = phi ptr [ %i.s, %bb.e ], [ %i.k, %bb.d ]
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZNK11CStringBaseIwE4FindEw.exit.thread.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 4 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !16   ; 2 uses
  %i.u = icmp eq i32 %i.t, %i.o
  br i1 %i.u, label %_ZNK11CStringBaseIwE4FindEw.exit.loopexit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !40

_ZNK11CStringBaseIwE4FindEw.exit.loopexit.i.i:    ; preds = %bb.e
  %.pre.i.i = ptrtoint ptr %i.s to i64
  br label %_ZNK11CStringBaseIwE4FindEw.exit.i.i

_ZNK11CStringBaseIwE4FindEw.exit.i.i:             ; preds = %_ZNK11CStringBaseIwE4FindEw.exit.loopexit.i.i, %bb.d
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_ZNK11CStringBaseIwE4FindEw.exit.loopexit.i.i ], [ %i.m, %bb.d ]
  %i.v = sub i64 %.pre-phi.i.i, %i.m
  %i.w = and i64 %i.v, 8589934592
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_Z23DoesNameContainWildCardRK11CStringBaseIwE.exit, label %_ZNK11CStringBaseIwE4FindEw.exit.thread.i.i

_ZNK11CStringBaseIwE4FindEw.exit.thread.i.i:      ; preds = %.lr.ph.i.i.i.i, %_ZNK11CStringBaseIwE4FindEw.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.d, !llvm.loop !41

_Z23DoesNameContainWildCardRK11CStringBaseIwE.exit: ; preds = %_ZNK11CStringBaseIwE4FindEw.exit.i.i
  tail call void @_ZN9NWildcard11CCensorNode13AddItemSimpleEbRNS_5CItemE(ptr noundef nonnull align 8 dereferenceable(120) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(35) %2)
  br label %bb.q

.loopexit:                                        ; preds = %_ZNK11CStringBaseIwE4FindEw.exit.thread.i.i, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !25
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i, label %_ZNK9NWildcard11CCensorNode11FindSubNodeERK11CStringBaseIwE.exit.thread

end_hunk_0
