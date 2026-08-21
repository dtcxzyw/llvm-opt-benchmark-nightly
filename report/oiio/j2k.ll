Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/j2k?download=true
inline.NumInlined: 157
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 34
begin_hunk_0_@opj_j2k_write_poc_in_memory:bb.a
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [5696 x i8], ptr %i.b, i64 %i.e ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 5600
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !57   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 420
  %i.n = load i32, ptr %i.m, align 4, !tbaa !108  ; 2 uses
  %i.o = add i32 %i.n, 1                          ; 2 uses
  %i.p = icmp ult i32 %i.l, 257
  %. = select i1 %i.p, i32 1, i32 2               ; 4 uses
  %i.q = shl nuw nsw i32 %., 1
  %i.r = add nuw nsw i32 %i.q, 5
  %i.s = mul i32 %i.r, %i.o                       ; 2 uses
  tail call void @opj_write_bytes_LE(ptr noundef %1, i32 noundef 65375, i32 noundef 2) #21
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.u = add i32 %i.s, 2
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.t, i32 noundef %i.u, i32 noundef 2) #21
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 424
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = zext nneg i32 %. to i64                  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0523 = phi ptr [ %i.v, %.lr.ph ], [ %i.az, %bb.b ] ; 7 uses
  %.0532 = phi ptr [ %i.w, %.lr.ph ], [ %i.aq, %bb.b ] ; 2 uses
  %.0541 = phi i32 [ 0, %.lr.ph ], [ %i.ba, %bb.b ] ; 2 uses
  %i.aa = load i32, ptr %.0523, align 4, !tbaa !104
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %.0532, i32 noundef %i.aa, i32 noundef 1) #21
  %i.ab = getelementptr inbounds nuw i8, ptr %.0532, i64 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0523, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !103
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.ab, i32 noundef %i.ad, i32 noundef %.) #21
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.x ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0523, i64 8 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !147
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.ae, i32 noundef %i.ag, i32 noundef 2) #21
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.ai = getelementptr inbounds nuw i8, ptr %.0523, i64 12 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !148
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.ah, i32 noundef %i.aj, i32 noundef 1) #21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 3 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0523, i64 16 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !105
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.ak, i32 noundef %i.am, i32 noundef %.) #21
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.x ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0523, i64 36
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !428
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.an, i32 noundef %i.ap, i32 noundef 1) #21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ar = load i32, ptr %i.af, align 4, !tbaa !147
  %i.as = load i32, ptr %i.y, align 8, !tbaa !90
  %i.at = tail call noundef i32 @llvm.smin.i32(i32 %i.ar, i32 %i.as)
  store i32 %i.at, ptr %i.af, align 4, !tbaa !147
  %i.au = load i32, ptr %i.ai, align 4, !tbaa !148
  %i.av = load i32, ptr %i.z, align 4, !tbaa !123
  %i.aw = tail call noundef i32 @llvm.smin.i32(i32 %i.au, i32 %i.av)
  store i32 %i.aw, ptr %i.ai, align 4, !tbaa !148
  %i.ax = load i32, ptr %i.al, align 4, !tbaa !105
  %i.ay = tail call noundef i32 @llvm.smin.i32(i32 %i.ax, i32 %i.l)
  store i32 %i.ay, ptr %i.al, align 4, !tbaa !105
  %i.az = getelementptr inbounds nuw i8, ptr %.0523, i64 148
  %i.ba = add nuw i32 %.0541, 1
  %exitcond.not = icmp eq i32 %.0541, %i.n
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !493

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.bb = add i32 %i.s, 4
  store i32 %i.bb, ptr %2, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @opj_j2k_write_sod(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %4, ptr noundef %5) unnamed_addr #3 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 9 uses
  %i.b = icmp ult i32 %4, 4
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.302) #21 ; 0 uses
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  tail call void @opj_write_bytes_LE(ptr noundef %2, i32 noundef 65427, i32 noundef 2) #21
  %i.d = add i32 %4, -4                           ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.f, ptr %i.g, align 4, !tbaa !494
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.i, ptr %i.j, align 8, !tbaa !495
  %i.k = icmp eq i32 %i.i, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !257
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !261
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 848
  store i32 0, ptr %i.o, align 8, !tbaa !496
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 0, ptr %3, align 4, !tbaa !3
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !9    ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call ptr @opj_tcd_marker_info_create(i32 noundef %i.q) #21 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.303) #21 ; 0 uses
  br label %bb.u

bb.h:                                             ; preds = %bb.f, %bb.e
  %.052 = phi ptr [ %i.r, %bb.f ], [ null, %bb.e ] ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !9    ; 2 uses
  %i.w = icmp ult i32 %i.d, %i.v
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.302) #21 ; 0 uses
  tail call void @opj_tcd_marker_info_destroy(ptr noundef %.052) #21
  br label %bb.u

bb.j:                                             ; preds = %bb.h
  %i.y = sub nuw i32 %i.d, %i.v
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !228
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ac = tail call i32 @opj_tcd_encode_tile(ptr noundef nonnull %1, i32 noundef %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull %3, i32 noundef %i.y, ptr noundef null, ptr noundef %.052, ptr noundef %5) #21
  %.not60 = icmp eq i32 %i.ac, 0
  br i1 %.not60, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.304) #21 ; 0 uses
  tail call void @opj_tcd_marker_info_destroy(ptr noundef %.052) #21
  br label %bb.u

bb.l:                                             ; preds = %bb.j
  %i.ae = load i32, ptr %3, align 4, !tbaa !3
  %i.af = add i32 %i.ae, 2
  store i32 %i.af, ptr %3, align 4, !tbaa !3
  %i.ag = load i32, ptr %i.p, align 4, !tbaa !9
  %.not61 = icmp eq i32 %i.ag, 0
  br i1 %.not61, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.u, align 8, !tbaa !9
  %i.ai = zext i32 %i.ah to i64
  %i.aj = tail call ptr @opj_malloc(i64 noundef %i.ai) #21 ; 9 uses
  %.not62 = icmp eq ptr %i.aj, null
  br i1 %.not62, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ak = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.305) #21 ; 0 uses
  tail call void @opj_tcd_marker_info_destroy(ptr noundef %.052) #21
  br label %bb.u

bb.o:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 2 ; 2 uses
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.aj, i32 noundef 65368, i32 noundef 2) #21
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.am, i32 noundef 0, i32 noundef 1) #21
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 5 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.052, i64 4 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !497
  %.not26.i = icmp eq i32 %i.ap, 0
  br i1 %.not26.i, label %.critedge, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %.052, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge13.i, %.lr.ph21.i
  %indvars.iv33.i = phi i64 [ 0, %.lr.ph21.i ], [ %indvars.iv.next34.i, %._crit_edge13.i ] ; 2 uses
  %.05218.i = phi ptr [ %i.al, %.lr.ph21.i ], [ %.153.i, %._crit_edge13.i ] ; 2 uses
  %.05417.i = phi i16 [ 3, %.lr.ph21.i ], [ %i.cb, %._crit_edge13.i ] ; 2 uses
  %.05716.i = phi i8 [ 0, %.lr.ph21.i ], [ %.158.i, %._crit_edge13.i ] ; 3 uses
  %.06315.i = phi ptr [ %i.an, %.lr.ph21.i ], [ %i.by, %._crit_edge13.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !499
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv33.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3  ; 5 uses
  %i.ay = trunc i32 %i.ax to i8
  %i.az = and i8 %i.ay, 127
  store i8 %i.az, ptr %i.a, align 1, !tbaa !9
  %.0494.i = lshr i32 %i.ax, 7                    ; 2 uses
  %.not5.i = icmp eq i32 %.0494.i, 0
  br i1 %.not5.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p
  %i.ba = trunc i32 %.0494.i to i8
  %i.bb = or i8 %i.ba, -128
  store i8 %i.bb, ptr %i.ar, align 1, !tbaa !9
  %.049.i = lshr i32 %i.ax, 14                    ; 2 uses
  %.not.i = icmp eq i32 %.049.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.bc = trunc i32 %.049.i to i8
  %i.bd = or i8 %i.bc, -128
  store i8 %i.bd, ptr %i.as, align 1, !tbaa !9
  %.049.i.1 = lshr i32 %i.ax, 21                  ; 2 uses
  %.not.i.1 = icmp eq i32 %.049.i.1, 0
  br i1 %.not.i.1, label %._crit_edge.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.be = trunc i32 %.049.i.1 to i8
  %i.bf = or i8 %i.be, -128
  store i8 %i.bf, ptr %i.at, align 1, !tbaa !9
  %.049.i.2 = lshr i32 %i.ax, 28                  ; 2 uses
  %.not.i.2 = icmp eq i32 %.049.i.2, 0
  br i1 %.not.i.2, label %._crit_edge.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.bg = trunc nuw nsw i32 %.049.i.2 to i8
  %i.bh = or disjoint i8 %i.bg, -128
  store i8 %i.bh, ptr %i.au, align 1, !tbaa !9
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %bb.p
  %.050.lcssa.i = phi i8 [ 1, %bb.p ], [ 2, %.lr.ph.i ], [ 3, %.lr.ph.i.1 ], [ 4, %.lr.ph.i.2 ], [ 5, %.lr.ph.i.3 ] ; 3 uses
  %i.bi = zext i16 %.05417.i to i32               ; 2 uses
  %i.bj = zext i8 %.050.lcssa.i to i32
  %i.bk = add nuw nsw i32 %i.bj, %i.bi
  %i.bl = icmp samesign ugt i32 %i.bk, 65535
  br i1 %i.bl, label %bb.q, label %.lr.ph12.preheader.i

bb.q:                                             ; preds = %._crit_edge.i
  %i.bm = icmp eq i8 %.05716.i, -1
  br i1 %i.bm, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @opj_write_bytes_LE(ptr noundef %.05218.i, i32 noundef %i.bi, i32 noundef 2) #21
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %.06315.i, i32 noundef 65368, i32 noundef 2) #21
  %i.bn = getelementptr inbounds nuw i8, ptr %.06315.i, i64 2
  %i.bo = getelementptr inbounds nuw i8, ptr %.06315.i, i64 4
  %i.bp = add nuw i8 %.05716.i, 1                 ; 2 uses
  %i.bq = zext i8 %i.bp to i32
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %i.bo, i32 noundef %i.bq, i32 noundef 1) #21
  %i.br = getelementptr inbounds nuw i8, ptr %.06315.i, i64 5
  br label %.lr.ph12.preheader.i

.lr.ph12.preheader.i:                             ; preds = %bb.r, %._crit_edge.i
  %.164.i = phi ptr [ %i.br, %bb.r ], [ %.06315.i, %._crit_edge.i ]
  %.158.i = phi i8 [ %i.bp, %bb.r ], [ %.05716.i, %._crit_edge.i ]
  %.155.i = phi i16 [ 3, %bb.r ], [ %.05417.i, %._crit_edge.i ]
  %.153.i = phi ptr [ %i.bn, %bb.r ], [ %.05218.i, %._crit_edge.i ] ; 2 uses
  %i.bs = zext nneg i8 %.050.lcssa.i to i64
  br label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %.lr.ph12.i, %.lr.ph12.preheader.i
  %indvars.iv30.i = phi i64 [ %i.bs, %.lr.ph12.preheader.i ], [ %indvars.iv.next31.i, %.lr.ph12.i ] ; 2 uses
  %.2659.i = phi ptr [ %.164.i, %.lr.ph12.preheader.i ], [ %i.by, %.lr.ph12.i ] ; 2 uses
  %i.bt = add nuw nsw i64 %indvars.iv30.i, 4294967295
  %i.bu = and i64 %i.bt, 4294967295
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !9
  %i.bx = zext i8 %i.bw to i32
  tail call void @opj_write_bytes_LE(ptr noundef nonnull %.2659.i, i32 noundef %i.bx, i32 noundef 1) #21
  %i.by = getelementptr inbounds nuw i8, ptr %.2659.i, i64 1 ; 3 uses
  %indvars.iv.next31.i = add nsw i64 %indvars.iv30.i, -1 ; 2 uses
  %i.bz = and i64 %indvars.iv.next31.i, 255
  %.not67.i = icmp eq i64 %i.bz, 0
  br i1 %.not67.i, label %._crit_edge13.i, label %.lr.ph12.i, !llvm.loop !500

._crit_edge13.i:                                  ; preds = %.lr.ph12.i
  %i.ca = zext i8 %.050.lcssa.i to i16
  %i.cb = add i16 %.155.i, %i.ca                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 2 uses
  %i.cc = load i32, ptr %i.ao, align 4, !tbaa !497
  %i.cd = zext i32 %i.cc to i64
  %i.ce = icmp samesign ult i64 %indvars.iv.next34.i, %i.cd
  br i1 %i.ce, label %bb.p, label %._crit_edge22.loopexit.i, !llvm.loop !501

._crit_edge22.loopexit.i:                         ; preds = %._crit_edge13.i
  %i.cf = zext i16 %i.cb to i32
  br label %.critedge

bb.s:                                             ; preds = %bb.q
  %i.cg = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.306) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @opj_tcd_marker_info_destroy(ptr noundef nonnull %.052) #21
  tail call void @opj_free(ptr noundef nonnull %i.aj) #21
  br label %bb.u

.critedge:                                        ; preds = %._crit_edge22.loopexit.i, %bb.o
  %.063.lcssa.i = phi ptr [ %i.an, %bb.o ], [ %i.by, %._crit_edge22.loopexit.i ]
  %.054.lcssa.i = phi i32 [ 3, %bb.o ], [ %i.cf, %._crit_edge22.loopexit.i ]
  %.052.lcssa.i = phi ptr [ %i.al, %bb.o ], [ %.153.i, %._crit_edge22.loopexit.i ]
  %i.ch = ptrtoint ptr %.063.lcssa.i to i64
  %i.ci = ptrtoint ptr %i.aj to i64
  %i.cj = sub i64 %i.ch, %i.ci                    ; 2 uses
  %i.ck = trunc i64 %i.cj to i32
  tail call void @opj_write_bytes_LE(ptr noundef %.052.lcssa.i, i32 noundef %.054.lcssa.i, i32 noundef 2) #21
  %i.cl = and i64 %i.cj, 4294967295               ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 %i.cl
  %i.cn = load i32, ptr %3, align 4, !tbaa !3
  %i.co = zext i32 %i.cn to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cm, ptr align 1 %2, i64 %i.co, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr nonnull align 1 %i.aj, i64 %i.cl, i1 false)
  tail call void @opj_free(ptr noundef nonnull %i.aj) #21
  %i.cp = load i32, ptr %3, align 4, !tbaa !3
  %i.cq = add i32 %i.cp, %i.ck
  store i32 %i.cq, ptr %3, align 4, !tbaa !3
  br label %bb.t

bb.t:                                             ; preds = %.critedge, %bb.l
  tail call void @opj_tcd_marker_info_destroy(ptr noundef %.052) #21
  br label %bb.u

bb.u:                                             ; preds = %bb.n, %bb.s, %bb.t, %bb.k, %bb.i, %bb.g, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.g ], [ 0, %bb.i ], [ 1, %bb.t ], [ 0, %bb.k ], [ 0, %bb.s ], [ 0, %bb.n ]
  ret i32 %.1
}

declare ptr @opj_tcd_marker_info_create(i32 noundef) local_unnamed_addr #4

declare void @opj_tcd_marker_info_destroy(ptr noundef) local_unnamed_addr #4

declare i32 @opj_tcd_encode_tile(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @opj_j2k_get_num_tp(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw [5696 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !297
  switch i32 %i.f, label %bb.b [
    i32 4, label %opj_j2k_convert_progression_order.exit
    i32 0, label %opj_j2k_convert_progression_order.exit.fold.split
    i32 3, label %opj_j2k_convert_progression_order.exit.fold.split31
    i32 1, label %opj_j2k_convert_progression_order.exit.fold.split32
    i32 2, label %opj_j2k_convert_progression_order.exit.fold.split33
  ]

bb.b:                                             ; preds = %bb.a
  br label %opj_j2k_convert_progression_order.exit

opj_j2k_convert_progression_order.exit.fold.split: ; preds = %bb.a
  br label %opj_j2k_convert_progression_order.exit

opj_j2k_convert_progression_order.exit.fold.split31: ; preds = %bb.a
  br label %opj_j2k_convert_progression_order.exit

opj_j2k_convert_progression_order.exit.fold.split32: ; preds = %bb.a
  br label %opj_j2k_convert_progression_order.exit

opj_j2k_convert_progression_order.exit.fold.split33: ; preds = %bb.a
  br label %opj_j2k_convert_progression_order.exit

opj_j2k_convert_progression_order.exit:           ; preds = %bb.a, %opj_j2k_convert_progression_order.exit.fold.split33, %opj_j2k_convert_progression_order.exit.fold.split32, %opj_j2k_convert_progression_order.exit.fold.split31, %opj_j2k_convert_progression_order.exit.fold.split, %bb.b
  %.0.i.lcssa = phi ptr [ @j2k_prog_order_list, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @j2k_prog_order_list, i64 60), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @j2k_prog_order_list, i64 12), %opj_j2k_convert_progression_order.exit.fold.split ], [ getelementptr inbounds nuw (i8, ptr @j2k_prog_order_list, i64 24), %opj_j2k_convert_progression_order.exit.fold.split31 ], [ getelementptr inbounds nuw (i8, ptr @j2k_prog_order_list, i64 36), %opj_j2k_convert_progression_order.exit.fold.split32 ], [ getelementptr inbounds nuw (i8, ptr @j2k_prog_order_list, i64 48), %opj_j2k_convert_progression_order.exit.fold.split33 ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i8, ptr %i.g, align 8
  %i.i = and i8 %i.h, 1
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %opj_j2k_convert_progression_order.exit
  %.06.i = getelementptr inbounds nuw i8, ptr %.0.i.lcssa, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 424
  %i.k = zext i32 %1 to i64
  %i.l = getelementptr inbounds nuw [148 x i8], ptr %i.j, i64 %i.k ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.n = load i8, ptr %i.m, align 8, !tbaa !9
  %i.o = zext i8 %i.n to i32                      ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 84 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 96 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 88 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 92 ; 4 uses
  %i.t = load i8, ptr %.06.i, align 1, !tbaa !9   ; 2 uses
  switch i8 %i.t, label %bb.g [
    i8 67, label %bb.c
    i8 82, label %bb.d
    i8 80, label %bb.e
    i8 76, label %bb.f
  ]

bb.c:                                             ; preds = %.preheader
  %i.u = load i32, ptr %i.s, align 4, !tbaa !502
  br label %bb.g

bb.d:                                             ; preds = %.preheader
  %i.v = load i32, ptr %i.r, align 4, !tbaa !503
  br label %bb.g

bb.e:                                             ; preds = %.preheader
  %i.w = load i32, ptr %i.q, align 4, !tbaa !504
  br label %bb.g

bb.f:                                             ; preds = %.preheader
  %i.x = load i32, ptr %i.p, align 4, !tbaa !505
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %.preheader
  %.1 = phi i32 [ 1, %.preheader ], [ %i.u, %bb.c ], [ %i.v, %bb.d ], [ %i.w, %bb.e ], [ %i.x, %bb.f ] ; 6 uses
  %i.y = sext i8 %i.t to i32
  %i.z = icmp eq i32 %i.o, %i.y
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.z, %bb.t, %bb.n, %bb.g
  %.1.lcssa = phi i32 [ %.1, %bb.g ], [ %.1.1, %bb.n ], [ %.1.2, %bb.t ], [ %.1.3, %bb.z ]
  %.02326.lcssa.wide = phi i32 [ 0, %bb.g ], [ 1, %bb.n ], [ 2, %bb.t ], [ 3, %bb.z ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %.02326.lcssa.wide, ptr %i.aa, align 4, !tbaa !9
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.lcssa, i64 5
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !9   ; 2 uses
  switch i8 %i.ac, label %bb.n [
    i8 67, label %bb.m
    i8 82, label %bb.l
    i8 80, label %bb.k
    i8 76, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ad = load i32, ptr %i.p, align 4, !tbaa !505
  %i.ae = mul i32 %i.ad, %.1
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.af = load i32, ptr %i.q, align 4, !tbaa !504
  %i.ag = mul i32 %i.af, %.1
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.ah = load i32, ptr %i.r, align 4, !tbaa !503
  %i.ai = mul i32 %i.ah, %.1
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.aj = load i32, ptr %i.s, align 4, !tbaa !502
  %i.ak = mul i32 %i.aj, %.1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %.1.1 = phi i32 [ %.1, %bb.i ], [ %i.ak, %bb.m ], [ %i.ai, %bb.l ], [ %i.ag, %bb.k ], [ %i.ae, %bb.j ] ; 6 uses
  %i.al = sext i8 %i.ac to i32
  %i.am = icmp eq i32 %i.o, %i.al
  br i1 %i.am, label %bb.h, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.lcssa, i64 6
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !9   ; 2 uses
  switch i8 %i.ao, label %bb.t [
    i8 67, label %bb.s
    i8 82, label %bb.r
    i8 80, label %bb.q
    i8 76, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.ap = load i32, ptr %i.p, align 4, !tbaa !505
  %i.aq = mul i32 %i.ap, %.1.1
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.ar = load i32, ptr %i.q, align 4, !tbaa !504
  %i.as = mul i32 %i.ar, %.1.1
  br label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.at = load i32, ptr %i.r, align 4, !tbaa !503
  %i.au = mul i32 %i.at, %.1.1
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.av = load i32, ptr %i.s, align 4, !tbaa !502
  %i.aw = mul i32 %i.av, %.1.1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %.1.2 = phi i32 [ %.1.1, %bb.o ], [ %i.aw, %bb.s ], [ %i.au, %bb.r ], [ %i.as, %bb.q ], [ %i.aq, %bb.p ] ; 6 uses
end_hunk_0
