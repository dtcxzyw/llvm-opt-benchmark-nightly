inline.NumInlined: 112
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN7NCrypto7NSevenZ8CKeyInfo15CalculateDigestEv:bb.a
  %exitcond.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count
  br i1 %exitcond.not, label %.preheader22, label %scalar.ph, !llvm.loop !26

.preheader.loopexit:                              ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block60
  %indvars.iv.next40.lcssa = phi i64 [ %i.ah, %vec.epilog.middle.block ], [ %i.ab, %middle.block60 ], [ %indvars.iv.next40, %vec.epilog.scalar.ph ]
  %i.an = trunc nuw nsw i64 %indvars.iv.next40.lcssa to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader22
  %.1.lcssa = phi i32 [ %i.f, %.preheader22 ], [ %i.an, %.preheader.loopexit ] ; 3 uses
  %i.ao = icmp ult i32 %.1.lcssa, 32
  br i1 %i.ao, label %.lr.ph32, label %.loopexit

.lr.ph32:                                         ; preds = %.preheader
  %i.ap = zext nneg i32 %.1.lcssa to i64
  %i.aq = getelementptr i8, ptr %0, i64 %i.ap
  %scevgep = getelementptr i8, ptr %i.aq, i64 48
  %narrow = sub nuw nsw i32 32, %.1.lcssa
  %i.ar = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.ar, i1 false), !tbaa !17
  br label %.loopexit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %vec.epilog.scalar.ph ], [ %indvars.iv41.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %vec.epilog.scalar.ph ], [ %indvars.iv39.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv41
  %i.at = load i8, ptr %i.as, align 1, !tbaa !17
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv39
  store i8 %i.at, ptr %i.au, align 1, !tbaa !17
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %i.av = icmp ugt i64 %i.m, %indvars.iv.next42
  %i.aw = icmp samesign ult i64 %indvars.iv39, 31
  %i.ax = and i1 %i.av, %i.aw
  br i1 %i.ax, label %vec.epilog.scalar.ph, label %.preheader.loopexit, !llvm.loop !27

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @Sha256_Init(ptr noundef nonnull %1)
  %i.ay = load i32, ptr %0, align 8, !tbaa !14
  %i.az = zext nneg i32 %i.ay to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 0, ptr %i.b, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 5 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 6 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 7 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @Sha256_Final(ptr noundef nonnull %1, ptr noundef nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %.loopexit

bb.d:                                             ; preds = %bb.b, %bb.l
  %.01825 = phi i64 [ 0, %bb.b ], [ %i.cg, %bb.l ]
  %i.bm = load i32, ptr %i.bb, align 4, !tbaa !8
  %i.bn = zext i32 %i.bm to i64
  call void @Sha256_Update(ptr noundef nonnull %1, ptr noundef nonnull %i.ba, i64 noundef %i.bn)
  %i.bo = load ptr, ptr %i.bc, align 8, !tbaa !19
  %i.bp = load i64, ptr %i.bd, align 8, !tbaa !18
  call void @Sha256_Update(ptr noundef nonnull %1, ptr noundef %i.bo, i64 noundef %i.bp)
  call void @Sha256_Update(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i64 noundef 8)
  %i.bq = load i8, ptr %i.b, align 8, !tbaa !17
  %i.br = add i8 %i.bq, 1                         ; 2 uses
  store i8 %i.br, ptr %i.b, align 8, !tbaa !17
  %.not = icmp eq i8 %i.br, 0
  br i1 %.not, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.bs = load i8, ptr %i.be, align 1, !tbaa !17
  %i.bt = add i8 %i.bs, 1                         ; 2 uses
  store i8 %i.bt, ptr %i.be, align 1, !tbaa !17
  %.not.1 = icmp eq i8 %i.bt, 0
  br i1 %.not.1, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.bu = load i8, ptr %i.bf, align 2, !tbaa !17
  %i.bv = add i8 %i.bu, 1                         ; 2 uses
  store i8 %i.bv, ptr %i.bf, align 2, !tbaa !17
  %.not.2 = icmp eq i8 %i.bv, 0
  br i1 %.not.2, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.bw = load i8, ptr %i.bg, align 1, !tbaa !17
  %i.bx = add i8 %i.bw, 1                         ; 2 uses
  store i8 %i.bx, ptr %i.bg, align 1, !tbaa !17
  %.not.3 = icmp eq i8 %i.bx, 0
  br i1 %.not.3, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.by = load i8, ptr %i.bh, align 4, !tbaa !17
  %i.bz = add i8 %i.by, 1                         ; 2 uses
  store i8 %i.bz, ptr %i.bh, align 4, !tbaa !17
  %.not.4 = icmp eq i8 %i.bz, 0
  br i1 %.not.4, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ca = load i8, ptr %i.bi, align 1, !tbaa !17
  %i.cb = add i8 %i.ca, 1                         ; 2 uses
  store i8 %i.cb, ptr %i.bi, align 1, !tbaa !17
  %.not.5 = icmp eq i8 %i.cb, 0
  br i1 %.not.5, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.cc = load i8, ptr %i.bj, align 2, !tbaa !17
  %i.cd = add i8 %i.cc, 1                         ; 2 uses
  store i8 %i.cd, ptr %i.bj, align 2, !tbaa !17
  %.not.6 = icmp eq i8 %i.cd, 0
  br i1 %.not.6, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ce = load i8, ptr %i.bk, align 1, !tbaa !17
  %i.cf = add i8 %i.ce, 1
  store i8 %i.cf, ptr %i.bk, align 1, !tbaa !17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.cg = add i64 %.01825, 1                      ; 2 uses
  %.018.highbits = lshr i64 %i.cg, %i.az
  %i.ch = icmp eq i64 %.018.highbits, 0
  br i1 %i.ch, label %bb.d, label %bb.c, !llvm.loop !28

.loopexit:                                        ; preds = %.lr.ph32, %.preheader, %bb.c
  ret void
}

declare void @Sha256_Init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @Sha256_Update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @Sha256_Final(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN7NCrypto7NSevenZ13CKeyInfoCache4FindERNS0_8CKeyInfoE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !29   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !8
  %.fr82 = freeze i32 %i.g                        ; 4 uses
  %i.h = load i32, ptr %1, align 8                ; 4 uses
  %.not17.i = icmp eq i32 %.fr82, 0
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %wide.trip.count.i = zext i32 %.fr82 to i64     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i64, ptr %i.j, align 8
  %.fr83 = freeze i64 %i.k                        ; 5 uses
  %i.l = icmp eq i64 %.fr83, 0                    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %wide.trip.count115 = zext nneg i32 %i.b to i64 ; 4 uses
  br i1 %.not17.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.l, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %.critedge.us.us
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %.critedge.us.us ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv112
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !32   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !8
  %.not.i.us.us = icmp eq i32 %i.r, 0
  br i1 %.not.i.us.us, label %bb.b, label %.critedge.us.us

bb.b:                                             ; preds = %.lr.ph.split.us.split.us
  %i.s = load i32, ptr %i.p, align 8, !tbaa !14
  %.not12.i.us.us = icmp eq i32 %i.h, %i.s
  br i1 %.not12.i.us.us, label %.preheader.i.us.us, label %.critedge.us.us

.preheader.i.us.us:                               ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.u = load i64, ptr %i.t, align 8, !tbaa !18
  %.not.i.i.us.us = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.us.us, label %_ZNK7NCrypto7NSevenZ8CKeyInfo9IsEqualToERKS1_.exit, label %.critedge.us.us

.critedge.us.us:                                  ; preds = %.preheader.i.us.us, %bb.b, %.lr.ph.split.us.split.us
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond116.not = icmp eq i64 %indvars.iv.next113, %wide.trip.count115
  br i1 %exitcond116.not, label %.thread, label %.lr.ph.split.us.split.us, !llvm.loop !33

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %.critedge.us.a
  %indvars.iv107 = phi i64 [ %indvars.iv.next108.a, %.critedge.us.a ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv107
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !32   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !8
  %.not.i.us = icmp eq i32 %i.y, 0
  br i1 %.not.i.us, label %bb.c, label %.critedge.us.a

bb.c:                                             ; preds = %.lr.ph.split.us.split
  %i.z = load i32, ptr %i.w, align 8, !tbaa !14
  %.not12.i.us = icmp eq i32 %i.h, %i.z
  br i1 %.not12.i.us, label %.preheader.i.us, label %.critedge.us.a

.preheader.i.us:                                  ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !18
  %.not.i.i.us = icmp eq i64 %.fr83, %i.ab
  br i1 %.not.i.i.us, label %.preheader.i.i.us, label %.critedge.us.a

.preheader.i.i.us:                                ; preds = %.preheader.i.us
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.preheader.i.i.us
  %.01013.i.i.us = phi i64 [ 0, %.preheader.i.i.us ], [ %i.ai, %bb.e ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 %.01013.i.i.us
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.01013.i.i.us
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !17
  %.not12.i.i.us = icmp eq i8 %i.af, %i.ah
  br i1 %.not12.i.i.us, label %bb.e, label %.critedge.us.a

.critedge.us.a:                                   ; preds = %bb.d, %.preheader.i.us, %bb.c, %.lr.ph.split.us.split
  %indvars.iv.next108.a = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %exitcond111.not.a = icmp eq i64 %indvars.iv.next108.a, %wide.trip.count115
  br i1 %exitcond111.not.a, label %.thread, label %.lr.ph.split.us.split, !llvm.loop !33

bb.e:                                             ; preds = %bb.d
  %i.ai = add nuw i64 %.01013.i.i.us, 1           ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.ai, %.fr83
  br i1 %exitcond.not.i.i.us, label %_ZNK7NCrypto7NSevenZ8CKeyInfo9IsEqualToERKS1_.exit, label %bb.d, !llvm.loop !20

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.l, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %.critedge.us56
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %.critedge.us56 ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv102
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !32 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !8
  %.not.i.us52 = icmp eq i32 %.fr82, %i.am
  br i1 %.not.i.us52, label %bb.f, label %.critedge.us56

bb.f:                                             ; preds = %.lr.ph.split.split.us
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !14
  %.not12.i.us53 = icmp eq i32 %i.h, %i.an
  br i1 %.not12.i.us53, label %.preheader.i.us54, label %.critedge.us56

.preheader.i.us54:                                ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.preheader.i.us54
  %indvars.iv.i.us = phi i64 [ 0, %.preheader.i.us54 ], [ %indvars.iv.next.i.us, %bb.h ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i.us
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !17
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv.i.us
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !17
  %.not13.i.us = icmp eq i8 %i.aq, %i.as
  br i1 %.not13.i.us, label %bb.h, label %.critedge.us56

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %._crit_edge.i.loopexit.us, label %bb.g, !llvm.loop !15

.critedge.us56:                                   ; preds = %bb.g, %._crit_edge.i.loopexit.us, %bb.f, %.lr.ph.split.split.us
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %exitcond106.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count115
  br i1 %exitcond106.not, label %.thread, label %.lr.ph.split.split.us, !llvm.loop !33

._crit_edge.i.loopexit.us:                        ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.au = load i64, ptr %i.at, align 8, !tbaa !18
  %.not.i.i.us57 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i.us57, label %_ZNK7NCrypto7NSevenZ8CKeyInfo9IsEqualToERKS1_.exit, label %.critedge.us56

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %.critedge
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !32 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !8
  %.not.i = icmp eq i32 %.fr82, %i.ay
  br i1 %.not.i, label %bb.i, label %.critedge

bb.i:                                             ; preds = %.lr.ph.split.split
  %i.az = load i32, ptr %i.aw, align 8, !tbaa !14
  %.not12.i = icmp eq i32 %i.h, %i.az
  br i1 %.not12.i, label %.preheader.i, label %.critedge

.preheader.i:                                     ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i.loopexit, label %bb.k, !llvm.loop !15

bb.k:                                             ; preds = %bb.j, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %bb.j ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !17
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv.i
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !17
  %.not13.i = icmp eq i8 %i.bc, %i.be
  br i1 %.not13.i, label %bb.j, label %.critedge

._crit_edge.i.loopexit:                           ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !18
  %.not.i.i = icmp eq i64 %.fr83, %i.bg
  br i1 %.not.i.i, label %.preheader.i.i, label %.critedge

.preheader.i.i:                                   ; preds = %._crit_edge.i.loopexit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !19
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %i.bj = add nuw i64 %.01013.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bj, %.fr83
  br i1 %exitcond.not.i.i, label %_ZNK7NCrypto7NSevenZ8CKeyInfo9IsEqualToERKS1_.exit, label %bb.m, !llvm.loop !20

bb.m:                                             ; preds = %bb.l, %.preheader.i.i
  %.01013.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.bj, %bb.l ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.n, i64 %.01013.i.i
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.01013.i.i
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !17
  %.not12.i.i = icmp eq i8 %i.bl, %i.bn
  br i1 %.not12.i.i, label %bb.l, label %.critedge

_ZNK7NCrypto7NSevenZ8CKeyInfo9IsEqualToERKS1_.exit: ; preds = %bb.l, %._crit_edge.i.loopexit.us, %bb.e, %.preheader.i.us.us
  %i.bo = phi ptr [ %i.p, %.preheader.i.us.us ], [ %i.w, %bb.e ], [ %i.ak, %._crit_edge.i.loopexit.us ], [ %i.aw, %bb.l ] ; 35 uses
  %.02039.in = phi i64 [ %indvars.iv112, %.preheader.i.us.us ], [ %indvars.iv107, %bb.e ], [ %indvars.iv102, %._crit_edge.i.loopexit.us ], [ %indvars.iv, %bb.l ]
  %.02039 = trunc i64 %.02039.in to i32           ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.br = load i8, ptr %i.bp, align 1, !tbaa !17
  store i8 %i.br, ptr %i.bq, align 8, !tbaa !17
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 49
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !17
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 49
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 50
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !17
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 50
  store i8 %i.bw, ptr %i.bx, align 2, !tbaa !17
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 51
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !17
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 51
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !17
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bo, i64 52
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !17
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i8 %i.cc, ptr %i.cd, align 4, !tbaa !17
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 53
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !17
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 53
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !17
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bo, i64 54
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !17
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 54
  store i8 %i.ci, ptr %i.cj, align 2, !tbaa !17
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bo, i64 55
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !17
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 55
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !17
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !17
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 %i.co, ptr %i.cp, align 8, !tbaa !17
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bo, i64 57
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !17
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 57
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !17
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bo, i64 58
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !17
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 58
  store i8 %i.cu, ptr %i.cv, align 2, !tbaa !17
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bo, i64 59
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !17
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 59
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !17
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bo, i64 60
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !17
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i8 %i.da, ptr %i.db, align 4, !tbaa !17
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bo, i64 61
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !17
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 61
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !17
  %i.df = getelementptr inbounds nuw i8, ptr %i.bo, i64 62
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !17
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 62
  store i8 %i.dg, ptr %i.dh, align 2, !tbaa !17
  %i.di = getelementptr inbounds nuw i8, ptr %i.bo, i64 63
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !17
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 63
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !17
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !17
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i8 %i.dm, ptr %i.dn, align 8, !tbaa !17
  %i.do = getelementptr inbounds nuw i8, ptr %i.bo, i64 65
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !17
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 65
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !17
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bo, i64 66
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !17
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 66
  store i8 %i.ds, ptr %i.dt, align 2, !tbaa !17
  %i.du = getelementptr inbounds nuw i8, ptr %i.bo, i64 67
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !17
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 67
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !17
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bo, i64 68
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !17
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 68
  store i8 %i.dy, ptr %i.dz, align 4, !tbaa !17
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bo, i64 69
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !17
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 69
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !17
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bo, i64 70
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !17
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 70
  store i8 %i.ee, ptr %i.ef, align 2, !tbaa !17
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bo, i64 71
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !17
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 71
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !17
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !17
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i8 %i.ek, ptr %i.el, align 8, !tbaa !17
  %i.em = getelementptr inbounds nuw i8, ptr %i.bo, i64 73
  %i.en = load i8, ptr %i.em, align 1, !tbaa !17
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 73
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !17
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bo, i64 74
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !17
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 74
  store i8 %i.eq, ptr %i.er, align 2, !tbaa !17
  %i.es = getelementptr inbounds nuw i8, ptr %i.bo, i64 75
  %i.et = load i8, ptr %i.es, align 1, !tbaa !17
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 75
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !17
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bo, i64 76
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !17
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i8 %i.ew, ptr %i.ex, align 4, !tbaa !17
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bo, i64 77
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !17
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 77
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !17
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bo, i64 78
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !17
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 78
  store i8 %i.fc, ptr %i.fd, align 2, !tbaa !17
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bo, i64 79
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !17
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 79
  store i8 %i.ff, ptr %i.fg, align 1, !tbaa !17
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not = icmp eq i32 %.02039, 0
  br i1 %.not, label %.thread, label %bb.n

bb.n:                                             ; preds = %_ZNK7NCrypto7NSevenZ8CKeyInfo9IsEqualToERKS1_.exit
  %i.fi = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #21 ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fi, ptr noundef nonnull align 8 dereferenceable(80) %i.bo, i64 24, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.fj, align 8, !tbaa !34
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 32 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fk, i8 0, i64 16, i1 false)
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !18 ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %i.fm, 0
  br i1 %.not.i.i.i.i, label %_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE6InsertEiRKS2_.exit, label %_ZN7CBufferIhE11SetCapacityEm.exit.i.i.i.i

_ZN7CBufferIhE11SetCapacityEm.exit.i.i.i.i:       ; preds = %bb.n
  %i.fn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fm) #21
          to label %.noexc.i unwind label %bb.o   ; 2 uses

.noexc.i:                                         ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit.i.i.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !19
  store i64 %i.fm, ptr %i.fk, align 8, !tbaa !18
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !19
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fn, ptr align 1 %i.fq, i64 %i.fm, i1 false)
  br label %_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE6InsertEiRKS2_.exit

bb.o:                                             ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit.i.i.i.i
  %i.fr = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef 80) #22
  resume { ptr, i32 } %i.fr

_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE6InsertEiRKS2_.exit: ; preds = %bb.n, %.noexc.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fi, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 32, i1 false), !tbaa.struct !36
  tail call void @_ZN17CBaseRecordVector13InsertOneItemEi(ptr noundef nonnull align 8 dereferenceable(32) %i.fh, i32 noundef 0)
  %i.ft = load ptr, ptr %i.d, align 8, !tbaa !31
  store ptr %i.fi, ptr %i.ft, align 8, !tbaa !32
  %i.fu = add nuw nsw i32 %.02039, 1              ; 3 uses
  %i.fv = add nuw nsw i32 %.02039, 2
  %i.fw = load i32, ptr %i.a, align 4, !tbaa !29  ; 2 uses
  %i.fx = icmp sgt i32 %i.fv, %i.fw
  %i.fy = sub nsw i32 %i.fw, %i.fu
  %spec.select.i = select i1 %i.fx, i32 %i.fy, i32 1 ; 3 uses
  %i.fz = icmp sgt i32 %spec.select.i, 0
  br i1 %i.fz, label %.lr.ph.i22, label %_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE6DeleteEii.exit

.lr.ph.i22:                                       ; preds = %_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE6InsertEiRKS2_.exit
  %i.ga = zext nneg i32 %i.fu to i64
  %i.gb = zext nneg i32 %spec.select.i to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %.lr.ph.i22
  %indvars.iv.i23 = phi i64 [ 0, %.lr.ph.i22 ], [ %indvars.iv.next.i24, %bb.s ] ; 2 uses
  %i.gc = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.gd = getelementptr [8 x i8], ptr %i.gc, i64 %indvars.iv.i23
  %i.ge = getelementptr [8 x i8], ptr %i.gd, i64 %i.ga
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !32 ; 4 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.gh, align 8, !tbaa !34
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 40
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !19 ; 2 uses
  %i.gk = icmp eq ptr %i.gj, null
  br i1 %i.gk, label %_ZN7NCrypto7NSevenZ8CKeyInfoD2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZdaPv(ptr noundef nonnull %i.gj) #22, !inline_history !37
  br label %_ZN7NCrypto7NSevenZ8CKeyInfoD2Ev.exit.i

_ZN7NCrypto7NSevenZ8CKeyInfoD2Ev.exit.i:          ; preds = %bb.r, %bb.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gf, i64 noundef 80) #22
  br label %bb.s

bb.s:                                             ; preds = %_ZN7NCrypto7NSevenZ8CKeyInfoD2Ev.exit.i, %bb.p
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i23, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next.i24, %i.gb
  br i1 %exitcond121.not, label %_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE6DeleteEii.exit, label %bb.p, !llvm.loop !38

_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE6DeleteEii.exit: ; preds = %bb.s, %_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE6InsertEiRKS2_.exit
  tail call void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %i.fh, i32 noundef %i.fu, i32 noundef %spec.select.i)
  br label %.thread

.critedge:                                        ; preds = %bb.k, %bb.m, %.lr.ph.split.split, %bb.i, %._crit_edge.i.loopexit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count115
  br i1 %exitcond.not, label %.thread, label %.lr.ph.split.split, !llvm.loop !33

.thread:                                          ; preds = %.critedge, %.critedge.us56, %.critedge.us.a, %.critedge.us.us, %bb.a, %_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE6DeleteEii.exit, %_ZNK7NCrypto7NSevenZ8CKeyInfo9IsEqualToERKS1_.exit
  %i.gl = phi i1 [ true, %_ZNK7NCrypto7NSevenZ8CKeyInfo9IsEqualToERKS1_.exit ], [ true, %_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE6DeleteEii.exit ], [ false, %bb.a ], [ false, %.critedge.us56 ], [ false, %.critedge.us.a ], [ false, %.critedge.us.us ], [ false, %.critedge ]
  ret i1 %i.gl
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 {
_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit:
  %i.a = add nsw i32 %2, %1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !29   ; 2 uses
  %i.d = icmp sgt i32 %i.a, %i.c
  %i.e = sub nsw i32 %i.c, %1
  %spec.select = select i1 %i.d, i32 %i.e, i32 %2 ; 3 uses
  %i.f = icmp sgt i32 %spec.select, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = sext i32 %1 to i64
  %i.i = zext nneg i32 %spec.select to i64
  br label %bb.a

._crit_edge:                                      ; preds = %bb.d, %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  tail call void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %spec.select)
  ret void

bb.a:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.h
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !32   ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.o, align 8, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN7NCrypto7NSevenZ8CKeyInfoD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #22, !inline_history !37
  br label %_ZN7NCrypto7NSevenZ8CKeyInfoD2Ev.exit

_ZN7NCrypto7NSevenZ8CKeyInfoD2Ev.exit:            ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 80) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN7NCrypto7NSevenZ8CKeyInfoD2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.s, label %bb.a, label %._crit_edge, !llvm.loop !38
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7NCrypto7NSevenZ13CKeyInfoCache3AddERNS0_8CKeyInfoE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN7NCrypto7NSevenZ13CKeyInfoCache4FindERNS0_8CKeyInfoE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !29
  %i.e = load i32, ptr %0, align 8, !tbaa !39
  %.not = icmp slt i32 %i.d, %i.e
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN17CBaseRecordVector10DeleteBackEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #21 ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.g, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18   ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i, label %_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE6InsertEiRKS2_.exit, label %_ZN7CBufferIhE11SetCapacityEm.exit.i.i.i.i

_ZN7CBufferIhE11SetCapacityEm.exit.i.i.i.i:       ; preds = %bb.d
  %i.k = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #21
          to label %.noexc.i unwind label %bb.e   ; 2 uses

.noexc.i:                                         ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %i.k, ptr %i.l, align 8, !tbaa !19
  store i64 %i.j, ptr %i.h, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.n, i64 %i.j, i1 false)
  br label %_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE6InsertEiRKS2_.exit

bb.e:                                             ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit.i.i.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 80) #22
  resume { ptr, i32 } %i.o

_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE6InsertEiRKS2_.exit: ; preds = %bb.d, %.noexc.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !tbaa.struct !36
  tail call void @_ZN17CBaseRecordVector13InsertOneItemEi(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef 0)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31
  store ptr %i.f, ptr %i.s, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE6InsertEiRKS2_.exit
  ret void
}

declare void @_ZN17CBaseRecordVector10DeleteBackEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7NCrypto7NSevenZ13CKeyInfoCacheD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE, i64 16), ptr %i.a, align 8, !tbaa !34
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEED2Ev.exit unwind label %bb.b, !inline_history !43

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #23, !inline_history !43
  unreachable

_ZN13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #20, !inline_history !43
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8NWindows16NSynchronization16CCriticalSectionD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %0) #20 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN7NCrypto7NSevenZ5CBaseC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(140) initializes((0, 4), (8, 88), (120, 140)) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 16, ptr %0, align 8, !tbaa !39
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.c, align 8, !tbaa !44
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN7NCrypto7NSevenZ8CKeyInfoEE, i64 16), ptr %i.a, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.e, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.g, i8 0, i64 20, i1 false)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7NCrypto7NSevenZ5CBase15CalculateDigestEv(ptr noundef nonnull align 8 dereferenceable(140) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN7NCrypto7NSevenZL31g_GlobalKeyCacheCriticalSectionE) #20 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.c = invoke noundef zeroext i1 @_ZN7NCrypto7NSevenZ13CKeyInfoCache4FindERNS0_8CKeyInfoE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %.invoke, label %bb.d

bb.c:                                             ; preds = %.invoke, %bb.g, %bb.f, %bb.d, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN7NCrypto7NSevenZL31g_GlobalKeyCacheCriticalSectionE) #20 ; 0 uses
  resume { ptr, i32 } %i.d

bb.d:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 @_ZN7NCrypto7NSevenZ13CKeyInfoCache4FindERNS0_8CKeyInfoE(ptr noundef nonnull align 8 dereferenceable(40) @_ZN7NCrypto7NSevenZL16g_GlobalKeyCacheE, ptr noundef nonnull align 8 dereferenceable(80) %i.b)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  br i1 %i.f, label %.invoke, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN7NCrypto7NSevenZ8CKeyInfo15CalculateDigestEv(ptr noundef nonnull align 8 dereferenceable(80) %i.b)
end_hunk_0
