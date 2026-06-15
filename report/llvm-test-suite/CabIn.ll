inline.NumInlined: 133
inline.NumDeleted: 51
begin_hunk_0_@_ZN8NArchive4NCab10CInArchive12SafeReadNameEv:bb.a
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN11CStringBaseIcED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #11
  br label %_ZN11CStringBaseIcED2Ev.exit

_ZN11CStringBaseIcED2Ev.exit:                     ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %lpad.phi

bb.g:                                             ; preds = %bb.d
  %i.n = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIcEpLEc(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef signext %i.k)
          to label %bb.b unwind label %.loopexit, !llvm.loop !24 ; 0 uses

bb.h:                                             ; preds = %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIcEpLEc(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef signext %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26   ; 9 uses
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
  %i.q = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #10 ; 10 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = icmp sgt i32 %i.b, 0
  br i1 %i.s, label %.preheader.i.i, label %bb.d

.preheader.i.i:                                   ; preds = %bb.c
  %i.t = icmp sgt i32 %i.d, 0
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !21 ; 10 uses
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
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

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
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !31

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
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !32

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
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph, !llvm.loop !34

._crit_edge.thread.i.i:                           ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #11
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !26
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %bb.c
  %i.av = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %i.d, %._crit_edge.i.i ], [ %i.d, %bb.c ] ; 2 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !21
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.q, i64 %i.aw
  store i8 0, ptr %i.ax, align 1, !tbaa !20
  store i32 %i.n, ptr %i.a, align 4, !tbaa !23
  br label %_ZN11CStringBaseIcE10GrowLengthEi.exit

_ZN11CStringBaseIcE10GrowLengthEi.exit:           ; preds = %bb.a, %bb.b, %bb.d
  %i.ay = phi i32 [ %i.d, %bb.a ], [ %i.d, %bb.b ], [ %i.av, %bb.d ]
  %i.az = load ptr, ptr %0, align 8, !tbaa !21
  %i.ba = sext i32 %i.ay to i64
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 %i.ba
  store i8 %1, ptr %i.bb, align 1, !tbaa !20
  %i.bc = load ptr, ptr %0, align 8, !tbaa !21
  %i.bd = load i32, ptr %i.c, align 8, !tbaa !26
  %i.be = add nsw i32 %i.bd, 1                    ; 2 uses
  store i32 %i.be, ptr %i.c, align 8, !tbaa !26
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds i8, ptr %i.bc, i64 %i.bf
  store i8 0, ptr %i.bg, align 1, !tbaa !20
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NArchive4NCab10CInArchive16ReadOtherArchiveERNS0_13COtherArchiveE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((8, 12)) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.CStringBase, align 8         ; 8 uses
  %3 = alloca %class.CStringBase, align 8         ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @_ZN8NArchive4NCab10CInArchive12SafeReadNameEv(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i32 0, ptr %i.a, align 8, !tbaa !26
  %i.b = load ptr, ptr %1, align 8, !tbaa !21
  store i8 0, ptr %i.b, align 1, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26
  %i.e = add nsw i32 %i.d, 1                      ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !23   ; 2 uses
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i, label %bb.b

._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i: ; preds = %bb.a
  %.pre8.i = load ptr, ptr %1, align 8, !tbaa !21
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = sext i32 %i.e to i64
  %i.j = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #10
          to label %.noexc unwind label %bb.k     ; 11 uses

.noexc:                                           ; preds = %bb.b
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = icmp sgt i32 %i.g, 0
  %.pre7.i = load i32, ptr %i.a, align 8, !tbaa !26 ; 6 uses
  br i1 %i.l, label %.preheader.i.i, label %bb.c

.preheader.i.i:                                   ; preds = %.noexc
  %i.m = icmp sgt i32 %.pre7.i, 0
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !21 ; 10 uses
  br i1 %i.m, label %iter.check, label %._crit_edge.i.i

iter.check:                                       ; preds = %.preheader.i.i
  %.pre.i.i40 = ptrtoaddr ptr %.pre.i.i to i64
  %wide.trip.count.i.i = zext nneg i32 %.pre7.i to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %.pre7.i, 4
  %i.n = sub i64 %i.k, %.pre.i.i40
  %diff.check = icmp ult i64 %i.n, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check41 = icmp ult i32 %.pre7.i, 32
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <16 x i8>, ptr %i.o, align 1, !tbaa !20
  %wide.load42 = load <16 x i8>, ptr %i.p, align 1, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <16 x i8> %wide.load, ptr %i.q, align 1, !tbaa !20
  store <16 x i8> %wide.load42, ptr %i.r, align 1, !tbaa !20
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec44 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index45 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next47, %vec.epilog.vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index45
  %wide.load46 = load <4 x i8>, ptr %i.t, align 1, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %index45
  store <4 x i8> %wide.load46, ptr %i.u, align 1, !tbaa !20
  %index.next47 = add nuw i64 %index45, 4         ; 2 uses
  %i.v = icmp eq i64 %index.next47, %n.vec44
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !36

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n48 = icmp eq i64 %n.vec44, %wide.trip.count.i.i
  br i1 %cmp.n48, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec44, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.x = load i8, ptr %i.w, align 1, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.i.i.prol
  store i8 %i.x, ptr %i.y, align 1, !tbaa !20
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !37

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.z = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.ab = icmp eq ptr %.pre.i.i, null
  br i1 %i.ab, label %bb.c, label %._crit_edge.thread.i.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.i.i
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !20
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.next.i.i
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !20
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.next.i.i.1
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !20
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.next.i.i.2
  store i8 %i.am, ptr %i.an, align 1, !tbaa !20
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph, !llvm.loop !38

._crit_edge.thread.i.i:                           ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #11
  %.pre.i = load i32, ptr %i.a, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %.noexc
  %i.ao = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %.pre7.i, %._crit_edge.i.i ], [ %.pre7.i, %.noexc ]
  store ptr %i.j, ptr %1, align 8, !tbaa !21
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds i8, ptr %i.j, i64 %i.ap
  store i8 0, ptr %i.aq, align 1, !tbaa !20
  store i32 %i.e, ptr %i.f, align 4, !tbaa !23
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i

_ZN11CStringBaseIcE11SetCapacityEi.exit.i:        ; preds = %bb.c, %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i
  %i.ar = phi ptr [ %.pre8.i, %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i ], [ %i.j, %bb.c ]
  %i.as = load ptr, ptr %2, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.as, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %i.at, %bb.d ] ; 2 uses
  %.0.i.i = phi ptr [ %i.ar, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %i.av, %bb.d ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 1
  %i.au = load i8, ptr %.04.i.i, align 1, !tbaa !20 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  store i8 %i.au, ptr %.0.i.i, align 1, !tbaa !20
  %.not.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIcEaSERKS0_.exit, label %bb.d, !llvm.loop !39

_ZN11CStringBaseIcEaSERKS0_.exit:                 ; preds = %bb.d
  %4 = load i32, ptr %i.c, align 8, !tbaa !26
  store i32 %4, ptr %i.a, align 8, !tbaa !26
  %i.aw = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN11CStringBaseIcEaSERKS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.aw) #11
  br label %bb.f

bb.f:                                             ; preds = %_ZN11CStringBaseIcEaSERKS0_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @_ZN8NArchive4NCab10CInArchive12SafeReadNameEv(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %0)
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  store i32 0, ptr %i.ay, align 8, !tbaa !26
  %i.az = load ptr, ptr %5, align 8, !tbaa !21
  store i8 0, ptr %i.az, align 1, !tbaa !20
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !26
  %i.bc = add nsw i32 %i.bb, 1                    ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !23 ; 2 uses
  %i.bf = icmp eq i32 %i.bc, %i.be
  br i1 %i.bf, label %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i22, label %bb.g

._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i22: ; preds = %bb.f
  %.pre8.i23 = load ptr, ptr %5, align 8, !tbaa !21
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i7

bb.g:                                             ; preds = %bb.f
  %i.bg = sext i32 %i.bc to i64
  %i.bh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bg) #10
          to label %.noexc24 unwind label %bb.m   ; 11 uses

.noexc24:                                         ; preds = %bb.g
  %i.bi = ptrtoaddr ptr %i.bh to i64
  %i.bj = icmp sgt i32 %i.be, 0
  %.pre7.i6 = load i32, ptr %i.ay, align 8, !tbaa !26 ; 6 uses
  br i1 %i.bj, label %.preheader.i.i12, label %bb.h

.preheader.i.i12:                                 ; preds = %.noexc24
  %i.bk = icmp sgt i32 %.pre7.i6, 0
  %.pre.i.i13 = load ptr, ptr %5, align 8, !tbaa !21 ; 10 uses
  br i1 %i.bk, label %iter.check66, label %._crit_edge.i.i14

iter.check66:                                     ; preds = %.preheader.i.i12
  %.pre.i.i1350 = ptrtoaddr ptr %.pre.i.i13 to i64
  %wide.trip.count.i.i18 = zext nneg i32 %.pre7.i6 to i64 ; 8 uses
  %min.iters.check52 = icmp ult i32 %.pre7.i6, 4
  %i.bl = sub i64 %i.bi, %.pre.i.i1350
  %diff.check51 = icmp ult i64 %i.bl, 32
  %or.cond80 = select i1 %min.iters.check52, i1 true, i1 %diff.check51
  br i1 %or.cond80, label %vec.epilog.scalar.ph67.preheader, label %vector.main.loop.iter.check53

vector.main.loop.iter.check53:                    ; preds = %iter.check66
  %min.iters.check54 = icmp ult i32 %.pre7.i6, 32
  br i1 %min.iters.check54, label %vec.epilog.ph70, label %vector.ph55

vector.ph55:                                      ; preds = %vector.main.loop.iter.check53
  %n.mod.vf56 = and i64 %wide.trip.count.i.i18, 28
  %n.vec57 = and i64 %wide.trip.count.i.i18, 2147483616 ; 4 uses
  br label %vector.body58

vector.body58:                                    ; preds = %vector.body58, %vector.ph55
  %index59 = phi i64 [ 0, %vector.ph55 ], [ %index.next62, %vector.body58 ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.pre.i.i13, i64 %index59 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load60 = load <16 x i8>, ptr %i.bm, align 1, !tbaa !20
  %wide.load61 = load <16 x i8>, ptr %i.bn, align 1, !tbaa !20
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 %index59 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <16 x i8> %wide.load60, ptr %i.bo, align 1, !tbaa !20
  store <16 x i8> %wide.load61, ptr %i.bp, align 1, !tbaa !20
  %index.next62 = add nuw i64 %index59, 32        ; 2 uses
  %i.bq = icmp eq i64 %index.next62, %n.vec57
  br i1 %i.bq, label %middle.block63, label %vector.body58, !llvm.loop !40

middle.block63:                                   ; preds = %vector.body58
  %cmp.n64 = icmp eq i64 %n.vec57, %wide.trip.count.i.i18
  br i1 %cmp.n64, label %._crit_edge.thread.i.i15, label %vec.epilog.iter.check68

vec.epilog.iter.check68:                          ; preds = %middle.block63
  %min.epilog.iters.check69 = icmp eq i64 %n.mod.vf56, 0
  br i1 %min.epilog.iters.check69, label %vec.epilog.scalar.ph67.preheader, label %vec.epilog.ph70, !prof !30

vec.epilog.ph70:                                  ; preds = %vector.main.loop.iter.check53, %vec.epilog.iter.check68
  %vec.epilog.resume.val65 = phi i64 [ %n.vec57, %vec.epilog.iter.check68 ], [ 0, %vector.main.loop.iter.check53 ]
  %n.vec72 = and i64 %wide.trip.count.i.i18, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body73

vec.epilog.vector.body73:                         ; preds = %vec.epilog.vector.body73, %vec.epilog.ph70
  %index74 = phi i64 [ %vec.epilog.resume.val65, %vec.epilog.ph70 ], [ %index.next76, %vec.epilog.vector.body73 ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.pre.i.i13, i64 %index74
  %wide.load75 = load <4 x i8>, ptr %i.br, align 1, !tbaa !20
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 %index74
  store <4 x i8> %wide.load75, ptr %i.bs, align 1, !tbaa !20
  %index.next76 = add nuw i64 %index74, 4         ; 2 uses
  %i.bt = icmp eq i64 %index.next76, %n.vec72
  br i1 %i.bt, label %vec.epilog.middle.block77, label %vec.epilog.vector.body73, !llvm.loop !41

vec.epilog.middle.block77:                        ; preds = %vec.epilog.vector.body73
  %cmp.n78 = icmp eq i64 %n.vec72, %wide.trip.count.i.i18
  br i1 %cmp.n78, label %._crit_edge.thread.i.i15, label %vec.epilog.scalar.ph67.preheader

vec.epilog.scalar.ph67.preheader:                 ; preds = %iter.check66, %vec.epilog.iter.check68, %vec.epilog.middle.block77
  %indvars.iv.i.i19.ph = phi i64 [ 0, %iter.check66 ], [ %n.vec57, %vec.epilog.iter.check68 ], [ %n.vec72, %vec.epilog.middle.block77 ] ; 3 uses
  %xtraiter81 = and i64 %wide.trip.count.i.i18, 3 ; 2 uses
  %lcmp.mod82.not = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod82.not, label %vec.epilog.scalar.ph67.prol.loopexit, label %vec.epilog.scalar.ph67.prol

vec.epilog.scalar.ph67.prol:                      ; preds = %vec.epilog.scalar.ph67.preheader, %vec.epilog.scalar.ph67.prol
  %indvars.iv.i.i19.prol = phi i64 [ %indvars.iv.next.i.i20.prol, %vec.epilog.scalar.ph67.prol ], [ %indvars.iv.i.i19.ph, %vec.epilog.scalar.ph67.preheader ] ; 3 uses
  %prol.iter83 = phi i64 [ %prol.iter83.next, %vec.epilog.scalar.ph67.prol ], [ 0, %vec.epilog.scalar.ph67.preheader ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre.i.i13, i64 %indvars.iv.i.i19.prol
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !20
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv.i.i19.prol
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !20
  %indvars.iv.next.i.i20.prol = add nuw nsw i64 %indvars.iv.i.i19.prol, 1 ; 2 uses
  %prol.iter83.next = add i64 %prol.iter83, 1     ; 2 uses
  %prol.iter83.cmp.not = icmp eq i64 %prol.iter83.next, %xtraiter81
  br i1 %prol.iter83.cmp.not, label %vec.epilog.scalar.ph67.prol.loopexit, label %vec.epilog.scalar.ph67.prol, !llvm.loop !42

vec.epilog.scalar.ph67.prol.loopexit:             ; preds = %vec.epilog.scalar.ph67.prol, %vec.epilog.scalar.ph67.preheader
  %indvars.iv.i.i19.unr = phi i64 [ %indvars.iv.i.i19.ph, %vec.epilog.scalar.ph67.preheader ], [ %indvars.iv.next.i.i20.prol, %vec.epilog.scalar.ph67.prol ]
  %i.bx = sub nsw i64 %indvars.iv.i.i19.ph, %wide.trip.count.i.i18
  %i.by = icmp ugt i64 %i.bx, -4
  br i1 %i.by, label %._crit_edge.thread.i.i15, label %vec.epilog.scalar.ph67

._crit_edge.i.i14:                                ; preds = %.preheader.i.i12
  %i.bz = icmp eq ptr %.pre.i.i13, null
  br i1 %i.bz, label %bb.h, label %._crit_edge.thread.i.i15

vec.epilog.scalar.ph67:                           ; preds = %vec.epilog.scalar.ph67.prol.loopexit, %vec.epilog.scalar.ph67
  %indvars.iv.i.i19 = phi i64 [ %indvars.iv.next.i.i20.3, %vec.epilog.scalar.ph67 ], [ %indvars.iv.i.i19.unr, %vec.epilog.scalar.ph67.prol.loopexit ] ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre.i.i13, i64 %indvars.iv.i.i19
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !20
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv.i.i19
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !20
  %indvars.iv.next.i.i20 = add nuw nsw i64 %indvars.iv.i.i19, 1 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.pre.i.i13, i64 %indvars.iv.next.i.i20
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !20
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv.next.i.i20
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !20
  %indvars.iv.next.i.i20.1 = add nuw nsw i64 %indvars.iv.i.i19, 2 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.pre.i.i13, i64 %indvars.iv.next.i.i20.1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !20
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv.next.i.i20.1
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !20
  %indvars.iv.next.i.i20.2 = add nuw nsw i64 %indvars.iv.i.i19, 3 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.pre.i.i13, i64 %indvars.iv.next.i.i20.2
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !20
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv.next.i.i20.2
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !20
  %indvars.iv.next.i.i20.3 = add nuw nsw i64 %indvars.iv.i.i19, 4 ; 2 uses
  %exitcond.not.i.i21.3 = icmp eq i64 %indvars.iv.next.i.i20.3, %wide.trip.count.i.i18
  br i1 %exitcond.not.i.i21.3, label %._crit_edge.thread.i.i15, label %vec.epilog.scalar.ph67, !llvm.loop !43

._crit_edge.thread.i.i15:                         ; preds = %vec.epilog.scalar.ph67.prol.loopexit, %vec.epilog.scalar.ph67, %middle.block63, %vec.epilog.middle.block77, %._crit_edge.i.i14
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i13) #11
  %.pre.i16 = load i32, ptr %i.ay, align 8, !tbaa !26
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.thread.i.i15, %._crit_edge.i.i14, %.noexc24
  %i.cm = phi i32 [ %.pre.i16, %._crit_edge.thread.i.i15 ], [ %.pre7.i6, %._crit_edge.i.i14 ], [ %.pre7.i6, %.noexc24 ]
  store ptr %i.bh, ptr %5, align 8, !tbaa !21
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr %i.bh, i64 %i.cn
  store i8 0, ptr %i.co, align 1, !tbaa !20
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !23
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i7

_ZN11CStringBaseIcE11SetCapacityEi.exit.i7:       ; preds = %bb.h, %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i22
  %i.cp = phi ptr [ %.pre8.i23, %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i22 ], [ %i.bh, %bb.h ]
  %i.cq = load ptr, ptr %3, align 8, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i7
  %.04.i.i8 = phi ptr [ %i.cq, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i7 ], [ %i.cr, %bb.i ] ; 2 uses
  %.0.i.i9 = phi ptr [ %i.cp, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i7 ], [ %i.ct, %bb.i ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.04.i.i8, i64 1
  %i.cs = load i8, ptr %.04.i.i8, align 1, !tbaa !20 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i.i9, i64 1
  store i8 %i.cs, ptr %.0.i.i9, align 1, !tbaa !20
  %.not.i.i10 = icmp eq i8 %i.cs, 0
  br i1 %.not.i.i10, label %_ZN11CStringBaseIcEaSERKS0_.exit25, label %bb.i, !llvm.loop !39

_ZN11CStringBaseIcEaSERKS0_.exit25:               ; preds = %bb.i
  %6 = load i32, ptr %i.ba, align 8, !tbaa !26
  store i32 %6, ptr %i.ay, align 8, !tbaa !26
  %i.cu = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %_ZN11CStringBaseIcED2Ev.exit26.a, label %bb.j

bb.j:                                             ; preds = %_ZN11CStringBaseIcEaSERKS0_.exit25
  call void @_ZdaPv(ptr noundef nonnull %i.cu) #11
  br label %_ZN11CStringBaseIcED2Ev.exit26.a

_ZN11CStringBaseIcED2Ev.exit26.a:                 ; preds = %_ZN11CStringBaseIcEaSERKS0_.exit25, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret void

bb.k:                                             ; preds = %bb.b
  %i.cw = landingpad { ptr, i32 }
          cleanup
  %i.cx = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_ZN11CStringBaseIcED2Ev.exit27.a, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.cx) #11
  br label %_ZN11CStringBaseIcED2Ev.exit27.a

_ZN11CStringBaseIcED2Ev.exit27.a:                 ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.o

bb.m:                                             ; preds = %bb.g
  %i.cz = landingpad { ptr, i32 }
          cleanup
  %i.da = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %_ZN11CStringBaseIcED2Ev.exit28, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.da) #11
  br label %_ZN11CStringBaseIcED2Ev.exit28

_ZN11CStringBaseIcED2Ev.exit28:                   ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.o

bb.o:                                             ; preds = %_ZN11CStringBaseIcED2Ev.exit28, %_ZN11CStringBaseIcED2Ev.exit27.a
  %.pn = phi { ptr, i32 } [ %i.cz, %_ZN11CStringBaseIcED2Ev.exit28 ], [ %i.cw, %_ZN11CStringBaseIcED2Ev.exit27.a ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIcEaSERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !26
  %i.c = load ptr, ptr %0, align 8, !tbaa !21
  store i8 0, ptr %i.c, align 1, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !26
  %i.f = add nsw i32 %i.e, 1                      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !23   ; 2 uses
  %i.i = icmp eq i32 %i.f, %i.h
  br i1 %i.i, label %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge, label %bb.c

._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge: ; preds = %bb.b
  %.pre8 = load ptr, ptr %0, align 8, !tbaa !21
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit

bb.c:                                             ; preds = %bb.b
  %i.j = sext i32 %i.f to i64
  %i.k = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #10 ; 11 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = icmp sgt i32 %i.h, 0
  %.pre7 = load i32, ptr %i.b, align 8, !tbaa !26 ; 6 uses
  br i1 %i.m, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %bb.c
  %i.n = icmp sgt i32 %.pre7, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !21  ; 10 uses
  br i1 %i.n, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %.preheader.i
  %.pre.i12 = ptrtoaddr ptr %.pre.i to i64
  %wide.trip.count.i = zext nneg i32 %.pre7 to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %.pre7, 4
  %i.o = sub i64 %i.l, %.pre.i12
  %diff.check = icmp ult i64 %i.o, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp ult i32 %.pre7, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count.i, 28
  %n.vec = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <16 x i8>, ptr %i.p, align 1, !tbaa !20
  %wide.load14 = load <16 x i8>, ptr %i.q, align 1, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <16 x i8> %wide.load, ptr %i.r, align 1, !tbaa !20
  store <16 x i8> %wide.load14, ptr %i.s, align 1, !tbaa !20
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.thread.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %index17
  %wide.load18 = load <4 x i8>, ptr %i.u, align 1, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 %index17
  store <4 x i8> %wide.load18, ptr %i.v, align 1, !tbaa !20
  %index.next19 = add nuw i64 %index17, 4         ; 2 uses
  %i.w = icmp eq i64 %index.next19, %n.vec16
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !45

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %n.vec16, %wide.trip.count.i
  br i1 %cmp.n20, label %._crit_edge.thread.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec16, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.x = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %indvars.iv.i.prol
  %i.y = load i8, ptr %i.x, align 1, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.i.prol
  store i8 %i.y, ptr %i.z, align 1, !tbaa !20
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !46

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.aa = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %._crit_edge.thread.i, label %vec.epilog.scalar.ph

._crit_edge.i:                                    ; preds = %.preheader.i
  %i.ac = icmp eq ptr %.pre.i, null
  br i1 %i.ac, label %bb.d, label %._crit_edge.thread.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %indvars.iv.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !20
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.i
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !20
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %indvars.iv.next.i
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next.i
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !20
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %indvars.iv.next.i.1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next.i.1
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !20
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %indvars.iv.next.i.2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next.i.2
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !20
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.thread.i, label %vec.epilog.scalar.ph, !llvm.loop !47

._crit_edge.thread.i:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i) #11
  %.pre = load i32, ptr %i.b, align 8, !tbaa !26
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i, %._crit_edge.i, %bb.c
  %i.ap = phi i32 [ %.pre, %._crit_edge.thread.i ], [ %.pre7, %._crit_edge.i ], [ %.pre7, %bb.c ]
  store ptr %i.k, ptr %0, align 8, !tbaa !21
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.k, i64 %i.aq
  store i8 0, ptr %i.ar, align 1, !tbaa !20
  store i32 %i.f, ptr %i.g, align 4, !tbaa !23
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit

_ZN11CStringBaseIcE11SetCapacityEi.exit:          ; preds = %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge, %bb.d
  %i.as = phi ptr [ %.pre8, %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge ], [ %i.k, %bb.d ]
  %i.at = load ptr, ptr %1, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIcE11SetCapacityEi.exit
  %.04.i = phi ptr [ %i.at, %_ZN11CStringBaseIcE11SetCapacityEi.exit ], [ %i.au, %bb.e ] ; 2 uses
  %.0.i = phi ptr [ %i.as, %_ZN11CStringBaseIcE11SetCapacityEi.exit ], [ %i.aw, %bb.e ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.04.i, i64 1
  %i.av = load i8, ptr %.04.i, align 1, !tbaa !20 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 %i.av, ptr %.0.i, align 1, !tbaa !20
  %.not.i = icmp eq i8 %i.av, 0
  br i1 %.not.i, label %_Z12MyStringCopyIcEPT_S1_PKS0_.exit, label %bb.e, !llvm.loop !39

_Z12MyStringCopyIcEPT_S1_PKS0_.exit:              ; preds = %bb.e
  %i.ax = load i32, ptr %i.d, align 8, !tbaa !26
  store i32 %i.ax, ptr %i.b, align 8, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_Z12MyStringCopyIcEPT_S1_PKS0_.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NArchive4NCab10CInArchive4SkipEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not1 = icmp eq i32 %1, 0
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
end_hunk_0
