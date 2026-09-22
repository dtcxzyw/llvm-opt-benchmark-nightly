Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/xts128gb?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { [2 x i64] }

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @ossl_crypto_xts128gb_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26
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
  %i.m = load <2 x i64>, ptr %6, align 16, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %select.unfold
  %.092109 = phi ptr [ %2, %.lr.ph ], [ %i.z, %select.unfold ] ; 2 uses
  %.093108 = phi ptr [ %3, %.lr.ph ], [ %i.aa, %select.unfold ] ; 3 uses
  %.1107 = phi i64 [ %spec.select, %.lr.ph ], [ %i.ab, %select.unfold ]
  %i.n = phi <2 x i64> [ %i.m, %.lr.ph ], [ %i.aq, %select.unfold ]
  %i.o = load <2 x i64>, ptr %.092109, align 1, !tbaa !29
  %i.p = xor <2 x i64> %i.n, %i.o
  store <2 x i64> %i.p, ptr %7, align 16, !tbaa !27
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !30
  %i.r = load ptr, ptr %0, align 8, !tbaa !31
  call void %i.q(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %i.r) #3
  %i.s = load i64, ptr %6, align 16, !tbaa !27    ; 2 uses
  %i.t = load i64, ptr %7, align 16, !tbaa !27
  %i.u = xor i64 %i.t, %i.s                       ; 3 uses
  store i64 %i.u, ptr %7, align 16, !tbaa !27
  store i64 %i.u, ptr %.093108, align 1, !tbaa !29
  %i.v = load i64, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %i.w = load i64, ptr %i.j, align 8, !tbaa !27
  %i.x = xor i64 %i.w, %i.v                       ; 2 uses
  store i64 %i.x, ptr %i.j, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %.093108, i64 8
  store i64 %i.x, ptr %i.y, align 1, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %.092109, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.093108, i64 16 ; 2 uses
  %i.ab = add i64 %.1107, -16                     ; 4 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.s) #4, !srcloc !32 ; 3 uses
  %i.ae = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.v) #4, !srcloc !33 ; 2 uses
  %i.af = call i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ae, i64 63)
  %i.ag = lshr i64 %i.ad, 1                       ; 2 uses
  store i64 %i.ag, ptr %i.i, align 8, !tbaa !27
  %i.ah = and i64 %i.ae, 1
  %.not103 = icmp eq i64 %i.ah, 0
  br i1 %.not103, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = lshr i64 %i.ad, 57
  %i.aj = trunc nuw nsw i64 %i.ai to i8
  %i.ak = xor i8 %i.aj, -31
  store i8 %i.ak, ptr %i.l, align 1, !tbaa !27
  %.pre130 = load i64, ptr %i.i, align 8, !tbaa !27
  br label %select.unfold

select.unfold:                                    ; preds = %bb.e, %bb.d
  %i.al = phi i64 [ %.pre130, %bb.e ], [ %i.ag, %bb.d ]
  %i.am = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.af) #4, !srcloc !34 ; 2 uses
  %i.an = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.al) #4, !srcloc !35 ; 2 uses
  store i64 %i.an, ptr %6, align 16, !tbaa !27
  store i64 %i.am, ptr %i.i, align 8, !tbaa !27
  %i.ao = icmp ugt i64 %i.ab, 15
  %i.ap = insertelement <2 x i64> poison, i64 %i.an, i64 0
  %i.aq = insertelement <2 x i64> %i.ap, i64 %i.am, i64 1
  br i1 %i.ao, label %bb.c, label %select.unfold._crit_edge, !llvm.loop !10

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.b
  %i.ar = phi i64 [ undef, %bb.b ], [ %i.u, %select.unfold ]
  %.1.lcssa = phi i64 [ %spec.select, %bb.b ], [ %i.ab, %select.unfold ] ; 19 uses
  %.093.lcssa = phi ptr [ %3, %bb.b ], [ %i.aa, %select.unfold ] ; 15 uses
  %.092.lcssa = phi ptr [ %2, %bb.b ], [ %i.z, %select.unfold ] ; 15 uses
  br i1 %.not, label %.preheader, label %bb.f

.preheader:                                       ; preds = %select.unfold._crit_edge
  %.not118 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not118, label %._crit_edge116, label %iter.check201

iter.check201:                                    ; preds = %.preheader
  %min.iters.check186 = icmp samesign ult i64 %.1.lcssa, 4
  br i1 %min.iters.check186, label %.lr.ph115.preheader, label %vector.memcheck171

vector.memcheck171:                               ; preds = %iter.check201
  %scevgep172 = getelementptr i8, ptr %.093.lcssa, i64 %.1.lcssa ; 2 uses
  %scevgep173 = getelementptr i8, ptr %7, i64 %.1.lcssa ; 2 uses
  %scevgep174 = getelementptr i8, ptr %.092.lcssa, i64 %.1.lcssa ; 2 uses
  %bound0175 = icmp ult ptr %.093.lcssa, %scevgep173
  %bound1176 = icmp ult ptr %7, %scevgep172
  %found.conflict177 = and i1 %bound0175, %bound1176
  %bound0178 = icmp ult ptr %.093.lcssa, %scevgep174
  %bound1179 = icmp ult ptr %.092.lcssa, %scevgep172
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx181 = or i1 %found.conflict177, %found.conflict180
  %bound0182 = icmp ult ptr %7, %scevgep174
  %bound1183 = icmp ult ptr %.092.lcssa, %scevgep173
  %found.conflict184 = and i1 %bound0182, %bound1183
  %conflict.rdx185 = or i1 %conflict.rdx181, %found.conflict184
  br i1 %conflict.rdx185, label %.lr.ph115.preheader, label %vec.epilog.ph205

vec.epilog.ph205:                                 ; preds = %vector.memcheck171
  %n.vec206 = and i64 %.1.lcssa, 12               ; 3 uses
  br label %vec.epilog.vector.body207

vec.epilog.vector.body207:                        ; preds = %vec.epilog.vector.body207, %vec.epilog.ph205
  %index208 = phi i64 [ 0, %vec.epilog.ph205 ], [ %index.next211, %vec.epilog.vector.body207 ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.092.lcssa, i64 %index208
  %wide.load209 = load <4 x i8>, ptr %i.as, align 1, !tbaa !27, !alias.scope !37
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 %index208 ; 2 uses
  %wide.load210 = load <4 x i8>, ptr %i.at, align 4, !tbaa !27, !alias.scope !38, !noalias !37
  %i.au = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 %index208
  store <4 x i8> %wide.load210, ptr %i.au, align 1, !tbaa !27, !alias.scope !39, !noalias !40
  store <4 x i8> %wide.load209, ptr %i.at, align 4, !tbaa !27, !alias.scope !38, !noalias !37
  %index.next211 = add nuw i64 %index208, 4       ; 2 uses
  %i.av = icmp eq i64 %index.next211, %n.vec206
  br i1 %i.av, label %vec.epilog.middle.block212, label %vec.epilog.vector.body207, !llvm.loop !15

vec.epilog.middle.block212:                       ; preds = %vec.epilog.vector.body207
  %cmp.n213 = icmp eq i64 %.1.lcssa, %n.vec206
  br i1 %cmp.n213, label %._crit_edge116.loopexit, label %.lr.ph115.preheader

.lr.ph115.preheader:                              ; preds = %vector.memcheck171, %iter.check201, %vec.epilog.middle.block212
  %indvars.iv125.ph = phi i64 [ 0, %vector.memcheck171 ], [ 0, %iter.check201 ], [ %n.vec206, %vec.epilog.middle.block212 ] ; 6 uses
  %.neg224 = or disjoint i64 %indvars.iv125.ph, 1
  %xtraiter222 = and i64 %.1.lcssa, 1
  %lcmp.mod223.not = icmp eq i64 %xtraiter222, 0
  br i1 %lcmp.mod223.not, label %.lr.ph115.prol.loopexit, label %.lr.ph115.prol

.lr.ph115.prol:                                   ; preds = %.lr.ph115.preheader
  %i.aw = getelementptr inbounds nuw i8, ptr %.092.lcssa, i64 %indvars.iv125.ph
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !27
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv125.ph ; 2 uses
  %i.az = load i8, ptr %i.ay, align 4, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 %indvars.iv125.ph
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !27
  store i8 %i.ax, ptr %i.ay, align 4, !tbaa !27
  %indvars.iv.next126.prol = or disjoint i64 %indvars.iv125.ph, 1
  br label %.lr.ph115.prol.loopexit

.lr.ph115.prol.loopexit:                          ; preds = %.lr.ph115.prol, %.lr.ph115.preheader
  %indvars.iv125.unr = phi i64 [ %indvars.iv125.ph, %.lr.ph115.preheader ], [ %indvars.iv.next126.prol, %.lr.ph115.prol ]
  %i.bb = icmp eq i64 %.1.lcssa, %.neg224
  br i1 %i.bb, label %._crit_edge116.loopexit, label %.lr.ph115

.lr.ph115:                                        ; preds = %.lr.ph115.prol.loopexit, %.lr.ph115
  %indvars.iv125 = phi i64 [ %indvars.iv.next126.1, %.lr.ph115 ], [ %indvars.iv125.unr, %.lr.ph115.prol.loopexit ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.092.lcssa, i64 %indvars.iv125
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !27
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv125 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !27
  %i.bg = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 %indvars.iv125
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !27
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !27
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.092.lcssa, i64 %indvars.iv.next126
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !27
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv.next126 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !27
  %i.bl = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 %indvars.iv.next126
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !27
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !27
  %indvars.iv.next126.1 = add nuw nsw i64 %indvars.iv125, 2 ; 2 uses
  %exitcond128.not.1 = icmp eq i64 %indvars.iv.next126.1, %.1.lcssa
  br i1 %exitcond128.not.1, label %._crit_edge116.loopexit, label %.lr.ph115, !llvm.loop !16

._crit_edge116.loopexit:                          ; preds = %.lr.ph115.prol.loopexit, %.lr.ph115, %vec.epilog.middle.block212
  %.pre133 = load i64, ptr %7, align 16, !tbaa !27
  br label %._crit_edge116

._crit_edge116:                                   ; preds = %._crit_edge116.loopexit, %.preheader
  %i.bm = phi i64 [ %.pre133, %._crit_edge116.loopexit ], [ %i.ar, %.preheader ]
  %i.bn = load i64, ptr %6, align 16, !tbaa !27
  %i.bo = xor i64 %i.bm, %i.bn
  store i64 %i.bo, ptr %7, align 16, !tbaa !27
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !27
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !27
  %i.bt = xor i64 %i.bs, %i.bq
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !27
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !30
  %i.bw = load ptr, ptr %0, align 8, !tbaa !31
  call void %i.bv(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %i.bw) #3
  %i.bx = load <2 x i64>, ptr %6, align 16, !tbaa !27
  %i.by = load <2 x i64>, ptr %7, align 16, !tbaa !27
  %i.bz = xor <2 x i64> %i.by, %i.bx
  store <2 x i64> %i.bz, ptr %7, align 16, !tbaa !27
  %i.ca = getelementptr inbounds i8, ptr %.093.lcssa, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ca, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false)
  br label %.loopexit

bb.f:                                             ; preds = %select.unfold._crit_edge
  %i.cb = load i64, ptr %6, align 16, !tbaa !27
  %i.cc = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.cb) #4, !srcloc !43 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !27
  %i.cf = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ce) #4, !srcloc !44 ; 2 uses
  %i.cg = call i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.cf, i64 63)
  %i.ch = lshr i64 %i.cc, 1                       ; 2 uses
  %i.ci = and i64 %i.cf, 1
  %.not102 = icmp eq i64 %i.ci, 0
  %.sroa.7.15.insert.insert = xor i64 %i.ch, -2233785415175766016
  %.sroa.7.0 = select i1 %.not102, i64 %i.ch, i64 %.sroa.7.15.insert.insert
  %i.cj = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.cg) #4, !srcloc !45 ; 2 uses
  %i.ck = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.sroa.7.0) #4, !srcloc !46 ; 2 uses
  %i.cl = load i64, ptr %.092.lcssa, align 1, !tbaa !29
  %i.cm = xor i64 %i.cl, %i.ck
  store i64 %i.cm, ptr %7, align 16, !tbaa !27
  %i.cn = getelementptr inbounds nuw i8, ptr %.092.lcssa, i64 8
  %i.co = load i64, ptr %i.cn, align 1, !tbaa !29
  %i.cp = xor i64 %i.co, %i.cj
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !27
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !30
  %i.ct = load ptr, ptr %0, align 8, !tbaa !31
  call void %i.cs(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %i.ct) #3
  %i.cu = load i64, ptr %7, align 16, !tbaa !27
  %i.cv = xor i64 %i.cu, %i.ck                    ; 2 uses
  store i64 %i.cv, ptr %7, align 16, !tbaa !27
  %i.cw = load i64, ptr %i.cq, align 8, !tbaa !27
  %i.cx = xor i64 %i.cw, %i.cj                    ; 2 uses
  store i64 %i.cx, ptr %i.cq, align 8, !tbaa !27
  %.not117 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not117, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.f
  %min.iters.check = icmp samesign ult i64 %.1.lcssa, 4
  br i1 %min.iters.check, label %.lr.ph113.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.093.lcssa, i64 16 ; 2 uses
  %i.cy = or disjoint i64 %.1.lcssa, 16           ; 2 uses
  %scevgep150 = getelementptr i8, ptr %.093.lcssa, i64 %i.cy ; 2 uses
  %scevgep151 = getelementptr i8, ptr %7, i64 %.1.lcssa ; 2 uses
  %scevgep152 = getelementptr i8, ptr %.092.lcssa, i64 16 ; 2 uses
  %scevgep153 = getelementptr i8, ptr %.092.lcssa, i64 %i.cy ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep151
  %bound1 = icmp ult ptr %7, %scevgep150
  %found.conflict = and i1 %bound0, %bound1
  %bound0154 = icmp ult ptr %scevgep, %scevgep153
  %bound1155 = icmp ult ptr %scevgep152, %scevgep150
  %found.conflict156 = and i1 %bound0154, %bound1155
  %conflict.rdx = or i1 %found.conflict, %found.conflict156
  %bound0157 = icmp ult ptr %7, %scevgep153
  %bound1158 = icmp ult ptr %scevgep152, %scevgep151
  %found.conflict159 = and i1 %bound0157, %bound1158
  %conflict.rdx160 = or i1 %conflict.rdx, %found.conflict159
  br i1 %conflict.rdx160, label %.lr.ph113.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec165 = and i64 %.1.lcssa, 12               ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index166 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next169, %vec.epilog.vector.body ] ; 3 uses
  %i.cz = add nuw i64 %index166, 16               ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.092.lcssa, i64 %i.cz
  %wide.load167 = load <4 x i8>, ptr %i.da, align 1, !tbaa !27, !alias.scope !47
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 %index166 ; 2 uses
  %wide.load168 = load <4 x i8>, ptr %i.db, align 4, !tbaa !27, !alias.scope !48, !noalias !47
  %i.dc = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 %i.cz
  store <4 x i8> %wide.load168, ptr %i.dc, align 1, !tbaa !27, !alias.scope !49, !noalias !50
  store <4 x i8> %wide.load167, ptr %i.db, align 4, !tbaa !27, !alias.scope !48, !noalias !47
  %index.next169 = add nuw i64 %index166, 4       ; 2 uses
  %i.dd = icmp eq i64 %index.next169, %n.vec165
  br i1 %i.dd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !21

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n170 = icmp eq i64 %.1.lcssa, %n.vec165
  br i1 %cmp.n170, label %._crit_edge.loopexit, label %.lr.ph113.preheader

.lr.ph113.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec165, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  %xtraiter = and i64 %.1.lcssa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph113.prol.loopexit, label %.lr.ph113.prol

.lr.ph113.prol:                                   ; preds = %.lr.ph113.preheader
  %i.de = or disjoint i64 %indvars.iv.ph, 16      ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.092.lcssa, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !27
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv.ph ; 2 uses
  %i.di = load i8, ptr %i.dh, align 4, !tbaa !27
  %i.dj = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 %i.de
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !27
  store i8 %i.dg, ptr %i.dh, align 4, !tbaa !27
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph113.prol.loopexit

.lr.ph113.prol.loopexit:                          ; preds = %.lr.ph113.prol, %.lr.ph113.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph113.preheader ], [ %indvars.iv.next.prol, %.lr.ph113.prol ]
  %i.dk = icmp eq i64 %.1.lcssa, %.neg
  br i1 %i.dk, label %._crit_edge.loopexit, label %.lr.ph113

.lr.ph113:                                        ; preds = %.lr.ph113.prol.loopexit, %.lr.ph113
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph113 ], [ %indvars.iv.unr, %.lr.ph113.prol.loopexit ] ; 5 uses
  %i.dl = add nuw i64 %indvars.iv, 16             ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.092.lcssa, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !27
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !27
  %i.dq = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 %i.dl
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !27
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !27
  %i.dr = add nuw i64 %indvars.iv, 17             ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.092.lcssa, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !27
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1 ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !27
  %i.dx = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 %i.dr
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !27
  store i8 %i.dt, ptr %i.dv, align 1, !tbaa !27
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %.1.lcssa
  br i1 %exitcond.not.1, label %._crit_edge.loopexit, label %.lr.ph113, !llvm.loop !22

._crit_edge.loopexit:                             ; preds = %.lr.ph113.prol.loopexit, %.lr.ph113, %vec.epilog.middle.block
  %.pre131 = load i64, ptr %7, align 16, !tbaa !27
  %.pre132 = load i64, ptr %i.cq, align 8, !tbaa !27
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %i.dy = phi i64 [ %.pre132, %._crit_edge.loopexit ], [ %i.cx, %bb.f ]
  %i.dz = phi i64 [ %.pre131, %._crit_edge.loopexit ], [ %i.cv, %bb.f ]
  %i.ea = load i64, ptr %6, align 16, !tbaa !27
  %i.eb = xor i64 %i.dz, %i.ea
  store i64 %i.eb, ptr %7, align 16, !tbaa !27
  %i.ec = load i64, ptr %i.cd, align 8, !tbaa !27
  %i.ed = xor i64 %i.dy, %i.ec
  store i64 %i.ed, ptr %i.cq, align 8, !tbaa !27
  %i.ee = load ptr, ptr %i.cr, align 8, !tbaa !30
  %i.ef = load ptr, ptr %0, align 8, !tbaa !31
  call void %i.ee(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %i.ef) #3
  %i.eg = load <2 x i64>, ptr %7, align 16, !tbaa !27
  %i.eh = load <2 x i64>, ptr %6, align 16, !tbaa !27
  %i.ei = xor <2 x i64> %i.eh, %i.eg
  store <2 x i64> %i.ei, ptr %.093.lcssa, align 1, !tbaa !29
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

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }
attributes #4 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = distinct !{!10, !36}
!11 = distinct !{!11, !"LVerDomain"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !36, !41, !42}
!16 = distinct !{!16, !36, !41}
!17 = distinct !{!17, !"LVerDomain"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !36, !41, !42}
!22 = distinct !{!22, !36, !41}
!23 = !{!"any pointer", !6, i64 0}
!24 = !{!"xts128_context", !23, i64 0, !23, i64 8, !23, i64 16, !23, i64 24}
!25 = !{!24, !23, i64 24}
!26 = !{!24, !23, i64 8}
!27 = !{!6, !6, i64 0}
!28 = !{!"long long", !6, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!24, !23, i64 16}
!31 = !{!24, !23, i64 0}
!32 = !{i64 2148298531}
!33 = !{i64 2148298687}
!34 = !{i64 2148298843}
!35 = !{i64 2148298999}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!12}
!38 = !{!13}
!39 = !{!14}
!40 = !{!13, !12}
!41 = !{!"llvm.loop.isvectorized", i32 1}
!42 = !{!"llvm.loop.unroll.runtime.disable"}
!43 = !{i64 2148299179}
!44 = !{i64 2148299335}
!45 = !{i64 2148299491}
!46 = !{i64 2148299648}
!47 = !{!18}
!48 = !{!19}
!49 = !{!20}
!50 = !{!19, !18}
end_hunk_0
