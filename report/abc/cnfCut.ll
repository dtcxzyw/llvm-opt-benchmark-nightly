Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cnfCut?download=true
inline.NumInlined: 37
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Cnf_CutRef:bb.a
  %i.r = load i8, ptr %1, align 8, !tbaa !22
  %i.s = sext i8 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %.lr.ph, label %.critedge, !llvm.loop !1

.critedge:                                        ; preds = %Aig_ManObj.exit, %bb.b, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Cnf_CutUpdateRefs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i8, ptr %1, align 8, !tbaa !22
  %i.c = icmp sgt i8 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %Cnf_CutDeref.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !33
  %i.e = getelementptr i8, ptr %i.d, i64 32
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !42 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %Cnf_CutDeref.exit, label %Aig_ManObj.exit.i

Aig_ManObj.exit.i:                                ; preds = %.lr.ph.i
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.g = load i32, ptr %i.f, align 4, !tbaa !30
  %i.h = getelementptr i8, ptr %.val.i, i64 8
  %.val.i.i = load ptr, ptr %i.h, align 8, !tbaa !44
  %i.i = sext i32 %i.g to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %.val.i.i, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !45   ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %Cnf_CutDeref.exit, label %bb.b

bb.b:                                             ; preds = %Aig_ManObj.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = add i64 %i.m, 4294967232
  %i.o = and i64 %i.n, 4294967232
  %i.p = and i64 %i.m, -4294967233
  %i.q = or disjoint i64 %i.o, %i.p
  store i64 %i.q, ptr %i.l, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.r = load i8, ptr %1, align 8, !tbaa !22
  %i.s = sext i8 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv.next.i, %i.s
  br i1 %i.t, label %.lr.ph.i, label %Cnf_CutDeref.exit, !llvm.loop !0

Cnf_CutDeref.exit:                                ; preds = %.lr.ph.i, %Aig_ManObj.exit.i, %bb.b, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.v = load i8, ptr %2, align 8, !tbaa !22
  %i.w = icmp sgt i8 %i.v, 0
  br i1 %i.w, label %.lr.ph.i6, label %Cnf_CutDeref.exit14

.lr.ph.i6:                                        ; preds = %Cnf_CutDeref.exit, %bb.c
  %indvars.iv.i7 = phi i64 [ %indvars.iv.next.i13, %bb.c ], [ 0, %Cnf_CutDeref.exit ] ; 2 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !33
  %i.y = getelementptr i8, ptr %i.x, i64 32
  %.val.i8 = load ptr, ptr %i.y, align 8, !tbaa !42 ; 2 uses
  %.not.i.i9 = icmp eq ptr %.val.i8, null
  br i1 %.not.i.i9, label %Cnf_CutDeref.exit14, label %Aig_ManObj.exit.i10

Aig_ManObj.exit.i10:                              ; preds = %.lr.ph.i6
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i7
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !30
  %i.ab = getelementptr i8, ptr %.val.i8, i64 8
  %.val.i.i11 = load ptr, ptr %i.ab, align 8, !tbaa !44
  %i.ac = sext i32 %i.aa to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %.val.i.i11, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !45 ; 2 uses
  %.not.i12 = icmp eq ptr %i.ae, null
  br i1 %.not.i12, label %Cnf_CutDeref.exit14, label %bb.c

bb.c:                                             ; preds = %Aig_ManObj.exit.i10
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = add i64 %i.ag, 4294967232
  %i.ai = and i64 %i.ah, 4294967232
  %i.aj = and i64 %i.ag, -4294967233
  %i.ak = or disjoint i64 %i.ai, %i.aj
  store i64 %i.ak, ptr %i.af, align 8
  %indvars.iv.next.i13 = add nuw nsw i64 %indvars.iv.i7, 1 ; 2 uses
  %i.al = load i8, ptr %2, align 8, !tbaa !22
  %i.am = sext i8 %i.al to i64
  %i.an = icmp slt i64 %indvars.iv.next.i13, %i.am
  br i1 %i.an, label %.lr.ph.i6, label %Cnf_CutDeref.exit14, !llvm.loop !0

Cnf_CutDeref.exit14:                              ; preds = %.lr.ph.i6, %Aig_ManObj.exit.i10, %bb.c, %Cnf_CutDeref.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ap = load i8, ptr %3, align 8, !tbaa !22
  %i.aq = icmp sgt i8 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.i15, label %Cnf_CutRef.exit

.lr.ph.i15:                                       ; preds = %Cnf_CutDeref.exit14, %bb.d
  %indvars.iv.i16 = phi i64 [ %indvars.iv.next.i22, %bb.d ], [ 0, %Cnf_CutDeref.exit14 ] ; 2 uses
  %i.ar = load ptr, ptr %0, align 8, !tbaa !33
  %i.as = getelementptr i8, ptr %i.ar, i64 32
  %.val.i17 = load ptr, ptr %i.as, align 8, !tbaa !42 ; 2 uses
  %.not.i.i18 = icmp eq ptr %.val.i17, null
  br i1 %.not.i.i18, label %Cnf_CutRef.exit, label %Aig_ManObj.exit.i19

Aig_ManObj.exit.i19:                              ; preds = %.lr.ph.i15
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i16
  %i.au = load i32, ptr %i.at, align 4, !tbaa !30
  %i.av = getelementptr i8, ptr %.val.i17, i64 8
  %.val.i.i20 = load ptr, ptr %i.av, align 8, !tbaa !44
  %i.aw = sext i32 %i.au to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %.val.i.i20, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !45 ; 2 uses
  %.not.i21 = icmp eq ptr %i.ay, null
  br i1 %.not.i21, label %Cnf_CutRef.exit, label %bb.d

bb.d:                                             ; preds = %Aig_ManObj.exit.i19
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8            ; 2 uses
  %i.bb = add i64 %i.ba, 64
  %i.bc = and i64 %i.bb, 4294967232
  %i.bd = and i64 %i.ba, -4294967233
  %i.be = or disjoint i64 %i.bc, %i.bd
  store i64 %i.be, ptr %i.az, align 8
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i16, 1 ; 2 uses
  %i.bf = load i8, ptr %3, align 8, !tbaa !22
  %i.bg = sext i8 %i.bf to i64
  %i.bh = icmp slt i64 %indvars.iv.next.i22, %i.bg
  br i1 %i.bh, label %.lr.ph.i15, label %Cnf_CutRef.exit, !llvm.loop !1

Cnf_CutRef.exit:                                  ; preds = %.lr.ph.i15, %Aig_ManObj.exit.i19, %bb.d, %Cnf_CutDeref.exit14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @Cnf_CutRemoveIthVar(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !22
  %i.b = add i8 %i.a, -1                          ; 2 uses
  store i8 %i.b, ptr %0, align 8, !tbaa !22
  %i.c = sext i8 %i.b to i32                      ; 2 uses
  %i.d = icmp slt i32 %1, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = sext i32 %1 to i64
  %i.f = shl nsw i64 %i.e, 2                      ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %scevgep = getelementptr i8, ptr %i.g, i64 24
  %i.h = getelementptr i8, ptr %0, i64 %i.f
  %scevgep9 = getelementptr i8, ptr %i.h, i64 28
  %i.i = xor i32 %1, -1
  %i.j = add i32 %i.i, %i.c
  %i.k = zext i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 2
  %i.m = add nuw nsw i64 %i.l, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %scevgep9, i64 %i.m, i1 false), !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @Cnf_CutInsertIthVar(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !22      ; 3 uses
  %i.b = sext i8 %i.a to i32                      ; 2 uses
  %i.c = icmp slt i32 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = sext i8 %i.a to i64
  %i.e = shl nsw i64 %i.d, 2                      ; 2 uses
  %i.f = add nsw i64 %i.e, 24
  %i.g = xor i32 %1, -1
  %i.h = add i32 %i.g, %i.b
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 3 uses
  %i.k = sub nsw i64 %i.f, %i.j
  %scevgep = getelementptr i8, ptr %0, i64 %i.k
  %i.l = add nsw i64 %i.e, 20
  %i.m = sub nsw i64 %i.l, %i.j
  %scevgep13 = getelementptr i8, ptr %0, i64 %i.m
  %i.n = add nuw nsw i64 %i.j, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %scevgep13, i64 %i.n, i1 false), !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = sext i32 %1 to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.p
  store i32 %2, ptr %i.q, align 4, !tbaa !30
  %i.r = add i8 %i.a, 1
  store i8 %i.r, ptr %0, align 8, !tbaa !22
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @Cnf_CutCompose(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 11 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 9 uses
  %i.f = ptrtoaddr ptr %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 8 uses
  %i.j = load i8, ptr %1, align 8, !tbaa !22      ; 4 uses
  %i.k = sext i8 %i.j to i32                      ; 2 uses
  %i.l = icmp sgt i8 %i.j, 0
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.k to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !30
  %i.o = icmp eq i32 %i.n, %3
  br i1 %i.o, label %._crit_edge.loopexit.split.loop.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !48

._crit_edge.loopexit.split.loop.exit:             ; preds = %.lr.ph
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.loopexit.split.loop.exit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.p, %._crit_edge.loopexit.split.loop.exit ], [ %i.k, %bb.b ] ; 9 uses
  %i.q = add i8 %i.j, -1                          ; 5 uses
  store i8 %i.q, ptr %1, align 8, !tbaa !22
  %i.r = sext i8 %i.q to i32                      ; 5 uses
  %i.s = icmp slt i32 %.0.lcssa, %i.r             ; 2 uses
  br i1 %i.s, label %.lr.ph.i, label %Cnf_CutRemoveIthVar.exit

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.t = zext nneg i32 %.0.lcssa to i64
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = getelementptr i8, ptr %1, i64 %i.u       ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.v, i64 24
  %scevgep9.i = getelementptr i8, ptr %i.v, i64 28
  %i.w = xor i32 %.0.lcssa, -1
  %i.x = add i32 %i.r, %i.w
  %i.y = zext i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 4 dereferenceable(1) %scevgep9.i, i64 %i.aa, i1 false), !tbaa !30
  br label %Cnf_CutRemoveIthVar.exit

Cnf_CutRemoveIthVar.exit:                         ; preds = %._crit_edge, %.lr.ph.i
  %i.ab = icmp sgt i8 %i.q, 0
  br i1 %i.ab, label %.lr.ph.i115, label %.critedge.i

.lr.ph.i115:                                      ; preds = %Cnf_CutRemoveIthVar.exit
  %i.ac = load i8, ptr %2, align 8, !tbaa !22
  %i.ad = sext i8 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %.lr.ph.i115
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i115 ], [ %indvars.iv.next.i, %bb.i ] ; 4 uses
  %.0422.i = phi i32 [ 0, %.lr.ph.i115 ], [ %.143.i, %bb.i ] ; 6 uses
  %.0451.i = phi i32 [ 0, %.lr.ph.i115 ], [ %.146.i, %bb.i ] ; 5 uses
  %i.af = icmp slt i32 %.0422.i, %i.ad
  br i1 %i.af, label %bb.d, label %.critedge.loopexit.i

bb.d:                                             ; preds = %bb.c
  %i.ag = sext i32 %.0451.i to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !30 ; 4 uses
  %i.aj = sext i32 %.0422.i to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !30 ; 3 uses
  %i.am = icmp eq i32 %i.ai, %i.al
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw [4 x i8], ptr @Cnf_CutCompose.pFanins, i64 %indvars.iv.i
  store i32 %i.ai, ptr %i.an, align 4, !tbaa !30
  %i.ao = add nsw i32 %.0451.i, 1
  %i.ap = add nsw i32 %.0422.i, 1
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.aq = icmp slt i32 %i.ai, %i.al
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr @Cnf_CutCompose.pFanins, i64 %indvars.iv.i ; 2 uses
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.ai, ptr %i.ar, align 4, !tbaa !30
  %i.as = add nsw i32 %.0451.i, 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i32 %i.al, ptr %i.ar, align 4, !tbaa !30
  %i.at = add nsw i32 %.0422.i, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %.146.i = phi i32 [ %i.ao, %bb.e ], [ %i.as, %bb.g ], [ %.0451.i, %bb.h ] ; 3 uses
  %.143.i = phi i32 [ %i.ap, %bb.e ], [ %.0422.i, %bb.g ], [ %i.at, %bb.h ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.au = icmp slt i32 %.146.i, %i.r
  br i1 %i.au, label %bb.c, label %.critedge.loopexit.i, !llvm.loop !49

.critedge.loopexit.i:                             ; preds = %bb.i, %bb.c
  %.045.lcssa.ph.i = phi i32 [ %.0451.i, %bb.c ], [ %.146.i, %bb.i ]
  %.042.lcssa.ph.i = phi i32 [ %.0422.i, %bb.c ], [ %.143.i, %bb.i ]
  %.0.lcssa.ph.in.i = phi i64 [ %indvars.iv.i, %bb.c ], [ %indvars.iv.next.i, %bb.i ]
  %.0.lcssa.ph.i = trunc i64 %.0.lcssa.ph.in.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %Cnf_CutRemoveIthVar.exit
  %.045.lcssa.i = phi i32 [ 0, %Cnf_CutRemoveIthVar.exit ], [ %.045.lcssa.ph.i, %.critedge.loopexit.i ] ; 2 uses
  %.042.lcssa.i = phi i32 [ 0, %Cnf_CutRemoveIthVar.exit ], [ %.042.lcssa.ph.i, %.critedge.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %Cnf_CutRemoveIthVar.exit ], [ %.0.lcssa.ph.i, %.critedge.loopexit.i ] ; 2 uses
  %i.av = icmp slt i32 %.045.lcssa.i, %i.r
  br i1 %i.av, label %.lr.ph14.i, label %.preheader.i

.lr.ph14.i:                                       ; preds = %.critedge.i
  %i.aw = zext i32 %.0.lcssa.i to i64             ; 3 uses
  %i.ax = sext i32 %.045.lcssa.i to i64           ; 4 uses
  %wide.trip.count.i = sext i8 %i.q to i64        ; 2 uses
  %i.ay = sub nsw i64 %wide.trip.count.i, %i.ax   ; 3 uses
  %min.iters.check = icmp ult i64 %i.ay, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph14.i
  %n.vec = and i64 %i.ay, -8                      ; 4 uses
  %i.az = add nsw i64 %n.vec, %i.ax
  %i.ba = add nsw i64 %n.vec, %i.aw               ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.i, i64 %i.ax
  %invariant.gep284 = getelementptr [4 x i8], ptr @Cnf_CutCompose.pFanins, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !30
  %wide.load199 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !30
  %gep285 = getelementptr [4 x i8], ptr %invariant.gep284, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %gep285, i64 16
  store <4 x i32> %wide.load, ptr %gep285, align 4, !tbaa !30
  store <4 x i32> %wide.load199, ptr %i.bc, align 4, !tbaa !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %.preheader.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph14.i, %middle.block
  %indvars.iv25.i.ph = phi i64 [ %i.ax, %.lr.ph14.i ], [ %i.az, %middle.block ]
  %indvars.iv23.i.ph = phi i64 [ %i.aw, %.lr.ph14.i ], [ %i.ba, %middle.block ]
  br label %scalar.ph

.preheader.loopexit.i:                            ; preds = %scalar.ph, %middle.block
  %indvars.iv.next24.i.lcssa = phi i64 [ %i.ba, %middle.block ], [ %indvars.iv.next24.i, %scalar.ph ]
  %i.be = trunc nuw i64 %indvars.iv.next24.i.lcssa to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.critedge.i
  %.2.lcssa.i = phi i32 [ %.0.lcssa.i, %.critedge.i ], [ %i.be, %.preheader.loopexit.i ] ; 2 uses
  %i.bf = load i8, ptr %2, align 8, !tbaa !22     ; 2 uses
  %i.bg = sext i8 %i.bf to i32
  %i.bh = icmp slt i32 %.042.lcssa.i, %i.bg
  br i1 %i.bh, label %.lr.ph18.i, label %Cnf_CutMergeLeaves.exit

.lr.ph18.i:                                       ; preds = %.preheader.i
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bj = zext i32 %.2.lcssa.i to i64             ; 3 uses
  %i.bk = sext i32 %.042.lcssa.i to i64           ; 4 uses
  %wide.trip.count40.i = sext i8 %i.bf to i64     ; 2 uses
  %i.bl = sub nsw i64 %wide.trip.count40.i, %i.bk ; 3 uses
  %min.iters.check202 = icmp ult i64 %i.bl, 8
  br i1 %min.iters.check202, label %scalar.ph201.preheader, label %vector.ph203

vector.ph203:                                     ; preds = %.lr.ph18.i
  %n.vec204 = and i64 %i.bl, -8                   ; 4 uses
  %i.bm = add nsw i64 %n.vec204, %i.bk
  %i.bn = add nsw i64 %n.vec204, %i.bj            ; 2 uses
  %invariant.gep286 = getelementptr [4 x i8], ptr %i.bi, i64 %i.bk
  %invariant.gep288 = getelementptr [4 x i8], ptr @Cnf_CutCompose.pFanins, i64 %i.bj
  br label %vector.body205

vector.body205:                                   ; preds = %vector.body205, %vector.ph203
  %index206 = phi i64 [ 0, %vector.ph203 ], [ %index.next209, %vector.body205 ] ; 3 uses
  %gep287 = getelementptr [4 x i8], ptr %invariant.gep286, i64 %index206 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %gep287, i64 16
  %wide.load207 = load <4 x i32>, ptr %gep287, align 4, !tbaa !30
  %wide.load208 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !30
  %gep289 = getelementptr [4 x i8], ptr %invariant.gep288, i64 %index206 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %gep289, i64 16
  store <4 x i32> %wide.load207, ptr %gep289, align 4, !tbaa !30
  store <4 x i32> %wide.load208, ptr %i.bp, align 4, !tbaa !30
  %index.next209 = add nuw i64 %index206, 8       ; 2 uses
  %i.bq = icmp eq i64 %index.next209, %n.vec204
  br i1 %i.bq, label %middle.block210, label %vector.body205, !llvm.loop !51

middle.block210:                                  ; preds = %vector.body205
  %cmp.n211 = icmp eq i64 %i.bl, %n.vec204
  br i1 %cmp.n211, label %._crit_edge.loopexit.i, label %scalar.ph201.preheader

scalar.ph201.preheader:                           ; preds = %.lr.ph18.i, %middle.block210
  %indvars.iv34.i.ph = phi i64 [ %i.bk, %.lr.ph18.i ], [ %i.bm, %middle.block210 ]
  %indvars.iv32.i.ph = phi i64 [ %i.bj, %.lr.ph18.i ], [ %i.bn, %middle.block210 ]
  br label %scalar.ph201

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %scalar.ph ], [ %indvars.iv25.i.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv23.i = phi i64 [ %indvars.iv.next24.i, %scalar.ph ], [ %indvars.iv23.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %i.i, i64 %indvars.iv25.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !30
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr @Cnf_CutCompose.pFanins, i64 %indvars.iv23.i
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !30
  %indvars.iv.next26.i = add nsw i64 %indvars.iv25.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next26.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.loopexit.i, label %scalar.ph, !llvm.loop !52

scalar.ph201:                                     ; preds = %scalar.ph201.preheader, %scalar.ph201
  %indvars.iv34.i = phi i64 [ %indvars.iv.next35.i, %scalar.ph201 ], [ %indvars.iv34.i.ph, %scalar.ph201.preheader ] ; 2 uses
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i, %scalar.ph201 ], [ %indvars.iv32.i.ph, %scalar.ph201.preheader ] ; 2 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %indvars.iv34.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !30
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr @Cnf_CutCompose.pFanins, i64 %indvars.iv32.i
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !30
  %indvars.iv.next35.i = add nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next35.i, %wide.trip.count40.i
  br i1 %exitcond41.not.i, label %._crit_edge.loopexit.i, label %scalar.ph201, !llvm.loop !53

._crit_edge.loopexit.i:                           ; preds = %scalar.ph201, %middle.block210
  %indvars.iv.next33.i.lcssa = phi i64 [ %i.bn, %middle.block210 ], [ %indvars.iv.next33.i, %scalar.ph201 ]
  %i.bx = trunc nuw i64 %indvars.iv.next33.i.lcssa to i32
  br label %Cnf_CutMergeLeaves.exit

Cnf_CutMergeLeaves.exit:                          ; preds = %.preheader.i, %._crit_edge.loopexit.i
  %.3.lcssa.i = phi i32 [ %.2.lcssa.i, %.preheader.i ], [ %i.bx, %._crit_edge.loopexit.i ] ; 7 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !68
  %.not = icmp slt i32 %.3.lcssa.i, %i.bz
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %Cnf_CutMergeLeaves.exit
  br i1 %i.s, label %.lr.ph.i116, label %Cnf_CutInsertIthVar.exit

.lr.ph.i116:                                      ; preds = %bb.j
  %i.ca = sext i8 %i.q to i64
  %i.cb = shl nuw nsw i64 %i.ca, 2                ; 2 uses
  %i.cc = add nuw nsw i64 %i.cb, 24
  %i.cd = xor i32 %.0.lcssa, -1
  %i.ce = add i32 %i.r, %i.cd
  %i.cf = zext i32 %i.ce to i64
  %i.cg = shl nuw nsw i64 %i.cf, 2                ; 3 uses
  %i.ch = sub nsw i64 %i.cc, %i.cg
  %scevgep.i117 = getelementptr i8, ptr %1, i64 %i.ch
  %i.ci = add nuw nsw i64 %i.cb, 20
  %i.cj = sub nsw i64 %i.ci, %i.cg
  %scevgep13.i = getelementptr i8, ptr %1, i64 %i.cj
  %i.ck = add nuw nsw i64 %i.cg, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i117, ptr noundef nonnull align 4 dereferenceable(1) %scevgep13.i, i64 %i.ck, i1 false), !tbaa !30
  br label %Cnf_CutInsertIthVar.exit

Cnf_CutInsertIthVar.exit:                         ; preds = %bb.j, %.lr.ph.i116
  %i.cl = zext nneg i32 %.0.lcssa to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.cl
  store i32 %3, ptr %i.cm, align 4, !tbaa !30
  store i8 %i.j, ptr %1, align 8, !tbaa !22
  br label %bb.ag

bb.k:                                             ; preds = %Cnf_CutMergeLeaves.exit
  %i.cn = icmp slt i32 %.3.lcssa.i, 6
  %i.co = add nsw i32 %.3.lcssa.i, -5
  %i.cp = shl nuw i32 1, %i.co
  %i.cq = select i1 %i.cn, i32 1, i32 %i.cp       ; 3 uses
  %i.cr = add i32 %i.cq, %.3.lcssa.i
  %i.cs = shl i32 %i.cr, 2
  %i.ct = add i32 %i.cs, 24
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !19
  %i.cw = tail call ptr @Aig_MmFlexEntryFetch(ptr noundef %i.cv, i32 noundef %i.ct) #13 ; 20 uses
  %i.cx = ptrtoaddr ptr %i.cw to i64              ; 3 uses
  %i.cy = trunc i32 %.3.lcssa.i to i8             ; 2 uses
  store i8 %i.cy, ptr %i.cw, align 8, !tbaa !22
  %i.cz = trunc i32 %i.cq to i16                  ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 2 ; 2 uses
  store i16 %i.cz, ptr %i.da, align 2, !tbaa !23
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, i8 0, i64 16, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 24 ; 4 uses
  %i.dd = sext i32 %.3.lcssa.i to i64
  %i.de = shl nsw i64 %i.dd, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dc, ptr nonnull align 16 @Cnf_CutCompose.pFanins, i64 %i.de, i1 false)
  %i.df = load i8, ptr %1, align 8, !tbaa !22
  %i.dg = sext i8 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.dg ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.dj = load i8, ptr %2, align 8, !tbaa !22
  %i.dk = sext i8 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.dk ; 5 uses
  %i.dm = sext i8 %i.cy to i64                    ; 2 uses
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.dm ; 9 uses
  %sext = shl i32 %i.cq, 16                       ; 2 uses
  %i.do = ashr exact i32 %sext, 16                ; 2 uses
  %i.dp = icmp sgt i16 %i.cz, 0
  br i1 %i.dp, label %.lr.ph164, label %._crit_edge168

.lr.ph164:                                        ; preds = %bb.k
  %i.dq = lshr exact i32 %sext, 15                ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !23
  %i.dt = sext i16 %i.ds to i32                   ; 5 uses
  %wide.trip.count175 = zext nneg i32 %i.dq to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count175, 2      ; 2 uses
  %i.du = add nsw i32 %i.dq, -1
  %i.dv = icmp ult i32 %i.du, 3
  br i1 %i.dv, label %.epil.preheader, label %.lr.ph164.new

.lr.ph164.new:                                    ; preds = %.lr.ph164
  %unroll_iter = and i64 %wide.trip.count175, 65532
  br label %bb.m

.lr.ph167.unr-lcssa:                              ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph167, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph167.unr-lcssa, %.lr.ph164
  %indvars.iv172.epil.init = phi i64 [ 0, %.lr.ph164 ], [ %indvars.iv.next173.3, %.lr.ph167.unr-lcssa ]
  %lcmp.mod273 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod273)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %indvars.iv172.epil = phi i64 [ %indvars.iv172.epil.init, %.epil.preheader ], [ %indvars.iv.next173.epil, %bb.l ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %i.dw = trunc nuw nsw i64 %indvars.iv172.epil to i32
  %i.dx = srem i32 %i.dw, %i.dt
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !30
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv172.epil
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !30
  %indvars.iv.next173.epil = add nuw nsw i64 %indvars.iv172.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %.lr.ph167, label %bb.l, !llvm.loop !54

.lr.ph167:                                        ; preds = %bb.l, %.lr.ph167.unr-lcssa
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !23
  %i.ee = sext i16 %i.ed to i32                   ; 5 uses
  %wide.trip.count180 = zext nneg i32 %i.do to i64 ; 2 uses
  %xtraiter275 = and i64 %wide.trip.count180, 3   ; 3 uses
  %i.ef = add nsw i32 %i.do, -1
  %i.eg = icmp ult i32 %i.ef, 3
  br i1 %i.eg, label %.epil.preheader274, label %.lr.ph167.new

.lr.ph167.new:                                    ; preds = %.lr.ph167
  %unroll_iter279 = and i64 %wide.trip.count180, 32764
  br label %bb.n

bb.m:                                             ; preds = %bb.m, %.lr.ph164.new
  %indvars.iv172 = phi i64 [ 0, %.lr.ph164.new ], [ %indvars.iv.next173.3, %bb.m ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph164.new ], [ %niter.next.3, %bb.m ]
  %i.eh = trunc nuw nsw i64 %indvars.iv172 to i32
  %i.ei = srem i32 %i.eh, %i.dt
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !30
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv172
  store i32 %i.el, ptr %i.em, align 4, !tbaa !30
  %indvars.iv.next173 = or disjoint i64 %indvars.iv172, 1 ; 2 uses
  %i.en = trunc nuw nsw i64 %indvars.iv.next173 to i32
  %i.eo = srem i32 %i.en, %i.dt
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !30
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next173
  store i32 %i.er, ptr %i.es, align 4, !tbaa !30
  %indvars.iv.next173.1 = or disjoint i64 %indvars.iv172, 2 ; 2 uses
  %i.et = trunc nuw nsw i64 %indvars.iv.next173.1 to i32
  %i.eu = srem i32 %i.et, %i.dt
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !30
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next173.1
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !30
  %indvars.iv.next173.2 = or disjoint i64 %indvars.iv172, 3 ; 2 uses
  %i.ez = trunc nuw nsw i64 %indvars.iv.next173.2 to i32
  %i.fa = srem i32 %i.ez, %i.dt
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !30
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next173.2
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !30
  %indvars.iv.next173.3 = add nuw nsw i64 %indvars.iv172, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph167.unr-lcssa, label %bb.m, !llvm.loop !55

bb.n:                                             ; preds = %bb.n, %.lr.ph167.new
  %indvars.iv177 = phi i64 [ 0, %.lr.ph167.new ], [ %indvars.iv.next178.3, %bb.n ] ; 6 uses
  %niter280 = phi i64 [ 0, %.lr.ph167.new ], [ %niter280.next.3, %bb.n ]
  %i.ff = trunc nuw nsw i64 %indvars.iv177 to i32
  %i.fg = srem i32 %i.ff, %i.ee
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !30
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv177
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !30
  %indvars.iv.next178 = or disjoint i64 %indvars.iv177, 1 ; 2 uses
  %i.fl = trunc nuw nsw i64 %indvars.iv.next178 to i32
  %i.fm = srem i32 %i.fl, %i.ee
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !30
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next178
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !30
  %indvars.iv.next178.1 = or disjoint i64 %indvars.iv177, 2 ; 2 uses
  %i.fr = trunc nuw nsw i64 %indvars.iv.next178.1 to i32
  %i.fs = srem i32 %i.fr, %i.ee
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !30
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next178.1
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !30
  %indvars.iv.next178.2 = or disjoint i64 %indvars.iv177, 3 ; 2 uses
  %i.fx = trunc nuw nsw i64 %indvars.iv.next178.2 to i32
  %i.fy = srem i32 %i.fx, %i.ee
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !30
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next178.2
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !30
  %indvars.iv.next178.3 = add nuw nsw i64 %indvars.iv177, 4 ; 2 uses
  %niter280.next.3 = add i64 %niter280, 4         ; 2 uses
  %niter280.ncmp.3 = icmp eq i64 %niter280.next.3, %unroll_iter279
  br i1 %niter280.ncmp.3, label %._crit_edge168.loopexit.unr-lcssa, label %bb.n, !llvm.loop !56

._crit_edge168.loopexit.unr-lcssa:                ; preds = %bb.n
  %lcmp.mod277.not = icmp eq i64 %xtraiter275, 0
  br i1 %lcmp.mod277.not, label %._crit_edge168, label %.epil.preheader274

.epil.preheader274:                               ; preds = %._crit_edge168.loopexit.unr-lcssa, %.lr.ph167
  %indvars.iv177.epil.init = phi i64 [ 0, %.lr.ph167 ], [ %indvars.iv.next178.3, %._crit_edge168.loopexit.unr-lcssa ]
  %lcmp.mod278 = icmp ne i64 %xtraiter275, 0
  tail call void @llvm.assume(i1 %lcmp.mod278)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader274
  %indvars.iv177.epil = phi i64 [ %indvars.iv177.epil.init, %.epil.preheader274 ], [ %indvars.iv.next178.epil, %bb.o ] ; 3 uses
  %epil.iter276 = phi i64 [ 0, %.epil.preheader274 ], [ %epil.iter276.next, %bb.o ]
  %i.gd = trunc nuw nsw i64 %indvars.iv177.epil to i32
  %i.ge = srem i32 %i.gd, %i.ee
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !30
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv177.epil
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !30
  %indvars.iv.next178.epil = add nuw nsw i64 %indvars.iv177.epil, 1
  %epil.iter276.next = add i64 %epil.iter276, 1   ; 2 uses
  %epil.iter276.cmp.not = icmp eq i64 %epil.iter276.next, %xtraiter275
  br i1 %epil.iter276.cmp.not, label %._crit_edge168, label %bb.o, !llvm.loop !57

._crit_edge168:                                   ; preds = %._crit_edge168.loopexit.unr-lcssa, %bb.o, %bb.k
  %sext195 = shl i32 %.3.lcssa.i, 24
  %i.gj = ashr exact i32 %sext195, 24             ; 2 uses
  %i.gk = add nsw i32 %i.gj, 1                    ; 2 uses
  %i.gl = shl nsw i32 -1, %i.gk
  %i.gm = shl nuw i32 1, %.0.lcssa
  %.demorgan = or i32 %i.gl, %i.gm
  %i.gn = xor i32 %.demorgan, -1
  tail call void @Kit_TruthShrink(ptr noundef %i.h, ptr noundef %i.b, i32 noundef %i.gj, i32 noundef %i.gk, i32 noundef %i.gn, i32 noundef 1) #13
  %i.go = load i8, ptr %i.cw, align 8, !tbaa !22  ; 5 uses
  %i.gp = icmp sgt i8 %i.go, 0
  br i1 %i.gp, label %.lr.ph.i118, label %Cnf_TruthPhase.exit.thread

Cnf_TruthPhase.exit.thread:                       ; preds = %._crit_edge168
  %i.gq = zext nneg i8 %i.go to i32
  %i.gr = shl nuw i32 1, %i.gq
  %.pre = load i8, ptr %1, align 8, !tbaa !22
  %.pre182 = sext i8 %.pre to i32
  br label %Cnf_TruthPhase.exit133

.lr.ph.i118:                                      ; preds = %._crit_edge168
  %wide.trip.count.i119 = zext nneg i8 %i.go to i64 ; 2 uses
  %i.gs = load i8, ptr %1, align 8, !tbaa !22
  %i.gt = sext i8 %i.gs to i32                    ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i118
  %indvars.iv.i120 = phi i64 [ 0, %.lr.ph.i118 ], [ %indvars.iv.next.i121, %bb.q ] ; 3 uses
  %.017.i = phi i32 [ 0, %.lr.ph.i118 ], [ %.1.i, %bb.q ] ; 3 uses
  %.01315.i = phi i32 [ 0, %.lr.ph.i118 ], [ %.114.i, %bb.q ] ; 2 uses
  %i.gu = icmp eq i32 %.017.i, %i.gt
  br i1 %i.gu, label %Cnf_TruthPhase.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.i120
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !30
  %i.gx = zext nneg i32 %.017.i to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !30
  %i.ha = icmp sge i32 %i.gw, %i.gz               ; 2 uses
  %i.hb = trunc nuw nsw i64 %indvars.iv.i120 to i32
  %i.hc = shl nuw i32 1, %i.hb
  %i.hd = select i1 %i.ha, i32 %i.hc, i32 0
  %.114.i = or i32 %i.hd, %.01315.i               ; 2 uses
  %i.he = zext i1 %i.ha to i32
  %.1.i = add nuw nsw i32 %.017.i, %i.he
  %indvars.iv.next.i121 = add nuw nsw i64 %indvars.iv.i120, 1 ; 2 uses
  %exitcond.not.i122 = icmp eq i64 %indvars.iv.next.i121, %wide.trip.count.i119
  br i1 %exitcond.not.i122, label %Cnf_TruthPhase.exit, label %bb.p, !llvm.loop !58

Cnf_TruthPhase.exit:                              ; preds = %bb.p, %bb.q
  %.013.lcssa.i = phi i32 [ %.114.i, %bb.q ], [ %.01315.i, %bb.p ]
  %i.hf = zext nneg i8 %i.go to i32
  %i.hg = shl nuw i32 1, %i.hf
  %i.hh = or i32 %.013.lcssa.i, %i.hg             ; 2 uses
  %i.hi = load i8, ptr %2, align 8, !tbaa !22
  %i.hj = sext i8 %i.hi to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %Cnf_TruthPhase.exit
  %indvars.iv.i126 = phi i64 [ 0, %Cnf_TruthPhase.exit ], [ %indvars.iv.next.i131, %bb.s ] ; 3 uses
  %.017.i127 = phi i32 [ 0, %Cnf_TruthPhase.exit ], [ %.1.i130, %bb.s ] ; 3 uses
  %.01315.i128 = phi i32 [ 0, %Cnf_TruthPhase.exit ], [ %.114.i129, %bb.s ] ; 2 uses
  %i.hk = icmp eq i32 %.017.i127, %i.hj
  br i1 %i.hk, label %Cnf_TruthPhase.exit133, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.i126
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !30
  %i.hn = zext nneg i32 %.017.i127 to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.hn
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !30
  %i.hq = icmp sge i32 %i.hm, %i.hp               ; 2 uses
  %i.hr = trunc nuw nsw i64 %indvars.iv.i126 to i32
  %i.hs = shl nuw i32 1, %i.hr
  %i.ht = select i1 %i.hq, i32 %i.hs, i32 0
  %.114.i129 = or i32 %i.ht, %.01315.i128         ; 2 uses
  %i.hu = zext i1 %i.hq to i32
  %.1.i130 = add nuw nsw i32 %.017.i127, %i.hu
  %indvars.iv.next.i131 = add nuw nsw i64 %indvars.iv.i126, 1 ; 2 uses
  %exitcond.not.i132 = icmp eq i64 %indvars.iv.next.i131, %wide.trip.count.i119
  br i1 %exitcond.not.i132, label %Cnf_TruthPhase.exit133, label %bb.r, !llvm.loop !58

Cnf_TruthPhase.exit133:                           ; preds = %bb.r, %bb.s, %Cnf_TruthPhase.exit.thread
  %.pre-phi = phi i32 [ %.pre182, %Cnf_TruthPhase.exit.thread ], [ %i.gt, %bb.s ], [ %i.gt, %bb.r ]
  %i.hv = phi i32 [ %i.gr, %Cnf_TruthPhase.exit.thread ], [ %i.hh, %bb.s ], [ %i.hh, %bb.r ]
  %.013.lcssa.i123 = phi i32 [ 0, %Cnf_TruthPhase.exit.thread ], [ %.01315.i128, %bb.r ], [ %.114.i129, %bb.s ]
  %i.hw = add nsw i32 %.pre-phi, 1
  %i.hx = sext i8 %i.go to i32
  %i.hy = add nsw i32 %i.hx, 1
  tail call void @Kit_TruthStretch(ptr noundef %i.h, ptr noundef %i.b, i32 noundef %i.hw, i32 noundef %i.hy, i32 noundef %i.hv, i32 noundef 1) #13
  %i.hz = load i8, ptr %2, align 8, !tbaa !22
  %i.ia = sext i8 %i.hz to i32
  %i.ib = load i8, ptr %i.cw, align 8, !tbaa !22
  %i.ic = sext i8 %i.ib to i32
  tail call void @Kit_TruthStretch(ptr noundef %i.h, ptr noundef %i.e, i32 noundef %i.ia, i32 noundef %i.ic, i32 noundef %.013.lcssa.i123, i32 noundef 1) #13
  %i.id = load i16, ptr %i.da, align 2, !tbaa !23
  %i.ie = sext i16 %i.id to i64                   ; 2 uses
  %i.if = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ie ; 2 uses
  %i.ig = load i8, ptr %i.cw, align 8, !tbaa !22  ; 2 uses
  %i.ih = sext i8 %i.ig to i32
  %i.ii = icmp slt i8 %i.ig, 6
  %i.ij = add nsw i32 %i.ih, -5
  %i.ik = shl nuw i32 1, %i.ij
  %spec.select.i = select i1 %i.ii, i32 1, i32 %i.ik ; 3 uses
  %i.il = icmp sgt i32 %spec.select.i, 0
  br i1 %i.il, label %select.unfold.preheader.i, label %Kit_TruthMux.exit

select.unfold.preheader.i:                        ; preds = %Cnf_TruthPhase.exit133
  %i.im = zext nneg i32 %spec.select.i to i64     ; 3 uses
  %min.iters.check218 = icmp ult i32 %spec.select.i, 20
  br i1 %min.iters.check218, label %select.unfold.i.preheader.a, label %vector.memcheck

select.unfold.i.preheader.a:                      ; preds = %vector.memcheck, %select.unfold.preheader.i
  br label %select.unfold.i

vector.memcheck:                                  ; preds = %select.unfold.preheader.i
  %i.in = shl nsw i64 %i.ie, 2
  %i.io = shl nsw i64 %i.dm, 2                    ; 3 uses
  %i.ip = add i64 %i.in, %i.c
  %i.iq = add i64 %i.io, %i.cx
  %i.ir = sub i64 %i.ip, %i.iq
  %i.is = add i64 %i.ir, -25
  %diff.check = icmp ult i64 %i.is, 31
  %i.it = add i64 %i.io, %i.cx
  %i.iu = sub i64 %i.c, %i.it
  %i.iv = add i64 %i.iu, -25
  %diff.check219 = icmp ult i64 %i.iv, 31
  %conflict.rdx = or i1 %diff.check, %diff.check219
  %i.iw = add i64 %i.io, %i.cx
  %i.ix = sub i64 %i.f, %i.iw
  %i.iy = add i64 %i.ix, -25
  %diff.check220 = icmp ult i64 %i.iy, 31
  %conflict.rdx221 = or i1 %conflict.rdx, %diff.check220
  br i1 %conflict.rdx221, label %select.unfold.i.preheader.a, label %vector.ph222

vector.ph222:                                     ; preds = %vector.memcheck
  %n.vec223 = and i64 %i.im, 2147483640
  br label %vector.body224

vector.body224:                                   ; preds = %vector.body224, %vector.ph222
  %index225 = phi i64 [ 0, %vector.ph222 ], [ %index.next239, %vector.body224 ] ; 2 uses
  %i.iz = xor i64 %index225, -1
  %i.ja = add i64 %i.iz, %i.im                    ; 4 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ja ; 2 uses
  %i.jc = getelementptr inbounds i8, ptr %i.jb, i64 -12
  %i.jd = getelementptr inbounds i8, ptr %i.jb, i64 -28
  %wide.load226 = load <4 x i32>, ptr %i.jc, align 4, !tbaa !30
  %wide.load227 = load <4 x i32>, ptr %i.jd, align 4, !tbaa !30
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ja ; 2 uses
  %i.jf = getelementptr inbounds i8, ptr %i.je, i64 -12
  %i.jg = getelementptr inbounds i8, ptr %i.je, i64 -28
  %wide.load229 = load <4 x i32>, ptr %i.jf, align 4, !tbaa !30 ; 2 uses
  %wide.load230 = load <4 x i32>, ptr %i.jg, align 4, !tbaa !30 ; 2 uses
  %i.jh = xor <4 x i32> %wide.load229, splat (i32 -1)
  %i.ji = xor <4 x i32> %wide.load230, splat (i32 -1)
  %i.jj = and <4 x i32> %wide.load226, %i.jh
  %i.jk = and <4 x i32> %wide.load227, %i.ji
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.ja ; 2 uses
  %i.jm = getelementptr inbounds i8, ptr %i.jl, i64 -12
  %i.jn = getelementptr inbounds i8, ptr %i.jl, i64 -28
  %wide.load233 = load <4 x i32>, ptr %i.jm, align 4, !tbaa !30
  %wide.load234 = load <4 x i32>, ptr %i.jn, align 4, !tbaa !30
  %i.jo = and <4 x i32> %wide.load233, %wide.load229
  %i.jp = and <4 x i32> %wide.load234, %wide.load230
  %i.jq = or <4 x i32> %i.jo, %i.jj
  %i.jr = or <4 x i32> %i.jp, %i.jk
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.ja ; 2 uses
  %i.jt = getelementptr inbounds i8, ptr %i.js, i64 -12
  %i.ju = getelementptr inbounds i8, ptr %i.js, i64 -28
  store <4 x i32> %i.jq, ptr %i.jt, align 4, !tbaa !30
  store <4 x i32> %i.jr, ptr %i.ju, align 4, !tbaa !30
  %index.next239 = add nuw i64 %index225, 8       ; 2 uses
  %i.jv = icmp eq i64 %index.next239, %n.vec223
  br i1 %i.jv, label %Kit_TruthMux.exit, label %vector.body224, !llvm.loop !59

select.unfold.i:                                  ; preds = %select.unfold.i.preheader.a, %select.unfold.i
  %indvars.iv.i134 = phi i64 [ %indvars.iv.next.i135.a, %select.unfold.i ], [ %i.im, %select.unfold.i.preheader.a ] ; 2 uses
  %indvars.iv.next.i135.a = add nsw i64 %indvars.iv.i134, -1 ; 5 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i135.a
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !30
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.i135.a
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !30 ; 2 uses
  %i.ka = xor i32 %i.jz, -1
  %i.kb = and i32 %i.jx, %i.ka
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.next.i135.a
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !30
  %i.ke = and i32 %i.kd, %i.jz
  %i.kf = or i32 %i.ke, %i.kb
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv.next.i135.a
  store i32 %i.kf, ptr %i.kg, align 4, !tbaa !30
  %4 = icmp samesign ugt i64 %indvars.iv.i134, 1
  br i1 %4, label %select.unfold.i, label %Kit_TruthMux.exit, !llvm.loop !60

Kit_TruthMux.exit:                                ; preds = %vector.body224, %select.unfold.i, %Cnf_TruthPhase.exit133
  %i.kh = load i8, ptr %1, align 8, !tbaa !22     ; 3 uses
  %i.ki = sext i8 %i.kh to i32                    ; 2 uses
  %i.kj = icmp slt i32 %.0.lcssa, %i.ki
  br i1 %i.kj, label %.lr.ph.i136, label %Cnf_CutInsertIthVar.exit139

.lr.ph.i136:                                      ; preds = %Kit_TruthMux.exit
  %i.kk = sext i8 %i.kh to i64
  %i.kl = shl nuw nsw i64 %i.kk, 2                ; 2 uses
  %i.km = add nuw nsw i64 %i.kl, 24
  %i.kn = xor i32 %.0.lcssa, -1
  %i.ko = add i32 %i.ki, %i.kn
  %i.kp = zext i32 %i.ko to i64
  %i.kq = shl nuw nsw i64 %i.kp, 2                ; 3 uses
  %i.kr = sub nsw i64 %i.km, %i.kq
  %scevgep.i137 = getelementptr i8, ptr %1, i64 %i.kr
  %i.ks = add nuw nsw i64 %i.kl, 20
  %i.kt = sub nsw i64 %i.ks, %i.kq
  %scevgep13.i138 = getelementptr i8, ptr %1, i64 %i.kt
  %i.ku = add nuw nsw i64 %i.kq, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i137, ptr noundef nonnull align 4 dereferenceable(1) %scevgep13.i138, i64 %i.ku, i1 false), !tbaa !30
  br label %Cnf_CutInsertIthVar.exit139

Cnf_CutInsertIthVar.exit139:                      ; preds = %Kit_TruthMux.exit, %.lr.ph.i136
  %i.kv = zext nneg i32 %.0.lcssa to i64
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.kv
  store i32 %3, ptr %i.kw, align 4, !tbaa !30
  %i.kx = add i8 %i.kh, 1
  store i8 %i.kx, ptr %1, align 8, !tbaa !22
  %i.ky = load i8, ptr %i.cw, align 8, !tbaa !22  ; 2 uses
  %i.kz = icmp slt i8 %i.ky, 5
  br i1 %i.kz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %Cnf_CutInsertIthVar.exit139
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !31 ; 2 uses
  %i.lc = load i32, ptr %i.dn, align 4, !tbaa !30
  %i.ld = and i32 %i.lc, 65535                    ; 2 uses
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.le
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !28
  %i.lh = xor i32 %i.ld, 65535
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.li
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !28
  %i.ll = add i8 %i.lk, %i.lg
  %i.lm = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store i8 %i.ll, ptr %i.lm, align 1, !tbaa !32
  br label %bb.ag

bb.u:                                             ; preds = %Cnf_CutInsertIthVar.exit139
  %i.ln = zext nneg i8 %i.ky to i32
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !70
  %i.lq = tail call i32 @Kit_TruthIsop(ptr noundef nonnull %i.dn, i32 noundef %i.ln, ptr noundef %i.lp, i32 noundef 0) #13
  %i.lr = icmp eq i32 %i.lq, -1
  br i1 %i.lr, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ls = load ptr, ptr %i.lo, align 8, !tbaa !70 ; 2 uses
  %i.lt = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !71 ; 4 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 4
  store i32 %i.lv, ptr %i.lw, align 4, !tbaa !71
  store i32 %i.lv, ptr %i.lt, align 8, !tbaa !72
  %.not.i = icmp eq i32 %i.lv, 0
  br i1 %.not.i, label %Vec_IntDup.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.lx = sext i32 %i.lv to i64
  %i.ly = shl nsw i64 %i.lx, 2                    ; 2 uses
  %i.lz = tail call noalias ptr @malloc(i64 noundef %i.ly) #14
  br label %Vec_IntDup.exit

Vec_IntDup.exit:                                  ; preds = %bb.v, %bb.w
  %.pre-phi12.i = phi i64 [ %i.ly, %bb.w ], [ 0, %bb.v ]
  %i.ma = phi ptr [ %i.lz, %bb.w ], [ null, %bb.v ] ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  store ptr %i.ma, ptr %i.mb, align 8, !tbaa !27
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !27
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ma, ptr align 4 %i.md, i64 %.pre-phi12.i, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %Vec_IntDup.exit
  %i.me = phi ptr [ %i.lt, %Vec_IntDup.exit ], [ null, %bb.u ]
  %i.mf = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  store ptr %i.me, ptr %i.mf, align 8, !tbaa !24
  %i.mg = load i8, ptr %i.cw, align 8, !tbaa !22  ; 2 uses
  %i.mh = sext i8 %i.mg to i32                    ; 2 uses
  %i.mi = icmp slt i8 %i.mg, 6
  %i.mj = add nsw i32 %i.mh, -5
  %i.mk = shl nuw i32 1, %i.mj
  %spec.select.i140 = select i1 %i.mi, i32 1, i32 %i.mk ; 3 uses
  %i.ml = icmp sgt i32 %spec.select.i140, 0
  br i1 %i.ml, label %select.unfold.preheader.i141, label %Kit_TruthNot.exit

select.unfold.preheader.i141:                     ; preds = %bb.x
  %i.mm = zext nneg i32 %spec.select.i140 to i64  ; 3 uses
  %min.iters.check244 = icmp ult i32 %spec.select.i140, 8
  br i1 %min.iters.check244, label %select.unfold.i142, label %vector.ph245

vector.ph245:                                     ; preds = %select.unfold.preheader.i141
  %n.vec246 = and i64 %i.mm, 2147483640
  %invariant.gep290 = getelementptr [4 x i8], ptr %i.dn, i64 %i.mm
  br label %vector.body247

vector.body247:                                   ; preds = %vector.body247, %vector.ph245
  %index248 = phi i64 [ 0, %vector.ph245 ], [ %index.next251, %vector.body247 ] ; 2 uses
  %i.mn = xor i64 %index248, -1
  %gep291 = getelementptr [4 x i8], ptr %invariant.gep290, i64 %i.mn ; 2 uses
  %i.mo = getelementptr inbounds i8, ptr %gep291, i64 -12 ; 2 uses
  %i.mp = getelementptr inbounds i8, ptr %gep291, i64 -28 ; 2 uses
  %wide.load249 = load <4 x i32>, ptr %i.mo, align 4, !tbaa !30
  %wide.load250 = load <4 x i32>, ptr %i.mp, align 4, !tbaa !30
  %i.mq = xor <4 x i32> %wide.load249, splat (i32 -1)
  %i.mr = xor <4 x i32> %wide.load250, splat (i32 -1)
  store <4 x i32> %i.mq, ptr %i.mo, align 4, !tbaa !30
  store <4 x i32> %i.mr, ptr %i.mp, align 4, !tbaa !30
  %index.next251 = add nuw i64 %index248, 8       ; 2 uses
  %i.ms = icmp eq i64 %index.next251, %n.vec246
  br i1 %i.ms, label %Kit_TruthNot.exit, label %vector.body247, !llvm.loop !61

select.unfold.i142:                               ; preds = %select.unfold.preheader.i141, %select.unfold.i142
  %indvars.iv.i143 = phi i64 [ %indvars.iv.next.i144, %select.unfold.i142 ], [ %i.mm, %select.unfold.preheader.i141 ] ; 2 uses
  %indvars.iv.next.i144 = add nsw i64 %indvars.iv.i143, -1 ; 2 uses
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv.next.i144 ; 2 uses
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !30
  %i.mv = xor i32 %i.mu, -1
  store i32 %i.mv, ptr %i.mt, align 4, !tbaa !30
  %i.mw = icmp samesign ugt i64 %indvars.iv.i143, 1
  br i1 %i.mw, label %select.unfold.i142, label %Kit_TruthNot.exit, !llvm.loop !62

Kit_TruthNot.exit:                                ; preds = %vector.body247, %select.unfold.i142, %bb.x
  %i.mx = load ptr, ptr %i.lo, align 8, !tbaa !70
  %i.my = tail call i32 @Kit_TruthIsop(ptr noundef nonnull %i.dn, i32 noundef %i.mh, ptr noundef %i.mx, i32 noundef 0) #13
  %i.mz = icmp eq i32 %i.my, -1
  br i1 %i.mz, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %Kit_TruthNot.exit
  %i.na = load ptr, ptr %i.lo, align 8, !tbaa !70 ; 2 uses
  %i.nb = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 4 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.na, i64 4
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !71 ; 4 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nb, i64 4
  store i32 %i.nd, ptr %i.ne, align 4, !tbaa !71
  store i32 %i.nd, ptr %i.nb, align 8, !tbaa !72
  %.not.i145 = icmp eq i32 %i.nd, 0
  br i1 %.not.i145, label %Vec_IntDup.exit147, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.nf = sext i32 %i.nd to i64
  %i.ng = shl nsw i64 %i.nf, 2                    ; 2 uses
  %i.nh = tail call noalias ptr @malloc(i64 noundef %i.ng) #14
  br label %Vec_IntDup.exit147

Vec_IntDup.exit147:                               ; preds = %bb.y, %bb.z
  %.pre-phi12.i146 = phi i64 [ %i.ng, %bb.z ], [ 0, %bb.y ]
  %i.ni = phi ptr [ %i.nh, %bb.z ], [ null, %bb.y ] ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  store ptr %i.ni, ptr %i.nj, align 8, !tbaa !27
  %i.nk = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !27
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ni, ptr align 4 %i.nl, i64 %.pre-phi12.i146, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %Kit_TruthNot.exit, %Vec_IntDup.exit147
  %i.nm = phi ptr [ %i.nb, %Vec_IntDup.exit147 ], [ null, %Kit_TruthNot.exit ] ; 3 uses
  store ptr %i.nm, ptr %i.db, align 8, !tbaa !24
  %i.nn = load i8, ptr %i.cw, align 8, !tbaa !22  ; 2 uses
  %i.no = sext i8 %i.nn to i32
  %i.np = icmp slt i8 %i.nn, 6
  %i.nq = add nsw i32 %i.no, -5
  %i.nr = shl nuw i32 1, %i.nq
  %spec.select.i148 = select i1 %i.np, i32 1, i32 %i.nr ; 3 uses
  %i.ns = icmp sgt i32 %spec.select.i148, 0
  br i1 %i.ns, label %select.unfold.preheader.i149, label %Kit_TruthNot.exit153

select.unfold.preheader.i149:                     ; preds = %bb.aa
  %i.nt = zext nneg i32 %spec.select.i148 to i64  ; 3 uses
  %min.iters.check256 = icmp ult i32 %spec.select.i148, 8
  br i1 %min.iters.check256, label %select.unfold.i150, label %vector.ph257

vector.ph257:                                     ; preds = %select.unfold.preheader.i149
  %n.vec258 = and i64 %i.nt, 2147483640
  %invariant.gep292 = getelementptr [4 x i8], ptr %i.dn, i64 %i.nt
  br label %vector.body259

vector.body259:                                   ; preds = %vector.body259, %vector.ph257
  %index260 = phi i64 [ 0, %vector.ph257 ], [ %index.next263, %vector.body259 ] ; 2 uses
  %i.nu = xor i64 %index260, -1
  %gep293 = getelementptr [4 x i8], ptr %invariant.gep292, i64 %i.nu ; 2 uses
  %i.nv = getelementptr inbounds i8, ptr %gep293, i64 -12 ; 2 uses
  %i.nw = getelementptr inbounds i8, ptr %gep293, i64 -28 ; 2 uses
  %wide.load261 = load <4 x i32>, ptr %i.nv, align 4, !tbaa !30
  %wide.load262 = load <4 x i32>, ptr %i.nw, align 4, !tbaa !30
  %i.nx = xor <4 x i32> %wide.load261, splat (i32 -1)
  %i.ny = xor <4 x i32> %wide.load262, splat (i32 -1)
  store <4 x i32> %i.nx, ptr %i.nv, align 4, !tbaa !30
  store <4 x i32> %i.ny, ptr %i.nw, align 4, !tbaa !30
end_hunk_0
