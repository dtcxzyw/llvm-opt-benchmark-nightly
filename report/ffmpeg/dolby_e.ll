Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dolby_e?download=true
inline.NumInlined: 42
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@init_tables:vector.ph
  %i.at = trunc i64 %indvars.iv147 to i32
  %i.au = add i32 %i.at, -960
  %i.av = sitofp nsz i32 %i.au to float
  %i.aw = fmul nnan nsz float %i.av, 1.562500e-02
  %i.ax = tail call nsz float @llvm.exp2.f32(float %i.aw)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr @gain_tab, i64 %indvars.iv147
  store float %i.ax, ptr %i.ay, align 4, !tbaa !29
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %exitcond150.not = icmp eq i64 %indvars.iv.next148, 1024
  br i1 %exitcond150.not, label %vector.ph204, label %.preheader108, !llvm.loop !93

vector.ph204:                                     ; preds = %.preheader108
  tail call void @ff_kbd_window_init(ptr noundef nonnull @window, float noundef 3.000000e+00, i32 noundef 128) #10
  br label %vector.body205

vector.body205:                                   ; preds = %vector.body205, %vector.ph204
  %index206 = phi i64 [ 0, %vector.ph204 ], [ %index.next207, %vector.body205 ] ; 3 uses
  %i.az = sub nuw nsw i64 127, %index206
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr @window, i64 %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -12
  %wide.load = load <4 x float>, ptr %i.bb, align 16, !tbaa !29
  %reverse = shufflevector <4 x float> %wide.load, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr @window, i64 %index206
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 512
  store <4 x float> %reverse, ptr %i.bd, align 16, !tbaa !29
  %index.next207 = add nuw i64 %index206, 4       ; 2 uses
  %i.be = icmp eq i64 %index.next207, 128
  br i1 %i.be, label %.preheader107.preheader, label %vector.body205, !llvm.loop !94

.preheader107.preheader:                          ; preds = %vector.body205
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(768) getelementptr inbounds nuw (i8, ptr @window, i64 1024), ptr noundef nonnull align 16 dereferenceable(768) @start_window, i64 768, i1 false), !tbaa !29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(768) getelementptr inbounds nuw (i8, ptr @window, i64 1792), ptr noundef nonnull align 16 dereferenceable(768) @short_window2, i64 768, i1 false), !tbaa !29
  br label %vector.body210

vector.body210:                                   ; preds = %vector.body210, %.preheader107.preheader
  %index211 = phi i64 [ 0, %.preheader107.preheader ], [ %index.next214, %vector.body210 ] ; 3 uses
  %i.bf = sub nuw nsw i64 63, %index211
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr @window, i64 %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -12
  %wide.load212 = load <4 x float>, ptr %i.bh, align 16, !tbaa !29
  %reverse213 = shufflevector <4 x float> %wide.load212, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr @window, i64 %index211
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2560
  store <4 x float> %reverse213, ptr %i.bj, align 16, !tbaa !29
  %index.next214 = add nuw i64 %index211, 4       ; 2 uses
  %i.bk = icmp eq i64 %index.next214, 64
  br i1 %i.bk, label %.preheader104.preheader, label %vector.body210, !llvm.loop !95

.preheader104.preheader:                          ; preds = %vector.body210
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) getelementptr inbounds nuw (i8, ptr @window, i64 2816), ptr noundef nonnull align 16 dereferenceable(256) @short_window3, i64 256, i1 false), !tbaa !29
  br label %vector.body217

vector.body217:                                   ; preds = %vector.body217, %.preheader104.preheader
  %index218 = phi i64 [ 0, %.preheader104.preheader ], [ %index.next220, %vector.body217 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr @window, i64 %index218 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 256
  %wide.load219 = load <4 x float>, ptr %i.bm, align 16, !tbaa !29
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 3072
  store <4 x float> %wide.load219, ptr %i.bn, align 16, !tbaa !29
  %index.next220 = add nuw i64 %index218, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next220, 192
  br i1 %i.bo, label %vector.body223, label %vector.body217, !llvm.loop !96

vector.body223:                                   ; preds = %vector.body217, %vector.body223
  %index224 = phi i64 [ %index.next226, %vector.body223 ], [ 0, %vector.body217 ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr @window, i64 %index224 ; 2 uses
  %wide.load225 = load <4 x float>, ptr %i.bp, align 16, !tbaa !29
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 3840
  store <4 x float> %wide.load225, ptr %i.bq, align 16, !tbaa !29
  %index.next226 = add nuw i64 %index224, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next226, 128
  br i1 %i.br, label %vector.body229, label %vector.body223, !llvm.loop !97

vector.body229:                                   ; preds = %vector.body223, %vector.body229
  %index230 = phi i64 [ %index.next231, %vector.body229 ], [ 0, %vector.body223 ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr @window, i64 %index230
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4352
  store <4 x float> splat (float 1.000000e+00), ptr %i.bt, align 16, !tbaa !29
  %index.next231 = add nuw i64 %index230, 4       ; 2 uses
  %i.bu = icmp eq i64 %index.next231, 64
  br i1 %i.bu, label %middle.block232, label %vector.body229, !llvm.loop !98

middle.block232:                                  ; preds = %vector.body229
  tail call void @ff_kbd_window_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @window, i64 5632), float noundef 3.000000e+00, i32 noundef 256) #10
  br label %vector.body234

vector.body234:                                   ; preds = %vector.body234, %middle.block232
  %index235 = phi i64 [ 0, %middle.block232 ], [ %index.next236, %vector.body234 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr @window, i64 %index235
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 6656
  store <4 x float> splat (float 1.000000e+00), ptr %i.bw, align 16, !tbaa !29
  %index.next236 = add nuw i64 %index235, 4       ; 2 uses
  %i.bx = icmp eq i64 %index.next236, 640
  br i1 %i.bx, label %vector.body239, label %vector.body234, !llvm.loop !99

vector.body239:                                   ; preds = %vector.body234, %vector.body239
  %index240 = phi i64 [ %index.next243, %vector.body239 ], [ 0, %vector.body234 ] ; 3 uses
  %i.by = sub nuw nsw i64 1663, %index240
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr @window, i64 %i.by
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -12
  %wide.load241 = load <4 x float>, ptr %i.ca, align 16, !tbaa !29
  %reverse242 = shufflevector <4 x float> %wide.load241, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr @window, i64 %index240 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4608
  store <4 x float> %reverse242, ptr %i.cc, align 16, !tbaa !29
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 9216
  store <4 x float> %reverse242, ptr %i.cd, align 16, !tbaa !29
  %index.next243 = add nuw i64 %index240, 4       ; 2 uses
  %i.ce = icmp eq i64 %index.next243, 256
  br i1 %i.ce, label %vector.body246, label %vector.body239, !llvm.loop !100

vector.body246:                                   ; preds = %vector.body239, %vector.body246
  %index247 = phi i64 [ %index.next250, %vector.body246 ], [ 0, %vector.body239 ] ; 3 uses
  %i.cf = sub nuw nsw i64 447, %index247
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr @window, i64 %i.cf
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -12
  %wide.load248 = load <4 x float>, ptr %i.ch, align 16, !tbaa !29
  %reverse249 = shufflevector <4 x float> %wide.load248, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr @window, i64 %index247
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 10240
  store <4 x float> %reverse249, ptr %i.cj, align 16, !tbaa !29
  %index.next250 = add nuw i64 %index247, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next250, 192
  br i1 %i.ck, label %vector.body253, label %vector.body246, !llvm.loop !101

vector.body253:                                   ; preds = %vector.body246, %vector.body253
  %index254 = phi i64 [ %index.next257, %vector.body253 ], [ 0, %vector.body246 ] ; 3 uses
  %i.cl = sub nuw nsw i64 703, %index254
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr @window, i64 %i.cl
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -12
  %wide.load255 = load <4 x float>, ptr %i.cn, align 16, !tbaa !29
  %reverse256 = shufflevector <4 x float> %wide.load255, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.co = getelementptr inbounds nuw [4 x i8], ptr @window, i64 %index254
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 11008
  store <4 x float> %reverse256, ptr %i.cp, align 16, !tbaa !29
  %index.next257 = add nuw i64 %index254, 4       ; 2 uses
  %i.cq = icmp eq i64 %index.next257, 256
  br i1 %i.cq, label %vector.body260, label %vector.body253, !llvm.loop !102

vector.body260:                                   ; preds = %vector.body253, %vector.body260
  %index261 = phi i64 [ %index.next264, %vector.body260 ], [ 0, %vector.body253 ] ; 3 uses
  %i.cr = sub nuw nsw i64 959, %index261
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr @window, i64 %i.cr
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -12
  %wide.load262 = load <4 x float>, ptr %i.ct, align 16, !tbaa !29
  %reverse263 = shufflevector <4 x float> %wide.load262, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr @window, i64 %index261
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 12032
  store <4 x float> %reverse263, ptr %i.cv, align 16, !tbaa !29
  %index.next264 = add nuw i64 %index261, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next264, 256
  br i1 %i.cw, label %vector.body267, label %vector.body260, !llvm.loop !103

vector.body267:                                   ; preds = %vector.body260, %vector.body267
  %index268 = phi i64 [ %index.next271, %vector.body267 ], [ 0, %vector.body260 ] ; 3 uses
  %i.cx = sub nuw nsw i64 1407, %index268
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr @window, i64 %i.cx
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -12
  %wide.load269 = load <4 x float>, ptr %i.cz, align 16, !tbaa !29
  %reverse270 = shufflevector <4 x float> %wide.load269, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.da = getelementptr inbounds nuw [4 x i8], ptr @window, i64 %index268
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 13056
  store <4 x float> %reverse270, ptr %i.db, align 16, !tbaa !29
  %index.next271 = add nuw i64 %index268, 4       ; 2 uses
  %i.dc = icmp eq i64 %index.next271, 448
  br i1 %i.dc, label %middle.block272, label %vector.body267, !llvm.loop !104

middle.block272:                                  ; preds = %vector.body267
  ret void
}

declare i32 @av_tx_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare ptr @avpriv_float_dsp_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #5

declare void @ff_kbd_window_init(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_dolby_e_parse_header(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @av_channel_layout_uninit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @parse_audio(ptr noundef %0, i32 noundef range(i32 -1073741824, 1073741824) %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [100 x i32], align 16             ; 6 uses
  %i.b = alloca [17 x i32], align 16              ; 9 uses
  %i.c = alloca [50 x i32], align 16              ; 22 uses
  %i.d = alloca [50 x i32], align 16              ; 9 uses
  %i.e = alloca [8 x i32], align 16               ; 7 uses
  %i.f = alloca [8 x i32], align 16               ; 8 uses
  %i.g = alloca [8 x i32], align 16               ; 8 uses
  %i.h = alloca [8 x i32], align 16               ; 8 uses
  %i.i = alloca [2 x i32], align 4                ; 4 uses
  %i.j = alloca [50 x i32], align 16              ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.m = load i32, ptr %i.l, align 4, !tbaa !43
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %parse_key.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !44   ; 2 uses
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %parse_key.exit.thread, label %bb.c

parse_key.exit.thread:                            ; preds = %bb.b
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !47
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.q, i32 noundef 16, ptr noundef nonnull @.str.29) #10
  br label %skip_input.exit40

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load i32, ptr %i.t, align 8, !tbaa !45
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 %i.v
  store ptr %i.w, ptr %i.r, align 8, !tbaa !46
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.n, align 8, !tbaa !44
  %i.y = load i8, ptr %i.s, align 1, !tbaa !31
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !31
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 8
  %i.af = or disjoint i32 %i.ae, %i.aa
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !31
  %i.ai = zext i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.af, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !132
  %i.am = sub nsw i32 24, %i.al
  %i.an = lshr i32 %i.aj, %i.am
  br label %parse_key.exit

parse_key.exit:                                   ; preds = %bb.a, %bb.c
  %.1.i = phi i32 [ 0, %bb.a ], [ %i.an, %bb.c ]
  %i.ao = icmp slt i32 %1, %2
  br i1 %i.ao, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %parse_key.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 3376
  %i.ar = zext nneg i32 %3 to i64                 ; 3 uses
  %i.as = getelementptr inbounds nuw [64384 x i8], ptr %i.aq, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.aw = getelementptr i8, ptr %0, i64 32        ; 35 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr @frm_ofs_tab, i64 %i.ar
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.bg = getelementptr i8, ptr %0, i64 36
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = getelementptr [64384 x i8], ptr %0, i64 %i.ar ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bm = sext i32 %1 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.bo
  %indvars.iv = phi i64 [ %i.bm, %.lr.ph ], [ %indvars.iv.next, %bb.bo ] ; 8 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %indvars.iv ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !41 ; 2 uses
  %.not = icmp eq i32 %i.bo, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bp = getelementptr [8048 x i8], ptr %i.bi, i64 %indvars.iv
  %i.bq = getelementptr i8, ptr %i.bp, i64 3384
  store i32 0, ptr %i.bq, align 8, !tbaa !53
  br label %bb.bo

bb.f:                                             ; preds = %bb.d
  %i.br = tail call i32 @ff_dolby_e_convert_input(ptr noundef nonnull %i.k, i32 noundef %i.bo, i32 noundef %.1.i) #10 ; 2 uses
  %i.bs = icmp slt i32 %i.br, 0
  br i1 %i.bs, label %skip_input.exit40, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bt = getelementptr inbounds [8048 x i8], ptr %i.as, i64 %indvars.iv ; 15 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.at, i64 %indvars.iv
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !41 ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, 1
  br i1 %i.bw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bx = load ptr, ptr %i.k, align 8, !tbaa !47
  tail call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef %i.bx, ptr noundef nonnull @.str.12, i32 noundef %i.bv) #10
  br label %bb.bm

bb.i:                                             ; preds = %bb.g
  %i.by = load i32, ptr %i.au, align 8, !tbaa !40
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds i8, ptr @lfe_channel_tab, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !31
  %i.cc = trunc nsw i64 %indvars.iv to i32
  %i.cd = sext i8 %i.cb to i64
  %i.ce = icmp eq i64 %indvars.iv, %i.cd
  br i1 %i.ce, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 3, ptr %i.bt, align 16, !tbaa !133
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 29, ptr %i.cf, align 4, !tbaa !134
  br label %.lr.ph.i

bb.k:                                             ; preds = %bb.i
  %i.cg = load i32, ptr %i.aw, align 8, !tbaa !135 ; 3 uses
  %i.ch = load i32, ptr %i.ax, align 8, !tbaa !136 ; 2 uses
  %i.ci = load ptr, ptr %i.av, align 8, !tbaa !137 ; 2 uses
  %i.cj = lshr i32 %i.cg, 3
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 1, !tbaa !31
  %i.cn = tail call i32 @llvm.bswap.i32(i32 %i.cm)
  %i.co = and i32 %i.cg, 7
  %i.cp = shl i32 %i.cn, %i.co
  %i.cq = lshr i32 %i.cp, 30                      ; 3 uses
  %i.cr = add i32 %i.cg, 2
  %i.cs = tail call i32 @llvm.umin.i32(i32 %i.ch, i32 %i.cr) ; 4 uses
  store i32 %i.cs, ptr %i.aw, align 8, !tbaa !135
  store i32 %i.cq, ptr %i.bt, align 16, !tbaa !133
  %i.ct = lshr i32 %i.cs, 3
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 1, !tbaa !31
  %i.cx = tail call i32 @llvm.bswap.i32(i32 %i.cw)
  %i.cy = and i32 %i.cs, 7
  %i.cz = shl i32 %i.cx, %i.cy
  %i.da = lshr i32 %i.cz, 29                      ; 2 uses
  %i.db = add i32 %i.cs, 3
  %i.dc = tail call i32 @llvm.umin.i32(i32 %i.ch, i32 %i.db)
  store i32 %i.dc, ptr %i.aw, align 8, !tbaa !135
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 %i.da, ptr %i.dd, align 4, !tbaa !134
  %i.de = icmp eq i32 %i.cq, 3
  br i1 %i.de, label %bb.l, label %.lr.ph.i

bb.l:                                             ; preds = %bb.k
  %i.df = load ptr, ptr %i.k, align 8, !tbaa !47
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.df, i32 noundef 16, ptr noundef nonnull @.str.13) #10
  br label %bb.bm

.lr.ph.i:                                         ; preds = %bb.k, %bb.j
  %i.dg = phi i32 [ %i.da, %bb.k ], [ 29, %bb.j ]
  %i.dh = phi i32 [ %i.cq, %bb.k ], [ 3, %bb.j ]  ; 2 uses
  %i.di = zext nneg i32 %i.dh to i64              ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr @nb_groups_tab, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !31  ; 2 uses
  %i.dl = zext i8 %i.dk to i32                    ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 6 uses
  store i32 %i.dl, ptr %i.dm, align 8, !tbaa !53
  %i.dn = getelementptr inbounds nuw i8, ptr @nb_mstr_exp_tab, i64 %i.di
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !31
  %i.dp = zext i8 %i.do to i32
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bt, i64 12 ; 3 uses
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !138
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 5 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.di
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !140
  %.not.i38 = icmp eq i32 %i.dh, 3
  %i.du = trunc nuw nsw i32 %i.dg to i8           ; 2 uses
  %i.dv = tail call i8 @llvm.umax.i8(i8 %i.dk, i8 1)
  %umax = zext i8 %i.dv to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.o ] ; 3 uses
  %i.dw = getelementptr inbounds nuw [32 x i8], ptr %i.dr, i64 %indvars.iv.i ; 4 uses
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %i.dt, i64 %indvars.iv.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.dw, ptr noundef nonnull align 8 dereferenceable(32) %i.dx, i64 32, i1 false), !tbaa.struct !142
  br i1 %.not.i38, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dy = load i8, ptr %i.dw, align 16, !tbaa !143
  %i.dz = sub i8 %i.dy, %i.du
  store i8 %i.dz, ptr %i.dw, align 16, !tbaa !143
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 2 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 2, !tbaa !31
  %i.ec = sub i8 %i.eb, %i.du
  store i8 %i.ec, ptr %i.ea, align 2, !tbaa !31
end_hunk_0
begin_hunk_1_@parse_audio:bb.a
.lr.ph29.i.i.i.new:                               ; preds = %.lr.ph29.i.i.i
  %unroll_iter = and i64 %wide.trip.count42.i.i.i, 254
  br label %bb.u

bb.t:                                             ; preds = %bb.t, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.t ] ; 2 uses
  %i.fh = phi i32 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.fr, %bb.t ] ; 3 uses
  %i.fi = lshr i32 %i.fh, 3
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 1, !tbaa !31
  %i.fm = tail call i32 @llvm.bswap.i32(i32 %i.fl)
  %i.fn = and i32 %i.fh, 7
  %i.fo = shl i32 %i.fm, %i.fn
  %i.fp = lshr i32 %i.fo, 30
  %i.fq = add i32 %i.fh, 2
  %i.fr = tail call i32 @llvm.umin.i32(i32 %i.fb, i32 %i.fq) ; 2 uses
  store i32 %i.fr, ptr %i.aw, align 8, !tbaa !135
  %i.fs = mul nuw nsw i32 %i.fp, 6
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i.i.i
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !41
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %.preheader26.i.i.i, label %bb.t, !llvm.loop !106

.preheader25.i.i.i.loopexit.unr-lcssa:            ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader25.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader25.i.i.i.loopexit.unr-lcssa, %.lr.ph29.i.i.i
  %indvars.iv39.i.i.i.epil.init = phi i64 [ 0, %.lr.ph29.i.i.i ], [ %indvars.iv.next40.i.i.i.1, %.preheader25.i.i.i.loopexit.unr-lcssa ]
  %.epil.init = phi i32 [ %.promoted30.i.i.i, %.lr.ph29.i.i.i ], [ %i.hc, %.preheader25.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod126 = trunc i8 %i.fd to i1
  tail call void @llvm.assume(i1 %lcmp.mod126)
  %i.fu = lshr i32 %.epil.init, 3
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 1, !tbaa !31
  %i.fy = tail call i32 @llvm.bswap.i32(i32 %i.fx)
  %i.fz = and i32 %.epil.init, 7
  %i.ga = shl i32 %i.fy, %i.fz
  %i.gb = lshr i32 %i.ga, 27
  %i.gc = add i32 %.epil.init, 5
  %i.gd = tail call i32 @llvm.umin.i32(i32 %i.fe, i32 %i.gc)
  store i32 %i.gd, ptr %i.aw, align 8, !tbaa !135
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv39.i.i.i.epil.init
  store i32 %i.gb, ptr %i.ge, align 4, !tbaa !41
  br label %.preheader25.i.i.i

.preheader25.i.i.i:                               ; preds = %.epil.preheader, %.preheader25.i.i.i.loopexit.unr-lcssa, %.preheader26.i.i.i
  br i1 %i.fa, label %.preheader.lr.ph.i.i.i, label %unbias_exponents.exit.i.i

.preheader.lr.ph.i.i.i:                           ; preds = %.preheader25.i.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %.02125.i.i, i64 1
  %i.gg = getelementptr inbounds nuw i8, ptr %.02125.i.i, i64 4
  br label %.preheader.i.i.i

bb.u:                                             ; preds = %bb.u, %.lr.ph29.i.i.i.new
  %indvars.iv39.i.i.i = phi i64 [ 0, %.lr.ph29.i.i.i.new ], [ %indvars.iv.next40.i.i.i.1, %bb.u ] ; 3 uses
  %i.gh = phi i32 [ %.promoted30.i.i.i, %.lr.ph29.i.i.i.new ], [ %i.hc, %bb.u ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph29.i.i.i.new ], [ %niter.next.1, %bb.u ]
  %i.gi = lshr i32 %i.gh, 3
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 1, !tbaa !31
  %i.gm = tail call i32 @llvm.bswap.i32(i32 %i.gl)
  %i.gn = and i32 %i.gh, 7
  %i.go = shl i32 %i.gm, %i.gn
  %i.gp = lshr i32 %i.go, 27
  %i.gq = add i32 %i.gh, 5
  %i.gr = tail call i32 @llvm.umin.i32(i32 %i.fe, i32 %i.gq) ; 4 uses
  store i32 %i.gr, ptr %i.aw, align 8, !tbaa !135
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv39.i.i.i
  store i32 %i.gp, ptr %i.gs, align 8, !tbaa !41
  %i.gt = lshr i32 %i.gr, 3
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 1, !tbaa !31
  %i.gx = tail call i32 @llvm.bswap.i32(i32 %i.gw)
  %i.gy = and i32 %i.gr, 7
  %i.gz = shl i32 %i.gx, %i.gy
  %i.ha = lshr i32 %i.gz, 27
  %i.hb = add i32 %i.gr, 5
  %i.hc = tail call i32 @llvm.umin.i32(i32 %i.fe, i32 %i.hb) ; 3 uses
  store i32 %i.hc, ptr %i.aw, align 8, !tbaa !135
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv39.i.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  store i32 %i.ha, ptr %i.he, align 4, !tbaa !41
  %indvars.iv.next40.i.i.i.1 = add nuw nsw i64 %indvars.iv39.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader25.i.i.i.loopexit.unr-lcssa, label %bb.u, !llvm.loop !107

.preheader.i.i.i:                                 ; preds = %._crit_edge.i.i.i, %.preheader.lr.ph.i.i.i
  %i.hf = phi i32 [ %i.ez, %.preheader.lr.ph.i.i.i ], [ %i.hv, %._crit_edge.i.i.i ]
  %indvars.iv47.i.i.i = phi i64 [ 0, %.preheader.lr.ph.i.i.i ], [ %indvars.iv.next48.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.035.i.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i.i ], [ %.1.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv47.i.i.i ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !31
  %.not37.i.i.i = icmp eq i8 %i.hh, 0
  br i1 %.not37.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph33.i.i.i

.lr.ph33.i.i.i:                                   ; preds = %.preheader.i.i.i
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv47.i.i.i
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !41
  %i.hk = load i16, ptr %i.gg, align 4, !tbaa !144
  %i.hl = sext i32 %.035.i.i.i to i64
  %i.hm = zext i16 %i.hk to i64
  %invariant.gep.i.i.i = getelementptr [4 x i8], ptr %i.ee, i64 %i.hm
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph33.i.i.i
  %indvars.iv44.i.i.i = phi i64 [ %i.hl, %.lr.ph33.i.i.i ], [ %indvars.iv.next45.i.i.i, %bb.v ] ; 3 uses
  %.02231.i.i.i = phi i32 [ 0, %.lr.ph33.i.i.i ], [ %i.hq, %bb.v ]
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.j, i64 %indvars.iv44.i.i.i
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !41
  %i.hp = add nsw i32 %i.ho, %i.hj
  %gep.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv44.i.i.i
  store i32 %i.hp, ptr %gep.i.i.i, align 4, !tbaa !41
  %i.hq = add nuw nsw i32 %.02231.i.i.i, 1        ; 2 uses
  %indvars.iv.next45.i.i.i = add nsw i64 %indvars.iv44.i.i.i, 1 ; 2 uses
  %i.hr = load i8, ptr %i.hg, align 1, !tbaa !31
  %i.hs = zext i8 %i.hr to i32
  %i.ht = icmp samesign ult i32 %i.hq, %i.hs
  br i1 %i.ht, label %bb.v, label %._crit_edge.loopexit.i.i.i, !llvm.loop !108

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.v
  %i.hu = trunc nsw i64 %indvars.iv.next45.i.i.i to i32
  %.pre.i.i.i = load i32, ptr %i.dq, align 4, !tbaa !138
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %.preheader.i.i.i
  %i.hv = phi i32 [ %i.hf, %.preheader.i.i.i ], [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ] ; 2 uses
  %.1.lcssa.i.i.i = phi i32 [ %.035.i.i.i, %.preheader.i.i.i ], [ %i.hu, %._crit_edge.loopexit.i.i.i ]
  %indvars.iv.next48.i.i.i = add nuw nsw i64 %indvars.iv47.i.i.i, 1 ; 2 uses
  %i.hw = sext i32 %i.hv to i64
  %i.hx = icmp slt i64 %indvars.iv.next48.i.i.i, %i.hw
  br i1 %i.hx, label %.preheader.i.i.i, label %unbias_exponents.exit.loopexit.i.i, !llvm.loop !109

unbias_exponents.exit.loopexit.i.i:               ; preds = %._crit_edge.i.i.i
  %.pre.pre.i.i = load i32, ptr %i.dm, align 8, !tbaa !53
  br label %unbias_exponents.exit.i.i

unbias_exponents.exit.i.i:                        ; preds = %unbias_exponents.exit.loopexit.i.i, %.preheader25.i.i.i
  %.pre.i.i = phi i32 [ %.pre.pre.i.i, %unbias_exponents.exit.loopexit.i.i ], [ %.pre29.i.i, %.preheader25.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.hy = getelementptr inbounds nuw i8, ptr %.02125.i.i, i64 4
  %i.hz = load i16, ptr %i.hy, align 4, !tbaa !144
  %i.ia = zext i16 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %.02224.i.i, i64 4
  %i.id = load i16, ptr %i.ic, align 4, !tbaa !144
  %i.ie = zext i16 %i.id to i64
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ie
  %i.ig = zext i8 %i.eg to i64
  %i.ih = shl nuw nsw i64 %i.ig, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ib, ptr nonnull align 4 %i.if, i64 %i.ih, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %unbias_exponents.exit.i.i
  %.pre30.i.i = phi i32 [ %.pre.i.i, %unbias_exponents.exit.i.i ], [ %.pre29.i.i, %bb.w ]
  %i.ii = phi i32 [ %.pre.i.i, %unbias_exponents.exit.i.i ], [ %i.ef, %bb.w ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.02125.i.i, i64 32
  %i.ik = sext i32 %i.ii to i64
  %i.il = icmp slt i64 %indvars.iv.next.i.i, %i.ik
  br i1 %i.il, label %bb.p, label %parse_exponents.exit.i, !llvm.loop !110

parse_exponents.exit.i:                           ; preds = %bb.x
  %.pr.i = load i32, ptr %i.dm, align 8, !tbaa !53 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  %i.im = icmp sgt i32 %.pr.i, 0                  ; 2 uses
  br i1 %i.im, label %bb.y, label %.._crit_edge_crit_edge.i.i

.._crit_edge_crit_edge.i.i:                       ; preds = %parse_exponents.exit.i
  %.pre79.i.i = load i32, ptr %i.aw, align 8, !tbaa !135
  %.pre81.i.i = load ptr, ptr %i.av, align 8, !tbaa !137
  %.pre83.i.i = load i32, ptr %i.ax, align 8, !tbaa !136
  br label %._crit_edge.i.i

bb.y:                                             ; preds = %parse_exponents.exit.i
  %wide.trip.count.i.i = zext nneg i32 %.pr.i to i64
  store i32 1, ptr %i.e, align 16, !tbaa !41
  %.pre76.i.i = load i32, ptr %i.ax, align 8, !tbaa !136 ; 9 uses
  %.pre77.i.i = load ptr, ptr %i.av, align 8, !tbaa !137 ; 9 uses
  %.pre.i67.i = load i32, ptr %i.aw, align 8, !tbaa !135 ; 3 uses
  %i.in = lshr i32 %.pre.i67.i, 3
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %.pre77.i.i, i64 %i.io
  %i.iq = load i32, ptr %i.ip, align 1, !tbaa !31
  %i.ir = tail call i32 @llvm.bswap.i32(i32 %i.iq)
  %i.is = and i32 %.pre.i67.i, 7
  %i.it = shl i32 %i.ir, %i.is
  %i.iu = lshr i32 %i.it, 30
  %i.iv = add i32 %.pre.i67.i, 2
  %i.iw = tail call i32 @llvm.umin.i32(i32 %.pre76.i.i, i32 %i.iv) ; 4 uses
  store i32 %i.iw, ptr %i.aw, align 8, !tbaa !135
  store i32 %i.iu, ptr %i.f, align 16, !tbaa !41
  %i.ix = lshr i32 %i.iw, 3
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %.pre77.i.i, i64 %i.iy
  %i.ja = load i32, ptr %i.iz, align 1, !tbaa !31
  %i.jb = tail call i32 @llvm.bswap.i32(i32 %i.ja)
  %i.jc = and i32 %i.iw, 7
  %i.jd = shl i32 %i.jb, %i.jc
  %i.je = lshr i32 %i.jd, 29
  %i.jf = add i32 %i.iw, 3
  %i.jg = tail call i32 @llvm.umin.i32(i32 %.pre76.i.i, i32 %i.jf) ; 5 uses
  store i32 %i.jg, ptr %i.aw, align 8, !tbaa !135
  store i32 %i.je, ptr %i.g, align 16, !tbaa !41
  %i.jh = lshr i32 %i.jg, 3
  %i.ji = zext nneg i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw i8, ptr %.pre77.i.i, i64 %i.ji
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !31
  %i.jl = icmp slt i32 %i.jg, %.pre76.i.i
  %i.jm = zext i1 %i.jl to i32
  %spec.select.i58.peel.i.i = add i32 %i.jg, %i.jm ; 3 uses
  %i.jn = zext i8 %i.jk to i32
  %i.jo = and i32 %i.jg, 7
  %i.jp = shl nuw nsw i32 %i.jn, %i.jo
  %i.jq = lshr i32 %i.jp, 7
  store i32 %spec.select.i58.peel.i.i, ptr %i.aw, align 8, !tbaa !135
  %i.jr = and i32 %i.jq, 1
  store i32 %i.jr, ptr %i.h, align 16, !tbaa !41
  %exitcond.peel.not.i.i = icmp eq i32 %.pr.i, 1
  br i1 %exitcond.peel.not.i.i, label %._crit_edge.i.i, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %bb.y, %bb.z
  %i.js = phi i32 [ %i.ll, %bb.z ], [ %spec.select.i58.peel.i.i, %bb.y ] ; 4 uses
  %indvars.iv.i68.i = phi i64 [ %indvars.iv.next.i70.i, %bb.z ], [ 1, %bb.y ] ; 6 uses
  %i.jt = lshr i32 %i.js, 3
  %i.ju = zext nneg i32 %i.jt to i64
  %i.jv = getelementptr inbounds nuw i8, ptr %.pre77.i.i, i64 %i.ju
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !31
  %i.jx = icmp slt i32 %i.js, %.pre76.i.i
  %i.jy = zext i1 %i.jx to i32
  %spec.select.i.i69.i = add i32 %i.js, %i.jy     ; 5 uses
  %i.jz = zext i8 %i.jw to i32
  %i.ka = and i32 %i.js, 7
  store i32 %spec.select.i.i69.i, ptr %i.aw, align 8, !tbaa !135
  %i.kb = lshr exact i32 128, %i.ka
  %i.kc = and i32 %i.kb, %i.jz
  %i.kd = icmp ne i32 %i.kc, 0                    ; 2 uses
  %i.ke = zext i1 %i.kd to i32
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i68.i
  store i32 %i.ke, ptr %i.kf, align 4, !tbaa !41
  br i1 %i.kd, label %._crit_edge78.i.i, label %4

._crit_edge78.i.i:                                ; preds = %.peel.next.i.i
  %i.kg = lshr i32 %spec.select.i.i69.i, 3
  %i.kh = zext nneg i32 %i.kg to i64
  %i.ki = getelementptr inbounds nuw i8, ptr %.pre77.i.i, i64 %i.kh
  %i.kj = load i32, ptr %i.ki, align 1, !tbaa !31
  %i.kk = tail call i32 @llvm.bswap.i32(i32 %i.kj)
  %i.kl = and i32 %spec.select.i.i69.i, 7
  %i.km = shl i32 %i.kk, %i.kl
  %i.kn = lshr i32 %i.km, 30
  %i.ko = add i32 %spec.select.i.i69.i, 2
  %i.kp = tail call i32 @llvm.umin.i32(i32 %.pre76.i.i, i32 %i.ko) ; 4 uses
  store i32 %i.kp, ptr %i.aw, align 8, !tbaa !135
  %i.kq = lshr i32 %i.kp, 3
  %i.kr = zext nneg i32 %i.kq to i64
  %i.ks = getelementptr inbounds nuw i8, ptr %.pre77.i.i, i64 %i.kr
  %i.kt = load i32, ptr %i.ks, align 1, !tbaa !31
  %i.ku = tail call i32 @llvm.bswap.i32(i32 %i.kt)
  %i.kv = and i32 %i.kp, 7
  %i.kw = shl i32 %i.ku, %i.kv
  %i.kx = lshr i32 %i.kw, 29
  %i.ky = add i32 %i.kp, 3
  %i.kz = tail call i32 @llvm.umin.i32(i32 %.pre76.i.i, i32 %i.ky) ; 5 uses
  store i32 %i.kz, ptr %i.aw, align 8, !tbaa !135
  %i.la = lshr i32 %i.kz, 3
  %i.lb = zext nneg i32 %i.la to i64
  %i.lc = getelementptr inbounds nuw i8, ptr %.pre77.i.i, i64 %i.lb
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !31
  %i.le = icmp slt i32 %i.kz, %.pre76.i.i
  %i.lf = zext i1 %i.le to i32
  %spec.select.i58.i.i = add i32 %i.kz, %i.lf     ; 2 uses
  %i.lg = zext i8 %i.ld to i32
  %i.lh = and i32 %i.kz, 7
  %i.li = shl nuw nsw i32 %i.lg, %i.lh
  %i.lj = lshr i32 %i.li, 7
  store i32 %spec.select.i58.i.i, ptr %i.aw, align 8, !tbaa !135
  %i.lk = and i32 %i.lj, 1
  br label %bb.z

4:                                                ; preds = %.peel.next.i.i
  %5 = add nsw i64 %indvars.iv.i68.i, -1          ; 3 uses
  %6 = getelementptr inbounds [4 x i8], ptr %i.f, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !41
  %8 = getelementptr inbounds [4 x i8], ptr %i.g, i64 %5
  %9 = load i32, ptr %8, align 4, !tbaa !41
  %10 = getelementptr inbounds [4 x i8], ptr %i.h, i64 %5
  %11 = load i32, ptr %10, align 4, !tbaa !41
  br label %bb.z

bb.z:                                             ; preds = %4, %._crit_edge78.i.i
  %.sink105.i = phi i32 [ %i.kn, %._crit_edge78.i.i ], [ %7, %4 ]
  %.sink.i = phi i32 [ %i.kx, %._crit_edge78.i.i ], [ %9, %4 ]
  %.sink.i.i = phi i32 [ %i.lk, %._crit_edge78.i.i ], [ %11, %4 ]
  %i.ll = phi i32 [ %spec.select.i58.i.i, %._crit_edge78.i.i ], [ %spec.select.i.i69.i, %4 ] ; 2 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i68.i
  store i32 %.sink105.i, ptr %i.lm, align 4, !tbaa !41
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i68.i
  store i32 %.sink.i, ptr %i.ln, align 4, !tbaa !41
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i68.i
  store i32 %.sink.i.i, ptr %i.lo, align 4, !tbaa !41
  %indvars.iv.next.i70.i = add nuw nsw i64 %indvars.iv.i68.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i70.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.peel.next.i.i, !llvm.loop !111

._crit_edge.i.i:                                  ; preds = %bb.z, %bb.y, %.._crit_edge_crit_edge.i.i
  %i.lp = phi i32 [ %.pre83.i.i, %.._crit_edge_crit_edge.i.i ], [ %.pre76.i.i, %bb.y ], [ %.pre76.i.i, %bb.z ] ; 2 uses
  %i.lq = phi ptr [ %.pre81.i.i, %.._crit_edge_crit_edge.i.i ], [ %.pre77.i.i, %bb.y ], [ %.pre77.i.i, %bb.z ] ; 2 uses
  %i.lr = phi i32 [ %.pre79.i.i, %.._crit_edge_crit_edge.i.i ], [ %spec.select.i58.peel.i.i, %bb.y ], [ %i.ll, %bb.z ] ; 4 uses
  %i.ls = lshr i32 %i.lr, 3
  %i.lt = zext nneg i32 %i.ls to i64
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.lt
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !31
  %i.lw = icmp slt i32 %i.lr, %i.lp
  %i.lx = zext i1 %i.lw to i32
  %spec.select.i59.i.i = add i32 %i.lr, %i.lx     ; 4 uses
  %i.ly = zext i8 %i.lv to i32
  %i.lz = and i32 %i.lr, 7
  store i32 %spec.select.i59.i.i, ptr %i.aw, align 8, !tbaa !135
  %i.ma = lshr exact i32 128, %i.lz
  %i.mb = and i32 %i.ma, %i.ly
  %.not.i60.i = icmp eq i32 %i.mb, 0
  br i1 %.not.i60.i, label %bb.aa, label %parse_bit_alloc.exit.i

bb.aa:                                            ; preds = %._crit_edge.i.i
  %i.mc = lshr i32 %spec.select.i59.i.i, 3
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.md
  %i.mf = load i32, ptr %i.me, align 1, !tbaa !31
  %i.mg = tail call i32 @llvm.bswap.i32(i32 %i.mf)
  %i.mh = and i32 %spec.select.i59.i.i, 7
  %i.mi = shl i32 %i.mg, %i.mh
  %i.mj = lshr i32 %i.mi, 24                      ; 2 uses
  %i.mk = add i32 %spec.select.i59.i.i, 8
  %i.ml = tail call i32 @llvm.umin.i32(i32 %i.lp, i32 %i.mk)
  store i32 %i.ml, ptr %i.aw, align 8, !tbaa !135
  %.not54.i.i = icmp eq i32 %i.mj, 0
  br i1 %.not54.i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.mm = getelementptr inbounds nuw i8, ptr %i.bt, i64 1520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1216) %i.mm, i8 0, i64 1216, i1 false)
  br label %.loopexit.i

bb.ac:                                            ; preds = %bb.aa
  br i1 %i.im, label %.lr.ph67.i.i, label %.loopexit.i.thread

.loopexit.i.thread:                               ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br label %parse_mantissas.exit.i

.lr.ph67.i.i:                                     ; preds = %bb.ac
  %i.mn = getelementptr inbounds nuw i8, ptr %i.bt, i64 1520 ; 3 uses
  %i.mo = shl nuw nsw i32 %i.mj, 4
  %i.mp = add nsw i32 %i.mo, -1024                ; 3 uses
  %wide.trip.count73.i.i = zext nneg i32 %.pr.i to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ao, %.lr.ph67.i.i
  %indvars.iv70.i.i = phi i64 [ 0, %.lr.ph67.i.i ], [ %indvars.iv.next71.i.i, %bb.ao ] ; 6 uses
  %.05064.i.i = phi ptr [ %i.dr, %.lr.ph67.i.i ], [ %i.abe, %bb.ao ] ; 7 uses
  %.05163.i.i = phi ptr [ null, %.lr.ph67.i.i ], [ %.05064.i.i, %bb.ao ]
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv70.i.i
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !41
  %.not55.i.i = icmp eq i32 %i.mr, 0
  br i1 %.not55.i.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv70.i.i
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !41
  %.not56.i.i = icmp eq i32 %i.mt, 0
  br i1 %.not56.i.i, label %bb.an, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.mu = load i8, ptr %.05064.i.i, align 8, !tbaa !143 ; 8 uses
  %i.mv = zext i8 %i.mu to i32
  %i.mw = getelementptr inbounds nuw i8, ptr %.05064.i.i, i64 16
  %i.mx = load i8, ptr %i.mw, align 8, !tbaa !56  ; 2 uses
  %i.my = load i32, ptr %i.az, align 4, !tbaa !146
  %i.mz = getelementptr inbounds nuw i8, ptr %.05064.i.i, i64 4
  %i.na = load i16, ptr %i.mz, align 4, !tbaa !144
  %i.nb = zext i16 %i.na to i64                   ; 2 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.nb ; 2 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %i.nb ; 3 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv70.i.i
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !41
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv70.i.i
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !41
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv70.i.i
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.nk = add nsw i32 %i.my, -1
  %i.nl = sext i32 %i.nk to i64                   ; 2 uses
  %i.nm = getelementptr inbounds i8, ptr @dc_code_tab, i64 %i.nl
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !31
  %i.no = getelementptr inbounds i8, ptr @ht_code_tab, i64 %i.nl
  %i.np = load i8, ptr %i.no, align 1, !tbaa !31
  %i.nq = sext i32 %i.nh to i64
  %i.nr = getelementptr inbounds [2 x i8], ptr @fast_gain_tab, i64 %i.nq
  %i.ns = load i16, ptr %i.nr, align 2, !tbaa !141
  %i.nt = zext i16 %i.ns to i32                   ; 2 uses
  %i.nu = zext i8 %i.nn to i64                    ; 4 uses
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr @slow_decay_tab, i64 %i.nu
  %i.nw = sext i32 %i.nj to i64                   ; 4 uses
  %i.nx = getelementptr inbounds [2 x i8], ptr %i.nv, i64 %i.nw
  %i.ny = load i16, ptr %i.nx, align 2, !tbaa !141
  %i.nz = zext i16 %i.ny to i32
  %i.oa = zext i8 %i.mx to i64                    ; 7 uses
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr @misc_decay_tab, i64 %i.oa
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %i.nu
  %i.od = getelementptr inbounds [2 x i8], ptr %i.oc, i64 %i.nw
  %i.oe = load i16, ptr %i.od, align 2, !tbaa !141
  %i.of = zext i16 %i.oe to i32
  %i.og = getelementptr inbounds nuw [200 x i8], ptr @slow_gain_tab, i64 %i.oa
  %i.oh = getelementptr inbounds [100 x i8], ptr %i.og, i64 %i.nw
  %i.oi = getelementptr inbounds nuw [400 x i8], ptr @fast_decay_tab, i64 %i.oa
  %i.oj = getelementptr inbounds nuw [200 x i8], ptr %i.oi, i64 %i.nu
  %i.ok = getelementptr inbounds [100 x i8], ptr %i.oj, i64 %i.nw
  %i.ol = getelementptr inbounds nuw [248 x i8], ptr @fast_gain_adj_tab, i64 %i.oa
  %i.om = getelementptr inbounds nuw [124 x i8], ptr %i.ol, i64 %i.nu
  %i.on = getelementptr inbounds nuw [300 x i8], ptr @hearing_thresh_tab, i64 %i.oa
  %i.oo = zext i8 %i.np to i64
  %i.op = getelementptr inbounds nuw [100 x i8], ptr %i.on, i64 %i.oo ; 2 uses
  %.not105.i.i.i = icmp eq i8 %i.mu, 0            ; 2 uses
  br i1 %.not105.i.i.i, label %._crit_edge100.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.af
  %wide.trip.count.i.i61.i = zext i8 %i.mu to i64 ; 7 uses
  %min.iters.check111 = icmp ult i8 %i.mu, 8
  br i1 %min.iters.check111, label %.lr.ph.i.i62.i.preheader, label %vector.ph112

vector.ph112:                                     ; preds = %.lr.ph.preheader.i.i.i
  %n.vec113 = and i64 %wide.trip.count.i.i61.i, 248 ; 3 uses
  br label %vector.body114

vector.body114:                                   ; preds = %vector.body114, %vector.ph112
  %index115 = phi i64 [ 0, %vector.ph112 ], [ %index.next118, %vector.body114 ] ; 3 uses
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %index115 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %wide.load116 = load <4 x i32>, ptr %i.oq, align 4, !tbaa !41
  %wide.load117 = load <4 x i32>, ptr %i.or, align 4, !tbaa !41
  %i.os = shl <4 x i32> %wide.load116, splat (i32 6)
  %i.ot = shl <4 x i32> %wide.load117, splat (i32 6)
  %i.ou = sub <4 x i32> splat (i32 3072), %i.os
  %i.ov = sub <4 x i32> splat (i32 3072), %i.ot
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index115 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  store <4 x i32> %i.ou, ptr %i.ow, align 16, !tbaa !41
  store <4 x i32> %i.ov, ptr %i.ox, align 16, !tbaa !41
  %index.next118 = add nuw i64 %index115, 8       ; 2 uses
  %i.oy = icmp eq i64 %index.next118, %n.vec113
  br i1 %i.oy, label %middle.block119, label %vector.body114, !llvm.loop !112

middle.block119:                                  ; preds = %vector.body114
  %cmp.n120 = icmp eq i64 %n.vec113, %wide.trip.count.i.i61.i
  br i1 %cmp.n120, label %.lr.ph93.preheader.i.i.i, label %.lr.ph.i.i62.i.preheader

.lr.ph.i.i62.i.preheader:                         ; preds = %.lr.ph.preheader.i.i.i, %middle.block119
  %indvars.iv.i.i63.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %n.vec113, %middle.block119 ]
  br label %.lr.ph.i.i62.i

.lr.ph.i.i62.i:                                   ; preds = %.lr.ph.i.i62.i.preheader, %.lr.ph.i.i62.i
  %indvars.iv.i.i63.i = phi i64 [ %indvars.iv.next.i.i64.i, %.lr.ph.i.i62.i ], [ %indvars.iv.i.i63.i.ph, %.lr.ph.i.i62.i.preheader ] ; 3 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.i.i63.i
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !41
  %i.pb = shl i32 %i.pa, 6
  %i.pc = sub i32 3072, %i.pb
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i.i63.i
  store i32 %i.pc, ptr %i.pd, align 4, !tbaa !41
  %indvars.iv.next.i.i64.i = add nuw nsw i64 %indvars.iv.i.i63.i, 1 ; 2 uses
  %exitcond.not.i.i65.i = icmp eq i64 %indvars.iv.next.i.i64.i, %wide.trip.count.i.i61.i
  br i1 %exitcond.not.i.i65.i, label %.lr.ph93.preheader.i.i.i, label %.lr.ph.i.i62.i, !llvm.loop !113

.lr.ph93.preheader.i.i.i:                         ; preds = %.lr.ph.i.i62.i, %middle.block119
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr @band_ofs_tab, i64 %i.oa
  %i.pf = sext i32 %i.nf to i64
  %i.pg = getelementptr inbounds i8, ptr %i.pe, i64 %i.pf
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !31
  %i.pi = zext i8 %i.ph to i64
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr %i.om, i64 %i.pi
  br label %.lr.ph93.i.i.i

.preheader87.thread.i.i.i:                        ; preds = %.lr.ph93.i.i.i
  %i.pk = getelementptr inbounds nuw i8, ptr @band_low_tab, i64 %i.oa
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !31  ; 2 uses
  %i.pm = zext i8 %i.pl to i32
  %.294129.i.i.i = add nsw i32 %i.mv, -1          ; 2 uses
  %i.pn = icmp samesign ugt i32 %.294129.i.i.i, %i.pm
  br i1 %i.pn, label %.lr.ph97.preheader.i.i.i, label %.lr.ph99.preheader.i.i.i

.lr.ph97.preheader.i.i.i:                         ; preds = %.preheader87.thread.i.i.i
end_hunk_1
