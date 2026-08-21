inline.NumInlined: 99
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 21
begin_hunk_0_@write_streaminfo:put_bits.exit44.thread
  %i.av = and i32 %i.au, 251658240
  %i.aw = shl i32 %i.z, 28
  %i.ax = or disjoint i32 %i.av, %i.aw
  %i.ay = lshr exact i32 %i.ax, 24
  %i.az = trunc nuw i32 %i.ay to i8
  store i8 %i.az, ptr %i.ar, align 1, !tbaa !70
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.bb = trunc i64 %i.as to i8
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !70
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false)
  ret void
}

declare i32 @av_channel_layout_compare(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_lpc_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_bswapdsp_init(ptr noundef) local_unnamed_addr #2

declare void @ff_flacencdsp_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc void @dprint_compression_options(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7350000
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !31  ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 7349944
  %i.d = load i32, ptr %i.c, align 8, !tbaa !162
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.b, i32 noundef 48, ptr noundef nonnull @.str.63, i32 noundef %i.d) #13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 7349952
  %i.f = load i32, ptr %i.e, align 16, !tbaa !163
  switch i32 %i.f, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.b, i32 noundef 48, ptr noundef nonnull @.str.64) #13
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.b, i32 noundef 48, ptr noundef nonnull @.str.65) #13
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.b, i32 noundef 48, ptr noundef nonnull @.str.66) #13
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 7349956
  %i.h = load i32, ptr %i.g, align 4, !tbaa !164  ; 2 uses
  %i.i = icmp eq i32 %i.h, 1
  %i.j = select i1 %i.i, ptr @.str.68, ptr @.str.69
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.b, i32 noundef 48, ptr noundef nonnull @.str.67, i32 noundef %i.h, ptr noundef nonnull %i.j) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 7349964
  %i.l = load i32, ptr %i.k, align 4, !tbaa !165
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 7349968
  %i.n = load i32, ptr %i.m, align 16, !tbaa !166
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.b, i32 noundef 48, ptr noundef nonnull @.str.70, i32 noundef %i.l, i32 noundef %i.n) #13
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 7349972
  %i.p = load i32, ptr %i.o, align 4, !tbaa !167  ; 2 uses
  %i.q = icmp ult i32 %i.p, 6
  br i1 %i.q, label %switch.lookup, label %bb.g

switch.lookup:                                    ; preds = %bb.f
  %i.r = zext nneg i32 %i.p to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dprint_compression_options, i64 %i.r
  %switch.load = load ptr, ptr %switch.gep, align 8
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.b, i32 noundef 48, ptr noundef nonnull @.str.71, ptr noundef nonnull %switch.load) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %switch.lookup
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 7349976
  %i.t = load i32, ptr %i.s, align 8, !tbaa !168
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 7349980
  %i.v = load i32, ptr %i.u, align 4, !tbaa !169
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.b, i32 noundef 48, ptr noundef nonnull @.str.78, i32 noundef %i.t, i32 noundef %i.v) #13
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.x = load i32, ptr %i.w, align 8, !tbaa !60
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.b, i32 noundef 48, ptr noundef nonnull @.str.79, i32 noundef %i.x) #13
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 7349960
  %i.z = load i32, ptr %i.y, align 8, !tbaa !170
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.b, i32 noundef 48, ptr noundef nonnull @.str.80, i32 noundef %i.z) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

declare void @av_md5_final(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @av_packet_new_side_data(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -558323010, -2147483648) i32 @encode_frame(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x [32 x i32]], align 16       ; 14 uses
  %i.b = alloca [32 x i32], align 16              ; 13 uses
  %i.c = alloca [5 x i64], align 16               ; 6 uses
  %i.d = alloca [8 x i64], align 16               ; 5 uses
  %i.e = alloca [32 x i64], align 16              ; 5 uses
  %i.f = alloca [32 x i64], align 16              ; 13 uses
  %i.g = alloca [32 x i32], align 16              ; 20 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.i = load i32, ptr %i.h, align 4, !tbaa !66   ; 4 uses
  %i.j = icmp ult i32 %i.i, 128
  br i1 %i.j, label %.loopexit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ult i32 %i.i, 65536            ; 2 uses
  %i.k = lshr i32 %i.i, 16
  %spec.select.i.i = select i1 %.not.i.i, i32 %i.i, i32 %i.k ; 3 uses
  %spec.select12.i.i = select i1 %.not.i.i, i16 0, i16 16
  %.not11.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %i.l = lshr i32 %spec.select.i.i, 8
  %.110.i.i = select i1 %.not11.i.i, i32 %spec.select.i.i, i32 %i.l
  %i.m = zext nneg i32 %.110.i.i to i64
  %i.n = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !70
  %i.p = zext i8 %i.o to i16
  %i.q = select i1 %.not11.i.i, i16 4, i16 12
  %i.r = or disjoint i16 %i.q, %spec.select12.i.i
  %.lhs.trunc.i = add nuw nsw i16 %i.r, %i.p      ; 2 uses
  %i.s = icmp samesign ugt i16 %.lhs.trunc.i, 9
  br i1 %i.s, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.t = udiv i16 %.lhs.trunc.i, 5
  %narrow.i = mul nuw nsw i16 %i.t, 6
  %i.u = zext nneg i16 %narrow.i to i32
  %i.v = tail call i32 @llvm.usub.sat.i32(i32 %i.u, i32 17)
  %i.w = trunc nuw nsw i32 %i.v to i16
  %.lhs.trunc28.i = add nuw nsw i16 %i.w, 5
  %i.x = udiv i16 %.lhs.trunc28.i, 6
  %i.y = shl nuw nsw i16 %i.x, 3
  %narrow = add nuw nsw i16 %i.y, 48
  %i.z = zext nneg i16 %narrow to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.preheader.i, %bb.b, %bb.a
  %.1.i = phi i32 [ 40, %bb.a ], [ 40, %bb.b ], [ %i.z, %.lr.ph.preheader.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 7349924
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !47
  switch i32 %i.ab, label %count_frame_header.exit [
    i32 6, label %bb.c
    i32 7, label %bb.d
  ]

bb.c:                                             ; preds = %.loopexit.i
  %i.ac = add nuw nsw i32 %.1.i, 8
  br label %count_frame_header.exit

bb.d:                                             ; preds = %.loopexit.i
  %i.ad = add nuw nsw i32 %.1.i, 16
  br label %count_frame_header.exit

count_frame_header.exit:                          ; preds = %.loopexit.i, %bb.c, %bb.d
  %.2.i = phi i32 [ %i.ac, %bb.c ], [ %i.ad, %bb.d ], [ %.1.i, %.loopexit.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load i32, ptr %i.ae, align 16, !tbaa !47 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 12
  %i.ah = zext i1 %i.ag to i32
  %i.ai = icmp sgt i32 %i.af, 12
  %i.aj = select i1 %i.ai, i32 2, i32 0
  %i.ak = or disjoint i32 %i.aj, %i.ah
  %i.al = shl nuw nsw i32 %i.ak, 3
  %i.am = add nuw nsw i32 %.2.i, 8
  %i.an = add nuw nsw i32 %i.am, %i.al
  %i.ao = zext nneg i32 %i.an to i64              ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !46
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %count_frame_header.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 6825640 ; 22 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 7349920 ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 7349940
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 7349964
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 7349968
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 7349972
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 7349952 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 7349960 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 7350016
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 7349956
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 7349992
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %encode_residual_ch.exit
  %indvar.a = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %encode_residual_ch.exit ] ; 2 uses
  %.0123 = phi i64 [ %i.ao, %.lr.ph ], [ %i.aas, %encode_residual_ch.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.be = getelementptr inbounds nuw [853192 x i8], ptr %i.as, i64 %indvar.a ; 50 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 591004 ; 30 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 328864 ; 31 uses
  %i.bh = load i32, ptr %i.au, align 16, !tbaa !85 ; 32 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 21 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !89 ; 6 uses
  %i.bk = icmp sgt i32 %i.bj, 32
  %i.bl = icmp sgt i32 %i.bh, 1                   ; 2 uses
  br i1 %i.bk, label %.preheader510.i, label %.preheader511.i

.preheader511.i:                                  ; preds = %bb.e
  br i1 %i.bl, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader511.i
  %i.bm = load i32, ptr %i.bg, align 8, !tbaa !47 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.bh to i64
  br label %bb.h

.preheader510.i:                                  ; preds = %bb.e
  br i1 %i.bl, label %.lr.ph520.i, label %._crit_edge521.i

.lr.ph520.i:                                      ; preds = %.preheader510.i
  %i.bn = load i64, ptr %i.at, align 8, !tbaa !111
  %wide.trip.count591.i = zext nneg i32 %i.bh to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph520.i
  %indvars.iv588.i = phi i64 [ 1, %.lr.ph520.i ], [ %indvars.iv.next589.i, %bb.g ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv588.i
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !111
  %.not355.i = icmp eq i64 %i.bp, %i.bn
  br i1 %.not355.i, label %bb.g, label %._crit_edge521.loopexit.i

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next589.i = add nuw nsw i64 %indvars.iv588.i, 1 ; 2 uses
  %exitcond592.not.i = icmp eq i64 %indvars.iv.next589.i, %wide.trip.count591.i
  br i1 %exitcond592.not.i, label %._crit_edge521.thread.i, label %bb.f, !llvm.loop !171

._crit_edge521.loopexit.i:                        ; preds = %bb.f
  %i.bq = trunc nuw nsw i64 %indvars.iv588.i to i32
  br label %._crit_edge521.i

._crit_edge521.i:                                 ; preds = %._crit_edge521.loopexit.i, %.preheader510.i
  %.0336.lcssa.i = phi i32 [ 1, %.preheader510.i ], [ %i.bq, %._crit_edge521.loopexit.i ]
  %i.br = icmp eq i32 %.0336.lcssa.i, %i.bh
  br i1 %i.br, label %._crit_edge521.thread.i, label %bb.j

._crit_edge521.thread.i:                          ; preds = %bb.g, %._crit_edge521.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 0, ptr %i.bs, align 4, !tbaa !141
  store i32 0, ptr %i.be, align 8, !tbaa !142
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !86
  %i.bv = add nuw i32 %i.bj, 8
  %i.bw = add i32 %i.bv, %i.bu
  br label %encode_residual_ch.exit

bb.h:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !47
  %.not.i = icmp eq i32 %i.by, %i.bm
  br i1 %.not.i, label %bb.i, label %._crit_edge.loopexit.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %bb.h, !llvm.loop !172

._crit_edge.loopexit.i:                           ; preds = %bb.h
  %i.bz = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader511.i
  %.1337.lcssa.i = phi i32 [ 1, %.preheader511.i ], [ %i.bz, %._crit_edge.loopexit.i ]
  %i.ca = icmp eq i32 %.1337.lcssa.i, %i.bh
  br i1 %i.ca, label %._crit_edge.i.._crit_edge.thread.i_crit_edge, label %bb.j

._crit_edge.i.._crit_edge.thread.i_crit_edge:     ; preds = %._crit_edge.i
  %.pre = load i32, ptr %i.bg, align 8, !tbaa !47
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.i, %._crit_edge.i.._crit_edge.thread.i_crit_edge
  %i.cb = phi i32 [ %.pre, %._crit_edge.i.._crit_edge.thread.i_crit_edge ], [ %i.bm, %bb.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 0, ptr %i.cc, align 4, !tbaa !141
  store i32 0, ptr %i.be, align 8, !tbaa !142
  store i32 %i.cb, ptr %i.bf, align 4, !tbaa !47
  %i.cd = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !86
  %i.cf = add nsw i32 %i.bj, 8
  %i.cg = add i32 %i.cf, %i.ce
  br label %encode_residual_ch.exit

bb.j:                                             ; preds = %._crit_edge.i, %._crit_edge521.i
  %i.ch = load i32, ptr %i.av, align 4, !tbaa !95
  %i.ci = icmp ne i32 %i.ch, 0
  %i.cj = icmp slt i32 %i.bh, 5
  %or.cond.i = select i1 %i.ci, i1 true, i1 %i.cj
  br i1 %or.cond.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 1, ptr %i.ck, align 4, !tbaa !141
  store i32 1, ptr %i.be, align 8, !tbaa !142
  %i.cl = icmp slt i32 %i.bj, 33
  br i1 %i.cl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cm = sext i32 %i.bh to i64
  %i.cn = shl nsw i64 %i.cm, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bf, ptr nonnull align 4 %i.bg, i64 %i.cn, i1 false)
  %.pre627.i = load i32, ptr %i.au, align 16, !tbaa !84
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.co = phi i32 [ %i.bh, %bb.k ], [ %.pre627.i, %bb.l ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !86
  %i.cr = add i32 %i.cq, 8
  %i.cs = mul nsw i32 %i.co, %i.bj
  %i.ct = add i32 %i.cr, %i.cs
  br label %encode_residual_ch.exit

bb.n:                                             ; preds = %bb.j
  %i.cu = load i32, ptr %i.aw, align 4, !tbaa !55 ; 10 uses
  %i.cv = load i32, ptr %i.ax, align 16, !tbaa !56 ; 9 uses
  %i.cw = load i32, ptr %i.ay, align 4, !tbaa !57 ; 4 uses
  store i32 8, ptr %i.be, align 8, !tbaa !142
  %i.cx = load i32, ptr %i.az, align 16, !tbaa !54 ; 2 uses
  %switch.i = icmp ugt i32 %i.cx, 1
  %.not356.i = icmp sgt i32 %i.bh, %i.cv
  %or.cond376.i = select i1 %switch.i, i1 %.not356.i, i1 false
  br i1 %or.cond376.i, label %bb.am, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %spec.store.select.i = call i32 @llvm.smin.i32(i32 %i.cv, i32 4) ; 4 uses
  store i64 4294967295, ptr %i.c, align 16, !tbaa !111
  %.not367525.i = icmp sgt i32 %i.cu, %spec.store.select.i
  br i1 %.not367525.i, label %._crit_edge530.i, label %.lr.ph529.preheader.i

.lr.ph529.preheader.i:                            ; preds = %bb.o
  %i.cy = sext i32 %i.cu to i64
  %i.cz = add nsw i32 %spec.store.select.i, 1     ; 2 uses
  br label %.lr.ph529.i

.lr.ph529.i:                                      ; preds = %bb.u, %.lr.ph529.preheader.i
  %indvars.iv593.i = phi i64 [ %i.cy, %.lr.ph529.preheader.i ], [ %indvars.iv.next594.i, %bb.u ] ; 3 uses
  %.0332527.i = phi i32 [ 0, %.lr.ph529.preheader.i ], [ %.1333.i, %bb.u ] ; 4 uses
  %indvars595.i = trunc i64 %indvars.iv593.i to i32 ; 6 uses
  %i.da = load i32, ptr %i.bi, align 8, !tbaa !89 ; 2 uses
  %i.db = icmp eq i32 %i.da, 33
  br i1 %i.db, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph529.i
  %i.dc = call fastcc i32 @encode_residual_fixed_with_residual_limit_33bps(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.at, i32 noundef %i.bh, i32 noundef %indvars595.i)
  %.not370.i = icmp eq i32 %i.dc, 0
  br i1 %.not370.i, label %bb.t, label %bb.u

bb.q:                                             ; preds = %.lr.ph529.i
  %i.dd = add nsw i32 %i.da, %indvars595.i
  %i.de = icmp sgt i32 %i.dd, 31
  br i1 %i.de, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.df = call fastcc i32 @encode_residual_fixed_with_residual_limit(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bg, i32 noundef %i.bh, i32 noundef %indvars595.i)
  %.not369.i = icmp eq i32 %i.df, 0
  br i1 %.not369.i, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  call fastcc void @encode_residual_fixed(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bg, i32 noundef %i.bh, i32 noundef %indvars595.i)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.p
  %i.dg = call fastcc i64 @find_subframe_rice_params(ptr noundef nonnull %0, ptr noundef nonnull %i.be, i32 noundef %indvars595.i) ; 2 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv593.i
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !111
  %i.di = sext i32 %.0332527.i to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !111
  %i.dl = icmp ult i64 %i.dg, %i.dk
  %spec.select.i = select i1 %i.dl, i32 %indvars595.i, i32 %.0332527.i
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r, %bb.p
  %.1333.i = phi i32 [ %.0332527.i, %bb.p ], [ %.0332527.i, %bb.r ], [ %spec.select.i, %bb.t ] ; 2 uses
  %indvars.iv.next594.i = add nsw i64 %indvars.iv593.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next594.i to i32
  %exitcond596.not.i = icmp eq i32 %i.cz, %lftr.wideiv.i
  br i1 %exitcond596.not.i, label %._crit_edge530.loopexit.i, label %.lr.ph529.i, !llvm.loop !173

._crit_edge530.loopexit.i:                        ; preds = %bb.u
  %.pre.i = load i64, ptr %i.c, align 16
  %i.dm = icmp eq i64 %.pre.i, 4294967295
  br label %._crit_edge530.i

._crit_edge530.i:                                 ; preds = %._crit_edge530.loopexit.i, %bb.o
  %i.dn = phi i1 [ true, %bb.o ], [ %i.dm, %._crit_edge530.loopexit.i ]
  %.2338.lcssa.i = phi i32 [ %i.cu, %bb.o ], [ %i.cz, %._crit_edge530.loopexit.i ]
  %.0332.lcssa.i = phi i32 [ 0, %bb.o ], [ %.1333.i, %._crit_edge530.loopexit.i ] ; 7 uses
end_hunk_0
begin_hunk_1_@encode_frame:bb.a
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv60.i74.i73
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !47
  %i.un = sext i32 %i.um to i64
  %i.uo = xor i64 %indvars.iv60.i74.i73, -1
  %i.up = add nsw i64 %indvars.iv65.i73.i72, %i.uo
  %sext.i76.i75 = shl i64 %i.up, 32
  %i.uq = ashr exact i64 %sext.i76.i75, 30
  %i.ur = getelementptr inbounds i8, ptr %i.bg, i64 %i.uq
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !47
  %i.ut = sext i32 %i.us to i64
  %i.uu = mul nsw i64 %i.ut, %i.un
  %i.uv = add nsw i64 %i.uu, %.03344.us.i75.i74
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv60.i74.i73
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 4
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !47
  %i.uz = sext i32 %i.uy to i64
  %reass.sub367 = sub i64 %indvars.iv65.i73.i72, %indvars.iv60.i74.i73
  %i.va = shl i64 %reass.sub367, 32
  %sext.i76.i75.1 = add i64 %i.va, -8589934592
  %i.vb = ashr exact i64 %sext.i76.i75.1, 30
  %i.vc = getelementptr inbounds i8, ptr %i.bg, i64 %i.vb
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !47
  %i.ve = sext i32 %i.vd to i64
  %i.vf = mul nsw i64 %i.ve, %i.uz
  %i.vg = add nsw i64 %i.vf, %i.uv                ; 2 uses
  %indvars.iv.next61.i77.i76.1 = add nuw nsw i64 %indvars.iv60.i74.i73, 2 ; 2 uses
  %exitcond64.not.i78.i77.1 = icmp eq i64 %indvars.iv.next61.i77.i76.1, %i.nx
  br i1 %exitcond64.not.i78.i77.1, label %._crit_edge.us.i79.i78, label %scalar.ph243, !llvm.loop !195

bb.bx:                                            ; preds = %._crit_edge.us.i79.i78
  %i.vh = trunc nsw i64 %i.vn to i32
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv65.i73.i72
  store i32 %i.vh, ptr %i.vi, align 4, !tbaa !47
  %indvars.iv.next66.i81.i80 = add nuw nsw i64 %indvars.iv65.i73.i72, 1 ; 2 uses
  %exitcond69.not.i82.i81 = icmp eq i64 %indvars.iv.next66.i81.i80, %wide.trip.count68.i70.i70
  %indvar.next239 = add i34 %indvar238, 1
  br i1 %exitcond69.not.i82.i81, label %.loopexit, label %.preheader.us.i72.i71, !llvm.loop !196

._crit_edge.us.i79.i78:                           ; preds = %scalar.ph243.prol.loopexit, %scalar.ph243, %middle.block258
  %.lcssa195 = phi i64 [ %i.ty, %middle.block258 ], [ %.lcssa356.unr, %scalar.ph243.prol.loopexit ], [ %i.vg, %scalar.ph243 ]
  %i.vj = ashr i64 %.lcssa195, %i.st
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv65.i73.i72
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !47
  %i.vm = sext i32 %i.vl to i64
  %i.vn = sub nsw i64 %i.vm, %i.vj                ; 2 uses
  %i.vo = add i64 %i.vn, 2147483647
  %or.cond.us.i80.i79 = icmp ult i64 %i.vo, 4294967295
  br i1 %or.cond.us.i80.i79, label %bb.bx, label %lpc_encode_choose_datapath.exit101

.lr.ph.i64.i64:                                   ; preds = %.lr.ph.i64.i64.preheader339, %.lr.ph.i64.i64
  %indvars.iv.i65.i65 = phi i64 [ %indvars.iv.next.i66.i66, %.lr.ph.i64.i64 ], [ %indvars.iv.i65.i65.ph, %.lr.ph.i64.i64.preheader339 ] ; 3 uses
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i65.i65
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !47
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i65.i65
  store i32 %i.vq, ptr %i.vr, align 4, !tbaa !47
  %indvars.iv.next.i66.i66 = add nuw nsw i64 %indvars.iv.i65.i65, 1 ; 2 uses
  %exitcond.not.i67.i67 = icmp eq i64 %indvars.iv.next.i66.i66, %i.nx
  br i1 %exitcond.not.i67.i67, label %.preheader42.i68.i68, label %.lr.ph.i64.i64, !llvm.loop !197

lpc_encode_with_residual_limit_33bps.exit.sink.split.i32: ; preds = %bb.bw
  %i.vs = load i32, ptr %i.ba, align 8, !tbaa !150
  %i.vt = load i8, ptr %i.og, align 1, !tbaa !70
  %i.vu = zext i8 %i.vt to i32
  %i.vv = add nsw i32 %i.pa, %.1.i.i38
  %i.vw = add i32 %i.vv, %i.vs
  %i.vx = add i32 %i.vw, %i.vu
  %i.vy = icmp slt i32 %i.vx, 33
  %..i39 = select i1 %i.vy, i64 7387800, i64 7387808
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 %..i39
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !198
  call void %i.wa(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bg, i32 noundef range(i32 5, -2147483648) %i.bh, i32 noundef %i.nh, ptr noundef nonnull %i.g, i32 noundef %i.pb) #13, !inline_history !199
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bx, %bb.bv, %.preheader42.i.i87, %.preheader42.i68.i68, %lpc_encode_with_residual_limit_33bps.exit.sink.split.i32
  %i.wb = call fastcc i64 @find_subframe_rice_params(ptr noundef nonnull %0, ptr noundef nonnull %i.be, i32 noundef %i.nh) ; 2 uses
  %i.wc = icmp slt i64 %i.wb, %.1319568.us.us.i
  br i1 %i.wc, label %bb.by, label %lpc_encode_choose_datapath.exit101

bb.by:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.od, ptr noundef nonnull align 16 dereferenceable(128) %i.g, i64 128, i1 false)
  br label %lpc_encode_choose_datapath.exit101

lpc_encode_choose_datapath.exit101:               ; preds = %._crit_edge.us.i79.i78, %._crit_edge.us.i.i97, %._crit_edge564.us.us.i, %bb.by, %.loopexit
  %.2322.us.us.i = phi i32 [ %.0320567.us.us.i, %.loopexit ], [ %.0320567.us.us.i, %._crit_edge564.us.us.i ], [ 1, %bb.by ], [ %.0320567.us.us.i, %._crit_edge.us.i.i97 ], [ %.0320567.us.us.i, %._crit_edge.us.i79.i78 ] ; 2 uses
  %.3.us.us.i = phi i64 [ %.1319568.us.us.i, %.loopexit ], [ %.1319568.us.us.i, %._crit_edge564.us.us.i ], [ %i.wb, %bb.by ], [ %.1319568.us.us.i, %._crit_edge.us.i.i97 ], [ %.1319568.us.us.i, %._crit_edge.us.i79.i78 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  %i.wd = add nuw i32 %.0323566.us.us.i, 1        ; 2 uses
  %exitcond620.not.i = icmp eq i32 %i.wd, %.lcssa192
  br i1 %exitcond620.not.i, label %.split570.us.us.i, label %.lr.ph563.us.us.i.backedge

.lr.ph563.us.us.i.backedge:                       ; preds = %lpc_encode_choose_datapath.exit101, %.split570.us.us.i
  %.0320567.us.us.i.be = phi i32 [ %.2322.us.us.i, %lpc_encode_choose_datapath.exit101 ], [ 0, %.split570.us.us.i ]
  %.0323566.us.us.i.be = phi i32 [ %i.wd, %lpc_encode_choose_datapath.exit101 ], [ 0, %.split570.us.us.i ]
  br label %.lr.ph563.us.us.i, !llvm.loop !200

._crit_edge564.us.us.i:                           ; preds = %bb.bt
  %i.we = icmp samesign ugt i32 %i.oz, 8
  br i1 %i.we, label %lpc_encode_choose_datapath.exit101, label %bb.bu

.split570.us.us.i:                                ; preds = %lpc_encode_choose_datapath.exit101
  %.not363.us.i = icmp eq i32 %.2322.us.us.i, 0
  br i1 %.not363.us.i, label %.loopexit.i16, label %.lr.ph563.us.us.i.backedge

.lr.ph557.i:                                      ; preds = %.lr.ph557.i.preheader342, %.lr.ph557.i
  %.0324555.i = phi i32 [ %i.wg, %.lr.ph557.i ], [ %.0324555.i.ph, %.lr.ph557.i.preheader342 ]
  %.0326554.i = phi i32 [ %i.wf, %.lr.ph557.i ], [ %.0326554.i.ph, %.lr.ph557.i.preheader342 ]
  %i.wf = mul nuw nsw i32 %.0326554.i, 3          ; 2 uses
  %i.wg = add nuw nsw i32 %.0324555.i, 1          ; 2 uses
  %exitcond613.not.i = icmp eq i32 %i.wg, %i.nh
  br i1 %exitcond613.not.i, label %.split.us.us.preheader.i, label %.lr.ph557.i, !llvm.loop !201

.split.i:                                         ; preds = %lpc_encode_choose_datapath.exit, %.split.preheader.i
  %.0318.i = phi i64 [ %i.xd, %lpc_encode_choose_datapath.exit ], [ 9223372036854775807, %.split.preheader.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  %i.wh = load i32, ptr %i.bi, align 8, !tbaa !89 ; 3 uses
  %i.wi = load i32, ptr %i.ns, align 4, !tbaa !47
  %i.wj = icmp sgt i32 %i.wh, 32
  br i1 %i.wj, label %.preheader.i.i, label %.thread109.i

.preheader.i.i:                                   ; preds = %.split.i, %bb.bz
  %indvars.iv55.i.i = phi i64 [ %indvars.iv.next56.i.i, %bb.bz ], [ %i.np, %.split.i ] ; 3 uses
  %i.wk = getelementptr inbounds [8 x i8], ptr %i.at, i64 %indvars.iv55.i.i
  %i.wl = load i64, ptr %i.wk, align 8, !tbaa !111 ; 2 uses
  %i.wm = add i64 %i.wl, 2147483647
  %or.cond.i.i = icmp ult i64 %i.wm, 4294967295
  br i1 %or.cond.i.i, label %bb.bz, label %.loopexit.i16.loopexit128

bb.bz:                                            ; preds = %.preheader.i.i
  %i.wn = trunc nsw i64 %i.wl to i32
  %i.wo = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %indvars.iv55.i.i
  store i32 %i.wn, ptr %i.wo, align 4, !tbaa !47
  %indvars.iv.next56.i.i = add nsw i64 %indvars.iv55.i.i, 1 ; 2 uses
  %exitcond59.not.i.i = icmp eq i64 %indvars.iv.next56.i.i, %wide.trip.count58.i56.i
  br i1 %exitcond59.not.i.i, label %.loopexit108, label %.preheader.i.i, !llvm.loop !191

.thread109.i:                                     ; preds = %.split.i
  %i.wp = add i32 %i.wh, -32
  %i.wq = icmp ult i32 %i.wp, -31
  br i1 %i.wq, label %.preheader.i57.i, label %lpc_encode_with_residual_limit_33bps.exit.sink.split.i

.preheader.i57.i:                                 ; preds = %.thread109.i, %bb.ca
  %indvars.iv55.i58.i = phi i64 [ %indvars.iv.next56.i60.i, %bb.ca ], [ %i.np, %.thread109.i ] ; 3 uses
  %i.wr = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %indvars.iv55.i58.i
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !47 ; 2 uses
  %.not.i59.i = icmp eq i32 %i.ws, -2147483648
  br i1 %.not.i59.i, label %.loopexit.i16.loopexit128, label %bb.ca

bb.ca:                                            ; preds = %.preheader.i57.i
  %i.wt = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %indvars.iv55.i58.i
  store i32 %i.ws, ptr %i.wt, align 4, !tbaa !47
  %indvars.iv.next56.i60.i = add nsw i64 %indvars.iv55.i58.i, 1 ; 2 uses
  %exitcond59.not.i61.i = icmp eq i64 %indvars.iv.next56.i60.i, %wide.trip.count58.i56.i
  br i1 %exitcond59.not.i61.i, label %.loopexit108, label %.preheader.i57.i, !llvm.loop !196

lpc_encode_with_residual_limit_33bps.exit.sink.split.i: ; preds = %.thread109.i
  %i.wu = load i32, ptr %i.ba, align 8, !tbaa !150
  %i.wv = load i8, ptr %i.nw, align 1, !tbaa !70
  %i.ww = zext i8 %i.wv to i32
  %i.wx = add nuw nsw i32 %i.wh, %.1.i.i
  %i.wy = add i32 %i.wx, %i.wu
  %i.wz = add i32 %i.wy, %i.ww
  %i.xa = icmp slt i32 %i.wz, 33
  %..i = select i1 %i.xa, i64 7387800, i64 7387808
  %i.xb = getelementptr inbounds nuw i8, ptr %0, i64 %..i
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !198
  call void %i.xc(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bg, i32 noundef range(i32 5, -2147483648) %i.bh, i32 noundef %i.nh, ptr noundef nonnull %i.g, i32 noundef %i.wi) #13, !inline_history !199
  br label %.loopexit108

.loopexit108:                                     ; preds = %bb.ca, %bb.bz, %lpc_encode_with_residual_limit_33bps.exit.sink.split.i
  %i.xd = call fastcc i64 @find_subframe_rice_params(ptr noundef nonnull %0, ptr noundef nonnull %i.be, i32 noundef %i.nh) ; 2 uses
  %i.xe = icmp slt i64 %i.xd, %.0318.i
  br i1 %i.xe, label %lpc_encode_choose_datapath.exit, label %.loopexit.i16.loopexit128

lpc_encode_choose_datapath.exit:                  ; preds = %.loopexit108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.nt, ptr noundef nonnull align 16 dereferenceable(128) %i.g, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  br label %.split.i, !llvm.loop !200

.loopexit.i16.loopexit128:                        ; preds = %.loopexit108, %.preheader.i57.i, %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  br label %.loopexit.i16

.loopexit.i16:                                    ; preds = %.split570.us.us.i, %.loopexit.i16.loopexit128, %..loopexit_crit_edge.i
  %.pre-phi630.i = phi i64 [ %.pre629.i, %..loopexit_crit_edge.i ], [ %i.np, %.loopexit.i16.loopexit128 ], [ %i.nx, %.split570.us.us.i ] ; 3 uses
  %.pre-phi.i = phi i32 [ %.pre628.i, %..loopexit_crit_edge.i ], [ %i.nq, %.loopexit.i16.loopexit128 ], [ %i.oa, %.split570.us.us.i ]
  %i.xf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 3 uses
  store i32 %i.nh, ptr %i.xf, align 8, !tbaa !146
  %i.xg = load i32, ptr %i.be, align 8, !tbaa !142
  %i.xh = or i32 %i.xg, %.pre-phi.i
  %i.xi = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  store i32 %i.xh, ptr %i.xi, align 4, !tbaa !141
  %i.xj = getelementptr [4 x i8], ptr %i.b, i64 %.pre-phi630.i
  %i.xk = getelementptr i8, ptr %i.xj, i64 -4
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !47 ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.be, i64 148 ; 2 uses
  store i32 %i.xl, ptr %i.xm, align 4, !tbaa !151
  %i.xn = icmp sgt i32 %i.nh, 0
  br i1 %i.xn, label %.lr.ph574.i, label %._crit_edge575.i

.lr.ph574.i:                                      ; preds = %.loopexit.i16
  %1 = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %i.xo = getelementptr [128 x i8], ptr %i.a, i64 %.pre-phi630.i
  %i.xp = getelementptr i8, ptr %i.xo, i64 -128
  %smax = call i64 @llvm.smax.i64(i64 %.pre-phi630.i, i64 1)
  %i.xq = shl nuw nsw i64 %smax, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(1) %i.xp, i64 %i.xq, i1 false), !tbaa !47
  %.pre626.i = load i32, ptr %i.xm, align 4, !tbaa !151
  br label %._crit_edge575.i

._crit_edge575.i:                                 ; preds = %.lr.ph574.i, %.loopexit.i16
  %i.xr = phi i32 [ %.pre626.i, %.lr.ph574.i ], [ %i.xl, %.loopexit.i16 ]
  %i.xs = load i32, ptr %i.bi, align 8, !tbaa !89
  %i.xt = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %i.xu = call fastcc i32 @lpc_encode_choose_datapath(ptr noundef nonnull %0, i32 noundef %i.xs, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.at, i32 noundef %i.bh, i32 noundef %i.nh, ptr noundef nonnull %i.xt, i32 noundef %i.xr)
  %.not364.i = icmp eq i32 %i.xu, 0
  br i1 %.not364.i, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %._crit_edge575.i
  store i32 1, ptr %i.xi, align 4, !tbaa !141
  store i32 1, ptr %i.be, align 8, !tbaa !142
  %i.xv = load i32, ptr %i.bi, align 8, !tbaa !89 ; 2 uses
  %i.xw = icmp slt i32 %i.xv, 33
  br i1 %i.xw, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.xx = zext nneg i32 %i.bh to i64
  %i.xy = shl nuw nsw i64 %i.xx, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bf, ptr nonnull align 4 %i.bg, i64 %i.xy, i1 false)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.xz = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !86
  %i.yb = add i32 %i.ya, 8
  %i.yc = load i32, ptr %i.au, align 16, !tbaa !84
  %i.yd = mul nsw i32 %i.yc, %i.xv
  %i.ye = add i32 %i.yb, %i.yd
  br label %encode_residual_ch.exit

bb.ce:                                            ; preds = %._crit_edge575.i
  %i.yf = load i32, ptr %i.xf, align 8, !tbaa !146
  %i.yg = call fastcc i64 @find_subframe_rice_params(ptr noundef nonnull %0, ptr noundef nonnull %i.be, i32 noundef %i.yf) ; 0 uses
  %i.yh = load i32, ptr %i.xf, align 8, !tbaa !146 ; 3 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !86
  %i.yk = add i32 %i.yj, 8                        ; 3 uses
  %i.yl = load i32, ptr %i.be, align 8, !tbaa !142 ; 2 uses
  switch i32 %i.yl, label %bb.ch [
    i32 0, label %bb.cf
    i32 1, label %bb.cg
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.ym = load i32, ptr %i.bi, align 8, !tbaa !89
  %i.yn = add i32 %i.ym, %i.yk
  br label %encode_residual_ch.exit

bb.cg:                                            ; preds = %bb.ce
  %i.yo = load i32, ptr %i.au, align 16, !tbaa !84
  %i.yp = load i32, ptr %i.bi, align 8, !tbaa !89
  %i.yq = mul nsw i32 %i.yp, %i.yo
  %i.yr = add i32 %i.yq, %i.yk
  br label %encode_residual_ch.exit

bb.ch:                                            ; preds = %bb.ce
  %i.ys = load i32, ptr %i.bi, align 8, !tbaa !89
  %i.yt = mul nsw i32 %i.ys, %i.yh
  %i.yu = add i32 %i.yt, %i.yk                    ; 2 uses
  %i.yv = icmp eq i32 %i.yl, 32
  br i1 %i.yv, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.yw = load i32, ptr %i.ba, align 8, !tbaa !150
  %i.yx = mul nsw i32 %i.yw, %i.yh
  %i.yy = add i32 %i.yu, 9
  %i.yz = add i32 %i.yy, %i.yx
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.1.i486.i = phi i32 [ %i.yz, %bb.ci ], [ %i.yu, %bb.ch ]
  %i.za = getelementptr inbounds nuw i8, ptr %i.be, i64 156
  %i.zb = load i32, ptr %i.za, align 4, !tbaa !153 ; 3 uses
  %i.zc = load i32, ptr %i.au, align 16, !tbaa !84 ; 2 uses
  %i.zd = ashr i32 %i.zc, %i.zb                   ; 2 uses
  %i.ze = add i32 %.1.i486.i, 6                   ; 2 uses
  %.not.i487.i = icmp eq i32 %i.zb, 31
  br i1 %.not.i487.i, label %encode_residual_ch.exit, label %.lr.ph.i488.i

.lr.ph.i488.i:                                    ; preds = %bb.cj
  %i.zf = shl nuw nsw i32 1, %i.zb
  %i.zg = getelementptr inbounds nuw i8, ptr %i.be, i64 152
  %i.zh = getelementptr inbounds nuw i8, ptr %i.be, i64 160
  %i.zi = load i32, ptr %i.zg, align 8, !tbaa !90
  %wide.trip.count.i489.i = zext nneg i32 %i.zf to i64
  br label %bb.ck

bb.ck:                                            ; preds = %rice_count_exact.exit.i494.i, %.lr.ph.i488.i
  %indvars.iv.i490.i = phi i64 [ 0, %.lr.ph.i488.i ], [ %indvars.iv.next.i497.i, %rice_count_exact.exit.i494.i ] ; 2 uses
  %.255.i491.i = phi i32 [ %i.ze, %.lr.ph.i488.i ], [ %i.aap, %rice_count_exact.exit.i494.i ]
  %.04554.i492.i = phi i32 [ %i.zd, %.lr.ph.i488.i ], [ %..i496.i, %rice_count_exact.exit.i494.i ] ; 3 uses
  %.04653.i493.i = phi i32 [ %i.yh, %.lr.ph.i488.i ], [ %.04554.i492.i, %rice_count_exact.exit.i494.i ] ; 2 uses
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.zh, i64 %indvars.iv.i490.i
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !47 ; 3 uses
  %i.zl = add i32 %.255.i491.i, %i.zi
  %i.zm = sext i32 %.04653.i493.i to i64
  %i.zn = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.zm ; 2 uses
  %i.zo = sub nsw i32 %.04554.i492.i, %.04653.i493.i ; 3 uses
  %i.zp = icmp sgt i32 %i.zo, 0
  br i1 %i.zp, label %.lr.ph.i.i499.i, label %rice_count_exact.exit.i494.i

.lr.ph.i.i499.i:                                  ; preds = %bb.ck
  %i.zq = add i32 %i.zk, 1                        ; 2 uses
  %wide.trip.count.i.i500.i = zext nneg i32 %i.zo to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.zo, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i499.i
  %n.vec = and i64 %wide.trip.count.i.i500.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.zq, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert200 = insertelement <4 x i32> poison, i32 %i.zk, i64 0
  %broadcast.splat201 = shufflevector <4 x i32> %broadcast.splatinsert200, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aad, %vector.body ]
  %vec.phi202 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aae, %vector.body ]
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %i.zn, i64 %index ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 16
  %wide.load = load <4 x i32>, ptr %i.zr, align 4, !tbaa !47 ; 2 uses
  %wide.load203 = load <4 x i32>, ptr %i.zs, align 4, !tbaa !47 ; 2 uses
  %i.zt = shl <4 x i32> %wide.load, splat (i32 1)
  %i.zu = shl <4 x i32> %wide.load203, splat (i32 1)
  %i.zv = ashr <4 x i32> %wide.load, splat (i32 31)
  %i.zw = ashr <4 x i32> %wide.load203, splat (i32 31)
  %i.zx = xor <4 x i32> %i.zt, %i.zv
  %i.zy = xor <4 x i32> %i.zu, %i.zw
  %i.zz = lshr <4 x i32> %i.zx, %broadcast.splat201
  %i.aaa = lshr <4 x i32> %i.zy, %broadcast.splat201
  %i.aab = add <4 x i32> %broadcast.splat, %vec.phi
  %i.aac = add <4 x i32> %broadcast.splat, %vec.phi202
  %i.aad = add <4 x i32> %i.aab, %i.zz            ; 2 uses
  %i.aae = add <4 x i32> %i.aac, %i.aaa           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aaf = icmp eq i64 %index.next, %n.vec
  br i1 %i.aaf, label %middle.block, label %vector.body, !llvm.loop !202

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aae, %i.aad
  %i.aag = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i500.i
  br i1 %cmp.n, label %rice_count_exact.exit.i494.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i499.i, %middle.block
  %indvars.iv.i.i501.i.ph = phi i64 [ 0, %.lr.ph.i.i499.i ], [ %n.vec, %middle.block ]
  %.01112.i.i502.i.ph = phi i32 [ 0, %.lr.ph.i.i499.i ], [ %i.aag, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i501.i = phi i64 [ %indvars.iv.next.i.i503.i, %scalar.ph ], [ %indvars.iv.i.i501.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.01112.i.i502.i = phi i32 [ %i.aao, %scalar.ph ], [ %.01112.i.i502.i.ph, %scalar.ph.preheader ]
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %i.zn, i64 %indvars.iv.i.i501.i
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !47 ; 2 uses
  %i.aaj = shl i32 %i.aai, 1
  %i.aak = ashr i32 %i.aai, 31
  %i.aal = xor i32 %i.aaj, %i.aak
  %i.aam = lshr i32 %i.aal, %i.zk
  %i.aan = add i32 %i.zq, %.01112.i.i502.i
  %i.aao = add i32 %i.aan, %i.aam                 ; 2 uses
  %indvars.iv.next.i.i503.i = add nuw nsw i64 %indvars.iv.i.i501.i, 1 ; 2 uses
  %exitcond.not.i.i504.i = icmp eq i64 %indvars.iv.next.i.i503.i, %wide.trip.count.i.i500.i
  br i1 %exitcond.not.i.i504.i, label %rice_count_exact.exit.i494.i, label %scalar.ph, !llvm.loop !203

rice_count_exact.exit.i494.i:                     ; preds = %scalar.ph, %middle.block, %bb.ck
  %.011.lcssa.i.i495.i = phi i32 [ 0, %bb.ck ], [ %i.aag, %middle.block ], [ %i.aao, %scalar.ph ]
  %i.aap = add i32 %i.zl, %.011.lcssa.i.i495.i    ; 2 uses
  %i.aaq = add nsw i32 %.04554.i492.i, %i.zd
  %..i496.i = call i32 @llvm.smin.i32(i32 %i.zc, i32 %i.aaq)
  %indvars.iv.next.i497.i = add nuw nsw i64 %indvars.iv.i490.i, 1 ; 2 uses
  %exitcond.not.i498.i = icmp eq i64 %indvars.iv.next.i497.i, %wide.trip.count.i489.i
  br i1 %exitcond.not.i498.i, label %encode_residual_ch.exit, label %bb.ck, !llvm.loop !176

encode_residual_ch.exit:                          ; preds = %rice_count_exact.exit.i494.i, %._crit_edge521.thread.i, %._crit_edge.thread.i, %bb.m, %subframe_count_exact.exit442.i, %bb.cd, %bb.cf, %bb.cg, %bb.cj
  %.1.in.i = phi i32 [ %i.yn, %bb.cf ], [ %i.ze, %bb.cj ], [ %.0.in.i, %subframe_count_exact.exit442.i ], [ %i.ct, %bb.m ], [ %i.ye, %bb.cd ], [ %i.bw, %._crit_edge521.thread.i ], [ %i.cg, %._crit_edge.thread.i ], [ %i.yr, %bb.cg ], [ %i.aap, %rice_count_exact.exit.i494.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.aar = sext i32 %.1.in.i to i64
  %i.aas = add i64 %.0123, %i.aar                 ; 2 uses
  %indvar.next = add nuw nsw i64 %indvar.a, 1     ; 2 uses
  %i.aat = load i32, ptr %i.ap, align 8, !tbaa !46
  %i.aau = sext i32 %i.aat to i64
  %i.aav = icmp slt i64 %indvar.next, %i.aau
  br i1 %i.aav, label %bb.e, label %._crit_edge, !llvm.loop !204

._crit_edge:                                      ; preds = %encode_residual_ch.exit, %count_frame_header.exit
  %.0.lcssa = phi i64 [ %i.ao, %count_frame_header.exit ], [ %i.aas, %encode_residual_ch.exit ]
  %i.aaw = add i64 %.0.lcssa, 23                  ; 2 uses
  %i.aax = icmp ugt i64 %i.aaw, 17179869183
  %i.aay = lshr i64 %i.aaw, 3
  %i.aaz = trunc nuw nsw i64 %i.aay to i32
  %.014 = select i1 %i.aax, i32 -558323010, i32 %i.aaz
  ret i32 %.014
}

declare i32 @ff_get_encode_buffer(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2
end_hunk_1
