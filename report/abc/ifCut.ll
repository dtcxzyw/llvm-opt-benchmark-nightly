Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifCut?download=true
inline.NumInlined: 87
inline.NumDeleted: 27
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@If_CutPrint:bb.a
  %i.l = load i64, ptr %i.a, align 4
  %i.m = lshr i64 %i.l, 24
  %i.n = and i64 %i.m, 255
  %i.o = icmp samesign ult i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %bb.b, label %._crit_edge, !llvm.loop !26

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
  %i.b = load i16, ptr %i.a, align 2, !tbaa !8    ; 3 uses
  %i.c = icmp sgt i16 %i.b, 0
  br i1 %i.c, label %.lr.ph72, label %If_CutCheckDominance.exit58

.lr.ph72:                                         ; preds = %bb.a
  %i.d = zext nneg i16 %i.b to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 3 uses
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
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !16   ; 6 uses
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
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !16
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
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !29
  %i.af = load i32, ptr %i.h, align 8, !tbaa !29  ; 2 uses
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
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !18
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !18
  %i.am = icmp eq i32 %i.aj, %i.al
  br i1 %i.am, label %._crit_edge.us.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %If_CutCheckDominance.exit.thread, label %bb.i, !llvm.loop !30

._crit_edge.us.i:                                 ; preds = %bb.i
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %exitcond31.not.i = icmp eq i64 %indvars.iv.next28.i, %wide.trip.count30.i
  br i1 %exitcond31.not.i, label %If_CutCheckDominance.exit, label %.preheader.us.i, !llvm.loop !31

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
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %scevgep78, i64 %i.at, i1 false), !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %If_CutCheckDominance.exit
  %i.au = sext i16 %i.k to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.au
  store ptr %i.o, ptr %i.av, align 8, !tbaa !16
  %i.aw = add i16 %i.k, -1                        ; 2 uses
  store i16 %i.aw, ptr %i.a, align 2, !tbaa !8
  %i.ax = add nsw i32 %.03570, -1
  br label %If_CutCheckDominance.exit.thread

bb.k:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !29 ; 2 uses
  %i.ba = load i32, ptr %i.h, align 8, !tbaa !29
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
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.preheader.us.i49
  %indvars.iv.i51 = phi i64 [ 0, %.preheader.us.i49 ], [ %indvars.iv.next.i52, %bb.n ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i51
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !18
  %i.bh = icmp eq i32 %i.be, %i.bg
  br i1 %i.bh, label %._crit_edge.us.i55, label %bb.n

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next.i52 = add nuw nsw i64 %indvars.iv.i51, 1 ; 2 uses
  %exitcond.not.i53 = icmp eq i64 %indvars.iv.next.i52, %wide.trip.count.i48
  br i1 %exitcond.not.i53, label %If_CutCheckDominance.exit.thread, label %bb.m, !llvm.loop !30

._crit_edge.us.i55:                               ; preds = %bb.m
  %indvars.iv.next28.i56 = add nuw nsw i64 %indvars.iv27.i50, 1 ; 2 uses
  %exitcond31.not.i57 = icmp eq i64 %indvars.iv.next28.i56, %wide.trip.count30.i47
  br i1 %exitcond31.not.i57, label %If_CutCheckDominance.exit58, label %.preheader.us.i49, !llvm.loop !31

If_CutCheckDominance.exit.thread:                 ; preds = %bb.n, %bb.j, %bb.f, %._crit_edge, %bb.k, %bb.g, %bb.e
  %i.bi = phi i16 [ %i.k, %bb.e ], [ 1, %bb.f ], [ %i.k, %bb.g ], [ %i.aw, %._crit_edge ], [ %i.k, %bb.j ], [ %i.k, %bb.k ], [ %i.k, %bb.n ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.e ], [ 0, %bb.f ], [ %.03570, %bb.g ], [ %i.ax, %._crit_edge ], [ %.03570, %bb.j ], [ %.03570, %bb.k ], [ %.03570, %bb.n ]
  %i.bj = add nsw i32 %.1, 1                      ; 2 uses
  %i.bk = sext i16 %i.bi to i32                   ; 2 uses
  %i.bl = icmp slt i32 %i.bj, %i.bk
  br i1 %i.bl, label %bb.b, label %If_CutCheckDominance.exit58, !llvm.loop !32

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
  %i.x = load i32, ptr %i.w, align 4, !tbaa !18
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv182
  %i.z = load i32, ptr %i.y, align 4, !tbaa !18
  %.not = icmp eq i32 %i.x, %i.z
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv182
  %i.ab = trunc nuw nsw i64 %indvars.iv182 to i32 ; 3 uses
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !18
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv182
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !18
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv182
  store i32 %i.ab, ptr %i.ad, align 4, !tbaa !18
  %i.ae = load i32, ptr %i.w, align 4, !tbaa !18
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv182
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !18
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %exitcond187.not = icmp eq i64 %indvars.iv.next183, %wide.trip.count186
  br i1 %exitcond187.not, label %._crit_edge158, label %bb.b, !llvm.loop !33

._crit_edge158:                                   ; preds = %bb.c, %.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 4
  %i.ai = shl i32 %i.m, 24
  %i.aj = zext i32 %i.ai to i64
  %i.ak = and i64 %i.ah, -4278190081
  %i.al = or disjoint i64 %i.ak, %i.aj
  store i64 %i.al, ptr %i.ag, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load i32, ptr %i.am, align 8, !tbaa !29
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !29
  %i.aq = or i32 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !29
  %i.as = sub nsw i32 32, %i.l
  %i.at = lshr i32 -1, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i32 %i.at, ptr %i.au, align 8, !tbaa !34
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  store i32 0, ptr %i.av, align 8, !tbaa !34
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
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !18 ; 2 uses
  %i.bi = sext i32 %.0119145 to i64               ; 3 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bi ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !18 ; 2 uses
  %i.bl = icmp slt i32 %i.bh, %i.bk
  br i1 %i.bl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bf
  store i32 %indvars, ptr %i.bm, align 4, !tbaa !18
  %i.bn = add nsw i32 %.1124144, 1                ; 2 uses
  %i.bo = load i32, ptr %i.bg, align 4, !tbaa !18
  %i.bp = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.be, i64 %indvars.iv
  store i32 %i.bo, ptr %i.bq, align 4, !tbaa !18
  %i.br = icmp eq i32 %i.bn, %i.h
  br i1 %i.br, label %.loopexit142.loopexit.split.loop.exit, label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.bs = icmp sgt i32 %i.bh, %i.bk
  br i1 %i.bs, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bi
  store i32 %indvars, ptr %i.bt, align 4, !tbaa !18
  %i.bu = add nsw i32 %.0119145, 1                ; 2 uses
  %i.bv = load i32, ptr %i.bj, align 4, !tbaa !18
  %i.bw = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.be, i64 %indvars.iv
  store i32 %i.bv, ptr %i.bx, align 4, !tbaa !18
  %i.by = icmp eq i32 %i.bu, %i.l
  br i1 %i.by, label %.loopexit143.loopexit.split.loop.exit, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.bz = shl nuw i32 1, %indvars
  %i.ca = load i32, ptr %i.av, align 8, !tbaa !34
  %i.cb = or i32 %i.ca, %i.bz
  store i32 %i.cb, ptr %i.av, align 8, !tbaa !34
  %i.cc = sext i32 %.0147 to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.cc
  store i32 %indvars, ptr %i.cd, align 4, !tbaa !18
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bi
  store i32 %indvars, ptr %i.ce, align 4, !tbaa !18
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bf
  store i32 %indvars, ptr %i.cf, align 4, !tbaa !18
  %i.cg = add nsw i32 %.1124144, 1                ; 3 uses
  %i.ch = load i32, ptr %i.bg, align 4, !tbaa !18
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.be, i64 %indvars.iv
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !18
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
  %i.da = add i64 %i.cz, %i.d
  %i.db = shl nsw i64 %i.cx, 2                    ; 2 uses
  %i.dc = add i64 %i.db, %i.c
  %i.dd = sub i64 %i.da, %i.dc
  %i.de = add i64 %i.dd, -141
  %diff.check = icmp ult i64 %i.de, 31
  %i.df = sub i64 %i.b, %i.c
  %i.dg = add i64 %i.df, -141
  %diff.check227.a = icmp ult i64 %i.dg, 31
  %conflict.rdx = or i1 %diff.check, %diff.check227.a
  %i.dh = add i64 %i.cz, %i.d
  %i.di = add i64 %i.db, %i.b
  %i.dj = sub i64 %i.di, %i.dh
  %diff.check228 = icmp ugt i64 %i.dj, -32
  %conflict.rdx229 = or i1 %conflict.rdx, %diff.check228
  br i1 %conflict.rdx229, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cy, -8                      ; 4 uses
  %i.dk = add nsw i64 %n.vec, %i.cx
  %i.dl = add nsw i64 %n.vec, %i.cw               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.2, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  %invariant.gep = getelementptr [4 x i8], ptr %i.cv, i64 %i.cw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.dm = add i64 %index, %i.cx                   ; 2 uses
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store <4 x i32> %vec.ind, ptr %i.dn, align 4, !tbaa !18
  store <4 x i32> %step.add, ptr %i.do, align 4, !tbaa !18
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.dm ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load = load <4 x i32>, ptr %i.dp, align 4, !tbaa !18
  %wide.load230 = load <4 x i32>, ptr %i.dq, align 4, !tbaa !18
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %wide.load, ptr %gep, align 4, !tbaa !18
  store <4 x i32> %wide.load230, ptr %i.dr, align 4, !tbaa !18
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cy, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph150, %middle.block
  %indvars.iv164.ph = phi i64 [ %i.cx, %vector.memcheck ], [ %i.cx, %.lr.ph150 ], [ %i.dk, %middle.block ] ; 6 uses
  %indvars.iv162.ph = phi i64 [ %i.cw, %vector.memcheck ], [ %i.cw, %.lr.ph150 ], [ %i.dl, %middle.block ] ; 4 uses
  %i.dt = sub nsw i64 %wide.trip.count170, %indvars.iv164.ph
  %xtraiter = and i64 %i.dt, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol
end_hunk_0
