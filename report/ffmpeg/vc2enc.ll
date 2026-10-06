Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vc2enc?download=true
inline.NumInlined: 67
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@vc2_encode_init:bb.a
  %i.dt = mul i32 %i.dq, %i.df
  %i.du = add i32 %i.dt, %i.ds
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.dv
  store ptr %i.dw, ptr %i.dl, align 8, !tbaa !61
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %exitcond226.not = icmp eq i64 %indvars.iv.next224, 4
  br i1 %exitcond226.not, label %.loopexit, label %bb.ag, !llvm.loop !95

._crit_edge:                                      ; preds = %.loopexit, %bb.ae
  %i.dx = getelementptr inbounds nuw [112 x i8], ptr %i.b, i64 %indvars.iv230
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 1640
  %i.dz = load i32, ptr %i.ct, align 4, !tbaa !54
  %i.ea = load i32, ptr %i.an, align 8, !tbaa !107
  %i.eb = load i32, ptr %i.aq, align 4, !tbaa !108
  %i.ec = tail call i32 @ff_vc2enc_init_transforms(ptr noundef nonnull %i.dy, i32 noundef %i.df, i32 noundef %i.dz, i32 noundef %i.ea, i32 noundef %i.eb) #14
  %.not205 = icmp eq i32 %i.ec, 0
  br i1 %.not205, label %bb.z, label %.critedge207

bb.ah:                                            ; preds = %bb.z
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 536
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !113
  %i.ef = load i32, ptr %i.an, align 8, !tbaa !107
  %i.eg = sdiv i32 %i.ee, %i.ef                   ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 2916
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !62
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 540
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !54
  %i.ek = load i32, ptr %i.aq, align 4, !tbaa !108
  %i.el = sdiv i32 %i.ej, %i.ek                   ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 2920
  store i32 %i.el, ptr %i.em, align 8, !tbaa !63
  %i.en = mul nsw i32 %i.el, %i.eg
  %i.eo = sext i32 %i.en to i64
  %i.ep = tail call noalias ptr @av_calloc(i64 noundef %i.eo, i64 noundef 496) #14 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 1592
  store ptr %i.ep, ptr %i.eq, align 8, !tbaa !64
  %.not199 = icmp eq ptr %i.ep, null
  br i1 %.not199, label %.critedge207, label %.preheader

.preheader:                                       ; preds = %bb.ah
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 1988 ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %.preheader, %bb.an
  %indvars.iv234 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next235, %bb.an ] ; 4 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr @ff_dirac_qscale_tab, i64 %indvars.iv234
  %i.et = load i32, ptr %i.es, align 4, !tbaa !30 ; 5 uses
  %i.eu = sext i32 %i.et to i64                   ; 2 uses
  %.not.i = icmp ult i32 %i.et, 65536             ; 2 uses
  %i.ev = lshr i32 %i.et, 16
  %spec.select.i = select i1 %.not.i, i32 %i.et, i32 %i.ev ; 3 uses
  %spec.select12.i = select i1 %.not.i, i32 0, i32 16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.ew = lshr i32 %spec.select.i, 8
  %i.ex = or disjoint i32 %spec.select12.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.ew
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.ex
  %i.ey = zext nneg i32 %.110.i to i64
  %i.ez = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !46
  %i.fb = zext i8 %i.fa to i32
  %i.fc = add nuw nsw i32 %.1.i, %i.fb            ; 2 uses
  %i.fd = add nuw nsw i32 %i.fc, 32
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = shl nuw i64 1, %i.fe
  %i.fg = udiv i64 %i.ff, %i.eu
  %i.fh = trunc i64 %i.fg to i32                  ; 3 uses
  %i.fi = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.eu)
  %.not200 = icmp samesign ult i64 %i.fi, 2
  br i1 %.not200, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv234
  store <2 x i32> splat (i32 -1), ptr %i.fj, align 4, !tbaa !30
  br label %bb.an

bb.ak:                                            ; preds = %bb.ai
  %i.fk = add i32 %i.fh, 1                        ; 2 uses
  %i.fl = mul i32 %i.fk, %i.et
  %i.fm = shl nuw i32 1, %i.fc
  %.not201 = icmp ugt i32 %i.fl, %i.fm
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv234 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4 ; 2 uses
  br i1 %.not201, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i32 %i.fk, ptr %i.fn, align 4, !tbaa !30
  store i32 0, ptr %i.fo, align 4, !tbaa !30
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  store i32 %i.fh, ptr %i.fn, align 4, !tbaa !30
  store i32 %i.fh, ptr %i.fo, align 4, !tbaa !30
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am, %bb.aj
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 2 uses
  %exitcond237.not = icmp eq i64 %indvars.iv.next235, 116
  br i1 %exitcond237.not, label %bb.ao, label %bb.ai, !llvm.loop !96

bb.ao:                                            ; preds = %bb.an
  %i.fp = tail call i32 @pthread_once(ptr noundef nonnull @vc2_encode_init.init_static_once, ptr noundef nonnull @vc2_init_static_data) #14 ; 0 uses
  br label %.critedge207

.critedge207:                                     ; preds = %bb.ad, %._crit_edge, %bb.ah, %bb.ao, %bb.t, %bb.p, %bb.m
  %.2187 = phi i32 [ -22, %bb.m ], [ -22, %bb.p ], [ -22, %bb.t ], [ 0, %bb.ao ], [ -12, %bb.ah ], [ -12, %._crit_edge ], [ -12, %bb.ad ]
  ret i32 %.2187
}

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -2147483648, 1) i32 @vc2_encode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !115
  %i.e = and i32 %i.d, 8388608
  %.not = icmp eq i32 %i.e, 0                     ; 2 uses
  %i.f = select i1 %.not, i32 113, i32 105        ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8, !tbaa !116
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2988 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !38   ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = ashr i64 %i.h, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1576
  store ptr %0, ptr %i.m, align 8, !tbaa !65
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 2928
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 2924
  store i32 0, ptr %i.o, align 4, !tbaa !66
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 2996
  store <2 x i32> zeroinitializer, ptr %i.p, align 4, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.r = load i32, ptr %i.q, align 4, !tbaa !39
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = load i32, ptr %i.t, align 8, !tbaa !40
  %i.v = sext i32 %i.u to i64
  %i.w = tail call i64 @av_rescale(i64 noundef %i.l, i64 noundef %i.s, i64 noundef %i.v) #15
  %i.x = lshr i64 %i.w, 3
  %i.y = trunc i64 %i.x to i32
  %i.z = sub i32 %i.y, %i.f                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2940
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !67
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 2916
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !62
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 2920
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !63
  %i.ag = mul nsw i32 %i.af, %i.ad
  %i.ah = sext i32 %i.ag to i64
  %i.ai = tail call i64 @av_rescale(i64 noundef %i.ab, i64 noundef 1, i64 noundef %i.ah) #15
  %i.aj = trunc i64 %i.ai to i32                  ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 2944 ; 2 uses
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !117
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %i.al = phi i32 [ %i.aj, %bb.a ], [ %i.ax, %bb.d ] ; 3 uses
  %i.am = phi i32 [ 2, %bb.a ], [ %i.az, %bb.d ]  ; 4 uses
  %i.an = add i32 %i.am, -1                       ; 2 uses
  %i.ao = add i32 %i.an, %i.al
  %i.ap = sub i32 0, %i.am                        ; 2 uses
  %i.aq = and i32 %i.ao, %i.ap
  %i.ar = add nsw i32 %i.aq, 4                    ; 3 uses
  %i.as = icmp sgt i32 %i.ar, %i.aj
  br i1 %i.as, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.neg = sub i32 %i.aj, %i.ar
  %i.at = add i32 %.neg, %i.al                    ; 3 uses
  store i32 %i.at, ptr %i.ak, align 8, !tbaa !117
  %i.au = add i32 %i.an, %i.at
  %i.av = and i32 %i.au, %i.ap
  %i.aw = add nsw i32 %i.av, 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ax = phi i32 [ %i.at, %bb.c ], [ %i.al, %bb.b ] ; 3 uses
  %.0 = phi i32 [ %i.aw, %bb.c ], [ %i.ar, %bb.b ]
  %i.ay = sdiv i32 %.0, %i.am
  %i.az = shl i32 %i.am, 1                        ; 2 uses
  %i.ba = icmp sgt i32 %i.ay, 255
  br i1 %i.ba, label %bb.b, label %bb.e, !llvm.loop !114

bb.e:                                             ; preds = %bb.d
  %i.bb = select i1 %.not, ptr @.str.43, ptr @.str.42 ; 2 uses
  store i32 %i.az, ptr %i.n, align 8, !tbaa !68
  %i.bc = sitofp nsz i32 %i.ax to double          ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 2960
  %i.be = load double, ptr %i.bd, align 8, !tbaa !118
  %i.bf = fdiv nsz double %i.be, 1.000000e+02
  %i.bg = fneg nsz double %i.bc
  %i.bh = tail call nsz double @llvm.fmuladd.f64(double %i.bg, double %i.bf, double %i.bc)
  %i.bi = fptosi double %i.bh to i32              ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 2948
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !119
  %i.bk = icmp slt i32 %i.bi, 0
  %i.bl = icmp sgt i32 %i.ax, 268435455
  %or.cond = or i1 %i.bk, %i.bl
  br i1 %or.cond, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bm = tail call fastcc i32 @encode_frame(ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.bb, i32 noundef %i.f, i32 noundef %i.j) ; 2 uses
  %.not71 = icmp eq i32 %i.bm, 0
  br i1 %.not71, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.bn = load i32, ptr %i.i, align 4, !tbaa !38
  %.not72 = icmp eq i32 %i.bn, 0
  br i1 %.not72, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bo = tail call fastcc i32 @encode_frame(ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.bb, i32 noundef %i.f, i32 noundef 2) ; 2 uses
  %.not73 = icmp eq i32 %i.bo, 0
  br i1 %.not73, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !69 ; 2 uses
  %i.bs = icmp slt i32 %i.br, 32
  br i1 %i.bs, label %.lr.ph.i, label %flush_put_bits.exit

.lr.ph.i:                                         ; preds = %bb.i
  %i.bt = load i32, ptr %i.bp, align 8, !tbaa !70
  %i.bu = shl i32 %i.bt, %i.br                    ; 2 uses
  store i32 %i.bu, ptr %i.bp, align 8, !tbaa !70
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.lr.ph.i
  %i.bx = phi i32 [ %i.cf, %bb.l ], [ %i.bu, %.lr.ph.i ]
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !71 ; 3 uses
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !72
  %i.ca = icmp ult ptr %i.by, %i.bz
  br i1 %i.ca, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, i32 noundef 160) #14
  tail call void @abort() #16
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cb = lshr i32 %i.bx, 24
  %i.cc = trunc nuw i32 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store ptr %i.cd, ptr %i.bv, align 8, !tbaa !71
  store i8 %i.cc, ptr %i.by, align 1, !tbaa !46
  %i.ce = load i32, ptr %i.bp, align 8, !tbaa !70
  %i.cf = shl i32 %i.ce, 8                        ; 2 uses
  store i32 %i.cf, ptr %i.bp, align 8, !tbaa !70
  %i.cg = load i32, ptr %i.bq, align 4, !tbaa !69 ; 2 uses
  %i.ch = add nsw i32 %i.cg, 8
  store i32 %i.ch, ptr %i.bq, align 4, !tbaa !69
  %i.ci = icmp slt i32 %i.cg, 24
  br i1 %i.ci, label %bb.j, label %flush_put_bits.exit, !llvm.loop !0

flush_put_bits.exit:                              ; preds = %bb.l, %bb.i
  store <2 x i32> <i32 0, i32 32>, ptr %i.bp, align 8, !tbaa !30
  %i.cj = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.cj, align 8, !tbaa !73
  %i.ck = getelementptr i8, ptr %i.b, i64 24
  %.val74 = load ptr, ptr %i.ck, align 8, !tbaa !71
  %i.cl = ptrtoint ptr %.val74 to i64
  %i.cm = ptrtoint ptr %.val to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = trunc i64 %i.cn to i32
  tail call void @av_shrink_packet(ptr noundef %1, i32 noundef %i.co) #14
  store i32 1, ptr %3, align 4, !tbaa !30
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.f, %bb.e, %flush_put_bits.exit
  %.066 = phi i32 [ 0, %flush_put_bits.exit ], [ -22, %bb.e ], [ %i.bm, %bb.f ], [ %i.bo, %bb.h ]
  ret i32 %.066
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @vc2_encode_end(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2956
  %i.d = load i32, ptr %i.c, align 4, !tbaa !74
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.50, i32 noundef %i.d) #14
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw [112 x i8], ptr %i.b, i64 %indvars.iv
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1640
  tail call void @ff_vc2enc_free_transforms(ptr noundef nonnull %i.f) #14
  %i.g = getelementptr inbounds nuw [512 x i8], ptr %i.b, i64 %indvars.iv
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 520
  tail call void @av_freep(ptr noundef nonnull %i.h) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !120

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1592
  tail call void @av_freep(ptr noundef nonnull %i.i) #14
  ret i32 0
}

declare ptr @av_default_item_name(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #1

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #1

declare i32 @ff_vc2enc_init_transforms(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @vc2_init_static_data() #3 {
bb.a:
  store i16 1, ptr getelementptr inbounds nuw (i8, ptr @interleaved_ue_golomb_tab, i64 2), align 2, !tbaa !76
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 2, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 6 uses
  %i.a = trunc nuw nsw i64 %indvars.iv to i32
  %i.b = lshr i64 %indvars.iv, 1
  %i.c = and i64 %i.b, 2147483647                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr @golomb_len_tab, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !46
  %i.f = add i8 %i.e, 2                           ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr @golomb_len_tab, i64 %indvars.iv
  store i8 %i.f, ptr %i.g, align 1, !tbaa !46
  %i.h = getelementptr inbounds nuw [2 x i8], ptr @interleaved_ue_golomb_tab, i64 %i.c
  %i.i = load i16, ptr %i.h, align 2, !tbaa !76
  %i.j = zext i16 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 2
  %i.l = and i32 %i.a, 1
  %i.m = or disjoint i32 %i.k, %i.l               ; 2 uses
  %i.n = trunc i32 %i.m to i16
  %i.o = getelementptr inbounds nuw [2 x i8], ptr @interleaved_ue_golomb_tab, i64 %indvars.iv
  store i16 %i.n, ptr %i.o, align 2, !tbaa !76
  %i.p = zext nneg i8 %i.f to i32
  %i.q = shl nuw i32 1, %i.p
  %i.r = xor i32 %i.m, %i.q
  %i.s = trunc i32 %i.r to i16
  %i.t = getelementptr inbounds nuw [2 x i8], ptr @top_interleaved_ue_golomb_tab, i64 %indvars.iv
  store i16 %i.s, ptr %i.t, align 2, !tbaa !76
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !121

bb.c:                                             ; preds = %.preheader
  ret void

.preheader:                                       ; preds = %bb.b, %.preheader
  %.016 = phi i64 [ %i.af, %.preheader ], [ 0, %bb.b ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @ff_dirac_qscale_tab, i64 %.016
  %i.v = load i32, ptr %i.u, align 4, !tbaa !30   ; 3 uses
  %.not.i = icmp ult i32 %i.v, 65536              ; 2 uses
  %i.w = lshr i32 %i.v, 16
  %spec.select.i = select i1 %.not.i, i32 %i.v, i32 %i.w ; 3 uses
  %spec.select12.i = select i1 %.not.i, i8 0, i8 16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.x = lshr i32 %spec.select.i, 8
  %i.y = or disjoint i8 %spec.select12.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.x
  %.1.i = select i1 %.not11.i, i8 %spec.select12.i, i8 %i.y
  %i.z = zext nneg i32 %.110.i to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !46
  %i.ac = add i8 %i.ab, 32
  %i.ad = add i8 %i.ac, %.1.i
  %i.ae = getelementptr inbounds nuw i8, ptr @qscale_len_tab, i64 %.016
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !46
  %i.af = add nuw nsw i64 %.016, 1                ; 2 uses
  %exitcond18.not = icmp eq i64 %i.af, 116
  br i1 %exitcond18.not, label %bb.c, label %.preheader, !llvm.loop !122
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @encode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef range(i32 105, 114) %4, i32 noundef %5) unnamed_addr #6 {
bb.a:
  %i.a = alloca [150 x i32], align 16             ; 6 uses
  %i.b = alloca [150 x ptr], align 16             ; 5 uses
end_hunk_0
