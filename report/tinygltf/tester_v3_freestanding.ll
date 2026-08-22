Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tester_v3_freestanding?download=true
inline.NumInlined: 906
inline.NumDeleted: 109
loop-unroll.NumCompletelyUnrolled: 183
loop-unroll.NumRuntimeUnrolled: 103
loop-unroll.NumUnrolled: 287
begin_hunk_0_@tg3json__stringify_value_ex:bb.a

.lr.ph142.i:                                      ; preds = %.preheader134.i, %.lr.ph142.i
  %.190141.i = phi i32 [ %i.fy, %.lr.ph142.i ], [ %.089.lcssa.i, %.preheader134.i ]
  %.194140.i = phi x86_fp80 [ %i.fx, %.lr.ph142.i ], [ %.093.lcssa.i, %.preheader134.i ]
  %i.fx = fmul nnan x86_fp80 %.194140.i, 1.000000e-01 ; 3 uses
  %i.fy = add nuw nsw i32 %.190141.i, 1           ; 2 uses
  %i.fz = fcmp ult x86_fp80 %i.fx, 1.000000e+01
  br i1 %i.fz, label %.preheader133.i, label %.lr.ph142.i, !llvm.loop !113

.preheader132.i:                                  ; preds = %.lr.ph147.i, %.preheader133.i
  %.295.lcssa.i = phi x86_fp80 [ %.194.lcssa.i, %.preheader133.i ], [ %i.kt, %.lr.ph147.i ] ; 2 uses
  %.291.lcssa.i = phi i32 [ %.190.lcssa.i, %.preheader133.i ], [ %i.ku, %.lr.ph147.i ] ; 7 uses
  %i.ga = fptosi x86_fp80 %.295.lcssa.i to i32
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.ga, i32 0)
  %spec.store.select1.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.i, i32 9) ; 2 uses
  %i.gb = trunc nuw nsw i32 %spec.store.select1.i to i8
  %i.gc = or disjoint i8 %i.gb, 48
  store i8 %i.gc, ptr %i.a, align 16, !tbaa !12
  %i.gd = uitofp nneg i32 %spec.store.select1.i to x86_fp80
  %i.ge = fsub x86_fp80 %.295.lcssa.i, %i.gd
  %i.gf = fmul x86_fp80 %i.ge, 1.000000e+01       ; 2 uses
  %i.gg = fptosi x86_fp80 %i.gf to i32
  %spec.store.select.1.i = tail call i32 @llvm.smax.i32(i32 %i.gg, i32 0)
  %spec.store.select1.1.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.1.i, i32 9) ; 2 uses
  %i.gh = trunc nuw nsw i32 %spec.store.select1.1.i to i8
  %i.gi = or disjoint i8 %i.gh, 48
  %i.gj = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store i8 %i.gi, ptr %i.gj, align 1, !tbaa !12
  %i.gk = uitofp nneg i32 %spec.store.select1.1.i to x86_fp80
  %i.gl = fsub x86_fp80 %i.gf, %i.gk
  %i.gm = fmul x86_fp80 %i.gl, 1.000000e+01       ; 2 uses
  %i.gn = fptosi x86_fp80 %i.gm to i32
  %spec.store.select.2.i = tail call i32 @llvm.smax.i32(i32 %i.gn, i32 0)
  %spec.store.select1.2.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.2.i, i32 9) ; 2 uses
  %i.go = trunc nuw nsw i32 %spec.store.select1.2.i to i8
  %i.gp = or disjoint i8 %i.go, 48
  %i.gq = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store i8 %i.gp, ptr %i.gq, align 2, !tbaa !12
  %i.gr = uitofp nneg i32 %spec.store.select1.2.i to x86_fp80
  %i.gs = fsub x86_fp80 %i.gm, %i.gr
  %i.gt = fmul x86_fp80 %i.gs, 1.000000e+01       ; 2 uses
  %i.gu = fptosi x86_fp80 %i.gt to i32
  %spec.store.select.3.i = tail call i32 @llvm.smax.i32(i32 %i.gu, i32 0)
  %spec.store.select1.3.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.3.i, i32 9) ; 2 uses
  %i.gv = trunc nuw nsw i32 %spec.store.select1.3.i to i8
  %i.gw = or disjoint i8 %i.gv, 48
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  store i8 %i.gw, ptr %i.gx, align 1, !tbaa !12
  %i.gy = uitofp nneg i32 %spec.store.select1.3.i to x86_fp80
  %i.gz = fsub x86_fp80 %i.gt, %i.gy
  %i.ha = fmul x86_fp80 %i.gz, 1.000000e+01       ; 2 uses
  %i.hb = fptosi x86_fp80 %i.ha to i32
  %spec.store.select.4.i = tail call i32 @llvm.smax.i32(i32 %i.hb, i32 0)
  %spec.store.select1.4.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.4.i, i32 9) ; 2 uses
  %i.hc = trunc nuw nsw i32 %spec.store.select1.4.i to i8
  %i.hd = or disjoint i8 %i.hc, 48
  %i.he = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i8 %i.hd, ptr %i.he, align 4, !tbaa !12
  %i.hf = uitofp nneg i32 %spec.store.select1.4.i to x86_fp80
  %i.hg = fsub x86_fp80 %i.ha, %i.hf
  %i.hh = fmul x86_fp80 %i.hg, 1.000000e+01       ; 2 uses
  %i.hi = fptosi x86_fp80 %i.hh to i32
  %spec.store.select.5.i = tail call i32 @llvm.smax.i32(i32 %i.hi, i32 0)
  %spec.store.select1.5.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.5.i, i32 9) ; 2 uses
  %i.hj = trunc nuw nsw i32 %spec.store.select1.5.i to i8
  %i.hk = or disjoint i8 %i.hj, 48
  %i.hl = getelementptr inbounds nuw i8, ptr %i.a, i64 5 ; 2 uses
  store i8 %i.hk, ptr %i.hl, align 1, !tbaa !12
  %i.hm = uitofp nneg i32 %spec.store.select1.5.i to x86_fp80
  %i.hn = fsub x86_fp80 %i.hh, %i.hm
  %i.ho = fmul x86_fp80 %i.hn, 1.000000e+01       ; 2 uses
  %i.hp = fptosi x86_fp80 %i.ho to i32
  %spec.store.select.6.i = tail call i32 @llvm.smax.i32(i32 %i.hp, i32 0)
  %spec.store.select1.6.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.6.i, i32 9) ; 2 uses
  %i.hq = trunc nuw nsw i32 %spec.store.select1.6.i to i8
  %i.hr = or disjoint i8 %i.hq, 48
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  store i8 %i.hr, ptr %i.hs, align 2, !tbaa !12
  %i.ht = uitofp nneg i32 %spec.store.select1.6.i to x86_fp80
  %i.hu = fsub x86_fp80 %i.ho, %i.ht
  %i.hv = fmul x86_fp80 %i.hu, 1.000000e+01       ; 2 uses
  %i.hw = fptosi x86_fp80 %i.hv to i32
  %spec.store.select.7.i = tail call i32 @llvm.smax.i32(i32 %i.hw, i32 0)
  %spec.store.select1.7.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.7.i, i32 9) ; 2 uses
  %i.hx = trunc nuw nsw i32 %spec.store.select1.7.i to i8
  %i.hy = or disjoint i8 %i.hx, 48
  %i.hz = getelementptr inbounds nuw i8, ptr %i.a, i64 7 ; 2 uses
  store i8 %i.hy, ptr %i.hz, align 1, !tbaa !12
  %i.ia = uitofp nneg i32 %spec.store.select1.7.i to x86_fp80
  %i.ib = fsub x86_fp80 %i.hv, %i.ia
  %i.ic = fmul x86_fp80 %i.ib, 1.000000e+01       ; 2 uses
  %i.id = fptosi x86_fp80 %i.ic to i32
  %spec.store.select.8.i = tail call i32 @llvm.smax.i32(i32 %i.id, i32 0)
  %spec.store.select1.8.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.8.i, i32 9) ; 2 uses
  %i.ie = trunc nuw nsw i32 %spec.store.select1.8.i to i8
  %i.if = or disjoint i8 %i.ie, 48
  %i.ig = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i8 %i.if, ptr %i.ig, align 8, !tbaa !12
  %i.ih = uitofp nneg i32 %spec.store.select1.8.i to x86_fp80
  %i.ii = fsub x86_fp80 %i.ic, %i.ih
  %i.ij = fmul x86_fp80 %i.ii, 1.000000e+01       ; 2 uses
  %i.ik = fptosi x86_fp80 %i.ij to i32
  %spec.store.select.9.i = tail call i32 @llvm.smax.i32(i32 %i.ik, i32 0)
  %spec.store.select1.9.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.9.i, i32 9) ; 2 uses
  %i.il = trunc nuw nsw i32 %spec.store.select1.9.i to i8
  %i.im = or disjoint i8 %i.il, 48
  %i.in = getelementptr inbounds nuw i8, ptr %i.a, i64 9 ; 2 uses
  store i8 %i.im, ptr %i.in, align 1, !tbaa !12
  %i.io = uitofp nneg i32 %spec.store.select1.9.i to x86_fp80
  %i.ip = fsub x86_fp80 %i.ij, %i.io
  %i.iq = fmul x86_fp80 %i.ip, 1.000000e+01       ; 2 uses
  %i.ir = fptosi x86_fp80 %i.iq to i32
  %spec.store.select.10.i = tail call i32 @llvm.smax.i32(i32 %i.ir, i32 0)
  %spec.store.select1.10.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.10.i, i32 9) ; 2 uses
  %i.is = trunc nuw nsw i32 %spec.store.select1.10.i to i8
  %i.it = or disjoint i8 %i.is, 48
  %i.iu = getelementptr inbounds nuw i8, ptr %i.a, i64 10 ; 2 uses
  store i8 %i.it, ptr %i.iu, align 2, !tbaa !12
  %i.iv = uitofp nneg i32 %spec.store.select1.10.i to x86_fp80
  %i.iw = fsub x86_fp80 %i.iq, %i.iv
  %i.ix = fmul x86_fp80 %i.iw, 1.000000e+01       ; 2 uses
  %i.iy = fptosi x86_fp80 %i.ix to i32
  %spec.store.select.11.i = tail call i32 @llvm.smax.i32(i32 %i.iy, i32 0)
  %spec.store.select1.11.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.11.i, i32 9) ; 2 uses
  %i.iz = trunc nuw nsw i32 %spec.store.select1.11.i to i8
  %i.ja = or disjoint i8 %i.iz, 48
  %i.jb = getelementptr inbounds nuw i8, ptr %i.a, i64 11 ; 2 uses
  store i8 %i.ja, ptr %i.jb, align 1, !tbaa !12
  %i.jc = uitofp nneg i32 %spec.store.select1.11.i to x86_fp80
  %i.jd = fsub x86_fp80 %i.ix, %i.jc
  %i.je = fmul x86_fp80 %i.jd, 1.000000e+01       ; 2 uses
  %i.jf = fptosi x86_fp80 %i.je to i32
  %spec.store.select.12.i = tail call i32 @llvm.smax.i32(i32 %i.jf, i32 0)
  %spec.store.select1.12.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.12.i, i32 9) ; 2 uses
  %i.jg = trunc nuw nsw i32 %spec.store.select1.12.i to i8
  %i.jh = or disjoint i8 %i.jg, 48
  %i.ji = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store i8 %i.jh, ptr %i.ji, align 4, !tbaa !12
  %i.jj = uitofp nneg i32 %spec.store.select1.12.i to x86_fp80
  %i.jk = fsub x86_fp80 %i.je, %i.jj
  %i.jl = fmul x86_fp80 %i.jk, 1.000000e+01       ; 2 uses
  %i.jm = fptosi x86_fp80 %i.jl to i32
  %spec.store.select.13.i = tail call i32 @llvm.smax.i32(i32 %i.jm, i32 0)
  %spec.store.select1.13.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.13.i, i32 9) ; 2 uses
  %i.jn = trunc nuw nsw i32 %spec.store.select1.13.i to i8
  %i.jo = or disjoint i8 %i.jn, 48
  %i.jp = getelementptr inbounds nuw i8, ptr %i.a, i64 13 ; 2 uses
  store i8 %i.jo, ptr %i.jp, align 1, !tbaa !12
  %i.jq = uitofp nneg i32 %spec.store.select1.13.i to x86_fp80
  %i.jr = fsub x86_fp80 %i.jl, %i.jq
  %i.js = fmul x86_fp80 %i.jr, 1.000000e+01       ; 2 uses
  %i.jt = fptosi x86_fp80 %i.js to i32
  %spec.store.select.14.i = tail call i32 @llvm.smax.i32(i32 %i.jt, i32 0)
  %spec.store.select1.14.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.14.i, i32 9) ; 2 uses
  %i.ju = trunc nuw nsw i32 %spec.store.select1.14.i to i8
  %i.jv = or disjoint i8 %i.ju, 48
  %i.jw = getelementptr inbounds nuw i8, ptr %i.a, i64 14 ; 2 uses
  store i8 %i.jv, ptr %i.jw, align 2, !tbaa !12
  %i.jx = uitofp nneg i32 %spec.store.select1.14.i to x86_fp80
  %i.jy = fsub x86_fp80 %i.js, %i.jx
  %i.jz = fmul x86_fp80 %i.jy, 1.000000e+01       ; 2 uses
  %i.ka = fptosi x86_fp80 %i.jz to i32
  %spec.store.select.15.i = tail call i32 @llvm.smax.i32(i32 %i.ka, i32 0)
  %spec.store.select1.15.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.15.i, i32 9) ; 2 uses
  %i.kb = trunc nuw nsw i32 %spec.store.select1.15.i to i8
  %i.kc = or disjoint i8 %i.kb, 48
  %i.kd = getelementptr inbounds nuw i8, ptr %i.a, i64 15 ; 2 uses
  store i8 %i.kc, ptr %i.kd, align 1, !tbaa !12
  %i.ke = uitofp nneg i32 %spec.store.select1.15.i to x86_fp80
  %i.kf = fsub x86_fp80 %i.jz, %i.ke
  %i.kg = fmul x86_fp80 %i.kf, 1.000000e+01       ; 2 uses
  %i.kh = fptosi x86_fp80 %i.kg to i32
  %spec.store.select.16.i = tail call i32 @llvm.smax.i32(i32 %i.kh, i32 0)
  %spec.store.select1.16.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.16.i, i32 9) ; 2 uses
  %i.ki = trunc nuw nsw i32 %spec.store.select1.16.i to i8
  %i.kj = or disjoint i8 %i.ki, 48                ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i8 %i.kj, ptr %i.kk, align 16, !tbaa !12
  %i.kl = uitofp nneg i32 %spec.store.select1.16.i to x86_fp80
  %i.km = fsub x86_fp80 %i.kg, %i.kl
  %i.kn = fmul x86_fp80 %i.km, 1.000000e+01
  %i.ko = fptosi x86_fp80 %i.kn to i32
  %spec.store.select.17.i = tail call i32 @llvm.smax.i32(i32 %i.ko, i32 0)
  %spec.store.select1.17.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.17.i, i32 9)
  %i.kp = trunc nuw nsw i32 %spec.store.select1.17.i to i8
  %i.kq = or disjoint i8 %i.kp, 48                ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 %i.kq, ptr %i.kr, align 1, !tbaa !12
  %i.ks = icmp samesign ugt i8 %i.kq, 52
  br i1 %i.ks, label %.preheader.i171, label %bb.t

.lr.ph147.i:                                      ; preds = %.preheader133.i, %.lr.ph147.i
  %.291146.i = phi i32 [ %i.ku, %.lr.ph147.i ], [ %.190.lcssa.i, %.preheader133.i ]
  %.295145.i = phi x86_fp80 [ %i.kt, %.lr.ph147.i ], [ %.194.lcssa.i, %.preheader133.i ]
  %i.kt = fmul nnan x86_fp80 %.295145.i, 1.000000e+01 ; 3 uses
  %i.ku = add nsw i32 %.291146.i, -1              ; 2 uses
  %i.kv = fcmp olt x86_fp80 %i.kt, 1.000000e+00
  br i1 %i.kv, label %.lr.ph147.i, label %.preheader132.i, !llvm.loop !114

.preheader.i171:                                  ; preds = %.preheader132.i, %.preheader.i171
  %indvars.iv.i172 = phi i64 [ %indvars.iv.next.i173, %.preheader.i171 ], [ 16, %.preheader132.i ] ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i172 ; 2 uses
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !12  ; 2 uses
  %i.ky = icmp eq i8 %i.kx, 57                    ; 3 uses
  %i.kz = add i8 %i.kx, 1
  %storemerge.i = select i1 %i.ky, i8 48, i8 %i.kz
  store i8 %storemerge.i, ptr %i.kw, align 1, !tbaa !12
  %indvars.iv.next.i173 = add nsw i64 %indvars.iv.i172, -1
  %i.la = icmp ne i64 %indvars.iv.i172, 0
  %i.lb = and i1 %i.la, %i.ky
  br i1 %i.lb, label %.preheader.i171, label %bb.s, !llvm.loop !115

bb.s:                                             ; preds = %.preheader.i171
  br i1 %i.ky, label %.thread, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.s
  %.pre.i = load i8, ptr %i.kk, align 16, !tbaa !12
  br label %bb.t

.thread:                                          ; preds = %bb.s
  store <16 x i8> <i8 49, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48>, ptr %i.a, align 16, !tbaa !12
  store i8 48, ptr %i.kk, align 16, !tbaa !12
  %i.lc = add nsw i32 %.291.lcssa.i, 1
  br label %bb.y

bb.t:                                             ; preds = %._crit_edge.i, %.preheader132.i
  %i.ld = phi i8 [ %i.kj, %.preheader132.i ], [ %.pre.i, %._crit_edge.i ]
  %i.le = icmp eq i8 %i.ld, 48
  br i1 %i.le, label %bb.u, label %.critedge.i

bb.u:                                             ; preds = %bb.t
  %.pr = load i8, ptr %i.kd, align 1, !tbaa !12
  %i.lf = icmp eq i8 %.pr, 48
  br i1 %i.lf, label %bb.v, label %.critedge.i

bb.v:                                             ; preds = %bb.u
  %.pr309 = load i8, ptr %i.jw, align 2, !tbaa !12
  %i.lg = icmp eq i8 %.pr309, 48
  br i1 %i.lg, label %bb.w, label %.critedge.i

bb.w:                                             ; preds = %bb.v
  %.pr352 = load i8, ptr %i.jp, align 1, !tbaa !12
  %i.lh = icmp eq i8 %.pr352, 48
  br i1 %i.lh, label %bb.x, label %.critedge.i

bb.x:                                             ; preds = %bb.w
  %.pre = load i8, ptr %i.ji, align 4, !tbaa !12
  %i.li = icmp eq i8 %.pre, 48
  br i1 %i.li, label %bb.y, label %.critedge.i

bb.y:                                             ; preds = %.thread, %bb.x
  %.4177.i307312355425 = phi i32 [ %i.lc, %.thread ], [ %.291.lcssa.i, %bb.x ] ; 11 uses
  %i.lj = load i8, ptr %i.jb, align 1, !tbaa !12
  %i.lk = icmp eq i8 %i.lj, 48
  br i1 %i.lk, label %bb.z, label %.critedge.i

bb.z:                                             ; preds = %bb.y
  %i.ll = load i8, ptr %i.iu, align 2, !tbaa !12
  %i.lm = icmp eq i8 %i.ll, 48
  br i1 %i.lm, label %bb.aa, label %.critedge.i

bb.aa:                                            ; preds = %bb.z
  %i.ln = load i8, ptr %i.in, align 1, !tbaa !12
  %i.lo = icmp eq i8 %i.ln, 48
  br i1 %i.lo, label %bb.ab, label %.critedge.i

bb.ab:                                            ; preds = %bb.aa
  %i.lp = load i8, ptr %i.ig, align 8, !tbaa !12
  %i.lq = icmp eq i8 %i.lp, 48
  br i1 %i.lq, label %bb.ac, label %.critedge.i

bb.ac:                                            ; preds = %bb.ab
  %i.lr = load i8, ptr %i.hz, align 1, !tbaa !12
  %i.ls = icmp eq i8 %i.lr, 48
  br i1 %i.ls, label %bb.ad, label %.critedge.i

bb.ad:                                            ; preds = %bb.ac
  %i.lt = load i8, ptr %i.hs, align 2, !tbaa !12
  %i.lu = icmp eq i8 %i.lt, 48
  br i1 %i.lu, label %bb.ae, label %.critedge.i

bb.ae:                                            ; preds = %bb.ad
  %i.lv = load i8, ptr %i.hl, align 1, !tbaa !12
  %i.lw = icmp eq i8 %i.lv, 48
  br i1 %i.lw, label %bb.af, label %.critedge.i

bb.af:                                            ; preds = %bb.ae
  %i.lx = load i8, ptr %i.he, align 4, !tbaa !12
  %i.ly = icmp eq i8 %i.lx, 48
  br i1 %i.ly, label %bb.ag, label %.critedge.i

bb.ag:                                            ; preds = %bb.af
  %i.lz = load i8, ptr %i.gx, align 1, !tbaa !12
  %i.ma = icmp eq i8 %i.lz, 48
  br i1 %i.ma, label %bb.ah, label %.critedge.i

bb.ah:                                            ; preds = %bb.ag
  %i.mb = load i8, ptr %i.gq, align 2, !tbaa !12
  %i.mc = icmp eq i8 %i.mb, 48
  br i1 %i.mc, label %bb.ai, label %.critedge.i

bb.ai:                                            ; preds = %bb.ah
  %i.md = load i8, ptr %i.gj, align 1, !tbaa !12
  %i.me = icmp ne i8 %i.md, 48                    ; 2 uses
  %spec.select186.i = select i1 %i.me, i32 2, i32 1
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %.4176.i = phi i32 [ %.4177.i307312355425, %bb.ab ], [ %.291.lcssa.i, %bb.t ], [ %.291.lcssa.i, %bb.u ], [ %.4177.i307312355425, %bb.ai ], [ %.291.lcssa.i, %bb.v ], [ %.4177.i307312355425, %bb.ad ], [ %.291.lcssa.i, %bb.w ], [ %.4177.i307312355425, %bb.ah ], [ %.291.lcssa.i, %bb.x ], [ %.4177.i307312355425, %bb.ac ], [ %.4177.i307312355425, %bb.y ], [ %.4177.i307312355425, %bb.ag ], [ %.4177.i307312355425, %bb.z ], [ %.4177.i307312355425, %bb.ae ], [ %.4177.i307312355425, %bb.aa ], [ %.4177.i307312355425, %bb.af ] ; 2 uses
  %i.mf = phi i1 [ true, %bb.ab ], [ true, %bb.t ], [ true, %bb.u ], [ %i.me, %bb.ai ], [ true, %bb.v ], [ true, %bb.ad ], [ true, %bb.w ], [ true, %bb.ah ], [ true, %bb.x ], [ true, %bb.ac ], [ true, %bb.y ], [ true, %bb.ag ], [ true, %bb.z ], [ true, %bb.ae ], [ true, %bb.aa ], [ true, %bb.af ]
  %.088.lcssa.i = phi i32 [ 9, %bb.ab ], [ 17, %bb.t ], [ 16, %bb.u ], [ %spec.select186.i, %bb.ai ], [ 15, %bb.v ], [ 7, %bb.ad ], [ 14, %bb.w ], [ 3, %bb.ah ], [ 13, %bb.x ], [ 8, %bb.ac ], [ 12, %bb.y ], [ 4, %bb.ag ], [ 11, %bb.z ], [ 6, %bb.ae ], [ 10, %bb.aa ], [ 5, %bb.af ] ; 3 uses
  %i.mg = add i32 %.4176.i, 1
  %i.mh = sub i32 %i.mg, %.088.lcssa.i
  %i.mi = call fastcc ptr @tg3json__format_decimal_digits(ptr noundef %i.b, ptr noundef %i.a, i32 noundef %.088.lcssa.i, i32 noundef %i.mh, i32 noundef %i.ez) #20 ; 2 uses
  store i8 0, ptr %i.mi, align 1, !tbaa !12
  %i.mj = ptrtoint ptr %i.mi to i64
  %i.mk = ptrtoint ptr %i.b to i64
  %i.ml = sub i64 %i.mj, %i.mk                    ; 2 uses
  br i1 %i.mf, label %.lr.ph158.i, label %.loopexit.i

.lr.ph158.i:                                      ; preds = %.critedge.i
  %i.mm = ptrtoint ptr %i.c to i64
  %i.mn = add i32 %.4176.i, 2
  br label %bb.aj

bb.aj:                                            ; preds = %tg3json__memcpy_fallback.exit120.i, %.lr.ph158.i
  %.3157.in.i = phi i32 [ %.088.lcssa.i, %.lr.ph158.i ], [ %.3157.i, %tg3json__memcpy_fallback.exit120.i ] ; 3 uses
  %.083156.i = phi i64 [ %i.ml, %.lr.ph158.i ], [ %i.mt, %tg3json__memcpy_fallback.exit120.i ]
  %.3157.i = add nsw i32 %.3157.in.i, -1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store double 0.000000e+00, ptr %i.d, align 8, !tbaa !116
  %i.mo = sub i32 %i.mn, %.3157.in.i
  %i.mp = call fastcc ptr @tg3json__format_decimal_digits(ptr noundef %i.c, ptr noundef %i.a, i32 noundef %.3157.i, i32 noundef %i.mo, i32 noundef %i.ez) #20 ; 3 uses
  store i8 0, ptr %i.mp, align 1, !tbaa !12
  %i.mq = call fastcc i32 @tg3json__parse_f64_c(ptr noundef nonnull %i.c, ptr noundef nonnull %i.mp, ptr noundef %i.d) #20
  %.not100.i = icmp ne i32 %i.mq, 0
  %i.mr = load i64, ptr %i.d, align 8
  %.not131.i = icmp eq i64 %i.mr, %i.ex
  %or.cond.i = select i1 %.not100.i, i1 %.not131.i, i1 false
  br i1 %or.cond.i, label %bb.ak, label %tg3json__memcpy_fallback.exit120.thread.i

bb.ak:                                            ; preds = %bb.aj
  %i.ms = ptrtoint ptr %i.mp to i64
  %i.mt = sub i64 %i.ms, %i.mm                    ; 3 uses
  %i.mu = add i64 %i.mt, 1                        ; 11 uses
  %.not7.i.i = icmp eq i64 %i.mu, 0
  br i1 %.not7.i.i, label %tg3json__memcpy_fallback.exit120.i, label %iter.check

iter.check:                                       ; preds = %bb.ak
  %min.iters.check = icmp ult i64 %i.mu, 4
  br i1 %min.iters.check, label %.lr.ph.i115.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check460 = icmp ult i64 %i.mu, 32
  br i1 %min.iters.check460, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.mv = and i64 %i.mu, 28
  %n.vec = and i64 %i.mu, -32                     ; 5 uses
  %i.mw = getelementptr i8, ptr %i.c, i64 %n.vec
  %i.mx = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.my = and i64 %i.mu, 31
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.c, i64 %index ; 2 uses
  %next.gep461 = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %i.mz = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 16, !tbaa !12
  %wide.load462 = load <16 x i8>, ptr %i.mz, align 16, !tbaa !12
  %i.na = getelementptr i8, ptr %next.gep461, i64 16
  store <16 x i8> %wide.load, ptr %next.gep461, align 16, !tbaa !12
  store <16 x i8> %wide.load462, ptr %i.na, align 16, !tbaa !12
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.nb = icmp eq i64 %index.next, %n.vec
  br i1 %i.nb, label %middle.block, label %vector.body, !llvm.loop !118

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mu, %n.vec
  br i1 %cmp.n, label %tg3json__memcpy_fallback.exit120.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.mv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i115.i.preheader, label %vec.epilog.ph, !prof !36

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec465 = and i64 %i.mu, -4                   ; 4 uses
  %i.nc = getelementptr i8, ptr %i.c, i64 %n.vec465
  %i.nd = getelementptr i8, ptr %i.b, i64 %n.vec465
  %i.ne = and i64 %i.mu, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index466 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next470, %vec.epilog.vector.body ] ; 3 uses
  %next.gep467 = getelementptr i8, ptr %i.c, i64 %index466
  %next.gep468 = getelementptr i8, ptr %i.b, i64 %index466
  %wide.load469 = load <4 x i8>, ptr %next.gep467, align 4, !tbaa !12
  store <4 x i8> %wide.load469, ptr %next.gep468, align 4, !tbaa !12
  %index.next470 = add nuw i64 %index466, 4       ; 2 uses
  %i.nf = icmp eq i64 %index.next470, %n.vec465
  br i1 %i.nf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !119

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n471 = icmp eq i64 %i.mu, %n.vec465
  br i1 %cmp.n471, label %tg3json__memcpy_fallback.exit120.i, label %.lr.ph.i115.i.preheader

end_hunk_0
