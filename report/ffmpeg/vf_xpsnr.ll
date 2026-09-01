Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_xpsnr?download=true
inline.NumInlined: 16
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@uninit:bb.a
  %i.bs = load ptr, ptr @stdout, align 8
  %.not87 = icmp eq ptr %i.br, %i.bs
  %or.cond = select i1 %.not86, i1 true, i1 %.not87
  br i1 %or.cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %get_avg_xpsnr.exit92
  %i.bt = load i8, ptr %i.bo, align 1, !tbaa !42
  %i.bu = sext i8 %i.bt to i32
  %i.bv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.br, ptr noundef nonnull @.str.26, i32 noundef %i.bu, double noundef %.0.i91) #13 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %get_avg_xpsnr.exit92
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bw = load i32, ptr %i.am, align 4, !tbaa !43 ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = icmp slt i64 %indvars.iv.next, %i.bx
  br i1 %i.by, label %.lr.ph, label %._crit_edge, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.k
  %i.bz = icmp sgt i32 %i.bw, 1
  br i1 %i.bz, label %bb.l, label %._crit_edge.thread

bb.l:                                             ; preds = %._crit_edge
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull @.str.27, double noundef %.1) #13
  %i.ca = load ptr, ptr %i.ae, align 8, !tbaa !33 ; 3 uses
  %.not82 = icmp eq ptr %i.ca, null
  %i.cb = load ptr, ptr @stdout, align 8
  %.not83 = icmp eq ptr %i.ca, %i.cb
  %or.cond88 = select i1 %.not82, i1 true, i1 %.not83
  br i1 %or.cond88, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.ca, ptr noundef nonnull @.str.27, double noundef %.1) #13 ; 0 uses
  br label %bb.o

._crit_edge.thread:                               ; preds = %bb.f, %._crit_edge
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull @.str.19) #13
  %i.cd = load ptr, ptr %i.ae, align 8, !tbaa !33 ; 3 uses
  %.not80 = icmp eq ptr %i.cd, null
  %i.ce = load ptr, ptr @stdout, align 8
  %.not81 = icmp eq ptr %i.cd, %i.ce
  %or.cond89 = select i1 %.not80, i1 true, i1 %.not81
  br i1 %or.cond89, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge.thread
  %fputc = tail call i32 @fputc(i32 10, ptr nonnull %i.cd) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.n, %._crit_edge.thread, %bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @ff_framesync_uninit(ptr noundef nonnull %i.cf) #13
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !33 ; 3 uses
  %.not84 = icmp eq ptr %i.ch, null
  %i.ci = load ptr, ptr @stdout, align 8
  %.not85 = icmp eq ptr %i.ch, %i.ci
  %or.cond90 = select i1 %.not84, i1 true, i1 %.not85
  br i1 %or.cond90, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cj = tail call i32 @fclose(ptr noundef nonnull %i.ch) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  tail call void @av_freep(ptr noundef nonnull %i.ck) #13
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  tail call void @av_freep(ptr noundef nonnull %i.cl) #13
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  tail call void @av_freep(ptr noundef nonnull %i.cm) #13
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  tail call void @av_freep(ptr noundef nonnull %i.cn) #13
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !43
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.lr.ph98, label %._crit_edge99

.lr.ph98:                                         ; preds = %bb.q
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph98, %bb.r
  %indvars.iv102 = phi i64 [ 0, %.lr.ph98 ], [ %indvars.iv.next103, %bb.r ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv102
  tail call void @av_freep(ptr noundef nonnull %i.ct) #13
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv102
  tail call void @av_freep(ptr noundef nonnull %i.cu) #13
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %i.cv = load i32, ptr %i.co, align 4, !tbaa !43
  %i.cw = sext i32 %i.cv to i64
  %i.cx = icmp slt i64 %indvars.iv.next103, %i.cw
  br i1 %i.cx, label %bb.r, label %._crit_edge99, !llvm.loop !45

._crit_edge99:                                    ; preds = %bb.r, %bb.q
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @activate(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = tail call i32 @ff_framesync_activate(ptr noundef nonnull %i.c) #13
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal range(i32 -22, 1) i32 @config_input_ref(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !46
  %i.c = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.b) #13 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9    ; 23 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !55   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load i32, ptr %i.k, align 8, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load i32, ptr %i.o, align 8, !tbaa !57
  %.not = icmp eq i32 %i.l, %i.p
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !58
  %.not70 = icmp eq i32 %i.r, %i.t
  br i1 %.not70, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.e, i32 noundef 16, ptr noundef nonnull @.str.4) #13
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.v = load i32, ptr %i.u, align 4, !tbaa !46
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 36
  %i.x = load i32, ptr %i.w, align 4, !tbaa !46
  %.not71 = icmp eq i32 %i.v, %i.x
  br i1 %.not71, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.e, i32 noundef 16, ptr noundef nonnull @.str.5) #13
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !59   ; 3 uses
  %i.aa = icmp slt i32 %i.z, 9
  %i.ab = select i1 %i.aa, i32 1, i32 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !61
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 %i.z, ptr %i.ad, align 4, !tbaa !62
  %notmask = shl nsw i32 -1, %i.z
  %i.ae = xor i32 %notmask, -1
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.ah = mul nuw nsw i64 %i.af, %i.af
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !63 ; 2 uses
  %.not72 = icmp eq i32 %i.aj, 0
  br i1 %.not72, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 284
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !63 ; 2 uses
  %.not73 = icmp eq i32 %i.al, 0
  br i1 %.not73, label %bb.h, label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.f
  %.sink = phi ptr [ %0, %bb.f ], [ %i.j, %bb.g ]
  %.sink79 = phi i32 [ %i.aj, %bb.f ], [ %i.al, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sink, i64 280
  %i.an = load i32, ptr %i.am, align 8, !tbaa !65
  %i.ao = sdiv i32 %i.an, %.sink79
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.g
  %i.ap = phi i32 [ 0, %bb.g ], [ %i.ao, %.sink.split ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !66
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !67
  %narrow = tail call i8 @llvm.umin.i8(i8 %i.as, i8 3)
  %spec.select = zext nneg i8 %narrow to i32
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  store i32 %spec.select, ptr %i.at, align 4, !tbaa !43
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.av = load i32, ptr %i.a, align 4, !tbaa !46
  %i.aw = tail call i32 @ff_fill_rgba_map(ptr noundef nonnull %i.au, i32 noundef %i.av) #13
  %i.ax = icmp sgt i32 %i.aw, -1                  ; 4 uses
  %i.ay = zext i1 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 356
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !69
  %i.ba = select i1 %i.ax, i8 114, i8 121
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i8 %i.ba, ptr %i.bb, align 8, !tbaa !42
  %i.bc = select i1 %i.ax, i8 103, i8 117
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !42
  %i.be = select i1 %i.ax, i8 98, i8 118
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 18
  store i8 %i.be, ptr %i.bf, align 2, !tbaa !42
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 19
  store i8 97, ptr %i.bg, align 1, !tbaa !42
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !57
  %i.bj = sub nsw i32 0, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !70
  %i.bm = zext nneg i8 %i.bl to i32
  %i.bn = ashr i32 %i.bj, %i.bm
  %i.bo = sub nsw i32 0, %i.bn                    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  store i32 %i.bo, ptr %i.bq, align 8, !tbaa !34
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 172
  store i32 %i.bo, ptr %i.br, align 4, !tbaa !34
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !57 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 180
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !34
  store i32 %i.bt, ptr %i.bp, align 8, !tbaa !34
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !58
  %i.bx = sub nsw i32 0, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.bz = load i8, ptr %i.by, align 2, !tbaa !71
  %i.ca = zext nneg i8 %i.bz to i32
  %i.cb = ashr i32 %i.bx, %i.ca
  %i.cc = sub nsw i32 0, %i.cb                    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  store i32 %i.cc, ptr %i.ce, align 8, !tbaa !34
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 156
  store i32 %i.cc, ptr %i.cf, align 4, !tbaa !34
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !58 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 164
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !34
  store i32 %i.ch, ptr %i.cd, align 8, !tbaa !34
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  tail call void @ff_psnr_init(ptr noundef nonnull %i.cj, i32 noundef 15) #13
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 360
  store ptr @highds, ptr %i.ck, align 8, !tbaa !72
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 368
  store ptr @diff1st, ptr %i.cl, align 8, !tbaa !73
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  store ptr @diff2nd, ptr %i.cm, align 8, !tbaa !74
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.c
  %.0 = phi i32 [ -22, %bb.c ], [ -22, %bb.e ], [ 0, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @ff_fill_rgba_map(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_psnr_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i64 @highds(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #4 {
bb.a:
  %i.a = icmp slt i32 %1, %3
  %i.b = icmp slt i32 %0, %2
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.us.preheader, label %._crit_edge178

.preheader.us.preheader:                          ; preds = %bb.a
  %i.c = sext i32 %0 to i64
  %i.d = sext i32 %2 to i64
  %i.e = sext i32 %1 to i64
  %i.f = sext i32 %3 to i64
  %i.g = sext i32 %5 to i64                       ; 6 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv182 = phi i64 [ %i.e, %.preheader.us.preheader ], [ %indvars.iv.next183, %._crit_edge.us ] ; 6 uses
  %.0177.us = phi i64 [ 0, %.preheader.us.preheader ], [ %i.dg, %._crit_edge.us ]
  %i.h = mul nsw i64 %indvars.iv182, %i.g
  %i.i = add nsw i64 %indvars.iv182, 1
  %i.j = mul nsw i64 %i.i, %i.g
  %i.k = add nsw i64 %indvars.iv182, -1
  %i.l = mul nsw i64 %i.k, %i.g
  %indvars.iv.next183 = add nsw i64 %indvars.iv182, 2 ; 3 uses
  %i.m = mul nsw i64 %indvars.iv.next183, %i.g
  %i.n = add nsw i64 %indvars.iv182, -2
  %i.o = mul nsw i64 %i.n, %i.g
  %i.p = add nsw i64 %indvars.iv182, 3
  %i.q = mul nsw i64 %i.p, %i.g
  %invariant.gep = getelementptr [2 x i8], ptr %4, i64 %i.h
  %invariant.gep188 = getelementptr [2 x i8], ptr %4, i64 %i.j
  %invariant.gep190 = getelementptr [2 x i8], ptr %4, i64 %i.l
  %invariant.gep192 = getelementptr [2 x i8], ptr %4, i64 %i.m
  %invariant.gep194 = getelementptr [2 x i8], ptr %4, i64 %i.o
  %invariant.gep196 = getelementptr [2 x i8], ptr %4, i64 %i.q
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.b
  %indvars.iv = phi i64 [ %i.c, %.preheader.us ], [ %indvars.iv.next, %bb.b ] ; 7 uses
  %.1175.us = phi i64 [ %.0177.us, %.preheader.us ], [ %i.dg, %bb.b ]
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv ; 6 uses
  %i.r = load i16, ptr %gep, align 2, !tbaa !75
  %i.s = sext i16 %i.r to i32
  %i.t = getelementptr i8, ptr %gep, i64 2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !75
  %i.v = sext i16 %i.u to i32
  %i.w = add nsw i32 %i.v, %i.s
  %gep189 = getelementptr [2 x i8], ptr %invariant.gep188, i64 %indvars.iv ; 6 uses
  %i.x = load i16, ptr %gep189, align 2, !tbaa !75
  %i.y = sext i16 %i.x to i32
  %i.z = add nsw i32 %i.w, %i.y
  %i.aa = getelementptr i8, ptr %gep189, i64 2
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !75
  %i.ac = sext i16 %i.ab to i32
  %i.ad = add nsw i32 %i.z, %i.ac
  %i.ae = mul nsw i32 %i.ad, 12
  %gep191 = getelementptr [2 x i8], ptr %invariant.gep190, i64 %indvars.iv ; 6 uses
  %i.af = load i16, ptr %gep191, align 2, !tbaa !75
  %i.ag = sext i16 %i.af to i32
  %i.ah = getelementptr i8, ptr %gep191, i64 2
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !75
  %i.aj = sext i16 %i.ai to i32
  %gep193 = getelementptr [2 x i8], ptr %invariant.gep192, i64 %indvars.iv ; 6 uses
  %i.ak = load i16, ptr %gep193, align 2, !tbaa !75
  %i.al = sext i16 %i.ak to i32
  %i.am = getelementptr i8, ptr %gep193, i64 2
  %i.an = load i16, ptr %i.am, align 2, !tbaa !75
  %i.ao = sext i16 %i.an to i32
  %i.ap = getelementptr i8, ptr %gep, i64 -2
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !75
  %i.ar = sext i16 %i.aq to i32
  %i.as = getelementptr i8, ptr %gep, i64 4
  %i.at = load i16, ptr %i.as, align 2, !tbaa !75
  %i.au = sext i16 %i.at to i32
  %i.av = getelementptr i8, ptr %gep189, i64 -2
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !75
  %i.ax = sext i16 %i.aw to i32
  %i.ay = getelementptr i8, ptr %gep189, i64 4
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !75
  %i.ba = sext i16 %i.az to i32
  %i.bb = getelementptr i8, ptr %gep191, i64 -2
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !75
  %i.bd = sext i16 %i.bc to i32
  %i.be = getelementptr i8, ptr %gep191, i64 4
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !75
  %i.bg = sext i16 %i.bf to i32
  %i.bh = add nsw i32 %i.bg, %i.bd
  %i.bi = getelementptr i8, ptr %gep193, i64 -2
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !75
  %i.bk = sext i16 %i.bj to i32
  %i.bl = add nsw i32 %i.bh, %i.bk
  %i.bm = getelementptr i8, ptr %gep193, i64 4
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !75
  %i.bo = sext i16 %i.bn to i32
  %i.bp = add nsw i32 %i.bl, %i.bo
  %gep195 = getelementptr [2 x i8], ptr %invariant.gep194, i64 %indvars.iv
  %i.bq = getelementptr i8, ptr %gep195, i64 -2
  %i.br = load <4 x i16>, ptr %i.bq, align 2, !tbaa !75
  %i.bs = sext <4 x i16> %i.br to <4 x i32>
  %gep197 = getelementptr [2 x i8], ptr %invariant.gep196, i64 %indvars.iv
  %i.bt = getelementptr i8, ptr %gep197, i64 -2
  %i.bu = load <4 x i16>, ptr %i.bt, align 2, !tbaa !75
  %i.bv = sext <4 x i16> %i.bu to <4 x i32>
  %i.bw = getelementptr i8, ptr %gep191, i64 -4
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !75
  %i.by = sext i16 %i.bx to i32
  %i.bz = getelementptr i8, ptr %gep, i64 -4
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !75
  %i.cb = sext i16 %i.ca to i32
  %i.cc = getelementptr i8, ptr %gep189, i64 -4
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !75
  %i.ce = sext i16 %i.cd to i32
  %i.cf = getelementptr i8, ptr %gep193, i64 -4
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !75
  %i.ch = sext i16 %i.cg to i32
  %i.ci = getelementptr i8, ptr %gep191, i64 6
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !75
  %i.ck = sext i16 %i.cj to i32
  %i.cl = getelementptr i8, ptr %gep, i64 6
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !75
  %i.cn = sext i16 %i.cm to i32
  %i.co = getelementptr i8, ptr %gep189, i64 6
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !75
  %i.cq = sext i16 %i.cp to i32
  %i.cr = getelementptr i8, ptr %gep193, i64 6
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !75
  %i.ct = sext i16 %i.cs to i32
  %i.cu = add nsw i32 %i.aj, %i.ag
  %i.cv = add nsw i32 %i.cu, %i.al
  %i.cw = add nsw i32 %i.cv, %i.ao
  %i.cx = add nsw i32 %i.cw, %i.ar
  %i.cy = add nsw i32 %i.cx, %i.au
  %i.cz = add nsw i32 %i.cy, %i.ax
end_hunk_0
