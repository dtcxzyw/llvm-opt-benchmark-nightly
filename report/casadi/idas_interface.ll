Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/idas_interface?download=true
inline.NumInlined: 1656
inline.NumDeleted: 527
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 55
begin_hunk_0_@_ZN6casadi13IdasInterface7psolveFEdP17_generic_N_VectorS2_S2_S2_S2_ddPvS2_:bb.a
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !433 ; 11 uses
  %i.gz = icmp sgt i64 %i.gy, 0
  br i1 %i.gz, label %.lr.ph.i154.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit161

.lr.ph.i154.preheader:                            ; preds = %.preheader16.i153
  %min.iters.check370 = icmp ult i64 %i.gy, 18
  br i1 %min.iters.check370, label %.lr.ph.i154.preheader493, label %vector.memcheck367

vector.memcheck367:                               ; preds = %.lr.ph.i154.preheader
  %i.ha = shl i64 %i.ey, 3
  %i.hb = add i64 %i.ha, %i.ex
  %i.hc = shl i64 %i.fd, 3
  %i.hd = add i64 %i.hc, %i.fb
  %i.he = sub i64 %i.hd, %i.hb
  %diff.check368 = icmp ugt i64 %i.he, -32
  br i1 %diff.check368, label %.lr.ph.i154.preheader493, label %vector.ph371

vector.ph371:                                     ; preds = %vector.memcheck367
  %n.vec372 = and i64 %i.gy, 9223372036854775804  ; 4 uses
  %i.hf = shl i64 %n.vec372, 3                    ; 2 uses
  %i.hg = getelementptr i8, ptr %i.ez, i64 %i.hf
  %i.hh = getelementptr i8, ptr %i.gw, i64 %i.hf
  br label %vector.body373

vector.body373:                                   ; preds = %vector.body373, %vector.ph371
  %index374 = phi i64 [ 0, %vector.ph371 ], [ %index.next379, %vector.body373 ] ; 2 uses
  %i.hi = shl i64 %index374, 3                    ; 2 uses
  %next.gep375 = getelementptr i8, ptr %i.ez, i64 %i.hi ; 2 uses
  %next.gep376 = getelementptr i8, ptr %i.gw, i64 %i.hi ; 2 uses
  %i.hj = getelementptr i8, ptr %next.gep376, i64 16
  %wide.load377 = load <2 x double>, ptr %next.gep376, align 8, !tbaa !136
  %wide.load378 = load <2 x double>, ptr %i.hj, align 8, !tbaa !136
  %i.hk = getelementptr i8, ptr %next.gep375, i64 16
  store <2 x double> %wide.load377, ptr %next.gep375, align 8, !tbaa !136
  store <2 x double> %wide.load378, ptr %i.hk, align 8, !tbaa !136
  %index.next379 = add nuw i64 %index374, 4       ; 2 uses
  %i.hl = icmp eq i64 %index.next379, %n.vec372
  br i1 %i.hl, label %middle.block380, label %vector.body373, !llvm.loop !403

middle.block380:                                  ; preds = %vector.body373
  %cmp.n381 = icmp eq i64 %i.gy, %n.vec372
  br i1 %cmp.n381, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit161, label %.lr.ph.i154.preheader493

.lr.ph.i154.preheader493:                         ; preds = %vector.memcheck367, %.lr.ph.i154.preheader, %middle.block380
  %.020.i155.ph = phi i64 [ 0, %vector.memcheck367 ], [ 0, %.lr.ph.i154.preheader ], [ %n.vec372, %middle.block380 ] ; 4 uses
  %.01019.i156.ph = phi ptr [ %i.ez, %vector.memcheck367 ], [ %i.ez, %.lr.ph.i154.preheader ], [ %i.hg, %middle.block380 ] ; 2 uses
  %.01218.i157.ph = phi ptr [ %i.gw, %vector.memcheck367 ], [ %i.gw, %.lr.ph.i154.preheader ], [ %i.hh, %middle.block380 ] ; 2 uses
  %i.hm = sub nsw i64 %i.gy, %.020.i155.ph
  %xtraiter514 = and i64 %i.hm, 7                 ; 2 uses
  %lcmp.mod515.not = icmp eq i64 %xtraiter514, 0
  br i1 %lcmp.mod515.not, label %.lr.ph.i154.prol.loopexit, label %.lr.ph.i154.prol

.lr.ph.i154.prol:                                 ; preds = %.lr.ph.i154.preheader493, %.lr.ph.i154.prol
  %.020.i155.prol = phi i64 [ %i.hq, %.lr.ph.i154.prol ], [ %.020.i155.ph, %.lr.ph.i154.preheader493 ]
  %.01019.i156.prol = phi ptr [ %i.hp, %.lr.ph.i154.prol ], [ %.01019.i156.ph, %.lr.ph.i154.preheader493 ] ; 2 uses
  %.01218.i157.prol = phi ptr [ %i.hn, %.lr.ph.i154.prol ], [ %.01218.i157.ph, %.lr.ph.i154.preheader493 ] ; 2 uses
  %prol.iter516 = phi i64 [ %prol.iter516.next, %.lr.ph.i154.prol ], [ 0, %.lr.ph.i154.preheader493 ]
  %i.hn = getelementptr inbounds nuw i8, ptr %.01218.i157.prol, i64 8 ; 2 uses
  %i.ho = load double, ptr %.01218.i157.prol, align 8, !tbaa !136
  %i.hp = getelementptr inbounds nuw i8, ptr %.01019.i156.prol, i64 8 ; 2 uses
  store double %i.ho, ptr %.01019.i156.prol, align 8, !tbaa !136
  %i.hq = add nuw nsw i64 %.020.i155.prol, 1      ; 2 uses
  %prol.iter516.next = add i64 %prol.iter516, 1   ; 2 uses
  %prol.iter516.cmp.not = icmp eq i64 %prol.iter516.next, %xtraiter514
  br i1 %prol.iter516.cmp.not, label %.lr.ph.i154.prol.loopexit, label %.lr.ph.i154.prol, !llvm.loop !404

.lr.ph.i154.prol.loopexit:                        ; preds = %.lr.ph.i154.prol, %.lr.ph.i154.preheader493
  %.020.i155.unr = phi i64 [ %.020.i155.ph, %.lr.ph.i154.preheader493 ], [ %i.hq, %.lr.ph.i154.prol ]
  %.01019.i156.unr = phi ptr [ %.01019.i156.ph, %.lr.ph.i154.preheader493 ], [ %i.hp, %.lr.ph.i154.prol ]
  %.01218.i157.unr = phi ptr [ %.01218.i157.ph, %.lr.ph.i154.preheader493 ], [ %i.hn, %.lr.ph.i154.prol ]
  %i.hr = sub nsw i64 %.020.i155.ph, %i.gy
  %i.hs = icmp ugt i64 %i.hr, -8
  br i1 %i.hs, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit161, label %.lr.ph.i154

.preheader.i159:                                  ; preds = %.preheader.i148, %.lr.ph23.preheader.i149
  %i.ht = getelementptr inbounds nuw i8, ptr %i.c, i64 1648 ; 3 uses
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !433 ; 4 uses
  %i.hv = icmp sgt i64 %i.hu, 0
  br i1 %i.hv, label %.lr.ph23.preheader.i160, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit161

.lr.ph23.preheader.i160:                          ; preds = %.preheader.i159
  %i.hw = shl nuw i64 %i.hu, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ez, i8 0, i64 %i.hw, i1 false), !tbaa !136
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit161

.lr.ph.i154:                                      ; preds = %.lr.ph.i154.prol.loopexit, %.lr.ph.i154
  %.020.i155 = phi i64 [ %i.iv, %.lr.ph.i154 ], [ %.020.i155.unr, %.lr.ph.i154.prol.loopexit ]
  %.01019.i156 = phi ptr [ %i.iu, %.lr.ph.i154 ], [ %.01019.i156.unr, %.lr.ph.i154.prol.loopexit ] ; 9 uses
  %.01218.i157 = phi ptr [ %i.is, %.lr.ph.i154 ], [ %.01218.i157.unr, %.lr.ph.i154.prol.loopexit ] ; 9 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.01218.i157, i64 8
  %i.hy = load double, ptr %.01218.i157, align 8, !tbaa !136
  %i.hz = getelementptr inbounds nuw i8, ptr %.01019.i156, i64 8
  store double %i.hy, ptr %.01019.i156, align 8, !tbaa !136
  %i.ia = getelementptr inbounds nuw i8, ptr %.01218.i157, i64 16
  %i.ib = load double, ptr %i.hx, align 8, !tbaa !136
  %i.ic = getelementptr inbounds nuw i8, ptr %.01019.i156, i64 16
  store double %i.ib, ptr %i.hz, align 8, !tbaa !136
  %i.id = getelementptr inbounds nuw i8, ptr %.01218.i157, i64 24
  %i.ie = load double, ptr %i.ia, align 8, !tbaa !136
  %i.if = getelementptr inbounds nuw i8, ptr %.01019.i156, i64 24
  store double %i.ie, ptr %i.ic, align 8, !tbaa !136
  %i.ig = getelementptr inbounds nuw i8, ptr %.01218.i157, i64 32
  %i.ih = load double, ptr %i.id, align 8, !tbaa !136
  %i.ii = getelementptr inbounds nuw i8, ptr %.01019.i156, i64 32
  store double %i.ih, ptr %i.if, align 8, !tbaa !136
  %i.ij = getelementptr inbounds nuw i8, ptr %.01218.i157, i64 40
  %i.ik = load double, ptr %i.ig, align 8, !tbaa !136
  %i.il = getelementptr inbounds nuw i8, ptr %.01019.i156, i64 40
  store double %i.ik, ptr %i.ii, align 8, !tbaa !136
  %i.im = getelementptr inbounds nuw i8, ptr %.01218.i157, i64 48
  %i.in = load double, ptr %i.ij, align 8, !tbaa !136
  %i.io = getelementptr inbounds nuw i8, ptr %.01019.i156, i64 48
  store double %i.in, ptr %i.il, align 8, !tbaa !136
  %i.ip = getelementptr inbounds nuw i8, ptr %.01218.i157, i64 56
  %i.iq = load double, ptr %i.im, align 8, !tbaa !136
  %i.ir = getelementptr inbounds nuw i8, ptr %.01019.i156, i64 56
  store double %i.iq, ptr %i.io, align 8, !tbaa !136
  %i.is = getelementptr inbounds nuw i8, ptr %.01218.i157, i64 64
  %i.it = load double, ptr %i.ip, align 8, !tbaa !136
  %i.iu = getelementptr inbounds nuw i8, ptr %.01019.i156, i64 64
  store double %i.it, ptr %i.ir, align 8, !tbaa !136
  %i.iv = add nuw nsw i64 %.020.i155, 8           ; 2 uses
  %exitcond.not.i158.7 = icmp eq i64 %i.iv, %i.gy
  br i1 %exitcond.not.i158.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit161, label %.lr.ph.i154, !llvm.loop !405

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit161:    ; preds = %.lr.ph.i154.prol.loopexit, %.lr.ph.i154, %middle.block380, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit150, %.preheader16.i153, %.preheader.i159, %.lr.ph23.preheader.i160
  %i.iw = phi i64 [ %i.hu, %.lr.ph23.preheader.i160 ], [ %i.gv, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit150 ], [ %i.gy, %.preheader16.i153 ], [ %i.hu, %.preheader.i159 ], [ %i.gy, %middle.block380 ], [ %i.gy, %.lr.ph.i154 ], [ %i.gy, %.lr.ph.i154.prol.loopexit ] ; 3 uses
  %i.ix = phi ptr [ %i.ht, %.lr.ph23.preheader.i160 ], [ %i.gu, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit150 ], [ %i.gx, %.preheader16.i153 ], [ %i.ht, %.preheader.i159 ], [ %i.gx, %middle.block380 ], [ %i.gx, %.lr.ph.i154 ], [ %i.gx, %.lr.ph.i154.prol.loopexit ] ; 2 uses
  %i.iy = load i64, ptr %i.l, align 8, !tbaa !236 ; 2 uses
  %i.iz = icmp sgt i64 %i.iy, 0
  br i1 %i.iz, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit161
  %i.ja = getelementptr inbounds nuw i8, ptr %i.c, i64 2129
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !237, !range !76, !noundef !77
  %i.jc = trunc nuw i8 %i.jb to i1
  br i1 %i.jc, label %bb.i, label %.loopexit202

bb.i:                                             ; preds = %bb.h
  %i.jd = sub nsw i64 %i.ey, %i.fd                ; 2 uses
  %i.je = icmp sgt i64 %i.jd, 0
  %or.cond.i = and i1 %.not.i140, %i.je
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.jf = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.fd
  %i.jg = shl nuw i64 %i.jd, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.jf, i8 0, i64 %i.jg, i1 false), !tbaa !136
  br label %_ZN6casadi12casadi_clearIdEEvPT_x.exit

_ZN6casadi12casadi_clearIdEEvPT_x.exit:           ; preds = %bb.i, %.lr.ph.preheader.i
  %i.jh = getelementptr inbounds nuw i8, ptr %i.c, i64 1624
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !142
  %i.jj = sub nsw i64 %i.ji, %i.iw                ; 2 uses
  %i.jk = icmp sgt i64 %i.jj, 0
  %or.cond.i164 = and i1 %.not.i140, %i.jk
  br i1 %or.cond.i164, label %.lr.ph.preheader.i165, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit166

.lr.ph.preheader.i165:                            ; preds = %_ZN6casadi12casadi_clearIdEEvPT_x.exit
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.iw
  %i.jm = shl nuw i64 %i.jj, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.jl, i8 0, i64 %i.jm, i1 false), !tbaa !136
  br label %_ZN6casadi12casadi_clearIdEEvPT_x.exit166

_ZN6casadi12casadi_clearIdEEvPT_x.exit166:        ; preds = %_ZN6casadi12casadi_clearIdEEvPT_x.exit, %.lr.ph.preheader.i165
  %i.jn = load ptr, ptr %1, align 8, !tbaa !194
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !196 ; 2 uses
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.jp, i64 %i.ey
  %i.jr = getelementptr inbounds nuw i8, ptr %i.a, i64 280 ; 2 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !238 ; 2 uses
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.js, i64 %i.ey
  %i.ju = invoke noundef i32 @_ZNK6casadi17SundialsInterface12calc_jtimesFEPNS_14SundialsMemoryEdPKdS4_S4_S4_PdS5_(ptr noundef nonnull align 8 dereferenceable(2192) %i.c, ptr noundef nonnull %i.a, double noundef %0, ptr noundef %i.jp, ptr noundef %i.jq, ptr noundef %i.ew, ptr noundef %i.ez, ptr noundef %i.js, ptr noundef %i.jt)
          to label %bb.j unwind label %bb.e

bb.j:                                             ; preds = %_ZN6casadi12casadi_clearIdEEvPT_x.exit166
  %.not124 = icmp eq i32 %i.ju, 0
  br i1 %.not124, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.jv = load i64, ptr %i.fc, align 8, !tbaa !432 ; 17 uses
  %i.jw = load i64, ptr %i.ix, align 8, !tbaa !433 ; 16 uses
  %i.jx = load i64, ptr %i.l, align 8, !tbaa !236 ; 8 uses
  %.not125239 = icmp slt i64 %i.jx, 1
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !235 ; 7 uses
  br i1 %.not125239, label %.loopexit202, label %.lr.ph243

.lr.ph243:                                        ; preds = %bb.k
  %i.jy = load ptr, ptr %i.jr, align 8, !tbaa !238 ; 7 uses
  %i.jz = icmp ne ptr %i.jy, null                 ; 2 uses
  %i.ka = icmp sgt i64 %i.jv, 0
  %invariant.op = and i1 %i.jz, %i.ka
  %i.kb = load i64, ptr %i.g, align 8, !tbaa !139 ; 2 uses
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.jy, i64 %i.kb
  %i.kd = icmp sgt i64 %i.jw, 0
  %invariant.op244 = and i1 %i.jz, %i.kd
  %i.ke = shl i64 %i.jv, 4                        ; 2 uses
  %i.kf = shl i64 %i.jw, 3                        ; 3 uses
  %i.kg = getelementptr i8, ptr %.pre, i64 %i.ke
  %scevgep = getelementptr i8, ptr %i.kg, i64 %i.kf
  %i.kh = add i64 %i.jv, %i.jw
  %i.ki = shl i64 %i.kh, 3                        ; 2 uses
  %i.kj = add nsw i64 %i.jx, -1
  %i.kk = mul i64 %i.ki, %i.kj
  %i.kl = shl i64 %i.jw, 4
  %i.km = getelementptr i8, ptr %.pre, i64 %i.kk
  %i.kn = getelementptr i8, ptr %i.km, i64 %i.kl
  %scevgep386 = getelementptr i8, ptr %i.kn, i64 %i.ke
  %i.ko = shl i64 %i.kb, 3                        ; 2 uses
  %i.kp = getelementptr i8, ptr %i.jy, i64 %i.ko
  %scevgep387 = getelementptr i8, ptr %i.kp, i64 %i.kf
  %i.kq = shl i64 %i.jx, 3
  %i.kr = add i64 %i.kq, 8
  %i.ks = mul i64 %i.jw, %i.kr
  %i.kt = getelementptr i8, ptr %i.jy, i64 %i.ks
  %scevgep388 = getelementptr i8, ptr %i.kt, i64 %i.ko
  %i.ku = shl i64 %i.jw, 3                        ; 3 uses
  %i.kv = shl i64 %i.jv, 3                        ; 4 uses
  %10 = getelementptr i8, ptr %.pre, i64 %i.ku
  %scevgep409 = getelementptr i8, ptr %10, i64 %i.kv
  %11 = add i64 %i.kv, %i.ku                      ; 2 uses
  %i.kw = add nsw i64 %i.jx, -1
  %i.kx = mul i64 %11, %i.kw
  %i.ky = shl i64 %i.jv, 4
  %i.kz = getelementptr i8, ptr %.pre, i64 %i.kx
  %i.la = getelementptr i8, ptr %i.kz, i64 %i.ky
  %scevgep410 = getelementptr i8, ptr %i.la, i64 %i.ku
  %scevgep411 = getelementptr i8, ptr %i.jy, i64 %i.kv
  %i.lb = shl i64 %i.jx, 3
  %i.lc = add i64 %i.lb, 8
  %i.ld = mul i64 %i.jv, %i.lc
  %scevgep412 = getelementptr i8, ptr %i.jy, i64 %i.ld
  %min.iters.check419 = icmp ult i64 %i.jv, 6
  %bound0413 = icmp ult ptr %scevgep409, %scevgep412
  %bound1414 = icmp ult ptr %scevgep411, %scevgep410
  %found.conflict415 = and i1 %bound0413, %bound1414
  %i.le = or i64 %i.kv, %11
  %i.lf = icmp slt i64 %i.le, 0
  %i.lg = or i1 %found.conflict415, %i.lf
  %n.vec421 = and i64 %i.jv, 9223372036854775804  ; 4 uses
  %i.lh = shl i64 %n.vec421, 3                    ; 2 uses
  %cmp.n432 = icmp eq i64 %i.jv, %n.vec421
  %xtraiter517 = and i64 %i.jv, 3                 ; 2 uses
  %lcmp.mod518.not = icmp eq i64 %xtraiter517, 0
  %min.iters.check391 = icmp ult i64 %i.jw, 6
  %bound0 = icmp ult ptr %scevgep, %scevgep388
  %bound1 = icmp ult ptr %scevgep387, %scevgep386
  %found.conflict = and i1 %bound0, %bound1
  %i.li = or i64 %i.kf, %i.ki
  %i.lj = icmp slt i64 %i.li, 0
  %i.lk = or i1 %found.conflict, %i.lj
  %n.vec393 = and i64 %i.jw, 9223372036854775804  ; 4 uses
  %i.ll = shl i64 %n.vec393, 3                    ; 2 uses
  %cmp.n404 = icmp eq i64 %i.jw, %n.vec393
  %xtraiter520 = and i64 %i.jw, 3                 ; 2 uses
  %lcmp.mod521.not = icmp eq i64 %xtraiter520, 0
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph243, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit177
  %indvars.iv291 = phi i64 [ 1, %.lr.ph243 ], [ %indvars.iv.next292, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit177 ] ; 4 uses
  %i.lm = phi ptr [ %.pre, %.lr.ph243 ], [ %.1241, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit177 ] ; 2 uses
  %.pn258 = getelementptr inbounds [8 x i8], ptr %i.lm, i64 %i.jv
  %.1241 = getelementptr inbounds [8 x i8], ptr %.pn258, i64 %i.jw ; 5 uses
  %i.ln = icmp ne ptr %i.lm, null                 ; 2 uses
  %or.cond15.i.reass = and i1 %i.ln, %invariant.op
  br i1 %or.cond15.i.reass, label %.lr.ph.i168.preheader, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit

.lr.ph.i168.preheader:                            ; preds = %bb.l
  %i.lo = mul nuw nsw i64 %indvars.iv291, %i.jv
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.lo ; 3 uses
  %brmerge = select i1 %min.iters.check419, i1 true, i1 %i.lg
  br i1 %brmerge, label %.lr.ph.i168.preheader492, label %vector.ph420

vector.ph420:                                     ; preds = %.lr.ph.i168.preheader
  %i.lq = getelementptr i8, ptr %.1241, i64 %i.lh
  %i.lr = getelementptr i8, ptr %i.lp, i64 %i.lh
  br label %vector.body422

vector.body422:                                   ; preds = %vector.body422, %vector.ph420
  %index423 = phi i64 [ 0, %vector.ph420 ], [ %index.next430, %vector.body422 ] ; 2 uses
  %i.ls = shl i64 %index423, 3                    ; 2 uses
  %next.gep424 = getelementptr i8, ptr %.1241, i64 %i.ls ; 3 uses
  %next.gep425 = getelementptr i8, ptr %i.lp, i64 %i.ls ; 2 uses
  %i.lt = getelementptr i8, ptr %next.gep425, i64 16
  %wide.load426 = load <2 x double>, ptr %next.gep425, align 8, !tbaa !136, !alias.scope !434
  %wide.load427 = load <2 x double>, ptr %i.lt, align 8, !tbaa !136, !alias.scope !434
  %i.lu = getelementptr i8, ptr %next.gep424, i64 16 ; 2 uses
  %wide.load428 = load <2 x double>, ptr %next.gep424, align 8, !tbaa !136, !alias.scope !435, !noalias !434
  %wide.load429 = load <2 x double>, ptr %i.lu, align 8, !tbaa !136, !alias.scope !435, !noalias !434
  %i.lv = fsub <2 x double> %wide.load428, %wide.load426
  %i.lw = fsub <2 x double> %wide.load429, %wide.load427
  store <2 x double> %i.lv, ptr %next.gep424, align 8, !tbaa !136, !alias.scope !435, !noalias !434
  store <2 x double> %i.lw, ptr %i.lu, align 8, !tbaa !136, !alias.scope !435, !noalias !434
  %index.next430 = add nuw i64 %index423, 4       ; 2 uses
  %i.lx = icmp eq i64 %index.next430, %n.vec421
  br i1 %i.lx, label %middle.block431, label %vector.body422, !llvm.loop !409

middle.block431:                                  ; preds = %vector.body422
  br i1 %cmp.n432, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit, label %.lr.ph.i168.preheader492

.lr.ph.i168.preheader492:                         ; preds = %.lr.ph.i168.preheader, %middle.block431
  %.014.i.ph = phi i64 [ %n.vec421, %middle.block431 ], [ 0, %.lr.ph.i168.preheader ] ; 3 uses
  %.0813.i.ph = phi ptr [ %i.lq, %middle.block431 ], [ %.1241, %.lr.ph.i168.preheader ] ; 2 uses
  %.0912.i.ph = phi ptr [ %i.lr, %middle.block431 ], [ %i.lp, %.lr.ph.i168.preheader ] ; 2 uses
  br i1 %lcmp.mod518.not, label %.lr.ph.i168.prol.loopexit, label %.lr.ph.i168.prol

.lr.ph.i168.prol:                                 ; preds = %.lr.ph.i168.preheader492, %.lr.ph.i168.prol
  %.014.i.prol = phi i64 [ %i.md, %.lr.ph.i168.prol ], [ %.014.i.ph, %.lr.ph.i168.preheader492 ]
  %.0813.i.prol = phi ptr [ %i.ma, %.lr.ph.i168.prol ], [ %.0813.i.ph, %.lr.ph.i168.preheader492 ] ; 3 uses
  %.0912.i.prol = phi ptr [ %i.ly, %.lr.ph.i168.prol ], [ %.0912.i.ph, %.lr.ph.i168.preheader492 ] ; 2 uses
  %prol.iter519 = phi i64 [ %prol.iter519.next, %.lr.ph.i168.prol ], [ 0, %.lr.ph.i168.preheader492 ]
  %i.ly = getelementptr inbounds nuw i8, ptr %.0912.i.prol, i64 8 ; 2 uses
  %i.lz = load double, ptr %.0912.i.prol, align 8, !tbaa !136
  %i.ma = getelementptr inbounds nuw i8, ptr %.0813.i.prol, i64 8 ; 2 uses
  %i.mb = load double, ptr %.0813.i.prol, align 8, !tbaa !136
  %i.mc = fsub double %i.mb, %i.lz
  store double %i.mc, ptr %.0813.i.prol, align 8, !tbaa !136
  %i.md = add nuw nsw i64 %.014.i.prol, 1         ; 2 uses
  %prol.iter519.next = add i64 %prol.iter519, 1   ; 2 uses
  %prol.iter519.cmp.not = icmp eq i64 %prol.iter519.next, %xtraiter517
  br i1 %prol.iter519.cmp.not, label %.lr.ph.i168.prol.loopexit, label %.lr.ph.i168.prol, !llvm.loop !410

.lr.ph.i168.prol.loopexit:                        ; preds = %.lr.ph.i168.prol, %.lr.ph.i168.preheader492
  %.014.i.unr = phi i64 [ %.014.i.ph, %.lr.ph.i168.preheader492 ], [ %i.md, %.lr.ph.i168.prol ]
  %.0813.i.unr = phi ptr [ %.0813.i.ph, %.lr.ph.i168.preheader492 ], [ %i.ma, %.lr.ph.i168.prol ]
  %.0912.i.unr = phi ptr [ %.0912.i.ph, %.lr.ph.i168.preheader492 ], [ %i.ly, %.lr.ph.i168.prol ]
  %i.me = sub nsw i64 %.014.i.ph, %i.jv
  %i.mf = icmp ugt i64 %i.me, -4
  br i1 %i.mf, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit, label %.lr.ph.i168

.lr.ph.i168:                                      ; preds = %.lr.ph.i168.prol.loopexit, %.lr.ph.i168
  %.014.i = phi i64 [ %i.na, %.lr.ph.i168 ], [ %.014.i.unr, %.lr.ph.i168.prol.loopexit ]
  %.0813.i = phi ptr [ %i.mx, %.lr.ph.i168 ], [ %.0813.i.unr, %.lr.ph.i168.prol.loopexit ] ; 6 uses
  %.0912.i = phi ptr [ %i.mv, %.lr.ph.i168 ], [ %.0912.i.unr, %.lr.ph.i168.prol.loopexit ] ; 5 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.0912.i, i64 8
  %i.mh = load double, ptr %.0912.i, align 8, !tbaa !136
  %i.mi = getelementptr inbounds nuw i8, ptr %.0813.i, i64 8 ; 2 uses
  %i.mj = load double, ptr %.0813.i, align 8, !tbaa !136
  %i.mk = fsub double %i.mj, %i.mh
  store double %i.mk, ptr %.0813.i, align 8, !tbaa !136
  %i.ml = getelementptr inbounds nuw i8, ptr %.0912.i, i64 16
  %i.mm = load double, ptr %i.mg, align 8, !tbaa !136
  %i.mn = getelementptr inbounds nuw i8, ptr %.0813.i, i64 16 ; 2 uses
  %i.mo = load double, ptr %i.mi, align 8, !tbaa !136
  %i.mp = fsub double %i.mo, %i.mm
  store double %i.mp, ptr %i.mi, align 8, !tbaa !136
  %i.mq = getelementptr inbounds nuw i8, ptr %.0912.i, i64 24
  %i.mr = load double, ptr %i.ml, align 8, !tbaa !136
  %i.ms = getelementptr inbounds nuw i8, ptr %.0813.i, i64 24 ; 2 uses
  %i.mt = load double, ptr %i.mn, align 8, !tbaa !136
  %i.mu = fsub double %i.mt, %i.mr
  store double %i.mu, ptr %i.mn, align 8, !tbaa !136
  %i.mv = getelementptr inbounds nuw i8, ptr %.0912.i, i64 32
  %i.mw = load double, ptr %i.mq, align 8, !tbaa !136
  %i.mx = getelementptr inbounds nuw i8, ptr %.0813.i, i64 32
  %i.my = load double, ptr %i.ms, align 8, !tbaa !136
  %i.mz = fsub double %i.my, %i.mw
  store double %i.mz, ptr %i.ms, align 8, !tbaa !136
  %i.na = add nuw nsw i64 %.014.i, 4              ; 2 uses
  %exitcond.not.i169.3 = icmp eq i64 %i.na, %i.jv
  br i1 %exitcond.not.i169.3, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit, label %.lr.ph.i168, !llvm.loop !411

_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit:    ; preds = %.lr.ph.i168.prol.loopexit, %.lr.ph.i168, %middle.block431, %bb.l
  %or.cond15.i171.reass = and i1 %i.ln, %invariant.op244
  br i1 %or.cond15.i171.reass, label %.lr.ph.i172.preheader, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit177

.lr.ph.i172.preheader:                            ; preds = %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit
  %i.nb = mul nuw nsw i64 %indvars.iv291, %i.jw
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %i.nb ; 3 uses
  %i.nd = getelementptr inbounds [8 x i8], ptr %.1241, i64 %i.jv ; 3 uses
  %brmerge554 = select i1 %min.iters.check391, i1 true, i1 %i.lk
  br i1 %brmerge554, label %.lr.ph.i172.preheader491, label %vector.ph392

vector.ph392:                                     ; preds = %.lr.ph.i172.preheader
  %i.ne = getelementptr i8, ptr %i.nd, i64 %i.ll
  %i.nf = getelementptr i8, ptr %i.nc, i64 %i.ll
  br label %vector.body394

vector.body394:                                   ; preds = %vector.body394, %vector.ph392
  %index395 = phi i64 [ 0, %vector.ph392 ], [ %index.next402, %vector.body394 ] ; 2 uses
  %i.ng = shl i64 %index395, 3                    ; 2 uses
  %next.gep396 = getelementptr i8, ptr %i.nd, i64 %i.ng ; 3 uses
  %next.gep397 = getelementptr i8, ptr %i.nc, i64 %i.ng ; 2 uses
  %i.nh = getelementptr i8, ptr %next.gep397, i64 16
  %wide.load398 = load <2 x double>, ptr %next.gep397, align 8, !tbaa !136, !alias.scope !436
  %wide.load399 = load <2 x double>, ptr %i.nh, align 8, !tbaa !136, !alias.scope !436
  %i.ni = getelementptr i8, ptr %next.gep396, i64 16 ; 2 uses
  %wide.load400 = load <2 x double>, ptr %next.gep396, align 8, !tbaa !136, !alias.scope !437, !noalias !436
  %wide.load401 = load <2 x double>, ptr %i.ni, align 8, !tbaa !136, !alias.scope !437, !noalias !436
  %i.nj = fsub <2 x double> %wide.load400, %wide.load398
  %i.nk = fsub <2 x double> %wide.load401, %wide.load399
  store <2 x double> %i.nj, ptr %next.gep396, align 8, !tbaa !136, !alias.scope !437, !noalias !436
  store <2 x double> %i.nk, ptr %i.ni, align 8, !tbaa !136, !alias.scope !437, !noalias !436
  %index.next402 = add nuw i64 %index395, 4       ; 2 uses
  %i.nl = icmp eq i64 %index.next402, %n.vec393
  br i1 %i.nl, label %middle.block403, label %vector.body394, !llvm.loop !415

middle.block403:                                  ; preds = %vector.body394
  br i1 %cmp.n404, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit177, label %.lr.ph.i172.preheader491

.lr.ph.i172.preheader491:                         ; preds = %.lr.ph.i172.preheader, %middle.block403
  %.014.i173.ph = phi i64 [ %n.vec393, %middle.block403 ], [ 0, %.lr.ph.i172.preheader ] ; 3 uses
  %.0813.i174.ph = phi ptr [ %i.ne, %middle.block403 ], [ %i.nd, %.lr.ph.i172.preheader ] ; 2 uses
  %.0912.i175.ph = phi ptr [ %i.nf, %middle.block403 ], [ %i.nc, %.lr.ph.i172.preheader ] ; 2 uses
  br i1 %lcmp.mod521.not, label %.lr.ph.i172.prol.loopexit, label %.lr.ph.i172.prol

.lr.ph.i172.prol:                                 ; preds = %.lr.ph.i172.preheader491, %.lr.ph.i172.prol
  %.014.i173.prol = phi i64 [ %i.nr, %.lr.ph.i172.prol ], [ %.014.i173.ph, %.lr.ph.i172.preheader491 ]
  %.0813.i174.prol = phi ptr [ %i.no, %.lr.ph.i172.prol ], [ %.0813.i174.ph, %.lr.ph.i172.preheader491 ] ; 3 uses
  %.0912.i175.prol = phi ptr [ %i.nm, %.lr.ph.i172.prol ], [ %.0912.i175.ph, %.lr.ph.i172.preheader491 ] ; 2 uses
  %prol.iter522 = phi i64 [ %prol.iter522.next, %.lr.ph.i172.prol ], [ 0, %.lr.ph.i172.preheader491 ]
  %i.nm = getelementptr inbounds nuw i8, ptr %.0912.i175.prol, i64 8 ; 2 uses
  %i.nn = load double, ptr %.0912.i175.prol, align 8, !tbaa !136
  %i.no = getelementptr inbounds nuw i8, ptr %.0813.i174.prol, i64 8 ; 2 uses
  %i.np = load double, ptr %.0813.i174.prol, align 8, !tbaa !136
  %i.nq = fsub double %i.np, %i.nn
  store double %i.nq, ptr %.0813.i174.prol, align 8, !tbaa !136
  %i.nr = add nuw nsw i64 %.014.i173.prol, 1      ; 2 uses
  %prol.iter522.next = add i64 %prol.iter522, 1   ; 2 uses
  %prol.iter522.cmp.not = icmp eq i64 %prol.iter522.next, %xtraiter520
  br i1 %prol.iter522.cmp.not, label %.lr.ph.i172.prol.loopexit, label %.lr.ph.i172.prol, !llvm.loop !416

.lr.ph.i172.prol.loopexit:                        ; preds = %.lr.ph.i172.prol, %.lr.ph.i172.preheader491
  %.014.i173.unr = phi i64 [ %.014.i173.ph, %.lr.ph.i172.preheader491 ], [ %i.nr, %.lr.ph.i172.prol ]
  %.0813.i174.unr = phi ptr [ %.0813.i174.ph, %.lr.ph.i172.preheader491 ], [ %i.no, %.lr.ph.i172.prol ]
  %.0912.i175.unr = phi ptr [ %.0912.i175.ph, %.lr.ph.i172.preheader491 ], [ %i.nm, %.lr.ph.i172.prol ]
  %i.ns = sub nsw i64 %.014.i173.ph, %i.jw
  %i.nt = icmp ugt i64 %i.ns, -4
  br i1 %i.nt, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit177, label %.lr.ph.i172

.lr.ph.i172:                                      ; preds = %.lr.ph.i172.prol.loopexit, %.lr.ph.i172
  %.014.i173 = phi i64 [ %i.oo, %.lr.ph.i172 ], [ %.014.i173.unr, %.lr.ph.i172.prol.loopexit ]
  %.0813.i174 = phi ptr [ %i.ol, %.lr.ph.i172 ], [ %.0813.i174.unr, %.lr.ph.i172.prol.loopexit ] ; 6 uses
  %.0912.i175 = phi ptr [ %i.oj, %.lr.ph.i172 ], [ %.0912.i175.unr, %.lr.ph.i172.prol.loopexit ] ; 5 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.0912.i175, i64 8
  %i.nv = load double, ptr %.0912.i175, align 8, !tbaa !136
  %i.nw = getelementptr inbounds nuw i8, ptr %.0813.i174, i64 8 ; 2 uses
  %i.nx = load double, ptr %.0813.i174, align 8, !tbaa !136
  %i.ny = fsub double %i.nx, %i.nv
  store double %i.ny, ptr %.0813.i174, align 8, !tbaa !136
  %i.nz = getelementptr inbounds nuw i8, ptr %.0912.i175, i64 16
  %i.oa = load double, ptr %i.nu, align 8, !tbaa !136
  %i.ob = getelementptr inbounds nuw i8, ptr %.0813.i174, i64 16 ; 2 uses
  %i.oc = load double, ptr %i.nw, align 8, !tbaa !136
  %i.od = fsub double %i.oc, %i.oa
  store double %i.od, ptr %i.nw, align 8, !tbaa !136
  %i.oe = getelementptr inbounds nuw i8, ptr %.0912.i175, i64 24
  %i.of = load double, ptr %i.nz, align 8, !tbaa !136
  %i.og = getelementptr inbounds nuw i8, ptr %.0813.i174, i64 24 ; 2 uses
  %i.oh = load double, ptr %i.ob, align 8, !tbaa !136
  %i.oi = fsub double %i.oh, %i.of
  store double %i.oi, ptr %i.ob, align 8, !tbaa !136
  %i.oj = getelementptr inbounds nuw i8, ptr %.0912.i175, i64 32
  %i.ok = load double, ptr %i.oe, align 8, !tbaa !136
  %i.ol = getelementptr inbounds nuw i8, ptr %.0813.i174, i64 32
  %i.om = load double, ptr %i.og, align 8, !tbaa !136
  %i.on = fsub double %i.om, %i.ok
  store double %i.on, ptr %i.og, align 8, !tbaa !136
  %i.oo = add nuw nsw i64 %.014.i173, 4           ; 2 uses
  %exitcond.not.i176.3 = icmp eq i64 %i.oo, %i.jw
  br i1 %exitcond.not.i176.3, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit177, label %.lr.ph.i172, !llvm.loop !417

_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit177: ; preds = %.lr.ph.i172.prol.loopexit, %.lr.ph.i172, %middle.block403, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1
  %exitcond294 = icmp eq i64 %indvars.iv291, %i.jx
  br i1 %exitcond294, label %.loopexit202, label %bb.l, !llvm.loop !418

.loopexit202:                                     ; preds = %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit177, %bb.k, %bb.h
  %i.op = phi i64 [ %i.iy, %bb.h ], [ %i.jx, %bb.k ], [ %i.jx, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit177 ]
  %i.oq = phi i64 [ %i.iw, %bb.h ], [ %i.jw, %bb.k ], [ %i.jw, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit177 ]
  %i.or = phi i64 [ %i.fd, %bb.h ], [ %i.jv, %bb.k ], [ %i.jv, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit177 ]
  %i.os = phi ptr [ %i.fa, %bb.h ], [ %.pre, %bb.k ], [ %.pre, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit177 ]
  %i.ot = load ptr, ptr %i.aw, align 8, !tbaa !232
  %i.ou = getelementptr inbounds [8 x i8], ptr %i.os, i64 %i.or
  %i.ov = getelementptr inbounds [8 x i8], ptr %i.ou, i64 %i.oq
  %i.ow = load i32, ptr %i.ay, align 8, !tbaa !233
  %i.ox = invoke noundef i32 @_ZNK6casadi6Linsol5solveEPKdPdxbi(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef %i.ot, ptr noundef %i.ov, i64 noundef %i.op, i1 noundef zeroext false, i32 noundef %i.ow)
          to label %bb.m unwind label %bb.e

bb.m:                                             ; preds = %.loopexit202
  %.not127 = icmp eq i32 %i.ox, 0
  br i1 %.not127, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.oy = load i64, ptr %i.fc, align 8, !tbaa !432 ; 16 uses
  %i.oz = load i64, ptr %i.ix, align 8, !tbaa !433 ; 16 uses
  %i.pa = load i64, ptr %i.l, align 8, !tbaa !236 ; 6 uses
  %.not128246 = icmp slt i64 %i.pa, 1
  br i1 %.not128246, label %.loopexit, label %.lr.ph250

.lr.ph250:                                        ; preds = %bb.n
  %i.pb = load ptr, ptr %i.j, align 8, !tbaa !235 ; 5 uses
  %i.pc = icmp sgt i64 %i.oy, 0                   ; 2 uses
  %i.pd = shl nuw i64 %i.oy, 3
  %i.pe = icmp sgt i64 %i.oz, 0                   ; 2 uses
  %i.pf = shl nuw i64 %i.oz, 3
  %i.pg = shl i64 %i.ey, 3                        ; 2 uses
  %i.ph = shl i64 %i.oz, 3                        ; 3 uses
  %i.pi = getelementptr i8, ptr %i.ew, i64 %i.pg
  %scevgep437 = getelementptr i8, ptr %i.pi, i64 %i.ph
  %i.pj = shl i64 %i.pa, 3
  %i.pk = add i64 %i.pj, 8
  %i.pl = mul i64 %i.oz, %i.pk
  %i.pm = getelementptr i8, ptr %i.ew, i64 %i.pl
  %scevgep438 = getelementptr i8, ptr %i.pm, i64 %i.pg
  %i.pn = shl i64 %i.oy, 4                        ; 2 uses
  %i.po = getelementptr i8, ptr %i.pb, i64 %i.pn
  %scevgep439 = getelementptr i8, ptr %i.po, i64 %i.ph
  %i.pp = add i64 %i.oy, %i.oz
  %i.pq = shl i64 %i.pp, 3                        ; 2 uses
  %i.pr = add nsw i64 %i.pa, -1
  %i.ps = mul i64 %i.pq, %i.pr
  %i.pt = shl i64 %i.oz, 4
  %i.pu = getelementptr i8, ptr %i.pb, i64 %i.ps
  %i.pv = getelementptr i8, ptr %i.pu, i64 %i.pt
  %scevgep440 = getelementptr i8, ptr %i.pv, i64 %i.pn
  %i.pw = shl i64 %i.oy, 3                        ; 4 uses
  %scevgep463 = getelementptr i8, ptr %i.ew, i64 %i.pw
  %i.px = shl i64 %i.pa, 3
  %i.py = add i64 %i.px, 8
  %i.pz = mul i64 %i.oy, %i.py
  %scevgep464 = getelementptr i8, ptr %i.ew, i64 %i.pz
  %i.qa = shl i64 %i.oz, 3                        ; 3 uses
  %12 = getelementptr i8, ptr %i.pb, i64 %i.qa
  %scevgep465 = getelementptr i8, ptr %12, i64 %i.pw
  %13 = add i64 %i.pw, %i.qa                      ; 2 uses
  %i.qb = add nsw i64 %i.pa, -1
  %i.qc = mul i64 %13, %i.qb
  %i.qd = shl i64 %i.oy, 4
  %i.qe = getelementptr i8, ptr %i.pb, i64 %i.qc
  %i.qf = getelementptr i8, ptr %i.qe, i64 %i.qd
  %scevgep466 = getelementptr i8, ptr %i.qf, i64 %i.qa
  %min.iters.check473 = icmp ult i64 %i.oy, 8
  %bound0467 = icmp ult ptr %scevgep463, %scevgep466
  %bound1468 = icmp ult ptr %scevgep465, %scevgep464
  %found.conflict469 = and i1 %bound0467, %bound1468
  %i.qg = or i64 %13, %i.pw
  %i.qh = icmp slt i64 %i.qg, 0
  %i.qi = or i1 %found.conflict469, %i.qh
  %n.vec475 = and i64 %i.oy, 9223372036854775804  ; 4 uses
  %i.qj = shl i64 %n.vec475, 3                    ; 2 uses
  %cmp.n484 = icmp eq i64 %i.oy, %n.vec475
  %min.iters.check447 = icmp ult i64 %i.oz, 8
  %bound0441 = icmp ult ptr %scevgep437, %scevgep440
  %bound1442 = icmp ult ptr %scevgep439, %scevgep438
  %found.conflict443 = and i1 %bound0441, %bound1442
  %i.qk = or i64 %i.pq, %i.ph
  %i.ql = icmp slt i64 %i.qk, 0
  %i.qm = or i1 %found.conflict443, %i.ql
  %n.vec449 = and i64 %i.oz, 9223372036854775804  ; 4 uses
  %i.qn = shl i64 %n.vec449, 3                    ; 2 uses
  %cmp.n458 = icmp eq i64 %i.oz, %n.vec449
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph250, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit199
  %indvars.iv295 = phi i64 [ 1, %.lr.ph250 ], [ %indvars.iv.next296, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit199 ] ; 5 uses
  %i.qo = phi ptr [ %i.pb, %.lr.ph250 ], [ %.2248, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit199 ] ; 2 uses
  %.pn260 = getelementptr inbounds [8 x i8], ptr %i.qo, i64 %i.oy
  %.2248 = getelementptr inbounds [8 x i8], ptr %.pn260, i64 %i.oz ; 5 uses
  %i.qp = mul nsw i64 %indvars.iv295, %i.oy
  %i.qq = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.qp ; 4 uses
  br i1 %.not.i140, label %bb.p, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit199

bb.p:                                             ; preds = %bb.o
  %.not15.i179 = icmp eq ptr %i.qo, null
  br i1 %.not15.i179, label %.preheader.i186, label %.preheader16.i180

.preheader16.i180:                                ; preds = %bb.p
  br i1 %i.pc, label %.lr.ph.i181.preheader, label %.preheader16.i191

.lr.ph.i181.preheader:                            ; preds = %.preheader16.i180
  %brmerge555 = select i1 %min.iters.check473, i1 true, i1 %i.qi
  br i1 %brmerge555, label %.lr.ph.i181.preheader490, label %vector.ph474

vector.ph474:                                     ; preds = %.lr.ph.i181.preheader
  %i.qr = getelementptr i8, ptr %i.qq, i64 %i.qj
  %i.qs = getelementptr i8, ptr %.2248, i64 %i.qj
  br label %vector.body476

vector.body476:                                   ; preds = %vector.body476, %vector.ph474
  %index477 = phi i64 [ 0, %vector.ph474 ], [ %index.next482, %vector.body476 ] ; 2 uses
  %i.qt = shl i64 %index477, 3                    ; 2 uses
  %next.gep478 = getelementptr i8, ptr %i.qq, i64 %i.qt ; 2 uses
  %next.gep479 = getelementptr i8, ptr %.2248, i64 %i.qt ; 2 uses
  %i.qu = getelementptr i8, ptr %next.gep479, i64 16
  %wide.load480 = load <2 x double>, ptr %next.gep479, align 8, !tbaa !136, !alias.scope !438
  %wide.load481 = load <2 x double>, ptr %i.qu, align 8, !tbaa !136, !alias.scope !438
  %i.qv = getelementptr i8, ptr %next.gep478, i64 16
  store <2 x double> %wide.load480, ptr %next.gep478, align 8, !tbaa !136, !alias.scope !439, !noalias !438
  store <2 x double> %wide.load481, ptr %i.qv, align 8, !tbaa !136, !alias.scope !439, !noalias !438
  %index.next482 = add nuw i64 %index477, 4       ; 2 uses
  %i.qw = icmp eq i64 %index.next482, %n.vec475
  br i1 %i.qw, label %middle.block483, label %vector.body476, !llvm.loop !422

middle.block483:                                  ; preds = %vector.body476
  br i1 %cmp.n484, label %.preheader16.i191, label %.lr.ph.i181.preheader490

.lr.ph.i181.preheader490:                         ; preds = %.lr.ph.i181.preheader, %middle.block483
  %.020.i182.ph = phi i64 [ %n.vec475, %middle.block483 ], [ 0, %.lr.ph.i181.preheader ] ; 4 uses
  %.01019.i183.ph = phi ptr [ %i.qr, %middle.block483 ], [ %i.qq, %.lr.ph.i181.preheader ] ; 2 uses
  %.01218.i184.ph = phi ptr [ %i.qs, %middle.block483 ], [ %.2248, %.lr.ph.i181.preheader ] ; 2 uses
  %i.qx = sub nsw i64 %i.oy, %.020.i182.ph
  %xtraiter523 = and i64 %i.qx, 7                 ; 2 uses
  %lcmp.mod524.not = icmp eq i64 %xtraiter523, 0
  br i1 %lcmp.mod524.not, label %.lr.ph.i181.prol.loopexit, label %.lr.ph.i181.prol

.lr.ph.i181.prol:                                 ; preds = %.lr.ph.i181.preheader490, %.lr.ph.i181.prol
  %.020.i182.prol = phi i64 [ %i.rb, %.lr.ph.i181.prol ], [ %.020.i182.ph, %.lr.ph.i181.preheader490 ]
  %.01019.i183.prol = phi ptr [ %i.ra, %.lr.ph.i181.prol ], [ %.01019.i183.ph, %.lr.ph.i181.preheader490 ] ; 2 uses
  %.01218.i184.prol = phi ptr [ %i.qy, %.lr.ph.i181.prol ], [ %.01218.i184.ph, %.lr.ph.i181.preheader490 ] ; 2 uses
  %prol.iter525 = phi i64 [ %prol.iter525.next, %.lr.ph.i181.prol ], [ 0, %.lr.ph.i181.preheader490 ]
  %i.qy = getelementptr inbounds nuw i8, ptr %.01218.i184.prol, i64 8 ; 2 uses
  %i.qz = load double, ptr %.01218.i184.prol, align 8, !tbaa !136
  %i.ra = getelementptr inbounds nuw i8, ptr %.01019.i183.prol, i64 8 ; 2 uses
  store double %i.qz, ptr %.01019.i183.prol, align 8, !tbaa !136
  %i.rb = add nuw nsw i64 %.020.i182.prol, 1      ; 2 uses
  %prol.iter525.next = add i64 %prol.iter525, 1   ; 2 uses
  %prol.iter525.cmp.not = icmp eq i64 %prol.iter525.next, %xtraiter523
  br i1 %prol.iter525.cmp.not, label %.lr.ph.i181.prol.loopexit, label %.lr.ph.i181.prol, !llvm.loop !423

.lr.ph.i181.prol.loopexit:                        ; preds = %.lr.ph.i181.prol, %.lr.ph.i181.preheader490
  %.020.i182.unr = phi i64 [ %.020.i182.ph, %.lr.ph.i181.preheader490 ], [ %i.rb, %.lr.ph.i181.prol ]
  %.01019.i183.unr = phi ptr [ %.01019.i183.ph, %.lr.ph.i181.preheader490 ], [ %i.ra, %.lr.ph.i181.prol ]
  %.01218.i184.unr = phi ptr [ %.01218.i184.ph, %.lr.ph.i181.preheader490 ], [ %i.qy, %.lr.ph.i181.prol ]
  %i.rc = sub nsw i64 %.020.i182.ph, %i.oy
  %i.rd = icmp ugt i64 %i.rc, -8
  br i1 %i.rd, label %.preheader16.i191, label %.lr.ph.i181

.preheader.i186:                                  ; preds = %bb.p
  br i1 %i.pc, label %.lr.ph23.preheader.i187, label %.preheader.i197

.lr.ph23.preheader.i187:                          ; preds = %.preheader.i186
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.qq, i8 0, i64 %i.pd, i1 false), !tbaa !136
  br label %.preheader.i197

.lr.ph.i181:                                      ; preds = %.lr.ph.i181.prol.loopexit, %.lr.ph.i181
  %.020.i182 = phi i64 [ %i.sc, %.lr.ph.i181 ], [ %.020.i182.unr, %.lr.ph.i181.prol.loopexit ]
  %.01019.i183 = phi ptr [ %i.sb, %.lr.ph.i181 ], [ %.01019.i183.unr, %.lr.ph.i181.prol.loopexit ] ; 9 uses
  %.01218.i184 = phi ptr [ %i.rz, %.lr.ph.i181 ], [ %.01218.i184.unr, %.lr.ph.i181.prol.loopexit ] ; 9 uses
  %i.re = getelementptr inbounds nuw i8, ptr %.01218.i184, i64 8
  %i.rf = load double, ptr %.01218.i184, align 8, !tbaa !136
  %i.rg = getelementptr inbounds nuw i8, ptr %.01019.i183, i64 8
  store double %i.rf, ptr %.01019.i183, align 8, !tbaa !136
  %i.rh = getelementptr inbounds nuw i8, ptr %.01218.i184, i64 16
  %i.ri = load double, ptr %i.re, align 8, !tbaa !136
  %i.rj = getelementptr inbounds nuw i8, ptr %.01019.i183, i64 16
  store double %i.ri, ptr %i.rg, align 8, !tbaa !136
  %i.rk = getelementptr inbounds nuw i8, ptr %.01218.i184, i64 24
  %i.rl = load double, ptr %i.rh, align 8, !tbaa !136
  %i.rm = getelementptr inbounds nuw i8, ptr %.01019.i183, i64 24
  store double %i.rl, ptr %i.rj, align 8, !tbaa !136
  %i.rn = getelementptr inbounds nuw i8, ptr %.01218.i184, i64 32
  %i.ro = load double, ptr %i.rk, align 8, !tbaa !136
  %i.rp = getelementptr inbounds nuw i8, ptr %.01019.i183, i64 32
  store double %i.ro, ptr %i.rm, align 8, !tbaa !136
  %i.rq = getelementptr inbounds nuw i8, ptr %.01218.i184, i64 40
  %i.rr = load double, ptr %i.rn, align 8, !tbaa !136
  %i.rs = getelementptr inbounds nuw i8, ptr %.01019.i183, i64 40
  store double %i.rr, ptr %i.rp, align 8, !tbaa !136
  %i.rt = getelementptr inbounds nuw i8, ptr %.01218.i184, i64 48
  %i.ru = load double, ptr %i.rq, align 8, !tbaa !136
  %i.rv = getelementptr inbounds nuw i8, ptr %.01019.i183, i64 48
  store double %i.ru, ptr %i.rs, align 8, !tbaa !136
  %i.rw = getelementptr inbounds nuw i8, ptr %.01218.i184, i64 56
  %i.rx = load double, ptr %i.rt, align 8, !tbaa !136
  %i.ry = getelementptr inbounds nuw i8, ptr %.01019.i183, i64 56
  store double %i.rx, ptr %i.rv, align 8, !tbaa !136
  %i.rz = getelementptr inbounds nuw i8, ptr %.01218.i184, i64 64
  %i.sa = load double, ptr %i.rw, align 8, !tbaa !136
  %i.sb = getelementptr inbounds nuw i8, ptr %.01019.i183, i64 64
  store double %i.sa, ptr %i.ry, align 8, !tbaa !136
  %i.sc = add nuw nsw i64 %.020.i182, 8           ; 2 uses
  %exitcond.not.i185.7 = icmp eq i64 %i.sc, %i.oy
  br i1 %exitcond.not.i185.7, label %.preheader16.i191, label %.lr.ph.i181, !llvm.loop !424

.preheader16.i191:                                ; preds = %.lr.ph.i181.prol.loopexit, %.lr.ph.i181, %middle.block483, %.preheader16.i180
  %i.sd = getelementptr inbounds [8 x i8], ptr %.2248, i64 %i.oy ; 3 uses
  %i.se = mul nsw i64 %indvars.iv295, %i.oz
  %i.sf = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.se ; 3 uses
  br i1 %i.pe, label %.lr.ph.i192.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit199

.lr.ph.i192.preheader:                            ; preds = %.preheader16.i191
  %brmerge556 = select i1 %min.iters.check447, i1 true, i1 %i.qm
  br i1 %brmerge556, label %.lr.ph.i192.preheader489, label %vector.ph448

vector.ph448:                                     ; preds = %.lr.ph.i192.preheader
  %i.sg = getelementptr i8, ptr %i.sf, i64 %i.qn
  %i.sh = getelementptr i8, ptr %i.sd, i64 %i.qn
  br label %vector.body450

vector.body450:                                   ; preds = %vector.body450, %vector.ph448
  %index451 = phi i64 [ 0, %vector.ph448 ], [ %index.next456, %vector.body450 ] ; 2 uses
  %i.si = shl i64 %index451, 3                    ; 2 uses
  %next.gep452 = getelementptr i8, ptr %i.sf, i64 %i.si ; 2 uses
  %next.gep453 = getelementptr i8, ptr %i.sd, i64 %i.si ; 2 uses
  %i.sj = getelementptr i8, ptr %next.gep453, i64 16
  %wide.load454 = load <2 x double>, ptr %next.gep453, align 8, !tbaa !136, !alias.scope !440
  %wide.load455 = load <2 x double>, ptr %i.sj, align 8, !tbaa !136, !alias.scope !440
  %i.sk = getelementptr i8, ptr %next.gep452, i64 16
  store <2 x double> %wide.load454, ptr %next.gep452, align 8, !tbaa !136, !alias.scope !441, !noalias !440
  store <2 x double> %wide.load455, ptr %i.sk, align 8, !tbaa !136, !alias.scope !441, !noalias !440
  %index.next456 = add nuw i64 %index451, 4       ; 2 uses
  %i.sl = icmp eq i64 %index.next456, %n.vec449
  br i1 %i.sl, label %middle.block457, label %vector.body450, !llvm.loop !428

middle.block457:                                  ; preds = %vector.body450
  br i1 %cmp.n458, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit199, label %.lr.ph.i192.preheader489

.lr.ph.i192.preheader489:                         ; preds = %.lr.ph.i192.preheader, %middle.block457
  %.020.i193.ph = phi i64 [ %n.vec449, %middle.block457 ], [ 0, %.lr.ph.i192.preheader ] ; 4 uses
  %.01019.i194.ph = phi ptr [ %i.sg, %middle.block457 ], [ %i.sf, %.lr.ph.i192.preheader ] ; 2 uses
  %.01218.i195.ph = phi ptr [ %i.sh, %middle.block457 ], [ %i.sd, %.lr.ph.i192.preheader ] ; 2 uses
  %i.sm = sub nsw i64 %i.oz, %.020.i193.ph
  %xtraiter526 = and i64 %i.sm, 7                 ; 2 uses
  %lcmp.mod527.not = icmp eq i64 %xtraiter526, 0
  br i1 %lcmp.mod527.not, label %.lr.ph.i192.prol.loopexit, label %.lr.ph.i192.prol

.lr.ph.i192.prol:                                 ; preds = %.lr.ph.i192.preheader489, %.lr.ph.i192.prol
  %.020.i193.prol = phi i64 [ %i.sq, %.lr.ph.i192.prol ], [ %.020.i193.ph, %.lr.ph.i192.preheader489 ]
  %.01019.i194.prol = phi ptr [ %i.sp, %.lr.ph.i192.prol ], [ %.01019.i194.ph, %.lr.ph.i192.preheader489 ] ; 2 uses
  %.01218.i195.prol = phi ptr [ %i.sn, %.lr.ph.i192.prol ], [ %.01218.i195.ph, %.lr.ph.i192.preheader489 ] ; 2 uses
  %prol.iter528 = phi i64 [ %prol.iter528.next, %.lr.ph.i192.prol ], [ 0, %.lr.ph.i192.preheader489 ]
  %i.sn = getelementptr inbounds nuw i8, ptr %.01218.i195.prol, i64 8 ; 2 uses
  %i.so = load double, ptr %.01218.i195.prol, align 8, !tbaa !136
  %i.sp = getelementptr inbounds nuw i8, ptr %.01019.i194.prol, i64 8 ; 2 uses
  store double %i.so, ptr %.01019.i194.prol, align 8, !tbaa !136
  %i.sq = add nuw nsw i64 %.020.i193.prol, 1      ; 2 uses
  %prol.iter528.next = add i64 %prol.iter528, 1   ; 2 uses
  %prol.iter528.cmp.not = icmp eq i64 %prol.iter528.next, %xtraiter526
  br i1 %prol.iter528.cmp.not, label %.lr.ph.i192.prol.loopexit, label %.lr.ph.i192.prol, !llvm.loop !429

.lr.ph.i192.prol.loopexit:                        ; preds = %.lr.ph.i192.prol, %.lr.ph.i192.preheader489
  %.020.i193.unr = phi i64 [ %.020.i193.ph, %.lr.ph.i192.preheader489 ], [ %i.sq, %.lr.ph.i192.prol ]
  %.01019.i194.unr = phi ptr [ %.01019.i194.ph, %.lr.ph.i192.preheader489 ], [ %i.sp, %.lr.ph.i192.prol ]
  %.01218.i195.unr = phi ptr [ %.01218.i195.ph, %.lr.ph.i192.preheader489 ], [ %i.sn, %.lr.ph.i192.prol ]
  %i.sr = sub nsw i64 %.020.i193.ph, %i.oz
  %i.ss = icmp ugt i64 %i.sr, -8
  br i1 %i.ss, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit199, label %.lr.ph.i192

.preheader.i197:                                  ; preds = %.preheader.i186, %.lr.ph23.preheader.i187
  br i1 %i.pe, label %.lr.ph23.preheader.i198, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit199

.lr.ph23.preheader.i198:                          ; preds = %.preheader.i197
  %i.st = mul nuw nsw i64 %indvars.iv295, %i.oz
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.st
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.su, i8 0, i64 %i.pf, i1 false), !tbaa !136
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit199
end_hunk_0
begin_hunk_1_@_ZNK6casadi13IdasInterface5resetEPNS_16IntegratorMemoryEb:bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bu, i64 384 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !204
  %i.cs = call i32 @IDAReInit(ptr noundef %i.cn, double noundef %i.cp, ptr noundef %i.cr, ptr noundef %i.cl)
  call void @_ZN6casadi13IdasInterface10idas_errorEPKci(ptr noundef nonnull @.str.80, i32 noundef %i.cs)
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !221
  %i.cv = icmp sgt i64 %i.cu, 0
  br i1 %i.cv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_.exit
  %i.cw = load ptr, ptr %i.cm, align 8, !tbaa !202
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bu, i64 400
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !222
  %i.cz = call i32 @IDAQuadReInit(ptr noundef %i.cw, ptr noundef %i.cy)
  call void @_ZN6casadi13IdasInterface10idas_errorEPKci(ptr noundef nonnull @.str.81, i32 noundef %i.cz)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 2193
  %i.db = load i8, ptr %i.da, align 1, !tbaa !132, !range !76, !noundef !77
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dd = load ptr, ptr %i.cm, align 8, !tbaa !202
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.df = load double, ptr %i.de, align 8, !tbaa !137
  %i.dg = call i32 @IDACalcIC(ptr noundef %i.dd, i32 noundef 1, double noundef %i.df)
  call void @_ZN6casadi13IdasInterface10idas_errorEPKci(ptr noundef nonnull @.str.82, i32 noundef %i.dg)
  %i.dh = load ptr, ptr %i.cm, align 8, !tbaa !202
  %i.di = load ptr, ptr %i.cq, align 8, !tbaa !204
  %i.dj = load ptr, ptr %i.bv, align 8, !tbaa !203
  %i.dk = call i32 @IDAGetConsistentIC(ptr noundef %i.dh, ptr noundef %i.di, ptr noundef %i.dj)
  call void @_ZN6casadi13IdasInterface10idas_errorEPKci(ptr noundef nonnull @.str.83, i32 noundef %i.dk)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !224
  %i.dn = icmp sgt i64 %i.dm, 0
  br i1 %i.dn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.do = load ptr, ptr %i.cm, align 8, !tbaa !202
  %i.dp = call i32 @IDAAdjReInit(ptr noundef %i.do)
  call void @_ZN6casadi13IdasInterface10idas_errorEPKci(ptr noundef nonnull @.str.84, i32 noundef %i.dp)
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.k
  ret void
}

declare void @_ZNK6casadi17SundialsInterface5resetEPNS_16IntegratorMemoryEb(ptr noundef nonnull align 8 dereferenceable(2192), ptr noundef, i1 noundef zeroext) unnamed_addr #5

declare i32 @IDAReInit(ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @IDAQuadReInit(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @IDACalcIC(ptr noundef, i32 noundef, double noundef) local_unnamed_addr #5

declare i32 @IDAGetConsistentIC(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @IDAAdjReInit(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6casadi13IdasInterface15advance_noeventEPNS_16IntegratorMemoryE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2280) %0, ptr noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = tail call noundef ptr @_ZN6casadi13IdasInterface6to_memEPv(ptr noundef %1) ; 27 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.d = load double, ptr %i.c, align 8, !tbaa !454 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 544 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !455
  %i.g = fcmp ult double %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 736
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !202
  %i.j = tail call i32 @IDASetStopTime(ptr noundef %i.i, double noundef %i.d)
  tail call void @_ZN6casadi13IdasInterface10idas_errorEPKci(ptr noundef nonnull @.str.85, i32 noundef %i.j)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.l = load double, ptr %i.k, align 8, !tbaa !239 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.n = load double, ptr %i.m, align 8, !tbaa !240 ; 3 uses
  %i.o = fsub double %i.l, %i.n
  %i.p = tail call double @llvm.fabs.f64(double %i.o)
  %i.q = fcmp ult double %i.p, 1.000000e-09
  br i1 %i.q, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store double %i.l, ptr %i.a, align 8, !tbaa !136
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.s = load i64, ptr %i.r, align 8, !tbaa !201
  %i.t = icmp sgt i64 %i.s, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 736
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !202  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !204  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !203  ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 704
  %i.ab = call i32 @IDASolveF(ptr noundef %i.v, double noundef %i.n, ptr noundef nonnull %i.a, ptr noundef %i.x, ptr noundef %i.z, i32 noundef 1, ptr noundef nonnull %i.aa)
  call void @_ZN6casadi13IdasInterface10idas_errorEPKci(ptr noundef nonnull @.str.86, i32 noundef %i.ab)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ac = call i32 @IDASolve(ptr noundef %i.v, double noundef %i.n, ptr noundef nonnull %i.a, ptr noundef %i.x, ptr noundef %i.z, i32 noundef 1)
  call void @_ZN6casadi13IdasInterface10idas_errorEPKci(ptr noundef nonnull @.str.87, i32 noundef %i.ac)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !221
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 736
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !202
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !222
  %i.ak = call i32 @IDAGetQuad(ptr noundef %i.ah, ptr noundef nonnull %i.a, ptr noundef %i.aj)
  call void @_ZN6casadi13IdasInterface10idas_errorEPKci(ptr noundef nonnull @.str.88, i32 noundef %i.ak)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !204
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !194
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !196 ; 5 uses
  %i.aq = ptrtoaddr ptr %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !139 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.au = load i64, ptr %i.at, align 8, !tbaa !142 ; 2 uses
  %i.av = add i64 %i.au, %i.as                    ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !456 ; 6 uses
  %i.ay = ptrtoaddr ptr %i.ax to i64
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not15.i = icmp eq ptr %i.ap, null
  %i.az = icmp sgt i64 %i.av, 0                   ; 2 uses
  br i1 %.not15.i, label %.preheader.i, label %.preheader16.i

.preheader16.i:                                   ; preds = %bb.k
  br i1 %i.az, label %.lr.ph.i.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph.i.preheader:                               ; preds = %.preheader16.i
  %min.iters.check = icmp ult i64 %i.av, 8
  %i.ba = sub i64 %i.aq, %i.ay
  %diff.check = icmp ugt i64 %i.ba, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader81, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.av, 9223372036854775804     ; 4 uses
  %i.bb = shl i64 %n.vec, 3                       ; 2 uses
  %i.bc = getelementptr i8, ptr %i.ax, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.ap, i64 %i.bb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.be ; 2 uses
  %next.gep57 = getelementptr i8, ptr %i.ap, i64 %i.be ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep57, i64 16
  %wide.load = load <2 x double>, ptr %next.gep57, align 8, !tbaa !136
  %wide.load58 = load <2 x double>, ptr %i.bf, align 8, !tbaa !136
  %i.bg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !136
  store <2 x double> %wide.load58, ptr %i.bg, align 8, !tbaa !136
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !448

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i.preheader81

.lr.ph.i.preheader81:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.020.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.01019.i.ph = phi ptr [ %i.ax, %.lr.ph.i.preheader ], [ %i.bc, %middle.block ] ; 2 uses
  %.01218.i.ph = phi ptr [ %i.ap, %.lr.ph.i.preheader ], [ %i.bd, %middle.block ] ; 2 uses
  %i.bi = add i64 %i.au, %i.as                    ; 2 uses
  %i.bj = sub i64 %i.bi, %.020.i.ph
  %xtraiter = and i64 %i.bj, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader81, %.lr.ph.i.prol
  %.020.i.prol = phi i64 [ %i.bn, %.lr.ph.i.prol ], [ %.020.i.ph, %.lr.ph.i.preheader81 ]
  %.01019.i.prol = phi ptr [ %i.bm, %.lr.ph.i.prol ], [ %.01019.i.ph, %.lr.ph.i.preheader81 ] ; 2 uses
  %.01218.i.prol = phi ptr [ %i.bk, %.lr.ph.i.prol ], [ %.01218.i.ph, %.lr.ph.i.preheader81 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader81 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.01218.i.prol, i64 8 ; 2 uses
  %i.bl = load double, ptr %.01218.i.prol, align 8, !tbaa !136
  %i.bm = getelementptr inbounds nuw i8, ptr %.01019.i.prol, i64 8 ; 2 uses
  store double %i.bl, ptr %.01019.i.prol, align 8, !tbaa !136
  %i.bn = add nuw nsw i64 %.020.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !449

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader81
  %.020.i.unr = phi i64 [ %.020.i.ph, %.lr.ph.i.preheader81 ], [ %i.bn, %.lr.ph.i.prol ]
  %.01019.i.unr = phi ptr [ %.01019.i.ph, %.lr.ph.i.preheader81 ], [ %i.bm, %.lr.ph.i.prol ]
  %.01218.i.unr = phi ptr [ %.01218.i.ph, %.lr.ph.i.preheader81 ], [ %i.bk, %.lr.ph.i.prol ]
  %i.bo = sub i64 %.020.i.ph, %i.bi
  %i.bp = icmp ugt i64 %i.bo, -8
  br i1 %i.bp, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %i.az, label %.lr.ph23.preheader.i, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph23.preheader.i:                             ; preds = %.preheader.i
  %i.bq = shl nuw i64 %i.av, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ax, i8 0, i64 %i.bq, i1 false), !tbaa !136
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.020.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01019.i = phi ptr [ %i.co, %.lr.ph.i ], [ %.01019.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.01218.i = phi ptr [ %i.cm, %.lr.ph.i ], [ %.01218.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.01218.i, i64 8
  %i.bs = load double, ptr %.01218.i, align 8, !tbaa !136
  %i.bt = getelementptr inbounds nuw i8, ptr %.01019.i, i64 8
  store double %i.bs, ptr %.01019.i, align 8, !tbaa !136
  %i.bu = getelementptr inbounds nuw i8, ptr %.01218.i, i64 16
  %i.bv = load double, ptr %i.br, align 8, !tbaa !136
  %i.bw = getelementptr inbounds nuw i8, ptr %.01019.i, i64 16
  store double %i.bv, ptr %i.bt, align 8, !tbaa !136
  %i.bx = getelementptr inbounds nuw i8, ptr %.01218.i, i64 24
  %i.by = load double, ptr %i.bu, align 8, !tbaa !136
  %i.bz = getelementptr inbounds nuw i8, ptr %.01019.i, i64 24
  store double %i.by, ptr %i.bw, align 8, !tbaa !136
  %i.ca = getelementptr inbounds nuw i8, ptr %.01218.i, i64 32
  %i.cb = load double, ptr %i.bx, align 8, !tbaa !136
  %i.cc = getelementptr inbounds nuw i8, ptr %.01019.i, i64 32
  store double %i.cb, ptr %i.bz, align 8, !tbaa !136
  %i.cd = getelementptr inbounds nuw i8, ptr %.01218.i, i64 40
  %i.ce = load double, ptr %i.ca, align 8, !tbaa !136
  %i.cf = getelementptr inbounds nuw i8, ptr %.01019.i, i64 40
  store double %i.ce, ptr %i.cc, align 8, !tbaa !136
  %i.cg = getelementptr inbounds nuw i8, ptr %.01218.i, i64 48
  %i.ch = load double, ptr %i.cd, align 8, !tbaa !136
  %i.ci = getelementptr inbounds nuw i8, ptr %.01019.i, i64 48
  store double %i.ch, ptr %i.cf, align 8, !tbaa !136
  %i.cj = getelementptr inbounds nuw i8, ptr %.01218.i, i64 56
  %i.ck = load double, ptr %i.cg, align 8, !tbaa !136
  %i.cl = getelementptr inbounds nuw i8, ptr %.01019.i, i64 56
  store double %i.ck, ptr %i.ci, align 8, !tbaa !136
  %i.cm = getelementptr inbounds nuw i8, ptr %.01218.i, i64 64
  %i.cn = load double, ptr %i.cj, align 8, !tbaa !136
  %i.co = getelementptr inbounds nuw i8, ptr %.01019.i, i64 64
  store double %i.cn, ptr %i.cl, align 8, !tbaa !136
  %i.cp = add nuw nsw i64 %.020.i, 8              ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.cp, %i.av
  br i1 %exitcond.not.i.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i, !llvm.loop !450

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit:       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.j, %.preheader16.i, %.preheader.i, %.lr.ph23.preheader.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !222
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !194
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !196 ; 5 uses
  %i.cv = ptrtoaddr ptr %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !457 ; 8 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !458 ; 6 uses
  %i.da = ptrtoaddr ptr %i.cz to i64
  %.not.i39 = icmp eq ptr %i.cz, null
  br i1 %.not.i39, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit49, label %bb.l

bb.l:                                             ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit
  %.not15.i40 = icmp eq ptr %i.cu, null
  %i.db = icmp sgt i64 %i.cx, 0                   ; 2 uses
  br i1 %.not15.i40, label %.preheader.i47, label %.preheader16.i41

.preheader16.i41:                                 ; preds = %bb.l
  br i1 %i.db, label %.lr.ph.i42.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit49

.lr.ph.i42.preheader:                             ; preds = %.preheader16.i41
  %min.iters.check64 = icmp ult i64 %i.cx, 8
  %i.dc = sub i64 %i.cv, %i.da
  %diff.check62 = icmp ugt i64 %i.dc, -32
  %or.cond79 = select i1 %min.iters.check64, i1 true, i1 %diff.check62
  br i1 %or.cond79, label %.lr.ph.i42.preheader80, label %vector.ph65

vector.ph65:                                      ; preds = %.lr.ph.i42.preheader
  %n.vec66 = and i64 %i.cx, 9223372036854775804   ; 4 uses
  %i.dd = shl i64 %n.vec66, 3                     ; 2 uses
  %i.de = getelementptr i8, ptr %i.cz, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.cu, i64 %i.dd
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph65
  %index68 = phi i64 [ 0, %vector.ph65 ], [ %index.next73, %vector.body67 ] ; 2 uses
  %i.dg = shl i64 %index68, 3                     ; 2 uses
  %next.gep69 = getelementptr i8, ptr %i.cz, i64 %i.dg ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.cu, i64 %i.dg ; 2 uses
  %i.dh = getelementptr i8, ptr %next.gep70, i64 16
  %wide.load71 = load <2 x double>, ptr %next.gep70, align 8, !tbaa !136
  %wide.load72 = load <2 x double>, ptr %i.dh, align 8, !tbaa !136
  %i.di = getelementptr i8, ptr %next.gep69, i64 16
  store <2 x double> %wide.load71, ptr %next.gep69, align 8, !tbaa !136
  store <2 x double> %wide.load72, ptr %i.di, align 8, !tbaa !136
  %index.next73 = add nuw i64 %index68, 4         ; 2 uses
  %i.dj = icmp eq i64 %index.next73, %n.vec66
  br i1 %i.dj, label %middle.block74, label %vector.body67, !llvm.loop !451

middle.block74:                                   ; preds = %vector.body67
  %cmp.n75 = icmp eq i64 %i.cx, %n.vec66
  br i1 %cmp.n75, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit49, label %.lr.ph.i42.preheader80

.lr.ph.i42.preheader80:                           ; preds = %.lr.ph.i42.preheader, %middle.block74
  %.020.i43.ph = phi i64 [ 0, %.lr.ph.i42.preheader ], [ %n.vec66, %middle.block74 ] ; 4 uses
  %.01019.i44.ph = phi ptr [ %i.cz, %.lr.ph.i42.preheader ], [ %i.de, %middle.block74 ] ; 2 uses
  %.01218.i45.ph = phi ptr [ %i.cu, %.lr.ph.i42.preheader ], [ %i.df, %middle.block74 ] ; 2 uses
  %i.dk = sub nsw i64 %i.cx, %.020.i43.ph
  %xtraiter82 = and i64 %i.dk, 7                  ; 2 uses
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod83.not, label %.lr.ph.i42.prol.loopexit, label %.lr.ph.i42.prol

.lr.ph.i42.prol:                                  ; preds = %.lr.ph.i42.preheader80, %.lr.ph.i42.prol
  %.020.i43.prol = phi i64 [ %i.do, %.lr.ph.i42.prol ], [ %.020.i43.ph, %.lr.ph.i42.preheader80 ]
  %.01019.i44.prol = phi ptr [ %i.dn, %.lr.ph.i42.prol ], [ %.01019.i44.ph, %.lr.ph.i42.preheader80 ] ; 2 uses
  %.01218.i45.prol = phi ptr [ %i.dl, %.lr.ph.i42.prol ], [ %.01218.i45.ph, %.lr.ph.i42.preheader80 ] ; 2 uses
  %prol.iter84 = phi i64 [ %prol.iter84.next, %.lr.ph.i42.prol ], [ 0, %.lr.ph.i42.preheader80 ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.01218.i45.prol, i64 8 ; 2 uses
  %i.dm = load double, ptr %.01218.i45.prol, align 8, !tbaa !136
  %i.dn = getelementptr inbounds nuw i8, ptr %.01019.i44.prol, i64 8 ; 2 uses
  store double %i.dm, ptr %.01019.i44.prol, align 8, !tbaa !136
  %i.do = add nuw nsw i64 %.020.i43.prol, 1       ; 2 uses
  %prol.iter84.next = add i64 %prol.iter84, 1     ; 2 uses
  %prol.iter84.cmp.not = icmp eq i64 %prol.iter84.next, %xtraiter82
  br i1 %prol.iter84.cmp.not, label %.lr.ph.i42.prol.loopexit, label %.lr.ph.i42.prol, !llvm.loop !452

.lr.ph.i42.prol.loopexit:                         ; preds = %.lr.ph.i42.prol, %.lr.ph.i42.preheader80
  %.020.i43.unr = phi i64 [ %.020.i43.ph, %.lr.ph.i42.preheader80 ], [ %i.do, %.lr.ph.i42.prol ]
  %.01019.i44.unr = phi ptr [ %.01019.i44.ph, %.lr.ph.i42.preheader80 ], [ %i.dn, %.lr.ph.i42.prol ]
  %.01218.i45.unr = phi ptr [ %.01218.i45.ph, %.lr.ph.i42.preheader80 ], [ %i.dl, %.lr.ph.i42.prol ]
  %i.dp = sub nsw i64 %.020.i43.ph, %i.cx
  %i.dq = icmp ugt i64 %i.dp, -8
  br i1 %i.dq, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit49, label %.lr.ph.i42

.preheader.i47:                                   ; preds = %bb.l
  br i1 %i.db, label %.lr.ph23.preheader.i48, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit49

.lr.ph23.preheader.i48:                           ; preds = %.preheader.i47
  %i.dr = shl nuw i64 %i.cx, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cz, i8 0, i64 %i.dr, i1 false), !tbaa !136
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit49

.lr.ph.i42:                                       ; preds = %.lr.ph.i42.prol.loopexit, %.lr.ph.i42
  %.020.i43 = phi i64 [ %i.eq, %.lr.ph.i42 ], [ %.020.i43.unr, %.lr.ph.i42.prol.loopexit ]
  %.01019.i44 = phi ptr [ %i.ep, %.lr.ph.i42 ], [ %.01019.i44.unr, %.lr.ph.i42.prol.loopexit ] ; 9 uses
  %.01218.i45 = phi ptr [ %i.en, %.lr.ph.i42 ], [ %.01218.i45.unr, %.lr.ph.i42.prol.loopexit ] ; 9 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.01218.i45, i64 8
  %i.dt = load double, ptr %.01218.i45, align 8, !tbaa !136
  %i.du = getelementptr inbounds nuw i8, ptr %.01019.i44, i64 8
  store double %i.dt, ptr %.01019.i44, align 8, !tbaa !136
  %i.dv = getelementptr inbounds nuw i8, ptr %.01218.i45, i64 16
  %i.dw = load double, ptr %i.ds, align 8, !tbaa !136
  %i.dx = getelementptr inbounds nuw i8, ptr %.01019.i44, i64 16
  store double %i.dw, ptr %i.du, align 8, !tbaa !136
  %i.dy = getelementptr inbounds nuw i8, ptr %.01218.i45, i64 24
  %i.dz = load double, ptr %i.dv, align 8, !tbaa !136
  %i.ea = getelementptr inbounds nuw i8, ptr %.01019.i44, i64 24
  store double %i.dz, ptr %i.dx, align 8, !tbaa !136
  %i.eb = getelementptr inbounds nuw i8, ptr %.01218.i45, i64 32
  %i.ec = load double, ptr %i.dy, align 8, !tbaa !136
  %i.ed = getelementptr inbounds nuw i8, ptr %.01019.i44, i64 32
  store double %i.ec, ptr %i.ea, align 8, !tbaa !136
  %i.ee = getelementptr inbounds nuw i8, ptr %.01218.i45, i64 40
  %i.ef = load double, ptr %i.eb, align 8, !tbaa !136
  %i.eg = getelementptr inbounds nuw i8, ptr %.01019.i44, i64 40
  store double %i.ef, ptr %i.ed, align 8, !tbaa !136
  %i.eh = getelementptr inbounds nuw i8, ptr %.01218.i45, i64 48
  %i.ei = load double, ptr %i.ee, align 8, !tbaa !136
  %i.ej = getelementptr inbounds nuw i8, ptr %.01019.i44, i64 48
  store double %i.ei, ptr %i.eg, align 8, !tbaa !136
  %i.ek = getelementptr inbounds nuw i8, ptr %.01218.i45, i64 56
  %i.el = load double, ptr %i.eh, align 8, !tbaa !136
end_hunk_1
begin_hunk_2_@_ZNK6casadi13IdasInterface10z_impulseBEPNS_10IdasMemoryEPKd:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br i1 %.4, label %.sink.split248, label %bb.at

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br i1 %.4, label %.sink.split248, label %bb.at

.sink.split247:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146.thread
  %.pn.pn.pn.pn.pn.pn178.ph = phi { ptr, i32 } [ %i.ha, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146.thread ], [ %i.fs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148.thread ], [ %i.ha, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br label %.sink.split248

bb.as:                                            ; preds = %_ZN6casadi12casadi_clearIdEEvPT_x.exit130
  %i.hi = load i64, ptr %i.bf, align 8, !tbaa !201 ; 8 uses
  %i.hj = load ptr, ptr %i.fn, align 8, !tbaa !235 ; 7 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !227
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !194
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !196 ; 7 uses
  %i.hp = icmp ne ptr %i.hj, null
  %i.hq = icmp ne ptr %i.ho, null
  %or.cond.i149 = and i1 %i.hp, %i.hq
  %i.hr = icmp sgt i64 %i.hi, 0
  %or.cond15.i = and i1 %i.hr, %or.cond.i149
  br i1 %or.cond15.i, label %.lr.ph.i150.preheader, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit

.lr.ph.i150.preheader:                            ; preds = %bb.as
  %min.iters.check256 = icmp ult i64 %i.hi, 6
  br i1 %min.iters.check256, label %.lr.ph.i150.preheader274, label %vector.memcheck257

vector.memcheck257:                               ; preds = %.lr.ph.i150.preheader
  %i.hs = shl i64 %i.hi, 3                        ; 2 uses
  %i.ht = getelementptr i8, ptr %i.ho, i64 %i.hs
  %i.hu = getelementptr i8, ptr %i.hj, i64 %i.hs
  %bound0 = icmp ult ptr %i.ho, %i.hu
  %bound1 = icmp ult ptr %i.hj, %i.ht
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i150.preheader274, label %vector.ph258

vector.ph258:                                     ; preds = %vector.memcheck257
  %n.vec259 = and i64 %i.hi, 9223372036854775804  ; 4 uses
  %i.hv = shl i64 %n.vec259, 3                    ; 2 uses
  %i.hw = getelementptr i8, ptr %i.ho, i64 %i.hv
  %i.hx = getelementptr i8, ptr %i.hj, i64 %i.hv
  br label %vector.body260

vector.body260:                                   ; preds = %vector.body260, %vector.ph258
  %index261 = phi i64 [ 0, %vector.ph258 ], [ %index.next268, %vector.body260 ] ; 2 uses
  %i.hy = shl i64 %index261, 3                    ; 2 uses
  %next.gep262 = getelementptr i8, ptr %i.ho, i64 %i.hy ; 3 uses
  %next.gep263 = getelementptr i8, ptr %i.hj, i64 %i.hy ; 2 uses
  %i.hz = getelementptr i8, ptr %next.gep263, i64 16
  %wide.load264 = load <2 x double>, ptr %next.gep263, align 8, !tbaa !136, !alias.scope !483
  %wide.load265 = load <2 x double>, ptr %i.hz, align 8, !tbaa !136, !alias.scope !483
  %i.ia = getelementptr i8, ptr %next.gep262, i64 16 ; 2 uses
  %wide.load266 = load <2 x double>, ptr %next.gep262, align 8, !tbaa !136, !alias.scope !484, !noalias !483
  %wide.load267 = load <2 x double>, ptr %i.ia, align 8, !tbaa !136, !alias.scope !484, !noalias !483
  %i.ib = fsub <2 x double> %wide.load266, %wide.load264
  %i.ic = fsub <2 x double> %wide.load267, %wide.load265
  store <2 x double> %i.ib, ptr %next.gep262, align 8, !tbaa !136, !alias.scope !484, !noalias !483
  store <2 x double> %i.ic, ptr %i.ia, align 8, !tbaa !136, !alias.scope !484, !noalias !483
  %index.next268 = add nuw i64 %index261, 4       ; 2 uses
  %i.id = icmp eq i64 %index.next268, %n.vec259
  br i1 %i.id, label %middle.block269, label %vector.body260, !llvm.loop !477

middle.block269:                                  ; preds = %vector.body260
  %cmp.n270 = icmp eq i64 %i.hi, %n.vec259
  br i1 %cmp.n270, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit, label %.lr.ph.i150.preheader274

.lr.ph.i150.preheader274:                         ; preds = %vector.memcheck257, %.lr.ph.i150.preheader, %middle.block269
  %.014.i.ph = phi i64 [ 0, %vector.memcheck257 ], [ 0, %.lr.ph.i150.preheader ], [ %n.vec259, %middle.block269 ] ; 3 uses
  %.0813.i.ph = phi ptr [ %i.ho, %vector.memcheck257 ], [ %i.ho, %.lr.ph.i150.preheader ], [ %i.hw, %middle.block269 ] ; 2 uses
  %.0912.i.ph = phi ptr [ %i.hj, %vector.memcheck257 ], [ %i.hj, %.lr.ph.i150.preheader ], [ %i.hx, %middle.block269 ] ; 2 uses
  %xtraiter276 = and i64 %i.hi, 3                 ; 2 uses
  %lcmp.mod277.not = icmp eq i64 %xtraiter276, 0
  br i1 %lcmp.mod277.not, label %.lr.ph.i150.prol.loopexit, label %.lr.ph.i150.prol

.lr.ph.i150.prol:                                 ; preds = %.lr.ph.i150.preheader274, %.lr.ph.i150.prol
  %.014.i.prol = phi i64 [ %i.ij, %.lr.ph.i150.prol ], [ %.014.i.ph, %.lr.ph.i150.preheader274 ]
  %.0813.i.prol = phi ptr [ %i.ig, %.lr.ph.i150.prol ], [ %.0813.i.ph, %.lr.ph.i150.preheader274 ] ; 3 uses
  %.0912.i.prol = phi ptr [ %i.ie, %.lr.ph.i150.prol ], [ %.0912.i.ph, %.lr.ph.i150.preheader274 ] ; 2 uses
  %prol.iter278 = phi i64 [ %prol.iter278.next, %.lr.ph.i150.prol ], [ 0, %.lr.ph.i150.preheader274 ]
  %i.ie = getelementptr inbounds nuw i8, ptr %.0912.i.prol, i64 8 ; 2 uses
  %i.if = load double, ptr %.0912.i.prol, align 8, !tbaa !136
  %i.ig = getelementptr inbounds nuw i8, ptr %.0813.i.prol, i64 8 ; 2 uses
  %i.ih = load double, ptr %.0813.i.prol, align 8, !tbaa !136
  %i.ii = fsub double %i.ih, %i.if
  store double %i.ii, ptr %.0813.i.prol, align 8, !tbaa !136
  %i.ij = add nuw nsw i64 %.014.i.prol, 1         ; 2 uses
  %prol.iter278.next = add i64 %prol.iter278, 1   ; 2 uses
  %prol.iter278.cmp.not = icmp eq i64 %prol.iter278.next, %xtraiter276
  br i1 %prol.iter278.cmp.not, label %.lr.ph.i150.prol.loopexit, label %.lr.ph.i150.prol, !llvm.loop !478

.lr.ph.i150.prol.loopexit:                        ; preds = %.lr.ph.i150.prol, %.lr.ph.i150.preheader274
  %.014.i.unr = phi i64 [ %.014.i.ph, %.lr.ph.i150.preheader274 ], [ %i.ij, %.lr.ph.i150.prol ]
  %.0813.i.unr = phi ptr [ %.0813.i.ph, %.lr.ph.i150.preheader274 ], [ %i.ig, %.lr.ph.i150.prol ]
  %.0912.i.unr = phi ptr [ %.0912.i.ph, %.lr.ph.i150.preheader274 ], [ %i.ie, %.lr.ph.i150.prol ]
  %i.ik = sub nsw i64 %.014.i.ph, %i.hi
  %i.il = icmp ugt i64 %i.ik, -4
  br i1 %i.il, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit, label %.lr.ph.i150

.lr.ph.i150:                                      ; preds = %.lr.ph.i150.prol.loopexit, %.lr.ph.i150
  %.014.i = phi i64 [ %i.jg, %.lr.ph.i150 ], [ %.014.i.unr, %.lr.ph.i150.prol.loopexit ]
  %.0813.i = phi ptr [ %i.jd, %.lr.ph.i150 ], [ %.0813.i.unr, %.lr.ph.i150.prol.loopexit ] ; 6 uses
  %.0912.i = phi ptr [ %i.jb, %.lr.ph.i150 ], [ %.0912.i.unr, %.lr.ph.i150.prol.loopexit ] ; 5 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.0912.i, i64 8
  %i.in = load double, ptr %.0912.i, align 8, !tbaa !136
  %i.io = getelementptr inbounds nuw i8, ptr %.0813.i, i64 8 ; 2 uses
  %i.ip = load double, ptr %.0813.i, align 8, !tbaa !136
  %i.iq = fsub double %i.ip, %i.in
  store double %i.iq, ptr %.0813.i, align 8, !tbaa !136
  %i.ir = getelementptr inbounds nuw i8, ptr %.0912.i, i64 16
  %i.is = load double, ptr %i.im, align 8, !tbaa !136
  %i.it = getelementptr inbounds nuw i8, ptr %.0813.i, i64 16 ; 2 uses
  %i.iu = load double, ptr %i.io, align 8, !tbaa !136
  %i.iv = fsub double %i.iu, %i.is
  store double %i.iv, ptr %i.io, align 8, !tbaa !136
  %i.iw = getelementptr inbounds nuw i8, ptr %.0912.i, i64 24
  %i.ix = load double, ptr %i.ir, align 8, !tbaa !136
  %i.iy = getelementptr inbounds nuw i8, ptr %.0813.i, i64 24 ; 2 uses
  %i.iz = load double, ptr %i.it, align 8, !tbaa !136
  %i.ja = fsub double %i.iz, %i.ix
  store double %i.ja, ptr %i.it, align 8, !tbaa !136
  %i.jb = getelementptr inbounds nuw i8, ptr %.0912.i, i64 32
  %i.jc = load double, ptr %i.iw, align 8, !tbaa !136
  %i.jd = getelementptr inbounds nuw i8, ptr %.0813.i, i64 32
  %i.je = load double, ptr %i.iy, align 8, !tbaa !136
  %i.jf = fsub double %i.je, %i.jc
  store double %i.jf, ptr %i.iy, align 8, !tbaa !136
  %i.jg = add nuw nsw i64 %.014.i, 4              ; 2 uses
  %exitcond.not.i151.3 = icmp eq i64 %i.jg, %i.hi
  br i1 %exitcond.not.i151.3, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit, label %.lr.ph.i150, !llvm.loop !479

_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit:    ; preds = %.lr.ph.i150.prol.loopexit, %.lr.ph.i150, %middle.block269, %bb.as, %bb.a
  ret void

.sink.split248:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146, %.sink.split247, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124, %.sink.split246, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105, %.sink.split
  %.sink = phi ptr [ %i.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ %i.l, %.sink.split ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ], [ %i.dj, %.sink.split246 ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124 ], [ %i.fr, %.sink.split247 ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146 ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ]
  %.pn85.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn78.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ], [ %.pn85.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ %.pn85.pn.pn.pn.pn.pn154.ph, %.sink.split ], [ %.pn85.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ], [ %.pn78.pn.pn.pn.pn.pn166.ph, %.sink.split246 ], [ %.pn78.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124 ], [ %.pn.pn.pn.pn.pn.pn178.ph, %.sink.split247 ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ]
  call void @__cxa_free_exception(ptr %.sink) #26
  br label %bb.at

bb.at:                                            ; preds = %.sink.split248, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %.pn85.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn85.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ], [ %.pn85.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ %.pn78.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124 ], [ %.pn78.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ], [ %.pn85.pn.pn.pn.pn.pn.pn.ph, %.sink.split248 ]
  resume { ptr, i32 } %.pn85.pn.pn.pn.pn.pn.pn

bb.au:                                            ; preds = %bb.am, %bb.y, %bb.j
  unreachable
}

declare noundef zeroext i1 @_ZN6casadi10Integrator8all_zeroEPKdx(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZNK6casadi13IdasInterface16solve_transposedEPNS_10IdasMemoryEdPKdS4_S4_Pd(ptr noundef nonnull align 8 dereferenceable(2280) %0, ptr noundef %1, double noundef %2, ptr noundef %3, ptr nofree noundef readnone captures(address_is_null) %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr noundef %6) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !235  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1592 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !236  ; 5 uses
  %.not199 = icmp slt i64 %i.d, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !224 ; 17 uses
  br i1 %.not199, label %._crit_edge202.split, label %.preheader172.lr.ph

.preheader172.lr.ph:                              ; preds = %bb.a
  %i.e = icmp sgt i64 %.pre, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.g = load i64, ptr %i.f, align 8
  %.fr = freeze i64 %i.g                          ; 34 uses
  %i.h = icmp sgt i64 %.fr, 0                     ; 2 uses
  %i.i = shl nuw i64 %.fr, 3                      ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %5, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1704
  %i.n = load i64, ptr %i.m, align 8
  %.fr379 = freeze i64 %i.n                       ; 28 uses
  %i.o = icmp sgt i64 %.fr379, 0                  ; 3 uses
  %i.p = shl nuw i64 %.fr379, 3                   ; 10 uses
  br i1 %i.e, label %.preheader172.lr.ph.split, label %._crit_edge202.split

.preheader172.lr.ph.split:                        ; preds = %.preheader172.lr.ph
  %.not15.i = icmp eq ptr %5, null
  br i1 %.not15.i, label %.preheader172.lr.ph.split.split.us, label %.preheader172.preheader

.preheader172.preheader:                          ; preds = %.preheader172.lr.ph.split
  %i.q = shl i64 %.fr, 3                          ; 3 uses
  %i.r = shl i64 %.fr379, 3                       ; 3 uses
  %i.s = add i64 %i.q, %i.r                       ; 2 uses
  %i.t = add nsw i64 %.pre, -1
  %i.u = mul i64 %i.s, %i.t
  %i.v = shl i64 %i.k, 3                          ; 2 uses
  %i.w = mul i64 %.fr379, %.pre
  %i.x = shl i64 %i.w, 3                          ; 2 uses
  %i.y = shl i64 %.fr, 3                          ; 2 uses
  %i.z = add i64 %.fr, %.fr379
  %i.aa = shl i64 %i.z, 3                         ; 2 uses
  %i.ab = add nsw i64 %.pre, -1
  %i.ac = mul i64 %i.aa, %i.ab
  %i.ad = mul i64 %.fr, %.pre
  %i.ae = shl i64 %i.ad, 3                        ; 2 uses
  %i.af = getelementptr i8, ptr %5, i64 %i.ae
  %i.ag = getelementptr i8, ptr %5, i64 %i.v
  %i.ah = getelementptr i8, ptr %5, i64 %i.x
  %i.ai = getelementptr i8, ptr %i.ah, i64 %i.v
  %min.iters.check545 = icmp ult i64 %.fr, 8
  %i.aj = or i64 %i.y, %i.aa
  %i.ak = icmp slt i64 %i.aj, 0
  %n.vec547 = and i64 %.fr, 9223372036854775804   ; 4 uses
  %i.al = shl i64 %n.vec547, 3                    ; 2 uses
  %cmp.n556 = icmp eq i64 %.fr, %n.vec547
  %min.iters.check = icmp ult i64 %.fr379, 8
  %i.am = or i64 %i.r, %i.s
  %i.an = icmp slt i64 %i.am, 0
  %n.vec = and i64 %.fr379, 9223372036854775804   ; 4 uses
  %i.ao = shl i64 %n.vec, 3                       ; 2 uses
  %cmp.n = icmp eq i64 %.fr379, %n.vec
  br label %.preheader172

.preheader172.lr.ph.split.split.us:               ; preds = %.preheader172.lr.ph.split
  br i1 %i.h, label %.preheader172.lr.ph.split.split.us.split.us.split.us, label %.preheader172.lr.ph.split.split.us.split.us.split

.preheader172.lr.ph.split.split.us.split.us.split.us: ; preds = %.preheader172.lr.ph.split.split.us
  br i1 %i.o, label %.preheader172.us.us.us.us.preheader, label %.preheader172.us.us.us.preheader

.preheader172.us.us.us.preheader:                 ; preds = %.preheader172.lr.ph.split.split.us.split.us.split.us
  %xtraiter805 = and i64 %.pre, 3                 ; 3 uses
  %i.ap = icmp ult i64 %.pre, 4
  %unroll_iter810 = and i64 %.pre, 9223372036854775804
  %lcmp.mod807.not = icmp eq i64 %xtraiter805, 0
  %lcmp.mod809 = icmp ne i64 %xtraiter805, 0
  br label %.preheader172.us.us.us

.preheader172.us.us.us.us.preheader:              ; preds = %.preheader172.lr.ph.split.split.us.split.us.split.us
  %xtraiter813 = and i64 %.pre, 3                 ; 3 uses
  %i.aq = icmp ult i64 %.pre, 4
  %unroll_iter818 = and i64 %.pre, 9223372036854775804
  %lcmp.mod815.not = icmp eq i64 %xtraiter813, 0
  %lcmp.mod817 = icmp ne i64 %xtraiter813, 0
  br label %.preheader172.us.us.us.us

.preheader172.us.us.us.us:                        ; preds = %.preheader172.us.us.us.us.preheader, %._crit_edge.split.us.us.split.us.split.us.us.split.us.us.us
  %indvars.iv433 = phi i64 [ %indvars.iv.next434, %._crit_edge.split.us.us.split.us.split.us.us.split.us.us.us ], [ 0, %.preheader172.us.us.us.us.preheader ] ; 2 uses
  %.080200.us.us.us.us = phi ptr [ %.lcssa789, %._crit_edge.split.us.us.split.us.split.us.us.split.us.us.us ], [ %i.b, %.preheader172.us.us.us.us.preheader ] ; 2 uses
  br i1 %i.aq, label %.epil.preheader812, label %.preheader172.us.us.us.us.new

.preheader172.us.us.us.us.new:                    ; preds = %.preheader172.us.us.us.us, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us.us.us.us.us.3
  %.1174.us.us.us.us.us.us.us.us = phi ptr [ %i.bc, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us.us.us.us.us.3 ], [ %.080200.us.us.us.us, %.preheader172.us.us.us.us ] ; 7 uses
  %niter819 = phi i64 [ %niter819.next.3, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us.us.us.us.us.3 ], [ 0, %.preheader172.us.us.us.us ]
  %.not.i.us.us.us.us.us.us.us.us = icmp eq ptr %.1174.us.us.us.us.us.us.us.us, null
  br i1 %.not.i.us.us.us.us.us.us.us.us, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us.us.us.us.us, label %.preheader.i106.us.us.us.us.us.us.us.us

.preheader.i106.us.us.us.us.us.us.us.us:          ; preds = %.preheader172.us.us.us.us.new
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.1174.us.us.us.us.us.us.us.us, i8 0, i64 %i.i, i1 false), !tbaa !136
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.1174.us.us.us.us.us.us.us.us, i64 %.fr
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ar, i8 0, i64 %i.p, i1 false), !tbaa !136
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us.us.us.us.us

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us.us.us.us.us: ; preds = %.preheader172.us.us.us.us.new, %.preheader.i106.us.us.us.us.us.us.us.us
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.1174.us.us.us.us.us.us.us.us, i64 %.fr
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.fr379 ; 3 uses
  %.not.i.us.us.us.us.us.us.us.us.1 = icmp eq ptr %.1174.us.us.us.us.us.us.us.us, null
  br i1 %.not.i.us.us.us.us.us.us.us.us.1, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us.us.us.us.us.1, label %.preheader.i106.us.us.us.us.us.us.us.us.1

.preheader.i106.us.us.us.us.us.us.us.us.1:        ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us.us.us.us.us
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.at, i8 0, i64 %i.i, i1 false), !tbaa !136
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.fr
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.au, i8 0, i64 %i.p, i1 false), !tbaa !136
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us.us.us.us.us.1

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us.us.us.us.us.1: ; preds = %.preheader.i106.us.us.us.us.us.us.us.us.1, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us.us.us.us.us
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.fr
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.fr379 ; 3 uses
  %.not.i.us.us.us.us.us.us.us.us.2 = icmp eq ptr %.1174.us.us.us.us.us.us.us.us, null
  br i1 %.not.i.us.us.us.us.us.us.us.us.2, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us.us.us.us.us.2, label %.preheader.i106.us.us.us.us.us.us.us.us.2

.preheader.i106.us.us.us.us.us.us.us.us.2:        ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us.us.us.us.us.1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aw, i8 0, i64 %i.i, i1 false), !tbaa !136
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.fr
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ax, i8 0, i64 %i.p, i1 false), !tbaa !136
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us.us.us.us.us.2

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us.us.us.us.us.2: ; preds = %.preheader.i106.us.us.us.us.us.us.us.us.2, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us.us.us.us.us.1
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.fr
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.fr379 ; 3 uses
  %.not.i.us.us.us.us.us.us.us.us.3 = icmp eq ptr %.1174.us.us.us.us.us.us.us.us, null
  br i1 %.not.i.us.us.us.us.us.us.us.us.3, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us.us.us.us.us.3, label %.preheader.i106.us.us.us.us.us.us.us.us.3

.preheader.i106.us.us.us.us.us.us.us.us.3:        ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us.us.us.us.us.2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.az, i8 0, i64 %i.i, i1 false), !tbaa !136
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.fr
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ba, i8 0, i64 %i.p, i1 false), !tbaa !136
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us.us.us.us.us.3

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us.us.us.us.us.3: ; preds = %.preheader.i106.us.us.us.us.us.us.us.us.3, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us.us.us.us.us.2
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.fr
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.fr379 ; 3 uses
  %niter819.next.3 = add nuw nsw i64 %niter819, 4 ; 2 uses
  %niter819.ncmp.3 = icmp eq i64 %niter819.next.3, %unroll_iter818
  br i1 %niter819.ncmp.3, label %._crit_edge.split.us.us.split.us.split.us.us.split.us.us.us.unr-lcssa, label %.preheader172.us.us.us.us.new, !llvm.loop !485

._crit_edge.split.us.us.split.us.split.us.us.split.us.us.us.unr-lcssa: ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us.us.us.us.us.3
  br i1 %lcmp.mod815.not, label %._crit_edge.split.us.us.split.us.split.us.us.split.us.us.us, label %.epil.preheader812

.epil.preheader812:                               ; preds = %._crit_edge.split.us.us.split.us.split.us.us.split.us.us.us.unr-lcssa, %.preheader172.us.us.us.us
  %.1174.us.us.us.us.us.us.us.us.epil.init = phi ptr [ %.080200.us.us.us.us, %.preheader172.us.us.us.us ], [ %i.bc, %._crit_edge.split.us.us.split.us.split.us.us.split.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod817)
  br label %bb.b

bb.b:                                             ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us.us.us.us.us.epil, %.epil.preheader812
  %.1174.us.us.us.us.us.us.us.us.epil = phi ptr [ %i.bf, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us.us.us.us.us.epil ], [ %.1174.us.us.us.us.us.us.us.us.epil.init, %.epil.preheader812 ] ; 4 uses
  %epil.iter814 = phi i64 [ %epil.iter814.next, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us.us.us.us.us.epil ], [ 0, %.epil.preheader812 ]
  %.not.i.us.us.us.us.us.us.us.us.epil = icmp eq ptr %.1174.us.us.us.us.us.us.us.us.epil, null
  br i1 %.not.i.us.us.us.us.us.us.us.us.epil, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us.us.us.us.us.epil, label %.preheader.i106.us.us.us.us.us.us.us.us.epil

.preheader.i106.us.us.us.us.us.us.us.us.epil:     ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.1174.us.us.us.us.us.us.us.us.epil, i8 0, i64 %i.i, i1 false), !tbaa !136
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.1174.us.us.us.us.us.us.us.us.epil, i64 %.fr
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bd, i8 0, i64 %i.p, i1 false), !tbaa !136
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us.us.us.us.us.epil

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us.us.us.us.us.epil: ; preds = %.preheader.i106.us.us.us.us.us.us.us.us.epil, %bb.b
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.1174.us.us.us.us.us.us.us.us.epil, i64 %.fr
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.fr379 ; 2 uses
  %epil.iter814.next = add i64 %epil.iter814, 1   ; 2 uses
  %epil.iter814.cmp.not = icmp eq i64 %epil.iter814.next, %xtraiter813
  br i1 %epil.iter814.cmp.not, label %._crit_edge.split.us.us.split.us.split.us.us.split.us.us.us, label %bb.b, !llvm.loop !486

._crit_edge.split.us.us.split.us.split.us.us.split.us.us.us: ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us.us.us.us.us.epil, %._crit_edge.split.us.us.split.us.split.us.us.split.us.us.us.unr-lcssa
  %.lcssa789 = phi ptr [ %i.bc, %._crit_edge.split.us.us.split.us.split.us.us.split.us.us.us.unr-lcssa ], [ %i.bf, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us.us.us.us.us.epil ]
  %indvars.iv.next434 = add nuw nsw i64 %indvars.iv433, 1
  %exitcond436 = icmp eq i64 %indvars.iv433, %i.d
  br i1 %exitcond436, label %._crit_edge202.split, label %.preheader172.us.us.us.us, !llvm.loop !487

.preheader172.us.us.us:                           ; preds = %.preheader172.us.us.us.preheader, %._crit_edge.split.us.us.split.us.split.us.us.split.us298
  %indvars.iv425 = phi i64 [ %indvars.iv.next426, %._crit_edge.split.us.us.split.us.split.us.us.split.us298 ], [ 0, %.preheader172.us.us.us.preheader ] ; 2 uses
  %.080200.us.us.us = phi ptr [ %.lcssa791, %._crit_edge.split.us.us.split.us.split.us.us.split.us298 ], [ %i.b, %.preheader172.us.us.us.preheader ] ; 2 uses
  br i1 %i.ap, label %.epil.preheader, label %.preheader172.us.us.us.new

.preheader172.us.us.us.new:                       ; preds = %.preheader172.us.us.us, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us.us.us294.3
  %.1174.us.us.us.us.us.us291 = phi ptr [ %i.bn, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us.us.us294.3 ], [ %.080200.us.us.us, %.preheader172.us.us.us ] ; 6 uses
  %niter811 = phi i64 [ %niter811.next.3, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us.us.us294.3 ], [ 0, %.preheader172.us.us.us ]
  %.not.i.us.us.us.us.us.us292 = icmp eq ptr %.1174.us.us.us.us.us.us291, null
  br i1 %.not.i.us.us.us.us.us.us292, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us.us.us294, label %.preheader.i.us.us.us.us.us.us293

.preheader.i.us.us.us.us.us.us293:                ; preds = %.preheader172.us.us.us.new
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.1174.us.us.us.us.us.us291, i8 0, i64 %i.i, i1 false), !tbaa !136
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us.us.us294

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us.us.us294: ; preds = %.preheader.i.us.us.us.us.us.us293, %.preheader172.us.us.us.new
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.1174.us.us.us.us.us.us291, i64 %.fr
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %.fr379 ; 2 uses
  %.not.i.us.us.us.us.us.us292.1 = icmp eq ptr %.1174.us.us.us.us.us.us291, null
  br i1 %.not.i.us.us.us.us.us.us292.1, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us.us.us294.1, label %.preheader.i.us.us.us.us.us.us293.1

.preheader.i.us.us.us.us.us.us293.1:              ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us.us.us294
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bh, i8 0, i64 %i.i, i1 false), !tbaa !136
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us.us.us294.1

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us.us.us294.1: ; preds = %.preheader.i.us.us.us.us.us.us293.1, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us.us.us294
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.fr
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %.fr379 ; 2 uses
  %.not.i.us.us.us.us.us.us292.2 = icmp eq ptr %.1174.us.us.us.us.us.us291, null
  br i1 %.not.i.us.us.us.us.us.us292.2, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us.us.us294.2, label %.preheader.i.us.us.us.us.us.us293.2

.preheader.i.us.us.us.us.us.us293.2:              ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us.us.us294.1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bj, i8 0, i64 %i.i, i1 false), !tbaa !136
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us.us.us294.2

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us.us.us294.2: ; preds = %.preheader.i.us.us.us.us.us.us293.2, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us.us.us294.1
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.fr
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %.fr379 ; 2 uses
  %.not.i.us.us.us.us.us.us292.3 = icmp eq ptr %.1174.us.us.us.us.us.us291, null
  br i1 %.not.i.us.us.us.us.us.us292.3, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us.us.us294.3, label %.preheader.i.us.us.us.us.us.us293.3

.preheader.i.us.us.us.us.us.us293.3:              ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us.us.us294.2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bl, i8 0, i64 %i.i, i1 false), !tbaa !136
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us.us.us294.3

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us.us.us294.3: ; preds = %.preheader.i.us.us.us.us.us.us293.3, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us.us.us294.2
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.fr
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %.fr379 ; 3 uses
  %niter811.next.3 = add nuw nsw i64 %niter811, 4 ; 2 uses
  %niter811.ncmp.3 = icmp eq i64 %niter811.next.3, %unroll_iter810
  br i1 %niter811.ncmp.3, label %._crit_edge.split.us.us.split.us.split.us.us.split.us298.unr-lcssa, label %.preheader172.us.us.us.new, !llvm.loop !485

._crit_edge.split.us.us.split.us.split.us.us.split.us298.unr-lcssa: ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us.us.us294.3
  br i1 %lcmp.mod807.not, label %._crit_edge.split.us.us.split.us.split.us.us.split.us298, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.split.us.us.split.us.split.us.us.split.us298.unr-lcssa, %.preheader172.us.us.us
  %.1174.us.us.us.us.us.us291.epil.init = phi ptr [ %.080200.us.us.us, %.preheader172.us.us.us ], [ %i.bn, %._crit_edge.split.us.us.split.us.split.us.us.split.us298.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod809)
  br label %bb.c

bb.c:                                             ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us.us.us294.epil, %.epil.preheader
  %.1174.us.us.us.us.us.us291.epil = phi ptr [ %i.bp, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us.us.us294.epil ], [ %.1174.us.us.us.us.us.us291.epil.init, %.epil.preheader ] ; 3 uses
  %epil.iter806 = phi i64 [ %epil.iter806.next, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us.us.us294.epil ], [ 0, %.epil.preheader ]
  %.not.i.us.us.us.us.us.us292.epil = icmp eq ptr %.1174.us.us.us.us.us.us291.epil, null
  br i1 %.not.i.us.us.us.us.us.us292.epil, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us.us.us294.epil, label %.preheader.i.us.us.us.us.us.us293.epil

.preheader.i.us.us.us.us.us.us293.epil:           ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.1174.us.us.us.us.us.us291.epil, i8 0, i64 %i.i, i1 false), !tbaa !136
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us.us.us294.epil

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us.us.us294.epil: ; preds = %.preheader.i.us.us.us.us.us.us293.epil, %bb.c
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.1174.us.us.us.us.us.us291.epil, i64 %.fr
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %.fr379 ; 2 uses
  %epil.iter806.next = add i64 %epil.iter806, 1   ; 2 uses
  %epil.iter806.cmp.not = icmp eq i64 %epil.iter806.next, %xtraiter805
  br i1 %epil.iter806.cmp.not, label %._crit_edge.split.us.us.split.us.split.us.us.split.us298, label %bb.c, !llvm.loop !488

._crit_edge.split.us.us.split.us.split.us.us.split.us298: ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us.us.us294.epil, %._crit_edge.split.us.us.split.us.split.us.us.split.us298.unr-lcssa
  %.lcssa791 = phi ptr [ %i.bn, %._crit_edge.split.us.us.split.us.split.us.us.split.us298.unr-lcssa ], [ %i.bp, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us.us.us294.epil ]
  %indvars.iv.next426 = add nuw nsw i64 %indvars.iv425, 1
  %exitcond428 = icmp eq i64 %indvars.iv425, %i.d
  br i1 %exitcond428, label %._crit_edge202.split, label %.preheader172.us.us.us, !llvm.loop !487

.preheader172.lr.ph.split.split.us.split.us.split: ; preds = %.preheader172.lr.ph.split.split.us
  br i1 %i.o, label %.preheader172.us.us.us300.preheader, label %._crit_edge202.split

.preheader172.us.us.us300.preheader:              ; preds = %.preheader172.lr.ph.split.split.us.split.us.split
  %xtraiter801 = and i64 %.pre, 3                 ; 3 uses
  %i.bq = icmp ult i64 %.pre, 4
  %unroll_iter = and i64 %.pre, 9223372036854775804
  %lcmp.mod802.not = icmp eq i64 %xtraiter801, 0
  %lcmp.mod804 = icmp ne i64 %xtraiter801, 0
  br label %.preheader172.us.us.us300

.preheader172.us.us.us300:                        ; preds = %.preheader172.us.us.us300.preheader, %._crit_edge.split.us.us.split.us.split.split.us.us.us
  %indvars.iv417 = phi i64 [ %indvars.iv.next418, %._crit_edge.split.us.us.split.us.split.split.us.us.us ], [ 0, %.preheader172.us.us.us300.preheader ] ; 2 uses
  %.080200.us.us.us302 = phi ptr [ %.lcssa793, %._crit_edge.split.us.us.split.us.split.split.us.us.us ], [ %i.b, %.preheader172.us.us.us300.preheader ] ; 2 uses
  br i1 %i.bq, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us257.us.us.epil.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us257.us.us

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us257.us.us: ; preds = %.preheader172.us.us.us300, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us261.us.us.3
  %.1174.us.us.us.us254.us.us = phi ptr [ %i.by, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us261.us.us.3 ], [ %.080200.us.us.us302, %.preheader172.us.us.us300 ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us261.us.us.3 ], [ 0, %.preheader172.us.us.us300 ]
  %i.br = getelementptr inbounds [8 x i8], ptr %.1174.us.us.us.us254.us.us, i64 %.fr ; 2 uses
  %.not.i98.us.us.us.us258.us.us = icmp eq ptr %.1174.us.us.us.us254.us.us, null
  br i1 %.not.i98.us.us.us.us258.us.us, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us261.us.us, label %.preheader.i106.us.us.us.us259.us.us

.preheader.i106.us.us.us.us259.us.us:             ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us257.us.us
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.br, i8 0, i64 %i.p, i1 false), !tbaa !136
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us261.us.us

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us261.us.us: ; preds = %.preheader.i106.us.us.us.us259.us.us, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us257.us.us
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.fr379
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %.fr ; 2 uses
  %.not.i98.us.us.us.us258.us.us.1 = icmp eq ptr %.1174.us.us.us.us254.us.us, null
  br i1 %.not.i98.us.us.us.us258.us.us.1, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us261.us.us.1, label %.preheader.i106.us.us.us.us259.us.us.1

.preheader.i106.us.us.us.us259.us.us.1:           ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us261.us.us
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bt, i8 0, i64 %i.p, i1 false), !tbaa !136
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us261.us.us.1

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us261.us.us.1: ; preds = %.preheader.i106.us.us.us.us259.us.us.1, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us261.us.us
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.fr379
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %.fr ; 2 uses
  %.not.i98.us.us.us.us258.us.us.2 = icmp eq ptr %.1174.us.us.us.us254.us.us, null
  br i1 %.not.i98.us.us.us.us258.us.us.2, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us261.us.us.2, label %.preheader.i106.us.us.us.us259.us.us.2

.preheader.i106.us.us.us.us259.us.us.2:           ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us261.us.us.1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bv, i8 0, i64 %i.p, i1 false), !tbaa !136
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us261.us.us.2

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us261.us.us.2: ; preds = %.preheader.i106.us.us.us.us259.us.us.2, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us261.us.us.1
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.fr379
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %.fr ; 2 uses
  %.not.i98.us.us.us.us258.us.us.3 = icmp eq ptr %.1174.us.us.us.us254.us.us, null
  br i1 %.not.i98.us.us.us.us258.us.us.3, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us261.us.us.3, label %.preheader.i106.us.us.us.us259.us.us.3

.preheader.i106.us.us.us.us259.us.us.3:           ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us261.us.us.2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bx, i8 0, i64 %i.p, i1 false), !tbaa !136
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us261.us.us.3

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us261.us.us.3: ; preds = %.preheader.i106.us.us.us.us259.us.us.3, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us261.us.us.2
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.fr379 ; 3 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.split.us.us.split.us.split.split.us.us.us.unr-lcssa, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us257.us.us, !llvm.loop !485

._crit_edge.split.us.us.split.us.split.split.us.us.us.unr-lcssa: ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us261.us.us.3
  br i1 %lcmp.mod802.not, label %._crit_edge.split.us.us.split.us.split.split.us.us.us, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us257.us.us.epil.preheader

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us257.us.us.epil.preheader: ; preds = %._crit_edge.split.us.us.split.us.split.split.us.us.us.unr-lcssa, %.preheader172.us.us.us300
  %.1174.us.us.us.us254.us.us.epil.init = phi ptr [ %.080200.us.us.us302, %.preheader172.us.us.us300 ], [ %i.by, %._crit_edge.split.us.us.split.us.split.split.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod804)
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us257.us.us.epil

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us257.us.us.epil: ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us261.us.us.epil, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us257.us.us.epil.preheader
  %.1174.us.us.us.us254.us.us.epil = phi ptr [ %i.ca, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us261.us.us.epil ], [ %.1174.us.us.us.us254.us.us.epil.init, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us257.us.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us261.us.us.epil ], [ 0, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us257.us.us.epil.preheader ]
  %i.bz = getelementptr inbounds [8 x i8], ptr %.1174.us.us.us.us254.us.us.epil, i64 %.fr ; 2 uses
  %.not.i98.us.us.us.us258.us.us.epil = icmp eq ptr %.1174.us.us.us.us254.us.us.epil, null
  br i1 %.not.i98.us.us.us.us258.us.us.epil, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us261.us.us.epil, label %.preheader.i106.us.us.us.us259.us.us.epil

.preheader.i106.us.us.us.us259.us.us.epil:        ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us257.us.us.epil
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bz, i8 0, i64 %i.p, i1 false), !tbaa !136
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us261.us.us.epil

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us261.us.us.epil: ; preds = %.preheader.i106.us.us.us.us259.us.us.epil, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us257.us.us.epil
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.fr379 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter801
  br i1 %epil.iter.cmp.not, label %._crit_edge.split.us.us.split.us.split.split.us.us.us, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.us.us.us.us257.us.us.epil, !llvm.loop !489

._crit_edge.split.us.us.split.us.split.split.us.us.us: ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us261.us.us.epil, %._crit_edge.split.us.us.split.us.split.split.us.us.us.unr-lcssa
  %.lcssa793 = phi ptr [ %i.by, %._crit_edge.split.us.us.split.us.split.split.us.us.us.unr-lcssa ], [ %i.ca, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108.us.us.us.us261.us.us.epil ]
  %indvars.iv.next418 = add nuw nsw i64 %indvars.iv417, 1
  %exitcond420 = icmp eq i64 %indvars.iv417, %i.d
  br i1 %exitcond420, label %._crit_edge202.split, label %.preheader172.us.us.us300, !llvm.loop !487

.preheader172:                                    ; preds = %.preheader172.preheader, %._crit_edge.split.split
  %indvars.iv403 = phi i64 [ %indvars.iv.next404, %._crit_edge.split.split ], [ 0, %.preheader172.preheader ] ; 5 uses
  %.080200 = phi ptr [ %i.hi, %._crit_edge.split.split ], [ %i.b, %.preheader172.preheader ] ; 5 uses
  %i.cb = mul i64 %i.ae, %indvars.iv403           ; 2 uses
  %scevgep537 = getelementptr i8, ptr %5, i64 %i.cb
  %scevgep538 = getelementptr i8, ptr %i.af, i64 %i.cb
  %i.cc = mul i64 %i.x, %indvars.iv403            ; 2 uses
  %scevgep528 = getelementptr i8, ptr %i.ag, i64 %i.cc
  %scevgep529 = getelementptr i8, ptr %i.ai, i64 %i.cc
  %i.cd = mul nuw nsw i64 %.pre, %indvars.iv403
  %scevgep526 = getelementptr i8, ptr %.080200, i64 %i.q
  %i.ce = getelementptr i8, ptr %.080200, i64 %i.u
  %i.cf = getelementptr i8, ptr %i.ce, i64 %i.r
  %scevgep527 = getelementptr i8, ptr %i.cf, i64 %i.q
  %i.cg = getelementptr i8, ptr %.080200, i64 %i.ac
  %scevgep536 = getelementptr i8, ptr %i.cg, i64 %i.y
  %bound0539 = icmp ult ptr %.080200, %scevgep538
  %bound1540 = icmp ult ptr %scevgep537, %scevgep536
  %found.conflict541 = and i1 %bound0539, %bound1540
  %i.ch = or i1 %found.conflict541, %i.ak
  %bound0 = icmp ult ptr %scevgep526, %scevgep529
  %bound1 = icmp ult ptr %scevgep528, %scevgep527
  %found.conflict = and i1 %bound0, %bound1
  %i.ci = or i1 %found.conflict, %i.an
  br label %bb.d

._crit_edge202.split:                             ; preds = %._crit_edge.split.split, %._crit_edge.split.us.us.split.us.split.split.us.us.us, %._crit_edge.split.us.us.split.us.split.us.us.split.us298, %._crit_edge.split.us.us.split.us.split.us.us.split.us.us.us, %bb.a, %.preheader172.lr.ph.split.split.us.split.us.split, %.preheader172.lr.ph
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 472 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !232
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 720 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !233
  %i.cp = tail call noundef i32 @_ZNK6casadi6Linsol5solveEPKdPdxbi(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef %i.cl, ptr noundef %i.b, i64 noundef %.pre, i1 noundef zeroext true, i32 noundef %i.co)
  %.not93 = icmp eq i32 %i.cp, 0
  br i1 %.not93, label %.preheader171, label %.loopexit

.preheader171:                                    ; preds = %._crit_edge202.split
  %i.cq = load i64, ptr %i.cm, align 8, !tbaa !224 ; 9 uses
  %i.cr = icmp sgt i64 %i.cq, 0
  br i1 %i.cr, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader171
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !235 ; 6 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !555 ; 16 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1704
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !556 ; 14 uses
  %i.cx = add i64 %i.cw, %i.cu                    ; 5 uses
  %.not.i109 = icmp eq ptr %6, null
  %.not15.i110 = icmp eq ptr %i.cs, null
  %i.cy = icmp sgt i64 %i.cu, 0                   ; 2 uses
  %i.cz = shl nuw i64 %i.cu, 3
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.db = load i64, ptr %i.da, align 8, !tbaa !201 ; 2 uses
  %i.dc = getelementptr [8 x i8], ptr %6, i64 %i.db ; 3 uses
  %i.dd = icmp sgt i64 %i.cw, 0                   ; 2 uses
  %i.de = shl nuw i64 %i.cw, 3
  %i.df = mul i64 %i.cq, %i.cw
  %i.dg = add i64 %i.df, %i.db
  %i.dh = shl i64 %i.dg, 3
  %scevgep561 = getelementptr i8, ptr %6, i64 %i.dh
  %i.di = shl i64 %i.cu, 3
  %scevgep562 = getelementptr i8, ptr %i.cs, i64 %i.di
  %i.dj = add nuw i64 %i.cq, 2305843009213693951
  %i.dk = mul i64 %i.cx, %i.dj
  %i.dl = add i64 %i.dk, %i.cw
  %i.dm = add i64 %i.dl, %i.cu
  %i.dn = shl i64 %i.dm, 3
  %scevgep563 = getelementptr i8, ptr %i.cs, i64 %i.dn
  %i.do = mul i64 %i.cq, %i.cu
  %i.dp = shl i64 %i.do, 3
  %scevgep586 = getelementptr i8, ptr %6, i64 %i.dp
  %i.dq = add nuw i64 %i.cq, 2305843009213693951
  %i.dr = mul i64 %i.cx, %i.dq
  %i.ds = add i64 %i.dr, %i.cu
  %i.dt = shl i64 %i.ds, 3
  %scevgep587 = getelementptr i8, ptr %i.cs, i64 %i.dt
  %min.iters.check594 = icmp ult i64 %i.cu, 8
  %bound0588 = icmp ult ptr %6, %scevgep587
  %bound1589 = icmp ult ptr %i.cs, %scevgep586
  %found.conflict590 = and i1 %bound0588, %bound1589
  %i.du = or i64 %i.cx, %i.cu
  %i.dv = and i64 %i.du, 1152921504606846976
  %i.dw = icmp ne i64 %i.dv, 0
  %i.dx = or i1 %found.conflict590, %i.dw
  %n.vec596 = and i64 %i.cu, 9223372036854775804  ; 4 uses
  %i.dy = shl i64 %n.vec596, 3                    ; 2 uses
  %cmp.n605 = icmp eq i64 %i.cu, %n.vec596
  %min.iters.check570 = icmp ult i64 %i.cw, 8
  %bound0564 = icmp ult ptr %i.dc, %scevgep563
  %bound1565 = icmp ult ptr %scevgep562, %scevgep561
  %found.conflict566 = and i1 %bound0564, %bound1565
  %i.dz = or i64 %i.cx, %i.cw
  %i.ea = and i64 %i.dz, 1152921504606846976
  %i.eb = icmp ne i64 %i.ea, 0
  %i.ec = or i1 %found.conflict566, %i.eb
  %n.vec572 = and i64 %i.cw, 9223372036854775804  ; 4 uses
  %i.ed = shl i64 %n.vec572, 3                    ; 2 uses
  %cmp.n581 = icmp eq i64 %i.cw, %n.vec572
  br label %bb.e

._crit_edge.split.split:                          ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108
  %indvars.iv.next404 = add nuw nsw i64 %indvars.iv403, 1
  %exitcond406 = icmp eq i64 %indvars.iv403, %i.d
  br i1 %exitcond406, label %._crit_edge202.split, label %.preheader172, !llvm.loop !487

bb.d:                                             ; preds = %.preheader172, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108
  %indvars.iv = phi i64 [ 0, %.preheader172 ], [ %indvars.iv.next, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108 ] ; 2 uses
  %.1174 = phi ptr [ %.080200, %.preheader172 ], [ %i.hi, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108 ] ; 5 uses
  %i.ee = add nuw nsw i64 %i.cd, %indvars.iv      ; 2 uses
  %.not.i = icmp ne ptr %.1174, null              ; 2 uses
  %brmerge.not = and i1 %.not.i, %i.h
  br i1 %brmerge.not, label %.lr.ph.i.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.ef = mul nuw nsw i64 %.fr, %i.ee
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ef ; 3 uses
  %brmerge = select i1 %min.iters.check545, i1 true, i1 %i.ch
  br i1 %brmerge, label %.lr.ph.i.preheader795, label %vector.ph546

vector.ph546:                                     ; preds = %.lr.ph.i.preheader
  %i.eh = getelementptr i8, ptr %.1174, i64 %i.al
  %i.ei = getelementptr i8, ptr %i.eg, i64 %i.al
  br label %vector.body548

vector.body548:                                   ; preds = %vector.body548, %vector.ph546
  %index549 = phi i64 [ 0, %vector.ph546 ], [ %index.next554, %vector.body548 ] ; 2 uses
  %i.ej = shl i64 %index549, 3                    ; 2 uses
  %next.gep550 = getelementptr i8, ptr %.1174, i64 %i.ej ; 2 uses
  %next.gep551 = getelementptr i8, ptr %i.eg, i64 %i.ej ; 2 uses
  %i.ek = getelementptr i8, ptr %next.gep551, i64 16
  %wide.load552 = load <2 x double>, ptr %next.gep551, align 8, !tbaa !136, !alias.scope !557
  %wide.load553 = load <2 x double>, ptr %i.ek, align 8, !tbaa !136, !alias.scope !557
  %i.el = getelementptr i8, ptr %next.gep550, i64 16
  store <2 x double> %wide.load552, ptr %next.gep550, align 8, !tbaa !136, !alias.scope !558, !noalias !557
  store <2 x double> %wide.load553, ptr %i.el, align 8, !tbaa !136, !alias.scope !558, !noalias !557
  %index.next554 = add nuw i64 %index549, 4       ; 2 uses
  %i.em = icmp eq i64 %index.next554, %n.vec547
  br i1 %i.em, label %middle.block555, label %vector.body548, !llvm.loop !493

middle.block555:                                  ; preds = %vector.body548
  br i1 %cmp.n556, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i.preheader795

.lr.ph.i.preheader795:                            ; preds = %.lr.ph.i.preheader, %middle.block555
  %.020.i.ph = phi i64 [ %n.vec547, %middle.block555 ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %.01019.i.ph = phi ptr [ %i.eh, %middle.block555 ], [ %.1174, %.lr.ph.i.preheader ] ; 2 uses
  %.01218.i.ph = phi ptr [ %i.ei, %middle.block555 ], [ %i.eg, %.lr.ph.i.preheader ] ; 2 uses
  %i.en = sub nsw i64 %.fr, %.020.i.ph
  %xtraiter = and i64 %i.en, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader795, %.lr.ph.i.prol
  %.020.i.prol = phi i64 [ %i.er, %.lr.ph.i.prol ], [ %.020.i.ph, %.lr.ph.i.preheader795 ]
  %.01019.i.prol = phi ptr [ %i.eq, %.lr.ph.i.prol ], [ %.01019.i.ph, %.lr.ph.i.preheader795 ] ; 2 uses
  %.01218.i.prol = phi ptr [ %i.eo, %.lr.ph.i.prol ], [ %.01218.i.ph, %.lr.ph.i.preheader795 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader795 ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.01218.i.prol, i64 8 ; 2 uses
  %i.ep = load double, ptr %.01218.i.prol, align 8, !tbaa !136
  %i.eq = getelementptr inbounds nuw i8, ptr %.01019.i.prol, i64 8 ; 2 uses
  store double %i.ep, ptr %.01019.i.prol, align 8, !tbaa !136
  %i.er = add nuw nsw i64 %.020.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !494

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader795
  %.020.i.unr = phi i64 [ %.020.i.ph, %.lr.ph.i.preheader795 ], [ %i.er, %.lr.ph.i.prol ]
  %.01019.i.unr = phi ptr [ %.01019.i.ph, %.lr.ph.i.preheader795 ], [ %i.eq, %.lr.ph.i.prol ]
  %.01218.i.unr = phi ptr [ %.01218.i.ph, %.lr.ph.i.preheader795 ], [ %i.eo, %.lr.ph.i.prol ]
  %i.es = sub nsw i64 %.020.i.ph, %.fr
  %i.et = icmp ugt i64 %i.es, -8
  br i1 %i.et, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.020.i = phi i64 [ %i.fs, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01019.i = phi ptr [ %i.fr, %.lr.ph.i ], [ %.01019.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.01218.i = phi ptr [ %i.fp, %.lr.ph.i ], [ %.01218.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.01218.i, i64 8
  %i.ev = load double, ptr %.01218.i, align 8, !tbaa !136
  %i.ew = getelementptr inbounds nuw i8, ptr %.01019.i, i64 8
  store double %i.ev, ptr %.01019.i, align 8, !tbaa !136
  %i.ex = getelementptr inbounds nuw i8, ptr %.01218.i, i64 16
  %i.ey = load double, ptr %i.eu, align 8, !tbaa !136
  %i.ez = getelementptr inbounds nuw i8, ptr %.01019.i, i64 16
  store double %i.ey, ptr %i.ew, align 8, !tbaa !136
  %i.fa = getelementptr inbounds nuw i8, ptr %.01218.i, i64 24
  %i.fb = load double, ptr %i.ex, align 8, !tbaa !136
  %i.fc = getelementptr inbounds nuw i8, ptr %.01019.i, i64 24
  store double %i.fb, ptr %i.ez, align 8, !tbaa !136
  %i.fd = getelementptr inbounds nuw i8, ptr %.01218.i, i64 32
  %i.fe = load double, ptr %i.fa, align 8, !tbaa !136
  %i.ff = getelementptr inbounds nuw i8, ptr %.01019.i, i64 32
  store double %i.fe, ptr %i.fc, align 8, !tbaa !136
  %i.fg = getelementptr inbounds nuw i8, ptr %.01218.i, i64 40
  %i.fh = load double, ptr %i.fd, align 8, !tbaa !136
  %i.fi = getelementptr inbounds nuw i8, ptr %.01019.i, i64 40
  store double %i.fh, ptr %i.ff, align 8, !tbaa !136
  %i.fj = getelementptr inbounds nuw i8, ptr %.01218.i, i64 48
  %i.fk = load double, ptr %i.fg, align 8, !tbaa !136
  %i.fl = getelementptr inbounds nuw i8, ptr %.01019.i, i64 48
  store double %i.fk, ptr %i.fi, align 8, !tbaa !136
  %i.fm = getelementptr inbounds nuw i8, ptr %.01218.i, i64 56
  %i.fn = load double, ptr %i.fj, align 8, !tbaa !136
  %i.fo = getelementptr inbounds nuw i8, ptr %.01019.i, i64 56
  store double %i.fn, ptr %i.fl, align 8, !tbaa !136
  %i.fp = getelementptr inbounds nuw i8, ptr %.01218.i, i64 64
  %i.fq = load double, ptr %i.fm, align 8, !tbaa !136
  %i.fr = getelementptr inbounds nuw i8, ptr %.01019.i, i64 64
  store double %i.fq, ptr %i.fo, align 8, !tbaa !136
  %i.fs = add nuw nsw i64 %.020.i, 8              ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.fs, %.fr
  br i1 %exitcond.not.i.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i, !llvm.loop !495

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit:       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block555, %bb.d
  %i.ft = getelementptr inbounds [8 x i8], ptr %.1174, i64 %.fr ; 4 uses
  %brmerge378.not = and i1 %.not.i, %i.o
  br i1 %brmerge378.not, label %.lr.ph.i101.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108

.lr.ph.i101.preheader:                            ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit
  %i.fu = mul nuw nsw i64 %.fr379, %i.ee
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.fu ; 3 uses
  %brmerge884 = select i1 %min.iters.check, i1 true, i1 %i.ci
  br i1 %brmerge884, label %.lr.ph.i101.preheader794, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i101.preheader
  %i.fw = getelementptr i8, ptr %i.ft, i64 %i.ao
  %i.fx = getelementptr i8, ptr %i.fv, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fy = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ft, i64 %i.fy ; 2 uses
  %next.gep531 = getelementptr i8, ptr %i.fv, i64 %i.fy ; 2 uses
  %i.fz = getelementptr i8, ptr %next.gep531, i64 16
  %wide.load = load <2 x double>, ptr %next.gep531, align 8, !tbaa !136, !alias.scope !559
  %wide.load532 = load <2 x double>, ptr %i.fz, align 8, !tbaa !136, !alias.scope !559
  %i.ga = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !136, !alias.scope !560, !noalias !559
  store <2 x double> %wide.load532, ptr %i.ga, align 8, !tbaa !136, !alias.scope !560, !noalias !559
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gb = icmp eq i64 %index.next, %n.vec
  br i1 %i.gb, label %middle.block, label %vector.body, !llvm.loop !499

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit108, label %.lr.ph.i101.preheader794

.lr.ph.i101.preheader794:                         ; preds = %.lr.ph.i101.preheader, %middle.block
  %.020.i102.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i101.preheader ] ; 4 uses
  %.01019.i103.ph = phi ptr [ %i.fw, %middle.block ], [ %i.ft, %.lr.ph.i101.preheader ] ; 2 uses
  %.01218.i104.ph = phi ptr [ %i.fx, %middle.block ], [ %i.fv, %.lr.ph.i101.preheader ] ; 2 uses
  %i.gc = sub nsw i64 %.fr379, %.020.i102.ph
  %xtraiter798 = and i64 %i.gc, 7                 ; 2 uses
  %lcmp.mod799.not = icmp eq i64 %xtraiter798, 0
  br i1 %lcmp.mod799.not, label %.lr.ph.i101.prol.loopexit, label %.lr.ph.i101.prol

.lr.ph.i101.prol:                                 ; preds = %.lr.ph.i101.preheader794, %.lr.ph.i101.prol
end_hunk_2
begin_hunk_3_@_ZNK6casadi13IdasInterface16solve_transposedEPNS_10IdasMemoryEdPKdS4_S4_Pd:bb.a
  %index.next579 = add nuw i64 %index574, 4       ; 2 uses
  %i.jj = icmp eq i64 %index.next579, %n.vec572
  br i1 %i.jj, label %middle.block580, label %vector.body573, !llvm.loop !511

middle.block580:                                  ; preds = %vector.body573
  br i1 %cmp.n581, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit130, label %.lr.ph.i123.preheader787

.lr.ph.i123.preheader787:                         ; preds = %.lr.ph.i123.preheader, %middle.block580
  %.020.i124.ph = phi i64 [ %n.vec572, %middle.block580 ], [ 0, %.lr.ph.i123.preheader ] ; 4 uses
  %.01019.i125.ph = phi ptr [ %i.je, %middle.block580 ], [ %i.jd, %.lr.ph.i123.preheader ] ; 2 uses
  %.01218.i126.ph = phi ptr [ %i.jf, %middle.block580 ], [ %i.jb, %.lr.ph.i123.preheader ] ; 2 uses
  %i.jk = sub nsw i64 %i.cw, %.020.i124.ph
  %xtraiter823 = and i64 %i.jk, 7                 ; 2 uses
  %lcmp.mod824.not = icmp eq i64 %xtraiter823, 0
  br i1 %lcmp.mod824.not, label %.lr.ph.i123.prol.loopexit, label %.lr.ph.i123.prol

.lr.ph.i123.prol:                                 ; preds = %.lr.ph.i123.preheader787, %.lr.ph.i123.prol
  %.020.i124.prol = phi i64 [ %i.jo, %.lr.ph.i123.prol ], [ %.020.i124.ph, %.lr.ph.i123.preheader787 ]
  %.01019.i125.prol = phi ptr [ %i.jn, %.lr.ph.i123.prol ], [ %.01019.i125.ph, %.lr.ph.i123.preheader787 ] ; 2 uses
  %.01218.i126.prol = phi ptr [ %i.jl, %.lr.ph.i123.prol ], [ %.01218.i126.ph, %.lr.ph.i123.preheader787 ] ; 2 uses
  %prol.iter825 = phi i64 [ %prol.iter825.next, %.lr.ph.i123.prol ], [ 0, %.lr.ph.i123.preheader787 ]
  %i.jl = getelementptr inbounds nuw i8, ptr %.01218.i126.prol, i64 8 ; 2 uses
  %i.jm = load double, ptr %.01218.i126.prol, align 8, !tbaa !136
  %i.jn = getelementptr inbounds nuw i8, ptr %.01019.i125.prol, i64 8 ; 2 uses
  store double %i.jm, ptr %.01019.i125.prol, align 8, !tbaa !136
  %i.jo = add nuw nsw i64 %.020.i124.prol, 1      ; 2 uses
  %prol.iter825.next = add i64 %prol.iter825, 1   ; 2 uses
  %prol.iter825.cmp.not = icmp eq i64 %prol.iter825.next, %xtraiter823
  br i1 %prol.iter825.cmp.not, label %.lr.ph.i123.prol.loopexit, label %.lr.ph.i123.prol, !llvm.loop !512

.lr.ph.i123.prol.loopexit:                        ; preds = %.lr.ph.i123.prol, %.lr.ph.i123.preheader787
  %.020.i124.unr = phi i64 [ %.020.i124.ph, %.lr.ph.i123.preheader787 ], [ %i.jo, %.lr.ph.i123.prol ]
  %.01019.i125.unr = phi ptr [ %.01019.i125.ph, %.lr.ph.i123.preheader787 ], [ %i.jn, %.lr.ph.i123.prol ]
  %.01218.i126.unr = phi ptr [ %.01218.i126.ph, %.lr.ph.i123.preheader787 ], [ %i.jl, %.lr.ph.i123.prol ]
  %i.jp = sub nsw i64 %.020.i124.ph, %i.cw
  %i.jq = icmp ugt i64 %i.jp, -8
  br i1 %i.jq, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit130, label %.lr.ph.i123

.preheader.i128:                                  ; preds = %.preheader.i117, %.lr.ph23.preheader.i118
  br i1 %i.dd, label %.lr.ph23.preheader.i129, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit130

.lr.ph23.preheader.i129:                          ; preds = %.preheader.i128
  %i.jr = mul nuw nsw i64 %i.cw, %indvars.iv437
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.jr
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.js, i8 0, i64 %i.de, i1 false), !tbaa !136
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit130

.lr.ph.i123:                                      ; preds = %.lr.ph.i123.prol.loopexit, %.lr.ph.i123
  %.020.i124 = phi i64 [ %i.kr, %.lr.ph.i123 ], [ %.020.i124.unr, %.lr.ph.i123.prol.loopexit ]
  %.01019.i125 = phi ptr [ %i.kq, %.lr.ph.i123 ], [ %.01019.i125.unr, %.lr.ph.i123.prol.loopexit ] ; 9 uses
  %.01218.i126 = phi ptr [ %i.ko, %.lr.ph.i123 ], [ %.01218.i126.unr, %.lr.ph.i123.prol.loopexit ] ; 9 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.01218.i126, i64 8
  %i.ju = load double, ptr %.01218.i126, align 8, !tbaa !136
  %i.jv = getelementptr inbounds nuw i8, ptr %.01019.i125, i64 8
  store double %i.ju, ptr %.01019.i125, align 8, !tbaa !136
  %i.jw = getelementptr inbounds nuw i8, ptr %.01218.i126, i64 16
  %i.jx = load double, ptr %i.jt, align 8, !tbaa !136
  %i.jy = getelementptr inbounds nuw i8, ptr %.01019.i125, i64 16
  store double %i.jx, ptr %i.jv, align 8, !tbaa !136
  %i.jz = getelementptr inbounds nuw i8, ptr %.01218.i126, i64 24
  %i.ka = load double, ptr %i.jw, align 8, !tbaa !136
  %i.kb = getelementptr inbounds nuw i8, ptr %.01019.i125, i64 24
  store double %i.ka, ptr %i.jy, align 8, !tbaa !136
  %i.kc = getelementptr inbounds nuw i8, ptr %.01218.i126, i64 32
  %i.kd = load double, ptr %i.jz, align 8, !tbaa !136
  %i.ke = getelementptr inbounds nuw i8, ptr %.01019.i125, i64 32
  store double %i.kd, ptr %i.kb, align 8, !tbaa !136
  %i.kf = getelementptr inbounds nuw i8, ptr %.01218.i126, i64 40
  %i.kg = load double, ptr %i.kc, align 8, !tbaa !136
  %i.kh = getelementptr inbounds nuw i8, ptr %.01019.i125, i64 40
  store double %i.kg, ptr %i.ke, align 8, !tbaa !136
  %i.ki = getelementptr inbounds nuw i8, ptr %.01218.i126, i64 48
  %i.kj = load double, ptr %i.kf, align 8, !tbaa !136
  %i.kk = getelementptr inbounds nuw i8, ptr %.01019.i125, i64 48
  store double %i.kj, ptr %i.kh, align 8, !tbaa !136
  %i.kl = getelementptr inbounds nuw i8, ptr %.01218.i126, i64 56
  %i.km = load double, ptr %i.ki, align 8, !tbaa !136
  %i.kn = getelementptr inbounds nuw i8, ptr %.01019.i125, i64 56
  store double %i.km, ptr %i.kk, align 8, !tbaa !136
  %i.ko = getelementptr inbounds nuw i8, ptr %.01218.i126, i64 64
  %i.kp = load double, ptr %i.kl, align 8, !tbaa !136
  %i.kq = getelementptr inbounds nuw i8, ptr %.01019.i125, i64 64
  store double %i.kp, ptr %i.kn, align 8, !tbaa !136
  %i.kr = add nuw nsw i64 %.020.i124, 8           ; 2 uses
  %exitcond.not.i127.7 = icmp eq i64 %i.kr, %i.cw
  br i1 %exitcond.not.i127.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit130, label %.lr.ph.i123, !llvm.loop !513

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit130:    ; preds = %.lr.ph.i123.prol.loopexit, %.lr.ph.i123, %middle.block580, %bb.e, %.preheader16.i122, %.preheader.i128, %.lr.ph23.preheader.i129
  %indvars.iv.next438 = add nuw nsw i64 %indvars.iv437, 1 ; 2 uses
  %exitcond440.not = icmp eq i64 %indvars.iv.next438, %i.cq
  br i1 %exitcond440.not, label %._crit_edge, label %bb.e, !llvm.loop !514

bb.g:                                             ; preds = %._crit_edge
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 2129
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !237, !range !76, !noundef !77
  %i.ku = trunc nuw i8 %i.kt to i1
  %i.kv = icmp ne ptr %4, null
  %or.cond = and i1 %i.kv, %i.ku
  br i1 %or.cond, label %bb.h, label %..loopexit170_crit_edge

..loopexit170_crit_edge:                          ; preds = %bb.g
  %.pre478 = load ptr, ptr %i.a, align 8, !tbaa !235
  %.phi.trans.insert479 = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %.pre480 = load i64, ptr %.phi.trans.insert479, align 8, !tbaa !555
  %.phi.trans.insert481 = getelementptr inbounds nuw i8, ptr %0, i64 1704
  %.pre482 = load i64, ptr %.phi.trans.insert481, align 8, !tbaa !556
  br label %.loopexit170

bb.h:                                             ; preds = %bb.g
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 1696 ; 2 uses
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !555
  %i.ky = mul nsw i64 %i.kx, %i.cq                ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 2 uses
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !201 ; 3 uses
  %i.lb = sub nsw i64 %i.la, %i.ky                ; 2 uses
  %.not.i131 = icmp ne ptr %6, null               ; 2 uses
  %i.lc = icmp sgt i64 %i.lb, 0
  %or.cond.i = and i1 %.not.i131, %i.lc
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit

.lr.ph.preheader.i:                               ; preds = %bb.h
  %i.ld = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ky
  %i.le = shl nuw i64 %i.lb, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ld, i8 0, i64 %i.le, i1 false), !tbaa !136
  br label %_ZN6casadi12casadi_clearIdEEvPT_x.exit

_ZN6casadi12casadi_clearIdEEvPT_x.exit:           ; preds = %bb.h, %.lr.ph.preheader.i
  %i.lf = getelementptr inbounds [8 x i8], ptr %6, i64 %i.la ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 1704 ; 2 uses
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !556
  %i.li = mul nsw i64 %i.lh, %i.cq                ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !225
  %i.ll = sub nsw i64 %i.lk, %i.li                ; 2 uses
  %i.lm = icmp sgt i64 %i.ll, 0
  %or.cond.i133 = and i1 %.not.i131, %i.lm
  br i1 %or.cond.i133, label %.lr.ph.preheader.i134, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit135

.lr.ph.preheader.i134:                            ; preds = %_ZN6casadi12casadi_clearIdEEvPT_x.exit
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.lf, i64 %i.li
  %i.lo = shl nuw i64 %i.ll, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ln, i8 0, i64 %i.lo, i1 false), !tbaa !136
  br label %_ZN6casadi12casadi_clearIdEEvPT_x.exit135

_ZN6casadi12casadi_clearIdEEvPT_x.exit135:        ; preds = %_ZN6casadi12casadi_clearIdEEvPT_x.exit, %.lr.ph.preheader.i134
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !139
  %i.lr = getelementptr inbounds [8 x i8], ptr %3, i64 %i.lq
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !238 ; 2 uses
  %i.lu = getelementptr inbounds [8 x i8], ptr %i.lt, i64 %i.la
  %i.lv = tail call noundef i32 @_ZNK6casadi17SundialsInterface9calc_daeBEPNS_14SundialsMemoryEdPKdS4_S4_S4_S4_PdS5_(ptr noundef nonnull align 8 dereferenceable(2192) %0, ptr noundef nonnull %1, double noundef %2, ptr noundef %3, ptr noundef %i.lr, ptr noundef %6, ptr noundef %i.lf, ptr noundef null, ptr noundef %i.lt, ptr noundef %i.lu)
  %.not94 = icmp eq i32 %i.lv, 0
  br i1 %.not94, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %_ZN6casadi12casadi_clearIdEEvPT_x.exit135
  %i.lw = load ptr, ptr %i.a, align 8, !tbaa !235 ; 5 uses
  %i.lx = load i64, ptr %i.kw, align 8, !tbaa !555 ; 34 uses
  %i.ly = load i64, ptr %i.lg, align 8, !tbaa !556 ; 31 uses
  %i.lz = add nsw i64 %i.ly, %i.lx
  %i.ma = load i64, ptr %i.cm, align 8, !tbaa !224 ; 23 uses
  %i.mb = mul nsw i64 %i.lz, %i.ma
  %i.mc = getelementptr inbounds [8 x i8], ptr %i.lw, i64 %i.mb ; 2 uses
  %i.md = load i64, ptr %i.c, align 8, !tbaa !236 ; 7 uses
  %.not95321 = icmp sgt i64 %i.md, 0
  %i.me = icmp sgt i64 %i.ma, 0
  %or.cond513 = select i1 %.not95321, i1 %i.me, i1 false
  br i1 %or.cond513, label %.preheader169.lr.ph.split, label %.loopexit170

.preheader169.lr.ph.split:                        ; preds = %bb.i
  %i.mf = icmp sgt i64 %i.ly, 0
  %i.mg = icmp sgt i64 %i.lx, 0
  %i.mh = load ptr, ptr %i.ls, align 8, !tbaa !238 ; 12 uses
  %i.mi = icmp ne ptr %i.mh, null                 ; 2 uses
  %invariant.op = and i1 %i.mi, %i.mg
  %i.mj = load i64, ptr %i.kz, align 8, !tbaa !201 ; 5 uses
  %i.mk = getelementptr inbounds [8 x i8], ptr %i.mh, i64 %i.mj ; 2 uses
  %invariant.op311 = and i1 %i.mi, %i.mf
  %invariant.op311.fr320 = freeze i1 %invariant.op311 ; 2 uses
  %invariant.op.fr = freeze i1 %invariant.op
  br i1 %invariant.op.fr, label %.preheader169.us.preheader, label %.preheader169.lr.ph.split.split

.preheader169.us.preheader:                       ; preds = %.preheader169.lr.ph.split
  %i.ml = shl i64 %i.lx, 3                        ; 3 uses
  %i.mm = shl i64 %i.ly, 3                        ; 3 uses
  %i.mn = add i64 %i.ml, %i.mm                    ; 2 uses
  %i.mo = add nsw i64 %i.ma, -1
  %i.mp = mul i64 %i.mn, %i.mo
  %i.mq = mul i64 %i.ma, %i.ly
  %i.mr = shl i64 %i.mj, 3
  %i.ms = add i64 %i.mq, %i.mj
  %i.mt = shl i64 %i.ms, 3
  %i.mu = mul i64 %i.ma, %i.ly                    ; 2 uses
  %i.mv = shl i64 %i.mu, 3
  %i.mw = shl i64 %i.mu, 4
  %i.mx = shl i64 %i.lx, 3                        ; 2 uses
  %i.my = add i64 %i.lx, %i.ly
  %i.mz = shl i64 %i.my, 3                        ; 2 uses
  %i.na = add nsw i64 %i.ma, -1
  %i.nb = mul i64 %i.mz, %i.na
  %i.nc = mul i64 %i.ma, %i.lx
  %i.nd = shl i64 %i.nc, 3
  %i.ne = mul i64 %i.ma, %i.lx                    ; 2 uses
  %i.nf = shl i64 %i.ne, 3
  %i.ng = shl i64 %i.ne, 4
  %i.nh = shl i64 %i.lx, 3                        ; 2 uses
  %i.ni = add i64 %i.lx, %i.ly
  %i.nj = shl i64 %i.ni, 3                        ; 2 uses
  %i.nk = add nsw i64 %i.ma, -1
  %i.nl = mul i64 %i.nj, %i.nk
  %i.nm = mul i64 %i.ma, %i.lx
  %i.nn = shl i64 %i.nm, 3
  %i.no = mul i64 %i.ma, %i.lx                    ; 2 uses
  %i.np = shl i64 %i.no, 3
  %i.nq = shl i64 %i.no, 4
  %i.nr = getelementptr i8, ptr %i.mh, i64 %i.nn
  %i.ns = getelementptr i8, ptr %i.mh, i64 %i.nq
  %i.nt = getelementptr i8, ptr %i.mh, i64 %i.nd
  %i.nu = getelementptr i8, ptr %i.mh, i64 %i.ng
  %i.nv = getelementptr i8, ptr %i.mh, i64 %i.mt
  %i.nw = getelementptr i8, ptr %i.mh, i64 %i.mw
  %i.nx = getelementptr i8, ptr %i.nw, i64 %i.mr
  %min.iters.check704 = icmp ult i64 %i.lx, 6
  %i.ny = or i64 %i.nh, %i.nj
  %i.nz = icmp slt i64 %i.ny, 0
  %n.vec706 = and i64 %i.lx, -4                   ; 4 uses
  %i.oa = shl i64 %n.vec706, 3                    ; 2 uses
  %cmp.n717 = icmp eq i64 %i.lx, %n.vec706
  %xtraiter829 = and i64 %i.lx, 3                 ; 2 uses
  %lcmp.mod830.not = icmp eq i64 %xtraiter829, 0
  %min.iters.check677 = icmp ult i64 %i.lx, 6
  %i.ob = or i64 %i.mx, %i.mz
  %i.oc = icmp slt i64 %i.ob, 0
  %n.vec679 = and i64 %i.lx, -4                   ; 4 uses
  %i.od = shl i64 %n.vec679, 3                    ; 2 uses
  %cmp.n690 = icmp eq i64 %i.lx, %n.vec679
  %xtraiter832 = and i64 %i.lx, 3                 ; 2 uses
  %lcmp.mod833.not = icmp eq i64 %xtraiter832, 0
  %min.iters.check650 = icmp ult i64 %i.ly, 6
  %i.oe = or i64 %i.mm, %i.mn
  %i.of = icmp slt i64 %i.oe, 0
  %n.vec652 = and i64 %i.ly, -4                   ; 4 uses
  %i.og = shl i64 %n.vec652, 3                    ; 2 uses
  %cmp.n663 = icmp eq i64 %i.ly, %n.vec652
  %xtraiter835 = and i64 %i.ly, 3                 ; 2 uses
  %lcmp.mod836.not = icmp eq i64 %xtraiter835, 0
  br label %.preheader169.us

.preheader169.us:                                 ; preds = %.preheader169.us.preheader, %._crit_edge309.split.us346
  %indvar640 = phi i64 [ 0, %.preheader169.us.preheader ], [ %indvar.next641, %._crit_edge309.split.us346 ] ; 4 uses
  %indvars.iv463 = phi i64 [ 1, %.preheader169.us.preheader ], [ %indvars.iv.next464, %._crit_edge309.split.us346 ] ; 3 uses
  %.2322.us = phi ptr [ %i.mc, %.preheader169.us.preheader ], [ %.us-phi318.us, %._crit_edge309.split.us346 ] ; 8 uses
  %i.oh = mul i64 %i.np, %indvar640               ; 2 uses
  %scevgep696 = getelementptr i8, ptr %i.nr, i64 %i.oh
  %scevgep697 = getelementptr i8, ptr %i.ns, i64 %i.oh
  %i.oi = mul i64 %i.nf, %indvar640               ; 2 uses
  %scevgep669 = getelementptr i8, ptr %i.nt, i64 %i.oi
  %scevgep670 = getelementptr i8, ptr %i.nu, i64 %i.oi
  %i.oj = mul i64 %i.mv, %indvar640               ; 2 uses
  %scevgep642 = getelementptr i8, ptr %i.nv, i64 %i.oj
  %scevgep643 = getelementptr i8, ptr %i.nx, i64 %i.oj
  %i.ok = mul nuw nsw i64 %indvars.iv463, %i.ma   ; 2 uses
  br i1 %invariant.op311.fr320, label %.lr.ph308.split.split.us325.preheader, label %.lr.ph308.split.split.us.us.preheader

.lr.ph308.split.split.us.us.preheader:            ; preds = %.preheader169.us
  %i.ol = getelementptr i8, ptr %.2322.us, i64 %i.nl
  %scevgep695 = getelementptr i8, ptr %i.ol, i64 %i.nh
  %bound0698 = icmp ult ptr %.2322.us, %scevgep697
  %bound1699 = icmp ult ptr %scevgep696, %scevgep695
  %found.conflict700 = and i1 %bound0698, %bound1699
  %i.om = or i1 %found.conflict700, %i.nz
  br label %.lr.ph308.split.split.us.us

.lr.ph308.split.split.us325.preheader:            ; preds = %.preheader169.us
  %scevgep638 = getelementptr i8, ptr %.2322.us, i64 %i.ml
  %i.on = getelementptr i8, ptr %.2322.us, i64 %i.mp
  %i.oo = getelementptr i8, ptr %i.on, i64 %i.mm
  %scevgep639 = getelementptr i8, ptr %i.oo, i64 %i.ml
  %i.op = getelementptr i8, ptr %.2322.us, i64 %i.nb
  %scevgep668 = getelementptr i8, ptr %i.op, i64 %i.mx
  %bound0671 = icmp ult ptr %.2322.us, %scevgep670
  %bound1672 = icmp ult ptr %scevgep669, %scevgep668
  %found.conflict673 = and i1 %bound0671, %bound1672
  %i.oq = or i1 %found.conflict673, %i.oc
  %bound0644 = icmp ult ptr %scevgep638, %scevgep643
  %bound1645 = icmp ult ptr %scevgep642, %scevgep639
  %found.conflict646 = and i1 %bound0644, %bound1645
  %i.or = or i1 %found.conflict646, %i.of
  br label %.lr.ph308.split.split.us325

.lr.ph308.split.split.us.us:                      ; preds = %.lr.ph308.split.split.us.us.preheader, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.us314.us
  %indvars.iv455 = phi i64 [ %indvars.iv.next456, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.us314.us ], [ 0, %.lr.ph308.split.split.us.us.preheader ] ; 2 uses
  %.3306.us313.us = phi ptr [ %i.qh, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.us314.us ], [ %.2322.us, %.lr.ph308.split.split.us.us.preheader ] ; 5 uses
  %.not381 = icmp eq ptr %.3306.us313.us, null
  br i1 %.not381, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.us314.us, label %.lr.ph.i137.us.us.preheader

.lr.ph.i137.us.us.preheader:                      ; preds = %.lr.ph308.split.split.us.us
  %i.os = add nuw nsw i64 %indvars.iv455, %i.ok
  %i.ot = mul nsw i64 %i.os, %i.lx
  %i.ou = getelementptr inbounds [8 x i8], ptr %i.mh, i64 %i.ot ; 3 uses
  %brmerge887 = select i1 %min.iters.check704, i1 true, i1 %i.om
  br i1 %brmerge887, label %.lr.ph.i137.us.us.preheader780, label %vector.ph705

vector.ph705:                                     ; preds = %.lr.ph.i137.us.us.preheader
  %i.ov = getelementptr i8, ptr %.3306.us313.us, i64 %i.oa
  %i.ow = getelementptr i8, ptr %i.ou, i64 %i.oa
  br label %vector.body707

vector.body707:                                   ; preds = %vector.body707, %vector.ph705
  %index708 = phi i64 [ 0, %vector.ph705 ], [ %index.next715, %vector.body707 ] ; 2 uses
  %i.ox = shl i64 %index708, 3                    ; 2 uses
  %next.gep709 = getelementptr i8, ptr %.3306.us313.us, i64 %i.ox ; 3 uses
  %next.gep710 = getelementptr i8, ptr %i.ou, i64 %i.ox ; 2 uses
  %i.oy = getelementptr i8, ptr %next.gep710, i64 16
  %wide.load711 = load <2 x double>, ptr %next.gep710, align 8, !tbaa !136, !alias.scope !565
  %wide.load712 = load <2 x double>, ptr %i.oy, align 8, !tbaa !136, !alias.scope !565
  %i.oz = getelementptr i8, ptr %next.gep709, i64 16 ; 2 uses
  %wide.load713 = load <2 x double>, ptr %next.gep709, align 8, !tbaa !136, !alias.scope !566, !noalias !565
  %wide.load714 = load <2 x double>, ptr %i.oz, align 8, !tbaa !136, !alias.scope !566, !noalias !565
  %i.pa = fsub <2 x double> %wide.load713, %wide.load711
  %i.pb = fsub <2 x double> %wide.load714, %wide.load712
  store <2 x double> %i.pa, ptr %next.gep709, align 8, !tbaa !136, !alias.scope !566, !noalias !565
  store <2 x double> %i.pb, ptr %i.oz, align 8, !tbaa !136, !alias.scope !566, !noalias !565
  %index.next715 = add nuw i64 %index708, 4       ; 2 uses
  %i.pc = icmp eq i64 %index.next715, %n.vec706
  br i1 %i.pc, label %middle.block716, label %vector.body707, !llvm.loop !518

middle.block716:                                  ; preds = %vector.body707
  br i1 %cmp.n717, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.us314.us, label %.lr.ph.i137.us.us.preheader780

.lr.ph.i137.us.us.preheader780:                   ; preds = %.lr.ph.i137.us.us.preheader, %middle.block716
  %.014.i.us.us.ph = phi i64 [ %n.vec706, %middle.block716 ], [ 0, %.lr.ph.i137.us.us.preheader ] ; 3 uses
  %.0813.i.us.us.ph = phi ptr [ %i.ov, %middle.block716 ], [ %.3306.us313.us, %.lr.ph.i137.us.us.preheader ] ; 2 uses
  %.0912.i.us.us.ph = phi ptr [ %i.ow, %middle.block716 ], [ %i.ou, %.lr.ph.i137.us.us.preheader ] ; 2 uses
  br i1 %lcmp.mod830.not, label %.lr.ph.i137.us.us.prol.loopexit, label %.lr.ph.i137.us.us.prol

.lr.ph.i137.us.us.prol:                           ; preds = %.lr.ph.i137.us.us.preheader780, %.lr.ph.i137.us.us.prol
  %.014.i.us.us.prol = phi i64 [ %i.pi, %.lr.ph.i137.us.us.prol ], [ %.014.i.us.us.ph, %.lr.ph.i137.us.us.preheader780 ]
  %.0813.i.us.us.prol = phi ptr [ %i.pf, %.lr.ph.i137.us.us.prol ], [ %.0813.i.us.us.ph, %.lr.ph.i137.us.us.preheader780 ] ; 3 uses
  %.0912.i.us.us.prol = phi ptr [ %i.pd, %.lr.ph.i137.us.us.prol ], [ %.0912.i.us.us.ph, %.lr.ph.i137.us.us.preheader780 ] ; 2 uses
  %prol.iter831 = phi i64 [ %prol.iter831.next, %.lr.ph.i137.us.us.prol ], [ 0, %.lr.ph.i137.us.us.preheader780 ]
  %i.pd = getelementptr inbounds nuw i8, ptr %.0912.i.us.us.prol, i64 8 ; 2 uses
  %i.pe = load double, ptr %.0912.i.us.us.prol, align 8, !tbaa !136
  %i.pf = getelementptr inbounds nuw i8, ptr %.0813.i.us.us.prol, i64 8 ; 2 uses
  %i.pg = load double, ptr %.0813.i.us.us.prol, align 8, !tbaa !136
  %i.ph = fsub double %i.pg, %i.pe
  store double %i.ph, ptr %.0813.i.us.us.prol, align 8, !tbaa !136
  %i.pi = add nuw nsw i64 %.014.i.us.us.prol, 1   ; 2 uses
  %prol.iter831.next = add i64 %prol.iter831, 1   ; 2 uses
  %prol.iter831.cmp.not = icmp eq i64 %prol.iter831.next, %xtraiter829
  br i1 %prol.iter831.cmp.not, label %.lr.ph.i137.us.us.prol.loopexit, label %.lr.ph.i137.us.us.prol, !llvm.loop !519

.lr.ph.i137.us.us.prol.loopexit:                  ; preds = %.lr.ph.i137.us.us.prol, %.lr.ph.i137.us.us.preheader780
  %.014.i.us.us.unr = phi i64 [ %.014.i.us.us.ph, %.lr.ph.i137.us.us.preheader780 ], [ %i.pi, %.lr.ph.i137.us.us.prol ]
  %.0813.i.us.us.unr = phi ptr [ %.0813.i.us.us.ph, %.lr.ph.i137.us.us.preheader780 ], [ %i.pf, %.lr.ph.i137.us.us.prol ]
  %.0912.i.us.us.unr = phi ptr [ %.0912.i.us.us.ph, %.lr.ph.i137.us.us.preheader780 ], [ %i.pd, %.lr.ph.i137.us.us.prol ]
  %i.pj = sub i64 %.014.i.us.us.ph, %i.lx
  %i.pk = icmp ugt i64 %i.pj, -4
  br i1 %i.pk, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.us314.us, label %.lr.ph.i137.us.us

.lr.ph.i137.us.us:                                ; preds = %.lr.ph.i137.us.us.prol.loopexit, %.lr.ph.i137.us.us
  %.014.i.us.us = phi i64 [ %i.qf, %.lr.ph.i137.us.us ], [ %.014.i.us.us.unr, %.lr.ph.i137.us.us.prol.loopexit ]
  %.0813.i.us.us = phi ptr [ %i.qc, %.lr.ph.i137.us.us ], [ %.0813.i.us.us.unr, %.lr.ph.i137.us.us.prol.loopexit ] ; 6 uses
  %.0912.i.us.us = phi ptr [ %i.qa, %.lr.ph.i137.us.us ], [ %.0912.i.us.us.unr, %.lr.ph.i137.us.us.prol.loopexit ] ; 5 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %.0912.i.us.us, i64 8
  %i.pm = load double, ptr %.0912.i.us.us, align 8, !tbaa !136
  %i.pn = getelementptr inbounds nuw i8, ptr %.0813.i.us.us, i64 8 ; 2 uses
  %i.po = load double, ptr %.0813.i.us.us, align 8, !tbaa !136
  %i.pp = fsub double %i.po, %i.pm
  store double %i.pp, ptr %.0813.i.us.us, align 8, !tbaa !136
  %i.pq = getelementptr inbounds nuw i8, ptr %.0912.i.us.us, i64 16
  %i.pr = load double, ptr %i.pl, align 8, !tbaa !136
  %i.ps = getelementptr inbounds nuw i8, ptr %.0813.i.us.us, i64 16 ; 2 uses
  %i.pt = load double, ptr %i.pn, align 8, !tbaa !136
  %i.pu = fsub double %i.pt, %i.pr
  store double %i.pu, ptr %i.pn, align 8, !tbaa !136
  %i.pv = getelementptr inbounds nuw i8, ptr %.0912.i.us.us, i64 24
  %i.pw = load double, ptr %i.pq, align 8, !tbaa !136
  %i.px = getelementptr inbounds nuw i8, ptr %.0813.i.us.us, i64 24 ; 2 uses
  %i.py = load double, ptr %i.ps, align 8, !tbaa !136
  %i.pz = fsub double %i.py, %i.pw
  store double %i.pz, ptr %i.ps, align 8, !tbaa !136
  %i.qa = getelementptr inbounds nuw i8, ptr %.0912.i.us.us, i64 32
  %i.qb = load double, ptr %i.pv, align 8, !tbaa !136
  %i.qc = getelementptr inbounds nuw i8, ptr %.0813.i.us.us, i64 32
  %i.qd = load double, ptr %i.px, align 8, !tbaa !136
  %i.qe = fsub double %i.qd, %i.qb
  store double %i.qe, ptr %i.px, align 8, !tbaa !136
  %i.qf = add nuw nsw i64 %.014.i.us.us, 4        ; 2 uses
  %exitcond.not.i138.us.us.3 = icmp eq i64 %i.qf, %i.lx
  br i1 %exitcond.not.i138.us.us.3, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.us314.us, label %.lr.ph.i137.us.us, !llvm.loop !520

_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.us314.us: ; preds = %.lr.ph.i137.us.us.prol.loopexit, %.lr.ph.i137.us.us, %middle.block716, %.lr.ph308.split.split.us.us
  %i.qg = getelementptr inbounds [8 x i8], ptr %.3306.us313.us, i64 %i.lx
  %i.qh = getelementptr inbounds [8 x i8], ptr %i.qg, i64 %i.ly ; 2 uses
  %indvars.iv.next456 = add nuw nsw i64 %indvars.iv455, 1 ; 2 uses
  %exitcond458.not = icmp eq i64 %indvars.iv.next456, %i.ma
  br i1 %exitcond458.not, label %._crit_edge309.split.us346, label %.lr.ph308.split.split.us.us, !llvm.loop !521

.lr.ph308.split.split.us325:                      ; preds = %.lr.ph308.split.split.us325.preheader, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit146.us343
  %indvars.iv459 = phi i64 [ %indvars.iv.next460, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit146.us343 ], [ 0, %.lr.ph308.split.split.us325.preheader ] ; 2 uses
  %.3306.us327 = phi ptr [ %i.tl, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit146.us343 ], [ %.2322.us, %.lr.ph308.split.split.us325.preheader ] ; 6 uses
  %i.qi = add nuw nsw i64 %indvars.iv459, %i.ok   ; 2 uses
  %.not382 = icmp eq ptr %.3306.us327, null
  br i1 %.not382, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit146.us343, label %.lr.ph.i137.us329.preheader

.lr.ph.i137.us329.preheader:                      ; preds = %.lr.ph308.split.split.us325
  %i.qj = mul nsw i64 %i.qi, %i.lx
  %i.qk = getelementptr inbounds [8 x i8], ptr %i.mh, i64 %i.qj ; 3 uses
  %brmerge888 = select i1 %min.iters.check677, i1 true, i1 %i.oq
  br i1 %brmerge888, label %.lr.ph.i137.us329.preheader779, label %vector.ph678

vector.ph678:                                     ; preds = %.lr.ph.i137.us329.preheader
  %i.ql = getelementptr i8, ptr %.3306.us327, i64 %i.od
  %i.qm = getelementptr i8, ptr %i.qk, i64 %i.od
  br label %vector.body680

vector.body680:                                   ; preds = %vector.body680, %vector.ph678
  %index681 = phi i64 [ 0, %vector.ph678 ], [ %index.next688, %vector.body680 ] ; 2 uses
  %i.qn = shl i64 %index681, 3                    ; 2 uses
  %next.gep682 = getelementptr i8, ptr %.3306.us327, i64 %i.qn ; 3 uses
  %next.gep683 = getelementptr i8, ptr %i.qk, i64 %i.qn ; 2 uses
  %i.qo = getelementptr i8, ptr %next.gep683, i64 16
  %wide.load684 = load <2 x double>, ptr %next.gep683, align 8, !tbaa !136, !alias.scope !567
  %wide.load685 = load <2 x double>, ptr %i.qo, align 8, !tbaa !136, !alias.scope !567
  %i.qp = getelementptr i8, ptr %next.gep682, i64 16 ; 2 uses
  %wide.load686 = load <2 x double>, ptr %next.gep682, align 8, !tbaa !136, !alias.scope !568, !noalias !567
  %wide.load687 = load <2 x double>, ptr %i.qp, align 8, !tbaa !136, !alias.scope !568, !noalias !567
  %i.qq = fsub <2 x double> %wide.load686, %wide.load684
  %i.qr = fsub <2 x double> %wide.load687, %wide.load685
  store <2 x double> %i.qq, ptr %next.gep682, align 8, !tbaa !136, !alias.scope !568, !noalias !567
  store <2 x double> %i.qr, ptr %i.qp, align 8, !tbaa !136, !alias.scope !568, !noalias !567
  %index.next688 = add nuw i64 %index681, 4       ; 2 uses
  %i.qs = icmp eq i64 %index.next688, %n.vec679
  br i1 %i.qs, label %middle.block689, label %vector.body680, !llvm.loop !525

middle.block689:                                  ; preds = %vector.body680
  br i1 %cmp.n690, label %.lr.ph.i141.us337.preheader, label %.lr.ph.i137.us329.preheader779

.lr.ph.i137.us329.preheader779:                   ; preds = %.lr.ph.i137.us329.preheader, %middle.block689
  %.014.i.us330.ph = phi i64 [ %n.vec679, %middle.block689 ], [ 0, %.lr.ph.i137.us329.preheader ] ; 3 uses
  %.0813.i.us331.ph = phi ptr [ %i.ql, %middle.block689 ], [ %.3306.us327, %.lr.ph.i137.us329.preheader ] ; 2 uses
  %.0912.i.us332.ph = phi ptr [ %i.qm, %middle.block689 ], [ %i.qk, %.lr.ph.i137.us329.preheader ] ; 2 uses
  br i1 %lcmp.mod833.not, label %.lr.ph.i137.us329.prol.loopexit, label %.lr.ph.i137.us329.prol

.lr.ph.i137.us329.prol:                           ; preds = %.lr.ph.i137.us329.preheader779, %.lr.ph.i137.us329.prol
  %.014.i.us330.prol = phi i64 [ %i.qy, %.lr.ph.i137.us329.prol ], [ %.014.i.us330.ph, %.lr.ph.i137.us329.preheader779 ]
  %.0813.i.us331.prol = phi ptr [ %i.qv, %.lr.ph.i137.us329.prol ], [ %.0813.i.us331.ph, %.lr.ph.i137.us329.preheader779 ] ; 3 uses
  %.0912.i.us332.prol = phi ptr [ %i.qt, %.lr.ph.i137.us329.prol ], [ %.0912.i.us332.ph, %.lr.ph.i137.us329.preheader779 ] ; 2 uses
  %prol.iter834 = phi i64 [ %prol.iter834.next, %.lr.ph.i137.us329.prol ], [ 0, %.lr.ph.i137.us329.preheader779 ]
  %i.qt = getelementptr inbounds nuw i8, ptr %.0912.i.us332.prol, i64 8 ; 2 uses
  %i.qu = load double, ptr %.0912.i.us332.prol, align 8, !tbaa !136
  %i.qv = getelementptr inbounds nuw i8, ptr %.0813.i.us331.prol, i64 8 ; 2 uses
  %i.qw = load double, ptr %.0813.i.us331.prol, align 8, !tbaa !136
  %i.qx = fsub double %i.qw, %i.qu
  store double %i.qx, ptr %.0813.i.us331.prol, align 8, !tbaa !136
  %i.qy = add nuw nsw i64 %.014.i.us330.prol, 1   ; 2 uses
  %prol.iter834.next = add i64 %prol.iter834, 1   ; 2 uses
  %prol.iter834.cmp.not = icmp eq i64 %prol.iter834.next, %xtraiter832
  br i1 %prol.iter834.cmp.not, label %.lr.ph.i137.us329.prol.loopexit, label %.lr.ph.i137.us329.prol, !llvm.loop !526

.lr.ph.i137.us329.prol.loopexit:                  ; preds = %.lr.ph.i137.us329.prol, %.lr.ph.i137.us329.preheader779
  %.014.i.us330.unr = phi i64 [ %.014.i.us330.ph, %.lr.ph.i137.us329.preheader779 ], [ %i.qy, %.lr.ph.i137.us329.prol ]
  %.0813.i.us331.unr = phi ptr [ %.0813.i.us331.ph, %.lr.ph.i137.us329.preheader779 ], [ %i.qv, %.lr.ph.i137.us329.prol ]
  %.0912.i.us332.unr = phi ptr [ %.0912.i.us332.ph, %.lr.ph.i137.us329.preheader779 ], [ %i.qt, %.lr.ph.i137.us329.prol ]
  %i.qz = sub i64 %.014.i.us330.ph, %i.lx
  %i.ra = icmp ugt i64 %i.qz, -4
  br i1 %i.ra, label %.lr.ph.i141.us337.preheader, label %.lr.ph.i137.us329

.lr.ph.i137.us329:                                ; preds = %.lr.ph.i137.us329.prol.loopexit, %.lr.ph.i137.us329
  %.014.i.us330 = phi i64 [ %i.rv, %.lr.ph.i137.us329 ], [ %.014.i.us330.unr, %.lr.ph.i137.us329.prol.loopexit ]
  %.0813.i.us331 = phi ptr [ %i.rs, %.lr.ph.i137.us329 ], [ %.0813.i.us331.unr, %.lr.ph.i137.us329.prol.loopexit ] ; 6 uses
  %.0912.i.us332 = phi ptr [ %i.rq, %.lr.ph.i137.us329 ], [ %.0912.i.us332.unr, %.lr.ph.i137.us329.prol.loopexit ] ; 5 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %.0912.i.us332, i64 8
  %i.rc = load double, ptr %.0912.i.us332, align 8, !tbaa !136
  %i.rd = getelementptr inbounds nuw i8, ptr %.0813.i.us331, i64 8 ; 2 uses
  %i.re = load double, ptr %.0813.i.us331, align 8, !tbaa !136
  %i.rf = fsub double %i.re, %i.rc
  store double %i.rf, ptr %.0813.i.us331, align 8, !tbaa !136
  %i.rg = getelementptr inbounds nuw i8, ptr %.0912.i.us332, i64 16
  %i.rh = load double, ptr %i.rb, align 8, !tbaa !136
  %i.ri = getelementptr inbounds nuw i8, ptr %.0813.i.us331, i64 16 ; 2 uses
  %i.rj = load double, ptr %i.rd, align 8, !tbaa !136
  %i.rk = fsub double %i.rj, %i.rh
  store double %i.rk, ptr %i.rd, align 8, !tbaa !136
  %i.rl = getelementptr inbounds nuw i8, ptr %.0912.i.us332, i64 24
  %i.rm = load double, ptr %i.rg, align 8, !tbaa !136
  %i.rn = getelementptr inbounds nuw i8, ptr %.0813.i.us331, i64 24 ; 2 uses
  %i.ro = load double, ptr %i.ri, align 8, !tbaa !136
  %i.rp = fsub double %i.ro, %i.rm
  store double %i.rp, ptr %i.ri, align 8, !tbaa !136
  %i.rq = getelementptr inbounds nuw i8, ptr %.0912.i.us332, i64 32
  %i.rr = load double, ptr %i.rl, align 8, !tbaa !136
  %i.rs = getelementptr inbounds nuw i8, ptr %.0813.i.us331, i64 32
  %i.rt = load double, ptr %i.rn, align 8, !tbaa !136
  %i.ru = fsub double %i.rt, %i.rr
  store double %i.ru, ptr %i.rn, align 8, !tbaa !136
  %i.rv = add nuw nsw i64 %.014.i.us330, 4        ; 2 uses
  %exitcond.not.i138.us333.3 = icmp eq i64 %i.rv, %i.lx
  br i1 %exitcond.not.i138.us333.3, label %.lr.ph.i141.us337.preheader, label %.lr.ph.i137.us329, !llvm.loop !527

.lr.ph.i141.us337.preheader:                      ; preds = %.lr.ph.i137.us329.prol.loopexit, %.lr.ph.i137.us329, %middle.block689
  %i.rw = getelementptr inbounds [8 x i8], ptr %.3306.us327, i64 %i.lx ; 3 uses
  %i.rx = mul nsw i64 %i.qi, %i.ly
  %i.ry = getelementptr inbounds [8 x i8], ptr %i.mk, i64 %i.rx ; 3 uses
  %brmerge889 = select i1 %min.iters.check650, i1 true, i1 %i.or
  br i1 %brmerge889, label %.lr.ph.i141.us337.preheader778, label %vector.ph651

vector.ph651:                                     ; preds = %.lr.ph.i141.us337.preheader
  %i.rz = getelementptr i8, ptr %i.rw, i64 %i.og
  %i.sa = getelementptr i8, ptr %i.ry, i64 %i.og
  br label %vector.body653

vector.body653:                                   ; preds = %vector.body653, %vector.ph651
  %index654 = phi i64 [ 0, %vector.ph651 ], [ %index.next661, %vector.body653 ] ; 2 uses
  %i.sb = shl i64 %index654, 3                    ; 2 uses
  %next.gep655 = getelementptr i8, ptr %i.rw, i64 %i.sb ; 3 uses
  %next.gep656 = getelementptr i8, ptr %i.ry, i64 %i.sb ; 2 uses
  %i.sc = getelementptr i8, ptr %next.gep656, i64 16
  %wide.load657 = load <2 x double>, ptr %next.gep656, align 8, !tbaa !136, !alias.scope !569
  %wide.load658 = load <2 x double>, ptr %i.sc, align 8, !tbaa !136, !alias.scope !569
  %i.sd = getelementptr i8, ptr %next.gep655, i64 16 ; 2 uses
  %wide.load659 = load <2 x double>, ptr %next.gep655, align 8, !tbaa !136, !alias.scope !570, !noalias !569
  %wide.load660 = load <2 x double>, ptr %i.sd, align 8, !tbaa !136, !alias.scope !570, !noalias !569
  %i.se = fsub <2 x double> %wide.load659, %wide.load657
  %i.sf = fsub <2 x double> %wide.load660, %wide.load658
  store <2 x double> %i.se, ptr %next.gep655, align 8, !tbaa !136, !alias.scope !570, !noalias !569
  store <2 x double> %i.sf, ptr %i.sd, align 8, !tbaa !136, !alias.scope !570, !noalias !569
  %index.next661 = add nuw i64 %index654, 4       ; 2 uses
  %i.sg = icmp eq i64 %index.next661, %n.vec652
  br i1 %i.sg, label %middle.block662, label %vector.body653, !llvm.loop !531

middle.block662:                                  ; preds = %vector.body653
  br i1 %cmp.n663, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit146.us343, label %.lr.ph.i141.us337.preheader778

.lr.ph.i141.us337.preheader778:                   ; preds = %.lr.ph.i141.us337.preheader, %middle.block662
  %.014.i142.us338.ph = phi i64 [ %n.vec652, %middle.block662 ], [ 0, %.lr.ph.i141.us337.preheader ] ; 3 uses
  %.0813.i143.us339.ph = phi ptr [ %i.rz, %middle.block662 ], [ %i.rw, %.lr.ph.i141.us337.preheader ] ; 2 uses
  %.0912.i144.us340.ph = phi ptr [ %i.sa, %middle.block662 ], [ %i.ry, %.lr.ph.i141.us337.preheader ] ; 2 uses
  br i1 %lcmp.mod836.not, label %.lr.ph.i141.us337.prol.loopexit, label %.lr.ph.i141.us337.prol

.lr.ph.i141.us337.prol:                           ; preds = %.lr.ph.i141.us337.preheader778, %.lr.ph.i141.us337.prol
  %.014.i142.us338.prol = phi i64 [ %i.sm, %.lr.ph.i141.us337.prol ], [ %.014.i142.us338.ph, %.lr.ph.i141.us337.preheader778 ]
  %.0813.i143.us339.prol = phi ptr [ %i.sj, %.lr.ph.i141.us337.prol ], [ %.0813.i143.us339.ph, %.lr.ph.i141.us337.preheader778 ] ; 3 uses
  %.0912.i144.us340.prol = phi ptr [ %i.sh, %.lr.ph.i141.us337.prol ], [ %.0912.i144.us340.ph, %.lr.ph.i141.us337.preheader778 ] ; 2 uses
  %prol.iter837 = phi i64 [ %prol.iter837.next, %.lr.ph.i141.us337.prol ], [ 0, %.lr.ph.i141.us337.preheader778 ]
  %i.sh = getelementptr inbounds nuw i8, ptr %.0912.i144.us340.prol, i64 8 ; 2 uses
  %i.si = load double, ptr %.0912.i144.us340.prol, align 8, !tbaa !136
  %i.sj = getelementptr inbounds nuw i8, ptr %.0813.i143.us339.prol, i64 8 ; 2 uses
  %i.sk = load double, ptr %.0813.i143.us339.prol, align 8, !tbaa !136
  %i.sl = fsub double %i.sk, %i.si
  store double %i.sl, ptr %.0813.i143.us339.prol, align 8, !tbaa !136
  %i.sm = add nuw nsw i64 %.014.i142.us338.prol, 1 ; 2 uses
  %prol.iter837.next = add i64 %prol.iter837, 1   ; 2 uses
  %prol.iter837.cmp.not = icmp eq i64 %prol.iter837.next, %xtraiter835
  br i1 %prol.iter837.cmp.not, label %.lr.ph.i141.us337.prol.loopexit, label %.lr.ph.i141.us337.prol, !llvm.loop !532

.lr.ph.i141.us337.prol.loopexit:                  ; preds = %.lr.ph.i141.us337.prol, %.lr.ph.i141.us337.preheader778
  %.014.i142.us338.unr = phi i64 [ %.014.i142.us338.ph, %.lr.ph.i141.us337.preheader778 ], [ %i.sm, %.lr.ph.i141.us337.prol ]
  %.0813.i143.us339.unr = phi ptr [ %.0813.i143.us339.ph, %.lr.ph.i141.us337.preheader778 ], [ %i.sj, %.lr.ph.i141.us337.prol ]
  %.0912.i144.us340.unr = phi ptr [ %.0912.i144.us340.ph, %.lr.ph.i141.us337.preheader778 ], [ %i.sh, %.lr.ph.i141.us337.prol ]
  %i.sn = sub i64 %.014.i142.us338.ph, %i.ly
  %i.so = icmp ugt i64 %i.sn, -4
  br i1 %i.so, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit146.us343, label %.lr.ph.i141.us337

.lr.ph.i141.us337:                                ; preds = %.lr.ph.i141.us337.prol.loopexit, %.lr.ph.i141.us337
  %.014.i142.us338 = phi i64 [ %i.tj, %.lr.ph.i141.us337 ], [ %.014.i142.us338.unr, %.lr.ph.i141.us337.prol.loopexit ]
  %.0813.i143.us339 = phi ptr [ %i.tg, %.lr.ph.i141.us337 ], [ %.0813.i143.us339.unr, %.lr.ph.i141.us337.prol.loopexit ] ; 6 uses
  %.0912.i144.us340 = phi ptr [ %i.te, %.lr.ph.i141.us337 ], [ %.0912.i144.us340.unr, %.lr.ph.i141.us337.prol.loopexit ] ; 5 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %.0912.i144.us340, i64 8
  %i.sq = load double, ptr %.0912.i144.us340, align 8, !tbaa !136
  %i.sr = getelementptr inbounds nuw i8, ptr %.0813.i143.us339, i64 8 ; 2 uses
  %i.ss = load double, ptr %.0813.i143.us339, align 8, !tbaa !136
  %i.st = fsub double %i.ss, %i.sq
  store double %i.st, ptr %.0813.i143.us339, align 8, !tbaa !136
  %i.su = getelementptr inbounds nuw i8, ptr %.0912.i144.us340, i64 16
  %i.sv = load double, ptr %i.sp, align 8, !tbaa !136
  %i.sw = getelementptr inbounds nuw i8, ptr %.0813.i143.us339, i64 16 ; 2 uses
  %i.sx = load double, ptr %i.sr, align 8, !tbaa !136
  %i.sy = fsub double %i.sx, %i.sv
  store double %i.sy, ptr %i.sr, align 8, !tbaa !136
  %i.sz = getelementptr inbounds nuw i8, ptr %.0912.i144.us340, i64 24
  %i.ta = load double, ptr %i.su, align 8, !tbaa !136
  %i.tb = getelementptr inbounds nuw i8, ptr %.0813.i143.us339, i64 24 ; 2 uses
  %i.tc = load double, ptr %i.sw, align 8, !tbaa !136
  %i.td = fsub double %i.tc, %i.ta
  store double %i.td, ptr %i.sw, align 8, !tbaa !136
  %i.te = getelementptr inbounds nuw i8, ptr %.0912.i144.us340, i64 32
  %i.tf = load double, ptr %i.sz, align 8, !tbaa !136
  %i.tg = getelementptr inbounds nuw i8, ptr %.0813.i143.us339, i64 32
  %i.th = load double, ptr %i.tb, align 8, !tbaa !136
  %i.ti = fsub double %i.th, %i.tf
  store double %i.ti, ptr %i.tb, align 8, !tbaa !136
  %i.tj = add nuw nsw i64 %.014.i142.us338, 4     ; 2 uses
  %exitcond.not.i145.us341.3 = icmp eq i64 %i.tj, %i.ly
  br i1 %exitcond.not.i145.us341.3, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit146.us343, label %.lr.ph.i141.us337, !llvm.loop !533

_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit146.us343: ; preds = %.lr.ph.i141.us337.prol.loopexit, %.lr.ph.i141.us337, %middle.block662, %.lr.ph308.split.split.us325
  %i.tk = getelementptr inbounds [8 x i8], ptr %.3306.us327, i64 %i.lx
  %i.tl = getelementptr inbounds [8 x i8], ptr %i.tk, i64 %i.ly ; 2 uses
  %indvars.iv.next460 = add nuw nsw i64 %indvars.iv459, 1 ; 2 uses
  %exitcond462.not = icmp eq i64 %indvars.iv.next460, %i.ma
  br i1 %exitcond462.not, label %._crit_edge309.split.us346, label %.lr.ph308.split.split.us325, !llvm.loop !521

._crit_edge309.split.us346:                       ; preds = %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.us314.us, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit146.us343
  %.us-phi318.us = phi ptr [ %i.tl, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit146.us343 ], [ %i.qh, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.us314.us ]
  %indvars.iv.next464 = add nuw nsw i64 %indvars.iv463, 1
  %exitcond466 = icmp eq i64 %indvars.iv463, %i.md
  %indvar.next641 = add i64 %indvar640, 1
  br i1 %exitcond466, label %.loopexit170, label %.preheader169.us, !llvm.loop !534

.preheader169.lr.ph.split.split:                  ; preds = %.preheader169.lr.ph.split
  br i1 %invariant.op311.fr320, label %.preheader169.us349.preheader, label %.loopexit170

.preheader169.us349.preheader:                    ; preds = %.preheader169.lr.ph.split.split
  %i.tm = shl i64 %i.lx, 3                        ; 3 uses
  %i.tn = shl i64 %i.ly, 3                        ; 3 uses
  %i.to = add i64 %i.tm, %i.tn                    ; 2 uses
  %i.tp = add nsw i64 %i.ma, -1
  %i.tq = mul i64 %i.to, %i.tp
  %i.tr = mul i64 %i.ma, %i.ly
  %i.ts = shl i64 %i.mj, 3
  %i.tt = add i64 %i.tr, %i.mj
  %i.tu = shl i64 %i.tt, 3
  %i.tv = mul i64 %i.ma, %i.ly                    ; 2 uses
  %i.tw = shl i64 %i.tv, 3
  %i.tx = shl i64 %i.tv, 4
  %i.ty = getelementptr i8, ptr %i.mh, i64 %i.tu
  %i.tz = getelementptr i8, ptr %i.mh, i64 %i.tx
  %i.ua = getelementptr i8, ptr %i.tz, i64 %i.ts
  %min.iters.check620 = icmp ult i64 %i.ly, 6
  %i.ub = or i64 %i.tn, %i.to
  %i.uc = icmp slt i64 %i.ub, 0
  %n.vec622 = and i64 %i.ly, -4                   ; 4 uses
  %i.ud = shl i64 %n.vec622, 3                    ; 2 uses
  %cmp.n633 = icmp eq i64 %i.ly, %n.vec622
  %xtraiter826 = and i64 %i.ly, 3                 ; 2 uses
  %lcmp.mod827.not = icmp eq i64 %xtraiter826, 0
  br label %.preheader169.us349

.preheader169.us349:                              ; preds = %.preheader169.us349.preheader, %._crit_edge309.split.us.split.us356
  %indvar = phi i64 [ 0, %.preheader169.us349.preheader ], [ %indvar.next, %._crit_edge309.split.us.split.us356 ] ; 2 uses
  %indvars.iv451 = phi i64 [ 1, %.preheader169.us349.preheader ], [ %indvars.iv.next452, %._crit_edge309.split.us.split.us356 ] ; 3 uses
  %.2322.us351 = phi ptr [ %i.mc, %.preheader169.us349.preheader ], [ %i.vy, %._crit_edge309.split.us.split.us356 ] ; 3 uses
  %i.ue = mul i64 %i.tw, %indvar                  ; 2 uses
  %scevgep612 = getelementptr i8, ptr %i.ty, i64 %i.ue
  %scevgep613 = getelementptr i8, ptr %i.ua, i64 %i.ue
  %i.uf = mul nuw nsw i64 %indvars.iv451, %i.ma
  %scevgep610 = getelementptr i8, ptr %.2322.us351, i64 %i.tm
  %i.ug = getelementptr i8, ptr %.2322.us351, i64 %i.tq
  %i.uh = getelementptr i8, ptr %i.ug, i64 %i.tn
  %scevgep611 = getelementptr i8, ptr %i.uh, i64 %i.tm
  %bound0614 = icmp ult ptr %scevgep610, %scevgep613
  %bound1615 = icmp ult ptr %scevgep612, %scevgep611
  %found.conflict616 = and i1 %bound0614, %bound1615
  %i.ui = or i1 %found.conflict616, %i.uc
  br label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.us.us353

_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.us.us353: ; preds = %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit146.us.us, %.preheader169.us349
  %indvars.iv447 = phi i64 [ %indvars.iv.next448, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit146.us.us ], [ 0, %.preheader169.us349 ] ; 2 uses
  %.3306.us.us355 = phi ptr [ %i.vy, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit146.us.us ], [ %.2322.us351, %.preheader169.us349 ] ; 2 uses
  %i.uj = getelementptr inbounds [8 x i8], ptr %.3306.us.us355, i64 %i.lx ; 4 uses
  %.not380 = icmp eq ptr %.3306.us.us355, null
  br i1 %.not380, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit146.us.us, label %.lr.ph.i141.us.us.preheader

.lr.ph.i141.us.us.preheader:                      ; preds = %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.us.us353
  %i.uk = add nuw nsw i64 %indvars.iv447, %i.uf
  %i.ul = mul nsw i64 %i.uk, %i.ly
  %i.um = getelementptr inbounds [8 x i8], ptr %i.mk, i64 %i.ul ; 3 uses
  %brmerge890 = select i1 %min.iters.check620, i1 true, i1 %i.ui
  br i1 %brmerge890, label %.lr.ph.i141.us.us.preheader784, label %vector.ph621

vector.ph621:                                     ; preds = %.lr.ph.i141.us.us.preheader
  %i.un = getelementptr i8, ptr %i.uj, i64 %i.ud
  %i.uo = getelementptr i8, ptr %i.um, i64 %i.ud
  br label %vector.body623

vector.body623:                                   ; preds = %vector.body623, %vector.ph621
  %index624 = phi i64 [ 0, %vector.ph621 ], [ %index.next631, %vector.body623 ] ; 2 uses
  %i.up = shl i64 %index624, 3                    ; 2 uses
  %next.gep625 = getelementptr i8, ptr %i.uj, i64 %i.up ; 3 uses
  %next.gep626 = getelementptr i8, ptr %i.um, i64 %i.up ; 2 uses
  %i.uq = getelementptr i8, ptr %next.gep626, i64 16
  %wide.load627 = load <2 x double>, ptr %next.gep626, align 8, !tbaa !136, !alias.scope !571
  %wide.load628 = load <2 x double>, ptr %i.uq, align 8, !tbaa !136, !alias.scope !571
  %i.ur = getelementptr i8, ptr %next.gep625, i64 16 ; 2 uses
  %wide.load629 = load <2 x double>, ptr %next.gep625, align 8, !tbaa !136, !alias.scope !572, !noalias !571
  %wide.load630 = load <2 x double>, ptr %i.ur, align 8, !tbaa !136, !alias.scope !572, !noalias !571
  %i.us = fsub <2 x double> %wide.load629, %wide.load627
  %i.ut = fsub <2 x double> %wide.load630, %wide.load628
  store <2 x double> %i.us, ptr %next.gep625, align 8, !tbaa !136, !alias.scope !572, !noalias !571
  store <2 x double> %i.ut, ptr %i.ur, align 8, !tbaa !136, !alias.scope !572, !noalias !571
  %index.next631 = add nuw i64 %index624, 4       ; 2 uses
  %i.uu = icmp eq i64 %index.next631, %n.vec622
  br i1 %i.uu, label %middle.block632, label %vector.body623, !llvm.loop !538

middle.block632:                                  ; preds = %vector.body623
  br i1 %cmp.n633, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit146.us.us, label %.lr.ph.i141.us.us.preheader784

.lr.ph.i141.us.us.preheader784:                   ; preds = %.lr.ph.i141.us.us.preheader, %middle.block632
  %.014.i142.us.us.ph = phi i64 [ %n.vec622, %middle.block632 ], [ 0, %.lr.ph.i141.us.us.preheader ] ; 3 uses
  %.0813.i143.us.us.ph = phi ptr [ %i.un, %middle.block632 ], [ %i.uj, %.lr.ph.i141.us.us.preheader ] ; 2 uses
  %.0912.i144.us.us.ph = phi ptr [ %i.uo, %middle.block632 ], [ %i.um, %.lr.ph.i141.us.us.preheader ] ; 2 uses
  br i1 %lcmp.mod827.not, label %.lr.ph.i141.us.us.prol.loopexit, label %.lr.ph.i141.us.us.prol

.lr.ph.i141.us.us.prol:                           ; preds = %.lr.ph.i141.us.us.preheader784, %.lr.ph.i141.us.us.prol
  %.014.i142.us.us.prol = phi i64 [ %i.va, %.lr.ph.i141.us.us.prol ], [ %.014.i142.us.us.ph, %.lr.ph.i141.us.us.preheader784 ]
  %.0813.i143.us.us.prol = phi ptr [ %i.ux, %.lr.ph.i141.us.us.prol ], [ %.0813.i143.us.us.ph, %.lr.ph.i141.us.us.preheader784 ] ; 3 uses
  %.0912.i144.us.us.prol = phi ptr [ %i.uv, %.lr.ph.i141.us.us.prol ], [ %.0912.i144.us.us.ph, %.lr.ph.i141.us.us.preheader784 ] ; 2 uses
  %prol.iter828 = phi i64 [ %prol.iter828.next, %.lr.ph.i141.us.us.prol ], [ 0, %.lr.ph.i141.us.us.preheader784 ]
  %i.uv = getelementptr inbounds nuw i8, ptr %.0912.i144.us.us.prol, i64 8 ; 2 uses
  %i.uw = load double, ptr %.0912.i144.us.us.prol, align 8, !tbaa !136
  %i.ux = getelementptr inbounds nuw i8, ptr %.0813.i143.us.us.prol, i64 8 ; 2 uses
  %i.uy = load double, ptr %.0813.i143.us.us.prol, align 8, !tbaa !136
  %i.uz = fsub double %i.uy, %i.uw
  store double %i.uz, ptr %.0813.i143.us.us.prol, align 8, !tbaa !136
  %i.va = add nuw nsw i64 %.014.i142.us.us.prol, 1 ; 2 uses
  %prol.iter828.next = add i64 %prol.iter828, 1   ; 2 uses
  %prol.iter828.cmp.not = icmp eq i64 %prol.iter828.next, %xtraiter826
  br i1 %prol.iter828.cmp.not, label %.lr.ph.i141.us.us.prol.loopexit, label %.lr.ph.i141.us.us.prol, !llvm.loop !539

.lr.ph.i141.us.us.prol.loopexit:                  ; preds = %.lr.ph.i141.us.us.prol, %.lr.ph.i141.us.us.preheader784
  %.014.i142.us.us.unr = phi i64 [ %.014.i142.us.us.ph, %.lr.ph.i141.us.us.preheader784 ], [ %i.va, %.lr.ph.i141.us.us.prol ]
  %.0813.i143.us.us.unr = phi ptr [ %.0813.i143.us.us.ph, %.lr.ph.i141.us.us.preheader784 ], [ %i.ux, %.lr.ph.i141.us.us.prol ]
  %.0912.i144.us.us.unr = phi ptr [ %.0912.i144.us.us.ph, %.lr.ph.i141.us.us.preheader784 ], [ %i.uv, %.lr.ph.i141.us.us.prol ]
  %i.vb = sub i64 %.014.i142.us.us.ph, %i.ly
  %i.vc = icmp ugt i64 %i.vb, -4
  br i1 %i.vc, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit146.us.us, label %.lr.ph.i141.us.us

.lr.ph.i141.us.us:                                ; preds = %.lr.ph.i141.us.us.prol.loopexit, %.lr.ph.i141.us.us
  %.014.i142.us.us = phi i64 [ %i.vx, %.lr.ph.i141.us.us ], [ %.014.i142.us.us.unr, %.lr.ph.i141.us.us.prol.loopexit ]
  %.0813.i143.us.us = phi ptr [ %i.vu, %.lr.ph.i141.us.us ], [ %.0813.i143.us.us.unr, %.lr.ph.i141.us.us.prol.loopexit ] ; 6 uses
  %.0912.i144.us.us = phi ptr [ %i.vs, %.lr.ph.i141.us.us ], [ %.0912.i144.us.us.unr, %.lr.ph.i141.us.us.prol.loopexit ] ; 5 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %.0912.i144.us.us, i64 8
  %i.ve = load double, ptr %.0912.i144.us.us, align 8, !tbaa !136
  %i.vf = getelementptr inbounds nuw i8, ptr %.0813.i143.us.us, i64 8 ; 2 uses
  %i.vg = load double, ptr %.0813.i143.us.us, align 8, !tbaa !136
  %i.vh = fsub double %i.vg, %i.ve
  store double %i.vh, ptr %.0813.i143.us.us, align 8, !tbaa !136
  %i.vi = getelementptr inbounds nuw i8, ptr %.0912.i144.us.us, i64 16
  %i.vj = load double, ptr %i.vd, align 8, !tbaa !136
  %i.vk = getelementptr inbounds nuw i8, ptr %.0813.i143.us.us, i64 16 ; 2 uses
  %i.vl = load double, ptr %i.vf, align 8, !tbaa !136
  %i.vm = fsub double %i.vl, %i.vj
  store double %i.vm, ptr %i.vf, align 8, !tbaa !136
  %i.vn = getelementptr inbounds nuw i8, ptr %.0912.i144.us.us, i64 24
  %i.vo = load double, ptr %i.vi, align 8, !tbaa !136
  %i.vp = getelementptr inbounds nuw i8, ptr %.0813.i143.us.us, i64 24 ; 2 uses
  %i.vq = load double, ptr %i.vk, align 8, !tbaa !136
  %i.vr = fsub double %i.vq, %i.vo
  store double %i.vr, ptr %i.vk, align 8, !tbaa !136
  %i.vs = getelementptr inbounds nuw i8, ptr %.0912.i144.us.us, i64 32
  %i.vt = load double, ptr %i.vn, align 8, !tbaa !136
  %i.vu = getelementptr inbounds nuw i8, ptr %.0813.i143.us.us, i64 32
  %i.vv = load double, ptr %i.vp, align 8, !tbaa !136
  %i.vw = fsub double %i.vv, %i.vt
  store double %i.vw, ptr %i.vp, align 8, !tbaa !136
  %i.vx = add nuw nsw i64 %.014.i142.us.us, 4     ; 2 uses
  %exitcond.not.i145.us.us.3 = icmp eq i64 %i.vx, %i.ly
  br i1 %exitcond.not.i145.us.us.3, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit146.us.us, label %.lr.ph.i141.us.us, !llvm.loop !540

_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit146.us.us: ; preds = %.lr.ph.i141.us.us.prol.loopexit, %.lr.ph.i141.us.us, %middle.block632, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.us.us353
  %i.vy = getelementptr inbounds [8 x i8], ptr %i.uj, i64 %i.ly ; 2 uses
  %indvars.iv.next448 = add nuw nsw i64 %indvars.iv447, 1 ; 2 uses
  %exitcond450.not = icmp eq i64 %indvars.iv.next448, %i.ma
  br i1 %exitcond450.not, label %._crit_edge309.split.us.split.us356, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.us.us353, !llvm.loop !521

._crit_edge309.split.us.split.us356:              ; preds = %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit146.us.us
  %indvars.iv.next452 = add nuw nsw i64 %indvars.iv451, 1
  %exitcond454 = icmp eq i64 %indvars.iv451, %i.md
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond454, label %.loopexit170, label %.preheader169.us349, !llvm.loop !534

.loopexit170:                                     ; preds = %._crit_edge309.split.us.split.us356, %._crit_edge309.split.us346, %.preheader169.lr.ph.split.split, %..loopexit170_crit_edge, %bb.i
  %i.vz = phi i64 [ %i.hj, %..loopexit170_crit_edge ], [ %i.md, %._crit_edge309.split.us346 ], [ %i.md, %bb.i ], [ %i.md, %.preheader169.lr.ph.split.split ], [ %i.md, %._crit_edge309.split.us.split.us356 ]
  %i.wa = phi i64 [ %.pre482, %..loopexit170_crit_edge ], [ %i.ly, %._crit_edge309.split.us346 ], [ %i.ly, %bb.i ], [ %i.ly, %.preheader169.lr.ph.split.split ], [ %i.ly, %._crit_edge309.split.us.split.us356 ]
  %i.wb = phi i64 [ %i.cq, %..loopexit170_crit_edge ], [ %i.ma, %._crit_edge309.split.us346 ], [ %i.ma, %bb.i ], [ %i.ma, %.preheader169.lr.ph.split.split ], [ %i.ma, %._crit_edge309.split.us.split.us356 ] ; 3 uses
  %i.wc = phi i64 [ %.pre480, %..loopexit170_crit_edge ], [ %i.lx, %._crit_edge309.split.us346 ], [ %i.lx, %bb.i ], [ %i.lx, %.preheader169.lr.ph.split.split ], [ %i.lx, %._crit_edge309.split.us.split.us356 ]
  %i.wd = phi ptr [ %.pre478, %..loopexit170_crit_edge ], [ %i.lw, %._crit_edge309.split.us346 ], [ %i.lw, %bb.i ], [ %i.lw, %.preheader169.lr.ph.split.split ], [ %i.lw, %._crit_edge309.split.us.split.us356 ]
  %i.we = load ptr, ptr %i.ck, align 8, !tbaa !232
  %i.wf = mul nsw i64 %i.wb, %i.wc
  %i.wg = getelementptr inbounds [8 x i8], ptr %i.wd, i64 %i.wf
  %i.wh = mul nsw i64 %i.wa, %i.wb
  %i.wi = getelementptr inbounds [8 x i8], ptr %i.wg, i64 %i.wh
  %i.wj = mul nsw i64 %i.vz, %i.wb
  %i.wk = load i32, ptr %i.cn, align 8, !tbaa !233
  %i.wl = tail call noundef i32 @_ZNK6casadi6Linsol5solveEPKdPdxbi(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef %i.we, ptr noundef %i.wi, i64 noundef %i.wj, i1 noundef zeroext true, i32 noundef %i.wk)
  %.not96 = icmp eq i32 %i.wl, 0
  br i1 %.not96, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.loopexit170
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 1704
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.wo = load ptr, ptr %i.a, align 8, !tbaa !235
  %i.wp = load i64, ptr %i.wn, align 8, !tbaa !555 ; 14 uses
  %i.wq = load i64, ptr %i.wm, align 8, !tbaa !556 ; 14 uses
  %i.wr = add nsw i64 %i.wq, %i.wp
  %i.ws = load i64, ptr %i.cm, align 8, !tbaa !224 ; 9 uses
  %i.wt = mul nsw i64 %i.wr, %i.ws
  %i.wu = getelementptr inbounds [8 x i8], ptr %i.wo, i64 %i.wt
  %i.wv = load i64, ptr %i.c, align 8, !tbaa !236 ; 2 uses
  %.not97373 = icmp slt i64 %i.wv, 1
  br i1 %.not97373, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.j
  %i.ww = icmp sgt i64 %i.ws, 0
  %.not.i147 = icmp eq ptr %6, null
  %i.wx = icmp sgt i64 %i.wp, 0                   ; 2 uses
  %i.wy = shl i64 %i.wp, 3                        ; 7 uses
  %i.wz = icmp sgt i64 %i.wq, 0                   ; 2 uses
  %i.xa = shl i64 %i.wq, 3                        ; 5 uses
  br i1 %i.ww, label %.preheader.lr.ph.split, label %.loopexit

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.xb = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.xc = load i64, ptr %i.xb, align 8, !tbaa !201 ; 3 uses
  %i.xd = getelementptr inbounds [8 x i8], ptr %6, i64 %i.xc ; 2 uses
  %i.xe = add i64 %i.wy, %i.xa                    ; 3 uses
  %i.xf = add nsw i64 %i.ws, -1
  %i.xg = mul i64 %i.xe, %i.xf                    ; 3 uses
  %i.xh = mul i64 %i.ws, %i.wq
  %i.xi = shl i64 %i.xc, 3
  %i.xj = add i64 %i.xh, %i.xc
  %i.xk = shl i64 %i.xj, 3
  %i.xl = mul i64 %i.ws, %i.wq                    ; 2 uses
  %i.xm = shl i64 %i.xl, 3
  %i.xn = shl i64 %i.xl, 4
  %i.xo = mul i64 %i.ws, %i.wp
  %i.xp = shl i64 %i.xo, 3
  %i.xq = mul i64 %i.ws, %i.wp                    ; 2 uses
  %i.xr = shl i64 %i.xq, 3
  %i.xs = shl i64 %i.xq, 4
  %i.xt = getelementptr i8, ptr %6, i64 %i.xp
  %i.xu = getelementptr i8, ptr %6, i64 %i.xs
  %i.xv = getelementptr i8, ptr %6, i64 %i.xk
  %i.xw = getelementptr i8, ptr %6, i64 %i.xn
  %i.xx = getelementptr i8, ptr %i.xw, i64 %i.xi
  %min.iters.check759 = icmp ult i64 %i.wp, 8
  %i.xy = or i64 %i.xe, %i.wy
  %i.xz = icmp slt i64 %i.xy, 0
  %n.vec761 = and i64 %i.wp, 9223372036854775804  ; 4 uses
  %i.ya = shl i64 %n.vec761, 3                    ; 2 uses
  %cmp.n770 = icmp eq i64 %i.wp, %n.vec761
  %min.iters.check734 = icmp ult i64 %i.wq, 8
  %i.yb = or i64 %i.xe, %i.xa
  %i.yc = icmp slt i64 %i.yb, 0
  %n.vec736 = and i64 %i.wq, 9223372036854775804  ; 4 uses
  %i.yd = shl i64 %n.vec736, 3                    ; 2 uses
  %cmp.n745 = icmp eq i64 %i.wq, %n.vec736
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge362
  %indvar722 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvar.next723, %._crit_edge362 ] ; 3 uses
  %indvars.iv474 = phi i64 [ 1, %.preheader.lr.ph.split ], [ %indvars.iv.next475, %._crit_edge362 ] ; 3 uses
  %.4374 = phi ptr [ %i.wu, %.preheader.lr.ph.split ], [ %.us-phi, %._crit_edge362 ] ; 6 uses
  %i.ye = mul i64 %i.xr, %indvar722               ; 2 uses
  %scevgep750 = getelementptr i8, ptr %i.xt, i64 %i.ye
  %scevgep751 = getelementptr i8, ptr %i.xu, i64 %i.ye
  %i.yf = mul i64 %i.xm, %indvar722               ; 2 uses
  %scevgep724 = getelementptr i8, ptr %i.xv, i64 %i.yf
  %scevgep725 = getelementptr i8, ptr %i.xx, i64 %i.yf
  %i.yg = mul nuw nsw i64 %indvars.iv474, %i.ws
  br i1 %.not.i147, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit157.us.us.preheader, label %.lr.ph361.split.split.preheader

.lr.ph361.split.split.preheader:                  ; preds = %.preheader
  %scevgep726 = getelementptr i8, ptr %.4374, i64 %i.wy
  %i.yh = getelementptr i8, ptr %.4374, i64 %i.xg
  %i.yi = getelementptr i8, ptr %i.yh, i64 %i.xa
  %scevgep727 = getelementptr i8, ptr %i.yi, i64 %i.wy
  %i.yj = getelementptr i8, ptr %.4374, i64 %i.xg
  %scevgep752 = getelementptr i8, ptr %i.yj, i64 %i.wy
  %bound0753 = icmp ult ptr %scevgep750, %scevgep752
  %bound1754 = icmp ult ptr %.4374, %scevgep751
  %found.conflict755 = and i1 %bound0753, %bound1754
  %i.yk = or i1 %found.conflict755, %i.xz
  %bound0728 = icmp ult ptr %scevgep724, %scevgep727
  %bound1729 = icmp ult ptr %scevgep726, %scevgep725
  %found.conflict730 = and i1 %bound0728, %bound1729
  %i.yl = or i1 %found.conflict730, %i.yc
  br label %.lr.ph361.split.split

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit157.us.us.preheader: ; preds = %.preheader
  %i.ym = getelementptr i8, ptr %.4374, i64 %i.xg
  %i.yn = getelementptr i8, ptr %i.ym, i64 %i.xa
  %scevgep = getelementptr i8, ptr %i.yn, i64 %i.wy
  br label %._crit_edge362

._crit_edge362:                                   ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit168, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit157.us.us.preheader
  %.us-phi = phi ptr [ %scevgep, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit157.us.us.preheader ], [ %i.abv, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit168 ]
  %indvars.iv.next475 = add nuw nsw i64 %indvars.iv474, 1
  %exitcond477 = icmp eq i64 %indvars.iv474, %i.wv
  %indvar.next723 = add i64 %indvar722, 1
  br i1 %exitcond477, label %.loopexit, label %.preheader, !llvm.loop !541

.lr.ph361.split.split:                            ; preds = %.lr.ph361.split.split.preheader, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit168
  %indvars.iv467 = phi i64 [ %indvars.iv.next468, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit168 ], [ 0, %.lr.ph361.split.split.preheader ] ; 2 uses
  %.5359 = phi ptr [ %i.abv, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit168 ], [ %.4374, %.lr.ph361.split.split.preheader ] ; 6 uses
  %i.yo = add nuw nsw i64 %indvars.iv467, %i.yg   ; 3 uses
  %i.yp = mul nsw i64 %i.yo, %i.wp
  %i.yq = getelementptr inbounds [8 x i8], ptr %6, i64 %i.yp ; 4 uses
  %.not15.i148 = icmp eq ptr %.5359, null
  br i1 %.not15.i148, label %.preheader.i155, label %.preheader16.i149

.preheader16.i149:                                ; preds = %.lr.ph361.split.split
  br i1 %i.wx, label %.lr.ph.i150.preheader, label %.preheader16.i160

.lr.ph.i150.preheader:                            ; preds = %.preheader16.i149
  %brmerge891 = select i1 %min.iters.check759, i1 true, i1 %i.yk
  br i1 %brmerge891, label %.lr.ph.i150.preheader777, label %vector.ph760

vector.ph760:                                     ; preds = %.lr.ph.i150.preheader
  %i.yr = getelementptr i8, ptr %i.yq, i64 %i.ya
  %i.ys = getelementptr i8, ptr %.5359, i64 %i.ya
  br label %vector.body762

vector.body762:                                   ; preds = %vector.body762, %vector.ph760
  %index763 = phi i64 [ 0, %vector.ph760 ], [ %index.next768, %vector.body762 ] ; 2 uses
  %i.yt = shl i64 %index763, 3                    ; 2 uses
  %next.gep764 = getelementptr i8, ptr %i.yq, i64 %i.yt ; 2 uses
  %next.gep765 = getelementptr i8, ptr %.5359, i64 %i.yt ; 2 uses
  %i.yu = getelementptr i8, ptr %next.gep765, i64 16
  %wide.load766 = load <2 x double>, ptr %next.gep765, align 8, !tbaa !136, !alias.scope !573
  %wide.load767 = load <2 x double>, ptr %i.yu, align 8, !tbaa !136, !alias.scope !573
  %i.yv = getelementptr i8, ptr %next.gep764, i64 16
  store <2 x double> %wide.load766, ptr %next.gep764, align 8, !tbaa !136, !alias.scope !574, !noalias !573
  store <2 x double> %wide.load767, ptr %i.yv, align 8, !tbaa !136, !alias.scope !574, !noalias !573
  %index.next768 = add nuw i64 %index763, 4       ; 2 uses
  %i.yw = icmp eq i64 %index.next768, %n.vec761
  br i1 %i.yw, label %middle.block769, label %vector.body762, !llvm.loop !545

middle.block769:                                  ; preds = %vector.body762
  br i1 %cmp.n770, label %.preheader16.i160, label %.lr.ph.i150.preheader777

.lr.ph.i150.preheader777:                         ; preds = %.lr.ph.i150.preheader, %middle.block769
  %.020.i151.ph = phi i64 [ %n.vec761, %middle.block769 ], [ 0, %.lr.ph.i150.preheader ] ; 4 uses
  %.01019.i152.ph = phi ptr [ %i.yr, %middle.block769 ], [ %i.yq, %.lr.ph.i150.preheader ] ; 2 uses
  %.01218.i153.ph = phi ptr [ %i.ys, %middle.block769 ], [ %.5359, %.lr.ph.i150.preheader ] ; 2 uses
  %i.yx = sub nsw i64 %i.wp, %.020.i151.ph
  %xtraiter838 = and i64 %i.yx, 7                 ; 2 uses
  %lcmp.mod839.not = icmp eq i64 %xtraiter838, 0
  br i1 %lcmp.mod839.not, label %.lr.ph.i150.prol.loopexit, label %.lr.ph.i150.prol

.lr.ph.i150.prol:                                 ; preds = %.lr.ph.i150.preheader777, %.lr.ph.i150.prol
  %.020.i151.prol = phi i64 [ %i.zb, %.lr.ph.i150.prol ], [ %.020.i151.ph, %.lr.ph.i150.preheader777 ]
  %.01019.i152.prol = phi ptr [ %i.za, %.lr.ph.i150.prol ], [ %.01019.i152.ph, %.lr.ph.i150.preheader777 ] ; 2 uses
  %.01218.i153.prol = phi ptr [ %i.yy, %.lr.ph.i150.prol ], [ %.01218.i153.ph, %.lr.ph.i150.preheader777 ] ; 2 uses
  %prol.iter840 = phi i64 [ %prol.iter840.next, %.lr.ph.i150.prol ], [ 0, %.lr.ph.i150.preheader777 ]
  %i.yy = getelementptr inbounds nuw i8, ptr %.01218.i153.prol, i64 8 ; 2 uses
  %i.yz = load double, ptr %.01218.i153.prol, align 8, !tbaa !136
  %i.za = getelementptr inbounds nuw i8, ptr %.01019.i152.prol, i64 8 ; 2 uses
  store double %i.yz, ptr %.01019.i152.prol, align 8, !tbaa !136
  %i.zb = add nuw nsw i64 %.020.i151.prol, 1      ; 2 uses
  %prol.iter840.next = add i64 %prol.iter840, 1   ; 2 uses
  %prol.iter840.cmp.not = icmp eq i64 %prol.iter840.next, %xtraiter838
  br i1 %prol.iter840.cmp.not, label %.lr.ph.i150.prol.loopexit, label %.lr.ph.i150.prol, !llvm.loop !546

.lr.ph.i150.prol.loopexit:                        ; preds = %.lr.ph.i150.prol, %.lr.ph.i150.preheader777
  %.020.i151.unr = phi i64 [ %.020.i151.ph, %.lr.ph.i150.preheader777 ], [ %i.zb, %.lr.ph.i150.prol ]
  %.01019.i152.unr = phi ptr [ %.01019.i152.ph, %.lr.ph.i150.preheader777 ], [ %i.za, %.lr.ph.i150.prol ]
  %.01218.i153.unr = phi ptr [ %.01218.i153.ph, %.lr.ph.i150.preheader777 ], [ %i.yy, %.lr.ph.i150.prol ]
  %i.zc = sub nsw i64 %.020.i151.ph, %i.wp
  %i.zd = icmp ugt i64 %i.zc, -8
  br i1 %i.zd, label %.preheader16.i160, label %.lr.ph.i150

.preheader.i155:                                  ; preds = %.lr.ph361.split.split
  br i1 %i.wx, label %.lr.ph23.preheader.i156, label %.preheader.i166

.lr.ph23.preheader.i156:                          ; preds = %.preheader.i155
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.yq, i8 0, i64 %i.wy, i1 false), !tbaa !136
  br label %.preheader.i166

.lr.ph.i150:                                      ; preds = %.lr.ph.i150.prol.loopexit, %.lr.ph.i150
  %.020.i151 = phi i64 [ %i.aac, %.lr.ph.i150 ], [ %.020.i151.unr, %.lr.ph.i150.prol.loopexit ]
  %.01019.i152 = phi ptr [ %i.aab, %.lr.ph.i150 ], [ %.01019.i152.unr, %.lr.ph.i150.prol.loopexit ] ; 9 uses
  %.01218.i153 = phi ptr [ %i.zz, %.lr.ph.i150 ], [ %.01218.i153.unr, %.lr.ph.i150.prol.loopexit ] ; 9 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %.01218.i153, i64 8
  %i.zf = load double, ptr %.01218.i153, align 8, !tbaa !136
  %i.zg = getelementptr inbounds nuw i8, ptr %.01019.i152, i64 8
  store double %i.zf, ptr %.01019.i152, align 8, !tbaa !136
  %i.zh = getelementptr inbounds nuw i8, ptr %.01218.i153, i64 16
  %i.zi = load double, ptr %i.ze, align 8, !tbaa !136
  %i.zj = getelementptr inbounds nuw i8, ptr %.01019.i152, i64 16
  store double %i.zi, ptr %i.zg, align 8, !tbaa !136
  %i.zk = getelementptr inbounds nuw i8, ptr %.01218.i153, i64 24
  %i.zl = load double, ptr %i.zh, align 8, !tbaa !136
  %i.zm = getelementptr inbounds nuw i8, ptr %.01019.i152, i64 24
  store double %i.zl, ptr %i.zj, align 8, !tbaa !136
  %i.zn = getelementptr inbounds nuw i8, ptr %.01218.i153, i64 32
  %i.zo = load double, ptr %i.zk, align 8, !tbaa !136
  %i.zp = getelementptr inbounds nuw i8, ptr %.01019.i152, i64 32
  store double %i.zo, ptr %i.zm, align 8, !tbaa !136
  %i.zq = getelementptr inbounds nuw i8, ptr %.01218.i153, i64 40
  %i.zr = load double, ptr %i.zn, align 8, !tbaa !136
  %i.zs = getelementptr inbounds nuw i8, ptr %.01019.i152, i64 40
  store double %i.zr, ptr %i.zp, align 8, !tbaa !136
  %i.zt = getelementptr inbounds nuw i8, ptr %.01218.i153, i64 48
  %i.zu = load double, ptr %i.zq, align 8, !tbaa !136
  %i.zv = getelementptr inbounds nuw i8, ptr %.01019.i152, i64 48
  store double %i.zu, ptr %i.zs, align 8, !tbaa !136
  %i.zw = getelementptr inbounds nuw i8, ptr %.01218.i153, i64 56
  %i.zx = load double, ptr %i.zt, align 8, !tbaa !136
  %i.zy = getelementptr inbounds nuw i8, ptr %.01019.i152, i64 56
  store double %i.zx, ptr %i.zv, align 8, !tbaa !136
  %i.zz = getelementptr inbounds nuw i8, ptr %.01218.i153, i64 64
  %i.aaa = load double, ptr %i.zw, align 8, !tbaa !136
  %i.aab = getelementptr inbounds nuw i8, ptr %.01019.i152, i64 64
  store double %i.aaa, ptr %i.zy, align 8, !tbaa !136
  %i.aac = add nuw nsw i64 %.020.i151, 8          ; 2 uses
  %exitcond.not.i154.7 = icmp eq i64 %i.aac, %i.wp
  br i1 %exitcond.not.i154.7, label %.preheader16.i160, label %.lr.ph.i150, !llvm.loop !547

.preheader16.i160:                                ; preds = %.lr.ph.i150.prol.loopexit, %.lr.ph.i150, %middle.block769, %.preheader16.i149
  %i.aad = getelementptr inbounds [8 x i8], ptr %.5359, i64 %i.wp ; 3 uses
  %i.aae = mul nsw i64 %i.yo, %i.wq
  %i.aaf = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %i.aae ; 3 uses
  br i1 %i.wz, label %.lr.ph.i161.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit168

.lr.ph.i161.preheader:                            ; preds = %.preheader16.i160
  %brmerge892 = select i1 %min.iters.check734, i1 true, i1 %i.yl
  br i1 %brmerge892, label %.lr.ph.i161.preheader776, label %vector.ph735

vector.ph735:                                     ; preds = %.lr.ph.i161.preheader
  %i.aag = getelementptr i8, ptr %i.aaf, i64 %i.yd
  %i.aah = getelementptr i8, ptr %i.aad, i64 %i.yd
  br label %vector.body737
end_hunk_3
