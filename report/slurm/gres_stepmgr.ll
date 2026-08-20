inline.NumInlined: 17
inline.NumDeleted: 15
begin_hunk_0_@gres_stepmgr_job_dealloc:bb.a
  %i.gi = load i64, ptr %i.gh, align 8            ; 5 uses
  %.not394.i = icmp eq i64 %i.gi, 0
  br i1 %.not394.i, label %.loopexit424.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.ad, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.gj = load ptr, ptr %i.fv, align 8
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.gj, i64 %i.f
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv489.i
  %i.gn = load i64, ptr %i.gm, align 8            ; 5 uses
  %.not395.i = icmp ult i64 %i.gi, %i.gn
  br i1 %.not395.i, label %.thread420.i, label %.thread421.i

.thread421.i:                                     ; preds = %bb.bm
  %i.go = sub nuw i64 %i.gi, %i.gn
  store i64 %i.go, ptr %i.gh, align 8
  br label %bb.bo

.thread420.i:                                     ; preds = %bb.bm
  %i.gp = trunc nuw nsw i64 %indvars.iv489.i to i32
  %i.gq = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.48, ptr noundef %i.v, i32 noundef %3, ptr noundef %4, i32 noundef %i.gp, i64 noundef %i.gi, i64 noundef %i.gn) #7 ; 0 uses
  %i.gr = load ptr, ptr %i.fi, align 8
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv489.i
  store i64 0, ptr %i.gs, align 8
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.gt = add i64 %i.gi, -1
  store i64 %i.gt, ptr %i.gh, align 8
  br label %bb.bq

bb.bo:                                            ; preds = %.thread420.i, %.thread421.i
  %i.gu = load ptr, ptr %i.fi, align 8
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv489.i
  %i.gw = load i64, ptr %i.gv, align 8
  %.not396.i = icmp eq i64 %i.gw, 0
  br i1 %.not396.i, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.gx = load ptr, ptr %i.ao, align 8
  tail call void @bit_clear(ptr noundef %i.gx, i64 noundef %indvars.iv489.i) #7
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.gy = phi i64 [ %i.gn, %bb.bp ], [ %i.gn, %bb.bo ], [ 1, %bb.bn ] ; 3 uses
  %i.gz = load i16, ptr %i.fw, align 8
  %i.ha = icmp eq i16 %i.gz, 0
  br i1 %i.ha, label %.loopexit424.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hb = load ptr, ptr %i.fx, align 8            ; 2 uses
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %.loopexit424.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %indvars.iv489.i
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %.loopexit424.i, label %.lr.ph437.i

.lr.ph437.i:                                      ; preds = %bb.bs, %bb.bx
  %indvars.iv486.i = phi i64 [ %indvars.iv.next487.i, %bb.bx ], [ 0, %bb.bs ] ; 5 uses
  %i.hg = load ptr, ptr %i.fy, align 8
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv486.i
  %i.hi = load ptr, ptr %i.hh, align 8            ; 2 uses
  %.not397.i = icmp eq ptr %i.hi, null
  br i1 %.not397.i, label %bb.bx, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph437.i
  %i.hj = load ptr, ptr %i.fz, align 8
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv489.i
  %i.hl = load i32, ptr %i.hk, align 4
  %i.hm = load ptr, ptr %i.ga, align 8
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv486.i
  %i.ho = load i32, ptr %i.hn, align 4
  %.not398.i = icmp eq i32 %i.hl, %i.ho
  br i1 %.not398.i, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.hp = load ptr, ptr %i.gb, align 8
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %indvars.iv486.i ; 2 uses
  %i.hr = load i64, ptr %i.hq, align 8            ; 3 uses
  %.not399.i = icmp ult i64 %i.hr, %i.gy
  br i1 %.not399.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hs = sub nuw i64 %i.hr, %i.gy
  store i64 %i.hs, ptr %i.hq, align 8
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %i.ht = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.49, ptr noundef %i.v, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %i.hi, i64 noundef %i.hr, i64 noundef %i.gy) #7 ; 0 uses
  %i.hu = load ptr, ptr %i.gb, align 8
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %indvars.iv486.i
  store i64 0, ptr %i.hv, align 8
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.bt, %.lr.ph437.i
  %indvars.iv.next487.i = add nuw nsw i64 %indvars.iv486.i, 1 ; 2 uses
  %i.hw = load i16, ptr %i.fw, align 8
  %i.hx = zext i16 %i.hw to i64
  %i.hy = icmp samesign ult i64 %indvars.iv.next487.i, %i.hx
  br i1 %i.hy, label %.lr.ph437.i, label %.loopexit424.i, !llvm.loop !35

.loopexit424.i:                                   ; preds = %bb.bx, %bb.bs, %bb.br, %bb.bq, %bb.bk, %bb.bj
  %indvars.iv.next490.i = add nuw nsw i64 %indvars.iv489.i, 1 ; 2 uses
  %exitcond493.not.i = icmp eq i64 %indvars.iv.next490.i, %wide.trip.count492.i
  br i1 %exitcond493.not.i, label %.loopexit.i, label %bb.bj, !llvm.loop !36

.thread:                                          ; preds = %bb.ak, %bb.be, %bb.ai, %.critedge.i
  %i.hz = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8
  %.not391.i = icmp eq ptr %i.ia, null
  br i1 %.not391.i, label %.loopexit.i, label %.preheader422.i

.preheader422.i:                                  ; preds = %.thread
  %i.ib = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  %i.ic = getelementptr inbounds nuw i8, ptr %i.r, i64 136 ; 2 uses
  %i.id = load i16, ptr %i.ic, align 8            ; 2 uses
  %.not472.i = icmp eq i16 %i.id, 0
  br i1 %.not472.i, label %.loopexit.i, label %.lr.ph444.i

.lr.ph444.i:                                      ; preds = %.preheader422.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.r, i64 160
  br label %bb.by

bb.by:                                            ; preds = %bb.ca, %.lr.ph444.i
  %i.if = phi i16 [ %i.id, %.lr.ph444.i ], [ %i.iq, %bb.ca ]
  %indvars.iv494.i = phi i64 [ 0, %.lr.ph444.i ], [ %indvars.iv.next495.i, %bb.ca ] ; 3 uses
  %.1443.i = phi i64 [ %.0314415.i, %.lr.ph444.i ], [ %.2.i, %bb.ca ] ; 3 uses
  %i.ig = load i32, ptr %i.t, align 8
  %i.ih = load ptr, ptr %i.ie, align 8
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %indvars.iv494.i
  %i.ij = load i32, ptr %i.ii, align 4
  %.not392.i = icmp eq i32 %i.ig, %i.ij
  br i1 %.not392.i, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.ik = load ptr, ptr %i.ib, align 8
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv494.i ; 2 uses
  %i.im = load i64, ptr %i.il, align 8            ; 2 uses
  %.1..i = tail call i64 @llvm.umin.i64(i64 %.1443.i, i64 %i.im) ; 2 uses
  %i.in = sub i64 %i.im, %.1..i
  store i64 %i.in, ptr %i.il, align 8
  %i.io = sub i64 %.1443.i, %.1..i                ; 2 uses
  %i.ip = icmp eq i64 %i.io, 0
  br i1 %i.ip, label %.loopexit.i, label %._crit_edge509.i

._crit_edge509.i:                                 ; preds = %bb.bz
  %.pre.i = load i16, ptr %i.ic, align 8
  br label %bb.ca

bb.ca:                                            ; preds = %._crit_edge509.i, %bb.by
  %i.iq = phi i16 [ %i.if, %bb.by ], [ %.pre.i, %._crit_edge509.i ] ; 2 uses
  %.2.i = phi i64 [ %.1443.i, %bb.by ], [ %i.io, %._crit_edge509.i ]
  %indvars.iv.next495.i = add nuw nsw i64 %indvars.iv494.i, 1 ; 2 uses
  %i.ir = zext i16 %i.iq to i64
  %i.is = icmp samesign ult i64 %indvars.iv.next495.i, %i.ir
  br i1 %i.is, label %bb.by, label %.loopexit.i, !llvm.loop !37

.loopexit.i:                                      ; preds = %.loopexit427.i, %.loopexit424.i, %bb.ca, %bb.bz, %.preheader422.i, %.thread, %bb.bi, %.preheader428.i
  br i1 %6, label %bb.cb, label %_job_dealloc.exit.thread

bb.cb:                                            ; preds = %.loopexit.i
  %i.it = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.iu = add i32 %i.it, -1                       ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.t, i64 152 ; 3 uses
  %i.iw = load ptr, ptr %i.iv, align 8            ; 3 uses
  %.not400.i = icmp eq ptr %i.iw, null
  br i1 %.not400.i, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.iw, i64 %i.f
  %i.iy = load i64, ptr %i.ix, align 8            ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.t, i64 128 ; 2 uses
  %i.ja = load i64, ptr %i.iz, align 8            ; 2 uses
  %.not401.i = icmp ult i64 %i.iy, %i.ja
  br i1 %.not401.i, label %bb.cd, label %_job_dealloc.exit

bb.cd:                                            ; preds = %bb.cc
  %i.jb = sub nuw i64 %i.ja, %i.iy
  store i64 %i.jb, ptr %i.iz, align 8
  %i.jc = icmp ult i32 %.0312446.i, %i.it
  br i1 %i.jc, label %.lr.ph449.i, label %._crit_edge.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph449.i
  %.pre510.i = load ptr, ptr %i.iv, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.cd
  %i.jd = phi ptr [ %.pre510.i, %._crit_edge.loopexit.i ], [ %i.iw, %bb.cd ]
  %i.je = sext i32 %i.iu to i64
  %i.jf = getelementptr inbounds [8 x i8], ptr %i.jd, i64 %i.je
  store i64 0, ptr %i.jf, align 8
  br label %bb.ce

.lr.ph449.i:                                      ; preds = %bb.cd, %.lr.ph449.i
  %indvars.iv497.i.a = phi i64 [ %indvars.iv.next498.i, %.lr.ph449.i ], [ %i.g, %bb.cd ] ; 3 uses
  %.0312.in447.i = phi i64 [ %indvars.iv497.i.a, %.lr.ph449.i ], [ %i.f, %bb.cd ]
  %i.jg = load ptr, ptr %i.iv, align 8            ; 2 uses
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.jg, i64 %indvars.iv497.i.a
  %i.ji = load i64, ptr %i.jh, align 8
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.jg, i64 %.0312.in447.i
  store i64 %i.ji, ptr %i.jj, align 8
  %indvars.iv.next498.i = add nuw nsw i64 %indvars.iv497.i.a, 1 ; 2 uses
  %i.jk = load i32, ptr %i.aa, align 8
  %i.jl = trunc nsw i64 %indvars.iv.next498.i to i32
  %i.jm = icmp ugt i32 %i.jk, %i.jl
  br i1 %i.jm, label %.lr.ph449.i, label %._crit_edge.loopexit.i, !llvm.loop !38

bb.ce:                                            ; preds = %._crit_edge.i, %bb.cb
  %i.jn = load ptr, ptr %i.cb, align 8            ; 3 uses
  %.not402.i = icmp eq ptr %i.jn, null
  br i1 %.not402.i, label %bb.ci, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.jn, i64 %i.f ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8
  %.not403.i = icmp eq ptr %i.jp, null
  br i1 %.not403.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  tail call void @slurm_bit_free(ptr noundef nonnull %i.jo) #7
  %.pre511.i = load ptr, ptr %i.cb, align 8
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.jq = phi ptr [ %.pre511.i, %bb.cg ], [ %i.jn, %bb.cf ]
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.jq, i64 %i.f
  store ptr null, ptr %i.jr, align 8
  %i.js = load i32, ptr %i.aa, align 8
  %i.jt = icmp ult i32 %.0312446.i, %i.js
  br i1 %i.jt, label %.lr.ph454.i, label %._crit_edge455.i

._crit_edge455.i:                                 ; preds = %.lr.ph454.i, %bb.ch
  %i.ju = load ptr, ptr %i.cb, align 8
  %i.jv = sext i32 %i.iu to i64
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.ju, i64 %i.jv
  store ptr null, ptr %i.jw, align 8
  br label %bb.ci

.lr.ph454.i:                                      ; preds = %bb.ch, %.lr.ph454.i
  %indvars.iv500.i = phi i64 [ %indvars.iv.next501.i, %.lr.ph454.i ], [ %i.g, %bb.ch ] ; 3 uses
  %.0311.in451.i = phi i64 [ %indvars.iv500.i, %.lr.ph454.i ], [ %i.f, %bb.ch ]
  %i.jx = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.jx, i64 %indvars.iv500.i
  %i.jz = load ptr, ptr %i.jy, align 8
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.jx, i64 %.0311.in451.i
  store ptr %i.jz, ptr %i.ka, align 8
  %indvars.iv.next501.i = add nuw nsw i64 %indvars.iv500.i, 1 ; 2 uses
  %i.kb = load i32, ptr %i.aa, align 8
  %i.kc = trunc nsw i64 %indvars.iv.next501.i to i32
  %i.kd = icmp ugt i32 %i.kb, %i.kc
  br i1 %i.kd, label %.lr.ph454.i, label %._crit_edge455.i, !llvm.loop !39

bb.ci:                                            ; preds = %._crit_edge455.i, %bb.ce
  %i.ke = getelementptr inbounds nuw i8, ptr %i.t, i64 168 ; 4 uses
  %i.kf = load ptr, ptr %i.ke, align 8            ; 3 uses
  %.not404.i = icmp eq ptr %i.kf, null
  br i1 %.not404.i, label %bb.cm, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.kf, i64 %i.f ; 2 uses
  %i.kh = load ptr, ptr %i.kg, align 8
  %.not405.i = icmp eq ptr %i.kh, null
  br i1 %.not405.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  tail call void @slurm_bit_free(ptr noundef nonnull %i.kg) #7
  %.pre512.i = load ptr, ptr %i.ke, align 8
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.ki = phi ptr [ %.pre512.i, %bb.ck ], [ %i.kf, %bb.cj ]
  %i.kj = getelementptr inbounds [8 x i8], ptr %i.ki, i64 %i.f
  store ptr null, ptr %i.kj, align 8
  %i.kk = load i32, ptr %i.aa, align 8
  %i.kl = icmp ult i32 %.0312446.i, %i.kk
  br i1 %i.kl, label %.lr.ph460.i, label %._crit_edge461.i

._crit_edge461.i:                                 ; preds = %.lr.ph460.i, %bb.cl
  %i.km = load ptr, ptr %i.ke, align 8
  %i.kn = sext i32 %i.iu to i64
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.km, i64 %i.kn
  store ptr null, ptr %i.ko, align 8
  br label %bb.cm

.lr.ph460.i:                                      ; preds = %bb.cl, %.lr.ph460.i
  %indvars.iv503.i = phi i64 [ %indvars.iv.next504.i, %.lr.ph460.i ], [ %i.g, %bb.cl ] ; 3 uses
  %.0310.in457.i = phi i64 [ %indvars.iv503.i, %.lr.ph460.i ], [ %i.f, %bb.cl ]
  %i.kp = load ptr, ptr %i.ke, align 8            ; 2 uses
  %i.kq = getelementptr inbounds [8 x i8], ptr %i.kp, i64 %indvars.iv503.i
  %i.kr = load ptr, ptr %i.kq, align 8
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.kp, i64 %.0310.in457.i
  store ptr %i.kr, ptr %i.ks, align 8
  %indvars.iv.next504.i = add nuw nsw i64 %indvars.iv503.i, 1 ; 2 uses
  %i.kt = load i32, ptr %i.aa, align 8
  %i.ku = trunc nsw i64 %indvars.iv.next504.i to i32
  %i.kv = icmp ugt i32 %i.kt, %i.ku
  br i1 %i.kv, label %.lr.ph460.i, label %._crit_edge461.i, !llvm.loop !40

bb.cm:                                            ; preds = %._crit_edge461.i, %bb.ci
  %i.kw = getelementptr inbounds nuw i8, ptr %i.t, i64 176 ; 3 uses
  %i.kx = load ptr, ptr %i.kw, align 8            ; 2 uses
  %.not406.i = icmp eq ptr %i.kx, null
  %.pre515.i = load i32, ptr %i.aa, align 8       ; 2 uses
  br i1 %.not406.i, label %bb.cn, label %.preheader.i

.preheader.i:                                     ; preds = %bb.cm
  %i.ky = icmp ult i32 %.0312446.i, %.pre515.i
  br i1 %i.ky, label %.lr.ph465.i, label %._crit_edge466.i

._crit_edge466.loopexit.i:                        ; preds = %.lr.ph465.i
  %.pre513.i = load ptr, ptr %i.kw, align 8
  br label %._crit_edge466.i

._crit_edge466.i:                                 ; preds = %._crit_edge466.loopexit.i, %.preheader.i
  %i.kz = phi ptr [ %.pre513.i, %._crit_edge466.loopexit.i ], [ %i.kx, %.preheader.i ]
  %i.la = sext i32 %i.iu to i64
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.kz, i64 %i.la
  store i64 0, ptr %i.lb, align 8
  %.pre514.i = load i32, ptr %i.aa, align 8
  br label %bb.cn

.lr.ph465.i:                                      ; preds = %.preheader.i, %.lr.ph465.i
  %indvars.iv506.i = phi i64 [ %indvars.iv.next507.i.a, %.lr.ph465.i ], [ %i.g, %.preheader.i ] ; 3 uses
  %.0.in463.i = phi i64 [ %indvars.iv506.i, %.lr.ph465.i ], [ %i.f, %.preheader.i ]
  %i.lc = load ptr, ptr %i.kw, align 8            ; 2 uses
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.lc, i64 %indvars.iv506.i
  %i.le = load i64, ptr %i.ld, align 8
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.lc, i64 %.0.in463.i
  store i64 %i.le, ptr %i.lf, align 8
  %indvars.iv.next507.i.a = add nuw nsw i64 %indvars.iv506.i, 1 ; 2 uses
  %i.lg = load i32, ptr %i.aa, align 8
  %i.lh = trunc nsw i64 %indvars.iv.next507.i.a to i32
  %i.li = icmp ugt i32 %i.lg, %i.lh
  br i1 %i.li, label %.lr.ph465.i, label %._crit_edge466.loopexit.i, !llvm.loop !41

bb.cn:                                            ; preds = %._crit_edge466.i, %bb.cm
  %i.lj = phi i32 [ %.pre514.i, %._crit_edge466.i ], [ %.pre515.i, %bb.cm ]
  %i.lk = add i32 %i.lj, -1
  store i32 %i.lk, ptr %i.aa, align 8
  br label %_job_dealloc.exit.thread

_job_dealloc.exit:                                ; preds = %bb.cc
  %i.ll = tail call i32 @list_delete_item(ptr noundef %i.d) #7 ; 0 uses
  br label %_job_dealloc.exit.thread

_job_dealloc.exit.thread:                         ; preds = %bb.g, %bb.cn, %.loopexit.i, %bb.i, %bb.o, %_job_dealloc.exit
  %.1 = phi i32 [ %.0.ph45, %_job_dealloc.exit ], [ -1, %bb.i ], [ -1, %bb.o ], [ %.0.ph45, %.loopexit.i ], [ %.0.ph45, %bb.cn ], [ %.0.ph45, %bb.g ] ; 2 uses
  %i.lm = tail call ptr @list_next(ptr noundef %i.d) #7 ; 2 uses
  %.not42 = icmp eq ptr %i.lm, null
  br i1 %.not42, label %.outer._crit_edge, label %.lr.ph, !llvm.loop !31

.outer._crit_edge:                                ; preds = %_job_dealloc.exit.thread, %bb.f, %bb.d
  %.0.ph.lcssa = phi i32 [ %.0.ph45, %bb.f ], [ 0, %bb.d ], [ %.1, %_job_dealloc.exit.thread ]
  tail call void @list_iterator_destroy(ptr noundef %i.d) #7
  br label %bb.co

bb.co:                                            ; preds = %bb.a, %.outer._crit_edge, %bb.c
  %.025 = phi i32 [ %.0.ph.lcssa, %.outer._crit_edge ], [ -1, %bb.c ], [ 0, %bb.a ]
  ret i32 %.025
}

declare i32 @list_delete_item(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @gres_stepmgr_job_merge(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load i32, ptr @gres_stepmgr_job_merge.select_hetero, align 4
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.d = tail call ptr @slurm_get_select_type() #7 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8
  %i.e = tail call ptr @xstrstr(ptr noundef %i.d, ptr noundef nonnull @.str.3) #7
  %.not = icmp ne ptr %i.e, null
  %. = zext i1 %.not to i32
  store i32 %., ptr @gres_stepmgr_job_merge.select_hetero, align 4
  call void @slurm_xfree(ptr noundef nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = call i32 @bit_set_count(ptr noundef %1) #7
  %i.g = call i32 @bit_set_count(ptr noundef %3) #7
  %i.h = add nsw i32 %i.g, %i.f
  %i.i = call i32 @bit_overlap(ptr noundef %1, ptr noundef %3) #7
  %i.j = sub i32 %i.h, %i.i                       ; 4 uses
  %i.k = call i64 @bit_ffs(ptr noundef %1) #7
  %i.l = call i64 @bit_ffs(ptr noundef %3) #7
  %i.m = icmp slt i64 %i.k, %i.l
  %.297 = select i1 %i.m, ptr %1, ptr %3
  %i.n = call i64 @bit_ffs(ptr noundef %.297) #7
  %i.o = trunc i64 %i.n to i32
  %i.p = call i32 @llvm.smax.i32(i32 %i.o, i32 0) ; 4 uses
  %i.q = call i64 @bit_fls(ptr noundef %1) #7
  %i.r = call i64 @bit_fls(ptr noundef %3) #7
  %i.s = icmp sgt i64 %i.q, %i.r
  %.sink296 = select i1 %i.s, ptr %1, ptr %3
  %i.t = call i64 @bit_fls(ptr noundef %.sink296) #7 ; 3 uses
  %i.u = trunc i64 %i.t to i32                    ; 3 uses
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.gres_stepmgr_job_merge) #7 ; 0 uses
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %.not203 = icmp ne ptr %2, null                 ; 2 uses
  br i1 %.not203, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.x = call ptr @list_iterator_create(ptr noundef nonnull %2) #7 ; 3 uses
  %i.y = call ptr @list_next(ptr noundef %i.x) #7 ; 2 uses
  %.not204238 = icmp eq ptr %i.y, null
  br i1 %.not204238, label %._crit_edge241, label %.lr.ph240

.lr.ph240:                                        ; preds = %bb.f
  %i.z = sext i32 %i.j to i64                     ; 4 uses
  %.not224234 = icmp sgt i32 %i.p, %i.u
  %i.aa = zext nneg i32 %i.p to i64
  %i.ab = add i64 %i.t, 1
  %wide.trip.count = and i64 %i.ab, 4294967295
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph240, %._crit_edge
  %i.ac = phi ptr [ %i.y, %.lr.ph240 ], [ %i.bv, %._crit_edge ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8            ; 9 uses
  %i.af = call ptr @slurm_xcalloc(i64 noundef %i.z, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.5, i32 noundef 1651, ptr noundef nonnull @__func__.gres_stepmgr_job_merge) #7 ; 2 uses
  %i.ag = call ptr @slurm_xcalloc(i64 noundef %i.z, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.5, i32 noundef 1653, ptr noundef nonnull @__func__.gres_stepmgr_job_merge) #7 ; 2 uses
  %i.ah = call ptr @slurm_xcalloc(i64 noundef %i.z, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.5, i32 noundef 1655, ptr noundef nonnull @__func__.gres_stepmgr_job_merge) #7 ; 2 uses
  %i.ai = call ptr @slurm_xcalloc(i64 noundef %i.z, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.5, i32 noundef 1657, ptr noundef nonnull @__func__.gres_stepmgr_job_merge) #7 ; 2 uses
  br i1 %.not224234, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 144
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 168
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 176
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ %i.aa, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 3 uses
  %.0172237 = phi i32 [ -1, %.lr.ph ], [ %.1173, %bb.q ]
  %.0174236 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %bb.q ] ; 2 uses
  %i.an = call i32 @slurm_bit_test(ptr noundef %3, i64 noundef %indvars.iv) #7 ; 2 uses
  %.not225.not = icmp eq i32 %i.an, 0             ; 2 uses
  %i.ao = add nsw i32 %.0174236, 1                ; 5 uses
  %spec.select = select i1 %.not225.not, i32 %.0174236, i32 %i.ao
  %i.ap = call i32 @slurm_bit_test(ptr noundef %1, i64 noundef %indvars.iv) #7
  %i.aq = or i32 %i.ap, %i.an
  %or.cond.not = icmp ne i32 %i.aq, 0
  %i.ar = zext i1 %or.cond.not to i32
  %.1173 = add nsw i32 %.0172237, %i.ar           ; 5 uses
  br i1 %.not225.not, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not227 = icmp eq ptr %i.as, null
  br i1 %.not227, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = sext i32 %i.ao to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = sext i32 %.1173 to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.aw
  store ptr %i.av, ptr %i.ax, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ay = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not228 = icmp eq ptr %i.ay, null
  br i1 %.not228, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = sext i32 %i.ao to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = sext i32 %.1173 to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.bc
  store i64 %i.bb, ptr %i.bd, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.be = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not229 = icmp eq ptr %i.be, null
  br i1 %.not229, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = sext i32 %i.ao to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = sext i32 %.1173 to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bi
  store ptr %i.bh, ptr %i.bj, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bk = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not230 = icmp eq ptr %i.bk, null
  br i1 %.not230, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = sext i32 %i.ao to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = sext i32 %.1173 to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bo
  store i64 %i.bn, ptr %i.bp, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !42

._crit_edge:                                      ; preds = %bb.q, %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ae, i64 136
  store i32 %i.j, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.ae, i64 144 ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.br) #7
  store ptr %i.af, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ae, i64 152 ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.bs) #7
  store ptr %i.ag, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ae, i64 168 ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.bt) #7
  store ptr %i.ah, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ae, i64 176 ; 2 uses
end_hunk_0
