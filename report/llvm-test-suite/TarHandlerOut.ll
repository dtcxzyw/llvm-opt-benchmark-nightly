inline.NumInlined: 74
inline.NumDeleted: 24
begin_hunk_0_@_ZN11CStringBaseIcEaSERKS0_:bb.a
  %.04.i = phi ptr [ %i.at, %_ZN11CStringBaseIcE11SetCapacityEi.exit ], [ %i.au, %bb.e ] ; 2 uses
  %.0.i = phi ptr [ %i.as, %_ZN11CStringBaseIcE11SetCapacityEi.exit ], [ %i.aw, %bb.e ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.04.i, i64 1
  %i.av = load i8, ptr %.04.i, align 1, !tbaa !20 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 %i.av, ptr %.0.i, align 1, !tbaa !20
  %.not.i = icmp eq i8 %i.av, 0
  br i1 %.not.i, label %_Z12MyStringCopyIcEPT_S1_PKS0_.exit, label %bb.e, !llvm.loop !63

_Z12MyStringCopyIcEPT_S1_PKS0_.exit:              ; preds = %bb.e
  %i.ax = load i32, ptr %i.d, align 8, !tbaa !54
  store i32 %i.ax, ptr %i.b, align 8, !tbaa !54
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_Z12MyStringCopyIcEPT_S1_PKS0_.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIcEpLEc(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef signext %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !54   ; 9 uses
  %i.e = xor i32 %i.d, -1
  %i.f = add i32 %i.b, %i.e                       ; 3 uses
  %.not.i = icmp slt i32 %i.f, 1
  br i1 %.not.i, label %bb.b, label %_ZN11CStringBaseIcE10GrowLengthEi.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp sgt i32 %i.b, 64
  %i.h = lshr i32 %i.b, 1
  %i.i = icmp sgt i32 %i.b, 8
  %..i = select i1 %i.i, i32 16, i32 4
  %.0.i = select i1 %i.g, i32 %i.h, i32 %..i      ; 2 uses
  %i.j = add nsw i32 %.0.i, %i.f
  %i.k = icmp slt i32 %i.j, 1
  %i.l = sub nsw i32 1, %i.f
  %.1.i = select i1 %i.k, i32 %i.l, i32 %.0.i
  %i.m = add i32 %i.b, 1
  %i.n = add i32 %i.m, %.1.i                      ; 3 uses
  %i.o = icmp eq i32 %i.n, %i.b
  br i1 %i.o, label %_ZN11CStringBaseIcE10GrowLengthEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = sext i32 %i.n to i64
  %i.q = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #19 ; 10 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = icmp sgt i32 %i.b, 0
  br i1 %i.s, label %.preheader.i.i, label %bb.d

.preheader.i.i:                                   ; preds = %bb.c
  %i.t = icmp sgt i32 %i.d, 0
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !17 ; 10 uses
  br i1 %i.t, label %iter.check, label %._crit_edge.i.i

iter.check:                                       ; preds = %.preheader.i.i
  %.pre.i.i4 = ptrtoaddr ptr %.pre.i.i to i64
  %wide.trip.count.i.i = zext nneg i32 %i.d to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %i.d, 4
  %i.u = sub i64 %i.r, %.pre.i.i4
  %diff.check = icmp ult i64 %i.u, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check5 = icmp ult i32 %i.d, 32
  br i1 %min.iters.check5, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <16 x i8>, ptr %i.v, align 1, !tbaa !20
  %wide.load6 = load <16 x i8>, ptr %i.w, align 1, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <16 x i8> %wide.load, ptr %i.x, align 1, !tbaa !20
  store <16 x i8> %wide.load6, ptr %i.y, align 1, !tbaa !20
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !58

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index9 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index9
  %wide.load10 = load <4 x i8>, ptr %i.aa, align 1, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 %index9
  store <4 x i8> %wide.load10, ptr %i.ab, align 1, !tbaa !20
  %index.next11 = add nuw i64 %index9, 4          ; 2 uses
  %i.ac = icmp eq i64 %index.next11, %n.vec8
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !65

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n12 = icmp eq i64 %n.vec8, %wide.trip.count.i.i
  br i1 %cmp.n12, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !20
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.i.i.prol
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !20
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !66

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.ag = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.ai = icmp eq ptr %.pre.i.i, null
  br i1 %i.ai, label %bb.d, label %._crit_edge.thread.i.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.i.i
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !20
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.an = load i8, ptr %i.am, align 1, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.next.i.i
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !20
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.next.i.i.1
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !20
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.at = load i8, ptr %i.as, align 1, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.next.i.i.2
  store i8 %i.at, ptr %i.au, align 1, !tbaa !20
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph, !llvm.loop !67

._crit_edge.thread.i.i:                           ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #20
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %bb.c
  %i.av = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %i.d, %._crit_edge.i.i ], [ %i.d, %bb.c ] ; 2 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !17
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.q, i64 %i.aw
  store i8 0, ptr %i.ax, align 1, !tbaa !20
  store i32 %i.n, ptr %i.a, align 4, !tbaa !21
  br label %_ZN11CStringBaseIcE10GrowLengthEi.exit

_ZN11CStringBaseIcE10GrowLengthEi.exit:           ; preds = %bb.a, %bb.b, %bb.d
  %i.ay = phi i32 [ %i.d, %bb.a ], [ %i.d, %bb.b ], [ %i.av, %bb.d ]
  %i.az = load ptr, ptr %0, align 8, !tbaa !17
  %i.ba = sext i32 %i.ay to i64
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 %i.ba
  store i8 %1, ptr %i.bb, align 1, !tbaa !20
  %i.bc = load ptr, ptr %0, align 8, !tbaa !17
  %i.bd = load i32, ptr %i.c, align 8, !tbaa !54
  %i.be = add nsw i32 %i.bd, 1                    ; 2 uses
  store i32 %i.be, ptr %i.c, align 8, !tbaa !54
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds i8, ptr %i.bc, i64 %i.bf
  store i8 0, ptr %i.bg, align 1, !tbaa !20
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN8NArchive4NTarL13GetPropStringEP22IArchiveUpdateCallbackjjR11CStringBaseIcE(ptr noundef nonnull %0, i32 noundef %1, i32 noundef range(i32 25, 27) %2, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(16) %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.NWindows::NCOM::CPropVariant", align 8 ; 10 uses
  %5 = alloca %class.CStringBase, align 8         ; 9 uses
  %6 = alloca %class.CStringBase.3, align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store i16 0, ptr %4, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 0, ptr %i.a, align 2, !tbaa !34
  %i.b = load ptr, ptr %0, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = invoke noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %4)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.g = load i16, ptr %4, align 8, !tbaa !31
  switch i16 %i.g, label %bb.s [
    i16 8, label %bb.e
    i16 0, label %bb.r
  ]

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %wcslen.i.i = call i64 @wcslen(ptr %i.i)
  %i.j = trunc i64 %wcslen.i.i to i32             ; 3 uses
  %i.k = add nsw i32 %i.j, 1                      ; 3 uses
  %i.l = icmp ne i32 %i.k, 0
  call void @llvm.assume(i1 %i.l)
  %i.m = zext nneg i32 %i.k to i64
  %i.n = icmp slt i32 %i.j, -1
  %i.o = shl nuw nsw i64 %i.m, 2
  %i.p = select i1 %i.n, i64 -1, i64 %i.o
  %i.q = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #19
          to label %.noexc unwind label %bb.m     ; 3 uses

.noexc:                                           ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 12
  store ptr %i.q, ptr %6, align 8, !tbaa !40
  store i32 0, ptr %i.q, align 4, !tbaa !49
  store i32 %i.k, ptr %i.r, align 4, !tbaa !51
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %.noexc, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.s, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.i, %.noexc ] ; 2 uses
  %.0.i.i = phi ptr [ %i.u, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.q, %.noexc ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.t = load i32, ptr %.04.i.i, align 4, !tbaa !49 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.t, ptr %.0.i.i, align 4, !tbaa !49
  %.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i, label %bb.f, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, !llvm.loop !52

bb.f:                                             ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.j, ptr %i.v, align 8, !tbaa !53
  invoke void @_Z24UnicodeStringToMultiByteRK11CStringBaseIwEj(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef 1)
          to label %7 unwind label %bb.n

7:                                                ; preds = %bb.f
  %8 = icmp eq ptr %5, %3
  br i1 %8, label %_ZN11CStringBaseIcEaSERKS0_.exit, label %bb.g

bb.g:                                             ; preds = %7
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 0, ptr %i.w, align 8, !tbaa !54
  %i.x = load ptr, ptr %3, align 8, !tbaa !17
  store i8 0, ptr %i.x, align 1, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !54
  %i.aa = add nsw i32 %i.z, 1                     ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !21 ; 2 uses
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i, label %bb.h

._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i: ; preds = %bb.g
  %.pre8.i = load ptr, ptr %3, align 8, !tbaa !17
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ae = sext i32 %i.aa to i64
  %i.af = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ae) #19
          to label %.noexc23 unwind label %bb.o   ; 11 uses

.noexc23:                                         ; preds = %bb.h
  %i.ag = ptrtoaddr ptr %i.af to i64
  %i.ah = icmp sgt i32 %i.ac, 0
  %.pre7.i = load i32, ptr %i.w, align 8, !tbaa !54 ; 6 uses
  br i1 %i.ah, label %.preheader.i.i, label %bb.i

.preheader.i.i:                                   ; preds = %.noexc23
  %i.ai = icmp sgt i32 %.pre7.i, 0
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !17 ; 10 uses
  br i1 %i.ai, label %iter.check, label %._crit_edge.i.i

iter.check:                                       ; preds = %.preheader.i.i
  %.pre.i.i36 = ptrtoaddr ptr %.pre.i.i to i64
  %wide.trip.count.i.i = zext nneg i32 %.pre7.i to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %.pre7.i, 4
  %i.aj = sub i64 %i.ag, %.pre.i.i36
  %diff.check = icmp ult i64 %i.aj, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check37 = icmp ult i32 %.pre7.i, 32
  br i1 %min.iters.check37, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load = load <16 x i8>, ptr %i.ak, align 1, !tbaa !20
  %wide.load38 = load <16 x i8>, ptr %i.al, align 1, !tbaa !20
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <16 x i8> %wide.load, ptr %i.am, align 1, !tbaa !20
  store <16 x i8> %wide.load38, ptr %i.an, align 1, !tbaa !20
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !58

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec40 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index41 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next43, %vec.epilog.vector.body ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index41
  %wide.load42 = load <4 x i8>, ptr %i.ap, align 1, !tbaa !20
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 %index41
  store <4 x i8> %wide.load42, ptr %i.aq, align 1, !tbaa !20
  %index.next43 = add nuw i64 %index41, 4         ; 2 uses
  %i.ar = icmp eq i64 %index.next43, %n.vec40
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !69

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n44 = icmp eq i64 %n.vec40, %wide.trip.count.i.i
  br i1 %cmp.n44, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec40, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.as = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.at = load i8, ptr %i.as, align 1, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv.i.i.prol
  store i8 %i.at, ptr %i.au, align 1, !tbaa !20
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !70

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.av = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.aw = icmp ugt i64 %i.av, -4
  br i1 %i.aw, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.ax = icmp eq ptr %.pre.i.i, null
  br i1 %i.ax, label %bb.i, label %._crit_edge.thread.i.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !20
  %i.ba = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv.i.i
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !20
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !20
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv.next.i.i
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !20
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !20
  %i.bg = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv.next.i.i.1
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !20
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !20
  %i.bj = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv.next.i.i.2
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !20
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph, !llvm.loop !71

._crit_edge.thread.i.i:                           ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #20
  %.pre.i = load i32, ptr %i.w, align 8, !tbaa !54
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %.noexc23
  %i.bk = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %.pre7.i, %._crit_edge.i.i ], [ %.pre7.i, %.noexc23 ]
  store ptr %i.af, ptr %3, align 8, !tbaa !17
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr %i.af, i64 %i.bl
  store i8 0, ptr %i.bm, align 1, !tbaa !20
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !21
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i

_ZN11CStringBaseIcE11SetCapacityEi.exit.i:        ; preds = %bb.i, %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i
  %i.bn = phi ptr [ %.pre8.i, %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i ], [ %i.af, %bb.i ]
  %i.bo = load ptr, ptr %5, align 8, !tbaa !17
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
  %.04.i.i20 = phi ptr [ %i.bo, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %i.bp, %bb.j ] ; 2 uses
  %.0.i.i21 = phi ptr [ %i.bn, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %i.br, %bb.j ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.04.i.i20, i64 1
  %i.bq = load i8, ptr %.04.i.i20, align 1, !tbaa !20 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i21, i64 1
  store i8 %i.bq, ptr %.0.i.i21, align 1, !tbaa !20
  %.not.i.i22 = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i22, label %_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i, label %bb.j, !llvm.loop !63

_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i:            ; preds = %bb.j
  %9 = load i32, ptr %i.y, align 8, !tbaa !54
  store i32 %9, ptr %i.w, align 8, !tbaa !54
  br label %_ZN11CStringBaseIcEaSERKS0_.exit

_ZN11CStringBaseIcEaSERKS0_.exit:                 ; preds = %_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i, %7
  %i.bs = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %_ZN11CStringBaseIcED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN11CStringBaseIcEaSERKS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bs) #20
  br label %_ZN11CStringBaseIcED2Ev.exit

_ZN11CStringBaseIcED2Ev.exit:                     ; preds = %_ZN11CStringBaseIcEaSERKS0_.exit, %bb.k
  %i.bu = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN11CStringBaseIcED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #20
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %_ZN11CStringBaseIcED2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.r

bb.m:                                             ; preds = %bb.e
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit25

bb.n:                                             ; preds = %bb.f
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIcED2Ev.exit24

bb.o:                                             ; preds = %bb.h
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %_ZN11CStringBaseIcED2Ev.exit24, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.bz) #20
  br label %_ZN11CStringBaseIcED2Ev.exit24

_ZN11CStringBaseIcED2Ev.exit24:                   ; preds = %bb.p, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.n ], [ %i.by, %bb.o ], [ %i.by, %bb.p ] ; 2 uses
  %i.cb = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %_ZN11CStringBaseIwED2Ev.exit25, label %bb.q

bb.q:                                             ; preds = %_ZN11CStringBaseIcED2Ev.exit24
  call void @_ZdaPv(ptr noundef nonnull %i.cb) #20
  br label %_ZN11CStringBaseIwED2Ev.exit25

_ZN11CStringBaseIwED2Ev.exit25:                   ; preds = %bb.q, %_ZN11CStringBaseIcED2Ev.exit24, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.m ], [ %.pn, %_ZN11CStringBaseIcED2Ev.exit24 ], [ %.pn, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.u

bb.r:                                             ; preds = %bb.d, %_ZN11CStringBaseIwED2Ev.exit
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.b, %bb.r
  %.114 = phi i32 [ 0, %bb.r ], [ %i.e, %bb.b ], [ -2147024809, %bb.d ]
  %i.cd = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #21
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit:         ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i32 %.114

bb.u:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit25, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN11CStringBaseIwED2Ev.exit25 ], [ %i.f, %bb.c ]
  %i.cg = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit26 unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #21
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit26:       ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8NArchive4NTar11CUpdateItemD2Ev(ptr noundef nonnull align 8 dead_on_return(75) dereferenceable(75) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN11CStringBaseIcED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #20
  br label %_ZN11CStringBaseIcED2Ev.exit

_ZN11CStringBaseIcED2Ev.exit:                     ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN11CStringBaseIcED2Ev.exit1, label %bb.c

bb.c:                                             ; preds = %_ZN11CStringBaseIcED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #20
  br label %_ZN11CStringBaseIcED2Ev.exit1

_ZN11CStringBaseIcED2Ev.exit1:                    ; preds = %_ZN11CStringBaseIcED2Ev.exit, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN11CStringBaseIcED2Ev.exit2, label %bb.d

bb.d:                                             ; preds = %_ZN11CStringBaseIcED2Ev.exit1
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #20
  br label %_ZN11CStringBaseIcED2Ev.exit2

_ZN11CStringBaseIcED2Ev.exit2:                    ; preds = %_ZN11CStringBaseIcED2Ev.exit1, %bb.d
  ret void
}

declare noundef i32 @_ZN8NArchive4NTar13UpdateArchiveEP9IInStreamP20ISequentialOutStreamRK13CObjectVectorINS0_7CItemExEERKS5_INS0_11CUpdateItemEEP22IArchiveUpdateCallback(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorIN8NArchive4NTar11CUpdateItemEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NTar11CUpdateItemEE, i64 16), ptr %0, align 8, !tbaa !15
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #21
  unreachable
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #6

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

; Function Attrs: uwtable
define dso_local noundef i32 @_ZThn24_N8NArchive4NTar8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -24
  %i.b = tail call noundef i32 @_ZN8NArchive4NTar8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback(ptr noundef nonnull align 8 dereferenceable(280) %i.a, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  ret i32 %i.b
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

declare noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorIN8NArchive4NTar11CUpdateItemEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NTar11CUpdateItemEE, i64 16), ptr %0, align 8, !tbaa !15
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN13CObjectVectorIN8NArchive4NTar11CUpdateItemEED2Ev.exit unwind label %bb.b, !inline_history !47

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
end_hunk_0
