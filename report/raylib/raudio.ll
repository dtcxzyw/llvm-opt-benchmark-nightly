Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@stb_vorbis_open_memory:bb.a
  %i.ac = load i32, ptr %i.ab, align 8            ; 2 uses
  %i.ad = add nsw i32 %i.ac, 1904                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 148
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp sgt i32 %i.ad, %i.af
  br i1 %i.ag, label %vorbis_alloc.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = sext i32 %i.ac to i64
  %i.ai = getelementptr inbounds i8, ptr %i.aa, i64 %i.ah
  store i32 %i.ad, ptr %i.ab, align 8
  br label %vorbis_alloc.exit

bb.i:                                             ; preds = %bb.f
  %i.aj = call noalias dereferenceable_or_null(1904) ptr @malloc(i64 noundef 1904) #74
  br label %vorbis_alloc.exit

vorbis_alloc.exit:                                ; preds = %bb.h, %bb.i
  %.1.i.i = phi ptr [ %i.aj, %bb.i ], [ %i.ai, %bb.h ] ; 6 uses
  %.not21 = icmp eq ptr %.1.i.i, null
  br i1 %.not21, label %vorbis_alloc.exit.thread, label %bb.j

bb.j:                                             ; preds = %vorbis_alloc.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1904) %.1.i.i, ptr noundef nonnull align 8 dereferenceable(1904) %4, i64 1904, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #61
  %i.ak = call fastcc i32 @vorbis_decode_packet(ptr noundef nonnull %.1.i.i, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.b)
  %.not.i24 = icmp eq i32 %i.ak, 0
  br i1 %.not.i24, label %vorbis_pump_first_frame.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = load i32, ptr %i.a, align 4
  %i.am = load i32, ptr %i.c, align 4
  %i.an = load i32, ptr %i.b, align 4
  %i.ao = call fastcc i32 @vorbis_finish_frame(ptr noundef nonnull %.1.i.i, i32 noundef %i.al, i32 noundef %i.am, i32 noundef %i.an) ; 0 uses
  br label %vorbis_pump_first_frame.exit

vorbis_pump_first_frame.exit:                     ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  %.not23 = icmp eq ptr %2, null
  br i1 %.not23, label %bb.o, label %bb.l

bb.l:                                             ; preds = %vorbis_pump_first_frame.exit
  store i32 0, ptr %2, align 4
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
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !1031

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
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1032

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
  %7 = sext i32 %3 to i64
  %i.j = getelementptr inbounds [6 x i8], ptr @channel_position, i64 %7 ; 6 uses
  %i.k = zext nneg i32 %6 to i64                  ; 3 uses
  %i.l = sext i32 %5 to i64                       ; 6 uses
  br i1 %i.i, label %.lr.ph55.split.us, label %.loopexit

.lr.ph55.split.us:                                ; preds = %.lr.ph55
  %i.m = icmp sgt i32 %3, 0
  br i1 %i.m, label %.lr.ph47.i.us.us.preheader, label %.lr.ph47.i.us

.lr.ph47.i.us.us.preheader:                       ; preds = %.lr.ph55.split.us
  %exitcond67.not.i.us.us = icmp eq i32 %3, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %exitcond67.not.i.us.us.1 = icmp eq i32 %3, 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %exitcond67.not.i.us.us.2 = icmp eq i32 %3, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24
  %exitcond67.not.i.us.us.3 = icmp eq i32 %3, 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32
  %exitcond67.not.i.us.us.4 = icmp eq i32 %3, 5
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %.lr.ph47.i.us.us

.lr.ph47.i.us.us:                                 ; preds = %.lr.ph47.i.us.us.preheader, %compute_samples.exit.loopexit.us.us
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %compute_samples.exit.loopexit.us.us ], [ 0, %.lr.ph47.i.us.us.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv76
  %i.y = load i32, ptr %i.x, align 4              ; 6 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv76
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  br label %.lr.ph42.us.i.us.us

.lr.ph42.us.i.us.us:                              ; preds = %._crit_edge.us.i.us.us, %.lr.ph47.i.us.us
  %indvars.iv73.i.us.us = phi i64 [ 0, %.lr.ph47.i.us.us ], [ %indvars.iv.next74.i.us.us, %._crit_edge.us.i.us.us ] ; 9 uses
  %.03245.us.i.us.us = phi i32 [ 32, %.lr.ph47.i.us.us ], [ %spec.select.us.fr.i.us.us, %._crit_edge.us.i.us.us ] ; 2 uses
  %indvars75.i.us.us = trunc i64 %indvars.iv73.i.us.us to i32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.ac = add nsw i32 %.03245.us.i.us.us, %indvars75.i.us.us
  %i.ad = icmp sgt i32 %i.ac, %6
  %i.ae = sub i32 %6, %indvars75.i.us.us
  %spec.select.us.i.us.us = select i1 %i.ad, i32 %i.ae, i32 %.03245.us.i.us.us
  %spec.select.us.fr.i.us.us = freeze i32 %spec.select.us.i.us.us ; 10 uses
  %i.af = icmp sgt i32 %spec.select.us.fr.i.us.us, 0
  br i1 %i.af, label %.lr.ph42.split.us.us.preheader.i.us.us, label %._crit_edge.us.i.us.us

.lr.ph42.split.us.us.preheader.i.us.us:           ; preds = %.lr.ph42.us.i.us.us
  %wide.trip.count.i.us.us = zext nneg i32 %spec.select.us.fr.i.us.us to i64 ; 21 uses
  %i.ag = load i8, ptr %i.j, align 2
  %i.ah = sext i8 %i.ag to i32
  %i.ai = and i32 %i.y, %i.ah
  %.not.us.us.i.us.us = icmp eq i32 %i.ai, 0
  br i1 %.not.us.us.i.us.us, label %..loopexit_crit_edge.us.us.i.us.us, label %.preheader.us.us.i.us.us

.preheader.us.us.i.us.us:                         ; preds = %.lr.ph42.split.us.us.preheader.i.us.us
  %i.aj = load ptr, ptr %4, align 8
  %i.ak = getelementptr [4 x i8], ptr %i.aj, i64 %indvars.iv73.i.us.us
  %i.al = getelementptr [4 x i8], ptr %i.ak, i64 %i.l ; 2 uses
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
  br i1 %i.as, label %middle.block125, label %vector.body118, !llvm.loop !1033

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
  br i1 %exitcond.not.i.us.us, label %..loopexit_crit_edge.us.us.i.us.us, label %scalar.ph114, !llvm.loop !1034

..loopexit_crit_edge.us.us.i.us.us:               ; preds = %scalar.ph114, %middle.block125, %.lr.ph42.split.us.us.preheader.i.us.us
  br i1 %exitcond67.not.i.us.us, label %..preheader39_crit_edge.us.i.us.us, label %.lr.ph42.split.us.us.i.us.us.1

.lr.ph42.split.us.us.i.us.us.1:                   ; preds = %..loopexit_crit_edge.us.us.i.us.us
  %i.ay = load i8, ptr %i.n, align 1
  %i.az = sext i8 %i.ay to i32
  %i.ba = and i32 %i.y, %i.az
  %.not.us.us.i.us.us.1 = icmp eq i32 %i.ba, 0
  br i1 %.not.us.us.i.us.us.1, label %..loopexit_crit_edge.us.us.i.us.us.1, label %.preheader.us.us.i.us.us.1

.preheader.us.us.i.us.us.1:                       ; preds = %.lr.ph42.split.us.us.i.us.us.1
  %i.bb = load ptr, ptr %i.o, align 8
  %i.bc = getelementptr [4 x i8], ptr %i.bb, i64 %indvars.iv73.i.us.us
  %i.bd = getelementptr [4 x i8], ptr %i.bc, i64 %i.l ; 2 uses
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
  br i1 %i.bk, label %middle.block125.1, label %vector.body118.1, !llvm.loop !1033

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
  br i1 %exitcond.not.i.us.us.1, label %..loopexit_crit_edge.us.us.i.us.us.1, label %scalar.ph114.1, !llvm.loop !1034

..loopexit_crit_edge.us.us.i.us.us.1:             ; preds = %scalar.ph114.1, %middle.block125.1, %.lr.ph42.split.us.us.i.us.us.1
  br i1 %exitcond67.not.i.us.us.1, label %..preheader39_crit_edge.us.i.us.us, label %.lr.ph42.split.us.us.i.us.us.2

.lr.ph42.split.us.us.i.us.us.2:                   ; preds = %..loopexit_crit_edge.us.us.i.us.us.1
  %i.bq = load i8, ptr %i.p, align 2
  %i.br = sext i8 %i.bq to i32
  %i.bs = and i32 %i.y, %i.br
  %.not.us.us.i.us.us.2 = icmp eq i32 %i.bs, 0
  br i1 %.not.us.us.i.us.us.2, label %..loopexit_crit_edge.us.us.i.us.us.2, label %.preheader.us.us.i.us.us.2

.preheader.us.us.i.us.us.2:                       ; preds = %.lr.ph42.split.us.us.i.us.us.2
  %i.bt = load ptr, ptr %i.q, align 8
  %i.bu = getelementptr [4 x i8], ptr %i.bt, i64 %indvars.iv73.i.us.us
  %i.bv = getelementptr [4 x i8], ptr %i.bu, i64 %i.l ; 2 uses
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
end_hunk_0
begin_hunk_1_@convert_samples_short:bb.a
  %indvars.iv62.unr = phi i64 [ %i.ka, %.lr.ph53 ], [ %indvars.iv.next63.prol, %.prol.preheader ]
  %i.kf = sub i32 %.1.lcssa, %0
  %i.kg = icmp ugt i32 %i.kf, -8
  br i1 %i.kg, label %.loopexit, label %.lr.ph53.new

.lr.ph53.new:                                     ; preds = %.prol.loopexit, %.lr.ph53.new
  %indvars.iv62 = phi i64 [ %indvars.iv.next63.7, %.lr.ph53.new ], [ %indvars.iv62.unr, %.prol.loopexit ] ; 9 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv62
  %i.ki = load ptr, ptr %i.kh, align 8
  %i.kj = getelementptr inbounds [2 x i8], ptr %i.ki, i64 %i.jx
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.kj, i8 0, i64 %i.jz, i1 false)
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv62
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load ptr, ptr %i.kl, align 8
  %i.kn = getelementptr inbounds [2 x i8], ptr %i.km, i64 %i.jx
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.kn, i8 0, i64 %i.jz, i1 false)
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv62
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.kq = load ptr, ptr %i.kp, align 8
  %i.kr = getelementptr inbounds [2 x i8], ptr %i.kq, i64 %i.jx
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.kr, i8 0, i64 %i.jz, i1 false)
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv62
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 24
  %i.ku = load ptr, ptr %i.kt, align 8
  %i.kv = getelementptr inbounds [2 x i8], ptr %i.ku, i64 %i.jx
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.kv, i8 0, i64 %i.jz, i1 false)
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv62
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 32
  %i.ky = load ptr, ptr %i.kx, align 8
  %i.kz = getelementptr inbounds [2 x i8], ptr %i.ky, i64 %i.jx
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.kz, i8 0, i64 %i.jz, i1 false)
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv62
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 40
  %i.lc = load ptr, ptr %i.lb, align 8
  %i.ld = getelementptr inbounds [2 x i8], ptr %i.lc, i64 %i.jx
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.ld, i8 0, i64 %i.jz, i1 false)
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv62
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 48
  %i.lg = load ptr, ptr %i.lf, align 8
  %i.lh = getelementptr inbounds [2 x i8], ptr %i.lg, i64 %i.jx
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.lh, i8 0, i64 %i.jz, i1 false)
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv62
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 56
  %i.lk = load ptr, ptr %i.lj, align 8
  %i.ll = getelementptr inbounds [2 x i8], ptr %i.lk, i64 %i.jx
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.ll, i8 0, i64 %i.jz, i1 false)
  %indvars.iv.next63.7 = add nuw nsw i64 %indvars.iv62, 8 ; 2 uses
  %i.lm = trunc nuw i64 %indvars.iv.next63.7 to i32
  %i.ln = icmp sgt i32 %0, %i.lm
  br i1 %i.ln, label %.lr.ph53.new, label %.loopexit

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
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !1047

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
  br i1 %exitcond.not.i, label %stb_vorbis_get_frame_float.exit, label %scalar.ph, !llvm.loop !1048

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
  %6 = sext i32 %2 to i64
  %i.g = getelementptr inbounds [6 x i8], ptr @channel_position, i64 %6
  %i.h = zext nneg i32 %5 to i64                  ; 3 uses
  %i.i = sext i32 %4 to i64
  %wide.trip.count.i = zext nneg i32 %2 to i64
  br i1 %i.f, label %.lr.ph.split.us, label %.loopexit

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.j = icmp sgt i32 %2, 0
  br i1 %i.j, label %.lr.ph84.i.us.us, label %.lr.ph84.i.us

.lr.ph84.i.us.us:                                 ; preds = %.lr.ph.split.us, %compute_stereo_samples.exit.loopexit.us.us
  %.03859.us.us = phi i32 [ %i.dw, %compute_stereo_samples.exit.loopexit.us.us ], [ 0, %.lr.ph.split.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  br label %.lr.ph78.us.i.us.us

.lr.ph78.us.i.us.us:                              ; preds = %._crit_edge.us.i.us.us, %.lr.ph84.i.us.us
  %indvars.iv86 = phi i32 [ %indvars.iv.next87, %._crit_edge.us.i.us.us ], [ 0, %.lr.ph84.i.us.us ] ; 2 uses
  %indvars.iv109.i.us.us = phi i64 [ %indvars.iv.next110.i.us.us, %._crit_edge.us.i.us.us ], [ 0, %.lr.ph84.i.us.us ] ; 3 uses
  %.05982.us.i.us.us = phi i32 [ %spec.select.us.i.us.us, %._crit_edge.us.i.us.us ], [ 16, %.lr.ph84.i.us.us ] ; 2 uses
  %indvars95 = trunc i64 %indvars.iv109.i.us.us to i32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.k = add i32 %.05982.us.i.us.us, %indvars95   ; 2 uses
  %i.l = icmp sgt i32 %i.k, %5
  %i.m = sub i32 %5, %indvars95
  %spec.select.us.i.us.us = select i1 %i.l, i32 %i.m, i32 %.05982.us.i.us.us ; 3 uses
  %i.n = icmp sgt i32 %spec.select.us.i.us.us, 0  ; 3 uses
  %i.o = add nsw i64 %indvars.iv109.i.us.us, %i.i ; 3 uses
  %smin85 = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.k) ; 3 uses
  %i.p = add i32 %smin85, %indvars.iv86           ; 5 uses
  %i.q = sext i32 %i.p to i64                     ; 9 uses
  %min.iters.check148 = icmp ult i32 %i.p, 5
  %i.r = and i64 %i.q, 3
  %i.s = and i32 %smin85, 3
  %i.t = icmp eq i32 %i.s, 0
  %i.u = select i1 %i.t, i64 4, i64 %i.r
  %n.vec150 = sub nsw i64 %i.q, %i.u              ; 2 uses
  %min.iters.check136 = icmp ult i32 %i.p, 5
  %i.v = and i64 %i.q, 3
  %i.w = and i32 %smin85, 3
  %i.x = icmp eq i32 %i.w, 0
  %i.y = select i1 %i.x, i64 4, i64 %i.v
  %n.vec138 = sub nsw i64 %i.q, %i.y              ; 2 uses
  %min.iters.check124 = icmp ult i32 %i.p, 2
  %n.vec126 = and i64 %i.q, -2                    ; 3 uses
  %cmp.n133 = icmp eq i64 %n.vec126, %i.q
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.us.i.us.us, %.lr.ph78.us.i.us.us
  %indvars.iv103.i.us.us = phi i64 [ 0, %.lr.ph78.us.i.us.us ], [ %indvars.iv.next104.i.us.us, %.loopexit.us.i.us.us ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv103.i.us.us
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = and i8 %i.aa, 6
  switch i8 %i.ab, label %.unreachabledefault [
    i8 6, label %.preheader.us.i.us.us
    i8 2, label %.preheader67.us.i.us.us
    i8 4, label %.preheader69.us.i.us.us
    i8 0, label %.loopexit.us.i.us.us
  ]

.preheader69.us.i.us.us:                          ; preds = %bb.b
  br i1 %i.n, label %.lr.ph.us.i.us.us, label %.loopexit.us.i.us.us

.lr.ph.us.i.us.us:                                ; preds = %.preheader69.us.i.us.us
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv103.i.us.us
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr [4 x i8], ptr %i.ad, i64 %i.o ; 2 uses
  br i1 %min.iters.check148, label %scalar.ph147.preheader, label %vector.body151

vector.body151:                                   ; preds = %.lr.ph.us.i.us.us, %vector.body151
  %index152 = phi i64 [ %index.next156, %vector.body151 ], [ 0, %.lr.ph.us.i.us.us ] ; 6 uses
  %i.af = getelementptr [4 x i8], ptr %i.ae, i64 %index152
  %wide.load153 = load <4 x float>, ptr %i.af, align 4
  %i.ag = shl nuw nsw i64 %index152, 3
  %i.ah = shl i64 %index152, 3
  %i.ai = shl i64 %index152, 3
  %i.aj = shl i64 %index152, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ai
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aj
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %wide.vec154 = load <8 x float>, ptr %i.ao, align 4
  %strided.vec155 = shufflevector <8 x float> %wide.vec154, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.as = fadd <4 x float> %wide.load153, %strided.vec155 ; 4 uses
  %i.at = extractelement <4 x float> %i.as, i64 0
  store float %i.at, ptr %i.ao, align 4
  %i.au = extractelement <4 x float> %i.as, i64 1
  store float %i.au, ptr %i.ap, align 4
  %i.av = extractelement <4 x float> %i.as, i64 2
  store float %i.av, ptr %i.aq, align 4
  %i.aw = extractelement <4 x float> %i.as, i64 3
  store float %i.aw, ptr %i.ar, align 4
  %index.next156 = add nuw i64 %index152, 4       ; 2 uses
  %i.ax = icmp eq i64 %index.next156, %n.vec150
  br i1 %i.ax, label %scalar.ph147.preheader, label %vector.body151, !llvm.loop !1049

scalar.ph147.preheader:                           ; preds = %vector.body151, %.lr.ph.us.i.us.us
  %indvars.iv94.i.us.us.ph = phi i64 [ 0, %.lr.ph.us.i.us.us ], [ %n.vec150, %vector.body151 ]
  br label %scalar.ph147

scalar.ph147:                                     ; preds = %scalar.ph147.preheader, %scalar.ph147
  %indvars.iv94.i.us.us = phi i64 [ %indvars.iv.next95.i.us.us, %scalar.ph147 ], [ %indvars.iv94.i.us.us.ph, %scalar.ph147.preheader ] ; 3 uses
  %i.ay = getelementptr [4 x i8], ptr %i.ae, i64 %indvars.iv94.i.us.us
  %i.az = load float, ptr %i.ay, align 4
  %.idx.i.us.us = shl nuw nsw i64 %indvars.iv94.i.us.us, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i.us.us
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4
  %i.bd = fadd float %i.az, %i.bc
  store float %i.bd, ptr %i.bb, align 4
  %indvars.iv.next95.i.us.us = add nuw nsw i64 %indvars.iv94.i.us.us, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next95.i.us.us, %i.q
  br i1 %exitcond88.not, label %.loopexit.us.i.us.us, label %scalar.ph147, !llvm.loop !1050

.preheader67.us.i.us.us:                          ; preds = %bb.b
  br i1 %i.n, label %.lr.ph74.us.i.us.us, label %.loopexit.us.i.us.us

.lr.ph74.us.i.us.us:                              ; preds = %.preheader67.us.i.us.us
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv103.i.us.us
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr [4 x i8], ptr %i.bf, i64 %i.o ; 2 uses
  br i1 %min.iters.check136, label %scalar.ph135.preheader, label %vector.body139

vector.body139:                                   ; preds = %.lr.ph74.us.i.us.us, %vector.body139
  %index140 = phi i64 [ %index.next144, %vector.body139 ], [ 0, %.lr.ph74.us.i.us.us ] ; 6 uses
  %i.bh = getelementptr [4 x i8], ptr %i.bg, i64 %index140
  %wide.load141 = load <4 x float>, ptr %i.bh, align 4
  %i.bi = shl nuw nsw i64 %index140, 3
  %i.bj = shl i64 %index140, 3
  %i.bk = shl i64 %index140, 3
  %i.bl = shl i64 %index140, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bi ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bj
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bk
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bl
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %wide.vec142 = load <8 x float>, ptr %i.bm, align 16
  %strided.vec143 = shufflevector <8 x float> %wide.vec142, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bt = fadd <4 x float> %wide.load141, %strided.vec143 ; 4 uses
  %i.bu = extractelement <4 x float> %i.bt, i64 0
  store float %i.bu, ptr %i.bm, align 16
  %i.bv = extractelement <4 x float> %i.bt, i64 1
  store float %i.bv, ptr %i.bo, align 8
  %i.bw = extractelement <4 x float> %i.bt, i64 2
  store float %i.bw, ptr %i.bq, align 16
  %i.bx = extractelement <4 x float> %i.bt, i64 3
  store float %i.bx, ptr %i.bs, align 8
  %index.next144 = add nuw i64 %index140, 4       ; 2 uses
  %i.by = icmp eq i64 %index.next144, %n.vec138
  br i1 %i.by, label %scalar.ph135.preheader, label %vector.body139, !llvm.loop !1051

scalar.ph135.preheader:                           ; preds = %vector.body139, %.lr.ph74.us.i.us.us
  %indvars.iv97.i.us.us.ph = phi i64 [ 0, %.lr.ph74.us.i.us.us ], [ %n.vec138, %vector.body139 ]
  br label %scalar.ph135

scalar.ph135:                                     ; preds = %scalar.ph135.preheader, %scalar.ph135
  %indvars.iv97.i.us.us = phi i64 [ %indvars.iv.next98.i.us.us, %scalar.ph135 ], [ %indvars.iv97.i.us.us.ph, %scalar.ph135.preheader ] ; 3 uses
  %i.bz = getelementptr [4 x i8], ptr %i.bg, i64 %indvars.iv97.i.us.us
  %i.ca = load float, ptr %i.bz, align 4
  %.idx115.i.us.us.a = shl nuw nsw i64 %indvars.iv97.i.us.us, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx115.i.us.us.a ; 2 uses
  %i.cc = load float, ptr %i.cb, align 8
  %i.cd = fadd float %i.ca, %i.cc
  store float %i.cd, ptr %i.cb, align 8
  %indvars.iv.next98.i.us.us = add nuw nsw i64 %indvars.iv97.i.us.us, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next98.i.us.us, %i.q
  br i1 %exitcond90.not, label %.loopexit.us.i.us.us, label %scalar.ph135, !llvm.loop !1052

.preheader.us.i.us.us:                            ; preds = %bb.b
  br i1 %i.n, label %.lr.ph76.us.i.us.us, label %.loopexit.us.i.us.us

.lr.ph76.us.i.us.us:                              ; preds = %.preheader.us.i.us.us
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv103.i.us.us
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr [4 x i8], ptr %i.cf, i64 %i.o ; 2 uses
  br i1 %min.iters.check124, label %scalar.ph123.preheader, label %vector.body127

vector.body127:                                   ; preds = %.lr.ph76.us.i.us.us, %vector.body127
  %index128 = phi i64 [ %index.next131, %vector.body127 ], [ 0, %.lr.ph76.us.i.us.us ] ; 3 uses
  %i.ch = getelementptr [4 x i8], ptr %i.cg, i64 %index128
  %wide.load129 = load <2 x float>, ptr %i.ch, align 4
  %i.ci = shl nuw nsw i64 %index128, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ci ; 2 uses
  %wide.vec = load <4 x float>, ptr %i.cj, align 16
  %i.ck = shufflevector <2 x float> %wide.load129, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %interleaved.vec = fadd <4 x float> %i.ck, %wide.vec
  store <4 x float> %interleaved.vec, ptr %i.cj, align 16
  %index.next131 = add nuw i64 %index128, 2       ; 2 uses
  %i.cl = icmp eq i64 %index.next131, %n.vec126
  br i1 %i.cl, label %middle.block132, label %vector.body127, !llvm.loop !1053

middle.block132:                                  ; preds = %vector.body127
  br i1 %cmp.n133, label %.loopexit.us.i.us.us, label %scalar.ph123.preheader

scalar.ph123.preheader:                           ; preds = %.lr.ph76.us.i.us.us, %middle.block132
  %indvars.iv100.i.us.us.ph = phi i64 [ 0, %.lr.ph76.us.i.us.us ], [ %n.vec126, %middle.block132 ]
  br label %scalar.ph123

scalar.ph123:                                     ; preds = %scalar.ph123.preheader, %scalar.ph123
  %indvars.iv100.i.us.us = phi i64 [ %indvars.iv.next101.i.us.us, %scalar.ph123 ], [ %indvars.iv100.i.us.us.ph, %scalar.ph123.preheader ] ; 3 uses
  %i.cm = getelementptr [4 x i8], ptr %i.cg, i64 %indvars.iv100.i.us.us
  %i.cn = load float, ptr %i.cm, align 4
  %.idx116.i.us.us = shl nuw nsw i64 %indvars.iv100.i.us.us, 3
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx116.i.us.us ; 2 uses
  %i.cp = load <2 x float>, ptr %i.co, align 8
  %i.cq = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = fadd <2 x float> %i.cr, %i.cp
  store <2 x float> %i.cs, ptr %i.co, align 8
  %indvars.iv.next101.i.us.us = add nuw nsw i64 %indvars.iv100.i.us.us, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next101.i.us.us, %i.q
  br i1 %exitcond92.not, label %.loopexit.us.i.us.us, label %scalar.ph123, !llvm.loop !1054

.loopexit.us.i.us.us:                             ; preds = %scalar.ph147, %scalar.ph135, %scalar.ph123, %middle.block132, %.preheader.us.i.us.us, %.preheader67.us.i.us.us, %.preheader69.us.i.us.us, %bb.b
  %indvars.iv.next104.i.us.us = add nuw nsw i64 %indvars.iv103.i.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next104.i.us.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us, label %..preheader71_crit_edge.us.i.us.us, label %bb.b

..preheader71_crit_edge.us.i.us.us:               ; preds = %.loopexit.us.i.us.us
  %i.ct = shl i32 %spec.select.us.i.us.us, 1
  %i.cu = icmp sgt i32 %i.ct, 0
  br i1 %i.cu, label %.lr.ph80.us.preheader.i.us.us, label %._crit_edge.us.i.us.us

.lr.ph80.us.preheader.i.us.us:                    ; preds = %..preheader71_crit_edge.us.i.us.us
  %i.cv = shl i32 %indvars95, 1
  %i.cw = sext i32 %i.cv to i64
  %invariant.gep120.i.us.us = getelementptr [2 x i8], ptr %1, i64 %i.cw ; 2 uses
  %i.cx = shl i32 %i.p, 1                         ; 2 uses
  %i.cy = zext i32 %i.cx to i64                   ; 3 uses
  %min.iters.check112 = icmp ult i32 %i.cx, 8
  br i1 %min.iters.check112, label %.lr.ph80.us.i.us.us.preheader, label %vector.ph113

vector.ph113:                                     ; preds = %.lr.ph80.us.preheader.i.us.us
  %n.vec114 = and i64 %i.cy, 4294967288           ; 3 uses
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph113
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next119, %vector.body115 ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index116 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %wide.load117 = load <4 x float>, ptr %i.cz, align 16
  %wide.load118 = load <4 x float>, ptr %i.da, align 16
  %i.db = fadd <4 x float> %wide.load117, splat (float 3.840000e+02)
  %i.dc = fadd <4 x float> %wide.load118, splat (float 3.840000e+02)
  %i.dd = bitcast <4 x float> %i.db to <4 x i32>
  %i.de = bitcast <4 x float> %i.dc to <4 x i32>
  %i.df = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dd, <4 x i32> splat (i32 1136623616))
  %i.dg = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.de, <4 x i32> splat (i32 1136623616))
  %i.dh = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.df, <4 x i32> splat (i32 1136689151))
  %i.di = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.dg, <4 x i32> splat (i32 1136689151))
  %i.dj = trunc <4 x i32> %i.dh to <4 x i16>
  %i.dk = trunc <4 x i32> %i.di to <4 x i16>
  %i.dl = getelementptr [2 x i8], ptr %invariant.gep120.i.us.us, i64 %index116 ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 8
  store <4 x i16> %i.dj, ptr %i.dl, align 2
  store <4 x i16> %i.dk, ptr %i.dm, align 2
  %index.next119 = add nuw i64 %index116, 8       ; 2 uses
  %i.dn = icmp eq i64 %index.next119, %n.vec114
  br i1 %i.dn, label %middle.block120, label %vector.body115, !llvm.loop !1055

middle.block120:                                  ; preds = %vector.body115
  %cmp.n121 = icmp eq i64 %n.vec114, %i.cy
  br i1 %cmp.n121, label %._crit_edge.us.i.us.us, label %.lr.ph80.us.i.us.us.preheader

.lr.ph80.us.i.us.us.preheader:                    ; preds = %.lr.ph80.us.preheader.i.us.us, %middle.block120
  %indvars.iv106.i.us.us.ph = phi i64 [ 0, %.lr.ph80.us.preheader.i.us.us ], [ %n.vec114, %middle.block120 ]
  br label %.lr.ph80.us.i.us.us

.lr.ph80.us.i.us.us:                              ; preds = %.lr.ph80.us.i.us.us.preheader, %.lr.ph80.us.i.us.us
  %indvars.iv106.i.us.us = phi i64 [ %indvars.iv.next107.i.us.us, %.lr.ph80.us.i.us.us ], [ %indvars.iv106.i.us.us.ph, %.lr.ph80.us.i.us.us.preheader ] ; 3 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv106.i.us.us
  %i.dp = load float, ptr %i.do, align 4
  %i.dq = fadd float %i.dp, 3.840000e+02
  %i.dr = bitcast float %i.dq to i32
  %i.ds = tail call i32 @llvm.smax.i32(i32 %i.dr, i32 1136623616)
  %i.dt = tail call i32 @llvm.umin.i32(i32 %i.ds, i32 1136689151)
  %i.du = trunc i32 %i.dt to i16
  %gep121.i.us.us = getelementptr [2 x i8], ptr %invariant.gep120.i.us.us, i64 %indvars.iv106.i.us.us
  store i16 %i.du, ptr %gep121.i.us.us, align 2
  %indvars.iv.next107.i.us.us = add nuw nsw i64 %indvars.iv106.i.us.us, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next107.i.us.us, %i.cy
  br i1 %exitcond94.not, label %._crit_edge.us.i.us.us, label %.lr.ph80.us.i.us.us, !llvm.loop !1056

._crit_edge.us.i.us.us:                           ; preds = %.lr.ph80.us.i.us.us, %middle.block120, %..preheader71_crit_edge.us.i.us.us
  %indvars.iv.next110.i.us.us = add nuw nsw i64 %indvars.iv109.i.us.us, 16 ; 2 uses
  %i.dv = icmp samesign ult i64 %indvars.iv.next110.i.us.us, %i.h
  %indvars.iv.next87 = add i32 %indvars.iv86, -16
  br i1 %i.dv, label %.lr.ph78.us.i.us.us, label %compute_stereo_samples.exit.loopexit.us.us

compute_stereo_samples.exit.loopexit.us.us:       ; preds = %._crit_edge.us.i.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  %i.dw = add nuw nsw i32 %.03859.us.us, 1        ; 2 uses
  %exitcond96.not = icmp eq i32 %i.dw, %0
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
  %i.dx = add nsw i32 %.05982.i.us, %indvars81    ; 2 uses
  %i.dy = icmp sgt i32 %i.dx, %5
  %i.dz = sub i32 %5, %indvars81
  %spec.select.i.us = select i1 %i.dy, i32 %i.dz, i32 %.05982.i.us ; 2 uses
  %i.ea = shl i32 %spec.select.i.us, 1
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.lr.ph80.preheader.i.us, label %._crit_edge.i.us

.lr.ph80.preheader.i.us:                          ; preds = %.preheader71.i.us
  %i.ec = shl i32 %indvars81, 1
  %i.ed = sext i32 %i.ec to i64
  %invariant.gep.i.us = getelementptr [2 x i8], ptr %1, i64 %i.ed ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.dx)
  %i.ee = add i32 %smin, %indvars.iv78
  %i.ef = shl i32 %i.ee, 1                        ; 2 uses
  %i.eg = zext i32 %i.ef to i64                   ; 3 uses
  %min.iters.check = icmp ult i32 %i.ef, 8
  br i1 %min.iters.check, label %.lr.ph80.i.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph80.preheader.i.us
  %n.vec = and i64 %i.eg, 4294967288              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %wide.load = load <4 x float>, ptr %i.eh, align 16
  %wide.load110 = load <4 x float>, ptr %i.ei, align 16
  %i.ej = fadd <4 x float> %wide.load, splat (float 3.840000e+02)
  %i.ek = fadd <4 x float> %wide.load110, splat (float 3.840000e+02)
  %i.el = bitcast <4 x float> %i.ej to <4 x i32>
  %i.em = bitcast <4 x float> %i.ek to <4 x i32>
  %i.en = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.el, <4 x i32> splat (i32 1136623616))
  %i.eo = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.em, <4 x i32> splat (i32 1136623616))
  %i.ep = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.en, <4 x i32> splat (i32 1136689151))
  %i.eq = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.eo, <4 x i32> splat (i32 1136689151))
  %i.er = trunc <4 x i32> %i.ep to <4 x i16>
  %i.es = trunc <4 x i32> %i.eq to <4 x i16>
  %i.et = getelementptr [2 x i8], ptr %invariant.gep.i.us, i64 %index ; 2 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 8
  store <4 x i16> %i.er, ptr %i.et, align 2
  store <4 x i16> %i.es, ptr %i.eu, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ev = icmp eq i64 %index.next, %n.vec
  br i1 %i.ev, label %middle.block, label %vector.body, !llvm.loop !1057

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.eg
  br i1 %cmp.n, label %._crit_edge.i.us, label %.lr.ph80.i.us.preheader

.lr.ph80.i.us.preheader:                          ; preds = %.lr.ph80.preheader.i.us, %middle.block
  %indvars.iv.i.us.ph = phi i64 [ 0, %.lr.ph80.preheader.i.us ], [ %n.vec, %middle.block ]
  br label %.lr.ph80.i.us

.lr.ph80.i.us:                                    ; preds = %.lr.ph80.i.us.preheader, %.lr.ph80.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.lr.ph80.i.us ], [ %indvars.iv.i.us.ph, %.lr.ph80.i.us.preheader ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.us
  %i.ex = load float, ptr %i.ew, align 4
  %i.ey = fadd float %i.ex, 3.840000e+02
  %i.ez = bitcast float %i.ey to i32
  %i.fa = tail call i32 @llvm.smax.i32(i32 %i.ez, i32 1136623616)
  %i.fb = tail call i32 @llvm.umin.i32(i32 %i.fa, i32 1136689151)
  %i.fc = trunc i32 %i.fb to i16
  %gep.i.us = getelementptr [2 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.us
  store i16 %i.fc, ptr %gep.i.us, align 2
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next.i.us, %i.eg
  br i1 %exitcond80.not, label %._crit_edge.i.us, label %.lr.ph80.i.us, !llvm.loop !1058

._crit_edge.i.us:                                 ; preds = %.lr.ph80.i.us, %middle.block, %.preheader71.i.us
  %indvars.iv.next92.i.us = add nuw nsw i64 %indvars.iv91.i.us, 16 ; 2 uses
  %i.fd = icmp samesign ult i64 %indvars.iv.next92.i.us, %i.h
  %indvars.iv.next79 = add i32 %indvars.iv78, -16
  br i1 %i.fd, label %.preheader71.i.us, label %compute_stereo_samples.exit.loopexit46.us

compute_stereo_samples.exit.loopexit46.us:        ; preds = %._crit_edge.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  %exitcond82.not = icmp eq i32 %0, 1
  br i1 %exitcond82.not, label %.loopexit, label %.lr.ph84.i.us.1

.lr.ph84.i.us.1:                                  ; preds = %compute_stereo_samples.exit.loopexit46.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  br label %.preheader71.i.us.1

.preheader71.i.us.1:                              ; preds = %._crit_edge.i.us.1, %.lr.ph84.i.us.1
  %indvars.iv78.1 = phi i32 [ %indvars.iv.next79.1, %._crit_edge.i.us.1 ], [ 0, %.lr.ph84.i.us.1 ] ; 2 uses
  %indvars.iv91.i.us.1 = phi i64 [ %indvars.iv.next92.i.us.1, %._crit_edge.i.us.1 ], [ 0, %.lr.ph84.i.us.1 ] ; 2 uses
  %.05982.i.us.1 = phi i32 [ %spec.select.i.us.1, %._crit_edge.i.us.1 ], [ 16, %.lr.ph84.i.us.1 ] ; 2 uses
  %indvars81.1 = trunc i64 %indvars.iv91.i.us.1 to i32 ; 3 uses
  %i.fe = add nsw i32 %.05982.i.us.1, %indvars81.1 ; 2 uses
  %i.ff = icmp sgt i32 %i.fe, %5
  %i.fg = sub i32 %5, %indvars81.1
  %spec.select.i.us.1 = select i1 %i.ff, i32 %i.fg, i32 %.05982.i.us.1 ; 2 uses
  %i.fh = shl i32 %spec.select.i.us.1, 1
  %i.fi = icmp sgt i32 %i.fh, 0
  br i1 %i.fi, label %.lr.ph80.preheader.i.us.1, label %._crit_edge.i.us.1

.lr.ph80.preheader.i.us.1:                        ; preds = %.preheader71.i.us.1
  %i.fj = shl i32 %indvars81.1, 1
  %i.fk = sext i32 %i.fj to i64
  %invariant.gep.i.us.1 = getelementptr [2 x i8], ptr %1, i64 %i.fk ; 2 uses
  %smin.1 = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.fe)
  %i.fl = add i32 %smin.1, %indvars.iv78.1
  %i.fm = shl i32 %i.fl, 1                        ; 2 uses
  %i.fn = zext i32 %i.fm to i64                   ; 3 uses
  %min.iters.check.1 = icmp ult i32 %i.fm, 8
end_hunk_1
