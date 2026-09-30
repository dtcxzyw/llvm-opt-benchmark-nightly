Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 277
begin_hunk_0_@ma_dr_flac__seek_to_approximate_flac_frame_to_byte:bb.a
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
  %.0103 = phi ptr [ %0, %bb.a ], [ %i.gv, %.preheader ] ; 24 uses
  %.096102 = phi ptr [ %1, %bb.a ], [ %i.gw, %.preheader ] ; 5 uses
  %.098101 = phi i32 [ 0, %bb.a ], [ %i.gu, %.preheader ]
  %i.f = load float, ptr %.0103, align 4, !tbaa !349 ; 2 uses
  %i.g = fneg float %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %.0103, i64 68
  %i.i = load float, ptr %i.h, align 4, !tbaa !349 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0103, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !349 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0103, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !349 ; 2 uses
  %i.n = fsub float %i.k, %i.m                    ; 3 uses
  %i.o = fadd float %i.k, %i.m                    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0103, i64 16 ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !349 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0103, i64 12
  %i.s = load float, ptr %i.r, align 4, !tbaa !349 ; 2 uses
  %i.t = fsub float %i.q, %i.s                    ; 3 uses
  %i.u = fadd float %i.q, %i.s                    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0103, i64 20
  %i.w = load float, ptr %i.v, align 4, !tbaa !349 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0103, i64 24
  %i.y = load float, ptr %i.x, align 4, !tbaa !349 ; 2 uses
  %i.z = fsub float %i.w, %i.y                    ; 2 uses
  %i.aa = fadd float %i.w, %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %.0103, i64 32
  %4 = load float, ptr %i.ab, align 4, !tbaa !349 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0103, i64 28
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !349 ; 2 uses
  %5 = fsub float %4, %i.ad                       ; 3 uses
  %6 = fadd float %4, %i.ad                       ; 3 uses
  %7 = fneg float %6
  %8 = getelementptr inbounds nuw i8, ptr %.0103, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %.0103, i64 36
  %i.af = load float, ptr %i.ae, align 4, !tbaa !349 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0103, i64 40
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !349 ; 2 uses
  %i.ai = fsub float %i.af, %i.ah                 ; 3 uses
  %i.aj = fadd float %i.af, %i.ah                 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0103, i64 48
  %i.al = load float, ptr %i.ak, align 4, !tbaa !349 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0103, i64 44
  %i.an = load float, ptr %i.am, align 4, !tbaa !349 ; 2 uses
  %i.ao = fsub float %i.al, %i.an
  %i.ap = fadd float %i.al, %i.an                 ; 2 uses
  %9 = fneg float %i.ap
  %i.aq = getelementptr inbounds nuw i8, ptr %.0103, i64 52
  %10 = load float, ptr %i.aq, align 4, !tbaa !349 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %.0103, i64 56
  %i.ar = load float, ptr %11, align 4, !tbaa !349 ; 2 uses
  %i.as = fsub float %10, %i.ar                   ; 3 uses
  %12 = fadd float %10, %i.ar                     ; 3 uses
  %13 = getelementptr inbounds nuw i8, ptr %.0103, i64 64
  %14 = load float, ptr %13, align 4, !tbaa !349  ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %.0103, i64 60
  %16 = load float, ptr %15, align 4, !tbaa !349  ; 2 uses
  %17 = fsub float %14, %16                       ; 3 uses
  %18 = fadd float %14, %16                       ; 3 uses
  %19 = fneg float %18
  %20 = fsub float %i.ap, %i.f                    ; 2 uses
  %21 = fsub float %7, %i.u
  %22 = fmul float %21, f0x3F708FB2               ; 2 uses
  %23 = fsub float %19, %i.u
  %24 = fmul float %23, f0x3F441B7D               ; 2 uses
  %i.at = fsub float %18, %6
  %i.au = fmul float %i.at, f0x3E31D0D4           ; 2 uses
  %i.av = fsub float %i.u, %18
  %i.aw = fsub float %i.av, %6                    ; 2 uses
  %i.ax = fneg float %i.aw
  %i.ay = fadd float %20, %i.aw
  %i.az = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.ba = fmul float %i.aa, f0x3F5DB3D7           ; 3 uses
  %i.bb = fadd float %i.o, %i.aj
  %i.bc = fmul float %i.bb, f0x3F7C1C5C           ; 2 uses
  %i.bd = fsub float %i.aj, %12
  %i.be = fmul float %i.bd, f0x3EAF1D44           ; 2 uses
  %i.bf = fadd float %i.o, %12
  %i.bg = fmul float %i.bf, f0x3F248DBB           ; 2 uses
  %i.bh = fsub float %i.o, %i.aj
  %i.bi = fsub float %i.bh, %12
  %i.bj = fmul float %i.bi, f0x3F5DB3D7           ; 2 uses
  %i.bk = fsub float %i.bc, %i.ba
  %i.bl = fsub float %i.bk, %i.bg                 ; 2 uses
  %i.bm = fsub float %i.be, %i.ba
  %i.bn = fsub float %i.bm, %i.bc                 ; 2 uses
  %i.bo = fadd float %i.ba, %i.be
  %i.bp = fsub float %i.bo, %i.bg                 ; 2 uses
  %i.bq = fsub float %i.i, %i.z                   ; 2 uses
  %i.br = fadd float %i.as, %i.ai
  %i.bs = fmul float %i.br, f0x3F708FB2           ; 2 uses
  %i.bt = fadd float %i.as, %i.n
  %i.bu = fmul float %i.bt, f0x3F441B7D           ; 2 uses
  %i.bv = fsub float %i.ai, %i.n
  %i.bw = fmul float %i.bv, f0x3E31D0D4           ; 2 uses
  %i.bx = fsub float %i.n, %i.as
  %i.by = fadd float %i.ai, %i.bx                 ; 2 uses
  %i.bz = fneg float %i.by
  %i.ca = insertelement <4 x float> poison, float %9, i64 0
  %i.cb = insertelement <4 x float> %i.ca, float %i.ax, i64 1
  %i.cc = insertelement <4 x float> %i.cb, float %i.z, i64 2
  %i.cd = insertelement <4 x float> %i.cc, float %i.bz, i64 3
  %i.ce = insertelement <4 x float> poison, float %i.g, i64 0
  %i.cf = insertelement <4 x float> %i.ce, float %20, i64 1
  %i.cg = insertelement <4 x float> %i.cf, float %i.i, i64 2
  %i.ch = insertelement <4 x float> %i.cg, float %i.bq, i64 3
  %i.ci = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cd, <4 x float> splat (float 5.000000e-01), <4 x float> %i.ch) ; 4 uses
  %i.cj = extractelement <4 x float> %i.ci, i64 0 ; 3 uses
  %i.ck = fsub float %i.cj, %24
  %i.cl = fadd float %i.au, %i.ck                 ; 2 uses
  %i.cm = fsub float %i.cj, %22
  %i.cn = fadd float %i.cm, %24                   ; 2 uses
  %i.co = fadd float %i.cj, %22
  %i.cp = fsub float %i.co, %i.au                 ; 2 uses
  %i.cq = fsub float %i.cp, %i.bn
  %i.cr = insertelement <4 x float> poison, float %i.cq, i64 0
  %i.cs = extractelement <4 x float> %i.ci, i64 1 ; 2 uses
  %i.ct = fadd float %i.cs, %i.bj
  %i.cu = insertelement <4 x float> %i.cr, float %i.ct, i64 1
  %i.cv = fsub float %i.cn, %i.bp
  %i.cw = insertelement <4 x float> %i.cu, float %i.cv, i64 2
  %i.cx = fadd float %i.cl, %i.bl
  %.sroa.0139.12.vec.insert = insertelement <4 x float> %i.cw, float %i.cx, i64 3 ; 2 uses
  %i.cy = fsub float %i.cl, %i.bl
  %i.cz = insertelement <4 x float> %i.az, float %i.cy, i64 1
  %i.da = fadd float %i.cn, %i.bp
  %i.db = insertelement <4 x float> %i.cz, float %i.da, i64 2
  %i.dc = fsub float %i.cs, %i.bj
  %.sroa.14.28.vec.insert = insertelement <4 x float> %i.db, float %i.dc, i64 3 ; 2 uses
  %i.dd = fadd float %i.cp, %i.bn                 ; 2 uses
  %i.de = fadd float %i.bq, %i.by
  %i.df = insertelement <4 x float> poison, float %i.de, i64 0
  %i.dg = extractelement <4 x float> %i.ci, i64 2 ; 3 uses
  %i.dh = fsub float %i.dg, %i.bu
  %i.di = fadd float %i.bw, %i.dh                 ; 2 uses
  %i.dj = fsub float %i.dg, %i.bs
  %i.dk = fadd float %i.dj, %i.bu                 ; 2 uses
  %i.dl = fadd float %i.dg, %i.bs
  %i.dm = fsub float %i.dl, %i.bw                 ; 2 uses
  %i.dn = fmul float %i.ao, f0x3F5DB3D7           ; 3 uses
  %i.do = fadd float %17, %5
  %i.dp = fmul float %i.do, f0x3F7C1C5C           ; 2 uses
  %i.dq = fsub float %5, %i.t
  %i.dr = fmul float %i.dq, f0x3EAF1D44           ; 2 uses
  %i.ds = fadd float %17, %i.t
  %i.dt = fmul float %i.ds, f0x3F248DBB           ; 2 uses
  %i.du = fsub float %17, %5
  %i.dv = fsub float %i.du, %i.t
  %i.dw = fmul float %i.dv, f0x3F5DB3D7           ; 2 uses
  %i.dx = fsub float %i.dp, %i.dn
  %i.dy = fsub float %i.dx, %i.dt                 ; 2 uses
  %i.dz = fsub float %i.dr, %i.dn
  %i.ea = fsub float %i.dz, %i.dp                 ; 2 uses
  %i.eb = fadd float %i.dn, %i.dr
  %i.ec = fsub float %i.eb, %i.dt                 ; 2 uses
  %i.ed = fsub float %i.dm, %i.ea
  %i.ee = insertelement <4 x float> poison, float %i.ed, i64 0
  %i.ef = extractelement <4 x float> %i.ci, i64 3 ; 2 uses
  %i.eg = fadd float %i.ef, %i.dw
  %i.eh = fsub float %i.dk, %i.ec
  %i.ei = fadd float %i.di, %i.dy
  %i.ej = fsub float %i.di, %i.dy
  %i.ek = fadd float %i.dk, %i.ec
  %i.el = fsub float %i.ef, %i.dw
  %i.em = fadd float %i.dm, %i.ea                 ; 2 uses
  %i.en = fneg float %i.eg
  %i.eo = insertelement <4 x float> %i.ee, float %i.en, i64 1
  %i.ep = insertelement <4 x float> %i.eo, float %i.eh, i64 2
  %i.eq = fneg float %i.ei
  %.sroa.0.12.vec.insert119 = insertelement <4 x float> %i.ep, float %i.eq, i64 3 ; 2 uses
  %i.er = fneg float %i.ej
  %i.es = insertelement <4 x float> %i.df, float %i.er, i64 1
  %i.et = insertelement <4 x float> %i.es, float %i.ek, i64 2
  %i.eu = fneg float %i.el
  %.sroa.17.28.vec.insert138 = insertelement <4 x float> %i.et, float %i.eu, i64 3 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.0103, i64 56
  %i.ew = load <4 x float>, ptr %.096102, align 1, !tbaa !119 ; 2 uses
  %i.ex = load <4 x float>, ptr %2, align 1, !tbaa !119 ; 2 uses
  %i.ey = load <4 x float>, ptr %i.a, align 1, !tbaa !119 ; 2 uses
  %i.ez = fmul <4 x float> %.sroa.0139.12.vec.insert, <float f0x3F2CF37B, float f0x3F1BD7CA, float f0x3F098C78, float f0x3EEC6A50>
  %i.fa = fmul <4 x float> %.sroa.0.12.vec.insert119, <float f0x3F3CBE35, float f0x3F4B1934, float f0x3F57E881, float f0x3F631324>
  %i.fb = fadd <4 x float> %i.fa, %i.ez           ; 2 uses
  %i.fc = fmul <4 x float> %.sroa.0139.12.vec.insert, <float f0x3F3CBE35, float f0x3F4B1934, float f0x3F57E881, float f0x3F631324>
  %i.fd = fmul <4 x float> %.sroa.0.12.vec.insert119, <float f0x3F2CF37B, float f0x3F1BD7CA, float f0x3F098C78, float f0x3EEC6A50>
  %i.fe = fsub <4 x float> %i.fc, %i.fd
  store <4 x float> %i.fe, ptr %.096102, align 1, !tbaa !119
  %i.ff = fmul <4 x float> %i.ew, %i.ex
  %i.fg = fmul <4 x float> %i.fb, %i.ey
  %i.fh = fsub <4 x float> %i.ff, %i.fg
  store <4 x float> %i.fh, ptr %.0103, align 4, !tbaa !119
  %i.fi = fmul <4 x float> %i.ew, %i.ey
  %i.fj = fmul <4 x float> %i.ex, %i.fb
  %i.fk = fadd <4 x float> %i.fi, %i.fj
  %i.fl = shufflevector <4 x float> %i.fk, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.fl, ptr %i.ev, align 4, !tbaa !119
  %i.fm = getelementptr inbounds nuw i8, ptr %.096102, i64 16 ; 2 uses
  %i.fn = load <4 x float>, ptr %i.fm, align 1, !tbaa !119 ; 2 uses
  %i.fo = load <4 x float>, ptr %i.d, align 1, !tbaa !119 ; 2 uses
  %i.fp = load <4 x float>, ptr %i.e, align 1, !tbaa !119 ; 2 uses
  %i.fq = fmul <4 x float> %.sroa.14.28.vec.insert, <float f0x3EC3EF15, float f0x3E99F61C, float f0x3E5DA258, float f0x3E05A8A8>
  %i.fr = fmul <4 x float> %.sroa.17.28.vec.insert138, <float f0x3F6C835E, float f0x3F7426CB, float 9.762960e-01, float f0x3F7DCF55>
  %i.fs = fadd <4 x float> %i.fr, %i.fq           ; 2 uses
  %i.ft = fmul <4 x float> %.sroa.14.28.vec.insert, <float f0x3F6C835E, float f0x3F7426CB, float 9.762960e-01, float f0x3F7DCF55>
  %i.fu = fmul <4 x float> %.sroa.17.28.vec.insert138, <float f0x3EC3EF15, float f0x3E99F61C, float f0x3E5DA258, float f0x3E05A8A8>
  %i.fv = fsub <4 x float> %i.ft, %i.fu
  store <4 x float> %i.fv, ptr %i.fm, align 1, !tbaa !119
  %i.fw = fmul <4 x float> %i.fn, %i.fo
  %i.fx = fmul <4 x float> %i.fs, %i.fp
  %i.fy = fsub <4 x float> %i.fw, %i.fx
  store <4 x float> %i.fy, ptr %i.p, align 4, !tbaa !119
  %i.fz = fmul <4 x float> %i.fn, %i.fp
  %i.ga = fmul <4 x float> %i.fo, %i.fs
  %i.gb = fadd <4 x float> %i.fz, %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %.0103, i64 40
  %i.gd = shufflevector <4 x float> %i.gb, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.gd, ptr %i.gc, align 4, !tbaa !119
  %i.ge = getelementptr inbounds nuw i8, ptr %.096102, i64 32 ; 2 uses
  %i.gf = fmul float %i.em, f0x3F7FC1A0
  %i.gg = tail call float @llvm.fmuladd.f32(float %i.dd, float f0x3D32AA3C, float %i.gf) ; 2 uses
  %i.gh = fmul float %i.em, f0xBD32AA3C
  %i.gi = tail call float @llvm.fmuladd.f32(float %i.dd, float f0x3F7FC1A0, float %i.gh)
  %i.gj = getelementptr inbounds nuw i8, ptr %.0103, i64 36
  %i.gk = load float, ptr %i.ge, align 4, !tbaa !349 ; 2 uses
  store float %i.gi, ptr %i.ge, align 4, !tbaa !349
  %i.gl = load float, ptr %i.b, align 4, !tbaa !349
  %i.gm = load float, ptr %i.c, align 4, !tbaa !349
  %i.gn = fneg float %i.gm
  %i.go = fmul float %i.gg, %i.gn
  %i.gp = tail call float @llvm.fmuladd.f32(float %i.gk, float %i.gl, float %i.go)
  store float %i.gp, ptr %8, align 4, !tbaa !349
  %i.gq = load float, ptr %i.c, align 4, !tbaa !349
  %i.gr = load float, ptr %i.b, align 4, !tbaa !349
  %i.gs = fmul float %i.gg, %i.gr
  %i.gt = tail call float @llvm.fmuladd.f32(float %i.gk, float %i.gq, float %i.gs)
  store float %i.gt, ptr %i.gj, align 4, !tbaa !349
  %i.gu = add nuw nsw i32 %.098101, 1             ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.0103, i64 72
  %i.gw = getelementptr inbounds nuw i8, ptr %.096102, i64 36
  %exitcond.not = icmp eq i32 %i.gu, %3
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
  br i1 %i.at, label %bb.c, label %ma_dr_mp3d_scale_pcm.exit

bb.c:                                             ; preds = %bb.b
  %i.au = fadd float %i.ar, 5.000000e-01
  %i.av = fptosi float %i.au to i16               ; 2 uses
  %.lobit.neg.i = ashr i16 %i.av, 15
  %i.aw = add i16 %.lobit.neg.i, %i.av
  br label %ma_dr_mp3d_scale_pcm.exit

ma_dr_mp3d_scale_pcm.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i16 [ %i.aw, %bb.c ], [ 32767, %bb.a ], [ -32768, %bb.b ]
  store i16 %.0.i, ptr %0, align 2, !tbaa !122
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 3592
  %i.az = load float, ptr %i.ay, align 4, !tbaa !349
  %i.ba = fmul float %i.az, 1.040000e+02
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 3080
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !349
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bc, float 1.567000e+03, float %i.ba)
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 2568
  %i.bf = load float, ptr %i.be, align 4, !tbaa !349
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float 9.727000e+03, float %i.bd)
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 2056
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !349
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float 6.401900e+04, float %i.bg)
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 1544
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !349
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bl, float -9.975000e+03, float %i.bj)
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 1032
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !349
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bo, float -4.500000e+01, float %i.bm)
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 520
  %i.br = load float, ptr %i.bq, align 4, !tbaa !349
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.br, float 1.460000e+02, float %i.bp)
  %i.bt = load float, ptr %i.ax, align 4, !tbaa !349
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bt, float -5.000000e+00, float %i.bs) ; 3 uses
  %i.bv = fcmp ult float %i.bu, 3.276650e+04
  br i1 %i.bv, label %bb.d, label %ma_dr_mp3d_scale_pcm.exit44

bb.d:                                             ; preds = %ma_dr_mp3d_scale_pcm.exit
  %i.bw = fcmp ugt float %i.bu, -3.276750e+04
  br i1 %i.bw, label %bb.e, label %ma_dr_mp3d_scale_pcm.exit44

bb.e:                                             ; preds = %bb.d
  %i.bx = fadd float %i.bu, 5.000000e-01
  %i.by = fptosi float %i.bx to i16               ; 2 uses
  %.lobit.neg.i43 = ashr i16 %i.by, 15
  %i.bz = add i16 %.lobit.neg.i43, %i.by
  br label %ma_dr_mp3d_scale_pcm.exit44

ma_dr_mp3d_scale_pcm.exit44:                      ; preds = %ma_dr_mp3d_scale_pcm.exit, %bb.d, %bb.e
  %.0.i42 = phi i16 [ %i.bz, %bb.e ], [ 32767, %ma_dr_mp3d_scale_pcm.exit ], [ -32768, %bb.d ]
  %i.ca = shl nsw i32 %1, 4
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [2 x i8], ptr %0, i64 %i.cb
  store i16 %.0.i42, ptr %i.cc, align 2, !tbaa !122
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #57

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float>) #57

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #57

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #57

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define internal noalias noundef ptr @ma_dr_mp3__realloc_default(ptr noundef captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2) #42 {
bb.a:
  %i.a = tail call ptr @realloc(ptr noundef %0, i64 noundef %1) #69
  ret ptr %i.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #63

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #33

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #64

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #63

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr captures(none)) local_unnamed_addr #65

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #63

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_0
