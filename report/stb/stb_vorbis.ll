Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_vorbis?download=true
inline.NumInlined: 339
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 46
begin_hunk_0_@stb_vorbis_open_memory:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 1808
  store i32 -1, ptr %i.p, align 8, !tbaa !365
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 60
  store i32 0, ptr %i.q, align 4, !tbaa !362
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr null, ptr %i.r, align 8, !tbaa !73
  store ptr %0, ptr %i.n, align 8, !tbaa !70
  %i.s = sext i32 %1 to i64
  %i.t = getelementptr inbounds i8, ptr %0, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  store ptr %i.t, ptr %i.u, align 8, !tbaa !71
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr %0, ptr %i.v, align 8, !tbaa !75
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i32 %1, ptr %i.w, align 8, !tbaa !395
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 92
  store i8 0, ptr %i.x, align 4, !tbaa !74
  %i.y = call i32 @start_decoder(ptr noundef nonnull %4)
  %.not20 = icmp eq i32 %i.y, 0
  br i1 %.not20, label %vorbis_alloc.exit.thread, label %bb.f

bb.f:                                             ; preds = %vorbis_init.exit
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !14
  %i.ab = add i32 %i.aa, 1904
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !22 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !23 ; 2 uses
  %i.ag = add nsw i32 %i.af, 1904                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 148
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !24
  %i.aj = icmp sgt i32 %i.ag, %i.ai
  br i1 %i.aj, label %vorbis_alloc.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = sext i32 %i.af to i64
  %i.al = getelementptr inbounds i8, ptr %i.ad, i64 %i.ak
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !23
  br label %vorbis_alloc.exit

bb.i:                                             ; preds = %bb.f
  %i.am = call noalias dereferenceable_or_null(1904) ptr @malloc(i64 noundef 1904) #29
  br label %vorbis_alloc.exit

vorbis_alloc.exit:                                ; preds = %bb.h, %bb.i
  %.1.i.i = phi ptr [ %i.am, %bb.i ], [ %i.al, %bb.h ] ; 8 uses
  %.not21 = icmp eq ptr %.1.i.i, null
  br i1 %.not21, label %vorbis_alloc.exit.thread, label %bb.j

bb.j:                                             ; preds = %vorbis_alloc.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1904) %.1.i.i, ptr noundef nonnull align 8 dereferenceable(1904) %4, i64 1904, i1 false), !tbaa.struct !393
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.an = call i32 @vorbis_decode_initial(ptr noundef nonnull %.1.i.i, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a)
  %.not.i.i24 = icmp eq i32 %i.an, 0
  br i1 %.not.i.i24, label %vorbis_decode_packet.exit.thread.i, label %vorbis_decode_packet.exit.i

vorbis_decode_packet.exit.thread.i:               ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %vorbis_pump_first_frame.exit

vorbis_decode_packet.exit.i:                      ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 500
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !25
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [6 x i8], ptr %i.ao, i64 %i.aq
  %i.as = load i32, ptr %i.f, align 4, !tbaa !25
  %i.at = load i32, ptr %i.e, align 4, !tbaa !25  ; 2 uses
  %i.au = load i32, ptr %i.c, align 4, !tbaa !25
  %i.av = call i32 @vorbis_decode_packet_rest(ptr noundef nonnull %.1.i.i, ptr noundef nonnull %i.d, ptr noundef nonnull %i.ar, i32 noundef %i.as, i32 poison, i32 noundef %i.at, i32 noundef %i.au, ptr noundef nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.not.i25 = icmp eq i32 %i.av, 0
  br i1 %.not.i25, label %vorbis_pump_first_frame.exit, label %bb.k

bb.k:                                             ; preds = %vorbis_decode_packet.exit.i
  %i.aw = load i32, ptr %i.d, align 4, !tbaa !25
  %i.ax = load i32, ptr %i.f, align 4, !tbaa !25
  %i.ay = call i32 @vorbis_finish_frame(ptr noundef nonnull %.1.i.i, i32 noundef %i.aw, i32 noundef %i.ax, i32 noundef %i.at) ; 0 uses
  br label %vorbis_pump_first_frame.exit

vorbis_pump_first_frame.exit:                     ; preds = %vorbis_decode_packet.exit.thread.i, %vorbis_decode_packet.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  %.not23 = icmp eq ptr %2, null
  br i1 %.not23, label %bb.o, label %bb.l

bb.l:                                             ; preds = %vorbis_pump_first_frame.exit
  store i32 0, ptr %2, align 4, !tbaa !25
  br label %bb.o

vorbis_alloc.exit.thread:                         ; preds = %bb.g, %vorbis_alloc.exit, %vorbis_init.exit
  %.not22 = icmp eq ptr %2, null
  br i1 %.not22, label %bb.n, label %bb.m

bb.m:                                             ; preds = %vorbis_alloc.exit.thread
  %i.az = load i32, ptr %i.m, align 4, !tbaa !290
  store i32 %i.az, ptr %2, align 4, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %vorbis_alloc.exit.thread
  call void @vorbis_deinit(ptr noundef nonnull %4)
  br label %bb.o

bb.o:                                             ; preds = %vorbis_pump_first_frame.exit, %bb.l, %bb.b, %bb.c, %bb.n
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.n ], [ null, %bb.c ], [ %.1.i.i, %bb.l ], [ %.1.i.i, %vorbis_pump_first_frame.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @copy_samples(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #21 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load = load <4 x float>, ptr %i.b, align 4, !tbaa !56
  %wide.load12 = load <4 x float>, ptr %i.c, align 4, !tbaa !56
  %i.d = fadd <4 x float> %wide.load, splat (float 3.840000e+02)
  %i.e = fadd <4 x float> %wide.load12, splat (float 3.840000e+02)
  %i.f = bitcast <4 x float> %i.d to <4 x i32>
  %i.g = bitcast <4 x float> %i.e to <4 x i32>
  %i.h = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.f, <4 x i32> splat (i32 1136623616))
  %i.i = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.g, <4 x i32> splat (i32 1136623616))
  %i.j = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.h, <4 x i32> splat (i32 1136689151))
  %i.k = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.i, <4 x i32> splat (i32 1136689151))
  %i.l = trunc <4 x i32> %i.j to <4 x i16>
  %i.m = trunc <4 x i32> %i.k to <4 x i16>
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store <4 x i16> %i.l, ptr %i.n, align 2, !tbaa !44
  store <4 x i16> %i.m, ptr %i.o, align 2, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !418

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader13

.lr.ph.preheader13:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader13, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader13 ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.r = load float, ptr %i.q, align 4, !tbaa !56
  %i.s = fadd float %i.r, 3.840000e+02
  %i.t = bitcast float %i.s to i32
  %i.u = tail call i32 @llvm.smax.i32(i32 %i.t, i32 1136623616)
  %i.v = tail call i32 @llvm.umin.i32(i32 %i.u, i32 1136689151)
  %i.w = trunc i32 %i.v to i16
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.w, ptr %i.x, align 2, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !419

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @compute_samples(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca [32 x float], align 16            ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = icmp sgt i32 %5, 0
  br i1 %i.b, label %.lr.ph47, label %._crit_edge48

.lr.ph47:                                         ; preds = %bb.a
  %i.c = icmp sgt i32 %2, 0
  %6 = sext i32 %2 to i64
  %i.d = getelementptr inbounds [6 x i8], ptr @channel_position, i64 %6
  br i1 %i.c, label %.lr.ph42.us.preheader, label %.lr.ph47.split

.lr.ph42.us.preheader:                            ; preds = %.lr.ph47
  %i.e = zext nneg i32 %5 to i64
  %i.f = sext i32 %4 to i64
  %wide.trip.count66 = zext nneg i32 %2 to i64
  br label %.lr.ph42.us

.lr.ph42.us:                                      ; preds = %.lr.ph42.us.preheader, %._crit_edge.us
  %indvars.iv73 = phi i64 [ 0, %.lr.ph42.us.preheader ], [ %indvars.iv.next74, %._crit_edge.us ] ; 5 uses
  %.03245.us = phi i32 [ 32, %.lr.ph42.us.preheader ], [ %spec.select.us.fr, %._crit_edge.us ] ; 2 uses
  %indvars75 = trunc i64 %indvars.iv73 to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.g = add nsw i32 %.03245.us, %indvars75
  %i.h = icmp sgt i32 %i.g, %5
  %i.i = trunc i64 %indvars.iv73 to i32
  %i.j = sub i32 %5, %i.i
  %spec.select.us = select i1 %i.h, i32 %i.j, i32 %.03245.us
  %spec.select.us.fr = freeze i32 %spec.select.us ; 6 uses
  %i.k = icmp sgt i32 %spec.select.us.fr, 0
  br i1 %i.k, label %.lr.ph42.split.us.us.preheader, label %._crit_edge.us

.lr.ph42.split.us.us.preheader:                   ; preds = %.lr.ph42.us
  %wide.trip.count = zext nneg i32 %spec.select.us.fr to i64 ; 5 uses
  %min.iters.check95 = icmp ult i32 %spec.select.us.fr, 8
  %n.vec97 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n106 = icmp eq i64 %n.vec97, %wide.trip.count
  br label %.lr.ph42.split.us.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader108, %.lr.ph.us
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %.lr.ph.us ], [ %indvars.iv68.ph, %.lr.ph.us.preheader108 ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv68
  %i.m = load float, ptr %i.l, align 4, !tbaa !56
  %i.n = fadd float %i.m, 3.840000e+02
  %i.o = bitcast float %i.n to i32
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.o, i32 1136623616)
  %i.q = tail call i32 @llvm.umin.i32(i32 %i.p, i32 1136689151)
  %i.r = trunc i32 %i.q to i16
  %gep79 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep78, i64 %indvars.iv68
  store i16 %i.r, ptr %gep79, align 2, !tbaa !44
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %exitcond72.not = icmp eq i64 %indvars.iv.next69, %wide.trip.count71
  br i1 %exitcond72.not, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !420

._crit_edge.us:                                   ; preds = %.lr.ph.us, %middle.block91, %.lr.ph42.us
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 32 ; 2 uses
  %i.s = icmp samesign ult i64 %indvars.iv.next74, %i.e
  br i1 %i.s, label %.lr.ph42.us, label %._crit_edge48, !llvm.loop !421

.lr.ph.us.preheader:                              ; preds = %..loopexit_crit_edge.us.us
  %wide.trip.count71 = zext nneg i32 %spec.select.us.fr to i64
  %invariant.gep78 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv73 ; 2 uses
  %min.iters.check83 = icmp ult i32 %spec.select.us.fr, 8
  br i1 %min.iters.check83, label %.lr.ph.us.preheader108, label %vector.ph84

vector.ph84:                                      ; preds = %.lr.ph.us.preheader
  %n.vec85 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body86

vector.body86:                                    ; preds = %vector.body86, %vector.ph84
  %index87 = phi i64 [ 0, %vector.ph84 ], [ %index.next90, %vector.body86 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index87 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load88.a = load <4 x float>, ptr %i.t, align 16, !tbaa !56
  %wide.load89 = load <4 x float>, ptr %i.u, align 16, !tbaa !56
  %i.v = fadd <4 x float> %wide.load88.a, splat (float 3.840000e+02)
  %i.w = fadd <4 x float> %wide.load89, splat (float 3.840000e+02)
  %i.x = bitcast <4 x float> %i.v to <4 x i32>
  %i.y = bitcast <4 x float> %i.w to <4 x i32>
  %i.z = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.x, <4 x i32> splat (i32 1136623616))
  %i.aa = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.y, <4 x i32> splat (i32 1136623616))
  %i.ab = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.z, <4 x i32> splat (i32 1136689151))
  %i.ac = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.aa, <4 x i32> splat (i32 1136689151))
  %i.ad = trunc <4 x i32> %i.ab to <4 x i16>
  %i.ae = trunc <4 x i32> %i.ac to <4 x i16>
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep78, i64 %index87 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store <4 x i16> %i.ad, ptr %i.af, align 2, !tbaa !44
  store <4 x i16> %i.ae, ptr %i.ag, align 2, !tbaa !44
  %index.next90 = add nuw i64 %index87, 8         ; 2 uses
  %i.ah = icmp eq i64 %index.next90, %n.vec85
  br i1 %i.ah, label %middle.block91, label %vector.body86, !llvm.loop !422

middle.block91:                                   ; preds = %vector.body86
  %cmp.n92 = icmp eq i64 %n.vec85, %wide.trip.count
  br i1 %cmp.n92, label %._crit_edge.us, label %.lr.ph.us.preheader108

.lr.ph.us.preheader108:                           ; preds = %.lr.ph.us.preheader, %middle.block91
  %indvars.iv68.ph = phi i64 [ 0, %.lr.ph.us.preheader ], [ %n.vec85, %middle.block91 ]
  br label %.lr.ph.us

.lr.ph42.split.us.us:                             ; preds = %.lr.ph42.split.us.us.preheader, %..loopexit_crit_edge.us.us
  %indvars.iv63 = phi i64 [ 0, %.lr.ph42.split.us.us.preheader ], [ %indvars.iv.next64, %..loopexit_crit_edge.us.us ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv63
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !29
  %i.ak = sext i8 %i.aj to i32
  %i.al = and i32 %0, %i.ak
  %.not.us.us = icmp eq i32 %i.al, 0
  br i1 %.not.us.us, label %..loopexit_crit_edge.us.us, label %.preheader.us.us

scalar.ph94:                                      ; preds = %scalar.ph94.preheader, %scalar.ph94
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %scalar.ph94 ], [ %indvars.iv60.ph, %scalar.ph94.preheader ] ; 3 uses
  %i.am = getelementptr [4 x i8], ptr %i.au, i64 %indvars.iv60
  %i.an = load float, ptr %i.am, align 4, !tbaa !56
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv60 ; 2 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !56
  %i.aq = fadd float %i.an, %i.ap
  store float %i.aq, ptr %i.ao, align 4, !tbaa !56
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us.us, label %scalar.ph94, !llvm.loop !423

..loopexit_crit_edge.us.us:                       ; preds = %scalar.ph94, %middle.block105, %.lr.ph42.split.us.us
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count66
  br i1 %exitcond67.not, label %.lr.ph.us.preheader, label %.lr.ph42.split.us.us, !llvm.loop !424

.preheader.us.us:                                 ; preds = %.lr.ph42.split.us.us
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv63
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !62
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %indvars.iv73
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.f ; 2 uses
  br i1 %min.iters.check95, label %scalar.ph94.preheader, label %vector.body98

vector.body98:                                    ; preds = %.preheader.us.us, %vector.body98
  %index99 = phi i64 [ %index.next104, %vector.body98 ], [ 0, %.preheader.us.us ] ; 3 uses
  %i.av = getelementptr [4 x i8], ptr %i.au, i64 %index99 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  %wide.load100.a = load <4 x float>, ptr %i.av, align 4, !tbaa !56
  %wide.load101.a = load <4 x float>, ptr %i.aw, align 4, !tbaa !56
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index99 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %wide.load102.a = load <4 x float>, ptr %i.ax, align 16, !tbaa !56
  %wide.load103 = load <4 x float>, ptr %i.ay, align 16, !tbaa !56
  %i.az = fadd <4 x float> %wide.load100.a, %wide.load102.a
  %i.ba = fadd <4 x float> %wide.load101.a, %wide.load103
  store <4 x float> %i.az, ptr %i.ax, align 16, !tbaa !56
  store <4 x float> %i.ba, ptr %i.ay, align 16, !tbaa !56
  %index.next104 = add nuw i64 %index99, 8        ; 2 uses
  %i.bb = icmp eq i64 %index.next104, %n.vec97
  br i1 %i.bb, label %middle.block105, label %vector.body98, !llvm.loop !425

middle.block105:                                  ; preds = %vector.body98
  br i1 %cmp.n106, label %..loopexit_crit_edge.us.us, label %scalar.ph94.preheader

scalar.ph94.preheader:                            ; preds = %.preheader.us.us, %middle.block105
  %indvars.iv60.ph = phi i64 [ 0, %.preheader.us.us ], [ %n.vec97, %middle.block105 ]
  br label %scalar.ph94

.lr.ph47.split:                                   ; preds = %.lr.ph47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.bc = zext nneg i32 %5 to i64
  br label %.preheader39

.preheader39:                                     ; preds = %.lr.ph47.split, %._crit_edge
  %indvars.iv57 = phi i64 [ 0, %.lr.ph47.split ], [ %indvars.iv.next58, %._crit_edge ] ; 4 uses
  %.03245 = phi i32 [ 32, %.lr.ph47.split ], [ %spec.select, %._crit_edge ] ; 2 uses
  %i.bd = trunc nuw nsw i64 %indvars.iv57 to i32
  %i.be = add nsw i32 %.03245, %i.bd
  %i.bf = icmp sgt i32 %i.be, %5
  %i.bg = trunc i64 %indvars.iv57 to i32
  %i.bh = sub i32 %5, %i.bg
  %spec.select = select i1 %i.bf, i32 %i.bh, i32 %.03245 ; 4 uses
  %i.bi = icmp sgt i32 %spec.select, 0
  br i1 %i.bi, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader39
  %i.bj = zext nneg i32 %spec.select to i64       ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv57 ; 2 uses
  %min.iters.check = icmp ult i32 %spec.select, 8
  br i1 %min.iters.check, label %.lr.ph.preheader109, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bj, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load = load <4 x float>, ptr %i.bk, align 16, !tbaa !56
  %wide.load81 = load <4 x float>, ptr %i.bl, align 16, !tbaa !56
  %i.bm = fadd <4 x float> %wide.load, splat (float 3.840000e+02)
  %i.bn = fadd <4 x float> %wide.load81, splat (float 3.840000e+02)
  %i.bo = bitcast <4 x float> %i.bm to <4 x i32>
  %i.bp = bitcast <4 x float> %i.bn to <4 x i32>
  %i.bq = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bo, <4 x i32> splat (i32 1136623616))
  %i.br = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bp, <4 x i32> splat (i32 1136623616))
  %i.bs = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bq, <4 x i32> splat (i32 1136689151))
  %i.bt = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.br, <4 x i32> splat (i32 1136689151))
  %i.bu = trunc <4 x i32> %i.bs to <4 x i16>
  %i.bv = trunc <4 x i32> %i.bt to <4 x i16>
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store <4 x i16> %i.bu, ptr %i.bw, align 2, !tbaa !44
  store <4 x i16> %i.bv, ptr %i.bx, align 2, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !426

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bj
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader109

.lr.ph.preheader109:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader109, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader109 ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !56
  %i.cb = fadd float %i.ca, 3.840000e+02
  %i.cc = bitcast float %i.cb to i32
  %i.cd = tail call i32 @llvm.smax.i32(i32 %i.cc, i32 1136623616)
  %i.ce = tail call i32 @llvm.umin.i32(i32 %i.cd, i32 1136689151)
  %i.cf = trunc i32 %i.ce to i16
  %gep = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i16 %i.cf, ptr %gep, align 2, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cg = icmp samesign ult i64 %indvars.iv.next, %i.bj
  br i1 %i.cg, label %.lr.ph, label %._crit_edge, !llvm.loop !427

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.preheader39
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 32 ; 2 uses
  %i.ch = icmp samesign ult i64 %indvars.iv.next58, %i.bc
  br i1 %i.ch, label %.preheader39, label %._crit_edge48, !llvm.loop !421

._crit_edge48:                                    ; preds = %._crit_edge, %._crit_edge.us, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @compute_stereo_samples(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca [32 x float], align 16            ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = icmp sgt i32 %4, 0
  br i1 %i.b, label %.lr.ph84, label %._crit_edge85

.lr.ph84:                                         ; preds = %bb.a
  %i.c = icmp sgt i32 %1, 0
  %5 = sext i32 %1 to i64
  %i.d = getelementptr inbounds [6 x i8], ptr @channel_position, i64 %5
  br i1 %i.c, label %.lr.ph78.us.preheader, label %.lr.ph84.split

.lr.ph78.us.preheader:                            ; preds = %.lr.ph84
  %i.e = zext nneg i32 %4 to i64
  %i.f = sext i32 %3 to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph78.us

.lr.ph78.us:                                      ; preds = %.lr.ph78.us.preheader, %._crit_edge.us
  %indvars.iv109 = phi i64 [ 0, %.lr.ph78.us.preheader ], [ %indvars.iv.next110, %._crit_edge.us ] ; 5 uses
  %.05982.us = phi i32 [ 16, %.lr.ph78.us.preheader ], [ %spec.select.us, %._crit_edge.us ] ; 2 uses
  %indvars111 = trunc i64 %indvars.iv109 to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.g = add i32 %.05982.us, %indvars111
  %i.h = icmp sgt i32 %i.g, %4
  %i.i = trunc i64 %indvars.iv109 to i32
  %i.j = sub i32 %4, %i.i
  %spec.select.us = select i1 %i.h, i32 %i.j, i32 %.05982.us ; 9 uses
  %i.k = icmp sgt i32 %spec.select.us, 0          ; 3 uses
  %i.l = add nsw i64 %indvars.iv109, %i.f         ; 3 uses
  %i.m = sext i32 %spec.select.us to i64          ; 9 uses
  %min.iters.check163 = icmp ult i32 %spec.select.us, 5
  %i.n = and i64 %i.m, 3
  %i.o = and i32 %spec.select.us, 3
  %i.p = icmp eq i32 %i.o, 0
  %i.q = select i1 %i.p, i64 4, i64 %i.n
  %n.vec165 = sub nsw i64 %i.m, %i.q              ; 2 uses
  %min.iters.check151 = icmp ult i32 %spec.select.us, 5
  %i.r = and i64 %i.m, 3
  %i.s = and i32 %spec.select.us, 3
  %i.t = icmp eq i32 %i.s, 0
  %i.u = select i1 %i.t, i64 4, i64 %i.r
  %n.vec153 = sub nsw i64 %i.m, %i.u              ; 2 uses
  %min.iters.check139 = icmp eq i32 %spec.select.us, 1
  %n.vec141 = and i64 %i.m, 2147483646            ; 3 uses
  %cmp.n148 = icmp eq i64 %n.vec141, %i.m
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph78.us, %.loopexit.us
  %indvars.iv103 = phi i64 [ 0, %.lr.ph78.us ], [ %indvars.iv.next104, %.loopexit.us ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv103
  %i.w = load i8, ptr %i.v, align 1, !tbaa !29
  %i.x = and i8 %i.w, 6
  switch i8 %i.x, label %.unreachabledefault86 [
    i8 6, label %.preheader.us
    i8 2, label %.preheader67.us
    i8 4, label %.preheader69.us
    i8 0, label %.loopexit.us
  ]

scalar.ph162:                                     ; preds = %scalar.ph162.preheader, %scalar.ph162
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %scalar.ph162 ], [ %indvars.iv94.ph, %scalar.ph162.preheader ] ; 3 uses
  %i.y = getelementptr [4 x i8], ptr %i.be, i64 %indvars.iv94
  %i.z = load float, ptr %i.y, align 4, !tbaa !56
  %.idx = shl nuw nsw i64 %indvars.iv94, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !56
  %i.ad = fadd float %i.z, %i.ac
  store float %i.ad, ptr %i.ab, align 4, !tbaa !56
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %i.ae = icmp slt i64 %indvars.iv.next95, %i.m
  br i1 %i.ae, label %scalar.ph162, label %.loopexit.us, !llvm.loop !428

scalar.ph150:                                     ; preds = %scalar.ph150.preheader, %scalar.ph150
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %scalar.ph150 ], [ %indvars.iv97.ph, %scalar.ph150.preheader ] ; 3 uses
  %i.af = getelementptr [4 x i8], ptr %i.ca, i64 %indvars.iv97
  %i.ag = load float, ptr %i.af, align 4, !tbaa !56
  %.idx115.a = shl nuw nsw i64 %indvars.iv97, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx115.a ; 2 uses
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !56
  %i.aj = fadd float %i.ag, %i.ai
  store float %i.aj, ptr %i.ah, align 8, !tbaa !56
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %i.ak = icmp slt i64 %indvars.iv.next98, %i.m
  br i1 %i.ak, label %scalar.ph150, label %.loopexit.us, !llvm.loop !429

scalar.ph138:                                     ; preds = %scalar.ph138.preheader, %scalar.ph138
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %scalar.ph138 ], [ %indvars.iv100.ph, %scalar.ph138.preheader ] ; 3 uses
  %i.al = getelementptr [4 x i8], ptr %i.cv, i64 %indvars.iv100
  %i.am = load float, ptr %i.al, align 4, !tbaa !56
  %.idx116 = shl nuw nsw i64 %indvars.iv100, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx116 ; 2 uses
  %i.ao = load <2 x float>, ptr %i.an, align 8, !tbaa !56
  %i.ap = insertelement <2 x float> poison, float %i.am, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = fadd <2 x float> %i.aq, %i.ao
  store <2 x float> %i.ar, ptr %i.an, align 8, !tbaa !56
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %i.as = icmp slt i64 %indvars.iv.next101, %i.m
  br i1 %i.as, label %scalar.ph138, label %.loopexit.us, !llvm.loop !430

.loopexit.us:                                     ; preds = %scalar.ph162, %scalar.ph150, %scalar.ph138, %middle.block147, %.preheader69.us, %.preheader67.us, %.preheader.us, %bb.b
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count
  br i1 %exitcond.not, label %..preheader71_crit_edge.us, label %bb.b, !llvm.loop !431

.lr.ph80.us:                                      ; preds = %.lr.ph80.us.preheader176, %.lr.ph80.us
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %.lr.ph80.us ], [ %indvars.iv106.ph, %.lr.ph80.us.preheader176 ] ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv106
  %i.au = load float, ptr %i.at, align 4, !tbaa !56
  %i.av = fadd float %i.au, 3.840000e+02
  %i.aw = bitcast float %i.av to i32
  %i.ax = tail call i32 @llvm.smax.i32(i32 %i.aw, i32 1136623616)
  %i.ay = tail call i32 @llvm.umin.i32(i32 %i.ax, i32 1136689151)
  %i.az = trunc i32 %i.ay to i16
  %gep121 = getelementptr [2 x i8], ptr %invariant.gep120, i64 %indvars.iv106
  store i16 %i.az, ptr %gep121, align 2, !tbaa !44
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %i.ba = icmp samesign ult i64 %indvars.iv.next107, %i.df
  br i1 %i.ba, label %.lr.ph80.us, label %._crit_edge.us, !llvm.loop !432

._crit_edge.us:                                   ; preds = %.lr.ph80.us, %middle.block135, %..preheader71_crit_edge.us
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 16 ; 2 uses
  %i.bb = icmp samesign ult i64 %indvars.iv.next110, %i.e
  br i1 %i.bb, label %.lr.ph78.us, label %._crit_edge85, !llvm.loop !433

.preheader.us:                                    ; preds = %bb.b
  br i1 %i.k, label %.lr.ph76.us, label %.loopexit.us

.preheader67.us:                                  ; preds = %bb.b
  br i1 %i.k, label %.lr.ph74.us, label %.loopexit.us

.preheader69.us:                                  ; preds = %bb.b
  br i1 %i.k, label %.lr.ph.us, label %.loopexit.us

.lr.ph.us:                                        ; preds = %.preheader69.us
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv103
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !62
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %i.l ; 2 uses
  br i1 %min.iters.check163, label %scalar.ph162.preheader, label %vector.body166

scalar.ph162.preheader:                           ; preds = %vector.body166, %.lr.ph.us
  %indvars.iv94.ph = phi i64 [ 0, %.lr.ph.us ], [ %n.vec165, %vector.body166 ]
  br label %scalar.ph162

vector.body166:                                   ; preds = %.lr.ph.us, %vector.body166
  %index167 = phi i64 [ %index.next171, %vector.body166 ], [ 0, %.lr.ph.us ] ; 6 uses
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %index167
  %wide.load168 = load <4 x float>, ptr %i.bf, align 4, !tbaa !56
  %i.bg = shl nuw nsw i64 %index167, 3
  %i.bh = shl i64 %index167, 3
  %i.bi = shl i64 %index167, 3
  %i.bj = shl i64 %index167, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bg
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bh
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bi
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bj
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 20
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 28
  %wide.vec169 = load <8 x float>, ptr %i.bo, align 4, !tbaa !56
  %strided.vec170 = shufflevector <8 x float> %wide.vec169, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bs = fadd <4 x float> %wide.load168, %strided.vec170 ; 4 uses
  %i.bt = extractelement <4 x float> %i.bs, i64 0
  store float %i.bt, ptr %i.bo, align 4, !tbaa !56
  %i.bu = extractelement <4 x float> %i.bs, i64 1
  store float %i.bu, ptr %i.bp, align 4, !tbaa !56
  %i.bv = extractelement <4 x float> %i.bs, i64 2
  store float %i.bv, ptr %i.bq, align 4, !tbaa !56
  %i.bw = extractelement <4 x float> %i.bs, i64 3
  store float %i.bw, ptr %i.br, align 4, !tbaa !56
  %index.next171 = add nuw i64 %index167, 4       ; 2 uses
  %i.bx = icmp eq i64 %index.next171, %n.vec165
  br i1 %i.bx, label %scalar.ph162.preheader, label %vector.body166, !llvm.loop !434

.lr.ph74.us:                                      ; preds = %.preheader67.us
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv103
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !62
  %i.ca = getelementptr [4 x i8], ptr %i.bz, i64 %i.l ; 2 uses
  br i1 %min.iters.check151, label %scalar.ph150.preheader, label %vector.body154

scalar.ph150.preheader:                           ; preds = %vector.body154, %.lr.ph74.us
  %indvars.iv97.ph = phi i64 [ 0, %.lr.ph74.us ], [ %n.vec153, %vector.body154 ]
  br label %scalar.ph150

vector.body154:                                   ; preds = %.lr.ph74.us, %vector.body154
  %index155 = phi i64 [ %index.next159, %vector.body154 ], [ 0, %.lr.ph74.us ] ; 6 uses
  %i.cb = getelementptr [4 x i8], ptr %i.ca, i64 %index155
  %wide.load156 = load <4 x float>, ptr %i.cb, align 4, !tbaa !56
  %i.cc = shl nuw nsw i64 %index155, 3
  %i.cd = shl i64 %index155, 3
  %i.ce = shl i64 %index155, 3
  %i.cf = shl i64 %index155, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cc ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cd
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ce
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cf
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %wide.vec157 = load <8 x float>, ptr %i.cg, align 16, !tbaa !56
  %strided.vec158 = shufflevector <8 x float> %wide.vec157, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.cn = fadd <4 x float> %wide.load156, %strided.vec158 ; 4 uses
  %i.co = extractelement <4 x float> %i.cn, i64 0
  store float %i.co, ptr %i.cg, align 16, !tbaa !56
  %i.cp = extractelement <4 x float> %i.cn, i64 1
  store float %i.cp, ptr %i.ci, align 8, !tbaa !56
  %i.cq = extractelement <4 x float> %i.cn, i64 2
  store float %i.cq, ptr %i.ck, align 16, !tbaa !56
  %i.cr = extractelement <4 x float> %i.cn, i64 3
  store float %i.cr, ptr %i.cm, align 8, !tbaa !56
  %index.next159 = add nuw i64 %index155, 4       ; 2 uses
  %i.cs = icmp eq i64 %index.next159, %n.vec153
  br i1 %i.cs, label %scalar.ph150.preheader, label %vector.body154, !llvm.loop !435

.lr.ph76.us:                                      ; preds = %.preheader.us
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv103
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !62
  %i.cv = getelementptr [4 x i8], ptr %i.cu, i64 %i.l ; 2 uses
  br i1 %min.iters.check139, label %scalar.ph138.preheader, label %vector.body142

vector.body142:                                   ; preds = %.lr.ph76.us, %vector.body142
  %index143 = phi i64 [ %index.next146, %vector.body142 ], [ 0, %.lr.ph76.us ] ; 3 uses
  %i.cw = getelementptr [4 x i8], ptr %i.cv, i64 %index143
  %wide.load144 = load <2 x float>, ptr %i.cw, align 4, !tbaa !56
  %i.cx = shl nuw nsw i64 %index143, 3
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cx ; 2 uses
  %wide.vec = load <4 x float>, ptr %i.cy, align 16, !tbaa !56
  %i.cz = shufflevector <2 x float> %wide.load144, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %interleaved.vec = fadd <4 x float> %i.cz, %wide.vec
  store <4 x float> %interleaved.vec, ptr %i.cy, align 16, !tbaa !56
  %index.next146 = add nuw i64 %index143, 2       ; 2 uses
  %i.da = icmp eq i64 %index.next146, %n.vec141
  br i1 %i.da, label %middle.block147, label %vector.body142, !llvm.loop !436

middle.block147:                                  ; preds = %vector.body142
  br i1 %cmp.n148, label %.loopexit.us, label %scalar.ph138.preheader

scalar.ph138.preheader:                           ; preds = %.lr.ph76.us, %middle.block147
  %indvars.iv100.ph = phi i64 [ 0, %.lr.ph76.us ], [ %n.vec141, %middle.block147 ]
  br label %scalar.ph138

..preheader71_crit_edge.us:                       ; preds = %.loopexit.us
  %i.db = shl i32 %spec.select.us, 1              ; 3 uses
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %.lr.ph80.us.preheader, label %._crit_edge.us

.lr.ph80.us.preheader:                            ; preds = %..preheader71_crit_edge.us
  %indvars.iv109.tr = trunc i64 %indvars.iv109 to i32
  %i.dd = shl i32 %indvars.iv109.tr, 1
  %i.de = sext i32 %i.dd to i64
  %i.df = zext nneg i32 %i.db to i64              ; 3 uses
  %invariant.gep120 = getelementptr [2 x i8], ptr %0, i64 %i.de ; 2 uses
  %min.iters.check127 = icmp ult i32 %i.db, 8
  br i1 %min.iters.check127, label %.lr.ph80.us.preheader176, label %vector.ph128

vector.ph128:                                     ; preds = %.lr.ph80.us.preheader
  %n.vec129 = and i64 %i.df, 2147483640           ; 3 uses
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph128
  %index131 = phi i64 [ 0, %vector.ph128 ], [ %index.next134, %vector.body130 ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index131 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load132.a = load <4 x float>, ptr %i.dg, align 16, !tbaa !56
  %wide.load133 = load <4 x float>, ptr %i.dh, align 16, !tbaa !56
  %i.di = fadd <4 x float> %wide.load132.a, splat (float 3.840000e+02)
  %i.dj = fadd <4 x float> %wide.load133, splat (float 3.840000e+02)
  %i.dk = bitcast <4 x float> %i.di to <4 x i32>
  %i.dl = bitcast <4 x float> %i.dj to <4 x i32>
  %i.dm = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dk, <4 x i32> splat (i32 1136623616))
  %i.dn = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dl, <4 x i32> splat (i32 1136623616))
  %i.do = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.dm, <4 x i32> splat (i32 1136689151))
  %i.dp = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.dn, <4 x i32> splat (i32 1136689151))
  %i.dq = trunc <4 x i32> %i.do to <4 x i16>
  %i.dr = trunc <4 x i32> %i.dp to <4 x i16>
  %i.ds = getelementptr [2 x i8], ptr %invariant.gep120, i64 %index131 ; 2 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 8
  store <4 x i16> %i.dq, ptr %i.ds, align 2, !tbaa !44
  store <4 x i16> %i.dr, ptr %i.dt, align 2, !tbaa !44
  %index.next134 = add nuw i64 %index131, 8       ; 2 uses
  %i.du = icmp eq i64 %index.next134, %n.vec129
  br i1 %i.du, label %middle.block135, label %vector.body130, !llvm.loop !437

middle.block135:                                  ; preds = %vector.body130
  %cmp.n136 = icmp eq i64 %n.vec129, %i.df
  br i1 %cmp.n136, label %._crit_edge.us, label %.lr.ph80.us.preheader176

.lr.ph80.us.preheader176:                         ; preds = %.lr.ph80.us.preheader, %middle.block135
  %indvars.iv106.ph = phi i64 [ 0, %.lr.ph80.us.preheader ], [ %n.vec129, %middle.block135 ]
  br label %.lr.ph80.us

.unreachabledefault86:                            ; preds = %bb.b
  unreachable

.lr.ph84.split:                                   ; preds = %.lr.ph84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.dv = zext nneg i32 %4 to i64
  br label %.preheader71

.preheader71:                                     ; preds = %.lr.ph84.split, %._crit_edge
  %indvars.iv91 = phi i64 [ 0, %.lr.ph84.split ], [ %indvars.iv.next92, %._crit_edge ] ; 4 uses
  %.05982 = phi i32 [ 16, %.lr.ph84.split ], [ %spec.select, %._crit_edge ] ; 2 uses
  %indvars93 = trunc i64 %indvars.iv91 to i32
  %i.dw = add nsw i32 %.05982, %indvars93
  %i.dx = icmp sgt i32 %i.dw, %4
  %i.dy = trunc i64 %indvars.iv91 to i32
  %i.dz = sub i32 %4, %i.dy
  %spec.select = select i1 %i.dx, i32 %i.dz, i32 %.05982 ; 2 uses
  %i.ea = shl i32 %spec.select, 1                 ; 3 uses
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.lr.ph80.preheader, label %._crit_edge

.lr.ph80.preheader:                               ; preds = %.preheader71
  %indvars.iv91.tr = trunc i64 %indvars.iv91 to i32
  %i.ec = shl i32 %indvars.iv91.tr, 1
  %i.ed = sext i32 %i.ec to i64
  %i.ee = zext nneg i32 %i.ea to i64              ; 3 uses
  %invariant.gep = getelementptr [2 x i8], ptr %0, i64 %i.ed ; 2 uses
  %min.iters.check = icmp ult i32 %i.ea, 8
  br i1 %min.iters.check, label %.lr.ph80.preheader177, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph80.preheader
  %n.vec = and i64 %i.ee, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %wide.load = load <4 x float>, ptr %i.ef, align 16, !tbaa !56
  %wide.load125 = load <4 x float>, ptr %i.eg, align 16, !tbaa !56
  %i.eh = fadd <4 x float> %wide.load, splat (float 3.840000e+02)
  %i.ei = fadd <4 x float> %wide.load125, splat (float 3.840000e+02)
  %i.ej = bitcast <4 x float> %i.eh to <4 x i32>
  %i.ek = bitcast <4 x float> %i.ei to <4 x i32>
  %i.el = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ej, <4 x i32> splat (i32 1136623616))
  %i.em = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ek, <4 x i32> splat (i32 1136623616))
  %i.en = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.el, <4 x i32> splat (i32 1136689151))
  %i.eo = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.em, <4 x i32> splat (i32 1136689151))
  %i.ep = trunc <4 x i32> %i.en to <4 x i16>
  %i.eq = trunc <4 x i32> %i.eo to <4 x i16>
  %i.er = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.es = getelementptr i8, ptr %i.er, i64 8
  store <4 x i16> %i.ep, ptr %i.er, align 2, !tbaa !44
  store <4 x i16> %i.eq, ptr %i.es, align 2, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %middle.block, label %vector.body, !llvm.loop !438

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ee
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph80.preheader177

.lr.ph80.preheader177:                            ; preds = %.lr.ph80.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph80.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph80

.lr.ph80:                                         ; preds = %.lr.ph80.preheader177, %.lr.ph80
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph80 ], [ %indvars.iv.ph, %.lr.ph80.preheader177 ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !56
  %i.ew = fadd float %i.ev, 3.840000e+02
  %i.ex = bitcast float %i.ew to i32
  %i.ey = tail call i32 @llvm.smax.i32(i32 %i.ex, i32 1136623616)
  %i.ez = tail call i32 @llvm.umin.i32(i32 %i.ey, i32 1136689151)
  %i.fa = trunc i32 %i.ez to i16
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i16 %i.fa, ptr %gep, align 2, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fb = icmp samesign ult i64 %indvars.iv.next, %i.ee
  br i1 %i.fb, label %.lr.ph80, label %._crit_edge, !llvm.loop !439

._crit_edge:                                      ; preds = %.lr.ph80, %middle.block, %.preheader71
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 16 ; 2 uses
  %i.fc = icmp samesign ult i64 %indvars.iv.next92, %i.dv
  br i1 %i.fc, label %.preheader71, label %._crit_edge85, !llvm.loop !433

._crit_edge85:                                    ; preds = %._crit_edge, %._crit_edge.us, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @convert_samples_short(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #24 {
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
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @__const.convert_samples_short.channel_selector, i64 %i.f
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
  %i.y = load i32, ptr %i.x, align 4, !tbaa !25   ; 6 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv76
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !63
  %i.ab = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
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
  %i.ag = load i8, ptr %i.j, align 2, !tbaa !29
  %i.ah = sext i8 %i.ag to i32
  %i.ai = and i32 %i.y, %i.ah
  %.not.us.us.i.us.us = icmp eq i32 %i.ai, 0
  br i1 %.not.us.us.i.us.us, label %..loopexit_crit_edge.us.us.i.us.us, label %.preheader.us.us.i.us.us

.preheader.us.us.i.us.us:                         ; preds = %.lr.ph42.split.us.us.preheader.i.us.us
  %i.aj = load ptr, ptr %4, align 8, !tbaa !62
  %i.ak = getelementptr [4 x i8], ptr %i.aj, i64 %indvars.iv73.i.us.us
  %i.al = getelementptr [4 x i8], ptr %i.ak, i64 %i.l ; 2 uses
  %min.iters.check114 = icmp ult i32 %spec.select.us.fr.i.us.us, 8
  br i1 %min.iters.check114, label %scalar.ph113.preheader, label %vector.ph115

vector.ph115:                                     ; preds = %.preheader.us.us.i.us.us
  %n.vec116 = and i64 %wide.trip.count.i.us.us, 2147483640 ; 3 uses
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph115
  %index118 = phi i64 [ 0, %vector.ph115 ], [ %index.next123, %vector.body117 ] ; 3 uses
  %i.am = getelementptr [4 x i8], ptr %i.al, i64 %index118 ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 16
  %wide.load119 = load <4 x float>, ptr %i.am, align 4, !tbaa !56
  %wide.load120 = load <4 x float>, ptr %i.an, align 4, !tbaa !56
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index118 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %wide.load121 = load <4 x float>, ptr %i.ao, align 16, !tbaa !56
  %wide.load122 = load <4 x float>, ptr %i.ap, align 16, !tbaa !56
  %i.aq = fadd <4 x float> %wide.load119, %wide.load121
  %i.ar = fadd <4 x float> %wide.load120, %wide.load122
  store <4 x float> %i.aq, ptr %i.ao, align 16, !tbaa !56
  store <4 x float> %i.ar, ptr %i.ap, align 16, !tbaa !56
  %index.next123 = add nuw i64 %index118, 8       ; 2 uses
  %i.as = icmp eq i64 %index.next123, %n.vec116
  br i1 %i.as, label %middle.block124, label %vector.body117, !llvm.loop !440

middle.block124:                                  ; preds = %vector.body117
  %cmp.n125 = icmp eq i64 %n.vec116, %wide.trip.count.i.us.us
  br i1 %cmp.n125, label %..loopexit_crit_edge.us.us.i.us.us, label %scalar.ph113.preheader

scalar.ph113.preheader:                           ; preds = %.preheader.us.us.i.us.us, %middle.block124
  %indvars.iv60.i.us.us.ph = phi i64 [ 0, %.preheader.us.us.i.us.us ], [ %n.vec116, %middle.block124 ]
  br label %scalar.ph113

scalar.ph113:                                     ; preds = %scalar.ph113.preheader, %scalar.ph113
  %indvars.iv60.i.us.us = phi i64 [ %indvars.iv.next61.i.us.us, %scalar.ph113 ], [ %indvars.iv60.i.us.us.ph, %scalar.ph113.preheader ] ; 3 uses
  %i.at = getelementptr [4 x i8], ptr %i.al, i64 %indvars.iv60.i.us.us
  %i.au = load float, ptr %i.at, align 4, !tbaa !56
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv60.i.us.us ; 2 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !56
  %i.ax = fadd float %i.au, %i.aw
  store float %i.ax, ptr %i.av, align 4, !tbaa !56
  %indvars.iv.next61.i.us.us = add nuw nsw i64 %indvars.iv60.i.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next61.i.us.us, %wide.trip.count.i.us.us
  br i1 %exitcond.not.i.us.us, label %..loopexit_crit_edge.us.us.i.us.us, label %scalar.ph113, !llvm.loop !441

..loopexit_crit_edge.us.us.i.us.us:               ; preds = %scalar.ph113, %middle.block124, %.lr.ph42.split.us.us.preheader.i.us.us
  br i1 %exitcond67.not.i.us.us, label %..preheader39_crit_edge.us.i.us.us, label %.lr.ph42.split.us.us.i.us.us.1

.lr.ph42.split.us.us.i.us.us.1:                   ; preds = %..loopexit_crit_edge.us.us.i.us.us
  %i.ay = load i8, ptr %i.n, align 1, !tbaa !29
  %i.az = sext i8 %i.ay to i32
  %i.ba = and i32 %i.y, %i.az
  %.not.us.us.i.us.us.1 = icmp eq i32 %i.ba, 0
  br i1 %.not.us.us.i.us.us.1, label %..loopexit_crit_edge.us.us.i.us.us.1, label %.preheader.us.us.i.us.us.1

.preheader.us.us.i.us.us.1:                       ; preds = %.lr.ph42.split.us.us.i.us.us.1
  %i.bb = load ptr, ptr %i.o, align 8, !tbaa !62
  %i.bc = getelementptr [4 x i8], ptr %i.bb, i64 %indvars.iv73.i.us.us
  %i.bd = getelementptr [4 x i8], ptr %i.bc, i64 %i.l ; 2 uses
  %min.iters.check114.1 = icmp ult i32 %spec.select.us.fr.i.us.us, 8
  br i1 %min.iters.check114.1, label %scalar.ph113.preheader.1, label %vector.ph115.1

vector.ph115.1:                                   ; preds = %.preheader.us.us.i.us.us.1
  %n.vec116.1 = and i64 %wide.trip.count.i.us.us, 2147483640 ; 3 uses
  br label %vector.body117.1

vector.body117.1:                                 ; preds = %vector.body117.1, %vector.ph115.1
  %index118.1 = phi i64 [ 0, %vector.ph115.1 ], [ %index.next123.1, %vector.body117.1 ] ; 3 uses
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %index118.1 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 16
  %wide.load119.1 = load <4 x float>, ptr %i.be, align 4, !tbaa !56
  %wide.load120.1 = load <4 x float>, ptr %i.bf, align 4, !tbaa !56
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index118.1 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %wide.load121.1 = load <4 x float>, ptr %i.bg, align 16, !tbaa !56
  %wide.load122.1 = load <4 x float>, ptr %i.bh, align 16, !tbaa !56
  %i.bi = fadd <4 x float> %wide.load119.1, %wide.load121.1
  %i.bj = fadd <4 x float> %wide.load120.1, %wide.load122.1
  store <4 x float> %i.bi, ptr %i.bg, align 16, !tbaa !56
  store <4 x float> %i.bj, ptr %i.bh, align 16, !tbaa !56
  %index.next123.1 = add nuw i64 %index118.1, 8   ; 2 uses
  %i.bk = icmp eq i64 %index.next123.1, %n.vec116.1
  br i1 %i.bk, label %middle.block124.1, label %vector.body117.1, !llvm.loop !440

middle.block124.1:                                ; preds = %vector.body117.1
  %cmp.n125.1 = icmp eq i64 %n.vec116.1, %wide.trip.count.i.us.us
  br i1 %cmp.n125.1, label %..loopexit_crit_edge.us.us.i.us.us.1, label %scalar.ph113.preheader.1

scalar.ph113.preheader.1:                         ; preds = %middle.block124.1, %.preheader.us.us.i.us.us.1
  %indvars.iv60.i.us.us.ph.1 = phi i64 [ 0, %.preheader.us.us.i.us.us.1 ], [ %n.vec116.1, %middle.block124.1 ]
  br label %scalar.ph113.1

scalar.ph113.1:                                   ; preds = %scalar.ph113.1, %scalar.ph113.preheader.1
  %indvars.iv60.i.us.us.1 = phi i64 [ %indvars.iv.next61.i.us.us.1, %scalar.ph113.1 ], [ %indvars.iv60.i.us.us.ph.1, %scalar.ph113.preheader.1 ] ; 3 uses
  %i.bl = getelementptr [4 x i8], ptr %i.bd, i64 %indvars.iv60.i.us.us.1
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !56
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv60.i.us.us.1 ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !56
  %i.bp = fadd float %i.bm, %i.bo
  store float %i.bp, ptr %i.bn, align 4, !tbaa !56
  %indvars.iv.next61.i.us.us.1 = add nuw nsw i64 %indvars.iv60.i.us.us.1, 1 ; 2 uses
  %exitcond.not.i.us.us.1 = icmp eq i64 %indvars.iv.next61.i.us.us.1, %wide.trip.count.i.us.us
  br i1 %exitcond.not.i.us.us.1, label %..loopexit_crit_edge.us.us.i.us.us.1, label %scalar.ph113.1, !llvm.loop !441

..loopexit_crit_edge.us.us.i.us.us.1:             ; preds = %scalar.ph113.1, %middle.block124.1, %.lr.ph42.split.us.us.i.us.us.1
  br i1 %exitcond67.not.i.us.us.1, label %..preheader39_crit_edge.us.i.us.us, label %.lr.ph42.split.us.us.i.us.us.2

.lr.ph42.split.us.us.i.us.us.2:                   ; preds = %..loopexit_crit_edge.us.us.i.us.us.1
  %i.bq = load i8, ptr %i.p, align 2, !tbaa !29
  %i.br = sext i8 %i.bq to i32
  %i.bs = and i32 %i.y, %i.br
  %.not.us.us.i.us.us.2 = icmp eq i32 %i.bs, 0
  br i1 %.not.us.us.i.us.us.2, label %..loopexit_crit_edge.us.us.i.us.us.2, label %.preheader.us.us.i.us.us.2

.preheader.us.us.i.us.us.2:                       ; preds = %.lr.ph42.split.us.us.i.us.us.2
  %i.bt = load ptr, ptr %i.q, align 8, !tbaa !62
  %i.bu = getelementptr [4 x i8], ptr %i.bt, i64 %indvars.iv73.i.us.us
  %i.bv = getelementptr [4 x i8], ptr %i.bu, i64 %i.l ; 2 uses
  %min.iters.check114.2 = icmp ult i32 %spec.select.us.fr.i.us.us, 8
  br i1 %min.iters.check114.2, label %scalar.ph113.preheader.2, label %vector.ph115.2

vector.ph115.2:                                   ; preds = %.preheader.us.us.i.us.us.2
  %n.vec116.2 = and i64 %wide.trip.count.i.us.us, 2147483640 ; 3 uses
  br label %vector.body117.2

vector.body117.2:                                 ; preds = %vector.body117.2, %vector.ph115.2
  %index118.2 = phi i64 [ 0, %vector.ph115.2 ], [ %index.next123.2, %vector.body117.2 ] ; 3 uses
  %i.bw = getelementptr [4 x i8], ptr %i.bv, i64 %index118.2 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 16
  %wide.load119.2 = load <4 x float>, ptr %i.bw, align 4, !tbaa !56
  %wide.load120.2 = load <4 x float>, ptr %i.bx, align 4, !tbaa !56
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index118.2 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %wide.load121.2 = load <4 x float>, ptr %i.by, align 16, !tbaa !56
  %wide.load122.2 = load <4 x float>, ptr %i.bz, align 16, !tbaa !56
  %i.ca = fadd <4 x float> %wide.load119.2, %wide.load121.2
  %i.cb = fadd <4 x float> %wide.load120.2, %wide.load122.2
  store <4 x float> %i.ca, ptr %i.by, align 16, !tbaa !56
  store <4 x float> %i.cb, ptr %i.bz, align 16, !tbaa !56
end_hunk_0
begin_hunk_1_@stb_vorbis_get_frame_short_interleaved:bb.a

.preheader45.us.i.preheader:                      ; preds = %.preheader45.us.preheader.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ai = icmp eq i32 %i.u, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod40 = trunc i32 %i.u to i1
  br label %.preheader45.us.i

.preheader45.us.i.us.preheader:                   ; preds = %.preheader45.us.preheader.i
  %xtraiter42 = and i64 %wide.trip.count.i, 1
  %i.aj = icmp eq i32 %i.u, 1
  %unroll_iter46 = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod43.not = icmp eq i64 %xtraiter42, 0
  %lcmp.mod45 = trunc i32 %i.u to i1
  br label %.preheader45.us.i.us

.preheader45.us.i.us:                             ; preds = %.preheader45.us.i.us.preheader, %..preheader44_crit_edge.us.i.us
  %indvars.iv64.i.us = phi i64 [ %indvars.iv.next65.i.us, %..preheader44_crit_edge.us.i.us ], [ 0, %.preheader45.us.i.us.preheader ] ; 4 uses
  %.03954.us.i.us = phi ptr [ %scevgep.i.us, %..preheader44_crit_edge.us.i.us ], [ %2, %.preheader45.us.i.us.preheader ] ; 3 uses
  br i1 %i.aj, label %.epil.preheader41, label %.preheader45.us.i.us.new

.preheader45.us.i.us.new:                         ; preds = %.preheader45.us.i.us, %.preheader45.us.i.us.new
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us.1, %.preheader45.us.i.us.new ], [ 0, %.preheader45.us.i.us ] ; 3 uses
  %.14047.us.i.us = phi ptr [ %i.be, %.preheader45.us.i.us.new ], [ %.03954.us.i.us, %.preheader45.us.i.us ] ; 3 uses
  %niter47 = phi i64 [ %niter47.next.1, %.preheader45.us.i.us.new ], [ 0, %.preheader45.us.i.us ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.us
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !62
  %i.am = getelementptr [4 x i8], ptr %i.al, i64 %indvars.iv64.i.us
  %i.an = load float, ptr %i.am, align 4, !tbaa !56
  %i.ao = fadd float %i.an, 3.840000e+02
  %i.ap = bitcast float %i.ao to i32
  %i.aq = call i32 @llvm.smax.i32(i32 %i.ap, i32 1136623616)
  %i.ar = call i32 @llvm.umin.i32(i32 %i.aq, i32 1136689151)
  %i.as = trunc i32 %i.ar to i16
  %i.at = getelementptr i8, ptr %.14047.us.i.us, i64 2
  store i16 %i.as, ptr %.14047.us.i.us, align 2, !tbaa !44
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.us
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !62
  %i.ax = getelementptr [4 x i8], ptr %i.aw, i64 %indvars.iv64.i.us
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !56
  %i.az = fadd float %i.ay, 3.840000e+02
  %i.ba = bitcast float %i.az to i32
  %i.bb = call i32 @llvm.smax.i32(i32 %i.ba, i32 1136623616)
  %i.bc = call i32 @llvm.umin.i32(i32 %i.bb, i32 1136689151)
  %i.bd = trunc i32 %i.bc to i16
  %i.be = getelementptr i8, ptr %.14047.us.i.us, i64 4 ; 3 uses
  store i16 %i.bd, ptr %i.at, align 2, !tbaa !44
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.i.us, 2 ; 2 uses
  %niter47.next.1 = add i64 %niter47, 2           ; 2 uses
  %niter47.ncmp.1 = icmp eq i64 %niter47.next.1, %unroll_iter46
  br i1 %niter47.ncmp.1, label %..preheader44_crit_edge.us.i.us.unr-lcssa, label %.preheader45.us.i.us.new, !llvm.loop !453

..preheader44_crit_edge.us.i.us.unr-lcssa:        ; preds = %.preheader45.us.i.us.new
  br i1 %lcmp.mod43.not, label %..preheader44_crit_edge.us.i.us, label %.epil.preheader41

.epil.preheader41:                                ; preds = %..preheader44_crit_edge.us.i.us.unr-lcssa, %.preheader45.us.i.us
  %indvars.iv.i.us.epil.init = phi i64 [ 0, %.preheader45.us.i.us ], [ %indvars.iv.next.i.us.1, %..preheader44_crit_edge.us.i.us.unr-lcssa ]
  %.14047.us.i.us.epil.init = phi ptr [ %.03954.us.i.us, %.preheader45.us.i.us ], [ %i.be, %..preheader44_crit_edge.us.i.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod45)
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.us.epil.init
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !62
  %i.bh = getelementptr [4 x i8], ptr %i.bg, i64 %indvars.iv64.i.us
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !56
  %i.bj = fadd float %i.bi, 3.840000e+02
  %i.bk = bitcast float %i.bj to i32
  %i.bl = call i32 @llvm.smax.i32(i32 %i.bk, i32 1136623616)
  %i.bm = call i32 @llvm.umin.i32(i32 %i.bl, i32 1136689151)
  %i.bn = trunc i32 %i.bm to i16
  %i.bo = getelementptr i8, ptr %.14047.us.i.us.epil.init, i64 2
  store i16 %i.bn, ptr %.14047.us.i.us.epil.init, align 2, !tbaa !44
  br label %..preheader44_crit_edge.us.i.us

..preheader44_crit_edge.us.i.us:                  ; preds = %..preheader44_crit_edge.us.i.us.unr-lcssa, %.epil.preheader41
  %.lcssa = phi ptr [ %i.be, %..preheader44_crit_edge.us.i.us.unr-lcssa ], [ %i.bo, %.epil.preheader41 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %.lcssa, i8 0, i64 %i.ac, i1 false), !tbaa !44
  %i.bp = getelementptr i8, ptr %.03954.us.i.us, i64 %i.ag
  %scevgep.i.us = getelementptr i8, ptr %i.bp, i64 4
  %indvars.iv.next65.i.us = add nuw nsw i64 %indvars.iv64.i.us, 1 ; 2 uses
  %exitcond68.not.i.us = icmp eq i64 %indvars.iv.next65.i.us, %wide.trip.count67.i
  br i1 %exitcond68.not.i.us, label %convert_channels_short_interleaved.exit, label %.preheader45.us.i.us, !llvm.loop !454

.preheader45.us.i:                                ; preds = %.preheader45.us.i.preheader, %..preheader44_crit_edge.us.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %..preheader44_crit_edge.us.i ], [ 0, %.preheader45.us.i.preheader ] ; 4 uses
  %.03954.us.i = phi ptr [ %.lcssa38, %..preheader44_crit_edge.us.i ], [ %2, %.preheader45.us.i.preheader ] ; 2 uses
  br i1 %i.ai, label %.epil.preheader, label %.preheader45.us.i.new

.preheader45.us.i.new:                            ; preds = %.preheader45.us.i, %.preheader45.us.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader45.us.i.new ], [ 0, %.preheader45.us.i ] ; 3 uses
  %.14047.us.i = phi ptr [ %i.ck, %.preheader45.us.i.new ], [ %.03954.us.i, %.preheader45.us.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader45.us.i.new ], [ 0, %.preheader45.us.i ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !62
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %indvars.iv64.i
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !56
  %i.bu = fadd float %i.bt, 3.840000e+02
  %i.bv = bitcast float %i.bu to i32
  %i.bw = call i32 @llvm.smax.i32(i32 %i.bv, i32 1136623616)
  %i.bx = call i32 @llvm.umin.i32(i32 %i.bw, i32 1136689151)
  %i.by = trunc i32 %i.bx to i16
  %i.bz = getelementptr i8, ptr %.14047.us.i, i64 2
  store i16 %i.by, ptr %.14047.us.i, align 2, !tbaa !44
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !62
  %i.cd = getelementptr [4 x i8], ptr %i.cc, i64 %indvars.iv64.i
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !56
  %i.cf = fadd float %i.ce, 3.840000e+02
  %i.cg = bitcast float %i.cf to i32
  %i.ch = call i32 @llvm.smax.i32(i32 %i.cg, i32 1136623616)
  %i.ci = call i32 @llvm.umin.i32(i32 %i.ch, i32 1136689151)
  %i.cj = trunc i32 %i.ci to i16
  %i.ck = getelementptr i8, ptr %.14047.us.i, i64 4 ; 3 uses
  store i16 %i.cj, ptr %i.bz, align 2, !tbaa !44
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..preheader44_crit_edge.us.i.unr-lcssa, label %.preheader45.us.i.new, !llvm.loop !453

..preheader44_crit_edge.us.i.unr-lcssa:           ; preds = %.preheader45.us.i.new
  br i1 %lcmp.mod.not, label %..preheader44_crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader44_crit_edge.us.i.unr-lcssa, %.preheader45.us.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader45.us.i ], [ %indvars.iv.next.i.1, %..preheader44_crit_edge.us.i.unr-lcssa ]
  %.14047.us.i.epil.init = phi ptr [ %.03954.us.i, %.preheader45.us.i ], [ %i.ck, %..preheader44_crit_edge.us.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod40)
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.epil.init
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !62
  %i.cn = getelementptr [4 x i8], ptr %i.cm, i64 %indvars.iv64.i
  %i.co = load float, ptr %i.cn, align 4, !tbaa !56
  %i.cp = fadd float %i.co, 3.840000e+02
  %i.cq = bitcast float %i.cp to i32
  %i.cr = call i32 @llvm.smax.i32(i32 %i.cq, i32 1136623616)
  %i.cs = call i32 @llvm.umin.i32(i32 %i.cr, i32 1136689151)
  %i.ct = trunc i32 %i.cs to i16
  %i.cu = getelementptr i8, ptr %.14047.us.i.epil.init, i64 2
  store i16 %i.ct, ptr %.14047.us.i.epil.init, align 2, !tbaa !44
  br label %..preheader44_crit_edge.us.i

..preheader44_crit_edge.us.i:                     ; preds = %..preheader44_crit_edge.us.i.unr-lcssa, %.epil.preheader
  %.lcssa38 = phi ptr [ %i.ck, %..preheader44_crit_edge.us.i.unr-lcssa ], [ %i.cu, %.epil.preheader ]
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond68.not.i = icmp eq i64 %indvars.iv.next65.i, %wide.trip.count67.i
  br i1 %exitcond68.not.i, label %convert_channels_short_interleaved.exit, label %.preheader45.us.i, !llvm.loop !454

.preheader45.lr.ph.split.i:                       ; preds = %.preheader45.lr.ph.i
  %i.cv = icmp sgt i32 %1, 0
  br i1 %i.cv, label %.preheader45.preheader.i, label %convert_channels_short_interleaved.exit

.preheader45.preheader.i:                         ; preds = %.preheader45.lr.ph.split.i
  %i.cw = zext nneg i32 %.0 to i64
  %i.cx = shl nuw i32 %1, 1
  %i.cy = zext i32 %i.cx to i64
  %i.cz = mul nuw nsw i64 %i.cy, %i.cw
  call void @llvm.memset.p0.i64(ptr align 2 %2, i8 0, i64 %i.cz, i1 false), !tbaa !44
  br label %convert_channels_short_interleaved.exit

convert_channels_short_interleaved.exit:          ; preds = %..preheader44_crit_edge.us.i, %..preheader44_crit_edge.us.i.us, %.lr.ph.i, %.preheader45.preheader.i, %.preheader45.lr.ph.split.i, %bb.h, %.preheader.i, %bb.d, %stb_vorbis_get_frame_short.exit
  %.015 = phi i32 [ %spec.select.i, %stb_vorbis_get_frame_short.exit ], [ 0, %bb.d ], [ %.0, %.preheader.i ], [ %.0, %.preheader45.preheader.i ], [ %.0, %bb.h ], [ %.0, %..preheader44_crit_edge.us.i.us ], [ %.0, %.preheader45.lr.ph.split.i ], [ %.0, %.lr.ph.i ], [ %.0, %..preheader44_crit_edge.us.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  ret i32 %.015
}

; Function Attrs: nofree nounwind uwtable
define i32 @stb_vorbis_get_samples_short_interleaved(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #16 {
bb.a:
  %i.a = alloca [32 x float], align 16            ; 27 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.c = sdiv i32 %3, %1                          ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1896
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1892 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 9 uses
  %i.h = icmp slt i32 %1, 3
  %i.i = icmp sgt i32 %1, 0                       ; 2 uses
  %i.j = zext nneg i32 %1 to i64
  %i.k = shl nuw nsw i64 %i.j, 1
  %exitcond69.not.i.us = icmp eq i32 %1, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.031 = phi ptr [ %2, %bb.a ], [ %i.kp, %bb.g ] ; 7 uses
  %.030 = phi i32 [ 0, %bb.a ], [ %i.kk, %bb.g ]  ; 5 uses
  %i.l = icmp slt i32 %.030, %i.c
  br i1 %i.l, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.d, align 8, !tbaa !225
  %i.n = load i32, ptr %i.e, align 4, !tbaa !226  ; 4 uses
  %i.o = sub nsw i32 %i.m, %i.n                   ; 2 uses
  %i.p = add nsw i32 %i.o, %.030
  %.not = icmp slt i32 %i.p, %i.c
  %i.q = sub nsw i32 %i.c, %.030
  %spec.select = select i1 %.not, i32 %i.o, i32 %i.q ; 18 uses
  %.not33 = icmp eq i32 %spec.select, 0
  br i1 %.not33, label %convert_channels_short_interleaved.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i32, ptr %i.f, align 4, !tbaa !150  ; 7 uses
  %i.s = icmp ne i32 %1, %i.r
  %or.cond.i = and i1 %i.h, %i.s
  %i.t = icmp slt i32 %i.r, 7
  %or.cond3.i = and i1 %i.t, %or.cond.i
  br i1 %or.cond3.i, label %.preheader.i, label %bb.f

.preheader.i:                                     ; preds = %bb.d
  br i1 %i.i, label %.lr.ph.i.preheader, label %convert_channels_short_interleaved.exit

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.u = icmp sgt i32 %spec.select, 0
  %4 = sext i32 %i.r to i64
  %i.v = getelementptr inbounds [6 x i8], ptr @channel_position, i64 %4
  %i.w = zext nneg i32 %spec.select to i64        ; 3 uses
  %i.x = sext i32 %i.n to i64
  %wide.trip.count.i37 = zext nneg i32 %i.r to i64
  br i1 %i.u, label %.lr.ph.i.preheader.split.us, label %convert_channels_short_interleaved.exit

.lr.ph.i.preheader.split.us:                      ; preds = %.lr.ph.i.preheader
  %i.y = icmp sgt i32 %i.r, 0
  br i1 %i.y, label %.lr.ph.i.us.us, label %.lr.ph.i.us

.lr.ph.i.us.us:                                   ; preds = %.lr.ph.i.preheader.split.us, %compute_stereo_samples.exit.loopexit.us.us
  %.03856.i.us.us = phi i32 [ %i.el, %compute_stereo_samples.exit.loopexit.us.us ], [ 0, %.lr.ph.i.preheader.split.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  br label %.lr.ph78.us.i.us.us

.lr.ph78.us.i.us.us:                              ; preds = %._crit_edge.us.i39.us.us, %.lr.ph.i.us.us
  %indvars.iv57 = phi i32 [ %indvars.iv.next58, %._crit_edge.us.i39.us.us ], [ 0, %.lr.ph.i.us.us ] ; 2 uses
  %indvars.iv109.i.us.us = phi i64 [ %indvars.iv.next110.i.us.us, %._crit_edge.us.i39.us.us ], [ 0, %.lr.ph.i.us.us ] ; 3 uses
  %.05982.us.i.us.us = phi i32 [ %spec.select.us.i.us.us, %._crit_edge.us.i39.us.us ], [ 16, %.lr.ph.i.us.us ] ; 2 uses
  %indvars66 = trunc i64 %indvars.iv109.i.us.us to i32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.z = add i32 %.05982.us.i.us.us, %indvars66   ; 2 uses
  %i.aa = icmp sgt i32 %i.z, %spec.select
  %i.ab = sub i32 %spec.select, %indvars66
  %spec.select.us.i.us.us = select i1 %i.aa, i32 %i.ab, i32 %.05982.us.i.us.us ; 3 uses
  %i.ac = icmp sgt i32 %spec.select.us.i.us.us, 0 ; 3 uses
  %i.ad = add nsw i64 %indvars.iv109.i.us.us, %i.x ; 3 uses
  %smin56 = call i32 @llvm.smin.i32(i32 %i.z, i32 %spec.select) ; 3 uses
  %i.ae = add i32 %smin56, %indvars.iv57          ; 5 uses
  %i.af = sext i32 %i.ae to i64                   ; 9 uses
  %min.iters.check111 = icmp ult i32 %i.ae, 5
  %i.ag = and i64 %i.af, 3
  %i.ah = and i32 %smin56, 3
  %i.ai = icmp eq i32 %i.ah, 0
  %i.aj = select i1 %i.ai, i64 4, i64 %i.ag
  %n.vec113 = sub nsw i64 %i.af, %i.aj            ; 2 uses
  %min.iters.check99 = icmp ult i32 %i.ae, 5
  %i.ak = and i64 %i.af, 3
  %i.al = and i32 %smin56, 3
  %i.am = icmp eq i32 %i.al, 0
  %i.an = select i1 %i.am, i64 4, i64 %i.ak
  %n.vec101 = sub nsw i64 %i.af, %i.an            ; 2 uses
  %min.iters.check87 = icmp ult i32 %i.ae, 2
  %n.vec89 = and i64 %i.af, -2                    ; 3 uses
  %cmp.n96 = icmp eq i64 %n.vec89, %i.af
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.us.i.us.us, %.lr.ph78.us.i.us.us
  %indvars.iv103.i.us.us = phi i64 [ 0, %.lr.ph78.us.i.us.us ], [ %indvars.iv.next104.i.us.us, %.loopexit.us.i.us.us ] ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv103.i.us.us
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !29
  %i.aq = and i8 %i.ap, 6
  switch i8 %i.aq, label %.unreachabledefault [
    i8 6, label %.preheader.us.i.us.us
    i8 2, label %.preheader67.us.i.us.us
    i8 4, label %.preheader69.us.i.us.us
    i8 0, label %.loopexit.us.i.us.us
  ]

.preheader69.us.i.us.us:                          ; preds = %bb.e
  br i1 %i.ac, label %.lr.ph.us.i.us.us, label %.loopexit.us.i.us.us

.lr.ph.us.i.us.us:                                ; preds = %.preheader69.us.i.us.us
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv103.i.us.us
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !62
  %i.at = getelementptr [4 x i8], ptr %i.as, i64 %i.ad ; 2 uses
  br i1 %min.iters.check111, label %scalar.ph110.preheader, label %vector.body114

vector.body114:                                   ; preds = %.lr.ph.us.i.us.us, %vector.body114
  %index115 = phi i64 [ %index.next119, %vector.body114 ], [ 0, %.lr.ph.us.i.us.us ] ; 6 uses
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %index115
  %wide.load116 = load <4 x float>, ptr %i.au, align 4, !tbaa !56
  %i.av = shl nuw nsw i64 %index115, 3
  %i.aw = shl i64 %index115, 3
  %i.ax = shl i64 %index115, 3
  %i.ay = shl i64 %index115, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.av
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aw
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ay
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 28
  %wide.vec117 = load <8 x float>, ptr %i.bd, align 4, !tbaa !56
  %strided.vec118 = shufflevector <8 x float> %wide.vec117, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bh = fadd <4 x float> %wide.load116, %strided.vec118 ; 4 uses
  %i.bi = extractelement <4 x float> %i.bh, i64 0
  store float %i.bi, ptr %i.bd, align 4, !tbaa !56
  %i.bj = extractelement <4 x float> %i.bh, i64 1
  store float %i.bj, ptr %i.be, align 4, !tbaa !56
  %i.bk = extractelement <4 x float> %i.bh, i64 2
  store float %i.bk, ptr %i.bf, align 4, !tbaa !56
  %i.bl = extractelement <4 x float> %i.bh, i64 3
  store float %i.bl, ptr %i.bg, align 4, !tbaa !56
  %index.next119 = add nuw i64 %index115, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next119, %n.vec113
  br i1 %i.bm, label %scalar.ph110.preheader, label %vector.body114, !llvm.loop !455

scalar.ph110.preheader:                           ; preds = %vector.body114, %.lr.ph.us.i.us.us
  %indvars.iv94.i.us.us.ph = phi i64 [ 0, %.lr.ph.us.i.us.us ], [ %n.vec113, %vector.body114 ]
  br label %scalar.ph110

scalar.ph110:                                     ; preds = %scalar.ph110.preheader, %scalar.ph110
  %indvars.iv94.i.us.us = phi i64 [ %indvars.iv.next95.i.us.us, %scalar.ph110 ], [ %indvars.iv94.i.us.us.ph, %scalar.ph110.preheader ] ; 3 uses
  %i.bn = getelementptr [4 x i8], ptr %i.at, i64 %indvars.iv94.i.us.us
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !56
  %.idx.i.us.us = shl nuw nsw i64 %indvars.iv94.i.us.us, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i.us.us
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !56
  %i.bs = fadd float %i.bo, %i.br
  store float %i.bs, ptr %i.bq, align 4, !tbaa !56
  %indvars.iv.next95.i.us.us = add nuw nsw i64 %indvars.iv94.i.us.us, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next95.i.us.us, %i.af
  br i1 %exitcond59.not, label %.loopexit.us.i.us.us, label %scalar.ph110, !llvm.loop !456

.preheader67.us.i.us.us:                          ; preds = %bb.e
  br i1 %i.ac, label %.lr.ph74.us.i.us.us, label %.loopexit.us.i.us.us

.lr.ph74.us.i.us.us:                              ; preds = %.preheader67.us.i.us.us
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv103.i.us.us
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !62
  %i.bv = getelementptr [4 x i8], ptr %i.bu, i64 %i.ad ; 2 uses
  br i1 %min.iters.check99, label %scalar.ph98.preheader, label %vector.body102

vector.body102:                                   ; preds = %.lr.ph74.us.i.us.us, %vector.body102
  %index103 = phi i64 [ %index.next107, %vector.body102 ], [ 0, %.lr.ph74.us.i.us.us ] ; 6 uses
  %i.bw = getelementptr [4 x i8], ptr %i.bv, i64 %index103
  %wide.load104 = load <4 x float>, ptr %i.bw, align 4, !tbaa !56
  %i.bx = shl nuw nsw i64 %index103, 3
  %i.by = shl i64 %index103, 3
  %i.bz = shl i64 %index103, 3
  %i.ca = shl i64 %index103, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bx ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.by
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bz
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ca
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %wide.vec105 = load <8 x float>, ptr %i.cb, align 16, !tbaa !56
  %strided.vec106 = shufflevector <8 x float> %wide.vec105, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ci = fadd <4 x float> %wide.load104, %strided.vec106 ; 4 uses
  %i.cj = extractelement <4 x float> %i.ci, i64 0
  store float %i.cj, ptr %i.cb, align 16, !tbaa !56
  %i.ck = extractelement <4 x float> %i.ci, i64 1
  store float %i.ck, ptr %i.cd, align 8, !tbaa !56
  %i.cl = extractelement <4 x float> %i.ci, i64 2
  store float %i.cl, ptr %i.cf, align 16, !tbaa !56
  %i.cm = extractelement <4 x float> %i.ci, i64 3
  store float %i.cm, ptr %i.ch, align 8, !tbaa !56
  %index.next107 = add nuw i64 %index103, 4       ; 2 uses
  %i.cn = icmp eq i64 %index.next107, %n.vec101
  br i1 %i.cn, label %scalar.ph98.preheader, label %vector.body102, !llvm.loop !457

scalar.ph98.preheader:                            ; preds = %vector.body102, %.lr.ph74.us.i.us.us
  %indvars.iv97.i.us.us.ph = phi i64 [ 0, %.lr.ph74.us.i.us.us ], [ %n.vec101, %vector.body102 ]
  br label %scalar.ph98

scalar.ph98:                                      ; preds = %scalar.ph98.preheader, %scalar.ph98
  %indvars.iv97.i.us.us = phi i64 [ %indvars.iv.next98.i.us.us, %scalar.ph98 ], [ %indvars.iv97.i.us.us.ph, %scalar.ph98.preheader ] ; 3 uses
  %i.co = getelementptr [4 x i8], ptr %i.bv, i64 %indvars.iv97.i.us.us
  %i.cp = load float, ptr %i.co, align 4, !tbaa !56
  %.idx115.i.us.us.a = shl nuw nsw i64 %indvars.iv97.i.us.us, 3
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx115.i.us.us.a ; 2 uses
  %i.cr = load float, ptr %i.cq, align 8, !tbaa !56
  %i.cs = fadd float %i.cp, %i.cr
  store float %i.cs, ptr %i.cq, align 8, !tbaa !56
  %indvars.iv.next98.i.us.us = add nuw nsw i64 %indvars.iv97.i.us.us, 1 ; 2 uses
  %exitcond61.not = icmp eq i64 %indvars.iv.next98.i.us.us, %i.af
  br i1 %exitcond61.not, label %.loopexit.us.i.us.us, label %scalar.ph98, !llvm.loop !458

.preheader.us.i.us.us:                            ; preds = %bb.e
  br i1 %i.ac, label %.lr.ph76.us.i.us.us, label %.loopexit.us.i.us.us

.lr.ph76.us.i.us.us:                              ; preds = %.preheader.us.i.us.us
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv103.i.us.us
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !62
  %i.cv = getelementptr [4 x i8], ptr %i.cu, i64 %i.ad ; 2 uses
  br i1 %min.iters.check87, label %scalar.ph86.preheader, label %vector.body90

vector.body90:                                    ; preds = %.lr.ph76.us.i.us.us, %vector.body90
  %index91 = phi i64 [ %index.next94, %vector.body90 ], [ 0, %.lr.ph76.us.i.us.us ] ; 3 uses
  %i.cw = getelementptr [4 x i8], ptr %i.cv, i64 %index91
  %wide.load92 = load <2 x float>, ptr %i.cw, align 4, !tbaa !56
  %i.cx = shl nuw nsw i64 %index91, 3
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cx ; 2 uses
  %wide.vec = load <4 x float>, ptr %i.cy, align 16, !tbaa !56
  %i.cz = shufflevector <2 x float> %wide.load92, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %interleaved.vec = fadd <4 x float> %i.cz, %wide.vec
  store <4 x float> %interleaved.vec, ptr %i.cy, align 16, !tbaa !56
  %index.next94 = add nuw i64 %index91, 2         ; 2 uses
  %i.da = icmp eq i64 %index.next94, %n.vec89
  br i1 %i.da, label %middle.block95, label %vector.body90, !llvm.loop !459

middle.block95:                                   ; preds = %vector.body90
  br i1 %cmp.n96, label %.loopexit.us.i.us.us, label %scalar.ph86.preheader

scalar.ph86.preheader:                            ; preds = %.lr.ph76.us.i.us.us, %middle.block95
  %indvars.iv100.i.us.us.ph = phi i64 [ 0, %.lr.ph76.us.i.us.us ], [ %n.vec89, %middle.block95 ]
  br label %scalar.ph86

scalar.ph86:                                      ; preds = %scalar.ph86.preheader, %scalar.ph86
  %indvars.iv100.i.us.us = phi i64 [ %indvars.iv.next101.i.us.us, %scalar.ph86 ], [ %indvars.iv100.i.us.us.ph, %scalar.ph86.preheader ] ; 3 uses
  %i.db = getelementptr [4 x i8], ptr %i.cv, i64 %indvars.iv100.i.us.us
  %i.dc = load float, ptr %i.db, align 4, !tbaa !56
  %.idx116.i.us.us = shl nuw nsw i64 %indvars.iv100.i.us.us, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx116.i.us.us ; 2 uses
  %i.de = load <2 x float>, ptr %i.dd, align 8, !tbaa !56
  %i.df = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dh = fadd <2 x float> %i.dg, %i.de
  store <2 x float> %i.dh, ptr %i.dd, align 8, !tbaa !56
  %indvars.iv.next101.i.us.us = add nuw nsw i64 %indvars.iv100.i.us.us, 1 ; 2 uses
  %exitcond63.not = icmp eq i64 %indvars.iv.next101.i.us.us, %i.af
  br i1 %exitcond63.not, label %.loopexit.us.i.us.us, label %scalar.ph86, !llvm.loop !460

.loopexit.us.i.us.us:                             ; preds = %scalar.ph110, %scalar.ph98, %scalar.ph86, %middle.block95, %.preheader.us.i.us.us, %.preheader67.us.i.us.us, %.preheader69.us.i.us.us, %bb.e
  %indvars.iv.next104.i.us.us = add nuw nsw i64 %indvars.iv103.i.us.us, 1 ; 2 uses
  %exitcond.not.i38.us.us = icmp eq i64 %indvars.iv.next104.i.us.us, %wide.trip.count.i37
  br i1 %exitcond.not.i38.us.us, label %..preheader71_crit_edge.us.i.us.us, label %bb.e, !llvm.loop !431

..preheader71_crit_edge.us.i.us.us:               ; preds = %.loopexit.us.i.us.us
  %i.di = shl i32 %spec.select.us.i.us.us, 1
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %.lr.ph80.us.preheader.i.us.us, label %._crit_edge.us.i39.us.us

.lr.ph80.us.preheader.i.us.us:                    ; preds = %..preheader71_crit_edge.us.i.us.us
  %i.dk = shl i32 %indvars66, 1
  %i.dl = sext i32 %i.dk to i64
  %invariant.gep120.i.us.us = getelementptr [2 x i8], ptr %.031, i64 %i.dl ; 2 uses
  %i.dm = shl i32 %i.ae, 1                        ; 2 uses
  %i.dn = zext i32 %i.dm to i64                   ; 3 uses
  %min.iters.check = icmp ult i32 %i.dm, 8
  br i1 %min.iters.check, label %.lr.ph80.us.i.us.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph80.us.preheader.i.us.us
  %n.vec = and i64 %i.dn, 4294967288              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %wide.load = load <4 x float>, ptr %i.do, align 16, !tbaa !56
  %wide.load85 = load <4 x float>, ptr %i.dp, align 16, !tbaa !56
  %i.dq = fadd <4 x float> %wide.load, splat (float 3.840000e+02)
  %i.dr = fadd <4 x float> %wide.load85, splat (float 3.840000e+02)
  %i.ds = bitcast <4 x float> %i.dq to <4 x i32>
  %i.dt = bitcast <4 x float> %i.dr to <4 x i32>
  %i.du = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ds, <4 x i32> splat (i32 1136623616))
  %i.dv = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dt, <4 x i32> splat (i32 1136623616))
  %i.dw = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.du, <4 x i32> splat (i32 1136689151))
  %i.dx = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.dv, <4 x i32> splat (i32 1136689151))
  %i.dy = trunc <4 x i32> %i.dw to <4 x i16>
  %i.dz = trunc <4 x i32> %i.dx to <4 x i16>
  %i.ea = getelementptr [2 x i8], ptr %invariant.gep120.i.us.us, i64 %index ; 2 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 8
  store <4 x i16> %i.dy, ptr %i.ea, align 2, !tbaa !44
  store <4 x i16> %i.dz, ptr %i.eb, align 2, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ec = icmp eq i64 %index.next, %n.vec
  br i1 %i.ec, label %middle.block, label %vector.body, !llvm.loop !461

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dn
  br i1 %cmp.n, label %._crit_edge.us.i39.us.us, label %.lr.ph80.us.i.us.us.preheader

.lr.ph80.us.i.us.us.preheader:                    ; preds = %.lr.ph80.us.preheader.i.us.us, %middle.block
  %indvars.iv106.i.us.us.ph = phi i64 [ 0, %.lr.ph80.us.preheader.i.us.us ], [ %n.vec, %middle.block ]
  br label %.lr.ph80.us.i.us.us

.lr.ph80.us.i.us.us:                              ; preds = %.lr.ph80.us.i.us.us.preheader, %.lr.ph80.us.i.us.us
  %indvars.iv106.i.us.us = phi i64 [ %indvars.iv.next107.i.us.us, %.lr.ph80.us.i.us.us ], [ %indvars.iv106.i.us.us.ph, %.lr.ph80.us.i.us.us.preheader ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv106.i.us.us
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !56
  %i.ef = fadd float %i.ee, 3.840000e+02
  %i.eg = bitcast float %i.ef to i32
  %i.eh = call i32 @llvm.smax.i32(i32 %i.eg, i32 1136623616)
  %i.ei = call i32 @llvm.umin.i32(i32 %i.eh, i32 1136689151)
  %i.ej = trunc i32 %i.ei to i16
  %gep121.i.us.us = getelementptr [2 x i8], ptr %invariant.gep120.i.us.us, i64 %indvars.iv106.i.us.us
  store i16 %i.ej, ptr %gep121.i.us.us, align 2, !tbaa !44
  %indvars.iv.next107.i.us.us = add nuw nsw i64 %indvars.iv106.i.us.us, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next107.i.us.us, %i.dn
  br i1 %exitcond65.not, label %._crit_edge.us.i39.us.us, label %.lr.ph80.us.i.us.us, !llvm.loop !462

._crit_edge.us.i39.us.us:                         ; preds = %.lr.ph80.us.i.us.us, %middle.block, %..preheader71_crit_edge.us.i.us.us
  %indvars.iv.next110.i.us.us = add nuw nsw i64 %indvars.iv109.i.us.us, 16 ; 2 uses
  %i.ek = icmp samesign ult i64 %indvars.iv.next110.i.us.us, %i.w
  %indvars.iv.next58 = add i32 %indvars.iv57, -16
  br i1 %i.ek, label %.lr.ph78.us.i.us.us, label %compute_stereo_samples.exit.loopexit.us.us, !llvm.loop !433

compute_stereo_samples.exit.loopexit.us.us:       ; preds = %._crit_edge.us.i39.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.el = add nuw nsw i32 %.03856.i.us.us, 1      ; 2 uses
  %exitcond69.not.i.us.us = icmp eq i32 %i.el, %1
  br i1 %exitcond69.not.i.us.us, label %convert_channels_short_interleaved.exit, label %.lr.ph.i.us.us, !llvm.loop !452

.unreachabledefault:                              ; preds = %bb.e
  unreachable

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  br label %.preheader71.i.us

.preheader71.i.us:                                ; preds = %._crit_edge.i.us, %.lr.ph.i.us
  %indvars.iv53 = phi i32 [ %indvars.iv.next54, %._crit_edge.i.us ], [ 0, %.lr.ph.i.us ] ; 2 uses
  %indvars.iv91.i.us = phi i64 [ %indvars.iv.next92.i.us, %._crit_edge.i.us ], [ 0, %.lr.ph.i.us ] ; 2 uses
  %.05982.i.us = phi i32 [ %spec.select.i.us, %._crit_edge.i.us ], [ 16, %.lr.ph.i.us ] ; 2 uses
  %indvars55 = trunc i64 %indvars.iv91.i.us to i32 ; 3 uses
  %i.em = add nsw i32 %.05982.i.us, %indvars55    ; 2 uses
  %i.en = icmp sgt i32 %i.em, %spec.select
  %i.eo = sub i32 %spec.select, %indvars55
  %spec.select.i.us = select i1 %i.en, i32 %i.eo, i32 %.05982.i.us ; 2 uses
  %i.ep = shl i32 %spec.select.i.us, 1
  %i.eq = icmp sgt i32 %i.ep, 0
  br i1 %i.eq, label %.lr.ph80.preheader.i.us, label %._crit_edge.i.us

.lr.ph80.preheader.i.us:                          ; preds = %.preheader71.i.us
  %i.er = shl i32 %indvars55, 1
  %i.es = sext i32 %i.er to i64
  %invariant.gep.i.us = getelementptr [2 x i8], ptr %.031, i64 %i.es ; 2 uses
  %smin = call i32 @llvm.smin.i32(i32 %i.em, i32 %spec.select)
  %i.et = add i32 %smin, %indvars.iv53
  %i.eu = shl i32 %i.et, 1                        ; 2 uses
  %i.ev = zext i32 %i.eu to i64                   ; 3 uses
  %min.iters.check123 = icmp ult i32 %i.eu, 8
  br i1 %min.iters.check123, label %.lr.ph80.i.us.preheader, label %vector.ph124

vector.ph124:                                     ; preds = %.lr.ph80.preheader.i.us
  %n.vec125 = and i64 %i.ev, 4294967288           ; 3 uses
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph124
  %index127 = phi i64 [ 0, %vector.ph124 ], [ %index.next130, %vector.body126 ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index127 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %wide.load128.a = load <4 x float>, ptr %i.ew, align 16, !tbaa !56
  %wide.load129 = load <4 x float>, ptr %i.ex, align 16, !tbaa !56
  %i.ey = fadd <4 x float> %wide.load128.a, splat (float 3.840000e+02)
  %i.ez = fadd <4 x float> %wide.load129, splat (float 3.840000e+02)
  %i.fa = bitcast <4 x float> %i.ey to <4 x i32>
  %i.fb = bitcast <4 x float> %i.ez to <4 x i32>
  %i.fc = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fa, <4 x i32> splat (i32 1136623616))
  %i.fd = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fb, <4 x i32> splat (i32 1136623616))
  %i.fe = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fc, <4 x i32> splat (i32 1136689151))
  %i.ff = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fd, <4 x i32> splat (i32 1136689151))
  %i.fg = trunc <4 x i32> %i.fe to <4 x i16>
  %i.fh = trunc <4 x i32> %i.ff to <4 x i16>
  %i.fi = getelementptr [2 x i8], ptr %invariant.gep.i.us, i64 %index127 ; 2 uses
  %i.fj = getelementptr i8, ptr %i.fi, i64 8
  store <4 x i16> %i.fg, ptr %i.fi, align 2, !tbaa !44
  store <4 x i16> %i.fh, ptr %i.fj, align 2, !tbaa !44
  %index.next130 = add nuw i64 %index127, 8       ; 2 uses
  %i.fk = icmp eq i64 %index.next130, %n.vec125
  br i1 %i.fk, label %middle.block131, label %vector.body126, !llvm.loop !463

middle.block131:                                  ; preds = %vector.body126
  %cmp.n132 = icmp eq i64 %n.vec125, %i.ev
  br i1 %cmp.n132, label %._crit_edge.i.us, label %.lr.ph80.i.us.preheader

.lr.ph80.i.us.preheader:                          ; preds = %.lr.ph80.preheader.i.us, %middle.block131
  %indvars.iv.i35.us.ph = phi i64 [ 0, %.lr.ph80.preheader.i.us ], [ %n.vec125, %middle.block131 ]
  br label %.lr.ph80.i.us

.lr.ph80.i.us:                                    ; preds = %.lr.ph80.i.us.preheader, %.lr.ph80.i.us
  %indvars.iv.i35.us = phi i64 [ %indvars.iv.next.i36.us, %.lr.ph80.i.us ], [ %indvars.iv.i35.us.ph, %.lr.ph80.i.us.preheader ] ; 3 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i35.us
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !56
  %i.fn = fadd float %i.fm, 3.840000e+02
  %i.fo = bitcast float %i.fn to i32
  %i.fp = call i32 @llvm.smax.i32(i32 %i.fo, i32 1136623616)
  %i.fq = call i32 @llvm.umin.i32(i32 %i.fp, i32 1136689151)
  %i.fr = trunc i32 %i.fq to i16
  %gep.i.us = getelementptr [2 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i35.us
  store i16 %i.fr, ptr %gep.i.us, align 2, !tbaa !44
  %indvars.iv.next.i36.us = add nuw nsw i64 %indvars.iv.i35.us, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i36.us, %i.ev
  br i1 %exitcond.not, label %._crit_edge.i.us, label %.lr.ph80.i.us, !llvm.loop !464

._crit_edge.i.us:                                 ; preds = %.lr.ph80.i.us, %middle.block131, %.preheader71.i.us
  %indvars.iv.next92.i.us = add nuw nsw i64 %indvars.iv91.i.us, 16 ; 2 uses
  %i.fs = icmp samesign ult i64 %indvars.iv.next92.i.us, %i.w
  %indvars.iv.next54 = add i32 %indvars.iv53, -16
  br i1 %i.fs, label %.preheader71.i.us, label %compute_stereo_samples.exit.loopexit43.us, !llvm.loop !433

compute_stereo_samples.exit.loopexit43.us:        ; preds = %._crit_edge.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br i1 %exitcond69.not.i.us, label %convert_channels_short_interleaved.exit, label %.lr.ph.i.us.1

.lr.ph.i.us.1:                                    ; preds = %compute_stereo_samples.exit.loopexit43.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  br label %.preheader71.i.us.1

.preheader71.i.us.1:                              ; preds = %._crit_edge.i.us.1, %.lr.ph.i.us.1
  %indvars.iv53.1 = phi i32 [ %indvars.iv.next54.1, %._crit_edge.i.us.1 ], [ 0, %.lr.ph.i.us.1 ] ; 2 uses
  %indvars.iv91.i.us.1 = phi i64 [ %indvars.iv.next92.i.us.1, %._crit_edge.i.us.1 ], [ 0, %.lr.ph.i.us.1 ] ; 2 uses
  %.05982.i.us.1 = phi i32 [ %spec.select.i.us.1, %._crit_edge.i.us.1 ], [ 16, %.lr.ph.i.us.1 ] ; 2 uses
  %indvars55.1 = trunc i64 %indvars.iv91.i.us.1 to i32 ; 3 uses
  %i.ft = add nsw i32 %.05982.i.us.1, %indvars55.1 ; 2 uses
  %i.fu = icmp sgt i32 %i.ft, %spec.select
  %i.fv = sub i32 %spec.select, %indvars55.1
  %spec.select.i.us.1 = select i1 %i.fu, i32 %i.fv, i32 %.05982.i.us.1 ; 2 uses
  %i.fw = shl i32 %spec.select.i.us.1, 1
  %i.fx = icmp sgt i32 %i.fw, 0
  br i1 %i.fx, label %.lr.ph80.preheader.i.us.1, label %._crit_edge.i.us.1

.lr.ph80.preheader.i.us.1:                        ; preds = %.preheader71.i.us.1
  %i.fy = shl i32 %indvars55.1, 1
  %i.fz = sext i32 %i.fy to i64
  %invariant.gep.i.us.1 = getelementptr [2 x i8], ptr %.031, i64 %i.fz ; 2 uses
  %smin.1 = call i32 @llvm.smin.i32(i32 %i.ft, i32 %spec.select)
  %i.ga = add i32 %smin.1, %indvars.iv53.1
  %i.gb = shl i32 %i.ga, 1                        ; 2 uses
  %i.gc = zext i32 %i.gb to i64                   ; 3 uses
  %min.iters.check123.1 = icmp ult i32 %i.gb, 8
  br i1 %min.iters.check123.1, label %.lr.ph80.i.us.preheader.1, label %vector.ph124.1
end_hunk_1
