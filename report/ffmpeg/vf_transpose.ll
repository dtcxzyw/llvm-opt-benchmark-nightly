Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_transpose?download=true
inline.NumInlined: 8
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 17
begin_hunk_0_@filter_frame:bb.a
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !69
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr %1, ptr %2, align 8, !tbaa !47
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.q, ptr %i.ad, align 8, !tbaa !48
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !40
  %i.af = tail call i32 @ff_filter_get_nb_threads(ptr noundef nonnull %i.d) #12
  %. = tail call i32 @llvm.smin.i32(i32 %i.ae, i32 %i.af)
  %i.ag = call i32 @ff_filter_execute(ptr noundef nonnull %i.d, ptr noundef nonnull @filter_slice, ptr noundef nonnull %2, ptr noundef null, i32 noundef %.) #11 ; 0 uses
  call void @av_frame_free(ptr noundef nonnull %i.a) #11
  %i.ah = call i32 @ff_filter_frame(ptr noundef nonnull %i.i, ptr noundef nonnull %i.q) #11
  br label %bb.j

bb.i:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ %i.r, %bb.d ], [ -12, %bb.c ]
  call void @av_frame_free(ptr noundef nonnull %i.a) #11
  call void @av_frame_free(ptr noundef nonnull %i.b) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.b
  %.016 = phi i32 [ %i.l, %bb.b ], [ %.0, %bb.i ], [ %i.ah, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret i32 %.016
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @ff_null_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ff_default_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @filter_slice(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48   ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !47     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !49
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 108
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.o = sext i32 %2 to i64
  %i.p = sext i32 %3 to i64                       ; 2 uses
  %i.q = add nsw i32 %2, 1
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv160 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next161, %bb.i ] ; 8 uses
  %i.w = trunc i64 %indvars.iv160 to i32
  %i.x = add i32 %i.w, -1
  %or.cond = icmp ult i32 %i.x, 2
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.y = load i32, ptr %i.i, align 8, !tbaa !73
  %i.z = load i32, ptr %i.j, align 4, !tbaa !74
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.aa = phi i32 [ %i.y, %bb.c ], [ 0, %bb.b ]
  %i.ab = phi i32 [ %i.z, %bb.c ], [ 0, %bb.b ]   ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv160
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !45 ; 4 uses
  %i.ae = load i32, ptr %i.l, align 4, !tbaa !75
  %i.af = load i32, ptr %i.m, align 8, !tbaa !76
  %i.ag = sub nsw i32 0, %i.af
  %i.ah = ashr i32 %i.ag, %i.aa                   ; 4 uses
  %i.ai = sub nsw i32 0, %i.ah                    ; 3 uses
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !75
  %i.ak = sub nsw i32 0, %i.aj
  %i.al = ashr i32 %i.ak, %i.ab                   ; 2 uses
  %i.am = sub nsw i32 0, %i.al
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = mul nsw i64 %i.an, %i.o
  %i.ap = sdiv i64 %i.ao, %i.p                    ; 3 uses
  %i.aq = trunc i64 %i.ap to i32                  ; 7 uses
  %i.ar = mul nsw i64 %i.an, %i.r
  %i.as = sdiv i64 %i.ar, %i.p                    ; 3 uses
  %i.at = trunc i64 %i.as to i32                  ; 3 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv160 ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv160
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !45 ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv160
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !77
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv160
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !77
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv160
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !45 ; 3 uses
  %i.bd = load i32, ptr %i.v, align 8, !tbaa !50  ; 2 uses
  %i.be = and i32 %i.bd, 1
  %.not = icmp eq i32 %i.be, 0                    ; 2 uses
  %i.bf = add i32 %i.ae, -1
  %i.bg = ashr i32 %i.bf, %i.ab
  %i.bh = mul nsw i32 %i.bc, %i.bg
  %i.bi = sub nsw i32 0, %i.bc
  %narrow = select i1 %.not, i32 0, i32 %i.bh
  %.0129.idx = sext i32 %narrow to i64
  %.0129 = getelementptr inbounds i8, ptr %i.ba, i64 %.0129.idx ; 4 uses
  %.0127 = select i1 %.not, i32 %i.bc, i32 %i.bi  ; 3 uses
  %i.bj = and i32 %i.bd, 2
  %.not135 = icmp eq i32 %i.bj, 0                 ; 2 uses
  %i.bk = xor i32 %i.aq, -1
  %i.bl = sub i32 %i.bk, %i.al
  %i.bm = sub nsw i32 0, %i.aw
  %.pn136 = select i1 %.not135, i32 %i.aq, i32 %i.bl
  %.0128 = select i1 %.not135, i32 %i.aw, i32 %i.bm ; 3 uses
  %.pn.in = mul nsw i32 %.pn136, %i.aw
  %.pn = sext i32 %.pn.in to i64
  %.0130 = getelementptr inbounds i8, ptr %i.ay, i64 %.pn ; 3 uses
  %i.bn = add nsw i32 %i.at, -7                   ; 3 uses
  %i.bo = icmp sgt i32 %i.bn, %i.aq
  br i1 %i.bo, label %.preheader.lr.ph, label %._crit_edge139

.preheader.lr.ph:                                 ; preds = %bb.d
  %i.bp = icmp slt i32 %i.ah, -7
  %i.bq = sext i32 %.0127 to i64                  ; 4 uses
  %i.br = sext i32 %.0128 to i64                  ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  br i1 %i.bp, label %.preheader.us.preheader, label %.preheader.lr.ph.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.bt = sub nuw nsw i32 -7, %i.ah
  %i.bu = sext i32 %i.ad to i64                   ; 2 uses
  %i.bv = zext nneg i32 %i.bt to i64
  %sext168 = shl i64 %i.ap, 32
  %i.bw = ashr exact i64 %sext168, 32             ; 2 uses
  %i.bx = sext i32 %i.bn to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.g
  %indvars.iv157 = phi i64 [ %i.bw, %.preheader.us.preheader ], [ %indvars.iv.next158, %bb.g ] ; 4 uses
  %i.by = mul nsw i64 %indvars.iv157, %i.bu       ; 2 uses
  %invariant.gep.us = getelementptr i8, ptr %.0129, i64 %i.by
  %i.bz = sub nsw i64 %indvars.iv157, %i.bw
  %i.ca = mul nsw i64 %i.bz, %i.br
  %i.cb = getelementptr inbounds i8, ptr %.0130, i64 %i.ca ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader.us, %bb.e
  %indvars.iv154 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next155, %bb.e ] ; 3 uses
  %i.cc = load ptr, ptr %i.au, align 8, !tbaa !52
  %i.cd = mul nsw i64 %indvars.iv154, %i.bq
  %gep.us = getelementptr i8, ptr %invariant.gep.us, i64 %i.cd
  %i.ce = mul nsw i64 %indvars.iv154, %i.bu
  %i.cf = getelementptr inbounds i8, ptr %i.cb, i64 %i.ce
  tail call void %i.cc(ptr noundef %gep.us, i64 noundef %i.bq, ptr noundef %i.cf, i64 noundef %i.br) #11
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 8 ; 3 uses
  %i.cg = icmp samesign ult i64 %indvars.iv.next155, %i.bv
  br i1 %i.cg, label %bb.e, label %._crit_edge.us, !llvm.loop !70

bb.f:                                             ; preds = %._crit_edge.us
  %i.ch = sub i64 %i.as, %indvars.iv157
  %i.ci = load ptr, ptr %i.bs, align 8, !tbaa !53
  %i.cj = mul nsw i32 %.0127, %i.cs
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds i8, ptr %.0129, i64 %i.ck
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 %i.by
  %i.cn = mul nsw i32 %i.ad, %i.cs
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds i8, ptr %i.cb, i64 %i.co
  %i.cq = trunc i64 %i.ch to i32
  tail call void %i.ci(ptr noundef %i.cm, i64 noundef %i.bq, ptr noundef %i.cp, i64 noundef %i.br, i32 noundef %i.ct, i32 noundef %i.cq) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.us
  %indvars.iv.next158 = add nsw i64 %indvars.iv157, 8 ; 3 uses
  %i.cr = icmp slt i64 %indvars.iv.next158, %i.bx
  br i1 %i.cr, label %.preheader.us, label %._crit_edge139.loopexit, !llvm.loop !71

._crit_edge.us:                                   ; preds = %bb.e
  %i.cs = trunc nsw i64 %indvars.iv.next155 to i32 ; 3 uses
  %i.ct = sub nsw i32 %i.ai, %i.cs                ; 2 uses
  %i.cu = icmp sgt i32 %i.ct, 0
  br i1 %i.cu, label %bb.f, label %bb.g

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.cv = icmp slt i32 %i.ah, 0
  br i1 %i.cv, label %.preheader.us141.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.cw = add i32 %i.at, -8
  %i.cx = sub i32 %i.cw, %i.aq
  %i.cy = and i32 %i.cx, -8
  %i.cz = add i32 %i.cy, 8
  %i.da = add i32 %i.cz, %i.aq
  br label %._crit_edge139

.preheader.us141.preheader:                       ; preds = %.preheader.lr.ph.split
  %sext = shl i64 %i.ap, 32
  %i.db = ashr exact i64 %sext, 32                ; 2 uses
  %i.dc = sext i32 %i.ad to i64
  %i.dd = sext i32 %i.bn to i64
  br label %.preheader.us141

.preheader.us141:                                 ; preds = %.preheader.us141.preheader, %.preheader.us141
  %indvars.iv = phi i64 [ %i.db, %.preheader.us141.preheader ], [ %indvars.iv.next, %.preheader.us141 ] ; 4 uses
  %i.de = sub i64 %i.as, %indvars.iv
  %i.df = load ptr, ptr %i.bs, align 8, !tbaa !53
  %i.dg = mul nsw i64 %indvars.iv, %i.dc
  %i.dh = getelementptr inbounds i8, ptr %.0129, i64 %i.dg
  %i.di = sub nsw i64 %indvars.iv, %i.db
  %i.dj = mul nsw i64 %i.di, %i.br
  %i.dk = getelementptr inbounds i8, ptr %.0130, i64 %i.dj
  %i.dl = trunc i64 %i.de to i32
  tail call void %i.df(ptr noundef %i.dh, i64 noundef %i.bq, ptr noundef %i.dk, i64 noundef %i.br, i32 noundef %i.ai, i32 noundef %i.dl) #11
  %indvars.iv.next = add nsw i64 %indvars.iv, 8   ; 3 uses
  %i.dm = icmp slt i64 %indvars.iv.next, %i.dd
  br i1 %i.dm, label %.preheader.us141, label %._crit_edge139.loopexit148, !llvm.loop !71

._crit_edge139.loopexit:                          ; preds = %bb.g
  %i.dn = trunc nsw i64 %indvars.iv.next158 to i32
  br label %._crit_edge139

._crit_edge139.loopexit148:                       ; preds = %.preheader.us141
  %i.do = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge139

._crit_edge139:                                   ; preds = %.preheader.preheader, %._crit_edge139.loopexit148, %._crit_edge139.loopexit, %bb.d
  %.0.lcssa = phi i32 [ %i.aq, %bb.d ], [ %i.do, %._crit_edge139.loopexit148 ], [ %i.dn, %._crit_edge139.loopexit ], [ %i.da, %.preheader.preheader ] ; 3 uses
  %i.dp = sub nsw i32 %i.at, %.0.lcssa            ; 2 uses
  %i.dq = icmp sgt i32 %i.dp, 0
  br i1 %i.dq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge139
  %i.dr = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !53
  %i.dt = mul nsw i32 %.0.lcssa, %i.ad
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds i8, ptr %.0129, i64 %i.du
  %i.dw = sext i32 %.0127 to i64
  %i.dx = sub nsw i32 %.0.lcssa, %i.aq
  %i.dy = mul nsw i32 %i.dx, %.0128
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds i8, ptr %.0130, i64 %i.dz
  %i.eb = sext i32 %.0128 to i64
  tail call void %i.ds(ptr noundef %i.dv, i64 noundef %i.dw, ptr noundef %i.ea, i64 noundef %i.eb, i32 noundef %i.ai, i32 noundef %i.dp) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge139
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %i.ec = load i32, ptr %i.f, align 8, !tbaa !49
  %i.ed = sext i32 %i.ec to i64
  %i.ee = icmp slt i64 %indvars.iv.next161, %i.ed
  br i1 %i.ee, label %bb.b, label %._crit_edge, !llvm.loop !72

._crit_edge:                                      ; preds = %bb.i, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @config_props_output(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !78     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 19 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !79
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !80
  %i.i = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.h) #11 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !80
  %i.l = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.k) #11 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !50
  %i.o = and i32 %i.n, 4
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 24, ptr noundef nonnull @.str.3) #11
  %i.p = load i32, ptr %i.m, align 8, !tbaa !50
  %i.q = and i32 %i.p, 3
  store i32 %i.q, ptr %i.m, align 8, !tbaa !50
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 1, ptr %i.r, align 4, !tbaa !35
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !39   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 44 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !40   ; 4 uses
  %.not72 = icmp slt i32 %i.t, %i.v
  br i1 %.not72, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.x = load i32, ptr %i.w, align 4, !tbaa !35
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not73 = icmp sgt i32 %i.t, %i.v
  br i1 %.not73, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !35
  %i.ab = icmp eq i32 %i.aa, 2
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 40, ptr noundef nonnull @.str.4, i32 noundef %i.t, i32 noundef %i.v, i32 noundef %i.t, i32 noundef %i.v) #11
  br label %bb.q

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 0, ptr %i.ac, align 4, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.af = load <2 x i8>, ptr %i.ad, align 1, !tbaa !54
  %i.ag = zext <2 x i8> %i.af to <2 x i32>
  store <2 x i32> %i.ag, ptr %i.ae, align 8, !tbaa !45
  %i.ah = load i32, ptr %i.g, align 4, !tbaa !80
  %i.ai = tail call i32 @av_pix_fmt_count_planes(i32 noundef %i.ah) #11
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !49
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !81
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.an = load i8, ptr %i.am, align 8, !tbaa !81
  %i.ao = icmp eq i8 %i.al, %i.an
  br i1 %i.ao, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 208) #11
  tail call void @abort() #13
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 2 uses
  tail call void @av_image_fill_max_pixsteps(ptr noundef nonnull %i.ap, ptr noundef null, ptr noundef nonnull %i.i) #11
  %i.aq = load i32, ptr %i.u, align 4, !tbaa !40  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !39
  %i.as = load i32, ptr %i.s, align 8, !tbaa !39  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.as, ptr %i.at, align 4, !tbaa !40
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !82
  %.not74 = icmp eq i32 %i.av, 0
  %i.aw = load i64, ptr %i.au, align 8            ; 2 uses
  br i1 %.not74, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = tail call i64 @av_div_q(i64 4294967297, i64 %i.aw) #14
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.sink = phi i64 [ %i.ax, %bb.k ], [ %i.aw, %bb.j ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sink, ptr %i.ay, align 8, !tbaa !45
  %i.az = load i32, ptr %i.ap, align 4, !tbaa !45
  %switch.tableidx = add i32 %i.az, -1            ; 4 uses
  %i.ba = icmp ult i32 %switch.tableidx, 8
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -81, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.ba, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.m

switch.lookup:                                    ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.bc = zext nneg i32 %switch.tableidx to i64
end_hunk_0
