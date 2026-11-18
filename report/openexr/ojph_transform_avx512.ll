Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_transform_avx512?download=true
inline.NumInlined: 25
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN4ojph5local22avx512_rev_vert_step64EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb:bb.a
  %i.dx = getelementptr inbounds nuw i8, ptr %.2219, i64 64 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.2148218, i64 64
  %i.dz = getelementptr inbounds nuw i8, ptr %.2156217, i64 64
  %i.ea = load <8 x i64>, ptr %i.dy, align 64, !tbaa !13
  %i.eb = load <8 x i64>, ptr %i.dz, align 64, !tbaa !13
  %i.ec = load <8 x i64>, ptr %i.dx, align 64, !tbaa !13
  %i.ed = add <8 x i64> %i.eb, %i.ea
  %i.ee = ashr <8 x i64> %i.ed, splat (i64 1)
  %i.ef = add <8 x i64> %i.ee, %i.ec
  store <8 x i64> %i.ef, ptr %i.dx, align 64, !tbaa !13
  %i.eg = add nsw i32 %.0164216, -16
  %i.eh = getelementptr inbounds nuw i8, ptr %.2219, i64 128
  %i.ei = getelementptr inbounds nuw i8, ptr %.2148218, i64 128
  %i.ej = getelementptr inbounds nuw i8, ptr %.2156217, i64 128
  %i.ek = icmp sgt i32 %.0164216, 16
  br i1 %i.ek, label %.lr.ph220, label %.loopexit, !llvm.loop !56

.lr.ph215:                                        ; preds = %.lr.ph215.prol.loopexit, %.lr.ph215
  %.3214 = phi ptr [ %i.fb, %.lr.ph215 ], [ %.3214.unr, %.lr.ph215.prol.loopexit ] ; 4 uses
  %.3149213 = phi ptr [ %i.fc, %.lr.ph215 ], [ %.3149213.unr, %.lr.ph215.prol.loopexit ] ; 3 uses
  %.3157212 = phi ptr [ %i.fd, %.lr.ph215 ], [ %.3157212.unr, %.lr.ph215.prol.loopexit ] ; 3 uses
  %.1165211 = phi i32 [ %i.fa, %.lr.ph215 ], [ %.1165211.unr, %.lr.ph215.prol.loopexit ] ; 2 uses
  %i.el = load <8 x i64>, ptr %.3149213, align 64, !tbaa !13
  %i.em = load <8 x i64>, ptr %.3157212, align 64, !tbaa !13
  %i.en = load <8 x i64>, ptr %.3214, align 64, !tbaa !13
  %i.eo = add <8 x i64> %i.em, %i.el
  %i.ep = ashr <8 x i64> %i.eo, splat (i64 1)
  %i.eq = sub <8 x i64> %i.en, %i.ep
  store <8 x i64> %i.eq, ptr %.3214, align 64, !tbaa !13
  %i.er = getelementptr inbounds nuw i8, ptr %.3214, i64 64 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.3149213, i64 64
  %i.et = getelementptr inbounds nuw i8, ptr %.3157212, i64 64
  %i.eu = load <8 x i64>, ptr %i.es, align 64, !tbaa !13
  %i.ev = load <8 x i64>, ptr %i.et, align 64, !tbaa !13
  %i.ew = load <8 x i64>, ptr %i.er, align 64, !tbaa !13
  %i.ex = add <8 x i64> %i.ev, %i.eu
  %i.ey = ashr <8 x i64> %i.ex, splat (i64 1)
  %i.ez = sub <8 x i64> %i.ew, %i.ey
  store <8 x i64> %i.ez, ptr %i.er, align 64, !tbaa !13
  %i.fa = add nsw i32 %.1165211, -16
  %i.fb = getelementptr inbounds nuw i8, ptr %.3214, i64 128
  %i.fc = getelementptr inbounds nuw i8, ptr %.3149213, i64 128
  %i.fd = getelementptr inbounds nuw i8, ptr %.3157212, i64 128
  %i.fe = icmp sgt i32 %.1165211, 16
  br i1 %i.fe, label %.lr.ph215, label %.loopexit, !llvm.loop !57

bb.e:                                             ; preds = %bb.c
  br i1 %i.cm, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ff = icmp sgt i32 %4, 0                      ; 2 uses
  br i1 %5, label %.preheader182, label %.preheader184

.preheader184:                                    ; preds = %bb.f
  br i1 %i.ff, label %.lr.ph205.preheader, label %.loopexit

.lr.ph205.preheader:                              ; preds = %.preheader184
  %i.fg = add nsw i32 %4, -1                      ; 2 uses
  %i.fh = and i32 %i.fg, 8
  %lcmp.mod373.not.not = icmp eq i32 %i.fh, 0
  br i1 %lcmp.mod373.not.not, label %.lr.ph205.prol, label %.lr.ph205.prol.loopexit

.lr.ph205.prol:                                   ; preds = %.lr.ph205.preheader
  %i.fi = load <8 x i64>, ptr %i.l, align 64, !tbaa !13
  %i.fj = load <8 x i64>, ptr %i.n, align 64, !tbaa !13
  %i.fk = load <8 x i64>, ptr %i.j, align 64, !tbaa !13
  %i.fl = add <8 x i64> %i.fi, %i.fj
  %i.fm = sub <8 x i64> %i.h, %i.fl
  %i.fn = tail call noundef <8 x i64> @llvm.x86.avx512.psrai.q.512(<8 x i64> %i.fm, i32 range(i32 0, 256) %i.co)
  %i.fo = add <8 x i64> %i.fn, %i.fk
  store <8 x i64> %i.fo, ptr %i.j, align 64, !tbaa !13
  %i.fp = add nsw i32 %4, -8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  br label %.lr.ph205.prol.loopexit

.lr.ph205.prol.loopexit:                          ; preds = %.lr.ph205.prol, %.lr.ph205.preheader
  %.5204.unr = phi ptr [ %i.j, %.lr.ph205.preheader ], [ %i.fq, %.lr.ph205.prol ]
  %.5151203.unr = phi ptr [ %i.l, %.lr.ph205.preheader ], [ %i.fr, %.lr.ph205.prol ]
  %.5159202.unr = phi ptr [ %i.n, %.lr.ph205.preheader ], [ %i.fs, %.lr.ph205.prol ]
  %.1167201.unr = phi i32 [ %4, %.lr.ph205.preheader ], [ %i.fp, %.lr.ph205.prol ]
  %i.ft = icmp ult i32 %i.fg, 8
  br i1 %i.ft, label %.loopexit, label %.lr.ph205

.preheader182:                                    ; preds = %bb.f
  br i1 %i.ff, label %.lr.ph210.preheader, label %.loopexit

.lr.ph210.preheader:                              ; preds = %.preheader182
  %i.fu = add nsw i32 %4, -1                      ; 2 uses
  %i.fv = and i32 %i.fu, 8
  %lcmp.mod375.not.not = icmp eq i32 %i.fv, 0
  br i1 %lcmp.mod375.not.not, label %.lr.ph210.prol, label %.lr.ph210.prol.loopexit

.lr.ph210.prol:                                   ; preds = %.lr.ph210.preheader
  %i.fw = load <8 x i64>, ptr %i.l, align 64, !tbaa !13
  %i.fx = load <8 x i64>, ptr %i.n, align 64, !tbaa !13
  %i.fy = load <8 x i64>, ptr %i.j, align 64, !tbaa !13
  %i.fz = add <8 x i64> %i.fw, %i.fx
  %i.ga = sub <8 x i64> %i.h, %i.fz
  %i.gb = tail call noundef <8 x i64> @llvm.x86.avx512.psrai.q.512(<8 x i64> %i.ga, i32 range(i32 0, 256) %i.co)
  %i.gc = sub <8 x i64> %i.fy, %i.gb
  store <8 x i64> %i.gc, ptr %i.j, align 64, !tbaa !13
  %i.gd = add nsw i32 %4, -8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.gg = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  br label %.lr.ph210.prol.loopexit

.lr.ph210.prol.loopexit:                          ; preds = %.lr.ph210.prol, %.lr.ph210.preheader
  %.4209.unr = phi ptr [ %i.j, %.lr.ph210.preheader ], [ %i.ge, %.lr.ph210.prol ]
  %.4150208.unr = phi ptr [ %i.l, %.lr.ph210.preheader ], [ %i.gf, %.lr.ph210.prol ]
  %.4158207.unr = phi ptr [ %i.n, %.lr.ph210.preheader ], [ %i.gg, %.lr.ph210.prol ]
  %.0166206.unr = phi i32 [ %4, %.lr.ph210.preheader ], [ %i.gd, %.lr.ph210.prol ]
  %i.gh = icmp ult i32 %i.fu, 8
  br i1 %i.gh, label %.loopexit, label %.lr.ph210

.lr.ph210:                                        ; preds = %.lr.ph210.prol.loopexit, %.lr.ph210
  %.4209 = phi ptr [ %i.ha, %.lr.ph210 ], [ %.4209.unr, %.lr.ph210.prol.loopexit ] ; 4 uses
  %.4150208 = phi ptr [ %i.hb, %.lr.ph210 ], [ %.4150208.unr, %.lr.ph210.prol.loopexit ] ; 3 uses
  %.4158207 = phi ptr [ %i.hc, %.lr.ph210 ], [ %.4158207.unr, %.lr.ph210.prol.loopexit ] ; 3 uses
  %.0166206 = phi i32 [ %i.gz, %.lr.ph210 ], [ %.0166206.unr, %.lr.ph210.prol.loopexit ] ; 2 uses
  %i.gi = load <8 x i64>, ptr %.4150208, align 64, !tbaa !13
  %i.gj = load <8 x i64>, ptr %.4158207, align 64, !tbaa !13
  %i.gk = load <8 x i64>, ptr %.4209, align 64, !tbaa !13
  %i.gl = add <8 x i64> %i.gi, %i.gj
  %i.gm = sub <8 x i64> %i.h, %i.gl
  %i.gn = tail call noundef <8 x i64> @llvm.x86.avx512.psrai.q.512(<8 x i64> %i.gm, i32 range(i32 0, 256) %i.co)
  %i.go = sub <8 x i64> %i.gk, %i.gn
  store <8 x i64> %i.go, ptr %.4209, align 64, !tbaa !13
  %i.gp = getelementptr inbounds nuw i8, ptr %.4209, i64 64 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.4150208, i64 64
  %i.gr = getelementptr inbounds nuw i8, ptr %.4158207, i64 64
  %i.gs = load <8 x i64>, ptr %i.gq, align 64, !tbaa !13
  %i.gt = load <8 x i64>, ptr %i.gr, align 64, !tbaa !13
  %i.gu = load <8 x i64>, ptr %i.gp, align 64, !tbaa !13
  %i.gv = add <8 x i64> %i.gs, %i.gt
  %i.gw = sub <8 x i64> %i.h, %i.gv
  %i.gx = tail call noundef <8 x i64> @llvm.x86.avx512.psrai.q.512(<8 x i64> %i.gw, i32 range(i32 0, 256) %i.co)
  %i.gy = sub <8 x i64> %i.gu, %i.gx
  store <8 x i64> %i.gy, ptr %i.gp, align 64, !tbaa !13
  %i.gz = add nsw i32 %.0166206, -16
  %i.ha = getelementptr inbounds nuw i8, ptr %.4209, i64 128
  %i.hb = getelementptr inbounds nuw i8, ptr %.4150208, i64 128
  %i.hc = getelementptr inbounds nuw i8, ptr %.4158207, i64 128
  %i.hd = icmp sgt i32 %.0166206, 16
  br i1 %i.hd, label %.lr.ph210, label %.loopexit, !llvm.loop !58

.lr.ph205:                                        ; preds = %.lr.ph205.prol.loopexit, %.lr.ph205
  %.5204 = phi ptr [ %i.hw, %.lr.ph205 ], [ %.5204.unr, %.lr.ph205.prol.loopexit ] ; 4 uses
  %.5151203 = phi ptr [ %i.hx, %.lr.ph205 ], [ %.5151203.unr, %.lr.ph205.prol.loopexit ] ; 3 uses
  %.5159202 = phi ptr [ %i.hy, %.lr.ph205 ], [ %.5159202.unr, %.lr.ph205.prol.loopexit ] ; 3 uses
  %.1167201 = phi i32 [ %i.hv, %.lr.ph205 ], [ %.1167201.unr, %.lr.ph205.prol.loopexit ] ; 2 uses
  %i.he = load <8 x i64>, ptr %.5151203, align 64, !tbaa !13
  %i.hf = load <8 x i64>, ptr %.5159202, align 64, !tbaa !13
  %i.hg = load <8 x i64>, ptr %.5204, align 64, !tbaa !13
  %i.hh = add <8 x i64> %i.he, %i.hf
  %i.hi = sub <8 x i64> %i.h, %i.hh
  %i.hj = tail call noundef <8 x i64> @llvm.x86.avx512.psrai.q.512(<8 x i64> %i.hi, i32 range(i32 0, 256) %i.co)
  %i.hk = add <8 x i64> %i.hj, %i.hg
  store <8 x i64> %i.hk, ptr %.5204, align 64, !tbaa !13
  %i.hl = getelementptr inbounds nuw i8, ptr %.5204, i64 64 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.5151203, i64 64
  %i.hn = getelementptr inbounds nuw i8, ptr %.5159202, i64 64
  %i.ho = load <8 x i64>, ptr %i.hm, align 64, !tbaa !13
  %i.hp = load <8 x i64>, ptr %i.hn, align 64, !tbaa !13
  %i.hq = load <8 x i64>, ptr %i.hl, align 64, !tbaa !13
  %i.hr = add <8 x i64> %i.ho, %i.hp
  %i.hs = sub <8 x i64> %i.h, %i.hr
  %i.ht = tail call noundef <8 x i64> @llvm.x86.avx512.psrai.q.512(<8 x i64> %i.hs, i32 range(i32 0, 256) %i.co)
  %i.hu = add <8 x i64> %i.ht, %i.hq
  store <8 x i64> %i.hu, ptr %i.hl, align 64, !tbaa !13
  %i.hv = add nsw i32 %.1167201, -16
  %i.hw = getelementptr inbounds nuw i8, ptr %.5204, i64 128
  %i.hx = getelementptr inbounds nuw i8, ptr %.5151203, i64 128
  %i.hy = getelementptr inbounds nuw i8, ptr %.5159202, i64 128
  %i.hz = icmp sgt i32 %.1167201, 16
  br i1 %i.hz, label %.lr.ph205, label %.loopexit, !llvm.loop !59

bb.g:                                             ; preds = %bb.e
  %.not170195 = icmp eq i32 %4, 0                 ; 2 uses
  br i1 %5, label %.preheader186, label %.preheader188

.preheader188:                                    ; preds = %bb.g
  br i1 %.not170195, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader188
  %i.ia = sext i16 %i.b to i64                    ; 5 uses
  %i.ib = zext nneg i8 %i.e to i64                ; 5 uses
  %i.ic = zext i32 %4 to i64                      ; 5 uses
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.id = add i32 %4, -1
  %i.ie = zext i32 %i.id to i64
  %i.if = shl nuw nsw i64 %i.ie, 3
  %i.ig = add nuw nsw i64 %i.if, 8                ; 3 uses
  %i.ih = getelementptr i8, ptr %i.j, i64 %i.ig   ; 2 uses
  %i.ii = getelementptr i8, ptr %i.l, i64 %i.ig
  %bound0 = icmp ult ptr %i.j, %i.ii
  %bound0.a = icmp ult ptr %i.l, %i.ih
  %found.conflict = and i1 %bound0, %bound0.a
  %6 = getelementptr i8, ptr %i.n, i64 %i.ig
  %bound0258 = icmp ult ptr %i.j, %6
  %bound1259 = icmp ult ptr %i.n, %i.ih
  %found.conflict260 = and i1 %bound0258, %bound1259
  %conflict.rdx = or i1 %found.conflict, %found.conflict260
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check261 = icmp ult i32 %4, 16
  br i1 %min.iters.check261, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ij = and i64 %i.ic, 12
  %n.vec = and i64 %i.ic, 4294967280              ; 5 uses
  %i.ik = trunc nuw i64 %n.vec to i32
  %i.il = sub i32 %4, %i.ik
  %i.im = shl nuw nsw i64 %n.vec, 3               ; 3 uses
  %i.in = getelementptr i8, ptr %i.j, i64 %i.im
  %i.io = getelementptr i8, ptr %i.l, i64 %i.im
  %i.ip = getelementptr i8, ptr %i.n, i64 %i.im
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.ia, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert262 = insertelement <8 x i64> poison, i64 %i.ib, i64 0
  %broadcast.splat263 = shufflevector <8 x i64> %broadcast.splatinsert262, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert264 = insertelement <8 x i64> poison, i64 %i.f, i64 0
  %broadcast.splat265 = shufflevector <8 x i64> %broadcast.splatinsert264, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iq = shl i64 %index, 3                       ; 3 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.iq ; 3 uses
  %next.gep266 = getelementptr i8, ptr %i.l, i64 %i.iq ; 2 uses
  %next.gep267 = getelementptr i8, ptr %i.n, i64 %i.iq ; 2 uses
  %i.ir = getelementptr i8, ptr %next.gep266, i64 64
  %wide.load = load <8 x i64>, ptr %next.gep266, align 8, !tbaa !27, !alias.scope !74
  %wide.load268 = load <8 x i64>, ptr %i.ir, align 8, !tbaa !27, !alias.scope !74
  %i.is = getelementptr i8, ptr %next.gep267, i64 64
  %wide.load269 = load <8 x i64>, ptr %next.gep267, align 8, !tbaa !27, !alias.scope !75
  %wide.load270 = load <8 x i64>, ptr %i.is, align 8, !tbaa !27, !alias.scope !75
  %i.it = add nsw <8 x i64> %wide.load269, %wide.load
  %i.iu = add nsw <8 x i64> %wide.load270, %wide.load268
  %i.iv = mul nsw <8 x i64> %i.it, %broadcast.splat
  %i.iw = mul nsw <8 x i64> %i.iu, %broadcast.splat
  %i.ix = add nsw <8 x i64> %i.iv, %broadcast.splat265
  %i.iy = add nsw <8 x i64> %i.iw, %broadcast.splat265
  %i.iz = ashr <8 x i64> %i.ix, %broadcast.splat263
  %i.ja = ashr <8 x i64> %i.iy, %broadcast.splat263
  %i.jb = getelementptr i8, ptr %next.gep, i64 64 ; 2 uses
  %wide.load271 = load <8 x i64>, ptr %next.gep, align 8, !tbaa !27, !alias.scope !76, !noalias !77
  %wide.load272 = load <8 x i64>, ptr %i.jb, align 8, !tbaa !27, !alias.scope !76, !noalias !77
  %i.jc = add nsw <8 x i64> %i.iz, %wide.load271
  %i.jd = add nsw <8 x i64> %i.ja, %wide.load272
  store <8 x i64> %i.jc, ptr %next.gep, align 8, !tbaa !27, !alias.scope !76, !noalias !77
  store <8 x i64> %i.jd, ptr %i.jb, align 8, !tbaa !27, !alias.scope !76, !noalias !77
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.je = icmp eq i64 %index.next, %n.vec
  br i1 %i.je, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ic
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ij, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !78

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec273 = and i64 %i.ic, 4294967292           ; 4 uses
  %i.jf = trunc nuw i64 %n.vec273 to i32
  %i.jg = sub i32 %4, %i.jf
  %i.jh = shl nuw nsw i64 %n.vec273, 3            ; 3 uses
  %i.ji = getelementptr i8, ptr %i.j, i64 %i.jh
  %i.jj = getelementptr i8, ptr %i.l, i64 %i.jh
  %i.jk = getelementptr i8, ptr %i.n, i64 %i.jh
  %broadcast.splatinsert274 = insertelement <4 x i64> poison, i64 %i.ia, i64 0
  %broadcast.splat275 = shufflevector <4 x i64> %broadcast.splatinsert274, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert276 = insertelement <4 x i64> poison, i64 %i.ib, i64 0
  %broadcast.splat277 = shufflevector <4 x i64> %broadcast.splatinsert276, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert278 = insertelement <4 x i64> poison, i64 %i.f, i64 0
  %broadcast.splat279 = shufflevector <4 x i64> %broadcast.splatinsert278, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index280 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next287, %vec.epilog.vector.body ] ; 2 uses
  %i.jl = shl i64 %index280, 3                    ; 3 uses
  %next.gep281 = getelementptr i8, ptr %i.j, i64 %i.jl ; 2 uses
  %next.gep282 = getelementptr i8, ptr %i.l, i64 %i.jl
  %next.gep283 = getelementptr i8, ptr %i.n, i64 %i.jl
  %wide.load284 = load <4 x i64>, ptr %next.gep282, align 8, !tbaa !27, !alias.scope !74
  %wide.load285 = load <4 x i64>, ptr %next.gep283, align 8, !tbaa !27, !alias.scope !75
  %i.jm = add nsw <4 x i64> %wide.load285, %wide.load284
  %i.jn = mul nsw <4 x i64> %i.jm, %broadcast.splat275
  %i.jo = add nsw <4 x i64> %i.jn, %broadcast.splat279
  %i.jp = ashr <4 x i64> %i.jo, %broadcast.splat277
  %wide.load286 = load <4 x i64>, ptr %next.gep281, align 8, !tbaa !27, !alias.scope !76, !noalias !77
  %i.jq = add nsw <4 x i64> %i.jp, %wide.load286
  store <4 x i64> %i.jq, ptr %next.gep281, align 8, !tbaa !27, !alias.scope !76, !noalias !77
  %index.next287 = add nuw i64 %index280, 4       ; 2 uses
  %i.jr = icmp eq i64 %index.next287, %n.vec273
  br i1 %i.jr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !65

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n288 = icmp eq i64 %n.vec273, %i.ic
  br i1 %cmp.n288, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0194.ph = phi i32 [ %4, %iter.check ], [ %4, %vector.memcheck ], [ %i.il, %vec.epilog.iter.check ], [ %i.jg, %vec.epilog.middle.block ] ; 4 uses
  %.7193.ph = phi ptr [ %i.j, %iter.check ], [ %i.j, %vector.memcheck ], [ %i.in, %vec.epilog.iter.check ], [ %i.ji, %vec.epilog.middle.block ] ; 4 uses
  %.7153192.ph = phi ptr [ %i.l, %iter.check ], [ %i.l, %vector.memcheck ], [ %i.io, %vec.epilog.iter.check ], [ %i.jj, %vec.epilog.middle.block ] ; 3 uses
  %.7161191.ph = phi ptr [ %i.n, %iter.check ], [ %i.n, %vector.memcheck ], [ %i.ip, %vec.epilog.iter.check ], [ %i.jk, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i32 %.0194.ph, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.js = getelementptr inbounds nuw i8, ptr %.7153192.ph, i64 8
  %i.jt = load i64, ptr %.7153192.ph, align 8, !tbaa !27
  %i.ju = getelementptr inbounds nuw i8, ptr %.7161191.ph, i64 8
  %i.jv = load i64, ptr %.7161191.ph, align 8, !tbaa !27
  %i.jw = add nsw i64 %i.jv, %i.jt
  %i.jx = mul nsw i64 %i.jw, %i.ia
  %i.jy = add nsw i64 %i.jx, %i.f
  %i.jz = ashr i64 %i.jy, %i.ib
  %i.ka = getelementptr inbounds nuw i8, ptr %.7193.ph, i64 8
  %i.kb = load i64, ptr %.7193.ph, align 8, !tbaa !27
  %i.kc = add nsw i64 %i.jz, %i.kb
  store i64 %i.kc, ptr %.7193.ph, align 8, !tbaa !27
  %i.kd = add nsw i32 %.0194.ph, -1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.0194.unr = phi i32 [ %.0194.ph, %vec.epilog.scalar.ph.preheader ], [ %i.kd, %vec.epilog.scalar.ph.prol ]
  %.7193.unr = phi ptr [ %.7193.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ka, %vec.epilog.scalar.ph.prol ]
  %.7153192.unr = phi ptr [ %.7153192.ph, %vec.epilog.scalar.ph.preheader ], [ %i.js, %vec.epilog.scalar.ph.prol ]
  %.7161191.unr = phi ptr [ %.7161191.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ju, %vec.epilog.scalar.ph.prol ]
  %i.ke = icmp eq i32 %.0194.ph, 1
  br i1 %i.ke, label %.loopexit, label %vec.epilog.scalar.ph

.preheader186:                                    ; preds = %bb.g
  br i1 %.not170195, label %.loopexit, label %iter.check335

iter.check335:                                    ; preds = %.preheader186
  %i.kf = sext i16 %i.b to i64                    ; 5 uses
  %i.kg = zext nneg i8 %i.e to i64                ; 5 uses
  %i.kh = zext i32 %4 to i64                      ; 5 uses
  %min.iters.check302 = icmp ult i32 %4, 4
  br i1 %min.iters.check302, label %vec.epilog.scalar.ph337.preheader, label %vector.memcheck303

vector.memcheck303:                               ; preds = %iter.check335
  %i.ki = add i32 %4, -1
  %i.kj = zext i32 %i.ki to i64
  %i.kk = shl nuw nsw i64 %i.kj, 3
  %i.kl = add nuw nsw i64 %i.kk, 8                ; 3 uses
  %i.km = getelementptr i8, ptr %i.j, i64 %i.kl   ; 2 uses
  %i.kn = getelementptr i8, ptr %i.l, i64 %i.kl
  %bound0304 = icmp ult ptr %i.j, %i.kn
  %bound0304.a = icmp ult ptr %i.l, %i.km
  %found.conflict306 = and i1 %bound0304, %bound0304.a
  %7 = getelementptr i8, ptr %i.n, i64 %i.kl
  %bound0307 = icmp ult ptr %i.j, %7
  %bound1308 = icmp ult ptr %i.n, %i.km
  %found.conflict309 = and i1 %bound0307, %bound1308
  %conflict.rdx310 = or i1 %found.conflict306, %found.conflict309
  br i1 %conflict.rdx310, label %vec.epilog.scalar.ph337.preheader, label %vector.main.loop.iter.check311

vector.main.loop.iter.check311:                   ; preds = %vector.memcheck303
  %min.iters.check312 = icmp ult i32 %4, 16
  br i1 %min.iters.check312, label %vec.epilog.ph339, label %vector.ph313

vector.ph313:                                     ; preds = %vector.main.loop.iter.check311
  %i.ko = and i64 %i.kh, 12
  %n.vec314 = and i64 %i.kh, 4294967280           ; 5 uses
  %i.kp = trunc nuw i64 %n.vec314 to i32
  %i.kq = sub i32 %4, %i.kp
  %i.kr = shl nuw nsw i64 %n.vec314, 3            ; 3 uses
  %i.ks = getelementptr i8, ptr %i.j, i64 %i.kr
  %i.kt = getelementptr i8, ptr %i.l, i64 %i.kr
  %i.ku = getelementptr i8, ptr %i.n, i64 %i.kr
  %broadcast.splatinsert315 = insertelement <8 x i64> poison, i64 %i.kf, i64 0
  %broadcast.splat316 = shufflevector <8 x i64> %broadcast.splatinsert315, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert317 = insertelement <8 x i64> poison, i64 %i.kg, i64 0
  %broadcast.splat318 = shufflevector <8 x i64> %broadcast.splatinsert317, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert319 = insertelement <8 x i64> poison, i64 %i.f, i64 0
  %broadcast.splat320 = shufflevector <8 x i64> %broadcast.splatinsert319, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body321

vector.body321:                                   ; preds = %vector.ph313, %vector.body321
  %index322 = phi i64 [ 0, %vector.ph313 ], [ %index.next332, %vector.body321 ] ; 2 uses
  %i.kv = shl i64 %index322, 3                    ; 3 uses
  %next.gep323 = getelementptr i8, ptr %i.j, i64 %i.kv ; 3 uses
  %next.gep324 = getelementptr i8, ptr %i.l, i64 %i.kv ; 2 uses
  %next.gep325 = getelementptr i8, ptr %i.n, i64 %i.kv ; 2 uses
  %i.kw = getelementptr i8, ptr %next.gep324, i64 64
  %wide.load326 = load <8 x i64>, ptr %next.gep324, align 8, !tbaa !27, !alias.scope !79
  %wide.load327 = load <8 x i64>, ptr %i.kw, align 8, !tbaa !27, !alias.scope !79
  %i.kx = getelementptr i8, ptr %next.gep325, i64 64
  %wide.load328 = load <8 x i64>, ptr %next.gep325, align 8, !tbaa !27, !alias.scope !80
  %wide.load329 = load <8 x i64>, ptr %i.kx, align 8, !tbaa !27, !alias.scope !80
  %i.ky = add nsw <8 x i64> %wide.load328, %wide.load326
  %i.kz = add nsw <8 x i64> %wide.load329, %wide.load327
  %i.la = mul nsw <8 x i64> %i.ky, %broadcast.splat316
  %i.lb = mul nsw <8 x i64> %i.kz, %broadcast.splat316
  %i.lc = add nsw <8 x i64> %i.la, %broadcast.splat320
  %i.ld = add nsw <8 x i64> %i.lb, %broadcast.splat320
  %i.le = ashr <8 x i64> %i.lc, %broadcast.splat318
  %i.lf = ashr <8 x i64> %i.ld, %broadcast.splat318
  %i.lg = getelementptr i8, ptr %next.gep323, i64 64 ; 2 uses
  %wide.load330 = load <8 x i64>, ptr %next.gep323, align 8, !tbaa !27, !alias.scope !81, !noalias !82
  %wide.load331 = load <8 x i64>, ptr %i.lg, align 8, !tbaa !27, !alias.scope !81, !noalias !82
  %i.lh = sub nsw <8 x i64> %wide.load330, %i.le
  %i.li = sub nsw <8 x i64> %wide.load331, %i.lf
  store <8 x i64> %i.lh, ptr %next.gep323, align 8, !tbaa !27, !alias.scope !81, !noalias !82
  store <8 x i64> %i.li, ptr %i.lg, align 8, !tbaa !27, !alias.scope !81, !noalias !82
  %index.next332 = add nuw i64 %index322, 16      ; 2 uses
  %i.lj = icmp eq i64 %index.next332, %n.vec314
  br i1 %i.lj, label %middle.block333, label %vector.body321, !llvm.loop !70

middle.block333:                                  ; preds = %vector.body321
  %cmp.n334 = icmp eq i64 %n.vec314, %i.kh
  br i1 %cmp.n334, label %.loopexit, label %vec.epilog.iter.check336

vec.epilog.iter.check336:                         ; preds = %middle.block333
  %min.epilog.iters.check338 = icmp eq i64 %i.ko, 0
  br i1 %min.epilog.iters.check338, label %vec.epilog.scalar.ph337.preheader, label %vec.epilog.ph339, !prof !78

vec.epilog.ph339:                                 ; preds = %vector.main.loop.iter.check311, %vec.epilog.iter.check336
  %vec.epilog.resume.val340 = phi i64 [ %n.vec314, %vec.epilog.iter.check336 ], [ 0, %vector.main.loop.iter.check311 ]
  %n.vec341 = and i64 %i.kh, 4294967292           ; 4 uses
  %i.lk = trunc nuw i64 %n.vec341 to i32
  %i.ll = sub i32 %4, %i.lk
  %i.lm = shl nuw nsw i64 %n.vec341, 3            ; 3 uses
  %i.ln = getelementptr i8, ptr %i.j, i64 %i.lm
  %i.lo = getelementptr i8, ptr %i.l, i64 %i.lm
  %i.lp = getelementptr i8, ptr %i.n, i64 %i.lm
  %broadcast.splatinsert342 = insertelement <4 x i64> poison, i64 %i.kf, i64 0
  %broadcast.splat343 = shufflevector <4 x i64> %broadcast.splatinsert342, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert344 = insertelement <4 x i64> poison, i64 %i.kg, i64 0
  %broadcast.splat345 = shufflevector <4 x i64> %broadcast.splatinsert344, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert346 = insertelement <4 x i64> poison, i64 %i.f, i64 0
  %broadcast.splat347 = shufflevector <4 x i64> %broadcast.splatinsert346, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body348

vec.epilog.vector.body348:                        ; preds = %vec.epilog.vector.body348, %vec.epilog.ph339
  %index349 = phi i64 [ %vec.epilog.resume.val340, %vec.epilog.ph339 ], [ %index.next356, %vec.epilog.vector.body348 ] ; 2 uses
  %i.lq = shl i64 %index349, 3                    ; 3 uses
  %next.gep350 = getelementptr i8, ptr %i.j, i64 %i.lq ; 2 uses
  %next.gep351 = getelementptr i8, ptr %i.l, i64 %i.lq
  %next.gep352 = getelementptr i8, ptr %i.n, i64 %i.lq
  %wide.load353 = load <4 x i64>, ptr %next.gep351, align 8, !tbaa !27, !alias.scope !79
  %wide.load354 = load <4 x i64>, ptr %next.gep352, align 8, !tbaa !27, !alias.scope !80
  %i.lr = add nsw <4 x i64> %wide.load354, %wide.load353
  %i.ls = mul nsw <4 x i64> %i.lr, %broadcast.splat343
  %i.lt = add nsw <4 x i64> %i.ls, %broadcast.splat347
  %i.lu = ashr <4 x i64> %i.lt, %broadcast.splat345
  %wide.load355 = load <4 x i64>, ptr %next.gep350, align 8, !tbaa !27, !alias.scope !81, !noalias !82
  %i.lv = sub nsw <4 x i64> %wide.load355, %i.lu
  store <4 x i64> %i.lv, ptr %next.gep350, align 8, !tbaa !27, !alias.scope !81, !noalias !82
  %index.next356 = add nuw i64 %index349, 4       ; 2 uses
  %i.lw = icmp eq i64 %index.next356, %n.vec341
  br i1 %i.lw, label %vec.epilog.middle.block357, label %vec.epilog.vector.body348, !llvm.loop !71

vec.epilog.middle.block357:                       ; preds = %vec.epilog.vector.body348
  %cmp.n358 = icmp eq i64 %n.vec341, %i.kh
  br i1 %cmp.n358, label %.loopexit, label %vec.epilog.scalar.ph337.preheader

vec.epilog.scalar.ph337.preheader:                ; preds = %iter.check335, %vector.memcheck303, %vec.epilog.iter.check336, %vec.epilog.middle.block357
  %.0144199.ph = phi i32 [ %4, %iter.check335 ], [ %4, %vector.memcheck303 ], [ %i.kq, %vec.epilog.iter.check336 ], [ %i.ll, %vec.epilog.middle.block357 ] ; 4 uses
  %.6198.ph = phi ptr [ %i.j, %iter.check335 ], [ %i.j, %vector.memcheck303 ], [ %i.ks, %vec.epilog.iter.check336 ], [ %i.ln, %vec.epilog.middle.block357 ] ; 4 uses
  %.6152197.ph = phi ptr [ %i.l, %iter.check335 ], [ %i.l, %vector.memcheck303 ], [ %i.kt, %vec.epilog.iter.check336 ], [ %i.lo, %vec.epilog.middle.block357 ] ; 3 uses
  %.6160196.ph = phi ptr [ %i.n, %iter.check335 ], [ %i.n, %vector.memcheck303 ], [ %i.ku, %vec.epilog.iter.check336 ], [ %i.lp, %vec.epilog.middle.block357 ] ; 3 uses
  %xtraiter370 = and i32 %.0144199.ph, 1
  %lcmp.mod371.not = icmp eq i32 %xtraiter370, 0
  br i1 %lcmp.mod371.not, label %vec.epilog.scalar.ph337.prol.loopexit, label %vec.epilog.scalar.ph337.prol

vec.epilog.scalar.ph337.prol:                     ; preds = %vec.epilog.scalar.ph337.preheader
  %i.lx = getelementptr inbounds nuw i8, ptr %.6152197.ph, i64 8
  %i.ly = load i64, ptr %.6152197.ph, align 8, !tbaa !27
  %i.lz = getelementptr inbounds nuw i8, ptr %.6160196.ph, i64 8
  %i.ma = load i64, ptr %.6160196.ph, align 8, !tbaa !27
  %i.mb = add nsw i64 %i.ma, %i.ly
  %i.mc = mul nsw i64 %i.mb, %i.kf
  %i.md = add nsw i64 %i.mc, %i.f
  %i.me = ashr i64 %i.md, %i.kg
  %i.mf = getelementptr inbounds nuw i8, ptr %.6198.ph, i64 8
  %i.mg = load i64, ptr %.6198.ph, align 8, !tbaa !27
  %i.mh = sub nsw i64 %i.mg, %i.me
  store i64 %i.mh, ptr %.6198.ph, align 8, !tbaa !27
  %i.mi = add nsw i32 %.0144199.ph, -1
  br label %vec.epilog.scalar.ph337.prol.loopexit

vec.epilog.scalar.ph337.prol.loopexit:            ; preds = %vec.epilog.scalar.ph337.prol, %vec.epilog.scalar.ph337.preheader
  %.0144199.unr = phi i32 [ %.0144199.ph, %vec.epilog.scalar.ph337.preheader ], [ %i.mi, %vec.epilog.scalar.ph337.prol ]
  %.6198.unr = phi ptr [ %.6198.ph, %vec.epilog.scalar.ph337.preheader ], [ %i.mf, %vec.epilog.scalar.ph337.prol ]
  %.6152197.unr = phi ptr [ %.6152197.ph, %vec.epilog.scalar.ph337.preheader ], [ %i.lx, %vec.epilog.scalar.ph337.prol ]
  %.6160196.unr = phi ptr [ %.6160196.ph, %vec.epilog.scalar.ph337.preheader ], [ %i.lz, %vec.epilog.scalar.ph337.prol ]
  %i.mj = icmp eq i32 %.0144199.ph, 1
  br i1 %i.mj, label %.loopexit, label %vec.epilog.scalar.ph337

vec.epilog.scalar.ph337:                          ; preds = %vec.epilog.scalar.ph337.prol.loopexit, %vec.epilog.scalar.ph337
  %.0144199 = phi i32 [ %i.ng, %vec.epilog.scalar.ph337 ], [ %.0144199.unr, %vec.epilog.scalar.ph337.prol.loopexit ]
  %.6198 = phi ptr [ %i.nd, %vec.epilog.scalar.ph337 ], [ %.6198.unr, %vec.epilog.scalar.ph337.prol.loopexit ] ; 4 uses
  %.6152197 = phi ptr [ %i.mv, %vec.epilog.scalar.ph337 ], [ %.6152197.unr, %vec.epilog.scalar.ph337.prol.loopexit ] ; 3 uses
  %.6160196 = phi ptr [ %i.mx, %vec.epilog.scalar.ph337 ], [ %.6160196.unr, %vec.epilog.scalar.ph337.prol.loopexit ] ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.6152197, i64 8
  %i.ml = load i64, ptr %.6152197, align 8, !tbaa !27
  %i.mm = getelementptr inbounds nuw i8, ptr %.6160196, i64 8
  %i.mn = load i64, ptr %.6160196, align 8, !tbaa !27
  %i.mo = add nsw i64 %i.mn, %i.ml
  %i.mp = mul nsw i64 %i.mo, %i.kf
  %i.mq = add nsw i64 %i.mp, %i.f
  %i.mr = ashr i64 %i.mq, %i.kg
  %i.ms = getelementptr inbounds nuw i8, ptr %.6198, i64 8 ; 2 uses
  %i.mt = load i64, ptr %.6198, align 8, !tbaa !27
  %i.mu = sub nsw i64 %i.mt, %i.mr
  store i64 %i.mu, ptr %.6198, align 8, !tbaa !27
  %i.mv = getelementptr inbounds nuw i8, ptr %.6152197, i64 16
  %i.mw = load i64, ptr %i.mk, align 8, !tbaa !27
  %i.mx = getelementptr inbounds nuw i8, ptr %.6160196, i64 16
  %i.my = load i64, ptr %i.mm, align 8, !tbaa !27
  %i.mz = add nsw i64 %i.my, %i.mw
  %i.na = mul nsw i64 %i.mz, %i.kf
  %i.nb = add nsw i64 %i.na, %i.f
  %i.nc = ashr i64 %i.nb, %i.kg
  %i.nd = getelementptr inbounds nuw i8, ptr %.6198, i64 16
  %i.ne = load i64, ptr %i.ms, align 8, !tbaa !27
  %i.nf = sub nsw i64 %i.ne, %i.nc
  store i64 %i.nf, ptr %i.ms, align 8, !tbaa !27
  %i.ng = add i32 %.0144199, -2                   ; 2 uses
  %.not170.1 = icmp eq i32 %i.ng, 0
  br i1 %.not170.1, label %.loopexit, label %vec.epilog.scalar.ph337, !llvm.loop !72

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0194 = phi i32 [ %i.od, %vec.epilog.scalar.ph ], [ %.0194.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.7193 = phi ptr [ %i.oa, %vec.epilog.scalar.ph ], [ %.7193.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %.7153192 = phi ptr [ %i.ns, %vec.epilog.scalar.ph ], [ %.7153192.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.7161191 = phi ptr [ %i.nu, %vec.epilog.scalar.ph ], [ %.7161191.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.7153192, i64 8
  %i.ni = load i64, ptr %.7153192, align 8, !tbaa !27
  %i.nj = getelementptr inbounds nuw i8, ptr %.7161191, i64 8
  %i.nk = load i64, ptr %.7161191, align 8, !tbaa !27
  %i.nl = add nsw i64 %i.nk, %i.ni
  %i.nm = mul nsw i64 %i.nl, %i.ia
  %i.nn = add nsw i64 %i.nm, %i.f
  %i.no = ashr i64 %i.nn, %i.ib
  %i.np = getelementptr inbounds nuw i8, ptr %.7193, i64 8 ; 2 uses
  %i.nq = load i64, ptr %.7193, align 8, !tbaa !27
  %i.nr = add nsw i64 %i.no, %i.nq
  store i64 %i.nr, ptr %.7193, align 8, !tbaa !27
  %i.ns = getelementptr inbounds nuw i8, ptr %.7153192, i64 16
  %i.nt = load i64, ptr %i.nh, align 8, !tbaa !27
  %i.nu = getelementptr inbounds nuw i8, ptr %.7161191, i64 16
  %i.nv = load i64, ptr %i.nj, align 8, !tbaa !27
  %i.nw = add nsw i64 %i.nv, %i.nt
  %i.nx = mul nsw i64 %i.nw, %i.ia
  %i.ny = add nsw i64 %i.nx, %i.f
  %i.nz = ashr i64 %i.ny, %i.ib
  %i.oa = getelementptr inbounds nuw i8, ptr %.7193, i64 16
  %i.ob = load i64, ptr %i.np, align 8, !tbaa !27
  %i.oc = add nsw i64 %i.nz, %i.ob
end_hunk_0
begin_hunk_1_@_ZN4ojph5local21avx512_rev_horz_ana64EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb:bb.a
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !13 ; 2 uses
  %i.co = load i8, ptr %i.cj, align 4, !tbaa !13  ; 6 uses
  %i.cp = sext i16 %i.cn to i64                   ; 11 uses
  %i.cq = insertelement <8 x i64> poison, i64 %i.cp, i64 0
  %i.cr = shufflevector <8 x i64> %i.cq, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.cs = load i64, ptr %.0187273, align 8, !tbaa !27
  %i.ct = getelementptr inbounds i8, ptr %.0187273, i64 -8
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !27
  %i.cu = add nsw i32 %.0188272, -1
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.0187273, i64 %i.cv
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !27
  %i.cy = zext nneg i32 %.0188272 to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.0187273, i64 %i.cy
  store i64 %i.cx, ptr %i.cz, align 8, !tbaa !27
  %i.da = icmp eq i16 %i.cl, 1
  br i1 %i.da, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not282 = icmp eq i32 %.0189271, 0             ; 2 uses
  br i1 %.0.in275, label %.preheader, label %.preheader218

.preheader218:                                    ; preds = %bb.d
  br i1 %.not282, label %.loopexit, label %.lr.ph264

.lr.ph264:                                        ; preds = %.preheader218
  %i.db = zext i8 %i.co to i32
  br label %bb.f

.preheader:                                       ; preds = %bb.d
  br i1 %.not282, label %.loopexit, label %.lr.ph268

.lr.ph268:                                        ; preds = %.preheader
  %i.dc = zext i8 %i.co to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph268, %bb.e
  %.0192267 = phi ptr [ %.0187273, %.lr.ph268 ], [ %i.dm, %bb.e ] ; 3 uses
  %.0194266 = phi ptr [ %.0186274, %.lr.ph268 ], [ %i.dn, %bb.e ] ; 3 uses
  %.0202265 = phi i32 [ %.0189271, %.lr.ph268 ], [ %i.dl, %bb.e ] ; 2 uses
  %i.dd = load <8 x i64>, ptr %.0192267, align 64, !tbaa !13
  %i.de = getelementptr inbounds nuw i8, ptr %.0192267, i64 8
  %i.df = load <8 x i64>, ptr %i.de, align 8, !tbaa !13
  %i.dg = load <8 x i64>, ptr %.0194266, align 64, !tbaa !13
  %i.dh = add <8 x i64> %i.dd, %i.cr
  %i.di = add <8 x i64> %i.dh, %i.df
  %i.dj = tail call noundef <8 x i64> @llvm.x86.avx512.psrai.q.512(<8 x i64> %i.di, i32 range(i32 0, 256) %i.dc)
  %i.dk = add <8 x i64> %i.dj, %i.dg
  store <8 x i64> %i.dk, ptr %.0194266, align 64, !tbaa !13
  %i.dl = add nsw i32 %.0202265, -8
  %i.dm = getelementptr inbounds nuw i8, ptr %.0192267, i64 64
  %i.dn = getelementptr inbounds nuw i8, ptr %.0194266, i64 64
  %i.do = icmp sgt i32 %.0202265, 8
  br i1 %i.do, label %bb.e, label %.loopexit, !llvm.loop !97

bb.f:                                             ; preds = %.lr.ph264, %bb.f
  %.1193263 = phi ptr [ %.0187273, %.lr.ph264 ], [ %i.dy, %bb.f ] ; 3 uses
  %.1195262 = phi ptr [ %.0186274, %.lr.ph264 ], [ %i.dz, %bb.f ] ; 3 uses
  %.1203261 = phi i32 [ %.0189271, %.lr.ph264 ], [ %i.dx, %bb.f ] ; 2 uses
  %i.dp = load <8 x i64>, ptr %.1193263, align 64, !tbaa !13
  %i.dq = getelementptr inbounds i8, ptr %.1193263, i64 -8
  %i.dr = load <8 x i64>, ptr %i.dq, align 8, !tbaa !13
  %i.ds = load <8 x i64>, ptr %.1195262, align 64, !tbaa !13
  %i.dt = add <8 x i64> %i.dp, %i.cr
  %i.du = add <8 x i64> %i.dt, %i.dr
  %i.dv = tail call noundef <8 x i64> @llvm.x86.avx512.psrai.q.512(<8 x i64> %i.du, i32 range(i32 0, 256) %i.db)
  %i.dw = add <8 x i64> %i.dv, %i.ds
  store <8 x i64> %i.dw, ptr %.1195262, align 64, !tbaa !13
  %i.dx = add nsw i32 %.1203261, -8
  %i.dy = getelementptr inbounds nuw i8, ptr %.1193263, i64 64
  %i.dz = getelementptr inbounds nuw i8, ptr %.1195262, i64 64
  %i.ea = icmp sgt i32 %.1203261, 8
  br i1 %i.ea, label %bb.f, label %.loopexit, !llvm.loop !98

bb.g:                                             ; preds = %bb.c
  %i.eb = icmp eq i16 %i.cl, -1                   ; 2 uses
  %i.ec = icmp eq i16 %i.cn, 1
  %or.cond = and i1 %i.eb, %i.ec
  %i.ed = zext i8 %i.co to i32                    ; 2 uses
  %i.ee = icmp eq i8 %i.co, 1
  %or.cond4 = select i1 %or.cond, i1 %i.ee, i1 false
  %.not280 = icmp eq i32 %.0189271, 0             ; 6 uses
  br i1 %or.cond4, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %.0.in275, label %.preheader220, label %.preheader222

.preheader222:                                    ; preds = %bb.h
  br i1 %.not280, label %.loopexit, label %.lr.ph256

.preheader220:                                    ; preds = %bb.h
  br i1 %.not280, label %.loopexit, label %.lr.ph260

.lr.ph260:                                        ; preds = %.preheader220, %.lr.ph260
  %.2259 = phi ptr [ %i.en, %.lr.ph260 ], [ %.0187273, %.preheader220 ] ; 3 uses
  %.2196258 = phi ptr [ %i.eo, %.lr.ph260 ], [ %.0186274, %.preheader220 ] ; 3 uses
  %.0204257 = phi i32 [ %i.em, %.lr.ph260 ], [ %.0189271, %.preheader220 ] ; 2 uses
  %i.ef = load <8 x i64>, ptr %.2259, align 64, !tbaa !13
  %i.eg = getelementptr inbounds nuw i8, ptr %.2259, i64 8
  %i.eh = load <8 x i64>, ptr %i.eg, align 8, !tbaa !13
  %i.ei = load <8 x i64>, ptr %.2196258, align 64, !tbaa !13
  %i.ej = add <8 x i64> %i.eh, %i.ef
  %i.ek = ashr <8 x i64> %i.ej, splat (i64 1)
  %i.el = sub <8 x i64> %i.ei, %i.ek
  store <8 x i64> %i.el, ptr %.2196258, align 64, !tbaa !13
  %i.em = add nsw i32 %.0204257, -8
  %i.en = getelementptr inbounds nuw i8, ptr %.2259, i64 64
  %i.eo = getelementptr inbounds nuw i8, ptr %.2196258, i64 64
  %i.ep = icmp sgt i32 %.0204257, 8
  br i1 %i.ep, label %.lr.ph260, label %.loopexit, !llvm.loop !99

.lr.ph256:                                        ; preds = %.preheader222, %.lr.ph256
  %.3255 = phi ptr [ %i.ey, %.lr.ph256 ], [ %.0187273, %.preheader222 ] ; 3 uses
  %.3197254 = phi ptr [ %i.ez, %.lr.ph256 ], [ %.0186274, %.preheader222 ] ; 3 uses
  %.1205253 = phi i32 [ %i.ex, %.lr.ph256 ], [ %.0189271, %.preheader222 ] ; 2 uses
  %i.eq = load <8 x i64>, ptr %.3255, align 64, !tbaa !13
  %i.er = getelementptr inbounds i8, ptr %.3255, i64 -8
  %i.es = load <8 x i64>, ptr %i.er, align 8, !tbaa !13
  %i.et = load <8 x i64>, ptr %.3197254, align 64, !tbaa !13
  %i.eu = add <8 x i64> %i.es, %i.eq
  %i.ev = ashr <8 x i64> %i.eu, splat (i64 1)
  %i.ew = sub <8 x i64> %i.et, %i.ev
  store <8 x i64> %i.ew, ptr %.3197254, align 64, !tbaa !13
  %i.ex = add nsw i32 %.1205253, -8
  %i.ey = getelementptr inbounds nuw i8, ptr %.3255, i64 64
  %i.ez = getelementptr inbounds nuw i8, ptr %.3197254, i64 64
  %i.fa = icmp sgt i32 %.1205253, 8
  br i1 %i.fa, label %.lr.ph256, label %.loopexit, !llvm.loop !100

bb.i:                                             ; preds = %bb.g
  br i1 %i.eb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %.0.in275, label %.preheader224, label %.preheader226

.preheader226:                                    ; preds = %bb.j
  br i1 %.not280, label %.loopexit, label %.lr.ph248

.preheader224:                                    ; preds = %bb.j
  br i1 %.not280, label %.loopexit, label %.lr.ph252

.lr.ph252:                                        ; preds = %.preheader224, %.lr.ph252
  %.0191251 = phi i32 [ %i.fj, %.lr.ph252 ], [ %.0189271, %.preheader224 ] ; 2 uses
  %.4250 = phi ptr [ %i.fk, %.lr.ph252 ], [ %.0187273, %.preheader224 ] ; 3 uses
  %.4198249 = phi ptr [ %i.fl, %.lr.ph252 ], [ %.0186274, %.preheader224 ] ; 3 uses
  %i.fb = load <8 x i64>, ptr %.4250, align 64, !tbaa !13
  %i.fc = getelementptr inbounds nuw i8, ptr %.4250, i64 8
  %i.fd = load <8 x i64>, ptr %i.fc, align 8, !tbaa !13
  %i.fe = load <8 x i64>, ptr %.4198249, align 64, !tbaa !13
  %i.ff = add <8 x i64> %i.fb, %i.fd
  %i.fg = sub <8 x i64> %i.cr, %i.ff
  %i.fh = tail call noundef <8 x i64> @llvm.x86.avx512.psrai.q.512(<8 x i64> %i.fg, i32 range(i32 0, 256) %i.ed)
  %i.fi = add <8 x i64> %i.fh, %i.fe
  store <8 x i64> %i.fi, ptr %.4198249, align 64, !tbaa !13
  %i.fj = add nsw i32 %.0191251, -8
  %i.fk = getelementptr inbounds nuw i8, ptr %.4250, i64 64
  %i.fl = getelementptr inbounds nuw i8, ptr %.4198249, i64 64
  %i.fm = icmp sgt i32 %.0191251, 8
  br i1 %i.fm, label %.lr.ph252, label %.loopexit, !llvm.loop !101

.lr.ph248:                                        ; preds = %.preheader226, %.lr.ph248
  %.1247 = phi i32 [ %i.fv, %.lr.ph248 ], [ %.0189271, %.preheader226 ] ; 2 uses
  %.5246 = phi ptr [ %i.fw, %.lr.ph248 ], [ %.0187273, %.preheader226 ] ; 3 uses
  %.5199245 = phi ptr [ %i.fx, %.lr.ph248 ], [ %.0186274, %.preheader226 ] ; 3 uses
  %i.fn = load <8 x i64>, ptr %.5246, align 64, !tbaa !13
  %i.fo = getelementptr inbounds i8, ptr %.5246, i64 -8
  %i.fp = load <8 x i64>, ptr %i.fo, align 8, !tbaa !13
  %i.fq = load <8 x i64>, ptr %.5199245, align 64, !tbaa !13
  %i.fr = add <8 x i64> %i.fn, %i.fp
  %i.fs = sub <8 x i64> %i.cr, %i.fr
  %i.ft = tail call noundef <8 x i64> @llvm.x86.avx512.psrai.q.512(<8 x i64> %i.fs, i32 range(i32 0, 256) %i.ed)
  %i.fu = add <8 x i64> %i.ft, %i.fq
  store <8 x i64> %i.fu, ptr %.5199245, align 64, !tbaa !13
  %i.fv = add nsw i32 %.1247, -8
  %i.fw = getelementptr inbounds nuw i8, ptr %.5246, i64 64
  %i.fx = getelementptr inbounds nuw i8, ptr %.5199245, i64 64
  %i.fy = icmp sgt i32 %.1247, 8
  br i1 %i.fy, label %.lr.ph248, label %.loopexit, !llvm.loop !102

bb.k:                                             ; preds = %bb.i
  br i1 %.0.in275, label %.preheader228, label %.preheader230

.preheader230:                                    ; preds = %bb.k
  br i1 %.not280, label %.loopexit, label %iter.check416

iter.check416:                                    ; preds = %.preheader230
  %i.fz = sext i16 %i.cl to i64                   ; 5 uses
  %i.ga = zext nneg i8 %i.co to i64               ; 5 uses
  %i.gb = zext nneg i32 %.0189271 to i64          ; 5 uses
  %min.iters.check378 = icmp samesign ult i32 %.0189271, 8
  br i1 %min.iters.check378, label %vec.epilog.scalar.ph418.preheader, label %vector.memcheck379

vector.memcheck379:                               ; preds = %iter.check416
  %i.gc = add nsw i32 %.0189271, -1
  %i.gd = zext i32 %i.gc to i64
  %i.ge = shl nuw nsw i64 %i.gd, 3                ; 2 uses
  %i.gf = add nuw nsw i64 %i.ge, 8                ; 2 uses
  %i.gg = getelementptr i8, ptr %.0186274, i64 %i.gf ; 2 uses
  %i.gh = getelementptr i8, ptr %.0187273, i64 -8
  %i.gi = getelementptr i8, ptr %.0187273, i64 %i.ge
  %bound0380 = icmp ult ptr %.0186274, %i.gi
  %bound0380.a = icmp ult ptr %i.gh, %i.gg
  %found.conflict382 = and i1 %bound0380, %bound0380.a
  %6 = getelementptr i8, ptr %.0187273, i64 %i.gf
  %bound0383 = icmp ult ptr %.0186274, %6
  %bound1384 = icmp ult ptr %.0187273, %i.gg
  %found.conflict385 = and i1 %bound0383, %bound1384
  %conflict.rdx386 = or i1 %found.conflict382, %found.conflict385
  br i1 %conflict.rdx386, label %vec.epilog.scalar.ph418.preheader, label %vector.main.loop.iter.check387

vector.main.loop.iter.check387:                   ; preds = %vector.memcheck379
  %min.iters.check388 = icmp samesign ult i32 %.0189271, 32
  br i1 %min.iters.check388, label %vec.epilog.ph420, label %vector.ph389

vector.ph389:                                     ; preds = %vector.main.loop.iter.check387
  %i.gj = and i64 %i.gb, 24
  %n.vec390 = and i64 %i.gb, 2147483616           ; 5 uses
  %i.gk = trunc nuw nsw i64 %n.vec390 to i32
  %i.gl = sub nsw i32 %.0189271, %i.gk
  %i.gm = shl nuw nsw i64 %n.vec390, 3            ; 2 uses
  %i.gn = getelementptr i8, ptr %.0187273, i64 %i.gm
  %i.go = getelementptr i8, ptr %.0186274, i64 %i.gm
  %broadcast.splatinsert391 = insertelement <8 x i64> poison, i64 %i.fz, i64 0
  %broadcast.splat392 = shufflevector <8 x i64> %broadcast.splatinsert391, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert393 = insertelement <8 x i64> poison, i64 %i.ga, i64 0
  %broadcast.splat394 = shufflevector <8 x i64> %broadcast.splatinsert393, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert395 = insertelement <8 x i64> poison, i64 %i.cp, i64 0
  %broadcast.splat396 = shufflevector <8 x i64> %broadcast.splatinsert395, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body397

vector.body397:                                   ; preds = %vector.ph389, %vector.body397
  %index398 = phi i64 [ 0, %vector.ph389 ], [ %index.next413, %vector.body397 ] ; 2 uses
  %i.gp = shl i64 %index398, 3                    ; 2 uses
  %next.gep399 = getelementptr i8, ptr %.0187273, i64 %i.gp ; 8 uses
  %next.gep400 = getelementptr i8, ptr %.0186274, i64 %i.gp ; 5 uses
  %i.gq = getelementptr inbounds i8, ptr %next.gep399, i64 -8
  %i.gr = getelementptr inbounds nuw i8, ptr %next.gep399, i64 56
  %i.gs = getelementptr inbounds nuw i8, ptr %next.gep399, i64 120
  %i.gt = getelementptr inbounds nuw i8, ptr %next.gep399, i64 184
  %wide.load401 = load <8 x i64>, ptr %i.gq, align 8, !tbaa !27, !alias.scope !118
  %wide.load402 = load <8 x i64>, ptr %i.gr, align 8, !tbaa !27, !alias.scope !118
  %wide.load403 = load <8 x i64>, ptr %i.gs, align 8, !tbaa !27, !alias.scope !118
  %wide.load404 = load <8 x i64>, ptr %i.gt, align 8, !tbaa !27, !alias.scope !118
  %i.gu = getelementptr i8, ptr %next.gep399, i64 64
  %i.gv = getelementptr i8, ptr %next.gep399, i64 128
  %i.gw = getelementptr i8, ptr %next.gep399, i64 192
  %wide.load405 = load <8 x i64>, ptr %next.gep399, align 8, !tbaa !27, !alias.scope !119
  %wide.load406 = load <8 x i64>, ptr %i.gu, align 8, !tbaa !27, !alias.scope !119
  %wide.load407 = load <8 x i64>, ptr %i.gv, align 8, !tbaa !27, !alias.scope !119
  %wide.load408 = load <8 x i64>, ptr %i.gw, align 8, !tbaa !27, !alias.scope !119
  %i.gx = add nsw <8 x i64> %wide.load405, %wide.load401
  %i.gy = add nsw <8 x i64> %wide.load406, %wide.load402
  %i.gz = add nsw <8 x i64> %wide.load407, %wide.load403
  %i.ha = add nsw <8 x i64> %wide.load408, %wide.load404
  %i.hb = mul nsw <8 x i64> %i.gx, %broadcast.splat392
  %i.hc = mul nsw <8 x i64> %i.gy, %broadcast.splat392
  %i.hd = mul nsw <8 x i64> %i.gz, %broadcast.splat392
  %i.he = mul nsw <8 x i64> %i.ha, %broadcast.splat392
  %i.hf = add nsw <8 x i64> %i.hb, %broadcast.splat396
  %i.hg = add nsw <8 x i64> %i.hc, %broadcast.splat396
  %i.hh = add nsw <8 x i64> %i.hd, %broadcast.splat396
  %i.hi = add nsw <8 x i64> %i.he, %broadcast.splat396
  %i.hj = ashr <8 x i64> %i.hf, %broadcast.splat394
  %i.hk = ashr <8 x i64> %i.hg, %broadcast.splat394
  %i.hl = ashr <8 x i64> %i.hh, %broadcast.splat394
  %i.hm = ashr <8 x i64> %i.hi, %broadcast.splat394
  %i.hn = getelementptr i8, ptr %next.gep400, i64 64 ; 2 uses
  %i.ho = getelementptr i8, ptr %next.gep400, i64 128 ; 2 uses
  %i.hp = getelementptr i8, ptr %next.gep400, i64 192 ; 2 uses
  %wide.load409 = load <8 x i64>, ptr %next.gep400, align 8, !tbaa !27, !alias.scope !120, !noalias !121
  %wide.load410 = load <8 x i64>, ptr %i.hn, align 8, !tbaa !27, !alias.scope !120, !noalias !121
  %wide.load411 = load <8 x i64>, ptr %i.ho, align 8, !tbaa !27, !alias.scope !120, !noalias !121
  %wide.load412 = load <8 x i64>, ptr %i.hp, align 8, !tbaa !27, !alias.scope !120, !noalias !121
  %i.hq = add nsw <8 x i64> %i.hj, %wide.load409
  %i.hr = add nsw <8 x i64> %i.hk, %wide.load410
  %i.hs = add nsw <8 x i64> %i.hl, %wide.load411
  %i.ht = add nsw <8 x i64> %i.hm, %wide.load412
  store <8 x i64> %i.hq, ptr %next.gep400, align 8, !tbaa !27, !alias.scope !120, !noalias !121
  store <8 x i64> %i.hr, ptr %i.hn, align 8, !tbaa !27, !alias.scope !120, !noalias !121
  store <8 x i64> %i.hs, ptr %i.ho, align 8, !tbaa !27, !alias.scope !120, !noalias !121
  store <8 x i64> %i.ht, ptr %i.hp, align 8, !tbaa !27, !alias.scope !120, !noalias !121
  %index.next413 = add nuw i64 %index398, 32      ; 2 uses
  %i.hu = icmp eq i64 %index.next413, %n.vec390
  br i1 %i.hu, label %middle.block414, label %vector.body397, !llvm.loop !107

middle.block414:                                  ; preds = %vector.body397
  %cmp.n415 = icmp eq i64 %n.vec390, %i.gb
  br i1 %cmp.n415, label %.loopexit, label %vec.epilog.iter.check417

vec.epilog.iter.check417:                         ; preds = %middle.block414
  %min.epilog.iters.check419 = icmp eq i64 %i.gj, 0
  br i1 %min.epilog.iters.check419, label %vec.epilog.scalar.ph418.preheader, label %vec.epilog.ph420, !prof !33

vec.epilog.ph420:                                 ; preds = %vector.main.loop.iter.check387, %vec.epilog.iter.check417
  %vec.epilog.resume.val421 = phi i64 [ %n.vec390, %vec.epilog.iter.check417 ], [ 0, %vector.main.loop.iter.check387 ]
  %n.vec422 = and i64 %i.gb, 2147483640           ; 4 uses
  %i.hv = trunc nuw nsw i64 %n.vec422 to i32
  %i.hw = sub nsw i32 %.0189271, %i.hv
  %i.hx = shl nuw nsw i64 %n.vec422, 3            ; 2 uses
  %i.hy = getelementptr i8, ptr %.0187273, i64 %i.hx
  %i.hz = getelementptr i8, ptr %.0186274, i64 %i.hx
  %broadcast.splatinsert423 = insertelement <8 x i64> poison, i64 %i.fz, i64 0
  %broadcast.splat424 = shufflevector <8 x i64> %broadcast.splatinsert423, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert425 = insertelement <8 x i64> poison, i64 %i.ga, i64 0
  %broadcast.splat426 = shufflevector <8 x i64> %broadcast.splatinsert425, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert427 = insertelement <8 x i64> poison, i64 %i.cp, i64 0
  %broadcast.splat428 = shufflevector <8 x i64> %broadcast.splatinsert427, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body429

vec.epilog.vector.body429:                        ; preds = %vec.epilog.vector.body429, %vec.epilog.ph420
  %index430 = phi i64 [ %vec.epilog.resume.val421, %vec.epilog.ph420 ], [ %index.next436, %vec.epilog.vector.body429 ] ; 2 uses
  %i.ia = shl i64 %index430, 3                    ; 2 uses
  %next.gep431 = getelementptr i8, ptr %.0187273, i64 %i.ia ; 2 uses
  %next.gep432 = getelementptr i8, ptr %.0186274, i64 %i.ia ; 2 uses
  %i.ib = getelementptr inbounds i8, ptr %next.gep431, i64 -8
  %wide.load433 = load <8 x i64>, ptr %i.ib, align 8, !tbaa !27, !alias.scope !118
  %wide.load434 = load <8 x i64>, ptr %next.gep431, align 8, !tbaa !27, !alias.scope !119
  %i.ic = add nsw <8 x i64> %wide.load434, %wide.load433
  %i.id = mul nsw <8 x i64> %i.ic, %broadcast.splat424
  %i.ie = add nsw <8 x i64> %i.id, %broadcast.splat428
  %i.if = ashr <8 x i64> %i.ie, %broadcast.splat426
  %wide.load435 = load <8 x i64>, ptr %next.gep432, align 8, !tbaa !27, !alias.scope !120, !noalias !121
  %i.ig = add nsw <8 x i64> %i.if, %wide.load435
  store <8 x i64> %i.ig, ptr %next.gep432, align 8, !tbaa !27, !alias.scope !120, !noalias !121
  %index.next436 = add nuw i64 %index430, 8       ; 2 uses
  %i.ih = icmp eq i64 %index.next436, %n.vec422
  br i1 %i.ih, label %vec.epilog.middle.block437, label %vec.epilog.vector.body429, !llvm.loop !108

vec.epilog.middle.block437:                       ; preds = %vec.epilog.vector.body429
  %cmp.n438 = icmp eq i64 %n.vec422, %i.gb
  br i1 %cmp.n438, label %.loopexit, label %vec.epilog.scalar.ph418.preheader

vec.epilog.scalar.ph418.preheader:                ; preds = %iter.check416, %vector.memcheck379, %vec.epilog.iter.check417, %vec.epilog.middle.block437
  %.0184239.ph = phi i32 [ %.0189271, %iter.check416 ], [ %.0189271, %vector.memcheck379 ], [ %i.gl, %vec.epilog.iter.check417 ], [ %i.hw, %vec.epilog.middle.block437 ] ; 4 uses
  %.7238.ph = phi ptr [ %.0187273, %iter.check416 ], [ %.0187273, %vector.memcheck379 ], [ %i.gn, %vec.epilog.iter.check417 ], [ %i.hy, %vec.epilog.middle.block437 ] ; 4 uses
  %.7201237.ph = phi ptr [ %.0186274, %iter.check416 ], [ %.0186274, %vector.memcheck379 ], [ %i.go, %vec.epilog.iter.check417 ], [ %i.hz, %vec.epilog.middle.block437 ] ; 4 uses
  %xtraiter454 = and i32 %.0184239.ph, 1
  %lcmp.mod455.not = icmp eq i32 %xtraiter454, 0
  br i1 %lcmp.mod455.not, label %vec.epilog.scalar.ph418.prol.loopexit, label %vec.epilog.scalar.ph418.prol

vec.epilog.scalar.ph418.prol:                     ; preds = %vec.epilog.scalar.ph418.preheader
  %i.ii = getelementptr inbounds i8, ptr %.7238.ph, i64 -8
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !27
  %i.ik = load i64, ptr %.7238.ph, align 8, !tbaa !27
  %i.il = add nsw i64 %i.ik, %i.ij
  %i.im = mul nsw i64 %i.il, %i.fz
  %i.in = add nsw i64 %i.im, %i.cp
  %i.io = ashr i64 %i.in, %i.ga
  %i.ip = load i64, ptr %.7201237.ph, align 8, !tbaa !27
  %i.iq = add nsw i64 %i.io, %i.ip
  store i64 %i.iq, ptr %.7201237.ph, align 8, !tbaa !27
  %i.ir = add nsw i32 %.0184239.ph, -1
  %i.is = getelementptr inbounds nuw i8, ptr %.7238.ph, i64 8
  %i.it = getelementptr inbounds nuw i8, ptr %.7201237.ph, i64 8
  br label %vec.epilog.scalar.ph418.prol.loopexit

vec.epilog.scalar.ph418.prol.loopexit:            ; preds = %vec.epilog.scalar.ph418.prol, %vec.epilog.scalar.ph418.preheader
  %.0184239.unr = phi i32 [ %.0184239.ph, %vec.epilog.scalar.ph418.preheader ], [ %i.ir, %vec.epilog.scalar.ph418.prol ]
  %.7238.unr = phi ptr [ %.7238.ph, %vec.epilog.scalar.ph418.preheader ], [ %i.is, %vec.epilog.scalar.ph418.prol ]
  %.7201237.unr = phi ptr [ %.7201237.ph, %vec.epilog.scalar.ph418.preheader ], [ %i.it, %vec.epilog.scalar.ph418.prol ]
  %i.iu = icmp eq i32 %.0184239.ph, 1
  br i1 %i.iu, label %.loopexit, label %vec.epilog.scalar.ph418

.preheader228:                                    ; preds = %bb.k
  br i1 %.not280, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader228
  %i.iv = sext i16 %i.cl to i64                   ; 5 uses
  %i.iw = zext nneg i8 %i.co to i64               ; 5 uses
  %i.ix = zext nneg i32 %.0189271 to i64          ; 5 uses
  %min.iters.check = icmp samesign ult i32 %.0189271, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.iy = add nsw i32 %.0189271, -1
  %i.iz = zext i32 %i.iy to i64
  %i.ja = shl nuw nsw i64 %i.iz, 3                ; 2 uses
  %i.jb = add nuw nsw i64 %i.ja, 8                ; 2 uses
  %i.jc = getelementptr i8, ptr %.0186274, i64 %i.jb ; 2 uses
  %i.jd = getelementptr i8, ptr %.0187273, i64 %i.jb
  %bound0 = icmp ult ptr %.0186274, %i.jd
  %bound1 = icmp ult ptr %.0187273, %i.jc
  %found.conflict = and i1 %bound0, %bound1
  %7 = getelementptr i8, ptr %.0187273, i64 8
  %8 = getelementptr i8, ptr %.0187273, i64 %i.ja
  %9 = getelementptr i8, ptr %8, i64 16
  %bound0328 = icmp ult ptr %.0186274, %9
  %bound1329 = icmp ult ptr %7, %i.jc
  %found.conflict330 = and i1 %bound0328, %bound1329
  %conflict.rdx = or i1 %found.conflict, %found.conflict330
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check331 = icmp samesign ult i32 %.0189271, 32
  br i1 %min.iters.check331, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.je = and i64 %i.ix, 24
  %n.vec = and i64 %i.ix, 2147483616              ; 5 uses
  %i.jf = trunc nuw nsw i64 %n.vec to i32
  %i.jg = sub nsw i32 %.0189271, %i.jf
  %i.jh = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.ji = getelementptr i8, ptr %.0187273, i64 %i.jh
  %i.jj = getelementptr i8, ptr %.0186274, i64 %i.jh
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.iv, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert332 = insertelement <8 x i64> poison, i64 %i.iw, i64 0
  %broadcast.splat333 = shufflevector <8 x i64> %broadcast.splatinsert332, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert334 = insertelement <8 x i64> poison, i64 %i.cp, i64 0
  %broadcast.splat335 = shufflevector <8 x i64> %broadcast.splatinsert334, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0187273, i64 %i.jk ; 8 uses
  %next.gep336 = getelementptr i8, ptr %.0186274, i64 %i.jk ; 5 uses
  %i.jl = getelementptr i8, ptr %next.gep, i64 64
  %i.jm = getelementptr i8, ptr %next.gep, i64 128
  %i.jn = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <8 x i64>, ptr %next.gep, align 8, !tbaa !27, !alias.scope !122
  %wide.load337 = load <8 x i64>, ptr %i.jl, align 8, !tbaa !27, !alias.scope !122
  %wide.load338 = load <8 x i64>, ptr %i.jm, align 8, !tbaa !27, !alias.scope !122
  %wide.load339 = load <8 x i64>, ptr %i.jn, align 8, !tbaa !27, !alias.scope !122
  %i.jo = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.jp = getelementptr inbounds nuw i8, ptr %next.gep, i64 72
  %i.jq = getelementptr inbounds nuw i8, ptr %next.gep, i64 136
  %i.jr = getelementptr inbounds nuw i8, ptr %next.gep, i64 200
  %wide.load340 = load <8 x i64>, ptr %i.jo, align 8, !tbaa !27, !alias.scope !123
  %wide.load341 = load <8 x i64>, ptr %i.jp, align 8, !tbaa !27, !alias.scope !123
  %wide.load342 = load <8 x i64>, ptr %i.jq, align 8, !tbaa !27, !alias.scope !123
  %wide.load343 = load <8 x i64>, ptr %i.jr, align 8, !tbaa !27, !alias.scope !123
  %i.js = add nsw <8 x i64> %wide.load340, %wide.load
  %i.jt = add nsw <8 x i64> %wide.load341, %wide.load337
  %i.ju = add nsw <8 x i64> %wide.load342, %wide.load338
  %i.jv = add nsw <8 x i64> %wide.load343, %wide.load339
  %i.jw = mul nsw <8 x i64> %i.js, %broadcast.splat
  %i.jx = mul nsw <8 x i64> %i.jt, %broadcast.splat
  %i.jy = mul nsw <8 x i64> %i.ju, %broadcast.splat
  %i.jz = mul nsw <8 x i64> %i.jv, %broadcast.splat
  %i.ka = add nsw <8 x i64> %i.jw, %broadcast.splat335
  %i.kb = add nsw <8 x i64> %i.jx, %broadcast.splat335
  %i.kc = add nsw <8 x i64> %i.jy, %broadcast.splat335
  %i.kd = add nsw <8 x i64> %i.jz, %broadcast.splat335
  %i.ke = ashr <8 x i64> %i.ka, %broadcast.splat333
  %i.kf = ashr <8 x i64> %i.kb, %broadcast.splat333
  %i.kg = ashr <8 x i64> %i.kc, %broadcast.splat333
  %i.kh = ashr <8 x i64> %i.kd, %broadcast.splat333
  %i.ki = getelementptr i8, ptr %next.gep336, i64 64 ; 2 uses
  %i.kj = getelementptr i8, ptr %next.gep336, i64 128 ; 2 uses
  %i.kk = getelementptr i8, ptr %next.gep336, i64 192 ; 2 uses
  %wide.load344 = load <8 x i64>, ptr %next.gep336, align 8, !tbaa !27, !alias.scope !124, !noalias !125
  %wide.load345 = load <8 x i64>, ptr %i.ki, align 8, !tbaa !27, !alias.scope !124, !noalias !125
  %wide.load346 = load <8 x i64>, ptr %i.kj, align 8, !tbaa !27, !alias.scope !124, !noalias !125
  %wide.load347 = load <8 x i64>, ptr %i.kk, align 8, !tbaa !27, !alias.scope !124, !noalias !125
  %i.kl = add nsw <8 x i64> %i.ke, %wide.load344
  %i.km = add nsw <8 x i64> %i.kf, %wide.load345
  %i.kn = add nsw <8 x i64> %i.kg, %wide.load346
  %i.ko = add nsw <8 x i64> %i.kh, %wide.load347
  store <8 x i64> %i.kl, ptr %next.gep336, align 8, !tbaa !27, !alias.scope !124, !noalias !125
  store <8 x i64> %i.km, ptr %i.ki, align 8, !tbaa !27, !alias.scope !124, !noalias !125
  store <8 x i64> %i.kn, ptr %i.kj, align 8, !tbaa !27, !alias.scope !124, !noalias !125
  store <8 x i64> %i.ko, ptr %i.kk, align 8, !tbaa !27, !alias.scope !124, !noalias !125
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.kp = icmp eq i64 %index.next, %n.vec
  br i1 %i.kp, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ix
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.je, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec348 = and i64 %i.ix, 2147483640           ; 4 uses
  %i.kq = trunc nuw nsw i64 %n.vec348 to i32
  %i.kr = sub nsw i32 %.0189271, %i.kq
  %i.ks = shl nuw nsw i64 %n.vec348, 3            ; 2 uses
  %i.kt = getelementptr i8, ptr %.0187273, i64 %i.ks
  %i.ku = getelementptr i8, ptr %.0186274, i64 %i.ks
  %broadcast.splatinsert349 = insertelement <8 x i64> poison, i64 %i.iv, i64 0
  %broadcast.splat350 = shufflevector <8 x i64> %broadcast.splatinsert349, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert351 = insertelement <8 x i64> poison, i64 %i.iw, i64 0
  %broadcast.splat352 = shufflevector <8 x i64> %broadcast.splatinsert351, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert353 = insertelement <8 x i64> poison, i64 %i.cp, i64 0
  %broadcast.splat354 = shufflevector <8 x i64> %broadcast.splatinsert353, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index355 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next361, %vec.epilog.vector.body ] ; 2 uses
  %i.kv = shl i64 %index355, 3                    ; 2 uses
  %next.gep356 = getelementptr i8, ptr %.0187273, i64 %i.kv ; 2 uses
  %next.gep357 = getelementptr i8, ptr %.0186274, i64 %i.kv ; 2 uses
  %wide.load358 = load <8 x i64>, ptr %next.gep356, align 8, !tbaa !27, !alias.scope !122
  %i.kw = getelementptr inbounds nuw i8, ptr %next.gep356, i64 8
  %wide.load359 = load <8 x i64>, ptr %i.kw, align 8, !tbaa !27, !alias.scope !123
  %i.kx = add nsw <8 x i64> %wide.load359, %wide.load358
  %i.ky = mul nsw <8 x i64> %i.kx, %broadcast.splat350
  %i.kz = add nsw <8 x i64> %i.ky, %broadcast.splat354
  %i.la = ashr <8 x i64> %i.kz, %broadcast.splat352
  %wide.load360 = load <8 x i64>, ptr %next.gep357, align 8, !tbaa !27, !alias.scope !124, !noalias !125
  %i.lb = add nsw <8 x i64> %i.la, %wide.load360
  store <8 x i64> %i.lb, ptr %next.gep357, align 8, !tbaa !27, !alias.scope !124, !noalias !125
  %index.next361 = add nuw i64 %index355, 8       ; 2 uses
  %i.lc = icmp eq i64 %index.next361, %n.vec348
  br i1 %i.lc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !114

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n362 = icmp eq i64 %n.vec348, %i.ix
  br i1 %cmp.n362, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0185243.ph = phi i32 [ %.0189271, %iter.check ], [ %.0189271, %vector.memcheck ], [ %i.jg, %vec.epilog.iter.check ], [ %i.kr, %vec.epilog.middle.block ] ; 4 uses
  %.6242.ph = phi ptr [ %.0187273, %iter.check ], [ %.0187273, %vector.memcheck ], [ %i.ji, %vec.epilog.iter.check ], [ %i.kt, %vec.epilog.middle.block ] ; 3 uses
  %.6200241.ph = phi ptr [ %.0186274, %iter.check ], [ %.0186274, %vector.memcheck ], [ %i.jj, %vec.epilog.iter.check ], [ %i.ku, %vec.epilog.middle.block ] ; 4 uses
  %xtraiter457 = and i32 %.0185243.ph, 1
  %lcmp.mod458.not = icmp eq i32 %xtraiter457, 0
  br i1 %lcmp.mod458.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ld = load i64, ptr %.6242.ph, align 8, !tbaa !27
  %i.le = getelementptr inbounds nuw i8, ptr %.6242.ph, i64 8 ; 2 uses
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !27
  %i.lg = add nsw i64 %i.lf, %i.ld
  %i.lh = mul nsw i64 %i.lg, %i.iv
  %i.li = add nsw i64 %i.lh, %i.cp
  %i.lj = ashr i64 %i.li, %i.iw
  %i.lk = load i64, ptr %.6200241.ph, align 8, !tbaa !27
  %i.ll = add nsw i64 %i.lj, %i.lk
  store i64 %i.ll, ptr %.6200241.ph, align 8, !tbaa !27
  %i.lm = add nsw i32 %.0185243.ph, -1
  %i.ln = getelementptr inbounds nuw i8, ptr %.6200241.ph, i64 8
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.0185243.unr = phi i32 [ %.0185243.ph, %vec.epilog.scalar.ph.preheader ], [ %i.lm, %vec.epilog.scalar.ph.prol ]
  %.6242.unr = phi ptr [ %.6242.ph, %vec.epilog.scalar.ph.preheader ], [ %i.le, %vec.epilog.scalar.ph.prol ]
  %.6200241.unr = phi ptr [ %.6200241.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ln, %vec.epilog.scalar.ph.prol ]
  %i.lo = icmp eq i32 %.0185243.ph, 1
  br i1 %i.lo, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0185243 = phi i32 [ %i.mi, %vec.epilog.scalar.ph ], [ %.0185243.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.6242 = phi ptr [ %i.ma, %vec.epilog.scalar.ph ], [ %.6242.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.6200241 = phi ptr [ %i.mj, %vec.epilog.scalar.ph ], [ %.6200241.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.lp = load i64, ptr %.6242, align 8, !tbaa !27
  %i.lq = getelementptr inbounds nuw i8, ptr %.6242, i64 8 ; 2 uses
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !27
  %i.ls = add nsw i64 %i.lr, %i.lp
  %i.lt = mul nsw i64 %i.ls, %i.iv
  %i.lu = add nsw i64 %i.lt, %i.cp
  %i.lv = ashr i64 %i.lu, %i.iw
  %i.lw = load i64, ptr %.6200241, align 8, !tbaa !27
  %i.lx = add nsw i64 %i.lv, %i.lw
  store i64 %i.lx, ptr %.6200241, align 8, !tbaa !27
  %i.ly = getelementptr inbounds nuw i8, ptr %.6200241, i64 8 ; 2 uses
  %i.lz = load i64, ptr %i.lq, align 8, !tbaa !27
  %i.ma = getelementptr inbounds nuw i8, ptr %.6242, i64 16 ; 2 uses
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !27
  %i.mc = add nsw i64 %i.mb, %i.lz
  %i.md = mul nsw i64 %i.mc, %i.iv
  %i.me = add nsw i64 %i.md, %i.cp
  %i.mf = ashr i64 %i.me, %i.iw
  %i.mg = load i64, ptr %i.ly, align 8, !tbaa !27
  %i.mh = add nsw i64 %i.mf, %i.mg
  store i64 %i.mh, ptr %i.ly, align 8, !tbaa !27
  %i.mi = add nsw i32 %.0185243, -2               ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.6200241, i64 16
  %.not212.1 = icmp eq i32 %i.mi, 0
  br i1 %.not212.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !115

vec.epilog.scalar.ph418:                          ; preds = %vec.epilog.scalar.ph418.prol.loopexit, %vec.epilog.scalar.ph418
  %.0184239 = phi i32 [ %i.nd, %vec.epilog.scalar.ph418 ], [ %.0184239.unr, %vec.epilog.scalar.ph418.prol.loopexit ]
  %.7238 = phi ptr [ %i.ne, %vec.epilog.scalar.ph418 ], [ %.7238.unr, %vec.epilog.scalar.ph418.prol.loopexit ] ; 5 uses
  %.7201237 = phi ptr [ %i.nf, %vec.epilog.scalar.ph418 ], [ %.7201237.unr, %vec.epilog.scalar.ph418.prol.loopexit ] ; 4 uses
  %i.mk = getelementptr inbounds i8, ptr %.7238, i64 -8
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !27
  %i.mm = load i64, ptr %.7238, align 8, !tbaa !27
  %i.mn = add nsw i64 %i.mm, %i.ml
  %i.mo = mul nsw i64 %i.mn, %i.fz
  %i.mp = add nsw i64 %i.mo, %i.cp
  %i.mq = ashr i64 %i.mp, %i.ga
  %i.mr = load i64, ptr %.7201237, align 8, !tbaa !27
end_hunk_1
begin_hunk_2_@_ZN4ojph5local21avx512_rev_horz_syn64EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb:bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !13 ; 2 uses
  %i.cf = load i8, ptr %i.ca, align 4, !tbaa !13  ; 6 uses
  %i.cg = sext i16 %i.ce to i64                   ; 11 uses
  %i.ch = insertelement <8 x i64> poison, i64 %i.cg, i64 0
  %i.ci = shufflevector <8 x i64> %i.ch, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.cj = load i64, ptr %.0185271, align 8, !tbaa !27
  %i.ck = getelementptr inbounds i8, ptr %.0185271, i64 -8
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !27
  %i.cl = add nsw i32 %.0190268, -1
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.0185271, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !27
  %i.cp = zext nneg i32 %.0190268 to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.0185271, i64 %i.cp
  store i64 %i.co, ptr %i.cq, align 8, !tbaa !27
  %i.cr = icmp eq i16 %i.cc, 1
  br i1 %i.cr, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not280 = icmp eq i32 %.0189269, 0             ; 2 uses
  br i1 %.0.in272, label %.preheader, label %.preheader217

.preheader217:                                    ; preds = %bb.d
  br i1 %.not280, label %.loopexit, label %.lr.ph262

.lr.ph262:                                        ; preds = %.preheader217
  %i.cs = zext i8 %i.cf to i32
  br label %bb.f

.preheader:                                       ; preds = %bb.d
  br i1 %.not280, label %.loopexit, label %.lr.ph266

.lr.ph266:                                        ; preds = %.preheader
  %i.ct = zext i8 %i.cf to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph266, %bb.e
  %.0192265 = phi ptr [ %.0185271, %.lr.ph266 ], [ %i.dd, %bb.e ] ; 3 uses
  %.0193264 = phi ptr [ %.0186270, %.lr.ph266 ], [ %i.de, %bb.e ] ; 3 uses
  %.0203263 = phi i32 [ %.0189269, %.lr.ph266 ], [ %i.dc, %bb.e ] ; 2 uses
  %i.cu = load <8 x i64>, ptr %.0192265, align 64, !tbaa !13
  %i.cv = getelementptr inbounds i8, ptr %.0192265, i64 -8
  %i.cw = load <8 x i64>, ptr %i.cv, align 8, !tbaa !13
  %i.cx = load <8 x i64>, ptr %.0193264, align 64, !tbaa !13
  %i.cy = add <8 x i64> %i.cu, %i.ci
  %i.cz = add <8 x i64> %i.cy, %i.cw
  %i.da = tail call noundef <8 x i64> @llvm.x86.avx512.psrai.q.512(<8 x i64> %i.cz, i32 range(i32 0, 256) %i.ct)
  %i.db = sub <8 x i64> %i.cx, %i.da
  store <8 x i64> %i.db, ptr %.0193264, align 64, !tbaa !13
  %i.dc = add nsw i32 %.0203263, -8
  %i.dd = getelementptr inbounds nuw i8, ptr %.0192265, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %.0193264, i64 64
  %i.df = icmp sgt i32 %.0203263, 8
  br i1 %i.df, label %bb.e, label %.loopexit, !llvm.loop !137

bb.f:                                             ; preds = %.lr.ph262, %bb.f
  %.1261 = phi ptr [ %.0185271, %.lr.ph262 ], [ %i.dp, %bb.f ] ; 3 uses
  %.1194260 = phi ptr [ %.0186270, %.lr.ph262 ], [ %i.dq, %bb.f ] ; 3 uses
  %.1204259 = phi i32 [ %.0189269, %.lr.ph262 ], [ %i.do, %bb.f ] ; 2 uses
  %i.dg = load <8 x i64>, ptr %.1261, align 64, !tbaa !13
  %i.dh = getelementptr inbounds nuw i8, ptr %.1261, i64 8
  %i.di = load <8 x i64>, ptr %i.dh, align 8, !tbaa !13
  %i.dj = load <8 x i64>, ptr %.1194260, align 64, !tbaa !13
  %i.dk = add <8 x i64> %i.dg, %i.ci
  %i.dl = add <8 x i64> %i.dk, %i.di
  %i.dm = tail call noundef <8 x i64> @llvm.x86.avx512.psrai.q.512(<8 x i64> %i.dl, i32 range(i32 0, 256) %i.cs)
  %i.dn = sub <8 x i64> %i.dj, %i.dm
  store <8 x i64> %i.dn, ptr %.1194260, align 64, !tbaa !13
  %i.do = add nsw i32 %.1204259, -8
  %i.dp = getelementptr inbounds nuw i8, ptr %.1261, i64 64
  %i.dq = getelementptr inbounds nuw i8, ptr %.1194260, i64 64
  %i.dr = icmp sgt i32 %.1204259, 8
  br i1 %i.dr, label %bb.f, label %.loopexit, !llvm.loop !138

bb.g:                                             ; preds = %bb.c
  %i.ds = icmp eq i16 %i.cc, -1                   ; 2 uses
  %i.dt = icmp eq i16 %i.ce, 1
  %or.cond = and i1 %i.ds, %i.dt
  %i.du = zext i8 %i.cf to i32                    ; 2 uses
  %i.dv = icmp eq i8 %i.cf, 1
  %or.cond4 = select i1 %or.cond, i1 %i.dv, i1 false
  %.not278 = icmp eq i32 %.0189269, 0             ; 6 uses
  br i1 %or.cond4, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %.0.in272, label %.preheader219, label %.preheader221

.preheader221:                                    ; preds = %bb.h
  br i1 %.not278, label %.loopexit, label %.lr.ph254

.preheader219:                                    ; preds = %bb.h
  br i1 %.not278, label %.loopexit, label %.lr.ph258

.lr.ph258:                                        ; preds = %.preheader219, %.lr.ph258
  %.2257 = phi ptr [ %i.ee, %.lr.ph258 ], [ %.0185271, %.preheader219 ] ; 3 uses
  %.2195256 = phi ptr [ %i.ef, %.lr.ph258 ], [ %.0186270, %.preheader219 ] ; 3 uses
  %.0205255 = phi i32 [ %i.ed, %.lr.ph258 ], [ %.0189269, %.preheader219 ] ; 2 uses
  %i.dw = load <8 x i64>, ptr %.2257, align 64, !tbaa !13
  %i.dx = getelementptr inbounds i8, ptr %.2257, i64 -8
  %i.dy = load <8 x i64>, ptr %i.dx, align 8, !tbaa !13
  %i.dz = load <8 x i64>, ptr %.2195256, align 64, !tbaa !13
  %i.ea = add <8 x i64> %i.dy, %i.dw
  %i.eb = ashr <8 x i64> %i.ea, splat (i64 1)
  %i.ec = add <8 x i64> %i.eb, %i.dz
  store <8 x i64> %i.ec, ptr %.2195256, align 64, !tbaa !13
  %i.ed = add nsw i32 %.0205255, -8
  %i.ee = getelementptr inbounds nuw i8, ptr %.2257, i64 64
  %i.ef = getelementptr inbounds nuw i8, ptr %.2195256, i64 64
  %i.eg = icmp sgt i32 %.0205255, 8
  br i1 %i.eg, label %.lr.ph258, label %.loopexit, !llvm.loop !139

.lr.ph254:                                        ; preds = %.preheader221, %.lr.ph254
  %.3253 = phi ptr [ %i.ep, %.lr.ph254 ], [ %.0185271, %.preheader221 ] ; 3 uses
  %.3196252 = phi ptr [ %i.eq, %.lr.ph254 ], [ %.0186270, %.preheader221 ] ; 3 uses
  %.1206251 = phi i32 [ %i.eo, %.lr.ph254 ], [ %.0189269, %.preheader221 ] ; 2 uses
  %i.eh = load <8 x i64>, ptr %.3253, align 64, !tbaa !13
  %i.ei = getelementptr inbounds nuw i8, ptr %.3253, i64 8
  %i.ej = load <8 x i64>, ptr %i.ei, align 8, !tbaa !13
  %i.ek = load <8 x i64>, ptr %.3196252, align 64, !tbaa !13
  %i.el = add <8 x i64> %i.ej, %i.eh
  %i.em = ashr <8 x i64> %i.el, splat (i64 1)
  %i.en = add <8 x i64> %i.em, %i.ek
  store <8 x i64> %i.en, ptr %.3196252, align 64, !tbaa !13
  %i.eo = add nsw i32 %.1206251, -8
  %i.ep = getelementptr inbounds nuw i8, ptr %.3253, i64 64
  %i.eq = getelementptr inbounds nuw i8, ptr %.3196252, i64 64
  %i.er = icmp sgt i32 %.1206251, 8
  br i1 %i.er, label %.lr.ph254, label %.loopexit, !llvm.loop !140

bb.i:                                             ; preds = %bb.g
  br i1 %i.ds, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %.0.in272, label %.preheader223, label %.preheader225

.preheader225:                                    ; preds = %bb.j
  br i1 %.not278, label %.loopexit, label %.lr.ph246

.preheader223:                                    ; preds = %bb.j
  br i1 %.not278, label %.loopexit, label %.lr.ph250

.lr.ph250:                                        ; preds = %.preheader223, %.lr.ph250
  %.4249 = phi ptr [ %i.fb, %.lr.ph250 ], [ %.0185271, %.preheader223 ] ; 3 uses
  %.4197248 = phi ptr [ %i.fc, %.lr.ph250 ], [ %.0186270, %.preheader223 ] ; 3 uses
  %.0201247 = phi i32 [ %i.fa, %.lr.ph250 ], [ %.0189269, %.preheader223 ] ; 2 uses
  %i.es = load <8 x i64>, ptr %.4249, align 64, !tbaa !13
  %i.et = getelementptr inbounds i8, ptr %.4249, i64 -8
  %i.eu = load <8 x i64>, ptr %i.et, align 8, !tbaa !13
  %i.ev = load <8 x i64>, ptr %.4197248, align 64, !tbaa !13
  %i.ew = add <8 x i64> %i.es, %i.eu
  %i.ex = sub <8 x i64> %i.ci, %i.ew
  %i.ey = tail call noundef <8 x i64> @llvm.x86.avx512.psrai.q.512(<8 x i64> %i.ex, i32 range(i32 0, 256) %i.du)
  %i.ez = sub <8 x i64> %i.ev, %i.ey
  store <8 x i64> %i.ez, ptr %.4197248, align 64, !tbaa !13
  %i.fa = add nsw i32 %.0201247, -8
  %i.fb = getelementptr inbounds nuw i8, ptr %.4249, i64 64
  %i.fc = getelementptr inbounds nuw i8, ptr %.4197248, i64 64
  %i.fd = icmp sgt i32 %.0201247, 8
  br i1 %i.fd, label %.lr.ph250, label %.loopexit, !llvm.loop !141

.lr.ph246:                                        ; preds = %.preheader225, %.lr.ph246
  %.5245 = phi ptr [ %i.fn, %.lr.ph246 ], [ %.0185271, %.preheader225 ] ; 3 uses
  %.5198244 = phi ptr [ %i.fo, %.lr.ph246 ], [ %.0186270, %.preheader225 ] ; 3 uses
  %.1202243 = phi i32 [ %i.fm, %.lr.ph246 ], [ %.0189269, %.preheader225 ] ; 2 uses
  %i.fe = load <8 x i64>, ptr %.5245, align 64, !tbaa !13
  %i.ff = getelementptr inbounds nuw i8, ptr %.5245, i64 8
  %i.fg = load <8 x i64>, ptr %i.ff, align 8, !tbaa !13
  %i.fh = load <8 x i64>, ptr %.5198244, align 64, !tbaa !13
  %i.fi = add <8 x i64> %i.fe, %i.fg
  %i.fj = sub <8 x i64> %i.ci, %i.fi
  %i.fk = tail call noundef <8 x i64> @llvm.x86.avx512.psrai.q.512(<8 x i64> %i.fj, i32 range(i32 0, 256) %i.du)
  %i.fl = sub <8 x i64> %i.fh, %i.fk
  store <8 x i64> %i.fl, ptr %.5198244, align 64, !tbaa !13
  %i.fm = add nsw i32 %.1202243, -8
  %i.fn = getelementptr inbounds nuw i8, ptr %.5245, i64 64
  %i.fo = getelementptr inbounds nuw i8, ptr %.5198244, i64 64
  %i.fp = icmp sgt i32 %.1202243, 8
  br i1 %i.fp, label %.lr.ph246, label %.loopexit, !llvm.loop !142

bb.k:                                             ; preds = %bb.i
  br i1 %.0.in272, label %.preheader227, label %.preheader229

.preheader229:                                    ; preds = %bb.k
  br i1 %.not278, label %.loopexit, label %iter.check410

iter.check410:                                    ; preds = %.preheader229
  %i.fq = sext i16 %i.cc to i64                   ; 5 uses
  %i.fr = zext nneg i8 %i.cf to i64               ; 5 uses
  %i.fs = zext nneg i32 %.0189269 to i64          ; 5 uses
  %min.iters.check372 = icmp samesign ult i32 %.0189269, 8
  br i1 %min.iters.check372, label %vec.epilog.scalar.ph412.preheader, label %vector.memcheck373

vector.memcheck373:                               ; preds = %iter.check410
  %i.ft = add nsw i32 %.0189269, -1
  %i.fu = zext i32 %i.ft to i64
  %i.fv = shl nuw nsw i64 %i.fu, 3                ; 2 uses
  %i.fw = add nuw nsw i64 %i.fv, 8                ; 2 uses
  %i.fx = getelementptr i8, ptr %.0186270, i64 %i.fw ; 2 uses
  %i.fy = getelementptr i8, ptr %.0185271, i64 %i.fw
  %bound0374 = icmp ult ptr %.0186270, %i.fy
  %bound1375 = icmp ult ptr %.0185271, %i.fx
  %found.conflict376 = and i1 %bound0374, %bound1375
  %6 = getelementptr i8, ptr %.0185271, i64 8
  %7 = getelementptr i8, ptr %.0185271, i64 %i.fv
  %8 = getelementptr i8, ptr %7, i64 16
  %bound0377 = icmp ult ptr %.0186270, %8
  %bound1378 = icmp ult ptr %6, %i.fx
  %found.conflict379 = and i1 %bound0377, %bound1378
  %conflict.rdx380 = or i1 %found.conflict376, %found.conflict379
  br i1 %conflict.rdx380, label %vec.epilog.scalar.ph412.preheader, label %vector.main.loop.iter.check381

vector.main.loop.iter.check381:                   ; preds = %vector.memcheck373
  %min.iters.check382 = icmp samesign ult i32 %.0189269, 32
  br i1 %min.iters.check382, label %vec.epilog.ph414, label %vector.ph383

vector.ph383:                                     ; preds = %vector.main.loop.iter.check381
  %i.fz = and i64 %i.fs, 24
  %n.vec384 = and i64 %i.fs, 2147483616           ; 5 uses
  %i.ga = trunc nuw nsw i64 %n.vec384 to i32
  %i.gb = sub nsw i32 %.0189269, %i.ga
  %i.gc = shl nuw nsw i64 %n.vec384, 3            ; 2 uses
  %i.gd = getelementptr i8, ptr %.0185271, i64 %i.gc
  %i.ge = getelementptr i8, ptr %.0186270, i64 %i.gc
  %broadcast.splatinsert385 = insertelement <8 x i64> poison, i64 %i.fq, i64 0
  %broadcast.splat386 = shufflevector <8 x i64> %broadcast.splatinsert385, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert387 = insertelement <8 x i64> poison, i64 %i.fr, i64 0
  %broadcast.splat388 = shufflevector <8 x i64> %broadcast.splatinsert387, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert389 = insertelement <8 x i64> poison, i64 %i.cg, i64 0
  %broadcast.splat390 = shufflevector <8 x i64> %broadcast.splatinsert389, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body391

vector.body391:                                   ; preds = %vector.ph383, %vector.body391
  %index392 = phi i64 [ 0, %vector.ph383 ], [ %index.next407, %vector.body391 ] ; 2 uses
  %i.gf = shl i64 %index392, 3                    ; 2 uses
  %next.gep393 = getelementptr i8, ptr %.0185271, i64 %i.gf ; 8 uses
  %next.gep394 = getelementptr i8, ptr %.0186270, i64 %i.gf ; 5 uses
  %i.gg = getelementptr i8, ptr %next.gep393, i64 64
  %i.gh = getelementptr i8, ptr %next.gep393, i64 128
  %i.gi = getelementptr i8, ptr %next.gep393, i64 192
  %wide.load395 = load <8 x i64>, ptr %next.gep393, align 8, !tbaa !27, !alias.scope !158
  %wide.load396 = load <8 x i64>, ptr %i.gg, align 8, !tbaa !27, !alias.scope !158
  %wide.load397 = load <8 x i64>, ptr %i.gh, align 8, !tbaa !27, !alias.scope !158
  %wide.load398 = load <8 x i64>, ptr %i.gi, align 8, !tbaa !27, !alias.scope !158
  %i.gj = getelementptr inbounds nuw i8, ptr %next.gep393, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %next.gep393, i64 72
  %i.gl = getelementptr inbounds nuw i8, ptr %next.gep393, i64 136
  %i.gm = getelementptr inbounds nuw i8, ptr %next.gep393, i64 200
  %wide.load399 = load <8 x i64>, ptr %i.gj, align 8, !tbaa !27, !alias.scope !159
  %wide.load400 = load <8 x i64>, ptr %i.gk, align 8, !tbaa !27, !alias.scope !159
  %wide.load401 = load <8 x i64>, ptr %i.gl, align 8, !tbaa !27, !alias.scope !159
  %wide.load402 = load <8 x i64>, ptr %i.gm, align 8, !tbaa !27, !alias.scope !159
  %i.gn = add nsw <8 x i64> %wide.load399, %wide.load395
  %i.go = add nsw <8 x i64> %wide.load400, %wide.load396
  %i.gp = add nsw <8 x i64> %wide.load401, %wide.load397
  %i.gq = add nsw <8 x i64> %wide.load402, %wide.load398
  %i.gr = mul nsw <8 x i64> %i.gn, %broadcast.splat386
  %i.gs = mul nsw <8 x i64> %i.go, %broadcast.splat386
  %i.gt = mul nsw <8 x i64> %i.gp, %broadcast.splat386
  %i.gu = mul nsw <8 x i64> %i.gq, %broadcast.splat386
  %i.gv = add nsw <8 x i64> %i.gr, %broadcast.splat390
  %i.gw = add nsw <8 x i64> %i.gs, %broadcast.splat390
  %i.gx = add nsw <8 x i64> %i.gt, %broadcast.splat390
  %i.gy = add nsw <8 x i64> %i.gu, %broadcast.splat390
  %i.gz = ashr <8 x i64> %i.gv, %broadcast.splat388
  %i.ha = ashr <8 x i64> %i.gw, %broadcast.splat388
  %i.hb = ashr <8 x i64> %i.gx, %broadcast.splat388
  %i.hc = ashr <8 x i64> %i.gy, %broadcast.splat388
  %i.hd = getelementptr i8, ptr %next.gep394, i64 64 ; 2 uses
  %i.he = getelementptr i8, ptr %next.gep394, i64 128 ; 2 uses
  %i.hf = getelementptr i8, ptr %next.gep394, i64 192 ; 2 uses
  %wide.load403 = load <8 x i64>, ptr %next.gep394, align 8, !tbaa !27, !alias.scope !160, !noalias !161
  %wide.load404 = load <8 x i64>, ptr %i.hd, align 8, !tbaa !27, !alias.scope !160, !noalias !161
  %wide.load405 = load <8 x i64>, ptr %i.he, align 8, !tbaa !27, !alias.scope !160, !noalias !161
  %wide.load406 = load <8 x i64>, ptr %i.hf, align 8, !tbaa !27, !alias.scope !160, !noalias !161
  %i.hg = sub nsw <8 x i64> %wide.load403, %i.gz
  %i.hh = sub nsw <8 x i64> %wide.load404, %i.ha
  %i.hi = sub nsw <8 x i64> %wide.load405, %i.hb
  %i.hj = sub nsw <8 x i64> %wide.load406, %i.hc
  store <8 x i64> %i.hg, ptr %next.gep394, align 8, !tbaa !27, !alias.scope !160, !noalias !161
  store <8 x i64> %i.hh, ptr %i.hd, align 8, !tbaa !27, !alias.scope !160, !noalias !161
  store <8 x i64> %i.hi, ptr %i.he, align 8, !tbaa !27, !alias.scope !160, !noalias !161
  store <8 x i64> %i.hj, ptr %i.hf, align 8, !tbaa !27, !alias.scope !160, !noalias !161
  %index.next407 = add nuw i64 %index392, 32      ; 2 uses
  %i.hk = icmp eq i64 %index.next407, %n.vec384
  br i1 %i.hk, label %middle.block408, label %vector.body391, !llvm.loop !147

middle.block408:                                  ; preds = %vector.body391
  %cmp.n409 = icmp eq i64 %n.vec384, %i.fs
  br i1 %cmp.n409, label %.loopexit, label %vec.epilog.iter.check411

vec.epilog.iter.check411:                         ; preds = %middle.block408
  %min.epilog.iters.check413 = icmp eq i64 %i.fz, 0
  br i1 %min.epilog.iters.check413, label %vec.epilog.scalar.ph412.preheader, label %vec.epilog.ph414, !prof !33

vec.epilog.ph414:                                 ; preds = %vector.main.loop.iter.check381, %vec.epilog.iter.check411
  %vec.epilog.resume.val415 = phi i64 [ %n.vec384, %vec.epilog.iter.check411 ], [ 0, %vector.main.loop.iter.check381 ]
  %n.vec416 = and i64 %i.fs, 2147483640           ; 4 uses
  %i.hl = trunc nuw nsw i64 %n.vec416 to i32
  %i.hm = sub nsw i32 %.0189269, %i.hl
  %i.hn = shl nuw nsw i64 %n.vec416, 3            ; 2 uses
  %i.ho = getelementptr i8, ptr %.0185271, i64 %i.hn
  %i.hp = getelementptr i8, ptr %.0186270, i64 %i.hn
  %broadcast.splatinsert417 = insertelement <8 x i64> poison, i64 %i.fq, i64 0
  %broadcast.splat418 = shufflevector <8 x i64> %broadcast.splatinsert417, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert419 = insertelement <8 x i64> poison, i64 %i.fr, i64 0
  %broadcast.splat420 = shufflevector <8 x i64> %broadcast.splatinsert419, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert421 = insertelement <8 x i64> poison, i64 %i.cg, i64 0
  %broadcast.splat422 = shufflevector <8 x i64> %broadcast.splatinsert421, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body423

vec.epilog.vector.body423:                        ; preds = %vec.epilog.vector.body423, %vec.epilog.ph414
  %index424 = phi i64 [ %vec.epilog.resume.val415, %vec.epilog.ph414 ], [ %index.next430, %vec.epilog.vector.body423 ] ; 2 uses
  %i.hq = shl i64 %index424, 3                    ; 2 uses
  %next.gep425 = getelementptr i8, ptr %.0185271, i64 %i.hq ; 2 uses
  %next.gep426 = getelementptr i8, ptr %.0186270, i64 %i.hq ; 2 uses
  %wide.load427 = load <8 x i64>, ptr %next.gep425, align 8, !tbaa !27, !alias.scope !158
  %i.hr = getelementptr inbounds nuw i8, ptr %next.gep425, i64 8
  %wide.load428 = load <8 x i64>, ptr %i.hr, align 8, !tbaa !27, !alias.scope !159
  %i.hs = add nsw <8 x i64> %wide.load428, %wide.load427
  %i.ht = mul nsw <8 x i64> %i.hs, %broadcast.splat418
  %i.hu = add nsw <8 x i64> %i.ht, %broadcast.splat422
  %i.hv = ashr <8 x i64> %i.hu, %broadcast.splat420
  %wide.load429 = load <8 x i64>, ptr %next.gep426, align 8, !tbaa !27, !alias.scope !160, !noalias !161
  %i.hw = sub nsw <8 x i64> %wide.load429, %i.hv
  store <8 x i64> %i.hw, ptr %next.gep426, align 8, !tbaa !27, !alias.scope !160, !noalias !161
  %index.next430 = add nuw i64 %index424, 8       ; 2 uses
  %i.hx = icmp eq i64 %index.next430, %n.vec416
  br i1 %i.hx, label %vec.epilog.middle.block431, label %vec.epilog.vector.body423, !llvm.loop !148

vec.epilog.middle.block431:                       ; preds = %vec.epilog.vector.body423
  %cmp.n432 = icmp eq i64 %n.vec416, %i.fs
  br i1 %cmp.n432, label %.loopexit, label %vec.epilog.scalar.ph412.preheader

vec.epilog.scalar.ph412.preheader:                ; preds = %iter.check410, %vector.memcheck373, %vec.epilog.iter.check411, %vec.epilog.middle.block431
  %.0187237.ph = phi i32 [ %.0189269, %iter.check410 ], [ %.0189269, %vector.memcheck373 ], [ %i.gb, %vec.epilog.iter.check411 ], [ %i.hm, %vec.epilog.middle.block431 ] ; 4 uses
  %.7236.ph = phi ptr [ %.0185271, %iter.check410 ], [ %.0185271, %vector.memcheck373 ], [ %i.gd, %vec.epilog.iter.check411 ], [ %i.ho, %vec.epilog.middle.block431 ] ; 3 uses
  %.7200235.ph = phi ptr [ %.0186270, %iter.check410 ], [ %.0186270, %vector.memcheck373 ], [ %i.ge, %vec.epilog.iter.check411 ], [ %i.hp, %vec.epilog.middle.block431 ] ; 4 uses
  %xtraiter = and i32 %.0187237.ph, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph412.prol.loopexit, label %vec.epilog.scalar.ph412.prol

vec.epilog.scalar.ph412.prol:                     ; preds = %vec.epilog.scalar.ph412.preheader
  %i.hy = load i64, ptr %.7236.ph, align 8, !tbaa !27
  %i.hz = getelementptr inbounds nuw i8, ptr %.7236.ph, i64 8 ; 2 uses
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !27
  %i.ib = add nsw i64 %i.ia, %i.hy
  %i.ic = mul nsw i64 %i.ib, %i.fq
  %i.id = add nsw i64 %i.ic, %i.cg
  %i.ie = ashr i64 %i.id, %i.fr
  %i.if = load i64, ptr %.7200235.ph, align 8, !tbaa !27
  %i.ig = sub nsw i64 %i.if, %i.ie
  store i64 %i.ig, ptr %.7200235.ph, align 8, !tbaa !27
  %i.ih = add nsw i32 %.0187237.ph, -1
  %i.ii = getelementptr inbounds nuw i8, ptr %.7200235.ph, i64 8
  br label %vec.epilog.scalar.ph412.prol.loopexit

vec.epilog.scalar.ph412.prol.loopexit:            ; preds = %vec.epilog.scalar.ph412.prol, %vec.epilog.scalar.ph412.preheader
  %.0187237.unr = phi i32 [ %.0187237.ph, %vec.epilog.scalar.ph412.preheader ], [ %i.ih, %vec.epilog.scalar.ph412.prol ]
  %.7236.unr = phi ptr [ %.7236.ph, %vec.epilog.scalar.ph412.preheader ], [ %i.hz, %vec.epilog.scalar.ph412.prol ]
  %.7200235.unr = phi ptr [ %.7200235.ph, %vec.epilog.scalar.ph412.preheader ], [ %i.ii, %vec.epilog.scalar.ph412.prol ]
  %i.ij = icmp eq i32 %.0187237.ph, 1
  br i1 %i.ij, label %.loopexit, label %vec.epilog.scalar.ph412

.preheader227:                                    ; preds = %bb.k
  br i1 %.not278, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader227
  %i.ik = sext i16 %i.cc to i64                   ; 5 uses
  %i.il = zext nneg i8 %i.cf to i64               ; 5 uses
  %i.im = zext nneg i32 %.0189269 to i64          ; 5 uses
  %min.iters.check = icmp samesign ult i32 %.0189269, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.in = add nsw i32 %.0189269, -1
  %i.io = zext i32 %i.in to i64
  %i.ip = shl nuw nsw i64 %i.io, 3                ; 2 uses
  %i.iq = add nuw nsw i64 %i.ip, 8                ; 2 uses
  %i.ir = getelementptr i8, ptr %.0186270, i64 %i.iq ; 2 uses
  %i.is = getelementptr i8, ptr %.0185271, i64 -8
  %i.it = getelementptr i8, ptr %.0185271, i64 %i.ip
  %bound0 = icmp ult ptr %.0186270, %i.it
  %bound0.a = icmp ult ptr %i.is, %i.ir
  %found.conflict = and i1 %bound0, %bound0.a
  %9 = getelementptr i8, ptr %.0185271, i64 %i.iq
  %bound0322 = icmp ult ptr %.0186270, %9
  %bound1323 = icmp ult ptr %.0185271, %i.ir
  %found.conflict324 = and i1 %bound0322, %bound1323
  %conflict.rdx = or i1 %found.conflict, %found.conflict324
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check325 = icmp samesign ult i32 %.0189269, 32
  br i1 %min.iters.check325, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.iu = and i64 %i.im, 24
  %n.vec = and i64 %i.im, 2147483616              ; 5 uses
  %i.iv = trunc nuw nsw i64 %n.vec to i32
  %i.iw = sub nsw i32 %.0189269, %i.iv
  %i.ix = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.iy = getelementptr i8, ptr %.0185271, i64 %i.ix
  %i.iz = getelementptr i8, ptr %.0186270, i64 %i.ix
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.ik, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert326 = insertelement <8 x i64> poison, i64 %i.il, i64 0
  %broadcast.splat327 = shufflevector <8 x i64> %broadcast.splatinsert326, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert328 = insertelement <8 x i64> poison, i64 %i.cg, i64 0
  %broadcast.splat329 = shufflevector <8 x i64> %broadcast.splatinsert328, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ja = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0185271, i64 %i.ja ; 8 uses
  %next.gep330 = getelementptr i8, ptr %.0186270, i64 %i.ja ; 5 uses
  %i.jb = getelementptr inbounds i8, ptr %next.gep, i64 -8
  %i.jc = getelementptr inbounds nuw i8, ptr %next.gep, i64 56
  %i.jd = getelementptr inbounds nuw i8, ptr %next.gep, i64 120
  %i.je = getelementptr inbounds nuw i8, ptr %next.gep, i64 184
  %wide.load = load <8 x i64>, ptr %i.jb, align 8, !tbaa !27, !alias.scope !162
  %wide.load331 = load <8 x i64>, ptr %i.jc, align 8, !tbaa !27, !alias.scope !162
  %wide.load332 = load <8 x i64>, ptr %i.jd, align 8, !tbaa !27, !alias.scope !162
  %wide.load333 = load <8 x i64>, ptr %i.je, align 8, !tbaa !27, !alias.scope !162
  %i.jf = getelementptr i8, ptr %next.gep, i64 64
  %i.jg = getelementptr i8, ptr %next.gep, i64 128
  %i.jh = getelementptr i8, ptr %next.gep, i64 192
  %wide.load334 = load <8 x i64>, ptr %next.gep, align 8, !tbaa !27, !alias.scope !163
  %wide.load335 = load <8 x i64>, ptr %i.jf, align 8, !tbaa !27, !alias.scope !163
  %wide.load336 = load <8 x i64>, ptr %i.jg, align 8, !tbaa !27, !alias.scope !163
  %wide.load337 = load <8 x i64>, ptr %i.jh, align 8, !tbaa !27, !alias.scope !163
  %i.ji = add nsw <8 x i64> %wide.load334, %wide.load
  %i.jj = add nsw <8 x i64> %wide.load335, %wide.load331
  %i.jk = add nsw <8 x i64> %wide.load336, %wide.load332
  %i.jl = add nsw <8 x i64> %wide.load337, %wide.load333
  %i.jm = mul nsw <8 x i64> %i.ji, %broadcast.splat
  %i.jn = mul nsw <8 x i64> %i.jj, %broadcast.splat
  %i.jo = mul nsw <8 x i64> %i.jk, %broadcast.splat
  %i.jp = mul nsw <8 x i64> %i.jl, %broadcast.splat
  %i.jq = add nsw <8 x i64> %i.jm, %broadcast.splat329
  %i.jr = add nsw <8 x i64> %i.jn, %broadcast.splat329
  %i.js = add nsw <8 x i64> %i.jo, %broadcast.splat329
  %i.jt = add nsw <8 x i64> %i.jp, %broadcast.splat329
  %i.ju = ashr <8 x i64> %i.jq, %broadcast.splat327
  %i.jv = ashr <8 x i64> %i.jr, %broadcast.splat327
  %i.jw = ashr <8 x i64> %i.js, %broadcast.splat327
  %i.jx = ashr <8 x i64> %i.jt, %broadcast.splat327
  %i.jy = getelementptr i8, ptr %next.gep330, i64 64 ; 2 uses
  %i.jz = getelementptr i8, ptr %next.gep330, i64 128 ; 2 uses
  %i.ka = getelementptr i8, ptr %next.gep330, i64 192 ; 2 uses
  %wide.load338 = load <8 x i64>, ptr %next.gep330, align 8, !tbaa !27, !alias.scope !164, !noalias !165
  %wide.load339 = load <8 x i64>, ptr %i.jy, align 8, !tbaa !27, !alias.scope !164, !noalias !165
  %wide.load340 = load <8 x i64>, ptr %i.jz, align 8, !tbaa !27, !alias.scope !164, !noalias !165
  %wide.load341 = load <8 x i64>, ptr %i.ka, align 8, !tbaa !27, !alias.scope !164, !noalias !165
  %i.kb = sub nsw <8 x i64> %wide.load338, %i.ju
  %i.kc = sub nsw <8 x i64> %wide.load339, %i.jv
  %i.kd = sub nsw <8 x i64> %wide.load340, %i.jw
  %i.ke = sub nsw <8 x i64> %wide.load341, %i.jx
  store <8 x i64> %i.kb, ptr %next.gep330, align 8, !tbaa !27, !alias.scope !164, !noalias !165
  store <8 x i64> %i.kc, ptr %i.jy, align 8, !tbaa !27, !alias.scope !164, !noalias !165
  store <8 x i64> %i.kd, ptr %i.jz, align 8, !tbaa !27, !alias.scope !164, !noalias !165
  store <8 x i64> %i.ke, ptr %i.ka, align 8, !tbaa !27, !alias.scope !164, !noalias !165
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.kf = icmp eq i64 %index.next, %n.vec
  br i1 %i.kf, label %middle.block, label %vector.body, !llvm.loop !153

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.im
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.iu, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec342 = and i64 %i.im, 2147483640           ; 4 uses
  %i.kg = trunc nuw nsw i64 %n.vec342 to i32
  %i.kh = sub nsw i32 %.0189269, %i.kg
  %i.ki = shl nuw nsw i64 %n.vec342, 3            ; 2 uses
  %i.kj = getelementptr i8, ptr %.0185271, i64 %i.ki
  %i.kk = getelementptr i8, ptr %.0186270, i64 %i.ki
  %broadcast.splatinsert343 = insertelement <8 x i64> poison, i64 %i.ik, i64 0
  %broadcast.splat344 = shufflevector <8 x i64> %broadcast.splatinsert343, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert345 = insertelement <8 x i64> poison, i64 %i.il, i64 0
  %broadcast.splat346 = shufflevector <8 x i64> %broadcast.splatinsert345, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert347 = insertelement <8 x i64> poison, i64 %i.cg, i64 0
  %broadcast.splat348 = shufflevector <8 x i64> %broadcast.splatinsert347, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index349 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next355, %vec.epilog.vector.body ] ; 2 uses
  %i.kl = shl i64 %index349, 3                    ; 2 uses
  %next.gep350 = getelementptr i8, ptr %.0185271, i64 %i.kl ; 2 uses
  %next.gep351 = getelementptr i8, ptr %.0186270, i64 %i.kl ; 2 uses
  %i.km = getelementptr inbounds i8, ptr %next.gep350, i64 -8
  %wide.load352 = load <8 x i64>, ptr %i.km, align 8, !tbaa !27, !alias.scope !162
  %wide.load353 = load <8 x i64>, ptr %next.gep350, align 8, !tbaa !27, !alias.scope !163
  %i.kn = add nsw <8 x i64> %wide.load353, %wide.load352
  %i.ko = mul nsw <8 x i64> %i.kn, %broadcast.splat344
  %i.kp = add nsw <8 x i64> %i.ko, %broadcast.splat348
  %i.kq = ashr <8 x i64> %i.kp, %broadcast.splat346
  %wide.load354 = load <8 x i64>, ptr %next.gep351, align 8, !tbaa !27, !alias.scope !164, !noalias !165
  %i.kr = sub nsw <8 x i64> %wide.load354, %i.kq
  store <8 x i64> %i.kr, ptr %next.gep351, align 8, !tbaa !27, !alias.scope !164, !noalias !165
  %index.next355 = add nuw i64 %index349, 8       ; 2 uses
  %i.ks = icmp eq i64 %index.next355, %n.vec342
  br i1 %i.ks, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !154

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n356 = icmp eq i64 %n.vec342, %i.im
  br i1 %cmp.n356, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0188241.ph = phi i32 [ %.0189269, %iter.check ], [ %.0189269, %vector.memcheck ], [ %i.iw, %vec.epilog.iter.check ], [ %i.kh, %vec.epilog.middle.block ] ; 4 uses
  %.6240.ph = phi ptr [ %.0185271, %iter.check ], [ %.0185271, %vector.memcheck ], [ %i.iy, %vec.epilog.iter.check ], [ %i.kj, %vec.epilog.middle.block ] ; 4 uses
  %.6199239.ph = phi ptr [ %.0186270, %iter.check ], [ %.0186270, %vector.memcheck ], [ %i.iz, %vec.epilog.iter.check ], [ %i.kk, %vec.epilog.middle.block ] ; 4 uses
  %xtraiter446 = and i32 %.0188241.ph, 1
  %lcmp.mod447.not = icmp eq i32 %xtraiter446, 0
  br i1 %lcmp.mod447.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.kt = getelementptr inbounds i8, ptr %.6240.ph, i64 -8
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !27
  %i.kv = load i64, ptr %.6240.ph, align 8, !tbaa !27
  %i.kw = add nsw i64 %i.kv, %i.ku
  %i.kx = mul nsw i64 %i.kw, %i.ik
  %i.ky = add nsw i64 %i.kx, %i.cg
  %i.kz = ashr i64 %i.ky, %i.il
  %i.la = load i64, ptr %.6199239.ph, align 8, !tbaa !27
  %i.lb = sub nsw i64 %i.la, %i.kz
  store i64 %i.lb, ptr %.6199239.ph, align 8, !tbaa !27
  %i.lc = add nsw i32 %.0188241.ph, -1
  %i.ld = getelementptr inbounds nuw i8, ptr %.6240.ph, i64 8
  %i.le = getelementptr inbounds nuw i8, ptr %.6199239.ph, i64 8
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.0188241.unr = phi i32 [ %.0188241.ph, %vec.epilog.scalar.ph.preheader ], [ %i.lc, %vec.epilog.scalar.ph.prol ]
  %.6240.unr = phi ptr [ %.6240.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ld, %vec.epilog.scalar.ph.prol ]
  %.6199239.unr = phi ptr [ %.6199239.ph, %vec.epilog.scalar.ph.preheader ], [ %i.le, %vec.epilog.scalar.ph.prol ]
  %i.lf = icmp eq i32 %.0188241.ph, 1
  br i1 %i.lf, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0188241 = phi i32 [ %i.lz, %vec.epilog.scalar.ph ], [ %.0188241.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.6240 = phi ptr [ %i.ma, %vec.epilog.scalar.ph ], [ %.6240.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.6199239 = phi ptr [ %i.mb, %vec.epilog.scalar.ph ], [ %.6199239.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.lg = getelementptr inbounds i8, ptr %.6240, i64 -8
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !27
  %i.li = load i64, ptr %.6240, align 8, !tbaa !27
  %i.lj = add nsw i64 %i.li, %i.lh
  %i.lk = mul nsw i64 %i.lj, %i.ik
  %i.ll = add nsw i64 %i.lk, %i.cg
  %i.lm = ashr i64 %i.ll, %i.il
  %i.ln = load i64, ptr %.6199239, align 8, !tbaa !27
  %i.lo = sub nsw i64 %i.ln, %i.lm
  store i64 %i.lo, ptr %.6199239, align 8, !tbaa !27
  %i.lp = getelementptr inbounds nuw i8, ptr %.6240, i64 8
  %i.lq = getelementptr inbounds nuw i8, ptr %.6199239, i64 8 ; 2 uses
  %i.lr = load i64, ptr %.6240, align 8, !tbaa !27
  %i.ls = load i64, ptr %i.lp, align 8, !tbaa !27
  %i.lt = add nsw i64 %i.ls, %i.lr
  %i.lu = mul nsw i64 %i.lt, %i.ik
  %i.lv = add nsw i64 %i.lu, %i.cg
  %i.lw = ashr i64 %i.lv, %i.il
  %i.lx = load i64, ptr %i.lq, align 8, !tbaa !27
  %i.ly = sub nsw i64 %i.lx, %i.lw
  store i64 %i.ly, ptr %i.lq, align 8, !tbaa !27
  %i.lz = add nsw i32 %.0188241, -2               ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.6240, i64 16
  %i.mb = getelementptr inbounds nuw i8, ptr %.6199239, i64 16
  %.not211.1 = icmp eq i32 %i.lz, 0
  br i1 %.not211.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !155

vec.epilog.scalar.ph412:                          ; preds = %vec.epilog.scalar.ph412.prol.loopexit, %vec.epilog.scalar.ph412
  %.0187237 = phi i32 [ %i.mv, %vec.epilog.scalar.ph412 ], [ %.0187237.unr, %vec.epilog.scalar.ph412.prol.loopexit ]
  %.7236 = phi ptr [ %i.mn, %vec.epilog.scalar.ph412 ], [ %.7236.unr, %vec.epilog.scalar.ph412.prol.loopexit ] ; 3 uses
  %.7200235 = phi ptr [ %i.mw, %vec.epilog.scalar.ph412 ], [ %.7200235.unr, %vec.epilog.scalar.ph412.prol.loopexit ] ; 4 uses
  %i.mc = load i64, ptr %.7236, align 8, !tbaa !27
  %i.md = getelementptr inbounds nuw i8, ptr %.7236, i64 8 ; 2 uses
  %i.me = load i64, ptr %i.md, align 8, !tbaa !27
  %i.mf = add nsw i64 %i.me, %i.mc
  %i.mg = mul nsw i64 %i.mf, %i.fq
  %i.mh = add nsw i64 %i.mg, %i.cg
end_hunk_2
