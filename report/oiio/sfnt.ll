inline.NumInlined: 86
inline.NumDeleted: 34
begin_hunk_0_@tt_cmap2_validate:bb.a
bb.f:                                             ; preds = %bb.e, %bb.h
  %.0102 = phi ptr [ %i.r, %bb.e ], [ %i.t, %bb.h ] ; 3 uses
  %.077101 = phi i32 [ 0, %bb.e ], [ %i.af, %bb.h ]
  %.079100 = phi i32 [ 0, %bb.e ], [ %spec.select, %bb.h ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0102, i64 2
  %i.u = load i8, ptr %.0102, align 1, !tbaa !16
  %i.v = zext i8 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 8
  %i.x = getelementptr inbounds nuw i8, ptr %.0102, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !16
  %i.z = zext i8 %i.y to i32                      ; 2 uses
  %i.aa = or disjoint i32 %i.w, %i.z
  %i.ab = load volatile i32, ptr %i.s, align 8, !tbaa !21
  %i.ac = icmp ult i32 %i.ab, 2
end_hunk_0
begin_hunk_1_@tt_cmap2_validate:bb.a

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = lshr i32 %i.aa, 3
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.ae, i32 %.079100) ; 3 uses
  %i.af = add nuw nsw i32 %.077101, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.af, 256
  br i1 %exitcond.not, label %bb.i, label %bb.f, !llvm.loop !31
end_hunk_1
begin_hunk_2_@tt_cmap2_validate:bb.a

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 224
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
end_hunk_2
begin_hunk_3_@tt_cmap2_validate:bb.a
.loopexit:                                        ; preds = %bb.v, %bb.p, %bb.s, %bb.l
  %.5 = phi ptr [ %i.bk, %bb.l ], [ %i.bk, %bb.p ], [ %i.bk, %bb.s ], [ %i.ch, %bb.v ]
  %i.ct = add nuw i32 %.178104, 1
  %exitcond107.not = icmp eq i32 %.178104, %spec.select
  br i1 %exitcond107.not, label %bb.w, label %bb.l, !llvm.loop !33

bb.w:                                             ; preds = %.loopexit
end_hunk_3
begin_hunk_4_@tt_cmap8_validate:bb.a
bb.e:                                             ; preds = %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8204
  %2 = load i32, ptr %i.p, align 1                ; 2 uses
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)      ; 2 uses
  %i.q = load volatile ptr, ptr %i.b, align 8, !tbaa !19
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.a to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = trunc i64 %i.t to i32
  %i.v = udiv i32 %i.u, 12
  %i.w = icmp ugt i32 %3, %i.v
  br i1 %i.w, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
end_hunk_4
begin_hunk_5_@tt_cmap8_validate:bb.a
  br label %.lr.ph114

bb.f:                                             ; preds = %bb.e
  %.not115 = icmp eq i32 %2, 0
  br i1 %.not115, label %._crit_edge, label %.lr.ph114

.lr.ph114:                                        ; preds = %.thread, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 224
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph114, %.loopexit
end_hunk_5
begin_hunk_6_@tt_cmap8_validate:bb.a

.loopexit:                                        ; preds = %bb.r, %bb.w, %.preheader, %bb.u, %bb.k
  %i.dp = add nuw i32 %.086112, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.dp, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !65

._crit_edge:                                      ; preds = %.loopexit, %bb.f
end_hunk_6
begin_hunk_7_@tt_cmap14_validate:bb.a
  br i1 %.not125, label %.loopexit130, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bc ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 3 uses
  %i.bm = load volatile ptr, ptr %i.b, align 8, !tbaa !19
  %i.bn = icmp ugt ptr %i.bl, %i.bm
end_hunk_7
begin_hunk_8_@tt_cmap14_validate:bb.a
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %2 = load i32, ptr %i.bk, align 1               ; 2 uses
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %i.bo = zext i32 %3 to i64                      ; 2 uses
  %i.bp = load volatile ptr, ptr %i.b, align 8, !tbaa !19
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bl to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = lshr i64 %i.bs, 2
  %4 = icmp samesign ult i64 %i.bt, %i.bo
  br i1 %4, label %.thread, label %bb.o

.thread:                                          ; preds = %bb.n
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #27
  br label %.lr.ph.preheader

bb.o:                                             ; preds = %bb.n
  %.not143 = icmp eq i32 %2, 0
  br i1 %.not143, label %.loopexit130, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread, %bb.o
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.s
end_hunk_8
begin_hunk_9_@tt_cmap14_validate:bb.a
bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cn = add nuw nsw i64 %i.ck, 1
  %i.co = add nuw nsw i64 %.0119132, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.co, %i.bo
  br i1 %exitcond.not, label %.loopexit130, label %.lr.ph, !llvm.loop !115

.loopexit130:                                     ; preds = %bb.s, %bb.o, %bb.k
end_hunk_9
begin_hunk_10_@tt_cmap14_validate:bb.a
  br i1 %.not126, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %.loopexit130
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 %i.bh ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4 ; 3 uses
  %i.cr = load volatile ptr, ptr %i.b, align 8, !tbaa !19
  %i.cs = icmp ugt ptr %i.cq, %i.cr
end_hunk_10
begin_hunk_11_@tt_cmap14_validate:bb.a
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %5 = load i32, ptr %i.cp, align 1               ; 2 uses
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %i.ct = zext i32 %6 to i64                      ; 2 uses
  %i.cu = load volatile ptr, ptr %i.b, align 8, !tbaa !19
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.cq to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = udiv i64 %i.cx, 5
  %7 = icmp samesign ult i64 %i.cy, %i.ct
  br i1 %7, label %.thread155, label %bb.w

.thread155:                                       ; preds = %bb.v
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #27
  br label %.lr.ph137.preheader

bb.w:                                             ; preds = %bb.v
  %.not144 = icmp eq i32 %5, 0
  br i1 %.not144, label %.loopexit, label %.lr.ph137.preheader

.lr.ph137.preheader:                              ; preds = %.thread155, %bb.w
  br label %.lr.ph137

.lr.ph137:                                        ; preds = %.lr.ph137.preheader, %bb.ad
end_hunk_11
begin_hunk_12_@tt_cmap14_validate:bb.a

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.ea = add nuw nsw i64 %.0115135, 1            ; 2 uses
  %exitcond145.not = icmp eq i64 %i.ea, %i.ct
  br i1 %exitcond145.not, label %.loopexit, label %.lr.ph137, !llvm.loop !116

.loopexit:                                        ; preds = %bb.ad, %bb.w, %.loopexit130
end_hunk_12
begin_hunk_13_@Load_SBit_Png:bb.a
  br i1 %.not75, label %.preheader, label %bb.ao

.preheader:                                       ; preds = %bb.an
  %i.cs = load i32, ptr %i.e, align 4, !tbaa !3   ; 4 uses
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
end_hunk_13
begin_hunk_14_@Load_SBit_Png:bb.a
  %i.cy = zext nneg i32 %i.cx to i64              ; 3 uses
  %i.cz = sext i32 %2 to i64                      ; 3 uses
  %i.da = sext i32 %i.cw to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.cs to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.db = icmp eq i32 %i.cs, 1
  br i1 %i.db, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an
end_hunk_14
begin_hunk_15_@Load_SBit_Png:bb.a

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod85 = trunc i32 %i.cs to i1
  call void @llvm.assume(i1 %lcmp.mod85)
  %i.do = load ptr, ptr %i.cu, align 8, !tbaa !424
  %i.dp = add nsw i64 %indvars.iv.epil.init, %i.cz
end_hunk_15
