Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_afftdn?download=true
inline.NumInlined: 43
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 54
begin_hunk_0_@process_get_band_noise:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @solve(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #8 {
._crit_edge.3:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !83
  %i.c = load double, ptr %1, align 8, !tbaa !83  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !83
  %i.f = fneg nsz double %i.b
  %i.g = tail call nsz double @llvm.fmuladd.f64(double %i.f, double %i.c, double %i.e)
  store double %i.g, ptr %i.d, align 8, !tbaa !83
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !83
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !83
  %i.l = fneg nsz double %i.i
  %i.m = tail call nsz double @llvm.fmuladd.f64(double %i.l, double %i.c, double %i.k)
  store double %i.m, ptr %i.j, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load double, ptr %i.n, align 8, !tbaa !83
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !83
  %i.r = fneg nsz double %i.o
  %i.s = tail call nsz double @llvm.fmuladd.f64(double %i.r, double %i.c, double %i.q)
  store double %i.s, ptr %i.p, align 8, !tbaa !83
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load double, ptr %i.t, align 8, !tbaa !83
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !83
  %i.x = fneg nsz double %i.u
  %i.y = tail call nsz double @llvm.fmuladd.f64(double %i.x, double %i.c, double %i.w)
  store double %i.y, ptr %i.v, align 8, !tbaa !83
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !83
  %i.ac = load double, ptr %i.z, align 8, !tbaa !83 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !83
  %i.af = fneg nsz double %i.ab
  %i.ag = tail call nsz double @llvm.fmuladd.f64(double %i.af, double %i.ac, double %i.ae)
  store double %i.ag, ptr %i.ad, align 8, !tbaa !83
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !83
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !83
  %i.al = fneg nsz double %i.ai
  %i.am = tail call nsz double @llvm.fmuladd.f64(double %i.al, double %i.ac, double %i.ak)
  store double %i.am, ptr %i.aj, align 8, !tbaa !83
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ao = load double, ptr %i.an, align 8, !tbaa !83
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !83
  %i.ar = fneg nsz double %i.ao
  %i.as = tail call nsz double @llvm.fmuladd.f64(double %i.ar, double %i.ac, double %i.aq)
  store double %i.as, ptr %i.ap, align 8, !tbaa !83
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.av = load double, ptr %i.au, align 8, !tbaa !83
  %i.aw = load double, ptr %i.at, align 8, !tbaa !83 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !83
  %i.az = fneg nsz double %i.av
  %i.ba = tail call nsz double @llvm.fmuladd.f64(double %i.az, double %i.aw, double %i.ay)
  store double %i.ba, ptr %i.ax, align 8, !tbaa !83
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !83
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !83
  %i.bf = fneg nsz double %i.bc
  %i.bg = tail call nsz double @llvm.fmuladd.f64(double %i.bf, double %i.aw, double %i.be) ; 2 uses
  store double %i.bg, ptr %i.bd, align 8, !tbaa !83
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !83
  %i.bk = load double, ptr %i.bh, align 8, !tbaa !83 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bm = fneg nsz double %i.bj
  %i.bn = tail call nsz double @llvm.fmuladd.f64(double %i.bm, double %i.bk, double %i.bg) ; 2 uses
  store double %i.bn, ptr %i.bl, align 8, !tbaa !83
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !83
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.br = fdiv nsz double %i.bn, %i.bp            ; 5 uses
  store double %i.br, ptr %i.bq, align 8, !tbaa !83
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !83
  %i.bv = fneg nsz double %i.bu
  %i.bw = tail call nsz double @llvm.fmuladd.f64(double %i.bv, double %i.br, double %i.bk)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.by = load double, ptr %i.bx, align 8, !tbaa !83
  %i.bz = fdiv nsz double %i.bw, %i.by            ; 4 uses
  store double %i.bz, ptr %i.bs, align 8, !tbaa !83
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !83
  %i.cd = fneg nsz double %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !83
  %i.cg = fneg nsz double %i.cf
  %i.ch = load double, ptr %i.ca, align 8, !tbaa !83
  %i.ci = tail call nsz double @llvm.fmuladd.f64(double %i.cg, double %i.bz, double %i.ch)
  %i.cj = tail call nsz double @llvm.fmuladd.f64(double %i.cd, double %i.br, double %i.ci)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !83
  %i.cm = fdiv nsz double %i.cj, %i.cl            ; 3 uses
  store double %i.cm, ptr %i.ca, align 8, !tbaa !83
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cp = load double, ptr %i.co, align 8, !tbaa !83
  %i.cq = fneg nsz double %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !83
  %i.ct = fneg nsz double %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !83
  %i.cw = fneg nsz double %i.cv
  %i.cx = load double, ptr %i.cn, align 8, !tbaa !83
  %i.cy = tail call nsz double @llvm.fmuladd.f64(double %i.cw, double %i.cm, double %i.cx)
  %i.cz = tail call nsz double @llvm.fmuladd.f64(double %i.ct, double %i.bz, double %i.cy)
  %i.da = tail call nsz double @llvm.fmuladd.f64(double %i.cq, double %i.br, double %i.cz)
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dc = load double, ptr %i.db, align 8, !tbaa !83
  %i.dd = fdiv nsz double %i.da, %i.dc            ; 2 uses
  store double %i.dd, ptr %i.cn, align 8, !tbaa !83
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.df = load double, ptr %i.de, align 8, !tbaa !83
  %i.dg = fneg nsz double %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.di = load double, ptr %i.dh, align 8, !tbaa !83
  %i.dj = fneg nsz double %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !83
  %i.dm = fneg nsz double %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.do = load double, ptr %i.dn, align 8, !tbaa !83
  %i.dp = fneg nsz double %i.do
  %i.dq = load double, ptr %1, align 8, !tbaa !83
  %i.dr = tail call nsz double @llvm.fmuladd.f64(double %i.dp, double %i.dd, double %i.dq)
  %i.ds = tail call nsz double @llvm.fmuladd.f64(double %i.dm, double %i.cm, double %i.dr)
  %i.dt = tail call nsz double @llvm.fmuladd.f64(double %i.dj, double %i.bz, double %i.ds)
  %i.du = tail call nsz double @llvm.fmuladd.f64(double %i.dg, double %i.br, double %i.dt)
  %i.dv = load double, ptr %0, align 8, !tbaa !83
  %i.dw = fdiv nsz double %i.du, %i.dv
  store double %i.dw, ptr %1, align 8, !tbaa !83
  ret void
}

declare ptr @av_default_item_name(ptr noundef) #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare void @av_tx_uninit(ptr noundef) local_unnamed_addr #3

declare i32 @ff_filter_process_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

declare i32 @ff_outlink_get_status(ptr noundef) local_unnamed_addr #3

declare void @ff_inlink_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_inlink_consume_samples(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_inlink_queued_samples(ptr noundef) local_unnamed_addr #3

declare void @ff_filter_set_ready(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_inlink_acknowledge_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #3

declare void @ff_inlink_request_frame(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @filter_channel(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.d = load i32, ptr %i.c, align 4, !tbaa !207
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
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.q = load i32, ptr %i.p, align 8, !tbaa !58   ; 13 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !82   ; 9 uses
  %i.t = icmp slt i32 %i.j, %i.o
  br i1 %i.t, label %.lr.ph118, label %._crit_edge

.lr.ph118:                                        ; preds = %bb.a
  %i.u = ptrtoaddr ptr %i.s to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.y = icmp sgt i32 %i.q, 0                     ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.ac = getelementptr i8, ptr %0, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 124 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.an = sext i32 %i.q to i64                    ; 2 uses
  %i.ao = shl nsw i64 %i.an, 3
  %i.ap = xor i32 %i.q, -1
  %i.aq = shl nsw i64 %i.an, 2
  %sext = shl i64 %i.i, 32
  %i.ar = ashr exact i64 %sext, 32
  %.pre = load i32, ptr %i.x, align 8, !tbaa !81
  %wide.trip.count = zext i32 %i.q to i64         ; 18 uses
  %wide.trip.count131 = zext nneg i32 %i.q to i64
  %wide.trip.count140 = zext nneg i32 %i.q to i64
  %wide.trip.count145 = zext nneg i32 %i.q to i64
  %i.as = shl nuw nsw i64 %wide.trip.count, 3     ; 5 uses
  %min.iters.check323 = icmp ult i32 %i.q, 4
  %n.vec325 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n334 = icmp eq i64 %n.vec325, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.at = add nsw i64 %wide.trip.count, -1
  %min.iters.check305 = icmp ult i32 %i.q, 4
  %n.vec307 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n316 = icmp eq i64 %n.vec307, %wide.trip.count
  %xtraiter346 = and i64 %wide.trip.count, 1
  %lcmp.mod347.not = icmp eq i64 %xtraiter346, 0
  %i.au = add nsw i64 %wide.trip.count, -1
  %min.iters.check203 = icmp ult i32 %i.q, 4
  %n.vec205 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n216 = icmp eq i64 %n.vec205, %wide.trip.count
  %xtraiter377 = and i64 %wide.trip.count, 1
  %lcmp.mod378.not = icmp eq i64 %xtraiter377, 0
  %i.av = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp ult i32 %i.q, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter379 = and i64 %wide.trip.count, 1
  %lcmp.mod380.not = icmp eq i64 %xtraiter379, 0
  %i.aw = add nsw i64 %wide.trip.count, -1
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph118, %.loopexit
  %i.ax = phi i32 [ %.pre, %.lr.ph118 ], [ %i.tq, %.loopexit ]
  %indvars.iv147 = phi i64 [ %i.ar, %.lr.ph118 ], [ %indvars.iv.next148, %.loopexit ] ; 3 uses
  %i.ay = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.az = getelementptr inbounds [1072 x i8], ptr %i.ay, i64 %indvars.iv147 ; 23 uses
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !62
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %indvars.iv147
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !67 ; 9 uses
  %i.bd = ptrtoaddr ptr %i.bc to i64              ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 432
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !105 ; 13 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 472 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !80 ; 21 uses
  %i.bi = ptrtoaddr ptr %i.bh to i64              ; 3 uses
  switch i32 %i.ax, label %.loopexit99 [
    i32 8, label %.preheader100
    i32 9, label %.preheader103
  ]

.preheader103:                                    ; preds = %bb.b
  br i1 %i.y, label %.lr.ph.preheader, label %.preheader101

.lr.ph.preheader:                                 ; preds = %.preheader103
  br i1 %min.iters.check323, label %.lr.ph.preheader339, label %vector.memcheck318

vector.memcheck318:                               ; preds = %.lr.ph.preheader
  %i.bj = sub i64 %i.u, %i.bi
  %diff.check319 = icmp ugt i64 %i.bj, -32
  %i.bk = sub i64 %i.bd, %i.bi
  %diff.check320 = icmp ugt i64 %i.bk, -32
  %conflict.rdx321 = or i1 %diff.check319, %diff.check320
  br i1 %conflict.rdx321, label %.lr.ph.preheader339, label %vector.body326

vector.body326:                                   ; preds = %vector.memcheck318, %vector.body326
  %index327 = phi i64 [ %index.next332, %vector.body326 ], [ 0, %vector.memcheck318 ] ; 4 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index327 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load328 = load <2 x double>, ptr %i.bl, align 8, !tbaa !83
  %wide.load329 = load <2 x double>, ptr %i.bm, align 8, !tbaa !83
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %index327 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load330 = load <2 x double>, ptr %i.bn, align 8, !tbaa !83
  %wide.load331 = load <2 x double>, ptr %i.bo, align 8, !tbaa !83
  %i.bp = fmul nsz <2 x double> %wide.load328, %wide.load330
  %i.bq = fmul nsz <2 x double> %wide.load329, %wide.load331
  %i.br = fmul nsz <2 x double> %i.bp, splat (double f0x4160000000000000)
  %i.bs = fmul nsz <2 x double> %i.bq, splat (double f0x4160000000000000)
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index327 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store <2 x double> %i.br, ptr %i.bt, align 8, !tbaa !83
  store <2 x double> %i.bs, ptr %i.bu, align 8, !tbaa !83
  %index.next332 = add nuw i64 %index327, 4       ; 2 uses
  %i.bv = icmp eq i64 %index.next332, %n.vec325
  br i1 %i.bv, label %middle.block333, label %vector.body326, !llvm.loop !208

middle.block333:                                  ; preds = %vector.body326
  br i1 %cmp.n334, label %.preheader101, label %.lr.ph.preheader339

.lr.ph.preheader339:                              ; preds = %vector.memcheck318, %.lr.ph.preheader, %middle.block333
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck318 ], [ 0, %.lr.ph.preheader ], [ %n.vec325, %middle.block333 ] ; 6 uses
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader339
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.ph
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !83
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.ph
  %i.bz = load double, ptr %i.by, align 8, !tbaa !83
  %i.ca = fmul nsz double %i.bx, %i.bz
  %i.cb = fmul nsz double %i.ca, f0x4160000000000000
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.ph
  store double %i.cb, ptr %i.cc, align 8, !tbaa !83
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader339
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader339 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.cd = icmp eq i64 %indvars.iv.ph, %i.at
  br i1 %i.cd, label %.preheader101, label %.lr.ph

.preheader100:                                    ; preds = %bb.b
  br i1 %i.y, label %.lr.ph110.preheader, label %.preheader98

.lr.ph110.preheader:                              ; preds = %.preheader100
  %i.ce = sub i64 %i.bd, %i.bi
  %diff.check = icmp ugt i64 %i.ce, -16
  %or.cond = select i1 %min.iters.check305, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph110.preheader338, label %vector.body308

vector.body308:                                   ; preds = %.lr.ph110.preheader, %vector.body308
  %index309 = phi i64 [ %index.next314, %vector.body308 ], [ 0, %.lr.ph110.preheader ] ; 4 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index309 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %wide.load310 = load <2 x double>, ptr %i.cf, align 8, !tbaa !83
  %wide.load311 = load <2 x double>, ptr %i.cg, align 8, !tbaa !83
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %index309 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %wide.load312 = load <2 x float>, ptr %i.ch, align 4, !tbaa !87
  %wide.load313 = load <2 x float>, ptr %i.ci, align 4, !tbaa !87
  %i.cj = fpext nsz <2 x float> %wide.load312 to <2 x double>
  %i.ck = fpext nsz <2 x float> %wide.load313 to <2 x double>
  %i.cl = fmul nsz <2 x double> %wide.load310, %i.cj
  %i.cm = fmul nsz <2 x double> %wide.load311, %i.ck
  %i.cn = fmul nsz <2 x double> %i.cl, splat (double f0x4160000000000000)
  %i.co = fmul nsz <2 x double> %i.cm, splat (double f0x4160000000000000)
  %i.cp = fptrunc nsz <2 x double> %i.cn to <2 x float>
  %i.cq = fptrunc nsz <2 x double> %i.co to <2 x float>
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index309 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store <2 x float> %i.cp, ptr %i.cr, align 4, !tbaa !87
  store <2 x float> %i.cq, ptr %i.cs, align 4, !tbaa !87
  %index.next314 = add nuw i64 %index309, 4       ; 2 uses
  %i.ct = icmp eq i64 %index.next314, %n.vec307
  br i1 %i.ct, label %middle.block315, label %vector.body308, !llvm.loop !209

middle.block315:                                  ; preds = %vector.body308
  br i1 %cmp.n316, label %.preheader98, label %.lr.ph110.preheader338

.lr.ph110.preheader338:                           ; preds = %.lr.ph110.preheader, %middle.block315
  %indvars.iv128.ph = phi i64 [ 0, %.lr.ph110.preheader ], [ %n.vec307, %middle.block315 ] ; 6 uses
  br i1 %lcmp.mod347.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol

.lr.ph110.prol:                                   ; preds = %.lr.ph110.preheader338
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv128.ph
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !83
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv128.ph
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !87
  %i.cy = fpext nsz float %i.cx to double
  %i.cz = fmul nsz double %i.cv, %i.cy
  %i.da = fmul nsz double %i.cz, f0x4160000000000000
  %i.db = fptrunc nsz double %i.da to float
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv128.ph
  store float %i.db, ptr %i.dc, align 4, !tbaa !87
  %indvars.iv.next129.prol = or disjoint i64 %indvars.iv128.ph, 1
  br label %.lr.ph110.prol.loopexit

.lr.ph110.prol.loopexit:                          ; preds = %.lr.ph110.prol, %.lr.ph110.preheader338
  %indvars.iv128.unr = phi i64 [ %indvars.iv128.ph, %.lr.ph110.preheader338 ], [ %indvars.iv.next129.prol, %.lr.ph110.prol ]
  %i.dd = icmp eq i64 %indvars.iv128.ph, %i.au
  br i1 %i.dd, label %.preheader98, label %.lr.ph110

.preheader98:                                     ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110, %middle.block315, %.preheader100
  %i.de = load i32, ptr %i.z, align 8, !tbaa !89  ; 2 uses
  %i.df = icmp slt i32 %i.q, %i.de
  br i1 %i.df, label %.loopexit99.sink.split, label %.loopexit99

.lr.ph110:                                        ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110
  %indvars.iv128 = phi i64 [ %indvars.iv.next129.1, %.lr.ph110 ], [ %indvars.iv128.unr, %.lr.ph110.prol.loopexit ] ; 5 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv128
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !83
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv128
  %i.dj = load float, ptr %i.di, align 4, !tbaa !87
  %i.dk = fpext nsz float %i.dj to double
  %i.dl = fmul nsz double %i.dh, %i.dk
  %i.dm = fmul nsz double %i.dl, f0x4160000000000000
  %i.dn = fptrunc nsz double %i.dm to float
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv128
  store float %i.dn, ptr %i.do, align 4, !tbaa !87
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next129
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !83
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.next129
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !87
  %i.dt = fpext nsz float %i.ds to double
  %i.du = fmul nsz double %i.dq, %i.dt
  %i.dv = fmul nsz double %i.du, f0x4160000000000000
  %i.dw = fptrunc nsz double %i.dv to float
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next129
  store float %i.dw, ptr %i.dx, align 4, !tbaa !87
  %indvars.iv.next129.1 = add nuw nsw i64 %indvars.iv128, 2 ; 2 uses
  %exitcond132.not.1 = icmp eq i64 %indvars.iv.next129.1, %wide.trip.count131
  br i1 %exitcond132.not.1, label %.preheader98, label %.lr.ph110, !llvm.loop !210

.preheader101:                                    ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block333, %.preheader103
  %i.dy = load i32, ptr %i.z, align 8, !tbaa !89  ; 2 uses
  %i.dz = icmp slt i32 %i.q, %i.dy
  br i1 %i.dz, label %.loopexit99.sink.split, label %.loopexit99

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !83
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !83
  %i.ee = fmul nsz double %i.eb, %i.ed
  %i.ef = fmul nsz double %i.ee, f0x4160000000000000
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv
  store double %i.ef, ptr %i.eg, align 8, !tbaa !83
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !83
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.next
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !83
  %i.el = fmul nsz double %i.ei, %i.ek
  %i.em = fmul nsz double %i.el, f0x4160000000000000
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next
  store double %i.em, ptr %i.en, align 8, !tbaa !83
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.preheader101, label %.lr.ph, !llvm.loop !211

.loopexit99.sink.split:                           ; preds = %.preheader101, %.preheader98
  %.sink180 = phi i64 [ %i.aq, %.preheader98 ], [ %i.ao, %.preheader101 ]
  %.sink = phi i32 [ %i.de, %.preheader98 ], [ %i.dy, %.preheader101 ]
end_hunk_0
begin_hunk_1_@filter_channel:bb.a
.preheader95:                                     ; preds = %process_frame.exit
  br i1 %i.y, label %.lr.ph114, label %.loopexit

.lr.ph114:                                        ; preds = %.preheader95
  %i.tr = load ptr, ptr %i.r, align 8, !tbaa !82  ; 6 uses
  br i1 %min.iters.check203, label %scalar.ph202.preheader, label %vector.memcheck192

vector.memcheck192:                               ; preds = %.lr.ph114
  %scevgep193 = getelementptr i8, ptr %i.bf, i64 %i.as ; 2 uses
  %scevgep194 = getelementptr i8, ptr %i.tr, i64 %i.as
  %scevgep195 = getelementptr i8, ptr %i.bh, i64 %i.as
  %bound0196 = icmp ult ptr %i.bf, %scevgep194
  %bound1197 = icmp ult ptr %i.tr, %scevgep193
  %found.conflict198 = and i1 %bound0196, %bound1197
  %bound0199 = icmp ult ptr %i.bf, %scevgep195
  %bound1200 = icmp ult ptr %i.bh, %scevgep193
  %found.conflict201 = and i1 %bound0199, %bound1200
  %conflict.rdx = or i1 %found.conflict198, %found.conflict201
  br i1 %conflict.rdx, label %scalar.ph202.preheader, label %vector.body206

vector.body206:                                   ; preds = %vector.memcheck192, %vector.body206
  %index207 = phi i64 [ %index.next214, %vector.body206 ], [ 0, %vector.memcheck192 ] ; 4 uses
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.tr, i64 %index207 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  %wide.load208 = load <2 x double>, ptr %i.ts, align 8, !tbaa !83, !alias.scope !255
  %wide.load209 = load <2 x double>, ptr %i.tt, align 8, !tbaa !83, !alias.scope !255
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index207 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  %wide.load210 = load <2 x double>, ptr %i.tu, align 8, !tbaa !83, !alias.scope !258
  %wide.load211 = load <2 x double>, ptr %i.tv, align 8, !tbaa !83, !alias.scope !258
  %i.tw = fmul nsz <2 x double> %wide.load208, %wide.load210
  %i.tx = fmul nsz <2 x double> %wide.load209, %wide.load211
  %i.ty = fmul nsz <2 x double> %i.tw, splat (double f0x3E80000000000000)
  %i.tz = fmul nsz <2 x double> %i.tx, splat (double f0x3E80000000000000)
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %index207 ; 3 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 16 ; 2 uses
  %wide.load212 = load <2 x double>, ptr %i.ua, align 8, !tbaa !83, !alias.scope !260, !noalias !262
  %wide.load213 = load <2 x double>, ptr %i.ub, align 8, !tbaa !83, !alias.scope !260, !noalias !262
  %i.uc = fadd nsz <2 x double> %wide.load212, %i.ty
  %i.ud = fadd nsz <2 x double> %wide.load213, %i.tz
  store <2 x double> %i.uc, ptr %i.ua, align 8, !tbaa !83, !alias.scope !260, !noalias !262
  store <2 x double> %i.ud, ptr %i.ub, align 8, !tbaa !83, !alias.scope !260, !noalias !262
  %index.next214 = add nuw i64 %index207, 4       ; 2 uses
  %i.ue = icmp eq i64 %index.next214, %n.vec205
  br i1 %i.ue, label %middle.block215, label %vector.body206, !llvm.loop !263

middle.block215:                                  ; preds = %vector.body206
  br i1 %cmp.n216, label %.loopexit, label %scalar.ph202.preheader

scalar.ph202.preheader:                           ; preds = %vector.memcheck192, %.lr.ph114, %middle.block215
  %indvars.iv137.ph = phi i64 [ 0, %vector.memcheck192 ], [ 0, %.lr.ph114 ], [ %n.vec205, %middle.block215 ] ; 6 uses
  br i1 %lcmp.mod378.not, label %scalar.ph202.prol.loopexit, label %scalar.ph202.prol

scalar.ph202.prol:                                ; preds = %scalar.ph202.preheader
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.tr, i64 %indvars.iv137.ph
  %i.ug = load double, ptr %i.uf, align 8, !tbaa !83
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv137.ph
  %i.ui = load double, ptr %i.uh, align 8, !tbaa !83
  %i.uj = fmul nsz double %i.ug, %i.ui
  %i.uk = fmul nsz double %i.uj, f0x3E80000000000000
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv137.ph ; 2 uses
  %i.um = load double, ptr %i.ul, align 8, !tbaa !83
  %i.un = fadd nsz double %i.um, %i.uk
  store double %i.un, ptr %i.ul, align 8, !tbaa !83
  %indvars.iv.next138.prol = or disjoint i64 %indvars.iv137.ph, 1
  br label %scalar.ph202.prol.loopexit

scalar.ph202.prol.loopexit:                       ; preds = %scalar.ph202.prol, %scalar.ph202.preheader
  %indvars.iv137.unr = phi i64 [ %indvars.iv137.ph, %scalar.ph202.preheader ], [ %indvars.iv.next138.prol, %scalar.ph202.prol ]
  %i.uo = icmp eq i64 %indvars.iv137.ph, %i.av
  br i1 %i.uo, label %.loopexit, label %scalar.ph202

.preheader:                                       ; preds = %process_frame.exit
  br i1 %i.y, label %.lr.ph116, label %.loopexit

.lr.ph116:                                        ; preds = %.preheader
  %i.up = load ptr, ptr %i.r, align 8, !tbaa !82  ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph116
  %scevgep185 = getelementptr i8, ptr %i.bf, i64 %i.as
  %scevgep186 = getelementptr i8, ptr %i.up, i64 %i.as
  %bound0 = icmp ult ptr %i.bf, %scevgep186
  %bound1 = icmp ult ptr %i.up, %scevgep185
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.up, i64 %index ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 16
  %wide.load = load <2 x double>, ptr %i.uq, align 8, !tbaa !83, !alias.scope !264
  %wide.load187 = load <2 x double>, ptr %i.ur, align 8, !tbaa !83, !alias.scope !264
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  %wide.load188 = load <2 x float>, ptr %i.us, align 4, !tbaa !87
  %wide.load189 = load <2 x float>, ptr %i.ut, align 4, !tbaa !87
  %i.uu = fpext nsz <2 x float> %wide.load188 to <2 x double>
  %i.uv = fpext nsz <2 x float> %wide.load189 to <2 x double>
  %i.uw = fmul nsz <2 x double> %wide.load, %i.uu
  %i.ux = fmul nsz <2 x double> %wide.load187, %i.uv
  %i.uy = fmul nsz <2 x double> %i.uw, splat (double f0x3E80000000000000)
  %i.uz = fmul nsz <2 x double> %i.ux, splat (double f0x3E80000000000000)
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %index ; 3 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 16 ; 2 uses
  %wide.load190 = load <2 x double>, ptr %i.va, align 8, !tbaa !83, !alias.scope !267, !noalias !264
  %wide.load191 = load <2 x double>, ptr %i.vb, align 8, !tbaa !83, !alias.scope !267, !noalias !264
  %i.vc = fadd nsz <2 x double> %wide.load190, %i.uy
  %i.vd = fadd nsz <2 x double> %wide.load191, %i.uz
  store <2 x double> %i.vc, ptr %i.va, align 8, !tbaa !83, !alias.scope !267, !noalias !264
  store <2 x double> %i.vd, ptr %i.vb, align 8, !tbaa !83, !alias.scope !267, !noalias !264
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ve = icmp eq i64 %index.next, %n.vec
  br i1 %i.ve, label %middle.block, label %vector.body, !llvm.loop !269

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph116, %middle.block
  %indvars.iv142.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph116 ], [ %n.vec, %middle.block ] ; 6 uses
  br i1 %lcmp.mod380.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.up, i64 %indvars.iv142.ph
  %i.vg = load double, ptr %i.vf, align 8, !tbaa !83
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv142.ph
  %i.vi = load float, ptr %i.vh, align 4, !tbaa !87
  %i.vj = fpext nsz float %i.vi to double
  %i.vk = fmul nsz double %i.vg, %i.vj
  %i.vl = fmul nsz double %i.vk, f0x3E80000000000000
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv142.ph ; 2 uses
  %i.vn = load double, ptr %i.vm, align 8, !tbaa !83
  %i.vo = fadd nsz double %i.vn, %i.vl
  store double %i.vo, ptr %i.vm, align 8, !tbaa !83
  %indvars.iv.next143.prol = or disjoint i64 %indvars.iv142.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv142.unr = phi i64 [ %indvars.iv142.ph, %scalar.ph.preheader ], [ %indvars.iv.next143.prol, %scalar.ph.prol ]
  %i.vp = icmp eq i64 %indvars.iv142.ph, %i.aw
  br i1 %i.vp, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv142 = phi i64 [ %indvars.iv.next143.1, %scalar.ph ], [ %indvars.iv142.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.up, i64 %indvars.iv142
  %i.vr = load double, ptr %i.vq, align 8, !tbaa !83
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv142
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !87
  %i.vu = fpext nsz float %i.vt to double
  %i.vv = fmul nsz double %i.vr, %i.vu
  %i.vw = fmul nsz double %i.vv, f0x3E80000000000000
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv142 ; 2 uses
  %i.vy = load double, ptr %i.vx, align 8, !tbaa !83
  %i.vz = fadd nsz double %i.vy, %i.vw
  store double %i.vz, ptr %i.vx, align 8, !tbaa !83
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 3 uses
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %i.up, i64 %indvars.iv.next143
  %i.wb = load double, ptr %i.wa, align 8, !tbaa !83
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next143
  %i.wd = load float, ptr %i.wc, align 4, !tbaa !87
  %i.we = fpext nsz float %i.wd to double
  %i.wf = fmul nsz double %i.wb, %i.we
  %i.wg = fmul nsz double %i.wf, f0x3E80000000000000
  %i.wh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next143 ; 2 uses
  %i.wi = load double, ptr %i.wh, align 8, !tbaa !83
  %i.wj = fadd nsz double %i.wi, %i.wg
  store double %i.wj, ptr %i.wh, align 8, !tbaa !83
  %indvars.iv.next143.1 = add nuw nsw i64 %indvars.iv142, 2 ; 2 uses
  %exitcond146.not.1 = icmp eq i64 %indvars.iv.next143.1, %wide.trip.count145
  br i1 %exitcond146.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !270

scalar.ph202:                                     ; preds = %scalar.ph202.prol.loopexit, %scalar.ph202
  %indvars.iv137 = phi i64 [ %indvars.iv.next138.1, %scalar.ph202 ], [ %indvars.iv137.unr, %scalar.ph202.prol.loopexit ] ; 5 uses
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %i.tr, i64 %indvars.iv137
  %i.wl = load double, ptr %i.wk, align 8, !tbaa !83
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv137
  %i.wn = load double, ptr %i.wm, align 8, !tbaa !83
  %i.wo = fmul nsz double %i.wl, %i.wn
  %i.wp = fmul nsz double %i.wo, f0x3E80000000000000
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv137 ; 2 uses
  %i.wr = load double, ptr %i.wq, align 8, !tbaa !83
  %i.ws = fadd nsz double %i.wr, %i.wp
  store double %i.ws, ptr %i.wq, align 8, !tbaa !83
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 3 uses
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.tr, i64 %indvars.iv.next138
  %i.wu = load double, ptr %i.wt, align 8, !tbaa !83
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next138
  %i.ww = load double, ptr %i.wv, align 8, !tbaa !83
  %i.wx = fmul nsz double %i.wu, %i.ww
  %i.wy = fmul nsz double %i.wx, f0x3E80000000000000
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next138 ; 2 uses
  %i.xa = load double, ptr %i.wz, align 8, !tbaa !83
  %i.xb = fadd nsz double %i.xa, %i.wy
  store double %i.xb, ptr %i.wz, align 8, !tbaa !83
  %indvars.iv.next138.1 = add nuw nsw i64 %indvars.iv137, 2 ; 2 uses
  %exitcond141.not.1 = icmp eq i64 %indvars.iv.next138.1, %wide.trip.count140
  br i1 %exitcond141.not.1, label %.loopexit, label %scalar.ph202, !llvm.loop !271

.loopexit:                                        ; preds = %scalar.ph202.prol.loopexit, %scalar.ph202, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block215, %middle.block, %.preheader95, %.preheader, %process_frame.exit
  %indvars.iv.next148 = add nsw i64 %indvars.iv147, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next148 to i32
  %exitcond150.not = icmp eq i32 %lftr.wideiv, %i.o
  br i1 %exitcond150.not, label %._crit_edge, label %bb.b, !llvm.loop !272
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #10

declare i32 @av_frame_is_writable(ptr noundef) local_unnamed_addr #3

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #11

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

declare void @ff_avfilter_link_set_in_status(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp2.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.atan.v4f64(<4 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.lrint.v4i64.v4f64(<4 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.log.v2f64(<2 x double>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.exp.v2f64(<2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fmax.v2f64(<2 x double>) #4

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { noreturn nounwind }

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
!20 = !{!21, !26, i64 232}
!21 = !{!"AudioFFTDeNoiseContext", !11, i64 0, !6, i64 8, !22, i64 16, !22, i64 24, !23, i64 32, !23, i64 36, !6, i64 40, !14, i64 48, !23, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !23, i64 76, !6, i64 80, !23, i64 84, !23, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !23, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !7, i64 140, !24, i64 200, !25, i64 208, !25, i64 216, !25, i64 224, !26, i64 232, !27, i64 240, !28, i64 248, !28, i64 256, !28, i64 264, !7, i64 272, !6, i64 340, !7, i64 344, !7, i64 544, !7, i64 584, !7, i64 1184}
!22 = !{!"long", !7, i64 0}
!23 = !{!"float", !7, i64 0}
!24 = !{!"p1 int", !12, i64 0}
!25 = !{!"p1 double", !12, i64 0}
!26 = !{!"p1 _ZTS14DeNoiseChannel", !12, i64 0}
!27 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!28 = !{!"double", !7, i64 0}
!29 = !{!21, !6, i64 92}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!21, !23, i64 32}
!33 = !{!34, !28, i64 1000}
!34 = !{!"DeNoiseChannel", !7, i64 0, !7, i64 120, !7, i64 240, !25, i64 360, !25, i64 368, !25, i64 376, !25, i64 384, !25, i64 392, !25, i64 400, !25, i64 408, !25, i64 416, !25, i64 424, !25, i64 432, !25, i64 440, !25, i64 448, !25, i64 456, !25, i64 464, !12, i64 472, !12, i64 480, !35, i64 488, !35, i64 496, !12, i64 504, !12, i64 512, !7, i64 520, !7, i64 640, !7, i64 760, !7, i64 880, !28, i64 1000, !28, i64 1008, !28, i64 1016, !28, i64 1024, !28, i64 1032, !28, i64 1040, !28, i64 1048, !28, i64 1056, !28, i64 1064}
!35 = !{!"p1 _ZTS11AVTXContext", !12, i64 0}
!36 = !{!21, !23, i64 36}
!37 = !{!34, !28, i64 1016}
!38 = !{!21, !23, i64 56}
!39 = !{!34, !28, i64 1032}
!40 = distinct !{!40, !31}
!41 = !{!10, !16, i64 32}
!42 = !{!43, !43, i64 0}
!43 = !{!"p1 _ZTS12AVFilterLink", !12, i64 0}
!44 = !{!10, !16, i64 56}
!45 = !{!27, !27, i64 0}
!46 = !{!21, !6, i64 132}
!47 = !{!48, !49, i64 16}
!48 = !{!"AVFilterLink", !49, i64 0, !15, i64 8, !49, i64 16, !15, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !50, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !51, i64 72, !50, i64 96, !52, i64 104, !6, i64 112, !6, i64 116, !53, i64 120, !53, i64 168}
!49 = !{!"p1 _ZTS15AVFilterContext", !12, i64 0}
!50 = !{!"AVRational", !6, i64 0, !6, i64 4}
!51 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!52 = !{!"p2 _ZTS15AVFrameSideData", !17, i64 0}
!53 = !{!"AVFilterFormatsConfig", !54, i64 0, !54, i64 8, !55, i64 16, !54, i64 24, !54, i64 32, !54, i64 40}
!54 = !{!"p1 _ZTS15AVFilterFormats", !12, i64 0}
!55 = !{!"p1 _ZTS22AVFilterChannelLayouts", !12, i64 0}
!56 = !{!10, !6, i64 104}
!57 = !{!21, !6, i64 68}
!58 = !{!21, !6, i64 128}
!59 = !{!21, !6, i64 60}
!60 = !{!48, !6, i64 76}
!61 = !{!21, !27, i64 240}
!62 = !{!63, !64, i64 96}
!63 = !{!"AVFrame", !7, i64 0, !7, i64 64, !64, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !50, i64 124, !22, i64 136, !22, i64 144, !50, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !65, i64 248, !6, i64 256, !52, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !22, i64 304, !66, i64 312, !6, i64 320, !19, i64 328, !19, i64 336, !22, i64 344, !22, i64 352, !22, i64 360, !22, i64 368, !12, i64 376, !51, i64 384, !22, i64 408, !6, i64 416}
!64 = !{!"p2 omnipotent char", !17, i64 0}
!65 = !{!"p2 _ZTS11AVBufferRef", !17, i64 0}
!66 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!67 = !{!14, !14, i64 0}
!68 = !{!21, !22, i64 16}
!69 = !{!63, !6, i64 112}
!70 = distinct !{!70, !31}
!71 = distinct !{!71, !31}
!72 = !{!21, !6, i64 72}
!73 = !{!34, !28, i64 1024}
!74 = distinct !{!74, !31}
!75 = !{!21, !6, i64 104}
!76 = !{!21, !6, i64 96}
!77 = !{!21, !6, i64 100}
!78 = distinct !{!78, !31}
!79 = !{!34, !12, i64 480}
!80 = !{!34, !12, i64 472}
!81 = !{!21, !6, i64 8}
!82 = !{!21, !25, i64 208}
!83 = !{!28, !28, i64 0}
!84 = distinct !{!84, !31, !85, !86}
!85 = !{!"llvm.loop.isvectorized", i32 1}
!86 = !{!"llvm.loop.unroll.runtime.disable"}
!87 = !{!23, !23, i64 0}
!88 = distinct !{!88, !31, !85, !86}
!89 = !{!21, !6, i64 120}
!90 = distinct !{!90, !31, !85}
!91 = distinct !{!91, !31, !85}
!92 = !{!7, !7, i64 0}
!93 = !{!34, !12, i64 504}
!94 = !{!34, !35, i64 488}
!95 = distinct !{null, null}
!96 = !{!6, !6, i64 0}
!97 = !{!21, !28, i64 264}
!98 = distinct !{!98, !31}
!99 = distinct !{!99, !31}
!100 = !{!21, !6, i64 340}
!101 = distinct !{!101, !31}
!102 = !{!21, !28, i64 256}
!103 = distinct !{!103, !31}
!104 = distinct !{!104, !31}
!105 = !{!34, !25, i64 432}
!106 = distinct !{!106, !31, !85, !86}
!107 = distinct !{!107, !108}
!108 = !{!"llvm.loop.unroll.disable"}
!109 = distinct !{!109, !31, !85, !86}
end_hunk_1
