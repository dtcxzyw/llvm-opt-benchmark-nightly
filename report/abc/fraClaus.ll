Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/fraClaus?download=true
inline.NumInlined: 241
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 47
begin_hunk_0_@Fra_ClausProcessClausesCut:bb.a
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.bj
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !41
  %i.hh = sub nuw nsw i64 13, %indvars.iv65.4
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hh
  store i32 %i.hg, ptr %i.hi, align 4, !tbaa !41
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv65.4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !52
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.bj
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !41
  %i.hp = sub nuw nsw i64 12, %indvars.iv65.4
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hp
  store i32 %i.ho, ptr %i.hq, align 16, !tbaa !41
  %indvars.iv.next66.4.3 = add nuw nsw i64 %indvars.iv65.4, 4 ; 2 uses
  %niter151.next.3 = add i64 %niter151, 4
  %niter151.ncmp.3 = icmp eq i64 %niter151, 0
  br i1 %niter151.ncmp.3, label %._crit_edge51.4.preheader.unr-lcssa, label %._crit_edge51.3, !llvm.loop !53

._crit_edge51.4.preheader.unr-lcssa:              ; preds = %._crit_edge51.3
  %lcmp.mod148.not = icmp eq i64 %xtraiter146, 0
  br i1 %lcmp.mod148.not, label %._crit_edge51.4.preheader, label %._crit_edge51.3.epil.preheader

._crit_edge51.3.epil.preheader:                   ; preds = %._crit_edge51.4.preheader.unr-lcssa, %._crit_edge51.3.preheader
  %indvars.iv65.4.epil.init = phi i64 [ 0, %._crit_edge51.3.preheader ], [ %indvars.iv.next66.4.3, %._crit_edge51.4.preheader.unr-lcssa ]
  %lcmp.mod149 = icmp ne i64 %xtraiter146, 0
  tail call void @llvm.assume(i1 %lcmp.mod149)
  br label %._crit_edge51.3.epil

._crit_edge51.3.epil:                             ; preds = %._crit_edge51.3.epil, %._crit_edge51.3.epil.preheader
  %indvars.iv65.4.epil = phi i64 [ %indvars.iv.next66.4.epil, %._crit_edge51.3.epil ], [ %indvars.iv65.4.epil.init, %._crit_edge51.3.epil.preheader ] ; 3 uses
  %epil.iter147 = phi i64 [ %epil.iter147.next, %._crit_edge51.3.epil ], [ 0, %._crit_edge51.3.epil.preheader ]
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv65.4.epil
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !52
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.bj
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !41
  %i.hw = sub nuw nsw i64 15, %indvars.iv65.4.epil
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hw
  store i32 %i.hv, ptr %i.hx, align 4, !tbaa !41
  %indvars.iv.next66.4.epil = add nuw nsw i64 %indvars.iv65.4.epil, 1
  %epil.iter147.next = add i64 %epil.iter147, 1   ; 2 uses
  %epil.iter147.cmp.not = icmp eq i64 %epil.iter147.next, %xtraiter146
  br i1 %epil.iter147.cmp.not, label %._crit_edge51.4.preheader, label %._crit_edge51.3.epil, !llvm.loop !58

._crit_edge51.4.preheader:                        ; preds = %._crit_edge51.3.epil, %._crit_edge51.4.preheader.unr-lcssa
  %xtraiter152 = and i64 %wide.trip.count68, 3    ; 3 uses
  %i.hy = icmp sgt i32 %i.bh, -1
  br i1 %i.hy, label %._crit_edge51.4.epil.preheader, label %._crit_edge51.4

._crit_edge51.4:                                  ; preds = %._crit_edge51.4.preheader, %._crit_edge51.4
  %indvars.iv65.5 = phi i64 [ %indvars.iv.next66.5.3, %._crit_edge51.4 ], [ 0, %._crit_edge51.4.preheader ] ; 9 uses
  %niter157 = phi i64 [ %niter157.next.3, %._crit_edge51.4 ], [ 0, %._crit_edge51.4.preheader ] ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv65.5
  %i.ia = load ptr, ptr %i.hz, align 16, !tbaa !52
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.bj
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 20
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !41
  %i.ie = sub nuw nsw i64 11, %indvars.iv65.5
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ie
  store i32 %i.id, ptr %i.if, align 4, !tbaa !41
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv65.5
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !52
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.bj
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 20
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !41
  %i.im = sub nuw nsw i64 10, %indvars.iv65.5
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.im
  store i32 %i.il, ptr %i.in, align 8, !tbaa !41
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv65.5
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.iq = load ptr, ptr %i.ip, align 16, !tbaa !52
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.bj
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 20
  %i.it = load i32, ptr %i.is, align 4, !tbaa !41
  %i.iu = sub nuw nsw i64 9, %indvars.iv65.5
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.iu
  store i32 %i.it, ptr %i.iv, align 4, !tbaa !41
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv65.5
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !52
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %i.bj
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 20
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !41
  %i.jc = sub nuw nsw i64 8, %indvars.iv65.5
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jc
  store i32 %i.jb, ptr %i.jd, align 16, !tbaa !41
  %indvars.iv.next66.5.3 = add nuw nsw i64 %indvars.iv65.5, 4 ; 2 uses
  %niter157.next.3 = add i64 %niter157, 4
  %niter157.ncmp.3 = icmp eq i64 %niter157, 0
  br i1 %niter157.ncmp.3, label %._crit_edge51.5.preheader.unr-lcssa, label %._crit_edge51.4, !llvm.loop !53

._crit_edge51.5.preheader.unr-lcssa:              ; preds = %._crit_edge51.4
  %lcmp.mod154.not = icmp eq i64 %xtraiter152, 0
  br i1 %lcmp.mod154.not, label %._crit_edge51.5.preheader, label %._crit_edge51.4.epil.preheader

._crit_edge51.4.epil.preheader:                   ; preds = %._crit_edge51.5.preheader.unr-lcssa, %._crit_edge51.4.preheader
  %indvars.iv65.5.epil.init = phi i64 [ 0, %._crit_edge51.4.preheader ], [ %indvars.iv.next66.5.3, %._crit_edge51.5.preheader.unr-lcssa ]
  %lcmp.mod155 = icmp ne i64 %xtraiter152, 0
  tail call void @llvm.assume(i1 %lcmp.mod155)
  br label %._crit_edge51.4.epil

._crit_edge51.4.epil:                             ; preds = %._crit_edge51.4.epil, %._crit_edge51.4.epil.preheader
  %indvars.iv65.5.epil = phi i64 [ %indvars.iv.next66.5.epil, %._crit_edge51.4.epil ], [ %indvars.iv65.5.epil.init, %._crit_edge51.4.epil.preheader ] ; 3 uses
  %epil.iter153 = phi i64 [ %epil.iter153.next, %._crit_edge51.4.epil ], [ 0, %._crit_edge51.4.epil.preheader ]
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv65.5.epil
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !52
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %i.bj
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 20
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !41
  %i.jj = sub nuw nsw i64 11, %indvars.iv65.5.epil
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jj
  store i32 %i.ji, ptr %i.jk, align 4, !tbaa !41
  %indvars.iv.next66.5.epil = add nuw nsw i64 %indvars.iv65.5.epil, 1
  %epil.iter153.next = add i64 %epil.iter153, 1   ; 2 uses
  %epil.iter153.cmp.not = icmp eq i64 %epil.iter153.next, %xtraiter152
  br i1 %epil.iter153.cmp.not, label %._crit_edge51.5.preheader, label %._crit_edge51.4.epil, !llvm.loop !59

._crit_edge51.5.preheader:                        ; preds = %._crit_edge51.4.epil, %._crit_edge51.5.preheader.unr-lcssa
  %xtraiter158 = and i64 %wide.trip.count68, 3    ; 3 uses
  %i.jl = icmp sgt i32 %i.bh, -1
  br i1 %i.jl, label %._crit_edge51.5.epil.preheader, label %._crit_edge51.5

._crit_edge51.5:                                  ; preds = %._crit_edge51.5.preheader, %._crit_edge51.5
  %indvars.iv65.6 = phi i64 [ %indvars.iv.next66.6.3, %._crit_edge51.5 ], [ 0, %._crit_edge51.5.preheader ] ; 9 uses
  %niter163 = phi i64 [ %niter163.next.3, %._crit_edge51.5 ], [ 0, %._crit_edge51.5.preheader ] ; 2 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv65.6
  %i.jn = load ptr, ptr %i.jm, align 16, !tbaa !52
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.bj
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !41
  %i.jr = sub nuw nsw i64 7, %indvars.iv65.6
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jr
  store i32 %i.jq, ptr %i.js, align 4, !tbaa !41
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv65.6
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !52
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.bj
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !41
  %i.jz = sub nuw nsw i64 6, %indvars.iv65.6
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jz
  store i32 %i.jy, ptr %i.ka, align 8, !tbaa !41
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv65.6
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.kd = load ptr, ptr %i.kc, align 16, !tbaa !52
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %i.bj
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !41
  %i.kh = sub nuw nsw i64 5, %indvars.iv65.6
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kh
  store i32 %i.kg, ptr %i.ki, align 4, !tbaa !41
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv65.6
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 24
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !52
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %i.bj
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 24
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !41
  %i.kp = sub nuw nsw i64 4, %indvars.iv65.6
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kp
  store i32 %i.ko, ptr %i.kq, align 16, !tbaa !41
  %indvars.iv.next66.6.3 = add nuw nsw i64 %indvars.iv65.6, 4 ; 2 uses
  %niter163.next.3 = add i64 %niter163, 4
  %niter163.ncmp.3 = icmp eq i64 %niter163, 0
  br i1 %niter163.ncmp.3, label %._crit_edge51.6.preheader.unr-lcssa, label %._crit_edge51.5, !llvm.loop !53

._crit_edge51.6.preheader.unr-lcssa:              ; preds = %._crit_edge51.5
  %lcmp.mod160.not = icmp eq i64 %xtraiter158, 0
  br i1 %lcmp.mod160.not, label %._crit_edge51.6.preheader, label %._crit_edge51.5.epil.preheader

._crit_edge51.5.epil.preheader:                   ; preds = %._crit_edge51.6.preheader.unr-lcssa, %._crit_edge51.5.preheader
  %indvars.iv65.6.epil.init = phi i64 [ 0, %._crit_edge51.5.preheader ], [ %indvars.iv.next66.6.3, %._crit_edge51.6.preheader.unr-lcssa ]
  %lcmp.mod161 = icmp ne i64 %xtraiter158, 0
  tail call void @llvm.assume(i1 %lcmp.mod161)
  br label %._crit_edge51.5.epil

._crit_edge51.5.epil:                             ; preds = %._crit_edge51.5.epil, %._crit_edge51.5.epil.preheader
  %indvars.iv65.6.epil = phi i64 [ %indvars.iv.next66.6.epil, %._crit_edge51.5.epil ], [ %indvars.iv65.6.epil.init, %._crit_edge51.5.epil.preheader ] ; 3 uses
  %epil.iter159 = phi i64 [ %epil.iter159.next, %._crit_edge51.5.epil ], [ 0, %._crit_edge51.5.epil.preheader ]
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv65.6.epil
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !52
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %i.bj
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 24
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !41
  %i.kw = sub nuw nsw i64 7, %indvars.iv65.6.epil
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kw
  store i32 %i.kv, ptr %i.kx, align 4, !tbaa !41
  %indvars.iv.next66.6.epil = add nuw nsw i64 %indvars.iv65.6.epil, 1
  %epil.iter159.next = add i64 %epil.iter159, 1   ; 2 uses
  %epil.iter159.cmp.not = icmp eq i64 %epil.iter159.next, %xtraiter158
  br i1 %epil.iter159.cmp.not, label %._crit_edge51.6.preheader, label %._crit_edge51.5.epil, !llvm.loop !60

._crit_edge51.6.preheader:                        ; preds = %._crit_edge51.5.epil, %._crit_edge51.6.preheader.unr-lcssa
  %xtraiter164 = and i64 %wide.trip.count68, 3    ; 3 uses
  %i.ky = icmp sgt i32 %i.bh, -1
  br i1 %i.ky, label %._crit_edge51.6.epil.preheader, label %._crit_edge51.6

._crit_edge51.6:                                  ; preds = %._crit_edge51.6.preheader, %._crit_edge51.6
  %indvars.iv65.7 = phi i64 [ %indvars.iv.next66.7.3, %._crit_edge51.6 ], [ 0, %._crit_edge51.6.preheader ] ; 8 uses
  %niter169 = phi i64 [ %niter169.next.3, %._crit_edge51.6 ], [ 0, %._crit_edge51.6.preheader ] ; 2 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv65.7
  %i.la = load ptr, ptr %i.kz, align 16, !tbaa !52
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %i.bj
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 28
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !41
  %i.le = sub nuw nsw i64 3, %indvars.iv65.7
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.le
  store i32 %i.ld, ptr %i.lf, align 4, !tbaa !41
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv65.7
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !52
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %i.bj
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 28
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !41
  %i.lm = sub nuw nsw i64 2, %indvars.iv65.7
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lm
  store i32 %i.ll, ptr %i.ln, align 8, !tbaa !41
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv65.7
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  %i.lq = load ptr, ptr %i.lp, align 16, !tbaa !52
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %i.bj
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 28
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !41
  %i.lu = sub nuw nsw i64 1, %indvars.iv65.7
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lu
  store i32 %i.lt, ptr %i.lv, align 4, !tbaa !41
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv65.7
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 24
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !52
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.bj
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 28
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !41
  %indvars.iv.next66.7.3 = add nuw nsw i64 %indvars.iv65.7, 4 ; 2 uses
  %niter169.next.3 = add i64 %niter169, 4
  %niter169.ncmp.3 = icmp eq i64 %niter169, 0
  br i1 %niter169.ncmp.3, label %.split53.loopexit.unr-lcssa, label %._crit_edge51.6, !llvm.loop !53

.split53.loopexit.unr-lcssa:                      ; preds = %._crit_edge51.6
  store i32 %i.mb, ptr %i.a, align 16, !tbaa !41
  %lcmp.mod166.not = icmp eq i64 %xtraiter164, 0
  br i1 %lcmp.mod166.not, label %.split53, label %._crit_edge51.6.epil.preheader

._crit_edge51.6.epil.preheader:                   ; preds = %.split53.loopexit.unr-lcssa, %._crit_edge51.6.preheader
  %indvars.iv65.7.epil.init = phi i64 [ 0, %._crit_edge51.6.preheader ], [ %indvars.iv.next66.7.3, %.split53.loopexit.unr-lcssa ]
  %lcmp.mod167 = icmp ne i64 %xtraiter164, 0
  tail call void @llvm.assume(i1 %lcmp.mod167)
  br label %._crit_edge51.6.epil

._crit_edge51.6.epil:                             ; preds = %._crit_edge51.6.epil, %._crit_edge51.6.epil.preheader
  %indvars.iv65.7.epil = phi i64 [ %indvars.iv.next66.7.epil, %._crit_edge51.6.epil ], [ %indvars.iv65.7.epil.init, %._crit_edge51.6.epil.preheader ] ; 3 uses
  %epil.iter165 = phi i64 [ %epil.iter165.next, %._crit_edge51.6.epil ], [ 0, %._crit_edge51.6.epil.preheader ]
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv65.7.epil
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !52
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.bj
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 28
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !41
  %i.mh = sub nuw nsw i64 3, %indvars.iv65.7.epil
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.mh
  store i32 %i.mg, ptr %i.mi, align 4, !tbaa !41
  %indvars.iv.next66.7.epil = add nuw nsw i64 %indvars.iv65.7.epil, 1
  %epil.iter165.next = add i64 %epil.iter165, 1   ; 2 uses
  %epil.iter165.cmp.not = icmp eq i64 %epil.iter165.next, %xtraiter164
  br i1 %epil.iter165.cmp.not, label %.split53, label %._crit_edge51.6.epil, !llvm.loop !61

.split53:                                         ; preds = %.split53.loopexit.unr-lcssa, %._crit_edge51.6.epil, %.lr.ph59
  call void @transpose32a(ptr noundef nonnull %i.a)
  br label %bb.n

bb.n:                                             ; preds = %.split53, %bb.n
  %indvars.iv75 = phi i64 [ 0, %.split53 ], [ %indvars.iv.next76, %bb.n ] ; 2 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv75
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !41 ; 8 uses
  %i.ml = and i32 %i.mk, 15
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.mm ; 2 uses
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !41
  %i.mp = add nsw i32 %i.mo, 1
  store i32 %i.mp, ptr %i.mn, align 4, !tbaa !41
  %i.mq = lshr i32 %i.mk, 4
  %i.mr = and i32 %i.mq, 15
  %i.ms = zext nneg i32 %i.mr to i64
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ms ; 2 uses
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !41
  %i.mv = add nsw i32 %i.mu, 1
  store i32 %i.mv, ptr %i.mt, align 4, !tbaa !41
  %i.mw = lshr i32 %i.mk, 8
  %i.mx = and i32 %i.mw, 15
  %i.my = zext nneg i32 %i.mx to i64
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.my ; 2 uses
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !41
  %i.nb = add nsw i32 %i.na, 1
  store i32 %i.nb, ptr %i.mz, align 4, !tbaa !41
  %i.nc = lshr i32 %i.mk, 12
  %i.nd = and i32 %i.nc, 15
  %i.ne = zext nneg i32 %i.nd to i64
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ne ; 2 uses
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !41
  %i.nh = add nsw i32 %i.ng, 1
  store i32 %i.nh, ptr %i.nf, align 4, !tbaa !41
  %i.ni = lshr i32 %i.mk, 16
  %i.nj = and i32 %i.ni, 15
  %i.nk = zext nneg i32 %i.nj to i64
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.nk ; 2 uses
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !41
  %i.nn = add nsw i32 %i.nm, 1
  store i32 %i.nn, ptr %i.nl, align 4, !tbaa !41
  %i.no = lshr i32 %i.mk, 20
  %i.np = and i32 %i.no, 15
  %i.nq = zext nneg i32 %i.np to i64
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.nq ; 2 uses
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !41
  %i.nt = add nsw i32 %i.ns, 1
  store i32 %i.nt, ptr %i.nr, align 4, !tbaa !41
  %i.nu = lshr i32 %i.mk, 24
  %i.nv = and i32 %i.nu, 15
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.nw ; 2 uses
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !41
  %i.nz = add nsw i32 %i.ny, 1
  store i32 %i.nz, ptr %i.nx, align 4, !tbaa !41
  %i.oa = lshr i32 %i.mk, 28
  %i.ob = zext nneg i32 %i.oa to i64
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ob ; 2 uses
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !41
  %i.oe = add nsw i32 %i.od, 1
  store i32 %i.oe, ptr %i.oc, align 4, !tbaa !41
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next76, 32
  br i1 %exitcond78.not, label %bb.o, label %bb.n, !llvm.loop !62

bb.o:                                             ; preds = %bb.n
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond83.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count82
  br i1 %exitcond83.not, label %.preheader.loopexit, label %.lr.ph59, !llvm.loop !63
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 65536) i32 @Fra_ClausProcessClausesCut2(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !51   ; 2 uses
  %i.e = sub i32 %i.b, %i.d                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = lshr i32 %i.g, 29                        ; 7 uses
  %.not50 = icmp eq i32 %i.h, 0
  br i1 %.not50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = sext i32 %i.d to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.i, i64 %i.j ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !41
  %i.m = mul nsw i32 %i.l, %i.b
  %i.n = sext i32 %i.m to i64
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.n ; 7 uses
  %exitcond.not = icmp eq i32 %i.h, 1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !41
  %i.q = mul nsw i32 %i.p, %i.b
  %i.r = sext i32 %i.q to i64
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.r ; 6 uses
  %exitcond.not.1 = icmp eq i32 %i.h, 2
  br i1 %exitcond.not.1, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load i32, ptr %i.s, align 4, !tbaa !41
  %i.u = mul nsw i32 %i.t, %i.b
  %i.v = sext i32 %i.u to i64
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.v ; 5 uses
  %exitcond.not.2 = icmp eq i32 %i.h, 3
  br i1 %exitcond.not.2, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !41
  %i.y = mul nsw i32 %i.x, %i.b
  %i.z = sext i32 %i.y to i64
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.z ; 4 uses
  %exitcond.not.3 = icmp eq i32 %i.h, 4
  br i1 %exitcond.not.3, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !41
  %i.ac = mul nsw i32 %i.ab, %i.b
  %i.ad = sext i32 %i.ac to i64
  %gep.4 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ad ; 3 uses
  %exitcond.not.4 = icmp eq i32 %i.h, 5
  br i1 %exitcond.not.4, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !41
  %i.ag = mul nsw i32 %i.af, %i.b
  %i.ah = sext i32 %i.ag to i64
  %gep.5 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ah ; 2 uses
  %exitcond.not.5 = icmp eq i32 %i.h, 6
  br i1 %exitcond.not.5, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !41
  %i.ak = mul nsw i32 %i.aj, %i.b
  %i.al = sext i32 %i.ak to i64
  %gep.6 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.al
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.a
  %.sroa.14.0 = phi ptr [ undef, %bb.a ], [ undef, %.lr.ph ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.f ], [ %gep.6, %bb.g ]
  %.sroa.12.0 = phi ptr [ undef, %bb.a ], [ undef, %.lr.ph ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.e ], [ %gep.5, %bb.f ], [ %gep.5, %bb.g ]
  %.sroa.10.0 = phi ptr [ undef, %bb.a ], [ undef, %.lr.ph ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.d ], [ %gep.4, %bb.e ], [ %gep.4, %bb.f ], [ %gep.4, %bb.g ]
  %.sroa.8.0 = phi ptr [ undef, %bb.a ], [ undef, %.lr.ph ], [ undef, %bb.b ], [ undef, %bb.c ], [ %gep.3, %bb.d ], [ %gep.3, %bb.e ], [ %gep.3, %bb.f ], [ %gep.3, %bb.g ]
  %.sroa.6.0 = phi ptr [ undef, %bb.a ], [ undef, %.lr.ph ], [ undef, %bb.b ], [ %gep.2, %bb.c ], [ %gep.2, %bb.d ], [ %gep.2, %bb.e ], [ %gep.2, %bb.f ], [ %gep.2, %bb.g ]
  %.sroa.4.0 = phi ptr [ undef, %bb.a ], [ undef, %.lr.ph ], [ %gep.1, %bb.b ], [ %gep.1, %bb.c ], [ %gep.1, %bb.d ], [ %gep.1, %bb.e ], [ %gep.1, %bb.f ], [ %gep.1, %bb.g ]
  %.sroa.0.0 = phi ptr [ undef, %bb.a ], [ %gep, %bb.g ], [ %gep, %bb.f ], [ %gep, %bb.e ], [ %gep, %bb.d ], [ %gep, %bb.c ], [ %gep, %bb.b ], [ %gep, %.lr.ph ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  %i.am = icmp sgt i32 %i.e, 0
  br i1 %i.am, label %.preheader40.preheader, label %.preheader

.preheader40.preheader:                           ; preds = %._crit_edge
  %wide.trip.count62 = zext nneg i32 %i.e to i64
  br label %.preheader40

.preheader40:                                     ; preds = %.preheader40.preheader, %bb.n
  %indvars.iv59 = phi i64 [ 0, %.preheader40.preheader ], [ %indvars.iv.next60, %bb.n ] ; 8 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %indvars.iv59
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0, i64 %indvars.iv59
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0, i64 %indvars.iv59
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.0, i64 %indvars.iv59
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0, i64 %indvars.iv59
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12.0, i64 %indvars.iv59
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.sroa.14.0, i64 %indvars.iv59
  br label %.preheader39

.preheader.loopexit:                              ; preds = %bb.n
  %i.au = load <16 x i32>, ptr %3, align 4, !tbaa !41
  %i.av = icmp ne <16 x i32> %i.au, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16
  %i.ax = zext i16 %i.aw to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %._crit_edge
  %.137.15 = phi i32 [ %i.ax, %.preheader.loopexit ], [ 0, %._crit_edge ]
  ret i32 %.137.15

.preheader39:                                     ; preds = %.preheader40, %._crit_edge45
  %.03246 = phi i32 [ 0, %.preheader40 ], [ %i.ca, %._crit_edge45 ] ; 3 uses
end_hunk_0
begin_hunk_1_@Fra_ClausProcessClausesCut3:bb.a
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !71

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.a
  %i.ao = shl nuw i32 1, %i.j
  %i.ap = sext i32 %i.ao to i64
  %i.aq = shl nsw i64 %i.ap, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 0, i64 %i.aq, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !72
  %i.at = icmp eq i8 %i.as, 4
  br i1 %i.at, label %bb.d, label %.preheader63

.preheader63:                                     ; preds = %._crit_edge
  %i.au = icmp sgt i32 %i.g, 0
  br i1 %i.au, label %.preheader62.lr.ph, label %.loopexit

.preheader62.lr.ph:                               ; preds = %.preheader63
  %i.av = load i8, ptr %i.h, align 1, !tbaa !66   ; 5 uses
  %i.aw = icmp sgt i8 %i.av, 0
  br i1 %i.aw, label %.preheader62.us.preheader, label %.preheader62.lr.ph.split

.preheader62.us.preheader:                        ; preds = %.preheader62.lr.ph
  %wide.trip.count101 = zext nneg i32 %i.g to i64
  %i.ax = icmp eq i8 %i.av, 1
  %i.ay = and i8 %i.av, 126
  %unroll_iter143 = zext nneg i8 %i.ay to i64
  %i.az = and i8 %i.av, 1
  %lcmp.mod140.not = icmp eq i8 %i.az, 0
  %lcmp.mod142 = trunc i8 %i.av to i1
  br label %.preheader62.us

.preheader62.us:                                  ; preds = %.preheader62.us.preheader, %.split.us.us
  %indvars.iv98 = phi i64 [ 0, %.preheader62.us.preheader ], [ %indvars.iv.next99, %.split.us.us ] ; 4 uses
  br label %.preheader61.us.us

.preheader61.us.us:                               ; preds = %._crit_edge70.us.us, %.preheader62.us
  %.272.us.us = phi i32 [ 0, %.preheader62.us ], [ %i.cd, %._crit_edge70.us.us ] ; 2 uses
  %i.ba = shl nuw i32 1, %.272.us.us              ; 3 uses
  br i1 %i.ax, label %.epil.preheader137, label %.preheader61.us.us.new

.preheader61.us.us.new:                           ; preds = %.preheader61.us.us, %.preheader61.us.us.new
  %indvars.iv92 = phi i64 [ %indvars.iv.next93.1, %.preheader61.us.us.new ], [ 0, %.preheader61.us.us ] ; 4 uses
  %.05667.us.us = phi i32 [ %.157.us.us.1, %.preheader61.us.us.new ], [ 0, %.preheader61.us.us ]
  %niter144 = phi i64 [ %niter144.next.1, %.preheader61.us.us.new ], [ 0, %.preheader61.us.us ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv92
  %i.bc = load ptr, ptr %i.bb, align 16, !tbaa !52
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv98
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !41
  %i.bf = and i32 %i.be, %i.ba
  %.not.us.us = icmp eq i32 %i.bf, 0
  %i.bg = trunc nuw nsw i64 %indvars.iv92 to i32
  %i.bh = shl nuw i32 1, %i.bg
  %i.bi = select i1 %.not.us.us, i32 0, i32 %i.bh
  %.157.us.us = or i32 %i.bi, %.05667.us.us
  %indvars.iv.next93 = or disjoint i64 %indvars.iv92, 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next93
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !52
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv98
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !41
  %i.bn = and i32 %i.bm, %i.ba
  %.not.us.us.1 = icmp eq i32 %i.bn, 0
  %i.bo = trunc nuw nsw i64 %indvars.iv.next93 to i32
  %i.bp = shl nuw i32 1, %i.bo
  %i.bq = select i1 %.not.us.us.1, i32 0, i32 %i.bp
  %.157.us.us.1 = or i32 %i.bq, %.157.us.us       ; 3 uses
  %indvars.iv.next93.1 = add nuw nsw i64 %indvars.iv92, 2 ; 2 uses
  %niter144.next.1 = add i64 %niter144, 2         ; 2 uses
  %niter144.ncmp.1 = icmp eq i64 %niter144.next.1, %unroll_iter143
  br i1 %niter144.ncmp.1, label %._crit_edge70.us.us.unr-lcssa, label %.preheader61.us.us.new, !llvm.loop !73

._crit_edge70.us.us.unr-lcssa:                    ; preds = %.preheader61.us.us.new
  br i1 %lcmp.mod140.not, label %._crit_edge70.us.us, label %.epil.preheader137

.epil.preheader137:                               ; preds = %._crit_edge70.us.us.unr-lcssa, %.preheader61.us.us
  %indvars.iv92.epil.init = phi i64 [ 0, %.preheader61.us.us ], [ %indvars.iv.next93.1, %._crit_edge70.us.us.unr-lcssa ] ; 2 uses
  %.05667.us.us.epil.init = phi i32 [ 0, %.preheader61.us.us ], [ %.157.us.us.1, %._crit_edge70.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod142)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv92.epil.init
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !52
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv98
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !41
  %i.bv = and i32 %i.bu, %i.ba
  %.not.us.us.epil = icmp eq i32 %i.bv, 0
  %i.bw = trunc nuw nsw i64 %indvars.iv92.epil.init to i32
  %i.bx = shl nuw i32 1, %i.bw
  %i.by = select i1 %.not.us.us.epil, i32 0, i32 %i.bx
  %.157.us.us.epil = or i32 %i.by, %.05667.us.us.epil.init
  br label %._crit_edge70.us.us

._crit_edge70.us.us:                              ; preds = %._crit_edge70.us.us.unr-lcssa, %.epil.preheader137
  %.157.us.us.lcssa = phi i32 [ %.157.us.us.1, %._crit_edge70.us.us.unr-lcssa ], [ %.157.us.us.epil, %.epil.preheader137 ]
  %i.bz = sext i32 %.157.us.us.lcssa to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bz ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !41
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !41
  %i.cd = add nuw nsw i32 %.272.us.us, 1          ; 2 uses
  %exitcond97.not = icmp eq i32 %i.cd, 32
  br i1 %exitcond97.not, label %.split.us.us, label %.preheader61.us.us, !llvm.loop !74

.split.us.us:                                     ; preds = %._crit_edge70.us.us
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count101
  br i1 %exitcond102.not, label %.loopexit, label %.preheader62.us, !llvm.loop !75

.preheader62.lr.ph.split:                         ; preds = %.preheader62.lr.ph
  %.promoted75 = load i32, ptr %3, align 4, !tbaa !41
  %i.ce = shl i32 %i.d, 5
  %i.cf = add i32 %.promoted75, %i.ce
  %i.cg = shl i32 %i.f, 5
  %i.ch = sub i32 %i.cf, %i.cg
  store i32 %i.ch, ptr %3, align 4, !tbaa !41
  br label %.loopexit

bb.d:                                             ; preds = %._crit_edge
  %i.ci = sdiv i32 %i.g, 8                        ; 2 uses
  %i.cj = icmp sgt i32 %i.g, 7
  br i1 %i.cj, label %.lr.ph88, label %.loopexit

.lr.ph88:                                         ; preds = %bb.d
  %i.ck = load i8, ptr %i.h, align 1, !tbaa !66   ; 25 uses
  %wide.trip.count112 = sext i8 %i.ck to i64      ; 17 uses
  %i.cl = icmp sgt i8 %i.ck, 0
  br i1 %i.cl, label %.split81.us.preheader, label %.split82

.split81.us.preheader:                            ; preds = %.lr.ph88
  %wide.trip.count126 = zext nneg i32 %i.ci to i64
  %i.cm = add nsw i64 %wide.trip.count112, -1
  %xtraiter146 = and i64 %wide.trip.count112, 3
  %i.cn = icmp ult i8 %i.ck, 4
  %unroll_iter150 = and i64 %wide.trip.count112, 124
  %i.co = and i8 %i.ck, 3
  %lcmp.mod148.not = icmp eq i8 %i.co, 0
  %i.cp = and i8 %i.ck, 3
  %lcmp.mod149 = icmp ne i8 %i.cp, 0
  %xtraiter158 = and i64 %wide.trip.count112, 3
  %i.cq = icmp ult i8 %i.ck, 4
  %unroll_iter162 = and i64 %wide.trip.count112, 124
  %i.cr = and i8 %i.ck, 3
  %lcmp.mod160.not = icmp eq i8 %i.cr, 0
  %i.cs = and i8 %i.ck, 3
  %lcmp.mod161 = icmp ne i8 %i.cs, 0
  %xtraiter167 = and i64 %wide.trip.count112, 3
  %i.ct = icmp ult i8 %i.ck, 4
  %unroll_iter171 = and i64 %wide.trip.count112, 124
  %i.cu = and i8 %i.ck, 3
  %lcmp.mod169.not = icmp eq i8 %i.cu, 0
  %i.cv = and i8 %i.ck, 3
  %lcmp.mod170 = icmp ne i8 %i.cv, 0
  %xtraiter173 = and i64 %wide.trip.count112, 3
  %i.cw = icmp ult i8 %i.ck, 4
  %unroll_iter177 = and i64 %wide.trip.count112, 124
  %i.cx = and i8 %i.ck, 3
  %lcmp.mod175.not = icmp eq i8 %i.cx, 0
  %i.cy = and i8 %i.ck, 3
  %lcmp.mod176 = icmp ne i8 %i.cy, 0
  %xtraiter179 = and i64 %wide.trip.count112, 3
  %i.cz = icmp ult i8 %i.ck, 4
  %unroll_iter183 = and i64 %wide.trip.count112, 124
  %i.da = and i8 %i.ck, 3
  %lcmp.mod181.not = icmp eq i8 %i.da, 0
  %i.db = and i8 %i.ck, 3
  %lcmp.mod182 = icmp ne i8 %i.db, 0
  %xtraiter185 = and i64 %wide.trip.count112, 3
  %i.dc = icmp ult i8 %i.ck, 4
  %unroll_iter189 = and i64 %wide.trip.count112, 124
  %i.dd = and i8 %i.ck, 3
  %lcmp.mod187.not = icmp eq i8 %i.dd, 0
  %i.de = and i8 %i.ck, 3
  %lcmp.mod188 = icmp ne i8 %i.de, 0
  %xtraiter191 = and i64 %wide.trip.count112, 3
  %i.df = icmp ult i8 %i.ck, 4
  %unroll_iter195 = and i64 %wide.trip.count112, 124
  %i.dg = and i8 %i.ck, 3
  %lcmp.mod193.not = icmp eq i8 %i.dg, 0
  %i.dh = and i8 %i.ck, 3
  %lcmp.mod194 = icmp ne i8 %i.dh, 0
  %xtraiter197 = and i64 %wide.trip.count112, 3
  %i.di = icmp ult i64 %i.cm, 3
  %unroll_iter201 = and i64 %wide.trip.count112, 124
  %i.dj = and i8 %i.ck, 3
  %lcmp.mod199.not = icmp eq i8 %i.dj, 0
  %i.dk = and i8 %i.ck, 3
  %lcmp.mod200 = icmp ne i8 %i.dk, 0
  br label %.split81.us

.split81.us:                                      ; preds = %.split81.us.preheader, %bb.g
  %indvars.iv123 = phi i64 [ 0, %.split81.us.preheader ], [ %indvars.iv.next124, %bb.g ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.dl = shl nuw nsw i64 %indvars.iv123, 3       ; 40 uses
  br i1 %i.cn, label %.epil.preheader145, label %.split81.us.new

.split81.us.new:                                  ; preds = %.split81.us, %.split81.us.new
  %indvars.iv109 = phi i64 [ %indvars.iv.next110.3157, %.split81.us.new ], [ 0, %.split81.us ] ; 9 uses
  %niter151 = phi i64 [ %niter151.next.3, %.split81.us.new ], [ 0, %.split81.us ]
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109
  %i.dn = load ptr, ptr %i.dm, align 16, !tbaa !52
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.dl
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !41
  %i.dq = sub nuw nsw i64 31, %indvars.iv109
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dq
  store i32 %i.dp, ptr %i.dr, align 4, !tbaa !41
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !52
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.dl
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !41
  %i.dx = sub nuw nsw i64 30, %indvars.iv109
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dx
  store i32 %i.dw, ptr %i.dy, align 8, !tbaa !41
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 16, !tbaa !52
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.dl
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !41
  %i.ee = sub nuw nsw i64 29, %indvars.iv109
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ee
  store i32 %i.ed, ptr %i.ef, align 4, !tbaa !41
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !52
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.dl
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !41
  %i.el = sub nuw nsw i64 28, %indvars.iv109
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.el
  store i32 %i.ek, ptr %i.em, align 16, !tbaa !41
  %indvars.iv.next110.3157 = add nuw nsw i64 %indvars.iv109, 4 ; 2 uses
  %niter151.next.3 = add i64 %niter151, 4         ; 2 uses
  %niter151.ncmp.3 = icmp eq i64 %niter151.next.3, %unroll_iter150
  br i1 %niter151.ncmp.3, label %._crit_edge79.us.preheader.unr-lcssa, label %.split81.us.new, !llvm.loop !76

._crit_edge79.us.preheader.unr-lcssa:             ; preds = %.split81.us.new
  br i1 %lcmp.mod148.not, label %._crit_edge79.us.preheader, label %.epil.preheader145

.epil.preheader145:                               ; preds = %._crit_edge79.us.preheader.unr-lcssa, %.split81.us
  %indvars.iv109.epil.init = phi i64 [ 0, %.split81.us ], [ %indvars.iv.next110.3157, %._crit_edge79.us.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod149)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader145
  %indvars.iv109.epil = phi i64 [ %indvars.iv109.epil.init, %.epil.preheader145 ], [ %indvars.iv.next110.epil, %bb.e ] ; 3 uses
  %epil.iter147 = phi i64 [ 0, %.epil.preheader145 ], [ %epil.iter147.next, %bb.e ]
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.epil
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !52
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.dl
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !41
  %i.er = sub nuw nsw i64 31, %indvars.iv109.epil
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.er
  store i32 %i.eq, ptr %i.es, align 4, !tbaa !41
  %indvars.iv.next110.epil = add nuw nsw i64 %indvars.iv109.epil, 1
  %epil.iter147.next = add i64 %epil.iter147, 1   ; 2 uses
  %epil.iter147.cmp.not = icmp eq i64 %epil.iter147.next, %xtraiter146
  br i1 %epil.iter147.cmp.not, label %._crit_edge79.us.preheader, label %bb.e, !llvm.loop !77

._crit_edge79.us.preheader:                       ; preds = %bb.e, %._crit_edge79.us.preheader.unr-lcssa
  br i1 %i.cq, label %._crit_edge79.us.epil.preheader, label %._crit_edge79.us

bb.f:                                             ; preds = %._crit_edge79.us.7, %bb.f
  %indvars.iv119 = phi i64 [ 0, %._crit_edge79.us.7 ], [ %indvars.iv.next120, %bb.f ] ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv119
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !41 ; 8 uses
  %i.ev = and i32 %i.eu, 15
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ew ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !41
  %i.ez = add nsw i32 %i.ey, 1
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !41
  %i.fa = lshr i32 %i.eu, 4
  %i.fb = and i32 %i.fa, 15
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fc ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !41
  %i.ff = add nsw i32 %i.fe, 1
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !41
  %i.fg = lshr i32 %i.eu, 8
  %i.fh = and i32 %i.fg, 15
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fi ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !41
  %i.fl = add nsw i32 %i.fk, 1
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !41
  %i.fm = lshr i32 %i.eu, 12
  %i.fn = and i32 %i.fm, 15
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fo ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !41
  %i.fr = add nsw i32 %i.fq, 1
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !41
  %i.fs = lshr i32 %i.eu, 16
  %i.ft = and i32 %i.fs, 15
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fu ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !41
  %i.fx = add nsw i32 %i.fw, 1
  store i32 %i.fx, ptr %i.fv, align 4, !tbaa !41
  %i.fy = lshr i32 %i.eu, 20
  %i.fz = and i32 %i.fy, 15
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ga ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !41
  %i.gd = add nsw i32 %i.gc, 1
  store i32 %i.gd, ptr %i.gb, align 4, !tbaa !41
  %i.ge = lshr i32 %i.eu, 24
  %i.gf = and i32 %i.ge, 15
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.gg ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !41
  %i.gj = add nsw i32 %i.gi, 1
  store i32 %i.gj, ptr %i.gh, align 4, !tbaa !41
  %i.gk = lshr i32 %i.eu, 28
  %i.gl = zext nneg i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.gl ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !41
  %i.go = add nsw i32 %i.gn, 1
  store i32 %i.go, ptr %i.gm, align 4, !tbaa !41
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next120, 32
  br i1 %exitcond122.not, label %bb.g, label %bb.f, !llvm.loop !78

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %.loopexit, label %.split81.us, !llvm.loop !79

._crit_edge79.us:                                 ; preds = %._crit_edge79.us.preheader, %._crit_edge79.us
  %indvars.iv109.1 = phi i64 [ %indvars.iv.next110.1.3, %._crit_edge79.us ], [ 0, %._crit_edge79.us.preheader ] ; 9 uses
  %niter163 = phi i64 [ %niter163.next.3, %._crit_edge79.us ], [ 0, %._crit_edge79.us.preheader ]
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.1
  %i.gq = load ptr, ptr %i.gp, align 16, !tbaa !52
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.dl
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !41
  %i.gu = sub nuw nsw i64 27, %indvars.iv109.1
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gu
  store i32 %i.gt, ptr %i.gv, align 4, !tbaa !41
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.1
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !52
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.dl
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !41
  %i.hc = sub nuw nsw i64 26, %indvars.iv109.1
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hc
  store i32 %i.hb, ptr %i.hd, align 8, !tbaa !41
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.1
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hg = load ptr, ptr %i.hf, align 16, !tbaa !52
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.dl
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !41
  %i.hk = sub nuw nsw i64 25, %indvars.iv109.1
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hk
  store i32 %i.hj, ptr %i.hl, align 4, !tbaa !41
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.1
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !52
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.dl
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !41
  %i.hs = sub nuw nsw i64 24, %indvars.iv109.1
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hs
  store i32 %i.hr, ptr %i.ht, align 16, !tbaa !41
  %indvars.iv.next110.1.3 = add nuw nsw i64 %indvars.iv109.1, 4 ; 2 uses
  %niter163.next.3 = add i64 %niter163, 4         ; 2 uses
  %niter163.ncmp.3 = icmp eq i64 %niter163.next.3, %unroll_iter162
  br i1 %niter163.ncmp.3, label %._crit_edge79.us.1.preheader.unr-lcssa, label %._crit_edge79.us, !llvm.loop !76

._crit_edge79.us.1.preheader.unr-lcssa:           ; preds = %._crit_edge79.us
  br i1 %lcmp.mod160.not, label %._crit_edge79.us.1.preheader, label %._crit_edge79.us.epil.preheader

._crit_edge79.us.epil.preheader:                  ; preds = %._crit_edge79.us.1.preheader.unr-lcssa, %._crit_edge79.us.preheader
  %indvars.iv109.1.epil.init = phi i64 [ 0, %._crit_edge79.us.preheader ], [ %indvars.iv.next110.1.3, %._crit_edge79.us.1.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod161)
  br label %._crit_edge79.us.epil

._crit_edge79.us.epil:                            ; preds = %._crit_edge79.us.epil, %._crit_edge79.us.epil.preheader
  %indvars.iv109.1.epil = phi i64 [ %indvars.iv.next110.1.epil, %._crit_edge79.us.epil ], [ %indvars.iv109.1.epil.init, %._crit_edge79.us.epil.preheader ] ; 3 uses
  %epil.iter159 = phi i64 [ %epil.iter159.next, %._crit_edge79.us.epil ], [ 0, %._crit_edge79.us.epil.preheader ]
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.1.epil
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !52
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.dl
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !41
  %i.hz = sub nuw nsw i64 27, %indvars.iv109.1.epil
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hz
  store i32 %i.hy, ptr %i.ia, align 4, !tbaa !41
  %indvars.iv.next110.1.epil = add nuw nsw i64 %indvars.iv109.1.epil, 1
  %epil.iter159.next = add i64 %epil.iter159, 1   ; 2 uses
  %epil.iter159.cmp.not = icmp eq i64 %epil.iter159.next, %xtraiter158
  br i1 %epil.iter159.cmp.not, label %._crit_edge79.us.1.preheader, label %._crit_edge79.us.epil, !llvm.loop !80

._crit_edge79.us.1.preheader:                     ; preds = %._crit_edge79.us.epil, %._crit_edge79.us.1.preheader.unr-lcssa
  br i1 %i.ct, label %._crit_edge79.us.1.epil.preheader, label %._crit_edge79.us.1

._crit_edge79.us.1:                               ; preds = %._crit_edge79.us.1.preheader, %._crit_edge79.us.1
  %indvars.iv109.2 = phi i64 [ %indvars.iv.next110.2.3, %._crit_edge79.us.1 ], [ 0, %._crit_edge79.us.1.preheader ] ; 9 uses
  %niter172 = phi i64 [ %niter172.next.3, %._crit_edge79.us.1 ], [ 0, %._crit_edge79.us.1.preheader ]
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.2
  %i.ic = load ptr, ptr %i.ib, align 16, !tbaa !52
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %i.dl
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !41
  %i.ig = sub nuw nsw i64 23, %indvars.iv109.2
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ig
  store i32 %i.if, ptr %i.ih, align 4, !tbaa !41
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.2
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !52
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.dl
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load i32, ptr %i.im, align 4, !tbaa !41
  %i.io = sub nuw nsw i64 22, %indvars.iv109.2
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.io
  store i32 %i.in, ptr %i.ip, align 8, !tbaa !41
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.2
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.is = load ptr, ptr %i.ir, align 16, !tbaa !52
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.dl
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !41
  %i.iw = sub nuw nsw i64 21, %indvars.iv109.2
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.iw
  store i32 %i.iv, ptr %i.ix, align 4, !tbaa !41
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.2
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !52
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.dl
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !41
  %i.je = sub nuw nsw i64 20, %indvars.iv109.2
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.je
  store i32 %i.jd, ptr %i.jf, align 16, !tbaa !41
  %indvars.iv.next110.2.3 = add nuw nsw i64 %indvars.iv109.2, 4 ; 2 uses
  %niter172.next.3 = add i64 %niter172, 4         ; 2 uses
  %niter172.ncmp.3 = icmp eq i64 %niter172.next.3, %unroll_iter171
  br i1 %niter172.ncmp.3, label %._crit_edge79.us.2.preheader.unr-lcssa, label %._crit_edge79.us.1, !llvm.loop !76

._crit_edge79.us.2.preheader.unr-lcssa:           ; preds = %._crit_edge79.us.1
  br i1 %lcmp.mod169.not, label %._crit_edge79.us.2.preheader, label %._crit_edge79.us.1.epil.preheader

._crit_edge79.us.1.epil.preheader:                ; preds = %._crit_edge79.us.2.preheader.unr-lcssa, %._crit_edge79.us.1.preheader
  %indvars.iv109.2.epil.init = phi i64 [ 0, %._crit_edge79.us.1.preheader ], [ %indvars.iv.next110.2.3, %._crit_edge79.us.2.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod170)
  br label %._crit_edge79.us.1.epil

._crit_edge79.us.1.epil:                          ; preds = %._crit_edge79.us.1.epil, %._crit_edge79.us.1.epil.preheader
  %indvars.iv109.2.epil = phi i64 [ %indvars.iv.next110.2.epil, %._crit_edge79.us.1.epil ], [ %indvars.iv109.2.epil.init, %._crit_edge79.us.1.epil.preheader ] ; 3 uses
  %epil.iter168 = phi i64 [ %epil.iter168.next, %._crit_edge79.us.1.epil ], [ 0, %._crit_edge79.us.1.epil.preheader ]
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.2.epil
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !52
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.dl
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !41
  %i.jl = sub nuw nsw i64 23, %indvars.iv109.2.epil
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jl
  store i32 %i.jk, ptr %i.jm, align 4, !tbaa !41
  %indvars.iv.next110.2.epil = add nuw nsw i64 %indvars.iv109.2.epil, 1
  %epil.iter168.next = add i64 %epil.iter168, 1   ; 2 uses
  %epil.iter168.cmp.not = icmp eq i64 %epil.iter168.next, %xtraiter167
  br i1 %epil.iter168.cmp.not, label %._crit_edge79.us.2.preheader, label %._crit_edge79.us.1.epil, !llvm.loop !81

._crit_edge79.us.2.preheader:                     ; preds = %._crit_edge79.us.1.epil, %._crit_edge79.us.2.preheader.unr-lcssa
  br i1 %i.cw, label %._crit_edge79.us.2.epil.preheader, label %._crit_edge79.us.2

._crit_edge79.us.2:                               ; preds = %._crit_edge79.us.2.preheader, %._crit_edge79.us.2
  %indvars.iv109.3 = phi i64 [ %indvars.iv.next110.3.3, %._crit_edge79.us.2 ], [ 0, %._crit_edge79.us.2.preheader ] ; 9 uses
  %niter178 = phi i64 [ %niter178.next.3, %._crit_edge79.us.2 ], [ 0, %._crit_edge79.us.2.preheader ]
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.3
  %i.jo = load ptr, ptr %i.jn, align 16, !tbaa !52
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.dl
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 12
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !41
  %i.js = sub nuw nsw i64 19, %indvars.iv109.3
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.js
  store i32 %i.jr, ptr %i.jt, align 4, !tbaa !41
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.3
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !52
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.dl
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 12
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !41
  %i.ka = sub nuw nsw i64 18, %indvars.iv109.3
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ka
  store i32 %i.jz, ptr %i.kb, align 8, !tbaa !41
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.3
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.ke = load ptr, ptr %i.kd, align 16, !tbaa !52
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %i.dl
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 12
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !41
  %i.ki = sub nuw nsw i64 17, %indvars.iv109.3
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ki
  store i32 %i.kh, ptr %i.kj, align 4, !tbaa !41
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.3
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !52
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %i.dl
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 12
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !41
  %i.kq = sub nuw nsw i64 16, %indvars.iv109.3
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kq
  store i32 %i.kp, ptr %i.kr, align 16, !tbaa !41
  %indvars.iv.next110.3.3 = add nuw nsw i64 %indvars.iv109.3, 4 ; 2 uses
  %niter178.next.3 = add i64 %niter178, 4         ; 2 uses
  %niter178.ncmp.3 = icmp eq i64 %niter178.next.3, %unroll_iter177
  br i1 %niter178.ncmp.3, label %._crit_edge79.us.3.preheader.unr-lcssa, label %._crit_edge79.us.2, !llvm.loop !76

._crit_edge79.us.3.preheader.unr-lcssa:           ; preds = %._crit_edge79.us.2
  br i1 %lcmp.mod175.not, label %._crit_edge79.us.3.preheader, label %._crit_edge79.us.2.epil.preheader

._crit_edge79.us.2.epil.preheader:                ; preds = %._crit_edge79.us.3.preheader.unr-lcssa, %._crit_edge79.us.2.preheader
  %indvars.iv109.3.epil.init = phi i64 [ 0, %._crit_edge79.us.2.preheader ], [ %indvars.iv.next110.3.3, %._crit_edge79.us.3.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod176)
  br label %._crit_edge79.us.2.epil

._crit_edge79.us.2.epil:                          ; preds = %._crit_edge79.us.2.epil, %._crit_edge79.us.2.epil.preheader
  %indvars.iv109.3.epil = phi i64 [ %indvars.iv.next110.3.epil, %._crit_edge79.us.2.epil ], [ %indvars.iv109.3.epil.init, %._crit_edge79.us.2.epil.preheader ] ; 3 uses
  %epil.iter174 = phi i64 [ %epil.iter174.next, %._crit_edge79.us.2.epil ], [ 0, %._crit_edge79.us.2.epil.preheader ]
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.3.epil
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !52
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.dl
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 12
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !41
  %i.kx = sub nuw nsw i64 19, %indvars.iv109.3.epil
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kx
  store i32 %i.kw, ptr %i.ky, align 4, !tbaa !41
  %indvars.iv.next110.3.epil = add nuw nsw i64 %indvars.iv109.3.epil, 1
  %epil.iter174.next = add i64 %epil.iter174, 1   ; 2 uses
  %epil.iter174.cmp.not = icmp eq i64 %epil.iter174.next, %xtraiter173
  br i1 %epil.iter174.cmp.not, label %._crit_edge79.us.3.preheader, label %._crit_edge79.us.2.epil, !llvm.loop !82

._crit_edge79.us.3.preheader:                     ; preds = %._crit_edge79.us.2.epil, %._crit_edge79.us.3.preheader.unr-lcssa
  br i1 %i.cz, label %._crit_edge79.us.3.epil.preheader, label %._crit_edge79.us.3

._crit_edge79.us.3:                               ; preds = %._crit_edge79.us.3.preheader, %._crit_edge79.us.3
  %indvars.iv109.4 = phi i64 [ %indvars.iv.next110.4.3, %._crit_edge79.us.3 ], [ 0, %._crit_edge79.us.3.preheader ] ; 9 uses
  %niter184 = phi i64 [ %niter184.next.3, %._crit_edge79.us.3 ], [ 0, %._crit_edge79.us.3.preheader ]
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.4
  %i.la = load ptr, ptr %i.kz, align 16, !tbaa !52
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %i.dl
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !41
  %i.le = sub nuw nsw i64 15, %indvars.iv109.4
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.le
  store i32 %i.ld, ptr %i.lf, align 4, !tbaa !41
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.4
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !52
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %i.dl
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !41
  %i.lm = sub nuw nsw i64 14, %indvars.iv109.4
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lm
  store i32 %i.ll, ptr %i.ln, align 8, !tbaa !41
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.4
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  %i.lq = load ptr, ptr %i.lp, align 16, !tbaa !52
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %i.dl
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !41
  %i.lu = sub nuw nsw i64 13, %indvars.iv109.4
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lu
  store i32 %i.lt, ptr %i.lv, align 4, !tbaa !41
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.4
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 24
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !52
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.dl
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !41
  %i.mc = sub nuw nsw i64 12, %indvars.iv109.4
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.mc
  store i32 %i.mb, ptr %i.md, align 16, !tbaa !41
  %indvars.iv.next110.4.3 = add nuw nsw i64 %indvars.iv109.4, 4 ; 2 uses
  %niter184.next.3 = add i64 %niter184, 4         ; 2 uses
  %niter184.ncmp.3 = icmp eq i64 %niter184.next.3, %unroll_iter183
  br i1 %niter184.ncmp.3, label %._crit_edge79.us.4.preheader.unr-lcssa, label %._crit_edge79.us.3, !llvm.loop !76

._crit_edge79.us.4.preheader.unr-lcssa:           ; preds = %._crit_edge79.us.3
  br i1 %lcmp.mod181.not, label %._crit_edge79.us.4.preheader, label %._crit_edge79.us.3.epil.preheader

._crit_edge79.us.3.epil.preheader:                ; preds = %._crit_edge79.us.4.preheader.unr-lcssa, %._crit_edge79.us.3.preheader
  %indvars.iv109.4.epil.init = phi i64 [ 0, %._crit_edge79.us.3.preheader ], [ %indvars.iv.next110.4.3, %._crit_edge79.us.4.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod182)
  br label %._crit_edge79.us.3.epil

._crit_edge79.us.3.epil:                          ; preds = %._crit_edge79.us.3.epil, %._crit_edge79.us.3.epil.preheader
  %indvars.iv109.4.epil = phi i64 [ %indvars.iv.next110.4.epil, %._crit_edge79.us.3.epil ], [ %indvars.iv109.4.epil.init, %._crit_edge79.us.3.epil.preheader ] ; 3 uses
  %epil.iter180 = phi i64 [ %epil.iter180.next, %._crit_edge79.us.3.epil ], [ 0, %._crit_edge79.us.3.epil.preheader ]
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.4.epil
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !52
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.dl
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !41
  %i.mj = sub nuw nsw i64 15, %indvars.iv109.4.epil
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.mj
  store i32 %i.mi, ptr %i.mk, align 4, !tbaa !41
  %indvars.iv.next110.4.epil = add nuw nsw i64 %indvars.iv109.4.epil, 1
  %epil.iter180.next = add i64 %epil.iter180, 1   ; 2 uses
  %epil.iter180.cmp.not = icmp eq i64 %epil.iter180.next, %xtraiter179
  br i1 %epil.iter180.cmp.not, label %._crit_edge79.us.4.preheader, label %._crit_edge79.us.3.epil, !llvm.loop !83

._crit_edge79.us.4.preheader:                     ; preds = %._crit_edge79.us.3.epil, %._crit_edge79.us.4.preheader.unr-lcssa
  br i1 %i.dc, label %._crit_edge79.us.4.epil.preheader, label %._crit_edge79.us.4

._crit_edge79.us.4:                               ; preds = %._crit_edge79.us.4.preheader, %._crit_edge79.us.4
  %indvars.iv109.5 = phi i64 [ %indvars.iv.next110.5.3, %._crit_edge79.us.4 ], [ 0, %._crit_edge79.us.4.preheader ] ; 9 uses
  %niter190 = phi i64 [ %niter190.next.3, %._crit_edge79.us.4 ], [ 0, %._crit_edge79.us.4.preheader ]
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.5
  %i.mm = load ptr, ptr %i.ml, align 16, !tbaa !52
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %i.dl
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 20
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !41
  %i.mq = sub nuw nsw i64 11, %indvars.iv109.5
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.mq
  store i32 %i.mp, ptr %i.mr, align 4, !tbaa !41
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.5
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !52
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %i.dl
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 20
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !41
  %i.my = sub nuw nsw i64 10, %indvars.iv109.5
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.my
  store i32 %i.mx, ptr %i.mz, align 8, !tbaa !41
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.5
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  %i.nc = load ptr, ptr %i.nb, align 16, !tbaa !52
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %i.dl
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 20
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !41
  %i.ng = sub nuw nsw i64 9, %indvars.iv109.5
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ng
  store i32 %i.nf, ptr %i.nh, align 4, !tbaa !41
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.5
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 24
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !52
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.dl
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 20
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !41
  %i.no = sub nuw nsw i64 8, %indvars.iv109.5
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.no
  store i32 %i.nn, ptr %i.np, align 16, !tbaa !41
  %indvars.iv.next110.5.3 = add nuw nsw i64 %indvars.iv109.5, 4 ; 2 uses
  %niter190.next.3 = add i64 %niter190, 4         ; 2 uses
  %niter190.ncmp.3 = icmp eq i64 %niter190.next.3, %unroll_iter189
  br i1 %niter190.ncmp.3, label %._crit_edge79.us.5.preheader.unr-lcssa, label %._crit_edge79.us.4, !llvm.loop !76

._crit_edge79.us.5.preheader.unr-lcssa:           ; preds = %._crit_edge79.us.4
  br i1 %lcmp.mod187.not, label %._crit_edge79.us.5.preheader, label %._crit_edge79.us.4.epil.preheader

._crit_edge79.us.4.epil.preheader:                ; preds = %._crit_edge79.us.5.preheader.unr-lcssa, %._crit_edge79.us.4.preheader
  %indvars.iv109.5.epil.init = phi i64 [ 0, %._crit_edge79.us.4.preheader ], [ %indvars.iv.next110.5.3, %._crit_edge79.us.5.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod188)
  br label %._crit_edge79.us.4.epil

._crit_edge79.us.4.epil:                          ; preds = %._crit_edge79.us.4.epil, %._crit_edge79.us.4.epil.preheader
  %indvars.iv109.5.epil = phi i64 [ %indvars.iv.next110.5.epil, %._crit_edge79.us.4.epil ], [ %indvars.iv109.5.epil.init, %._crit_edge79.us.4.epil.preheader ] ; 3 uses
  %epil.iter186 = phi i64 [ %epil.iter186.next, %._crit_edge79.us.4.epil ], [ 0, %._crit_edge79.us.4.epil.preheader ]
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.5.epil
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !52
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %i.dl
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 20
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !41
  %i.nv = sub nuw nsw i64 11, %indvars.iv109.5.epil
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.nv
  store i32 %i.nu, ptr %i.nw, align 4, !tbaa !41
  %indvars.iv.next110.5.epil = add nuw nsw i64 %indvars.iv109.5.epil, 1
  %epil.iter186.next = add i64 %epil.iter186, 1   ; 2 uses
  %epil.iter186.cmp.not = icmp eq i64 %epil.iter186.next, %xtraiter185
  br i1 %epil.iter186.cmp.not, label %._crit_edge79.us.5.preheader, label %._crit_edge79.us.4.epil, !llvm.loop !84

._crit_edge79.us.5.preheader:                     ; preds = %._crit_edge79.us.4.epil, %._crit_edge79.us.5.preheader.unr-lcssa
  br i1 %i.df, label %._crit_edge79.us.5.epil.preheader, label %._crit_edge79.us.5

._crit_edge79.us.5:                               ; preds = %._crit_edge79.us.5.preheader, %._crit_edge79.us.5
  %indvars.iv109.6 = phi i64 [ %indvars.iv.next110.6.3, %._crit_edge79.us.5 ], [ 0, %._crit_edge79.us.5.preheader ] ; 9 uses
  %niter196 = phi i64 [ %niter196.next.3, %._crit_edge79.us.5 ], [ 0, %._crit_edge79.us.5.preheader ]
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.6
  %i.ny = load ptr, ptr %i.nx, align 16, !tbaa !52
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %i.dl
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 24
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !41
  %i.oc = sub nuw nsw i64 7, %indvars.iv109.6
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.oc
  store i32 %i.ob, ptr %i.od, align 4, !tbaa !41
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.6
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !52
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.dl
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 24
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !41
  %i.ok = sub nuw nsw i64 6, %indvars.iv109.6
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ok
  store i32 %i.oj, ptr %i.ol, align 8, !tbaa !41
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.6
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %i.oo = load ptr, ptr %i.on, align 16, !tbaa !52
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %i.dl
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 24
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !41
  %i.os = sub nuw nsw i64 5, %indvars.iv109.6
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.os
  store i32 %i.or, ptr %i.ot, align 4, !tbaa !41
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.6
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 24
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !52
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %i.dl
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 24
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !41
  %i.pa = sub nuw nsw i64 4, %indvars.iv109.6
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pa
  store i32 %i.oz, ptr %i.pb, align 16, !tbaa !41
  %indvars.iv.next110.6.3 = add nuw nsw i64 %indvars.iv109.6, 4 ; 2 uses
  %niter196.next.3 = add i64 %niter196, 4         ; 2 uses
  %niter196.ncmp.3 = icmp eq i64 %niter196.next.3, %unroll_iter195
  br i1 %niter196.ncmp.3, label %._crit_edge79.us.6.preheader.unr-lcssa, label %._crit_edge79.us.5, !llvm.loop !76

._crit_edge79.us.6.preheader.unr-lcssa:           ; preds = %._crit_edge79.us.5
  br i1 %lcmp.mod193.not, label %._crit_edge79.us.6.preheader, label %._crit_edge79.us.5.epil.preheader

._crit_edge79.us.5.epil.preheader:                ; preds = %._crit_edge79.us.6.preheader.unr-lcssa, %._crit_edge79.us.5.preheader
  %indvars.iv109.6.epil.init = phi i64 [ 0, %._crit_edge79.us.5.preheader ], [ %indvars.iv.next110.6.3, %._crit_edge79.us.6.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod194)
  br label %._crit_edge79.us.5.epil

._crit_edge79.us.5.epil:                          ; preds = %._crit_edge79.us.5.epil, %._crit_edge79.us.5.epil.preheader
  %indvars.iv109.6.epil = phi i64 [ %indvars.iv.next110.6.epil, %._crit_edge79.us.5.epil ], [ %indvars.iv109.6.epil.init, %._crit_edge79.us.5.epil.preheader ] ; 3 uses
  %epil.iter192 = phi i64 [ %epil.iter192.next, %._crit_edge79.us.5.epil ], [ 0, %._crit_edge79.us.5.epil.preheader ]
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.6.epil
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !52
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.dl
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 24
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !41
  %i.ph = sub nuw nsw i64 7, %indvars.iv109.6.epil
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ph
  store i32 %i.pg, ptr %i.pi, align 4, !tbaa !41
  %indvars.iv.next110.6.epil = add nuw nsw i64 %indvars.iv109.6.epil, 1
  %epil.iter192.next = add i64 %epil.iter192, 1   ; 2 uses
  %epil.iter192.cmp.not = icmp eq i64 %epil.iter192.next, %xtraiter191
  br i1 %epil.iter192.cmp.not, label %._crit_edge79.us.6.preheader, label %._crit_edge79.us.5.epil, !llvm.loop !85

._crit_edge79.us.6.preheader:                     ; preds = %._crit_edge79.us.5.epil, %._crit_edge79.us.6.preheader.unr-lcssa
  br i1 %i.di, label %._crit_edge79.us.6.epil.preheader, label %._crit_edge79.us.6

._crit_edge79.us.6:                               ; preds = %._crit_edge79.us.6.preheader, %._crit_edge79.us.6
  %indvars.iv109.7 = phi i64 [ %indvars.iv.next110.7.3, %._crit_edge79.us.6 ], [ 0, %._crit_edge79.us.6.preheader ] ; 8 uses
  %niter202 = phi i64 [ %niter202.next.3, %._crit_edge79.us.6 ], [ 0, %._crit_edge79.us.6.preheader ]
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.7
  %i.pk = load ptr, ptr %i.pj, align 16, !tbaa !52
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %i.dl
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 28
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !41
  %i.po = sub nuw nsw i64 3, %indvars.iv109.7
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.po
  store i32 %i.pn, ptr %i.pp, align 4, !tbaa !41
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.7
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !52
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %i.dl
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 28
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !41
  %i.pw = sub nuw nsw i64 2, %indvars.iv109.7
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pw
  store i32 %i.pv, ptr %i.px, align 8, !tbaa !41
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.7
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.qa = load ptr, ptr %i.pz, align 16, !tbaa !52
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %i.dl
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 28
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !41
  %i.qe = sub nuw nsw i64 1, %indvars.iv109.7
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.qe
  store i32 %i.qd, ptr %i.qf, align 4, !tbaa !41
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.7
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 24
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !52
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %i.dl
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 28
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !41
  %indvars.iv.next110.7.3 = add nuw nsw i64 %indvars.iv109.7, 4 ; 2 uses
  %niter202.next.3 = add i64 %niter202, 4         ; 2 uses
  %niter202.ncmp.3 = icmp eq i64 %niter202.next.3, %unroll_iter201
  br i1 %niter202.ncmp.3, label %._crit_edge79.us.7.unr-lcssa, label %._crit_edge79.us.6, !llvm.loop !76

._crit_edge79.us.7.unr-lcssa:                     ; preds = %._crit_edge79.us.6
  store i32 %i.ql, ptr %i.a, align 16, !tbaa !41
  br i1 %lcmp.mod199.not, label %._crit_edge79.us.7, label %._crit_edge79.us.6.epil.preheader

._crit_edge79.us.6.epil.preheader:                ; preds = %._crit_edge79.us.7.unr-lcssa, %._crit_edge79.us.6.preheader
  %indvars.iv109.7.epil.init = phi i64 [ 0, %._crit_edge79.us.6.preheader ], [ %indvars.iv.next110.7.3, %._crit_edge79.us.7.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod200)
  br label %._crit_edge79.us.6.epil

._crit_edge79.us.6.epil:                          ; preds = %._crit_edge79.us.6.epil, %._crit_edge79.us.6.epil.preheader
  %indvars.iv109.7.epil = phi i64 [ %indvars.iv.next110.7.epil, %._crit_edge79.us.6.epil ], [ %indvars.iv109.7.epil.init, %._crit_edge79.us.6.epil.preheader ] ; 3 uses
  %epil.iter198 = phi i64 [ %epil.iter198.next, %._crit_edge79.us.6.epil ], [ 0, %._crit_edge79.us.6.epil.preheader ]
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv109.7.epil
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !52
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %i.dl
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 28
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !41
  %i.qr = sub nuw nsw i64 3, %indvars.iv109.7.epil
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.qr
  store i32 %i.qq, ptr %i.qs, align 4, !tbaa !41
  %indvars.iv.next110.7.epil = add nuw nsw i64 %indvars.iv109.7.epil, 1
  %epil.iter198.next = add i64 %epil.iter198, 1   ; 2 uses
  %epil.iter198.cmp.not = icmp eq i64 %epil.iter198.next, %xtraiter197
  br i1 %epil.iter198.cmp.not, label %._crit_edge79.us.7, label %._crit_edge79.us.6.epil, !llvm.loop !86

._crit_edge79.us.7:                               ; preds = %._crit_edge79.us.6.epil, %._crit_edge79.us.7.unr-lcssa
  call void @transpose32a(ptr noundef nonnull %i.a)
  br label %bb.f

.split82:                                         ; preds = %.lr.ph88, %bb.i
  %.15486 = phi i32 [ %i.sp, %bb.i ], [ 0, %.lr.ph88 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  call void @transpose32a(ptr noundef nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %.split82, %bb.h
  %indvars.iv104 = phi i64 [ 0, %.split82 ], [ %indvars.iv.next105, %bb.h ] ; 2 uses
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv104
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !41 ; 8 uses
  %i.qv = and i32 %i.qu, 15
  %i.qw = zext nneg i32 %i.qv to i64
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.qw ; 2 uses
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !41
  %i.qz = add nsw i32 %i.qy, 1
  store i32 %i.qz, ptr %i.qx, align 4, !tbaa !41
  %i.ra = lshr i32 %i.qu, 4
  %i.rb = and i32 %i.ra, 15
  %i.rc = zext nneg i32 %i.rb to i64
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.rc ; 2 uses
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !41
  %i.rf = add nsw i32 %i.re, 1
  store i32 %i.rf, ptr %i.rd, align 4, !tbaa !41
  %i.rg = lshr i32 %i.qu, 8
  %i.rh = and i32 %i.rg, 15
  %i.ri = zext nneg i32 %i.rh to i64
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ri ; 2 uses
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !41
  %i.rl = add nsw i32 %i.rk, 1
  store i32 %i.rl, ptr %i.rj, align 4, !tbaa !41
  %i.rm = lshr i32 %i.qu, 12
  %i.rn = and i32 %i.rm, 15
  %i.ro = zext nneg i32 %i.rn to i64
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ro ; 2 uses
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !41
  %i.rr = add nsw i32 %i.rq, 1
  store i32 %i.rr, ptr %i.rp, align 4, !tbaa !41
  %i.rs = lshr i32 %i.qu, 16
  %i.rt = and i32 %i.rs, 15
  %i.ru = zext nneg i32 %i.rt to i64
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ru ; 2 uses
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !41
  %i.rx = add nsw i32 %i.rw, 1
  store i32 %i.rx, ptr %i.rv, align 4, !tbaa !41
  %i.ry = lshr i32 %i.qu, 20
  %i.rz = and i32 %i.ry, 15
  %i.sa = zext nneg i32 %i.rz to i64
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.sa ; 2 uses
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !41
  %i.sd = add nsw i32 %i.sc, 1
  store i32 %i.sd, ptr %i.sb, align 4, !tbaa !41
  %i.se = lshr i32 %i.qu, 24
  %i.sf = and i32 %i.se, 15
  %i.sg = zext nneg i32 %i.sf to i64
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.sg ; 2 uses
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !41
  %i.sj = add nsw i32 %i.si, 1
  store i32 %i.sj, ptr %i.sh, align 4, !tbaa !41
  %i.sk = lshr i32 %i.qu, 28
  %i.sl = zext nneg i32 %i.sk to i64
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.sl ; 2 uses
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !41
  %i.so = add nsw i32 %i.sn, 1
  store i32 %i.so, ptr %i.sm, align 4, !tbaa !41
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %exitcond107.not = icmp eq i64 %indvars.iv.next105, 32
  br i1 %exitcond107.not, label %bb.i, label %bb.h, !llvm.loop !78

bb.i:                                             ; preds = %bb.h
  %i.sp = add nuw nsw i32 %.15486, 1              ; 2 uses
  %exitcond108.not = icmp eq i32 %i.sp, %i.ci
  br i1 %exitcond108.not, label %.loopexit, label %.split82, !llvm.loop !79

.loopexit:                                        ; preds = %.split.us.us, %bb.i, %bb.g, %.preheader63, %.preheader62.lr.ph.split, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Fra_ClausSelectClauses(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !87   ; 2 uses
  %i.c = shl nsw i32 %i.b, 5                      ; 3 uses
  %i.d = or disjoint i32 %i.c, 1                  ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 2
  %calloc = tail call ptr @calloc(i64 1, i64 %i.f) ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !88   ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 4        ; 2 uses
  %.val50 = load i32, ptr %i.i, align 4, !tbaa !89 ; 5 uses
  %i.j = icmp sgt i32 %.val50, 0                  ; 2 uses
  br i1 %i.j, label %.lr.ph, label %.critedge.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.h, i64 8
  %.val52 = load ptr, ptr %i.k, align 8, !tbaa !91 ; 3 uses
  %wide.trip.count = zext nneg i32 %.val50 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.l = icmp eq i32 %.val50, 1
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

.critedge.preheader.loopexit.unr-lcssa:           ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.critedge.preheader.loopexit.unr-lcssa ]
  %lcmp.mod79 = trunc i32 %.val50 to i1
  tail call void @llvm.assume(i1 %lcmp.mod79)
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.val52, i64 %indvars.iv.epil.init
  %i.n = load i32, ptr %i.m, align 4, !tbaa !41   ; 2 uses
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %.critedge.preheader, label %bb.b

bb.b:                                             ; preds = %.epil.preheader
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !41
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !41
  br label %.critedge.preheader

.critedge.preheader:                              ; preds = %.critedge.preheader.loopexit.unr-lcssa, %bb.b, %.epil.preheader, %bb.a
  %i.t = icmp sgt i32 %i.b, 0
  br i1 %i.t, label %.lr.ph60, label %._crit_edge

.lr.ph60:                                         ; preds = %.critedge.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !92
  %i.w = zext nneg i32 %i.c to i64
  br label %bb.h

bb.c:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.g ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.val52, i64 %indvars.iv
  %i.y = load i32, ptr %i.x, align 4, !tbaa !41   ; 2 uses
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !41
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.val52, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !41 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = sext i32 %i.ag to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !41
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !41
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.preheader.loopexit.unr-lcssa, label %bb.c, !llvm.loop !93

bb.h:                                             ; preds = %.lr.ph60, %.critedge
  %indvars.iv70 = phi i64 [ %i.w, %.lr.ph60 ], [ %indvars.iv.next71, %.critedge ] ; 3 uses
  %.04358 = phi i32 [ 0, %.lr.ph60 ], [ %i.ao, %.critedge ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %indvars.iv70
  %i.an = load i32, ptr %i.am, align 4, !tbaa !41
  %i.ao = add nsw i32 %i.an, %.04358              ; 2 uses
  %.not = icmp slt i32 %i.ao, %i.v
  %i.ap = trunc nuw i64 %indvars.iv70 to i32      ; 2 uses
  br i1 %.not, label %.critedge, label %._crit_edge

.critedge:                                        ; preds = %bb.h
  %indvars.iv.next71 = add nsw i64 %indvars.iv70, -1
  %i.aq = icmp sgt i32 %i.ap, 1
  br i1 %i.aq, label %bb.h, label %._crit_edge, !llvm.loop !94
end_hunk_1
