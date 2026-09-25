Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@stb_vorbis_open_memory:bb.a
  br label %bb.o

vorbis_alloc.exit.thread:                         ; preds = %bb.g, %vorbis_alloc.exit, %vorbis_init.exit
  %.not22 = icmp eq ptr %2, null
  br i1 %.not22, label %bb.n, label %bb.m

bb.m:                                             ; preds = %vorbis_alloc.exit.thread
  %i.ap = load i32, ptr %i.j, align 4
  store i32 %i.ap, ptr %2, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %vorbis_alloc.exit.thread
  call fastcc void @vorbis_deinit(ptr noundef %4)
  br label %bb.o

bb.o:                                             ; preds = %vorbis_pump_first_frame.exit, %bb.l, %bb.b, %bb.c, %bb.n
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.n ], [ null, %bb.c ], [ %.1.i.i, %bb.l ], [ %.1.i.i, %vorbis_pump_first_frame.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #61
  ret ptr %.0
}

; Function Attrs: nofree nounwind uwtable
define hidden i32 @stb_vorbis_get_frame_short(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #61
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.e = load i8, ptr %i.d, align 4
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 2, ptr %i.f, align 4
  br label %stb_vorbis_get_frame_float.exit

bb.c:                                             ; preds = %bb.a
  %i.g = call fastcc i32 @vorbis_decode_packet(ptr noundef nonnull %0, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.b)
  %.not24.i = icmp eq i32 %i.g, 0
  br i1 %.not24.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1896
  store i32 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1892
  store i32 0, ptr %i.i, align 4
  br label %stb_vorbis_get_frame_float.exit

bb.e:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.a, align 4
  %i.k = load i32, ptr %i.c, align 4              ; 4 uses
  %i.l = load i32, ptr %i.b, align 4
  %i.m = tail call fastcc i32 @vorbis_finish_frame(ptr noundef nonnull %0, i32 noundef %i.j, i32 noundef %i.k, i32 noundef %i.l) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i32, ptr %i.n, align 4              ; 3 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.r = sext i32 %i.k to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.o to i64  ; 3 uses
  %min.iters.check = icmp eq i32 %i.o, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count.i, 2147483646 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index
  %wide.load = load <2 x ptr>, ptr %i.t, align 8
  %wide.gep = getelementptr inbounds [4 x i8], <2 x ptr> %wide.load, i64 %i.r
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index
  store <2 x ptr> %wide.gep, ptr %i.u, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !1047

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.r
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  store ptr %i.y, ptr %i.z, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1048

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1892
  store i32 %i.k, ptr %i.aa, align 4
  %i.ab = add nsw i32 %i.m, %i.k
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1896
  store i32 %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1016
  br label %stb_vorbis_get_frame_float.exit

stb_vorbis_get_frame_float.exit:                  ; preds = %bb.b, %bb.d, %._crit_edge.i
  %.0 = phi ptr [ null, %bb.d ], [ %i.ad, %._crit_edge.i ], [ null, %bb.b ]
  %.021.i = phi i32 [ 0, %bb.d ], [ %i.m, %._crit_edge.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  %spec.select = tail call i32 @llvm.smin.i32(i32 %.021.i, i32 %3) ; 3 uses
  %.not = icmp eq i32 %spec.select, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %stb_vorbis_get_frame_float.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.af = load i32, ptr %i.ae, align 4
  tail call fastcc void @convert_samples_short(i32 noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef %i.af, ptr noundef %.0, i32 noundef 0, i32 noundef %spec.select)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %stb_vorbis_get_frame_float.exit
  ret i32 %spec.select
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @convert_samples_short(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef range(i32 1, 0) %6) unnamed_addr #23 {
bb.a:
  %i.a = alloca [32 x float], align 16            ; 27 uses
  %i.b = icmp ne i32 %0, %3
  %i.c = icmp slt i32 %0, 3
  %or.cond = and i1 %i.c, %i.b
  %i.d = icmp slt i32 %3, 7
  %or.cond3 = and i1 %i.d, %or.cond
  br i1 %or.cond3, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.e = icmp sgt i32 %0, 0
  br i1 %i.e, label %.lr.ph55, label %.loopexit

.lr.ph55:                                         ; preds = %.preheader
  %i.f = zext nneg i32 %0 to i64                  ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @convert_samples_short.channel_selector, i64 %i.f
  %i.h = sext i32 %2 to i64                       ; 3 uses
  %i.i = icmp sgt i32 %6, 0
  %i.j = sext i32 %3 to i64
  %i.k = getelementptr inbounds [6 x i8], ptr @channel_position, i64 %i.j ; 6 uses
  %i.l = zext nneg i32 %6 to i64                  ; 3 uses
  %i.m = sext i32 %5 to i64                       ; 6 uses
  br i1 %i.i, label %.lr.ph55.split.us, label %.loopexit

.lr.ph55.split.us:                                ; preds = %.lr.ph55
  %i.n = icmp sgt i32 %3, 0
  br i1 %i.n, label %.lr.ph47.i.us.us.preheader, label %.lr.ph47.i.us

.lr.ph47.i.us.us.preheader:                       ; preds = %.lr.ph55.split.us
  %exitcond67.not.i.us.us = icmp eq i32 %3, 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %exitcond67.not.i.us.us.1 = icmp eq i32 %3, 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %exitcond67.not.i.us.us.2 = icmp eq i32 %3, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  %exitcond67.not.i.us.us.3 = icmp eq i32 %3, 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32
  %exitcond67.not.i.us.us.4 = icmp eq i32 %3, 5
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %.lr.ph47.i.us.us

.lr.ph47.i.us.us:                                 ; preds = %.lr.ph47.i.us.us.preheader, %compute_samples.exit.loopexit.us.us
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %compute_samples.exit.loopexit.us.us ], [ 0, %.lr.ph47.i.us.us.preheader ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv76
  %i.z = load i32, ptr %i.y, align 4              ; 6 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv76
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  br label %.lr.ph42.us.i.us.us

.lr.ph42.us.i.us.us:                              ; preds = %._crit_edge.us.i.us.us, %.lr.ph47.i.us.us
  %indvars.iv73.i.us.us = phi i64 [ 0, %.lr.ph47.i.us.us ], [ %indvars.iv.next74.i.us.us, %._crit_edge.us.i.us.us ] ; 9 uses
  %.03245.us.i.us.us = phi i32 [ 32, %.lr.ph47.i.us.us ], [ %spec.select.us.fr.i.us.us, %._crit_edge.us.i.us.us ] ; 2 uses
  %indvars75.i.us.us = trunc i64 %indvars.iv73.i.us.us to i32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.ad = add nsw i32 %.03245.us.i.us.us, %indvars75.i.us.us
  %i.ae = icmp sgt i32 %i.ad, %6
  %i.af = sub i32 %6, %indvars75.i.us.us
  %spec.select.us.i.us.us = select i1 %i.ae, i32 %i.af, i32 %.03245.us.i.us.us
  %spec.select.us.fr.i.us.us = freeze i32 %spec.select.us.i.us.us ; 10 uses
  %7 = icmp sgt i32 %spec.select.us.fr.i.us.us, 0
  br i1 %7, label %.lr.ph42.split.us.us.preheader.i.us.us, label %._crit_edge.us.i.us.us

.lr.ph42.split.us.us.preheader.i.us.us:           ; preds = %.lr.ph42.us.i.us.us
  %wide.trip.count.i.us.us = zext nneg i32 %spec.select.us.fr.i.us.us to i64 ; 21 uses
  %i.ag = load i8, ptr %i.k, align 2
  %i.ah = sext i8 %i.ag to i32
  %i.ai = and i32 %i.z, %i.ah
  %.not.us.us.i.us.us = icmp eq i32 %i.ai, 0
  br i1 %.not.us.us.i.us.us, label %..loopexit_crit_edge.us.us.i.us.us, label %.preheader.us.us.i.us.us

.preheader.us.us.i.us.us:                         ; preds = %.lr.ph42.split.us.us.preheader.i.us.us
  %i.aj = load ptr, ptr %4, align 8
  %i.ak = getelementptr [4 x i8], ptr %i.aj, i64 %indvars.iv73.i.us.us
  %i.al = getelementptr [4 x i8], ptr %i.ak, i64 %i.m ; 2 uses
  %min.iters.check115 = icmp ult i32 %spec.select.us.fr.i.us.us, 8
  br i1 %min.iters.check115, label %scalar.ph114.preheader, label %vector.ph116

vector.ph116:                                     ; preds = %.preheader.us.us.i.us.us
  %n.vec117 = and i64 %wide.trip.count.i.us.us, 2147483640 ; 3 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph116
  %index119 = phi i64 [ 0, %vector.ph116 ], [ %index.next124, %vector.body118 ] ; 3 uses
  %i.am = getelementptr [4 x i8], ptr %i.al, i64 %index119 ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 16
  %wide.load120 = load <4 x float>, ptr %i.am, align 4
  %wide.load121 = load <4 x float>, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index119 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %wide.load122 = load <4 x float>, ptr %i.ao, align 16
  %wide.load123 = load <4 x float>, ptr %i.ap, align 16
  %i.aq = fadd <4 x float> %wide.load120, %wide.load122
  %i.ar = fadd <4 x float> %wide.load121, %wide.load123
  store <4 x float> %i.aq, ptr %i.ao, align 16
  store <4 x float> %i.ar, ptr %i.ap, align 16
  %index.next124 = add nuw i64 %index119, 8       ; 2 uses
  %i.as = icmp eq i64 %index.next124, %n.vec117
  br i1 %i.as, label %middle.block125, label %vector.body118, !llvm.loop !1049

middle.block125:                                  ; preds = %vector.body118
  %cmp.n126 = icmp eq i64 %n.vec117, %wide.trip.count.i.us.us
  br i1 %cmp.n126, label %..loopexit_crit_edge.us.us.i.us.us, label %scalar.ph114.preheader

scalar.ph114.preheader:                           ; preds = %.preheader.us.us.i.us.us, %middle.block125
  %indvars.iv60.i.us.us.ph = phi i64 [ 0, %.preheader.us.us.i.us.us ], [ %n.vec117, %middle.block125 ]
  br label %scalar.ph114

scalar.ph114:                                     ; preds = %scalar.ph114.preheader, %scalar.ph114
  %indvars.iv60.i.us.us = phi i64 [ %indvars.iv.next61.i.us.us, %scalar.ph114 ], [ %indvars.iv60.i.us.us.ph, %scalar.ph114.preheader ] ; 3 uses
  %i.at = getelementptr [4 x i8], ptr %i.al, i64 %indvars.iv60.i.us.us
  %i.au = load float, ptr %i.at, align 4
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv60.i.us.us ; 2 uses
  %i.aw = load float, ptr %i.av, align 4
  %i.ax = fadd float %i.au, %i.aw
  store float %i.ax, ptr %i.av, align 4
  %indvars.iv.next61.i.us.us = add nuw nsw i64 %indvars.iv60.i.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next61.i.us.us, %wide.trip.count.i.us.us
  br i1 %exitcond.not.i.us.us, label %..loopexit_crit_edge.us.us.i.us.us, label %scalar.ph114, !llvm.loop !1050

..loopexit_crit_edge.us.us.i.us.us:               ; preds = %scalar.ph114, %middle.block125, %.lr.ph42.split.us.us.preheader.i.us.us
  br i1 %exitcond67.not.i.us.us, label %..preheader39_crit_edge.us.i.us.us.a, label %.lr.ph42.split.us.us.i.us.us.1

.lr.ph42.split.us.us.i.us.us.1:                   ; preds = %..loopexit_crit_edge.us.us.i.us.us
  %i.ay = load i8, ptr %i.o, align 1
  %i.az = sext i8 %i.ay to i32
  %i.ba = and i32 %i.z, %i.az
  %.not.us.us.i.us.us.1 = icmp eq i32 %i.ba, 0
  br i1 %.not.us.us.i.us.us.1, label %..loopexit_crit_edge.us.us.i.us.us.1, label %.preheader.us.us.i.us.us.1

.preheader.us.us.i.us.us.1:                       ; preds = %.lr.ph42.split.us.us.i.us.us.1
  %i.bb = load ptr, ptr %i.p, align 8
  %i.bc = getelementptr [4 x i8], ptr %i.bb, i64 %indvars.iv73.i.us.us
  %i.bd = getelementptr [4 x i8], ptr %i.bc, i64 %i.m ; 2 uses
  %min.iters.check115.1 = icmp ult i32 %spec.select.us.fr.i.us.us, 8
  br i1 %min.iters.check115.1, label %scalar.ph114.preheader.1, label %vector.ph116.1

vector.ph116.1:                                   ; preds = %.preheader.us.us.i.us.us.1
  %n.vec117.1 = and i64 %wide.trip.count.i.us.us, 2147483640 ; 3 uses
  br label %vector.body118.1

vector.body118.1:                                 ; preds = %vector.body118.1, %vector.ph116.1
  %index119.1 = phi i64 [ 0, %vector.ph116.1 ], [ %index.next124.1, %vector.body118.1 ] ; 3 uses
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %index119.1 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 16
  %wide.load120.1 = load <4 x float>, ptr %i.be, align 4
  %wide.load121.1 = load <4 x float>, ptr %i.bf, align 4
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index119.1 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %wide.load122.1 = load <4 x float>, ptr %i.bg, align 16
  %wide.load123.1 = load <4 x float>, ptr %i.bh, align 16
  %i.bi = fadd <4 x float> %wide.load120.1, %wide.load122.1
  %i.bj = fadd <4 x float> %wide.load121.1, %wide.load123.1
  store <4 x float> %i.bi, ptr %i.bg, align 16
  store <4 x float> %i.bj, ptr %i.bh, align 16
  %index.next124.1 = add nuw i64 %index119.1, 8   ; 2 uses
  %i.bk = icmp eq i64 %index.next124.1, %n.vec117.1
  br i1 %i.bk, label %middle.block125.1, label %vector.body118.1, !llvm.loop !1049

middle.block125.1:                                ; preds = %vector.body118.1
  %cmp.n126.1 = icmp eq i64 %n.vec117.1, %wide.trip.count.i.us.us
  br i1 %cmp.n126.1, label %..loopexit_crit_edge.us.us.i.us.us.1, label %scalar.ph114.preheader.1

scalar.ph114.preheader.1:                         ; preds = %middle.block125.1, %.preheader.us.us.i.us.us.1
  %indvars.iv60.i.us.us.ph.1 = phi i64 [ 0, %.preheader.us.us.i.us.us.1 ], [ %n.vec117.1, %middle.block125.1 ]
  br label %scalar.ph114.1

scalar.ph114.1:                                   ; preds = %scalar.ph114.1, %scalar.ph114.preheader.1
  %indvars.iv60.i.us.us.1 = phi i64 [ %indvars.iv.next61.i.us.us.1, %scalar.ph114.1 ], [ %indvars.iv60.i.us.us.ph.1, %scalar.ph114.preheader.1 ] ; 3 uses
  %i.bl = getelementptr [4 x i8], ptr %i.bd, i64 %indvars.iv60.i.us.us.1
  %i.bm = load float, ptr %i.bl, align 4
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv60.i.us.us.1 ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4
  %i.bp = fadd float %i.bm, %i.bo
  store float %i.bp, ptr %i.bn, align 4
  %indvars.iv.next61.i.us.us.1 = add nuw nsw i64 %indvars.iv60.i.us.us.1, 1 ; 2 uses
  %exitcond.not.i.us.us.1 = icmp eq i64 %indvars.iv.next61.i.us.us.1, %wide.trip.count.i.us.us
  br i1 %exitcond.not.i.us.us.1, label %..loopexit_crit_edge.us.us.i.us.us.1, label %scalar.ph114.1, !llvm.loop !1050

..loopexit_crit_edge.us.us.i.us.us.1:             ; preds = %scalar.ph114.1, %middle.block125.1, %.lr.ph42.split.us.us.i.us.us.1
  br i1 %exitcond67.not.i.us.us.1, label %..preheader39_crit_edge.us.i.us.us.a, label %.lr.ph42.split.us.us.i.us.us.2

.lr.ph42.split.us.us.i.us.us.2:                   ; preds = %..loopexit_crit_edge.us.us.i.us.us.1
  %i.bq = load i8, ptr %i.q, align 2
  %i.br = sext i8 %i.bq to i32
  %i.bs = and i32 %i.z, %i.br
  %.not.us.us.i.us.us.2 = icmp eq i32 %i.bs, 0
  br i1 %.not.us.us.i.us.us.2, label %..loopexit_crit_edge.us.us.i.us.us.2, label %.preheader.us.us.i.us.us.2

.preheader.us.us.i.us.us.2:                       ; preds = %.lr.ph42.split.us.us.i.us.us.2
  %i.bt = load ptr, ptr %i.r, align 8
  %i.bu = getelementptr [4 x i8], ptr %i.bt, i64 %indvars.iv73.i.us.us
  %i.bv = getelementptr [4 x i8], ptr %i.bu, i64 %i.m ; 2 uses
  %min.iters.check115.2 = icmp ult i32 %spec.select.us.fr.i.us.us, 8
  br i1 %min.iters.check115.2, label %scalar.ph114.preheader.2, label %vector.ph116.2

vector.ph116.2:                                   ; preds = %.preheader.us.us.i.us.us.2
  %n.vec117.2 = and i64 %wide.trip.count.i.us.us, 2147483640 ; 3 uses
  br label %vector.body118.2

vector.body118.2:                                 ; preds = %vector.body118.2, %vector.ph116.2
  %index119.2 = phi i64 [ 0, %vector.ph116.2 ], [ %index.next124.2, %vector.body118.2 ] ; 3 uses
  %i.bw = getelementptr [4 x i8], ptr %i.bv, i64 %index119.2 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 16
  %wide.load120.2 = load <4 x float>, ptr %i.bw, align 4
  %wide.load121.2 = load <4 x float>, ptr %i.bx, align 4
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index119.2 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %wide.load122.2 = load <4 x float>, ptr %i.by, align 16
  %wide.load123.2 = load <4 x float>, ptr %i.bz, align 16
  %i.ca = fadd <4 x float> %wide.load120.2, %wide.load122.2
  %i.cb = fadd <4 x float> %wide.load121.2, %wide.load123.2
  store <4 x float> %i.ca, ptr %i.by, align 16
  store <4 x float> %i.cb, ptr %i.bz, align 16
  %index.next124.2 = add nuw i64 %index119.2, 8   ; 2 uses
  %i.cc = icmp eq i64 %index.next124.2, %n.vec117.2
  br i1 %i.cc, label %middle.block125.2, label %vector.body118.2, !llvm.loop !1049

middle.block125.2:                                ; preds = %vector.body118.2
  %cmp.n126.2 = icmp eq i64 %n.vec117.2, %wide.trip.count.i.us.us
  br i1 %cmp.n126.2, label %..loopexit_crit_edge.us.us.i.us.us.2, label %scalar.ph114.preheader.2

scalar.ph114.preheader.2:                         ; preds = %middle.block125.2, %.preheader.us.us.i.us.us.2
  %indvars.iv60.i.us.us.ph.2 = phi i64 [ 0, %.preheader.us.us.i.us.us.2 ], [ %n.vec117.2, %middle.block125.2 ]
  br label %scalar.ph114.2

scalar.ph114.2:                                   ; preds = %scalar.ph114.2, %scalar.ph114.preheader.2
  %indvars.iv60.i.us.us.2 = phi i64 [ %indvars.iv.next61.i.us.us.2, %scalar.ph114.2 ], [ %indvars.iv60.i.us.us.ph.2, %scalar.ph114.preheader.2 ] ; 3 uses
  %i.cd = getelementptr [4 x i8], ptr %i.bv, i64 %indvars.iv60.i.us.us.2
  %i.ce = load float, ptr %i.cd, align 4
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv60.i.us.us.2 ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4
  %i.ch = fadd float %i.ce, %i.cg
  store float %i.ch, ptr %i.cf, align 4
  %indvars.iv.next61.i.us.us.2 = add nuw nsw i64 %indvars.iv60.i.us.us.2, 1 ; 2 uses
  %exitcond.not.i.us.us.2 = icmp eq i64 %indvars.iv.next61.i.us.us.2, %wide.trip.count.i.us.us
  br i1 %exitcond.not.i.us.us.2, label %..loopexit_crit_edge.us.us.i.us.us.2, label %scalar.ph114.2, !llvm.loop !1050

..loopexit_crit_edge.us.us.i.us.us.2:             ; preds = %scalar.ph114.2, %middle.block125.2, %.lr.ph42.split.us.us.i.us.us.2
  br i1 %exitcond67.not.i.us.us.2, label %..preheader39_crit_edge.us.i.us.us.a, label %.lr.ph42.split.us.us.i.us.us.3

.lr.ph42.split.us.us.i.us.us.3:                   ; preds = %..loopexit_crit_edge.us.us.i.us.us.2
  %i.ci = load i8, ptr %i.s, align 1
  %i.cj = sext i8 %i.ci to i32
  %i.ck = and i32 %i.z, %i.cj
  %.not.us.us.i.us.us.3 = icmp eq i32 %i.ck, 0
  br i1 %.not.us.us.i.us.us.3, label %..loopexit_crit_edge.us.us.i.us.us.3, label %.preheader.us.us.i.us.us.3

.preheader.us.us.i.us.us.3:                       ; preds = %.lr.ph42.split.us.us.i.us.us.3
  %i.cl = load ptr, ptr %i.t, align 8
  %i.cm = getelementptr [4 x i8], ptr %i.cl, i64 %indvars.iv73.i.us.us
  %i.cn = getelementptr [4 x i8], ptr %i.cm, i64 %i.m ; 2 uses
  %min.iters.check115.3 = icmp ult i32 %spec.select.us.fr.i.us.us, 8
  br i1 %min.iters.check115.3, label %scalar.ph114.preheader.3, label %vector.ph116.3

vector.ph116.3:                                   ; preds = %.preheader.us.us.i.us.us.3
  %n.vec117.3 = and i64 %wide.trip.count.i.us.us, 2147483640 ; 3 uses
  br label %vector.body118.3

vector.body118.3:                                 ; preds = %vector.body118.3, %vector.ph116.3
  %index119.3 = phi i64 [ 0, %vector.ph116.3 ], [ %index.next124.3, %vector.body118.3 ] ; 3 uses
  %i.co = getelementptr [4 x i8], ptr %i.cn, i64 %index119.3 ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 16
  %wide.load120.3 = load <4 x float>, ptr %i.co, align 4
  %wide.load121.3 = load <4 x float>, ptr %i.cp, align 4
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index119.3 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %wide.load122.3 = load <4 x float>, ptr %i.cq, align 16
  %wide.load123.3 = load <4 x float>, ptr %i.cr, align 16
  %i.cs = fadd <4 x float> %wide.load120.3, %wide.load122.3
  %i.ct = fadd <4 x float> %wide.load121.3, %wide.load123.3
  store <4 x float> %i.cs, ptr %i.cq, align 16
  store <4 x float> %i.ct, ptr %i.cr, align 16
  %index.next124.3 = add nuw i64 %index119.3, 8   ; 2 uses
  %i.cu = icmp eq i64 %index.next124.3, %n.vec117.3
  br i1 %i.cu, label %middle.block125.3, label %vector.body118.3, !llvm.loop !1049

middle.block125.3:                                ; preds = %vector.body118.3
  %cmp.n126.3 = icmp eq i64 %n.vec117.3, %wide.trip.count.i.us.us
  br i1 %cmp.n126.3, label %..loopexit_crit_edge.us.us.i.us.us.3, label %scalar.ph114.preheader.3

scalar.ph114.preheader.3:                         ; preds = %middle.block125.3, %.preheader.us.us.i.us.us.3
  %indvars.iv60.i.us.us.ph.3 = phi i64 [ 0, %.preheader.us.us.i.us.us.3 ], [ %n.vec117.3, %middle.block125.3 ]
  br label %scalar.ph114.3

scalar.ph114.3:                                   ; preds = %scalar.ph114.3, %scalar.ph114.preheader.3
  %indvars.iv60.i.us.us.3 = phi i64 [ %indvars.iv.next61.i.us.us.3, %scalar.ph114.3 ], [ %indvars.iv60.i.us.us.ph.3, %scalar.ph114.preheader.3 ] ; 3 uses
  %i.cv = getelementptr [4 x i8], ptr %i.cn, i64 %indvars.iv60.i.us.us.3
  %i.cw = load float, ptr %i.cv, align 4
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv60.i.us.us.3 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4
  %i.cz = fadd float %i.cw, %i.cy
  store float %i.cz, ptr %i.cx, align 4
  %indvars.iv.next61.i.us.us.3 = add nuw nsw i64 %indvars.iv60.i.us.us.3, 1 ; 2 uses
  %exitcond.not.i.us.us.3 = icmp eq i64 %indvars.iv.next61.i.us.us.3, %wide.trip.count.i.us.us
  br i1 %exitcond.not.i.us.us.3, label %..loopexit_crit_edge.us.us.i.us.us.3, label %scalar.ph114.3, !llvm.loop !1050

..loopexit_crit_edge.us.us.i.us.us.3:             ; preds = %scalar.ph114.3, %middle.block125.3, %.lr.ph42.split.us.us.i.us.us.3
  br i1 %exitcond67.not.i.us.us.3, label %..preheader39_crit_edge.us.i.us.us.a, label %.lr.ph42.split.us.us.i.us.us.4

.lr.ph42.split.us.us.i.us.us.4:                   ; preds = %..loopexit_crit_edge.us.us.i.us.us.3
  %i.da = load i8, ptr %i.u, align 2
  %i.db = sext i8 %i.da to i32
  %i.dc = and i32 %i.z, %i.db
  %.not.us.us.i.us.us.4 = icmp eq i32 %i.dc, 0
  br i1 %.not.us.us.i.us.us.4, label %..loopexit_crit_edge.us.us.i.us.us.4, label %.preheader.us.us.i.us.us.4

.preheader.us.us.i.us.us.4:                       ; preds = %.lr.ph42.split.us.us.i.us.us.4
  %i.dd = load ptr, ptr %i.v, align 8
  %i.de = getelementptr [4 x i8], ptr %i.dd, i64 %indvars.iv73.i.us.us
  %i.df = getelementptr [4 x i8], ptr %i.de, i64 %i.m ; 2 uses
  %min.iters.check115.4 = icmp ult i32 %spec.select.us.fr.i.us.us, 8
  br i1 %min.iters.check115.4, label %scalar.ph114.preheader.4, label %vector.ph116.4

vector.ph116.4:                                   ; preds = %.preheader.us.us.i.us.us.4
  %n.vec117.4 = and i64 %wide.trip.count.i.us.us, 2147483640 ; 3 uses
  br label %vector.body118.4

vector.body118.4:                                 ; preds = %vector.body118.4, %vector.ph116.4
  %index119.4 = phi i64 [ 0, %vector.ph116.4 ], [ %index.next124.4, %vector.body118.4 ] ; 3 uses
  %i.dg = getelementptr [4 x i8], ptr %i.df, i64 %index119.4 ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 16
  %wide.load120.4 = load <4 x float>, ptr %i.dg, align 4
  %wide.load121.4 = load <4 x float>, ptr %i.dh, align 4
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index119.4 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %wide.load122.4 = load <4 x float>, ptr %i.di, align 16
  %wide.load123.4 = load <4 x float>, ptr %i.dj, align 16
  %i.dk = fadd <4 x float> %wide.load120.4, %wide.load122.4
  %i.dl = fadd <4 x float> %wide.load121.4, %wide.load123.4
  store <4 x float> %i.dk, ptr %i.di, align 16
  store <4 x float> %i.dl, ptr %i.dj, align 16
  %index.next124.4 = add nuw i64 %index119.4, 8   ; 2 uses
  %i.dm = icmp eq i64 %index.next124.4, %n.vec117.4
  br i1 %i.dm, label %middle.block125.4, label %vector.body118.4, !llvm.loop !1049

middle.block125.4:                                ; preds = %vector.body118.4
  %cmp.n126.4 = icmp eq i64 %n.vec117.4, %wide.trip.count.i.us.us
  br i1 %cmp.n126.4, label %..loopexit_crit_edge.us.us.i.us.us.4, label %scalar.ph114.preheader.4

scalar.ph114.preheader.4:                         ; preds = %middle.block125.4, %.preheader.us.us.i.us.us.4
  %indvars.iv60.i.us.us.ph.4 = phi i64 [ 0, %.preheader.us.us.i.us.us.4 ], [ %n.vec117.4, %middle.block125.4 ]
  br label %scalar.ph114.4

scalar.ph114.4:                                   ; preds = %scalar.ph114.4, %scalar.ph114.preheader.4
  %indvars.iv60.i.us.us.4 = phi i64 [ %indvars.iv.next61.i.us.us.4, %scalar.ph114.4 ], [ %indvars.iv60.i.us.us.ph.4, %scalar.ph114.preheader.4 ] ; 3 uses
  %i.dn = getelementptr [4 x i8], ptr %i.df, i64 %indvars.iv60.i.us.us.4
  %i.do = load float, ptr %i.dn, align 4
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv60.i.us.us.4 ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4
  %i.dr = fadd float %i.do, %i.dq
  store float %i.dr, ptr %i.dp, align 4
  %indvars.iv.next61.i.us.us.4 = add nuw nsw i64 %indvars.iv60.i.us.us.4, 1 ; 2 uses
  %exitcond.not.i.us.us.4 = icmp eq i64 %indvars.iv.next61.i.us.us.4, %wide.trip.count.i.us.us
  br i1 %exitcond.not.i.us.us.4, label %..loopexit_crit_edge.us.us.i.us.us.4, label %scalar.ph114.4, !llvm.loop !1050

..loopexit_crit_edge.us.us.i.us.us.4:             ; preds = %scalar.ph114.4, %middle.block125.4, %.lr.ph42.split.us.us.i.us.us.4
  br i1 %exitcond67.not.i.us.us.4, label %..preheader39_crit_edge.us.i.us.us.a, label %.lr.ph42.split.us.us.i.us.us.5

.lr.ph42.split.us.us.i.us.us.5:                   ; preds = %..loopexit_crit_edge.us.us.i.us.us.4
  %i.ds = load i8, ptr %i.w, align 1
  %i.dt = sext i8 %i.ds to i32
  %i.du = and i32 %i.z, %i.dt
  %.not.us.us.i.us.us.5 = icmp eq i32 %i.du, 0
  br i1 %.not.us.us.i.us.us.5, label %..preheader39_crit_edge.us.i.us.us.a, label %.preheader.us.us.i.us.us.5

.preheader.us.us.i.us.us.5:                       ; preds = %.lr.ph42.split.us.us.i.us.us.5
  %i.dv = load ptr, ptr %i.x, align 8
  %i.dw = getelementptr [4 x i8], ptr %i.dv, i64 %indvars.iv73.i.us.us
  %i.dx = getelementptr [4 x i8], ptr %i.dw, i64 %i.m ; 2 uses
  %min.iters.check115.5 = icmp ult i32 %spec.select.us.fr.i.us.us, 8
  br i1 %min.iters.check115.5, label %scalar.ph114.preheader.5, label %vector.ph116.5

vector.ph116.5:                                   ; preds = %.preheader.us.us.i.us.us.5
  %n.vec117.5 = and i64 %wide.trip.count.i.us.us, 2147483640 ; 3 uses
  br label %vector.body118.5

vector.body118.5:                                 ; preds = %vector.body118.5, %vector.ph116.5
  %index119.5 = phi i64 [ 0, %vector.ph116.5 ], [ %index.next124.5, %vector.body118.5 ] ; 3 uses
  %i.dy = getelementptr [4 x i8], ptr %i.dx, i64 %index119.5 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 16
  %wide.load120.5 = load <4 x float>, ptr %i.dy, align 4
  %wide.load121.5 = load <4 x float>, ptr %i.dz, align 4
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index119.5 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %wide.load122.5 = load <4 x float>, ptr %i.ea, align 16
  %wide.load123.5 = load <4 x float>, ptr %i.eb, align 16
  %i.ec = fadd <4 x float> %wide.load120.5, %wide.load122.5
  %i.ed = fadd <4 x float> %wide.load121.5, %wide.load123.5
  store <4 x float> %i.ec, ptr %i.ea, align 16
  store <4 x float> %i.ed, ptr %i.eb, align 16
  %index.next124.5 = add nuw i64 %index119.5, 8   ; 2 uses
  %i.ee = icmp eq i64 %index.next124.5, %n.vec117.5
  br i1 %i.ee, label %middle.block125.5, label %vector.body118.5, !llvm.loop !1049

middle.block125.5:                                ; preds = %vector.body118.5
  %cmp.n126.5 = icmp eq i64 %n.vec117.5, %wide.trip.count.i.us.us
  br i1 %cmp.n126.5, label %..preheader39_crit_edge.us.i.us.us.a, label %scalar.ph114.preheader.5

scalar.ph114.preheader.5:                         ; preds = %middle.block125.5, %.preheader.us.us.i.us.us.5
  %indvars.iv60.i.us.us.ph.5 = phi i64 [ 0, %.preheader.us.us.i.us.us.5 ], [ %n.vec117.5, %middle.block125.5 ]
  br label %scalar.ph114.5

scalar.ph114.5:                                   ; preds = %scalar.ph114.5, %scalar.ph114.preheader.5
  %indvars.iv60.i.us.us.5 = phi i64 [ %indvars.iv.next61.i.us.us.5, %scalar.ph114.5 ], [ %indvars.iv60.i.us.us.ph.5, %scalar.ph114.preheader.5 ] ; 3 uses
  %i.ef = getelementptr [4 x i8], ptr %i.dx, i64 %indvars.iv60.i.us.us.5
  %i.eg = load float, ptr %i.ef, align 4
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv60.i.us.us.5 ; 2 uses
  %i.ei = load float, ptr %i.eh, align 4
  %i.ej = fadd float %i.eg, %i.ei
  store float %i.ej, ptr %i.eh, align 4
  %indvars.iv.next61.i.us.us.5 = add nuw nsw i64 %indvars.iv60.i.us.us.5, 1 ; 2 uses
  %exitcond.not.i.us.us.5 = icmp eq i64 %indvars.iv.next61.i.us.us.5, %wide.trip.count.i.us.us
  br i1 %exitcond.not.i.us.us.5, label %..preheader39_crit_edge.us.i.us.us.a, label %scalar.ph114.5, !llvm.loop !1050

..preheader39_crit_edge.us.i.us.us.a:             ; preds = %.lr.ph42.split.us.us.i.us.us.5, %middle.block125.5, %scalar.ph114.5, %..loopexit_crit_edge.us.us.i.us.us.4, %..loopexit_crit_edge.us.us.i.us.us.3, %..loopexit_crit_edge.us.us.i.us.us.2, %..loopexit_crit_edge.us.us.i.us.us.1, %..loopexit_crit_edge.us.us.i.us.us
  %invariant.gep78.i.us.us = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %indvars.iv73.i.us.us ; 2 uses
  %min.iters.check103 = icmp ult i32 %spec.select.us.fr.i.us.us, 8
  br i1 %min.iters.check103, label %.lr.ph.us.i.us.us.preheader, label %vector.ph104

vector.ph104:                                     ; preds = %..preheader39_crit_edge.us.i.us.us.a
  %n.vec105 = and i64 %wide.trip.count.i.us.us, 2147483640 ; 3 uses
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph104
  %index107 = phi i64 [ 0, %vector.ph104 ], [ %index.next110, %vector.body106 ] ; 3 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index107 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %wide.load108 = load <4 x float>, ptr %i.ek, align 16
  %wide.load109 = load <4 x float>, ptr %i.el, align 16
  %i.em = fadd <4 x float> %wide.load108, splat (float 3.840000e+02)
  %i.en = fadd <4 x float> %wide.load109, splat (float 3.840000e+02)
  %i.eo = bitcast <4 x float> %i.em to <4 x i32>
  %i.ep = bitcast <4 x float> %i.en to <4 x i32>
  %i.eq = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.eo, <4 x i32> splat (i32 1136623616))
  %i.er = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ep, <4 x i32> splat (i32 1136623616))
  %i.es = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.eq, <4 x i32> splat (i32 1136689151))
  %i.et = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.er, <4 x i32> splat (i32 1136689151))
  %i.eu = trunc <4 x i32> %i.es to <4 x i16>
  %i.ev = trunc <4 x i32> %i.et to <4 x i16>
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep78.i.us.us, i64 %index107 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store <4 x i16> %i.eu, ptr %i.ew, align 2
  store <4 x i16> %i.ev, ptr %i.ex, align 2
  %index.next110 = add nuw i64 %index107, 8       ; 2 uses
  %i.ey = icmp eq i64 %index.next110, %n.vec105
  br i1 %i.ey, label %middle.block111, label %vector.body106, !llvm.loop !1051

middle.block111:                                  ; preds = %vector.body106
  %cmp.n112 = icmp eq i64 %n.vec105, %wide.trip.count.i.us.us
  br i1 %cmp.n112, label %._crit_edge.us.i.us.us, label %.lr.ph.us.i.us.us.preheader

.lr.ph.us.i.us.us.preheader:                      ; preds = %..preheader39_crit_edge.us.i.us.us.a, %middle.block111
  %indvars.iv68.i.us.us.ph = phi i64 [ 0, %..preheader39_crit_edge.us.i.us.us.a ], [ %n.vec105, %middle.block111 ]
  br label %.lr.ph.us.i.us.us

.lr.ph.us.i.us.us:                                ; preds = %.lr.ph.us.i.us.us.preheader, %.lr.ph.us.i.us.us
  %indvars.iv68.i.us.us = phi i64 [ %indvars.iv.next69.i.us.us, %.lr.ph.us.i.us.us ], [ %indvars.iv68.i.us.us.ph, %.lr.ph.us.i.us.us.preheader ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv68.i.us.us
  %i.fa = load float, ptr %i.ez, align 4
  %i.fb = fadd float %i.fa, 3.840000e+02
  %i.fc = bitcast float %i.fb to i32
  %i.fd = tail call i32 @llvm.smax.i32(i32 %i.fc, i32 1136623616)
  %i.fe = tail call i32 @llvm.umin.i32(i32 %i.fd, i32 1136689151)
  %i.ff = trunc i32 %i.fe to i16
  %gep79.i.us.us = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep78.i.us.us, i64 %indvars.iv68.i.us.us
  store i16 %i.ff, ptr %gep79.i.us.us, align 2
  %indvars.iv.next69.i.us.us = add nuw nsw i64 %indvars.iv68.i.us.us, 1 ; 2 uses
  %exitcond72.not.i.us.us = icmp eq i64 %indvars.iv.next69.i.us.us, %wide.trip.count.i.us.us
  br i1 %exitcond72.not.i.us.us, label %._crit_edge.us.i.us.us, label %.lr.ph.us.i.us.us, !llvm.loop !1052

._crit_edge.us.i.us.us:                           ; preds = %.lr.ph.us.i.us.us, %middle.block111, %.lr.ph42.us.i.us.us
  %indvars.iv.next74.i.us.us = add nuw nsw i64 %indvars.iv73.i.us.us, 32 ; 2 uses
  %i.fg = icmp samesign ult i64 %indvars.iv.next74.i.us.us, %i.l
  br i1 %i.fg, label %.lr.ph42.us.i.us.us, label %compute_samples.exit.loopexit.us.us

compute_samples.exit.loopexit.us.us:              ; preds = %._crit_edge.us.i.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %i.f
  br i1 %exitcond80.not, label %.loopexit, label %.lr.ph47.i.us.us

.lr.ph47.i.us:                                    ; preds = %.lr.ph55.split.us
  %i.fh = load ptr, ptr %1, align 8
  %i.fi = getelementptr inbounds [2 x i8], ptr %i.fh, i64 %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  br label %.preheader39.i.us

.preheader39.i.us:                                ; preds = %._crit_edge.i.us, %.lr.ph47.i.us
  %indvars.iv67 = phi i32 [ %indvars.iv.next68, %._crit_edge.i.us ], [ 0, %.lr.ph47.i.us ] ; 2 uses
  %indvars.iv57.i.us = phi i64 [ %indvars.iv.next58.i.us, %._crit_edge.i.us ], [ 0, %.lr.ph47.i.us ] ; 3 uses
  %.03245.i.us = phi i32 [ %spec.select.i.us, %._crit_edge.i.us ], [ 32, %.lr.ph47.i.us ] ; 2 uses
  %indvars70 = trunc i64 %indvars.iv57.i.us to i32 ; 2 uses
  %i.fj = add nsw i32 %.03245.i.us, %indvars70    ; 2 uses
  %i.fk = icmp sgt i32 %i.fj, %6
  %i.fl = sub nuw nsw i32 %6, %indvars70
  %spec.select.i.us = select i1 %i.fk, i32 %i.fl, i32 %.03245.i.us ; 2 uses
  %8 = icmp sgt i32 %spec.select.i.us, 0
  br i1 %8, label %.lr.ph.preheader.i.us, label %._crit_edge.i.us

.lr.ph.preheader.i.us:                            ; preds = %.preheader39.i.us
  %invariant.gep.i.us = getelementptr inbounds nuw [2 x i8], ptr %i.fi, i64 %indvars.iv57.i.us ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %6, i32 %i.fj)
  %i.fm = add i32 %smin, %indvars.iv67            ; 2 uses
  %i.fn = zext i32 %i.fm to i64                   ; 3 uses
  %min.iters.check91 = icmp ult i32 %i.fm, 8
  br i1 %min.iters.check91, label %.lr.ph.i.us.preheader, label %vector.ph92

vector.ph92:                                      ; preds = %.lr.ph.preheader.i.us
  %n.vec93 = and i64 %i.fn, 4294967288            ; 3 uses
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph92
  %index95 = phi i64 [ 0, %vector.ph92 ], [ %index.next98, %vector.body94 ] ; 3 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index95 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %wide.load96 = load <4 x float>, ptr %i.fo, align 16
  %wide.load97 = load <4 x float>, ptr %i.fp, align 16
  %i.fq = fadd <4 x float> %wide.load96, splat (float 3.840000e+02)
  %i.fr = fadd <4 x float> %wide.load97, splat (float 3.840000e+02)
  %i.fs = bitcast <4 x float> %i.fq to <4 x i32>
  %i.ft = bitcast <4 x float> %i.fr to <4 x i32>
  %i.fu = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fs, <4 x i32> splat (i32 1136623616))
  %i.fv = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ft, <4 x i32> splat (i32 1136623616))
  %i.fw = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fu, <4 x i32> splat (i32 1136689151))
  %i.fx = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fv, <4 x i32> splat (i32 1136689151))
  %i.fy = trunc <4 x i32> %i.fw to <4 x i16>
  %i.fz = trunc <4 x i32> %i.fx to <4 x i16>
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.us, i64 %index95 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store <4 x i16> %i.fy, ptr %i.ga, align 2
  store <4 x i16> %i.fz, ptr %i.gb, align 2
  %index.next98 = add nuw i64 %index95, 8         ; 2 uses
  %i.gc = icmp eq i64 %index.next98, %n.vec93
  br i1 %i.gc, label %middle.block99, label %vector.body94, !llvm.loop !1053

middle.block99:                                   ; preds = %vector.body94
  %cmp.n100 = icmp eq i64 %n.vec93, %i.fn
  br i1 %cmp.n100, label %._crit_edge.i.us, label %.lr.ph.i.us.preheader

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.preheader.i.us, %middle.block99
  %indvars.iv.i.us.ph = phi i64 [ 0, %.lr.ph.preheader.i.us ], [ %n.vec93, %middle.block99 ]
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.lr.ph.i.us ], [ %indvars.iv.i.us.ph, %.lr.ph.i.us.preheader ] ; 3 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.us
  %i.ge = load float, ptr %i.gd, align 4
  %i.gf = fadd float %i.ge, 3.840000e+02
  %i.gg = bitcast float %i.gf to i32
  %i.gh = tail call i32 @llvm.smax.i32(i32 %i.gg, i32 1136623616)
  %i.gi = tail call i32 @llvm.umin.i32(i32 %i.gh, i32 1136689151)
  %i.gj = trunc i32 %i.gi to i16
  %gep.i.us = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.us
  store i16 %i.gj, ptr %gep.i.us, align 2
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond69.not = icmp eq i64 %indvars.iv.next.i.us, %i.fn
  br i1 %exitcond69.not, label %._crit_edge.i.us, label %.lr.ph.i.us, !llvm.loop !1054

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us, %middle.block99, %.preheader39.i.us
  %indvars.iv.next58.i.us = add nuw nsw i64 %indvars.iv57.i.us, 32 ; 2 uses
  %i.gk = icmp samesign ult i64 %indvars.iv.next58.i.us, %i.l
  %indvars.iv.next68 = add i32 %indvars.iv67, -32
  br i1 %i.gk, label %.preheader39.i.us, label %compute_samples.exit.loopexit48.us

compute_samples.exit.loopexit48.us:               ; preds = %._crit_edge.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  %exitcond75.not = icmp eq i32 %0, 1
  br i1 %exitcond75.not, label %.loopexit, label %.lr.ph47.i.us.1

.lr.ph47.i.us.1:                                  ; preds = %compute_samples.exit.loopexit48.us
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = getelementptr inbounds [2 x i8], ptr %i.gm, i64 %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  br label %.preheader39.i.us.1

.preheader39.i.us.1:                              ; preds = %._crit_edge.i.us.1, %.lr.ph47.i.us.1
  %indvars.iv67.1 = phi i32 [ %indvars.iv.next68.1, %._crit_edge.i.us.1 ], [ 0, %.lr.ph47.i.us.1 ] ; 2 uses
  %indvars.iv57.i.us.1 = phi i64 [ %indvars.iv.next58.i.us.1, %._crit_edge.i.us.1 ], [ 0, %.lr.ph47.i.us.1 ] ; 3 uses
  %.03245.i.us.1 = phi i32 [ %spec.select.i.us.1, %._crit_edge.i.us.1 ], [ 32, %.lr.ph47.i.us.1 ] ; 2 uses
  %indvars70.1 = trunc i64 %indvars.iv57.i.us.1 to i32 ; 2 uses
  %i.go = add nsw i32 %.03245.i.us.1, %indvars70.1 ; 2 uses
  %i.gp = icmp sgt i32 %i.go, %6
  %i.gq = sub nuw nsw i32 %6, %indvars70.1
  %spec.select.i.us.1 = select i1 %i.gp, i32 %i.gq, i32 %.03245.i.us.1 ; 2 uses
  %9 = icmp sgt i32 %spec.select.i.us.1, 0
  br i1 %9, label %.lr.ph.preheader.i.us.1, label %._crit_edge.i.us.1

.lr.ph.preheader.i.us.1:                          ; preds = %.preheader39.i.us.1
  %invariant.gep.i.us.1 = getelementptr inbounds nuw [2 x i8], ptr %i.gn, i64 %indvars.iv57.i.us.1 ; 2 uses
  %smin.1 = tail call i32 @llvm.smin.i32(i32 %6, i32 %i.go)
  %i.gr = add i32 %smin.1, %indvars.iv67.1        ; 2 uses
  %i.gs = zext i32 %i.gr to i64                   ; 3 uses
  %min.iters.check91.1 = icmp ult i32 %i.gr, 8
  br i1 %min.iters.check91.1, label %.lr.ph.i.us.preheader.1, label %vector.ph92.1

vector.ph92.1:                                    ; preds = %.lr.ph.preheader.i.us.1
  %n.vec93.1 = and i64 %i.gs, 4294967288          ; 3 uses
  br label %vector.body94.1

vector.body94.1:                                  ; preds = %vector.body94.1, %vector.ph92.1
  %index95.1 = phi i64 [ 0, %vector.ph92.1 ], [ %index.next98.1, %vector.body94.1 ] ; 3 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index95.1 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %wide.load96.1 = load <4 x float>, ptr %i.gt, align 16
  %wide.load97.1 = load <4 x float>, ptr %i.gu, align 16
  %i.gv = fadd <4 x float> %wide.load96.1, splat (float 3.840000e+02)
  %i.gw = fadd <4 x float> %wide.load97.1, splat (float 3.840000e+02)
  %i.gx = bitcast <4 x float> %i.gv to <4 x i32>
  %i.gy = bitcast <4 x float> %i.gw to <4 x i32>
  %i.gz = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gx, <4 x i32> splat (i32 1136623616))
  %i.ha = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gy, <4 x i32> splat (i32 1136623616))
  %i.hb = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.gz, <4 x i32> splat (i32 1136689151))
  %i.hc = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ha, <4 x i32> splat (i32 1136689151))
  %i.hd = trunc <4 x i32> %i.hb to <4 x i16>
  %i.he = trunc <4 x i32> %i.hc to <4 x i16>
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.us.1, i64 %index95.1 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store <4 x i16> %i.hd, ptr %i.hf, align 2
  store <4 x i16> %i.he, ptr %i.hg, align 2
  %index.next98.1 = add nuw i64 %index95.1, 8     ; 2 uses
  %i.hh = icmp eq i64 %index.next98.1, %n.vec93.1
  br i1 %i.hh, label %middle.block99.1, label %vector.body94.1, !llvm.loop !1053

middle.block99.1:                                 ; preds = %vector.body94.1
  %cmp.n100.1 = icmp eq i64 %n.vec93.1, %i.gs
  br i1 %cmp.n100.1, label %._crit_edge.i.us.1, label %.lr.ph.i.us.preheader.1

.lr.ph.i.us.preheader.1:                          ; preds = %middle.block99.1, %.lr.ph.preheader.i.us.1
  %indvars.iv.i.us.ph.1 = phi i64 [ 0, %.lr.ph.preheader.i.us.1 ], [ %n.vec93.1, %middle.block99.1 ]
  br label %.lr.ph.i.us.1

.lr.ph.i.us.1:                                    ; preds = %.lr.ph.i.us.1, %.lr.ph.i.us.preheader.1
  %indvars.iv.i.us.1 = phi i64 [ %indvars.iv.next.i.us.1, %.lr.ph.i.us.1 ], [ %indvars.iv.i.us.ph.1, %.lr.ph.i.us.preheader.1 ] ; 3 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.us.1
  %i.hj = load float, ptr %i.hi, align 4
  %i.hk = fadd float %i.hj, 3.840000e+02
  %i.hl = bitcast float %i.hk to i32
  %i.hm = tail call i32 @llvm.smax.i32(i32 %i.hl, i32 1136623616)
  %i.hn = tail call i32 @llvm.umin.i32(i32 %i.hm, i32 1136689151)
  %i.ho = trunc i32 %i.hn to i16
  %gep.i.us.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.us.1, i64 %indvars.iv.i.us.1
  store i16 %i.ho, ptr %gep.i.us.1, align 2
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.i.us.1, 1 ; 2 uses
  %exitcond69.not.1 = icmp eq i64 %indvars.iv.next.i.us.1, %i.gs
  br i1 %exitcond69.not.1, label %._crit_edge.i.us.1, label %.lr.ph.i.us.1, !llvm.loop !1054

._crit_edge.i.us.1:                               ; preds = %.lr.ph.i.us.1, %middle.block99.1, %.preheader39.i.us.1
  %indvars.iv.next58.i.us.1 = add nuw nsw i64 %indvars.iv57.i.us.1, 32 ; 2 uses
  %i.hp = icmp samesign ult i64 %indvars.iv.next58.i.us.1, %i.l
  %indvars.iv.next68.1 = add i32 %indvars.iv67.1, -32
  br i1 %i.hp, label %.preheader39.i.us.1, label %compute_samples.exit.loopexit48.us.1

compute_samples.exit.loopexit48.us.1:             ; preds = %._crit_edge.i.us.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.hq = tail call i32 @llvm.smin.i32(i32 %0, i32 %3) ; 4 uses
  %i.hr = icmp sgt i32 %i.hq, 0
  br i1 %i.hr, label %.lr.ph, label %.preheader49

.lr.ph:                                           ; preds = %bb.b
  %i.hs = sext i32 %2 to i64                      ; 2 uses
  %i.ht = sext i32 %5 to i64                      ; 2 uses
  %i.hu = icmp sgt i32 %6, 0
  %wide.trip.count.i43 = zext i32 %6 to i64       ; 7 uses
  br i1 %i.hu, label %.lr.ph.preheader.i42.us.preheader, label %.preheader49

.lr.ph.preheader.i42.us.preheader:                ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.hq to i64
  %i.hv = add nsw i64 %i.hs, %wide.trip.count.i43
  %i.hw = shl nsw i64 %i.hv, 1
  %i.hx = add nsw i64 %i.ht, %wide.trip.count.i43
  %i.hy = shl nsw i64 %i.hx, 2
  %min.iters.check = icmp ult i32 %6, 8
  %n.vec = and i64 %wide.trip.count.i43, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i43
  %xtraiter = and i64 %wide.trip.count.i43, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.hz = add nsw i64 %wide.trip.count.i43, -1
  br label %.lr.ph.preheader.i42.us

.lr.ph.preheader.i42.us:                          ; preds = %.lr.ph.preheader.i42.us.preheader, %copy_samples.exit.loopexit.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.i42.us.preheader ], [ %indvars.iv.next, %copy_samples.exit.loopexit.us ] ; 3 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ib = load ptr, ptr %i.ia, align 8            ; 2 uses
  %i.ic = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.hs ; 5 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.ie = load ptr, ptr %i.id, align 8            ; 2 uses
  %i.if = getelementptr inbounds [4 x i8], ptr %i.ie, i64 %i.ht ; 5 uses
  br i1 %min.iters.check, label %.lr.ph.i44.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i42.us
  %scevgep = getelementptr i8, ptr %i.ib, i64 %i.hw
  %scevgep88 = getelementptr i8, ptr %i.ie, i64 %i.hy
  %bound0 = icmp ult ptr %i.ic, %scevgep88
  %bound1 = icmp ult ptr %i.if, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i44.us.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %index ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %wide.load = load <4 x float>, ptr %i.ig, align 4, !alias.scope !1061
  %wide.load89 = load <4 x float>, ptr %i.ih, align 4, !alias.scope !1061
  %i.ii = fadd <4 x float> %wide.load, splat (float 3.840000e+02)
  %i.ij = fadd <4 x float> %wide.load89, splat (float 3.840000e+02)
  %i.ik = bitcast <4 x float> %i.ii to <4 x i32>
  %i.il = bitcast <4 x float> %i.ij to <4 x i32>
  %i.im = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ik, <4 x i32> splat (i32 1136623616))
  %i.in = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.il, <4 x i32> splat (i32 1136623616))
  %i.io = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.im, <4 x i32> splat (i32 1136689151))
  %i.ip = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.in, <4 x i32> splat (i32 1136689151))
  %i.iq = trunc <4 x i32> %i.io to <4 x i16>
  %i.ir = trunc <4 x i32> %i.ip to <4 x i16>
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.ic, i64 %index ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  store <4 x i16> %i.iq, ptr %i.is, align 2, !alias.scope !1062, !noalias !1061
  store <4 x i16> %i.ir, ptr %i.it, align 2, !alias.scope !1062, !noalias !1061
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.iu = icmp eq i64 %index.next, %n.vec
  br i1 %i.iu, label %middle.block, label %vector.body, !llvm.loop !1058

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %copy_samples.exit.loopexit.us, label %.lr.ph.i44.us.preheader

.lr.ph.i44.us.preheader:                          ; preds = %vector.memcheck, %.lr.ph.preheader.i42.us, %middle.block
  %indvars.iv.i45.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i42.us ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i44.us.prol.loopexit, label %.lr.ph.i44.us.prol

.lr.ph.i44.us.prol:                               ; preds = %.lr.ph.i44.us.preheader
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.i45.us.ph
  %i.iw = load float, ptr %i.iv, align 4
  %i.ix = fadd float %i.iw, 3.840000e+02
  %i.iy = bitcast float %i.ix to i32
  %i.iz = tail call i32 @llvm.smax.i32(i32 %i.iy, i32 1136623616)
  %i.ja = tail call i32 @llvm.umin.i32(i32 %i.iz, i32 1136689151)
  %i.jb = trunc i32 %i.ja to i16
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %i.ic, i64 %indvars.iv.i45.us.ph
  store i16 %i.jb, ptr %i.jc, align 2
  %indvars.iv.next.i46.us.prol = or disjoint i64 %indvars.iv.i45.us.ph, 1
  br label %.lr.ph.i44.us.prol.loopexit

.lr.ph.i44.us.prol.loopexit:                      ; preds = %.lr.ph.i44.us.prol, %.lr.ph.i44.us.preheader
  %indvars.iv.i45.us.unr = phi i64 [ %indvars.iv.i45.us.ph, %.lr.ph.i44.us.preheader ], [ %indvars.iv.next.i46.us.prol, %.lr.ph.i44.us.prol ]
  %i.jd = icmp eq i64 %indvars.iv.i45.us.ph, %i.hz
  br i1 %i.jd, label %copy_samples.exit.loopexit.us, label %.lr.ph.i44.us

.lr.ph.i44.us:                                    ; preds = %.lr.ph.i44.us.prol.loopexit, %.lr.ph.i44.us
  %indvars.iv.i45.us = phi i64 [ %indvars.iv.next.i46.us.1, %.lr.ph.i44.us ], [ %indvars.iv.i45.us.unr, %.lr.ph.i44.us.prol.loopexit ] ; 4 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.i45.us
  %i.jf = load float, ptr %i.je, align 4
  %i.jg = fadd float %i.jf, 3.840000e+02
  %i.jh = bitcast float %i.jg to i32
  %i.ji = tail call i32 @llvm.smax.i32(i32 %i.jh, i32 1136623616)
  %i.jj = tail call i32 @llvm.umin.i32(i32 %i.ji, i32 1136689151)
  %i.jk = trunc i32 %i.jj to i16
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %i.ic, i64 %indvars.iv.i45.us
  store i16 %i.jk, ptr %i.jl, align 2
  %indvars.iv.next.i46.us = add nuw nsw i64 %indvars.iv.i45.us, 1 ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.next.i46.us
  %i.jn = load float, ptr %i.jm, align 4
  %i.jo = fadd float %i.jn, 3.840000e+02
  %i.jp = bitcast float %i.jo to i32
  %i.jq = tail call i32 @llvm.smax.i32(i32 %i.jp, i32 1136623616)
  %i.jr = tail call i32 @llvm.umin.i32(i32 %i.jq, i32 1136689151)
  %i.js = trunc i32 %i.jr to i16
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.ic, i64 %indvars.iv.next.i46.us
  store i16 %i.js, ptr %i.jt, align 2
  %indvars.iv.next.i46.us.1 = add nuw nsw i64 %indvars.iv.i45.us, 2 ; 2 uses
  %exitcond.not.i47.us.1 = icmp eq i64 %indvars.iv.next.i46.us.1, %wide.trip.count.i43
  br i1 %exitcond.not.i47.us.1, label %copy_samples.exit.loopexit.us, label %.lr.ph.i44.us, !llvm.loop !1059

copy_samples.exit.loopexit.us:                    ; preds = %.lr.ph.i44.us.prol.loopexit, %.lr.ph.i44.us, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader49, label %.lr.ph.preheader.i42.us

.preheader49:                                     ; preds = %copy_samples.exit.loopexit.us, %.lr.ph, %bb.b
  %.1.lcssa = phi i32 [ 0, %bb.b ], [ %i.hq, %.lr.ph ], [ %i.hq, %copy_samples.exit.loopexit.us ] ; 4 uses
  %i.ju = icmp slt i32 %.1.lcssa, %0
  br i1 %i.ju, label %.lr.ph53, label %.loopexit

.lr.ph53:                                         ; preds = %.preheader49
  %i.jv = sext i32 %2 to i64                      ; 9 uses
end_hunk_0
begin_hunk_1_@convert_samples_short:bb.a
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv62
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 32
  %i.kw = load ptr, ptr %i.kv, align 8
  %i.kx = getelementptr inbounds [2 x i8], ptr %i.kw, i64 %i.jv
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.kx, i8 0, i64 %i.jx, i1 false)
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv62
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 40
  %i.la = load ptr, ptr %i.kz, align 8
  %i.lb = getelementptr inbounds [2 x i8], ptr %i.la, i64 %i.jv
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.lb, i8 0, i64 %i.jx, i1 false)
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv62
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 48
  %i.le = load ptr, ptr %i.ld, align 8
  %i.lf = getelementptr inbounds [2 x i8], ptr %i.le, i64 %i.jv
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.lf, i8 0, i64 %i.jx, i1 false)
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv62
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 56
  %i.li = load ptr, ptr %i.lh, align 8
  %i.lj = getelementptr inbounds [2 x i8], ptr %i.li, i64 %i.jv
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.lj, i8 0, i64 %i.jx, i1 false)
  %indvars.iv.next63.7 = add nuw nsw i64 %indvars.iv62, 8 ; 2 uses
  %i.lk = trunc nuw i64 %indvars.iv.next63.7 to i32
  %i.ll = icmp sgt i32 %0, %i.lk
  br i1 %i.ll, label %.lr.ph53.new, label %.loopexit

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph53.new, %compute_samples.exit.loopexit48.us, %compute_samples.exit.loopexit48.us.1, %compute_samples.exit.loopexit.us.us, %.lr.ph55, %.preheader49, %.preheader
  ret void
}

; Function Attrs: nofree nounwind uwtable
define hidden i32 @stb_vorbis_get_frame_short_interleaved(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  store ptr %2, ptr %i.d, align 8
  %i.e = icmp eq i32 %1, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 @stb_vorbis_get_frame_short(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.d, i32 noundef %3)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #61
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.h = load i8, ptr %i.g, align 4
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %bb.d, label %stb_vorbis_get_frame_float.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.i = call fastcc i32 @vorbis_decode_packet(ptr noundef nonnull %0, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.b)
  %.not24.i = icmp eq i32 %i.i, 0
  br i1 %.not24.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1896
  store i32 0, ptr %i.j, align 8
  br label %stb_vorbis_get_frame_float.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.k = load i32, ptr %i.a, align 4
  %i.l = load i32, ptr %i.c, align 4              ; 4 uses
  %i.m = load i32, ptr %i.b, align 4
  %i.n = tail call fastcc i32 @vorbis_finish_frame(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef %i.l, i32 noundef %i.m) ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load i32, ptr %i.o, align 4              ; 4 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.i, label %stb_vorbis_get_frame_float.exit

.lr.ph.i:                                         ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.s = sext i32 %i.l to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.p to i64  ; 3 uses
  %min.iters.check = icmp eq i32 %i.p, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count.i, 2147483646 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index
  %wide.load = load <2 x ptr>, ptr %i.u, align 8
  %wide.gep = getelementptr inbounds [4 x i8], <2 x ptr> %wide.load, i64 %i.s
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index
  store <2 x ptr> %wide.gep, ptr %i.v, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !1063

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %stb_vorbis_get_frame_float.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.s
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i
  store ptr %i.z, ptr %i.aa, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stb_vorbis_get_frame_float.exit, label %scalar.ph, !llvm.loop !1064

stb_vorbis_get_frame_float.exit.thread:           ; preds = %bb.c, %bb.e
  %.sink30 = phi i64 [ 1892, %bb.e ], [ 156, %bb.c ]
  %.sink = phi i32 [ 0, %bb.e ], [ 2, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %.sink30
  store i32 %.sink, ptr %i.ab, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  br label %bb.j

stb_vorbis_get_frame_float.exit:                  ; preds = %scalar.ph, %middle.block, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1892
  store i32 %i.l, ptr %i.ac, align 4
  %i.ad = add nsw i32 %i.n, %i.l
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1896
  store i32 %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %stb_vorbis_get_frame_float.exit
  %i.ag = mul nsw i32 %i.n, %1
  %i.ah = icmp sgt i32 %i.ag, %3
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = sdiv i32 %3, %1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i32 [ %i.ai, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  tail call fastcc void @convert_channels_short_interleaved(i32 noundef %1, ptr noundef %2, i32 noundef %i.p, ptr noundef nonnull %i.af, i32 noundef 0, i32 noundef %.0)
  br label %bb.j

bb.j:                                             ; preds = %stb_vorbis_get_frame_float.exit.thread, %stb_vorbis_get_frame_float.exit, %bb.i, %bb.b
  %.015 = phi i32 [ %i.f, %bb.b ], [ %.0, %bb.i ], [ 0, %stb_vorbis_get_frame_float.exit ], [ 0, %stb_vorbis_get_frame_float.exit.thread ]
  ret i32 %.015
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @convert_channels_short_interleaved(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #18 {
bb.a:
  %i.a = alloca [32 x float], align 16            ; 27 uses
  %i.b = icmp ne i32 %0, %2
  %i.c = icmp slt i32 %0, 3
  %or.cond = and i1 %i.c, %i.b
  %i.d = icmp slt i32 %2, 7
  %or.cond3 = and i1 %i.d, %or.cond
  br i1 %or.cond3, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %i.e = icmp sgt i32 %0, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.f = icmp sgt i32 %5, 0
  %i.g = sext i32 %2 to i64
  %i.h = getelementptr inbounds [6 x i8], ptr @channel_position, i64 %i.g
  %i.i = zext nneg i32 %5 to i64                  ; 3 uses
  %i.j = sext i32 %4 to i64
  %wide.trip.count.i = zext nneg i32 %2 to i64
  br i1 %i.f, label %.lr.ph.split.us, label %.loopexit

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.k = icmp sgt i32 %2, 0
  br i1 %i.k, label %.lr.ph84.i.us.us, label %.lr.ph84.i.us

.lr.ph84.i.us.us:                                 ; preds = %.lr.ph.split.us, %compute_stereo_samples.exit.loopexit.us.us
  %.03859.us.us = phi i32 [ %i.du, %compute_stereo_samples.exit.loopexit.us.us ], [ 0, %.lr.ph.split.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  br label %.lr.ph78.us.i.us.us

.lr.ph78.us.i.us.us:                              ; preds = %._crit_edge.us.i.us.us, %.lr.ph84.i.us.us
  %indvars.iv86 = phi i32 [ %indvars.iv.next87, %._crit_edge.us.i.us.us ], [ 0, %.lr.ph84.i.us.us ] ; 2 uses
  %indvars.iv109.i.us.us = phi i64 [ %indvars.iv.next110.i.us.us, %._crit_edge.us.i.us.us ], [ 0, %.lr.ph84.i.us.us ] ; 3 uses
  %.05982.us.i.us.us = phi i32 [ %spec.select.us.i.us.us, %._crit_edge.us.i.us.us ], [ 16, %.lr.ph84.i.us.us ] ; 2 uses
  %indvars95 = trunc i64 %indvars.iv109.i.us.us to i32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.l = add i32 %.05982.us.i.us.us, %indvars95   ; 2 uses
  %i.m = icmp sgt i32 %i.l, %5
  %i.n = sub i32 %5, %indvars95
  %spec.select.us.i.us.us = select i1 %i.m, i32 %i.n, i32 %.05982.us.i.us.us ; 3 uses
  %6 = icmp sgt i32 %spec.select.us.i.us.us, 0    ; 3 uses
  %i.o = add nsw i64 %indvars.iv109.i.us.us, %i.j ; 3 uses
  %smin85 = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.l)
  %i.p = add i32 %smin85, %indvars.iv86           ; 5 uses
  %i.q = zext i32 %i.p to i64                     ; 9 uses
  %min.iters.check148 = icmp ult i32 %i.p, 5
  %i.r = and i64 %i.q, 3                          ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = select i1 %i.s, i64 4, i64 %i.r
  %n.vec150 = sub nsw i64 %i.q, %i.t              ; 2 uses
  %min.iters.check136 = icmp ult i32 %i.p, 5
  %i.u = and i64 %i.q, 3                          ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  %i.w = select i1 %i.v, i64 4, i64 %i.u
  %n.vec138 = sub nsw i64 %i.q, %i.w              ; 2 uses
  %min.iters.check124 = icmp ult i32 %i.p, 2
  %n.vec126 = and i64 %i.q, 4294967294            ; 3 uses
  %cmp.n133 = icmp eq i64 %n.vec126, %i.q
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.us.i.us.us, %.lr.ph78.us.i.us.us
  %indvars.iv103.i.us.us = phi i64 [ 0, %.lr.ph78.us.i.us.us ], [ %indvars.iv.next104.i.us.us, %.loopexit.us.i.us.us ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv103.i.us.us
  %i.y = load i8, ptr %i.x, align 1
  %i.z = and i8 %i.y, 6
  switch i8 %i.z, label %.unreachabledefault [
    i8 6, label %.preheader.us.i.us.us
    i8 2, label %.preheader67.us.i.us.us
    i8 4, label %.preheader69.us.i.us.us
    i8 0, label %.loopexit.us.i.us.us
  ]

.preheader69.us.i.us.us:                          ; preds = %bb.b
  br i1 %6, label %.lr.ph.us.i.us.us, label %.loopexit.us.i.us.us

.lr.ph.us.i.us.us:                                ; preds = %.preheader69.us.i.us.us
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv103.i.us.us
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr [4 x i8], ptr %i.ab, i64 %i.o ; 2 uses
  br i1 %min.iters.check148, label %scalar.ph147.preheader, label %vector.body151

vector.body151:                                   ; preds = %.lr.ph.us.i.us.us, %vector.body151
  %index152 = phi i64 [ %index.next156, %vector.body151 ], [ 0, %.lr.ph.us.i.us.us ] ; 6 uses
  %i.ad = getelementptr [4 x i8], ptr %i.ac, i64 %index152
  %wide.load153 = load <4 x float>, ptr %i.ad, align 4
  %i.ae = shl nuw nsw i64 %index152, 3
  %i.af = shl i64 %index152, 3
  %i.ag = shl i64 %index152, 3
  %i.ah = shl i64 %index152, 3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ae
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.af
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 28
  %wide.vec154 = load <8 x float>, ptr %i.am, align 4
  %strided.vec155 = shufflevector <8 x float> %wide.vec154, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.aq = fadd <4 x float> %wide.load153, %strided.vec155 ; 4 uses
  %i.ar = extractelement <4 x float> %i.aq, i64 0
  store float %i.ar, ptr %i.am, align 4
  %i.as = extractelement <4 x float> %i.aq, i64 1
  store float %i.as, ptr %i.an, align 4
  %i.at = extractelement <4 x float> %i.aq, i64 2
  store float %i.at, ptr %i.ao, align 4
  %i.au = extractelement <4 x float> %i.aq, i64 3
  store float %i.au, ptr %i.ap, align 4
  %index.next156 = add nuw i64 %index152, 4       ; 2 uses
  %i.av = icmp eq i64 %index.next156, %n.vec150
  br i1 %i.av, label %scalar.ph147.preheader, label %vector.body151, !llvm.loop !1065

scalar.ph147.preheader:                           ; preds = %vector.body151, %.lr.ph.us.i.us.us
  %indvars.iv94.i.us.us.ph = phi i64 [ 0, %.lr.ph.us.i.us.us ], [ %n.vec150, %vector.body151 ]
  br label %scalar.ph147

scalar.ph147:                                     ; preds = %scalar.ph147.preheader, %scalar.ph147
  %indvars.iv94.i.us.us = phi i64 [ %indvars.iv.next95.i.us.us, %scalar.ph147 ], [ %indvars.iv94.i.us.us.ph, %scalar.ph147.preheader ] ; 3 uses
  %i.aw = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv94.i.us.us
  %i.ax = load float, ptr %i.aw, align 4
  %.idx.i.us.us = shl nuw nsw i64 %indvars.iv94.i.us.us, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i.us.us
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 2 uses
  %i.ba = load float, ptr %i.az, align 4
  %i.bb = fadd float %i.ax, %i.ba
  store float %i.bb, ptr %i.az, align 4
  %indvars.iv.next95.i.us.us = add nuw nsw i64 %indvars.iv94.i.us.us, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next95.i.us.us, %i.q
  br i1 %exitcond88.not, label %.loopexit.us.i.us.us, label %scalar.ph147, !llvm.loop !1066

.preheader67.us.i.us.us:                          ; preds = %bb.b
  br i1 %6, label %.lr.ph74.us.i.us.us, label %.loopexit.us.i.us.us

.lr.ph74.us.i.us.us:                              ; preds = %.preheader67.us.i.us.us
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv103.i.us.us
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %i.o ; 2 uses
  br i1 %min.iters.check136, label %scalar.ph135.preheader, label %vector.body139

vector.body139:                                   ; preds = %.lr.ph74.us.i.us.us, %vector.body139
  %index140 = phi i64 [ %index.next144, %vector.body139 ], [ 0, %.lr.ph74.us.i.us.us ] ; 6 uses
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %index140
  %wide.load141 = load <4 x float>, ptr %i.bf, align 4
  %i.bg = shl nuw nsw i64 %index140, 3
  %i.bh = shl i64 %index140, 3
  %i.bi = shl i64 %index140, 3
  %i.bj = shl i64 %index140, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bg ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bh
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bi
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bj
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %wide.vec142 = load <8 x float>, ptr %i.bk, align 16
  %strided.vec143 = shufflevector <8 x float> %wide.vec142, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.br = fadd <4 x float> %wide.load141, %strided.vec143 ; 4 uses
  %i.bs = extractelement <4 x float> %i.br, i64 0
  store float %i.bs, ptr %i.bk, align 16
  %i.bt = extractelement <4 x float> %i.br, i64 1
  store float %i.bt, ptr %i.bm, align 8
  %i.bu = extractelement <4 x float> %i.br, i64 2
  store float %i.bu, ptr %i.bo, align 16
  %i.bv = extractelement <4 x float> %i.br, i64 3
  store float %i.bv, ptr %i.bq, align 8
  %index.next144 = add nuw i64 %index140, 4       ; 2 uses
  %i.bw = icmp eq i64 %index.next144, %n.vec138
  br i1 %i.bw, label %scalar.ph135.preheader, label %vector.body139, !llvm.loop !1067

scalar.ph135.preheader:                           ; preds = %vector.body139, %.lr.ph74.us.i.us.us
  %indvars.iv97.i.us.us.ph = phi i64 [ 0, %.lr.ph74.us.i.us.us ], [ %n.vec138, %vector.body139 ]
  br label %scalar.ph135

scalar.ph135:                                     ; preds = %scalar.ph135.preheader, %scalar.ph135
  %indvars.iv97.i.us.us = phi i64 [ %indvars.iv.next98.i.us.us, %scalar.ph135 ], [ %indvars.iv97.i.us.us.ph, %scalar.ph135.preheader ] ; 3 uses
  %i.bx = getelementptr [4 x i8], ptr %i.be, i64 %indvars.iv97.i.us.us
  %i.by = load float, ptr %i.bx, align 4
  %.idx115.i.us.us = shl nuw nsw i64 %indvars.iv97.i.us.us, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx115.i.us.us ; 2 uses
  %i.ca = load float, ptr %i.bz, align 8
  %i.cb = fadd float %i.by, %i.ca
  store float %i.cb, ptr %i.bz, align 8
  %indvars.iv.next98.i.us.us = add nuw nsw i64 %indvars.iv97.i.us.us, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next98.i.us.us, %i.q
  br i1 %exitcond90.not, label %.loopexit.us.i.us.us, label %scalar.ph135, !llvm.loop !1068

.preheader.us.i.us.us:                            ; preds = %bb.b
  br i1 %6, label %.lr.ph76.us.i.us.us, label %.loopexit.us.i.us.us

.lr.ph76.us.i.us.us:                              ; preds = %.preheader.us.i.us.us
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv103.i.us.us
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr [4 x i8], ptr %i.cd, i64 %i.o ; 2 uses
  br i1 %min.iters.check124, label %scalar.ph123.preheader, label %vector.body127

vector.body127:                                   ; preds = %.lr.ph76.us.i.us.us, %vector.body127
  %index128 = phi i64 [ %index.next131, %vector.body127 ], [ 0, %.lr.ph76.us.i.us.us ] ; 3 uses
  %i.cf = getelementptr [4 x i8], ptr %i.ce, i64 %index128
  %wide.load129 = load <2 x float>, ptr %i.cf, align 4
  %i.cg = shl nuw nsw i64 %index128, 3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cg ; 2 uses
  %wide.vec = load <4 x float>, ptr %i.ch, align 16
  %i.ci = shufflevector <2 x float> %wide.load129, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %interleaved.vec = fadd <4 x float> %i.ci, %wide.vec
  store <4 x float> %interleaved.vec, ptr %i.ch, align 16
  %index.next131 = add nuw i64 %index128, 2       ; 2 uses
  %i.cj = icmp eq i64 %index.next131, %n.vec126
  br i1 %i.cj, label %middle.block132, label %vector.body127, !llvm.loop !1069

middle.block132:                                  ; preds = %vector.body127
  br i1 %cmp.n133, label %.loopexit.us.i.us.us, label %scalar.ph123.preheader

scalar.ph123.preheader:                           ; preds = %.lr.ph76.us.i.us.us, %middle.block132
  %indvars.iv100.i.us.us.ph = phi i64 [ 0, %.lr.ph76.us.i.us.us ], [ %n.vec126, %middle.block132 ]
  br label %scalar.ph123

scalar.ph123:                                     ; preds = %scalar.ph123.preheader, %scalar.ph123
  %indvars.iv100.i.us.us = phi i64 [ %indvars.iv.next101.i.us.us, %scalar.ph123 ], [ %indvars.iv100.i.us.us.ph, %scalar.ph123.preheader ] ; 3 uses
  %i.ck = getelementptr [4 x i8], ptr %i.ce, i64 %indvars.iv100.i.us.us
  %i.cl = load float, ptr %i.ck, align 4
  %.idx116.i.us.us = shl nuw nsw i64 %indvars.iv100.i.us.us, 3
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx116.i.us.us ; 2 uses
  %i.cn = load <2 x float>, ptr %i.cm, align 8
  %i.co = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = fadd <2 x float> %i.cp, %i.cn
  store <2 x float> %i.cq, ptr %i.cm, align 8
  %indvars.iv.next101.i.us.us = add nuw nsw i64 %indvars.iv100.i.us.us, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next101.i.us.us, %i.q
  br i1 %exitcond92.not, label %.loopexit.us.i.us.us, label %scalar.ph123, !llvm.loop !1070

.loopexit.us.i.us.us:                             ; preds = %scalar.ph147, %scalar.ph135, %scalar.ph123, %middle.block132, %.preheader.us.i.us.us, %.preheader67.us.i.us.us, %.preheader69.us.i.us.us, %bb.b
  %indvars.iv.next104.i.us.us = add nuw nsw i64 %indvars.iv103.i.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next104.i.us.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us, label %..preheader71_crit_edge.us.i.us.us, label %bb.b

..preheader71_crit_edge.us.i.us.us:               ; preds = %.loopexit.us.i.us.us
  %i.cr = shl nuw i32 %spec.select.us.i.us.us, 1
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %.lr.ph80.us.preheader.i.us.us, label %._crit_edge.us.i.us.us

.lr.ph80.us.preheader.i.us.us:                    ; preds = %..preheader71_crit_edge.us.i.us.us
  %i.ct = shl nuw i32 %indvars95, 1
  %i.cu = sext i32 %i.ct to i64
  %invariant.gep120.i.us.us = getelementptr [2 x i8], ptr %1, i64 %i.cu ; 2 uses
  %i.cv = shl i32 %i.p, 1                         ; 2 uses
  %i.cw = zext i32 %i.cv to i64                   ; 3 uses
  %min.iters.check112 = icmp ult i32 %i.cv, 8
  br i1 %min.iters.check112, label %.lr.ph80.us.i.us.us.preheader, label %vector.ph113

vector.ph113:                                     ; preds = %.lr.ph80.us.preheader.i.us.us
  %n.vec114 = and i64 %i.cw, 4294967288           ; 3 uses
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph113
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next119, %vector.body115 ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index116 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load117 = load <4 x float>, ptr %i.cx, align 16
  %wide.load118 = load <4 x float>, ptr %i.cy, align 16
  %i.cz = fadd <4 x float> %wide.load117, splat (float 3.840000e+02)
  %i.da = fadd <4 x float> %wide.load118, splat (float 3.840000e+02)
  %i.db = bitcast <4 x float> %i.cz to <4 x i32>
  %i.dc = bitcast <4 x float> %i.da to <4 x i32>
  %i.dd = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.db, <4 x i32> splat (i32 1136623616))
  %i.de = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dc, <4 x i32> splat (i32 1136623616))
  %i.df = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.dd, <4 x i32> splat (i32 1136689151))
  %i.dg = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.de, <4 x i32> splat (i32 1136689151))
  %i.dh = trunc <4 x i32> %i.df to <4 x i16>
  %i.di = trunc <4 x i32> %i.dg to <4 x i16>
  %i.dj = getelementptr [2 x i8], ptr %invariant.gep120.i.us.us, i64 %index116 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  store <4 x i16> %i.dh, ptr %i.dj, align 2
  store <4 x i16> %i.di, ptr %i.dk, align 2
  %index.next119 = add nuw i64 %index116, 8       ; 2 uses
  %i.dl = icmp eq i64 %index.next119, %n.vec114
  br i1 %i.dl, label %middle.block120, label %vector.body115, !llvm.loop !1071

middle.block120:                                  ; preds = %vector.body115
  %cmp.n121 = icmp eq i64 %n.vec114, %i.cw
  br i1 %cmp.n121, label %._crit_edge.us.i.us.us, label %.lr.ph80.us.i.us.us.preheader

.lr.ph80.us.i.us.us.preheader:                    ; preds = %.lr.ph80.us.preheader.i.us.us, %middle.block120
  %indvars.iv106.i.us.us.ph = phi i64 [ 0, %.lr.ph80.us.preheader.i.us.us ], [ %n.vec114, %middle.block120 ]
  br label %.lr.ph80.us.i.us.us

.lr.ph80.us.i.us.us:                              ; preds = %.lr.ph80.us.i.us.us.preheader, %.lr.ph80.us.i.us.us
  %indvars.iv106.i.us.us = phi i64 [ %indvars.iv.next107.i.us.us, %.lr.ph80.us.i.us.us ], [ %indvars.iv106.i.us.us.ph, %.lr.ph80.us.i.us.us.preheader ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv106.i.us.us
  %i.dn = load float, ptr %i.dm, align 4
  %i.do = fadd float %i.dn, 3.840000e+02
  %i.dp = bitcast float %i.do to i32
  %i.dq = tail call i32 @llvm.smax.i32(i32 %i.dp, i32 1136623616)
  %i.dr = tail call i32 @llvm.umin.i32(i32 %i.dq, i32 1136689151)
  %i.ds = trunc i32 %i.dr to i16
  %gep121.i.us.us = getelementptr [2 x i8], ptr %invariant.gep120.i.us.us, i64 %indvars.iv106.i.us.us
  store i16 %i.ds, ptr %gep121.i.us.us, align 2
  %indvars.iv.next107.i.us.us = add nuw nsw i64 %indvars.iv106.i.us.us, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next107.i.us.us, %i.cw
  br i1 %exitcond94.not, label %._crit_edge.us.i.us.us, label %.lr.ph80.us.i.us.us, !llvm.loop !1072

._crit_edge.us.i.us.us:                           ; preds = %.lr.ph80.us.i.us.us, %middle.block120, %..preheader71_crit_edge.us.i.us.us
  %indvars.iv.next110.i.us.us = add nuw nsw i64 %indvars.iv109.i.us.us, 16 ; 2 uses
  %i.dt = icmp samesign ult i64 %indvars.iv.next110.i.us.us, %i.i
  %indvars.iv.next87 = add i32 %indvars.iv86, -16
  br i1 %i.dt, label %.lr.ph78.us.i.us.us, label %compute_stereo_samples.exit.loopexit.us.us

compute_stereo_samples.exit.loopexit.us.us:       ; preds = %._crit_edge.us.i.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  %i.du = add nuw nsw i32 %.03859.us.us, 1        ; 2 uses
  %exitcond96.not = icmp eq i32 %i.du, %0
  br i1 %exitcond96.not, label %.loopexit, label %.lr.ph84.i.us.us

.unreachabledefault:                              ; preds = %bb.b
  unreachable

.lr.ph84.i.us:                                    ; preds = %.lr.ph.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  br label %.preheader71.i.us

.preheader71.i.us:                                ; preds = %._crit_edge.i.us, %.lr.ph84.i.us
  %indvars.iv78 = phi i32 [ %indvars.iv.next79, %._crit_edge.i.us ], [ 0, %.lr.ph84.i.us ] ; 2 uses
  %indvars.iv91.i.us = phi i64 [ %indvars.iv.next92.i.us, %._crit_edge.i.us ], [ 0, %.lr.ph84.i.us ] ; 2 uses
  %.05982.i.us = phi i32 [ %spec.select.i.us, %._crit_edge.i.us ], [ 16, %.lr.ph84.i.us ] ; 2 uses
  %indvars81 = trunc i64 %indvars.iv91.i.us to i32 ; 3 uses
  %i.dv = add nsw i32 %.05982.i.us, %indvars81    ; 2 uses
  %i.dw = icmp sgt i32 %i.dv, %5
  %i.dx = sub i32 %5, %indvars81
  %spec.select.i.us = select i1 %i.dw, i32 %i.dx, i32 %.05982.i.us ; 2 uses
  %i.dy = shl nuw i32 %spec.select.i.us, 1
  %i.dz = icmp sgt i32 %i.dy, 0
  br i1 %i.dz, label %.lr.ph80.preheader.i.us, label %._crit_edge.i.us

.lr.ph80.preheader.i.us:                          ; preds = %.preheader71.i.us
  %i.ea = shl nuw i32 %indvars81, 1
  %i.eb = sext i32 %i.ea to i64
  %invariant.gep.i.us = getelementptr [2 x i8], ptr %1, i64 %i.eb ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.dv)
  %i.ec = add i32 %smin, %indvars.iv78            ; 2 uses
  %i.ed = zext i32 %i.ec to i64
  %i.ee = shl nuw nsw i64 %i.ed, 1                ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ee, i64 1) ; 2 uses
  %min.iters.check = icmp ult i32 %i.ec, 4
  br i1 %min.iters.check, label %.lr.ph80.i.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph80.preheader.i.us
  %n.vec = and i64 %umax, 8589934584              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %wide.load = load <4 x float>, ptr %i.ef, align 16
  %wide.load110 = load <4 x float>, ptr %i.eg, align 16
  %i.eh = fadd <4 x float> %wide.load, splat (float 3.840000e+02)
  %i.ei = fadd <4 x float> %wide.load110, splat (float 3.840000e+02)
  %i.ej = bitcast <4 x float> %i.eh to <4 x i32>
  %i.ek = bitcast <4 x float> %i.ei to <4 x i32>
  %i.el = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ej, <4 x i32> splat (i32 1136623616))
  %i.em = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ek, <4 x i32> splat (i32 1136623616))
  %i.en = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.el, <4 x i32> splat (i32 1136689151))
  %i.eo = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.em, <4 x i32> splat (i32 1136689151))
  %i.ep = trunc <4 x i32> %i.en to <4 x i16>
  %i.eq = trunc <4 x i32> %i.eo to <4 x i16>
  %i.er = getelementptr [2 x i8], ptr %invariant.gep.i.us, i64 %index ; 2 uses
  %i.es = getelementptr i8, ptr %i.er, i64 8
  store <4 x i16> %i.ep, ptr %i.er, align 2
  store <4 x i16> %i.eq, ptr %i.es, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %middle.block, label %vector.body, !llvm.loop !1073

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ee, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.us, label %.lr.ph80.i.us.preheader

.lr.ph80.i.us.preheader:                          ; preds = %.lr.ph80.preheader.i.us, %middle.block
  %indvars.iv.i.us.ph = phi i64 [ 0, %.lr.ph80.preheader.i.us ], [ %n.vec, %middle.block ]
  br label %.lr.ph80.i.us

.lr.ph80.i.us:                                    ; preds = %.lr.ph80.i.us.preheader, %.lr.ph80.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.lr.ph80.i.us ], [ %indvars.iv.i.us.ph, %.lr.ph80.i.us.preheader ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.us
  %i.ev = load float, ptr %i.eu, align 4
  %i.ew = fadd float %i.ev, 3.840000e+02
  %i.ex = bitcast float %i.ew to i32
end_hunk_1
begin_hunk_2_@jar_xm_update_frequency:bb.a
.split.i:                                         ; preds = %.loopexit1.i
  %i.ct = icmp slt i8 %.249.i, 0
  br i1 %i.ct, label %.split.split.us.preheader.i, label %.split.split.preheader.i

.split.split.preheader.i:                         ; preds = %.split.i, %bb.i
  %i.cu = fcmp ult float %i.b, 1.616000e+03
  %i.cv = fcmp ugt float %i.b, 1.712000e+03
  %or.cond.i = or i1 %i.cu, %i.cv
  br i1 %or.cond.i, label %.split.split.1.i, label %.split9.us.i

.split.split.us.preheader.i:                      ; preds = %.split.i
  %i.cw = shl i32 1712, %.pre-phi13
  %i.cx = trunc i32 %i.cw to i16                  ; 2 uses
  %i.cy = shl i32 1616, %.pre-phi13               ; 2 uses
  %i.cz = trunc i32 %i.cy to i16                  ; 2 uses
  %i.da = uitofp i16 %i.cz to float               ; 2 uses
  %i.db = fcmp ult float %i.b, %i.da
  %i.dc = uitofp i16 %i.cx to float
  %i.dd = fcmp ugt float %i.b, %i.dc
  %or.cond.us17.i = select i1 %i.db, i1 true, i1 %i.dd
  br i1 %or.cond.us17.i, label %.split.split.us.1.i, label %.split9.us.i

.split.split.us.1.i:                              ; preds = %.split.split.us.preheader.i
  %i.de = shl i32 1525, %.pre-phi13               ; 2 uses
  %i.df = trunc i32 %i.de to i16                  ; 2 uses
  %i.dg = uitofp i16 %i.df to float               ; 2 uses
  %i.dh = fcmp ult float %i.b, %i.dg
  %i.di = fcmp ugt float %i.b, %i.da
  %or.cond.us17.1.i = or i1 %i.dh, %i.di
  br i1 %or.cond.us17.1.i, label %.split.split.us.2.i, label %.split9.us.i

.split.split.us.2.i:                              ; preds = %.split.split.us.1.i
  %i.dj = shl i32 1440, %.pre-phi13               ; 2 uses
  %i.dk = trunc i32 %i.dj to i16                  ; 2 uses
  %i.dl = uitofp i16 %i.dk to float               ; 2 uses
  %i.dm = fcmp ult float %i.b, %i.dl
  %i.dn = fcmp ugt float %i.b, %i.dg
  %or.cond.us17.2.i = or i1 %i.dm, %i.dn
  br i1 %or.cond.us17.2.i, label %.split.split.us.3.i, label %.split9.us.i

.split.split.us.3.i:                              ; preds = %.split.split.us.2.i
  %i.do = shl i32 1357, %.pre-phi13               ; 2 uses
  %i.dp = trunc i32 %i.do to i16                  ; 2 uses
  %i.dq = uitofp i16 %i.dp to float               ; 2 uses
  %i.dr = fcmp ult float %i.b, %i.dq
  %i.ds = fcmp ugt float %i.b, %i.dl
  %or.cond.us17.3.i = or i1 %i.dr, %i.ds
  br i1 %or.cond.us17.3.i, label %.split.split.us.4.i, label %.split9.us.i

.split.split.us.4.i:                              ; preds = %.split.split.us.3.i
  %i.dt = shl i32 1281, %.pre-phi13               ; 2 uses
  %i.du = trunc i32 %i.dt to i16                  ; 2 uses
  %i.dv = uitofp i16 %i.du to float               ; 2 uses
  %i.dw = fcmp ult float %i.b, %i.dv
  %i.dx = fcmp ugt float %i.b, %i.dq
  %or.cond.us17.4.i = or i1 %i.dw, %i.dx
  br i1 %or.cond.us17.4.i, label %.split.split.us.5.i, label %.split9.us.i

.split.split.us.5.i:                              ; preds = %.split.split.us.4.i
  %i.dy = shl i32 1209, %.pre-phi13               ; 2 uses
  %i.dz = trunc i32 %i.dy to i16                  ; 2 uses
  %i.ea = uitofp i16 %i.dz to float               ; 2 uses
  %i.eb = fcmp ult float %i.b, %i.ea
  %i.ec = fcmp ugt float %i.b, %i.dv
  %or.cond.us17.5.i = or i1 %i.eb, %i.ec
  br i1 %or.cond.us17.5.i, label %.split.split.us.6.i, label %.split9.us.i

.split.split.us.6.i:                              ; preds = %.split.split.us.5.i
  %i.ed = shl i32 1141, %.pre-phi13               ; 2 uses
  %i.ee = trunc i32 %i.ed to i16                  ; 2 uses
  %i.ef = uitofp i16 %i.ee to float               ; 2 uses
  %i.eg = fcmp ult float %i.b, %i.ef
  %i.eh = fcmp ugt float %i.b, %i.ea
  %or.cond.us17.6.i = or i1 %i.eg, %i.eh
  br i1 %or.cond.us17.6.i, label %.split.split.us.7.i, label %.split9.us.i

.split.split.us.7.i:                              ; preds = %.split.split.us.6.i
  %i.ei = shl i32 1077, %.pre-phi13               ; 2 uses
  %i.ej = trunc i32 %i.ei to i16                  ; 2 uses
  %i.ek = uitofp i16 %i.ej to float               ; 2 uses
  %i.el = fcmp ult float %i.b, %i.ek
  %i.em = fcmp ugt float %i.b, %i.ef
  %or.cond.us17.7.i = or i1 %i.el, %i.em
  br i1 %or.cond.us17.7.i, label %.split.split.us.8.i, label %.split9.us.i

.split.split.us.8.i:                              ; preds = %.split.split.us.7.i
  %i.en = shl i32 1017, %.pre-phi13               ; 2 uses
  %i.eo = trunc i32 %i.en to i16                  ; 2 uses
  %i.ep = uitofp i16 %i.eo to float               ; 2 uses
  %i.eq = fcmp ult float %i.b, %i.ep
  %i.er = fcmp ugt float %i.b, %i.ek
  %or.cond.us17.8.i = or i1 %i.eq, %i.er
  br i1 %or.cond.us17.8.i, label %.split.split.us.9.i, label %.split9.us.i

.split.split.us.9.i:                              ; preds = %.split.split.us.8.i
  %i.es = shl i32 961, %.pre-phi13                ; 2 uses
  %i.et = trunc i32 %i.es to i16                  ; 2 uses
  %i.eu = uitofp i16 %i.et to float               ; 2 uses
  %i.ev = fcmp ult float %i.b, %i.eu
  %i.ew = fcmp ugt float %i.b, %i.ep
  %or.cond.us17.9.i = or i1 %i.ev, %i.ew
  br i1 %or.cond.us17.9.i, label %.split.split.us.10.i, label %.split9.us.i

.split.split.us.10.i:                             ; preds = %.split.split.us.9.i
  %i.ex = shl i32 907, %.pre-phi13                ; 2 uses
  %i.ey = trunc i32 %i.ex to i16                  ; 3 uses
  %i.ez = uitofp i16 %i.ey to float               ; 2 uses
  %i.fa = fcmp ult float %i.b, %i.ez
  %i.fb = fcmp ugt float %i.b, %i.eu
  %or.cond.us17.10.i = or i1 %i.fa, %i.fb
  br i1 %or.cond.us17.10.i, label %.split.split.us.11.i, label %.split9.us.i

.split.split.us.11.i:                             ; preds = %.split.split.us.10.i
  %i.fc = shl i32 856, %.pre-phi13                ; 3 uses
  %i.fd = trunc i32 %i.fc to i16
  %i.fe = uitofp i16 %i.fd to float
  %i.ff = fcmp ult float %i.b, %i.fe
  %i.fg = fcmp ugt float %i.b, %i.ez
  %or.cond.us17.11.i = or i1 %i.ff, %i.fg
  br i1 %or.cond.us17.11.i, label %.loopexit.i, label %.split9.us.i

.split9.us.i:                                     ; preds = %.split.split.11.i, %.split.split.10.i, %.split.split.9.i, %.split.split.8.i, %.split.split.7.i, %.split.split.6.i, %.split.split.5.i, %.split.split.4.i, %.split.split.3.i, %.split.split.2.i, %.split.split.1.i, %.split.split.us.11.i, %.split.split.us.10.i, %.split.split.us.9.i, %.split.split.us.8.i, %.split.split.us.7.i, %.split.split.us.6.i, %.split.split.us.5.i, %.split.split.us.4.i, %.split.split.us.3.i, %.split.split.us.2.i, %.split.split.us.1.i, %.split.split.us.preheader.i, %.split.split.preheader.i, %.split.us.11.i, %.split.us.10.i, %.split.us.9.i, %.split.us.8.i, %.split.us.7.i, %.split.us.6.i, %.split.us.5.i, %.split.us.4.i, %.split.us.3.i, %.split.us.2.i, %.split.us.1.i, %.split.us.preheader.i
  %i.fh = phi i32 [ %.pre-phi, %.split.us.preheader.i ], [ %.pre-phi, %.split.split.us.preheader.i ], [ %.pre-phi, %.split.us.11.i ], [ %.pre-phi, %.split.us.10.i ], [ %.pre-phi, %.split.us.9.i ], [ %.pre-phi, %.split.us.8.i ], [ %.pre-phi, %.split.us.7.i ], [ %.pre-phi, %.split.us.6.i ], [ %.pre-phi, %.split.us.5.i ], [ %.pre-phi, %.split.us.4.i ], [ %.pre-phi, %.split.us.3.i ], [ %.pre-phi, %.split.us.2.i ], [ %.pre-phi, %.split.us.1.i ], [ %.pre-phi, %.split.split.us.11.i ], [ %.pre-phi, %.split.split.us.10.i ], [ %.pre-phi, %.split.split.us.9.i ], [ %.pre-phi, %.split.split.us.8.i ], [ %.pre-phi, %.split.split.us.7.i ], [ %.pre-phi, %.split.split.us.6.i ], [ %.pre-phi, %.split.split.us.5.i ], [ %.pre-phi, %.split.split.us.4.i ], [ %.pre-phi, %.split.split.us.3.i ], [ %.pre-phi, %.split.split.us.2.i ], [ %.pre-phi, %.split.split.us.1.i ], [ 0, %.split.split.11.i ], [ 0, %.split.split.10.i ], [ 0, %.split.split.9.i ], [ 0, %.split.split.8.i ], [ 0, %.split.split.7.i ], [ 0, %.split.split.6.i ], [ 0, %.split.split.5.i ], [ 0, %.split.split.4.i ], [ 0, %.split.split.3.i ], [ 0, %.split.split.2.i ], [ 0, %.split.split.1.i ], [ 0, %.split.split.preheader.i ]
  %.us-phi.i = phi i16 [ %i.aj, %.split.us.preheader.i ], [ %i.cx, %.split.split.us.preheader.i ], [ %i.ck, %.split.us.11.i ], [ %i.cf, %.split.us.10.i ], [ %i.ca, %.split.us.9.i ], [ %i.bv, %.split.us.8.i ], [ %i.bq, %.split.us.7.i ], [ %i.bl, %.split.us.6.i ], [ %i.bg, %.split.us.5.i ], [ %i.bb, %.split.us.4.i ], [ %i.aw, %.split.us.3.i ], [ %i.ar, %.split.us.2.i ], [ %i.al, %.split.us.1.i ], [ %i.ey, %.split.split.us.11.i ], [ %i.et, %.split.split.us.10.i ], [ %i.eo, %.split.split.us.9.i ], [ %i.ej, %.split.split.us.8.i ], [ %i.ee, %.split.split.us.7.i ], [ %i.dz, %.split.split.us.6.i ], [ %i.du, %.split.split.us.5.i ], [ %i.dp, %.split.split.us.4.i ], [ %i.dk, %.split.split.us.3.i ], [ %i.df, %.split.split.us.2.i ], [ %i.cz, %.split.split.us.1.i ], [ 907, %.split.split.11.i ], [ 961, %.split.split.10.i ], [ 1017, %.split.split.9.i ], [ 1077, %.split.split.8.i ], [ 1141, %.split.split.7.i ], [ 1209, %.split.split.6.i ], [ 1281, %.split.split.5.i ], [ 1357, %.split.split.4.i ], [ 1440, %.split.split.3.i ], [ 1525, %.split.split.2.i ], [ 1616, %.split.split.1.i ], [ 1712, %.split.split.preheader.i ]
  %.us-phi10.i = phi i32 [ %i.ak, %.split.us.preheader.i ], [ %i.cy, %.split.split.us.preheader.i ], [ %i.co, %.split.us.11.i ], [ %i.cj, %.split.us.10.i ], [ %i.ce, %.split.us.9.i ], [ %i.bz, %.split.us.8.i ], [ %i.bu, %.split.us.7.i ], [ %i.bp, %.split.us.6.i ], [ %i.bk, %.split.us.5.i ], [ %i.bf, %.split.us.4.i ], [ %i.ba, %.split.us.3.i ], [ %i.av, %.split.us.2.i ], [ %i.aq, %.split.us.1.i ], [ %i.fc, %.split.split.us.11.i ], [ %i.ex, %.split.split.us.10.i ], [ %i.es, %.split.split.us.9.i ], [ %i.en, %.split.split.us.8.i ], [ %i.ei, %.split.split.us.7.i ], [ %i.ed, %.split.split.us.6.i ], [ %i.dy, %.split.split.us.5.i ], [ %i.dt, %.split.split.us.4.i ], [ %i.do, %.split.split.us.3.i ], [ %i.dj, %.split.split.us.2.i ], [ %i.de, %.split.split.us.1.i ], [ 856, %.split.split.11.i ], [ 907, %.split.split.10.i ], [ 961, %.split.split.9.i ], [ 1017, %.split.split.8.i ], [ 1077, %.split.split.7.i ], [ 1141, %.split.split.6.i ], [ 1209, %.split.split.5.i ], [ 1281, %.split.split.4.i ], [ 1357, %.split.split.3.i ], [ 1440, %.split.split.2.i ], [ 1525, %.split.split.1.i ], [ 1616, %.split.split.preheader.i ]
  %.us-phi11.i = phi float [ 0.000000e+00, %.split.us.preheader.i ], [ 0.000000e+00, %.split.split.us.preheader.i ], [ 1.100000e+01, %.split.us.11.i ], [ 1.000000e+01, %.split.us.10.i ], [ 9.000000e+00, %.split.us.9.i ], [ 8.000000e+00, %.split.us.8.i ], [ 7.000000e+00, %.split.us.7.i ], [ 6.000000e+00, %.split.us.6.i ], [ 5.000000e+00, %.split.us.5.i ], [ 4.000000e+00, %.split.us.4.i ], [ 3.000000e+00, %.split.us.3.i ], [ 2.000000e+00, %.split.us.2.i ], [ 1.000000e+00, %.split.us.1.i ], [ 1.100000e+01, %.split.split.us.11.i ], [ 1.000000e+01, %.split.split.us.10.i ], [ 9.000000e+00, %.split.split.us.9.i ], [ 8.000000e+00, %.split.split.us.8.i ], [ 7.000000e+00, %.split.split.us.7.i ], [ 6.000000e+00, %.split.split.us.6.i ], [ 5.000000e+00, %.split.split.us.5.i ], [ 4.000000e+00, %.split.split.us.4.i ], [ 3.000000e+00, %.split.split.us.3.i ], [ 2.000000e+00, %.split.split.us.2.i ], [ 1.000000e+00, %.split.split.us.1.i ], [ 1.100000e+01, %.split.split.11.i ], [ 1.000000e+01, %.split.split.10.i ], [ 9.000000e+00, %.split.split.9.i ], [ 8.000000e+00, %.split.split.8.i ], [ 7.000000e+00, %.split.split.7.i ], [ 6.000000e+00, %.split.split.6.i ], [ 5.000000e+00, %.split.split.5.i ], [ 4.000000e+00, %.split.split.4.i ], [ 3.000000e+00, %.split.split.3.i ], [ 2.000000e+00, %.split.split.2.i ], [ 1.000000e+00, %.split.split.1.i ], [ 0.000000e+00, %.split.split.preheader.i ]
  br label %.loopexit.i

.split.split.1.i:                                 ; preds = %.split.split.preheader.i
  %i.fi = fcmp ult float %i.b, 1.525000e+03
  %i.fj = fcmp ugt float %i.b, 1.616000e+03
  %or.cond.1.i = or i1 %i.fi, %i.fj
  br i1 %or.cond.1.i, label %.split.split.2.i, label %.split9.us.i

.split.split.2.i:                                 ; preds = %.split.split.1.i
  %i.fk = fcmp ult float %i.b, 1.440000e+03
  %i.fl = fcmp ugt float %i.b, 1.525000e+03
  %or.cond.2.i = or i1 %i.fk, %i.fl
  br i1 %or.cond.2.i, label %.split.split.3.i, label %.split9.us.i

.split.split.3.i:                                 ; preds = %.split.split.2.i
  %i.fm = fcmp ult float %i.b, 1.357000e+03
  %i.fn = fcmp ugt float %i.b, 1.440000e+03
  %or.cond.3.i = or i1 %i.fm, %i.fn
  br i1 %or.cond.3.i, label %.split.split.4.i, label %.split9.us.i

.split.split.4.i:                                 ; preds = %.split.split.3.i
  %i.fo = fcmp ult float %i.b, 1.281000e+03
  %i.fp = fcmp ugt float %i.b, 1.357000e+03
  %or.cond.4.i = or i1 %i.fo, %i.fp
  br i1 %or.cond.4.i, label %.split.split.5.i, label %.split9.us.i

.split.split.5.i:                                 ; preds = %.split.split.4.i
  %i.fq = fcmp ult float %i.b, 1.209000e+03
  %i.fr = fcmp ugt float %i.b, 1.281000e+03
  %or.cond.5.i = or i1 %i.fq, %i.fr
  br i1 %or.cond.5.i, label %.split.split.6.i, label %.split9.us.i

.split.split.6.i:                                 ; preds = %.split.split.5.i
  %i.fs = fcmp ult float %i.b, 1.141000e+03
  %i.ft = fcmp ugt float %i.b, 1.209000e+03
  %or.cond.6.i = or i1 %i.fs, %i.ft
  br i1 %or.cond.6.i, label %.split.split.7.i, label %.split9.us.i

.split.split.7.i:                                 ; preds = %.split.split.6.i
  %i.fu = fcmp ult float %i.b, 1.077000e+03
  %i.fv = fcmp ugt float %i.b, 1.141000e+03
  %or.cond.7.i = or i1 %i.fu, %i.fv
  br i1 %or.cond.7.i, label %.split.split.8.i, label %.split9.us.i

.split.split.8.i:                                 ; preds = %.split.split.7.i
  %i.fw = fcmp ult float %i.b, 1.017000e+03
  %i.fx = fcmp ugt float %i.b, 1.077000e+03
  %or.cond.8.i = or i1 %i.fw, %i.fx
  br i1 %or.cond.8.i, label %.split.split.9.i, label %.split9.us.i

.split.split.9.i:                                 ; preds = %.split.split.8.i
  %i.fy = fcmp ult float %i.b, 9.610000e+02
  %i.fz = fcmp ugt float %i.b, 1.017000e+03
  %or.cond.9.i = or i1 %i.fy, %i.fz
  br i1 %or.cond.9.i, label %.split.split.10.i, label %.split9.us.i

.split.split.10.i:                                ; preds = %.split.split.9.i
  %i.ga = fcmp ult float %i.b, 9.070000e+02
  %i.gb = fcmp ugt float %i.b, 9.610000e+02
  %or.cond.10.i = or i1 %i.ga, %i.gb
  br i1 %or.cond.10.i, label %.split.split.11.i, label %.split9.us.i

.split.split.11.i:                                ; preds = %.split.split.10.i
  %i.gc = fcmp ult float %i.b, 8.560000e+02
  %i.gd = fcmp ugt float %i.b, 9.070000e+02
  %or.cond.11.i = or i1 %i.gc, %i.gd
  br i1 %or.cond.11.i, label %.loopexit.i, label %.split9.us.i

.loopexit.i:                                      ; preds = %.split.split.11.i, %.split9.us.i, %.split.split.us.11.i, %.split.us.11.i
  %i.ge = phi i32 [ %i.fh, %.split9.us.i ], [ %.pre-phi, %.split.us.11.i ], [ %.pre-phi, %.split.split.us.11.i ], [ 0, %.split.split.11.i ]
  %.246.i = phi i16 [ %.us-phi.i, %.split9.us.i ], [ %i.ck, %.split.us.11.i ], [ %i.ey, %.split.split.us.11.i ], [ 907, %.split.split.11.i ] ; 2 uses
  %.2.i = phi i32 [ %.us-phi10.i, %.split9.us.i ], [ %i.co, %.split.us.11.i ], [ %i.fc, %.split.split.us.11.i ], [ 856, %.split.split.11.i ]
  %.042.i = phi float [ %.us-phi11.i, %.split9.us.i ], [ 0.000000e+00, %.split.us.11.i ], [ 0.000000e+00, %.split.split.us.11.i ], [ 0.000000e+00, %.split.split.11.i ]
  %i.gf = add nsw i32 %i.ge, 2
  %2 = sitofp i32 %i.gf to float
  %i.gg = tail call float @llvm.fmuladd.f32(float %2, float 1.200000e+01, float %.042.i)
  %i.gh = zext i16 %.246.i to i32
  %i.gi = uitofp i16 %.246.i to float
  %i.gj = fsub float %i.b, %i.gi
  %i.gk = and i32 %.2.i, 65535
  %i.gl = sub nsw i32 %i.gk, %i.gh
  %i.gm = sitofp i32 %i.gl to float
  %i.gn = fdiv float %i.gj, %i.gm
  %i.go = fadd float %i.gg, %i.gn
  %i.gp = fadd float %i.k, %i.go                  ; 3 uses
  %i.gq = fptoui float %i.gp to i32               ; 2 uses
  %i.gr = urem i32 %i.gq, 12
  %i.gs = fdiv float %i.gp, 1.200000e+01
  %i.gt = fadd float %i.gs, -2.000000e+00
  %i.gu = fptosi float %i.gt to i8                ; 3 uses
  %i.gv = zext nneg i32 %i.gr to i64
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr @amiga_frequencies, i64 %i.gv ; 2 uses
  %i.gx = load i16, ptr %i.gw, align 2            ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 2
  %i.gz = load i16, ptr %i.gy, align 2            ; 3 uses
  %i.ha = sext i8 %i.gu to i32                    ; 3 uses
  %i.hb = icmp sgt i8 %i.gu, 0
  br i1 %i.hb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit.i
  %i.hc = zext i16 %i.gx to i32
  %i.hd = lshr i32 %i.hc, %i.ha
  %i.he = trunc nuw nsw i32 %i.hd to i16
  %i.hf = zext i16 %i.gz to i32
  %i.hg = lshr i32 %i.hf, %i.ha
  %i.hh = trunc nuw nsw i32 %i.hg to i16
  br label %jar_xm_amiga_period.exit.i

bb.k:                                             ; preds = %.loopexit.i
  %i.hi = icmp slt i8 %i.gu, 0
  br i1 %i.hi, label %bb.l, label %jar_xm_amiga_period.exit.i

bb.l:                                             ; preds = %bb.k
  %i.hj = sub nsw i32 0, %i.ha                    ; 2 uses
  %i.hk = zext i16 %i.gx to i32
  %i.hl = shl i32 %i.hk, %i.hj
  %i.hm = trunc i32 %i.hl to i16
  %i.hn = zext i16 %i.gz to i32
  %i.ho = shl i32 %i.hn, %i.hj
  %i.hp = trunc i32 %i.ho to i16
  br label %jar_xm_amiga_period.exit.i

jar_xm_amiga_period.exit.i:                       ; preds = %bb.l, %bb.k, %bb.j
  %.019.i.i = phi i16 [ %i.he, %bb.j ], [ %i.hm, %bb.l ], [ %i.gx, %bb.k ] ; 2 uses
  %.0.i59.i = phi i16 [ %i.hh, %bb.j ], [ %i.hp, %bb.l ], [ %i.gz, %bb.k ]
  %i.hq = zext i16 %.019.i.i to i32
  %i.hr = uitofp i16 %.019.i.i to float
  %i.hs = uitofp i32 %i.gq to float
  %i.ht = fsub float %i.gp, %i.hs
  %i.hu = zext i16 %.0.i59.i to i32
  %i.hv = sub nsw i32 %i.hu, %i.hq
  %i.hw = sitofp i32 %i.hv to float
  %i.hx = tail call float @llvm.fmuladd.f32(float %i.ht, float %i.hw, float %i.hr) ; 2 uses
  %i.hy = fcmp oeq float %i.hx, 0.000000e+00
  %i.hz = fmul float %i.hx, 2.000000e+00
  %i.ia = fdiv float f0x4AD87C3A, %i.hz
  %.0.i60.i = select i1 %i.hy, float 0.000000e+00, float %i.ia
  br label %jar_xm_frequency.exit

jar_xm_frequency.exit:                            ; preds = %bb.d, %bb.e, %bb.g, %jar_xm_amiga_period.exit.i
  %.050.i = phi float [ %.0.i60.i, %jar_xm_amiga_period.exit.i ], [ %i.p, %bb.e ], [ %.0.i.i, %bb.g ], [ 0.000000e+00, %bb.d ] ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %.050.i, ptr %i.ib, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.id = load i32, ptr %i.ic, align 8
  %i.ie = uitofp i32 %i.id to float
  %i.if = fdiv float %.050.i, %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 44
  store float %i.if, ptr %i.ig, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @jar_xm_volume_slide(ptr nofree noundef captures(none) %0, i8 noundef zeroext %1) unnamed_addr #17 {
bb.a:
  %i.a = zext i8 %1 to i32                        ; 2 uses
  %.not = icmp ult i8 %1, 16
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %i.a, 4
  %i.c = uitofp nneg i32 %i.b to float
  %i.d = fmul nnan float %i.c, 1.562500e-02
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.f = load float, ptr %i.e, align 4
  %i.g = fadd float %i.d, %i.f
  store float %i.g, ptr %i.e, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = and i32 %i.a, 15                         ; 2 uses
  %.not6 = icmp eq i32 %i.h, 0
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = uitofp nneg i32 %i.h to float
  %i.j = fmul nnan float %i.i, 1.562500e-02
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.l = load float, ptr %i.k, align 4
  %i.m = fsub float %i.l, %i.j
  store float %i.m, ptr %i.k, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @jar_xm_trigger_note(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((56, 63), (64, 80), (120, 124), (132, 136), (137, 138)) %1, i32 noundef range(i32 0, 8) %2) unnamed_addr #8 {
bb.a:
  %.not = icmp samesign ult i32 %2, 4
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  store float 0.000000e+00, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i8 1, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = and i32 %2, 1
  %.not38 = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  br i1 %.not38, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.g = load float, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 52
  store float %i.g, ptr %i.h, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.k = load float, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  store float %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 62
  store i8 1, ptr %i.m, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <2 x float> splat (float 1.000000e+00), ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  store float 5.000000e-01, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 78
  store i16 0, ptr %i.p, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i16 0, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120
  store float 0.000000e+00, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 132
  store float 0.000000e+00, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 137
  store i8 0, ptr %i.t, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i16 0, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.w = load i8, ptr %i.v, align 4, !range !66, !noundef !53
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 118
  store i16 0, ptr %i.y, align 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aa = load i8, ptr %i.z, align 8, !range !66, !noundef !53
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 130
  store i8 0, ptr %i.ac, align 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ad = and i32 %2, 2
  %.not40 = icmp eq i32 %i.ad, 0
  br i1 %.not40, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.ae = load float, ptr %1, align 8             ; 4 uses
  %i.af = getelementptr i8, ptr %0, i64 64
  %.val = load i32, ptr %i.af, align 8
  switch i32 %.val, label %jar_xm_period.exit [
    i32 0, label %bb.j
    i32 1, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
end_hunk_2
begin_hunk_3_@jar_xm_handle_note_and_instrument:bb.a
  %i.oq = zext nneg i8 %i.op to i16
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.os = load i16, ptr %i.or, align 4
  %i.ot = mul i16 %i.os, %i.oq
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 396
  store i16 %i.ot, ptr %i.ou, align 4
  br label %bb.ea

bb.dd:                                            ; preds = %jar_xm_key_off.exit
  %i.ov = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ow = load i8, ptr %i.ov, align 1             ; 3 uses
  %.not297 = icmp eq i8 %i.ow, 0
  br i1 %.not297, label %bb.ea, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ox = icmp ult i8 %i.ow, 32
  %i.oy = zext i8 %i.ow to i16                    ; 2 uses
  br i1 %i.ox, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 356
  store i16 %i.oy, ptr %i.oz, align 4
  br label %bb.ea

bb.dg:                                            ; preds = %bb.de
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 358
  store i16 %i.oy, ptr %i.pa, align 2
  br label %bb.ea

bb.dh:                                            ; preds = %jar_xm_key_off.exit
  %i.pb = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.pc = load i8, ptr %i.pb, align 1             ; 2 uses
  %i.pd = icmp ugt i8 %i.pc, 64
  %i.pe = uitofp i8 %i.pc to float
  %i.pf = fmul nnan float %i.pe, 1.562500e-02
  %i.pg = select i1 %i.pd, float 1.000000e+00, float %i.pf
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 360
  store float %i.pg, ptr %i.ph, align 8
  br label %bb.ea

bb.di:                                            ; preds = %jar_xm_key_off.exit
  %i.pi = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.pj = load i8, ptr %i.pi, align 1             ; 2 uses
  %.not296 = icmp eq i8 %i.pj, 0
  br i1 %.not296, label %bb.ea, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.pk = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i8 %i.pj, ptr %i.pk, align 8
  br label %bb.ea

bb.dk:                                            ; preds = %jar_xm_key_off.exit
  %i.pl = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.pm = load i8, ptr %i.pl, align 1
  %i.pn = zext i8 %i.pm to i16
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i16 %i.pn, ptr %i.po, align 4
  %i.pp = load i8, ptr %i.pl, align 1
  %i.pq = zext i8 %i.pp to i16
  %i.pr = getelementptr inbounds nuw i8, ptr %1, i64 78
  store i16 %i.pq, ptr %i.pr, align 2
  br label %bb.ea

bb.dl:                                            ; preds = %jar_xm_key_off.exit
  %i.ps = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.pt = load i8, ptr %i.ps, align 1             ; 2 uses
  %.not295 = icmp eq i8 %i.pt, 0
  br i1 %.not295, label %bb.ea, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 89
  store i8 %i.pt, ptr %i.pu, align 1
  br label %bb.ea

bb.dn:                                            ; preds = %jar_xm_key_off.exit
  %i.pv = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.pw = load i8, ptr %i.pv, align 1             ; 4 uses
  %.not294 = icmp eq i8 %i.pw, 0
  br i1 %.not294, label %bb.ea, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.px = icmp ult i8 %i.pw, 16
  %i.py = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  br i1 %i.px, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.pz = load i8, ptr %i.py, align 8
  %i.qa = and i8 %i.pz, -16
  %i.qb = or disjoint i8 %i.qa, %i.pw
  store i8 %i.qb, ptr %i.py, align 8
  br label %bb.ea

bb.dq:                                            ; preds = %bb.do
  store i8 %i.pw, ptr %i.py, align 8
  br label %bb.ea

bb.dr:                                            ; preds = %jar_xm_key_off.exit
  %i.qc = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.qd = load i8, ptr %i.qc, align 1             ; 2 uses
  %.not293 = icmp eq i8 %i.qd, 0
  br i1 %.not293, label %bb.ea, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i8 %i.qd, ptr %i.qe, align 8
  br label %bb.ea

bb.dt:                                            ; preds = %jar_xm_key_off.exit
  %i.qf = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.qg = load i8, ptr %i.qf, align 1
  %i.qh = zext i8 %i.qg to i32                    ; 3 uses
  %i.qi = lshr i32 %i.qh, 4
  switch i32 %i.qi, label %bb.ea [
    i32 1, label %bb.du
    i32 2, label %bb.dx
  ]

bb.du:                                            ; preds = %bb.dt
  %i.qj = and i32 %i.qh, 15                       ; 2 uses
  %.not292 = icmp eq i32 %i.qj, 0
  br i1 %.not292, label %._crit_edge343, label %bb.dv

._crit_edge343:                                   ; preds = %bb.du
  %.phi.trans.insert344 = getelementptr inbounds nuw i8, ptr %1, i64 94
  %.pre345 = load i8, ptr %.phi.trans.insert344, align 2
  br label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.qk = trunc nuw nsw i32 %i.qj to i8           ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 94
  store i8 %i.qk, ptr %i.ql, align 2
  br label %bb.dw

bb.dw:                                            ; preds = %._crit_edge343, %bb.dv
  %i.qm = phi i8 [ %.pre345, %._crit_edge343 ], [ %i.qk, %bb.dv ]
  %i.qn = uitofp i8 %i.qm to float                ; 2 uses
  %i.qo = fneg float %i.qn
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.qq = load i32, ptr %i.qp, align 8
  %i.qr = icmp eq i32 %i.qq, 0
  %i.qs = fmul nnan float %i.qn, -4.000000e+00
  %.0.i331 = select i1 %i.qr, float %i.qs, float %i.qo
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.qu = load float, ptr %i.qt, align 4
  %i.qv = fadd float %i.qu, %.0.i331              ; 2 uses
  %i.qw = fcmp olt float %i.qv, 0.000000e+00
  %storemerge.i332 = select i1 %i.qw, float 0.000000e+00, float %i.qv
  store float %storemerge.i332, ptr %i.qt, align 4
  tail call fastcc void @jar_xm_update_frequency(ptr noundef readonly %0, ptr noundef nonnull %1)
  br label %bb.ea

bb.dx:                                            ; preds = %bb.dt
  %i.qx = and i32 %i.qh, 15                       ; 2 uses
  %.not291 = icmp eq i32 %i.qx, 0
  br i1 %.not291, label %._crit_edge, label %bb.dy

._crit_edge:                                      ; preds = %bb.dx
  %.phi.trans.insert341 = getelementptr inbounds nuw i8, ptr %1, i64 95
  %.pre342 = load i8, ptr %.phi.trans.insert341, align 1
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.qy = trunc nuw nsw i32 %i.qx to i8           ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %1, i64 95
  store i8 %i.qy, ptr %i.qz, align 1
  br label %bb.dz

bb.dz:                                            ; preds = %._crit_edge, %bb.dy
  %i.ra = phi i8 [ %.pre342, %._crit_edge ], [ %i.qy, %bb.dy ]
  %i.rb = uitofp i8 %i.ra to float                ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.rd = load i32, ptr %i.rc, align 8
  %i.re = icmp eq i32 %i.rd, 0
  %i.rf = fmul nnan float %i.rb, 4.000000e+00
  %.0.i333 = select i1 %i.re, float %i.rf, float %i.rb
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.rh = load float, ptr %i.rg, align 4
  %i.ri = fadd float %i.rh, %.0.i333              ; 2 uses
  %i.rj = fcmp olt float %i.ri, 0.000000e+00
  %storemerge.i334 = select i1 %i.rj, float 0.000000e+00, float %i.ri
  store float %storemerge.i334, ptr %i.rg, align 4
  tail call fastcc void @jar_xm_update_frequency(ptr noundef readonly %0, ptr noundef nonnull %1)
  br label %bb.ea

bb.ea:                                            ; preds = %bb.da, %bb.db, %bb.bg, %bb.bj, %bb.bi, %bb.bn, %bb.bo, %bb.bl, %bb.bs, %bb.bt, %bb.bq, %jar_xm_key_off.exit, %bb.dw, %bb.dz, %bb.dt, %bb.dr, %bb.ds, %bb.dn, %bb.dq, %bb.dp, %bb.dl, %bb.dm, %bb.di, %bb.dj, %bb.dd, %bb.dg, %bb.df, %bb.cd, %bb.cg, %bb.ch, %bb.cq, %bb.ct, %bb.cw, %bb.dc, %bb.ck, %bb.cj, %bb.ci, %bb.cn, %bb.co, %bb.cp, %bb.cy, %bb.cx, %bb.ca, %bb.bw, %bb.bx, %bb.bu, %bb.bv, %bb.bf, %bb.bc, %bb.bd, %bb.ay, %bb.az, %bb.aw, %bb.ax, %bb.au, %bb.av, %bb.aq, %bb.ar, %bb.ao, %bb.ap, %bb.am, %bb.an, %bb.dk, %bb.dh, %bb.bz, %bb.by, %bb.be
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #33

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @jar_xm_envelope_tick(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2               ; 4 uses
  %i.c = icmp ult i8 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i8 %i.b, 1
  br i1 %i.d, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.f = load i16, ptr %i.e, align 2
  %i.g = uitofp i16 %i.f to float
  %i.h = fmul nnan float %i.g, 1.562500e-02       ; 2 uses
  %i.i = fcmp ogt float %i.h, 1.000000e+00
  %spec.store.select = select i1 %i.i, float 1.000000e+00, float %i.h
  store float %spec.store.select, ptr %3, align 4
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 54
  %i.k = load i8, ptr %i.j, align 2, !range !66, !noundef !53
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 51
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2              ; 2 uses
  %i.r = load i16, ptr %2, align 2                ; 2 uses
  %.not = icmp ult i16 %i.r, %i.q
  br i1 %.not, label %.lr.ph, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.t = load i8, ptr %i.s, align 2
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2
  %.neg = sub nuw i16 %i.r, %i.q
  %i.x = add i16 %.neg, %i.w
  store i16 %i.x, ptr %2, align 2
  %.pre = load i8, ptr %i.a, align 2              ; 2 uses
  %i.y = icmp ugt i8 %.pre, 1
  br i1 %i.y, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d, %bb.e, %bb.f
  %i.z = phi i8 [ %.pre, %bb.f ], [ %i.b, %bb.e ], [ %i.b, %bb.d ]
  %i.aa = add i8 %i.z, -1
  %i.ab = load i16, ptr %2, align 2               ; 5 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.n
  %.048 = phi i8 [ 0, %.lr.ph ], [ %i.bf, %bb.n ] ; 2 uses
  %i.ac = zext i8 %.048 to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ac ; 6 uses
  %i.ae = load i16, ptr %i.ad, align 2            ; 3 uses
  %.not41 = icmp ugt i16 %i.ae, %i.ab
  br i1 %.not41, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ag = load i16, ptr %i.af, align 2            ; 3 uses
  %.not42 = icmp ult i16 %i.ag, %i.ab
  br i1 %.not42, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = zext i16 %i.ab to i32
  %i.ai = zext i16 %i.ae to i32                   ; 2 uses
  %.not.i = icmp ugt i16 %i.ab, %i.ae
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = uitofp i16 %i.ak to float
  br label %jar_xm_envelope_lerp.exit

bb.k:                                             ; preds = %bb.i
  %.not17.i = icmp ult i16 %i.ab, %i.ag
  br i1 %.not17.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 6
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = uitofp i16 %i.an to float
  br label %jar_xm_envelope_lerp.exit

bb.m:                                             ; preds = %bb.k
  %i.ap = zext i16 %i.ag to i32
  %i.aq = sub nuw nsw i32 %i.ah, %i.ai
  %i.ar = uitofp nneg i32 %i.aq to float
  %i.as = sub nuw nsw i32 %i.ap, %i.ai
  %i.at = uitofp nneg i32 %i.as to float
  %i.au = fdiv float %i.ar, %i.at                 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = uitofp i16 %i.aw to float
  %i.ay = fsub float 1.000000e+00, %i.au
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 6
  %i.ba = load i16, ptr %i.az, align 2
  %i.bb = uitofp i16 %i.ba to float
  %i.bc = fmul float %i.au, %i.bb
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.ay, float %i.bc)
  br label %jar_xm_envelope_lerp.exit

jar_xm_envelope_lerp.exit:                        ; preds = %bb.j, %bb.l, %bb.m
  %.0.i = phi float [ %i.al, %bb.j ], [ %i.ao, %bb.l ], [ %i.bd, %bb.m ]
  %i.be = fmul float %.0.i, 1.562500e-02
  store float %i.be, ptr %3, align 4
  br label %.loopexit

bb.n:                                             ; preds = %bb.g, %bb.h
  %i.bf = add nuw i8 %.048, 1                     ; 2 uses
  %i.bg = icmp ugt i8 %i.aa, %i.bf
  br i1 %i.bg, label %bb.g, label %.loopexit

.loopexit:                                        ; preds = %bb.n, %bb.f, %jar_xm_envelope_lerp.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.bi = load i8, ptr %i.bh, align 2, !range !66, !noundef !53
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.o, label %.loopexit._crit_edge

.loopexit._crit_edge:                             ; preds = %.loopexit
  %.pre53 = load i16, ptr %2, align 2
  br label %bb.q

bb.o:                                             ; preds = %.loopexit
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 53
  %i.bl = load i8, ptr %i.bk, align 1, !range !66, !noundef !53
  %i.bm = trunc nuw i8 %i.bl to i1
  %.pre54 = load i16, ptr %2, align 2             ; 3 uses
  br i1 %i.bm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2
  %.not43 = icmp eq i16 %.pre54, %i.br
  br i1 %.not43, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit._crit_edge, %bb.p, %bb.o
  %i.bs = phi i16 [ %.pre53, %.loopexit._crit_edge ], [ %.pre54, %bb.p ], [ %.pre54, %bb.o ]
  %i.bt = add i16 %i.bs, 1
  store i16 %i.bt, ptr %2, align 2
  br label %bb.r

bb.r:                                             ; preds = %bb.c, %bb.p, %bb.q, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #62

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc float @jar_xm_period(i32 %.64.val, float noundef %0) unnamed_addr #1 {
bb.a:
  switch i32 %.64.val, label %bb.g [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = fneg float %0
  %i.b = tail call noundef float @llvm.fmuladd.f32(float %i.a, float 6.400000e+01, float 7.680000e+03)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = fptoui float %0 to i32                   ; 2 uses
  %i.d = urem i32 %i.c, 12
  %i.e = fdiv float %0, 1.200000e+01
  %i.f = fadd float %i.e, -2.000000e+00
  %i.g = fptosi float %i.f to i8                  ; 3 uses
  %i.h = zext nneg i32 %i.d to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr @amiga_frequencies, i64 %i.h ; 2 uses
  %i.j = load i16, ptr %i.i, align 2              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.l = load i16, ptr %i.k, align 2              ; 3 uses
  %i.m = sext i8 %i.g to i32                      ; 3 uses
  %i.n = icmp sgt i8 %i.g, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = zext i16 %i.j to i32
  %i.p = lshr i32 %i.o, %i.m
  %i.q = trunc nuw nsw i32 %i.p to i16
  %i.r = zext i16 %i.l to i32
  %i.s = lshr i32 %i.r, %i.m
  %i.t = trunc nuw nsw i32 %i.s to i16
  br label %jar_xm_amiga_period.exit

bb.e:                                             ; preds = %bb.c
  %i.u = icmp slt i8 %i.g, 0
  br i1 %i.u, label %bb.f, label %jar_xm_amiga_period.exit

bb.f:                                             ; preds = %bb.e
  %i.v = sub nsw i32 0, %i.m                      ; 2 uses
  %i.w = zext i16 %i.j to i32
  %i.x = shl i32 %i.w, %i.v
  %i.y = trunc i32 %i.x to i16
  %i.z = zext i16 %i.l to i32
  %i.aa = shl i32 %i.z, %i.v
  %i.ab = trunc i32 %i.aa to i16
  br label %jar_xm_amiga_period.exit
end_hunk_3
