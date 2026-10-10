Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_deband?download=true
inline.NumInlined: 15
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@filter_frame:bb.a
  %i.l = load i32, ptr %i.k, align 4, !tbaa !37
  %i.m = tail call ptr @ff_get_video_buffer(ptr noundef %i.f, i32 noundef %i.j, i32 noundef %i.l) #10 ; 4 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @av_frame_free(ptr noundef nonnull %i.a) #10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.m, ptr noundef %1) #10 ; 0 uses
  store ptr %1, ptr %2, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.m, ptr %i.o, align 8, !tbaa !40
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.s = load i32, ptr %i.r, align 8, !tbaa !42
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42
  %. = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %i.u)
  %i.v = tail call i32 @ff_filter_get_nb_threads(ptr noundef nonnull %i.c) #11
  %spec.select = tail call i32 @llvm.smin.i32(i32 %., i32 %i.v)
  %i.w = call i32 @ff_filter_execute(ptr noundef nonnull %i.c, ptr noundef %i.q, ptr noundef nonnull %2, ptr noundef null, i32 noundef %spec.select) #10 ; 0 uses
  call void @av_frame_free(ptr noundef nonnull %i.a) #10
  %i.x = call i32 @ff_filter_frame(ptr noundef nonnull %i.f, ptr noundef nonnull %i.m) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.x, %bb.c ], [ -12, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @config_input(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !58
  %i.c = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.b) #10 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 25 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.i = load float, ptr %i.h, align 4, !tbaa !59 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !60   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load i8, ptr %i.l, align 8, !tbaa !63
  %i.n = zext i8 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i32 %i.n, ptr %i.o, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.q = load i8, ptr %i.p, align 2, !tbaa !64    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !37
  %i.t = sub nsw i32 0, %i.s
  %i.u = zext nneg i8 %i.q to i32
  %i.v = ashr i32 %i.t, %i.u
  %i.w = sub nsw i32 0, %i.v                      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 60 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  store i32 %i.w, ptr %i.y, align 4, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i32 %i.w, ptr %i.z, align 8, !tbaa !42
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !37 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !42
  store i32 %i.ab, ptr %i.x, align 4, !tbaa !42
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !36
  %i.af = sub nsw i32 0, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !65
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  %i.aj = ashr i32 %i.af, %i.ai
  %i.ak = sub nsw i32 0, %i.aj                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 44 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  store i32 %i.ak, ptr %i.am, align 4, !tbaa !42
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i32 %i.ak, ptr %i.an, align 8, !tbaa !42
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !36 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !42
  store i32 %i.ap, ptr %i.al, align 4, !tbaa !42
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 76
  store i32 %i.ai, ptr %i.ar, align 4, !tbaa !42
  %i.as = zext i8 %i.q to i32
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store i32 %i.as, ptr %i.at, align 8, !tbaa !42
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !23
  %.not = icmp eq i32 %i.av, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !67 ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 8                   ; 2 uses
  %i.az = select i1 %i.ay, ptr @deband_16_c, ptr @deband_8_c
  %i.ba = select i1 %i.ay, ptr @deband_16_coupling_c, ptr @deband_8_coupling_c
  %.sink = select i1 %.not, ptr %i.az, ptr %i.ba
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  store ptr %.sink, ptr %i.bb, align 8, !tbaa !41
  %notmask = shl nsw i32 -1, %i.ax
  %i.bc = xor i32 %notmask, -1
  %i.bd = uitofp nsz nneg i32 %i.bc to float
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.bf = load float, ptr %i.be, align 4, !tbaa !68
  %i.bg = fmul nsz float %i.bf, %i.bd
  %i.bh = fptosi float %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 84
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !42
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !67
  %notmask93 = shl nsw i32 -1, %i.bk
  %i.bl = xor i32 %notmask93, -1
  %i.bm = uitofp nsz nneg i32 %i.bl to float
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bo = load float, ptr %i.bn, align 8, !tbaa !68
  %i.bp = fmul nsz float %i.bo, %i.bm
  %i.bq = fptosi float %i.bp to i32
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store i32 %i.bq, ptr %i.br, align 8, !tbaa !42
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !67
  %notmask94 = shl nsw i32 -1, %i.bt
  %i.bu = xor i32 %notmask94, -1
  %i.bv = uitofp nsz nneg i32 %i.bu to float
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !68
  %i.by = fmul nsz float %i.bx, %i.bv
  %i.bz = fptosi float %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 92
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !42
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !67
  %notmask95 = shl nsw i32 -1, %i.cc
  %i.cd = xor i32 %notmask95, -1
  %i.ce = uitofp nsz nneg i32 %i.cd to float
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.cg = load float, ptr %i.cf, align 8, !tbaa !68
  %i.ch = fmul nsz float %i.cg, %i.ce
  %i.ci = fptosi float %i.ch to i32
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store i32 %i.ci, ptr %i.cj, align 8, !tbaa !42
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 104 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !44 ; 2 uses
  %.not96 = icmp eq ptr %i.cl, null
  br i1 %.not96, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.cm = mul nsw i32 %i.ab, %i.ap
  %i.cn = sext i32 %i.cm to i64
  %i.co = shl nsw i64 %i.cn, 2
  %i.cp = tail call noalias ptr @av_malloc(i64 noundef %i.co) #10 ; 2 uses
  store ptr %i.cp, ptr %i.ck, align 8, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.cq = phi ptr [ %i.cp, %bb.b ], [ %i.cl, %bb.a ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 112 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !45 ; 2 uses
  %.not97 = icmp eq ptr %i.cs, null
  br i1 %.not97, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ct = load i32, ptr %i.al, align 4, !tbaa !42
  %i.cu = load i32, ptr %i.x, align 4, !tbaa !42
  %i.cv = mul nsw i32 %i.cu, %i.ct
  %i.cw = sext i32 %i.cv to i64
  %i.cx = shl nsw i64 %i.cw, 2
  %i.cy = tail call noalias ptr @av_malloc(i64 noundef %i.cx) #10 ; 2 uses
  store ptr %i.cy, ptr %i.cr, align 8, !tbaa !45
  %.pre = load ptr, ptr %i.ck, align 8, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.cz = phi ptr [ %i.cy, %bb.d ], [ %i.cs, %bb.c ] ; 2 uses
  %i.da = phi ptr [ %.pre, %bb.d ], [ %i.cq, %bb.c ] ; 2 uses
  %.not98 = icmp eq ptr %i.da, null
  %.not99 = icmp eq ptr %i.cz, null
  %or.cond = select i1 %.not98, i1 true, i1 %.not99
  br i1 %or.cond, label %.loopexit, label %.preheader100

.preheader100:                                    ; preds = %bb.e
  %i.db = load i32, ptr %i.x, align 4, !tbaa !42  ; 2 uses
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader100
  %i.dd = fcmp nsz olt float %i.i, 0.000000e+00
  %i.de = fneg nsz float %i.i
  %i.df = icmp slt i32 %i.k, 0
  %i.dg = sub nsw i32 0, %i.k
  %i.dh = uitofp nneg i32 %i.dg to float
  %i.di = uitofp nneg i32 %i.k to float
  %i.dj = load i32, ptr %i.al, align 4, !tbaa !42 ; 2 uses
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.dl = phi i32 [ %i.ep, %._crit_edge ], [ %i.db, %.preheader.lr.ph ]
  %i.dm = phi i32 [ %i.eq, %._crit_edge ], [ %i.dj, %.preheader.lr.ph ] ; 3 uses
  %.0102 = phi i32 [ %i.er, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 4 uses
  %i.dn = icmp sgt i32 %i.dm, 0
  br i1 %i.dn, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.do = uitofp nsz nneg i32 %.0102 to float
  %i.dp = fmul nnan nsz float %i.do, 7.823300e+01
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %i.dq = phi i32 [ %i.dm, %.lr.ph ], [ %i.en, %bb.f ]
  %.088101 = phi i32 [ 0, %.lr.ph ], [ %i.em, %bb.f ] ; 4 uses
  %i.dr = uitofp nsz nneg i32 %.088101 to float
  %i.ds = tail call nsz float @llvm.fmuladd.f32(float %i.dr, float 1.298980e+01, float %i.dp)
  %i.dt = tail call nsz float @llvm.sin.f32(float %i.ds)
  %i.du = fmul nsz float %i.dt, f0x472AEE8C       ; 2 uses
  %i.dv = tail call nsz float @llvm.floor.f32(float %i.du)
  %i.dw = fsub nsz float %i.du, %i.dv             ; 2 uses
  %1 = fmul nsz float %i.i, %i.dw
  %2 = select nsz i1 %i.dd, float %i.de, float %1
  %sincos = tail call nsz { float, float } @llvm.sincos.f32(float %2) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %3 = fmul nsz float %i.dw, %i.di
  %4 = select nsz i1 %i.df, float %i.dh, float %3
  %i.dx = fptosi float %4 to i32
  %i.dy = sitofp nsz i32 %i.dx to float           ; 2 uses
  %i.dz = fmul nsz float %cos, %i.dy
  %i.ea = fptosi float %i.dz to i32
  %i.eb = mul nuw nsw i32 %i.dq, %.0102
  %i.ec = add nsw i32 %i.eb, %.088101
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.ed
  store i32 %i.ea, ptr %i.ee, align 4, !tbaa !42
  %i.ef = fmul nsz float %sin, %i.dy
  %i.eg = fptosi float %i.ef to i32
  %i.eh = load i32, ptr %i.al, align 4, !tbaa !42
  %i.ei = mul nsw i32 %i.eh, %.0102
  %i.ej = add nsw i32 %i.ei, %.088101
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.ek
  store i32 %i.eg, ptr %i.el, align 4, !tbaa !42
  %i.em = add nuw nsw i32 %.088101, 1             ; 2 uses
  %i.en = load i32, ptr %i.al, align 4, !tbaa !42 ; 3 uses
  %i.eo = icmp slt i32 %i.em, %i.en
  br i1 %i.eo, label %bb.f, label %._crit_edge.loopexit, !llvm.loop !56

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre106 = load i32, ptr %i.x, align 4, !tbaa !42
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ep = phi i32 [ %.pre106, %._crit_edge.loopexit ], [ %i.dl, %.preheader ] ; 2 uses
  %i.eq = phi i32 [ %i.en, %._crit_edge.loopexit ], [ %i.dm, %.preheader ]
  %i.er = add nuw nsw i32 %.0102, 1               ; 2 uses
  %i.es = icmp slt i32 %i.er, %i.ep
  br i1 %i.es, label %.preheader, label %.loopexit, !llvm.loop !57

.loopexit:                                        ; preds = %._crit_edge, %.preheader.lr.ph, %.preheader100, %bb.e
  %.089 = phi i32 [ -12, %bb.e ], [ 0, %.preheader100 ], [ 0, %.preheader.lr.ph ], [ 0, %._crit_edge ]
  ret i32 %.089
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #4

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @deband_16_coupling_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 6 uses
  %i.b = alloca [4 x i32], align 16               ; 5 uses
  %i.c = alloca [4 x i32], align 16               ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 7 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !39     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40   ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 60 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !42
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = sext i32 %2 to i64
  %i.m = mul nsw i64 %i.k, %i.l
  %i.n = sext i32 %3 to i64                       ; 2 uses
  %i.o = sdiv i64 %i.m, %i.n                      ; 2 uses
  %i.p = trunc i64 %i.o to i32
  %i.q = add nsw i32 %2, 1
  %i.r = sext i32 %i.q to i64
  %i.s = mul nsw i64 %i.k, %i.r
  %i.t = sdiv i64 %i.s, %i.n                      ; 2 uses
  %i.u = trunc i64 %i.t to i32
  %i.v = icmp slt i32 %i.p, %i.u
  br i1 %i.v, label %.lr.ph189, label %._crit_edge190.split

.lr.ph189:                                        ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 44 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !42   ; 3 uses
  %i.y = icmp sgt i32 %i.x, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 6 uses
  br i1 %i.y, label %.lr.ph189.split, label %._crit_edge190.split

.lr.ph189.split:                                  ; preds = %.lr.ph189
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !45
  %i.ai = load i32, ptr %i.ad, align 8, !tbaa !43 ; 6 uses
  %i.aj = icmp sgt i32 %i.ai, 0                   ; 3 uses
  %sext = shl i64 %i.o, 32
  %i.ak = ashr exact i64 %sext, 32
  %i.al = zext nneg i32 %i.x to i64
  %sext222 = shl i64 %i.t, 32
  %wide.trip.count216 = ashr exact i64 %sext222, 32
  %wide.trip.count211 = zext nneg i32 %i.x to i64
  %wide.trip.count = zext i32 %i.ai to i64        ; 6 uses
  %wide.trip.count196 = zext nneg i32 %i.ai to i64
  %i.am = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.an = icmp eq i64 %i.am, 0
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod231 = trunc i32 %i.ai to i1
  %xtraiter232 = and i64 %wide.trip.count, 1
  %i.ao = icmp eq i64 %i.am, 0
  %unroll_iter235 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod233.not = icmp eq i64 %xtraiter232, 0
  %lcmp.mod234 = trunc i32 %i.ai to i1
  br label %.lr.ph185

.lr.ph185:                                        ; preds = %.lr.ph189.split, %._crit_edge186
  %indvars.iv213 = phi i64 [ %i.ak, %.lr.ph189.split ], [ %indvars.iv.next214, %._crit_edge186 ] ; 10 uses
  %i.ap = mul nsw i64 %indvars.iv213, %i.al
  %i.aq = trunc nsw i64 %indvars.iv213 to i32     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph185, %.loopexit
  %indvars.iv208 = phi i64 [ 0, %.lr.ph185 ], [ %indvars.iv.next209, %.loopexit ] ; 10 uses
  %i.ar = add nsw i64 %indvars.iv208, %i.ap       ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !42 ; 2 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ar
  %i.av = load i32, ptr %i.au, align 4, !tbaa !42 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.aw = add nsw i32 %i.av, %i.aq                ; 2 uses
  %i.ax = icmp slt i32 %i.aw, 0
  %i.ay = trunc nuw nsw i64 %indvars.iv208 to i32 ; 2 uses
  %i.az = add nsw i32 %i.at, %i.ay                ; 2 uses
  %i.ba = icmp slt i32 %i.az, 0
  %i.bb = sub nsw i32 %i.aq, %i.av                ; 2 uses
  %i.bc = icmp slt i32 %i.bb, 0
  %i.bd = sub nsw i32 %i.ay, %i.at                ; 2 uses
  %i.be = icmp slt i32 %i.bd, 0
  %i.bf = load i32, ptr %i.ab, align 8, !tbaa !48
  %.not162 = icmp eq i32 %i.bf, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 9 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !49 ; 5 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !42
  %i.bk = sdiv i32 %i.bj, 2                       ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !42 ; 5 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !42
  %i.bp = add nsw i32 %i.bo, -1                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !42
  %i.bs = add nsw i32 %i.br, -1                   ; 2 uses
  %..i167 = tail call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.bs)
  %.0.i168 = select i1 %i.ax, i32 0, i32 %..i167
  %i.bt = mul nsw i32 %.0.i168, %i.bk             ; 2 uses
  %..i165 = tail call i32 @llvm.smin.i32(i32 %i.az, i32 %i.bp)
  %.0.i166 = select i1 %i.ba, i32 0, i32 %..i165  ; 2 uses
  %i.bu = add nsw i32 %i.bt, %.0.i166
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [2 x i8], ptr %i.bh, i64 %i.bv
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !51
  %i.by = zext i16 %i.bx to i32                   ; 2 uses
  %..i163 = tail call i32 @llvm.smin.i32(i32 %i.bb, i32 %i.bs)
  %.0.i164 = select i1 %i.bc, i32 0, i32 %..i163
  %i.bz = mul nsw i32 %.0.i164, %i.bk             ; 2 uses
  %i.ca = add nsw i32 %i.bz, %.0.i166
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.bh, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !51
  %i.ce = zext i16 %i.cd to i32                   ; 2 uses
  %..i = tail call i32 @llvm.smin.i32(i32 %i.bd, i32 %i.bp)
  %.0.i = select i1 %i.be, i32 0, i32 %..i        ; 2 uses
  %i.cf = add nsw i32 %i.bz, %.0.i
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [2 x i8], ptr %i.bh, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !51
  %i.cj = zext i16 %i.ci to i32                   ; 2 uses
  %i.ck = add nsw i32 %i.bt, %.0.i
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [2 x i8], ptr %i.bh, i64 %i.cl
end_hunk_0
