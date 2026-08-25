Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_transpose?download=true
inline.NumInlined: 8
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 17
begin_hunk_0_@query_formats:bb.a
._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.o = phi ptr [ %.pre, %._crit_edge.loopexit ], [ null, %bb.a ]
  %i.p = call i32 @ff_set_common_formats2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %i.o) #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %._crit_edge
  %.012 = phi i32 [ %i.p, %._crit_edge ], [ %i.k, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define internal ptr @get_video_buffer(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !37
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @ff_null_get_video_buffer(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) #11
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call ptr @ff_default_get_video_buffer(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %2 = alloca %struct.ThreadData, align 8         ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !37
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 @ff_filter_frame(ptr noundef %i.i, ptr noundef %1) #11
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !44
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 44 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !45
  %i.q = tail call ptr @ff_get_video_buffer(ptr noundef %i.i, i32 noundef %i.n, i32 noundef %i.p) #11 ; 8 uses
  store ptr %i.q, ptr %i.b, align 8, !tbaa !39
  %.not21 = icmp eq ptr %i.q, null
  br i1 %.not21, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.q, ptr noundef %1) #11 ; 2 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 124 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !46
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 124
  %i.x = load i64, ptr %i.t, align 4
  store i64 %i.x, ptr %i.w, align 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.z = load i32, ptr %i.y, align 4, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 124
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !46
  %i.ab = load i32, ptr %i.t, align 4, !tbaa !46
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !51
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr %1, ptr %2, align 8, !tbaa !52
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.q, ptr %i.ad, align 8, !tbaa !54
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !45
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54   ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !52     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !55
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
  %i.y = load i32, ptr %i.i, align 8, !tbaa !56
  %i.z = load i32, ptr %i.j, align 4, !tbaa !57
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.aa = phi i32 [ %i.y, %bb.c ], [ 0, %bb.b ]
  %i.ab = phi i32 [ %i.z, %bb.c ], [ 0, %bb.b ]   ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv160
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !58 ; 4 uses
  %i.ae = load i32, ptr %i.l, align 4, !tbaa !59
  %i.af = load i32, ptr %i.m, align 8, !tbaa !60
  %i.ag = sub nsw i32 0, %i.af
  %i.ah = ashr i32 %i.ag, %i.aa                   ; 4 uses
  %i.ai = sub nsw i32 0, %i.ah                    ; 3 uses
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !59
  %i.ak = sub nsw i32 0, %i.aj
  %i.al = ashr i32 %i.ak, %i.ab                   ; 2 uses
  %i.am = sub nsw i32 0, %i.al
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = mul nsw i64 %i.an, %i.o
  %i.ap = sdiv i64 %i.ao, %i.p                    ; 3 uses
  %i.aq = trunc i64 %i.ap to i32                  ; 8 uses
  %i.ar = mul nsw i64 %i.an, %i.r
  %i.as = sdiv i64 %i.ar, %i.p                    ; 3 uses
  %i.at = trunc i64 %i.as to i32                  ; 2 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv160 ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv160
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !58 ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv160
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !61
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv160
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !61
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv160
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !58 ; 3 uses
  %i.bd = load i32, ptr %i.v, align 8, !tbaa !62  ; 2 uses
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
  %i.bn = add nsw i32 %i.at, -7                   ; 4 uses
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
  %i.cc = load ptr, ptr %i.au, align 8, !tbaa !63
  %i.cd = mul nsw i64 %indvars.iv154, %i.bq
  %gep.us = getelementptr i8, ptr %invariant.gep.us, i64 %i.cd
  %i.ce = mul nsw i64 %indvars.iv154, %i.bu
  %i.cf = getelementptr inbounds i8, ptr %i.cb, i64 %i.ce
  tail call void %i.cc(ptr noundef %gep.us, i64 noundef %i.bq, ptr noundef %i.cf, i64 noundef %i.br) #11
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 8 ; 3 uses
  %i.cg = icmp samesign ult i64 %indvars.iv.next155, %i.bv
  br i1 %i.cg, label %bb.e, label %._crit_edge.us, !llvm.loop !65

bb.f:                                             ; preds = %._crit_edge.us
  %i.ch = sub i64 %i.as, %indvars.iv157
  %i.ci = load ptr, ptr %i.bs, align 8, !tbaa !66
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
  br i1 %i.cr, label %.preheader.us, label %._crit_edge139.loopexit, !llvm.loop !67

._crit_edge.us:                                   ; preds = %bb.e
  %i.cs = trunc nsw i64 %indvars.iv.next155 to i32 ; 3 uses
  %i.ct = sub nsw i32 %i.ai, %i.cs                ; 2 uses
  %i.cu = icmp sgt i32 %i.ct, 0
  br i1 %i.cu, label %bb.f, label %bb.g

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.cv = icmp slt i32 %i.ah, 0
  br i1 %i.cv, label %.preheader.us141.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.cw = add nsw i32 %i.aq, 8
  %smax = tail call i32 @llvm.smax.i32(i32 %i.bn, i32 %i.cw)
  %4 = xor i32 %i.aq, -1
  %5 = add i32 %smax, %4
  %i.cx = and i32 %5, -8
  %i.cy = add i32 %i.cx, 8
  %i.cz = add i32 %i.cy, %i.aq
  br label %._crit_edge139

.preheader.us141.preheader:                       ; preds = %.preheader.lr.ph.split
  %sext = shl i64 %i.ap, 32
  %i.da = ashr exact i64 %sext, 32                ; 2 uses
  %i.db = sext i32 %i.ad to i64
  %i.dc = sext i32 %i.bn to i64
  br label %.preheader.us141

.preheader.us141:                                 ; preds = %.preheader.us141.preheader, %.preheader.us141
  %indvars.iv = phi i64 [ %i.da, %.preheader.us141.preheader ], [ %indvars.iv.next, %.preheader.us141 ] ; 4 uses
  %i.dd = sub i64 %i.as, %indvars.iv
  %i.de = load ptr, ptr %i.bs, align 8, !tbaa !66
  %i.df = mul nsw i64 %indvars.iv, %i.db
  %i.dg = getelementptr inbounds i8, ptr %.0129, i64 %i.df
  %i.dh = sub nsw i64 %indvars.iv, %i.da
  %i.di = mul nsw i64 %i.dh, %i.br
  %i.dj = getelementptr inbounds i8, ptr %.0130, i64 %i.di
  %i.dk = trunc i64 %i.dd to i32
  tail call void %i.de(ptr noundef %i.dg, i64 noundef %i.bq, ptr noundef %i.dj, i64 noundef %i.br, i32 noundef %i.ai, i32 noundef %i.dk) #11
  %indvars.iv.next = add nsw i64 %indvars.iv, 8   ; 3 uses
  %i.dl = icmp slt i64 %indvars.iv.next, %i.dc
  br i1 %i.dl, label %.preheader.us141, label %._crit_edge139.loopexit148, !llvm.loop !67

._crit_edge139.loopexit:                          ; preds = %bb.g
  %i.dm = trunc nsw i64 %indvars.iv.next158 to i32
  br label %._crit_edge139

._crit_edge139.loopexit148:                       ; preds = %.preheader.us141
  %i.dn = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge139

._crit_edge139:                                   ; preds = %.preheader.preheader, %._crit_edge139.loopexit148, %._crit_edge139.loopexit, %bb.d
  %.0.lcssa = phi i32 [ %i.aq, %bb.d ], [ %i.dn, %._crit_edge139.loopexit148 ], [ %i.dm, %._crit_edge139.loopexit ], [ %i.cz, %.preheader.preheader ] ; 3 uses
  %i.do = sub nsw i32 %i.at, %.0.lcssa            ; 2 uses
  %i.dp = icmp sgt i32 %i.do, 0
  br i1 %i.dp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge139
  %i.dq = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !66
  %i.ds = mul nsw i32 %.0.lcssa, %i.ad
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds i8, ptr %.0129, i64 %i.dt
  %i.dv = sext i32 %.0127 to i64
  %i.dw = sub nsw i32 %.0.lcssa, %i.aq
  %i.dx = mul nsw i32 %i.dw, %.0128
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds i8, ptr %.0130, i64 %i.dy
  %i.ea = sext i32 %.0128 to i64
  tail call void %i.dr(ptr noundef %i.du, i64 noundef %i.dv, ptr noundef %i.dz, i64 noundef %i.ea, i32 noundef %i.ai, i32 noundef %i.do) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge139
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %i.eb = load i32, ptr %i.f, align 8, !tbaa !55
  %i.ec = sext i32 %i.eb to i64
  %i.ed = icmp slt i64 %indvars.iv.next161, %i.ec
  br i1 %i.ed, label %bb.b, label %._crit_edge, !llvm.loop !68

._crit_edge:                                      ; preds = %bb.i, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @config_props_output(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !69     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 19 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !71
  %i.i = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.h) #11 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !71
  %i.l = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.k) #11 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !62
  %i.o = and i32 %i.n, 4
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 24, ptr noundef nonnull @.str.3) #11
  %i.p = load i32, ptr %i.m, align 8, !tbaa !62
  %i.q = and i32 %i.p, 3
  store i32 %i.q, ptr %i.m, align 8, !tbaa !62
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 1, ptr %i.r, align 4, !tbaa !37
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !44   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 44 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !45   ; 4 uses
  %.not72 = icmp slt i32 %i.t, %i.v
  br i1 %.not72, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.x = load i32, ptr %i.w, align 4, !tbaa !37
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not73 = icmp sgt i32 %i.t, %i.v
  br i1 %.not73, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !37
  %i.ab = icmp eq i32 %i.aa, 2
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 40, ptr noundef nonnull @.str.4, i32 noundef %i.t, i32 noundef %i.v, i32 noundef %i.t, i32 noundef %i.v) #11
  br label %bb.q

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 0, ptr %i.ac, align 4, !tbaa !37
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.af = load <2 x i8>, ptr %i.ad, align 1, !tbaa !72
  %i.ag = zext <2 x i8> %i.af to <2 x i32>
  store <2 x i32> %i.ag, ptr %i.ae, align 8, !tbaa !58
  %i.ah = load i32, ptr %i.g, align 4, !tbaa !71
  %i.ai = tail call i32 @av_pix_fmt_count_planes(i32 noundef %i.ah) #11
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !55
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !73
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.an = load i8, ptr %i.am, align 8, !tbaa !73
  %i.ao = icmp eq i8 %i.al, %i.an
  br i1 %i.ao, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 208) #11
  tail call void @abort() #13
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 2 uses
  tail call void @av_image_fill_max_pixsteps(ptr noundef nonnull %i.ap, ptr noundef null, ptr noundef nonnull %i.i) #11
  %i.aq = load i32, ptr %i.u, align 4, !tbaa !45  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !44
  %i.as = load i32, ptr %i.s, align 8, !tbaa !44  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.as, ptr %i.at, align 4, !tbaa !45
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !74
  %.not74 = icmp eq i32 %i.av, 0
  %i.aw = load i64, ptr %i.au, align 8            ; 2 uses
  br i1 %.not74, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = tail call i64 @av_div_q(i64 4294967297, i64 %i.aw) #14
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.sink = phi i64 [ %i.ax, %bb.k ], [ %i.aw, %bb.j ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sink, ptr %i.ay, align 8
  %i.az = load i32, ptr %i.ap, align 4, !tbaa !58
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
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.config_props_output.6, i64 %i.bc
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.bd = zext nneg i32 %switch.tableidx to i64
  %switch.gep88 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.config_props_output.7, i64 %i.bd
  %switch.load89 = load ptr, ptr %switch.gep88, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %switch.load, ptr %i.be, align 8, !tbaa !66
  store ptr %switch.load89, ptr %i.bb, align 8, !tbaa !63
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %switch.lookup
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 24
end_hunk_0
begin_hunk_1_@transpose_8x8_64_c:.preheader.i
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !113
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !113
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %1
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !113
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !113
  %i.bg = getelementptr inbounds i8, ptr %i.bb, i64 %i.e
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !113
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !113
  %i.bj = getelementptr inbounds i8, ptr %i.bb, i64 %i.i
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !113
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !113
  %i.bm = getelementptr inbounds i8, ptr %i.bb, i64 %i.m
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !113
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !113
  %i.bp = getelementptr inbounds i8, ptr %i.bb, i64 %i.q
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !113
  %i.br = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !113
  %i.bs = getelementptr inbounds i8, ptr %i.bb, i64 %i.u
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !113
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !113
  %i.bv = getelementptr inbounds i8, ptr %i.bb, i64 %i.y
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !113
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !113
  %i.by = getelementptr inbounds i8, ptr %i.ba, i64 %3 ; 9 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !113
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !113
  %i.cb = getelementptr inbounds i8, ptr %i.bz, i64 %1
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !113
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !113
  %i.ce = getelementptr inbounds i8, ptr %i.bz, i64 %i.e
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !113
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !113
  %i.ch = getelementptr inbounds i8, ptr %i.bz, i64 %i.i
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !113
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !113
  %i.ck = getelementptr inbounds i8, ptr %i.bz, i64 %i.m
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !113
  %i.cm = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !113
  %i.cn = getelementptr inbounds i8, ptr %i.bz, i64 %i.q
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !113
  %i.cp = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !113
  %i.cq = getelementptr inbounds i8, ptr %i.bz, i64 %i.u
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !113
  %i.cs = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !113
  %i.ct = getelementptr inbounds i8, ptr %i.bz, i64 %i.y
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !113
  %i.cv = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !113
  %i.cw = getelementptr inbounds i8, ptr %i.by, i64 %3 ; 9 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !113
  store i64 %i.cy, ptr %i.cw, align 8, !tbaa !113
  %i.cz = getelementptr inbounds i8, ptr %i.cx, i64 %1
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !113
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %i.da, ptr %i.db, align 8, !tbaa !113
  %i.dc = getelementptr inbounds i8, ptr %i.cx, i64 %i.e
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !113
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !113
  %i.df = getelementptr inbounds i8, ptr %i.cx, i64 %i.i
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !113
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !113
  %i.di = getelementptr inbounds i8, ptr %i.cx, i64 %i.m
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !113
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !113
  %i.dl = getelementptr inbounds i8, ptr %i.cx, i64 %i.q
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !113
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !113
  %i.do = getelementptr inbounds i8, ptr %i.cx, i64 %i.u
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !113
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !113
  %i.dr = getelementptr inbounds i8, ptr %i.cx, i64 %i.y
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !113
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !113
  %i.du = getelementptr inbounds i8, ptr %i.cw, i64 %3 ; 9 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !113
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !113
  %i.dx = getelementptr inbounds i8, ptr %i.dv, i64 %1
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !113
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i64 %i.dy, ptr %i.dz, align 8, !tbaa !113
  %i.ea = getelementptr inbounds i8, ptr %i.dv, i64 %i.e
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !113
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store i64 %i.eb, ptr %i.ec, align 8, !tbaa !113
  %i.ed = getelementptr inbounds i8, ptr %i.dv, i64 %i.i
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !113
  %i.ef = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !113
  %i.eg = getelementptr inbounds i8, ptr %i.dv, i64 %i.m
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !113
  %i.ei = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !113
  %i.ej = getelementptr inbounds i8, ptr %i.dv, i64 %i.q
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !113
  %i.el = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  store i64 %i.ek, ptr %i.el, align 8, !tbaa !113
  %i.em = getelementptr inbounds i8, ptr %i.dv, i64 %i.u
  %i.en = load i64, ptr %i.em, align 8, !tbaa !113
  %i.eo = getelementptr inbounds nuw i8, ptr %i.du, i64 48
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !113
  %i.ep = getelementptr inbounds i8, ptr %i.dv, i64 %i.y
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !113
  %i.er = getelementptr inbounds nuw i8, ptr %i.du, i64 56
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !113
  %i.es = getelementptr inbounds i8, ptr %i.du, i64 %3 ; 9 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !113
  store i64 %i.eu, ptr %i.es, align 8, !tbaa !113
  %i.ev = getelementptr inbounds i8, ptr %i.et, i64 %1
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !113
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !113
  %i.ey = getelementptr inbounds i8, ptr %i.et, i64 %i.e
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !113
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store i64 %i.ez, ptr %i.fa, align 8, !tbaa !113
  %i.fb = getelementptr inbounds i8, ptr %i.et, i64 %i.i
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !113
  %i.fd = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !113
  %i.fe = getelementptr inbounds i8, ptr %i.et, i64 %i.m
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !113
  %i.fg = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  store i64 %i.ff, ptr %i.fg, align 8, !tbaa !113
  %i.fh = getelementptr inbounds i8, ptr %i.et, i64 %i.q
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !113
  %i.fj = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !113
  %i.fk = getelementptr inbounds i8, ptr %i.et, i64 %i.u
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !113
  %i.fm = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !113
  %i.fn = getelementptr inbounds i8, ptr %i.et, i64 %i.y
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !113
  %i.fp = getelementptr inbounds nuw i8, ptr %i.es, i64 56
  store i64 %i.fo, ptr %i.fp, align 8, !tbaa !113
  %i.fq = getelementptr inbounds i8, ptr %i.es, i64 %3 ; 8 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !113
  store i64 %i.fs, ptr %i.fq, align 8, !tbaa !113
  %i.ft = getelementptr inbounds i8, ptr %i.fr, i64 %1
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !113
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store i64 %i.fu, ptr %i.fv, align 8, !tbaa !113
  %i.fw = getelementptr inbounds i8, ptr %i.fr, i64 %i.e
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !113
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store i64 %i.fx, ptr %i.fy, align 8, !tbaa !113
  %i.fz = getelementptr inbounds i8, ptr %i.fr, i64 %i.i
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !113
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  store i64 %i.ga, ptr %i.gb, align 8, !tbaa !113
  %i.gc = getelementptr inbounds i8, ptr %i.fr, i64 %i.m
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !113
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fq, i64 32
  store i64 %i.gd, ptr %i.ge, align 8, !tbaa !113
  %i.gf = getelementptr inbounds i8, ptr %i.fr, i64 %i.q
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !113
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fq, i64 40
  store i64 %i.gg, ptr %i.gh, align 8, !tbaa !113
  %i.gi = getelementptr inbounds i8, ptr %i.fr, i64 %i.u
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !113
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fq, i64 48
  store i64 %i.gj, ptr %i.gk, align 8, !tbaa !113
  %i.gl = getelementptr inbounds i8, ptr %i.fr, i64 %i.y
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !113
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fq, i64 56
  store i64 %i.gm, ptr %i.gn, align 8, !tbaa !113
  ret void
}

declare ptr @av_default_item_name(ptr noundef) #2

declare i32 @ff_add_format(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ff_set_common_formats2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS15AVFilterFormats", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !15, i64 16}
!13 = !{!"AVPixFmtDescriptor", !14, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !15, i64 16, !7, i64 24, !14, i64 104}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!13, !7, i64 9}
!17 = !{!13, !7, i64 10}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!21, !22, i64 16}
!21 = !{!"AVFilterLink", !22, i64 0, !23, i64 8, !22, i64 16, !23, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !24, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !25, i64 72, !24, i64 96, !26, i64 104, !6, i64 112, !6, i64 116, !28, i64 120, !28, i64 168}
!22 = !{!"p1 _ZTS15AVFilterContext", !11, i64 0}
!23 = !{!"p1 _ZTS11AVFilterPad", !11, i64 0}
!24 = !{!"AVRational", !6, i64 0, !6, i64 4}
!25 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !11, i64 16}
!26 = !{!"p2 _ZTS15AVFrameSideData", !27, i64 0}
!27 = !{!"any p2 pointer", !11, i64 0}
!28 = !{!"AVFilterFormatsConfig", !10, i64 0, !10, i64 8, !29, i64 16, !10, i64 24, !10, i64 32, !10, i64 40}
!29 = !{!"p1 _ZTS22AVFilterChannelLayouts", !11, i64 0}
!30 = !{!31, !11, i64 72}
!31 = !{!"AVFilterContext", !32, i64 0, !33, i64 8, !14, i64 16, !23, i64 24, !34, i64 32, !6, i64 40, !23, i64 48, !34, i64 56, !6, i64 64, !11, i64 72, !35, i64 80, !6, i64 88, !6, i64 92, !14, i64 96, !6, i64 104, !36, i64 112, !6, i64 120}
!32 = !{!"p1 _ZTS7AVClass", !11, i64 0}
!33 = !{!"p1 _ZTS8AVFilter", !11, i64 0}
!34 = !{!"p2 _ZTS12AVFilterLink", !27, i64 0}
!35 = !{!"p1 _ZTS13AVFilterGraph", !11, i64 0}
!36 = !{!"p1 _ZTS11AVBufferRef", !11, i64 0}
!37 = !{!38, !6, i64 36}
!38 = !{!"TransContext", !32, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !7, i64 20, !6, i64 36, !6, i64 40, !7, i64 48}
!39 = !{!40, !40, i64 0}
!40 = !{!"p1 _ZTS7AVFrame", !11, i64 0}
!41 = !{!31, !34, i64 56}
!42 = !{!43, !43, i64 0}
!43 = !{!"p1 _ZTS12AVFilterLink", !11, i64 0}
!44 = !{!21, !6, i64 40}
!45 = !{!21, !6, i64 44}
!46 = !{!47, !6, i64 124}
!47 = !{!"AVFrame", !7, i64 0, !7, i64 64, !48, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !24, i64 124, !15, i64 136, !15, i64 144, !24, i64 152, !6, i64 160, !11, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !49, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !50, i64 312, !6, i64 320, !36, i64 328, !36, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !11, i64 376, !25, i64 384, !15, i64 408, !6, i64 416}
!48 = !{!"p2 omnipotent char", !27, i64 0}
!49 = !{!"p2 _ZTS11AVBufferRef", !27, i64 0}
!50 = !{!"p1 _ZTS12AVDictionary", !11, i64 0}
!51 = !{!47, !6, i64 128}
!52 = !{!53, !40, i64 0}
!53 = !{!"ThreadData", !40, i64 0, !40, i64 8}
!54 = !{!53, !40, i64 8}
!55 = !{!38, !6, i64 16}
!56 = !{!38, !6, i64 8}
!57 = !{!38, !6, i64 12}
!58 = !{!6, !6, i64 0}
!59 = !{!47, !6, i64 108}
!60 = !{!47, !6, i64 104}
!61 = !{!14, !14, i64 0}
!62 = !{!38, !6, i64 40}
!63 = !{!64, !11, i64 0}
!64 = !{!"TransVtable", !11, i64 0, !11, i64 8}
!65 = distinct !{!65, !19}
!66 = !{!64, !11, i64 8}
!67 = distinct !{!67, !19}
!68 = distinct !{!68, !19}
!69 = !{!21, !22, i64 0}
!70 = !{!31, !34, i64 32}
!71 = !{!21, !6, i64 36}
!72 = !{!7, !7, i64 0}
!73 = !{!13, !7, i64 8}
!74 = !{!21, !6, i64 48}
!75 = !{!76}
!76 = distinct !{!76, !77}
!77 = distinct !{!77, !"LVerDomain"}
!78 = !{!79}
!79 = distinct !{!79, !77}
!80 = distinct !{!80, !19, !81, !82}
!81 = !{!"llvm.loop.isvectorized", i32 1}
!82 = !{!"llvm.loop.unroll.runtime.disable"}
!83 = !{!"branch_weights", i32 4, i32 28}
!84 = distinct !{!84, !19, !81, !82}
!85 = distinct !{!85, !86}
!86 = !{!"llvm.loop.unroll.disable"}
!87 = distinct !{!87, !19, !81}
!88 = distinct !{!88, !19}
!89 = !{!90, !90, i64 0}
!90 = !{!"short", !7, i64 0}
!91 = !{!92}
!92 = distinct !{!92, !93}
!93 = distinct !{!93, !"LVerDomain"}
!94 = !{!95}
!95 = distinct !{!95, !93}
!96 = distinct !{!96, !19, !81, !82}
!97 = distinct !{!97, !86}
!98 = distinct !{!98, !19, !81}
!99 = distinct !{!99, !19}
!100 = distinct !{!100, !19}
!101 = distinct !{!101, !19}
!102 = !{!103}
!103 = distinct !{!103, !104}
!104 = distinct !{!104, !"LVerDomain"}
!105 = !{!106}
!106 = distinct !{!106, !104}
!107 = distinct !{!107, !19, !81, !82}
!108 = distinct !{!108, !86}
!109 = distinct !{!109, !19, !81}
!110 = distinct !{!110, !19}
!111 = distinct !{!111, !19}
!112 = distinct !{!112, !19}
!113 = !{!15, !15, i64 0}
!114 = distinct !{!114, !19}
!115 = distinct !{!115, !86}
!116 = distinct !{!116, !19}
end_hunk_1
