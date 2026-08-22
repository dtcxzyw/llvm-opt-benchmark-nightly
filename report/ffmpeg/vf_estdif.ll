Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_estdif?download=true
inline.NumInlined: 23
inline.NumDeleted: 8
begin_hunk_0_@config_input:bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ap = load i32, ptr %i.e, align 4, !tbaa !46
  %i.aq = tail call i32 @av_pix_fmt_count_planes(i32 noundef %i.ap) #10
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !53
  %i.as = tail call i32 @ff_filter_get_nb_threads(ptr noundef nonnull %i.b) #11
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i32 %i.as, ptr %i.at, align 8, !tbaa !54
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.av = load i32, ptr %i.au, align 8, !tbaa !55 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !57
  %i.ax = icmp slt i32 %i.av, 9
  %i.ay = select i1 %i.ax, ptr @interpolate_8, ptr @interpolate_16
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !58
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store ptr @mid2_8, ptr %i.ba, align 8, !tbaa !59
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store ptr @mid4_8, ptr %i.bb, align 8, !tbaa !59
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store ptr @mid6_8, ptr %i.bc, align 8, !tbaa !59
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  store ptr @mid2_16, ptr %i.bd, align 8, !tbaa !59
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store ptr @mid4_16, ptr %i.be, align 8, !tbaa !59
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store ptr @mid6_16, ptr %i.bf, align 8, !tbaa !59
  %notmask = shl nsw i32 -1, %i.av
  %i.bg = xor i32 %notmask, -1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !60
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.d ], [ -22, %bb.c ], [ %i.l, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @filter(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.ThreadData, align 8         ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.i = load i32, ptr %i.h, align 4, !tbaa !48
  %i.j = tail call ptr @ff_get_video_buffer(ptr noundef %i.e, i32 noundef %i.g, i32 noundef %i.i) #10 ; 7 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.j, ptr noundef %1) #10 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 276 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !33
  %i.n = and i32 %i.m, -9
  store i32 %i.n, ptr %i.l, align 4, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  store i64 %2, ptr %i.o, align 8, !tbaa !40
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 408
  store i64 %3, ptr %i.p, align 8, !tbaa !41
  store ptr %i.j, ptr %4, align 8, !tbaa !61
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.q, align 8, !tbaa !63
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.s = load i32, ptr %i.r, align 4, !tbaa !51
  %i.t = sdiv i32 %i.s, 2
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.v = load i32, ptr %i.u, align 8, !tbaa !54
  %. = tail call i32 @llvm.smin.i32(i32 %i.t, i32 %i.v)
  %i.w = call i32 @ff_filter_execute(ptr noundef nonnull %0, ptr noundef nonnull @deinterlace_slice, ptr noundef nonnull %4, ptr noundef null, i32 noundef %.) #10 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !45
  %.not28 = icmp eq i32 %i.y, 0
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 92 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !64
  %.not29 = icmp eq i32 %i.aa, 0
  %i.ab = zext i1 %.not29 to i32
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ac = call i32 @ff_filter_frame(ptr noundef nonnull %i.e, ptr noundef nonnull %i.j) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ %i.ac, %bb.d ], [ -12, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i32 %.0
}

declare void @av_frame_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @deinterlace_slice(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 11 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !61     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !65
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !66
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.l = load i32, ptr %i.k, align 4, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 276
  %i.n = load i32, ptr %i.m, align 4, !tbaa !33   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %i.p = load i32, ptr %i.o, align 4, !tbaa !64
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !67   ; 2 uses
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.t = and i32 %i.n, 8
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = lshr i32 %i.n, 4
  %.lobit = and i32 %i.u, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.v = xor i32 %i.r, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %i.w = phi i32 [ %i.v, %bb.d ], [ %.lobit, %bb.c ], [ 1, %bb.b ]
  %i.x = icmp eq i32 %i.p, %i.w                   ; 2 uses
  %i.y = zext i1 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !53
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph157, label %._crit_edge158

.lr.ph157:                                        ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ah = sext i32 %2 to i64
  %i.ai = sext i32 %3 to i64                      ; 2 uses
  %i.aj = add nsw i32 %2, 1
  %i.ak = sext i32 %i.aj to i64
  %i.al = xor i1 %i.x, true
  %i.am = zext i1 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  br label %bb.f

._crit_edge158:                                   ; preds = %._crit_edge154, %bb.e
  ret i32 0

bb.f:                                             ; preds = %.lr.ph157, %._crit_edge154
  %indvars.iv185 = phi i64 [ 0, %.lr.ph157 ], [ %indvars.iv.next186, %._crit_edge154 ] ; 8 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv185
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !68 ; 7 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv185
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !68 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv185
  %i.at = load i32, ptr %i.as, align 4, !tbaa !51 ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv185
  %i.av = load i32, ptr %i.au, align 4, !tbaa !51 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv185
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !51 ; 8 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv185
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !51 ; 4 uses
  %i.ba = sext i32 %i.av to i64                   ; 2 uses
  %i.bb = mul nsw i64 %i.ba, %i.ah
  %i.bc = sdiv i64 %i.bb, %i.ai
  %i.bd = trunc i64 %i.bc to i32                  ; 15 uses
  %i.be = mul nsw i64 %i.ba, %i.ak
  %i.bf = sdiv i64 %i.be, %i.ai
  %i.bg = trunc i64 %i.bf to i32                  ; 4 uses
  %i.bh = and i32 %i.bd, 1                        ; 2 uses
  %i.bi = xor i32 %i.bh, %i.y
  %i.bj = add nsw i32 %i.bi, %i.bd                ; 4 uses
  %i.bk = icmp slt i32 %i.bj, %i.bg
  br i1 %i.bk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.bl = mul nsw i32 %i.bj, %i.az
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds i8, ptr %i.ar, i64 %i.bm
  %i.bo = mul nsw i32 %i.bj, %i.ax
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds i8, ptr %i.ap, i64 %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv185
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !51
  %i.bt = sext i32 %i.bs to i64
  %i.bu = shl nsw i32 %i.ax, 1
  %i.bv = sext i32 %i.bu to i64
  %i.bw = shl nsw i32 %i.az, 1
  %i.bx = sext i32 %i.bw to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.0129145 = phi i32 [ %i.bj, %.lr.ph ], [ %i.by, %bb.g ]
  %.0130144 = phi ptr [ %i.bn, %.lr.ph ], [ %i.ca, %bb.g ] ; 2 uses
  %.0131143 = phi ptr [ %i.bq, %.lr.ph ], [ %i.bz, %bb.g ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0130144, ptr align 1 %.0131143, i64 %i.bt, i1 false)
  %i.by = add nsw i32 %.0129145, 2                ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %.0131143, i64 %i.bv
  %i.ca = getelementptr inbounds i8, ptr %.0130144, i64 %i.bx
  %i.cb = icmp slt i32 %i.by, %i.bg
  br i1 %i.cb, label %bb.g, label %._crit_edge, !llvm.loop !69

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %i.cc = xor i32 %i.bh, %i.am                    ; 13 uses
  %i.cd = add nsw i32 %i.cc, %i.bd                ; 3 uses
  %i.ce = icmp slt i32 %i.cd, %i.bg
  br i1 %i.ce, label %.lr.ph153, label %._crit_edge154

.lr.ph153:                                        ; preds = %._crit_edge
  %i.cf = mul nsw i32 %i.cd, %i.az
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %i.ar, i64 %i.cg
  %i.ci = icmp sgt i32 %i.at, 0
  %i.cj = shl nsw i32 %i.az, 1
  %i.ck = sext i32 %i.cj to i64
  %i.cl = add nuw nsw i32 %i.cc, -5
  %i.cm = add i32 %i.cl, %i.bd
  %i.cn = add i32 %i.cc, %i.bd
  %i.co = sub i32 6, %i.cn
  %i.cp = add nuw nsw i32 %i.cc, 5
  %4 = add i32 %i.cp, %i.bd
  %5 = or disjoint i32 %i.cc, 6
  %i.cq = add i32 %5, %i.bd
  %i.cr = add i32 %i.av, -1                       ; 3 uses
  %i.cs = add nuw nsw i32 %i.cc, -3
  %i.ct = add i32 %i.cs, %i.bd
  %i.cu = add i32 %i.cc, %i.bd
  %i.cv = sub i32 4, %i.cu
  %i.cw = add nuw nsw i32 %i.cc, 3
  %6 = add i32 %i.cw, %i.bd
  %7 = or disjoint i32 %i.cc, 4
  %i.cx = add i32 %7, %i.bd
  %i.cy = add nsw i32 %i.cc, -1
  %i.cz = add i32 %i.cy, %i.bd
  %i.da = add i32 %i.cc, %i.bd
  %i.db = sub i32 2, %i.da
  %i.dc = add nuw nsw i32 %i.cc, 1
  %8 = add i32 %i.dc, %i.bd
  %9 = or disjoint i32 %i.cc, 2
  %i.dd = add i32 %9, %i.bd
  br label %.preheader142

._crit_edge154:                                   ; preds = %._crit_edge149, %._crit_edge
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %i.de = load i32, ptr %i.z, align 4, !tbaa !53
  %i.df = sext i32 %i.de to i64
  %i.dg = icmp slt i64 %indvars.iv.next186, %i.df
  br i1 %i.dg, label %bb.f, label %._crit_edge158, !llvm.loop !71

.preheader142:                                    ; preds = %.lr.ph153, %._crit_edge149
  %indvars.iv182 = phi i32 [ %i.dd, %.lr.ph153 ], [ %indvars.iv.next183, %._crit_edge149 ] ; 2 uses
  %indvars.iv180 = phi i32 [ %8, %.lr.ph153 ], [ %indvars.iv.next181, %._crit_edge149 ] ; 3 uses
  %indvars.iv178 = phi i32 [ %i.db, %.lr.ph153 ], [ %indvars.iv.next179, %._crit_edge149 ] ; 2 uses
  %indvars.iv175 = phi i32 [ %i.cz, %.lr.ph153 ], [ %indvars.iv.next176.a, %._crit_edge149 ] ; 3 uses
  %indvars.iv172 = phi i32 [ %i.cx, %.lr.ph153 ], [ %indvars.iv.next173.a, %._crit_edge149 ] ; 2 uses
  %indvars.iv170 = phi i32 [ %6, %.lr.ph153 ], [ %indvars.iv.next171, %._crit_edge149 ] ; 3 uses
  %indvars.iv168 = phi i32 [ %i.cv, %.lr.ph153 ], [ %indvars.iv.next169.a, %._crit_edge149 ] ; 2 uses
  %indvars.iv165 = phi i32 [ %i.ct, %.lr.ph153 ], [ %indvars.iv.next166, %._crit_edge149 ] ; 3 uses
  %indvars.iv163 = phi i32 [ %i.cq, %.lr.ph153 ], [ %indvars.iv.next164.a, %._crit_edge149 ] ; 2 uses
  %indvars.iv161 = phi i32 [ %4, %.lr.ph153 ], [ %indvars.iv.next162, %._crit_edge149 ] ; 3 uses
  %indvars.iv159 = phi i32 [ %i.co, %.lr.ph153 ], [ %indvars.iv.next160, %._crit_edge149 ] ; 2 uses
  %indvars.iv = phi i32 [ %i.cm, %.lr.ph153 ], [ %indvars.iv.next, %._crit_edge149 ] ; 3 uses
  %.0128151 = phi i32 [ %i.cd, %.lr.ph153 ], [ %i.es, %._crit_edge149 ]
  %.1150 = phi ptr [ %i.ch, %.lr.ph153 ], [ %i.er, %._crit_edge149 ] ; 2 uses
  %smin184 = call i32 @llvm.smin.i32(i32 %indvars.iv180, i32 %i.cr)
  %i.dh = sub i32 %indvars.iv182, %smin184
  %i.di = and i32 %i.dh, -2
  %i.dj = sub i32 %indvars.iv180, %i.di
  %smax177 = call i32 @llvm.smax.i32(i32 %indvars.iv175, i32 0)
  %i.dk = add i32 %smax177, %indvars.iv178
  %i.dl = and i32 %i.dk, -2
  %i.dm = add i32 %indvars.iv175, %i.dl
  %smin174 = call i32 @llvm.smin.i32(i32 %indvars.iv170, i32 %i.cr)
  %i.dn = sub i32 %indvars.iv172, %smin174
  %i.do = and i32 %i.dn, -2
  %i.dp = sub i32 %indvars.iv170, %i.do
  %smax167 = call i32 @llvm.smax.i32(i32 %indvars.iv165, i32 0)
  %i.dq = add i32 %smax167, %indvars.iv168
  %i.dr = and i32 %i.dq, -2
  %i.ds = add i32 %indvars.iv165, %i.dr
  %smin = call i32 @llvm.smin.i32(i32 %indvars.iv161, i32 %i.cr)
  %i.dt = sub i32 %indvars.iv163, %smin
  %i.du = and i32 %i.dt, -2
  %i.dv = sub i32 %indvars.iv161, %i.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv, i32 0)
  %i.dw = add i32 %smax, %indvars.iv159
  %i.dx = and i32 %i.dw, -2
  %i.dy = add i32 %indvars.iv, %i.dx
  %i.dz = mul nsw i32 %i.dy, %i.ax
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds i8, ptr %i.ap, i64 %i.ea
  %i.ec = mul nsw i32 %i.dv, %i.ax
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds i8, ptr %i.ap, i64 %i.ed
  %i.ef = mul nsw i32 %i.ds, %i.ax
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds i8, ptr %i.ap, i64 %i.eg
  %i.ei = mul nsw i32 %i.dp, %i.ax
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds i8, ptr %i.ap, i64 %i.ej
  %i.el = mul nsw i32 %i.dm, %i.ax
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds i8, ptr %i.ap, i64 %i.em
  %i.eo = mul nsw i32 %i.dj, %i.ax
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds i8, ptr %i.ap, i64 %i.ep
  store i32 0, ptr %i.a, align 4, !tbaa !51
  br i1 %i.ci, label %.lr.ph148, label %._crit_edge149

._crit_edge149:                                   ; preds = %.lr.ph148, %.preheader142
  %i.er = getelementptr inbounds i8, ptr %.1150, i64 %i.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.es = add nsw i32 %.0128151, 2                ; 2 uses
  %i.et = icmp slt i32 %i.es, %i.bg
  %indvars.iv.next = add i32 %indvars.iv, 2
  %indvars.iv.next160 = add i32 %indvars.iv159, -2
  %indvars.iv.next162 = add i32 %indvars.iv161, 2
  %indvars.iv.next164.a = add i32 %indvars.iv163, 2
  %indvars.iv.next166 = add i32 %indvars.iv165, 2
  %indvars.iv.next169.a = add i32 %indvars.iv168, -2
  %indvars.iv.next171 = add i32 %indvars.iv170, 2
  %indvars.iv.next173.a = add i32 %indvars.iv172, 2
  %indvars.iv.next176.a = add i32 %indvars.iv175, 2
  %indvars.iv.next179 = add i32 %indvars.iv178, -2
  %indvars.iv.next181 = add i32 %indvars.iv180, 2
  %indvars.iv.next183 = add i32 %indvars.iv182, 2
  br i1 %i.et, label %.preheader142, label %._crit_edge154, !llvm.loop !72

.lr.ph148:                                        ; preds = %.preheader142, %.lr.ph148
  %.0146 = phi i32 [ %i.ev, %.lr.ph148 ], [ 0, %.preheader142 ] ; 2 uses
  %i.eu = load ptr, ptr %i.an, align 8, !tbaa !58
  call void %i.eu(ptr noundef %i.c, ptr noundef %.1150, ptr noundef %i.en, ptr noundef %i.eq, ptr noundef %i.eh, ptr noundef %i.ek, ptr noundef %i.eb, ptr noundef %i.ee, i32 noundef %.0146, i32 noundef %i.at, i32 noundef %i.h, i32 noundef %i.j, i32 noundef %i.l, ptr noundef nonnull %i.a) #10
  %i.ev = add nuw nsw i32 %.0146, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ev, %i.at
  br i1 %exitcond.not, label %._crit_edge149, label %.lr.ph148, !llvm.loop !73
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #1

declare i32 @av_image_fill_linesizes(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @av_pix_fmt_count_planes(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @interpolate_8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, ptr nofree noundef captures(none) %13) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !74
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !75   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !76   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !77   ; 4 uses
  %i.i = add nsw i32 %9, -1                       ; 13 uses
  %i.j = load i32, ptr %13, align 4, !tbaa !51
  %.fr = freeze i32 %i.j                          ; 5 uses
  %i.k = sub nsw i32 0, %10                       ; 4 uses
  %i.l = tail call i32 @llvm.abs.i32(i32 %.fr, i1 false)
  %i.m = icmp sgt i32 %i.l, %10
  %.not181 = icmp sgt i32 %10, -1
  %or.cond182 = and i1 %.not181, %i.m
  br i1 %or.cond182, label %.lr.ph188, label %.critedge.preheader

.lr.ph188:                                        ; preds = %bb.a
  %i.n = sub nsw i32 0, %11
  %.not165178 = icmp slt i32 %11, 0
  %i.o = sext i32 %8 to i64                       ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %2, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !78
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %3, i64 %i.o
  %i.t = load i8, ptr %i.s, align 1, !tbaa !78
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  br i1 %.not165178, label %.lr.ph188.split.us.split, label %.lr.ph

.lr.ph188.split.us.split:                         ; preds = %.lr.ph188, %.lr.ph188.split.us.split
  %.0148186.us = phi i32 [ %i.au, %.lr.ph188.split.us.split ], [ %i.k, %.lr.ph188 ] ; 6 uses
  %.0149185.us = phi i32 [ %.1.us, %.lr.ph188.split.us.split ], [ 0, %.lr.ph188 ]
  %.0152184.us = phi i32 [ %.1153.us, %.lr.ph188.split.us.split ], [ -1, %.lr.ph188 ] ; 2 uses
  %.0154183.us = phi i32 [ %.1155.us, %.lr.ph188.split.us.split ], [ 0, %.lr.ph188 ]
  %i.v = add nsw i32 %.0148186.us, %8             ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  %..i7.i.i.us = tail call i32 @llvm.smin.i32(i32 %i.v, i32 range(i32 -2147483648, 2147483647) %i.i)
  %.0.i8.i.i.us = select i1 %i.w, i32 0, i32 %..i7.i.i.us
  %i.x = sext i32 %.0.i8.i.i.us to i64
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !78
  %i.aa = zext i8 %i.z to i32
  %i.ab = sub nsw i32 %8, %.0148186.us            ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 0
  %..i.i.i.us = tail call i32 @llvm.smin.i32(i32 %i.ab, i32 range(i32 -2147483648, 2147483647) %i.i)
  %.0.i.i.i.us = select i1 %i.ac, i32 0, i32 %..i.i.i.us
  %i.ad = sext i32 %.0.i.i.i.us to i64
  %i.ae = getelementptr inbounds i8, ptr %3, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !78
  %i.ag = zext i8 %i.af to i32
  %i.ah = add nuw nsw i32 %i.aa, 1
  %i.ai = add nuw nsw i32 %i.ah, %i.ag
  %i.aj = lshr i32 %i.ai, 1                       ; 2 uses
  %i.ak = sub nsw i32 %i.r, %i.aj
  %i.al = tail call i32 @llvm.abs.i32(i32 %i.ak, i1 true)
  %i.am = sub nsw i32 %i.u, %i.aj
  %i.an = tail call i32 @llvm.abs.i32(i32 %i.am, i1 true)
  %i.ao = add nuw nsw i32 %i.al, %i.an
  %i.ap = mul i32 %i.ao, %i.h
  %i.aq = tail call i32 @llvm.abs.i32(i32 %.0148186.us, i1 true)
  %i.ar = mul nsw i32 %i.aq, %i.f
  %i.as = add i32 %i.ar, %i.ap                    ; 2 uses
  %i.at = icmp ugt i32 %.0152184.us, %i.as        ; 2 uses
  %.1155.us = select i1 %i.at, i32 1, i32 %.0154183.us ; 2 uses
  %.1153.us = tail call i32 @llvm.umin.i32(i32 %.0152184.us, i32 %i.as) ; 2 uses
  %.1.us = select i1 %i.at, i32 %.0148186.us, i32 %.0149185.us ; 2 uses
  %i.au = add i32 %.0148186.us, 1
  %exitcond219.not = icmp eq i32 %.0148186.us, %10
  br i1 %exitcond219.not, label %.lr.ph209.thread, label %.lr.ph188.split.us.split, !llvm.loop !79

.lr.ph209.thread:                                 ; preds = %.lr.ph188.split.us.split
  %i.av = sext i32 %8 to i64                      ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %2, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !78
  %i.ay = zext i8 %i.ax to i32
  %i.az = getelementptr inbounds i8, ptr %3, i64 %i.av
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !78
  %i.bb = zext i8 %i.ba to i32
  br label %.critedge.us.preheader

.critedge.preheader:                              ; preds = %._crit_edge, %bb.a
  %.0154.lcssa = phi i32 [ 0, %bb.a ], [ %.1155, %._crit_edge ] ; 3 uses
  %.0152.lcssa = phi i32 [ -1, %bb.a ], [ %.1153, %._crit_edge ] ; 2 uses
  %.0149.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %._crit_edge ] ; 3 uses
  %.not162204 = icmp slt i32 %10, 0
  br i1 %.not162204, label %.critedge.preheader..critedge._crit_edge_crit_edge, label %.lr.ph209

.critedge.preheader..critedge._crit_edge_crit_edge: ; preds = %.critedge.preheader
  %.pre = sext i32 %8 to i64
  br label %.critedge._crit_edge

.lr.ph209:                                        ; preds = %.critedge.preheader
  %i.bc = sub nsw i32 0, %11
  %.not164197 = icmp slt i32 %11, 0
  %i.bd = add nsw i32 %.fr, %8
  %i.be = sext i32 %8 to i64                      ; 4 uses
  %i.bf = getelementptr inbounds i8, ptr %2, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !78
  %i.bh = zext i8 %i.bg to i32                    ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %3, i64 %i.be
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !78
  %i.bk = zext i8 %i.bj to i32                    ; 2 uses
  br i1 %.not164197, label %.critedge.us.preheader, label %.lr.ph201

.critedge.us.preheader:                           ; preds = %.lr.ph209.thread, %.lr.ph209
  %i.bl = phi i32 [ %i.bb, %.lr.ph209.thread ], [ %i.bk, %.lr.ph209 ]
  %i.bm = phi i32 [ %i.ay, %.lr.ph209.thread ], [ %i.bh, %.lr.ph209 ]
  %i.bn = phi i64 [ %i.av, %.lr.ph209.thread ], [ %i.be, %.lr.ph209 ]
  %.0154.lcssa230240 = phi i32 [ %.1155.us, %.lr.ph209.thread ], [ %.0154.lcssa, %.lr.ph209 ]
  %.0152.lcssa231239 = phi i32 [ %.1153.us, %.lr.ph209.thread ], [ %.0152.lcssa, %.lr.ph209 ]
  %.0149.lcssa233238 = phi i32 [ %.1.us, %.lr.ph209.thread ], [ %.0149.lcssa, %.lr.ph209 ]
  br label %.critedge.us

.critedge.us:                                     ; preds = %.critedge.us.preheader, %.critedge.us
  %.0145208.us = phi i32 [ %i.co, %.critedge.us ], [ %i.k, %.critedge.us.preheader ] ; 4 uses
  %.0150207.us = phi i32 [ %.1151.us, %.critedge.us ], [ 0, %.critedge.us.preheader ]
  %.2206.us = phi i32 [ %.3.us, %.critedge.us ], [ %.0152.lcssa231239, %.critedge.us.preheader ] ; 2 uses
  %.2156205.us = phi i32 [ %.3157.us, %.critedge.us ], [ %.0154.lcssa230240, %.critedge.us.preheader ]
  %i.bo = add nsw i32 %.0145208.us, %.fr          ; 3 uses
  %i.bp = add nsw i32 %i.bo, %8                   ; 2 uses
  %i.bq = icmp slt i32 %i.bp, 0
  %..i7.i.i173.us = tail call i32 @llvm.smin.i32(i32 %i.bp, i32 range(i32 -2147483648, 2147483647) %i.i)
  %.0.i8.i.i174.us = select i1 %i.bq, i32 0, i32 %..i7.i.i173.us
  %i.br = sext i32 %.0.i8.i.i174.us to i64
  %i.bs = getelementptr inbounds i8, ptr %2, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !78
  %i.bu = zext i8 %i.bt to i32
  %i.bv = sub nsw i32 %8, %i.bo                   ; 2 uses
  %i.bw = icmp slt i32 %i.bv, 0
  %..i.i.i175.us = tail call i32 @llvm.smin.i32(i32 %i.bv, i32 range(i32 -2147483648, 2147483647) %i.i)
  %.0.i.i.i176.us = select i1 %i.bw, i32 0, i32 %..i.i.i175.us
  %i.bx = sext i32 %.0.i.i.i176.us to i64
  %i.by = getelementptr inbounds i8, ptr %3, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !78
  %i.ca = zext i8 %i.bz to i32
  %i.cb = add nuw nsw i32 %i.bu, 1
  %i.cc = add nuw nsw i32 %i.cb, %i.ca
  %i.cd = lshr i32 %i.cc, 1                       ; 2 uses
  %i.ce = sub nsw i32 %i.bm, %i.cd
  %i.cf = tail call i32 @llvm.abs.i32(i32 %i.ce, i1 true)
  %i.cg = sub nsw i32 %i.bl, %i.cd
  %i.ch = tail call i32 @llvm.abs.i32(i32 %i.cg, i1 true)
  %i.ci = add nuw nsw i32 %i.cf, %i.ch
  %i.cj = mul i32 %i.ci, %i.h
  %i.ck = tail call i32 @llvm.abs.i32(i32 %i.bo, i1 true)
  %i.cl = mul nsw i32 %i.ck, %i.f
  %i.cm = add i32 %i.cl, %i.cj                    ; 2 uses
  %i.cn = icmp ugt i32 %.2206.us, %i.cm           ; 2 uses
  %.3157.us = select i1 %i.cn, i32 0, i32 %.2156205.us ; 2 uses
  %.3.us = tail call i32 @llvm.umin.i32(i32 %.2206.us, i32 %i.cm)
  %.1151.us = select i1 %i.cn, i32 %.0145208.us, i32 %.0150207.us ; 2 uses
  %i.co = add i32 %.0145208.us, 1
  %exitcond222.not = icmp eq i32 %.0145208.us, %10
  br i1 %exitcond222.not, label %.critedge._crit_edge, label %.critedge.us, !llvm.loop !80

.lr.ph:                                           ; preds = %.lr.ph188, %._crit_edge
  %.0148186 = phi i32 [ %i.dq, %._crit_edge ], [ %i.k, %.lr.ph188 ] ; 6 uses
  %.0149185 = phi i32 [ %.1, %._crit_edge ], [ 0, %.lr.ph188 ]
  %.0152184 = phi i32 [ %.1153, %._crit_edge ], [ -1, %.lr.ph188 ] ; 2 uses
  %.0154183 = phi i32 [ %.1155, %._crit_edge ], [ 0, %.lr.ph188 ]
  %i.cp = add nsw i32 %.0148186, %8               ; 3 uses
  %i.cq = sub nsw i32 %8, %.0148186               ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %i.cr = mul i32 %i.ex, %i.d
  %i.cs = icmp slt i32 %i.cp, 0
  %..i7.i.i = tail call i32 @llvm.smin.i32(i32 %i.cp, i32 range(i32 -2147483648, 2147483647) %i.i)
  %.0.i8.i.i = select i1 %i.cs, i32 0, i32 %..i7.i.i
  %i.ct = sext i32 %.0.i8.i.i to i64
end_hunk_0
begin_hunk_1_@mid4_16:bb.a
  %i.aa = zext i16 %i.z to i32
  %i.ab = add nuw nsw i32 %i.u, %i.aa
  %reass.sub = sub nsw i32 %i.n, %i.ab
  %i.ac = add nsw i32 %reass.sub, 8
  %i.ad = ashr i32 %i.ac, 4                       ; 3 uses
  %notmask.i = shl nsw i32 -1, %9                 ; 2 uses
  %i.ae = and i32 %i.ad, %notmask.i
  %.not.i = icmp eq i32 %i.ae, 0
  %i.af = xor i32 %notmask.i, -1
  %isnotneg.inv.i = icmp slt i32 %i.ad, 0
  %i.ag = select i1 %isnotneg.inv.i, i32 0, i32 %i.af
  %.0.i22 = select i1 %.not.i, i32 %i.ad, i32 %i.ag
  ret i32 %.0.i22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -20480, -2147483648) i32 @mid6_16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) #5 {
bb.a:
  %i.a = add nsw i32 %8, %7                       ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  %..i32 = tail call i32 @llvm.smin.i32(i32 %i.a, i32 %6)
  %.0.i33 = select i1 %i.b, i32 0, i32 %..i32
  %i.c = sext i32 %.0.i33 to i64
  %i.d = getelementptr inbounds [2 x i8], ptr %0, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2, !tbaa !83
  %i.f = zext i16 %i.e to i32
  %i.g = sub nsw i32 %7, %8                       ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  %..i30 = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %6)
  %.0.i31 = select i1 %i.h, i32 0, i32 %..i30
  %i.i = sext i32 %.0.i31 to i64
  %i.j = getelementptr inbounds [2 x i8], ptr %1, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2, !tbaa !83
  %i.l = zext i16 %i.k to i32
  %i.m = add nuw nsw i32 %i.l, %i.f
  %i.n = mul nuw nsw i32 %i.m, 20
  %i.o = mul nsw i32 %8, 3                        ; 2 uses
  %i.p = add nsw i32 %i.o, %7                     ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  %..i28 = tail call i32 @llvm.smin.i32(i32 %i.p, i32 %6)
  %.0.i29 = select i1 %i.q, i32 0, i32 %..i28
  %i.r = sext i32 %.0.i29 to i64
  %i.s = getelementptr inbounds [2 x i8], ptr %2, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !83
  %i.u = zext i16 %i.t to i32
  %i.v = sub nsw i32 %7, %i.o                     ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  %..i26 = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %6)
  %.0.i27 = select i1 %i.w, i32 0, i32 %..i26
  %i.x = sext i32 %.0.i27 to i64
  %i.y = getelementptr inbounds [2 x i8], ptr %3, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2, !tbaa !83
  %i.aa = zext i16 %i.z to i32
  %i.ab = add nuw nsw i32 %i.aa, %i.u
  %.neg = mul nsw i32 %i.ab, -5
  %i.ac = mul nsw i32 %8, 5                       ; 2 uses
  %i.ad = add nsw i32 %i.ac, %7                   ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  %..i24 = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %6)
  %.0.i25 = select i1 %i.ae, i32 0, i32 %..i24
  %i.af = sext i32 %.0.i25 to i64
  %i.ag = getelementptr inbounds [2 x i8], ptr %4, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !83
  %i.ai = zext i16 %i.ah to i32
  %i.aj = sub nsw i32 %7, %i.ac                   ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 0
  %..i = tail call i32 @llvm.smin.i32(i32 %i.aj, i32 %6)
  %.0.i = select i1 %i.ak, i32 0, i32 %..i
  %i.al = sext i32 %.0.i to i64
  %i.am = getelementptr inbounds [2 x i8], ptr %5, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2, !tbaa !83
  %i.ao = zext i16 %i.an to i32
  %i.ap = add nuw nsw i32 %i.n, 16
  %i.aq = add nuw nsw i32 %i.ap, %i.ai
  %i.ar = add nsw i32 %i.aq, %.neg
  %i.as = add nsw i32 %i.ar, %i.ao
  %i.at = ashr i32 %i.as, 5                       ; 3 uses
  %notmask.i = shl nsw i32 -1, %9                 ; 2 uses
  %i.au = and i32 %i.at, %notmask.i
  %.not.i = icmp eq i32 %i.au, 0
  %i.av = xor i32 %notmask.i, -1
  %isnotneg.inv.i = icmp slt i32 %i.at, 0
  %i.aw = select i1 %isnotneg.inv.i, i32 0, i32 %i.av
  %.0.i34 = select i1 %.not.i, i32 %i.at, i32 %i.aw
  ret i32 %.0.i34
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind uwtable
define internal i32 @request_frame(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !89     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !90
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !91
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.i = tail call i32 @ff_request_frame(ptr noundef %i.h) #10 ; 2 uses
  %i.j = icmp eq i32 %i.i, -541478725
  br i1 %i.j, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !29   ; 2 uses
  %.not26 = icmp eq ptr %i.l, null
  br i1 %.not26, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @av_frame_clone(ptr noundef nonnull %i.l) #10 ; 3 uses
  %.not27.not = icmp eq ptr %i.m, null
  br i1 %.not27.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.p = load i64, ptr %i.o, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %.sroa.01.0.insert.insert.i = tail call i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 32)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.w = load i64, ptr %i.v, align 8
  %i.x = tail call i64 @av_rescale_q(i64 noundef 1, i64 %.sroa.01.0.insert.insert.i, i64 %i.w) #12
  %i.y = add nsw i64 %i.x, %i.p
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  store i64 %i.y, ptr %i.z, align 8, !tbaa !40
  store i32 1, ptr %i.d, align 8, !tbaa !90
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !91
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !43
  %i.ac = tail call i32 @filter_frame(ptr noundef %i.ab, ptr noundef nonnull %i.m)
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.e, %bb.d, %bb.a
  %.1 = phi i32 [ %i.ac, %bb.e ], [ -541478725, %bb.a ], [ -12, %bb.d ], [ -541478725, %bb.c ], [ %i.i, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @config_output(ptr nofree noundef captures(none) initializes((96, 104)) %0) #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !89     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.i = load i64, ptr %i.h, align 8
  %i.j = tail call i64 @av_mul_q(i64 %i.i, i64 8589934593) #12
  store i64 %i.j, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !45
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 280
  %i.o = load i64, ptr %i.n, align 8
  %i.p = tail call i64 @av_mul_q(i64 %i.o, i64 4294967298) #12
  store i64 %i.p, ptr %i.m, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

declare i32 @ff_request_frame(ptr noundef) local_unnamed_addr #1

declare ptr @av_frame_clone(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q(i64 noundef, i64, i64) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_mul_q(i64, i64) local_unnamed_addr #8

declare ptr @av_default_item_name(ptr noundef) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind willreturn memory(none) }

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
!9 = !{!10, !12, i64 72}
!10 = !{!"AVFilterContext", !11, i64 0, !13, i64 8, !14, i64 16, !15, i64 24, !16, i64 32, !6, i64 40, !15, i64 48, !16, i64 56, !6, i64 64, !12, i64 72, !18, i64 80, !6, i64 88, !6, i64 92, !14, i64 96, !6, i64 104, !19, i64 112, !6, i64 120}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS8AVFilter", !12, i64 0}
!14 = !{!"p1 omnipotent char", !12, i64 0}
!15 = !{!"p1 _ZTS11AVFilterPad", !12, i64 0}
!16 = !{!"p2 _ZTS12AVFilterLink", !17, i64 0}
!17 = !{!"any p2 pointer", !12, i64 0}
!18 = !{!"p1 _ZTS13AVFilterGraph", !12, i64 0}
!19 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!20 = !{!21, !22, i64 16}
!21 = !{!"AVFilterLink", !22, i64 0, !15, i64 8, !22, i64 16, !15, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !23, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !24, i64 72, !23, i64 96, !25, i64 104, !6, i64 112, !6, i64 116, !26, i64 120, !26, i64 168}
!22 = !{!"p1 _ZTS15AVFilterContext", !12, i64 0}
!23 = !{!"AVRational", !6, i64 0, !6, i64 4}
!24 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!25 = !{!"p2 _ZTS15AVFrameSideData", !17, i64 0}
!26 = !{!"AVFilterFormatsConfig", !27, i64 0, !27, i64 8, !28, i64 16, !27, i64 24, !27, i64 32, !27, i64 40}
!27 = !{!"p1 _ZTS15AVFilterFormats", !12, i64 0}
!28 = !{!"p1 _ZTS22AVFilterChannelLayouts", !12, i64 0}
!29 = !{!30, !31, i64 120}
!30 = !{!"ESTDIFContext", !11, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !7, i64 44, !7, i64 60, !7, i64 76, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !31, i64 120, !12, i64 128, !7, i64 136, !7, i64 160}
!31 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!32 = !{!30, !6, i64 16}
!33 = !{!34, !6, i64 276}
!34 = !{!"AVFrame", !7, i64 0, !7, i64 64, !35, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !23, i64 124, !36, i64 136, !36, i64 144, !23, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !37, i64 248, !6, i64 256, !25, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !36, i64 304, !38, i64 312, !6, i64 320, !19, i64 328, !19, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !12, i64 376, !24, i64 384, !36, i64 408, !6, i64 416}
!35 = !{!"p2 omnipotent char", !17, i64 0}
!36 = !{!"long", !7, i64 0}
!37 = !{!"p2 _ZTS11AVBufferRef", !17, i64 0}
!38 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!39 = !{!10, !6, i64 104}
!40 = !{!34, !36, i64 136}
!41 = !{!34, !36, i64 408}
!42 = !{!10, !16, i64 56}
!43 = !{!44, !44, i64 0}
!44 = !{!"p1 _ZTS12AVFilterLink", !12, i64 0}
!45 = !{!30, !6, i64 8}
!46 = !{!21, !6, i64 36}
!47 = !{!21, !6, i64 40}
!48 = !{!21, !6, i64 44}
!49 = !{!50, !7, i64 10}
!50 = !{!"AVPixFmtDescriptor", !14, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !36, i64 16, !7, i64 24, !14, i64 104}
!51 = !{!6, !6, i64 0}
!52 = !{!50, !7, i64 9}
!53 = !{!30, !6, i64 108}
!54 = !{!30, !6, i64 112}
!55 = !{!56, !6, i64 16}
!56 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!57 = !{!30, !6, i64 100}
!58 = !{!30, !12, i64 128}
!59 = !{!12, !12, i64 0}
!60 = !{!30, !6, i64 104}
!61 = !{!62, !31, i64 0}
!62 = !{!"ThreadData", !31, i64 0, !31, i64 8}
!63 = !{!62, !31, i64 8}
!64 = !{!30, !6, i64 92}
!65 = !{!30, !6, i64 20}
!66 = !{!30, !6, i64 24}
!67 = !{!30, !6, i64 12}
!68 = !{!14, !14, i64 0}
!69 = distinct !{!69, !70}
!70 = !{!"llvm.loop.mustprogress"}
!71 = distinct !{!71, !70}
!72 = distinct !{!72, !70}
!73 = distinct !{!73, !70}
!74 = !{!30, !6, i64 40}
!75 = !{!30, !6, i64 28}
!76 = !{!30, !6, i64 36}
!77 = !{!30, !6, i64 32}
!78 = !{!7, !7, i64 0}
!79 = distinct !{!79, !70}
!80 = distinct !{!80, !70}
!81 = distinct !{!81, !70}
!82 = distinct !{!82, !70}
!83 = !{!84, !84, i64 0}
!84 = !{!"short", !7, i64 0}
!85 = distinct !{!85, !70}
!86 = distinct !{!86, !70}
!87 = distinct !{!87, !70}
!88 = distinct !{!88, !70}
!89 = !{!21, !22, i64 0}
!90 = !{!30, !6, i64 96}
!91 = !{!10, !16, i64 32}
end_hunk_1
