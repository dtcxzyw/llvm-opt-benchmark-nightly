Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/twinvq?download=true
inline.NumInlined: 30
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 22
begin_hunk_0_@ff_twinvq_decode_frame:bb.a
  %i.gu = fpext float %i.gt to double
  %i.gv = fmul nsz double %i.gu, f0x401275E2271BBA31
  %i.gw = call nsz double @llvm.exp.f64(double %i.gv)
  %i.gx = fadd nsz double %i.gw, -1.000000e+00
  %i.gy = fmul nsz double %i.gx, %i.gs
  %i.gz = fdiv nsz double %i.gy, 1.000000e+02
  %i.ha = fptrunc nsz double %i.gz to float
  %i.hb = fmul nsz float %i.fg, %i.ha
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gg
  store float %i.hb, ptr %i.hc, align 4, !tbaa !47
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.cr
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %scalar.ph169, !llvm.loop !67

._crit_edge.i.i:                                  ; preds = %scalar.ph169, %middle.block177
  %indvars.iv.next50.i.i = add nuw nsw i64 %indvars.iv49.i.i, 1 ; 2 uses
  %exitcond53.not.i.i = icmp eq i64 %indvars.iv.next50.i.i, %wide.trip.count52.i.i
  br i1 %exitcond53.not.i.i, label %dec_gain.exit.thread116.i, label %.lr.ph.i.i, !llvm.loop !68

dec_gain.exit.thread.i:                           ; preds = %scalar.ph158, %middle.block166, %.preheader.i.i
  %i.hd = load i32, ptr %i.ap, align 4, !tbaa !51 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.bm, i64 226
  %i.hf = load i8, ptr %i.he, align 2, !tbaa !52
  %i.hg = zext i8 %i.hf to i32
  %i.hh = mul nsw i32 %i.bp, %i.hg
  %i.hi = add i32 %i.hd, -1
  %i.hj = add i32 %i.hi, %i.hh
  %i.hk = sdiv i32 %i.hj, %i.hd                   ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.bj, i64 1032
  %i.hm = getelementptr inbounds nuw i8, ptr %i.bm, i64 216
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !109 ; 2 uses
  %i.ho = shl nsw i32 %i.hk, 6
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [2 x i8], ptr %i.hn, i64 %i.hp
  call fastcc void @dequant(ptr noundef nonnull %i.l, ptr noundef nonnull %i.hl, ptr noundef nonnull %i.d, i32 noundef 3, ptr noundef %i.hn, ptr noundef %i.hq, i32 noundef %i.hk)
  br label %dec_gain.exit.thread116.i

dec_gain.exit.thread116.i:                        ; preds = %._crit_edge.i.i, %dec_gain.exit.thread.i, %.lr.ph44.i.i, %.preheader40.i.i
  %i.hr = icmp sgt i32 %i.bp, 0
  br i1 %i.hr, label %.lr.ph127.i, label %read_and_decode_spectrum.exit

.lr.ph127.i:                                      ; preds = %dec_gain.exit.thread116.i
  %.not.i = icmp eq i8 %i.bs, 0
  %i.hs = getelementptr inbounds nuw i8, ptr %i.bj, i64 1126
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bj, i64 1254
  %i.hu = getelementptr inbounds nuw i8, ptr %i.bj, i64 1300
  %i.hv = getelementptr inbounds nuw i8, ptr %i.bj, i64 1308
  %i.hw = getelementptr inbounds nuw i8, ptr %i.bm, i64 226
  %i.hx = getelementptr inbounds nuw i8, ptr %i.bj, i64 1286
  %i.hy = getelementptr inbounds nuw i8, ptr %i.bj, i64 1288
  %i.hz = getelementptr inbounds nuw i8, ptr %i.bj, i64 1296
  %i.ia = zext i16 %i.bv to i64                   ; 2 uses
  %i.ib = zext i8 %i.bs to i64                    ; 2 uses
  %wide.trip.count138.i = zext nneg i32 %i.bp to i64
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge125.i, %.lr.ph127.i
  %indvars.iv135.i = phi i64 [ 0, %.lr.ph127.i ], [ %indvars.iv.next136.i, %._crit_edge125.i ] ; 14 uses
  %i.ic = load i16, ptr %i.bt, align 8, !tbaa !38
  %i.id = zext i16 %i.ic to i64
  %i.ie = mul nuw nsw i64 %indvars.iv135.i, %i.id
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ie ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.ig = getelementptr inbounds nuw [64 x i8], ptr %i.hs, i64 %indvars.iv135.i
  %i.ih = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %indvars.iv135.i
  %i.ii = mul nuw nsw i64 %indvars.iv135.i, %i.ib
  %invariant.gep153.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ii
  %i.ij = trunc nuw nsw i64 %indvars.iv135.i to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 5 uses
  %i.ik = load ptr, ptr %i.aq, align 8, !tbaa !110
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %indvars.iv.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.ih, i64 %indvars.iv.i
  %i.in = load i8, ptr %i.im, align 1, !tbaa !46
  %i.io = zext i8 %i.in to i32
  %i.ip = load ptr, ptr %i.ar, align 8, !tbaa !53
  %gep154.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep153.i, i64 %indvars.iv.i
  %i.iq = load float, ptr %gep154.i, align 4, !tbaa !47
  call void %i.ik(ptr noundef nonnull %i.l, ptr noundef nonnull %i.il, i32 noundef %i.io, i32 noundef %i.ij, ptr noundef %i.ip, float noundef %i.iq, i32 noundef %i.bl) #9, !inline_history !69
  %i.ir = load ptr, ptr %i.as, align 8, !tbaa !54
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !112
  %i.it = mul nuw nsw i64 %indvars.iv.i, %i.ia
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.it ; 2 uses
  %i.iv = load ptr, ptr %i.ar, align 8, !tbaa !53
  call void %i.is(ptr noundef %i.iu, ptr noundef %i.iu, ptr noundef %i.iv, i32 noundef %.zext.i) #9, !inline_history !69
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.ib
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.j, !llvm.loop !70

._crit_edge.i:                                    ; preds = %bb.j, %bb.i
  br i1 %i.cn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i
  %i.iw = load ptr, ptr %i.at, align 8, !tbaa !113
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %indvars.iv135.i
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !51
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %indvars.iv135.i
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !51
  %i.jb = load i8, ptr %i.hw, align 2, !tbaa !52
  %i.jc = zext i8 %i.jb to i64
  %i.jd = mul nuw nsw i64 %indvars.iv135.i, %i.jc
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.jd
  call void %i.iw(ptr noundef nonnull %i.l, i32 noundef %i.iy, i32 noundef %i.ja, ptr noundef nonnull %i.je, ptr noundef %i.if) #9, !inline_history !69
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %i.jf = getelementptr inbounds nuw i8, ptr %i.hx, i64 %indvars.iv135.i
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !46
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %indvars.iv135.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.hz, i64 %indvars.iv135.i
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !46
  %i.jk = zext i8 %i.jj to i32
  %i.jl = getelementptr [80 x i8], ptr %i.au, i64 %indvars.iv135.i ; 6 uses
  %.val.i = load ptr, ptr %i.m, align 8, !tbaa !35 ; 5 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.val.i, i64 200
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !114 ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.val.i, i64 209
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !55
  %i.jq = zext nneg i8 %i.jp to i32
  %i.jr = getelementptr inbounds nuw i8, ptr %.val.i, i64 194
  %i.js = load i8, ptr %i.jr, align 2, !tbaa !56  ; 8 uses
  %i.jt = zext i8 %i.js to i32                    ; 6 uses
  %i.ju = shl i32 %i.jt, %i.jq
  %i.jv = sext i32 %i.ju to i64                   ; 3 uses
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.jn, i64 %i.jv ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.val.i, i64 210
  %i.jy = load i8, ptr %i.jx, align 2, !tbaa !57
  %i.jz = zext nneg i8 %i.jy to i32
  %i.ka = shl i32 %i.jt, %i.jz
  %i.kb = sext i32 %i.ka to i64                   ; 2 uses
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.jw, i64 %i.kb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i8 -2, ptr %i.b, align 1, !tbaa !46
  %i.kd = getelementptr inbounds nuw i8, ptr %.val.i, i64 211
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !58  ; 4 uses
  %i.kf = icmp eq i8 %i.ke, 4
  %i.kg = select i1 %i.kf, i8 -2, i8 1            ; 2 uses
  store i8 %i.kg, ptr %i.av, align 1, !tbaa !46
  store i8 %i.kg, ptr %i.aw, align 1, !tbaa !46
  store i8 0, ptr %i.ax, align 1, !tbaa !46
  %i.kh = zext i8 %i.ke to i32
  %.not.i98.i = icmp eq i8 %i.ke, 0
  br i1 %.not.i98.i, label %._crit_edge.i99.i, label %.lr.ph4.i.i

.lr.ph4.i.i:                                      ; preds = %bb.l
  %i.ki = ptrtoaddr ptr %i.jn to i64
  %i.kj = zext i8 %i.jg to i32
  %i.kk = mul nuw nsw i32 %i.jt, %i.kj
  %i.kl = zext nneg i32 %i.kk to i64              ; 2 uses
  %i.km = zext i8 %i.js to i64
  %wide.trip.count13.i.i = zext i8 %i.ke to i64
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.jn, i64 %i.kl ; 6 uses
  %i.kn = sub i64 %i.f, %i.ki                     ; 2 uses
  %i.ko = shl nuw nsw i64 %i.kl, 2
  %i.kp = sub i64 %i.ko, %i.kn
  %diff.check144.a = icmp ugt i64 %i.kp, -32
  br label %bb.m

.loopexit.i.i:                                    ; preds = %scalar.ph141.prol.loopexit, %scalar.ph141, %middle.block155, %bb.m
  %.162.lcssa.i.i = phi i32 [ %.0612.i.i, %bb.m ], [ %i.kw, %middle.block155 ], [ %i.kw, %scalar.ph141 ], [ %i.kw, %scalar.ph141.prol.loopexit ]
  %exitcond14.not.i.i = icmp eq i64 %indvars.iv.next11.i.i, %wide.trip.count13.i.i
  br i1 %exitcond14.not.i.i, label %._crit_edge.i99.i, label %bb.m, !llvm.loop !71

bb.m:                                             ; preds = %.loopexit.i.i, %.lr.ph4.i.i
  %indvars.iv10.i.i = phi i64 [ 0, %.lr.ph4.i.i ], [ %indvars.iv.next11.i.i, %.loopexit.i.i ] ; 3 uses
  %.0612.i.i = phi i32 [ 0, %.lr.ph4.i.i ], [ %.162.lcssa.i.i, %.loopexit.i.i ] ; 3 uses
  %indvars.iv.next11.i.i = add nuw nsw i64 %indvars.iv10.i.i, 1 ; 3 uses
  %i.kq = mul nuw nsw i64 %indvars.iv.next11.i.i, %i.km
  %i.kr = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv10.i.i
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !46
  %i.kt = sext i8 %i.ks to i32
  %i.ku = trunc nuw nsw i64 %i.kq to i32
  %i.kv = add nsw i32 %i.ku, %i.kt
  %i.kw = sdiv i32 %i.kv, %i.kh                   ; 5 uses
  %i.kx = icmp slt i32 %.0612.i.i, %i.kw
  br i1 %i.kx, label %.lr.ph.i100.i, label %.loopexit.i.i

.lr.ph.i100.i:                                    ; preds = %bb.m
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jh, i64 %indvars.iv10.i.i
  %i.kz = sext i32 %.0612.i.i to i64              ; 5 uses
  %wide.trip.count.i.i = sext i32 %i.kw to i64    ; 4 uses
  %i.la = load i8, ptr %i.ky, align 1, !tbaa !46
  %i.lb = zext i8 %i.la to i32
  %i.lc = mul nuw nsw i32 %i.lb, %i.jt
  %i.ld = zext nneg i32 %i.lc to i64              ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.jw, i64 %i.ld ; 6 uses
  %i.le = sub nsw i64 %wide.trip.count.i.i, %i.kz ; 3 uses
  %min.iters.check142 = icmp ult i64 %i.le, 8
  br i1 %min.iters.check142, label %scalar.ph141.preheader, label %vector.memcheck143

vector.memcheck143:                               ; preds = %.lr.ph.i100.i
  %i.lf = add nsw i64 %i.ld, %i.jv
  %i.lg = shl nsw i64 %i.lf, 2
  %i.lh = sub i64 %i.lg, %i.kn
  %diff.check = icmp ugt i64 %i.lh, -32
  %conflict.rdx145 = or i1 %diff.check, %diff.check144.a
  br i1 %conflict.rdx145, label %scalar.ph141.preheader, label %vector.ph146

vector.ph146:                                     ; preds = %vector.memcheck143
  %n.vec147 = and i64 %i.le, -8                   ; 3 uses
  %i.li = add nsw i64 %n.vec147, %i.kz
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph146
  %index149 = phi i64 [ 0, %vector.ph146 ], [ %index.next154, %vector.body148 ] ; 2 uses
  %i.lj = add i64 %index149, %i.kz                ; 3 uses
  %i.lk = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %i.lj ; 2 uses
  %i.ll = getelementptr i8, ptr %i.lk, i64 16
  %wide.load150 = load <4 x float>, ptr %i.lk, align 4, !tbaa !47
  %wide.load151 = load <4 x float>, ptr %i.ll, align 4, !tbaa !47
  %i.lm = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.lj ; 2 uses
  %i.ln = getelementptr i8, ptr %i.lm, i64 16
  %wide.load152 = load <4 x float>, ptr %i.lm, align 4, !tbaa !47
  %wide.load153 = load <4 x float>, ptr %i.ln, align 4, !tbaa !47
  %i.lo = fadd nsz <4 x float> %wide.load150, %wide.load152
  %i.lp = fadd nsz <4 x float> %wide.load151, %wide.load153
  %i.lq = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.lj ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  store <4 x float> %i.lo, ptr %i.lq, align 4, !tbaa !47
  store <4 x float> %i.lp, ptr %i.lr, align 4, !tbaa !47
  %index.next154 = add nuw i64 %index149, 8       ; 2 uses
  %i.ls = icmp eq i64 %index.next154, %n.vec147
  br i1 %i.ls, label %middle.block155, label %vector.body148, !llvm.loop !72

middle.block155:                                  ; preds = %vector.body148
  %cmp.n156 = icmp eq i64 %i.le, %n.vec147
  br i1 %cmp.n156, label %.loopexit.i.i, label %scalar.ph141.preheader

scalar.ph141.preheader:                           ; preds = %vector.memcheck143, %.lr.ph.i100.i, %middle.block155
  %indvars.iv.i101.i.ph = phi i64 [ %i.kz, %vector.memcheck143 ], [ %i.kz, %.lr.ph.i100.i ], [ %i.li, %middle.block155 ] ; 4 uses
  %i.lt = sub nsw i64 %wide.trip.count.i.i, %indvars.iv.i101.i.ph
  %xtraiter = and i64 %i.lt, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph141.prol.loopexit, label %scalar.ph141.prol

scalar.ph141.prol:                                ; preds = %scalar.ph141.preheader, %scalar.ph141.prol
  %indvars.iv.i101.i.prol = phi i64 [ %indvars.iv.next.i102.i.prol, %scalar.ph141.prol ], [ %indvars.iv.i101.i.ph, %scalar.ph141.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph141.prol ], [ 0, %scalar.ph141.preheader ]
  %gep.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i101.i.prol
  %i.lu = load float, ptr %gep.i.i.prol, align 4, !tbaa !47
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i101.i.prol
  %i.lv = load float, ptr %gep.i.prol, align 4, !tbaa !47
  %i.lw = fadd nsz float %i.lu, %i.lv
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv.i101.i.prol
  store float %i.lw, ptr %i.lx, align 4, !tbaa !47
  %indvars.iv.next.i102.i.prol = add nsw i64 %indvars.iv.i101.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph141.prol.loopexit, label %scalar.ph141.prol, !llvm.loop !73

scalar.ph141.prol.loopexit:                       ; preds = %scalar.ph141.prol, %scalar.ph141.preheader
  %indvars.iv.i101.i.unr = phi i64 [ %indvars.iv.i101.i.ph, %scalar.ph141.preheader ], [ %indvars.iv.next.i102.i.prol, %scalar.ph141.prol ]
  %i.ly = sub nsw i64 %indvars.iv.i101.i.ph, %wide.trip.count.i.i
  %i.lz = icmp ugt i64 %i.ly, -4
  br i1 %i.lz, label %.loopexit.i.i, label %scalar.ph141

scalar.ph141:                                     ; preds = %scalar.ph141.prol.loopexit, %scalar.ph141
  %indvars.iv.i101.i = phi i64 [ %indvars.iv.next.i102.i.3, %scalar.ph141 ], [ %indvars.iv.i101.i.unr, %scalar.ph141.prol.loopexit ] ; 7 uses
  %gep.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i101.i
  %i.ma = load float, ptr %gep.i.i, align 4, !tbaa !47
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i101.i
  %i.mb = load float, ptr %gep.i, align 4, !tbaa !47
  %i.mc = fadd nsz float %i.ma, %i.mb
  %i.md = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv.i101.i
  store float %i.mc, ptr %i.md, align 4, !tbaa !47
  %indvars.iv.next.i102.i = add nsw i64 %indvars.iv.i101.i, 1 ; 3 uses
  %gep.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.next.i102.i
  %i.me = load float, ptr %gep.i.i.1, align 4, !tbaa !47
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i102.i
  %i.mf = load float, ptr %gep.i.1, align 4, !tbaa !47
  %i.mg = fadd nsz float %i.me, %i.mf
  %i.mh = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv.next.i102.i
  store float %i.mg, ptr %i.mh, align 4, !tbaa !47
  %indvars.iv.next.i102.i.1 = add nsw i64 %indvars.iv.i101.i, 2 ; 3 uses
  %gep.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.next.i102.i.1
  %i.mi = load float, ptr %gep.i.i.2, align 4, !tbaa !47
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i102.i.1
  %i.mj = load float, ptr %gep.i.2, align 4, !tbaa !47
  %i.mk = fadd nsz float %i.mi, %i.mj
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv.next.i102.i.1
  store float %i.mk, ptr %i.ml, align 4, !tbaa !47
  %indvars.iv.next.i102.i.2 = add nsw i64 %indvars.iv.i101.i, 3 ; 3 uses
  %gep.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.next.i102.i.2
  %i.mm = load float, ptr %gep.i.i.3, align 4, !tbaa !47
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i102.i.2
  %i.mn = load float, ptr %gep.i.3, align 4, !tbaa !47
  %i.mo = fadd nsz float %i.mm, %i.mn
  %i.mp = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv.next.i102.i.2
  store float %i.mo, ptr %i.mp, align 4, !tbaa !47
  %indvars.iv.next.i102.i.3 = add nsw i64 %indvars.iv.i101.i, 4 ; 2 uses
  %exitcond.not.i103.i.3 = icmp eq i64 %indvars.iv.next.i102.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i103.i.3, label %.loopexit.i.i, label %scalar.ph141, !llvm.loop !74

._crit_edge.i99.i:                                ; preds = %.loopexit.i.i, %bb.l
  %i.mq = icmp ugt i8 %i.js, 1                    ; 2 uses
  br i1 %i.mq, label %.lr.ph.preheader.i.i.i, label %rearrange_lsp.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %._crit_edge.i99.i
  %wide.trip.count.i.i.i = zext i8 %i.js to i64
  %i.mr = add nsw i64 %wide.trip.count.i.i.i, -1  ; 3 uses
  %xtraiter182 = and i64 %i.mr, 1
  %i.ms = icmp eq i8 %i.js, 2
  br i1 %i.ms, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter = and i64 %i.mr, -2
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %.lr.ph.preheader.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter.next.1, %bb.p ]
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i.i.i ; 2 uses
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !47 ; 2 uses
  %i.mv = getelementptr i8, ptr %i.mt, i64 -4     ; 2 uses
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !47 ; 2 uses
  %i.mx = fsub nsz float %i.mu, %i.mw
  %i.my = fcmp nsz olt float %i.mx, f0x38D1B717
  br i1 %i.my, label %bb.n, label %.lr.ph.i.i.i.1

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.mz = fadd nsz float %i.mu, %i.mw
  %i.na = fmul nsz float %i.mz, 5.000000e-01
  %i.nb = insertelement <2 x float> poison, float %i.na, i64 0
  %i.nc = shufflevector <2 x float> %i.nb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nd = fadd nsz <2 x float> %i.nc, <float -5.000000e-05, float 5.000000e-05>
  store <2 x float> %i.nd, ptr %i.mv, align 4, !tbaa !47
  br label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.n, %.lr.ph.i.i.i
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i.i.i ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 4
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !47 ; 2 uses
  %i.nh = load float, ptr %i.ne, align 4, !tbaa !47 ; 2 uses
  %i.ni = fsub nsz float %i.ng, %i.nh
  %i.nj = fcmp nsz olt float %i.ni, f0x38D1B717
  br i1 %i.nj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.i.i.1
  %i.nk = fadd nsz float %i.ng, %i.nh
  %i.nl = fmul nsz float %i.nk, 5.000000e-01
  %i.nm = insertelement <2 x float> poison, float %i.nl, i64 0
  %i.nn = shufflevector <2 x float> %i.nm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.no = fadd nsz <2 x float> %i.nn, <float -5.000000e-05, float 5.000000e-05>
  store <2 x float> %i.no, ptr %i.ne, align 4, !tbaa !47
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i.i.i.1
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %rearrange_lsp.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !75

rearrange_lsp.exit.i.i.loopexit.unr-lcssa:        ; preds = %bb.p
  %lcmp.mod183.not = icmp eq i64 %xtraiter182, 0
  br i1 %lcmp.mod183.not, label %rearrange_lsp.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %rearrange_lsp.exit.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.1, %rearrange_lsp.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod184 = trunc i64 %i.mr to i1
  call void @llvm.assume(i1 %lcmp.mod184)
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i.i.i.epil.init ; 2 uses
  %i.nq = load float, ptr %i.np, align 4, !tbaa !47 ; 2 uses
  %i.nr = getelementptr i8, ptr %i.np, i64 -4     ; 2 uses
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !47 ; 2 uses
  %i.nt = fsub nsz float %i.nq, %i.ns
  %i.nu = fcmp nsz olt float %i.nt, f0x38D1B717
  br i1 %i.nu, label %bb.q, label %rearrange_lsp.exit.i.i

bb.q:                                             ; preds = %.lr.ph.i.i.i.epil.preheader
  %i.nv = fadd nsz float %i.nq, %i.ns
  %i.nw = fmul nsz float %i.nv, 5.000000e-01
  %i.nx = insertelement <2 x float> poison, float %i.nw, i64 0
  %i.ny = shufflevector <2 x float> %i.nx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nz = fadd nsz <2 x float> %i.ny, <float -5.000000e-05, float 5.000000e-05>
  store <2 x float> %i.nz, ptr %i.nr, align 4, !tbaa !47
  br label %rearrange_lsp.exit.i.i

rearrange_lsp.exit.i.i:                           ; preds = %rearrange_lsp.exit.i.i.loopexit.unr-lcssa, %bb.q, %.lr.ph.i.i.i.epil.preheader, %._crit_edge.i99.i
  %.not8.i.i = icmp eq i8 %i.js, 0
  br i1 %.not8.i.i, label %decode_lsp.exit.i, label %.lr.ph6.i.i

.lr.ph6.i.i:                                      ; preds = %rearrange_lsp.exit.i.i
  %i.oa = mul nuw nsw i32 %i.jt, %i.jk
  %i.ob = zext nneg i32 %i.oa to i64              ; 2 uses
  %wide.trip.count18.i.i = zext i8 %i.js to i64   ; 9 uses
  %invariant.gep21.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %i.ob ; 6 uses
  %min.iters.check119 = icmp ult i8 %i.js, 8
  br i1 %min.iters.check119, label %scalar.ph118.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph6.i.i
  %i.oc = mul nuw nsw i64 %indvars.iv135.i, 80
  %i.od = shl nuw nsw i64 %wide.trip.count18.i.i, 2 ; 2 uses
  %i.oe = getelementptr i8, ptr %i.l, i64 %i.oc
  %i.of = getelementptr i8, ptr %i.oe, i64 76
  %i.og = getelementptr i8, ptr %i.of, i64 %i.od  ; 2 uses
  %i.oh = getelementptr i8, ptr %i.e, i64 %i.od   ; 2 uses
end_hunk_0
