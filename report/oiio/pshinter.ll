inline.NumInlined: 100
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@ps_hints_t1reset:bb.a
  %i.g = load i32, ptr %i.f, align 8, !tbaa !266
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !269  ; 4 uses
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %ps_dimension_end_mask.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !275
  %i.m = zext i32 %i.j to i64
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  store i32 %1, ptr %i.o, align 8, !tbaa !105
  br label %ps_dimension_end_mask.exit.i

ps_dimension_end_mask.exit.i:                     ; preds = %bb.d, %bb.c
  %i.p = add i32 %i.j, 1                          ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !273  ; 2 uses
  %i.s = icmp ugt i32 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %ps_dimension_end_mask.exit.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !101
  br label %bb.f

bb.e:                                             ; preds = %ps_dimension_end_mask.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.t = and i32 %i.j, -8
  %i.u = add i32 %i.t, 8                          ; 2 uses
  %i.v = zext i32 %i.r to i64
  %i.w = zext i32 %i.u to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !101
  %i.z = call ptr @ft_mem_realloc(ptr noundef %i.e, i64 noundef 24, i64 noundef %i.v, i64 noundef %i.w, ptr noundef %i.y, ptr noundef nonnull %i.b) #12 ; 2 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !101
  %i.aa = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i, label %ps_mask_table_ensure.exit.thread.i.i, label %ps_dimension_reset_mask.exit

ps_mask_table_ensure.exit.thread.i.i:             ; preds = %bb.e
  store i32 %i.u, ptr %i.q, align 4, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.f

bb.f:                                             ; preds = %ps_mask_table_ensure.exit.thread.i.i, %._crit_edge.i.i
  %i.ab = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.z, %ps_mask_table_ensure.exit.thread.i.i ]
  %i.ac = zext i32 %i.p to i64
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.ac ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -24
  store i32 0, ptr %i.ae, align 8, !tbaa !107
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -8
  store i32 0, ptr %i.af, align 8, !tbaa !105
  %i.ag = getelementptr inbounds i8, ptr %i.ad, i64 -20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !274 ; 2 uses
  %.not24.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not24.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds i8, ptr %i.ad, i64 -16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !108
  %i.ak = lshr i32 %i.ah, 3
  %i.al = zext nneg i32 %i.ak to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.aj, i8 0, i64 %i.al, i1 false)
  br label %bb.h

ps_dimension_reset_mask.exit:                     ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.n

bb.h:                                             ; preds = %bb.f, %bb.g
  store i32 %i.p, ptr %i.i, align 8, !tbaa !104
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !269 ; 4 uses
  %.not.i.i20 = icmp eq i32 %i.an, 0
  br i1 %.not.i.i20, label %ps_dimension_end_mask.exit.i21, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !275
  %i.aq = zext i32 %i.an to i64
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8
  store i32 %1, ptr %i.as, align 8, !tbaa !105
  br label %ps_dimension_end_mask.exit.i21

ps_dimension_end_mask.exit.i21:                   ; preds = %bb.i, %bb.h
  %i.at = add i32 %i.an, 1                        ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !273 ; 2 uses
  %i.aw = icmp ugt i32 %i.at, %i.av
  br i1 %i.aw, label %bb.j, label %._crit_edge.i.i22

._crit_edge.i.i22:                                ; preds = %ps_dimension_end_mask.exit.i21
  %.phi.trans.insert.i.i23 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre.i.i24 = load ptr, ptr %.phi.trans.insert.i.i23, align 8, !tbaa !101
  br label %bb.k

bb.j:                                             ; preds = %ps_dimension_end_mask.exit.i21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.ax = and i32 %i.an, -8
  %i.ay = add i32 %i.ax, 8                        ; 2 uses
  %i.az = zext i32 %i.av to i64
  %i.ba = zext i32 %i.ay to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !101
  %i.bd = call ptr @ft_mem_realloc(ptr noundef %i.e, i64 noundef 24, i64 noundef %i.az, i64 noundef %i.ba, ptr noundef %i.bc, ptr noundef nonnull %i.a) #12 ; 2 uses
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !101
  %i.be = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %.not.i.i.i27 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i27, label %ps_mask_table_ensure.exit.thread.i.i29, label %ps_dimension_reset_mask.exit30

ps_mask_table_ensure.exit.thread.i.i29:           ; preds = %bb.j
  store i32 %i.ay, ptr %i.au, align 4, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.k

bb.k:                                             ; preds = %ps_mask_table_ensure.exit.thread.i.i29, %._crit_edge.i.i22
  %i.bf = phi ptr [ %.pre.i.i24, %._crit_edge.i.i22 ], [ %i.bd, %ps_mask_table_ensure.exit.thread.i.i29 ]
  %i.bg = zext i32 %i.at to i64
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %i.bg ; 4 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -24
  store i32 0, ptr %i.bi, align 8, !tbaa !107
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 -8
  store i32 0, ptr %i.bj, align 8, !tbaa !105
  %i.bk = getelementptr inbounds i8, ptr %i.bh, i64 -20
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !274 ; 2 uses
  %.not24.i.i25 = icmp eq i32 %i.bl, 0
  br i1 %.not24.i.i25, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds i8, ptr %i.bh, i64 -16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !108
  %i.bo = lshr i32 %i.bl, 3
  %i.bp = zext nneg i32 %i.bo to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.bn, i8 0, i64 %i.bp, i1 false)
  br label %bb.m

ps_dimension_reset_mask.exit30:                   ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 %i.at, ptr %i.am, align 8, !tbaa !104
  br label %bb.o

bb.n:                                             ; preds = %ps_dimension_reset_mask.exit, %bb.b, %ps_dimension_reset_mask.exit30
  %.014.ph = phi i32 [ %i.be, %ps_dimension_reset_mask.exit30 ], [ 6, %bb.b ], [ %i.aa, %ps_dimension_reset_mask.exit ]
  store i32 %.014.ph, ptr %i.c, align 8, !tbaa !206
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.a, %bb.n
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @t1_hints_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call i32 @ps_hints_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ps_dimension_end(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %3 = alloca %struct.PS_MaskRec_, align 8        ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !269  ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %ps_dimension_end_mask.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !275
  %i.f = zext i32 %i.c to i64
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8
  store i32 %1, ptr %i.h, align 8, !tbaa !105
  br label %ps_dimension_end_mask.exit

ps_dimension_end_mask.exit:                       ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !104  ; 4 uses
  %.not.i3 = icmp eq i32 %i.j, 0
  br i1 %.not.i3, label %ps_mask_table_merge_all.exit, label %.lr.ph43.i

.lr.ph43.i:                                       ; preds = %ps_dimension_end_mask.exit
  %.01740.i = add i32 %i.j, -1
  %i.k = getelementptr i8, ptr %0, i64 40
  br label %bb.c

bb.c:                                             ; preds = %ps_mask_table_merge.exit.thread.i, %.lr.ph43.i
  %i.l = phi i32 [ %i.j, %.lr.ph43.i ], [ %17, %ps_mask_table_merge.exit.thread.i ] ; 4 uses
  %.01742.i = phi i32 [ %.01740.i, %.lr.ph43.i ], [ %.017.i, %ps_mask_table_merge.exit.thread.i ] ; 7 uses
  %.017.in41.i = phi i32 [ %i.j, %.lr.ph43.i ], [ %.01742.i, %ps_mask_table_merge.exit.thread.i ]
  %i.m = add i32 %.017.in41.i, -2                 ; 2 uses
  %i.n = icmp ult i32 %i.m, %.01742.i
  br i1 %i.n, label %.lr.ph.i, label %ps_mask_table_merge.exit.thread.i

.lr.ph.i:                                         ; preds = %bb.c
  %.val.i = load ptr, ptr %i.k, align 8, !tbaa !101 ; 4 uses
  %i.o = zext i32 %.01742.i to i64
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !108  ; 3 uses
  %i.s = load i32, ptr %i.p, align 8, !tbaa !107
  br label %bb.d

bb.d:                                             ; preds = %ps_mask_table_test_intersect.exit.thread.i, %.lr.ph.i
  %.01639.i = phi i32 [ %i.m, %.lr.ph.i ], [ %i.dk, %ps_mask_table_test_intersect.exit.thread.i ] ; 4 uses
  %i.t = zext i32 %.01639.i to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !108  ; 3 uses
  %i.x = load i32, ptr %i.u, align 8, !tbaa !107
  %i.y = call i32 @llvm.umin.i32(i32 %i.s, i32 %i.x) ; 4 uses
  %i.z = icmp ugt i32 %i.y, 7
  br i1 %i.z, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  %i.aa = add i32 %i.y, -8
  %i.ab = lshr i32 %i.aa, 3
  %narrow.i.i = add nuw nsw i32 %i.ab, 1
  %i.ac = zext nneg i32 %narrow.i.i to i64        ; 2 uses
  %scevgep.i.i = getelementptr i8, ptr %i.r, i64 %i.ac
  %scevgep11.i.i = getelementptr i8, ptr %i.w, i64 %i.ac
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.preheader.i.i
  %.06.i.i = phi i32 [ %i.ai, %bb.e ], [ %i.y, %.lr.ph.preheader.i.i ]
  %.0235.i.i = phi ptr [ %i.ag, %bb.e ], [ %i.r, %.lr.ph.preheader.i.i ] ; 2 uses
  %.0244.i.i = phi ptr [ %i.ah, %bb.e ], [ %i.w, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ad = load i8, ptr %.0235.i.i, align 1, !tbaa !51
  %i.ae = load i8, ptr %.0244.i.i, align 1, !tbaa !51
  %i.af = and i8 %i.ae, %i.ad
  %.not.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i, label %bb.e, label %ps_mask_table_test_intersect.exit.thread27.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0235.i.i, i64 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.0244.i.i, i64 1
  %i.ai = add i32 %.06.i.i, -8                    ; 3 uses
  %i.aj = icmp ugt i32 %i.ai, 7
  br i1 %i.aj, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !276

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %.024.lcssa.i.i = phi ptr [ %i.w, %bb.d ], [ %scevgep11.i.i, %bb.e ]
  %.023.lcssa.i.i = phi ptr [ %i.r, %bb.d ], [ %scevgep.i.i, %bb.e ]
  %.0.lcssa.i.i = phi i32 [ %i.y, %bb.d ], [ %i.ai, %bb.e ] ; 2 uses
  %i.ak = icmp eq i32 %.0.lcssa.i.i, 0
  br i1 %i.ak, label %ps_mask_table_test_intersect.exit.thread.i, label %ps_mask_table_test_intersect.exit.i

ps_mask_table_test_intersect.exit.i:              ; preds = %._crit_edge.i.i
  %i.al = load i8, ptr %.023.lcssa.i.i, align 1, !tbaa !51
  %i.am = load i8, ptr %.024.lcssa.i.i, align 1, !tbaa !51
  %i.an = and i8 %i.am, %i.al
  %i.ao = zext i8 %i.an to i32
  %i.ap = lshr i32 255, %.0.lcssa.i.i
  %.not.not.i = icmp samesign ult i32 %i.ap, %i.ao
  br i1 %.not.not.i, label %ps_mask_table_test_intersect.exit.thread27.i, label %ps_mask_table_test_intersect.exit.thread.i

ps_mask_table_test_intersect.exit.thread27.i:     ; preds = %ps_mask_table_test_intersect.exit.i, %.lr.ph.i.i
  %spec.select.i.i = call i32 @llvm.umax.i32(i32 %.01639.i, i32 %.01742.i) ; 4 uses
  %spec.select68.i.i = call i32 @llvm.umin.i32(i32 %.01639.i, i32 %.01742.i) ; 2 uses
  %4 = icmp ult i32 %spec.select68.i.i, %spec.select.i.i
  %5 = icmp ult i32 %spec.select.i.i, %i.l
  %or.cond.i = and i1 %4, %5
  br i1 %or.cond.i, label %bb.f, label %ps_mask_table_merge.exit.thread.i

bb.f:                                             ; preds = %ps_mask_table_test_intersect.exit.thread27.i
  %6 = zext i32 %spec.select68.i.i to i64
  %7 = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %6 ; 5 uses
  %8 = zext i32 %spec.select.i.i to i64
  %9 = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %8 ; 8 uses
  %10 = load i32, ptr %9, align 8, !tbaa !107     ; 5 uses
  %.not.i21.i = icmp eq i32 %10, 0
  br i1 %.not.i21.i, label %.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %11 = load i32, ptr %7, align 8, !tbaa !107
  %i.aq = icmp ugt i32 %10, %11
  br i1 %i.aq, label %bb.h, label %._crit_edge.i22.i

._crit_edge.i22.i:                                ; preds = %bb.g
  %.pre76.i.i = add i32 %10, 7
  %.pre77.i.i = lshr i32 %.pre76.i.i, 3
  br label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !274
  %i.at = lshr i32 %i.as, 3                       ; 2 uses
  %i.au = add i32 %10, 7
  %i.av = lshr i32 %i.au, 3                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.aw = icmp samesign ugt i32 %i.av, %i.at
  br i1 %i.aw, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ax = add nuw nsw i32 %i.av, 7
  %i.ay = and i32 %i.ax, 1073741816               ; 2 uses
  %i.az = zext nneg i32 %i.at to i64
  %i.ba = zext nneg i32 %i.ay to i64
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %13 = load ptr, ptr %12, align 8, !tbaa !108
  %i.bb = call ptr @ft_mem_realloc(ptr noundef %2, i64 noundef 1, i64 noundef %i.az, i64 noundef %i.ba, ptr noundef %13, ptr noundef nonnull %i.a) #12
  store ptr %i.bb, ptr %12, align 8, !tbaa !108
  %i.bc = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i, label %bb.j, label %ps_mask_table_merge.exit.i

bb.j:                                             ; preds = %bb.i
  %i.bd = shl i32 %i.ay, 3
  store i32 %i.bd, ptr %i.ar, align 4, !tbaa !274
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  store i32 %10, ptr %7, align 8, !tbaa !107
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i22.i
  %.pre-phi78.i.i = phi i32 [ %.pre77.i.i, %._crit_edge.i22.i ], [ %i.av, %bb.k ] ; 9 uses
  %.not6672.i.i = icmp eq i32 %.pre-phi78.i.i, 0
  br i1 %.not6672.i.i, label %.thread.i.i, label %iter.check

iter.check:                                       ; preds = %bb.l
  %14 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %15 = load ptr, ptr %14, align 8, !tbaa !108    ; 8 uses
  %16 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.be = load ptr, ptr %16, align 8, !tbaa !108  ; 8 uses
  %i.bf = zext nneg i32 %.pre-phi78.i.i to i64    ; 5 uses
  %min.iters.check = icmp samesign ult i32 %.pre-phi78.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i24.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %15, i64 1
  %i.bg = add nsw i32 %.pre-phi78.i.i, -1
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %scevgep36 = getelementptr i8, ptr %scevgep, i64 %i.bh
  %scevgep37 = getelementptr i8, ptr %i.be, i64 1
  %scevgep38 = getelementptr i8, ptr %scevgep37, i64 %i.bh
  %bound0 = icmp ult ptr %15, %scevgep38
  %bound1 = icmp ult ptr %i.be, %scevgep36
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i24.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check39 = icmp samesign ult i32 %.pre-phi78.i.i, 32
  br i1 %min.iters.check39, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bf, 28
  %n.vec = and i64 %i.bf, 536870880               ; 6 uses
  %i.bi = getelementptr i8, ptr %15, i64 %n.vec
  %i.bj = getelementptr i8, ptr %i.be, i64 %n.vec
  %i.bk = trunc nuw nsw i64 %n.vec to i32
  %i.bl = sub nsw i32 %.pre-phi78.i.i, %i.bk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %15, i64 %index ; 3 uses
  %next.gep40 = getelementptr i8, ptr %i.be, i64 %index ; 2 uses
  %i.bm = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !51, !alias.scope !277, !noalias !280
  %wide.load41 = load <16 x i8>, ptr %i.bm, align 1, !tbaa !51, !alias.scope !277, !noalias !280
  %i.bn = getelementptr i8, ptr %next.gep40, i64 16
  %wide.load42 = load <16 x i8>, ptr %next.gep40, align 1, !tbaa !51, !alias.scope !280
  %wide.load43 = load <16 x i8>, ptr %i.bn, align 1, !tbaa !51, !alias.scope !280
  %i.bo = or <16 x i8> %wide.load42, %wide.load
  %i.bp = or <16 x i8> %wide.load43, %wide.load41
  store <16 x i8> %i.bo, ptr %next.gep, align 1, !tbaa !51, !alias.scope !277, !noalias !280
  store <16 x i8> %i.bp, ptr %i.bm, align 1, !tbaa !51, !alias.scope !277, !noalias !280
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !282

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bf
  br i1 %cmp.n, label %.thread.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i24.i.preheader, label %vec.epilog.ph, !prof !283

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec47 = and i64 %i.bf, 536870908             ; 5 uses
  %i.br = getelementptr i8, ptr %15, i64 %n.vec47
  %i.bs = getelementptr i8, ptr %i.be, i64 %n.vec47
  %i.bt = trunc nuw nsw i64 %n.vec47 to i32
  %i.bu = sub nsw i32 %.pre-phi78.i.i, %i.bt
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index48 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next53, %vec.epilog.vector.body ] ; 3 uses
  %next.gep49 = getelementptr i8, ptr %15, i64 %index48 ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.be, i64 %index48
  %wide.load51 = load <4 x i8>, ptr %next.gep49, align 1, !tbaa !51, !alias.scope !277, !noalias !280
  %wide.load52 = load <4 x i8>, ptr %next.gep50, align 1, !tbaa !51, !alias.scope !280
  %i.bv = or <4 x i8> %wide.load52, %wide.load51
  store <4 x i8> %i.bv, ptr %next.gep49, align 1, !tbaa !51, !alias.scope !277, !noalias !280
  %index.next53 = add nuw i64 %index48, 4         ; 2 uses
  %i.bw = icmp eq i64 %index.next53, %n.vec47
  br i1 %i.bw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !284

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n54 = icmp eq i64 %n.vec47, %i.bf
  br i1 %cmp.n54, label %.thread.i.i, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04975.i.i.ph = phi ptr [ %15, %iter.check ], [ %15, %vector.memcheck ], [ %i.bi, %vec.epilog.iter.check ], [ %i.br, %vec.epilog.middle.block ] ; 2 uses
  %.05074.i.i.ph = phi ptr [ %i.be, %iter.check ], [ %i.be, %vector.memcheck ], [ %i.bj, %vec.epilog.iter.check ], [ %i.bs, %vec.epilog.middle.block ] ; 2 uses
  %.05173.i.i.ph = phi i32 [ %.pre-phi78.i.i, %iter.check ], [ %.pre-phi78.i.i, %vector.memcheck ], [ %i.bl, %vec.epilog.iter.check ], [ %i.bu, %vec.epilog.middle.block ] ; 4 uses
  %i.bx = add nsw i32 %.05173.i.i.ph, -1
  %xtraiter = and i32 %.05173.i.i.ph, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i24.i.prol.loopexit, label %.lr.ph.i24.i.prol

.lr.ph.i24.i.prol:                                ; preds = %.lr.ph.i24.i.preheader, %.lr.ph.i24.i.prol
  %.04975.i.i.prol = phi ptr [ %i.cb, %.lr.ph.i24.i.prol ], [ %.04975.i.i.ph, %.lr.ph.i24.i.preheader ] ; 3 uses
  %.05074.i.i.prol = phi ptr [ %i.cc, %.lr.ph.i24.i.prol ], [ %.05074.i.i.ph, %.lr.ph.i24.i.preheader ] ; 2 uses
  %.05173.i.i.prol = phi i32 [ %i.cd, %.lr.ph.i24.i.prol ], [ %.05173.i.i.ph, %.lr.ph.i24.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i24.i.prol ], [ 0, %.lr.ph.i24.i.preheader ]
  %i.by = load i8, ptr %.04975.i.i.prol, align 1, !tbaa !51
  %i.bz = load i8, ptr %.05074.i.i.prol, align 1, !tbaa !51
  %i.ca = or i8 %i.bz, %i.by
  store i8 %i.ca, ptr %.04975.i.i.prol, align 1, !tbaa !51
  %i.cb = getelementptr inbounds nuw i8, ptr %.04975.i.i.prol, i64 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.05074.i.i.prol, i64 1 ; 2 uses
  %i.cd = add nsw i32 %.05173.i.i.prol, -1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i24.i.prol.loopexit, label %.lr.ph.i24.i.prol, !llvm.loop !285

.lr.ph.i24.i.prol.loopexit:                       ; preds = %.lr.ph.i24.i.prol, %.lr.ph.i24.i.preheader
  %.04975.i.i.unr = phi ptr [ %.04975.i.i.ph, %.lr.ph.i24.i.preheader ], [ %i.cb, %.lr.ph.i24.i.prol ]
  %.05074.i.i.unr = phi ptr [ %.05074.i.i.ph, %.lr.ph.i24.i.preheader ], [ %i.cc, %.lr.ph.i24.i.prol ]
  %.05173.i.i.unr = phi i32 [ %.05173.i.i.ph, %.lr.ph.i24.i.preheader ], [ %i.cd, %.lr.ph.i24.i.prol ]
  %i.ce = icmp ult i32 %i.bx, 3
  br i1 %i.ce, label %.thread.i.i, label %.lr.ph.i24.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i.prol.loopexit, %.lr.ph.i24.i
  %.04975.i.i = phi ptr [ %i.cx, %.lr.ph.i24.i ], [ %.04975.i.i.unr, %.lr.ph.i24.i.prol.loopexit ] ; 6 uses
  %.05074.i.i = phi ptr [ %i.cy, %.lr.ph.i24.i ], [ %.05074.i.i.unr, %.lr.ph.i24.i.prol.loopexit ] ; 5 uses
  %.05173.i.i = phi i32 [ %i.cz, %.lr.ph.i24.i ], [ %.05173.i.i.unr, %.lr.ph.i24.i.prol.loopexit ]
  %i.cf = load i8, ptr %.04975.i.i, align 1, !tbaa !51
  %i.cg = load i8, ptr %.05074.i.i, align 1, !tbaa !51
  %i.ch = or i8 %i.cg, %i.cf
  store i8 %i.ch, ptr %.04975.i.i, align 1, !tbaa !51
  %i.ci = getelementptr inbounds nuw i8, ptr %.04975.i.i, i64 1 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.05074.i.i, i64 1
  %i.ck = load i8, ptr %i.ci, align 1, !tbaa !51
  %i.cl = load i8, ptr %i.cj, align 1, !tbaa !51
  %i.cm = or i8 %i.cl, %i.ck
  store i8 %i.cm, ptr %i.ci, align 1, !tbaa !51
  %i.cn = getelementptr inbounds nuw i8, ptr %.04975.i.i, i64 2 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.05074.i.i, i64 2
  %i.cp = load i8, ptr %i.cn, align 1, !tbaa !51
  %i.cq = load i8, ptr %i.co, align 1, !tbaa !51
  %i.cr = or i8 %i.cq, %i.cp
  store i8 %i.cr, ptr %i.cn, align 1, !tbaa !51
  %i.cs = getelementptr inbounds nuw i8, ptr %.04975.i.i, i64 3 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.05074.i.i, i64 3
  %i.cu = load i8, ptr %i.cs, align 1, !tbaa !51
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !51
  %i.cw = or i8 %i.cv, %i.cu
  store i8 %i.cw, ptr %i.cs, align 1, !tbaa !51
  %i.cx = getelementptr inbounds nuw i8, ptr %.04975.i.i, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %.05074.i.i, i64 4
  %i.cz = add nsw i32 %.05173.i.i, -4             ; 2 uses
  %.not66.i.i.3 = icmp eq i32 %i.cz, 0
  br i1 %.not66.i.i.3, label %.thread.i.i, label %.lr.ph.i24.i, !llvm.loop !286

.thread.i.i:                                      ; preds = %.lr.ph.i24.i.prol.loopexit, %.lr.ph.i24.i, %middle.block, %vec.epilog.middle.block, %bb.l, %bb.f
  store i32 0, ptr %9, align 8, !tbaa !107
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 0, ptr %i.da, align 8, !tbaa !105
  %i.db = load i32, ptr %i.i, align 8, !tbaa !104 ; 2 uses
  %i.dc = xor i32 %spec.select.i.i, -1
  %i.dd = add i32 %i.db, %i.dc                    ; 2 uses
  %.not67.i.i = icmp eq i32 %i.dd, 0
  br i1 %.not67.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !287
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.df = zext i32 %i.dd to i64                   ; 2 uses
  %i.dg = mul nuw nsw i64 %i.df, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %9, ptr nonnull align 8 %i.de, i64 %i.dg, i1 false)
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %9, i64 %i.df
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !287
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.pre.i.i = load i32, ptr %i.i, align 8, !tbaa !104
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread.i.i
  %i.di = phi i32 [ %.pre.i.i, %bb.m ], [ %i.db, %.thread.i.i ]
  %i.dj = add i32 %i.di, -1                       ; 2 uses
  store i32 %i.dj, ptr %i.i, align 8, !tbaa !104
  br label %ps_mask_table_merge.exit.thread.i

ps_mask_table_merge.exit.i:                       ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %ps_mask_table_merge_all.exit

ps_mask_table_test_intersect.exit.thread.i:       ; preds = %ps_mask_table_test_intersect.exit.i, %._crit_edge.i.i
  %i.dk = add i32 %.01639.i, -1                   ; 2 uses
  %i.dl = icmp ult i32 %i.dk, %.01742.i
  br i1 %i.dl, label %bb.d, label %ps_mask_table_merge.exit.thread.i, !llvm.loop !289

ps_mask_table_merge.exit.thread.i:                ; preds = %ps_mask_table_test_intersect.exit.thread.i, %bb.n, %ps_mask_table_test_intersect.exit.thread27.i, %bb.c
  %17 = phi i32 [ %i.l, %ps_mask_table_test_intersect.exit.thread27.i ], [ %i.l, %bb.c ], [ %i.dj, %bb.n ], [ %i.l, %ps_mask_table_test_intersect.exit.thread.i ] ; 2 uses
  %.017.i = add i32 %.01742.i, -1                 ; 2 uses
  %i.dm = icmp ult i32 %.017.i, %17
  br i1 %i.dm, label %bb.c, label %ps_mask_table_merge_all.exit, !llvm.loop !290

ps_mask_table_merge_all.exit:                     ; preds = %ps_mask_table_merge.exit.thread.i, %ps_dimension_end_mask.exit, %ps_mask_table_merge.exit.i
  %.2.i = phi i32 [ %i.bc, %ps_mask_table_merge.exit.i ], [ 0, %ps_dimension_end_mask.exit ], [ 0, %ps_mask_table_merge.exit.thread.i ]
  ret i32 %.2.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare hidden ptr @ft_mem_realloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @FT_RoundFix(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ps_dimension_add_t1stem(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = icmp slt i32 %2, 0
  %i.e = icmp eq i32 %2, -21                      ; 2 uses
  %i.f = add i32 %1, -21
  %spec.select50 = select i1 %i.e, i32 3, i32 1
  %.038 = tail call i32 @llvm.smax.i32(i32 %2, i32 0) ; 2 uses
  %.137 = select i1 %i.e, i32 %i.f, i32 %1        ; 2 uses
  %.1 = select i1 %i.d, i32 %spec.select50, i32 0
  %i.g = load i32, ptr %0, align 8, !tbaa !267    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !291  ; 3 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.03370 = phi i32 [ %i.o, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %storemerge69 = phi ptr [ %i.p, %bb.c ], [ %i.i, %bb.a ] ; 3 uses
  %i.j = load i32, ptr %storemerge69, align 4, !tbaa !292
  %i.k = icmp eq i32 %i.j, %.137
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge69, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !293
  %i.n = icmp eq i32 %i.m, %.038
  br i1 %i.n, label %.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.o = add nuw i32 %.03370, 1                   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge69, i64 12
  %exitcond.not = icmp eq i32 %i.o, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !294

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.q = add i32 %i.g, 1                          ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !295  ; 2 uses
  %i.t = icmp ugt i32 %i.q, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.u = and i32 %i.g, -8
  %i.v = add i32 %i.u, 8                          ; 2 uses
  %i.w = zext i32 %i.s to i64
  %i.x = zext i32 %i.v to i64
  %i.y = call ptr @ft_mem_qrealloc(ptr noundef %3, i64 noundef 12, i64 noundef %i.w, i64 noundef %i.x, ptr noundef %i.i, ptr noundef nonnull %i.c) #12 ; 2 uses
  store ptr %i.y, ptr %i.h, align 8, !tbaa !211
  %i.z = load i32, ptr %i.c, align 4, !tbaa !3    ; 2 uses
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %ps_hint_table_ensure.exit.thread.i, label %ps_hint_table_alloc.exit

ps_hint_table_ensure.exit.thread.i:               ; preds = %bb.d
  store i32 %i.v, ptr %i.r, align 4, !tbaa !295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.e

ps_hint_table_alloc.exit:                         ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.s

bb.e:                                             ; preds = %ps_hint_table_ensure.exit.thread.i, %._crit_edge
  %i.aa = phi ptr [ %i.y, %ps_hint_table_ensure.exit.thread.i ], [ %i.i, %._crit_edge ]
  %i.ab = zext i32 %i.q to i64
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.aa, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -12
  store i32 %i.q, ptr %0, align 8, !tbaa !207
  store i32 %.137, ptr %i.ad, align 4, !tbaa !292
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -8
  store i32 %.038, ptr %i.ae, align 4, !tbaa !293
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 -4
  store i32 %.1, ptr %i.af, align 4, !tbaa !212
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.e
  %.03368 = phi i32 [ %i.g, %bb.e ], [ %.03370, %bb.b ] ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !104 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !273
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.g, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.f
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !101
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !101
  %i.ao = call ptr @ft_mem_realloc(ptr noundef %3, i64 noundef 24, i64 noundef 0, i64 noundef 8, ptr noundef %i.an, ptr noundef nonnull %i.b) #12 ; 2 uses
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !101
  %i.ap = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i, label %ps_mask_table_ensure.exit.thread.i.i, label %ps_mask_table_last.exit

ps_mask_table_ensure.exit.thread.i.i:             ; preds = %bb.g
  store i32 8, ptr %i.aj, align 4, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.h

bb.h:                                             ; preds = %ps_mask_table_ensure.exit.thread.i.i, %._crit_edge.i.i
  %i.aq = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ao, %ps_mask_table_ensure.exit.thread.i.i ] ; 5 uses
  store i32 0, ptr %i.aq, align 8, !tbaa !107
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i32 0, ptr %i.ar, align 8, !tbaa !105
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !274 ; 2 uses
  %.not24.i.i = icmp eq i32 %i.at, 0
  br i1 %.not24.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !108
  %i.aw = lshr i32 %i.at, 3
  %i.ax = zext nneg i32 %i.aw to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.av, i8 0, i64 %i.ax, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 1, ptr %i.ag, align 8, !tbaa !104
  br label %bb.l

bb.k:                                             ; preds = %.thread
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !101
  %i.ba = zext i32 %i.ah to i64
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -24
  br label %bb.l

ps_mask_table_last.exit:                          ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.s

bb.l:                                             ; preds = %bb.k, %bb.j
  %.08.i.ph = phi ptr [ %i.aq, %bb.j ], [ %i.bc, %bb.k ] ; 5 uses
  %i.bd = load i32, ptr %.08.i.ph, align 8, !tbaa !107
  %.not.i = icmp ult i32 %.03368, %i.bd
  br i1 %.not.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = add i32 %.03368, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.ph, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !274
  %i.bh = lshr i32 %i.bg, 3                       ; 2 uses
  %i.bi = add i32 %.03368, 8
  %i.bj = lshr i32 %i.bi, 3                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.bk = icmp samesign ugt i32 %i.bj, %i.bh
  br i1 %i.bk, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bl = add nuw nsw i32 %i.bj, 7
  %i.bm = and i32 %i.bl, 1073741816               ; 2 uses
  %i.bn = zext nneg i32 %i.bh to i64
  %i.bo = zext nneg i32 %i.bm to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %.08.i.ph, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !108
  %i.br = call ptr @ft_mem_realloc(ptr noundef %3, i64 noundef 1, i64 noundef %i.bn, i64 noundef %i.bo, ptr noundef %i.bq, ptr noundef nonnull %i.a) #12
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !108
  %i.bs = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %.not.i.i53 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i53, label %bb.o, label %ps_mask_set_bit.exit

bb.o:                                             ; preds = %bb.n
  %i.bt = shl i32 %i.bm, 3
  store i32 %i.bt, ptr %i.bf, align 4, !tbaa !274
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  store i32 %i.be, ptr %.08.i.ph, align 8, !tbaa !107
end_hunk_0
begin_hunk_1_@ps_dimension_set_mask_bits:bb.a
  %i.av = zext nneg i32 %i.au to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.at, i8 0, i64 %i.av, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 1, ptr %i.d, align 8, !tbaa !104
  br label %bb.m

bb.l:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !101
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.x
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -24
  br label %bb.m

ps_mask_table_last.exit.i:                        ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %ps_mask_table_set_bits.exit

bb.m:                                             ; preds = %bb.l, %bb.k
  %.08.i.ph.i = phi ptr [ %i.ao, %bb.k ], [ %i.az, %bb.l ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.ph.i, i64 4 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !274
  %i.bc = lshr i32 %i.bb, 3                       ; 2 uses
  %i.bd = add i32 %3, 7
  %i.be = lshr i32 %i.bd, 3                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.bf = icmp samesign ugt i32 %i.be, %i.bc
  br i1 %i.bf, label %bb.n, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.m
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.08.i.ph.i, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !108
  br label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bg = add nuw nsw i32 %i.be, 7
  %i.bh = and i32 %i.bg, 1073741816               ; 2 uses
  %i.bi = zext nneg i32 %i.bc to i64
  %i.bj = zext nneg i32 %i.bh to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.ph.i, i64 8 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !108
  %i.bm = call ptr @ft_mem_realloc(ptr noundef %5, i64 noundef 1, i64 noundef %i.bi, i64 noundef %i.bj, ptr noundef %i.bl, ptr noundef nonnull %i.a) #12 ; 2 uses
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !108
  %i.bn = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %.not.i.i10 = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i10, label %bb.o, label %ps_mask_ensure.exit.i

bb.o:                                             ; preds = %bb.n
  %i.bo = shl i32 %i.bh, 3
  store i32 %i.bo, ptr %i.ba, align 4, !tbaa !274
  br label %bb.p

ps_mask_ensure.exit.i:                            ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %ps_mask_table_set_bits.exit

bb.p:                                             ; preds = %bb.o, %._crit_edge.i
  %i.bp = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.bm, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  store i32 %3, ptr %.08.i.ph.i, align 8, !tbaa !107
  %.not4150.i = icmp eq i32 %3, 0
  br i1 %.not4150.i, label %ps_mask_table_set_bits.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.p
  %i.bq = and i32 %2, 7
  %i.br = lshr exact i32 128, %i.bq
  %i.bs = lshr i32 %2, 3
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %i.bt
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.02655.i = phi i32 [ %.1.i, %.lr.ph.i ], [ 128, %.lr.ph.preheader.i ] ; 3 uses
  %.02754.i = phi ptr [ %.128.i, %.lr.ph.i ], [ %i.bp, %.lr.ph.preheader.i ] ; 3 uses
  %.02953.i = phi i32 [ %.130.i, %.lr.ph.i ], [ %i.br, %.lr.ph.preheader.i ] ; 2 uses
  %.03152.i = phi ptr [ %.132.i, %.lr.ph.i ], [ %i.bu, %.lr.ph.preheader.i ] ; 2 uses
  %.03451.i = phi i32 [ %i.ci, %.lr.ph.i ], [ %3, %.lr.ph.preheader.i ]
  %i.bv = load i8, ptr %.02754.i, align 1, !tbaa !51
  %i.bw = zext i8 %i.bv to i32                    ; 2 uses
  %i.bx = xor i32 %.02655.i, -1
  %i.by = and i32 %i.bw, %i.bx
  %i.bz = load i8, ptr %.03152.i, align 1, !tbaa !51
  %i.ca = zext i8 %i.bz to i32
  %i.cb = and i32 %.02953.i, %i.ca
  %.not42.i = icmp eq i32 %i.cb, 0
  %i.cc = or i32 %.02655.i, %i.bw
  %spec.select.i = select i1 %.not42.i, i32 %i.by, i32 %i.cc
  %i.cd = trunc i32 %spec.select.i to i8
  store i8 %i.cd, ptr %.02754.i, align 1, !tbaa !51
  %i.ce = lshr i32 %.02953.i, 1                   ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 0                    ; 2 uses
  %.132.idx.i = zext i1 %i.cf to i64
  %.132.i = getelementptr inbounds nuw i8, ptr %.03152.i, i64 %.132.idx.i
  %.130.i = select i1 %i.cf, i32 128, i32 %i.ce
  %i.cg = ashr i32 %.02655.i, 1                   ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0                    ; 2 uses
  %.128.idx.i = zext i1 %i.ch to i64
  %.128.i = getelementptr inbounds nuw i8, ptr %.02754.i, i64 %.128.idx.i
  %.1.i = select i1 %i.ch, i32 128, i32 %i.cg
  %i.ci = add i32 %.03451.i, -1                   ; 2 uses
  %.not41.i = icmp eq i32 %i.ci, 0
  br i1 %.not41.i, label %ps_mask_table_set_bits.exit, label %.lr.ph.i, !llvm.loop !300

ps_mask_table_set_bits.exit:                      ; preds = %.lr.ph.i, %bb.p, %ps_mask_ensure.exit.i, %ps_mask_table_last.exit.i, %ps_dimension_reset_mask.exit
  %.0 = phi i32 [ %i.v, %ps_dimension_reset_mask.exit ], [ %i.an, %ps_mask_table_last.exit.i ], [ %i.bn, %ps_mask_ensure.exit.i ], [ 0, %bb.p ], [ 0, %.lr.ph.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ps_dimension_done(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.c = load i32, ptr %i.b, align 4, !tbaa !273  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !101  ; 2 uses
  %.not12.i = icmp eq i32 %i.c, 0
  br i1 %.not12.i, label %ps_mask_table_done.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.014.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.e, %bb.a ] ; 3 uses
  %.01113.i = phi i32 [ %i.h, %.lr.ph.i ], [ %i.c, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %.014.i, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108
  tail call void @ft_mem_free(ptr noundef %1, ptr noundef %i.g) #12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.014.i, i8 0, i64 20, i1 false)
  %i.h = add i32 %.01113.i, -1                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.014.i, i64 24
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !301

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !101
  br label %ps_mask_table_done.exit

ps_mask_table_done.exit:                          ; preds = %bb.a, %._crit_edge.loopexit.i
  %i.j = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.e, %bb.a ]
  tail call void @ft_mem_free(ptr noundef %1, ptr noundef %i.j) #12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !273  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !101  ; 2 uses
  %.not12.i6 = icmp eq i32 %i.l, 0
  br i1 %.not12.i6, label %ps_mask_table_done.exit13, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %ps_mask_table_done.exit, %.lr.ph.i7
  %.014.i8 = phi ptr [ %i.r, %.lr.ph.i7 ], [ %i.n, %ps_mask_table_done.exit ] ; 3 uses
  %.01113.i9 = phi i32 [ %i.q, %.lr.ph.i7 ], [ %i.l, %ps_mask_table_done.exit ]
  %i.o = getelementptr inbounds nuw i8, ptr %.014.i8, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !108
  tail call void @ft_mem_free(ptr noundef %1, ptr noundef %i.p) #12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.014.i8, i8 0, i64 20, i1 false)
  %i.q = add i32 %.01113.i9, -1                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.014.i8, i64 24
  %.not.i10 = icmp eq i32 %i.q, 0
  br i1 %.not.i10, label %._crit_edge.loopexit.i11, label %.lr.ph.i7, !llvm.loop !301

._crit_edge.loopexit.i11:                         ; preds = %.lr.ph.i7
  %.pre.i12 = load ptr, ptr %i.m, align 8, !tbaa !101
  br label %ps_mask_table_done.exit13

ps_mask_table_done.exit13:                        ; preds = %ps_mask_table_done.exit, %._crit_edge.loopexit.i11
  %i.s = phi ptr [ %.pre.i12, %._crit_edge.loopexit.i11 ], [ %i.n, %ps_mask_table_done.exit ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @ft_mem_free(ptr noundef %1, ptr noundef %i.s) #12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !211
  tail call void @ft_mem_free(ptr noundef %1, ptr noundef %i.v) #12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1>, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smax.v4i16(<4 x i16>, <4 x i16>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.smax.v4i16(<4 x i16>) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 2}
!8 = !{!"FT_Outline_", !9, i64 0, !9, i64 2, !10, i64 8, !12, i64 16, !13, i64 24, !4, i64 32}
!9 = !{!"short", !5, i64 0}
!10 = !{!"p1 _ZTS10FT_Vector_", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"p1 short", !11, i64 0}
!14 = !{!8, !9, i64 0}
!15 = !{!16, !17, i64 0}
!16 = !{!"PSH_GlobalsRec_", !17, i64 0, !5, i64 8, !18, i64 824}
!17 = !{!"p1 _ZTS13FT_MemoryRec_", !11, i64 0}
!18 = !{!"PSH_BluesRec_", !19, i64 0, !19, i64 776, !19, i64 1552, !19, i64 2328, !20, i64 3104, !4, i64 3112, !4, i64 3116, !4, i64 3120, !5, i64 3124}
!19 = !{!"PSH_Blue_TableRec_", !4, i64 0, !5, i64 8}
!20 = !{!"long", !5, i64 0}
!21 = !{!22, !17, i64 24}
!22 = !{!"PSH_GlyphRec_", !4, i64 0, !4, i64 4, !23, i64 8, !24, i64 16, !17, i64 24, !25, i64 32, !26, i64 40, !5, i64 48, !5, i64 192, !5, i64 193, !5, i64 194, !5, i64 195, !5, i64 196}
!23 = !{!"p1 _ZTS13PSH_PointRec_", !11, i64 0}
!24 = !{!"p1 _ZTS15PSH_ContourRec_", !11, i64 0}
!25 = !{!"p1 _ZTS11FT_Outline_", !11, i64 0}
!26 = !{!"p1 _ZTS15PSH_GlobalsRec_", !11, i64 0}
!27 = !{!22, !23, i64 8}
!28 = !{!22, !24, i64 16}
!29 = !{!22, !4, i64 0}
!30 = !{!22, !4, i64 4}
!31 = !{!8, !13, i64 24}
!32 = !{!9, !9, i64 0}
!33 = !{!34, !23, i64 0}
!34 = !{!"PSH_ContourRec_", !23, i64 0, !4, i64 8}
!35 = !{!34, !4, i64 8}
!36 = !{!37, !23, i64 0}
!37 = !{!"PSH_PointRec_", !23, i64 0, !23, i64 8, !24, i64 16, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !38, i64 40, !20, i64 48, !20, i64 56, !20, i64 64}
!38 = !{!"p1 _ZTS12PSH_HintRec_", !11, i64 0}
!39 = !{!37, !24, i64 16}
!40 = !{!37, !23, i64 8}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = distinct !{!45, !44}
!46 = !{!8, !10, i64 8}
!47 = !{!22, !25, i64 32}
!48 = !{!22, !26, i64 40}
!49 = !{!37, !4, i64 24}
!50 = !{!8, !12, i64 16}
!51 = !{!5, !5, i64 0}
!52 = !{!53, !20, i64 0}
!53 = !{!"FT_Vector_", !20, i64 0, !20, i64 8}
!54 = !{!53, !20, i64 8}
!55 = !{!37, !4, i64 32}
!56 = !{!37, !4, i64 36}
!57 = distinct !{!57, !44}
!58 = !{!37, !4, i64 28}
!59 = !{!37, !38, i64 40}
!60 = !{!20, !20, i64 0}
!61 = distinct !{!61, !42}
!62 = distinct !{!62, !44}
!63 = !{!37, !20, i64 48}
!64 = !{!37, !20, i64 56}
!65 = distinct !{!65, !44}
!66 = distinct !{!66, !44}
!67 = distinct !{!67, !44}
!68 = distinct !{!68, !44}
!69 = distinct !{!69, !44}
!70 = distinct !{!70, !44}
!71 = distinct !{!71, !44}
!72 = !{!73, !20, i64 392}
!73 = !{!"PSH_DimensionRec_", !74, i64 0, !20, i64 392, !20, i64 400}
!74 = !{!"PSH_WidthsRec_", !4, i64 0, !5, i64 8}
!75 = !{!16, !4, i64 824}
!76 = !{!77, !4, i64 0}
!77 = !{!"PSH_Blue_ZoneRec_", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40}
!78 = !{!22, !5, i64 192}
!79 = !{!22, !5, i64 193}
!80 = !{!22, !5, i64 194}
!81 = !{!22, !5, i64 195}
!82 = !{!22, !5, i64 196}
!83 = distinct !{!83, !42}
!84 = distinct !{!84, !42}
!85 = distinct !{!85, !44}
!86 = distinct !{!86, !44}
!87 = distinct !{!87, !44}
!88 = distinct !{!88, !44}
!89 = distinct !{!89, !44}
!90 = distinct !{!90, !44}
!91 = distinct !{!91, !44}
!92 = !{!93, !4, i64 0}
!93 = !{!"PSH_Hint_TableRec_", !4, i64 0, !4, i64 4, !38, i64 8, !94, i64 16, !94, i64 24, !4, i64 32, !96, i64 40, !96, i64 48, !97, i64 56, !97, i64 64}
!94 = !{!"p2 _ZTS12PSH_HintRec_", !95, i64 0}
!95 = !{!"any p2 pointer", !11, i64 0}
!96 = !{!"p1 _ZTS12PSH_ZoneRec_", !11, i64 0}
!97 = !{!"p1 _ZTS17PS_Mask_TableRec_", !11, i64 0}
!98 = !{!93, !38, i64 8}
!99 = distinct !{!99, !44}
!100 = !{!93, !97, i64 56}
!101 = !{!102, !103, i64 8}
!102 = !{!"PS_Mask_TableRec_", !4, i64 0, !4, i64 4, !103, i64 8}
!103 = !{!"p1 _ZTS11PS_MaskRec_", !11, i64 0}
!104 = !{!102, !4, i64 0}
!105 = !{!106, !4, i64 16}
!106 = !{!"PS_MaskRec_", !4, i64 0, !4, i64 4, !12, i64 8, !4, i64 16}
!107 = !{!106, !4, i64 0}
!108 = !{!106, !12, i64 8}
!109 = !{!110, !4, i64 24}
!110 = !{!"PSH_HintRec_", !4, i64 0, !4, i64 4, !20, i64 8, !20, i64 16, !4, i64 24, !38, i64 32, !4, i64 40}
!111 = !{!110, !4, i64 40}
!112 = distinct !{!112, !42}
!113 = distinct !{!113, !44}
!114 = !{!93, !4, i64 4}
!115 = !{!93, !94, i64 16}
!116 = !{!38, !38, i64 0}
!117 = distinct !{!117, !44}
!118 = !{!110, !4, i64 0}
!119 = distinct !{!119, !44}
!120 = distinct !{!120, !44}
!121 = distinct !{!121, !44}
!122 = distinct !{!122, !42}
!123 = distinct !{!123, !44}
!124 = !{!37, !20, i64 64}
!125 = distinct !{!125, !44}
!126 = !{!19, !4, i64 0}
!127 = !{!18, !4, i64 3120}
!128 = !{!77, !4, i64 12}
!129 = !{!77, !4, i64 8}
!130 = !{!18, !5, i64 3124}
!131 = !{!18, !4, i64 3116}
!132 = !{!77, !20, i64 32}
!133 = distinct !{!133, !44}
!134 = !{!77, !20, i64 40}
!135 = distinct !{!135, !44}
!136 = distinct !{!136, !44}
!137 = distinct !{!137, !44}
!138 = !{!93, !96, i64 40}
!139 = !{!93, !4, i64 32}
!140 = !{!93, !94, i64 24}
!141 = !{!73, !20, i64 400}
!142 = !{!74, !4, i64 0}
!143 = !{!144, !4, i64 0}
!144 = !{!"PSH_WidthRec_", !4, i64 0, !20, i64 8, !20, i64 16}
!145 = !{!144, !20, i64 8}
!146 = !{!144, !20, i64 16}
!147 = distinct !{!147, !44}
!148 = !{!18, !20, i64 3104}
!149 = !{!18, !4, i64 3112}
!150 = distinct !{!150, !44, !151, !152}
!151 = !{!"llvm.loop.isvectorized", i32 1}
!152 = !{!"llvm.loop.unroll.runtime.disable"}
!153 = distinct !{!153, !44, !152, !151}
!154 = !{!77, !4, i64 4}
!155 = !{!77, !20, i64 24}
!156 = !{!77, !20, i64 16}
!157 = distinct !{!157, !44}
!158 = distinct !{!158, !44}
!159 = distinct !{!159, !44}
!160 = !{!110, !20, i64 8}
!161 = !{!110, !20, i64 16}
!162 = !{!110, !4, i64 4}
!163 = distinct !{!163, !44}
!164 = distinct !{!164, !44, !151, !152}
!165 = distinct !{!165, !44, !152, !151}
!166 = !{!23, !23, i64 0}
end_hunk_1
