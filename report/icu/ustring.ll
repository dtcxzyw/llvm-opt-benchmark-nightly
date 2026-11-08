Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ustring?download=true
inline.NumInlined: 32
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@u_strrchr32_78:bb.a
bb.e:                                             ; preds = %.preheader.i.preheader.us.i
  %i.u = getelementptr inbounds i8, ptr %.05182.i.us.i, i64 -4
  %i.v = load i16, ptr %i.u, align 2, !tbaa !20
  %i.w = and i16 %i.v, -1024
  %i.x = icmp eq i16 %i.w, -10240
  br i1 %i.x, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.i, label %u_strrchr_78.exit

_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.i: ; preds = %bb.e, %.lr.ph.i.us.i
  %.not.i.us.i = icmp eq ptr %0, %i.r
  br i1 %.not.i.us.i, label %u_strrchr_78.exit, label %.lr.ph.i.us.i, !llvm.loop !8

.preheader.i.preheader.us.i:                      ; preds = %.lr.ph.i.us.i
  %.not.i70.i.us.i = icmp eq ptr %0, %i.r
  br i1 %.not.i70.i.us.i, label %u_strrchr_78.exit, label %bb.e

.lr.ph.i.us16.preheader.i:                        ; preds = %bb.d
  %i.y = getelementptr inbounds i8, ptr %i.m, i64 -2 ; 3 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !20
  %i.aa = icmp eq i16 %i.z, %i.b
  br i1 %i.aa, label %u_strrchr_78.exit, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us21.peel.i

_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us21.peel.i: ; preds = %.lr.ph.i.us16.preheader.i
  %.not.i.us22.peel.i = icmp eq i64 %.idx.i, 2
  br i1 %.not.i.us22.peel.i, label %u_strrchr_78.exit, label %.lr.ph.i.us16.i

.lr.ph.i.us16.i:                                  ; preds = %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us21.peel.i, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us21.i
  %.05182.i.us17.i = phi ptr [ %i.ab, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us21.i ], [ %i.y, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us21.peel.i ] ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %.05182.i.us17.i, i64 -2 ; 4 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !20
  %i.ad = icmp eq i16 %i.ac, %i.b
  br i1 %i.ad, label %.preheader.i.preheader.us18.i, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us21.i

.preheader.i.preheader.us18.i:                    ; preds = %.lr.ph.i.us16.i
  %i.ae = load i16, ptr %.05182.i.us17.i, align 2, !tbaa !20
  %i.af = and i16 %i.ae, -1024
  %i.ag = icmp eq i16 %i.af, -9216
  br i1 %i.ag, label %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us21.i, label %u_strrchr_78.exit

_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us21.i: ; preds = %.preheader.i.preheader.us18.i, %.lr.ph.i.us16.i
  %.not.i.us22.i = icmp eq ptr %0, %i.ab
  br i1 %.not.i.us22.i, label %u_strrchr_78.exit, label %.lr.ph.i.us16.i, !llvm.loop !9

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %.06.i = phi ptr [ %i.ak, %.preheader.i ], [ %0, %bb.b ] ; 3 uses
  %.0.i = phi ptr [ %spec.select.i, %.preheader.i ], [ null, %bb.b ]
  %i.ah = load i16, ptr %.06.i, align 2, !tbaa !20 ; 2 uses
  %i.ai = icmp eq i16 %i.ah, %i.b
  %spec.select.i = select i1 %i.ai, ptr %.06.i, ptr %.0.i ; 2 uses
  %i.aj = icmp eq i16 %i.ah, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i, i64 2
  br i1 %i.aj, label %u_strrchr_78.exit, label %.preheader.i, !llvm.loop !6

bb.f:                                             ; preds = %bb.a
  %i.al = icmp ult i32 %1, 1114112
  br i1 %i.al, label %bb.g, label %u_strrchr_78.exit

bb.g:                                             ; preds = %bb.f
  %i.am = lshr i32 %1, 10
  %i.an = add nuw nsw i32 %i.am, 55232
  %i.ao = and i32 %1, 1023
  %i.ap = or disjoint i32 %i.ao, 56320
  %i.aq = load i16, ptr %0, align 2, !tbaa !20    ; 2 uses
  %.not24 = icmp eq i16 %i.aq, 0
  br i1 %.not24, label %u_strrchr_78.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %i.ar = phi i16 [ %.pre, %.lr.ph ], [ %i.aq, %bb.g ]
  %.026 = phi ptr [ %.1, %.lr.ph ], [ null, %bb.g ]
  %.01425 = phi ptr [ %i.as, %.lr.ph ], [ %0, %bb.g ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01425, i64 2 ; 2 uses
  %i.at = zext i16 %i.ar to i32
  %i.au = icmp eq i32 %i.an, %i.at
  %.pre = load i16, ptr %i.as, align 2, !tbaa !20 ; 3 uses
  %i.av = zext i16 %.pre to i32
  %i.aw = icmp eq i32 %i.ap, %i.av
  %i.ax = select i1 %i.au, i1 %i.aw, i1 false
  %.1 = select i1 %i.ax, ptr %.01425, ptr %.026   ; 2 uses
  %.not = icmp eq i16 %.pre, 0
  br i1 %.not, label %u_strrchr_78.exit, label %.lr.ph, !llvm.loop !37

u_strrchr_78.exit:                                ; preds = %.lr.ph, %.preheader.i, %.preheader.i.preheader.us.i, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.i, %bb.e, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us21.i, %.preheader.i.preheader.us18.i, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.us.i, %.lr.ph.i.us.us.i, %bb.g, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us21.peel.i, %.lr.ph.i.us16.preheader.i, %u_strlen_78.exit69.i.i, %bb.c, %bb.f
  %.013 = phi ptr [ null, %bb.f ], [ null, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.i ], [ %i.ab, %.preheader.i.preheader.us18.i ], [ null, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us21.peel.i ], [ null, %u_strlen_78.exit69.i.i ], [ null, %bb.c ], [ %spec.select.i, %.preheader.i ], [ null, %bb.g ], [ %i.y, %.lr.ph.i.us16.preheader.i ], [ null, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us.us.i ], [ %i.o, %.lr.ph.i.us.us.i ], [ null, %_ZL19isMatchAtCPBoundaryPKDsS0_S0_S0_.exit.thread.i.us21.i ], [ %i.r, %bb.e ], [ %0, %.preheader.i.preheader.us.i ], [ %.1, %.lr.ph ]
  ret ptr %.013
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @u_memrchr32_78(ptr nofree noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = icmp ult i32 %1, 65536
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw i32 %1 to i16                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.c, ptr %i.a, align 2, !tbaa !20
  %i.d = icmp slt i32 %2, 1
  br i1 %i.d, label %u_memrchr_78.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i16 %i.c, -2048
  %i.f = icmp eq i16 %i.e, -10240
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = call ptr @u_strFindLast_78(ptr noundef readonly %0, i32 noundef %2, ptr noundef nonnull %i.a, i32 noundef 1), !inline_history !39
  br label %u_memrchr_78.exit

bb.e:                                             ; preds = %bb.c
  %i.h = zext nneg i32 %2 to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.h
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.0.i = phi ptr [ %i.i, %bb.e ], [ %i.j, %bb.g ]
  %i.j = getelementptr inbounds i8, ptr %.0.i, i64 -2 ; 4 uses
  %i.k = load i16, ptr %i.j, align 2, !tbaa !20
  %i.l = icmp eq i16 %i.k, %i.c
  br i1 %i.l, label %u_memrchr_78.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i = icmp eq ptr %0, %i.j
  br i1 %.not.i, label %u_memrchr_78.exit, label %bb.f, !llvm.loop !7

u_memrchr_78.exit:                                ; preds = %bb.f, %bb.g, %bb.b, %bb.d
  %.1.i = phi ptr [ null, %bb.b ], [ %i.g, %bb.d ], [ %i.j, %bb.f ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

bb.h:                                             ; preds = %bb.a
  %i.m = icmp sgt i32 %2, 1
  %i.n = icmp ult i32 %1, 1114112
  %or.cond = and i1 %i.n, %i.m
  br i1 %or.cond, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.o = zext nneg i32 %2 to i64
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -2
  %i.r = lshr i32 %1, 10
  %i.s = add nuw nsw i32 %i.r, 55232
  %i.t = and i32 %1, 1023
  %i.u = or disjoint i32 %i.t, 56320
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %.0 = phi ptr [ %i.q, %bb.i ], [ %i.ac, %bb.l ] ; 4 uses
  %i.v = load i16, ptr %.0, align 2, !tbaa !20
  %i.w = zext i16 %i.v to i32
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds i8, ptr %.0, i64 -2
  %i.z = load i16, ptr %i.y, align 2, !tbaa !20
  %i.aa = zext i16 %i.z to i32
  %i.ab = icmp eq i32 %i.s, %i.aa
  br i1 %i.ab, label %.loopexit.loopexit.split.loop.exit, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ac = getelementptr inbounds i8, ptr %.0, i64 -2 ; 2 uses
  %.not = icmp eq ptr %0, %i.ac
  br i1 %.not, label %.loopexit, label %bb.j, !llvm.loop !38

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.k
  %i.ad = getelementptr inbounds i8, ptr %.0, i64 -2
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.loopexit.loopexit.split.loop.exit, %bb.h, %u_memrchr_78.exit
  %.1 = phi ptr [ %.1.i, %u_memrchr_78.exit ], [ null, %bb.h ], [ %i.ad, %.loopexit.loopexit.split.loop.exit ], [ null, %bb.l ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @u_strpbrk_78(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZL13_matchFromSetPKDsS0_a(ptr noundef %0, ptr noundef %1, i8 noundef signext 1) ; 2 uses
  %i.b = icmp sgt i32 %i.a, -1
  %i.c = zext nneg i32 %i.a to i64
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.c
  %.0 = select i1 %i.b, ptr %i.d, ptr null
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @_ZL13_matchFromSetPKDsS0_a(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i8 noundef signext range(i8 0, 2) %2) unnamed_addr #2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv152 = phi i32 [ %indvars.iv.next153, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.b = load i16, ptr %i.a, align 2, !tbaa !20   ; 2 uses
  %.not = icmp eq i16 %i.b, 0
  %i.c = and i16 %i.b, -2048
  %.not87 = icmp eq i16 %i.c, -10240
  %or.cond = or i1 %.not, %.not87
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next153 = add nuw i32 %indvars.iv152, 1
  br i1 %or.cond, label %.critedge, label %bb.b, !llvm.loop !40

.critedge:                                        ; preds = %bb.b, %.critedge
  %indvars.iv154 = phi i32 [ %indvars.iv.next155, %.critedge ], [ %indvars.iv152, %bb.b ] ; 2 uses
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %.critedge ], [ %indvars.iv, %bb.b ] ; 4 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv146
  %i.e = load i16, ptr %i.d, align 2, !tbaa !20
  %.not88 = icmp eq i16 %i.e, 0
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1
  %indvars.iv.next155 = add nuw i32 %indvars.iv154, 1
  br i1 %.not88, label %.preheader105, label %.critedge, !llvm.loop !41

.preheader105:                                    ; preds = %.critedge
  %3 = trunc nuw nsw i64 %indvars.iv to i32       ; 2 uses
  %i.f = trunc nuw nsw i64 %indvars.iv146 to i32  ; 4 uses
  %i.g = load i16, ptr %0, align 2, !tbaa !20     ; 4 uses
  %.not89116 = icmp eq i16 %i.g, 0
  br i1 %.not89116, label %._crit_edge, label %.lr.ph118

.lr.ph118:                                        ; preds = %.preheader105
  %i.h = zext i16 %i.g to i32                     ; 2 uses
  %.not90 = icmp eq i8 %2, 0
  %.not125 = icmp eq i64 %indvars.iv146, 0        ; 2 uses
  %wide.trip.count172 = zext i32 %indvars.iv154 to i64 ; 2 uses
  br i1 %.not90, label %.lr.ph118.split.us, label %.lr.ph118.split

.lr.ph118.split.us:                               ; preds = %.lr.ph118, %.loopexit.us
  %i.i = phi i32 [ %i.ay, %.loopexit.us ], [ %i.h, %.lr.ph118 ] ; 5 uses
  %i.j = phi i16 [ %i.ax, %.loopexit.us ], [ %i.g, %.lr.ph118 ]
  %.075117.us = phi i32 [ %.277.us, %.loopexit.us ], [ 0, %.lr.ph118 ] ; 4 uses
  %i.k = add nsw i32 %.075117.us, 1               ; 4 uses
  %i.l = and i32 %i.i, 63488
  %i.m = icmp eq i32 %i.l, 55296
  br i1 %i.m, label %bb.d, label %.preheader99.us

bb.c:                                             ; preds = %.lr.ph114.us
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %exitcond173.not = icmp eq i64 %indvars.iv.next169, %wide.trip.count172
  br i1 %exitcond173.not, label %.loopexit100, label %.lr.ph114.us, !llvm.loop !42

.lr.ph114.us:                                     ; preds = %.preheader99.us, %bb.c
  %indvars.iv168 = phi i64 [ %indvars.iv.next169, %bb.c ], [ 0, %.preheader99.us ] ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv168
  %i.o = load i16, ptr %i.n, align 2, !tbaa !20
  %i.p = icmp eq i16 %i.j, %i.o
  br i1 %i.p, label %.loopexit.us, label %bb.c

bb.d:                                             ; preds = %.lr.ph118.split.us
  %i.q = and i32 %i.i, 1024
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %.preheader.us

bb.e:                                             ; preds = %bb.d
  %i.s = sext i32 %i.k to i64
  %i.t = getelementptr inbounds [2 x i8], ptr %0, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !20
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = and i32 %i.v, 64512
  %i.x = icmp eq i32 %i.w, 56320
  br i1 %i.x, label %bb.f, label %.preheader.us

bb.f:                                             ; preds = %bb.e
  %i.y = add nsw i32 %.075117.us, 2
  %i.z = shl nuw nsw i32 %i.i, 10
  %i.aa = add nsw i32 %i.z, -56613888
  %i.ab = add nuw nsw i32 %i.aa, %i.v
  br label %.preheader.us

.preheader.us:                                    ; preds = %bb.f, %bb.e, %bb.d
  %.176.us = phi i32 [ %i.y, %bb.f ], [ %i.k, %bb.e ], [ %i.k, %bb.d ] ; 2 uses
  %.070.us = phi i32 [ %i.ab, %bb.f ], [ %i.i, %bb.e ], [ %i.i, %bb.d ] ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader.us, %bb.k
  %.5.us = phi i32 [ %.7.us, %bb.k ], [ %3, %.preheader.us ] ; 4 uses
  %i.ac = icmp slt i32 %.5.us, %i.f
  br i1 %i.ac, label %bb.h, label %.split.us

bb.h:                                             ; preds = %bb.g
  %i.ad = add nsw i32 %.5.us, 1                   ; 4 uses
  %i.ae = sext i32 %.5.us to i64
  %i.af = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !20
  %i.ah = zext i16 %i.ag to i32                   ; 4 uses
  %i.ai = and i32 %i.ah, 64512
  %i.aj = icmp ne i32 %i.ai, 55296
  %.not92.us = icmp eq i32 %i.ad, %i.f
  %or.cond96.us = select i1 %i.aj, i1 true, i1 %.not92.us
  br i1 %or.cond96.us, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = sext i32 %i.ad to i64
  %i.al = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2, !tbaa !20
  %i.an = zext i16 %i.am to i32                   ; 2 uses
  %i.ao = and i32 %i.an, 64512
  %i.ap = icmp eq i32 %i.ao, 56320
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aq = add nsw i32 %.5.us, 2
  %i.ar = shl nuw nsw i32 %i.ah, 10
  %i.as = add nsw i32 %i.ar, -56613888
  %i.at = add nuw nsw i32 %i.as, %i.an
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.7.us = phi i32 [ %i.ad, %bb.h ], [ %i.aq, %bb.j ], [ %i.ad, %bb.i ]
  %.3.us = phi i32 [ %i.ah, %bb.h ], [ %i.at, %bb.j ], [ %i.ah, %bb.i ]
  %i.au = icmp eq i32 %.070.us, %.3.us
  br i1 %i.au, label %.loopexit.us, label %bb.g, !llvm.loop !43

.loopexit.us:                                     ; preds = %.lr.ph114.us, %bb.k
  %.277.us = phi i32 [ %.176.us, %bb.k ], [ %i.k, %.lr.ph114.us ] ; 3 uses
  %i.av = sext i32 %.277.us to i64
  %i.aw = getelementptr inbounds [2 x i8], ptr %0, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !20 ; 3 uses
  %i.ay = zext i16 %i.ax to i32
  %.not89.us = icmp eq i16 %i.ax, 0
  br i1 %.not89.us, label %._crit_edge, label %.lr.ph118.split.us, !llvm.loop !44

.preheader99.us:                                  ; preds = %.lr.ph118.split.us
  br i1 %.not125, label %.loopexit100, label %.lr.ph114.us

.lr.ph118.split:                                  ; preds = %.lr.ph118, %.loopexit98
  %i.az = phi i32 [ %i.ct, %.loopexit98 ], [ %i.h, %.lr.ph118 ] ; 5 uses
  %i.ba = phi i16 [ %i.cs, %.loopexit98 ], [ %i.g, %.lr.ph118 ]
  %.075117 = phi i32 [ %.277, %.loopexit98 ], [ 0, %.lr.ph118 ] ; 3 uses
  %i.bb = add nsw i32 %.075117, 1                 ; 5 uses
  %i.bc = and i32 %i.az, 63488
  %i.bd = icmp eq i32 %i.bc, 55296
  br i1 %i.bd, label %bb.m, label %.preheader102

.preheader102:                                    ; preds = %.lr.ph118.split
  br i1 %.not125, label %.loopexit98, label %.lr.ph

bb.l:                                             ; preds = %.lr.ph
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count172
  br i1 %exitcond.not, label %.loopexit98, label %.lr.ph, !llvm.loop !45

.lr.ph:                                           ; preds = %.preheader102, %bb.l
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %bb.l ], [ 0, %.preheader102 ] ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv149
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !20
  %i.bg = icmp eq i16 %i.ba, %i.bf
  br i1 %i.bg, label %.loopexit100, label %bb.l

bb.m:                                             ; preds = %.lr.ph118.split
  %i.bh = and i32 %i.az, 1024
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.n, label %.preheader97

bb.n:                                             ; preds = %bb.m
  %i.bj = sext i32 %i.bb to i64
  %i.bk = getelementptr inbounds [2 x i8], ptr %0, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !20
  %i.bm = zext i16 %i.bl to i32                   ; 2 uses
  %i.bn = and i32 %i.bm, 64512
  %i.bo = icmp eq i32 %i.bn, 56320
  br i1 %i.bo, label %bb.o, label %.preheader97

bb.o:                                             ; preds = %bb.n
  %i.bp = add nsw i32 %.075117, 2
  %i.bq = shl nuw nsw i32 %i.az, 10
  %i.br = add nsw i32 %i.bq, -56613888
  %i.bs = add nuw nsw i32 %i.br, %i.bm
  br label %.preheader97

.preheader97:                                     ; preds = %bb.m, %bb.n, %bb.o
  %.176 = phi i32 [ %i.bp, %bb.o ], [ %i.bb, %bb.n ], [ %i.bb, %bb.m ] ; 2 uses
  %.070 = phi i32 [ %i.bs, %bb.o ], [ %i.az, %bb.n ], [ %i.az, %bb.m ] ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.preheader97, %bb.t
  %.273 = phi i32 [ %.4, %bb.t ], [ %3, %.preheader97 ] ; 4 uses
  %i.bt = icmp slt i32 %.273, %i.f
  br i1 %i.bt, label %bb.q, label %.loopexit98

bb.q:                                             ; preds = %bb.p
  %i.bu = add nsw i32 %.273, 1                    ; 4 uses
  %i.bv = sext i32 %.273 to i64
  %i.bw = getelementptr inbounds [2 x i8], ptr %1, i64 %i.bv
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !20
  %i.by = zext i16 %i.bx to i32                   ; 4 uses
  %i.bz = and i32 %i.by, 64512
  %i.ca = icmp ne i32 %i.bz, 55296
  %.not93 = icmp eq i32 %i.bu, %i.f
  %or.cond95 = select i1 %i.ca, i1 true, i1 %.not93
  br i1 %or.cond95, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = sext i32 %i.bu to i64
  %i.cc = getelementptr inbounds [2 x i8], ptr %1, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !20
  %i.ce = zext i16 %i.cd to i32                   ; 2 uses
  %i.cf = and i32 %i.ce, 64512
  %i.cg = icmp eq i32 %i.cf, 56320
  br i1 %i.cg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ch = add nsw i32 %.273, 2
  %i.ci = shl nuw nsw i32 %i.by, 10
  %i.cj = add nsw i32 %i.ci, -56613888
  %i.ck = add nuw nsw i32 %i.cj, %i.ce
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %.4 = phi i32 [ %i.bu, %bb.q ], [ %i.ch, %bb.s ], [ %i.bu, %bb.r ]
  %.1 = phi i32 [ %i.by, %bb.q ], [ %i.ck, %bb.s ], [ %i.by, %bb.r ]
  %i.cl = icmp eq i32 %.070, %.1
  br i1 %i.cl, label %bb.u, label %bb.p, !llvm.loop !46

bb.u:                                             ; preds = %bb.t
end_hunk_0
