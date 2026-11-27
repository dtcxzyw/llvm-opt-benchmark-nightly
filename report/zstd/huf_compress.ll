Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/huf_compress?download=true
inline.NumInlined: 440
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 72
begin_hunk_0_@HUF_writeCTable_wksp:bb.a
  %i.gf = insertelement <16 x i8> %i.ge, i8 %i.fp, i64 14
  %i.gg = insertelement <16 x i8> %i.gf, i8 %i.fq, i64 15
  %i.gh = shl <16 x i8> %i.gg, splat (i8 4)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dw, i64 1
  %i.gj = getelementptr inbounds nuw i8, ptr %i.dx, i64 3
  %i.gk = getelementptr inbounds nuw i8, ptr %i.dz, i64 5
  %i.gl = getelementptr inbounds nuw i8, ptr %i.eb, i64 7
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ed, i64 9
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ef, i64 11
  %i.go = getelementptr inbounds nuw i8, ptr %i.eh, i64 13
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ej, i64 15
  %i.gq = getelementptr inbounds nuw i8, ptr %i.el, i64 17
  %i.gr = getelementptr inbounds nuw i8, ptr %i.en, i64 19
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ep, i64 21
  %i.gt = getelementptr inbounds nuw i8, ptr %i.er, i64 23
  %i.gu = getelementptr inbounds nuw i8, ptr %i.et, i64 25
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ev, i64 27
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ex, i64 29
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ez, i64 31
  %i.gy = load i8, ptr %i.gi, align 1, !tbaa !10, !alias.scope !34
  %i.gz = load i8, ptr %i.gj, align 1, !tbaa !10, !alias.scope !34
  %i.ha = load i8, ptr %i.gk, align 1, !tbaa !10, !alias.scope !34
  %i.hb = load i8, ptr %i.gl, align 1, !tbaa !10, !alias.scope !34
  %i.hc = load i8, ptr %i.gm, align 1, !tbaa !10, !alias.scope !34
  %i.hd = load i8, ptr %i.gn, align 1, !tbaa !10, !alias.scope !34
  %i.he = load i8, ptr %i.go, align 1, !tbaa !10, !alias.scope !34
  %i.hf = load i8, ptr %i.gp, align 1, !tbaa !10, !alias.scope !34
  %i.hg = load i8, ptr %i.gq, align 1, !tbaa !10, !alias.scope !34
  %i.hh = load i8, ptr %i.gr, align 1, !tbaa !10, !alias.scope !34
  %i.hi = load i8, ptr %i.gs, align 1, !tbaa !10, !alias.scope !34
  %i.hj = load i8, ptr %i.gt, align 1, !tbaa !10, !alias.scope !34
  %i.hk = load i8, ptr %i.gu, align 1, !tbaa !10, !alias.scope !34
  %i.hl = load i8, ptr %i.gv, align 1, !tbaa !10, !alias.scope !34
  %i.hm = load i8, ptr %i.gw, align 1, !tbaa !10, !alias.scope !34
  %i.hn = load i8, ptr %i.gx, align 1, !tbaa !10, !alias.scope !34
  %i.ho = insertelement <16 x i8> poison, i8 %i.gy, i64 0
  %i.hp = insertelement <16 x i8> %i.ho, i8 %i.gz, i64 1
  %i.hq = insertelement <16 x i8> %i.hp, i8 %i.ha, i64 2
  %i.hr = insertelement <16 x i8> %i.hq, i8 %i.hb, i64 3
  %i.hs = insertelement <16 x i8> %i.hr, i8 %i.hc, i64 4
  %i.ht = insertelement <16 x i8> %i.hs, i8 %i.hd, i64 5
  %i.hu = insertelement <16 x i8> %i.ht, i8 %i.he, i64 6
  %i.hv = insertelement <16 x i8> %i.hu, i8 %i.hf, i64 7
  %i.hw = insertelement <16 x i8> %i.hv, i8 %i.hg, i64 8
  %i.hx = insertelement <16 x i8> %i.hw, i8 %i.hh, i64 9
  %i.hy = insertelement <16 x i8> %i.hx, i8 %i.hi, i64 10
  %i.hz = insertelement <16 x i8> %i.hy, i8 %i.hj, i64 11
  %i.ia = insertelement <16 x i8> %i.hz, i8 %i.hk, i64 12
  %i.ib = insertelement <16 x i8> %i.ia, i8 %i.hl, i64 13
  %i.ic = insertelement <16 x i8> %i.ib, i8 %i.hm, i64 14
  %i.id = insertelement <16 x i8> %i.ic, i8 %i.hn, i64 15
  %i.ie = add <16 x i8> %i.gh, %i.id
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 %index116
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 1
  store <16 x i8> %i.ie, ptr %i.ig, align 1, !tbaa !10, !alias.scope !35, !noalias !34
  %index.next117 = add nuw i64 %index116, 16      ; 2 uses
  %i.ih = icmp eq i64 %index.next117, %n.vec114
  br i1 %i.ih, label %middle.block118, label %vector.body115, !llvm.loop !30

middle.block118:                                  ; preds = %vector.body115
  %cmp.n119 = icmp eq i64 %i.dk, %n.vec114
  br i1 %cmp.n119, label %.thread69, label %vec.epilog.iter.check121

vec.epilog.iter.check121:                         ; preds = %middle.block118
  %min.epilog.iters.check123.not.not = icmp eq i64 %i.dt, 0
  br i1 %min.epilog.iters.check123.not.not, label %.lr.ph77.preheader, label %vec.epilog.ph124, !prof !36

vec.epilog.ph124:                                 ; preds = %vector.main.loop.iter.check111, %vec.epilog.iter.check121
  %vec.epilog.resume.val125 = phi i64 [ %n.vec114, %vec.epilog.iter.check121 ], [ 0, %vector.main.loop.iter.check111 ]
  %n.vec126 = and i64 %i.dk, -8                   ; 3 uses
  %i.ii = shl i64 %n.vec126, 1
  br label %vec.epilog.vector.body127

vec.epilog.vector.body127:                        ; preds = %vec.epilog.vector.body127, %vec.epilog.ph124
  %index128 = phi i64 [ %vec.epilog.resume.val125, %vec.epilog.ph124 ], [ %index.next129, %vec.epilog.vector.body127 ] ; 3 uses
  %i.ij = shl nuw i64 %index128, 1                ; 8 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.ij ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.ij ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 2
  %i.in = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.ij ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  %i.ip = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.ij ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 6
  %i.ir = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.ij ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.ij ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 10
  %i.iv = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.ij ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 12
  %i.ix = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.ij ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 14
  %i.iz = load i8, ptr %i.ik, align 1, !tbaa !10, !alias.scope !34
  %i.ja = load i8, ptr %i.im, align 1, !tbaa !10, !alias.scope !34
  %i.jb = load i8, ptr %i.io, align 1, !tbaa !10, !alias.scope !34
  %i.jc = load i8, ptr %i.iq, align 1, !tbaa !10, !alias.scope !34
  %i.jd = load i8, ptr %i.is, align 1, !tbaa !10, !alias.scope !34
  %i.je = load i8, ptr %i.iu, align 1, !tbaa !10, !alias.scope !34
  %i.jf = load i8, ptr %i.iw, align 1, !tbaa !10, !alias.scope !34
  %i.jg = load i8, ptr %i.iy, align 1, !tbaa !10, !alias.scope !34
  %i.jh = insertelement <8 x i8> poison, i8 %i.iz, i64 0
  %i.ji = insertelement <8 x i8> %i.jh, i8 %i.ja, i64 1
  %i.jj = insertelement <8 x i8> %i.ji, i8 %i.jb, i64 2
  %i.jk = insertelement <8 x i8> %i.jj, i8 %i.jc, i64 3
  %i.jl = insertelement <8 x i8> %i.jk, i8 %i.jd, i64 4
  %i.jm = insertelement <8 x i8> %i.jl, i8 %i.je, i64 5
  %i.jn = insertelement <8 x i8> %i.jm, i8 %i.jf, i64 6
  %i.jo = insertelement <8 x i8> %i.jn, i8 %i.jg, i64 7
  %i.jp = shl <8 x i8> %i.jo, splat (i8 4)
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ik, i64 1
  %i.jr = getelementptr inbounds nuw i8, ptr %i.il, i64 3
  %i.js = getelementptr inbounds nuw i8, ptr %i.in, i64 5
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ip, i64 7
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ir, i64 9
  %i.jv = getelementptr inbounds nuw i8, ptr %i.it, i64 11
  %i.jw = getelementptr inbounds nuw i8, ptr %i.iv, i64 13
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ix, i64 15
  %i.jy = load i8, ptr %i.jq, align 1, !tbaa !10, !alias.scope !34
  %i.jz = load i8, ptr %i.jr, align 1, !tbaa !10, !alias.scope !34
  %i.ka = load i8, ptr %i.js, align 1, !tbaa !10, !alias.scope !34
  %i.kb = load i8, ptr %i.jt, align 1, !tbaa !10, !alias.scope !34
  %i.kc = load i8, ptr %i.ju, align 1, !tbaa !10, !alias.scope !34
  %i.kd = load i8, ptr %i.jv, align 1, !tbaa !10, !alias.scope !34
  %i.ke = load i8, ptr %i.jw, align 1, !tbaa !10, !alias.scope !34
  %i.kf = load i8, ptr %i.jx, align 1, !tbaa !10, !alias.scope !34
  %i.kg = insertelement <8 x i8> poison, i8 %i.jy, i64 0
  %i.kh = insertelement <8 x i8> %i.kg, i8 %i.jz, i64 1
  %i.ki = insertelement <8 x i8> %i.kh, i8 %i.ka, i64 2
  %i.kj = insertelement <8 x i8> %i.ki, i8 %i.kb, i64 3
  %i.kk = insertelement <8 x i8> %i.kj, i8 %i.kc, i64 4
  %i.kl = insertelement <8 x i8> %i.kk, i8 %i.kd, i64 5
  %i.km = insertelement <8 x i8> %i.kl, i8 %i.ke, i64 6
  %i.kn = insertelement <8 x i8> %i.km, i8 %i.kf, i64 7
  %i.ko = add <8 x i8> %i.jp, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 %index128
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 1
  store <8 x i8> %i.ko, ptr %i.kq, align 1, !tbaa !10, !alias.scope !35, !noalias !34
  %index.next129 = add nuw i64 %index128, 8       ; 2 uses
  %i.kr = icmp eq i64 %index.next129, %n.vec126
  br i1 %i.kr, label %vec.epilog.middle.block130, label %vec.epilog.vector.body127, !llvm.loop !31

vec.epilog.middle.block130:                       ; preds = %vec.epilog.vector.body127
  %cmp.n131 = icmp eq i64 %i.dk, %n.vec126
  br i1 %cmp.n131, label %.thread69, label %.lr.ph77.preheader

.lr.ph77.preheader:                               ; preds = %iter.check120, %vector.memcheck, %vec.epilog.iter.check121, %vec.epilog.middle.block130
  %indvars.iv85.ph = phi i64 [ 0, %iter.check120 ], [ 0, %vector.memcheck ], [ %i.du, %vec.epilog.iter.check121 ], [ %i.ii, %vec.epilog.middle.block130 ]
  br label %.lr.ph77

.lr.ph77:                                         ; preds = %.lr.ph77.preheader, %.lr.ph77
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %.lr.ph77 ], [ %indvars.iv85.ph, %.lr.ph77.preheader ] ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.bo, i64 %indvars.iv85 ; 2 uses
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !10
  %i.ku = shl i8 %i.kt, 4
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 1
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !10
  %i.kx = add i8 %i.ku, %i.kw
  %i.ky = lshr exact i64 %indvars.iv85, 1
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 %i.ky
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 1
  store i8 %i.kx, ptr %i.la, align 1, !tbaa !10
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 2 ; 2 uses
  %i.lb = icmp samesign ult i64 %indvars.iv.next86, %i.bp
  br i1 %i.lb, label %.lr.ph77, label %.thread69, !llvm.loop !32

.thread69:                                        ; preds = %.lr.ph77, %middle.block118, %vec.epilog.middle.block130, %bb.q, %HUF_compressWeights.exit.thread, %bb.n, %HUF_compressWeights.exit, %bb.p, %bb.o, %._crit_edge, %bb.b, %bb.a
  %.154 = phi i64 [ %i.cq, %HUF_compressWeights.exit ], [ -1, %bb.a ], [ -46, %bb.b ], [ -70, %._crit_edge ], [ -1, %bb.o ], [ -70, %bb.p ], [ %.5.i.ph, %HUF_compressWeights.exit.thread ], [ %i.cy, %bb.n ], [ %i.dd, %bb.q ], [ %i.dd, %middle.block118 ], [ %i.dd, %vec.epilog.middle.block130 ], [ %i.dd, %.lr.ph77 ]
  ret i64 %.154
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i64 @HUF_readCTable(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %i.b = alloca [13 x i32], align 16              ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca [14 x i16], align 16              ; 10 uses
  %i.f = alloca [14 x i16], align 16              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 0, ptr %i.c, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.h = call i64 @HUF_readStats(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef %2, i64 noundef %3) #14 ; 3 uses
  %i.i = icmp ult i64 %i.h, -119
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %i.b, align 16, !tbaa !17
  %i.k = icmp ne i32 %i.j, 0
  %i.l = zext i1 %i.k to i32
  store i32 %i.l, ptr %4, align 4, !tbaa !17
  %i.m = load i32, ptr %i.c, align 4, !tbaa !17   ; 11 uses
  %i.n = icmp ugt i32 %i.m, 12
  br i1 %i.n, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.d, align 4, !tbaa !17   ; 8 uses
  %i.p = load i32, ptr %1, align 4, !tbaa !17
  %i.q = add i32 %i.p, 1
  %i.r = icmp ugt i32 %i.o, %i.q
  br i1 %i.r, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = add i32 %i.o, -1                         ; 2 uses
  store i32 %i.s, ptr %1, align 4, !tbaa !17
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.sroa.6.0..sroa_idx.i, i8 0, i64 6, i1 false)
  %5 = trunc nuw nsw i32 %i.m to i8               ; 2 uses
  %6 = trunc i32 %i.s to i8
  store i8 %5, ptr %0, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %6, ptr %.sroa.5.0..sroa_idx.i, align 1
  %.not5155 = icmp eq i32 %i.m, 0                 ; 2 uses
  br i1 %.not5155, label %.preheader54, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.t = zext nneg i32 %i.m to i64                ; 2 uses
  %xtraiter = and i64 %i.t, 1
  %i.u = icmp eq i32 %i.m, 1
  br i1 %i.u, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.t, 14
  br label %.lr.ph

.preheader54.loopexit.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader54, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader54.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.preheader54.loopexit.unr-lcssa ]
  %.04857.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.av, %.preheader54.loopexit.unr-lcssa ]
  %lcmp.mod96 = trunc i32 %i.m to i1
  call void @llvm.assume(i1 %lcmp.mod96)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.epil.init
  store i32 %.04857.epil.init, ptr %i.v, align 4, !tbaa !17
  br label %.preheader54

.preheader54:                                     ; preds = %.lr.ph.epil.preheader, %.preheader54.loopexit.unr-lcssa, %bb.d
  %.not = icmp eq i32 %i.o, 0                     ; 2 uses
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph59

._crit_edge.thread:                               ; preds = %.preheader54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.e, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.f, i8 0, i64 28, i1 false)
  br label %._crit_edge63

.lr.ph59:                                         ; preds = %.preheader54
  %i.w = add nuw nsw i8 %5, 1                     ; 2 uses
  %wide.trip.count78 = zext i32 %i.o to i64       ; 5 uses
  %min.iters.check = icmp ult i32 %i.o, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph59
  %n.vec = and i64 %wide.trip.count78, 4294967292 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i8> poison, i8 %i.w, i64 0
  %broadcast.splat = shufflevector <2 x i8> %broadcast.splatinsert, <2 x i8> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %wide.load = load <2 x i8>, ptr %i.x, align 4, !tbaa !10 ; 2 uses
  %wide.load95 = load <2 x i8>, ptr %i.y, align 2, !tbaa !10 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.aa = sub <2 x i8> %broadcast.splat, %wide.load
  %i.ab = sub <2 x i8> %broadcast.splat, %wide.load95
  %i.ac = icmp eq <2 x i8> %wide.load, zeroinitializer
  %i.ad = icmp eq <2 x i8> %wide.load95, zeroinitializer
  %i.ae = select <2 x i1> %i.ac, <2 x i8> zeroinitializer, <2 x i8> %i.aa
  %i.af = select <2 x i1> %i.ad, <2 x i8> zeroinitializer, <2 x i8> %i.ab
  %i.ag = zext <2 x i8> %i.ae to <2 x i64>
  %i.ah = zext <2 x i8> %i.af to <2 x i64>
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <2 x i64> %i.ag, ptr %i.z, align 8, !tbaa !15
  store <2 x i64> %i.ah, ptr %i.ai, align 8, !tbaa !15
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count78
  br i1 %cmp.n, label %.lr.ph62.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph59, %middle.block
  %indvars.iv75.ph = phi i64 [ 0, %.lr.ph59 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %.04857 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.av, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !17
  %i.am = trunc i64 %indvars.iv to i32
  %i.an = add nsw i32 %i.am, -1
  %i.ao = shl i32 %i.al, %i.an
  %i.ap = add i32 %i.ao, %.04857                  ; 2 uses
  store i32 %.04857, ptr %i.ak, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !17
  %i.as = trunc i64 %indvars.iv.next to i32
  %i.at = add i32 %i.as, -1
  %i.au = shl i32 %i.ar, %i.at
  %i.av = add i32 %i.au, %i.ap                    ; 2 uses
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !17
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader54.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !38

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %scalar.ph ], [ %indvars.iv75.ph, %scalar.ph.preheader ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv75
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !10  ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv75
  %i.az = sub i8 %i.w, %i.ax
  %.not53 = icmp eq i8 %i.ax, 0
  %narrow = select i1 %.not53, i8 0, i8 %i.az
  %i.ba = zext i8 %narrow to i64
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !15
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count78
  br i1 %exitcond79.not, label %.lr.ph62.preheader, label %scalar.ph, !llvm.loop !39

.lr.ph62.preheader:                               ; preds = %scalar.ph, %middle.block
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.e, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.f, i8 0, i64 28, i1 false)
  %xtraiter97 = and i64 %wide.trip.count78, 1
  %i.bb = icmp eq i32 %i.o, 1
  br i1 %i.bb, label %.lr.ph62.epil.preheader, label %.lr.ph62.preheader.new

.lr.ph62.preheader.new:                           ; preds = %.lr.ph62.preheader
  %unroll_iter100 = and i64 %wide.trip.count78, 4294967294
  br label %.lr.ph62

.lr.ph62:                                         ; preds = %.lr.ph62, %.lr.ph62.preheader.new
  %indvars.iv80 = phi i64 [ 0, %.lr.ph62.preheader.new ], [ %indvars.iv.next81.1, %.lr.ph62 ] ; 3 uses
  %niter101 = phi i64 [ 0, %.lr.ph62.preheader.new ], [ %niter101.next.1, %.lr.ph62 ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv80
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !15
  %i.be = and i64 %i.bd, 255
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.be ; 2 uses
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !19
  %i.bh = add i16 %i.bg, 1
  store i16 %i.bh, ptr %i.bf, align 2, !tbaa !19
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv80
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !15
  %i.bl = and i64 %i.bk, 255
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.bl ; 2 uses
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !19
  %i.bo = add i16 %i.bn, 1
  store i16 %i.bo, ptr %i.bm, align 2, !tbaa !19
  %indvars.iv.next81.1 = add nuw nsw i64 %indvars.iv80, 2 ; 2 uses
  %niter101.next.1 = add i64 %niter101, 2         ; 2 uses
  %niter101.ncmp.1 = icmp eq i64 %niter101.next.1, %unroll_iter100
  br i1 %niter101.ncmp.1, label %._crit_edge63.loopexit.unr-lcssa, label %.lr.ph62, !llvm.loop !40

._crit_edge63.loopexit.unr-lcssa:                 ; preds = %.lr.ph62
  %lcmp.mod98.not = icmp eq i64 %xtraiter97, 0
  br i1 %lcmp.mod98.not, label %._crit_edge63, label %.lr.ph62.epil.preheader

.lr.ph62.epil.preheader:                          ; preds = %._crit_edge63.loopexit.unr-lcssa, %.lr.ph62.preheader
  %indvars.iv80.epil.init = phi i64 [ 0, %.lr.ph62.preheader ], [ %indvars.iv.next81.1, %._crit_edge63.loopexit.unr-lcssa ]
  %lcmp.mod99 = trunc i32 %i.o to i1
  call void @llvm.assume(i1 %lcmp.mod99)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv80.epil.init
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !15
  %i.br = and i64 %i.bq, 255
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.br ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !19
  %i.bu = add i16 %i.bt, 1
  store i16 %i.bu, ptr %i.bs, align 2, !tbaa !19
  br label %._crit_edge63

._crit_edge63:                                    ; preds = %.lr.ph62.epil.preheader, %._crit_edge63.loopexit.unr-lcssa, %._crit_edge.thread
  %i.bv = zext nneg i32 %i.m to i64               ; 3 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  store i16 0, ptr %i.bx, align 2, !tbaa !19
  br i1 %.not5155, label %.preheader, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %._crit_edge63
  %xtraiter102 = and i32 %i.m, 1
  %i.by = icmp eq i32 %i.m, 1
  br i1 %i.by, label %.lr.ph68.epil.preheader, label %.lr.ph68.preheader.new

.lr.ph68.preheader.new:                           ; preds = %.lr.ph68.preheader
  %unroll_iter105 = and i32 %i.m, 14
  br label %.lr.ph68

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph68
  %lcmp.mod103.not = icmp eq i32 %xtraiter102, 0
  br i1 %lcmp.mod103.not, label %.preheader, label %.lr.ph68.epil.preheader

.lr.ph68.epil.preheader:                          ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph68.preheader
  %indvars.iv85.epil.init = phi i64 [ %i.bv, %.lr.ph68.preheader ], [ %indvars.iv.next86.1, %.preheader.loopexit.unr-lcssa ]
  %.04465.epil.init = phi i16 [ 0, %.lr.ph68.preheader ], [ %i.cj, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod104 = trunc i32 %i.m to i1
  call void @llvm.assume(i1 %lcmp.mod104)
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv85.epil.init
  store i16 %.04465.epil.init, ptr %i.bz, align 2, !tbaa !19
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph68.epil.preheader, %.preheader.loopexit.unr-lcssa, %._crit_edge63
  br i1 %.not, label %._crit_edge71, label %.lr.ph70.preheader

.lr.ph70.preheader:                               ; preds = %.preheader
  %wide.trip.count90 = zext i32 %i.o to i64
  br label %.lr.ph70

.lr.ph68:                                         ; preds = %.lr.ph68, %.lr.ph68.preheader.new
  %indvars.iv85 = phi i64 [ %i.bv, %.lr.ph68.preheader.new ], [ %indvars.iv.next86.1, %.lr.ph68 ] ; 4 uses
  %.04465 = phi i16 [ 0, %.lr.ph68.preheader.new ], [ %i.cj, %.lr.ph68 ] ; 2 uses
  %niter106 = phi i32 [ 0, %.lr.ph68.preheader.new ], [ %niter106.next.1, %.lr.ph68 ]
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv85
  store i16 %.04465, ptr %i.ca, align 2, !tbaa !19
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv85
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !19
  %i.cd = add i16 %i.cc, %.04465
  %i.ce = lshr i16 %i.cd, 1                       ; 2 uses
  %indvars.iv.next86 = add nsw i64 %indvars.iv85, -1 ; 2 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next86
  store i16 %i.ce, ptr %i.cf, align 2, !tbaa !19
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.next86
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !19
  %i.ci = add i16 %i.ch, %i.ce
  %i.cj = lshr i16 %i.ci, 1                       ; 2 uses
  %indvars.iv.next86.1 = add nsw i64 %indvars.iv85, -2 ; 2 uses
  %niter106.next.1 = add nuw nsw i32 %niter106, 2 ; 2 uses
  %niter106.ncmp.1 = icmp eq i32 %niter106.next.1, %unroll_iter105
  br i1 %niter106.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph68, !llvm.loop !41

.lr.ph70:                                         ; preds = %.lr.ph70.preheader, %HUF_setValue.exit
  %indvars.iv87 = phi i64 [ 0, %.lr.ph70.preheader ], [ %indvars.iv.next88, %HUF_setValue.exit ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv87 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !15 ; 2 uses
  %i.cm = and i64 %i.cl, 255                      ; 3 uses
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.cm ; 2 uses
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !19 ; 2 uses
  %i.cp = add i16 %i.co, 1
  store i16 %i.cp, ptr %i.cn, align 2, !tbaa !19
  %.not.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i, label %HUF_setValue.exit, label %bb.e
end_hunk_0
begin_hunk_1_@HUF_buildCTable_wksp:bb.a
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !73
  %i.or = zext i8 %i.oq to i64
  %i.os = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.or ; 2 uses
  %i.ot = load i16, ptr %i.os, align 2, !tbaa !19
  %i.ou = add i16 %i.ot, 1
  store i16 %i.ou, ptr %i.os, align 2, !tbaa !19
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i40
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 23
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !73
  %i.oy = zext i8 %i.ox to i64
  %i.oz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.oy ; 2 uses
  %i.pa = load i16, ptr %i.oz, align 2, !tbaa !19
  %i.pb = add i16 %i.pa, 1
  store i16 %i.pb, ptr %i.oz, align 2, !tbaa !19
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i40
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 31
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !73
  %i.pf = zext i8 %i.pe to i64
  %i.pg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.pf ; 2 uses
  %i.ph = load i16, ptr %i.pg, align 2, !tbaa !19
  %i.pi = add i16 %i.ph, 1
  store i16 %i.pi, ptr %i.pg, align 2, !tbaa !19
  %indvars.iv.next.i41.3 = add nuw nsw i64 %indvars.iv.i40, 4 ; 2 uses
  %niter124.next.3 = add i64 %niter124, 4         ; 2 uses
  %niter124.ncmp.3 = icmp eq i64 %niter124.next.3, %unroll_iter123
  br i1 %niter124.ncmp.3, label %.preheader37.i.loopexit.unr-lcssa, label %.lr.ph.i39, !llvm.loop !62

.lr.ph42.i:                                       ; preds = %.lr.ph42.i, %.lr.ph42.preheader.i.new
  %indvars.iv46.i = phi i64 [ %i.of, %.lr.ph42.preheader.i.new ], [ %indvars.iv.next47.i.3, %.lr.ph42.i ] ; 6 uses
  %.041.i = phi i16 [ 0, %.lr.ph42.preheader.i.new ], [ %i.qc, %.lr.ph42.i ] ; 2 uses
  %niter130 = phi i64 [ 0, %.lr.ph42.preheader.i.new ], [ %niter130.next.3, %.lr.ph42.i ]
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv46.i
  store i16 %.041.i, ptr %i.pj, align 2, !tbaa !19
  %i.pk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv46.i
  %i.pl = load i16, ptr %i.pk, align 2, !tbaa !19
  %i.pm = add i16 %i.pl, %.041.i
  %i.pn = lshr i16 %i.pm, 1                       ; 2 uses
  %indvars.iv.next47.i = add nsw i64 %indvars.iv46.i, -1 ; 2 uses
  %i.po = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next47.i
  store i16 %i.pn, ptr %i.po, align 2, !tbaa !19
  %i.pp = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next47.i
  %i.pq = load i16, ptr %i.pp, align 2, !tbaa !19
  %i.pr = add i16 %i.pq, %i.pn
  %i.ps = lshr i16 %i.pr, 1                       ; 2 uses
  %indvars.iv.next47.i.1 = add nsw i64 %indvars.iv46.i, -2 ; 2 uses
  %i.pt = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next47.i.1
  store i16 %i.ps, ptr %i.pt, align 2, !tbaa !19
  %i.pu = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next47.i.1
  %i.pv = load i16, ptr %i.pu, align 2, !tbaa !19
  %i.pw = add i16 %i.pv, %i.ps
  %i.px = lshr i16 %i.pw, 1                       ; 2 uses
  %indvars.iv.next47.i.2 = add nsw i64 %indvars.iv46.i, -3 ; 2 uses
  %i.py = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next47.i.2
  store i16 %i.px, ptr %i.py, align 2, !tbaa !19
  %i.pz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next47.i.2
  %i.qa = load i16, ptr %i.pz, align 2, !tbaa !19
  %i.qb = add i16 %i.qa, %i.px
  %i.qc = lshr i16 %i.qb, 1                       ; 2 uses
  %indvars.iv.next47.i.3 = add nsw i64 %indvars.iv46.i, -4 ; 2 uses
  %niter130.next.3 = add i64 %niter130, 4         ; 2 uses
  %niter130.ncmp.3.not = icmp eq i64 %niter130.next.3, %unroll_iter129
  br i1 %niter130.ncmp.3.not, label %.preheader36.i.preheader.loopexit.unr-lcssa, label %.lr.ph42.i, !llvm.loop !63

.preheader36.i.preheader.loopexit.unr-lcssa:      ; preds = %.lr.ph42.i
  %lcmp.mod127.not = icmp eq i64 %xtraiter125, 0
  br i1 %lcmp.mod127.not, label %.preheader36.i.preheader, label %.lr.ph42.i.epil.preheader

.lr.ph42.i.epil.preheader:                        ; preds = %.preheader36.i.preheader.loopexit.unr-lcssa, %.lr.ph42.preheader.i
  %indvars.iv46.i.epil.init = phi i64 [ %i.of, %.lr.ph42.preheader.i ], [ %indvars.iv.next47.i.3, %.preheader36.i.preheader.loopexit.unr-lcssa ]
  %.041.i.epil.init = phi i16 [ 0, %.lr.ph42.preheader.i ], [ %i.qc, %.preheader36.i.preheader.loopexit.unr-lcssa ]
  %lcmp.mod128 = icmp ne i64 %xtraiter125, 0
  tail call void @llvm.assume(i1 %lcmp.mod128)
  br label %.lr.ph42.i.epil

.lr.ph42.i.epil:                                  ; preds = %.lr.ph42.i.epil, %.lr.ph42.i.epil.preheader
  %indvars.iv46.i.epil = phi i64 [ %indvars.iv46.i.epil.init, %.lr.ph42.i.epil.preheader ], [ %indvars.iv.next47.i.epil, %.lr.ph42.i.epil ] ; 3 uses
  %.041.i.epil = phi i16 [ %.041.i.epil.init, %.lr.ph42.i.epil.preheader ], [ %i.qh, %.lr.ph42.i.epil ] ; 2 uses
  %epil.iter126 = phi i64 [ 0, %.lr.ph42.i.epil.preheader ], [ %epil.iter126.next, %.lr.ph42.i.epil ]
  %i.qd = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv46.i.epil
  store i16 %.041.i.epil, ptr %i.qd, align 2, !tbaa !19
  %i.qe = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv46.i.epil
  %i.qf = load i16, ptr %i.qe, align 2, !tbaa !19
  %i.qg = add i16 %i.qf, %.041.i.epil
  %i.qh = lshr i16 %i.qg, 1
  %indvars.iv.next47.i.epil = add nsw i64 %indvars.iv46.i.epil, -1
  %epil.iter126.next = add i64 %epil.iter126, 1   ; 2 uses
  %epil.iter126.cmp.not = icmp eq i64 %epil.iter126.next, %xtraiter125
  br i1 %epil.iter126.cmp.not, label %.preheader36.i.preheader, label %.lr.ph42.i.epil, !llvm.loop !64

.preheader36.i.preheader:                         ; preds = %.preheader36.i.preheader.loopexit.unr-lcssa, %.lr.ph42.i.epil, %.preheader37.i
  %xtraiter131 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.qi = icmp ult i32 %2, 3
  br i1 %i.qi, label %.preheader36.i.epil.preheader, label %.preheader36.i.preheader.new

.preheader36.i.preheader.new:                     ; preds = %.preheader36.i.preheader
  %unroll_iter135 = and i64 %wide.trip.count.i, 508
  br label %.preheader36.i

.preheader36.i:                                   ; preds = %.preheader36.i, %.preheader36.i.preheader.new
  %indvars.iv48.i = phi i64 [ 0, %.preheader36.i.preheader.new ], [ %indvars.iv.next49.i.3, %.preheader36.i ] ; 5 uses
  %niter136 = phi i64 [ 0, %.preheader36.i.preheader.new ], [ %niter136.next.3, %.preheader36.i ]
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv48.i ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 6
  %i.ql = load i8, ptr %i.qk, align 2, !tbaa !71
  %i.qm = zext i8 %i.ql to i64
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %i.qm
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qj, i64 7
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !73
  %i.qq = zext i8 %i.qp to i64
  store i64 %i.qq, ptr %i.qn, align 8, !tbaa !15
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv48.i ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 14
  %i.qt = load i8, ptr %i.qs, align 2, !tbaa !71
  %i.qu = zext i8 %i.qt to i64
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %i.qu
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qr, i64 15
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !73
  %i.qy = zext i8 %i.qx to i64
  store i64 %i.qy, ptr %i.qv, align 8, !tbaa !15
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv48.i ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 22
  %i.rb = load i8, ptr %i.ra, align 2, !tbaa !71
  %i.rc = zext i8 %i.rb to i64
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %i.rc
  %i.re = getelementptr inbounds nuw i8, ptr %i.qz, i64 23
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !73
  %i.rg = zext i8 %i.rf to i64
  store i64 %i.rg, ptr %i.rd, align 8, !tbaa !15
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv48.i ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 30
  %i.rj = load i8, ptr %i.ri, align 2, !tbaa !71
  %i.rk = zext i8 %i.rj to i64
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %i.rk
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rh, i64 31
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !73
  %i.ro = zext i8 %i.rn to i64
  store i64 %i.ro, ptr %i.rl, align 8, !tbaa !15
  %indvars.iv.next49.i.3 = add nuw nsw i64 %indvars.iv48.i, 4 ; 2 uses
  %niter136.next.3 = add i64 %niter136, 4         ; 2 uses
  %niter136.ncmp.3 = icmp eq i64 %niter136.next.3, %unroll_iter135
  br i1 %niter136.ncmp.3, label %.preheader.i44.preheader.unr-lcssa, label %.preheader36.i, !llvm.loop !65

.preheader.i44.preheader.unr-lcssa:               ; preds = %.preheader36.i
  %lcmp.mod133.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod133.not, label %.preheader.i44.preheader, label %.preheader36.i.epil.preheader

.preheader36.i.epil.preheader:                    ; preds = %.preheader.i44.preheader.unr-lcssa, %.preheader36.i.preheader
  %indvars.iv48.i.epil.init = phi i64 [ 0, %.preheader36.i.preheader ], [ %indvars.iv.next49.i.3, %.preheader.i44.preheader.unr-lcssa ]
  %lcmp.mod134 = icmp ne i64 %xtraiter131, 0
  tail call void @llvm.assume(i1 %lcmp.mod134)
  br label %.preheader36.i.epil

.preheader36.i.epil:                              ; preds = %.preheader36.i.epil, %.preheader36.i.epil.preheader
  %indvars.iv48.i.epil = phi i64 [ %indvars.iv.next49.i.epil, %.preheader36.i.epil ], [ %indvars.iv48.i.epil.init, %.preheader36.i.epil.preheader ] ; 2 uses
  %epil.iter132 = phi i64 [ %epil.iter132.next, %.preheader36.i.epil ], [ 0, %.preheader36.i.epil.preheader ]
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv48.i.epil ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 6
  %i.rr = load i8, ptr %i.rq, align 2, !tbaa !71
  %i.rs = zext i8 %i.rr to i64
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %i.rs
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rp, i64 7
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !73
  %i.rw = zext i8 %i.rv to i64
  store i64 %i.rw, ptr %i.rt, align 8, !tbaa !15
  %indvars.iv.next49.i.epil = add nuw nsw i64 %indvars.iv48.i.epil, 1
  %epil.iter132.next = add i64 %epil.iter132, 1   ; 2 uses
  %epil.iter132.cmp.not = icmp eq i64 %epil.iter132.next, %xtraiter131
  br i1 %epil.iter132.cmp.not, label %.preheader.i44.preheader, label %.preheader36.i.epil, !llvm.loop !66

.preheader.i44.preheader:                         ; preds = %.preheader36.i.epil, %.preheader.i44.preheader.unr-lcssa
  br label %.preheader.i44

.preheader.i44:                                   ; preds = %.preheader.i44.preheader, %HUF_setValue.exit.i
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i, %HUF_setValue.exit.i ], [ 0, %.preheader.i44.preheader ] ; 2 uses
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %indvars.iv53.i ; 2 uses
  %i.ry = load i64, ptr %i.rx, align 8, !tbaa !15 ; 2 uses
  %i.rz = and i64 %i.ry, 255                      ; 3 uses
  %i.sa = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.rz ; 2 uses
  %i.sb = load i16, ptr %i.sa, align 2, !tbaa !19 ; 2 uses
  %i.sc = add i16 %i.sb, 1
  store i16 %i.sc, ptr %i.sa, align 2, !tbaa !19
  %.not.i.i = icmp eq i64 %i.rz, 0
  br i1 %.not.i.i, label %HUF_setValue.exit.i, label %bb.y

bb.y:                                             ; preds = %.preheader.i44
  %i.sd = zext i16 %i.sb to i64
  %i.se = sub nuw nsw i64 64, %i.rz
  %i.sf = shl i64 %i.sd, %i.se
  %i.sg = or i64 %i.sf, %i.ry
  store i64 %i.sg, ptr %i.rx, align 8, !tbaa !15
  br label %HUF_setValue.exit.i

HUF_setValue.exit.i:                              ; preds = %bb.y, %.preheader.i44
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond57.not.i = icmp eq i64 %indvars.iv.next54.i, %wide.trip.count.i
  br i1 %exitcond57.not.i, label %HUF_buildCTableFromTree.exit, label %.preheader.i44, !llvm.loop !67

HUF_buildCTableFromTree.exit:                     ; preds = %HUF_setValue.exit.i
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.sroa.6.0..sroa_idx.i.i, i8 0, i64 6, i1 false)
  %6 = trunc nuw nsw i32 %.095.i to i8
  %7 = trunc nuw i32 %2 to i8
  store i8 %6, ptr %0, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %7, ptr %.sroa.5.0..sroa_idx.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.sh = zext nneg i32 %.095.i to i64
  br label %bb.z

bb.z:                                             ; preds = %HUF_setMaxHeight.exit, %bb.b, %bb.a, %HUF_buildCTableFromTree.exit
  %.0 = phi i64 [ %i.sh, %HUF_buildCTableFromTree.exit ], [ -66, %bb.a ], [ -46, %bb.b ], [ -1, %HUF_setMaxHeight.exit ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i64 0, 2305843009213693952) i64 @HUF_estimateCompressedSize(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not10 = icmp slt i32 %2, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = add nuw i32 %2, 1
  %wide.trip.count = zext i32 %i.b to i64         ; 3 uses
  %min.iters.check = icmp ult i32 %2, 3
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %vec.phi14 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.load = load <2 x i64>, ptr %i.c, align 8, !tbaa !15
  %wide.load15 = load <2 x i64>, ptr %i.d, align 8, !tbaa !15
  %i.e = and <2 x i64> %wide.load, splat (i64 255)
  %i.f = and <2 x i64> %wide.load15, splat (i64 255)
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %wide.load16 = load <2 x i32>, ptr %i.g, align 4, !tbaa !17
  %wide.load17 = load <2 x i32>, ptr %i.h, align 4, !tbaa !17
  %i.i = zext <2 x i32> %wide.load16 to <2 x i64>
  %i.j = zext <2 x i32> %wide.load17 to <2 x i64>
  %i.k = mul nuw nsw <2 x i64> %i.e, %i.i
  %i.l = mul nuw nsw <2 x i64> %i.f, %i.j
  %i.m = add <2 x i64> %i.k, %vec.phi             ; 2 uses
  %i.n = add <2 x i64> %i.l, %vec.phi14           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.n, %i.m
  %i.p = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0911.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader18 ] ; 3 uses
  %.0911 = phi i64 [ %i.x, %.lr.ph ], [ %.0911.ph, %.lr.ph.preheader18 ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.r = load i64, ptr %i.q, align 8, !tbaa !15
  %i.s = and i64 %i.r, 255
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !17
  %i.v = zext i32 %i.u to i64
  %i.w = mul nuw nsw i64 %i.s, %i.v
  %i.x = add i64 %i.w, %.0911                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !75

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i64 [ %i.p, %middle.block ], [ %i.x, %.lr.ph ]
  %i.y = lshr i64 %.lcssa, 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.09.lcssa = phi i64 [ 0, %bb.a ], [ %i.y, %._crit_edge.loopexit ]
  ret i64 %.09.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 0, 2) i32 @HUF_validateCTable(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8
  %i.a = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.b = lshr i32 %i.a, 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = and i32 %i.b, 255
  %i.e = icmp ult i32 %i.d, %2
  br i1 %i.e, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.f = add nuw nsw i32 %2, 1
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %2, 3
  br i1 %min.iters.check, label %.preheader.preheader23, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi19 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %wide.load = load <2 x i32>, ptr %i.g, align 4, !tbaa !17
  %wide.load20 = load <2 x i32>, ptr %i.h, align 4, !tbaa !17
  %i.i = icmp ne <2 x i32> %wide.load, zeroinitializer
  %i.j = icmp ne <2 x i32> %wide.load20, zeroinitializer
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load21 = load <2 x i64>, ptr %i.k, align 8, !tbaa !15
  %wide.load22 = load <2 x i64>, ptr %i.l, align 8, !tbaa !15
  %i.m = and <2 x i64> %wide.load21, splat (i64 255)
  %i.n = and <2 x i64> %wide.load22, splat (i64 255)
  %i.o = icmp eq <2 x i64> %i.m, zeroinitializer
  %i.p = icmp eq <2 x i64> %i.n, zeroinitializer
  %i.q = and <2 x i1> %i.i, %i.o
  %i.r = and <2 x i1> %i.j, %i.p
  %i.s = zext <2 x i1> %i.q to <2 x i32>
  %i.t = zext <2 x i1> %i.r to <2 x i32>
  %i.u = or <2 x i32> %vec.phi, %i.s              ; 2 uses
  %i.v = or <2 x i32> %vec.phi19, %i.t            ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i32> %i.v, %i.u
  %i.x = tail call i32 @llvm.vector.reduce.or.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.preheader.preheader23

.preheader.preheader23:                           ; preds = %.preheader.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  %.01216.ph = phi i32 [ 0, %.preheader.preheader ], [ %i.x, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader23, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader23 ] ; 3 uses
  %.01216 = phi i32 [ %i.ah, %.preheader ], [ %.01216.ph, %.preheader.preheader23 ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !17
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !15
  %i.ad = and i64 %i.ac, 255
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = and i1 %i.aa, %i.ae
  %i.ag = zext i1 %i.af to i32
  %i.ah = or i32 %.01216, %i.ag                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !77

.loopexit:                                        ; preds = %.preheader, %middle.block
  %.lcssa = phi i32 [ %i.x, %middle.block ], [ %i.ah, %.preheader ]
  %i.ai = xor i32 %.lcssa, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %.013 = phi i32 [ %i.ai, %.loopexit ], [ 0, %bb.a ]
  ret i32 %.013
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @HUF_compressBound(i64 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = lshr i64 %0, 8
  %i.b = add i64 %0, 137
  %i.c = add i64 %i.b, %i.a
  ret i64 %i.c
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @HUF_compress1X_usingCTable(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call fastcc i64 @HUF_compress1X_usingCTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5)
  ret i64 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @HUF_compress1X_usingCTable_internal(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly %2, i64 noundef %3, ptr nofree noundef readonly %4, i32 noundef %5) unnamed_addr #8 {
bb.a:
  %i.a = and i32 %5, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i64 @HUF_compress1X_usingCTable_internal_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4)
  br label %HUF_compress1X_usingCTable_internal_default.exit
end_hunk_1
