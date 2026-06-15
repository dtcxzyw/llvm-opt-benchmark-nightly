inline.NumInlined: 32
inline.NumDeleted: 16
begin_hunk_0_@_ZN8NWindows5NFile5NName22NormalizeDirPathPrefixER11CStringBaseIwE:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.e = sext i32 %i.b to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.pn.i = phi ptr [ %i.f, %bb.b ], [ %.0.i, %bb.e ]
  %.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -4 ; 4 uses
  %i.g = load i32, ptr %.0.i, align 4, !tbaa !13
  %i.h = icmp eq i32 %i.g, 47
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = ptrtoint ptr %.0.i to i64
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 2
  %i.m = trunc i64 %i.l to i32
  br label %_ZNK11CStringBaseIwE11ReverseFindEw.exit

bb.e:                                             ; preds = %bb.c
  %i.n = icmp eq ptr %.0.i, %i.d
  br i1 %i.n, label %_ZNK11CStringBaseIwE11ReverseFindEw.exit, label %bb.c, !llvm.loop !15

_ZNK11CStringBaseIwE11ReverseFindEw.exit:         ; preds = %bb.e, %bb.d
  %.1.i = phi i32 [ %i.m, %bb.d ], [ -1, %bb.e ]
  %i.o = add nsw i32 %i.b, -1
  %.not = icmp eq i32 %.1.i, %i.o
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK11CStringBaseIwE11ReverseFindEw.exit
  %i.p = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLEw(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef signext 47) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %_ZNK11CStringBaseIwE11ReverseFindEw.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLEw(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef signext %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !8    ; 8 uses
  %i.e = xor i32 %i.d, -1
  %i.f = add i32 %i.b, %i.e                       ; 3 uses
  %.not.i = icmp slt i32 %i.f, 1
  br i1 %.not.i, label %bb.b, label %_ZN11CStringBaseIwE10GrowLengthEi.exit

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
  %i.m = add nsw i32 %.1.i, %i.b                  ; 2 uses
  %i.n = add nsw i32 %i.m, 1                      ; 3 uses
  %i.o = icmp eq i32 %i.n, %i.b
  br i1 %i.o, label %_ZN11CStringBaseIwE10GrowLengthEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = zext nneg i32 %i.n to i64
  %i.q = icmp slt i32 %i.m, -1
  %i.r = shl nuw nsw i64 %i.p, 2
  %i.s = select i1 %i.q, i64 -1, i64 %i.r
  %i.t = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #5 ; 9 uses
  %i.u = ptrtoaddr ptr %i.t to i64
  %i.v = icmp sgt i32 %i.b, 0
  br i1 %i.v, label %.preheader.i.i, label %bb.d

.preheader.i.i:                                   ; preds = %bb.c
  %i.w = icmp sgt i32 %i.d, 0
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !12 ; 9 uses
  br i1 %i.w, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.pre.i.i4 = ptrtoaddr ptr %.pre.i.i to i64
  %wide.trip.count.i.i = zext nneg i32 %i.d to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.d, 8
  %i.x = sub i64 %i.u, %.pre.i.i4
  %diff.check = icmp ult i64 %i.x, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load = load <4 x i32>, ptr %i.y, align 4, !tbaa !13
  %wide.load5 = load <4 x i32>, ptr %i.z, align 4, !tbaa !13
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <4 x i32> %wide.load, ptr %i.aa, align 4, !tbaa !13
  store <4 x i32> %wide.load5, ptr %i.ab, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !13
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i.prol
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !13
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !21

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.ag = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %._crit_edge.thread.i.i, label %scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.ai = icmp eq ptr %.pre.i.i, null
  br i1 %i.ai, label %bb.d, label %._crit_edge.thread.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !13
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !13
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !13
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !13
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !13
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.1
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !13
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.at = load i32, ptr %i.as, align 4, !tbaa !13
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.2
  store i32 %i.at, ptr %i.au, align 4, !tbaa !13
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %scalar.ph, !llvm.loop !23

._crit_edge.thread.i.i:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #6
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %bb.c
  %i.av = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %i.d, %._crit_edge.i.i ], [ %i.d, %bb.c ] ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !12
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.aw
  store i32 0, ptr %i.ax, align 4, !tbaa !13
  store i32 %i.n, ptr %i.a, align 4, !tbaa !17
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit

_ZN11CStringBaseIwE10GrowLengthEi.exit:           ; preds = %bb.a, %bb.b, %bb.d
  %i.ay = phi i32 [ %i.d, %bb.a ], [ %i.d, %bb.b ], [ %i.av, %bb.d ] ; 2 uses
  %i.az = load ptr, ptr %0, align 8, !tbaa !12    ; 2 uses
  %i.ba = sext i32 %i.ay to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ba
  store i32 %1, ptr %i.bb, align 4, !tbaa !13
  %i.bc = add nsw i32 %i.ay, 1                    ; 2 uses
  store i32 %i.bc, ptr %i.c, align 8, !tbaa !8
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.bd
  store i32 0, ptr %i.be, align 4, !tbaa !13
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NWindows5NFile5NName31SplitNameToPureNameAndExtensionERK11CStringBaseIwERS3_S6_S6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(16) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(16) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.CStringBase, align 8         ; 9 uses
  %5 = alloca %class.CStringBase, align 8         ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZNK11CStringBaseIwE11ReverseFindEw.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.e = sext i32 %i.b to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.pn.i = phi ptr [ %i.f, %bb.b ], [ %.0.i, %bb.d ]
  %.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -4 ; 4 uses
  %i.g = load i32, ptr %.0.i, align 4, !tbaa !13
  %i.h = icmp eq i32 %i.g, 46
  br i1 %i.h, label %_ZNK11CStringBaseIwE11ReverseFindEw.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq ptr %.0.i, %i.d
  br i1 %i.i, label %_ZNK11CStringBaseIwE11ReverseFindEw.exit.thread, label %bb.c, !llvm.loop !15

_ZNK11CStringBaseIwE11ReverseFindEw.exit:         ; preds = %bb.c
  %i.j = ptrtoint ptr %.0.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 2
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %_ZNK11CStringBaseIwE11ReverseFindEw.exit.thread, label %6

_ZNK11CStringBaseIwE11ReverseFindEw.exit.thread:  ; preds = %bb.d, %bb.a, %_ZNK11CStringBaseIwE11ReverseFindEw.exit
  %i.p = icmp eq ptr %0, %1
  br i1 %i.p, label %_ZN11CStringBaseIwEaSERKS0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK11CStringBaseIwE11ReverseFindEw.exit.thread
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i32 0, ptr %i.q, align 8, !tbaa !8
  %i.r = load ptr, ptr %1, align 8, !tbaa !12     ; 3 uses
  store i32 0, ptr %i.r, align 4, !tbaa !13
  %i.s = load i32, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.t = add nsw i32 %i.s, 1                      ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !17   ; 2 uses
  %i.w = icmp eq i32 %i.t, %i.v
  br i1 %i.w, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = zext nneg i32 %i.t to i64
  %i.y = icmp slt i32 %i.s, -1
  %i.z = shl nuw nsw i64 %i.x, 2
  %i.aa = select i1 %i.y, i64 -1, i64 %i.z
  %i.ab = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #5 ; 3 uses
  %i.ac = icmp sgt i32 %i.v, 0
  br i1 %i.ac, label %._crit_edge.thread.i.i, label %bb.g

._crit_edge.thread.i.i:                           ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.r) #6
  %.pre.i = load i32, ptr %i.q, align 8, !tbaa !8
  %i.ad = sext i32 %.pre.i to i64
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.thread.i.i, %bb.f
  %i.ae = phi i64 [ %i.ad, %._crit_edge.thread.i.i ], [ 0, %bb.f ]
  store ptr %i.ab, ptr %1, align 8, !tbaa !12
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ae
  store i32 0, ptr %i.af, align 4, !tbaa !13
  store i32 %i.t, ptr %i.u, align 4, !tbaa !17
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.g, %bb.e
  %i.ag = phi ptr [ %i.r, %bb.e ], [ %i.ab, %bb.g ]
  %i.ah = load ptr, ptr %0, align 8, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.ah, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.ai, %bb.h ] ; 2 uses
  %.0.i.i = phi ptr [ %i.ag, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.ak, %bb.h ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.aj = load i32, ptr %.04.i.i, align 4, !tbaa !13 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.aj, ptr %.0.i.i, align 4, !tbaa !13
  %.not.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i, label %bb.h, !llvm.loop !24

_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i:            ; preds = %bb.h
  %i.al = load i32, ptr %i.a, align 8, !tbaa !8
  store i32 %i.al, ptr %i.q, align 8, !tbaa !8
  br label %_ZN11CStringBaseIwEaSERKS0_.exit

_ZN11CStringBaseIwEaSERKS0_.exit:                 ; preds = %_ZNK11CStringBaseIwE11ReverseFindEw.exit.thread, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.am, align 8, !tbaa !8
  %i.an = load ptr, ptr %2, align 8, !tbaa !12
  store i32 0, ptr %i.an, align 4, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.ao, align 8, !tbaa !8
  %i.ap = load ptr, ptr %3, align 8, !tbaa !12
  store i32 0, ptr %i.ap, align 4, !tbaa !13
  br label %bb.y

6:                                                ; preds = %_ZNK11CStringBaseIwE11ReverseFindEw.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 0, i32 noundef %i.n)
  %7 = icmp eq ptr %4, %1
  br i1 %7, label %._ZN11CStringBaseIwEaSERKS0_.exit24_crit_edge, label %bb.i

._ZN11CStringBaseIwEaSERKS0_.exit24_crit_edge:    ; preds = %6
  %.pre = load ptr, ptr %4, align 8, !tbaa !12
  br label %_ZN11CStringBaseIwEaSERKS0_.exit24

bb.i:                                             ; preds = %6
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i32 0, ptr %i.aq, align 8, !tbaa !8
  %i.ar = load ptr, ptr %1, align 8, !tbaa !12    ; 3 uses
  store i32 0, ptr %i.ar, align 4, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !8  ; 2 uses
  %i.au = add nsw i32 %i.at, 1                    ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !17 ; 2 uses
  %i.ax = icmp eq i32 %i.au, %i.aw
  br i1 %i.ax, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i17, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = zext nneg i32 %i.au to i64
  %i.az = icmp slt i32 %i.at, -1
  %i.ba = shl nuw nsw i64 %i.ay, 2
  %i.bb = select i1 %i.az, i64 -1, i64 %i.ba
  %i.bc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bb) #5
          to label %.noexc unwind label %bb.u     ; 3 uses

.noexc:                                           ; preds = %bb.j
  %i.bd = icmp sgt i32 %i.aw, 0
  br i1 %i.bd, label %._crit_edge.thread.i.i22, label %bb.k

._crit_edge.thread.i.i22:                         ; preds = %.noexc
  call void @_ZdaPv(ptr noundef nonnull %i.ar) #6
  %.pre.i23 = load i32, ptr %i.aq, align 8, !tbaa !8
  %i.be = sext i32 %.pre.i23 to i64
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.thread.i.i22, %.noexc
  %i.bf = phi i64 [ %i.be, %._crit_edge.thread.i.i22 ], [ 0, %.noexc ]
  store ptr %i.bc, ptr %1, align 8, !tbaa !12
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bf
  store i32 0, ptr %i.bg, align 4, !tbaa !13
  store i32 %i.au, ptr %i.av, align 4, !tbaa !17
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i17

_ZN11CStringBaseIwE11SetCapacityEi.exit.i17:      ; preds = %bb.k, %bb.i
  %i.bh = phi ptr [ %i.ar, %bb.i ], [ %i.bc, %bb.k ]
  %i.bi = load ptr, ptr %4, align 8, !tbaa !12    ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i17
  %.04.i.i18 = phi ptr [ %i.bi, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i17 ], [ %i.bj, %bb.l ] ; 2 uses
  %.0.i.i19 = phi ptr [ %i.bh, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i17 ], [ %i.bl, %bb.l ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.04.i.i18, i64 4
  %i.bk = load i32, ptr %.04.i.i18, align 4, !tbaa !13 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i19, i64 4
  store i32 %i.bk, ptr %.0.i.i19, align 4, !tbaa !13
  %.not.i.i20 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i20, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i21, label %bb.l, !llvm.loop !24

_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i21:          ; preds = %bb.l
  %8 = load i32, ptr %i.as, align 8, !tbaa !8
  store i32 %8, ptr %i.aq, align 8, !tbaa !8
  br label %_ZN11CStringBaseIwEaSERKS0_.exit24

_ZN11CStringBaseIwEaSERKS0_.exit24:               ; preds = %._ZN11CStringBaseIwEaSERKS0_.exit24_crit_edge, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i21
  %9 = phi ptr [ %.pre, %._ZN11CStringBaseIwEaSERKS0_.exit24_crit_edge ], [ %i.bi, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i21 ] ; 2 uses
  %i.bm = icmp eq ptr %9, null
  br i1 %i.bm, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit24
  call void @_ZdaPv(ptr noundef nonnull %9) #6
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit24, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 0, ptr %i.bn, align 8, !tbaa !8
  %i.bo = load ptr, ptr %2, align 8, !tbaa !12    ; 3 uses
  store i32 0, ptr %i.bo, align 4, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !17 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 2
  br i1 %i.br, label %_ZN11CStringBaseIwEaSEw.exit, label %bb.n

bb.n:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.bs = call noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #5 ; 3 uses
  %i.bt = icmp sgt i32 %i.bq, 0
  br i1 %i.bt, label %._crit_edge.thread.i.i26, label %bb.o

._crit_edge.thread.i.i26:                         ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.bo) #6
  %.pre.i27 = load i32, ptr %i.bn, align 8, !tbaa !8
  %i.bu = sext i32 %.pre.i27 to i64
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.thread.i.i26, %bb.n
  %i.bv = phi i64 [ %i.bu, %._crit_edge.thread.i.i26 ], [ 0, %bb.n ]
  store ptr %i.bs, ptr %2, align 8, !tbaa !12
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bv
  store i32 0, ptr %i.bw, align 4, !tbaa !13
  store i32 2, ptr %i.bp, align 4, !tbaa !17
  br label %_ZN11CStringBaseIwEaSEw.exit

_ZN11CStringBaseIwEaSEw.exit:                     ; preds = %_ZN11CStringBaseIwED2Ev.exit, %bb.o
  %10 = phi ptr [ %i.bo, %_ZN11CStringBaseIwED2Ev.exit ], [ %i.bs, %bb.o ] ; 2 uses
  store i32 46, ptr %10, align 4, !tbaa !13
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 0, ptr %11, align 4, !tbaa !13
  store i32 1, ptr %i.bn, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %12 = add nuw nsw i32 %i.n, 1                   ; 2 uses
  %13 = load i32, ptr %i.a, align 8, !tbaa !8, !noalias !25
  %14 = sub nsw i32 %13, %12
  call void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %12, i32 noundef %14)
  %15 = icmp eq ptr %5, %3
  br i1 %15, label %_ZN11CStringBaseIwEaSEw.exit._ZN11CStringBaseIwEaSERKS0_.exit36_crit_edge, label %bb.p

_ZN11CStringBaseIwEaSEw.exit._ZN11CStringBaseIwEaSERKS0_.exit36_crit_edge: ; preds = %_ZN11CStringBaseIwEaSEw.exit
  %.pre43 = load ptr, ptr %5, align 8, !tbaa !12
  br label %_ZN11CStringBaseIwEaSERKS0_.exit36

bb.p:                                             ; preds = %_ZN11CStringBaseIwEaSEw.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.bx, align 8, !tbaa !8
  %i.by = load ptr, ptr %3, align 8, !tbaa !12    ; 3 uses
  store i32 0, ptr %i.by, align 4, !tbaa !13
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !8  ; 2 uses
  %i.cb = add nsw i32 %i.ca, 1                    ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !17 ; 2 uses
  %i.ce = icmp eq i32 %i.cb, %i.cd
  br i1 %i.ce, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i28, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = zext nneg i32 %i.cb to i64
  %i.cg = icmp slt i32 %i.ca, -1
  %i.ch = shl nuw nsw i64 %i.cf, 2
  %i.ci = select i1 %i.cg, i64 -1, i64 %i.ch
  %i.cj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ci) #5
          to label %.noexc35 unwind label %bb.w   ; 3 uses

.noexc35:                                         ; preds = %bb.q
  %i.ck = icmp sgt i32 %i.cd, 0
  br i1 %i.ck, label %._crit_edge.thread.i.i33, label %bb.r

._crit_edge.thread.i.i33:                         ; preds = %.noexc35
  call void @_ZdaPv(ptr noundef nonnull %i.by) #6
  %.pre.i34 = load i32, ptr %i.bx, align 8, !tbaa !8
  %i.cl = sext i32 %.pre.i34 to i64
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread.i.i33, %.noexc35
  %i.cm = phi i64 [ %i.cl, %._crit_edge.thread.i.i33 ], [ 0, %.noexc35 ]
  store ptr %i.cj, ptr %3, align 8, !tbaa !12
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.cm
  store i32 0, ptr %i.cn, align 4, !tbaa !13
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !17
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i28

_ZN11CStringBaseIwE11SetCapacityEi.exit.i28:      ; preds = %bb.r, %bb.p
  %i.co = phi ptr [ %i.by, %bb.p ], [ %i.cj, %bb.r ]
  %i.cp = load ptr, ptr %5, align 8, !tbaa !12    ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i28
  %.04.i.i29 = phi ptr [ %i.cp, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i28 ], [ %i.cq, %bb.s ] ; 2 uses
  %.0.i.i30 = phi ptr [ %i.co, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i28 ], [ %i.cs, %bb.s ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.04.i.i29, i64 4
  %i.cr = load i32, ptr %.04.i.i29, align 4, !tbaa !13 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i.i30, i64 4
  store i32 %i.cr, ptr %.0.i.i30, align 4, !tbaa !13
  %.not.i.i31 = icmp eq i32 %i.cr, 0
  br i1 %.not.i.i31, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i32, label %bb.s, !llvm.loop !24

_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i32:          ; preds = %bb.s
  %16 = load i32, ptr %i.bz, align 8, !tbaa !8
  store i32 %16, ptr %i.bx, align 8, !tbaa !8
  br label %_ZN11CStringBaseIwEaSERKS0_.exit36

_ZN11CStringBaseIwEaSERKS0_.exit36:               ; preds = %_ZN11CStringBaseIwEaSEw.exit._ZN11CStringBaseIwEaSERKS0_.exit36_crit_edge, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i32
  %17 = phi ptr [ %.pre43, %_ZN11CStringBaseIwEaSEw.exit._ZN11CStringBaseIwEaSERKS0_.exit36_crit_edge ], [ %i.cp, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i32 ] ; 2 uses
  %i.ct = icmp eq ptr %17, null
  br i1 %i.ct, label %_ZN11CStringBaseIwED2Ev.exit37, label %bb.t

bb.t:                                             ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit36
  call void @_ZdaPv(ptr noundef nonnull %17) #6
  br label %_ZN11CStringBaseIwED2Ev.exit37

_ZN11CStringBaseIwED2Ev.exit37:                   ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit36, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %bb.y

bb.u:                                             ; preds = %bb.j
  %i.cu = landingpad { ptr, i32 }
          cleanup
  %i.cv = load ptr, ptr %4, align 8, !tbaa !12    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %_ZN11CStringBaseIwED2Ev.exit38, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.cv) #6
  br label %_ZN11CStringBaseIwED2Ev.exit38

_ZN11CStringBaseIwED2Ev.exit38:                   ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.z

bb.w:                                             ; preds = %bb.q
  %i.cx = landingpad { ptr, i32 }
          cleanup
  %i.cy = load ptr, ptr %5, align 8, !tbaa !12    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %_ZN11CStringBaseIwED2Ev.exit39, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.cy) #6
  br label %_ZN11CStringBaseIwED2Ev.exit39

_ZN11CStringBaseIwED2Ev.exit39:                   ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %bb.z

bb.y:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit37, %_ZN11CStringBaseIwEaSERKS0_.exit
  ret void

bb.z:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit39, %_ZN11CStringBaseIwED2Ev.exit38
  %.pn = phi { ptr, i32 } [ %i.cx, %_ZN11CStringBaseIwED2Ev.exit39 ], [ %i.cu, %_ZN11CStringBaseIwED2Ev.exit38 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind noalias writable sret(%class.CStringBase) align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i32 %3, %2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !8    ; 6 uses
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
  %i.o = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #5 ; 3 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !12
  store i32 0, ptr %i.o, align 4, !tbaa !13
  store i32 %i.h, ptr %i.j, align 4, !tbaa !17
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ null, %bb.b ], [ %i.o, %bb.c ]
  %i.q = load ptr, ptr %1, align 8, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.q, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.r, %bb.d ] ; 2 uses
  %.0.i.i = phi ptr [ %i.p, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.t, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.s = load i32, ptr %.04.i.i, align 4, !tbaa !13 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.s, ptr %.0.i.i, align 4, !tbaa !13
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2ERKS0_.exit, label %bb.d, !llvm.loop !24

bb.e:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.v, align 8
  %i.w = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #5 ; 5 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !12
  store i32 0, ptr %i.w, align 4, !tbaa !13
  store i32 4, ptr %i.u, align 4, !tbaa !17
  %i.x = add nsw i32 %spec.select, 1              ; 3 uses
  %i.y = icmp eq i32 %i.x, 4
  br i1 %i.y, label %.lr.ph, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = icmp slt i32 %spec.select, -1
  %i.ab = shl nuw nsw i64 %i.z, 2
  %i.ac = select i1 %i.aa, i64 -1, i64 %i.ab
  %i.ad = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ac) #5
          to label %_ZN11CStringBaseIwE11SetCapacityEi.exit unwind label %_ZN11CStringBaseIwED2Ev.exit ; 4 uses

_ZN11CStringBaseIwE11SetCapacityEi.exit:          ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.w) #6
  store ptr %i.ad, ptr %0, align 8, !tbaa !12
  store i32 0, ptr %i.ad, align 4, !tbaa !13
  store i32 %i.x, ptr %i.u, align 4, !tbaa !17
  %i.ae = icmp sgt i32 %spec.select, 0
  br i1 %i.ae, label %.lr.ph, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge

_ZN11CStringBaseIwE11SetCapacityEi.exit.._crit_edge_crit_edge: ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit
  %.pre = sext i32 %spec.select to i64
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %_ZN11CStringBaseIwE11SetCapacityEi.exit
  %i.af = phi ptr [ %i.ad, %_ZN11CStringBaseIwE11SetCapacityEi.exit ], [ %i.w, %bb.e ] ; 5 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !12    ; 2 uses
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
  %wide.load = load <4 x i32>, ptr %i.ao, align 4, !tbaa !13
  %wide.load28 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !13
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <4 x i32> %wide.load, ptr %i.aq, align 4, !tbaa !13
  store <4 x i32> %wide.load28, ptr %i.ar, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !28

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
  store i32 0, ptr %i.au, align 4, !tbaa !13
  br label %_ZN11CStringBaseIwEC2ERKS0_.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.w) #6
  resume { ptr, i32 } %i.av

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.aw = load i32, ptr %gep, align 4, !tbaa !13
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !13
end_hunk_0
