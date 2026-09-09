Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 216
loop-unroll.NumUnrolled: 278
begin_hunk_0_@ma_dr_flac_read_pcm_frames_f32:bb.a
  %.1.i111201.ph = phi i64 [ %i.bay, %.lr.ph203.preheader ], [ %i.bbd, %middle.block391 ]
  br label %.lr.ph203

.lr.ph203:                                        ; preds = %.lr.ph203.preheader603, %.lr.ph203
  %.1.i111201 = phi i64 [ %i.bbz, %.lr.ph203 ], [ %.1.i111201.ph, %.lr.ph203.preheader603 ] ; 4 uses
  %i.bbo = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.1.i111201
  %i.bbp = load i32, ptr %i.bbo, align 4, !tbaa !118
  %.idx128 = shl nuw nsw i64 %.1.i111201, 3
  %i.bbq = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx128
  %i.bbr = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.1.i111201
  %i.bbs = load i32, ptr %i.bbr, align 4, !tbaa !118
  %i.bbt = shl i32 %i.bbs, %i.auc
  %i.bbu = shl i32 %i.bbp, %i.aua
  %i.bbv = insertelement <2 x i32> poison, i32 %i.bbu, i64 0
  %i.bbw = insertelement <2 x i32> %i.bbv, i32 %i.bbt, i64 1
  %i.bbx = sitofp <2 x i32> %i.bbw to <2 x float>
  %i.bby = fmul nnan <2 x float> %i.bbx, splat (float f0x30000000)
  store <2 x float> %i.bby, ptr %i.bbq, align 4, !tbaa !349
  %i.bbz = add nuw nsw i64 %.1.i111201, 1         ; 2 uses
  %i.bca = icmp samesign ult i64 %i.bbz, %spec.select
  br i1 %i.bca, label %.lr.ph203, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, !llvm.loop !2296

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge213
  %.078214 = phi i64 [ %i.bdw, %._crit_edge213 ], [ 0, %.preheader.preheader ] ; 5 uses
  %i.bcb = mul nuw nsw i64 %.078214, %i.bk
  %i.bcc = getelementptr inbounds nuw [4 x i8], ptr %.081217, i64 %i.bcb ; 3 uses
  br i1 %i.bm, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.bcd = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv ; 2 uses
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bcd, i64 8
  %i.bcf = load ptr, ptr %i.bce, align 8, !tbaa !733
  %i.bcg = getelementptr inbounds nuw [4 x i8], ptr %i.bcf, i64 %.078214
  %i.bch = getelementptr inbounds nuw [4 x i8], ptr %i.bcg, i64 %i.bg
  %i.bci = load i32, ptr %i.bch, align 4, !tbaa !118
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bcd, i64 1
  %i.bck = load i8, ptr %i.bcj, align 1, !tbaa !734
  %i.bcl = zext i8 %i.bck to i32
  %i.bcm = add nsw i32 %i.z, %i.bcl
  %i.bcn = shl i32 %i.bci, %i.bcm
  %i.bco = sitofp i32 %i.bcn to double
  %i.bcp = fmul nnan double %i.bco, f0x3E00000000000000
  %i.bcq = fptrunc double %i.bcp to float
  %i.bcr = getelementptr inbounds nuw [4 x i8], ptr %i.bcc, i64 %indvars.iv
  store float %i.bcq, ptr %i.bcr, align 4, !tbaa !349
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bcs = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv.next ; 2 uses
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bcs, i64 8
  %i.bcu = load ptr, ptr %i.bct, align 8, !tbaa !733
  %i.bcv = getelementptr inbounds nuw [4 x i8], ptr %i.bcu, i64 %.078214
  %i.bcw = getelementptr inbounds nuw [4 x i8], ptr %i.bcv, i64 %i.bg
  %i.bcx = load i32, ptr %i.bcw, align 4, !tbaa !118
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.bcs, i64 1
  %i.bcz = load i8, ptr %i.bcy, align 1, !tbaa !734
  %i.bda = zext i8 %i.bcz to i32
  %i.bdb = add nsw i32 %i.z, %i.bda
  %i.bdc = shl i32 %i.bcx, %i.bdb
  %i.bdd = sitofp i32 %i.bdc to double
  %i.bde = fmul nnan double %i.bdd, f0x3E00000000000000
  %i.bdf = fptrunc double %i.bde to float
  %i.bdg = getelementptr inbounds nuw [4 x i8], ptr %i.bcc, i64 %indvars.iv.next
  store float %i.bdf, ptr %i.bdg, align 4, !tbaa !349
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge213.unr-lcssa, label %.preheader.new, !llvm.loop !2297

._crit_edge213.unr-lcssa:                         ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge213, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge213.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge213.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod622)
  %i.bdh = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv.epil.init ; 2 uses
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bdh, i64 8
  %i.bdj = load ptr, ptr %i.bdi, align 8, !tbaa !733
  %i.bdk = getelementptr inbounds nuw [4 x i8], ptr %i.bdj, i64 %.078214
  %i.bdl = getelementptr inbounds nuw [4 x i8], ptr %i.bdk, i64 %i.bg
  %i.bdm = load i32, ptr %i.bdl, align 4, !tbaa !118
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bdh, i64 1
  %i.bdo = load i8, ptr %i.bdn, align 1, !tbaa !734
  %i.bdp = zext i8 %i.bdo to i32
  %i.bdq = add nsw i32 %i.z, %i.bdp
  %i.bdr = shl i32 %i.bdm, %i.bdq
  %i.bds = sitofp i32 %i.bdr to double
  %i.bdt = fmul nnan double %i.bds, f0x3E00000000000000
  %i.bdu = fptrunc double %i.bdt to float
  %i.bdv = getelementptr inbounds nuw [4 x i8], ptr %i.bcc, i64 %indvars.iv.epil.init
  store float %i.bdu, ptr %i.bdv, align 4, !tbaa !349
  br label %._crit_edge213

._crit_edge213:                                   ; preds = %._crit_edge213.unr-lcssa, %.epil.preheader
  %i.bdw = add nuw nsw i64 %.078214, 1            ; 2 uses
  %exitcond280.not = icmp eq i64 %i.bdw, %spec.select
  br i1 %exitcond280.not, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %.preheader, !llvm.loop !2298

ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit: ; preds = %scalar.ph543, %scalar.ph524, %scalar.ph507, %.lr.ph175, %.lr.ph182, %.lr.ph189, %.lr.ph196, %.lr.ph203, %.lr.ph210, %._crit_edge213, %middle.block559, %middle.block540, %middle.block521, %middle.block489, %middle.block472, %middle.block440, %middle.block423, %middle.block391, %middle.block, %.loopexit, %._crit_edge, %._crit_edge165, %._crit_edge172, %._crit_edge179, %._crit_edge186, %._crit_edge193, %._crit_edge200, %._crit_edge207
  %i.bdx = add i64 %spec.select, %.080220
  %i.bdy = zext i8 %i.bc to i64
  %i.bdz = mul nuw nsw i64 %spec.select, %i.bdy
  %i.bea = getelementptr inbounds nuw [4 x i8], ptr %.081217, i64 %i.bdz
  %i.beb = sub nuw i64 %.083216, %spec.select
  %i.bec = load i64, ptr %i.al, align 8, !tbaa !729
  %i.bed = add i64 %i.bec, %spec.select
  store i64 %i.bed, ptr %i.al, align 8, !tbaa !729
  %i.bee = trunc nuw i64 %spec.select to i32
  %i.bef = load i32, ptr %i.aa, align 8, !tbaa !727
  %i.beg = sub i32 %i.bef, %i.bee
  store i32 %i.beg, ptr %i.aa, align 8, !tbaa !727
  br label %ma_dr_flac__read_and_decode_next_flac_frame.exit

ma_dr_flac__read_and_decode_next_flac_frame.exit: ; preds = %bb.h, %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit
  %.184 = phi i64 [ %i.beb, %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit ], [ %.083216, %bb.h ] ; 2 uses
  %.182 = phi ptr [ %i.bea, %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit ], [ %.081217, %bb.h ]
  %.1 = phi i64 [ %i.bdx, %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit ], [ %.080220, %bb.h ] ; 2 uses
  %.not = icmp eq i64 %.184, 0
  br i1 %.not, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread, label %bb.g, !llvm.loop !2299

ma_dr_flac__read_and_decode_next_flac_frame.exit.thread: ; preds = %ma_dr_flac__read_and_decode_next_flac_frame.exit, %bb.h, %.preheader249, %bb.a, %ma_dr_flac__seek_forward_by_pcm_frames.exit
  %.0 = phi i64 [ 0, %bb.a ], [ %.025.i, %ma_dr_flac__seek_forward_by_pcm_frames.exit ], [ %.080220, %bb.h ], [ %.080220, %.preheader249 ], [ %.1, %ma_dr_flac__read_and_decode_next_flac_frame.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @ma_dr_flac_read_pcm_frames_s16(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly %2) local_unnamed_addr #44 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i64 %1, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %.lr.ph.i, label %.lr.ph222

.lr.ph.i:                                         ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.c

bb.c:                                             ; preds = %ma_dr_flac__read_and_decode_next_flac_frame.exit.i, %.lr.ph.i
  %.028.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i112, %ma_dr_flac__read_and_decode_next_flac_frame.exit.i ] ; 5 uses
  %.01627.i = phi i64 [ %1, %.lr.ph.i ], [ %.117.i, %ma_dr_flac__read_and_decode_next_flac_frame.exit.i ] ; 5 uses
  %i.h = load i32, ptr %i.d, align 8, !tbaa !727  ; 3 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %bb.c, %bb.d
  %i.j = load i8, ptr %i.f, align 1, !tbaa !728
  %i.k = tail call fastcc i32 @ma_dr_flac__read_next_flac_frame_header(ptr noundef %i.e, i8 noundef zeroext %i.j, ptr noundef %i.g)
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %ma_dr_flac__seek_forward_by_pcm_frames.exit, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.l = tail call fastcc i32 @ma_dr_flac__decode_flac_frame(ptr noundef nonnull %0)
  switch i32 %i.l, label %ma_dr_flac__seek_forward_by_pcm_frames.exit [
    i32 0, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.i
    i32 -100, label %.preheader.i
  ]

bb.e:                                             ; preds = %bb.c
  %i.m = zext i32 %i.h to i64                     ; 3 uses
  %i.n = icmp ult i64 %.01627.i, %i.m
  br i1 %i.n, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i, label %bb.f

ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i: ; preds = %bb.e
  %i.o = add i64 %.01627.i, %.028.i
  %i.p = trunc nuw i64 %.01627.i to i32
  %i.q = sub nuw i32 %i.h, %i.p
  store i32 %i.q, ptr %i.d, align 8, !tbaa !727
  br label %ma_dr_flac__seek_forward_by_pcm_frames.exit

bb.f:                                             ; preds = %bb.e
  %i.r = add i64 %.028.i, %i.m
  %i.s = sub nuw i64 %.01627.i, %i.m
  store i32 0, ptr %i.d, align 8, !tbaa !727
  br label %ma_dr_flac__read_and_decode_next_flac_frame.exit.i

ma_dr_flac__read_and_decode_next_flac_frame.exit.i: ; preds = %bb.d, %bb.f
  %.117.i = phi i64 [ %i.s, %bb.f ], [ %.01627.i, %bb.d ] ; 2 uses
  %.1.i112 = phi i64 [ %i.r, %bb.f ], [ %.028.i, %bb.d ] ; 2 uses
  %.not.i113 = icmp eq i64 %.117.i, 0
  br i1 %.not.i113, label %ma_dr_flac__seek_forward_by_pcm_frames.exit, label %bb.c, !llvm.loop !59

ma_dr_flac__seek_forward_by_pcm_frames.exit:      ; preds = %ma_dr_flac__read_and_decode_next_flac_frame.exit.i, %.preheader.i, %bb.d, %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i
  %.025.i = phi i64 [ %.028.i, %.preheader.i ], [ %i.o, %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i ], [ %.028.i, %bb.d ], [ %.1.i112, %ma_dr_flac__read_and_decode_next_flac_frame.exit.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !729
  %i.v = add i64 %i.u, %.025.i
  store i64 %i.v, ptr %i.t, align 8, !tbaa !729
  br label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread

.lr.ph222:                                        ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 53 ; 6 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !728   ; 2 uses
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %i.z = sub nsw i32 32, %i.y                     ; 18 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.not.i = icmp eq i8 %i.x, 32                   ; 2 uses
  %i.af = sub nsw i32 31, %i.y                    ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 105 ; 13 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 13 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %broadcast.splatinsert520 = insertelement <4 x i32> poison, i32 %i.af, i64 0 ; 2 uses
  %i.am = shufflevector <4 x i32> %broadcast.splatinsert520, <4 x i32> poison, <16 x i32> zeroinitializer
  %i.an = shufflevector <4 x i32> %broadcast.splatinsert520, <4 x i32> poison, <16 x i32> zeroinitializer
  %i.ao = insertelement <8 x i32> poison, i32 %i.af, i64 0
  %i.ap = shufflevector <8 x i32> %i.ao, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert486 = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat487 = shufflevector <4 x i32> %broadcast.splatinsert486, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert467 = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat468 = shufflevector <4 x i32> %broadcast.splatinsert467, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph222, %ma_dr_flac__read_and_decode_next_flac_frame.exit
  %.080220 = phi i64 [ 0, %.lr.ph222 ], [ %.1, %ma_dr_flac__read_and_decode_next_flac_frame.exit ] ; 4 uses
  %.081217 = phi ptr [ %2, %.lr.ph222 ], [ %.182, %ma_dr_flac__read_and_decode_next_flac_frame.exit ] ; 33 uses
  %.083216 = phi i64 [ %1, %.lr.ph222 ], [ %.184, %ma_dr_flac__read_and_decode_next_flac_frame.exit ] ; 3 uses
  %i.aq = load i32, ptr %i.aa, align 8, !tbaa !727 ; 3 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %.preheader244, label %bb.i

.preheader244:                                    ; preds = %bb.g, %bb.h
  %i.as = load i8, ptr %i.w, align 1, !tbaa !728
  %i.at = tail call fastcc i32 @ma_dr_flac__read_next_flac_frame_header(ptr noundef %i.ak, i8 noundef zeroext %i.as, ptr noundef %i.al)
  %.not.i114 = icmp eq i32 %i.at, 0
  br i1 %.not.i114, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread, label %bb.h

bb.h:                                             ; preds = %.preheader244
  %i.au = tail call fastcc i32 @ma_dr_flac__decode_flac_frame(ptr noundef nonnull %0)
  switch i32 %i.au, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread [
    i32 0, label %ma_dr_flac__read_and_decode_next_flac_frame.exit
    i32 -100, label %.preheader244
  ]

bb.i:                                             ; preds = %bb.g
  %i.av = load i8, ptr %i.ab, align 2, !tbaa !730 ; 3 uses
  %i.aw = sext i8 %i.av to i64                    ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr @__const.ma_dr_flac__get_channel_count_from_channel_assignment.lookup, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !119 ; 3 uses
  %i.az = load i16, ptr %i.ac, align 8, !tbaa !731
  %i.ba = zext i16 %i.az to i32
  %i.bb = sub i32 %i.ba, %i.aq
  %i.bc = zext i32 %i.bb to i64                   ; 5 uses
  %i.bd = zext i32 %i.aq to i64
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.083216, i64 %i.bd) ; 52 uses
  %i.be = shl nuw i64 1, %i.aw
  %i.bf = and i64 %i.be, 1794
  %.not117 = icmp eq i64 %i.bf, 0
  br i1 %.not117, label %.preheader.preheader, label %bb.j

.preheader.preheader:                             ; preds = %bb.i
  %i.bg = zext i8 %i.ay to i64
  %i.bh = tail call i8 @llvm.umax.i8(i8 %i.ay, i8 1) ; 2 uses
  %wide.trip.count = zext i8 %i.bh to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bi = icmp eq i8 %i.av, 0
  %unroll_iter = and i64 %wide.trip.count, 254
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod554 = trunc i8 %i.bh to i1
  br label %.preheader

bb.j:                                             ; preds = %bb.i
  %i.bj = load ptr, ptr %i.ad, align 8, !tbaa !733
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bc ; 63 uses
  %i.bl = load ptr, ptr %i.ae, align 8, !tbaa !733
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bc ; 63 uses
  %.b.i93 = load i1, ptr @ma_dr_flac__gIsSSE2Supported, align 4 ; 4 uses
  switch i8 %i.av, label %bb.y [
    i8 8, label %bb.k
    i8 9, label %bb.o
    i8 10, label %bb.s
  ]

bb.k:                                             ; preds = %bb.j
  br i1 %.b.i93, label %bb.l, label %._crit_edge280

._crit_edge280:                                   ; preds = %bb.k
  %.pre281 = load i8, ptr %i.ag, align 1, !tbaa !734
  %.pre283 = load i8, ptr %i.ah, align 1, !tbaa !734
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bn = load i8, ptr %i.w, align 1, !tbaa !728
  %i.bo = icmp ult i8 %i.bn, 25
  %.pre282 = load i8, ptr %i.ag, align 1, !tbaa !734 ; 2 uses
  %.pre284 = load i8, ptr %i.ah, align 1, !tbaa !734 ; 2 uses
  br i1 %i.bo, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bp = lshr i64 %spec.select, 2                ; 2 uses
  %i.bq = zext i8 %.pre282 to i32
  %i.br = add nsw i32 %i.z, %i.bq                 ; 3 uses
  %i.bs = zext i8 %.pre284 to i32
  %i.bt = add nsw i32 %i.z, %i.bs                 ; 3 uses
  %.not236 = icmp eq i64 %i.bp, 0
  br i1 %.not236, label %._crit_edge193, label %.lr.ph192

.lr.ph192:                                        ; preds = %bb.m, %.lr.ph192
  %.0.i190 = phi i64 [ %i.cj, %.lr.ph192 ], [ 0, %bb.m ] ; 4 uses
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %.0.i190
  %i.bv = load <4 x i32>, ptr %i.bu, align 1, !tbaa !119
  %i.bw = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.bv, i32 range(i32 -232, 288) %i.br) ; 2 uses
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %.0.i190
  %i.by = load <4 x i32>, ptr %i.bx, align 1, !tbaa !119
  %i.bz = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.by, i32 range(i32 -232, 288) %i.bt)
  %i.ca = sub <4 x i32> %i.bw, %i.bz
  %i.cb = ashr <4 x i32> %i.bw, splat (i32 16)
  %i.cc = ashr <4 x i32> %i.ca, splat (i32 16)
  %.idx.i = shl nuw nsw i64 %.0.i190, 4
  %i.cd = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx.i
  %i.ce = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cb, <4 x i32> %i.cc)
  %i.cf = bitcast <8 x i16> %i.ce to <4 x i32>
  %i.cg = shufflevector <4 x i32> %i.cf, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ch = bitcast <4 x i32> %i.cg to <8 x i16>
  %i.ci = shufflevector <8 x i16> %i.ch, <8 x i16> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  store <8 x i16> %i.ci, ptr %i.cd, align 1, !tbaa !119
  %i.cj = add nuw nsw i64 %.0.i190, 1             ; 2 uses
  %exitcond269.not = icmp eq i64 %i.cj, %i.bp
  br i1 %exitcond269.not, label %._crit_edge193, label %.lr.ph192, !llvm.loop !2300

._crit_edge193:                                   ; preds = %.lr.ph192, %bb.m
  %i.ck = and i64 %spec.select, 4294967292        ; 6 uses
  %.not237 = icmp eq i64 %i.ck, %spec.select
  br i1 %.not237, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %.lr.ph196.preheader

.lr.ph196.preheader:                              ; preds = %._crit_edge193
  %i.cl = or disjoint i64 %i.ck, 1
  %i.cm = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.cl) ; 2 uses
  %i.cn = sub nsw i64 %i.cm, %i.ck                ; 2 uses
  %min.iters.check375 = icmp ult i64 %i.cn, 4
  br i1 %min.iters.check375, label %.lr.ph196.preheader540, label %vector.ph376

vector.ph376:                                     ; preds = %.lr.ph196.preheader
  %i.co = and i64 %i.cm, 3                        ; 2 uses
  %n.vec377 = sub nuw nsw i64 %i.cn, %i.co        ; 2 uses
  %i.cp = add nsw i64 %i.ck, %n.vec377
  %broadcast.splatinsert378 = insertelement <4 x i32> poison, i32 %i.br, i64 0
  %broadcast.splat379 = shufflevector <4 x i32> %broadcast.splatinsert378, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert380 = insertelement <4 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat381 = shufflevector <4 x i32> %broadcast.splatinsert380, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body382

vector.body382:                                   ; preds = %vector.body382, %vector.ph376
  %index383 = phi i64 [ 0, %vector.ph376 ], [ %index.next387, %vector.body382 ] ; 2 uses
  %i.cq = add nuw i64 %i.ck, %index383            ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.cq
  %wide.load384 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !118
  %i.cs = shl <4 x i32> %wide.load384, %broadcast.splat379 ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.cq
  %wide.load385 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !118
  %i.cu = shl <4 x i32> %wide.load385, %broadcast.splat381
  %i.cv = sub <4 x i32> %i.cs, %i.cu
  %i.cw = shl nuw nsw i64 %i.cq, 2
  %i.cx = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.cw
  %i.cy = shufflevector <4 x i32> %i.cs, <4 x i32> %i.cv, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cz = lshr <8 x i32> %i.cy, splat (i32 16)
  %interleaved.vec386 = trunc nuw <8 x i32> %i.cz to <8 x i16>
  store <8 x i16> %interleaved.vec386, ptr %i.cx, align 2, !tbaa !122
  %index.next387 = add nuw i64 %index383, 4       ; 2 uses
  %i.da = icmp eq i64 %index.next387, %n.vec377
  br i1 %i.da, label %middle.block388, label %vector.body382, !llvm.loop !2301

middle.block388:                                  ; preds = %vector.body382
  %cmp.n389 = icmp eq i64 %i.co, 0
  br i1 %cmp.n389, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %.lr.ph196.preheader540

.lr.ph196.preheader540:                           ; preds = %.lr.ph196.preheader, %middle.block388
  %.1.i194.ph = phi i64 [ %i.ck, %.lr.ph196.preheader ], [ %i.cp, %middle.block388 ]
  br label %.lr.ph196

.lr.ph196:                                        ; preds = %.lr.ph196.preheader540, %.lr.ph196
  %.1.i194 = phi i64 [ %i.do, %.lr.ph196 ], [ %.1.i194.ph, %.lr.ph196.preheader540 ] ; 4 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.1.i194
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !118
  %i.dd = shl i32 %i.dc, %i.br                    ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.1.i194
  %i.df = load i32, ptr %i.de, align 4, !tbaa !118
  %i.dg = shl i32 %i.df, %i.bt
  %i.dh = sub i32 %i.dd, %i.dg
  %i.di = lshr i32 %i.dd, 16
  %i.dj = lshr i32 %i.dh, 16
  %i.dk = trunc nuw i32 %i.di to i16
  %.idx127 = shl nuw nsw i64 %.1.i194, 2
  %i.dl = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx127 ; 2 uses
  store i16 %i.dk, ptr %i.dl, align 2, !tbaa !122
  %i.dm = trunc nuw i32 %i.dj to i16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  store i16 %i.dm, ptr %i.dn, align 2, !tbaa !122
  %i.do = add nuw nsw i64 %.1.i194, 1             ; 2 uses
  %i.dp = icmp samesign ult i64 %i.do, %spec.select
  br i1 %i.dp, label %.lr.ph196, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, !llvm.loop !2302

bb.n:                                             ; preds = %._crit_edge280, %bb.l
  %3 = phi i8 [ %.pre283, %._crit_edge280 ], [ %.pre284, %bb.l ]
  %4 = phi i8 [ %.pre281, %._crit_edge280 ], [ %.pre282, %bb.l ]
  %i.dq = lshr i64 %spec.select, 2                ; 2 uses
  %5 = zext i8 %4 to i32
  %6 = add nsw i32 %i.z, %5                       ; 3 uses
  %7 = zext i8 %3 to i32
  %8 = add nsw i32 %i.z, %7                       ; 3 uses
  %.not234 = icmp eq i64 %i.dq, 0
  br i1 %.not234, label %._crit_edge186, label %.lr.ph185.preheader

.lr.ph185.preheader:                              ; preds = %bb.n
  %9 = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.dr = shufflevector <4 x i32> %9, <4 x i32> poison, <4 x i32> zeroinitializer
  %10 = insertelement <4 x i32> poison, i32 %8, i64 0
  %11 = shufflevector <4 x i32> %10, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph185

.lr.ph185:                                        ; preds = %.lr.ph185.preheader, %.lr.ph185
  %.0.i94183 = phi i64 [ %i.ef, %.lr.ph185 ], [ 0, %.lr.ph185.preheader ] ; 3 uses
  %i.ds = shl nuw nsw i64 %.0.i94183, 2           ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.ds
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.ds
  %.idx126 = shl nuw nsw i64 %.0.i94183, 4
  %i.dv = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx126
  %i.dw = load <4 x i32>, ptr %i.dt, align 4, !tbaa !118
  %i.dx = shl <4 x i32> %i.dw, %i.dr              ; 2 uses
  %i.dy = load <4 x i32>, ptr %i.du, align 4, !tbaa !118
  %i.dz = shl <4 x i32> %i.dy, %11
  %i.ea = sub <4 x i32> %i.dx, %i.dz
  %i.eb = shufflevector <4 x i32> %i.dx, <4 x i32> %i.ea, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ec = lshr <8 x i32> %i.eb, splat (i32 16)
  %i.ed = trunc nuw <8 x i32> %i.ec to <8 x i16>
  %i.ee = shufflevector <8 x i16> %i.ed, <8 x i16> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.ee, ptr %i.dv, align 2, !tbaa !122
  %i.ef = add nuw nsw i64 %.0.i94183, 1           ; 2 uses
  %exitcond268.not = icmp eq i64 %i.ef, %i.dq
  br i1 %exitcond268.not, label %._crit_edge186, label %.lr.ph185, !llvm.loop !2303

._crit_edge186:                                   ; preds = %.lr.ph185, %bb.n
  %i.eg = and i64 %spec.select, 4294967292        ; 6 uses
  %.not235 = icmp eq i64 %i.eg, %spec.select
  br i1 %.not235, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %.lr.ph189.preheader

.lr.ph189.preheader:                              ; preds = %._crit_edge186
  %i.eh = or disjoint i64 %i.eg, 1
  %i.ei = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.eh) ; 2 uses
  %i.ej = sub nsw i64 %i.ei, %i.eg                ; 2 uses
  %min.iters.check392 = icmp ult i64 %i.ej, 4
  br i1 %min.iters.check392, label %.lr.ph189.preheader542, label %vector.ph393

vector.ph393:                                     ; preds = %.lr.ph189.preheader
  %i.ek = and i64 %i.ei, 3                        ; 2 uses
  %n.vec394 = sub nuw nsw i64 %i.ej, %i.ek        ; 2 uses
  %i.el = add nsw i64 %i.eg, %n.vec394
  %broadcast.splatinsert395 = insertelement <4 x i32> poison, i32 %6, i64 0
  %broadcast.splat396 = shufflevector <4 x i32> %broadcast.splatinsert395, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert397 = insertelement <4 x i32> poison, i32 %8, i64 0
  %broadcast.splat398 = shufflevector <4 x i32> %broadcast.splatinsert397, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body399

vector.body399:                                   ; preds = %vector.body399, %vector.ph393
  %index400 = phi i64 [ 0, %vector.ph393 ], [ %index.next404, %vector.body399 ] ; 2 uses
  %i.em = add nuw i64 %i.eg, %index400            ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.em
  %wide.load401 = load <4 x i32>, ptr %i.en, align 4, !tbaa !118
  %i.eo = shl <4 x i32> %wide.load401, %broadcast.splat396 ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.em
  %wide.load402 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !118
  %i.eq = shl <4 x i32> %wide.load402, %broadcast.splat398
  %i.er = sub <4 x i32> %i.eo, %i.eq
  %i.es = shl nuw nsw i64 %i.em, 2
  %i.et = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.es
  %i.eu = shufflevector <4 x i32> %i.eo, <4 x i32> %i.er, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.ev = lshr <8 x i32> %i.eu, splat (i32 16)
  %interleaved.vec403 = trunc nuw <8 x i32> %i.ev to <8 x i16>
  store <8 x i16> %interleaved.vec403, ptr %i.et, align 2, !tbaa !122
  %index.next404 = add nuw i64 %index400, 4       ; 2 uses
  %i.ew = icmp eq i64 %index.next404, %n.vec394
  br i1 %i.ew, label %middle.block405, label %vector.body399, !llvm.loop !2304

middle.block405:                                  ; preds = %vector.body399
  %cmp.n406 = icmp eq i64 %i.ek, 0
  br i1 %cmp.n406, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %.lr.ph189.preheader542

.lr.ph189.preheader542:                           ; preds = %.lr.ph189.preheader, %middle.block405
  %.1.i95187.ph = phi i64 [ %i.eg, %.lr.ph189.preheader ], [ %i.el, %middle.block405 ]
  br label %.lr.ph189

.lr.ph189:                                        ; preds = %.lr.ph189.preheader542, %.lr.ph189
  %.1.i95187 = phi i64 [ %i.fk, %.lr.ph189 ], [ %.1.i95187.ph, %.lr.ph189.preheader542 ] ; 4 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.1.i95187
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !118
  %i.ez = shl i32 %i.ey, %6                       ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.1.i95187
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !118
  %i.fc = shl i32 %i.fb, %8
  %i.fd = sub i32 %i.ez, %i.fc
  %i.fe = lshr i32 %i.ez, 16
  %i.ff = lshr i32 %i.fd, 16
  %i.fg = trunc nuw i32 %i.fe to i16
  %.idx125 = shl nuw nsw i64 %.1.i95187, 2
  %i.fh = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx125 ; 2 uses
  store i16 %i.fg, ptr %i.fh, align 2, !tbaa !122
  %i.fi = trunc nuw i32 %i.ff to i16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 2
  store i16 %i.fi, ptr %i.fj, align 2, !tbaa !122
  %i.fk = add nuw nsw i64 %.1.i95187, 1           ; 2 uses
  %i.fl = icmp samesign ult i64 %i.fk, %spec.select
  br i1 %i.fl, label %.lr.ph189, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, !llvm.loop !2305

bb.o:                                             ; preds = %bb.j
  br i1 %.b.i93, label %bb.p, label %._crit_edge276

._crit_edge276:                                   ; preds = %bb.o
  %.pre = load i8, ptr %i.ag, align 1, !tbaa !734
  %.pre278 = load i8, ptr %i.ah, align 1, !tbaa !734
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.fm = load i8, ptr %i.w, align 1, !tbaa !728
  %i.fn = icmp ult i8 %i.fm, 25
  %.pre277 = load i8, ptr %i.ag, align 1, !tbaa !734 ; 2 uses
  %.pre279 = load i8, ptr %i.ah, align 1, !tbaa !734 ; 2 uses
  br i1 %i.fn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fo = lshr i64 %spec.select, 2                ; 2 uses
  %i.fp = zext i8 %.pre277 to i32
  %i.fq = add nsw i32 %i.z, %i.fp                 ; 3 uses
  %i.fr = zext i8 %.pre279 to i32
  %i.fs = add nsw i32 %i.z, %i.fr                 ; 3 uses
  %.not232 = icmp eq i64 %i.fo, 0
  br i1 %.not232, label %._crit_edge179, label %.lr.ph178

.lr.ph178:                                        ; preds = %bb.q, %.lr.ph178
  %.0.i96176 = phi i64 [ %i.gi, %.lr.ph178 ], [ 0, %bb.q ] ; 4 uses
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %.0.i96176
  %i.fu = load <4 x i32>, ptr %i.ft, align 1, !tbaa !119
  %i.fv = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.fu, i32 range(i32 -232, 288) %i.fq)
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %.0.i96176
  %i.fx = load <4 x i32>, ptr %i.fw, align 1, !tbaa !119
  %i.fy = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.fx, i32 range(i32 -232, 288) %i.fs) ; 2 uses
  %i.fz = add <4 x i32> %i.fy, %i.fv
  %i.ga = ashr <4 x i32> %i.fz, splat (i32 16)
  %i.gb = ashr <4 x i32> %i.fy, splat (i32 16)
  %.idx.i98 = shl nuw nsw i64 %.0.i96176, 4
  %i.gc = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx.i98
  %i.gd = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ga, <4 x i32> %i.gb)
  %i.ge = bitcast <8 x i16> %i.gd to <4 x i32>
  %i.gf = shufflevector <4 x i32> %i.ge, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.gg = bitcast <4 x i32> %i.gf to <8 x i16>
  %i.gh = shufflevector <8 x i16> %i.gg, <8 x i16> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  store <8 x i16> %i.gh, ptr %i.gc, align 1, !tbaa !119
  %i.gi = add nuw nsw i64 %.0.i96176, 1           ; 2 uses
  %exitcond267.not = icmp eq i64 %i.gi, %i.fo
  br i1 %exitcond267.not, label %._crit_edge179, label %.lr.ph178, !llvm.loop !2306

._crit_edge179:                                   ; preds = %.lr.ph178, %bb.q
  %i.gj = and i64 %spec.select, 4294967292        ; 6 uses
  %.not233 = icmp eq i64 %i.gj, %spec.select
  br i1 %.not233, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %.lr.ph182.preheader

.lr.ph182.preheader:                              ; preds = %._crit_edge179
  %i.gk = or disjoint i64 %i.gj, 1
  %i.gl = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.gk) ; 2 uses
  %i.gm = sub nsw i64 %i.gl, %i.gj                ; 2 uses
  %min.iters.check409 = icmp ult i64 %i.gm, 4
  br i1 %min.iters.check409, label %.lr.ph182.preheader544, label %vector.ph410

vector.ph410:                                     ; preds = %.lr.ph182.preheader
  %i.gn = and i64 %i.gl, 3                        ; 2 uses
  %n.vec411 = sub nuw nsw i64 %i.gm, %i.gn        ; 2 uses
  %i.go = add nsw i64 %i.gj, %n.vec411
  %broadcast.splatinsert412 = insertelement <4 x i32> poison, i32 %i.fq, i64 0
  %broadcast.splat413 = shufflevector <4 x i32> %broadcast.splatinsert412, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert414 = insertelement <4 x i32> poison, i32 %i.fs, i64 0
  %broadcast.splat415 = shufflevector <4 x i32> %broadcast.splatinsert414, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body416

vector.body416:                                   ; preds = %vector.body416, %vector.ph410
  %index417 = phi i64 [ 0, %vector.ph410 ], [ %index.next421, %vector.body416 ] ; 2 uses
  %i.gp = add nuw i64 %i.gj, %index417            ; 3 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.gp
  %wide.load418 = load <4 x i32>, ptr %i.gq, align 4, !tbaa !118
  %i.gr = shl <4 x i32> %wide.load418, %broadcast.splat413
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.gp
  %wide.load419 = load <4 x i32>, ptr %i.gs, align 4, !tbaa !118
  %i.gt = shl <4 x i32> %wide.load419, %broadcast.splat415 ; 2 uses
  %i.gu = add <4 x i32> %i.gt, %i.gr
  %i.gv = shl nuw nsw i64 %i.gp, 2
  %i.gw = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.gv
  %i.gx = shufflevector <4 x i32> %i.gu, <4 x i32> %i.gt, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.gy = lshr <8 x i32> %i.gx, splat (i32 16)
  %interleaved.vec420 = trunc nuw <8 x i32> %i.gy to <8 x i16>
  store <8 x i16> %interleaved.vec420, ptr %i.gw, align 2, !tbaa !122
  %index.next421 = add nuw i64 %index417, 4       ; 2 uses
  %i.gz = icmp eq i64 %index.next421, %n.vec411
  br i1 %i.gz, label %middle.block422, label %vector.body416, !llvm.loop !2307

middle.block422:                                  ; preds = %vector.body416
  %cmp.n423 = icmp eq i64 %i.gn, 0
  br i1 %cmp.n423, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %.lr.ph182.preheader544

.lr.ph182.preheader544:                           ; preds = %.lr.ph182.preheader, %middle.block422
  %.1.i97180.ph = phi i64 [ %i.gj, %.lr.ph182.preheader ], [ %i.go, %middle.block422 ]
  br label %.lr.ph182

.lr.ph182:                                        ; preds = %.lr.ph182.preheader544, %.lr.ph182
  %.1.i97180 = phi i64 [ %i.hn, %.lr.ph182 ], [ %.1.i97180.ph, %.lr.ph182.preheader544 ] ; 4 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.1.i97180
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !118
  %i.hc = shl i32 %i.hb, %i.fq
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.1.i97180
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !118
  %i.hf = shl i32 %i.he, %i.fs                    ; 2 uses
  %i.hg = add i32 %i.hf, %i.hc
  %i.hh = lshr i32 %i.hg, 16
  %i.hi = lshr i32 %i.hf, 16
  %i.hj = trunc nuw i32 %i.hh to i16
  %.idx124 = shl nuw nsw i64 %.1.i97180, 2
  %i.hk = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx124 ; 2 uses
  store i16 %i.hj, ptr %i.hk, align 2, !tbaa !122
  %i.hl = trunc nuw i32 %i.hi to i16
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 2
  store i16 %i.hl, ptr %i.hm, align 2, !tbaa !122
  %i.hn = add nuw nsw i64 %.1.i97180, 1           ; 2 uses
  %i.ho = icmp samesign ult i64 %i.hn, %spec.select
  br i1 %i.ho, label %.lr.ph182, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, !llvm.loop !2308

bb.r:                                             ; preds = %._crit_edge276, %bb.p
  %i.hp = phi i8 [ %.pre278, %._crit_edge276 ], [ %.pre279, %bb.p ]
  %i.hq = phi i8 [ %.pre, %._crit_edge276 ], [ %.pre277, %bb.p ]
  %i.hr = lshr i64 %spec.select, 2                ; 2 uses
  %i.hs = zext i8 %i.hq to i32
  %i.ht = add nsw i32 %i.z, %i.hs                 ; 3 uses
  %i.hu = zext i8 %i.hp to i32
  %i.hv = add nsw i32 %i.z, %i.hu                 ; 3 uses
  %.not230 = icmp eq i64 %i.hr, 0
  br i1 %.not230, label %._crit_edge172, label %.lr.ph171.preheader

.lr.ph171.preheader:                              ; preds = %bb.r
  %i.hw = insertelement <4 x i32> poison, i32 %i.ht, i64 0
  %i.hx = shufflevector <4 x i32> %i.hw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.hy = insertelement <4 x i32> poison, i32 %i.hv, i64 0
  %i.hz = shufflevector <4 x i32> %i.hy, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph171

.lr.ph171:                                        ; preds = %.lr.ph171.preheader, %.lr.ph171
  %.0.i99169 = phi i64 [ %i.in, %.lr.ph171 ], [ 0, %.lr.ph171.preheader ] ; 3 uses
  %i.ia = shl nuw nsw i64 %.0.i99169, 2           ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.ia
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.ia
  %.idx123 = shl nuw nsw i64 %.0.i99169, 4
  %i.id = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx123
  %i.ie = load <4 x i32>, ptr %i.ib, align 4, !tbaa !118
  %i.if = shl <4 x i32> %i.ie, %i.hx
  %i.ig = load <4 x i32>, ptr %i.ic, align 4, !tbaa !118
  %i.ih = shl <4 x i32> %i.ig, %i.hz              ; 2 uses
  %i.ii = add <4 x i32> %i.ih, %i.if
  %i.ij = shufflevector <4 x i32> %i.ii, <4 x i32> %i.ih, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ik = lshr <8 x i32> %i.ij, splat (i32 16)
  %i.il = trunc nuw <8 x i32> %i.ik to <8 x i16>
  %i.im = shufflevector <8 x i16> %i.il, <8 x i16> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.im, ptr %i.id, align 2, !tbaa !122
  %i.in = add nuw nsw i64 %.0.i99169, 1           ; 2 uses
  %exitcond266.not = icmp eq i64 %i.in, %i.hr
  br i1 %exitcond266.not, label %._crit_edge172, label %.lr.ph171, !llvm.loop !2309

._crit_edge172:                                   ; preds = %.lr.ph171, %bb.r
  %i.io = and i64 %spec.select, 4294967292        ; 6 uses
  %.not231 = icmp eq i64 %i.io, %spec.select
  br i1 %.not231, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %.lr.ph175.preheader

.lr.ph175.preheader:                              ; preds = %._crit_edge172
  %i.ip = or disjoint i64 %i.io, 1
  %i.iq = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.ip) ; 2 uses
  %i.ir = sub nsw i64 %i.iq, %i.io                ; 2 uses
  %min.iters.check426 = icmp ult i64 %i.ir, 4
  br i1 %min.iters.check426, label %.lr.ph175.preheader546, label %vector.ph427

vector.ph427:                                     ; preds = %.lr.ph175.preheader
  %i.is = and i64 %i.iq, 3                        ; 2 uses
  %n.vec428 = sub nuw nsw i64 %i.ir, %i.is        ; 2 uses
  %i.it = add nsw i64 %i.io, %n.vec428
  %broadcast.splatinsert429 = insertelement <4 x i32> poison, i32 %i.ht, i64 0
  %broadcast.splat430 = shufflevector <4 x i32> %broadcast.splatinsert429, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert431 = insertelement <4 x i32> poison, i32 %i.hv, i64 0
  %broadcast.splat432 = shufflevector <4 x i32> %broadcast.splatinsert431, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body433

vector.body433:                                   ; preds = %vector.body433, %vector.ph427
  %index434 = phi i64 [ 0, %vector.ph427 ], [ %index.next438, %vector.body433 ] ; 2 uses
  %i.iu = add nuw i64 %i.io, %index434            ; 3 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.iu
  %wide.load435 = load <4 x i32>, ptr %i.iv, align 4, !tbaa !118
  %i.iw = shl <4 x i32> %wide.load435, %broadcast.splat430
end_hunk_0
