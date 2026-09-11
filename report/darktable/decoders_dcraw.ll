Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/decoders_dcraw?download=true
inline.NumInlined: 144
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZN6LibRaw22quicktake_100_load_rawEv:bb.a
  %i.iq = select i1 %i.ip, i64 4, i64 5
  %i.ir = select i1 %i.io, i64 3, i64 %i.iq
  br label %bb.am

._crit_edge294.1:                                 ; preds = %bb.ah
  %.pre295.1 = add nuw nsw i64 %indvars.iv.1, %i.hp
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge294.1, %bb.al, %bb.ak, %bb.aj, %bb.ai
  %.pre-phi296.1 = phi i64 [ %.pre295.1, %._crit_edge294.1 ], [ %i.hv, %bb.ai ], [ %i.hv, %bb.al ], [ %i.hv, %bb.ak ], [ %i.hv, %bb.aj ]
  %.0167.1 = phi i64 [ 2, %._crit_edge294.1 ], [ 0, %bb.ai ], [ %i.ir, %bb.al ], [ 2, %bb.ak ], [ 1, %bb.aj ]
  %i.is = getelementptr inbounds i8, ptr %i.a, i64 %.pre.1 ; 2 uses
  %i.it = load i8, ptr %i.is, align 1, !tbaa !99
  %i.iu = getelementptr i8, ptr %i.a, i64 %.pre-phi296.1 ; 2 uses
  %i.iv = getelementptr i8, ptr %i.iu, i64 -2
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !99
  %i.ix = load ptr, ptr %i.i, align 8, !tbaa !76  ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !84 ; 3 uses
  %i.ja = icmp slt i32 %i.iz, 0
  br i1 %i.ja, label %_ZN6LibRaw10getbithuffEiPt.exit199.1, label %.preheader.i181.1

.preheader.i181.1:                                ; preds = %bb.am
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !83
  %.not25.i182.1 = icmp eq i32 %i.jc, 0
  br i1 %.not25.i182.1, label %.lr.ph.i186.1, label %.critedge.i183.1

.lr.ph.i186.1:                                    ; preds = %.preheader.i181.1
  %i.jd = icmp samesign ult i32 %i.iz, 2
  br i1 %i.jd, label %.lr.ph243.1, label %.critedge.loopexit.i187.1

.lr.ph243.1:                                      ; preds = %.lr.ph.i186.1, %bb.ap
  %i.je = load ptr, ptr %i.p, align 8, !tbaa !86  ; 2 uses
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !88
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 56
  %i.jh = load ptr, ptr %i.jg, align 8
  %i.ji = invoke noundef i32 %i.jh(ptr noundef nonnull align 8 dereferenceable(8) %i.je)
          to label %.noexc196.1 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !inline_history !119 ; 3 uses

.noexc196.1:                                      ; preds = %.lr.ph243.1
  %.not21.i191.1 = icmp eq i32 %i.ji, -1
  br i1 %.not21.i191.1, label %..critedge.loopexit_crit_edge.i194.1, label %bb.an

bb.an:                                            ; preds = %.noexc196.1
  %i.jj = load i32, ptr %i.q, align 8, !tbaa !95
  %i.jk = icmp ne i32 %i.jj, 0
  %i.jl = icmp eq i32 %i.ji, 255
  %or.cond.i192.1 = and i1 %i.jl, %i.jk
  br i1 %or.cond.i192.1, label %bb.ao, label %.critedge24.i193.1

.critedge24.i193.1:                               ; preds = %bb.an
  %i.jm = load ptr, ptr %i.i, align 8, !tbaa !76  ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store i32 0, ptr %i.jn, align 8, !tbaa !83
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.jo = load ptr, ptr %i.p, align 8, !tbaa !86  ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !88
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 56
  %i.jr = load ptr, ptr %i.jq, align 8
  %i.js = invoke noundef i32 %i.jr(ptr noundef nonnull align 8 dereferenceable(8) %i.jo)
          to label %.noexc197.1 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !inline_history !119

.noexc197.1:                                      ; preds = %bb.ao
  %i.jt = icmp ne i32 %i.js, 0                    ; 2 uses
  %i.ju = zext i1 %i.jt to i32
  %i.jv = load ptr, ptr %i.i, align 8, !tbaa !76  ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store i32 %i.ju, ptr %i.jw, align 8, !tbaa !83
  br i1 %i.jt, label %.critedge.loopexit.i187.1, label %bb.ap

bb.ap:                                            ; preds = %.noexc197.1, %.critedge24.i193.1
  %i.jx = phi ptr [ %i.jm, %.critedge24.i193.1 ], [ %i.jv, %.noexc197.1 ] ; 4 uses
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !85
  %i.jz = shl i32 %i.jy, 8
  %i.ka = and i32 %i.ji, 255
  %i.kb = or disjoint i32 %i.jz, %i.ka
  store i32 %i.kb, ptr %i.jx, align 8, !tbaa !85
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jx, i64 4 ; 2 uses
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !84 ; 2 uses
  %i.ke = add nsw i32 %i.kd, 8
  store i32 %i.ke, ptr %i.kc, align 4, !tbaa !84
  %i.kf = icmp slt i32 %i.kd, -6
  br i1 %i.kf, label %.lr.ph243.1, label %.critedge.loopexit.i187.1, !llvm.loop !1

..critedge.loopexit_crit_edge.i194.1:             ; preds = %.noexc196.1
  %.pre.pre.i195.1 = load ptr, ptr %i.i, align 8, !tbaa !76
  br label %.critedge.loopexit.i187.1

.critedge.loopexit.i187.1:                        ; preds = %.noexc197.1, %bb.ap, %..critedge.loopexit_crit_edge.i194.1, %.lr.ph.i186.1
  %.pre.i188.1 = phi ptr [ %.pre.pre.i195.1, %..critedge.loopexit_crit_edge.i194.1 ], [ %i.ix, %.lr.ph.i186.1 ], [ %i.jx, %bb.ap ], [ %i.jv, %.noexc197.1 ] ; 2 uses
  %.phi.trans.insert.i189.1 = getelementptr inbounds nuw i8, ptr %.pre.i188.1, i64 4
  %.pre29.i190.1 = load i32, ptr %.phi.trans.insert.i189.1, align 4, !tbaa !84
  br label %.critedge.i183.1

.critedge.i183.1:                                 ; preds = %.critedge.loopexit.i187.1, %.preheader.i181.1
  %i.kg = phi i32 [ %.pre29.i190.1, %.critedge.loopexit.i187.1 ], [ %i.iz, %.preheader.i181.1 ] ; 4 uses
  %i.kh = phi ptr [ %.pre.i188.1, %.critedge.loopexit.i187.1 ], [ %i.ix, %.preheader.i181.1 ] ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 4 ; 2 uses
  %i.kj = icmp eq i32 %i.kg, 0
  br i1 %i.kj, label %.thread207.1, label %bb.aq

bb.aq:                                            ; preds = %.critedge.i183.1
  %i.kk = load i32, ptr %i.kh, align 8, !tbaa !85
  %i.kl = sub nsw i32 32, %i.kg
  %i.km = shl i32 %i.kk, %i.kl
  %i.kn = lshr i32 %i.km, 30                      ; 2 uses
  %.sink.i184.1 = add nsw i32 %i.kg, -2
  store i32 %.sink.i184.1, ptr %i.ki, align 4, !tbaa !84
  %i.ko = icmp slt i32 %i.kg, 2
  br i1 %i.ko, label %bb.ar, label %_ZN6LibRaw10getbithuffEiPt.exit199.1

.thread207.1:                                     ; preds = %.critedge.i183.1
  store i32 -2, ptr %i.ki, align 4, !tbaa !84
  br label %bb.ar

bb.ar:                                            ; preds = %.thread207.1, %bb.aq
  %i.kp = phi i32 [ 0, %.thread207.1 ], [ %i.kn, %bb.aq ]
  invoke void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %_ZN6LibRaw10getbithuffEiPt.exit199.1 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

_ZN6LibRaw10getbithuffEiPt.exit199.1:             ; preds = %bb.ar, %bb.aq, %bb.am
  %.016.i185.1 = phi i32 [ 0, %bb.am ], [ %i.kn, %bb.aq ], [ %i.kp, %bb.ar ]
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6LibRaw22quicktake_100_load_rawEvE5rstep, i64 %.0167.1
  %i.kr = zext i8 %i.it to i32
  %i.ks = zext i8 %i.iw to i32
  %i.kt = add nuw nsw i32 %i.ks, %i.kr
  %i.ku = lshr i32 %i.kt, 1
  %i.kv = zext nneg i32 %.016.i185.1 to i64
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.kq, i64 %i.kv
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !97
  %i.ky = sext i16 %i.kx to i32
  %i.kz = add nsw i32 %i.ku, %i.ky
  %i.la = tail call i32 @llvm.smax.i32(i32 %i.kz, i32 0)
  %i.lb = tail call i32 @llvm.umin.i32(i32 %i.la, i32 255)
  %i.lc = trunc nuw i32 %i.lb to i8               ; 3 uses
  store i8 %i.lc, ptr %i.iu, align 1, !tbaa !99
  br i1 %i.ho, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZN6LibRaw10getbithuffEiPt.exit199.1
  %i.ld = getelementptr i8, ptr %i.is, i64 2
  store i8 %i.lc, ptr %i.ld, align 1, !tbaa !99
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %_ZN6LibRaw10getbithuffEiPt.exit199.1
  br i1 %i.hr, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %gep320.1 = getelementptr i8, ptr %invariant.gep319.1, i64 %indvars.iv.1
  %i.le = getelementptr i8, ptr %gep320.1, i64 1286
  store i8 %i.lc, ptr %i.le, align 1, !tbaa !99
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 2
  %i.lf = load i16, ptr %i.b, align 2, !tbaa !138
  %i.lg = zext i16 %i.lf to i64
  %i.lh = icmp samesign ult i64 %indvars.iv.1, %i.lg
  br i1 %i.lh, label %bb.ah, label %._crit_edge249.1, !llvm.loop !234

._crit_edge249.1:                                 ; preds = %bb.av, %bb.ag
  %indvars.iv.next280.1 = add nuw nsw i64 %indvars.iv279.1, 2
  %i.li = load i16, ptr %i.e, align 4, !tbaa !137 ; 2 uses
  %i.lj = zext i16 %i.li to i64
  %i.lk = icmp samesign ult i64 %indvars.iv279.1, %i.lj
  br i1 %i.lk, label %.lr.ph252.1, label %._crit_edge253.1, !llvm.loop !235

._crit_edge253.1:                                 ; preds = %._crit_edge249.1, %._crit_edge253
  %i.ll = phi i16 [ %i.hl, %._crit_edge253 ], [ %i.li, %._crit_edge249.1 ]
  %.not266 = icmp eq i16 %i.ll, 0
  br i1 %.not266, label %_ZNSt6vectorIhSaIhEED2Ev.exit201, label %.lr.ph260

.preheader209:                                    ; preds = %._crit_edge258
  %i.lm = icmp eq i16 %i.on, 0
  br i1 %i.lm, label %_ZNSt6vectorIhSaIhEED2Ev.exit201, label %.lr.ph265

.lr.ph265:                                        ; preds = %.preheader209
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 193784
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 18
  br label %bb.ax

.lr.ph260:                                        ; preds = %._crit_edge253.1, %._crit_edge258
  %indvars.iv285 = phi i64 [ %indvars.iv.next286, %._crit_edge258 ], [ 2, %._crit_edge253.1 ] ; 3 uses
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.aw unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit

bb.aw:                                            ; preds = %.lr.ph260
  %i.lp = trunc nuw nsw i64 %indvars.iv285 to i32
  %i.lq = and i32 %i.lp, 1
  %i.lr = xor i32 %i.lq, 3                        ; 2 uses
  %i.ls = load i16, ptr %i.b, align 2, !tbaa !138 ; 2 uses
  %i.lt = zext i16 %i.ls to i32
  %i.lu = add nuw nsw i32 %i.lt, 2
  %i.lv = icmp samesign ult i32 %i.lr, %i.lu
  br i1 %i.lv, label %iter.check, label %._crit_edge258

iter.check:                                       ; preds = %bb.aw
  %i.lw = mul nuw nsw i64 %indvars.iv285, 644
  %i.lx = zext nneg i32 %i.lr to i64              ; 7 uses
  %i.ly = zext i16 %i.ls to i64                   ; 2 uses
  %invariant.gep322 = getelementptr i8, ptr %i.a, i64 %i.lw ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ly, i64 %i.lx)
  %i.lz = add nuw nsw i64 %umax, 1
  %i.ma = sub nsw i64 %i.lz, %i.lx                ; 3 uses
  %i.mb = lshr i64 %i.ma, 1
  %i.mc = add nuw nsw i64 %i.mb, 1                ; 4 uses
  %min.iters.check = icmp ult i64 %i.ma, 16
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check329 = icmp ult i64 %i.ma, 32
  br i1 %min.iters.check329, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.md = and i64 %i.mc, 15                       ; 2 uses
  %i.me = icmp eq i64 %i.md, 0
  %i.mf = select i1 %i.me, i64 16, i64 %i.md      ; 2 uses
  %n.vec = sub nsw i64 %i.mc, %i.mf               ; 3 uses
  %i.mg = shl i64 %n.vec, 1
  %i.mh = add i64 %i.mg, %i.lx
  %invariant.gep363 = getelementptr i8, ptr %invariant.gep322, i64 %i.lx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.mi = shl nuw i64 %index, 1
  %gep364 = getelementptr i8, ptr %invariant.gep363, i64 %i.mi ; 3 uses
  %i.mj = getelementptr i8, ptr %gep364, i64 -1
  %wide.vec = load <32 x i8>, ptr %i.mj, align 1, !tbaa !99
  %i.mk = freeze <32 x i8> %wide.vec
  %i.ml = bitcast <32 x i8> %i.mk to <16 x i16>
  %i.mm = and <16 x i16> %i.ml, splat (i16 255)
  %wide.vec330 = load <32 x i8>, ptr %gep364, align 1, !tbaa !99
  %i.mn = freeze <32 x i8> %wide.vec330
  %i.mo = bitcast <32 x i8> %i.mn to <16 x i16>   ; 2 uses
  %i.mp = lshr <16 x i16> %i.mo, splat (i16 8)
  %i.mq = shl <16 x i16> %i.mo, splat (i16 2)
  %i.mr = and <16 x i16> %i.mq, splat (i16 1020)
  %i.ms = add nuw nsw <16 x i16> %i.mr, %i.mm
  %i.mt = add nuw nsw <16 x i16> %i.ms, %i.mp
  %i.mu = lshr <16 x i16> %i.mt, splat (i16 1)
  %i.mv = tail call <16 x i16> @llvm.umax.v16i16(<16 x i16> %i.mu, <16 x i16> splat (i16 256))
  %i.mw = tail call <16 x i16> @llvm.umin.v16i16(<16 x i16> %i.mv, <16 x i16> splat (i16 511))
  %i.mx = trunc <16 x i16> %i.mw to <16 x i8>
  %i.my = shufflevector <16 x i8> %i.mx, <16 x i8> poison, <31 x i32> <i32 0, i32 poison, i32 1, i32 poison, i32 2, i32 poison, i32 3, i32 poison, i32 4, i32 poison, i32 5, i32 poison, i32 6, i32 poison, i32 7, i32 poison, i32 8, i32 poison, i32 9, i32 poison, i32 10, i32 poison, i32 11, i32 poison, i32 12, i32 poison, i32 13, i32 poison, i32 14, i32 poison, i32 15>
  tail call void @llvm.masked.store.v31i8.p0(<31 x i8> %i.my, ptr align 1 %gep364, <31 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true>), !tbaa !99
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.mz = icmp eq i64 %index.next, %n.vec
  br i1 %i.mz, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !236

vec.epilog.iter.check:                            ; preds = %vector.body
  %min.epilog.iters.check = icmp samesign ult i64 %i.mf, 9
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !242

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.na = and i64 %i.mc, 7                        ; 2 uses
  %i.nb = icmp eq i64 %i.na, 0
  %i.nc = select i1 %i.nb, i64 8, i64 %i.na
  %n.vec333 = sub nsw i64 %i.mc, %i.nc            ; 2 uses
  %i.nd = shl i64 %n.vec333, 1
  %i.ne = add i64 %i.nd, %i.lx
  %invariant.gep365 = getelementptr i8, ptr %invariant.gep322, i64 %i.lx
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index334 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next340, %vec.epilog.vector.body ] ; 2 uses
  %i.nf = shl nuw i64 %index334, 1
  %gep366 = getelementptr i8, ptr %invariant.gep365, i64 %i.nf ; 3 uses
  %i.ng = getelementptr i8, ptr %gep366, i64 -1
  %wide.vec335 = load <16 x i8>, ptr %i.ng, align 1, !tbaa !99
  %i.nh = freeze <16 x i8> %wide.vec335
  %i.ni = bitcast <16 x i8> %i.nh to <8 x i16>
  %i.nj = and <8 x i16> %i.ni, splat (i16 255)
  %wide.vec337 = load <16 x i8>, ptr %gep366, align 1, !tbaa !99
  %i.nk = freeze <16 x i8> %wide.vec337
  %i.nl = bitcast <16 x i8> %i.nk to <8 x i16>    ; 2 uses
  %i.nm = lshr <8 x i16> %i.nl, splat (i16 8)
  %i.nn = shl <8 x i16> %i.nl, splat (i16 2)
  %i.no = and <8 x i16> %i.nn, splat (i16 1020)
  %i.np = add nuw nsw <8 x i16> %i.no, %i.nj
  %i.nq = add nuw nsw <8 x i16> %i.np, %i.nm
  %i.nr = lshr <8 x i16> %i.nq, splat (i16 1)
  %i.ns = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.nr, <8 x i16> splat (i16 256))
  %i.nt = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.ns, <8 x i16> splat (i16 511))
  %i.nu = trunc <8 x i16> %i.nt to <8 x i8>
  %i.nv = shufflevector <8 x i8> %i.nu, <8 x i8> poison, <15 x i32> <i32 0, i32 poison, i32 1, i32 poison, i32 2, i32 poison, i32 3, i32 poison, i32 4, i32 poison, i32 5, i32 poison, i32 6, i32 poison, i32 7>
  tail call void @llvm.masked.store.v15i8.p0(<15 x i8> %i.nv, ptr align 1 %gep366, <15 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true>), !tbaa !99
  %index.next340 = add nuw i64 %index334, 8       ; 2 uses
  %i.nw = icmp eq i64 %index.next340, %n.vec333
  br i1 %i.nw, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body, !llvm.loop !237

vec.epilog.scalar.ph.preheader:                   ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %indvars.iv282.ph = phi i64 [ %i.lx, %iter.check ], [ %i.mh, %vec.epilog.iter.check ], [ %i.ne, %vec.epilog.vector.body ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv282 = phi i64 [ %indvars.iv.next283, %vec.epilog.scalar.ph ], [ %indvars.iv282.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %gep323 = getelementptr i8, ptr %invariant.gep322, i64 %indvars.iv282 ; 4 uses
  %i.nx = getelementptr i8, ptr %gep323, i64 -1
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !99
  %i.nz = zext i8 %i.ny to i16
  %i.oa = load i8, ptr %gep323, align 1, !tbaa !99
  %i.ob = zext i8 %i.oa to i16
  %i.oc = shl nuw nsw i16 %i.ob, 2
  %i.od = add nuw nsw i16 %i.oc, %i.nz
  %i.oe = getelementptr inbounds nuw i8, ptr %gep323, i64 1
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !99
  %i.og = zext i8 %i.of to i16
  %i.oh = add nuw nsw i16 %i.od, %i.og
  %i.oi = lshr i16 %i.oh, 1
  %i.oj = tail call i16 @llvm.umax.i16(i16 %i.oi, i16 256)
  %i.ok = tail call i16 @llvm.umin.i16(i16 %i.oj, i16 511)
  %i.ol = trunc i16 %i.ok to i8
  store i8 %i.ol, ptr %gep323, align 1, !tbaa !99
  %indvars.iv.next283 = add nuw nsw i64 %indvars.iv282, 2
  %i.om = icmp samesign ult i64 %indvars.iv282, %i.ly
  br i1 %i.om, label %vec.epilog.scalar.ph, label %._crit_edge258, !llvm.loop !238

._crit_edge258:                                   ; preds = %vec.epilog.scalar.ph, %bb.aw
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 2 uses
  %i.on = load i16, ptr %i.e, align 4, !tbaa !137 ; 2 uses
  %i.oo = zext i16 %i.on to i64
  %i.op = add nuw nsw i64 %i.oo, 2
  %i.oq = icmp samesign ult i64 %indvars.iv.next286, %i.op
  br i1 %i.oq, label %.lr.ph260, label %.preheader209, !llvm.loop !239

bb.ax:                                            ; preds = %.lr.ph265, %._crit_edge263
  %indvars.iv291 = phi i64 [ 0, %.lr.ph265 ], [ %indvars.iv.next292, %._crit_edge263 ] ; 3 uses
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.preheader unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit

.preheader:                                       ; preds = %bb.ax
  %i.or = load i16, ptr %i.b, align 2, !tbaa !138
  %.not268 = icmp eq i16 %i.or, 0
  br i1 %.not268, label %._crit_edge263, label %.lr.ph262

.lr.ph262:                                        ; preds = %.preheader
  %i.os = mul nuw nsw i64 %indvars.iv291, 644
  %i.ot = load ptr, ptr %i.ln, align 8, !tbaa !118
  %i.ou = getelementptr i8, ptr %i.a, i64 %i.os
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph262, %bb.ay
  %indvars.iv288 = phi i64 [ 0, %.lr.ph262 ], [ %indvars.iv.next289, %bb.ay ] ; 3 uses
  %i.ov = getelementptr i8, ptr %i.ou, i64 %indvars.iv288
  %i.ow = getelementptr i8, ptr %i.ov, i64 1290
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !99
  %i.oy = zext i8 %i.ox to i64
  %i.oz = getelementptr inbounds nuw [2 x i8], ptr @_ZZN6LibRaw22quicktake_100_load_rawEvE7t_curve, i64 %i.oy
  %i.pa = load i16, ptr %i.oz, align 2, !tbaa !97
  %i.pb = load i16, ptr %i.lo, align 2, !tbaa !117
  %i.pc = zext i16 %i.pb to i64
  %i.pd = mul nuw nsw i64 %indvars.iv291, %i.pc
  %i.pe = getelementptr inbounds nuw [2 x i8], ptr %i.ot, i64 %i.pd
  %i.pf = getelementptr inbounds nuw [2 x i8], ptr %i.pe, i64 %indvars.iv288
  store i16 %i.pa, ptr %i.pf, align 2, !tbaa !97
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %i.pg = load i16, ptr %i.b, align 2, !tbaa !138
  %i.ph = zext i16 %i.pg to i64
  %i.pi = icmp samesign ult i64 %indvars.iv.next289, %i.ph
  br i1 %i.pi, label %bb.ay, label %._crit_edge263, !llvm.loop !240

._crit_edge263:                                   ; preds = %bb.ay, %.preheader
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %i.pj = load i16, ptr %i.e, align 4, !tbaa !137
  %i.pk = zext i16 %i.pj to i64
  %i.pl = icmp samesign ult i64 %indvars.iv.next292, %i.pk
  br i1 %i.pl, label %bb.ax, label %_ZNSt6vectorIhSaIhEED2Ev.exit201, !llvm.loop !241

_ZNSt6vectorIhSaIhEED2Ev.exit201:                 ; preds = %._crit_edge263, %._crit_edge253.1, %.preheader209
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 1023, ptr %i.pm, align 8, !tbaa !115
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 311696) #19
  ret void

bb.az:                                            ; preds = %bb.c
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw13sony_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) initializes((381728, 381730)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [40 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 200896, i32 noundef 0), !call_target !107 ; 0 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !86   ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !88
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h), !call_target !94
  %i.m = shl i32 %i.l, 2
  %i.n = add i32 %i.m, -1
  %i.o = zext i32 %i.n to i64
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !88
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef i32 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %i.o, i32 noundef 1), !call_target !107 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 381728
  store i16 19789, ptr %i.t, align 8, !tbaa !146
  %i.u = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !86   ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !88
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i32 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i64 noundef 164600, i32 noundef 0), !call_target !107 ; 0 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !86  ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !88
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noundef i32 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 40), !call_target !114 ; 0 uses
  call void @_ZN6LibRaw12sony_decryptEPjiii(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.a, i32 noundef 10, i32 noundef 1, i32 noundef %i.u)
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !99
  %i.ah = zext i8 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !99
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ah, 16
  %i.am = shl nuw nsw i32 %i.ak, 8
  %i.an = or disjoint i32 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !99
  %i.aq = zext i8 %i.ap to i32
  %i.ar = or disjoint i32 %i.an, %i.aq
  %i.as = shl nuw i32 %i.ar, 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.au = load i8, ptr %i.at, align 2, !tbaa !99
  %i.av = zext i8 %i.au to i32
  %i.aw = or disjoint i32 %i.as, %i.av
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !86  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 381760
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !144
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !88
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = call noundef i32 %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i64 noundef %i.az, i32 noundef 0), !call_target !107 ; 0 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = load i16, ptr %i.be, align 8, !tbaa !116
  %.not28 = icmp eq i16 %i.bf, 0
  br i1 %.not28, label %._crit_edge27, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 193784
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph26, %._crit_edge
  %.01724 = phi i32 [ 0, %.lr.ph26 ], [ %i.ch, %._crit_edge ] ; 3 uses
  call void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !118
  %i.bj = load i16, ptr %i.bh, align 2, !tbaa !117 ; 2 uses
  %i.bk = zext i16 %i.bj to i32
  %i.bl = mul nuw i32 %.01724, %i.bk
  %i.bm = zext i32 %i.bl to i64
end_hunk_0
begin_hunk_1_@_ZN6LibRaw17samsung2_load_rawEv:.lr.ph.preheader

bb.j:                                             ; preds = %bb.i
  %i.ez = load ptr, ptr %i.bx, align 8, !tbaa !86 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !88
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 56
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = tail call noundef i32 %i.fc(ptr noundef nonnull align 8 dereferenceable(8) %i.ez), !call_target !94, !inline_history !119
  %i.fe = icmp ne i32 %i.fd, 0                    ; 2 uses
  %i.ff = zext i1 %i.fe to i32
  %i.fg = load ptr, ptr %i.bp, align 8, !tbaa !76 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store i32 %i.ff, ptr %i.fh, align 8, !tbaa !83
  br i1 %i.fe, label %.critedge.loopexit.i, label %bb.k

.critedge24.i:                                    ; preds = %bb.i
  %i.fi = load ptr, ptr %i.bp, align 8, !tbaa !76 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i32 0, ptr %i.fj, align 8, !tbaa !83
  br label %bb.k

bb.k:                                             ; preds = %.critedge24.i, %bb.j
  %i.fk = phi ptr [ %i.fi, %.critedge24.i ], [ %i.fg, %bb.j ] ; 4 uses
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !85
  %i.fm = shl i32 %i.fl, 8
  %i.fn = and i32 %i.ev, 255
  %i.fo = or disjoint i32 %i.fm, %i.fn
  store i32 %i.fo, ptr %i.fk, align 8, !tbaa !85
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 4 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !84
  %i.fr = add nsw i32 %i.fq, 8                    ; 2 uses
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !84
  %i.fs = icmp slt i32 %i.fr, %.016.i34475059
  br i1 %i.fs, label %.lr.ph69, label %.critedge.loopexit.i, !llvm.loop !1

.critedge.loopexit.i:                             ; preds = %bb.k, %bb.j, %.lr.ph.i, %..critedge.loopexit_crit_edge.i
  %.pre.i = phi ptr [ %.pre.pre.i, %..critedge.loopexit_crit_edge.i ], [ %i.ek, %.lr.ph.i ], [ %i.fk, %bb.k ], [ %i.fg, %bb.j ] ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 4
  %.pre29.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !84
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader.i
  %i.ft = phi i32 [ %.pre29.i, %.critedge.loopexit.i ], [ %i.em, %.preheader.i ] ; 3 uses
  %i.fu = phi ptr [ %.pre.i, %.critedge.loopexit.i ], [ %i.ek, %.preheader.i ] ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %i.fw = icmp eq i32 %i.ft, 0
  br i1 %i.fw, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.critedge.i
  %i.fx = load i32, ptr %i.fu, align 8, !tbaa !85
  %i.fy = sub nsw i32 32, %i.ft
  %i.fz = shl i32 %i.fx, %i.fy
  %i.ga = sub nuw nsw i32 32, %.016.i34475059
  %i.gb = lshr i32 %i.fz, %i.ga
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge.i
  %i.gc = phi i32 [ %i.gb, %bb.l ], [ 0, %.critedge.i ] ; 2 uses
  %.sink.i27 = sub nsw i32 %i.ft, %.016.i34475059 ; 2 uses
  store i32 %.sink.i27, ptr %i.fv, align 4, !tbaa !84
  %i.gd = icmp slt i32 %.sink.i27, 0
  br i1 %i.gd, label %bb.n, label %_ZN6LibRaw10getbithuffEiPt.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %_ZN6LibRaw10getbithuffEiPt.exit

_ZN6LibRaw10getbithuffEiPt.exit:                  ; preds = %bb.a, %.split.i, %.split.i.thread.thread55, %bb.m, %bb.n
  %.016.i344751 = phi i32 [ 0, %bb.a ], [ %.016.i34475059, %bb.m ], [ %i.ee, %.split.i ], [ %.016.i34475059, %.split.i.thread.thread55 ], [ %.016.i34475059, %bb.n ] ; 2 uses
  %.016.i = phi i32 [ 0, %bb.a ], [ %i.gc, %bb.m ], [ 0, %.split.i ], [ 0, %.split.i.thread.thread55 ], [ %i.gc, %bb.n ] ; 2 uses
  %i.ge = add nsw i32 %.016.i344751, -1
  %i.gf = shl nuw i32 1, %i.ge
  %i.gg = and i32 %i.gf, %.016.i
  %i.gh = icmp eq i32 %i.gg, 0
  %notmask.i = shl nsw i32 -1, %.016.i344751
  %.neg.i = add nsw i32 %notmask.i, 1
  %i.gi = select i1 %i.gh, i32 %.neg.i, i32 0
  %.0.i = add nsw i32 %i.gi, %.016.i
  %i.gj = trunc i32 %.0.i to i16
  br label %_ZN6LibRaw10ljpeg_diffEPt.exit

_ZN6LibRaw10ljpeg_diffEPt.exit:                   ; preds = %bb.h, %_ZN6LibRaw10getbithuffEiPt.exit
  %.011.i = phi i16 [ %i.gj, %_ZN6LibRaw10getbithuffEiPt.exit ], [ -32768, %bb.h ] ; 2 uses
  %i.gk = icmp samesign ult i64 %indvars.iv95, 2
  br i1 %i.gk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN6LibRaw10ljpeg_diffEPt.exit
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %indvars.iv95 ; 2 uses
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !97
  %i.gn = add i16 %i.gm, %.011.i                  ; 2 uses
  store i16 %i.gn, ptr %i.gl, align 2, !tbaa !97
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv95
  store i16 %i.gn, ptr %i.go, align 2, !tbaa !97
  br label %bb.q

bb.p:                                             ; preds = %_ZN6LibRaw10ljpeg_diffEPt.exit
  %i.gp = and i64 %indvars.iv95, 1                ; 2 uses
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.gp ; 2 uses
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !97
  %i.gs = add i16 %i.gr, %.011.i
  store i16 %i.gs, ptr %i.gq, align 2, !tbaa !97
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pre-phi105 = phi i64 [ %i.gp, %bb.p ], [ %indvars.iv95, %bb.o ]
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %.pre-phi105
  %i.gu = load i16, ptr %i.gt, align 2, !tbaa !97 ; 2 uses
  %i.gv = load ptr, ptr %i.ca, align 8, !tbaa !118
  %i.gw = load i16, ptr %i.bv, align 2, !tbaa !117
  %i.gx = zext i16 %i.gw to i32
  %i.gy = mul nuw nsw i32 %.02277, %i.gx
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %indvars.iv95
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %i.ha, i64 %i.gz
  store i16 %i.gu, ptr %i.hb, align 2, !tbaa !97
  %i.hc = zext i16 %i.gu to i32
  %i.hd = load i32, ptr %i.cb, align 4, !tbaa !145
  %i.he = lshr i32 %i.hc, %i.hd
  %.not = icmp eq i32 %i.he, 0
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.hf = load i16, ptr %i.bv, align 2, !tbaa !117
  %i.hg = zext i16 %i.hf to i64
  %i.hh = icmp samesign ult i64 %indvars.iv.next96, %i.hg
  br i1 %i.hh, label %bb.a, label %._crit_edge76.split, !llvm.loop !264

._crit_edge76.split:                              ; preds = %bb.s, %.lr.ph80.split
  %i.hi = add nuw nsw i32 %.02277, 1              ; 2 uses
  %i.hj = load i16, ptr %i.bt, align 8, !tbaa !116
  %i.hk = zext i16 %i.hj to i32
  %i.hl = icmp samesign ult i32 %i.hi, %i.hk
  br i1 %i.hl, label %.lr.ph80.split, label %._crit_edge81, !llvm.loop !265

._crit_edge81:                                    ; preds = %._crit_edge76.split, %.lr.ph.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.bswap.v16i16(<16 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.bswap.v2i16(<2 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.cos.v8f64(<8 x double>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <7 x i32> @llvm.masked.gather.v7i32.v7p0(<7 x ptr>, <7 x i1>, <7 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.umax.v16i16(<16 x i16>, <16 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.umin.v16i16(<16 x i16>, <16 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umax.v8i16(<8 x i16>, <8 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umin.v8i16(<8 x i16>, <8 x i16>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v15i8.p0(<15 x i8>, ptr captures(none), <15 x i1>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v31i8.p0(<31 x i8>, ptr captures(none), <31 x i1>) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { cold noreturn }
attributes #7 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { builtin nounwind }
attributes #20 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LibRaw_abstract_datastream", file: !89, line: 95, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS26LibRaw_abstract_datastream")
!1 = distinct !{!1, !96}
!2 = distinct !{!2, !96}
!3 = !{i32 7, !"Dwarf Version", i32 5}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 short", !14, i64 0}
!16 = !{!"short", !10, i64 0}
!17 = !{!"double", !10, i64 0}
!18 = !{!"_ZTS20libraw_image_sizes_t", !16, i64 0, !16, i64 2, !16, i64 4, !16, i64 6, !16, i64 8, !16, i64 10, !16, i64 12, !16, i64 14, !11, i64 16, !17, i64 24, !11, i64 32, !10, i64 36, !16, i64 164, !10, i64 166}
!19 = !{!"p1 omnipotent char", !14, i64 0}
!20 = !{!"_ZTS16libraw_iparams_t", !10, i64 0, !10, i64 4, !10, i64 68, !10, i64 132, !10, i64 196, !10, i64 260, !11, i64 324, !11, i64 328, !11, i64 332, !11, i64 336, !11, i64 340, !11, i64 344, !10, i64 348, !10, i64 384, !10, i64 420, !11, i64 428, !19, i64 432}
!21 = !{!"float", !10, i64 0}
!22 = !{!"_ZTS18libraw_nikonlens_t", !21, i64 0, !10, i64 4, !10, i64 5, !10, i64 6, !10, i64 7}
!23 = !{!"_ZTS16libraw_dnglens_t", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12}
!24 = !{!"long long", !10, i64 0}
!25 = !{!"_ZTS24libraw_makernotes_lens_t", !24, i64 0, !10, i64 8, !16, i64 136, !16, i64 138, !24, i64 144, !16, i64 152, !16, i64 154, !10, i64 156, !16, i64 220, !10, i64 222, !10, i64 238, !21, i64 256, !21, i64 260, !21, i64 264, !21, i64 268, !21, i64 272, !21, i64 276, !21, i64 280, !21, i64 284, !21, i64 288, !21, i64 292, !21, i64 296, !21, i64 300, !21, i64 304, !21, i64 308, !21, i64 312, !24, i64 320, !10, i64 328, !24, i64 456, !10, i64 464, !24, i64 592, !10, i64 600, !16, i64 728, !21, i64 732}
!26 = !{!"_ZTS17libraw_lensinfo_t", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !10, i64 20, !10, i64 148, !10, i64 276, !10, i64 404, !16, i64 532, !22, i64 536, !23, i64 544, !25, i64 560}
!27 = !{!"_ZTS13libraw_area_t", !16, i64 0, !16, i64 2, !16, i64 4, !16, i64 6}
!28 = !{!"_ZTS25libraw_canon_makernotes_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !10, i64 16, !11, i64 32, !10, i64 36, !16, i64 52, !16, i64 54, !10, i64 56, !16, i64 58, !16, i64 60, !16, i64 62, !16, i64 64, !16, i64 66, !16, i64 68, !16, i64 70, !16, i64 72, !16, i64 74, !16, i64 76, !16, i64 78, !16, i64 80, !16, i64 82, !11, i64 84, !21, i64 88, !16, i64 92, !16, i64 94, !16, i64 96, !16, i64 98, !11, i64 100, !16, i64 104, !11, i64 108, !11, i64 112, !16, i64 116, !11, i64 120, !27, i64 124, !27, i64 132, !27, i64 140, !27, i64 148, !27, i64 156, !10, i64 164}
!29 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !16, i64 0, !16, i64 2, !16, i64 4, !16, i64 6}
!30 = !{!"_ZTS25libraw_nikon_makernotes_t", !17, i64 0, !16, i64 8, !16, i64 10, !10, i64 12, !10, i64 19, !10, i64 20, !10, i64 21, !10, i64 34, !10, i64 54, !10, i64 58, !10, i64 62, !10, i64 66, !10, i64 67, !10, i64 68, !10, i64 69, !10, i64 70, !10, i64 71, !10, i64 73, !10, i64 74, !10, i64 75, !10, i64 76, !10, i64 77, !10, i64 78, !10, i64 82, !10, i64 86, !16, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !10, i64 112, !10, i64 144, !10, i64 145, !10, i64 146, !11, i64 148, !11, i64 152, !11, i64 156, !10, i64 160, !10, i64 162, !16, i64 170, !29, i64 172, !16, i64 180, !16, i64 182, !16, i64 184, !11, i64 188, !10, i64 192, !10, i64 212, !11, i64 232, !10, i64 236, !11, i64 248, !19, i64 256, !16, i64 264, !16, i64 266, !10, i64 268, !16, i64 270, !17, i64 272, !17, i64 280, !17, i64 288}
!31 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !11, i64 0, !17, i64 8, !10, i64 16, !10, i64 24, !10, i64 88, !11, i64 152, !11, i64 156, !11, i64 160, !11, i64 164, !10, i64 168, !10, i64 200, !11, i64 264, !10, i64 268, !10, i64 276, !10, i64 288}
!32 = !{!"_ZTS18libraw_fuji_info_t", !21, i64 0, !16, i64 4, !16, i64 6, !16, i64 8, !16, i64 10, !16, i64 12, !16, i64 14, !16, i64 16, !16, i64 18, !10, i64 20, !10, i64 53, !21, i64 88, !16, i64 92, !16, i64 94, !10, i64 96, !16, i64 100, !11, i64 104, !11, i64 108, !16, i64 112, !10, i64 114, !16, i64 120, !16, i64 122, !16, i64 124, !16, i64 126, !16, i64 128, !11, i64 132, !16, i64 136, !10, i64 138, !10, i64 151, !10, i64 156, !11, i64 164, !16, i64 168, !11, i64 172, !16, i64 176, !10, i64 178, !10, i64 196, !11, i64 324, !11, i64 328, !11, i64 332, !10, i64 336, !11, i64 344}
!33 = !{!"_ZTS27libraw_olympus_makernotes_t", !10, i64 0, !16, i64 6, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !10, i64 64, !10, i64 72, !16, i64 82, !10, i64 84, !16, i64 88, !16, i64 90, !10, i64 92, !10, i64 352, !16, i64 392, !10, i64 394, !10, i64 396, !10, i64 404, !16, i64 416, !16, i64 418, !16, i64 420, !16, i64 422, !17, i64 424, !10, i64 432, !10, i64 440, !10, i64 448, !11, i64 452, !16, i64 456, !16, i64 458}
!34 = !{!"_ZTS18libraw_sony_info_t", !16, i64 0, !10, i64 2, !10, i64 3, !11, i64 4, !10, i64 8, !11, i64 12, !10, i64 16, !10, i64 17, !16, i64 18, !10, i64 20, !10, i64 24, !10, i64 25, !16, i64 26, !10, i64 28, !10, i64 38, !10, i64 39, !10, i64 40, !16, i64 48, !10, i64 50, !10, i64 51, !10, i64 52, !16, i64 54, !11, i64 56, !16, i64 60, !10, i64 62, !16, i64 66, !16, i64 68, !16, i64 70, !16, i64 72, !16, i64 74, !16, i64 76, !16, i64 78, !11, i64 80, !21, i64 84, !16, i64 88, !11, i64 92, !11, i64 96, !16, i64 100, !10, i64 102, !11, i64 124, !16, i64 128, !11, i64 132, !10, i64 136, !10, i64 137, !16, i64 138, !16, i64 140, !16, i64 142, !16, i64 144, !16, i64 146, !16, i64 148, !16, i64 150, !16, i64 152, !16, i64 154, !11, i64 156, !16, i64 160, !10, i64 162, !21, i64 180}
!35 = !{!"_ZTS25libraw_kodak_makernotes_t", !16, i64 0, !16, i64 2, !16, i64 4, !16, i64 6, !16, i64 8, !16, i64 10, !10, i64 12, !10, i64 48, !10, i64 84, !10, i64 120, !10, i64 156, !10, i64 192, !16, i64 228, !16, i64 230, !16, i64 232, !16, i64 234, !21, i64 236, !21, i64 240}
!36 = !{!"_ZTS29libraw_panasonic_makernotes_t", !16, i64 0, !16, i64 2, !10, i64 4, !11, i64 36, !21, i64 40, !10, i64 44, !16, i64 56, !16, i64 58, !11, i64 60, !11, i64 64}
!37 = !{!"_ZTS26libraw_pentax_makernotes_t", !10, i64 0, !10, i64 4, !10, i64 8, !16, i64 12, !11, i64 16, !11, i64 20, !16, i64 24, !10, i64 26, !16, i64 30, !10, i64 32, !10, i64 33, !16, i64 34}
!38 = !{!"_ZTS22libraw_p1_makernotes_t", !10, i64 0, !10, i64 64, !10, i64 128, !10, i64 384}
!39 = !{!"_ZTS25libraw_ricoh_makernotes_t", !16, i64 0, !10, i64 4, !10, i64 12, !16, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !16, i64 40, !16, i64 42, !16, i64 44, !16, i64 46, !16, i64 48, !16, i64 50, !17, i64 56, !17, i64 64}
!40 = !{!"_ZTS27libraw_samsung_makernotes_t", !10, i64 0, !10, i64 16, !10, i64 32, !10, i64 40, !17, i64 88, !11, i64 96, !10, i64 100}
!41 = !{!"_ZTS24libraw_metadata_common_t", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !21, i64 24, !21, i64 28, !21, i64 32, !21, i64 36, !21, i64 40, !21, i64 44, !21, i64 48, !21, i64 52, !21, i64 56, !21, i64 60, !16, i64 64, !10, i64 66, !21, i64 196, !10, i64 200, !11, i64 296}
!42 = !{!"_ZTS19libraw_makernotes_t", !28, i64 0, !30, i64 168, !31, i64 464, !32, i64 848, !33, i64 1200, !34, i64 1664, !35, i64 1848, !36, i64 2092, !37, i64 2160, !38, i64 2196, !39, i64 2648, !40, i64 2720, !41, i64 2856}
!43 = !{!"_ZTS21libraw_shootinginfo_t", !16, i64 0, !16, i64 2, !16, i64 4, !16, i64 6, !16, i64 8, !16, i64 10, !16, i64 12, !10, i64 14, !10, i64 78}
!44 = !{!"_ZTS22libraw_output_params_t", !10, i64 0, !10, i64 16, !10, i64 32, !10, i64 64, !10, i64 112, !21, i64 128, !21, i64 132, !11, i64 136, !11, i64 140, !11, i64 144, !11, i64 148, !11, i64 152, !11, i64 156, !11, i64 160, !19, i64 168, !19, i64 176, !19, i64 184, !19, i64 192, !11, i64 200, !11, i64 204, !11, i64 208, !11, i64 212, !11, i64 216, !11, i64 220, !10, i64 224, !11, i64 240, !11, i64 244, !21, i64 248, !21, i64 252, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !21, i64 288, !21, i64 292, !11, i64 296, !11, i64 300}
!45 = !{!"any p2 pointer", !14, i64 0}
!46 = !{!"p2 omnipotent char", !45, i64 0}
!47 = !{!"_ZTS26libraw_raw_unpack_params_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !21, i64 28, !10, i64 32, !46, i64 40}
!48 = !{!"_ZTS5ph1_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !21, i64 32}
!49 = !{!"_ZTS19libraw_dng_levels_t", !11, i64 0, !10, i64 4, !11, i64 16420, !10, i64 16424, !21, i64 32840, !10, i64 32844, !10, i64 32860, !10, i64 32868, !11, i64 32884, !10, i64 32888, !10, i64 32904, !21, i64 32920, !21, i64 32924, !10, i64 32928}
!50 = !{!"_ZTS18libraw_colordata_t", !10, i64 0, !10, i64 131072, !11, i64 147488, !11, i64 147492, !11, i64 147496, !10, i64 147500, !21, i64 147516, !21, i64 147520, !10, i64 147524, !10, i64 147652, !10, i64 147668, !10, i64 147684, !10, i64 147732, !10, i64 147780, !10, i64 147828, !48, i64 147876, !21, i64 147912, !21, i64 147916, !10, i64 147920, !10, i64 147984, !10, i64 148048, !10, i64 148112, !10, i64 148176, !10, i64 148193, !14, i64 148264, !11, i64 148272, !10, i64 148276, !10, i64 148308, !49, i64 148648, !10, i64 181624, !10, i64 185720, !11, i64 187000, !10, i64 187004, !11, i64 187076, !11, i64 187080}
!51 = !{!"long", !10, i64 0}
!52 = !{!"_ZTS17libraw_gps_info_t", !10, i64 0, !10, i64 12, !10, i64 24, !21, i64 36, !10, i64 40, !10, i64 41, !10, i64 42, !10, i64 43, !10, i64 44}
!53 = !{!"_ZTS17libraw_imgother_t", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !51, i64 16, !11, i64 24, !10, i64 28, !52, i64 156, !10, i64 204, !10, i64 716, !10, i64 780}
!54 = !{!"_ZTS24LibRaw_thumbnail_formats", !10, i64 0}
!55 = !{!"_ZTS18libraw_thumbnail_t", !54, i64 0, !16, i64 4, !16, i64 6, !11, i64 8, !11, i64 12, !19, i64 16}
!56 = !{!"_ZTS23libraw_thumbnail_list_t", !11, i64 0, !10, i64 8}
!57 = !{!"p1 float", !14, i64 0}
!58 = !{!"_ZTS31libraw_internal_output_params_t", !11, i64 0, !11, i64 4, !11, i64 8, !16, i64 12, !16, i64 14}
!59 = !{!"_ZTS16libraw_rawdata_t", !14, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !57, i64 32, !57, i64 40, !57, i64 48, !15, i64 56, !15, i64 64, !20, i64 72, !18, i64 512, !58, i64 696, !50, i64 712}
!60 = !{!"_ZTS13libraw_data_t", !15, i64 0, !18, i64 8, !20, i64 192, !26, i64 632, !42, i64 1928, !43, i64 5088, !44, i64 5232, !47, i64 5536, !11, i64 5584, !11, i64 5588, !50, i64 5592, !53, i64 192680, !55, i64 193480, !56, i64 193504, !59, i64 193768, !14, i64 381568}
!61 = !{!"p1 _ZTS10LibRaw_TLS", !14, i64 0}
!62 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !14, i64 0}
!63 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!64 = !{!"_ZTS15internal_data_t", !62, i64 0, !63, i64 8, !11, i64 16, !19, i64 24, !24, i64 32, !24, i64 40, !10, i64 48}
!65 = !{!"p1 int", !14, i64 0}
!66 = !{!"_ZTS13output_data_t", !65, i64 0, !65, i64 8}
!67 = !{!"_ZTS15identify_data_t", !11, i64 0, !24, i64 8, !24, i64 16, !11, i64 24, !11, i64 28, !11, i64 32}
!68 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !10, i64 0}
!69 = !{!"_ZTS12pana8_tags_t", !10, i64 0, !10, i64 24, !16, i64 36, !10, i64 38, !10, i64 46, !10, i64 80, !10, i64 114, !16, i64 148, !16, i64 150, !10, i64 152, !10, i64 192, !10, i64 204, !10, i64 224, !10, i64 234}
!70 = !{!"_ZTS15unpacker_data_t", !16, i64 0, !10, i64 2, !10, i64 10, !11, i64 16, !24, i64 24, !24, i64 32, !24, i64 40, !24, i64 48, !24, i64 56, !24, i64 64, !24, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !68, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !24, i64 144, !11, i64 152, !11, i64 156, !11, i64 160, !11, i64 164, !11, i64 168, !11, i64 172, !11, i64 176, !11, i64 180, !11, i64 184, !69, i64 192, !10, i64 440, !11, i64 2488, !11, i64 2492, !16, i64 2496, !16, i64 2498, !11, i64 2500, !11, i64 2504, !11, i64 2508, !11, i64 2512, !11, i64 2516, !11, i64 2520, !11, i64 2524, !10, i64 2528, !16, i64 2608}
!71 = !{!"_ZTS22libraw_internal_data_t", !64, i64 0, !58, i64 64, !66, i64 80, !67, i64 96, !70, i64 136}
!72 = !{!"p1 _ZTS6decode", !14, i64 0}
!73 = !{!"_ZTS13libraw_memmgr", !45, i64 0, !11, i64 8}
!74 = !{!"_ZTS18libraw_callbacks_t", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144}
!75 = !{!"_ZTS6LibRaw", !60, i64 8, !61, i64 381584, !71, i64 381592, !10, i64 384344, !72, i64 433496, !72, i64 433504, !10, i64 433512, !73, i64 768232, !74, i64 768248, !10, i64 768400, !10, i64 768416, !10, i64 768432, !14, i64 768448, !14, i64 768456, !14, i64 768464, !51, i64 768472, !14, i64 768480, !14, i64 768488, !14, i64 768496, !14, i64 768504}
!76 = !{!75, !61, i64 381584}
!77 = !{!"_ZTSN10LibRaw_TLSUt_E", !11, i64 0, !11, i64 4, !11, i64 8}
!78 = !{!"_ZTSN10LibRaw_TLSUt0_E", !24, i64 0, !11, i64 8}
!79 = !{!"_ZTSN10LibRaw_TLSUt1_E", !10, i64 0, !11, i64 512}
!80 = !{!"_ZTSN10LibRaw_TLSUt2_E", !10, i64 0, !11, i64 16388, !11, i64 16392}
!81 = !{!"_ZTSN10LibRaw_TLSUt3_E", !10, i64 0, !10, i64 262144}
!82 = !{!"_ZTS10LibRaw_TLS", !77, i64 0, !78, i64 16, !79, i64 32, !80, i64 548, !10, i64 16944, !81, i64 21040}
!83 = !{!82, !11, i64 8}
!84 = !{!82, !11, i64 4}
!85 = !{!82, !11, i64 0}
!86 = !{!75, !62, i64 381592}
!87 = !{!"vtable pointer", !9, i64 0}
!88 = !{!87, !87, i64 0}
!89 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_datastream.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "505b914805f57d87ebbd6647c463dab8")
!90 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !0, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!92 = !{!90, !91}
!93 = !DISubroutineType(types: !92)
!94 = !DISubprogram(name: "get_char", linkageName: "_ZN26LibRaw_abstract_datastream8get_charEv", scope: !0, file: !89, line: 105, type: !93, scopeLine: 105, containingType: !0, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!95 = !{!75, !11, i64 381848}
!96 = !{!"llvm.loop.mustprogress"}
!97 = !{!16, !16, i64 0}
!98 = !{!19, !19, i64 0}
!99 = !{!10, !10, i64 0}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = !{!15, !15, i64 0}
!102 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_types.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "b83e9769365a38f23d349f0ab8a63a99")
!103 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT64", file: !102, line: 109, baseType: !103)
!105 = !{!90, !91, !104, !90}
!106 = !DISubroutineType(types: !105)
!107 = !DISubprogram(name: "seek", linkageName: "_ZN26LibRaw_abstract_datastream4seekExi", scope: !0, file: !89, line: 102, type: !106, scopeLine: 102, containingType: !0, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!109 = !DIFile(filename: "/usr/lib/llvm-24/lib/clang/24/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!110 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !109, line: 18, baseType: !110)
!112 = !{!90, !91, !108, !111, !111}
!113 = !DISubroutineType(types: !112)
!114 = !DISubprogram(name: "read", linkageName: "_ZN26LibRaw_abstract_datastream4readEPvmm", scope: !0, file: !89, line: 101, type: !113, scopeLine: 101, containingType: !0, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!115 = !{!75, !11, i64 153096}
!116 = !{!75, !16, i64 16}
!117 = !{!75, !16, i64 18}
!118 = !{!75, !15, i64 193784}
!119 = !{ptr @_ZN6LibRaw10getbithuffEiPt}
!120 = !{!11, !11, i64 0}
!121 = !{!"_ZTS5jhead", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !10, i64 32, !10, i64 56, !10, i64 184, !10, i64 312, !10, i64 472, !15, i64 632}
!122 = !{!121, !11, i64 28}
!123 = !{!121, !11, i64 20}
!124 = !{!121, !11, i64 4}
!125 = !{!121, !11, i64 16}
!126 = !{!75, !11, i64 532}
!127 = !{!121, !11, i64 24}
!128 = !{!121, !11, i64 8}
!129 = !{!121, !11, i64 12}
!130 = !{!"llvm.loop.isvectorized", i32 1}
!131 = !{!"llvm.loop.unroll.runtime.disable"}
!132 = !{!121, !15, i64 632}
!133 = !{!"_ZTS17LibRaw_exceptions", !10, i64 0}
!134 = !{!133, !133, i64 0}
!135 = !{!75, !11, i64 381860}
!136 = !{!"llvm.loop.unswitch.partial.disable"}
!137 = !{!75, !16, i64 20}
!138 = !{!75, !16, i64 22}
!139 = !{!75, !15, i64 8}
!140 = !{!75, !11, i64 5560}
!141 = !{!21, !21, i64 0}
!142 = !{!75, !24, i64 381768}
!143 = !{!"branch_weights", i32 8, i32 56}
!144 = !{!75, !24, i64 381760}
!145 = !{!75, !11, i64 381836}
!146 = !{!75, !16, i64 381728}
!147 = !{!82, !11, i64 16936}
!148 = !{!75, !11, i64 381908}
!149 = distinct !{!149, !96}
!150 = distinct !{!150, !100}
!151 = distinct !{!151, !96}
!152 = distinct !{!152, !96}
!153 = distinct !{!153, !96}
!154 = distinct !{!154, !96}
!155 = distinct !{!155, !96}
!156 = distinct !{!156, !96}
end_hunk_1
