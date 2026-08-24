Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ffv1enc?download=true
inline.NumInlined: 336
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 53
begin_hunk_0_@encode_frame:bb.a
  %indvars.iv314 = phi i64 [ %indvars.iv.next315, %bb.bn ], [ 1, %bb.bj ] ; 2 uses
  %i.tb = phi i32 [ %i.uk, %bb.bn ], [ %i.sz, %bb.bj ]
  %.0223271 = phi ptr [ %i.uj, %bb.bn ], [ %i.sy, %bb.bj ] ; 6 uses
  %i.tc = load ptr, ptr %i.d, align 8, !tbaa !132
  %i.td = getelementptr inbounds nuw [5008 x i8], ptr %i.tc, i64 %indvars.iv314 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 664
  %i.tf = load i32, ptr %i.te, align 8, !tbaa !192 ; 9 uses
  %i.tg = load i32, ptr %i.eo, align 8, !tbaa !175
  %i.th = sdiv i32 %i.tg, %i.tb
  %i.ti = icmp slt i32 %i.tf, %i.th
  br i1 %i.ti, label %bb.bk, label %.loopexit318

.loopexit318:                                     ; preds = %.peel.next, %bb.be
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.6, i32 noundef 2001) #19
  tail call void @abort() #21
  unreachable

bb.bk:                                            ; preds = %.peel.next
  %i.tj = getelementptr inbounds nuw i8, ptr %i.td, i64 632
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !187
  %i.tl = sext i32 %i.tf to i64                   ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0223271, ptr align 1 %i.tk, i64 %i.tl, i1 false)
  %i.tm = icmp slt i32 %i.tf, 16777216
  br i1 %i.tm, label %bb.bl, label %.loopexit319

.loopexit319:                                     ; preds = %bb.bk, %bb.bf
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.6, i32 noundef 2003) #19
  tail call void @abort() #21
  unreachable

bb.bl:                                            ; preds = %bb.bk
  %i.tn = trunc i32 %i.tf to i8
  %i.to = getelementptr inbounds i8, ptr %.0223271, i64 %i.tl ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 2
  store i8 %i.tn, ptr %i.tp, align 1, !tbaa !41
  %i.tq = lshr i32 %i.tf, 8
  %i.tr = trunc i32 %i.tq to i8
  %i.ts = getelementptr inbounds nuw i8, ptr %i.to, i64 1
  store i8 %i.tr, ptr %i.ts, align 1, !tbaa !41
  %i.tt = lshr i32 %i.tf, 16
  %i.tu = trunc i32 %i.tt to i8
  store i8 %i.tu, ptr %i.to, align 1, !tbaa !41
  %i.tv = add nsw i32 %i.tf, 3                    ; 2 uses
  %i.tw = load i32, ptr %i.rn, align 8, !tbaa !68
  %.not236 = icmp eq i32 %i.tw, 0
  br i1 %.not236, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.tx = add nsw i32 %i.tf, 4
  %i.ty = sext i32 %i.tv to i64
  %i.tz = getelementptr inbounds i8, ptr %.0223271, i64 %i.ty
  store i8 0, ptr %i.tz, align 1, !tbaa !41
  %i.ua = tail call ptr @av_crc_get_table(i32 noundef 3) #19
  %i.ub = load i32, ptr %i.ro, align 8, !tbaa !73 ; 2 uses
  %i.uc = sext i32 %i.tx to i64                   ; 2 uses
  %i.ud = tail call i32 @av_crc(ptr noundef %i.ua, i32 noundef %i.ub, ptr noundef nonnull %.0223271, i64 noundef %i.uc) #20
  %.not237 = icmp eq i32 %i.ub, 0
  %i.ue = select i1 %.not237, i32 0, i32 -1931968106
  %i.uf = xor i32 %i.ue, %i.ud
  %i.ug = getelementptr inbounds i8, ptr %.0223271, i64 %i.uc
  store i32 %i.uf, ptr %i.ug, align 1, !tbaa !41
  %i.uh = add nsw i32 %i.tf, 8
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.1 = phi i32 [ %i.uh, %bb.bm ], [ %i.tv, %bb.bl ]
  %i.ui = sext i32 %.1 to i64
  %i.uj = getelementptr inbounds i8, ptr %.0223271, i64 %i.ui ; 2 uses
  %indvars.iv.next315 = add nuw nsw i64 %indvars.iv314, 1 ; 2 uses
  %i.uk = load i32, ptr %i.qe, align 4, !tbaa !129 ; 2 uses
  %i.ul = sext i32 %i.uk to i64
  %i.um = icmp slt i64 %indvars.iv.next315, %i.ul
  br i1 %i.um, label %.peel.next, label %._crit_edge275, !llvm.loop !193

._crit_edge275:                                   ; preds = %bb.bn, %bb.bj, %._crit_edge
  %.0223.lcssa = phi ptr [ %i.rk, %._crit_edge ], [ %i.sy, %bb.bj ], [ %i.uj, %bb.bn ]
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.uo = load i32, ptr %i.un, align 8, !tbaa !87
  %i.up = and i32 %i.uo, 512
  %.not234 = icmp eq i32 %i.up, 0
  br i1 %.not234, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %._crit_edge275
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !152
  store i8 0, ptr %i.ur, align 1, !tbaa !41
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %._crit_edge275
  %i.us = getelementptr inbounds nuw i8, ptr %i.c, i64 4216 ; 2 uses
  %i.ut = load i64, ptr %i.us, align 8, !tbaa !94
  %i.uu = add nsw i64 %i.ut, 1
  store i64 %i.uu, ptr %i.us, align 8, !tbaa !94
  %i.uv = load ptr, ptr %i.em, align 8, !tbaa !173
  %i.uw = ptrtoint ptr %.0223.lcssa to i64
  %i.ux = ptrtoint ptr %i.uv to i64
  %i.uy = sub i64 %i.uw, %i.ux
  %i.uz = trunc i64 %i.uy to i32
  store i32 %i.uz, ptr %i.eo, align 8, !tbaa !175
  %i.va = getelementptr inbounds nuw i8, ptr %i.c, i64 4224
  %i.vb = load i32, ptr %i.va, align 8, !tbaa !177
  %i.vc = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.vd = load i32, ptr %i.vc, align 8, !tbaa !194
  %i.ve = or i32 %i.vd, %i.vb
  store i32 %i.ve, ptr %i.vc, align 8, !tbaa !194
  store i32 1, ptr %3, align 4, !tbaa !63
  br label %bb.bq

bb.bq:                                            ; preds = %bb.o, %bb.b, %._crit_edge300, %bb.bp
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.bp ], [ 0, %._crit_edge300 ], [ %i.ek, %bb.o ]
  ret i32 %.0
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @encode_close(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 25224 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !131
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 25240
  br label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 496
  tail call void @av_freep(ptr noundef nonnull %i.g) #19
  tail call void @ff_ffv1_close(ptr noundef nonnull %i.b) #19
  ret i32 0

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv17 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next18, %bb.c ] ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !132
  %i.i = getelementptr inbounds nuw [5008 x i8], ptr %i.h, i64 %indvars.iv17 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4976
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4848
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1 ; 2 uses
  %i.l = load i32, ptr %i.c, align 8, !tbaa !131
  %i.m = sext i32 %i.l to i64
  %i.n = icmp slt i64 %indvars.iv.next18, %i.m
  br i1 %i.n, label %bb.b, label %._crit_edge, !llvm.loop !195

bb.d:                                             ; preds = %bb.b, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  tail call void @av_freep(ptr noundef nonnull %i.o) #19
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  tail call void @av_freep(ptr noundef nonnull %i.p) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.c, label %bb.d, !llvm.loop !196
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log2.f64(double) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @av_default_item_name(ptr noundef) #3

declare i32 @ff_ffv1_common_init(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_ffv1_init_slice_contexts(ptr noundef) local_unnamed_addr #3

declare i32 @ff_ffv1_init_slices_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

declare i32 @ff_alloc_packet(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @encode_slice(ptr noundef %0, ptr noundef initializes((44, 48)) %1) #12 {
bb.a:
  %i.a = alloca [4 x [3 x ptr]], align 16         ; 19 uses
  %i.b = alloca [4 x i32], align 16               ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca [4 x [3 x ptr]], align 16         ; 19 uses
  %i.e = alloca [4 x i32], align 16               ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca [11 x float], align 16            ; 5 uses
  %i.h = alloca [11 x [1025 x i32]], align 16     ; 4 uses
  %i.i = alloca [1025 x [23 x float]], align 16   ; 6 uses
  %i.j = alloca [64 x [2 x ptr]], align 16        ; 7 uses
  %i.k = alloca [64 x [2 x ptr]], align 16        ; 7 uses
  %i.l = alloca [64 x [2 x ptr]], align 16        ; 7 uses
  %i.m = alloca [64 x [2 x ptr]], align 16        ; 7 uses
  %i.n = alloca [2 x [32 x i8]], align 16         ; 11 uses
  %i.o = alloca [32 x i8], align 16               ; 17 uses
  %i.p = alloca [15 x i32], align 16              ; 31 uses
  %i.q = alloca [15 x i32], align 16              ; 31 uses
  %2 = alloca %struct.RangeCoder, align 8         ; 4 uses
  %i.r = alloca [4 x ptr], align 16               ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !9    ; 35 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !143  ; 30 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !144  ; 17 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !179  ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !181 ; 15 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 4304 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !176 ; 19 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !130
  %i.ag = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.af) #19
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !197 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 229 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(560) %2, ptr noundef nonnull align 8 dereferenceable(560) %i.aj, i64 560, i1 false), !tbaa.struct !199
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 4200 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !54
  %i.am = sub nsw i32 0, %i.v
  %i.an = ashr i32 %i.am, %i.al                   ; 2 uses
  %i.ao = sub i32 0, %i.an                        ; 9 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 4204 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !55
  %i.ar = sub nsw i32 0, %i.x
  %i.as = ashr i32 %i.ar, %i.aq                   ; 2 uses
  %i.at = sub nsw i32 0, %i.as                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #19
  %i.au = load ptr, ptr %i.ad, align 8, !tbaa !62 ; 8 uses
  %i.av = mul i32 %i.ai, %i.z
  %i.aw = sext i32 %i.av to i64                   ; 19 uses
  %i.ax = getelementptr i8, ptr %i.au, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 64 ; 21 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !63
  %i.ba = mul i32 %i.az, %i.ab
  %i.bb = sext i32 %i.ba to i64                   ; 8 uses
  %i.bc = getelementptr i8, ptr %i.ax, i64 %i.bb  ; 19 uses
  store ptr %i.bc, ptr %i.r, align 16, !tbaa !62
  %i.bd = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !62 ; 2 uses
  %.not = icmp eq ptr %i.bf, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 %i.aw
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 68
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !63
  %i.bj = mul nsw i32 %i.bi, %i.ab
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds i8, ptr %i.bg, i64 %i.bk
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.bm = phi ptr [ %i.bl, %bb.b ], [ null, %bb.a ] ; 11 uses
  store ptr %i.bm, ptr %i.bd, align 8, !tbaa !62
  %i.bn = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !62 ; 2 uses
  %.not307 = icmp eq ptr %i.bp, null
  br i1 %.not307, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %i.aw
  %i.br = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !63
  %i.bt = mul nsw i32 %i.bs, %i.ab
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %i.bq, i64 %i.bu
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.bw = phi ptr [ %i.bv, %bb.d ], [ null, %bb.c ] ; 10 uses
  store ptr %i.bw, ptr %i.bn, align 16, !tbaa !62
  %i.bx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !62 ; 2 uses
  %.not308 = icmp eq ptr %i.bz, null
  br i1 %.not308, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 %i.aw
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ad, i64 76
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !63
  %i.cd = mul nsw i32 %i.cc, %i.ab
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds i8, ptr %i.ca, i64 %i.ce
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.cg = phi ptr [ %i.cf, %bb.f ], [ null, %bb.e ] ; 5 uses
  store ptr %i.cg, ptr %i.bx, align 8, !tbaa !62
  %i.ch = getelementptr inbounds nuw i8, ptr %i.t, i64 4316
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !40
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 11 uses
  store i32 0, ptr %i.cj, align 4, !tbaa !200
  %i.ck = getelementptr inbounds nuw i8, ptr %i.t, i64 4176 ; 5 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !38
  %i.cm = icmp sgt i32 %i.cl, 3
  br i1 %i.cm, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.cn = getelementptr inbounds nuw i8, ptr %i.t, i64 25152
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !44
  %i.cp = icmp eq i32 %i.co, 1
  br i1 %i.cp, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(60) %i.q, i8 0, i64 60, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.t, i64 25204
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !45
  %i.cs = icmp slt i32 %i.cr, 9
  %.not.i = icmp eq ptr %i.bm, null
  %i.ct = getelementptr inbounds nuw i8, ptr %i.t, i64 4208
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !56 ; 2 uses
  %i.cv = shl i32 %i.cu, 1
  %i.cw = add i32 %i.cv, 6
  %i.cx = icmp sgt i32 %i.x, 0
  br i1 %i.cx, label %.preheader133.lr.ph.i, label %choose_rct_params.exit

.preheader133.lr.ph.i:                            ; preds = %bb.i
  %i.cy = load ptr, ptr %1, align 8, !tbaa !201   ; 4 uses
  %i.cz = icmp sgt i32 %i.v, 0
  %i.da = getelementptr inbounds nuw i8, ptr %i.t, i64 25180
  %i.db = icmp ne i32 %i.cu, 0
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ad, i64 68
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  br i1 %i.cz, label %.preheader133.us.preheader.i, label %choose_rct_params.exit

.preheader133.us.preheader.i:                     ; preds = %.preheader133.lr.ph.i
  %i.de = zext nneg i32 %i.v to i64               ; 3 uses
  %i.df = sext i32 %i.cw to i64
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %i.de ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.de, 2
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx.i ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.dl = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.dn = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.do = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %3 = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %4 = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  %5 = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.dp = getelementptr inbounds nuw i8, ptr %i.q, i64 44
  %i.dq = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.dr = getelementptr inbounds nuw i8, ptr %i.q, i64 52
  %i.ds = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  br label %.preheader133.us.i

.preheader133.us.i:                               ; preds = %._crit_edge.us.i, %.preheader133.us.preheader.i
  %.lcssa201230.i = phi i32 [ %29, %._crit_edge.us.i ], [ 0, %.preheader133.us.preheader.i ]
  %.lcssa199228.i = phi i32 [ %30, %._crit_edge.us.i ], [ 0, %.preheader133.us.preheader.i ]
  %.lcssa197226.i = phi i32 [ %31, %._crit_edge.us.i ], [ 0, %.preheader133.us.preheader.i ]
  %.lcssa195224.i = phi i32 [ %32, %._crit_edge.us.i ], [ 0, %.preheader133.us.preheader.i ]
  %.lcssa193222.i = phi i32 [ %33, %._crit_edge.us.i ], [ 0, %.preheader133.us.preheader.i ]
  %.lcssa191220.i = phi i32 [ %34, %._crit_edge.us.i ], [ 0, %.preheader133.us.preheader.i ]
  %.lcssa189218.i = phi i32 [ %i.jq, %._crit_edge.us.i ], [ 0, %.preheader133.us.preheader.i ]
  %.lcssa187216.i = phi i32 [ %i.jr, %._crit_edge.us.i ], [ 0, %.preheader133.us.preheader.i ]
  %.lcssa185214.i.a = phi i32 [ %i.js, %._crit_edge.us.i ], [ 0, %.preheader133.us.preheader.i ]
  %.lcssa183212.i.a = phi i32 [ %i.jt, %._crit_edge.us.i ], [ 0, %.preheader133.us.preheader.i ]
  %.lcssa181210.i.a = phi i32 [ %i.ju, %._crit_edge.us.i ], [ 0, %.preheader133.us.preheader.i ]
  %.lcssa179208.i.a = phi i32 [ %i.jv, %._crit_edge.us.i ], [ 0, %.preheader133.us.preheader.i ]
  %.lcssa177206.i.a = phi i32 [ %i.jw, %._crit_edge.us.i ], [ 0, %.preheader133.us.preheader.i ]
  %.lcssa175204.i.a = phi i32 [ %i.jx, %._crit_edge.us.i ], [ 0, %.preheader133.us.preheader.i ]
  %.lcssa173203.i.a = phi i32 [ %i.jy, %._crit_edge.us.i ], [ 0, %.preheader133.us.preheader.i ]
  %i.dt = phi i32 [ %i.jz, %._crit_edge.us.i ], [ 0, %.preheader133.us.preheader.i ]
  %i.du = phi i32 [ %i.ka, %._crit_edge.us.i ], [ 0, %.preheader133.us.preheader.i ]
  %i.dv = phi i32 [ %i.kb, %._crit_edge.us.i ], [ 0, %.preheader133.us.preheader.i ]
  %i.dw = phi i32 [ %i.kc, %._crit_edge.us.i ], [ 0, %.preheader133.us.preheader.i ]
  %i.dx = phi i32 [ %i.kd, %._crit_edge.us.i ], [ 0, %.preheader133.us.preheader.i ]
  %i.dy = phi i32 [ %i.ke, %._crit_edge.us.i ], [ 0, %.preheader133.us.preheader.i ]
  %i.dz = phi i32 [ %i.kf, %._crit_edge.us.i ], [ 0, %.preheader133.us.preheader.i ]
  %i.ea = phi i32 [ %i.kg, %._crit_edge.us.i ], [ 0, %.preheader133.us.preheader.i ]
  %i.eb = phi i32 [ %i.kh, %._crit_edge.us.i ], [ 0, %.preheader133.us.preheader.i ]
  %i.ec = phi i32 [ %i.ki, %._crit_edge.us.i ], [ 0, %.preheader133.us.preheader.i ]
  %i.ed = phi i32 [ %i.kj, %._crit_edge.us.i ], [ 0, %.preheader133.us.preheader.i ]
  %i.ee = phi i32 [ %i.kk, %._crit_edge.us.i ], [ 0, %.preheader133.us.preheader.i ]
  %i.ef = phi i32 [ %35, %._crit_edge.us.i ], [ 0, %.preheader133.us.preheader.i ]
  %6 = phi i32 [ %36, %._crit_edge.us.i ], [ 0, %.preheader133.us.preheader.i ]
  %.0115140.us.i = phi i32 [ %i.kr, %._crit_edge.us.i ], [ 0, %.preheader133.us.preheader.i ] ; 7 uses
  %i.eg = icmp ne i32 %.0115140.us.i, 0
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.us.i, %.preheader133.us.i
  %7 = phi i32 [ %.lcssa201230.i, %.preheader133.us.i ], [ %29, %.loopexit.us.i ] ; 2 uses
  %8 = phi i32 [ %.lcssa199228.i, %.preheader133.us.i ], [ %30, %.loopexit.us.i ] ; 2 uses
  %9 = phi i32 [ %.lcssa197226.i, %.preheader133.us.i ], [ %31, %.loopexit.us.i ] ; 2 uses
  %10 = phi i32 [ %.lcssa195224.i, %.preheader133.us.i ], [ %32, %.loopexit.us.i ]
  %11 = phi i32 [ %.lcssa193222.i, %.preheader133.us.i ], [ %33, %.loopexit.us.i ]
  %i.eh = phi i32 [ %.lcssa191220.i, %.preheader133.us.i ], [ %34, %.loopexit.us.i ]
  %i.ei = phi i32 [ %.lcssa189218.i, %.preheader133.us.i ], [ %i.jq, %.loopexit.us.i ]
  %i.ej = phi i32 [ %.lcssa187216.i, %.preheader133.us.i ], [ %i.jr, %.loopexit.us.i ]
  %i.ek = phi i32 [ %.lcssa185214.i.a, %.preheader133.us.i ], [ %i.js, %.loopexit.us.i ]
  %i.el = phi i32 [ %.lcssa183212.i.a, %.preheader133.us.i ], [ %i.jt, %.loopexit.us.i ]
  %i.em = phi i32 [ %.lcssa181210.i.a, %.preheader133.us.i ], [ %i.ju, %.loopexit.us.i ]
  %i.en = phi i32 [ %.lcssa179208.i.a, %.preheader133.us.i ], [ %i.jv, %.loopexit.us.i ]
  %i.eo = phi i32 [ %.lcssa177206.i.a, %.preheader133.us.i ], [ %i.jw, %.loopexit.us.i ] ; 2 uses
  %i.ep = phi i32 [ %.lcssa175204.i.a, %.preheader133.us.i ], [ %i.jx, %.loopexit.us.i ] ; 2 uses
  %i.eq = phi i32 [ %.lcssa173203.i.a, %.preheader133.us.i ], [ %i.jy, %.loopexit.us.i ] ; 2 uses
  %i.er = phi i32 [ %i.dt, %.preheader133.us.i ], [ %i.jz, %.loopexit.us.i ]
  %i.es = phi i32 [ %i.du, %.preheader133.us.i ], [ %i.ka, %.loopexit.us.i ]
  %i.et = phi i32 [ %i.dv, %.preheader133.us.i ], [ %i.kb, %.loopexit.us.i ]
  %i.eu = phi i32 [ %i.dw, %.preheader133.us.i ], [ %i.kc, %.loopexit.us.i ]
  %i.ev = phi i32 [ %i.dx, %.preheader133.us.i ], [ %i.kd, %.loopexit.us.i ]
  %i.ew = phi i32 [ %i.dy, %.preheader133.us.i ], [ %i.ke, %.loopexit.us.i ] ; 2 uses
  %i.ex = phi i32 [ %i.dz, %.preheader133.us.i ], [ %i.kf, %.loopexit.us.i ] ; 2 uses
  %i.ey = phi i32 [ %i.ea, %.preheader133.us.i ], [ %i.kg, %.loopexit.us.i ] ; 2 uses
  %i.ez = phi i32 [ %i.eb, %.preheader133.us.i ], [ %i.kh, %.loopexit.us.i ] ; 2 uses
  %i.fa = phi i32 [ %i.ec, %.preheader133.us.i ], [ %i.ki, %.loopexit.us.i ] ; 2 uses
  %i.fb = phi i32 [ %i.ed, %.preheader133.us.i ], [ %i.kj, %.loopexit.us.i ] ; 2 uses
  %12 = phi i32 [ %i.ee, %.preheader133.us.i ], [ %i.kk, %.loopexit.us.i ] ; 2 uses
  %i.fc = phi i32 [ %i.ef, %.preheader133.us.i ], [ %35, %.loopexit.us.i ] ; 2 uses
  %i.fd = phi i32 [ %6, %.preheader133.us.i ], [ %36, %.loopexit.us.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.preheader133.us.i ], [ %indvars.iv.next.i, %.loopexit.us.i ] ; 11 uses
  %.0119138.us.i = phi i32 [ 0, %.preheader133.us.i ], [ %.0118.us.i, %.loopexit.us.i ]
  %.0120137.us.i = phi i32 [ 0, %.preheader133.us.i ], [ %.0117.us.i, %.loopexit.us.i ]
  %.0121136.us.i = phi i32 [ 0, %.preheader133.us.i ], [ %.0116.us.i, %.loopexit.us.i ]
  br i1 %i.cs, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fe = load i32, ptr %i.da, align 4, !tbaa !127
  %i.ff = icmp ne i32 %i.fe, 0
  %or.cond.us.i = select i1 %i.ff, i1 true, i1 %i.db ; 2 uses
  %i.fg = shl nuw nsw i64 %indvars.iv.i, 1        ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.fg
  %i.fi = load i32, ptr %i.ay, align 8, !tbaa !63
  %i.fj = mul nsw i32 %i.fi, %.0115140.us.i
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds i8, ptr %i.fh, i64 %i.fk
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !78
  %i.fn = zext i16 %i.fm to i32                   ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.fg
  %i.fp = load i32, ptr %i.dc, align 4, !tbaa !63
  %i.fq = mul nsw i32 %i.fp, %.0115140.us.i
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds i8, ptr %i.fo, i64 %i.fr
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !78
  %i.fu = zext i16 %i.ft to i32                   ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.fg
  %i.fw = load i32, ptr %i.dd, align 8, !tbaa !63
  %i.fx = mul nsw i32 %i.fw, %.0115140.us.i
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds i8, ptr %i.fv, i64 %i.fy
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !78
  %i.gb = zext i16 %i.ga to i32
  %..i = select i1 %or.cond.us.i, i32 %i.fu, i32 %i.fn
  %.231.i = select i1 %or.cond.us.i, i32 %i.fn, i32 %i.fu
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.gc = mul nsw i64 %indvars.iv.i, %i.df
  %i.gd = getelementptr inbounds i8, ptr %i.bc, i64 %i.gc
  %i.ge = load i32, ptr %i.ay, align 8, !tbaa !63
  %i.gf = mul nsw i32 %i.ge, %.0115140.us.i
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds i8, ptr %i.gd, i64 %i.gg ; 3 uses
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !78
  %i.gj = zext i16 %i.gi to i32
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 2
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !78
  %i.gm = zext i16 %i.gl to i32
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !78
  %i.gp = zext i16 %i.go to i32
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.gq = shl nuw nsw i64 %indvars.iv.i, 2
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.gq
  %i.gs = load i32, ptr %i.ay, align 8, !tbaa !63
  %i.gt = mul nsw i32 %i.gs, %.0115140.us.i
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds i8, ptr %i.gr, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !63 ; 3 uses
  %i.gx = and i32 %i.gw, 255
  %i.gy = lshr i32 %i.gw, 8
  %i.gz = and i32 %i.gy, 255
  %i.ha = lshr i32 %i.gw, 16
  %i.hb = and i32 %i.ha, 255
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.0118.us.i = phi i32 [ %i.gx, %bb.n ], [ %i.gp, %bb.m ], [ %..i, %bb.l ] ; 2 uses
  %.0117.us.i = phi i32 [ %i.gz, %bb.n ], [ %i.gm, %bb.m ], [ %.231.i, %bb.l ] ; 2 uses
  %.0116.us.i = phi i32 [ %i.hb, %bb.n ], [ %i.gj, %bb.m ], [ %i.gb, %bb.l ] ; 2 uses
  %i.hc = sub nsw i32 %.0116.us.i, %.0121136.us.i ; 2 uses
  %i.hd = sub nsw i32 %.0117.us.i, %.0120137.us.i ; 2 uses
  %i.he = sub nsw i32 %.0118.us.i, %.0119138.us.i ; 2 uses
  %i.hf = icmp ne i64 %indvars.iv.i, 0
  %or.cond3.us.i = and i1 %i.eg, %i.hf
  br i1 %or.cond3.us.i, label %.loopexit.us.loopexit.i, label %.loopexit.us.i

.loopexit.us.loopexit.i:                          ; preds = %bb.o
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %indvars.iv.i
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !78
  %i.hi = sext i16 %i.hh to i32
  %i.hj = sub nsw i32 %i.hd, %i.hi                ; 16 uses
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %indvars.iv.i
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !78
  %i.hm = sext i16 %i.hl to i32
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %indvars.iv.i
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !78
  %i.hp = sext i16 %i.ho to i32
  %i.hq = add nsw i32 %i.hj, %i.hp
  %i.hr = sub nsw i32 %i.hc, %i.hq                ; 8 uses
  %.neg836 = sub nsw i32 %i.he, %i.hm             ; 2 uses
  %i.hs = sub nsw i32 %.neg836, %i.hj             ; 7 uses
  %i.ht = tail call i32 @llvm.abs.i32(i32 %i.hj, i1 true)
  %i.hu = add nsw i32 %i.ht, %i.eq
  %i.hv = add nsw i32 %i.hs, %i.hr
  %i.hw = ashr i32 %i.hv, 2
  %i.hx = add nsw i32 %i.hw, %i.hj
  %i.hy = tail call i32 @llvm.abs.i32(i32 %i.hx, i1 true)
  %i.hz = add nsw i32 %i.hy, %i.ep                ; 2 uses
  %i.ia = shl nsw i32 %i.hr, 1                    ; 2 uses
  %i.ib = shl nsw i32 %i.hs, 1                    ; 2 uses
  %i.ic = add nsw i32 %i.ib, %i.ia
  %i.id = ashr i32 %i.ic, 2
  %i.ie = add nsw i32 %i.id, %i.hj
  %i.if = tail call i32 @llvm.abs.i32(i32 %i.ie, i1 true)
  %i.ig = add nsw i32 %i.if, %i.eo                ; 2 uses
  %i.ih = ashr i32 %i.hs, 1
  %i.ii = add nsw i32 %i.ih, %i.hj
  %i.ij = tail call i32 @llvm.abs.i32(i32 %i.ii, i1 true)
  %i.ik = add nsw i32 %i.ij, %i.fd                ; 2 uses
  %i.il = ashr i32 %i.hr, 1
  %i.im = add nsw i32 %i.il, %i.hj
  %i.in = tail call i32 @llvm.abs.i32(i32 %i.im, i1 true)
  %i.io = add nsw i32 %i.in, %i.fc                ; 2 uses
  %i.ip = add nsw i32 %i.hr, %i.hj
  %i.iq = tail call i32 @llvm.abs.i32(i32 %i.ip, i1 true)
  %i.ir = add nsw i32 %i.iq, %12                  ; 2 uses
  %i.is = tail call i32 @llvm.abs.i32(i32 %.neg836, i1 true)
  %i.it = add nsw i32 %i.is, %i.fb                ; 2 uses
  %i.iu = mul nsw i32 %i.hs, 3                    ; 2 uses
  %13 = ashr i32 %i.iu, 2
  %14 = add nsw i32 %13, %i.hj
  %15 = tail call i32 @llvm.abs.i32(i32 %14, i1 true)
  %16 = add nsw i32 %15, %i.fa                    ; 2 uses
  %i.iv = mul nsw i32 %i.hr, 3                    ; 2 uses
  %17 = ashr i32 %i.iv, 2
  %i.iw = add nsw i32 %17, %i.hj
  %18 = tail call i32 @llvm.abs.i32(i32 %i.iw, i1 true)
  %i.ix = add nsw i32 %18, %i.ez                  ; 2 uses
  %19 = add nsw i32 %i.iv, %i.hs
  %20 = ashr i32 %19, 2
  %21 = add nsw i32 %20, %i.hj
  %22 = tail call i32 @llvm.abs.i32(i32 %21, i1 true)
  %23 = add nsw i32 %22, %i.ey                    ; 2 uses
  %24 = add nsw i32 %i.iu, %i.hr
  %25 = ashr i32 %24, 2
  %26 = add nsw i32 %25, %i.hj
  %27 = tail call i32 @llvm.abs.i32(i32 %26, i1 true)
  %28 = add nsw i32 %27, %i.ex                    ; 2 uses
  %i.iy = add nsw i32 %i.ib, %i.hr
  %i.iz = ashr i32 %i.iy, 2
  %i.ja = add nsw i32 %i.iz, %i.hj
  %i.jb = tail call i32 @llvm.abs.i32(i32 %i.ja, i1 true)
  %i.jc = add nsw i32 %i.jb, %i.ew                ; 2 uses
  %i.jd = add nsw i32 %i.ia, %i.hs
  %i.je = ashr i32 %i.jd, 2
  %i.jf = add nsw i32 %i.je, %i.hj
  %i.jg = tail call i32 @llvm.abs.i32(i32 %i.jf, i1 true)
  %i.jh = add nsw i32 %i.jg, %9                   ; 2 uses
  %i.ji = ashr i32 %i.hs, 2
  %i.jj = add nsw i32 %i.ji, %i.hj
  %i.jk = tail call i32 @llvm.abs.i32(i32 %i.jj, i1 true)
  %i.jl = add nsw i32 %i.jk, %8                   ; 2 uses
  %i.jm = ashr i32 %i.hr, 2
  %i.jn = add nsw i32 %i.jm, %i.hj
  %i.jo = tail call i32 @llvm.abs.i32(i32 %i.jn, i1 true)
  %i.jp = add nsw i32 %i.jo, %7                   ; 2 uses
  br label %.loopexit.us.i

.loopexit.us.i:                                   ; preds = %.loopexit.us.loopexit.i, %bb.o
  %29 = phi i32 [ %i.jp, %.loopexit.us.loopexit.i ], [ %7, %bb.o ] ; 3 uses
  %30 = phi i32 [ %i.jl, %.loopexit.us.loopexit.i ], [ %8, %bb.o ] ; 3 uses
  %31 = phi i32 [ %i.jh, %.loopexit.us.loopexit.i ], [ %9, %bb.o ] ; 3 uses
  %32 = phi i32 [ %i.jc, %.loopexit.us.loopexit.i ], [ %10, %bb.o ] ; 3 uses
  %33 = phi i32 [ %28, %.loopexit.us.loopexit.i ], [ %11, %bb.o ] ; 3 uses
  %34 = phi i32 [ %23, %.loopexit.us.loopexit.i ], [ %i.eh, %bb.o ] ; 3 uses
  %i.jq = phi i32 [ %i.ix, %.loopexit.us.loopexit.i ], [ %i.ei, %bb.o ] ; 3 uses
  %i.jr = phi i32 [ %16, %.loopexit.us.loopexit.i ], [ %i.ej, %bb.o ] ; 3 uses
  %i.js = phi i32 [ %i.it, %.loopexit.us.loopexit.i ], [ %i.ek, %bb.o ] ; 3 uses
  %i.jt = phi i32 [ %i.ir, %.loopexit.us.loopexit.i ], [ %i.el, %bb.o ] ; 3 uses
  %i.ju = phi i32 [ %i.io, %.loopexit.us.loopexit.i ], [ %i.em, %bb.o ] ; 3 uses
  %i.jv = phi i32 [ %i.ik, %.loopexit.us.loopexit.i ], [ %i.en, %bb.o ] ; 3 uses
  %i.jw = phi i32 [ %i.ig, %.loopexit.us.loopexit.i ], [ %i.eo, %bb.o ] ; 3 uses
  %i.jx = phi i32 [ %i.hz, %.loopexit.us.loopexit.i ], [ %i.ep, %bb.o ] ; 3 uses
  %i.jy = phi i32 [ %i.hu, %.loopexit.us.loopexit.i ], [ %i.eq, %bb.o ] ; 4 uses
  %i.jz = phi i32 [ %i.jp, %.loopexit.us.loopexit.i ], [ %i.er, %bb.o ] ; 3 uses
  %i.ka = phi i32 [ %i.jl, %.loopexit.us.loopexit.i ], [ %i.es, %bb.o ] ; 3 uses
  %i.kb = phi i32 [ %i.jh, %.loopexit.us.loopexit.i ], [ %i.et, %bb.o ] ; 3 uses
  %i.kc = phi i32 [ %i.ig, %.loopexit.us.loopexit.i ], [ %i.eu, %bb.o ] ; 3 uses
  %i.kd = phi i32 [ %i.hz, %.loopexit.us.loopexit.i ], [ %i.ev, %bb.o ] ; 3 uses
  %i.ke = phi i32 [ %i.jc, %.loopexit.us.loopexit.i ], [ %i.ew, %bb.o ] ; 3 uses
  %i.kf = phi i32 [ %28, %.loopexit.us.loopexit.i ], [ %i.ex, %bb.o ] ; 3 uses
  %i.kg = phi i32 [ %23, %.loopexit.us.loopexit.i ], [ %i.ey, %bb.o ] ; 3 uses
  %i.kh = phi i32 [ %i.ix, %.loopexit.us.loopexit.i ], [ %i.ez, %bb.o ] ; 3 uses
  %i.ki = phi i32 [ %16, %.loopexit.us.loopexit.i ], [ %i.fa, %bb.o ] ; 3 uses
  %i.kj = phi i32 [ %i.it, %.loopexit.us.loopexit.i ], [ %i.fb, %bb.o ] ; 3 uses
  %i.kk = phi i32 [ %i.ir, %.loopexit.us.loopexit.i ], [ %12, %bb.o ] ; 3 uses
  %35 = phi i32 [ %i.io, %.loopexit.us.loopexit.i ], [ %i.fc, %bb.o ] ; 3 uses
  %36 = phi i32 [ %i.ik, %.loopexit.us.loopexit.i ], [ %i.fd, %bb.o ] ; 3 uses
  %i.kl = trunc i32 %i.hd to i16
  %i.km = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %indvars.iv.i
  store i16 %i.kl, ptr %i.km, align 2, !tbaa !78
  %i.kn = trunc i32 %i.he to i16
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %indvars.iv.i
  store i16 %i.kn, ptr %i.ko, align 2, !tbaa !78
  %i.kp = trunc i32 %i.hc to i16
  %i.kq = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %indvars.iv.i
  store i16 %i.kp, ptr %i.kq, align 2, !tbaa !78
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond150.not.i = icmp eq i64 %indvars.iv.next.i, %i.de
  br i1 %exitcond150.not.i, label %._crit_edge.us.i, label %bb.j, !llvm.loop !202

._crit_edge.us.i:                                 ; preds = %.loopexit.us.i
  %i.kr = add nuw nsw i32 %.0115140.us.i, 1       ; 2 uses
  %exitcond151.not.i = icmp eq i32 %i.kr, %i.x
  br i1 %exitcond151.not.i, label %.preheader.loopexit.i, label %.preheader133.us.i, !llvm.loop !203

.preheader.loopexit.i:                            ; preds = %._crit_edge.us.i
  store i32 %i.jy, ptr %i.q, align 16
  store i32 %i.jx, ptr %i.di, align 4
  store i32 %i.jw, ptr %i.dj, align 8
  store i32 %i.jv, ptr %i.dk, align 4
  store i32 %i.ju, ptr %i.dl, align 16
  store i32 %i.jt, ptr %i.dm, align 4
  store i32 %i.js, ptr %i.dn, align 8
  store i32 %i.jr, ptr %i.do, align 4
  store i32 %i.jq, ptr %3, align 16
  store i32 %34, ptr %4, align 4
  store i32 %33, ptr %5, align 8
  store i32 %32, ptr %i.dp, align 4
  store i32 %31, ptr %i.dq, align 16
  store i32 %30, ptr %i.dr, align 4
  store i32 %29, ptr %i.ds, align 8
  %i.ks = icmp slt i32 %i.kd, %i.jy               ; 2 uses
  %i.kt = zext i1 %i.ks to i32
  %.phi.trans.insert1307.sroa.sel.idx = select i1 %i.ks, i64 4, i64 0
  %.phi.trans.insert1307.sroa.sel = getelementptr inbounds nuw i8, ptr %i.q, i64 %.phi.trans.insert1307.sroa.sel.idx
  %.pre1309 = load i32, ptr %.phi.trans.insert1307.sroa.sel, align 4, !tbaa !63
  %i.ku = icmp slt i32 %i.kc, %.pre1309
  %i.kv = select i1 %i.ku, i32 2, i32 %i.kt
  br label %choose_rct_params.exit

choose_rct_params.exit:                           ; preds = %.preheader133.lr.ph.i, %bb.i, %.preheader.loopexit.i
  %i.kw = phi i32 [ 0, %bb.i ], [ %i.jz, %.preheader.loopexit.i ], [ 0, %.preheader133.lr.ph.i ]
  %i.kx = phi i32 [ 0, %bb.i ], [ %i.ka, %.preheader.loopexit.i ], [ 0, %.preheader133.lr.ph.i ]
  %i.ky = phi i32 [ 0, %bb.i ], [ %i.kb, %.preheader.loopexit.i ], [ 0, %.preheader133.lr.ph.i ]
  %i.kz = phi i32 [ 0, %bb.i ], [ %i.ke, %.preheader.loopexit.i ], [ 0, %.preheader133.lr.ph.i ]
  %i.la = phi i32 [ 0, %bb.i ], [ %i.kf, %.preheader.loopexit.i ], [ 0, %.preheader133.lr.ph.i ]
  %i.lb = phi i32 [ 0, %bb.i ], [ %i.kg, %.preheader.loopexit.i ], [ 0, %.preheader133.lr.ph.i ]
  %i.lc = phi i32 [ 0, %bb.i ], [ %i.kh, %.preheader.loopexit.i ], [ 0, %.preheader133.lr.ph.i ]
  %i.ld = phi i32 [ 0, %bb.i ], [ %i.ki, %.preheader.loopexit.i ], [ 0, %.preheader133.lr.ph.i ]
  %i.le = phi i32 [ 0, %bb.i ], [ %i.kj, %.preheader.loopexit.i ], [ 0, %.preheader133.lr.ph.i ]
  %i.lf = phi i32 [ 0, %bb.i ], [ %i.kk, %.preheader.loopexit.i ], [ 0, %.preheader133.lr.ph.i ]
  %i.lg = phi i32 [ 0, %bb.i ], [ %35, %.preheader.loopexit.i ], [ 0, %.preheader133.lr.ph.i ]
  %i.lh = phi i32 [ 0, %bb.i ], [ %36, %.preheader.loopexit.i ], [ 0, %.preheader133.lr.ph.i ]
  %spec.select.1.i = phi i32 [ 0, %bb.i ], [ %i.kv, %.preheader.loopexit.i ], [ 0, %.preheader133.lr.ph.i ] ; 2 uses
  %i.li = zext nneg i32 %spec.select.1.i to i64
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.li
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !63
  %i.ll = icmp slt i32 %i.lh, %i.lk
  %spec.select.2.i = select i1 %i.ll, i32 3, i32 %spec.select.1.i ; 2 uses
  %i.lm = zext nneg i32 %spec.select.2.i to i64
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.lm
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !63
  %i.lp = icmp slt i32 %i.lg, %i.lo
  %spec.select.3.i = select i1 %i.lp, i32 4, i32 %spec.select.2.i ; 2 uses
  %i.lq = zext nneg i32 %spec.select.3.i to i64
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.lq
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !63
  %i.lt = icmp slt i32 %i.lf, %i.ls
  %spec.select.4.i = select i1 %i.lt, i32 5, i32 %spec.select.3.i ; 2 uses
  %i.lu = zext nneg i32 %spec.select.4.i to i64
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.lu
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !63
  %i.lx = icmp slt i32 %i.le, %i.lw
  %spec.select.5.i = select i1 %i.lx, i32 6, i32 %spec.select.4.i ; 2 uses
  %i.ly = zext nneg i32 %spec.select.5.i to i64
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ly
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !63
  %i.mb = icmp slt i32 %i.ld, %i.ma
  %spec.select.6.i = select i1 %i.mb, i32 7, i32 %spec.select.5.i ; 2 uses
  %i.mc = zext nneg i32 %spec.select.6.i to i64
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.mc
  %i.me = load i32, ptr %i.md, align 4, !tbaa !63
  %i.mf = icmp slt i32 %i.lc, %i.me
  %spec.select.7.i = select i1 %i.mf, i32 8, i32 %spec.select.6.i ; 2 uses
  %i.mg = zext nneg i32 %spec.select.7.i to i64
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.mg
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !63
  %i.mj = icmp slt i32 %i.lb, %i.mi
  %spec.select.8.i = select i1 %i.mj, i32 9, i32 %spec.select.7.i ; 2 uses
  %i.mk = zext nneg i32 %spec.select.8.i to i64
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.mk
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !63
  %i.mn = icmp slt i32 %i.la, %i.mm
  %spec.select.9.i = select i1 %i.mn, i32 10, i32 %spec.select.8.i ; 2 uses
  %i.mo = zext nneg i32 %spec.select.9.i to i64
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.mo
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !63
  %i.mr = icmp slt i32 %i.kz, %i.mq
  %spec.select.10.i = select i1 %i.mr, i32 11, i32 %spec.select.9.i ; 2 uses
  %i.ms = zext nneg i32 %spec.select.10.i to i64
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ms
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !63
  %i.mv = icmp slt i32 %i.ky, %i.mu
  %spec.select.11.i = select i1 %i.mv, i32 12, i32 %spec.select.10.i ; 2 uses
  %i.mw = zext nneg i32 %spec.select.11.i to i64
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.mw
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !63
  %i.mz = icmp slt i32 %i.kx, %i.my
  %spec.select.12.i = select i1 %i.mz, i32 13, i32 %spec.select.11.i ; 2 uses
  %i.na = zext nneg i32 %spec.select.12.i to i64
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.na
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !63
  %i.nd = icmp slt i32 %i.kw, %i.nc
  %spec.select.13.i = select i1 %i.nd, i32 14, i32 %spec.select.12.i
  %i.ne = zext nneg i32 %spec.select.13.i to i64
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr @choose_rct_params_bayer.rct_y_coeff, i64 %i.ne
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.nh = load <2 x i32>, ptr %i.nf, align 8, !tbaa !63
  %i.ni = shufflevector <2 x i32> %i.nh, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.ni, ptr %i.ng, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #19
  br label %bb.s

bb.p:                                             ; preds = %bb.h, %bb.g
  %i.nj = getelementptr inbounds nuw i8, ptr %i.t, i64 25168
  %i.nk = load i32, ptr %i.nj, align 8, !tbaa !81
  %.not309 = icmp eq i32 %i.nk, 0
  br i1 %.not309, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(60) %i.p, i8 0, i64 60, i1 false)
  %i.nl = ashr i32 %i.v, 1                        ; 6 uses
  %i.nm = load ptr, ptr %1, align 8, !tbaa !201   ; 18 uses
  %i.nn = sext i32 %i.nl to i64                   ; 4 uses
  %i.no = getelementptr [2 x i8], ptr %i.nm, i64 %i.nn ; 10 uses
  %.idx.i330 = shl nsw i64 %i.nn, 2               ; 4 uses
  %i.np = getelementptr i8, ptr %i.nm, i64 %.idx.i330 ; 10 uses
  %i.nq = icmp sgt i32 %i.x, 0
  %i.nr = icmp sgt i32 %i.nl, 0
  %or.cond.i = and i1 %i.nq, %i.nr
  br i1 %or.cond.i, label %.preheader5.lr.ph.split.i, label %choose_rct_params_bayer.exit

.preheader5.lr.ph.split.i:                        ; preds = %bb.q
  %i.ns = load i32, ptr %i.ay, align 8, !tbaa !63 ; 4 uses
  %i.nt = sext i32 %i.ns to i64                   ; 8 uses
  %i.nu = zext nneg i32 %i.x to i64               ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.nl to i64 ; 10 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.nw = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.ny = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.nz = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.oa = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ob = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.oc = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.od = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  %i.oe = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.of = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  %i.og = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.oh = getelementptr inbounds nuw i8, ptr %i.p, i64 52
  %i.oi = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %exitcond.not.i349.peel = icmp eq i32 %i.nl, 1
  %i.oj = shl nuw nsw i64 %wide.trip.count.i, 1   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.nm, i64 %i.oj
  %i.ok = add nuw nsw i64 %i.nn, %wide.trip.count.i
  %i.ol = shl nuw nsw i64 %i.ok, 1
  %scevgep2036 = getelementptr i8, ptr %i.nm, i64 %i.ol ; 4 uses
  %i.om = getelementptr i8, ptr %i.nm, i64 %.idx.i330
  %scevgep2037 = getelementptr i8, ptr %i.om, i64 %i.oj ; 4 uses
  %i.on = getelementptr i8, ptr %i.au, i64 %i.nt
  %i.oo = getelementptr i8, ptr %i.on, i64 %i.bb
  %scevgep2038 = getelementptr i8, ptr %i.oo, i64 %i.aw ; 3 uses
  %i.op = add nsw i64 %i.nu, -1                   ; 2 uses
  %i.oq = or i64 %i.op, 1
  %i.or = mul nsw i64 %i.oq, %i.nt
  %i.os = shl nuw nsw i64 %wide.trip.count.i, 2   ; 2 uses
  %i.ot = getelementptr i8, ptr %i.au, i64 %i.or
  %i.ou = getelementptr i8, ptr %i.ot, i64 %i.os
  %i.ov = getelementptr i8, ptr %i.ou, i64 %i.bb
  %scevgep2039 = getelementptr i8, ptr %i.ov, i64 %i.aw ; 3 uses
  %i.ow = lshr i64 %i.op, 1
  %i.ox = mul i64 %i.ow, %i.nt
  %i.oy = shl i64 %i.ox, 1
  %i.oz = getelementptr i8, ptr %i.au, i64 %i.oy
  %i.pa = getelementptr i8, ptr %i.oz, i64 %i.os
  %i.pb = getelementptr i8, ptr %i.pa, i64 %i.bb
  %scevgep2040 = getelementptr i8, ptr %i.pb, i64 %i.aw ; 3 uses
  %scevgep2088 = getelementptr i8, ptr %i.nm, i64 2 ; 9 uses
  %i.pc = shl nuw nsw i64 %wide.trip.count.i, 1   ; 3 uses
  %scevgep2089 = getelementptr i8, ptr %i.nm, i64 %i.pc ; 9 uses
  %i.pd = shl nuw nsw i64 %i.nn, 1                ; 2 uses
  %i.pe = getelementptr i8, ptr %i.nm, i64 %i.pd
  %scevgep2090 = getelementptr i8, ptr %i.pe, i64 2 ; 9 uses
  %i.pf = getelementptr i8, ptr %i.nm, i64 %i.pd
  %scevgep2091 = getelementptr i8, ptr %i.pf, i64 %i.pc ; 9 uses
  %i.pg = getelementptr i8, ptr %i.nm, i64 %.idx.i330
  %scevgep2092 = getelementptr i8, ptr %i.pg, i64 2 ; 9 uses
  %i.ph = getelementptr i8, ptr %i.nm, i64 %.idx.i330
  %scevgep2093 = getelementptr i8, ptr %i.ph, i64 %i.pc ; 9 uses
  %i.pi = getelementptr i8, ptr %i.au, i64 %i.nt
  %i.pj = getelementptr i8, ptr %i.pi, i64 %i.bb
  %i.pk = getelementptr i8, ptr %i.pj, i64 %i.aw
  %scevgep2094 = getelementptr i8, ptr %i.pk, i64 4 ; 3 uses
  %i.pl = add nsw i64 %i.nu, -1                   ; 2 uses
  %i.pm = or i64 %i.pl, 1
  %i.pn = mul nsw i64 %i.pm, %i.nt
  %i.po = shl nuw nsw i64 %wide.trip.count.i, 2   ; 2 uses
  %i.pp = getelementptr i8, ptr %i.au, i64 %i.pn
  %i.pq = getelementptr i8, ptr %i.pp, i64 %i.po
  %i.pr = getelementptr i8, ptr %i.pq, i64 %i.bb
  %scevgep2095 = getelementptr i8, ptr %i.pr, i64 %i.aw ; 3 uses
  %i.ps = getelementptr i8, ptr %i.au, i64 %i.bb
  %i.pt = getelementptr i8, ptr %i.ps, i64 %i.aw
  %scevgep2096 = getelementptr i8, ptr %i.pt, i64 4 ; 3 uses
  %i.pu = lshr i64 %i.pl, 1
  %i.pv = mul i64 %i.pu, %i.nt
  %i.pw = shl i64 %i.pv, 1
  %i.px = getelementptr i8, ptr %i.au, i64 %i.pw
  %i.py = getelementptr i8, ptr %i.px, i64 %i.po
  %i.pz = getelementptr i8, ptr %i.py, i64 %i.bb
  %scevgep2097 = getelementptr i8, ptr %i.pz, i64 %i.aw ; 3 uses
  %i.qa = insertelement <4 x ptr> poison, ptr %i.nm, i64 0
  %i.qb = shufflevector <4 x ptr> %i.qa, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.qc = insertelement <4 x ptr> poison, ptr %scevgep2036, i64 0
  %i.qd = insertelement <4 x ptr> %i.qc, ptr %scevgep2037, i64 1
  %i.qe = insertelement <4 x ptr> %i.qd, ptr %scevgep2039, i64 2
  %i.qf = insertelement <4 x ptr> %i.qe, ptr %scevgep2040, i64 3
  %i.qg = insertelement <4 x ptr> poison, ptr %i.no, i64 0
  %i.qh = insertelement <4 x ptr> %i.qg, ptr %i.np, i64 1
  %i.qi = insertelement <4 x ptr> %i.qh, ptr %scevgep2038, i64 2
  %i.qj = insertelement <4 x ptr> %i.qi, ptr %i.bc, i64 3
  %i.qk = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.ql = shufflevector <4 x ptr> %i.qk, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.qm = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %min.iters.check2173 = icmp ult i32 %i.nl, 9
  %bound02098 = icmp ult ptr %scevgep2088, %scevgep2091
  %bound12099 = icmp ult ptr %scevgep2090, %scevgep2089
  %found.conflict2100 = and i1 %bound02098, %bound12099
  %bound02101 = icmp ult ptr %scevgep2088, %scevgep2093
  %bound12102 = icmp ult ptr %scevgep2092, %scevgep2089
  %found.conflict2103 = and i1 %bound02101, %bound12102
  %conflict.rdx2104 = or i1 %found.conflict2100, %found.conflict2103
  %bound02105 = icmp ult ptr %scevgep2088, %scevgep2095
  %bound12106 = icmp ult ptr %scevgep2094, %scevgep2089
  %found.conflict2107 = and i1 %bound02105, %bound12106
  %stride.check2108 = icmp slt i32 %i.ns, 0
  %i.qn = or i1 %found.conflict2107, %stride.check2108
  %conflict.rdx2109 = or i1 %conflict.rdx2104, %i.qn
  %bound02110 = icmp ult ptr %scevgep2088, %scevgep2097
  %bound12111 = icmp ult ptr %scevgep2096, %scevgep2089
  %found.conflict2112 = and i1 %bound02110, %bound12111
  %conflict.rdx2114 = or i1 %found.conflict2112, %conflict.rdx2109
end_hunk_0
