Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/ht_dec?download=true
inline.NumInlined: 55
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@opj_t1_ht_decode_cblk:bb.a
  tail call void @opj_mutex_lock(ptr noundef nonnull %6) #10
  %i.fc = load i32, ptr %i.af, align 8, !tbaa !18
  %i.fd = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %i.fc) #10 ; 0 uses
  tail call void @opj_mutex_unlock(ptr noundef nonnull %6) #10
  br label %.critedge1742

.critedge1748:                                    ; preds = %.thread1788.thread, %bb.z
  %i.fe = phi i32 [ %i.ex, %bb.z ], [ %i.fa, %.thread1788.thread ]
  %i.ff = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %i.fe) #10 ; 0 uses
  br label %.critedge1742

bb.ab:                                            ; preds = %.thread1788
  %i.fg = icmp ugt i32 %i.al, %i.ex
  br i1 %i.fg, label %bb.ac, label %bb.ae

.thread1820:                                      ; preds = %.thread1788.thread
  %i.fh = icmp ugt i32 %i.al, %i.fa
  br i1 %i.fh, label %.critedge1750, label %.thread1825

bb.ac:                                            ; preds = %bb.ab
  %.not1737 = icmp eq ptr %6, null
  br i1 %.not1737, label %.critedge1750, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @opj_mutex_lock(ptr noundef nonnull %6) #10
  %i.fi = load i32, ptr %i.af, align 8, !tbaa !18
  %i.fj = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %i.al, i32 noundef %i.fi) #10 ; 0 uses
  tail call void @opj_mutex_unlock(ptr noundef nonnull %6) #10
  br label %.critedge1742

.critedge1750:                                    ; preds = %.thread1820, %bb.ac
  %i.fk = phi i32 [ %i.ex, %bb.ac ], [ %i.fa, %.thread1820 ]
  %i.fl = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %i.al, i32 noundef %i.fk) #10 ; 0 uses
  br label %.critedge1742

bb.ae:                                            ; preds = %bb.ab
  %i.fm = icmp eq i32 %i.al, %i.ex
  %i.fn = icmp samesign ugt i32 %.013491790, 1
  %or.cond6 = and i1 %i.fn, %i.fm
  br i1 %or.cond6, label %bb.af, label %.thread1825

bb.af:                                            ; preds = %bb.ae
  %.b1614 = load i1, ptr @only_cleanup_pass_is_decoded, align 4
  br i1 %.b1614, label %.thread1825, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not1621 = icmp eq ptr %6, null
  br i1 %.not1621, label %.thread1794, label %bb.ah

.thread1794:                                      ; preds = %bb.ag
  store i1 true, ptr @only_cleanup_pass_is_decoded, align 4
  %i.fo = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef %.013491790) #10 ; 0 uses
  br label %.thread1825

bb.ah:                                            ; preds = %bb.ag
  tail call void @opj_mutex_lock(ptr noundef nonnull %6) #10
  %.b.pr = load i1, ptr @only_cleanup_pass_is_decoded, align 4
  br i1 %.b.pr, label %.thread1793, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i1 true, ptr @only_cleanup_pass_is_decoded, align 4
  %i.fp = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef %.013491790) #10 ; 0 uses
  br label %.thread1793

.thread1793:                                      ; preds = %bb.ah, %bb.ai
  tail call void @opj_mutex_unlock(ptr noundef nonnull %6) #10
  br label %.thread1825

.thread1825:                                      ; preds = %.thread1820, %.thread1794, %bb.af, %.thread1793, %bb.ae
  %.11350 = phi i32 [ %.013491790, %bb.ae ], [ 1, %.thread1794 ], [ 1, %.thread1793 ], [ 1, %bb.af ], [ 1, %.thread1820 ] ; 2 uses
  %i.fq = load i32, ptr %i.aj, align 4, !tbaa !22 ; 6 uses
  %i.fr = add nuw nsw i32 %i.al, 1                ; 4 uses
  %i.fs = icmp ult i32 %i.eg, 2
  %i.ft = icmp ugt i32 %i.eg, %.31547
  %or.cond1751 = select i1 %i.fs, i1 true, i1 %i.ft
  %i.fu = add i32 %i.eh, %i.eg
  %i.fv = icmp ugt i32 %i.fu, %.31547
  %or.cond1753 = select i1 %or.cond1751, i1 true, i1 %i.fv
  br i1 %or.cond1753, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %.thread1825
  %.not1736 = icmp eq ptr %6, null
  br i1 %.not1736, label %.critedge1755, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
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
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !46  ; 2 uses
  %i.gc = zext i8 %i.gb to i32
  %i.gd = shl nuw nsw i32 %i.gc, 4
  %i.ge = getelementptr i8, ptr %i.fz, i64 -2
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !46
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
  store i8 0, ptr %i.gx, align 1, !tbaa !46
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
  %.01492.lcssa = phi i32 [ 0, %.thread1795 ], [ %i.lk, %bb.co ]
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
  %i.hr = shl nsw i32 %i.ek, 1
  %13 = sext i32 %i.hr to i64                     ; 2 uses
  %i.hs = mul nsw i32 %i.ek, 3
  %14 = sext i32 %i.hs to i64                     ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.hv = shl i32 3, %i.hp                        ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.hy = add i32 %i.ek, 7
  %i.hz = lshr i32 %i.hy, 1
  %i.ia = and i32 %i.hz, 2147483644
  %i.ib = add nuw i32 %i.ia, 4
  %i.ic = zext i32 %i.ib to i64
  %i.id = zext nneg i32 %i.en to i64              ; 2 uses
  %i.ie = xor i32 %i.ej, -1
  %i.if = add i32 %i.ei, %i.ie
  %i.ig = lshr i32 %i.if, 1
  %i.ih = and i32 %i.ig, 2147483644
  %i.ii = zext nneg i32 %i.ih to i64              ; 2 uses
  %i.ij = add nuw nsw i64 %i.ii, 4                ; 2 uses
  %i.ik = xor i32 %i.ej, -1
  %i.il = add i32 %i.ei, %i.ik                    ; 2 uses
  %i.im = lshr i32 %i.il, 3
  %narrow = add nuw nsw i32 %i.im, 1
  %i.in = zext nneg i32 %narrow to i64            ; 2 uses
  %min.iters.check2232 = icmp ult i32 %i.il, 24
  %n.vec2234 = and i64 %i.in, 1073741820          ; 4 uses
  %i.io = trunc nuw nsw i64 %n.vec2234 to i32
  %i.ip = shl i32 %i.io, 3
  %i.iq = shl nuw nsw i64 %n.vec2234, 2           ; 2 uses
  %cmp.n = icmp eq i64 %n.vec2234, %i.in
  br label %bb.cp

bb.av:                                            ; preds = %.lr.ph1870, %bb.co
  %.014291869 = phi ptr [ %i.eo, %.lr.ph1870 ], [ %i.lj, %bb.co ] ; 4 uses
  %.014921868 = phi i32 [ 0, %.lr.ph1870 ], [ %i.lk, %bb.co ] ; 3 uses
  %.015001867 = phi ptr [ %i.gx, %.lr.ph1870 ], [ %i.sw, %bb.co ] ; 4 uses
  %.015151866 = phi i32 [ %i.gy, %.lr.ph1870 ], [ %.41519, %bb.co ] ; 3 uses
  %.015281865 = phi i32 [ 0, %.lr.ph1870 ], [ %.11529, %bb.co ] ; 2 uses
  %.015321864 = phi ptr [ %i.dq, %.lr.ph1870 ], [ %i.ut, %bb.co ] ; 7 uses
  %.015361863 = phi i32 [ 0, %.lr.ph1870 ], [ %i.mg, %bb.co ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.ir = call fastcc i32 @rev_fetch(ptr noundef %9)
  %i.is = shl nuw nsw i32 %.015281865, 7
  %i.it = and i32 %i.ir, 127
  %i.iu = or disjoint i32 %i.it, %i.is
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr @vlc_tbl0, i64 %i.iv
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !47
  %i.iy = zext i16 %i.ix to i32                   ; 2 uses
  %i.iz = icmp eq i32 %.015281865, 0
  br i1 %i.iz, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.ja = add nsw i32 %.015151866, -2             ; 2 uses
  %i.jb = icmp eq i32 %i.ja, -1
  %i.jc = select i1 %i.jb, i32 %i.iy, i32 0       ; 2 uses
  %i.jd = icmp slt i32 %.015151866, 2
  br i1 %i.jd, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.je = call fastcc i32 @mel_get_run(ptr noundef %8)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax, %bb.av
  %.sroa.0.0 = phi i32 [ %i.jc, %bb.ax ], [ %i.jc, %bb.aw ], [ %i.iy, %bb.av ] ; 17 uses
  %.11516 = phi i32 [ %i.je, %bb.ax ], [ %i.ja, %bb.aw ], [ %.015151866, %bb.av ] ; 4 uses
  %i.jf = and i32 %.sroa.0.0, 16                  ; 2 uses
  %i.jg = lshr exact i32 %i.jf, 4
  %i.jh = lshr i32 %.sroa.0.0, 5
  %i.ji = and i32 %i.jh, 7
  %i.jj = or i32 %i.jg, %i.ji                     ; 3 uses
  %i.jk = and i32 %.sroa.0.0, 7                   ; 2 uses
  %i.jl = load i64, ptr %i.ha, align 8, !tbaa !49
  %i.jm = zext nneg i32 %i.jk to i64
  %i.jn = lshr i64 %i.jl, %i.jm                   ; 3 uses
  %i.jo = load i32, ptr %i.hb, align 8, !tbaa !52
  %i.jp = sub i32 %i.jo, %i.jk                    ; 2 uses
  %i.jq = trunc i64 %i.jn to i32                  ; 2 uses
  %i.jr = lshr i32 %.sroa.0.0, 4                  ; 2 uses
  %i.js = and i32 %i.jr, 3
  %i.jt = lshr i32 %.sroa.0.0, 2
  %i.ju = and i32 %i.jt, 48
  %i.jv = or disjoint i32 %i.js, %i.ju
  %i.jw = shl i32 %i.jv, %.014921868
  %i.jx = load i32, ptr %.014291869, align 4, !tbaa !3
  %i.jy = or i32 %i.jx, %i.jw                     ; 2 uses
  store i32 %i.jy, ptr %.014291869, align 4, !tbaa !3
  %i.jz = or disjoint i32 %.015361863, 2
  %i.ka = icmp slt i32 %i.jz, %i.ek
  br i1 %i.ka, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.kb = shl nuw nsw i32 %i.jj, 7
  %i.kc = and i32 %i.jq, 127
  %i.kd = or disjoint i32 %i.kc, %i.kb
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr @vlc_tbl0, i64 %i.ke
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !47
  %i.kh = zext i16 %i.kg to i32                   ; 2 uses
  %i.ki = icmp eq i32 %i.jj, 0
  br i1 %i.ki, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.kj = add nsw i32 %.11516, -2                 ; 2 uses
  %i.kk = icmp eq i32 %i.kj, -1
  %i.kl = select i1 %i.kk, i32 %i.kh, i32 0       ; 2 uses
  %i.km = icmp slt i32 %.11516, 2
  br i1 %i.km, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.kn = call fastcc i32 @mel_get_run(ptr noundef %8)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb, %bb.az
  %.sroa.49.0 = phi i32 [ %i.kl, %bb.bb ], [ %i.kl, %bb.ba ], [ %i.kh, %bb.az ] ; 4 uses
  %.21517 = phi i32 [ %i.kn, %bb.bb ], [ %i.kj, %bb.ba ], [ %.11516, %bb.az ]
  %i.ko = lshr i32 %.sroa.49.0, 4
  %i.kp = and i32 %i.ko, 1
  %i.kq = lshr i32 %.sroa.49.0, 5
  %i.kr = and i32 %i.kq, 7
  %i.ks = or i32 %i.kp, %i.kr
  %i.kt = and i32 %.sroa.49.0, 7                  ; 2 uses
  %i.ku = zext nneg i32 %i.kt to i64
  %i.kv = lshr i64 %i.jn, %i.ku                   ; 2 uses
  %i.kw = sub i32 %i.jp, %i.kt
  %i.kx = trunc i64 %i.kv to i32
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ay
  %i.ky = phi i32 [ %i.kw, %bb.bc ], [ %i.jp, %bb.ay ]
  %i.kz = phi i64 [ %i.kv, %bb.bc ], [ %i.jn, %bb.ay ]
  %.11529 = phi i32 [ %i.ks, %bb.bc ], [ %i.jj, %bb.ay ]
  %.sroa.49.1 = phi i32 [ %.sroa.49.0, %bb.bc ], [ 0, %bb.ay ] ; 16 uses
  %.01526 = phi i32 [ %i.kx, %bb.bc ], [ %i.jq, %bb.ay ]
  %.31518 = phi i32 [ %.21517, %bb.bc ], [ %.11516, %bb.ay ] ; 3 uses
  %i.la = and i32 %.sroa.49.1, 48
  %i.lb = shl nuw nsw i32 %.sroa.49.1, 2
  %i.lc = and i32 %i.lb, 768
  %i.ld = or disjoint i32 %i.lc, %i.la
  %i.le = add nuw nsw i32 %.014921868, 4
  %i.lf = shl i32 %i.ld, %i.le
  %i.lg = or i32 %i.lf, %i.jy
  store i32 %i.lg, ptr %.014291869, align 4, !tbaa !3
  %i.lh = lshr exact i32 %.015361863, 2
  %.lobit1706 = and i32 %i.lh, 1
  %i.li = zext nneg i32 %.lobit1706 to i64
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %.014291869, i64 %i.li
  %i.lk = xor i32 %.014921868, 16                 ; 2 uses
  %i.ll = lshr i32 %.sroa.0.0, 3
  %i.lm = and i32 %i.ll, 1
  %i.ln = lshr i32 %.sroa.49.1, 2
  %i.lo = and i32 %i.ln, 2
  %i.lp = or disjoint i32 %i.lo, %i.lm            ; 2 uses
  %i.lq = icmp eq i32 %i.lp, 3
  br i1 %i.lq, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.lr = add nsw i32 %.31518, -2                 ; 2 uses
  %i.ls = icmp eq i32 %i.lr, -1
  %i.lt = select i1 %i.ls, i32 4, i32 3           ; 2 uses
  %i.lu = icmp slt i32 %.31518, 2
  br i1 %i.lu, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.lv = call fastcc i32 @mel_get_run(ptr noundef %8)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %bb.bd
  %.01554 = phi i32 [ %i.lt, %bb.bf ], [ %i.lt, %bb.be ], [ %i.lp, %bb.bd ]
  %.41519 = phi i32 [ %i.lv, %bb.bf ], [ %i.lr, %bb.be ], [ %.31518, %bb.bd ] ; 2 uses
  %i.lw = call fastcc i32 @decode_init_uvlc(i32 noundef %.01526, i32 noundef %.01554, ptr noundef %i.a) ; 2 uses
  %i.lx = load i32, ptr %i.a, align 4, !tbaa !3   ; 5 uses
  %i.ly = icmp ugt i32 %i.lx, %i.fr
  %i.lz = load i32, ptr %i.hc, align 4            ; 5 uses
  %i.ma = icmp ugt i32 %i.lz, %i.fr
  %or.cond2013 = select i1 %i.ly, i1 true, i1 %i.ma
  br i1 %or.cond2013, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %.not1733 = icmp eq ptr %6, null
  br i1 %.not1733, label %.critedge1761, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @opj_mutex_lock(ptr noundef nonnull %6) #10
  %i.mb = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.9) #10 ; 0 uses
  tail call void @opj_mutex_unlock(ptr noundef nonnull %6) #10
  br label %.thread1797

.critedge1761:                                    ; preds = %bb.bh
  %i.mc = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.9) #10 ; 0 uses
  br label %.thread1797

bb.bj:                                            ; preds = %bb.bg
  %i.md = zext nneg i32 %i.lw to i64
  %i.me = lshr i64 %i.kz, %i.md
  store i64 %i.me, ptr %i.ha, align 8, !tbaa !49
  %i.mf = sub i32 %i.ky, %i.lw
  store i32 %i.mf, ptr %i.hb, align 8, !tbaa !52
  %i.mg = add nuw nsw i32 %.015361863, 4          ; 4 uses
  %i.mh = icmp sgt i32 %i.mg, %i.ek
  %i.mi = sub nsw i32 %i.mg, %i.ek
  %i.mj = shl nuw i32 %i.mi, 1
end_hunk_0
begin_hunk_1_@opj_t1_ht_decode_cblk:bb.a
  %i.amd = xor i32 %i.amc, %i.ama
  %i.ame = or i32 %i.amd, %i.hq
  store i32 %i.ame, ptr %i.amb, align 4, !tbaa !3
  %i.amf = lshr i32 %.31510, 1
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ex, %bb.ey, %bb.eq
  %.51512 = phi i32 [ %.015071887, %bb.eq ], [ %i.amf, %bb.ey ], [ %.31510, %bb.ex ]
  %i.amg = shl i32 %.015061888, 4
  %i.amh = add nuw nsw i32 %.015041890, 1         ; 2 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %.015051889, i64 4
  %exitcond2033.not = icmp eq i32 %i.amh, 8
  br i1 %exitcond2033.not, label %.split1557, label %bb.eq, !llvm.loop !58

.split1557:                                       ; preds = %bb.ez
  %i.amj = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.akq)
  br label %.split

.split:                                           ; preds = %.lr.ph1894, %.split1557
  %phi.call = phi i32 [ %i.amj, %.split1557 ], [ 0, %.lr.ph1894 ] ; 2 uses
  %i.amk = load i64, ptr %i.ht, align 8, !tbaa !49
  %i.aml = zext nneg i32 %phi.call to i64
  %i.amm = lshr i64 %i.amk, %i.aml
  store i64 %i.amm, ptr %i.ht, align 8, !tbaa !49
  %i.amn = load i32, ptr %i.hu, align 8, !tbaa !52
  %i.amo = sub i32 %i.amn, %phi.call
  store i32 %i.amo, ptr %i.hu, align 8, !tbaa !52
  %indvars.iv.next2035 = add nuw nsw i64 %indvars.iv2034, 8 ; 2 uses
  %i.amp = trunc nuw i64 %indvars.iv.next2035 to i32
  %i.amq = icmp sgt i32 %i.ek, %i.amp
  br i1 %i.amq, label %.lr.ph1894, label %.loopexit1843, !llvm.loop !59

.loopexit1843:                                    ; preds = %.split, %bb.en
  %.not1651 = icmp eq i32 %i.aki, 0               ; 5 uses
  %i.amr = select i1 %.not1651, ptr %i.ep, ptr %i.eo ; 10 uses
  %i.ams = select i1 %.not1651, ptr %i.er, ptr %i.eq ; 9 uses
  br i1 %i.gz, label %.lr.ph1900.preheader, label %._crit_edge1901

.lr.ph1900.preheader:                             ; preds = %.loopexit1843
  br i1 %min.iters.check2232, label %.lr.ph1900.preheader2361, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph1900.preheader
  %scevgep = getelementptr i8, ptr %i.ams, i64 %i.ij ; 2 uses
  %scevgep2225 = getelementptr i8, ptr %i.amr, i64 %i.ij
  %scevgep2226 = getelementptr i8, ptr %i.amr, i64 4
  %i.amt = getelementptr i8, ptr %i.amr, i64 %i.ii
  %scevgep2227 = getelementptr i8, ptr %i.amt, i64 8
  %bound0 = icmp ult ptr %i.ams, %scevgep2225
  %bound1 = icmp ult ptr %i.amr, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound02228 = icmp ult ptr %i.ams, %scevgep2227
  %bound12229 = icmp ult ptr %scevgep2226, %scevgep
  %found.conflict2230 = and i1 %bound02228, %bound12229
  %conflict.rdx = or i1 %found.conflict, %found.conflict2230
  br i1 %conflict.rdx, label %.lr.ph1900.preheader2361, label %vector.ph2233

vector.ph2233:                                    ; preds = %vector.memcheck
  %i.amu = getelementptr i8, ptr %i.ams, i64 %i.iq
  %i.amv = getelementptr i8, ptr %i.amr, i64 %i.iq
  br label %vector.body2235

vector.body2235:                                  ; preds = %vector.body2235, %vector.ph2233
  %index2236 = phi i64 [ 0, %vector.ph2233 ], [ %index.next2239, %vector.body2235 ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph2233 ], [ %wide.load, %vector.body2235 ]
  %i.amw = shl i64 %index2236, 2                  ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ams, i64 %i.amw ; 2 uses
  %next.gep2237 = getelementptr i8, ptr %i.amr, i64 %i.amw ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep2237, align 4, !tbaa !3, !alias.scope !60 ; 7 uses
  %i.amx = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.amy = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load, <4 x i32> %i.amx, <4 x i32> splat (i32 4))
  %i.amz = lshr <4 x i32> %wide.load, splat (i32 4)
  %i.ana = or <4 x i32> %i.amz, %i.amy
  %i.anb = or <4 x i32> %i.ana, %wide.load        ; 2 uses
  store <4 x i32> %i.anb, ptr %next.gep, align 4, !tbaa !3, !alias.scope !63, !noalias !65
  %i.anc = getelementptr inbounds nuw i8, ptr %next.gep2237, i64 4
  %wide.load2238 = load <4 x i32>, ptr %i.anc, align 4, !tbaa !3, !alias.scope !67
  %i.and = shl <4 x i32> %wide.load2238, splat (i32 28)
  %i.ane = or <4 x i32> %i.anb, %i.and            ; 3 uses
  %i.anf = shl <4 x i32> %i.ane, splat (i32 1)
  %i.ang = and <4 x i32> %i.anf, splat (i32 -286331154)
  %i.anh = lshr <4 x i32> %i.ane, splat (i32 1)
  %i.ani = and <4 x i32> %i.anh, splat (i32 2004318071)
  %i.anj = or <4 x i32> %i.ani, %i.ang
  %i.ank = or <4 x i32> %i.anj, %i.ane
  %i.anl = xor <4 x i32> %wide.load, splat (i32 -1)
  %i.anm = and <4 x i32> %i.ank, %i.anl
  store <4 x i32> %i.anm, ptr %next.gep, align 4, !tbaa !3, !alias.scope !63, !noalias !65
  %index.next2239 = add nuw i64 %index2236, 4     ; 2 uses
  %i.ann = icmp eq i64 %index.next2239, %n.vec2234
  br i1 %i.ann, label %middle.block2240, label %vector.body2235, !llvm.loop !68

middle.block2240:                                 ; preds = %vector.body2235
  %vector.recur.extract = extractelement <4 x i32> %wide.load, i64 3
  br i1 %cmp.n, label %._crit_edge1901.thread, label %.lr.ph1900.preheader2361

.lr.ph1900.preheader2361:                         ; preds = %vector.memcheck, %.lr.ph1900.preheader, %middle.block2240
  %.014961898.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph1900.preheader ], [ %i.ip, %middle.block2240 ]
  %.014971897.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph1900.preheader ], [ %vector.recur.extract, %middle.block2240 ]
  %.014981896.ph = phi ptr [ %i.ams, %vector.memcheck ], [ %i.ams, %.lr.ph1900.preheader ], [ %i.amu, %middle.block2240 ]
  %.014991895.ph = phi ptr [ %i.amr, %vector.memcheck ], [ %i.amr, %.lr.ph1900.preheader ], [ %i.amv, %middle.block2240 ]
  br label %.lr.ph1900

.lr.ph1900:                                       ; preds = %.lr.ph1900.preheader2361, %.lr.ph1900
  %.014961898 = phi i32 [ %i.aof, %.lr.ph1900 ], [ %.014961898.ph, %.lr.ph1900.preheader2361 ]
  %.014971897 = phi i32 [ %i.ano, %.lr.ph1900 ], [ %.014971897.ph, %.lr.ph1900.preheader2361 ]
  %.014981896 = phi ptr [ %i.aog, %.lr.ph1900 ], [ %.014981896.ph, %.lr.ph1900.preheader2361 ] ; 3 uses
  %.014991895 = phi ptr [ %i.ant, %.lr.ph1900 ], [ %.014991895.ph, %.lr.ph1900.preheader2361 ] ; 2 uses
  %i.ano = load i32, ptr %.014991895, align 4, !tbaa !3 ; 5 uses
  %i.anp = tail call i32 @llvm.fshl.i32(i32 %i.ano, i32 %.014971897, i32 4)
  %i.anq = lshr i32 %i.ano, 4
  %i.anr = or i32 %i.anq, %i.anp
  %i.ans = or i32 %i.anr, %i.ano                  ; 2 uses
  store i32 %i.ans, ptr %.014981896, align 4, !tbaa !3
  %i.ant = getelementptr inbounds nuw i8, ptr %.014991895, i64 4 ; 2 uses
  %i.anu = load i32, ptr %i.ant, align 4, !tbaa !3
  %i.anv = shl i32 %i.anu, 28
  %i.anw = or i32 %i.ans, %i.anv                  ; 3 uses
  %i.anx = shl i32 %i.anw, 1
  %i.any = and i32 %i.anx, -286331154
  %i.anz = lshr i32 %i.anw, 1
  %i.aoa = and i32 %i.anz, 2004318071
  %i.aob = or i32 %i.aoa, %i.any
  %i.aoc = or i32 %i.aob, %i.anw
  %i.aod = xor i32 %i.ano, -1
  %i.aoe = and i32 %i.aoc, %i.aod
  store i32 %i.aoe, ptr %.014981896, align 4, !tbaa !3
  %i.aof = add nuw nsw i32 %.014961898, 8         ; 2 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %.014981896, i64 4
  %i.aoh = icmp slt i32 %i.aof, %i.ek
  br i1 %i.aoh, label %.lr.ph1900, label %._crit_edge1901.thread, !llvm.loop !69

._crit_edge1901:                                  ; preds = %.loopexit1843.thread, %.loopexit1843
  %i.aoi = phi ptr [ %i.akn, %.loopexit1843.thread ], [ %i.ams, %.loopexit1843 ]
  %i.aoj = phi ptr [ %i.akm, %.loopexit1843.thread ], [ %i.amr, %.loopexit1843 ]
  %.not16512151 = phi i1 [ %.not1650, %.loopexit1843.thread ], [ %.not1651, %.loopexit1843 ] ; 2 uses
  %i.aok = icmp samesign ugt i64 %indvars.iv2043, 5
  br i1 %i.aok, label %bb.fa, label %.thread1807

._crit_edge1901.thread:                           ; preds = %.lr.ph1900, %middle.block2240
  %i.aol = icmp samesign ugt i64 %indvars.iv2043, 5
  br i1 %i.aol, label %.thread2154, label %.thread1807

.thread2154:                                      ; preds = %._crit_edge1901.thread
  %i.aom = select i1 %.not1651, ptr %i.eo, ptr %i.ep
  %i.aon = select i1 %.not1651, ptr %i.eq, ptr %i.er
  br label %.lr.ph1908.preheader

bb.fa:                                            ; preds = %._crit_edge1901
  %i.aoo = select i1 %.not16512151, ptr %i.eo, ptr %i.ep ; 2 uses
  %i.aop = select i1 %.not16512151, ptr %i.eq, ptr %i.er
  br i1 %i.gz, label %.lr.ph1908.preheader, label %._crit_edge1942

.lr.ph1908.preheader:                             ; preds = %.thread2154, %bb.fa
  %i.aoq = phi ptr [ %i.aon, %.thread2154 ], [ %i.aop, %bb.fa ] ; 2 uses
  %i.aor = phi ptr [ %i.aom, %.thread2154 ], [ %i.aoo, %bb.fa ] ; 4 uses
  %i.aos = phi ptr [ %i.ams, %.thread2154 ], [ %i.aoi, %bb.fa ]
  %i.aot = phi ptr [ %i.amr, %.thread2154 ], [ %i.aoj, %bb.fa ] ; 2 uses
  br label %.lr.ph1908

.lr.ph1908:                                       ; preds = %.lr.ph1908.preheader, %bb.fc
  %.014821906 = phi i32 [ %i.apk, %bb.fc ], [ 0, %.lr.ph1908.preheader ]
  %.014841905 = phi i32 [ %i.aou, %bb.fc ], [ 0, %.lr.ph1908.preheader ]
  %.014861904 = phi ptr [ %i.aov, %bb.fc ], [ %i.aot, %.lr.ph1908.preheader ] ; 2 uses
  %.014881903 = phi ptr [ %i.apl, %bb.fc ], [ %i.aoq, %.lr.ph1908.preheader ] ; 3 uses
  %.014901902 = phi ptr [ %i.apm, %bb.fc ], [ %i.aor, %.lr.ph1908.preheader ] ; 2 uses
  %i.aou = load i32, ptr %.014861904, align 4, !tbaa !3 ; 4 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %.014861904, i64 4 ; 2 uses
  %.pre2067 = load i32, ptr %.014881903, align 4, !tbaa !3 ; 2 uses
  br i1 %.not, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %.lr.ph1908
  %i.aow = load i32, ptr %i.aov, align 4, !tbaa !3
  %i.aox = shl i32 %i.aow, 28
  %i.aoy = tail call i32 @llvm.fshl.i32(i32 %i.aou, i32 %.014841905, i32 4)
  %i.aoz = lshr i32 %i.aou, 4
  %i.apa = or i32 %i.aoz, %i.aoy
  %i.apb = or i32 %i.apa, %i.aox
  %i.apc = or i32 %i.apb, %i.aou
  %i.apd = shl i32 %i.apc, 3
  %i.ape = and i32 %i.apd, -2004318072
  %i.apf = or i32 %i.ape, %.pre2067
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %.lr.ph1908
  %i.apg = phi i32 [ %i.apf, %bb.fb ], [ %.pre2067, %.lr.ph1908 ]
  %i.aph = load i32, ptr %.014901902, align 4, !tbaa !3
  %i.api = xor i32 %i.aph, -1
  %i.apj = and i32 %i.apg, %i.api
  store i32 %i.apj, ptr %.014881903, align 4, !tbaa !3
  %i.apk = add nuw nsw i32 %.014821906, 8         ; 2 uses
  %i.apl = getelementptr inbounds nuw i8, ptr %.014881903, i64 4
  %i.apm = getelementptr inbounds nuw i8, ptr %.014901902, i64 4
  %i.apn = icmp slt i32 %i.apk, %i.ek
  br i1 %i.apn, label %.lr.ph1908, label %._crit_edge1909, !llvm.loop !70

._crit_edge1909:                                  ; preds = %bb.fc
  br i1 %i.gz, label %.lr.ph1941, label %._crit_edge1942

.lr.ph1941:                                       ; preds = %._crit_edge1909
  %i.apo = add nsw i64 %indvars.iv2043, -6
  %i.app = mul nsw i64 %i.apo, %i.ho
  %i.apq = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.app
  br label %bb.fd

bb.fd:                                            ; preds = %.lr.ph1941, %bb.gg
  %indvars.iv2040 = phi i64 [ 0, %.lr.ph1941 ], [ %indvars.iv.next2041, %bb.gg ] ; 5 uses
  %.014851938 = phi ptr [ %i.aos, %.lr.ph1941 ], [ %i.avl, %bb.gg ] ; 4 uses
  %.114871937 = phi ptr [ %i.aot, %.lr.ph1941 ], [ %i.avh, %bb.gg ] ; 3 uses
  %.114891936 = phi ptr [ %i.aoq, %.lr.ph1941 ], [ %i.avp, %bb.gg ] ; 3 uses
  %.114911935 = phi ptr [ %i.aor, %.lr.ph1941 ], [ %i.avo, %bb.gg ] ; 4 uses
  %i.apr = load i32, ptr %.114891936, align 4, !tbaa !3 ; 2 uses
  %.not1653 = icmp eq i32 %i.apr, 0
  br i1 %.not1653, label %.loopexit1842, label %.preheader1841

.preheader1841:                                   ; preds = %bb.fd
  %i.aps = getelementptr inbounds nuw i8, ptr %.114911935, i64 4
  %i.apt = getelementptr inbounds nuw i8, ptr %.114891936, i64 4 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.apq, i64 %indvars.iv2040
  %i.apu = trunc i64 %indvars.iv2040 to i32
  %i.apv = sub i32 %i.ek, %i.apu
  br label %bb.fe

bb.fe:                                            ; preds = %.loopexit1840, %.preheader1841
  %i.apw = phi i1 [ false, %.preheader1841 ], [ true, %.loopexit1840 ]
  %indvars.iv2037 = phi i64 [ 0, %.preheader1841 ], [ 4, %.loopexit1840 ] ; 6 uses
  %.014591932 = phi i32 [ 0, %.preheader1841 ], [ %.11460.lcssa2163, %.loopexit1840 ] ; 2 uses
  %.014711931 = phi i32 [ %i.apr, %.preheader1841 ], [ %.11472.lcssa2162, %.loopexit1840 ] ; 2 uses
  %i.apx = call fastcc i32 @frwd_fetch(ptr noundef %11)
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv2037
  %indvars.iv2037.tr = trunc nuw nsw i64 %indvars.iv2037 to i32
  %i.apy = shl nuw nsw i32 %indvars.iv2037.tr, 2  ; 2 uses
  %i.apz = shl nuw nsw i32 15, %i.apy             ; 2 uses
  %i.aqa = load i32, ptr %.114911935, align 4, !tbaa !3
  %i.aqb = xor i32 %i.aqa, -1                     ; 4 uses
  %indvars.iv.next2038 = add nuw nsw i64 %indvars.iv2037, 4 ; 2 uses
  %i.aqc = add nuw nsw i64 %indvars.iv.next2038, %indvars.iv2040
  %i.aqd = trunc nuw i64 %i.aqc to i32
  %i.aqe = icmp sgt i32 %i.ek, %i.aqd
  %i.aqf = trunc nuw nsw i64 %indvars.iv.next2038 to i32
  %i.aqg = select i1 %i.aqe, i32 %i.aqf, i32 %i.apv ; 3 uses
  %i.aqh = sext i32 %i.aqg to i64
  %i.aqi = icmp slt i64 %indvars.iv2037, %i.aqh
  br i1 %i.aqi, label %.lr.ph1918.preheader, label %.loopexit1840

.lr.ph1918.preheader:                             ; preds = %bb.fe
  %i.aqj = trunc nuw nsw i64 %indvars.iv2037 to i32
  br label %.lr.ph1918

.lr.ph1918:                                       ; preds = %.lr.ph1918.preheader, %bb.fv
  %.014311916 = phi i32 [ %.51436, %bb.fv ], [ 0, %.lr.ph1918.preheader ] ; 3 uses
  %.014441915 = phi i32 [ %.51449, %bb.fv ], [ %i.apx, %.lr.ph1918.preheader ] ; 4 uses
  %.014561913 = phi i32 [ %i.asa, %bb.fv ], [ %i.aqj, %.lr.ph1918.preheader ] ; 5 uses
  %.014571912 = phi i32 [ %i.asb, %bb.fv ], [ %i.apz, %.lr.ph1918.preheader ] ; 3 uses
  %.114601911 = phi i32 [ %.101469, %bb.fv ], [ %.014591932, %.lr.ph1918.preheader ] ; 4 uses
  %.114721910 = phi i32 [ %.101481, %bb.fv ], [ %.014711931, %.lr.ph1918.preheader ] ; 6 uses
  %i.aqk = and i32 %.014571912, %.114721910
  %i.aql = icmp eq i32 %i.aqk, 0
  br i1 %i.aql, label %bb.fv, label %bb.ff

bb.ff:                                            ; preds = %.lr.ph1918
  %i.aqm = and i32 %.014571912, 286331153         ; 5 uses
  %i.aqn = and i32 %i.aqm, %.114721910
  %.not1660 = icmp eq i32 %i.aqn, 0
  br i1 %.not1660, label %bb.fj, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.aqo = and i32 %.014441915, 1
  %.not1661 = icmp eq i32 %i.aqo, 0
  br i1 %.not1661, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.aqp = or i32 %i.aqm, %.114601911
  %i.aqq = shl nsw i32 %.014561913, 2
  %i.aqr = shl i32 50, %i.aqq
  %i.aqs = and i32 %i.aqr, %i.aqb
  %i.aqt = or i32 %i.aqs, %.114721910
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %.21473 = phi i32 [ %i.aqt, %bb.fh ], [ %.114721910, %bb.fg ]
  %.21461 = phi i32 [ %i.aqp, %bb.fh ], [ %.114601911, %bb.fg ]
  %i.aqu = lshr i32 %.014441915, 1
  %i.aqv = add i32 %.014311916, 1
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.ff
  %.31474 = phi i32 [ %.21473, %bb.fi ], [ %.114721910, %bb.ff ] ; 4 uses
  %.31462 = phi i32 [ %.21461, %bb.fi ], [ %.114601911, %bb.ff ] ; 3 uses
  %.11445 = phi i32 [ %i.aqu, %bb.fi ], [ %.014441915, %bb.ff ] ; 3 uses
  %.11432 = phi i32 [ %i.aqv, %bb.fi ], [ %.014311916, %bb.ff ] ; 2 uses
  %i.aqw = shl nuw nsw i32 %i.aqm, 1              ; 2 uses
  %i.aqx = and i32 %.31474, %i.aqw
  %.not1662 = icmp eq i32 %i.aqx, 0
  br i1 %.not1662, label %bb.fn, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.aqy = and i32 %.11445, 1
  %.not1663 = icmp eq i32 %i.aqy, 0
  br i1 %.not1663, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.aqz = or i32 %.31462, %i.aqw
  %i.ara = shl nsw i32 %.014561913, 2
  %i.arb = shl i32 116, %i.ara
  %i.arc = and i32 %i.arb, %i.aqb
  %i.ard = or i32 %.31474, %i.arc
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %.41475 = phi i32 [ %i.ard, %bb.fl ], [ %.31474, %bb.fk ]
  %.41463 = phi i32 [ %i.aqz, %bb.fl ], [ %.31462, %bb.fk ]
  %i.are = lshr i32 %.11445, 1
  %i.arf = add i32 %.11432, 1
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fj
  %.51476 = phi i32 [ %.41475, %bb.fm ], [ %.31474, %bb.fj ] ; 4 uses
  %.51464 = phi i32 [ %.41463, %bb.fm ], [ %.31462, %bb.fj ] ; 3 uses
  %.21446 = phi i32 [ %i.are, %bb.fm ], [ %.11445, %bb.fj ] ; 3 uses
  %.21433 = phi i32 [ %i.arf, %bb.fm ], [ %.11432, %bb.fj ] ; 2 uses
  %i.arg = shl nuw nsw i32 %i.aqm, 2              ; 2 uses
  %i.arh = and i32 %.51476, %i.arg
  %.not1664 = icmp eq i32 %i.arh, 0
  br i1 %.not1664, label %bb.fr, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.ari = and i32 %.21446, 1
  %.not1665 = icmp eq i32 %i.ari, 0
  br i1 %.not1665, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.arj = or i32 %.51464, %i.arg
  %i.ark = shl nsw i32 %.014561913, 2
  %i.arl = shl i32 232, %i.ark
  %i.arm = and i32 %i.arl, %i.aqb
  %i.arn = or i32 %.51476, %i.arm
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %.61477 = phi i32 [ %i.arn, %bb.fp ], [ %.51476, %bb.fo ]
  %.61465 = phi i32 [ %i.arj, %bb.fp ], [ %.51464, %bb.fo ]
  %i.aro = lshr i32 %.21446, 1
  %i.arp = add i32 %.21433, 1
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fn
  %.71478 = phi i32 [ %.61477, %bb.fq ], [ %.51476, %bb.fn ] ; 4 uses
  %.71466 = phi i32 [ %.61465, %bb.fq ], [ %.51464, %bb.fn ] ; 3 uses
  %.31447 = phi i32 [ %i.aro, %bb.fq ], [ %.21446, %bb.fn ] ; 3 uses
  %.31434 = phi i32 [ %i.arp, %bb.fq ], [ %.21433, %bb.fn ] ; 2 uses
  %i.arq = shl nuw i32 %i.aqm, 3                  ; 2 uses
  %i.arr = and i32 %.71478, %i.arq
  %.not1666 = icmp eq i32 %i.arr, 0
  br i1 %.not1666, label %bb.fv, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.ars = and i32 %.31447, 1
  %.not1667 = icmp eq i32 %i.ars, 0
  br i1 %.not1667, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.art = or i32 %.71466, %i.arq
  %i.aru = shl nsw i32 %.014561913, 2
  %i.arv = shl i32 192, %i.aru
  %i.arw = and i32 %i.arv, %i.aqb
  %i.arx = or i32 %.71478, %i.arw
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %.81479 = phi i32 [ %i.arx, %bb.ft ], [ %.71478, %bb.fs ]
  %.81467 = phi i32 [ %i.art, %bb.ft ], [ %.71466, %bb.fs ]
  %i.ary = lshr i32 %.31447, 1
  %i.arz = add i32 %.31434, 1
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fr, %bb.fu, %.lr.ph1918
  %.101481 = phi i32 [ %.114721910, %.lr.ph1918 ], [ %.81479, %bb.fu ], [ %.71478, %bb.fr ] ; 3 uses
  %.101469 = phi i32 [ %.114601911, %.lr.ph1918 ], [ %.81467, %bb.fu ], [ %.71466, %bb.fr ] ; 9 uses
  %.51449 = phi i32 [ %.014441915, %.lr.ph1918 ], [ %i.ary, %bb.fu ], [ %.31447, %bb.fr ] ; 2 uses
  %.51436 = phi i32 [ %.014311916, %.lr.ph1918 ], [ %i.arz, %bb.fu ], [ %.31434, %bb.fr ] ; 3 uses
  %i.asa = add nuw nsw i32 %.014561913, 1         ; 2 uses
  %i.asb = shl i32 %.014571912, 4
  %i.asc = icmp slt i32 %i.asa, %i.aqg
  br i1 %i.asc, label %.lr.ph1918, label %._crit_edge1919, !llvm.loop !71

._crit_edge1919:                                  ; preds = %bb.fv
  %i.asd = shl nuw i32 65535, %i.apy
  %i.ase = and i32 %.101469, %i.asd
  %.not1655.not = icmp eq i32 %i.ase, 0
  br i1 %.not1655.not, label %.loopexit1840, label %.lr.ph1929.preheader

.lr.ph1929.preheader:                             ; preds = %._crit_edge1919
  %i.asf = trunc nuw nsw i64 %indvars.iv2037 to i32
  br label %.lr.ph1929

.lr.ph1929:                                       ; preds = %.lr.ph1929.preheader, %bb.ge
  %.014261928 = phi ptr [ %i.ats, %bb.ge ], [ %gep, %.lr.ph1929.preheader ] ; 6 uses
  %.014271927 = phi i32 [ %i.atr, %bb.ge ], [ %i.asf, %.lr.ph1929.preheader ]
  %.014281926 = phi i32 [ %i.att, %bb.ge ], [ %i.apz, %.lr.ph1929.preheader ] ; 3 uses
  %.614371925 = phi i32 [ %.111442, %bb.ge ], [ %.51436, %.lr.ph1929.preheader ] ; 3 uses
  %.614501924 = phi i32 [ %.111455, %bb.ge ], [ %.51449, %.lr.ph1929.preheader ] ; 4 uses
  %i.asg = and i32 %.014281926, %.101469
  %i.ash = icmp eq i32 %i.asg, 0
  br i1 %i.ash, label %bb.ge, label %bb.fw

bb.fw:                                            ; preds = %.lr.ph1929
  %i.asi = and i32 %.014281926, 286331153         ; 4 uses
  %i.asj = and i32 %i.asi, %.101469
  %.not1656 = icmp eq i32 %i.asj, 0
  br i1 %.not1656, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.ask = shl i32 %.614501924, 31
  %i.asl = load i32, ptr %.014261928, align 4, !tbaa !3
  %i.asm = or i32 %i.ask, %i.asl
  %i.asn = or i32 %i.asm, %i.hv
  store i32 %i.asn, ptr %.014261928, align 4, !tbaa !3
  %i.aso = lshr i32 %.614501924, 1
  %i.asp = add i32 %.614371925, 1
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.71451 = phi i32 [ %i.aso, %bb.fx ], [ %.614501924, %bb.fw ] ; 3 uses
  %.71438 = phi i32 [ %i.asp, %bb.fx ], [ %.614371925, %bb.fw ] ; 2 uses
  %i.asq = shl nuw nsw i32 %i.asi, 1
  %i.asr = and i32 %i.asq, %.101469
  %.not1657 = icmp eq i32 %i.asr, 0
  br i1 %.not1657, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.ass = shl i32 %.71451, 31
  %i.ast = getelementptr inbounds nuw [4 x i8], ptr %.014261928, i64 %i.ho ; 2 uses
  %i.asu = load i32, ptr %i.ast, align 4, !tbaa !3
  %i.asv = or i32 %i.ass, %i.asu
  %i.asw = or i32 %i.asv, %i.hv
  store i32 %i.asw, ptr %i.ast, align 4, !tbaa !3
  %i.asx = lshr i32 %.71451, 1
  %i.asy = add i32 %.71438, 1
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %.81452 = phi i32 [ %i.asx, %bb.fz ], [ %.71451, %bb.fy ] ; 3 uses
  %.81439 = phi i32 [ %i.asy, %bb.fz ], [ %.71438, %bb.fy ] ; 2 uses
  %i.asz = shl nuw nsw i32 %i.asi, 2
  %i.ata = and i32 %i.asz, %.101469
  %.not1658 = icmp eq i32 %i.ata, 0
  br i1 %.not1658, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.atb = shl i32 %.81452, 31
  %i.atc = getelementptr inbounds nuw [4 x i8], ptr %.014261928, i64 %13 ; 2 uses
  %i.atd = load i32, ptr %i.atc, align 4, !tbaa !3
  %i.ate = or i32 %i.atb, %i.atd
  %i.atf = or i32 %i.ate, %i.hv
  store i32 %i.atf, ptr %i.atc, align 4, !tbaa !3
  %i.atg = lshr i32 %.81452, 1
  %i.ath = add i32 %.81439, 1
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %.91453 = phi i32 [ %i.atg, %bb.gb ], [ %.81452, %bb.ga ] ; 3 uses
  %.91440 = phi i32 [ %i.ath, %bb.gb ], [ %.81439, %bb.ga ] ; 2 uses
  %i.ati = shl nuw i32 %i.asi, 3
  %i.atj = and i32 %i.ati, %.101469
  %.not1659 = icmp eq i32 %i.atj, 0
  br i1 %.not1659, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.atk = shl i32 %.91453, 31
  %i.atl = getelementptr inbounds nuw [4 x i8], ptr %.014261928, i64 %14 ; 2 uses
  %i.atm = load i32, ptr %i.atl, align 4, !tbaa !3
  %i.atn = or i32 %i.atk, %i.atm
  %i.ato = or i32 %i.atn, %i.hv
  store i32 %i.ato, ptr %i.atl, align 4, !tbaa !3
  %i.atp = lshr i32 %.91453, 1
  %i.atq = add i32 %.91440, 1
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gc, %bb.gd, %.lr.ph1929
  %.111455 = phi i32 [ %.614501924, %.lr.ph1929 ], [ %i.atp, %bb.gd ], [ %.91453, %bb.gc ]
  %.111442 = phi i32 [ %.614371925, %.lr.ph1929 ], [ %i.atq, %bb.gd ], [ %.91440, %bb.gc ] ; 2 uses
  %i.atr = add nuw nsw i32 %.014271927, 1         ; 2 uses
  %i.ats = getelementptr inbounds nuw i8, ptr %.014261928, i64 4
  %i.att = shl i32 %.014281926, 4
  %i.atu = icmp slt i32 %i.atr, %i.aqg
  br i1 %i.atu, label %.lr.ph1929, label %.loopexit1840, !llvm.loop !72

.loopexit1840:                                    ; preds = %bb.ge, %bb.fe, %._crit_edge1919
  %.11460.lcssa2163 = phi i32 [ %.101469, %._crit_edge1919 ], [ %.014591932, %bb.fe ], [ %.101469, %bb.ge ] ; 4 uses
  %.11472.lcssa2162 = phi i32 [ %.101481, %._crit_edge1919 ], [ %.014711931, %bb.fe ], [ %.101481, %bb.ge ]
  %.121443 = phi i32 [ %.51436, %._crit_edge1919 ], [ 0, %bb.fe ], [ %.111442, %bb.ge ] ; 2 uses
  %i.atv = load i64, ptr %i.hw, align 8, !tbaa !53
  %i.atw = zext nneg i32 %.121443 to i64
  %i.atx = lshr i64 %i.atv, %i.atw
  store i64 %i.atx, ptr %i.hw, align 8, !tbaa !53
  %i.aty = load i32, ptr %i.hx, align 8, !tbaa !55
  %i.atz = sub i32 %i.aty, %.121443
  store i32 %i.atz, ptr %i.hx, align 8, !tbaa !55
  br i1 %i.apw, label %.thread2164, label %bb.fe

.thread2164:                                      ; preds = %.loopexit1840
  %i.aua = lshr i32 %.11460.lcssa2163, 28         ; 2 uses
  %i.aub = lshr i32 %.11460.lcssa2163, 29
  %i.auc = shl nuw nsw i32 %i.aua, 1
  %i.aud = and i32 %i.auc, 14
  %i.aue = or i32 %i.aub, %i.aud
  %i.auf = or i32 %i.aue, %i.aua
  %i.aug = load i32, ptr %i.aps, align 4, !tbaa !3
  %i.auh = xor i32 %i.aug, -1
  %i.aui = and i32 %i.auf, %i.auh
  %i.auj = load i32, ptr %i.apt, align 4, !tbaa !3
  %i.auk = or i32 %i.auj, %i.aui
  store i32 %i.auk, ptr %i.apt, align 4, !tbaa !3
  br label %.loopexit1842

.loopexit1842:                                    ; preds = %.thread2164, %bb.fd
  %.111470 = phi i32 [ 0, %bb.fd ], [ %.11460.lcssa2163, %.thread2164 ]
  %i.aul = load i32, ptr %.114911935, align 4, !tbaa !3
  %i.aum = or i32 %i.aul, %.111470                ; 2 uses
  %i.aun = lshr i32 %i.aum, 3
  %i.auo = and i32 %i.aun, 286331153              ; 4 uses
  %i.aup = shl i32 %i.auo, 4
  %i.auq = lshr i32 %i.auo, 4
  %i.aur = or i32 %i.auq, %i.aup
  %i.aus = or i32 %i.aur, %i.auo
  %.not1654 = icmp eq i64 %indvars.iv2040, 0
  br i1 %.not1654, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %.loopexit1842
  %i.aut = shl i32 %i.auo, 28
  %i.auu = getelementptr inbounds i8, ptr %.114871937, i64 -4
  %i.auv = load i32, ptr %i.auu, align 4, !tbaa !3
  %i.auw = xor i32 %i.auv, -1
  %i.aux = and i32 %i.aut, %i.auw
  %i.auy = getelementptr inbounds i8, ptr %.014851938, i64 -4 ; 2 uses
  %i.auz = load i32, ptr %i.auy, align 4, !tbaa !3
  %i.ava = or i32 %i.auz, %i.aux
  store i32 %i.ava, ptr %i.auy, align 4, !tbaa !3
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %.loopexit1842
  %i.avb = load i32, ptr %.114871937, align 4, !tbaa !3
  %i.avc = xor i32 %i.avb, -1
  %i.avd = and i32 %i.aus, %i.avc
  %i.ave = load i32, ptr %.014851938, align 4, !tbaa !3
  %i.avf = or i32 %i.ave, %i.avd
  store i32 %i.avf, ptr %.014851938, align 4, !tbaa !3
  %i.avg = lshr i32 %i.aum, 31
  %i.avh = getelementptr inbounds nuw i8, ptr %.114871937, i64 4 ; 2 uses
  %i.avi = load i32, ptr %i.avh, align 4, !tbaa !3
  %i.avj = xor i32 %i.avi, -1
  %i.avk = and i32 %i.avg, %i.avj
  %i.avl = getelementptr inbounds nuw i8, ptr %.014851938, i64 4 ; 3 uses
  %i.avm = load i32, ptr %i.avl, align 4, !tbaa !3
  %i.avn = or i32 %i.avm, %i.avk
  store i32 %i.avn, ptr %i.avl, align 4, !tbaa !3
  %indvars.iv.next2041 = add nuw nsw i64 %indvars.iv2040, 8 ; 2 uses
  %i.avo = getelementptr inbounds nuw i8, ptr %.114911935, i64 4
  %i.avp = getelementptr inbounds nuw i8, ptr %.114891936, i64 4
  %i.avq = trunc nuw i64 %indvars.iv.next2041 to i32
  %i.avr = icmp sgt i32 %i.ek, %i.avq
  br i1 %i.avr, label %bb.fd, label %._crit_edge1942, !llvm.loop !73

end_hunk_1
begin_hunk_2_@opj_t1_ht_decode_cblk:bb.a
  %i.axi = lshr i32 %.11418, 1
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %.21419 = phi i32 [ %i.axi, %bb.gp ], [ %.11418, %bb.go ] ; 3 uses
  %i.axj = shl nuw nsw i32 %i.awq, 2
  %i.axk = and i32 %i.axj, %i.awn
  %.not1647 = icmp eq i32 %i.axk, 0
  br i1 %.not1647, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.axl = and i32 %.21419, 1
  %i.axm = xor i32 %i.axl, 1
  %i.axn = shl nuw i32 %i.axm, %i.awd
  %i.axo = getelementptr inbounds nuw [4 x i8], ptr %.014151950, i64 %i.awg ; 2 uses
  %i.axp = load i32, ptr %i.axo, align 4, !tbaa !3
  %i.axq = xor i32 %i.axp, %i.axn
  %i.axr = or i32 %i.axq, %i.awa
  store i32 %i.axr, ptr %i.axo, align 4, !tbaa !3
  %i.axs = lshr i32 %.21419, 1
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %.31420 = phi i32 [ %i.axs, %bb.gr ], [ %.21419, %bb.gq ] ; 3 uses
  %i.axt = shl nuw i32 %i.awq, 3
  %i.axu = and i32 %i.axt, %i.awn
  %.not1648 = icmp eq i32 %i.axu, 0
  br i1 %.not1648, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.axv = and i32 %.31420, 1
  %i.axw = xor i32 %i.axv, 1
  %i.axx = shl nuw i32 %i.axw, %i.awd
  %i.axy = getelementptr inbounds nuw [4 x i8], ptr %.014151950, i64 %i.awi ; 2 uses
  %i.axz = load i32, ptr %i.axy, align 4, !tbaa !3
  %i.aya = xor i32 %i.axz, %i.axx
  %i.ayb = or i32 %i.aya, %i.awa
  store i32 %i.ayb, ptr %i.axy, align 4, !tbaa !3
  %i.ayc = lshr i32 %.31420, 1
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gs, %bb.gt, %bb.gl
  %.51422 = phi i32 [ %.014171948, %bb.gl ], [ %i.ayc, %bb.gt ], [ %.31420, %bb.gs ]
  %i.ayd = shl i32 %.014161949, 4
  %i.aye = add nuw nsw i32 %.014141951, 1         ; 2 uses
  %i.ayf = getelementptr inbounds nuw i8, ptr %.014151950, i64 4
  %exitcond2046.not = icmp eq i32 %i.aye, 8
  br i1 %exitcond2046.not, label %.split1560, label %bb.gl, !llvm.loop !75

.split1560:                                       ; preds = %bb.gu
  %i.ayg = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.awn)
  br label %.split1558

.split1558:                                       ; preds = %bb.gj, %.split1560
  %phi.call1561 = phi i32 [ %i.ayg, %.split1560 ], [ 0, %bb.gj ] ; 2 uses
  %i.ayh = load i64, ptr %i.awj, align 8, !tbaa !49
  %i.ayi = zext nneg i32 %phi.call1561 to i64
  %i.ayj = lshr i64 %i.ayh, %i.ayi
  store i64 %i.ayj, ptr %i.awj, align 8, !tbaa !49
  %i.ayk = load i32, ptr %i.awk, align 8, !tbaa !52
  %i.ayl = sub i32 %i.ayk, %phi.call1561
  store i32 %i.ayl, ptr %i.awk, align 8, !tbaa !52
  %indvars.iv.next2048 = add nuw nsw i64 %indvars.iv2047, 8 ; 2 uses
  %i.aym = trunc nuw i64 %indvars.iv.next2048 to i32
  %i.ayn = icmp sgt i32 %i.ek, %i.aym
  br i1 %i.ayn, label %bb.gj, label %.loopexit1838, !llvm.loop !76

.loopexit1838:                                    ; preds = %.split1558, %bb.gh
  %switch1772 = icmp ult i32 %.off, 2
  %brmerge.not = and i1 %switch1772, %i.gz
  br i1 %brmerge.not, label %.lr.ph1961.preheader, label %.loopexit1837

.lr.ph1961.preheader:                             ; preds = %.loopexit1838
  %i.ayo = and i32 %i.en, 4
  %.not1623 = icmp eq i32 %i.ayo, 0               ; 2 uses
  %i.ayp = select i1 %.not1623, ptr %i.eq, ptr %i.er ; 7 uses
  %i.ayq = select i1 %.not1623, ptr %i.eo, ptr %i.ep ; 8 uses
  %i.ayr = xor i32 %i.ej, -1
  %i.ays = add i32 %i.ei, %i.ayr                  ; 2 uses
  %i.ayt = lshr i32 %i.ays, 3
  %narrow2353 = add nuw nsw i32 %i.ayt, 1
  %i.ayu = zext nneg i32 %narrow2353 to i64       ; 2 uses
  %min.iters.check2257 = icmp ult i32 %i.ays, 56
  br i1 %min.iters.check2257, label %.lr.ph1961.preheader2360, label %vector.memcheck2244

vector.memcheck2244:                              ; preds = %.lr.ph1961.preheader
  %i.ayv = xor i32 %i.ej, -1
  %i.ayw = add i32 %i.ei, %i.ayv
  %i.ayx = lshr i32 %i.ayw, 1
  %i.ayy = and i32 %i.ayx, 2147483644
  %i.ayz = zext nneg i32 %i.ayy to i64            ; 2 uses
  %i.aza = add nuw nsw i64 %i.ayz, 4              ; 2 uses
  %scevgep2245 = getelementptr i8, ptr %i.ayp, i64 %i.aza ; 2 uses
  %scevgep2246 = getelementptr i8, ptr %i.ayq, i64 %i.aza
  %scevgep2247 = getelementptr nuw i8, ptr %i.ayq, i64 4
  %i.azb = getelementptr i8, ptr %i.ayq, i64 %i.ayz
  %scevgep2248 = getelementptr i8, ptr %i.azb, i64 8
  %bound02249 = icmp ult ptr %i.ayp, %scevgep2246
  %bound12250 = icmp ult ptr %i.ayq, %scevgep2245
  %found.conflict2251 = and i1 %bound02249, %bound12250
  %bound02252 = icmp ult ptr %i.ayp, %scevgep2248
  %bound12253 = icmp ult ptr %scevgep2247, %scevgep2245
  %found.conflict2254 = and i1 %bound02252, %bound12253
  %conflict.rdx2255 = or i1 %found.conflict2251, %found.conflict2254
  br i1 %conflict.rdx2255, label %.lr.ph1961.preheader2360, label %vector.ph2258

vector.ph2258:                                    ; preds = %vector.memcheck2244
  %n.vec2259 = and i64 %i.ayu, 1073741820         ; 4 uses
  %i.azc = trunc nuw nsw i64 %n.vec2259 to i32
  %i.azd = shl i32 %i.azc, 3
  %i.aze = shl nuw nsw i64 %n.vec2259, 2          ; 2 uses
  %i.azf = getelementptr i8, ptr %i.ayp, i64 %i.aze
  %i.azg = getelementptr i8, ptr %i.ayq, i64 %i.aze
  br label %vector.body2260

vector.body2260:                                  ; preds = %vector.body2260, %vector.ph2258
  %index2261 = phi i64 [ 0, %vector.ph2258 ], [ %index.next2267, %vector.body2260 ] ; 2 uses
  %vector.recur2262 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph2258 ], [ %wide.load2265, %vector.body2260 ]
  %i.azh = shl i64 %index2261, 2                  ; 2 uses
  %next.gep2263 = getelementptr i8, ptr %i.ayp, i64 %i.azh ; 2 uses
  %next.gep2264 = getelementptr i8, ptr %i.ayq, i64 %i.azh ; 2 uses
  %wide.load2265 = load <4 x i32>, ptr %next.gep2264, align 4, !tbaa !3, !alias.scope !77 ; 7 uses
  %i.azi = shufflevector <4 x i32> %vector.recur2262, <4 x i32> %wide.load2265, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.azj = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load2265, <4 x i32> %i.azi, <4 x i32> splat (i32 4))
  %i.azk = lshr <4 x i32> %wide.load2265, splat (i32 4)
  %i.azl = or <4 x i32> %i.azk, %i.azj
  %i.azm = or <4 x i32> %i.azl, %wide.load2265    ; 2 uses
  store <4 x i32> %i.azm, ptr %next.gep2263, align 4, !tbaa !3, !alias.scope !80, !noalias !82
  %i.azn = getelementptr inbounds nuw i8, ptr %next.gep2264, i64 4
  %wide.load2266 = load <4 x i32>, ptr %i.azn, align 4, !tbaa !3, !alias.scope !84
  %i.azo = shl <4 x i32> %wide.load2266, splat (i32 28)
  %i.azp = or <4 x i32> %i.azm, %i.azo            ; 3 uses
  %i.azq = shl <4 x i32> %i.azp, splat (i32 1)
  %i.azr = and <4 x i32> %i.azq, splat (i32 -286331154)
  %i.azs = lshr <4 x i32> %i.azp, splat (i32 1)
  %i.azt = and <4 x i32> %i.azs, splat (i32 2004318071)
  %i.azu = or <4 x i32> %i.azt, %i.azr
  %i.azv = or <4 x i32> %i.azu, %i.azp
  %i.azw = xor <4 x i32> %wide.load2265, splat (i32 -1)
  %i.azx = and <4 x i32> %i.azv, %i.azw
  store <4 x i32> %i.azx, ptr %next.gep2263, align 4, !tbaa !3, !alias.scope !80, !noalias !82
  %index.next2267 = add nuw i64 %index2261, 4     ; 2 uses
  %i.azy = icmp eq i64 %index.next2267, %n.vec2259
  br i1 %i.azy, label %middle.block2268, label %vector.body2260, !llvm.loop !85

middle.block2268:                                 ; preds = %vector.body2260
  %vector.recur.extract2269 = extractelement <4 x i32> %wide.load2265, i64 3
  %cmp.n2270 = icmp eq i64 %n.vec2259, %i.ayu
  br i1 %cmp.n2270, label %.loopexit1837, label %.lr.ph1961.preheader2360

.lr.ph1961.preheader2360:                         ; preds = %vector.memcheck2244, %.lr.ph1961.preheader, %middle.block2268
  %.014101959.ph = phi i32 [ 0, %vector.memcheck2244 ], [ 0, %.lr.ph1961.preheader ], [ %i.azd, %middle.block2268 ]
  %.014111958.ph = phi i32 [ 0, %vector.memcheck2244 ], [ 0, %.lr.ph1961.preheader ], [ %vector.recur.extract2269, %middle.block2268 ]
  %.014121957.ph = phi ptr [ %i.ayp, %vector.memcheck2244 ], [ %i.ayp, %.lr.ph1961.preheader ], [ %i.azf, %middle.block2268 ]
  %.014131956.ph = phi ptr [ %i.ayq, %vector.memcheck2244 ], [ %i.ayq, %.lr.ph1961.preheader ], [ %i.azg, %middle.block2268 ]
  br label %.lr.ph1961

.lr.ph1961:                                       ; preds = %.lr.ph1961.preheader2360, %.lr.ph1961
  %.014101959 = phi i32 [ %i.baq, %.lr.ph1961 ], [ %.014101959.ph, %.lr.ph1961.preheader2360 ]
  %.014111958 = phi i32 [ %i.azz, %.lr.ph1961 ], [ %.014111958.ph, %.lr.ph1961.preheader2360 ]
  %.014121957 = phi ptr [ %i.bar, %.lr.ph1961 ], [ %.014121957.ph, %.lr.ph1961.preheader2360 ] ; 3 uses
  %.014131956 = phi ptr [ %i.bae, %.lr.ph1961 ], [ %.014131956.ph, %.lr.ph1961.preheader2360 ] ; 2 uses
  %i.azz = load i32, ptr %.014131956, align 4, !tbaa !3 ; 5 uses
  %i.baa = tail call i32 @llvm.fshl.i32(i32 %i.azz, i32 %.014111958, i32 4)
  %i.bab = lshr i32 %i.azz, 4
  %i.bac = or i32 %i.bab, %i.baa
  %i.bad = or i32 %i.bac, %i.azz                  ; 2 uses
  store i32 %i.bad, ptr %.014121957, align 4, !tbaa !3
  %i.bae = getelementptr inbounds nuw i8, ptr %.014131956, i64 4 ; 2 uses
  %i.baf = load i32, ptr %i.bae, align 4, !tbaa !3
  %i.bag = shl i32 %i.baf, 28
  %i.bah = or i32 %i.bad, %i.bag                  ; 3 uses
  %i.bai = shl i32 %i.bah, 1
  %i.baj = and i32 %i.bai, -286331154
  %i.bak = lshr i32 %i.bah, 1
  %i.bal = and i32 %i.bak, 2004318071
  %i.bam = or i32 %i.bal, %i.baj
  %i.ban = or i32 %i.bam, %i.bah
  %i.bao = xor i32 %i.azz, -1
  %i.bap = and i32 %i.ban, %i.bao
  store i32 %i.bap, ptr %.014121957, align 4, !tbaa !3
  %i.baq = add nuw nsw i32 %.014101959, 8         ; 2 uses
  %i.bar = getelementptr inbounds nuw i8, ptr %.014121957, i64 4
  %i.bas = icmp slt i32 %i.baq, %i.ek
  br i1 %i.bas, label %.lr.ph1961, label %.loopexit1837, !llvm.loop !86

.loopexit1837:                                    ; preds = %.lr.ph1961, %middle.block2268, %.loopexit1838, %bb.gi
  %i.bat = icmp sgt i32 %i.en, 6
  %i.bau = add nuw nsw i32 %i.en, 1
  %i.bav = and i32 %i.bau, 3
  %.neg1833 = add i32 %i.en, -3
  %i.baw = sub i32 %.neg1833, %i.bav
  %i.bax = select i1 %i.bat, i32 %i.baw, i32 0    ; 2 uses
  %i.bay = icmp slt i32 %i.bax, %i.en
  br i1 %i.bay, label %.lr.ph2003, label %.loopexit1836

.lr.ph2003:                                       ; preds = %.loopexit1837
  %i.baz = add i32 %i.fq, -2
  %i.bba = shl i32 3, %i.baz                      ; 4 uses
  %i.bbb = sext i32 %i.ek to i64                  ; 2 uses
  %i.bbc = shl nsw i32 %i.ek, 1
  %15 = sext i32 %i.bbc to i64
  %i.bbd = mul nsw i32 %i.ek, 3
  %16 = sext i32 %i.bbd to i64
  %i.bbe = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bbf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bbg = sext i32 %i.bax to i64
  %i.bbh = sext i32 %i.en to i64
  %i.bbi = xor i32 %i.ej, -1
  %i.bbj = add i32 %i.ei, %i.bbi
  %i.bbk = lshr i32 %i.bbj, 1
  %i.bbl = and i32 %i.bbk, 2147483644
  %i.bbm = zext nneg i32 %i.bbl to i64            ; 2 uses
  %i.bbn = add nuw nsw i64 %i.bbm, 4              ; 3 uses
  %i.bbo = xor i32 %i.ej, -1
  %i.bbp = add i32 %i.ei, %i.bbo
  %i.bbq = lshr i32 %i.bbp, 1
  %i.bbr = and i32 %i.bbq, 2147483644
  %narrow2354 = add nuw i32 %i.bbr, 4
  %i.bbs = zext i32 %narrow2354 to i64            ; 2 uses
  %i.bbt = xor i32 %i.ej, -1
  %i.bbu = add i32 %i.ei, %i.bbt                  ; 2 uses
  %i.bbv = lshr i32 %i.bbu, 3
  %narrow2355 = add nuw nsw i32 %i.bbv, 1
  %i.bbw = zext nneg i32 %narrow2355 to i64       ; 2 uses
  %min.iters.check2322 = icmp ult i32 %i.bbu, 56
  %n.vec2324 = and i64 %i.bbw, 1073741816         ; 4 uses
  %i.bbx = trunc nuw nsw i64 %n.vec2324 to i32
  %i.bby = shl i32 %i.bbx, 3
  %i.bbz = shl nuw nsw i64 %n.vec2324, 2          ; 2 uses
  %cmp.n2335 = icmp eq i64 %n.vec2324, %i.bbw
  %i.bca = xor i32 %i.ej, -1
  %i.bcb = add i32 %i.ei, %i.bca                  ; 2 uses
  %i.bcc = lshr i32 %i.bcb, 3
  %narrow2356 = add nuw nsw i32 %i.bcc, 1
  %i.bcd = zext nneg i32 %narrow2356 to i64       ; 2 uses
  %min.iters.check2293 = icmp ult i32 %i.bcb, 24
  %n.vec2295 = and i64 %i.bcd, 1073741820         ; 4 uses
  %i.bce = trunc nuw nsw i64 %n.vec2295 to i32
  %i.bcf = shl i32 %i.bce, 3
  %i.bcg = shl nuw nsw i64 %n.vec2295, 2          ; 3 uses
  %cmp.n2309 = icmp eq i64 %n.vec2295, %i.bcd
  br label %bb.gv

bb.gv:                                            ; preds = %.lr.ph2003, %._crit_edge2000
  %indvars.iv2056 = phi i64 [ %i.bbg, %.lr.ph2003 ], [ %indvars.iv.next2057, %._crit_edge2000 ] ; 3 uses
  %i.bch = trunc nsw i64 %indvars.iv2056 to i32   ; 3 uses
  %i.bci = sub nsw i32 %i.en, %i.bch              ; 2 uses
  %switch.tableidx = add i32 %i.bci, -1           ; 2 uses
  %i.bcj = icmp ult i32 %switch.tableidx, 3
  br i1 %i.bcj, label %switch.lookup, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.bck = icmp sgt i32 %i.bci, 4
  br i1 %i.bck, label %bb.gx, label %.thread1813

bb.gx:                                            ; preds = %bb.gw
  br i1 %i.gz, label %.lr.ph1968, label %._crit_edge2000

.lr.ph1968:                                       ; preds = %bb.gx
  %i.bcl = and i32 %i.bch, 4
  %.not1626 = icmp eq i32 %i.bcl, 0               ; 3 uses
  %i.bcm = select i1 %.not1626, ptr %i.eq, ptr %i.er ; 14 uses
  %i.bcn = select i1 %.not1626, ptr %i.eo, ptr %i.ep ; 12 uses
  br i1 %.not, label %.lr.ph1968.split.us.preheader, label %.lr.ph1968.split.preheader

.lr.ph1968.split.preheader:                       ; preds = %.lr.ph1968
  br i1 %min.iters.check2322, label %.lr.ph1968.split.preheader2358, label %vector.memcheck2315

vector.memcheck2315:                              ; preds = %.lr.ph1968.split.preheader
  %scevgep2316 = getelementptr i8, ptr %i.bcm, i64 %i.bbs
  %scevgep2317 = getelementptr i8, ptr %i.bcn, i64 %i.bbs
  %bound02318 = icmp ult ptr %i.bcm, %scevgep2317
  %bound12319 = icmp ult ptr %i.bcn, %scevgep2316
  %found.conflict2320 = and i1 %bound02318, %bound12319
  br i1 %found.conflict2320, label %.lr.ph1968.split.preheader2358, label %vector.ph2323

vector.ph2323:                                    ; preds = %vector.memcheck2315
  %i.bco = getelementptr i8, ptr %i.bcm, i64 %i.bbz
  %i.bcp = getelementptr i8, ptr %i.bcn, i64 %i.bbz
  br label %vector.body2325

vector.body2325:                                  ; preds = %vector.body2325, %vector.ph2323
  %index2326 = phi i64 [ 0, %vector.ph2323 ], [ %index.next2333, %vector.body2325 ] ; 2 uses
  %i.bcq = shl i64 %index2326, 2                  ; 2 uses
  %next.gep2327 = getelementptr i8, ptr %i.bcm, i64 %i.bcq ; 3 uses
  %next.gep2328 = getelementptr i8, ptr %i.bcn, i64 %i.bcq ; 2 uses
  %i.bcr = getelementptr i8, ptr %next.gep2328, i64 16
  %wide.load2329 = load <4 x i32>, ptr %next.gep2328, align 4, !tbaa !3, !alias.scope !87
  %wide.load2330 = load <4 x i32>, ptr %i.bcr, align 4, !tbaa !3, !alias.scope !87
  %i.bcs = xor <4 x i32> %wide.load2329, splat (i32 -1)
  %i.bct = xor <4 x i32> %wide.load2330, splat (i32 -1)
  %i.bcu = getelementptr i8, ptr %next.gep2327, i64 16 ; 2 uses
  %wide.load2331 = load <4 x i32>, ptr %next.gep2327, align 4, !tbaa !3, !alias.scope !90, !noalias !87
  %wide.load2332 = load <4 x i32>, ptr %i.bcu, align 4, !tbaa !3, !alias.scope !90, !noalias !87
  %i.bcv = and <4 x i32> %wide.load2331, %i.bcs
  %i.bcw = and <4 x i32> %wide.load2332, %i.bct
  store <4 x i32> %i.bcv, ptr %next.gep2327, align 4, !tbaa !3, !alias.scope !90, !noalias !87
  store <4 x i32> %i.bcw, ptr %i.bcu, align 4, !tbaa !3, !alias.scope !90, !noalias !87
  %index.next2333 = add nuw i64 %index2326, 8     ; 2 uses
  %i.bcx = icmp eq i64 %index.next2333, %n.vec2324
  br i1 %i.bcx, label %middle.block2334, label %vector.body2325, !llvm.loop !92

middle.block2334:                                 ; preds = %vector.body2325
  br i1 %cmp.n2335, label %.lr.ph1999, label %.lr.ph1968.split.preheader2358

.lr.ph1968.split.preheader2358:                   ; preds = %vector.memcheck2315, %.lr.ph1968.split.preheader, %middle.block2334
  %.013991966.ph = phi i32 [ 0, %vector.memcheck2315 ], [ 0, %.lr.ph1968.split.preheader ], [ %i.bby, %middle.block2334 ]
  %.014061963.ph = phi ptr [ %i.bcm, %vector.memcheck2315 ], [ %i.bcm, %.lr.ph1968.split.preheader ], [ %i.bco, %middle.block2334 ]
  %.014081962.ph = phi ptr [ %i.bcn, %vector.memcheck2315 ], [ %i.bcn, %.lr.ph1968.split.preheader ], [ %i.bcp, %middle.block2334 ]
  br label %.lr.ph1968.split

.lr.ph1968.split.us.preheader:                    ; preds = %.lr.ph1968
  %i.bcy = select i1 %.not1626, ptr %i.ep, ptr %i.eo ; 8 uses
  br i1 %min.iters.check2293, label %.lr.ph1968.split.us.preheader2357, label %vector.memcheck2275

vector.memcheck2275:                              ; preds = %.lr.ph1968.split.us.preheader
  %scevgep2276 = getelementptr i8, ptr %i.bcm, i64 %i.bbn ; 3 uses
  %scevgep2277 = getelementptr i8, ptr %i.bcy, i64 %i.bbn
  %scevgep2278 = getelementptr nuw i8, ptr %i.bcy, i64 4
  %i.bcz = getelementptr i8, ptr %i.bcy, i64 %i.bbm
  %scevgep2279 = getelementptr i8, ptr %i.bcz, i64 8
  %scevgep2280 = getelementptr i8, ptr %i.bcn, i64 %i.bbn
  %bound02281 = icmp ult ptr %i.bcm, %scevgep2277
  %bound12282 = icmp ult ptr %i.bcy, %scevgep2276
  %found.conflict2283 = and i1 %bound02281, %bound12282
  %bound02284 = icmp ult ptr %i.bcm, %scevgep2279
  %bound12285 = icmp ult ptr %scevgep2278, %scevgep2276
  %found.conflict2286 = and i1 %bound02284, %bound12285
  %conflict.rdx2287 = or i1 %found.conflict2283, %found.conflict2286
  %bound02288 = icmp ult ptr %i.bcm, %scevgep2280
  %bound12289 = icmp ult ptr %i.bcn, %scevgep2276
  %found.conflict2290 = and i1 %bound02288, %bound12289
  %conflict.rdx2291 = or i1 %conflict.rdx2287, %found.conflict2290
  br i1 %conflict.rdx2291, label %.lr.ph1968.split.us.preheader2357, label %vector.ph2294

vector.ph2294:                                    ; preds = %vector.memcheck2275
  %i.bda = getelementptr i8, ptr %i.bcy, i64 %i.bcg
  %i.bdb = getelementptr i8, ptr %i.bcm, i64 %i.bcg
  %i.bdc = getelementptr i8, ptr %i.bcn, i64 %i.bcg
  br label %vector.body2296

vector.body2296:                                  ; preds = %vector.body2296, %vector.ph2294
  %index2297 = phi i64 [ 0, %vector.ph2294 ], [ %index.next2306, %vector.body2296 ] ; 2 uses
  %vector.recur2298 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph2294 ], [ %wide.load2302, %vector.body2296 ]
  %i.bdd = shl i64 %index2297, 2                  ; 3 uses
  %next.gep2299 = getelementptr i8, ptr %i.bcy, i64 %i.bdd ; 2 uses
  %next.gep2300 = getelementptr i8, ptr %i.bcm, i64 %i.bdd ; 2 uses
  %next.gep2301 = getelementptr i8, ptr %i.bcn, i64 %i.bdd
  %wide.load2302 = load <4 x i32>, ptr %next.gep2299, align 4, !tbaa !3, !alias.scope !93 ; 6 uses
  %i.bde = shufflevector <4 x i32> %vector.recur2298, <4 x i32> %wide.load2302, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bdf = getelementptr inbounds nuw i8, ptr %next.gep2299, i64 4
  %wide.load2303 = load <4 x i32>, ptr %i.bdf, align 4, !tbaa !3, !alias.scope !96
  %i.bdg = shl <4 x i32> %wide.load2303, splat (i32 28)
  %i.bdh = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load2302, <4 x i32> %i.bde, <4 x i32> splat (i32 4))
  %i.bdi = lshr <4 x i32> %wide.load2302, splat (i32 4)
  %i.bdj = or <4 x i32> %i.bdi, %i.bdh
  %i.bdk = or <4 x i32> %i.bdj, %i.bdg
  %i.bdl = or <4 x i32> %i.bdk, %wide.load2302
  %i.bdm = shl <4 x i32> %i.bdl, splat (i32 3)
  %i.bdn = and <4 x i32> %i.bdm, splat (i32 -2004318072)
  %wide.load2304 = load <4 x i32>, ptr %next.gep2300, align 4, !tbaa !3, !alias.scope !98, !noalias !100
  %i.bdo = or <4 x i32> %i.bdn, %wide.load2304
  %wide.load2305 = load <4 x i32>, ptr %next.gep2301, align 4, !tbaa !3, !alias.scope !102
  %i.bdp = xor <4 x i32> %wide.load2305, splat (i32 -1)
  %i.bdq = and <4 x i32> %i.bdo, %i.bdp
  store <4 x i32> %i.bdq, ptr %next.gep2300, align 4, !tbaa !3, !alias.scope !98, !noalias !100
  %index.next2306 = add nuw i64 %index2297, 4     ; 2 uses
  %i.bdr = icmp eq i64 %index.next2306, %n.vec2295
  br i1 %i.bdr, label %middle.block2307, label %vector.body2296, !llvm.loop !103

middle.block2307:                                 ; preds = %vector.body2296
  %vector.recur.extract2308 = extractelement <4 x i32> %wide.load2302, i64 3
  br i1 %cmp.n2309, label %.lr.ph1999, label %.lr.ph1968.split.us.preheader2357

.lr.ph1968.split.us.preheader2357:                ; preds = %vector.memcheck2275, %.lr.ph1968.split.us.preheader, %middle.block2307
  %.013991966.us.ph = phi i32 [ 0, %vector.memcheck2275 ], [ 0, %.lr.ph1968.split.us.preheader ], [ %i.bcf, %middle.block2307 ]
  %.014001965.us.ph = phi i32 [ 0, %vector.memcheck2275 ], [ 0, %.lr.ph1968.split.us.preheader ], [ %vector.recur.extract2308, %middle.block2307 ]
  %.014041964.us.ph = phi ptr [ %i.bcy, %vector.memcheck2275 ], [ %i.bcy, %.lr.ph1968.split.us.preheader ], [ %i.bda, %middle.block2307 ]
  %.014061963.us.ph = phi ptr [ %i.bcm, %vector.memcheck2275 ], [ %i.bcm, %.lr.ph1968.split.us.preheader ], [ %i.bdb, %middle.block2307 ]
  %.014081962.us.ph = phi ptr [ %i.bcn, %vector.memcheck2275 ], [ %i.bcn, %.lr.ph1968.split.us.preheader ], [ %i.bdc, %middle.block2307 ]
  br label %.lr.ph1968.split.us

.lr.ph1968.split.us:                              ; preds = %.lr.ph1968.split.us.preheader2357, %.lr.ph1968.split.us
  %.013991966.us = phi i32 [ %i.bei, %.lr.ph1968.split.us ], [ %.013991966.us.ph, %.lr.ph1968.split.us.preheader2357 ]
  %.014001965.us = phi i32 [ %i.bds, %.lr.ph1968.split.us ], [ %.014001965.us.ph, %.lr.ph1968.split.us.preheader2357 ]
  %.014041964.us = phi ptr [ %i.bdt, %.lr.ph1968.split.us ], [ %.014041964.us.ph, %.lr.ph1968.split.us.preheader2357 ] ; 2 uses
  %.014061963.us = phi ptr [ %i.bej, %.lr.ph1968.split.us ], [ %.014061963.us.ph, %.lr.ph1968.split.us.preheader2357 ] ; 3 uses
  %.014081962.us = phi ptr [ %i.bek, %.lr.ph1968.split.us ], [ %.014081962.us.ph, %.lr.ph1968.split.us.preheader2357 ] ; 2 uses
  %i.bds = load i32, ptr %.014041964.us, align 4, !tbaa !3 ; 4 uses
  %i.bdt = getelementptr inbounds nuw i8, ptr %.014041964.us, i64 4 ; 2 uses
  %i.bdu = load i32, ptr %i.bdt, align 4, !tbaa !3
  %i.bdv = shl i32 %i.bdu, 28
  %i.bdw = tail call i32 @llvm.fshl.i32(i32 %i.bds, i32 %.014001965.us, i32 4)
  %i.bdx = lshr i32 %i.bds, 4
  %i.bdy = or i32 %i.bdx, %i.bdw
  %i.bdz = or i32 %i.bdy, %i.bdv
  %i.bea = or i32 %i.bdz, %i.bds
  %i.beb = shl i32 %i.bea, 3
  %i.bec = and i32 %i.beb, -2004318072
  %i.bed = load i32, ptr %.014061963.us, align 4, !tbaa !3
  %i.bee = or i32 %i.bec, %i.bed
  %i.bef = load i32, ptr %.014081962.us, align 4, !tbaa !3
  %i.beg = xor i32 %i.bef, -1
  %i.beh = and i32 %i.bee, %i.beg
  store i32 %i.beh, ptr %.014061963.us, align 4, !tbaa !3
  %i.bei = add nuw nsw i32 %.013991966.us, 8      ; 2 uses
  %i.bej = getelementptr inbounds nuw i8, ptr %.014061963.us, i64 4
  %i.bek = getelementptr inbounds nuw i8, ptr %.014081962.us, i64 4
  %i.bel = icmp slt i32 %i.bei, %i.ek
  br i1 %i.bel, label %.lr.ph1968.split.us, label %.lr.ph1999, !llvm.loop !104

.lr.ph1968.split:                                 ; preds = %.lr.ph1968.split.preheader2358, %.lr.ph1968.split
  %.013991966 = phi i32 [ %i.beq, %.lr.ph1968.split ], [ %.013991966.ph, %.lr.ph1968.split.preheader2358 ]
  %.014061963 = phi ptr [ %i.ber, %.lr.ph1968.split ], [ %.014061963.ph, %.lr.ph1968.split.preheader2358 ] ; 3 uses
  %.014081962 = phi ptr [ %i.bes, %.lr.ph1968.split ], [ %.014081962.ph, %.lr.ph1968.split.preheader2358 ] ; 2 uses
  %i.bem = load i32, ptr %.014081962, align 4, !tbaa !3
  %i.ben = xor i32 %i.bem, -1
  %i.beo = load i32, ptr %.014061963, align 4, !tbaa !3
  %i.bep = and i32 %i.beo, %i.ben
  store i32 %i.bep, ptr %.014061963, align 4, !tbaa !3
  %i.beq = add nuw nsw i32 %.013991966, 8         ; 2 uses
  %i.ber = getelementptr inbounds nuw i8, ptr %.014061963, i64 4
  %i.bes = getelementptr inbounds nuw i8, ptr %.014081962, i64 4
  %i.bet = icmp slt i32 %i.beq, %i.ek
  br i1 %i.bet, label %.lr.ph1968.split, label %.lr.ph1999, !llvm.loop !105

switch.lookup:                                    ; preds = %bb.gv
  %i.beu = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.opj_t1_ht_decode_cblk, i64 %i.beu
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %.thread1813

.thread1813:                                      ; preds = %switch.lookup, %bb.gw
  %.014011815 = phi i32 [ -1, %bb.gw ], [ %switch.load, %switch.lookup ]
  br i1 %i.gz, label %.lr.ph1999, label %._crit_edge2000

.lr.ph1999:                                       ; preds = %.lr.ph1968.split, %.lr.ph1968.split.us, %middle.block2334, %middle.block2307, %.thread1813
  %.0140118152169 = phi i32 [ %.014011815, %.thread1813 ], [ -1, %middle.block2307 ], [ -1, %middle.block2334 ], [ -1, %.lr.ph1968.split.us ], [ -1, %.lr.ph1968.split ] ; 2 uses
  %i.bev = and i32 %i.bch, 4
  %.not1627 = icmp eq i32 %i.bev, 0               ; 4 uses
  %i.bew = select i1 %.not1627, ptr %i.er, ptr %i.eq
  %i.bex = select i1 %.not1627, ptr %i.ep, ptr %i.eo
  %i.bey = select i1 %.not1627, ptr %i.eq, ptr %i.er
  %i.bez = select i1 %.not1627, ptr %i.eo, ptr %i.ep
  %i.bfa = mul nsw i64 %indvars.iv2056, %i.bbb
  %i.bfb = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.bfa
  br label %bb.gy

bb.gy:                                            ; preds = %.lr.ph1999, %bb.ib
  %indvars.iv2053 = phi i64 [ 0, %.lr.ph1999 ], [ %indvars.iv.next2054, %bb.ib ] ; 5 uses
  %.014031997 = phi ptr [ %i.bew, %.lr.ph1999 ], [ %i.bky, %bb.ib ] ; 4 uses
  %.114051996 = phi ptr [ %i.bex, %.lr.ph1999 ], [ %i.bku, %bb.ib ] ; 3 uses
  %.114071995 = phi ptr [ %i.bey, %.lr.ph1999 ], [ %i.blc, %bb.ib ] ; 3 uses
  %.114091994 = phi ptr [ %i.bez, %.lr.ph1999 ], [ %i.blb, %bb.ib ] ; 4 uses
  %i.bfc = load i32, ptr %.114071995, align 4, !tbaa !3
  %i.bfd = and i32 %i.bfc, %.0140118152169        ; 2 uses
  %.not1628 = icmp eq i32 %i.bfd, 0
  br i1 %.not1628, label %.loopexit1835, label %.preheader1834

.preheader1834:                                   ; preds = %bb.gy
  %i.bfe = getelementptr inbounds nuw i8, ptr %.114091994, i64 4
  %i.bff = getelementptr inbounds nuw i8, ptr %.114071995, i64 4 ; 2 uses
  %invariant.gep2195 = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %indvars.iv2053
  %i.bfg = trunc i64 %indvars.iv2053 to i32
  %i.bfh = sub i32 %i.ek, %i.bfg
  br label %bb.gz

bb.gz:                                            ; preds = %.loopexit, %.preheader1834
  %i.bfi = phi i1 [ false, %.preheader1834 ], [ true, %.loopexit ]
  %indvars.iv2050 = phi i64 [ 0, %.preheader1834 ], [ 4, %.loopexit ] ; 6 uses
  %.013761991 = phi i32 [ 0, %.preheader1834 ], [ %.11377.lcssa2179, %.loopexit ] ; 2 uses
  %.013881990 = phi i32 [ %i.bfd, %.preheader1834 ], [ %.11389.lcssa2178, %.loopexit ] ; 2 uses
  %i.bfj = call fastcc i32 @frwd_fetch(ptr noundef %11)
  %gep2196 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep2195, i64 %indvars.iv2050
  %indvars.iv2050.tr = trunc nuw nsw i64 %indvars.iv2050 to i32
  %i.bfk = shl nuw nsw i32 %indvars.iv2050.tr, 2  ; 2 uses
  %i.bfl = shl nuw nsw i32 15, %i.bfk             ; 2 uses
  %i.bfm = load i32, ptr %.114091994, align 4, !tbaa !3
  %i.bfn = xor i32 %i.bfm, -1
  %i.bfo = and i32 %.0140118152169, %i.bfn        ; 4 uses
  %indvars.iv.next2051 = add nuw nsw i64 %indvars.iv2050, 4 ; 2 uses
  %i.bfp = add nuw nsw i64 %indvars.iv.next2051, %indvars.iv2053
  %i.bfq = trunc nuw i64 %i.bfp to i32
  %i.bfr = icmp sgt i32 %i.ek, %i.bfq
  %i.bfs = trunc nuw nsw i64 %indvars.iv.next2051 to i32
  %i.bft = select i1 %i.bfr, i32 %i.bfs, i32 %i.bfh ; 3 uses
  %i.bfu = sext i32 %i.bft to i64
  %i.bfv = icmp slt i64 %indvars.iv2050, %i.bfu
  br i1 %i.bfv, label %.lr.ph1977.preheader, label %.loopexit

.lr.ph1977.preheader:                             ; preds = %bb.gz
  %i.bfw = trunc nuw nsw i64 %indvars.iv2050 to i32
  br label %.lr.ph1977

.lr.ph1977:                                       ; preds = %.lr.ph1977.preheader, %bb.hq
  %.013521975 = phi i32 [ %.51357, %bb.hq ], [ 0, %.lr.ph1977.preheader ] ; 3 uses
  %.013611974 = phi i32 [ %.51366, %bb.hq ], [ %i.bfj, %.lr.ph1977.preheader ] ; 4 uses
  %.013731972 = phi i32 [ %i.bhn, %bb.hq ], [ %i.bfw, %.lr.ph1977.preheader ] ; 5 uses
  %.013741971 = phi i32 [ %i.bho, %bb.hq ], [ %i.bfl, %.lr.ph1977.preheader ] ; 3 uses
  %.113771970 = phi i32 [ %.101386, %bb.hq ], [ %.013761991, %.lr.ph1977.preheader ] ; 4 uses
  %.113891969 = phi i32 [ %.101398, %bb.hq ], [ %.013881990, %.lr.ph1977.preheader ] ; 6 uses
  %i.bfx = and i32 %.013741971, %.113891969
  %i.bfy = icmp eq i32 %i.bfx, 0
  br i1 %i.bfy, label %bb.hq, label %bb.ha

bb.ha:                                            ; preds = %.lr.ph1977
  %i.bfz = and i32 %.013741971, 286331153         ; 5 uses
  %i.bga = and i32 %i.bfz, %.113891969
  %.not1635 = icmp eq i32 %i.bga, 0
  br i1 %.not1635, label %bb.he, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.bgb = and i32 %.013611974, 1
  %.not1636 = icmp eq i32 %i.bgb, 0
  br i1 %.not1636, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.bgc = or i32 %i.bfz, %.113771970
  %i.bgd = shl nsw i32 %.013731972, 2
  %i.bge = shl i32 50, %i.bgd
  %i.bgf = and i32 %i.bge, %i.bfo
  %i.bgg = or i32 %i.bgf, %.113891969
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %.21390 = phi i32 [ %i.bgg, %bb.hc ], [ %.113891969, %bb.hb ]
  %.21378 = phi i32 [ %i.bgc, %bb.hc ], [ %.113771970, %bb.hb ]
  %i.bgh = lshr i32 %.013611974, 1
  %i.bgi = add i32 %.013521975, 1
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.ha
  %.31391 = phi i32 [ %.21390, %bb.hd ], [ %.113891969, %bb.ha ] ; 4 uses
  %.31379 = phi i32 [ %.21378, %bb.hd ], [ %.113771970, %bb.ha ] ; 3 uses
  %.11362 = phi i32 [ %i.bgh, %bb.hd ], [ %.013611974, %bb.ha ] ; 3 uses
  %.11353 = phi i32 [ %i.bgi, %bb.hd ], [ %.013521975, %bb.ha ] ; 2 uses
  %i.bgj = shl nuw nsw i32 %i.bfz, 1              ; 2 uses
  %i.bgk = and i32 %.31391, %i.bgj
  %.not1637 = icmp eq i32 %i.bgk, 0
  br i1 %.not1637, label %bb.hi, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.bgl = and i32 %.11362, 1
  %.not1638 = icmp eq i32 %i.bgl, 0
  br i1 %.not1638, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.bgm = or i32 %.31379, %i.bgj
  %i.bgn = shl nsw i32 %.013731972, 2
  %i.bgo = shl i32 116, %i.bgn
  %i.bgp = and i32 %i.bgo, %i.bfo
  %i.bgq = or i32 %.31391, %i.bgp
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  %.41392 = phi i32 [ %i.bgq, %bb.hg ], [ %.31391, %bb.hf ]
  %.41380 = phi i32 [ %i.bgm, %bb.hg ], [ %.31379, %bb.hf ]
  %i.bgr = lshr i32 %.11362, 1
  %i.bgs = add i32 %.11353, 1
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.he
  %.51393 = phi i32 [ %.41392, %bb.hh ], [ %.31391, %bb.he ] ; 4 uses
  %.51381 = phi i32 [ %.41380, %bb.hh ], [ %.31379, %bb.he ] ; 3 uses
  %.21363 = phi i32 [ %i.bgr, %bb.hh ], [ %.11362, %bb.he ] ; 3 uses
  %.21354 = phi i32 [ %i.bgs, %bb.hh ], [ %.11353, %bb.he ] ; 2 uses
  %i.bgt = shl nuw nsw i32 %i.bfz, 2              ; 2 uses
  %i.bgu = and i32 %.51393, %i.bgt
  %.not1639 = icmp eq i32 %i.bgu, 0
  br i1 %.not1639, label %bb.hm, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.bgv = and i32 %.21363, 1
  %.not1640 = icmp eq i32 %i.bgv, 0
  br i1 %.not1640, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.bgw = or i32 %.51381, %i.bgt
  %i.bgx = shl nsw i32 %.013731972, 2
  %i.bgy = shl i32 232, %i.bgx
  %i.bgz = and i32 %i.bgy, %i.bfo
  %i.bha = or i32 %.51393, %i.bgz
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  %.61394 = phi i32 [ %i.bha, %bb.hk ], [ %.51393, %bb.hj ]
  %.61382 = phi i32 [ %i.bgw, %bb.hk ], [ %.51381, %bb.hj ]
  %i.bhb = lshr i32 %.21363, 1
  %i.bhc = add i32 %.21354, 1
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hi
  %.71395 = phi i32 [ %.61394, %bb.hl ], [ %.51393, %bb.hi ] ; 4 uses
  %.71383 = phi i32 [ %.61382, %bb.hl ], [ %.51381, %bb.hi ] ; 3 uses
  %.31364 = phi i32 [ %i.bhb, %bb.hl ], [ %.21363, %bb.hi ] ; 3 uses
  %.31355 = phi i32 [ %i.bhc, %bb.hl ], [ %.21354, %bb.hi ] ; 2 uses
  %i.bhd = shl nuw i32 %i.bfz, 3                  ; 2 uses
  %i.bhe = and i32 %.71395, %i.bhd
  %.not1641 = icmp eq i32 %i.bhe, 0
  br i1 %.not1641, label %bb.hq, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.bhf = and i32 %.31364, 1
  %.not1642 = icmp eq i32 %i.bhf, 0
  br i1 %.not1642, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.bhg = or i32 %.71383, %i.bhd
  %i.bhh = shl nsw i32 %.013731972, 2
  %i.bhi = shl i32 192, %i.bhh
  %i.bhj = and i32 %i.bhi, %i.bfo
  %i.bhk = or i32 %.71395, %i.bhj
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %.81396 = phi i32 [ %i.bhk, %bb.ho ], [ %.71395, %bb.hn ]
  %.81384 = phi i32 [ %i.bhg, %bb.ho ], [ %.71383, %bb.hn ]
  %i.bhl = lshr i32 %.31364, 1
  %i.bhm = add i32 %.31355, 1
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hm, %bb.hp, %.lr.ph1977
  %.101398 = phi i32 [ %.113891969, %.lr.ph1977 ], [ %.81396, %bb.hp ], [ %.71395, %bb.hm ] ; 3 uses
  %.101386 = phi i32 [ %.113771970, %.lr.ph1977 ], [ %.81384, %bb.hp ], [ %.71383, %bb.hm ] ; 9 uses
  %.51366 = phi i32 [ %.013611974, %.lr.ph1977 ], [ %i.bhl, %bb.hp ], [ %.31364, %bb.hm ] ; 2 uses
  %.51357 = phi i32 [ %.013521975, %.lr.ph1977 ], [ %i.bhm, %bb.hp ], [ %.31355, %bb.hm ] ; 3 uses
  %i.bhn = add nuw nsw i32 %.013731972, 1         ; 2 uses
  %i.bho = shl i32 %.013741971, 4
  %i.bhp = icmp slt i32 %i.bhn, %i.bft
  br i1 %i.bhp, label %.lr.ph1977, label %._crit_edge1978, !llvm.loop !106

._crit_edge1978:                                  ; preds = %bb.hq
  %i.bhq = shl nuw i32 65535, %i.bfk
  %i.bhr = and i32 %.101386, %i.bhq
  %.not1630.not = icmp eq i32 %i.bhr, 0
  br i1 %.not1630.not, label %.loopexit, label %.lr.ph1988.preheader

.lr.ph1988.preheader:                             ; preds = %._crit_edge1978
  %i.bhs = trunc nuw nsw i64 %indvars.iv2050 to i32
  br label %.lr.ph1988

.lr.ph1988:                                       ; preds = %.lr.ph1988.preheader, %bb.hz
  %.013461987 = phi ptr [ %i.bjf, %bb.hz ], [ %gep2196, %.lr.ph1988.preheader ] ; 6 uses
  %.013471986 = phi i32 [ %i.bje, %bb.hz ], [ %i.bhs, %.lr.ph1988.preheader ]
  %.013481985 = phi i32 [ %i.bjg, %bb.hz ], [ %i.bfl, %.lr.ph1988.preheader ] ; 3 uses
  %.613581984 = phi i32 [ %.11, %bb.hz ], [ %.51357, %.lr.ph1988.preheader ] ; 3 uses
  %.613671983 = phi i32 [ %.111372, %bb.hz ], [ %.51366, %.lr.ph1988.preheader ] ; 4 uses
  %i.bht = and i32 %.013481985, %.101386
  %i.bhu = icmp eq i32 %i.bht, 0
  br i1 %i.bhu, label %bb.hz, label %bb.hr

bb.hr:                                            ; preds = %.lr.ph1988
  %i.bhv = and i32 %.013481985, 286331153         ; 4 uses
  %i.bhw = and i32 %i.bhv, %.101386
  %.not1631 = icmp eq i32 %i.bhw, 0
  br i1 %.not1631, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.bhx = shl i32 %.613671983, 31
  %i.bhy = load i32, ptr %.013461987, align 4, !tbaa !3
  %i.bhz = or i32 %i.bhx, %i.bhy
  %i.bia = or i32 %i.bhz, %i.bba
  store i32 %i.bia, ptr %.013461987, align 4, !tbaa !3
  %i.bib = lshr i32 %.613671983, 1
  %i.bic = add i32 %.613581984, 1
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %.71368 = phi i32 [ %i.bib, %bb.hs ], [ %.613671983, %bb.hr ] ; 3 uses
  %.71359 = phi i32 [ %i.bic, %bb.hs ], [ %.613581984, %bb.hr ] ; 2 uses
  %i.bid = shl nuw nsw i32 %i.bhv, 1
  %i.bie = and i32 %i.bid, %.101386
  %.not1632 = icmp eq i32 %i.bie, 0
  br i1 %.not1632, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.bif = shl i32 %.71368, 31
  %i.big = getelementptr inbounds nuw [4 x i8], ptr %.013461987, i64 %i.bbb ; 2 uses
  %i.bih = load i32, ptr %i.big, align 4, !tbaa !3
  %i.bii = or i32 %i.bif, %i.bih
  %i.bij = or i32 %i.bii, %i.bba
  store i32 %i.bij, ptr %i.big, align 4, !tbaa !3
  %i.bik = lshr i32 %.71368, 1
  %i.bil = add i32 %.71359, 1
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %.81369 = phi i32 [ %i.bik, %bb.hu ], [ %.71368, %bb.ht ] ; 3 uses
  %.81360 = phi i32 [ %i.bil, %bb.hu ], [ %.71359, %bb.ht ] ; 2 uses
  %i.bim = shl nuw nsw i32 %i.bhv, 2
  %i.bin = and i32 %i.bim, %.101386
  %.not1633 = icmp eq i32 %i.bin, 0
  br i1 %.not1633, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.bio = shl i32 %.81369, 31
  %i.bip = getelementptr inbounds nuw [4 x i8], ptr %.013461987, i64 %15 ; 2 uses
  %i.biq = load i32, ptr %i.bip, align 4, !tbaa !3
  %i.bir = or i32 %i.bio, %i.biq
  %i.bis = or i32 %i.bir, %i.bba
  store i32 %i.bis, ptr %i.bip, align 4, !tbaa !3
  %i.bit = lshr i32 %.81369, 1
  %i.biu = add i32 %.81360, 1
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv
  %.91370 = phi i32 [ %i.bit, %bb.hw ], [ %.81369, %bb.hv ] ; 3 uses
  %.9 = phi i32 [ %i.biu, %bb.hw ], [ %.81360, %bb.hv ] ; 2 uses
  %i.biv = shl nuw i32 %i.bhv, 3
  %i.biw = and i32 %i.biv, %.101386
  %.not1634 = icmp eq i32 %i.biw, 0
  br i1 %.not1634, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.bix = shl i32 %.91370, 31
  %i.biy = getelementptr inbounds nuw [4 x i8], ptr %.013461987, i64 %16 ; 2 uses
  %i.biz = load i32, ptr %i.biy, align 4, !tbaa !3
  %i.bja = or i32 %i.bix, %i.biz
  %i.bjb = or i32 %i.bja, %i.bba
  store i32 %i.bjb, ptr %i.biy, align 4, !tbaa !3
  %i.bjc = lshr i32 %.91370, 1
  %i.bjd = add i32 %.9, 1
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hx, %bb.hy, %.lr.ph1988
  %.111372 = phi i32 [ %.613671983, %.lr.ph1988 ], [ %i.bjc, %bb.hy ], [ %.91370, %bb.hx ]
  %.11 = phi i32 [ %.613581984, %.lr.ph1988 ], [ %i.bjd, %bb.hy ], [ %.9, %bb.hx ] ; 2 uses
  %i.bje = add nuw nsw i32 %.013471986, 1         ; 2 uses
  %i.bjf = getelementptr inbounds nuw i8, ptr %.013461987, i64 4
  %i.bjg = shl i32 %.013481985, 4
  %i.bjh = icmp slt i32 %i.bje, %i.bft
  br i1 %i.bjh, label %.lr.ph1988, label %.loopexit, !llvm.loop !107

.loopexit:                                        ; preds = %bb.hz, %bb.gz, %._crit_edge1978
  %.11377.lcssa2179 = phi i32 [ %.101386, %._crit_edge1978 ], [ %.013761991, %bb.gz ], [ %.101386, %bb.hz ] ; 4 uses
  %.11389.lcssa2178 = phi i32 [ %.101398, %._crit_edge1978 ], [ %.013881990, %bb.gz ], [ %.101398, %bb.hz ]
  %.12 = phi i32 [ %.51357, %._crit_edge1978 ], [ 0, %bb.gz ], [ %.11, %bb.hz ] ; 2 uses
  %i.bji = load i64, ptr %i.bbe, align 8, !tbaa !53
  %i.bjj = zext nneg i32 %.12 to i64
  %i.bjk = lshr i64 %i.bji, %i.bjj
  store i64 %i.bjk, ptr %i.bbe, align 8, !tbaa !53
  %i.bjl = load i32, ptr %i.bbf, align 8, !tbaa !55
  %i.bjm = sub i32 %i.bjl, %.12
  store i32 %i.bjm, ptr %i.bbf, align 8, !tbaa !55
  br i1 %i.bfi, label %.thread2180, label %bb.gz

.thread2180:                                      ; preds = %.loopexit
  %i.bjn = lshr i32 %.11377.lcssa2179, 28         ; 2 uses
  %i.bjo = lshr i32 %.11377.lcssa2179, 29
  %i.bjp = shl nuw nsw i32 %i.bjn, 1
  %i.bjq = and i32 %i.bjp, 14
  %i.bjr = or i32 %i.bjo, %i.bjq
  %i.bjs = or i32 %i.bjr, %i.bjn
  %i.bjt = load i32, ptr %i.bfe, align 4, !tbaa !3
  %i.bju = xor i32 %i.bjt, -1
  %i.bjv = and i32 %i.bjs, %i.bju
  %i.bjw = load i32, ptr %i.bff, align 4, !tbaa !3
  %i.bjx = or i32 %i.bjw, %i.bjv
  store i32 %i.bjx, ptr %i.bff, align 4, !tbaa !3
  br label %.loopexit1835

.loopexit1835:                                    ; preds = %.thread2180, %bb.gy
  %.111387 = phi i32 [ 0, %bb.gy ], [ %.11377.lcssa2179, %.thread2180 ]
  %i.bjy = load i32, ptr %.114091994, align 4, !tbaa !3
  %i.bjz = or i32 %i.bjy, %.111387                ; 2 uses
  %i.bka = lshr i32 %i.bjz, 3
  %i.bkb = and i32 %i.bka, 286331153              ; 4 uses
  %i.bkc = shl i32 %i.bkb, 4
  %i.bkd = lshr i32 %i.bkb, 4
  %i.bke = or i32 %i.bkd, %i.bkc
  %i.bkf = or i32 %i.bke, %i.bkb
  %.not1629 = icmp eq i64 %indvars.iv2053, 0
  br i1 %.not1629, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %.loopexit1835
  %i.bkg = shl i32 %i.bkb, 28
  %i.bkh = getelementptr inbounds i8, ptr %.114051996, i64 -4
  %i.bki = load i32, ptr %i.bkh, align 4, !tbaa !3
  %i.bkj = xor i32 %i.bki, -1
  %i.bkk = and i32 %i.bkg, %i.bkj
  %i.bkl = getelementptr inbounds i8, ptr %.014031997, i64 -4 ; 2 uses
  %i.bkm = load i32, ptr %i.bkl, align 4, !tbaa !3
  %i.bkn = or i32 %i.bkm, %i.bkk
  store i32 %i.bkn, ptr %i.bkl, align 4, !tbaa !3
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %.loopexit1835
  %i.bko = load i32, ptr %.114051996, align 4, !tbaa !3
  %i.bkp = xor i32 %i.bko, -1
  %i.bkq = and i32 %i.bkf, %i.bkp
  %i.bkr = load i32, ptr %.014031997, align 4, !tbaa !3
  %i.bks = or i32 %i.bkr, %i.bkq
  store i32 %i.bks, ptr %.014031997, align 4, !tbaa !3
  %i.bkt = lshr i32 %i.bjz, 31
  %i.bku = getelementptr inbounds nuw i8, ptr %.114051996, i64 4 ; 2 uses
  %i.bkv = load i32, ptr %i.bku, align 4, !tbaa !3
  %i.bkw = xor i32 %i.bkv, -1
  %i.bkx = and i32 %i.bkt, %i.bkw
  %i.bky = getelementptr inbounds nuw i8, ptr %.014031997, i64 4 ; 3 uses
  %i.bkz = load i32, ptr %i.bky, align 4, !tbaa !3
  %i.bla = or i32 %i.bkz, %i.bkx
  store i32 %i.bla, ptr %i.bky, align 4, !tbaa !3
  %indvars.iv.next2054 = add nuw nsw i64 %indvars.iv2053, 8 ; 2 uses
  %i.blb = getelementptr inbounds nuw i8, ptr %.114091994, i64 4
  %i.blc = getelementptr inbounds nuw i8, ptr %.114071995, i64 4
  %i.bld = trunc nuw i64 %indvars.iv.next2054 to i32
  %i.ble = icmp sgt i32 %i.ek, %i.bld
  br i1 %i.ble, label %bb.gy, label %._crit_edge2000, !llvm.loop !108

end_hunk_2
