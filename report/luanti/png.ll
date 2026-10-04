Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/png?download=true
inline.NumInlined: 158
inline.NumDeleted: 93
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_Z9encodePNGB5cxx11PKhjji:bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %i.bd
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %i.be
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 36
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 %i.bf
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %i.bg
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 44
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 %i.bh
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %i.bi
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 52
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 %i.bj
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 56
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 %i.bk
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 60
  %i.cq = load i8, ptr %i.bl, align 1, !tbaa !36, !alias.scope !38
  %i.cr = load i8, ptr %i.bn, align 1, !tbaa !36, !alias.scope !38
  %i.cs = load i8, ptr %i.bp, align 1, !tbaa !36, !alias.scope !38
  %i.ct = load i8, ptr %i.br, align 1, !tbaa !36, !alias.scope !38
  %i.cu = load i8, ptr %i.bt, align 1, !tbaa !36, !alias.scope !38
  %i.cv = load i8, ptr %i.bv, align 1, !tbaa !36, !alias.scope !38
  %i.cw = load i8, ptr %i.bx, align 1, !tbaa !36, !alias.scope !38
  %i.cx = load i8, ptr %i.bz, align 1, !tbaa !36, !alias.scope !38
  %i.cy = load i8, ptr %i.cb, align 1, !tbaa !36, !alias.scope !38
  %i.cz = load i8, ptr %i.cd, align 1, !tbaa !36, !alias.scope !38
  %i.da = load i8, ptr %i.cf, align 1, !tbaa !36, !alias.scope !38
  %i.db = load i8, ptr %i.ch, align 1, !tbaa !36, !alias.scope !38
  %i.dc = load i8, ptr %i.cj, align 1, !tbaa !36, !alias.scope !38
  %i.dd = load i8, ptr %i.cl, align 1, !tbaa !36, !alias.scope !38
  %i.de = load i8, ptr %i.cn, align 1, !tbaa !36, !alias.scope !38
  %i.df = load i8, ptr %i.cp, align 1, !tbaa !36, !alias.scope !38
  %i.dg = insertelement <16 x i8> poison, i8 %i.cq, i64 0
  %i.dh = insertelement <16 x i8> %i.dg, i8 %i.cr, i64 1
  %i.di = insertelement <16 x i8> %i.dh, i8 %i.cs, i64 2
  %i.dj = insertelement <16 x i8> %i.di, i8 %i.ct, i64 3
  %i.dk = insertelement <16 x i8> %i.dj, i8 %i.cu, i64 4
  %i.dl = insertelement <16 x i8> %i.dk, i8 %i.cv, i64 5
  %i.dm = insertelement <16 x i8> %i.dl, i8 %i.cw, i64 6
  %i.dn = insertelement <16 x i8> %i.dm, i8 %i.cx, i64 7
  %i.do = insertelement <16 x i8> %i.dn, i8 %i.cy, i64 8
  %i.dp = insertelement <16 x i8> %i.do, i8 %i.cz, i64 9
  %i.dq = insertelement <16 x i8> %i.dp, i8 %i.da, i64 10
  %i.dr = insertelement <16 x i8> %i.dq, i8 %i.db, i64 11
  %i.ds = insertelement <16 x i8> %i.dr, i8 %i.dc, i64 12
  %i.dt = insertelement <16 x i8> %i.ds, i8 %i.dd, i64 13
  %i.du = insertelement <16 x i8> %i.dt, i8 %i.de, i64 14
  %i.dv = insertelement <16 x i8> %i.du, i8 %i.df, i64 15
  %i.dw = getelementptr inbounds nuw i8, ptr %i.w, i64 %index
  store <16 x i8> %i.dv, ptr %i.dw, align 1, !tbaa !36, !alias.scope !39, !noalias !38
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !21

vec.epilog.iter.check:                            ; preds = %vector.body
  %min.epilog.iters.check = icmp samesign ult i64 %i.ae, 9
  br i1 %min.epilog.iters.check, label %.lr.ph68.i.preheader, label %vec.epilog.ph, !prof !42

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.dy = and i64 %wide.trip.count.i, 7           ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0
  %i.ea = select i1 %i.dz, i64 8, i64 %i.dy
  %n.vec155 = sub nsw i64 %wide.trip.count.i, %i.ea ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index156 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next157, %vec.epilog.vector.body ] ; 10 uses
  %i.eb = shl nuw nsw i64 %index156, 2
  %i.ec = shl i64 %index156, 2
  %i.ed = add i64 %i.ec, 4
  %i.ee = shl i64 %index156, 2
  %i.ef = add i64 %i.ee, 8
  %i.eg = shl i64 %index156, 2
  %i.eh = add i64 %i.eg, 12
  %i.ei = shl i64 %index156, 2
  %i.ej = add i64 %i.ei, 16
  %i.ek = shl i64 %index156, 2
  %i.el = add i64 %i.ek, 20
  %i.em = shl i64 %index156, 2
  %i.en = add i64 %i.em, 24
  %i.eo = shl i64 %index156, 2
  %i.ep = add i64 %i.eo, 28
  %i.eq = and i64 %i.eb, 4294967292
  %i.er = and i64 %i.ed, 4294967292
  %i.es = and i64 %i.ef, 4294967292
  %i.et = and i64 %i.eh, 4294967292
  %i.eu = and i64 %i.ej, 4294967292
  %i.ev = and i64 %i.el, 4294967292
  %i.ew = and i64 %i.en, 4294967292
  %i.ex = and i64 %i.ep, 4294967292
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 %i.eq
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 %i.er
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 %i.es
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 %i.et
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 %i.eu
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 %i.ev
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 %i.ew
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 %i.ex
  %i.fg = load i8, ptr %i.ey, align 1, !tbaa !36, !alias.scope !38
  %i.fh = load i8, ptr %i.ez, align 1, !tbaa !36, !alias.scope !38
  %i.fi = load i8, ptr %i.fa, align 1, !tbaa !36, !alias.scope !38
  %i.fj = load i8, ptr %i.fb, align 1, !tbaa !36, !alias.scope !38
  %i.fk = load i8, ptr %i.fc, align 1, !tbaa !36, !alias.scope !38
  %i.fl = load i8, ptr %i.fd, align 1, !tbaa !36, !alias.scope !38
  %i.fm = load i8, ptr %i.fe, align 1, !tbaa !36, !alias.scope !38
  %i.fn = load i8, ptr %i.ff, align 1, !tbaa !36, !alias.scope !38
  %i.fo = insertelement <8 x i8> poison, i8 %i.fg, i64 0
  %i.fp = insertelement <8 x i8> %i.fo, i8 %i.fh, i64 1
  %i.fq = insertelement <8 x i8> %i.fp, i8 %i.fi, i64 2
  %i.fr = insertelement <8 x i8> %i.fq, i8 %i.fj, i64 3
  %i.fs = insertelement <8 x i8> %i.fr, i8 %i.fk, i64 4
  %i.ft = insertelement <8 x i8> %i.fs, i8 %i.fl, i64 5
  %i.fu = insertelement <8 x i8> %i.ft, i8 %i.fm, i64 6
  %i.fv = insertelement <8 x i8> %i.fu, i8 %i.fn, i64 7
  %i.fw = getelementptr inbounds nuw i8, ptr %i.w, i64 %index156
  store <8 x i8> %i.fv, ptr %i.fw, align 1, !tbaa !36, !alias.scope !39, !noalias !38
  %index.next157 = add nuw i64 %index156, 8       ; 2 uses
  %i.fx = icmp eq i64 %index.next157, %n.vec155
  br i1 %i.fx, label %.lr.ph68.i.preheader, label %vec.epilog.vector.body, !llvm.loop !22

.lr.ph68.i.preheader:                             ; preds = %vec.epilog.vector.body, %iter.check, %vector.memcheck, %vec.epilog.iter.check
  %indvars.iv84.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec155, %vec.epilog.vector.body ] ; 4 uses
  %i.fy = sub nsw i64 %wide.trip.count.i, %indvars.iv84.i.ph
  %xtraiter167 = and i64 %i.fy, 3                 ; 2 uses
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br i1 %lcmp.mod168.not, label %.lr.ph68.i.prol.loopexit, label %.lr.ph68.i.prol

.lr.ph68.i.prol:                                  ; preds = %.lr.ph68.i.preheader, %.lr.ph68.i.prol
  %indvars.iv84.i.prol = phi i64 [ %indvars.iv.next85.i.prol, %.lr.ph68.i.prol ], [ %indvars.iv84.i.ph, %.lr.ph68.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph68.i.prol ], [ 0, %.lr.ph68.i.preheader ]
  %i.fz = shl nuw nsw i64 %indvars.iv84.i.prol, 2
  %i.ga = and i64 %i.fz, 4294967292
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !36
  %i.gd = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv84.i.prol
  store i8 %i.gc, ptr %i.gd, align 1, !tbaa !36
  %indvars.iv.next85.i.prol = add nuw nsw i64 %indvars.iv84.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter167
  br i1 %prol.iter.cmp.not, label %.lr.ph68.i.prol.loopexit, label %.lr.ph68.i.prol, !llvm.loop !23

.lr.ph68.i.prol.loopexit:                         ; preds = %.lr.ph68.i.prol, %.lr.ph68.i.preheader
  %indvars.iv84.i.unr = phi i64 [ %indvars.iv84.i.ph, %.lr.ph68.i.preheader ], [ %indvars.iv.next85.i.prol, %.lr.ph68.i.prol ]
  %i.ge = sub nsw i64 %indvars.iv84.i.ph, %wide.trip.count.i
  %i.gf = icmp ugt i64 %i.ge, -4
  br i1 %i.gf, label %.loopexit118, label %.lr.ph68.i

.lr.ph68.i:                                       ; preds = %.lr.ph68.i.prol.loopexit, %.lr.ph68.i
  %indvars.iv84.i = phi i64 [ %indvars.iv.next85.i.3, %.lr.ph68.i ], [ %indvars.iv84.i.unr, %.lr.ph68.i.prol.loopexit ] ; 6 uses
  %i.gg = shl nuw nsw i64 %indvars.iv84.i, 2
  %i.gh = and i64 %i.gg, 4294967292
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !36
  %i.gk = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv84.i
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !36
  %indvars.iv.next85.i = add nuw nsw i64 %indvars.iv84.i, 1 ; 2 uses
  %i.gl = shl nuw nsw i64 %indvars.iv.next85.i, 2
  %i.gm = and i64 %i.gl, 4294967292
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !36
  %i.gp = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next85.i
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !36
  %indvars.iv.next85.i.1 = add nuw nsw i64 %indvars.iv84.i, 2 ; 2 uses
  %i.gq = shl nuw nsw i64 %indvars.iv.next85.i.1, 2
  %i.gr = and i64 %i.gq, 4294967292
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !36
  %i.gu = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next85.i.1
  store i8 %i.gt, ptr %i.gu, align 1, !tbaa !36
  %indvars.iv.next85.i.2 = add nuw nsw i64 %indvars.iv84.i, 3 ; 2 uses
  %i.gv = shl nuw nsw i64 %indvars.iv.next85.i.2, 2
  %i.gw = and i64 %i.gv, 4294967292
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !36
  %i.gz = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next85.i.2
  store i8 %i.gy, ptr %i.gz, align 1, !tbaa !36
  %indvars.iv.next85.i.3 = add nuw nsw i64 %indvars.iv84.i, 4 ; 2 uses
  %exitcond88.not.i.3 = icmp eq i64 %indvars.iv.next85.i.3, %wide.trip.count.i
  br i1 %exitcond88.not.i.3, label %.loopexit118, label %.lr.ph68.i, !llvm.loop !24

.thread55.i:                                      ; preds = %bb.d, %.lr.ph66.i
  %i.ha = mul i32 %i.i, 3
  %i.hb = zext i32 %i.ha to i64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.hb, i8 noundef signext 0)
          to label %.noexc53 unwind label %bb.f

.noexc53:                                         ; preds = %.thread55.i
  %i.hc = load ptr, ptr %5, align 8, !tbaa !15    ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.hd = icmp eq i32 %i.i, 1
  br i1 %i.hd, label %.epil.preheader, label %.noexc53.new

.noexc53.new:                                     ; preds = %.noexc53
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.noexc53.new
  %indvars.iv79.i = phi i64 [ 0, %.noexc53.new ], [ %indvars.iv.next80.i.1, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.noexc53.new ], [ %niter.next.1, %bb.e ]
  %i.he = mul i64 %indvars.iv79.i, 3
  %i.hf = and i64 %i.he, 4294967294
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.hf
  %i.hh = shl i64 %indvars.iv79.i, 2
  %i.hi = and i64 %i.hh, 4294967288
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 %i.hi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.hg, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.hj, i64 3, i1 false)
  %indvars.iv.next80.i = or disjoint i64 %indvars.iv79.i, 1 ; 2 uses
  %i.hk = mul i64 %indvars.iv.next80.i, 3
  %i.hl = and i64 %i.hk, 4294967295
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.hl
  %i.hn = shl i64 %indvars.iv.next80.i, 2
  %i.ho = and i64 %i.hn, 4294967292
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 %i.ho
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.hm, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.hp, i64 3, i1 false)
  %indvars.iv.next80.i.1 = add nuw nsw i64 %indvars.iv79.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit118.loopexit165.unr-lcssa, label %bb.e, !llvm.loop !25

.loopexit118.loopexit165.unr-lcssa:               ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit118, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit118.loopexit165.unr-lcssa, %.noexc53
  %indvars.iv79.i.epil.init = phi i64 [ 0, %.noexc53 ], [ %indvars.iv.next80.i.1, %.loopexit118.loopexit165.unr-lcssa ] ; 2 uses
  %lcmp.mod166 = trunc i32 %i.i to i1
  call void @llvm.assume(i1 %lcmp.mod166)
  %i.hq = mul i64 %indvars.iv79.i.epil.init, 3
  %i.hr = and i64 %i.hq, 4294967295
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.hr
  %i.ht = shl i64 %indvars.iv79.i.epil.init, 2
  %i.hu = and i64 %i.ht, 4294967292
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 %i.hu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.hs, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.hv, i64 3, i1 false)
  br label %.loopexit118

.loopexit118:                                     ; preds = %.epil.preheader, %.loopexit118.loopexit165.unr-lcssa, %.lr.ph68.i.prol.loopexit, %.lr.ph68.i, %.critedge59.thread.i
  %.sroa.3.0.i.ph = phi i8 [ 0, %.critedge59.thread.i ], [ 0, %.lr.ph68.i.prol.loopexit ], [ 0, %.lr.ph68.i ], [ 2, %.loopexit118.loopexit165.unr-lcssa ], [ 2, %.epil.preheader ]
  %i.hw = load ptr, ptr %5, align 8, !tbaa !15
  br label %_ZL11reduceColorPKhjjRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.f:                                             ; preds = %.thread55.i, %.critedge59.i, %.critedge59.thread.i
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZL11reduceColorPKhjjRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i, %.loopexit118, %bb.a
  %.128 = phi i8 [ 6, %bb.a ], [ %.sroa.3.0.i.ph, %.loopexit118 ], [ 6, %.lr.ph.i ] ; 3 uses
  %.1 = phi ptr [ %1, %bb.a ], [ %i.hw, %.loopexit118 ], [ %1, %.lr.ph.i ]
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.hy, ptr %0, align 8, !tbaa !35
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.hz, align 8, !tbaa !14
  store i8 0, ptr %i.hy, align 8, !tbaa !36
  %i.ia = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str, i64 noundef 8)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit unwind label %bb.r ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %_ZL11reduceColorPKhjjRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(112) %6, i32 noundef 4)
          to label %bb.g unwind label %bb.s

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.ib = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.1, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.ic = call noundef i32 @llvm.bswap.i32(i32 %2)
  store i32 %i.ic, ptr %i.d, align 4
  %i.id = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %i.d, i64 noundef 4)
          to label %bb.h unwind label %bb.t       ; 0 uses

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.ie = call noundef i32 @llvm.bswap.i32(i32 %3)
  store i32 %i.ie, ptr %i.c, align 4
  %i.if = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %i.c, i64 noundef 4)
          to label %bb.i unwind label %bb.t       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i8 8, ptr %i.b, align 1, !tbaa !36
  %i.ig = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.j unwind label %bb.t       ; 0 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i8 %.128, ptr %i.a, align 1, !tbaa !36
  %i.ih = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.k unwind label %bb.t       ; 0 uses

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.ii = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.2, i64 noundef 3)
          to label %bb.l unwind label %bb.t       ; 0 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.ij = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.ij, ptr %7, align 8, !tbaa !35, !alias.scope !46
  %i.ik = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.ik, align 8, !tbaa !14, !alias.scope !46
  store i8 0, ptr %i.ij, align 8, !tbaa !36, !alias.scope !46
  %i.il = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !50, !noalias !46 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.im, null
  %i.in = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.io = load ptr, ptr %i.in, align 8, !noalias !46 ; 2 uses
  %i.ip = icmp ugt ptr %i.im, %i.io
  %.08.i.i.i = select i1 %i.ip, ptr %i.im, ptr %i.io ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.iq = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !51, !noalias !46 ; 2 uses
  %i.is = ptrtoint ptr %.08.i.i.i to i64
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = sub i64 %i.is, %i.it
  %i.iv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.ir, i64 noundef %i.iu)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.iw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ix = load ptr, ptr %7, align 8, !tbaa !15, !alias.scope !46 ; 2 uses
  %i.iy = icmp eq ptr %i.ix, %i.ij
  br i1 %i.iy, label %.body, label %.body.sink.split

bb.o:                                             ; preds = %bb.l
  %i.iz = getelementptr inbounds nuw i8, ptr %6, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.iz)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.n

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.o, %bb.m
  invoke fastcc void @_ZL10writeChunkRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ja = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.ij
  br i1 %i.jb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.jc = load i64, ptr %i.ij, align 8, !tbaa !36
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.jd) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %i.je = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  store ptr %i.je, ptr %6, align 8, !tbaa !53
  %i.jf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.jg = getelementptr i8, ptr %i.je, i64 -24    ; 2 uses
  %i.jh = load i64, ptr %i.jg, align 8
  %i.ji = getelementptr inbounds i8, ptr %6, i64 %i.jh
  store ptr %i.jf, ptr %i.ji, align 8, !tbaa !53
  %i.jj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.jj, align 8, !tbaa !53
  %i.jk = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !15 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.jn = icmp eq ptr %i.jl, %i.jm
  br i1 %i.jn, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.jo = load i64, ptr %i.jm, align 8, !tbaa !36
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jp) #11
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.jj, align 8, !tbaa !53
  %i.jq = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.jq) #10
  %i.jr = getelementptr inbounds nuw i8, ptr %6, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.jr) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(112) %8, i32 noundef 4)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.js = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.3, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65 unwind label %bb.y ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65: ; preds = %bb.q
  %i.jt = icmp eq i8 %.128, 0
  %i.ju = icmp eq i8 %.128, 2
  %i.jv = select i1 %i.ju, i32 3, i32 4
  %i.jw = select i1 %i.jt, i32 1, i32 %i.jv
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  %i.jx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.jx, ptr %9, align 8, !tbaa !35
  %i.jy = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i64 0, ptr %i.jy, align 8, !tbaa !14
  store i8 0, ptr %i.jx, align 8, !tbaa !36
  %i.jz = mul i32 %i.jw, %2                       ; 3 uses
  %i.ka = add i32 %i.jz, 1
  %i.kb = mul i32 %i.ka, %3
  %i.kc = zext i32 %i.kb to i64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.kc)
          to label %.preheader unwind label %bb.z

.preheader:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.kd = zext i32 %i.jz to i64                   ; 2 uses
  %wide.trip.count = zext i32 %3 to i64
  br label %bb.aa

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, %.preheader
  %i.ke = load ptr, ptr %9, align 8, !tbaa !15
  %i.kf = load i64, ptr %i.jy, align 8, !tbaa !14
  invoke void @_Z12compressZlibPKhmRSoi(ptr noundef %i.ke, i64 noundef %i.kf, ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef %4)
          to label %_Z12compressZlibSt17basic_string_viewIcSt11char_traitsIcEERSoi.exit unwind label %bb.z

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i93, %bb.ag, %_ZL11reduceColorPKhjjRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %bb.al
end_hunk_0
