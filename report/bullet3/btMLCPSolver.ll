Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMLCPSolver?download=true
inline.NumInlined: 547
inline.NumDeleted: 131
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZN12btMLCPSolver10createMLCPERK19btContactSolverInfo:bb.a

bb.t:                                             ; preds = %_ZN9btVectorXIfE6resizeEi.exit213
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !21
  %i.gx = icmp slt i32 %i.gw, %i.d
  br i1 %i.gx, label %bb.u, label %..lr.ph.i_crit_edge.i214

..lr.ph.i_crit_edge.i214:                         ; preds = %bb.t
  %.phi.trans.insert.i215 = getelementptr inbounds nuw i8, ptr %0, i64 608
  %.pre.i216 = load ptr, ptr %.phi.trans.insert.i215, align 8, !tbaa !19
  br label %.lr.ph.i.i217

bb.u:                                             ; preds = %bb.t
  %.not.i.i.i.i220 = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i220, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i222, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gy = sext i32 %i.d to i64
  %i.gz = shl nsw i64 %i.gy, 2
  %i.ha = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.gz, i32 noundef 16)
  %.pre.i.i221 = load i32, ptr %i.gs, align 4, !tbaa !20
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i222

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i222: ; preds = %bb.v, %bb.u
  %i.hb = phi i32 [ %.pre.i.i221, %bb.v ], [ %i.gt, %bb.u ] ; 3 uses
  %.0.i.i.i.i223 = phi ptr [ %i.ha, %bb.v ], [ null, %bb.u ] ; 9 uses
  %i.hc = icmp sgt i32 %i.hb, 0
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !19 ; 9 uses
  br i1 %i.hc, label %.lr.ph.i.i.i.i228, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i224

.lr.ph.i.i.i.i228:                                ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i222
  %i.hf = ptrtoaddr ptr %i.he to i64
  %.0.i.i.i.i223538 = ptrtoaddr ptr %.0.i.i.i.i223 to i64
  %wide.trip.count.i.i.i.i229 = zext nneg i32 %i.hb to i64 ; 5 uses
  %min.iters.check540 = icmp ult i32 %i.hb, 8
  %i.hg = sub i64 %i.hf, %.0.i.i.i.i223538
  %diff.check542 = icmp ugt i64 %i.hg, -32
  %or.cond694 = select i1 %min.iters.check540, i1 true, i1 %diff.check542
  br i1 %or.cond694, label %scalar.ph539.preheader, label %vector.ph543

vector.ph543:                                     ; preds = %.lr.ph.i.i.i.i228
  %n.vec544 = and i64 %wide.trip.count.i.i.i.i229, 2147483640 ; 3 uses
  br label %vector.body545

vector.body545:                                   ; preds = %vector.body545, %vector.ph543
  %index546 = phi i64 [ 0, %vector.ph543 ], [ %index.next549, %vector.body545 ] ; 3 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i223, i64 %index546 ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %index546 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %wide.load547 = load <4 x float>, ptr %i.hi, align 4, !tbaa !77
  %wide.load548 = load <4 x float>, ptr %i.hj, align 4, !tbaa !77
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store <4 x float> %wide.load547, ptr %i.hh, align 4, !tbaa !77
  store <4 x float> %wide.load548, ptr %i.hk, align 4, !tbaa !77
  %index.next549 = add nuw i64 %index546, 8       ; 2 uses
  %i.hl = icmp eq i64 %index.next549, %n.vec544
  br i1 %i.hl, label %middle.block550, label %vector.body545, !llvm.loop !221

middle.block550:                                  ; preds = %vector.body545
  %cmp.n551 = icmp eq i64 %n.vec544, %wide.trip.count.i.i.i.i229
  br i1 %cmp.n551, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i226, label %scalar.ph539.preheader

scalar.ph539.preheader:                           ; preds = %.lr.ph.i.i.i.i228, %middle.block550
  %indvars.iv.i.i.i.i230.ph = phi i64 [ 0, %.lr.ph.i.i.i.i228 ], [ %n.vec544, %middle.block550 ] ; 3 uses
  %xtraiter712 = and i64 %wide.trip.count.i.i.i.i229, 3 ; 2 uses
  %lcmp.mod713.not = icmp eq i64 %xtraiter712, 0
  br i1 %lcmp.mod713.not, label %scalar.ph539.prol.loopexit, label %scalar.ph539.prol

scalar.ph539.prol:                                ; preds = %scalar.ph539.preheader, %scalar.ph539.prol
  %indvars.iv.i.i.i.i230.prol = phi i64 [ %indvars.iv.next.i.i.i.i231.prol, %scalar.ph539.prol ], [ %indvars.iv.i.i.i.i230.ph, %scalar.ph539.preheader ] ; 3 uses
  %prol.iter714 = phi i64 [ %prol.iter714.next, %scalar.ph539.prol ], [ 0, %scalar.ph539.preheader ]
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i223, i64 %indvars.iv.i.i.i.i230.prol
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv.i.i.i.i230.prol
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !77
  store float %i.ho, ptr %i.hm, align 4, !tbaa !77
  %indvars.iv.next.i.i.i.i231.prol = add nuw nsw i64 %indvars.iv.i.i.i.i230.prol, 1 ; 2 uses
  %prol.iter714.next = add i64 %prol.iter714, 1   ; 2 uses
  %prol.iter714.cmp.not = icmp eq i64 %prol.iter714.next, %xtraiter712
  br i1 %prol.iter714.cmp.not, label %scalar.ph539.prol.loopexit, label %scalar.ph539.prol, !llvm.loop !222

scalar.ph539.prol.loopexit:                       ; preds = %scalar.ph539.prol, %scalar.ph539.preheader
  %indvars.iv.i.i.i.i230.unr = phi i64 [ %indvars.iv.i.i.i.i230.ph, %scalar.ph539.preheader ], [ %indvars.iv.next.i.i.i.i231.prol, %scalar.ph539.prol ]
  %i.hp = sub nsw i64 %indvars.iv.i.i.i.i230.ph, %wide.trip.count.i.i.i.i229
  %i.hq = icmp ugt i64 %i.hp, -4
  br i1 %i.hq, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i226, label %scalar.ph539

scalar.ph539:                                     ; preds = %scalar.ph539.prol.loopexit, %scalar.ph539
  %indvars.iv.i.i.i.i230 = phi i64 [ %indvars.iv.next.i.i.i.i231.3, %scalar.ph539 ], [ %indvars.iv.i.i.i.i230.unr, %scalar.ph539.prol.loopexit ] ; 6 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i223, i64 %indvars.iv.i.i.i.i230
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv.i.i.i.i230
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !77
  store float %i.ht, ptr %i.hr, align 4, !tbaa !77
  %indvars.iv.next.i.i.i.i231 = add nuw nsw i64 %indvars.iv.i.i.i.i230, 1 ; 2 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i223, i64 %indvars.iv.next.i.i.i.i231
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv.next.i.i.i.i231
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !77
  store float %i.hw, ptr %i.hu, align 4, !tbaa !77
  %indvars.iv.next.i.i.i.i231.1 = add nuw nsw i64 %indvars.iv.i.i.i.i230, 2 ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i223, i64 %indvars.iv.next.i.i.i.i231.1
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv.next.i.i.i.i231.1
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !77
  store float %i.hz, ptr %i.hx, align 4, !tbaa !77
  %indvars.iv.next.i.i.i.i231.2 = add nuw nsw i64 %indvars.iv.i.i.i.i230, 3 ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i223, i64 %indvars.iv.next.i.i.i.i231.2
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv.next.i.i.i.i231.2
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !77
  store float %i.ic, ptr %i.ia, align 4, !tbaa !77
  %indvars.iv.next.i.i.i.i231.3 = add nuw nsw i64 %indvars.iv.i.i.i.i230, 4 ; 2 uses
  %exitcond.not.i.i.i.i232.3 = icmp eq i64 %indvars.iv.next.i.i.i.i231.3, %wide.trip.count.i.i.i.i229
  br i1 %exitcond.not.i.i.i.i232.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i226, label %scalar.ph539, !llvm.loop !223

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i224: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i222
  %.not.i5.i.i.i225 = icmp eq ptr %i.he, null
  br i1 %.not.i5.i.i.i225, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i227, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i226

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i226: ; preds = %scalar.ph539.prol.loopexit, %scalar.ph539, %middle.block550, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i224
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ie = load i8, ptr %i.id, align 8, !tbaa !18, !range !65, !noundef !67
  %i.if = trunc nuw i8 %i.ie to i1
  br i1 %i.if, label %bb.w, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i227

bb.w:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i226
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.he)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i227

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i227: ; preds = %bb.w, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i226, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i224
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i8 1, ptr %i.ig, align 8, !tbaa !18
  store ptr %.0.i.i.i.i223, ptr %i.hd, align 8, !tbaa !19
  store i32 %i.d, ptr %i.gv, align 8, !tbaa !21
  br label %.lr.ph.i.i217

.lr.ph.i.i217:                                    ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i227, %..lr.ph.i_crit_edge.i214
  %i.ih = phi ptr [ %.pre.i216, %..lr.ph.i_crit_edge.i214 ], [ %.0.i.i.i.i223, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i227 ]
  %i.ii = sext i32 %i.gt to i64                   ; 2 uses
  %wide.trip.count.i.i218 = sext i32 %i.d to i64
  %i.ij = shl nsw i64 %i.ii, 2
  %scevgep.i219 = getelementptr i8, ptr %i.ih, i64 %i.ij
  %i.ik = sub nsw i64 %wide.trip.count.i.i218, %i.ii
  %i.il = shl nuw nsw i64 %i.ik, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i219, i8 0, i64 %i.il, i1 false), !tbaa !77
  br label %_ZN9btVectorXIfE6resizeEi.exit233

_ZN9btVectorXIfE6resizeEi.exit233:                ; preds = %_ZN9btVectorXIfE6resizeEi.exit213, %.lr.ph.i.i217
  store i32 %i.d, ptr %i.gs, align 4, !tbaa !20
  br i1 %i.dc, label %.lr.ph397, label %._crit_edge398

.lr.ph397:                                        ; preds = %_ZN9btVectorXIfE6resizeEi.exit233
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !41
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !19
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !19
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !91 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 1132 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 2 uses
  %wide.trip.count436 = zext nneg i32 %i.d to i64
  br label %bb.ac

bb.x:                                             ; preds = %.lr.ph393, %.split390.us
  %indvars.iv428 = phi i64 [ 0, %.lr.ph393 ], [ %indvars.iv.next429, %.split390.us ] ; 3 uses
  %i.ix = getelementptr inbounds nuw [248 x i8], ptr %i.dr, i64 %indvars.iv428 ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 128
  %i.iz = mul nuw nsw i64 %indvars.iv428, 6       ; 8 uses
  %i.ja = load float, ptr %i.iy, align 4, !tbaa !77
  %i.jb = trunc nuw nsw i64 %i.iz to i32
  %i.jc = mul i32 %i.dv, %i.jb
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.jd
  store float %i.ja, ptr %i.je, align 4, !tbaa !77
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ix, i64 132
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !77
  %i.jh = trunc i64 %i.iz to i32
  %i.ji = or disjoint i32 %i.jh, 1
  %i.jj = mul i32 %i.dv, %i.ji
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.jk
  store float %i.jg, ptr %i.jl, align 4, !tbaa !77
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ix, i64 136
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !77
  %i.jo = trunc i64 %i.iz to i32
  %i.jp = add i32 %i.jo, 2
  %i.jq = mul i32 %i.dv, %i.jp
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.jr
  store float %i.jn, ptr %i.js, align 4, !tbaa !77
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ix, i64 240
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !96 ; 10 uses
  %i.jv = add nuw nsw i64 %i.iz, 3                ; 4 uses
  %.not164 = icmp eq ptr %i.ju, null
  br i1 %.not164, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.x
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 372
  %i.jx = trunc i64 %i.jv to i32
  %i.jy = mul i32 %i.du, %i.jx
  %i.jz = trunc nuw nsw i64 %i.jv to i32          ; 3 uses
  %i.ka = add i32 %i.jy, %i.jz                    ; 3 uses
  %i.kb = load float, ptr %i.jw, align 4, !tbaa !77
  %i.kc = sext i32 %i.ka to i64
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.kc
  store float %i.kb, ptr %i.kd, align 4, !tbaa !77
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ju, i64 376
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !77
  %i.kg = add i32 %i.ka, 1
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.kh
  store float %i.kf, ptr %i.ki, align 4, !tbaa !77
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ju, i64 380
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !77
  %i.kl = add i32 %i.ka, 2
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.km
  store float %i.kk, ptr %i.kn, align 4, !tbaa !77
  %i.ko = trunc i64 %i.iz to i32
  %i.kp = add i32 %i.ko, 4
  %i.kq = mul i32 %i.kp, %i.du
  %i.kr = add i32 %i.kq, %i.jz                    ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ju, i64 388
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !77
  %i.ku = sext i32 %i.kr to i64
  %i.kv = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.ku
  store float %i.kt, ptr %i.kv, align 4, !tbaa !77
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ju, i64 392
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !77
  %i.ky = add i32 %i.kr, 1
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.kz
  store float %i.kx, ptr %i.la, align 4, !tbaa !77
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ju, i64 396
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !77
  %i.ld = add i32 %i.kr, 2
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.le
  store float %i.lc, ptr %i.lf, align 4, !tbaa !77
  %i.lg = trunc i64 %i.iz to i32
  %i.lh = add i32 %i.lg, 5
  %i.li = mul i32 %i.lh, %i.du
  %i.lj = add i32 %i.li, %i.jz                    ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ju, i64 404
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !77
  %i.lm = sext i32 %i.lj to i64
  %i.ln = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.lm
  store float %i.ll, ptr %i.ln, align 4, !tbaa !77
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ju, i64 408
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !77
  %i.lq = add i32 %i.lj, 1
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.lr
  store float %i.lp, ptr %i.ls, align 4, !tbaa !77
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ju, i64 412
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !77
  br label %.split390.us

.preheader.us.preheader:                          ; preds = %bb.x
  %i.lv = trunc i64 %i.jv to i32
  %i.lw = mul i32 %i.du, %i.lv
  %i.lx = trunc nuw nsw i64 %i.jv to i32          ; 3 uses
  %i.ly = add i32 %i.lw, %i.lx                    ; 3 uses
  %i.lz = sext i32 %i.ly to i64
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.lz
  store float 0.000000e+00, ptr %i.ma, align 4, !tbaa !77
  %i.mb = add i32 %i.ly, 1
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.mc
  store float 0.000000e+00, ptr %i.md, align 4, !tbaa !77
  %i.me = add i32 %i.ly, 2
  %i.mf = sext i32 %i.me to i64
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.mf
  store float 0.000000e+00, ptr %i.mg, align 4, !tbaa !77
  %i.mh = trunc i64 %i.iz to i32
  %i.mi = add i32 %i.mh, 4
  %i.mj = mul i32 %i.mi, %i.du
  %i.mk = add i32 %i.mj, %i.lx                    ; 3 uses
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.ml
  store float 0.000000e+00, ptr %i.mm, align 4, !tbaa !77
  %i.mn = add i32 %i.mk, 1
  %i.mo = sext i32 %i.mn to i64
  %i.mp = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.mo
  store float 0.000000e+00, ptr %i.mp, align 4, !tbaa !77
  %i.mq = add i32 %i.mk, 2
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.mr
  store float 0.000000e+00, ptr %i.ms, align 4, !tbaa !77
  %i.mt = trunc i64 %i.iz to i32
  %i.mu = add i32 %i.mt, 5
  %i.mv = mul i32 %i.mu, %i.du
  %i.mw = add i32 %i.mv, %i.lx                    ; 3 uses
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.mx
  store float 0.000000e+00, ptr %i.my, align 4, !tbaa !77
  %i.mz = add i32 %i.mw, 1
  %i.na = sext i32 %i.mz to i64
  %i.nb = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.na
  store float 0.000000e+00, ptr %i.nb, align 4, !tbaa !77
  br label %.split390.us

.split390.us:                                     ; preds = %.preheader.preheader, %.preheader.us.preheader
  %.sink495 = phi i32 [ %i.lj, %.preheader.preheader ], [ %i.mw, %.preheader.us.preheader ]
  %.sink = phi float [ %i.lu, %.preheader.preheader ], [ 0.000000e+00, %.preheader.us.preheader ]
  %i.nc = add i32 %.sink495, 2
  %i.nd = sext i32 %i.nc to i64
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.nd
  store float %.sink, ptr %i.ne, align 4, !tbaa !77
  %indvars.iv.next429 = add nuw nsw i64 %indvars.iv428, 1 ; 2 uses
  %exitcond432.not = icmp eq i64 %indvars.iv.next429, %wide.trip.count431
  br i1 %exitcond432.not, label %._crit_edge394, label %bb.x, !llvm.loop !224

._crit_edge398:                                   ; preds = %bb.ag, %_ZN9btVectorXIfE6resizeEi.exit233
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @_ZNK9btMatrixXIfE9transposeEv(ptr dead_on_unwind nonnull writable sret(%struct.btMatrixX) align 8 %4, ptr noundef nonnull align 8 dereferenceable(88) %i.er)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.nf, ptr noundef nonnull align 8 dereferenceable(88) %4, i64 20, i1 false)
  %i.ng = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !20 ; 10 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 1244 ; 3 uses
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !20 ; 3 uses
  %i.nk = icmp sgt i32 %i.nh, %i.nj
  br i1 %i.nk, label %bb.y, label %._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i.i

._ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit_crit_edge.i.i.i: ; preds = %._crit_edge398
  %.phi.trans.insert9.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %.pre10.i.i.i = load ptr, ptr %.phi.trans.insert9.i.i.i, align 8, !tbaa !19
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit.i.i.i

bb.y:                                             ; preds = %._crit_edge398
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 2 uses
  %i.nm = load i32, ptr %i.nl, align 8, !tbaa !21
  %i.nn = icmp slt i32 %i.nm, %i.nh
  br i1 %i.nn, label %bb.z, label %..lr.ph.i_crit_edge.i.i.i

..lr.ph.i_crit_edge.i.i.i:                        ; preds = %bb.y
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !19
  br label %.lr.ph.i.i.i.i234

bb.z:                                             ; preds = %bb.y
  %.not.i.i.i.i.i.i = icmp eq i32 %i.nh, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.no = sext i32 %i.nh to i64
  %i.np = shl nsw i64 %i.no, 2
  %i.nq = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.np, i32 noundef 16)
          to label %.noexc unwind label %bb.br

.noexc:                                           ; preds = %bb.aa
  %.pre.i.i.i.i = load i32, ptr %i.ni, align 4, !tbaa !20
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i.i

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i.i: ; preds = %.noexc, %bb.z
  %i.nr = phi i32 [ %.pre.i.i.i.i, %.noexc ], [ %i.nj, %bb.z ] ; 3 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.nq, %.noexc ], [ null, %bb.z ] ; 9 uses
  %i.ns = icmp sgt i32 %i.nr, 0
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !19 ; 9 uses
  br i1 %i.ns, label %.lr.ph.i.i.i.i.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i.i
  %i.nv = ptrtoaddr ptr %i.nu to i64
  %.0.i.i.i.i.i.i556 = ptrtoaddr ptr %.0.i.i.i.i.i.i to i64
  %wide.trip.count.i.i.i.i.i.i = zext nneg i32 %i.nr to i64 ; 5 uses
  %min.iters.check558 = icmp ult i32 %i.nr, 8
  %i.nw = sub i64 %i.nv, %.0.i.i.i.i.i.i556
  %diff.check560 = icmp ugt i64 %i.nw, -32
  %or.cond695 = select i1 %min.iters.check558, i1 true, i1 %diff.check560
  br i1 %or.cond695, label %scalar.ph557.preheader, label %vector.ph561

vector.ph561:                                     ; preds = %.lr.ph.i.i.i.i.i.i
  %n.vec562 = and i64 %wide.trip.count.i.i.i.i.i.i, 2147483640 ; 3 uses
  br label %vector.body563

vector.body563:                                   ; preds = %vector.body563, %vector.ph561
  %index564 = phi i64 [ 0, %vector.ph561 ], [ %index.next567, %vector.body563 ] ; 3 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i.i, i64 %index564 ; 2 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %index564 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %wide.load565 = load <4 x float>, ptr %i.ny, align 4, !tbaa !77
  %wide.load566 = load <4 x float>, ptr %i.nz, align 4, !tbaa !77
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  store <4 x float> %wide.load565, ptr %i.nx, align 4, !tbaa !77
  store <4 x float> %wide.load566, ptr %i.oa, align 4, !tbaa !77
  %index.next567 = add nuw i64 %index564, 8       ; 2 uses
  %i.ob = icmp eq i64 %index.next567, %n.vec562
  br i1 %i.ob, label %middle.block568, label %vector.body563, !llvm.loop !225

middle.block568:                                  ; preds = %vector.body563
  %cmp.n569 = icmp eq i64 %n.vec562, %wide.trip.count.i.i.i.i.i.i
  br i1 %cmp.n569, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i.i, label %scalar.ph557.preheader

scalar.ph557.preheader:                           ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block568
  %indvars.iv.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %n.vec562, %middle.block568 ] ; 3 uses
  %xtraiter715 = and i64 %wide.trip.count.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod716.not = icmp eq i64 %xtraiter715, 0
  br i1 %lcmp.mod716.not, label %scalar.ph557.prol.loopexit, label %scalar.ph557.prol

scalar.ph557.prol:                                ; preds = %scalar.ph557.preheader, %scalar.ph557.prol
  %indvars.iv.i.i.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.prol, %scalar.ph557.prol ], [ %indvars.iv.i.i.i.i.i.i.ph, %scalar.ph557.preheader ] ; 3 uses
  %prol.iter717 = phi i64 [ %prol.iter717.next, %scalar.ph557.prol ], [ 0, %scalar.ph557.preheader ]
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.i.prol
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv.i.i.i.i.i.i.prol
  %i.oe = load float, ptr %i.od, align 4, !tbaa !77
  store float %i.oe, ptr %i.oc, align 4, !tbaa !77
  %indvars.iv.next.i.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter717.next = add i64 %prol.iter717, 1   ; 2 uses
  %prol.iter717.cmp.not = icmp eq i64 %prol.iter717.next, %xtraiter715
  br i1 %prol.iter717.cmp.not, label %scalar.ph557.prol.loopexit, label %scalar.ph557.prol, !llvm.loop !226

scalar.ph557.prol.loopexit:                       ; preds = %scalar.ph557.prol, %scalar.ph557.preheader
  %indvars.iv.i.i.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.i.i.ph, %scalar.ph557.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.prol, %scalar.ph557.prol ]
  %i.of = sub nsw i64 %indvars.iv.i.i.i.i.i.i.ph, %wide.trip.count.i.i.i.i.i.i
  %i.og = icmp ugt i64 %i.of, -4
  br i1 %i.og, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i.i, label %scalar.ph557

scalar.ph557:                                     ; preds = %scalar.ph557.prol.loopexit, %scalar.ph557
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.3, %scalar.ph557 ], [ %indvars.iv.i.i.i.i.i.i.unr, %scalar.ph557.prol.loopexit ] ; 6 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.i
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv.i.i.i.i.i.i
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !77
  store float %i.oj, ptr %i.oh, align 4, !tbaa !77
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.om = load float, ptr %i.ol, align 4, !tbaa !77
  store float %i.om, ptr %i.ok, align 4, !tbaa !77
  %indvars.iv.next.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 2 ; 2 uses
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i.i.1
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv.next.i.i.i.i.i.i.1
  %i.op = load float, ptr %i.oo, align 4, !tbaa !77
  store float %i.op, ptr %i.on, align 4, !tbaa !77
  %indvars.iv.next.i.i.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 3 ; 2 uses
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i.i.2
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv.next.i.i.i.i.i.i.2
  %i.os = load float, ptr %i.or, align 4, !tbaa !77
  store float %i.os, ptr %i.oq, align 4, !tbaa !77
  %indvars.iv.next.i.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.3, %wide.trip.count.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i.i, label %scalar.ph557, !llvm.loop !227

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i.i: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i.i.i
  %.not.i5.i.i.i.i.i = icmp eq ptr %i.nu, null
  br i1 %.not.i5.i.i.i.i.i, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i.i

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i.i: ; preds = %scalar.ph557.prol.loopexit, %scalar.ph557, %middle.block568, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i.i
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.ou = load i8, ptr %i.ot, align 8, !tbaa !18, !range !65, !noundef !67
  %i.ov = trunc nuw i8 %i.ou to i1
  br i1 %i.ov, label %bb.ab, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i.i

bb.ab:                                            ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.nu)
          to label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i.i unwind label %bb.br

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i.i.i: ; preds = %bb.ab, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i.i.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i.i.i
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 1264
  store i8 1, ptr %i.ow, align 8, !tbaa !18
  store ptr %.0.i.i.i.i.i.i, ptr %i.nt, align 8, !tbaa !19
end_hunk_0
