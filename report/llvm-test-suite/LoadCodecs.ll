inline.NumInlined: 138
inline.NumDeleted: 56
begin_hunk_0_@_ZNK7CCodecs24FindFormatForArchiveNameERK11CStringBaseIwE:bb.a

.lr.ph:                                           ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.thread
  %i.am = phi i32 [ %i.ak, %.lr.ph ], [ %i.bj, %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.thread ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.thread ] ; 3 uses
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !27
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !28 ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !37, !range !50, !noundef !51
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.o, label %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.thread

bb.m:                                             ; preds = %.lr.ph.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %2, align 8, !tbaa !16    ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.at) #18
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.as

bb.o:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 52 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !25
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.i, label %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.thread

.lr.ph.i:                                         ; preds = %bb.o, %bb.p
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !27
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !28
  %i.bc = load ptr, ptr %2, align 8, !tbaa !16
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !16
  %i.be = invoke noundef i32 @_Z21MyStringCompareNoCasePKwS0_(ptr noundef %i.bc, ptr noundef %i.bd)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.lr.ph.i
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.loopexit, label %bb.p

bb.p:                                             ; preds = %.noexc
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bg = load i32, ptr %i.aw, align 4, !tbaa !25
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp slt i64 %indvars.iv.next.i, %i.bh
  br i1 %i.bi, label %.lr.ph.i, label %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.thread.loopexit, !llvm.loop !60

_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.thread.loopexit: ; preds = %bb.p
  %.pre = load i32, ptr %i.aj, align 4, !tbaa !25
  br label %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.thread

_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.thread: ; preds = %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.thread.loopexit, %bb.o, %bb.l
  %i.bj = phi i32 [ %.pre, %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.thread.loopexit ], [ %i.am, %bb.o ], [ %i.am, %bb.l ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bk = sext i32 %i.bj to i64
  %.not = icmp slt i64 %indvars.iv.next, %i.bk
  br i1 %.not, label %bb.l, label %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit, !llvm.loop !61

_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.loopexit: ; preds = %.noexc
  %i.bl = trunc nuw nsw i64 %indvars.iv to i32
  br label %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit

_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit: ; preds = %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.thread, %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.loopexit, %bb.k
  %spec.select = phi i32 [ -1, %bb.k ], [ %i.bl, %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.loopexit ], [ -1, %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.thread ]
  %i.bm = load ptr, ptr %2, align 8, !tbaa !16    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN11CStringBaseIwED2Ev.exit34, label %bb.q

bb.q:                                             ; preds = %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #18
  br label %_ZN11CStringBaseIwED2Ev.exit34

_ZN11CStringBaseIwED2Ev.exit34:                   ; preds = %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %_ZNK11CStringBaseIwE11ReverseFindEw.exit33.thread

_ZNK11CStringBaseIwE11ReverseFindEw.exit33.thread: ; preds = %bb.j, %bb.a, %_ZNK11CStringBaseIwE11ReverseFindEw.exit33, %_ZN11CStringBaseIwED2Ev.exit34
  %.4 = phi i32 [ %spec.select, %_ZN11CStringBaseIwED2Ev.exit34 ], [ -1, %_ZNK11CStringBaseIwE11ReverseFindEw.exit33 ], [ -1, %bb.a ], [ -1, %bb.j ]
  ret i32 %.4
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK7CCodecs22FindFormatForExtensionERK11CStringBaseIwE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !25   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.thread
  %i.h = phi i32 [ %i.e, %.lr.ph ], [ %i.z, %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.thread ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.thread ] ; 3 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 52 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !25
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i, label %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.thread

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28
  %i.s = load ptr, ptr %1, align 8, !tbaa !16
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !16
  %i.u = tail call noundef i32 @_Z21MyStringCompareNoCasePKwS0_(ptr noundef %i.s, ptr noundef %i.t)
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.w = load i32, ptr %i.m, align 4, !tbaa !25
  %i.x = sext i32 %i.w to i64
  %i.y = icmp slt i64 %indvars.iv.next.i, %i.x
  br i1 %i.y, label %.lr.ph.i, label %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.thread.loopexit, !llvm.loop !60

_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.thread.loopexit: ; preds = %bb.c
  %.pre = load i32, ptr %i.d, align 4, !tbaa !25
  br label %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.thread

_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.thread: ; preds = %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.thread.loopexit, %bb.b
  %i.z = phi i32 [ %.pre, %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.thread.loopexit ], [ %i.h, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %bb.b, label %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit, !llvm.loop !62

_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.loopexit: ; preds = %.lr.ph.i
  %i.ac = trunc nuw nsw i64 %indvars.iv to i32
  br label %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit

_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit: ; preds = %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.thread, %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.loopexit, %.preheader, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ -1, %.preheader ], [ %i.ac, %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.loopexit ], [ -1, %_ZNK10CArcInfoEx13FindExtensionERK11CStringBaseIwE.exit.thread ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -1, 2147483647) i32 @_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !25
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.j = load ptr, ptr %1, align 8, !tbaa !16
  %i.k = tail call noundef i32 @_Z21MyStringCompareNoCasePKwS0_(ptr noundef %i.i, ptr noundef %i.j)
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %._crit_edge.loopexit.split.loop.exit14, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i32, ptr %i.b, align 4, !tbaa !25
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !63

._crit_edge.loopexit.split.loop.exit14:           ; preds = %.lr.ph
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.loopexit.split.loop.exit14, %bb.a
  %i.q = phi i32 [ -1, %bb.a ], [ %i.p, %._crit_edge.loopexit.split.loop.exit14 ], [ -1, %bb.b ]
  ret i32 %i.q
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwER13CRecordVectorIiE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.CStringBase, align 8         ; 10 uses
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %4 = load i32, ptr %i.a, align 8, !tbaa !24     ; 2 uses
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN11CStringBaseIwED2Ev.exit31
  %10 = phi i32 [ %4, %bb.b ], [ %14, %_ZN11CStringBaseIwED2Ev.exit31 ]
  %.02144 = phi i32 [ 0, %bb.b ], [ %i.ar, %_ZN11CStringBaseIwED2Ev.exit31 ] ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.c = zext nneg i32 %.02144 to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !19   ; 2 uses
  %i.f = icmp eq i32 %i.e, 46
  br i1 %i.f, label %_ZNK11CStringBaseIwE4FindEwi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %i.g = phi i32 [ %i.j, %bb.d ], [ %i.e, %bb.c ]
  %.010.i = phi ptr [ %i.i, %bb.d ], [ %i.d, %bb.c ]
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZNK11CStringBaseIwE4FindEwi.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !19   ; 2 uses
  %i.k = icmp eq i32 %i.j, 46
  br i1 %i.k, label %_ZNK11CStringBaseIwE4FindEwi.exit, label %.lr.ph.i, !llvm.loop !64

_ZNK11CStringBaseIwE4FindEwi.exit:                ; preds = %bb.d, %bb.c
  %.0.lcssa.i = phi ptr [ %i.d, %bb.c ], [ %i.i, %bb.d ]
  %i.l = ptrtoint ptr %.0.lcssa.i to i64
  %i.m = ptrtoint ptr %i.b to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 2
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %_ZNK11CStringBaseIwE4FindEwi.exit.thread, label %bb.e

_ZNK11CStringBaseIwE4FindEwi.exit.thread:         ; preds = %.lr.ph.i, %_ZNK11CStringBaseIwE4FindEwi.exit
  br label %bb.e

bb.e:                                             ; preds = %_ZNK11CStringBaseIwE4FindEwi.exit.thread, %_ZNK11CStringBaseIwE4FindEwi.exit
  %.025 = phi i32 [ %10, %_ZNK11CStringBaseIwE4FindEwi.exit.thread ], [ %i.p, %_ZNK11CStringBaseIwE4FindEwi.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.r = sub nsw i32 %.025, %.02144
  call void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %.02144, i32 noundef %i.r)
  %i.s = load i32, ptr %7, align 4, !tbaa !25
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.i28, label %_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwE.exit.thread

.lr.ph.i28:                                       ; preds = %bb.e, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %i.u = load ptr, ptr %6, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16
  %i.z = load ptr, ptr %3, align 8, !tbaa !16
  %i.aa = invoke noundef i32 @_Z21MyStringCompareNoCasePKwS0_(ptr noundef %i.y, ptr noundef %i.z)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %.lr.ph.i28
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwE.exit, label %bb.f

bb.f:                                             ; preds = %.noexc
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ac = load i32, ptr %7, align 4, !tbaa !25
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp slt i64 %indvars.iv.next.i, %i.ad
  br i1 %i.ae, label %.lr.ph.i28, label %_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwE.exit.thread, !llvm.loop !63

_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwE.exit: ; preds = %.noexc
  %i.af = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %bb.k

_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwE.exit.thread: ; preds = %bb.f, %bb.e
  %i.ag = load ptr, ptr %3, align 8, !tbaa !16
  %i.ah = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %i.ag, ptr noundef nonnull @.str)
          to label %bb.g unwind label %.loopexit.a

bb.g:                                             ; preds = %_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwE.exit.thread
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.m unwind label %.loopexit.split-lp.a

.loopexit:                                        ; preds = %.lr.ph.i28
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.a:                                      ; preds = %bb.k, %_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwE.exit.thread
  %lpad.loopexit.a = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp.a:                             ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.a, %.loopexit.split-lp.a, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.a, %.loopexit.a ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.a ]
  %i.ai = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.ai) #18
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %lpad.phi

bb.k:                                             ; preds = %_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwE.exit, %bb.g
  %i.ak = phi i32 [ -1, %bb.g ], [ %i.af, %_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwE.exit ]
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.l unwind label %.loopexit.a

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %8, align 8, !tbaa !27
  %i.am = load i32, ptr %9, align 4, !tbaa !25
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.an
  store i32 %i.ak, ptr %i.ao, align 4, !tbaa !4
  %i.ap = load i32, ptr %9, align 4, !tbaa !25
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %9, align 4, !tbaa !25
  %i.ar = add nuw nsw i32 %.025, 1                ; 2 uses
  %11 = load ptr, ptr %3, align 8, !tbaa !16      ; 2 uses
  %12 = icmp eq ptr %11, null
  br i1 %12, label %_ZN11CStringBaseIwED2Ev.exit31, label %13

13:                                               ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %11) #18
  br label %_ZN11CStringBaseIwED2Ev.exit31

_ZN11CStringBaseIwED2Ev.exit31:                   ; preds = %bb.l, %13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %14 = load i32, ptr %i.a, align 8, !tbaa !24    ; 2 uses
  %.not45 = icmp slt i32 %i.ar, %14
  br i1 %.not45, label %bb.c, label %bb.o, !llvm.loop !65

bb.m:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZN11CStringBaseIwED2Ev.exit31.a, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.as) #18
  br label %_ZN11CStringBaseIwED2Ev.exit31.a

_ZN11CStringBaseIwED2Ev.exit31.a:                 ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.o

bb.o:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit31, %bb.a, %_ZN11CStringBaseIwED2Ev.exit31.a
  %15 = phi i1 [ false, %_ZN11CStringBaseIwED2Ev.exit31.a ], [ true, %bb.a ], [ true, %_ZN11CStringBaseIwED2Ev.exit31 ]
  ret i1 %15
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind noalias writable sret(%class.CStringBase) align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i32 %3, %2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !24   ; 6 uses
  %i.d = icmp sgt i32 %i.a, %i.c
  %i.e = sub nsw i32 %i.c, %2
  %spec.select = select i1 %i.d, i32 %i.e, i32 %3 ; 8 uses
  %i.f = icmp eq i32 %2, 0
  %i.g = icmp eq i32 %spec.select, %i.c
  %or.cond = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.h = add nsw i32 %i.c, 1                      ; 3 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = zext nneg i32 %i.h to i64
  %i.l = icmp slt i32 %i.c, -1
  %i.m = shl nuw nsw i64 %i.k, 2
  %i.n = select i1 %i.l, i64 -1, i64 %i.m
  %i.o = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #17 ; 3 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !16
  store i32 0, ptr %i.o, align 4, !tbaa !19
  store i32 %i.h, ptr %i.j, align 4, !tbaa !21
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ null, %bb.b ], [ %i.o, %bb.c ]
  %i.q = load ptr, ptr %1, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.q, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.r, %bb.d ] ; 2 uses
  %.0.i.i = phi ptr [ %i.p, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.t, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.s = load i32, ptr %.04.i.i, align 4, !tbaa !19 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.s, ptr %.0.i.i, align 4, !tbaa !19
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2ERKS0_.exit, label %bb.d, !llvm.loop !22

bb.e:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.v, align 8
  %i.w = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #17 ; 5 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !16
  store i32 0, ptr %i.w, align 4, !tbaa !19
  store i32 4, ptr %i.u, align 4, !tbaa !21
  %i.x = add nsw i32 %spec.select, 1              ; 3 uses
  %i.y = icmp eq i32 %i.x, 4
  br i1 %i.y, label %.lr.ph, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = icmp slt i32 %spec.select, -1
  %i.ab = shl nuw nsw i64 %i.z, 2
  %i.ac = select i1 %i.aa, i64 -1, i64 %i.ab
  %i.ad = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ac) #17
          to label %_ZN11CStringBaseIwE11SetCapacityEi.exit unwind label %_ZN11CStringBaseIwED2Ev.exit ; 4 uses

_ZN11CStringBaseIwE11SetCapacityEi.exit:          ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.w) #18
  store ptr %i.ad, ptr %0, align 8, !tbaa !16
  store i32 0, ptr %i.ad, align 4, !tbaa !19
  store i32 %i.x, ptr %i.u, align 4, !tbaa !21
  %i.ae = icmp sgt i32 %spec.select, 0
  br i1 %i.ae, label %.lr.ph, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge

_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge: ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit
  %.pre = sext i32 %spec.select to i64
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %_ZN11CStringBaseIwE11SetCapacityEi.exit
  %i.af = phi ptr [ %i.ad, %_ZN11CStringBaseIwE11SetCapacityEi.exit ], [ %i.w, %bb.e ] ; 5 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !16    ; 2 uses
  %i.ah = sext i32 %2 to i64                      ; 2 uses
  %i.ai = zext nneg i32 %spec.select to i64       ; 5 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  %min.iters.check = icmp ult i32 %spec.select, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.aj = ptrtoaddr ptr %i.ag to i64
  %i.ak = ptrtoaddr ptr %i.af to i64
  %i.al = shl nsw i64 %i.ah, 2
  %i.am = add i64 %i.al, %i.aj
  %i.an = sub i64 %i.ak, %i.am
  %diff.check = icmp ult i64 %i.an, 32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ai, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ao = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  %wide.load = load <4 x i32>, ptr %i.ao, align 4, !tbaa !19
  %wide.load28 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !19
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <4 x i32> %wide.load, ptr %i.aq, align 4, !tbaa !19
  store <4 x i32> %wide.load28, ptr %i.ar, align 4, !tbaa !19
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ai
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge
  %i.at = phi ptr [ %i.ad, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge ], [ %i.af, %middle.block ], [ %i.af, %scalar.ph ]
  %.pre-phi = phi i64 [ %.pre, %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge ], [ %i.ai, %middle.block ], [ %i.ai, %scalar.ph ]
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %.pre-phi
  store i32 0, ptr %i.au, align 4, !tbaa !19
  br label %_ZN11CStringBaseIwEC2ERKS0_.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.w) #18
  resume { ptr, i32 } %i.av

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.aw = load i32, ptr %gep, align 4, !tbaa !19
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = icmp samesign ult i64 %indvars.iv.next, %i.ai
  br i1 %i.ay, label %scalar.ph, label %._crit_edge, !llvm.loop !67

_ZN11CStringBaseIwEC2ERKS0_.exit:                 ; preds = %bb.d, %._crit_edge
  %spec.select.sink = phi i32 [ %spec.select, %._crit_edge ], [ %i.c, %bb.d ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %spec.select.sink, ptr %i.az, align 8, !tbaa !24
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorI11CArcExtInfoED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI11CArcExtInfoE, i64 16), ptr %0, align 8, !tbaa !14
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #19
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorI11CArcExtInfoED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI11CArcExtInfoE, i64 16), ptr %0, align 8, !tbaa !14
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN13CObjectVectorI11CArcExtInfoED2Ev.exit unwind label %bb.b, !inline_history !57

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #19, !inline_history !57
end_hunk_0
