Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/xts128gb?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { [2 x i64] }

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @ossl_crypto_xts128gb_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %union.anon, align 16               ; 17 uses
  %7 = alloca %union.anon, align 16               ; 41 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #3
  %i.a = icmp ult i64 %4, 16
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24
  call void %i.c(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef %i.e) #3
  %.not = icmp ne i32 %5, 0                       ; 2 uses
  %i.f = and i64 %4, 15
  %.not101 = icmp eq i64 %i.f, 0
  %or.cond = or i1 %.not, %.not101
  %i.g = add i64 %4, -16
  %spec.select = select i1 %or.cond, i64 %4, i64 %i.g ; 3 uses
  %i.h = icmp ugt i64 %spec.select, 15
  br i1 %i.h, label %.lr.ph, label %select.unfold._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 15
  %i.m = load <2 x i64>, ptr %6, align 16, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %select.unfold
  %.092109 = phi ptr [ %2, %.lr.ph ], [ %i.z, %select.unfold ] ; 2 uses
  %.093108 = phi ptr [ %3, %.lr.ph ], [ %i.aa, %select.unfold ] ; 3 uses
  %.1107 = phi i64 [ %spec.select, %.lr.ph ], [ %i.ab, %select.unfold ]
  %i.n = phi <2 x i64> [ %i.m, %.lr.ph ], [ %i.aq, %select.unfold ]
  %i.o = load <2 x i64>, ptr %.092109, align 1, !tbaa !27
  %i.p = xor <2 x i64> %i.n, %i.o
  store <2 x i64> %i.p, ptr %7, align 16, !tbaa !25
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !28
  %i.r = load ptr, ptr %0, align 8, !tbaa !29
  call void %i.q(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %i.r) #3
  %i.s = load i64, ptr %6, align 16, !tbaa !25    ; 2 uses
  %i.t = load i64, ptr %7, align 16, !tbaa !25
  %i.u = xor i64 %i.t, %i.s                       ; 3 uses
  store i64 %i.u, ptr %7, align 16, !tbaa !25
  store i64 %i.u, ptr %.093108, align 1, !tbaa !27
  %i.v = load i64, ptr %i.i, align 8, !tbaa !25   ; 2 uses
  %i.w = load i64, ptr %i.j, align 8, !tbaa !25
  %i.x = xor i64 %i.w, %i.v                       ; 2 uses
  store i64 %i.x, ptr %i.j, align 8, !tbaa !25
  %i.y = getelementptr inbounds nuw i8, ptr %.093108, i64 8
  store i64 %i.x, ptr %i.y, align 1, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %.092109, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.093108, i64 16 ; 2 uses
  %i.ab = add i64 %.1107, -16                     ; 4 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.s) #4, !srcloc !30 ; 3 uses
  %i.ae = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.v) #4, !srcloc !31 ; 2 uses
  %i.af = call i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ae, i64 63)
  %i.ag = lshr i64 %i.ad, 1                       ; 2 uses
  store i64 %i.ag, ptr %i.i, align 8, !tbaa !25
  %i.ah = and i64 %i.ae, 1
  %.not103 = icmp eq i64 %i.ah, 0
  br i1 %.not103, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = lshr i64 %i.ad, 57
  %i.aj = trunc nuw nsw i64 %i.ai to i8
  %i.ak = xor i8 %i.aj, -31
  store i8 %i.ak, ptr %i.l, align 1, !tbaa !25
  %.pre130 = load i64, ptr %i.i, align 8, !tbaa !25
  br label %select.unfold

select.unfold:                                    ; preds = %bb.e, %bb.d
  %i.al = phi i64 [ %.pre130, %bb.e ], [ %i.ag, %bb.d ]
  %i.am = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.af) #4, !srcloc !32 ; 2 uses
  %i.an = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.al) #4, !srcloc !33 ; 2 uses
  store i64 %i.an, ptr %6, align 16, !tbaa !25
  store i64 %i.am, ptr %i.i, align 8, !tbaa !25
  %i.ao = icmp ugt i64 %i.ab, 15
  %i.ap = insertelement <2 x i64> poison, i64 %i.an, i64 0
  %i.aq = insertelement <2 x i64> %i.ap, i64 %i.am, i64 1
  br i1 %i.ao, label %bb.c, label %select.unfold._crit_edge, !llvm.loop !8

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.b
  %i.ar = phi i64 [ undef, %bb.b ], [ %i.u, %select.unfold ]
  %.1.lcssa = phi i64 [ %spec.select, %bb.b ], [ %i.ab, %select.unfold ] ; 19 uses
  %.093.lcssa = phi ptr [ %3, %bb.b ], [ %i.aa, %select.unfold ] ; 15 uses
  %.092.lcssa = phi ptr [ %2, %bb.b ], [ %i.z, %select.unfold ] ; 15 uses
  br i1 %.not, label %.preheader, label %bb.f

.preheader:                                       ; preds = %select.unfold._crit_edge
  %.not118 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not118, label %._crit_edge116, label %iter.check218

iter.check218:                                    ; preds = %.preheader
  %min.iters.check192 = icmp samesign ult i64 %.1.lcssa, 4
  br i1 %min.iters.check192, label %.lr.ph115.preheader, label %vector.memcheck193

vector.memcheck193:                               ; preds = %iter.check218
  %i.as = getelementptr i8, ptr %.093.lcssa, i64 %.1.lcssa ; 2 uses
  %i.at = getelementptr i8, ptr %7, i64 %.1.lcssa ; 2 uses
  %i.au = getelementptr i8, ptr %.092.lcssa, i64 %.1.lcssa ; 2 uses
  %bound0194 = icmp ult ptr %.093.lcssa, %i.at
  %bound1195 = icmp ult ptr %7, %i.as
  %found.conflict196 = and i1 %bound0194, %bound1195
  %bound0197 = icmp ult ptr %.093.lcssa, %i.au
  %bound1198 = icmp ult ptr %.092.lcssa, %i.as
  %found.conflict199 = and i1 %bound0197, %bound1198
  %conflict.rdx200 = or i1 %found.conflict196, %found.conflict199
  %bound0201 = icmp ult ptr %7, %i.au
  %bound1202 = icmp ult ptr %.092.lcssa, %i.at
  %found.conflict203 = and i1 %bound0201, %bound1202
  %conflict.rdx204 = or i1 %conflict.rdx200, %found.conflict203
  br i1 %conflict.rdx204, label %.lr.ph115.preheader, label %vec.epilog.ph222

vec.epilog.ph222:                                 ; preds = %vector.memcheck193
  %n.vec224 = and i64 %.1.lcssa, 12               ; 3 uses
  br label %vec.epilog.vector.body225

vec.epilog.vector.body225:                        ; preds = %vec.epilog.vector.body225, %vec.epilog.ph222
  %index226 = phi i64 [ 0, %vec.epilog.ph222 ], [ %index.next229, %vec.epilog.vector.body225 ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.092.lcssa, i64 %index226
  %wide.load227 = load <4 x i8>, ptr %i.av, align 1, !tbaa !25, !alias.scope !35
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 %index226 ; 2 uses
  %wide.load228 = load <4 x i8>, ptr %i.aw, align 4, !tbaa !25, !alias.scope !36, !noalias !35
  %i.ax = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 %index226
  store <4 x i8> %wide.load228, ptr %i.ax, align 1, !tbaa !25, !alias.scope !37, !noalias !38
  store <4 x i8> %wide.load227, ptr %i.aw, align 4, !tbaa !25, !alias.scope !36, !noalias !35
  %index.next229 = add nuw i64 %index226, 4       ; 2 uses
  %i.ay = icmp eq i64 %index.next229, %n.vec224
  br i1 %i.ay, label %vec.epilog.middle.block230, label %vec.epilog.vector.body225, !llvm.loop !13

vec.epilog.middle.block230:                       ; preds = %vec.epilog.vector.body225
  %cmp.n231 = icmp eq i64 %.1.lcssa, %n.vec224
  br i1 %cmp.n231, label %._crit_edge116.loopexit, label %.lr.ph115.preheader

.lr.ph115.preheader:                              ; preds = %iter.check218, %vector.memcheck193, %vec.epilog.middle.block230
  %indvars.iv125.ph = phi i64 [ 0, %vector.memcheck193 ], [ 0, %iter.check218 ], [ %n.vec224, %vec.epilog.middle.block230 ] ; 6 uses
  %.neg242 = or disjoint i64 %indvars.iv125.ph, 1
  %xtraiter240 = and i64 %.1.lcssa, 1
  %lcmp.mod241.not = icmp eq i64 %xtraiter240, 0
  br i1 %lcmp.mod241.not, label %.lr.ph115.prol.loopexit, label %.lr.ph115.prol

.lr.ph115.prol:                                   ; preds = %.lr.ph115.preheader
  %i.az = getelementptr inbounds nuw i8, ptr %.092.lcssa, i64 %indvars.iv125.ph
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !25
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv125.ph ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 4, !tbaa !25
  %i.bd = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 %indvars.iv125.ph
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !25
  store i8 %i.ba, ptr %i.bb, align 4, !tbaa !25
  %indvars.iv.next126.prol = or disjoint i64 %indvars.iv125.ph, 1
  br label %.lr.ph115.prol.loopexit

.lr.ph115.prol.loopexit:                          ; preds = %.lr.ph115.prol, %.lr.ph115.preheader
  %indvars.iv125.unr = phi i64 [ %indvars.iv125.ph, %.lr.ph115.preheader ], [ %indvars.iv.next126.prol, %.lr.ph115.prol ]
  %i.be = icmp eq i64 %.1.lcssa, %.neg242
  br i1 %i.be, label %._crit_edge116.loopexit, label %.lr.ph115

.lr.ph115:                                        ; preds = %.lr.ph115.prol.loopexit, %.lr.ph115
  %indvars.iv125 = phi i64 [ %indvars.iv.next126.1, %.lr.ph115 ], [ %indvars.iv125.unr, %.lr.ph115.prol.loopexit ] ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.092.lcssa, i64 %indvars.iv125
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !25
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv125 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !25
  %i.bj = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 %indvars.iv125
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !25
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !25
  %indvars.iv.next126 = add nuw i64 %indvars.iv125, 1 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.092.lcssa, i64 %indvars.iv.next126
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !25
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv.next126 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !25
  %i.bo = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 %indvars.iv.next126
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !25
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !25
  %indvars.iv.next126.1 = add nuw i64 %indvars.iv125, 2 ; 2 uses
  %exitcond128.not.1 = icmp eq i64 %indvars.iv.next126.1, %.1.lcssa
  br i1 %exitcond128.not.1, label %._crit_edge116.loopexit, label %.lr.ph115, !llvm.loop !14

._crit_edge116.loopexit:                          ; preds = %.lr.ph115.prol.loopexit, %.lr.ph115, %vec.epilog.middle.block230
  %.pre133 = load i64, ptr %7, align 16, !tbaa !25
  br label %._crit_edge116

._crit_edge116:                                   ; preds = %._crit_edge116.loopexit, %.preheader
  %i.bp = phi i64 [ %.pre133, %._crit_edge116.loopexit ], [ %i.ar, %.preheader ]
  %i.bq = load i64, ptr %6, align 16, !tbaa !25
  %i.br = xor i64 %i.bp, %i.bq
  store i64 %i.br, ptr %7, align 16, !tbaa !25
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !25
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !25
  %i.bw = xor i64 %i.bv, %i.bt
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !25
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !28
  %i.bz = load ptr, ptr %0, align 8, !tbaa !29
  call void %i.by(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %i.bz) #3
  %i.ca = load <2 x i64>, ptr %6, align 16, !tbaa !25
  %i.cb = load <2 x i64>, ptr %7, align 16, !tbaa !25
  %i.cc = xor <2 x i64> %i.cb, %i.ca
  store <2 x i64> %i.cc, ptr %7, align 16, !tbaa !25
  %i.cd = getelementptr inbounds i8, ptr %.093.lcssa, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cd, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false)
  br label %.loopexit

bb.f:                                             ; preds = %select.unfold._crit_edge
  %i.ce = load i64, ptr %6, align 16, !tbaa !25
  %i.cf = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ce) #4, !srcloc !41 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !25
  %i.ci = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ch) #4, !srcloc !42 ; 2 uses
  %i.cj = call i64 @llvm.fshl.i64(i64 %i.cf, i64 %i.ci, i64 63)
  %i.ck = lshr i64 %i.cf, 1                       ; 2 uses
  %i.cl = and i64 %i.ci, 1
  %.not102 = icmp eq i64 %i.cl, 0
  %.sroa.7.15.insert.insert = xor i64 %i.ck, -2233785415175766016
  %.sroa.7.0 = select i1 %.not102, i64 %i.ck, i64 %.sroa.7.15.insert.insert
  %i.cm = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.cj) #4, !srcloc !43 ; 2 uses
  %i.cn = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.sroa.7.0) #4, !srcloc !44 ; 2 uses
  %i.co = load i64, ptr %.092.lcssa, align 1, !tbaa !27
  %i.cp = xor i64 %i.co, %i.cn
  store i64 %i.cp, ptr %7, align 16, !tbaa !25
  %i.cq = getelementptr inbounds nuw i8, ptr %.092.lcssa, i64 8
  %i.cr = load i64, ptr %i.cq, align 1, !tbaa !27
  %i.cs = xor i64 %i.cr, %i.cm
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !25
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !28
  %i.cw = load ptr, ptr %0, align 8, !tbaa !29
  call void %i.cv(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %i.cw) #3
  %i.cx = load i64, ptr %7, align 16, !tbaa !25
  %i.cy = xor i64 %i.cx, %i.cn                    ; 2 uses
  store i64 %i.cy, ptr %7, align 16, !tbaa !25
  %i.cz = load i64, ptr %i.ct, align 8, !tbaa !25
  %i.da = xor i64 %i.cz, %i.cm                    ; 2 uses
  store i64 %i.da, ptr %i.ct, align 8, !tbaa !25
  %.not117 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not117, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.f
  %min.iters.check = icmp samesign ult i64 %.1.lcssa, 4
  br i1 %min.iters.check, label %.lr.ph113.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.db = getelementptr i8, ptr %.093.lcssa, i64 16 ; 2 uses
  %i.dc = or disjoint i64 %.1.lcssa, 16           ; 2 uses
  %i.dd = getelementptr i8, ptr %.093.lcssa, i64 %i.dc ; 2 uses
  %i.de = getelementptr i8, ptr %7, i64 %.1.lcssa ; 2 uses
  %i.df = getelementptr i8, ptr %.092.lcssa, i64 16 ; 2 uses
  %i.dg = getelementptr i8, ptr %.092.lcssa, i64 %i.dc ; 2 uses
  %bound0 = icmp ult ptr %i.db, %i.de
  %bound1 = icmp ult ptr %7, %i.dd
  %found.conflict = and i1 %bound0, %bound1
  %bound0161 = icmp ult ptr %i.db, %i.dg
  %bound1162 = icmp ult ptr %i.df, %i.dd
  %found.conflict163 = and i1 %bound0161, %bound1162
  %conflict.rdx = or i1 %found.conflict, %found.conflict163
  %bound0164 = icmp ult ptr %7, %i.dg
  %bound1165 = icmp ult ptr %i.df, %i.de
  %found.conflict166 = and i1 %bound0164, %bound1165
  %conflict.rdx167 = or i1 %conflict.rdx, %found.conflict166
  br i1 %conflict.rdx167, label %.lr.ph113.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec172 = and i64 %.1.lcssa, 12               ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index173 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next176, %vec.epilog.vector.body ] ; 3 uses
  %i.dh = add nuw i64 %index173, 16               ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.092.lcssa, i64 %i.dh
  %wide.load174 = load <4 x i8>, ptr %i.di, align 1, !tbaa !25, !alias.scope !45
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 %index173 ; 2 uses
  %wide.load175 = load <4 x i8>, ptr %i.dj, align 4, !tbaa !25, !alias.scope !46, !noalias !45
  %i.dk = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 %i.dh
  store <4 x i8> %wide.load175, ptr %i.dk, align 1, !tbaa !25, !alias.scope !47, !noalias !48
  store <4 x i8> %wide.load174, ptr %i.dj, align 4, !tbaa !25, !alias.scope !46, !noalias !45
  %index.next176 = add nuw i64 %index173, 4       ; 2 uses
  %i.dl = icmp eq i64 %index.next176, %n.vec172
  br i1 %i.dl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !19

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n177 = icmp eq i64 %.1.lcssa, %n.vec172
  br i1 %cmp.n177, label %._crit_edge.loopexit, label %.lr.ph113.preheader

.lr.ph113.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec172, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  %xtraiter = and i64 %.1.lcssa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph113.prol.loopexit, label %.lr.ph113.prol

.lr.ph113.prol:                                   ; preds = %.lr.ph113.preheader
  %i.dm = or disjoint i64 %indvars.iv.ph, 16      ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.092.lcssa, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !25
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv.ph ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 4, !tbaa !25
  %i.dr = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 %i.dm
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !25
  store i8 %i.do, ptr %i.dp, align 4, !tbaa !25
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph113.prol.loopexit

.lr.ph113.prol.loopexit:                          ; preds = %.lr.ph113.prol, %.lr.ph113.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph113.preheader ], [ %indvars.iv.next.prol, %.lr.ph113.prol ]
  %i.ds = icmp eq i64 %.1.lcssa, %.neg
  br i1 %i.ds, label %._crit_edge.loopexit, label %.lr.ph113

.lr.ph113:                                        ; preds = %.lr.ph113.prol.loopexit, %.lr.ph113
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph113 ], [ %indvars.iv.unr, %.lr.ph113.prol.loopexit ] ; 5 uses
  %i.dt = add nuw i64 %indvars.iv, 16             ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.092.lcssa, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !25
  %i.dw = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !25
  %i.dy = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 %i.dt
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !25
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !25
  %i.dz = add nuw i64 %indvars.iv, 17             ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.092.lcssa, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !25
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1 ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !25
  %i.ef = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 %i.dz
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !25
  store i8 %i.eb, ptr %i.ed, align 1, !tbaa !25
  %indvars.iv.next.1 = add nuw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %.1.lcssa
  br i1 %exitcond.not.1, label %._crit_edge.loopexit, label %.lr.ph113, !llvm.loop !20

._crit_edge.loopexit:                             ; preds = %.lr.ph113.prol.loopexit, %.lr.ph113, %vec.epilog.middle.block
  %.pre131 = load i64, ptr %7, align 16, !tbaa !25
  %.pre132 = load i64, ptr %i.ct, align 8, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %i.eg = phi i64 [ %.pre132, %._crit_edge.loopexit ], [ %i.da, %bb.f ]
  %i.eh = phi i64 [ %.pre131, %._crit_edge.loopexit ], [ %i.cy, %bb.f ]
  %i.ei = load i64, ptr %6, align 16, !tbaa !25
  %i.ej = xor i64 %i.eh, %i.ei
  store i64 %i.ej, ptr %7, align 16, !tbaa !25
  %i.ek = load i64, ptr %i.cg, align 8, !tbaa !25
  %i.el = xor i64 %i.eg, %i.ek
  store i64 %i.el, ptr %i.ct, align 8, !tbaa !25
  %i.em = load ptr, ptr %i.cu, align 8, !tbaa !28
  %i.en = load ptr, ptr %0, align 8, !tbaa !29
  call void %i.em(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %i.en) #3
  %i.eo = load <2 x i64>, ptr %7, align 16, !tbaa !25
  %i.ep = load <2 x i64>, ptr %6, align 16, !tbaa !25
  %i.eq = xor <2 x i64> %i.ep, %i.eo
  store <2 x i64> %i.eq, ptr %.093.lcssa, align 1, !tbaa !27
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %._crit_edge116, %._crit_edge, %bb.a
  %.0 = phi i32 [ 0, %._crit_edge116 ], [ -1, %bb.a ], [ 0, %._crit_edge ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }
attributes #4 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !34}
!9 = distinct !{!9, i1 false, !"LVerDomain"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !34, !39, !40}
!14 = distinct !{!14, !34, !39}
!15 = distinct !{!15, i1 false, !"LVerDomain"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !34, !39, !40}
!20 = distinct !{!20, !34, !39}
!21 = !{!"any pointer", !4, i64 0}
!22 = !{!"xts128_context", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24}
!23 = !{!22, !21, i64 24}
!24 = !{!22, !21, i64 8}
!25 = !{!4, !4, i64 0}
!26 = !{!"long long", !4, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!22, !21, i64 16}
!29 = !{!22, !21, i64 0}
!30 = !{i64 2148296794}
!31 = !{i64 2148296950}
!32 = !{i64 2148297106}
!33 = !{i64 2148297262}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!10}
!36 = !{!11}
!37 = !{!12}
!38 = !{!11, !10}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = !{i64 2148297442}
!42 = !{i64 2148297598}
!43 = !{i64 2148297754}
!44 = !{i64 2148297911}
!45 = !{!16}
!46 = !{!17}
!47 = !{!18}
!48 = !{!17, !16}
end_hunk_0
