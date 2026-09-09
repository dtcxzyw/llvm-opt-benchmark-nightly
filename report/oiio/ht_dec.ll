Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/ht_dec?download=true
inline.NumInlined: 55
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@opj_t1_ht_decode_cblk:bb.a
  tail call void @opj_mutex_lock(ptr noundef nonnull %6) #10
  %i.fw = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.6) #10 ; 0 uses
  tail call void @opj_mutex_unlock(ptr noundef nonnull %6) #10
  br label %.critedge1742

.critedge1755:                                    ; preds = %bb.aj
  %i.fx = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.6) #10 ; 0 uses
  br label %.critedge1742

bb.al:                                            ; preds = %.thread1825
  %i.fy = sext i32 %i.eg to i64
  %i.fz = getelementptr i8, ptr %.11345, i64 %i.fy ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 -1
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !13  ; 2 uses
  %i.gc = zext i8 %i.gb to i32
  %i.gd = shl nuw nsw i32 %i.gc, 4
  %i.ge = getelementptr i8, ptr %i.fz, i64 -2
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !13
  %i.gg = and i8 %i.gf, 15
  %i.gh = zext nneg i8 %i.gg to i32
  %i.gi = or disjoint i32 %i.gd, %i.gh            ; 5 uses
  %i.gj = icmp samesign ult i32 %i.gi, 2
  br i1 %i.gj, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gk = icmp sgt i32 %i.gi, %i.eg
  %i.gl = icmp eq i8 %i.gb, -1
  %or.cond8 = or i1 %i.gl, %i.gk
  br i1 %or.cond8, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am, %bb.al
  %.not1735 = icmp eq ptr %6, null
  br i1 %.not1735, label %.critedge1757, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @opj_mutex_lock(ptr noundef nonnull %6) #10
  %i.gm = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.7) #10 ; 0 uses
  tail call void @opj_mutex_unlock(ptr noundef nonnull %6) #10
  br label %.critedge1742

.critedge1757:                                    ; preds = %bb.an
  %i.gn = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.7) #10 ; 0 uses
  br label %.critedge1742

bb.ap:                                            ; preds = %bb.am
  %i.go = call fastcc i32 @mel_init(ptr noundef %8, ptr noundef nonnull %.11345, i32 noundef %i.eg, i32 noundef %i.gi)
  %i.gp = icmp eq i32 %i.go, 0
  br i1 %i.gp, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %.not1734 = icmp eq ptr %6, null
  br i1 %.not1734, label %.critedge1759, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @opj_mutex_lock(ptr noundef nonnull %6) #10
  %i.gq = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.8) #10 ; 0 uses
  tail call void @opj_mutex_unlock(ptr noundef nonnull %6) #10
  br label %.critedge1742

.critedge1759:                                    ; preds = %bb.aq
  %i.gr = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.8) #10 ; 0 uses
  br label %.critedge1742

bb.as:                                            ; preds = %bb.ap
  call fastcc void @rev_init(ptr noundef %9, ptr noundef nonnull %.11345, i32 noundef %i.eg, i32 noundef %i.gi)
  %i.gs = sub nuw nsw i32 %i.eg, %i.gi
  call fastcc void @frwd_init(ptr noundef %10, ptr noundef nonnull %.11345, i32 noundef %i.gs, i32 noundef 255)
  %i.gt = icmp samesign ugt i32 %.11350, 1        ; 3 uses
  br i1 %i.gt, label %bb.at, label %.thread1795

bb.at:                                            ; preds = %bb.as
  %i.gu = zext nneg i32 %i.eg to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %.11345, i64 %i.gu
  call fastcc void @frwd_init(ptr noundef %11, ptr noundef nonnull %i.gv, i32 noundef %i.eh, i32 noundef 0)
  %.not1831 = icmp eq i32 %.11350, 2
  br i1 %.not1831, label %.thread1795, label %bb.au

bb.au:                                            ; preds = %bb.at
  call fastcc void @rev_init_mrp(ptr noundef %12, ptr noundef nonnull %.11345, i32 noundef %i.eg, i32 noundef %i.eh)
  br label %.thread1795

.thread1795:                                      ; preds = %bb.as, %bb.au, %bb.at
  %i.gw = phi i1 [ false, %bb.at ], [ true, %bb.au ], [ false, %bb.as ] ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.eo, i64 2112 ; 5 uses
  store i8 0, ptr %i.gx, align 1, !tbaa !13
  %i.gy = call fastcc i32 @mel_get_run(ptr noundef %8) ; 2 uses
  %i.gz = icmp sgt i32 %i.ek, 0                   ; 11 uses
  br i1 %i.gz, label %.lr.ph1870, label %.preheader1844

.lr.ph1870:                                       ; preds = %.thread1795
  %i.ha = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.hd = icmp sgt i32 %i.en, 1
  %i.he = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 16 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 16 uses
  %i.hg = add i32 %i.fq, -1                       ; 8 uses
  %i.hh = zext nneg i32 %i.ek to i64              ; 8 uses
  br label %bb.av

.preheader1844:                                   ; preds = %bb.co, %.thread1795
  %.01515.lcssa = phi i32 [ %i.gy, %.thread1795 ], [ %.41519, %bb.co ]
  %.01492.lcssa = phi i32 [ 0, %.thread1795 ], [ %i.ll, %bb.co ]
  %i.hi = icmp sgt i32 %i.en, 2
  br i1 %i.hi, label %.lr.ph1946, label %._crit_edge1947

.lr.ph1946:                                       ; preds = %.preheader1844
  %i.hj = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 16 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 16 uses
  %i.hn = add i32 %i.fq, -1                       ; 12 uses
  %i.ho = sext i32 %i.ek to i64                   ; 13 uses
  %i.hp = add i32 %i.fq, -2                       ; 2 uses
  %i.hq = shl nuw i32 1, %i.hp                    ; 4 uses
  %i.hr = shl nuw nsw i32 %i.ek, 1
  %i.hs = zext nneg i32 %i.hr to i64              ; 2 uses
  %i.ht = mul nuw nsw i32 %i.ek, 3
  %i.hu = zext nneg i32 %i.ht to i64              ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.hx = shl i32 3, %i.hp                        ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ia = add i32 %i.ek, 7
  %i.ib = lshr i32 %i.ia, 1
  %i.ic = and i32 %i.ib, 2147483644
  %i.id = add nuw i32 %i.ic, 4
  %i.ie = zext i32 %i.id to i64
  %i.if = zext nneg i32 %i.en to i64              ; 2 uses
  %i.ig = xor i32 %i.ej, -1
  %i.ih = add i32 %i.ei, %i.ig
  %i.ii = lshr i32 %i.ih, 1
  %i.ij = and i32 %i.ii, 2147483644
  %i.ik = zext nneg i32 %i.ij to i64              ; 2 uses
  %i.il = add nuw nsw i64 %i.ik, 4                ; 2 uses
  %i.im = xor i32 %i.ej, -1
  %i.in = add i32 %i.ei, %i.im                    ; 2 uses
  %i.io = lshr i32 %i.in, 3
  %narrow = add nuw nsw i32 %i.io, 1
  %i.ip = zext nneg i32 %narrow to i64            ; 2 uses
  %min.iters.check2232 = icmp ult i32 %i.in, 24
  %n.vec2234 = and i64 %i.ip, 1073741820          ; 4 uses
  %i.iq = trunc nuw nsw i64 %n.vec2234 to i32
  %i.ir = shl i32 %i.iq, 3
  %i.is = shl nuw nsw i64 %n.vec2234, 2           ; 2 uses
  %cmp.n = icmp eq i64 %n.vec2234, %i.ip
  br label %bb.cp

bb.av:                                            ; preds = %.lr.ph1870, %bb.co
  %.014291869 = phi ptr [ %i.eo, %.lr.ph1870 ], [ %i.lk, %bb.co ] ; 4 uses
  %.014921868 = phi i32 [ 0, %.lr.ph1870 ], [ %i.ll, %bb.co ] ; 3 uses
  %.015001867 = phi ptr [ %i.gx, %.lr.ph1870 ], [ %i.sx, %bb.co ] ; 4 uses
  %.015151866 = phi i32 [ %i.gy, %.lr.ph1870 ], [ %.41519, %bb.co ] ; 3 uses
  %.015281865 = phi i32 [ 0, %.lr.ph1870 ], [ %.11529, %bb.co ] ; 2 uses
  %.015321864 = phi ptr [ %i.dq, %.lr.ph1870 ], [ %i.uu, %bb.co ] ; 7 uses
  %.015361863 = phi i32 [ 0, %.lr.ph1870 ], [ %i.mh, %bb.co ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.it = call fastcc i32 @rev_fetch(ptr noundef %9)
  %i.iu = shl nuw nsw i32 %.015281865, 7
  %i.iv = and i32 %i.it, 127
  %i.iw = or disjoint i32 %i.iv, %i.iu
  %i.ix = zext nneg i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr @vlc_tbl0, i64 %i.ix
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !116
  %i.ja = zext i16 %i.iz to i32                   ; 2 uses
  %i.jb = icmp eq i32 %.015281865, 0
  br i1 %i.jb, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.jc = add nsw i32 %.015151866, -2             ; 2 uses
  %i.jd = icmp eq i32 %i.jc, -1
  %i.je = select i1 %i.jd, i32 %i.ja, i32 0       ; 2 uses
  %i.jf = icmp slt i32 %.015151866, 2
  br i1 %i.jf, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jg = call fastcc i32 @mel_get_run(ptr noundef %8)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax, %bb.av
  %.sroa.0.0 = phi i32 [ %i.je, %bb.ax ], [ %i.je, %bb.aw ], [ %i.ja, %bb.av ] ; 17 uses
  %.11516 = phi i32 [ %i.jg, %bb.ax ], [ %i.jc, %bb.aw ], [ %.015151866, %bb.av ] ; 4 uses
  %i.jh = and i32 %.sroa.0.0, 16                  ; 2 uses
  %i.ji = lshr exact i32 %i.jh, 4
  %i.jj = lshr i32 %.sroa.0.0, 5
  %i.jk = and i32 %i.jj, 7
  %i.jl = or i32 %i.ji, %i.jk                     ; 3 uses
  %i.jm = and i32 %.sroa.0.0, 7                   ; 2 uses
  %i.jn = load i64, ptr %i.ha, align 8, !tbaa !16
  %i.jo = zext nneg i32 %i.jm to i64
  %i.jp = lshr i64 %i.jn, %i.jo                   ; 3 uses
  %i.jq = load i32, ptr %i.hb, align 8, !tbaa !17
  %i.jr = sub i32 %i.jq, %i.jm                    ; 2 uses
  %i.js = trunc i64 %i.jp to i32                  ; 2 uses
  %i.jt = lshr i32 %.sroa.0.0, 4                  ; 2 uses
  %i.ju = and i32 %i.jt, 3
  %i.jv = lshr i32 %.sroa.0.0, 2
  %i.jw = and i32 %i.jv, 48
  %i.jx = or disjoint i32 %i.ju, %i.jw
  %i.jy = shl nuw nsw i32 %i.jx, %.014921868
  %i.jz = load i32, ptr %.014291869, align 4, !tbaa !9
  %i.ka = or i32 %i.jz, %i.jy                     ; 2 uses
  store i32 %i.ka, ptr %.014291869, align 4, !tbaa !9
  %i.kb = or disjoint i32 %.015361863, 2
  %i.kc = icmp slt i32 %i.kb, %i.ek
  br i1 %i.kc, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.kd = shl nuw nsw i32 %i.jl, 7
  %i.ke = and i32 %i.js, 127
  %i.kf = or disjoint i32 %i.ke, %i.kd
  %i.kg = zext nneg i32 %i.kf to i64
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr @vlc_tbl0, i64 %i.kg
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !116
  %i.kj = zext i16 %i.ki to i32                   ; 2 uses
  %i.kk = icmp eq i32 %i.jl, 0
  br i1 %i.kk, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.kl = add nsw i32 %.11516, -2                 ; 2 uses
  %i.km = icmp eq i32 %i.kl, -1
  %i.kn = select i1 %i.km, i32 %i.kj, i32 0       ; 2 uses
  %i.ko = icmp slt i32 %.11516, 2
  br i1 %i.ko, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.kp = call fastcc i32 @mel_get_run(ptr noundef %8)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb, %bb.az
  %.sroa.49.0 = phi i32 [ %i.kn, %bb.bb ], [ %i.kn, %bb.ba ], [ %i.kj, %bb.az ] ; 4 uses
  %.21517 = phi i32 [ %i.kp, %bb.bb ], [ %i.kl, %bb.ba ], [ %.11516, %bb.az ]
  %i.kq = lshr i32 %.sroa.49.0, 4
  %i.kr = and i32 %i.kq, 1
  %i.ks = lshr i32 %.sroa.49.0, 5
  %i.kt = and i32 %i.ks, 7
  %i.ku = or i32 %i.kr, %i.kt
  %i.kv = and i32 %.sroa.49.0, 7                  ; 2 uses
  %i.kw = zext nneg i32 %i.kv to i64
  %i.kx = lshr i64 %i.jp, %i.kw                   ; 2 uses
  %i.ky = sub i32 %i.jr, %i.kv
  %i.kz = trunc i64 %i.kx to i32
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ay
  %i.la = phi i32 [ %i.ky, %bb.bc ], [ %i.jr, %bb.ay ]
  %i.lb = phi i64 [ %i.kx, %bb.bc ], [ %i.jp, %bb.ay ]
  %.11529 = phi i32 [ %i.ku, %bb.bc ], [ %i.jl, %bb.ay ]
  %.sroa.49.1 = phi i32 [ %.sroa.49.0, %bb.bc ], [ 0, %bb.ay ] ; 16 uses
  %.01526 = phi i32 [ %i.kz, %bb.bc ], [ %i.js, %bb.ay ]
  %.31518 = phi i32 [ %.21517, %bb.bc ], [ %.11516, %bb.ay ] ; 3 uses
  %i.lc = and i32 %.sroa.49.1, 48
  %i.ld = shl nuw nsw i32 %.sroa.49.1, 2
  %i.le = and i32 %i.ld, 768
  %i.lf = or disjoint i32 %i.le, %i.lc
  %13 = or disjoint i32 %.014921868, 4
  %i.lg = shl nuw nsw i32 %i.lf, %13
  %i.lh = or i32 %i.lg, %i.ka
  store i32 %i.lh, ptr %.014291869, align 4, !tbaa !9
  %i.li = lshr exact i32 %.015361863, 2
  %.lobit1706 = and i32 %i.li, 1
  %i.lj = zext nneg i32 %.lobit1706 to i64
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %.014291869, i64 %i.lj
  %i.ll = xor i32 %.014921868, 16                 ; 2 uses
  %i.lm = lshr i32 %.sroa.0.0, 3
  %i.ln = and i32 %i.lm, 1
  %i.lo = lshr i32 %.sroa.49.1, 2
  %i.lp = and i32 %i.lo, 2
  %i.lq = or disjoint i32 %i.lp, %i.ln            ; 2 uses
  %i.lr = icmp eq i32 %i.lq, 3
  br i1 %i.lr, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.ls = add nsw i32 %.31518, -2                 ; 2 uses
  %i.lt = icmp eq i32 %i.ls, -1
  %i.lu = select i1 %i.lt, i32 4, i32 3           ; 2 uses
  %i.lv = icmp slt i32 %.31518, 2
  br i1 %i.lv, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.lw = call fastcc i32 @mel_get_run(ptr noundef %8)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %bb.bd
  %.01554 = phi i32 [ %i.lu, %bb.bf ], [ %i.lu, %bb.be ], [ %i.lq, %bb.bd ]
  %.41519 = phi i32 [ %i.lw, %bb.bf ], [ %i.ls, %bb.be ], [ %.31518, %bb.bd ] ; 2 uses
  %i.lx = call fastcc i32 @decode_init_uvlc(i32 noundef %.01526, i32 noundef %.01554, ptr noundef %i.a) ; 2 uses
  %i.ly = load i32, ptr %i.a, align 4, !tbaa !9   ; 5 uses
  %i.lz = icmp ugt i32 %i.ly, %i.fr
  %i.ma = load i32, ptr %i.hc, align 4            ; 5 uses
  %i.mb = icmp ugt i32 %i.ma, %i.fr
  %or.cond2013 = select i1 %i.lz, i1 true, i1 %i.mb
  br i1 %or.cond2013, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %.not1733 = icmp eq ptr %6, null
  br i1 %.not1733, label %.critedge1761, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @opj_mutex_lock(ptr noundef nonnull %6) #10
  %i.mc = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.9) #10 ; 0 uses
  tail call void @opj_mutex_unlock(ptr noundef nonnull %6) #10
  br label %.thread1797

.critedge1761:                                    ; preds = %bb.bh
  %i.md = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.9) #10 ; 0 uses
  br label %.thread1797

bb.bj:                                            ; preds = %bb.bg
  %i.me = zext nneg i32 %i.lx to i64
  %i.mf = lshr i64 %i.lb, %i.me
  store i64 %i.mf, ptr %i.ha, align 8, !tbaa !16
  %i.mg = sub i32 %i.la, %i.lx
  store i32 %i.mg, ptr %i.hb, align 8, !tbaa !17
  %i.mh = add nuw nsw i32 %.015361863, 4          ; 4 uses
  %i.mi = icmp sgt i32 %i.mh, %i.ek
  %i.mj = sub nsw i32 %i.mh, %i.ek
  %i.mk = shl nuw i32 %i.mj, 1
  %i.ml = lshr i32 255, %i.mk
  %.01555 = select i1 %i.mi, i32 %i.ml, i32 255   ; 2 uses
  %i.mm = and i32 %.01555, 85
  %i.mn = select i1 %i.hd, i32 %.01555, i32 %i.mm ; 9 uses
  %i.mo = and i32 %i.jt, 15
  %i.mp = and i32 %.sroa.49.1, 240
  %i.mq = or disjoint i32 %i.mp, %i.mo
  %i.mr = xor i32 %i.mn, -1
  %i.ms = and i32 %i.mq, %i.mr
  %.not1707 = icmp eq i32 %i.ms, 0
  br i1 %.not1707, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.not1732 = icmp eq ptr %6, null
  br i1 %.not1732, label %.critedge1763, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @opj_mutex_lock(ptr noundef nonnull %6) #10
  %i.mt = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.10) #10 ; 0 uses
  tail call void @opj_mutex_unlock(ptr noundef nonnull %6) #10
  br label %.thread1797

.critedge1763:                                    ; preds = %bb.bk
  %i.mu = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.10) #10 ; 0 uses
  br label %.thread1797

bb.bm:                                            ; preds = %bb.bj
  %.not1708 = icmp eq i32 %i.jh, 0
  br i1 %.not1708, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mv = call fastcc i32 @frwd_fetch(ptr noundef %10) ; 2 uses
  %i.mw = shl i32 %.sroa.0.0, 19
  %i.mx = ashr i32 %i.mw, 31
  %i.my = add i32 %i.ly, %i.mx                    ; 4 uses
  %i.mz = load i64, ptr %i.he, align 8, !tbaa !19
  %i.na = zext nneg i32 %i.my to i64
  %i.nb = lshr i64 %i.mz, %i.na
  store i64 %i.nb, ptr %i.he, align 8, !tbaa !19
  %i.nc = load i32, ptr %i.hf, align 8, !tbaa !20
  %i.nd = sub i32 %i.nc, %i.my
  store i32 %i.nd, ptr %i.hf, align 8, !tbaa !20
  %i.ne = shl i32 %i.mv, 31
  %notmask1710 = shl nsw i32 -1, %i.my
  %i.nf = xor i32 %notmask1710, -1
  %i.ng = and i32 %i.mv, %i.nf
  %i.nh = lshr i32 %.sroa.0.0, 8
  %i.ni = and i32 %i.nh, 1
  %i.nj = shl nuw i32 %i.ni, %i.my
  %i.nk = or i32 %i.nj, %i.ng
  %i.nl = or i32 %i.nk, 1
  %i.nm = add i32 %i.nl, 2
  %i.nn = shl i32 %i.nm, %i.hg
  %i.no = or i32 %i.nn, %i.ne
  br label %.sink.split

bb.bo:                                            ; preds = %bb.bm
  %i.np = and i32 %i.mn, 1
  %.not1709 = icmp eq i32 %i.np, 0
  br i1 %.not1709, label %bb.bp, label %.sink.split

.sink.split:                                      ; preds = %bb.bo, %bb.bn
  %.sink = phi i32 [ %i.no, %bb.bn ], [ 0, %bb.bo ]
  store i32 %.sink, ptr %.015321864, align 4, !tbaa !9
  br label %bb.bp

bb.bp:                                            ; preds = %.sink.split, %bb.bo
  %i.nq = and i32 %.sroa.0.0, 32
  %.not1711 = icmp eq i32 %i.nq, 0
  br i1 %.not1711, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.nr = call fastcc i32 @frwd_fetch(ptr noundef %10) ; 2 uses
  %i.ns = shl i32 %.sroa.0.0, 18
  %i.nt = ashr i32 %i.ns, 31
  %i.nu = add i32 %i.ly, %i.nt                    ; 4 uses
  %i.nv = load i64, ptr %i.he, align 8, !tbaa !19
  %i.nw = zext nneg i32 %i.nu to i64
  %i.nx = lshr i64 %i.nv, %i.nw
  store i64 %i.nx, ptr %i.he, align 8, !tbaa !19
  %i.ny = load i32, ptr %i.hf, align 8, !tbaa !20
  %i.nz = sub i32 %i.ny, %i.nu
  store i32 %i.nz, ptr %i.hf, align 8, !tbaa !20
  %i.oa = shl i32 %i.nr, 31
  %notmask1713 = shl nsw i32 -1, %i.nu
  %i.ob = xor i32 %notmask1713, -1
  %i.oc = and i32 %i.nr, %i.ob
  %i.od = lshr i32 %.sroa.0.0, 9
  %i.oe = and i32 %i.od, 1
  %i.of = shl nuw i32 %i.oe, %i.nu
  %i.og = or i32 %i.of, %i.oc
  %i.oh = or i32 %i.og, 1                         ; 2 uses
  %i.oi = add i32 %i.oh, 2
  %i.oj = shl i32 %i.oi, %i.hg
  %i.ok = or i32 %i.oj, %i.oa
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %.015321864, i64 %i.hh
  store i32 %i.ok, ptr %i.ol, align 4, !tbaa !9
  %i.om = load i8, ptr %.015001867, align 1, !tbaa !13
  %i.on = and i8 %i.om, 127
  %i.oo = zext nneg i8 %i.on to i32
  %i.op = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %i.oh, i1 true)
  %i.oq = sub nuw nsw i32 32, %i.op
  %i.or = tail call i32 @llvm.umax.i32(i32 %i.oq, i32 %i.oo)
  %i.os = trunc nuw nsw i32 %i.or to i8
  %i.ot = or disjoint i8 %i.os, -128
  store i8 %i.ot, ptr %.015001867, align 1, !tbaa !13
  br label %bb.bt

bb.br:                                            ; preds = %bb.bp
  %i.ou = and i32 %i.mn, 2
  %.not1712 = icmp eq i32 %i.ou, 0
  br i1 %.not1712, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %.015321864, i64 %i.hh
  store i32 0, ptr %i.ov, align 4, !tbaa !9
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs, %bb.bq
  %i.ow = getelementptr inbounds nuw i8, ptr %.015001867, i64 1 ; 4 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.015321864, i64 4 ; 3 uses
  %i.oy = and i32 %.sroa.0.0, 64
  %.not1714 = icmp eq i32 %i.oy, 0
  br i1 %.not1714, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.oz = call fastcc i32 @frwd_fetch(ptr noundef %10) ; 2 uses
  %i.pa = shl i32 %.sroa.0.0, 17
  %i.pb = ashr i32 %i.pa, 31
  %i.pc = add i32 %i.ly, %i.pb                    ; 4 uses
  %i.pd = load i64, ptr %i.he, align 8, !tbaa !19
  %i.pe = zext nneg i32 %i.pc to i64
  %i.pf = lshr i64 %i.pd, %i.pe
  store i64 %i.pf, ptr %i.he, align 8, !tbaa !19
  %i.pg = load i32, ptr %i.hf, align 8, !tbaa !20
  %i.ph = sub i32 %i.pg, %i.pc
  store i32 %i.ph, ptr %i.hf, align 8, !tbaa !20
  %i.pi = shl i32 %i.oz, 31
  %notmask1716 = shl nsw i32 -1, %i.pc
end_hunk_0
