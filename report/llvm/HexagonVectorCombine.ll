Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonVectorCombine?download=true
inline.NumInlined: 6843
inline.NumDeleted: 3195
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN12_GLOBAL__N_19HvxIdioms3runEv:bb.a
  %i.kx = getelementptr inbounds nuw i8, ptr %160, i64 33
  %i.ky = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.kz = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.la = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.lb = getelementptr inbounds nuw i8, ptr %161, i64 32
  %i.lc = getelementptr inbounds nuw i8, ptr %162, i64 8
  %i.ld = ptrtoint ptr %163 to i64
  %i.le = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.lf = getelementptr inbounds nuw i8, ptr %34, i64 33
  %i.lg = getelementptr inbounds nuw i8, ptr %34, i64 32
  %i.lh = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.li = getelementptr inbounds nuw i8, ptr %9, i64 33
  %i.lj = getelementptr inbounds nuw i8, ptr %164, i64 32
  %i.lk = getelementptr inbounds nuw i8, ptr %164, i64 33
  %i.ll = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ln = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.lo = getelementptr inbounds nuw i8, ptr %165, i64 32
  %i.lp = getelementptr inbounds nuw i8, ptr %166, i64 8
  %i.lq = ptrtoint ptr %167 to i64
  %i.lr = getelementptr inbounds nuw i8, ptr %154, i64 32
  %i.ls = getelementptr inbounds nuw i8, ptr %154, i64 33
  %i.lt = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.lv = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.lw = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.lx = getelementptr inbounds nuw i8, ptr %155, i64 32
  %i.ly = getelementptr inbounds nuw i8, ptr %156, i64 8
  %i.lz = ptrtoint ptr %157 to i64
  %i.ma = getelementptr inbounds nuw i8, ptr %134, i64 32
  %i.mb = getelementptr inbounds nuw i8, ptr %134, i64 33
  %i.mc = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.md = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.me = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.mf = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.mg = getelementptr inbounds nuw i8, ptr %151, i64 32
  %i.mh = getelementptr inbounds nuw i8, ptr %152, i64 8
  %i.mi = ptrtoint ptr %153 to i64
  %i.mj = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.mm = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.mn = getelementptr inbounds nuw i8, ptr %148, i64 32
  %i.mo = getelementptr inbounds nuw i8, ptr %149, i64 8
  %i.mp = ptrtoint ptr %150 to i64
  %i.mq = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.mr = getelementptr inbounds nuw i8, ptr %25, i64 33
  %i.ms = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.mt = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.mu = getelementptr inbounds nuw i8, ptr %5, i64 33
  %i.mv = getelementptr inbounds nuw i8, ptr %135, i64 32
  %i.mw = getelementptr inbounds nuw i8, ptr %135, i64 33
  %i.mx = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.my = getelementptr inbounds nuw i8, ptr %136, i64 32
  %i.mz = getelementptr inbounds nuw i8, ptr %137, i64 8
  %i.na = ptrtoint ptr %138 to i64
  %i.nb = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.nc = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.nd = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ne = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.nf = getelementptr inbounds nuw i8, ptr %139, i64 32
  %i.ng = getelementptr inbounds nuw i8, ptr %140, i64 8
  %i.nh = ptrtoint ptr %141 to i64
  %i.ni = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.nj = getelementptr inbounds nuw i8, ptr %19, i64 33
  %i.nk = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.nn = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.no = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.np = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.nq = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.nr = getelementptr inbounds nuw i8, ptr %142, i64 32
  %i.ns = getelementptr inbounds nuw i8, ptr %143, i64 8
  %i.nt = ptrtoint ptr %144 to i64
  %i.nu = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.nv = getelementptr inbounds nuw i8, ptr %21, i64 33
  %i.nw = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.nx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ny = getelementptr inbounds nuw i8, ptr %3, i64 33
  %i.nz = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.oa = getelementptr inbounds nuw i8, ptr %145, i64 32
  %i.ob = getelementptr inbounds nuw i8, ptr %146, i64 8
  %i.oc = ptrtoint ptr %147 to i64
  %i.od = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.oe = getelementptr inbounds nuw i8, ptr %236, i64 16
  %i.of = getelementptr inbounds nuw i8, ptr %109, i64 8
  %i.og = getelementptr inbounds nuw i8, ptr %109, i64 16
  %i.oh = getelementptr inbounds nuw i8, ptr %109, i64 24 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %109, i64 32
  %i.oj = getelementptr inbounds nuw i8, ptr %109, i64 80
  %i.ok = getelementptr inbounds nuw i8, ptr %109, i64 81
  %i.ol = getelementptr inbounds nuw i8, ptr %109, i64 82
  %i.om = getelementptr inbounds nuw i8, ptr %108, i64 72
  %i.on = getelementptr inbounds nuw i8, ptr %108, i64 88 ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %108, i64 176 ; 3 uses
  %i.op = getelementptr inbounds nuw i8, ptr %108, i64 32
  %i.oq = getelementptr inbounds nuw i8, ptr %108, i64 40
  %i.or = getelementptr inbounds nuw i8, ptr %108, i64 48 ; 4 uses
  %i.os = getelementptr inbounds nuw i8, ptr %108, i64 56
  %i.ot = getelementptr inbounds nuw i8, ptr %108, i64 64
  %i.ou = getelementptr inbounds nuw i8, ptr %108, i64 68
  %i.ov = getelementptr inbounds nuw i8, ptr %108, i64 69
  %i.ow = getelementptr inbounds nuw i8, ptr %108, i64 70
  %i.ox = getelementptr inbounds nuw i8, ptr %108, i64 8 ; 4 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %108, i64 96
  %i.oz = getelementptr inbounds nuw i8, ptr %108, i64 104
  %i.pa = getelementptr inbounds nuw i8, ptr %108, i64 112
  %i.pb = getelementptr inbounds nuw i8, ptr %108, i64 16 ; 4 uses
  %.sroa.45.0..sroa_idx.i.i.i105 = getelementptr inbounds nuw i8, ptr %108, i64 24 ; 4 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %110, i64 32
  %i.pd = getelementptr inbounds nuw i8, ptr %110, i64 33
  %i.pe = getelementptr inbounds nuw i8, ptr %107, i64 8
  %i.pf = getelementptr inbounds nuw i8, ptr %111, i64 32
  %i.pg = getelementptr inbounds nuw i8, ptr %105, i64 32
  %i.ph = getelementptr inbounds nuw i8, ptr %97, i64 32
  %i.pi = getelementptr inbounds nuw i8, ptr %104, i64 33
  %i.pj = getelementptr inbounds nuw i8, ptr %104, i64 32
  %i.pk = getelementptr inbounds nuw i8, ptr %94, i64 32
  %i.pl = getelementptr inbounds nuw i8, ptr %94, i64 33
  %i.pm = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.pn = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.po = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.pp = getelementptr inbounds nuw i8, ptr %128, i64 32
  %i.pq = getelementptr inbounds nuw i8, ptr %129, i64 8
  %i.pr = ptrtoint ptr %130 to i64
  %i.ps = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.pt = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.pu = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.pv = getelementptr inbounds nuw i8, ptr %125, i64 32
  %i.pw = getelementptr inbounds nuw i8, ptr %126, i64 8
  %i.px = ptrtoint ptr %127 to i64
  %i.py = getelementptr inbounds nuw i8, ptr %103, i64 8
  %i.pz = getelementptr inbounds nuw i8, ptr %112, i64 32
  %i.qa = getelementptr inbounds nuw i8, ptr %112, i64 33
  %i.qb = getelementptr inbounds nuw i8, ptr %102, i64 8
  %i.qc = getelementptr inbounds nuw i8, ptr %113, i64 32
  %i.qd = getelementptr inbounds nuw i8, ptr %114, i64 8
  %i.qe = ptrtoint ptr %115 to i64
  %i.qf = getelementptr inbounds nuw i8, ptr %99, i64 8
  %i.qg = getelementptr inbounds nuw i8, ptr %100, i64 32
  %i.qh = getelementptr inbounds nuw i8, ptr %100, i64 33
  %i.qi = getelementptr inbounds nuw i8, ptr %101, i64 32
  %i.qj = getelementptr inbounds nuw i8, ptr %101, i64 33
  %i.qk = getelementptr inbounds nuw i8, ptr %98, i64 8
  %i.ql = getelementptr inbounds nuw i8, ptr %116, i64 32
  %i.qm = getelementptr inbounds nuw i8, ptr %117, i64 8
  %i.qn = ptrtoint ptr %118 to i64
  %i.qo = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.qp = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.qq = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.qr = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.qs = getelementptr inbounds nuw i8, ptr %119, i64 32
  %i.qt = getelementptr inbounds nuw i8, ptr %120, i64 8
  %i.qu = ptrtoint ptr %121 to i64
  %i.qv = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.qw = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.qx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.qy = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.qz = getelementptr inbounds nuw i8, ptr %122, i64 32
  %i.ra = getelementptr inbounds nuw i8, ptr %123, i64 8
  %i.rb = ptrtoint ptr %124 to i64
  %i.rc = getelementptr inbounds nuw i8, ptr %237, i64 16
  %i.rd = getelementptr inbounds nuw i8, ptr %92, i64 8 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %92, i64 24 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %92, i64 16
  %i.rg = getelementptr inbounds nuw i8, ptr %92, i64 20
  %i.rh = getelementptr inbounds nuw i8, ptr %90, i64 8 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %90, i64 24 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %90, i64 16
  %i.rk = getelementptr inbounds nuw i8, ptr %90, i64 20
  %i.rl = getelementptr inbounds nuw i8, ptr %214, i64 24
  %i.rm = getelementptr inbounds nuw i8, ptr %214, i64 32
  %i.rn = getelementptr inbounds nuw i8, ptr %214, i64 40
  %i.ro = getelementptr inbounds nuw i8, ptr %214, i64 48
  %i.rp = getelementptr inbounds nuw i8, ptr %214, i64 56
  br label %bb.b

._crit_edge947:                                   ; preds = %._crit_edge, %bb.a
  %.0.lcssa = phi i1 [ false, %bb.a ], [ %.1.lcssa, %._crit_edge ]
  ret i1 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph946, %._crit_edge
  %.sroa.0779.0944 = phi ptr [ %.sroa.0779.0941, %.lr.ph946 ], [ %.sroa.0779.0, %._crit_edge ] ; 2 uses
  %.0943 = phi i1 [ false, %.lr.ph946 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.0779.0944, i64 24 ; 4 uses
  %.sroa.0760.0936 = load ptr, ptr %i.rq, align 8, !tbaa !316 ; 2 uses
  %.not872937 = icmp eq ptr %.sroa.0760.0936, %i.rq
  br i1 %.not872937, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt14_Function_baseD2Ev.exit93, %bb.b
  %.1.lcssa = phi i1 [ %.0943, %bb.b ], [ %.8, %_ZNSt14_Function_baseD2Ev.exit93 ] ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %.sroa.0779.0944, i64 8
  %.sroa.0779.0 = load ptr, ptr %i.rr, align 8, !tbaa !301 ; 2 uses
  %.not = icmp eq ptr %.sroa.0779.0, %i.aq
  br i1 %.not, label %._crit_edge947, label %bb.b

.lr.ph:                                           ; preds = %bb.b, %_ZNSt14_Function_baseD2Ev.exit93
  %.sroa.0760.0939 = phi ptr [ %.sroa.0760.0, %_ZNSt14_Function_baseD2Ev.exit93 ], [ %.sroa.0760.0936, %bb.b ] ; 44 uses
  %.1938 = phi i1 [ %.8, %_ZNSt14_Function_baseD2Ev.exit93 ], [ %.0943, %bb.b ] ; 12 uses
  %i.rs = getelementptr inbounds i8, ptr %.sroa.0760.0939, i64 -24 ; 36 uses
  %i.rt = getelementptr inbounds i8, ptr %.sroa.0760.0939, i64 -16 ; 6 uses
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !317, !noalias !707 ; 3 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %i.rw = load i32, ptr %i.rv, align 8, !noalias !707
  %i.rx = and i32 %i.rw, 254
  %spec.select.i.i = icmp eq i32 %i.rx, 18
  br i1 %spec.select.i.i, label %_ZNK4llvm4Type13getScalarTypeEv.exit.i, label %bb.hu

_ZNK4llvm4Type13getScalarTypeEv.exit.i:           ; preds = %.lr.ph
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ru, i64 16
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !322, !noalias !707
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !323, !noalias !707
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  %i.sc = load i32, ptr %i.sb, align 8, !noalias !707 ; 2 uses
  %i.sd = and i32 %i.sc, 255
  %i.se = icmp eq i32 %i.sd, 12
  br i1 %i.se, label %_ZNK4llvm4Type13getScalarTypeEv.exit24.i, label %bb.hu

_ZNK4llvm4Type13getScalarTypeEv.exit24.i:         ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit.i
  %i.sf = load i8, ptr %i.rs, align 8, !tbaa !295, !noalias !707 ; 2 uses
  %i.sg = icmp eq i8 %i.sf, 57
  br i1 %i.sg, label %bb.c, label %bb.k

bb.c:                                             ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit24.i
  %i.sh = getelementptr inbounds i8, ptr %.sroa.0760.0939, i64 -88
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !327, !noalias !707 ; 2 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.si, null
  br i1 %.not.i.not.i.i.i, label %thread-pre-split.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.sj = getelementptr inbounds i8, ptr %.sroa.0760.0939, i64 -56
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !327, !noalias !707 ; 4 uses
  %i.sl = load i8, ptr %i.sk, align 8, !tbaa !295, !noalias !707 ; 2 uses
  %i.sm = icmp eq i8 %i.sl, 5
  br i1 %i.sm, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !317, !noalias !707
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  %i.sq = load i32, ptr %i.sp, align 8, !noalias !707
  %i.sr = and i32 %i.sq, 254
  %spec.select.i.i.i.i.i.i = icmp ne i32 %i.sr, 18
  %i.ss = icmp ugt i8 %i.sl, 22
  %or.cond.i.i.i.i.i187 = or i1 %i.ss, %spec.select.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i187, label %thread-pre-split.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.st = call noundef ptr @_ZNK4llvm8Constant13getSplatValueEb(ptr noundef nonnull align 8 dereferenceable(24) %i.sk, i1 noundef zeroext false) #20, !noalias !707 ; 3 uses
  %.not.i.i.i.i.i.i.i188 = icmp eq ptr %i.st, null
  br i1 %.not.i.i.i.i.i.i.i188, label %thread-pre-split.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.su = load i8, ptr %i.st, align 8, !tbaa !295, !noalias !707
  %i.sv = icmp eq i8 %i.su, 5
  br i1 %i.sv, label %bb.h, label %thread-pre-split.i

bb.h:                                             ; preds = %bb.g, %bb.d
  %.sink28.i.i.i.i.i = phi ptr [ %i.sk, %bb.d ], [ %i.st, %bb.g ] ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %.sink28.i.i.i.i.i, i64 24 ; 4 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %.sink28.i.i.i.i.i, i64 32
  %i.sy = load i32, ptr %i.sx, align 8, !tbaa !329, !noalias !707 ; 3 uses
  %i.sz = icmp ult i32 %i.sy, 65                  ; 2 uses
  br i1 %i.sz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.neg.i.i.i.i.i.i.i = add nsw i32 %i.sy, -64
  %i.ta = load i64, ptr %i.sw, align 8, !tbaa !285, !noalias !707
  %i.tb = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ta, i1 false)
  %i.tc = trunc nuw nsw i64 %i.tb to i32
  %i.td = add nsw i32 %.neg.i.i.i.i.i.i.i, %i.tc
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.te = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.sw) #24, !noalias !707
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i.i.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i.i.i:  ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i190 = phi i32 [ %i.td, %bb.i ], [ %i.te, %bb.j ]
  %i.tf = sub i32 %i.sy, %.0.i.i.i.i.i.i.i190
  %i.tg = icmp ult i32 %i.tf, 65
  br i1 %i.tg, label %_ZNK4llvm12PatternMatch14BinaryOp_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEENS0_20bind_const_intval_tyELj27ELb0EE5matchIS4_EEbPT_.exit.i, label %thread-pre-split.i

_ZNK4llvm12PatternMatch14BinaryOp_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEENS0_20bind_const_intval_tyELj27ELb0EE5matchIS4_EEbPT_.exit.i: ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i.i.i
  %i.th = load ptr, ptr %i.sw, align 8, !noalias !707
  %spec.select.i.i3.i.i.i.i = select i1 %i.sz, ptr %i.sw, ptr %i.th
  br label %_ZNK4llvm19PatternMatchHelpers16match_combine_orIJNS_12PatternMatch14BinaryOp_matchINS0_10match_bindINS_5ValueEEENS2_20bind_const_intval_tyELj27ELb0EEENS3_IS6_S7_Lj28ELb0EEEEE5matchIS5_EEbPT_.exit

thread-pre-split.i:                               ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i.i.i, %bb.g, %bb.f, %bb.e, %bb.c
  %.pr.i189 = load i8, ptr %i.rs, align 8, !tbaa !295, !noalias !707
  br label %bb.k

bb.k:                                             ; preds = %thread-pre-split.i, %_ZNK4llvm4Type13getScalarTypeEv.exit24.i
  %i.ti = phi i8 [ %.pr.i189, %thread-pre-split.i ], [ %i.sf, %_ZNK4llvm4Type13getScalarTypeEv.exit24.i ]
  %i.tj = icmp eq i8 %i.ti, 58
  br i1 %i.tj, label %bb.l, label %.critedgethread-pre-split.i

bb.l:                                             ; preds = %bb.k
  %i.tk = getelementptr inbounds i8, ptr %.sroa.0760.0939, i64 -88
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !327, !noalias !707 ; 2 uses
  %.not.i.not.i.i.i.i178 = icmp eq ptr %i.tl, null
  br i1 %.not.i.not.i.i.i.i178, label %.critedgethread-pre-split.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.tm = getelementptr inbounds i8, ptr %.sroa.0760.0939, i64 -56
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !327, !noalias !707 ; 4 uses
  %i.to = load i8, ptr %i.tn, align 8, !tbaa !295, !noalias !707 ; 2 uses
  %i.tp = icmp eq i8 %i.to, 5
  br i1 %i.tp, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !317, !noalias !707
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  %i.tt = load i32, ptr %i.ts, align 8, !noalias !707
  %i.tu = and i32 %i.tt, 254
  %spec.select.i.i.i.i.i.i.i179 = icmp ne i32 %i.tu, 18
  %i.tv = icmp ugt i8 %i.to, 22
  %or.cond.i.i.i.i.i.i180 = or i1 %i.tv, %spec.select.i.i.i.i.i.i.i179
  br i1 %or.cond.i.i.i.i.i.i180, label %.critedgethread-pre-split.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.tw = call noundef ptr @_ZNK4llvm8Constant13getSplatValueEb(ptr noundef nonnull align 8 dereferenceable(24) %i.tn, i1 noundef zeroext false) #20, !noalias !707 ; 3 uses
  %.not.i.i.i.i.i.i.i.i181 = icmp eq ptr %i.tw, null
  br i1 %.not.i.i.i.i.i.i.i.i181, label %.critedgethread-pre-split.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.tx = load i8, ptr %i.tw, align 8, !tbaa !295, !noalias !707
  %i.ty = icmp eq i8 %i.tx, 5
  br i1 %i.ty, label %bb.q, label %.critedgethread-pre-split.i

bb.q:                                             ; preds = %bb.p, %bb.m
  %.sink28.i.i.i.i.i.i182 = phi ptr [ %i.tn, %bb.m ], [ %i.tw, %bb.p ] ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %.sink28.i.i.i.i.i.i182, i64 24 ; 4 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %.sink28.i.i.i.i.i.i182, i64 32
  %i.ub = load i32, ptr %i.ua, align 8, !tbaa !329, !noalias !707 ; 3 uses
  %i.uc = icmp ult i32 %i.ub, 65                  ; 2 uses
  br i1 %i.uc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.neg.i.i.i.i.i.i.i.i186 = add nsw i32 %i.ub, -64
  %i.ud = load i64, ptr %i.tz, align 8, !tbaa !285, !noalias !707
  %i.ue = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ud, i1 false)
  %i.uf = trunc nuw nsw i64 %i.ue to i32
  %i.ug = add nsw i32 %.neg.i.i.i.i.i.i.i.i186, %i.uf
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i.i.i.i183

bb.s:                                             ; preds = %bb.q
  %i.uh = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.tz) #24, !noalias !707
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i.i.i.i183

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i.i.i.i183: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i.i.i184 = phi i32 [ %i.ug, %bb.r ], [ %i.uh, %bb.s ]
  %i.ui = sub i32 %i.ub, %.0.i.i.i.i.i.i.i.i184
  %i.uj = icmp ult i32 %i.ui, 65
  br i1 %i.uj, label %_ZNK4llvm12PatternMatch14BinaryOp_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEENS0_20bind_const_intval_tyELj28ELb0EE5matchIS4_EEbPT_.exit.i.i, label %.critedgethread-pre-split.i

_ZNK4llvm12PatternMatch14BinaryOp_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEENS0_20bind_const_intval_tyELj28ELb0EE5matchIS4_EEbPT_.exit.i.i: ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i.i.i.i183
  %i.uk = load ptr, ptr %i.tz, align 8, !noalias !707
  %spec.select.i.i3.i.i.i.i.i185 = select i1 %i.uc, ptr %i.tz, ptr %i.uk
  br label %_ZNK4llvm19PatternMatchHelpers16match_combine_orIJNS_12PatternMatch14BinaryOp_matchINS0_10match_bindINS_5ValueEEENS2_20bind_const_intval_tyELj27ELb0EEENS3_IS6_S7_Lj28ELb0EEEEE5matchIS5_EEbPT_.exit

_ZNK4llvm19PatternMatchHelpers16match_combine_orIJNS_12PatternMatch14BinaryOp_matchINS0_10match_bindINS_5ValueEEENS2_20bind_const_intval_tyELj27ELb0EEENS3_IS6_S7_Lj28ELb0EEEEE5matchIS5_EEbPT_.exit: ; preds = %_ZNK4llvm12PatternMatch14BinaryOp_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEENS0_20bind_const_intval_tyELj28ELb0EE5matchIS4_EEbPT_.exit.i.i, %_ZNK4llvm12PatternMatch14BinaryOp_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEENS0_20bind_const_intval_tyELj27ELb0EE5matchIS4_EEbPT_.exit.i
  %.2 = phi ptr [ %i.si, %_ZNK4llvm12PatternMatch14BinaryOp_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEENS0_20bind_const_intval_tyELj27ELb0EE5matchIS4_EEbPT_.exit.i ], [ %i.tl, %_ZNK4llvm12PatternMatch14BinaryOp_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEENS0_20bind_const_intval_tyELj28ELb0EE5matchIS4_EEbPT_.exit.i.i ] ; 10 uses
  %.0785.in = phi ptr [ %spec.select.i.i3.i.i.i.i, %_ZNK4llvm12PatternMatch14BinaryOp_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEENS0_20bind_const_intval_tyELj27ELb0EE5matchIS4_EEbPT_.exit.i ], [ %spec.select.i.i3.i.i.i.i.i185, %_ZNK4llvm12PatternMatch14BinaryOp_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEENS0_20bind_const_intval_tyELj28ELb0EE5matchIS4_EEbPT_.exit.i.i ]
  %.0785 = load i64, ptr %.0785.in, align 8, !tbaa !285, !noalias !707
  %i.ul = lshr i32 %i.sc, 8
  %i.um = trunc i64 %.0785 to i32                 ; 10 uses
  %i.un = icmp ult i32 %i.ul, %i.um
  br i1 %i.un, label %bb.hu, label %bb.t

bb.t:                                             ; preds = %_ZNK4llvm19PatternMatchHelpers16match_combine_orIJNS_12PatternMatch14BinaryOp_matchINS0_10match_bindINS_5ValueEEENS2_20bind_const_intval_tyELj27ELb0EEENS3_IS6_S7_Lj28ELb0EEEEE5matchIS5_EEbPT_.exit
  %.not.i = icmp eq i32 %i.um, 0
  br i1 %.not.i, label %.critedgethread-pre-split.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.uo = load i8, ptr %.2, align 8, !tbaa !295, !noalias !707 ; 2 uses
  %i.up = icmp eq i8 %i.uo, 44
  br i1 %i.up, label %bb.v, label %.critedge.i

bb.v:                                             ; preds = %bb.u
  %i.uq = getelementptr inbounds i8, ptr %.2, i64 -64
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !327, !noalias !707 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.ur, null
  br i1 %.not.i.not.i.i.i.i, label %.critedgethread-pre-split.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.us = getelementptr inbounds i8, ptr %.2, i64 -32
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !327, !noalias !707 ; 4 uses
  %i.uu = load i8, ptr %i.ut, align 8, !tbaa !295, !noalias !707 ; 2 uses
  %i.uv = icmp eq i8 %i.uu, 5
  br i1 %i.uv, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !317, !noalias !707
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  %i.uz = load i32, ptr %i.uy, align 8, !noalias !707
  %i.va = and i32 %i.uz, 254
  %spec.select.i.i.i.i.i.i.i = icmp ne i32 %i.va, 18
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_19HvxIdioms3runEv:bb.a
  %i.bvd = load ptr, ptr %i.bvc, align 8, !tbaa !327 ; 13 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bvd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit93, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.bve = load i8, ptr %i.bvd, align 8, !tbaa !295
  %i.bvf = icmp eq i8 %i.bve, 14
  br i1 %i.bvf, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit93

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i: ; preds = %bb.hw
  %i.bvg = getelementptr inbounds nuw i8, ptr %i.bvd, i64 32
  %i.bvh = load i32, ptr %i.bvg, align 8
  %i.bvi = and i32 %i.bvh, 8192
  %.not.i.i.i73 = icmp eq i32 %i.bvi, 0
  br i1 %.not.i.i.i73, label %bb.oi, label %_ZNK12_GLOBAL__N_19HvxIdioms11matchGatherERN4llvm11InstructionE.exit

_ZNK12_GLOBAL__N_19HvxIdioms11matchGatherERN4llvm11InstructionE.exit: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i
  %i.bvj = getelementptr inbounds nuw i8, ptr %i.bvd, i64 36
  %i.bvk = load i32, ptr %i.bvj, align 4, !tbaa !389
  %i.bvl = icmp eq i32 %i.bvk, 240
  br i1 %i.bvl, label %bb.hx, label %bb.oi

bb.hx:                                            ; preds = %_ZNK12_GLOBAL__N_19HvxIdioms11matchGatherERN4llvm11InstructionE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %133)
  call void @llvm.lifetime.start.p0(ptr nonnull %137)
  call void @llvm.lifetime.start.p0(ptr nonnull %140)
  call void @llvm.lifetime.start.p0(ptr nonnull %143)
  call void @llvm.lifetime.start.p0(ptr nonnull %146)
  call void @llvm.lifetime.start.p0(ptr nonnull %149)
  call void @llvm.lifetime.start.p0(ptr nonnull %152)
  call void @llvm.lifetime.start.p0(ptr nonnull %156)
  call void @llvm.lifetime.start.p0(ptr nonnull %162)
  call void @llvm.lifetime.start.p0(ptr nonnull %166)
  call void @llvm.lifetime.start.p0(ptr nonnull %171)
  call void @llvm.lifetime.start.p0(ptr nonnull %177)
  %i.bvm = call noundef ptr @_ZNK4llvm11Instruction11getFunctionEv(ptr noundef nonnull align 8 dereferenceable(72) %i.rs) #20
  %i.bvn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.bvm) #20 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %132) #20
  %i.bvo = getelementptr inbounds nuw i8, ptr %.sroa.0760.0939, i64 16
  %i.bvp = load ptr, ptr %i.bvo, align 8, !tbaa !266 ; 3 uses
  %i.bvq = load ptr, ptr %i.am, align 8, !tbaa !313, !nonnull !37, !align !252
  %i.bvr = getelementptr inbounds nuw i8, ptr %i.bvq, i64 8
  %i.bvs = load ptr, ptr %i.bvr, align 8, !tbaa !333, !nonnull !37, !align !252 ; 3 uses
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm18InstSimplifyFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm12TargetFolderE, i64 16)>, ptr %133, align 16, !tbaa !28
  store ptr %i.bvs, ptr %i.if, align 16, !tbaa !59
  store ptr %i.bvs, ptr %i.ig, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ih, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.ii, align 16, !tbaa !335
  store i8 1, ptr %i.ij, align 1, !tbaa !339
  store i8 0, ptr %i.ik, align 2, !tbaa !340
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.il, i8 0, i64 16, i1 false)
  %i.bvt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm10BasicBlock10getContextEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bvp) #20
  store ptr null, ptr %132, align 8, !tbaa !343
  store ptr %i.bvt, ptr %i.io, align 8, !tbaa !344
  store ptr %i.im, ptr %i.ip, align 8, !tbaa !346
  store ptr %i.in, ptr %i.iq, align 8, !tbaa !348
  store ptr null, ptr %i.ir, align 8, !tbaa !358
  store i32 0, ptr %i.is, align 8, !tbaa !359
  store i8 0, ptr %i.it, align 4, !tbaa !360
  store i8 2, ptr %i.iu, align 1, !tbaa !361
  store i8 7, ptr %i.iv, align 2, !tbaa !362
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm18InstSimplifyFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm12TargetFolderE, i64 16)>, ptr %i.im, align 8, !tbaa !28
  store ptr %i.bvs, ptr %i.iy, align 8, !tbaa !59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.iz, ptr noundef nonnull align 8 dereferenceable(64) %i.ig, i64 64, i1 false), !tbaa.struct !366
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16), ptr %i.in, align 8, !tbaa !28
  store ptr %i.bvp, ptr %i.iw, align 8, !tbaa !367
  store ptr %.sroa.0760.0939, ptr %i.ja, align 8
  store i16 0, ptr %.sroa.45.0..sroa_idx.i.i.i74, align 8
  %i.bvu = getelementptr inbounds nuw i8, ptr %i.bvp, i64 48
  %.not.i.i289.i = icmp eq ptr %.sroa.0760.0939, %i.bvu
  br i1 %.not.i.i289.i, label %_ZN4llvm9IRBuilderINS_18InstSimplifyFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEES1_PNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit.i75, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.bvv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.rs) #20
  %i.bvw = load i64, ptr %i.bvv, align 8, !tbaa !368
  store i64 %i.bvw, ptr %132, align 8, !tbaa !368
  br label %_ZN4llvm9IRBuilderINS_18InstSimplifyFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEES1_PNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit.i75

_ZN4llvm9IRBuilderINS_18InstSimplifyFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEES1_PNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit.i75: ; preds = %bb.hy, %bb.hx
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ie) #20
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(88) %133) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  store i32 0, ptr %i.j, align 4, !tbaa !285
  %i.bvx = call fastcc noundef ptr @_Z17locateDestinationPN4llvm11InstructionERN12_GLOBAL__N_19HvxIdioms12DstQualifierE(ptr noundef nonnull align 8 dereferenceable(72) %i.rs, ptr noundef nonnull align 4 dereferenceable(4) %i.j) ; 22 uses
  %.not.i76 = icmp eq ptr %i.bvx, null
  br i1 %.not.i76, label %_ZNK12_GLOBAL__N_19HvxIdioms14processVGatherERN4llvm11InstructionE.exit, label %bb.hz

bb.hz:                                            ; preds = %_ZN4llvm9IRBuilderINS_18InstSimplifyFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEES1_PNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit.i75
  %i.bvy = load i8, ptr %i.bvx, align 8, !tbaa !295 ; 4 uses
  switch i8 %i.bvy, label %bb.ia [
    i8 62, label %_Z10getPointerPN4llvm5ValueE.exit.thread440.i
    i8 23, label %_Z10getPointerPN4llvm5ValueE.exit.thread440.i
  ]

bb.ia:                                            ; preds = %bb.hz
  %i.bvz = add i8 %i.bvy, -14
  %switch.selectcmp.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.bvz, 4
  br i1 %switch.selectcmp.i.i.i.i.i.i.i.i.i, label %_Z10getPointerPN4llvm5ValueE.exit.thread440.i, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  switch i8 %i.bvy, label %_ZNK12_GLOBAL__N_19HvxIdioms14processVGatherERN4llvm11InstructionE.exit [
    i8 63, label %_ZN4llvm26getLoadStorePointerOperandEPNS_5ValueE.exit.i.i
    i8 64, label %_ZN4llvm26getLoadStorePointerOperandEPNS_5ValueE.exit.i.i
    i8 88, label %bb.ic
  ]

_ZN4llvm26getLoadStorePointerOperandEPNS_5ValueE.exit.i.i: ; preds = %bb.ib, %bb.ib
  %i.bwa = getelementptr inbounds i8, ptr %i.bvx, i64 -32
  br label %_Z10getPointerPN4llvm5ValueE.exit.i

bb.ic:                                            ; preds = %bb.ib
  %i.bwb = getelementptr inbounds i8, ptr %i.bvx, i64 -32
  %i.bwc = load ptr, ptr %i.bwb, align 8, !tbaa !327 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bwc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK12_GLOBAL__N_19HvxIdioms14processVGatherERN4llvm11InstructionE.exit, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.bwd = load i8, ptr %i.bwc, align 8, !tbaa !295
  %i.bwe = icmp eq i8 %i.bwd, 14
  br i1 %i.bwe, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i.i.i, label %_ZNK12_GLOBAL__N_19HvxIdioms14processVGatherERN4llvm11InstructionE.exit

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i.i.i: ; preds = %bb.id
  %i.bwf = getelementptr inbounds nuw i8, ptr %i.bwc, i64 32
  %i.bwg = load i32, ptr %i.bwf, align 8
  %i.bwh = and i32 %i.bwg, 8192
  %.not.i.i.i.i88 = icmp eq i32 %i.bwh, 0
  br i1 %.not.i.i.i.i88, label %_ZNK12_GLOBAL__N_19HvxIdioms14processVGatherERN4llvm11InstructionE.exit, label %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit.i.i

_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit.i.i: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i.i.i
  %i.bwi = getelementptr inbounds nuw i8, ptr %i.bwc, i64 36
  %i.bwj = load i32, ptr %i.bwi, align 4, !tbaa !389
  %i.bwk = icmp eq i32 %i.bwj, 245
  br i1 %i.bwk, label %bb.ie, label %_ZNK12_GLOBAL__N_19HvxIdioms14processVGatherERN4llvm11InstructionE.exit

bb.ie:                                            ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit.i.i
  %i.bwl = getelementptr inbounds nuw i8, ptr %i.bvx, i64 4
  %i.bwm = load i32, ptr %i.bwl, align 4
  %i.bwn = and i32 %i.bwm, 268435455
  %i.bwo = zext nneg i32 %i.bwn to i64
  %i.bwp = sub nsw i64 0, %i.bwo
  %i.bwq = getelementptr inbounds [32 x i8], ptr %i.bvx, i64 %i.bwp
  %i.bwr = getelementptr inbounds nuw i8, ptr %i.bwq, i64 32
  br label %_Z10getPointerPN4llvm5ValueE.exit.i

_Z10getPointerPN4llvm5ValueE.exit.i:              ; preds = %bb.ie, %_ZN4llvm26getLoadStorePointerOperandEPNS_5ValueE.exit.i.i
  %.1.i.in.i = phi ptr [ %i.bwr, %bb.ie ], [ %i.bwa, %_ZN4llvm26getLoadStorePointerOperandEPNS_5ValueE.exit.i.i ]
  %.1.i.i89 = load ptr, ptr %.1.i.in.i, align 8, !tbaa !327 ; 2 uses
  %.not231.i = icmp eq ptr %.1.i.i89, null
  br i1 %.not231.i, label %_ZNK12_GLOBAL__N_19HvxIdioms14processVGatherERN4llvm11InstructionE.exit, label %_Z10getPointerPN4llvm5ValueE.exit.thread440.i

_Z10getPointerPN4llvm5ValueE.exit.thread440.i:    ; preds = %_Z10getPointerPN4llvm5ValueE.exit.i, %bb.ia, %bb.hz, %bb.hz
  %.1.i443.i = phi ptr [ %.1.i.i89, %_Z10getPointerPN4llvm5ValueE.exit.i ], [ %i.bvx, %bb.hz ], [ %i.bvx, %bb.hz ], [ %i.bvx, %bb.ia ] ; 8 uses
  switch i8 %i.bvy, label %_ZL12getIndexTypePN4llvm5ValueE.exit.i [
    i8 88, label %bb.ig
    i8 64, label %bb.if
  ]

bb.if:                                            ; preds = %_Z10getPointerPN4llvm5ValueE.exit.thread440.i
  %i.bws = getelementptr inbounds i8, ptr %i.bvx, i64 -64
  %i.bwt = load ptr, ptr %i.bws, align 8, !tbaa !327
  br label %_ZL12getIndexTypePN4llvm5ValueE.exit.i

bb.ig:                                            ; preds = %_Z10getPointerPN4llvm5ValueE.exit.thread440.i
  %i.bwu = getelementptr inbounds i8, ptr %i.bvx, i64 -32
  %i.bwv = load ptr, ptr %i.bwu, align 8, !tbaa !327 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i291.i = icmp eq ptr %i.bwv, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i291.i, label %_ZL12getIndexTypePN4llvm5ValueE.exit.i, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.bww = load i8, ptr %i.bwv, align 8, !tbaa !295
  %i.bwx = icmp eq i8 %i.bww, 14
  br i1 %i.bwx, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i.i292.i, label %_ZL12getIndexTypePN4llvm5ValueE.exit.i

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i.i292.i: ; preds = %bb.ih
  %i.bwy = getelementptr inbounds nuw i8, ptr %i.bwv, i64 32
  %i.bwz = load i32, ptr %i.bwy, align 8
  %i.bxa = and i32 %i.bwz, 8192
  %.not.i.i.i293.i = icmp eq i32 %i.bxa, 0
  br i1 %.not.i.i.i293.i, label %_ZL12getIndexTypePN4llvm5ValueE.exit.i, label %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit.i294.i

_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit.i294.i: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i.i292.i
  %i.bxb = getelementptr inbounds nuw i8, ptr %i.bwv, i64 36
  %i.bxc = load i32, ptr %i.bxb, align 4, !tbaa !389
  %cond.i.i87 = icmp eq i32 %i.bxc, 245
  br i1 %cond.i.i87, label %bb.ii, label %_ZL12getIndexTypePN4llvm5ValueE.exit.i

bb.ii:                                            ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit.i294.i
  %i.bxd = getelementptr inbounds nuw i8, ptr %i.bvx, i64 4
  %i.bxe = load i32, ptr %i.bxd, align 4
  %i.bxf = and i32 %i.bxe, 268435455
  %i.bxg = zext nneg i32 %i.bxf to i64
  %i.bxh = sub nsw i64 0, %i.bxg
  %i.bxi = getelementptr inbounds [32 x i8], ptr %i.bvx, i64 %i.bxh
  %i.bxj = load ptr, ptr %i.bxi, align 8, !tbaa !327
  br label %_ZL12getIndexTypePN4llvm5ValueE.exit.i

_ZL12getIndexTypePN4llvm5ValueE.exit.i:           ; preds = %bb.ii, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit.i294.i, %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i.i292.i, %bb.ih, %bb.ig, %bb.if, %_Z10getPointerPN4llvm5ValueE.exit.thread440.i
  %.sink.i.i = phi ptr [ %i.bvx, %bb.ig ], [ %i.bxj, %bb.ii ], [ %i.bwt, %bb.if ], [ %i.bvx, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit.i294.i ], [ %i.bvx, %_Z10getPointerPN4llvm5ValueE.exit.thread440.i ], [ %i.bvx, %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i.i292.i ], [ %i.bvx, %bb.ih ]
  %i.bxk = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  %.1.i290.i = load ptr, ptr %i.bxk, align 8, !tbaa !317 ; 2 uses
  %.pre99.i = load ptr, ptr %i.bvc, align 8, !tbaa !327
  %.phi.trans.insert100.i = getelementptr inbounds nuw i8, ptr %.pre99.i, i64 36
  %.pre101.i = load i32, ptr %.phi.trans.insert100.i, align 4, !tbaa !389
  %i.bxl = icmp eq i32 %.pre101.i, 240
  %i.bxm = select i1 %i.bxl, i64 0, i64 32
  %i.bxn = getelementptr inbounds i8, ptr %.sroa.0760.0939, i64 -20
  %i.bxo = load i32, ptr %i.bxn, align 4
  %i.bxp = and i32 %i.bxo, 268435455
  %i.bxq = zext nneg i32 %i.bxp to i64
  %i.bxr = sub nsw i64 0, %i.bxq
  %i.bxs = getelementptr inbounds [32 x i8], ptr %i.rs, i64 %i.bxr
  %spec.select80.i.peel = getelementptr inbounds nuw i8, ptr %i.bxs, i64 %i.bxm
  %.sink.i.i664.peel = load ptr, ptr %spec.select80.i.peel, align 8, !tbaa !327 ; 3 uses
  %i.bxt = load i8, ptr %.sink.i.i664.peel, align 8, !tbaa !295
  %.not.i665.peel = icmp eq i8 %i.bxt, 65
  br i1 %.not.i665.peel, label %bb.ij, label %_ZNK12_GLOBAL__N_19HvxIdioms14processVGatherERN4llvm11InstructionE.exit

bb.ij:                                            ; preds = %_ZL12getIndexTypePN4llvm5ValueE.exit.i
  %i.bxu = getelementptr inbounds nuw i8, ptr %.sink.i.i664.peel, i64 4
  %i.bxv = load i32, ptr %i.bxu, align 4
  %i.bxw = and i32 %i.bxv, 268435455
  %i.bxx = zext nneg i32 %i.bxw to i64
  %i.bxy = sub nsw i64 0, %i.bxx
  %i.bxz = getelementptr inbounds [32 x i8], ptr %.sink.i.i664.peel, i64 %i.bxy ; 2 uses
  %i.bya = load ptr, ptr %i.bxz, align 8, !tbaa !327 ; 4 uses
  %i.byb = load i8, ptr %i.bya, align 8, !tbaa !295
  switch i8 %i.byb, label %_ZNK12_GLOBAL__N_19HvxIdioms14processVGatherERN4llvm11InstructionE.exit [
    i8 63, label %.loopexit
    i8 70, label %bb.ik
    i8 95, label %.loopexit.i
  ]

bb.ik:                                            ; preds = %bb.ij
  %i.byc = getelementptr inbounds i8, ptr %i.bya, i64 -32
  %i.byd = load ptr, ptr %i.byc, align 8, !tbaa !327 ; 4 uses
  %i.bye = load i8, ptr %i.byd, align 8, !tbaa !295
  switch i8 %i.bye, label %_ZNK12_GLOBAL__N_19HvxIdioms14processVGatherERN4llvm11InstructionE.exit [
    i8 63, label %.loopexit
    i8 88, label %bb.il
  ]

bb.il:                                            ; preds = %bb.ik
  %i.byf = getelementptr inbounds i8, ptr %i.byd, i64 -32
  %i.byg = load ptr, ptr %i.byf, align 8, !tbaa !327 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i667.peel = icmp eq ptr %i.byg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i667.peel, label %_ZNK12_GLOBAL__N_19HvxIdioms14processVGatherERN4llvm11InstructionE.exit, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.byh = load i8, ptr %i.byg, align 8, !tbaa !295
  %i.byi = icmp eq i8 %i.byh, 14
  br i1 %i.byi, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i.i668.peel, label %_ZNK12_GLOBAL__N_19HvxIdioms14processVGatherERN4llvm11InstructionE.exit

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i.i668.peel: ; preds = %bb.im
  %i.byj = getelementptr inbounds nuw i8, ptr %i.byg, i64 32
  %i.byk = load i32, ptr %i.byj, align 8
  %i.byl = and i32 %i.byk, 8192
  %.not.i.i.i669.peel = icmp eq i32 %i.byl, 0
  br i1 %.not.i.i.i669.peel, label %_ZNK12_GLOBAL__N_19HvxIdioms14processVGatherERN4llvm11InstructionE.exit, label %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit.i670.peel

_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit.i670.peel: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i.i668.peel
  %i.bym = getelementptr inbounds nuw i8, ptr %i.byg, i64 36
  %i.byn = load i32, ptr %i.bym, align 4, !tbaa !389
  %i.byo = icmp eq i32 %i.byn, 240
  br i1 %i.byo, label %tailrecurse.i, label %_ZNK12_GLOBAL__N_19HvxIdioms14processVGatherERN4llvm11InstructionE.exit

tailrecurse.i:                                    ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit.i670.peel, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit.i670
  %.tr.i = phi ptr [ %i.bzf, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit.i670 ], [ %i.byd, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit.i670.peel ] ; 2 uses
  %i.byp = getelementptr inbounds nuw i8, ptr %.tr.i, i64 4
  %i.byq = load i32, ptr %i.byp, align 4
  %i.byr = and i32 %i.byq, 268435455
  %i.bys = zext nneg i32 %i.byr to i64
  %i.byt = sub nsw i64 0, %i.bys
  %i.byu = getelementptr inbounds [32 x i8], ptr %.tr.i, i64 %i.byt
  %.sink.i.i664 = load ptr, ptr %i.byu, align 8, !tbaa !327 ; 3 uses
  %i.byv = load i8, ptr %.sink.i.i664, align 8, !tbaa !295
  %.not.i665 = icmp eq i8 %i.byv, 65
  br i1 %.not.i665, label %bb.in, label %_ZNK12_GLOBAL__N_19HvxIdioms14processVGatherERN4llvm11InstructionE.exit

bb.in:                                            ; preds = %tailrecurse.i
  %i.byw = getelementptr inbounds nuw i8, ptr %.sink.i.i664, i64 4
  %i.byx = load i32, ptr %i.byw, align 4
  %i.byy = and i32 %i.byx, 268435455
  %i.byz = zext nneg i32 %i.byy to i64
  %i.bza = sub nsw i64 0, %i.byz
  %i.bzb = getelementptr inbounds [32 x i8], ptr %.sink.i.i664, i64 %i.bza
  %i.bzc = load ptr, ptr %i.bzb, align 8, !tbaa !327 ; 4 uses
  %i.bzd = load i8, ptr %i.bzc, align 8, !tbaa !295
  switch i8 %i.bzd, label %_ZNK12_GLOBAL__N_19HvxIdioms14processVGatherERN4llvm11InstructionE.exit [
    i8 63, label %.loopexit
    i8 70, label %bb.io
    i8 95, label %.loopexit.i
  ]

bb.io:                                            ; preds = %bb.in
  %i.bze = getelementptr inbounds i8, ptr %i.bzc, i64 -32
  %i.bzf = load ptr, ptr %i.bze, align 8, !tbaa !327 ; 4 uses
  %i.bzg = load i8, ptr %i.bzf, align 8, !tbaa !295
  switch i8 %i.bzg, label %_ZNK12_GLOBAL__N_19HvxIdioms14processVGatherERN4llvm11InstructionE.exit [
    i8 63, label %.loopexit
    i8 88, label %bb.ip
  ]

bb.ip:                                            ; preds = %bb.io
  %i.bzh = getelementptr inbounds i8, ptr %i.bzf, i64 -32
  %i.bzi = load ptr, ptr %i.bzh, align 8, !tbaa !327 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i667 = icmp eq ptr %i.bzi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i667, label %_ZNK12_GLOBAL__N_19HvxIdioms14processVGatherERN4llvm11InstructionE.exit, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.bzj = load i8, ptr %i.bzi, align 8, !tbaa !295
  %i.bzk = icmp eq i8 %i.bzj, 14
  br i1 %i.bzk, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i.i668, label %_ZNK12_GLOBAL__N_19HvxIdioms14processVGatherERN4llvm11InstructionE.exit

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i.i668: ; preds = %bb.iq
  %i.bzl = getelementptr inbounds nuw i8, ptr %i.bzi, i64 32
  %i.bzm = load i32, ptr %i.bzl, align 8
  %i.bzn = and i32 %i.bzm, 8192
  %.not.i.i.i669 = icmp eq i32 %i.bzn, 0
  br i1 %.not.i.i.i669, label %_ZNK12_GLOBAL__N_19HvxIdioms14processVGatherERN4llvm11InstructionE.exit, label %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit.i670

_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit.i670: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i.i668
  %i.bzo = getelementptr inbounds nuw i8, ptr %i.bzi, i64 36
  %i.bzp = load i32, ptr %i.bzo, align 4, !tbaa !389
  %i.bzq = icmp eq i32 %i.bzp, 240
  br i1 %i.bzq, label %tailrecurse.i, label %_ZNK12_GLOBAL__N_19HvxIdioms14processVGatherERN4llvm11InstructionE.exit, !llvm.loop !697

.loopexit.i:                                      ; preds = %bb.in, %bb.ij
  %.lcssa960 = phi ptr [ %i.bya, %bb.ij ], [ %i.bzc, %bb.in ]
  %i.bzr = getelementptr inbounds i8, ptr %.lcssa960, i64 -64
  %i.bzs = load ptr, ptr %i.bzr, align 8, !tbaa !327 ; 3 uses
  %i.bzt = load i8, ptr %i.bzs, align 8, !tbaa !295
  switch i8 %i.bzt, label %_ZNK12_GLOBAL__N_19HvxIdioms14processVGatherERN4llvm11InstructionE.exit [
    i8 63, label %.loopexit
    i8 94, label %bb.ir
  ]

bb.ir:                                            ; preds = %.loopexit.i
  %i.bzu = getelementptr inbounds i8, ptr %i.bzs, i64 -64
  %i.bzv = load ptr, ptr %i.bzu, align 8, !tbaa !327 ; 5 uses
  %i.bzw = load i8, ptr %i.bzv, align 8, !tbaa !295 ; 2 uses
  switch i8 %i.bzw, label %bb.is [
    i8 63, label %.loopexit
    i8 62, label %.loopexit
    i8 23, label %.loopexit
  ]

bb.is:                                            ; preds = %bb.ir
  %i.bzx = add i8 %i.bzw, -18
  %switch.selectcmp.i.i.i.i.i.i.i.i666 = icmp ult i8 %i.bzx, -4
  br i1 %switch.selectcmp.i.i.i.i.i.i.i.i666, label %_ZNK12_GLOBAL__N_19HvxIdioms14processVGatherERN4llvm11InstructionE.exit, label %.loopexit

.loopexit:                                        ; preds = %bb.in, %bb.io, %bb.is, %bb.ir, %bb.ir, %bb.ir, %.loopexit.i, %bb.ik, %bb.ij
  %.9.i.ph = phi ptr [ %i.bzv, %bb.ir ], [ %i.bzs, %.loopexit.i ], [ %i.bzv, %bb.is ], [ %i.bzv, %bb.ir ], [ %i.bzv, %bb.ir ], [ %i.bya, %bb.ij ], [ %i.byd, %bb.ik ], [ %i.bzc, %bb.in ], [ %i.bzf, %bb.io ] ; 29 uses
  %i.bzy = getelementptr inbounds nuw i8, ptr %i.bxz, i64 32
  %i.bzz = load ptr, ptr %i.bzy, align 8, !tbaa !327 ; 2 uses
  %.not116.i.i = icmp eq ptr %i.bzz, null
  br i1 %.not116.i.i, label %_ZNK12_GLOBAL__N_19HvxIdioms14processVGatherERN4llvm11InstructionE.exit, label %.lr.ph.i.i656

.lr.ph.i.i656:                                    ; preds = %.loopexit, %tailrecurse.backedge.i.i
  %.tr117.i.i = phi ptr [ %.tr.be.i.i, %tailrecurse.backedge.i.i ], [ %i.bzz, %.loopexit ] ; 8 uses
  %i.caa = load i8, ptr %.tr117.i.i, align 8, !tbaa !295
  switch i8 %i.caa, label %_ZNK12_GLOBAL__N_19HvxIdioms14processVGatherERN4llvm11InstructionE.exit [
    i8 63, label %_ZL26locateIndexesFromIntrinsicPN4llvm11InstructionE.exit.thread806
    i8 88, label %bb.it
    i8 70, label %tailrecurse.backedge.i.i
    i8 71, label %tailrecurse.backedge.i.i
    i8 95, label %.thread93.i.i
    i8 94, label %.thread93.i.i
    i8 4, label %_ZL26locateIndexesFromIntrinsicPN4llvm11InstructionE.exit.thread806
    i8 65, label %_ZL26locateIndexesFromIntrinsicPN4llvm11InstructionE.exit
  ]

bb.it:                                            ; preds = %.lr.ph.i.i656
  %i.cab = getelementptr inbounds i8, ptr %.tr117.i.i, i64 -32
  %i.cac = load ptr, ptr %i.cab, align 8, !tbaa !327 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i658 = icmp eq ptr %i.cac, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i658, label %_ZNK12_GLOBAL__N_19HvxIdioms14processVGatherERN4llvm11InstructionE.exit, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.cad = load i8, ptr %i.cac, align 8, !tbaa !295
  %i.cae = icmp eq i8 %i.cad, 14
  br i1 %i.cae, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i.i.i659, label %_ZNK12_GLOBAL__N_19HvxIdioms14processVGatherERN4llvm11InstructionE.exit

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i.i.i659: ; preds = %bb.iu
  %i.caf = getelementptr inbounds nuw i8, ptr %i.cac, i64 32
  %i.cag = load i32, ptr %i.caf, align 8
  %i.cah = and i32 %i.cag, 8192
  %.not.i.i.i.i660 = icmp eq i32 %i.cah, 0
  br i1 %.not.i.i.i.i660, label %_ZNK12_GLOBAL__N_19HvxIdioms14processVGatherERN4llvm11InstructionE.exit, label %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit.i.i661

_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit.i.i661: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i.i.i659
  %i.cai = getelementptr inbounds nuw i8, ptr %i.cac, i64 36
  %i.caj = load i32, ptr %i.cai, align 4, !tbaa !389
  %i.cak = add i32 %i.caj, -242
  %or.cond.i.i = icmp ult i32 %i.cak, -2
  br i1 %or.cond.i.i, label %_ZNK12_GLOBAL__N_19HvxIdioms14processVGatherERN4llvm11InstructionE.exit, label %_ZL26locateIndexesFromIntrinsicPN4llvm11InstructionE.exit.thread806

tailrecurse.backedge.i.i:                         ; preds = %.thread93.i.i, %.lr.ph.i.i656, %.lr.ph.i.i656
  %.sink.i10.i = phi i64 [ -32, %.lr.ph.i.i656 ], [ -32, %.lr.ph.i.i656 ], [ -64, %.thread93.i.i ]
  %i.cal = getelementptr inbounds i8, ptr %.tr117.i.i, i64 %.sink.i10.i
  %.tr.be.i.i = load ptr, ptr %i.cal, align 8, !tbaa !327 ; 2 uses
  %.not.i.i657 = icmp eq ptr %.tr.be.i.i, null
  br i1 %.not.i.i657, label %_ZNK12_GLOBAL__N_19HvxIdioms14processVGatherERN4llvm11InstructionE.exit, label %.lr.ph.i.i656

.thread93.i.i:                                    ; preds = %.lr.ph.i.i656, %.lr.ph.i.i656
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_19HvxIdioms3runEv:bb.a
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.in) #20
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ix) #20
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(88) %i.im) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %133)
  call void @llvm.lifetime.end.p0(ptr nonnull %137)
  call void @llvm.lifetime.end.p0(ptr nonnull %140)
  call void @llvm.lifetime.end.p0(ptr nonnull %143)
  call void @llvm.lifetime.end.p0(ptr nonnull %146)
  call void @llvm.lifetime.end.p0(ptr nonnull %149)
  call void @llvm.lifetime.end.p0(ptr nonnull %152)
  call void @llvm.lifetime.end.p0(ptr nonnull %156)
  call void @llvm.lifetime.end.p0(ptr nonnull %162)
  call void @llvm.lifetime.end.p0(ptr nonnull %166)
  call void @llvm.lifetime.end.p0(ptr nonnull %171)
  call void @llvm.lifetime.end.p0(ptr nonnull %177)
  %.not.not60 = icmp eq ptr %.11.i, null
  br i1 %.not.not60, label %_ZNSt14_Function_baseD2Ev.exit93, label %bb.og

bb.og:                                            ; preds = %_ZNK12_GLOBAL__N_19HvxIdioms14processVGatherERN4llvm11InstructionE.exit
  %i.djj = call { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %i.rs) #20 ; 0 uses
  %i.djk = getelementptr inbounds nuw i8, ptr %.11.i, i64 24 ; 2 uses
  %i.djl = load ptr, ptr %i.am, align 8, !tbaa !313, !nonnull !37, !align !252
  %i.djm = getelementptr inbounds nuw i8, ptr %i.djl, i64 48
  %i.djn = load ptr, ptr %i.djm, align 8, !tbaa !388, !nonnull !37, !align !252
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %236, i8 0, i64 32, i1 false)
  %i.djo = call noundef zeroext i1 @_ZN4llvm42RecursivelyDeleteTriviallyDeadInstructionsEPNS_5ValueEPKNS_17TargetLibraryInfoEPNS_16MemorySSAUpdaterESt8functionIFvS1_EE(ptr noundef nonnull %.11.i, ptr noundef nonnull %i.djn, ptr noundef null, ptr nofree noundef nonnull align 8 dereferenceable(32) %236) #20 ; 0 uses
  %i.djp = load ptr, ptr %i.oe, align 8, !tbaa !31 ; 2 uses
  %.not.i92 = icmp eq ptr %i.djp, null
  br i1 %.not.i92, label %_ZNSt14_Function_baseD2Ev.exit93, label %bb.oh

bb.oh:                                            ; preds = %bb.og
  %i.djq = call noundef zeroext i1 %i.djp(ptr noundef nonnull align 8 dereferenceable(32) %236, ptr noundef nonnull align 8 dereferenceable(32) %236, i32 noundef 3) #20, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit93

bb.oi:                                            ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i, %_ZNK12_GLOBAL__N_19HvxIdioms11matchGatherERN4llvm11InstructionE.exit
  %.pr = load i8, ptr %i.bvd, align 8, !tbaa !295
  %i.djr = icmp eq i8 %.pr, 14
  br i1 %i.djr, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i96, label %_ZNSt14_Function_baseD2Ev.exit93

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i96: ; preds = %bb.oi
  %i.djs = getelementptr inbounds nuw i8, ptr %i.bvd, i64 32
  %i.djt = load i32, ptr %i.djs, align 8
  %i.dju = and i32 %i.djt, 8192
  %.not.i.i.i97 = icmp eq i32 %i.dju, 0
  br i1 %.not.i.i.i97, label %bb.qq, label %_ZNK12_GLOBAL__N_19HvxIdioms12matchScatterERN4llvm11InstructionE.exit

_ZNK12_GLOBAL__N_19HvxIdioms12matchScatterERN4llvm11InstructionE.exit: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i96
  %i.djv = getelementptr inbounds nuw i8, ptr %i.bvd, i64 36
  %i.djw = load i32, ptr %i.djv, align 4, !tbaa !389
  %i.djx = icmp eq i32 %i.djw, 242
  br i1 %i.djx, label %bb.oj, label %bb.qq

bb.oj:                                            ; preds = %_ZNK12_GLOBAL__N_19HvxIdioms12matchScatterERN4llvm11InstructionE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %109)
  call void @llvm.lifetime.start.p0(ptr nonnull %114)
  call void @llvm.lifetime.start.p0(ptr nonnull %117)
  call void @llvm.lifetime.start.p0(ptr nonnull %120)
  call void @llvm.lifetime.start.p0(ptr nonnull %123)
  call void @llvm.lifetime.start.p0(ptr nonnull %126)
  call void @llvm.lifetime.start.p0(ptr nonnull %129)
  %i.djy = getelementptr inbounds i8, ptr %.sroa.0760.0939, i64 -20 ; 2 uses
  %i.djz = load i32, ptr %i.djy, align 4          ; 2 uses
  %i.dka = and i32 %i.djz, 1073741824
  %.not.i.i.i99 = icmp eq i32 %i.dka, 0
  br i1 %.not.i.i.i99, label %bb.ol, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %i.dkb = getelementptr inbounds i8, ptr %.sroa.0760.0939, i64 -32
  %i.dkc = load ptr, ptr %i.dkb, align 8, !tbaa !380
  br label %_ZNK4llvm4User10getOperandEj.exit.i

bb.ol:                                            ; preds = %bb.oj
  %i.dkd = and i32 %i.djz, 268435455
  %i.dke = zext nneg i32 %i.dkd to i64
  %i.dkf = sub nsw i64 0, %i.dke
  %i.dkg = getelementptr inbounds [32 x i8], ptr %i.rs, i64 %i.dkf
  br label %_ZNK4llvm4User10getOperandEj.exit.i

_ZNK4llvm4User10getOperandEj.exit.i:              ; preds = %bb.ol, %bb.ok
  %i.dkh = phi ptr [ %i.dkc, %bb.ok ], [ %i.dkg, %bb.ol ]
  %i.dki = load ptr, ptr %i.dkh, align 8, !tbaa !327
  %i.dkj = getelementptr inbounds nuw i8, ptr %i.dki, i64 8
  %i.dkk = load ptr, ptr %i.dkj, align 8, !tbaa !317 ; 3 uses
  %i.dkl = getelementptr inbounds nuw i8, ptr %i.dkk, i64 8
  %i.dkm = load i32, ptr %i.dkl, align 8
  %i.dkn = and i32 %i.dkm, 254
  %spec.select.i.i.i.i.i.i.i.i.i100 = icmp eq i32 %i.dkn, 18
  %spec.select.i.i.i = select i1 %spec.select.i.i.i.i.i.i.i.i.i100, ptr %i.dkk, ptr null
  %i.dko = load ptr, ptr %i.am, align 8, !tbaa !313, !nonnull !37, !align !252
  %i.dkp = getelementptr i8, ptr %i.dko, i64 8
  %.val.i101 = load ptr, ptr %i.dkp, align 8
  %i.dkq = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %.val.i101, ptr noundef %spec.select.i.i.i)
  %.fca.0.extract.i.i.i.i102 = extractvalue { i64, i8 } %i.dkq, 0
  %i.dkr = add i64 %.fca.0.extract.i.i.i.i102, 7
  %i.dks = lshr i64 %i.dkr, 3
  %.0.i.i103 = trunc i64 %i.dks to i32
  %i.dkt = call noundef ptr @_ZNK4llvm11Instruction11getFunctionEv(ptr noundef nonnull align 8 dereferenceable(72) %i.rs) #20
  %i.dku = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.dkt) #20 ; 9 uses
  %i.dkv = getelementptr inbounds nuw i8, ptr %i.dkk, i64 24
  %i.dkw = load ptr, ptr %i.dkv, align 8, !tbaa !331 ; 2 uses
  %i.dkx = getelementptr inbounds nuw i8, ptr %i.dkw, i64 8
  %i.dky = load i32, ptr %i.dkx, align 8
  %i.dkz = and i32 %i.dky, 255
  %i.dla = icmp eq i32 %i.dkz, 12
  %spec.select.i.i116.i = select i1 %i.dla, ptr %i.dkw, ptr null
  %i.dlb = load ptr, ptr %i.am, align 8, !tbaa !313, !nonnull !37, !align !252
  %i.dlc = getelementptr inbounds nuw i8, ptr %i.dlb, i64 8
  %i.dld = load ptr, ptr %i.dlc, align 8, !tbaa !333, !nonnull !37, !align !252
  %i.dle = call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.dld, ptr noundef %spec.select.i.i116.i) #20 ; 2 uses
  %.fca.1.extract52.i = extractvalue { i64, i8 } %i.dle, 1
  %i.dlf = trunc nuw i8 %.fca.1.extract52.i to i1
  br i1 %i.dlf, label %bb.om, label %_ZNK4llvm8TypeSizecvmEv.exit.i104

bb.om:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.54) #21
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i104:                ; preds = %_ZNK4llvm4User10getOperandEj.exit.i
  %.fca.0.extract51.i = extractvalue { i64, i8 } %i.dle, 0
  %i.dlg = trunc i64 %.fca.0.extract51.i to i32   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %108) #20
  %i.dlh = getelementptr inbounds nuw i8, ptr %.sroa.0760.0939, i64 16
  %i.dli = load ptr, ptr %i.dlh, align 8, !tbaa !266 ; 3 uses
  %i.dlj = load ptr, ptr %i.am, align 8, !tbaa !313, !nonnull !37, !align !252
  %i.dlk = getelementptr inbounds nuw i8, ptr %i.dlj, i64 8
  %i.dll = load ptr, ptr %i.dlk, align 8, !tbaa !333, !nonnull !37, !align !252 ; 3 uses
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm18InstSimplifyFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm12TargetFolderE, i64 16)>, ptr %109, align 16, !tbaa !28
  store ptr %i.dll, ptr %i.og, align 16, !tbaa !59
  store ptr %i.dll, ptr %i.oh, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.oi, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.oj, align 16, !tbaa !335
  store i8 1, ptr %i.ok, align 1, !tbaa !339
  store i8 0, ptr %i.ol, align 2, !tbaa !340
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.om, i8 0, i64 16, i1 false)
  %i.dlm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm10BasicBlock10getContextEv(ptr noundef nonnull align 8 dereferenceable(80) %i.dli) #20
  store ptr null, ptr %108, align 8, !tbaa !343
  store ptr %i.dlm, ptr %i.op, align 8, !tbaa !344
  store ptr %i.on, ptr %i.oq, align 8, !tbaa !346
  store ptr %i.oo, ptr %i.or, align 8, !tbaa !348
  store ptr null, ptr %i.os, align 8, !tbaa !358
  store i32 0, ptr %i.ot, align 8, !tbaa !359
  store i8 0, ptr %i.ou, align 4, !tbaa !360
  store i8 2, ptr %i.ov, align 1, !tbaa !361
  store i8 7, ptr %i.ow, align 2, !tbaa !362
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm18InstSimplifyFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm12TargetFolderE, i64 16)>, ptr %i.on, align 8, !tbaa !28
  store ptr %i.dll, ptr %i.oz, align 8, !tbaa !59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.pa, ptr noundef nonnull align 8 dereferenceable(64) %i.oh, i64 64, i1 false), !tbaa.struct !366
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16), ptr %i.oo, align 8, !tbaa !28
  store ptr %i.dli, ptr %i.ox, align 8, !tbaa !367
  store ptr %.sroa.0760.0939, ptr %i.pb, align 8
  store i16 0, ptr %.sroa.45.0..sroa_idx.i.i.i105, align 8
  %i.dln = getelementptr inbounds nuw i8, ptr %i.dli, i64 48
  %.not.i.i117.i = icmp eq ptr %.sroa.0760.0939, %i.dln
  br i1 %.not.i.i117.i, label %_ZN4llvm9IRBuilderINS_18InstSimplifyFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEES1_PNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit.i106, label %bb.on

bb.on:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i104
  %i.dlo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.rs) #20
  %i.dlp = load i64, ptr %i.dlo, align 8, !tbaa !368
  store i64 %i.dlp, ptr %108, align 8, !tbaa !368
  br label %_ZN4llvm9IRBuilderINS_18InstSimplifyFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEES1_PNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit.i106

_ZN4llvm9IRBuilderINS_18InstSimplifyFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEES1_PNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit.i106: ; preds = %bb.on, %_ZNK4llvm8TypeSizecvmEv.exit.i104
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.of) #20
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(88) %109) #20
  %i.dlq = load i32, ptr %i.djy, align 4          ; 3 uses
  %i.dlr = and i32 %i.dlq, 1073741824
  %.not.i.i118.i = icmp eq i32 %i.dlr, 0
  br i1 %.not.i.i118.i, label %bb.op, label %bb.oo

bb.oo:                                            ; preds = %_ZN4llvm9IRBuilderINS_18InstSimplifyFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEES1_PNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit.i106
  %i.dls = getelementptr inbounds i8, ptr %.sroa.0760.0939, i64 -32
  %i.dlt = load ptr, ptr %i.dls, align 8, !tbaa !380
  br label %_ZNK4llvm4User10getOperandEj.exit119.i

bb.op:                                            ; preds = %_ZN4llvm9IRBuilderINS_18InstSimplifyFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEES1_PNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit.i106
  %i.dlu = and i32 %i.dlq, 268435455
  %i.dlv = zext nneg i32 %i.dlu to i64
  %i.dlw = sub nsw i64 0, %i.dlv
  %i.dlx = getelementptr inbounds [32 x i8], ptr %i.rs, i64 %i.dlw
  br label %_ZNK4llvm4User10getOperandEj.exit119.i

_ZNK4llvm4User10getOperandEj.exit119.i:           ; preds = %bb.op, %bb.oo
  %i.dly = phi ptr [ %i.dlt, %bb.oo ], [ %i.dlx, %bb.op ]
  %i.dlz = load ptr, ptr %i.dly, align 8, !tbaa !327 ; 4 uses
  %i.dma = load ptr, ptr %i.am, align 8, !tbaa !313, !nonnull !37, !align !252
  %i.dmb = getelementptr inbounds nuw i8, ptr %i.dma, i64 56
  %i.dmc = load ptr, ptr %i.dmb, align 8, !tbaa !237, !nonnull !37, !align !252 ; 2 uses
  %i.dmd = getelementptr inbounds nuw i8, ptr %i.dmc, i64 432
  %i.dme = load i32, ptr %i.dmd, align 8, !tbaa !197
  %i.dmf = icmp sgt i32 %i.dme, 0
  %i.dmg = getelementptr inbounds nuw i8, ptr %i.dmc, i64 344
  %i.dmh = load i8, ptr %i.dmg, align 8, !range !36
  %i.dmi = trunc nuw i8 %i.dmh to i1
  %i.dmj = select i1 %i.dmf, i1 %i.dmi, i1 false
  %spec.select.i.i107 = select i1 %i.dmj, i32 64, i32 128
  %.not.i108 = icmp eq i32 %spec.select.i.i107, %.0.i.i103
  br i1 %.not.i108, label %tailrecurse.i698.peel.begin, label %_ZNK12_GLOBAL__N_19HvxIdioms15processVScatterERN4llvm11InstructionE.exit

tailrecurse.i698.peel.begin:                      ; preds = %_ZNK4llvm4User10getOperandEj.exit119.i
  %.pre99.i694 = load ptr, ptr %i.bvc, align 8, !tbaa !327
  %.phi.trans.insert100.i695 = getelementptr inbounds nuw i8, ptr %.pre99.i694, i64 36
  %.pre101.i696 = load i32, ptr %.phi.trans.insert100.i695, align 4, !tbaa !389
  %i.dmk = icmp eq i32 %.pre101.i696, 240
  %i.dml = select i1 %i.dmk, i64 0, i64 32
  %i.dmm = and i32 %i.dlq, 268435455
  %i.dmn = zext nneg i32 %i.dmm to i64
  %i.dmo = sub nsw i64 0, %i.dmn
  %i.dmp = getelementptr inbounds [32 x i8], ptr %i.rs, i64 %i.dmo
  %spec.select80.i701.peel = getelementptr inbounds nuw i8, ptr %i.dmp, i64 %i.dml
  %.sink.i.i702.peel = load ptr, ptr %spec.select80.i701.peel, align 8, !tbaa !327 ; 3 uses
  %i.dmq = load i8, ptr %.sink.i.i702.peel, align 8, !tbaa !295
  %.not.i703.peel = icmp eq i8 %i.dmq, 65
  br i1 %.not.i703.peel, label %bb.oq, label %_ZNK12_GLOBAL__N_19HvxIdioms15processVScatterERN4llvm11InstructionE.exit

bb.oq:                                            ; preds = %tailrecurse.i698.peel.begin
  %i.dmr = getelementptr inbounds nuw i8, ptr %.sink.i.i702.peel, i64 4
  %i.dms = load i32, ptr %i.dmr, align 4
  %i.dmt = and i32 %i.dms, 268435455
  %i.dmu = zext nneg i32 %i.dmt to i64
  %i.dmv = sub nsw i64 0, %i.dmu
  %i.dmw = getelementptr inbounds [32 x i8], ptr %.sink.i.i702.peel, i64 %i.dmv ; 2 uses
  %i.dmx = load ptr, ptr %i.dmw, align 8, !tbaa !327 ; 4 uses
  %i.dmy = load i8, ptr %i.dmx, align 8, !tbaa !295
  switch i8 %i.dmy, label %_ZNK12_GLOBAL__N_19HvxIdioms15processVScatterERN4llvm11InstructionE.exit [
    i8 63, label %_ZN4llvm26getLoadStorePointerOperandEPNS_5ValueE.exit.i.i151
    i8 70, label %bb.or
    i8 95, label %.loopexit.i705
  ]

bb.or:                                            ; preds = %bb.oq
  %i.dmz = getelementptr inbounds i8, ptr %i.dmx, i64 -32
  %i.dna = load ptr, ptr %i.dmz, align 8, !tbaa !327 ; 4 uses
  %i.dnb = load i8, ptr %i.dna, align 8, !tbaa !295
  switch i8 %i.dnb, label %_ZNK12_GLOBAL__N_19HvxIdioms15processVScatterERN4llvm11InstructionE.exit [
    i8 63, label %_ZN4llvm26getLoadStorePointerOperandEPNS_5ValueE.exit.i.i151
    i8 88, label %bb.os
  ]

bb.os:                                            ; preds = %bb.or
  %i.dnc = getelementptr inbounds i8, ptr %i.dna, i64 -32
  %i.dnd = load ptr, ptr %i.dnc, align 8, !tbaa !327 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i708.peel = icmp eq ptr %i.dnd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i708.peel, label %_ZNK12_GLOBAL__N_19HvxIdioms15processVScatterERN4llvm11InstructionE.exit, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  %i.dne = load i8, ptr %i.dnd, align 8, !tbaa !295
  %i.dnf = icmp eq i8 %i.dne, 14
  br i1 %i.dnf, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i.i709.peel, label %_ZNK12_GLOBAL__N_19HvxIdioms15processVScatterERN4llvm11InstructionE.exit

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i.i709.peel: ; preds = %bb.ot
  %i.dng = getelementptr inbounds nuw i8, ptr %i.dnd, i64 32
  %i.dnh = load i32, ptr %i.dng, align 8
  %i.dni = and i32 %i.dnh, 8192
  %.not.i.i.i710.peel = icmp eq i32 %i.dni, 0
  br i1 %.not.i.i.i710.peel, label %_ZNK12_GLOBAL__N_19HvxIdioms15processVScatterERN4llvm11InstructionE.exit, label %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit.i711.peel

_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit.i711.peel: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i.i709.peel
  %i.dnj = getelementptr inbounds nuw i8, ptr %i.dnd, i64 36
  %i.dnk = load i32, ptr %i.dnj, align 4, !tbaa !389
  %i.dnl = icmp eq i32 %i.dnk, 240
  br i1 %i.dnl, label %tailrecurse.i698, label %_ZNK12_GLOBAL__N_19HvxIdioms15processVScatterERN4llvm11InstructionE.exit

tailrecurse.i698:                                 ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit.i711.peel, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit.i711
  %.tr.i700 = phi ptr [ %i.doc, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit.i711 ], [ %i.dna, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit.i711.peel ] ; 2 uses
  %i.dnm = getelementptr inbounds nuw i8, ptr %.tr.i700, i64 4
  %i.dnn = load i32, ptr %i.dnm, align 4
  %i.dno = and i32 %i.dnn, 268435455
  %i.dnp = zext nneg i32 %i.dno to i64
  %i.dnq = sub nsw i64 0, %i.dnp
  %i.dnr = getelementptr inbounds [32 x i8], ptr %.tr.i700, i64 %i.dnq
  %.sink.i.i702 = load ptr, ptr %i.dnr, align 8, !tbaa !327 ; 3 uses
  %i.dns = load i8, ptr %.sink.i.i702, align 8, !tbaa !295
  %.not.i703 = icmp eq i8 %i.dns, 65
  br i1 %.not.i703, label %bb.ou, label %_ZNK12_GLOBAL__N_19HvxIdioms15processVScatterERN4llvm11InstructionE.exit

bb.ou:                                            ; preds = %tailrecurse.i698
  %i.dnt = getelementptr inbounds nuw i8, ptr %.sink.i.i702, i64 4
  %i.dnu = load i32, ptr %i.dnt, align 4
  %i.dnv = and i32 %i.dnu, 268435455
  %i.dnw = zext nneg i32 %i.dnv to i64
  %i.dnx = sub nsw i64 0, %i.dnw
  %i.dny = getelementptr inbounds [32 x i8], ptr %.sink.i.i702, i64 %i.dnx
  %i.dnz = load ptr, ptr %i.dny, align 8, !tbaa !327 ; 4 uses
  %i.doa = load i8, ptr %i.dnz, align 8, !tbaa !295
  switch i8 %i.doa, label %_ZNK12_GLOBAL__N_19HvxIdioms15processVScatterERN4llvm11InstructionE.exit [
    i8 63, label %_ZN4llvm26getLoadStorePointerOperandEPNS_5ValueE.exit.i.i151
    i8 70, label %bb.ov
    i8 95, label %.loopexit.i705
  ]

bb.ov:                                            ; preds = %bb.ou
  %i.dob = getelementptr inbounds i8, ptr %i.dnz, i64 -32
  %i.doc = load ptr, ptr %i.dob, align 8, !tbaa !327 ; 4 uses
  %i.dod = load i8, ptr %i.doc, align 8, !tbaa !295
  switch i8 %i.dod, label %_ZNK12_GLOBAL__N_19HvxIdioms15processVScatterERN4llvm11InstructionE.exit [
    i8 63, label %_ZN4llvm26getLoadStorePointerOperandEPNS_5ValueE.exit.i.i151
    i8 88, label %bb.ow
  ]

bb.ow:                                            ; preds = %bb.ov
  %i.doe = getelementptr inbounds i8, ptr %i.doc, i64 -32
  %i.dof = load ptr, ptr %i.doe, align 8, !tbaa !327 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i708 = icmp eq ptr %i.dof, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i708, label %_ZNK12_GLOBAL__N_19HvxIdioms15processVScatterERN4llvm11InstructionE.exit, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  %i.dog = load i8, ptr %i.dof, align 8, !tbaa !295
  %i.doh = icmp eq i8 %i.dog, 14
  br i1 %i.doh, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i.i709, label %_ZNK12_GLOBAL__N_19HvxIdioms15processVScatterERN4llvm11InstructionE.exit

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i.i709: ; preds = %bb.ox
  %i.doi = getelementptr inbounds nuw i8, ptr %i.dof, i64 32
  %i.doj = load i32, ptr %i.doi, align 8
  %i.dok = and i32 %i.doj, 8192
  %.not.i.i.i710 = icmp eq i32 %i.dok, 0
  br i1 %.not.i.i.i710, label %_ZNK12_GLOBAL__N_19HvxIdioms15processVScatterERN4llvm11InstructionE.exit, label %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit.i711

_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit.i711: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i.i709
  %i.dol = getelementptr inbounds nuw i8, ptr %i.dof, i64 36
  %i.dom = load i32, ptr %i.dol, align 4, !tbaa !389
  %i.don = icmp eq i32 %i.dom, 240
  br i1 %i.don, label %tailrecurse.i698, label %_ZNK12_GLOBAL__N_19HvxIdioms15processVScatterERN4llvm11InstructionE.exit, !llvm.loop !701

.loopexit.i705:                                   ; preds = %bb.ou, %bb.oq
  %.lcssa965 = phi ptr [ %i.dmx, %bb.oq ], [ %i.dnz, %bb.ou ]
  %i.doo = getelementptr inbounds i8, ptr %.lcssa965, i64 -64
  %i.dop = load ptr, ptr %i.doo, align 8, !tbaa !327 ; 3 uses
  %i.doq = load i8, ptr %i.dop, align 8, !tbaa !295
  switch i8 %i.doq, label %_ZNK12_GLOBAL__N_19HvxIdioms15processVScatterERN4llvm11InstructionE.exit [
    i8 63, label %_ZN4llvm26getLoadStorePointerOperandEPNS_5ValueE.exit.i.i151
    i8 94, label %bb.oy
  ]

bb.oy:                                            ; preds = %.loopexit.i705
  %i.dor = getelementptr inbounds i8, ptr %i.dop, i64 -64
  %i.dos = load ptr, ptr %i.dor, align 8, !tbaa !327 ; 5 uses
  %i.dot = load i8, ptr %i.dos, align 8, !tbaa !295 ; 2 uses
  switch i8 %i.dot, label %bb.oz [
    i8 62, label %_Z10getPointerPN4llvm5ValueE.exit.thread214.i
    i8 23, label %_Z10getPointerPN4llvm5ValueE.exit.thread214.i
    i8 63, label %_ZN4llvm26getLoadStorePointerOperandEPNS_5ValueE.exit.i.i151
  ]

bb.oz:                                            ; preds = %bb.oy
  %i.dou = add i8 %i.dot, -18
  %switch.selectcmp.i.i.i.i.i.i.i.i706 = icmp ult i8 %i.dou, -4
  br i1 %switch.selectcmp.i.i.i.i.i.i.i.i706, label %_ZNK12_GLOBAL__N_19HvxIdioms15processVScatterERN4llvm11InstructionE.exit, label %_Z10getPointerPN4llvm5ValueE.exit.thread214.i

_ZN4llvm26getLoadStorePointerOperandEPNS_5ValueE.exit.i.i151: ; preds = %bb.ou, %bb.ov, %bb.oq, %bb.or, %bb.oy, %.loopexit.i705
  %.9.i704.ph846850853 = phi ptr [ %i.dop, %.loopexit.i705 ], [ %i.dos, %bb.oy ], [ %i.dmx, %bb.oq ], [ %i.dna, %bb.or ], [ %i.dnz, %bb.ou ], [ %i.doc, %bb.ov ]
  %i.dov = getelementptr inbounds i8, ptr %.9.i704.ph846850853, i64 -32
  %.1.i.i150 = load ptr, ptr %i.dov, align 8, !tbaa !327 ; 2 uses
  %.not89.i = icmp eq ptr %.1.i.i150, null
  br i1 %.not89.i, label %_ZNK12_GLOBAL__N_19HvxIdioms15processVScatterERN4llvm11InstructionE.exit, label %_Z10getPointerPN4llvm5ValueE.exit.thread214.i

_Z10getPointerPN4llvm5ValueE.exit.thread214.i:    ; preds = %bb.oz, %_ZN4llvm26getLoadStorePointerOperandEPNS_5ValueE.exit.i.i151, %bb.oy, %bb.oy
  %.1.i217.i = phi ptr [ %.1.i.i150, %_ZN4llvm26getLoadStorePointerOperandEPNS_5ValueE.exit.i.i151 ], [ %i.dos, %bb.oy ], [ %i.dos, %bb.oy ], [ %i.dos, %bb.oz ] ; 3 uses
  %i.dow = getelementptr inbounds nuw i8, ptr %i.dmw, i64 32
  %i.dox = load ptr, ptr %i.dow, align 8, !tbaa !327 ; 2 uses
  %.not116.i.i676 = icmp eq ptr %i.dox, null
  br i1 %.not116.i.i676, label %_ZNK12_GLOBAL__N_19HvxIdioms15processVScatterERN4llvm11InstructionE.exit, label %.lr.ph.i.i677

.lr.ph.i.i677:                                    ; preds = %_Z10getPointerPN4llvm5ValueE.exit.thread214.i, %tailrecurse.backedge.i.i680
  %.tr117.i.i678 = phi ptr [ %.tr.be.i.i682, %tailrecurse.backedge.i.i680 ], [ %i.dox, %_Z10getPointerPN4llvm5ValueE.exit.thread214.i ] ; 8 uses
  %i.doy = load i8, ptr %.tr117.i.i678, align 8, !tbaa !295
  switch i8 %i.doy, label %_ZNK12_GLOBAL__N_19HvxIdioms15processVScatterERN4llvm11InstructionE.exit [
    i8 63, label %_ZL26locateIndexesFromIntrinsicPN4llvm11InstructionE.exit691.thread858
    i8 88, label %bb.pa
    i8 70, label %tailrecurse.backedge.i.i680
    i8 71, label %tailrecurse.backedge.i.i680
    i8 95, label %.thread93.i.i679
    i8 94, label %.thread93.i.i679
    i8 4, label %_ZL26locateIndexesFromIntrinsicPN4llvm11InstructionE.exit691.thread858
    i8 65, label %_ZL26locateIndexesFromIntrinsicPN4llvm11InstructionE.exit691
  ]

bb.pa:                                            ; preds = %.lr.ph.i.i677
  %i.doz = getelementptr inbounds i8, ptr %.tr117.i.i678, i64 -32
  %i.dpa = load ptr, ptr %i.doz, align 8, !tbaa !327 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i685 = icmp eq ptr %i.dpa, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i685, label %_ZNK12_GLOBAL__N_19HvxIdioms15processVScatterERN4llvm11InstructionE.exit, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  %i.dpb = load i8, ptr %i.dpa, align 8, !tbaa !295
  %i.dpc = icmp eq i8 %i.dpb, 14
  br i1 %i.dpc, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i.i.i686, label %_ZNK12_GLOBAL__N_19HvxIdioms15processVScatterERN4llvm11InstructionE.exit

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i.i.i686: ; preds = %bb.pb
  %i.dpd = getelementptr inbounds nuw i8, ptr %i.dpa, i64 32
  %i.dpe = load i32, ptr %i.dpd, align 8
  %i.dpf = and i32 %i.dpe, 8192
  %.not.i.i.i.i687 = icmp eq i32 %i.dpf, 0
  br i1 %.not.i.i.i.i687, label %_ZNK12_GLOBAL__N_19HvxIdioms15processVScatterERN4llvm11InstructionE.exit, label %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit.i.i688

_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit.i.i688: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i.i.i686
  %i.dpg = getelementptr inbounds nuw i8, ptr %i.dpa, i64 36
  %i.dph = load i32, ptr %i.dpg, align 4, !tbaa !389
  %i.dpi = add i32 %i.dph, -242
  %or.cond.i.i689 = icmp ult i32 %i.dpi, -2
  br i1 %or.cond.i.i689, label %_ZNK12_GLOBAL__N_19HvxIdioms15processVScatterERN4llvm11InstructionE.exit, label %_ZL26locateIndexesFromIntrinsicPN4llvm11InstructionE.exit691.thread858

tailrecurse.backedge.i.i680:                      ; preds = %.thread93.i.i679, %.lr.ph.i.i677, %.lr.ph.i.i677
  %.sink.i10.i681 = phi i64 [ -32, %.lr.ph.i.i677 ], [ -32, %.lr.ph.i.i677 ], [ -64, %.thread93.i.i679 ]
  %i.dpj = getelementptr inbounds i8, ptr %.tr117.i.i678, i64 %.sink.i10.i681
end_hunk_2
