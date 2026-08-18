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
  %i.a = alloca [8 x [4 x i8]], align 16          ; 31 uses
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
  %i.k = shl nuw nsw i32 %i.j, 4
  %i.l = zext i32 %i.b to i64                     ; 2 uses
  %i.m = getelementptr [4 x i8], ptr %i.a, i64 %i.l ; 4 uses
  %i.n = getelementptr i8, ptr %i.m, i64 -4       ; 2 uses
  %.not75 = icmp eq i32 %i.b, 8
  %i.o = zext nneg i32 %i.k to i64                ; 2 uses
  %i.p = getelementptr i8, ptr %i.m, i64 -3       ; 2 uses
  %i.q = getelementptr i8, ptr %i.m, i64 -2       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 4 uses
  %i.s = getelementptr i8, ptr %i.m, i64 -1       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 4 uses
  br i1 %.not75, label %.preheader84.us.us.preheader, label %.preheader84.us.preheader

.preheader84.us.preheader:                        ; preds = %.preheader84.lr.ph.split.us
  %i.v = add nsw i64 %i.l, -1                     ; 2 uses
  %xtraiter = and i64 %i.v, 3                     ; 3 uses
  %i.w = add nsw i32 %i.b, -2
  %i.x = icmp ult i32 %i.w, 3
  %unroll_iter = and i64 %i.v, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod203 = icmp ne i64 %xtraiter, 0
  br label %.preheader84.us

.preheader84.us.us.preheader:                     ; preds = %.preheader84.lr.ph.split.us
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 7 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 11 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 15 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 19 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  br label %.peel.next163

.peel.next163:                                    ; preds = %.preheader84.us.us.preheader, %.peel.next163
  %indvars.iv175 = phi i64 [ %i.i, %.preheader84.us.us.preheader ], [ %indvars.iv.next176, %.peel.next163 ] ; 2 uses
  %indvars.iv173 = phi i64 [ 0, %.preheader84.us.us.preheader ], [ %indvars.iv.next174, %.peel.next163 ] ; 2 uses
  %i.ai = load i8, ptr %i.p, align 1, !tbaa !13
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !13
  %i.am = load i8, ptr %i.a, align 16, !tbaa !13
  %i.an = xor i8 %i.am, %i.al                     ; 2 uses
  store i8 %i.an, ptr %i.a, align 16, !tbaa !13
  %i.ao = load i8, ptr %i.q, align 2, !tbaa !13
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !13
  %i.as = load i8, ptr %i.s, align 1, !tbaa !13
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !13
  %i.aw = load i8, ptr %i.n, align 4, !tbaa !13
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr @rcon, i64 %indvars.iv173
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !13
  %i.bb = load i8, ptr %i.ay, align 1, !tbaa !13
  %i.bc = load <2 x i8>, ptr %i.r, align 1, !tbaa !13
  %i.bd = insertelement <2 x i8> poison, i8 %i.ar, i64 0
  %i.be = insertelement <2 x i8> %i.bd, i8 %i.av, i64 1
  %i.bf = xor <2 x i8> %i.bc, %i.be               ; 3 uses
  %i.bg = xor i8 %i.an, %i.ba                     ; 2 uses
  %i.bh = extractelement <2 x i8> %i.bf, i64 0
  store i8 %i.bh, ptr %i.r, align 1, !tbaa !13
  %i.bi = extractelement <2 x i8> %i.bf, i64 1
  store i8 %i.bi, ptr %i.t, align 2, !tbaa !13
  store i8 %i.bg, ptr %i.a, align 16, !tbaa !13
  %i.bj = load <4 x i8>, ptr %i.u, align 1, !tbaa !13
  %i.bk = insertelement <4 x i8> poison, i8 %i.bb, i64 0
  %i.bl = insertelement <4 x i8> %i.bk, i8 %i.bg, i64 1
  %i.bm = shufflevector <2 x i8> %i.bf, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bn = shufflevector <4 x i8> %i.bl, <4 x i8> %i.bm, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bo = xor <4 x i8> %i.bj, %i.bn               ; 2 uses
  store <4 x i8> %i.bo, ptr %i.u, align 1, !tbaa !13
  %i.bp = load <16 x i8>, ptr %i.aa, align 2
  %i.bq = load <2 x i8>, ptr %i.z, align 4, !tbaa !13
  %i.br = load <4 x i8>, ptr %i.y, align 1, !tbaa !13
  %i.bs = shufflevector <2 x i8> %i.bq, <2 x i8> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.bt = shufflevector <4 x i8> %i.bo, <4 x i8> %i.bs, <4 x i32> <i32 0, i32 5, i32 6, i32 poison>
  %i.bu = shufflevector <16 x i8> %i.bp, <16 x i8> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.bv = shufflevector <4 x i8> %i.bt, <4 x i8> %i.bu, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.bw = xor <4 x i8> %i.br, %i.bv               ; 2 uses
  store <4 x i8> %i.bw, ptr %i.y, align 1, !tbaa !13
  %i.bx = load <4 x i8>, ptr %i.ab, align 1, !tbaa !13
  %i.by = xor <4 x i8> %i.bx, %i.bw               ; 4 uses
  store <4 x i8> %i.by, ptr %i.ab, align 1, !tbaa !13
  %5 = load <16 x i8>, ptr %i.ac, align 1
  %6 = shufflevector <16 x i8> %5, <16 x i8> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bz = extractelement <4 x i8> %i.by, i64 1
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !13
  %i.cd = extractelement <4 x i8> %i.by, i64 2
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !13
  %i.ch = extractelement <4 x i8> %i.by, i64 3
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !13
  %7 = load <4 x i8>, ptr %i.ad, align 1, !tbaa !13
  %8 = insertelement <4 x i8> %6, i8 %i.cc, i64 1
  %9 = insertelement <4 x i8> %8, i8 %i.cg, i64 2
  %10 = insertelement <4 x i8> %9, i8 %i.ck, i64 3
  %11 = xor <4 x i8> %7, %10                      ; 2 uses
  store <4 x i8> %11, ptr %i.ad, align 1, !tbaa !13
  %12 = extractelement <4 x i8> %11, i64 0
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds nuw i8, ptr @sbox, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !13
  %16 = load i8, ptr %4, align 1, !tbaa !13
  %17 = xor i8 %16, %15
  store i8 %17, ptr %4, align 1, !tbaa !13
  %i.cl = load <4 x i8>, ptr %i.af, align 16, !tbaa !13
  %i.cm = load <4 x i8>, ptr %i.ae, align 4, !tbaa !13
  %i.cn = xor <4 x i8> %i.cm, %i.cl               ; 2 uses
  store <4 x i8> %i.cn, ptr %i.ae, align 4, !tbaa !13
  %i.co = load <4 x i8>, ptr %i.ag, align 8, !tbaa !13
  %i.cp = xor <4 x i8> %i.co, %i.cn               ; 2 uses
  store <4 x i8> %i.cp, ptr %i.ag, align 8, !tbaa !13
  %i.cq = load <4 x i8>, ptr %i.ah, align 4, !tbaa !13
  %i.cr = xor <4 x i8> %i.cq, %i.cp
  store <4 x i8> %i.cr, ptr %i.ah, align 4, !tbaa !13
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv175
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cs, ptr nonnull align 16 %i.a, i64 %i.i, i1 false)
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, %i.i ; 2 uses
  %i.ct = icmp samesign ult i64 %indvars.iv.next176, %i.o
  br i1 %i.ct, label %.peel.next163, label %._crit_edge91, !llvm.loop !14

.preheader84.us:                                  ; preds = %.preheader84.us.preheader, %._crit_edge.split.us.us
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %._crit_edge.split.us.us ], [ %i.i, %.preheader84.us.preheader ] ; 2 uses
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %._crit_edge.split.us.us ], [ 0, %.preheader84.us.preheader ] ; 2 uses
  %i.cu = load i8, ptr %i.p, align 1, !tbaa !13
  %i.cv = zext i8 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !13
  %i.cy = load i8, ptr %i.a, align 16, !tbaa !13
  %i.cz = xor i8 %i.cy, %i.cx                     ; 2 uses
  store i8 %i.cz, ptr %i.a, align 16, !tbaa !13
  %i.da = load i8, ptr %i.q, align 2, !tbaa !13
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !13
  %i.de = load i8, ptr %i.r, align 1, !tbaa !13
  %i.df = xor i8 %i.de, %i.dd
  store i8 %i.df, ptr %i.r, align 1, !tbaa !13
  %i.dg = load i8, ptr %i.s, align 1, !tbaa !13
  %i.dh = zext i8 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !13
  %i.dk = load i8, ptr %i.t, align 2, !tbaa !13
  %i.dl = xor i8 %i.dk, %i.dj
  store i8 %i.dl, ptr %i.t, align 2, !tbaa !13
  %i.dm = load i8, ptr %i.n, align 4, !tbaa !13
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !13
  %i.dq = load i8, ptr %i.u, align 1, !tbaa !13
  %i.dr = xor i8 %i.dq, %i.dp
  store i8 %i.dr, ptr %i.u, align 1, !tbaa !13
  %i.ds = getelementptr inbounds nuw i8, ptr @rcon, i64 %indvars.iv121
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !13
  %i.du = xor i8 %i.cz, %i.dt
  store i8 %i.du, ptr %i.a, align 16, !tbaa !13
  br i1 %i.x, label %.preheader82.us.us.epil.preheader, label %.preheader82.us.us

.preheader82.us.us:                               ; preds = %.preheader84.us, %.preheader82.us.us
  %indvars.iv118 = phi i64 [ %indvars.iv.next119.3, %.preheader82.us.us ], [ 1, %.preheader84.us ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader82.us.us ], [ 0, %.preheader84.us ]
  %i.dv = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv118 ; 3 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 -4
  %i.dx = load <4 x i8>, ptr %i.dw, align 4, !tbaa !13
  %i.dy = load <4 x i8>, ptr %i.dv, align 4, !tbaa !13
  %i.dz = xor <4 x i8> %i.dy, %i.dx               ; 2 uses
  store <4 x i8> %i.dz, ptr %i.dv, align 4, !tbaa !13
  %i.ea = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv118
  %i.eb = getelementptr i8, ptr %i.ea, i64 4      ; 2 uses
  %i.ec = load <4 x i8>, ptr %i.eb, align 4, !tbaa !13
  %i.ed = xor <4 x i8> %i.ec, %i.dz
  store <4 x i8> %i.ed, ptr %i.eb, align 4, !tbaa !13
  %i.ee = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv118 ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 8      ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ee, i64 4
  %i.eh = load <4 x i8>, ptr %i.eg, align 4, !tbaa !13
  %i.ei = load <4 x i8>, ptr %i.ef, align 4, !tbaa !13
  %i.ej = xor <4 x i8> %i.ei, %i.eh
  store <4 x i8> %i.ej, ptr %i.ef, align 4, !tbaa !13
  %i.ek = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv118 ; 2 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 12     ; 2 uses
  %i.em = getelementptr i8, ptr %i.ek, i64 8
  %i.en = load <4 x i8>, ptr %i.em, align 4, !tbaa !13
  %i.eo = load <4 x i8>, ptr %i.el, align 4, !tbaa !13
  %i.ep = xor <4 x i8> %i.eo, %i.en
  store <4 x i8> %i.ep, ptr %i.el, align 4, !tbaa !13
  %indvars.iv.next119.3 = add nuw nsw i64 %indvars.iv118, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.split.us.us.unr-lcssa, label %.preheader82.us.us, !llvm.loop !16

._crit_edge.split.us.us.unr-lcssa:                ; preds = %.preheader82.us.us
  br i1 %lcmp.mod.not, label %._crit_edge.split.us.us, label %.preheader82.us.us.epil.preheader

.preheader82.us.us.epil.preheader:                ; preds = %._crit_edge.split.us.us.unr-lcssa, %.preheader84.us
  %indvars.iv118.epil.init = phi i64 [ 1, %.preheader84.us ], [ %indvars.iv.next119.3, %._crit_edge.split.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod203)
  br label %.preheader82.us.us.epil

.preheader82.us.us.epil:                          ; preds = %.preheader82.us.us.epil, %.preheader82.us.us.epil.preheader
  %indvars.iv118.epil = phi i64 [ %indvars.iv.next119.epil, %.preheader82.us.us.epil ], [ %indvars.iv118.epil.init, %.preheader82.us.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader82.us.us.epil ], [ 0, %.preheader82.us.us.epil.preheader ]
  %i.eq = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv118.epil ; 3 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 -4
  %i.es = load <4 x i8>, ptr %i.er, align 4, !tbaa !13
  %i.et = load <4 x i8>, ptr %i.eq, align 4, !tbaa !13
  %i.eu = xor <4 x i8> %i.et, %i.es
  store <4 x i8> %i.eu, ptr %i.eq, align 4, !tbaa !13
  %indvars.iv.next119.epil = add nuw nsw i64 %indvars.iv118.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.split.us.us, label %.preheader82.us.us.epil, !llvm.loop !17

._crit_edge.split.us.us:                          ; preds = %.preheader82.us.us.epil, %._crit_edge.split.us.us.unr-lcssa
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv123
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ev, ptr nonnull align 16 %i.a, i64 %i.i, i1 false)
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, %i.i ; 2 uses
  %i.ew = icmp samesign ult i64 %indvars.iv.next124, %i.o
  br i1 %i.ew, label %.preheader84.us, label %._crit_edge91, !llvm.loop !14

._crit_edge91:                                    ; preds = %._crit_edge.split.us.us, %.peel.next163
  br i1 %.not, label %.lr.ph101.preheader, label %.preheader78

.preheader78:                                     ; preds = %._crit_edge91
  %i.ex = icmp sgt i32 %i.b, -5
  br i1 %i.ex, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader78
  %wide.trip.count183 = zext i32 %i.c to i64
  br label %.lr.ph

.lr.ph101.preheader:                              ; preds = %._crit_edge91
  %i.ey = lshr i32 %i.j, 1
  %i.ez = sext i32 %i.c to i64
  %wide.trip.count188 = zext nneg i32 %i.ey to i64
  br label %.lr.ph101

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv180 = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next181, %.lr.ph ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv180 ; 17 uses
  %.sroa.39.32.copyload = load i8, ptr %i.fa, align 16
  %.sroa.41.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  %.sroa.41.32.copyload = load i8, ptr %.sroa.41.32..sroa_idx, align 1
  %.sroa.42.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fa, i64 2
  %.sroa.42.32.copyload = load i8, ptr %.sroa.42.32..sroa_idx, align 2
  %.sroa.43.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fa, i64 3
  %.sroa.43.32.copyload = load i8, ptr %.sroa.43.32..sroa_idx, align 1
  %.sroa.44.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fa, i64 4 ; 2 uses
  %.sroa.44.32.copyload = load i8, ptr %.sroa.44.32..sroa_idx, align 4
  %.sroa.45.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fa, i64 5
  %.sroa.45.32.copyload = load i8, ptr %.sroa.45.32..sroa_idx, align 1
  %.sroa.46.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fa, i64 6
  %.sroa.46.32.copyload = load i8, ptr %.sroa.46.32..sroa_idx, align 2
  %.sroa.47.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fa, i64 7
  %.sroa.47.32.copyload = load i8, ptr %.sroa.47.32..sroa_idx, align 1
  %.sroa.48.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  %.sroa.48.32.copyload = load i8, ptr %.sroa.48.32..sroa_idx, align 8
  %.sroa.49.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fa, i64 9
  %.sroa.49.32.copyload = load i8, ptr %.sroa.49.32..sroa_idx, align 1
  %.sroa.50.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fa, i64 10
  %.sroa.50.32.copyload = load i8, ptr %.sroa.50.32..sroa_idx, align 2
  %.sroa.51.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fa, i64 11
  %.sroa.51.32.copyload = load i8, ptr %.sroa.51.32..sroa_idx, align 1
  %.sroa.52.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fa, i64 12 ; 2 uses
  %.sroa.52.32.copyload = load i8, ptr %.sroa.52.32..sroa_idx, align 4
  %.sroa.53.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fa, i64 13
  %.sroa.53.32.copyload = load i8, ptr %.sroa.53.32..sroa_idx, align 1
  %.sroa.54.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fa, i64 14
  %.sroa.54.32.copyload = load i8, ptr %.sroa.54.32..sroa_idx, align 2
  %.sroa.55.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fa, i64 15
  %.sroa.55.32.copyload = load i8, ptr %.sroa.55.32..sroa_idx, align 1, !tbaa !13
  %i.fb = zext i8 %.sroa.39.32.copyload to i64
  %i.fc = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !13
  %i.fe = zext i8 %.sroa.44.32.copyload to i64
  %i.ff = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !13
  %i.fh = zext i8 %.sroa.48.32.copyload to i64
  %i.fi = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !13
  %i.fk = zext i8 %.sroa.52.32.copyload to i64
  %i.fl = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !13
  %i.fn = zext i8 %.sroa.47.32.copyload to i64
  %i.fo = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !13
  %i.fq = zext i8 %.sroa.51.32.copyload to i64
  %i.fr = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !13
  %i.ft = zext i8 %.sroa.55.32.copyload to i64
  %i.fu = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !13
  %i.fw = zext i8 %.sroa.43.32.copyload to i64
  %i.fx = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !13
  %i.fz = zext i8 %.sroa.50.32.copyload to i64
  %i.ga = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !13
  %i.gc = zext i8 %.sroa.42.32.copyload to i64
  %i.gd = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !13
  %i.gf = zext i8 %.sroa.54.32.copyload to i64
  %i.gg = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !13
  %i.gi = zext i8 %.sroa.46.32.copyload to i64
  %i.gj = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !13
  %i.gl = zext i8 %.sroa.53.32.copyload to i64
  %i.gm = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !13
  %i.go = zext i8 %.sroa.49.32.copyload to i64
  %i.gp = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !13
  %i.gr = zext i8 %.sroa.45.32.copyload to i64
  %i.gs = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !13
  %i.gu = zext i8 %.sroa.41.32.copyload to i64
  %i.gv = getelementptr inbounds nuw i8, ptr @sbox, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !13
  %i.gx = zext i8 %i.fd to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr @dec_multbl, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !19
  %i.ha = zext i8 %i.gw to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @dec_multbl, i64 1024), i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !19
  %i.hd = xor i32 %i.hc, %i.gz
  %i.he = zext i8 %i.ge to i64
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @dec_multbl, i64 2048), i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !19
  %i.hh = xor i32 %i.hd, %i.hg
  %i.hi = zext i8 %i.fy to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @dec_multbl, i64 3072), i64 %i.hi
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !19
  %i.hl = xor i32 %i.hh, %i.hk
  %i.hm = zext i8 %i.fg to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr @dec_multbl, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !19
  %i.hp = zext i8 %i.gt to i64
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @dec_multbl, i64 1024), i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !19
  %i.hs = xor i32 %i.hr, %i.ho
  %i.ht = zext i8 %i.gk to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @dec_multbl, i64 2048), i64 %i.ht
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !19
  %i.hw = xor i32 %i.hs, %i.hv
end_hunk_0
