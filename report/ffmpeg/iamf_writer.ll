Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/iamf_writer?download=true
inline.NumInlined: 118
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@ff_iamf_add_mix_presentation:bb.a
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %add_param_definition.exit.thread, label %bb.m

bb.m:                                             ; preds = %.loopexit130
  store ptr %i.ba, ptr %i.ad, align 8, !tbaa !82
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !89
  %.not4047.i = icmp eq i32 %i.bc, 0
  br i1 %.not4047.i, label %.thread50.i, label %.thread53.i

.thread50.i:                                      ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !80
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %2, i32 noundef 16, ptr noundef nonnull @.str.21, i32 noundef %i.be) #10
  br label %add_param_definition.exit.thread

.thread53.i:                                      ; preds = %bb.m
  %i.bf = tail call noalias ptr @av_mallocz(i64 noundef 32) #10 ; 5 uses
  %.not45.i = icmp eq ptr %i.bf, null
  br i1 %.not45.i, label %add_param_definition.exit.thread, label %add_param_definition.exit

add_param_definition.exit:                        ; preds = %.thread53.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !90
  %i.bi = icmp ne i32 %i.bh, 0
  %i.bj = zext i1 %i.bi to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !92
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.ak, ptr %i.bl, align 8, !tbaa !86
  store ptr null, ptr %i.bf, align 8, !tbaa !93
  %i.bm = load ptr, ptr %i.ad, align 8, !tbaa !82 ; 2 uses
  %i.bn = load i32, ptr %i.ac, align 8, !tbaa !81 ; 2 uses
  %i.bo = add nsw i32 %i.bn, 1                    ; 2 uses
  store i32 %i.bo, ptr %i.ac, align 8, !tbaa !81
  %i.bp = sext i32 %i.bn to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bp
  store ptr %i.bf, ptr %i.bq, align 8, !tbaa !84
  br label %ff_iamf_get_param_definition.exit

ff_iamf_get_param_definition.exit:                ; preds = %bb.l, %add_param_definition.exit
  %i.br = phi ptr [ %i.bm, %add_param_definition.exit ], [ %.pre, %bb.l ]
  %i.bs = phi i32 [ %i.bo, %add_param_definition.exit ], [ %i.ap, %bb.l ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !113 ; 2 uses
  %.not156 = icmp eq i32 %i.bu, 0
  br i1 %.not156, label %ff_iamf_get_param_definition.exit96, label %.lr.ph151

.lr.ph151:                                        ; preds = %ff_iamf_get_param_definition.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph151, %.loopexit
  %i.bw = phi i32 [ %i.bu, %.lr.ph151 ], [ %i.dk, %.loopexit ]
  %i.bx = phi ptr [ %i.br, %.lr.ph151 ], [ %i.dl, %.loopexit ] ; 3 uses
  %i.by = phi i32 [ %i.bs, %.lr.ph151 ], [ %i.dm, %.loopexit ] ; 4 uses
  %indvars.iv177 = phi i64 [ 0, %.lr.ph151 ], [ %indvars.iv.next178, %.loopexit ] ; 3 uses
  %i.bz = load ptr, ptr %i.bv, align 8, !tbaa !114
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv177
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !116
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !118 ; 6 uses
  %.not87 = icmp eq ptr %i.cd, null
  br i1 %.not87, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ce = trunc nuw nsw i64 %indvars.iv180 to i32
  %i.cf = trunc nuw nsw i64 %indvars.iv177 to i32
  %i.cg = load i64, ptr %i.w, align 8, !tbaa !19
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %2, i32 noundef 16, ptr noundef nonnull @.str.19, i32 noundef %i.cf, i32 noundef %i.ce, i64 noundef %i.cg) #10
  br label %add_param_definition.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !80
  %i.cj = icmp sgt i32 %i.by, 0
  br i1 %i.cj, label %.lr.ph.i91, label %.loopexit129

.lr.ph.i91:                                       ; preds = %bb.p
  %wide.trip.count.i92 = zext nneg i32 %i.by to i64
  br label %bb.r

bb.q:                                             ; preds = %bb.r
  %indvars.iv.next.i94 = add nuw nsw i64 %indvars.iv.i93, 1 ; 2 uses
  %exitcond.not.i95 = icmp eq i64 %indvars.iv.next.i94, %wide.trip.count.i92
  br i1 %exitcond.not.i95, label %.loopexit129, label %bb.r, !llvm.loop !0

bb.r:                                             ; preds = %bb.q, %.lr.ph.i91
  %indvars.iv.i93 = phi i64 [ 0, %.lr.ph.i91 ], [ %indvars.iv.next.i94, %bb.q ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv.i93
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !84
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !86
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !80
  %i.cq = icmp eq i32 %i.cp, %i.ci
  br i1 %i.cq, label %.loopexit, label %bb.q

.loopexit129:                                     ; preds = %bb.q, %bb.p
  %i.cr = add nsw i32 %i.by, 1
  %i.cs = sext i32 %i.cr to i64
  %i.ct = tail call ptr @av_realloc_array(ptr noundef %i.bx, i64 noundef %i.cs, i64 noundef 8) #10 ; 2 uses
  %.not.i97 = icmp eq ptr %i.ct, null
  br i1 %.not.i97, label %add_param_definition.exit.thread, label %bb.s

bb.s:                                             ; preds = %.loopexit129
  store ptr %i.ct, ptr %i.ad, align 8, !tbaa !82
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cd, i64 36
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !89
  %.not4047.i98 = icmp eq i32 %i.cv, 0
  br i1 %.not4047.i98, label %.thread50.i102, label %.thread53.i99

.thread50.i102:                                   ; preds = %bb.s
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !80
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %2, i32 noundef 16, ptr noundef nonnull @.str.21, i32 noundef %i.cx) #10
  br label %add_param_definition.exit.thread

.thread53.i99:                                    ; preds = %bb.s
  %i.cy = tail call noalias ptr @av_mallocz(i64 noundef 32) #10 ; 5 uses
  %.not45.i100 = icmp eq ptr %i.cy, null
  br i1 %.not45.i100, label %add_param_definition.exit.thread, label %bb.t

bb.t:                                             ; preds = %.thread53.i99
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !90
  %i.db = icmp ne i32 %i.da, 0
  %i.dc = zext i1 %i.db to i32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store i32 %i.dc, ptr %i.dd, align 8, !tbaa !92
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.cd, ptr %i.de, align 8, !tbaa !86
  store ptr null, ptr %i.cy, align 8, !tbaa !93
  %i.df = load ptr, ptr %i.ad, align 8, !tbaa !82 ; 2 uses
  %i.dg = load i32, ptr %i.ac, align 8, !tbaa !81 ; 2 uses
  %i.dh = add nsw i32 %i.dg, 1                    ; 2 uses
  store i32 %i.dh, ptr %i.ac, align 8, !tbaa !81
  %i.di = sext i32 %i.dg to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.di
  store ptr %i.cy, ptr %i.dj, align 8, !tbaa !84
  %.pre183 = load i32, ptr %i.bt, align 8, !tbaa !113
  br label %.loopexit

.loopexit:                                        ; preds = %bb.r, %bb.t
  %i.dk = phi i32 [ %.pre183, %bb.t ], [ %i.bw, %bb.r ] ; 2 uses
  %i.dl = phi ptr [ %i.df, %bb.t ], [ %i.bx, %bb.r ]
  %i.dm = phi i32 [ %i.dh, %bb.t ], [ %i.by, %bb.r ]
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %i.dn = zext i32 %i.dk to i64
  %i.do = icmp samesign ult i64 %indvars.iv.next178, %i.dn
  br i1 %i.do, label %bb.n, label %ff_iamf_get_param_definition.exit96, !llvm.loop !154

ff_iamf_get_param_definition.exit96:              ; preds = %.loopexit, %ff_iamf_get_param_definition.exit
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %i.dp = load ptr, ptr %i.t, align 8, !tbaa !102 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !105
  %i.ds = zext i32 %i.dr to i64
  %i.dt = icmp samesign ult i64 %indvars.iv.next181, %i.ds
  br i1 %i.dt, label %bb.h, label %._crit_edge, !llvm.loop !155

._crit_edge:                                      ; preds = %ff_iamf_get_param_definition.exit96, %bb.g
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !95
  %i.dw = load i32, ptr %i.f, align 8, !tbaa !94
  %i.dx = add nsw i32 %i.dw, 1
  %i.dy = sext i32 %i.dx to i64
  %i.dz = tail call ptr @av_realloc_array(ptr noundef %i.dv, i64 noundef %i.dy, i64 noundef 8) #10 ; 3 uses
  %.not89 = icmp eq ptr %i.dz, null
  br i1 %.not89, label %add_param_definition.exit.thread, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  store ptr %i.dz, ptr %i.du, align 8, !tbaa !95
  %i.ea = load i32, ptr %i.f, align 8, !tbaa !94  ; 2 uses
  %i.eb = add nsw i32 %i.ea, 1
  store i32 %i.eb, ptr %i.f, align 8, !tbaa !94
  %i.ec = sext i32 %i.ea to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.ec
  store ptr %i.t, ptr %i.ed, align 8, !tbaa !97
  br label %bb.v

add_param_definition.exit.thread:                 ; preds = %.thread53.i, %.loopexit130, %.thread53.i99, %.loopexit129, %.thread50.i102, %bb.o, %.thread50.i, %bb.i, %._crit_edge
  %.8 = phi i32 [ -12, %._crit_edge ], [ -22, %.thread50.i102 ], [ -22, %bb.i ], [ -12, %.thread53.i99 ], [ -22, %.thread50.i ], [ -22, %bb.o ], [ -12, %.loopexit129 ], [ -12, %.loopexit130 ], [ -12, %.thread53.i ]
  call void @ff_iamf_free_mix_presentation(ptr noundef nonnull %i.a) #10
  br label %bb.v

bb.v:                                             ; preds = %bb.f, %.critedge, %bb.a, %add_param_definition.exit.thread, %bb.u, %bb.c
  %.172 = phi i32 [ -22, %bb.c ], [ -12, %.critedge ], [ 0, %bb.u ], [ %.8, %add_param_definition.exit.thread ], [ -22, %bb.a ], [ -22, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.172
}

declare hidden void @ff_iamf_free_mix_presentation(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @ff_iamf_write_descriptors(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [25 x i8], align 16               ; 9 uses
  %i.b = alloca ptr, align 8                      ; 31 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca [25 x i8], align 16               ; 15 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca [25 x i8], align 16               ; 7 uses
  %i.h = alloca ptr, align 8                      ; 20 uses
  %i.i = alloca ptr, align 8                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 8 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca [25 x i8], align 16               ; 5 uses
  %i.m = alloca ptr, align 8                      ; 32 uses
  %i.n = alloca ptr, align 8                      ; 6 uses
  tail call void @avio_w8(ptr noundef %1, i32 noundef 248) #10
  tail call void @ffio_write_leb(ptr noundef %1, i32 noundef 6) #10
  tail call void @avio_wb32(ptr noundef %1, i32 noundef 1767992678) #10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !47
  %i.q = icmp sgt i32 %i.p, 1
  %i.r = zext i1 %i.q to i32
  tail call void @avio_w8(ptr noundef %1, i32 noundef %i.r) #10
  %i.s = load i32, ptr %i.o, align 8, !tbaa !47
  %i.t = icmp sgt i32 %i.s, 1
  %i.u = zext i1 %i.t to i32
  tail call void @avio_w8(ptr noundef %1, i32 noundef %i.u) #10
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !63
  %.not99 = icmp sgt i32 %i.w, 0
  br i1 %.not99, label %.lr.ph, label %.preheader80

.preheader80:                                     ; preds = %bb.k, %bb.a
  %i.x = load i32, ptr %i.o, align 8, !tbaa !47
  %.not50103 = icmp sgt i32 %i.x, 0
  br i1 %.not50103, label %.lr.ph105, label %.preheader

.lr.ph105:                                        ; preds = %.preheader80
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %3 = ptrtoint ptr %i.d to i64
  %4 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %bb.l

.lr.ph:                                           ; preds = %bb.a, %bb.k
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ 0, %bb.a ] ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !66 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #10
  store ptr null, ptr %i.n, align 8, !tbaa !119
  %i.ae = call i32 @avio_open_dyn_buf(ptr noundef nonnull %i.m) #10 ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !121
  %i.ah = load i32, ptr %i.ad, align 8, !tbaa !67
  call void @ffio_write_leb(ptr noundef %i.ag, i32 noundef %i.ah) #10
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !121
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !174
  call void @avio_wl32(ptr noundef %i.ai, i32 noundef %i.ak) #10
  %i.al = load ptr, ptr %i.m, align 8, !tbaa !121
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !59
  call void @ffio_write_leb(ptr noundef %i.al, i32 noundef %i.an) #10
  %i.ao = load ptr, ptr %i.m, align 8, !tbaa !121
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !60
  call void @avio_wb16(ptr noundef %i.ao, i32 noundef %i.aq) #10
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !122
  switch i32 %i.as, label %bb.k [
    i32 86076, label %bb.c
    i32 86018, label %.thread
    i32 86028, label %bb.d
    i32 65536, label %bb.e
    i32 65548, label %bb.f
    i32 65544, label %bb.g
    i32 65537, label %bb.h
    i32 65549, label %bb.i
    i32 65545, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  %i.at = load ptr, ptr %i.m, align 8, !tbaa !121
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !61
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !62
  call void @avio_write(ptr noundef %i.at, ptr noundef %i.av, i32 noundef %i.ax) #10
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %i.m, align 8, !tbaa !121
  call void @avio_w8(ptr noundef %i.ay, i32 noundef 128) #10
  %i.az = load ptr, ptr %i.m, align 8, !tbaa !121
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !62
  call void @avio_wb24(ptr noundef %i.az, i32 noundef %i.bb) #10
  %i.bc = load ptr, ptr %i.m, align 8, !tbaa !121
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !61
  %i.bf = load i32, ptr %i.ba, align 8, !tbaa !62
  call void @avio_write(ptr noundef %i.bc, ptr noundef %i.be, i32 noundef %i.bf) #10
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !121
  call void @avio_w8(ptr noundef %i.bg, i32 noundef 1) #10
  %i.bh = load ptr, ptr %i.m, align 8, !tbaa !121
  call void @avio_w8(ptr noundef %i.bh, i32 noundef 16) #10
  %i.bi = load ptr, ptr %i.m, align 8, !tbaa !121
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !58
  call void @avio_wb32(ptr noundef %i.bi, i32 noundef %i.bk) #10
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !121
  call void @avio_w8(ptr noundef %i.bl, i32 noundef 1) #10
  %i.bm = load ptr, ptr %i.m, align 8, !tbaa !121
  call void @avio_w8(ptr noundef %i.bm, i32 noundef 24) #10
  %i.bn = load ptr, ptr %i.m, align 8, !tbaa !121
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !58
  call void @avio_wb32(ptr noundef %i.bn, i32 noundef %i.bp) #10
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %i.m, align 8, !tbaa !121
  call void @avio_w8(ptr noundef %i.bq, i32 noundef 1) #10
  %i.br = load ptr, ptr %i.m, align 8, !tbaa !121
  call void @avio_w8(ptr noundef %i.br, i32 noundef 32) #10
  %i.bs = load ptr, ptr %i.m, align 8, !tbaa !121
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !58
  call void @avio_wb32(ptr noundef %i.bs, i32 noundef %i.bu) #10
  br label %bb.k

bb.h:                                             ; preds = %bb.b
  %i.bv = load ptr, ptr %i.m, align 8, !tbaa !121
  call void @avio_w8(ptr noundef %i.bv, i32 noundef 0) #10
  %i.bw = load ptr, ptr %i.m, align 8, !tbaa !121
  call void @avio_w8(ptr noundef %i.bw, i32 noundef 16) #10
  %i.bx = load ptr, ptr %i.m, align 8, !tbaa !121
  %i.by = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !58
  call void @avio_wb32(ptr noundef %i.bx, i32 noundef %i.bz) #10
  br label %bb.k

bb.i:                                             ; preds = %bb.b
  %i.ca = load ptr, ptr %i.m, align 8, !tbaa !121
  call void @avio_w8(ptr noundef %i.ca, i32 noundef 0) #10
  %i.cb = load ptr, ptr %i.m, align 8, !tbaa !121
  call void @avio_w8(ptr noundef %i.cb, i32 noundef 24) #10
  %i.cc = load ptr, ptr %i.m, align 8, !tbaa !121
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !58
  call void @avio_wb32(ptr noundef %i.cc, i32 noundef %i.ce) #10
  br label %bb.k

bb.j:                                             ; preds = %bb.b
  %i.cf = load ptr, ptr %i.m, align 8, !tbaa !121
  call void @avio_w8(ptr noundef %i.cf, i32 noundef 0) #10
  %i.cg = load ptr, ptr %i.m, align 8, !tbaa !121
  call void @avio_w8(ptr noundef %i.cg, i32 noundef 32) #10
  %i.ch = load ptr, ptr %i.m, align 8, !tbaa !121
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !58
  call void @avio_wb32(ptr noundef %i.ch, i32 noundef %i.cj) #10
  br label %bb.k

.thread:                                          ; preds = %bb.b, %.lr.ph
  %.0.i.ph = phi i32 [ -1163346256, %bb.b ], [ %i.ae, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  br label %.loopexit76

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  store i8 0, ptr %i.l, align 16, !tbaa !20
  %i.ck = load ptr, ptr %i.m, align 8, !tbaa !121
  %i.cl = call i32 @avio_get_dyn_buf(ptr noundef %i.ck, ptr noundef nonnull %i.n) #10 ; 2 uses
  call void @avio_write(ptr noundef %1, ptr noundef nonnull %i.l, i32 noundef 1) #10
  call void @ffio_write_leb(ptr noundef %1, i32 noundef %i.cl) #10
  %i.cm = load ptr, ptr %i.n, align 8, !tbaa !119
  call void @avio_write(ptr noundef %1, ptr noundef %i.cm, i32 noundef %i.cl) #10
  call void @ffio_free_dyn_buf(ptr noundef nonnull %i.m) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cn = load i32, ptr %i.v, align 8, !tbaa !63
  %i.co = sext i32 %i.cn to i64
  %.not = icmp slt i64 %indvars.iv.next, %i.co
  br i1 %.not, label %.lr.ph, label %.preheader80, !llvm.loop !156

.preheader:                                       ; preds = %.loopexit77, %.preheader80
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !94
  %.not51107 = icmp sgt i32 %i.cq, 0
  br i1 %.not51107, label %.lr.ph109, label %.loopexit76

.lr.ph109:                                        ; preds = %.preheader
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.aq

bb.l:                                             ; preds = %.lr.ph105, %.loopexit77
  %indvars.iv135 = phi i64 [ 0, %.lr.ph105 ], [ %indvars.iv.next136, %.loopexit77 ] ; 2 uses
  %i.cv = load ptr, ptr %i.y, align 8, !tbaa !48
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv135
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !50 ; 10 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !68 ; 7 uses
  %i.cz = load ptr, ptr %0, align 8, !tbaa !64
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 36 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !69
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  store ptr null, ptr %i.i, align 8, !tbaa !119
  %i.df = call i32 @avio_open_dyn_buf(ptr noundef nonnull %i.h) #10 ; 2 uses
  %i.dg = icmp slt i32 %i.df, 0
  br i1 %i.dg, label %.thread72, label %flush_put_bits.exit.i52

flush_put_bits.exit.i52:                          ; preds = %bb.l
  %i.dh = load ptr, ptr %i.h, align 8, !tbaa !121
  %i.di = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !55
  call void @ffio_write_leb(ptr noundef %i.dh, i32 noundef %i.dj) #10
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cy, i64 40 ; 3 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !24
  %.tr.i = trunc i32 %i.dl to i8
end_hunk_0
begin_hunk_1_@ff_iamf_write_descriptors:bb.a
  br i1 %or.cond, label %.critedge.i, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ff = and i32 %.289.i, -2
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u, %bb.t
  %.4.i = phi i32 [ %i.ff, %bb.x ], [ %.289.i, %bb.t ], [ %.289.i, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i
  %.5.i = phi i32 [ %.4.i, %bb.y ], [ 0, %._crit_edge.i ] ; 4 uses
  %i.fg = load ptr, ptr %i.h, align 8, !tbaa !121
  %i.fh = lshr i32 %.5.i, 1
  %i.fi = sub nuw nsw i32 %.5.i, %i.fh
  %i.fj = and i32 %i.fi, 50529027
  call void @ffio_write_leb(ptr noundef %i.fg, i32 noundef %i.fj) #10
  %i.fk = and i32 %.5.i, 1
  %.not106.i = icmp eq i32 %i.fk, 0
  br i1 %.not106.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fl = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !78 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !87
  %.not177.i = icmp eq i32 %i.fo, 0
  br i1 %.not177.i, label %bb.ab, label %av_iamf_param_definition_get_subblock.exit.i

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 262) #10
  call void @abort() #12
  unreachable

av_iamf_param_definition_get_subblock.exit.i:     ; preds = %bb.aa
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !123
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fq
  %i.fs = load ptr, ptr %i.h, align 8, !tbaa !121
  call void @ffio_write_leb(ptr noundef %i.fs, i32 noundef 1) #10
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !80 ; 2 uses
  %i.fv = load i32, ptr %i.z, align 8, !tbaa !81
  %i.fw = load ptr, ptr %i.aa, align 8, !tbaa !82 ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.fv to i64
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !84
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !86 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !80
  %i.gc = icmp eq i32 %i.gb, %i.fu
  br i1 %i.gc, label %ff_iamf_get_param_definition.exit.i, label %.lr.ph183.i

.lr.ph183.i:                                      ; preds = %av_iamf_param_definition_get_subblock.exit.i, %.lr.ph183.i
  %indvars.iv.i182.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph183.i ], [ 0, %av_iamf_param_definition_get_subblock.exit.i ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i182.i, 1 ; 3 uses
  %exitcond.not.i.i = icmp ne i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  call void @llvm.assume(i1 %exitcond.not.i.i)
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %indvars.iv.next.i.i
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !84
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !86 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !80
  %i.gj = icmp eq i32 %i.gi, %i.fu
  br i1 %i.gj, label %ff_iamf_get_param_definition.exit.i, label %.lr.ph183.i

ff_iamf_get_param_definition.exit.i:              ; preds = %.lr.ph183.i, %av_iamf_param_definition_get_subblock.exit.i
  %.val109.i = phi ptr [ %i.fz, %av_iamf_param_definition_get_subblock.exit.i ], [ %i.gg, %.lr.ph183.i ]
  %i.gk = load ptr, ptr %i.h, align 8, !tbaa !121
  call fastcc void @param_definition(ptr nonnull %.val109.i, ptr noundef %i.gk)
  %i.gl = load ptr, ptr %i.h, align 8, !tbaa !121
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !125
  %i.go = shl i32 %i.gn, 5
  call void @avio_w8(ptr noundef %i.gl, i32 noundef %i.go) #10
  %i.gp = load ptr, ptr %i.h, align 8, !tbaa !121
  %i.gq = getelementptr inbounds nuw i8, ptr %i.cy, i64 44
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !175
  %i.gs = shl i32 %i.gr, 4
  call void @avio_w8(ptr noundef %i.gp, i32 noundef %i.gs) #10
  br label %bb.ac

bb.ac:                                            ; preds = %ff_iamf_get_param_definition.exit.i, %bb.z
  %i.gt = and i32 %.5.i, 2
  %.not107.i = icmp eq i32 %i.gt, 0
  br i1 %.not107.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gu = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !88 ; 2 uses
  %.not108.not.i = icmp eq ptr %i.gv, null
  br i1 %.not108.not.i, label %.thread.i, label %bb.ae

.thread.i:                                        ; preds = %bb.ad
  %i.gw = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !55
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %2, i32 noundef 16, ptr noundef nonnull @.str.24, i32 noundef %i.gx) #10
  br label %.thread72

bb.ae:                                            ; preds = %bb.ad
  %i.gy = load ptr, ptr %i.h, align 8, !tbaa !121
  call void @ffio_write_leb(ptr noundef %i.gy, i32 noundef 2) #10
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !80 ; 2 uses
  %i.hb = load i32, ptr %i.z, align 8, !tbaa !81  ; 2 uses
  %i.hc = icmp sgt i32 %i.hb, 0
  br i1 %i.hc, label %.lr.ph.i116.i, label %.thread173.i

.thread173.i:                                     ; preds = %bb.ae
  %i.hd = load ptr, ptr %i.h, align 8, !tbaa !121
  %.val175.i = load ptr, ptr inttoptr (i64 8 to ptr), align 8, !tbaa !86
  call fastcc void @param_definition(ptr %.val175.i, ptr noundef %i.hd)
  br label %bb.af

.lr.ph.i116.i:                                    ; preds = %bb.ae
  %i.he = load ptr, ptr %i.aa, align 8, !tbaa !82 ; 2 uses
  %wide.trip.count.i117.i = zext nneg i32 %i.hb to i64
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !84
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !86 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !80
  %i.hk = icmp eq i32 %i.hj, %i.ha
  br i1 %i.hk, label %._crit_edge186.i, label %.lr.ph185.i

.lr.ph185.i:                                      ; preds = %.lr.ph.i116.i, %.lr.ph185.i
  %indvars.iv.i118184.i = phi i64 [ %indvars.iv.next.i119.i, %.lr.ph185.i ], [ 0, %.lr.ph.i116.i ]
  %indvars.iv.next.i119.i = add nuw nsw i64 %indvars.iv.i118184.i, 1 ; 3 uses
  %exitcond.not.i120.i = icmp ne i64 %indvars.iv.next.i119.i, %wide.trip.count.i117.i
  call void @llvm.assume(i1 %exitcond.not.i120.i)
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %indvars.iv.next.i119.i
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !84
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !86 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !80
  %i.hr = icmp eq i32 %i.hq, %i.ha
  br i1 %i.hr, label %._crit_edge186.i, label %.lr.ph185.i

._crit_edge186.i:                                 ; preds = %.lr.ph185.i, %.lr.ph.i116.i
  %.val.i = phi ptr [ %i.hh, %.lr.ph.i116.i ], [ %i.ho, %.lr.ph185.i ]
  %i.hs = load ptr, ptr %i.h, align 8, !tbaa !121
  call fastcc void @param_definition(ptr nonnull %.val.i, ptr noundef %i.hs)
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge186.i, %.thread173.i, %bb.ac
  %i.ht = load i32, ptr %i.dk, align 8, !tbaa !24
  %i.hu = icmp eq i32 %i.ht, 0
  %i.hv = load ptr, ptr %i.h, align 8, !tbaa !121 ; 9 uses
  %i.hw = load ptr, ptr %i.cx, align 8, !tbaa !68 ; 3 uses
  br i1 %i.hu, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16 ; 3 uses
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !28
  %.tr.i.i = trunc i32 %i.hy to i8
  %i.hz = shl i8 %.tr.i.i, 5
  store i8 %i.hz, ptr %i.d, align 16, !tbaa !20
  call void @avio_write(ptr noundef %i.hv, ptr noundef nonnull %i.d, i32 noundef 1) #10
  %i.ia = load i32, ptr %i.hx, align 8, !tbaa !28
  %.not144.i.i = icmp eq i32 %i.ia, 0
  br i1 %.not144.i.i, label %scalable_channel_layout_config.exit.i, label %put_bits.exit31.lr.ph.i.i

put_bits.exit31.lr.ph.i.i:                        ; preds = %bb.ag
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  br label %put_bits.exit31.i.i

put_bits.exit31.i.i:                              ; preds = %flush_put_bits.exit66.i.i, %put_bits.exit31.lr.ph.i.i
  %indvars.iv.i122.i = phi i64 [ 0, %put_bits.exit31.lr.ph.i.i ], [ %indvars.iv.next.i124.i, %flush_put_bits.exit66.i.i ] ; 3 uses
  %i.id = load ptr, ptr %i.ib, align 8, !tbaa !25
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv.i122.i
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  call fastcc void @get_loudspeaker_layout(ptr noundef %i.if, ptr noundef %i.e, ptr noundef %i.f)
  %i.ig = load i32, ptr %i.e, align 4, !tbaa !56
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 36
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !176 ; 2 uses
  %.not142.i.i = icmp eq i32 %i.ii, 0             ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !126
  %i.il = and i32 %i.ik, 1
  %i.im = shl i32 %i.ig, 2
  %i.in = select i1 %.not142.i.i, i32 0, i32 2
  %i.io = or disjoint i32 %i.in, %i.im
  %i.ip = or disjoint i32 %i.io, %i.il
  %i.iq = load ptr, ptr %i.ic, align 8, !tbaa !72
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %indvars.iv.i122.i ; 2 uses
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !74
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !75
  %i.iv = shl i32 %i.ip, 18
  %i.iw = shl i32 %i.is, 8
  %i.ix = or i32 %i.iu, %i.iw
  %i.iy = or i32 %i.ix, %i.iv                     ; 3 uses
  br i1 %.not142.i.i, label %bb.ah, label %put_bits.exit60.thread.i.i

put_bits.exit60.thread.i.i:                       ; preds = %put_bits.exit31.i.i
  %i.iz = shl i32 %i.iy, 8
  %i.ja = shl i32 %i.ii, 2
  %i.jb = or i32 %i.iz, %i.ja
  %i.jc = call i32 @llvm.bswap.i32(i32 %i.jb)
  store i32 %i.jc, ptr %i.d, align 16, !tbaa !20
  %i.jd = getelementptr inbounds nuw i8, ptr %i.if, i64 40
  %i.je = load i64, ptr %i.jd, align 8            ; 2 uses
  %i.jf = shl i64 %i.je, 32
  %i.jg = ashr exact i64 %i.jf, 32
  %i.jh = ashr i64 %i.je, 32
  %i.ji = call i64 @av_rescale(i64 noundef %i.jg, i64 noundef 256, i64 noundef %i.jh) #11
  %i.jj = trunc i64 %i.ji to i32
  %i.jk = call i32 @llvm.smax.i32(i32 %i.jj, i32 -32768)
  %.0.i.i56.i.i = call range(i32 -32768, 32768) i32 @llvm.smin.i32(i32 %i.jk, i32 32767) ; 2 uses
  %i.jl = load i32, ptr %i.f, align 4, !tbaa !56  ; 2 uses
  %i.jm = icmp sgt i32 %i.jl, -1                  ; 2 uses
  %5 = shl nsw i32 %.0.i.i56.i.i, 8
  %6 = or i32 %5, %i.jl
  %.sroa.38.1.i.i = select i1 %i.jm, i32 8, i32 16
  %.sroa.0.1.i.i = select i1 %i.jm, i32 %6, i32 %.0.i.i56.i.i
  br label %.lr.ph.i65.i.i

bb.ah:                                            ; preds = %put_bits.exit31.i.i
  %7 = load i32, ptr %i.f, align 4, !tbaa !56     ; 2 uses
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %bb.ai, label %.lr.ph.i65.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.jn = shl i32 %i.iy, 8
  %i.jo = or i32 %7, %i.jn
  %i.jp = call i32 @llvm.bswap.i32(i32 %i.jo)
  store i32 %i.jp, ptr %i.d, align 16, !tbaa !20
  br label %flush_put_bits.exit66.i.i

.lr.ph.i65.i.i:                                   ; preds = %bb.ah, %put_bits.exit60.thread.i.i
  %.sroa.0.1131.i.i = phi i32 [ %.sroa.0.1.i.i, %put_bits.exit60.thread.i.i ], [ %i.iy, %bb.ah ]
  %.sroa.38.1130.i.i = phi i32 [ %.sroa.38.1.i.i, %put_bits.exit60.thread.i.i ], [ 8, %bb.ah ] ; 2 uses
  %.sroa.68.1129.idx.i.i = phi i64 [ 4, %put_bits.exit60.thread.i.i ], [ 0, %bb.ah ] ; 4 uses
  %i.jq = shl i32 %.sroa.0.1131.i.i, %.sroa.38.1130.i.i ; 2 uses
  %i.jr = lshr exact i32 %.sroa.38.1130.i.i, 3
  %i.js = trunc nuw nsw i64 %.sroa.68.1129.idx.i.i to i32
  %reass.sub.i = sub nsw i32 %i.js, %i.jr
  %i.jt = add nsw i32 %reass.sub.i, 4
  %wide.trip.count.i.a = zext nneg i32 %i.jt to i64 ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i.a, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i65.i.i, %.prol.preheader
  %.sroa.80.28.idx.i.i.prol = phi i64 [ %.sroa.80.28.add.i.i.prol, %.prol.preheader ], [ %.sroa.68.1129.idx.i.i, %.lr.ph.i65.i.i ] ; 2 uses
  %.sroa.0.3.i.i.prol = phi i32 [ %i.jw, %.prol.preheader ], [ %i.jq, %.lr.ph.i65.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i65.i.i ]
  %.sroa.80.28.ptr.i.i.prol = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.80.28.idx.i.i.prol
  %i.ju = lshr i32 %.sroa.0.3.i.i.prol, 24
  %i.jv = trunc nuw i32 %i.ju to i8
  %.sroa.80.28.add.i.i.prol = add nuw nsw i64 %.sroa.80.28.idx.i.i.prol, 1 ; 2 uses
  store i8 %i.jv, ptr %.sroa.80.28.ptr.i.i.prol, align 1, !tbaa !20
  %i.jw = shl i32 %.sroa.0.3.i.i.prol, 8          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !158

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i65.i.i
  %.sroa.80.28.idx.i.i.unr = phi i64 [ %.sroa.68.1129.idx.i.i, %.lr.ph.i65.i.i ], [ %.sroa.80.28.add.i.i.prol, %.prol.preheader ]
  %.sroa.0.3.i.i.unr = phi i32 [ %i.jq, %.lr.ph.i65.i.i ], [ %i.jw, %.prol.preheader ]
  %i.jx = sub nsw i64 %.sroa.68.1129.idx.i.i, %wide.trip.count.i.a
  %i.jy = icmp ugt i64 %i.jx, -4
  br i1 %i.jy, label %flush_put_bits.exit50.loopexit.i.i, label %.lr.ph.i65.i.i.new

.lr.ph.i65.i.i.new:                               ; preds = %.prol.loopexit, %.lr.ph.i65.i.i.new
  %.sroa.80.28.idx.i.i = phi i64 [ %.sroa.80.28.add.i.i.3, %.lr.ph.i65.i.i.new ], [ %.sroa.80.28.idx.i.i.unr, %.prol.loopexit ] ; 5 uses
  %.sroa.0.3.i.i = phi i32 [ 0, %.lr.ph.i65.i.i.new ], [ %.sroa.0.3.i.i.unr, %.prol.loopexit ] ; 4 uses
  %.sroa.80.28.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.80.28.idx.i.i
  %i.jz = lshr i32 %.sroa.0.3.i.i, 24
  %i.ka = trunc nuw i32 %i.jz to i8
  store i8 %i.ka, ptr %.sroa.80.28.ptr.i.i, align 1, !tbaa !20
  %i.kb = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.80.28.idx.i.i
  %.sroa.80.28.ptr.i.i.1 = getelementptr inbounds nuw i8, ptr %i.kb, i64 1
  %i.kc = lshr i32 %.sroa.0.3.i.i, 16
  %i.kd = trunc i32 %i.kc to i8
  store i8 %i.kd, ptr %.sroa.80.28.ptr.i.i.1, align 1, !tbaa !20
  %i.ke = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.80.28.idx.i.i
  %.sroa.80.28.ptr.i.i.2 = getelementptr inbounds nuw i8, ptr %i.ke, i64 2
  %i.kf = lshr i32 %.sroa.0.3.i.i, 8
  %i.kg = trunc i32 %i.kf to i8
  store i8 %i.kg, ptr %.sroa.80.28.ptr.i.i.2, align 1, !tbaa !20
  %i.kh = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.80.28.idx.i.i
  %.sroa.80.28.ptr.i.i.3 = getelementptr inbounds nuw i8, ptr %i.kh, i64 3
  %i.ki = trunc i32 %.sroa.0.3.i.i to i8
  %.sroa.80.28.add.i.i.3 = add nuw nsw i64 %.sroa.80.28.idx.i.i, 4 ; 2 uses
  store i8 %i.ki, ptr %.sroa.80.28.ptr.i.i.3, align 1, !tbaa !20
  %exitcond.not.i.3 = icmp eq i64 %.sroa.80.28.add.i.i.3, %wide.trip.count.i.a
  br i1 %exitcond.not.i.3, label %flush_put_bits.exit50.loopexit.i.i, label %.lr.ph.i65.i.i.new, !llvm.loop !159

flush_put_bits.exit50.loopexit.i.i:               ; preds = %.lr.ph.i65.i.i.new, %.prol.loopexit
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %wide.trip.count.i.a
  br label %flush_put_bits.exit66.i.i

flush_put_bits.exit66.i.i:                        ; preds = %flush_put_bits.exit50.loopexit.i.i, %bb.ai
  %.sroa.68.12.i.i = phi ptr [ %4, %bb.ai ], [ %.ptr.i.i, %flush_put_bits.exit50.loopexit.i.i ]
  %9 = ptrtoint ptr %.sroa.68.12.i.i to i64
  %10 = sub i64 %9, %3
  %11 = trunc i64 %10 to i32
  call void @avio_write(ptr noundef %i.hv, ptr noundef nonnull %i.d, i32 noundef %11) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  %indvars.iv.next.i124.i = add nuw nsw i64 %indvars.iv.i122.i, 1 ; 2 uses
  %i.kj = load i32, ptr %i.hx, align 8, !tbaa !28
  %i.kk = zext i32 %i.kj to i64
  %i.kl = icmp samesign ult i64 %indvars.iv.next.i124.i, %i.kk
  br i1 %i.kl, label %put_bits.exit31.i.i, label %scalable_channel_layout_config.exit.i, !llvm.loop !160

scalable_channel_layout_config.exit.i:            ; preds = %flush_put_bits.exit66.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %.loopexit77

bb.aj:                                            ; preds = %bb.af
  %i.km = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !72 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !25
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !27 ; 6 uses
  %i.kr = load i32, ptr %i.dr, align 8, !tbaa !71
  %i.ks = load i32, ptr %i.kn, align 4, !tbaa !74
  %.not.i.i = icmp eq i32 %i.kr, %i.ks
  br i1 %.not.i.i, label %bb.ak, label %.thread72

bb.ak:                                            ; preds = %bb.aj
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 48 ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !34
  call void @ffio_write_leb(ptr noundef %i.hv, i32 noundef %i.ku) #10
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kq, i64 12 ; 5 uses
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !41
  call void @avio_w8(ptr noundef %i.hv, i32 noundef %i.kw) #10
  %i.kx = load i32, ptr %i.dr, align 8, !tbaa !71
  call void @avio_w8(ptr noundef %i.hv, i32 noundef %i.kx) #10
  %i.ky = load i32, ptr %i.kt, align 8, !tbaa !34
  %i.kz = icmp eq i32 %i.ky, 0
  br i1 %i.kz, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.la = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.lb = load i32, ptr %i.la, align 8, !tbaa !33
  %i.lc = icmp eq i32 %i.lb, 3
  %i.ld = load i32, ptr %i.kv, align 4, !tbaa !41
  %i.le = icmp sgt i32 %i.ld, 0                   ; 2 uses
  br i1 %i.lc, label %.preheader.i.i, label %.preheader43.i.i

.preheader43.i.i:                                 ; preds = %bb.al
  br i1 %i.le, label %.lr.ph48.i.i, label %.loopexit77

.lr.ph48.i.i:                                     ; preds = %.preheader43.i.i
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  br label %bb.am

.preheader.i.i:                                   ; preds = %bb.al
  br i1 %i.le, label %.lr.ph50.i.i, label %.loopexit77

.lr.ph50.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph50.i.i
  %.03949.i.i = phi i32 [ %i.lg, %.lr.ph50.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  call void @avio_w8(ptr noundef %i.hv, i32 noundef %.03949.i.i) #10
  %i.lg = add nuw nsw i32 %.03949.i.i, 1          ; 2 uses
  %i.lh = load i32, ptr %i.kv, align 4, !tbaa !41
  %i.li = icmp slt i32 %i.lg, %i.lh
  br i1 %i.li, label %.lr.ph50.i.i, label %.loopexit77, !llvm.loop !161

bb.am:                                            ; preds = %bb.am, %.lr.ph48.i.i
  %indvars.iv55.i.i = phi i64 [ 0, %.lr.ph48.i.i ], [ %indvars.iv.next56.i.i, %bb.am ] ; 2 uses
  %i.lj = load ptr, ptr %i.lf, align 8, !tbaa !20
  %i.lk = getelementptr inbounds nuw [32 x i8], ptr %i.lj, i64 %indvars.iv55.i.i
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !178
  call void @avio_w8(ptr noundef %i.hv, i32 noundef %i.ll) #10
  %indvars.iv.next56.i.i = add nuw nsw i64 %indvars.iv55.i.i, 1 ; 2 uses
  %i.lm = load i32, ptr %i.kv, align 4, !tbaa !41
  %i.ln = sext i32 %i.lm to i64
  %i.lo = icmp slt i64 %indvars.iv.next56.i.i, %i.ln
  br i1 %i.lo, label %bb.am, label %.loopexit77, !llvm.loop !162

bb.an:                                            ; preds = %bb.ak
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kn, i64 4
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !75 ; 2 uses
  %i.lr = load i32, ptr %i.kn, align 4, !tbaa !74
  %i.ls = add i32 %i.lr, %i.lq
  %i.lt = load i32, ptr %i.kv, align 4, !tbaa !41
  %i.lu = mul i32 %i.ls, %i.lt
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kq, i64 64 ; 3 uses
  %i.lw = load i32, ptr %i.lv, align 8, !tbaa !179
  %.not42.i.i = icmp eq i32 %i.lu, %i.lw
  br i1 %.not42.i.i, label %bb.ao, label %.thread72

bb.ao:                                            ; preds = %bb.an
  call void @avio_w8(ptr noundef %i.hv, i32 noundef %i.lq) #10
  %i.lx = load i32, ptr %i.lv, align 8, !tbaa !179
  %.not51.i.i = icmp eq i32 %i.lx, 0
  br i1 %.not51.i.i, label %.loopexit77, label %.lr.ph.i125.i

.lr.ph.i125.i:                                    ; preds = %bb.ao
  %i.ly = getelementptr inbounds nuw i8, ptr %i.kq, i64 56
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.lr.ph.i125.i
  %indvars.iv.i126.i = phi i64 [ 0, %.lr.ph.i125.i ], [ %indvars.iv.next.i127.i, %bb.ap ] ; 2 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !180
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %indvars.iv.i126.i
  %i.mb = load i64, ptr %i.ma, align 4            ; 2 uses
  %i.mc = shl i64 %i.mb, 32
  %i.md = ashr exact i64 %i.mc, 32
  %i.me = ashr i64 %i.mb, 32
  %i.mf = call i64 @av_rescale(i64 noundef %i.md, i64 noundef 32768, i64 noundef %i.me) #11
  %i.mg = trunc i64 %i.mf to i32
  %i.mh = call i32 @llvm.smax.i32(i32 %i.mg, i32 -32768)
  %.0.i.i.i.i = call range(i32 -32768, 32768) i32 @llvm.smin.i32(i32 %i.mh, i32 32767)
  call void @avio_wb16(ptr noundef %i.hv, i32 noundef %.0.i.i.i.i) #10
  %indvars.iv.next.i127.i = add nuw nsw i64 %indvars.iv.i126.i, 1 ; 2 uses
  %i.mi = load i32, ptr %i.lv, align 8, !tbaa !179
  %i.mj = zext i32 %i.mi to i64
  %i.mk = icmp samesign ult i64 %indvars.iv.next.i127.i, %i.mj
  br i1 %i.mk, label %bb.ap, label %.loopexit77, !llvm.loop !163

.critedge.i:                                      ; preds = %bb.w, %bb.o
  %.str.23.sink.i = phi ptr [ @.str.22, %bb.o ], [ @.str.23, %bb.w ]
  %i.ml = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !55
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %2, i32 noundef 16, ptr noundef nonnull %.str.23.sink.i, i32 noundef %i.mm) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  br label %.thread72

.thread72:                                        ; preds = %bb.an, %bb.l, %bb.aj, %.thread.i, %.critedge.i
  %.595.i.ph = phi i32 [ -22, %.critedge.i ], [ -22, %.thread.i ], [ -22, %bb.aj ], [ %i.df, %bb.l ], [ -22, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  br label %.loopexit76

.loopexit77:                                      ; preds = %bb.ap, %bb.am, %.lr.ph50.i.i, %bb.ao, %.preheader.i.i, %.preheader43.i.i, %scalable_channel_layout_config.exit.i
  store i8 8, ptr %i.g, align 16, !tbaa !20
  %i.mn = load ptr, ptr %i.h, align 8, !tbaa !121
  %i.mo = call i32 @avio_get_dyn_buf(ptr noundef %i.mn, ptr noundef nonnull %i.i) #10 ; 2 uses
  call void @avio_write(ptr noundef %1, ptr noundef nonnull %i.g, i32 noundef 1) #10
  call void @ffio_write_leb(ptr noundef %1, i32 noundef %i.mo) #10
  %i.mp = load ptr, ptr %i.i, align 8, !tbaa !119
  call void @avio_write(ptr noundef %1, ptr noundef %i.mp, i32 noundef %i.mo) #10
  call void @ffio_free_dyn_buf(ptr noundef nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %i.mq = load i32, ptr %i.o, align 8, !tbaa !47
  %i.mr = sext i32 %i.mq to i64
  %.not50 = icmp slt i64 %indvars.iv.next136, %i.mr
  br i1 %.not50, label %bb.l, label %.preheader, !llvm.loop !164

bb.aq:                                            ; preds = %.lr.ph109, %.loopexit
  %indvars.iv138 = phi i64 [ 0, %.lr.ph109 ], [ %indvars.iv.next139, %.loopexit ] ; 2 uses
  %i.ms = load ptr, ptr %i.cr, align 8, !tbaa !95
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %indvars.iv138
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !97 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !102 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store ptr null, ptr %i.c, align 8, !tbaa !119
  %i.mw = call i32 @avio_open_dyn_buf(ptr noundef nonnull %i.b) #10 ; 2 uses
  %i.mx = icmp slt i32 %i.mw, 0
  br i1 %i.mx, label %iamf_write_mixing_presentation.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.my = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !101
  call void @ffio_write_leb(ptr noundef %i.my, i32 noundef %i.na) #10
  %i.nb = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mv, i64 24 ; 6 uses
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !181
  %i.ne = call i32 @av_dict_count(ptr noundef %i.nd) #10
  call void @ffio_write_leb(ptr noundef %i.nb, i32 noundef %i.ne) #10
  %i.nf = load ptr, ptr %i.nc, align 8, !tbaa !181
  %i.ng = call ptr @av_dict_iterate(ptr noundef %i.nf, ptr noundef null) #10 ; 2 uses
  %.not299.i = icmp eq ptr %i.ng, null
  br i1 %.not299.i, label %.preheader289.i, label %.lr.ph.i53

.preheader289.i:                                  ; preds = %.lr.ph.i53, %bb.ar
  %i.nh = load ptr, ptr %i.nc, align 8, !tbaa !181
  %i.ni = call ptr @av_dict_iterate(ptr noundef %i.nh, ptr noundef null) #10 ; 2 uses
  %.not144300.i = icmp eq ptr %i.ni, null
  br i1 %.not144300.i, label %._crit_edge.i55, label %.lr.ph301.i.a

.lr.ph.i53:                                       ; preds = %bb.ar, %.lr.ph.i53
  %i.nj = phi ptr [ %i.no, %.lr.ph.i53 ], [ %i.ng, %bb.ar ] ; 2 uses
  %i.nk = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.nl = load ptr, ptr %i.nj, align 8, !tbaa !183
  %i.nm = call i32 @avio_put_str(ptr noundef %i.nk, ptr noundef %i.nl) #10 ; 0 uses
  %i.nn = load ptr, ptr %i.nc, align 8, !tbaa !181
  %i.no = call ptr @av_dict_iterate(ptr noundef %i.nn, ptr noundef nonnull %i.nj) #10 ; 2 uses
  %.not.i54 = icmp eq ptr %i.no, null
  br i1 %.not.i54, label %.preheader289.i, label %.lr.ph.i53, !llvm.loop !165

.lr.ph301.i.a:                                    ; preds = %.preheader289.i, %.lr.ph301.i.a
  %i.np = phi ptr [ %i.nv, %.lr.ph301.i.a ], [ %i.ni, %.preheader289.i ] ; 2 uses
  %i.nq = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.nr = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !184
  %i.nt = call i32 @avio_put_str(ptr noundef %i.nq, ptr noundef %i.ns) #10 ; 0 uses
end_hunk_1
