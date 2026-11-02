Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 333
loop-unroll.NumRuntimeUnrolled: 163
loop-unroll.NumUnrolled: 552
begin_hunk_0_@CRYPTO_gcm128_aad:bb.a
  %.257 = phi i32 [ 0, %bb.a ], [ 1, %.loopexit ], [ 0, %bb.b ]
  ret i32 %.257
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CRYPTO_gcm128_encrypt(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !467 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !464 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !468  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !469
  %i.j = add i64 %i.i, %4                         ; 3 uses
  %i.k = icmp ugt i64 %i.j, 68719476704
  %i.l = icmp ult i64 %i.j, %4
  %or.cond = or i1 %i.k, %i.l
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.j, ptr %i.h, align 8, !tbaa !469
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !465
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.e(ptr noundef nonnull %i.o, ptr noundef nonnull %i.a) #46
  store i32 0, ptr %i.m, align 4, !tbaa !465
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.q = load i32, ptr %i.p, align 16, !tbaa !466 ; 3 uses
  %.not123 = icmp eq i32 %i.q, 0
  br i1 %.not123, label %bb.g, label %.preheader133

.preheader133:                                    ; preds = %bb.d
  %.not166 = icmp eq i64 %4, 0
  br i1 %.not166, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader133
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.097137 = phi i32 [ %i.q, %.lr.ph ], [ %i.af, %bb.e ] ; 2 uses
  %.0101136 = phi i64 [ %4, %.lr.ph ], [ %i.ad, %bb.e ]
  %.0105135 = phi ptr [ %3, %.lr.ph ], [ %i.z, %bb.e ] ; 2 uses
  %.0111134 = phi ptr [ %2, %.lr.ph ], [ %i.t, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0111134, i64 1 ; 2 uses
  %i.u = load i8, ptr %.0111134, align 1, !tbaa !76
  %i.v = zext i32 %.097137 to i64                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !76
  %i.y = xor i8 %i.x, %i.u                        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0105135, i64 1 ; 2 uses
  store i8 %i.y, ptr %.0105135, align 1, !tbaa !76
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !76
  %i.ac = xor i8 %i.ab, %i.y
  store i8 %i.ac, ptr %i.aa, align 1, !tbaa !76
  %i.ad = add nsw i64 %.0101136, -1               ; 3 uses
  %i.ae = add i32 %.097137, 1
  %i.af = and i32 %i.ae, 15                       ; 4 uses
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = icmp ne i64 %i.ad, 0
  %i.ai = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %i.ai, label %bb.e, label %._crit_edge, !llvm.loop !2226

._crit_edge:                                      ; preds = %bb.e
  %i.aj = icmp eq i32 %i.af, 0
  br i1 %i.aj, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.e(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.a) #46
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.1112 = phi ptr [ %i.t, %bb.f ], [ %2, %bb.d ] ; 2 uses
  %.1106 = phi ptr [ %i.z, %bb.f ], [ %3, %bb.d ] ; 2 uses
  %.1102 = phi i64 [ %i.ad, %bb.f ], [ %4, %bb.d ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %.0.copyload.i = load i32, ptr %i.al, align 4
  %i.am = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i) ; 2 uses
  %i.an = icmp ugt i64 %.1102, 3071
  br i1 %i.an, label %.preheader132.lr.ph, label %._crit_edge149

.preheader132.lr.ph:                              ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %.preheader132

.preheader132:                                    ; preds = %.preheader132.lr.ph, %bb.i
  %.096148 = phi i32 [ %i.am, %.preheader132.lr.ph ], [ %i.ar, %bb.i ]
  %.2103147 = phi i64 [ %.1102, %.preheader132.lr.ph ], [ %i.bb, %bb.i ]
  %.2107146 = phi ptr [ %.1106, %.preheader132.lr.ph ], [ %i.ax, %bb.i ]
  %.2113145 = phi ptr [ %.1112, %.preheader132.lr.ph ], [ %i.ay, %bb.i ]
  br label %bb.h

bb.h:                                             ; preds = %.preheader132, %bb.h
  %.0144 = phi i64 [ 3072, %.preheader132 ], [ %i.az, %bb.h ]
  %.1143 = phi i32 [ %.096148, %.preheader132 ], [ %i.ar, %bb.h ]
  %.3108142 = phi ptr [ %.2107146, %.preheader132 ], [ %i.ax, %bb.h ] ; 4 uses
  %.3114141 = phi ptr [ %.2113145, %.preheader132 ], [ %i.ay, %bb.h ] ; 3 uses
  tail call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %i.ao, ptr noundef %1) #46
  %i.ar = add i32 %.1143, 1                       ; 4 uses
  %i.as = tail call noundef i32 @llvm.bswap.i32(i32 %i.ar)
  store i32 %i.as, ptr %i.al, align 4
  %.0.copyload.i.i = load i64, ptr %.3114141, align 1
  %.0.copyload.i7.i = load i64, ptr %i.ao, align 16
  %i.at = xor i64 %.0.copyload.i7.i, %.0.copyload.i.i
  store i64 %i.at, ptr %.3108142, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %.3108142, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.3114141, i64 8
  %.0.copyload.i.1.i = load i64, ptr %i.av, align 1
  %.0.copyload.i7.1.i = load i64, ptr %i.ap, align 8
  %i.aw = xor i64 %.0.copyload.i7.1.i, %.0.copyload.i.1.i
  store i64 %i.aw, ptr %i.au, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.3108142, i64 16 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.3114141, i64 16 ; 3 uses
  %i.az = add nsw i64 %.0144, -16                 ; 2 uses
  %.not127 = icmp eq i64 %i.az, 0
  br i1 %.not127, label %bb.i, label %bb.h, !llvm.loop !2227

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds i8, ptr %.3108142, i64 -3056
  tail call void %i.g(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ba, i64 noundef 3072) #46
  %i.bb = add nsw i64 %.2103147, -3072            ; 3 uses
  %i.bc = icmp ugt i64 %i.bb, 3071
  br i1 %i.bc, label %.preheader132, label %._crit_edge149, !llvm.loop !2228

._crit_edge149:                                   ; preds = %bb.i, %bb.g
  %.2113.lcssa = phi ptr [ %.1112, %bb.g ], [ %i.ay, %bb.i ] ; 2 uses
  %.2107.lcssa = phi ptr [ %.1106, %bb.g ], [ %i.ax, %bb.i ] ; 2 uses
  %.2103.lcssa = phi i64 [ %.1102, %bb.g ], [ %i.bb, %bb.i ] ; 3 uses
  %.096.lcssa = phi i32 [ %i.am, %bb.g ], [ %i.ar, %bb.i ] ; 2 uses
  %i.bd = and i64 %.2103.lcssa, 4080              ; 3 uses
  %.not124 = icmp eq i64 %i.bd, 0
  br i1 %.not124, label %bb.k, label %.lr.ph158

.lr.ph158:                                        ; preds = %._crit_edge149
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph158, %bb.j
  %.2157 = phi i32 [ %.096.lcssa, %.lr.ph158 ], [ %i.bg, %bb.j ]
  %.3104156 = phi i64 [ %.2103.lcssa, %.lr.ph158 ], [ %i.bo, %bb.j ]
  %.4109155 = phi ptr [ %.2107.lcssa, %.lr.ph158 ], [ %i.bm, %bb.j ] ; 3 uses
  %.4115154 = phi ptr [ %.2113.lcssa, %.lr.ph158 ], [ %i.bn, %bb.j ] ; 3 uses
  tail call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %i.be, ptr noundef %1) #46
  %i.bg = add i32 %.2157, 1                       ; 3 uses
  %i.bh = tail call noundef i32 @llvm.bswap.i32(i32 %i.bg)
  store i32 %i.bh, ptr %i.al, align 4
  %.0.copyload.i.i128 = load i64, ptr %.4115154, align 1
  %.0.copyload.i7.i129 = load i64, ptr %i.be, align 16
  %i.bi = xor i64 %.0.copyload.i7.i129, %.0.copyload.i.i128
  store i64 %i.bi, ptr %.4109155, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.4109155, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.4115154, i64 8
  %.0.copyload.i.1.i130 = load i64, ptr %i.bk, align 1
  %.0.copyload.i7.1.i131 = load i64, ptr %i.bf, align 8
  %i.bl = xor i64 %.0.copyload.i7.1.i131, %.0.copyload.i.1.i130
  store i64 %i.bl, ptr %i.bj, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.4109155, i64 16 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.4115154, i64 16 ; 2 uses
  %i.bo = add nsw i64 %.3104156, -16              ; 3 uses
  %i.bp = icmp ugt i64 %i.bo, 15
  br i1 %i.bp, label %bb.j, label %._crit_edge159, !llvm.loop !2229

._crit_edge159:                                   ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.br = sub nsw i64 0, %i.bd
  %i.bs = getelementptr inbounds i8, ptr %i.bm, i64 %i.br
  tail call void %i.g(ptr noundef nonnull %i.bq, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bs, i64 noundef %i.bd) #46
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge159, %._crit_edge149
  %.5116 = phi ptr [ %i.bn, %._crit_edge159 ], [ %.2113.lcssa, %._crit_edge149 ] ; 8 uses
  %.5110 = phi ptr [ %i.bm, %._crit_edge159 ], [ %.2107.lcssa, %._crit_edge149 ] ; 8 uses
  %.4 = phi i64 [ %i.bo, %._crit_edge159 ], [ %.2103.lcssa, %._crit_edge149 ] ; 15 uses
  %.3 = phi i32 [ %i.bg, %._crit_edge159 ], [ %.096.lcssa, %._crit_edge149 ]
  %.not125 = icmp eq i64 %.4, 0
  br i1 %.not125, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  tail call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %i.bt, ptr noundef %1) #46
  %i.bu = add i32 %.3, 1
  %i.bv = tail call noundef i32 @llvm.bswap.i32(i32 %i.bu)
  store i32 %i.bv, ptr %i.al, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %or.cond240 = icmp ult i64 %.4, 4
  br i1 %or.cond240, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bx = getelementptr i8, ptr %.5110, i64 %.4   ; 2 uses
  %i.by = getelementptr i8, ptr %0, i64 %.4
  %i.bz = getelementptr i8, ptr %i.by, i64 64     ; 2 uses
  %i.ca = getelementptr i8, ptr %.5116, i64 %.4   ; 2 uses
  %bound0 = icmp ult ptr %.5110, %i.bz
  %bound1 = icmp ult ptr %i.bt, %i.bx
  %found.conflict = and i1 %bound0, %bound1
  %bound0221 = icmp ult ptr %.5110, %i.ca
  %bound1222 = icmp ult ptr %.5116, %i.bx
  %found.conflict223 = and i1 %bound0221, %bound1222
  %conflict.rdx = or i1 %found.conflict, %found.conflict223
  %bound0224 = icmp ult ptr %i.bt, %i.ca
  %bound1225 = icmp ult ptr %.5116, %i.bz
  %found.conflict226 = and i1 %bound0224, %bound1225
  %conflict.rdx227 = or i1 %conflict.rdx, %found.conflict226
  br i1 %conflict.rdx227, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check228 = icmp ult i64 %.4, 16
  br i1 %min.iters.check228, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cb = and i64 %.4, 12
  %n.vec = and i64 %.4, -16                       ; 4 uses
  %i.cc = trunc i64 %n.vec to i32                 ; 2 uses
  %i.cd = and i64 %.4, 15
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = and i64 %index, 4294967280              ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.5116, i64 %i.ce
  %wide.load = load <16 x i8>, ptr %i.cf, align 1, !tbaa !76, !alias.scope !2237
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.ce
  %wide.load229 = load <16 x i8>, ptr %i.cg, align 1, !tbaa !76, !alias.scope !2238, !noalias !2237
  %i.ch = xor <16 x i8> %wide.load229, %wide.load ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.5110, i64 %i.ce
  store <16 x i8> %i.ch, ptr %i.ci, align 1, !tbaa !76, !alias.scope !2239, !noalias !2240
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.ce ; 2 uses
  %wide.load230 = load <16 x i8>, ptr %i.cj, align 1, !tbaa !76, !alias.scope !2238, !noalias !2237
  %i.ck = xor <16 x i8> %wide.load230, %i.ch
  store <16 x i8> %i.ck, ptr %i.cj, align 1, !tbaa !76, !alias.scope !2238, !noalias !2237
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !2234

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.4, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cb, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !471

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec231 = and i64 %.4, -4                     ; 3 uses
  %i.cm = trunc i64 %n.vec231 to i32              ; 2 uses
  %i.cn = and i64 %.4, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index232 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next236, %vec.epilog.vector.body ] ; 2 uses
  %i.co = and i64 %index232, 4294967292           ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.5116, i64 %i.co
  %wide.load233 = load <4 x i8>, ptr %i.cp, align 1, !tbaa !76, !alias.scope !2237
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.co
  %wide.load234 = load <4 x i8>, ptr %i.cq, align 1, !tbaa !76, !alias.scope !2238, !noalias !2237
  %i.cr = xor <4 x i8> %wide.load234, %wide.load233 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.5110, i64 %i.co
  store <4 x i8> %i.cr, ptr %i.cs, align 1, !tbaa !76, !alias.scope !2239, !noalias !2240
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.co ; 2 uses
  %wide.load235 = load <4 x i8>, ptr %i.ct, align 1, !tbaa !76, !alias.scope !2238, !noalias !2237
  %i.cu = xor <4 x i8> %wide.load235, %i.cr
  store <4 x i8> %i.cu, ptr %i.ct, align 1, !tbaa !76, !alias.scope !2238, !noalias !2237
  %index.next236 = add nuw i64 %index232, 4       ; 2 uses
  %i.cv = icmp eq i64 %index.next236, %n.vec231
  br i1 %i.cv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2235

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n237 = icmp eq i64 %.4, %n.vec231
  br i1 %cmp.n237, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.299165.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.cc, %vec.epilog.iter.check ], [ %i.cm, %vec.epilog.middle.block ] ; 3 uses
  %.5164.ph = phi i64 [ %.4, %iter.check ], [ %.4, %vector.memcheck ], [ %i.cd, %vec.epilog.iter.check ], [ %i.cn, %vec.epilog.middle.block ] ; 4 uses
  %xtraiter = and i64 %.5164.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.cw = add nsw i64 %.5164.ph, -1
  %i.cx = zext nneg i32 %.299165.ph to i64        ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.5116, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !76
  %i.da = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cx
  %i.db = load i8, ptr %i.da, align 1, !tbaa !76
  %i.dc = xor i8 %i.db, %i.cz                     ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.5110, i64 %i.cx
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !76
  %i.de = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cx ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !76
  %i.dg = xor i8 %i.df, %i.dc
  store i8 %i.dg, ptr %i.de, align 1, !tbaa !76
  %i.dh = add nuw nsw i32 %.299165.ph, 1          ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.dh, %vec.epilog.scalar.ph.prol ]
  %.299165.unr = phi i32 [ %.299165.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dh, %vec.epilog.scalar.ph.prol ]
  %.5164.unr = phi i64 [ %.5164.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cw, %vec.epilog.scalar.ph.prol ]
  %i.di = icmp eq i64 %.5164.ph, 1
  br i1 %i.di, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.299165 = phi i32 [ %i.ef, %vec.epilog.scalar.ph ], [ %.299165.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.5164 = phi i64 [ %i.du, %vec.epilog.scalar.ph ], [ %.5164.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.dj = zext nneg i32 %.299165 to i64           ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.5116, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !76
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.dj
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !76
  %i.do = xor i8 %i.dn, %i.dl                     ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.5110, i64 %i.dj
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !76
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.dj ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !76
  %i.ds = xor i8 %i.dr, %i.do
  store i8 %i.ds, ptr %i.dq, align 1, !tbaa !76
  %i.dt = add nuw nsw i32 %.299165, 1
  %i.du = add i64 %.5164, -2                      ; 2 uses
  %i.dv = zext nneg i32 %i.dt to i64              ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.5116, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !76
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.dv
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !76
  %i.ea = xor i8 %i.dz, %i.dx                     ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.5110, i64 %i.dv
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !76
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.dv ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !76
  %i.ee = xor i8 %i.ed, %i.ea
  store i8 %i.ee, ptr %i.ec, align 1, !tbaa !76
  %i.ef = add nuw nsw i32 %.299165, 2             ; 2 uses
  %.not126.1 = icmp eq i64 %i.du, 0
  br i1 %.not126.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !2236

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader133, %bb.k, %._crit_edge
  %storemerge = phi i32 [ %i.af, %._crit_edge ], [ 0, %bb.k ], [ %i.q, %.preheader133 ], [ %i.cm, %vec.epilog.middle.block ], [ %i.cc, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ef, %vec.epilog.scalar.ph ]
  store i32 %storemerge, ptr %i.p, align 16, !tbaa !466
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %.loopexit
  %.1118 = phi i32 [ 1, %.loopexit ], [ 0, %bb.a ]
  ret i32 %.1118
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CRYPTO_gcm128_decrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !467 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !464 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !468  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !469
  %i.j = add i64 %i.i, %4                         ; 3 uses
  %i.k = icmp ugt i64 %i.j, 68719476704
  %i.l = icmp ult i64 %i.j, %4
  %or.cond = or i1 %i.k, %i.l
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.j, ptr %i.h, align 8, !tbaa !469
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !465
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.e(ptr noundef nonnull %i.o, ptr noundef nonnull %i.a) #46
  store i32 0, ptr %i.m, align 4, !tbaa !465
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.q = load i32, ptr %i.p, align 16, !tbaa !466 ; 3 uses
  %.not126 = icmp eq i32 %i.q, 0
  br i1 %.not126, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not170 = icmp eq i64 %4, 0
  br i1 %.not170, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.0102139 = phi ptr [ %2, %.lr.ph ], [ %i.t, %bb.e ] ; 2 uses
  %.0106138 = phi i32 [ %i.q, %.lr.ph ], [ %i.af, %bb.e ] ; 2 uses
  %.0110137 = phi i64 [ %4, %.lr.ph ], [ %i.ad, %bb.e ]
  %.0116136 = phi ptr [ %3, %.lr.ph ], [ %i.z, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0102139, i64 1 ; 2 uses
  %i.u = load i8, ptr %.0102139, align 1, !tbaa !76 ; 2 uses
  %i.v = zext i32 %.0106138 to i64                ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !76
  %i.y = xor i8 %i.x, %i.u
  %i.z = getelementptr inbounds nuw i8, ptr %.0116136, i64 1 ; 2 uses
  store i8 %i.y, ptr %.0116136, align 1, !tbaa !76
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !76
  %i.ac = xor i8 %i.ab, %i.u
  store i8 %i.ac, ptr %i.aa, align 1, !tbaa !76
  %i.ad = add nsw i64 %.0110137, -1               ; 3 uses
  %i.ae = add i32 %.0106138, 1
  %i.af = and i32 %i.ae, 15                       ; 4 uses
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = icmp ne i64 %i.ad, 0
  %i.ai = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %i.ai, label %bb.e, label %._crit_edge, !llvm.loop !2241

._crit_edge:                                      ; preds = %bb.e
  %i.aj = icmp eq i32 %i.af, 0
  br i1 %i.aj, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.e(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.a) #46
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.1117 = phi ptr [ %i.z, %bb.f ], [ %3, %bb.d ] ; 2 uses
  %.1111 = phi i64 [ %i.ad, %bb.f ], [ %4, %bb.d ] ; 3 uses
  %.1103 = phi ptr [ %i.t, %bb.f ], [ %2, %bb.d ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %.0.copyload.i = load i32, ptr %i.al, align 4
  %i.am = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i) ; 2 uses
  %i.an = icmp ugt i64 %.1111, 3071
  br i1 %i.an, label %.lr.ph152, label %._crit_edge153

.lr.ph152:                                        ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph152, %bb.j
  %.0100150 = phi i32 [ %i.am, %.lr.ph152 ], [ %i.ar, %bb.j ]
  %.2104149 = phi ptr [ %.1103, %.lr.ph152 ], [ %i.ay, %bb.j ] ; 2 uses
  %.2112148 = phi i64 [ %.1111, %.lr.ph152 ], [ %i.ba, %bb.j ]
  %.2118147 = phi ptr [ %.1117, %.lr.ph152 ], [ %i.ax, %bb.j ]
  tail call void %i.g(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.a, ptr noundef %.2104149, i64 noundef 3072) #46
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.i
  %.099146 = phi i64 [ 3072, %bb.h ], [ %i.az, %bb.i ]
  %.1101145 = phi i32 [ %.0100150, %bb.h ], [ %i.ar, %bb.i ]
  %.3105144 = phi ptr [ %.2104149, %bb.h ], [ %i.ay, %bb.i ] ; 3 uses
  %.3119143 = phi ptr [ %.2118147, %bb.h ], [ %i.ax, %bb.i ] ; 3 uses
  tail call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %i.ap, ptr noundef %1) #46
  %i.ar = add i32 %.1101145, 1                    ; 4 uses
  %i.as = tail call noundef i32 @llvm.bswap.i32(i32 %i.ar)
  store i32 %i.as, ptr %i.al, align 4
  %.0.copyload.i.i = load i64, ptr %.3105144, align 1
  %.0.copyload.i7.i = load i64, ptr %i.ap, align 16
  %i.at = xor i64 %.0.copyload.i7.i, %.0.copyload.i.i
  store i64 %i.at, ptr %.3119143, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %.3119143, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.3105144, i64 8
  %.0.copyload.i.1.i = load i64, ptr %i.av, align 1
  %.0.copyload.i7.1.i = load i64, ptr %i.aq, align 8
  %i.aw = xor i64 %.0.copyload.i7.1.i, %.0.copyload.i.1.i
  store i64 %i.aw, ptr %i.au, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.3119143, i64 16 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.3105144, i64 16 ; 3 uses
  %i.az = add nsw i64 %.099146, -16               ; 2 uses
  %.not130 = icmp eq i64 %i.az, 0
  br i1 %.not130, label %bb.j, label %bb.i, !llvm.loop !2242

bb.j:                                             ; preds = %bb.i
  %i.ba = add nsw i64 %.2112148, -3072            ; 3 uses
  %i.bb = icmp ugt i64 %i.ba, 3071
  br i1 %i.bb, label %bb.h, label %._crit_edge153, !llvm.loop !2243

._crit_edge153:                                   ; preds = %bb.j, %bb.g
  %.2118.lcssa = phi ptr [ %.1117, %bb.g ], [ %i.ax, %bb.j ] ; 2 uses
  %.2112.lcssa = phi i64 [ %.1111, %bb.g ], [ %i.ba, %bb.j ] ; 3 uses
  %.2104.lcssa = phi ptr [ %.1103, %bb.g ], [ %i.ay, %bb.j ] ; 3 uses
  %.0100.lcssa = phi i32 [ %i.am, %bb.g ], [ %i.ar, %bb.j ] ; 2 uses
  %i.bc = and i64 %.2112.lcssa, 4080              ; 2 uses
  %.not127 = icmp eq i64 %i.bc, 0
  br i1 %.not127, label %.loopexit135, label %.lr.ph163

.lr.ph163:                                        ; preds = %._crit_edge153
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.g(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.a, ptr noundef %.2104.lcssa, i64 noundef %i.bc) #46
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph163, %bb.k
  %.2161 = phi i32 [ %.0100.lcssa, %.lr.ph163 ], [ %i.bg, %bb.k ]
  %.4160 = phi ptr [ %.2104.lcssa, %.lr.ph163 ], [ %i.bn, %bb.k ] ; 3 uses
  %.3113159 = phi i64 [ %.2112.lcssa, %.lr.ph163 ], [ %i.bo, %bb.k ]
  %.4120158 = phi ptr [ %.2118.lcssa, %.lr.ph163 ], [ %i.bm, %bb.k ] ; 3 uses
  tail call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %i.be, ptr noundef %1) #46
  %i.bg = add i32 %.2161, 1                       ; 3 uses
  %i.bh = tail call noundef i32 @llvm.bswap.i32(i32 %i.bg)
  store i32 %i.bh, ptr %i.al, align 4
  %.0.copyload.i.i131 = load i64, ptr %.4160, align 1
  %.0.copyload.i7.i132 = load i64, ptr %i.be, align 16
  %i.bi = xor i64 %.0.copyload.i7.i132, %.0.copyload.i.i131
  store i64 %i.bi, ptr %.4120158, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.4120158, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.4160, i64 8
  %.0.copyload.i.1.i133 = load i64, ptr %i.bk, align 1
  %.0.copyload.i7.1.i134 = load i64, ptr %i.bf, align 8
  %i.bl = xor i64 %.0.copyload.i7.1.i134, %.0.copyload.i.1.i133
  store i64 %i.bl, ptr %i.bj, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.4120158, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.4160, i64 16 ; 2 uses
  %i.bo = add nsw i64 %.3113159, -16              ; 3 uses
  %i.bp = icmp ugt i64 %i.bo, 15
  br i1 %i.bp, label %bb.k, label %.loopexit135, !llvm.loop !2244

.loopexit135:                                     ; preds = %bb.k, %._crit_edge153
  %.5121 = phi ptr [ %.2118.lcssa, %._crit_edge153 ], [ %i.bm, %bb.k ] ; 8 uses
  %.4114 = phi i64 [ %.2112.lcssa, %._crit_edge153 ], [ %i.bo, %bb.k ] ; 15 uses
  %.5 = phi ptr [ %.2104.lcssa, %._crit_edge153 ], [ %i.bn, %bb.k ] ; 8 uses
  %.3 = phi i32 [ %.0100.lcssa, %._crit_edge153 ], [ %i.bg, %bb.k ]
  %.not128 = icmp eq i64 %.4114, 0
  br i1 %.not128, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.loopexit135
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  tail call void %i.c(ptr noundef nonnull %0, ptr noundef nonnull %i.bq, ptr noundef %1) #46
  %i.br = add i32 %.3, 1
  %i.bs = tail call noundef i32 @llvm.bswap.i32(i32 %i.br)
  store i32 %i.bs, ptr %i.al, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %or.cond248 = icmp ult i64 %.4114, 4
  br i1 %or.cond248, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bu = getelementptr i8, ptr %0, i64 %.4114
  %i.bv = getelementptr i8, ptr %i.bu, i64 64     ; 2 uses
  %i.bw = getelementptr i8, ptr %.5121, i64 %.4114 ; 2 uses
  %i.bx = getelementptr i8, ptr %.5, i64 %.4114   ; 2 uses
  %bound0 = icmp ult ptr %i.bq, %i.bw
  %bound1 = icmp ult ptr %.5121, %i.bv
  %found.conflict = and i1 %bound0, %bound1
  %bound0226 = icmp ult ptr %i.bq, %i.bx
  %bound1227 = icmp ult ptr %.5, %i.bv
  %found.conflict228 = and i1 %bound0226, %bound1227
  %conflict.rdx = or i1 %found.conflict, %found.conflict228
  %bound0229 = icmp ult ptr %.5121, %i.bx
  %bound1230 = icmp ult ptr %.5, %i.bw
  %found.conflict231 = and i1 %bound0229, %bound1230
  %conflict.rdx232 = or i1 %conflict.rdx, %found.conflict231
  br i1 %conflict.rdx232, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check233 = icmp ult i64 %.4114, 32
  br i1 %min.iters.check233, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.by = and i64 %.4114, 28
  %n.vec = and i64 %.4114, -32                    ; 4 uses
  %i.bz = trunc i64 %n.vec to i32                 ; 2 uses
  %i.ca = and i64 %.4114, 31
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cb = and i64 %index, 4294967264              ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.5, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %wide.load = load <16 x i8>, ptr %i.cc, align 1, !tbaa !76, !alias.scope !2252 ; 2 uses
  %wide.load234 = load <16 x i8>, ptr %i.cd, align 1, !tbaa !76, !alias.scope !2252 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cb ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %wide.load235 = load <16 x i8>, ptr %i.ce, align 1, !tbaa !76, !alias.scope !2253, !noalias !2254
  %wide.load236 = load <16 x i8>, ptr %i.cf, align 1, !tbaa !76, !alias.scope !2253, !noalias !2254
  %i.cg = xor <16 x i8> %wide.load235, %wide.load
  %i.ch = xor <16 x i8> %wide.load236, %wide.load234
  store <16 x i8> %i.cg, ptr %i.ce, align 1, !tbaa !76, !alias.scope !2253, !noalias !2254
  store <16 x i8> %i.ch, ptr %i.cf, align 1, !tbaa !76, !alias.scope !2253, !noalias !2254
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.cb ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %wide.load237 = load <16 x i8>, ptr %i.ci, align 1, !tbaa !76, !alias.scope !2253, !noalias !2254
  %wide.load238 = load <16 x i8>, ptr %i.cj, align 1, !tbaa !76, !alias.scope !2253, !noalias !2254
  %i.ck = xor <16 x i8> %wide.load237, %wide.load
  %i.cl = xor <16 x i8> %wide.load238, %wide.load234
  %i.cm = getelementptr inbounds nuw i8, ptr %.5121, i64 %i.cb ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store <16 x i8> %i.ck, ptr %i.cm, align 1, !tbaa !76, !alias.scope !2255, !noalias !2252
  store <16 x i8> %i.cl, ptr %i.cn, align 1, !tbaa !76, !alias.scope !2255, !noalias !2252
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !2249

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.4114, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.by, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !85

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec239 = and i64 %.4114, -4                  ; 3 uses
  %i.cp = trunc i64 %n.vec239 to i32              ; 2 uses
  %i.cq = and i64 %.4114, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index240 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next244, %vec.epilog.vector.body ] ; 2 uses
  %i.cr = and i64 %index240, 4294967292           ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.5, i64 %i.cr
  %wide.load241 = load <4 x i8>, ptr %i.cs, align 1, !tbaa !76, !alias.scope !2252 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cr ; 2 uses
  %wide.load242 = load <4 x i8>, ptr %i.ct, align 1, !tbaa !76, !alias.scope !2253, !noalias !2254
  %i.cu = xor <4 x i8> %wide.load242, %wide.load241
  store <4 x i8> %i.cu, ptr %i.ct, align 1, !tbaa !76, !alias.scope !2253, !noalias !2254
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.cr
  %wide.load243 = load <4 x i8>, ptr %i.cv, align 1, !tbaa !76, !alias.scope !2253, !noalias !2254
  %i.cw = xor <4 x i8> %wide.load243, %wide.load241
  %i.cx = getelementptr inbounds nuw i8, ptr %.5121, i64 %i.cr
  store <4 x i8> %i.cw, ptr %i.cx, align 1, !tbaa !76, !alias.scope !2255, !noalias !2252
  %index.next244 = add nuw i64 %index240, 4       ; 2 uses
  %i.cy = icmp eq i64 %index.next244, %n.vec239
  br i1 %i.cy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2250

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n245 = icmp eq i64 %.4114, %n.vec239
  br i1 %cmp.n245, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2108169.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.bz, %vec.epilog.iter.check ], [ %i.cp, %vec.epilog.middle.block ] ; 3 uses
  %.5115168.ph = phi i64 [ %.4114, %iter.check ], [ %.4114, %vector.memcheck ], [ %i.ca, %vec.epilog.iter.check ], [ %i.cq, %vec.epilog.middle.block ] ; 4 uses
  %xtraiter = and i64 %.5115168.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.cz = add nsw i64 %.5115168.ph, -1
  %i.da = zext nneg i32 %.2108169.ph to i64       ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.5, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !76  ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.da ; 2 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !76
  %i.df = xor i8 %i.de, %i.dc
  store i8 %i.df, ptr %i.dd, align 1, !tbaa !76
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.da
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !76
  %i.di = xor i8 %i.dh, %i.dc
  %i.dj = getelementptr inbounds nuw i8, ptr %.5121, i64 %i.da
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !76
  %i.dk = add nuw nsw i32 %.2108169.ph, 1         ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.dk, %vec.epilog.scalar.ph.prol ]
  %.2108169.unr = phi i32 [ %.2108169.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dk, %vec.epilog.scalar.ph.prol ]
  %.5115168.unr = phi i64 [ %.5115168.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cz, %vec.epilog.scalar.ph.prol ]
  %i.dl = icmp eq i64 %.5115168.ph, 1
  br i1 %i.dl, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.2108169 = phi i32 [ %i.ei, %vec.epilog.scalar.ph ], [ %.2108169.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.5115168 = phi i64 [ %i.dx, %vec.epilog.scalar.ph ], [ %.5115168.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.dm = zext nneg i32 %.2108169 to i64          ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.5, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !76  ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.dm ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !76
  %i.dr = xor i8 %i.dq, %i.do
  store i8 %i.dr, ptr %i.dp, align 1, !tbaa !76
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.dm
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !76
  %i.du = xor i8 %i.dt, %i.do
  %i.dv = getelementptr inbounds nuw i8, ptr %.5121, i64 %i.dm
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !76
  %i.dw = add nuw nsw i32 %.2108169, 1
  %i.dx = add i64 %.5115168, -2                   ; 2 uses
  %i.dy = zext nneg i32 %i.dw to i64              ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.5, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !76  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.dy ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !76
  %i.ed = xor i8 %i.ec, %i.ea
  store i8 %i.ed, ptr %i.eb, align 1, !tbaa !76
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.dy
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !76
  %i.eg = xor i8 %i.ef, %i.ea
  %i.eh = getelementptr inbounds nuw i8, ptr %.5121, i64 %i.dy
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !76
  %i.ei = add nuw nsw i32 %.2108169, 2            ; 2 uses
  %.not129.1 = icmp eq i64 %i.dx, 0
  br i1 %.not129.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !2251

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader, %.loopexit135, %._crit_edge
  %storemerge = phi i32 [ %i.af, %._crit_edge ], [ 0, %.loopexit135 ], [ %i.q, %.preheader ], [ %i.cp, %vec.epilog.middle.block ], [ %i.bz, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ei, %vec.epilog.scalar.ph ]
  store i32 %storemerge, ptr %i.p, align 16, !tbaa !466
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %.loopexit
  %.1 = phi i32 [ 1, %.loopexit ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CRYPTO_gcm128_encrypt_ctr32(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !464 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !468  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !469
  %i.h = add i64 %i.g, %4                         ; 3 uses
  %i.i = icmp ugt i64 %i.h, 68719476704
  %i.j = icmp ult i64 %i.h, %4
  %or.cond148 = or i1 %i.i, %i.j
  br i1 %or.cond148, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.h, ptr %i.f, align 8, !tbaa !469
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !465
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.c(ptr noundef nonnull %i.m, ptr noundef nonnull %i.a) #46
  store i32 0, ptr %i.k, align 4, !tbaa !465
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8               ; 2 uses
  %i.p = and i8 %i.o, 1
  %.not143 = icmp eq i8 %i.p, 0
  br i1 %.not143, label %crypto_gcm_avx512_enabled.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 12), align 4, !tbaa !73 ; 2 uses
  %i.r = and i32 %i.q, 512
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %crypto_gcm_avx512_enabled.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.t = and i32 %i.s, -1073545216
  %.not3.i = icmp eq i32 %i.t, -1073545216
  br i1 %.not3.i, label %crypto_gcm_avx512_enabled.exit, label %crypto_gcm_avx512_enabled.exit.thread

crypto_gcm_avx512_enabled.exit:                   ; preds = %bb.f
  %i.u = and i32 %i.q, 1024
  %i.v = icmp ne i32 %i.u, 0
  %i.w = icmp ne i64 %4, 0
  %or.cond = and i1 %i.w, %i.v
  br i1 %or.cond, label %bb.g, label %crypto_gcm_avx512_enabled.exit.thread

bb.g:                                             ; preds = %crypto_gcm_avx512_enabled.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @aes_gcm_encrypt_avx512(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull %i.x, ptr noundef %2, i64 noundef %4, ptr noundef %3) #46
  br label %bb.r

crypto_gcm_avx512_enabled.exit.thread:            ; preds = %bb.e, %bb.f, %crypto_gcm_avx512_enabled.exit, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.z = load i32, ptr %i.y, align 16, !tbaa !466 ; 3 uses
  %.not144 = icmp eq i32 %i.z, 0
  br i1 %.not144, label %bb.j, label %.preheader150

.preheader150:                                    ; preds = %crypto_gcm_avx512_enabled.exit.thread
  %.not171 = icmp eq i64 %4, 0
  br i1 %.not171, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader150
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %.0123154 = phi ptr [ %2, %.lr.ph ], [ %i.ac, %bb.h ] ; 2 uses
  %.0125153 = phi i32 [ %i.z, %.lr.ph ], [ %i.ao, %bb.h ] ; 2 uses
  %.0129152 = phi ptr [ %3, %.lr.ph ], [ %i.ai, %bb.h ] ; 2 uses
  %.0134151 = phi i64 [ %4, %.lr.ph ], [ %i.am, %bb.h ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0123154, i64 1 ; 2 uses
  %i.ad = load i8, ptr %.0123154, align 1, !tbaa !76
  %i.ae = zext i32 %.0125153 to i64               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !76
  %i.ah = xor i8 %i.ag, %i.ad                     ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0129152, i64 1 ; 2 uses
  store i8 %i.ah, ptr %.0129152, align 1, !tbaa !76
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !76
  %i.al = xor i8 %i.ak, %i.ah
  store i8 %i.al, ptr %i.aj, align 1, !tbaa !76
  %i.am = add nsw i64 %.0134151, -1               ; 3 uses
  %i.an = add i32 %.0125153, 1
  %i.ao = and i32 %i.an, 15                       ; 4 uses
  %i.ap = icmp ne i32 %i.ao, 0
  %i.aq = icmp ne i64 %i.am, 0
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %i.ar, label %bb.h, label %._crit_edge, !llvm.loop !2256

._crit_edge:                                      ; preds = %bb.h
  %i.as = icmp eq i32 %i.ao, 0
  br i1 %i.as, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.c(ptr noundef nonnull %i.at, ptr noundef nonnull %i.a) #46
  %.pre = load i8, ptr %i.n, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %crypto_gcm_avx512_enabled.exit.thread
  %i.au = phi i8 [ %.pre, %bb.i ], [ %i.o, %crypto_gcm_avx512_enabled.exit.thread ]
  %.1135 = phi i64 [ %i.am, %bb.i ], [ %4, %crypto_gcm_avx512_enabled.exit.thread ] ; 4 uses
  %.1130 = phi ptr [ %i.ai, %bb.i ], [ %3, %crypto_gcm_avx512_enabled.exit.thread ] ; 3 uses
  %.1124 = phi ptr [ %i.ac, %bb.i ], [ %2, %crypto_gcm_avx512_enabled.exit.thread ] ; 3 uses
  %i.av = trunc i8 %i.au to i1
  %i.aw = icmp ne i64 %.1135, 0
  %or.cond3 = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ay = tail call i64 @aesni_gcm_encrypt(ptr noundef %.1124, ptr noundef %.1130, i64 noundef range(i64 1, 68719476705) %.1135, ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ax) #46 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.1124, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %.1130, i64 %i.ay
  %i.bb = sub i64 %.1135, %i.ay
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2136 = phi i64 [ %i.bb, %bb.k ], [ %.1135, %bb.j ] ; 3 uses
  %.2131 = phi ptr [ %i.ba, %bb.k ], [ %.1130, %bb.j ] ; 2 uses
  %.2 = phi ptr [ %i.az, %bb.k ], [ %.1124, %bb.j ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %.0.copyload.i = load i32, ptr %i.bc, align 4
  %i.bd = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i) ; 2 uses
  %i.be = icmp ugt i64 %.2136, 3071
  br i1 %i.be, label %.lr.ph163, label %._crit_edge164

.lr.ph163:                                        ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph163, %bb.m
  %.0121161 = phi i32 [ %i.bd, %.lr.ph163 ], [ %i.bg, %bb.m ]
  %.3160 = phi ptr [ %.2, %.lr.ph163 ], [ %i.bj, %bb.m ] ; 2 uses
  %.3132159 = phi ptr [ %.2131, %.lr.ph163 ], [ %i.bi, %bb.m ] ; 3 uses
  %.3137158 = phi i64 [ %.2136, %.lr.ph163 ], [ %i.bk, %bb.m ]
  tail call void %5(ptr noundef %.3160, ptr noundef %.3132159, i64 noundef 192, ptr noundef %1, ptr noundef nonnull %0) #46
  %i.bg = add i32 %.0121161, 192                  ; 3 uses
  %i.bh = tail call noundef i32 @llvm.bswap.i32(i32 %i.bg)
  store i32 %i.bh, ptr %i.bc, align 4
  tail call void %i.e(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.a, ptr noundef %.3132159, i64 noundef 3072) #46
  %i.bi = getelementptr inbounds nuw i8, ptr %.3132159, i64 3072 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.3160, i64 3072 ; 2 uses
  %i.bk = add i64 %.3137158, -3072                ; 3 uses
  %i.bl = icmp ugt i64 %i.bk, 3071
  br i1 %i.bl, label %bb.m, label %._crit_edge164, !llvm.loop !2257

._crit_edge164:                                   ; preds = %bb.m, %bb.l
  %.3137.lcssa = phi i64 [ %.2136, %bb.l ], [ %i.bk, %bb.m ] ; 4 uses
  %.3132.lcssa = phi ptr [ %.2131, %bb.l ], [ %i.bi, %bb.m ] ; 5 uses
  %.3.lcssa = phi ptr [ %.2, %bb.l ], [ %i.bj, %bb.m ] ; 4 uses
  %.0121.lcssa = phi i32 [ %i.bd, %bb.l ], [ %i.bg, %bb.m ] ; 2 uses
  %i.bm = and i64 %.3137.lcssa, 4080              ; 5 uses
  %.not145 = icmp eq i64 %i.bm, 0
  br i1 %.not145, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge164
  %i.bn = lshr i64 %.3137.lcssa, 4                ; 2 uses
  tail call void %5(ptr noundef %.3.lcssa, ptr noundef %.3132.lcssa, i64 noundef %i.bn, ptr noundef %1, ptr noundef nonnull %0) #46
  %i.bo = trunc nuw nsw i64 %i.bn to i32
  %i.bp = add i32 %.0121.lcssa, %i.bo             ; 2 uses
  %i.bq = tail call noundef i32 @llvm.bswap.i32(i32 %i.bp)
  store i32 %i.bq, ptr %i.bc, align 4
  %i.br = getelementptr i8, ptr %.3.lcssa, i64 %i.bm
  %i.bs = and i64 %.3137.lcssa, 15
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.e(ptr noundef nonnull %i.bt, ptr noundef nonnull %i.a, ptr noundef %.3132.lcssa, i64 noundef %i.bm) #46
  %i.bu = getelementptr i8, ptr %.3132.lcssa, i64 %i.bm
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge164
  %.4138 = phi i64 [ %i.bs, %bb.n ], [ %.3137.lcssa, %._crit_edge164 ] ; 12 uses
  %.4133 = phi ptr [ %i.bu, %bb.n ], [ %.3132.lcssa, %._crit_edge164 ] ; 10 uses
  %.4 = phi ptr [ %i.br, %bb.n ], [ %.3.lcssa, %._crit_edge164 ] ; 10 uses
  %.1122 = phi i32 [ %i.bp, %bb.n ], [ %.0121.lcssa, %._crit_edge164 ]
  %.not146 = icmp eq i64 %.4138, 0
end_hunk_0
begin_hunk_1_@CRYPTO_gcm128_tag:bb.a
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.g = load i32, ptr %i.f, align 4, !tbaa !465
  %.not24.i = icmp eq i32 %i.g, 0
  br i1 %.not24.i, label %CRYPTO_gcm128_finish.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.c(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a) #46, !inline_history !472
  br label %CRYPTO_gcm128_finish.exit

CRYPTO_gcm128_finish.exit:                        ; preds = %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.k = load <2 x i64>, ptr %i.i, align 16, !tbaa !80
  %i.l = shl <2 x i64> %i.k, splat (i64 3)
  %i.m = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %i.l)
  %i.n = load <2 x i64>, ptr %i.j, align 16
  %i.o = xor <2 x i64> %i.m, %i.n
  store <2 x i64> %i.o, ptr %i.j, align 16
  tail call void %i.c(ptr noundef nonnull %i.j, ptr noundef nonnull %i.a) #46, !inline_history !472
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load <2 x i64>, ptr %i.j, align 16
  %i.r = load <2 x i64>, ptr %i.p, align 16
  %i.s = xor <2 x i64> %i.r, %i.q
  store <2 x i64> %i.s, ptr %i.j, align 16
  %i.t = icmp eq i64 %2, 0
  br i1 %i.t, label %OPENSSL_memcpy.exit, label %bb.d

bb.d:                                             ; preds = %CRYPTO_gcm128_finish.exit
  %i.u = tail call i64 @llvm.umin.i64(i64 %2, i64 16)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull readonly align 16 %i.j, i64 %i.u, i1 false)
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %CRYPTO_gcm128_finish.exit, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i64 0, 2) i64 @CRYPTO_xts128_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %union.anon.2, align 16             ; 16 uses
  %7 = alloca %union.anon.2, align 16             ; 46 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  %i.a = icmp ult i64 %4, 16
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull readonly align 1 dereferenceable(16) %1, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2291
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2292
  call void %i.c(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef %i.e) #46
  %.not = icmp ne i32 %5, 0                       ; 2 uses
  %i.f = and i64 %4, 15
  %.not61 = icmp eq i64 %i.f, 0
  %or.cond = or i1 %.not, %.not61
  %i.g = add i64 %4, -16
  %spec.select = select i1 %or.cond, i64 %4, i64 %i.g ; 3 uses
  %i.h = icmp ugt i64 %spec.select, 15
  br i1 %i.h, label %.lr.ph, label %select.unfold._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load <2 x i64>, ptr %6, align 16, !tbaa !76
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %select.unfold
  %.05268 = phi ptr [ %2, %.lr.ph ], [ %i.w, %select.unfold ] ; 2 uses
  %.05367 = phi ptr [ %3, %.lr.ph ], [ %i.v, %select.unfold ] ; 2 uses
  %.166 = phi i64 [ %spec.select, %.lr.ph ], [ %i.t, %select.unfold ]
  %i.l = phi <2 x i64> [ %i.k, %.lr.ph ], [ %i.af, %select.unfold ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull readonly align 1 dereferenceable(16) %.05268, i64 16, i1 false)
  %i.m = load <2 x i64>, ptr %7, align 16, !tbaa !76
  %i.n = xor <2 x i64> %i.m, %i.l
  store <2 x i64> %i.n, ptr %7, align 16, !tbaa !76
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !2293
  %i.p = load ptr, ptr %0, align 8, !tbaa !2294
  call void %i.o(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %i.p) #46
  %i.q = load <2 x i64>, ptr %6, align 16, !tbaa !76 ; 3 uses
  %i.r = load <2 x i64>, ptr %7, align 16, !tbaa !76
  %i.s = xor <2 x i64> %i.r, %i.q                 ; 2 uses
  store <2 x i64> %i.s, ptr %7, align 16, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.05367, ptr noundef nonnull readonly align 16 dereferenceable(16) %7, i64 16, i1 false)
  %i.t = add i64 %.166, -16                       ; 4 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.loopexit, label %select.unfold

select.unfold:                                    ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.05367, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05268, i64 16 ; 2 uses
  %i.x = extractelement <2 x i64> %i.q, i64 1     ; 2 uses
  %isneg62 = icmp slt i64 %i.x, 0
  %i.y = extractelement <2 x i64> %i.q, i64 0     ; 2 uses
  %i.z = shl i64 %i.y, 1
  %i.aa = select i1 %isneg62, i64 135, i64 0
  %i.ab = xor i64 %i.aa, %i.z                     ; 2 uses
  store i64 %i.ab, ptr %6, align 16, !tbaa !76
  %i.ac = call i64 @llvm.fshl.i64(i64 %i.x, i64 %i.y, i64 1) ; 2 uses
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !76
  %i.ad = icmp ugt i64 %i.t, 15
  %i.ae = insertelement <2 x i64> poison, i64 %i.ab, i64 0
  %i.af = insertelement <2 x i64> %i.ae, i64 %i.ac, i64 1
  br i1 %i.ad, label %bb.c, label %select.unfold._crit_edge.loopexit, !llvm.loop !2278

select.unfold._crit_edge.loopexit:                ; preds = %select.unfold
  %i.ag = extractelement <2 x i64> %i.s, i64 0
  br label %select.unfold._crit_edge

select.unfold._crit_edge:                         ; preds = %select.unfold._crit_edge.loopexit, %bb.b
  %i.ah = phi i64 [ undef, %bb.b ], [ %i.ag, %select.unfold._crit_edge.loopexit ]
  %.1.lcssa = phi i64 [ %spec.select, %bb.b ], [ %i.t, %select.unfold._crit_edge.loopexit ] ; 19 uses
  %.053.lcssa = phi ptr [ %3, %bb.b ], [ %i.v, %select.unfold._crit_edge.loopexit ] ; 15 uses
  %.052.lcssa = phi ptr [ %2, %bb.b ], [ %i.w, %select.unfold._crit_edge.loopexit ] ; 14 uses
  br i1 %.not, label %.preheader, label %bb.d

.preheader:                                       ; preds = %select.unfold._crit_edge
  %.not77 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not77, label %._crit_edge75, label %iter.check170

iter.check170:                                    ; preds = %.preheader
  %min.iters.check144 = icmp samesign ult i64 %.1.lcssa, 4
  br i1 %min.iters.check144, label %.lr.ph74.preheader, label %vector.memcheck145

vector.memcheck145:                               ; preds = %iter.check170
  %i.ai = getelementptr i8, ptr %.053.lcssa, i64 %.1.lcssa ; 2 uses
  %i.aj = getelementptr i8, ptr %7, i64 %.1.lcssa ; 2 uses
  %i.ak = getelementptr i8, ptr %.052.lcssa, i64 %.1.lcssa ; 2 uses
  %bound0146 = icmp ult ptr %.053.lcssa, %i.aj
  %bound1147 = icmp ult ptr %7, %i.ai
  %found.conflict148 = and i1 %bound0146, %bound1147
  %bound0149 = icmp ult ptr %.053.lcssa, %i.ak
  %bound1150 = icmp ult ptr %.052.lcssa, %i.ai
  %found.conflict151 = and i1 %bound0149, %bound1150
  %conflict.rdx152 = or i1 %found.conflict148, %found.conflict151
  %bound0153 = icmp ult ptr %7, %i.ak
  %bound1154 = icmp ult ptr %.052.lcssa, %i.aj
  %found.conflict155 = and i1 %bound0153, %bound1154
  %conflict.rdx156 = or i1 %conflict.rdx152, %found.conflict155
  br i1 %conflict.rdx156, label %.lr.ph74.preheader, label %vec.epilog.ph174

vec.epilog.ph174:                                 ; preds = %vector.memcheck145
  %n.vec176 = and i64 %.1.lcssa, 12               ; 3 uses
  br label %vec.epilog.vector.body177

vec.epilog.vector.body177:                        ; preds = %vec.epilog.vector.body177, %vec.epilog.ph174
  %index178 = phi i64 [ 0, %vec.epilog.ph174 ], [ %index.next181, %vec.epilog.vector.body177 ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 %index178
  %wide.load179 = load <4 x i8>, ptr %i.al, align 1, !tbaa !76, !alias.scope !2295
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 %index178 ; 2 uses
  %wide.load180 = load <4 x i8>, ptr %i.am, align 4, !tbaa !76, !alias.scope !2296, !noalias !2295
  %i.an = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 %index178
  store <4 x i8> %wide.load180, ptr %i.an, align 1, !tbaa !76, !alias.scope !2297, !noalias !2298
  store <4 x i8> %wide.load179, ptr %i.am, align 4, !tbaa !76, !alias.scope !2296, !noalias !2295
  %index.next181 = add nuw i64 %index178, 4       ; 2 uses
  %i.ao = icmp eq i64 %index.next181, %n.vec176
  br i1 %i.ao, label %vec.epilog.middle.block182, label %vec.epilog.vector.body177, !llvm.loop !2283

vec.epilog.middle.block182:                       ; preds = %vec.epilog.vector.body177
  %cmp.n183 = icmp eq i64 %.1.lcssa, %n.vec176
  br i1 %cmp.n183, label %._crit_edge75.loopexit, label %.lr.ph74.preheader

.lr.ph74.preheader:                               ; preds = %iter.check170, %vector.memcheck145, %vec.epilog.middle.block182
  %indvars.iv82.ph = phi i64 [ 0, %vector.memcheck145 ], [ 0, %iter.check170 ], [ %n.vec176, %vec.epilog.middle.block182 ] ; 6 uses
  %.neg191 = or disjoint i64 %indvars.iv82.ph, 1
  %xtraiter189 = and i64 %.1.lcssa, 1
  %lcmp.mod190.not = icmp eq i64 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %.lr.ph74.prol.loopexit, label %.lr.ph74.prol

.lr.ph74.prol:                                    ; preds = %.lr.ph74.preheader
  %i.ap = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 %indvars.iv82.ph
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !76
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv82.ph ; 2 uses
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !76
  %i.at = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 %indvars.iv82.ph
  store i8 %i.as, ptr %i.at, align 1, !tbaa !76
  store i8 %i.aq, ptr %i.ar, align 4, !tbaa !76
  %indvars.iv.next83.prol = or disjoint i64 %indvars.iv82.ph, 1
  br label %.lr.ph74.prol.loopexit

.lr.ph74.prol.loopexit:                           ; preds = %.lr.ph74.prol, %.lr.ph74.preheader
  %indvars.iv82.unr = phi i64 [ %indvars.iv82.ph, %.lr.ph74.preheader ], [ %indvars.iv.next83.prol, %.lr.ph74.prol ]
  %i.au = icmp eq i64 %.1.lcssa, %.neg191
  br i1 %i.au, label %._crit_edge75.loopexit, label %.lr.ph74

.lr.ph74:                                         ; preds = %.lr.ph74.prol.loopexit, %.lr.ph74
  %indvars.iv82 = phi i64 [ %indvars.iv.next83.1, %.lr.ph74 ], [ %indvars.iv82.unr, %.lr.ph74.prol.loopexit ] ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 %indvars.iv82
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !76
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv82 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !76
  %i.az = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 %indvars.iv82
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !76
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !76
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 %indvars.iv.next83
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !76
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv.next83 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !76
  %i.be = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 %indvars.iv.next83
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !76
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !76
  %indvars.iv.next83.1 = add nuw nsw i64 %indvars.iv82, 2 ; 2 uses
  %exitcond85.not.1 = icmp eq i64 %indvars.iv.next83.1, %.1.lcssa
  br i1 %exitcond85.not.1, label %._crit_edge75.loopexit, label %.lr.ph74, !llvm.loop !2284

._crit_edge75.loopexit:                           ; preds = %.lr.ph74.prol.loopexit, %.lr.ph74, %vec.epilog.middle.block182
  %.pre89 = load i64, ptr %7, align 16, !tbaa !76
  br label %._crit_edge75

._crit_edge75:                                    ; preds = %._crit_edge75.loopexit, %.preheader
  %i.bf = phi i64 [ %.pre89, %._crit_edge75.loopexit ], [ %i.ah, %.preheader ]
  %i.bg = load i64, ptr %6, align 16, !tbaa !76
  %i.bh = xor i64 %i.bf, %i.bg
  store i64 %i.bh, ptr %7, align 16, !tbaa !76
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !76
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !76
  %i.bm = xor i64 %i.bl, %i.bj
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !76
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !2293
  %i.bp = load ptr, ptr %0, align 8, !tbaa !2294
  call void %i.bo(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %i.bp) #46
  %i.bq = load <2 x i64>, ptr %6, align 16, !tbaa !76
  %i.br = load <2 x i64>, ptr %7, align 16, !tbaa !76
  %i.bs = xor <2 x i64> %i.br, %i.bq
  store <2 x i64> %i.bs, ptr %7, align 16, !tbaa !76
  %i.bt = getelementptr inbounds i8, ptr %.053.lcssa, i64 -16
  br label %.loopexit.sink.split

bb.d:                                             ; preds = %select.unfold._crit_edge
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !76 ; 2 uses
  %isneg = icmp slt i64 %i.bv, 0
  %i.bw = load i64, ptr %6, align 16, !tbaa !76   ; 2 uses
  %i.bx = shl i64 %i.bw, 1
  %i.by = select i1 %isneg, i64 135, i64 0
  %i.bz = xor i64 %i.bx, %i.by                    ; 2 uses
  %i.ca = call i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bw, i64 1) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull readonly align 1 dereferenceable(16) %.052.lcssa, i64 16, i1 false)
  %i.cb = load i64, ptr %7, align 16, !tbaa !76
  %i.cc = xor i64 %i.cb, %i.bz
  store i64 %i.cc, ptr %7, align 16, !tbaa !76
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !76
  %i.cf = xor i64 %i.ce, %i.ca
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !76
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !2293
  %i.ci = load ptr, ptr %0, align 8, !tbaa !2294
  call void %i.ch(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %i.ci) #46
  %i.cj = load i64, ptr %7, align 16, !tbaa !76
  %i.ck = xor i64 %i.cj, %i.bz                    ; 2 uses
  store i64 %i.ck, ptr %7, align 16, !tbaa !76
  %i.cl = load i64, ptr %i.cd, align 8, !tbaa !76
  %i.cm = xor i64 %i.cl, %i.ca                    ; 2 uses
  store i64 %i.cm, ptr %i.cd, align 8, !tbaa !76
  %.not76 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not76, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.d
  %min.iters.check = icmp samesign ult i64 %.1.lcssa, 4
  br i1 %min.iters.check, label %.lr.ph72.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cn = getelementptr i8, ptr %.053.lcssa, i64 16 ; 2 uses
  %i.co = or disjoint i64 %.1.lcssa, 16           ; 2 uses
  %i.cp = getelementptr i8, ptr %.053.lcssa, i64 %i.co ; 2 uses
  %i.cq = getelementptr i8, ptr %7, i64 %.1.lcssa ; 2 uses
  %i.cr = getelementptr i8, ptr %.052.lcssa, i64 16 ; 2 uses
  %i.cs = getelementptr i8, ptr %.052.lcssa, i64 %i.co ; 2 uses
  %bound0 = icmp ult ptr %i.cn, %i.cq
  %bound1 = icmp ult ptr %7, %i.cp
  %found.conflict = and i1 %bound0, %bound1
  %bound0113 = icmp ult ptr %i.cn, %i.cs
  %bound1114 = icmp ult ptr %i.cr, %i.cp
  %found.conflict115 = and i1 %bound0113, %bound1114
  %conflict.rdx = or i1 %found.conflict, %found.conflict115
  %bound0116 = icmp ult ptr %7, %i.cs
  %bound1117 = icmp ult ptr %i.cr, %i.cq
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx119 = or i1 %conflict.rdx, %found.conflict118
  br i1 %conflict.rdx119, label %.lr.ph72.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec124 = and i64 %.1.lcssa, 12               ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index125 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next128, %vec.epilog.vector.body ] ; 3 uses
  %i.ct = add nuw nsw i64 %index125, 16           ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 %i.ct
  %wide.load126 = load <4 x i8>, ptr %i.cu, align 1, !tbaa !76, !alias.scope !2299
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 %index125 ; 2 uses
  %wide.load127 = load <4 x i8>, ptr %i.cv, align 4, !tbaa !76, !alias.scope !2300, !noalias !2299
  %i.cw = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 %i.ct
  store <4 x i8> %wide.load127, ptr %i.cw, align 1, !tbaa !76, !alias.scope !2301, !noalias !2302
  store <4 x i8> %wide.load126, ptr %i.cv, align 4, !tbaa !76, !alias.scope !2300, !noalias !2299
  %index.next128 = add nuw i64 %index125, 4       ; 2 uses
  %i.cx = icmp eq i64 %index.next128, %n.vec124
  br i1 %i.cx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2289

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n129 = icmp eq i64 %.1.lcssa, %n.vec124
  br i1 %cmp.n129, label %._crit_edge.loopexit, label %.lr.ph72.preheader

.lr.ph72.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec124, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  %xtraiter = and i64 %.1.lcssa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph72.prol.loopexit, label %.lr.ph72.prol

.lr.ph72.prol:                                    ; preds = %.lr.ph72.preheader
  %i.cy = or disjoint i64 %indvars.iv.ph, 16      ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !76
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv.ph ; 2 uses
  %i.dc = load i8, ptr %i.db, align 4, !tbaa !76
  %i.dd = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 %i.cy
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !76
  store i8 %i.da, ptr %i.db, align 4, !tbaa !76
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph72.prol.loopexit

.lr.ph72.prol.loopexit:                           ; preds = %.lr.ph72.prol, %.lr.ph72.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph72.preheader ], [ %indvars.iv.next.prol, %.lr.ph72.prol ]
  %i.de = icmp eq i64 %.1.lcssa, %.neg
  br i1 %i.de, label %._crit_edge.loopexit, label %.lr.ph72

.lr.ph72:                                         ; preds = %.lr.ph72.prol.loopexit, %.lr.ph72
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph72 ], [ %indvars.iv.unr, %.lr.ph72.prol.loopexit ] ; 5 uses
  %i.df = add nuw nsw i64 %indvars.iv, 16         ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !76
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !76
  %i.dk = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 %i.df
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !76
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !76
  %i.dl = add nuw nsw i64 %indvars.iv, 17         ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !76
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !76
  %i.dr = getelementptr inbounds nuw i8, ptr %.053.lcssa, i64 %i.dl
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !76
  store i8 %i.dn, ptr %i.dp, align 1, !tbaa !76
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %.1.lcssa
  br i1 %exitcond.not.1, label %._crit_edge.loopexit, label %.lr.ph72, !llvm.loop !2290

._crit_edge.loopexit:                             ; preds = %.lr.ph72.prol.loopexit, %.lr.ph72, %vec.epilog.middle.block
  %.pre87 = load i64, ptr %7, align 16, !tbaa !76
  %.pre88 = load i64, ptr %i.cd, align 8, !tbaa !76
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.ds = phi i64 [ %.pre88, %._crit_edge.loopexit ], [ %i.cm, %bb.d ]
  %i.dt = phi i64 [ %.pre87, %._crit_edge.loopexit ], [ %i.ck, %bb.d ]
  %i.du = load i64, ptr %6, align 16, !tbaa !76
  %i.dv = xor i64 %i.dt, %i.du
  store i64 %i.dv, ptr %7, align 16, !tbaa !76
  %i.dw = load i64, ptr %i.bu, align 8, !tbaa !76
  %i.dx = xor i64 %i.ds, %i.dw
  store i64 %i.dx, ptr %i.cd, align 8, !tbaa !76
  %i.dy = load ptr, ptr %i.cg, align 8, !tbaa !2293
  %i.dz = load ptr, ptr %0, align 8, !tbaa !2294
  call void %i.dy(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %i.dz) #46
  %i.ea = load <2 x i64>, ptr %6, align 16, !tbaa !76
  %i.eb = load <2 x i64>, ptr %7, align 16, !tbaa !76
  %i.ec = xor <2 x i64> %i.eb, %i.ea
  store <2 x i64> %i.ec, ptr %7, align 16, !tbaa !76
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %._crit_edge, %._crit_edge75
  %.sink = phi ptr [ %i.bt, %._crit_edge75 ], [ %.053.lcssa, %._crit_edge ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sink, ptr noundef nonnull readonly align 16 dereferenceable(16) %7, i64 16, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.loopexit.sink.split, %bb.a
  %.0 = phi i64 [ 1, %.loopexit.sink.split ], [ 0, %bb.a ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @CRYPTO_POLYVAL_init(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(16) %1, i64 16, i1 false)
  %.0.copyload.i.i = load i64, ptr %i.a, align 8  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.0.copyload.i12.i = load i64, ptr %i.c, align 8 ; 2 uses
  %i.d = and i64 %.0.copyload.i.i, 1              ; 2 uses
  %.neg.i.i.i.i = sub nsw i64 0, %i.d
  %i.e = tail call i64 @llvm.fshl.i64(i64 %.0.copyload.i12.i, i64 %.0.copyload.i.i, i64 63)
  %i.f = lshr i64 %.0.copyload.i12.i, 1
  %i.g = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.neg.i.i.i.i) #47, !srcloc !81
  %i.h = add nsw i64 %i.d, -1
  %i.i = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.h) #47, !srcloc !81 ; 0 uses
  %i.j = shl i64 %i.g, 56
  %i.k = and i64 %i.j, -2233785415175766016
  %i.l = xor i64 %i.k, %i.f
  %i.m = tail call noundef i64 @llvm.bswap.i64(i64 %i.l)
  store i64 %i.m, ptr %i.a, align 8
  %i.n = tail call noundef i64 @llvm.bswap.i64(i64 %i.e)
  store i64 %i.n, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @CRYPTO_ghash_init(ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @CRYPTO_POLYVAL_update_blocks(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [512 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %.not20 = icmp eq i64 %2, 0
  br i1 %.not20, label %._crit_edge23, label %OPENSSL_memcpy.exit.lr.ph

OPENSSL_memcpy.exit.lr.ph:                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %OPENSSL_memcpy.exit.lr.ph, %._crit_edge
  %.01722 = phi i64 [ %2, %OPENSSL_memcpy.exit.lr.ph ], [ %i.e, %._crit_edge ] ; 2 uses
  %.01821 = phi ptr [ %1, %OPENSSL_memcpy.exit.lr.ph ], [ %i.d, %._crit_edge ] ; 2 uses
  %spec.store.select = call i64 @llvm.umin.i64(i64 %.01722, i64 512) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr readonly align 1 %.01821, i64 %spec.store.select, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %.01821, i64 %spec.store.select
  %i.e = sub nuw i64 %.01722, %spec.store.select  ; 2 uses
  %i.f = lshr i64 %spec.store.select, 4           ; 3 uses
  switch i64 %i.f, label %.lr.ph.preheader.new [
    i64 0, label %._crit_edge
    i64 1, label %.lr.ph.epil.preheader
  ]

.lr.ph.preheader.new:                             ; preds = %OPENSSL_memcpy.exit
  %unroll_iter = and i64 %i.f, 62
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.g = and i64 %spec.store.select, 16
  %lcmp.mod.not = icmp eq i64 %i.g, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %OPENSSL_memcpy.exit, %._crit_edge.loopexit.unr-lcssa
  %.019.epil.init = phi i64 [ 0, %OPENSSL_memcpy.exit ], [ %i.y, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod27 = trunc i64 %i.f to i1
  call void @llvm.assume(i1 %lcmp.mod27)
  %i.h = shl nuw nsw i64 %.019.epil.init, 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h ; 3 uses
  %.0.copyload.i.i.epil = load i64, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.0.copyload.i5.i.epil = load i64, ptr %i.j, align 8
  %i.k = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i5.i.epil)
  store i64 %i.k, ptr %i.i, align 8
  %i.l = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.epil)
  store i64 %i.l, ptr %i.j, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %OPENSSL_memcpy.exit
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !2306
  call void %i.m(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, i64 noundef %spec.store.select) #46
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge23, label %OPENSSL_memcpy.exit, !llvm.loop !2303

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.019 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.y, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.n = shl nuw nsw i64 %.019, 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.n ; 3 uses
  %.0.copyload.i.i = load i64, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.0.copyload.i5.i = load i64, ptr %i.p, align 8
  %i.q = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i5.i)
  store i64 %i.q, ptr %i.o, align 8
  %i.r = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i)
  store i64 %i.r, ptr %i.p, align 8
  %i.s = shl i64 %.019, 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %.0.copyload.i.i.1 = load i64, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %.0.copyload.i5.i.1 = load i64, ptr %i.v, align 8
  %i.w = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i5.i.1)
  store i64 %i.w, ptr %i.u, align 8
  %i.x = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.1)
  store i64 %i.x, ptr %i.v, align 8
  %i.y = add nuw nsw i64 %.019, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !2304

._crit_edge23:                                    ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @CRYPTO_POLYVAL_finish(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 16)) %1) local_unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %1, ptr noundef nonnull readonly align 1 dereferenceable(16) %0, i64 16, i1 false)
  %.0.copyload.i.i = load i64, ptr %1, align 1
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.0.copyload.i5.i = load i64, ptr %i.a, align 1
  %i.b = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i5.i)
  store i64 %i.b, ptr %1, align 1
  %i.c = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i)
  store i64 %i.c, ptr %i.a, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @PKCS5_PBKDF2_HMAC(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6, ptr nofree noundef captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 7 uses
  %i.b = alloca [64 x i8], align 16               ; 7 uses
  %8 = alloca %struct.hmac_ctx_st, align 8        ; 16 uses
  %i.c = alloca [64 x i8], align 16               ; 10 uses
  %i.d = alloca [4 x i8], align 1                 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !207  ; 2 uses
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1224) %8, i8 0, i64 1224, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  %i.h = call i32 @HMAC_Init_ex(ptr noundef nonnull %8, ptr noundef %0, i64 noundef %1, ptr noundef %5, ptr poison)
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.q, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not53112 = icmp eq i64 %6, 0
  br i1 %.not53112, label %._crit_edge117, label %.lr.ph116

.lr.ph116:                                        ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 2
end_hunk_1
