Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/common_pivco_kernel?download=true
inline.NumInlined: 11
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZL_PivCoBuilder = type { [347 x %struct.ZL_PivCoLeaf], [512 x i8], [16 x i16], [15 x i16], i16 }
%struct.ZL_PivCoLeaf = type { i16, i16 }

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -1, 13) i32 @ZL_PivCoHuffman_computeTableLog(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %1, -257
  %or.cond = icmp ult i64 %i.a, -256
  br i1 %or.cond, label %bb.c, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader40, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %1, 504                        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi34 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %vec.phi35 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.f, %vector.body ]
  %vec.phi36 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.g, %vector.body ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %wide.load = load <4 x i8>, ptr %i.b, align 1, !tbaa !11 ; 2 uses
  %wide.load37 = load <4 x i8>, ptr %i.c, align 1, !tbaa !11 ; 2 uses
  %i.d = icmp ugt <4 x i8> %wide.load, splat (i8 12)
  %i.e = icmp ugt <4 x i8> %wide.load37, splat (i8 12)
  %i.f = or <4 x i1> %vec.phi35, %i.d             ; 2 uses
  %i.g = or <4 x i1> %vec.phi36, %i.e             ; 2 uses
  %i.h = and <4 x i8> %wide.load, splat (i8 31)
  %i.i = and <4 x i8> %wide.load37, splat (i8 31)
  %i.j = zext nneg <4 x i8> %i.h to <4 x i32>
  %i.k = zext nneg <4 x i8> %i.i to <4 x i32>
  %i.l = shl nuw <4 x i32> splat (i32 1), %i.j
  %i.m = shl nuw <4 x i32> splat (i32 1), %i.k
  %i.n = lshr <4 x i32> %i.l, splat (i32 1)
  %i.o = lshr <4 x i32> %i.m, splat (i32 1)
  %i.p = add <4 x i32> %i.n, %vec.phi             ; 2 uses
  %i.q = add <4 x i32> %i.o, %vec.phi34           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.q, %i.p
  %i.s = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %bin.rdx38 = or <4 x i1> %i.g, %i.f
  %i.t = bitcast <4 x i1> %bin.rdx38 to i4
  %i.u = icmp ne i4 %i.t, 0                       ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader40

.lr.ph.preheader40:                               ; preds = %.lr.ph.preheader, %middle.block
  %.01829.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.01928.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.s, %middle.block ]
  %.02027.ph = phi i1 [ false, %.lr.ph.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa33 = phi i1 [ %i.u, %middle.block ], [ %i.aa, %.lr.ph ]
  %.lcssa = phi i32 [ %i.s, %middle.block ], [ %i.af, %.lr.ph ] ; 3 uses
  %2 = icmp ne i32 %.lcssa, 0
  %not..020 = xor i1 %.lcssa33, true
  %or.cond23 = select i1 %not..020, i1 %2, i1 false
  %i.v = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.lcssa)
  %i.w = icmp samesign ult i32 %i.v, 2
  %or.cond26 = select i1 %or.cond23, i1 %i.w, i1 false
  br i1 %or.cond26, label %bb.b, label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader40, %.lr.ph
  %.01829 = phi i64 [ %i.ag, %.lr.ph ], [ %.01829.ph, %.lr.ph.preheader40 ] ; 2 uses
  %.01928 = phi i32 [ %i.af, %.lr.ph ], [ %.01928.ph, %.lr.ph.preheader40 ]
  %.02027 = phi i1 [ %i.aa, %.lr.ph ], [ %.02027.ph, %.lr.ph.preheader40 ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.01829
  %i.y = load i8, ptr %i.x, align 1, !tbaa !11    ; 2 uses
  %i.z = icmp ugt i8 %i.y, 12
  %i.aa = or i1 %.02027, %i.z                     ; 2 uses
  %i.ab = and i8 %i.y, 31
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = shl nuw i32 1, %i.ac
  %i.ae = lshr i32 %i.ad, 1
  %i.af = add i32 %i.ae, %.01928                  ; 2 uses
  %i.ag = add nuw nsw i64 %.01829, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !16

bb.b:                                             ; preds = %._crit_edge
  %i.ah = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %.lcssa, i1 true)
  %i.ai = xor i32 %i.ah, 31                       ; 2 uses
  %i.aj = icmp samesign ugt i32 %i.ai, 12
  %. = select i1 %i.aj, i32 -1, i32 %i.ai
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge, %bb.a
  %.2 = phi i32 [ -1, %bb.a ], [ %., %bb.b ], [ -1, %._crit_edge ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ZL_PivCoHuffman_countWeights(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 12 uses
  %i.b = alloca [16 x i8], align 16               ; 13 uses
  %i.c = alloca [16 x i8], align 16               ; 13 uses
  %i.d = alloca [16 x i8], align 16               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = and i64 %2, 3                            ; 4 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.preheader38, label %.lr.ph

.preheader38:                                     ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %bb.a
  %.not43 = icmp ult i64 %2, 4
  br i1 %.not43, label %.preheader, label %.lr.ph41

.lr.ph:                                           ; preds = %bb.a
  %i.f = load i8, ptr %1, align 1, !tbaa !11
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !11
  %i.j = add i8 %i.i, 1
  store i8 %i.j, ptr %i.h, align 1, !tbaa !11
  %exitcond.not = icmp eq i64 %i.e, 1
  br i1 %exitcond.not, label %.preheader38, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !11
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.m ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !11
  %i.p = add i8 %i.o, 1
  store i8 %i.p, ptr %i.n, align 1, !tbaa !11
  %exitcond.not.1 = icmp eq i64 %i.e, 2
  br i1 %exitcond.not.1, label %.preheader38, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !11
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !11
  %i.v = add i8 %i.u, 1
  store i8 %i.v, ptr %i.t, align 1, !tbaa !11
  br label %.preheader38

.preheader.loopexit:                              ; preds = %.lr.ph41
  %i.w = load <2 x i8>, ptr %i.b, align 16, !tbaa !11
  %i.x = load <2 x i8>, ptr %i.c, align 16, !tbaa !11
  %i.y = load <2 x i8>, ptr %i.d, align 16, !tbaa !11
  %.phi.trans.insert52 = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.phi.trans.insert54 = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.phi.trans.insert56 = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.z = load <4 x i8>, ptr %.phi.trans.insert52, align 2, !tbaa !11
  %i.aa = load <4 x i8>, ptr %.phi.trans.insert54, align 2, !tbaa !11
  %i.ab = load <4 x i8>, ptr %.phi.trans.insert56, align 2, !tbaa !11
  %i.ac = zext <2 x i8> %i.w to <2 x i16>
  %i.ad = zext <2 x i8> %i.x to <2 x i16>
  %i.ae = zext <2 x i8> %i.y to <2 x i16>
  %i.af = zext <4 x i8> %i.z to <4 x i16>
  %i.ag = shufflevector <4 x i16> %i.af, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ah = zext <4 x i8> %i.aa to <4 x i16>
  %i.ai = shufflevector <4 x i16> %i.ah, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aj = zext <4 x i8> %i.ab to <4 x i16>
  %i.ak = shufflevector <4 x i16> %i.aj, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader38
  %i.al = phi <2 x i16> [ %i.ac, %.preheader.loopexit ], [ zeroinitializer, %.preheader38 ]
  %i.am = phi <2 x i16> [ %i.ad, %.preheader.loopexit ], [ zeroinitializer, %.preheader38 ]
  %i.an = phi <2 x i16> [ %i.ae, %.preheader.loopexit ], [ zeroinitializer, %.preheader38 ]
  %i.ao = phi <8 x i16> [ %i.ak, %.preheader.loopexit ], [ <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, %.preheader38 ]
  %i.ap = phi <8 x i16> [ %i.ai, %.preheader.loopexit ], [ <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, %.preheader38 ]
  %i.aq = phi <8 x i16> [ %i.ag, %.preheader.loopexit ], [ <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, %.preheader38 ]
  %i.ar = load <2 x i8>, ptr %i.a, align 16, !tbaa !11
  %i.as = zext <2 x i8> %i.ar to <2 x i16>
  %i.at = add nuw nsw <2 x i16> %i.al, %i.as
  %i.au = add nuw nsw <2 x i16> %i.at, %i.am
  %i.av = add nuw nsw <2 x i16> %i.au, %i.an
  store <2 x i16> %i.av, ptr %0, align 2, !tbaa !14
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.az = load i8, ptr %i.ay, align 2, !tbaa !11
  %i.ba = zext i8 %i.az to i16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !11
  %i.bd = zext i8 %i.bc to i16
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !11
  %i.bg = zext i8 %i.bf to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !11
  %i.bj = zext i8 %i.bi to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !11
  %i.bm = zext i8 %i.bl to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 7
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !11
  %i.bp = zext i8 %i.bo to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !11
  %i.bs = zext i8 %i.br to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !11
  %i.bv = zext i8 %i.bu to i16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !11
  %i.by = zext i8 %i.bx to i16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !11
  %i.cb = zext i8 %i.ca to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !11
  %i.ce = zext i8 %i.cd to i16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !11
  %i.ch = zext i8 %i.cg to i16
  %i.ci = load <8 x i8>, ptr %i.aw, align 2, !tbaa !11
  %i.cj = zext <8 x i8> %i.ci to <8 x i16>
  %i.ck = insertelement <8 x i16> %i.aq, i16 %i.ba, i64 4
  %i.cl = insertelement <8 x i16> %i.ck, i16 %i.bj, i64 5
  %i.cm = insertelement <8 x i16> %i.cl, i16 %i.bs, i64 6
  %i.cn = insertelement <8 x i16> %i.cm, i16 %i.cb, i64 7
  %i.co = add nuw nsw <8 x i16> %i.cn, %i.cj
  %i.cp = insertelement <8 x i16> %i.ap, i16 %i.bd, i64 4
  %i.cq = insertelement <8 x i16> %i.cp, i16 %i.bm, i64 5
  %i.cr = insertelement <8 x i16> %i.cq, i16 %i.bv, i64 6
  %i.cs = insertelement <8 x i16> %i.cr, i16 %i.ce, i64 7
  %i.ct = add nuw nsw <8 x i16> %i.co, %i.cs
  %i.cu = insertelement <8 x i16> %i.ao, i16 %i.bg, i64 4
  %i.cv = insertelement <8 x i16> %i.cu, i16 %i.bp, i64 5
  %i.cw = insertelement <8 x i16> %i.cv, i16 %i.by, i64 6
  %i.cx = insertelement <8 x i16> %i.cw, i16 %i.ch, i64 7
  %i.cy = add nuw nsw <8 x i16> %i.ct, %i.cx
  store <8 x i16> %i.cy, ptr %i.ax, align 2, !tbaa !14
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.de = load <4 x i8>, ptr %i.cz, align 2, !tbaa !11
  %i.df = zext <4 x i8> %i.de to <4 x i16>
  %i.dg = load <4 x i8>, ptr %i.da, align 2, !tbaa !11
  %i.dh = zext <4 x i8> %i.dg to <4 x i16>
  %i.di = add nuw nsw <4 x i16> %i.dh, %i.df
  %i.dj = load <4 x i8>, ptr %i.db, align 2, !tbaa !11
  %i.dk = zext <4 x i8> %i.dj to <4 x i16>
  %i.dl = add nuw nsw <4 x i16> %i.di, %i.dk
  %i.dm = load <4 x i8>, ptr %i.dc, align 2, !tbaa !11
  %i.dn = zext <4 x i8> %i.dm to <4 x i16>
  %i.do = add nuw nsw <4 x i16> %i.dl, %i.dn
end_hunk_0
