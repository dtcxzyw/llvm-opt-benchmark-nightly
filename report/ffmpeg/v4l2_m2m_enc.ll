Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/v4l2_m2m_enc?download=true
inline.NumInlined: 17
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@v4l2_encode_init:bb.a

bb.z:                                             ; preds = %v4l2_set_ext_ctrl.exit84.i
  %i.ey = load i32, ptr %i.eh, align 8, !tbaa !68
  switch i32 %i.ey, label %v4l2_mpeg4_profile_from_ff.exit.thread.i [
    i32 -99, label %bb.aa
    i32 11, label %v4l2_mpeg4_profile_from_ff.exit.i
    i32 15, label %.fold.split.i90.i
    i32 1, label %.fold.split12.i89.i
    i32 0, label %.fold.split13.i88.i
    i32 2, label %.fold.split14.i85.i
  ]

.fold.split.i90.i:                                ; preds = %bb.z
  br label %v4l2_mpeg4_profile_from_ff.exit.i

.fold.split12.i89.i:                              ; preds = %bb.z
  br label %v4l2_mpeg4_profile_from_ff.exit.i

.fold.split13.i88.i:                              ; preds = %bb.z
  br label %v4l2_mpeg4_profile_from_ff.exit.i

.fold.split14.i85.i:                              ; preds = %bb.z
  br label %v4l2_mpeg4_profile_from_ff.exit.i

v4l2_mpeg4_profile_from_ff.exit.thread.i:         ; preds = %bb.z
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.ae, i32 noundef 24, ptr noundef nonnull @.str.35) #8
  br label %bb.aa

v4l2_mpeg4_profile_from_ff.exit.i:                ; preds = %.fold.split14.i85.i, %.fold.split13.i88.i, %.fold.split12.i89.i, %.fold.split.i90.i, %bb.z
  %.lcssa.i86.i = phi i64 [ 0, %bb.z ], [ 3, %.fold.split13.i88.i ], [ 1, %.fold.split.i90.i ], [ 2, %.fold.split12.i89.i ], [ 4, %.fold.split14.i85.i ]
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr @v4l2_mpeg4_profile_from_ff.profile, i64 %.lcssa.i86.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !74
  call fastcc void @v4l2_set_ext_ctrl(ptr noundef nonnull readonly %i.ac, i32 noundef 10029718, i32 noundef %i.fb, ptr noundef nonnull @.str.36, i32 noundef 1)
  br label %bb.aa

bb.aa:                                            ; preds = %v4l2_mpeg4_profile_from_ff.exit.i, %v4l2_mpeg4_profile_from_ff.exit.thread.i, %bb.z
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !75
  %i.fe = and i32 %i.fd, 16
  %.not79.i = icmp eq i32 %i.fe, 0
  br i1 %.not79.i, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ff, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.fg = getelementptr inbounds nuw i8, ptr %6, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fg, i8 0, i64 16, i1 false)
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %6, ptr %i.fh, align 8, !tbaa !42
  store <2 x i32> <i32 10027008, i32 1>, ptr %5, align 8, !tbaa !38
  %i.fi = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 1, ptr %i.fi, align 4, !tbaa !38
  store i32 10029719, ptr %6, align 4, !tbaa !44
  %i.fj = load i32, ptr %i.ag, align 8, !tbaa !39
  %i.fk = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.fj, i64 noundef 3223344712, ptr noundef nonnull %5) #8
  %i.fl = icmp slt i32 %i.fk, 0
  %i.fm = load ptr, ptr %i.ad, align 8, !tbaa !37 ; 2 uses
  br i1 %i.fl, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fn = tail call ptr @__errno_location() #9
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !45
  %i.fp = call ptr @strerror(i32 noundef %i.fo) #8
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.fm, i32 noundef 24, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.37, ptr noundef %i.fp) #8
  br label %v4l2_set_ext_ctrl.exit91.i

bb.ad:                                            ; preds = %bb.ab
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.fm, i32 noundef 48, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.37, i32 noundef 1) #8
  br label %v4l2_set_ext_ctrl.exit91.i

v4l2_set_ext_ctrl.exit91.i:                       ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.ag

bb.ae:                                            ; preds = %v4l2_set_ext_ctrl.exit84.i
  br label %bb.ag

bb.af:                                            ; preds = %v4l2_set_ext_ctrl.exit84.i
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %v4l2_set_ext_ctrl.exit91.i, %bb.aa, %v4l2_h264_profile_from_ff.exit.i, %v4l2_h264_profile_from_ff.exit.thread.i, %bb.y, %v4l2_set_ext_ctrl.exit84.i
  %.065.i = phi i32 [ 10029819, %bb.af ], [ 10029665, %bb.y ], [ 10029715, %bb.aa ], [ 10029819, %bb.ae ], [ 10029665, %v4l2_h264_profile_from_ff.exit.thread.i ], [ 10029665, %v4l2_h264_profile_from_ff.exit.i ], [ 10029715, %v4l2_set_ext_ctrl.exit91.i ], [ 10029615, %v4l2_set_ext_ctrl.exit84.i ]
  %.064.i = phi i32 [ 10029820, %bb.af ], [ 10029666, %bb.y ], [ 10029716, %bb.aa ], [ 10029820, %bb.ae ], [ 10029666, %v4l2_h264_profile_from_ff.exit.thread.i ], [ 10029666, %v4l2_h264_profile_from_ff.exit.i ], [ 10029716, %v4l2_set_ext_ctrl.exit91.i ], [ 10029616, %v4l2_set_ext_ctrl.exit84.i ]
  %.062.i = phi i32 [ 0, %bb.af ], [ 0, %bb.y ], [ 1, %bb.aa ], [ 0, %bb.ae ], [ 0, %v4l2_h264_profile_from_ff.exit.thread.i ], [ 0, %v4l2_h264_profile_from_ff.exit.i ], [ 1, %v4l2_set_ext_ctrl.exit91.i ], [ 1, %v4l2_set_ext_ctrl.exit84.i ] ; 2 uses
  %.0.i = phi i32 [ 255, %bb.af ], [ 51, %bb.y ], [ 31, %bb.aa ], [ 127, %bb.ae ], [ 51, %v4l2_h264_profile_from_ff.exit.thread.i ], [ 51, %v4l2_h264_profile_from_ff.exit.i ], [ 31, %v4l2_set_ext_ctrl.exit91.i ], [ 31, %v4l2_set_ext_ctrl.exit84.i ] ; 2 uses
  %i.fq = load i32, ptr %i.ep, align 4, !tbaa !69 ; 5 uses
  %i.fr = icmp sgt i32 %i.fq, -1
  %.pre103.i = load i32, ptr %i.er, align 8, !tbaa !70 ; 4 uses
  br i1 %i.fr, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %or.cond.i = icmp ult i32 %.pre103.i, %i.fq
  br i1 %or.cond.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.ae, i32 noundef 24, ptr noundef nonnull @.str.38, i32 noundef %i.fq, i32 noundef %.pre103.i) #8
  %.pre104.i = load i32, ptr %i.ep, align 4, !tbaa !69
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %..062.i = phi i32 [ %i.fq, %bb.ah ], [ %.062.i, %bb.ag ]
  %i.fs = icmp slt i32 %.pre103.i, 0
  %i.ft = select i1 %i.fs, i32 %.0.i, i32 %.pre103.i
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.fu = phi i32 [ %.pre104.i, %bb.ai ], [ %i.fq, %bb.aj ]
  %.163.i = phi i32 [ %.062.i, %bb.ai ], [ %..062.i, %bb.aj ] ; 2 uses
  %.1.i = phi i32 [ %.0.i, %bb.ai ], [ %i.ft, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fv, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fw, i8 0, i64 16, i1 false)
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %4, ptr %i.fx, align 8, !tbaa !42
  store <2 x i32> <i32 10027008, i32 1>, ptr %3, align 8, !tbaa !38
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %.163.i, ptr %i.fy, align 4, !tbaa !38
  store i32 %.065.i, ptr %4, align 4, !tbaa !44
  %i.fz = load i32, ptr %i.ag, align 8, !tbaa !39
  %i.ga = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.fz, i64 noundef 3223344712, ptr noundef nonnull %3) #8
  %i.gb = icmp slt i32 %i.ga, 0
  %i.gc = load ptr, ptr %i.ad, align 8, !tbaa !37 ; 2 uses
  br i1 %i.gb, label %._crit_edge.i.i, label %bb.al

._crit_edge.i.i:                                  ; preds = %bb.ak
  %i.gd = icmp slt i32 %i.fu, 0
  %i.ge = tail call ptr @__errno_location() #9
  %.pre105.i = load i32, ptr %i.ge, align 4, !tbaa !45 ; 2 uses
  %.not8.i93.i = icmp eq i32 %.pre105.i, 22
  %i.gf = and i1 %i.gd, %.not8.i93.i
  %i.gg = select i1 %i.gf, i32 48, i32 24
  %i.gh = call ptr @strerror(i32 noundef %.pre105.i) #8
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.gc, i32 noundef %i.gg, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.39, ptr noundef %i.gh) #8
  br label %v4l2_set_ext_ctrl.exit94.i

bb.al:                                            ; preds = %bb.ak
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.gc, i32 noundef 48, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.39, i32 noundef %.163.i) #8
  br label %v4l2_set_ext_ctrl.exit94.i

v4l2_set_ext_ctrl.exit94.i:                       ; preds = %bb.al, %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.gi = load i32, ptr %i.er, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gj, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gk, i8 0, i64 16, i1 false)
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %2, ptr %i.gl, align 8, !tbaa !42
  store <2 x i32> <i32 10027008, i32 1>, ptr %1, align 8, !tbaa !38
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %.1.i, ptr %i.gm, align 4, !tbaa !38
  store i32 %.064.i, ptr %2, align 4, !tbaa !44
  %i.gn = load i32, ptr %i.ag, align 8, !tbaa !39
  %i.go = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.gn, i64 noundef 3223344712, ptr noundef nonnull %1) #8
  %i.gp = icmp slt i32 %i.go, 0
  %i.gq = load ptr, ptr %i.ad, align 8, !tbaa !37 ; 2 uses
  br i1 %i.gp, label %._crit_edge.i96.i, label %bb.am

._crit_edge.i96.i:                                ; preds = %v4l2_set_ext_ctrl.exit94.i
  %i.gr = icmp slt i32 %i.gi, 0
  %i.gs = tail call ptr @__errno_location() #9
  %.pre106.i = load i32, ptr %i.gs, align 4, !tbaa !45 ; 2 uses
  %.not8.i97.i = icmp eq i32 %.pre106.i, 22
  %i.gt = and i1 %i.gr, %.not8.i97.i
  %i.gu = select i1 %i.gt, i32 48, i32 24
  %i.gv = call ptr @strerror(i32 noundef %.pre106.i) #8
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.gq, i32 noundef %i.gu, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.40, ptr noundef %i.gv) #8
  br label %v4l2_set_ext_ctrl.exit98.i

bb.am:                                            ; preds = %v4l2_set_ext_ctrl.exit94.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.gq, i32 noundef 48, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.40, i32 noundef %.1.i) #8
  br label %v4l2_set_ext_ctrl.exit98.i

v4l2_set_ext_ctrl.exit98.i:                       ; preds = %bb.am, %._crit_edge.i96.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %v4l2_prepare_encoder.exit

v4l2_prepare_encoder.exit:                        ; preds = %v4l2_set_ext_ctrl.exit98.i, %v4l2_set_ext_ctrl.exit84.i, %v4l2_check_b_frame_support.exit.i, %bb.a, %bb.e, %bb.c
  %.0 = phi i32 [ %i.d, %bb.a ], [ %i.x, %bb.c ], [ -22, %bb.e ], [ 0, %v4l2_set_ext_ctrl.exit98.i ], [ -1163346256, %v4l2_check_b_frame_support.exit.i ], [ 0, %v4l2_set_ext_ctrl.exit84.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @v4l2_receive_packet(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %2 = alloca %struct.v4l2_ext_controls, align 8  ; 7 uses
  %3 = alloca %struct.v4l2_ext_control, align 4   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4104 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4376
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4808
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4696
  %i.j = load i32, ptr %i.i, align 8, !tbaa !79
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !80
  %.not39 = icmp eq ptr %i.l, null
  br i1 %.not39, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i32 @ff_encode_get_frame(ptr noundef nonnull %0, ptr noundef nonnull %i.h) #8 ; 3 uses
  %i.n = icmp slt i32 %i.m, 0
  %i.o = icmp ne i32 %i.m, -541478725             ; 2 uses
  %or.cond = and i1 %i.n, %i.o
  br i1 %or.cond, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val45.pre = load ptr, ptr %i.a, align 8, !tbaa !28
  %.phi.trans.insert = getelementptr i8, ptr %.val45.pre, i64 8
  %.val.val46.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !77 ; 2 uses
  br i1 %i.o, label %._crit_edge, label %v4l2_send_frame.exit

._crit_edge:                                      ; preds = %bb.d, %bb.b
  %.val.val46.a = phi ptr [ %i.d, %bb.b ], [ %.val.val46.pre, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.q = load i32, ptr %i.p, align 8, !tbaa !85
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.e, label %v4l2_send_frame.exit

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store i32 10027008, ptr %2, align 8, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %3, ptr %i.u, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 1, ptr %i.v, align 4, !tbaa !46
  store i32 10029541, ptr %3, align 4, !tbaa !44
  %i.w = getelementptr inbounds nuw i8, ptr %.val.val46.a, i64 4096
  %i.x = load i32, ptr %i.w, align 8, !tbaa !39
  %i.y = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.x, i64 noundef 3223344712, ptr noundef nonnull %2) #8
  %i.z = icmp slt i32 %i.y, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.val46.a, i64 4648
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !37 ; 2 uses
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = tail call ptr @__errno_location() #9
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !45
  %i.ae = call ptr @strerror(i32 noundef %i.ad) #8
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ab, i32 noundef 24, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.51, ptr noundef %i.ae) #8
  br label %v4l2_set_ext_ctrl.exit.i

bb.g:                                             ; preds = %bb.e
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ab, i32 noundef 48, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.51, i32 noundef 0) #8
  br label %v4l2_set_ext_ctrl.exit.i

v4l2_set_ext_ctrl.exit.i:                         ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %v4l2_send_frame.exit

v4l2_send_frame.exit:                             ; preds = %bb.d, %._crit_edge, %v4l2_set_ext_ctrl.exit.i
  %.val.val51 = phi ptr [ %.val.val46.a, %v4l2_set_ext_ctrl.exit.i ], [ %.val.val46.a, %._crit_edge ], [ %.val.val46.pre, %bb.d ]
  %.049 = phi ptr [ %i.h, %v4l2_set_ext_ctrl.exit.i ], [ %i.h, %._crit_edge ], [ null, %bb.d ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val.val51, i64 4376
  %i.ag = call i32 @ff_v4l2_context_enqueue_frame(ptr noundef nonnull %i.af, ptr noundef %.049) #8 ; 3 uses
  %.not54 = icmp eq i32 %i.ag, -11
  br i1 %.not54, label %.thread52, label %bb.h

bb.h:                                             ; preds = %v4l2_send_frame.exit
  call void @av_frame_unref(ptr noundef %.049) #8
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.o, label %.thread52

.thread52:                                        ; preds = %v4l2_send_frame.exit, %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 4636
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !86
  %.not40 = icmp eq i32 %i.aj, 0
  br i1 %.not40, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.thread52
  %i.ak = call i32 @ff_v4l2_context_set_status(ptr noundef nonnull %i.f, i32 noundef 1074026002) #8 ; 2 uses
  %.not41 = icmp eq i32 %i.ak, 0
  br i1 %.not41, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.49) #8
  br label %bb.o

bb.k:                                             ; preds = %bb.i, %.thread52
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 4364
  %i.am = load i32, ptr %i.al, align 4, !tbaa !86
  %.not42 = icmp eq i32 %i.am, 0
  br i1 %.not42, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.an = call i32 @ff_v4l2_context_set_status(ptr noundef nonnull %i.e, i32 noundef 1074026002) #8 ; 2 uses
  %.not43 = icmp eq i32 %i.an, 0
  br i1 %.not43, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.50) #8
  br label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.a
  %i.ao = call i32 @ff_v4l2_context_dequeue_packet(ptr noundef nonnull %i.e, ptr noundef %1) #8
  br label %bb.o

bb.o:                                             ; preds = %bb.h, %bb.c, %bb.n, %bb.m, %bb.j
  %.034 = phi i32 [ %i.ao, %bb.n ], [ %i.m, %bb.c ], [ %i.an, %bb.m ], [ %i.ak, %bb.j ], [ %i.ag, %bb.h ]
  ret i32 %.034
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @v4l2_encode_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = tail call i32 @ff_v4l2_m2m_codec_end(ptr noundef %i.b) #8
  ret i32 %i.c
}

declare ptr @av_default_item_name(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @ff_v4l2_m2m_create_context(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_v4l2_m2m_codec_init(ptr noundef) local_unnamed_addr #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @ff_v4l2_format_v4l2_to_avfmt(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @v4l2_set_ext_ctrl(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 10029514, 10029821) %1, i32 noundef %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.v4l2_ext_controls, align 8  ; 7 uses
  %6 = alloca %struct.v4l2_ext_control, align 4   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store i32 10027008, ptr %5, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %6, ptr %i.c, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 1, ptr %i.d, align 4, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %2, ptr %i.e, align 4, !tbaa !38
  store i32 %1, ptr %6, align 4, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %i.g = load i32, ptr %i.f, align 8, !tbaa !39
  %i.h = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.g, i64 noundef 3223344712, ptr noundef nonnull %5) #8
  %i.i = icmp slt i32 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4648
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37   ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %4, 0
  %i.l = tail call ptr @__errno_location() #9     ; 2 uses
  br i1 %.not, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.l, align 4, !tbaa !45
  %.not8 = icmp eq i32 %i.m, 22
  %i.n = select i1 %.not8, i32 48, i32 24
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.c
  %i.o = phi i32 [ %i.n, %bb.c ], [ 24, %bb.b ]
  %i.p = load i32, ptr %i.l, align 4, !tbaa !45
  %i.q = call ptr @strerror(i32 noundef %i.p) #8
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.k, i32 noundef %i.o, ptr noundef nonnull @.str.47, ptr noundef %3, ptr noundef %i.q) #8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.k, i32 noundef 48, ptr noundef nonnull @.str.48, ptr noundef %3, i32 noundef %2) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #6

declare void @avpriv_report_missing_feature(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #6

declare i32 @ff_encode_get_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @av_frame_unref(ptr noundef) local_unnamed_addr #2

declare i32 @ff_v4l2_context_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_v4l2_context_dequeue_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_v4l2_context_enqueue_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_v4l2_m2m_codec_end(ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
end_hunk_0
