Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_adrc?download=true
inline.NumInlined: 17
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@config_input:bb.a
  store double %i.dy, ptr %i.dz, align 8, !tbaa !50
  %i.ea = sitofp nsz i32 %i.dw to double
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  store double %i.ea, ptr %i.eb, align 8, !tbaa !50
  %i.ec = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %i.ed = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !34
  %i.ef = call i32 @av_expr_parse(ptr noundef nonnull %i.ec, ptr noundef %i.ee, ptr noundef nonnull @var_names, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %i.c) #8
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.n, %generate_hann_window.exit, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.a, %._crit_edge
  %.1 = phi i32 [ %i.ef, %._crit_edge ], [ -12, %generate_hann_window.exit ], [ -12, %bb.b ], [ -12, %bb.a ], [ -12, %bb.j ], [ -12, %bb.i ], [ -12, %bb.h ], [ -12, %bb.g ], [ -12, %bb.f ], [ -12, %bb.e ], [ -12, %bb.d ], [ -12, %bb.c ], [ %i.dp, %bb.m ], [ %i.du, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @ff_get_audio_buffer(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_tx_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @av_expr_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.cos.f32(float) #4

declare ptr @av_default_item_name(ptr noundef) #3

declare void @av_channel_layout_uninit(ptr noundef) local_unnamed_addr #3

declare void @av_expr_free(ptr noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare void @av_tx_uninit(ptr noundef) local_unnamed_addr #3

declare noalias ptr @av_strdup(ptr noundef) local_unnamed_addr #3

declare i32 @ff_filter_process_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare void @av_free(ptr noundef) local_unnamed_addr #3

declare i32 @av_channel_layout_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @av_channel_layout_from_string(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_outlink_get_status(ptr noundef) local_unnamed_addr #3

declare void @ff_inlink_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_inlink_consume_samples(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_inlink_acknowledge_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_inlink_queued_samples(ptr noundef) local_unnamed_addr #3

declare void @ff_filter_set_ready(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #3

declare void @ff_inlink_request_frame(ptr noundef) local_unnamed_addr #3

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @drc_channels(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = alloca [7 x double], align 16            ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.d = load i32, ptr %i.c, align 4, !tbaa !84
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = sext i32 %2 to i64
  %i.g = mul nsw i64 %i.e, %i.f
  %i.h = sext i32 %3 to i64                       ; 2 uses
  %i.i = sdiv i64 %i.g, %i.h                      ; 2 uses
  %i.j = trunc i64 %i.i to i32
  %i.k = add nsw i32 %2, 1
  %i.l = sext i32 %i.k to i64
  %i.m = mul nsw i64 %i.e, %i.l
  %i.n = sdiv i64 %i.m, %i.h
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  %i.p = icmp slt i32 %i.j, %i.o
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !55
  %i.t = getelementptr i8, ptr %i.s, i64 96
  %i.u = getelementptr i8, ptr %1, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104
  %sext = shl i64 %i.i, 32
  %i.y = ashr exact i64 %sext, 32
  br label %bb.b

._crit_edge:                                      ; preds = %drc_channel.exit, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph, %drc_channel.exit
  %indvars.iv = phi i64 [ %i.y, %.lr.ph ], [ %indvars.iv.next, %drc_channel.exit ] ; 16 uses
  %.val = load ptr, ptr %i.t, align 8, !tbaa !85
  %.val16 = load ptr, ptr %i.u, align 8, !tbaa !85
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !9    ; 11 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %.val, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !86
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 112
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !72
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !85
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !86 ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %.val16, i64 %indvars.iv
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !86 ; 8 uses
  %i.ak = ptrtoaddr ptr %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 52
  %i.am = load i32, ptr %i.al, align 4, !tbaa !41
  %i.an = sext i32 %i.am to i64
  %i.ao = shl nsw i64 %i.an, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ah, ptr align 4 %i.ab, i64 %i.ao, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 120
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !73
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !85
  %i.at = getelementptr inbounds [8 x i8], ptr %i.as, i64 %indvars.iv
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !86 ; 11 uses
  %i.av = ptrtoaddr ptr %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 128
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !74
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !85
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.az, i64 %indvars.iv
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !86 ; 17 uses
  %i.bc = ptrtoaddr ptr %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.z, i64 152
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !77
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !85
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %indvars.iv
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !86 ; 8 uses
  %i.bj = ptrtoaddr ptr %i.bi to i64              ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !68
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !85
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %indvars.iv
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !86 ; 7 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.z, i64 136
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !75
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !85
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %indvars.iv
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !86 ; 12 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !69
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 96
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !85
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %indvars.iv
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !86 ; 11 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.z, i64 144
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !76
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 96
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !85
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %indvars.iv
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !86 ; 7 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !70
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 96
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !85
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %indvars.iv
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !86 ; 10 uses
  %i.co = ptrtoaddr ptr %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !71
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 96
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !85
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %indvars.iv
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !86 ; 11 uses
  %i.cv = ptrtoaddr ptr %i.cu to i64
  %i.cw = load ptr, ptr %i.b, align 8, !tbaa !9   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 48 ; 3 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !65 ; 4 uses
  %i.cz = sdiv i32 %i.cy, 2
  %i.da = add nsw i32 %i.cz, 1                    ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 52
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !41 ; 5 uses
  %i.dd = load ptr, ptr %i.v, align 8, !tbaa !35
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !36
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  %i.dg = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.dh = call i32 @av_channel_layout_channel_from_index(ptr noundef nonnull %i.df, i32 noundef %i.dg) #8
  %i.di = getelementptr inbounds nuw i8, ptr %i.cw, i64 168
  %i.dj = call i32 @av_channel_layout_index_from_channel(ptr noundef nonnull %i.di, i32 noundef %i.dh) #8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cw, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.dk, i64 56, i1 false)
  %i.dl = sitofp nsz i32 %i.dg to double
  store double %i.dl, ptr %i.a, align 16, !tbaa !50
  %i.dm = sext i32 %i.dc to i64                   ; 4 uses
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.dm
  %i.do = sub nsw i32 %i.cy, %i.dc
  %i.dp = sext i32 %i.do to i64
  %i.dq = shl nsw i64 %i.dp, 2                    ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.au, ptr align 4 %i.dn, i64 %i.dq, i1 false)
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.dm
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bb, ptr align 4 %i.dr, i64 %i.dq, i1 false)
  %i.ds = sext i32 %i.cy to i64                   ; 2 uses
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ds
  %i.du = sub nsw i64 0, %i.dm                    ; 2 uses
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.du
  %i.dw = shl nsw i64 %i.dm, 2                    ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.dv, ptr readonly align 4 %i.ah, i64 %i.dw, i1 false)
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ds
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.du
  call void @llvm.memset.p0.i64(ptr align 4 %i.dy, i8 0, i64 %i.dw, i1 false)
  %.val79.i.i = load i32, ptr %i.cx, align 8, !tbaa !65 ; 3 uses
  %i.dz = getelementptr i8, ptr %i.cw, i64 64     ; 2 uses
  %.val80.i.i = load ptr, ptr %i.dz, align 8, !tbaa !67 ; 7 uses
  %.val80.i.i130 = ptrtoaddr ptr %.val80.i.i to i64
  %i.ea = icmp sgt i32 %.val79.i.i, 0
  br i1 %i.ea, label %.lr.ph5.preheader.i.i.i, label %apply_window.exit.i.i

.lr.ph5.preheader.i.i.i:                          ; preds = %bb.b
  %wide.trip.count11.i.i.i = zext nneg i32 %.val79.i.i to i64 ; 5 uses
  %min.iters.check134 = icmp ult i32 %.val79.i.i, 8
  br i1 %min.iters.check134, label %.lr.ph5.i.i.i.preheader, label %vector.memcheck128

vector.memcheck128:                               ; preds = %.lr.ph5.preheader.i.i.i
  %i.eb = sub i64 %i.av, %i.bj
  %diff.check129 = icmp ugt i64 %i.eb, -32
  %i.ec = sub i64 %.val80.i.i130, %i.bj
  %diff.check131 = icmp ugt i64 %i.ec, -32
  %conflict.rdx132 = or i1 %diff.check129, %diff.check131
  br i1 %conflict.rdx132, label %.lr.ph5.i.i.i.preheader, label %vector.ph135

vector.ph135:                                     ; preds = %vector.memcheck128
  %n.vec136 = and i64 %wide.trip.count11.i.i.i, 2147483640 ; 3 uses
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph135
  %index138 = phi i64 [ 0, %vector.ph135 ], [ %index.next143, %vector.body137 ] ; 4 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index138 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %wide.load139 = load <4 x float>, ptr %i.ed, align 4, !tbaa !78
  %wide.load140 = load <4 x float>, ptr %i.ee, align 4, !tbaa !78
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.val80.i.i, i64 %index138 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %wide.load141 = load <4 x float>, ptr %i.ef, align 4, !tbaa !78
  %wide.load142 = load <4 x float>, ptr %i.eg, align 4, !tbaa !78
  %i.eh = fmul nsz <4 x float> %wide.load139, %wide.load141
  %i.ei = fmul nsz <4 x float> %wide.load140, %wide.load142
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %index138 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store <4 x float> %i.eh, ptr %i.ej, align 4, !tbaa !78
  store <4 x float> %i.ei, ptr %i.ek, align 4, !tbaa !78
  %index.next143 = add nuw i64 %index138, 8       ; 2 uses
  %i.el = icmp eq i64 %index.next143, %n.vec136
  br i1 %i.el, label %middle.block144, label %vector.body137, !llvm.loop !87

middle.block144:                                  ; preds = %vector.body137
  %cmp.n145 = icmp eq i64 %n.vec136, %wide.trip.count11.i.i.i
  br i1 %cmp.n145, label %apply_window.exit.i.i, label %.lr.ph5.i.i.i.preheader

.lr.ph5.i.i.i.preheader:                          ; preds = %vector.memcheck128, %.lr.ph5.preheader.i.i.i, %middle.block144
  %indvars.iv8.i.i.i.ph = phi i64 [ 0, %vector.memcheck128 ], [ 0, %.lr.ph5.preheader.i.i.i ], [ %n.vec136, %middle.block144 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count11.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph5.i.i.i.prol.loopexit, label %.lr.ph5.i.i.i.prol

.lr.ph5.i.i.i.prol:                               ; preds = %.lr.ph5.i.i.i.preheader, %.lr.ph5.i.i.i.prol
  %indvars.iv8.i.i.i.prol = phi i64 [ %indvars.iv.next9.i.i.i.prol, %.lr.ph5.i.i.i.prol ], [ %indvars.iv8.i.i.i.ph, %.lr.ph5.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph5.i.i.i.prol ], [ 0, %.lr.ph5.i.i.i.preheader ]
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv8.i.i.i.prol
  %i.en = load float, ptr %i.em, align 4, !tbaa !78
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.val80.i.i, i64 %indvars.iv8.i.i.i.prol
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !78
  %i.eq = fmul nsz float %i.en, %i.ep
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv8.i.i.i.prol
  store float %i.eq, ptr %i.er, align 4, !tbaa !78
  %indvars.iv.next9.i.i.i.prol = add nuw nsw i64 %indvars.iv8.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph5.i.i.i.prol.loopexit, label %.lr.ph5.i.i.i.prol, !llvm.loop !88

.lr.ph5.i.i.i.prol.loopexit:                      ; preds = %.lr.ph5.i.i.i.prol, %.lr.ph5.i.i.i.preheader
  %indvars.iv8.i.i.i.unr = phi i64 [ %indvars.iv8.i.i.i.ph, %.lr.ph5.i.i.i.preheader ], [ %indvars.iv.next9.i.i.i.prol, %.lr.ph5.i.i.i.prol ]
  %i.es = sub nsw i64 %indvars.iv8.i.i.i.ph, %wide.trip.count11.i.i.i
  %i.et = icmp ugt i64 %i.es, -4
  br i1 %i.et, label %apply_window.exit.i.i, label %.lr.ph5.i.i.i

.lr.ph5.i.i.i:                                    ; preds = %.lr.ph5.i.i.i.prol.loopexit, %.lr.ph5.i.i.i
  %indvars.iv8.i.i.i = phi i64 [ %indvars.iv.next9.i.i.i.3, %.lr.ph5.i.i.i ], [ %indvars.iv8.i.i.i.unr, %.lr.ph5.i.i.i.prol.loopexit ] ; 7 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv8.i.i.i
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !78
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.val80.i.i, i64 %indvars.iv8.i.i.i
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !78
  %i.ey = fmul nsz float %i.ev, %i.ex
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv8.i.i.i
  store float %i.ey, ptr %i.ez, align 4, !tbaa !78
  %indvars.iv.next9.i.i.i = add nuw nsw i64 %indvars.iv8.i.i.i, 1 ; 3 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.next9.i.i.i
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !78
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.val80.i.i, i64 %indvars.iv.next9.i.i.i
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !78
  %i.fe = fmul nsz float %i.fb, %i.fd
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.next9.i.i.i
  store float %i.fe, ptr %i.ff, align 4, !tbaa !78
  %indvars.iv.next9.i.i.i.1 = add nuw nsw i64 %indvars.iv8.i.i.i, 2 ; 3 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.next9.i.i.i.1
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !78
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.val80.i.i, i64 %indvars.iv.next9.i.i.i.1
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !78
  %i.fk = fmul nsz float %i.fh, %i.fj
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.next9.i.i.i.1
  store float %i.fk, ptr %i.fl, align 4, !tbaa !78
  %indvars.iv.next9.i.i.i.2 = add nuw nsw i64 %indvars.iv8.i.i.i, 3 ; 3 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.next9.i.i.i.2
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !78
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.val80.i.i, i64 %indvars.iv.next9.i.i.i.2
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !78
  %i.fq = fmul nsz float %i.fn, %i.fp
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.next9.i.i.i.2
  store float %i.fq, ptr %i.fr, align 4, !tbaa !78
  %indvars.iv.next9.i.i.i.3 = add nuw nsw i64 %indvars.iv8.i.i.i, 4 ; 2 uses
  %exitcond12.not.i.i.i.3 = icmp eq i64 %indvars.iv.next9.i.i.i.3, %wide.trip.count11.i.i.i
  br i1 %exitcond12.not.i.i.i.3, label %apply_window.exit.i.i, label %.lr.ph5.i.i.i, !llvm.loop !90

apply_window.exit.i.i:                            ; preds = %.lr.ph5.i.i.i.prol.loopexit, %.lr.ph5.i.i.i, %middle.block144, %bb.b
  %i.fs = getelementptr inbounds nuw i8, ptr %i.cw, i64 200
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !91
  %i.fu = getelementptr inbounds nuw i8, ptr %i.cw, i64 192
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !30
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.fv, i64 %indvars.iv
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !92
  call void %i.ft(ptr noundef %i.fx, ptr noundef %i.bv, ptr noundef %i.bi, i64 noundef 4) #8, !inline_history !94
  %i.fy = icmp sgt i32 %i.cy, -2
  br i1 %i.fy, label %.lr.ph.preheader.i.i.i, label %get_energy.exit.thread.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %apply_window.exit.i.i
  %wide.trip.count.i.i.i = zext i32 %i.da to i64  ; 23 uses
  %min.iters.check116 = icmp ult i32 %i.da, 4
  br i1 %min.iters.check116, label %.lr.ph.i.i.i.preheader, label %vector.memcheck109

vector.memcheck109:                               ; preds = %.lr.ph.preheader.i.i.i
  %i.fz = shl nuw nsw i64 %wide.trip.count.i.i.i, 2
  %scevgep110 = getelementptr i8, ptr %i.cb, i64 %i.fz
  %i.ga = shl nuw nsw i64 %wide.trip.count.i.i.i, 3
  %scevgep111 = getelementptr i8, ptr %i.bv, i64 %i.ga
  %bound0112 = icmp ult ptr %i.cb, %scevgep111
  %bound1113 = icmp ult ptr %i.bv, %scevgep110
  %found.conflict114 = and i1 %bound0112, %bound1113
  br i1 %found.conflict114, label %.lr.ph.i.i.i.preheader, label %vector.ph117

vector.ph117:                                     ; preds = %vector.memcheck109
  %n.vec118 = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph117
  %index120 = phi i64 [ 0, %vector.ph117 ], [ %index.next124, %vector.body119 ] ; 3 uses
  %i.gb = shl nuw nsw i64 %index120, 3
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.gb
  %wide.vec121 = load <8 x float>, ptr %i.gc, align 4, !tbaa !78, !alias.scope !95 ; 2 uses
  %strided.vec122 = shufflevector <8 x float> %wide.vec121, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec123 = shufflevector <8 x float> %wide.vec121, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.gd = fmul nsz <4 x float> %strided.vec122, %strided.vec122
  %i.ge = fmul nsz <4 x float> %strided.vec123, %strided.vec123
  %i.gf = fadd nsz <4 x float> %i.gd, %i.ge
  %i.gg = call nsz <4 x float> @llvm.log10.v4f32(<4 x float> %i.gf)
  %i.gh = fmul nsz <4 x float> %i.gg, splat (float 1.000000e+01) ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %index120
  %i.gj = call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %i.gh, /* (norm) */ i32 264)
  %i.gk = select <4 x i1> %i.gj, <4 x float> %i.gh, <4 x float> splat (float -3.510000e+02)
  store <4 x float> %i.gk, ptr %i.gi, align 4, !tbaa !78, !alias.scope !98, !noalias !95
  %index.next124 = add nuw i64 %index120, 4       ; 2 uses
  %i.gl = icmp eq i64 %index.next124, %n.vec118
  br i1 %i.gl, label %middle.block125, label %vector.body119, !llvm.loop !100

middle.block125:                                  ; preds = %vector.body119
  %cmp.n126 = icmp eq i64 %n.vec118, %wide.trip.count.i.i.i
  br i1 %cmp.n126, label %get_energy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck109, %.lr.ph.preheader.i.i.i, %middle.block125
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %vector.memcheck109 ], [ 0, %.lr.ph.preheader.i.i.i ], [ %n.vec118, %middle.block125 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.idx.i.i.i = shl nuw nsw i64 %indvars.iv.i.i.i, 3
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.i.i.i
  %i.gn = load <2 x float>, ptr %i.gm, align 4, !tbaa !78 ; 2 uses
  %i.go = fmul nsz <2 x float> %i.gn, %i.gn       ; 2 uses
  %shift = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd nsz <2 x float> %i.go, %shift
  %i.gp = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.gq = call nsz float @llvm.log10.f32(float %i.gp)
  %i.gr = fmul nsz float %i.gq, 1.000000e+01      ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.i.i.i
  %i.gt = call i1 @llvm.is.fpclass.f32(float %i.gr, /* (norm) */ i32 264)
  %storemerge.i.i.i = select i1 %i.gt, float %i.gr, float -3.510000e+02
  store float %storemerge.i.i.i, ptr %i.gs, align 4, !tbaa !78
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %get_energy.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !101

get_energy.exit.i.i:                              ; preds = %.lr.ph.i.i.i, %middle.block125
  %i.gu = getelementptr inbounds nuw i8, ptr %i.cw, i64 60
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !66
  %.val81.i.i = load ptr, ptr %i.b, align 8, !tbaa !9 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.dj, -1
  br i1 %.not.i.i.i, label %.lr.ph.i84.i.i, label %get_target_gain.exit..lr.ph.i89_crit_edge.i.i

get_energy.exit.thread.i.i:                       ; preds = %apply_window.exit.i.i
  %.not.i115.i.i = icmp sgt i32 %i.dj, -1
  br i1 %.not.i115.i.i, label %apply_factors.exit.i.i, label %get_target_gain.exit.i.i

.lr.ph.i84.i.i:                                   ; preds = %get_energy.exit.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.val81.i.i, i64 224
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i84.i.i
  %indvars.iv.i86.i.i = phi i64 [ 0, %.lr.ph.i84.i.i ], [ %indvars.iv.next.i87.i.i, %bb.c ] ; 4 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.i86.i.i
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !78
  %i.gz = trunc nuw nsw i64 %indvars.iv.i86.i.i to i32
  %i.ha = uitofp nneg i32 %i.gz to float
  %i.hb = fmul nsz float %i.gv, %i.ha
  %i.hc = insertelement <2 x float> poison, float %i.gy, i64 0
  %i.hd = insertelement <2 x float> %i.hc, float %i.hb, i64 1
  %i.he = fpext <2 x float> %i.hd to <2 x double>
  store <2 x double> %i.he, ptr %i.w, align 8, !tbaa !50
  %i.hf = load ptr, ptr %i.gw, align 8, !tbaa !20
  %i.hg = call nsz double @av_expr_eval(ptr noundef %i.hf, ptr noundef nonnull %i.a, ptr noundef %.val81.i.i) #8
  %i.hh = fptrunc nsz double %i.hg to float
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.i86.i.i
  store float %i.hh, ptr %i.hi, align 4, !tbaa !78
  %indvars.iv.next.i87.i.i = add nuw nsw i64 %indvars.iv.i86.i.i, 1 ; 2 uses
  %exitcond.not.i88.i.i = icmp eq i64 %indvars.iv.next.i87.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i88.i.i, label %.lr.ph.i89.i.i, label %bb.c, !llvm.loop !102

get_target_gain.exit.i.i:                         ; preds = %get_energy.exit.thread.i.i
  %i.hj = sext i32 %i.da to i64
  %i.hk = shl nsw i64 %i.hj, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ch, ptr readonly align 4 %i.cb, i64 %i.hk, i1 false)
  br label %apply_factors.exit.i.i

get_target_gain.exit..lr.ph.i89_crit_edge.i.i:    ; preds = %get_energy.exit.i.i
  %i.hl = shl nuw nsw i64 %wide.trip.count.i.i.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ch, ptr nonnull readonly align 4 %i.cb, i64 %i.hl, i1 false)
  br label %.lr.ph.i89.i.i

.lr.ph.i89.i.i:                                   ; preds = %bb.c, %get_target_gain.exit..lr.ph.i89_crit_edge.i.i
  %.val82122.pn.i.i = load ptr, ptr %i.b, align 8, !tbaa !9 ; 2 uses
  %.in125.in.i.i = getelementptr i8, ptr %.val82122.pn.i.i, i64 40
  %.in125.i.i = load double, ptr %.in125.in.i.i, align 8, !tbaa !103
  %i.hm = fptrunc double %.in125.i.i to float     ; 3 uses
  %.in.in.i.i = getelementptr i8, ptr %.val82122.pn.i.i, i64 32
  %.in.i.i = load double, ptr %.in.in.i.i, align 8, !tbaa !104
  %i.hn = fptrunc double %.in.i.i to float        ; 3 uses
  %i.ho = fsub nsz float 1.000000e+00, %i.hm      ; 2 uses
  %i.hp = fsub nsz float 1.000000e+00, %i.hn      ; 2 uses
  %min.iters.check90 = icmp ult i32 %i.da, 4
  br i1 %min.iters.check90, label %scalar.ph89.preheader, label %vector.memcheck78

vector.memcheck78:                                ; preds = %.lr.ph.i89.i.i
  %i.hq = shl nuw nsw i64 %wide.trip.count.i.i.i, 2 ; 3 uses
  %scevgep79 = getelementptr i8, ptr %i.cn, i64 %i.hq ; 2 uses
  %scevgep80 = getelementptr i8, ptr %i.ch, i64 %i.hq
  %scevgep81 = getelementptr i8, ptr %i.cb, i64 %i.hq
  %bound082 = icmp ult ptr %i.cn, %scevgep80
  %bound183 = icmp ult ptr %i.ch, %scevgep79
  %found.conflict84 = and i1 %bound082, %bound183
  %bound085 = icmp ult ptr %i.cn, %scevgep81
  %bound186 = icmp ult ptr %i.cb, %scevgep79
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx88 = or i1 %found.conflict84, %found.conflict87
  br i1 %conflict.rdx88, label %scalar.ph89.preheader, label %vector.ph91

vector.ph91:                                      ; preds = %vector.memcheck78
  %n.vec92 = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.hm, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert93 = insertelement <4 x float> poison, float %i.hn, i64 0
  %broadcast.splat94 = shufflevector <4 x float> %broadcast.splatinsert93, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert95 = insertelement <4 x float> poison, float %i.ho, i64 0
  %broadcast.splat96 = shufflevector <4 x float> %broadcast.splatinsert95, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert97 = insertelement <4 x float> poison, float %i.hp, i64 0
  %broadcast.splat98 = shufflevector <4 x float> %broadcast.splatinsert97, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph91
  %index100 = phi i64 [ 0, %vector.ph91 ], [ %index.next105, %vector.body99 ] ; 4 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %index100
  %wide.load101 = load <4 x float>, ptr %i.hr, align 4, !tbaa !78, !alias.scope !105
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %index100
  %wide.load102 = load <4 x float>, ptr %i.hs, align 4, !tbaa !78, !alias.scope !108
  %i.ht = fsub nsz <4 x float> %wide.load101, %wide.load102 ; 4 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %index100 ; 2 uses
  %wide.load103 = load <4 x float>, ptr %i.hu, align 4, !tbaa !78, !alias.scope !110, !noalias !112 ; 4 uses
  %i.hv = fcmp nsz ule <4 x float> %i.ht, %wide.load103
  %i.hw = fmul nsz <4 x float> %broadcast.splat96, %i.ht
  %i.hx = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load103, <4 x float> %i.hw)
  %i.hy = fmul nsz <4 x float> %broadcast.splat98, %i.ht
  %i.hz = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat94, <4 x float> %wide.load103, <4 x float> %i.hy)
  %i.ia = fcmp nsz uno <4 x float> %i.ht, %wide.load103
  %predphi = select <4 x i1> %i.ia, <4 x float> zeroinitializer, <4 x float> %i.hx
  %predphi104 = select <4 x i1> %i.hv, <4 x float> %predphi, <4 x float> %i.hz
  store <4 x float> %predphi104, ptr %i.hu, align 4, !tbaa !78, !alias.scope !110, !noalias !112
  %index.next105 = add nuw i64 %index100, 4       ; 2 uses
  %i.ib = icmp eq i64 %index.next105, %n.vec92
  br i1 %i.ib, label %middle.block106, label %vector.body99, !llvm.loop !113

middle.block106:                                  ; preds = %vector.body99
  %cmp.n107 = icmp eq i64 %n.vec92, %wide.trip.count.i.i.i
  br i1 %cmp.n107, label %.lr.ph.i96.i.i.preheader, label %scalar.ph89.preheader

scalar.ph89.preheader:                            ; preds = %vector.memcheck78, %.lr.ph.i89.i.i, %middle.block106
  %indvars.iv.i91.i.i.ph = phi i64 [ 0, %vector.memcheck78 ], [ 0, %.lr.ph.i89.i.i ], [ %n.vec92, %middle.block106 ]
  br label %scalar.ph89

scalar.ph89:                                      ; preds = %scalar.ph89.preheader, %bb.g
  %indvars.iv.i91.i.i = phi i64 [ %indvars.iv.next.i92.i.i, %bb.g ], [ %indvars.iv.i91.i.i.ph, %scalar.ph89.preheader ] ; 4 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.i91.i.i
  %i.id = load float, ptr %i.ic, align 4, !tbaa !78
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.i91.i.i
  %i.if = load float, ptr %i.ie, align 4, !tbaa !78
  %i.ig = fsub nsz float %i.id, %i.if             ; 4 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i91.i.i ; 2 uses
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !78 ; 4 uses
  %i.ij = fcmp nsz ogt float %i.ig, %i.ii
  br i1 %i.ij, label %bb.d, label %bb.e

bb.d:                                             ; preds = %scalar.ph89
  %i.ik = fmul nsz float %i.hp, %i.ig
  %i.il = call nsz float @llvm.fmuladd.f32(float %i.hn, float %i.ii, float %i.ik)
  br label %bb.g

bb.e:                                             ; preds = %scalar.ph89
  %i.im = fcmp nsz ugt float %i.ig, %i.ii
  br i1 %i.im, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.in = fmul nsz float %i.ho, %i.ig
  %i.io = call nsz float @llvm.fmuladd.f32(float %i.hm, float %i.ii, float %i.in)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sink.i.i.i = phi float [ %i.io, %bb.f ], [ %i.il, %bb.d ], [ 0.000000e+00, %bb.e ]
  store float %.sink.i.i.i, ptr %i.ih, align 4, !tbaa !78
  %indvars.iv.next.i92.i.i = add nuw nsw i64 %indvars.iv.i91.i.i, 1 ; 2 uses
  %exitcond.not.i93.i.i = icmp eq i64 %indvars.iv.next.i92.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i93.i.i, label %.lr.ph.i96.i.i.preheader, label %scalar.ph89, !llvm.loop !114

.lr.ph.i96.i.i.preheader:                         ; preds = %bb.g, %middle.block106
  %min.iters.check68 = icmp ult i32 %i.da, 4
  %i.ip = sub i64 %i.co, %i.cv
  %diff.check66 = icmp ugt i64 %i.ip, -16
  %or.cond = select i1 %min.iters.check68, i1 true, i1 %diff.check66
  br i1 %or.cond, label %.lr.ph.i96.i.i.preheader150, label %vector.ph69

vector.ph69:                                      ; preds = %.lr.ph.i96.i.i.preheader
  %n.vec70 = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph69
  %index72 = phi i64 [ 0, %vector.ph69 ], [ %index.next74, %vector.body71 ] ; 3 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %index72
  %wide.load73 = load <4 x float>, ptr %i.iq, align 4, !tbaa !78
  %i.ir = fdiv nsz <4 x float> %wide.load73, splat (float 1.000000e+01)
  %i.is = fpext nsz <4 x float> %i.ir to <4 x double>
  %i.it = fmul nsz <4 x double> %i.is, splat (double f0x400A934F0979A371)
  %i.iu = fptrunc nsz <4 x double> %i.it to <4 x float>
  %i.iv = call nsz <4 x float> @llvm.exp2.v4f32(<4 x float> %i.iu)
  %i.iw = call nsz <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.iv)
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %index72
  store <4 x float> %i.iw, ptr %i.ix, align 4, !tbaa !78
  %index.next74 = add nuw i64 %index72, 4         ; 2 uses
  %i.iy = icmp eq i64 %index.next74, %n.vec70
  br i1 %i.iy, label %middle.block75, label %vector.body71, !llvm.loop !115

middle.block75:                                   ; preds = %vector.body71
  %cmp.n76 = icmp eq i64 %n.vec70, %wide.trip.count.i.i.i
  br i1 %cmp.n76, label %.lr.ph.i102.i.i.preheader, label %.lr.ph.i96.i.i.preheader150

.lr.ph.i96.i.i.preheader150:                      ; preds = %.lr.ph.i96.i.i.preheader, %middle.block75
  %indvars.iv.i97.i.i.ph = phi i64 [ 0, %.lr.ph.i96.i.i.preheader ], [ %n.vec70, %middle.block75 ] ; 5 uses
  %xtraiter151 = and i64 %wide.trip.count.i.i.i, 1
  %lcmp.mod152.not = icmp eq i64 %xtraiter151, 0
  br i1 %lcmp.mod152.not, label %.lr.ph.i96.i.i.prol.loopexit, label %.lr.ph.i96.i.i.prol

.lr.ph.i96.i.i.prol:                              ; preds = %.lr.ph.i96.i.i.preheader150
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i97.i.i.ph
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !78
  %i.jb = fdiv nsz float %i.ja, 1.000000e+01
  %i.jc = fpext nsz float %i.jb to double
  %i.jd = fmul nsz double %i.jc, f0x400A934F0979A371
  %i.je = fptrunc nsz double %i.jd to float
  %i.jf = call nsz float @llvm.exp2.f32(float %i.je)
  %i.jg = call nsz float @llvm.sqrt.f32(float %i.jf)
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv.i97.i.i.ph
  store float %i.jg, ptr %i.jh, align 4, !tbaa !78
  %indvars.iv.next.i98.i.i.prol = or disjoint i64 %indvars.iv.i97.i.i.ph, 1
  br label %.lr.ph.i96.i.i.prol.loopexit

.lr.ph.i96.i.i.prol.loopexit:                     ; preds = %.lr.ph.i96.i.i.prol, %.lr.ph.i96.i.i.preheader150
  %indvars.iv.i97.i.i.unr = phi i64 [ %indvars.iv.i97.i.i.ph, %.lr.ph.i96.i.i.preheader150 ], [ %indvars.iv.next.i98.i.i.prol, %.lr.ph.i96.i.i.prol ]
  %i.ji = add nsw i64 %wide.trip.count.i.i.i, -1
  %i.jj = icmp eq i64 %indvars.iv.i97.i.i.ph, %i.ji
  br i1 %i.jj, label %.lr.ph.i102.i.i.preheader, label %.lr.ph.i96.i.i

.lr.ph.i96.i.i:                                   ; preds = %.lr.ph.i96.i.i.prol.loopexit, %.lr.ph.i96.i.i
  %indvars.iv.i97.i.i = phi i64 [ %indvars.iv.next.i98.i.i.1, %.lr.ph.i96.i.i ], [ %indvars.iv.i97.i.i.unr, %.lr.ph.i96.i.i.prol.loopexit ] ; 4 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i97.i.i
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !78
  %i.jm = fdiv nsz float %i.jl, 1.000000e+01
  %i.jn = fpext nsz float %i.jm to double
  %i.jo = fmul nsz double %i.jn, f0x400A934F0979A371
  %i.jp = fptrunc nsz double %i.jo to float
  %i.jq = call nsz float @llvm.exp2.f32(float %i.jp)
  %i.jr = call nsz float @llvm.sqrt.f32(float %i.jq)
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv.i97.i.i
  store float %i.jr, ptr %i.js, align 4, !tbaa !78
  %indvars.iv.next.i98.i.i = add nuw nsw i64 %indvars.iv.i97.i.i, 1 ; 2 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.next.i98.i.i
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !78
  %i.jv = fdiv nsz float %i.ju, 1.000000e+01
  %i.jw = fpext nsz float %i.jv to double
  %i.jx = fmul nsz double %i.jw, f0x400A934F0979A371
  %i.jy = fptrunc nsz double %i.jx to float
  %i.jz = call nsz float @llvm.exp2.f32(float %i.jy)
  %i.ka = call nsz float @llvm.sqrt.f32(float %i.jz)
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv.next.i98.i.i
  store float %i.ka, ptr %i.kb, align 4, !tbaa !78
  %indvars.iv.next.i98.i.i.1 = add nuw nsw i64 %indvars.iv.i97.i.i, 2 ; 2 uses
  %exitcond.not.i99.i.i.1 = icmp eq i64 %indvars.iv.next.i98.i.i.1, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i99.i.i.1, label %.lr.ph.i102.i.i.preheader, label %.lr.ph.i96.i.i, !llvm.loop !116

.lr.ph.i102.i.i.preheader:                        ; preds = %.lr.ph.i96.i.i.prol.loopexit, %.lr.ph.i96.i.i, %middle.block75
  %min.iters.check53 = icmp ult i32 %i.da, 4
  br i1 %min.iters.check53, label %.lr.ph.i102.i.i.preheader149, label %vector.memcheck46

vector.memcheck46:                                ; preds = %.lr.ph.i102.i.i.preheader
  %i.kc = shl nuw nsw i64 %wide.trip.count.i.i.i, 3
  %scevgep47 = getelementptr i8, ptr %i.bv, i64 %i.kc
  %i.kd = shl nuw nsw i64 %wide.trip.count.i.i.i, 2
  %scevgep48 = getelementptr i8, ptr %i.cu, i64 %i.kd
  %bound049 = icmp ult ptr %i.bv, %scevgep48
  %bound150 = icmp ult ptr %i.cu, %scevgep47
end_hunk_0
