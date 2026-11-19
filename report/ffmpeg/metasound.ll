Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/metasound?download=true
inline.NumInlined: 26
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@dec_bark_env:bb.a
  %i.s = load ptr, ptr %0, align 8, !tbaa !41
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 356
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42
  %i.v = icmp eq i32 %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !98   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !99   ; 3 uses
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  %i.aa = fpext nsz float %i.k to double
  %i.ab = fsub nsz double 1.000000e+00, %i.aa
  %wide.trip.count101 = zext i8 %i.n to i64       ; 3 uses
  br i1 %i.v, label %.preheader.lr.ph.split.us, label %.preheader

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  br i1 %.not, label %.preheader.us.us, label %.preheader.us

.preheader.us.us:                                 ; preds = %.preheader.lr.ph.split.us, %.split.us.us.split.us.us
  %.05268.us.us = phi i64 [ %indvars.iv.next94, %.split.us.us.split.us.us ], [ 0, %.preheader.lr.ph.split.us ]
  %.05567.us.us = phi i32 [ %i.bg, %.split.us.us.split.us.us ], [ 0, %.preheader.lr.ph.split.us ] ; 2 uses
  %.05666.us.us = phi ptr [ %i.bf, %.split.us.us.split.us.us ], [ %4, %.preheader.lr.ph.split.us ]
  br label %bb.b

bb.b:                                             ; preds = %twinvq_memset_float.exit.us.us.us.us, %.preheader.us.us
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %twinvq_memset_float.exit.us.us.us.us ], [ 0, %.preheader.us.us ] ; 2 uses
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %twinvq_memset_float.exit.us.us.us.us ], [ %.05268.us.us, %.preheader.us.us ] ; 3 uses
  %.15761.us.us.us.us = phi ptr [ %i.bf, %twinvq_memset_float.exit.us.us.us.us ], [ %.05666.us.us, %.preheader.us.us ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv95
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !28
  %i.ae = zext i8 %i.ad to i32
  %i.af = mul nuw nsw i32 %i.ae, %i.r
  %i.ag = add nuw nsw i32 %i.af, %.05567.us.us
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !100
  %i.ak = sitofp i16 %i.aj to float
  %i.al = fmul nnan nsz float %i.ak, f0x3A000000  ; 2 uses
  %i.am = fadd nsz float %i.al, 1.000000e+00      ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv93
  store float %i.al, ptr %i.an, align 4, !tbaa !48
  %i.ao = fpext nsz float %i.am to double
  %i.ap = fcmp nsz olt double %i.ao, 1.000000e-01
  %spec.store.select.us.us.us.us = select i1 %i.ap, float 1.000000e-01, float %i.am
  %i.aq = fmul nsz float %5, %spec.store.select.us.us.us.us ; 2 uses
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.z, i64 %indvars.iv93
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !100 ; 5 uses
  %.not3.i.us.us.us.us = icmp eq i16 %i.as, 0
  br i1 %.not3.i.us.us.us.us, label %twinvq_memset_float.exit.us.us.us.us, label %.lr.ph.i.us.us.us.us.preheader

.lr.ph.i.us.us.us.us.preheader:                   ; preds = %bb.b
  %i.at = zext i16 %i.as to i32                   ; 2 uses
  %i.au = zext i16 %i.as to i64                   ; 2 uses
  %min.iters.check129 = icmp ult i16 %i.as, 8
  br i1 %min.iters.check129, label %.lr.ph.i.us.us.us.us.preheader142, label %vector.ph130

vector.ph130:                                     ; preds = %.lr.ph.i.us.us.us.us.preheader
  %n.vec131 = and i64 %i.au, 65528                ; 4 uses
  %i.av = trunc nuw nsw i64 %n.vec131 to i32
  %i.aw = sub nsw i32 %i.at, %i.av
  %i.ax = shl nuw nsw i64 %n.vec131, 2
  %i.ay = getelementptr i8, ptr %.15761.us.us.us.us, i64 %i.ax
  %broadcast.splatinsert132 = insertelement <4 x float> poison, float %i.aq, i64 0
  %broadcast.splat133 = shufflevector <4 x float> %broadcast.splatinsert132, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph130
  %index135 = phi i64 [ 0, %vector.ph130 ], [ %index.next137, %vector.body134 ] ; 2 uses
  %i.az = shl i64 %index135, 2
  %next.gep136 = getelementptr i8, ptr %.15761.us.us.us.us, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep136, i64 16
  store <4 x float> %broadcast.splat133, ptr %next.gep136, align 4, !tbaa !48
  store <4 x float> %broadcast.splat133, ptr %i.ba, align 4, !tbaa !48
  %index.next137 = add nuw i64 %index135, 8       ; 2 uses
  %i.bb = icmp eq i64 %index.next137, %n.vec131
  br i1 %i.bb, label %middle.block138, label %vector.body134, !llvm.loop !89

middle.block138:                                  ; preds = %vector.body134
  %cmp.n139 = icmp eq i64 %n.vec131, %i.au
  br i1 %cmp.n139, label %twinvq_memset_float.exit.us.us.us.us, label %.lr.ph.i.us.us.us.us.preheader142

.lr.ph.i.us.us.us.us.preheader142:                ; preds = %.lr.ph.i.us.us.us.us.preheader, %middle.block138
  %.05.i.us.us.us.us.ph = phi i32 [ %i.at, %.lr.ph.i.us.us.us.us.preheader ], [ %i.aw, %middle.block138 ]
  %.024.i.us.us.us.us.ph = phi ptr [ %.15761.us.us.us.us, %.lr.ph.i.us.us.us.us.preheader ], [ %i.ay, %middle.block138 ]
  br label %.lr.ph.i.us.us.us.us

.lr.ph.i.us.us.us.us:                             ; preds = %.lr.ph.i.us.us.us.us.preheader142, %.lr.ph.i.us.us.us.us
  %.05.i.us.us.us.us = phi i32 [ %i.bc, %.lr.ph.i.us.us.us.us ], [ %.05.i.us.us.us.us.ph, %.lr.ph.i.us.us.us.us.preheader142 ]
  %.024.i.us.us.us.us = phi ptr [ %i.bd, %.lr.ph.i.us.us.us.us ], [ %.024.i.us.us.us.us.ph, %.lr.ph.i.us.us.us.us.preheader142 ] ; 2 uses
  %i.bc = add nsw i32 %.05.i.us.us.us.us, -1      ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.024.i.us.us.us.us, i64 4
  store float %i.aq, ptr %.024.i.us.us.us.us, align 4, !tbaa !48
  %.not.i.us.us.us.us = icmp eq i32 %i.bc, 0
  br i1 %.not.i.us.us.us.us, label %twinvq_memset_float.exit.us.us.us.us, label %.lr.ph.i.us.us.us.us, !llvm.loop !90

twinvq_memset_float.exit.us.us.us.us:             ; preds = %.lr.ph.i.us.us.us.us, %middle.block138, %bb.b
  %i.be = zext i16 %i.as to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.15761.us.us.us.us, i64 %i.be ; 2 uses
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %indvars.iv.next94 = add nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count101
  br i1 %exitcond102.not, label %.split.us.us.split.us.us, label %bb.b, !llvm.loop !91

.split.us.us.split.us.us:                         ; preds = %twinvq_memset_float.exit.us.us.us.us
  %i.bg = add nuw nsw i32 %.05567.us.us, 1        ; 2 uses
  %i.bh = icmp samesign ult i32 %i.bg, %i.r
  br i1 %i.bh, label %.preheader.us.us, label %._crit_edge, !llvm.loop !92

.preheader.us:                                    ; preds = %.preheader.lr.ph.split.us, %.split.us.us.split
  %.05268.us = phi i64 [ %indvars.iv.next84, %.split.us.us.split ], [ 0, %.preheader.lr.ph.split.us ]
  %.05567.us = phi i32 [ %i.co, %.split.us.us.split ], [ 0, %.preheader.lr.ph.split.us ] ; 2 uses
  %.05666.us = phi ptr [ %i.cn, %.split.us.us.split ], [ %4, %.preheader.lr.ph.split.us ]
  br label %bb.c

bb.c:                                             ; preds = %twinvq_memset_float.exit.us.us, %.preheader.us
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %twinvq_memset_float.exit.us.us ], [ 0, %.preheader.us ] ; 2 uses
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %twinvq_memset_float.exit.us.us ], [ %.05268.us, %.preheader.us ] ; 3 uses
  %.15761.us.us = phi ptr [ %i.cn, %twinvq_memset_float.exit.us.us ], [ %.05666.us, %.preheader.us ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv85
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !28
  %i.bk = zext i8 %i.bj to i32
  %i.bl = mul nuw nsw i32 %i.bk, %i.r
  %i.bm = add nuw nsw i32 %i.bl, %.05567.us
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !100
  %i.bq = sitofp i16 %i.bp to float
  %i.br = fmul nnan nsz float %i.bq, f0x3A000000  ; 2 uses
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv83 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !48
  %i.bu = tail call nsz float @llvm.fmuladd.f32(float %i.bt, float 5.000000e-01, float %i.br)
  %i.bv = fadd nsz float %i.bu, 1.000000e+00      ; 2 uses
  store float %i.br, ptr %i.bs, align 4, !tbaa !48
  %i.bw = fpext nsz float %i.bv to double
  %i.bx = fcmp nsz olt double %i.bw, 1.000000e-01
  %spec.store.select.us.us = select i1 %i.bx, float 1.000000e-01, float %i.bv
  %i.by = fmul nsz float %5, %spec.store.select.us.us ; 2 uses
  %i.bz = getelementptr inbounds [2 x i8], ptr %i.z, i64 %indvars.iv83
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !100 ; 5 uses
  %.not3.i.us.us = icmp eq i16 %i.ca, 0
  br i1 %.not3.i.us.us, label %twinvq_memset_float.exit.us.us, label %.lr.ph.i.us.us.preheader

.lr.ph.i.us.us.preheader:                         ; preds = %bb.c
  %i.cb = zext i16 %i.ca to i32                   ; 2 uses
  %i.cc = zext i16 %i.ca to i64                   ; 2 uses
  %min.iters.check115 = icmp ult i16 %i.ca, 8
  br i1 %min.iters.check115, label %.lr.ph.i.us.us.preheader143, label %vector.ph116

vector.ph116:                                     ; preds = %.lr.ph.i.us.us.preheader
  %n.vec117 = and i64 %i.cc, 65528                ; 4 uses
  %i.cd = trunc nuw nsw i64 %n.vec117 to i32
  %i.ce = sub nsw i32 %i.cb, %i.cd
  %i.cf = shl nuw nsw i64 %n.vec117, 2
  %i.cg = getelementptr i8, ptr %.15761.us.us, i64 %i.cf
  %broadcast.splatinsert118 = insertelement <4 x float> poison, float %i.by, i64 0
  %broadcast.splat119 = shufflevector <4 x float> %broadcast.splatinsert118, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph116
  %index121 = phi i64 [ 0, %vector.ph116 ], [ %index.next123, %vector.body120 ] ; 2 uses
  %i.ch = shl i64 %index121, 2
  %next.gep122 = getelementptr i8, ptr %.15761.us.us, i64 %i.ch ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep122, i64 16
  store <4 x float> %broadcast.splat119, ptr %next.gep122, align 4, !tbaa !48
  store <4 x float> %broadcast.splat119, ptr %i.ci, align 4, !tbaa !48
  %index.next123 = add nuw i64 %index121, 8       ; 2 uses
  %i.cj = icmp eq i64 %index.next123, %n.vec117
  br i1 %i.cj, label %middle.block124, label %vector.body120, !llvm.loop !93

middle.block124:                                  ; preds = %vector.body120
  %cmp.n125 = icmp eq i64 %n.vec117, %i.cc
  br i1 %cmp.n125, label %twinvq_memset_float.exit.us.us, label %.lr.ph.i.us.us.preheader143

.lr.ph.i.us.us.preheader143:                      ; preds = %.lr.ph.i.us.us.preheader, %middle.block124
  %.05.i.us.us.ph = phi i32 [ %i.cb, %.lr.ph.i.us.us.preheader ], [ %i.ce, %middle.block124 ]
  %.024.i.us.us.ph = phi ptr [ %.15761.us.us, %.lr.ph.i.us.us.preheader ], [ %i.cg, %middle.block124 ]
  br label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.lr.ph.i.us.us.preheader143, %.lr.ph.i.us.us
  %.05.i.us.us = phi i32 [ %i.ck, %.lr.ph.i.us.us ], [ %.05.i.us.us.ph, %.lr.ph.i.us.us.preheader143 ]
  %.024.i.us.us = phi ptr [ %i.cl, %.lr.ph.i.us.us ], [ %.024.i.us.us.ph, %.lr.ph.i.us.us.preheader143 ] ; 2 uses
  %i.ck = add nsw i32 %.05.i.us.us, -1            ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.024.i.us.us, i64 4
  store float %i.by, ptr %.024.i.us.us, align 4, !tbaa !48
  %.not.i.us.us = icmp eq i32 %i.ck, 0
  br i1 %.not.i.us.us, label %twinvq_memset_float.exit.us.us, label %.lr.ph.i.us.us, !llvm.loop !94

twinvq_memset_float.exit.us.us:                   ; preds = %.lr.ph.i.us.us, %middle.block124, %bb.c
  %i.cm = zext i16 %i.ca to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.15761.us.us, i64 %i.cm ; 2 uses
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %indvars.iv.next84 = add nsw i64 %indvars.iv83, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next86, %wide.trip.count101
  br i1 %exitcond92.not, label %.split.us.us.split, label %bb.c, !llvm.loop !91

.split.us.us.split:                               ; preds = %twinvq_memset_float.exit.us.us
  %i.co = add nuw nsw i32 %.05567.us, 1           ; 2 uses
  %i.cp = icmp samesign ult i32 %i.co, %i.r
  br i1 %i.cp, label %.preheader.us, label %._crit_edge, !llvm.loop !92

.preheader:                                       ; preds = %.preheader.lr.ph, %.split
  %.05268 = phi i64 [ %indvars.iv.next, %.split ], [ 0, %.preheader.lr.ph ]
  %.05567 = phi i32 [ %i.eb, %.split ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.05666 = phi ptr [ %i.ea, %.split ], [ %4, %.preheader.lr.ph ]
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %twinvq_memset_float.exit
  %indvars.iv78 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next79, %twinvq_memset_float.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %.05268, %.preheader ], [ %indvars.iv.next, %twinvq_memset_float.exit ] ; 4 uses
  %.15761 = phi ptr [ %.05666, %.preheader ], [ %i.ea, %twinvq_memset_float.exit ] ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv78
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !28
  %i.cs = zext i8 %i.cr to i32
  %i.ct = mul nuw nsw i32 %i.cs, %i.r
  %i.cu = add nuw nsw i32 %i.ct, %.05567
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.cv
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !100
  %i.cy = sitofp i16 %i.cx to float
  %i.cz = fmul nnan nsz float %i.cy, f0x3A000000  ; 2 uses
  %i.da = fpext nsz float %i.cz to double         ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.db = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.dc = load float, ptr %i.db, align 4, !tbaa !48
  %i.dd = fmul nsz float %i.k, %i.dc
  %i.de = fpext nsz float %i.dd to double
  %i.df = tail call nsz double @llvm.fmuladd.f64(double %i.ab, double %i.da, double %i.de)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.in = phi double [ %i.df, %bb.e ], [ %i.da, %bb.d ]
  %i.dg = fadd nsz double %.in, 1.000000e+00
  %i.dh = fptrunc nsz double %i.dg to float       ; 2 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv
  store float %i.cz, ptr %i.di, align 4, !tbaa !48
  %i.dj = fpext nsz float %i.dh to double
  %i.dk = fcmp nsz olt double %i.dj, 1.000000e-01
  %spec.store.select = select i1 %i.dk, float 1.000000e-01, float %i.dh
  %i.dl = fmul nsz float %5, %spec.store.select   ; 2 uses
  %i.dm = getelementptr inbounds [2 x i8], ptr %i.z, i64 %indvars.iv
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !100 ; 5 uses
  %.not3.i = icmp eq i16 %i.dn, 0
  br i1 %.not3.i, label %twinvq_memset_float.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.f
  %i.do = zext i16 %i.dn to i32                   ; 2 uses
  %i.dp = zext i16 %i.dn to i64                   ; 2 uses
  %min.iters.check = icmp ult i16 %i.dn, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader146, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.dp, 65528                   ; 4 uses
  %i.dq = trunc nuw nsw i64 %n.vec to i32
  %i.dr = sub nsw i32 %i.do, %i.dq
  %i.ds = shl nuw nsw i64 %n.vec, 2
  %i.dt = getelementptr i8, ptr %.15761, i64 %i.ds
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.dl, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.du = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.15761, i64 %i.du ; 2 uses
  %i.dv = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %broadcast.splat, ptr %next.gep, align 4, !tbaa !48
  store <4 x float> %broadcast.splat, ptr %i.dv, align 4, !tbaa !48
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dp
  br i1 %cmp.n, label %twinvq_memset_float.exit, label %.lr.ph.i.preheader146

.lr.ph.i.preheader146:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.05.i.ph = phi i32 [ %i.do, %.lr.ph.i.preheader ], [ %i.dr, %middle.block ]
  %.024.i.ph = phi ptr [ %.15761, %.lr.ph.i.preheader ], [ %i.dt, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader146, %.lr.ph.i
  %.05.i = phi i32 [ %i.dx, %.lr.ph.i ], [ %.05.i.ph, %.lr.ph.i.preheader146 ]
  %.024.i = phi ptr [ %i.dy, %.lr.ph.i ], [ %.024.i.ph, %.lr.ph.i.preheader146 ] ; 2 uses
  %i.dx = add nsw i32 %.05.i, -1                  ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.024.i, i64 4
  store float %i.dl, ptr %.024.i, align 4, !tbaa !48
  %.not.i = icmp eq i32 %i.dx, 0
  br i1 %.not.i, label %twinvq_memset_float.exit, label %.lr.ph.i, !llvm.loop !96

twinvq_memset_float.exit:                         ; preds = %.lr.ph.i, %middle.block, %bb.f
  %i.dz = zext i16 %i.dn to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.15761, i64 %i.dz ; 2 uses
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count101
  br i1 %exitcond.not, label %.split, label %bb.d, !llvm.loop !91

.split:                                           ; preds = %twinvq_memset_float.exit
  %i.eb = add nuw nsw i32 %.05567, 1              ; 2 uses
  %i.ec = icmp samesign ult i32 %i.eb, %i.r
  br i1 %i.ec, label %.preheader, label %._crit_edge, !llvm.loop !92

._crit_edge:                                      ; preds = %.split, %.split.us.us.split, %.split.us.us.split.us.us, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @decode_ppc(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address) %3, ptr nofree noundef captures(none) %4) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !41     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 356
  %i.e = load i32, ptr %i.d, align 4, !tbaa !42   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  %i.g = load i32, ptr %i.f, align 8, !tbaa !29   ; 2 uses
  %i.h = sdiv i32 %i.g, 1000                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !30
  %i.k = mul nsw i32 %i.e, 1000
  %i.l = sext i32 %i.k to i64
  %i.m = sdiv i64 %i.j, %i.l
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.p = load i16, ptr %i.o, align 8, !tbaa !39
  %i.q = uitofp i16 %i.p to float                 ; 2 uses
  %i.r = sitofp nsz i32 %i.h to float
  %i.s = fdiv nsz float %i.q, %i.r
  %i.t = icmp eq i32 %i.e, 1                      ; 2 uses
  %i.u = fpext nsz float %i.s to double
  %i.v = fmul nsz double %i.u, 2.000000e-01       ; 2 uses
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = tail call nsz double @llvm.log2.f64(double %i.v)
  %i.x = fptrunc nsz double %i.w to float         ; 2 uses
  %i.y = fpext nsz float %i.x to double
  %i.z = fadd nsz double %i.y, f0x4004AE00D1CFDEB4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.aa = insertelement <2 x double> poison, double %i.v, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = fmul nsz <2 x double> %i.ab, <double 1.000000e+00, double 4.000000e+02>
  %i.ad = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> <double 4.000000e+02, double 6.000000e+00>, <2 x double> splat (double 5.000000e-01))
  %i.ae = fptosi <2 x double> %i.ad to <2 x i32>
  %i.af = sitofp nsz <2 x i32> %i.ae to <2 x double>
  %i.ag = fdiv nsz <2 x double> %i.af, splat (double 4.000000e+02) ; 2 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 0
  %i.ai = fptrunc nsz double %i.ah to float
  %i.aj = extractelement <2 x double> %i.ag, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.046 = phi nsz float [ %i.x, %bb.b ], [ %i.ai, %bb.c ] ; 2 uses
  %.045.in = phi double [ %i.z, %bb.b ], [ %i.aj, %bb.c ]
  %.045 = fptrunc double %.045.in to float
  %i.ak = fsub nsz float %.045, %.046
  %i.al = sitofp nsz i32 %1 to float
  %i.am = fmul nsz float %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !46
  %i.ap = zext nneg i8 %i.ao to i32
  %notmask = shl nsw i32 -1, %i.ap
  %i.aq = xor i32 %notmask, -1
  %i.ar = uitofp nsz nneg i32 %i.aq to float
  %i.as = fdiv nsz float %i.am, %i.ar
  %i.at = fadd nsz float %.046, %i.as             ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %exp2 = tail call nsz float @llvm.exp2.f32(float %i.at)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.au = fmul nsz float %i.at, 4.000000e+02
  %i.av = fpext nsz float %i.au to double
  %i.aw = fadd nsz double %i.av, 5.000000e-01
  %i.ax = fptosi double %i.aw to i32
  %i.ay = sitofp nsz i32 %i.ax to double
  %i.az = fdiv nsz double %i.ay, 4.000000e+02
  %i.ba = fptrunc nsz double %i.az to float
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.044 = phi nsz float [ %exp2, %bb.e ], [ %i.ba, %bb.f ] ; 4 uses
  switch i32 %i.h, label %bb.k [
    i32 8, label %bb.l
    i32 11, label %bb.h
    i32 16, label %bb.h
    i32 22, label %bb.i
    i32 44, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.bb = icmp eq i32 %i.n, 32
  %i.bc = select i1 %i.bb, float 2.000000e+00, float 4.000000e+00
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.k, %bb.j, %bb.i, %bb.h
  %.0 = phi nsz float [ 4.000000e+00, %bb.k ], [ 8.000000e+00, %bb.j ], [ 3.000000e+00, %bb.h ], [ 2.000000e+00, %bb.g ], [ %i.bc, %bb.i ]
  %i.bd = fdiv nsz float %i.q, %.044
  %i.be = fdiv nsz float %.0, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 226
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !113 ; 3 uses
  %i.bh = uitofp i8 %i.bg to float
  %i.bi = fmul nsz float %i.be, %i.bh
  %i.bj = fptosi float %i.bi to i32               ; 2 uses
  %.off = add i32 %i.g, -22000
  %i.bk = icmp ult i32 %.off, 1000
  %i.bl = icmp eq i32 %i.n, 32
  %or.cond = select i1 %i.bk, i1 %i.bl, i1 false
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bm = fpext nsz float %.044 to double
  %i.bn = fdiv nsz double 2.000000e+00, %i.bm
  %i.bo = fadd nsz double %i.bn, 1.000000e+00
  %i.bp = sitofp nsz i32 %i.bj to double
  %i.bq = tail call nsz double @llvm.fmuladd.f64(double %i.bo, double %i.bp, double 5.000000e-01)
  %i.br = fptosi double %i.bq to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.047 = phi i32 [ %i.br, %bb.m ], [ %i.bj, %bb.l ] ; 7 uses
  %i.bs = icmp eq i32 %i.e, 2
  %i.bt = select i1 %i.bs, float 2.500000e+04, float 2.000000e+04 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 227
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !47
  %i.bw = zext nneg i8 %i.bv to i32
  %notmask48 = shl nsw i32 -1, %i.bw
  %i.bx = xor i32 %notmask48, -1
  %i.by = uitofp nsz nneg i32 %i.bx to float
  %i.bz = fdiv nsz float %i.bt, %i.by             ; 2 uses
  %i.ca = sitofp nsz i32 %2 to float
  %i.cb = fmul nnan nsz float %i.bz, 5.000000e-01
  %i.cc = tail call nsz float @llvm.fmuladd.f32(float %i.bz, float %i.ca, float %i.cb)
  %i.cd = fdiv nsz float %i.cc, %i.bt             ; 2 uses
  %i.ce = fcmp nsz ogt float %i.cd, -1.000000e+00
  %i.cf = select nsz i1 %i.ce, float %i.cd, float -1.000000e+00 ; 2 uses
  %i.cg = fcmp nsz ogt float %i.cf, 1.000000e+00
  %..i.i = select nsz i1 %i.cg, float 1.000000e+00, float %i.cf ; 2 uses
  %i.ch = fcmp nsz ogt float %..i.i, 0.000000e+00
  %i.ci = fneg nsz float %i.bt
  %i.cj = select nsz i1 %i.ch, float %i.bt, float %i.ci
  %i.ck = fpext nnan ninf nsz float %i.cj to double
  %i.cl = tail call nsz float @llvm.fabs.f32(float %..i.i)
  %i.cm = fpext float %i.cl to double
  %i.cn = fmul nsz double %i.cm, f0x401536958FD351F0
  %i.co = tail call nsz double @llvm.exp.f64(double %i.cn)
  %i.cp = fadd nsz double %i.co, -1.000000e+00
  %i.cq = fmul nsz double %i.cp, %i.ck
  %i.cr = fdiv nsz double %i.cq, 2.000000e+02
  %i.cs = fptrunc nsz double %i.cr to float
  %i.ct = fmul nsz float %i.cs, f0x39000000       ; 9 uses
  %i.cu = zext i8 %i.bg to i32
  %i.cv = zext i8 %i.bg to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cv ; 2 uses
  %i.cx = icmp sgt i32 %.047, 1
  br i1 %i.cx, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.n
  %i.cy = lshr i32 %.047, 1
  %wide.trip.count.i = zext nneg i32 %i.cy to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %.047, 16
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.cz = shl nuw nsw i64 %wide.trip.count.i, 2   ; 2 uses
  %i.da = getelementptr i8, ptr %4, i64 %i.cz
  %i.db = getelementptr i8, ptr %3, i64 %i.cz
  %bound0 = icmp ult ptr %4, %i.db
  %bound1 = icmp ult ptr %3, %i.da
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 1073741816 ; 4 uses
  %i.dc = shl nuw nsw i64 %n.vec, 2
  %i.dd = getelementptr i8, ptr %3, i64 %i.dc     ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ct, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_0
