Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/mpz?download=true
inline.NumInlined: 1746
inline.NumDeleted: 117
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN11mpz_managerILb1EE3gcdERK3mpzS3_RS1_:bb.a
  %.pre193 = load i8, ptr %i.da, align 4          ; 3 uses
  br i1 %i.ff, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZN11mpz_managerILb1EE3absER3mpz.exit87
  %i.fg = load i32, ptr %6, align 8, !tbaa !36
  %i.fh = load i32, ptr %7, align 8, !tbaa !36
  store i32 %i.fh, ptr %6, align 8, !tbaa !36
  store i32 %i.fg, ptr %7, align 8, !tbaa !36
  %i.fi = load ptr, ptr %i.cz, align 8, !tbaa !44
  %i.fj = load ptr, ptr %i.dd, align 8, !tbaa !44
  store ptr %i.fj, ptr %i.cz, align 8, !tbaa !44
  store ptr %i.fi, ptr %i.dd, align 8, !tbaa !44
  %i.fk = load i8, ptr %i.cw, align 4             ; 2 uses
  %i.fl = and i8 %i.fk, -4
  %i.fm = and i8 %.pre193, -4
  %i.fn = and i8 %.pre193, 3
  %i.fo = or disjoint i8 %i.fn, %i.fl
  store i8 %i.fo, ptr %i.cw, align 4
  %i.fp = and i8 %i.fk, 3
  %i.fq = or disjoint i8 %i.fm, %i.fp             ; 2 uses
  store i8 %i.fq, ptr %i.da, align 4
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %_ZN11mpz_managerILb1EE3absER3mpz.exit87
  %i.fr = phi i8 [ %i.fq, %bb.av ], [ %.pre193, %_ZN11mpz_managerILb1EE3absER3mpz.exit87 ] ; 2 uses
  %i.fs = and i8 %i.fr, 1
  %i.ft = icmp eq i8 %i.fs, 0
  br i1 %i.ft, label %.._crit_edge189_crit_edge, label %.lr.ph188

.._crit_edge189_crit_edge:                        ; preds = %bb.aw
  %.pre196 = load i8, ptr %i.cw, align 4
  br label %._crit_edge189

.lr.ph188:                                        ; preds = %bb.aw
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.pre194 = load ptr, ptr %i.cz, align 8, !tbaa !26
  %.pre195 = load ptr, ptr %i.dd, align 8, !tbaa !26
  br label %bb.bk

._crit_edge189:                                   ; preds = %bb.cx, %.._crit_edge189_crit_edge
  %i.fw = phi i8 [ %i.fr, %.._crit_edge189_crit_edge ], [ %i.ro, %bb.cx ]
  %i.fx = phi i8 [ %.pre196, %.._crit_edge189_crit_edge ], [ %i.rn, %bb.cx ] ; 3 uses
  %i.fy = and i8 %i.fx, 1
  %i.fz = icmp eq i8 %i.fy, 0
  br i1 %i.fz, label %bb.ax, label %.preheader

.preheader:                                       ; preds = %._crit_edge189
  %i.ga = load i32, ptr %7, align 8, !tbaa !27    ; 2 uses
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %.preheader.._crit_edge191_crit_edge, label %.lr.ph190

.preheader.._crit_edge191_crit_edge:              ; preds = %.preheader
  %.pre203 = load i32, ptr %6, align 8, !tbaa !36
  %.pre204 = load ptr, ptr %i.cz, align 8, !tbaa !44
  br label %._crit_edge191

.lr.ph190:                                        ; preds = %.preheader
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.bf

bb.ax:                                            ; preds = %._crit_edge189
  %i.ge = load i32, ptr %6, align 8, !tbaa !27    ; 5 uses
  %i.gf = load i32, ptr %7, align 8, !tbaa !27    ; 7 uses
  %i.gg = icmp eq i32 %i.ge, 0
  br i1 %i.gg, label %_Z5u_gcdjj.exit98, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gh = icmp eq i32 %i.gf, 0
  br i1 %i.gh, label %_Z5u_gcdjj.exit98, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gi = or i32 %i.gf, %i.ge                     ; 2 uses
  %i.gj = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ge, i1 true)
  %i.gk = lshr exact i32 %i.ge, %i.gj             ; 3 uses
  %i.gl = icmp eq i32 %i.gk, 1
  %i.gm = icmp eq i32 %i.gf, 1
  %or.cond.i88 = or i1 %i.gm, %i.gl
  br i1 %or.cond.i88, label %.loopexit.i93, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gn = icmp eq i32 %i.gk, %i.gf
  br i1 %i.gn, label %.loopexit.i93, label %.preheader.i89

.preheader.i89:                                   ; preds = %bb.ba, %.preheader.i89
  %.031.i90 = phi i32 [ %i.gu, %.preheader.i89 ], [ %i.gf, %bb.ba ] ; 2 uses
  %.030.i91 = phi i32 [ %i.gs, %.preheader.i89 ], [ %i.gk, %bb.ba ]
  %i.go = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.031.i90, i1 true)
  %i.gp = lshr exact i32 %.031.i90, %i.go         ; 2 uses
  %i.gq = sub i32 %.030.i91, %i.gp                ; 2 uses
  %i.gr = call i32 @llvm.smin.i32(i32 %i.gq, i32 0) ; 2 uses
  %i.gs = add i32 %i.gr, %i.gp                    ; 2 uses
  %i.gt = shl i32 %i.gr, 1
  %i.gu = sub i32 %i.gq, %i.gt                    ; 2 uses
  %.not.i92 = icmp eq i32 %i.gu, 0
  br i1 %.not.i92, label %.loopexit.i93, label %.preheader.i89, !llvm.loop !1

.loopexit.i93:                                    ; preds = %.preheader.i89, %bb.ba, %bb.az
  %.pn.i94 = phi i32 [ %i.gf, %bb.ba ], [ 1, %bb.az ], [ %i.gs, %.preheader.i89 ]
  %neg.i95 = sub i32 0, %i.gi
  %i.gv = and i32 %i.gi, %neg.i95
  %.0.i96 = mul i32 %.pn.i94, %i.gv
  br label %_Z5u_gcdjj.exit98

_Z5u_gcdjj.exit98:                                ; preds = %bb.ax, %bb.ay, %.loopexit.i93
  %.1.i97 = phi i32 [ %.0.i96, %.loopexit.i93 ], [ %i.gf, %bb.ax ], [ %i.ge, %bb.ay ] ; 3 uses
  %i.gw = icmp sgt i32 %.1.i97, -1
  br i1 %i.gw, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_Z5u_gcdjj.exit98
  store i32 %.1.i97, ptr %3, align 8, !tbaa !27
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 4
  %i.gz = and i8 %i.gy, -2
  store i8 %i.gz, ptr %i.gx, align 4
  br label %_ZN11mpz_managerILb1EE3setER3mpzj.exit102

bb.bc:                                            ; preds = %_Z5u_gcdjj.exit98
  %i.ha = zext i32 %.1.i97 to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !26 ; 2 uses
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %bb.bd, label %._crit_edge.i.i.i99

._crit_edge.i.i.i99:                              ; preds = %bb.bc
  %.phi.trans.insert.i.i.i100 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.pre.i.i.i101 = load i8, ptr %.phi.trans.insert.i.i.i100, align 4
  br label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.he = call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 32), !inline_history !156 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  store i32 6, ptr %i.hf, align 4, !tbaa !22
  store ptr %i.he, ptr %i.hb, align 8, !tbaa !26
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.hh = load i8, ptr %i.hg, align 4
  %i.hi = and i8 %i.hh, -3
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %._crit_edge.i.i.i99
  %i.hj = phi ptr [ %i.hc, %._crit_edge.i.i.i99 ], [ %i.he, %bb.bd ] ; 2 uses
  %i.hk = phi i8 [ %.pre.i.i.i101, %._crit_edge.i.i.i99 ], [ %i.hi, %bb.bd ]
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.hm = or i8 %i.hk, 1
  store i8 %i.hm, ptr %i.hl, align 4
  store i32 1, ptr %3, align 8, !tbaa !27
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store i64 %i.ha, ptr %i.hn, align 4
  store i32 1, ptr %i.hj, align 4, !tbaa !35
  br label %_ZN11mpz_managerILb1EE3setER3mpzj.exit102

bb.bf:                                            ; preds = %.lr.ph190, %_ZN11mpz_managerILb1EE3remERK3mpzS3_RS1_.exit
  %i.ho = phi i8 [ %i.fw, %.lr.ph190 ], [ %i.iz, %_ZN11mpz_managerILb1EE3remERK3mpzS3_RS1_.exit ] ; 2 uses
  %i.hp = phi i8 [ %i.fx, %.lr.ph190 ], [ %i.iu, %_ZN11mpz_managerILb1EE3remERK3mpzS3_RS1_.exit ] ; 2 uses
  %i.hq = phi i32 [ %i.ga, %.lr.ph190 ], [ %i.ij, %_ZN11mpz_managerILb1EE3remERK3mpzS3_RS1_.exit ] ; 2 uses
  %i.hr = and i8 %i.hp, 1
  %i.hs = icmp eq i8 %i.hr, 0
  %i.ht = and i8 %i.ho, 1
  %i.hu = icmp eq i8 %i.ht, 0
  %or.cond = select i1 %i.hs, i1 %i.hu, i1 false
  br i1 %or.cond, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.hv = load i32, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.hw = sext i32 %i.hv to i64
  %i.hx = sext i32 %i.hq to i64
  %i.hy = srem i64 %i.hw, %i.hx
  %i.hz = trunc nsw i64 %i.hy to i32
  %i.ia = load i8, ptr %i.dm, align 4
  %i.ib = and i8 %i.ia, -2
  br label %_ZN11mpz_managerILb1EE3remERK3mpzS3_RS1_.exit

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i32 0, ptr %5, align 8, !tbaa !27
  %i.ic = load i8, ptr %i.gc, align 4
  %i.id = and i8 %i.ic, -4
  store i8 %i.id, ptr %i.gc, align 4
  store ptr null, ptr %i.gd, align 8, !tbaa !26
  call void @_ZN11mpz_managerILb1EE13quot_rem_coreILi1EEEvRK3mpzS4_RS2_S5_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %10)
  %i.ie = load ptr, ptr %i.gd, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ie, null
  br i1 %.not.i.i.i.i, label %_ZN11mpz_managerILb1EE7big_remERK3mpzS3_RS1_.exit.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.if = load i8, ptr %i.gc, align 4
  %i.ig = and i8 %i.if, 2
  %i.ih = icmp eq i8 %i.ig, 0
  br i1 %i.ih, label %bb.bj, label %_ZN11mpz_managerILb1EE7big_remERK3mpzS3_RS1_.exit.i

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ie)
  br label %_ZN11mpz_managerILb1EE7big_remERK3mpzS3_RS1_.exit.i

_ZN11mpz_managerILb1EE7big_remERK3mpzS3_RS1_.exit.i: ; preds = %bb.bj, %bb.bi, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %.pre197 = load i32, ptr %6, align 8, !tbaa !36
  %.pre198 = load i32, ptr %7, align 8, !tbaa !36
  %.pre199 = load i8, ptr %i.cw, align 4          ; 2 uses
  %.pre200 = load i8, ptr %i.da, align 4
  %.pre201 = load i32, ptr %10, align 8, !tbaa !36
  %.pre202 = load i8, ptr %i.dm, align 4
  %.pre210 = and i8 %.pre199, 1
  br label %_ZN11mpz_managerILb1EE3remERK3mpzS3_RS1_.exit

_ZN11mpz_managerILb1EE3remERK3mpzS3_RS1_.exit:    ; preds = %bb.bg, %_ZN11mpz_managerILb1EE7big_remERK3mpzS3_RS1_.exit.i
  %.pre-phi211 = phi i8 [ 0, %bb.bg ], [ %.pre210, %_ZN11mpz_managerILb1EE7big_remERK3mpzS3_RS1_.exit.i ]
  %i.ii = phi i8 [ %i.ib, %bb.bg ], [ %.pre202, %_ZN11mpz_managerILb1EE7big_remERK3mpzS3_RS1_.exit.i ] ; 2 uses
  %i.ij = phi i32 [ %i.hz, %bb.bg ], [ %.pre201, %_ZN11mpz_managerILb1EE7big_remERK3mpzS3_RS1_.exit.i ] ; 3 uses
  %i.ik = phi i8 [ %i.ho, %bb.bg ], [ %.pre200, %_ZN11mpz_managerILb1EE7big_remERK3mpzS3_RS1_.exit.i ] ; 2 uses
  %i.il = phi i8 [ %i.hp, %bb.bg ], [ %.pre199, %_ZN11mpz_managerILb1EE7big_remERK3mpzS3_RS1_.exit.i ] ; 2 uses
  %i.im = phi i32 [ %i.hq, %bb.bg ], [ %.pre198, %_ZN11mpz_managerILb1EE7big_remERK3mpzS3_RS1_.exit.i ] ; 2 uses
  %i.in = phi i32 [ %i.hv, %bb.bg ], [ %.pre197, %_ZN11mpz_managerILb1EE7big_remERK3mpzS3_RS1_.exit.i ]
  store i32 %i.im, ptr %6, align 8, !tbaa !36
  %i.io = load ptr, ptr %i.cz, align 8, !tbaa !44
  %i.ip = load ptr, ptr %i.dd, align 8, !tbaa !44 ; 2 uses
  store ptr %i.ip, ptr %i.cz, align 8, !tbaa !44
  %i.iq = and i8 %i.il, 2
  %i.ir = and i8 %i.il, -4
  %i.is = and i8 %i.ik, -4
  %i.it = and i8 %i.ik, 3
  %i.iu = or disjoint i8 %i.it, %i.ir             ; 3 uses
  store i8 %i.iu, ptr %i.cw, align 4
  store i32 %i.ij, ptr %7, align 8, !tbaa !36
  store i32 %i.in, ptr %10, align 8, !tbaa !36
  %i.iv = load ptr, ptr %i.dp, align 8, !tbaa !44
  store ptr %i.iv, ptr %i.dd, align 8, !tbaa !44
  store ptr %i.io, ptr %i.dp, align 8, !tbaa !44
  %i.iw = and i8 %i.ii, -4
  %i.ix = or disjoint i8 %i.iw, %i.iq
  %i.iy = and i8 %i.ii, 3
  %i.iz = or disjoint i8 %i.iy, %i.is             ; 2 uses
  store i8 %i.iz, ptr %i.da, align 4
  %i.ja = or disjoint i8 %i.ix, %.pre-phi211
  store i8 %i.ja, ptr %i.dm, align 4
  %i.jb = icmp eq i32 %i.ij, 0
  br i1 %i.jb, label %._crit_edge191, label %bb.bf, !llvm.loop !153

._crit_edge191:                                   ; preds = %_ZN11mpz_managerILb1EE3remERK3mpzS3_RS1_.exit, %.preheader.._crit_edge191_crit_edge
  %i.jc = phi i8 [ %i.fx, %.preheader.._crit_edge191_crit_edge ], [ %i.iu, %_ZN11mpz_managerILb1EE3remERK3mpzS3_RS1_.exit ] ; 2 uses
  %i.jd = phi ptr [ %.pre204, %.preheader.._crit_edge191_crit_edge ], [ %i.ip, %_ZN11mpz_managerILb1EE3remERK3mpzS3_RS1_.exit ]
  %i.je = phi i32 [ %.pre203, %.preheader.._crit_edge191_crit_edge ], [ %i.im, %_ZN11mpz_managerILb1EE3remERK3mpzS3_RS1_.exit ]
  %i.jf = load i32, ptr %3, align 8, !tbaa !36
  store i32 %i.je, ptr %3, align 8, !tbaa !36
  store i32 %i.jf, ptr %6, align 8, !tbaa !36
  %i.jg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !44
  store ptr %i.jd, ptr %i.jg, align 8, !tbaa !44
  store ptr %i.jh, ptr %i.cz, align 8, !tbaa !44
  %i.ji = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.jj = load i8, ptr %i.ji, align 4             ; 2 uses
  %i.jk = and i8 %i.jj, -4
  %i.jl = and i8 %i.jc, -4
  %i.jm = and i8 %i.jc, 3
  %i.jn = or disjoint i8 %i.jm, %i.jk
  store i8 %i.jn, ptr %i.ji, align 4
  %i.jo = and i8 %i.jj, 3
  %i.jp = or disjoint i8 %i.jl, %i.jo
  store i8 %i.jp, ptr %i.cw, align 4
  br label %_ZN11mpz_managerILb1EE3setER3mpzj.exit102

bb.bk:                                            ; preds = %.lr.ph188, %bb.cx
  %i.jq = phi ptr [ %.pre195, %.lr.ph188 ], [ %i.rp, %bb.cx ] ; 2 uses
  %i.jr = phi ptr [ %.pre194, %.lr.ph188 ], [ %i.rq, %bb.cx ] ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !35 ; 2 uses
  %i.jt = load i32, ptr %i.jq, align 4, !tbaa !35
  %i.ju = icmp eq i32 %i.jt, %i.js
  br i1 %i.ju, label %bb.bl, label %._crit_edge.thread

bb.bl:                                            ; preds = %bb.bk
  %i.jv = zext i32 %i.js to i64                   ; 2 uses
  %i.jw = getelementptr i8, ptr %i.jq, i64 4
  %i.jx = getelementptr [4 x i8], ptr %i.jw, i64 %i.jv
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !36 ; 2 uses
  %i.jz = icmp eq i32 %i.jy, 0
  br i1 %i.jz, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.bl
  %i.ka = zext i32 %i.jy to i64                   ; 2 uses
  %i.kb = getelementptr i8, ptr %i.jr, i64 4
  %i.kc = getelementptr [4 x i8], ptr %i.kb, i64 %i.jv
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !36
  %i.ke = zext i32 %i.kd to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bn
  %i.kf = phi i64 [ %i.ks, %bb.bn ], [ %i.ka, %.lr.ph.preheader ]
  %.064173 = phi i64 [ %i.kp, %bb.bn ], [ 1, %.lr.ph.preheader ] ; 6 uses
  %.065172 = phi i64 [ %i.kn, %bb.bn ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.066171 = phi i64 [ %.064173, %bb.bn ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.067170 = phi i64 [ %.065172, %bb.bn ], [ 1, %.lr.ph.preheader ] ; 4 uses
  %.068169 = phi i64 [ %i.kr, %bb.bn ], [ %i.ka, %.lr.ph.preheader ] ; 3 uses
  %.069168 = phi i64 [ %.068169, %bb.bn ], [ %i.ke, %.lr.ph.preheader ] ; 3 uses
  %i.kg = add nsw i64 %.064173, %.068169          ; 2 uses
  %i.kh = icmp eq i64 %i.kg, 0
  br i1 %i.kh, label %._crit_edge, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph
  %i.ki = add nsw i64 %.067170, %.069168
  %i.kj = sdiv i64 %i.ki, %i.kf                   ; 4 uses
  %i.kk = add nsw i64 %.066171, %.069168
  %i.kl = sdiv i64 %i.kk, %i.kg
  %.not78 = icmp eq i64 %i.kj, %i.kl
  br i1 %.not78, label %bb.bn, label %._crit_edge

bb.bn:                                            ; preds = %bb.bm
  %i.km = mul nsw i64 %i.kj, %.065172
  %i.kn = sub nsw i64 %.067170, %i.km             ; 3 uses
  %i.ko = mul nsw i64 %i.kj, %.064173
  %i.kp = sub nsw i64 %.066171, %i.ko             ; 2 uses
  %i.kq = mul nsw i64 %i.kj, %.068169
  %i.kr = sub nsw i64 %.069168, %i.kq             ; 2 uses
  %i.ks = add nsw i64 %i.kn, %i.kr                ; 2 uses
  %i.kt = icmp eq i64 %i.ks, 0
  br i1 %i.kt, label %._crit_edge, label %.lr.ph, !llvm.loop !154

._crit_edge:                                      ; preds = %.lr.ph, %bb.bn, %bb.bm
  %.067.lcssa = phi i64 [ %.065172, %bb.bn ], [ %.067170, %bb.bm ], [ %.067170, %.lr.ph ] ; 5 uses
  %.066.lcssa = phi i64 [ %.064173, %bb.bn ], [ %.066171, %bb.bm ], [ %.066171, %.lr.ph ] ; 6 uses
  %.065.lcssa = phi i64 [ %i.kn, %bb.bn ], [ %.065172, %bb.bm ], [ %.065172, %.lr.ph ] ; 5 uses
  %.064.lcssa = phi i64 [ %i.kp, %bb.bn ], [ %.064173, %bb.bm ], [ %.064173, %.lr.ph ] ; 5 uses
  %i.ku = icmp eq i64 %.066.lcssa, 0
  br i1 %i.ku, label %._crit_edge.thread, label %bb.bq

._crit_edge.thread:                               ; preds = %bb.bk, %bb.bl, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i32 0, ptr %4, align 8, !tbaa !27
  %i.kv = load i8, ptr %i.fu, align 4
  %i.kw = and i8 %i.kv, -4
  store i8 %i.kw, ptr %i.fu, align 4
  store ptr null, ptr %i.fv, align 8, !tbaa !26
  call void @_ZN11mpz_managerILb1EE13quot_rem_coreILi1EEEvRK3mpzS4_RS2_S5_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %8)
  %i.kx = load ptr, ptr %i.fv, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i.i103 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i.i103, label %_ZN11mpz_managerILb1EE3remERK3mpzS3_RS1_.exit105, label %bb.bo

bb.bo:                                            ; preds = %._crit_edge.thread
  %i.ky = load i8, ptr %i.fu, align 4
  %i.kz = and i8 %i.ky, 2
  %i.la = icmp eq i8 %i.kz, 0
  br i1 %i.la, label %bb.bp, label %_ZN11mpz_managerILb1EE3remERK3mpzS3_RS1_.exit105

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.kx)
  br label %_ZN11mpz_managerILb1EE3remERK3mpzS3_RS1_.exit105

_ZN11mpz_managerILb1EE3remERK3mpzS3_RS1_.exit105: ; preds = %._crit_edge.thread, %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.lb = load i32, ptr %6, align 8, !tbaa !36
  %i.lc = load i32, ptr %7, align 8, !tbaa !36
  store i32 %i.lc, ptr %6, align 8, !tbaa !36
  %i.ld = load ptr, ptr %i.cz, align 8, !tbaa !44
  %i.le = load ptr, ptr %i.dd, align 8, !tbaa !44 ; 2 uses
  store ptr %i.le, ptr %i.cz, align 8, !tbaa !44
  %i.lf = load i8, ptr %i.cw, align 4             ; 2 uses
  %i.lg = load i8, ptr %i.da, align 4             ; 2 uses
  %i.lh = and i8 %i.lf, -4
  %i.li = and i8 %i.lg, -4
  %i.lj = and i8 %i.lg, 3
  %i.lk = or disjoint i8 %i.lj, %i.lh             ; 2 uses
  store i8 %i.lk, ptr %i.cw, align 4
  %i.ll = load i32, ptr %8, align 8, !tbaa !36
  store i32 %i.ll, ptr %7, align 8, !tbaa !36
  store i32 %i.lb, ptr %8, align 8, !tbaa !36
  %i.lm = load ptr, ptr %i.dh, align 8, !tbaa !44 ; 2 uses
  store ptr %i.lm, ptr %i.dd, align 8, !tbaa !44
  store ptr %i.ld, ptr %i.dh, align 8, !tbaa !44
  %i.ln = load i8, ptr %i.de, align 4             ; 2 uses
  %i.lo = and i8 %i.ln, -4
  %i.lp = and i8 %i.ln, 3
  %i.lq = or disjoint i8 %i.lp, %i.li             ; 2 uses
  store i8 %i.lq, ptr %i.da, align 4
  %i.lr = and i8 %i.lf, 3
  %i.ls = or disjoint i8 %i.lo, %i.lr
  store i8 %i.ls, ptr %i.de, align 4
  br label %bb.cx

bb.bq:                                            ; preds = %._crit_edge
  %i.lt = add i64 %.067.lcssa, 2147483648
  %or.cond.i.i = icmp ult i64 %i.lt, 4294967296
  br i1 %or.cond.i.i, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.lu = trunc nsw i64 %.067.lcssa to i32
  store i32 %i.lu, ptr %10, align 8, !tbaa !27
  %i.lv = load i8, ptr %i.dm, align 4
  %i.lw = and i8 %i.lv, -2
  store i8 %i.lw, ptr %i.dm, align 4
  br label %_ZN11mpz_managerILb1EE3setER3mpzl.exit

bb.bs:                                            ; preds = %bb.bq
  %i.lx = load ptr, ptr %i.dp, align 8, !tbaa !26 ; 2 uses
  %i.ly = icmp eq ptr %i.lx, null
  br i1 %i.ly, label %bb.bt, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.bs
  %.pre.i.i = load i8, ptr %i.dm, align 4
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.lz = call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 32), !inline_history !64 ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  store i32 6, ptr %i.ma, align 4, !tbaa !22
  store ptr %i.lz, ptr %i.dp, align 8, !tbaa !26
  %i.mb = load i8, ptr %i.dm, align 4
  %i.mc = and i8 %i.mb, -3
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %._crit_edge.i.i
  %i.md = phi ptr [ %i.lx, %._crit_edge.i.i ], [ %i.lz, %bb.bt ] ; 4 uses
  %i.me = phi i8 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.mc, %bb.bt ]
  %i.mf = or i8 %i.me, 1
  store i8 %i.mf, ptr %i.dm, align 4
  %i.mg = icmp eq i64 %.067.lcssa, -9223372036854775808
  br i1 %i.mg, label %bb.bv, label %.thread27.i.i

.thread27.i.i:                                    ; preds = %bb.bu
  %i.mh = icmp slt i64 %.067.lcssa, 0
  %.sink.i.i = select i1 %i.mh, i32 -1, i32 1
  %.0.i.i = call i64 @llvm.abs.i64(i64 %.067.lcssa, i1 false) ; 2 uses
  store i32 %.sink.i.i, ptr %10, align 8, !tbaa !27
  %i.mi = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  store i64 %.0.i.i, ptr %i.mi, align 4
  %i.mj = icmp ult i64 %.0.i.i, 4294967296
  %.ph.i.i = select i1 %i.mj, i32 1, i32 2
  store i32 %.ph.i.i, ptr %i.md, align 4, !tbaa !35
  br label %_ZN11mpz_managerILb1EE3setER3mpzl.exit

bb.bv:                                            ; preds = %bb.bu
  store i32 -1, ptr %10, align 8, !tbaa !27
  %i.mk = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  store i64 4611686018427387904, ptr %i.mk, align 4
  store i32 2, ptr %i.md, align 4, !tbaa !35
  call void @_ZN11mpz_managerILb1EE11big_add_subILb0EEEvRK3mpzS4_RS2_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %10), !inline_history !157
  br label %_ZN11mpz_managerILb1EE3setER3mpzl.exit

_ZN11mpz_managerILb1EE3setER3mpzl.exit:           ; preds = %bb.br, %.thread27.i.i, %bb.bv
  %i.ml = load i8, ptr %i.cw, align 4
  %i.mm = and i8 %i.ml, 1
  %i.mn = icmp eq i8 %i.mm, 0
  br i1 %i.mn, label %bb.bw, label %bb.cb

bb.bw:                                            ; preds = %_ZN11mpz_managerILb1EE3setER3mpzl.exit
  %i.mo = load i8, ptr %i.dm, align 4
  %i.mp = and i8 %i.mo, 1
  %i.mq = icmp eq i8 %i.mp, 0
  br i1 %i.mq, label %bb.bx, label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  %i.mr = load i32, ptr %6, align 8, !tbaa !27
  %i.ms = sext i32 %i.mr to i64
  %i.mt = load i32, ptr %10, align 8, !tbaa !27
  %i.mu = sext i32 %i.mt to i64
  %i.mv = mul nsw i64 %i.mu, %i.ms                ; 4 uses
  %i.mw = add nsw i64 %i.mv, 2147483648
  %or.cond.i.i106 = icmp ult i64 %i.mw, 4294967296
  br i1 %or.cond.i.i106, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.mx = trunc nsw i64 %i.mv to i32
  store i32 %i.mx, ptr %8, align 8, !tbaa !27
  %i.my = load i8, ptr %i.de, align 4
  %i.mz = and i8 %i.my, -2
  store i8 %i.mz, ptr %i.de, align 4
  br label %_ZN11mpz_managerILb1EE3mulERK3mpzS3_RS1_.exit

bb.bz:                                            ; preds = %bb.bx
  %i.na = load ptr, ptr %i.dh, align 8, !tbaa !26 ; 2 uses
  %i.nb = icmp eq ptr %i.na, null
  br i1 %i.nb, label %bb.ca, label %._crit_edge.i.i.i107

._crit_edge.i.i.i107:                             ; preds = %bb.bz
  %.pre.i.i.i109 = load i8, ptr %i.de, align 4
  br label %.thread27.i.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.nc = call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 32), !inline_history !54 ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  store i32 6, ptr %i.nd, align 4, !tbaa !22
  store ptr %i.nc, ptr %i.dh, align 8, !tbaa !26
  %i.ne = load i8, ptr %i.de, align 4
  %i.nf = and i8 %i.ne, -3
  br label %.thread27.i.i.i

.thread27.i.i.i:                                  ; preds = %bb.ca, %._crit_edge.i.i.i107
  %i.ng = phi ptr [ %i.na, %._crit_edge.i.i.i107 ], [ %i.nc, %bb.ca ] ; 2 uses
  %i.nh = phi i8 [ %.pre.i.i.i109, %._crit_edge.i.i.i107 ], [ %i.nf, %bb.ca ]
  %i.ni = or i8 %i.nh, 1
  store i8 %i.ni, ptr %i.de, align 4
  %i.nj = icmp slt i64 %i.mv, 0
  %.sink.i.i.i = select i1 %i.nj, i32 -1, i32 1
  %.0.i.i.i = call i64 @llvm.abs.i64(i64 %i.mv, i1 true) ; 2 uses
  store i32 %.sink.i.i.i, ptr %8, align 8, !tbaa !27
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  store i64 %.0.i.i.i, ptr %i.nk, align 4
  %i.nl = icmp samesign ult i64 %.0.i.i.i, 4294967296
  %.ph.i.i.i = select i1 %i.nl, i32 1, i32 2
  store i32 %.ph.i.i.i, ptr %i.ng, align 4, !tbaa !35
  br label %_ZN11mpz_managerILb1EE3mulERK3mpzS3_RS1_.exit

bb.cb:                                            ; preds = %bb.bw, %_ZN11mpz_managerILb1EE3setER3mpzl.exit
  call void @_ZN11mpz_managerILb1EE7big_mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %8)
  br label %_ZN11mpz_managerILb1EE3mulERK3mpzS3_RS1_.exit

_ZN11mpz_managerILb1EE3mulERK3mpzS3_RS1_.exit:    ; preds = %bb.by, %.thread27.i.i.i, %bb.cb
  %i.nm = add i64 %.066.lcssa, 2147483648
  %or.cond.i.i110 = icmp ult i64 %i.nm, 4294967296
  br i1 %or.cond.i.i110, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %_ZN11mpz_managerILb1EE3mulERK3mpzS3_RS1_.exit
  %i.nn = trunc nsw i64 %.066.lcssa to i32
  store i32 %i.nn, ptr %10, align 8, !tbaa !27
  %i.no = load i8, ptr %i.dm, align 4
  %i.np = and i8 %i.no, -2
  store i8 %i.np, ptr %i.dm, align 4
  br label %_ZN11mpz_managerILb1EE3setER3mpzl.exit118

bb.cd:                                            ; preds = %_ZN11mpz_managerILb1EE3mulERK3mpzS3_RS1_.exit
  %i.nq = load ptr, ptr %i.dp, align 8, !tbaa !26 ; 2 uses
  %i.nr = icmp eq ptr %i.nq, null
  br i1 %i.nr, label %bb.ce, label %._crit_edge.i.i111

._crit_edge.i.i111:                               ; preds = %bb.cd
  %.pre.i.i113 = load i8, ptr %i.dm, align 4
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.ns = call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 32), !inline_history !64 ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 4
  store i32 6, ptr %i.nt, align 4, !tbaa !22
  store ptr %i.ns, ptr %i.dp, align 8, !tbaa !26
  %i.nu = load i8, ptr %i.dm, align 4
  %i.nv = and i8 %i.nu, -3
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %._crit_edge.i.i111
  %i.nw = phi ptr [ %i.nq, %._crit_edge.i.i111 ], [ %i.ns, %bb.ce ] ; 4 uses
  %i.nx = phi i8 [ %.pre.i.i113, %._crit_edge.i.i111 ], [ %i.nv, %bb.ce ]
  %i.ny = or i8 %i.nx, 1
  store i8 %i.ny, ptr %i.dm, align 4
  %i.nz = icmp eq i64 %.066.lcssa, -9223372036854775808
  br i1 %i.nz, label %bb.cg, label %.thread27.i.i114

.thread27.i.i114:                                 ; preds = %bb.cf
  %i.oa = icmp slt i64 %.066.lcssa, 0
  %.sink.i.i115 = select i1 %i.oa, i32 -1, i32 1
  %.0.i.i116 = call i64 @llvm.abs.i64(i64 %.066.lcssa, i1 false) ; 2 uses
  store i32 %.sink.i.i115, ptr %10, align 8, !tbaa !27
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  store i64 %.0.i.i116, ptr %i.ob, align 4
  %i.oc = icmp ult i64 %.0.i.i116, 4294967296
  %.ph.i.i117 = select i1 %i.oc, i32 1, i32 2
  store i32 %.ph.i.i117, ptr %i.nw, align 4, !tbaa !35
  br label %_ZN11mpz_managerILb1EE3setER3mpzl.exit118

bb.cg:                                            ; preds = %bb.cf
  store i32 -1, ptr %10, align 8, !tbaa !27
  %i.od = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  store i64 4611686018427387904, ptr %i.od, align 4
  store i32 2, ptr %i.nw, align 4, !tbaa !35
  call void @_ZN11mpz_managerILb1EE11big_add_subILb0EEEvRK3mpzS4_RS2_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %10), !inline_history !157
  br label %_ZN11mpz_managerILb1EE3setER3mpzl.exit118

_ZN11mpz_managerILb1EE3setER3mpzl.exit118:        ; preds = %bb.cc, %.thread27.i.i114, %bb.cg
  call void @_ZN11mpz_managerILb1EE6addmulERK3mpzS3_S3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
  %i.oe = add i64 %.065.lcssa, 2147483648
  %or.cond.i.i119 = icmp ult i64 %i.oe, 4294967296
  br i1 %or.cond.i.i119, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %_ZN11mpz_managerILb1EE3setER3mpzl.exit118
  %i.of = trunc nsw i64 %.065.lcssa to i32
end_hunk_0
begin_hunk_1_@_ZN11mpz_managerILb1EE17is_perfect_squareERK3mpzRS1_:bb.a
  call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.hz)
  %.pre.i.i96 = load i8, ptr %i.ah, align 4
  br label %_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i95

_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i95: ; preds = %bb.br, %bb.bq
  %i.id = phi i8 [ %i.ia, %bb.bq ], [ %.pre.i.i96, %bb.br ]
  store ptr null, ptr %i.ak, align 8, !tbaa !26
  %i.ie = and i8 %i.id, -4
  store i8 %i.ie, ptr %i.ah, align 4
  br label %_ZN11mpz_managerILb1EE3delER3mpz.exit97

_ZN11mpz_managerILb1EE3delER3mpz.exit97:          ; preds = %_ZN11mpz_managerILb1EE3delER3mpz.exit93, %_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i95
  %i.if = load ptr, ptr %i.ao, align 8, !tbaa !26 ; 2 uses
  %.not.i.i98 = icmp eq ptr %i.if, null
  br i1 %.not.i.i98, label %_ZN11mpz_managerILb1EE3delER3mpz.exit101, label %bb.bs

bb.bs:                                            ; preds = %_ZN11mpz_managerILb1EE3delER3mpz.exit97
  %i.ig = load i8, ptr %i.al, align 4
  %i.ih = and i8 %i.ig, 2
  %i.ii = icmp eq i8 %i.ih, 0
  br i1 %i.ii, label %bb.bt, label %_ZN11mpz_managerILb1EE3delER3mpz.exit101

bb.bt:                                            ; preds = %bb.bs
  call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.if)
  br label %_ZN11mpz_managerILb1EE3delER3mpz.exit101

_ZN11mpz_managerILb1EE3delER3mpz.exit101:         ; preds = %bb.bs, %bb.bt, %_ZN11mpz_managerILb1EE3delER3mpz.exit97
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.bu

bb.bu:                                            ; preds = %_ZN11mpz_managerILb1EE3delER3mpz.exit101, %_ZN11mpz_managerILb1EE21get_least_significantERK3mpz.exit, %bb.b, %bb.a, %bb.d
  %.141 = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ true, %bb.d ], [ %.3, %_ZN11mpz_managerILb1EE3delER3mpz.exit101 ], [ false, %_ZN11mpz_managerILb1EE21get_least_significantERK3mpz.exit ]
  ret i1 %.141
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef i32 @_ZN11mpz_managerILb1EE21get_least_significantERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !27
  %i.f = tail call i32 @llvm.abs.i32(i32 %i.e, i1 true)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !35
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.1 = phi i32 [ %i.f, %bb.b ], [ %i.l, %bb.d ], [ 0, %bb.c ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef i32 @_ZN11mpz_managerILb1EE17prev_power_of_twoERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %_ZN11mpz_managerILb1EE4log2ERK3mpz.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, 1
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef i32 @_Z4log2j(i32 noundef %i.a)
  br label %_ZN11mpz_managerILb1EE4log2ERK3mpz.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = add i32 %i.j, -1                         ; 2 uses
  %i.m = shl i32 %i.l, 5
  %i.n = zext i32 %i.l to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !36
  %i.q = tail call noundef i32 @_Z4log2j(i32 noundef %i.p)
  %i.r = add i32 %i.m, %i.q
  br label %_ZN11mpz_managerILb1EE4log2ERK3mpz.exit

_ZN11mpz_managerILb1EE4log2ERK3mpz.exit:          ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.r, %bb.d ], [ %i.g, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef i32 @_ZN11mpz_managerILb1EE17next_power_of_twoERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !27     ; 4 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %_ZN11mpz_managerILb1EE15is_power_of_twoERK3mpzRj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, 1
  %i.f = icmp eq i8 %i.e, 0                       ; 2 uses
  %i.g = icmp eq i32 %i.a, 1
  %i.h = and i1 %i.g, %i.f
  br i1 %i.h, label %_ZN11mpz_managerILb1EE15is_power_of_twoERK3mpzRj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.a)
  %i.j = icmp eq i32 %i.i, 1
  %i.k = tail call noundef i32 @_Z4log2j(i32 noundef %i.a) ; 2 uses
  br i1 %i.j, label %_ZN11mpz_managerILb1EE15is_power_of_twoERK3mpzRj.exit, label %_ZN11mpz_managerILb1EE4log2ERK3mpz.exit

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26   ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.p = add i32 %i.n, -1                         ; 3 uses
  %.not2527.not.i = icmp eq i32 %i.p, 0
  br i1 %.not2527.not.i, label %.critedge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext i32 %i.p to i64       ; 2 uses
  br label %.lr.ph.i

bb.f:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !8

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !36
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.f, label %.loopexit

.critedge.i:                                      ; preds = %bb.f, %bb.e
  %.pre-phi.i = phi i64 [ 0, %bb.e ], [ %wide.trip.count.i, %bb.f ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.pre-phi.i
  %i.t = load i32, ptr %i.s, align 4, !tbaa !36   ; 2 uses
  %i.u = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.t)
  %or.cond.i = icmp eq i32 %i.u, 1
  br i1 %or.cond.i, label %_ZN11mpz_managerILb1EE4log2ERK3mpz.exit.i, label %.loopexit

_ZN11mpz_managerILb1EE4log2ERK3mpz.exit.i:        ; preds = %.critedge.i
  %i.v = shl i32 %i.p, 5
  %i.w = tail call noundef i32 @_Z4log2j(i32 noundef %i.t)
  %i.x = add i32 %i.w, %i.v
  br label %_ZN11mpz_managerILb1EE15is_power_of_twoERK3mpzRj.exit

.loopexit:                                        ; preds = %.lr.ph.i, %.critedge.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !26   ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = add i32 %i.aa, -1                       ; 2 uses
  %i.ad = shl i32 %i.ac, 5
  %i.ae = zext i32 %i.ac to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !36
  %i.ah = tail call noundef i32 @_Z4log2j(i32 noundef %i.ag)
  %i.ai = add i32 %i.ad, %i.ah
  br label %_ZN11mpz_managerILb1EE4log2ERK3mpz.exit

_ZN11mpz_managerILb1EE4log2ERK3mpz.exit:          ; preds = %bb.d, %.loopexit
  %.0.i = phi i32 [ %i.ai, %.loopexit ], [ %i.k, %bb.d ]
  %i.aj = add i32 %.0.i, 1
  br label %_ZN11mpz_managerILb1EE15is_power_of_twoERK3mpzRj.exit

_ZN11mpz_managerILb1EE15is_power_of_twoERK3mpzRj.exit: ; preds = %bb.d, %_ZN11mpz_managerILb1EE4log2ERK3mpz.exit, %_ZN11mpz_managerILb1EE4log2ERK3mpz.exit.i, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %i.aj, %_ZN11mpz_managerILb1EE4log2ERK3mpz.exit ], [ %i.x, %_ZN11mpz_managerILb1EE4log2ERK3mpz.exit.i ], [ %i.k, %bb.d ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN11mpz_managerILb1EE4rootER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %class.mpz, align 8                 ; 18 uses
  %4 = alloca %class.mpz, align 8                 ; 18 uses
  %5 = alloca %class.mpz, align 8                 ; 21 uses
  %6 = alloca %class.mpz, align 8                 ; 8 uses
  %7 = alloca %class.mpz, align 8                 ; 6 uses
  %8 = alloca %class.mpz, align 8                 ; 6 uses
  %9 = alloca %class.mpz, align 8                 ; 6 uses
  %10 = alloca %class.mpz, align 8                ; 6 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !27     ; 5 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.ba, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i32 0, ptr %3, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 13 uses
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, -4
  store i8 %i.e, ptr %i.c, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  store ptr null, ptr %i.f, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i32 0, ptr %4, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 13 uses
  %i.h = load i8, ptr %i.g, align 4
  %i.i = and i8 %i.h, -4
  store i8 %i.i, ptr %i.g, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store ptr null, ptr %i.j, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i32 0, ptr %5, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 21 uses
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, -4
  store i8 %i.m, ptr %i.k, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 11 uses
  store ptr null, ptr %i.n, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i32 0, ptr %6, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.p = load i8, ptr %i.o, align 4
  %i.q = and i8 %i.p, -4
  store i8 %i.q, ptr %i.o, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr null, ptr %i.r, align 8, !tbaa !26
  %i.s = icmp sgt i32 %i.a, 0
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load i8, ptr %i.t, align 4
  %i.v = and i8 %i.u, 1
  %i.w = icmp eq i8 %i.v, 0                       ; 2 uses
  br i1 %i.s, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = tail call noundef i32 @_Z4log2j(i32 noundef %i.a)
  br label %_ZN11mpz_managerILb1EE4log2ERK3mpz.exit

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !26   ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = add i32 %i.aa, -1                       ; 2 uses
  %i.ad = shl i32 %i.ac, 5
  %i.ae = zext i32 %i.ac to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !36
  %i.ah = tail call noundef i32 @_Z4log2j(i32 noundef %i.ag)
  %i.ai = add i32 %i.ad, %i.ah
  br label %_ZN11mpz_managerILb1EE4log2ERK3mpz.exit

_ZN11mpz_managerILb1EE4log2ERK3mpz.exit:          ; preds = %bb.d, %bb.e
  %.0.i = phi i32 [ %i.ai, %bb.e ], [ %i.x, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store i32 2, ptr %7, align 8, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 4
  %i.al = and i8 %i.ak, -4
  store i8 %i.al, ptr %i.aj, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.am, align 8, !tbaa !26
  %i.an = udiv i32 %.0.i, %2
  call void @_ZN11mpz_managerILb1EE5powerERK3mpzjRS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %i.an, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store i32 2, ptr %8, align 8, !tbaa !27
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 4
  %i.aq = and i8 %i.ap, -4
  store i8 %i.aq, ptr %i.ao, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.ar, align 8, !tbaa !26
  %i.as = add i32 %.0.i, 1                        ; 2 uses
  %i.at = urem i32 %i.as, %2
  %i.au = icmp ne i32 %i.at, 0
  %i.av = udiv i32 %i.as, %2
  %i.aw = zext i1 %i.au to i32
  %i.ax = add i32 %i.av, %i.aw
  call void @_ZN11mpz_managerILb1EE5powerERK3mpzjRS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %_ZN11mpz_managerILb1EE3negER3mpz.exit24

bb.f:                                             ; preds = %bb.b
  br i1 %i.w, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ay = icmp eq i32 %i.a, -2147483648
  br i1 %i.ay, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.az = tail call noundef i32 @_Z4log2j(i32 noundef -2147483648)
  br label %_ZN11mpz_managerILb1EE5mlog2ERK3mpz.exit

bb.i:                                             ; preds = %bb.g
  %i.ba = sub nsw i32 0, %i.a
  %i.bb = tail call noundef i32 @_Z4log2j(i32 noundef %i.ba)
  br label %_ZN11mpz_managerILb1EE5mlog2ERK3mpz.exit

bb.j:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !26 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !35
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bg = add i32 %i.be, -1                       ; 2 uses
  %i.bh = shl i32 %i.bg, 5
  %i.bi = zext i32 %i.bg to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !36
  %i.bl = tail call noundef i32 @_Z4log2j(i32 noundef %i.bk)
  %i.bm = add i32 %i.bh, %i.bl
  br label %_ZN11mpz_managerILb1EE5mlog2ERK3mpz.exit

_ZN11mpz_managerILb1EE5mlog2ERK3mpz.exit:         ; preds = %bb.h, %bb.i, %bb.j
  %.0.i21 = phi i32 [ %i.bm, %bb.j ], [ %i.az, %bb.h ], [ %i.bb, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store i32 2, ptr %9, align 8, !tbaa !27
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 4
  %i.bp = and i8 %i.bo, -4
  store i8 %i.bp, ptr %i.bn, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.bq, align 8, !tbaa !26
  %i.br = add i32 %.0.i21, 1                      ; 2 uses
  %i.bs = urem i32 %i.br, %2
  %i.bt = icmp ne i32 %i.bs, 0
  %i.bu = udiv i32 %i.br, %2
  %i.bv = zext i1 %i.bt to i32
  %i.bw = add i32 %i.bu, %i.bv
  call void @_ZN11mpz_managerILb1EE5powerERK3mpzjRS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  store i32 2, ptr %10, align 8, !tbaa !27
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 4
  %i.bz = and i8 %i.by, -4
  store i8 %i.bz, ptr %i.bx, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.ca, align 8, !tbaa !26
  %i.cb = udiv i32 %.0.i21, %2
  call void @_ZN11mpz_managerILb1EE5powerERK3mpzjRS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.cc = load i8, ptr %i.c, align 4              ; 2 uses
  %i.cd = and i8 %i.cc, 1
  %i.ce = icmp eq i8 %i.cd, 0
  %i.cf = load i32, ptr %3, align 8               ; 2 uses
  %i.cg = icmp eq i32 %i.cf, -2147483648
  %or.cond.i = select i1 %i.ce, i1 %i.cg, i1 false
  br i1 %or.cond.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN11mpz_managerILb1EE5mlog2ERK3mpz.exit
  %i.ch = load ptr, ptr %i.f, align 8, !tbaa !26  ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.l, label %_ZN11mpz_managerILb1EE11set_big_i64ER3mpzl.exit.i

bb.l:                                             ; preds = %bb.k
  %i.cj = call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 32), !inline_history !41 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store i32 6, ptr %i.ck, align 4, !tbaa !22
  store ptr %i.cj, ptr %i.f, align 8, !tbaa !26
  %i.cl = load i8, ptr %i.c, align 4
  %i.cm = and i8 %i.cl, -3
  br label %_ZN11mpz_managerILb1EE11set_big_i64ER3mpzl.exit.i

_ZN11mpz_managerILb1EE11set_big_i64ER3mpzl.exit.i: ; preds = %bb.l, %bb.k
  %i.cn = phi ptr [ %i.cj, %bb.l ], [ %i.ch, %bb.k ] ; 2 uses
  %i.co = phi i8 [ %i.cm, %bb.l ], [ %i.cc, %bb.k ]
  %i.cp = or i8 %i.co, 1
  store i8 %i.cp, ptr %i.c, align 4
  store i32 1, ptr %3, align 8, !tbaa !27
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 2147483648, ptr %i.cq, align 4
  store i32 1, ptr %i.cn, align 4, !tbaa !35
  br label %_ZN11mpz_managerILb1EE3negER3mpz.exit

bb.m:                                             ; preds = %_ZN11mpz_managerILb1EE5mlog2ERK3mpz.exit
  %i.cr = sub nsw i32 0, %i.cf
  store i32 %i.cr, ptr %3, align 8, !tbaa !27
  br label %_ZN11mpz_managerILb1EE3negER3mpz.exit

_ZN11mpz_managerILb1EE3negER3mpz.exit:            ; preds = %_ZN11mpz_managerILb1EE11set_big_i64ER3mpzl.exit.i, %bb.m
  %i.cs = load i8, ptr %i.g, align 4              ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN11mpz_managerILb1EE4rootER3mpzj:bb.a
  %i.fc = and i8 %i.fb, 1
  %i.fd = icmp eq i8 %i.fc, 0
  br i1 %i.fd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fe = sdiv i32 %i.fa, 2
  store i32 %i.fe, ptr %5, align 8, !tbaa !27
  br label %_ZN11mpz_managerILb1EE13machine_div2kER3mpzj.exit

bb.z:                                             ; preds = %bb.x
  %i.ff = load ptr, ptr %i.n, align 8, !tbaa !26  ; 4 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !35 ; 5 uses
  %.not.i.not = icmp eq i32 %i.fg, 0
  br i1 %.not.i.not, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %5, align 8, !tbaa !27
  %i.fh = and i8 %i.fb, -2
  store i8 %i.fh, ptr %i.k, align 4
  br label %_ZN11mpz_managerILb1EE13machine_div2kER3mpzj.exit

bb.ab:                                            ; preds = %bb.z
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 8 uses
  %i.fj = add i32 %i.fg, -1                       ; 2 uses
  %.not98.i = icmp eq i32 %i.fj, 0
  br i1 %.not98.i, label %._crit_edge94.i, label %.lr.ph93.preheader.i

.lr.ph93.preheader.i:                             ; preds = %bb.ab
  %wide.trip.count111.i = zext i32 %i.fj to i64   ; 5 uses
  %.pre.i = load i32, ptr %i.fi, align 4, !tbaa !36 ; 2 uses
  %min.iters.check = icmp ult i32 %i.fg, 9
  br i1 %min.iters.check, label %.lr.ph93.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph93.preheader.i
  %n.vec = and i64 %wide.trip.count111.i, 4294967288 ; 3 uses
  %vector.recur.init = insertelement <4 x i32> poison, i32 %.pre.i, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %wide.load57, %vector.body ]
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %index ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %index ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 20
  %wide.load = load <4 x i32>, ptr %i.fm, align 4, !tbaa !36 ; 3 uses
  %wide.load57 = load <4 x i32>, ptr %i.fn, align 4, !tbaa !36 ; 4 uses
  %i.fo = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fp = shufflevector <4 x i32> %wide.load, <4 x i32> %wide.load57, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fq = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load, <4 x i32> %i.fo, <4 x i32> splat (i32 31))
  %i.fr = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load57, <4 x i32> %i.fp, <4 x i32> splat (i32 31))
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store <4 x i32> %i.fq, ptr %i.fk, align 4, !tbaa !36
  store <4 x i32> %i.fr, ptr %i.fs, align 4, !tbaa !36
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ft = icmp eq i64 %index.next, %n.vec
  br i1 %i.ft, label %middle.block, label %vector.body, !llvm.loop !208

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %wide.load57, i64 3
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count111.i
  br i1 %cmp.n, label %._crit_edge94.i, label %.lr.ph93.i.preheader

.lr.ph93.i.preheader:                             ; preds = %.lr.ph93.preheader.i, %middle.block
  %.ph = phi i32 [ %.pre.i, %.lr.ph93.preheader.i ], [ %vector.recur.extract, %middle.block ]
  %indvars.iv108.i.ph = phi i64 [ 0, %.lr.ph93.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph93.i

.lr.ph93.i:                                       ; preds = %.lr.ph93.i.preheader, %.lr.ph93.i
  %i.fu = phi i32 [ %i.fx, %.lr.ph93.i ], [ %.ph, %.lr.ph93.i.preheader ]
  %indvars.iv108.i = phi i64 [ %indvars.iv.next109.i, %.lr.ph93.i ], [ %indvars.iv108.i.ph, %.lr.ph93.i.preheader ] ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv108.i
  %indvars.iv.next109.i = add nuw nsw i64 %indvars.iv108.i, 1 ; 3 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv.next109.i
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !36 ; 2 uses
  %i.fy = call i32 @llvm.fshl.i32(i32 %i.fx, i32 %i.fu, i32 31)
  store i32 %i.fy, ptr %i.fv, align 4, !tbaa !36
  %exitcond112.not.i = icmp eq i64 %indvars.iv.next109.i, %wide.trip.count111.i
  br i1 %exitcond112.not.i, label %._crit_edge94.i, label %.lr.ph93.i, !llvm.loop !209

._crit_edge94.i:                                  ; preds = %.lr.ph93.i, %middle.block, %bb.ab
  %.0.lcssa.i = phi i64 [ 0, %bb.ab ], [ %wide.trip.count111.i, %middle.block ], [ %wide.trip.count111.i, %.lr.ph93.i ]
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %.0.lcssa.i ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !36
  %i.gb = lshr i32 %i.ga, 1
  store i32 %i.gb, ptr %i.fz, align 4, !tbaa !36
  store i32 %i.fg, ptr %i.ff, align 4, !tbaa !35
  %i.gc = zext i32 %i.fg to i64
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ad
  %cond.i.i = icmp eq i64 %i.gd, 0
  br i1 %cond.i.i, label %bb.af, label %bb.ad, !llvm.loop !2

bb.ad:                                            ; preds = %._crit_edge94.i, %bb.ac
  %indvars.iv.i.i56 = phi i64 [ %i.gc, %._crit_edge94.i ], [ %i.gd, %bb.ac ] ; 3 uses
  %i.gd = add nsw i64 %indvars.iv.i.i56, -1       ; 3 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !36
  %.not20.i.i = icmp eq i32 %i.gf, 0
  br i1 %.not20.i.i, label %bb.ac, label %bb.ae, !llvm.loop !2

bb.ae:                                            ; preds = %bb.ad
  %i.gg = trunc nuw i64 %indvars.iv.i.i56 to i32
  %cond21.i.i = icmp eq i64 %indvars.iv.i.i56, 1
  br i1 %cond21.i.i, label %bb.ag, label %bb.ai

bb.af:                                            ; preds = %bb.ac
  store i32 0, ptr %5, align 8, !tbaa !27
  %i.gh = load i8, ptr %i.k, align 4
  %i.gi = and i8 %i.gh, -2
  store i8 %i.gi, ptr %i.k, align 4
  br label %_ZN11mpz_managerILb1EE13machine_div2kER3mpzj.exit

bb.ag:                                            ; preds = %bb.ae
  %i.gj = load i32, ptr %i.fi, align 4, !tbaa !36 ; 3 uses
  %i.gk = icmp sgt i32 %i.gj, -1
  br i1 %i.gk, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gl = load i32, ptr %5, align 8, !tbaa !27
  %i.gm = icmp slt i32 %i.gl, 0
  %i.gn = sub nsw i32 0, %i.gj
  %i.go = select i1 %i.gm, i32 %i.gn, i32 %i.gj
  store i32 %i.go, ptr %5, align 8, !tbaa !27
  %i.gp = load i8, ptr %i.k, align 4
  %i.gq = and i8 %i.gp, -2
  store i8 %i.gq, ptr %i.k, align 4
  br label %_ZN11mpz_managerILb1EE13machine_div2kER3mpzj.exit

bb.ai:                                            ; preds = %bb.ag, %bb.ae
  store i32 %i.gg, ptr %i.ff, align 4, !tbaa !35
  br label %_ZN11mpz_managerILb1EE13machine_div2kER3mpzj.exit

_ZN11mpz_managerILb1EE13machine_div2kER3mpzj.exit: ; preds = %_ZN11mpz_managerILb1EE3addERK3mpzS3_RS1_.exit, %bb.y, %bb.aa, %bb.af, %bb.ah, %bb.ai
  call void @_ZN11mpz_managerILb1EE5powerERK3mpzjRS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %6)
  %i.gr = call noundef zeroext i1 @_ZN11mpz_managerILb1EE2eqERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br i1 %i.gr, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN11mpz_managerILb1EE13machine_div2kER3mpzj.exit
  %i.gs = load i32, ptr %1, align 8, !tbaa !36
  %i.gt = load i32, ptr %5, align 8, !tbaa !36
  store i32 %i.gt, ptr %1, align 8, !tbaa !36
  store i32 %i.gs, ptr %5, align 8, !tbaa !36
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !44
  %i.gw = load ptr, ptr %i.n, align 8, !tbaa !44
  store ptr %i.gw, ptr %i.gu, align 8, !tbaa !44
  store ptr %i.gv, ptr %i.n, align 8, !tbaa !44
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 4             ; 2 uses
  %i.gz = load i8, ptr %i.k, align 4              ; 2 uses
  %i.ha = and i8 %i.gy, -4
  %i.hb = and i8 %i.gz, -4
  %i.hc = and i8 %i.gz, 3
  %i.hd = or disjoint i8 %i.hc, %i.ha
  store i8 %i.hd, ptr %i.gx, align 4
  %i.he = and i8 %i.gy, 3
  %i.hf = or disjoint i8 %i.hb, %i.he
  store i8 %i.hf, ptr %i.k, align 4
  br label %bb.ar

bb.ak:                                            ; preds = %_ZN11mpz_managerILb1EE13machine_div2kER3mpzj.exit
  %i.hg = call noundef zeroext i1 @_ZN11mpz_managerILb1EE2eqERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br i1 %i.hg, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hh = call noundef zeroext i1 @_ZN11mpz_managerILb1EE2eqERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br i1 %i.hh, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.hi = load i32, ptr %1, align 8, !tbaa !36
  %i.hj = load i32, ptr %4, align 8, !tbaa !36
  store i32 %i.hj, ptr %1, align 8, !tbaa !36
  store i32 %i.hi, ptr %4, align 8, !tbaa !36
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !44
  %i.hm = load ptr, ptr %i.j, align 8, !tbaa !44
  store ptr %i.hm, ptr %i.hk, align 8, !tbaa !44
  store ptr %i.hl, ptr %i.j, align 8, !tbaa !44
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 4             ; 2 uses
  %i.hp = load i8, ptr %i.g, align 4              ; 2 uses
  %i.hq = and i8 %i.ho, -4
  %i.hr = and i8 %i.hp, -4
  %i.hs = and i8 %i.hp, 3
  %i.ht = or disjoint i8 %i.hs, %i.hq
  store i8 %i.ht, ptr %i.hn, align 4
  %i.hu = and i8 %i.ho, 3
  %i.hv = or disjoint i8 %i.hr, %i.hu
  store i8 %i.hv, ptr %i.g, align 4
  br label %bb.ar

bb.an:                                            ; preds = %bb.al
  %i.hw = call noundef zeroext i1 @_ZN11mpz_managerILb1EE2ltERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.hx = load i32, ptr %5, align 8, !tbaa !36    ; 2 uses
  br i1 %i.hw, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.hy = load i32, ptr %3, align 8, !tbaa !36
  store i32 %i.hx, ptr %3, align 8, !tbaa !36
  %i.hz = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.ia = load ptr, ptr %i.f, align 8, !tbaa !44
  store ptr %i.hz, ptr %i.f, align 8, !tbaa !44
  %i.ib = load i8, ptr %i.k, align 4              ; 2 uses
  %i.ic = load i8, ptr %i.c, align 4              ; 2 uses
  %i.id = and i8 %i.ib, -4
  %i.ie = and i8 %i.ic, -4
  %i.if = and i8 %i.ic, 3
  %i.ig = or disjoint i8 %i.if, %i.id
  %i.ih = and i8 %i.ib, 3
  %i.ii = or disjoint i8 %i.ie, %i.ih
  store i8 %i.ii, ptr %i.c, align 4
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.ij = load i32, ptr %4, align 8, !tbaa !36
  store i32 %i.hx, ptr %4, align 8, !tbaa !36
  %i.ik = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.il = load ptr, ptr %i.j, align 8, !tbaa !44
  store ptr %i.ik, ptr %i.j, align 8, !tbaa !44
  %i.im = load i8, ptr %i.k, align 4              ; 2 uses
  %i.in = load i8, ptr %i.g, align 4              ; 2 uses
  %i.io = and i8 %i.im, -4
  %i.ip = and i8 %i.in, -4
  %i.iq = and i8 %i.in, 3
  %i.ir = or disjoint i8 %i.iq, %i.io
  %i.is = and i8 %i.im, 3
  %i.it = or disjoint i8 %i.ip, %i.is
  store i8 %i.it, ptr %i.g, align 4
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.sink40 = phi i32 [ %i.hy, %bb.ao ], [ %i.ij, %bb.ap ]
  %.sink40.a = phi ptr [ %i.ia, %bb.ao ], [ %i.il, %bb.ap ]
  %.sink = phi i8 [ %i.ig, %bb.ao ], [ %i.ir, %bb.ap ]
  store i32 %.sink40, ptr %5, align 8, !tbaa !36
  store ptr %.sink40.a, ptr %i.n, align 8, !tbaa !44
  store i8 %.sink, ptr %i.k, align 4
  br label %.preheader, !llvm.loop !210

bb.ar:                                            ; preds = %bb.aj, %bb.am, %bb.q
  %.0 = phi i1 [ true, %bb.q ], [ true, %bb.aj ], [ false, %bb.am ]
  %i.iu = load ptr, ptr %i.f, align 8, !tbaa !26  ; 2 uses
  %.not.i.i = icmp eq ptr %i.iu, null
  br i1 %.not.i.i, label %_ZN11mpz_managerILb1EE3delER3mpz.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.iv = load i8, ptr %i.c, align 4              ; 2 uses
  %i.iw = and i8 %i.iv, 2
  %i.ix = icmp eq i8 %i.iw, 0
  br i1 %i.ix, label %bb.at, label %_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i

bb.at:                                            ; preds = %bb.as
  call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.iu)
  %.pre.i.i = load i8, ptr %i.c, align 4
  br label %_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i

_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i: ; preds = %bb.at, %bb.as
  %i.iy = phi i8 [ %i.iv, %bb.as ], [ %.pre.i.i, %bb.at ]
  store ptr null, ptr %i.f, align 8, !tbaa !26
  %i.iz = and i8 %i.iy, -4
  store i8 %i.iz, ptr %i.c, align 4
  br label %_ZN11mpz_managerILb1EE3delER3mpz.exit

_ZN11mpz_managerILb1EE3delER3mpz.exit:            ; preds = %bb.ar, %_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i
  %i.ja = load ptr, ptr %i.j, align 8, !tbaa !26  ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.ja, null
  br i1 %.not.i.i25, label %_ZN11mpz_managerILb1EE3delER3mpz.exit28, label %bb.au

bb.au:                                            ; preds = %_ZN11mpz_managerILb1EE3delER3mpz.exit
  %i.jb = load i8, ptr %i.g, align 4              ; 2 uses
  %i.jc = and i8 %i.jb, 2
  %i.jd = icmp eq i8 %i.jc, 0
  br i1 %i.jd, label %bb.av, label %_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i26

bb.av:                                            ; preds = %bb.au
  call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ja)
  %.pre.i.i27 = load i8, ptr %i.g, align 4
  br label %_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i26

_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i26: ; preds = %bb.av, %bb.au
  %i.je = phi i8 [ %i.jb, %bb.au ], [ %.pre.i.i27, %bb.av ]
  store ptr null, ptr %i.j, align 8, !tbaa !26
  %i.jf = and i8 %i.je, -4
  store i8 %i.jf, ptr %i.g, align 4
  br label %_ZN11mpz_managerILb1EE3delER3mpz.exit28

_ZN11mpz_managerILb1EE3delER3mpz.exit28:          ; preds = %_ZN11mpz_managerILb1EE3delER3mpz.exit, %_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i26
  %i.jg = load ptr, ptr %i.n, align 8, !tbaa !26  ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.jg, null
  br i1 %.not.i.i29, label %_ZN11mpz_managerILb1EE3delER3mpz.exit32, label %bb.aw

bb.aw:                                            ; preds = %_ZN11mpz_managerILb1EE3delER3mpz.exit28
  %i.jh = load i8, ptr %i.k, align 4              ; 2 uses
  %i.ji = and i8 %i.jh, 2
  %i.jj = icmp eq i8 %i.ji, 0
  br i1 %i.jj, label %bb.ax, label %_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i30

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.jg)
  %.pre.i.i31 = load i8, ptr %i.k, align 4
  br label %_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i30

_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i30: ; preds = %bb.ax, %bb.aw
  %i.jk = phi i8 [ %i.jh, %bb.aw ], [ %.pre.i.i31, %bb.ax ]
  store ptr null, ptr %i.n, align 8, !tbaa !26
  %i.jl = and i8 %i.jk, -4
  store i8 %i.jl, ptr %i.k, align 4
  br label %_ZN11mpz_managerILb1EE3delER3mpz.exit32

_ZN11mpz_managerILb1EE3delER3mpz.exit32:          ; preds = %_ZN11mpz_managerILb1EE3delER3mpz.exit28, %_ZN11mpz_managerILb1EE10deallocateEbP8mpz_cell.exit.i.i30
  %i.jm = load ptr, ptr %i.r, align 8, !tbaa !26  ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.jm, null
  br i1 %.not.i.i33, label %_ZN11mpz_managerILb1EE3delER3mpz.exit36, label %bb.ay

bb.ay:                                            ; preds = %_ZN11mpz_managerILb1EE3delER3mpz.exit32
  %i.jn = load i8, ptr %i.o, align 4
  %i.jo = and i8 %i.jn, 2
  %i.jp = icmp eq i8 %i.jo, 0
  br i1 %i.jp, label %bb.az, label %_ZN11mpz_managerILb1EE3delER3mpz.exit36

bb.az:                                            ; preds = %bb.ay
  call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.jm)
  br label %_ZN11mpz_managerILb1EE3delER3mpz.exit36

_ZN11mpz_managerILb1EE3delER3mpz.exit36:          ; preds = %bb.ay, %bb.az, %_ZN11mpz_managerILb1EE3delER3mpz.exit32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.ba

bb.ba:                                            ; preds = %bb.a, %_ZN11mpz_managerILb1EE3delER3mpz.exit36
  %.020 = phi i1 [ %.0, %_ZN11mpz_managerILb1EE3delER3mpz.exit36 ], [ true, %bb.a ]
  ret i1 %.020
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN11mpz_managerILb1EE4rootERK3mpzjRS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !27
  store i32 %i.e, ptr %3, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -2
  store i8 %i.h, ptr %i.f, align 4
  br label %_ZN11mpz_managerILb1EE3setER3mpzRKS1_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN11mpz_managerILb1EE3setER3mpzRKS1_.exit

_ZN11mpz_managerILb1EE3setER3mpzRKS1_.exit:       ; preds = %bb.b, %bb.c
  %i.i = tail call noundef zeroext i1 @_ZN11mpz_managerILb1EE4rootER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %2)
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN11mpz_managerILb1EE7is_evenERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 1
  %i.d = icmp eq i8 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.0.in.in.in = select i1 %i.d, ptr %1, ptr %i.g
  %.0.in.in = load i32, ptr %.0.in.in.in, align 4, !tbaa !36
  %.0.in = and i32 %.0.in.in, 1
  %.0 = icmp eq i32 %.0.in, 0
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN11mpz_managerILb1EE6is_oddERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 1
  %i.d = icmp eq i8 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.0.in.in.in.i = select i1 %i.d, ptr %1, ptr %i.g
  %.0.in.in.i = load i32, ptr %.0.in.in.in.i, align 4, !tbaa !36
  %.0.i = trunc i32 %.0.in.in.i to i1
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN11mpz_managerILb1EE9decomposeERK3mpzR7svectorIjjE(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !108    ; 9 uses
  %.not.i = icmp eq ptr %i.a, null                ; 3 uses
  br i1 %.not.i, label %_ZN6vectorIjLb0EjE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -4
  store i32 0, ptr %i.b, align 4, !tbaa !36
  br label %_ZN6vectorIjLb0EjE5resetEv.exit

_ZN6vectorIjLb0EjE5resetEv.exit:                  ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, 1
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.j

bb.c:                                             ; preds = %_ZN6vectorIjLb0EjE5resetEv.exit
  %i.g = load i32, ptr %1, align 8, !tbaa !27     ; 3 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = sub nsw i32 0, %i.g
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !36   ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !36
  %i.n = icmp eq i32 %i.k, %i.m
  br i1 %i.n, label %bb.f, label %_ZN6vectorIjLb0EjE9push_backEOj.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !108 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN11mpz_managerILb0EE3gcdERK3mpzS3_RS1_:bb.a
  %i.fh = load i32, ptr %7, align 8, !tbaa !36
  store i32 %i.fh, ptr %6, align 8, !tbaa !36
  store i32 %i.fg, ptr %7, align 8, !tbaa !36
  %i.fi = load ptr, ptr %i.cz, align 8, !tbaa !44
  %i.fj = load ptr, ptr %i.dd, align 8, !tbaa !44
  store ptr %i.fj, ptr %i.cz, align 8, !tbaa !44
  store ptr %i.fi, ptr %i.dd, align 8, !tbaa !44
  %i.fk = load i8, ptr %i.cw, align 4             ; 2 uses
  %i.fl = and i8 %i.fk, -4
  %i.fm = and i8 %.pre193, -4
  %i.fn = and i8 %.pre193, 3
  %i.fo = or disjoint i8 %i.fn, %i.fl
  store i8 %i.fo, ptr %i.cw, align 4
  %i.fp = and i8 %i.fk, 3
  %i.fq = or disjoint i8 %i.fm, %i.fp             ; 2 uses
  store i8 %i.fq, ptr %i.da, align 4
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %_ZN11mpz_managerILb0EE3absER3mpz.exit87
  %i.fr = phi i8 [ %i.fq, %bb.av ], [ %.pre193, %_ZN11mpz_managerILb0EE3absER3mpz.exit87 ] ; 2 uses
  %i.fs = and i8 %i.fr, 1
  %i.ft = icmp eq i8 %i.fs, 0
  br i1 %i.ft, label %.._crit_edge189_crit_edge, label %.lr.ph188

.._crit_edge189_crit_edge:                        ; preds = %bb.aw
  %.pre196 = load i8, ptr %i.cw, align 4
  br label %._crit_edge189

.lr.ph188:                                        ; preds = %bb.aw
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.pre194 = load ptr, ptr %i.cz, align 8, !tbaa !26
  %.pre195 = load ptr, ptr %i.dd, align 8, !tbaa !26
  br label %bb.bk

._crit_edge189:                                   ; preds = %bb.cx, %.._crit_edge189_crit_edge
  %i.fw = phi i8 [ %i.fr, %.._crit_edge189_crit_edge ], [ %i.ry, %bb.cx ]
  %i.fx = phi i8 [ %.pre196, %.._crit_edge189_crit_edge ], [ %i.rx, %bb.cx ] ; 3 uses
  %i.fy = and i8 %i.fx, 1
  %i.fz = icmp eq i8 %i.fy, 0
  br i1 %i.fz, label %bb.ax, label %.preheader

.preheader:                                       ; preds = %._crit_edge189
  %i.ga = load i32, ptr %7, align 8, !tbaa !27    ; 2 uses
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %.preheader.._crit_edge191_crit_edge, label %.lr.ph190

.preheader.._crit_edge191_crit_edge:              ; preds = %.preheader
  %.pre203 = load i32, ptr %6, align 8, !tbaa !36
  %.pre204 = load ptr, ptr %i.cz, align 8, !tbaa !44
  br label %._crit_edge191

.lr.ph190:                                        ; preds = %.preheader
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.bf

bb.ax:                                            ; preds = %._crit_edge189
  %i.ge = load i32, ptr %6, align 8, !tbaa !27    ; 5 uses
  %i.gf = load i32, ptr %7, align 8, !tbaa !27    ; 7 uses
  %i.gg = icmp eq i32 %i.ge, 0
  br i1 %i.gg, label %_Z5u_gcdjj.exit98, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gh = icmp eq i32 %i.gf, 0
  br i1 %i.gh, label %_Z5u_gcdjj.exit98, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gi = or i32 %i.gf, %i.ge                     ; 2 uses
  %i.gj = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ge, i1 true)
  %i.gk = lshr exact i32 %i.ge, %i.gj             ; 3 uses
  %i.gl = icmp eq i32 %i.gk, 1
  %i.gm = icmp eq i32 %i.gf, 1
  %or.cond.i88 = or i1 %i.gm, %i.gl
  br i1 %or.cond.i88, label %.loopexit.i93, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gn = icmp eq i32 %i.gk, %i.gf
  br i1 %i.gn, label %.loopexit.i93, label %.preheader.i89

.preheader.i89:                                   ; preds = %bb.ba, %.preheader.i89
  %.031.i90 = phi i32 [ %i.gu, %.preheader.i89 ], [ %i.gf, %bb.ba ] ; 2 uses
  %.030.i91 = phi i32 [ %i.gs, %.preheader.i89 ], [ %i.gk, %bb.ba ]
  %i.go = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.031.i90, i1 true)
  %i.gp = lshr exact i32 %.031.i90, %i.go         ; 2 uses
  %i.gq = sub i32 %.030.i91, %i.gp                ; 2 uses
  %i.gr = call i32 @llvm.smin.i32(i32 %i.gq, i32 0) ; 2 uses
  %i.gs = add i32 %i.gr, %i.gp                    ; 2 uses
  %i.gt = shl i32 %i.gr, 1
  %i.gu = sub i32 %i.gq, %i.gt                    ; 2 uses
  %.not.i92 = icmp eq i32 %i.gu, 0
  br i1 %.not.i92, label %.loopexit.i93, label %.preheader.i89, !llvm.loop !1

.loopexit.i93:                                    ; preds = %.preheader.i89, %bb.ba, %bb.az
  %.pn.i94 = phi i32 [ %i.gf, %bb.ba ], [ 1, %bb.az ], [ %i.gs, %.preheader.i89 ]
  %neg.i95 = sub i32 0, %i.gi
  %i.gv = and i32 %i.gi, %neg.i95
  %.0.i96 = mul i32 %.pn.i94, %i.gv
  br label %_Z5u_gcdjj.exit98

_Z5u_gcdjj.exit98:                                ; preds = %bb.ax, %bb.ay, %.loopexit.i93
  %.1.i97 = phi i32 [ %.0.i96, %.loopexit.i93 ], [ %i.gf, %bb.ax ], [ %i.ge, %bb.ay ] ; 3 uses
  %i.gw = icmp sgt i32 %.1.i97, -1
  br i1 %i.gw, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_Z5u_gcdjj.exit98
  store i32 %.1.i97, ptr %3, align 8, !tbaa !27
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 4
  %i.gz = and i8 %i.gy, -2
  store i8 %i.gz, ptr %i.gx, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzj.exit102

bb.bc:                                            ; preds = %_Z5u_gcdjj.exit98
  %i.ha = zext i32 %.1.i97 to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !26 ; 2 uses
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %bb.bd, label %._crit_edge.i.i.i99

._crit_edge.i.i.i99:                              ; preds = %bb.bc
  %.phi.trans.insert.i.i.i100 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.pre.i.i.i101 = load i8, ptr %.phi.trans.insert.i.i.i100, align 4
  br label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.he = call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(600) %0, i64 noundef 32), !inline_history !244 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  store i32 6, ptr %i.hf, align 4, !tbaa !22
  store ptr %i.he, ptr %i.hb, align 8, !tbaa !26
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.hh = load i8, ptr %i.hg, align 4
  %i.hi = and i8 %i.hh, -3
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %._crit_edge.i.i.i99
  %i.hj = phi ptr [ %i.hc, %._crit_edge.i.i.i99 ], [ %i.he, %bb.bd ] ; 2 uses
  %i.hk = phi i8 [ %.pre.i.i.i101, %._crit_edge.i.i.i99 ], [ %i.hi, %bb.bd ]
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.hm = or i8 %i.hk, 1
  store i8 %i.hm, ptr %i.hl, align 4
  store i32 1, ptr %3, align 8, !tbaa !27
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store i64 %i.ha, ptr %i.hn, align 4
  store i32 1, ptr %i.hj, align 4, !tbaa !35
  br label %_ZN11mpz_managerILb0EE3setER3mpzj.exit102

bb.bf:                                            ; preds = %.lr.ph190, %_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_.exit
  %i.ho = phi i8 [ %i.fw, %.lr.ph190 ], [ %i.je, %_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_.exit ] ; 2 uses
  %i.hp = phi i8 [ %i.fx, %.lr.ph190 ], [ %i.iz, %_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_.exit ] ; 2 uses
  %i.hq = phi i32 [ %i.ga, %.lr.ph190 ], [ %i.io, %_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_.exit ] ; 2 uses
  %i.hr = and i8 %i.hp, 1
  %i.hs = icmp eq i8 %i.hr, 0
  %i.ht = and i8 %i.ho, 1
  %i.hu = icmp eq i8 %i.ht, 0
  %or.cond = select i1 %i.hs, i1 %i.hu, i1 false
  br i1 %or.cond, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.hv = load i32, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.hw = sext i32 %i.hv to i64
  %i.hx = sext i32 %i.hq to i64
  %i.hy = srem i64 %i.hw, %i.hx
  %i.hz = trunc nsw i64 %i.hy to i32
  %i.ia = load i8, ptr %i.dm, align 4
  %i.ib = and i8 %i.ia, -2
  br label %_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_.exit

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i32 0, ptr %5, align 8, !tbaa !27
  %i.ic = load i8, ptr %i.gc, align 4
  %i.id = and i8 %i.ic, -4
  store i8 %i.id, ptr %i.gc, align 4
  store ptr null, ptr %i.gd, align 8, !tbaa !26
  call void @_ZN11mpz_managerILb0EE13quot_rem_coreILi1EEEvRK3mpzS4_RS2_S5_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %10)
  %i.ie = load ptr, ptr %i.gd, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ie, null
  br i1 %.not.i.i.i.i, label %_ZN11mpz_managerILb0EE7big_remERK3mpzS3_RS1_.exit.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.if = load i8, ptr %i.gc, align 4
  %i.ig = and i8 %i.if, 2
  %i.ih = icmp eq i8 %i.ig, 0
  br i1 %i.ih, label %bb.bj, label %_ZN11mpz_managerILb0EE7big_remERK3mpzS3_RS1_.exit.i

bb.bj:                                            ; preds = %bb.bi
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !22
  %i.ik = shl i32 %i.ij, 2
  %i.il = add i32 %i.ik, 8
  %i.im = zext i32 %i.il to i64
  call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(600) %0, i64 noundef %i.im, ptr noundef nonnull %i.ie)
  br label %_ZN11mpz_managerILb0EE7big_remERK3mpzS3_RS1_.exit.i

_ZN11mpz_managerILb0EE7big_remERK3mpzS3_RS1_.exit.i: ; preds = %bb.bj, %bb.bi, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %.pre197 = load i32, ptr %6, align 8, !tbaa !36
  %.pre198 = load i32, ptr %7, align 8, !tbaa !36
  %.pre199 = load i8, ptr %i.cw, align 4          ; 2 uses
  %.pre200 = load i8, ptr %i.da, align 4
  %.pre201 = load i32, ptr %10, align 8, !tbaa !36
  %.pre202 = load i8, ptr %i.dm, align 4
  %.pre210 = and i8 %.pre199, 1
  br label %_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_.exit

_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_.exit:    ; preds = %bb.bg, %_ZN11mpz_managerILb0EE7big_remERK3mpzS3_RS1_.exit.i
  %.pre-phi211 = phi i8 [ 0, %bb.bg ], [ %.pre210, %_ZN11mpz_managerILb0EE7big_remERK3mpzS3_RS1_.exit.i ]
  %i.in = phi i8 [ %i.ib, %bb.bg ], [ %.pre202, %_ZN11mpz_managerILb0EE7big_remERK3mpzS3_RS1_.exit.i ] ; 2 uses
  %i.io = phi i32 [ %i.hz, %bb.bg ], [ %.pre201, %_ZN11mpz_managerILb0EE7big_remERK3mpzS3_RS1_.exit.i ] ; 3 uses
  %i.ip = phi i8 [ %i.ho, %bb.bg ], [ %.pre200, %_ZN11mpz_managerILb0EE7big_remERK3mpzS3_RS1_.exit.i ] ; 2 uses
  %i.iq = phi i8 [ %i.hp, %bb.bg ], [ %.pre199, %_ZN11mpz_managerILb0EE7big_remERK3mpzS3_RS1_.exit.i ] ; 2 uses
  %i.ir = phi i32 [ %i.hq, %bb.bg ], [ %.pre198, %_ZN11mpz_managerILb0EE7big_remERK3mpzS3_RS1_.exit.i ] ; 2 uses
  %i.is = phi i32 [ %i.hv, %bb.bg ], [ %.pre197, %_ZN11mpz_managerILb0EE7big_remERK3mpzS3_RS1_.exit.i ]
  store i32 %i.ir, ptr %6, align 8, !tbaa !36
  %i.it = load ptr, ptr %i.cz, align 8, !tbaa !44
  %i.iu = load ptr, ptr %i.dd, align 8, !tbaa !44 ; 2 uses
  store ptr %i.iu, ptr %i.cz, align 8, !tbaa !44
  %i.iv = and i8 %i.iq, 2
  %i.iw = and i8 %i.iq, -4
  %i.ix = and i8 %i.ip, -4
  %i.iy = and i8 %i.ip, 3
  %i.iz = or disjoint i8 %i.iy, %i.iw             ; 3 uses
  store i8 %i.iz, ptr %i.cw, align 4
  store i32 %i.io, ptr %7, align 8, !tbaa !36
  store i32 %i.is, ptr %10, align 8, !tbaa !36
  %i.ja = load ptr, ptr %i.dp, align 8, !tbaa !44
  store ptr %i.ja, ptr %i.dd, align 8, !tbaa !44
  store ptr %i.it, ptr %i.dp, align 8, !tbaa !44
  %i.jb = and i8 %i.in, -4
  %i.jc = or disjoint i8 %i.jb, %i.iv
  %i.jd = and i8 %i.in, 3
  %i.je = or disjoint i8 %i.jd, %i.ix             ; 2 uses
  store i8 %i.je, ptr %i.da, align 4
  %i.jf = or disjoint i8 %i.jc, %.pre-phi211
  store i8 %i.jf, ptr %i.dm, align 4
  %i.jg = icmp eq i32 %i.io, 0
  br i1 %i.jg, label %._crit_edge191, label %bb.bf, !llvm.loop !241

._crit_edge191:                                   ; preds = %_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_.exit, %.preheader.._crit_edge191_crit_edge
  %i.jh = phi i8 [ %i.fx, %.preheader.._crit_edge191_crit_edge ], [ %i.iz, %_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_.exit ] ; 2 uses
  %i.ji = phi ptr [ %.pre204, %.preheader.._crit_edge191_crit_edge ], [ %i.iu, %_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_.exit ]
  %i.jj = phi i32 [ %.pre203, %.preheader.._crit_edge191_crit_edge ], [ %i.ir, %_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_.exit ]
  %i.jk = load i32, ptr %3, align 8, !tbaa !36
  store i32 %i.jj, ptr %3, align 8, !tbaa !36
  store i32 %i.jk, ptr %6, align 8, !tbaa !36
  %i.jl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !44
  store ptr %i.ji, ptr %i.jl, align 8, !tbaa !44
  store ptr %i.jm, ptr %i.cz, align 8, !tbaa !44
  %i.jn = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.jo = load i8, ptr %i.jn, align 4             ; 2 uses
  %i.jp = and i8 %i.jo, -4
  %i.jq = and i8 %i.jh, -4
  %i.jr = and i8 %i.jh, 3
  %i.js = or disjoint i8 %i.jr, %i.jp
  store i8 %i.js, ptr %i.jn, align 4
  %i.jt = and i8 %i.jo, 3
  %i.ju = or disjoint i8 %i.jq, %i.jt
  store i8 %i.ju, ptr %i.cw, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzj.exit102

bb.bk:                                            ; preds = %.lr.ph188, %bb.cx
  %i.jv = phi ptr [ %.pre195, %.lr.ph188 ], [ %i.rz, %bb.cx ] ; 2 uses
  %i.jw = phi ptr [ %.pre194, %.lr.ph188 ], [ %i.sa, %bb.cx ] ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !35 ; 2 uses
  %i.jy = load i32, ptr %i.jv, align 4, !tbaa !35
  %i.jz = icmp eq i32 %i.jy, %i.jx
  br i1 %i.jz, label %bb.bl, label %._crit_edge.thread

bb.bl:                                            ; preds = %bb.bk
  %i.ka = zext i32 %i.jx to i64                   ; 2 uses
  %i.kb = getelementptr i8, ptr %i.jv, i64 4
  %i.kc = getelementptr [4 x i8], ptr %i.kb, i64 %i.ka
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !36 ; 2 uses
  %i.ke = icmp eq i32 %i.kd, 0
  br i1 %i.ke, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.bl
  %i.kf = zext i32 %i.kd to i64                   ; 2 uses
  %i.kg = getelementptr i8, ptr %i.jw, i64 4
  %i.kh = getelementptr [4 x i8], ptr %i.kg, i64 %i.ka
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !36
  %i.kj = zext i32 %i.ki to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bn
  %i.kk = phi i64 [ %i.kx, %bb.bn ], [ %i.kf, %.lr.ph.preheader ]
  %.064173 = phi i64 [ %i.ku, %bb.bn ], [ 1, %.lr.ph.preheader ] ; 6 uses
  %.065172 = phi i64 [ %i.ks, %bb.bn ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.066171 = phi i64 [ %.064173, %bb.bn ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.067170 = phi i64 [ %.065172, %bb.bn ], [ 1, %.lr.ph.preheader ] ; 4 uses
  %.068169 = phi i64 [ %i.kw, %bb.bn ], [ %i.kf, %.lr.ph.preheader ] ; 3 uses
  %.069168 = phi i64 [ %.068169, %bb.bn ], [ %i.kj, %.lr.ph.preheader ] ; 3 uses
  %i.kl = add nsw i64 %.064173, %.068169          ; 2 uses
  %i.km = icmp eq i64 %i.kl, 0
  br i1 %i.km, label %._crit_edge, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph
  %i.kn = add nsw i64 %.067170, %.069168
  %i.ko = sdiv i64 %i.kn, %i.kk                   ; 4 uses
  %i.kp = add nsw i64 %.066171, %.069168
  %i.kq = sdiv i64 %i.kp, %i.kl
  %.not78 = icmp eq i64 %i.ko, %i.kq
  br i1 %.not78, label %bb.bn, label %._crit_edge

bb.bn:                                            ; preds = %bb.bm
  %i.kr = mul nsw i64 %i.ko, %.065172
  %i.ks = sub nsw i64 %.067170, %i.kr             ; 3 uses
  %i.kt = mul nsw i64 %i.ko, %.064173
  %i.ku = sub nsw i64 %.066171, %i.kt             ; 2 uses
  %i.kv = mul nsw i64 %i.ko, %.068169
  %i.kw = sub nsw i64 %.069168, %i.kv             ; 2 uses
  %i.kx = add nsw i64 %i.ks, %i.kw                ; 2 uses
  %i.ky = icmp eq i64 %i.kx, 0
  br i1 %i.ky, label %._crit_edge, label %.lr.ph, !llvm.loop !242

._crit_edge:                                      ; preds = %.lr.ph, %bb.bn, %bb.bm
  %.067.lcssa = phi i64 [ %.065172, %bb.bn ], [ %.067170, %bb.bm ], [ %.067170, %.lr.ph ] ; 5 uses
  %.066.lcssa = phi i64 [ %.064173, %bb.bn ], [ %.066171, %bb.bm ], [ %.066171, %.lr.ph ] ; 6 uses
  %.065.lcssa = phi i64 [ %i.ks, %bb.bn ], [ %.065172, %bb.bm ], [ %.065172, %.lr.ph ] ; 5 uses
  %.064.lcssa = phi i64 [ %i.ku, %bb.bn ], [ %.064173, %bb.bm ], [ %.064173, %.lr.ph ] ; 5 uses
  %i.kz = icmp eq i64 %.066.lcssa, 0
  br i1 %i.kz, label %._crit_edge.thread, label %bb.bq

._crit_edge.thread:                               ; preds = %bb.bk, %bb.bl, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i32 0, ptr %4, align 8, !tbaa !27
  %i.la = load i8, ptr %i.fu, align 4
  %i.lb = and i8 %i.la, -4
  store i8 %i.lb, ptr %i.fu, align 4
  store ptr null, ptr %i.fv, align 8, !tbaa !26
  call void @_ZN11mpz_managerILb0EE13quot_rem_coreILi1EEEvRK3mpzS4_RS2_S5_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %8)
  %i.lc = load ptr, ptr %i.fv, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i103 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i.i.i103, label %_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_.exit105, label %bb.bo

bb.bo:                                            ; preds = %._crit_edge.thread
  %i.ld = load i8, ptr %i.fu, align 4
  %i.le = and i8 %i.ld, 2
  %i.lf = icmp eq i8 %i.le, 0
  br i1 %i.lf, label %bb.bp, label %_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_.exit105

bb.bp:                                            ; preds = %bb.bo
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 4
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !22
  %i.li = shl i32 %i.lh, 2
  %i.lj = add i32 %i.li, 8
  %i.lk = zext i32 %i.lj to i64
  call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(600) %0, i64 noundef %i.lk, ptr noundef nonnull %i.lc)
  br label %_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_.exit105

_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_.exit105: ; preds = %._crit_edge.thread, %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.ll = load i32, ptr %6, align 8, !tbaa !36
  %i.lm = load i32, ptr %7, align 8, !tbaa !36
  store i32 %i.lm, ptr %6, align 8, !tbaa !36
  %i.ln = load ptr, ptr %i.cz, align 8, !tbaa !44
  %i.lo = load ptr, ptr %i.dd, align 8, !tbaa !44 ; 2 uses
  store ptr %i.lo, ptr %i.cz, align 8, !tbaa !44
  %i.lp = load i8, ptr %i.cw, align 4             ; 2 uses
  %i.lq = load i8, ptr %i.da, align 4             ; 2 uses
  %i.lr = and i8 %i.lp, -4
  %i.ls = and i8 %i.lq, -4
  %i.lt = and i8 %i.lq, 3
  %i.lu = or disjoint i8 %i.lt, %i.lr             ; 2 uses
  store i8 %i.lu, ptr %i.cw, align 4
  %i.lv = load i32, ptr %8, align 8, !tbaa !36
  store i32 %i.lv, ptr %7, align 8, !tbaa !36
  store i32 %i.ll, ptr %8, align 8, !tbaa !36
  %i.lw = load ptr, ptr %i.dh, align 8, !tbaa !44 ; 2 uses
  store ptr %i.lw, ptr %i.dd, align 8, !tbaa !44
  store ptr %i.ln, ptr %i.dh, align 8, !tbaa !44
  %i.lx = load i8, ptr %i.de, align 4             ; 2 uses
  %i.ly = and i8 %i.lx, -4
  %i.lz = and i8 %i.lx, 3
  %i.ma = or disjoint i8 %i.lz, %i.ls             ; 2 uses
  store i8 %i.ma, ptr %i.da, align 4
  %i.mb = and i8 %i.lp, 3
  %i.mc = or disjoint i8 %i.ly, %i.mb
  store i8 %i.mc, ptr %i.de, align 4
  br label %bb.cx

bb.bq:                                            ; preds = %._crit_edge
  %i.md = add i64 %.067.lcssa, 2147483648
  %or.cond.i.i = icmp ult i64 %i.md, 4294967296
  br i1 %or.cond.i.i, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.me = trunc nsw i64 %.067.lcssa to i32
  store i32 %i.me, ptr %10, align 8, !tbaa !27
  %i.mf = load i8, ptr %i.dm, align 4
  %i.mg = and i8 %i.mf, -2
  store i8 %i.mg, ptr %i.dm, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzl.exit

bb.bs:                                            ; preds = %bb.bq
  %i.mh = load ptr, ptr %i.dp, align 8, !tbaa !26 ; 2 uses
  %i.mi = icmp eq ptr %i.mh, null
  br i1 %i.mi, label %bb.bt, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.bs
  %.pre.i.i = load i8, ptr %i.dm, align 4
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.mj = call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(600) %0, i64 noundef 32), !inline_history !118 ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  store i32 6, ptr %i.mk, align 4, !tbaa !22
  store ptr %i.mj, ptr %i.dp, align 8, !tbaa !26
  %i.ml = load i8, ptr %i.dm, align 4
  %i.mm = and i8 %i.ml, -3
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %._crit_edge.i.i
  %i.mn = phi ptr [ %i.mh, %._crit_edge.i.i ], [ %i.mj, %bb.bt ] ; 4 uses
  %i.mo = phi i8 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.mm, %bb.bt ]
  %i.mp = or i8 %i.mo, 1
  store i8 %i.mp, ptr %i.dm, align 4
  %i.mq = icmp eq i64 %.067.lcssa, -9223372036854775808
  br i1 %i.mq, label %bb.bv, label %.thread27.i.i

.thread27.i.i:                                    ; preds = %bb.bu
  %i.mr = icmp slt i64 %.067.lcssa, 0
  %.sink.i.i = select i1 %i.mr, i32 -1, i32 1
  %.0.i.i = call i64 @llvm.abs.i64(i64 %.067.lcssa, i1 false) ; 2 uses
  store i32 %.sink.i.i, ptr %10, align 8, !tbaa !27
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  store i64 %.0.i.i, ptr %i.ms, align 4
  %i.mt = icmp ult i64 %.0.i.i, 4294967296
  %.ph.i.i = select i1 %i.mt, i32 1, i32 2
  store i32 %.ph.i.i, ptr %i.mn, align 4, !tbaa !35
  br label %_ZN11mpz_managerILb0EE3setER3mpzl.exit

bb.bv:                                            ; preds = %bb.bu
  store i32 -1, ptr %10, align 8, !tbaa !27
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  store i64 4611686018427387904, ptr %i.mu, align 4
  store i32 2, ptr %i.mn, align 4, !tbaa !35
  call void @_ZN11mpz_managerILb0EE11big_add_subILb0EEEvRK3mpzS4_RS2_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %10), !inline_history !245
  br label %_ZN11mpz_managerILb0EE3setER3mpzl.exit

_ZN11mpz_managerILb0EE3setER3mpzl.exit:           ; preds = %bb.br, %.thread27.i.i, %bb.bv
  %i.mv = load i8, ptr %i.cw, align 4
  %i.mw = and i8 %i.mv, 1
  %i.mx = icmp eq i8 %i.mw, 0
  br i1 %i.mx, label %bb.bw, label %bb.cb

bb.bw:                                            ; preds = %_ZN11mpz_managerILb0EE3setER3mpzl.exit
  %i.my = load i8, ptr %i.dm, align 4
  %i.mz = and i8 %i.my, 1
  %i.na = icmp eq i8 %i.mz, 0
  br i1 %i.na, label %bb.bx, label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  %i.nb = load i32, ptr %6, align 8, !tbaa !27
  %i.nc = sext i32 %i.nb to i64
  %i.nd = load i32, ptr %10, align 8, !tbaa !27
  %i.ne = sext i32 %i.nd to i64
  %i.nf = mul nsw i64 %i.ne, %i.nc                ; 4 uses
  %i.ng = add nsw i64 %i.nf, 2147483648
  %or.cond.i.i106 = icmp ult i64 %i.ng, 4294967296
  br i1 %or.cond.i.i106, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.nh = trunc nsw i64 %i.nf to i32
  store i32 %i.nh, ptr %8, align 8, !tbaa !27
  %i.ni = load i8, ptr %i.de, align 4
  %i.nj = and i8 %i.ni, -2
  store i8 %i.nj, ptr %i.de, align 4
  br label %_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_.exit

bb.bz:                                            ; preds = %bb.bx
  %i.nk = load ptr, ptr %i.dh, align 8, !tbaa !26 ; 2 uses
  %i.nl = icmp eq ptr %i.nk, null
  br i1 %i.nl, label %bb.ca, label %._crit_edge.i.i.i107

._crit_edge.i.i.i107:                             ; preds = %bb.bz
  %.pre.i.i.i109 = load i8, ptr %i.de, align 4
  br label %.thread27.i.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.nm = call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(600) %0, i64 noundef 32), !inline_history !117 ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 4
  store i32 6, ptr %i.nn, align 4, !tbaa !22
  store ptr %i.nm, ptr %i.dh, align 8, !tbaa !26
  %i.no = load i8, ptr %i.de, align 4
  %i.np = and i8 %i.no, -3
  br label %.thread27.i.i.i

.thread27.i.i.i:                                  ; preds = %bb.ca, %._crit_edge.i.i.i107
  %i.nq = phi ptr [ %i.nk, %._crit_edge.i.i.i107 ], [ %i.nm, %bb.ca ] ; 2 uses
  %i.nr = phi i8 [ %.pre.i.i.i109, %._crit_edge.i.i.i107 ], [ %i.np, %bb.ca ]
  %i.ns = or i8 %i.nr, 1
  store i8 %i.ns, ptr %i.de, align 4
  %i.nt = icmp slt i64 %i.nf, 0
  %.sink.i.i.i = select i1 %i.nt, i32 -1, i32 1
  %.0.i.i.i = call i64 @llvm.abs.i64(i64 %i.nf, i1 true) ; 2 uses
  store i32 %.sink.i.i.i, ptr %8, align 8, !tbaa !27
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  store i64 %.0.i.i.i, ptr %i.nu, align 4
  %i.nv = icmp samesign ult i64 %.0.i.i.i, 4294967296
  %.ph.i.i.i = select i1 %i.nv, i32 1, i32 2
  store i32 %.ph.i.i.i, ptr %i.nq, align 4, !tbaa !35
  br label %_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_.exit

bb.cb:                                            ; preds = %bb.bw, %_ZN11mpz_managerILb0EE3setER3mpzl.exit
  call void @_ZN11mpz_managerILb0EE7big_mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %8)
  br label %_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_.exit

_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_.exit:    ; preds = %bb.by, %.thread27.i.i.i, %bb.cb
  %i.nw = add i64 %.066.lcssa, 2147483648
  %or.cond.i.i110 = icmp ult i64 %i.nw, 4294967296
  br i1 %or.cond.i.i110, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_.exit
  %i.nx = trunc nsw i64 %.066.lcssa to i32
  store i32 %i.nx, ptr %10, align 8, !tbaa !27
  %i.ny = load i8, ptr %i.dm, align 4
  %i.nz = and i8 %i.ny, -2
  store i8 %i.nz, ptr %i.dm, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzl.exit118

bb.cd:                                            ; preds = %_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_.exit
  %i.oa = load ptr, ptr %i.dp, align 8, !tbaa !26 ; 2 uses
  %i.ob = icmp eq ptr %i.oa, null
  br i1 %i.ob, label %bb.ce, label %._crit_edge.i.i111

._crit_edge.i.i111:                               ; preds = %bb.cd
  %.pre.i.i113 = load i8, ptr %i.dm, align 4
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.oc = call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(600) %0, i64 noundef 32), !inline_history !118 ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 4
  store i32 6, ptr %i.od, align 4, !tbaa !22
  store ptr %i.oc, ptr %i.dp, align 8, !tbaa !26
  %i.oe = load i8, ptr %i.dm, align 4
  %i.of = and i8 %i.oe, -3
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %._crit_edge.i.i111
  %i.og = phi ptr [ %i.oa, %._crit_edge.i.i111 ], [ %i.oc, %bb.ce ] ; 4 uses
  %i.oh = phi i8 [ %.pre.i.i113, %._crit_edge.i.i111 ], [ %i.of, %bb.ce ]
  %i.oi = or i8 %i.oh, 1
  store i8 %i.oi, ptr %i.dm, align 4
  %i.oj = icmp eq i64 %.066.lcssa, -9223372036854775808
  br i1 %i.oj, label %bb.cg, label %.thread27.i.i114

.thread27.i.i114:                                 ; preds = %bb.cf
  %i.ok = icmp slt i64 %.066.lcssa, 0
  %.sink.i.i115 = select i1 %i.ok, i32 -1, i32 1
  %.0.i.i116 = call i64 @llvm.abs.i64(i64 %.066.lcssa, i1 false) ; 2 uses
  store i32 %.sink.i.i115, ptr %10, align 8, !tbaa !27
  %i.ol = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  store i64 %.0.i.i116, ptr %i.ol, align 4
  %i.om = icmp ult i64 %.0.i.i116, 4294967296
  %.ph.i.i117 = select i1 %i.om, i32 1, i32 2
  store i32 %.ph.i.i117, ptr %i.og, align 4, !tbaa !35
  br label %_ZN11mpz_managerILb0EE3setER3mpzl.exit118

bb.cg:                                            ; preds = %bb.cf
  store i32 -1, ptr %10, align 8, !tbaa !27
  %i.on = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  store i64 4611686018427387904, ptr %i.on, align 4
  store i32 2, ptr %i.og, align 4, !tbaa !35
  call void @_ZN11mpz_managerILb0EE11big_add_subILb0EEEvRK3mpzS4_RS2_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %10), !inline_history !245
  br label %_ZN11mpz_managerILb0EE3setER3mpzl.exit118

_ZN11mpz_managerILb0EE3setER3mpzl.exit118:        ; preds = %bb.cc, %.thread27.i.i114, %bb.cg
  call void @_ZN11mpz_managerILb0EE6addmulERK3mpzS3_S3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
  %i.oo = add i64 %.065.lcssa, 2147483648
  %or.cond.i.i119 = icmp ult i64 %i.oo, 4294967296
  br i1 %or.cond.i.i119, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %_ZN11mpz_managerILb0EE3setER3mpzl.exit118
  %i.op = trunc nsw i64 %.065.lcssa to i32
end_hunk_3
begin_hunk_4_@_ZN11mpz_managerILb0EE17is_perfect_squareERK3mpzRS1_:bb.a
  %i.ix = phi i8 [ %i.ip, %bb.bq ], [ %.pre.i.i96, %bb.br ]
  store ptr null, ptr %i.ak, align 8, !tbaa !26
  %i.iy = and i8 %i.ix, -4
  store i8 %i.iy, ptr %i.ah, align 4
  br label %_ZN11mpz_managerILb0EE3delER3mpz.exit97

_ZN11mpz_managerILb0EE3delER3mpz.exit97:          ; preds = %_ZN11mpz_managerILb0EE3delER3mpz.exit93, %_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i95
  %i.iz = load ptr, ptr %i.ao, align 8, !tbaa !26 ; 3 uses
  %.not.i.i98 = icmp eq ptr %i.iz, null
  br i1 %.not.i.i98, label %_ZN11mpz_managerILb0EE3delER3mpz.exit101, label %bb.bs

bb.bs:                                            ; preds = %_ZN11mpz_managerILb0EE3delER3mpz.exit97
  %i.ja = load i8, ptr %i.al, align 4
  %i.jb = and i8 %i.ja, 2
  %i.jc = icmp eq i8 %i.jb, 0
  br i1 %i.jc, label %bb.bt, label %_ZN11mpz_managerILb0EE3delER3mpz.exit101

bb.bt:                                            ; preds = %bb.bs
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 4
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !22
  %i.jf = shl i32 %i.je, 2
  %i.jg = add i32 %i.jf, 8
  %i.jh = zext i32 %i.jg to i64
  call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(600) %0, i64 noundef %i.jh, ptr noundef nonnull %i.iz)
  br label %_ZN11mpz_managerILb0EE3delER3mpz.exit101

_ZN11mpz_managerILb0EE3delER3mpz.exit101:         ; preds = %bb.bs, %bb.bt, %_ZN11mpz_managerILb0EE3delER3mpz.exit97
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.bu

bb.bu:                                            ; preds = %_ZN11mpz_managerILb0EE3delER3mpz.exit101, %_ZN11mpz_managerILb0EE21get_least_significantERK3mpz.exit, %bb.b, %bb.a, %bb.d
  %.141 = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ true, %bb.d ], [ %.3, %_ZN11mpz_managerILb0EE3delER3mpz.exit101 ], [ false, %_ZN11mpz_managerILb0EE21get_least_significantERK3mpz.exit ]
  ret i1 %.141
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef i32 @_ZN11mpz_managerILb0EE21get_least_significantERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !27
  %i.f = tail call i32 @llvm.abs.i32(i32 %i.e, i1 true)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !35
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.1 = phi i32 [ %i.f, %bb.b ], [ %i.l, %bb.d ], [ 0, %bb.c ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef i32 @_ZN11mpz_managerILb0EE17prev_power_of_twoERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %_ZN11mpz_managerILb0EE4log2ERK3mpz.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, 1
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef i32 @_Z4log2j(i32 noundef %i.a)
  br label %_ZN11mpz_managerILb0EE4log2ERK3mpz.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = add i32 %i.j, -1                         ; 2 uses
  %i.m = shl i32 %i.l, 5
  %i.n = zext i32 %i.l to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !36
  %i.q = tail call noundef i32 @_Z4log2j(i32 noundef %i.p)
  %i.r = add i32 %i.m, %i.q
  br label %_ZN11mpz_managerILb0EE4log2ERK3mpz.exit

_ZN11mpz_managerILb0EE4log2ERK3mpz.exit:          ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.r, %bb.d ], [ %i.g, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef i32 @_ZN11mpz_managerILb0EE17next_power_of_twoERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !27     ; 4 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %_ZN11mpz_managerILb0EE15is_power_of_twoERK3mpzRj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, 1
  %i.f = icmp eq i8 %i.e, 0                       ; 2 uses
  %i.g = icmp eq i32 %i.a, 1
  %i.h = and i1 %i.g, %i.f
  br i1 %i.h, label %_ZN11mpz_managerILb0EE15is_power_of_twoERK3mpzRj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.a)
  %i.j = icmp eq i32 %i.i, 1
  %i.k = tail call noundef i32 @_Z4log2j(i32 noundef %i.a) ; 2 uses
  br i1 %i.j, label %_ZN11mpz_managerILb0EE15is_power_of_twoERK3mpzRj.exit, label %_ZN11mpz_managerILb0EE4log2ERK3mpz.exit

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26   ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.p = add i32 %i.n, -1                         ; 3 uses
  %.not2527.not.i = icmp eq i32 %i.p, 0
  br i1 %.not2527.not.i, label %.critedge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext i32 %i.p to i64       ; 2 uses
  br label %.lr.ph.i

bb.f:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !11

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !36
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.f, label %.loopexit

.critedge.i:                                      ; preds = %bb.f, %bb.e
  %.pre-phi.i = phi i64 [ 0, %bb.e ], [ %wide.trip.count.i, %bb.f ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.pre-phi.i
  %i.t = load i32, ptr %i.s, align 4, !tbaa !36   ; 2 uses
  %i.u = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.t)
  %or.cond.i = icmp eq i32 %i.u, 1
  br i1 %or.cond.i, label %_ZN11mpz_managerILb0EE4log2ERK3mpz.exit.i, label %.loopexit

_ZN11mpz_managerILb0EE4log2ERK3mpz.exit.i:        ; preds = %.critedge.i
  %i.v = shl i32 %i.p, 5
  %i.w = tail call noundef i32 @_Z4log2j(i32 noundef %i.t)
  %i.x = add i32 %i.w, %i.v
  br label %_ZN11mpz_managerILb0EE15is_power_of_twoERK3mpzRj.exit

.loopexit:                                        ; preds = %.lr.ph.i, %.critedge.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !26   ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = add i32 %i.aa, -1                       ; 2 uses
  %i.ad = shl i32 %i.ac, 5
  %i.ae = zext i32 %i.ac to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !36
  %i.ah = tail call noundef i32 @_Z4log2j(i32 noundef %i.ag)
  %i.ai = add i32 %i.ad, %i.ah
  br label %_ZN11mpz_managerILb0EE4log2ERK3mpz.exit

_ZN11mpz_managerILb0EE4log2ERK3mpz.exit:          ; preds = %bb.d, %.loopexit
  %.0.i = phi i32 [ %i.ai, %.loopexit ], [ %i.k, %bb.d ]
  %i.aj = add i32 %.0.i, 1
  br label %_ZN11mpz_managerILb0EE15is_power_of_twoERK3mpzRj.exit

_ZN11mpz_managerILb0EE15is_power_of_twoERK3mpzRj.exit: ; preds = %bb.d, %_ZN11mpz_managerILb0EE4log2ERK3mpz.exit, %_ZN11mpz_managerILb0EE4log2ERK3mpz.exit.i, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %i.aj, %_ZN11mpz_managerILb0EE4log2ERK3mpz.exit ], [ %i.x, %_ZN11mpz_managerILb0EE4log2ERK3mpz.exit.i ], [ %i.k, %bb.d ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN11mpz_managerILb0EE4rootER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %class.mpz, align 8                 ; 18 uses
  %4 = alloca %class.mpz, align 8                 ; 18 uses
  %5 = alloca %class.mpz, align 8                 ; 21 uses
  %6 = alloca %class.mpz, align 8                 ; 8 uses
  %7 = alloca %class.mpz, align 8                 ; 6 uses
  %8 = alloca %class.mpz, align 8                 ; 6 uses
  %9 = alloca %class.mpz, align 8                 ; 6 uses
  %10 = alloca %class.mpz, align 8                ; 6 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !27     ; 5 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.ba, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i32 0, ptr %3, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 13 uses
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, -4
  store i8 %i.e, ptr %i.c, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  store ptr null, ptr %i.f, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i32 0, ptr %4, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 13 uses
  %i.h = load i8, ptr %i.g, align 4
  %i.i = and i8 %i.h, -4
  store i8 %i.i, ptr %i.g, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store ptr null, ptr %i.j, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i32 0, ptr %5, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 21 uses
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, -4
  store i8 %i.m, ptr %i.k, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 11 uses
  store ptr null, ptr %i.n, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i32 0, ptr %6, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.p = load i8, ptr %i.o, align 4
  %i.q = and i8 %i.p, -4
  store i8 %i.q, ptr %i.o, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr null, ptr %i.r, align 8, !tbaa !26
  %i.s = icmp sgt i32 %i.a, 0
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load i8, ptr %i.t, align 4
  %i.v = and i8 %i.u, 1
  %i.w = icmp eq i8 %i.v, 0                       ; 2 uses
  br i1 %i.s, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = tail call noundef i32 @_Z4log2j(i32 noundef %i.a)
  br label %_ZN11mpz_managerILb0EE4log2ERK3mpz.exit

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !26   ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = add i32 %i.aa, -1                       ; 2 uses
  %i.ad = shl i32 %i.ac, 5
  %i.ae = zext i32 %i.ac to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !36
  %i.ah = tail call noundef i32 @_Z4log2j(i32 noundef %i.ag)
  %i.ai = add i32 %i.ad, %i.ah
  br label %_ZN11mpz_managerILb0EE4log2ERK3mpz.exit

_ZN11mpz_managerILb0EE4log2ERK3mpz.exit:          ; preds = %bb.d, %bb.e
  %.0.i = phi i32 [ %i.ai, %bb.e ], [ %i.x, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store i32 2, ptr %7, align 8, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 4
  %i.al = and i8 %i.ak, -4
  store i8 %i.al, ptr %i.aj, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.am, align 8, !tbaa !26
  %i.an = udiv i32 %.0.i, %2
  call void @_ZN11mpz_managerILb0EE5powerERK3mpzjRS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %i.an, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store i32 2, ptr %8, align 8, !tbaa !27
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 4
  %i.aq = and i8 %i.ap, -4
  store i8 %i.aq, ptr %i.ao, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.ar, align 8, !tbaa !26
  %i.as = add i32 %.0.i, 1                        ; 2 uses
  %i.at = urem i32 %i.as, %2
  %i.au = icmp ne i32 %i.at, 0
  %i.av = udiv i32 %i.as, %2
  %i.aw = zext i1 %i.au to i32
  %i.ax = add i32 %i.av, %i.aw
  call void @_ZN11mpz_managerILb0EE5powerERK3mpzjRS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %_ZN11mpz_managerILb0EE3negER3mpz.exit24

bb.f:                                             ; preds = %bb.b
  br i1 %i.w, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ay = icmp eq i32 %i.a, -2147483648
  br i1 %i.ay, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.az = tail call noundef i32 @_Z4log2j(i32 noundef -2147483648)
  br label %_ZN11mpz_managerILb0EE5mlog2ERK3mpz.exit

bb.i:                                             ; preds = %bb.g
  %i.ba = sub nsw i32 0, %i.a
  %i.bb = tail call noundef i32 @_Z4log2j(i32 noundef %i.ba)
  br label %_ZN11mpz_managerILb0EE5mlog2ERK3mpz.exit

bb.j:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !26 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !35
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bg = add i32 %i.be, -1                       ; 2 uses
  %i.bh = shl i32 %i.bg, 5
  %i.bi = zext i32 %i.bg to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !36
  %i.bl = tail call noundef i32 @_Z4log2j(i32 noundef %i.bk)
  %i.bm = add i32 %i.bh, %i.bl
  br label %_ZN11mpz_managerILb0EE5mlog2ERK3mpz.exit

_ZN11mpz_managerILb0EE5mlog2ERK3mpz.exit:         ; preds = %bb.h, %bb.i, %bb.j
  %.0.i21 = phi i32 [ %i.bm, %bb.j ], [ %i.az, %bb.h ], [ %i.bb, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store i32 2, ptr %9, align 8, !tbaa !27
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 4
  %i.bp = and i8 %i.bo, -4
  store i8 %i.bp, ptr %i.bn, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.bq, align 8, !tbaa !26
  %i.br = add i32 %.0.i21, 1                      ; 2 uses
  %i.bs = urem i32 %i.br, %2
  %i.bt = icmp ne i32 %i.bs, 0
  %i.bu = udiv i32 %i.br, %2
  %i.bv = zext i1 %i.bt to i32
  %i.bw = add i32 %i.bu, %i.bv
  call void @_ZN11mpz_managerILb0EE5powerERK3mpzjRS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  store i32 2, ptr %10, align 8, !tbaa !27
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 4
  %i.bz = and i8 %i.by, -4
  store i8 %i.bz, ptr %i.bx, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.ca, align 8, !tbaa !26
  %i.cb = udiv i32 %.0.i21, %2
  call void @_ZN11mpz_managerILb0EE5powerERK3mpzjRS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.cc = load i8, ptr %i.c, align 4              ; 2 uses
  %i.cd = and i8 %i.cc, 1
  %i.ce = icmp eq i8 %i.cd, 0
  %i.cf = load i32, ptr %3, align 8               ; 2 uses
  %i.cg = icmp eq i32 %i.cf, -2147483648
  %or.cond.i = select i1 %i.ce, i1 %i.cg, i1 false
  br i1 %or.cond.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN11mpz_managerILb0EE5mlog2ERK3mpz.exit
  %i.ch = load ptr, ptr %i.f, align 8, !tbaa !26  ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.l, label %_ZN11mpz_managerILb0EE11set_big_i64ER3mpzl.exit.i

bb.l:                                             ; preds = %bb.k
  %i.cj = call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(600) %0, i64 noundef 32), !inline_history !112 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store i32 6, ptr %i.ck, align 4, !tbaa !22
  store ptr %i.cj, ptr %i.f, align 8, !tbaa !26
  %i.cl = load i8, ptr %i.c, align 4
  %i.cm = and i8 %i.cl, -3
  br label %_ZN11mpz_managerILb0EE11set_big_i64ER3mpzl.exit.i

_ZN11mpz_managerILb0EE11set_big_i64ER3mpzl.exit.i: ; preds = %bb.l, %bb.k
  %i.cn = phi ptr [ %i.cj, %bb.l ], [ %i.ch, %bb.k ] ; 2 uses
  %i.co = phi i8 [ %i.cm, %bb.l ], [ %i.cc, %bb.k ]
  %i.cp = or i8 %i.co, 1
  store i8 %i.cp, ptr %i.c, align 4
  store i32 1, ptr %3, align 8, !tbaa !27
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 2147483648, ptr %i.cq, align 4
  store i32 1, ptr %i.cn, align 4, !tbaa !35
  br label %_ZN11mpz_managerILb0EE3negER3mpz.exit

bb.m:                                             ; preds = %_ZN11mpz_managerILb0EE5mlog2ERK3mpz.exit
  %i.cr = sub nsw i32 0, %i.cf
  store i32 %i.cr, ptr %3, align 8, !tbaa !27
  br label %_ZN11mpz_managerILb0EE3negER3mpz.exit

_ZN11mpz_managerILb0EE3negER3mpz.exit:            ; preds = %_ZN11mpz_managerILb0EE11set_big_i64ER3mpzl.exit.i, %bb.m
  %i.cs = load i8, ptr %i.g, align 4              ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN11mpz_managerILb0EE4rootER3mpzj:bb.a
  %i.fc = and i8 %i.fb, 1
  %i.fd = icmp eq i8 %i.fc, 0
  br i1 %i.fd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fe = sdiv i32 %i.fa, 2
  store i32 %i.fe, ptr %5, align 8, !tbaa !27
  br label %_ZN11mpz_managerILb0EE13machine_div2kER3mpzj.exit

bb.z:                                             ; preds = %bb.x
  %i.ff = load ptr, ptr %i.n, align 8, !tbaa !26  ; 4 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !35 ; 5 uses
  %.not.i.not = icmp eq i32 %i.fg, 0
  br i1 %.not.i.not, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %5, align 8, !tbaa !27
  %i.fh = and i8 %i.fb, -2
  store i8 %i.fh, ptr %i.k, align 4
  br label %_ZN11mpz_managerILb0EE13machine_div2kER3mpzj.exit

bb.ab:                                            ; preds = %bb.z
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 8 uses
  %i.fj = add i32 %i.fg, -1                       ; 2 uses
  %.not98.i = icmp eq i32 %i.fj, 0
  br i1 %.not98.i, label %._crit_edge94.i, label %.lr.ph93.preheader.i

.lr.ph93.preheader.i:                             ; preds = %bb.ab
  %wide.trip.count111.i = zext i32 %i.fj to i64   ; 5 uses
  %.pre.i = load i32, ptr %i.fi, align 4, !tbaa !36 ; 2 uses
  %min.iters.check = icmp ult i32 %i.fg, 9
  br i1 %min.iters.check, label %.lr.ph93.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph93.preheader.i
  %n.vec = and i64 %wide.trip.count111.i, 4294967288 ; 3 uses
  %vector.recur.init = insertelement <4 x i32> poison, i32 %.pre.i, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %wide.load57, %vector.body ]
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %index ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %index ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 20
  %wide.load = load <4 x i32>, ptr %i.fm, align 4, !tbaa !36 ; 3 uses
  %wide.load57 = load <4 x i32>, ptr %i.fn, align 4, !tbaa !36 ; 4 uses
  %i.fo = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fp = shufflevector <4 x i32> %wide.load, <4 x i32> %wide.load57, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fq = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load, <4 x i32> %i.fo, <4 x i32> splat (i32 31))
  %i.fr = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load57, <4 x i32> %i.fp, <4 x i32> splat (i32 31))
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store <4 x i32> %i.fq, ptr %i.fk, align 4, !tbaa !36
  store <4 x i32> %i.fr, ptr %i.fs, align 4, !tbaa !36
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ft = icmp eq i64 %index.next, %n.vec
  br i1 %i.ft, label %middle.block, label %vector.body, !llvm.loop !296

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %wide.load57, i64 3
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count111.i
  br i1 %cmp.n, label %._crit_edge94.i, label %.lr.ph93.i.preheader

.lr.ph93.i.preheader:                             ; preds = %.lr.ph93.preheader.i, %middle.block
  %.ph = phi i32 [ %.pre.i, %.lr.ph93.preheader.i ], [ %vector.recur.extract, %middle.block ]
  %indvars.iv108.i.ph = phi i64 [ 0, %.lr.ph93.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph93.i

.lr.ph93.i:                                       ; preds = %.lr.ph93.i.preheader, %.lr.ph93.i
  %i.fu = phi i32 [ %i.fx, %.lr.ph93.i ], [ %.ph, %.lr.ph93.i.preheader ]
  %indvars.iv108.i = phi i64 [ %indvars.iv.next109.i, %.lr.ph93.i ], [ %indvars.iv108.i.ph, %.lr.ph93.i.preheader ] ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv108.i
  %indvars.iv.next109.i = add nuw nsw i64 %indvars.iv108.i, 1 ; 3 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv.next109.i
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !36 ; 2 uses
  %i.fy = call i32 @llvm.fshl.i32(i32 %i.fx, i32 %i.fu, i32 31)
  store i32 %i.fy, ptr %i.fv, align 4, !tbaa !36
  %exitcond112.not.i = icmp eq i64 %indvars.iv.next109.i, %wide.trip.count111.i
  br i1 %exitcond112.not.i, label %._crit_edge94.i, label %.lr.ph93.i, !llvm.loop !297

._crit_edge94.i:                                  ; preds = %.lr.ph93.i, %middle.block, %bb.ab
  %.0.lcssa.i = phi i64 [ 0, %bb.ab ], [ %wide.trip.count111.i, %middle.block ], [ %wide.trip.count111.i, %.lr.ph93.i ]
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %.0.lcssa.i ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !36
  %i.gb = lshr i32 %i.ga, 1
  store i32 %i.gb, ptr %i.fz, align 4, !tbaa !36
  store i32 %i.fg, ptr %i.ff, align 4, !tbaa !35
  %i.gc = zext i32 %i.fg to i64
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ad
  %cond.i.i = icmp eq i64 %i.gd, 0
  br i1 %cond.i.i, label %bb.af, label %bb.ad, !llvm.loop !9

bb.ad:                                            ; preds = %._crit_edge94.i, %bb.ac
  %indvars.iv.i.i56 = phi i64 [ %i.gc, %._crit_edge94.i ], [ %i.gd, %bb.ac ] ; 3 uses
  %i.gd = add nsw i64 %indvars.iv.i.i56, -1       ; 3 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !36
  %.not20.i.i = icmp eq i32 %i.gf, 0
  br i1 %.not20.i.i, label %bb.ac, label %bb.ae, !llvm.loop !9

bb.ae:                                            ; preds = %bb.ad
  %i.gg = trunc nuw i64 %indvars.iv.i.i56 to i32
  %cond21.i.i = icmp eq i64 %indvars.iv.i.i56, 1
  br i1 %cond21.i.i, label %bb.ag, label %bb.ai

bb.af:                                            ; preds = %bb.ac
  store i32 0, ptr %5, align 8, !tbaa !27
  %i.gh = load i8, ptr %i.k, align 4
  %i.gi = and i8 %i.gh, -2
  store i8 %i.gi, ptr %i.k, align 4
  br label %_ZN11mpz_managerILb0EE13machine_div2kER3mpzj.exit

bb.ag:                                            ; preds = %bb.ae
  %i.gj = load i32, ptr %i.fi, align 4, !tbaa !36 ; 3 uses
  %i.gk = icmp sgt i32 %i.gj, -1
  br i1 %i.gk, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gl = load i32, ptr %5, align 8, !tbaa !27
  %i.gm = icmp slt i32 %i.gl, 0
  %i.gn = sub nsw i32 0, %i.gj
  %i.go = select i1 %i.gm, i32 %i.gn, i32 %i.gj
  store i32 %i.go, ptr %5, align 8, !tbaa !27
  %i.gp = load i8, ptr %i.k, align 4
  %i.gq = and i8 %i.gp, -2
  store i8 %i.gq, ptr %i.k, align 4
  br label %_ZN11mpz_managerILb0EE13machine_div2kER3mpzj.exit

bb.ai:                                            ; preds = %bb.ag, %bb.ae
  store i32 %i.gg, ptr %i.ff, align 4, !tbaa !35
  br label %_ZN11mpz_managerILb0EE13machine_div2kER3mpzj.exit

_ZN11mpz_managerILb0EE13machine_div2kER3mpzj.exit: ; preds = %_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_.exit, %bb.y, %bb.aa, %bb.af, %bb.ah, %bb.ai
  call void @_ZN11mpz_managerILb0EE5powerERK3mpzjRS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %6)
  %i.gr = call noundef zeroext i1 @_ZN11mpz_managerILb0EE2eqERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br i1 %i.gr, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN11mpz_managerILb0EE13machine_div2kER3mpzj.exit
  %i.gs = load i32, ptr %1, align 8, !tbaa !36
  %i.gt = load i32, ptr %5, align 8, !tbaa !36
  store i32 %i.gt, ptr %1, align 8, !tbaa !36
  store i32 %i.gs, ptr %5, align 8, !tbaa !36
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !44
  %i.gw = load ptr, ptr %i.n, align 8, !tbaa !44
  store ptr %i.gw, ptr %i.gu, align 8, !tbaa !44
  store ptr %i.gv, ptr %i.n, align 8, !tbaa !44
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 4             ; 2 uses
  %i.gz = load i8, ptr %i.k, align 4              ; 2 uses
  %i.ha = and i8 %i.gy, -4
  %i.hb = and i8 %i.gz, -4
  %i.hc = and i8 %i.gz, 3
  %i.hd = or disjoint i8 %i.hc, %i.ha
  store i8 %i.hd, ptr %i.gx, align 4
  %i.he = and i8 %i.gy, 3
  %i.hf = or disjoint i8 %i.hb, %i.he
  store i8 %i.hf, ptr %i.k, align 4
  br label %bb.ar

bb.ak:                                            ; preds = %_ZN11mpz_managerILb0EE13machine_div2kER3mpzj.exit
  %i.hg = call noundef zeroext i1 @_ZN11mpz_managerILb0EE2eqERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br i1 %i.hg, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hh = call noundef zeroext i1 @_ZN11mpz_managerILb0EE2eqERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br i1 %i.hh, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.hi = load i32, ptr %1, align 8, !tbaa !36
  %i.hj = load i32, ptr %4, align 8, !tbaa !36
  store i32 %i.hj, ptr %1, align 8, !tbaa !36
  store i32 %i.hi, ptr %4, align 8, !tbaa !36
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !44
  %i.hm = load ptr, ptr %i.j, align 8, !tbaa !44
  store ptr %i.hm, ptr %i.hk, align 8, !tbaa !44
  store ptr %i.hl, ptr %i.j, align 8, !tbaa !44
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 4             ; 2 uses
  %i.hp = load i8, ptr %i.g, align 4              ; 2 uses
  %i.hq = and i8 %i.ho, -4
  %i.hr = and i8 %i.hp, -4
  %i.hs = and i8 %i.hp, 3
  %i.ht = or disjoint i8 %i.hs, %i.hq
  store i8 %i.ht, ptr %i.hn, align 4
  %i.hu = and i8 %i.ho, 3
  %i.hv = or disjoint i8 %i.hr, %i.hu
  store i8 %i.hv, ptr %i.g, align 4
  br label %bb.ar

bb.an:                                            ; preds = %bb.al
  %i.hw = call noundef zeroext i1 @_ZN11mpz_managerILb0EE2ltERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.hx = load i32, ptr %5, align 8, !tbaa !36    ; 2 uses
  br i1 %i.hw, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.hy = load i32, ptr %3, align 8, !tbaa !36
  store i32 %i.hx, ptr %3, align 8, !tbaa !36
  %i.hz = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.ia = load ptr, ptr %i.f, align 8, !tbaa !44
  store ptr %i.hz, ptr %i.f, align 8, !tbaa !44
  %i.ib = load i8, ptr %i.k, align 4              ; 2 uses
  %i.ic = load i8, ptr %i.c, align 4              ; 2 uses
  %i.id = and i8 %i.ib, -4
  %i.ie = and i8 %i.ic, -4
  %i.if = and i8 %i.ic, 3
  %i.ig = or disjoint i8 %i.if, %i.id
  %i.ih = and i8 %i.ib, 3
  %i.ii = or disjoint i8 %i.ie, %i.ih
  store i8 %i.ii, ptr %i.c, align 4
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.ij = load i32, ptr %4, align 8, !tbaa !36
  store i32 %i.hx, ptr %4, align 8, !tbaa !36
  %i.ik = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.il = load ptr, ptr %i.j, align 8, !tbaa !44
  store ptr %i.ik, ptr %i.j, align 8, !tbaa !44
  %i.im = load i8, ptr %i.k, align 4              ; 2 uses
  %i.in = load i8, ptr %i.g, align 4              ; 2 uses
  %i.io = and i8 %i.im, -4
  %i.ip = and i8 %i.in, -4
  %i.iq = and i8 %i.in, 3
  %i.ir = or disjoint i8 %i.iq, %i.io
  %i.is = and i8 %i.im, 3
  %i.it = or disjoint i8 %i.ip, %i.is
  store i8 %i.it, ptr %i.g, align 4
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.sink40 = phi i32 [ %i.hy, %bb.ao ], [ %i.ij, %bb.ap ]
  %.sink40.a = phi ptr [ %i.ia, %bb.ao ], [ %i.il, %bb.ap ]
  %.sink = phi i8 [ %i.ig, %bb.ao ], [ %i.ir, %bb.ap ]
  store i32 %.sink40, ptr %5, align 8, !tbaa !36
  store ptr %.sink40.a, ptr %i.n, align 8, !tbaa !44
  store i8 %.sink, ptr %i.k, align 4
  br label %.preheader, !llvm.loop !298

bb.ar:                                            ; preds = %bb.aj, %bb.am, %bb.q
  %.0 = phi i1 [ true, %bb.q ], [ true, %bb.aj ], [ false, %bb.am ]
  %i.iu = load ptr, ptr %i.f, align 8, !tbaa !26  ; 3 uses
  %.not.i.i = icmp eq ptr %i.iu, null
  br i1 %.not.i.i, label %_ZN11mpz_managerILb0EE3delER3mpz.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.iv = load i8, ptr %i.c, align 4              ; 2 uses
  %i.iw = and i8 %i.iv, 2
  %i.ix = icmp eq i8 %i.iw, 0
  br i1 %i.ix, label %bb.at, label %_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i

bb.at:                                            ; preds = %bb.as
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !22
  %i.ja = shl i32 %i.iz, 2
  %i.jb = add i32 %i.ja, 8
  %i.jc = zext i32 %i.jb to i64
  call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(600) %0, i64 noundef %i.jc, ptr noundef nonnull %i.iu)
  %.pre.i.i = load i8, ptr %i.c, align 4
  br label %_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i

_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i: ; preds = %bb.at, %bb.as
  %i.jd = phi i8 [ %i.iv, %bb.as ], [ %.pre.i.i, %bb.at ]
  store ptr null, ptr %i.f, align 8, !tbaa !26
  %i.je = and i8 %i.jd, -4
  store i8 %i.je, ptr %i.c, align 4
  br label %_ZN11mpz_managerILb0EE3delER3mpz.exit

_ZN11mpz_managerILb0EE3delER3mpz.exit:            ; preds = %bb.ar, %_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i
  %i.jf = load ptr, ptr %i.j, align 8, !tbaa !26  ; 3 uses
  %.not.i.i25 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i25, label %_ZN11mpz_managerILb0EE3delER3mpz.exit28, label %bb.au

bb.au:                                            ; preds = %_ZN11mpz_managerILb0EE3delER3mpz.exit
  %i.jg = load i8, ptr %i.g, align 4              ; 2 uses
  %i.jh = and i8 %i.jg, 2
  %i.ji = icmp eq i8 %i.jh, 0
  br i1 %i.ji, label %bb.av, label %_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i26

bb.av:                                            ; preds = %bb.au
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !22
  %i.jl = shl i32 %i.jk, 2
  %i.jm = add i32 %i.jl, 8
  %i.jn = zext i32 %i.jm to i64
  call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(600) %0, i64 noundef %i.jn, ptr noundef nonnull %i.jf)
  %.pre.i.i27 = load i8, ptr %i.g, align 4
  br label %_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i26

_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i26: ; preds = %bb.av, %bb.au
  %i.jo = phi i8 [ %i.jg, %bb.au ], [ %.pre.i.i27, %bb.av ]
  store ptr null, ptr %i.j, align 8, !tbaa !26
  %i.jp = and i8 %i.jo, -4
  store i8 %i.jp, ptr %i.g, align 4
  br label %_ZN11mpz_managerILb0EE3delER3mpz.exit28

_ZN11mpz_managerILb0EE3delER3mpz.exit28:          ; preds = %_ZN11mpz_managerILb0EE3delER3mpz.exit, %_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i26
  %i.jq = load ptr, ptr %i.n, align 8, !tbaa !26  ; 3 uses
  %.not.i.i29 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i29, label %_ZN11mpz_managerILb0EE3delER3mpz.exit32, label %bb.aw

bb.aw:                                            ; preds = %_ZN11mpz_managerILb0EE3delER3mpz.exit28
  %i.jr = load i8, ptr %i.k, align 4              ; 2 uses
  %i.js = and i8 %i.jr, 2
  %i.jt = icmp eq i8 %i.js, 0
  br i1 %i.jt, label %bb.ax, label %_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i30

bb.ax:                                            ; preds = %bb.aw
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !22
  %i.jw = shl i32 %i.jv, 2
  %i.jx = add i32 %i.jw, 8
  %i.jy = zext i32 %i.jx to i64
  call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(600) %0, i64 noundef %i.jy, ptr noundef nonnull %i.jq)
  %.pre.i.i31 = load i8, ptr %i.k, align 4
  br label %_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i30

_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i30: ; preds = %bb.ax, %bb.aw
  %i.jz = phi i8 [ %i.jr, %bb.aw ], [ %.pre.i.i31, %bb.ax ]
  store ptr null, ptr %i.n, align 8, !tbaa !26
  %i.ka = and i8 %i.jz, -4
  store i8 %i.ka, ptr %i.k, align 4
  br label %_ZN11mpz_managerILb0EE3delER3mpz.exit32

_ZN11mpz_managerILb0EE3delER3mpz.exit32:          ; preds = %_ZN11mpz_managerILb0EE3delER3mpz.exit28, %_ZN11mpz_managerILb0EE10deallocateEbP8mpz_cell.exit.i.i30
  %i.kb = load ptr, ptr %i.r, align 8, !tbaa !26  ; 3 uses
  %.not.i.i33 = icmp eq ptr %i.kb, null
  br i1 %.not.i.i33, label %_ZN11mpz_managerILb0EE3delER3mpz.exit36, label %bb.ay

bb.ay:                                            ; preds = %_ZN11mpz_managerILb0EE3delER3mpz.exit32
  %i.kc = load i8, ptr %i.o, align 4
  %i.kd = and i8 %i.kc, 2
  %i.ke = icmp eq i8 %i.kd, 0
  br i1 %i.ke, label %bb.az, label %_ZN11mpz_managerILb0EE3delER3mpz.exit36

bb.az:                                            ; preds = %bb.ay
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kb, i64 4
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !22
  %i.kh = shl i32 %i.kg, 2
  %i.ki = add i32 %i.kh, 8
  %i.kj = zext i32 %i.ki to i64
  call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(600) %0, i64 noundef %i.kj, ptr noundef nonnull %i.kb)
  br label %_ZN11mpz_managerILb0EE3delER3mpz.exit36

_ZN11mpz_managerILb0EE3delER3mpz.exit36:          ; preds = %bb.ay, %bb.az, %_ZN11mpz_managerILb0EE3delER3mpz.exit32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.ba

bb.ba:                                            ; preds = %bb.a, %_ZN11mpz_managerILb0EE3delER3mpz.exit36
  %.020 = phi i1 [ %.0, %_ZN11mpz_managerILb0EE3delER3mpz.exit36 ], [ true, %bb.a ]
  ret i1 %.020
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN11mpz_managerILb0EE4rootERK3mpzjRS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !27
  store i32 %i.e, ptr %3, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -2
  store i8 %i.h, ptr %i.f, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit:       ; preds = %bb.b, %bb.c
  %i.i = tail call noundef zeroext i1 @_ZN11mpz_managerILb0EE4rootER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %2)
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN11mpz_managerILb0EE7is_evenERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 1
  %i.d = icmp eq i8 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.0.in.in.in = select i1 %i.d, ptr %1, ptr %i.g
  %.0.in.in = load i32, ptr %.0.in.in.in, align 4, !tbaa !36
  %.0.in = and i32 %.0.in.in, 1
  %.0 = icmp eq i32 %.0.in, 0
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN11mpz_managerILb0EE6is_oddERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 1
  %i.d = icmp eq i8 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.0.in.in.in.i = select i1 %i.d, ptr %1, ptr %i.g
  %.0.in.in.i = load i32, ptr %.0.in.in.in.i, align 4, !tbaa !36
  %.0.i = trunc i32 %.0.in.in.i to i1
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN11mpz_managerILb0EE9decomposeERK3mpzR7svectorIjjE(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !108    ; 9 uses
  %.not.i = icmp eq ptr %i.a, null                ; 3 uses
  br i1 %.not.i, label %_ZN6vectorIjLb0EjE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -4
  store i32 0, ptr %i.b, align 4, !tbaa !36
  br label %_ZN6vectorIjLb0EjE5resetEv.exit

_ZN6vectorIjLb0EjE5resetEv.exit:                  ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, 1
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.j

end_hunk_5
