inline.NumInlined: 86
inline.NumDeleted: 34
begin_hunk_0_@tt_cmap2_validate:bb.a
bb.f:                                             ; preds = %bb.e, %bb.h
  %.0102 = phi ptr [ %i.r, %bb.e ], [ %i.t, %bb.h ] ; 3 uses
  %.077101 = phi i32 [ 0, %bb.e ], [ %i.af, %bb.h ]
  %.079100 = phi i32 [ 0, %bb.e ], [ %spec.select, %bb.h ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0102, i64 2
  %i.u = load i8, ptr %.0102, align 1, !tbaa !16
  %i.v = zext i8 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 8                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0102, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !16
  %i.z = zext i8 %i.y to i32                      ; 3 uses
  %i.aa = or disjoint i32 %i.w, %i.z
  %i.ab = load volatile i32, ptr %i.s, align 8, !tbaa !21
  %i.ac = icmp ult i32 %i.ab, 2
end_hunk_0
begin_hunk_1_@tt_cmap2_validate:bb.a

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = lshr i32 %i.aa, 3
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.ae, i32 %.079100) ; 2 uses
  %i.af = add nuw nsw i32 %.077101, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.af, 256
  br i1 %exitcond.not, label %bb.i, label %bb.f, !llvm.loop !31
end_hunk_1
begin_hunk_2_@tt_cmap2_validate:bb.a

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 224
  %2 = or disjoint i32 %i.w, %i.z
  %3 = lshr i32 %2, 3
  %umax = tail call i32 @llvm.umax.i32(i32 %.079100, i32 %3)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
end_hunk_2
begin_hunk_3_@tt_cmap2_validate:bb.a
.loopexit:                                        ; preds = %bb.v, %bb.p, %bb.s, %bb.l
  %.5 = phi ptr [ %i.bk, %bb.l ], [ %i.bk, %bb.p ], [ %i.bk, %bb.s ], [ %i.ch, %bb.v ]
  %i.ct = add nuw i32 %.178104, 1
  %exitcond107.not = icmp eq i32 %.178104, %umax
  br i1 %exitcond107.not, label %bb.w, label %bb.l, !llvm.loop !33

bb.w:                                             ; preds = %.loopexit
end_hunk_3
begin_hunk_4_@tt_cmap8_validate:bb.a
bb.e:                                             ; preds = %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8204
  %2 = load i8, ptr %i.p, align 1, !tbaa !16
  %3 = zext i8 %2 to i32
  %4 = shl nuw i32 %3, 24                         ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8205
  %6 = load i8, ptr %5, align 1, !tbaa !16
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 16                     ; 2 uses
  %9 = or disjoint i32 %8, %4
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8206
  %11 = load i8, ptr %10, align 1, !tbaa !16
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 8                    ; 2 uses
  %14 = or disjoint i32 %9, %13
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 8207
  %16 = load i8, ptr %15, align 1, !tbaa !16
  %17 = zext i8 %16 to i32                        ; 2 uses
  %18 = or disjoint i32 %14, %17                  ; 2 uses
  %i.q = load volatile ptr, ptr %i.b, align 8, !tbaa !19
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.a to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = trunc i64 %i.t to i32
  %i.v = udiv i32 %i.u, 12
  %i.w = icmp ugt i32 %18, %i.v
  br i1 %i.w, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
end_hunk_4
begin_hunk_5_@tt_cmap8_validate:bb.a
  br label %.lr.ph114

bb.f:                                             ; preds = %bb.e
  %.not115 = icmp eq i32 %18, 0
  br i1 %.not115, label %._crit_edge, label %.lr.ph114

.lr.ph114:                                        ; preds = %.thread, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 224
  %19 = or disjoint i32 %4, %8
  %20 = or disjoint i32 %19, %13
  %21 = or disjoint i32 %20, %17
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph114, %.loopexit
end_hunk_5
begin_hunk_6_@tt_cmap8_validate:bb.a

.loopexit:                                        ; preds = %bb.r, %bb.w, %.preheader, %bb.u, %bb.k
  %i.dp = add nuw i32 %.086112, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.dp, %21
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !65

._crit_edge:                                      ; preds = %.loopexit, %bb.f
end_hunk_6
begin_hunk_7_@tt_cmap14_validate:bb.a
  br i1 %.not125, label %.loopexit130, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bc ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 3 uses
  %i.bm = load volatile ptr, ptr %i.b, align 8, !tbaa !19
  %i.bn = icmp ugt ptr %i.bl, %i.bm
end_hunk_7
begin_hunk_8_@tt_cmap14_validate:bb.a
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %2 = load i8, ptr %i.bk, align 1, !tbaa !16
  %3 = zext i8 %2 to i64
  %4 = shl nuw nsw i64 %3, 24                     ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !16
  %7 = zext i8 %6 to i64
  %8 = shl nuw nsw i64 %7, 16                     ; 2 uses
  %9 = or disjoint i64 %8, %4
  %10 = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %11 = load i8, ptr %10, align 1, !tbaa !16
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 8                    ; 2 uses
  %14 = or disjoint i64 %9, %13
  %15 = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  %16 = load i8, ptr %15, align 1, !tbaa !16
  %i.bo = zext i8 %16 to i64                      ; 2 uses
  %17 = or disjoint i64 %14, %i.bo                ; 2 uses
  %i.bp = load volatile ptr, ptr %i.b, align 8, !tbaa !19
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bl to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = lshr i64 %i.bs, 2
  %18 = icmp samesign ugt i64 %17, %i.bt
  br i1 %18, label %.thread, label %bb.o

.thread:                                          ; preds = %bb.n
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #27
  br label %.lr.ph.preheader

bb.o:                                             ; preds = %bb.n
  %.not143 = icmp eq i64 %17, 0
  br i1 %.not143, label %.loopexit130, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread, %bb.o
  %19 = or disjoint i64 %4, %8
  %20 = or disjoint i64 %19, %13
  %21 = or disjoint i64 %20, %i.bo
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.s
end_hunk_8
begin_hunk_9_@tt_cmap14_validate:bb.a
bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cn = add nuw nsw i64 %i.ck, 1
  %i.co = add nuw nsw i64 %.0119132, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.co, %21
  br i1 %exitcond.not, label %.loopexit130, label %.lr.ph, !llvm.loop !115

.loopexit130:                                     ; preds = %bb.s, %bb.o, %bb.k
end_hunk_9
begin_hunk_10_@tt_cmap14_validate:bb.a
  br i1 %.not126, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %.loopexit130
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 %i.bh ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4 ; 3 uses
  %i.cr = load volatile ptr, ptr %i.b, align 8, !tbaa !19
  %i.cs = icmp ugt ptr %i.cq, %i.cr
end_hunk_10
begin_hunk_11_@tt_cmap14_validate:bb.a
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %22 = load i8, ptr %i.cp, align 1, !tbaa !16
  %23 = zext i8 %22 to i64
  %24 = shl nuw nsw i64 %23, 24                   ; 2 uses
  %25 = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !16
  %27 = zext i8 %26 to i64
  %28 = shl nuw nsw i64 %27, 16                   ; 2 uses
  %29 = or disjoint i64 %28, %24
  %30 = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  %31 = load i8, ptr %30, align 1, !tbaa !16
  %32 = zext i8 %31 to i64
  %33 = shl nuw nsw i64 %32, 8                    ; 2 uses
  %34 = or disjoint i64 %29, %33
  %35 = getelementptr inbounds nuw i8, ptr %i.cp, i64 3
  %36 = load i8, ptr %35, align 1, !tbaa !16
  %i.ct = zext i8 %36 to i64                      ; 2 uses
  %37 = or disjoint i64 %34, %i.ct                ; 2 uses
  %i.cu = load volatile ptr, ptr %i.b, align 8, !tbaa !19
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.cq to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = udiv i64 %i.cx, 5
  %38 = icmp samesign ugt i64 %37, %i.cy
  br i1 %38, label %.thread155, label %bb.w

.thread155:                                       ; preds = %bb.v
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #27
  br label %.lr.ph137.preheader

bb.w:                                             ; preds = %bb.v
  %.not144 = icmp eq i64 %37, 0
  br i1 %.not144, label %.loopexit, label %.lr.ph137.preheader

.lr.ph137.preheader:                              ; preds = %.thread155, %bb.w
  %39 = or disjoint i64 %24, %28
  %40 = or disjoint i64 %39, %33
  %41 = or disjoint i64 %40, %i.ct
  br label %.lr.ph137

.lr.ph137:                                        ; preds = %.lr.ph137.preheader, %bb.ad
end_hunk_11
begin_hunk_12_@tt_cmap14_validate:bb.a

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.ea = add nuw nsw i64 %.0115135, 1            ; 2 uses
  %exitcond145.not = icmp eq i64 %i.ea, %41
  br i1 %exitcond145.not, label %.loopexit, label %.lr.ph137, !llvm.loop !116

.loopexit:                                        ; preds = %bb.ad, %bb.w, %.loopexit130
end_hunk_12
begin_hunk_13_@Load_SBit_Png:bb.a
  br i1 %.not75, label %.preheader, label %bb.ao

.preheader:                                       ; preds = %bb.an
  %i.cs = load i32, ptr %i.e, align 4, !tbaa !3
  %.fr = freeze i32 %i.cs                         ; 4 uses
  %i.ct = icmp sgt i32 %.fr, 0
  br i1 %i.ct, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
end_hunk_13
begin_hunk_14_@Load_SBit_Png:bb.a
  %i.cy = zext nneg i32 %i.cx to i64              ; 3 uses
  %i.cz = sext i32 %2 to i64                      ; 3 uses
  %i.da = sext i32 %i.cw to i64                   ; 3 uses
  %wide.trip.count = zext i32 %.fr to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.db = icmp eq i32 %.fr, 1
  br i1 %i.db, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an
end_hunk_14
begin_hunk_15_@Load_SBit_Png:bb.a

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod85 = trunc i32 %.fr to i1
  call void @llvm.assume(i1 %lcmp.mod85)
  %i.do = load ptr, ptr %i.cu, align 8, !tbaa !424
  %i.dp = add nsw i64 %indvars.iv.epil.init, %i.cz
end_hunk_15
