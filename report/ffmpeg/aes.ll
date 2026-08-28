Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aes?download=true
inline.NumInlined: 16
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@av_aes_size = local_unnamed_addr constant i32 288, align 4
@aes_static_init = internal global i32 0, align 4
@sbox = internal global [256 x i8] zeroinitializer, align 16
@rcon = internal unnamed_addr constant [10 x i8] c"\01\02\04\08\10 @\80\1B6", align 1
@dec_multbl = internal global [4 x [256 x i32]] zeroinitializer, align 16
@inv_sbox = internal global [256 x i8] zeroinitializer, align 16
@enc_multbl = internal global [4 x [256 x i32]] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define noalias ptr @av_aes_alloc() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @av_mallocz(i64 noundef 288) #9
  ret ptr %i.a
}

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @av_aes_crypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = load i32, ptr %i.c, align 16, !tbaa !12
  tail call void %i.b(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %i.d) #9
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -22, 1) i32 @av_aes_init(ptr nofree noundef captures(none) initializes((272, 276), (280, 288)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x [4 x i8]], align 16          ; 34 uses
  %.sroa.0 = alloca [2 x i64], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = ashr i32 %2, 5                           ; 7 uses
  %i.c = add nsw i32 %i.b, 6                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 %i.c, ptr %i.d, align 16, !tbaa !12
  %.not = icmp eq i32 %3, 0                       ; 2 uses
  %i.e = select i1 %.not, ptr @aes_encrypt, ptr @aes_decrypt
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.e, ptr %i.f, align 8, !tbaa !9
  %i.g = tail call i32 @pthread_once(ptr noundef nonnull @aes_static_init, ptr noundef nonnull @aes_init_static) #9 ; 0 uses
  switch i32 %2, label %.loopexit [
    i32 256, label %.preheader84.lr.ph.split.us
    i32 192, label %.preheader84.lr.ph.split.us
    i32 128, label %.preheader84.lr.ph.split.us
  ]

.preheader84.lr.ph.split.us:                      ; preds = %bb.a, %bb.a, %bb.a
  %i.h = shl nuw nsw i32 %i.b, 2
  %i.i = zext nneg i32 %i.h to i64                ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %1, i64 %i.i, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %0, ptr align 1 %1, i64 %i.i, i1 false)
  %i.j = add nuw nsw i32 %i.b, 7                  ; 2 uses
  %i.k = zext i32 %i.b to i64                     ; 2 uses
  %i.l = getelementptr [4 x i8], ptr %i.a, i64 %i.k ; 7 uses
  %i.m = getelementptr i8, ptr %i.l, i64 -4       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.not75 = icmp eq i32 %i.b, 8
  br i1 %.not75, label %.preheader84.us.us.preheader, label %.preheader84.us.preheader

.preheader84.us.preheader:                        ; preds = %.preheader84.lr.ph.split.us
  %4 = shl nuw nsw i32 %i.j, 4
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr i8, ptr %i.l, i64 -3
  %7 = getelementptr i8, ptr %i.l, i64 -2
  %8 = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %9 = getelementptr i8, ptr %i.l, i64 -1
  %10 = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  %i.o = add nsw i64 %i.k, -1                     ; 2 uses
  %xtraiter = and i64 %i.o, 3                     ; 3 uses
  %i.p = add nsw i32 %i.b, -2
  %i.q = icmp ult i32 %i.p, 3
  %unroll_iter = and i64 %i.o, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod202 = icmp ne i64 %xtraiter, 0
  br label %.preheader84.us

.preheader84.us.us.preheader:                     ; preds = %.preheader84.lr.ph.split.us
  %12 = getelementptr i8, ptr %i.l, i64 -3
  %13 = getelementptr i8, ptr %i.l, i64 -2
  %14 = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %15 = getelementptr i8, ptr %i.l, i64 -1
  %16 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %17 = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 7 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 11 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 15 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  br label %.peel.next163

.peel.next163:                                    ; preds = %.preheader84.us.us.preheader, %.peel.next163
  %indvars.iv175 = phi i64 [ %i.i, %.preheader84.us.us.preheader ], [ %indvars.iv.next176, %.peel.next163 ] ; 2 uses
  %indvars.iv173 = phi i64 [ 0, %.preheader84.us.us.preheader ], [ %indvars.iv.next174, %.peel.next163 ] ; 2 uses
  %i.ab = load i8, ptr %12, align 1, !tbaa !13
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !13
  %i.af = load i8, ptr %i.a, align 16, !tbaa !13
  %i.ag = xor i8 %i.af, %i.ae                     ; 2 uses
  store i8 %i.ag, ptr %i.a, align 16, !tbaa !13
  %i.ah = load i8, ptr %13, align 2, !tbaa !13
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !13
  %i.al = load i8, ptr %15, align 1, !tbaa !13
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !13
  %i.ap = load i8, ptr %i.m, align 4, !tbaa !13
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr @rcon, i64 %indvars.iv173
  %i.at = load i8, ptr %i.as, align 1, !tbaa !13
  %i.au = load i8, ptr %i.ar, align 1, !tbaa !13
  %i.av = load <2 x i8>, ptr %14, align 1, !tbaa !13
  %i.aw = insertelement <2 x i8> poison, i8 %i.ak, i64 0
  %i.ax = insertelement <2 x i8> %i.aw, i8 %i.ao, i64 1
  %i.ay = xor <2 x i8> %i.av, %i.ax               ; 3 uses
  %i.az = xor i8 %i.ag, %i.at                     ; 2 uses
  %i.ba = extractelement <2 x i8> %i.ay, i64 0
  store i8 %i.ba, ptr %14, align 1, !tbaa !13
  %i.bb = extractelement <2 x i8> %i.ay, i64 1
  store i8 %i.bb, ptr %16, align 2, !tbaa !13
  store i8 %i.az, ptr %i.a, align 16, !tbaa !13
  %i.bc = load <4 x i8>, ptr %17, align 1, !tbaa !13
  %i.bd = insertelement <4 x i8> poison, i8 %i.au, i64 0
  %i.be = insertelement <4 x i8> %i.bd, i8 %i.az, i64 1
  %i.bf = shufflevector <2 x i8> %i.ay, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bg = shufflevector <4 x i8> %i.be, <4 x i8> %i.bf, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bh = xor <4 x i8> %i.bc, %i.bg               ; 2 uses
  store <4 x i8> %i.bh, ptr %17, align 1, !tbaa !13
  %i.bi = load <16 x i8>, ptr %i.t, align 2
  %i.bj = load <2 x i8>, ptr %i.s, align 4, !tbaa !13
  %i.bk = load <4 x i8>, ptr %i.r, align 1, !tbaa !13
  %i.bl = shufflevector <2 x i8> %i.bj, <2 x i8> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.bm = shufflevector <4 x i8> %i.bh, <4 x i8> %i.bl, <4 x i32> <i32 0, i32 5, i32 6, i32 poison>
  %i.bn = shufflevector <16 x i8> %i.bi, <16 x i8> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.bo = shufflevector <4 x i8> %i.bm, <4 x i8> %i.bn, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.bp = xor <4 x i8> %i.bk, %i.bo               ; 2 uses
  store <4 x i8> %i.bp, ptr %i.r, align 1, !tbaa !13
  %i.bq = load <4 x i8>, ptr %i.u, align 1, !tbaa !13
  %i.br = xor <4 x i8> %i.bq, %i.bp               ; 4 uses
  store <4 x i8> %i.br, ptr %i.u, align 1, !tbaa !13
  %i.bs = load i8, ptr %i.v, align 1, !tbaa !13
  %i.bt = load i8, ptr %i.w, align 1, !tbaa !13
  %i.bu = xor i8 %i.bt, %i.bs                     ; 2 uses
  store i8 %i.bu, ptr %i.w, align 1, !tbaa !13
  %i.bv = extractelement <4 x i8> %i.br, i64 1
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !13
  %i.bz = extractelement <4 x i8> %i.br, i64 2
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !13
  %i.cd = extractelement <4 x i8> %i.br, i64 3
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !13
  %i.ch = zext i8 %i.bu to i64
  %i.ci = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !13
  %i.ck = load <4 x i8>, ptr %i.n, align 16, !tbaa !13
  %i.cl = insertelement <4 x i8> poison, i8 %i.by, i64 0
  %i.cm = insertelement <4 x i8> %i.cl, i8 %i.cc, i64 1
  %i.cn = insertelement <4 x i8> %i.cm, i8 %i.cg, i64 2
  %i.co = insertelement <4 x i8> %i.cn, i8 %i.cj, i64 3
  %i.cp = xor <4 x i8> %i.ck, %i.co
  store <4 x i8> %i.cp, ptr %i.n, align 16, !tbaa !13
  %i.cq = load <4 x i8>, ptr %i.y, align 16, !tbaa !13
  %i.cr = load <4 x i8>, ptr %i.x, align 4, !tbaa !13
  %i.cs = xor <4 x i8> %i.cr, %i.cq               ; 2 uses
  store <4 x i8> %i.cs, ptr %i.x, align 4, !tbaa !13
  %i.ct = load <4 x i8>, ptr %i.z, align 8, !tbaa !13
  %i.cu = xor <4 x i8> %i.ct, %i.cs               ; 2 uses
  store <4 x i8> %i.cu, ptr %i.z, align 8, !tbaa !13
  %i.cv = load <4 x i8>, ptr %i.aa, align 4, !tbaa !13
  %i.cw = xor <4 x i8> %i.cv, %i.cu
  store <4 x i8> %i.cw, ptr %i.aa, align 4, !tbaa !13
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv175
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr nonnull align 16 %i.a, i64 %i.i, i1 false)
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, %i.i
  %exitcond181.not = icmp eq i64 %indvars.iv.next174, 7
  br i1 %exitcond181.not, label %._crit_edge91, label %.peel.next163, !llvm.loop !14

.preheader84.us:                                  ; preds = %.preheader84.us.preheader, %._crit_edge.split.us.us
  %indvars.iv123 = phi i64 [ %i.i, %.preheader84.us.preheader ], [ %indvars.iv.next124, %._crit_edge.split.us.us ] ; 2 uses
  %indvars.iv121 = phi i64 [ 0, %.preheader84.us.preheader ], [ %indvars.iv.next122, %._crit_edge.split.us.us ] ; 2 uses
  %i.cy = load i8, ptr %6, align 1, !tbaa !13
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !13
  %i.dc = load i8, ptr %i.a, align 16, !tbaa !13
  %i.dd = xor i8 %i.dc, %i.db                     ; 2 uses
  store i8 %i.dd, ptr %i.a, align 16, !tbaa !13
  %i.de = load i8, ptr %7, align 2, !tbaa !13
  %i.df = zext i8 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !13
  %i.di = load i8, ptr %8, align 1, !tbaa !13
  %i.dj = xor i8 %i.di, %i.dh
  store i8 %i.dj, ptr %8, align 1, !tbaa !13
  %i.dk = load i8, ptr %9, align 1, !tbaa !13
  %i.dl = zext i8 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !13
  %i.do = load i8, ptr %10, align 2, !tbaa !13
  %i.dp = xor i8 %i.do, %i.dn
  store i8 %i.dp, ptr %10, align 2, !tbaa !13
  %i.dq = load i8, ptr %i.m, align 4, !tbaa !13
  %i.dr = zext i8 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !13
  %i.du = load i8, ptr %11, align 1, !tbaa !13
  %i.dv = xor i8 %i.du, %i.dt
  store i8 %i.dv, ptr %11, align 1, !tbaa !13
  %i.dw = getelementptr inbounds nuw i8, ptr @rcon, i64 %indvars.iv121
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !13
  %i.dy = xor i8 %i.dd, %i.dx
  store i8 %i.dy, ptr %i.a, align 16, !tbaa !13
  br i1 %i.q, label %.preheader82.us.us.epil.preheader, label %.preheader82.us.us

.preheader82.us.us:                               ; preds = %.preheader84.us, %.preheader82.us.us
  %indvars.iv118 = phi i64 [ %indvars.iv.next119.3, %.preheader82.us.us ], [ 1, %.preheader84.us ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader82.us.us ], [ 0, %.preheader84.us ]
  %i.dz = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv118 ; 3 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 -4
  %i.eb = load <4 x i8>, ptr %i.ea, align 4, !tbaa !13
  %i.ec = load <4 x i8>, ptr %i.dz, align 4, !tbaa !13
  %i.ed = xor <4 x i8> %i.ec, %i.eb               ; 2 uses
  store <4 x i8> %i.ed, ptr %i.dz, align 4, !tbaa !13
  %i.ee = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv118
  %i.ef = getelementptr i8, ptr %i.ee, i64 4      ; 2 uses
  %i.eg = load <4 x i8>, ptr %i.ef, align 4, !tbaa !13
  %i.eh = xor <4 x i8> %i.eg, %i.ed
  store <4 x i8> %i.eh, ptr %i.ef, align 4, !tbaa !13
  %i.ei = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv118 ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 8      ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ei, i64 4
  %i.el = load <4 x i8>, ptr %i.ek, align 4, !tbaa !13
  %i.em = load <4 x i8>, ptr %i.ej, align 4, !tbaa !13
  %i.en = xor <4 x i8> %i.em, %i.el
  store <4 x i8> %i.en, ptr %i.ej, align 4, !tbaa !13
  %i.eo = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv118 ; 2 uses
  %i.ep = getelementptr i8, ptr %i.eo, i64 12     ; 2 uses
  %i.eq = getelementptr i8, ptr %i.eo, i64 8
  %i.er = load <4 x i8>, ptr %i.eq, align 4, !tbaa !13
  %i.es = load <4 x i8>, ptr %i.ep, align 4, !tbaa !13
  %i.et = xor <4 x i8> %i.es, %i.er
  store <4 x i8> %i.et, ptr %i.ep, align 4, !tbaa !13
  %indvars.iv.next119.3 = add nuw nsw i64 %indvars.iv118, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.split.us.us.unr-lcssa, label %.preheader82.us.us, !llvm.loop !16

._crit_edge.split.us.us.unr-lcssa:                ; preds = %.preheader82.us.us
  br i1 %lcmp.mod.not, label %._crit_edge.split.us.us, label %.preheader82.us.us.epil.preheader

.preheader82.us.us.epil.preheader:                ; preds = %._crit_edge.split.us.us.unr-lcssa, %.preheader84.us
  %indvars.iv118.epil.init = phi i64 [ 1, %.preheader84.us ], [ %indvars.iv.next119.3, %._crit_edge.split.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod202)
  br label %.preheader82.us.us.epil

.preheader82.us.us.epil:                          ; preds = %.preheader82.us.us.epil, %.preheader82.us.us.epil.preheader
  %indvars.iv118.epil = phi i64 [ %indvars.iv.next119.epil, %.preheader82.us.us.epil ], [ %indvars.iv118.epil.init, %.preheader82.us.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader82.us.us.epil ], [ 0, %.preheader82.us.us.epil.preheader ]
  %i.eu = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv118.epil ; 3 uses
  %i.ev = getelementptr i8, ptr %i.eu, i64 -4
  %i.ew = load <4 x i8>, ptr %i.ev, align 4, !tbaa !13
  %i.ex = load <4 x i8>, ptr %i.eu, align 4, !tbaa !13
  %i.ey = xor <4 x i8> %i.ex, %i.ew
  store <4 x i8> %i.ey, ptr %i.eu, align 4, !tbaa !13
  %indvars.iv.next119.epil = add nuw nsw i64 %indvars.iv118.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.split.us.us, label %.preheader82.us.us.epil, !llvm.loop !17

._crit_edge.split.us.us:                          ; preds = %.preheader82.us.us.epil, %._crit_edge.split.us.us.unr-lcssa
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv123
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ez, ptr nonnull align 16 %i.a, i64 %i.i, i1 false)
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, %i.i ; 2 uses
  %i.fa = icmp samesign ult i64 %indvars.iv.next124, %5
  br i1 %i.fa, label %.preheader84.us, label %._crit_edge91, !llvm.loop !14

._crit_edge91:                                    ; preds = %._crit_edge.split.us.us, %.peel.next163
  br i1 %.not, label %.lr.ph101.preheader, label %.preheader78

.preheader78:                                     ; preds = %._crit_edge91
  %i.fb = icmp sgt i32 %i.b, -5
  br i1 %i.fb, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader78
  %wide.trip.count183 = zext i32 %i.c to i64
  br label %.lr.ph

.lr.ph101.preheader:                              ; preds = %._crit_edge91
  %i.fc = lshr i32 %i.j, 1
  %i.fd = sext i32 %i.c to i64
  %wide.trip.count188 = zext nneg i32 %i.fc to i64
  br label %.lr.ph101

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv180 = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next181, %.lr.ph ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv180 ; 17 uses
  %.sroa.39.32.copyload = load i8, ptr %i.fe, align 16
  %.sroa.41.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fe, i64 1
  %.sroa.41.32.copyload = load i8, ptr %.sroa.41.32..sroa_idx, align 1
  %.sroa.42.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  %.sroa.42.32.copyload = load i8, ptr %.sroa.42.32..sroa_idx, align 2
  %.sroa.43.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fe, i64 3
  %.sroa.43.32.copyload = load i8, ptr %.sroa.43.32..sroa_idx, align 1
  %.sroa.44.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fe, i64 4 ; 2 uses
  %.sroa.44.32.copyload = load i8, ptr %.sroa.44.32..sroa_idx, align 4
  %.sroa.45.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fe, i64 5
  %.sroa.45.32.copyload = load i8, ptr %.sroa.45.32..sroa_idx, align 1
  %.sroa.46.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fe, i64 6
  %.sroa.46.32.copyload = load i8, ptr %.sroa.46.32..sroa_idx, align 2
  %.sroa.47.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fe, i64 7
  %.sroa.47.32.copyload = load i8, ptr %.sroa.47.32..sroa_idx, align 1
  %.sroa.48.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 2 uses
  %.sroa.48.32.copyload = load i8, ptr %.sroa.48.32..sroa_idx, align 8
  %.sroa.49.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fe, i64 9
  %.sroa.49.32.copyload = load i8, ptr %.sroa.49.32..sroa_idx, align 1
  %.sroa.50.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fe, i64 10
  %.sroa.50.32.copyload = load i8, ptr %.sroa.50.32..sroa_idx, align 2
  %.sroa.51.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fe, i64 11
  %.sroa.51.32.copyload = load i8, ptr %.sroa.51.32..sroa_idx, align 1
  %.sroa.52.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fe, i64 12 ; 2 uses
  %.sroa.52.32.copyload = load i8, ptr %.sroa.52.32..sroa_idx, align 4
  %.sroa.53.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fe, i64 13
  %.sroa.53.32.copyload = load i8, ptr %.sroa.53.32..sroa_idx, align 1
  %.sroa.54.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fe, i64 14
  %.sroa.54.32.copyload = load i8, ptr %.sroa.54.32..sroa_idx, align 2
  %.sroa.55.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fe, i64 15
  %.sroa.55.32.copyload = load i8, ptr %.sroa.55.32..sroa_idx, align 1, !tbaa !13
  %i.ff = zext i8 %.sroa.39.32.copyload to i64
  %i.fg = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !13
  %i.fi = zext i8 %.sroa.44.32.copyload to i64
  %i.fj = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !13
  %i.fl = zext i8 %.sroa.48.32.copyload to i64
  %i.fm = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !13
  %i.fo = zext i8 %.sroa.52.32.copyload to i64
  %i.fp = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !13
  %i.fr = zext i8 %.sroa.47.32.copyload to i64
  %i.fs = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !13
  %i.fu = zext i8 %.sroa.51.32.copyload to i64
  %i.fv = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !13
  %i.fx = zext i8 %.sroa.55.32.copyload to i64
  %i.fy = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !13
  %i.ga = zext i8 %.sroa.43.32.copyload to i64
  %i.gb = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !13
  %i.gd = zext i8 %.sroa.50.32.copyload to i64
  %i.ge = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !13
  %i.gg = zext i8 %.sroa.42.32.copyload to i64
  %i.gh = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !13
  %i.gj = zext i8 %.sroa.54.32.copyload to i64
  %i.gk = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !13
  %i.gm = zext i8 %.sroa.46.32.copyload to i64
  %i.gn = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !13
  %i.gp = zext i8 %.sroa.53.32.copyload to i64
  %i.gq = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !13
  %i.gs = zext i8 %.sroa.49.32.copyload to i64
  %i.gt = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !13
  %i.gv = zext i8 %.sroa.45.32.copyload to i64
  %i.gw = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !13
  %i.gy = zext i8 %.sroa.41.32.copyload to i64
  %i.gz = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !13
  %i.hb = zext i8 %i.fh to i64
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr @dec_multbl, i64 %i.hb
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !19
  %i.he = zext i8 %i.ha to i64
end_hunk_0
