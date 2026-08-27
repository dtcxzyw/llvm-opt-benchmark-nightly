Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bcm?download=true
inline.NumInlined: 5608
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 186
loop-unroll.NumRuntimeUnrolled: 132
loop-unroll.NumUnrolled: 371
begin_hunk_0_@CRYPTO_gcm128_encrypt:bb.a
  %i.bd = xor i64 %i.bc, %i.bb
  %i.be = xor i64 %i.bd, %i.ae
  %i.bf = xor i64 %i.be, %i.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  %i.bg = tail call noundef i64 @llvm.bswap.i64(i64 %i.bf)
  store i64 %i.bg, ptr %i.t, align 8
  %i.bh = tail call noundef i64 @llvm.bswap.i64(i64 %i.ba)
  store i64 %i.bh, ptr %i.u, align 8
  store i32 0, ptr %i.r, align 4, !tbaa !113
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !124 ; 3 uses
  %.not108 = icmp eq i32 %i.bj, 0
  br i1 %.not108, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not136 = icmp eq i64 %4, 0
  br i1 %.not136, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.090119 = phi i32 [ %i.bj, %.lr.ph ], [ %i.by, %bb.e ] ; 2 uses
  %.092118 = phi i64 [ %4, %.lr.ph ], [ %i.bw, %bb.e ]
  %.096117 = phi ptr [ %3, %.lr.ph ], [ %i.bs, %bb.e ] ; 2 uses
  %.0100116 = phi ptr [ %2, %.lr.ph ], [ %i.bm, %bb.e ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0100116, i64 1 ; 2 uses
  %i.bn = load i8, ptr %.0100116, align 1, !tbaa !13
  %i.bo = zext i32 %.090119 to i64                ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !13
  %i.br = xor i8 %i.bq, %i.bn                     ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.096117, i64 1 ; 2 uses
  store i8 %i.br, ptr %.096117, align 1, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bo ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !13
  %i.bv = xor i8 %i.bu, %i.br
  store i8 %i.bv, ptr %i.bt, align 1, !tbaa !13
  %i.bw = add nsw i64 %.092118, -1                ; 3 uses
  %i.bx = add i32 %.090119, 1
  %i.by = and i32 %i.bx, 15                       ; 4 uses
  %i.bz = icmp ne i32 %i.by, 0
  %i.ca = icmp ne i64 %i.bw, 0
  %i.cb = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %i.cb, label %bb.e, label %._crit_edge, !llvm.loop !125

._crit_edge:                                      ; preds = %bb.e
  %i.cc = icmp eq i32 %i.by, 0
  br i1 %i.cc, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %._crit_edge
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.0.copyload.i.i112 = load i64, ptr %i.ce, align 8
  %i.cf = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i112) ; 2 uses
  %.0.copyload.i6.i113 = load i64, ptr %i.cd, align 8
  %i.cg = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i6.i113) ; 2 uses
  %.val.i114 = load i64, ptr %0, align 8, !tbaa !93 ; 2 uses
  %i.ch = getelementptr i8, ptr %0, i64 8
  %.val5.i115 = load i64, ptr %i.ch, align 8, !tbaa !90 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.cf, i64 noundef %.val5.i115)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.c, ptr noundef %i.d, i64 noundef %i.cg, i64 noundef %.val.i114)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  %i.ci = xor i64 %i.cg, %i.cf
  %i.cj = xor i64 %.val5.i115, %.val.i114
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.e, ptr noundef %i.f, i64 noundef %i.ci, i64 noundef %i.cj)
  %i.ck = load i64, ptr %i.a, align 8, !tbaa !94  ; 8 uses
  %i.cl = load i64, ptr %i.c, align 8, !tbaa !94  ; 2 uses
  %i.cm = load i64, ptr %i.e, align 8, !tbaa !94
  %i.cn = load i64, ptr %i.b, align 8, !tbaa !94  ; 2 uses
  %i.co = load i64, ptr %i.d, align 8, !tbaa !94  ; 2 uses
  %i.cp = load i64, ptr %i.f, align 8, !tbaa !94
  %i.cq = shl i64 %i.ck, 63
  %i.cr = shl i64 %i.ck, 62
  %i.cs = shl i64 %i.ck, 57
  %i.ct = xor i64 %i.cq, %i.cr
  %i.cu = xor i64 %i.ct, %i.cs
  %i.cv = xor i64 %i.cu, %i.cm
  %i.cw = xor i64 %i.cv, %i.ck
  %i.cx = xor i64 %i.cw, %i.cl
  %i.cy = xor i64 %i.cx, %i.cn                    ; 7 uses
  %i.cz = tail call i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.ck, i64 63)
  %i.da = lshr i64 %i.cy, 1
  %i.db = tail call i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.ck, i64 62)
  %i.dc = lshr i64 %i.cy, 2
  %i.dd = tail call i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.ck, i64 57)
  %i.de = xor i64 %i.cp, %i.cz
  %i.df = xor i64 %i.de, %i.db
  %i.dg = xor i64 %i.df, %i.dd
  %i.dh = xor i64 %i.dg, %i.ck
  %i.di = xor i64 %i.dh, %i.cl
  %i.dj = xor i64 %i.di, %i.cn
  %i.dk = xor i64 %i.dj, %i.co
  %i.dl = lshr i64 %i.cy, 7
  %i.dm = xor i64 %i.da, %i.dc
  %i.dn = xor i64 %i.dm, %i.dl
  %i.do = xor i64 %i.dn, %i.co
  %i.dp = xor i64 %i.do, %i.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.dq = tail call noundef i64 @llvm.bswap.i64(i64 %i.dp)
  store i64 %i.dq, ptr %i.cd, align 8
  %i.dr = tail call noundef i64 @llvm.bswap.i64(i64 %i.dk)
  store i64 %i.dr, ptr %i.ce, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.1101 = phi ptr [ %i.bm, %bb.f ], [ %2, %bb.d ] ; 2 uses
  %.197 = phi ptr [ %i.bs, %bb.f ], [ %3, %bb.d ] ; 2 uses
  %.193 = phi i64 [ %i.bw, %bb.f ], [ %4, %bb.d ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %.0.copyload.i = load i32, ptr %i.ds, align 4
  %i.dt = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i) ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !96 ; 2 uses
  %i.dw = icmp ugt i64 %.193, 3071
  br i1 %i.dw, label %.lr.ph128, label %._crit_edge129

.lr.ph128:                                        ; preds = %bb.g
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph128, %bb.h
  %.088126 = phi i32 [ %i.dt, %.lr.ph128 ], [ %i.dz, %bb.h ]
  %.294125 = phi i64 [ %.193, %.lr.ph128 ], [ %i.ed, %bb.h ]
  %.298124 = phi ptr [ %.197, %.lr.ph128 ], [ %i.eb, %bb.h ] ; 3 uses
  %.2102123 = phi ptr [ %.1101, %.lr.ph128 ], [ %i.ec, %bb.h ] ; 2 uses
  tail call void %i.dv(ptr noundef %.2102123, ptr noundef %.298124, i64 noundef 192, ptr noundef nonnull %i.dx, ptr noundef nonnull %1) #36
  %i.dz = add i32 %.088126, 192                   ; 3 uses
  %i.ea = tail call noundef i32 @llvm.bswap.i32(i32 %i.dz)
  store i32 %i.ea, ptr %i.ds, align 4
  tail call void @gcm_ghash_nohw(ptr noundef nonnull %i.dy, ptr noundef nonnull %0, ptr noundef %.298124, i64 noundef 3072)
  %i.eb = getelementptr inbounds nuw i8, ptr %.298124, i64 3072 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.2102123, i64 3072 ; 2 uses
  %i.ed = add nsw i64 %.294125, -3072             ; 3 uses
  %i.ee = icmp ugt i64 %i.ed, 3071
  br i1 %i.ee, label %bb.h, label %._crit_edge129, !llvm.loop !126

._crit_edge129:                                   ; preds = %bb.h, %bb.g
  %.2102.lcssa = phi ptr [ %.1101, %bb.g ], [ %i.ec, %bb.h ] ; 4 uses
  %.298.lcssa = phi ptr [ %.197, %bb.g ], [ %i.eb, %bb.h ] ; 5 uses
  %.294.lcssa = phi i64 [ %.193, %bb.g ], [ %i.ed, %bb.h ] ; 4 uses
  %.088.lcssa = phi i32 [ %i.dt, %bb.g ], [ %i.dz, %bb.h ] ; 2 uses
  %i.ef = and i64 %.294.lcssa, 4080               ; 5 uses
  %.not109 = icmp eq i64 %i.ef, 0
  br i1 %.not109, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge129
  %i.eg = lshr i64 %.294.lcssa, 4                 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void %i.dv(ptr noundef %.2102.lcssa, ptr noundef %.298.lcssa, i64 noundef %i.eg, ptr noundef nonnull %i.eh, ptr noundef nonnull %1) #36
  %i.ei = trunc nuw nsw i64 %i.eg to i32
  %i.ej = add i32 %.088.lcssa, %i.ei              ; 2 uses
  %i.ek = tail call noundef i32 @llvm.bswap.i32(i32 %i.ej)
  store i32 %i.ek, ptr %i.ds, align 4
  %i.el = getelementptr i8, ptr %.2102.lcssa, i64 %i.ef
  %i.em = and i64 %.294.lcssa, 15
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @gcm_ghash_nohw(ptr noundef nonnull %i.en, ptr noundef nonnull %0, ptr noundef %.298.lcssa, i64 noundef %i.ef)
  %i.eo = getelementptr i8, ptr %.298.lcssa, i64 %i.ef
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge129
  %.3103 = phi ptr [ %i.el, %bb.i ], [ %.2102.lcssa, %._crit_edge129 ] ; 7 uses
  %.399 = phi ptr [ %i.eo, %bb.i ], [ %.298.lcssa, %._crit_edge129 ] ; 7 uses
  %.395 = phi i64 [ %i.em, %bb.i ], [ %.294.lcssa, %._crit_edge129 ] ; 14 uses
  %.189 = phi i32 [ %i.ej, %bb.i ], [ %.088.lcssa, %._crit_edge129 ]
  %.not110 = icmp eq i64 %.395, 0
  br i1 %.not110, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.j
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !108
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void %i.eq(ptr noundef nonnull %1, ptr noundef nonnull %i.er, ptr noundef nonnull %i.es) #36
  %i.et = add i32 %.189, 1
  %i.eu = tail call noundef i32 @llvm.bswap.i32(i32 %i.et)
  store i32 %i.eu, ptr %i.ds, align 4
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %or.cond192 = icmp ult i64 %.395, 4
  br i1 %or.cond192, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ew = add i64 %.395, %i.ef                    ; 2 uses
  %scevgep = getelementptr i8, ptr %.298.lcssa, i64 %i.ew ; 2 uses
  %i.ex = getelementptr i8, ptr %1, i64 %.395
  %scevgep169 = getelementptr i8, ptr %i.ex, i64 64 ; 2 uses
  %scevgep170 = getelementptr i8, ptr %.2102.lcssa, i64 %i.ew ; 2 uses
  %bound0 = icmp ult ptr %.399, %scevgep169
  %bound1 = icmp ult ptr %i.er, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0171 = icmp ult ptr %.399, %scevgep170
  %bound1172 = icmp ult ptr %.3103, %scevgep
  %found.conflict173 = and i1 %bound0171, %bound1172
  %conflict.rdx = or i1 %found.conflict, %found.conflict173
  %bound0174 = icmp ult ptr %i.er, %scevgep170
  %bound1175 = icmp ult ptr %.3103, %scevgep169
  %found.conflict176 = and i1 %bound0174, %bound1175
  %conflict.rdx177 = or i1 %conflict.rdx, %found.conflict176
  br i1 %conflict.rdx177, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check178 = icmp ult i64 %.395, 16
  br i1 %min.iters.check178, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ey = and i64 %.395, 12
  %n.vec = and i64 %.395, -16                     ; 4 uses
  %i.ez = trunc i64 %n.vec to i32                 ; 2 uses
  %i.fa = and i64 %.395, 15
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fb = and i64 %index, 4294967280              ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.3103, i64 %i.fb
  %wide.load = load <16 x i8>, ptr %i.fc, align 1, !tbaa !13, !alias.scope !127
  %i.fd = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fb
  %wide.load179 = load <16 x i8>, ptr %i.fd, align 1, !tbaa !13, !alias.scope !130, !noalias !127
  %i.fe = xor <16 x i8> %wide.load179, %wide.load ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.399, i64 %i.fb
  store <16 x i8> %i.fe, ptr %i.ff, align 1, !tbaa !13, !alias.scope !132, !noalias !134
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fb ; 2 uses
  %wide.load180 = load <16 x i8>, ptr %i.fg, align 1, !tbaa !13, !alias.scope !130, !noalias !127
  %i.fh = xor <16 x i8> %wide.load180, %i.fe
  store <16 x i8> %i.fh, ptr %i.fg, align 1, !tbaa !13, !alias.scope !130, !noalias !127
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !135

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.395, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ey, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !136

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec182 = and i64 %.395, -4                   ; 3 uses
  %i.fj = trunc i64 %n.vec182 to i32              ; 2 uses
  %i.fk = and i64 %.395, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index183 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next187, %vec.epilog.vector.body ] ; 2 uses
  %i.fl = and i64 %index183, 4294967292           ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.3103, i64 %i.fl
  %wide.load184 = load <4 x i8>, ptr %i.fm, align 1, !tbaa !13, !alias.scope !127
  %i.fn = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fl
  %wide.load185 = load <4 x i8>, ptr %i.fn, align 1, !tbaa !13, !alias.scope !130, !noalias !127
  %i.fo = xor <4 x i8> %wide.load185, %wide.load184 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.399, i64 %i.fl
  store <4 x i8> %i.fo, ptr %i.fp, align 1, !tbaa !13, !alias.scope !132, !noalias !134
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fl ; 2 uses
  %wide.load186 = load <4 x i8>, ptr %i.fq, align 1, !tbaa !13, !alias.scope !130, !noalias !127
  %i.fr = xor <4 x i8> %wide.load186, %i.fo
  store <4 x i8> %i.fr, ptr %i.fq, align 1, !tbaa !13, !alias.scope !130, !noalias !127
  %index.next187 = add nuw i64 %index183, 4       ; 2 uses
  %i.fs = icmp eq i64 %index.next187, %n.vec182
  br i1 %i.fs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !137

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n188 = icmp eq i64 %.395, %n.vec182
  br i1 %cmp.n188, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2135.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.ez, %vec.epilog.iter.check ], [ %i.fj, %vec.epilog.middle.block ] ; 3 uses
  %.4134.ph = phi i64 [ %.395, %iter.check ], [ %.395, %vector.memcheck ], [ %i.fa, %vec.epilog.iter.check ], [ %i.fk, %vec.epilog.middle.block ] ; 4 uses
  %xtraiter = and i64 %.4134.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ft = add nsw i64 %.4134.ph, -1
  %i.fu = zext nneg i32 %.2135.ph to i64          ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.3103, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !13
  %i.fx = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fu
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !13
  %i.fz = xor i8 %i.fy, %i.fw                     ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.399, i64 %i.fu
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !13
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fu ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !13
  %i.gd = xor i8 %i.gc, %i.fz
  store i8 %i.gd, ptr %i.gb, align 1, !tbaa !13
  %i.ge = add nuw nsw i32 %.2135.ph, 1            ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ge, %vec.epilog.scalar.ph.prol ]
  %.2135.unr = phi i32 [ %.2135.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ge, %vec.epilog.scalar.ph.prol ]
  %.4134.unr = phi i64 [ %.4134.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ft, %vec.epilog.scalar.ph.prol ]
  %i.gf = icmp eq i64 %.4134.ph, 1
  br i1 %i.gf, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.2135 = phi i32 [ %i.hc, %vec.epilog.scalar.ph ], [ %.2135.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.4134 = phi i64 [ %i.gr, %vec.epilog.scalar.ph ], [ %.4134.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.gg = zext nneg i32 %.2135 to i64             ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.3103, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !13
  %i.gj = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.gg
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !13
  %i.gl = xor i8 %i.gk, %i.gi                     ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.399, i64 %i.gg
  store i8 %i.gl, ptr %i.gm, align 1, !tbaa !13
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.gg ; 2 uses
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !13
  %i.gp = xor i8 %i.go, %i.gl
  store i8 %i.gp, ptr %i.gn, align 1, !tbaa !13
  %i.gq = add nuw nsw i32 %.2135, 1
  %i.gr = add i64 %.4134, -2                      ; 2 uses
  %i.gs = zext nneg i32 %i.gq to i64              ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.3103, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !13
  %i.gv = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.gs
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !13
  %i.gx = xor i8 %i.gw, %i.gu                     ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.399, i64 %i.gs
  store i8 %i.gx, ptr %i.gy, align 1, !tbaa !13
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.gs ; 2 uses
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !13
  %i.hb = xor i8 %i.ha, %i.gx
  store i8 %i.hb, ptr %i.gz, align 1, !tbaa !13
  %i.hc = add nuw nsw i32 %.2135, 2               ; 2 uses
  %.not111.1 = icmp eq i64 %i.gr, 0
  br i1 %.not111.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !138

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader, %bb.j, %._crit_edge
  %storemerge = phi i32 [ %i.by, %._crit_edge ], [ 0, %bb.j ], [ %i.bj, %.preheader ], [ %i.fj, %vec.epilog.middle.block ], [ %i.ez, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.hc, %vec.epilog.scalar.ph ]
  store i32 %storemerge, ptr %i.bi, align 8, !tbaa !124
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %.loopexit
  %.1 = phi i32 [ 1, %.loopexit ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @CRYPTO_gcm128_decrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !109
  %i.o = add i64 %i.n, %4                         ; 3 uses
  %i.p = icmp ugt i64 %i.o, 68719476704
  %i.q = icmp ult i64 %i.o, %4
  %or.cond = or i1 %i.p, %i.q
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.o, ptr %i.m, align 8, !tbaa !109
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !113
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.0.copyload.i.i = load i64, ptr %i.u, align 8
  %i.v = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i) ; 2 uses
  %.0.copyload.i6.i = load i64, ptr %i.t, align 8
  %i.w = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i6.i) ; 2 uses
  %.val.i = load i64, ptr %0, align 8, !tbaa !93  ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 8
  %.val5.i = load i64, ptr %i.x, align 8, !tbaa !90 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #36
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.g, ptr noundef %i.h, i64 noundef %i.v, i64 noundef %.val5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #36
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.i, ptr noundef %i.j, i64 noundef %i.w, i64 noundef %.val.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #36
  %i.y = xor i64 %i.w, %i.v
  %i.z = xor i64 %.val5.i, %.val.i
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.y, i64 noundef %i.z)
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !94  ; 8 uses
  %i.ab = load i64, ptr %i.i, align 8, !tbaa !94  ; 2 uses
  %i.ac = load i64, ptr %i.k, align 8, !tbaa !94
  %i.ad = load i64, ptr %i.h, align 8, !tbaa !94  ; 2 uses
  %i.ae = load i64, ptr %i.j, align 8, !tbaa !94  ; 2 uses
  %i.af = load i64, ptr %i.l, align 8, !tbaa !94
  %i.ag = shl i64 %i.aa, 63
  %i.ah = shl i64 %i.aa, 62
  %i.ai = shl i64 %i.aa, 57
  %i.aj = xor i64 %i.ag, %i.ah
  %i.ak = xor i64 %i.aj, %i.ai
  %i.al = xor i64 %i.ak, %i.ac
  %i.am = xor i64 %i.al, %i.aa
  %i.an = xor i64 %i.am, %i.ab
  %i.ao = xor i64 %i.an, %i.ad                    ; 7 uses
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.aa, i64 63)
  %i.aq = lshr i64 %i.ao, 1
  %i.ar = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.aa, i64 62)
  %i.as = lshr i64 %i.ao, 2
  %i.at = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.aa, i64 57)
  %i.au = xor i64 %i.af, %i.ap
  %i.av = xor i64 %i.au, %i.ar
  %i.aw = xor i64 %i.av, %i.at
  %i.ax = xor i64 %i.aw, %i.aa
  %i.ay = xor i64 %i.ax, %i.ab
  %i.az = xor i64 %i.ay, %i.ad
  %i.ba = xor i64 %i.az, %i.ae
  %i.bb = lshr i64 %i.ao, 7
  %i.bc = xor i64 %i.aq, %i.as
  %i.bd = xor i64 %i.bc, %i.bb
  %i.be = xor i64 %i.bd, %i.ae
  %i.bf = xor i64 %i.be, %i.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  %i.bg = tail call noundef i64 @llvm.bswap.i64(i64 %i.bf)
  store i64 %i.bg, ptr %i.t, align 8
  %i.bh = tail call noundef i64 @llvm.bswap.i64(i64 %i.ba)
  store i64 %i.bh, ptr %i.u, align 8
  store i32 0, ptr %i.r, align 4, !tbaa !113
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !124 ; 3 uses
  %.not112 = icmp eq i32 %i.bj, 0
  br i1 %.not112, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not140 = icmp eq i64 %4, 0
  br i1 %.not140, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.092123 = phi ptr [ %2, %.lr.ph ], [ %i.bm, %bb.e ] ; 2 uses
  %.096122 = phi ptr [ %3, %.lr.ph ], [ %i.bs, %bb.e ] ; 2 uses
  %.0100121 = phi i32 [ %i.bj, %.lr.ph ], [ %i.by, %bb.e ] ; 2 uses
  %.0104120 = phi i64 [ %4, %.lr.ph ], [ %i.bw, %bb.e ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.092123, i64 1 ; 2 uses
  %i.bn = load i8, ptr %.092123, align 1, !tbaa !13 ; 2 uses
  %i.bo = zext i32 %.0100121 to i64               ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !13
  %i.br = xor i8 %i.bq, %i.bn
  %i.bs = getelementptr inbounds nuw i8, ptr %.096122, i64 1 ; 2 uses
  store i8 %i.br, ptr %.096122, align 1, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bo ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !13
  %i.bv = xor i8 %i.bu, %i.bn
  store i8 %i.bv, ptr %i.bt, align 1, !tbaa !13
  %i.bw = add nsw i64 %.0104120, -1               ; 3 uses
  %i.bx = add i32 %.0100121, 1
  %i.by = and i32 %i.bx, 15                       ; 4 uses
  %i.bz = icmp ne i32 %i.by, 0
  %i.ca = icmp ne i64 %i.bw, 0
  %i.cb = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %i.cb, label %bb.e, label %._crit_edge, !llvm.loop !139

._crit_edge:                                      ; preds = %bb.e
  %i.cc = icmp eq i32 %i.by, 0
  br i1 %i.cc, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %._crit_edge
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.0.copyload.i.i116 = load i64, ptr %i.ce, align 8
  %i.cf = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i116) ; 2 uses
  %.0.copyload.i6.i117 = load i64, ptr %i.cd, align 8
  %i.cg = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i6.i117) ; 2 uses
  %.val.i118 = load i64, ptr %0, align 8, !tbaa !93 ; 2 uses
  %i.ch = getelementptr i8, ptr %0, i64 8
  %.val5.i119 = load i64, ptr %i.ch, align 8, !tbaa !90 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.cf, i64 noundef %.val5.i119)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.c, ptr noundef %i.d, i64 noundef %i.cg, i64 noundef %.val.i118)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  %i.ci = xor i64 %i.cg, %i.cf
  %i.cj = xor i64 %.val5.i119, %.val.i118
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.e, ptr noundef %i.f, i64 noundef %i.ci, i64 noundef %i.cj)
  %i.ck = load i64, ptr %i.a, align 8, !tbaa !94  ; 8 uses
  %i.cl = load i64, ptr %i.c, align 8, !tbaa !94  ; 2 uses
  %i.cm = load i64, ptr %i.e, align 8, !tbaa !94
  %i.cn = load i64, ptr %i.b, align 8, !tbaa !94  ; 2 uses
  %i.co = load i64, ptr %i.d, align 8, !tbaa !94  ; 2 uses
  %i.cp = load i64, ptr %i.f, align 8, !tbaa !94
  %i.cq = shl i64 %i.ck, 63
  %i.cr = shl i64 %i.ck, 62
  %i.cs = shl i64 %i.ck, 57
  %i.ct = xor i64 %i.cq, %i.cr
  %i.cu = xor i64 %i.ct, %i.cs
  %i.cv = xor i64 %i.cu, %i.cm
  %i.cw = xor i64 %i.cv, %i.ck
  %i.cx = xor i64 %i.cw, %i.cl
  %i.cy = xor i64 %i.cx, %i.cn                    ; 7 uses
  %i.cz = tail call i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.ck, i64 63)
  %i.da = lshr i64 %i.cy, 1
  %i.db = tail call i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.ck, i64 62)
  %i.dc = lshr i64 %i.cy, 2
  %i.dd = tail call i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.ck, i64 57)
  %i.de = xor i64 %i.cp, %i.cz
  %i.df = xor i64 %i.de, %i.db
  %i.dg = xor i64 %i.df, %i.dd
  %i.dh = xor i64 %i.dg, %i.ck
  %i.di = xor i64 %i.dh, %i.cl
  %i.dj = xor i64 %i.di, %i.cn
  %i.dk = xor i64 %i.dj, %i.co
  %i.dl = lshr i64 %i.cy, 7
  %i.dm = xor i64 %i.da, %i.dc
  %i.dn = xor i64 %i.dm, %i.dl
  %i.do = xor i64 %i.dn, %i.co
  %i.dp = xor i64 %i.do, %i.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.dq = tail call noundef i64 @llvm.bswap.i64(i64 %i.dp)
  store i64 %i.dq, ptr %i.cd, align 8
  %i.dr = tail call noundef i64 @llvm.bswap.i64(i64 %i.dk)
  store i64 %i.dr, ptr %i.ce, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.1105 = phi i64 [ %i.bw, %bb.f ], [ %4, %bb.d ] ; 3 uses
  %.197 = phi ptr [ %i.bs, %bb.f ], [ %3, %bb.d ] ; 2 uses
  %.193 = phi ptr [ %i.bm, %bb.f ], [ %2, %bb.d ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %.0.copyload.i = load i32, ptr %i.ds, align 4
  %i.dt = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i) ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !96 ; 2 uses
  %i.dw = icmp ugt i64 %.1105, 3071
  br i1 %i.dw, label %.lr.ph132, label %._crit_edge133

.lr.ph132:                                        ; preds = %bb.g
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 272
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph132, %bb.h
  %.2130 = phi ptr [ %.193, %.lr.ph132 ], [ %i.ec, %bb.h ] ; 3 uses
  %.094129 = phi i32 [ %i.dt, %.lr.ph132 ], [ %i.dz, %bb.h ]
  %.298128 = phi ptr [ %.197, %.lr.ph132 ], [ %i.eb, %bb.h ] ; 2 uses
  %.2106127 = phi i64 [ %.1105, %.lr.ph132 ], [ %i.ed, %bb.h ]
  tail call void @gcm_ghash_nohw(ptr noundef nonnull %i.dx, ptr noundef nonnull %0, ptr noundef %.2130, i64 noundef 3072)
  tail call void %i.dv(ptr noundef %.2130, ptr noundef %.298128, i64 noundef 192, ptr noundef nonnull %i.dy, ptr noundef nonnull %1) #36
  %i.dz = add i32 %.094129, 192                   ; 3 uses
  %i.ea = tail call noundef i32 @llvm.bswap.i32(i32 %i.dz)
  store i32 %i.ea, ptr %i.ds, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %.298128, i64 3072 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.2130, i64 3072 ; 2 uses
  %i.ed = add nsw i64 %.2106127, -3072            ; 3 uses
  %i.ee = icmp ugt i64 %i.ed, 3071
  br i1 %i.ee, label %bb.h, label %._crit_edge133, !llvm.loop !140

._crit_edge133:                                   ; preds = %bb.h, %bb.g
  %.2106.lcssa = phi i64 [ %.1105, %bb.g ], [ %i.ed, %bb.h ] ; 4 uses
  %.298.lcssa = phi ptr [ %.197, %bb.g ], [ %i.eb, %bb.h ] ; 4 uses
  %.094.lcssa = phi i32 [ %i.dt, %bb.g ], [ %i.dz, %bb.h ] ; 2 uses
  %.2.lcssa = phi ptr [ %.193, %bb.g ], [ %i.ec, %bb.h ] ; 5 uses
  %i.ef = and i64 %.2106.lcssa, 4080              ; 5 uses
  %.not113 = icmp eq i64 %i.ef, 0
  br i1 %.not113, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge133
  %i.eg = lshr i64 %.2106.lcssa, 4                ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @gcm_ghash_nohw(ptr noundef nonnull %i.eh, ptr noundef nonnull %0, ptr noundef %.2.lcssa, i64 noundef %i.ef)
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void %i.dv(ptr noundef %.2.lcssa, ptr noundef %.298.lcssa, i64 noundef %i.eg, ptr noundef nonnull %i.ei, ptr noundef nonnull %1) #36
  %i.ej = trunc nuw nsw i64 %i.eg to i32
  %i.ek = add i32 %.094.lcssa, %i.ej              ; 2 uses
  %i.el = tail call noundef i32 @llvm.bswap.i32(i32 %i.ek)
  store i32 %i.el, ptr %i.ds, align 4
  %i.em = getelementptr i8, ptr %.298.lcssa, i64 %i.ef
  %i.en = getelementptr i8, ptr %.2.lcssa, i64 %i.ef
  %i.eo = and i64 %.2106.lcssa, 15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge133
  %.3107 = phi i64 [ %i.eo, %bb.i ], [ %.2106.lcssa, %._crit_edge133 ] ; 14 uses
  %.399 = phi ptr [ %i.em, %bb.i ], [ %.298.lcssa, %._crit_edge133 ] ; 7 uses
  %.195 = phi i32 [ %i.ek, %bb.i ], [ %.094.lcssa, %._crit_edge133 ]
  %.3 = phi ptr [ %i.en, %bb.i ], [ %.2.lcssa, %._crit_edge133 ] ; 7 uses
  %.not114 = icmp eq i64 %.3107, 0
  br i1 %.not114, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.j
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !108
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void %i.eq(ptr noundef nonnull %1, ptr noundef nonnull %i.er, ptr noundef nonnull %i.es) #36
  %i.et = add i32 %.195, 1
  %i.eu = tail call noundef i32 @llvm.bswap.i32(i32 %i.et)
  store i32 %i.eu, ptr %i.ds, align 4
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %or.cond199 = icmp ult i64 %.3107, 4
  br i1 %or.cond199, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ew = getelementptr i8, ptr %1, i64 %.3107
  %scevgep = getelementptr i8, ptr %i.ew, i64 64  ; 2 uses
  %i.ex = add i64 %.3107, %i.ef                   ; 2 uses
  %scevgep173 = getelementptr i8, ptr %.298.lcssa, i64 %i.ex ; 2 uses
  %scevgep174 = getelementptr i8, ptr %.2.lcssa, i64 %i.ex ; 2 uses
  %bound0 = icmp ult ptr %i.er, %scevgep173
  %bound1 = icmp ult ptr %.399, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0175 = icmp ult ptr %i.er, %scevgep174
  %bound1176 = icmp ult ptr %.3, %scevgep
  %found.conflict177 = and i1 %bound0175, %bound1176
  %conflict.rdx = or i1 %found.conflict, %found.conflict177
  %bound0178 = icmp ult ptr %.399, %scevgep174
  %bound1179 = icmp ult ptr %.3, %scevgep173
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx181 = or i1 %conflict.rdx, %found.conflict180
  br i1 %conflict.rdx181, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check182 = icmp ult i64 %.3107, 32
  br i1 %min.iters.check182, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ey = and i64 %.3107, 28
  %n.vec = and i64 %.3107, -32                    ; 4 uses
  %i.ez = trunc i64 %n.vec to i32                 ; 2 uses
  %i.fa = and i64 %.3107, 31
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fb = and i64 %index, 4294967264              ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.3, i64 %i.fb ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %wide.load = load <16 x i8>, ptr %i.fc, align 1, !tbaa !13, !alias.scope !141 ; 2 uses
  %wide.load183 = load <16 x i8>, ptr %i.fd, align 1, !tbaa !13, !alias.scope !141 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fb ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16 ; 2 uses
  %wide.load184 = load <16 x i8>, ptr %i.fe, align 1, !tbaa !13, !alias.scope !144, !noalias !146
  %wide.load185 = load <16 x i8>, ptr %i.ff, align 1, !tbaa !13, !alias.scope !144, !noalias !146
  %i.fg = xor <16 x i8> %wide.load184, %wide.load
  %i.fh = xor <16 x i8> %wide.load185, %wide.load183
  store <16 x i8> %i.fg, ptr %i.fe, align 1, !tbaa !13, !alias.scope !144, !noalias !146
  store <16 x i8> %i.fh, ptr %i.ff, align 1, !tbaa !13, !alias.scope !144, !noalias !146
  %i.fi = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fb ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %wide.load186 = load <16 x i8>, ptr %i.fi, align 1, !tbaa !13, !alias.scope !144, !noalias !146
  %wide.load187 = load <16 x i8>, ptr %i.fj, align 1, !tbaa !13, !alias.scope !144, !noalias !146
  %i.fk = xor <16 x i8> %wide.load186, %wide.load
  %i.fl = xor <16 x i8> %wide.load187, %wide.load183
  %i.fm = getelementptr inbounds nuw i8, ptr %.399, i64 %i.fb ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store <16 x i8> %i.fk, ptr %i.fm, align 1, !tbaa !13, !alias.scope !148, !noalias !141
  store <16 x i8> %i.fl, ptr %i.fn, align 1, !tbaa !13, !alias.scope !148, !noalias !141
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fo = icmp eq i64 %index.next, %n.vec
  br i1 %i.fo, label %middle.block, label %vector.body, !llvm.loop !149

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.3107, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ey, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !50

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec189 = and i64 %.3107, -4                  ; 3 uses
  %i.fp = trunc i64 %n.vec189 to i32              ; 2 uses
  %i.fq = and i64 %.3107, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index190 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next194, %vec.epilog.vector.body ] ; 2 uses
  %i.fr = and i64 %index190, 4294967292           ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.3, i64 %i.fr
  %wide.load191 = load <4 x i8>, ptr %i.fs, align 1, !tbaa !13, !alias.scope !141 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fr ; 2 uses
  %wide.load192 = load <4 x i8>, ptr %i.ft, align 1, !tbaa !13, !alias.scope !144, !noalias !146
  %i.fu = xor <4 x i8> %wide.load192, %wide.load191
  store <4 x i8> %i.fu, ptr %i.ft, align 1, !tbaa !13, !alias.scope !144, !noalias !146
  %i.fv = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fr
  %wide.load193 = load <4 x i8>, ptr %i.fv, align 1, !tbaa !13, !alias.scope !144, !noalias !146
  %i.fw = xor <4 x i8> %wide.load193, %wide.load191
  %i.fx = getelementptr inbounds nuw i8, ptr %.399, i64 %i.fr
  store <4 x i8> %i.fw, ptr %i.fx, align 1, !tbaa !13, !alias.scope !148, !noalias !141
  %index.next194 = add nuw i64 %index190, 4       ; 2 uses
  %i.fy = icmp eq i64 %index.next194, %n.vec189
  br i1 %i.fy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !150

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n195 = icmp eq i64 %.3107, %n.vec189
  br i1 %cmp.n195, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2102139.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.ez, %vec.epilog.iter.check ], [ %i.fp, %vec.epilog.middle.block ] ; 3 uses
  %.4138.ph = phi i64 [ %.3107, %iter.check ], [ %.3107, %vector.memcheck ], [ %i.fa, %vec.epilog.iter.check ], [ %i.fq, %vec.epilog.middle.block ] ; 4 uses
  %xtraiter = and i64 %.4138.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.fz = add nsw i64 %.4138.ph, -1
  %i.ga = zext nneg i32 %.2102139.ph to i64       ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.3, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !13  ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ga ; 2 uses
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !13
  %i.gf = xor i8 %i.ge, %i.gc
  store i8 %i.gf, ptr %i.gd, align 1, !tbaa !13
  %i.gg = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ga
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !13
  %i.gi = xor i8 %i.gh, %i.gc
  %i.gj = getelementptr inbounds nuw i8, ptr %.399, i64 %i.ga
  store i8 %i.gi, ptr %i.gj, align 1, !tbaa !13
  %i.gk = add nuw nsw i32 %.2102139.ph, 1         ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.gk, %vec.epilog.scalar.ph.prol ]
  %.2102139.unr = phi i32 [ %.2102139.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gk, %vec.epilog.scalar.ph.prol ]
  %.4138.unr = phi i64 [ %.4138.ph, %vec.epilog.scalar.ph.preheader ], [ %i.fz, %vec.epilog.scalar.ph.prol ]
  %i.gl = icmp eq i64 %.4138.ph, 1
  br i1 %i.gl, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.2102139 = phi i32 [ %i.hi, %vec.epilog.scalar.ph ], [ %.2102139.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.4138 = phi i64 [ %i.gx, %vec.epilog.scalar.ph ], [ %.4138.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.gm = zext nneg i32 %.2102139 to i64          ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.3, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !13  ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.gm ; 2 uses
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !13
  %i.gr = xor i8 %i.gq, %i.go
  store i8 %i.gr, ptr %i.gp, align 1, !tbaa !13
  %i.gs = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.gm
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !13
  %i.gu = xor i8 %i.gt, %i.go
  %i.gv = getelementptr inbounds nuw i8, ptr %.399, i64 %i.gm
  store i8 %i.gu, ptr %i.gv, align 1, !tbaa !13
  %i.gw = add nuw nsw i32 %.2102139, 1
  %i.gx = add i64 %.4138, -2                      ; 2 uses
  %i.gy = zext nneg i32 %i.gw to i64              ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.3, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !13  ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.gy ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !13
  %i.hd = xor i8 %i.hc, %i.ha
  store i8 %i.hd, ptr %i.hb, align 1, !tbaa !13
  %i.he = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.gy
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !13
  %i.hg = xor i8 %i.hf, %i.ha
  %i.hh = getelementptr inbounds nuw i8, ptr %.399, i64 %i.gy
  store i8 %i.hg, ptr %i.hh, align 1, !tbaa !13
  %i.hi = add nuw nsw i32 %.2102139, 2            ; 2 uses
  %.not115.1 = icmp eq i64 %i.gx, 0
  br i1 %.not115.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !151

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader, %bb.j, %._crit_edge
  %storemerge = phi i32 [ %i.by, %._crit_edge ], [ 0, %bb.j ], [ %i.bj, %.preheader ], [ %i.fp, %vec.epilog.middle.block ], [ %i.ez, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.hi, %vec.epilog.scalar.ph ]
  store i32 %storemerge, ptr %i.bi, align 8, !tbaa !124
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %.loopexit
  %.1 = phi i32 [ 1, %.loopexit ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @CRYPTO_gcm128_finish(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.n = load i32, ptr %i.m, align 8, !tbaa !124
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.p = load i32, ptr %i.o, align 4, !tbaa !113
  %.not21 = icmp eq i32 %i.p, 0
  br i1 %.not21, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.0.copyload.i.i22.pre = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert32 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.0.copyload.i.1.i.pre = load i64, ptr %.phi.trans.insert32, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.0.copyload.i.i = load i64, ptr %i.r, align 8
  %i.s = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i) ; 2 uses
  %.0.copyload.i6.i = load i64, ptr %i.q, align 8
  %i.t = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i6.i) ; 2 uses
  %.val.i = load i64, ptr %0, align 8, !tbaa !93  ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 8
  %.val5.i = load i64, ptr %i.u, align 8, !tbaa !90 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #36
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.g, ptr noundef %i.h, i64 noundef %i.s, i64 noundef %.val5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #36
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.i, ptr noundef %i.j, i64 noundef %i.t, i64 noundef %.val.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #36
  %i.v = xor i64 %i.t, %i.s
  %i.w = xor i64 %.val5.i, %.val.i
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.v, i64 noundef %i.w)
  %i.x = load i64, ptr %i.g, align 8, !tbaa !94   ; 8 uses
  %i.y = load i64, ptr %i.i, align 8, !tbaa !94   ; 2 uses
  %i.z = load i64, ptr %i.k, align 8, !tbaa !94
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !94  ; 2 uses
  %i.ab = load i64, ptr %i.j, align 8, !tbaa !94  ; 2 uses
  %i.ac = load i64, ptr %i.l, align 8, !tbaa !94
  %i.ad = shl i64 %i.x, 63
  %i.ae = shl i64 %i.x, 62
  %i.af = shl i64 %i.x, 57
  %i.ag = xor i64 %i.ad, %i.ae
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = xor i64 %i.ah, %i.z
  %i.aj = xor i64 %i.ai, %i.x
  %i.ak = xor i64 %i.aj, %i.y
  %i.al = xor i64 %i.ak, %i.aa                    ; 7 uses
  %i.am = tail call i64 @llvm.fshl.i64(i64 %i.al, i64 %i.x, i64 63)
  %i.an = lshr i64 %i.al, 1
  %i.ao = tail call i64 @llvm.fshl.i64(i64 %i.al, i64 %i.x, i64 62)
  %i.ap = lshr i64 %i.al, 2
  %i.aq = tail call i64 @llvm.fshl.i64(i64 %i.al, i64 %i.x, i64 57)
  %i.ar = xor i64 %i.ac, %i.am
  %i.as = xor i64 %i.ar, %i.ao
  %i.at = xor i64 %i.as, %i.aq
  %i.au = xor i64 %i.at, %i.x
  %i.av = xor i64 %i.au, %i.y
  %i.aw = xor i64 %i.av, %i.aa
  %i.ax = xor i64 %i.aw, %i.ab
  %i.ay = lshr i64 %i.al, 7
  %i.az = xor i64 %i.an, %i.ap
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = xor i64 %i.ba, %i.ab
  %i.bc = xor i64 %i.bb, %i.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  %i.bd = tail call noundef i64 @llvm.bswap.i64(i64 %i.bc)
  %i.be = tail call noundef i64 @llvm.bswap.i64(i64 %i.ax)
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.0.copyload.i.1.i = phi i64 [ %.0.copyload.i.1.i.pre, %._crit_edge ], [ %i.be, %bb.c ]
  %.0.copyload.i.i22 = phi i64 [ %.0.copyload.i.i22.pre, %._crit_edge ], [ %i.bd, %bb.c ]
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !112
  %i.bh = shl i64 %i.bg, 3
  %i.bi = tail call noundef i64 @llvm.bswap.i64(i64 %i.bh)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !109
  %i.bl = shl i64 %i.bk, 3
  %i.bm = tail call noundef i64 @llvm.bswap.i64(i64 %i.bl)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.bo = xor i64 %i.bi, %.0.copyload.i.i22       ; 2 uses
  store i64 %i.bo, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bq = xor i64 %.0.copyload.i.1.i, %i.bm       ; 2 uses
  store i64 %i.bq, ptr %i.bp, align 8
  %i.br = tail call noundef i64 @llvm.bswap.i64(i64 %i.bq) ; 2 uses
  %i.bs = tail call noundef i64 @llvm.bswap.i64(i64 %i.bo) ; 2 uses
  %.val.i25 = load i64, ptr %0, align 8, !tbaa !93 ; 2 uses
  %i.bt = getelementptr i8, ptr %0, i64 8
  %.val5.i26 = load i64, ptr %i.bt, align 8, !tbaa !90 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.br, i64 noundef %.val5.i26)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.c, ptr noundef %i.d, i64 noundef %i.bs, i64 noundef %.val.i25)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  %i.bu = xor i64 %i.br, %i.bs
  %i.bv = xor i64 %.val5.i26, %.val.i25
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.e, ptr noundef %i.f, i64 noundef %i.bu, i64 noundef %i.bv)
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !94  ; 8 uses
  %i.bx = load i64, ptr %i.c, align 8, !tbaa !94  ; 2 uses
  %i.by = load i64, ptr %i.e, align 8, !tbaa !94
  %i.bz = load i64, ptr %i.b, align 8, !tbaa !94  ; 2 uses
  %i.ca = load i64, ptr %i.d, align 8, !tbaa !94  ; 2 uses
  %i.cb = load i64, ptr %i.f, align 8, !tbaa !94
  %i.cc = shl i64 %i.bw, 63
  %i.cd = shl i64 %i.bw, 62
  %i.ce = shl i64 %i.bw, 57
  %i.cf = xor i64 %i.cc, %i.cd
  %i.cg = xor i64 %i.cf, %i.ce
  %i.ch = xor i64 %i.cg, %i.by
  %i.ci = xor i64 %i.ch, %i.bw
  %i.cj = xor i64 %i.ci, %i.bx
  %i.ck = xor i64 %i.cj, %i.bz                    ; 7 uses
  %i.cl = tail call i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.bw, i64 63)
  %i.cm = lshr i64 %i.ck, 1
  %i.cn = tail call i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.bw, i64 62)
  %i.co = lshr i64 %i.ck, 2
  %i.cp = tail call i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.bw, i64 57)
  %i.cq = xor i64 %i.cb, %i.cl
  %i.cr = xor i64 %i.cq, %i.cn
  %i.cs = xor i64 %i.cr, %i.cp
  %i.ct = xor i64 %i.cs, %i.bw
  %i.cu = xor i64 %i.ct, %i.bx
  %i.cv = xor i64 %i.cu, %i.bz
  %i.cw = xor i64 %i.cv, %i.ca
  %i.cx = lshr i64 %i.ck, 7
  %i.cy = xor i64 %i.cm, %i.co
  %i.cz = xor i64 %i.cy, %i.cx
  %i.da = xor i64 %i.cz, %i.ca
  %i.db = xor i64 %i.da, %i.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.dc = tail call noundef i64 @llvm.bswap.i64(i64 %i.db)
  %i.dd = tail call noundef i64 @llvm.bswap.i64(i64 %i.cw)
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.0.copyload.i7.i28 = load i64, ptr %i.de, align 8
  %i.df = xor i64 %.0.copyload.i7.i28, %i.dc
  store i64 %i.df, ptr %i.bn, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.0.copyload.i7.1.i30 = load i64, ptr %i.dg, align 8
  %i.dh = xor i64 %.0.copyload.i7.1.i30, %i.dd
  store i64 %i.dh, ptr %i.bp, align 8
  %i.di = icmp ne ptr %2, null
  %i.dj = icmp ult i64 %3, 17
  %or.cond = and i1 %i.di, %i.dj
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dk = tail call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.bn, ptr noundef nonnull %2, i64 noundef %3) #36
  %i.dl = icmp eq i32 %i.dk, 0
  %i.dm = zext i1 %i.dl to i32
  br label %bb.f
end_hunk_0
