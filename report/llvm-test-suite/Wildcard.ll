inline.NumInlined: 245
inline.NumDeleted: 66
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN9NWildcard11CCensorNode7AddItemEbRNS_5CItemE:bb.a
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
  br label %bb.p

.loopexit:                                        ; preds = %_ZNK11CStringBaseIwE4FindEw.exit.thread.i.i, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !25
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i, label %_ZNK9NWildcard11CCensorNode11FindSubNodeERK11CStringBaseIwE.exit.thread

.lr.ph.i:                                         ; preds = %.loopexit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i8, ptr @g_CaseSensitive, align 1, !tbaa !12, !range !14, !noundef !15
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !8  ; 2 uses
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !8   ; 2 uses
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = tail call noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %i.ai, ptr noundef %i.aj)
  br label %_Z16CompareFileNamesRK11CStringBaseIwES2_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.al = tail call noundef i32 @_Z21MyStringCompareNoCasePKwS0_(ptr noundef %i.ai, ptr noundef %i.aj)
  br label %_Z16CompareFileNamesRK11CStringBaseIwES2_.exit.i

_Z16CompareFileNamesRK11CStringBaseIwES2_.exit.i: ; preds = %bb.h, %bb.g
  %.0.i.i = phi i32 [ %i.ak, %bb.g ], [ %i.al, %bb.h ]
  %i.am = icmp eq i32 %.0.i.i, 0
  br i1 %i.am, label %_ZNK9NWildcard11CCensorNode11FindSubNodeERK11CStringBaseIwE.exit, label %bb.i

bb.i:                                             ; preds = %_Z16CompareFileNamesRK11CStringBaseIwES2_.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.an = load i32, ptr %i.y, align 4, !tbaa !25
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp slt i64 %indvars.iv.next.i, %i.ao
  br i1 %i.ap, label %bb.f, label %_ZNK9NWildcard11CCensorNode11FindSubNodeERK11CStringBaseIwE.exit.thread.loopexit, !llvm.loop !50

_ZNK9NWildcard11CCensorNode11FindSubNodeERK11CStringBaseIwE.exit.thread.loopexit: ; preds = %bb.i
  %.pre = load i32, ptr %i.g, align 8, !tbaa !18
  br label %_ZNK9NWildcard11CCensorNode11FindSubNodeERK11CStringBaseIwE.exit.thread

_ZNK9NWildcard11CCensorNode11FindSubNodeERK11CStringBaseIwE.exit.thread: ; preds = %_ZNK9NWildcard11CCensorNode11FindSubNodeERK11CStringBaseIwE.exit.thread.loopexit, %.loopexit
  %i.aq = phi i32 [ %.pre, %_ZNK9NWildcard11CCensorNode11FindSubNodeERK11CStringBaseIwE.exit.thread.loopexit ], [ %i.h, %.loopexit ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %0, ptr %3, align 8, !tbaa !54
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  %i.at = add nsw i32 %i.aq, 1                    ; 3 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNK9NWildcard11CCensorNode11FindSubNodeERK11CStringBaseIwE.exit.thread
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.aw = zext nneg i32 %i.at to i64
  %i.ax = icmp slt i32 %i.aq, -1
  %i.ay = shl nuw nsw i64 %i.aw, 2
  %i.az = select i1 %i.ax, i64 -1, i64 %i.ay
  %i.ba = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.az) #20 ; 3 uses
  store ptr %i.ba, ptr %i.as, align 8, !tbaa !8
  store i32 0, ptr %i.ba, align 4, !tbaa !16
  store i32 %i.at, ptr %i.av, align 4, !tbaa !19
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i:      ; preds = %bb.j, %_ZNK9NWildcard11CCensorNode11FindSubNodeERK11CStringBaseIwE.exit.thread
  %i.bb = phi ptr [ null, %_ZNK9NWildcard11CCensorNode11FindSubNodeERK11CStringBaseIwE.exit.thread ], [ %i.ba, %bb.j ]
  %i.bc = load ptr, ptr %i.f, align 8, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
  %.04.i.i.i = phi ptr [ %i.bc, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.bd, %bb.k ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.bb, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.bf, %bb.k ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  %i.be = load i32, ptr %.04.i.i.i, align 4, !tbaa !16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  store i32 %i.be, ptr %.0.i.i.i, align 4, !tbaa !16
  %.not.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i, label %_ZN9NWildcard11CCensorNodeC2ERK11CStringBaseIwEPS0_.exit, label %bb.k, !llvm.loop !20

_ZN9NWildcard11CCensorNodeC2ERK11CStringBaseIwEPS0_.exit: ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.aq, ptr %i.bg, align 8, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.bj, align 8, !tbaa !51
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN9NWildcard11CCensorNodeEE, i64 16), ptr %i.bh, align 8, !tbaa !52
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.bm, align 8, !tbaa !51
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN9NWildcard5CItemEE, i64 16), ptr %i.bk, align 8, !tbaa !52
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.bp, align 8, !tbaa !51
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN9NWildcard5CItemEE, i64 16), ptr %i.bn, align 8, !tbaa !52
  %i.bq = invoke noundef i32 @_ZN13CObjectVectorIN9NWildcard11CCensorNodeEE3AddERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(120) %3)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %_ZN9NWildcard11CCensorNodeC2ERK11CStringBaseIwEPS0_.exit
  call void @_ZN9NWildcard11CCensorNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.br = sext i32 %i.bq to i64
  br label %_ZNK9NWildcard11CCensorNode11FindSubNodeERK11CStringBaseIwE.exit

bb.m:                                             ; preds = %_ZN9NWildcard11CCensorNodeC2ERK11CStringBaseIwEPS0_.exit
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9NWildcard11CCensorNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %i.bs

_ZNK9NWildcard11CCensorNode11FindSubNodeERK11CStringBaseIwE.exit: ; preds = %_Z16CompareFileNamesRK11CStringBaseIwES2_.exit.i, %bb.l
  %.0 = phi i64 [ %i.br, %bb.l ], [ %indvars.iv.i, %_Z16CompareFileNamesRK11CStringBaseIwES2_.exit.i ]
  %i.bt = load i32, ptr %i.a, align 4, !tbaa !25  ; 2 uses
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.bt, i32 1)
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph.i17, label %_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii.exit

.lr.ph.i17:                                       ; preds = %_ZNK9NWildcard11CCensorNode11FindSubNodeERK11CStringBaseIwE.exit
  %i.bv = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !26 ; 3 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i17
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !8  ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %_ZN11CStringBaseIwED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.by) #19
  br label %_ZN11CStringBaseIwED2Ev.exit.i

_ZN11CStringBaseIwED2Ev.exit.i:                   ; preds = %bb.o, %bb.n
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef 16) #19
  br label %_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii.exit

_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii.exit: ; preds = %_ZN11CStringBaseIwED2Ev.exit.i, %.lr.ph.i17, %_ZNK9NWildcard11CCensorNode11FindSubNodeERK11CStringBaseIwE.exit
  call void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 0, i32 noundef %spec.select.i)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !22
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %.0
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !26
  call void @_ZN9NWildcard11CCensorNode7AddItemEbRNS_5CItemE(ptr noundef nonnull align 8 dereferenceable(120) %i.cd, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(35) %2)
  br label %bb.p

bb.p:                                             ; preds = %_Z23DoesNameContainWildCardRK11CStringBaseIwE.exit, %_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN13CObjectVectorIN9NWildcard11CCensorNodeEE3AddERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #20 ; 16 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !54
  store ptr %i.b, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.f = load i32, ptr %i.e, align 8, !tbaa !18   ; 3 uses
  %i.g = add nsw i32 %i.f, 1                      ; 3 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = zext nneg i32 %i.g to i64
  %i.j = icmp slt i32 %i.f, -1
  %i.k = shl nuw nsw i64 %i.i, 2
  %i.l = select i1 %i.j, i64 -1, i64 %i.k
  %i.m = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #20
          to label %.noexc12 unwind label %bb.h   ; 3 uses

.noexc12:                                         ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store ptr %i.m, ptr %i.c, align 8, !tbaa !8
  store i32 0, ptr %i.m, align 4, !tbaa !16
  store i32 %i.g, ptr %i.n, align 4, !tbaa !19
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %.noexc12, %bb.a
  %i.o = phi ptr [ null, %bb.a ], [ %i.m, %.noexc12 ]
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.p, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.q, %bb.c ] ; 2 uses
  %.0.i.i = phi ptr [ %i.o, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.s, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.r = load i32, ptr %.04.i.i, align 4, !tbaa !16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.r, ptr %.0.i.i, align 4, !tbaa !16
  %.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i, label %.noexc, label %bb.c, !llvm.loop !20

.noexc:                                           ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.f, ptr %i.t, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.w, align 8, !tbaa !51
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN9NWildcard11CCensorNodeEE, i64 16), ptr %i.u, align 8, !tbaa !52
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %.noexc.i9 unwind label %.loopexit.split-lp, !inline_history !59

.noexc.i9:                                        ; preds = %.noexc
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.y = load i32, ptr %i.x, align 4, !tbaa !25   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !25
  %i.ab = add nsw i32 %i.aa, %i.y
  invoke void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i32 noundef %i.ab)
          to label %.noexc13.preheader unwind label %.loopexit.split-lp, !inline_history !60

.noexc13.preheader:                               ; preds = %.noexc.i9
  %i.ac = icmp sgt i32 %i.y, 0
  br i1 %i.ac, label %.lr.ph, label %_ZN13CObjectVectorIN9NWildcard11CCensorNodeEEC2ERKS2_.exit

.lr.ph:                                           ; preds = %.noexc13.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %wide.trip.count = zext nneg i32 %i.y to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.noexc14
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.noexc14 ] ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !26
  %i.ah = invoke noundef i32 @_ZN13CObjectVectorIN9NWildcard11CCensorNodeEE3AddERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(120) %i.ag)
          to label %.noexc14 unwind label %.loopexit, !inline_history !60 ; 0 uses

.noexc14:                                         ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN13CObjectVectorIN9NWildcard11CCensorNodeEEC2ERKS2_.exit, label %bb.d, !llvm.loop !61

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %.noexc, %.noexc.i9
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.u) #21, !inline_history !62
  br label %.body10

_ZN13CObjectVectorIN9NWildcard11CCensorNodeEEC2ERKS2_.exit: ; preds = %.noexc14, %.noexc13.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.ak, align 8, !tbaa !51
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN9NWildcard5CItemEE, i64 16), ptr %i.ai, align 8, !tbaa !52
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %.noexc.i5 unwind label %bb.f

.noexc.i5:                                        ; preds = %_ZN13CObjectVectorIN9NWildcard11CCensorNodeEEC2ERKS2_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.am = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN13CObjectVectorIN9NWildcard5CItemEEpLERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.al)
          to label %_ZN13CObjectVectorIN9NWildcard5CItemEEC2ERKS2_.exit8 unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %.noexc.i5, %_ZN13CObjectVectorIN9NWildcard11CCensorNodeEEC2ERKS2_.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.ai) #21
  br label %.body6

_ZN13CObjectVectorIN9NWildcard5CItemEEC2ERKS2_.exit8: ; preds = %.noexc.i5
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.aq, align 8, !tbaa !51
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN9NWildcard5CItemEE, i64 16), ptr %i.ao, align 8, !tbaa !52
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ao)
          to label %.noexc.i unwind label %.body3

.noexc.i:                                         ; preds = %_ZN13CObjectVectorIN9NWildcard5CItemEEC2ERKS2_.exit8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.as = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN13CObjectVectorIN9NWildcard5CItemEEpLERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %_ZN9NWildcard11CCensorNodeC2ERKS0_.exit unwind label %.body3 ; 0 uses

.body3:                                           ; preds = %.noexc.i, %_ZN13CObjectVectorIN9NWildcard5CItemEEC2ERKS2_.exit8
  %i.at = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.ao) #21
  tail call void @_ZN13CObjectVectorIN9NWildcard5CItemEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.ai) #21, !inline_history !63
  br label %.body6

.body6:                                           ; preds = %bb.f, %.body3
  %.pn.i = phi { ptr, i32 } [ %i.at, %.body3 ], [ %i.an, %bb.f ]
  tail call void @_ZN13CObjectVectorIN9NWildcard11CCensorNodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.u) #21, !inline_history !63
  br label %.body10

.body10:                                          ; preds = %bb.e, %.body6
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %.body6 ], [ %lpad.phi, %bb.e ] ; 2 uses
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !8   ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %.body, label %bb.g

bb.g:                                             ; preds = %.body10
  tail call void @_ZdaPv(ptr noundef nonnull %i.au) #19
  br label %.body

_ZN9NWildcard11CCensorNodeC2ERKS0_.exit:          ; preds = %.noexc.i
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !22
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !25 ; 3 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.ba
  store ptr %i.a, ptr %i.bb, align 8, !tbaa !26
  %i.bc = add nsw i32 %i.az, 1
  store i32 %i.bc, ptr %i.ay, align 4, !tbaa !25
  ret i32 %i.az

bb.h:                                             ; preds = %bb.b
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %.body10, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.bd, %bb.h ], [ %.pn.pn.i, %.body10 ], [ %.pn.pn.i, %bb.g ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 120) #19
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9NWildcard11CCensorNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_0
begin_hunk_1_@_ZNK9NWildcard11CCensorNode20AreThereIncludeItemsEv:bb.a
  %i.e = load i32, ptr %i.d, align 4, !tbaa !25   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.k = tail call noundef zeroext i1 @_ZNK9NWildcard11CCensorNode20AreThereIncludeItemsEv(ptr noundef nonnull align 8 dereferenceable(120) %i.j) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %i.k, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %.loopexit, label %bb.b, !llvm.loop !70

.loopexit:                                        ; preds = %bb.b, %.preheader, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ false, %.preheader ], [ %i.k, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK9NWildcard11CCensorNode16CheckPathCurrentEbRK13CObjectVectorI11CStringBaseIwEEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, i1 noundef zeroext %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i1 noundef zeroext %3) local_unnamed_addr #2 align 2 {
bb.a:
  %.v = select i1 %1, i64 56, i64 88
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.v ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !25
  %.not12 = icmp sgt i32 %i.c, 0
  br i1 %.not12, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.e = load i32, ptr %i.b, align 4, !tbaa !25
  %i.f = sext i32 %i.e to i64
  %.not = icmp slt i64 %indvars.iv.next, %i.f
  br i1 %.not, label %bb.c, label %.critedge, !llvm.loop !71

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.j = tail call noundef zeroext i1 @_ZNK9NWildcard5CItem9CheckPathERK13CObjectVectorI11CStringBaseIwEEb(ptr noundef nonnull align 8 dereferenceable(35) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3) ; 3 uses
  br i1 %i.j, label %.critedge, label %bb.b

.critedge:                                        ; preds = %bb.c, %bb.b, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ %i.j, %bb.b ], [ %i.j, %bb.c ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK9NWildcard11CCensorNode9CheckPathER13CObjectVectorI11CStringBaseIwEEbRb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.CObjectVector, align 8       ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25
  %.not12.i = icmp sgt i32 %i.b, 0
  br i1 %.not12.i, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !25
  %i.e = sext i32 %i.d to i64
  %.not.i = icmp slt i64 %indvars.iv.next.i, %i.e
  br i1 %.not.i, label %bb.c, label %.loopexit, !llvm.loop !71

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.i = tail call noundef zeroext i1 @_ZNK9NWildcard5CItem9CheckPathERK13CObjectVectorI11CStringBaseIwEEb(ptr noundef nonnull align 8 dereferenceable(35) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i1 noundef zeroext %2)
  br i1 %i.i, label %_ZNK9NWildcard11CCensorNode16CheckPathCurrentEbRK13CObjectVectorI11CStringBaseIwEEb.exit, label %bb.b

_ZNK9NWildcard11CCensorNode16CheckPathCurrentEbRK13CObjectVectorI11CStringBaseIwEEb.exit: ; preds = %bb.c
  store i8 0, ptr %3, align 1, !tbaa !12
  br label %bb.q

.loopexit:                                        ; preds = %bb.b, %bb.a
  store i8 1, ptr %3, align 1, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !25
  %.not12.i20 = icmp sgt i32 %i.k, 0
  br i1 %.not12.i20, label %.lr.ph.i22, label %_ZNK9NWildcard11CCensorNode16CheckPathCurrentEbRK13CObjectVectorI11CStringBaseIwEEb.exit26

.lr.ph.i22:                                       ; preds = %.loopexit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i23, 1 ; 2 uses
  %i.m = load i32, ptr %i.j, align 4, !tbaa !25
  %i.n = sext i32 %i.m to i64
  %.not.i25 = icmp slt i64 %indvars.iv.next.i24, %i.n
  br i1 %.not.i25, label %bb.e, label %_ZNK9NWildcard11CCensorNode16CheckPathCurrentEbRK13CObjectVectorI11CStringBaseIwEEb.exit26, !llvm.loop !71

bb.e:                                             ; preds = %bb.d, %.lr.ph.i22
  %indvars.iv.i23 = phi i64 [ 0, %.lr.ph.i22 ], [ %indvars.iv.next.i24, %bb.d ] ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i23
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26
  %i.r = tail call noundef zeroext i1 @_ZNK9NWildcard5CItem9CheckPathERK13CObjectVectorI11CStringBaseIwEEb(ptr noundef nonnull align 8 dereferenceable(35) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i1 noundef zeroext %2) ; 3 uses
  br i1 %i.r, label %_ZNK9NWildcard11CCensorNode16CheckPathCurrentEbRK13CObjectVectorI11CStringBaseIwEEb.exit26, label %bb.d

_ZNK9NWildcard11CCensorNode16CheckPathCurrentEbRK13CObjectVectorI11CStringBaseIwEEb.exit26: ; preds = %bb.d, %bb.e, %.loopexit
  %.not.lcssa.i21 = phi i1 [ false, %.loopexit ], [ %i.r, %bb.e ], [ %i.r, %bb.d ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !25
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %bb.q, label %bb.f

bb.f:                                             ; preds = %_ZNK9NWildcard11CCensorNode16CheckPathCurrentEbRK13CObjectVectorI11CStringBaseIwEEb.exit26
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !25
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i27, label %_ZNK9NWildcard11CCensorNode11FindSubNodeERK11CStringBaseIwE.exit.thread

.lr.ph.i27:                                       ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %.lr.ph.i27
  %indvars.iv.i28 = phi i64 [ 0, %.lr.ph.i27 ], [ %indvars.iv.next.i29, %bb.j ] ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i28
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i8, ptr @g_CaseSensitive, align 1, !tbaa !12, !range !14, !noundef !15
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !8  ; 2 uses
  %i.aj = load ptr, ptr %i.x, align 8, !tbaa !8   ; 2 uses
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = tail call noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %i.ai, ptr noundef %i.aj)
  br label %_Z16CompareFileNamesRK11CStringBaseIwES2_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.al = tail call noundef i32 @_Z21MyStringCompareNoCasePKwS0_(ptr noundef %i.ai, ptr noundef %i.aj)
  br label %_Z16CompareFileNamesRK11CStringBaseIwES2_.exit.i

_Z16CompareFileNamesRK11CStringBaseIwES2_.exit.i: ; preds = %bb.i, %bb.h
  %.0.i.i = phi i32 [ %i.ak, %bb.h ], [ %i.al, %bb.i ]
  %i.am = icmp eq i32 %.0.i.i, 0
  br i1 %i.am, label %_ZNK9NWildcard11CCensorNode11FindSubNodeERK11CStringBaseIwE.exit, label %bb.j

bb.j:                                             ; preds = %_Z16CompareFileNamesRK11CStringBaseIwES2_.exit.i
  %indvars.iv.next.i29 = add nuw nsw i64 %indvars.iv.i28, 1 ; 2 uses
  %i.an = load i32, ptr %i.y, align 4, !tbaa !25
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp slt i64 %indvars.iv.next.i29, %i.ao
  br i1 %i.ap, label %bb.g, label %_ZNK9NWildcard11CCensorNode11FindSubNodeERK11CStringBaseIwE.exit.thread, !llvm.loop !50

_ZNK9NWildcard11CCensorNode11FindSubNodeERK11CStringBaseIwE.exit: ; preds = %_Z16CompareFileNamesRK11CStringBaseIwES2_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.ar, align 8, !tbaa !51
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI11CStringBaseIwEE, i64 16), ptr %4, align 8, !tbaa !52
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc.i unwind label %bb.k

.noexc.i:                                         ; preds = %_ZNK9NWildcard11CCensorNode11FindSubNodeERK11CStringBaseIwE.exit
  %i.as = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN13CObjectVectorI11CStringBaseIwEEpLERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN13CObjectVectorI11CStringBaseIwEEC2ERKS2_.exit unwind label %bb.k ; 0 uses

common.resume:                                    ; preds = %bb.n, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.at, %bb.k ], [ %i.bh, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %.noexc.i, %_ZNK9NWildcard11CCensorNode11FindSubNodeERK11CStringBaseIwE.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #21
  br label %common.resume

_ZN13CObjectVectorI11CStringBaseIwEEC2ERKS2_.exit: ; preds = %.noexc.i
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !25 ; 2 uses
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.av, i32 1)
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i30, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i30, %_ZN11CStringBaseIwED2Ev.exit.i, %_ZN13CObjectVectorI11CStringBaseIwEEC2ERKS2_.exit
  invoke void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i32 noundef %spec.select.i)
          to label %_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii.exit unwind label %bb.n

.lr.ph.i30:                                       ; preds = %_ZN13CObjectVectorI11CStringBaseIwEEC2ERKS2_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !22
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !26 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %._crit_edge.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i30
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !8  ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %_ZN11CStringBaseIwED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.bb) #19
  br label %_ZN11CStringBaseIwED2Ev.exit.i

_ZN11CStringBaseIwED2Ev.exit.i:                   ; preds = %bb.m, %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 16) #19
  br label %._crit_edge.i

_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii.exit: ; preds = %._crit_edge.i
  %i.bd = load ptr, ptr %i.ab, align 8, !tbaa !22
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i28
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !26
  %i.bg = invoke noundef zeroext i1 @_ZNK9NWildcard11CCensorNode9CheckPathER13CObjectVectorI11CStringBaseIwEEbRb(ptr noundef nonnull align 8 dereferenceable(120) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %._crit_edge.i, %_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN13CObjectVectorI11CStringBaseIwEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume

bb.o:                                             ; preds = %_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI11CStringBaseIwEE, i64 16), ptr %4, align 8, !tbaa !52
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit unwind label %bb.p, !inline_history !68

bb.p:                                             ; preds = %bb.o
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #22, !inline_history !68
  unreachable

_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit:    ; preds = %bb.o
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #21, !inline_history !68
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br i1 %i.bg, label %bb.q, label %_ZNK9NWildcard11CCensorNode11FindSubNodeERK11CStringBaseIwE.exit.thread

_ZNK9NWildcard11CCensorNode11FindSubNodeERK11CStringBaseIwE.exit.thread: ; preds = %bb.j, %bb.f, %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit
  br label %bb.q

bb.q:                                             ; preds = %_ZNK9NWildcard11CCensorNode16CheckPathCurrentEbRK13CObjectVectorI11CStringBaseIwEEb.exit26, %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit, %_ZNK9NWildcard11CCensorNode11FindSubNodeERK11CStringBaseIwE.exit.thread, %_ZNK9NWildcard11CCensorNode16CheckPathCurrentEbRK13CObjectVectorI11CStringBaseIwEEb.exit
  %.3 = phi i1 [ true, %_ZNK9NWildcard11CCensorNode16CheckPathCurrentEbRK13CObjectVectorI11CStringBaseIwEEb.exit ], [ %.not.lcssa.i21, %_ZNK9NWildcard11CCensorNode16CheckPathCurrentEbRK13CObjectVectorI11CStringBaseIwEEb.exit26 ], [ %.not.lcssa.i21, %_ZNK9NWildcard11CCensorNode11FindSubNodeERK11CStringBaseIwE.exit.thread ], [ true, %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorI11CStringBaseIwEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI11CStringBaseIwEE, i64 16), ptr %0, align 8, !tbaa !52
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #21
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK9NWildcard11CCensorNode9CheckPathERK11CStringBaseIwEbRb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.CObjectVector, align 8       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.b, align 8, !tbaa !51
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI11CStringBaseIwEE, i64 16), ptr %4, align 8, !tbaa !52
  invoke void @_Z16SplitPathToPartsRK11CStringBaseIwER13CObjectVectorIS0_E(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef zeroext i1 @_ZNK9NWildcard11CCensorNode9CheckPathER13CObjectVectorI11CStringBaseIwEEbRb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI11CStringBaseIwEE, i64 16), ptr %4, align 8, !tbaa !52
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit unwind label %bb.d, !inline_history !68

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #22, !inline_history !68
  unreachable

_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit:    ; preds = %bb.c
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #21, !inline_history !68
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret i1 %i.c

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN13CObjectVectorI11CStringBaseIwEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK9NWildcard11CCensorNode9CheckPathERK11CStringBaseIwEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.CObjectVector, align 8       ; 12 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.c, align 8, !tbaa !51
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI11CStringBaseIwEE, i64 16), ptr %3, align 8, !tbaa !52
  invoke void @_Z16SplitPathToPartsRK11CStringBaseIwER13CObjectVectorIS0_E(ptr noundef nonnull readonly align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef zeroext i1 @_ZNK9NWildcard11CCensorNode9CheckPathER13CObjectVectorI11CStringBaseIwEEbRb(ptr noundef nonnull readonly align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext %2, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI11CStringBaseIwEE, i64 16), ptr %3, align 8, !tbaa !52
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNK9NWildcard11CCensorNode9CheckPathERK11CStringBaseIwEbRb.exit unwind label %bb.d, !inline_history !68

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #22, !inline_history !68
  unreachable

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN13CObjectVectorI11CStringBaseIwEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %i.g

_ZNK9NWildcard11CCensorNode9CheckPathERK11CStringBaseIwEbRb.exit: ; preds = %bb.c
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #21, !inline_history !68
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.h = load i8, ptr %i.a, align 1, !range !14
  %i.i = trunc nuw i8 %i.h to i1
  %.0 = select i1 %i.d, i1 %i.i, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK9NWildcard11CCensorNode15CheckPathToRootEbR13CObjectVectorI11CStringBaseIwEEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.v.i = select i1 %1, i64 56, i64 88
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZN13CObjectVectorI11CStringBaseIwEE6InsertEiRKS1_.exit, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.ah, %_ZN13CObjectVectorI11CStringBaseIwEE6InsertEiRKS1_.exit ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.tr, i64 %.v.i ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !25
  %.not12.i = icmp sgt i32 %i.d, 0
  br i1 %.not12.i, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %tailrecurse
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.f = load i32, ptr %i.c, align 4, !tbaa !25
  %i.g = sext i32 %i.f to i64
  %.not.i = icmp slt i64 %indvars.iv.next.i, %i.g
  br i1 %.not.i, label %bb.c, label %.loopexit, !llvm.loop !71

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.k = tail call noundef zeroext i1 @_ZNK9NWildcard5CItem9CheckPathERK13CObjectVectorI11CStringBaseIwEEb(ptr noundef nonnull align 8 dereferenceable(35) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i1 noundef zeroext %3)
  br i1 %i.k, label %_ZNK9NWildcard11CCensorNode16CheckPathCurrentEbRK13CObjectVectorI11CStringBaseIwEEb.exit, label %bb.b

.loopexit:                                        ; preds = %bb.b, %tailrecurse
  %i.l = load ptr, ptr %.tr, align 8, !tbaa !54
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZNK9NWildcard11CCensorNode16CheckPathCurrentEbRK13CObjectVectorI11CStringBaseIwEEb.exit, label %bb.d

end_hunk_1
