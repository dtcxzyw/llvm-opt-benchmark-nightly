Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tetgen?download=true
inline.NumInlined: 6986
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 436
loop-unroll.NumRuntimeUnrolled: 117
loop-unroll.NumUnrolled: 559
begin_hunk_0_@_ZN10tetgenmesh6flip23EPNS_7trifaceEiPNS_15flipconstraintsE:bb.a
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !201
  store ptr %i.fv, ptr %i.fr, align 8, !tbaa !112
  store ptr %i.fr, ptr %i.fu, align 8, !tbaa !201
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 64 ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !203
  %i.fy = add nsw i64 %i.fx, -1
  store i64 %i.fy, ptr %i.fw, align 8, !tbaa !203
  %i.fz = load ptr, ptr %1, align 8, !tbaa !232
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 64
  store ptr null, ptr %i.ga, align 8, !tbaa !221
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.gb = load ptr, ptr %i.bn, align 8, !tbaa !232
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 64
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !221 ; 3 uses
  %.not352 = icmp eq ptr %i.gd, null
  br i1 %.not352, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !229 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !201
  store ptr %i.gh, ptr %i.gd, align 8, !tbaa !112
  store ptr %i.gd, ptr %i.gg, align 8, !tbaa !201
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 64 ; 2 uses
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !203
  %i.gk = add nsw i64 %i.gj, -1
  store i64 %i.gk, ptr %i.gi, align 8, !tbaa !203
  %i.gl = load ptr, ptr %i.bn, align 8, !tbaa !232
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 64
  store ptr null, ptr %i.gm, align 8, !tbaa !221
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %.preheader529
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 68700 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !277
  %.not353 = icmp eq i32 %i.go, 0
  br i1 %.not353, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gp = load ptr, ptr %1, align 8, !tbaa !232
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 72
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !221 ; 3 uses
  %.not354 = icmp eq ptr %i.gr, null
  br i1 %.not354, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !230 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 24 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !201
  store ptr %i.gv, ptr %i.gr, align 8, !tbaa !112
  store ptr %i.gr, ptr %i.gu, align 8, !tbaa !201
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 64 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !203
  %i.gy = add nsw i64 %i.gx, -1
  store i64 %i.gy, ptr %i.gw, align 8, !tbaa !203
  %i.gz = load ptr, ptr %1, align 8, !tbaa !232
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 72
  store ptr null, ptr %i.ha, align 8, !tbaa !221
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.hb = load ptr, ptr %i.bn, align 8, !tbaa !232
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 72
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !221 ; 3 uses
  %.not355 = icmp eq ptr %i.hd, null
  br i1 %.not355, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !230 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 24 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !201
  store ptr %i.hh, ptr %i.hd, align 8, !tbaa !112
  store ptr %i.hd, ptr %i.hg, align 8, !tbaa !201
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 64 ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !203
  %i.hk = add nsw i64 %i.hj, -1
  store i64 %i.hk, ptr %i.hi, align 8, !tbaa !203
  %i.hl = load ptr, ptr %i.bn, align 8, !tbaa !232
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 72
  store ptr null, ptr %i.hm, align 8, !tbaa !221
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.l
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 23 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !231
  %i.hq = tail call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.hp) ; 5 uses
  store ptr %i.hq, ptr %i.hn, align 8, !tbaa !232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.hq, i8 0, i64 88, i1 false)
  %i.hr = load i32, ptr %i.fh, align 4, !tbaa !233
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %i.hs
  store i32 0, ptr %i.ht, align 4, !tbaa !60
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 68644
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !234 ; 4 uses
  %i.hw = icmp sgt i32 %i.hv, 0                   ; 2 uses
  br i1 %i.hw, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.q
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 68672
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !235
  %i.hz = sext i32 %i.hy to i64
  %i.ia = shl nsw i64 %i.hz, 3
  %scevgep.i = getelementptr i8, ptr %i.hq, i64 %i.ia
  %i.ib = zext nneg i32 %i.hv to i64
  %i.ic = shl nuw nsw i64 %i.ib, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ic, i1 false), !tbaa !59
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.q
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !219
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 48
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !149
  %.not.i = icmp eq i32 %i.ig, 0                  ; 2 uses
  br i1 %.not.i, label %_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 68680
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !236
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %i.ij
  store double -1.000000e+00, ptr %i.ik, align 8, !tbaa !59
  br label %_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit

_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit: ; preds = %._crit_edge.i, %bb.r
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  store i32 11, ptr %i.il, align 8, !tbaa !237
  br i1 %i.hw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit
  %i.im = load ptr, ptr %1, align 8, !tbaa !232   ; 7 uses
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 68672
  %i.io = load i32, ptr %i.in, align 8, !tbaa !235
  %i.ip = load ptr, ptr %i.hn, align 8, !tbaa !232 ; 7 uses
  %i.iq = sext i32 %i.io to i64                   ; 6 uses
  %wide.trip.count = zext nneg i32 %i.hv to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %i.hv, 6
  %i.ir = ptrtoaddr ptr %i.ip to i64
  %i.is = ptrtoaddr ptr %i.im to i64
  %i.it = sub i64 %i.is, %i.ir
  %diff.check = icmp ugt i64 %i.it, -32
  %or.cond708 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond708, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iu = add nsw i64 %index, %i.iq               ; 2 uses
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.im, i64 %i.iu ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %wide.load = load <2 x double>, ptr %i.iv, align 8, !tbaa !59
  %wide.load705 = load <2 x double>, ptr %i.iw, align 8, !tbaa !59
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.ip, i64 %i.iu ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  store <2 x double> %wide.load, ptr %i.ix, align 8, !tbaa !59
  store <2 x double> %wide.load705, ptr %i.iy, align 8, !tbaa !59
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.iz = icmp eq i64 %index.next, %n.vec
  br i1 %i.iz, label %middle.block, label %vector.body, !llvm.loop !589

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ja = add nsw i64 %indvars.iv.prol, %i.iq     ; 2 uses
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.im, i64 %i.ja
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !59
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.ip, i64 %i.ja
  store double %i.jc, ptr %i.jd, align 8, !tbaa !59
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !590

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.je = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.jf = icmp ugt i64 %i.je, -4
  br i1 %i.jf, label %._crit_edge, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add nsw i64 1, %i.iq
  %invariant.op720 = add nsw i64 2, %i.iq
  %invariant.op722 = add nsw i64 3, %i.iq
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.3, %scalar.ph ] ; 5 uses
  %i.jg = add nsw i64 %indvars.iv, %i.iq          ; 2 uses
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.im, i64 %i.jg
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !59
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.ip, i64 %i.jg
  store double %i.ji, ptr %i.jj, align 8, !tbaa !59
  %.reass = add nsw i64 %indvars.iv, %invariant.op ; 2 uses
  %i.jk = getelementptr inbounds [8 x i8], ptr %i.im, i64 %.reass
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !59
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.ip, i64 %.reass
  store double %i.jl, ptr %i.jm, align 8, !tbaa !59
  %.reass721 = add nsw i64 %indvars.iv, %invariant.op720 ; 2 uses
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.im, i64 %.reass721
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !59
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.ip, i64 %.reass721
  store double %i.jo, ptr %i.jp, align 8, !tbaa !59
  %.reass723 = add nsw i64 %indvars.iv, %invariant.op722 ; 2 uses
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.im, i64 %.reass723
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !59
  %i.js = getelementptr inbounds [8 x i8], ptr %i.ip, i64 %.reass723
  store double %i.jr, ptr %i.js, align 8, !tbaa !59
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !591

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.jt = load ptr, ptr %1, align 8, !tbaa !232
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 68680
  %i.jv = load i32, ptr %i.ju, align 8, !tbaa !236
  %i.jw = sext i32 %i.jv to i64                   ; 2 uses
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.jt, i64 %i.jw
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !59
  %i.jz = load ptr, ptr %i.hn, align 8, !tbaa !232
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.jw
  store double %i.jy, ptr %i.ka, align 8, !tbaa !59
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge
  br i1 %i.a, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 68584
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !251 ; 2 uses
  %.not357 = icmp eq ptr %i.bm, %i.kc
  %i.kd = load ptr, ptr %1, align 8, !tbaa !232   ; 10 uses
  %i.ke = load i32, ptr %i.ar, align 8, !tbaa !237 ; 3 uses
  %i.kf = sext i32 %i.ke to i64                   ; 5 uses
  %i.kg = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %i.kf
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !60
  %i.ki = sext i32 %i.kh to i64
  %i.kj = getelementptr inbounds [8 x i8], ptr %i.kd, i64 %i.ki ; 2 uses
  %i.kk = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.kf ; 2 uses
  %i.kl = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.kf ; 2 uses
  %i.km = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9oppopivotE, i64 %i.kf ; 2 uses
  br i1 %.not357, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr %i.bu, ptr %i.kj, align 8, !tbaa !221
  %i.kn = load i32, ptr %i.kk, align 4, !tbaa !60
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.kd, i64 %i.ko
  store ptr %i.bm, ptr %i.kp, align 8, !tbaa !221
  %i.kq = load i32, ptr %i.kl, align 4, !tbaa !60
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.kd, i64 %i.kr
  store ptr %i.ax, ptr %i.ks, align 8, !tbaa !221
  %i.kt = load i32, ptr %i.km, align 4, !tbaa !60
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.kd, i64 %i.ku
  store ptr %i.bc, ptr %i.kv, align 8, !tbaa !221
  %i.kw = load ptr, ptr %i.bn, align 8, !tbaa !232 ; 6 uses
  %i.kx = load i32, ptr %i.bo, align 8, !tbaa !237 ; 3 uses
  %i.ky = sext i32 %i.kx to i64                   ; 4 uses
  %i.kz = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %i.ky
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !60
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.kw, i64 %i.lb
  store ptr %i.bu, ptr %i.lc, align 8, !tbaa !221
  %i.ld = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.ky
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !60
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.kw, i64 %i.lf
  store ptr %i.bm, ptr %i.lg, align 8, !tbaa !221
  %i.lh = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.ky
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !60
  %i.lj = sext i32 %i.li to i64
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.kw, i64 %i.lj
  store ptr %i.bc, ptr %i.lk, align 8, !tbaa !221
  %i.ll = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9oppopivotE, i64 %i.ky
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !60
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.kw, i64 %i.ln
  store ptr %i.bh, ptr %i.lo, align 8, !tbaa !221
  %.not358 = icmp eq ptr %i.bh, %i.kc
  %i.lp = load ptr, ptr %i.hn, align 8, !tbaa !232 ; 9 uses
  %i.lq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh8orgpivotE, i64 44), align 4, !tbaa !60
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.lp, i64 %i.lr ; 2 uses
  br i1 %.not358, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.bu, ptr %i.ls, align 8, !tbaa !221
  %i.lt = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh9destpivotE, i64 44), align 4, !tbaa !60
  %i.lu = sext i32 %i.lt to i64
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.lp, i64 %i.lu
  store ptr %i.bm, ptr %i.lv, align 8, !tbaa !221
  %i.lw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh9apexpivotE, i64 44), align 4, !tbaa !60
  %i.lx = sext i32 %i.lw to i64
  %i.ly = getelementptr inbounds [8 x i8], ptr %i.lp, i64 %i.lx
  store ptr %i.bh, ptr %i.ly, align 8, !tbaa !221
  %i.lz = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh9oppopivotE, i64 44), align 4, !tbaa !60
  %i.ma = sext i32 %i.lz to i64
  %i.mb = getelementptr inbounds [8 x i8], ptr %i.lp, i64 %i.ma
  store ptr %i.ax, ptr %i.mb, align 8, !tbaa !221
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  store ptr %i.bm, ptr %i.ls, align 8, !tbaa !221
  %i.mc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh9destpivotE, i64 44), align 4, !tbaa !60
  %i.md = sext i32 %i.mc to i64
  %i.me = getelementptr inbounds [8 x i8], ptr %i.lp, i64 %i.md
  store ptr %i.bu, ptr %i.me, align 8, !tbaa !221
  %i.mf = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh9apexpivotE, i64 44), align 4, !tbaa !60
  %i.mg = sext i32 %i.mf to i64
  %i.mh = getelementptr inbounds [8 x i8], ptr %i.lp, i64 %i.mg
  store ptr %i.ax, ptr %i.mh, align 8, !tbaa !221
  %i.mi = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh9oppopivotE, i64 44), align 4, !tbaa !60
  %i.mj = sext i32 %i.mi to i64
  %i.mk = getelementptr inbounds [8 x i8], ptr %i.lp, i64 %i.mj
  store ptr %i.bh, ptr %i.mk, align 8, !tbaa !221
  %i.ml = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7esymtblE, i64 44), align 4, !tbaa !60 ; 2 uses
  store i32 %i.ml, ptr %i.il, align 8, !tbaa !237
  br label %bb.aa

bb.y:                                             ; preds = %bb.u
  store ptr %i.ax, ptr %i.kj, align 8, !tbaa !221
  %i.mm = load i32, ptr %i.kk, align 4, !tbaa !60
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.kd, i64 %i.mn
  store ptr %i.bc, ptr %i.mo, align 8, !tbaa !221
  %i.mp = load i32, ptr %i.kl, align 4, !tbaa !60
  %i.mq = sext i32 %i.mp to i64
  %i.mr = getelementptr inbounds [8 x i8], ptr %i.kd, i64 %i.mq
  store ptr %i.bu, ptr %i.mr, align 8, !tbaa !221
  %i.ms = load i32, ptr %i.km, align 4, !tbaa !60
  %i.mt = sext i32 %i.ms to i64
  %i.mu = getelementptr inbounds [8 x i8], ptr %i.kd, i64 %i.mt
  store ptr %i.bm, ptr %i.mu, align 8, !tbaa !221
  %i.mv = load ptr, ptr %i.bn, align 8, !tbaa !232 ; 5 uses
  %i.mw = load i32, ptr %i.bo, align 8, !tbaa !237
  %i.mx = sext i32 %i.mw to i64                   ; 5 uses
  %i.my = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %i.mx
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !60
  %i.na = sext i32 %i.mz to i64
  %i.nb = getelementptr inbounds [8 x i8], ptr %i.mv, i64 %i.na
  store ptr %i.bc, ptr %i.nb, align 8, !tbaa !221
  %i.nc = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.mx
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !60
  %i.ne = sext i32 %i.nd to i64
  %i.nf = getelementptr inbounds [8 x i8], ptr %i.mv, i64 %i.ne
  store ptr %i.bh, ptr %i.nf, align 8, !tbaa !221
  %i.ng = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.mx
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !60
  %i.ni = sext i32 %i.nh to i64
  %i.nj = getelementptr inbounds [8 x i8], ptr %i.mv, i64 %i.ni
  store ptr %i.bu, ptr %i.nj, align 8, !tbaa !221
  %i.nk = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9oppopivotE, i64 %i.mx
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !60
  %i.nm = sext i32 %i.nl to i64
  %i.nn = getelementptr inbounds [8 x i8], ptr %i.mv, i64 %i.nm
  store ptr %i.bm, ptr %i.nn, align 8, !tbaa !221
  %i.no = load ptr, ptr %i.hn, align 8, !tbaa !232 ; 5 uses
  %i.np = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh8orgpivotE, i64 44), align 4, !tbaa !60
  %i.nq = sext i32 %i.np to i64
  %i.nr = getelementptr inbounds [8 x i8], ptr %i.no, i64 %i.nq
  store ptr %i.bh, ptr %i.nr, align 8, !tbaa !221
  %i.ns = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh9destpivotE, i64 44), align 4, !tbaa !60
  %i.nt = sext i32 %i.ns to i64
  %i.nu = getelementptr inbounds [8 x i8], ptr %i.no, i64 %i.nt
  store ptr %i.ax, ptr %i.nu, align 8, !tbaa !221
  %i.nv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh9apexpivotE, i64 44), align 4, !tbaa !60
  %i.nw = sext i32 %i.nv to i64
  %i.nx = getelementptr inbounds [8 x i8], ptr %i.no, i64 %i.nw
  store ptr %i.bu, ptr %i.nx, align 8, !tbaa !221
  %i.ny = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh9oppopivotE, i64 44), align 4, !tbaa !60
  %i.nz = sext i32 %i.ny to i64
  %i.oa = getelementptr inbounds [8 x i8], ptr %i.no, i64 %i.nz
  store ptr %i.bm, ptr %i.oa, align 8, !tbaa !221
  %i.ob = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh12eprevesymtblE, i64 %i.kf
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !60 ; 2 uses
  store i32 %i.oc, ptr %i.ar, align 8, !tbaa !237
  %i.od = sext i32 %i.oc to i64
  %i.oe = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.od
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !60 ; 2 uses
  store i32 %i.of, ptr %i.ar, align 8, !tbaa !237
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.oh = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh12eprevesymtblE, i64 %i.mx
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !60 ; 2 uses
  store i32 %i.oi, ptr %i.og, align 8, !tbaa !237
  %i.oj = sext i32 %i.oi to i64
  %i.ok = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.oj
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !60 ; 2 uses
  store i32 %i.ol, ptr %i.og, align 8, !tbaa !237
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.on = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh12eprevesymtblE, i64 44), align 4, !tbaa !60 ; 2 uses
  store i32 %i.on, ptr %i.om, align 8, !tbaa !237
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.oo
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !60 ; 2 uses
  store i32 %i.oq, ptr %i.om, align 8, !tbaa !237
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 68960 ; 2 uses
  %i.os = load i64, ptr %i.or, align 8, !tbaa !278
  %i.ot = add nsw i64 %i.os, 2
  store i64 %i.ot, ptr %i.or, align 8, !tbaa !278
end_hunk_0
begin_hunk_1_@_ZN10tetgenmesh6flip32EPNS_7trifaceEiPNS_15flipconstraintsE:bb.a
  %.2305 = phi i32 [ -1, %.preheader546.preheader ], [ %.1304.2, %.loopexit545.loopexit ] ; 5 uses
  %.2302 = phi i1 [ false, %.preheader546.preheader ], [ %i.is, %.loopexit545.loopexit ] ; 2 uses
  store i32 11, ptr %i.bo, align 8, !tbaa !237
  store i32 11, ptr %i.bw, align 8, !tbaa !237
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 68684 ; 16 uses
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !233
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %i.ix
  store i32 0, ptr %i.iy, align 4, !tbaa !60
  %i.iz = load i32, ptr %i.iv, align 4, !tbaa !233
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.ja
  store i32 0, ptr %i.jb, align 4, !tbaa !60
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 68696 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !276
  %.not331 = icmp eq i32 %i.jd, 0
  br i1 %.not331, label %bb.n, label %bb.j

bb.j:                                             ; preds = %.loopexit545
  %i.je = getelementptr inbounds nuw i8, ptr %i.iu, i64 64
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !221 ; 3 uses
  %.not332 = icmp eq ptr %i.jf, null
  br i1 %.not332, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !229 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 24 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !201
  store ptr %i.jj, ptr %i.jf, align 8, !tbaa !112
  store ptr %i.jf, ptr %i.ji, align 8, !tbaa !201
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 64 ; 2 uses
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !203
  %i.jm = add nsw i64 %i.jl, -1
  store i64 %i.jm, ptr %i.jk, align 8, !tbaa !203
  %i.jn = load ptr, ptr %1, align 8, !tbaa !232
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 64
  store ptr null, ptr %i.jo, align 8, !tbaa !221
  %.pre663 = load ptr, ptr %i.bv, align 8, !tbaa !232
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.jp = phi ptr [ %.pre663, %bb.k ], [ %i.it, %bb.j ] ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 64
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !221 ; 3 uses
  %.not333 = icmp eq ptr %i.jr, null
  br i1 %.not333, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !229 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 24 ; 2 uses
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !201
  store ptr %i.jv, ptr %i.jr, align 8, !tbaa !112
  store ptr %i.jr, ptr %i.ju, align 8, !tbaa !201
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 64 ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !203
  %i.jy = add nsw i64 %i.jx, -1
  store i64 %i.jy, ptr %i.jw, align 8, !tbaa !203
  %i.jz = load ptr, ptr %i.bv, align 8, !tbaa !232 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 64
  store ptr null, ptr %i.ka, align 8, !tbaa !221
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %.loopexit545
  %i.kb = phi ptr [ %i.jp, %bb.l ], [ %i.jz, %bb.m ], [ %i.it, %.loopexit545 ]
  %i.kc = load i32, ptr %i.go, align 4, !tbaa !277
  %.not334 = icmp eq i32 %i.kc, 0
  br i1 %.not334, label %.loopexit543, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.kd = load ptr, ptr %1, align 8, !tbaa !232
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 72
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !221 ; 3 uses
  %.not335 = icmp eq ptr %i.kf, null
  br i1 %.not335, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !230 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 24 ; 2 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !201
  store ptr %i.kj, ptr %i.kf, align 8, !tbaa !112
  store ptr %i.kf, ptr %i.ki, align 8, !tbaa !201
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 64 ; 2 uses
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !203
  %i.km = add nsw i64 %i.kl, -1
  store i64 %i.km, ptr %i.kk, align 8, !tbaa !203
  %i.kn = load ptr, ptr %1, align 8, !tbaa !232
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 72
  store ptr null, ptr %i.ko, align 8, !tbaa !221
  %.pre664 = load ptr, ptr %i.bv, align 8, !tbaa !232
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.kp = phi ptr [ %.pre664, %bb.p ], [ %i.kb, %bb.o ] ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 72
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !221 ; 3 uses
  %.not336 = icmp eq ptr %i.kr, null
  br i1 %.not336, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !230 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 24 ; 2 uses
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !201
  store ptr %i.kv, ptr %i.kr, align 8, !tbaa !112
  store ptr %i.kr, ptr %i.ku, align 8, !tbaa !201
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 64 ; 2 uses
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !203
  %i.ky = add nsw i64 %i.kx, -1
  store i64 %i.ky, ptr %i.kw, align 8, !tbaa !203
  %i.kz = load ptr, ptr %i.bv, align 8, !tbaa !232 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 72
  store ptr null, ptr %i.la, align 8, !tbaa !221
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.lb = phi ptr [ %i.kp, %bb.q ], [ %i.kz, %bb.r ] ; 8 uses
  %i.lc = ptrtoaddr ptr %i.lb to i64
  br i1 %.2302, label %.preheader542, label %.loopexit543

.preheader542:                                    ; preds = %bb.s
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 68644
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !234 ; 5 uses
  %i.lf = icmp sgt i32 %i.le, 0                   ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !219
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 48
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !149
  %.not364 = icmp eq i32 %i.lj, 0                 ; 2 uses
  %i.lk = sext i32 %.2305 to i64
  %i.ll = getelementptr inbounds [16 x i8], ptr %1, i64 %i.lk ; 4 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 68672 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 68680 ; 2 uses
  br i1 %i.lf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader542
  %i.lo = load ptr, ptr %i.ll, align 8, !tbaa !232 ; 7 uses
  %i.lp = load i32, ptr %i.lm, align 8, !tbaa !235
  %i.lq = load ptr, ptr %1, align 8, !tbaa !232   ; 7 uses
  %i.lr = sext i32 %i.lp to i64                   ; 6 uses
  %wide.trip.count = zext nneg i32 %i.le to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %i.le, 6
  %i.ls = ptrtoaddr ptr %i.lq to i64
  %i.lt = ptrtoaddr ptr %i.lo to i64
  %i.lu = sub i64 %i.lt, %i.ls
  %diff.check = icmp ugt i64 %i.lu, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lv = add nsw i64 %index, %i.lr               ; 2 uses
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.lo, i64 %i.lv ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %wide.load = load <2 x double>, ptr %i.lw, align 8, !tbaa !59
  %wide.load779 = load <2 x double>, ptr %i.lx, align 8, !tbaa !59
  %i.ly = getelementptr inbounds [8 x i8], ptr %i.lq, i64 %i.lv ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  store <2 x double> %wide.load, ptr %i.ly, align 8, !tbaa !59
  store <2 x double> %wide.load779, ptr %i.lz, align 8, !tbaa !59
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ma = icmp eq i64 %index.next, %n.vec
  br i1 %i.ma, label %middle.block, label %vector.body, !llvm.loop !592

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.mb = add nsw i64 %indvars.iv.prol, %i.lr     ; 2 uses
  %i.mc = getelementptr inbounds [8 x i8], ptr %i.lo, i64 %i.mb
  %i.md = load double, ptr %i.mc, align 8, !tbaa !59
  %i.me = getelementptr inbounds [8 x i8], ptr %i.lq, i64 %i.mb
  store double %i.md, ptr %i.me, align 8, !tbaa !59
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !593

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.mf = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.mg = icmp ugt i64 %i.mf, -4
  br i1 %i.mg, label %._crit_edge, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add nsw i64 1, %i.lr
  %invariant.op814 = add nsw i64 2, %i.lr
  %invariant.op816 = add nsw i64 3, %i.lr
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.3, %scalar.ph ] ; 5 uses
  %i.mh = add nsw i64 %indvars.iv, %i.lr          ; 2 uses
  %i.mi = getelementptr inbounds [8 x i8], ptr %i.lo, i64 %i.mh
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !59
  %i.mk = getelementptr inbounds [8 x i8], ptr %i.lq, i64 %i.mh
  store double %i.mj, ptr %i.mk, align 8, !tbaa !59
  %.reass = add nsw i64 %indvars.iv, %invariant.op ; 2 uses
  %i.ml = getelementptr inbounds [8 x i8], ptr %i.lo, i64 %.reass
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !59
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.lq, i64 %.reass
  store double %i.mm, ptr %i.mn, align 8, !tbaa !59
  %.reass815 = add nsw i64 %indvars.iv, %invariant.op814 ; 2 uses
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.lo, i64 %.reass815
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !59
  %i.mq = getelementptr inbounds [8 x i8], ptr %i.lq, i64 %.reass815
  store double %i.mp, ptr %i.mq, align 8, !tbaa !59
  %.reass817 = add nsw i64 %indvars.iv, %invariant.op816 ; 2 uses
  %i.mr = getelementptr inbounds [8 x i8], ptr %i.lo, i64 %.reass817
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !59
  %i.mt = getelementptr inbounds [8 x i8], ptr %i.lq, i64 %.reass817
  store double %i.ms, ptr %i.mt, align 8, !tbaa !59
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !594

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader542
  br i1 %.not364, label %.preheader541.1, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.mu = load ptr, ptr %i.ll, align 8, !tbaa !232
  %i.mv = load i32, ptr %i.ln, align 8, !tbaa !236
  %i.mw = sext i32 %i.mv to i64                   ; 2 uses
  %i.mx = getelementptr inbounds [8 x i8], ptr %i.mu, i64 %i.mw
  %i.my = load double, ptr %i.mx, align 8, !tbaa !59
  %i.mz = load ptr, ptr %1, align 8, !tbaa !232
  %i.na = getelementptr inbounds [8 x i8], ptr %i.mz, i64 %i.mw
  store double %i.my, ptr %i.na, align 8, !tbaa !59
  br label %.preheader541.1

.preheader541.1:                                  ; preds = %._crit_edge, %bb.t
  br i1 %i.lf, label %.lr.ph.1, label %._crit_edge.1

.lr.ph.1:                                         ; preds = %.preheader541.1
  %i.nb = load ptr, ptr %i.ll, align 8, !tbaa !232 ; 7 uses
  %i.nc = load i32, ptr %i.lm, align 8, !tbaa !235
  %i.nd = sext i32 %i.nc to i64                   ; 6 uses
  %wide.trip.count.1 = zext nneg i32 %i.le to i64 ; 5 uses
  %min.iters.check783 = icmp ult i32 %i.le, 6
  %i.ne = ptrtoaddr ptr %i.nb to i64
  %i.nf = sub i64 %i.ne, %i.lc
  %diff.check781 = icmp ugt i64 %i.nf, -32
  %or.cond797 = select i1 %min.iters.check783, i1 true, i1 %diff.check781
  br i1 %or.cond797, label %scalar.ph782.preheader, label %vector.ph784

vector.ph784:                                     ; preds = %.lr.ph.1
  %n.vec785 = and i64 %wide.trip.count.1, 2147483644 ; 3 uses
  br label %vector.body786

vector.body786:                                   ; preds = %vector.body786, %vector.ph784
  %index787 = phi i64 [ 0, %vector.ph784 ], [ %index.next790, %vector.body786 ] ; 2 uses
  %i.ng = add nsw i64 %index787, %i.nd            ; 2 uses
  %i.nh = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %i.ng ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  %wide.load788 = load <2 x double>, ptr %i.nh, align 8, !tbaa !59
  %wide.load789 = load <2 x double>, ptr %i.ni, align 8, !tbaa !59
  %i.nj = getelementptr inbounds [8 x i8], ptr %i.lb, i64 %i.ng ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  store <2 x double> %wide.load788, ptr %i.nj, align 8, !tbaa !59
  store <2 x double> %wide.load789, ptr %i.nk, align 8, !tbaa !59
  %index.next790 = add nuw i64 %index787, 4       ; 2 uses
  %i.nl = icmp eq i64 %index.next790, %n.vec785
  br i1 %i.nl, label %middle.block791, label %vector.body786, !llvm.loop !595

middle.block791:                                  ; preds = %vector.body786
  %cmp.n792 = icmp eq i64 %n.vec785, %wide.trip.count.1
  br i1 %cmp.n792, label %._crit_edge.1, label %scalar.ph782.preheader

scalar.ph782.preheader:                           ; preds = %.lr.ph.1, %middle.block791
  %indvars.iv.1.ph = phi i64 [ 0, %.lr.ph.1 ], [ %n.vec785, %middle.block791 ] ; 3 uses
  %xtraiter802 = and i64 %wide.trip.count.1, 3    ; 2 uses
  %lcmp.mod803.not = icmp eq i64 %xtraiter802, 0
  br i1 %lcmp.mod803.not, label %scalar.ph782.prol.loopexit, label %scalar.ph782.prol

scalar.ph782.prol:                                ; preds = %scalar.ph782.preheader, %scalar.ph782.prol
  %indvars.iv.1.prol = phi i64 [ %indvars.iv.next.1.prol, %scalar.ph782.prol ], [ %indvars.iv.1.ph, %scalar.ph782.preheader ] ; 2 uses
  %prol.iter804 = phi i64 [ %prol.iter804.next, %scalar.ph782.prol ], [ 0, %scalar.ph782.preheader ]
  %i.nm = add nsw i64 %indvars.iv.1.prol, %i.nd   ; 2 uses
  %i.nn = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %i.nm
  %i.no = load double, ptr %i.nn, align 8, !tbaa !59
  %i.np = getelementptr inbounds [8 x i8], ptr %i.lb, i64 %i.nm
  store double %i.no, ptr %i.np, align 8, !tbaa !59
  %indvars.iv.next.1.prol = add nuw nsw i64 %indvars.iv.1.prol, 1 ; 2 uses
  %prol.iter804.next = add i64 %prol.iter804, 1   ; 2 uses
  %prol.iter804.cmp.not = icmp eq i64 %prol.iter804.next, %xtraiter802
  br i1 %prol.iter804.cmp.not, label %scalar.ph782.prol.loopexit, label %scalar.ph782.prol, !llvm.loop !596

scalar.ph782.prol.loopexit:                       ; preds = %scalar.ph782.prol, %scalar.ph782.preheader
  %indvars.iv.1.unr = phi i64 [ %indvars.iv.1.ph, %scalar.ph782.preheader ], [ %indvars.iv.next.1.prol, %scalar.ph782.prol ]
  %i.nq = sub nsw i64 %indvars.iv.1.ph, %wide.trip.count.1
  %i.nr = icmp ugt i64 %i.nq, -4
  br i1 %i.nr, label %._crit_edge.1, label %scalar.ph782.preheader.new

scalar.ph782.preheader.new:                       ; preds = %scalar.ph782.prol.loopexit
  %invariant.op818 = add nsw i64 1, %i.nd
  %invariant.op820 = add nsw i64 2, %i.nd
  %invariant.op822 = add nsw i64 3, %i.nd
  br label %scalar.ph782

scalar.ph782:                                     ; preds = %scalar.ph782, %scalar.ph782.preheader.new
  %indvars.iv.1 = phi i64 [ %indvars.iv.1.unr, %scalar.ph782.preheader.new ], [ %indvars.iv.next.1.3, %scalar.ph782 ] ; 5 uses
  %i.ns = add nsw i64 %indvars.iv.1, %i.nd        ; 2 uses
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %i.ns
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !59
  %i.nv = getelementptr inbounds [8 x i8], ptr %i.lb, i64 %i.ns
  store double %i.nu, ptr %i.nv, align 8, !tbaa !59
  %.reass819 = add nsw i64 %indvars.iv.1, %invariant.op818 ; 2 uses
  %i.nw = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %.reass819
  %i.nx = load double, ptr %i.nw, align 8, !tbaa !59
  %i.ny = getelementptr inbounds [8 x i8], ptr %i.lb, i64 %.reass819
  store double %i.nx, ptr %i.ny, align 8, !tbaa !59
  %.reass821 = add nsw i64 %indvars.iv.1, %invariant.op820 ; 2 uses
  %i.nz = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %.reass821
  %i.oa = load double, ptr %i.nz, align 8, !tbaa !59
  %i.ob = getelementptr inbounds [8 x i8], ptr %i.lb, i64 %.reass821
  store double %i.oa, ptr %i.ob, align 8, !tbaa !59
  %.reass823 = add nsw i64 %indvars.iv.1, %invariant.op822 ; 2 uses
  %i.oc = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %.reass823
  %i.od = load double, ptr %i.oc, align 8, !tbaa !59
  %i.oe = getelementptr inbounds [8 x i8], ptr %i.lb, i64 %.reass823
  store double %i.od, ptr %i.oe, align 8, !tbaa !59
  %indvars.iv.next.1.3 = add nuw nsw i64 %indvars.iv.1, 4 ; 2 uses
  %exitcond.1.not.3 = icmp eq i64 %indvars.iv.next.1.3, %wide.trip.count.1
  br i1 %exitcond.1.not.3, label %._crit_edge.1, label %scalar.ph782, !llvm.loop !597

._crit_edge.1:                                    ; preds = %scalar.ph782.prol.loopexit, %scalar.ph782, %middle.block791, %.preheader541.1
  br i1 %.not364, label %.loopexit543, label %bb.u

bb.u:                                             ; preds = %._crit_edge.1
  %i.of = load ptr, ptr %i.ll, align 8, !tbaa !232
  %i.og = load i32, ptr %i.ln, align 8, !tbaa !236
  %i.oh = sext i32 %i.og to i64                   ; 2 uses
  %i.oi = getelementptr inbounds [8 x i8], ptr %i.of, i64 %i.oh
  %i.oj = load double, ptr %i.oi, align 8, !tbaa !59
  %i.ok = getelementptr inbounds [8 x i8], ptr %i.lb, i64 %i.oh
  store double %i.oj, ptr %i.ok, align 8, !tbaa !59
  br label %.loopexit543

.loopexit543:                                     ; preds = %._crit_edge.1, %bb.u, %bb.n, %bb.s
  %i.ol = phi i1 [ %.2302, %bb.n ], [ false, %bb.s ], [ true, %bb.u ], [ true, %._crit_edge.1 ]
  %i.om = load ptr, ptr %i.cd, align 8, !tbaa !232 ; 5 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 32
  store ptr null, ptr %i.on, align 8, !tbaa !221
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 64
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !221 ; 3 uses
  %.not.i = icmp eq ptr %i.op, null
  br i1 %.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.loopexit543
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !229 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 24 ; 2 uses
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !201
  store ptr %i.ot, ptr %i.op, align 8, !tbaa !112
  store ptr %i.op, ptr %i.os, align 8, !tbaa !201
  %i.ou = getelementptr inbounds nuw i8, ptr %i.or, i64 64 ; 2 uses
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !203
  %i.ow = add nsw i64 %i.ov, -1
  store i64 %i.ow, ptr %i.ou, align 8, !tbaa !203
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.loopexit543
  %i.ox = getelementptr inbounds nuw i8, ptr %i.om, i64 72
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !221 ; 3 uses
  %.not8.i = icmp eq ptr %i.oy, null
  br i1 %.not8.i, label %_ZN10tetgenmesh18tetrahedrondeallocEPPPd.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !230 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 24 ; 2 uses
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !201
  store ptr %i.pc, ptr %i.oy, align 8, !tbaa !112
  store ptr %i.oy, ptr %i.pb, align 8, !tbaa !201
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pa, i64 64 ; 2 uses
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !203
  %i.pf = add nsw i64 %i.pe, -1
  store i64 %i.pf, ptr %i.pd, align 8, !tbaa !203
  br label %_ZN10tetgenmesh18tetrahedrondeallocEPPPd.exit

_ZN10tetgenmesh18tetrahedrondeallocEPPPd.exit:    ; preds = %bb.w, %bb.x
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !231 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 24 ; 2 uses
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !201
  store ptr %i.pj, ptr %i.om, align 8, !tbaa !112
  store ptr %i.om, ptr %i.pi, align 8, !tbaa !201
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ph, i64 64 ; 2 uses
  %i.pl = load i64, ptr %i.pk, align 8, !tbaa !203
  %i.pm = add nsw i64 %i.pl, -1
  store i64 %i.pm, ptr %i.pk, align 8, !tbaa !203
  br i1 %i.d, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %_ZN10tetgenmesh18tetrahedrondeallocEPPPd.exit
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 68584
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !251 ; 2 uses
  %.not337 = icmp eq ptr %i.cm, %i.po
  br i1 %.not337, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not338 = icmp eq ptr %i.cr, %i.po
  br i1 %.not338, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 68960 ; 2 uses
  %i.pq = load i64, ptr %i.pp, align 8, !tbaa !278
  %i.pr = add nsw i64 %i.pq, -2
  store i64 %i.pr, ptr %i.pp, align 8, !tbaa !278
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.ps = load ptr, ptr %1, align 8, !tbaa !232   ; 5 uses
  %i.pt = load i32, ptr %i.bo, align 8, !tbaa !237 ; 2 uses
  %i.pu = sext i32 %i.pt to i64                   ; 4 uses
  %i.pv = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %i.pu
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !60
  %i.px = sext i32 %i.pw to i64
  %i.py = getelementptr inbounds [8 x i8], ptr %i.ps, i64 %i.px
  store ptr %i.bu, ptr %i.py, align 8, !tbaa !221
  %i.pz = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.pu
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !60
  %i.qb = sext i32 %i.qa to i64
  %i.qc = getelementptr inbounds [8 x i8], ptr %i.ps, i64 %i.qb
  store ptr %i.cc, ptr %i.qc, align 8, !tbaa !221
  %i.qd = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.pu
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !60
  %i.qf = sext i32 %i.qe to i64
  %i.qg = getelementptr inbounds [8 x i8], ptr %i.ps, i64 %i.qf
  store ptr %i.cm, ptr %i.qg, align 8, !tbaa !221
  %i.qh = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9oppopivotE, i64 %i.pu
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !60
  %i.qj = sext i32 %i.qi to i64
  %i.qk = getelementptr inbounds [8 x i8], ptr %i.ps, i64 %i.qj
  store ptr %i.cr, ptr %i.qk, align 8, !tbaa !221
  %i.ql = load ptr, ptr %i.bv, align 8, !tbaa !232 ; 5 uses
  %i.qm = load i32, ptr %i.bw, align 8, !tbaa !237 ; 2 uses
  %i.qn = sext i32 %i.qm to i64                   ; 4 uses
  %i.qo = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %i.qn
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !60
  %i.qq = sext i32 %i.qp to i64
  %i.qr = getelementptr inbounds [8 x i8], ptr %i.ql, i64 %i.qq
  store ptr %i.cc, ptr %i.qr, align 8, !tbaa !221
  %i.qs = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.qn
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !60
  %i.qu = sext i32 %i.qt to i64
  %i.qv = getelementptr inbounds [8 x i8], ptr %i.ql, i64 %i.qu
  store ptr %i.bu, ptr %i.qv, align 8, !tbaa !221
  %i.qw = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.qn
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !60
  %i.qy = sext i32 %i.qx to i64
  %i.qz = getelementptr inbounds [8 x i8], ptr %i.ql, i64 %i.qy
  store ptr %i.cm, ptr %i.qz, align 8, !tbaa !221
  %i.ra = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9oppopivotE, i64 %i.qn
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !60
  %i.rc = sext i32 %i.rb to i64
  %i.rd = getelementptr inbounds [8 x i8], ptr %i.ql, i64 %i.rc
  store ptr %i.cw, ptr %i.rd, align 8, !tbaa !221
  br label %bb.ae

bb.ac:                                            ; preds = %bb.y
  %i.re = load ptr, ptr %1, align 8, !tbaa !232   ; 5 uses
  %i.rf = load i32, ptr %i.bo, align 8, !tbaa !237
  %i.rg = sext i32 %i.rf to i64                   ; 5 uses
  %i.rh = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %i.rg
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !60
  %i.rj = sext i32 %i.ri to i64
  %i.rk = getelementptr inbounds [8 x i8], ptr %i.re, i64 %i.rj
  store ptr %i.cc, ptr %i.rk, align 8, !tbaa !221
  %i.rl = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.rg
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !60
  %i.rn = sext i32 %i.rm to i64
  %i.ro = getelementptr inbounds [8 x i8], ptr %i.re, i64 %i.rn
  store ptr %i.bu, ptr %i.ro, align 8, !tbaa !221
  %i.rp = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.rg
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !60
  %i.rr = sext i32 %i.rq to i64
  %i.rs = getelementptr inbounds [8 x i8], ptr %i.re, i64 %i.rr
  store ptr %i.cr, ptr %i.rs, align 8, !tbaa !221
  %i.rt = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9oppopivotE, i64 %i.rg
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !60
  %i.rv = sext i32 %i.ru to i64
  %i.rw = getelementptr inbounds [8 x i8], ptr %i.re, i64 %i.rv
  store ptr %i.cm, ptr %i.rw, align 8, !tbaa !221
  %i.rx = load ptr, ptr %i.bv, align 8, !tbaa !232 ; 5 uses
  %i.ry = load i32, ptr %i.bw, align 8, !tbaa !237
  %i.rz = sext i32 %i.ry to i64                   ; 5 uses
  %i.sa = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %i.rz
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !60
  %i.sc = sext i32 %i.sb to i64
  %i.sd = getelementptr inbounds [8 x i8], ptr %i.rx, i64 %i.sc
  store ptr %i.bu, ptr %i.sd, align 8, !tbaa !221
  %i.se = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.rz
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !60
  %i.sg = sext i32 %i.sf to i64
  %i.sh = getelementptr inbounds [8 x i8], ptr %i.rx, i64 %i.sg
  store ptr %i.cc, ptr %i.sh, align 8, !tbaa !221
  %i.si = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.rz
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !60
  %i.sk = sext i32 %i.sj to i64
  %i.sl = getelementptr inbounds [8 x i8], ptr %i.rx, i64 %i.sk
  store ptr %i.cw, ptr %i.sl, align 8, !tbaa !221
  %i.sm = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9oppopivotE, i64 %i.rz
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !60
  %i.so = sext i32 %i.sn to i64
  %i.sp = getelementptr inbounds [8 x i8], ptr %i.rx, i64 %i.so
  store ptr %i.cm, ptr %i.sp, align 8, !tbaa !221
  %i.sq = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.rg
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !60 ; 2 uses
  store i32 %i.sr, ptr %i.bo, align 8, !tbaa !237
  %i.ss = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.rz
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !60 ; 2 uses
  store i32 %i.st, ptr %i.bw, align 8, !tbaa !237
  br label %bb.ae

bb.ad:                                            ; preds = %_ZN10tetgenmesh18tetrahedrondeallocEPPPd.exit
  %i.su = load ptr, ptr %1, align 8, !tbaa !232   ; 5 uses
  %i.sv = load i32, ptr %i.bo, align 8, !tbaa !237 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN10tetgenmesh11insertpointEPdPNS_7trifaceEPNS_4faceES4_PNS_17insertvertexflagsE:bb.a
  %scevgep.i = getelementptr i8, ptr %i.fmg, i64 %i.fmo
  %i.fmp = zext nneg i32 %i.fmk to i64
  %i.fmq = shl nuw nsw i64 %i.fmp, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.fmq, i1 false), !tbaa !59
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.ju
  %i.fmr = load ptr, ptr %i.h, align 8, !tbaa !219
  %i.fms = getelementptr inbounds nuw i8, ptr %i.fmr, i64 48
  %i.fmt = load i32, ptr %i.fms, align 8, !tbaa !149 ; 2 uses
  %.not.i = icmp eq i32 %i.fmt, 0
  br i1 %.not.i, label %_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit, label %bb.jv

bb.jv:                                            ; preds = %._crit_edge.i
  %i.fmu = load i32, ptr %i.fkl, align 8, !tbaa !236
  %i.fmv = sext i32 %i.fmu to i64
  %i.fmw = getelementptr inbounds [8 x i8], ptr %i.fmg, i64 %i.fmv
  store double -1.000000e+00, ptr %i.fmw, align 8, !tbaa !59
  br label %_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit

_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit: ; preds = %._crit_edge.i, %bb.jv
  %i.fmx = load ptr, ptr %6, align 8, !tbaa !232  ; 4 uses
  %i.fmy = load i32, ptr %i.g, align 8, !tbaa !237 ; 2 uses
  %i.fmz = sext i32 %i.fmy to i64                 ; 3 uses
  %i.fna = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.fmz
  %i.fnb = load i32, ptr %i.fna, align 4, !tbaa !60
  %i.fnc = sext i32 %i.fnb to i64
  %i.fnd = getelementptr inbounds [8 x i8], ptr %i.fmx, i64 %i.fnc
  %i.fne = load ptr, ptr %i.fnd, align 8, !tbaa !221
  %i.fnf = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh8orgpivotE, i64 44), align 4, !tbaa !60
  %i.fng = sext i32 %i.fnf to i64
  %i.fnh = getelementptr inbounds [8 x i8], ptr %i.fmg, i64 %i.fng
  store ptr %i.fne, ptr %i.fnh, align 8, !tbaa !221
  %i.fni = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %i.fmz
  %i.fnj = load i32, ptr %i.fni, align 4, !tbaa !60
  %i.fnk = sext i32 %i.fnj to i64
  %i.fnl = getelementptr inbounds [8 x i8], ptr %i.fmx, i64 %i.fnk
  %i.fnm = load ptr, ptr %i.fnl, align 8, !tbaa !221
  %i.fnn = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh9destpivotE, i64 44), align 4, !tbaa !60
  %i.fno = sext i32 %i.fnn to i64
  %i.fnp = getelementptr inbounds [8 x i8], ptr %i.fmg, i64 %i.fno
  store ptr %i.fnm, ptr %i.fnp, align 8, !tbaa !221
  %i.fnq = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.fmz
  %i.fnr = load i32, ptr %i.fnq, align 4, !tbaa !60
  %i.fns = sext i32 %i.fnr to i64
  %i.fnt = getelementptr inbounds [8 x i8], ptr %i.fmx, i64 %i.fns
  %i.fnu = load ptr, ptr %i.fnt, align 8, !tbaa !221
  %i.fnv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh9apexpivotE, i64 44), align 4, !tbaa !60
  %i.fnw = sext i32 %i.fnv to i64
  %i.fnx = getelementptr inbounds [8 x i8], ptr %i.fmg, i64 %i.fnw
  store ptr %i.fnu, ptr %i.fnx, align 8, !tbaa !221
  %i.fny = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh9oppopivotE, i64 44), align 4, !tbaa !60
  %i.fnz = sext i32 %i.fny to i64
  %i.foa = getelementptr inbounds [8 x i8], ptr %i.fmg, i64 %i.fnz
  store ptr %1, ptr %i.foa, align 8, !tbaa !221
  br label %bb.jy

bb.jw:                                            ; preds = %bb.jt
  %i.fob = load i64, ptr %i.fkm, align 8, !tbaa !278
  %i.foc = add nsw i64 %i.fob, 1
  store i64 %i.foc, ptr %i.fkm, align 8, !tbaa !278
  %i.fod = load ptr, ptr %i.fki, align 8, !tbaa !231
  %i.foe = call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.fod) ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.foe, i8 0, i64 88, i1 false)
  %i.fof = load i32, ptr %i.fkg, align 4, !tbaa !233
  %i.fog = sext i32 %i.fof to i64
  %i.foh = getelementptr inbounds [4 x i8], ptr %i.foe, i64 %i.fog
  store i32 0, ptr %i.foh, align 4, !tbaa !60
  %i.foi = load i32, ptr %i.fkj, align 4, !tbaa !234 ; 3 uses
  %i.foj = icmp sgt i32 %i.foi, 0
  br i1 %i.foj, label %.lr.ph.i1023, label %._crit_edge.i1021

.lr.ph.i1023:                                     ; preds = %bb.jw
  %i.fok = load i32, ptr %i.fkk, align 8, !tbaa !235
  %i.fol = sext i32 %i.fok to i64
  %i.fom = shl nsw i64 %i.fol, 3
  %scevgep.i1024 = getelementptr i8, ptr %i.foe, i64 %i.fom
  %i.fon = zext nneg i32 %i.foi to i64
  %i.foo = shl nuw nsw i64 %i.fon, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i1024, i8 0, i64 %i.foo, i1 false), !tbaa !59
  br label %._crit_edge.i1021

._crit_edge.i1021:                                ; preds = %.lr.ph.i1023, %bb.jw
  %i.fop = load ptr, ptr %i.h, align 8, !tbaa !219
  %i.foq = getelementptr inbounds nuw i8, ptr %i.fop, i64 48
  %i.for = load i32, ptr %i.foq, align 8, !tbaa !149 ; 2 uses
  %.not.i1022 = icmp eq i32 %i.for, 0
  br i1 %.not.i1022, label %_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit1025, label %bb.jx

bb.jx:                                            ; preds = %._crit_edge.i1021
  %i.fos = load i32, ptr %i.fkl, align 8, !tbaa !236
  %i.fot = sext i32 %i.fos to i64
  %i.fou = getelementptr inbounds [8 x i8], ptr %i.foe, i64 %i.fot
  store double -1.000000e+00, ptr %i.fou, align 8, !tbaa !59
  br label %_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit1025

_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit1025: ; preds = %._crit_edge.i1021, %bb.jx
  %i.fov = load ptr, ptr %6, align 8, !tbaa !232  ; 3 uses
  %i.fow = load i32, ptr %i.g, align 8, !tbaa !237 ; 2 uses
  %i.fox = sext i32 %i.fow to i64                 ; 2 uses
  %i.foy = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %i.fox
  %i.foz = load i32, ptr %i.foy, align 4, !tbaa !60
  %i.fpa = sext i32 %i.foz to i64
  %i.fpb = getelementptr inbounds [8 x i8], ptr %i.fov, i64 %i.fpa
  %i.fpc = load ptr, ptr %i.fpb, align 8, !tbaa !221
  %i.fpd = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh8orgpivotE, i64 44), align 4, !tbaa !60
  %i.fpe = sext i32 %i.fpd to i64
  %i.fpf = getelementptr inbounds [8 x i8], ptr %i.foe, i64 %i.fpe
  store ptr %i.fpc, ptr %i.fpf, align 8, !tbaa !221
  %i.fpg = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.fox
  %i.fph = load i32, ptr %i.fpg, align 4, !tbaa !60
  %i.fpi = sext i32 %i.fph to i64
  %i.fpj = getelementptr inbounds [8 x i8], ptr %i.fov, i64 %i.fpi
  %i.fpk = load ptr, ptr %i.fpj, align 8, !tbaa !221
  %i.fpl = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh9destpivotE, i64 44), align 4, !tbaa !60
  %i.fpm = sext i32 %i.fpl to i64
  %i.fpn = getelementptr inbounds [8 x i8], ptr %i.foe, i64 %i.fpm
  store ptr %i.fpk, ptr %i.fpn, align 8, !tbaa !221
  %i.fpo = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh9apexpivotE, i64 44), align 4, !tbaa !60
  %i.fpp = sext i32 %i.fpo to i64
  %i.fpq = getelementptr inbounds [8 x i8], ptr %i.foe, i64 %i.fpp
  store ptr %1, ptr %i.fpq, align 8, !tbaa !221
  %i.fpr = load ptr, ptr %i.fkh, align 8, !tbaa !251
  %i.fps = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh9oppopivotE, i64 44), align 4, !tbaa !60
  %i.fpt = sext i32 %i.fps to i64
  %i.fpu = getelementptr inbounds [8 x i8], ptr %i.foe, i64 %i.fpt
  store ptr %i.fpr, ptr %i.fpu, align 8, !tbaa !221
  %i.fpv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh7esymtblE, i64 44), align 4, !tbaa !60
  br label %bb.jy

bb.jy:                                            ; preds = %_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit1025, %_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit
  %i.fpw = phi i32 [ %i.fow, %_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit1025 ], [ %i.fmy, %_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit ] ; 2 uses
  %i.fpx = phi ptr [ %i.fov, %_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit1025 ], [ %i.fmx, %_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit ] ; 2 uses
  %i.fpy = phi i32 [ %i.for, %_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit1025 ], [ %i.fmt, %_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit ]
  %i.fpz = phi i32 [ %i.foi, %_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit1025 ], [ %i.fmk, %_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit ] ; 3 uses
  %.sroa.23.1 = phi i32 [ %i.fpv, %_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit1025 ], [ 11, %_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit ] ; 3 uses
  %.sroa.01174.1 = phi ptr [ %i.foe, %_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit1025 ], [ %i.fmg, %_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit ] ; 11 uses
  %i.fqa = icmp sgt i32 %i.fpz, 0
  br i1 %i.fqa, label %.lr.ph1750, label %._crit_edge1751

.lr.ph1750:                                       ; preds = %bb.jy
  %.sroa.01174.12485 = ptrtoaddr ptr %.sroa.01174.1 to i64
  %i.fqb = load i32, ptr %i.fkk, align 8, !tbaa !235
  %i.fqc = sext i32 %i.fqb to i64                 ; 6 uses
  %wide.trip.count = zext nneg i32 %i.fpz to i64  ; 5 uses
  %min.iters.check = icmp ult i32 %i.fpz, 4
  %i.fqd = sub i64 %i.fls, %.sroa.01174.12485
  %diff.check = icmp ugt i64 %i.fqd, -32
  %or.cond2510 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond2510, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph1750
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fqe = add nsw i64 %index, %i.fqc             ; 2 uses
  %i.fqf = getelementptr inbounds [8 x i8], ptr %i.flt, i64 %i.fqe ; 2 uses
  %i.fqg = getelementptr inbounds nuw i8, ptr %i.fqf, i64 16
  %wide.load = load <2 x double>, ptr %i.fqf, align 8, !tbaa !59
  %wide.load2486 = load <2 x double>, ptr %i.fqg, align 8, !tbaa !59
  %i.fqh = getelementptr inbounds [8 x i8], ptr %.sroa.01174.1, i64 %i.fqe ; 2 uses
  %i.fqi = getelementptr inbounds nuw i8, ptr %i.fqh, i64 16
  store <2 x double> %wide.load, ptr %i.fqh, align 8, !tbaa !59
  store <2 x double> %wide.load2486, ptr %i.fqi, align 8, !tbaa !59
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fqj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fqj, label %middle.block, label %vector.body, !llvm.loop !656

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge1751, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph1750, %middle.block
  %indvars.iv2029.ph = phi i64 [ 0, %.lr.ph1750 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv2029.prol = phi i64 [ %indvars.iv.next2030.prol, %scalar.ph.prol ], [ %indvars.iv2029.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fqk = add nsw i64 %indvars.iv2029.prol, %i.fqc ; 2 uses
  %i.fql = getelementptr inbounds [8 x i8], ptr %i.flt, i64 %i.fqk
  %i.fqm = load double, ptr %i.fql, align 8, !tbaa !59
  %i.fqn = getelementptr inbounds [8 x i8], ptr %.sroa.01174.1, i64 %i.fqk
  store double %i.fqm, ptr %i.fqn, align 8, !tbaa !59
  %indvars.iv.next2030.prol = add nuw nsw i64 %indvars.iv2029.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !657

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv2029.unr = phi i64 [ %indvars.iv2029.ph, %scalar.ph.preheader ], [ %indvars.iv.next2030.prol, %scalar.ph.prol ]
  %i.fqo = sub nsw i64 %indvars.iv2029.ph, %wide.trip.count
  %i.fqp = icmp ugt i64 %i.fqo, -4
  br i1 %i.fqp, label %._crit_edge1751, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add nsw i64 1, %i.fqc
  %invariant.op2669 = add nsw i64 2, %i.fqc
  %invariant.op2671 = add nsw i64 3, %i.fqc
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv2029 = phi i64 [ %indvars.iv2029.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next2030.3, %scalar.ph ] ; 5 uses
  %i.fqq = add nsw i64 %indvars.iv2029, %i.fqc    ; 2 uses
  %i.fqr = getelementptr inbounds [8 x i8], ptr %i.flt, i64 %i.fqq
  %i.fqs = load double, ptr %i.fqr, align 8, !tbaa !59
  %i.fqt = getelementptr inbounds [8 x i8], ptr %.sroa.01174.1, i64 %i.fqq
  store double %i.fqs, ptr %i.fqt, align 8, !tbaa !59
  %.reass = add nsw i64 %indvars.iv2029, %invariant.op ; 2 uses
  %i.fqu = getelementptr inbounds [8 x i8], ptr %i.flt, i64 %.reass
  %i.fqv = load double, ptr %i.fqu, align 8, !tbaa !59
  %i.fqw = getelementptr inbounds [8 x i8], ptr %.sroa.01174.1, i64 %.reass
  store double %i.fqv, ptr %i.fqw, align 8, !tbaa !59
  %.reass2670 = add nsw i64 %indvars.iv2029, %invariant.op2669 ; 2 uses
  %i.fqx = getelementptr inbounds [8 x i8], ptr %i.flt, i64 %.reass2670
  %i.fqy = load double, ptr %i.fqx, align 8, !tbaa !59
  %i.fqz = getelementptr inbounds [8 x i8], ptr %.sroa.01174.1, i64 %.reass2670
  store double %i.fqy, ptr %i.fqz, align 8, !tbaa !59
  %.reass2672 = add nsw i64 %indvars.iv2029, %invariant.op2671 ; 2 uses
  %i.fra = getelementptr inbounds [8 x i8], ptr %i.flt, i64 %.reass2672
  %i.frb = load double, ptr %i.fra, align 8, !tbaa !59
  %i.frc = getelementptr inbounds [8 x i8], ptr %.sroa.01174.1, i64 %.reass2672
  store double %i.frb, ptr %i.frc, align 8, !tbaa !59
  %indvars.iv.next2030.3 = add nuw nsw i64 %indvars.iv2029, 4 ; 2 uses
  %exitcond2032.not.3 = icmp eq i64 %indvars.iv.next2030.3, %wide.trip.count
  br i1 %exitcond2032.not.3, label %._crit_edge1751, label %scalar.ph, !llvm.loop !658

._crit_edge1751:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.jy
  %.not946 = icmp eq i32 %i.fpy, 0
  br i1 %.not946, label %bb.ka, label %bb.jz

bb.jz:                                            ; preds = %._crit_edge1751
  %i.frd = load i32, ptr %i.fkl, align 8, !tbaa !236
  %i.fre = sext i32 %i.frd to i64                 ; 2 uses
  %i.frf = getelementptr inbounds [8 x i8], ptr %i.flt, i64 %i.fre
  %i.frg = load double, ptr %i.frf, align 8, !tbaa !59
  %i.frh = getelementptr inbounds [8 x i8], ptr %.sroa.01174.1, i64 %i.fre
  store double %i.frg, ptr %i.frh, align 8, !tbaa !59
  br label %bb.ka

bb.ka:                                            ; preds = %bb.jz, %._crit_edge1751
  %i.fri = sext i32 %.sroa.23.1 to i64            ; 2 uses
  %i.frj = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7bondtblE, i64 %i.fri
  %i.frk = sext i32 %i.fpw to i64                 ; 2 uses
  %i.frl = getelementptr inbounds [4 x i8], ptr %i.frj, i64 %i.frk
  %i.frm = load i32, ptr %i.frl, align 4, !tbaa !60
  %i.frn = ptrtoint ptr %i.fpx to i64
  %i.fro = sext i32 %i.frm to i64
  %i.frp = or i64 %i.fro, %i.frn
  %i.frq = inttoptr i64 %i.frp to ptr
  %i.frr = and i32 %.sroa.23.1, 3
  %i.frs = zext nneg i32 %i.frr to i64
  %i.frt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01174.1, i64 %i.frs
  store ptr %i.frq, ptr %i.frt, align 8, !tbaa !221
  %i.fru = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7bondtblE, i64 %i.frk
  %i.frv = getelementptr inbounds [4 x i8], ptr %i.fru, i64 %i.fri
  %i.frw = load i32, ptr %i.frv, align 4, !tbaa !60
  %i.frx = ptrtoint ptr %.sroa.01174.1 to i64
  %i.fry = sext i32 %i.frw to i64
  %i.frz = or i64 %i.fry, %i.frx
  %i.fsa = inttoptr i64 %i.frz to ptr
  %i.fsb = and i32 %i.fpw, 3
  %i.fsc = zext nneg i32 %i.fsb to i64
  %i.fsd = getelementptr inbounds nuw [8 x i8], ptr %i.fpx, i64 %i.fsc
  store ptr %i.fsa, ptr %i.fsd, align 8, !tbaa !221
  store ptr %i.flt, ptr %i.fld, align 8, !tbaa !232
  store i32 %i.fly, ptr %i.flf, align 8, !tbaa !237
  %indvars.iv.next2034 = add nuw nsw i64 %indvars.iv2033, 1 ; 2 uses
  %i.fse = load ptr, ptr %i.fkb, align 8, !tbaa !268 ; 3 uses
  %i.fsf = getelementptr inbounds nuw i8, ptr %i.fse, i64 32
  %i.fsg = load i64, ptr %i.fsf, align 8, !tbaa !101
  %i.fsh = icmp sgt i64 %i.fsg, %indvars.iv.next2034
  br i1 %i.fsh, label %bb.jt, label %._crit_edge1755, !llvm.loop !659

._crit_edge1755:                                  ; preds = %bb.ka, %.loopexit1450
  %i.fsi = phi ptr [ %i.fkc, %.loopexit1450 ], [ %i.fse, %bb.ka ] ; 2 uses
  %.sroa.23.0.lcssa = phi i32 [ 0, %.loopexit1450 ], [ %.sroa.23.1, %bb.ka ]
  %.sroa.01174.0.lcssa = phi ptr [ null, %.loopexit1450 ], [ %.sroa.01174.1, %bb.ka ] ; 2 uses
  %i.fsj = getelementptr inbounds nuw i8, ptr %0, i64 68592
  store ptr %.sroa.01174.0.lcssa, ptr %i.fsj, align 8, !tbaa !232
  %i.fsk = getelementptr inbounds nuw i8, ptr %0, i64 68600
  store i32 %.sroa.23.0.lcssa, ptr %i.fsk, align 8, !tbaa !237
  %i.fsl = getelementptr inbounds nuw i8, ptr %0, i64 68660 ; 6 uses
  %i.fsm = load i32, ptr %i.fsl, align 4, !tbaa !245 ; 2 uses
  %i.fsn = sext i32 %i.fsm to i64
  %i.fso = getelementptr inbounds [8 x i8], ptr %1, i64 %i.fsn
  store ptr %.sroa.01174.0.lcssa, ptr %i.fso, align 8, !tbaa !221
  %i.fsp = getelementptr inbounds nuw i8, ptr %0, i64 2800 ; 7 uses
  %i.fsq = load ptr, ptr %i.fsp, align 8, !tbaa !267
  %i.fsr = getelementptr inbounds nuw i8, ptr %i.fsq, i64 32
  store i64 0, ptr %i.fsr, align 8, !tbaa !101
  %i.fss = getelementptr inbounds nuw i8, ptr %i.fsi, i64 32
  %i.fst = load i64, ptr %i.fss, align 8, !tbaa !101
  %i.fsu = icmp sgt i64 %i.fst, 0
  br i1 %i.fsu, label %.lr.ph1764, label %._crit_edge1765

.lr.ph1764:                                       ; preds = %._crit_edge1755
  %i.fsv = getelementptr inbounds nuw i8, ptr %0, i64 68684 ; 3 uses
  %i.fsw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  br label %bb.kb

bb.kb:                                            ; preds = %.lr.ph1764, %bb.kn
  %i.fsx = phi i32 [ %i.fsm, %.lr.ph1764 ], [ %i.geo, %bb.kn ] ; 2 uses
  %indvars.iv2037 = phi i64 [ 0, %.lr.ph1764 ], [ %indvars.iv.next2038, %bb.kn ] ; 2 uses
  %i.fsy = phi ptr [ %i.fsi, %.lr.ph1764 ], [ %i.gew, %bb.kn ] ; 4 uses
  %i.fsz = getelementptr inbounds nuw i8, ptr %i.fsy, i64 24
  %i.fta = load ptr, ptr %i.fsz, align 8, !tbaa !105
  %i.ftb = getelementptr inbounds nuw i8, ptr %i.fsy, i64 8
  %i.ftc = load i32, ptr %i.ftb, align 8, !tbaa !104
  %i.ftd = trunc nuw nsw i64 %indvars.iv2037 to i32 ; 2 uses
  %i.fte = lshr i32 %i.ftd, %i.ftc
  %i.ftf = zext nneg i32 %i.fte to i64
  %i.ftg = getelementptr inbounds nuw [8 x i8], ptr %i.fta, i64 %i.ftf
  %i.fth = load ptr, ptr %i.ftg, align 8, !tbaa !54
  %i.fti = getelementptr inbounds nuw i8, ptr %i.fsy, i64 12
  %i.ftj = load i32, ptr %i.fti, align 4, !tbaa !111
  %i.ftk = and i32 %i.ftj, %i.ftd
  %i.ftl = load i32, ptr %i.fsy, align 8, !tbaa !103
  %i.ftm = mul nsw i32 %i.ftk, %i.ftl
  %i.ftn = sext i32 %i.ftm to i64
  %i.fto = getelementptr inbounds i8, ptr %i.fth, i64 %i.ftn ; 3 uses
  %i.ftp = load ptr, ptr %i.fto, align 8, !tbaa !232 ; 4 uses
  %i.ftq = getelementptr inbounds nuw i8, ptr %i.fto, i64 8 ; 2 uses
  %i.ftr = load i32, ptr %i.ftq, align 8, !tbaa !237 ; 3 uses
  %i.fts = and i32 %i.ftr, 3
  %i.ftt = zext nneg i32 %i.fts to i64
  %i.ftu = getelementptr inbounds nuw [8 x i8], ptr %i.ftp, i64 %i.ftt
  %i.ftv = load ptr, ptr %i.ftu, align 8, !tbaa !221
  %i.ftw = ptrtoint ptr %i.ftv to i64             ; 2 uses
  %i.ftx = and i64 %i.ftw, -16
  %i.fty = inttoptr i64 %i.ftx to ptr
  %i.ftz = sext i32 %i.ftr to i64                 ; 2 uses
  %i.fua = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7fsymtblE, i64 %i.ftz
  %i.fub = and i64 %i.ftw, 15
  %i.fuc = getelementptr inbounds nuw [4 x i8], ptr %i.fua, i64 %i.fub
  %i.fud = load i32, ptr %i.fuc, align 4, !tbaa !60 ; 2 uses
  %i.fue = and i32 %i.fud, 3
  %i.fuf = zext nneg i32 %i.fue to i64
  %i.fug = getelementptr inbounds nuw [8 x i8], ptr %i.fty, i64 %i.fuf
  %i.fuh = load ptr, ptr %i.fug, align 8, !tbaa !221
  %i.fui = ptrtoint ptr %i.fuh to i64             ; 2 uses
  %i.fuj = and i64 %i.fui, -16                    ; 4 uses
  %i.fuk = inttoptr i64 %i.fuj to ptr             ; 13 uses
  %i.ful = sext i32 %i.fud to i64
  %i.fum = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7fsymtblE, i64 %i.ful
  %i.fun = and i64 %i.fui, 15
  %i.fuo = getelementptr inbounds nuw [4 x i8], ptr %i.fum, i64 %i.fun
  %.sroa.23.21758 = load i32, ptr %i.fuo, align 4, !tbaa !60
  store ptr %i.fuk, ptr %6, align 8, !tbaa !232
  %i.fup = sext i32 %.sroa.23.21758 to i64        ; 3 uses
  %i.fuq = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.fup
  %i.fur = load i32, ptr %i.fuq, align 4, !tbaa !60 ; 3 uses
  store i32 %i.fur, ptr %i.g, align 8, !tbaa !237
  %i.fus = and i32 %i.fur, 3
  %i.fut = zext nneg i32 %i.fus to i64
  %i.fuu = getelementptr inbounds nuw [8 x i8], ptr %i.fuk, i64 %i.fut ; 2 uses
  %i.fuv = load ptr, ptr %i.fuu, align 8, !tbaa !221
  %i.fuw = icmp eq ptr %i.fuv, null
  br i1 %i.fuw, label %.preheader1447, label %bb.kf

.preheader1447:                                   ; preds = %bb.kb
  %i.fux = load i32, ptr %i.fsv, align 4, !tbaa !233
  %i.fuy = sext i32 %i.fux to i64
  br label %bb.kc

bb.kc:                                            ; preds = %.preheader1447, %bb.kc
  %.sroa.01256.7 = phi ptr [ %i.fvi, %bb.kc ], [ %i.ftp, %.preheader1447 ]
  %.sroa.87.6 = phi i32 [ %i.fvl, %bb.kc ], [ %i.ftr, %.preheader1447 ]
  %i.fuz = sext i32 %.sroa.87.6 to i64            ; 2 uses
  %i.fva = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.fuz
  %i.fvb = load i32, ptr %i.fva, align 4, !tbaa !60
  %i.fvc = sext i32 %i.fvb to i64
  %i.fvd = getelementptr inbounds [8 x i8], ptr %.sroa.01256.7, i64 %i.fvc
  %i.fve = load ptr, ptr %i.fvd, align 8, !tbaa !221
  %i.fvf = ptrtoint ptr %i.fve to i64             ; 2 uses
  %i.fvg = and i64 %i.fvf, 15
  %i.fvh = and i64 %i.fvf, -16
  %i.fvi = inttoptr i64 %i.fvh to ptr             ; 3 uses
  %i.fvj = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.fuz
  %i.fvk = getelementptr inbounds nuw [4 x i8], ptr %i.fvj, i64 %i.fvg
  %i.fvl = load i32, ptr %i.fvk, align 4, !tbaa !60 ; 3 uses
  %i.fvm = getelementptr inbounds [4 x i8], ptr %i.fvi, i64 %i.fuy
  %i.fvn = load i32, ptr %i.fvm, align 4, !tbaa !60
  %i.fvo = trunc i32 %i.fvn to i1
  br i1 %i.fvo, label %bb.kc, label %bb.kd, !llvm.loop !660

bb.kd:                                            ; preds = %bb.kc
  %i.fvp = and i32 %i.fvl, 3
  %i.fvq = zext nneg i32 %i.fvp to i64
  %i.fvr = getelementptr inbounds nuw [8 x i8], ptr %i.fvi, i64 %i.fvq
  %i.fvs = load ptr, ptr %i.fvr, align 8, !tbaa !221
  %i.fvt = ptrtoint ptr %i.fvs to i64             ; 2 uses
  %i.fvu = and i64 %i.fvt, -16                    ; 2 uses
  %i.fvv = inttoptr i64 %i.fvu to ptr
  %i.fvw = sext i32 %i.fvl to i64
  %i.fvx = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7fsymtblE, i64 %i.fvw
  %i.fvy = and i64 %i.fvt, 15
  %i.fvz = getelementptr inbounds nuw [4 x i8], ptr %i.fvx, i64 %i.fvy
  %i.fwa = load i32, ptr %i.fvz, align 4, !tbaa !60
  %i.fwb = sext i32 %i.fwa to i64
  %i.fwc = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.fwb
  %i.fwd = load i32, ptr %i.fwc, align 4, !tbaa !60 ; 2 uses
  %i.fwe = sext i32 %i.fur to i64                 ; 2 uses
  %i.fwf = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7bondtblE, i64 %i.fwe
  %i.fwg = sext i32 %i.fwd to i64                 ; 2 uses
  %i.fwh = getelementptr inbounds [4 x i8], ptr %i.fwf, i64 %i.fwg
  %i.fwi = load i32, ptr %i.fwh, align 4, !tbaa !60
  %i.fwj = sext i32 %i.fwi to i64
  %i.fwk = or i64 %i.fvu, %i.fwj
  %i.fwl = inttoptr i64 %i.fwk to ptr
  store ptr %i.fwl, ptr %i.fuu, align 8, !tbaa !221
  %i.fwm = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7bondtblE, i64 %i.fwg
  %i.fwn = getelementptr inbounds [4 x i8], ptr %i.fwm, i64 %i.fwe
  %i.fwo = load i32, ptr %i.fwn, align 4, !tbaa !60
  %i.fwp = sext i32 %i.fwo to i64
  %i.fwq = or i64 %i.fuj, %i.fwp
  %i.fwr = inttoptr i64 %i.fwq to ptr
  %i.fws = and i32 %i.fwd, 3
  %i.fwt = zext nneg i32 %i.fws to i64
end_hunk_2
begin_hunk_3_@_ZN10tetgenmesh9highorderEv:bb.a
  %.not17.i = icmp eq i32 %i.hv, 0
  br i1 %.not17.i, label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge.i
  %i.hw = getelementptr i8, ptr %i.hr, i64 16
  store ptr null, ptr %i.hw, align 8, !tbaa !221
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 44
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !144
  %.not18.i = icmp eq i32 %i.hy, 0
  br i1 %.not18.i, label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hz = load ptr, ptr %i.ej, align 8, !tbaa !246
  %.not19.i = icmp eq ptr %i.hz, null
  br i1 %.not19.i, label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ia = getelementptr i8, ptr %i.hr, i64 24
  store ptr null, ptr %i.ia, align 8, !tbaa !221
  br label %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit

_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit:  ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ad
  %i.ib = load ptr, ptr %i.n, align 8, !tbaa !220 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 64
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !203
  %i.ie = trunc i64 %i.id to i32
  %i.if = load ptr, ptr %0, align 8, !tbaa !222   ; 2 uses
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !56
  %.not20.i = icmp eq i32 %i.ig, 0
  %.neg.i = sext i1 %.not20.i to i32
  %i.ih = add i32 %.neg.i, %i.ie
  %i.ii = load i32, ptr %i.ek, align 8, !tbaa !224
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds [4 x i8], ptr %.0.i69, i64 %i.ij
  store i32 %i.ih, ptr %i.ik, align 4, !tbaa !60
  %i.il = load i32, ptr %i.ek, align 8, !tbaa !224
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr [4 x i8], ptr %.0.i69, i64 %i.im
  %i.io = getelementptr i8, ptr %i.in, i64 4
  store i32 0, ptr %i.io, align 4, !tbaa !60
  %i.ip = load i32, ptr %i.ek, align 8, !tbaa !224
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr [4 x i8], ptr %.0.i69, i64 %i.iq
  %i.is = getelementptr i8, ptr %i.ir, i64 4      ; 2 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !60
  %i.iu = and i32 %i.it, 255
  %i.iv = or disjoint i32 %i.iu, 1792
  store i32 %i.iv, ptr %i.is, align 4, !tbaa !60
  %i.iw = load i32, ptr %i.ef, align 8, !tbaa !242 ; 2 uses
  %i.ix = icmp sgt i32 %i.iw, -3
  br i1 %i.ix, label %.lr.ph99.preheader, label %.preheader90

.lr.ph99.preheader:                               ; preds = %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit
  %i.iy = add i32 %i.iw, 2                        ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.iy, i32 0) ; 2 uses
  %i.iz = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.iz to i64        ; 3 uses
  %min.iters.check255 = icmp slt i32 %i.iy, 3
  br i1 %min.iters.check255, label %.lr.ph99.preheader268, label %vector.memcheck250

vector.memcheck250:                               ; preds = %.lr.ph99.preheader
  %i.ja = sub i64 %i.fb, %.0.i69245
  %diff.check251 = icmp ugt i64 %i.ja, -32
  %i.jb = sub i64 %i.fh, %.0.i69245
  %diff.check252 = icmp ugt i64 %i.jb, -32
  %conflict.rdx253 = or i1 %diff.check251, %diff.check252
  br i1 %conflict.rdx253, label %.lr.ph99.preheader268, label %vector.ph256

vector.ph256:                                     ; preds = %vector.memcheck250
  %n.vec257 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  br label %vector.body258

vector.body258:                                   ; preds = %vector.body258, %vector.ph256
  %index259 = phi i64 [ 0, %vector.ph256 ], [ %index.next264, %vector.body258 ] ; 4 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %index259 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %wide.load260 = load <2 x double>, ptr %i.jc, align 8, !tbaa !59
  %wide.load261 = load <2 x double>, ptr %i.jd, align 8, !tbaa !59
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %index259 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %wide.load262 = load <2 x double>, ptr %i.je, align 8, !tbaa !59
  %wide.load263 = load <2 x double>, ptr %i.jf, align 8, !tbaa !59
  %i.jg = fadd <2 x double> %wide.load260, %wide.load262
  %i.jh = fadd <2 x double> %wide.load261, %wide.load263
  %i.ji = fmul <2 x double> %i.jg, splat (double 5.000000e-01)
  %i.jj = fmul <2 x double> %i.jh, splat (double 5.000000e-01)
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %.0.i69, i64 %index259 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  store <2 x double> %i.ji, ptr %i.jk, align 8, !tbaa !59
  store <2 x double> %i.jj, ptr %i.jl, align 8, !tbaa !59
  %index.next264 = add nuw i64 %index259, 4       ; 2 uses
  %i.jm = icmp eq i64 %index.next264, %n.vec257
  br i1 %i.jm, label %middle.block265, label %vector.body258, !llvm.loop !1405

middle.block265:                                  ; preds = %vector.body258
  %cmp.n266 = icmp eq i64 %n.vec257, %wide.trip.count
  br i1 %cmp.n266, label %.preheader90, label %.lr.ph99.preheader268

.lr.ph99.preheader268:                            ; preds = %vector.memcheck250, %.lr.ph99.preheader, %middle.block265
  %indvars.iv112.ph = phi i64 [ 0, %vector.memcheck250 ], [ 0, %.lr.ph99.preheader ], [ %n.vec257, %middle.block265 ] ; 6 uses
  %i.jn = zext nneg i32 %smax to i64              ; 2 uses
  %i.jo = and i64 %i.jn, 1
  %lcmp.mod.not.not = icmp eq i64 %i.jo, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph99.prol, label %.lr.ph99.prol.loopexit

.lr.ph99.prol:                                    ; preds = %.lr.ph99.preheader268
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv112.ph
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !59
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv112.ph
  %i.js = load double, ptr %i.jr, align 8, !tbaa !59
  %i.jt = fadd double %i.jq, %i.js
  %i.ju = fmul double %i.jt, 5.000000e-01
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %.0.i69, i64 %indvars.iv112.ph
  store double %i.ju, ptr %i.jv, align 8, !tbaa !59
  %indvars.iv.next113.prol = or disjoint i64 %indvars.iv112.ph, 1
  br label %.lr.ph99.prol.loopexit

.lr.ph99.prol.loopexit:                           ; preds = %.lr.ph99.prol, %.lr.ph99.preheader268
  %indvars.iv112.unr = phi i64 [ %indvars.iv112.ph, %.lr.ph99.preheader268 ], [ %indvars.iv.next113.prol, %.lr.ph99.prol ]
  %i.jw = icmp eq i64 %indvars.iv112.ph, %i.jn
  br i1 %i.jw, label %.preheader90, label %.lr.ph99

.preheader90:                                     ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99, %middle.block265, %_ZN10tetgenmesh9makepointEPPdNS_8verttypeE.exit
  %i.jx = getelementptr inbounds nuw i8, ptr %i.if, i64 72
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !77 ; 3 uses
  %i.jz = icmp sgt i32 %i.jy, 0
  br i1 %i.jz, label %.lr.ph101, label %.preheader.preheader

.lr.ph101:                                        ; preds = %.preheader90
  %i.ka = load i32, ptr %i.eh, align 4, !tbaa !244
  %i.kb = sext i32 %i.ka to i64                   ; 4 uses
  %wide.trip.count118 = zext nneg i32 %i.jy to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.jy, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph101
  %i.kc = sub i64 %i.fb, %.0.i69245
  %diff.check = icmp ugt i64 %i.kc, -32
  %i.kd = sub i64 %i.fh, %.0.i69245
  %diff.check246 = icmp ugt i64 %i.kd, -32
  %conflict.rdx = or i1 %diff.check, %diff.check246
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count118, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ke = add nsw i64 %index, %i.kb               ; 3 uses
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.ke ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %wide.load = load <2 x double>, ptr %i.kf, align 8, !tbaa !59
  %wide.load247 = load <2 x double>, ptr %i.kg, align 8, !tbaa !59
  %i.kh = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %i.ke ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %wide.load248 = load <2 x double>, ptr %i.kh, align 8, !tbaa !59
  %wide.load249 = load <2 x double>, ptr %i.ki, align 8, !tbaa !59
  %i.kj = fadd <2 x double> %wide.load, %wide.load248
  %i.kk = fadd <2 x double> %wide.load247, %wide.load249
  %i.kl = fmul <2 x double> %i.kj, splat (double 5.000000e-01)
  %i.km = fmul <2 x double> %i.kk, splat (double 5.000000e-01)
  %i.kn = getelementptr inbounds [8 x i8], ptr %.0.i69, i64 %i.ke ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  store <2 x double> %i.kl, ptr %i.kn, align 8, !tbaa !59
  store <2 x double> %i.km, ptr %i.ko, align 8, !tbaa !59
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kp = icmp eq i64 %index.next, %n.vec
  br i1 %i.kp, label %middle.block, label %vector.body, !llvm.loop !1406

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count118
  br i1 %cmp.n, label %.preheader.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph101, %middle.block
  %indvars.iv115.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph101 ], [ %n.vec, %middle.block ] ; 4 uses
  %xtraiter296 = and i64 %wide.trip.count118, 1
  %lcmp.mod297.not = icmp eq i64 %xtraiter296, 0
  br i1 %lcmp.mod297.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.kq = add nsw i64 %indvars.iv115.ph, %i.kb    ; 3 uses
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.kq
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !59
  %i.kt = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %i.kq
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !59
  %i.kv = fadd double %i.ks, %i.ku
  %i.kw = fmul double %i.kv, 5.000000e-01
  %i.kx = getelementptr inbounds [8 x i8], ptr %.0.i69, i64 %i.kq
  store double %i.kw, ptr %i.kx, align 8, !tbaa !59
  %indvars.iv.next116.prol = or disjoint i64 %indvars.iv115.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv115.unr = phi i64 [ %indvars.iv115.ph, %scalar.ph.preheader ], [ %indvars.iv.next116.prol, %scalar.ph.prol ]
  %i.ky = add nsw i64 %wide.trip.count118, -1
  %i.kz = icmp eq i64 %indvars.iv115.ph, %i.ky
  br i1 %i.kz, label %.preheader.preheader, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add nsw i64 1, %i.kb
  br label %scalar.ph

.lr.ph99:                                         ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99
  %indvars.iv112 = phi i64 [ %indvars.iv.next113.1, %.lr.ph99 ], [ %indvars.iv112.unr, %.lr.ph99.prol.loopexit ] ; 5 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv112
  %i.lb = load double, ptr %i.la, align 8, !tbaa !59
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv112
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !59
  %i.le = fadd double %i.lb, %i.ld
  %i.lf = fmul double %i.le, 5.000000e-01
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %.0.i69, i64 %indvars.iv112
  store double %i.lf, ptr %i.lg, align 8, !tbaa !59
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 3 uses
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.next113
  %i.li = load double, ptr %i.lh, align 8, !tbaa !59
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.next113
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !59
  %i.ll = fadd double %i.li, %i.lk
  %i.lm = fmul double %i.ll, 5.000000e-01
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %.0.i69, i64 %indvars.iv.next113
  store double %i.lm, ptr %i.ln, align 8, !tbaa !59
  %indvars.iv.next113.1 = add nuw nsw i64 %indvars.iv112, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next113.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.preheader90, label %.lr.ph99, !llvm.loop !1407

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv115 = phi i64 [ %indvars.iv115.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next116.1, %scalar.ph ] ; 3 uses
  %i.lo = add nsw i64 %indvars.iv115, %i.kb       ; 3 uses
  %i.lp = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.lo
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !59
  %i.lr = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %i.lo
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !59
  %i.lt = fadd double %i.lq, %i.ls
  %i.lu = fmul double %i.lt, 5.000000e-01
  %i.lv = getelementptr inbounds [8 x i8], ptr %.0.i69, i64 %i.lo
  store double %i.lu, ptr %i.lv, align 8, !tbaa !59
  %.reass = add nsw i64 %indvars.iv115, %invariant.op ; 3 uses
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %.reass
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !59
  %i.ly = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %.reass
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !59
  %i.ma = fadd double %i.lx, %i.lz
  %i.mb = fmul double %i.ma, 5.000000e-01
  %i.mc = getelementptr inbounds [8 x i8], ptr %.0.i69, i64 %.reass
  store double %i.mb, ptr %i.mc, align 8, !tbaa !59
  %indvars.iv.next116.1 = add nuw nsw i64 %indvars.iv115, 2 ; 2 uses
  %exitcond119.not.1 = icmp eq i64 %indvars.iv.next116.1, %wide.trip.count118
  br i1 %exitcond119.not.1, label %.preheader.preheader, label %scalar.ph, !llvm.loop !1408

.preheader.preheader:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader90
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.af
  %.sroa.9.0 = phi i32 [ %i.mz, %bb.af ], [ %i.eu, %.preheader.preheader ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.mw, %bb.af ], [ %storemerge39104, %.preheader.preheader ] ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 56
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !221
  %i.mf = load ptr, ptr %i.el, align 8, !tbaa !251
  %i.mg = icmp eq ptr %i.me, %i.mf
  br i1 %i.mg, label %._crit_edge134, label %bb.ae

._crit_edge134:                                   ; preds = %.preheader
  %.pre135 = sext i32 %.sroa.9.0 to i64
  br label %bb.af

bb.ae:                                            ; preds = %.preheader
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 88
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !221
  %i.mj = sext i32 %.sroa.9.0 to i64              ; 2 uses
  %i.mk = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8ver2edgeE, i64 %i.mj
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !60
  %i.mm = sext i32 %i.ml to i64
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.mi, i64 %i.mm
  store ptr %.0.i69, ptr %i.mn, align 8, !tbaa !113
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge134, %bb.ae
  %.pre-phi136 = phi i64 [ %.pre135, %._crit_edge134 ], [ %i.mj, %bb.ae ] ; 2 uses
  %i.mo = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %.pre-phi136
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !60
  %i.mq = sext i32 %i.mp to i64
  %i.mr = getelementptr inbounds [8 x i8], ptr %.sroa.0.0, i64 %i.mq
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !221
  %i.mt = ptrtoint ptr %i.ms to i64               ; 2 uses
  %i.mu = and i64 %i.mt, 15
  %i.mv = and i64 %i.mt, -16
  %i.mw = inttoptr i64 %i.mv to ptr               ; 2 uses
  %i.mx = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %.pre-phi136
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %i.mu
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !60
  %i.na = icmp eq ptr %storemerge39104, %i.mw
  br i1 %i.na, label %.loopexit, label %.preheader, !llvm.loop !1409

.loopexit:                                        ; preds = %bb.af, %bb.q
  %i.nb = phi ptr [ %i.ep, %bb.q ], [ %i.ib, %bb.af ] ; 2 uses
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next121, 6
  br i1 %exitcond123.not, label %bb.ag, label %bb.q, !llvm.loop !1410

bb.ag:                                            ; preds = %.loopexit
  %i.nc = load ptr, ptr %i.e, align 8, !tbaa !231 ; 7 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 40 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !199 ; 2 uses
  %.promoted.i59 = load ptr, ptr %i.nd, align 8, !tbaa !205 ; 2 uses
  %i.ng = icmp eq ptr %.promoted.i59, %i.nf
  br i1 %i.ng, label %._crit_edge106, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %bb.ag
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nc, i64 84 ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nc, i64 32 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nc, i64 48
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nc, i64 60
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nc, i64 52
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !195
  %i.nn = sext i32 %i.nm to i64
  %i.no = load ptr, ptr %i.el, align 8
  %.promoted10.i61 = load i32, ptr %i.nh, align 4, !tbaa !206
  br label %bb.ah

bb.ah:                                            ; preds = %.critedge.backedge.i66, %.lr.ph.i60
  %i.np = phi i32 [ %.promoted10.i61, %.lr.ph.i60 ], [ %i.oi, %.critedge.backedge.i66 ] ; 2 uses
  %i.nq = phi ptr [ %.promoted.i59, %.lr.ph.i60 ], [ %i.oh, %.critedge.backedge.i66 ]
  %i.nr = icmp eq i32 %i.np, 0
  br i1 %i.nr, label %bb.ai, label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i62

bb.ai:                                            ; preds = %bb.ah
  %i.ns = load ptr, ptr %i.ni, align 8, !tbaa !204
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !112 ; 2 uses
  store ptr %i.nt, ptr %i.ni, align 8, !tbaa !204
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.nv = ptrtoint ptr %i.nu to i64               ; 2 uses
  %i.nw = load i32, ptr %i.nj, align 8, !tbaa !193
  %i.nx = sext i32 %i.nw to i64                   ; 2 uses
  %i.ny = add i64 %i.nx, %i.nv
  %i.nz = urem i64 %i.nv, %i.nx
  %i.oa = sub i64 %i.ny, %i.nz
  %i.ob = inttoptr i64 %i.oa to ptr
  %i.oc = load i32, ptr %i.nk, align 4, !tbaa !196
  br label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i62

_ZN10tetgenmesh10memorypool8traverseEv.exit.i62:  ; preds = %bb.ai, %bb.ah
  %i.od = phi i32 [ %i.oc, %bb.ai ], [ %i.np, %bb.ah ]
  %i.oe = phi ptr [ %i.ob, %bb.ai ], [ %i.nq, %bb.ah ] ; 5 uses
  %i.of = ptrtoint ptr %i.oe to i64
  %i.og = add i64 %i.of, %i.nn
  %i.oh = inttoptr i64 %i.og to ptr               ; 3 uses
  store ptr %i.oh, ptr %i.nd, align 8, !tbaa !205
  %i.oi = add nsw i32 %i.od, -1                   ; 3 uses
  %i.oj = icmp eq ptr %i.oe, null
  br i1 %i.oj, label %_ZN10tetgenmesh19tetrahedrontraverseEv.exit67.thread186, label %bb.aj

bb.aj:                                            ; preds = %_ZN10tetgenmesh10memorypool8traverseEv.exit.i62
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oe, i64 32
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !221
  %i.om = icmp eq ptr %i.ol, null
  br i1 %i.om, label %.critedge.backedge.i66, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.on = getelementptr inbounds nuw i8, ptr %i.oe, i64 56
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !221
  %i.op = icmp eq ptr %i.oo, %i.no
  br i1 %i.op, label %.critedge.backedge.i66, label %_ZN10tetgenmesh19tetrahedrontraverseEv.exit67

.critedge.backedge.i66:                           ; preds = %bb.ak, %bb.aj
  %i.oq = icmp eq ptr %i.nf, %i.oh
  br i1 %i.oq, label %_ZN10tetgenmesh19tetrahedrontraverseEv.exit67.thread186, label %bb.ah, !llvm.loop !8

_ZN10tetgenmesh19tetrahedrontraverseEv.exit67.thread186: ; preds = %.critedge.backedge.i66, %_ZN10tetgenmesh10memorypool8traverseEv.exit.i62
  store i32 %i.oi, ptr %i.nh, align 4, !tbaa !206
  br label %._crit_edge106

_ZN10tetgenmesh19tetrahedrontraverseEv.exit67:    ; preds = %bb.ak
  store i32 %i.oi, ptr %i.nh, align 4, !tbaa !206
  br label %bb.p, !llvm.loop !1411

._crit_edge106:                                   ; preds = %bb.ag, %._crit_edge.thread, %_ZN10tetgenmesh19tetrahedrontraverseEv.exit67.thread186, %_ZN10tetgenmesh19tetrahedrontraverseEv.exit58.thread181
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #42
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN10tetgenmesh13indexelementsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(69984) %0) local_unnamed_addr #25 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !219  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load i32, ptr %i.c, align 8, !tbaa !159
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !222
  %i.f = load i32, ptr %i.e, align 8, !tbaa !56
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !231  ; 9 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !197  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !204
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !193
  %i.p = sext i32 %i.o to i64                     ; 4 uses
  %i.q = add i64 %i.p, %i.m
  %i.r = urem i64 %i.m, %i.p
  %i.s = sub i64 %i.q, %i.r
  %i.t = inttoptr i64 %i.s to ptr                 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 3 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !205
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 60 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !196  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 84 ; 5 uses
  store i32 %i.w, ptr %i.x, align 4, !tbaa !206
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !199  ; 4 uses
  %i.aa = icmp eq ptr %i.z, %i.t
  br i1 %i.aa, label %._crit_edge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !195
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 68584
  %i.af = load ptr, ptr %i.ae, align 8
  br label %bb.d

bb.d:                                             ; preds = %.critedge.backedge.i, %.lr.ph.i
  %i.ag = phi ptr [ %i.j, %.lr.ph.i ], [ %i.ar, %.critedge.backedge.i ] ; 2 uses
  %i.ah = phi i32 [ %i.w, %.lr.ph.i ], [ %i.ax, %.critedge.backedge.i ] ; 2 uses
  %i.ai = phi ptr [ %i.t, %.lr.ph.i ], [ %i.aw, %.critedge.backedge.i ]
  %i.aj = icmp eq i32 %i.ah, 0
  br i1 %i.aj, label %bb.e, label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i
end_hunk_3
