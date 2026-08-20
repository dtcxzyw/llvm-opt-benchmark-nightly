inline.NumInlined: 121
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 12
begin_hunk_0_@cr_invert:bb.a
  %i.ay = add nsw i32 %.130.in.i, 3               ; 2 uses
  %i.az = icmp slt i32 %i.ay, %i.b
  br i1 %i.az, label %.lr.ph.i, label %cr_compress.exit, !llvm.loop !30

cr_compress.exit:                                 ; preds = %bb.e, %bb.d
  %.0.lcssa.i = phi i32 [ 0, %bb.d ], [ %.1.i, %bb.e ]
  store i32 %.0.lcssa.i, ptr %0, align 8, !tbaa !26
  br label %cr_realloc.exit

cr_realloc.exit:                                  ; preds = %bb.b, %cr_compress.exit
  %.0 = phi i32 [ 0, %cr_compress.exit ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define hidden zeroext i1 @lre_is_id_start(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @lre_is_in_table(i32 noundef %0, ptr noundef nonnull @unicode_prop_ID_Start_table, ptr noundef nonnull @unicode_prop_ID_Start_index, i32 noundef 36)
  ret i1 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define hidden zeroext i1 @lre_is_id_continue(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @lre_is_in_table(i32 noundef %0, ptr noundef nonnull @unicode_prop_ID_Start_table, ptr noundef nonnull @unicode_prop_ID_Start_index, i32 noundef 36)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc zeroext i1 @lre_is_in_table(i32 noundef %0, ptr noundef nonnull @unicode_prop_ID_Continue1_table, ptr noundef nonnull @unicode_prop_ID_Continue1_index, i32 noundef 22)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ true, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define hidden zeroext i1 @lre_is_white_space(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @lre_is_in_table(i32 noundef %0, ptr noundef nonnull @unicode_prop_White_Space_table, ptr noundef nonnull @unicode_prop_White_Space_index, i32 noundef 1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 2) i32 @lre_is_space_non_ascii(i32 noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp ult i32 %0, 160
  br i1 %i.a, label %.thread, label %bb.p

bb.b:                                             ; preds = %bb.p
  %i.b = icmp ult i32 %0, 5760
  br i1 %i.b, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.1 = icmp eq i32 %0, 5760
  br i1 %.not.1, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = icmp ult i32 %0, 8192
  br i1 %i.c, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.2 = icmp ult i32 %0, 8203
  br i1 %.not.2, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = icmp ult i32 %0, 8232
  br i1 %i.d, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.3 = icmp ult i32 %0, 8234
  br i1 %.not.3, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.e = icmp ult i32 %0, 8239
  br i1 %i.e, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.4 = icmp eq i32 %0, 8239
  br i1 %.not.4, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.f = icmp ult i32 %0, 8287
  br i1 %i.f, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.5 = icmp eq i32 %0, 8287
  br i1 %.not.5, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.g = icmp ult i32 %0, 12288
  br i1 %i.g, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.6 = icmp eq i32 %0, 12288
  br i1 %.not.6, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.h = icmp ult i32 %0, 65279
  br i1 %i.h, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.7 = icmp eq i32 %0, 65279
  %spec.select = zext i1 %.not.7 to i32
  br label %.thread

bb.p:                                             ; preds = %bb.a
  %.not = icmp eq i32 %0, 160
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.p
  %.2 = phi i32 [ 1, %bb.p ], [ 1, %bb.k ], [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.c ], [ %spec.select, %bb.o ], [ 0, %bb.d ], [ 1, %bb.e ], [ 0, %bb.n ], [ 0, %bb.f ], [ 1, %bb.g ], [ 0, %bb.l ], [ 0, %bb.h ], [ 1, %bb.i ], [ 1, %bb.m ], [ 0, %bb.j ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define hidden i32 @unicode_normalize(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 6 uses
  %6 = alloca %struct.DynBuf, align 8             ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.b = icmp ugt i32 %3, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 32, i1 false)
  %.not.i = icmp eq ptr %5, null
  %spec.store.select.i = select i1 %.not.i, ptr @dbuf_default_realloc, ptr %5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %4, ptr %i.c, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %spec.store.select.i, ptr %i.d, align 8, !tbaa !39
  %i.e = sext i32 %2 to i64
  %i.f = shl nsw i64 %i.e, 2                      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %dbuf_claim.exit.thread155, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr %spec.store.select.i(ptr noundef %4, ptr noundef null, i64 noundef %i.f) #21, !inline_history !40 ; 4 uses
  %.not.i74 = icmp eq ptr %i.i, null
  br i1 %.not.i74, label %dbuf_claim.exit.thread, label %dbuf_claim.exit

dbuf_claim.exit:                                  ; preds = %bb.b
  store ptr %i.i, ptr %6, align 8, !tbaa !41
  store i64 %i.f, ptr %i.h, align 8, !tbaa !42
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %.preheader90, label %.loopexit

dbuf_claim.exit.thread155:                        ; preds = %bb.a
  %i.k = icmp eq i32 %3, 0
  br i1 %i.k, label %._crit_edge, label %.loopexit

.preheader90:                                     ; preds = %dbuf_claim.exit
  %i.l = icmp sgt i32 %2, 0
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader90
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !43

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !9
  %i.o = icmp ugt i32 %i.n, 255
  br i1 %i.o, label %.loopexit, label %bb.c

._crit_edge:                                      ; preds = %bb.c, %dbuf_claim.exit.thread155, %.preheader90
  %i.p = phi ptr [ null, %dbuf_claim.exit.thread155 ], [ %i.i, %.preheader90 ], [ %i.i, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.p, ptr align 4 %1, i64 %i.f, i1 false)
  br label %dbuf_claim.exit.thread

.loopexit:                                        ; preds = %.lr.ph, %dbuf_claim.exit.thread155, %dbuf_claim.exit
  %i.q = zext i1 %i.b to i32
  call fastcc void @to_nfd_rec(ptr noundef %6, ptr noundef %1, i32 noundef %2, i32 noundef %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.val = load i8, ptr %i.r, align 8, !tbaa !44, !range !45, !noundef !46
  %i.s = trunc nuw i8 %.val to i1
  br i1 %i.s, label %dbuf_claim.exit.thread, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.t = load ptr, ptr %6, align 8, !tbaa !41     ; 12 uses
  %i.u = load i64, ptr %i.g, align 8, !tbaa !47
  %i.v = lshr i64 %i.u, 2                         ; 3 uses
  %i.w = trunc i64 %i.v to i32                    ; 7 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph78.preheader.i, label %dbuf_claim.exit.thread

.lr.ph78.preheader.i:                             ; preds = %bb.d
  %i.y = and i64 %i.v, 2147483647
  br label %.lr.ph78.i

.lr.ph78.i:                                       ; preds = %unicode_get_cc.exit.thread.i, %.lr.ph78.preheader.i
  %.03076.i = phi i32 [ %i.ga, %unicode_get_cc.exit.thread.i ], [ 0, %.lr.ph78.preheader.i ] ; 5 uses
  %i.z = sext i32 %.03076.i to i64                ; 3 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !9
  %i.ac = tail call fastcc i32 @unicode_get_cc(i32 noundef %i.ab)
  %.not.i75 = icmp eq i32 %i.ac, 0
  br i1 %.not.i75, label %unicode_get_cc.exit.thread.i, label %.preheader57.i

.preheader57.i:                                   ; preds = %.lr.ph78.i
  %.02965.i = add nsw i32 %.03076.i, 1            ; 3 uses
  %i.ad = icmp slt i32 %.02965.i, %i.w
  br i1 %i.ad, label %.lr.ph68.preheader.i, label %unicode_get_cc.exit.thread.i

.lr.ph68.preheader.i:                             ; preds = %.preheader57.i
  %i.ae = add nsw i32 %.03076.i, -1
  %i.af = sext i32 %.02965.i to i64
  br label %.lr.ph68.i

.lr.ph68.i:                                       ; preds = %unicode_get_cc.exit55._crit_edge.i, %.lr.ph68.preheader.i
  %indvars.iv84.i = phi i64 [ %i.af, %.lr.ph68.preheader.i ], [ %indvars.iv.next85.i, %unicode_get_cc.exit55._crit_edge.i ] ; 6 uses
  %indvars.iv.i = phi i64 [ %i.z, %.lr.ph68.preheader.i ], [ %indvars.iv.next.i, %unicode_get_cc.exit55._crit_edge.i ] ; 3 uses
  %indvars88.i = trunc i64 %indvars.iv.i to i32   ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv84.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !9  ; 6 uses
  %i.ai = icmp ult i32 %i.ah, 845
  br i1 %i.ai, label %get_index_pos.exit.thread41.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph68.i
  %.not.i.i.i = icmp ult i32 %i.ah, 125259
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %unicode_get_cc.exit.thread.loopexit.split.loop.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.034.i.i.i = phi i32 [ %..0.i.i.i, %.lr.ph.i.i.i ], [ 29, %bb.e ] ; 2 uses
  %.02733.i.i.i = phi i32 [ %.027..i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.aj = add nsw i32 %.02733.i.i.i, %.034.i.i.i
  %i.ak = sdiv i32 %i.aj, 2                       ; 3 uses
  %i.al = mul nsw i32 %i.ak, 3
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds i8, ptr @unicode_cc_index, i64 %i.am ; 2 uses
  %i.ao = load i16, ptr %i.an, align 1
  %i.ap = zext i16 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !12
  %i.as = zext i8 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, 16
  %.masked32.i.i.i = and i32 %i.at, 2031616
  %i.au = or disjoint i32 %.masked32.i.i.i, %i.ap
  %i.av = icmp samesign ult i32 %i.ah, %i.au      ; 2 uses
  %.027..i.i.i = select i1 %i.av, i32 %.02733.i.i.i, i32 %i.ak ; 4 uses
  %..0.i.i.i = select i1 %i.av, i32 %i.ak, i32 %.034.i.i.i ; 2 uses
  %i.aw = sub nsw i32 %..0.i.i.i, %.027..i.i.i
  %i.ax = icmp sgt i32 %i.aw, 1
  br i1 %i.ax, label %.lr.ph.i.i.i, label %get_index_pos.exit.i.i, !llvm.loop !18

get_index_pos.exit.i.i:                           ; preds = %.lr.ph.i.i.i
  %i.ay = mul nsw i32 %.027..i.i.i, 3
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr @unicode_cc_index, i64 %i.az ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 1
  %i.bc = zext i16 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !12
  %i.bf = zext i8 %i.be to i32                    ; 2 uses
  %i.bg = shl nuw nsw i32 %i.bf, 16
  %.masked31.i.i.i = and i32 %i.bg, 2031616
  %i.bh = or disjoint i32 %.masked31.i.i.i, %i.bc
  %i.bi = shl i32 %.027..i.i.i, 5
  %i.bj = add i32 %i.bi, 32                       ; 2 uses
  %i.bk = lshr i32 %i.bf, 5
  %i.bl = or disjoint i32 %i.bk, %i.bj
  %i.bm = icmp slt i32 %i.bj, 0
  br i1 %i.bm, label %unicode_get_cc.exit.thread.loopexit.split.loop.exit107.i, label %get_index_pos.exit.thread41.i.i

get_index_pos.exit.thread41.i.i:                  ; preds = %get_index_pos.exit.i.i, %.lr.ph68.i
  %.029.i45.i.i = phi i32 [ %i.bl, %get_index_pos.exit.i.i ], [ 0, %.lr.ph68.i ]
  %.13844.i.i = phi i32 [ %i.bh, %get_index_pos.exit.i.i ], [ 0, %.lr.ph68.i ]
  %i.bn = zext nneg i32 %.029.i45.i.i to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @unicode_cc_table, i64 %i.bn
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %get_index_pos.exit.thread41.i.i
  %.037.i.i = phi i32 [ %.13844.i.i, %get_index_pos.exit.thread41.i.i ], [ %i.co, %bb.j ] ; 2 uses
  %.0.i.i = phi ptr [ %i.bo, %get_index_pos.exit.thread41.i.i ], [ %spec.select.i.i, %bb.j ] ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1 ; 3 uses
  %i.bq = load i8, ptr %.0.i.i, align 1, !tbaa !12 ; 2 uses
  %i.br = zext i8 %i.bq to i32                    ; 2 uses
  %i.bs = and i32 %i.br, 63                       ; 5 uses
  %i.bt = icmp samesign ult i32 %i.bs, 48
  br i1 %i.bt, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bu = icmp samesign ult i32 %i.bs, 56
  br i1 %i.bu, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bv = shl nuw nsw i32 %i.bs, 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  %i.bx = load i8, ptr %i.bp, align 1, !tbaa !12
  %i.by = zext i8 %i.bx to i32
  %i.bz = add nsw i32 %i.bv, -12240
  %i.ca = add nuw nsw i32 %i.bz, %i.by
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  %i.cc = load i8, ptr %i.bp, align 1, !tbaa !12
  %i.cd = zext i8 %i.cc to i32
  %i.ce = add nuw nsw i32 %i.bs, 16777160
  %i.cf = or i32 %i.ce, %i.cd
  %i.cg = shl i32 %i.cf, 8
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 3
  %i.ci = load i8, ptr %i.cb, align 1, !tbaa !12
  %i.cj = zext i8 %i.ci to i32
  %i.ck = add nuw nsw i32 %i.cj, 2096
  %i.cl = add nuw nsw i32 %i.ck, %i.cg
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %.030.i.i = phi i32 [ %i.bs, %bb.f ], [ %i.ca, %bb.h ], [ %i.cl, %bb.i ]
  %.1.i.i = phi ptr [ %i.bp, %bb.f ], [ %i.bw, %bb.h ], [ %i.ch, %bb.i ]
  %i.cm = icmp sgt i8 %i.bq, -1
  %spec.select.idx.i.i = zext i1 %i.cm to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %spec.select.idx.i.i ; 3 uses
  %i.cn = add i32 %.037.i.i, 1
  %i.co = add i32 %i.cn, %.030.i.i                ; 2 uses
  %i.cp = icmp ult i32 %i.ah, %i.co
  br i1 %i.cp, label %bb.k, label %bb.f

bb.k:                                             ; preds = %bb.j
  %i.cq = lshr i32 %i.br, 6
  switch i32 %i.cq, label %.unreachabledefault [
    i32 0, label %bb.l
    i32 1, label %bb.m
    i32 2, label %unicode_get_cc.exit.thread.loopexit.split.loop.exit105.i
    i32 3, label %.preheader.i
  ]

bb.l:                                             ; preds = %bb.k
  %i.cr = getelementptr inbounds i8, ptr %spec.select.i.i, i64 -1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !12
  %i.ct = zext i8 %i.cs to i32
  br label %unicode_get_cc.exit.i

bb.m:                                             ; preds = %bb.k
  %i.cu = getelementptr inbounds i8, ptr %spec.select.i.i, i64 -1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !12
  %i.cw = zext i8 %i.cv to i32
  %i.cx = sub i32 %i.ah, %.037.i.i
  %i.cy = add i32 %i.cx, %i.cw
  br label %unicode_get_cc.exit.i

.unreachabledefault:                              ; preds = %bb.k
  unreachable

default.unreachable:                              ; preds = %bb.t
  unreachable

unicode_get_cc.exit.i:                            ; preds = %bb.m, %bb.l
  %.031.i.i = phi i32 [ %i.cy, %bb.m ], [ %i.ct, %bb.l ] ; 2 uses
  %i.cz = icmp eq i32 %.031.i.i, 0
  br i1 %i.cz, label %unicode_get_cc.exit.thread.loopexit.split.loop.exit111.i, label %.preheader.i

.preheader.i:                                     ; preds = %unicode_get_cc.exit.i, %bb.k
  %.031.i100.i = phi i32 [ %.031.i.i, %unicode_get_cc.exit.i ], [ 230, %bb.k ]
  %.not3362.i = icmp sgt i32 %.03076.i, %indvars88.i
  br i1 %.not3362.i, label %unicode_get_cc.exit55._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.x
  %indvars.iv81.i = phi i64 [ %indvars.iv.next82.i, %bb.x ], [ %indvars.iv.i, %.preheader.i ] ; 4 uses
  %i.da = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv81.i ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !9  ; 6 uses
  %i.dc = icmp ult i32 %i.db, 845
  br i1 %i.dc, label %get_index_pos.exit.thread41.i45.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  %.not.i.i35.i = icmp ult i32 %i.db, 125259
  br i1 %.not.i.i35.i, label %.lr.ph.i.i37.i, label %unicode_get_cc.exit55.i

.lr.ph.i.i37.i:                                   ; preds = %bb.n, %.lr.ph.i.i37.i
  %.034.i.i38.i = phi i32 [ %..0.i.i42.i, %.lr.ph.i.i37.i ], [ 29, %bb.n ] ; 2 uses
  %.02733.i.i39.i = phi i32 [ %.027..i.i41.i, %.lr.ph.i.i37.i ], [ 0, %bb.n ] ; 2 uses
  %i.dd = add nsw i32 %.02733.i.i39.i, %.034.i.i38.i
  %i.de = sdiv i32 %i.dd, 2                       ; 3 uses
  %i.df = mul nsw i32 %i.de, 3
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds i8, ptr @unicode_cc_index, i64 %i.dg ; 2 uses
  %i.di = load i16, ptr %i.dh, align 1
  %i.dj = zext i16 %i.di to i32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 2
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !12
  %i.dm = zext i8 %i.dl to i32
  %i.dn = shl nuw nsw i32 %i.dm, 16
  %.masked32.i.i40.i = and i32 %i.dn, 2031616
  %i.do = or disjoint i32 %.masked32.i.i40.i, %i.dj
  %i.dp = icmp samesign ult i32 %i.db, %i.do      ; 2 uses
  %.027..i.i41.i = select i1 %i.dp, i32 %.02733.i.i39.i, i32 %i.de ; 4 uses
  %..0.i.i42.i = select i1 %i.dp, i32 %i.de, i32 %.034.i.i38.i ; 2 uses
  %i.dq = sub nsw i32 %..0.i.i42.i, %.027..i.i41.i
  %i.dr = icmp sgt i32 %i.dq, 1
  br i1 %i.dr, label %.lr.ph.i.i37.i, label %get_index_pos.exit.i43.i, !llvm.loop !18

get_index_pos.exit.i43.i:                         ; preds = %.lr.ph.i.i37.i
  %i.ds = mul nsw i32 %.027..i.i41.i, 3
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds i8, ptr @unicode_cc_index, i64 %i.dt ; 2 uses
  %i.dv = load i16, ptr %i.du, align 1
  %i.dw = zext i16 %i.dv to i32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !12
  %i.dz = zext i8 %i.dy to i32                    ; 2 uses
  %i.ea = shl nuw nsw i32 %i.dz, 16
  %.masked31.i.i44.i = and i32 %i.ea, 2031616
  %i.eb = or disjoint i32 %.masked31.i.i44.i, %i.dw
  %i.ec = shl i32 %.027..i.i41.i, 5
  %i.ed = add i32 %i.ec, 32                       ; 2 uses
  %i.ee = lshr i32 %i.dz, 5
  %i.ef = or disjoint i32 %i.ee, %i.ed
  %i.eg = icmp slt i32 %i.ed, 0
  br i1 %i.eg, label %unicode_get_cc.exit55.i, label %get_index_pos.exit.thread41.i45.i

get_index_pos.exit.thread41.i45.i:                ; preds = %get_index_pos.exit.i43.i, %.lr.ph.i
  %.029.i45.i46.i = phi i32 [ %i.ef, %get_index_pos.exit.i43.i ], [ 0, %.lr.ph.i ]
  %.13844.i47.i = phi i32 [ %i.eb, %get_index_pos.exit.i43.i ], [ 0, %.lr.ph.i ]
  %i.eh = zext nneg i32 %.029.i45.i46.i to i64
  %i.ei = getelementptr inbounds nuw i8, ptr @unicode_cc_table, i64 %i.eh
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %get_index_pos.exit.thread41.i45.i
  %.037.i48.i = phi i32 [ %.13844.i47.i, %get_index_pos.exit.thread41.i45.i ], [ %i.fi, %bb.s ] ; 2 uses
  %.0.i49.i = phi ptr [ %i.ei, %get_index_pos.exit.thread41.i45.i ], [ %spec.select.i53.i, %bb.s ] ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i49.i, i64 1 ; 3 uses
  %i.ek = load i8, ptr %.0.i49.i, align 1, !tbaa !12 ; 2 uses
  %i.el = zext i8 %i.ek to i32                    ; 2 uses
  %i.em = and i32 %i.el, 63                       ; 5 uses
  %i.en = icmp samesign ult i32 %i.em, 48
  br i1 %i.en, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eo = icmp samesign ult i32 %i.em, 56
  br i1 %i.eo, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ep = shl nuw nsw i32 %i.em, 8
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i49.i, i64 2
  %i.er = load i8, ptr %i.ej, align 1, !tbaa !12
  %i.es = zext i8 %i.er to i32
  %i.et = add nsw i32 %i.ep, -12240
  %i.eu = add nuw nsw i32 %i.et, %i.es
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.i49.i, i64 2
  %i.ew = load i8, ptr %i.ej, align 1, !tbaa !12
  %i.ex = zext i8 %i.ew to i32
  %i.ey = add nuw nsw i32 %i.em, 16777160
  %i.ez = or i32 %i.ey, %i.ex
  %i.fa = shl i32 %i.ez, 8
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.i49.i, i64 3
  %i.fc = load i8, ptr %i.ev, align 1, !tbaa !12
  %i.fd = zext i8 %i.fc to i32
  %i.fe = add nuw nsw i32 %i.fd, 2096
  %i.ff = add nuw nsw i32 %i.fe, %i.fa
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o
  %.030.i50.i = phi i32 [ %i.em, %bb.o ], [ %i.eu, %bb.q ], [ %i.ff, %bb.r ]
  %.1.i51.i = phi ptr [ %i.ej, %bb.o ], [ %i.eq, %bb.q ], [ %i.fb, %bb.r ]
  %i.fg = icmp sgt i8 %i.ek, -1
  %spec.select.idx.i52.i = zext i1 %i.fg to i64
  %spec.select.i53.i = getelementptr inbounds nuw i8, ptr %.1.i51.i, i64 %spec.select.idx.i52.i ; 3 uses
  %i.fh = add i32 %.037.i48.i, 1
  %i.fi = add i32 %i.fh, %.030.i50.i              ; 2 uses
  %i.fj = icmp ult i32 %i.db, %i.fi
  br i1 %i.fj, label %bb.t, label %bb.o

bb.t:                                             ; preds = %bb.s
  %i.fk = lshr i32 %i.el, 6
  switch i32 %i.fk, label %default.unreachable [
    i32 0, label %bb.u
    i32 1, label %bb.v
    i32 2, label %unicode_get_cc.exit55.i
    i32 3, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  %i.fl = getelementptr inbounds i8, ptr %spec.select.i53.i, i64 -1
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !12
  %i.fn = zext i8 %i.fm to i32
  br label %unicode_get_cc.exit55.i

bb.v:                                             ; preds = %bb.t
  %i.fo = getelementptr inbounds i8, ptr %spec.select.i53.i, i64 -1
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !12
  %i.fq = zext i8 %i.fp to i32
  %i.fr = sub i32 %i.db, %.037.i48.i
  %i.fs = add i32 %i.fr, %i.fq
  br label %unicode_get_cc.exit55.i

bb.w:                                             ; preds = %bb.t
  br label %unicode_get_cc.exit55.i

unicode_get_cc.exit55.i:                          ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %get_index_pos.exit.i43.i, %bb.n
  %.031.i36.i = phi i32 [ 0, %get_index_pos.exit.i43.i ], [ 230, %bb.w ], [ %i.fn, %bb.u ], [ %i.fs, %bb.v ], [ 0, %bb.t ], [ 0, %bb.n ]
  %.not34.i = icmp sgt i32 %.031.i36.i, %.031.i100.i
  br i1 %.not34.i, label %bb.x, label %unicode_get_cc.exit55._crit_edge.loopexit.split.loop.exit.i

bb.x:                                             ; preds = %unicode_get_cc.exit55.i
  %i.ft = getelementptr i8, ptr %i.da, i64 4
  store i32 %i.db, ptr %i.ft, align 4, !tbaa !9
  %indvars.iv.next82.i = add nsw i64 %indvars.iv81.i, -1
  %.not33.not.i = icmp sgt i64 %indvars.iv81.i, %i.z
  br i1 %.not33.not.i, label %.lr.ph.i, label %unicode_get_cc.exit55._crit_edge.i, !llvm.loop !48

unicode_get_cc.exit55._crit_edge.loopexit.split.loop.exit.i: ; preds = %unicode_get_cc.exit55.i
  %7 = trunc nsw i64 %indvars.iv81.i to i32
  br label %unicode_get_cc.exit55._crit_edge.i

unicode_get_cc.exit55._crit_edge.i:               ; preds = %bb.x, %unicode_get_cc.exit55._crit_edge.loopexit.split.loop.exit.i, %.preheader.i
  %.0.lcssa.i = phi i32 [ %indvars88.i, %.preheader.i ], [ %7, %unicode_get_cc.exit55._crit_edge.loopexit.split.loop.exit.i ], [ %i.ae, %bb.x ]
  %8 = sext i32 %.0.lcssa.i to i64
  %i.fu = getelementptr [4 x i8], ptr %i.t, i64 %8
  %i.fv = getelementptr i8, ptr %i.fu, i64 4
  store i32 %i.ah, ptr %i.fv, align 4, !tbaa !9
  %indvars.iv.next85.i = add nsw i64 %indvars.iv84.i, 1 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next85.i, %i.y
  br i1 %exitcond.not.i, label %unicode_get_cc.exit.thread.i, label %.lr.ph68.i, !llvm.loop !49

unicode_get_cc.exit.thread.loopexit.split.loop.exit.i: ; preds = %bb.e
  %i.fw = trunc nsw i64 %indvars.iv84.i to i32
  br label %unicode_get_cc.exit.thread.i

unicode_get_cc.exit.thread.loopexit.split.loop.exit105.i: ; preds = %bb.k
  %i.fx = trunc nsw i64 %indvars.iv84.i to i32
  br label %unicode_get_cc.exit.thread.i

unicode_get_cc.exit.thread.loopexit.split.loop.exit107.i: ; preds = %get_index_pos.exit.i.i
  %i.fy = trunc nsw i64 %indvars.iv84.i to i32
  br label %unicode_get_cc.exit.thread.i

unicode_get_cc.exit.thread.loopexit.split.loop.exit111.i: ; preds = %unicode_get_cc.exit.i
  %i.fz = trunc nsw i64 %indvars.iv84.i to i32
  br label %unicode_get_cc.exit.thread.i

unicode_get_cc.exit.thread.i:                     ; preds = %unicode_get_cc.exit55._crit_edge.i, %unicode_get_cc.exit.thread.loopexit.split.loop.exit111.i, %unicode_get_cc.exit.thread.loopexit.split.loop.exit107.i, %unicode_get_cc.exit.thread.loopexit.split.loop.exit105.i, %unicode_get_cc.exit.thread.loopexit.split.loop.exit.i, %.preheader57.i, %.lr.ph78.i
  %.1.i = phi i32 [ %.03076.i, %.lr.ph78.i ], [ %.02965.i, %.preheader57.i ], [ %i.fz, %unicode_get_cc.exit.thread.loopexit.split.loop.exit111.i ], [ %i.fy, %unicode_get_cc.exit.thread.loopexit.split.loop.exit107.i ], [ %i.fx, %unicode_get_cc.exit.thread.loopexit.split.loop.exit105.i ], [ %i.fw, %unicode_get_cc.exit.thread.loopexit.split.loop.exit.i ], [ %i.w, %unicode_get_cc.exit55._crit_edge.i ]
  %i.ga = add nsw i32 %.1.i, 1                    ; 2 uses
  %i.gb = icmp slt i32 %i.ga, %i.w
  br i1 %i.gb, label %.lr.ph78.i, label %sort_cc.exit, !llvm.loop !50

sort_cc.exit:                                     ; preds = %unicode_get_cc.exit.thread.i
  %i.gc = icmp ne i32 %i.w, 1
  %i.gd = and i32 %3, 1
  %.not71 = icmp eq i32 %i.gd, 0
  %or.cond = and i1 %.not71, %i.gc
  br i1 %or.cond, label %.lr.ph108, label %dbuf_claim.exit.thread

.lr.ph108:                                        ; preds = %sort_cc.exit
  %i.ge = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %wide.trip.count133 = and i64 %i.v, 2147483647
  br label %.peel.begin

.peel.begin:                                      ; preds = %.lr.ph108, %bb.am
  %indvars.iv130 = phi i64 [ 1, %.lr.ph108 ], [ %indvars.iv.next131, %bb.am ] ; 2 uses
  %.0107 = phi i32 [ 1, %.lr.ph108 ], [ %.1, %bb.am ] ; 5 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv130
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !9  ; 6 uses
  %i.gh = tail call fastcc i32 @unicode_get_cc(i32 noundef %i.gg)
  %i.gi = zext i32 %.0107 to i64                  ; 2 uses
  %i.gj = add nsw i64 %i.gi, -1                   ; 3 uses
  %i.gk = icmp sgt i32 %.0107, 0
  br i1 %i.gk, label %bb.y, label %.critedge

bb.y:                                             ; preds = %.peel.begin
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.gj
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !9  ; 2 uses
  %i.gn = tail call fastcc i32 @unicode_get_cc(i32 noundef %i.gm) ; 2 uses
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %.loopexit129, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not72.peel = icmp slt i32 %i.gn, %i.gh
  %i.gp = trunc nuw i64 %i.gj to i32
  %i.gq = icmp sgt i32 %i.gp, 0
  %or.cond187 = select i1 %.not72.peel, i1 %i.gq, i1 false
  br i1 %or.cond187, label %.lr.ph185, label %.critedge

.lr.ph185:                                        ; preds = %bb.z
  %i.gr = add nsw i64 %i.gi, -2
  br label %bb.aa

.peel.next:                                       ; preds = %bb.ab
  %i.gs = add nsw i64 %i.gv, -1
  %i.gt = trunc nuw i64 %i.gv to i32
  %i.gu = icmp sgt i32 %i.gt, 0
  br i1 %i.gu, label %bb.aa, label %.critedge, !llvm.loop !51

bb.aa:                                            ; preds = %.lr.ph185, %.peel.next
  %i.gv = phi i64 [ %i.gr, %.lr.ph185 ], [ %i.gs, %.peel.next ] ; 4 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !9  ; 2 uses
  %i.gy = tail call fastcc i32 @unicode_get_cc(i32 noundef %i.gx) ; 2 uses
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %.loopexit129, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not72 = icmp slt i32 %i.gy, 256
  br i1 %.not72, label %.peel.next, label %..critedge.loopexit_crit_edge, !llvm.loop !51

.loopexit129:                                     ; preds = %bb.aa, %bb.y
  %.lcssa110 = phi i64 [ %i.gj, %bb.y ], [ %i.gv, %bb.aa ]
  %.lcssa = phi i32 [ %i.gm, %bb.y ], [ %i.gx, %bb.aa ] ; 6 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.lcssa110
  %i.hb = add i32 %.lcssa, -4352
  %or.cond.i = icmp ult i32 %i.hb, 19
  %i.hc = add i32 %i.gg, -4449
  %i.hd = icmp ult i32 %i.hc, 21
  %or.cond5.i = and i1 %i.hd, %or.cond.i
  br i1 %or.cond5.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.loopexit129
  %i.he = mul nuw nsw i32 %.lcssa, 588
  %i.hf = mul nuw nsw i32 %i.gg, 28
  %i.hg = add nuw nsw i32 %i.hf, -2639516
  %i.hh = add nsw i32 %i.hg, %i.he
  br label %compose_pair.exit.thread

bb.ad:                                            ; preds = %.loopexit129
  %i.hi = add i32 %.lcssa, -44032                 ; 2 uses
  %or.cond7.i = icmp ult i32 %i.hi, 11172
  br i1 %or.cond7.i, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %.lhs.trunc.i = trunc nuw nsw i32 %i.hi to i16
  %i.hj = urem i16 %.lhs.trunc.i, 28
  %i.hk = icmp eq i16 %i.hj, 0
  %i.hl = add i32 %i.gg, -4519                    ; 2 uses
  %i.hm = icmp ult i32 %i.hl, 28
  %or.cond11.i = and i1 %i.hm, %i.hk
  br i1 %or.cond11.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.hn = add nuw nsw i32 %.lcssa, %i.hl
  br label %compose_pair.exit.thread

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  br label %bb.ah

bb.ah:                                            ; preds = %bb.al, %bb.ag
  %.02734.i.i = phi i32 [ 964, %bb.ag ], [ %.1.i.i77, %bb.al ] ; 2 uses
  %.02833.i.i = phi i32 [ 0, %bb.ag ], [ %.129.i.i, %bb.al ] ; 2 uses
  %i.ho = add nuw nsw i32 %.02833.i.i, %.02734.i.i
  %i.hp = lshr i32 %i.ho, 1                       ; 3 uses
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr @unicode_comp_table, i64 %i.hq
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !13
  %i.ht = zext i16 %i.hs to i32                   ; 2 uses
  %i.hu = lshr i32 %i.ht, 6                       ; 2 uses
  %i.hv = and i32 %i.ht, 63
  %i.hw = zext nneg i32 %i.hu to i64
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr @unicode_decomp_table1, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !9  ; 3 uses
  %i.hz = lshr i32 %i.hy, 14                      ; 2 uses
  %i.ia = lshr i32 %i.hy, 7
  %i.ib = and i32 %i.ia, 127
  %i.ic = lshr i32 %i.hy, 1
  %i.id = and i32 %i.ic, 63
  %i.ie = add nuw nsw i32 %i.hz, %i.hv            ; 3 uses
  %i.if = call fastcc i32 @unicode_decomp_entry(ptr noundef %i.a, i32 noundef %i.ie, i32 noundef %i.hu, i32 noundef %i.hz, i32 noundef %i.ib, i32 noundef %i.id) ; 0 uses
  %i.ig = load i32, ptr %i.a, align 4, !tbaa !9   ; 2 uses
  %i.ih = sub i32 %.lcssa, %i.ig
  %i.ii = icmp eq i32 %.lcssa, %i.ig
  %i.ij = load i32, ptr %i.ge, align 4
  %i.ik = sub i32 %i.gg, %i.ij
  %.0.i.i76 = select i1 %i.ii, i32 %i.ik, i32 %i.ih ; 2 uses
  %i.il = icmp slt i32 %.0.i.i76, 0
  br i1 %i.il, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.im = add nsw i32 %i.hp, -1
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %.not32.i.i = icmp eq i32 %.0.i.i76, 0
  br i1 %.not32.i.i, label %compose_pair.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.in = add nuw nsw i32 %i.hp, 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %.129.i.i = phi i32 [ %.02833.i.i, %bb.ai ], [ %i.in, %bb.ak ] ; 2 uses
  %.1.i.i77 = phi i32 [ %i.im, %bb.ai ], [ %.02734.i.i, %bb.ak ] ; 2 uses
  %.not.i.i = icmp sgt i32 %.129.i.i, %.1.i.i77
  br i1 %.not.i.i, label %compose_pair.exit.thread87, label %bb.ah, !llvm.loop !53

compose_pair.exit.thread87:                       ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.critedge

compose_pair.exit:                                ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.not73 = icmp eq i32 %i.ie, 0
  br i1 %.not73, label %.critedge, label %compose_pair.exit.thread

compose_pair.exit.thread:                         ; preds = %bb.af, %bb.ac, %compose_pair.exit
  %.0.i7986 = phi i32 [ %i.ie, %compose_pair.exit ], [ %i.hn, %bb.af ], [ %i.hh, %bb.ac ]
  store i32 %.0.i7986, ptr %i.ha, align 4, !tbaa !9
  br label %bb.am

..critedge.loopexit_crit_edge:                    ; preds = %bb.ab
  br label %.critedge, !llvm.loop !51

.critedge:                                        ; preds = %.peel.next, %..critedge.loopexit_crit_edge, %.peel.begin, %bb.z, %compose_pair.exit.thread87, %compose_pair.exit
  %i.io = add nsw i32 %.0107, 1
  %i.ip = sext i32 %.0107 to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ip
  store i32 %i.gg, ptr %i.iq, align 4, !tbaa !9
  br label %bb.am

bb.am:                                            ; preds = %.critedge, %compose_pair.exit.thread
  %.1 = phi i32 [ %.0107, %compose_pair.exit.thread ], [ %i.io, %.critedge ] ; 2 uses
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next131, %wide.trip.count133
end_hunk_0
