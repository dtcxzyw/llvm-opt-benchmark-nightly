inline.NumInlined: 28
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@decode_f:bb.a
  br label %.loopexit69

.lr.ph:                                           ; preds = %decode_ptr.exit, %bb.ag
  %.in = phi i16 [ %i.gt, %bb.ag ], [ %i.dd, %decode_ptr.exit ] ; 2 uses
  %.173 = phi i16 [ %spec.store.select, %bb.ag ], [ %spec.select, %decode_ptr.exit ] ; 2 uses
  %.14472 = phi i32 [ %.2, %bb.ag ], [ %.04375, %decode_ptr.exit ] ; 2 uses
  %i.gt = add nsw i16 %.in, -1
  %i.gu = load ptr, ptr %i.b, align 8, !tbaa !43  ; 2 uses
  %i.gv = sext i16 %.173 to i64
  %i.gw = getelementptr inbounds i8, ptr %i.gu, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !20
  %i.gy = zext i32 %.14472 to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gy
  store i8 %i.gx, ptr %i.gz, align 1, !tbaa !20
  %i.ha = add i32 %.14472, 1                      ; 2 uses
  %i.hb = icmp ugt i32 %i.ha, 26623
  br i1 %i.hb, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph
  %i.hc = load i32, ptr %i.m, align 4, !tbaa !41
  %i.hd = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.he = call i32 @cli_writen(i32 noundef %i.hc, ptr noundef %i.hd, i32 noundef 26624) #11 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph
  %.2 = phi i32 [ 0, %bb.af ], [ %i.ha, %.lr.ph ] ; 2 uses
  %i.hf = add i16 %.173, 1                        ; 2 uses
  %i.hg = icmp sgt i16 %i.hf, 26623
  %spec.store.select = select i1 %i.hg, i16 0, i16 %i.hf
  %i.hh = icmp samesign ugt i16 %.in, 1
  br i1 %i.hh, label %.lr.ph, label %.loopexit, !llvm.loop !67

.loopexit:                                        ; preds = %bb.ag, %decode_len.exit.thread.thread, %bb.t
  %.146 = phi i32 [ %i.ea, %bb.t ], [ %i.ea, %decode_len.exit.thread.thread ], [ %i.df, %bb.ag ] ; 2 uses
  %.3 = phi i32 [ 0, %bb.t ], [ %i.eb, %decode_len.exit.thread.thread ], [ %.2, %bb.ag ] ; 2 uses
  %i.hi = load i32, ptr %i.k, align 4, !tbaa !51
  %i.hj = icmp ult i32 %.146, %i.hi
  br i1 %i.hj, label %bb.d, label %.loopexit69, !llvm.loop !68

.loopexit69:                                      ; preds = %.loopexit, %bb.ae
  %.04371 = phi i32 [ %.04375, %bb.ae ], [ %.3, %.loopexit ] ; 2 uses
  %.not54 = icmp eq i32 %.04371, 0
  br i1 %.not54, label %.loopexit69.thread, label %bb.ah

bb.ah:                                            ; preds = %.loopexit69
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !41
  %i.hm = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.hn = call i32 @cli_writen(i32 noundef %i.hl, ptr noundef %i.hm, i32 noundef range(i32 1, 0) %.04371) #11 ; 0 uses
  br label %.loopexit69.thread

.loopexit69.thread:                               ; preds = %bb.c, %bb.ah, %.loopexit69
  %i.ho = load ptr, ptr %i.b, align 8, !tbaa !43
  call void @free(ptr noundef %i.ho) #11
  br label %bb.ai

bb.ai:                                            ; preds = %bb.b, %bb.a, %.loopexit69.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @cli_readn(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @cli_malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare ptr @cli_strdup(ptr noundef) local_unnamed_addr #1

declare i32 @cli_writen(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @cli_warnmsg(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -123, 1) i32 @fill_buf(ptr noundef nonnull %0, i32 noundef range(i32 -32771, 65536) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 6 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !48
  %i.c = zext i16 %i.b to i32
  %i.d = shl i32 %i.c, %1                         ; 2 uses
  %i.e = trunc i32 %i.d to i16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !50   ; 3 uses
  %i.h = icmp sgt i32 %1, %i.g
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !46   ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  %.promoted = load i8, ptr %i.i, align 4, !tbaa !49
  %i.m = zext i8 %.promoted to i32
  %i.n = sub nsw i32 %1, %i.g                     ; 7 uses
  %i.o = shl i32 %i.m, %i.n
  %i.p = or i32 %i.d, %i.o
  %i.q = trunc i32 %i.p to i16                    ; 2 uses
  br i1 %i.l, label %.lr.ph.split.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store i16 %i.q, ptr %i.a, align 2, !tbaa !48
  %i.r = add i32 %i.k, -1
  store i32 %i.r, ptr %i.j, align 4, !tbaa !46
  %i.s = load i32, ptr %0, align 8, !tbaa !45
  %i.t = tail call i32 @cli_readn(i32 noundef %i.s, ptr noundef nonnull %i.i, i32 noundef 1) #11
  %.not22.peel = icmp eq i32 %i.t, 1
  br i1 %.not22.peel, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  store i32 8, ptr %i.f, align 8, !tbaa !50
  %i.u = icmp sgt i32 %i.n, 8
  br i1 %i.u, label %.lr.ph.split, label %._crit_edge.loopexit

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.v = icmp sgt i32 %i.n, 8
  br i1 %i.v, label %.peel.next, label %._crit_edge.split.us

.peel.next:                                       ; preds = %.lr.ph.split.us, %.peel.next
  %.027.us = phi i32 [ %i.w, %.peel.next ], [ %i.n, %.lr.ph.split.us ] ; 2 uses
  %i.w = add nsw i32 %.027.us, -8                 ; 2 uses
  %i.x = icmp samesign ugt i32 %.027.us, 16
  br i1 %i.x, label %.peel.next, label %._crit_edge.split.us, !llvm.loop !69

._crit_edge.split.us:                             ; preds = %.peel.next, %.lr.ph.split.us
  %.lcssa35 = phi i32 [ %i.n, %.lr.ph.split.us ], [ %i.w, %.peel.next ]
  store i8 0, ptr %i.i, align 4, !tbaa !49
  br label %._crit_edge

.lr.ph.split:                                     ; preds = %bb.c, %bb.f
  %.027 = phi i32 [ %i.aa, %bb.f ], [ %i.n, %bb.c ] ; 2 uses
  %i.y = load i8, ptr %i.i, align 4, !tbaa !49
  %i.z = zext i8 %i.y to i32
  %i.aa = add nsw i32 %.027, -8                   ; 3 uses
  %i.ab = shl i32 %i.z, %i.aa
  %i.ac = load i16, ptr %i.a, align 2, !tbaa !48
  %i.ad = trunc i32 %i.ab to i16
  %i.ae = or i16 %i.ac, %i.ad
  store i16 %i.ae, ptr %i.a, align 2, !tbaa !48
  %i.af = load i32, ptr %i.j, align 4, !tbaa !46  ; 2 uses
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split
  %i.ag = add i32 %i.af, -1
  store i32 %i.ag, ptr %i.j, align 4, !tbaa !46
  %i.ah = load i32, ptr %0, align 8, !tbaa !45
  %i.ai = tail call i32 @cli_readn(i32 noundef %i.ah, ptr noundef nonnull %i.i, i32 noundef 1) #11
  %.not22 = icmp eq i32 %i.ai, 1
  br i1 %.not22, label %bb.f, label %.loopexit

bb.e:                                             ; preds = %.lr.ph.split
  store i8 0, ptr %i.i, align 4, !tbaa !49
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  store i32 8, ptr %i.f, align 8, !tbaa !50
  %i.aj = icmp samesign ugt i32 %.027, 16
  br i1 %i.aj, label %.lr.ph.split, label %._crit_edge.loopexit, !llvm.loop !71

._crit_edge.loopexit:                             ; preds = %bb.f, %bb.c
  %.lcssa37 = phi i32 [ %i.n, %bb.c ], [ %i.aa, %bb.f ]
  %.pre = load i16, ptr %i.a, align 2, !tbaa !48
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %._crit_edge.split.us, %bb.a
  %i.ak = phi i16 [ %i.e, %bb.a ], [ %i.q, %._crit_edge.split.us ], [ %.pre, %._crit_edge.loopexit ]
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %.lcssa35, %._crit_edge.split.us ], [ %.lcssa37, %._crit_edge.loopexit ]
  %.lcssa = phi i32 [ %i.g, %bb.a ], [ 8, %._crit_edge.split.us ], [ 8, %._crit_edge.loopexit ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.am = load i8, ptr %i.al, align 4, !tbaa !49
  %i.an = zext i8 %i.am to i32
  %i.ao = sub nsw i32 %.lcssa, %.0.lcssa          ; 2 uses
  store i32 %i.ao, ptr %i.f, align 8, !tbaa !50
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc nuw nsw i32 %i.ap to i16
  %i.ar = or i16 %i.ak, %i.aq
  store i16 %i.ar, ptr %i.a, align 2, !tbaa !48
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %._crit_edge
  %.019 = phi i32 [ 0, %._crit_edge ], [ -123, %bb.b ], [ -123, %bb.d ]
  ret i32 %.019
}

; Function Attrs: nounwind uwtable
define internal fastcc void @read_pt_len(ptr noundef nonnull %0, i32 noundef range(i32 -1, 4) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 4 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !48
  %i.c = lshr i16 %i.b, 11                        ; 2 uses
  %i.d = tail call fastcc i32 @fill_buf(ptr noundef nonnull %0, i32 noundef 5) ; 0 uses
  %i.e = icmp eq i16 %i.c, 0
  %i.f = getelementptr i8, ptr %0, i64 12814      ; 5 uses
  br i1 %i.e, label %.preheader, label %.preheader56

.preheader56:                                     ; preds = %bb.a
  %2 = tail call i16 @llvm.umin.i16(i16 %i.c, i16 19)
  %3 = zext nneg i16 %2 to i32
  %i.g = sext i32 %1 to i64
  %scevgep70 = getelementptr i8, ptr %i.f, i64 %i.g
  %indvars.iv.next = add nsw i32 %1, 1
  %indvars.iv.next.1 = add nsw i32 %1, 2
  %indvars.iv.next.2 = add nsw i32 %1, 3
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.h = load i16, ptr %i.a, align 2, !tbaa !48
  %i.i = tail call fastcc i32 @fill_buf(ptr noundef nonnull %0, i32 noundef 5) ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.f, i8 0, i64 19, i1 false), !tbaa !20
  %i.j = lshr i16 %i.h, 11
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.j, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 32 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12834
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12850
  store <8 x i16> %broadcast.splat, ptr %i.k, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.l, align 2, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12866
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12882
  store <8 x i16> %broadcast.splat, ptr %i.m, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.n, align 2, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12898
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12914
  store <8 x i16> %broadcast.splat, ptr %i.o, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.p, align 2, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12930
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12946
  store <8 x i16> %broadcast.splat, ptr %i.q, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.r, align 2, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12962
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12978
  store <8 x i16> %broadcast.splat, ptr %i.s, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.t, align 2, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12994
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 13010
  store <8 x i16> %broadcast.splat, ptr %i.u, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.v, align 2, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 13026
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 13042
  store <8 x i16> %broadcast.splat, ptr %i.w, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.x, align 2, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 13058
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 13074
  store <8 x i16> %broadcast.splat, ptr %i.y, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.z, align 2, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 13090
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 13106
  store <8 x i16> %broadcast.splat, ptr %i.aa, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.ab, align 2, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 13122
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 13138
  store <8 x i16> %broadcast.splat, ptr %i.ac, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.ad, align 2, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 13154
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 13170
  store <8 x i16> %broadcast.splat, ptr %i.ae, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.af, align 2, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 13186
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 13202
  store <8 x i16> %broadcast.splat, ptr %i.ag, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.ah, align 2, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 13218
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 13234
  store <8 x i16> %broadcast.splat, ptr %i.ai, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.aj, align 2, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 13250
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 13266
  store <8 x i16> %broadcast.splat, ptr %i.ak, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.al, align 2, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 13282
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 13298
  store <8 x i16> %broadcast.splat, ptr %i.am, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.an, align 2, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 13314
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 13330
  store <8 x i16> %broadcast.splat, ptr %i.ao, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.ap, align 2, !tbaa !8
  br label %.loopexit

.preheader52:                                     ; preds = %.loopexit53
  %i.aq = icmp slt i32 %.4, 19
  br i1 %i.aq, label %.lr.ph65, label %._crit_edge

.lr.ph65:                                         ; preds = %.preheader52
  %i.ar = zext nneg i32 %.4 to i64
  %scevgep72 = getelementptr i8, ptr %i.f, i64 %i.ar
  %narrow = sub i32 19, %.4
  %i.as = zext i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep72, i8 0, i64 %i.as, i1 false), !tbaa !20
  br label %._crit_edge

bb.b:                                             ; preds = %.preheader56, %.loopexit53
  %.24863 = phi i32 [ 0, %.preheader56 ], [ %.4, %.loopexit53 ] ; 3 uses
  %i.at = load i16, ptr %i.a, align 2, !tbaa !48  ; 2 uses
  %i.au = lshr i16 %i.at, 13                      ; 2 uses
  %i.av = icmp eq i16 %i.au, 7
  br i1 %i.av, label %.preheader54, label %.loopexit55.thread

.preheader54:                                     ; preds = %bb.b
  %i.aw = zext i16 %i.at to i32                   ; 2 uses
  %i.ax = and i32 %i.aw, 4096
  %.not57 = icmp eq i32 %i.ax, 0
  br i1 %.not57, label %.loopexit55.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader54, %.lr.ph
  %.059 = phi i32 [ %i.ay, %.lr.ph ], [ 4096, %.preheader54 ]
  %.04558 = phi i16 [ %i.az, %.lr.ph ], [ 7, %.preheader54 ]
  %i.ay = lshr i32 %.059, 1                       ; 2 uses
  %i.az = add i16 %.04558, 1                      ; 4 uses
  %i.ba = and i32 %i.ay, %i.aw
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %.loopexit55, label %.lr.ph, !llvm.loop !73

.loopexit55:                                      ; preds = %.lr.ph
  %i.bb = sext i16 %i.az to i32
  %i.bc = icmp slt i16 %i.az, 7
  %i.bd = add nsw i32 %i.bb, -3
  %spec.select = select i1 %i.bc, i32 3, i32 %i.bd
  br label %.loopexit55.thread

.loopexit55.thread:                               ; preds = %.loopexit55, %.preheader54, %bb.b
  %.188 = phi i16 [ %i.au, %bb.b ], [ %i.az, %.loopexit55 ], [ 7, %.preheader54 ]
  %i.be = phi i32 [ 3, %bb.b ], [ %spec.select, %.loopexit55 ], [ 4, %.preheader54 ]
  %i.bf = tail call fastcc i32 @fill_buf(ptr noundef %0, i32 noundef %i.be) ; 0 uses
  %i.bg = trunc i16 %.188 to i8
  %i.bh = add nsw i32 %.24863, 1                  ; 2 uses
  %i.bi = sext i32 %.24863 to i64
  %i.bj = getelementptr inbounds i8, ptr %i.f, i64 %i.bi
  store i8 %i.bg, ptr %i.bj, align 1, !tbaa !20
  %i.bk = icmp eq i32 %i.bh, %1
  br i1 %i.bk, label %bb.c, label %.loopexit53

bb.c:                                             ; preds = %.loopexit55.thread
  %i.bl = load i16, ptr %i.a, align 2, !tbaa !48
  %i.bm = lshr i16 %i.bl, 14                      ; 3 uses
  %i.bn = tail call fastcc i32 @fill_buf(ptr noundef nonnull %0, i32 noundef 2) ; 0 uses
  %.not68 = icmp eq i16 %i.bm, 0
  br i1 %.not68, label %.loopexit53, label %.lr.ph61.preheader

.lr.ph61.preheader:                               ; preds = %bb.c
  %i.bo = add nsw i16 %i.bm, -1                   ; 2 uses
  %i.bp = sub i32 17, %.24863
  %i.bq = zext i32 %i.bp to i64
  %i.br = zext nneg i16 %i.bo to i64
  %umin = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 %i.br)
  %i.bs = add nuw nsw i64 %umin, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep70, i8 0, i64 %i.bs, i1 false), !tbaa !20
  %.not1 = icmp eq i16 %i.bo, 0
  br i1 %.not1, label %.loopexit53, label %.lr.ph61.1

.lr.ph61.1:                                       ; preds = %.lr.ph61.preheader
  %.not2 = icmp eq i16 %i.bm, 2
  %spec.select3 = select i1 %.not2, i32 %indvars.iv.next.1, i32 %indvars.iv.next.2
  br label %.loopexit53

.loopexit53:                                      ; preds = %.lr.ph61.1, %.lr.ph61.preheader, %bb.c, %.loopexit55.thread
  %.4 = phi i32 [ %i.bh, %.loopexit55.thread ], [ %1, %bb.c ], [ %indvars.iv.next, %.lr.ph61.preheader ], [ %spec.select3, %.lr.ph61.1 ] ; 5 uses
  %i.bt = icmp slt i32 %.4, %3
  br i1 %i.bt, label %bb.b, label %.preheader52, !llvm.loop !74

._crit_edge:                                      ; preds = %.lr.ph65, %.preheader52
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 12834
  tail call fastcc void @make_table(ptr noundef %0, i32 noundef 19, ptr noundef %i.f, i32 noundef 8, ptr noundef %i.bu, i32 noundef 256)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @make_table(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 19, 511) %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef range(i32 8, 13) %3, ptr nofree noundef nonnull captures(none) %4, i32 noundef range(i32 256, 4097) %5) unnamed_addr #7 {
.preheader106.preheader:
  %i.a = alloca [17 x i16], align 16              ; 23 uses
  %i.b = alloca [17 x i16], align 16              ; 11 uses
  %i.c = alloca [18 x i16], align 16              ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %scevgep, i8 0, i64 32, i1 false), !tbaa !8
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %unroll_iter = and i64 %wide.trip.count, 508
  br label %.preheader106

.preheader106:                                    ; preds = %.preheader106, %.preheader106.preheader
  %indvars.iv = phi i64 [ 0, %.preheader106.preheader ], [ %indvars.iv.next.3, %.preheader106 ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader106.preheader ], [ %niter.next.3, %.preheader106 ]
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1, !tbaa !20
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.f ; 2 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !8
  %i.i = add i16 %i.h, 1
  store i16 %i.i, ptr %i.g, align 2, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !20
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.m ; 2 uses
  %i.o = load i16, ptr %i.n, align 2, !tbaa !8
  %i.p = add i16 %i.o, 1
  store i16 %i.p, ptr %i.n, align 2, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !20
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i16, ptr %i.u, align 2, !tbaa !8
  %i.w = add i16 %i.v, 1
  store i16 %i.w, ptr %i.u, align 2, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !20
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !8
  %i.ad = add i16 %i.ac, 1
  store i16 %i.ad, ptr %i.ab, align 2, !tbaa !8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader106, !llvm.loop !75

.unr-lcssa:                                       ; preds = %.preheader106
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.preheader106.epil.preheader

.preheader106.epil.preheader:                     ; preds = %.unr-lcssa
  %lcmp.mod35 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod35)
  br label %.preheader106.epil

.preheader106.epil:                               ; preds = %.preheader106.epil, %.preheader106.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.3, %.preheader106.epil.preheader ], [ %indvars.iv.next.epil, %.preheader106.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader106.epil.preheader ], [ %epil.iter.next, %.preheader106.epil ]
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.epil
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !20
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ag ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !8
  %i.aj = add i16 %i.ai, 1
  store i16 %i.aj, ptr %i.ah, align 2, !tbaa !8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader106.epil, !llvm.loop !76

.epilog-lcssa:                                    ; preds = %.preheader106.epil, %.unr-lcssa
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 0, ptr %i.ak, align 2, !tbaa !8
  %i.al = load i16, ptr %scevgep, align 2, !tbaa !8
  %i.am = shl i16 %i.al, 15                       ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i16 %i.am, ptr %i.an, align 4, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ap = load i16, ptr %i.ao, align 4, !tbaa !8
  %i.aq = shl i16 %i.ap, 14
  %i.ar = add i16 %i.am, %i.aq                    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.au = load i16, ptr %i.at, align 2, !tbaa !8
  %i.av = shl i16 %i.au, 13
  %i.aw = add i16 %i.ar, %i.av                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i16 %i.aw, ptr %i.ax, align 8, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.az = load i16, ptr %i.ay, align 8, !tbaa !8
  %i.ba = shl i16 %i.az, 12
  %i.bb = add i16 %i.aw, %i.ba                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  store i16 %i.bb, ptr %i.bc, align 2, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !8
  %i.bf = shl i16 %i.be, 11
  %i.bg = add i16 %i.bb, %i.bf                    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i16 %i.bg, ptr %i.bh, align 4, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bj = load i16, ptr %i.bi, align 4, !tbaa !8
  %i.bk = shl i16 %i.bj, 10
  %i.bl = add i16 %i.bg, %i.bk                    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  store i16 %i.bl, ptr %i.bm, align 2, !tbaa !8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !8
  %i.bp = shl i16 %i.bo, 9
  %i.bq = add i16 %i.bl, %i.bp                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i16 %i.bq, ptr %i.br, align 16, !tbaa !8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bt = load i16, ptr %i.bs, align 16, !tbaa !8
  %i.bu = shl i16 %i.bt, 8
  %i.bv = add i16 %i.bq, %i.bu                    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  store i16 %i.bv, ptr %i.bw, align 2, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !8
  %i.bz = shl i16 %i.by, 7
  %i.ca = add i16 %i.bv, %i.bz                    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 %i.ca, ptr %i.cb, align 4, !tbaa !8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.cd = load i16, ptr %i.cc, align 4, !tbaa !8
  %i.ce = shl i16 %i.cd, 6
  %i.cf = add i16 %i.ca, %i.ce                    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 %i.cf, ptr %i.cg, align 2, !tbaa !8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !8
  %i.cj = shl i16 %i.ci, 5
  %i.ck = add i16 %i.cf, %i.cj                    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i16 %i.ck, ptr %i.cl, align 8, !tbaa !8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.cn = load i16, ptr %i.cm, align 8, !tbaa !8
  %i.co = shl i16 %i.cn, 4
  %i.cp = add i16 %i.ck, %i.co                    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 26
  store i16 %i.cp, ptr %i.cq, align 2, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !8
  %i.ct = shl i16 %i.cs, 3
  %i.cu = add i16 %i.cp, %i.ct                    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i16 %i.cu, ptr %i.cv, align 4, !tbaa !8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.cx = load i16, ptr %i.cw, align 4, !tbaa !8
  %i.cy = shl i16 %i.cx, 2
  %i.cz = add i16 %i.cu, %i.cy                    ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 30
  store i16 %i.cz, ptr %i.da, align 2, !tbaa !8
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !8
  %i.dd = shl i16 %i.dc, 1
  %i.de = add i16 %i.cz, %i.dd                    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i16 %i.de, ptr %i.df, align 16, !tbaa !8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.dh = load i16, ptr %i.dg, align 16, !tbaa !8
  %i.di = add i16 %i.de, %i.dh                    ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 34
  store i16 %i.di, ptr %i.dj, align 2, !tbaa !8
  %.not = icmp eq i16 %i.di, 0
  br i1 %.not, label %.new, label %.loopexit103

.new:                                             ; preds = %.epilog-lcssa
  %i.dk = sub nuw nsw i32 16, %3                  ; 5 uses
  %i.dl = zext nneg i32 %3 to i64
  %i.dm = zext nneg i32 %3 to i64                 ; 2 uses
  %xtraiter36 = and i64 %i.dm, 1
  %i.dn = sub nuw nsw i32 18, %3
  %unroll_iter42 = and i64 %i.dm, 14
  br label %bb.a

.lr.ph.preheader.unr-lcssa:                       ; preds = %bb.a
  %indvars.iv.next142 = or disjoint i64 %indvars.iv141, 1
end_hunk_0
begin_hunk_1_@make_table:.preheader106.preheader
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ha
  store i16 0, ptr %i.hb, align 2, !tbaa !8
  %i.hc = add i32 %.5113, 6
  %i.hd = zext i32 %i.gz to i64
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.hd
  store i16 0, ptr %i.he, align 2, !tbaa !8
  %i.hf = add i32 %.5113, 7
  %i.hg = zext i32 %i.hc to i64
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.hg
  store i16 0, ptr %i.hh, align 2, !tbaa !8
  %i.hi = add i32 %.5113, 8                       ; 2 uses
  %i.hj = zext i32 %i.hf to i64
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.hj
  store i16 0, ptr %i.hk, align 2, !tbaa !8
  %.not99.7 = icmp eq i32 %i.hi, %i.fu
  br i1 %.not99.7, label %.loopexit104, label %.lr.ph115, !llvm.loop !85

.loopexit104:                                     ; preds = %.lr.ph115.prol.loopexit, %.lr.ph115, %middle.block, %vec.epilog.middle.block, %bb.b, %._crit_edge
  %i.hl = lshr exact i32 32768, %3
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 2074 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.loopexit104, %bb.i
  %indvars.iv153 = phi i64 [ 0, %.loopexit104 ], [ %indvars.iv.next154, %bb.i ] ; 4 uses
  %.082128 = phi i32 [ %1, %.loopexit104 ], [ %.4, %bb.i ] ; 7 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv153
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !20  ; 3 uses
  %i.hq = zext i8 %i.hp to i32                    ; 2 uses
  %i.hr = icmp eq i8 %i.hp, 0
  br i1 %i.hr, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.hs = zext i8 %i.hp to i64                    ; 2 uses
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.hs ; 2 uses
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !8  ; 2 uses
  %i.hv = zext i16 %i.hu to i32                   ; 3 uses
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.hs
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !8  ; 2 uses
  %i.hy = zext i16 %i.hx to i32
  %i.hz = add nuw nsw i32 %i.hy, %i.hv            ; 3 uses
  %.not100 = icmp samesign ult i32 %3, %i.hq
  br i1 %.not100, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ia = icmp samesign ugt i32 %i.hz, %5
  br i1 %i.ia, label %.loopexit103, label %.preheader

.preheader:                                       ; preds = %bb.e
  %.not129 = icmp eq i16 %i.hx, 0
  br i1 %.not129, label %.loopexit, label %iter.check20

iter.check20:                                     ; preds = %.preheader
  %i.ib = trunc i64 %indvars.iv153 to i16         ; 3 uses
  %i.ic = zext i16 %i.hu to i64                   ; 7 uses
  %i.id = zext nneg i32 %i.hz to i64              ; 2 uses
  %i.ie = add nuw nsw i64 %i.ic, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ie, i64 %i.id)
  %i.if = sub nsw i64 %umax, %i.ic                ; 7 uses
  %min.iters.check8 = icmp ult i64 %i.if, 4
  br i1 %min.iters.check8, label %vec.epilog.scalar.ph21.preheader, label %vector.main.loop.iter.check9

vector.main.loop.iter.check9:                     ; preds = %iter.check20
  %min.iters.check10 = icmp ult i64 %i.if, 16
  br i1 %min.iters.check10, label %vec.epilog.ph24, label %vector.ph11

vector.ph11:                                      ; preds = %vector.main.loop.iter.check9
  %n.mod.vf12 = and i64 %i.if, 12
  %n.vec13 = and i64 %i.if, -16                   ; 4 uses
  %i.ig = add nsw i64 %n.vec13, %i.ic
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ib, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %4, i64 %i.ic
  br label %vector.body14

vector.body14:                                    ; preds = %vector.body14, %vector.ph11
  %index15 = phi i64 [ 0, %vector.ph11 ], [ %index.next16, %vector.body14 ] ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index15 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %gep, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.ih, align 2, !tbaa !8
  %index.next16 = add nuw i64 %index15, 16        ; 2 uses
  %i.ii = icmp eq i64 %index.next16, %n.vec13
  br i1 %i.ii, label %middle.block17, label %vector.body14, !llvm.loop !86

middle.block17:                                   ; preds = %vector.body14
  %cmp.n18 = icmp eq i64 %i.if, %n.vec13
  br i1 %cmp.n18, label %.loopexit, label %vec.epilog.iter.check22

vec.epilog.iter.check22:                          ; preds = %middle.block17
  %min.epilog.iters.check23 = icmp eq i64 %n.mod.vf12, 0
  br i1 %min.epilog.iters.check23, label %vec.epilog.scalar.ph21.preheader, label %vec.epilog.ph24, !prof !82

vec.epilog.ph24:                                  ; preds = %vector.main.loop.iter.check9, %vec.epilog.iter.check22
  %vec.epilog.resume.val19 = phi i64 [ %n.vec13, %vec.epilog.iter.check22 ], [ 0, %vector.main.loop.iter.check9 ]
  %n.vec26 = and i64 %i.if, -4                    ; 3 uses
  %i.ij = add nsw i64 %n.vec26, %i.ic
  %broadcast.splatinsert27 = insertelement <4 x i16> poison, i16 %i.ib, i64 0
  %broadcast.splat28 = shufflevector <4 x i16> %broadcast.splatinsert27, <4 x i16> poison, <4 x i32> zeroinitializer
  %invariant.gep52 = getelementptr [2 x i8], ptr %4, i64 %i.ic
  br label %vec.epilog.vector.body29

vec.epilog.vector.body29:                         ; preds = %vec.epilog.vector.body29, %vec.epilog.ph24
  %index30 = phi i64 [ %vec.epilog.resume.val19, %vec.epilog.ph24 ], [ %index.next31, %vec.epilog.vector.body29 ] ; 2 uses
  %gep53 = getelementptr [2 x i8], ptr %invariant.gep52, i64 %index30
  store <4 x i16> %broadcast.splat28, ptr %gep53, align 2, !tbaa !8
  %index.next31 = add nuw i64 %index30, 4         ; 2 uses
  %i.ik = icmp eq i64 %index.next31, %n.vec26
  br i1 %i.ik, label %vec.epilog.middle.block32, label %vec.epilog.vector.body29, !llvm.loop !87

vec.epilog.middle.block32:                        ; preds = %vec.epilog.vector.body29
  %cmp.n33 = icmp eq i64 %i.if, %n.vec26
  br i1 %cmp.n33, label %.loopexit, label %vec.epilog.scalar.ph21.preheader

vec.epilog.scalar.ph21.preheader:                 ; preds = %iter.check20, %vec.epilog.iter.check22, %vec.epilog.middle.block32
  %indvars.iv150.ph = phi i64 [ %i.ic, %iter.check20 ], [ %i.ig, %vec.epilog.iter.check22 ], [ %i.ij, %vec.epilog.middle.block32 ]
  br label %vec.epilog.scalar.ph21

vec.epilog.scalar.ph21:                           ; preds = %vec.epilog.scalar.ph21.preheader, %vec.epilog.scalar.ph21
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %vec.epilog.scalar.ph21 ], [ %indvars.iv150.ph, %vec.epilog.scalar.ph21.preheader ] ; 2 uses
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv150
  store i16 %i.ib, ptr %i.il, align 2, !tbaa !8
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %i.im = icmp samesign ult i64 %indvars.iv.next151, %i.id
  br i1 %i.im, label %vec.epilog.scalar.ph21, label %.loopexit, !llvm.loop !88

bb.f:                                             ; preds = %bb.d
  %i.in = lshr i32 %i.hv, %i.dk
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.io ; 2 uses
  %i.iq = sub nuw nsw i32 %i.hq, %3               ; 2 uses
  %.not101118 = icmp eq i32 %i.iq, 0
  br i1 %.not101118, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %bb.f, %bb.h
  %.081122 = phi ptr [ %i.jb, %bb.h ], [ %i.ip, %bb.f ] ; 2 uses
  %.183121 = phi i32 [ %.2, %bb.h ], [ %.082128, %bb.f ] ; 4 uses
  %.7120 = phi i32 [ %i.jd, %bb.h ], [ %i.iq, %bb.f ]
  %.090119 = phi i32 [ %i.jc, %bb.h ], [ %i.hv, %bb.f ] ; 2 uses
  %i.ir = load i16, ptr %.081122, align 2, !tbaa !8 ; 2 uses
  %i.is = icmp eq i16 %i.ir, 0
  br i1 %i.is, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph124
  %i.it = zext i32 %.183121 to i64                ; 2 uses
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %i.it
  store i16 0, ptr %i.iu, align 2, !tbaa !8
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.hn, i64 %i.it
  store i16 0, ptr %i.iv, align 2, !tbaa !8
  %i.iw = add i32 %.183121, 1
  %i.ix = trunc i32 %.183121 to i16               ; 2 uses
  store i16 %i.ix, ptr %.081122, align 2, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph124
  %i.iy = phi i16 [ %i.ix, %bb.g ], [ %i.ir, %.lr.ph124 ]
  %.2 = phi i32 [ %i.iw, %bb.g ], [ %.183121, %.lr.ph124 ] ; 2 uses
  %i.iz = and i32 %.090119, %i.hl
  %.not102 = icmp eq i32 %i.iz, 0
  %i.ja = zext i16 %i.iy to i64
  %. = select i1 %.not102, ptr %i.hm, ptr %i.hn
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %., i64 %i.ja ; 2 uses
  %i.jc = shl i32 %.090119, 1
  %i.jd = add nsw i32 %.7120, -1                  ; 2 uses
  %.not101 = icmp eq i32 %i.jd, 0
  br i1 %.not101, label %._crit_edge125, label %.lr.ph124, !llvm.loop !89

._crit_edge125:                                   ; preds = %bb.h, %bb.f
  %.183.lcssa = phi i32 [ %.082128, %bb.f ], [ %.2, %bb.h ]
  %.081.lcssa = phi ptr [ %i.ip, %bb.f ], [ %i.jb, %bb.h ]
  %i.je = trunc i64 %indvars.iv153 to i16
  store i16 %i.je, ptr %.081.lcssa, align 2, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %vec.epilog.scalar.ph21, %middle.block17, %vec.epilog.middle.block32, %.preheader, %._crit_edge125
  %.3 = phi i32 [ %.183.lcssa, %._crit_edge125 ], [ %.082128, %.preheader ], [ %.082128, %middle.block17 ], [ %.082128, %vec.epilog.middle.block32 ], [ %.082128, %vec.epilog.scalar.ph21 ]
  %i.jf = trunc i32 %i.hz to i16
  store i16 %i.jf, ptr %i.ht, align 2, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %.loopexit
  %.4 = phi i32 [ %.082128, %bb.c ], [ %.3, %.loopexit ]
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %exitcond157.not = icmp eq i64 %indvars.iv.next154, %wide.trip.count
  br i1 %exitcond157.not, label %.loopexit103, label %bb.c, !llvm.loop !90

.loopexit103:                                     ; preds = %bb.i, %bb.e, %.epilog-lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !6, i64 0}
!10 = !{!11, !6, i64 0}
!11 = !{!"arj_main_hdr_tag", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !6, i64 4, !6, i64 5, !6, i64 6, !6, i64 7, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !9, i64 24, !9, i64 26, !9, i64 28}
!12 = !{!11, !6, i64 1}
!13 = !{!11, !6, i64 2}
!14 = !{!11, !6, i64 3}
!15 = !{!11, !6, i64 4}
!16 = !{!11, !6, i64 5}
!17 = !{!11, !6, i64 6}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!6, !6, i64 0}
!21 = distinct !{!21, !19}
!22 = !{!23, !6, i64 0}
!23 = !{!"arj_file_hdr_tag", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !6, i64 4, !6, i64 5, !6, i64 6, !6, i64 7, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !9, i64 24, !9, i64 26, !9, i64 28}
!24 = !{!23, !6, i64 1}
!25 = !{!23, !6, i64 2}
!26 = !{!23, !6, i64 3}
!27 = !{!23, !6, i64 4}
!28 = !{!23, !6, i64 5}
!29 = !{!23, !6, i64 6}
!30 = !{!23, !6, i64 7}
!31 = !{!23, !5, i64 12}
!32 = !{!23, !5, i64 16}
!33 = distinct !{!33, !19}
!34 = distinct !{!34, !19}
!35 = !{!36, !37, i64 16}
!36 = !{!"arj_metadata_tag", !5, i64 0, !5, i64 4, !6, i64 8, !37, i64 16, !5, i64 24, !5, i64 28}
!37 = !{!"p1 omnipotent char", !38, i64 0}
!38 = !{!"any pointer", !6, i64 0}
!39 = !{!36, !6, i64 8}
!40 = !{!36, !5, i64 24}
!41 = !{!36, !5, i64 28}
!42 = !{!36, !5, i64 0}
!43 = !{!44, !37, i64 8}
!44 = !{!"arj_decode_tag", !5, i64 0, !37, i64 8, !9, i64 16, !9, i64 18, !6, i64 20, !5, i64 24, !5, i64 28, !9, i64 32, !9, i64 34, !6, i64 36, !6, i64 2074, !6, i64 4112, !6, i64 4622, !6, i64 12814, !6, i64 12834}
!45 = !{!44, !5, i64 0}
!46 = !{!44, !5, i64 28}
!47 = !{!44, !9, i64 16}
!48 = !{!44, !9, i64 18}
!49 = !{!44, !6, i64 20}
!50 = !{!44, !5, i64 24}
!51 = !{!36, !5, i64 4}
!52 = distinct !{!52, !19, !53, !54}
!53 = !{!"llvm.loop.isvectorized", i32 1}
!54 = !{!"llvm.loop.unroll.runtime.disable"}
!55 = distinct !{!55, !19}
!56 = distinct !{!56, !19, !53, !54}
!57 = distinct !{!57, !19, !54, !53}
!58 = distinct !{!58, !19}
!59 = distinct !{!59, !19}
!60 = distinct !{!60, !19}
!61 = distinct !{!61, !19}
!62 = distinct !{!62, !19}
!63 = distinct !{!63, !19}
!64 = distinct !{!64, !19}
!65 = !{!44, !9, i64 34}
!66 = !{!44, !9, i64 32}
!67 = distinct !{!67, !19}
!68 = distinct !{!68, !19}
!69 = distinct !{!69, !19, !70}
!70 = !{!"llvm.loop.peeled.count", i32 1}
!71 = distinct !{!71, !19, !72, !70}
!72 = !{!"llvm.loop.unswitch.partial.disable"}
!73 = distinct !{!73, !19}
!74 = distinct !{!74, !19}
!75 = distinct !{!75, !19}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = distinct !{!78, !77}
!79 = distinct !{!79, !19}
!80 = distinct !{!80, !19}
!81 = distinct !{!81, !19, !53, !54}
!82 = !{!"branch_weights", i32 4, i32 12}
!83 = distinct !{!83, !19, !53, !54}
!84 = distinct !{!84, !77}
!85 = distinct !{!85, !19, !53}
!86 = distinct !{!86, !19, !53, !54}
!87 = distinct !{!87, !19, !53, !54}
!88 = distinct !{!88, !19, !54, !53}
!89 = distinct !{!89, !19}
!90 = distinct !{!90, !19}
end_hunk_1
