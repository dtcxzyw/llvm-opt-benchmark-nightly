begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { [2 x i64] }

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @ossl_crypto_xts128gb_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %union.anon, align 16               ; 17 uses
  %7 = alloca %union.anon, align 16               ; 38 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #3
  %i.a = icmp ult i64 %4, 16
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12
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
  %i.m = load <2 x i64>, ptr %6, align 16, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %select.unfold
  %.092109 = phi ptr [ %2, %.lr.ph ], [ %i.z, %select.unfold ] ; 2 uses
  %.093108 = phi ptr [ %3, %.lr.ph ], [ %i.aa, %select.unfold ] ; 3 uses
  %.1107 = phi i64 [ %spec.select, %.lr.ph ], [ %i.ab, %select.unfold ]
  %i.n = phi <2 x i64> [ %i.m, %.lr.ph ], [ %i.aq, %select.unfold ]
  %i.o = load <2 x i64>, ptr %.092109, align 1, !tbaa !14
  %i.p = xor <2 x i64> %i.n, %i.o
  store <2 x i64> %i.p, ptr %7, align 16, !tbaa !13
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.r = load ptr, ptr %0, align 8, !tbaa !17
  call void %i.q(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %i.r) #3
  %i.s = load i64, ptr %6, align 16, !tbaa !13    ; 2 uses
  %i.t = load i64, ptr %7, align 16, !tbaa !13
  %i.u = xor i64 %i.t, %i.s                       ; 3 uses
  store i64 %i.u, ptr %7, align 16, !tbaa !13
  store i64 %i.u, ptr %.093108, align 1, !tbaa !14
  %i.v = load i64, ptr %i.i, align 8, !tbaa !13   ; 2 uses
  %i.w = load i64, ptr %i.j, align 8, !tbaa !13
  %i.x = xor i64 %i.w, %i.v                       ; 3 uses
  store i64 %i.x, ptr %i.j, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %.093108, i64 8
  store i64 %i.x, ptr %i.y, align 1, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %.092109, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.093108, i64 16 ; 2 uses
  %i.ab = add i64 %.1107, -16                     ; 4 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.s) #4, !srcloc !18 ; 3 uses
  %i.ae = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.v) #4, !srcloc !19 ; 2 uses
  %i.af = call i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ae, i64 63)
  %i.ag = lshr i64 %i.ad, 1                       ; 2 uses
  store i64 %i.ag, ptr %i.i, align 8, !tbaa !13
  %i.ah = and i64 %i.ae, 1
  %.not103 = icmp eq i64 %i.ah, 0
  br i1 %.not103, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = lshr i64 %i.ad, 57
  %i.aj = trunc nuw nsw i64 %i.ai to i8
  %i.ak = xor i8 %i.aj, -31
  store i8 %i.ak, ptr %i.l, align 1, !tbaa !13
  %.pre130.a = load i64, ptr %i.i, align 8, !tbaa !13
  br label %select.unfold

select.unfold:                                    ; preds = %bb.e, %bb.d
  %i.al = phi i64 [ %.pre130.a, %bb.e ], [ %i.ag, %bb.d ]
  %i.am = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.af) #4, !srcloc !20 ; 2 uses
  %i.an = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.al) #4, !srcloc !21 ; 2 uses
  store i64 %i.an, ptr %6, align 16, !tbaa !13
  store i64 %i.am, ptr %i.i, align 8, !tbaa !13
  %i.ao = icmp ugt i64 %i.ab, 15
  %i.ap = insertelement <2 x i64> poison, i64 %i.an, i64 0
  %i.aq = insertelement <2 x i64> %i.ap, i64 %i.am, i64 1
  br i1 %i.ao, label %bb.c, label %select.unfold._crit_edge, !llvm.loop !22

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.b
  %i.ar = phi i64 [ undef, %bb.b ], [ %i.x, %select.unfold ]
  %i.as = phi i64 [ undef, %bb.b ], [ %i.u, %select.unfold ]
  %.1.lcssa = phi i64 [ %spec.select, %bb.b ], [ %i.ab, %select.unfold ] ; 15 uses
  %.093.lcssa = phi ptr [ %3, %bb.b ], [ %i.aa, %select.unfold ] ; 11 uses
  %.092.lcssa = phi ptr [ %2, %bb.b ], [ %i.z, %select.unfold ] ; 11 uses
  br i1 %.not, label %.preheader, label %bb.f

.preheader:                                       ; preds = %select.unfold._crit_edge
  %.not118 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not118, label %._crit_edge116, label %iter.check208

iter.check208:                                    ; preds = %.preheader
  %8 = trunc nuw nsw i64 %.1.lcssa to i32
  %min.iters.check192 = icmp samesign ult i64 %.1.lcssa, 4
  br i1 %min.iters.check192, label %.lr.ph115.prol, label %vector.memcheck177

vector.memcheck177:                               ; preds = %iter.check208
  %scevgep178.a = getelementptr i8, ptr %.093.lcssa, i64 %.1.lcssa ; 2 uses
  %scevgep179 = getelementptr i8, ptr %7, i64 %.1.lcssa ; 2 uses
  %scevgep180 = getelementptr i8, ptr %.092.lcssa, i64 %.1.lcssa ; 2 uses
  %bound0181 = icmp ult ptr %.093.lcssa, %scevgep179
  %bound1182 = icmp ult ptr %7, %scevgep178.a
  %found.conflict183 = and i1 %bound0181, %bound1182
  %bound0184 = icmp ult ptr %.093.lcssa, %scevgep180
  %bound1185 = icmp ult ptr %.092.lcssa, %scevgep178.a
  %found.conflict186 = and i1 %bound0184, %bound1185
  %conflict.rdx187 = or i1 %found.conflict183, %found.conflict186
  %bound0188 = icmp ult ptr %7, %scevgep180
  %bound1189 = icmp ult ptr %.092.lcssa, %scevgep179
  %found.conflict190 = and i1 %bound0188, %bound1189
  %conflict.rdx191 = or i1 %conflict.rdx187, %found.conflict190
  br i1 %conflict.rdx191, label %.lr.ph115.prol, label %vec.epilog.ph212

vec.epilog.ph212:                                 ; preds = %vector.memcheck177
  %n.vec214 = and i64 %.1.lcssa, 12               ; 3 uses
  br label %vec.epilog.vector.body215

vec.epilog.vector.body215:                        ; preds = %vec.epilog.vector.body215, %vec.epilog.ph212
  %index216 = phi i64 [ 0, %vec.epilog.ph212 ], [ %index.next219, %vec.epilog.vector.body215 ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.092.lcssa, i64 %index216
  %wide.load217 = load <4 x i8>, ptr %i.at, align 1, !tbaa !13, !alias.scope !24
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 %index216 ; 2 uses
  %wide.load218 = load <4 x i8>, ptr %i.au, align 4, !tbaa !13, !alias.scope !27, !noalias !24
  %i.av = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 %index216
  store <4 x i8> %wide.load218, ptr %i.av, align 1, !tbaa !13, !alias.scope !29, !noalias !31
  store <4 x i8> %wide.load217, ptr %i.au, align 4, !tbaa !13, !alias.scope !27, !noalias !24
  %index.next219 = add nuw i64 %index216, 4       ; 2 uses
  %i.aw = icmp eq i64 %index.next219, %n.vec214
  br i1 %i.aw, label %.lr.ph115.preheader.a, label %vec.epilog.vector.body215, !llvm.loop !32

.lr.ph115.preheader.a:                            ; preds = %vec.epilog.vector.body215
  %lcmp.mod233.not = icmp eq i64 %.1.lcssa, %n.vec214
  br i1 %lcmp.mod233.not, label %._crit_edge116.loopexit, label %.lr.ph115.prol

.lr.ph115.prol:                                   ; preds = %vector.memcheck177, %iter.check208, %.lr.ph115.preheader.a
  %.ph = phi i64 [ 0, %vector.memcheck177 ], [ 0, %iter.check208 ], [ %n.vec214, %.lr.ph115.preheader.a ]
  br label %.lr.ph115

.lr.ph115:                                        ; preds = %.lr.ph115.prol, %.lr.ph115
  %indvars.iv125 = phi i64 [ %10, %.lr.ph115 ], [ %.ph, %.lr.ph115.prol ] ; 4 uses
  %indvars124 = trunc nuw i64 %indvars.iv125 to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %.092.lcssa, i64 %indvars.iv125
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv125 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 %indvars.iv125
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !13
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !13
  %9 = add nuw i32 %indvars124, 1                 ; 2 uses
  %10 = zext i32 %9 to i64
  %11 = icmp ult i32 %9, %8
  br i1 %11, label %.lr.ph115, label %._crit_edge116.loopexit, !llvm.loop !35

._crit_edge116.loopexit:                          ; preds = %.lr.ph115, %.lr.ph115.preheader.a
  %.pre133 = load i64, ptr %7, align 16, !tbaa !13
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre134 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !13
  br label %._crit_edge116

._crit_edge116:                                   ; preds = %._crit_edge116.loopexit, %.preheader
  %i.bc = phi i64 [ %.pre134, %._crit_edge116.loopexit ], [ %i.ar, %.preheader ]
  %i.bd = phi i64 [ %.pre133, %._crit_edge116.loopexit ], [ %i.as, %.preheader ]
  %i.be = load i64, ptr %6, align 16, !tbaa !13
  %i.bf = xor i64 %i.bd, %i.be
  store i64 %i.bf, ptr %7, align 16, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bj = xor i64 %i.bc, %i.bh
  store i64 %i.bj, ptr %i.bi, align 8, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.bm = load ptr, ptr %0, align 8, !tbaa !17
  call void %i.bl(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %i.bm) #3
  %i.bn = load <2 x i64>, ptr %6, align 16, !tbaa !13
  %i.bo = load <2 x i64>, ptr %7, align 16, !tbaa !13
  %i.bp = xor <2 x i64> %i.bo, %i.bn
  store <2 x i64> %i.bp, ptr %7, align 16, !tbaa !13
  %i.bq = getelementptr inbounds i8, ptr %.093.lcssa, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bq, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false)
  br label %.loopexit

bb.f:                                             ; preds = %select.unfold._crit_edge
  %i.br = load i64, ptr %6, align 16, !tbaa !13
  %i.bs = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.br) #4, !srcloc !36 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !13
  %i.bv = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.bu) #4, !srcloc !37 ; 2 uses
  %i.bw = call i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bv, i64 63)
  %i.bx = lshr i64 %i.bs, 1                       ; 2 uses
  %i.by = and i64 %i.bv, 1
  %.not102 = icmp eq i64 %i.by, 0
  %.sroa.7.15.insert.insert = xor i64 %i.bx, -2233785415175766016
  %.sroa.7.0 = select i1 %.not102, i64 %i.bx, i64 %.sroa.7.15.insert.insert
  %i.bz = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.bw) #4, !srcloc !38 ; 2 uses
  %i.ca = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.sroa.7.0) #4, !srcloc !39 ; 2 uses
  %i.cb = load i64, ptr %.092.lcssa, align 1, !tbaa !14
  %i.cc = xor i64 %i.cb, %i.ca
  store i64 %i.cc, ptr %7, align 16, !tbaa !13
  %i.cd = getelementptr inbounds nuw i8, ptr %.092.lcssa, i64 8
  %i.ce = load i64, ptr %i.cd, align 1, !tbaa !14
  %i.cf = xor i64 %i.ce, %i.bz
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !13
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !16
  %i.cj = load ptr, ptr %0, align 8, !tbaa !17
  call void %i.ci(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %i.cj) #3
  %i.ck = load i64, ptr %7, align 16, !tbaa !13
  %i.cl = xor i64 %i.ck, %i.ca                    ; 2 uses
  store i64 %i.cl, ptr %7, align 16, !tbaa !13
  %i.cm = load i64, ptr %i.cg, align 8, !tbaa !13
  %i.cn = xor i64 %i.cm, %i.bz                    ; 2 uses
  store i64 %i.cn, ptr %i.cg, align 8, !tbaa !13
  %.not117 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not117, label %._crit_edge, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %bb.f
  %12 = trunc nuw nsw i64 %.1.lcssa to i32
  %min.iters.check = icmp samesign ult i64 %.1.lcssa, 4
  br i1 %min.iters.check, label %.lr.ph113.prol, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr i8, ptr %7, i64 %.1.lcssa ; 2 uses
  %scevgep155.a = getelementptr i8, ptr %.093.lcssa, i64 16 ; 2 uses
  %13 = add nuw nsw i64 %.1.lcssa, 4294967295
  %14 = and i64 %13, 4294967295
  %15 = add nuw nsw i64 %14, 17                   ; 2 uses
  %scevgep156.a = getelementptr i8, ptr %.093.lcssa, i64 %15 ; 2 uses
  %scevgep157 = getelementptr i8, ptr %.092.lcssa, i64 16 ; 2 uses
  %scevgep158 = getelementptr i8, ptr %.092.lcssa, i64 %15 ; 2 uses
  %bound0 = icmp ult ptr %7, %scevgep156.a
  %bound1 = icmp ult ptr %scevgep155.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0159 = icmp ult ptr %7, %scevgep158
  %bound1160 = icmp ult ptr %scevgep157, %scevgep
  %found.conflict161 = and i1 %bound0159, %bound1160
  %conflict.rdx = or i1 %found.conflict, %found.conflict161
  %bound0162 = icmp ult ptr %scevgep155.a, %scevgep158
  %bound1163 = icmp ult ptr %scevgep157, %scevgep156.a
  %found.conflict164 = and i1 %bound0162, %bound1163
  %conflict.rdx165 = or i1 %conflict.rdx, %found.conflict164
  br i1 %conflict.rdx165, label %.lr.ph113.prol, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec171 = and i64 %.1.lcssa, 12               ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index172 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next175, %vec.epilog.vector.body ] ; 3 uses
  %i.co = add nuw nsw i64 %index172, 16
  %i.cp = and i64 %i.co, 4294967292               ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.092.lcssa, i64 %i.cp
  %wide.load173 = load <4 x i8>, ptr %i.cq, align 1, !tbaa !13, !alias.scope !40
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 %index172 ; 2 uses
  %wide.load174 = load <4 x i8>, ptr %i.cr, align 4, !tbaa !13, !alias.scope !43, !noalias !45
  %i.cs = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 %i.cp
  store <4 x i8> %wide.load174, ptr %i.cs, align 1, !tbaa !13, !alias.scope !47, !noalias !40
  store <4 x i8> %wide.load173, ptr %i.cr, align 4, !tbaa !13, !alias.scope !43, !noalias !45
  %index.next175 = add nuw i64 %index172, 4       ; 2 uses
  %i.ct = icmp eq i64 %index.next175, %n.vec171
  br i1 %i.ct, label %.lr.ph113.preheader.a, label %vec.epilog.vector.body, !llvm.loop !48

.lr.ph113.preheader.a:                            ; preds = %vec.epilog.vector.body
  %lcmp.mod.not = icmp eq i64 %.1.lcssa, %n.vec171
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph113.prol

.lr.ph113.prol:                                   ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph113.preheader.a
  %.ph220 = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ %n.vec171, %.lr.ph113.preheader.a ]
  br label %.lr.ph113

.lr.ph113:                                        ; preds = %.lr.ph113.prol, %.lr.ph113
  %indvars.iv = phi i64 [ %17, %.lr.ph113 ], [ %.ph220, %.lr.ph113.prol ] ; 3 uses
  %indvars = trunc nuw i64 %indvars.iv to i32
  %i.cu = add nuw nsw i64 %indvars.iv, 16
  %i.cv = and i64 %i.cu, 4294967295               ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.092.lcssa, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !13
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !13
  %i.da = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 %i.cv
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !13
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !13
  %16 = add nuw i32 %indvars, 1                   ; 2 uses
  %17 = zext i32 %16 to i64
  %18 = icmp ult i32 %16, %12
  br i1 %18, label %.lr.ph113, label %._crit_edge.loopexit, !llvm.loop !49

._crit_edge.loopexit:                             ; preds = %.lr.ph113, %.lr.ph113.preheader.a
  %.pre131 = load i64, ptr %7, align 16, !tbaa !13
  %.pre132 = load i64, ptr %i.cg, align 8, !tbaa !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %i.db = phi i64 [ %.pre132, %._crit_edge.loopexit ], [ %i.cn, %bb.f ]
  %i.dc = phi i64 [ %.pre131, %._crit_edge.loopexit ], [ %i.cl, %bb.f ]
  %i.dd = load i64, ptr %6, align 16, !tbaa !13
  %i.de = xor i64 %i.dc, %i.dd
  store i64 %i.de, ptr %7, align 16, !tbaa !13
  %i.df = load i64, ptr %i.bt, align 8, !tbaa !13
  %i.dg = xor i64 %i.db, %i.df
  store i64 %i.dg, ptr %i.cg, align 8, !tbaa !13
  %i.dh = load ptr, ptr %i.ch, align 8, !tbaa !16
  %i.di = load ptr, ptr %0, align 8, !tbaa !17
  call void %i.dh(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %i.di) #3
  %i.dj = load <2 x i64>, ptr %7, align 16, !tbaa !13
  %i.dk = load <2 x i64>, ptr %6, align 16, !tbaa !13
  %i.dl = xor <2 x i64> %i.dk, %i.dj
  store <2 x i64> %i.dl, ptr %.093.lcssa, align 1, !tbaa !14
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
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 24}
!10 = !{!"xts128_context", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!10, !11, i64 8}
!13 = !{!7, !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long long", !7, i64 0}
!16 = !{!10, !11, i64 16}
!17 = !{!10, !11, i64 0}
!18 = !{i64 2148298531}
!19 = !{i64 2148298687}
!20 = !{i64 2148298843}
!21 = !{i64 2148298999}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!25}
!25 = distinct !{!25, !26}
!26 = distinct !{!26, !"LVerDomain"}
!27 = !{!28}
!28 = distinct !{!28, !26}
!29 = !{!30}
!30 = distinct !{!30, !26}
!31 = !{!28, !25}
!32 = distinct !{!32, !23, !33, !34}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = distinct !{!35, !23, !33}
!36 = !{i64 2148299179}
!37 = !{i64 2148299335}
!38 = !{i64 2148299491}
!39 = !{i64 2148299648}
!40 = !{!41}
!41 = distinct !{!41, !42}
!42 = distinct !{!42, !"LVerDomain"}
!43 = !{!44}
!44 = distinct !{!44, !42}
!45 = !{!46, !41}
!46 = distinct !{!46, !42}
!47 = !{!46}
!48 = distinct !{!48, !23, !33, !34}
!49 = distinct !{!49, !23, !33}
end_hunk_0
