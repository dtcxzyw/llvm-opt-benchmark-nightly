Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/flacenc?download=true
inline.NumInlined: 99
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 22
begin_hunk_0_@write_streaminfo:put_bits.exit44.thread
  %i.bb = trunc i64 %i.as to i8
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !64
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
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !42  ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 7349944
  %i.d = load i32, ptr %i.c, align 8, !tbaa !163
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.b, i32 noundef 48, ptr noundef nonnull @.str.63, i32 noundef %i.d) #13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 7349952
  %i.f = load i32, ptr %i.e, align 16, !tbaa !164
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
  %i.h = load i32, ptr %i.g, align 4, !tbaa !165  ; 2 uses
  %i.i = icmp eq i32 %i.h, 1
  %i.j = select i1 %i.i, ptr @.str.68, ptr @.str.69
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.b, i32 noundef 48, ptr noundef nonnull @.str.67, i32 noundef %i.h, ptr noundef nonnull %i.j) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 7349964
  %i.l = load i32, ptr %i.k, align 4, !tbaa !166
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 7349968
  %i.n = load i32, ptr %i.m, align 16, !tbaa !167
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.b, i32 noundef 48, ptr noundef nonnull @.str.70, i32 noundef %i.l, i32 noundef %i.n) #13
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 7349972
  %i.p = load i32, ptr %i.o, align 4, !tbaa !168  ; 2 uses
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
  %i.t = load i32, ptr %i.s, align 8, !tbaa !169
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 7349980
  %i.v = load i32, ptr %i.u, align 4, !tbaa !170
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.b, i32 noundef 48, ptr noundef nonnull @.str.78, i32 noundef %i.t, i32 noundef %i.v) #13
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.x = load i32, ptr %i.w, align 8, !tbaa !56
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.b, i32 noundef 48, ptr noundef nonnull @.str.79, i32 noundef %i.x) #13
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 7349960
  %i.z = load i32, ptr %i.y, align 8, !tbaa !171
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
  %i.i = load i32, ptr %i.h, align 4, !tbaa !62   ; 4 uses
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
  %i.o = load i8, ptr %i.n, align 1, !tbaa !64
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
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %encode_residual_ch.exit ] ; 2 uses
  %.0123 = phi i64 [ %i.ao, %.lr.ph ], [ %i.aat, %encode_residual_ch.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.be = getelementptr inbounds nuw [853192 x i8], ptr %i.as, i64 %indvars.iv ; 50 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 591004 ; 30 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 328864 ; 31 uses
  %i.bh = load i32, ptr %i.au, align 16, !tbaa !67 ; 33 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 21 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !71 ; 6 uses
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
  %i.bn = load i64, ptr %i.at, align 8, !tbaa !77
  %wide.trip.count591.i = zext nneg i32 %i.bh to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph520.i
  %indvars.iv588.i = phi i64 [ 1, %.lr.ph520.i ], [ %indvars.iv.next589.i, %bb.g ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv588.i
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !77
  %.not355.i = icmp eq i64 %i.bp, %i.bn
  br i1 %.not355.i, label %bb.g, label %._crit_edge521.loopexit.i

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next589.i = add nuw nsw i64 %indvars.iv588.i, 1 ; 2 uses
  %exitcond592.not.i = icmp eq i64 %indvars.iv.next589.i, %wide.trip.count591.i
  br i1 %exitcond592.not.i, label %._crit_edge521.thread.i, label %bb.f, !llvm.loop !172

._crit_edge521.loopexit.i:                        ; preds = %bb.f
  %i.bq = trunc nuw nsw i64 %indvars.iv588.i to i32
  br label %._crit_edge521.i

._crit_edge521.i:                                 ; preds = %._crit_edge521.loopexit.i, %.preheader510.i
  %.0336.lcssa.i = phi i32 [ 1, %.preheader510.i ], [ %i.bq, %._crit_edge521.loopexit.i ]
  %i.br = icmp eq i32 %.0336.lcssa.i, %i.bh
  br i1 %i.br, label %._crit_edge521.thread.i, label %bb.j

._crit_edge521.thread.i:                          ; preds = %bb.g, %._crit_edge521.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 0, ptr %i.bs, align 4, !tbaa !78
  store i32 0, ptr %i.be, align 8, !tbaa !79
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !70
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
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %bb.h, !llvm.loop !173

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
  store i32 0, ptr %i.cc, align 4, !tbaa !78
  store i32 0, ptr %i.be, align 8, !tbaa !79
  store i32 %i.cb, ptr %i.bf, align 4, !tbaa !47
  %i.cd = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !70
  %i.cf = add nsw i32 %i.bj, 8
  %i.cg = add i32 %i.cf, %i.ce
  br label %encode_residual_ch.exit

bb.j:                                             ; preds = %._crit_edge.i, %._crit_edge521.i
  %i.ch = load i32, ptr %i.av, align 4, !tbaa !74
  %i.ci = icmp ne i32 %i.ch, 0
  %i.cj = icmp slt i32 %i.bh, 5
  %or.cond.i = select i1 %i.ci, i1 true, i1 %i.cj
  br i1 %or.cond.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 1, ptr %i.ck, align 4, !tbaa !78
  store i32 1, ptr %i.be, align 8, !tbaa !79
  %i.cl = icmp slt i32 %i.bj, 33
  br i1 %i.cl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cm = sext i32 %i.bh to i64
  %i.cn = shl nsw i64 %i.cm, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bf, ptr nonnull align 8 %i.bg, i64 %i.cn, i1 false)
  %.pre627.i = load i32, ptr %i.au, align 16, !tbaa !66
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.co = phi i32 [ %i.bh, %bb.k ], [ %.pre627.i, %bb.l ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !70
  %i.cr = add i32 %i.cq, 8
  %i.cs = mul nsw i32 %i.co, %i.bj
  %i.ct = add i32 %i.cr, %i.cs
  br label %encode_residual_ch.exit

bb.n:                                             ; preds = %bb.j
  %i.cu = load i32, ptr %i.aw, align 4, !tbaa !51 ; 10 uses
  %i.cv = load i32, ptr %i.ax, align 16, !tbaa !52 ; 9 uses
  %i.cw = load i32, ptr %i.ay, align 4, !tbaa !53 ; 4 uses
  store i32 8, ptr %i.be, align 8, !tbaa !79
  %i.cx = load i32, ptr %i.az, align 16, !tbaa !50 ; 2 uses
  %switch.i = icmp ugt i32 %i.cx, 1
  %.not356.i = icmp sgt i32 %i.bh, %i.cv
  %or.cond376.i = select i1 %switch.i, i1 %.not356.i, i1 false
  br i1 %or.cond376.i, label %bb.am, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %spec.store.select.i = call i32 @llvm.smin.i32(i32 %i.cv, i32 4) ; 4 uses
  store i64 4294967295, ptr %i.c, align 16, !tbaa !77
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
  %i.da = load i32, ptr %i.bi, align 8, !tbaa !71 ; 2 uses
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
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !77
  %i.di = sext i32 %.0332527.i to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !77
  %i.dl = icmp ult i64 %i.dg, %i.dk
  %spec.select.i = select i1 %i.dl, i32 %indvars595.i, i32 %.0332527.i
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r, %bb.p
  %.1333.i = phi i32 [ %.0332527.i, %bb.p ], [ %.0332527.i, %bb.r ], [ %spec.select.i, %bb.t ] ; 2 uses
  %indvars.iv.next594.i = add nsw i64 %indvars.iv593.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next594.i to i32
  %exitcond596.not.i = icmp eq i32 %i.cz, %lftr.wideiv.i
  br i1 %exitcond596.not.i, label %._crit_edge530.loopexit.i, label %.lr.ph529.i, !llvm.loop !174

._crit_edge530.loopexit.i:                        ; preds = %bb.u
  %.pre.i = load i64, ptr %i.c, align 16
  %i.dm = icmp eq i64 %.pre.i, 4294967295
  br label %._crit_edge530.i

._crit_edge530.i:                                 ; preds = %._crit_edge530.loopexit.i, %bb.o
  %i.dn = phi i1 [ true, %bb.o ], [ %i.dm, %._crit_edge530.loopexit.i ]
  %.2338.lcssa.i = phi i32 [ %i.cu, %bb.o ], [ %i.cz, %._crit_edge530.loopexit.i ]
  %.0332.lcssa.i = phi i32 [ 0, %bb.o ], [ %.1333.i, %._crit_edge530.loopexit.i ] ; 7 uses
  %i.do = icmp eq i32 %.0332.lcssa.i, 0
  %or.cond4.i = select i1 %i.do, i1 %i.dn, i1 false
  br i1 %or.cond4.i, label %bb.v, label %bb.y
end_hunk_0
begin_hunk_1_@encode_frame:bb.a
  %i.ld = sext i32 %.9.1.i to i64
  br label %.lr.ph539.2.i

.lr.ph539.2.i:                                    ; preds = %bb.bi, %.lr.ph539.preheader.2.i
  %indvars.iv602.2.i = phi i64 [ %i.lc, %.lr.ph539.preheader.2.i ], [ %indvars.iv.next603.2.i, %bb.bi ] ; 8 uses
  %.8537.2.i = phi i32 [ %.9.1.i, %.lr.ph539.preheader.2.i ], [ %.9.2.i, %bb.bi ] ; 5 uses
  %i.le = icmp sge i64 %indvars.iv602.2.i, %i.jl
  %.not359.2.i = icmp slt i64 %indvars.iv602.2.i, %i.jk
  %or.cond374.2.i = select i1 %i.le, i1 %.not359.2.i, i1 false
  br i1 %or.cond374.2.i, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %.lr.ph539.2.i
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.f, i64 %indvars.iv602.2.i ; 2 uses
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !77
  %i.lh = icmp ult i64 %i.lg, 4294967295
  br i1 %i.lh, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.li = load i32, ptr %i.bi, align 8, !tbaa !71
  %i.lj = getelementptr inbounds [128 x i8], ptr %i.a, i64 %indvars.iv602.2.i
  %i.lk = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv602.2.i
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !47
  %i.lm = trunc nsw i64 %indvars.iv602.2.i to i32 ; 2 uses
  %i.ln = add nsw i32 %i.lm, 1                    ; 2 uses
  %i.lo = call fastcc i32 @lpc_encode_choose_datapath(ptr noundef %0, i32 noundef %i.li, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.at, i32 noundef %i.bh, i32 noundef %i.ln, ptr noundef nonnull %i.lj, i32 noundef %i.ll)
  %.not360.2.i = icmp eq i32 %i.lo, 0
  br i1 %.not360.2.i, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.lp = call fastcc i64 @find_subframe_rice_params(ptr noundef nonnull %0, ptr noundef nonnull %i.be, i32 noundef %i.ln) ; 2 uses
  store i64 %i.lp, ptr %i.lf, align 8, !tbaa !77
  %i.lq = sext i32 %.8537.2.i to i64
  %i.lr = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.lq
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !77
  %i.lt = icmp ult i64 %i.lp, %i.ls
  %spec.select375.2.i = select i1 %i.lt, i32 %i.lm, i32 %.8537.2.i
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf, %.lr.ph539.2.i
  %.9.2.i = phi i32 [ %.8537.2.i, %.lr.ph539.2.i ], [ %spec.select375.2.i, %bb.bh ], [ %.8537.2.i, %bb.bf ], [ %.8537.2.i, %bb.bg ] ; 4 uses
  %indvars.iv.next603.2.i = add nsw i64 %indvars.iv602.2.i, 4
  %.not358.2.i = icmp sgt i64 %indvars.iv602.2.i, %i.ld
  br i1 %.not358.2.i, label %.lr.ph539.preheader.3.i, label %.lr.ph539.2.i, !llvm.loop !182

.lr.ph539.preheader.3.i:                          ; preds = %bb.bi
  %i.lu = add i32 %.9.2.i, -2
  %i.lv = sext i32 %i.lu to i64
  %i.lw = sext i32 %.9.2.i to i64
  br label %.lr.ph539.3.i

.lr.ph539.3.i:                                    ; preds = %bb.bm, %.lr.ph539.preheader.3.i
  %indvars.iv602.3.i = phi i64 [ %i.lv, %.lr.ph539.preheader.3.i ], [ %indvars.iv.next603.3.i, %bb.bm ] ; 8 uses
  %.8537.3.i = phi i32 [ %.9.2.i, %.lr.ph539.preheader.3.i ], [ %.9.3.i, %bb.bm ] ; 5 uses
  %i.lx = icmp sge i64 %indvars.iv602.3.i, %i.jl
  %.not359.3.i = icmp slt i64 %indvars.iv602.3.i, %i.jk
  %or.cond374.3.i = select i1 %i.lx, i1 %.not359.3.i, i1 false
  br i1 %or.cond374.3.i, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %.lr.ph539.3.i
  %i.ly = getelementptr inbounds [8 x i8], ptr %i.f, i64 %indvars.iv602.3.i ; 2 uses
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !77
  %i.ma = icmp ult i64 %i.lz, 4294967295
  br i1 %i.ma, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.mb = load i32, ptr %i.bi, align 8, !tbaa !71
  %i.mc = getelementptr inbounds [128 x i8], ptr %i.a, i64 %indvars.iv602.3.i
  %i.md = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv602.3.i
  %i.me = load i32, ptr %i.md, align 4, !tbaa !47
  %i.mf = trunc nsw i64 %indvars.iv602.3.i to i32 ; 2 uses
  %i.mg = add nsw i32 %i.mf, 1                    ; 2 uses
  %i.mh = call fastcc i32 @lpc_encode_choose_datapath(ptr noundef %0, i32 noundef %i.mb, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.at, i32 noundef %i.bh, i32 noundef %i.mg, ptr noundef nonnull %i.mc, i32 noundef %i.me)
  %.not360.3.i = icmp eq i32 %i.mh, 0
  br i1 %.not360.3.i, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.mi = call fastcc i64 @find_subframe_rice_params(ptr noundef nonnull %0, ptr noundef nonnull %i.be, i32 noundef %i.mg) ; 2 uses
  store i64 %i.mi, ptr %i.ly, align 8, !tbaa !77
  %i.mj = sext i32 %.8537.3.i to i64
  %i.mk = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.mj
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !77
  %i.mm = icmp ult i64 %i.mi, %i.ml
  %spec.select375.3.i = select i1 %i.mm, i32 %i.mf, i32 %.8537.3.i
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj, %.lr.ph539.3.i
  %.9.3.i = phi i32 [ %.8537.3.i, %.lr.ph539.3.i ], [ %spec.select375.3.i, %bb.bl ], [ %.8537.3.i, %bb.bj ], [ %.8537.3.i, %bb.bk ] ; 4 uses
  %indvars.iv.next603.3.i = add nsw i64 %indvars.iv602.3.i, 2
  %.not358.3.i = icmp sgt i64 %indvars.iv602.3.i, %i.lw
  br i1 %.not358.3.i, label %.lr.ph539.preheader.4.i, label %.lr.ph539.3.i, !llvm.loop !182

.lr.ph539.preheader.4.i:                          ; preds = %bb.bm
  %i.mn = add i32 %.9.3.i, -1
  %i.mo = sext i32 %i.mn to i64
  %i.mp = sext i32 %.9.3.i to i64
  br label %.lr.ph539.4.i

.lr.ph539.4.i:                                    ; preds = %bb.bq, %.lr.ph539.preheader.4.i
  %indvars.iv602.4.i = phi i64 [ %i.mo, %.lr.ph539.preheader.4.i ], [ %indvars.iv.next603.4.i, %bb.bq ] ; 8 uses
  %.8537.4.i = phi i32 [ %.9.3.i, %.lr.ph539.preheader.4.i ], [ %.9.4.i, %bb.bq ] ; 5 uses
  %i.mq = icmp sge i64 %indvars.iv602.4.i, %i.jl
  %.not359.4.i = icmp slt i64 %indvars.iv602.4.i, %i.jk
  %or.cond374.4.i = select i1 %i.mq, i1 %.not359.4.i, i1 false
  br i1 %or.cond374.4.i, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %.lr.ph539.4.i
  %i.mr = getelementptr inbounds [8 x i8], ptr %i.f, i64 %indvars.iv602.4.i ; 2 uses
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !77
  %i.mt = icmp ult i64 %i.ms, 4294967295
  br i1 %i.mt, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.mu = load i32, ptr %i.bi, align 8, !tbaa !71
  %i.mv = getelementptr inbounds [128 x i8], ptr %i.a, i64 %indvars.iv602.4.i
  %i.mw = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv602.4.i
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !47
  %i.my = trunc nsw i64 %indvars.iv602.4.i to i32 ; 2 uses
  %i.mz = add nsw i32 %i.my, 1                    ; 2 uses
  %i.na = call fastcc i32 @lpc_encode_choose_datapath(ptr noundef %0, i32 noundef %i.mu, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.at, i32 noundef %i.bh, i32 noundef %i.mz, ptr noundef nonnull %i.mv, i32 noundef %i.mx)
  %.not360.4.i = icmp eq i32 %i.na, 0
  br i1 %.not360.4.i, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.nb = call fastcc i64 @find_subframe_rice_params(ptr noundef nonnull %0, ptr noundef nonnull %i.be, i32 noundef %i.mz) ; 2 uses
  store i64 %i.nb, ptr %i.mr, align 8, !tbaa !77
  %i.nc = sext i32 %.8537.4.i to i64
  %i.nd = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.nc
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !77
  %i.nf = icmp ult i64 %i.nb, %i.ne
  %spec.select375.4.i = select i1 %i.nf, i32 %i.my, i32 %.8537.4.i
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn, %.lr.ph539.4.i
  %.9.4.i = phi i32 [ %.8537.4.i, %.lr.ph539.4.i ], [ %spec.select375.4.i, %bb.bp ], [ %.8537.4.i, %bb.bn ], [ %.8537.4.i, %bb.bo ] ; 2 uses
  %indvars.iv.next603.4.i = add nsw i64 %indvars.iv602.4.i, 1
  %.not358.4.i = icmp sgt i64 %indvars.iv602.4.i, %i.mp
  br i1 %.not358.4.i, label %._crit_edge540.4.i, label %.lr.ph539.4.i, !llvm.loop !182

._crit_edge540.4.i:                               ; preds = %bb.bq
  %i.ng = add nsw i32 %.9.4.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  br label %bb.br

bb.br:                                            ; preds = %._crit_edge540.4.i, %._crit_edge548.i, %bb.at, %bb.as
  %i.nh = phi i32 [ %i.is, %bb.as ], [ %.5.lcssa.i, %._crit_edge548.i ], [ %i.ng, %._crit_edge540.4.i ], [ %i.ho, %bb.at ] ; 31 uses
  %i.ni = load i32, ptr %i.bd, align 8, !tbaa !201
  %.not362.i = icmp eq i32 %i.ni, 0
  br i1 %.not362.i, label %..loopexit_crit_edge.i, label %bb.bs

..loopexit_crit_edge.i:                           ; preds = %bb.br
  %.pre628.i = add nsw i32 %i.nh, -1
  %.pre629.i = sext i32 %i.nh to i64
  br label %.loopexit.i16

bb.bs:                                            ; preds = %bb.br
  %i.nj = load i32, ptr %i.ba, align 8, !tbaa !81
  %i.nk = add nsw i32 %i.nj, -1
  %notmask.i = shl nsw i32 -1, %i.nk              ; 3 uses
  %.neg.i = add nsw i32 %notmask.i, 1
  %i.nl = xor i32 %notmask.i, -1
  %i.nm = icmp sgt i32 %i.nh, 0
  br i1 %i.nm, label %.lr.ph557.i.preheader, label %.split.preheader.i

.lr.ph557.i.preheader:                            ; preds = %bb.bs
  %min.iters.check290 = icmp ult i32 %i.nh, 8
  br i1 %min.iters.check290, label %.lr.ph557.i.preheader339, label %vector.ph291

vector.ph291:                                     ; preds = %.lr.ph557.i.preheader
  %n.vec292 = and i32 %i.nh, 2147483640           ; 3 uses
  br label %vector.body293

vector.body293:                                   ; preds = %vector.body293, %vector.ph291
  %index294 = phi i32 [ 0, %vector.ph291 ], [ %index.next297, %vector.body293 ]
  %reduced.phi = phi <4 x i32> [ splat (i32 1), %vector.ph291 ], [ %bin.rdx299, %vector.body293 ]
  %bin.rdx299 = mul <4 x i32> %reduced.phi, splat (i32 9) ; 2 uses
  %index.next297 = add nuw i32 %index294, 8       ; 2 uses
  %i.nn = icmp eq i32 %index.next297, %n.vec292
  br i1 %i.nn, label %middle.block298, label %vector.body293, !llvm.loop !183

middle.block298:                                  ; preds = %vector.body293
  %i.no = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx299) ; 2 uses
  %cmp.n300 = icmp eq i32 %i.nh, %n.vec292
  br i1 %cmp.n300, label %.split.us.us.preheader.i, label %.lr.ph557.i.preheader339

.lr.ph557.i.preheader339:                         ; preds = %.lr.ph557.i.preheader, %middle.block298
  %.0324555.i.ph = phi i32 [ 0, %.lr.ph557.i.preheader ], [ %n.vec292, %middle.block298 ]
  %.0326554.i.ph = phi i32 [ 1, %.lr.ph557.i.preheader ], [ %i.no, %middle.block298 ]
  br label %.lr.ph557.i

.split.preheader.i:                               ; preds = %bb.bs
  %i.np = sext i32 %i.nh to i64                   ; 3 uses
  %i.nq = add nsw i32 %i.nh, -1                   ; 2 uses
  %i.nr = sext i32 %i.nq to i64                   ; 2 uses
  %i.ns = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.nr
  %i.nt = getelementptr inbounds [128 x i8], ptr %i.a, i64 %i.nr
  %.not11.i.i21 = icmp eq i32 %i.nh, 0
  %i.nu = lshr i32 %i.nh, 24
  %.1.i.i = select i1 %.not11.i.i21, i32 0, i32 24
  %i.nv = zext nneg i32 %i.nu to i64
  %i.nw = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.nv
  %wide.trip.count58.i56.i = zext nneg i32 %i.bh to i64
  br label %.split.i

.split.us.us.preheader.i:                         ; preds = %.lr.ph557.i, %middle.block298
  %.lcssa191 = phi i32 [ %i.no, %middle.block298 ], [ %i.wf, %.lr.ph557.i ]
  %i.nx = zext nneg i32 %i.nh to i64              ; 25 uses
  %i.ny = getelementptr [128 x i8], ptr %i.a, i64 %i.nx
  %i.nz = getelementptr i8, ptr %i.ny, i64 -128
  %i.oa = add nsw i32 %i.nh, -1                   ; 2 uses
  %i.ob = zext nneg i32 %i.oa to i64              ; 2 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ob
  %i.od = getelementptr inbounds nuw [128 x i8], ptr %i.a, i64 %i.ob
  %.not11.i.i36 = icmp samesign ult i32 %i.nh, 256 ; 2 uses
  %i.oe = lshr i32 %i.nh, 8
  %.110.i.i37 = select i1 %.not11.i.i36, i32 %i.nh, i32 %i.oe
  %.1.i.i38 = select i1 %.not11.i.i36, i32 0, i32 8
  %i.of = zext nneg i32 %.110.i.i37 to i64
  %i.og = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.of
  %i.oh = icmp samesign ult i32 %i.nh, %i.bh      ; 2 uses
  %wide.trip.count68.i70.i70 = zext nneg i32 %i.bh to i64 ; 2 uses
  %i.oi = add nsw i64 %i.nx, -1                   ; 4 uses
  %i.oj = zext nneg i32 %i.nh to i35
  %i.ok = zext nneg i32 %i.nh to i34
  %min.iters.check272 = icmp ult i32 %i.nh, 4
  %n.vec274 = and i64 %i.nx, 2147483644           ; 3 uses
  %cmp.n286 = icmp eq i64 %n.vec274, %i.nx
  %min.iters.check261 = icmp ult i32 %i.nh, 4
  %n.vec263 = and i64 %i.nx, 2147483644           ; 3 uses
  %cmp.n269 = icmp eq i64 %n.vec263, %i.nx
  %min.iters.check241 = icmp ult i32 %i.nh, 28
  %i.ol = trunc nsw i64 %i.oi to i34
  %mul.result238 = shl nsw i34 %i.ol, 2
  %mul.overflow239 = icmp ugt i64 %i.oi, 4294967295
  %n.vec243 = and i64 %i.nx, 2147483644           ; 3 uses
  %cmp.n257 = icmp eq i64 %n.vec243, %i.nx
  %xtraiter = and i64 %i.nx, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.om = add nsw i64 %i.nx, -1
  %min.iters.check223 = icmp ult i32 %i.nh, 4
  %n.vec225 = and i64 %i.nx, 2147483644           ; 3 uses
  %cmp.n232 = icmp eq i64 %n.vec225, %i.nx
  %min.iters.check204 = icmp ult i32 %i.nh, 12
  %i.on = trunc nsw i64 %i.oi to i35
  %mul.result = shl nsw i35 %i.on, 3
  %mul.overflow = icmp ugt i64 %i.oi, 4294967295
  %n.vec206 = and i64 %i.nx, 2147483644           ; 3 uses
  %cmp.n219 = icmp eq i64 %n.vec206, %i.nx
  %xtraiter362 = and i64 %i.nx, 1
  %lcmp.mod363.not = icmp eq i64 %xtraiter362, 0
  %i.oo = add nsw i64 %i.nx, -1
  br label %.lr.ph563.us.us.i

.lr.ph563.us.us.i:                                ; preds = %.lr.ph563.us.us.i.backedge, %.split.us.us.preheader.i
  %.1319568.us.us.i = phi i64 [ 9223372036854775807, %.split.us.us.preheader.i ], [ %.3.us.us.i, %.lr.ph563.us.us.i.backedge ] ; 5 uses
  %.0320567.us.us.i = phi i32 [ 0, %.split.us.us.preheader.i ], [ %.0320567.us.us.i.be, %.lr.ph563.us.us.i.backedge ] ; 4 uses
  %.0323566.us.us.i = phi i32 [ 0, %.split.us.us.preheader.i ], [ %.0323566.us.us.i.be, %.lr.ph563.us.us.i.backedge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %.lr.ph563.us.us.i
  %indvars.iv615.i = phi i64 [ %indvars.iv.next616.i, %bb.bt ], [ 0, %.lr.ph563.us.us.i ] ; 3 uses
  %.0316561.us.us.i = phi i32 [ %i.oz, %bb.bt ], [ 0, %.lr.ph563.us.us.i ]
  %.0317560.us.us.i = phi i32 [ %i.ow, %bb.bt ], [ %.0323566.us.us.i, %.lr.ph563.us.us.i ] ; 2 uses
  %i.op = add nsw i32 %.0317560.us.us.i, 1
  %i.oq = srem i32 %i.op, 3
  %i.or = add nsw i32 %i.oq, -1                   ; 2 uses
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %indvars.iv615.i
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !47
  %i.ou = add nsw i32 %i.or, %i.ot                ; 2 uses
  %.not506.us.us.i = icmp sgt i32 %i.ou, %notmask.i
  %..i.us.us.i = call i32 @llvm.smin.i32(i32 %i.ou, i32 %i.nl)
  %.0.i.us.us.i = select i1 %.not506.us.us.i, i32 %..i.us.us.i, i32 %.neg.i
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv615.i
  store i32 %.0.i.us.us.i, ptr %i.ov, align 4, !tbaa !47
  %i.ow = sdiv i32 %.0317560.us.us.i, 3
  %i.ox = icmp ne i32 %i.or, 0
  %i.oy = zext i1 %i.ox to i32
  %i.oz = add nuw nsw i32 %.0316561.us.us.i, %i.oy ; 2 uses
  %indvars.iv.next616.i = add nuw nsw i64 %indvars.iv615.i, 1 ; 2 uses
  %exitcond619.not.i = icmp eq i64 %indvars.iv.next616.i, %i.nx
  br i1 %exitcond619.not.i, label %._crit_edge564.us.us.i, label %bb.bt, !llvm.loop !184

._crit_edge564.us.us.i:                           ; preds = %bb.bt
  %i.pa = icmp samesign ugt i32 %i.oz, 8
  br i1 %i.pa, label %lpc_encode_choose_datapath.exit101, label %bb.bu

bb.bu:                                            ; preds = %._crit_edge564.us.us.i
  %i.pb = load i32, ptr %i.bi, align 8, !tbaa !71 ; 3 uses
  %i.pc = load i32, ptr %i.oc, align 4, !tbaa !47 ; 3 uses
  %i.pd = add nsw i32 %i.pb, -1
  %i.pe = zext nneg i32 %i.pd to i64              ; 3 uses
  br i1 %min.iters.check272, label %.lr.ph.i57.preheader, label %vector.ph273

vector.ph273:                                     ; preds = %bb.bu
  %broadcast.splatinsert275 = insertelement <2 x i64> poison, i64 %i.pe, i64 0
  %broadcast.splat276 = shufflevector <2 x i64> %broadcast.splatinsert275, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body277

vector.body277:                                   ; preds = %vector.body277, %vector.ph273
  %index278 = phi i64 [ 0, %vector.ph273 ], [ %index.next283, %vector.body277 ] ; 2 uses
  %vec.phi279 = phi <2 x i64> [ zeroinitializer, %vector.ph273 ], [ %i.pn, %vector.body277 ]
  %vec.phi280 = phi <2 x i64> [ zeroinitializer, %vector.ph273 ], [ %i.po, %vector.body277 ]
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index278 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %wide.load281 = load <2 x i32>, ptr %i.pf, align 16, !tbaa !47
  %wide.load282 = load <2 x i32>, ptr %i.pg, align 8, !tbaa !47
  %i.ph = sext <2 x i32> %wide.load281 to <2 x i64>
  %i.pi = sext <2 x i32> %wide.load282 to <2 x i64>
  %i.pj = shl <2 x i64> %i.ph, %broadcast.splat276
  %i.pk = shl <2 x i64> %i.pi, %broadcast.splat276
  %i.pl = call <2 x i64> @llvm.abs.v2i64(<2 x i64> %i.pj, i1 true)
  %i.pm = call <2 x i64> @llvm.abs.v2i64(<2 x i64> %i.pk, i1 true)
  %i.pn = add <2 x i64> %i.pl, %vec.phi279        ; 2 uses
  %i.po = add <2 x i64> %i.pm, %vec.phi280        ; 2 uses
  %index.next283 = add nuw i64 %index278, 4       ; 2 uses
  %i.pp = icmp eq i64 %index.next283, %n.vec274
  br i1 %i.pp, label %middle.block284, label %vector.body277, !llvm.loop !185

middle.block284:                                  ; preds = %vector.body277
  %bin.rdx285 = add <2 x i64> %i.po, %i.pn
  %i.pq = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx285) ; 2 uses
  br i1 %cmp.n286, label %._crit_edge.i62, label %.lr.ph.i57.preheader

.lr.ph.i57.preheader:                             ; preds = %bb.bu, %middle.block284
  %indvars.iv.i58.ph = phi i64 [ 0, %bb.bu ], [ %n.vec274, %middle.block284 ]
  %.04992.i59.ph = phi i64 [ 0, %bb.bu ], [ %i.pq, %middle.block284 ]
  br label %.lr.ph.i57

._crit_edge.i62:                                  ; preds = %.lr.ph.i57, %middle.block284
  %.lcssa193 = phi i64 [ %i.pq, %middle.block284 ], [ %i.qe, %.lr.ph.i57 ]
  %i.pr = icmp sgt i32 %i.pb, 32
  br i1 %i.pr, label %.lr.ph.i.i83.preheader, label %bb.bw

.lr.ph.i.i83.preheader:                           ; preds = %._crit_edge.i62
  br i1 %min.iters.check223, label %.lr.ph.i.i83.preheader333, label %vector.body226

vector.body226:                                   ; preds = %.lr.ph.i.i83.preheader, %vector.body226
  %index227 = phi i64 [ %index.next230, %vector.body226 ], [ 0, %.lr.ph.i.i83.preheader ] ; 3 uses
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index227 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  %wide.load228 = load <2 x i64>, ptr %i.ps, align 8, !tbaa !77
  %wide.load229 = load <2 x i64>, ptr %i.pt, align 8, !tbaa !77
  %i.pu = trunc <2 x i64> %wide.load228 to <2 x i32>
  %i.pv = trunc <2 x i64> %wide.load229 to <2 x i32>
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %index227 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  store <2 x i32> %i.pu, ptr %i.pw, align 4, !tbaa !47
  store <2 x i32> %i.pv, ptr %i.px, align 4, !tbaa !47
  %index.next230 = add nuw i64 %index227, 4       ; 2 uses
  %i.py = icmp eq i64 %index.next230, %n.vec225
  br i1 %i.py, label %middle.block231, label %vector.body226, !llvm.loop !186

middle.block231:                                  ; preds = %vector.body226
  br i1 %cmp.n232, label %.preheader42.i.i87, label %.lr.ph.i.i83.preheader333

.lr.ph.i.i83.preheader333:                        ; preds = %.lr.ph.i.i83.preheader, %middle.block231
  %indvars.iv.i.i84.ph = phi i64 [ 0, %.lr.ph.i.i83.preheader ], [ %n.vec225, %middle.block231 ]
  br label %.lr.ph.i.i83

.lr.ph.i57:                                       ; preds = %.lr.ph.i57.preheader, %.lr.ph.i57
  %indvars.iv.i58 = phi i64 [ %indvars.iv.next.i60, %.lr.ph.i57 ], [ %indvars.iv.i58.ph, %.lr.ph.i57.preheader ] ; 2 uses
  %.04992.i59 = phi i64 [ %i.qe, %.lr.ph.i57 ], [ %.04992.i59.ph, %.lr.ph.i57.preheader ]
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i58
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !47
  %i.qb = sext i32 %i.qa to i64
  %i.qc = shl i64 %i.qb, %i.pe
  %i.qd = call i64 @llvm.abs.i64(i64 %i.qc, i1 true)
  %i.qe = add i64 %i.qd, %.04992.i59              ; 2 uses
  %indvars.iv.next.i60 = add nuw nsw i64 %indvars.iv.i58, 1 ; 2 uses
  %exitcond.not.i61 = icmp eq i64 %indvars.iv.next.i60, %i.nx
  br i1 %exitcond.not.i61, label %._crit_edge.i62, label %.lr.ph.i57, !llvm.loop !187

.preheader42.i.i87:                               ; preds = %.lr.ph.i.i83, %middle.block231
  %i.qf = zext nneg i32 %i.pc to i64
  br i1 %i.oh, label %.preheader.us.i.i90, label %.loopexit

.preheader.us.i.i90:                              ; preds = %.preheader42.i.i87, %bb.bv
  %indvar = phi i35 [ %indvar.next, %bb.bv ], [ 0, %.preheader42.i.i87 ] ; 2 uses
  %indvars.iv65.i.i91 = phi i64 [ %indvars.iv.next66.i.i99, %bb.bv ], [ %i.nx, %.preheader42.i.i87 ] ; 7 uses
  br i1 %min.iters.check204, label %scalar.ph203.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.us.i.i90
  %i.qg = add i35 %indvar, %i.oj
  %i.qh = shl i35 %i.qg, 3
  %i.qi = add i35 %i.qh, -8                       ; 2 uses
  %i.qj = sub i35 %i.qi, %mul.result
  %i.qk = icmp sgt i35 %i.qj, %i.qi
  %i.ql = or i1 %i.qk, %mul.overflow
  br i1 %i.ql, label %scalar.ph203.preheader, label %vector.body207

vector.body207:                                   ; preds = %vector.scevcheck, %vector.body207
  %index208 = phi i64 [ %index.next216, %vector.body207 ], [ 0, %vector.scevcheck ] ; 3 uses
  %vec.phi209 = phi <2 x i64> [ %i.qz, %vector.body207 ], [ zeroinitializer, %vector.scevcheck ]
  %vec.phi210 = phi <2 x i64> [ %i.ra, %vector.body207 ], [ zeroinitializer, %vector.scevcheck ]
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index208 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %wide.load211 = load <2 x i32>, ptr %i.qm, align 16, !tbaa !47
  %wide.load212 = load <2 x i32>, ptr %i.qn, align 8, !tbaa !47
  %i.qo = sext <2 x i32> %wide.load211 to <2 x i64>
  %i.qp = sext <2 x i32> %wide.load212 to <2 x i64>
  %i.qq = xor i64 %index208, -1
end_hunk_1
begin_hunk_2_@encode_frame:bb.a
  %i.tp = getelementptr inbounds i8, ptr %i.bg, i64 %i.to ; 2 uses
  %i.tq = getelementptr inbounds i8, ptr %i.tp, i64 -4
  %i.tr = getelementptr inbounds i8, ptr %i.tp, i64 -12
  %wide.load250 = load <2 x i32>, ptr %i.tq, align 4, !tbaa !47
  %wide.load251 = load <2 x i32>, ptr %i.tr, align 4, !tbaa !47
  %reverse252 = shufflevector <2 x i32> %wide.load250, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %reverse253 = shufflevector <2 x i32> %wide.load251, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.ts = sext <2 x i32> %reverse252 to <2 x i64>
  %i.tt = sext <2 x i32> %reverse253 to <2 x i64>
  %i.tu = mul nsw <2 x i64> %i.ts, %i.tj
  %i.tv = mul nsw <2 x i64> %i.tt, %i.tk
  %i.tw = add <2 x i64> %i.tu, %vec.phi246        ; 2 uses
  %i.tx = add <2 x i64> %i.tv, %vec.phi247        ; 2 uses
  %index.next254 = add nuw i64 %index245, 4       ; 2 uses
  %i.ty = icmp eq i64 %index.next254, %n.vec243
  br i1 %i.ty, label %middle.block255, label %vector.body244, !llvm.loop !192

middle.block255:                                  ; preds = %vector.body244
  %bin.rdx256 = add <2 x i64> %i.tx, %i.tw
  %i.tz = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx256) ; 2 uses
  br i1 %cmp.n257, label %._crit_edge.us.i79.i78, label %scalar.ph240.preheader

scalar.ph240.preheader:                           ; preds = %vector.scevcheck234, %.preheader.us.i72.i71, %middle.block255
  %indvars.iv60.i74.i73.ph = phi i64 [ 0, %vector.scevcheck234 ], [ 0, %.preheader.us.i72.i71 ], [ %n.vec243, %middle.block255 ] ; 5 uses
  %.03344.us.i75.i74.ph = phi i64 [ 0, %vector.scevcheck234 ], [ 0, %.preheader.us.i72.i71 ], [ %i.tz, %middle.block255 ] ; 2 uses
  br i1 %lcmp.mod.not, label %scalar.ph240.prol.loopexit, label %scalar.ph240.prol

scalar.ph240.prol:                                ; preds = %scalar.ph240.preheader
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv60.i74.i73.ph
  %i.ub = load i32, ptr %i.ua, align 16, !tbaa !47
  %i.uc = sext i32 %i.ub to i64
  %i.ud = xor i64 %indvars.iv60.i74.i73.ph, -1
  %i.ue = add nsw i64 %indvars.iv65.i73.i72, %i.ud
  %sext.i76.i75.prol = shl i64 %i.ue, 32
  %i.uf = ashr exact i64 %sext.i76.i75.prol, 30
  %i.ug = getelementptr inbounds i8, ptr %i.bg, i64 %i.uf
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !47
  %i.ui = sext i32 %i.uh to i64
  %i.uj = mul nsw i64 %i.ui, %i.uc
  %i.uk = add nsw i64 %i.uj, %.03344.us.i75.i74.ph ; 2 uses
  %indvars.iv.next61.i77.i76.prol = or disjoint i64 %indvars.iv60.i74.i73.ph, 1
  br label %scalar.ph240.prol.loopexit

scalar.ph240.prol.loopexit:                       ; preds = %scalar.ph240.prol, %scalar.ph240.preheader
  %.lcssa353.unr = phi i64 [ poison, %scalar.ph240.preheader ], [ %i.uk, %scalar.ph240.prol ]
  %indvars.iv60.i74.i73.unr = phi i64 [ %indvars.iv60.i74.i73.ph, %scalar.ph240.preheader ], [ %indvars.iv.next61.i77.i76.prol, %scalar.ph240.prol ]
  %.03344.us.i75.i74.unr = phi i64 [ %.03344.us.i75.i74.ph, %scalar.ph240.preheader ], [ %i.uk, %scalar.ph240.prol ]
  %i.ul = icmp eq i64 %indvars.iv60.i74.i73.ph, %i.om
  br i1 %i.ul, label %._crit_edge.us.i79.i78, label %scalar.ph240

scalar.ph240:                                     ; preds = %scalar.ph240.prol.loopexit, %scalar.ph240
  %indvars.iv60.i74.i73 = phi i64 [ %indvars.iv.next61.i77.i76.1, %scalar.ph240 ], [ %indvars.iv60.i74.i73.unr, %scalar.ph240.prol.loopexit ] ; 5 uses
  %.03344.us.i75.i74 = phi i64 [ %i.vh, %scalar.ph240 ], [ %.03344.us.i75.i74.unr, %scalar.ph240.prol.loopexit ]
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv60.i74.i73
  %i.un = load i32, ptr %i.um, align 4, !tbaa !47
  %i.uo = sext i32 %i.un to i64
  %i.up = xor i64 %indvars.iv60.i74.i73, -1
  %i.uq = add nsw i64 %indvars.iv65.i73.i72, %i.up
  %sext.i76.i75 = shl i64 %i.uq, 32
  %i.ur = ashr exact i64 %sext.i76.i75, 30
  %i.us = getelementptr inbounds i8, ptr %i.bg, i64 %i.ur
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !47
  %i.uu = sext i32 %i.ut to i64
  %i.uv = mul nsw i64 %i.uu, %i.uo
  %i.uw = add nsw i64 %i.uv, %.03344.us.i75.i74
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv60.i74.i73
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 4
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !47
  %i.va = sext i32 %i.uz to i64
  %reass.sub364 = sub i64 %indvars.iv65.i73.i72, %indvars.iv60.i74.i73
  %i.vb = shl i64 %reass.sub364, 32
  %sext.i76.i75.1 = add i64 %i.vb, -8589934592
  %i.vc = ashr exact i64 %sext.i76.i75.1, 30
  %i.vd = getelementptr inbounds i8, ptr %i.bg, i64 %i.vc
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !47
  %i.vf = sext i32 %i.ve to i64
  %i.vg = mul nsw i64 %i.vf, %i.va
  %i.vh = add nsw i64 %i.vg, %i.uw                ; 2 uses
  %indvars.iv.next61.i77.i76.1 = add nuw nsw i64 %indvars.iv60.i74.i73, 2 ; 2 uses
  %exitcond64.not.i78.i77.1 = icmp eq i64 %indvars.iv.next61.i77.i76.1, %i.nx
  br i1 %exitcond64.not.i78.i77.1, label %._crit_edge.us.i79.i78, label %scalar.ph240, !llvm.loop !193

bb.bx:                                            ; preds = %._crit_edge.us.i79.i78
  %i.vi = trunc nsw i64 %i.vo to i32
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv65.i73.i72
  store i32 %i.vi, ptr %i.vj, align 4, !tbaa !47
  %indvars.iv.next66.i81.i80 = add nuw nsw i64 %indvars.iv65.i73.i72, 1 ; 2 uses
  %exitcond69.not.i82.i81 = icmp eq i64 %indvars.iv.next66.i81.i80, %wide.trip.count68.i70.i70
  %indvar.next236 = add i34 %indvar235, 1
  br i1 %exitcond69.not.i82.i81, label %.loopexit, label %.preheader.us.i72.i71, !llvm.loop !1

._crit_edge.us.i79.i78:                           ; preds = %scalar.ph240.prol.loopexit, %scalar.ph240, %middle.block255
  %.lcssa194 = phi i64 [ %i.tz, %middle.block255 ], [ %.lcssa353.unr, %scalar.ph240.prol.loopexit ], [ %i.vh, %scalar.ph240 ]
  %i.vk = ashr i64 %.lcssa194, %i.su
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv65.i73.i72
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !47
  %i.vn = sext i32 %i.vm to i64
  %i.vo = sub nsw i64 %i.vn, %i.vk                ; 2 uses
  %i.vp = add i64 %i.vo, 2147483647
  %or.cond.us.i80.i79 = icmp ult i64 %i.vp, 4294967295
  br i1 %or.cond.us.i80.i79, label %bb.bx, label %lpc_encode_choose_datapath.exit101

.lr.ph.i64.i64:                                   ; preds = %.lr.ph.i64.i64.preheader336, %.lr.ph.i64.i64
  %indvars.iv.i65.i65 = phi i64 [ %indvars.iv.next.i66.i66, %.lr.ph.i64.i64 ], [ %indvars.iv.i65.i65.ph, %.lr.ph.i64.i64.preheader336 ] ; 3 uses
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i65.i65
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !47
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i65.i65
  store i32 %i.vr, ptr %i.vs, align 4, !tbaa !47
  %indvars.iv.next.i66.i66 = add nuw nsw i64 %indvars.iv.i65.i65, 1 ; 2 uses
  %exitcond.not.i67.i67 = icmp eq i64 %indvars.iv.next.i66.i66, %i.nx
  br i1 %exitcond.not.i67.i67, label %.preheader42.i68.i68, label %.lr.ph.i64.i64, !llvm.loop !194

lpc_encode_with_residual_limit_33bps.exit.sink.split.i32: ; preds = %bb.bw
  %i.vt = load i32, ptr %i.ba, align 8, !tbaa !81
  %i.vu = load i8, ptr %i.og, align 1, !tbaa !64
  %i.vv = zext i8 %i.vu to i32
  %i.vw = add nsw i32 %i.pb, %.1.i.i38
  %i.vx = add i32 %i.vw, %i.vt
  %i.vy = add i32 %i.vx, %i.vv
  %i.vz = icmp slt i32 %i.vy, 33
  %..i39 = select i1 %i.vz, i64 7387800, i64 7387808
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 %..i39
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !84
  call void %i.wb(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bg, i32 noundef range(i32 5, -2147483648) %i.bh, i32 noundef %i.nh, ptr noundef nonnull %i.g, i32 noundef %i.pc) #13, !inline_history !202
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bx, %bb.bv, %.preheader42.i.i87, %.preheader42.i68.i68, %lpc_encode_with_residual_limit_33bps.exit.sink.split.i32
  %i.wc = call fastcc i64 @find_subframe_rice_params(ptr noundef nonnull %0, ptr noundef nonnull %i.be, i32 noundef %i.nh) ; 2 uses
  %i.wd = icmp slt i64 %i.wc, %.1319568.us.us.i
  br i1 %i.wd, label %bb.by, label %lpc_encode_choose_datapath.exit101

bb.by:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.od, ptr noundef nonnull align 16 dereferenceable(128) %i.g, i64 128, i1 false)
  br label %lpc_encode_choose_datapath.exit101

lpc_encode_choose_datapath.exit101:               ; preds = %._crit_edge.us.i79.i78, %._crit_edge.us.i.i97, %bb.by, %.loopexit, %._crit_edge564.us.us.i
  %.2322.us.us.i = phi i32 [ %.0320567.us.us.i, %.loopexit ], [ %.0320567.us.us.i, %._crit_edge564.us.us.i ], [ 1, %bb.by ], [ %.0320567.us.us.i, %._crit_edge.us.i.i97 ], [ %.0320567.us.us.i, %._crit_edge.us.i79.i78 ] ; 2 uses
  %.3.us.us.i = phi i64 [ %.1319568.us.us.i, %.loopexit ], [ %.1319568.us.us.i, %._crit_edge564.us.us.i ], [ %i.wc, %bb.by ], [ %.1319568.us.us.i, %._crit_edge.us.i.i97 ], [ %.1319568.us.us.i, %._crit_edge.us.i79.i78 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  %i.we = add nuw i32 %.0323566.us.us.i, 1        ; 2 uses
  %exitcond620.not.i = icmp eq i32 %i.we, %.lcssa191
  br i1 %exitcond620.not.i, label %.split570.us.us.i, label %.lr.ph563.us.us.i.backedge

.lr.ph563.us.us.i.backedge:                       ; preds = %lpc_encode_choose_datapath.exit101, %.split570.us.us.i
  %.0320567.us.us.i.be = phi i32 [ %.2322.us.us.i, %lpc_encode_choose_datapath.exit101 ], [ 0, %.split570.us.us.i ]
  %.0323566.us.us.i.be = phi i32 [ %i.we, %lpc_encode_choose_datapath.exit101 ], [ 0, %.split570.us.us.i ]
  br label %.lr.ph563.us.us.i, !llvm.loop !195

.split570.us.us.i:                                ; preds = %lpc_encode_choose_datapath.exit101
  %.not363.us.i = icmp eq i32 %.2322.us.us.i, 0
  br i1 %.not363.us.i, label %.loopexit.i16, label %.lr.ph563.us.us.i.backedge

.lr.ph557.i:                                      ; preds = %.lr.ph557.i.preheader339, %.lr.ph557.i
  %.0324555.i = phi i32 [ %i.wg, %.lr.ph557.i ], [ %.0324555.i.ph, %.lr.ph557.i.preheader339 ]
  %.0326554.i = phi i32 [ %i.wf, %.lr.ph557.i ], [ %.0326554.i.ph, %.lr.ph557.i.preheader339 ]
  %i.wf = mul nuw nsw i32 %.0326554.i, 3          ; 2 uses
  %i.wg = add nuw nsw i32 %.0324555.i, 1          ; 2 uses
  %exitcond613.not.i = icmp eq i32 %i.wg, %i.nh
  br i1 %exitcond613.not.i, label %.split.us.us.preheader.i, label %.lr.ph557.i, !llvm.loop !196

.split.i:                                         ; preds = %lpc_encode_choose_datapath.exit, %.split.preheader.i
  %.0318.i = phi i64 [ %i.xd, %lpc_encode_choose_datapath.exit ], [ 9223372036854775807, %.split.preheader.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  %i.wh = load i32, ptr %i.bi, align 8, !tbaa !71 ; 3 uses
  %i.wi = load i32, ptr %i.ns, align 4, !tbaa !47
  %i.wj = icmp sgt i32 %i.wh, 32
  br i1 %i.wj, label %.preheader.i.i, label %.thread109.i

.preheader.i.i:                                   ; preds = %.split.i, %bb.bz
  %indvars.iv55.i.i = phi i64 [ %indvars.iv.next56.i.i, %bb.bz ], [ %i.np, %.split.i ] ; 3 uses
  %i.wk = getelementptr inbounds [8 x i8], ptr %i.at, i64 %indvars.iv55.i.i
  %i.wl = load i64, ptr %i.wk, align 8, !tbaa !77 ; 2 uses
  %i.wm = add i64 %i.wl, 2147483647
  %or.cond.i.i = icmp ult i64 %i.wm, 4294967295
  br i1 %or.cond.i.i, label %bb.bz, label %.loopexit.i16.loopexit128

bb.bz:                                            ; preds = %.preheader.i.i
  %i.wn = trunc nsw i64 %i.wl to i32
  %i.wo = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %indvars.iv55.i.i
  store i32 %i.wn, ptr %i.wo, align 4, !tbaa !47
  %indvars.iv.next56.i.i = add nsw i64 %indvars.iv55.i.i, 1 ; 2 uses
  %exitcond59.not.i.i = icmp eq i64 %indvars.iv.next56.i.i, %wide.trip.count58.i56.i
  br i1 %exitcond59.not.i.i, label %.loopexit108, label %.preheader.i.i, !llvm.loop !0

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
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next56.i60.i to i32
  %exitcond59.not.i61.i = icmp eq i32 %i.bh, %lftr.wideiv.i.i
  br i1 %exitcond59.not.i61.i, label %.loopexit108, label %.preheader.i57.i, !llvm.loop !1

lpc_encode_with_residual_limit_33bps.exit.sink.split.i: ; preds = %.thread109.i
  %i.wu = load i32, ptr %i.ba, align 8, !tbaa !81
  %i.wv = load i8, ptr %i.nw, align 1, !tbaa !64
  %i.ww = zext i8 %i.wv to i32
  %i.wx = add nuw nsw i32 %i.wh, %.1.i.i
  %i.wy = add i32 %i.wx, %i.wu
  %i.wz = add i32 %i.wy, %i.ww
  %i.xa = icmp slt i32 %i.wz, 33
  %..i = select i1 %i.xa, i64 7387800, i64 7387808
  %i.xb = getelementptr inbounds nuw i8, ptr %0, i64 %..i
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !84
  call void %i.xc(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bg, i32 noundef range(i32 5, -2147483648) %i.bh, i32 noundef %i.nh, ptr noundef nonnull %i.g, i32 noundef %i.wi) #13, !inline_history !202
  br label %.loopexit108

.loopexit108:                                     ; preds = %bb.ca, %bb.bz, %lpc_encode_with_residual_limit_33bps.exit.sink.split.i
  %i.xd = call fastcc i64 @find_subframe_rice_params(ptr noundef nonnull %0, ptr noundef nonnull %i.be, i32 noundef %i.nh) ; 2 uses
  %i.xe = icmp slt i64 %i.xd, %.0318.i
  br i1 %i.xe, label %lpc_encode_choose_datapath.exit, label %.loopexit.i16.loopexit128

lpc_encode_choose_datapath.exit:                  ; preds = %.loopexit108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.nt, ptr noundef nonnull align 16 dereferenceable(128) %i.g, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  br label %.split.i, !llvm.loop !195

.loopexit.i16.loopexit128:                        ; preds = %.loopexit108, %.preheader.i57.i, %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  br label %.loopexit.i16

.loopexit.i16:                                    ; preds = %.split570.us.us.i, %.loopexit.i16.loopexit128, %..loopexit_crit_edge.i
  %.pre-phi630.i = phi i64 [ %.pre629.i, %..loopexit_crit_edge.i ], [ %i.np, %.loopexit.i16.loopexit128 ], [ %i.nx, %.split570.us.us.i ] ; 3 uses
  %.pre-phi.i = phi i32 [ %.pre628.i, %..loopexit_crit_edge.i ], [ %i.nq, %.loopexit.i16.loopexit128 ], [ %i.oa, %.split570.us.us.i ]
  %i.xf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 3 uses
  store i32 %i.nh, ptr %i.xf, align 8, !tbaa !80
  %i.xg = load i32, ptr %i.be, align 8, !tbaa !79
  %i.xh = or i32 %i.xg, %.pre-phi.i
  %i.xi = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  store i32 %i.xh, ptr %i.xi, align 4, !tbaa !78
  %i.xj = getelementptr [4 x i8], ptr %i.b, i64 %.pre-phi630.i
  %i.xk = getelementptr i8, ptr %i.xj, i64 -4
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !47 ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.be, i64 148 ; 2 uses
  store i32 %i.xl, ptr %i.xm, align 4, !tbaa !82
  %i.xn = icmp sgt i32 %i.nh, 0
  br i1 %i.xn, label %.lr.ph574.i, label %._crit_edge575.i

.lr.ph574.i:                                      ; preds = %.loopexit.i16
  %i.xo = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %i.xp = getelementptr [128 x i8], ptr %i.a, i64 %.pre-phi630.i
  %i.xq = getelementptr i8, ptr %i.xp, i64 -128
  %smax = call i64 @llvm.smax.i64(i64 %.pre-phi630.i, i64 1)
  %i.xr = shl nuw nsw i64 %smax, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.xo, ptr noundef nonnull align 16 dereferenceable(1) %i.xq, i64 %i.xr, i1 false), !tbaa !47
  %.pre626.i = load i32, ptr %i.xm, align 4, !tbaa !82
  br label %._crit_edge575.i

._crit_edge575.i:                                 ; preds = %.lr.ph574.i, %.loopexit.i16
  %i.xs = phi i32 [ %.pre626.i, %.lr.ph574.i ], [ %i.xl, %.loopexit.i16 ]
  %i.xt = load i32, ptr %i.bi, align 8, !tbaa !71
  %i.xu = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %i.xv = call fastcc i32 @lpc_encode_choose_datapath(ptr noundef nonnull %0, i32 noundef %i.xt, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.at, i32 noundef %i.bh, i32 noundef %i.nh, ptr noundef nonnull %i.xu, i32 noundef %i.xs)
  %.not364.i = icmp eq i32 %i.xv, 0
  br i1 %.not364.i, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %._crit_edge575.i
  store i32 1, ptr %i.xi, align 4, !tbaa !78
  store i32 1, ptr %i.be, align 8, !tbaa !79
  %i.xw = load i32, ptr %i.bi, align 8, !tbaa !71 ; 2 uses
  %i.xx = icmp slt i32 %i.xw, 33
  br i1 %i.xx, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.xy = zext nneg i32 %i.bh to i64
  %i.xz = shl nuw nsw i64 %i.xy, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bf, ptr nonnull align 8 %i.bg, i64 %i.xz, i1 false)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.ya = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !70
  %i.yc = add i32 %i.yb, 8
  %i.yd = load i32, ptr %i.au, align 16, !tbaa !66
  %i.ye = mul nsw i32 %i.yd, %i.xw
  %i.yf = add i32 %i.yc, %i.ye
  br label %encode_residual_ch.exit

bb.ce:                                            ; preds = %._crit_edge575.i
  %i.yg = load i32, ptr %i.xf, align 8, !tbaa !80
  %i.yh = call fastcc i64 @find_subframe_rice_params(ptr noundef nonnull %0, ptr noundef nonnull %i.be, i32 noundef %i.yg) ; 0 uses
  %i.yi = load i32, ptr %i.xf, align 8, !tbaa !80 ; 3 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !70
  %i.yl = add i32 %i.yk, 8                        ; 3 uses
  %i.ym = load i32, ptr %i.be, align 8, !tbaa !79 ; 2 uses
  switch i32 %i.ym, label %bb.ch [
    i32 0, label %bb.cf
    i32 1, label %bb.cg
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.yn = load i32, ptr %i.bi, align 8, !tbaa !71
  %i.yo = add i32 %i.yn, %i.yl
  br label %encode_residual_ch.exit

bb.cg:                                            ; preds = %bb.ce
  %i.yp = load i32, ptr %i.au, align 16, !tbaa !66
  %i.yq = load i32, ptr %i.bi, align 8, !tbaa !71
  %i.yr = mul nsw i32 %i.yq, %i.yp
  %i.ys = add i32 %i.yr, %i.yl
  br label %encode_residual_ch.exit

bb.ch:                                            ; preds = %bb.ce
  %i.yt = load i32, ptr %i.bi, align 8, !tbaa !71
  %i.yu = mul nsw i32 %i.yt, %i.yi
  %i.yv = add i32 %i.yu, %i.yl                    ; 2 uses
  %i.yw = icmp eq i32 %i.ym, 32
  br i1 %i.yw, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.yx = load i32, ptr %i.ba, align 8, !tbaa !81
  %i.yy = mul nsw i32 %i.yx, %i.yi
  %i.yz = add i32 %i.yv, 9
  %i.za = add i32 %i.yz, %i.yy
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.1.i486.i = phi i32 [ %i.za, %bb.ci ], [ %i.yv, %bb.ch ]
  %i.zb = getelementptr inbounds nuw i8, ptr %i.be, i64 156
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !83 ; 3 uses
  %i.zd = load i32, ptr %i.au, align 16, !tbaa !66 ; 2 uses
  %i.ze = ashr i32 %i.zd, %i.zc                   ; 2 uses
  %i.zf = add i32 %.1.i486.i, 6                   ; 2 uses
  %.not.i487.i = icmp eq i32 %i.zc, 31
  br i1 %.not.i487.i, label %encode_residual_ch.exit, label %.lr.ph.i488.i

.lr.ph.i488.i:                                    ; preds = %bb.cj
  %i.zg = shl nuw nsw i32 1, %i.zc
  %i.zh = getelementptr inbounds nuw i8, ptr %i.be, i64 152
  %i.zi = getelementptr inbounds nuw i8, ptr %i.be, i64 160
  %i.zj = load i32, ptr %i.zh, align 8, !tbaa !72
  %wide.trip.count.i489.i = zext nneg i32 %i.zg to i64
  br label %bb.ck

bb.ck:                                            ; preds = %rice_count_exact.exit.i494.i, %.lr.ph.i488.i
  %indvars.iv.i490.i = phi i64 [ 0, %.lr.ph.i488.i ], [ %indvars.iv.next.i497.i, %rice_count_exact.exit.i494.i ] ; 2 uses
  %.255.i491.i = phi i32 [ %i.zf, %.lr.ph.i488.i ], [ %i.aaq, %rice_count_exact.exit.i494.i ]
  %.04554.i492.i = phi i32 [ %i.ze, %.lr.ph.i488.i ], [ %..i496.i, %rice_count_exact.exit.i494.i ] ; 3 uses
  %.04653.i493.i = phi i32 [ %i.yi, %.lr.ph.i488.i ], [ %.04554.i492.i, %rice_count_exact.exit.i494.i ] ; 2 uses
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %indvars.iv.i490.i
  %i.zl = load i32, ptr %i.zk, align 4, !tbaa !47 ; 3 uses
  %i.zm = add i32 %.255.i491.i, %i.zj
  %i.zn = sext i32 %.04653.i493.i to i64
  %i.zo = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.zn ; 2 uses
  %i.zp = sub nsw i32 %.04554.i492.i, %.04653.i493.i ; 3 uses
  %i.zq = icmp sgt i32 %i.zp, 0
  br i1 %i.zq, label %.lr.ph.i.i499.i, label %rice_count_exact.exit.i494.i

.lr.ph.i.i499.i:                                  ; preds = %bb.ck
  %i.zr = add i32 %i.zl, 1                        ; 2 uses
  %wide.trip.count.i.i500.i = zext nneg i32 %i.zp to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.zp, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i499.i
  %n.vec = and i64 %wide.trip.count.i.i500.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.zr, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert199 = insertelement <4 x i32> poison, i32 %i.zl, i64 0
  %broadcast.splat200 = shufflevector <4 x i32> %broadcast.splatinsert199, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aae, %vector.body ]
  %vec.phi201 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aaf, %vector.body ]
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.zo, i64 %index ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 16
  %wide.load = load <4 x i32>, ptr %i.zs, align 4, !tbaa !47 ; 2 uses
  %wide.load202 = load <4 x i32>, ptr %i.zt, align 4, !tbaa !47 ; 2 uses
  %i.zu = shl <4 x i32> %wide.load, splat (i32 1)
  %i.zv = shl <4 x i32> %wide.load202, splat (i32 1)
  %i.zw = ashr <4 x i32> %wide.load, splat (i32 31)
  %i.zx = ashr <4 x i32> %wide.load202, splat (i32 31)
  %i.zy = xor <4 x i32> %i.zu, %i.zw
  %i.zz = xor <4 x i32> %i.zv, %i.zx
  %i.aaa = lshr <4 x i32> %i.zy, %broadcast.splat200
  %i.aab = lshr <4 x i32> %i.zz, %broadcast.splat200
  %i.aac = add <4 x i32> %broadcast.splat, %vec.phi
  %i.aad = add <4 x i32> %broadcast.splat, %vec.phi201
  %i.aae = add <4 x i32> %i.aac, %i.aaa           ; 2 uses
  %i.aaf = add <4 x i32> %i.aad, %i.aab           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aag = icmp eq i64 %index.next, %n.vec
  br i1 %i.aag, label %middle.block, label %vector.body, !llvm.loop !197

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aaf, %i.aae
  %i.aah = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i500.i
end_hunk_2
begin_hunk_3_@lpc_encode_choose_datapath:bb.a
  %i.bh = add <2 x i64> %i.bf, %vec.phi186        ; 2 uses
  %i.bi = add <2 x i64> %i.bg, %vec.phi187        ; 2 uses
  %index.next194 = add nuw i64 %index185, 4       ; 2 uses
  %i.bj = icmp eq i64 %index.next194, %n.vec183
  br i1 %i.bj, label %middle.block195, label %vector.body184, !llvm.loop !256

middle.block195:                                  ; preds = %vector.body184
  %bin.rdx196 = add <2 x i64> %i.bi, %i.bh
  %i.bk = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx196) ; 2 uses
  br i1 %cmp.n197, label %._crit_edge.us.i, label %scalar.ph180.preheader

scalar.ph180.preheader:                           ; preds = %vector.scevcheck174, %.preheader.us.i, %middle.block195
  %indvars.iv60.i.ph = phi i64 [ 0, %vector.scevcheck174 ], [ 0, %.preheader.us.i ], [ %n.vec183, %middle.block195 ] ; 5 uses
  %.03344.us.i.ph = phi i64 [ 0, %vector.scevcheck174 ], [ 0, %.preheader.us.i ], [ %i.bk, %middle.block195 ] ; 2 uses
  br i1 %lcmp.mod220.not, label %scalar.ph180.prol.loopexit, label %scalar.ph180.prol

scalar.ph180.prol:                                ; preds = %scalar.ph180.preheader
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv60.i.ph
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !47
  %i.bn = sext i32 %i.bm to i64
  %i.bo = xor i64 %indvars.iv60.i.ph, -1
  %i.bp = add nsw i64 %indvars.iv65.i, %i.bo
  %sext.i.prol = shl i64 %i.bp, 32
  %i.bq = ashr exact i64 %sext.i.prol, 29
  %i.br = getelementptr inbounds i8, ptr %4, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !77
  %i.bt = mul nsw i64 %i.bs, %i.bn
  %i.bu = add nsw i64 %i.bt, %.03344.us.i.ph      ; 2 uses
  %indvars.iv.next61.i.prol = or disjoint i64 %indvars.iv60.i.ph, 1
  br label %scalar.ph180.prol.loopexit

scalar.ph180.prol.loopexit:                       ; preds = %scalar.ph180.prol, %scalar.ph180.preheader
  %.lcssa202.unr = phi i64 [ poison, %scalar.ph180.preheader ], [ %i.bu, %scalar.ph180.prol ]
  %indvars.iv60.i.unr = phi i64 [ %indvars.iv60.i.ph, %scalar.ph180.preheader ], [ %indvars.iv.next61.i.prol, %scalar.ph180.prol ]
  %.03344.us.i.unr = phi i64 [ %.03344.us.i.ph, %scalar.ph180.preheader ], [ %i.bu, %scalar.ph180.prol ]
  %i.bv = icmp eq i64 %indvars.iv60.i.ph, %i.am
  br i1 %i.bv, label %._crit_edge.us.i, label %scalar.ph180

scalar.ph180:                                     ; preds = %scalar.ph180.prol.loopexit, %scalar.ph180
  %indvars.iv60.i = phi i64 [ %indvars.iv.next61.i.1, %scalar.ph180 ], [ %indvars.iv60.i.unr, %scalar.ph180.prol.loopexit ] ; 5 uses
  %.03344.us.i = phi i64 [ %i.cp, %scalar.ph180 ], [ %.03344.us.i.unr, %scalar.ph180.prol.loopexit ]
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv60.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !47
  %i.by = sext i32 %i.bx to i64
  %i.bz = xor i64 %indvars.iv60.i, -1
  %i.ca = add nsw i64 %indvars.iv65.i, %i.bz
  %sext.i = shl i64 %i.ca, 32
  %i.cb = ashr exact i64 %sext.i, 29
  %i.cc = getelementptr inbounds i8, ptr %4, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !77
  %i.ce = mul nsw i64 %i.cd, %i.by
  %i.cf = add nsw i64 %i.ce, %.03344.us.i
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv60.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !47
  %i.cj = sext i32 %i.ci to i64
  %reass.sub222 = sub i64 %indvars.iv65.i, %indvars.iv60.i
  %i.ck = shl i64 %reass.sub222, 32
  %sext.i.1 = add i64 %i.ck, -8589934592
  %i.cl = ashr exact i64 %sext.i.1, 29
  %i.cm = getelementptr inbounds i8, ptr %4, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !77
  %i.co = mul nsw i64 %i.cn, %i.cj
  %i.cp = add nsw i64 %i.co, %i.cf                ; 2 uses
  %indvars.iv.next61.i.1 = add nuw nsw i64 %indvars.iv60.i, 2 ; 2 uses
  %exitcond64.not.i.1 = icmp eq i64 %indvars.iv.next61.i.1, %wide.trip.count.i
  br i1 %exitcond64.not.i.1, label %._crit_edge.us.i, label %scalar.ph180, !llvm.loop !257

bb.b:                                             ; preds = %._crit_edge.us.i
  %i.cq = trunc nsw i64 %i.cv to i32
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv65.i
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !47
  %indvars.iv.next66.i = add nuw nsw i64 %indvars.iv65.i, 1 ; 2 uses
  %exitcond69.not.i = icmp eq i64 %indvars.iv.next66.i, %wide.trip.count68.i
  %indvar.next176 = add i35 %indvar175, 1
  br i1 %exitcond69.not.i, label %lpc_encode_with_residual_limit_33bps.exit, label %.preheader.us.i, !llvm.loop !0

._crit_edge.us.i:                                 ; preds = %scalar.ph180.prol.loopexit, %scalar.ph180, %middle.block195
  %.lcssa = phi i64 [ %i.bk, %middle.block195 ], [ %.lcssa202.unr, %scalar.ph180.prol.loopexit ], [ %i.cp, %scalar.ph180 ]
  %i.cs = ashr i64 %.lcssa, %i.ah
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv65.i
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !77
  %i.cv = sub nsw i64 %i.cu, %i.cs                ; 2 uses
  %i.cw = add i64 %i.cv, 2147483647
  %or.cond.us.i = icmp ult i64 %i.cw, 4294967295
  br i1 %or.cond.us.i, label %bb.b, label %lpc_encode_with_residual_limit_33bps.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !77
  %i.cz = trunc i64 %i.cy to i32
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !47
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader42.i, label %.lr.ph.i, !llvm.loop !258

.preheader.i:                                     ; preds = %bb.c, %.preheader.preheader.i
  %indvars.iv55.i = phi i64 [ %i.an, %.preheader.preheader.i ], [ %indvars.iv.next56.i, %bb.c ] ; 3 uses
  %i.db = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv55.i
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !77 ; 2 uses
  %i.dd = add i64 %i.dc, 2147483647
  %or.cond.i = icmp ult i64 %i.dd, 4294967295
  br i1 %or.cond.i, label %bb.c, label %lpc_encode_with_residual_limit_33bps.exit

bb.c:                                             ; preds = %.preheader.i
  %i.de = trunc nsw i64 %i.dc to i32
  %i.df = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv55.i
  store i32 %i.de, ptr %i.df, align 4, !tbaa !47
  %indvars.iv.next56.i = add nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %exitcond59.not.i = icmp eq i64 %indvars.iv.next56.i, %wide.trip.count58.i
  br i1 %exitcond59.not.i, label %lpc_encode_with_residual_limit_33bps.exit, label %.preheader.i, !llvm.loop !0

bb.d:                                             ; preds = %._crit_edge
  %i.dg = zext nneg i32 %8 to i64                 ; 2 uses
  %i.dh = lshr i64 %.lcssa128, %i.dg
  %i.di = add i64 %i.dh, %i.e
  %i.dj = icmp ugt i64 %i.di, 2147483647
  br i1 %i.dj, label %.lr.ph.preheader.i62, label %lpc_encode_with_residual_limit_33bps.exit.sink.split

.thread109:                                       ; preds = %._crit_edge.thread
  %i.dk = icmp ugt i32 %i.c, 30
  br i1 %i.dk, label %.preheader.preheader.i55, label %lpc_encode_with_residual_limit_33bps.exit.sink.split

.lr.ph.preheader.i62:                             ; preds = %bb.d
  %wide.trip.count.i63 = zext nneg i32 %6 to i64  ; 7 uses
  %min.iters.check132 = icmp ult i32 %6, 8
  %i.dl = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.dl, -32
  %or.cond = or i1 %min.iters.check132, %diff.check
  br i1 %or.cond, label %.lr.ph.i64.preheader, label %vector.ph133

vector.ph133:                                     ; preds = %.lr.ph.preheader.i62
  %n.vec134 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph133
  %index136 = phi i64 [ 0, %vector.ph133 ], [ %index.next139, %vector.body135 ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index136 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %wide.load137 = load <4 x i32>, ptr %i.dm, align 4, !tbaa !47
  %wide.load138 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !47
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index136 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store <4 x i32> %wide.load137, ptr %i.do, align 4, !tbaa !47
  store <4 x i32> %wide.load138, ptr %i.dp, align 4, !tbaa !47
  %index.next139 = add nuw i64 %index136, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next139, %n.vec134
  br i1 %i.dq, label %middle.block140, label %vector.body135, !llvm.loop !259

middle.block140:                                  ; preds = %vector.body135
  %cmp.n141 = icmp eq i64 %n.vec134, %wide.trip.count
  br i1 %cmp.n141, label %.preheader42.i68, label %.lr.ph.i64.preheader

.lr.ph.i64.preheader:                             ; preds = %.lr.ph.preheader.i62, %middle.block140
  %indvars.iv.i65.ph = phi i64 [ 0, %.lr.ph.preheader.i62 ], [ %n.vec134, %middle.block140 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i63, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i64.prol.loopexit, label %.lr.ph.i64.prol

.lr.ph.i64.prol:                                  ; preds = %.lr.ph.i64.preheader, %.lr.ph.i64.prol
  %indvars.iv.i65.prol = phi i64 [ %indvars.iv.next.i66.prol, %.lr.ph.i64.prol ], [ %indvars.iv.i65.ph, %.lr.ph.i64.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i64.prol ], [ 0, %.lr.ph.i64.preheader ]
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i65.prol
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !47
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i65.prol
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !47
  %indvars.iv.next.i66.prol = add nuw nsw i64 %indvars.iv.i65.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i64.prol.loopexit, label %.lr.ph.i64.prol, !llvm.loop !260

.lr.ph.i64.prol.loopexit:                         ; preds = %.lr.ph.i64.prol, %.lr.ph.i64.preheader
  %indvars.iv.i65.unr = phi i64 [ %indvars.iv.i65.ph, %.lr.ph.i64.preheader ], [ %indvars.iv.next.i66.prol, %.lr.ph.i64.prol ]
  %i.du = sub nsw i64 %indvars.iv.i65.ph, %wide.trip.count.i63
  %i.dv = icmp ugt i64 %i.du, -4
  br i1 %i.dv, label %.preheader42.i68, label %.lr.ph.i64

.preheader42.i68:                                 ; preds = %.lr.ph.i64.prol.loopexit, %.lr.ph.i64, %middle.block140
  %i.dw = icmp samesign ult i32 %6, %5
  br i1 %i.dw, label %.preheader.lr.ph.i69, label %lpc_encode_with_residual_limit_33bps.exit

.preheader.lr.ph.i69:                             ; preds = %.preheader42.i68
  %wide.trip.count68.i70 = zext nneg i32 %5 to i64
  %i.dx = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.dy = zext nneg i32 %6 to i34
  %min.iters.check144 = icmp ult i32 %6, 28
  %i.dz = trunc nsw i64 %i.dx to i34
  %mul.result = shl nsw i34 %i.dz, 2
  %mul.overflow = icmp ugt i64 %i.dx, 4294967295
  %n.vec146 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n159 = icmp eq i64 %n.vec146, %wide.trip.count
  %xtraiter216 = and i64 %wide.trip.count.i63, 1
  %lcmp.mod217.not = icmp eq i64 %xtraiter216, 0
  %i.ea = add nsw i64 %wide.trip.count.i63, -1
  br label %.preheader.us.i72

.preheader.preheader.i55:                         ; preds = %.thread109
  %i.eb = sext i32 %6 to i64
  br label %.preheader.i57

.preheader.us.i72:                                ; preds = %bb.e, %.preheader.lr.ph.i69
  %indvar = phi i34 [ %indvar.next, %bb.e ], [ 0, %.preheader.lr.ph.i69 ] ; 2 uses
  %indvars.iv65.i73 = phi i64 [ %indvars.iv.next66.i81, %bb.e ], [ %wide.trip.count.i63, %.preheader.lr.ph.i69 ] ; 7 uses
  br i1 %min.iters.check144, label %scalar.ph143.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.us.i72
  %i.ec = add i34 %indvar, %i.dy
  %i.ed = shl i34 %i.ec, 2
  %i.ee = add i34 %i.ed, -4                       ; 2 uses
  %i.ef = sub i34 %i.ee, %mul.result
  %i.eg = icmp sgt i34 %i.ef, %i.ee
  %i.eh = or i1 %i.eg, %mul.overflow
  br i1 %i.eh, label %scalar.ph143.preheader, label %vector.body147

vector.body147:                                   ; preds = %vector.scevcheck, %vector.body147
  %index148 = phi i64 [ %index.next156, %vector.body147 ], [ 0, %vector.scevcheck ] ; 3 uses
  %vec.phi149 = phi <2 x i64> [ %i.ex, %vector.body147 ], [ zeroinitializer, %vector.scevcheck ]
  %vec.phi150 = phi <2 x i64> [ %i.ey, %vector.body147 ], [ zeroinitializer, %vector.scevcheck ]
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %index148 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %wide.load151 = load <2 x i32>, ptr %i.ei, align 4, !tbaa !47
  %wide.load152 = load <2 x i32>, ptr %i.ej, align 4, !tbaa !47
  %i.ek = sext <2 x i32> %wide.load151 to <2 x i64>
  %i.el = sext <2 x i32> %wide.load152 to <2 x i64>
  %i.em = xor i64 %index148, -1
  %i.en = add nsw i64 %indvars.iv65.i73, %i.em
  %i.eo = shl i64 %i.en, 32
  %i.ep = ashr exact i64 %i.eo, 30
  %i.eq = getelementptr inbounds i8, ptr %3, i64 %i.ep ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -4
  %i.es = getelementptr inbounds i8, ptr %i.eq, i64 -12
  %wide.load153 = load <2 x i32>, ptr %i.er, align 4, !tbaa !47
  %wide.load154 = load <2 x i32>, ptr %i.es, align 4, !tbaa !47
  %reverse = shufflevector <2 x i32> %wide.load153, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %reverse155 = shufflevector <2 x i32> %wide.load154, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.et = sext <2 x i32> %reverse to <2 x i64>
  %i.eu = sext <2 x i32> %reverse155 to <2 x i64>
  %i.ev = mul nsw <2 x i64> %i.et, %i.ek
  %i.ew = mul nsw <2 x i64> %i.eu, %i.el
  %i.ex = add <2 x i64> %i.ev, %vec.phi149        ; 2 uses
  %i.ey = add <2 x i64> %i.ew, %vec.phi150        ; 2 uses
  %index.next156 = add nuw i64 %index148, 4       ; 2 uses
  %i.ez = icmp eq i64 %index.next156, %n.vec146
  br i1 %i.ez, label %middle.block157, label %vector.body147, !llvm.loop !261

middle.block157:                                  ; preds = %vector.body147
  %bin.rdx158 = add <2 x i64> %i.ey, %i.ex
  %i.fa = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx158) ; 2 uses
  br i1 %cmp.n159, label %._crit_edge.us.i79, label %scalar.ph143.preheader

scalar.ph143.preheader:                           ; preds = %vector.scevcheck, %.preheader.us.i72, %middle.block157
  %indvars.iv60.i74.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader.us.i72 ], [ %n.vec146, %middle.block157 ] ; 5 uses
  %.03344.us.i75.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader.us.i72 ], [ %i.fa, %middle.block157 ] ; 2 uses
  br i1 %lcmp.mod217.not, label %scalar.ph143.prol.loopexit, label %scalar.ph143.prol

scalar.ph143.prol:                                ; preds = %scalar.ph143.preheader
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv60.i74.ph
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !47
  %i.fd = sext i32 %i.fc to i64
  %i.fe = xor i64 %indvars.iv60.i74.ph, -1
  %i.ff = add nsw i64 %indvars.iv65.i73, %i.fe
  %sext.i76.prol = shl i64 %i.ff, 32
  %i.fg = ashr exact i64 %sext.i76.prol, 30
  %i.fh = getelementptr inbounds i8, ptr %3, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !47
  %i.fj = sext i32 %i.fi to i64
  %i.fk = mul nsw i64 %i.fj, %i.fd
  %i.fl = add nsw i64 %i.fk, %.03344.us.i75.ph    ; 2 uses
  %indvars.iv.next61.i77.prol = or disjoint i64 %indvars.iv60.i74.ph, 1
  br label %scalar.ph143.prol.loopexit

scalar.ph143.prol.loopexit:                       ; preds = %scalar.ph143.prol, %scalar.ph143.preheader
  %.lcssa207.unr = phi i64 [ poison, %scalar.ph143.preheader ], [ %i.fl, %scalar.ph143.prol ]
  %indvars.iv60.i74.unr = phi i64 [ %indvars.iv60.i74.ph, %scalar.ph143.preheader ], [ %indvars.iv.next61.i77.prol, %scalar.ph143.prol ]
  %.03344.us.i75.unr = phi i64 [ %.03344.us.i75.ph, %scalar.ph143.preheader ], [ %i.fl, %scalar.ph143.prol ]
  %i.fm = icmp eq i64 %indvars.iv60.i74.ph, %i.ea
  br i1 %i.fm, label %._crit_edge.us.i79, label %scalar.ph143

scalar.ph143:                                     ; preds = %scalar.ph143.prol.loopexit, %scalar.ph143
  %indvars.iv60.i74 = phi i64 [ %indvars.iv.next61.i77.1, %scalar.ph143 ], [ %indvars.iv60.i74.unr, %scalar.ph143.prol.loopexit ] ; 5 uses
  %.03344.us.i75 = phi i64 [ %i.gi, %scalar.ph143 ], [ %.03344.us.i75.unr, %scalar.ph143.prol.loopexit ]
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv60.i74
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !47
  %i.fp = sext i32 %i.fo to i64
  %i.fq = xor i64 %indvars.iv60.i74, -1
  %i.fr = add nsw i64 %indvars.iv65.i73, %i.fq
  %sext.i76 = shl i64 %i.fr, 32
  %i.fs = ashr exact i64 %sext.i76, 30
  %i.ft = getelementptr inbounds i8, ptr %3, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !47
  %i.fv = sext i32 %i.fu to i64
  %i.fw = mul nsw i64 %i.fv, %i.fp
  %i.fx = add nsw i64 %i.fw, %.03344.us.i75
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv60.i74
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !47
  %i.gb = sext i32 %i.ga to i64
  %reass.sub = sub i64 %indvars.iv65.i73, %indvars.iv60.i74
  %i.gc = shl i64 %reass.sub, 32
  %sext.i76.1 = add i64 %i.gc, -8589934592
  %i.gd = ashr exact i64 %sext.i76.1, 30
  %i.ge = getelementptr inbounds i8, ptr %3, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !47
  %i.gg = sext i32 %i.gf to i64
  %i.gh = mul nsw i64 %i.gg, %i.gb
  %i.gi = add nsw i64 %i.gh, %i.fx                ; 2 uses
  %indvars.iv.next61.i77.1 = add nuw nsw i64 %indvars.iv60.i74, 2 ; 2 uses
  %exitcond64.not.i78.1 = icmp eq i64 %indvars.iv.next61.i77.1, %wide.trip.count.i63
  br i1 %exitcond64.not.i78.1, label %._crit_edge.us.i79, label %scalar.ph143, !llvm.loop !262

bb.e:                                             ; preds = %._crit_edge.us.i79
  %i.gj = trunc nsw i64 %i.gp to i32
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv65.i73
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !47
  %indvars.iv.next66.i81 = add nuw nsw i64 %indvars.iv65.i73, 1 ; 2 uses
  %exitcond69.not.i82 = icmp eq i64 %indvars.iv.next66.i81, %wide.trip.count68.i70
  %indvar.next = add i34 %indvar, 1
  br i1 %exitcond69.not.i82, label %lpc_encode_with_residual_limit_33bps.exit, label %.preheader.us.i72, !llvm.loop !1

._crit_edge.us.i79:                               ; preds = %scalar.ph143.prol.loopexit, %scalar.ph143, %middle.block157
  %.lcssa127 = phi i64 [ %i.fa, %middle.block157 ], [ %.lcssa207.unr, %scalar.ph143.prol.loopexit ], [ %i.gi, %scalar.ph143 ]
  %i.gl = ashr i64 %.lcssa127, %i.dg
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv65.i73
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !47
  %i.go = sext i32 %i.gn to i64
  %i.gp = sub nsw i64 %i.go, %i.gl                ; 2 uses
  %i.gq = add i64 %i.gp, 2147483647
  %or.cond.us.i80 = icmp ult i64 %i.gq, 4294967295
  br i1 %or.cond.us.i80, label %bb.e, label %lpc_encode_with_residual_limit_33bps.exit

.lr.ph.i64:                                       ; preds = %.lr.ph.i64.prol.loopexit, %.lr.ph.i64
  %indvars.iv.i65 = phi i64 [ %indvars.iv.next.i66.3, %.lr.ph.i64 ], [ %indvars.iv.i65.unr, %.lr.ph.i64.prol.loopexit ] ; 6 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i65
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !47
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i65
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !47
  %indvars.iv.next.i66 = add nuw nsw i64 %indvars.iv.i65, 1 ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.i66
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !47
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i66
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !47
  %indvars.iv.next.i66.1 = add nuw nsw i64 %indvars.iv.i65, 2 ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.i66.1
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !47
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i66.1
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !47
  %indvars.iv.next.i66.2 = add nuw nsw i64 %indvars.iv.i65, 3 ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.i66.2
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !47
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i66.2
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !47
  %indvars.iv.next.i66.3 = add nuw nsw i64 %indvars.iv.i65, 4 ; 2 uses
  %exitcond.not.i67.3 = icmp eq i64 %indvars.iv.next.i66.3, %wide.trip.count.i63
  br i1 %exitcond.not.i67.3, label %.preheader42.i68, label %.lr.ph.i64, !llvm.loop !263

.preheader.i57:                                   ; preds = %bb.f, %.preheader.preheader.i55
  %indvars.iv55.i58 = phi i64 [ %i.eb, %.preheader.preheader.i55 ], [ %indvars.iv.next56.i60, %bb.f ] ; 3 uses
  %i.hd = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv55.i58
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !47 ; 2 uses
  %.not.i59 = icmp eq i32 %i.he, -2147483648
  br i1 %.not.i59, label %lpc_encode_with_residual_limit_33bps.exit, label %bb.f

bb.f:                                             ; preds = %.preheader.i57
  %i.hf = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv55.i58
  store i32 %i.he, ptr %i.hf, align 4, !tbaa !47
  %indvars.iv.next56.i60 = add nsw i64 %indvars.iv55.i58, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next56.i60 to i32
  %exitcond59.not.i61 = icmp eq i32 %5, %lftr.wideiv.i
  br i1 %exitcond59.not.i61, label %lpc_encode_with_residual_limit_33bps.exit, label %.preheader.i57, !llvm.loop !1

lpc_encode_with_residual_limit_33bps.exit.sink.split: ; preds = %.thread109, %bb.d
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 7349960
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !81
  %.not.i = icmp ult i32 %6, 65536                ; 2 uses
  %i.hi = lshr i32 %6, 16
  %spec.select.i = select i1 %.not.i, i32 %6, i32 %i.hi ; 3 uses
  %spec.select12.i = select i1 %.not.i, i32 0, i32 16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.hj = lshr i32 %spec.select.i, 8
  %i.hk = or disjoint i32 %spec.select12.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.hj
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.hk
  %i.hl = zext nneg i32 %.110.i to i64
  %i.hm = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !64
  %i.ho = zext i8 %i.hn to i32
  %i.hp = add nsw i32 %.1.i, %1
  %i.hq = add i32 %i.hp, %i.hh
  %i.hr = add i32 %i.hq, %i.ho
  %i.hs = icmp slt i32 %i.hr, 33
  %. = select i1 %i.hs, i64 7387800, i64 7387808
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !84
  tail call void %i.hu(ptr noundef %2, ptr noundef %3, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) #13
  br label %lpc_encode_with_residual_limit_33bps.exit

lpc_encode_with_residual_limit_33bps.exit:        ; preds = %bb.f, %.preheader.i57, %bb.c, %.preheader.i, %bb.e, %._crit_edge.us.i79, %bb.b, %._crit_edge.us.i, %lpc_encode_with_residual_limit_33bps.exit.sink.split, %.preheader42.i68, %.preheader42.i
  %.050 = phi i32 [ 0, %.preheader42.i ], [ 0, %lpc_encode_with_residual_limit_33bps.exit.sink.split ], [ 0, %.preheader42.i68 ], [ 0, %bb.c ], [ 1, %._crit_edge.us.i79 ], [ 1, %._crit_edge.us.i ], [ 0, %bb.b ], [ 0, %bb.e ], [ 1, %.preheader.i ], [ 0, %bb.f ], [ 1, %.preheader.i57 ]
  ret i32 %.050
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @av_crc(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare ptr @av_crc_get_table(i32 noundef) local_unnamed_addr #2

declare void @av_fast_malloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @av_md5_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q(i64 noundef, i64, i64) local_unnamed_addr #9

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare void @ff_lpc_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.abs.v2i64(<2 x i64>, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.abs.v2i32(<2 x i32>, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #10

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { cold }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !49}
!1 = distinct !{!1, !49}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"override-stack-alignment", i32 16}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS7AVClass", !11, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !11, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !11, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !11, i64 0}
!17 = !{!"AVRational", !8, i64 0, !8, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !11, i64 0}
!20 = !{!"AVChannelLayout", !8, i64 0, !8, i64 4, !7, i64 8, !11, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !11, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !11, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !11, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !11, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !11, i64 0}
!26 = !{!"p1 int", !11, i64 0}
!27 = !{!"any p2 pointer", !11, i64 0}
!28 = !{!"p2 _ZTS15AVFrameSideData", !27, i64 0}
!29 = !{!"AVCodecContext", !12, i64 0, !8, i64 8, !8, i64 12, !13, i64 16, !8, i64 24, !8, i64 28, !11, i64 32, !14, i64 40, !11, i64 48, !15, i64 56, !8, i64 64, !8, i64 68, !16, i64 72, !8, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !17, i64 128, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !11, i64 184, !11, i64 192, !8, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !8, i64 240, !8, i64 244, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !8, i64 312, !8, i64 316, !8, i64 320, !8, i64 324, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !8, i64 348, !20, i64 352, !8, i64 376, !8, i64 380, !8, i64 384, !8, i64 388, !8, i64 392, !8, i64 396, !8, i64 400, !8, i64 404, !11, i64 408, !8, i64 416, !8, i64 420, !8, i64 424, !18, i64 428, !18, i64 432, !8, i64 436, !8, i64 440, !8, i64 444, !8, i64 448, !8, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !8, i64 488, !8, i64 492, !16, i64 496, !16, i64 504, !8, i64 512, !8, i64 516, !8, i64 520, !8, i64 524, !8, i64 528, !22, i64 536, !11, i64 544, !23, i64 552, !23, i64 560, !8, i64 568, !8, i64 572, !7, i64 576, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !8, i64 656, !8, i64 660, !8, i64 664, !11, i64 672, !11, i64 680, !8, i64 688, !8, i64 692, !8, i64 696, !8, i64 700, !8, i64 704, !8, i64 708, !8, i64 712, !8, i64 716, !8, i64 720, !24, i64 728, !16, i64 736, !8, i64 744, !8, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !8, i64 784, !8, i64 788, !15, i64 792, !8, i64 800, !8, i64 804, !15, i64 808, !11, i64 816, !15, i64 824, !26, i64 832, !8, i64 840, !28, i64 848, !8, i64 856, !8, i64 860}
!30 = !{!29, !8, i64 344}
!31 = !{!29, !11, i64 32}
!32 = !{!"PutBitContext", !8, i64 0, !8, i64 4, !16, i64 8, !16, i64 16, !16, i64 24}
!33 = !{!"FlacFrame", !7, i64 0, !7, i64 6825536, !8, i64 7349816, !7, i64 7349820, !7, i64 7349828, !8, i64 7349832, !8, i64 7349836}
!34 = !{!"CompressionOptions", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48}
!35 = !{!"p1 _ZTS14AVCodecContext", !11, i64 0}
!36 = !{!"p1 double", !11, i64 0}
!37 = !{!"LPCContext", !8, i64 0, !8, i64 4, !8, i64 8, !36, i64 16, !36, i64 24, !11, i64 32, !11, i64 40, !7, i64 48}
!38 = !{!"p1 _ZTS5AVMD5", !11, i64 0}
!39 = !{!"BswapDSPContext", !11, i64 0, !11, i64 8}
!40 = !{!"FLACEncDSPContext", !11, i64 0, !11, i64 8}
!41 = !{!"FlacEncodeContext", !12, i64 0, !32, i64 8, !8, i64 40, !8, i64 44, !7, i64 48, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !15, i64 80, !7, i64 88, !33, i64 104, !34, i64 7349944, !35, i64 7350000, !37, i64 7350016, !38, i64 7387760, !16, i64 7387768, !8, i64 7387776, !39, i64 7387784, !40, i64 7387800, !8, i64 7387816, !15, i64 7387824}
!42 = !{!41, !35, i64 7350000}
!43 = !{!29, !8, i64 348}
!44 = !{!29, !8, i64 652}
!45 = !{!41, !8, i64 56}
!46 = !{!41, !8, i64 40}
!47 = !{!8, !8, i64 0}
!48 = !{!41, !8, i64 44}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!41, !8, i64 7349952}
!51 = !{!41, !8, i64 7349964}
!52 = !{!41, !8, i64 7349968}
!53 = !{!41, !8, i64 7349972}
!54 = !{!41, !8, i64 7349976}
!55 = !{!41, !8, i64 7349980}
!56 = !{!29, !8, i64 376}
!57 = !{!41, !8, i64 60}
!58 = !{!41, !8, i64 68}
!59 = !{!41, !38, i64 7387760}
!60 = !{!29, !16, i64 72}
!61 = !{!29, !8, i64 80}
!62 = !{!41, !8, i64 76}
!63 = !{!41, !8, i64 64}
!64 = !{!7, !7, i64 0}
!65 = !{!41, !15, i64 80}
!66 = !{!41, !8, i64 7349920}
!67 = !{!33, !8, i64 7349816}
!68 = !{!"RiceContext", !8, i64 0, !8, i64 4, !7, i64 8}
!69 = !{!"FlacSubframe", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !7, i64 20, !8, i64 148, !68, i64 152, !7, i64 1184, !7, i64 263328, !7, i64 328864, !7, i64 591004}
!70 = !{!69, !8, i64 12}
!71 = !{!69, !8, i64 8}
!72 = !{!69, !8, i64 152}
!73 = !{!"llvm.loop.unroll.disable"}
end_hunk_3
