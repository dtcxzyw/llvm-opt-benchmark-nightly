Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifCut?download=true
inline.NumInlined: 87
inline.NumDeleted: 27
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@If_CutPrint:bb.a
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !19
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.i, i32 noundef %i.k)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = load i64, ptr %i.a, align 4
  %i.m = lshr i64 %i.l, 24
  %i.n = and i64 %i.m, 255
  %i.o = icmp samesign ult i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %bb.b, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.b, %bb.a
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.5)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @If_CutFilter(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !15   ; 3 uses
  %i.c = icmp sgt i16 %i.b, 0
  br i1 %i.c, label %.lr.ph72, label %If_CutCheckDominance.exit58

.lr.ph72:                                         ; preds = %bb.a
  %i.d = zext nneg i16 %i.b to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.j = getelementptr i8, ptr %i.f, i64 8        ; 2 uses
  %.not40 = icmp ne i32 %2, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph72, %If_CutCheckDominance.exit.thread
  %i.k = phi i16 [ %i.b, %.lr.ph72 ], [ %i.bi, %If_CutCheckDominance.exit.thread ] ; 9 uses
  %i.l = phi i32 [ %i.d, %.lr.ph72 ], [ %i.bk, %If_CutCheckDominance.exit.thread ] ; 2 uses
  %.03570 = phi i32 [ 0, %.lr.ph72 ], [ %i.bj, %If_CutCheckDominance.exit.thread ] ; 9 uses
  %i.m = sext i32 %.03570 to i64                  ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.m ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !18   ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.q = load i64, ptr %i.p, align 4
  %i.r = trunc i64 %i.q to i32
  %i.s = lshr i32 %i.r, 24                        ; 4 uses
  %i.t = load i64, ptr %i.g, align 4
  %i.u = trunc i64 %i.t to i32
  %i.v = lshr i32 %i.u, 24                        ; 4 uses
  %i.w = icmp samesign ugt i32 %i.s, %i.v
  br i1 %i.w, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.x = icmp eq i32 %.03570, 0
  br i1 %i.x, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.y = icmp sgt i16 %i.k, 1
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  %i.ab = load i64, ptr %i.aa, align 4
  %i.ac = and i64 %i.ab, 16384
  %.not39.not = icmp eq i64 %i.ac, 0
  br i1 %.not39.not, label %bb.g, label %If_CutCheckDominance.exit.thread

bb.f:                                             ; preds = %bb.d
  %.old = icmp eq i16 %i.k, 1
  %or.cond.old = and i1 %.not40, %.old
  br i1 %or.cond.old, label %If_CutCheckDominance.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !25
  %i.af = load i32, ptr %i.h, align 8, !tbaa !25  ; 2 uses
  %i.ag = and i32 %i.af, %i.ae
  %.not41 = icmp eq i32 %i.ag, %i.af
  br i1 %.not41, label %bb.h, label %If_CutCheckDominance.exit.thread

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %If_CutCheckDominance.exit, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  %wide.trip.count30.i = zext nneg i32 %i.v to i64
  %wide.trip.count.i = zext nneg i32 %i.s to i64
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %indvars.iv27.i = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next28.i, %._crit_edge.us.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv27.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !19
  %i.am = icmp eq i32 %i.aj, %i.al
  br i1 %i.am, label %._crit_edge.us.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %If_CutCheckDominance.exit.thread, label %bb.i, !llvm.loop !85

._crit_edge.us.i:                                 ; preds = %bb.i
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %exitcond31.not.i = icmp eq i64 %indvars.iv.next28.i, %wide.trip.count30.i
  br i1 %exitcond31.not.i, label %If_CutCheckDominance.exit, label %.preheader.us.i, !llvm.loop !86

If_CutCheckDominance.exit:                        ; preds = %._crit_edge.us.i, %bb.h
  %i.an = icmp slt i32 %.03570, %i.l
  br i1 %i.an, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %If_CutCheckDominance.exit
  %i.ao = shl nsw i64 %i.m, 3
  %scevgep78 = getelementptr i8, ptr %i.j, i64 %i.ao
  %i.ap = xor i32 %.03570, -1
  %i.aq = add i32 %i.l, %i.ap
  %i.ar = zext i32 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 3
  %i.at = add nuw nsw i64 %i.as, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %scevgep78, i64 %i.at, i1 false), !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %If_CutCheckDominance.exit
  %i.au = sext i16 %i.k to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.au
  store ptr %i.o, ptr %i.av, align 8, !tbaa !18
  %i.aw = add i16 %i.k, -1                        ; 2 uses
  store i16 %i.aw, ptr %i.a, align 2, !tbaa !15
  %i.ax = add nsw i32 %.03570, -1
  br label %If_CutCheckDominance.exit.thread

bb.k:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !25 ; 2 uses
  %i.ba = load i32, ptr %i.h, align 8, !tbaa !25
  %i.bb = and i32 %i.ba, %i.az
  %.not = icmp eq i32 %i.bb, %i.az
  br i1 %.not, label %bb.l, label %If_CutCheckDominance.exit.thread

bb.l:                                             ; preds = %bb.k
  %.not.i43 = icmp eq i32 %i.s, 0
  br i1 %.not.i43, label %If_CutCheckDominance.exit58, label %.preheader.lr.ph.i44

.preheader.lr.ph.i44:                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  %wide.trip.count30.i47 = zext nneg i32 %i.s to i64
  %wide.trip.count.i48 = zext nneg i32 %i.v to i64
  br label %.preheader.us.i49

.preheader.us.i49:                                ; preds = %._crit_edge.us.i55, %.preheader.lr.ph.i44
  %indvars.iv27.i50 = phi i64 [ 0, %.preheader.lr.ph.i44 ], [ %indvars.iv.next28.i56, %._crit_edge.us.i55 ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv27.i50
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !19
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.preheader.us.i49
  %indvars.iv.i51 = phi i64 [ 0, %.preheader.us.i49 ], [ %indvars.iv.next.i52, %bb.n ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i51
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !19
  %i.bh = icmp eq i32 %i.be, %i.bg
  br i1 %i.bh, label %._crit_edge.us.i55, label %bb.n

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next.i52 = add nuw nsw i64 %indvars.iv.i51, 1 ; 2 uses
  %exitcond.not.i53 = icmp eq i64 %indvars.iv.next.i52, %wide.trip.count.i48
  br i1 %exitcond.not.i53, label %If_CutCheckDominance.exit.thread, label %bb.m, !llvm.loop !85

._crit_edge.us.i55:                               ; preds = %bb.m
  %indvars.iv.next28.i56 = add nuw nsw i64 %indvars.iv27.i50, 1 ; 2 uses
  %exitcond31.not.i57 = icmp eq i64 %indvars.iv.next28.i56, %wide.trip.count30.i47
  br i1 %exitcond31.not.i57, label %If_CutCheckDominance.exit58, label %.preheader.us.i49, !llvm.loop !86

If_CutCheckDominance.exit.thread:                 ; preds = %bb.n, %bb.j, %bb.f, %._crit_edge, %bb.k, %bb.g, %bb.e
  %i.bi = phi i16 [ %i.k, %bb.e ], [ 1, %bb.f ], [ %i.k, %bb.g ], [ %i.aw, %._crit_edge ], [ %i.k, %bb.j ], [ %i.k, %bb.k ], [ %i.k, %bb.n ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.e ], [ 0, %bb.f ], [ %.03570, %bb.g ], [ %i.ax, %._crit_edge ], [ %.03570, %bb.j ], [ %.03570, %bb.k ], [ %.03570, %bb.n ]
  %i.bj = add nsw i32 %.1, 1                      ; 2 uses
  %i.bk = sext i16 %i.bi to i32                   ; 2 uses
  %i.bl = icmp slt i32 %i.bj, %i.bk
  br i1 %i.bl, label %bb.b, label %If_CutCheckDominance.exit58, !llvm.loop !87

If_CutCheckDominance.exit58:                      ; preds = %If_CutCheckDominance.exit.thread, %bb.l, %._crit_edge.us.i55, %bb.a
  %.036 = phi i32 [ 0, %bb.a ], [ 1, %._crit_edge.us.i55 ], [ 0, %If_CutCheckDominance.exit.thread ], [ 1, %bb.l ]
  ret i32 %.036
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @If_CutMergeOrdered_(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %i.d = ptrtoaddr ptr %3 to i64                  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.f = load i64, ptr %i.e, align 4
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = lshr i32 %i.g, 24                        ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.j = load i64, ptr %i.i, align 4
  %i.k = trunc i64 %i.j to i32
  %i.l = lshr i32 %i.k, 24                        ; 8 uses
  %i.m = lshr i32 %i.g, 16                        ; 2 uses
  %i.n = and i32 %i.m, 255                        ; 6 uses
  %i.o = icmp eq i32 %i.h, %i.n
  %i.p = icmp eq i32 %i.l, %i.n
  %or.cond = select i1 %i.o, i1 %i.p, i1 false
  br i1 %or.cond, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.a
  %.not159 = icmp eq i32 %i.h, 0
  br i1 %.not159, label %._crit_edge158, label %.lr.ph157

.lr.ph157:                                        ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 44
  %wide.trip.count186 = zext nneg i32 %i.h to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph157, %bb.c
  %indvars.iv182 = phi i64 [ 0, %.lr.ph157 ], [ %indvars.iv.next183, %bb.c ] ; 8 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv182 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !19
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv182
  %i.z = load i32, ptr %i.y, align 4, !tbaa !19
  %.not = icmp eq i32 %i.x, %i.z
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv182
  %i.ab = trunc nuw nsw i64 %indvars.iv182 to i32 ; 3 uses
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !19
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv182
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !19
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv182
  store i32 %i.ab, ptr %i.ad, align 4, !tbaa !19
  %i.ae = load i32, ptr %i.w, align 4, !tbaa !19
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv182
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !19
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %exitcond187.not = icmp eq i64 %indvars.iv.next183, %wide.trip.count186
  br i1 %exitcond187.not, label %._crit_edge158, label %bb.b, !llvm.loop !88

._crit_edge158:                                   ; preds = %bb.c, %.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 4
  %i.ai = shl i32 %i.m, 24
  %i.aj = zext i32 %i.ai to i64
  %i.ak = and i64 %i.ah, -4278190081
  %i.al = or disjoint i64 %i.ak, %i.aj
  store i64 %i.al, ptr %i.ag, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load i32, ptr %i.am, align 8, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !25
  %i.aq = or i32 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !25
  %i.as = sub nsw i32 32, %i.l
  %i.at = lshr i32 -1, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i32 %i.at, ptr %i.au, align 8, !tbaa !93
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  store i32 0, ptr %i.av, align 8, !tbaa !93
  %i.aw = icmp eq i32 %i.h, 0
  br i1 %i.aw, label %.loopexit142, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = icmp eq i32 %i.l, 0
  br i1 %i.ax, label %.loopexit143, label %.preheader140

.preheader140:                                    ; preds = %bb.e
  %i.ay = icmp eq i32 %i.n, 0
  br i1 %i.ay, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader140
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.n to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.pre-phi, %bb.l ] ; 7 uses
  %.0147 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.l ] ; 4 uses
  %.0119145 = phi i32 [ 0, %.lr.ph ], [ %.1120, %bb.l ] ; 5 uses
  %.1124144 = phi i32 [ 0, %.lr.ph ], [ %.2125, %bb.l ] ; 5 uses
  %indvars = trunc i64 %indvars.iv to i32         ; 8 uses
  %i.bf = sext i32 %.1124144 to i64               ; 3 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.bf ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !19 ; 2 uses
  %i.bi = sext i32 %.0119145 to i64               ; 3 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bi ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !19 ; 2 uses
  %i.bl = icmp slt i32 %i.bh, %i.bk
  br i1 %i.bl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bf
  store i32 %indvars, ptr %i.bm, align 4, !tbaa !19
  %i.bn = add nsw i32 %.1124144, 1                ; 2 uses
  %i.bo = load i32, ptr %i.bg, align 4, !tbaa !19
  %i.bp = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.be, i64 %indvars.iv
  store i32 %i.bo, ptr %i.bq, align 4, !tbaa !19
  %i.br = icmp eq i32 %i.bn, %i.h
  br i1 %i.br, label %.loopexit142.loopexit.split.loop.exit, label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.bs = icmp sgt i32 %i.bh, %i.bk
  br i1 %i.bs, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bi
  store i32 %indvars, ptr %i.bt, align 4, !tbaa !19
  %i.bu = add nsw i32 %.0119145, 1                ; 2 uses
  %i.bv = load i32, ptr %i.bj, align 4, !tbaa !19
  %i.bw = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.be, i64 %indvars.iv
  store i32 %i.bv, ptr %i.bx, align 4, !tbaa !19
  %i.by = icmp eq i32 %i.bu, %i.l
  br i1 %i.by, label %.loopexit143.loopexit.split.loop.exit, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.bz = shl nuw i32 1, %indvars
  %i.ca = load i32, ptr %i.av, align 8, !tbaa !93
  %i.cb = or i32 %i.ca, %i.bz
  store i32 %i.cb, ptr %i.av, align 8, !tbaa !93
  %i.cc = sext i32 %.0147 to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.cc
  store i32 %indvars, ptr %i.cd, align 4, !tbaa !19
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bi
  store i32 %indvars, ptr %i.ce, align 4, !tbaa !19
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bf
  store i32 %indvars, ptr %i.cf, align 4, !tbaa !19
  %i.cg = add nsw i32 %.1124144, 1                ; 3 uses
  %i.ch = load i32, ptr %i.bg, align 4, !tbaa !19
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.be, i64 %indvars.iv
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !19
  %i.cj = add nsw i32 %.0119145, 1                ; 3 uses
  %i.ck = icmp eq i32 %i.cg, %i.h
  br i1 %i.ck, label %.loopexit142.loopexit.split.loop.exit204, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cl = icmp eq i32 %i.cj, %i.l
  br i1 %i.cl, label %.loopexit143.loopexit.split.loop.exit201, label %._crit_edge188

._crit_edge188:                                   ; preds = %bb.k
  %i.cm = add nsw i32 %.0147, 1
  %.pre = add nuw nsw i64 %indvars.iv, 1
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge188, %bb.i, %bb.g
  %indvars.iv.next.pre-phi = phi i64 [ %.pre, %._crit_edge188 ], [ %i.bw, %bb.i ], [ %i.bp, %bb.g ] ; 2 uses
  %.2125 = phi i32 [ %i.cg, %._crit_edge188 ], [ %.1124144, %bb.i ], [ %i.bn, %bb.g ]
  %.1120 = phi i32 [ %i.cj, %._crit_edge188 ], [ %i.bu, %bb.i ], [ %.0119145, %bb.g ]
  %.1 = phi i32 [ %i.cm, %._crit_edge188 ], [ %.0147, %bb.i ], [ %.0147, %bb.g ]
  %exitcond = icmp eq i64 %indvars.iv.next.pre-phi, %wide.trip.count
  br i1 %exitcond, label %.loopexit, label %bb.f

.loopexit143.loopexit.split.loop.exit:            ; preds = %bb.i
  %i.cn = trunc nuw nsw i64 %i.bw to i32
  br label %.loopexit143

.loopexit143.loopexit.split.loop.exit201:         ; preds = %bb.k
  %i.co = add nuw nsw i32 %indvars, 1
  br label %.loopexit143

.loopexit143:                                     ; preds = %.loopexit143.loopexit.split.loop.exit, %.loopexit143.loopexit.split.loop.exit201, %bb.e
  %.3126 = phi i32 [ 0, %bb.e ], [ %.1124144, %.loopexit143.loopexit.split.loop.exit ], [ %i.cg, %.loopexit143.loopexit.split.loop.exit201 ] ; 3 uses
  %.2 = phi i32 [ 0, %bb.e ], [ %i.cn, %.loopexit143.loopexit.split.loop.exit ], [ %i.co, %.loopexit143.loopexit.split.loop.exit201 ] ; 4 uses
  %i.cp = add nsw i32 %.2, %i.h
  %i.cq = add nsw i32 %.3126, %i.n
  %i.cr = icmp sgt i32 %i.cp, %i.cq
  br i1 %i.cr, label %.loopexit, label %.preheader139

.preheader139:                                    ; preds = %.loopexit143
  %i.cs = icmp slt i32 %.3126, %i.h
  br i1 %i.cs, label %.lr.ph150, label %._crit_edge

.lr.ph150:                                        ; preds = %.preheader139
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 4 uses
  %i.cw = zext i32 %.2 to i64                     ; 5 uses
  %i.cx = sext i32 %.3126 to i64                  ; 6 uses
  %wide.trip.count170 = zext nneg i32 %i.h to i64 ; 4 uses
  %i.cy = sub nsw i64 %wide.trip.count170, %i.cx  ; 3 uses
  %min.iters.check = icmp ult i64 %i.cy, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph150
  %i.cz = shl nuw nsw i64 %i.cw, 2                ; 2 uses
  %4 = add i64 %i.cz, %i.d
  %5 = shl nsw i64 %i.cx, 2                       ; 2 uses
  %i.da = add i64 %5, %i.c
  %i.db = sub i64 %4, %i.da
  %i.dc = add i64 %i.db, -141
  %diff.check = icmp ult i64 %i.dc, 31
  %i.dd = sub i64 %i.b, %i.c
  %i.de = add i64 %i.dd, -141
  %diff.check227 = icmp ult i64 %i.de, 31
  %conflict.rdx = or i1 %diff.check, %diff.check227
  %6 = add i64 %i.cz, %i.d
  %i.df = add i64 %5, %i.b
  %i.dg = sub i64 %i.df, %6
  %diff.check228 = icmp ugt i64 %i.dg, -32
  %conflict.rdx229 = or i1 %conflict.rdx, %diff.check228
  br i1 %conflict.rdx229, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cy, -8                      ; 4 uses
  %i.dh = add nsw i64 %n.vec, %i.cx
  %i.di = add nsw i64 %n.vec, %i.cw               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.2, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  %invariant.gep = getelementptr [4 x i8], ptr %i.cv, i64 %i.cw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.dj = add i64 %index, %i.cx                   ; 2 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.dj ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store <4 x i32> %vec.ind, ptr %i.dk, align 4, !tbaa !19
  store <4 x i32> %step.add, ptr %i.dl, align 4, !tbaa !19
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.dj ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %wide.load = load <4 x i32>, ptr %i.dm, align 4, !tbaa !19
  %wide.load230 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !19
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %wide.load, ptr %gep, align 4, !tbaa !19
  store <4 x i32> %wide.load230, ptr %i.do, align 4, !tbaa !19
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cy, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph150, %middle.block
  %indvars.iv164.ph = phi i64 [ %i.cx, %vector.memcheck ], [ %i.cx, %.lr.ph150 ], [ %i.dh, %middle.block ] ; 6 uses
  %indvars.iv162.ph = phi i64 [ %i.cw, %vector.memcheck ], [ %i.cw, %.lr.ph150 ], [ %i.di, %middle.block ] ; 4 uses
  %i.dq = sub nsw i64 %wide.trip.count170, %indvars.iv164.ph
  %xtraiter = and i64 %i.dq, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %indvars.iv164.ph
  %i.ds = trunc nuw nsw i64 %indvars.iv162.ph to i32
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !19
  %indvars.iv.next165.prol = add nsw i64 %indvars.iv164.ph, 1
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %indvars.iv164.ph
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !19
  %indvars.iv.next163.prol = add nuw nsw i64 %indvars.iv162.ph, 1 ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv162.ph
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !19
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next163.lcssa258.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next163.prol, %scalar.ph.prol ]
  %indvars.iv164.unr = phi i64 [ %indvars.iv164.ph, %scalar.ph.preheader ], [ %indvars.iv.next165.prol, %scalar.ph.prol ]
  %indvars.iv162.unr = phi i64 [ %indvars.iv162.ph, %scalar.ph.preheader ], [ %indvars.iv.next163.prol, %scalar.ph.prol ]
  %i.dw = add nsw i64 %wide.trip.count170, -1
  %i.dx = icmp eq i64 %indvars.iv164.ph, %i.dw
  br i1 %i.dx, label %._crit_edge.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv164 = phi i64 [ %indvars.iv.next165.1, %scalar.ph ], [ %indvars.iv164.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %indvars.iv162 = phi i64 [ %indvars.iv.next163.1, %scalar.ph ], [ %indvars.iv162.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %indvars.iv164
  %i.dz = trunc nuw nsw i64 %indvars.iv162 to i32
  store i32 %i.dz, ptr %i.dy, align 4, !tbaa !19
  %indvars.iv.next165 = add nsw i64 %indvars.iv164, 1 ; 2 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %indvars.iv164
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !19
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv162
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !19
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %indvars.iv.next165
  %i.ee = trunc nuw nsw i64 %indvars.iv.next163 to i32
  store i32 %i.ee, ptr %i.ed, align 4, !tbaa !19
  %indvars.iv.next165.1 = add nsw i64 %indvars.iv164, 2 ; 2 uses
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %indvars.iv.next165
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !19
  %indvars.iv.next163.1 = add nuw nsw i64 %indvars.iv162, 2 ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.next163
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !19
  %exitcond171.not.1 = icmp eq i64 %indvars.iv.next165.1, %wide.trip.count170
  br i1 %exitcond171.not.1, label %._crit_edge.loopexit, label %scalar.ph, !llvm.loop !90

._crit_edge.loopexit:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next163.lcssa = phi i64 [ %i.di, %middle.block ], [ %indvars.iv.next163.lcssa258.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next163.1, %scalar.ph ]
  %i.ei = trunc nsw i64 %indvars.iv.next163.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader139
  %.3.lcssa = phi i32 [ %.2, %.preheader139 ], [ %i.ei, %._crit_edge.loopexit ]
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 4
  %i.el = shl i32 %.3.lcssa, 24
  %i.em = zext i32 %i.el to i64
  %i.en = and i64 %i.ek, -4278190081
  %i.eo = or disjoint i64 %i.en, %i.em
  store i64 %i.eo, ptr %i.ej, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !25
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.es = load i32, ptr %i.er, align 8, !tbaa !25
  %i.et = or i32 %i.es, %i.eq
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.et, ptr %i.eu, align 8, !tbaa !25
  br label %.loopexit

.loopexit142.loopexit.split.loop.exit:            ; preds = %bb.g
  %i.ev = trunc nuw nsw i64 %i.bp to i32
  br label %.loopexit142

.loopexit142.loopexit.split.loop.exit204:         ; preds = %bb.j
  %i.ew = add nuw nsw i32 %indvars, 1
  br label %.loopexit142

.loopexit142:                                     ; preds = %.loopexit142.loopexit.split.loop.exit, %.loopexit142.loopexit.split.loop.exit204, %bb.d
  %.2121 = phi i32 [ 0, %bb.d ], [ %.0119145, %.loopexit142.loopexit.split.loop.exit ], [ %i.cj, %.loopexit142.loopexit.split.loop.exit204 ] ; 3 uses
  %.4 = phi i32 [ 0, %bb.d ], [ %i.ev, %.loopexit142.loopexit.split.loop.exit ], [ %i.ew, %.loopexit142.loopexit.split.loop.exit204 ] ; 4 uses
  %i.ex = add nsw i32 %.4, %i.l
  %i.ey = add nsw i32 %.2121, %i.n
  %i.ez = icmp sgt i32 %i.ex, %i.ey
  br i1 %i.ez, label %.loopexit, label %.preheader138

.preheader138:                                    ; preds = %.loopexit142
  %i.fa = icmp slt i32 %.2121, %i.l
  br i1 %i.fa, label %.lr.ph153, label %._crit_edge154

.lr.ph153:                                        ; preds = %.preheader138
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 4 uses
  %i.fe = zext i32 %.4 to i64                     ; 5 uses
  %i.ff = sext i32 %.2121 to i64                  ; 6 uses
  %wide.trip.count180 = zext nneg i32 %i.l to i64 ; 4 uses
  %i.fg = sub nsw i64 %wide.trip.count180, %i.ff  ; 3 uses
  %min.iters.check239 = icmp ult i64 %i.fg, 32
  br i1 %min.iters.check239, label %scalar.ph238.preheader, label %vector.memcheck232

vector.memcheck232:                               ; preds = %.lr.ph153
  %i.fh = shl nuw nsw i64 %i.fe, 2                ; 2 uses
  %7 = add i64 %i.fh, %i.d
  %8 = shl nsw i64 %i.ff, 2                       ; 2 uses
  %i.fi = add i64 %8, %i.c
  %i.fj = sub i64 %7, %i.fi
  %i.fk = add i64 %i.fj, -269
  %diff.check233 = icmp ult i64 %i.fk, 31
  %i.fl = sub i64 %i.a, %i.c
  %i.fm = add i64 %i.fl, -269
  %diff.check234 = icmp ult i64 %i.fm, 31
  %conflict.rdx235 = or i1 %diff.check233, %diff.check234
  %9 = add i64 %i.fh, %i.d
  %i.fn = add i64 %8, %i.a
  %i.fo = sub i64 %i.fn, %9
  %diff.check236 = icmp ugt i64 %i.fo, -32
  %conflict.rdx237 = or i1 %conflict.rdx235, %diff.check236
  br i1 %conflict.rdx237, label %scalar.ph238.preheader, label %vector.ph240

vector.ph240:                                     ; preds = %vector.memcheck232
  %n.vec241 = and i64 %i.fg, -8                   ; 4 uses
  %i.fp = add nsw i64 %n.vec241, %i.ff
  %i.fq = add nsw i64 %n.vec241, %i.fe            ; 2 uses
  %broadcast.splatinsert242 = insertelement <4 x i32> poison, i32 %.4, i64 0
  %broadcast.splat243 = shufflevector <4 x i32> %broadcast.splatinsert242, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction244 = add <4 x i32> %broadcast.splat243, <i32 0, i32 1, i32 2, i32 3>
  %invariant.gep296 = getelementptr [4 x i8], ptr %i.fd, i64 %i.fe
  br label %vector.body245

vector.body245:                                   ; preds = %vector.body245, %vector.ph240
  %index246 = phi i64 [ 0, %vector.ph240 ], [ %index.next251, %vector.body245 ] ; 3 uses
  %vec.ind247 = phi <4 x i32> [ %induction244, %vector.ph240 ], [ %vec.ind.next252, %vector.body245 ] ; 3 uses
  %step.add248 = add <4 x i32> %vec.ind247, splat (i32 4)
  %i.fr = add i64 %index246, %i.ff                ; 2 uses
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.fr ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store <4 x i32> %vec.ind247, ptr %i.fs, align 4, !tbaa !19
  store <4 x i32> %step.add248, ptr %i.ft, align 4, !tbaa !19
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.fr ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %wide.load249 = load <4 x i32>, ptr %i.fu, align 4, !tbaa !19
  %wide.load250 = load <4 x i32>, ptr %i.fv, align 4, !tbaa !19
  %gep297 = getelementptr [4 x i8], ptr %invariant.gep296, i64 %index246 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %gep297, i64 16
  store <4 x i32> %wide.load249, ptr %gep297, align 4, !tbaa !19
  store <4 x i32> %wide.load250, ptr %i.fw, align 4, !tbaa !19
  %index.next251 = add nuw i64 %index246, 8       ; 2 uses
  %vec.ind.next252 = add <4 x i32> %vec.ind247, splat (i32 8)
  %i.fx = icmp eq i64 %index.next251, %n.vec241
  br i1 %i.fx, label %middle.block253, label %vector.body245, !llvm.loop !91

middle.block253:                                  ; preds = %vector.body245
  %cmp.n254 = icmp eq i64 %i.fg, %n.vec241
  br i1 %cmp.n254, label %._crit_edge154.loopexit, label %scalar.ph238.preheader

scalar.ph238.preheader:                           ; preds = %vector.memcheck232, %.lr.ph153, %middle.block253
  %indvars.iv174.ph = phi i64 [ %i.ff, %vector.memcheck232 ], [ %i.ff, %.lr.ph153 ], [ %i.fp, %middle.block253 ] ; 6 uses
  %indvars.iv172.ph = phi i64 [ %i.fe, %vector.memcheck232 ], [ %i.fe, %.lr.ph153 ], [ %i.fq, %middle.block253 ] ; 4 uses
  %i.fy = sub nsw i64 %wide.trip.count180, %indvars.iv174.ph
  %xtraiter277 = and i64 %i.fy, 1
  %lcmp.mod278.not = icmp eq i64 %xtraiter277, 0
  br i1 %lcmp.mod278.not, label %scalar.ph238.prol.loopexit, label %scalar.ph238.prol

scalar.ph238.prol:                                ; preds = %scalar.ph238.preheader
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %indvars.iv174.ph
  %i.ga = trunc nuw nsw i64 %indvars.iv172.ph to i32
  store i32 %i.ga, ptr %i.fz, align 4, !tbaa !19
  %indvars.iv.next175.prol = add nsw i64 %indvars.iv174.ph, 1
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %indvars.iv174.ph
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !19
  %indvars.iv.next173.prol = add nuw nsw i64 %indvars.iv172.ph, 1 ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv172.ph
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !19
  br label %scalar.ph238.prol.loopexit

scalar.ph238.prol.loopexit:                       ; preds = %scalar.ph238.prol, %scalar.ph238.preheader
  %indvars.iv.next173.lcssa257.unr = phi i64 [ poison, %scalar.ph238.preheader ], [ %indvars.iv.next173.prol, %scalar.ph238.prol ]
  %indvars.iv174.unr = phi i64 [ %indvars.iv174.ph, %scalar.ph238.preheader ], [ %indvars.iv.next175.prol, %scalar.ph238.prol ]
  %indvars.iv172.unr = phi i64 [ %indvars.iv172.ph, %scalar.ph238.preheader ], [ %indvars.iv.next173.prol, %scalar.ph238.prol ]
  %i.ge = add nsw i64 %wide.trip.count180, -1
  %i.gf = icmp eq i64 %indvars.iv174.ph, %i.ge
  br i1 %i.gf, label %._crit_edge154.loopexit, label %scalar.ph238

scalar.ph238:                                     ; preds = %scalar.ph238.prol.loopexit, %scalar.ph238
  %indvars.iv174 = phi i64 [ %indvars.iv.next175.1, %scalar.ph238 ], [ %indvars.iv174.unr, %scalar.ph238.prol.loopexit ] ; 4 uses
  %indvars.iv172 = phi i64 [ %indvars.iv.next173.1, %scalar.ph238 ], [ %indvars.iv172.unr, %scalar.ph238.prol.loopexit ] ; 4 uses
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %indvars.iv174
  %i.gh = trunc nuw nsw i64 %indvars.iv172 to i32
  store i32 %i.gh, ptr %i.gg, align 4, !tbaa !19
  %indvars.iv.next175 = add nsw i64 %indvars.iv174, 1 ; 2 uses
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %indvars.iv174
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !19
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv172
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !19
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %indvars.iv.next175
  %i.gm = trunc nuw nsw i64 %indvars.iv.next173 to i32
  store i32 %i.gm, ptr %i.gl, align 4, !tbaa !19
  %indvars.iv.next175.1 = add nsw i64 %indvars.iv174, 2 ; 2 uses
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %indvars.iv.next175
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !19
  %indvars.iv.next173.1 = add nuw nsw i64 %indvars.iv172, 2 ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv.next173
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !19
  %exitcond181.not.1 = icmp eq i64 %indvars.iv.next175.1, %wide.trip.count180
  br i1 %exitcond181.not.1, label %._crit_edge154.loopexit, label %scalar.ph238, !llvm.loop !92

._crit_edge154.loopexit:                          ; preds = %scalar.ph238.prol.loopexit, %scalar.ph238, %middle.block253
  %indvars.iv.next173.lcssa = phi i64 [ %i.fq, %middle.block253 ], [ %indvars.iv.next173.lcssa257.unr, %scalar.ph238.prol.loopexit ], [ %indvars.iv.next173.1, %scalar.ph238 ]
  %i.gq = trunc nsw i64 %indvars.iv.next173.lcssa to i32
  br label %._crit_edge154

._crit_edge154:                                   ; preds = %._crit_edge154.loopexit, %.preheader138
  %.5.lcssa = phi i32 [ %.4, %.preheader138 ], [ %i.gq, %._crit_edge154.loopexit ]
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.gs = load i64, ptr %i.gr, align 4
  %i.gt = shl i32 %.5.lcssa, 24
  %i.gu = zext i32 %i.gt to i64
  %i.gv = and i64 %i.gs, -4278190081
  %i.gw = or disjoint i64 %i.gv, %i.gu
  store i64 %i.gw, ptr %i.gr, align 4
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !25
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !25
  %i.hb = or i32 %i.ha, %i.gy
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.hb, ptr %i.hc, align 8, !tbaa !25
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.b, %.preheader140, %.loopexit142, %.loopexit143, %._crit_edge154, %._crit_edge, %._crit_edge158
  %.0128 = phi i32 [ 0, %.loopexit142 ], [ 1, %._crit_edge158 ], [ 0, %.loopexit143 ], [ 1, %._crit_edge154 ], [ 0, %.preheader140 ], [ 1, %._crit_edge ], [ 0, %bb.b ], [ 0, %bb.l ]
  ret i32 %.0128
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @If_CutMergeOrdered(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i64, ptr %i.d, align 4
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %i.g = lshr i32 %i.f, 24                        ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.i = load i64, ptr %i.h, align 4
  %i.j = trunc i64 %i.i to i32
  %i.k = lshr i32 %i.j, 24                        ; 7 uses
  %i.l = lshr i32 %i.f, 16                        ; 3 uses
  %i.m = and i32 %i.l, 255                        ; 6 uses
  %i.n = icmp eq i32 %i.g, %i.m
  %i.o = icmp eq i32 %i.k, %i.m
  %or.cond = select i1 %i.n, i1 %i.o, i1 false
  %.not127 = icmp eq i32 %i.g, 0                  ; 2 uses
  br i1 %or.cond, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.a
  br i1 %.not127, label %.loopexit.sink.split, label %.lr.ph125

.lr.ph125:                                        ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 44
  %wide.trip.count156 = zext nneg i32 %i.g to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph125, %bb.c
  %indvars.iv152 = phi i64 [ 0, %.lr.ph125 ], [ %indvars.iv.next153, %bb.c ] ; 4 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv152
  %i.t = load i32, ptr %i.s, align 4, !tbaa !19   ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv152
  %i.v = load i32, ptr %i.u, align 4, !tbaa !19
  %.not = icmp eq i32 %i.t, %i.v
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv152
  store i32 %i.t, ptr %i.w, align 4, !tbaa !19
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %exitcond157.not = icmp eq i64 %indvars.iv.next153, %wide.trip.count156
  br i1 %exitcond157.not, label %.loopexit.sink.split, label %bb.b, !llvm.loop !94

bb.d:                                             ; preds = %bb.a
  br i1 %.not127, label %.loopexit111, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = icmp eq i32 %i.k, 0
  br i1 %i.x, label %.loopexit112, label %.preheader109

.preheader109:                                    ; preds = %bb.e
  %i.y = icmp eq i32 %i.m, 0
  br i1 %i.y, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader109
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.m to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.pre-phi, %bb.l ] ; 8 uses
  %.086114 = phi i32 [ 0, %.lr.ph ], [ %.187, %bb.l ] ; 5 uses
  %.191113 = phi i32 [ 0, %.lr.ph ], [ %.292, %bb.l ] ; 5 uses
  %i.ac = sext i32 %.191113 to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !19 ; 4 uses
  %i.af = sext i32 %.086114 to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !19 ; 3 uses
  %i.ai = icmp slt i32 %i.ae, %i.ah
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = add nsw i32 %.191113, 1                 ; 2 uses
  %i.ak = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %indvars.iv
  store i32 %i.ae, ptr %i.al, align 4, !tbaa !19
  %i.am = icmp eq i32 %i.aj, %i.g
  br i1 %i.am, label %.loopexit111.loopexit.split.loop.exit, label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.an = icmp sgt i32 %i.ae, %i.ah
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = add nsw i32 %.086114, 1                 ; 2 uses
  %i.ap = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %indvars.iv
  store i32 %i.ah, ptr %i.aq, align 4, !tbaa !19
  %i.ar = icmp eq i32 %i.ao, %i.k
  br i1 %i.ar, label %.loopexit112.loopexit.split.loop.exit, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.as = add nsw i32 %.191113, 1                 ; 3 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %indvars.iv
  store i32 %i.ae, ptr %i.at, align 4, !tbaa !19
  %i.au = add nsw i32 %.086114, 1                 ; 3 uses
  %i.av = icmp eq i32 %i.as, %i.g
  br i1 %i.av, label %.loopexit111.loopexit.split.loop.exit174, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = icmp eq i32 %i.au, %i.k
  br i1 %i.aw, label %.loopexit112.loopexit.split.loop.exit171, label %._crit_edge158

._crit_edge158:                                   ; preds = %bb.k
  %.pre = add nuw nsw i64 %indvars.iv, 1
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge158, %bb.i, %bb.g
  %indvars.iv.next.pre-phi = phi i64 [ %.pre, %._crit_edge158 ], [ %i.ap, %bb.i ], [ %i.ak, %bb.g ] ; 2 uses
  %.292 = phi i32 [ %i.as, %._crit_edge158 ], [ %.191113, %bb.i ], [ %i.aj, %bb.g ]
  %.187 = phi i32 [ %i.au, %._crit_edge158 ], [ %i.ao, %bb.i ], [ %.086114, %bb.g ]
  %exitcond = icmp eq i64 %indvars.iv.next.pre-phi, %wide.trip.count
  br i1 %exitcond, label %.loopexit, label %bb.f

.loopexit112.loopexit.split.loop.exit:            ; preds = %bb.i
  %i.ax = trunc nuw nsw i64 %i.ap to i32
  br label %.loopexit112

.loopexit112.loopexit.split.loop.exit171:         ; preds = %bb.k
  %indvars.le = trunc i64 %indvars.iv to i32
  %i.ay = add nuw nsw i32 %indvars.le, 1
  br label %.loopexit112

.loopexit112:                                     ; preds = %.loopexit112.loopexit.split.loop.exit, %.loopexit112.loopexit.split.loop.exit171, %bb.e
  %.393 = phi i32 [ 0, %bb.e ], [ %.191113, %.loopexit112.loopexit.split.loop.exit ], [ %i.as, %.loopexit112.loopexit.split.loop.exit171 ] ; 3 uses
  %.2 = phi i32 [ 0, %bb.e ], [ %i.ax, %.loopexit112.loopexit.split.loop.exit ], [ %i.ay, %.loopexit112.loopexit.split.loop.exit171 ] ; 3 uses
  %i.az = add nsw i32 %.2, %i.g
  %i.ba = add nsw i32 %.393, %i.m
  %i.bb = icmp sgt i32 %i.az, %i.ba
  br i1 %i.bb, label %.loopexit, label %.preheader108

.preheader108:                                    ; preds = %.loopexit112
  %i.bc = icmp slt i32 %.393, %i.g
  br i1 %i.bc, label %.lr.ph118, label %.loopexit.sink.split

.lr.ph118:                                        ; preds = %.preheader108
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 6 uses
  %i.bf = zext i32 %.2 to i64                     ; 5 uses
  %i.bg = sext i32 %.393 to i64                   ; 6 uses
  %wide.trip.count139 = zext nneg i32 %i.g to i64 ; 4 uses
  %i.bh = sub nsw i64 %wide.trip.count139, %i.bg  ; 3 uses
  %min.iters.check = icmp ult i64 %i.bh, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph118
  %i.bi = shl nuw nsw i64 %i.bf, 2
  %4 = add i64 %i.bi, %i.c
  %5 = shl nsw i64 %i.bg, 2
  %i.bj = add i64 %5, %i.b
  %i.bk = sub i64 %i.bj, %4
  %diff.check = icmp ugt i64 %i.bk, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bh, -8                      ; 4 uses
  %i.bl = add nsw i64 %n.vec, %i.bg
  %i.bm = add nsw i64 %n.vec, %i.bf               ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.bd, i64 %i.bg
  %invariant.gep264 = getelementptr [4 x i8], ptr %i.be, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !19
  %wide.load207 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !19
  %gep265 = getelementptr [4 x i8], ptr %invariant.gep264, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %gep265, i64 16
  store <4 x i32> %wide.load, ptr %gep265, align 4, !tbaa !19
  store <4 x i32> %wide.load207, ptr %i.bo, align 4, !tbaa !19
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph118, %middle.block
  %indvars.iv133.ph = phi i64 [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph118 ], [ %i.bl, %middle.block ] ; 4 uses
  %indvars.iv131.ph = phi i64 [ %i.bf, %vector.memcheck ], [ %i.bf, %.lr.ph118 ], [ %i.bm, %middle.block ] ; 2 uses
  %i.bq = sub nsw i64 %wide.trip.count139, %indvars.iv133.ph
  %xtraiter = and i64 %i.bq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv133.prol = phi i64 [ %indvars.iv.next134.prol, %scalar.ph.prol ], [ %indvars.iv133.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv131.prol = phi i64 [ %indvars.iv.next132.prol, %scalar.ph.prol ], [ %indvars.iv131.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %indvars.iv.next134.prol = add nsw i64 %indvars.iv133.prol, 1 ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %indvars.iv133.prol
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !19
  %indvars.iv.next132.prol = add nuw nsw i64 %indvars.iv131.prol, 1 ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv131.prol
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !19
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !96

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next132.lcssa225.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next132.prol, %scalar.ph.prol ]
  %indvars.iv133.unr = phi i64 [ %indvars.iv133.ph, %scalar.ph.preheader ], [ %indvars.iv.next134.prol, %scalar.ph.prol ]
  %indvars.iv131.unr = phi i64 [ %indvars.iv131.ph, %scalar.ph.preheader ], [ %indvars.iv.next132.prol, %scalar.ph.prol ]
  %i.bu = sub nsw i64 %indvars.iv133.ph, %wide.trip.count139
  %i.bv = icmp ugt i64 %i.bu, -4
  br i1 %i.bv, label %._crit_edge.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv133 = phi i64 [ %indvars.iv.next134.3, %scalar.ph ], [ %indvars.iv133.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv131 = phi i64 [ %indvars.iv.next132.3, %scalar.ph ], [ %indvars.iv131.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %indvars.iv133
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !19
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv131
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !19
  %i.bz = getelementptr [4 x i8], ptr %i.bd, i64 %indvars.iv133
  %i.ca = getelementptr i8, ptr %i.bz, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !19
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv131
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i32 %i.cb, ptr %i.cd, align 4, !tbaa !19
  %i.ce = getelementptr [4 x i8], ptr %i.bd, i64 %indvars.iv133
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !19
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv131
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i32 %i.cg, ptr %i.ci, align 4, !tbaa !19
  %indvars.iv.next134.3 = add nsw i64 %indvars.iv133, 4 ; 2 uses
  %i.cj = getelementptr [4 x i8], ptr %i.bd, i64 %indvars.iv133
  %i.ck = getelementptr i8, ptr %i.cj, i64 12
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !19
  %indvars.iv.next132.3 = add nuw nsw i64 %indvars.iv131, 4 ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv131
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  store i32 %i.cl, ptr %i.cn, align 4, !tbaa !19
  %exitcond140.not.3 = icmp eq i64 %indvars.iv.next134.3, %wide.trip.count139
  br i1 %exitcond140.not.3, label %._crit_edge.loopexit, label %scalar.ph, !llvm.loop !97

._crit_edge.loopexit:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next132.lcssa = phi i64 [ %i.bm, %middle.block ], [ %indvars.iv.next132.lcssa225.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next132.3, %scalar.ph ]
  %i.co = trunc nsw i64 %indvars.iv.next132.lcssa to i32
  br label %.loopexit.sink.split

.loopexit111.loopexit.split.loop.exit:            ; preds = %bb.g
  %i.cp = trunc nuw nsw i64 %i.ak to i32
  br label %.loopexit111

.loopexit111.loopexit.split.loop.exit174:         ; preds = %bb.j
  %indvars.le179 = trunc i64 %indvars.iv to i32
  %i.cq = add nuw nsw i32 %indvars.le179, 1
  br label %.loopexit111

.loopexit111:                                     ; preds = %.loopexit111.loopexit.split.loop.exit, %.loopexit111.loopexit.split.loop.exit174, %bb.d
  %.288 = phi i32 [ 0, %bb.d ], [ %.086114, %.loopexit111.loopexit.split.loop.exit ], [ %i.au, %.loopexit111.loopexit.split.loop.exit174 ] ; 3 uses
  %.4 = phi i32 [ 0, %bb.d ], [ %i.cp, %.loopexit111.loopexit.split.loop.exit ], [ %i.cq, %.loopexit111.loopexit.split.loop.exit174 ] ; 3 uses
  %i.cr = add nsw i32 %.4, %i.k
  %i.cs = add nsw i32 %.288, %i.m
  %i.ct = icmp sgt i32 %i.cr, %i.cs
  br i1 %i.ct, label %.loopexit, label %.preheader107

.preheader107:                                    ; preds = %.loopexit111
  %i.cu = icmp slt i32 %.288, %i.k
  br i1 %i.cu, label %.lr.ph121, label %.loopexit.sink.split

.lr.ph121:                                        ; preds = %.preheader107
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 6 uses
  %i.cx = zext i32 %.4 to i64                     ; 5 uses
  %i.cy = sext i32 %.288 to i64                   ; 6 uses
  %wide.trip.count150 = zext nneg i32 %i.k to i64 ; 4 uses
  %i.cz = sub nsw i64 %wide.trip.count150, %i.cy  ; 3 uses
  %min.iters.check212 = icmp ult i64 %i.cz, 16
  br i1 %min.iters.check212, label %scalar.ph211.preheader, label %vector.memcheck209

vector.memcheck209:                               ; preds = %.lr.ph121
  %i.da = shl nuw nsw i64 %i.cx, 2
  %6 = add i64 %i.da, %i.c
  %7 = shl nsw i64 %i.cy, 2
  %i.db = add i64 %7, %i.a
  %i.dc = sub i64 %i.db, %6
  %diff.check210 = icmp ugt i64 %i.dc, -32
  br i1 %diff.check210, label %scalar.ph211.preheader, label %vector.ph213

vector.ph213:                                     ; preds = %vector.memcheck209
  %n.vec214 = and i64 %i.cz, -8                   ; 4 uses
  %i.dd = add nsw i64 %n.vec214, %i.cy
  %i.de = add nsw i64 %n.vec214, %i.cx            ; 2 uses
  %invariant.gep266 = getelementptr [4 x i8], ptr %i.cv, i64 %i.cy
  %invariant.gep268 = getelementptr [4 x i8], ptr %i.cw, i64 %i.cx
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph213
  %index216 = phi i64 [ 0, %vector.ph213 ], [ %index.next219, %vector.body215 ] ; 3 uses
  %gep267 = getelementptr [4 x i8], ptr %invariant.gep266, i64 %index216 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %gep267, i64 16
  %wide.load217 = load <4 x i32>, ptr %gep267, align 4, !tbaa !19
  %wide.load218 = load <4 x i32>, ptr %i.df, align 4, !tbaa !19
  %gep269 = getelementptr [4 x i8], ptr %invariant.gep268, i64 %index216 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %gep269, i64 16
  store <4 x i32> %wide.load217, ptr %gep269, align 4, !tbaa !19
  store <4 x i32> %wide.load218, ptr %i.dg, align 4, !tbaa !19
  %index.next219 = add nuw i64 %index216, 8       ; 2 uses
  %i.dh = icmp eq i64 %index.next219, %n.vec214
  br i1 %i.dh, label %middle.block220, label %vector.body215, !llvm.loop !98

middle.block220:                                  ; preds = %vector.body215
  %cmp.n221 = icmp eq i64 %i.cz, %n.vec214
  br i1 %cmp.n221, label %._crit_edge122.loopexit, label %scalar.ph211.preheader

scalar.ph211.preheader:                           ; preds = %vector.memcheck209, %.lr.ph121, %middle.block220
  %indvars.iv144.ph = phi i64 [ %i.cy, %vector.memcheck209 ], [ %i.cy, %.lr.ph121 ], [ %i.dd, %middle.block220 ] ; 4 uses
  %indvars.iv142.ph = phi i64 [ %i.cx, %vector.memcheck209 ], [ %i.cx, %.lr.ph121 ], [ %i.de, %middle.block220 ] ; 2 uses
  %i.di = sub nsw i64 %wide.trip.count150, %indvars.iv144.ph
  %xtraiter244 = and i64 %i.di, 3                 ; 2 uses
  %lcmp.mod245.not = icmp eq i64 %xtraiter244, 0
  br i1 %lcmp.mod245.not, label %scalar.ph211.prol.loopexit, label %scalar.ph211.prol

scalar.ph211.prol:                                ; preds = %scalar.ph211.preheader, %scalar.ph211.prol
  %indvars.iv144.prol = phi i64 [ %indvars.iv.next145.prol, %scalar.ph211.prol ], [ %indvars.iv144.ph, %scalar.ph211.preheader ] ; 2 uses
  %indvars.iv142.prol = phi i64 [ %indvars.iv.next143.prol, %scalar.ph211.prol ], [ %indvars.iv142.ph, %scalar.ph211.preheader ] ; 2 uses
  %prol.iter246 = phi i64 [ %prol.iter246.next, %scalar.ph211.prol ], [ 0, %scalar.ph211.preheader ]
  %indvars.iv.next145.prol = add nsw i64 %indvars.iv144.prol, 1 ; 2 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %indvars.iv144.prol
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !19
  %indvars.iv.next143.prol = add nuw nsw i64 %indvars.iv142.prol, 1 ; 3 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv142.prol
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !19
  %prol.iter246.next = add i64 %prol.iter246, 1   ; 2 uses
  %prol.iter246.cmp.not = icmp eq i64 %prol.iter246.next, %xtraiter244
  br i1 %prol.iter246.cmp.not, label %scalar.ph211.prol.loopexit, label %scalar.ph211.prol, !llvm.loop !99

scalar.ph211.prol.loopexit:                       ; preds = %scalar.ph211.prol, %scalar.ph211.preheader
  %indvars.iv.next143.lcssa224.unr = phi i64 [ poison, %scalar.ph211.preheader ], [ %indvars.iv.next143.prol, %scalar.ph211.prol ]
  %indvars.iv144.unr = phi i64 [ %indvars.iv144.ph, %scalar.ph211.preheader ], [ %indvars.iv.next145.prol, %scalar.ph211.prol ]
  %indvars.iv142.unr = phi i64 [ %indvars.iv142.ph, %scalar.ph211.preheader ], [ %indvars.iv.next143.prol, %scalar.ph211.prol ]
  %i.dm = sub nsw i64 %indvars.iv144.ph, %wide.trip.count150
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %._crit_edge122.loopexit, label %scalar.ph211

scalar.ph211:                                     ; preds = %scalar.ph211.prol.loopexit, %scalar.ph211
  %indvars.iv144 = phi i64 [ %indvars.iv.next145.3, %scalar.ph211 ], [ %indvars.iv144.unr, %scalar.ph211.prol.loopexit ] ; 5 uses
  %indvars.iv142 = phi i64 [ %indvars.iv.next143.3, %scalar.ph211 ], [ %indvars.iv142.unr, %scalar.ph211.prol.loopexit ] ; 5 uses
  %i.do = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %indvars.iv144
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !19
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv142
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !19
  %i.dr = getelementptr [4 x i8], ptr %i.cv, i64 %indvars.iv144
  %i.ds = getelementptr i8, ptr %i.dr, i64 4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !19
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv142
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  store i32 %i.dt, ptr %i.dv, align 4, !tbaa !19
  %i.dw = getelementptr [4 x i8], ptr %i.cv, i64 %indvars.iv144
  %i.dx = getelementptr i8, ptr %i.dw, i64 8
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !19
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv142
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i32 %i.dy, ptr %i.ea, align 4, !tbaa !19
  %indvars.iv.next145.3 = add nsw i64 %indvars.iv144, 4 ; 2 uses
  %i.eb = getelementptr [4 x i8], ptr %i.cv, i64 %indvars.iv144
  %i.ec = getelementptr i8, ptr %i.eb, i64 12
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !19
  %indvars.iv.next143.3 = add nuw nsw i64 %indvars.iv142, 4 ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv142
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  store i32 %i.ed, ptr %i.ef, align 4, !tbaa !19
  %exitcond151.not.3 = icmp eq i64 %indvars.iv.next145.3, %wide.trip.count150
  br i1 %exitcond151.not.3, label %._crit_edge122.loopexit, label %scalar.ph211, !llvm.loop !100

._crit_edge122.loopexit:                          ; preds = %scalar.ph211.prol.loopexit, %scalar.ph211, %middle.block220
  %indvars.iv.next143.lcssa = phi i64 [ %i.de, %middle.block220 ], [ %indvars.iv.next143.lcssa224.unr, %scalar.ph211.prol.loopexit ], [ %indvars.iv.next143.3, %scalar.ph211 ]
  %i.eg = trunc nsw i64 %indvars.iv.next143.lcssa to i32
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.c, %.preheader107, %._crit_edge122.loopexit, %.preheader108, %._crit_edge.loopexit, %.preheader
  %.5.lcssa.sink = phi i32 [ %i.co, %._crit_edge.loopexit ], [ %i.l, %.preheader ], [ %i.eg, %._crit_edge122.loopexit ], [ %.2, %.preheader108 ], [ %.4, %.preheader107 ], [ %i.l, %bb.c ]
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 4
  %i.ej = shl i32 %.5.lcssa.sink, 24
  %i.ek = zext i32 %i.ej to i64
  %i.el = and i64 %i.ei, -4278190081
  %i.em = or disjoint i64 %i.el, %i.ek
  store i64 %i.em, ptr %i.eh, align 4
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !25
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !25
  %i.er = or i32 %i.eq, %i.eo
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.er, ptr %i.es, align 8, !tbaa !25
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.b, %.loopexit.sink.split, %.preheader109, %.loopexit111, %.loopexit112
  %.095 = phi i32 [ 0, %.loopexit111 ], [ 0, %bb.b ], [ 0, %.loopexit112 ], [ 1, %.loopexit.sink.split ], [ 0, %.preheader109 ], [ 0, %bb.l ]
  ret i32 %.095
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @If_CutMerge(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.d = ptrtoaddr ptr %3 to i64                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.f = load i64, ptr %i.e, align 4              ; 2 uses
  %i.g = trunc i64 %i.f to i32                    ; 3 uses
  %i.h = lshr i32 %i.g, 16
  %i.i = and i32 %i.h, 255                        ; 2 uses
  %i.j = lshr i32 %i.g, 24                        ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.l = load i64, ptr %i.k, align 4
  %i.m = trunc i64 %i.l to i32
  %i.n = lshr i32 %i.m, 24                        ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 9 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.preheader, label %.preheader47.lr.ph

.preheader47.lr.ph:                               ; preds = %bb.a
  %.not54 = icmp eq i32 %i.j, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  br i1 %.not54, label %.preheader47.preheader, label %.preheader47.us.preheader

.preheader47.us.preheader:                        ; preds = %.preheader47.lr.ph
  %wide.trip.count63 = zext nneg i32 %i.n to i64
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %.preheader47.us

.preheader47.preheader:                           ; preds = %.preheader47.lr.ph
  %i.s = lshr i64 %i.f, 24
  %i.t = and i64 %i.s, 255                        ; 7 uses
  %i.u = zext nneg i32 %i.i to i64                ; 2 uses
  %wide.trip.count70 = zext nneg i32 %i.n to i64  ; 2 uses
  %i.v = sub nsw i64 %i.u, %i.t
  %i.w = add nsw i64 %wide.trip.count70, -1
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.w)
  %i.y = add nsw i64 %i.x, 1                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.y, 25
  br i1 %min.iters.check, label %.preheader47.preheader103, label %vector.memcheck

.preheader47.preheader103:                        ; preds = %vector.body, %vector.memcheck, %.preheader47.preheader
  %indvars.iv67.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader47.preheader ], [ %n.vec, %vector.body ]
  %indvars.iv65.ph = phi i64 [ %i.t, %vector.memcheck ], [ %i.t, %.preheader47.preheader ], [ %i.aj, %vector.body ]
  br label %.preheader47

vector.memcheck:                                  ; preds = %.preheader47.preheader
  %i.z = shl nuw nsw i64 %i.t, 2                  ; 2 uses
  %i.aa = add i64 %i.z, %i.d
  %i.ab = sub i64 %i.aa, %i.c
  %i.ac = add i64 %i.ab, -269
  %diff.check = icmp ult i64 %i.ac, 31
  %i.ad = sub i64 %i.b, %i.c
  %i.ae = add i64 %i.ad, -269
  %diff.check84 = icmp ult i64 %i.ae, 31
  %conflict.rdx = or i1 %diff.check, %diff.check84
  %4 = add i64 %i.z, %i.d
  %i.af = sub i64 %i.b, %4
  %diff.check85 = icmp ugt i64 %i.af, -32
  %conflict.rdx86 = or i1 %conflict.rdx, %diff.check85
  br i1 %conflict.rdx86, label %.preheader47.preheader103, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ag = and i64 %i.y, 7                         ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  %i.ai = select i1 %i.ah, i64 8, i64 %i.ag
  %n.vec = sub i64 %i.y, %i.ai                    ; 3 uses
  %i.aj = add i64 %i.t, %n.vec
  %i.ak = trunc nuw nsw i64 %i.t to i32
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <4 x i32> %vec.ind, ptr %i.am, align 4, !tbaa !19
  store <4 x i32> %step.add, ptr %i.an, align 4, !tbaa !19
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load = load <4 x i32>, ptr %i.ao, align 4, !tbaa !19
  %wide.load87 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !19
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <4 x i32> %wide.load, ptr %i.aq, align 4, !tbaa !19
  store <4 x i32> %wide.load87, ptr %i.ar, align 4, !tbaa !19
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %.preheader47.preheader103, label %vector.body, !llvm.loop !101

.preheader47.us:                                  ; preds = %.preheader47.us.preheader, %bb.f
  %indvars.iv60 = phi i64 [ 0, %.preheader47.us.preheader ], [ %indvars.iv.next61, %bb.f ] ; 4 uses
  %.052.us = phi i32 [ %i.j, %.preheader47.us.preheader ], [ %.1.us, %bb.f ] ; 5 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv60 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !19
  br label %bb.b

bb.b:                                             ; preds = %.preheader47.us, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader47.us ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !19
  %i.ax = icmp eq i32 %i.au, %i.aw
  br i1 %i.ax, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..critedge_crit_edge.us, label %bb.b, !llvm.loop !102

bb.d:                                             ; preds = %..critedge_crit_edge.us
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv60
  store i32 %.052.us, ptr %i.ay, align 4, !tbaa !19
  %i.az = load i32, ptr %i.at, align 4, !tbaa !19
  %i.ba = add nsw i32 %.052.us, 1
  %i.bb = sext i32 %.052.us to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bb
  store i32 %i.az, ptr %i.bc, align 4, !tbaa !19
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.bd = trunc nuw nsw i64 %indvars.iv to i32
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv60
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.us = phi i32 [ %.052.us, %bb.e ], [ %i.ba, %bb.d ] ; 2 uses
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %.preheader, label %.preheader47.us, !llvm.loop !103

..critedge_crit_edge.us:                          ; preds = %bb.c
  %i.bf = icmp eq i32 %.052.us, %i.i
  br i1 %i.bf, label %.loopexit, label %bb.d

.preheader47:                                     ; preds = %.preheader47.preheader103, %bb.g
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %bb.g ], [ %indvars.iv67.ph, %.preheader47.preheader103 ] ; 3 uses
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %bb.g ], [ %indvars.iv65.ph, %.preheader47.preheader103 ] ; 4 uses
  %i.bg = icmp eq i64 %indvars.iv65, %i.u
  br i1 %i.bg, label %.loopexit, label %bb.g

.preheader.loopexit:                              ; preds = %bb.g
  %i.bh = trunc nuw nsw i64 %indvars.iv.next66 to i32
  br label %.preheader

.preheader:                                       ; preds = %bb.f, %.preheader.loopexit, %bb.a
  %.0.lcssa = phi i32 [ %i.j, %bb.a ], [ %i.bh, %.preheader.loopexit ], [ %.1.us, %bb.f ]
  %.not55 = icmp eq i32 %i.j, 0
  br i1 %.not55, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count75 = zext nneg i32 %i.j to i64  ; 5 uses
  %min.iters.check92 = icmp ult i32 %i.g, 134217728
  %i.bi = sub i64 %i.a, %i.d
  %diff.check90 = icmp ugt i64 %i.bi, -32
  %or.cond = or i1 %min.iters.check92, %diff.check90
  br i1 %or.cond, label %.lr.ph.preheader102, label %vector.ph93

vector.ph93:                                      ; preds = %.lr.ph.preheader
  %n.vec94 = and i64 %wide.trip.count75, 248      ; 3 uses
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph93
  %index96 = phi i64 [ 0, %vector.ph93 ], [ %index.next99, %vector.body95 ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index96 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %wide.load97 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !19
  %wide.load98 = load <4 x i32>, ptr %i.bk, align 4, !tbaa !19
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index96 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <4 x i32> %wide.load97, ptr %i.bl, align 4, !tbaa !19
  store <4 x i32> %wide.load98, ptr %i.bm, align 4, !tbaa !19
  %index.next99 = add nuw i64 %index96, 8         ; 2 uses
  %i.bn = icmp eq i64 %index.next99, %n.vec94
  br i1 %i.bn, label %middle.block100, label %vector.body95, !llvm.loop !104

middle.block100:                                  ; preds = %vector.body95
  %cmp.n = icmp eq i64 %n.vec94, %wide.trip.count75
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader102

.lr.ph.preheader102:                              ; preds = %.lr.ph.preheader, %middle.block100
  %indvars.iv72.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec94, %middle.block100 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count75, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader102, %.lr.ph.prol
  %indvars.iv72.prol = phi i64 [ %indvars.iv.next73.prol, %.lr.ph.prol ], [ %indvars.iv72.ph, %.lr.ph.preheader102 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader102 ]
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv72.prol
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !19
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv72.prol
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !19
  %indvars.iv.next73.prol = add nuw nsw i64 %indvars.iv72.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !105

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader102
  %indvars.iv72.unr = phi i64 [ %indvars.iv72.ph, %.lr.ph.preheader102 ], [ %indvars.iv.next73.prol, %.lr.ph.prol ]
  %i.br = sub nsw i64 %indvars.iv72.ph, %wide.trip.count75
  %i.bs = icmp ugt i64 %i.br, -4
  br i1 %i.bs, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %.preheader47
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv67
  %i.bu = trunc nuw nsw i64 %indvars.iv65 to i32
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !19
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv67
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !19
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv65
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !19
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count70
  br i1 %exitcond71.not, label %.preheader.loopexit, label %.preheader47, !llvm.loop !106

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv72 = phi i64 [ %indvars.iv.next73.3, %.lr.ph ], [ %indvars.iv72.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv72
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !19
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv72
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !19
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next73
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !19
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next73
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !19
  %indvars.iv.next73.1 = add nuw nsw i64 %indvars.iv72, 2 ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next73.1
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !19
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next73.1
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !19
  %indvars.iv.next73.2 = add nuw nsw i64 %indvars.iv72, 3 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next73.2
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !19
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next73.2
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !19
  %indvars.iv.next73.3 = add nuw nsw i64 %indvars.iv72, 4 ; 2 uses
  %exitcond76.not.3 = icmp eq i64 %indvars.iv.next73.3, %wide.trip.count75
  br i1 %exitcond76.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !107

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block100, %.preheader
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 4
  %i.cm = shl i32 %.0.lcssa, 24
  %i.cn = zext i32 %i.cm to i64
  %i.co = and i64 %i.cl, -4278190081
  %i.cp = or disjoint i64 %i.co, %i.cn
  store i64 %i.cp, ptr %i.ck, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !25
end_hunk_0
