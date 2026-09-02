Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/compress_fragment?download=true
inline.NumInlined: 19
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0_@BrotliCompressFragmentFastImpl9:bb.a
  %i.ir = getelementptr inbounds nuw i8, ptr %6, i64 %i.iq ; 2 uses
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !18, !alias.scope !266, !noalias !265
  %i.it = zext i8 %i.is to i64
  %i.iu = and i64 %i.in, 7
  %i.iv = shl nsw i64 %i.ip, %i.iu
  %i.iw = or i64 %i.iv, %i.it
  store i64 %i.iw, ptr %i.ir, align 1, !noalias !265
  %i.ix = add i64 %i.in, %i.hu
  store i64 %i.ix, ptr %5, align 8, !tbaa !17, !alias.scope !265, !noalias !266
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hy ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !26
  %i.ja = add i32 %i.iz, 1
  store i32 %i.ja, ptr %i.iy, align 4, !tbaa !26
  br label %EmitInsertLen.exit

bb.l:                                             ; preds = %bb.j
  %i.jb = icmp samesign ult i64 %i.gs, 2114
  br i1 %i.jb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.jc = add nsw i64 %i.gs, -66                  ; 2 uses
  %i.jd = trunc nuw nsw i64 %i.jc to i32
  %i.je = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.jd, i1 true) ; 2 uses
  %i.jf = xor i32 %i.je, 31
  %i.jg = sub nuw nsw i32 81, %i.je
  %i.jh = zext nneg i32 %i.jg to i64              ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !18
  %i.jk = zext i8 %i.jj to i64
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.jh
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !30
  %i.jn = zext i16 %i.jm to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.jo = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !267, !noalias !268 ; 3 uses
  %i.jp = lshr i64 %i.jo, 3
  %i.jq = getelementptr inbounds nuw i8, ptr %6, i64 %i.jp ; 2 uses
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !18, !alias.scope !268, !noalias !267
  %i.js = zext i8 %i.jr to i64
  %i.jt = and i64 %i.jo, 7
  %i.ju = shl nuw nsw i64 %i.jn, %i.jt
  %i.jv = or i64 %i.ju, %i.js
  store i64 %i.jv, ptr %i.jq, align 1, !noalias !267
  %i.jw = add i64 %i.jo, %i.jk                    ; 4 uses
  store i64 %i.jw, ptr %5, align 8, !tbaa !17, !alias.scope !267, !noalias !268
  %i.jx = zext nneg i32 %i.jf to i64              ; 2 uses
  %.neg.i25 = shl nsw i64 -1, %i.jx
  %i.jy = add nsw i64 %.neg.i25, %i.jc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  %i.jz = lshr i64 %i.jw, 3
  %i.ka = getelementptr inbounds nuw i8, ptr %6, i64 %i.jz ; 2 uses
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !18, !alias.scope !270, !noalias !269
  %i.kc = zext i8 %i.kb to i64
  %i.kd = and i64 %i.jw, 7
  %i.ke = shl nsw i64 %i.jy, %i.kd
  %i.kf = or i64 %i.ke, %i.kc
  store i64 %i.kf, ptr %i.ka, align 1, !noalias !269
  %i.kg = add i64 %i.jw, %i.jx
  store i64 %i.kg, ptr %5, align 8, !tbaa !17, !alias.scope !269, !noalias !270
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jh ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !26
  %i.kj = add i32 %i.ki, 1
  store i32 %i.kj, ptr %i.kh, align 4, !tbaa !26
  br label %EmitInsertLen.exit

bb.n:                                             ; preds = %bb.l
  %i.kk = load i8, ptr %i.ch, align 1, !tbaa !18
  %i.kl = zext i8 %i.kk to i64
  %i.km = load i16, ptr %i.ci, align 2, !tbaa !30
  %i.kn = zext i16 %i.km to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %i.ko = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !271, !noalias !272 ; 3 uses
  %i.kp = lshr i64 %i.ko, 3
  %i.kq = getelementptr inbounds nuw i8, ptr %6, i64 %i.kp ; 2 uses
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !18, !alias.scope !272, !noalias !271
  %i.ks = zext i8 %i.kr to i64
  %i.kt = and i64 %i.ko, 7
  %i.ku = shl nuw nsw i64 %i.kn, %i.kt
  %i.kv = or i64 %i.ku, %i.ks
  store i64 %i.kv, ptr %i.kq, align 1, !noalias !271
  %i.kw = add i64 %i.ko, %i.kl                    ; 4 uses
  store i64 %i.kw, ptr %5, align 8, !tbaa !17, !alias.scope !271, !noalias !272
  %i.kx = add nsw i64 %i.gs, -2114
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.ky = lshr i64 %i.kw, 3
  %i.kz = getelementptr inbounds nuw i8, ptr %6, i64 %i.ky ; 2 uses
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !18, !alias.scope !274, !noalias !273
  %i.lb = zext i8 %i.la to i64
  %i.lc = and i64 %i.kw, 7
  %i.ld = shl nuw nsw i64 %i.kx, %i.lc
  %i.le = or i64 %i.ld, %i.lb
  store i64 %i.le, ptr %i.kz, align 1, !noalias !273
  %i.lf = add i64 %i.kw, 12
  store i64 %i.lf, ptr %5, align 8, !tbaa !17, !alias.scope !273, !noalias !274
  %i.lg = load i32, ptr %i.cj, align 4, !tbaa !26
  %i.lh = add i32 %i.lg, 1
  store i32 %i.lh, ptr %i.cj, align 4, !tbaa !26
  br label %EmitInsertLen.exit

bb.o:                                             ; preds = %FindMatchLengthWithLimit.exit24
  %i.li = sub i64 %i.gr, %i.cr
  %i.lj = mul i64 %i.li, 50
  %i.lk = icmp ugt i64 %i.lj, %i.gs
  %narrow.not = select i1 %i.lk, i1 true, i1 %i.cs
  br i1 %narrow.not, label %bb.p, label %.thread76.thread118

.thread76.thread118:                              ; preds = %bb.o
  %i.ll = add i64 %.0356.i.ph, -3
  tail call fastcc void @EmitUncompressedMetaBlock(ptr noundef %.0360.i.ph, ptr noundef nonnull %.us-phi219, i64 noundef %i.ll, ptr noundef nonnull %5, ptr noundef %6)
  %i.lm = ptrtoint ptr %.0.i to i64
  %.neg.i = add i64 %.0318.i, %i.lm
  %i.ln = sub i64 %.neg.i, %.us-phi215
  br label %EmitLiterals.exit33

bb.p:                                             ; preds = %bb.o
  %i.lo = icmp ult i64 %i.gs, 22594
  br i1 %i.lo, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.lp = load i8, ptr %i.ce, align 2, !tbaa !18
  %i.lq = zext i8 %i.lp to i64
  %i.lr = load i16, ptr %i.cf, align 4, !tbaa !30
  %i.ls = zext i16 %i.lr to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %i.lt = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !275, !noalias !276 ; 3 uses
  %i.lu = lshr i64 %i.lt, 3
  %i.lv = getelementptr inbounds nuw i8, ptr %6, i64 %i.lu ; 2 uses
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !18, !alias.scope !276, !noalias !275
  %i.lx = zext i8 %i.lw to i64
  %i.ly = and i64 %i.lt, 7
  %i.lz = shl nuw nsw i64 %i.ls, %i.ly
  %i.ma = or i64 %i.lz, %i.lx
  store i64 %i.ma, ptr %i.lv, align 1, !noalias !275
  %i.mb = add i64 %i.lt, %i.lq                    ; 4 uses
  store i64 %i.mb, ptr %5, align 8, !tbaa !17, !alias.scope !275, !noalias !276
  %i.mc = add nsw i64 %i.gs, -6210
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.md = lshr i64 %i.mb, 3
  %i.me = getelementptr inbounds nuw i8, ptr %6, i64 %i.md ; 2 uses
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !18, !alias.scope !278, !noalias !277
  %i.mg = zext i8 %i.mf to i64
  %i.mh = and i64 %i.mb, 7
  %i.mi = shl nuw nsw i64 %i.mc, %i.mh
  %i.mj = or i64 %i.mi, %i.mg
  store i64 %i.mj, ptr %i.me, align 1, !noalias !277
  %i.mk = add i64 %i.mb, 14
  store i64 %i.mk, ptr %5, align 8, !tbaa !17, !alias.scope !277, !noalias !278
  %i.ml = load i32, ptr %i.cg, align 8, !tbaa !26
  %i.mm = add i32 %i.ml, 1
  store i32 %i.mm, ptr %i.cg, align 8, !tbaa !26
  br label %EmitInsertLen.exit

bb.r:                                             ; preds = %bb.p
  %i.mn = load i8, ptr %i.cb, align 1, !tbaa !18
  %i.mo = zext i8 %i.mn to i64
  %i.mp = load i16, ptr %i.cc, align 2, !tbaa !30
  %i.mq = zext i16 %i.mp to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %i.mr = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !279, !noalias !280 ; 3 uses
  %i.ms = lshr i64 %i.mr, 3
  %i.mt = getelementptr inbounds nuw i8, ptr %6, i64 %i.ms ; 2 uses
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !18, !alias.scope !280, !noalias !279
  %i.mv = zext i8 %i.mu to i64
  %i.mw = and i64 %i.mr, 7
  %i.mx = shl nuw nsw i64 %i.mq, %i.mw
  %i.my = or i64 %i.mx, %i.mv
  store i64 %i.my, ptr %i.mt, align 1, !noalias !279
  %i.mz = add i64 %i.mr, %i.mo                    ; 4 uses
  store i64 %i.mz, ptr %5, align 8, !tbaa !17, !alias.scope !279, !noalias !280
  %i.na = add i64 %i.gs, -22594
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  %i.nb = lshr i64 %i.mz, 3
  %i.nc = getelementptr inbounds nuw i8, ptr %6, i64 %i.nb ; 2 uses
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !18, !alias.scope !282, !noalias !281
  %i.ne = zext i8 %i.nd to i64
  %i.nf = and i64 %i.mz, 7
  %i.ng = shl i64 %i.na, %i.nf
  %i.nh = or i64 %i.ng, %i.ne
  store i64 %i.nh, ptr %i.nc, align 1, !noalias !281
  %i.ni = add i64 %i.mz, 24
  store i64 %i.ni, ptr %5, align 8, !tbaa !17, !alias.scope !281, !noalias !282
  %i.nj = load i32, ptr %i.cd, align 4, !tbaa !26
  %i.nk = add i32 %i.nj, 1
  store i32 %i.nk, ptr %i.cd, align 4, !tbaa !26
  br label %EmitInsertLen.exit

EmitInsertLen.exit:                               ; preds = %bb.r, %bb.q, %bb.n, %bb.m, %bb.k, %bb.i
  %.not277 = icmp eq i64 %.us-phi215, %i.gr
  br i1 %.not277, label %EmitLiterals.exit, label %.lr.ph239

.lr.ph239:                                        ; preds = %EmitInsertLen.exit
  %.promoted = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !283, !noalias !284 ; 2 uses
  %.neg = add i64 %i.gr, 1
  %xtraiter = and i64 %i.gs, 1
  %i.nl = icmp eq i64 %.us-phi215, %.neg
  br i1 %i.nl, label %.epil.preheader, label %.lr.ph239.new

.lr.ph239.new:                                    ; preds = %.lr.ph239
  %unroll_iter = and i64 %i.gs, -2
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph239.new
  %i.nm = phi i64 [ %.promoted, %.lr.ph239.new ], [ %i.ov, %bb.s ] ; 3 uses
  %.0.i31238 = phi i64 [ 0, %.lr.ph239.new ], [ %i.ow, %bb.s ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph239.new ], [ %niter.next.1, %bb.s ]
  %i.nn = getelementptr inbounds nuw i8, ptr %.1361.i, i64 %.0.i31238
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !18
  %i.np = zext i8 %i.no to i64                    ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 %i.np
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !18
  %i.ns = zext i8 %i.nr to i64
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.np
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !30
  %i.nv = zext i16 %i.nu to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  %i.nw = lshr i64 %i.nm, 3
  %i.nx = getelementptr inbounds nuw i8, ptr %6, i64 %i.nw ; 2 uses
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !18, !alias.scope !284, !noalias !283
  %i.nz = zext i8 %i.ny to i64
  %i.oa = and i64 %i.nm, 7
  %i.ob = shl nuw nsw i64 %i.nv, %i.oa
  %i.oc = or i64 %i.ob, %i.nz
  store i64 %i.oc, ptr %i.nx, align 1, !noalias !283
  %i.od = add i64 %i.nm, %i.ns                    ; 4 uses
  store i64 %i.od, ptr %5, align 8, !tbaa !17, !alias.scope !283, !noalias !284
  %i.oe = getelementptr inbounds nuw i8, ptr %.1361.i, i64 %.0.i31238
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 1
  %i.og = load i8, ptr %i.of, align 1, !tbaa !18
  %i.oh = zext i8 %i.og to i64                    ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 %i.oh
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !18
  %i.ok = zext i8 %i.oj to i64
  %i.ol = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.oh
  %i.om = load i16, ptr %i.ol, align 2, !tbaa !30
  %i.on = zext i16 %i.om to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  %i.oo = lshr i64 %i.od, 3
  %i.op = getelementptr inbounds nuw i8, ptr %6, i64 %i.oo ; 2 uses
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !18, !alias.scope !286, !noalias !285
  %i.or = zext i8 %i.oq to i64
  %i.os = and i64 %i.od, 7
  %i.ot = shl nuw nsw i64 %i.on, %i.os
  %i.ou = or i64 %i.ot, %i.or
  store i64 %i.ou, ptr %i.op, align 1, !noalias !285
  %i.ov = add i64 %i.od, %i.ok                    ; 3 uses
  store i64 %i.ov, ptr %5, align 8, !tbaa !17, !alias.scope !285, !noalias !286
  %i.ow = add nuw i64 %.0.i31238, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %EmitLiterals.exit.loopexit.unr-lcssa, label %bb.s, !llvm.loop !5

EmitLiterals.exit.loopexit.unr-lcssa:             ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %EmitLiterals.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %EmitLiterals.exit.loopexit.unr-lcssa, %.lr.ph239
  %.epil.init = phi i64 [ %.promoted, %.lr.ph239 ], [ %i.ov, %EmitLiterals.exit.loopexit.unr-lcssa ] ; 3 uses
  %.0.i31238.epil.init = phi i64 [ 0, %.lr.ph239 ], [ %i.ow, %EmitLiterals.exit.loopexit.unr-lcssa ]
  %lcmp.mod628 = trunc i64 %i.gs to i1
  tail call void @llvm.assume(i1 %lcmp.mod628)
  %i.ox = getelementptr inbounds nuw i8, ptr %.1361.i, i64 %.0.i31238.epil.init
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !18
  %i.oz = zext i8 %i.oy to i64                    ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 %i.oz
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !18
  %i.pc = zext i8 %i.pb to i64
  %i.pd = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.oz
  %i.pe = load i16, ptr %i.pd, align 2, !tbaa !30
  %i.pf = zext i16 %i.pe to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  %i.pg = lshr i64 %.epil.init, 3
  %i.ph = getelementptr inbounds nuw i8, ptr %6, i64 %i.pg ; 2 uses
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !18, !alias.scope !284, !noalias !283
  %i.pj = zext i8 %i.pi to i64
  %i.pk = and i64 %.epil.init, 7
  %i.pl = shl nuw nsw i64 %i.pf, %i.pk
  %i.pm = or i64 %i.pl, %i.pj
  store i64 %i.pm, ptr %i.ph, align 1, !noalias !283
  %i.pn = add i64 %.epil.init, %i.pc
  store i64 %i.pn, ptr %5, align 8, !tbaa !17, !alias.scope !283, !noalias !284
  br label %EmitLiterals.exit

EmitLiterals.exit:                                ; preds = %.epil.preheader, %EmitLiterals.exit.loopexit.unr-lcssa, %EmitInsertLen.exit
  %i.po = icmp eq i32 %.0344.i.fr, %i.gq
  br i1 %i.po, label %bb.t, label %bb.u

bb.t:                                             ; preds = %EmitLiterals.exit
  %i.pp = load i8, ptr %i.ck, align 8, !tbaa !18
  %i.pq = zext i8 %i.pp to i64
  %i.pr = load i16, ptr %i.cl, align 8, !tbaa !30
  %i.ps = zext i16 %i.pr to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.pt = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !287, !noalias !288 ; 3 uses
  %i.pu = lshr i64 %i.pt, 3
  %i.pv = getelementptr inbounds nuw i8, ptr %6, i64 %i.pu ; 2 uses
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !18, !alias.scope !288, !noalias !287
  %i.px = zext i8 %i.pw to i64
  %i.py = and i64 %i.pt, 7
  %i.pz = shl nuw nsw i64 %i.ps, %i.py
  %i.qa = or i64 %i.pz, %i.px
  store i64 %i.qa, ptr %i.pv, align 1, !noalias !287
  %i.qb = add i64 %i.pt, %i.pq
  %i.qc = load i32, ptr %i.cm, align 8, !tbaa !26
  %i.qd = add i32 %i.qc, 1
  store i32 %i.qd, ptr %i.cm, align 8, !tbaa !26
  br label %bb.v

bb.u:                                             ; preds = %EmitLiterals.exit
  %sext.i = shl i64 %.us-phi218, 32
  %i.qe = ashr exact i64 %sext.i, 32
  %i.qf = add nsw i64 %i.qe, 3                    ; 3 uses
  %i.qg = trunc i64 %i.qf to i32
  %i.qh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.qg, i1 true) ; 2 uses
  %i.qi = sub nsw i32 30, %i.qh
  %i.qj = zext i32 %i.qi to i64                   ; 3 uses
  %i.qk = lshr i64 %i.qf, %i.qj
  %i.ql = and i64 %i.qk, 1                        ; 2 uses
  %i.qm = or disjoint i64 %i.ql, 2
  %i.qn = shl i64 %i.qm, %i.qj
  %i.qo = shl nuw nsw i32 %i.qh, 1
  %i.qp = sub nsw i32 58, %i.qo
  %i.qq = zext i32 %i.qp to i64
  %i.qr = or disjoint i64 %i.ql, %i.qq
  %i.qs = add nuw nsw i64 %i.qr, 80               ; 3 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.qs
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !18
  %i.qv = zext i8 %i.qu to i64
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.qs
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !30
  %i.qy = zext i16 %i.qx to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %i.qz = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !289, !noalias !290 ; 3 uses
  %i.ra = lshr i64 %i.qz, 3
  %i.rb = getelementptr inbounds nuw i8, ptr %6, i64 %i.ra ; 2 uses
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !18, !alias.scope !290, !noalias !289
  %i.rd = zext i8 %i.rc to i64
  %i.re = and i64 %i.qz, 7
  %i.rf = shl nuw nsw i64 %i.qy, %i.re
  %i.rg = or i64 %i.rf, %i.rd
  store i64 %i.rg, ptr %i.rb, align 1, !noalias !289
  %i.rh = add i64 %i.qz, %i.qv                    ; 4 uses
  store i64 %i.rh, ptr %5, align 8, !tbaa !17, !alias.scope !289, !noalias !290
  %i.ri = sub i64 %i.qf, %i.qn
  %i.rj = lshr i64 %i.rh, 3
  %i.rk = getelementptr inbounds nuw i8, ptr %6, i64 %i.rj ; 2 uses
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !18, !alias.scope !291, !noalias !292
  %i.rm = zext i8 %i.rl to i64
  %i.rn = and i64 %i.rh, 7
  %i.ro = shl i64 %i.ri, %i.rn
  %i.rp = or i64 %i.ro, %i.rm
  store i64 %i.rp, ptr %i.rk, align 1, !noalias !292
  %i.rq = add i64 %i.rh, %i.qj
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.qs ; 2 uses
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !26
  %i.rt = add i32 %i.rs, 1
  store i32 %i.rt, ptr %i.rr, align 4, !tbaa !26
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ru = phi i64 [ %i.qb, %bb.t ], [ %i.rq, %bb.u ] ; 16 uses
  %.1345.i = phi i32 [ %.0344.i.fr, %bb.t ], [ %i.gq, %bb.u ] ; 3 uses
  store i64 %i.ru, ptr %5, align 8, !tbaa !17, !noalias !19
  %i.rv = icmp ult i64 %i.gp, 12
  br i1 %i.rv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.rw = add nsw i64 %.2.i20, 1                  ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rw
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !18
  %i.rz = zext i8 %i.ry to i64
  %i.sa = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.rw
  %i.sb = load i16, ptr %i.sa, align 2, !tbaa !30
  %i.sc = zext i16 %i.sb to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  %i.sd = lshr i64 %i.ru, 3
  %i.se = getelementptr inbounds nuw i8, ptr %6, i64 %i.sd ; 2 uses
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !18, !alias.scope !294, !noalias !293
  %i.sg = zext i8 %i.sf to i64
  %i.sh = and i64 %i.ru, 7
  %i.si = shl nuw nsw i64 %i.sc, %i.sh
  %i.sj = or i64 %i.si, %i.sg
  store i64 %i.sj, ptr %i.se, align 1, !noalias !293
  %i.sk = add i64 %i.ru, %i.rz
  store i64 %i.sk, ptr %5, align 8, !tbaa !17, !alias.scope !293, !noalias !294
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.rw ; 2 uses
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !26
  %i.sn = add i32 %i.sm, 1
  store i32 %i.sn, ptr %i.sl, align 4, !tbaa !26
  br label %EmitCopyLenLastDistance.exit

bb.x:                                             ; preds = %bb.v
  %i.so = icmp ult i64 %i.gp, 72
  br i1 %i.so, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.sp = add nsw i64 %.2.i20, -3                 ; 3 uses
  %i.sq = trunc nuw nsw i64 %i.sp to i32
  %i.sr = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.sq, i1 true)
  %i.ss = sub nuw nsw i32 30, %i.sr               ; 2 uses
  %i.st = zext nneg i32 %i.ss to i64              ; 3 uses
  %i.su = lshr i64 %i.sp, %i.st                   ; 2 uses
  %i.sv = shl nuw nsw i32 %i.ss, 1
  %narrow278 = add nuw nsw i32 %i.sv, 4
  %i.sw = zext nneg i32 %narrow278 to i64
  %i.sx = add nuw nsw i64 %i.su, %i.sw            ; 3 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.sx
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !18
  %i.ta = zext i8 %i.sz to i64
  %i.tb = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.sx
  %i.tc = load i16, ptr %i.tb, align 2, !tbaa !30
  %i.td = zext i16 %i.tc to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  %i.te = lshr i64 %i.ru, 3
  %i.tf = getelementptr inbounds nuw i8, ptr %6, i64 %i.te ; 2 uses
  %i.tg = load i8, ptr %i.tf, align 1, !tbaa !18, !alias.scope !296, !noalias !295
  %i.th = zext i8 %i.tg to i64
  %i.ti = and i64 %i.ru, 7
  %i.tj = shl nuw nsw i64 %i.td, %i.ti
  %i.tk = or i64 %i.tj, %i.th
  store i64 %i.tk, ptr %i.tf, align 1, !noalias !295
  %i.tl = add i64 %i.ru, %i.ta                    ; 4 uses
  store i64 %i.tl, ptr %5, align 8, !tbaa !17, !alias.scope !295, !noalias !296
  %i.tm = shl nuw nsw i64 %i.su, %i.st
  %i.tn = sub nsw i64 %i.sp, %i.tm
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %i.to = lshr i64 %i.tl, 3
  %i.tp = getelementptr inbounds nuw i8, ptr %6, i64 %i.to ; 2 uses
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !18, !alias.scope !298, !noalias !297
  %i.tr = zext i8 %i.tq to i64
  %i.ts = and i64 %i.tl, 7
  %i.tt = shl nsw i64 %i.tn, %i.ts
  %i.tu = or i64 %i.tt, %i.tr
  store i64 %i.tu, ptr %i.tp, align 1, !noalias !297
  %i.tv = add i64 %i.tl, %i.st
  store i64 %i.tv, ptr %5, align 8, !tbaa !17, !alias.scope !297, !noalias !298
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.sx ; 2 uses
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !26
  %i.ty = add i32 %i.tx, 1
  store i32 %i.ty, ptr %i.tw, align 4, !tbaa !26
  br label %EmitCopyLenLastDistance.exit

bb.z:                                             ; preds = %bb.x
  %i.tz = icmp ult i64 %i.gp, 136
  br i1 %i.tz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ua = add nsw i64 %.2.i20, -3                 ; 2 uses
  %i.ub = lshr i64 %i.ua, 5
end_hunk_0
begin_hunk_1_@BrotliCompressFragmentFastImpl9:bb.a
  store i8 %i.ako, ptr %i.akf, align 1, !tbaa !18
  %i.akp = sub nuw i64 %.030.i, %i.ajz            ; 2 uses
  %i.akq = lshr i32 %.02429.i, %i.akj
  %i.akr = add i64 %i.ajz, %.02528.i
  %.not.i56 = icmp eq i64 %i.akp, 0
  br i1 %.not.i56, label %UpdateBits.exit.loopexit, label %bb.ax, !llvm.loop !1

bb.ay:                                            ; preds = %ShouldMergeBlock.exit, %bb.aq, %.thread103
  %.0.i.lcssa632633 = ptrtoaddr ptr %.0.i to i64  ; 2 uses
  %.7.i.lcssa634635 = ptrtoaddr ptr %.7.i to i64  ; 2 uses
  %i.aks = icmp ult ptr %.7.i, %i.ct
  br i1 %i.aks, label %bb.az, label %EmitLiterals.exit33

bb.az:                                            ; preds = %bb.ay
  %i.akt = ptrtoint ptr %i.ct to i64
  %i.aku = ptrtoint ptr %.7.i to i64              ; 2 uses
  %i.akv = sub i64 %i.akt, %i.aku                 ; 18 uses
  %i.akw = icmp ult i64 %i.akv, 6210
  br i1 %i.akw, label %bb.ba, label %bb.bi, !prof !23

bb.ba:                                            ; preds = %bb.az
  %i.akx = icmp samesign ult i64 %i.akv, 6
  br i1 %i.akx, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.aky = or disjoint i64 %i.akv, 40             ; 3 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aky
  %i.ala = load i8, ptr %i.akz, align 1, !tbaa !18
  %i.alb = zext i8 %i.ala to i64
  %i.alc = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.aky
  %i.ald = load i16, ptr %i.alc, align 2, !tbaa !30
  %i.ale = zext i16 %i.ald to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.alf = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !335, !noalias !336 ; 3 uses
  %i.alg = lshr i64 %i.alf, 3
  %i.alh = getelementptr inbounds nuw i8, ptr %6, i64 %i.alg ; 2 uses
  %i.ali = load i8, ptr %i.alh, align 1, !tbaa !18, !alias.scope !336, !noalias !335
  %i.alj = zext i8 %i.ali to i64
  %i.alk = and i64 %i.alf, 7
  %i.all = shl nuw nsw i64 %i.ale, %i.alk
  %i.alm = or i64 %i.all, %i.alj
  store i64 %i.alm, ptr %i.alh, align 1, !noalias !335
  %i.aln = add i64 %i.alf, %i.alb
  store i64 %i.aln, ptr %5, align 8, !tbaa !17, !alias.scope !335, !noalias !336
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aky ; 2 uses
  %i.alp = load i32, ptr %i.alo, align 4, !tbaa !26
  %i.alq = add i32 %i.alp, 1
  store i32 %i.alq, ptr %i.alo, align 4, !tbaa !26
  br label %EmitInsertLen.exit27

bb.bc:                                            ; preds = %bb.ba
  %i.alr = icmp samesign ult i64 %i.akv, 130
  br i1 %i.alr, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.als = add nsw i64 %i.akv, -2                 ; 3 uses
  %i.alt = trunc nuw nsw i64 %i.als to i32
  %i.alu = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.alt, i1 true)
  %i.alv = sub nuw nsw i32 30, %i.alu             ; 2 uses
  %i.alw = zext nneg i32 %i.alv to i64            ; 3 uses
  %i.alx = lshr i64 %i.als, %i.alw                ; 2 uses
  %i.aly = shl nuw nsw i32 %i.alv, 1
  %narrow280 = add nuw nsw i32 %i.aly, 42
  %i.alz = zext nneg i32 %narrow280 to i64
  %i.ama = add nuw nsw i64 %i.alx, %i.alz         ; 3 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ama
  %i.amc = load i8, ptr %i.amb, align 1, !tbaa !18
  %i.amd = zext i8 %i.amc to i64
  %i.ame = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ama
  %i.amf = load i16, ptr %i.ame, align 2, !tbaa !30
  %i.amg = zext i16 %i.amf to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.amh = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !337, !noalias !338 ; 3 uses
  %i.ami = lshr i64 %i.amh, 3
  %i.amj = getelementptr inbounds nuw i8, ptr %6, i64 %i.ami ; 2 uses
  %i.amk = load i8, ptr %i.amj, align 1, !tbaa !18, !alias.scope !338, !noalias !337
  %i.aml = zext i8 %i.amk to i64
  %i.amm = and i64 %i.amh, 7
  %i.amn = shl nuw nsw i64 %i.amg, %i.amm
  %i.amo = or i64 %i.amn, %i.aml
  store i64 %i.amo, ptr %i.amj, align 1, !noalias !337
  %i.amp = add i64 %i.amh, %i.amd                 ; 4 uses
  store i64 %i.amp, ptr %5, align 8, !tbaa !17, !alias.scope !337, !noalias !338
  %i.amq = shl nuw nsw i64 %i.alx, %i.alw
  %i.amr = sub nsw i64 %i.als, %i.amq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  %i.ams = lshr i64 %i.amp, 3
  %i.amt = getelementptr inbounds nuw i8, ptr %6, i64 %i.ams ; 2 uses
  %i.amu = load i8, ptr %i.amt, align 1, !tbaa !18, !alias.scope !340, !noalias !339
  %i.amv = zext i8 %i.amu to i64
  %i.amw = and i64 %i.amp, 7
  %i.amx = shl nsw i64 %i.amr, %i.amw
  %i.amy = or i64 %i.amx, %i.amv
  store i64 %i.amy, ptr %i.amt, align 1, !noalias !339
  %i.amz = add i64 %i.amp, %i.alw
  store i64 %i.amz, ptr %5, align 8, !tbaa !17, !alias.scope !339, !noalias !340
  %i.ana = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ama ; 2 uses
  %i.anb = load i32, ptr %i.ana, align 4, !tbaa !26
  %i.anc = add i32 %i.anb, 1
  store i32 %i.anc, ptr %i.ana, align 4, !tbaa !26
  br label %EmitInsertLen.exit27

bb.be:                                            ; preds = %bb.bc
  %i.and = icmp samesign ult i64 %i.akv, 2114
  br i1 %i.and, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ane = add nsw i64 %i.akv, -66                ; 2 uses
  %i.anf = trunc nuw nsw i64 %i.ane to i32
  %i.ang = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.anf, i1 true) ; 2 uses
  %i.anh = xor i32 %i.ang, 31
  %i.ani = sub nuw nsw i32 81, %i.ang
  %i.anj = zext nneg i32 %i.ani to i64            ; 3 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.anj
  %i.anl = load i8, ptr %i.ank, align 1, !tbaa !18
  %i.anm = zext i8 %i.anl to i64
  %i.ann = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.anj
  %i.ano = load i16, ptr %i.ann, align 2, !tbaa !30
  %i.anp = zext i16 %i.ano to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.anq = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !341, !noalias !342 ; 3 uses
  %i.anr = lshr i64 %i.anq, 3
  %i.ans = getelementptr inbounds nuw i8, ptr %6, i64 %i.anr ; 2 uses
  %i.ant = load i8, ptr %i.ans, align 1, !tbaa !18, !alias.scope !342, !noalias !341
  %i.anu = zext i8 %i.ant to i64
  %i.anv = and i64 %i.anq, 7
  %i.anw = shl nuw nsw i64 %i.anp, %i.anv
  %i.anx = or i64 %i.anw, %i.anu
  store i64 %i.anx, ptr %i.ans, align 1, !noalias !341
  %i.any = add i64 %i.anq, %i.anm                 ; 4 uses
  store i64 %i.any, ptr %5, align 8, !tbaa !17, !alias.scope !341, !noalias !342
  %i.anz = zext nneg i32 %i.anh to i64            ; 2 uses
  %.neg.i26 = shl nsw i64 -1, %i.anz
  %i.aoa = add nsw i64 %.neg.i26, %i.ane
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  %i.aob = lshr i64 %i.any, 3
  %i.aoc = getelementptr inbounds nuw i8, ptr %6, i64 %i.aob ; 2 uses
  %i.aod = load i8, ptr %i.aoc, align 1, !tbaa !18, !alias.scope !344, !noalias !343
  %i.aoe = zext i8 %i.aod to i64
  %i.aof = and i64 %i.any, 7
  %i.aog = shl nsw i64 %i.aoa, %i.aof
  %i.aoh = or i64 %i.aog, %i.aoe
  store i64 %i.aoh, ptr %i.aoc, align 1, !noalias !343
  %i.aoi = add i64 %i.any, %i.anz
  store i64 %i.aoi, ptr %5, align 8, !tbaa !17, !alias.scope !343, !noalias !344
  %i.aoj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.anj ; 2 uses
  %i.aok = load i32, ptr %i.aoj, align 4, !tbaa !26
  %i.aol = add i32 %i.aok, 1
  store i32 %i.aol, ptr %i.aoj, align 4, !tbaa !26
  br label %EmitInsertLen.exit27

bb.bg:                                            ; preds = %bb.be
  %i.aom = load i8, ptr %i.ch, align 1, !tbaa !18
  %i.aon = zext i8 %i.aom to i64
  %i.aoo = load i16, ptr %i.ci, align 2, !tbaa !30
  %i.aop = zext i16 %i.aoo to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  %i.aoq = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !345, !noalias !346 ; 3 uses
  %i.aor = lshr i64 %i.aoq, 3
  %i.aos = getelementptr inbounds nuw i8, ptr %6, i64 %i.aor ; 2 uses
  %i.aot = load i8, ptr %i.aos, align 1, !tbaa !18, !alias.scope !346, !noalias !345
  %i.aou = zext i8 %i.aot to i64
  %i.aov = and i64 %i.aoq, 7
  %i.aow = shl nuw nsw i64 %i.aop, %i.aov
  %i.aox = or i64 %i.aow, %i.aou
  store i64 %i.aox, ptr %i.aos, align 1, !noalias !345
  %i.aoy = add i64 %i.aoq, %i.aon                 ; 4 uses
  store i64 %i.aoy, ptr %5, align 8, !tbaa !17, !alias.scope !345, !noalias !346
  %i.aoz = add nsw i64 %i.akv, -2114
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.apa = lshr i64 %i.aoy, 3
  %i.apb = getelementptr inbounds nuw i8, ptr %6, i64 %i.apa ; 2 uses
  %i.apc = load i8, ptr %i.apb, align 1, !tbaa !18, !alias.scope !348, !noalias !347
  %i.apd = zext i8 %i.apc to i64
  %i.ape = and i64 %i.aoy, 7
  %i.apf = shl nuw nsw i64 %i.aoz, %i.ape
  %i.apg = or i64 %i.apf, %i.apd
  store i64 %i.apg, ptr %i.apb, align 1, !noalias !347
  %i.aph = add i64 %i.aoy, 12
  store i64 %i.aph, ptr %5, align 8, !tbaa !17, !alias.scope !347, !noalias !348
  %i.api = load i32, ptr %i.cj, align 4, !tbaa !26
  %i.apj = add i32 %i.api, 1
  store i32 %i.apj, ptr %i.cj, align 4, !tbaa !26
  br label %EmitInsertLen.exit27

EmitInsertLen.exit27:                             ; preds = %bb.bb, %bb.bd, %bb.bf, %bb.bg
  %.not281 = icmp eq ptr %i.ct, %.7.i
  br i1 %.not281, label %EmitLiterals.exit33, label %.lr.ph272

.lr.ph272:                                        ; preds = %EmitInsertLen.exit27
  %.promoted273 = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !349, !noalias !350 ; 2 uses
  %i.apk = add nsw i64 %.0358.i, -1
  %i.apl = add i64 %i.apk, %.0.i.lcssa632633
  %xtraiter645 = and i64 %i.akv, 1
  %i.apm = icmp eq i64 %i.apl, %.7.i.lcssa634635
  br i1 %i.apm, label %.epil.preheader643, label %.lr.ph272.new

.lr.ph272.new:                                    ; preds = %.lr.ph272
  %unroll_iter650 = and i64 %i.akv, 8190
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.lr.ph272.new
  %i.apn = phi i64 [ %.promoted273, %.lr.ph272.new ], [ %i.aqw, %bb.bh ] ; 3 uses
  %.0.i32271 = phi i64 [ 0, %.lr.ph272.new ], [ %i.aqx, %bb.bh ] ; 3 uses
  %niter651 = phi i64 [ 0, %.lr.ph272.new ], [ %niter651.next.1, %bb.bh ]
  %i.apo = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32271
  %i.app = load i8, ptr %i.apo, align 1, !tbaa !18
  %i.apq = zext i8 %i.app to i64                  ; 2 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %0, i64 %i.apq
  %i.aps = load i8, ptr %i.apr, align 1, !tbaa !18
  %i.apt = zext i8 %i.aps to i64
  %i.apu = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.apq
  %i.apv = load i16, ptr %i.apu, align 2, !tbaa !30
  %i.apw = zext i16 %i.apv to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  %i.apx = lshr i64 %i.apn, 3
  %i.apy = getelementptr inbounds nuw i8, ptr %6, i64 %i.apx ; 2 uses
  %i.apz = load i8, ptr %i.apy, align 1, !tbaa !18, !alias.scope !350, !noalias !349
  %i.aqa = zext i8 %i.apz to i64
  %i.aqb = and i64 %i.apn, 7
  %i.aqc = shl nuw nsw i64 %i.apw, %i.aqb
  %i.aqd = or i64 %i.aqc, %i.aqa
  store i64 %i.aqd, ptr %i.apy, align 1, !noalias !349
  %i.aqe = add i64 %i.apn, %i.apt                 ; 4 uses
  store i64 %i.aqe, ptr %5, align 8, !tbaa !17, !alias.scope !349, !noalias !350
  %i.aqf = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32271
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqf, i64 1
  %i.aqh = load i8, ptr %i.aqg, align 1, !tbaa !18
  %i.aqi = zext i8 %i.aqh to i64                  ; 2 uses
  %i.aqj = getelementptr inbounds nuw i8, ptr %0, i64 %i.aqi
  %i.aqk = load i8, ptr %i.aqj, align 1, !tbaa !18
  %i.aql = zext i8 %i.aqk to i64
  %i.aqm = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.aqi
  %i.aqn = load i16, ptr %i.aqm, align 2, !tbaa !30
  %i.aqo = zext i16 %i.aqn to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.aqp = lshr i64 %i.aqe, 3
  %i.aqq = getelementptr inbounds nuw i8, ptr %6, i64 %i.aqp ; 2 uses
  %i.aqr = load i8, ptr %i.aqq, align 1, !tbaa !18, !alias.scope !352, !noalias !351
  %i.aqs = zext i8 %i.aqr to i64
  %i.aqt = and i64 %i.aqe, 7
  %i.aqu = shl nuw nsw i64 %i.aqo, %i.aqt
  %i.aqv = or i64 %i.aqu, %i.aqs
  store i64 %i.aqv, ptr %i.aqq, align 1, !noalias !351
  %i.aqw = add i64 %i.aqe, %i.aql                 ; 3 uses
  store i64 %i.aqw, ptr %5, align 8, !tbaa !17, !alias.scope !351, !noalias !352
  %i.aqx = add nuw i64 %.0.i32271, 2              ; 2 uses
  %niter651.next.1 = add i64 %niter651, 2         ; 2 uses
  %niter651.ncmp.1 = icmp eq i64 %niter651.next.1, %unroll_iter650
  br i1 %niter651.ncmp.1, label %EmitLiterals.exit33.loopexit.unr-lcssa, label %bb.bh, !llvm.loop !5

bb.bi:                                            ; preds = %bb.az
  %i.aqy = sub i64 %i.aku, %i.cr
  %i.aqz = mul i64 %i.aqy, 50
  %i.ara = icmp ugt i64 %i.aqz, %i.akv
  %narrow.not129 = select i1 %i.ara, i1 true, i1 %i.cs
  br i1 %narrow.not129, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.arb = add i64 %.0356.i.ph, -3
  tail call fastcc void @EmitUncompressedMetaBlock(ptr noundef %.0360.i.ph, ptr noundef nonnull %i.ct, i64 noundef %i.arb, ptr noundef nonnull %5, ptr noundef %6)
  br label %EmitLiterals.exit33

bb.bk:                                            ; preds = %bb.bi
  %i.arc = icmp ult i64 %i.akv, 22594
  br i1 %i.arc, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ard = load i8, ptr %i.ce, align 2, !tbaa !18
  %i.are = zext i8 %i.ard to i64
  %i.arf = load i16, ptr %i.cf, align 4, !tbaa !30
  %i.arg = zext i16 %i.arf to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  %i.arh = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !353, !noalias !354 ; 3 uses
  %i.ari = lshr i64 %i.arh, 3
  %i.arj = getelementptr inbounds nuw i8, ptr %6, i64 %i.ari ; 2 uses
  %i.ark = load i8, ptr %i.arj, align 1, !tbaa !18, !alias.scope !354, !noalias !353
  %i.arl = zext i8 %i.ark to i64
  %i.arm = and i64 %i.arh, 7
  %i.arn = shl nuw nsw i64 %i.arg, %i.arm
  %i.aro = or i64 %i.arn, %i.arl
  store i64 %i.aro, ptr %i.arj, align 1, !noalias !353
  %i.arp = add i64 %i.arh, %i.are                 ; 4 uses
  store i64 %i.arp, ptr %5, align 8, !tbaa !17, !alias.scope !353, !noalias !354
  %i.arq = add nsw i64 %i.akv, -6210
  %i.arr = lshr i64 %i.arp, 3
  %i.ars = getelementptr inbounds nuw i8, ptr %6, i64 %i.arr ; 2 uses
  %i.art = load i8, ptr %i.ars, align 1, !tbaa !18, !alias.scope !355, !noalias !356
  %i.aru = zext i8 %i.art to i64
  %i.arv = and i64 %i.arp, 7
  %i.arw = shl nuw nsw i64 %i.arq, %i.arv
  %i.arx = or i64 %i.arw, %i.aru
  store i64 %i.arx, ptr %i.ars, align 1, !noalias !356
  %i.ary = add i64 %i.arp, 14
  %i.arz = load i32, ptr %i.cg, align 8, !tbaa !26
  %i.asa = add i32 %i.arz, 1
  store i32 %i.asa, ptr %i.cg, align 8, !tbaa !26
  br label %EmitLongInsertLen.exit30

bb.bm:                                            ; preds = %bb.bk
  %i.asb = load i8, ptr %i.cb, align 1, !tbaa !18
  %i.asc = zext i8 %i.asb to i64
  %i.asd = load i16, ptr %i.cc, align 2, !tbaa !30
  %i.ase = zext i16 %i.asd to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.asf = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !357, !noalias !358 ; 3 uses
  %i.asg = lshr i64 %i.asf, 3
  %i.ash = getelementptr inbounds nuw i8, ptr %6, i64 %i.asg ; 2 uses
  %i.asi = load i8, ptr %i.ash, align 1, !tbaa !18, !alias.scope !358, !noalias !357
  %i.asj = zext i8 %i.asi to i64
  %i.ask = and i64 %i.asf, 7
  %i.asl = shl nuw nsw i64 %i.ase, %i.ask
  %i.asm = or i64 %i.asl, %i.asj
  store i64 %i.asm, ptr %i.ash, align 1, !noalias !357
  %i.asn = add i64 %i.asf, %i.asc                 ; 4 uses
  store i64 %i.asn, ptr %5, align 8, !tbaa !17, !alias.scope !357, !noalias !358
  %i.aso = add i64 %i.akv, -22594
  %i.asp = lshr i64 %i.asn, 3
  %i.asq = getelementptr inbounds nuw i8, ptr %6, i64 %i.asp ; 2 uses
  %i.asr = load i8, ptr %i.asq, align 1, !tbaa !18, !alias.scope !359, !noalias !360
  %i.ass = zext i8 %i.asr to i64
  %i.ast = and i64 %i.asn, 7
  %i.asu = shl i64 %i.aso, %i.ast
  %i.asv = or i64 %i.asu, %i.ass
  store i64 %i.asv, ptr %i.asq, align 1, !noalias !360
  %i.asw = add i64 %i.asn, 24
  %i.asx = load i32, ptr %i.cd, align 4, !tbaa !26
  %i.asy = add i32 %i.asx, 1
  store i32 %i.asy, ptr %i.cd, align 4, !tbaa !26
  br label %EmitLongInsertLen.exit30

EmitLongInsertLen.exit30:                         ; preds = %bb.bl, %bb.bm
  %.sink358 = phi i64 [ %i.ary, %bb.bl ], [ %i.asw, %bb.bm ] ; 3 uses
  store i64 %.sink358, ptr %5, align 8, !tbaa !17, !noalias !19
  %i.asz = add nsw i64 %.0358.i, -1
  %i.ata = add i64 %i.asz, %.0.i.lcssa632633
  %xtraiter636 = and i64 %i.akv, 1
  %i.atb = icmp eq i64 %i.ata, %.7.i.lcssa634635
  br i1 %i.atb, label %.epil.preheader629, label %EmitLongInsertLen.exit30.new

EmitLongInsertLen.exit30.new:                     ; preds = %EmitLongInsertLen.exit30
  %unroll_iter641 = and i64 %i.akv, -2
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %EmitLongInsertLen.exit30.new
  %.0.i34270 = phi i64 [ 0, %EmitLongInsertLen.exit30.new ], [ %i.aum, %bb.bn ] ; 3 uses
  %i.atc = phi i64 [ %.sink358, %EmitLongInsertLen.exit30.new ], [ %i.aul, %bb.bn ] ; 3 uses
  %niter642 = phi i64 [ 0, %EmitLongInsertLen.exit30.new ], [ %niter642.next.1, %bb.bn ]
  %i.atd = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34270
  %i.ate = load i8, ptr %i.atd, align 1, !tbaa !18
  %i.atf = zext i8 %i.ate to i64                  ; 2 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %0, i64 %i.atf
  %i.ath = load i8, ptr %i.atg, align 1, !tbaa !18
  %i.ati = zext i8 %i.ath to i64
  %i.atj = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.atf
  %i.atk = load i16, ptr %i.atj, align 2, !tbaa !30
  %i.atl = zext i16 %i.atk to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.atm = lshr i64 %i.atc, 3
  %i.atn = getelementptr inbounds nuw i8, ptr %6, i64 %i.atm ; 2 uses
  %i.ato = load i8, ptr %i.atn, align 1, !tbaa !18, !alias.scope !362, !noalias !361
  %i.atp = zext i8 %i.ato to i64
  %i.atq = and i64 %i.atc, 7
  %i.atr = shl nuw nsw i64 %i.atl, %i.atq
  %i.ats = or i64 %i.atr, %i.atp
  store i64 %i.ats, ptr %i.atn, align 1, !noalias !361
  %i.att = add i64 %i.atc, %i.ati                 ; 4 uses
  store i64 %i.att, ptr %5, align 8, !tbaa !17, !alias.scope !361, !noalias !362
  %i.atu = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34270
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atu, i64 1
  %i.atw = load i8, ptr %i.atv, align 1, !tbaa !18
  %i.atx = zext i8 %i.atw to i64                  ; 2 uses
  %i.aty = getelementptr inbounds nuw i8, ptr %0, i64 %i.atx
  %i.atz = load i8, ptr %i.aty, align 1, !tbaa !18
  %i.aua = zext i8 %i.atz to i64
  %i.aub = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.atx
  %i.auc = load i16, ptr %i.aub, align 2, !tbaa !30
  %i.aud = zext i16 %i.auc to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.aue = lshr i64 %i.att, 3
  %i.auf = getelementptr inbounds nuw i8, ptr %6, i64 %i.aue ; 2 uses
  %i.aug = load i8, ptr %i.auf, align 1, !tbaa !18, !alias.scope !364, !noalias !363
  %i.auh = zext i8 %i.aug to i64
  %i.aui = and i64 %i.att, 7
  %i.auj = shl nuw nsw i64 %i.aud, %i.aui
  %i.auk = or i64 %i.auj, %i.auh
  store i64 %i.auk, ptr %i.auf, align 1, !noalias !363
  %i.aul = add i64 %i.att, %i.aua                 ; 3 uses
  store i64 %i.aul, ptr %5, align 8, !tbaa !17, !alias.scope !363, !noalias !364
  %i.aum = add nuw i64 %.0.i34270, 2              ; 2 uses
  %niter642.next.1 = add i64 %niter642, 2         ; 2 uses
  %niter642.ncmp.1 = icmp eq i64 %niter642.next.1, %unroll_iter641
  br i1 %niter642.ncmp.1, label %EmitLiterals.exit33.loopexit560.unr-lcssa, label %bb.bn, !llvm.loop !5

EmitLiterals.exit33.loopexit.unr-lcssa:           ; preds = %bb.bh
  %lcmp.mod648.not = icmp eq i64 %xtraiter645, 0
  br i1 %lcmp.mod648.not, label %EmitLiterals.exit33, label %.epil.preheader643

.epil.preheader643:                               ; preds = %EmitLiterals.exit33.loopexit.unr-lcssa, %.lr.ph272
  %.epil.init647 = phi i64 [ %.promoted273, %.lr.ph272 ], [ %i.aqw, %EmitLiterals.exit33.loopexit.unr-lcssa ] ; 3 uses
  %.0.i32271.epil.init = phi i64 [ 0, %.lr.ph272 ], [ %i.aqx, %EmitLiterals.exit33.loopexit.unr-lcssa ]
  %lcmp.mod649 = trunc i64 %i.akv to i1
  tail call void @llvm.assume(i1 %lcmp.mod649)
  %i.aun = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32271.epil.init
  %i.auo = load i8, ptr %i.aun, align 1, !tbaa !18
  %i.aup = zext i8 %i.auo to i64                  ; 2 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %0, i64 %i.aup
  %i.aur = load i8, ptr %i.auq, align 1, !tbaa !18
  %i.aus = zext i8 %i.aur to i64
  %i.aut = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.aup
  %i.auu = load i16, ptr %i.aut, align 2, !tbaa !30
  %i.auv = zext i16 %i.auu to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  %i.auw = lshr i64 %.epil.init647, 3
  %i.aux = getelementptr inbounds nuw i8, ptr %6, i64 %i.auw ; 2 uses
  %i.auy = load i8, ptr %i.aux, align 1, !tbaa !18, !alias.scope !350, !noalias !349
  %i.auz = zext i8 %i.auy to i64
  %i.ava = and i64 %.epil.init647, 7
  %i.avb = shl nuw nsw i64 %i.auv, %i.ava
  %i.avc = or i64 %i.avb, %i.auz
  store i64 %i.avc, ptr %i.aux, align 1, !noalias !349
  %i.avd = add i64 %.epil.init647, %i.aus
  store i64 %i.avd, ptr %5, align 8, !tbaa !17, !alias.scope !349, !noalias !350
  br label %EmitLiterals.exit33

EmitLiterals.exit33.loopexit560.unr-lcssa:        ; preds = %bb.bn
  %lcmp.mod639.not = icmp eq i64 %xtraiter636, 0
  br i1 %lcmp.mod639.not, label %EmitLiterals.exit33, label %.epil.preheader629

.epil.preheader629:                               ; preds = %EmitLiterals.exit33.loopexit560.unr-lcssa, %EmitLongInsertLen.exit30
  %.0.i34270.epil.init = phi i64 [ 0, %EmitLongInsertLen.exit30 ], [ %i.aum, %EmitLiterals.exit33.loopexit560.unr-lcssa ]
  %.epil.init638 = phi i64 [ %.sink358, %EmitLongInsertLen.exit30 ], [ %i.aul, %EmitLiterals.exit33.loopexit560.unr-lcssa ] ; 3 uses
  %lcmp.mod640 = trunc i64 %i.akv to i1
  tail call void @llvm.assume(i1 %lcmp.mod640)
  %i.ave = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34270.epil.init
  %i.avf = load i8, ptr %i.ave, align 1, !tbaa !18
  %i.avg = zext i8 %i.avf to i64                  ; 2 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %0, i64 %i.avg
  %i.avi = load i8, ptr %i.avh, align 1, !tbaa !18
  %i.avj = zext i8 %i.avi to i64
  %i.avk = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.avg
  %i.avl = load i16, ptr %i.avk, align 2, !tbaa !30
  %i.avm = zext i16 %i.avl to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.avn = lshr i64 %.epil.init638, 3
  %i.avo = getelementptr inbounds nuw i8, ptr %6, i64 %i.avn ; 2 uses
  %i.avp = load i8, ptr %i.avo, align 1, !tbaa !18, !alias.scope !362, !noalias !361
  %i.avq = zext i8 %i.avp to i64
  %i.avr = and i64 %.epil.init638, 7
  %i.avs = shl nuw nsw i64 %i.avm, %i.avr
  %i.avt = or i64 %i.avs, %i.avq
  store i64 %i.avt, ptr %i.avo, align 1, !noalias !361
  %i.avu = add i64 %.epil.init638, %i.avj
  store i64 %i.avu, ptr %5, align 8, !tbaa !17, !alias.scope !361, !noalias !362
  br label %EmitLiterals.exit33

EmitLiterals.exit33:                              ; preds = %.epil.preheader629, %EmitLiterals.exit33.loopexit560.unr-lcssa, %.epil.preheader643, %EmitLiterals.exit33.loopexit.unr-lcssa, %EmitInsertLen.exit27, %.thread76.thread118, %bb.bj, %bb.ay
  %.8.i = phi ptr [ %.us-phi219, %.thread76.thread118 ], [ %i.ct, %bb.ay ], [ %i.ct, %EmitInsertLen.exit27 ], [ %i.ct, %bb.bj ], [ %i.ct, %.epil.preheader643 ], [ %i.ct, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %i.ct, %EmitLiterals.exit33.loopexit560.unr-lcssa ], [ %i.ct, %.epil.preheader629 ] ; 2 uses
  %.5323.i = phi i64 [ %i.ln, %.thread76.thread118 ], [ %i.aij, %bb.ay ], [ %i.aij, %EmitInsertLen.exit27 ], [ %i.aij, %bb.bj ], [ %i.aij, %.epil.preheader643 ], [ %i.aij, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %i.aij, %EmitLiterals.exit33.loopexit560.unr-lcssa ], [ %i.aij, %.epil.preheader629 ] ; 4 uses
  %.not393.i = icmp eq i64 %.5323.i, 0
  br i1 %.not393.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %EmitLiterals.exit33
  %i.avv = tail call i64 @llvm.umin.i64(i64 %.5323.i, i64 98304) ; 3 uses
  %i.avw = load i64, ptr %5, align 8, !tbaa !17   ; 3 uses
  %i.avx = add i64 %i.avw, 3                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.avy = lshr i64 %i.avw, 3
  %i.avz = getelementptr inbounds nuw i8, ptr %6, i64 %i.avy ; 2 uses
  %i.awa = load i8, ptr %i.avz, align 1, !tbaa !18, !alias.scope !366, !noalias !365
  %i.awb = zext i8 %i.awa to i64
  store i64 %i.awb, ptr %i.avz, align 1, !noalias !365
  %i.awc = add i64 %i.avw, 1                      ; 3 uses
  store i64 %i.awc, ptr %5, align 8, !tbaa !17, !alias.scope !365, !noalias !366
  %i.awd = icmp ult i64 %.5323.i, 65537
  %.0.i57 = select i1 %i.awd, i64 4, i64 5        ; 2 uses
  %i.awe = add nsw i64 %.0.i57, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  %i.awf = lshr i64 %i.awc, 3
  %i.awg = getelementptr inbounds nuw i8, ptr %6, i64 %i.awf ; 2 uses
  %i.awh = load i8, ptr %i.awg, align 1, !tbaa !18, !alias.scope !368, !noalias !367
  %i.awi = zext i8 %i.awh to i64
  %i.awj = and i64 %i.awc, 7
  %i.awk = shl nuw nsw i64 %i.awe, %i.awj
  %i.awl = or i64 %i.awk, %i.awi
  store i64 %i.awl, ptr %i.awg, align 1, !noalias !367
  store i64 %i.avx, ptr %5, align 8, !tbaa !17, !alias.scope !367, !noalias !368
  %i.awm = shl nuw nsw i64 %.0.i57, 2
  %i.awn = add nsw i64 %i.avv, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  %i.awo = lshr i64 %i.avx, 3
  %i.awp = getelementptr inbounds nuw i8, ptr %6, i64 %i.awo ; 2 uses
  %i.awq = load i8, ptr %i.awp, align 1, !tbaa !18, !alias.scope !370, !noalias !369
  %i.awr = zext i8 %i.awq to i64
  %i.aws = and i64 %i.avx, 7
  %i.awt = shl nuw nsw i64 %i.awn, %i.aws
  %i.awu = or i64 %i.awt, %i.awr
  store i64 %i.awu, ptr %i.awp, align 1, !noalias !369
  %i.awv = add i64 %i.avx, %i.awm                 ; 4 uses
  store i64 %i.awv, ptr %5, align 8, !tbaa !17, !alias.scope !369, !noalias !370
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.aww = lshr i64 %i.awv, 3
  %i.awx = getelementptr inbounds nuw i8, ptr %6, i64 %i.aww ; 2 uses
  %i.awy = load i8, ptr %i.awx, align 1, !tbaa !18, !alias.scope !372, !noalias !371
  %i.awz = zext i8 %i.awy to i64
  store i64 %i.awz, ptr %i.awx, align 1, !noalias !371
  %i.axa = add i64 %i.awv, 1                      ; 2 uses
  store i64 %i.axa, ptr %5, align 8, !tbaa !17, !alias.scope !371, !noalias !372
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %i.axb = lshr i64 %i.axa, 3
  %i.axc = getelementptr inbounds nuw i8, ptr %6, i64 %i.axb ; 2 uses
  %i.axd = load i8, ptr %i.axc, align 1, !tbaa !18, !alias.scope !374, !noalias !373
  %i.axe = zext i8 %i.axd to i64
  store i64 %i.axe, ptr %i.axc, align 1, !noalias !373
  %i.axf = add i64 %i.awv, 14
  store i64 %i.axf, ptr %5, align 8, !tbaa !17, !alias.scope !373, !noalias !374
  %i.axg = tail call fastcc i64 @BuildAndStoreLiteralPrefixCode(ptr noundef %0, ptr noundef %.8.i, i64 noundef %i.avv, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %6)
  br label %UpdateBits.exit.outer

bb.bp:                                            ; preds = %EmitLiterals.exit33
  %.not394.i = icmp eq i32 %3, 0
  br i1 %.not394.i, label %bb.bq, label %BrotliCompressFragmentFastImpl.exit

bb.bq:                                            ; preds = %bb.bp
  store i8 0, ptr %i.bn, align 8, !tbaa !18
  store i64 0, ptr %i.aq, align 8, !tbaa !21
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.bn)
  br label %BrotliCompressFragmentFastImpl.exit

BrotliCompressFragmentFastImpl.exit:              ; preds = %bb.bp, %bb.bq
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @BrotliCompressFragmentFastImpl11(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, 0) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 11 uses
  %i.e = tail call i64 @llvm.umin.i64(i64 range(i64 1, 0) %2, i64 98304) ; 3 uses
  %i.f = load i64, ptr %5, align 8, !tbaa !17     ; 3 uses
  %i.g = add i64 %i.f, 3                          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565)
  %i.h = lshr i64 %i.f, 3
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 %i.h ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !18, !alias.scope !565, !noalias !564
  %i.k = zext i8 %i.j to i64
  store i64 %i.k, ptr %i.i, align 1, !noalias !564
  %i.l = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.l, ptr %5, align 8, !tbaa !17, !alias.scope !564, !noalias !565
  %i.m = icmp ult i64 %2, 65537
  %.0.i52 = select i1 %i.m, i64 4, i64 5          ; 2 uses
  %i.n = add nsw i64 %.0.i52, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567)
  %i.o = lshr i64 %i.l, 3
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !18, !alias.scope !567, !noalias !566
  %i.r = zext i8 %i.q to i64
  %i.s = and i64 %i.l, 7
  %i.t = shl nuw nsw i64 %i.n, %i.s
  %i.u = or i64 %i.t, %i.r
  store i64 %i.u, ptr %i.p, align 1, !noalias !566
  store i64 %i.g, ptr %5, align 8, !tbaa !17, !alias.scope !566, !noalias !567
  %i.v = shl nuw nsw i64 %.0.i52, 2
  %i.w = add nsw i64 %i.e, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569)
  %i.x = lshr i64 %i.g, 3
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !18, !alias.scope !569, !noalias !568
  %i.aa = zext i8 %i.z to i64
  %i.ab = and i64 %i.g, 7
  %i.ac = shl nuw nsw i64 %i.w, %i.ab
  %i.ad = or i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.y, align 1, !noalias !568
  %i.ae = add i64 %i.g, %i.v                      ; 4 uses
  store i64 %i.ae, ptr %5, align 8, !tbaa !17, !alias.scope !568, !noalias !569
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !571)
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !18, !alias.scope !571, !noalias !570
  %i.ai = zext i8 %i.ah to i64
  store i64 %i.ai, ptr %i.ag, align 1, !noalias !570
  %i.aj = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.aj, ptr %5, align 8, !tbaa !17, !alias.scope !570, !noalias !571
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.ak = lshr i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !18, !alias.scope !573, !noalias !572
  %i.an = zext i8 %i.am to i64
  store i64 %i.an, ptr %i.al, align 1, !noalias !572
  %i.ao = add i64 %i.ae, 14
  store i64 %i.ao, ptr %5, align 8, !tbaa !17, !alias.scope !572, !noalias !573
  %i.ap = tail call fastcc i64 @BuildAndStoreLiteralPrefixCode(ptr noundef %0, ptr noundef %1, i64 noundef %i.e, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !21 ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 7
  %.pre359 = load i64, ptr %5, align 8, !tbaa !17, !noalias !19 ; 2 uses
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1664
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.au = phi i64 [ %.pre359, %.lr.ph ], [ %i.bg, %bb.b ] ; 3 uses
  %.0343.i181 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %bb.b ] ; 2 uses
  %i.av = lshr exact i64 %.0343.i181, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !18
  %i.ay = zext i8 %i.ax to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !575)
  %i.az = lshr i64 %i.au, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !18, !alias.scope !575, !noalias !574
end_hunk_1
begin_hunk_2_@BrotliCompressFragmentFastImpl11:bb.a
  %i.ir = getelementptr inbounds nuw i8, ptr %6, i64 %i.iq ; 2 uses
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !18, !alias.scope !583, !noalias !582
  %i.it = zext i8 %i.is to i64
  %i.iu = and i64 %i.in, 7
  %i.iv = shl nsw i64 %i.ip, %i.iu
  %i.iw = or i64 %i.iv, %i.it
  store i64 %i.iw, ptr %i.ir, align 1, !noalias !582
  %i.ix = add i64 %i.in, %i.hu
  store i64 %i.ix, ptr %5, align 8, !tbaa !17, !alias.scope !582, !noalias !583
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hy ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !26
  %i.ja = add i32 %i.iz, 1
  store i32 %i.ja, ptr %i.iy, align 4, !tbaa !26
  br label %EmitInsertLen.exit

bb.l:                                             ; preds = %bb.j
  %i.jb = icmp samesign ult i64 %i.gs, 2114
  br i1 %i.jb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.jc = add nsw i64 %i.gs, -66                  ; 2 uses
  %i.jd = trunc nuw nsw i64 %i.jc to i32
  %i.je = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.jd, i1 true) ; 2 uses
  %i.jf = xor i32 %i.je, 31
  %i.jg = sub nuw nsw i32 81, %i.je
  %i.jh = zext nneg i32 %i.jg to i64              ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !18
  %i.jk = zext i8 %i.jj to i64
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.jh
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !30
  %i.jn = zext i16 %i.jm to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  %i.jo = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !584, !noalias !585 ; 3 uses
  %i.jp = lshr i64 %i.jo, 3
  %i.jq = getelementptr inbounds nuw i8, ptr %6, i64 %i.jp ; 2 uses
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !18, !alias.scope !585, !noalias !584
  %i.js = zext i8 %i.jr to i64
  %i.jt = and i64 %i.jo, 7
  %i.ju = shl nuw nsw i64 %i.jn, %i.jt
  %i.jv = or i64 %i.ju, %i.js
  store i64 %i.jv, ptr %i.jq, align 1, !noalias !584
  %i.jw = add i64 %i.jo, %i.jk                    ; 4 uses
  store i64 %i.jw, ptr %5, align 8, !tbaa !17, !alias.scope !584, !noalias !585
  %i.jx = zext nneg i32 %i.jf to i64              ; 2 uses
  %.neg.i25 = shl nsw i64 -1, %i.jx
  %i.jy = add nsw i64 %.neg.i25, %i.jc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587)
  %i.jz = lshr i64 %i.jw, 3
  %i.ka = getelementptr inbounds nuw i8, ptr %6, i64 %i.jz ; 2 uses
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !18, !alias.scope !587, !noalias !586
  %i.kc = zext i8 %i.kb to i64
  %i.kd = and i64 %i.jw, 7
  %i.ke = shl nsw i64 %i.jy, %i.kd
  %i.kf = or i64 %i.ke, %i.kc
  store i64 %i.kf, ptr %i.ka, align 1, !noalias !586
  %i.kg = add i64 %i.jw, %i.jx
  store i64 %i.kg, ptr %5, align 8, !tbaa !17, !alias.scope !586, !noalias !587
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jh ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !26
  %i.kj = add i32 %i.ki, 1
  store i32 %i.kj, ptr %i.kh, align 4, !tbaa !26
  br label %EmitInsertLen.exit

bb.n:                                             ; preds = %bb.l
  %i.kk = load i8, ptr %i.ch, align 1, !tbaa !18
  %i.kl = zext i8 %i.kk to i64
  %i.km = load i16, ptr %i.ci, align 2, !tbaa !30
  %i.kn = zext i16 %i.km to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !589)
  %i.ko = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !588, !noalias !589 ; 3 uses
  %i.kp = lshr i64 %i.ko, 3
  %i.kq = getelementptr inbounds nuw i8, ptr %6, i64 %i.kp ; 2 uses
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !18, !alias.scope !589, !noalias !588
  %i.ks = zext i8 %i.kr to i64
  %i.kt = and i64 %i.ko, 7
  %i.ku = shl nuw nsw i64 %i.kn, %i.kt
  %i.kv = or i64 %i.ku, %i.ks
  store i64 %i.kv, ptr %i.kq, align 1, !noalias !588
  %i.kw = add i64 %i.ko, %i.kl                    ; 4 uses
  store i64 %i.kw, ptr %5, align 8, !tbaa !17, !alias.scope !588, !noalias !589
  %i.kx = add nsw i64 %i.gs, -2114
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  %i.ky = lshr i64 %i.kw, 3
  %i.kz = getelementptr inbounds nuw i8, ptr %6, i64 %i.ky ; 2 uses
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !18, !alias.scope !591, !noalias !590
  %i.lb = zext i8 %i.la to i64
  %i.lc = and i64 %i.kw, 7
  %i.ld = shl nuw nsw i64 %i.kx, %i.lc
  %i.le = or i64 %i.ld, %i.lb
  store i64 %i.le, ptr %i.kz, align 1, !noalias !590
  %i.lf = add i64 %i.kw, 12
  store i64 %i.lf, ptr %5, align 8, !tbaa !17, !alias.scope !590, !noalias !591
  %i.lg = load i32, ptr %i.cj, align 4, !tbaa !26
  %i.lh = add i32 %i.lg, 1
  store i32 %i.lh, ptr %i.cj, align 4, !tbaa !26
  br label %EmitInsertLen.exit

bb.o:                                             ; preds = %FindMatchLengthWithLimit.exit24
  %i.li = sub i64 %i.gr, %i.cr
  %i.lj = mul i64 %i.li, 50
  %i.lk = icmp ugt i64 %i.lj, %i.gs
  %narrow.not = select i1 %i.lk, i1 true, i1 %i.cs
  br i1 %narrow.not, label %bb.p, label %.thread76.thread118

.thread76.thread118:                              ; preds = %bb.o
  %i.ll = add i64 %.0356.i.ph, -3
  tail call fastcc void @EmitUncompressedMetaBlock(ptr noundef %.0360.i.ph, ptr noundef nonnull %.us-phi219, i64 noundef %i.ll, ptr noundef nonnull %5, ptr noundef %6)
  %i.lm = ptrtoint ptr %.0.i to i64
  %.neg.i = add i64 %.0318.i, %i.lm
  %i.ln = sub i64 %.neg.i, %.us-phi215
  br label %EmitLiterals.exit33

bb.p:                                             ; preds = %bb.o
  %i.lo = icmp ult i64 %i.gs, 22594
  br i1 %i.lo, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.lp = load i8, ptr %i.ce, align 2, !tbaa !18
  %i.lq = zext i8 %i.lp to i64
  %i.lr = load i16, ptr %i.cf, align 4, !tbaa !30
  %i.ls = zext i16 %i.lr to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !593)
  %i.lt = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !592, !noalias !593 ; 3 uses
  %i.lu = lshr i64 %i.lt, 3
  %i.lv = getelementptr inbounds nuw i8, ptr %6, i64 %i.lu ; 2 uses
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !18, !alias.scope !593, !noalias !592
  %i.lx = zext i8 %i.lw to i64
  %i.ly = and i64 %i.lt, 7
  %i.lz = shl nuw nsw i64 %i.ls, %i.ly
  %i.ma = or i64 %i.lz, %i.lx
  store i64 %i.ma, ptr %i.lv, align 1, !noalias !592
  %i.mb = add i64 %i.lt, %i.lq                    ; 4 uses
  store i64 %i.mb, ptr %5, align 8, !tbaa !17, !alias.scope !592, !noalias !593
  %i.mc = add nsw i64 %i.gs, -6210
  tail call void @llvm.experimental.noalias.scope.decl(metadata !594)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  %i.md = lshr i64 %i.mb, 3
  %i.me = getelementptr inbounds nuw i8, ptr %6, i64 %i.md ; 2 uses
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !18, !alias.scope !595, !noalias !594
  %i.mg = zext i8 %i.mf to i64
  %i.mh = and i64 %i.mb, 7
  %i.mi = shl nuw nsw i64 %i.mc, %i.mh
  %i.mj = or i64 %i.mi, %i.mg
  store i64 %i.mj, ptr %i.me, align 1, !noalias !594
  %i.mk = add i64 %i.mb, 14
  store i64 %i.mk, ptr %5, align 8, !tbaa !17, !alias.scope !594, !noalias !595
  %i.ml = load i32, ptr %i.cg, align 8, !tbaa !26
  %i.mm = add i32 %i.ml, 1
  store i32 %i.mm, ptr %i.cg, align 8, !tbaa !26
  br label %EmitInsertLen.exit

bb.r:                                             ; preds = %bb.p
  %i.mn = load i8, ptr %i.cb, align 1, !tbaa !18
  %i.mo = zext i8 %i.mn to i64
  %i.mp = load i16, ptr %i.cc, align 2, !tbaa !30
  %i.mq = zext i16 %i.mp to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597)
  %i.mr = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !596, !noalias !597 ; 3 uses
  %i.ms = lshr i64 %i.mr, 3
  %i.mt = getelementptr inbounds nuw i8, ptr %6, i64 %i.ms ; 2 uses
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !18, !alias.scope !597, !noalias !596
  %i.mv = zext i8 %i.mu to i64
  %i.mw = and i64 %i.mr, 7
  %i.mx = shl nuw nsw i64 %i.mq, %i.mw
  %i.my = or i64 %i.mx, %i.mv
  store i64 %i.my, ptr %i.mt, align 1, !noalias !596
  %i.mz = add i64 %i.mr, %i.mo                    ; 4 uses
  store i64 %i.mz, ptr %5, align 8, !tbaa !17, !alias.scope !596, !noalias !597
  %i.na = add i64 %i.gs, -22594
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599)
  %i.nb = lshr i64 %i.mz, 3
  %i.nc = getelementptr inbounds nuw i8, ptr %6, i64 %i.nb ; 2 uses
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !18, !alias.scope !599, !noalias !598
  %i.ne = zext i8 %i.nd to i64
  %i.nf = and i64 %i.mz, 7
  %i.ng = shl i64 %i.na, %i.nf
  %i.nh = or i64 %i.ng, %i.ne
  store i64 %i.nh, ptr %i.nc, align 1, !noalias !598
  %i.ni = add i64 %i.mz, 24
  store i64 %i.ni, ptr %5, align 8, !tbaa !17, !alias.scope !598, !noalias !599
  %i.nj = load i32, ptr %i.cd, align 4, !tbaa !26
  %i.nk = add i32 %i.nj, 1
  store i32 %i.nk, ptr %i.cd, align 4, !tbaa !26
  br label %EmitInsertLen.exit

EmitInsertLen.exit:                               ; preds = %bb.r, %bb.q, %bb.n, %bb.m, %bb.k, %bb.i
  %.not277 = icmp eq i64 %.us-phi215, %i.gr
  br i1 %.not277, label %EmitLiterals.exit, label %.lr.ph239

.lr.ph239:                                        ; preds = %EmitInsertLen.exit
  %.promoted = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !600, !noalias !601 ; 2 uses
  %.neg = add i64 %i.gr, 1
  %xtraiter = and i64 %i.gs, 1
  %i.nl = icmp eq i64 %.us-phi215, %.neg
  br i1 %i.nl, label %.epil.preheader, label %.lr.ph239.new

.lr.ph239.new:                                    ; preds = %.lr.ph239
  %unroll_iter = and i64 %i.gs, -2
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph239.new
  %i.nm = phi i64 [ %.promoted, %.lr.ph239.new ], [ %i.ov, %bb.s ] ; 3 uses
  %.0.i31238 = phi i64 [ 0, %.lr.ph239.new ], [ %i.ow, %bb.s ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph239.new ], [ %niter.next.1, %bb.s ]
  %i.nn = getelementptr inbounds nuw i8, ptr %.1361.i, i64 %.0.i31238
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !18
  %i.np = zext i8 %i.no to i64                    ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 %i.np
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !18
  %i.ns = zext i8 %i.nr to i64
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.np
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !30
  %i.nv = zext i16 %i.nu to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !601)
  %i.nw = lshr i64 %i.nm, 3
  %i.nx = getelementptr inbounds nuw i8, ptr %6, i64 %i.nw ; 2 uses
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !18, !alias.scope !601, !noalias !600
  %i.nz = zext i8 %i.ny to i64
  %i.oa = and i64 %i.nm, 7
  %i.ob = shl nuw nsw i64 %i.nv, %i.oa
  %i.oc = or i64 %i.ob, %i.nz
  store i64 %i.oc, ptr %i.nx, align 1, !noalias !600
  %i.od = add i64 %i.nm, %i.ns                    ; 4 uses
  store i64 %i.od, ptr %5, align 8, !tbaa !17, !alias.scope !600, !noalias !601
  %i.oe = getelementptr inbounds nuw i8, ptr %.1361.i, i64 %.0.i31238
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 1
  %i.og = load i8, ptr %i.of, align 1, !tbaa !18
  %i.oh = zext i8 %i.og to i64                    ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 %i.oh
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !18
  %i.ok = zext i8 %i.oj to i64
  %i.ol = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.oh
  %i.om = load i16, ptr %i.ol, align 2, !tbaa !30
  %i.on = zext i16 %i.om to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603)
  %i.oo = lshr i64 %i.od, 3
  %i.op = getelementptr inbounds nuw i8, ptr %6, i64 %i.oo ; 2 uses
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !18, !alias.scope !603, !noalias !602
  %i.or = zext i8 %i.oq to i64
  %i.os = and i64 %i.od, 7
  %i.ot = shl nuw nsw i64 %i.on, %i.os
  %i.ou = or i64 %i.ot, %i.or
  store i64 %i.ou, ptr %i.op, align 1, !noalias !602
  %i.ov = add i64 %i.od, %i.ok                    ; 3 uses
  store i64 %i.ov, ptr %5, align 8, !tbaa !17, !alias.scope !602, !noalias !603
  %i.ow = add nuw i64 %.0.i31238, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %EmitLiterals.exit.loopexit.unr-lcssa, label %bb.s, !llvm.loop !5

EmitLiterals.exit.loopexit.unr-lcssa:             ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %EmitLiterals.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %EmitLiterals.exit.loopexit.unr-lcssa, %.lr.ph239
  %.epil.init = phi i64 [ %.promoted, %.lr.ph239 ], [ %i.ov, %EmitLiterals.exit.loopexit.unr-lcssa ] ; 3 uses
  %.0.i31238.epil.init = phi i64 [ 0, %.lr.ph239 ], [ %i.ow, %EmitLiterals.exit.loopexit.unr-lcssa ]
  %lcmp.mod628 = trunc i64 %i.gs to i1
  tail call void @llvm.assume(i1 %lcmp.mod628)
  %i.ox = getelementptr inbounds nuw i8, ptr %.1361.i, i64 %.0.i31238.epil.init
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !18
  %i.oz = zext i8 %i.oy to i64                    ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 %i.oz
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !18
  %i.pc = zext i8 %i.pb to i64
  %i.pd = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.oz
  %i.pe = load i16, ptr %i.pd, align 2, !tbaa !30
  %i.pf = zext i16 %i.pe to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !601)
  %i.pg = lshr i64 %.epil.init, 3
  %i.ph = getelementptr inbounds nuw i8, ptr %6, i64 %i.pg ; 2 uses
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !18, !alias.scope !601, !noalias !600
  %i.pj = zext i8 %i.pi to i64
  %i.pk = and i64 %.epil.init, 7
  %i.pl = shl nuw nsw i64 %i.pf, %i.pk
  %i.pm = or i64 %i.pl, %i.pj
  store i64 %i.pm, ptr %i.ph, align 1, !noalias !600
  %i.pn = add i64 %.epil.init, %i.pc
  store i64 %i.pn, ptr %5, align 8, !tbaa !17, !alias.scope !600, !noalias !601
  br label %EmitLiterals.exit

EmitLiterals.exit:                                ; preds = %.epil.preheader, %EmitLiterals.exit.loopexit.unr-lcssa, %EmitInsertLen.exit
  %i.po = icmp eq i32 %.0344.i.fr, %i.gq
  br i1 %i.po, label %bb.t, label %bb.u

bb.t:                                             ; preds = %EmitLiterals.exit
  %i.pp = load i8, ptr %i.ck, align 8, !tbaa !18
  %i.pq = zext i8 %i.pp to i64
  %i.pr = load i16, ptr %i.cl, align 8, !tbaa !30
  %i.ps = zext i16 %i.pr to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !605)
  %i.pt = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !604, !noalias !605 ; 3 uses
  %i.pu = lshr i64 %i.pt, 3
  %i.pv = getelementptr inbounds nuw i8, ptr %6, i64 %i.pu ; 2 uses
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !18, !alias.scope !605, !noalias !604
  %i.px = zext i8 %i.pw to i64
  %i.py = and i64 %i.pt, 7
  %i.pz = shl nuw nsw i64 %i.ps, %i.py
  %i.qa = or i64 %i.pz, %i.px
  store i64 %i.qa, ptr %i.pv, align 1, !noalias !604
  %i.qb = add i64 %i.pt, %i.pq
  %i.qc = load i32, ptr %i.cm, align 8, !tbaa !26
  %i.qd = add i32 %i.qc, 1
  store i32 %i.qd, ptr %i.cm, align 8, !tbaa !26
  br label %bb.v

bb.u:                                             ; preds = %EmitLiterals.exit
  %sext.i = shl i64 %.us-phi218, 32
  %i.qe = ashr exact i64 %sext.i, 32
  %i.qf = add nsw i64 %i.qe, 3                    ; 3 uses
  %i.qg = trunc i64 %i.qf to i32
  %i.qh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.qg, i1 true) ; 2 uses
  %i.qi = sub nsw i32 30, %i.qh
  %i.qj = zext i32 %i.qi to i64                   ; 3 uses
  %i.qk = lshr i64 %i.qf, %i.qj
  %i.ql = and i64 %i.qk, 1                        ; 2 uses
  %i.qm = or disjoint i64 %i.ql, 2
  %i.qn = shl i64 %i.qm, %i.qj
  %i.qo = shl nuw nsw i32 %i.qh, 1
  %i.qp = sub nsw i32 58, %i.qo
  %i.qq = zext i32 %i.qp to i64
  %i.qr = or disjoint i64 %i.ql, %i.qq
  %i.qs = add nuw nsw i64 %i.qr, 80               ; 3 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.qs
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !18
  %i.qv = zext i8 %i.qu to i64
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.qs
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !30
  %i.qy = zext i16 %i.qx to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607)
  %i.qz = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !606, !noalias !607 ; 3 uses
  %i.ra = lshr i64 %i.qz, 3
  %i.rb = getelementptr inbounds nuw i8, ptr %6, i64 %i.ra ; 2 uses
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !18, !alias.scope !607, !noalias !606
  %i.rd = zext i8 %i.rc to i64
  %i.re = and i64 %i.qz, 7
  %i.rf = shl nuw nsw i64 %i.qy, %i.re
  %i.rg = or i64 %i.rf, %i.rd
  store i64 %i.rg, ptr %i.rb, align 1, !noalias !606
  %i.rh = add i64 %i.qz, %i.qv                    ; 4 uses
  store i64 %i.rh, ptr %5, align 8, !tbaa !17, !alias.scope !606, !noalias !607
  %i.ri = sub i64 %i.qf, %i.qn
  %i.rj = lshr i64 %i.rh, 3
  %i.rk = getelementptr inbounds nuw i8, ptr %6, i64 %i.rj ; 2 uses
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !18, !alias.scope !608, !noalias !609
  %i.rm = zext i8 %i.rl to i64
  %i.rn = and i64 %i.rh, 7
  %i.ro = shl i64 %i.ri, %i.rn
  %i.rp = or i64 %i.ro, %i.rm
  store i64 %i.rp, ptr %i.rk, align 1, !noalias !609
  %i.rq = add i64 %i.rh, %i.qj
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.qs ; 2 uses
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !26
  %i.rt = add i32 %i.rs, 1
  store i32 %i.rt, ptr %i.rr, align 4, !tbaa !26
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ru = phi i64 [ %i.qb, %bb.t ], [ %i.rq, %bb.u ] ; 16 uses
  %.1345.i = phi i32 [ %.0344.i.fr, %bb.t ], [ %i.gq, %bb.u ] ; 3 uses
  store i64 %i.ru, ptr %5, align 8, !tbaa !17, !noalias !19
  %i.rv = icmp ult i64 %i.gp, 12
  br i1 %i.rv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.rw = add nsw i64 %.2.i20, 1                  ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rw
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !18
  %i.rz = zext i8 %i.ry to i64
  %i.sa = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.rw
  %i.sb = load i16, ptr %i.sa, align 2, !tbaa !30
  %i.sc = zext i16 %i.sb to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611)
  %i.sd = lshr i64 %i.ru, 3
  %i.se = getelementptr inbounds nuw i8, ptr %6, i64 %i.sd ; 2 uses
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !18, !alias.scope !611, !noalias !610
  %i.sg = zext i8 %i.sf to i64
  %i.sh = and i64 %i.ru, 7
  %i.si = shl nuw nsw i64 %i.sc, %i.sh
  %i.sj = or i64 %i.si, %i.sg
  store i64 %i.sj, ptr %i.se, align 1, !noalias !610
  %i.sk = add i64 %i.ru, %i.rz
  store i64 %i.sk, ptr %5, align 8, !tbaa !17, !alias.scope !610, !noalias !611
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.rw ; 2 uses
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !26
  %i.sn = add i32 %i.sm, 1
  store i32 %i.sn, ptr %i.sl, align 4, !tbaa !26
  br label %EmitCopyLenLastDistance.exit

bb.x:                                             ; preds = %bb.v
  %i.so = icmp ult i64 %i.gp, 72
  br i1 %i.so, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.sp = add nsw i64 %.2.i20, -3                 ; 3 uses
  %i.sq = trunc nuw nsw i64 %i.sp to i32
  %i.sr = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.sq, i1 true)
  %i.ss = sub nuw nsw i32 30, %i.sr               ; 2 uses
  %i.st = zext nneg i32 %i.ss to i64              ; 3 uses
  %i.su = lshr i64 %i.sp, %i.st                   ; 2 uses
  %i.sv = shl nuw nsw i32 %i.ss, 1
  %narrow278 = add nuw nsw i32 %i.sv, 4
  %i.sw = zext nneg i32 %narrow278 to i64
  %i.sx = add nuw nsw i64 %i.su, %i.sw            ; 3 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.sx
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !18
  %i.ta = zext i8 %i.sz to i64
  %i.tb = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.sx
  %i.tc = load i16, ptr %i.tb, align 2, !tbaa !30
  %i.td = zext i16 %i.tc to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613)
  %i.te = lshr i64 %i.ru, 3
  %i.tf = getelementptr inbounds nuw i8, ptr %6, i64 %i.te ; 2 uses
  %i.tg = load i8, ptr %i.tf, align 1, !tbaa !18, !alias.scope !613, !noalias !612
  %i.th = zext i8 %i.tg to i64
  %i.ti = and i64 %i.ru, 7
  %i.tj = shl nuw nsw i64 %i.td, %i.ti
  %i.tk = or i64 %i.tj, %i.th
  store i64 %i.tk, ptr %i.tf, align 1, !noalias !612
  %i.tl = add i64 %i.ru, %i.ta                    ; 4 uses
  store i64 %i.tl, ptr %5, align 8, !tbaa !17, !alias.scope !612, !noalias !613
  %i.tm = shl nuw nsw i64 %i.su, %i.st
  %i.tn = sub nsw i64 %i.sp, %i.tm
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  %i.to = lshr i64 %i.tl, 3
  %i.tp = getelementptr inbounds nuw i8, ptr %6, i64 %i.to ; 2 uses
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !18, !alias.scope !615, !noalias !614
  %i.tr = zext i8 %i.tq to i64
  %i.ts = and i64 %i.tl, 7
  %i.tt = shl nsw i64 %i.tn, %i.ts
  %i.tu = or i64 %i.tt, %i.tr
  store i64 %i.tu, ptr %i.tp, align 1, !noalias !614
  %i.tv = add i64 %i.tl, %i.st
  store i64 %i.tv, ptr %5, align 8, !tbaa !17, !alias.scope !614, !noalias !615
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.sx ; 2 uses
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !26
  %i.ty = add i32 %i.tx, 1
  store i32 %i.ty, ptr %i.tw, align 4, !tbaa !26
  br label %EmitCopyLenLastDistance.exit

bb.z:                                             ; preds = %bb.x
  %i.tz = icmp ult i64 %i.gp, 136
  br i1 %i.tz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ua = add nsw i64 %.2.i20, -3                 ; 2 uses
  %i.ub = lshr i64 %i.ua, 5
end_hunk_2
begin_hunk_3_@BrotliCompressFragmentFastImpl11:bb.a
  store i8 %i.ako, ptr %i.akf, align 1, !tbaa !18
  %i.akp = sub nuw i64 %.030.i, %i.ajz            ; 2 uses
  %i.akq = lshr i32 %.02429.i, %i.akj
  %i.akr = add i64 %i.ajz, %.02528.i
  %.not.i56 = icmp eq i64 %i.akp, 0
  br i1 %.not.i56, label %UpdateBits.exit.loopexit, label %bb.ax, !llvm.loop !1

bb.ay:                                            ; preds = %ShouldMergeBlock.exit, %bb.aq, %.thread103
  %.0.i.lcssa632633 = ptrtoaddr ptr %.0.i to i64  ; 2 uses
  %.7.i.lcssa634635 = ptrtoaddr ptr %.7.i to i64  ; 2 uses
  %i.aks = icmp ult ptr %.7.i, %i.ct
  br i1 %i.aks, label %bb.az, label %EmitLiterals.exit33

bb.az:                                            ; preds = %bb.ay
  %i.akt = ptrtoint ptr %i.ct to i64
  %i.aku = ptrtoint ptr %.7.i to i64              ; 2 uses
  %i.akv = sub i64 %i.akt, %i.aku                 ; 18 uses
  %i.akw = icmp ult i64 %i.akv, 6210
  br i1 %i.akw, label %bb.ba, label %bb.bi, !prof !23

bb.ba:                                            ; preds = %bb.az
  %i.akx = icmp samesign ult i64 %i.akv, 6
  br i1 %i.akx, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.aky = or disjoint i64 %i.akv, 40             ; 3 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aky
  %i.ala = load i8, ptr %i.akz, align 1, !tbaa !18
  %i.alb = zext i8 %i.ala to i64
  %i.alc = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.aky
  %i.ald = load i16, ptr %i.alc, align 2, !tbaa !30
  %i.ale = zext i16 %i.ald to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653)
  %i.alf = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !652, !noalias !653 ; 3 uses
  %i.alg = lshr i64 %i.alf, 3
  %i.alh = getelementptr inbounds nuw i8, ptr %6, i64 %i.alg ; 2 uses
  %i.ali = load i8, ptr %i.alh, align 1, !tbaa !18, !alias.scope !653, !noalias !652
  %i.alj = zext i8 %i.ali to i64
  %i.alk = and i64 %i.alf, 7
  %i.all = shl nuw nsw i64 %i.ale, %i.alk
  %i.alm = or i64 %i.all, %i.alj
  store i64 %i.alm, ptr %i.alh, align 1, !noalias !652
  %i.aln = add i64 %i.alf, %i.alb
  store i64 %i.aln, ptr %5, align 8, !tbaa !17, !alias.scope !652, !noalias !653
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aky ; 2 uses
  %i.alp = load i32, ptr %i.alo, align 4, !tbaa !26
  %i.alq = add i32 %i.alp, 1
  store i32 %i.alq, ptr %i.alo, align 4, !tbaa !26
  br label %EmitInsertLen.exit27

bb.bc:                                            ; preds = %bb.ba
  %i.alr = icmp samesign ult i64 %i.akv, 130
  br i1 %i.alr, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.als = add nsw i64 %i.akv, -2                 ; 3 uses
  %i.alt = trunc nuw nsw i64 %i.als to i32
  %i.alu = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.alt, i1 true)
  %i.alv = sub nuw nsw i32 30, %i.alu             ; 2 uses
  %i.alw = zext nneg i32 %i.alv to i64            ; 3 uses
  %i.alx = lshr i64 %i.als, %i.alw                ; 2 uses
  %i.aly = shl nuw nsw i32 %i.alv, 1
  %narrow280 = add nuw nsw i32 %i.aly, 42
  %i.alz = zext nneg i32 %narrow280 to i64
  %i.ama = add nuw nsw i64 %i.alx, %i.alz         ; 3 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ama
  %i.amc = load i8, ptr %i.amb, align 1, !tbaa !18
  %i.amd = zext i8 %i.amc to i64
  %i.ame = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ama
  %i.amf = load i16, ptr %i.ame, align 2, !tbaa !30
  %i.amg = zext i16 %i.amf to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655)
  %i.amh = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !654, !noalias !655 ; 3 uses
  %i.ami = lshr i64 %i.amh, 3
  %i.amj = getelementptr inbounds nuw i8, ptr %6, i64 %i.ami ; 2 uses
  %i.amk = load i8, ptr %i.amj, align 1, !tbaa !18, !alias.scope !655, !noalias !654
  %i.aml = zext i8 %i.amk to i64
  %i.amm = and i64 %i.amh, 7
  %i.amn = shl nuw nsw i64 %i.amg, %i.amm
  %i.amo = or i64 %i.amn, %i.aml
  store i64 %i.amo, ptr %i.amj, align 1, !noalias !654
  %i.amp = add i64 %i.amh, %i.amd                 ; 4 uses
  store i64 %i.amp, ptr %5, align 8, !tbaa !17, !alias.scope !654, !noalias !655
  %i.amq = shl nuw nsw i64 %i.alx, %i.alw
  %i.amr = sub nsw i64 %i.als, %i.amq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657)
  %i.ams = lshr i64 %i.amp, 3
  %i.amt = getelementptr inbounds nuw i8, ptr %6, i64 %i.ams ; 2 uses
  %i.amu = load i8, ptr %i.amt, align 1, !tbaa !18, !alias.scope !657, !noalias !656
  %i.amv = zext i8 %i.amu to i64
  %i.amw = and i64 %i.amp, 7
  %i.amx = shl nsw i64 %i.amr, %i.amw
  %i.amy = or i64 %i.amx, %i.amv
  store i64 %i.amy, ptr %i.amt, align 1, !noalias !656
  %i.amz = add i64 %i.amp, %i.alw
  store i64 %i.amz, ptr %5, align 8, !tbaa !17, !alias.scope !656, !noalias !657
  %i.ana = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ama ; 2 uses
  %i.anb = load i32, ptr %i.ana, align 4, !tbaa !26
  %i.anc = add i32 %i.anb, 1
  store i32 %i.anc, ptr %i.ana, align 4, !tbaa !26
  br label %EmitInsertLen.exit27

bb.be:                                            ; preds = %bb.bc
  %i.and = icmp samesign ult i64 %i.akv, 2114
  br i1 %i.and, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ane = add nsw i64 %i.akv, -66                ; 2 uses
  %i.anf = trunc nuw nsw i64 %i.ane to i32
  %i.ang = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.anf, i1 true) ; 2 uses
  %i.anh = xor i32 %i.ang, 31
  %i.ani = sub nuw nsw i32 81, %i.ang
  %i.anj = zext nneg i32 %i.ani to i64            ; 3 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.anj
  %i.anl = load i8, ptr %i.ank, align 1, !tbaa !18
  %i.anm = zext i8 %i.anl to i64
  %i.ann = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.anj
  %i.ano = load i16, ptr %i.ann, align 2, !tbaa !30
  %i.anp = zext i16 %i.ano to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  %i.anq = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !658, !noalias !659 ; 3 uses
  %i.anr = lshr i64 %i.anq, 3
  %i.ans = getelementptr inbounds nuw i8, ptr %6, i64 %i.anr ; 2 uses
  %i.ant = load i8, ptr %i.ans, align 1, !tbaa !18, !alias.scope !659, !noalias !658
  %i.anu = zext i8 %i.ant to i64
  %i.anv = and i64 %i.anq, 7
  %i.anw = shl nuw nsw i64 %i.anp, %i.anv
  %i.anx = or i64 %i.anw, %i.anu
  store i64 %i.anx, ptr %i.ans, align 1, !noalias !658
  %i.any = add i64 %i.anq, %i.anm                 ; 4 uses
  store i64 %i.any, ptr %5, align 8, !tbaa !17, !alias.scope !658, !noalias !659
  %i.anz = zext nneg i32 %i.anh to i64            ; 2 uses
  %.neg.i26 = shl nsw i64 -1, %i.anz
  %i.aoa = add nsw i64 %.neg.i26, %i.ane
  tail call void @llvm.experimental.noalias.scope.decl(metadata !660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661)
  %i.aob = lshr i64 %i.any, 3
  %i.aoc = getelementptr inbounds nuw i8, ptr %6, i64 %i.aob ; 2 uses
  %i.aod = load i8, ptr %i.aoc, align 1, !tbaa !18, !alias.scope !661, !noalias !660
  %i.aoe = zext i8 %i.aod to i64
  %i.aof = and i64 %i.any, 7
  %i.aog = shl nsw i64 %i.aoa, %i.aof
  %i.aoh = or i64 %i.aog, %i.aoe
  store i64 %i.aoh, ptr %i.aoc, align 1, !noalias !660
  %i.aoi = add i64 %i.any, %i.anz
  store i64 %i.aoi, ptr %5, align 8, !tbaa !17, !alias.scope !660, !noalias !661
  %i.aoj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.anj ; 2 uses
  %i.aok = load i32, ptr %i.aoj, align 4, !tbaa !26
  %i.aol = add i32 %i.aok, 1
  store i32 %i.aol, ptr %i.aoj, align 4, !tbaa !26
  br label %EmitInsertLen.exit27

bb.bg:                                            ; preds = %bb.be
  %i.aom = load i8, ptr %i.ch, align 1, !tbaa !18
  %i.aon = zext i8 %i.aom to i64
  %i.aoo = load i16, ptr %i.ci, align 2, !tbaa !30
  %i.aop = zext i16 %i.aoo to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %i.aoq = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !662, !noalias !663 ; 3 uses
  %i.aor = lshr i64 %i.aoq, 3
  %i.aos = getelementptr inbounds nuw i8, ptr %6, i64 %i.aor ; 2 uses
  %i.aot = load i8, ptr %i.aos, align 1, !tbaa !18, !alias.scope !663, !noalias !662
  %i.aou = zext i8 %i.aot to i64
  %i.aov = and i64 %i.aoq, 7
  %i.aow = shl nuw nsw i64 %i.aop, %i.aov
  %i.aox = or i64 %i.aow, %i.aou
  store i64 %i.aox, ptr %i.aos, align 1, !noalias !662
  %i.aoy = add i64 %i.aoq, %i.aon                 ; 4 uses
  store i64 %i.aoy, ptr %5, align 8, !tbaa !17, !alias.scope !662, !noalias !663
  %i.aoz = add nsw i64 %i.akv, -2114
  tail call void @llvm.experimental.noalias.scope.decl(metadata !664)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !665)
  %i.apa = lshr i64 %i.aoy, 3
  %i.apb = getelementptr inbounds nuw i8, ptr %6, i64 %i.apa ; 2 uses
  %i.apc = load i8, ptr %i.apb, align 1, !tbaa !18, !alias.scope !665, !noalias !664
  %i.apd = zext i8 %i.apc to i64
  %i.ape = and i64 %i.aoy, 7
  %i.apf = shl nuw nsw i64 %i.aoz, %i.ape
  %i.apg = or i64 %i.apf, %i.apd
  store i64 %i.apg, ptr %i.apb, align 1, !noalias !664
  %i.aph = add i64 %i.aoy, 12
  store i64 %i.aph, ptr %5, align 8, !tbaa !17, !alias.scope !664, !noalias !665
  %i.api = load i32, ptr %i.cj, align 4, !tbaa !26
  %i.apj = add i32 %i.api, 1
  store i32 %i.apj, ptr %i.cj, align 4, !tbaa !26
  br label %EmitInsertLen.exit27

EmitInsertLen.exit27:                             ; preds = %bb.bb, %bb.bd, %bb.bf, %bb.bg
  %.not281 = icmp eq ptr %i.ct, %.7.i
  br i1 %.not281, label %EmitLiterals.exit33, label %.lr.ph272

.lr.ph272:                                        ; preds = %EmitInsertLen.exit27
  %.promoted273 = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !666, !noalias !667 ; 2 uses
  %i.apk = add nsw i64 %.0358.i, -1
  %i.apl = add i64 %i.apk, %.0.i.lcssa632633
  %xtraiter645 = and i64 %i.akv, 1
  %i.apm = icmp eq i64 %i.apl, %.7.i.lcssa634635
  br i1 %i.apm, label %.epil.preheader643, label %.lr.ph272.new

.lr.ph272.new:                                    ; preds = %.lr.ph272
  %unroll_iter650 = and i64 %i.akv, 8190
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.lr.ph272.new
  %i.apn = phi i64 [ %.promoted273, %.lr.ph272.new ], [ %i.aqw, %bb.bh ] ; 3 uses
  %.0.i32271 = phi i64 [ 0, %.lr.ph272.new ], [ %i.aqx, %bb.bh ] ; 3 uses
  %niter651 = phi i64 [ 0, %.lr.ph272.new ], [ %niter651.next.1, %bb.bh ]
  %i.apo = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32271
  %i.app = load i8, ptr %i.apo, align 1, !tbaa !18
  %i.apq = zext i8 %i.app to i64                  ; 2 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %0, i64 %i.apq
  %i.aps = load i8, ptr %i.apr, align 1, !tbaa !18
  %i.apt = zext i8 %i.aps to i64
  %i.apu = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.apq
  %i.apv = load i16, ptr %i.apu, align 2, !tbaa !30
  %i.apw = zext i16 %i.apv to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !667)
  %i.apx = lshr i64 %i.apn, 3
  %i.apy = getelementptr inbounds nuw i8, ptr %6, i64 %i.apx ; 2 uses
  %i.apz = load i8, ptr %i.apy, align 1, !tbaa !18, !alias.scope !667, !noalias !666
  %i.aqa = zext i8 %i.apz to i64
  %i.aqb = and i64 %i.apn, 7
  %i.aqc = shl nuw nsw i64 %i.apw, %i.aqb
  %i.aqd = or i64 %i.aqc, %i.aqa
  store i64 %i.aqd, ptr %i.apy, align 1, !noalias !666
  %i.aqe = add i64 %i.apn, %i.apt                 ; 4 uses
  store i64 %i.aqe, ptr %5, align 8, !tbaa !17, !alias.scope !666, !noalias !667
  %i.aqf = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32271
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqf, i64 1
  %i.aqh = load i8, ptr %i.aqg, align 1, !tbaa !18
  %i.aqi = zext i8 %i.aqh to i64                  ; 2 uses
  %i.aqj = getelementptr inbounds nuw i8, ptr %0, i64 %i.aqi
  %i.aqk = load i8, ptr %i.aqj, align 1, !tbaa !18
  %i.aql = zext i8 %i.aqk to i64
  %i.aqm = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.aqi
  %i.aqn = load i16, ptr %i.aqm, align 2, !tbaa !30
  %i.aqo = zext i16 %i.aqn to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669)
  %i.aqp = lshr i64 %i.aqe, 3
  %i.aqq = getelementptr inbounds nuw i8, ptr %6, i64 %i.aqp ; 2 uses
  %i.aqr = load i8, ptr %i.aqq, align 1, !tbaa !18, !alias.scope !669, !noalias !668
  %i.aqs = zext i8 %i.aqr to i64
  %i.aqt = and i64 %i.aqe, 7
  %i.aqu = shl nuw nsw i64 %i.aqo, %i.aqt
  %i.aqv = or i64 %i.aqu, %i.aqs
  store i64 %i.aqv, ptr %i.aqq, align 1, !noalias !668
  %i.aqw = add i64 %i.aqe, %i.aql                 ; 3 uses
  store i64 %i.aqw, ptr %5, align 8, !tbaa !17, !alias.scope !668, !noalias !669
  %i.aqx = add nuw i64 %.0.i32271, 2              ; 2 uses
  %niter651.next.1 = add i64 %niter651, 2         ; 2 uses
  %niter651.ncmp.1 = icmp eq i64 %niter651.next.1, %unroll_iter650
  br i1 %niter651.ncmp.1, label %EmitLiterals.exit33.loopexit.unr-lcssa, label %bb.bh, !llvm.loop !5

bb.bi:                                            ; preds = %bb.az
  %i.aqy = sub i64 %i.aku, %i.cr
  %i.aqz = mul i64 %i.aqy, 50
  %i.ara = icmp ugt i64 %i.aqz, %i.akv
  %narrow.not129 = select i1 %i.ara, i1 true, i1 %i.cs
  br i1 %narrow.not129, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.arb = add i64 %.0356.i.ph, -3
  tail call fastcc void @EmitUncompressedMetaBlock(ptr noundef %.0360.i.ph, ptr noundef nonnull %i.ct, i64 noundef %i.arb, ptr noundef nonnull %5, ptr noundef %6)
  br label %EmitLiterals.exit33

bb.bk:                                            ; preds = %bb.bi
  %i.arc = icmp ult i64 %i.akv, 22594
  br i1 %i.arc, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ard = load i8, ptr %i.ce, align 2, !tbaa !18
  %i.are = zext i8 %i.ard to i64
  %i.arf = load i16, ptr %i.cf, align 4, !tbaa !30
  %i.arg = zext i16 %i.arf to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !671)
  %i.arh = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !670, !noalias !671 ; 3 uses
  %i.ari = lshr i64 %i.arh, 3
  %i.arj = getelementptr inbounds nuw i8, ptr %6, i64 %i.ari ; 2 uses
  %i.ark = load i8, ptr %i.arj, align 1, !tbaa !18, !alias.scope !671, !noalias !670
  %i.arl = zext i8 %i.ark to i64
  %i.arm = and i64 %i.arh, 7
  %i.arn = shl nuw nsw i64 %i.arg, %i.arm
  %i.aro = or i64 %i.arn, %i.arl
  store i64 %i.aro, ptr %i.arj, align 1, !noalias !670
  %i.arp = add i64 %i.arh, %i.are                 ; 4 uses
  store i64 %i.arp, ptr %5, align 8, !tbaa !17, !alias.scope !670, !noalias !671
  %i.arq = add nsw i64 %i.akv, -6210
  %i.arr = lshr i64 %i.arp, 3
  %i.ars = getelementptr inbounds nuw i8, ptr %6, i64 %i.arr ; 2 uses
  %i.art = load i8, ptr %i.ars, align 1, !tbaa !18, !alias.scope !672, !noalias !673
  %i.aru = zext i8 %i.art to i64
  %i.arv = and i64 %i.arp, 7
  %i.arw = shl nuw nsw i64 %i.arq, %i.arv
  %i.arx = or i64 %i.arw, %i.aru
  store i64 %i.arx, ptr %i.ars, align 1, !noalias !673
  %i.ary = add i64 %i.arp, 14
  %i.arz = load i32, ptr %i.cg, align 8, !tbaa !26
  %i.asa = add i32 %i.arz, 1
  store i32 %i.asa, ptr %i.cg, align 8, !tbaa !26
  br label %EmitLongInsertLen.exit30

bb.bm:                                            ; preds = %bb.bk
  %i.asb = load i8, ptr %i.cb, align 1, !tbaa !18
  %i.asc = zext i8 %i.asb to i64
  %i.asd = load i16, ptr %i.cc, align 2, !tbaa !30
  %i.ase = zext i16 %i.asd to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  %i.asf = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !674, !noalias !675 ; 3 uses
  %i.asg = lshr i64 %i.asf, 3
  %i.ash = getelementptr inbounds nuw i8, ptr %6, i64 %i.asg ; 2 uses
  %i.asi = load i8, ptr %i.ash, align 1, !tbaa !18, !alias.scope !675, !noalias !674
  %i.asj = zext i8 %i.asi to i64
  %i.ask = and i64 %i.asf, 7
  %i.asl = shl nuw nsw i64 %i.ase, %i.ask
  %i.asm = or i64 %i.asl, %i.asj
  store i64 %i.asm, ptr %i.ash, align 1, !noalias !674
  %i.asn = add i64 %i.asf, %i.asc                 ; 4 uses
  store i64 %i.asn, ptr %5, align 8, !tbaa !17, !alias.scope !674, !noalias !675
  %i.aso = add i64 %i.akv, -22594
  %i.asp = lshr i64 %i.asn, 3
  %i.asq = getelementptr inbounds nuw i8, ptr %6, i64 %i.asp ; 2 uses
  %i.asr = load i8, ptr %i.asq, align 1, !tbaa !18, !alias.scope !676, !noalias !677
  %i.ass = zext i8 %i.asr to i64
  %i.ast = and i64 %i.asn, 7
  %i.asu = shl i64 %i.aso, %i.ast
  %i.asv = or i64 %i.asu, %i.ass
  store i64 %i.asv, ptr %i.asq, align 1, !noalias !677
  %i.asw = add i64 %i.asn, 24
  %i.asx = load i32, ptr %i.cd, align 4, !tbaa !26
  %i.asy = add i32 %i.asx, 1
  store i32 %i.asy, ptr %i.cd, align 4, !tbaa !26
  br label %EmitLongInsertLen.exit30

EmitLongInsertLen.exit30:                         ; preds = %bb.bl, %bb.bm
  %.sink358 = phi i64 [ %i.ary, %bb.bl ], [ %i.asw, %bb.bm ] ; 3 uses
  store i64 %.sink358, ptr %5, align 8, !tbaa !17, !noalias !19
  %i.asz = add nsw i64 %.0358.i, -1
  %i.ata = add i64 %i.asz, %.0.i.lcssa632633
  %xtraiter636 = and i64 %i.akv, 1
  %i.atb = icmp eq i64 %i.ata, %.7.i.lcssa634635
  br i1 %i.atb, label %.epil.preheader629, label %EmitLongInsertLen.exit30.new

EmitLongInsertLen.exit30.new:                     ; preds = %EmitLongInsertLen.exit30
  %unroll_iter641 = and i64 %i.akv, -2
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %EmitLongInsertLen.exit30.new
  %.0.i34270 = phi i64 [ 0, %EmitLongInsertLen.exit30.new ], [ %i.aum, %bb.bn ] ; 3 uses
  %i.atc = phi i64 [ %.sink358, %EmitLongInsertLen.exit30.new ], [ %i.aul, %bb.bn ] ; 3 uses
  %niter642 = phi i64 [ 0, %EmitLongInsertLen.exit30.new ], [ %niter642.next.1, %bb.bn ]
  %i.atd = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34270
  %i.ate = load i8, ptr %i.atd, align 1, !tbaa !18
  %i.atf = zext i8 %i.ate to i64                  ; 2 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %0, i64 %i.atf
  %i.ath = load i8, ptr %i.atg, align 1, !tbaa !18
  %i.ati = zext i8 %i.ath to i64
  %i.atj = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.atf
  %i.atk = load i16, ptr %i.atj, align 2, !tbaa !30
  %i.atl = zext i16 %i.atk to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !679)
  %i.atm = lshr i64 %i.atc, 3
  %i.atn = getelementptr inbounds nuw i8, ptr %6, i64 %i.atm ; 2 uses
  %i.ato = load i8, ptr %i.atn, align 1, !tbaa !18, !alias.scope !679, !noalias !678
  %i.atp = zext i8 %i.ato to i64
  %i.atq = and i64 %i.atc, 7
  %i.atr = shl nuw nsw i64 %i.atl, %i.atq
  %i.ats = or i64 %i.atr, %i.atp
  store i64 %i.ats, ptr %i.atn, align 1, !noalias !678
  %i.att = add i64 %i.atc, %i.ati                 ; 4 uses
  store i64 %i.att, ptr %5, align 8, !tbaa !17, !alias.scope !678, !noalias !679
  %i.atu = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34270
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atu, i64 1
  %i.atw = load i8, ptr %i.atv, align 1, !tbaa !18
  %i.atx = zext i8 %i.atw to i64                  ; 2 uses
  %i.aty = getelementptr inbounds nuw i8, ptr %0, i64 %i.atx
  %i.atz = load i8, ptr %i.aty, align 1, !tbaa !18
  %i.aua = zext i8 %i.atz to i64
  %i.aub = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.atx
  %i.auc = load i16, ptr %i.aub, align 2, !tbaa !30
  %i.aud = zext i16 %i.auc to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !681)
  %i.aue = lshr i64 %i.att, 3
  %i.auf = getelementptr inbounds nuw i8, ptr %6, i64 %i.aue ; 2 uses
  %i.aug = load i8, ptr %i.auf, align 1, !tbaa !18, !alias.scope !681, !noalias !680
  %i.auh = zext i8 %i.aug to i64
  %i.aui = and i64 %i.att, 7
  %i.auj = shl nuw nsw i64 %i.aud, %i.aui
  %i.auk = or i64 %i.auj, %i.auh
  store i64 %i.auk, ptr %i.auf, align 1, !noalias !680
  %i.aul = add i64 %i.att, %i.aua                 ; 3 uses
  store i64 %i.aul, ptr %5, align 8, !tbaa !17, !alias.scope !680, !noalias !681
  %i.aum = add nuw i64 %.0.i34270, 2              ; 2 uses
  %niter642.next.1 = add i64 %niter642, 2         ; 2 uses
  %niter642.ncmp.1 = icmp eq i64 %niter642.next.1, %unroll_iter641
  br i1 %niter642.ncmp.1, label %EmitLiterals.exit33.loopexit560.unr-lcssa, label %bb.bn, !llvm.loop !5

EmitLiterals.exit33.loopexit.unr-lcssa:           ; preds = %bb.bh
  %lcmp.mod648.not = icmp eq i64 %xtraiter645, 0
  br i1 %lcmp.mod648.not, label %EmitLiterals.exit33, label %.epil.preheader643

.epil.preheader643:                               ; preds = %EmitLiterals.exit33.loopexit.unr-lcssa, %.lr.ph272
  %.epil.init647 = phi i64 [ %.promoted273, %.lr.ph272 ], [ %i.aqw, %EmitLiterals.exit33.loopexit.unr-lcssa ] ; 3 uses
  %.0.i32271.epil.init = phi i64 [ 0, %.lr.ph272 ], [ %i.aqx, %EmitLiterals.exit33.loopexit.unr-lcssa ]
  %lcmp.mod649 = trunc i64 %i.akv to i1
  tail call void @llvm.assume(i1 %lcmp.mod649)
  %i.aun = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32271.epil.init
  %i.auo = load i8, ptr %i.aun, align 1, !tbaa !18
  %i.aup = zext i8 %i.auo to i64                  ; 2 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %0, i64 %i.aup
  %i.aur = load i8, ptr %i.auq, align 1, !tbaa !18
  %i.aus = zext i8 %i.aur to i64
  %i.aut = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.aup
  %i.auu = load i16, ptr %i.aut, align 2, !tbaa !30
  %i.auv = zext i16 %i.auu to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !667)
  %i.auw = lshr i64 %.epil.init647, 3
  %i.aux = getelementptr inbounds nuw i8, ptr %6, i64 %i.auw ; 2 uses
  %i.auy = load i8, ptr %i.aux, align 1, !tbaa !18, !alias.scope !667, !noalias !666
  %i.auz = zext i8 %i.auy to i64
  %i.ava = and i64 %.epil.init647, 7
  %i.avb = shl nuw nsw i64 %i.auv, %i.ava
  %i.avc = or i64 %i.avb, %i.auz
  store i64 %i.avc, ptr %i.aux, align 1, !noalias !666
  %i.avd = add i64 %.epil.init647, %i.aus
  store i64 %i.avd, ptr %5, align 8, !tbaa !17, !alias.scope !666, !noalias !667
  br label %EmitLiterals.exit33

EmitLiterals.exit33.loopexit560.unr-lcssa:        ; preds = %bb.bn
  %lcmp.mod639.not = icmp eq i64 %xtraiter636, 0
  br i1 %lcmp.mod639.not, label %EmitLiterals.exit33, label %.epil.preheader629

.epil.preheader629:                               ; preds = %EmitLiterals.exit33.loopexit560.unr-lcssa, %EmitLongInsertLen.exit30
  %.0.i34270.epil.init = phi i64 [ 0, %EmitLongInsertLen.exit30 ], [ %i.aum, %EmitLiterals.exit33.loopexit560.unr-lcssa ]
  %.epil.init638 = phi i64 [ %.sink358, %EmitLongInsertLen.exit30 ], [ %i.aul, %EmitLiterals.exit33.loopexit560.unr-lcssa ] ; 3 uses
  %lcmp.mod640 = trunc i64 %i.akv to i1
  tail call void @llvm.assume(i1 %lcmp.mod640)
  %i.ave = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34270.epil.init
  %i.avf = load i8, ptr %i.ave, align 1, !tbaa !18
  %i.avg = zext i8 %i.avf to i64                  ; 2 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %0, i64 %i.avg
  %i.avi = load i8, ptr %i.avh, align 1, !tbaa !18
  %i.avj = zext i8 %i.avi to i64
  %i.avk = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.avg
  %i.avl = load i16, ptr %i.avk, align 2, !tbaa !30
  %i.avm = zext i16 %i.avl to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !679)
  %i.avn = lshr i64 %.epil.init638, 3
  %i.avo = getelementptr inbounds nuw i8, ptr %6, i64 %i.avn ; 2 uses
  %i.avp = load i8, ptr %i.avo, align 1, !tbaa !18, !alias.scope !679, !noalias !678
  %i.avq = zext i8 %i.avp to i64
  %i.avr = and i64 %.epil.init638, 7
  %i.avs = shl nuw nsw i64 %i.avm, %i.avr
  %i.avt = or i64 %i.avs, %i.avq
  store i64 %i.avt, ptr %i.avo, align 1, !noalias !678
  %i.avu = add i64 %.epil.init638, %i.avj
  store i64 %i.avu, ptr %5, align 8, !tbaa !17, !alias.scope !678, !noalias !679
  br label %EmitLiterals.exit33

EmitLiterals.exit33:                              ; preds = %.epil.preheader629, %EmitLiterals.exit33.loopexit560.unr-lcssa, %.epil.preheader643, %EmitLiterals.exit33.loopexit.unr-lcssa, %EmitInsertLen.exit27, %.thread76.thread118, %bb.bj, %bb.ay
  %.8.i = phi ptr [ %.us-phi219, %.thread76.thread118 ], [ %i.ct, %bb.ay ], [ %i.ct, %EmitInsertLen.exit27 ], [ %i.ct, %bb.bj ], [ %i.ct, %.epil.preheader643 ], [ %i.ct, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %i.ct, %EmitLiterals.exit33.loopexit560.unr-lcssa ], [ %i.ct, %.epil.preheader629 ] ; 2 uses
  %.5323.i = phi i64 [ %i.ln, %.thread76.thread118 ], [ %i.aij, %bb.ay ], [ %i.aij, %EmitInsertLen.exit27 ], [ %i.aij, %bb.bj ], [ %i.aij, %.epil.preheader643 ], [ %i.aij, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %i.aij, %EmitLiterals.exit33.loopexit560.unr-lcssa ], [ %i.aij, %.epil.preheader629 ] ; 4 uses
  %.not393.i = icmp eq i64 %.5323.i, 0
  br i1 %.not393.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %EmitLiterals.exit33
  %i.avv = tail call i64 @llvm.umin.i64(i64 %.5323.i, i64 98304) ; 3 uses
  %i.avw = load i64, ptr %5, align 8, !tbaa !17   ; 3 uses
  %i.avx = add i64 %i.avw, 3                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %i.avy = lshr i64 %i.avw, 3
  %i.avz = getelementptr inbounds nuw i8, ptr %6, i64 %i.avy ; 2 uses
  %i.awa = load i8, ptr %i.avz, align 1, !tbaa !18, !alias.scope !683, !noalias !682
  %i.awb = zext i8 %i.awa to i64
  store i64 %i.awb, ptr %i.avz, align 1, !noalias !682
  %i.awc = add i64 %i.avw, 1                      ; 3 uses
  store i64 %i.awc, ptr %5, align 8, !tbaa !17, !alias.scope !682, !noalias !683
  %i.awd = icmp ult i64 %.5323.i, 65537
  %.0.i57 = select i1 %i.awd, i64 4, i64 5        ; 2 uses
  %i.awe = add nsw i64 %.0.i57, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685)
  %i.awf = lshr i64 %i.awc, 3
  %i.awg = getelementptr inbounds nuw i8, ptr %6, i64 %i.awf ; 2 uses
  %i.awh = load i8, ptr %i.awg, align 1, !tbaa !18, !alias.scope !685, !noalias !684
  %i.awi = zext i8 %i.awh to i64
  %i.awj = and i64 %i.awc, 7
  %i.awk = shl nuw nsw i64 %i.awe, %i.awj
  %i.awl = or i64 %i.awk, %i.awi
  store i64 %i.awl, ptr %i.awg, align 1, !noalias !684
  store i64 %i.avx, ptr %5, align 8, !tbaa !17, !alias.scope !684, !noalias !685
  %i.awm = shl nuw nsw i64 %.0.i57, 2
  %i.awn = add nsw i64 %i.avv, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  %i.awo = lshr i64 %i.avx, 3
  %i.awp = getelementptr inbounds nuw i8, ptr %6, i64 %i.awo ; 2 uses
  %i.awq = load i8, ptr %i.awp, align 1, !tbaa !18, !alias.scope !687, !noalias !686
  %i.awr = zext i8 %i.awq to i64
  %i.aws = and i64 %i.avx, 7
  %i.awt = shl nuw nsw i64 %i.awn, %i.aws
  %i.awu = or i64 %i.awt, %i.awr
  store i64 %i.awu, ptr %i.awp, align 1, !noalias !686
  %i.awv = add i64 %i.avx, %i.awm                 ; 4 uses
  store i64 %i.awv, ptr %5, align 8, !tbaa !17, !alias.scope !686, !noalias !687
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689)
  %i.aww = lshr i64 %i.awv, 3
  %i.awx = getelementptr inbounds nuw i8, ptr %6, i64 %i.aww ; 2 uses
  %i.awy = load i8, ptr %i.awx, align 1, !tbaa !18, !alias.scope !689, !noalias !688
  %i.awz = zext i8 %i.awy to i64
  store i64 %i.awz, ptr %i.awx, align 1, !noalias !688
  %i.axa = add i64 %i.awv, 1                      ; 2 uses
  store i64 %i.axa, ptr %5, align 8, !tbaa !17, !alias.scope !688, !noalias !689
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691)
  %i.axb = lshr i64 %i.axa, 3
  %i.axc = getelementptr inbounds nuw i8, ptr %6, i64 %i.axb ; 2 uses
  %i.axd = load i8, ptr %i.axc, align 1, !tbaa !18, !alias.scope !691, !noalias !690
  %i.axe = zext i8 %i.axd to i64
  store i64 %i.axe, ptr %i.axc, align 1, !noalias !690
  %i.axf = add i64 %i.awv, 14
  store i64 %i.axf, ptr %5, align 8, !tbaa !17, !alias.scope !690, !noalias !691
  %i.axg = tail call fastcc i64 @BuildAndStoreLiteralPrefixCode(ptr noundef %0, ptr noundef %.8.i, i64 noundef %i.avv, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %6)
  br label %UpdateBits.exit.outer

bb.bp:                                            ; preds = %EmitLiterals.exit33
  %.not394.i = icmp eq i32 %3, 0
  br i1 %.not394.i, label %bb.bq, label %BrotliCompressFragmentFastImpl.exit

bb.bq:                                            ; preds = %bb.bp
  store i8 0, ptr %i.bn, align 8, !tbaa !18
  store i64 0, ptr %i.aq, align 8, !tbaa !21
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.bn)
  br label %BrotliCompressFragmentFastImpl.exit

BrotliCompressFragmentFastImpl.exit:              ; preds = %bb.bp, %bb.bq
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @BrotliCompressFragmentFastImpl13(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, 0) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 11 uses
  %i.e = tail call i64 @llvm.umin.i64(i64 range(i64 1, 0) %2, i64 98304) ; 3 uses
  %i.f = load i64, ptr %5, align 8, !tbaa !17     ; 3 uses
  %i.g = add i64 %i.f, 3                          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !881)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882)
  %i.h = lshr i64 %i.f, 3
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 %i.h ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !18, !alias.scope !882, !noalias !881
  %i.k = zext i8 %i.j to i64
  store i64 %i.k, ptr %i.i, align 1, !noalias !881
  %i.l = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.l, ptr %5, align 8, !tbaa !17, !alias.scope !881, !noalias !882
  %i.m = icmp ult i64 %2, 65537
  %.0.i52 = select i1 %i.m, i64 4, i64 5          ; 2 uses
  %i.n = add nsw i64 %.0.i52, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !883)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !884)
  %i.o = lshr i64 %i.l, 3
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !18, !alias.scope !884, !noalias !883
  %i.r = zext i8 %i.q to i64
  %i.s = and i64 %i.l, 7
  %i.t = shl nuw nsw i64 %i.n, %i.s
  %i.u = or i64 %i.t, %i.r
  store i64 %i.u, ptr %i.p, align 1, !noalias !883
  store i64 %i.g, ptr %5, align 8, !tbaa !17, !alias.scope !883, !noalias !884
  %i.v = shl nuw nsw i64 %.0.i52, 2
  %i.w = add nsw i64 %i.e, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !886)
  %i.x = lshr i64 %i.g, 3
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !18, !alias.scope !886, !noalias !885
  %i.aa = zext i8 %i.z to i64
  %i.ab = and i64 %i.g, 7
  %i.ac = shl nuw nsw i64 %i.w, %i.ab
  %i.ad = or i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.y, align 1, !noalias !885
  %i.ae = add i64 %i.g, %i.v                      ; 4 uses
  store i64 %i.ae, ptr %5, align 8, !tbaa !17, !alias.scope !885, !noalias !886
  tail call void @llvm.experimental.noalias.scope.decl(metadata !887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !888)
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !18, !alias.scope !888, !noalias !887
  %i.ai = zext i8 %i.ah to i64
  store i64 %i.ai, ptr %i.ag, align 1, !noalias !887
  %i.aj = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.aj, ptr %5, align 8, !tbaa !17, !alias.scope !887, !noalias !888
  tail call void @llvm.experimental.noalias.scope.decl(metadata !889)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  %i.ak = lshr i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !18, !alias.scope !890, !noalias !889
  %i.an = zext i8 %i.am to i64
  store i64 %i.an, ptr %i.al, align 1, !noalias !889
  %i.ao = add i64 %i.ae, 14
  store i64 %i.ao, ptr %5, align 8, !tbaa !17, !alias.scope !889, !noalias !890
  %i.ap = tail call fastcc i64 @BuildAndStoreLiteralPrefixCode(ptr noundef %0, ptr noundef %1, i64 noundef %i.e, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !21 ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 7
  %.pre359 = load i64, ptr %5, align 8, !tbaa !17, !noalias !19 ; 2 uses
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1664
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.au = phi i64 [ %.pre359, %.lr.ph ], [ %i.bg, %bb.b ] ; 3 uses
  %.0343.i181 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %bb.b ] ; 2 uses
  %i.av = lshr exact i64 %.0343.i181, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !18
  %i.ay = zext i8 %i.ax to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !892)
  %i.az = lshr i64 %i.au, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !18, !alias.scope !892, !noalias !891
end_hunk_3
begin_hunk_4_@BrotliCompressFragmentFastImpl13:bb.a
  %i.ir = getelementptr inbounds nuw i8, ptr %6, i64 %i.iq ; 2 uses
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !18, !alias.scope !900, !noalias !899
  %i.it = zext i8 %i.is to i64
  %i.iu = and i64 %i.in, 7
  %i.iv = shl nsw i64 %i.ip, %i.iu
  %i.iw = or i64 %i.iv, %i.it
  store i64 %i.iw, ptr %i.ir, align 1, !noalias !899
  %i.ix = add i64 %i.in, %i.hu
  store i64 %i.ix, ptr %5, align 8, !tbaa !17, !alias.scope !899, !noalias !900
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hy ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !26
  %i.ja = add i32 %i.iz, 1
  store i32 %i.ja, ptr %i.iy, align 4, !tbaa !26
  br label %EmitInsertLen.exit

bb.l:                                             ; preds = %bb.j
  %i.jb = icmp samesign ult i64 %i.gs, 2114
  br i1 %i.jb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.jc = add nsw i64 %i.gs, -66                  ; 2 uses
  %i.jd = trunc nuw nsw i64 %i.jc to i32
  %i.je = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.jd, i1 true) ; 2 uses
  %i.jf = xor i32 %i.je, 31
  %i.jg = sub nuw nsw i32 81, %i.je
  %i.jh = zext nneg i32 %i.jg to i64              ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !18
  %i.jk = zext i8 %i.jj to i64
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.jh
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !30
  %i.jn = zext i16 %i.jm to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  %i.jo = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !901, !noalias !902 ; 3 uses
  %i.jp = lshr i64 %i.jo, 3
  %i.jq = getelementptr inbounds nuw i8, ptr %6, i64 %i.jp ; 2 uses
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !18, !alias.scope !902, !noalias !901
  %i.js = zext i8 %i.jr to i64
  %i.jt = and i64 %i.jo, 7
  %i.ju = shl nuw nsw i64 %i.jn, %i.jt
  %i.jv = or i64 %i.ju, %i.js
  store i64 %i.jv, ptr %i.jq, align 1, !noalias !901
  %i.jw = add i64 %i.jo, %i.jk                    ; 4 uses
  store i64 %i.jw, ptr %5, align 8, !tbaa !17, !alias.scope !901, !noalias !902
  %i.jx = zext nneg i32 %i.jf to i64              ; 2 uses
  %.neg.i25 = shl nsw i64 -1, %i.jx
  %i.jy = add nsw i64 %.neg.i25, %i.jc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904)
  %i.jz = lshr i64 %i.jw, 3
  %i.ka = getelementptr inbounds nuw i8, ptr %6, i64 %i.jz ; 2 uses
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !18, !alias.scope !904, !noalias !903
  %i.kc = zext i8 %i.kb to i64
  %i.kd = and i64 %i.jw, 7
  %i.ke = shl nsw i64 %i.jy, %i.kd
  %i.kf = or i64 %i.ke, %i.kc
  store i64 %i.kf, ptr %i.ka, align 1, !noalias !903
  %i.kg = add i64 %i.jw, %i.jx
  store i64 %i.kg, ptr %5, align 8, !tbaa !17, !alias.scope !903, !noalias !904
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jh ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !26
  %i.kj = add i32 %i.ki, 1
  store i32 %i.kj, ptr %i.kh, align 4, !tbaa !26
  br label %EmitInsertLen.exit

bb.n:                                             ; preds = %bb.l
  %i.kk = load i8, ptr %i.ch, align 1, !tbaa !18
  %i.kl = zext i8 %i.kk to i64
  %i.km = load i16, ptr %i.ci, align 2, !tbaa !30
  %i.kn = zext i16 %i.km to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !905)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906)
  %i.ko = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !905, !noalias !906 ; 3 uses
  %i.kp = lshr i64 %i.ko, 3
  %i.kq = getelementptr inbounds nuw i8, ptr %6, i64 %i.kp ; 2 uses
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !18, !alias.scope !906, !noalias !905
  %i.ks = zext i8 %i.kr to i64
  %i.kt = and i64 %i.ko, 7
  %i.ku = shl nuw nsw i64 %i.kn, %i.kt
  %i.kv = or i64 %i.ku, %i.ks
  store i64 %i.kv, ptr %i.kq, align 1, !noalias !905
  %i.kw = add i64 %i.ko, %i.kl                    ; 4 uses
  store i64 %i.kw, ptr %5, align 8, !tbaa !17, !alias.scope !905, !noalias !906
  %i.kx = add nsw i64 %i.gs, -2114
  tail call void @llvm.experimental.noalias.scope.decl(metadata !907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !908)
  %i.ky = lshr i64 %i.kw, 3
  %i.kz = getelementptr inbounds nuw i8, ptr %6, i64 %i.ky ; 2 uses
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !18, !alias.scope !908, !noalias !907
  %i.lb = zext i8 %i.la to i64
  %i.lc = and i64 %i.kw, 7
  %i.ld = shl nuw nsw i64 %i.kx, %i.lc
  %i.le = or i64 %i.ld, %i.lb
  store i64 %i.le, ptr %i.kz, align 1, !noalias !907
  %i.lf = add i64 %i.kw, 12
  store i64 %i.lf, ptr %5, align 8, !tbaa !17, !alias.scope !907, !noalias !908
  %i.lg = load i32, ptr %i.cj, align 4, !tbaa !26
  %i.lh = add i32 %i.lg, 1
  store i32 %i.lh, ptr %i.cj, align 4, !tbaa !26
  br label %EmitInsertLen.exit

bb.o:                                             ; preds = %FindMatchLengthWithLimit.exit24
  %i.li = sub i64 %i.gr, %i.cr
  %i.lj = mul i64 %i.li, 50
  %i.lk = icmp ugt i64 %i.lj, %i.gs
  %narrow.not = select i1 %i.lk, i1 true, i1 %i.cs
  br i1 %narrow.not, label %bb.p, label %.thread76.thread118

.thread76.thread118:                              ; preds = %bb.o
  %i.ll = add i64 %.0356.i.ph, -3
  tail call fastcc void @EmitUncompressedMetaBlock(ptr noundef %.0360.i.ph, ptr noundef nonnull %.us-phi219, i64 noundef %i.ll, ptr noundef nonnull %5, ptr noundef %6)
  %i.lm = ptrtoint ptr %.0.i to i64
  %.neg.i = add i64 %.0318.i, %i.lm
  %i.ln = sub i64 %.neg.i, %.us-phi215
  br label %EmitLiterals.exit33

bb.p:                                             ; preds = %bb.o
  %i.lo = icmp ult i64 %i.gs, 22594
  br i1 %i.lo, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.lp = load i8, ptr %i.ce, align 2, !tbaa !18
  %i.lq = zext i8 %i.lp to i64
  %i.lr = load i16, ptr %i.cf, align 4, !tbaa !30
  %i.ls = zext i16 %i.lr to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910)
  %i.lt = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !909, !noalias !910 ; 3 uses
  %i.lu = lshr i64 %i.lt, 3
  %i.lv = getelementptr inbounds nuw i8, ptr %6, i64 %i.lu ; 2 uses
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !18, !alias.scope !910, !noalias !909
  %i.lx = zext i8 %i.lw to i64
  %i.ly = and i64 %i.lt, 7
  %i.lz = shl nuw nsw i64 %i.ls, %i.ly
  %i.ma = or i64 %i.lz, %i.lx
  store i64 %i.ma, ptr %i.lv, align 1, !noalias !909
  %i.mb = add i64 %i.lt, %i.lq                    ; 4 uses
  store i64 %i.mb, ptr %5, align 8, !tbaa !17, !alias.scope !909, !noalias !910
  %i.mc = add nsw i64 %i.gs, -6210
  tail call void @llvm.experimental.noalias.scope.decl(metadata !911)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !912)
  %i.md = lshr i64 %i.mb, 3
  %i.me = getelementptr inbounds nuw i8, ptr %6, i64 %i.md ; 2 uses
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !18, !alias.scope !912, !noalias !911
  %i.mg = zext i8 %i.mf to i64
  %i.mh = and i64 %i.mb, 7
  %i.mi = shl nuw nsw i64 %i.mc, %i.mh
  %i.mj = or i64 %i.mi, %i.mg
  store i64 %i.mj, ptr %i.me, align 1, !noalias !911
  %i.mk = add i64 %i.mb, 14
  store i64 %i.mk, ptr %5, align 8, !tbaa !17, !alias.scope !911, !noalias !912
  %i.ml = load i32, ptr %i.cg, align 8, !tbaa !26
  %i.mm = add i32 %i.ml, 1
  store i32 %i.mm, ptr %i.cg, align 8, !tbaa !26
  br label %EmitInsertLen.exit

bb.r:                                             ; preds = %bb.p
  %i.mn = load i8, ptr %i.cb, align 1, !tbaa !18
  %i.mo = zext i8 %i.mn to i64
  %i.mp = load i16, ptr %i.cc, align 2, !tbaa !30
  %i.mq = zext i16 %i.mp to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !914)
  %i.mr = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !913, !noalias !914 ; 3 uses
  %i.ms = lshr i64 %i.mr, 3
  %i.mt = getelementptr inbounds nuw i8, ptr %6, i64 %i.ms ; 2 uses
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !18, !alias.scope !914, !noalias !913
  %i.mv = zext i8 %i.mu to i64
  %i.mw = and i64 %i.mr, 7
  %i.mx = shl nuw nsw i64 %i.mq, %i.mw
  %i.my = or i64 %i.mx, %i.mv
  store i64 %i.my, ptr %i.mt, align 1, !noalias !913
  %i.mz = add i64 %i.mr, %i.mo                    ; 4 uses
  store i64 %i.mz, ptr %5, align 8, !tbaa !17, !alias.scope !913, !noalias !914
  %i.na = add i64 %i.gs, -22594
  tail call void @llvm.experimental.noalias.scope.decl(metadata !915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !916)
  %i.nb = lshr i64 %i.mz, 3
  %i.nc = getelementptr inbounds nuw i8, ptr %6, i64 %i.nb ; 2 uses
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !18, !alias.scope !916, !noalias !915
  %i.ne = zext i8 %i.nd to i64
  %i.nf = and i64 %i.mz, 7
  %i.ng = shl i64 %i.na, %i.nf
  %i.nh = or i64 %i.ng, %i.ne
  store i64 %i.nh, ptr %i.nc, align 1, !noalias !915
  %i.ni = add i64 %i.mz, 24
  store i64 %i.ni, ptr %5, align 8, !tbaa !17, !alias.scope !915, !noalias !916
  %i.nj = load i32, ptr %i.cd, align 4, !tbaa !26
  %i.nk = add i32 %i.nj, 1
  store i32 %i.nk, ptr %i.cd, align 4, !tbaa !26
  br label %EmitInsertLen.exit

EmitInsertLen.exit:                               ; preds = %bb.r, %bb.q, %bb.n, %bb.m, %bb.k, %bb.i
  %.not277 = icmp eq i64 %.us-phi215, %i.gr
  br i1 %.not277, label %EmitLiterals.exit, label %.lr.ph239

.lr.ph239:                                        ; preds = %EmitInsertLen.exit
  %.promoted = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !917, !noalias !918 ; 2 uses
  %.neg = add i64 %i.gr, 1
  %xtraiter = and i64 %i.gs, 1
  %i.nl = icmp eq i64 %.us-phi215, %.neg
  br i1 %i.nl, label %.epil.preheader, label %.lr.ph239.new

.lr.ph239.new:                                    ; preds = %.lr.ph239
  %unroll_iter = and i64 %i.gs, -2
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph239.new
  %i.nm = phi i64 [ %.promoted, %.lr.ph239.new ], [ %i.ov, %bb.s ] ; 3 uses
  %.0.i31238 = phi i64 [ 0, %.lr.ph239.new ], [ %i.ow, %bb.s ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph239.new ], [ %niter.next.1, %bb.s ]
  %i.nn = getelementptr inbounds nuw i8, ptr %.1361.i, i64 %.0.i31238
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !18
  %i.np = zext i8 %i.no to i64                    ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 %i.np
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !18
  %i.ns = zext i8 %i.nr to i64
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.np
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !30
  %i.nv = zext i16 %i.nu to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !918)
  %i.nw = lshr i64 %i.nm, 3
  %i.nx = getelementptr inbounds nuw i8, ptr %6, i64 %i.nw ; 2 uses
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !18, !alias.scope !918, !noalias !917
  %i.nz = zext i8 %i.ny to i64
  %i.oa = and i64 %i.nm, 7
  %i.ob = shl nuw nsw i64 %i.nv, %i.oa
  %i.oc = or i64 %i.ob, %i.nz
  store i64 %i.oc, ptr %i.nx, align 1, !noalias !917
  %i.od = add i64 %i.nm, %i.ns                    ; 4 uses
  store i64 %i.od, ptr %5, align 8, !tbaa !17, !alias.scope !917, !noalias !918
  %i.oe = getelementptr inbounds nuw i8, ptr %.1361.i, i64 %.0.i31238
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 1
  %i.og = load i8, ptr %i.of, align 1, !tbaa !18
  %i.oh = zext i8 %i.og to i64                    ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 %i.oh
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !18
  %i.ok = zext i8 %i.oj to i64
  %i.ol = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.oh
  %i.om = load i16, ptr %i.ol, align 2, !tbaa !30
  %i.on = zext i16 %i.om to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !920)
  %i.oo = lshr i64 %i.od, 3
  %i.op = getelementptr inbounds nuw i8, ptr %6, i64 %i.oo ; 2 uses
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !18, !alias.scope !920, !noalias !919
  %i.or = zext i8 %i.oq to i64
  %i.os = and i64 %i.od, 7
  %i.ot = shl nuw nsw i64 %i.on, %i.os
  %i.ou = or i64 %i.ot, %i.or
  store i64 %i.ou, ptr %i.op, align 1, !noalias !919
  %i.ov = add i64 %i.od, %i.ok                    ; 3 uses
  store i64 %i.ov, ptr %5, align 8, !tbaa !17, !alias.scope !919, !noalias !920
  %i.ow = add nuw i64 %.0.i31238, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %EmitLiterals.exit.loopexit.unr-lcssa, label %bb.s, !llvm.loop !5

EmitLiterals.exit.loopexit.unr-lcssa:             ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %EmitLiterals.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %EmitLiterals.exit.loopexit.unr-lcssa, %.lr.ph239
  %.epil.init = phi i64 [ %.promoted, %.lr.ph239 ], [ %i.ov, %EmitLiterals.exit.loopexit.unr-lcssa ] ; 3 uses
  %.0.i31238.epil.init = phi i64 [ 0, %.lr.ph239 ], [ %i.ow, %EmitLiterals.exit.loopexit.unr-lcssa ]
  %lcmp.mod628 = trunc i64 %i.gs to i1
  tail call void @llvm.assume(i1 %lcmp.mod628)
  %i.ox = getelementptr inbounds nuw i8, ptr %.1361.i, i64 %.0.i31238.epil.init
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !18
  %i.oz = zext i8 %i.oy to i64                    ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 %i.oz
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !18
  %i.pc = zext i8 %i.pb to i64
  %i.pd = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.oz
  %i.pe = load i16, ptr %i.pd, align 2, !tbaa !30
  %i.pf = zext i16 %i.pe to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !918)
  %i.pg = lshr i64 %.epil.init, 3
  %i.ph = getelementptr inbounds nuw i8, ptr %6, i64 %i.pg ; 2 uses
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !18, !alias.scope !918, !noalias !917
  %i.pj = zext i8 %i.pi to i64
  %i.pk = and i64 %.epil.init, 7
  %i.pl = shl nuw nsw i64 %i.pf, %i.pk
  %i.pm = or i64 %i.pl, %i.pj
  store i64 %i.pm, ptr %i.ph, align 1, !noalias !917
  %i.pn = add i64 %.epil.init, %i.pc
  store i64 %i.pn, ptr %5, align 8, !tbaa !17, !alias.scope !917, !noalias !918
  br label %EmitLiterals.exit

EmitLiterals.exit:                                ; preds = %.epil.preheader, %EmitLiterals.exit.loopexit.unr-lcssa, %EmitInsertLen.exit
  %i.po = icmp eq i32 %.0344.i.fr, %i.gq
  br i1 %i.po, label %bb.t, label %bb.u

bb.t:                                             ; preds = %EmitLiterals.exit
  %i.pp = load i8, ptr %i.ck, align 8, !tbaa !18
  %i.pq = zext i8 %i.pp to i64
  %i.pr = load i16, ptr %i.cl, align 8, !tbaa !30
  %i.ps = zext i16 %i.pr to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !922)
  %i.pt = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !921, !noalias !922 ; 3 uses
  %i.pu = lshr i64 %i.pt, 3
  %i.pv = getelementptr inbounds nuw i8, ptr %6, i64 %i.pu ; 2 uses
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !18, !alias.scope !922, !noalias !921
  %i.px = zext i8 %i.pw to i64
  %i.py = and i64 %i.pt, 7
  %i.pz = shl nuw nsw i64 %i.ps, %i.py
  %i.qa = or i64 %i.pz, %i.px
  store i64 %i.qa, ptr %i.pv, align 1, !noalias !921
  %i.qb = add i64 %i.pt, %i.pq
  %i.qc = load i32, ptr %i.cm, align 8, !tbaa !26
  %i.qd = add i32 %i.qc, 1
  store i32 %i.qd, ptr %i.cm, align 8, !tbaa !26
  br label %bb.v

bb.u:                                             ; preds = %EmitLiterals.exit
  %sext.i = shl i64 %.us-phi218, 32
  %i.qe = ashr exact i64 %sext.i, 32
  %i.qf = add nsw i64 %i.qe, 3                    ; 3 uses
  %i.qg = trunc i64 %i.qf to i32
  %i.qh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.qg, i1 true) ; 2 uses
  %i.qi = sub nsw i32 30, %i.qh
  %i.qj = zext i32 %i.qi to i64                   ; 3 uses
  %i.qk = lshr i64 %i.qf, %i.qj
  %i.ql = and i64 %i.qk, 1                        ; 2 uses
  %i.qm = or disjoint i64 %i.ql, 2
  %i.qn = shl i64 %i.qm, %i.qj
  %i.qo = shl nuw nsw i32 %i.qh, 1
  %i.qp = sub nsw i32 58, %i.qo
  %i.qq = zext i32 %i.qp to i64
  %i.qr = or disjoint i64 %i.ql, %i.qq
  %i.qs = add nuw nsw i64 %i.qr, 80               ; 3 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.qs
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !18
  %i.qv = zext i8 %i.qu to i64
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.qs
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !30
  %i.qy = zext i16 %i.qx to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924)
  %i.qz = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !923, !noalias !924 ; 3 uses
  %i.ra = lshr i64 %i.qz, 3
  %i.rb = getelementptr inbounds nuw i8, ptr %6, i64 %i.ra ; 2 uses
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !18, !alias.scope !924, !noalias !923
  %i.rd = zext i8 %i.rc to i64
  %i.re = and i64 %i.qz, 7
  %i.rf = shl nuw nsw i64 %i.qy, %i.re
  %i.rg = or i64 %i.rf, %i.rd
  store i64 %i.rg, ptr %i.rb, align 1, !noalias !923
  %i.rh = add i64 %i.qz, %i.qv                    ; 4 uses
  store i64 %i.rh, ptr %5, align 8, !tbaa !17, !alias.scope !923, !noalias !924
  %i.ri = sub i64 %i.qf, %i.qn
  %i.rj = lshr i64 %i.rh, 3
  %i.rk = getelementptr inbounds nuw i8, ptr %6, i64 %i.rj ; 2 uses
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !18, !alias.scope !925, !noalias !926
  %i.rm = zext i8 %i.rl to i64
  %i.rn = and i64 %i.rh, 7
  %i.ro = shl i64 %i.ri, %i.rn
  %i.rp = or i64 %i.ro, %i.rm
  store i64 %i.rp, ptr %i.rk, align 1, !noalias !926
  %i.rq = add i64 %i.rh, %i.qj
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.qs ; 2 uses
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !26
  %i.rt = add i32 %i.rs, 1
  store i32 %i.rt, ptr %i.rr, align 4, !tbaa !26
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ru = phi i64 [ %i.qb, %bb.t ], [ %i.rq, %bb.u ] ; 16 uses
  %.1345.i = phi i32 [ %.0344.i.fr, %bb.t ], [ %i.gq, %bb.u ] ; 3 uses
  store i64 %i.ru, ptr %5, align 8, !tbaa !17, !noalias !19
  %i.rv = icmp ult i64 %i.gp, 12
  br i1 %i.rv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.rw = add nsw i64 %.2.i20, 1                  ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rw
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !18
  %i.rz = zext i8 %i.ry to i64
  %i.sa = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.rw
  %i.sb = load i16, ptr %i.sa, align 2, !tbaa !30
  %i.sc = zext i16 %i.sb to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !928)
  %i.sd = lshr i64 %i.ru, 3
  %i.se = getelementptr inbounds nuw i8, ptr %6, i64 %i.sd ; 2 uses
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !18, !alias.scope !928, !noalias !927
  %i.sg = zext i8 %i.sf to i64
  %i.sh = and i64 %i.ru, 7
  %i.si = shl nuw nsw i64 %i.sc, %i.sh
  %i.sj = or i64 %i.si, %i.sg
  store i64 %i.sj, ptr %i.se, align 1, !noalias !927
  %i.sk = add i64 %i.ru, %i.rz
  store i64 %i.sk, ptr %5, align 8, !tbaa !17, !alias.scope !927, !noalias !928
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.rw ; 2 uses
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !26
  %i.sn = add i32 %i.sm, 1
  store i32 %i.sn, ptr %i.sl, align 4, !tbaa !26
  br label %EmitCopyLenLastDistance.exit

bb.x:                                             ; preds = %bb.v
  %i.so = icmp ult i64 %i.gp, 72
  br i1 %i.so, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.sp = add nsw i64 %.2.i20, -3                 ; 3 uses
  %i.sq = trunc nuw nsw i64 %i.sp to i32
  %i.sr = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.sq, i1 true)
  %i.ss = sub nuw nsw i32 30, %i.sr               ; 2 uses
  %i.st = zext nneg i32 %i.ss to i64              ; 3 uses
  %i.su = lshr i64 %i.sp, %i.st                   ; 2 uses
  %i.sv = shl nuw nsw i32 %i.ss, 1
  %narrow278 = add nuw nsw i32 %i.sv, 4
  %i.sw = zext nneg i32 %narrow278 to i64
  %i.sx = add nuw nsw i64 %i.su, %i.sw            ; 3 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.sx
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !18
  %i.ta = zext i8 %i.sz to i64
  %i.tb = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.sx
  %i.tc = load i16, ptr %i.tb, align 2, !tbaa !30
  %i.td = zext i16 %i.tc to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !930)
  %i.te = lshr i64 %i.ru, 3
  %i.tf = getelementptr inbounds nuw i8, ptr %6, i64 %i.te ; 2 uses
  %i.tg = load i8, ptr %i.tf, align 1, !tbaa !18, !alias.scope !930, !noalias !929
  %i.th = zext i8 %i.tg to i64
  %i.ti = and i64 %i.ru, 7
  %i.tj = shl nuw nsw i64 %i.td, %i.ti
  %i.tk = or i64 %i.tj, %i.th
  store i64 %i.tk, ptr %i.tf, align 1, !noalias !929
  %i.tl = add i64 %i.ru, %i.ta                    ; 4 uses
  store i64 %i.tl, ptr %5, align 8, !tbaa !17, !alias.scope !929, !noalias !930
  %i.tm = shl nuw nsw i64 %i.su, %i.st
  %i.tn = sub nsw i64 %i.sp, %i.tm
  tail call void @llvm.experimental.noalias.scope.decl(metadata !931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !932)
  %i.to = lshr i64 %i.tl, 3
  %i.tp = getelementptr inbounds nuw i8, ptr %6, i64 %i.to ; 2 uses
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !18, !alias.scope !932, !noalias !931
  %i.tr = zext i8 %i.tq to i64
  %i.ts = and i64 %i.tl, 7
  %i.tt = shl nsw i64 %i.tn, %i.ts
  %i.tu = or i64 %i.tt, %i.tr
  store i64 %i.tu, ptr %i.tp, align 1, !noalias !931
  %i.tv = add i64 %i.tl, %i.st
  store i64 %i.tv, ptr %5, align 8, !tbaa !17, !alias.scope !931, !noalias !932
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.sx ; 2 uses
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !26
  %i.ty = add i32 %i.tx, 1
  store i32 %i.ty, ptr %i.tw, align 4, !tbaa !26
  br label %EmitCopyLenLastDistance.exit

bb.z:                                             ; preds = %bb.x
  %i.tz = icmp ult i64 %i.gp, 136
  br i1 %i.tz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ua = add nsw i64 %.2.i20, -3                 ; 2 uses
  %i.ub = lshr i64 %i.ua, 5
end_hunk_4
begin_hunk_5_@BrotliCompressFragmentFastImpl13:bb.a
  store i8 %i.ako, ptr %i.akf, align 1, !tbaa !18
  %i.akp = sub nuw i64 %.030.i, %i.ajz            ; 2 uses
  %i.akq = lshr i32 %.02429.i, %i.akj
  %i.akr = add i64 %i.ajz, %.02528.i
  %.not.i56 = icmp eq i64 %i.akp, 0
  br i1 %.not.i56, label %UpdateBits.exit.loopexit, label %bb.ax, !llvm.loop !1

bb.ay:                                            ; preds = %ShouldMergeBlock.exit, %bb.aq, %.thread103
  %.0.i.lcssa632633 = ptrtoaddr ptr %.0.i to i64  ; 2 uses
  %.7.i.lcssa634635 = ptrtoaddr ptr %.7.i to i64  ; 2 uses
  %i.aks = icmp ult ptr %.7.i, %i.ct
  br i1 %i.aks, label %bb.az, label %EmitLiterals.exit33

bb.az:                                            ; preds = %bb.ay
  %i.akt = ptrtoint ptr %i.ct to i64
  %i.aku = ptrtoint ptr %.7.i to i64              ; 2 uses
  %i.akv = sub i64 %i.akt, %i.aku                 ; 18 uses
  %i.akw = icmp ult i64 %i.akv, 6210
  br i1 %i.akw, label %bb.ba, label %bb.bi, !prof !23

bb.ba:                                            ; preds = %bb.az
  %i.akx = icmp samesign ult i64 %i.akv, 6
  br i1 %i.akx, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.aky = or disjoint i64 %i.akv, 40             ; 3 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aky
  %i.ala = load i8, ptr %i.akz, align 1, !tbaa !18
  %i.alb = zext i8 %i.ala to i64
  %i.alc = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.aky
  %i.ald = load i16, ptr %i.alc, align 2, !tbaa !30
  %i.ale = zext i16 %i.ald to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !969)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970)
  %i.alf = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !969, !noalias !970 ; 3 uses
  %i.alg = lshr i64 %i.alf, 3
  %i.alh = getelementptr inbounds nuw i8, ptr %6, i64 %i.alg ; 2 uses
  %i.ali = load i8, ptr %i.alh, align 1, !tbaa !18, !alias.scope !970, !noalias !969
  %i.alj = zext i8 %i.ali to i64
  %i.alk = and i64 %i.alf, 7
  %i.all = shl nuw nsw i64 %i.ale, %i.alk
  %i.alm = or i64 %i.all, %i.alj
  store i64 %i.alm, ptr %i.alh, align 1, !noalias !969
  %i.aln = add i64 %i.alf, %i.alb
  store i64 %i.aln, ptr %5, align 8, !tbaa !17, !alias.scope !969, !noalias !970
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aky ; 2 uses
  %i.alp = load i32, ptr %i.alo, align 4, !tbaa !26
  %i.alq = add i32 %i.alp, 1
  store i32 %i.alq, ptr %i.alo, align 4, !tbaa !26
  br label %EmitInsertLen.exit27

bb.bc:                                            ; preds = %bb.ba
  %i.alr = icmp samesign ult i64 %i.akv, 130
  br i1 %i.alr, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.als = add nsw i64 %i.akv, -2                 ; 3 uses
  %i.alt = trunc nuw nsw i64 %i.als to i32
  %i.alu = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.alt, i1 true)
  %i.alv = sub nuw nsw i32 30, %i.alu             ; 2 uses
  %i.alw = zext nneg i32 %i.alv to i64            ; 3 uses
  %i.alx = lshr i64 %i.als, %i.alw                ; 2 uses
  %i.aly = shl nuw nsw i32 %i.alv, 1
  %narrow280 = add nuw nsw i32 %i.aly, 42
  %i.alz = zext nneg i32 %narrow280 to i64
  %i.ama = add nuw nsw i64 %i.alx, %i.alz         ; 3 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ama
  %i.amc = load i8, ptr %i.amb, align 1, !tbaa !18
  %i.amd = zext i8 %i.amc to i64
  %i.ame = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ama
  %i.amf = load i16, ptr %i.ame, align 2, !tbaa !30
  %i.amg = zext i16 %i.amf to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !971)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !972)
  %i.amh = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !971, !noalias !972 ; 3 uses
  %i.ami = lshr i64 %i.amh, 3
  %i.amj = getelementptr inbounds nuw i8, ptr %6, i64 %i.ami ; 2 uses
  %i.amk = load i8, ptr %i.amj, align 1, !tbaa !18, !alias.scope !972, !noalias !971
  %i.aml = zext i8 %i.amk to i64
  %i.amm = and i64 %i.amh, 7
  %i.amn = shl nuw nsw i64 %i.amg, %i.amm
  %i.amo = or i64 %i.amn, %i.aml
  store i64 %i.amo, ptr %i.amj, align 1, !noalias !971
  %i.amp = add i64 %i.amh, %i.amd                 ; 4 uses
  store i64 %i.amp, ptr %5, align 8, !tbaa !17, !alias.scope !971, !noalias !972
  %i.amq = shl nuw nsw i64 %i.alx, %i.alw
  %i.amr = sub nsw i64 %i.als, %i.amq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !974)
  %i.ams = lshr i64 %i.amp, 3
  %i.amt = getelementptr inbounds nuw i8, ptr %6, i64 %i.ams ; 2 uses
  %i.amu = load i8, ptr %i.amt, align 1, !tbaa !18, !alias.scope !974, !noalias !973
  %i.amv = zext i8 %i.amu to i64
  %i.amw = and i64 %i.amp, 7
  %i.amx = shl nsw i64 %i.amr, %i.amw
  %i.amy = or i64 %i.amx, %i.amv
  store i64 %i.amy, ptr %i.amt, align 1, !noalias !973
  %i.amz = add i64 %i.amp, %i.alw
  store i64 %i.amz, ptr %5, align 8, !tbaa !17, !alias.scope !973, !noalias !974
  %i.ana = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ama ; 2 uses
  %i.anb = load i32, ptr %i.ana, align 4, !tbaa !26
  %i.anc = add i32 %i.anb, 1
  store i32 %i.anc, ptr %i.ana, align 4, !tbaa !26
  br label %EmitInsertLen.exit27

bb.be:                                            ; preds = %bb.bc
  %i.and = icmp samesign ult i64 %i.akv, 2114
  br i1 %i.and, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ane = add nsw i64 %i.akv, -66                ; 2 uses
  %i.anf = trunc nuw nsw i64 %i.ane to i32
  %i.ang = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.anf, i1 true) ; 2 uses
  %i.anh = xor i32 %i.ang, 31
  %i.ani = sub nuw nsw i32 81, %i.ang
  %i.anj = zext nneg i32 %i.ani to i64            ; 3 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.anj
  %i.anl = load i8, ptr %i.ank, align 1, !tbaa !18
  %i.anm = zext i8 %i.anl to i64
  %i.ann = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.anj
  %i.ano = load i16, ptr %i.ann, align 2, !tbaa !30
  %i.anp = zext i16 %i.ano to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !976)
  %i.anq = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !975, !noalias !976 ; 3 uses
  %i.anr = lshr i64 %i.anq, 3
  %i.ans = getelementptr inbounds nuw i8, ptr %6, i64 %i.anr ; 2 uses
  %i.ant = load i8, ptr %i.ans, align 1, !tbaa !18, !alias.scope !976, !noalias !975
  %i.anu = zext i8 %i.ant to i64
  %i.anv = and i64 %i.anq, 7
  %i.anw = shl nuw nsw i64 %i.anp, %i.anv
  %i.anx = or i64 %i.anw, %i.anu
  store i64 %i.anx, ptr %i.ans, align 1, !noalias !975
  %i.any = add i64 %i.anq, %i.anm                 ; 4 uses
  store i64 %i.any, ptr %5, align 8, !tbaa !17, !alias.scope !975, !noalias !976
  %i.anz = zext nneg i32 %i.anh to i64            ; 2 uses
  %.neg.i26 = shl nsw i64 -1, %i.anz
  %i.aoa = add nsw i64 %.neg.i26, %i.ane
  tail call void @llvm.experimental.noalias.scope.decl(metadata !977)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  %i.aob = lshr i64 %i.any, 3
  %i.aoc = getelementptr inbounds nuw i8, ptr %6, i64 %i.aob ; 2 uses
  %i.aod = load i8, ptr %i.aoc, align 1, !tbaa !18, !alias.scope !978, !noalias !977
  %i.aoe = zext i8 %i.aod to i64
  %i.aof = and i64 %i.any, 7
  %i.aog = shl nsw i64 %i.aoa, %i.aof
  %i.aoh = or i64 %i.aog, %i.aoe
  store i64 %i.aoh, ptr %i.aoc, align 1, !noalias !977
  %i.aoi = add i64 %i.any, %i.anz
  store i64 %i.aoi, ptr %5, align 8, !tbaa !17, !alias.scope !977, !noalias !978
  %i.aoj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.anj ; 2 uses
  %i.aok = load i32, ptr %i.aoj, align 4, !tbaa !26
  %i.aol = add i32 %i.aok, 1
  store i32 %i.aol, ptr %i.aoj, align 4, !tbaa !26
  br label %EmitInsertLen.exit27

bb.bg:                                            ; preds = %bb.be
  %i.aom = load i8, ptr %i.ch, align 1, !tbaa !18
  %i.aon = zext i8 %i.aom to i64
  %i.aoo = load i16, ptr %i.ci, align 2, !tbaa !30
  %i.aop = zext i16 %i.aoo to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !979)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !980)
  %i.aoq = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !979, !noalias !980 ; 3 uses
  %i.aor = lshr i64 %i.aoq, 3
  %i.aos = getelementptr inbounds nuw i8, ptr %6, i64 %i.aor ; 2 uses
  %i.aot = load i8, ptr %i.aos, align 1, !tbaa !18, !alias.scope !980, !noalias !979
  %i.aou = zext i8 %i.aot to i64
  %i.aov = and i64 %i.aoq, 7
  %i.aow = shl nuw nsw i64 %i.aop, %i.aov
  %i.aox = or i64 %i.aow, %i.aou
  store i64 %i.aox, ptr %i.aos, align 1, !noalias !979
  %i.aoy = add i64 %i.aoq, %i.aon                 ; 4 uses
  store i64 %i.aoy, ptr %5, align 8, !tbaa !17, !alias.scope !979, !noalias !980
  %i.aoz = add nsw i64 %i.akv, -2114
  tail call void @llvm.experimental.noalias.scope.decl(metadata !981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !982)
  %i.apa = lshr i64 %i.aoy, 3
  %i.apb = getelementptr inbounds nuw i8, ptr %6, i64 %i.apa ; 2 uses
  %i.apc = load i8, ptr %i.apb, align 1, !tbaa !18, !alias.scope !982, !noalias !981
  %i.apd = zext i8 %i.apc to i64
  %i.ape = and i64 %i.aoy, 7
  %i.apf = shl nuw nsw i64 %i.aoz, %i.ape
  %i.apg = or i64 %i.apf, %i.apd
  store i64 %i.apg, ptr %i.apb, align 1, !noalias !981
  %i.aph = add i64 %i.aoy, 12
  store i64 %i.aph, ptr %5, align 8, !tbaa !17, !alias.scope !981, !noalias !982
  %i.api = load i32, ptr %i.cj, align 4, !tbaa !26
  %i.apj = add i32 %i.api, 1
  store i32 %i.apj, ptr %i.cj, align 4, !tbaa !26
  br label %EmitInsertLen.exit27

EmitInsertLen.exit27:                             ; preds = %bb.bb, %bb.bd, %bb.bf, %bb.bg
  %.not281 = icmp eq ptr %i.ct, %.7.i
  br i1 %.not281, label %EmitLiterals.exit33, label %.lr.ph272

.lr.ph272:                                        ; preds = %EmitInsertLen.exit27
  %.promoted273 = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !983, !noalias !984 ; 2 uses
  %i.apk = add nsw i64 %.0358.i, -1
  %i.apl = add i64 %i.apk, %.0.i.lcssa632633
  %xtraiter645 = and i64 %i.akv, 1
  %i.apm = icmp eq i64 %i.apl, %.7.i.lcssa634635
  br i1 %i.apm, label %.epil.preheader643, label %.lr.ph272.new

.lr.ph272.new:                                    ; preds = %.lr.ph272
  %unroll_iter650 = and i64 %i.akv, 8190
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.lr.ph272.new
  %i.apn = phi i64 [ %.promoted273, %.lr.ph272.new ], [ %i.aqw, %bb.bh ] ; 3 uses
  %.0.i32271 = phi i64 [ 0, %.lr.ph272.new ], [ %i.aqx, %bb.bh ] ; 3 uses
  %niter651 = phi i64 [ 0, %.lr.ph272.new ], [ %niter651.next.1, %bb.bh ]
  %i.apo = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32271
  %i.app = load i8, ptr %i.apo, align 1, !tbaa !18
  %i.apq = zext i8 %i.app to i64                  ; 2 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %0, i64 %i.apq
  %i.aps = load i8, ptr %i.apr, align 1, !tbaa !18
  %i.apt = zext i8 %i.aps to i64
  %i.apu = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.apq
  %i.apv = load i16, ptr %i.apu, align 2, !tbaa !30
  %i.apw = zext i16 %i.apv to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !984)
  %i.apx = lshr i64 %i.apn, 3
  %i.apy = getelementptr inbounds nuw i8, ptr %6, i64 %i.apx ; 2 uses
  %i.apz = load i8, ptr %i.apy, align 1, !tbaa !18, !alias.scope !984, !noalias !983
  %i.aqa = zext i8 %i.apz to i64
  %i.aqb = and i64 %i.apn, 7
  %i.aqc = shl nuw nsw i64 %i.apw, %i.aqb
  %i.aqd = or i64 %i.aqc, %i.aqa
  store i64 %i.aqd, ptr %i.apy, align 1, !noalias !983
  %i.aqe = add i64 %i.apn, %i.apt                 ; 4 uses
  store i64 %i.aqe, ptr %5, align 8, !tbaa !17, !alias.scope !983, !noalias !984
  %i.aqf = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32271
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqf, i64 1
  %i.aqh = load i8, ptr %i.aqg, align 1, !tbaa !18
  %i.aqi = zext i8 %i.aqh to i64                  ; 2 uses
  %i.aqj = getelementptr inbounds nuw i8, ptr %0, i64 %i.aqi
  %i.aqk = load i8, ptr %i.aqj, align 1, !tbaa !18
  %i.aql = zext i8 %i.aqk to i64
  %i.aqm = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.aqi
  %i.aqn = load i16, ptr %i.aqm, align 2, !tbaa !30
  %i.aqo = zext i16 %i.aqn to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !985)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !986)
  %i.aqp = lshr i64 %i.aqe, 3
  %i.aqq = getelementptr inbounds nuw i8, ptr %6, i64 %i.aqp ; 2 uses
  %i.aqr = load i8, ptr %i.aqq, align 1, !tbaa !18, !alias.scope !986, !noalias !985
  %i.aqs = zext i8 %i.aqr to i64
  %i.aqt = and i64 %i.aqe, 7
  %i.aqu = shl nuw nsw i64 %i.aqo, %i.aqt
  %i.aqv = or i64 %i.aqu, %i.aqs
  store i64 %i.aqv, ptr %i.aqq, align 1, !noalias !985
  %i.aqw = add i64 %i.aqe, %i.aql                 ; 3 uses
  store i64 %i.aqw, ptr %5, align 8, !tbaa !17, !alias.scope !985, !noalias !986
  %i.aqx = add nuw i64 %.0.i32271, 2              ; 2 uses
  %niter651.next.1 = add i64 %niter651, 2         ; 2 uses
  %niter651.ncmp.1 = icmp eq i64 %niter651.next.1, %unroll_iter650
  br i1 %niter651.ncmp.1, label %EmitLiterals.exit33.loopexit.unr-lcssa, label %bb.bh, !llvm.loop !5

bb.bi:                                            ; preds = %bb.az
  %i.aqy = sub i64 %i.aku, %i.cr
  %i.aqz = mul i64 %i.aqy, 50
  %i.ara = icmp ugt i64 %i.aqz, %i.akv
  %narrow.not129 = select i1 %i.ara, i1 true, i1 %i.cs
  br i1 %narrow.not129, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.arb = add i64 %.0356.i.ph, -3
  tail call fastcc void @EmitUncompressedMetaBlock(ptr noundef %.0360.i.ph, ptr noundef nonnull %i.ct, i64 noundef %i.arb, ptr noundef nonnull %5, ptr noundef %6)
  br label %EmitLiterals.exit33

bb.bk:                                            ; preds = %bb.bi
  %i.arc = icmp ult i64 %i.akv, 22594
  br i1 %i.arc, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ard = load i8, ptr %i.ce, align 2, !tbaa !18
  %i.are = zext i8 %i.ard to i64
  %i.arf = load i16, ptr %i.cf, align 4, !tbaa !30
  %i.arg = zext i16 %i.arf to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !988)
  %i.arh = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !987, !noalias !988 ; 3 uses
  %i.ari = lshr i64 %i.arh, 3
  %i.arj = getelementptr inbounds nuw i8, ptr %6, i64 %i.ari ; 2 uses
  %i.ark = load i8, ptr %i.arj, align 1, !tbaa !18, !alias.scope !988, !noalias !987
  %i.arl = zext i8 %i.ark to i64
  %i.arm = and i64 %i.arh, 7
  %i.arn = shl nuw nsw i64 %i.arg, %i.arm
  %i.aro = or i64 %i.arn, %i.arl
  store i64 %i.aro, ptr %i.arj, align 1, !noalias !987
  %i.arp = add i64 %i.arh, %i.are                 ; 4 uses
  store i64 %i.arp, ptr %5, align 8, !tbaa !17, !alias.scope !987, !noalias !988
  %i.arq = add nsw i64 %i.akv, -6210
  %i.arr = lshr i64 %i.arp, 3
  %i.ars = getelementptr inbounds nuw i8, ptr %6, i64 %i.arr ; 2 uses
  %i.art = load i8, ptr %i.ars, align 1, !tbaa !18, !alias.scope !989, !noalias !990
  %i.aru = zext i8 %i.art to i64
  %i.arv = and i64 %i.arp, 7
  %i.arw = shl nuw nsw i64 %i.arq, %i.arv
  %i.arx = or i64 %i.arw, %i.aru
  store i64 %i.arx, ptr %i.ars, align 1, !noalias !990
  %i.ary = add i64 %i.arp, 14
  %i.arz = load i32, ptr %i.cg, align 8, !tbaa !26
  %i.asa = add i32 %i.arz, 1
  store i32 %i.asa, ptr %i.cg, align 8, !tbaa !26
  br label %EmitLongInsertLen.exit30

bb.bm:                                            ; preds = %bb.bk
  %i.asb = load i8, ptr %i.cb, align 1, !tbaa !18
  %i.asc = zext i8 %i.asb to i64
  %i.asd = load i16, ptr %i.cc, align 2, !tbaa !30
  %i.ase = zext i16 %i.asd to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !991)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !992)
  %i.asf = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !991, !noalias !992 ; 3 uses
  %i.asg = lshr i64 %i.asf, 3
  %i.ash = getelementptr inbounds nuw i8, ptr %6, i64 %i.asg ; 2 uses
  %i.asi = load i8, ptr %i.ash, align 1, !tbaa !18, !alias.scope !992, !noalias !991
  %i.asj = zext i8 %i.asi to i64
  %i.ask = and i64 %i.asf, 7
  %i.asl = shl nuw nsw i64 %i.ase, %i.ask
  %i.asm = or i64 %i.asl, %i.asj
  store i64 %i.asm, ptr %i.ash, align 1, !noalias !991
  %i.asn = add i64 %i.asf, %i.asc                 ; 4 uses
  store i64 %i.asn, ptr %5, align 8, !tbaa !17, !alias.scope !991, !noalias !992
  %i.aso = add i64 %i.akv, -22594
  %i.asp = lshr i64 %i.asn, 3
  %i.asq = getelementptr inbounds nuw i8, ptr %6, i64 %i.asp ; 2 uses
  %i.asr = load i8, ptr %i.asq, align 1, !tbaa !18, !alias.scope !993, !noalias !994
  %i.ass = zext i8 %i.asr to i64
  %i.ast = and i64 %i.asn, 7
  %i.asu = shl i64 %i.aso, %i.ast
  %i.asv = or i64 %i.asu, %i.ass
  store i64 %i.asv, ptr %i.asq, align 1, !noalias !994
  %i.asw = add i64 %i.asn, 24
  %i.asx = load i32, ptr %i.cd, align 4, !tbaa !26
  %i.asy = add i32 %i.asx, 1
  store i32 %i.asy, ptr %i.cd, align 4, !tbaa !26
  br label %EmitLongInsertLen.exit30

EmitLongInsertLen.exit30:                         ; preds = %bb.bl, %bb.bm
  %.sink358 = phi i64 [ %i.ary, %bb.bl ], [ %i.asw, %bb.bm ] ; 3 uses
  store i64 %.sink358, ptr %5, align 8, !tbaa !17, !noalias !19
  %i.asz = add nsw i64 %.0358.i, -1
  %i.ata = add i64 %i.asz, %.0.i.lcssa632633
  %xtraiter636 = and i64 %i.akv, 1
  %i.atb = icmp eq i64 %i.ata, %.7.i.lcssa634635
  br i1 %i.atb, label %.epil.preheader629, label %EmitLongInsertLen.exit30.new

EmitLongInsertLen.exit30.new:                     ; preds = %EmitLongInsertLen.exit30
  %unroll_iter641 = and i64 %i.akv, -2
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %EmitLongInsertLen.exit30.new
  %.0.i34270 = phi i64 [ 0, %EmitLongInsertLen.exit30.new ], [ %i.aum, %bb.bn ] ; 3 uses
  %i.atc = phi i64 [ %.sink358, %EmitLongInsertLen.exit30.new ], [ %i.aul, %bb.bn ] ; 3 uses
  %niter642 = phi i64 [ 0, %EmitLongInsertLen.exit30.new ], [ %niter642.next.1, %bb.bn ]
  %i.atd = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34270
  %i.ate = load i8, ptr %i.atd, align 1, !tbaa !18
  %i.atf = zext i8 %i.ate to i64                  ; 2 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %0, i64 %i.atf
  %i.ath = load i8, ptr %i.atg, align 1, !tbaa !18
  %i.ati = zext i8 %i.ath to i64
  %i.atj = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.atf
  %i.atk = load i16, ptr %i.atj, align 2, !tbaa !30
  %i.atl = zext i16 %i.atk to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !996)
  %i.atm = lshr i64 %i.atc, 3
  %i.atn = getelementptr inbounds nuw i8, ptr %6, i64 %i.atm ; 2 uses
  %i.ato = load i8, ptr %i.atn, align 1, !tbaa !18, !alias.scope !996, !noalias !995
  %i.atp = zext i8 %i.ato to i64
  %i.atq = and i64 %i.atc, 7
  %i.atr = shl nuw nsw i64 %i.atl, %i.atq
  %i.ats = or i64 %i.atr, %i.atp
  store i64 %i.ats, ptr %i.atn, align 1, !noalias !995
  %i.att = add i64 %i.atc, %i.ati                 ; 4 uses
  store i64 %i.att, ptr %5, align 8, !tbaa !17, !alias.scope !995, !noalias !996
  %i.atu = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34270
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atu, i64 1
  %i.atw = load i8, ptr %i.atv, align 1, !tbaa !18
  %i.atx = zext i8 %i.atw to i64                  ; 2 uses
  %i.aty = getelementptr inbounds nuw i8, ptr %0, i64 %i.atx
  %i.atz = load i8, ptr %i.aty, align 1, !tbaa !18
  %i.aua = zext i8 %i.atz to i64
  %i.aub = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.atx
  %i.auc = load i16, ptr %i.aub, align 2, !tbaa !30
  %i.aud = zext i16 %i.auc to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !998)
  %i.aue = lshr i64 %i.att, 3
  %i.auf = getelementptr inbounds nuw i8, ptr %6, i64 %i.aue ; 2 uses
  %i.aug = load i8, ptr %i.auf, align 1, !tbaa !18, !alias.scope !998, !noalias !997
  %i.auh = zext i8 %i.aug to i64
  %i.aui = and i64 %i.att, 7
  %i.auj = shl nuw nsw i64 %i.aud, %i.aui
  %i.auk = or i64 %i.auj, %i.auh
  store i64 %i.auk, ptr %i.auf, align 1, !noalias !997
  %i.aul = add i64 %i.att, %i.aua                 ; 3 uses
  store i64 %i.aul, ptr %5, align 8, !tbaa !17, !alias.scope !997, !noalias !998
  %i.aum = add nuw i64 %.0.i34270, 2              ; 2 uses
  %niter642.next.1 = add i64 %niter642, 2         ; 2 uses
  %niter642.ncmp.1 = icmp eq i64 %niter642.next.1, %unroll_iter641
  br i1 %niter642.ncmp.1, label %EmitLiterals.exit33.loopexit560.unr-lcssa, label %bb.bn, !llvm.loop !5

EmitLiterals.exit33.loopexit.unr-lcssa:           ; preds = %bb.bh
  %lcmp.mod648.not = icmp eq i64 %xtraiter645, 0
  br i1 %lcmp.mod648.not, label %EmitLiterals.exit33, label %.epil.preheader643

.epil.preheader643:                               ; preds = %EmitLiterals.exit33.loopexit.unr-lcssa, %.lr.ph272
  %.epil.init647 = phi i64 [ %.promoted273, %.lr.ph272 ], [ %i.aqw, %EmitLiterals.exit33.loopexit.unr-lcssa ] ; 3 uses
  %.0.i32271.epil.init = phi i64 [ 0, %.lr.ph272 ], [ %i.aqx, %EmitLiterals.exit33.loopexit.unr-lcssa ]
  %lcmp.mod649 = trunc i64 %i.akv to i1
  tail call void @llvm.assume(i1 %lcmp.mod649)
  %i.aun = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32271.epil.init
  %i.auo = load i8, ptr %i.aun, align 1, !tbaa !18
  %i.aup = zext i8 %i.auo to i64                  ; 2 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %0, i64 %i.aup
  %i.aur = load i8, ptr %i.auq, align 1, !tbaa !18
  %i.aus = zext i8 %i.aur to i64
  %i.aut = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.aup
  %i.auu = load i16, ptr %i.aut, align 2, !tbaa !30
  %i.auv = zext i16 %i.auu to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !984)
  %i.auw = lshr i64 %.epil.init647, 3
  %i.aux = getelementptr inbounds nuw i8, ptr %6, i64 %i.auw ; 2 uses
  %i.auy = load i8, ptr %i.aux, align 1, !tbaa !18, !alias.scope !984, !noalias !983
  %i.auz = zext i8 %i.auy to i64
  %i.ava = and i64 %.epil.init647, 7
  %i.avb = shl nuw nsw i64 %i.auv, %i.ava
  %i.avc = or i64 %i.avb, %i.auz
  store i64 %i.avc, ptr %i.aux, align 1, !noalias !983
  %i.avd = add i64 %.epil.init647, %i.aus
  store i64 %i.avd, ptr %5, align 8, !tbaa !17, !alias.scope !983, !noalias !984
  br label %EmitLiterals.exit33

EmitLiterals.exit33.loopexit560.unr-lcssa:        ; preds = %bb.bn
  %lcmp.mod639.not = icmp eq i64 %xtraiter636, 0
  br i1 %lcmp.mod639.not, label %EmitLiterals.exit33, label %.epil.preheader629

.epil.preheader629:                               ; preds = %EmitLiterals.exit33.loopexit560.unr-lcssa, %EmitLongInsertLen.exit30
  %.0.i34270.epil.init = phi i64 [ 0, %EmitLongInsertLen.exit30 ], [ %i.aum, %EmitLiterals.exit33.loopexit560.unr-lcssa ]
  %.epil.init638 = phi i64 [ %.sink358, %EmitLongInsertLen.exit30 ], [ %i.aul, %EmitLiterals.exit33.loopexit560.unr-lcssa ] ; 3 uses
  %lcmp.mod640 = trunc i64 %i.akv to i1
  tail call void @llvm.assume(i1 %lcmp.mod640)
  %i.ave = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34270.epil.init
  %i.avf = load i8, ptr %i.ave, align 1, !tbaa !18
  %i.avg = zext i8 %i.avf to i64                  ; 2 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %0, i64 %i.avg
  %i.avi = load i8, ptr %i.avh, align 1, !tbaa !18
  %i.avj = zext i8 %i.avi to i64
  %i.avk = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.avg
  %i.avl = load i16, ptr %i.avk, align 2, !tbaa !30
  %i.avm = zext i16 %i.avl to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !996)
  %i.avn = lshr i64 %.epil.init638, 3
  %i.avo = getelementptr inbounds nuw i8, ptr %6, i64 %i.avn ; 2 uses
  %i.avp = load i8, ptr %i.avo, align 1, !tbaa !18, !alias.scope !996, !noalias !995
  %i.avq = zext i8 %i.avp to i64
  %i.avr = and i64 %.epil.init638, 7
  %i.avs = shl nuw nsw i64 %i.avm, %i.avr
  %i.avt = or i64 %i.avs, %i.avq
  store i64 %i.avt, ptr %i.avo, align 1, !noalias !995
  %i.avu = add i64 %.epil.init638, %i.avj
  store i64 %i.avu, ptr %5, align 8, !tbaa !17, !alias.scope !995, !noalias !996
  br label %EmitLiterals.exit33

EmitLiterals.exit33:                              ; preds = %.epil.preheader629, %EmitLiterals.exit33.loopexit560.unr-lcssa, %.epil.preheader643, %EmitLiterals.exit33.loopexit.unr-lcssa, %EmitInsertLen.exit27, %.thread76.thread118, %bb.bj, %bb.ay
  %.8.i = phi ptr [ %.us-phi219, %.thread76.thread118 ], [ %i.ct, %bb.ay ], [ %i.ct, %EmitInsertLen.exit27 ], [ %i.ct, %bb.bj ], [ %i.ct, %.epil.preheader643 ], [ %i.ct, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %i.ct, %EmitLiterals.exit33.loopexit560.unr-lcssa ], [ %i.ct, %.epil.preheader629 ] ; 2 uses
  %.5323.i = phi i64 [ %i.ln, %.thread76.thread118 ], [ %i.aij, %bb.ay ], [ %i.aij, %EmitInsertLen.exit27 ], [ %i.aij, %bb.bj ], [ %i.aij, %.epil.preheader643 ], [ %i.aij, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %i.aij, %EmitLiterals.exit33.loopexit560.unr-lcssa ], [ %i.aij, %.epil.preheader629 ] ; 4 uses
  %.not393.i = icmp eq i64 %.5323.i, 0
  br i1 %.not393.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %EmitLiterals.exit33
  %i.avv = tail call i64 @llvm.umin.i64(i64 %.5323.i, i64 98304) ; 3 uses
  %i.avw = load i64, ptr %5, align 8, !tbaa !17   ; 3 uses
  %i.avx = add i64 %i.avw, 3                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  %i.avy = lshr i64 %i.avw, 3
  %i.avz = getelementptr inbounds nuw i8, ptr %6, i64 %i.avy ; 2 uses
  %i.awa = load i8, ptr %i.avz, align 1, !tbaa !18, !alias.scope !1000, !noalias !999
  %i.awb = zext i8 %i.awa to i64
  store i64 %i.awb, ptr %i.avz, align 1, !noalias !999
  %i.awc = add i64 %i.avw, 1                      ; 3 uses
  store i64 %i.awc, ptr %5, align 8, !tbaa !17, !alias.scope !999, !noalias !1000
  %i.awd = icmp ult i64 %.5323.i, 65537
  %.0.i57 = select i1 %i.awd, i64 4, i64 5        ; 2 uses
  %i.awe = add nsw i64 %.0.i57, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  %i.awf = lshr i64 %i.awc, 3
  %i.awg = getelementptr inbounds nuw i8, ptr %6, i64 %i.awf ; 2 uses
  %i.awh = load i8, ptr %i.awg, align 1, !tbaa !18, !alias.scope !1002, !noalias !1001
  %i.awi = zext i8 %i.awh to i64
  %i.awj = and i64 %i.awc, 7
  %i.awk = shl nuw nsw i64 %i.awe, %i.awj
  %i.awl = or i64 %i.awk, %i.awi
  store i64 %i.awl, ptr %i.awg, align 1, !noalias !1001
  store i64 %i.avx, ptr %5, align 8, !tbaa !17, !alias.scope !1001, !noalias !1002
  %i.awm = shl nuw nsw i64 %.0.i57, 2
  %i.awn = add nsw i64 %i.avv, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  %i.awo = lshr i64 %i.avx, 3
  %i.awp = getelementptr inbounds nuw i8, ptr %6, i64 %i.awo ; 2 uses
  %i.awq = load i8, ptr %i.awp, align 1, !tbaa !18, !alias.scope !1004, !noalias !1003
  %i.awr = zext i8 %i.awq to i64
  %i.aws = and i64 %i.avx, 7
  %i.awt = shl nuw nsw i64 %i.awn, %i.aws
  %i.awu = or i64 %i.awt, %i.awr
  store i64 %i.awu, ptr %i.awp, align 1, !noalias !1003
  %i.awv = add i64 %i.avx, %i.awm                 ; 4 uses
  store i64 %i.awv, ptr %5, align 8, !tbaa !17, !alias.scope !1003, !noalias !1004
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  %i.aww = lshr i64 %i.awv, 3
  %i.awx = getelementptr inbounds nuw i8, ptr %6, i64 %i.aww ; 2 uses
  %i.awy = load i8, ptr %i.awx, align 1, !tbaa !18, !alias.scope !1006, !noalias !1005
  %i.awz = zext i8 %i.awy to i64
  store i64 %i.awz, ptr %i.awx, align 1, !noalias !1005
  %i.axa = add i64 %i.awv, 1                      ; 2 uses
  store i64 %i.axa, ptr %5, align 8, !tbaa !17, !alias.scope !1005, !noalias !1006
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  %i.axb = lshr i64 %i.axa, 3
  %i.axc = getelementptr inbounds nuw i8, ptr %6, i64 %i.axb ; 2 uses
  %i.axd = load i8, ptr %i.axc, align 1, !tbaa !18, !alias.scope !1008, !noalias !1007
  %i.axe = zext i8 %i.axd to i64
  store i64 %i.axe, ptr %i.axc, align 1, !noalias !1007
  %i.axf = add i64 %i.awv, 14
  store i64 %i.axf, ptr %5, align 8, !tbaa !17, !alias.scope !1007, !noalias !1008
  %i.axg = tail call fastcc i64 @BuildAndStoreLiteralPrefixCode(ptr noundef %0, ptr noundef %.8.i, i64 noundef %i.avv, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %6)
  br label %UpdateBits.exit.outer

bb.bp:                                            ; preds = %EmitLiterals.exit33
  %.not394.i = icmp eq i32 %3, 0
  br i1 %.not394.i, label %bb.bq, label %BrotliCompressFragmentFastImpl.exit

bb.bq:                                            ; preds = %bb.bp
  store i8 0, ptr %i.bn, align 8, !tbaa !18
  store i64 0, ptr %i.aq, align 8, !tbaa !21
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.bn)
  br label %BrotliCompressFragmentFastImpl.exit

BrotliCompressFragmentFastImpl.exit:              ; preds = %bb.bp, %bb.bq
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @BrotliCompressFragmentFastImpl15(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, 0) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 11 uses
  %i.e = tail call i64 @llvm.umin.i64(i64 range(i64 1, 0) %2, i64 98304) ; 3 uses
  %i.f = load i64, ptr %5, align 8, !tbaa !17     ; 3 uses
  %i.g = add i64 %i.f, 3                          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  %i.h = lshr i64 %i.f, 3
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 %i.h ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !18, !alias.scope !1199, !noalias !1198
  %i.k = zext i8 %i.j to i64
  store i64 %i.k, ptr %i.i, align 1, !noalias !1198
  %i.l = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.l, ptr %5, align 8, !tbaa !17, !alias.scope !1198, !noalias !1199
  %i.m = icmp ult i64 %2, 65537
  %.0.i52 = select i1 %i.m, i64 4, i64 5          ; 2 uses
  %i.n = add nsw i64 %.0.i52, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  %i.o = lshr i64 %i.l, 3
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !18, !alias.scope !1201, !noalias !1200
  %i.r = zext i8 %i.q to i64
  %i.s = and i64 %i.l, 7
  %i.t = shl nuw nsw i64 %i.n, %i.s
  %i.u = or i64 %i.t, %i.r
  store i64 %i.u, ptr %i.p, align 1, !noalias !1200
  store i64 %i.g, ptr %5, align 8, !tbaa !17, !alias.scope !1200, !noalias !1201
  %i.v = shl nuw nsw i64 %.0.i52, 2
  %i.w = add nsw i64 %i.e, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  %i.x = lshr i64 %i.g, 3
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !18, !alias.scope !1203, !noalias !1202
  %i.aa = zext i8 %i.z to i64
  %i.ab = and i64 %i.g, 7
  %i.ac = shl nuw nsw i64 %i.w, %i.ab
  %i.ad = or i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.y, align 1, !noalias !1202
  %i.ae = add i64 %i.g, %i.v                      ; 4 uses
  store i64 %i.ae, ptr %5, align 8, !tbaa !17, !alias.scope !1202, !noalias !1203
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !18, !alias.scope !1205, !noalias !1204
  %i.ai = zext i8 %i.ah to i64
  store i64 %i.ai, ptr %i.ag, align 1, !noalias !1204
  %i.aj = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.aj, ptr %5, align 8, !tbaa !17, !alias.scope !1204, !noalias !1205
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  %i.ak = lshr i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !18, !alias.scope !1207, !noalias !1206
  %i.an = zext i8 %i.am to i64
  store i64 %i.an, ptr %i.al, align 1, !noalias !1206
  %i.ao = add i64 %i.ae, 14
  store i64 %i.ao, ptr %5, align 8, !tbaa !17, !alias.scope !1206, !noalias !1207
  %i.ap = tail call fastcc i64 @BuildAndStoreLiteralPrefixCode(ptr noundef %0, ptr noundef %1, i64 noundef %i.e, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !21 ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 7
  %.pre359 = load i64, ptr %5, align 8, !tbaa !17, !noalias !19 ; 2 uses
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1664
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.au = phi i64 [ %.pre359, %.lr.ph ], [ %i.bg, %bb.b ] ; 3 uses
  %.0343.i181 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %bb.b ] ; 2 uses
  %i.av = lshr exact i64 %.0343.i181, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !18
  %i.ay = zext i8 %i.ax to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  %i.az = lshr i64 %i.au, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !18, !alias.scope !1209, !noalias !1208
end_hunk_5
begin_hunk_6_@BrotliCompressFragmentFastImpl15:bb.a
  %i.ir = getelementptr inbounds nuw i8, ptr %6, i64 %i.iq ; 2 uses
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !18, !alias.scope !1217, !noalias !1216
  %i.it = zext i8 %i.is to i64
  %i.iu = and i64 %i.in, 7
  %i.iv = shl nsw i64 %i.ip, %i.iu
  %i.iw = or i64 %i.iv, %i.it
  store i64 %i.iw, ptr %i.ir, align 1, !noalias !1216
  %i.ix = add i64 %i.in, %i.hu
  store i64 %i.ix, ptr %5, align 8, !tbaa !17, !alias.scope !1216, !noalias !1217
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hy ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !26
  %i.ja = add i32 %i.iz, 1
  store i32 %i.ja, ptr %i.iy, align 4, !tbaa !26
  br label %EmitInsertLen.exit

bb.l:                                             ; preds = %bb.j
  %i.jb = icmp samesign ult i64 %i.gs, 2114
  br i1 %i.jb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.jc = add nsw i64 %i.gs, -66                  ; 2 uses
  %i.jd = trunc nuw nsw i64 %i.jc to i32
  %i.je = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.jd, i1 true) ; 2 uses
  %i.jf = xor i32 %i.je, 31
  %i.jg = sub nuw nsw i32 81, %i.je
  %i.jh = zext nneg i32 %i.jg to i64              ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !18
  %i.jk = zext i8 %i.jj to i64
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.jh
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !30
  %i.jn = zext i16 %i.jm to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  %i.jo = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !1218, !noalias !1219 ; 3 uses
  %i.jp = lshr i64 %i.jo, 3
  %i.jq = getelementptr inbounds nuw i8, ptr %6, i64 %i.jp ; 2 uses
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !18, !alias.scope !1219, !noalias !1218
  %i.js = zext i8 %i.jr to i64
  %i.jt = and i64 %i.jo, 7
  %i.ju = shl nuw nsw i64 %i.jn, %i.jt
  %i.jv = or i64 %i.ju, %i.js
  store i64 %i.jv, ptr %i.jq, align 1, !noalias !1218
  %i.jw = add i64 %i.jo, %i.jk                    ; 4 uses
  store i64 %i.jw, ptr %5, align 8, !tbaa !17, !alias.scope !1218, !noalias !1219
  %i.jx = zext nneg i32 %i.jf to i64              ; 2 uses
  %.neg.i25 = shl nsw i64 -1, %i.jx
  %i.jy = add nsw i64 %.neg.i25, %i.jc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1221)
  %i.jz = lshr i64 %i.jw, 3
  %i.ka = getelementptr inbounds nuw i8, ptr %6, i64 %i.jz ; 2 uses
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !18, !alias.scope !1221, !noalias !1220
  %i.kc = zext i8 %i.kb to i64
  %i.kd = and i64 %i.jw, 7
  %i.ke = shl nsw i64 %i.jy, %i.kd
  %i.kf = or i64 %i.ke, %i.kc
  store i64 %i.kf, ptr %i.ka, align 1, !noalias !1220
  %i.kg = add i64 %i.jw, %i.jx
  store i64 %i.kg, ptr %5, align 8, !tbaa !17, !alias.scope !1220, !noalias !1221
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jh ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !26
  %i.kj = add i32 %i.ki, 1
  store i32 %i.kj, ptr %i.kh, align 4, !tbaa !26
  br label %EmitInsertLen.exit

bb.n:                                             ; preds = %bb.l
  %i.kk = load i8, ptr %i.ch, align 1, !tbaa !18
  %i.kl = zext i8 %i.kk to i64
  %i.km = load i16, ptr %i.ci, align 2, !tbaa !30
  %i.kn = zext i16 %i.km to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  %i.ko = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !1222, !noalias !1223 ; 3 uses
  %i.kp = lshr i64 %i.ko, 3
  %i.kq = getelementptr inbounds nuw i8, ptr %6, i64 %i.kp ; 2 uses
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !18, !alias.scope !1223, !noalias !1222
  %i.ks = zext i8 %i.kr to i64
  %i.kt = and i64 %i.ko, 7
  %i.ku = shl nuw nsw i64 %i.kn, %i.kt
  %i.kv = or i64 %i.ku, %i.ks
  store i64 %i.kv, ptr %i.kq, align 1, !noalias !1222
  %i.kw = add i64 %i.ko, %i.kl                    ; 4 uses
  store i64 %i.kw, ptr %5, align 8, !tbaa !17, !alias.scope !1222, !noalias !1223
  %i.kx = add nsw i64 %i.gs, -2114
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  %i.ky = lshr i64 %i.kw, 3
  %i.kz = getelementptr inbounds nuw i8, ptr %6, i64 %i.ky ; 2 uses
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !18, !alias.scope !1225, !noalias !1224
  %i.lb = zext i8 %i.la to i64
  %i.lc = and i64 %i.kw, 7
  %i.ld = shl nuw nsw i64 %i.kx, %i.lc
  %i.le = or i64 %i.ld, %i.lb
  store i64 %i.le, ptr %i.kz, align 1, !noalias !1224
  %i.lf = add i64 %i.kw, 12
  store i64 %i.lf, ptr %5, align 8, !tbaa !17, !alias.scope !1224, !noalias !1225
  %i.lg = load i32, ptr %i.cj, align 4, !tbaa !26
  %i.lh = add i32 %i.lg, 1
  store i32 %i.lh, ptr %i.cj, align 4, !tbaa !26
  br label %EmitInsertLen.exit

bb.o:                                             ; preds = %FindMatchLengthWithLimit.exit24
  %i.li = sub i64 %i.gr, %i.cr
  %i.lj = mul i64 %i.li, 50
  %i.lk = icmp ugt i64 %i.lj, %i.gs
  %narrow.not = select i1 %i.lk, i1 true, i1 %i.cs
  br i1 %narrow.not, label %bb.p, label %.thread76.thread118

.thread76.thread118:                              ; preds = %bb.o
  %i.ll = add i64 %.0356.i.ph, -3
  tail call fastcc void @EmitUncompressedMetaBlock(ptr noundef %.0360.i.ph, ptr noundef nonnull %.us-phi219, i64 noundef %i.ll, ptr noundef nonnull %5, ptr noundef %6)
  %i.lm = ptrtoint ptr %.0.i to i64
  %.neg.i = add i64 %.0318.i, %i.lm
  %i.ln = sub i64 %.neg.i, %.us-phi215
  br label %EmitLiterals.exit33

bb.p:                                             ; preds = %bb.o
  %i.lo = icmp ult i64 %i.gs, 22594
  br i1 %i.lo, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.lp = load i8, ptr %i.ce, align 2, !tbaa !18
  %i.lq = zext i8 %i.lp to i64
  %i.lr = load i16, ptr %i.cf, align 4, !tbaa !30
  %i.ls = zext i16 %i.lr to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1227)
  %i.lt = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !1226, !noalias !1227 ; 3 uses
  %i.lu = lshr i64 %i.lt, 3
  %i.lv = getelementptr inbounds nuw i8, ptr %6, i64 %i.lu ; 2 uses
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !18, !alias.scope !1227, !noalias !1226
  %i.lx = zext i8 %i.lw to i64
  %i.ly = and i64 %i.lt, 7
  %i.lz = shl nuw nsw i64 %i.ls, %i.ly
  %i.ma = or i64 %i.lz, %i.lx
  store i64 %i.ma, ptr %i.lv, align 1, !noalias !1226
  %i.mb = add i64 %i.lt, %i.lq                    ; 4 uses
  store i64 %i.mb, ptr %5, align 8, !tbaa !17, !alias.scope !1226, !noalias !1227
  %i.mc = add nsw i64 %i.gs, -6210
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  %i.md = lshr i64 %i.mb, 3
  %i.me = getelementptr inbounds nuw i8, ptr %6, i64 %i.md ; 2 uses
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !18, !alias.scope !1229, !noalias !1228
  %i.mg = zext i8 %i.mf to i64
  %i.mh = and i64 %i.mb, 7
  %i.mi = shl nuw nsw i64 %i.mc, %i.mh
  %i.mj = or i64 %i.mi, %i.mg
  store i64 %i.mj, ptr %i.me, align 1, !noalias !1228
  %i.mk = add i64 %i.mb, 14
  store i64 %i.mk, ptr %5, align 8, !tbaa !17, !alias.scope !1228, !noalias !1229
  %i.ml = load i32, ptr %i.cg, align 8, !tbaa !26
  %i.mm = add i32 %i.ml, 1
  store i32 %i.mm, ptr %i.cg, align 8, !tbaa !26
  br label %EmitInsertLen.exit

bb.r:                                             ; preds = %bb.p
  %i.mn = load i8, ptr %i.cb, align 1, !tbaa !18
  %i.mo = zext i8 %i.mn to i64
  %i.mp = load i16, ptr %i.cc, align 2, !tbaa !30
  %i.mq = zext i16 %i.mp to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  %i.mr = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !1230, !noalias !1231 ; 3 uses
  %i.ms = lshr i64 %i.mr, 3
  %i.mt = getelementptr inbounds nuw i8, ptr %6, i64 %i.ms ; 2 uses
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !18, !alias.scope !1231, !noalias !1230
  %i.mv = zext i8 %i.mu to i64
  %i.mw = and i64 %i.mr, 7
  %i.mx = shl nuw nsw i64 %i.mq, %i.mw
  %i.my = or i64 %i.mx, %i.mv
  store i64 %i.my, ptr %i.mt, align 1, !noalias !1230
  %i.mz = add i64 %i.mr, %i.mo                    ; 4 uses
  store i64 %i.mz, ptr %5, align 8, !tbaa !17, !alias.scope !1230, !noalias !1231
  %i.na = add i64 %i.gs, -22594
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  %i.nb = lshr i64 %i.mz, 3
  %i.nc = getelementptr inbounds nuw i8, ptr %6, i64 %i.nb ; 2 uses
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !18, !alias.scope !1233, !noalias !1232
  %i.ne = zext i8 %i.nd to i64
  %i.nf = and i64 %i.mz, 7
  %i.ng = shl i64 %i.na, %i.nf
  %i.nh = or i64 %i.ng, %i.ne
  store i64 %i.nh, ptr %i.nc, align 1, !noalias !1232
  %i.ni = add i64 %i.mz, 24
  store i64 %i.ni, ptr %5, align 8, !tbaa !17, !alias.scope !1232, !noalias !1233
  %i.nj = load i32, ptr %i.cd, align 4, !tbaa !26
  %i.nk = add i32 %i.nj, 1
  store i32 %i.nk, ptr %i.cd, align 4, !tbaa !26
  br label %EmitInsertLen.exit

EmitInsertLen.exit:                               ; preds = %bb.r, %bb.q, %bb.n, %bb.m, %bb.k, %bb.i
  %.not277 = icmp eq i64 %.us-phi215, %i.gr
  br i1 %.not277, label %EmitLiterals.exit, label %.lr.ph239

.lr.ph239:                                        ; preds = %EmitInsertLen.exit
  %.promoted = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !1234, !noalias !1235 ; 2 uses
  %.neg = add i64 %i.gr, 1
  %xtraiter = and i64 %i.gs, 1
  %i.nl = icmp eq i64 %.us-phi215, %.neg
  br i1 %i.nl, label %.epil.preheader, label %.lr.ph239.new

.lr.ph239.new:                                    ; preds = %.lr.ph239
  %unroll_iter = and i64 %i.gs, -2
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph239.new
  %i.nm = phi i64 [ %.promoted, %.lr.ph239.new ], [ %i.ov, %bb.s ] ; 3 uses
  %.0.i31238 = phi i64 [ 0, %.lr.ph239.new ], [ %i.ow, %bb.s ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph239.new ], [ %niter.next.1, %bb.s ]
  %i.nn = getelementptr inbounds nuw i8, ptr %.1361.i, i64 %.0.i31238
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !18
  %i.np = zext i8 %i.no to i64                    ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 %i.np
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !18
  %i.ns = zext i8 %i.nr to i64
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.np
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !30
  %i.nv = zext i16 %i.nu to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  %i.nw = lshr i64 %i.nm, 3
  %i.nx = getelementptr inbounds nuw i8, ptr %6, i64 %i.nw ; 2 uses
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !18, !alias.scope !1235, !noalias !1234
  %i.nz = zext i8 %i.ny to i64
  %i.oa = and i64 %i.nm, 7
  %i.ob = shl nuw nsw i64 %i.nv, %i.oa
  %i.oc = or i64 %i.ob, %i.nz
  store i64 %i.oc, ptr %i.nx, align 1, !noalias !1234
  %i.od = add i64 %i.nm, %i.ns                    ; 4 uses
  store i64 %i.od, ptr %5, align 8, !tbaa !17, !alias.scope !1234, !noalias !1235
  %i.oe = getelementptr inbounds nuw i8, ptr %.1361.i, i64 %.0.i31238
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 1
  %i.og = load i8, ptr %i.of, align 1, !tbaa !18
  %i.oh = zext i8 %i.og to i64                    ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 %i.oh
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !18
  %i.ok = zext i8 %i.oj to i64
  %i.ol = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.oh
  %i.om = load i16, ptr %i.ol, align 2, !tbaa !30
  %i.on = zext i16 %i.om to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  %i.oo = lshr i64 %i.od, 3
  %i.op = getelementptr inbounds nuw i8, ptr %6, i64 %i.oo ; 2 uses
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !18, !alias.scope !1237, !noalias !1236
  %i.or = zext i8 %i.oq to i64
  %i.os = and i64 %i.od, 7
  %i.ot = shl nuw nsw i64 %i.on, %i.os
  %i.ou = or i64 %i.ot, %i.or
  store i64 %i.ou, ptr %i.op, align 1, !noalias !1236
  %i.ov = add i64 %i.od, %i.ok                    ; 3 uses
  store i64 %i.ov, ptr %5, align 8, !tbaa !17, !alias.scope !1236, !noalias !1237
  %i.ow = add nuw i64 %.0.i31238, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %EmitLiterals.exit.loopexit.unr-lcssa, label %bb.s, !llvm.loop !5

EmitLiterals.exit.loopexit.unr-lcssa:             ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %EmitLiterals.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %EmitLiterals.exit.loopexit.unr-lcssa, %.lr.ph239
  %.epil.init = phi i64 [ %.promoted, %.lr.ph239 ], [ %i.ov, %EmitLiterals.exit.loopexit.unr-lcssa ] ; 3 uses
  %.0.i31238.epil.init = phi i64 [ 0, %.lr.ph239 ], [ %i.ow, %EmitLiterals.exit.loopexit.unr-lcssa ]
  %lcmp.mod628 = trunc i64 %i.gs to i1
  tail call void @llvm.assume(i1 %lcmp.mod628)
  %i.ox = getelementptr inbounds nuw i8, ptr %.1361.i, i64 %.0.i31238.epil.init
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !18
  %i.oz = zext i8 %i.oy to i64                    ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 %i.oz
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !18
  %i.pc = zext i8 %i.pb to i64
  %i.pd = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.oz
  %i.pe = load i16, ptr %i.pd, align 2, !tbaa !30
  %i.pf = zext i16 %i.pe to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  %i.pg = lshr i64 %.epil.init, 3
  %i.ph = getelementptr inbounds nuw i8, ptr %6, i64 %i.pg ; 2 uses
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !18, !alias.scope !1235, !noalias !1234
  %i.pj = zext i8 %i.pi to i64
  %i.pk = and i64 %.epil.init, 7
  %i.pl = shl nuw nsw i64 %i.pf, %i.pk
  %i.pm = or i64 %i.pl, %i.pj
  store i64 %i.pm, ptr %i.ph, align 1, !noalias !1234
  %i.pn = add i64 %.epil.init, %i.pc
  store i64 %i.pn, ptr %5, align 8, !tbaa !17, !alias.scope !1234, !noalias !1235
  br label %EmitLiterals.exit

EmitLiterals.exit:                                ; preds = %.epil.preheader, %EmitLiterals.exit.loopexit.unr-lcssa, %EmitInsertLen.exit
  %i.po = icmp eq i32 %.0344.i.fr, %i.gq
  br i1 %i.po, label %bb.t, label %bb.u

bb.t:                                             ; preds = %EmitLiterals.exit
  %i.pp = load i8, ptr %i.ck, align 8, !tbaa !18
  %i.pq = zext i8 %i.pp to i64
  %i.pr = load i16, ptr %i.cl, align 8, !tbaa !30
  %i.ps = zext i16 %i.pr to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  %i.pt = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !1238, !noalias !1239 ; 3 uses
  %i.pu = lshr i64 %i.pt, 3
  %i.pv = getelementptr inbounds nuw i8, ptr %6, i64 %i.pu ; 2 uses
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !18, !alias.scope !1239, !noalias !1238
  %i.px = zext i8 %i.pw to i64
  %i.py = and i64 %i.pt, 7
  %i.pz = shl nuw nsw i64 %i.ps, %i.py
  %i.qa = or i64 %i.pz, %i.px
  store i64 %i.qa, ptr %i.pv, align 1, !noalias !1238
  %i.qb = add i64 %i.pt, %i.pq
  %i.qc = load i32, ptr %i.cm, align 8, !tbaa !26
  %i.qd = add i32 %i.qc, 1
  store i32 %i.qd, ptr %i.cm, align 8, !tbaa !26
  br label %bb.v

bb.u:                                             ; preds = %EmitLiterals.exit
  %sext.i = shl i64 %.us-phi218, 32
  %i.qe = ashr exact i64 %sext.i, 32
  %i.qf = add nsw i64 %i.qe, 3                    ; 3 uses
  %i.qg = trunc i64 %i.qf to i32
  %i.qh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.qg, i1 true) ; 2 uses
  %i.qi = sub nsw i32 30, %i.qh
  %i.qj = zext i32 %i.qi to i64                   ; 3 uses
  %i.qk = lshr i64 %i.qf, %i.qj
  %i.ql = and i64 %i.qk, 1                        ; 2 uses
  %i.qm = or disjoint i64 %i.ql, 2
  %i.qn = shl i64 %i.qm, %i.qj
  %i.qo = shl nuw nsw i32 %i.qh, 1
  %i.qp = sub nsw i32 58, %i.qo
  %i.qq = zext i32 %i.qp to i64
  %i.qr = or disjoint i64 %i.ql, %i.qq
  %i.qs = add nuw nsw i64 %i.qr, 80               ; 3 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.qs
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !18
  %i.qv = zext i8 %i.qu to i64
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.qs
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !30
  %i.qy = zext i16 %i.qx to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  %i.qz = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !1240, !noalias !1241 ; 3 uses
  %i.ra = lshr i64 %i.qz, 3
  %i.rb = getelementptr inbounds nuw i8, ptr %6, i64 %i.ra ; 2 uses
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !18, !alias.scope !1241, !noalias !1240
  %i.rd = zext i8 %i.rc to i64
  %i.re = and i64 %i.qz, 7
  %i.rf = shl nuw nsw i64 %i.qy, %i.re
  %i.rg = or i64 %i.rf, %i.rd
  store i64 %i.rg, ptr %i.rb, align 1, !noalias !1240
  %i.rh = add i64 %i.qz, %i.qv                    ; 4 uses
  store i64 %i.rh, ptr %5, align 8, !tbaa !17, !alias.scope !1240, !noalias !1241
  %i.ri = sub i64 %i.qf, %i.qn
  %i.rj = lshr i64 %i.rh, 3
  %i.rk = getelementptr inbounds nuw i8, ptr %6, i64 %i.rj ; 2 uses
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !18, !alias.scope !1242, !noalias !1243
  %i.rm = zext i8 %i.rl to i64
  %i.rn = and i64 %i.rh, 7
  %i.ro = shl i64 %i.ri, %i.rn
  %i.rp = or i64 %i.ro, %i.rm
  store i64 %i.rp, ptr %i.rk, align 1, !noalias !1243
  %i.rq = add i64 %i.rh, %i.qj
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.qs ; 2 uses
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !26
  %i.rt = add i32 %i.rs, 1
  store i32 %i.rt, ptr %i.rr, align 4, !tbaa !26
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ru = phi i64 [ %i.qb, %bb.t ], [ %i.rq, %bb.u ] ; 16 uses
  %.1345.i = phi i32 [ %.0344.i.fr, %bb.t ], [ %i.gq, %bb.u ] ; 3 uses
  store i64 %i.ru, ptr %5, align 8, !tbaa !17, !noalias !19
  %i.rv = icmp ult i64 %i.gp, 12
  br i1 %i.rv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.rw = add nsw i64 %.2.i20, 1                  ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rw
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !18
  %i.rz = zext i8 %i.ry to i64
  %i.sa = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.rw
  %i.sb = load i16, ptr %i.sa, align 2, !tbaa !30
  %i.sc = zext i16 %i.sb to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  %i.sd = lshr i64 %i.ru, 3
  %i.se = getelementptr inbounds nuw i8, ptr %6, i64 %i.sd ; 2 uses
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !18, !alias.scope !1245, !noalias !1244
  %i.sg = zext i8 %i.sf to i64
  %i.sh = and i64 %i.ru, 7
  %i.si = shl nuw nsw i64 %i.sc, %i.sh
  %i.sj = or i64 %i.si, %i.sg
  store i64 %i.sj, ptr %i.se, align 1, !noalias !1244
  %i.sk = add i64 %i.ru, %i.rz
  store i64 %i.sk, ptr %5, align 8, !tbaa !17, !alias.scope !1244, !noalias !1245
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.rw ; 2 uses
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !26
  %i.sn = add i32 %i.sm, 1
  store i32 %i.sn, ptr %i.sl, align 4, !tbaa !26
  br label %EmitCopyLenLastDistance.exit

bb.x:                                             ; preds = %bb.v
  %i.so = icmp ult i64 %i.gp, 72
  br i1 %i.so, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.sp = add nsw i64 %.2.i20, -3                 ; 3 uses
  %i.sq = trunc nuw nsw i64 %i.sp to i32
  %i.sr = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.sq, i1 true)
  %i.ss = sub nuw nsw i32 30, %i.sr               ; 2 uses
  %i.st = zext nneg i32 %i.ss to i64              ; 3 uses
  %i.su = lshr i64 %i.sp, %i.st                   ; 2 uses
  %i.sv = shl nuw nsw i32 %i.ss, 1
  %narrow278 = add nuw nsw i32 %i.sv, 4
  %i.sw = zext nneg i32 %narrow278 to i64
  %i.sx = add nuw nsw i64 %i.su, %i.sw            ; 3 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.sx
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !18
  %i.ta = zext i8 %i.sz to i64
  %i.tb = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.sx
  %i.tc = load i16, ptr %i.tb, align 2, !tbaa !30
  %i.td = zext i16 %i.tc to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1247)
  %i.te = lshr i64 %i.ru, 3
  %i.tf = getelementptr inbounds nuw i8, ptr %6, i64 %i.te ; 2 uses
  %i.tg = load i8, ptr %i.tf, align 1, !tbaa !18, !alias.scope !1247, !noalias !1246
  %i.th = zext i8 %i.tg to i64
  %i.ti = and i64 %i.ru, 7
  %i.tj = shl nuw nsw i64 %i.td, %i.ti
  %i.tk = or i64 %i.tj, %i.th
  store i64 %i.tk, ptr %i.tf, align 1, !noalias !1246
  %i.tl = add i64 %i.ru, %i.ta                    ; 4 uses
  store i64 %i.tl, ptr %5, align 8, !tbaa !17, !alias.scope !1246, !noalias !1247
  %i.tm = shl nuw nsw i64 %i.su, %i.st
  %i.tn = sub nsw i64 %i.sp, %i.tm
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1249)
  %i.to = lshr i64 %i.tl, 3
  %i.tp = getelementptr inbounds nuw i8, ptr %6, i64 %i.to ; 2 uses
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !18, !alias.scope !1249, !noalias !1248
  %i.tr = zext i8 %i.tq to i64
  %i.ts = and i64 %i.tl, 7
  %i.tt = shl nsw i64 %i.tn, %i.ts
  %i.tu = or i64 %i.tt, %i.tr
  store i64 %i.tu, ptr %i.tp, align 1, !noalias !1248
  %i.tv = add i64 %i.tl, %i.st
  store i64 %i.tv, ptr %5, align 8, !tbaa !17, !alias.scope !1248, !noalias !1249
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.sx ; 2 uses
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !26
  %i.ty = add i32 %i.tx, 1
  store i32 %i.ty, ptr %i.tw, align 4, !tbaa !26
  br label %EmitCopyLenLastDistance.exit

bb.z:                                             ; preds = %bb.x
  %i.tz = icmp ult i64 %i.gp, 136
  br i1 %i.tz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ua = add nsw i64 %.2.i20, -3                 ; 2 uses
  %i.ub = lshr i64 %i.ua, 5
end_hunk_6
begin_hunk_7_@BrotliCompressFragmentFastImpl15:bb.a
  store i8 %i.ako, ptr %i.akf, align 1, !tbaa !18
  %i.akp = sub nuw i64 %.030.i, %i.ajz            ; 2 uses
  %i.akq = lshr i32 %.02429.i, %i.akj
  %i.akr = add i64 %i.ajz, %.02528.i
  %.not.i56 = icmp eq i64 %i.akp, 0
  br i1 %.not.i56, label %UpdateBits.exit.loopexit, label %bb.ax, !llvm.loop !1

bb.ay:                                            ; preds = %ShouldMergeBlock.exit, %bb.aq, %.thread103
  %.0.i.lcssa632633 = ptrtoaddr ptr %.0.i to i64  ; 2 uses
  %.7.i.lcssa634635 = ptrtoaddr ptr %.7.i to i64  ; 2 uses
  %i.aks = icmp ult ptr %.7.i, %i.ct
  br i1 %i.aks, label %bb.az, label %EmitLiterals.exit33

bb.az:                                            ; preds = %bb.ay
  %i.akt = ptrtoint ptr %i.ct to i64
  %i.aku = ptrtoint ptr %.7.i to i64              ; 2 uses
  %i.akv = sub i64 %i.akt, %i.aku                 ; 18 uses
  %i.akw = icmp ult i64 %i.akv, 6210
  br i1 %i.akw, label %bb.ba, label %bb.bi, !prof !23

bb.ba:                                            ; preds = %bb.az
  %i.akx = icmp samesign ult i64 %i.akv, 6
  br i1 %i.akx, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.aky = or disjoint i64 %i.akv, 40             ; 3 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aky
  %i.ala = load i8, ptr %i.akz, align 1, !tbaa !18
  %i.alb = zext i8 %i.ala to i64
  %i.alc = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.aky
  %i.ald = load i16, ptr %i.alc, align 2, !tbaa !30
  %i.ale = zext i16 %i.ald to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1287)
  %i.alf = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !1286, !noalias !1287 ; 3 uses
  %i.alg = lshr i64 %i.alf, 3
  %i.alh = getelementptr inbounds nuw i8, ptr %6, i64 %i.alg ; 2 uses
  %i.ali = load i8, ptr %i.alh, align 1, !tbaa !18, !alias.scope !1287, !noalias !1286
  %i.alj = zext i8 %i.ali to i64
  %i.alk = and i64 %i.alf, 7
  %i.all = shl nuw nsw i64 %i.ale, %i.alk
  %i.alm = or i64 %i.all, %i.alj
  store i64 %i.alm, ptr %i.alh, align 1, !noalias !1286
  %i.aln = add i64 %i.alf, %i.alb
  store i64 %i.aln, ptr %5, align 8, !tbaa !17, !alias.scope !1286, !noalias !1287
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aky ; 2 uses
  %i.alp = load i32, ptr %i.alo, align 4, !tbaa !26
  %i.alq = add i32 %i.alp, 1
  store i32 %i.alq, ptr %i.alo, align 4, !tbaa !26
  br label %EmitInsertLen.exit27

bb.bc:                                            ; preds = %bb.ba
  %i.alr = icmp samesign ult i64 %i.akv, 130
  br i1 %i.alr, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.als = add nsw i64 %i.akv, -2                 ; 3 uses
  %i.alt = trunc nuw nsw i64 %i.als to i32
  %i.alu = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.alt, i1 true)
  %i.alv = sub nuw nsw i32 30, %i.alu             ; 2 uses
  %i.alw = zext nneg i32 %i.alv to i64            ; 3 uses
  %i.alx = lshr i64 %i.als, %i.alw                ; 2 uses
  %i.aly = shl nuw nsw i32 %i.alv, 1
  %narrow280 = add nuw nsw i32 %i.aly, 42
  %i.alz = zext nneg i32 %narrow280 to i64
  %i.ama = add nuw nsw i64 %i.alx, %i.alz         ; 3 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ama
  %i.amc = load i8, ptr %i.amb, align 1, !tbaa !18
  %i.amd = zext i8 %i.amc to i64
  %i.ame = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ama
  %i.amf = load i16, ptr %i.ame, align 2, !tbaa !30
  %i.amg = zext i16 %i.amf to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  %i.amh = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !1288, !noalias !1289 ; 3 uses
  %i.ami = lshr i64 %i.amh, 3
  %i.amj = getelementptr inbounds nuw i8, ptr %6, i64 %i.ami ; 2 uses
  %i.amk = load i8, ptr %i.amj, align 1, !tbaa !18, !alias.scope !1289, !noalias !1288
  %i.aml = zext i8 %i.amk to i64
  %i.amm = and i64 %i.amh, 7
  %i.amn = shl nuw nsw i64 %i.amg, %i.amm
  %i.amo = or i64 %i.amn, %i.aml
  store i64 %i.amo, ptr %i.amj, align 1, !noalias !1288
  %i.amp = add i64 %i.amh, %i.amd                 ; 4 uses
  store i64 %i.amp, ptr %5, align 8, !tbaa !17, !alias.scope !1288, !noalias !1289
  %i.amq = shl nuw nsw i64 %i.alx, %i.alw
  %i.amr = sub nsw i64 %i.als, %i.amq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1291)
  %i.ams = lshr i64 %i.amp, 3
  %i.amt = getelementptr inbounds nuw i8, ptr %6, i64 %i.ams ; 2 uses
  %i.amu = load i8, ptr %i.amt, align 1, !tbaa !18, !alias.scope !1291, !noalias !1290
  %i.amv = zext i8 %i.amu to i64
  %i.amw = and i64 %i.amp, 7
  %i.amx = shl nsw i64 %i.amr, %i.amw
  %i.amy = or i64 %i.amx, %i.amv
  store i64 %i.amy, ptr %i.amt, align 1, !noalias !1290
  %i.amz = add i64 %i.amp, %i.alw
  store i64 %i.amz, ptr %5, align 8, !tbaa !17, !alias.scope !1290, !noalias !1291
  %i.ana = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ama ; 2 uses
  %i.anb = load i32, ptr %i.ana, align 4, !tbaa !26
  %i.anc = add i32 %i.anb, 1
  store i32 %i.anc, ptr %i.ana, align 4, !tbaa !26
  br label %EmitInsertLen.exit27

bb.be:                                            ; preds = %bb.bc
  %i.and = icmp samesign ult i64 %i.akv, 2114
  br i1 %i.and, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ane = add nsw i64 %i.akv, -66                ; 2 uses
  %i.anf = trunc nuw nsw i64 %i.ane to i32
  %i.ang = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.anf, i1 true) ; 2 uses
  %i.anh = xor i32 %i.ang, 31
  %i.ani = sub nuw nsw i32 81, %i.ang
  %i.anj = zext nneg i32 %i.ani to i64            ; 3 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.anj
  %i.anl = load i8, ptr %i.ank, align 1, !tbaa !18
  %i.anm = zext i8 %i.anl to i64
  %i.ann = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.anj
  %i.ano = load i16, ptr %i.ann, align 2, !tbaa !30
  %i.anp = zext i16 %i.ano to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1293)
  %i.anq = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !1292, !noalias !1293 ; 3 uses
  %i.anr = lshr i64 %i.anq, 3
  %i.ans = getelementptr inbounds nuw i8, ptr %6, i64 %i.anr ; 2 uses
  %i.ant = load i8, ptr %i.ans, align 1, !tbaa !18, !alias.scope !1293, !noalias !1292
  %i.anu = zext i8 %i.ant to i64
  %i.anv = and i64 %i.anq, 7
  %i.anw = shl nuw nsw i64 %i.anp, %i.anv
  %i.anx = or i64 %i.anw, %i.anu
  store i64 %i.anx, ptr %i.ans, align 1, !noalias !1292
  %i.any = add i64 %i.anq, %i.anm                 ; 4 uses
  store i64 %i.any, ptr %5, align 8, !tbaa !17, !alias.scope !1292, !noalias !1293
  %i.anz = zext nneg i32 %i.anh to i64            ; 2 uses
  %.neg.i26 = shl nsw i64 -1, %i.anz
  %i.aoa = add nsw i64 %.neg.i26, %i.ane
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1295)
  %i.aob = lshr i64 %i.any, 3
  %i.aoc = getelementptr inbounds nuw i8, ptr %6, i64 %i.aob ; 2 uses
  %i.aod = load i8, ptr %i.aoc, align 1, !tbaa !18, !alias.scope !1295, !noalias !1294
  %i.aoe = zext i8 %i.aod to i64
  %i.aof = and i64 %i.any, 7
  %i.aog = shl nsw i64 %i.aoa, %i.aof
  %i.aoh = or i64 %i.aog, %i.aoe
  store i64 %i.aoh, ptr %i.aoc, align 1, !noalias !1294
  %i.aoi = add i64 %i.any, %i.anz
  store i64 %i.aoi, ptr %5, align 8, !tbaa !17, !alias.scope !1294, !noalias !1295
  %i.aoj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.anj ; 2 uses
  %i.aok = load i32, ptr %i.aoj, align 4, !tbaa !26
  %i.aol = add i32 %i.aok, 1
  store i32 %i.aol, ptr %i.aoj, align 4, !tbaa !26
  br label %EmitInsertLen.exit27

bb.bg:                                            ; preds = %bb.be
  %i.aom = load i8, ptr %i.ch, align 1, !tbaa !18
  %i.aon = zext i8 %i.aom to i64
  %i.aoo = load i16, ptr %i.ci, align 2, !tbaa !30
  %i.aop = zext i16 %i.aoo to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  %i.aoq = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !1296, !noalias !1297 ; 3 uses
  %i.aor = lshr i64 %i.aoq, 3
  %i.aos = getelementptr inbounds nuw i8, ptr %6, i64 %i.aor ; 2 uses
  %i.aot = load i8, ptr %i.aos, align 1, !tbaa !18, !alias.scope !1297, !noalias !1296
  %i.aou = zext i8 %i.aot to i64
  %i.aov = and i64 %i.aoq, 7
  %i.aow = shl nuw nsw i64 %i.aop, %i.aov
  %i.aox = or i64 %i.aow, %i.aou
  store i64 %i.aox, ptr %i.aos, align 1, !noalias !1296
  %i.aoy = add i64 %i.aoq, %i.aon                 ; 4 uses
  store i64 %i.aoy, ptr %5, align 8, !tbaa !17, !alias.scope !1296, !noalias !1297
  %i.aoz = add nsw i64 %i.akv, -2114
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  %i.apa = lshr i64 %i.aoy, 3
  %i.apb = getelementptr inbounds nuw i8, ptr %6, i64 %i.apa ; 2 uses
  %i.apc = load i8, ptr %i.apb, align 1, !tbaa !18, !alias.scope !1299, !noalias !1298
  %i.apd = zext i8 %i.apc to i64
  %i.ape = and i64 %i.aoy, 7
  %i.apf = shl nuw nsw i64 %i.aoz, %i.ape
  %i.apg = or i64 %i.apf, %i.apd
  store i64 %i.apg, ptr %i.apb, align 1, !noalias !1298
  %i.aph = add i64 %i.aoy, 12
  store i64 %i.aph, ptr %5, align 8, !tbaa !17, !alias.scope !1298, !noalias !1299
  %i.api = load i32, ptr %i.cj, align 4, !tbaa !26
  %i.apj = add i32 %i.api, 1
  store i32 %i.apj, ptr %i.cj, align 4, !tbaa !26
  br label %EmitInsertLen.exit27

EmitInsertLen.exit27:                             ; preds = %bb.bb, %bb.bd, %bb.bf, %bb.bg
  %.not281 = icmp eq ptr %i.ct, %.7.i
  br i1 %.not281, label %EmitLiterals.exit33, label %.lr.ph272

.lr.ph272:                                        ; preds = %EmitInsertLen.exit27
  %.promoted273 = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !1300, !noalias !1301 ; 2 uses
  %i.apk = add nsw i64 %.0358.i, -1
  %i.apl = add i64 %i.apk, %.0.i.lcssa632633
  %xtraiter645 = and i64 %i.akv, 1
  %i.apm = icmp eq i64 %i.apl, %.7.i.lcssa634635
  br i1 %i.apm, label %.epil.preheader643, label %.lr.ph272.new

.lr.ph272.new:                                    ; preds = %.lr.ph272
  %unroll_iter650 = and i64 %i.akv, 8190
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.lr.ph272.new
  %i.apn = phi i64 [ %.promoted273, %.lr.ph272.new ], [ %i.aqw, %bb.bh ] ; 3 uses
  %.0.i32271 = phi i64 [ 0, %.lr.ph272.new ], [ %i.aqx, %bb.bh ] ; 3 uses
  %niter651 = phi i64 [ 0, %.lr.ph272.new ], [ %niter651.next.1, %bb.bh ]
  %i.apo = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32271
  %i.app = load i8, ptr %i.apo, align 1, !tbaa !18
  %i.apq = zext i8 %i.app to i64                  ; 2 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %0, i64 %i.apq
  %i.aps = load i8, ptr %i.apr, align 1, !tbaa !18
  %i.apt = zext i8 %i.aps to i64
  %i.apu = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.apq
  %i.apv = load i16, ptr %i.apu, align 2, !tbaa !30
  %i.apw = zext i16 %i.apv to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  %i.apx = lshr i64 %i.apn, 3
  %i.apy = getelementptr inbounds nuw i8, ptr %6, i64 %i.apx ; 2 uses
  %i.apz = load i8, ptr %i.apy, align 1, !tbaa !18, !alias.scope !1301, !noalias !1300
  %i.aqa = zext i8 %i.apz to i64
  %i.aqb = and i64 %i.apn, 7
  %i.aqc = shl nuw nsw i64 %i.apw, %i.aqb
  %i.aqd = or i64 %i.aqc, %i.aqa
  store i64 %i.aqd, ptr %i.apy, align 1, !noalias !1300
  %i.aqe = add i64 %i.apn, %i.apt                 ; 4 uses
  store i64 %i.aqe, ptr %5, align 8, !tbaa !17, !alias.scope !1300, !noalias !1301
  %i.aqf = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32271
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqf, i64 1
  %i.aqh = load i8, ptr %i.aqg, align 1, !tbaa !18
  %i.aqi = zext i8 %i.aqh to i64                  ; 2 uses
  %i.aqj = getelementptr inbounds nuw i8, ptr %0, i64 %i.aqi
  %i.aqk = load i8, ptr %i.aqj, align 1, !tbaa !18
  %i.aql = zext i8 %i.aqk to i64
  %i.aqm = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.aqi
  %i.aqn = load i16, ptr %i.aqm, align 2, !tbaa !30
  %i.aqo = zext i16 %i.aqn to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  %i.aqp = lshr i64 %i.aqe, 3
  %i.aqq = getelementptr inbounds nuw i8, ptr %6, i64 %i.aqp ; 2 uses
  %i.aqr = load i8, ptr %i.aqq, align 1, !tbaa !18, !alias.scope !1303, !noalias !1302
  %i.aqs = zext i8 %i.aqr to i64
  %i.aqt = and i64 %i.aqe, 7
  %i.aqu = shl nuw nsw i64 %i.aqo, %i.aqt
  %i.aqv = or i64 %i.aqu, %i.aqs
  store i64 %i.aqv, ptr %i.aqq, align 1, !noalias !1302
  %i.aqw = add i64 %i.aqe, %i.aql                 ; 3 uses
  store i64 %i.aqw, ptr %5, align 8, !tbaa !17, !alias.scope !1302, !noalias !1303
  %i.aqx = add nuw i64 %.0.i32271, 2              ; 2 uses
  %niter651.next.1 = add i64 %niter651, 2         ; 2 uses
  %niter651.ncmp.1 = icmp eq i64 %niter651.next.1, %unroll_iter650
  br i1 %niter651.ncmp.1, label %EmitLiterals.exit33.loopexit.unr-lcssa, label %bb.bh, !llvm.loop !5

bb.bi:                                            ; preds = %bb.az
  %i.aqy = sub i64 %i.aku, %i.cr
  %i.aqz = mul i64 %i.aqy, 50
  %i.ara = icmp ugt i64 %i.aqz, %i.akv
  %narrow.not129 = select i1 %i.ara, i1 true, i1 %i.cs
  br i1 %narrow.not129, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.arb = add i64 %.0356.i.ph, -3
  tail call fastcc void @EmitUncompressedMetaBlock(ptr noundef %.0360.i.ph, ptr noundef nonnull %i.ct, i64 noundef %i.arb, ptr noundef nonnull %5, ptr noundef %6)
  br label %EmitLiterals.exit33

bb.bk:                                            ; preds = %bb.bi
  %i.arc = icmp ult i64 %i.akv, 22594
  br i1 %i.arc, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ard = load i8, ptr %i.ce, align 2, !tbaa !18
  %i.are = zext i8 %i.ard to i64
  %i.arf = load i16, ptr %i.cf, align 4, !tbaa !30
  %i.arg = zext i16 %i.arf to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  %i.arh = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !1304, !noalias !1305 ; 3 uses
  %i.ari = lshr i64 %i.arh, 3
  %i.arj = getelementptr inbounds nuw i8, ptr %6, i64 %i.ari ; 2 uses
  %i.ark = load i8, ptr %i.arj, align 1, !tbaa !18, !alias.scope !1305, !noalias !1304
  %i.arl = zext i8 %i.ark to i64
  %i.arm = and i64 %i.arh, 7
  %i.arn = shl nuw nsw i64 %i.arg, %i.arm
  %i.aro = or i64 %i.arn, %i.arl
  store i64 %i.aro, ptr %i.arj, align 1, !noalias !1304
  %i.arp = add i64 %i.arh, %i.are                 ; 4 uses
  store i64 %i.arp, ptr %5, align 8, !tbaa !17, !alias.scope !1304, !noalias !1305
  %i.arq = add nsw i64 %i.akv, -6210
  %i.arr = lshr i64 %i.arp, 3
  %i.ars = getelementptr inbounds nuw i8, ptr %6, i64 %i.arr ; 2 uses
  %i.art = load i8, ptr %i.ars, align 1, !tbaa !18, !alias.scope !1306, !noalias !1307
  %i.aru = zext i8 %i.art to i64
  %i.arv = and i64 %i.arp, 7
  %i.arw = shl nuw nsw i64 %i.arq, %i.arv
  %i.arx = or i64 %i.arw, %i.aru
  store i64 %i.arx, ptr %i.ars, align 1, !noalias !1307
  %i.ary = add i64 %i.arp, 14
  %i.arz = load i32, ptr %i.cg, align 8, !tbaa !26
  %i.asa = add i32 %i.arz, 1
  store i32 %i.asa, ptr %i.cg, align 8, !tbaa !26
  br label %EmitLongInsertLen.exit30

bb.bm:                                            ; preds = %bb.bk
  %i.asb = load i8, ptr %i.cb, align 1, !tbaa !18
  %i.asc = zext i8 %i.asb to i64
  %i.asd = load i16, ptr %i.cc, align 2, !tbaa !30
  %i.ase = zext i16 %i.asd to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  %i.asf = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !1308, !noalias !1309 ; 3 uses
  %i.asg = lshr i64 %i.asf, 3
  %i.ash = getelementptr inbounds nuw i8, ptr %6, i64 %i.asg ; 2 uses
  %i.asi = load i8, ptr %i.ash, align 1, !tbaa !18, !alias.scope !1309, !noalias !1308
  %i.asj = zext i8 %i.asi to i64
  %i.ask = and i64 %i.asf, 7
  %i.asl = shl nuw nsw i64 %i.ase, %i.ask
  %i.asm = or i64 %i.asl, %i.asj
  store i64 %i.asm, ptr %i.ash, align 1, !noalias !1308
  %i.asn = add i64 %i.asf, %i.asc                 ; 4 uses
  store i64 %i.asn, ptr %5, align 8, !tbaa !17, !alias.scope !1308, !noalias !1309
  %i.aso = add i64 %i.akv, -22594
  %i.asp = lshr i64 %i.asn, 3
  %i.asq = getelementptr inbounds nuw i8, ptr %6, i64 %i.asp ; 2 uses
  %i.asr = load i8, ptr %i.asq, align 1, !tbaa !18, !alias.scope !1310, !noalias !1311
  %i.ass = zext i8 %i.asr to i64
  %i.ast = and i64 %i.asn, 7
  %i.asu = shl i64 %i.aso, %i.ast
  %i.asv = or i64 %i.asu, %i.ass
  store i64 %i.asv, ptr %i.asq, align 1, !noalias !1311
  %i.asw = add i64 %i.asn, 24
  %i.asx = load i32, ptr %i.cd, align 4, !tbaa !26
  %i.asy = add i32 %i.asx, 1
  store i32 %i.asy, ptr %i.cd, align 4, !tbaa !26
  br label %EmitLongInsertLen.exit30

EmitLongInsertLen.exit30:                         ; preds = %bb.bl, %bb.bm
  %.sink358 = phi i64 [ %i.ary, %bb.bl ], [ %i.asw, %bb.bm ] ; 3 uses
  store i64 %.sink358, ptr %5, align 8, !tbaa !17, !noalias !19
  %i.asz = add nsw i64 %.0358.i, -1
  %i.ata = add i64 %i.asz, %.0.i.lcssa632633
  %xtraiter636 = and i64 %i.akv, 1
  %i.atb = icmp eq i64 %i.ata, %.7.i.lcssa634635
  br i1 %i.atb, label %.epil.preheader629, label %EmitLongInsertLen.exit30.new

EmitLongInsertLen.exit30.new:                     ; preds = %EmitLongInsertLen.exit30
  %unroll_iter641 = and i64 %i.akv, -2
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %EmitLongInsertLen.exit30.new
  %.0.i34270 = phi i64 [ 0, %EmitLongInsertLen.exit30.new ], [ %i.aum, %bb.bn ] ; 3 uses
  %i.atc = phi i64 [ %.sink358, %EmitLongInsertLen.exit30.new ], [ %i.aul, %bb.bn ] ; 3 uses
  %niter642 = phi i64 [ 0, %EmitLongInsertLen.exit30.new ], [ %niter642.next.1, %bb.bn ]
  %i.atd = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34270
  %i.ate = load i8, ptr %i.atd, align 1, !tbaa !18
  %i.atf = zext i8 %i.ate to i64                  ; 2 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %0, i64 %i.atf
  %i.ath = load i8, ptr %i.atg, align 1, !tbaa !18
  %i.ati = zext i8 %i.ath to i64
  %i.atj = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.atf
  %i.atk = load i16, ptr %i.atj, align 2, !tbaa !30
  %i.atl = zext i16 %i.atk to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  %i.atm = lshr i64 %i.atc, 3
  %i.atn = getelementptr inbounds nuw i8, ptr %6, i64 %i.atm ; 2 uses
  %i.ato = load i8, ptr %i.atn, align 1, !tbaa !18, !alias.scope !1313, !noalias !1312
  %i.atp = zext i8 %i.ato to i64
  %i.atq = and i64 %i.atc, 7
  %i.atr = shl nuw nsw i64 %i.atl, %i.atq
  %i.ats = or i64 %i.atr, %i.atp
  store i64 %i.ats, ptr %i.atn, align 1, !noalias !1312
  %i.att = add i64 %i.atc, %i.ati                 ; 4 uses
  store i64 %i.att, ptr %5, align 8, !tbaa !17, !alias.scope !1312, !noalias !1313
  %i.atu = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34270
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atu, i64 1
  %i.atw = load i8, ptr %i.atv, align 1, !tbaa !18
  %i.atx = zext i8 %i.atw to i64                  ; 2 uses
  %i.aty = getelementptr inbounds nuw i8, ptr %0, i64 %i.atx
  %i.atz = load i8, ptr %i.aty, align 1, !tbaa !18
  %i.aua = zext i8 %i.atz to i64
  %i.aub = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.atx
  %i.auc = load i16, ptr %i.aub, align 2, !tbaa !30
  %i.aud = zext i16 %i.auc to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  %i.aue = lshr i64 %i.att, 3
  %i.auf = getelementptr inbounds nuw i8, ptr %6, i64 %i.aue ; 2 uses
  %i.aug = load i8, ptr %i.auf, align 1, !tbaa !18, !alias.scope !1315, !noalias !1314
  %i.auh = zext i8 %i.aug to i64
  %i.aui = and i64 %i.att, 7
  %i.auj = shl nuw nsw i64 %i.aud, %i.aui
  %i.auk = or i64 %i.auj, %i.auh
  store i64 %i.auk, ptr %i.auf, align 1, !noalias !1314
  %i.aul = add i64 %i.att, %i.aua                 ; 3 uses
  store i64 %i.aul, ptr %5, align 8, !tbaa !17, !alias.scope !1314, !noalias !1315
  %i.aum = add nuw i64 %.0.i34270, 2              ; 2 uses
  %niter642.next.1 = add i64 %niter642, 2         ; 2 uses
  %niter642.ncmp.1 = icmp eq i64 %niter642.next.1, %unroll_iter641
  br i1 %niter642.ncmp.1, label %EmitLiterals.exit33.loopexit560.unr-lcssa, label %bb.bn, !llvm.loop !5

EmitLiterals.exit33.loopexit.unr-lcssa:           ; preds = %bb.bh
  %lcmp.mod648.not = icmp eq i64 %xtraiter645, 0
  br i1 %lcmp.mod648.not, label %EmitLiterals.exit33, label %.epil.preheader643

.epil.preheader643:                               ; preds = %EmitLiterals.exit33.loopexit.unr-lcssa, %.lr.ph272
  %.epil.init647 = phi i64 [ %.promoted273, %.lr.ph272 ], [ %i.aqw, %EmitLiterals.exit33.loopexit.unr-lcssa ] ; 3 uses
  %.0.i32271.epil.init = phi i64 [ 0, %.lr.ph272 ], [ %i.aqx, %EmitLiterals.exit33.loopexit.unr-lcssa ]
  %lcmp.mod649 = trunc i64 %i.akv to i1
  tail call void @llvm.assume(i1 %lcmp.mod649)
  %i.aun = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32271.epil.init
  %i.auo = load i8, ptr %i.aun, align 1, !tbaa !18
  %i.aup = zext i8 %i.auo to i64                  ; 2 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %0, i64 %i.aup
  %i.aur = load i8, ptr %i.auq, align 1, !tbaa !18
  %i.aus = zext i8 %i.aur to i64
  %i.aut = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.aup
  %i.auu = load i16, ptr %i.aut, align 2, !tbaa !30
  %i.auv = zext i16 %i.auu to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  %i.auw = lshr i64 %.epil.init647, 3
  %i.aux = getelementptr inbounds nuw i8, ptr %6, i64 %i.auw ; 2 uses
  %i.auy = load i8, ptr %i.aux, align 1, !tbaa !18, !alias.scope !1301, !noalias !1300
  %i.auz = zext i8 %i.auy to i64
  %i.ava = and i64 %.epil.init647, 7
  %i.avb = shl nuw nsw i64 %i.auv, %i.ava
  %i.avc = or i64 %i.avb, %i.auz
  store i64 %i.avc, ptr %i.aux, align 1, !noalias !1300
  %i.avd = add i64 %.epil.init647, %i.aus
  store i64 %i.avd, ptr %5, align 8, !tbaa !17, !alias.scope !1300, !noalias !1301
  br label %EmitLiterals.exit33

EmitLiterals.exit33.loopexit560.unr-lcssa:        ; preds = %bb.bn
  %lcmp.mod639.not = icmp eq i64 %xtraiter636, 0
  br i1 %lcmp.mod639.not, label %EmitLiterals.exit33, label %.epil.preheader629

.epil.preheader629:                               ; preds = %EmitLiterals.exit33.loopexit560.unr-lcssa, %EmitLongInsertLen.exit30
  %.0.i34270.epil.init = phi i64 [ 0, %EmitLongInsertLen.exit30 ], [ %i.aum, %EmitLiterals.exit33.loopexit560.unr-lcssa ]
  %.epil.init638 = phi i64 [ %.sink358, %EmitLongInsertLen.exit30 ], [ %i.aul, %EmitLiterals.exit33.loopexit560.unr-lcssa ] ; 3 uses
  %lcmp.mod640 = trunc i64 %i.akv to i1
  tail call void @llvm.assume(i1 %lcmp.mod640)
  %i.ave = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34270.epil.init
  %i.avf = load i8, ptr %i.ave, align 1, !tbaa !18
  %i.avg = zext i8 %i.avf to i64                  ; 2 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %0, i64 %i.avg
  %i.avi = load i8, ptr %i.avh, align 1, !tbaa !18
  %i.avj = zext i8 %i.avi to i64
  %i.avk = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.avg
  %i.avl = load i16, ptr %i.avk, align 2, !tbaa !30
  %i.avm = zext i16 %i.avl to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  %i.avn = lshr i64 %.epil.init638, 3
  %i.avo = getelementptr inbounds nuw i8, ptr %6, i64 %i.avn ; 2 uses
  %i.avp = load i8, ptr %i.avo, align 1, !tbaa !18, !alias.scope !1313, !noalias !1312
  %i.avq = zext i8 %i.avp to i64
  %i.avr = and i64 %.epil.init638, 7
  %i.avs = shl nuw nsw i64 %i.avm, %i.avr
  %i.avt = or i64 %i.avs, %i.avq
  store i64 %i.avt, ptr %i.avo, align 1, !noalias !1312
  %i.avu = add i64 %.epil.init638, %i.avj
  store i64 %i.avu, ptr %5, align 8, !tbaa !17, !alias.scope !1312, !noalias !1313
  br label %EmitLiterals.exit33

EmitLiterals.exit33:                              ; preds = %.epil.preheader629, %EmitLiterals.exit33.loopexit560.unr-lcssa, %.epil.preheader643, %EmitLiterals.exit33.loopexit.unr-lcssa, %EmitInsertLen.exit27, %.thread76.thread118, %bb.bj, %bb.ay
  %.8.i = phi ptr [ %.us-phi219, %.thread76.thread118 ], [ %i.ct, %bb.ay ], [ %i.ct, %EmitInsertLen.exit27 ], [ %i.ct, %bb.bj ], [ %i.ct, %.epil.preheader643 ], [ %i.ct, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %i.ct, %EmitLiterals.exit33.loopexit560.unr-lcssa ], [ %i.ct, %.epil.preheader629 ] ; 2 uses
  %.5323.i = phi i64 [ %i.ln, %.thread76.thread118 ], [ %i.aij, %bb.ay ], [ %i.aij, %EmitInsertLen.exit27 ], [ %i.aij, %bb.bj ], [ %i.aij, %.epil.preheader643 ], [ %i.aij, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %i.aij, %EmitLiterals.exit33.loopexit560.unr-lcssa ], [ %i.aij, %.epil.preheader629 ] ; 4 uses
  %.not393.i = icmp eq i64 %.5323.i, 0
  br i1 %.not393.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %EmitLiterals.exit33
  %i.avv = tail call i64 @llvm.umin.i64(i64 %.5323.i, i64 98304) ; 3 uses
  %i.avw = load i64, ptr %5, align 8, !tbaa !17   ; 3 uses
  %i.avx = add i64 %i.avw, 3                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  %i.avy = lshr i64 %i.avw, 3
  %i.avz = getelementptr inbounds nuw i8, ptr %6, i64 %i.avy ; 2 uses
  %i.awa = load i8, ptr %i.avz, align 1, !tbaa !18, !alias.scope !1317, !noalias !1316
  %i.awb = zext i8 %i.awa to i64
  store i64 %i.awb, ptr %i.avz, align 1, !noalias !1316
  %i.awc = add i64 %i.avw, 1                      ; 3 uses
  store i64 %i.awc, ptr %5, align 8, !tbaa !17, !alias.scope !1316, !noalias !1317
  %i.awd = icmp ult i64 %.5323.i, 65537
  %.0.i57 = select i1 %i.awd, i64 4, i64 5        ; 2 uses
  %i.awe = add nsw i64 %.0.i57, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  %i.awf = lshr i64 %i.awc, 3
  %i.awg = getelementptr inbounds nuw i8, ptr %6, i64 %i.awf ; 2 uses
  %i.awh = load i8, ptr %i.awg, align 1, !tbaa !18, !alias.scope !1319, !noalias !1318
  %i.awi = zext i8 %i.awh to i64
  %i.awj = and i64 %i.awc, 7
  %i.awk = shl nuw nsw i64 %i.awe, %i.awj
  %i.awl = or i64 %i.awk, %i.awi
  store i64 %i.awl, ptr %i.awg, align 1, !noalias !1318
  store i64 %i.avx, ptr %5, align 8, !tbaa !17, !alias.scope !1318, !noalias !1319
  %i.awm = shl nuw nsw i64 %.0.i57, 2
  %i.awn = add nsw i64 %i.avv, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1321)
  %i.awo = lshr i64 %i.avx, 3
  %i.awp = getelementptr inbounds nuw i8, ptr %6, i64 %i.awo ; 2 uses
  %i.awq = load i8, ptr %i.awp, align 1, !tbaa !18, !alias.scope !1321, !noalias !1320
  %i.awr = zext i8 %i.awq to i64
  %i.aws = and i64 %i.avx, 7
  %i.awt = shl nuw nsw i64 %i.awn, %i.aws
  %i.awu = or i64 %i.awt, %i.awr
  store i64 %i.awu, ptr %i.awp, align 1, !noalias !1320
  %i.awv = add i64 %i.avx, %i.awm                 ; 4 uses
  store i64 %i.awv, ptr %5, align 8, !tbaa !17, !alias.scope !1320, !noalias !1321
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1323)
  %i.aww = lshr i64 %i.awv, 3
  %i.awx = getelementptr inbounds nuw i8, ptr %6, i64 %i.aww ; 2 uses
  %i.awy = load i8, ptr %i.awx, align 1, !tbaa !18, !alias.scope !1323, !noalias !1322
  %i.awz = zext i8 %i.awy to i64
  store i64 %i.awz, ptr %i.awx, align 1, !noalias !1322
  %i.axa = add i64 %i.awv, 1                      ; 2 uses
  store i64 %i.axa, ptr %5, align 8, !tbaa !17, !alias.scope !1322, !noalias !1323
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  %i.axb = lshr i64 %i.axa, 3
  %i.axc = getelementptr inbounds nuw i8, ptr %6, i64 %i.axb ; 2 uses
  %i.axd = load i8, ptr %i.axc, align 1, !tbaa !18, !alias.scope !1325, !noalias !1324
  %i.axe = zext i8 %i.axd to i64
  store i64 %i.axe, ptr %i.axc, align 1, !noalias !1324
  %i.axf = add i64 %i.awv, 14
  store i64 %i.axf, ptr %5, align 8, !tbaa !17, !alias.scope !1324, !noalias !1325
  %i.axg = tail call fastcc i64 @BuildAndStoreLiteralPrefixCode(ptr noundef %0, ptr noundef %.8.i, i64 noundef %i.avv, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %6)
  br label %UpdateBits.exit.outer

bb.bp:                                            ; preds = %EmitLiterals.exit33
  %.not394.i = icmp eq i32 %3, 0
  br i1 %.not394.i, label %bb.bq, label %BrotliCompressFragmentFastImpl.exit

bb.bq:                                            ; preds = %bb.bp
  store i8 0, ptr %i.bn, align 8, !tbaa !18
  store i64 0, ptr %i.aq, align 8, !tbaa !21
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.bn)
  br label %BrotliCompressFragmentFastImpl.exit

BrotliCompressFragmentFastImpl.exit:              ; preds = %bb.bp, %bb.bq
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @EmitUncompressedMetaBlock(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(none) initializes((0, 8)) %3, ptr nofree noundef captures(none) %4) unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = trunc i64 %2 to i8
  %i.e = and i8 %i.d, 7
  %notmask.i = shl nsw i8 -1, %i.e
  %i.f = xor i8 %notmask.i, -1
  %i.g = lshr i64 %2, 3
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 %i.g ; 4 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !18
  %i.j = and i8 %i.i, %i.f
  store i8 %i.j, ptr %i.h, align 1, !tbaa !18
  store i64 %2, ptr %3, align 8, !tbaa !17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  %i.k = load i8, ptr %i.h, align 1, !tbaa !18, !alias.scope !1339, !noalias !1338
  %i.l = zext i8 %i.k to i64
  store i64 %i.l, ptr %i.h, align 1, !noalias !1338
  %i.m = add i64 %2, 1                            ; 3 uses
  store i64 %i.m, ptr %3, align 8, !tbaa !17, !alias.scope !1338, !noalias !1339
  %i.n = icmp ult i64 %i.c, 65537
  %i.o = icmp ult i64 %i.c, 1048577
  %spec.select.i = select i1 %i.o, i64 5, i64 6
  %.0.i = select i1 %i.n, i64 4, i64 %spec.select.i ; 2 uses
  %i.p = add nsw i64 %.0.i, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  %i.q = lshr i64 %i.m, 3
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 %i.q ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !18, !alias.scope !1341, !noalias !1340
  %i.t = zext i8 %i.s to i64
  %i.u = and i64 %i.m, 7
  %i.v = shl nuw nsw i64 %i.p, %i.u
  %i.w = or i64 %i.v, %i.t
  store i64 %i.w, ptr %i.r, align 1, !noalias !1340
  %i.x = add i64 %2, 3                            ; 4 uses
  store i64 %i.x, ptr %3, align 8, !tbaa !17, !alias.scope !1340, !noalias !1341
  %i.y = shl nuw nsw i64 %.0.i, 2
  %i.z = add i64 %i.c, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  %i.aa = lshr i64 %i.x, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 %i.aa ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !18, !alias.scope !1343, !noalias !1342
  %i.ad = zext i8 %i.ac to i64
  %i.ae = and i64 %i.x, 7
  %i.af = shl i64 %i.z, %i.ae
  %i.ag = or i64 %i.af, %i.ad
  store i64 %i.ag, ptr %i.ab, align 1, !noalias !1342
  %i.ah = add i64 %i.y, %i.x                      ; 4 uses
  store i64 %i.ah, ptr %3, align 8, !tbaa !17, !alias.scope !1342, !noalias !1343
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 %i.ai ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !18, !alias.scope !1344, !noalias !1345
  %i.al = zext i8 %i.ak to i64
  %i.am = and i64 %i.ah, 7
  %i.an = shl nuw nsw i64 1, %i.am
  %i.ao = or i64 %i.an, %i.al
  store i64 %i.ao, ptr %i.aj, align 1, !noalias !1345
  %i.ap = add i64 %i.ah, 8
  %i.aq = and i64 %i.ap, 4294967288               ; 2 uses
  store i64 %i.aq, ptr %3, align 8, !tbaa !17
  %i.ar = lshr exact i64 %i.aq, 3
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 %i.ar
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %0, i64 %i.c, i1 false)
  %i.at = shl i64 %i.c, 3
  %i.au = load i64, ptr %3, align 8, !tbaa !17
  %i.av = add i64 %i.au, %i.at                    ; 2 uses
  store i64 %i.av, ptr %3, align 8, !tbaa !17
  %i.aw = lshr i64 %i.av, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 %i.aw
  store i8 0, ptr %i.ax, align 1, !tbaa !18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc i64 @BuildAndStoreLiteralPrefixCode(ptr noundef initializes((6288, 7312)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6288 ; 12 uses
end_hunk_7
