Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 277
begin_hunk_0_@ma_dr_flac__seek_to_approximate_flac_frame_to_byte:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4472 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4480 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 53
  br label %ma_dr_flac__read_and_decode_next_flac_frame.exit

ma_dr_flac__read_and_decode_next_flac_frame.exit: ; preds = %.thread, %bb.a
  %.028 = phi i64 [ %1, %bb.a ], [ %.126, %.thread ] ; 6 uses
  %.025 = phi i64 [ %3, %bb.a ], [ %.126, %.thread ]
  %i.n = icmp ugt i64 %.028, 2147483647
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !736  ; 2 uses
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !737  ; 2 uses
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %ma_dr_flac__read_and_decode_next_flac_frame.exit
  %i.q = tail call i32 %i.o(ptr noundef %i.p, i32 noundef 2147483647, i32 noundef 0) #55, !inline_history !3278
  %.not22.i = icmp eq i32 %i.q, 0
  br i1 %.not22.i, label %.thread, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.b
  %.018.i63 = add i64 %.028, -2147483647          ; 3 uses
  %i.r = icmp ugt i64 %.018.i63, 2147483647
  br i1 %i.r, label %.lr.ph, label %.preheader.i._crit_edge

.preheader.i:                                     ; preds = %.lr.ph
  %.018.i = add i64 %.018.i64, -2147483647        ; 3 uses
  %i.s = icmp ugt i64 %.018.i, 2147483647
  br i1 %i.s, label %.lr.ph, label %.preheader.i._crit_edge, !llvm.loop !61

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.018.i64 = phi i64 [ %.018.i, %.preheader.i ], [ %.018.i63, %.preheader.i.preheader ]
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !736
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !737
  %i.v = tail call i32 %i.t(ptr noundef %i.u, i32 noundef 2147483647, i32 noundef 1) #55, !inline_history !3278
  %.not24.i = icmp eq i32 %i.v, 0
  br i1 %.not24.i, label %.loopexit, label %.preheader.i, !llvm.loop !61

.preheader.i._crit_edge:                          ; preds = %.preheader.i, %.preheader.i.preheader
  %.018.i.lcssa = phi i64 [ %.018.i63, %.preheader.i.preheader ], [ %.018.i, %.preheader.i ]
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !736
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !737
  %i.y = trunc nuw nsw i64 %.018.i.lcssa to i32
  %i.z = tail call i32 %i.w(ptr noundef %i.x, i32 noundef %i.y, i32 noundef 1) #55, !inline_history !3278
  %.not23.not.i = icmp eq i32 %i.z, 0
  br i1 %.not23.not.i, label %.loopexit, label %bb.h

bb.c:                                             ; preds = %ma_dr_flac__read_and_decode_next_flac_frame.exit
  %i.aa = trunc nuw nsw i64 %.028 to i32
  %i.ab = tail call i32 %i.o(ptr noundef %i.p, i32 noundef %i.aa, i32 noundef 0) #55, !inline_history !3278
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %.loopexit, label %bb.h

.loopexit:                                        ; preds = %.lr.ph, %.preheader.i._crit_edge, %bb.c
  %i.ac = icmp eq i64 %.028, 0
  br i1 %i.ac, label %bb.d, label %.thread

bb.d:                                             ; preds = %.loopexit
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !735 ; 3 uses
  %i.ae = icmp ugt i64 %i.ad, 2147483647
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !736 ; 2 uses
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !737 ; 2 uses
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = tail call i32 %i.af(ptr noundef %i.ag, i32 noundef 2147483647, i32 noundef 0) #55, !inline_history !60
  %.not22.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not22.i.i, label %ma_dr_flac__seek_to_first_frame.exit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.e
  %.018.i.i65 = add i64 %i.ad, -2147483647        ; 3 uses
  %i.ai = icmp ugt i64 %.018.i.i65, 2147483647
  br i1 %i.ai, label %.lr.ph67, label %.preheader.i.i._crit_edge

.preheader.i.i:                                   ; preds = %.lr.ph67
  %.018.i.i = add i64 %.018.i.i66, -2147483647    ; 3 uses
  %i.aj = icmp ugt i64 %.018.i.i, 2147483647
  br i1 %i.aj, label %.lr.ph67, label %.preheader.i.i._crit_edge, !llvm.loop !61

.lr.ph67:                                         ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.018.i.i66 = phi i64 [ %.018.i.i, %.preheader.i.i ], [ %.018.i.i65, %.preheader.i.i.preheader ]
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !736
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !737
  %i.am = tail call i32 %i.ak(ptr noundef %i.al, i32 noundef 2147483647, i32 noundef 1) #55, !inline_history !60
  %.not24.i.i = icmp eq i32 %i.am, 0
  br i1 %.not24.i.i, label %ma_dr_flac__seek_to_first_frame.exit, label %.preheader.i.i, !llvm.loop !61

.preheader.i.i._crit_edge:                        ; preds = %.preheader.i.i, %.preheader.i.i.preheader
  %.018.i.i.lcssa = phi i64 [ %.018.i.i65, %.preheader.i.i.preheader ], [ %.018.i.i, %.preheader.i.i ]
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !736
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !737
  %i.ap = trunc nuw nsw i64 %.018.i.i.lcssa to i32
  %i.aq = tail call i32 %i.an(ptr noundef %i.ao, i32 noundef %i.ap, i32 noundef 1) #55, !inline_history !60
  %.not23.not.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not23.not.i.i, label %ma_dr_flac__seek_to_first_frame.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ar = trunc nuw nsw i64 %i.ad to i32
  %i.as = tail call i32 %i.af(ptr noundef %i.ag, i32 noundef %i.ar, i32 noundef 0) #55, !inline_history !60
  %.not.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i, label %ma_dr_flac__seek_to_first_frame.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader.i.i._crit_edge
  store i32 512, ptr %i.f, align 8, !tbaa !738
  store i32 64, ptr %i.g, align 4, !tbaa !739
  store i64 0, ptr %i.h, align 8, !tbaa !740
  store i64 0, ptr %i.j, align 8, !tbaa !741
  store i32 0, ptr %i.k, align 8, !tbaa !742
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br label %ma_dr_flac__seek_to_first_frame.exit

ma_dr_flac__seek_to_first_frame.exit:             ; preds = %.lr.ph67, %bb.e, %.preheader.i.i._crit_edge, %bb.f, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.l, i8 0, i64 168, i1 false)
  br label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread37

bb.h:                                             ; preds = %bb.c, %.preheader.i._crit_edge
  store i32 512, ptr %i.f, align 8, !tbaa !738
  store i32 64, ptr %i.g, align 4, !tbaa !739
  store i64 0, ptr %i.h, align 8, !tbaa !740
  store i64 0, ptr %i.j, align 8, !tbaa !741
  store i32 0, ptr %i.k, align 8, !tbaa !742
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.l, i8 0, i64 160, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.at = load i8, ptr %i.m, align 1, !tbaa !728
  %i.au = tail call fastcc i32 @ma_dr_flac__read_next_flac_frame_header(ptr noundef %i.c, i8 noundef zeroext %i.at, ptr noundef %i.l)
  %.not.i32 = icmp eq i32 %i.au, 0
  br i1 %.not.i32, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = tail call fastcc i32 @ma_dr_flac__decode_flac_frame(ptr noundef nonnull %0)
  switch i32 %i.av, label %.thread [
    i32 0, label %bb.k
    i32 -100, label %bb.i
  ]

.thread:                                          ; preds = %bb.j, %bb.i, %bb.b, %.loopexit
  %.pn.in = sub i64 %.025, %2
  %.pn = lshr i64 %.pn.in, 1
  %.126 = add i64 %.pn, %2                        ; 3 uses
  %i.aw = icmp eq i64 %.126, %.028
  br i1 %i.aw, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread37, label %ma_dr_flac__read_and_decode_next_flac_frame.exit

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ay = load i64, ptr %i.l, align 8, !tbaa !749 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.l, label %ma_dr_flac__get_pcm_frame_range_of_current_flac_frame.exit

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !750
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 54
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !751
  %i.bf = zext i16 %i.be to i64
  %i.bg = mul nuw nsw i64 %i.bf, %i.bc
  br label %ma_dr_flac__get_pcm_frame_range_of_current_flac_frame.exit

ma_dr_flac__get_pcm_frame_range_of_current_flac_frame.exit: ; preds = %bb.k, %bb.l
  %.013.i = phi i64 [ %i.bg, %bb.l ], [ %i.ay, %bb.k ]
  store i64 %.013.i, ptr %i.ax, align 8, !tbaa !164
  store i64 %.028, ptr %4, align 8, !tbaa !164
  br label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread37

ma_dr_flac__read_and_decode_next_flac_frame.exit.thread37: ; preds = %.thread, %ma_dr_flac__seek_to_first_frame.exit, %ma_dr_flac__get_pcm_frame_range_of_current_flac_frame.exit
  %.2 = phi i32 [ 1, %ma_dr_flac__get_pcm_frame_range_of_current_flac_frame.exit ], [ 0, %ma_dr_flac__seek_to_first_frame.exit ], [ 0, %.thread ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ma_dr_mp3_L3_imdct36(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 1, 33) %3) unnamed_addr #48 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 52
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0103 = phi ptr [ %0, %bb.a ], [ %i.hk, %.preheader ] ; 24 uses
  %.096102 = phi ptr [ %1, %bb.a ], [ %i.hl, %.preheader ] ; 5 uses
  %.098101 = phi i32 [ 0, %bb.a ], [ %i.hj, %.preheader ]
  %i.f = load float, ptr %.0103, align 4, !tbaa !349 ; 2 uses
  %i.g = fneg float %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %.0103, i64 68
  %i.i = load float, ptr %i.h, align 4, !tbaa !349 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0103, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !349 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0103, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !349 ; 2 uses
  %i.n = fsub float %i.k, %i.m                    ; 3 uses
  %i.o = fadd float %i.k, %i.m                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0103, i64 16 ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !349 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0103, i64 12
  %i.s = load float, ptr %i.r, align 4, !tbaa !349 ; 2 uses
  %i.t = fsub float %i.q, %i.s                    ; 3 uses
  %i.u = fadd float %i.q, %i.s                    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0103, i64 20
  %i.w = load float, ptr %i.v, align 4, !tbaa !349 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0103, i64 24
  %i.y = load float, ptr %i.x, align 4, !tbaa !349 ; 2 uses
  %i.z = fsub float %i.w, %i.y                    ; 2 uses
  %i.aa = fadd float %i.w, %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %.0103, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %.0103, i64 28
  %i.ad = getelementptr inbounds nuw i8, ptr %.0103, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %.0103, i64 36
  %i.af = getelementptr inbounds nuw i8, ptr %.0103, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %.0103, i64 48
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !349 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0103, i64 44
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !349 ; 2 uses
  %i.ak = fsub float %i.ah, %i.aj
  %i.al = fadd float %i.ah, %i.aj                 ; 2 uses
  %i.am = fneg float %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.0103, i64 52
  %i.ao = getelementptr inbounds nuw i8, ptr %.0103, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %.0103, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %.0103, i64 60
  %i.ar = fsub float %i.al, %i.f                  ; 2 uses
  %i.as = load <2 x float>, ptr %i.ac, align 4, !tbaa !349 ; 3 uses
  %i.at = load float, ptr %i.ab, align 4, !tbaa !349
  %i.au = extractelement <2 x float> %i.as, i64 0
  %i.av = fsub float %i.at, %i.au                 ; 3 uses
  %i.aw = load <2 x float>, ptr %i.aq, align 4, !tbaa !349 ; 3 uses
  %i.ax = load float, ptr %i.ap, align 4, !tbaa !349
  %i.ay = extractelement <2 x float> %i.aw, i64 0
  %i.az = fsub float %i.ax, %i.ay                 ; 3 uses
  %i.ba = shufflevector <2 x float> %i.as, <2 x float> %i.aw, <2 x i32> <i32 1, i32 3>
  %i.bb = shufflevector <2 x float> %i.as, <2 x float> %i.aw, <2 x i32> <i32 0, i32 2>
  %i.bc = fadd <2 x float> %i.ba, %i.bb           ; 3 uses
  %i.bd = fneg <2 x float> %i.bc
  %i.be = insertelement <2 x float> poison, float %i.u, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fsub <2 x float> %i.bd, %i.bf
  %i.bh = fmul <2 x float> %i.bg, <float f0x3F708FB2, float f0x3F441B7D> ; 2 uses
  %i.bi = extractelement <2 x float> %i.bc, i64 0 ; 2 uses
  %i.bj = extractelement <2 x float> %i.bc, i64 1 ; 2 uses
  %i.bk = fsub float %i.bj, %i.bi
  %i.bl = fmul float %i.bk, f0x3E31D0D4           ; 2 uses
  %i.bm = fsub float %i.u, %i.bj
  %i.bn = fsub float %i.bm, %i.bi                 ; 2 uses
  %i.bo = fneg float %i.bn
  %i.bp = fadd float %i.ar, %i.bn
  %i.bq = insertelement <4 x float> poison, float %i.bp, i64 0
  %i.br = extractelement <2 x float> %i.bh, i64 1 ; 2 uses
  %i.bs = extractelement <2 x float> %i.bh, i64 0 ; 2 uses
  %i.bt = fmul float %i.aa, f0x3F5DB3D7           ; 3 uses
  %4 = load <2 x float>, ptr %i.ae, align 4, !tbaa !349 ; 3 uses
  %5 = load float, ptr %i.af, align 4, !tbaa !349
  %6 = extractelement <2 x float> %4, i64 0
  %7 = fsub float %6, %5                          ; 3 uses
  %8 = load <2 x float>, ptr %i.an, align 4, !tbaa !349 ; 3 uses
  %9 = load float, ptr %i.ao, align 4, !tbaa !349
  %10 = extractelement <2 x float> %8, i64 0
  %11 = fsub float %10, %9                        ; 3 uses
  %12 = shufflevector <2 x float> %4, <2 x float> %8, <2 x i32> <i32 0, i32 2>
  %13 = shufflevector <2 x float> %4, <2 x float> %8, <2 x i32> <i32 1, i32 3>
  %14 = fadd <2 x float> %12, %13                 ; 3 uses
  %15 = extractelement <2 x float> %14, i64 0     ; 2 uses
  %16 = extractelement <2 x float> %14, i64 1     ; 2 uses
  %i.bu = fsub float %15, %16
  %i.bv = fmul float %i.bu, f0x3EAF1D44           ; 2 uses
  %17 = insertelement <2 x float> poison, float %i.o, i64 0
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer
  %19 = fadd <2 x float> %18, %14
  %20 = fmul <2 x float> %19, <float f0x3F7C1C5C, float f0x3F248DBB> ; 2 uses
  %i.bw = fsub float %i.o, %15
  %i.bx = fsub float %i.bw, %16
  %i.by = fmul float %i.bx, f0x3F5DB3D7           ; 2 uses
  %21 = extractelement <2 x float> %20, i64 0     ; 2 uses
  %i.bz = fsub float %21, %i.bt
  %22 = extractelement <2 x float> %20, i64 1     ; 2 uses
  %i.ca = fsub float %i.bz, %22                   ; 2 uses
  %i.cb = fsub float %i.bv, %i.bt
  %i.cc = fsub float %i.cb, %21                   ; 2 uses
  %i.cd = fadd float %i.bt, %i.bv
  %i.ce = fsub float %i.cd, %22                   ; 2 uses
  %i.cf = fsub float %i.i, %i.z                   ; 2 uses
  %i.cg = fadd float %11, %7
  %i.ch = fmul float %i.cg, f0x3F708FB2           ; 2 uses
  %i.ci = fadd float %11, %i.n
  %i.cj = fmul float %i.ci, f0x3F441B7D           ; 2 uses
  %i.ck = fsub float %7, %i.n
  %i.cl = fmul float %i.ck, f0x3E31D0D4           ; 2 uses
  %i.cm = fsub float %i.n, %11
  %i.cn = fadd float %7, %i.cm                    ; 2 uses
  %i.co = fneg float %i.cn
  %i.cp = insertelement <4 x float> poison, float %i.am, i64 0
  %i.cq = insertelement <4 x float> %i.cp, float %i.bo, i64 1
  %i.cr = insertelement <4 x float> %i.cq, float %i.z, i64 2
  %i.cs = insertelement <4 x float> %i.cr, float %i.co, i64 3
  %i.ct = insertelement <4 x float> poison, float %i.g, i64 0
  %i.cu = insertelement <4 x float> %i.ct, float %i.ar, i64 1
  %i.cv = insertelement <4 x float> %i.cu, float %i.i, i64 2
  %i.cw = insertelement <4 x float> %i.cv, float %i.cf, i64 3
  %i.cx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cs, <4 x float> splat (float 5.000000e-01), <4 x float> %i.cw) ; 4 uses
  %i.cy = extractelement <4 x float> %i.cx, i64 0 ; 3 uses
  %i.cz = fsub float %i.cy, %i.br
  %i.da = fadd float %i.bl, %i.cz                 ; 2 uses
  %i.db = fsub float %i.cy, %i.bs
  %i.dc = fadd float %i.db, %i.br                 ; 2 uses
  %i.dd = fadd float %i.cy, %i.bs
  %i.de = fsub float %i.dd, %i.bl                 ; 2 uses
  %i.df = fsub float %i.de, %i.cc
  %i.dg = insertelement <4 x float> poison, float %i.df, i64 0
  %i.dh = extractelement <4 x float> %i.cx, i64 1 ; 2 uses
  %i.di = fadd float %i.dh, %i.by
  %i.dj = insertelement <4 x float> %i.dg, float %i.di, i64 1
  %i.dk = fsub float %i.dc, %i.ce
  %i.dl = insertelement <4 x float> %i.dj, float %i.dk, i64 2
  %i.dm = fadd float %i.da, %i.ca
  %.sroa.0139.12.vec.insert = insertelement <4 x float> %i.dl, float %i.dm, i64 3 ; 2 uses
  %i.dn = fsub float %i.da, %i.ca
  %i.do = insertelement <4 x float> %i.bq, float %i.dn, i64 1
  %i.dp = fadd float %i.dc, %i.ce
  %i.dq = insertelement <4 x float> %i.do, float %i.dp, i64 2
  %i.dr = fsub float %i.dh, %i.by
  %.sroa.14.28.vec.insert = insertelement <4 x float> %i.dq, float %i.dr, i64 3 ; 2 uses
  %i.ds = fadd float %i.de, %i.cc                 ; 2 uses
  %i.dt = fadd float %i.cf, %i.cn
  %i.du = insertelement <4 x float> poison, float %i.dt, i64 0
  %i.dv = extractelement <4 x float> %i.cx, i64 2 ; 3 uses
  %i.dw = fsub float %i.dv, %i.cj
  %i.dx = fadd float %i.cl, %i.dw                 ; 2 uses
  %i.dy = fsub float %i.dv, %i.ch
  %i.dz = fadd float %i.dy, %i.cj                 ; 2 uses
  %i.ea = fadd float %i.dv, %i.ch
  %i.eb = fsub float %i.ea, %i.cl                 ; 2 uses
  %i.ec = fmul float %i.ak, f0x3F5DB3D7           ; 3 uses
  %i.ed = fadd float %i.az, %i.av
  %i.ee = fmul float %i.ed, f0x3F7C1C5C           ; 2 uses
  %i.ef = fsub float %i.av, %i.t
  %i.eg = fmul float %i.ef, f0x3EAF1D44           ; 2 uses
  %i.eh = fadd float %i.az, %i.t
  %i.ei = fmul float %i.eh, f0x3F248DBB           ; 2 uses
  %i.ej = fsub float %i.az, %i.av
  %i.ek = fsub float %i.ej, %i.t
  %i.el = fmul float %i.ek, f0x3F5DB3D7           ; 2 uses
  %i.em = fsub float %i.ee, %i.ec
  %i.en = fsub float %i.em, %i.ei                 ; 2 uses
  %i.eo = fsub float %i.eg, %i.ec
  %i.ep = fsub float %i.eo, %i.ee                 ; 2 uses
  %i.eq = fadd float %i.ec, %i.eg
  %i.er = fsub float %i.eq, %i.ei                 ; 2 uses
  %i.es = fsub float %i.eb, %i.ep
  %i.et = insertelement <4 x float> poison, float %i.es, i64 0
  %i.eu = extractelement <4 x float> %i.cx, i64 3 ; 2 uses
  %i.ev = fadd float %i.eu, %i.el
  %i.ew = fsub float %i.dz, %i.er
  %i.ex = fadd float %i.dx, %i.en
  %i.ey = fsub float %i.dx, %i.en
  %i.ez = fadd float %i.dz, %i.er
  %i.fa = fsub float %i.eu, %i.el
  %i.fb = fadd float %i.eb, %i.ep                 ; 2 uses
  %i.fc = fneg float %i.ev
  %i.fd = insertelement <4 x float> %i.et, float %i.fc, i64 1
  %i.fe = insertelement <4 x float> %i.fd, float %i.ew, i64 2
  %i.ff = fneg float %i.ex
  %.sroa.0.12.vec.insert119 = insertelement <4 x float> %i.fe, float %i.ff, i64 3 ; 2 uses
  %i.fg = fneg float %i.ey
  %i.fh = insertelement <4 x float> %i.du, float %i.fg, i64 1
  %i.fi = insertelement <4 x float> %i.fh, float %i.ez, i64 2
  %i.fj = fneg float %i.fa
  %.sroa.17.28.vec.insert138 = insertelement <4 x float> %i.fi, float %i.fj, i64 3 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.0103, i64 56
  %i.fl = load <4 x float>, ptr %.096102, align 1, !tbaa !119 ; 2 uses
  %i.fm = load <4 x float>, ptr %2, align 1, !tbaa !119 ; 2 uses
  %i.fn = load <4 x float>, ptr %i.a, align 1, !tbaa !119 ; 2 uses
  %i.fo = fmul <4 x float> %.sroa.0139.12.vec.insert, <float f0x3F2CF37B, float f0x3F1BD7CA, float f0x3F098C78, float f0x3EEC6A50>
  %i.fp = fmul <4 x float> %.sroa.0.12.vec.insert119, <float f0x3F3CBE35, float f0x3F4B1934, float f0x3F57E881, float f0x3F631324>
  %i.fq = fadd <4 x float> %i.fp, %i.fo           ; 2 uses
  %i.fr = fmul <4 x float> %.sroa.0139.12.vec.insert, <float f0x3F3CBE35, float f0x3F4B1934, float f0x3F57E881, float f0x3F631324>
  %i.fs = fmul <4 x float> %.sroa.0.12.vec.insert119, <float f0x3F2CF37B, float f0x3F1BD7CA, float f0x3F098C78, float f0x3EEC6A50>
  %i.ft = fsub <4 x float> %i.fr, %i.fs
  store <4 x float> %i.ft, ptr %.096102, align 1, !tbaa !119
  %i.fu = fmul <4 x float> %i.fl, %i.fm
  %i.fv = fmul <4 x float> %i.fq, %i.fn
  %i.fw = fsub <4 x float> %i.fu, %i.fv
  store <4 x float> %i.fw, ptr %.0103, align 4, !tbaa !119
  %i.fx = fmul <4 x float> %i.fl, %i.fn
  %i.fy = fmul <4 x float> %i.fm, %i.fq
  %i.fz = fadd <4 x float> %i.fx, %i.fy
  %i.ga = shufflevector <4 x float> %i.fz, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.ga, ptr %i.fk, align 4, !tbaa !119
  %i.gb = getelementptr inbounds nuw i8, ptr %.096102, i64 16 ; 2 uses
  %i.gc = load <4 x float>, ptr %i.gb, align 1, !tbaa !119 ; 2 uses
  %i.gd = load <4 x float>, ptr %i.d, align 1, !tbaa !119 ; 2 uses
  %i.ge = load <4 x float>, ptr %i.e, align 1, !tbaa !119 ; 2 uses
  %i.gf = fmul <4 x float> %.sroa.14.28.vec.insert, <float f0x3EC3EF15, float f0x3E99F61C, float f0x3E5DA258, float f0x3E05A8A8>
  %i.gg = fmul <4 x float> %.sroa.17.28.vec.insert138, <float f0x3F6C835E, float f0x3F7426CB, float 9.762960e-01, float f0x3F7DCF55>
  %i.gh = fadd <4 x float> %i.gg, %i.gf           ; 2 uses
  %i.gi = fmul <4 x float> %.sroa.14.28.vec.insert, <float f0x3F6C835E, float f0x3F7426CB, float 9.762960e-01, float f0x3F7DCF55>
  %i.gj = fmul <4 x float> %.sroa.17.28.vec.insert138, <float f0x3EC3EF15, float f0x3E99F61C, float f0x3E5DA258, float f0x3E05A8A8>
  %i.gk = fsub <4 x float> %i.gi, %i.gj
  store <4 x float> %i.gk, ptr %i.gb, align 1, !tbaa !119
  %i.gl = fmul <4 x float> %i.gc, %i.gd
  %i.gm = fmul <4 x float> %i.gh, %i.ge
  %i.gn = fsub <4 x float> %i.gl, %i.gm
  store <4 x float> %i.gn, ptr %i.p, align 4, !tbaa !119
  %i.go = fmul <4 x float> %i.gc, %i.ge
  %i.gp = fmul <4 x float> %i.gd, %i.gh
  %i.gq = fadd <4 x float> %i.go, %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %.0103, i64 40
  %i.gs = shufflevector <4 x float> %i.gq, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.gs, ptr %i.gr, align 4, !tbaa !119
  %i.gt = getelementptr inbounds nuw i8, ptr %.096102, i64 32 ; 2 uses
  %i.gu = fmul float %i.fb, f0x3F7FC1A0
  %i.gv = tail call float @llvm.fmuladd.f32(float %i.ds, float f0x3D32AA3C, float %i.gu) ; 2 uses
  %i.gw = fmul float %i.fb, f0xBD32AA3C
  %i.gx = tail call float @llvm.fmuladd.f32(float %i.ds, float f0x3F7FC1A0, float %i.gw)
  %i.gy = getelementptr inbounds nuw i8, ptr %.0103, i64 36
  %i.gz = load float, ptr %i.gt, align 4, !tbaa !349 ; 2 uses
  store float %i.gx, ptr %i.gt, align 4, !tbaa !349
  %i.ha = load float, ptr %i.b, align 4, !tbaa !349
  %i.hb = load float, ptr %i.c, align 4, !tbaa !349
  %i.hc = fneg float %i.hb
  %i.hd = fmul float %i.gv, %i.hc
  %i.he = tail call float @llvm.fmuladd.f32(float %i.gz, float %i.ha, float %i.hd)
  store float %i.he, ptr %i.ad, align 4, !tbaa !349
  %i.hf = load float, ptr %i.c, align 4, !tbaa !349
  %i.hg = load float, ptr %i.b, align 4, !tbaa !349
  %i.hh = fmul float %i.gv, %i.hg
  %i.hi = tail call float @llvm.fmuladd.f32(float %i.gz, float %i.hf, float %i.hh)
  store float %i.hi, ptr %i.gy, align 4, !tbaa !349
  %i.hj = add nuw nsw i32 %.098101, 1             ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.0103, i64 72
  %i.hl = getelementptr inbounds nuw i8, ptr %.096102, i64 36
  %exitcond.not = icmp eq i32 %i.hj, %3
  br i1 %exitcond.not, label %bb.b, label %.preheader, !llvm.loop !3279

bb.b:                                             ; preds = %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ma_dr_mp3d_synth_pair(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 2)) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3584
  %i.b = load float, ptr %i.a, align 4, !tbaa !349
  %i.c = load float, ptr %2, align 4, !tbaa !349
  %i.d = fsub float %i.b, %i.c
  %i.e = fmul float %i.d, 2.900000e+01
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.g = load float, ptr %i.f, align 4, !tbaa !349
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 3328
  %i.i = load float, ptr %i.h, align 4, !tbaa !349
  %i.j = fadd float %i.g, %i.i
  %i.k = tail call float @llvm.fmuladd.f32(float %i.j, float 2.130000e+02, float %i.e)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 3072
  %i.m = load float, ptr %i.l, align 4, !tbaa !349
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.o = load float, ptr %i.n, align 4, !tbaa !349
  %i.p = fsub float %i.m, %i.o
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float 4.590000e+02, float %i.k)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 768
  %i.s = load float, ptr %i.r, align 4, !tbaa !349
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 2816
  %i.u = load float, ptr %i.t, align 4, !tbaa !349
  %i.v = fadd float %i.s, %i.u
  %i.w = tail call float @llvm.fmuladd.f32(float %i.v, float 2.037000e+03, float %i.q)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 2560
  %i.y = load float, ptr %i.x, align 4, !tbaa !349
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.aa = load float, ptr %i.z, align 4, !tbaa !349
  %i.ab = fsub float %i.y, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float 5.153000e+03, float %i.w)
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 1280
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !349
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 2304
  %i.ag = load float, ptr %i.af, align 4, !tbaa !349
  %i.ah = fadd float %i.ae, %i.ag
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float 6.574000e+03, float %i.ac)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 2048
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !349
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 1536
  %i.am = load float, ptr %i.al, align 4, !tbaa !349
  %i.an = fsub float %i.ak, %i.am
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float 3.748900e+04, float %i.ai)
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 1792
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !349
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float 7.503800e+04, float %i.ao) ; 3 uses
  %i.as = fcmp ult float %i.ar, 3.276650e+04
  br i1 %i.as, label %bb.b, label %ma_dr_mp3d_scale_pcm.exit

bb.b:                                             ; preds = %bb.a
  %i.at = fcmp ugt float %i.ar, -3.276750e+04
end_hunk_0
