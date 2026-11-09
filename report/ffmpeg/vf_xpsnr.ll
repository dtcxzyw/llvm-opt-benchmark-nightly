Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_xpsnr?download=true
inline.NumInlined: 16
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@do_xpsnr:bb.a
  br i1 %cmp.n389, label %._crit_edge208, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block388
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !148

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec380, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index391 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next394, %vec.epilog.vector.body ] ; 4 uses
  %i.ga = getelementptr i8, ptr %invariant.gep, i64 %index391
  %wide.load392 = load <4 x i8>, ptr %i.ga, align 1, !tbaa !38, !alias.scope !142
  %i.gb = zext <4 x i8> %wide.load392 to <4 x i16>
  %i.gc = add nsw i64 %index391, %i.fk            ; 2 uses
  %i.gd = getelementptr inbounds [2 x i8], ptr %i.ee, i64 %i.gc
  store <4 x i16> %i.gb, ptr %i.gd, align 2, !tbaa !57, !alias.scope !143, !noalias !144
  %i.ge = getelementptr i8, ptr %invariant.gep316, i64 %index391
  %wide.load393 = load <4 x i8>, ptr %i.ge, align 1, !tbaa !38, !alias.scope !145
  %i.gf = zext <4 x i8> %wide.load393 to <4 x i16>
  %i.gg = getelementptr inbounds [2 x i8], ptr %i.ed, i64 %i.gc
  store <4 x i16> %i.gf, ptr %i.gg, align 2, !tbaa !57, !alias.scope !146, !noalias !147
  %index.next394 = add nuw i64 %index391, 4       ; 2 uses
  %i.gh = icmp eq i64 %index.next394, %n.vec390
  br i1 %i.gh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !94

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n395, label %._crit_edge208, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv244.ph = phi i64 [ 0, %iter.check ], [ %n.vec390, %vec.epilog.middle.block ], [ %n.vec380, %vec.epilog.iter.check ] ; 6 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv244.ph
  %i.gi = load i8, ptr %gep.prol, align 1, !tbaa !38
  %i.gj = zext i8 %i.gi to i16
  %i.gk = add nsw i64 %indvars.iv244.ph, %i.fk    ; 2 uses
  %i.gl = getelementptr inbounds [2 x i8], ptr %i.ee, i64 %i.gk
  store i16 %i.gj, ptr %i.gl, align 2, !tbaa !57
  %gep317.prol = getelementptr i8, ptr %invariant.gep316, i64 %indvars.iv244.ph
  %i.gm = load i8, ptr %gep317.prol, align 1, !tbaa !38
  %i.gn = zext i8 %i.gm to i16
  %i.go = getelementptr inbounds [2 x i8], ptr %i.ed, i64 %i.gk
  store i16 %i.gn, ptr %i.go, align 2, !tbaa !57
  %indvars.iv.next245.prol = or disjoint i64 %indvars.iv244.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv244.unr = phi i64 [ %indvars.iv244.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next245.prol, %vec.epilog.scalar.ph.prol ]
  %i.gp = icmp eq i64 %indvars.iv244.ph, %i.fi
  br i1 %i.gp, label %._crit_edge208, label %vec.epilog.scalar.ph

._crit_edge210.split:                             ; preds = %._crit_edge208, %.preheader.lr.ph, %bb.t
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 2 uses
  %i.gq = load i32, ptr %i.bc, align 4, !tbaa !39
  %i.gr = sext i32 %i.gq to i64
  %i.gs = icmp slt i64 %indvars.iv.next253, %i.gr
  br i1 %i.gs, label %bb.p, label %.loopexit.loopexit, !llvm.loop !95

._crit_edge208:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block388
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 1 ; 2 uses
  %exitcond251.not = icmp eq i64 %indvars.iv.next248, %wide.trip.count250
  br i1 %exitcond251.not, label %._crit_edge210.split, label %iter.check, !llvm.loop !96

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv244 = phi i64 [ %indvars.iv.next245.1, %vec.epilog.scalar.ph ], [ %indvars.iv244.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv244
  %i.gt = load i8, ptr %gep, align 1, !tbaa !38
  %i.gu = zext i8 %i.gt to i16
  %i.gv = add nsw i64 %indvars.iv244, %i.fk       ; 2 uses
  %i.gw = getelementptr inbounds [2 x i8], ptr %i.ee, i64 %i.gv
  store i16 %i.gu, ptr %i.gw, align 2, !tbaa !57
  %gep317 = getelementptr i8, ptr %invariant.gep316, i64 %indvars.iv244
  %i.gx = load i8, ptr %gep317, align 1, !tbaa !38
  %i.gy = zext i8 %i.gx to i16
  %i.gz = getelementptr inbounds [2 x i8], ptr %i.ed, i64 %i.gv
  store i16 %i.gy, ptr %i.gz, align 2, !tbaa !57
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 3 uses
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next245
  %i.ha = load i8, ptr %gep.1, align 1, !tbaa !38
  %i.hb = zext i8 %i.ha to i16
  %i.hc = add nsw i64 %indvars.iv.next245, %i.fk  ; 2 uses
  %i.hd = getelementptr inbounds [2 x i8], ptr %i.ee, i64 %i.hc
  store i16 %i.hb, ptr %i.hd, align 2, !tbaa !57
  %gep317.1 = getelementptr i8, ptr %invariant.gep316, i64 %indvars.iv.next245
  %i.he = load i8, ptr %gep317.1, align 1, !tbaa !38
  %i.hf = zext i8 %i.he to i16
  %i.hg = getelementptr inbounds [2 x i8], ptr %i.ed, i64 %i.hc
  store i16 %i.hf, ptr %i.hg, align 2, !tbaa !57
  %indvars.iv.next245.1 = add nuw nsw i64 %indvars.iv244, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next245.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge208, label %vec.epilog.scalar.ph, !llvm.loop !97

.loopexit.loopexit:                               ; preds = %._crit_edge210.split
  %.pre264 = load ptr, ptr %i.ck, align 8, !tbaa !138
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph205, %.loopexit.loopexit, %.preheader188, %.preheader187
  %i.hh = phi ptr [ %i.cr, %.lr.ph205 ], [ %.pre264, %.loopexit.loopexit ], [ %i.cr, %.preheader188 ], [ %i.cr, %.preheader187 ] ; 3 uses
  %i.hi = load ptr, ptr %i.cd, align 8, !tbaa !137 ; 5 uses
  %i.hj = load ptr, ptr %i.k, align 8, !tbaa !19  ; 14 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 168 ; 5 uses
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !32 ; 15 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 152 ; 4 uses
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !32 ; 7 uses
  %i.ho = mul i32 %i.hn, %i.hl                    ; 2 uses
  %i.hp = uitofp nsz i32 %i.ho to double
  %i.hq = fdiv nsz double %i.hp, 8.294400e+06     ; 3 uses
  %i.hr = call nsz double @llvm.sqrt.f64(double %i.hq)
  %i.hs = call nsz double @llvm.fmuladd.f64(double %i.hr, double 3.200000e+01, double 5.000000e-01)
  %i.ht = fptosi double %i.hs to i32              ; 2 uses
  %i.hu = icmp eq i32 %i.ht, 0
  %i.hv = shl nuw nsw i32 %i.ht, 2
  %spec.select.i = select i1 %i.hu, i32 1, i32 %i.hv ; 23 uses
  %i.hw = add i32 %i.hl, -1
  %i.hx = add i32 %i.hw, %spec.select.i
  %i.hy = udiv i32 %i.hx, %spec.select.i          ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hj, i64 12 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !50 ; 2 uses
  %i.ib = shl nsw i32 %i.ia, 1
  %i.ic = add nsw i32 %i.ib, -9
  %i.id = shl nuw i32 1, %i.ic
  %i.ie = sitofp nsz i32 %i.id to double
  %i.if = fmul nnan nsz double %i.ie, 1.600000e+01
  %i.ig = fcmp nsz olt double %i.hq, 1.000000e-05
  %i.ih = select nsz i1 %i.ig, double 1.000000e-05, double %i.hq
  %i.ii = call nsz double @llvm.sqrt.f64(double %i.ih)
  %i.ij = fdiv nsz double %i.if, %i.ii
  %i.ik = call nsz double @llvm.sqrt.f64(double %i.ij) ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.hj, i64 8 ; 3 uses
  %i.im = load i32, ptr %i.il, align 8, !tbaa !49 ; 2 uses
  %i.in = icmp eq i32 %i.im, 1
  %i.io = getelementptr inbounds nuw i8, ptr %i.hj, i64 136
  %i.ip = select i1 %i.in, ptr %i.hk, ptr %i.io   ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hj, i64 208
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !133 ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.hj, i64 216
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !134 ; 10 uses
  %i.iu = add i32 %i.ia, -17
  %or.cond268.i = icmp ult i32 %i.iu, -11
  br i1 %or.cond268.i, label %get_wsse.exit.thread, label %bb.u

bb.u:                                             ; preds = %.loopexit
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hj, i64 20 ; 4 uses
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !39 ; 3 uses
  %i.ix = icmp slt i32 %i.iw, 1
  br i1 %i.ix, label %get_wsse.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.iy = icmp samesign ugt i32 %i.iw, 3
  %i.iz = icmp eq i32 %i.hl, 0
  %or.cond.i = or i1 %i.iz, %i.iy
  %i.ja = icmp eq i32 %i.hn, 0
  %or.cond3.i = or i1 %i.ja, %or.cond.i
  br i1 %or.cond3.i, label %get_wsse.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not.i = icmp eq ptr %i.it, null
  br i1 %.not.i, label %get_wsse.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.jb = icmp samesign ult i32 %spec.select.i, 4
  %i.jc = icmp ne ptr %i.ir, null
  %or.cond5.i = select i1 %i.jb, i1 true, i1 %i.jc
  br i1 %or.cond5.i, label %bb.y, label %get_wsse.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.jd = icmp samesign ugt i32 %spec.select.i, 3
  br i1 %i.jd, label %.lr.ph.us.preheader.i, label %.lr.ph.thread.i

.lr.ph.thread.i:                                  ; preds = %bb.y
  %i.je = getelementptr inbounds nuw i8, ptr %i.hj, i64 384
  br label %.lr.ph.split.us.i

.lr.ph.us.preheader.i:                            ; preds = %bb.y
  %i.jf = load ptr, ptr %i.e, align 16, !tbaa !140 ; 5 uses
  %i.jg = load i32, ptr %i.ip, align 4, !tbaa !32
  %i.jh = sdiv i32 %i.jg, %i.im                   ; 11 uses
  %i.ji = load ptr, ptr %i.f, align 16, !tbaa !140
  %i.jj = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  %i.jk = getelementptr inbounds nuw i8, ptr %i.hj, i64 384 ; 2 uses
  %i.jl = zext i32 %i.jh to i64
  %i.jm = zext i32 %i.hl to i64
  %i.jn = sext i32 %i.jh to i64                   ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.hj, i64 360
  %i.jp = getelementptr inbounds nuw i8, ptr %i.hj, i64 376
  %i.jq = getelementptr inbounds nuw i8, ptr %i.hj, i64 368
  %i.jr = icmp ult i32 %i.ho, 307201
  %i.js = xor i32 %i.hy, -1
  %i.jt = mul i32 %spec.select.i, %i.jh
  %i.ju = mul i32 %spec.select.i, %i.jh
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %..loopexit306_crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvar417 = phi i32 [ %indvar.next418, %..loopexit306_crit_edge.us.i ], [ 0, %.lr.ph.us.preheader.i ] ; 3 uses
  %.0237315.us.i = phi i32 [ %i.yu, %..loopexit306_crit_edge.us.i ], [ 0, %.lr.ph.us.preheader.i ]
  %.0239314.us.i = phi i32 [ %i.jz, %..loopexit306_crit_edge.us.i ], [ 0, %.lr.ph.us.preheader.i ] ; 6 uses
  %i.jv = mul i32 %i.ju, %indvar417
  %i.jw = zext i32 %i.jv to i64
  %1 = shl nuw nsw i64 %i.jw, 1                   ; 2 uses
  %i.jx = mul i32 %i.jt, %indvar417
  %i.jy = zext i32 %i.jx to i64
  %2 = shl nuw nsw i64 %i.jy, 1                   ; 2 uses
  %i.jz = add i32 %.0239314.us.i, %spec.select.i  ; 3 uses
  %i.ka = icmp ugt i32 %i.jz, %i.hn
  %i.kb = sub nuw i32 %i.hn, %.0239314.us.i
  %i.kc = select i1 %i.ka, i32 %i.kb, i32 %spec.select.i ; 9 uses
  %i.kd = mul i32 %.0239314.us.i, %i.jh
  %i.ke = zext i32 %i.kd to i64                   ; 3 uses
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %i.jf, i64 %i.ke
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %i.hi, i64 %i.ke
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %i.hh, i64 %i.ke
  %.not216.i.us.i = icmp eq i32 %.0239314.us.i, 0
  %i.ki = add i32 %i.kc, %.0239314.us.i
  %.not.i.i.us.i = icmp eq i32 %i.kc, 0           ; 2 uses
  %i.kj = mul i32 %.0239314.us.i, %i.hl
  %i.kk = zext i32 %i.kj to i64
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %i.ji, i64 %i.kk
  %i.km = uitofp nsz i32 %i.kc to double
  %.not267.us.i = icmp ult i32 %i.jz, %i.hn       ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %.thread288.us.i, %.lr.ph.us.i
  %indvar = phi i32 [ %indvar.next, %.thread288.us.i ], [ 0, %.lr.ph.us.i ] ; 5 uses
  %.1238313.us.i = phi i32 [ %i.yu, %.thread288.us.i ], [ %.0237315.us.i, %.lr.ph.us.i ] ; 10 uses
  %.0242312.us.i = phi i32 [ %i.lf, %.thread288.us.i ], [ 0, %.lr.ph.us.i ] ; 12 uses
  %3 = zext i32 %.0242312.us.i to i64
  %4 = shl nuw nsw i64 %3, 1                      ; 2 uses
  %5 = add nuw nsw i64 %1, %4
  %i.kn = add i32 %spec.select.i, %.0242312.us.i
  %umin471 = call i32 @llvm.umin.i32(i32 %i.hl, i32 %i.kn)
  %i.ko = mul i32 %spec.select.i, %indvar
  %i.kp = sub i32 %umin471, %i.ko
  %i.kq = zext i32 %i.kp to i64
  %6 = shl nuw nsw i64 %i.kq, 1
  %7 = add nuw nsw i64 %5, %6
  %8 = add nuw nsw i64 %1, %4
  %i.kr = add i32 %spec.select.i, %.0242312.us.i
  %umin439 = call i32 @llvm.umin.i32(i32 %i.hl, i32 %i.kr)
  %i.ks = mul i32 %spec.select.i, %indvar
  %i.kt = sub i32 %umin439, %i.ks
  %9 = zext i32 %i.kt to i64                      ; 3 uses
  %10 = add nsw i64 %9, -1                        ; 2 uses
  %i.ku = zext i32 %.0242312.us.i to i64
  %11 = shl nuw nsw i64 %i.ku, 1                  ; 2 uses
  %i.kv = add nuw nsw i64 %2, %11
  %i.kw = add i32 %spec.select.i, %.0242312.us.i
  %umin416 = call i32 @llvm.umin.i32(i32 %i.hl, i32 %i.kw)
  %i.kx = mul i32 %spec.select.i, %indvar
  %i.ky = sub i32 %umin416, %i.kx
  %i.kz = zext i32 %i.ky to i64
  %12 = shl nuw nsw i64 %i.kz, 1
  %13 = add nuw nsw i64 %i.kv, %12
  %14 = add nuw nsw i64 %2, %11
  %i.la = add i32 %spec.select.i, %.0242312.us.i
  %umin = call i32 @llvm.umin.i32(i32 %i.hl, i32 %i.la)
  %i.lb = mul i32 %spec.select.i, %indvar
  %i.lc = sub i32 %umin, %i.lb
  %i.ld = zext i32 %i.lc to i64
  %i.le = add nsw i64 %i.ld, -1                   ; 2 uses
  %i.lf = add i32 %.0242312.us.i, %spec.select.i  ; 4 uses
  %i.lg = icmp ugt i32 %i.lf, %i.hl
  %i.lh = sub i32 %i.hl, %.0242312.us.i
  %i.li = select i1 %i.lg, i32 %i.lh, i32 %spec.select.i ; 11 uses
  %i.lj = load i32, ptr %i.hz, align 4, !tbaa !50
  %i.lk = load i32, ptr %i.jj, align 8, !tbaa !51
  %i.ll = zext i32 %.0242312.us.i to i64          ; 4 uses
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %i.kf, i64 %i.ll ; 14 uses
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr %i.kg, i64 %i.ll ; 8 uses
  %i.lo = getelementptr inbounds nuw [2 x i8], ptr %i.kh, i64 %i.ll ; 3 uses
  %i.lp = load i32, ptr %i.hk, align 8, !tbaa !32 ; 2 uses
  %i.lq = load i32, ptr %i.hm, align 8, !tbaa !32 ; 2 uses
  %i.lr = mul nsw i32 %i.lq, %i.lp
  %i.ls = icmp sgt i32 %i.lr, 2359296             ; 3 uses
  %i.lt = select i1 %i.ls, i32 2, i32 1           ; 4 uses
  %.not.i.us.i = icmp eq i32 %.0242312.us.i, 0    ; 2 uses
  %i.lu = select i1 %.not.i.us.i, i32 %i.lt, i32 0 ; 5 uses
  %i.lv = select i1 %.not216.i.us.i, i32 %i.lt, i32 0 ; 5 uses
  %i.lw = add i32 %i.li, %.0242312.us.i
  %i.lx = icmp ult i32 %i.lw, %i.lp
  %i.ly = select i1 %i.lx, i32 0, i32 %i.lt
  %i.lz = sub i32 %i.li, %i.ly                    ; 6 uses
  %i.ma = icmp ult i32 %i.ki, %i.lq
  %i.mb = select i1 %i.ma, i32 0, i32 %i.lt
  %i.mc = sub nsw i32 %i.kc, %i.mb                ; 5 uses
  br i1 %.not.i.i.us.i, label %calc_squared_error.exit.i.us.i, label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.z
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %i.kl, i64 %i.ll
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i.i.us.i
  %.018.i.i.us.i = phi i32 [ 0, %.lr.ph.i.i.us.i ], [ %i.mj, %bb.aa ]
  %.01217.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %i.mg, %bb.aa ]
  %.01316.i.i.us.i = phi ptr [ %i.lm, %.lr.ph.i.i.us.i ], [ %i.mh, %bb.aa ] ; 2 uses
  %.01415.i.i.us.i = phi ptr [ %i.md, %.lr.ph.i.i.us.i ], [ %i.mi, %bb.aa ] ; 2 uses
  %i.me = load ptr, ptr %i.jk, align 8, !tbaa !149
  %i.mf = call i64 %i.me(ptr noundef %.01316.i.i.us.i, ptr noundef %.01415.i.i.us.i, i32 noundef %i.li) #13, !inline_history !98
  %i.mg = add i64 %i.mf, %.01217.i.i.us.i         ; 2 uses
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %.01316.i.i.us.i, i64 %i.jl
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %.01415.i.i.us.i, i64 %i.jm
  %i.mj = add nuw i32 %.018.i.i.us.i, 1           ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i32 %i.mj, %i.kc
  br i1 %exitcond.not.i.i.us.i, label %calc_squared_error.exit.loopexit.i.us.i, label %bb.aa, !llvm.loop !99

calc_squared_error.exit.loopexit.i.us.i:          ; preds = %bb.aa
  %i.mk = uitofp nsz i64 %i.mg to double
  br label %calc_squared_error.exit.i.us.i

calc_squared_error.exit.i.us.i:                   ; preds = %calc_squared_error.exit.loopexit.i.us.i, %bb.z
  %.012.lcssa.i.i.us.i = phi double [ 0.000000e+00, %bb.z ], [ %i.mk, %calc_squared_error.exit.loopexit.i.us.i ]
  %.not217.i.us.i = icmp sgt i32 %i.lz, %i.lu
  %.not218.i.us.i = icmp sgt i32 %i.mc, %i.lv
  %or.cond.i.us.i = select i1 %.not217.i.us.i, i1 %.not218.i.us.i, i1 false
  br i1 %or.cond.i.us.i, label %bb.ab, label %calc_squared_error_and_weight.exit.us.i

bb.ab:                                            ; preds = %calc_squared_error.exit.i.us.i
  br i1 %i.ls, label %bb.ac, label %.preheader232.us.preheader.i.us.i

.preheader232.us.preheader.i.us.i:                ; preds = %bb.ab
  %i.ml = zext nneg i32 %i.lu to i64              ; 5 uses
  %i.mm = zext i32 %i.lz to i64                   ; 2 uses
  %i.mn = zext nneg i32 %i.lv to i64
  %i.mo = zext nneg i32 %i.mc to i64
  %i.mp = add nuw nsw i64 %i.ml, 1
  %i.mq = call i64 @llvm.umax.i64(i64 %i.mp, i64 %i.mm)
  %i.mr = sub nsw i64 %i.mq, %i.ml                ; 3 uses
  %min.iters.check507 = icmp ult i64 %i.mr, 4
  %n.vec509 = and i64 %i.mr, -4                   ; 3 uses
  %i.ms = or disjoint i64 %n.vec509, %i.ml
  %cmp.n535 = icmp eq i64 %i.mr, %n.vec509
  br label %.preheader232.us.i.us.i

.preheader232.us.i.us.i:                          ; preds = %._crit_edge.us.i.us.i, %.preheader232.us.preheader.i.us.i
  %indvars.iv268.i.us.i = phi i64 [ %i.mn, %.preheader232.us.preheader.i.us.i ], [ %indvars.iv.next269.i.us.i, %._crit_edge.us.i.us.i ] ; 3 uses
  %.0209237.us.i.us.i = phi i64 [ 0, %.preheader232.us.preheader.i.us.i ], [ %.lcssa328, %._crit_edge.us.i.us.i ] ; 2 uses
  %i.mt = mul nsw i64 %indvars.iv268.i.us.i, %i.jn
  %i.mu = add nsw i64 %indvars.iv268.i.us.i, -1
  %i.mv = mul nsw i64 %i.mu, %i.jn
  %indvars.iv.next269.i.us.i = add nuw nsw i64 %indvars.iv268.i.us.i, 1 ; 3 uses
  %i.mw = mul nsw i64 %indvars.iv.next269.i.us.i, %i.jn
  %invariant.gep.i.us.i = getelementptr [2 x i8], ptr %i.lm, i64 %i.mt ; 2 uses
  %invariant.gep293.i.us.i = getelementptr [2 x i8], ptr %i.lm, i64 %i.mv ; 2 uses
  %invariant.gep295.i.us.i = getelementptr [2 x i8], ptr %i.lm, i64 %i.mw ; 2 uses
  br i1 %min.iters.check507, label %scalar.ph506.preheader, label %vector.ph508

vector.ph508:                                     ; preds = %.preheader232.us.i.us.i
  %i.mx = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.0209237.us.i.us.i, i64 0
  br label %vector.body510

vector.body510:                                   ; preds = %vector.body510, %vector.ph508
  %index511 = phi i64 [ 0, %vector.ph508 ], [ %index.next532, %vector.body510 ] ; 2 uses
  %vec.phi512 = phi <2 x i64> [ %i.mx, %vector.ph508 ], [ %i.pe, %vector.body510 ]
  %vec.phi513 = phi <2 x i64> [ zeroinitializer, %vector.ph508 ], [ %i.pf, %vector.body510 ]
  %i.my = or disjoint i64 %index511, %i.ml        ; 3 uses
  %i.mz = getelementptr [2 x i8], ptr %invariant.gep.i.us.i, i64 %i.my ; 5 uses
  %i.na = getelementptr i8, ptr %i.mz, i64 4
  %wide.load514 = load <2 x i16>, ptr %i.mz, align 2, !tbaa !57
  %wide.load515 = load <2 x i16>, ptr %i.na, align 2, !tbaa !57
  %i.nb = sext <2 x i16> %wide.load514 to <2 x i32>
  %i.nc = sext <2 x i16> %wide.load515 to <2 x i32>
  %i.nd = mul nsw <2 x i32> %i.nb, splat (i32 12)
  %i.ne = mul nsw <2 x i32> %i.nc, splat (i32 12)
  %i.nf = getelementptr i8, ptr %i.mz, i64 -2
  %i.ng = getelementptr i8, ptr %i.mz, i64 2
  %wide.load516 = load <2 x i16>, ptr %i.nf, align 2, !tbaa !57
  %wide.load517 = load <2 x i16>, ptr %i.ng, align 2, !tbaa !57 ; 2 uses
  %i.nh = sext <2 x i16> %wide.load516 to <2 x i32>
  %i.ni = sext <2 x i16> %wide.load517 to <2 x i32>
  %i.nj = getelementptr i8, ptr %i.mz, i64 6
  %wide.load519 = load <2 x i16>, ptr %i.nj, align 2, !tbaa !57
  %i.nk = sext <2 x i16> %wide.load517 to <2 x i32>
  %i.nl = sext <2 x i16> %wide.load519 to <2 x i32>
  %i.nm = add nsw <2 x i32> %i.nk, %i.nh
  %i.nn = add nsw <2 x i32> %i.nl, %i.ni
  %i.no = getelementptr [2 x i8], ptr %invariant.gep293.i.us.i, i64 %i.my ; 5 uses
  %i.np = getelementptr i8, ptr %i.no, i64 4
  %wide.load520 = load <2 x i16>, ptr %i.no, align 2, !tbaa !57
  %wide.load521 = load <2 x i16>, ptr %i.np, align 2, !tbaa !57
  %i.nq = sext <2 x i16> %wide.load520 to <2 x i32>
  %i.nr = sext <2 x i16> %wide.load521 to <2 x i32>
  %i.ns = add nsw <2 x i32> %i.nm, %i.nq
  %i.nt = add nsw <2 x i32> %i.nn, %i.nr
  %i.nu = getelementptr [2 x i8], ptr %invariant.gep295.i.us.i, i64 %i.my ; 5 uses
  %i.nv = getelementptr i8, ptr %i.nu, i64 4
  %wide.load522 = load <2 x i16>, ptr %i.nu, align 2, !tbaa !57
  %wide.load523 = load <2 x i16>, ptr %i.nv, align 2, !tbaa !57
  %i.nw = sext <2 x i16> %wide.load522 to <2 x i32>
  %i.nx = sext <2 x i16> %wide.load523 to <2 x i32>
  %i.ny = add nsw <2 x i32> %i.ns, %i.nw
  %i.nz = add nsw <2 x i32> %i.nt, %i.nx
  %i.oa = getelementptr i8, ptr %i.no, i64 -2
  %i.ob = getelementptr i8, ptr %i.no, i64 2
  %wide.load524 = load <2 x i16>, ptr %i.oa, align 2, !tbaa !57
  %wide.load525 = load <2 x i16>, ptr %i.ob, align 2, !tbaa !57 ; 2 uses
  %i.oc = sext <2 x i16> %wide.load524 to <2 x i32>
  %i.od = sext <2 x i16> %wide.load525 to <2 x i32>
  %i.oe = getelementptr i8, ptr %i.no, i64 6
  %wide.load527 = load <2 x i16>, ptr %i.oe, align 2, !tbaa !57
  %i.of = sext <2 x i16> %wide.load525 to <2 x i32>
  %i.og = sext <2 x i16> %wide.load527 to <2 x i32>
  %i.oh = getelementptr i8, ptr %i.nu, i64 -2
  %i.oi = getelementptr i8, ptr %i.nu, i64 2
  %wide.load528 = load <2 x i16>, ptr %i.oh, align 2, !tbaa !57
  %wide.load529 = load <2 x i16>, ptr %i.oi, align 2, !tbaa !57 ; 2 uses
  %i.oj = sext <2 x i16> %wide.load528 to <2 x i32>
  %i.ok = sext <2 x i16> %wide.load529 to <2 x i32>
  %i.ol = getelementptr i8, ptr %i.nu, i64 6
  %wide.load531 = load <2 x i16>, ptr %i.ol, align 2, !tbaa !57
  %i.om = sext <2 x i16> %wide.load529 to <2 x i32>
  %i.on = sext <2 x i16> %wide.load531 to <2 x i32>
  %i.oo = add nsw <2 x i32> %i.oc, %i.of
  %i.op = add nsw <2 x i32> %i.od, %i.og
  %i.oq = shl nsw <2 x i32> %i.ny, splat (i32 1)
  %i.or = shl nsw <2 x i32> %i.nz, splat (i32 1)
  %i.os = add nsw <2 x i32> %i.oo, %i.oq
  %i.ot = add nsw <2 x i32> %i.op, %i.or
  %i.ou = add nsw <2 x i32> %i.os, %i.oj
  %i.ov = add nsw <2 x i32> %i.ot, %i.ok
  %i.ow = add nsw <2 x i32> %i.ou, %i.om
  %i.ox = add nsw <2 x i32> %i.ov, %i.on
  %i.oy = sub nsw <2 x i32> %i.nd, %i.ow
  %i.oz = sub nsw <2 x i32> %i.ne, %i.ox
  %i.pa = call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.oy, i1 true)
  %i.pb = call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.oz, i1 true)
  %i.pc = zext nneg <2 x i32> %i.pa to <2 x i64>
  %i.pd = zext nneg <2 x i32> %i.pb to <2 x i64>
  %i.pe = add <2 x i64> %vec.phi512, %i.pc        ; 2 uses
  %i.pf = add <2 x i64> %vec.phi513, %i.pd        ; 2 uses
  %index.next532 = add nuw i64 %index511, 4       ; 2 uses
  %i.pg = icmp eq i64 %index.next532, %n.vec509
  br i1 %i.pg, label %middle.block533, label %vector.body510, !llvm.loop !100

middle.block533:                                  ; preds = %vector.body510
  %bin.rdx534 = add <2 x i64> %i.pf, %i.pe
  %i.ph = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx534) ; 2 uses
  br i1 %cmp.n535, label %._crit_edge.us.i.us.i, label %scalar.ph506.preheader

scalar.ph506.preheader:                           ; preds = %.preheader232.us.i.us.i, %middle.block533
  %indvars.iv.i.us.i.ph = phi i64 [ %i.ml, %.preheader232.us.i.us.i ], [ %i.ms, %middle.block533 ]
  %.1210235.us.i.us.i.ph = phi i64 [ %.0209237.us.i.us.i, %.preheader232.us.i.us.i ], [ %i.ph, %middle.block533 ]
  br label %scalar.ph506

scalar.ph506:                                     ; preds = %scalar.ph506.preheader, %scalar.ph506
  %indvars.iv.i.us.i = phi i64 [ %indvars.iv.next.i.us.i, %scalar.ph506 ], [ %indvars.iv.i.us.i.ph, %scalar.ph506.preheader ] ; 4 uses
  %.1210235.us.i.us.i = phi i64 [ %i.qs, %scalar.ph506 ], [ %.1210235.us.i.us.i.ph, %scalar.ph506.preheader ]
  %gep.i.us.i = getelementptr [2 x i8], ptr %invariant.gep.i.us.i, i64 %indvars.iv.i.us.i ; 3 uses
  %i.pi = load i16, ptr %gep.i.us.i, align 2, !tbaa !57
  %i.pj = sext i16 %i.pi to i32
  %i.pk = mul nsw i32 %i.pj, 12
  %i.pl = getelementptr i8, ptr %gep.i.us.i, i64 -2
  %i.pm = load i16, ptr %i.pl, align 2, !tbaa !57
  %i.pn = sext i16 %i.pm to i32
  %i.po = getelementptr i8, ptr %gep.i.us.i, i64 2
  %i.pp = load i16, ptr %i.po, align 2, !tbaa !57
  %i.pq = sext i16 %i.pp to i32
  %i.pr = add nsw i32 %i.pq, %i.pn
  %gep294.i.us.i = getelementptr [2 x i8], ptr %invariant.gep293.i.us.i, i64 %indvars.iv.i.us.i ; 3 uses
  %i.ps = load i16, ptr %gep294.i.us.i, align 2, !tbaa !57
  %i.pt = sext i16 %i.ps to i32
  %i.pu = add nsw i32 %i.pr, %i.pt
  %gep296.i.us.i = getelementptr [2 x i8], ptr %invariant.gep295.i.us.i, i64 %indvars.iv.i.us.i ; 3 uses
  %i.pv = load i16, ptr %gep296.i.us.i, align 2, !tbaa !57
  %i.pw = sext i16 %i.pv to i32
  %i.px = add nsw i32 %i.pu, %i.pw
  %i.py = getelementptr i8, ptr %gep294.i.us.i, i64 -2
  %i.pz = load i16, ptr %i.py, align 2, !tbaa !57
  %i.qa = sext i16 %i.pz to i32
  %i.qb = getelementptr i8, ptr %gep294.i.us.i, i64 2
  %i.qc = load i16, ptr %i.qb, align 2, !tbaa !57
  %i.qd = sext i16 %i.qc to i32
  %i.qe = getelementptr i8, ptr %gep296.i.us.i, i64 -2
  %i.qf = load i16, ptr %i.qe, align 2, !tbaa !57
  %i.qg = sext i16 %i.qf to i32
  %i.qh = getelementptr i8, ptr %gep296.i.us.i, i64 2
  %i.qi = load i16, ptr %i.qh, align 2, !tbaa !57
  %i.qj = sext i16 %i.qi to i32
  %i.qk = add nsw i32 %i.qa, %i.qd
  %i.ql = shl nsw i32 %i.px, 1
  %i.qm = add nsw i32 %i.qk, %i.ql
  %i.qn = add nsw i32 %i.qm, %i.qg
  %i.qo = add nsw i32 %i.qn, %i.qj
  %i.qp = sub nsw i32 %i.pk, %i.qo
  %i.qq = call i32 @llvm.abs.i32(i32 %i.qp, i1 true)
  %i.qr = zext nneg i32 %i.qq to i64
  %i.qs = add i64 %.1210235.us.i.us.i, %i.qr      ; 2 uses
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %i.qt = icmp samesign ult i64 %indvars.iv.next.i.us.i, %i.mm
  br i1 %i.qt, label %scalar.ph506, label %._crit_edge.us.i.us.i, !llvm.loop !101

._crit_edge.us.i.us.i:                            ; preds = %scalar.ph506, %middle.block533
  %.lcssa328 = phi i64 [ %i.ph, %middle.block533 ], [ %i.qs, %scalar.ph506 ] ; 2 uses
  %i.qu = icmp samesign ult i64 %indvars.iv.next269.i.us.i, %i.mo
  br i1 %i.qu, label %.preheader232.us.i.us.i, label %.loopexit234.i.us.i, !llvm.loop !102

bb.ac:                                            ; preds = %bb.ab
  %i.qv = icmp samesign ugt i32 %i.lz, 12
  br i1 %i.qv, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.qw = call i64 @highds(i32 noundef %i.lu, i32 noundef %i.lv, i32 noundef %i.lz, i32 noundef %i.mc, ptr noundef %i.lm, i32 noundef %i.jh) ; 0 uses
  br label %.loopexit234.i.us.i

bb.ae:                                            ; preds = %bb.ac
  %i.qx = load ptr, ptr %i.jo, align 8, !tbaa !53
  %i.qy = call i64 %i.qx(i32 noundef %i.lu, i32 noundef %i.lv, i32 noundef %i.lz, i32 noundef %i.mc, ptr noundef %i.lm, i32 noundef %i.jh) #13, !inline_history !103
  br label %.loopexit234.i.us.i

.loopexit234.i.us.i:                              ; preds = %._crit_edge.us.i.us.i, %bb.ae, %bb.ad
  %.2211.i.us.i = phi i64 [ %i.qy, %bb.ae ], [ 0, %bb.ad ], [ %.lcssa328, %._crit_edge.us.i.us.i ]
  %i.qz = uitofp nsz i64 %.2211.i.us.i to double
  %i.ra = sub nuw nsw i32 %i.lz, %i.lu
  %i.rb = uitofp nneg i32 %i.ra to double
  %i.rc = sub nuw nsw i32 %i.mc, %i.lv
  %i.rd = uitofp nneg i32 %i.rc to double
  %i.re = fmul nnan nsz double %i.rb, %i.rd
  %i.rf = fdiv nsz double %i.qz, %i.re
  %i.rg = icmp ult i32 %i.lk, 32                  ; 2 uses
  br i1 %i.ls, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.loopexit234.i.us.i
  %.not259.i.us.i = icmp eq i32 %i.li, 0
  %or.cond298.i.us.i = or i1 %.not.i.i.us.i, %.not259.i.us.i ; 2 uses
  br i1 %i.rg, label %.preheader228.i.us.i, label %.preheader230.i.us.i

.preheader230.i.us.i:                             ; preds = %bb.af
  br i1 %or.cond298.i.us.i, label %.loopexit.i.us.i, label %.preheader229.us.preheader.i.us.i

.preheader229.us.preheader.i.us.i:                ; preds = %.preheader230.i.us.i
  %wide.trip.count.i.us.i = zext i32 %i.li to i64 ; 3 uses
  %min.iters.check473 = icmp ult i32 %i.li, 6
  %i.rh = trunc i64 %10 to i32
  %i.ri = icmp ugt i64 %10, 4294967295
  %n.vec487 = and i64 %wide.trip.count.i.us.i, 4294967292 ; 3 uses
  %cmp.n503 = icmp eq i64 %n.vec487, %wide.trip.count.i.us.i
  br label %.preheader229.us.i.us.i

.preheader229.us.i.us.i:                          ; preds = %._crit_edge.us245.i.us.i, %.preheader229.us.preheader.i.us.i
  %.0203243.us.i.us.i = phi i32 [ %i.tv, %._crit_edge.us245.i.us.i ], [ 0, %.preheader229.us.preheader.i.us.i ] ; 2 uses
  %.2242.us.i.us.i = phi i64 [ %.lcssa329, %._crit_edge.us245.i.us.i ], [ 0, %.preheader229.us.preheader.i.us.i ] ; 4 uses
  %i.rj = mul i32 %.0203243.us.i.us.i, %i.jh      ; 4 uses
  br i1 %min.iters.check473, label %scalar.ph472.preheader, label %vector.scevcheck438

vector.scevcheck438:                              ; preds = %.preheader229.us.i.us.i
  %i.rk = xor i32 %i.rj, -1
  %i.rl = icmp ult i32 %i.rk, %i.rh
  %i.rm = or i1 %i.rl, %i.ri
  br i1 %i.rm, label %scalar.ph472.preheader, label %vector.memcheck474

vector.memcheck474:                               ; preds = %vector.scevcheck438
  %i.rn = zext i32 %i.rj to i64
  %15 = shl nuw nsw i64 %i.rn, 1                  ; 2 uses
  %16 = add nuw nsw i64 %8, %15                   ; 3 uses
  %i.ro = getelementptr i8, ptr %i.hh, i64 %16    ; 2 uses
  %i.rp = add nuw nsw i64 %7, %15                 ; 3 uses
  %i.rq = getelementptr i8, ptr %i.hh, i64 %i.rp  ; 2 uses
  %i.rr = getelementptr i8, ptr %i.hi, i64 %16    ; 2 uses
  %i.rs = getelementptr i8, ptr %i.hi, i64 %i.rp  ; 2 uses
  %i.rt = getelementptr i8, ptr %i.jf, i64 %16    ; 2 uses
  %i.ru = getelementptr i8, ptr %i.jf, i64 %i.rp  ; 2 uses
  %bound0475 = icmp ult ptr %i.ro, %i.rs
  %bound1476 = icmp ult ptr %i.rr, %i.rq
  %found.conflict477 = and i1 %bound0475, %bound1476
  %bound0478 = icmp ult ptr %i.ro, %i.ru
  %bound1479 = icmp ult ptr %i.rt, %i.rq
  %found.conflict480 = and i1 %bound0478, %bound1479
  %conflict.rdx481 = or i1 %found.conflict477, %found.conflict480
  %bound0482 = icmp ult ptr %i.rr, %i.ru
  %bound1483 = icmp ult ptr %i.rt, %i.rs
  %found.conflict484 = and i1 %bound0482, %bound1483
  %conflict.rdx485 = or i1 %conflict.rdx481, %found.conflict484
  br i1 %conflict.rdx485, label %scalar.ph472.preheader, label %vector.ph486

vector.ph486:                                     ; preds = %vector.memcheck474
  %i.rv = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.2242.us.i.us.i, i64 0
  br label %vector.body488

vector.body488:                                   ; preds = %vector.body488, %vector.ph486
  %index489 = phi i64 [ 0, %vector.ph486 ], [ %index.next500, %vector.body488 ] ; 2 uses
  %vec.phi490 = phi <2 x i64> [ %i.rv, %vector.ph486 ], [ %i.sx, %vector.body488 ]
  %vec.phi491 = phi <2 x i64> [ zeroinitializer, %vector.ph486 ], [ %i.sy, %vector.body488 ]
  %i.rw = trunc nuw i64 %index489 to i32
  %i.rx = add i32 %i.rj, %i.rw
  %i.ry = zext i32 %i.rx to i64                   ; 3 uses
  %i.rz = getelementptr inbounds nuw [2 x i8], ptr %i.lm, i64 %i.ry ; 3 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 4 ; 2 uses
  %wide.load492 = load <2 x i16>, ptr %i.rz, align 2, !tbaa !57, !alias.scope !150
  %wide.load493 = load <2 x i16>, ptr %i.sa, align 2, !tbaa !57, !alias.scope !150
  %i.sb = sext <2 x i16> %wide.load492 to <2 x i32>
  %i.sc = sext <2 x i16> %wide.load493 to <2 x i32>
  %i.sd = getelementptr inbounds nuw [2 x i8], ptr %i.ln, i64 %i.ry ; 3 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 4 ; 2 uses
  %wide.load494 = load <2 x i16>, ptr %i.sd, align 2, !tbaa !57, !alias.scope !151, !noalias !150 ; 2 uses
  %wide.load495 = load <2 x i16>, ptr %i.se, align 2, !tbaa !57, !alias.scope !151, !noalias !150 ; 2 uses
  %i.sf = sext <2 x i16> %wide.load494 to <2 x i32>
  %i.sg = sext <2 x i16> %wide.load495 to <2 x i32>
  %i.sh = shl nsw <2 x i32> %i.sf, splat (i32 1)
  %i.si = shl nsw <2 x i32> %i.sg, splat (i32 1)
  %i.sj = sub nsw <2 x i32> %i.sb, %i.sh
  %i.sk = sub nsw <2 x i32> %i.sc, %i.si
  %i.sl = getelementptr inbounds nuw [2 x i8], ptr %i.lo, i64 %i.ry ; 3 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 4 ; 2 uses
  %wide.load496 = load <2 x i16>, ptr %i.sl, align 2, !tbaa !57, !alias.scope !152, !noalias !153
  %wide.load497 = load <2 x i16>, ptr %i.sm, align 2, !tbaa !57, !alias.scope !152, !noalias !153
  %i.sn = sext <2 x i16> %wide.load496 to <2 x i32>
  %i.so = sext <2 x i16> %wide.load497 to <2 x i32>
  %i.sp = add nsw <2 x i32> %i.sj, %i.sn
  %i.sq = add nsw <2 x i32> %i.sk, %i.so
  %i.sr = call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.sp, i1 true)
  %i.ss = call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.sq, i1 true)
  %i.st = shl nuw nsw <2 x i32> %i.sr, splat (i32 1)
  %i.su = shl nuw nsw <2 x i32> %i.ss, splat (i32 1)
  %i.sv = zext nneg <2 x i32> %i.st to <2 x i64>
  %i.sw = zext nneg <2 x i32> %i.su to <2 x i64>
  %i.sx = add <2 x i64> %vec.phi490, %i.sv        ; 2 uses
  %i.sy = add <2 x i64> %vec.phi491, %i.sw        ; 2 uses
  store <2 x i16> %wide.load494, ptr %i.sl, align 2, !tbaa !57, !alias.scope !152, !noalias !153
  store <2 x i16> %wide.load495, ptr %i.sm, align 2, !tbaa !57, !alias.scope !152, !noalias !153
  %wide.load498 = load <2 x i16>, ptr %i.rz, align 2, !tbaa !57, !alias.scope !150
  %wide.load499 = load <2 x i16>, ptr %i.sa, align 2, !tbaa !57, !alias.scope !150
  store <2 x i16> %wide.load498, ptr %i.sd, align 2, !tbaa !57, !alias.scope !151, !noalias !150
  store <2 x i16> %wide.load499, ptr %i.se, align 2, !tbaa !57, !alias.scope !151, !noalias !150
  %index.next500 = add nuw i64 %index489, 4       ; 2 uses
  %i.sz = icmp eq i64 %index.next500, %n.vec487
  br i1 %i.sz, label %middle.block501, label %vector.body488, !llvm.loop !108

middle.block501:                                  ; preds = %vector.body488
  %bin.rdx502 = add <2 x i64> %i.sy, %i.sx
  %i.ta = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx502) ; 2 uses
  br i1 %cmp.n503, label %._crit_edge.us245.i.us.i, label %scalar.ph472.preheader

scalar.ph472.preheader:                           ; preds = %vector.memcheck474, %vector.scevcheck438, %.preheader229.us.i.us.i, %middle.block501
  %indvars.iv271.i.us.i.ph = phi i64 [ 0, %vector.memcheck474 ], [ 0, %vector.scevcheck438 ], [ 0, %.preheader229.us.i.us.i ], [ %n.vec487, %middle.block501 ]
  %.3240.us.i.us.i.ph = phi i64 [ %.2242.us.i.us.i, %vector.memcheck474 ], [ %.2242.us.i.us.i, %vector.scevcheck438 ], [ %.2242.us.i.us.i, %.preheader229.us.i.us.i ], [ %i.ta, %middle.block501 ]
  br label %scalar.ph472

scalar.ph472:                                     ; preds = %scalar.ph472.preheader, %scalar.ph472
  %indvars.iv271.i.us.i = phi i64 [ %indvars.iv.next272.i.us.i, %scalar.ph472 ], [ %indvars.iv271.i.us.i.ph, %scalar.ph472.preheader ] ; 2 uses
  %.3240.us.i.us.i = phi i64 [ %i.tt, %scalar.ph472 ], [ %.3240.us.i.us.i.ph, %scalar.ph472.preheader ]
  %i.tb = trunc nuw i64 %indvars.iv271.i.us.i to i32
  %i.tc = add i32 %i.rj, %i.tb
  %i.td = zext i32 %i.tc to i64                   ; 3 uses
  %i.te = getelementptr inbounds nuw [2 x i8], ptr %i.lm, i64 %i.td ; 2 uses
  %i.tf = load i16, ptr %i.te, align 2, !tbaa !57
  %i.tg = sext i16 %i.tf to i32
  %i.th = getelementptr inbounds nuw [2 x i8], ptr %i.ln, i64 %i.td ; 2 uses
  %i.ti = load i16, ptr %i.th, align 2, !tbaa !57 ; 2 uses
  %i.tj = sext i16 %i.ti to i32
  %i.tk = shl nsw i32 %i.tj, 1
  %i.tl = sub nsw i32 %i.tg, %i.tk
  %i.tm = getelementptr inbounds nuw [2 x i8], ptr %i.lo, i64 %i.td ; 2 uses
  %i.tn = load i16, ptr %i.tm, align 2, !tbaa !57
  %i.to = sext i16 %i.tn to i32
  %i.tp = add nsw i32 %i.tl, %i.to
  %i.tq = call i32 @llvm.abs.i32(i32 %i.tp, i1 true)
  %i.tr = shl nuw nsw i32 %i.tq, 1
  %i.ts = zext nneg i32 %i.tr to i64
  %i.tt = add i64 %.3240.us.i.us.i, %i.ts         ; 2 uses
  store i16 %i.ti, ptr %i.tm, align 2, !tbaa !57
  %i.tu = load i16, ptr %i.te, align 2, !tbaa !57
  store i16 %i.tu, ptr %i.th, align 2, !tbaa !57
  %indvars.iv.next272.i.us.i = add nuw nsw i64 %indvars.iv271.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next272.i.us.i, %wide.trip.count.i.us.i
  br i1 %exitcond.not.i.us.i, label %._crit_edge.us245.i.us.i, label %scalar.ph472, !llvm.loop !109

._crit_edge.us245.i.us.i:                         ; preds = %scalar.ph472, %middle.block501
  %.lcssa329 = phi i64 [ %i.ta, %middle.block501 ], [ %i.tt, %scalar.ph472 ] ; 2 uses
  %i.tv = add nuw i32 %.0203243.us.i.us.i, 1      ; 2 uses
  %exitcond274.not.i.us.i = icmp eq i32 %i.tv, %i.kc
  br i1 %exitcond274.not.i.us.i, label %.loopexit.i.us.i, label %.preheader229.us.i.us.i, !llvm.loop !110

.preheader228.i.us.i:                             ; preds = %bb.af
  br i1 %or.cond298.i.us.i, label %.loopexit.i.us.i, label %.preheader.us.preheader.i.us.i

.preheader.us.preheader.i.us.i:                   ; preds = %.preheader228.i.us.i
  %wide.trip.count278.i.us.i = zext i32 %i.li to i64 ; 3 uses
  %min.iters.check420 = icmp ult i32 %i.li, 6
  %i.tw = trunc i64 %i.le to i32
  %i.tx = icmp ugt i64 %i.le, 4294967295
  %n.vec426 = and i64 %wide.trip.count278.i.us.i, 4294967292 ; 3 uses
  %cmp.n436 = icmp eq i64 %n.vec426, %wide.trip.count278.i.us.i
  %xtraiter559 = and i64 %9, 1
  %lcmp.mod560.not = icmp eq i64 %xtraiter559, 0
  %i.ty = add nsw i64 %9, -1
  br label %.preheader.us.i.us.i

.preheader.us.i.us.i:                             ; preds = %._crit_edge.us253.i.us.i, %.preheader.us.preheader.i.us.i
  %.0205251.us.i.us.i = phi i32 [ %i.wx, %._crit_edge.us253.i.us.i ], [ 0, %.preheader.us.preheader.i.us.i ] ; 2 uses
  %.0208250.us.i.us.i = phi i64 [ %.lcssa330, %._crit_edge.us253.i.us.i ], [ 0, %.preheader.us.preheader.i.us.i ] ; 4 uses
  %i.tz = mul i32 %.0205251.us.i.us.i, %i.jh      ; 6 uses
  br i1 %min.iters.check420, label %scalar.ph419.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.us.i.us.i
  %i.ua = xor i32 %i.tz, -1
  %i.ub = icmp ult i32 %i.ua, %i.tw
  %i.uc = or i1 %i.ub, %i.tx
  br i1 %i.uc, label %scalar.ph419.preheader, label %vector.memcheck421

vector.memcheck421:                               ; preds = %vector.scevcheck
  %i.ud = zext i32 %i.tz to i64
  %17 = shl nuw nsw i64 %i.ud, 1                  ; 2 uses
  %18 = add nuw nsw i64 %14, %17                  ; 2 uses
  %i.ue = getelementptr i8, ptr %i.hi, i64 %18
  %i.uf = add nuw nsw i64 %13, %17                ; 2 uses
  %i.ug = getelementptr i8, ptr %i.hi, i64 %i.uf
  %i.uh = getelementptr i8, ptr %i.jf, i64 %18
  %i.ui = getelementptr i8, ptr %i.jf, i64 %i.uf
  %bound0422 = icmp ult ptr %i.ue, %i.ui
  %bound1423 = icmp ult ptr %i.uh, %i.ug
  %found.conflict424 = and i1 %bound0422, %bound1423
  br i1 %found.conflict424, label %scalar.ph419.preheader, label %vector.ph425

vector.ph425:                                     ; preds = %vector.memcheck421
  %i.uj = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.0208250.us.i.us.i, i64 0
  br label %vector.body427

vector.body427:                                   ; preds = %vector.body427, %vector.ph425
  %index428 = phi i64 [ 0, %vector.ph425 ], [ %index.next434, %vector.body427 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.uj, %vector.ph425 ], [ %i.vd, %vector.body427 ]
  %vec.phi429 = phi <2 x i64> [ zeroinitializer, %vector.ph425 ], [ %i.ve, %vector.body427 ]
  %i.uk = trunc nuw i64 %index428 to i32
  %i.ul = add i32 %i.tz, %i.uk
  %i.um = zext i32 %i.ul to i64                   ; 2 uses
  %i.un = getelementptr inbounds nuw [2 x i8], ptr %i.lm, i64 %i.um ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 4
  %wide.load430 = load <2 x i16>, ptr %i.un, align 2, !tbaa !57, !alias.scope !154 ; 2 uses
  %wide.load431 = load <2 x i16>, ptr %i.uo, align 2, !tbaa !57, !alias.scope !154 ; 2 uses
  %i.up = sext <2 x i16> %wide.load430 to <2 x i32>
  %i.uq = sext <2 x i16> %wide.load431 to <2 x i32>
  %i.ur = getelementptr inbounds nuw [2 x i8], ptr %i.ln, i64 %i.um ; 3 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 4 ; 2 uses
  %wide.load432 = load <2 x i16>, ptr %i.ur, align 2, !tbaa !57, !alias.scope !155, !noalias !154
  %wide.load433 = load <2 x i16>, ptr %i.us, align 2, !tbaa !57, !alias.scope !155, !noalias !154
  %i.ut = sext <2 x i16> %wide.load432 to <2 x i32>
  %i.uu = sext <2 x i16> %wide.load433 to <2 x i32>
  %i.uv = sub nsw <2 x i32> %i.up, %i.ut
  %i.uw = sub nsw <2 x i32> %i.uq, %i.uu
  %i.ux = call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.uv, i1 true)
  %i.uy = call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.uw, i1 true)
  %i.uz = shl nuw nsw <2 x i32> %i.ux, splat (i32 1)
  %i.va = shl nuw nsw <2 x i32> %i.uy, splat (i32 1)
  %i.vb = zext nneg <2 x i32> %i.uz to <2 x i64>
  %i.vc = zext nneg <2 x i32> %i.va to <2 x i64>
  %i.vd = add <2 x i64> %vec.phi, %i.vb           ; 2 uses
  %i.ve = add <2 x i64> %vec.phi429, %i.vc        ; 2 uses
  store <2 x i16> %wide.load430, ptr %i.ur, align 2, !tbaa !57, !alias.scope !155, !noalias !154
  store <2 x i16> %wide.load431, ptr %i.us, align 2, !tbaa !57, !alias.scope !155, !noalias !154
  %index.next434 = add nuw i64 %index428, 4       ; 2 uses
  %i.vf = icmp eq i64 %index.next434, %n.vec426
  br i1 %i.vf, label %middle.block435, label %vector.body427, !llvm.loop !114

middle.block435:                                  ; preds = %vector.body427
  %bin.rdx = add <2 x i64> %i.ve, %i.vd
  %i.vg = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n436, label %._crit_edge.us253.i.us.i, label %scalar.ph419.preheader

scalar.ph419.preheader:                           ; preds = %vector.memcheck421, %vector.scevcheck, %.preheader.us.i.us.i, %middle.block435
  %indvars.iv275.i.us.i.ph = phi i64 [ 0, %vector.memcheck421 ], [ 0, %vector.scevcheck ], [ 0, %.preheader.us.i.us.i ], [ %n.vec426, %middle.block435 ] ; 4 uses
  %.1248.us.i.us.i.ph = phi i64 [ %.0208250.us.i.us.i, %vector.memcheck421 ], [ %.0208250.us.i.us.i, %vector.scevcheck ], [ %.0208250.us.i.us.i, %.preheader.us.i.us.i ], [ %i.vg, %middle.block435 ] ; 2 uses
  br i1 %lcmp.mod560.not, label %scalar.ph419.prol.loopexit, label %scalar.ph419.prol

scalar.ph419.prol:                                ; preds = %scalar.ph419.preheader
  %i.vh = trunc nuw i64 %indvars.iv275.i.us.i.ph to i32
  %i.vi = add i32 %i.tz, %i.vh
  %i.vj = zext i32 %i.vi to i64                   ; 2 uses
  %i.vk = getelementptr inbounds nuw [2 x i8], ptr %i.lm, i64 %i.vj
  %i.vl = load i16, ptr %i.vk, align 2, !tbaa !57 ; 2 uses
  %i.vm = sext i16 %i.vl to i32
  %i.vn = getelementptr inbounds nuw [2 x i8], ptr %i.ln, i64 %i.vj ; 2 uses
  %i.vo = load i16, ptr %i.vn, align 2, !tbaa !57
  %i.vp = sext i16 %i.vo to i32
  %i.vq = sub nsw i32 %i.vm, %i.vp
  %i.vr = call i32 @llvm.abs.i32(i32 %i.vq, i1 true)
  %i.vs = shl nuw nsw i32 %i.vr, 1
  %i.vt = zext nneg i32 %i.vs to i64
  %i.vu = add i64 %.1248.us.i.us.i.ph, %i.vt      ; 2 uses
  store i16 %i.vl, ptr %i.vn, align 2, !tbaa !57
  %indvars.iv.next276.i.us.i.prol = or disjoint i64 %indvars.iv275.i.us.i.ph, 1
  br label %scalar.ph419.prol.loopexit

scalar.ph419.prol.loopexit:                       ; preds = %scalar.ph419.prol, %scalar.ph419.preheader
  %.lcssa555.unr = phi i64 [ poison, %scalar.ph419.preheader ], [ %i.vu, %scalar.ph419.prol ]
  %indvars.iv275.i.us.i.unr = phi i64 [ %indvars.iv275.i.us.i.ph, %scalar.ph419.preheader ], [ %indvars.iv.next276.i.us.i.prol, %scalar.ph419.prol ]
  %.1248.us.i.us.i.unr = phi i64 [ %.1248.us.i.us.i.ph, %scalar.ph419.preheader ], [ %i.vu, %scalar.ph419.prol ]
  %i.vv = icmp eq i64 %indvars.iv275.i.us.i.ph, %i.ty
  br i1 %i.vv, label %._crit_edge.us253.i.us.i, label %scalar.ph419.preheader.new

scalar.ph419.preheader.new:                       ; preds = %scalar.ph419.prol.loopexit
  %invariant.op = add i32 1, %i.tz
  br label %scalar.ph419

scalar.ph419:                                     ; preds = %scalar.ph419, %scalar.ph419.preheader.new
  %indvars.iv275.i.us.i = phi i64 [ %indvars.iv275.i.us.i.unr, %scalar.ph419.preheader.new ], [ %indvars.iv.next276.i.us.i.1, %scalar.ph419 ] ; 3 uses
  %.1248.us.i.us.i = phi i64 [ %.1248.us.i.us.i.unr, %scalar.ph419.preheader.new ], [ %i.ww, %scalar.ph419 ]
  %i.vw = trunc nuw i64 %indvars.iv275.i.us.i to i32
  %i.vx = add i32 %i.tz, %i.vw
  %i.vy = zext i32 %i.vx to i64                   ; 2 uses
  %i.vz = getelementptr inbounds nuw [2 x i8], ptr %i.lm, i64 %i.vy
  %i.wa = load i16, ptr %i.vz, align 2, !tbaa !57 ; 2 uses
  %i.wb = sext i16 %i.wa to i32
  %i.wc = getelementptr inbounds nuw [2 x i8], ptr %i.ln, i64 %i.vy ; 2 uses
  %i.wd = load i16, ptr %i.wc, align 2, !tbaa !57
  %i.we = sext i16 %i.wd to i32
  %i.wf = sub nsw i32 %i.wb, %i.we
  %i.wg = call i32 @llvm.abs.i32(i32 %i.wf, i1 true)
  %i.wh = shl nuw nsw i32 %i.wg, 1
  %i.wi = zext nneg i32 %i.wh to i64
  %i.wj = add i64 %.1248.us.i.us.i, %i.wi
  store i16 %i.wa, ptr %i.wc, align 2, !tbaa !57
  %i.wk = trunc i64 %indvars.iv275.i.us.i to i32
  %.reass = add i32 %i.wk, %invariant.op
  %i.wl = zext i32 %.reass to i64                 ; 2 uses
  %i.wm = getelementptr inbounds nuw [2 x i8], ptr %i.lm, i64 %i.wl
  %i.wn = load i16, ptr %i.wm, align 2, !tbaa !57 ; 2 uses
  %i.wo = sext i16 %i.wn to i32
  %i.wp = getelementptr inbounds nuw [2 x i8], ptr %i.ln, i64 %i.wl ; 2 uses
  %i.wq = load i16, ptr %i.wp, align 2, !tbaa !57
  %i.wr = sext i16 %i.wq to i32
  %i.ws = sub nsw i32 %i.wo, %i.wr
  %i.wt = call i32 @llvm.abs.i32(i32 %i.ws, i1 true)
  %i.wu = shl nuw nsw i32 %i.wt, 1
  %i.wv = zext nneg i32 %i.wu to i64
  %i.ww = add i64 %i.wj, %i.wv                    ; 2 uses
  store i16 %i.wn, ptr %i.wp, align 2, !tbaa !57
  %indvars.iv.next276.i.us.i.1 = add nuw nsw i64 %indvars.iv275.i.us.i, 2 ; 2 uses
  %exitcond279.not.i.us.i.1 = icmp eq i64 %indvars.iv.next276.i.us.i.1, %wide.trip.count278.i.us.i
  br i1 %exitcond279.not.i.us.i.1, label %._crit_edge.us253.i.us.i, label %scalar.ph419, !llvm.loop !115

._crit_edge.us253.i.us.i:                         ; preds = %scalar.ph419.prol.loopexit, %scalar.ph419, %middle.block435
  %.lcssa330 = phi i64 [ %i.vg, %middle.block435 ], [ %.lcssa555.unr, %scalar.ph419.prol.loopexit ], [ %i.ww, %scalar.ph419 ] ; 2 uses
  %i.wx = add nuw i32 %.0205251.us.i.us.i, 1      ; 2 uses
  %exitcond280.not.i.us.i = icmp eq i32 %i.wx, %i.kc
  br i1 %exitcond280.not.i.us.i, label %.loopexit.i.us.i, label %.preheader.us.i.us.i, !llvm.loop !116

bb.ag:                                            ; preds = %.loopexit234.i.us.i
  br i1 %i.rg, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.wy = load ptr, ptr %i.jp, align 8, !tbaa !55
  %i.wz = call i64 %i.wy(i32 noundef %i.li, i32 noundef %i.kc, ptr noundef %i.lm, ptr noundef %i.ln, ptr noundef %i.lo, i32 noundef %i.jh) #13, !inline_history !103
  br label %.loopexit.i.us.i

bb.ai:                                            ; preds = %bb.ag
  %i.xa = load ptr, ptr %i.jq, align 8, !tbaa !54
  %i.xb = call i64 %i.xa(i32 noundef %i.li, i32 noundef %i.kc, ptr noundef %i.lm, ptr noundef %i.ln, i32 noundef %i.jh) #13, !inline_history !103
  br label %.loopexit.i.us.i

.loopexit.i.us.i:                                 ; preds = %._crit_edge.us245.i.us.i, %._crit_edge.us253.i.us.i, %bb.ai, %bb.ah, %.preheader228.i.us.i, %.preheader230.i.us.i
  %.4.i.us.i = phi i64 [ %i.xb, %bb.ai ], [ %i.wz, %bb.ah ], [ 0, %.preheader230.i.us.i ], [ 0, %.preheader228.i.us.i ], [ %.lcssa330, %._crit_edge.us253.i.us.i ], [ %.lcssa329, %._crit_edge.us245.i.us.i ]
  %i.xc = uitofp nsz i64 %.4.i.us.i to double
  %i.xd = uitofp nsz i32 %i.li to double
  %i.xe = fmul nnan nsz double %i.km, %i.xd
  %i.xf = fdiv nsz double %i.xc, %i.xe
  %i.xg = fadd nsz double %i.rf, %i.xf            ; 2 uses
  %i.xh = add i32 %i.lj, -6
  %i.xi = shl nuw i32 1, %i.xh
  %i.xj = sitofp nsz i32 %i.xi to double          ; 2 uses
  %i.xk = fcmp nsz olt double %i.xg, %i.xj
  %storemerge.i.us.i = select i1 %i.xk, double %i.xj, double %i.xg ; 2 uses
  %i.xl = fmul nsz double %storemerge.i.us.i, %storemerge.i.us.i
  %i.xm = call nsz double @llvm.sqrt.f64(double %i.xl)
  br label %calc_squared_error_and_weight.exit.us.i

calc_squared_error_and_weight.exit.us.i:          ; preds = %.loopexit.i.us.i, %calc_squared_error.exit.i.us.i
  %.0284.us.i = phi double [ %i.xm, %.loopexit.i.us.i ], [ 1.000000e+00, %calc_squared_error.exit.i.us.i ]
  %i.xn = zext i32 %.1238313.us.i to i64          ; 2 uses
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.xn
  store double %.012.lcssa.i.i.us.i, ptr %i.xo, align 8, !tbaa !36
  %i.xp = fdiv nsz double 1.000000e+00, %.0284.us.i ; 5 uses
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.xn ; 2 uses
  store double %i.xp, ptr %i.xq, align 8, !tbaa !36
  br i1 %i.jr, label %bb.aj, label %.thread288.us.i

bb.aj:                                            ; preds = %calc_squared_error_and_weight.exit.us.i
  br i1 %.not.i.us.i, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.xr = icmp ugt i32 %.0242312.us.i, %spec.select.i
  br i1 %i.xr, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.xs = add i32 %.1238313.us.i, -2
  %i.xt = zext i32 %i.xs to i64
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.xt
  %i.xv = load double, ptr %i.xu, align 8, !tbaa !36 ; 2 uses
  %i.xw = fcmp nsz ogt double %i.xv, %i.xp
  %..us.i = select nsz i1 %i.xw, double %i.xv, double %i.xp
  br label %bb.ao

bb.am:                                            ; preds = %bb.aj
  %i.xx = icmp ugt i32 %.1238313.us.i, 1
  br i1 %i.xx, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.xy = add i32 %.1238313.us.i, -2
  %i.xz = zext i32 %i.xy to i64
  %i.ya = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.xz
  %i.yb = load double, ptr %i.ya, align 8, !tbaa !36
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al, %bb.ak
  %.0232.us.i = phi nsz double [ 0.000000e+00, %bb.am ], [ %i.yb, %bb.an ], [ %..us.i, %bb.al ], [ %i.xp, %bb.ak ] ; 3 uses
  %i.yc = icmp ule i32 %.1238313.us.i, %i.hy      ; 2 uses
  br i1 %i.yc, label %bb.ap, label %.thread.us.i

.thread.us.i:                                     ; preds = %bb.ao
  %i.yd = add i32 %.1238313.us.i, %i.js
end_hunk_0
