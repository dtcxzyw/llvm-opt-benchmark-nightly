inline.NumInlined: 55
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@opj_t1_ht_decode_cblk:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !24 ; 9 uses
  %wide.trip.count = zext i32 %i.an to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.an, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.mod.vf = and i64 %wide.trip.count, 7         ; 2 uses
  %i.aq = icmp eq i64 %n.mod.vf, 0
  %i.ar = select i1 %i.aq, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %wide.trip.count, %i.ar    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.by, %vector.body ]
  %vec.phi2226 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bz, %vector.body ]
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %index
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %index
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %index
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %index
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %index
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %index
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %index
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %index
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 104
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 120
  %i.bi = load i32, ptr %i.ba, align 8, !tbaa !25
  %i.bj = load i32, ptr %i.bb, align 8, !tbaa !25
  %i.bk = load i32, ptr %i.bc, align 8, !tbaa !25
  %i.bl = load i32, ptr %i.bd, align 8, !tbaa !25
  %i.bm = insertelement <4 x i32> poison, i32 %i.bi, i64 0
  %i.bn = insertelement <4 x i32> %i.bm, i32 %i.bj, i64 1
  %i.bo = insertelement <4 x i32> %i.bn, i32 %i.bk, i64 2
  %i.bp = insertelement <4 x i32> %i.bo, i32 %i.bl, i64 3
  %i.bq = load i32, ptr %i.be, align 8, !tbaa !25
  %i.br = load i32, ptr %i.bf, align 8, !tbaa !25
  %i.bs = load i32, ptr %i.bg, align 8, !tbaa !25
  %i.bt = load i32, ptr %i.bh, align 8, !tbaa !25
  %i.bu = insertelement <4 x i32> poison, i32 %i.bq, i64 0
  %i.bv = insertelement <4 x i32> %i.bu, i32 %i.br, i64 1
  %i.bw = insertelement <4 x i32> %i.bv, i32 %i.bs, i64 2
  %i.bx = insertelement <4 x i32> %i.bw, i32 %i.bt, i64 3
  %i.by = add <4 x i32> %i.bp, %vec.phi           ; 2 uses
  %i.bz = add <4 x i32> %i.bx, %vec.phi2226       ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bz, %i.by
  %i.cb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.014471857.ph = phi i32 [ 0, %.lr.ph ], [ %i.cb, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.014471857 = phi i32 [ %i.cf, %scalar.ph ], [ %.014471857.ph, %scalar.ph.preheader ]
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %indvars.iv
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !25
  %i.cf = add i32 %i.ce, %.014471857              ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !31

._crit_edge:                                      ; preds = %scalar.ph
  %.not2215 = icmp eq i32 %i.an, 1
  br i1 %.not2215, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !32
  %.not1617 = icmp eq i32 %i.ch, 0
  br i1 %.not1617, label %bb.p, label %bb.m

.thread2143:                                      ; preds = %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !32
  %.not16172145 = icmp eq i32 %i.cj, 0
  br i1 %.not16172145, label %.critedge1742, label %.thread2181

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !33
  %i.cm = icmp ugt i32 %i.cf, %i.cl
  br i1 %i.cm, label %bb.n, label %.thread2181

bb.n:                                             ; preds = %bb.m
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !34
  %i.cp = zext i32 %i.cf to i64
  %i.cq = tail call ptr @opj_realloc(ptr noundef %i.co, i64 noundef %i.cp) #10 ; 3 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %.critedge1742, label %.thread2142

.thread2142:                                      ; preds = %bb.n
  store ptr %i.cq, ptr %i.cn, align 8, !tbaa !34
  store i32 %i.cf, ptr %i.ck, align 8, !tbaa !33
  br label %.preheader1845

.thread2181:                                      ; preds = %.thread2143, %bb.m
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !34 ; 2 uses
  %i.cs = icmp eq ptr %.pre, null
  br i1 %i.cs, label %.critedge1742, label %.preheader1845

.preheader1845:                                   ; preds = %.thread2142, %.thread2181
  %i.ct = phi ptr [ %i.cq, %.thread2142 ], [ %.pre, %.thread2181 ] ; 3 uses
  %i.cu = load i32, ptr %i.am, align 4, !tbaa !23
  %.not2018 = icmp eq i32 %i.cu, 0
  br i1 %.not2018, label %.loopexit1846, label %.lr.ph1861

.lr.ph1861:                                       ; preds = %.preheader1845
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.pre2066 = load ptr, ptr %i.cv, align 8, !tbaa !24
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph1861, %bb.o
  %i.cw = phi ptr [ %.pre2066, %.lr.ph1861 ], [ %i.de, %bb.o ]
  %indvars.iv2030 = phi i64 [ 0, %.lr.ph1861 ], [ %indvars.iv.next2031, %bb.o ] ; 3 uses
  %.114481860 = phi i32 [ 0, %.lr.ph1861 ], [ %i.di, %bb.o ] ; 2 uses
  %i.cx = zext i32 %.114481860 to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cx
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %indvars.iv2030 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !35
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !25
  %i.dd = zext i32 %i.dc to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cy, ptr align 1 %i.da, i64 %i.dd, i1 false)
  %i.de = load ptr, ptr %i.cv, align 8, !tbaa !24 ; 2 uses
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %indvars.iv2030
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !25
  %i.di = add i32 %i.dh, %.114481860              ; 2 uses
  %indvars.iv.next2031 = add nuw nsw i64 %indvars.iv2030, 1 ; 2 uses
  %i.dj = load i32, ptr %i.am, align 4, !tbaa !23
  %i.dk = zext i32 %i.dj to i64
  %i.dl = icmp samesign ult i64 %indvars.iv.next2031, %i.dk
  br i1 %i.dl, label %bb.o, label %.loopexit1846, !llvm.loop !36

bb.p:                                             ; preds = %bb.l
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !35
  br label %.loopexit1846

.loopexit1846:                                    ; preds = %bb.o, %.preheader1845, %bb.p
  %.31450 = phi i32 [ %i.cf, %bb.p ], [ 0, %.preheader1845 ], [ %i.di, %bb.o ] ; 2 uses
  %.11345 = phi ptr [ %i.do, %bb.p ], [ %i.ct, %.preheader1845 ], [ %i.ct, %bb.o ] ; 6 uses
  %i.dp = load ptr, ptr %i.r, align 8, !tbaa !15  ; 7 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !37 ; 2 uses
  %.not1618 = icmp eq i32 %i.dr, 0
  br i1 %.not1618, label %.thread, label %bb.q

bb.q:                                             ; preds = %.loopexit1846
  %i.ds = load ptr, ptr %1, align 8, !tbaa !38    ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !39 ; 2 uses
  %.not1829 = icmp eq i32 %i.dr, 1
  br i1 %.not1829, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !39
  br label %.thread

.thread:                                          ; preds = %.loopexit1846, %bb.q, %bb.r
  %i.dx = phi i32 [ %i.du, %bb.r ], [ %i.du, %bb.q ], [ 0, %.loopexit1846 ]
  %i.dy = phi i32 [ %i.dw, %bb.r ], [ 0, %bb.q ], [ 0, %.loopexit1846 ]
  %i.dz = add i32 %i.dy, %i.dx                    ; 6 uses
  %.not1619 = icmp eq i32 %i.dz, 0
  br i1 %.not1619, label %.thread1787, label %bb.s

bb.s:                                             ; preds = %.thread
  %i.ea = load ptr, ptr %1, align 8, !tbaa !38    ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !41 ; 2 uses
  %.not1830 = icmp eq i32 %i.dz, 1
  br i1 %.not1830, label %.thread1787, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !41
  br label %.thread1787

.thread1787:                                      ; preds = %.thread, %bb.s, %bb.t
  %i.ee = phi i1 [ true, %bb.t ], [ false, %bb.s ], [ false, %.thread ]
  %i.ef = phi i32 [ %i.eb, %bb.t ], [ %i.eb, %bb.s ], [ 0, %.thread ] ; 10 uses
  %i.eg = phi i32 [ %i.ed, %bb.t ], [ 0, %bb.s ], [ 0, %.thread ] ; 4 uses
  %i.eh = load i32, ptr %i.e, align 8, !tbaa !42  ; 9 uses
  %i.ei = load i32, ptr %i.f, align 8, !tbaa !43  ; 9 uses
  %i.ej = sub i32 %i.eh, %i.ei                    ; 37 uses
  %i.ek = load i32, ptr %i.g, align 4, !tbaa !44
  %i.el = load i32, ptr %i.h, align 4, !tbaa !45
  %i.em = sub i32 %i.ek, %i.el                    ; 15 uses
  %i.en = load ptr, ptr %i.aa, align 8, !tbaa !17 ; 16 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 528 ; 11 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 1056 ; 8 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 1584 ; 8 uses
  %i.er = icmp eq i32 %i.eg, 0
  %or.cond = select i1 %i.ee, i1 %i.er, i1 false
  br i1 %or.cond, label %bb.u, label %bb.w

bb.u:                                             ; preds = %.thread1787
  %.not1620 = icmp eq ptr %6, null
  br i1 %.not1620, label %.thread1788.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @opj_mutex_lock(ptr noundef nonnull %6) #10
  %i.es = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 2, ptr noundef nonnull @.str.1) #10 ; 0 uses
  tail call void @opj_mutex_unlock(ptr noundef nonnull %6) #10
  br label %.thread1788

bb.w:                                             ; preds = %.thread1787
  %i.et = icmp ugt i32 %i.dz, 3
  br i1 %i.et, label %bb.x, label %.thread1788

bb.x:                                             ; preds = %bb.w
  %.not1739 = icmp eq ptr %6, null
  br i1 %.not1739, label %.critedge1746, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @opj_mutex_lock(ptr noundef nonnull %6) #10
  %i.eu = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %i.dz) #10 ; 0 uses
  tail call void @opj_mutex_unlock(ptr noundef nonnull %6) #10
  br label %.critedge1742

.critedge1746:                                    ; preds = %bb.x
  %i.ev = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %i.dz) #10 ; 0 uses
  br label %.critedge1742

.thread1788:                                      ; preds = %bb.v, %bb.w
  %.013491790 = phi i32 [ %i.dz, %bb.w ], [ 1, %bb.v ] ; 4 uses
  %i.ew = load i32, ptr %i.af, align 8, !tbaa !18 ; 5 uses
  %i.ex = icmp ugt i32 %i.ew, 30
  br i1 %i.ex, label %bb.z, label %bb.ab

.thread1788.thread:                               ; preds = %bb.u
  %i.ey = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 2, ptr noundef nonnull @.str.1) #10 ; 0 uses
  %i.ez = load i32, ptr %i.af, align 8, !tbaa !18 ; 4 uses
  %i.fa = icmp ugt i32 %i.ez, 30
  br i1 %i.fa, label %.critedge1748, label %.thread1820

bb.z:                                             ; preds = %.thread1788
  %.not1738 = icmp eq ptr %6, null
  br i1 %.not1738, label %.critedge1748, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @opj_mutex_lock(ptr noundef nonnull %6) #10
  %i.fb = load i32, ptr %i.af, align 8, !tbaa !18
  %i.fc = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %i.fb) #10 ; 0 uses
  tail call void @opj_mutex_unlock(ptr noundef nonnull %6) #10
  br label %.critedge1742

.critedge1748:                                    ; preds = %.thread1788.thread, %bb.z
  %i.fd = phi i32 [ %i.ew, %bb.z ], [ %i.ez, %.thread1788.thread ]
  %i.fe = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %i.fd) #10 ; 0 uses
  br label %.critedge1742

bb.ab:                                            ; preds = %.thread1788
  %i.ff = icmp ugt i32 %i.al, %i.ew
  br i1 %i.ff, label %bb.ac, label %bb.ae

.thread1820:                                      ; preds = %.thread1788.thread
  %i.fg = icmp ugt i32 %i.al, %i.ez
  br i1 %i.fg, label %.critedge1750, label %.thread1825

bb.ac:                                            ; preds = %bb.ab
  %.not1737 = icmp eq ptr %6, null
  br i1 %.not1737, label %.critedge1750, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @opj_mutex_lock(ptr noundef nonnull %6) #10
  %i.fh = load i32, ptr %i.af, align 8, !tbaa !18
  %i.fi = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %i.al, i32 noundef %i.fh) #10 ; 0 uses
  tail call void @opj_mutex_unlock(ptr noundef nonnull %6) #10
  br label %.critedge1742

.critedge1750:                                    ; preds = %.thread1820, %bb.ac
  %i.fj = phi i32 [ %i.ew, %bb.ac ], [ %i.ez, %.thread1820 ]
  %i.fk = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %i.al, i32 noundef %i.fj) #10 ; 0 uses
  br label %.critedge1742

bb.ae:                                            ; preds = %bb.ab
  %i.fl = icmp eq i32 %i.al, %i.ew
  %i.fm = icmp samesign ugt i32 %.013491790, 1
  %or.cond6 = and i1 %i.fm, %i.fl
  br i1 %or.cond6, label %bb.af, label %.thread1825

bb.af:                                            ; preds = %bb.ae
  %.b1614 = load i1, ptr @only_cleanup_pass_is_decoded, align 4
  br i1 %.b1614, label %.thread1825, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not1621 = icmp eq ptr %6, null
  br i1 %.not1621, label %.thread1794, label %bb.ah

.thread1794:                                      ; preds = %bb.ag
  store i1 true, ptr @only_cleanup_pass_is_decoded, align 4
  %i.fn = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef %.013491790) #10 ; 0 uses
  br label %.thread1825

bb.ah:                                            ; preds = %bb.ag
  tail call void @opj_mutex_lock(ptr noundef nonnull %6) #10
  %.b.pr = load i1, ptr @only_cleanup_pass_is_decoded, align 4
  br i1 %.b.pr, label %.thread1793, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i1 true, ptr @only_cleanup_pass_is_decoded, align 4
  %i.fo = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef %.013491790) #10 ; 0 uses
  br label %.thread1793

.thread1793:                                      ; preds = %bb.ah, %bb.ai
  tail call void @opj_mutex_unlock(ptr noundef nonnull %6) #10
  br label %.thread1825

.thread1825:                                      ; preds = %.thread1820, %.thread1794, %bb.af, %.thread1793, %bb.ae
  %.11350 = phi i32 [ %.013491790, %bb.ae ], [ 1, %.thread1794 ], [ 1, %.thread1793 ], [ 1, %bb.af ], [ 1, %.thread1820 ] ; 2 uses
  %i.fp = load i32, ptr %i.aj, align 4, !tbaa !22 ; 6 uses
  %i.fq = add nuw nsw i32 %i.al, 1                ; 4 uses
  %i.fr = icmp ult i32 %i.ef, 2
  %i.fs = icmp ugt i32 %i.ef, %.31450
  %or.cond1751 = select i1 %i.fr, i1 true, i1 %i.fs
  %i.ft = add i32 %i.eg, %i.ef
  %i.fu = icmp ugt i32 %i.ft, %.31450
  %or.cond1753 = select i1 %or.cond1751, i1 true, i1 %i.fu
  br i1 %or.cond1753, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %.thread1825
  %.not1736 = icmp eq ptr %6, null
  br i1 %.not1736, label %.critedge1755, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @opj_mutex_lock(ptr noundef nonnull %6) #10
  %i.fv = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.6) #10 ; 0 uses
  tail call void @opj_mutex_unlock(ptr noundef nonnull %6) #10
  br label %.critedge1742

.critedge1755:                                    ; preds = %bb.aj
  %i.fw = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.6) #10 ; 0 uses
  br label %.critedge1742

bb.al:                                            ; preds = %.thread1825
  %i.fx = sext i32 %i.ef to i64
  %i.fy = getelementptr i8, ptr %.11345, i64 %i.fx ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 -1
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !46  ; 2 uses
  %i.gb = zext i8 %i.ga to i32
  %i.gc = shl nuw nsw i32 %i.gb, 4
  %i.gd = getelementptr i8, ptr %i.fy, i64 -2
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !46
  %i.gf = and i8 %i.ge, 15
  %i.gg = zext nneg i8 %i.gf to i32
  %i.gh = or disjoint i32 %i.gc, %i.gg            ; 5 uses
  %i.gi = icmp samesign ult i32 %i.gh, 2
  br i1 %i.gi, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gj = icmp sgt i32 %i.gh, %i.ef
  %i.gk = icmp eq i8 %i.ga, -1
  %or.cond8 = or i1 %i.gk, %i.gj
  br i1 %or.cond8, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am, %bb.al
  %.not1735 = icmp eq ptr %6, null
  br i1 %.not1735, label %.critedge1757, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @opj_mutex_lock(ptr noundef nonnull %6) #10
  %i.gl = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.7) #10 ; 0 uses
  tail call void @opj_mutex_unlock(ptr noundef nonnull %6) #10
  br label %.critedge1742

.critedge1757:                                    ; preds = %bb.an
  %i.gm = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.7) #10 ; 0 uses
  br label %.critedge1742

bb.ap:                                            ; preds = %bb.am
  %i.gn = call fastcc i32 @mel_init(ptr noundef %8, ptr noundef nonnull %.11345, i32 noundef %i.ef, i32 noundef %i.gh)
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %.not1734 = icmp eq ptr %6, null
  br i1 %.not1734, label %.critedge1759, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @opj_mutex_lock(ptr noundef nonnull %6) #10
  %i.gp = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.8) #10 ; 0 uses
  tail call void @opj_mutex_unlock(ptr noundef nonnull %6) #10
  br label %.critedge1742
end_hunk_0
begin_hunk_1_@opj_t1_ht_decode_cblk:bb.a
  %i.axq = load i32, ptr %i.axp, align 4, !tbaa !3
  %i.axr = xor i32 %i.axq, %i.axo
  %i.axs = or i32 %i.axr, %i.awb
  store i32 %i.axs, ptr %i.axp, align 4, !tbaa !3
  %i.axt = lshr i32 %.21462, 1
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %.31463 = phi i32 [ %i.axt, %bb.gr ], [ %.21462, %bb.gq ] ; 3 uses
  %i.axu = shl nuw i32 %i.awr, 3
  %i.axv = and i32 %i.axu, %i.awo
  %.not1648 = icmp eq i32 %i.axv, 0
  br i1 %.not1648, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.axw = and i32 %.31463, 1
  %i.axx = xor i32 %i.axw, 1
  %i.axy = shl nuw i32 %i.axx, %i.awe
  %i.axz = getelementptr inbounds nuw [4 x i8], ptr %.014571950, i64 %i.awj ; 2 uses
  %i.aya = load i32, ptr %i.axz, align 4, !tbaa !3
  %i.ayb = xor i32 %i.aya, %i.axy
  %i.ayc = or i32 %i.ayb, %i.awb
  store i32 %i.ayc, ptr %i.axz, align 4, !tbaa !3
  %i.ayd = lshr i32 %.31463, 1
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gs, %bb.gt, %bb.gl
  %.51465 = phi i32 [ %.014601948, %bb.gl ], [ %i.ayd, %bb.gt ], [ %.31463, %bb.gs ]
  %i.aye = shl i32 %.014581949, 4
  %i.ayf = add nuw nsw i32 %.014561951, 1         ; 2 uses
  %i.ayg = getelementptr inbounds nuw i8, ptr %.014571950, i64 4
  %exitcond2046.not = icmp eq i32 %i.ayf, 8
  br i1 %exitcond2046.not, label %.split1560, label %bb.gl, !llvm.loop !75

.split1560:                                       ; preds = %bb.gu
  %i.ayh = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.awo)
  br label %.split1558

.split1558:                                       ; preds = %bb.gj, %.split1560
  %phi.call1561 = phi i32 [ %i.ayh, %.split1560 ], [ 0, %bb.gj ] ; 2 uses
  %i.ayi = load i64, ptr %i.awk, align 8, !tbaa !49
  %i.ayj = zext nneg i32 %phi.call1561 to i64
  %i.ayk = lshr i64 %i.ayi, %i.ayj
  store i64 %i.ayk, ptr %i.awk, align 8, !tbaa !49
  %i.ayl = load i32, ptr %i.awl, align 8, !tbaa !52
  %i.aym = sub i32 %i.ayl, %phi.call1561
  store i32 %i.aym, ptr %i.awl, align 8, !tbaa !52
  %indvars.iv.next2048 = add nuw nsw i64 %indvars.iv2047, 8 ; 2 uses
  %i.ayn = trunc nuw i64 %indvars.iv.next2048 to i32
  %i.ayo = icmp sgt i32 %i.ej, %i.ayn
  br i1 %i.ayo, label %bb.gj, label %.loopexit1838, !llvm.loop !76

.loopexit1838:                                    ; preds = %.split1558, %bb.gh
  %switch1772 = icmp ult i32 %.off, 2
  %brmerge.not = and i1 %switch1772, %i.gy
  br i1 %brmerge.not, label %.lr.ph1961.preheader, label %.loopexit1837

.lr.ph1961.preheader:                             ; preds = %.loopexit1838
  %i.ayp = and i32 %i.em, 4
  %.not1623 = icmp eq i32 %i.ayp, 0               ; 2 uses
  %i.ayq = select i1 %.not1623, ptr %i.ep, ptr %i.eq ; 7 uses
  %i.ayr = select i1 %.not1623, ptr %i.en, ptr %i.eo ; 8 uses
  %i.ays = xor i32 %i.ei, -1
  %i.ayt = add i32 %i.eh, %i.ays                  ; 2 uses
  %i.ayu = lshr i32 %i.ayt, 3
  %narrow2360 = add nuw nsw i32 %i.ayu, 1
  %i.ayv = zext nneg i32 %narrow2360 to i64       ; 2 uses
  %min.iters.check2260 = icmp ult i32 %i.ayt, 56
  br i1 %min.iters.check2260, label %.lr.ph1961.preheader2367, label %vector.memcheck2247

vector.memcheck2247:                              ; preds = %.lr.ph1961.preheader
  %i.ayw = xor i32 %i.ei, -1
  %i.ayx = add i32 %i.eh, %i.ayw
  %i.ayy = lshr i32 %i.ayx, 1
  %i.ayz = and i32 %i.ayy, 2147483644
  %i.aza = zext nneg i32 %i.ayz to i64            ; 2 uses
  %i.azb = add nuw nsw i64 %i.aza, 4              ; 2 uses
  %scevgep2248 = getelementptr i8, ptr %i.ayq, i64 %i.azb ; 2 uses
  %scevgep2249 = getelementptr i8, ptr %i.ayr, i64 %i.azb
  %scevgep2250 = getelementptr nuw i8, ptr %i.ayr, i64 4
  %i.azc = getelementptr i8, ptr %i.ayr, i64 %i.aza
  %scevgep2251 = getelementptr i8, ptr %i.azc, i64 8
  %bound02252 = icmp ult ptr %i.ayq, %scevgep2249
  %bound12253 = icmp ult ptr %i.ayr, %scevgep2248
  %found.conflict2254 = and i1 %bound02252, %bound12253
  %bound02255 = icmp ult ptr %i.ayq, %scevgep2251
  %bound12256 = icmp ult ptr %scevgep2250, %scevgep2248
  %found.conflict2257 = and i1 %bound02255, %bound12256
  %conflict.rdx2258 = or i1 %found.conflict2254, %found.conflict2257
  br i1 %conflict.rdx2258, label %.lr.ph1961.preheader2367, label %vector.ph2261

vector.ph2261:                                    ; preds = %vector.memcheck2247
  %n.vec2263 = and i64 %i.ayv, 1073741820         ; 4 uses
  %i.azd = trunc nuw nsw i64 %n.vec2263 to i32
  %i.aze = shl i32 %i.azd, 3
  %i.azf = shl nuw nsw i64 %n.vec2263, 2          ; 2 uses
  %i.azg = getelementptr i8, ptr %i.ayq, i64 %i.azf
  %i.azh = getelementptr i8, ptr %i.ayr, i64 %i.azf
  br label %vector.body2264

vector.body2264:                                  ; preds = %vector.body2264, %vector.ph2261
  %index2265 = phi i64 [ 0, %vector.ph2261 ], [ %index.next2271, %vector.body2264 ] ; 2 uses
  %vector.recur2266 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph2261 ], [ %wide.load2269, %vector.body2264 ]
  %i.azi = shl i64 %index2265, 2                  ; 2 uses
  %next.gep2267 = getelementptr i8, ptr %i.ayq, i64 %i.azi ; 2 uses
  %next.gep2268 = getelementptr i8, ptr %i.ayr, i64 %i.azi ; 2 uses
  %wide.load2269 = load <4 x i32>, ptr %next.gep2268, align 4, !tbaa !3, !alias.scope !77 ; 7 uses
  %i.azj = shufflevector <4 x i32> %vector.recur2266, <4 x i32> %wide.load2269, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.azk = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load2269, <4 x i32> %i.azj, <4 x i32> splat (i32 4))
  %i.azl = lshr <4 x i32> %wide.load2269, splat (i32 4)
  %i.azm = or <4 x i32> %i.azl, %i.azk
  %i.azn = or <4 x i32> %i.azm, %wide.load2269    ; 2 uses
  store <4 x i32> %i.azn, ptr %next.gep2267, align 4, !tbaa !3, !alias.scope !80, !noalias !82
  %i.azo = getelementptr inbounds nuw i8, ptr %next.gep2268, i64 4
  %wide.load2270 = load <4 x i32>, ptr %i.azo, align 4, !tbaa !3, !alias.scope !84
  %i.azp = shl <4 x i32> %wide.load2270, splat (i32 28)
  %i.azq = or <4 x i32> %i.azn, %i.azp            ; 3 uses
  %i.azr = shl <4 x i32> %i.azq, splat (i32 1)
  %i.azs = and <4 x i32> %i.azr, splat (i32 -286331154)
  %i.azt = lshr <4 x i32> %i.azq, splat (i32 1)
  %i.azu = and <4 x i32> %i.azt, splat (i32 2004318071)
  %i.azv = or <4 x i32> %i.azu, %i.azs
  %i.azw = or <4 x i32> %i.azv, %i.azq
  %i.azx = xor <4 x i32> %wide.load2269, splat (i32 -1)
  %i.azy = and <4 x i32> %i.azw, %i.azx
  store <4 x i32> %i.azy, ptr %next.gep2267, align 4, !tbaa !3, !alias.scope !80, !noalias !82
  %index.next2271 = add nuw i64 %index2265, 4     ; 2 uses
  %i.azz = icmp eq i64 %index.next2271, %n.vec2263
  br i1 %i.azz, label %middle.block2272, label %vector.body2264, !llvm.loop !85

middle.block2272:                                 ; preds = %vector.body2264
  %vector.recur.extract2273 = extractelement <4 x i32> %wide.load2269, i64 3
  %cmp.n2274 = icmp eq i64 %n.vec2263, %i.ayv
  br i1 %cmp.n2274, label %.loopexit1837, label %.lr.ph1961.preheader2367

.lr.ph1961.preheader2367:                         ; preds = %vector.memcheck2247, %.lr.ph1961.preheader, %middle.block2272
  %.014411959.ph = phi i32 [ 0, %vector.memcheck2247 ], [ 0, %.lr.ph1961.preheader ], [ %i.aze, %middle.block2272 ]
  %.014421958.ph = phi i32 [ 0, %vector.memcheck2247 ], [ 0, %.lr.ph1961.preheader ], [ %vector.recur.extract2273, %middle.block2272 ]
  %.014431957.ph = phi ptr [ %i.ayq, %vector.memcheck2247 ], [ %i.ayq, %.lr.ph1961.preheader ], [ %i.azg, %middle.block2272 ]
  %.014441956.ph = phi ptr [ %i.ayr, %vector.memcheck2247 ], [ %i.ayr, %.lr.ph1961.preheader ], [ %i.azh, %middle.block2272 ]
  br label %.lr.ph1961

.lr.ph1961:                                       ; preds = %.lr.ph1961.preheader2367, %.lr.ph1961
  %.014411959 = phi i32 [ %i.bar, %.lr.ph1961 ], [ %.014411959.ph, %.lr.ph1961.preheader2367 ]
  %.014421958 = phi i32 [ %i.baa, %.lr.ph1961 ], [ %.014421958.ph, %.lr.ph1961.preheader2367 ]
  %.014431957 = phi ptr [ %i.bas, %.lr.ph1961 ], [ %.014431957.ph, %.lr.ph1961.preheader2367 ] ; 3 uses
  %.014441956 = phi ptr [ %i.baf, %.lr.ph1961 ], [ %.014441956.ph, %.lr.ph1961.preheader2367 ] ; 2 uses
  %i.baa = load i32, ptr %.014441956, align 4, !tbaa !3 ; 5 uses
  %i.bab = tail call i32 @llvm.fshl.i32(i32 %i.baa, i32 %.014421958, i32 4)
  %i.bac = lshr i32 %i.baa, 4
  %i.bad = or i32 %i.bac, %i.bab
  %i.bae = or i32 %i.bad, %i.baa                  ; 2 uses
  store i32 %i.bae, ptr %.014431957, align 4, !tbaa !3
  %i.baf = getelementptr inbounds nuw i8, ptr %.014441956, i64 4 ; 2 uses
  %i.bag = load i32, ptr %i.baf, align 4, !tbaa !3
  %i.bah = shl i32 %i.bag, 28
  %i.bai = or i32 %i.bae, %i.bah                  ; 3 uses
  %i.baj = shl i32 %i.bai, 1
  %i.bak = and i32 %i.baj, -286331154
  %i.bal = lshr i32 %i.bai, 1
  %i.bam = and i32 %i.bal, 2004318071
  %i.ban = or i32 %i.bam, %i.bak
  %i.bao = or i32 %i.ban, %i.bai
  %i.bap = xor i32 %i.baa, -1
  %i.baq = and i32 %i.bao, %i.bap
  store i32 %i.baq, ptr %.014431957, align 4, !tbaa !3
  %i.bar = add nuw nsw i32 %.014411959, 8         ; 2 uses
  %i.bas = getelementptr inbounds nuw i8, ptr %.014431957, i64 4
  %i.bat = icmp slt i32 %i.bar, %i.ej
  br i1 %i.bat, label %.lr.ph1961, label %.loopexit1837, !llvm.loop !86

.loopexit1837:                                    ; preds = %.lr.ph1961, %middle.block2272, %.loopexit1838, %bb.gi
  %i.bau = icmp sgt i32 %i.em, 6
  %i.bav = add nuw nsw i32 %i.em, 1
  %i.baw = and i32 %i.bav, 3
  %.neg1833 = add i32 %i.em, -3
  %i.bax = sub i32 %.neg1833, %i.baw
  %i.bay = select i1 %i.bau, i32 %i.bax, i32 0    ; 2 uses
  %i.baz = icmp slt i32 %i.bay, %i.em
  br i1 %i.baz, label %.lr.ph2003, label %.loopexit1836

.lr.ph2003:                                       ; preds = %.loopexit1837
  %i.bba = add i32 %i.fp, -2
  %i.bbb = shl i32 3, %i.bba                      ; 4 uses
  %i.bbc = sext i32 %i.ej to i64                  ; 2 uses
  %i.bbd = shl nsw i32 %i.ej, 1
  %i.bbe = sext i32 %i.bbd to i64
  %i.bbf = mul nsw i32 %i.ej, 3
  %i.bbg = sext i32 %i.bbf to i64
  %i.bbh = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bbi = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bbj = sext i32 %i.bay to i64
  %i.bbk = sext i32 %i.em to i64
  %i.bbl = xor i32 %i.ei, -1
  %i.bbm = add i32 %i.eh, %i.bbl
  %i.bbn = lshr i32 %i.bbm, 1
  %i.bbo = and i32 %i.bbn, 2147483644
  %i.bbp = zext nneg i32 %i.bbo to i64            ; 2 uses
  %i.bbq = add nuw nsw i64 %i.bbp, 4              ; 3 uses
  %i.bbr = xor i32 %i.ei, -1
  %narrow2361.a = add i32 %i.eh, %i.bbr
  %i.bbs = lshr i32 %narrow2361.a, 1
  %i.bbt = and i32 %i.bbs, 2147483644
  %narrow2362.a = add nuw i32 %i.bbt, 4
  %i.bbu = zext i32 %narrow2362.a to i64          ; 2 uses
  %i.bbv = xor i32 %i.ei, -1
  %i.bbw = add i32 %i.eh, %i.bbv                  ; 2 uses
  %i.bbx = lshr i32 %i.bbw, 3
  %narrow2363.a = add nuw nsw i32 %i.bbx, 1
  %i.bby = zext nneg i32 %narrow2363.a to i64     ; 2 uses
  %min.iters.check2327 = icmp ult i32 %i.bbw, 56
  %n.vec2330 = and i64 %i.bby, 1073741816         ; 4 uses
  %i.bbz = trunc nuw nsw i64 %n.vec2330 to i32
  %i.bca = shl i32 %i.bbz, 3
  %i.bcb = shl nuw nsw i64 %n.vec2330, 2          ; 2 uses
  %cmp.n2341 = icmp eq i64 %n.vec2330, %i.bby
  %13 = xor i32 %i.ei, -1
  %14 = add i32 %i.eh, %13                        ; 2 uses
  %15 = lshr i32 %14, 3
  %narrow2363 = add nuw nsw i32 %15, 1
  %16 = zext nneg i32 %narrow2363 to i64          ; 2 uses
  %min.iters.check2297 = icmp ult i32 %14, 24
  %n.vec2300 = and i64 %16, 1073741820            ; 4 uses
  %i.bcc = trunc nuw nsw i64 %n.vec2300 to i32
  %i.bcd = shl i32 %i.bcc, 3
  %i.bce = shl nuw nsw i64 %n.vec2300, 2          ; 3 uses
  %cmp.n2314 = icmp eq i64 %n.vec2300, %16
  br label %bb.gv

bb.gv:                                            ; preds = %.lr.ph2003, %._crit_edge2000
  %indvars.iv2056 = phi i64 [ %i.bbj, %.lr.ph2003 ], [ %indvars.iv.next2057, %._crit_edge2000 ] ; 3 uses
  %i.bcf = trunc nsw i64 %indvars.iv2056 to i32   ; 3 uses
  %i.bcg = sub nsw i32 %i.em, %i.bcf              ; 2 uses
  %switch.tableidx = add i32 %i.bcg, -1           ; 2 uses
  %i.bch = icmp ult i32 %switch.tableidx, 3
  br i1 %i.bch, label %switch.lookup, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.bci = icmp sgt i32 %i.bcg, 4
  br i1 %i.bci, label %bb.gx, label %.thread1813

bb.gx:                                            ; preds = %bb.gw
  br i1 %i.gy, label %.lr.ph1968, label %._crit_edge2000

.lr.ph1968:                                       ; preds = %bb.gx
  %i.bcj = and i32 %i.bcf, 4
  %.not1626 = icmp eq i32 %i.bcj, 0               ; 3 uses
  %i.bck = select i1 %.not1626, ptr %i.ep, ptr %i.eq ; 14 uses
  %i.bcl = select i1 %.not1626, ptr %i.en, ptr %i.eo ; 12 uses
  br i1 %.not, label %.lr.ph1968.split.us.preheader, label %.lr.ph1968.split.preheader

.lr.ph1968.split.preheader:                       ; preds = %.lr.ph1968
  br i1 %min.iters.check2327, label %.lr.ph1968.split.preheader2365, label %vector.memcheck2320

vector.memcheck2320:                              ; preds = %.lr.ph1968.split.preheader
  %scevgep2321 = getelementptr i8, ptr %i.bck, i64 %i.bbu
  %scevgep2322 = getelementptr i8, ptr %i.bcl, i64 %i.bbu
  %bound02323 = icmp ult ptr %i.bck, %scevgep2322
  %bound12324 = icmp ult ptr %i.bcl, %scevgep2321
  %found.conflict2325 = and i1 %bound02323, %bound12324
  br i1 %found.conflict2325, label %.lr.ph1968.split.preheader2365, label %vector.ph2328

vector.ph2328:                                    ; preds = %vector.memcheck2320
  %i.bcm = getelementptr i8, ptr %i.bck, i64 %i.bcb
  %i.bcn = getelementptr i8, ptr %i.bcl, i64 %i.bcb
  br label %vector.body2331

vector.body2331:                                  ; preds = %vector.body2331, %vector.ph2328
  %index2332 = phi i64 [ 0, %vector.ph2328 ], [ %index.next2339, %vector.body2331 ] ; 2 uses
  %i.bco = shl i64 %index2332, 2                  ; 2 uses
  %next.gep2333 = getelementptr i8, ptr %i.bck, i64 %i.bco ; 3 uses
  %next.gep2334 = getelementptr i8, ptr %i.bcl, i64 %i.bco ; 2 uses
  %i.bcp = getelementptr i8, ptr %next.gep2334, i64 16
  %wide.load2335 = load <4 x i32>, ptr %next.gep2334, align 4, !tbaa !3, !alias.scope !87
  %wide.load2336 = load <4 x i32>, ptr %i.bcp, align 4, !tbaa !3, !alias.scope !87
  %i.bcq = xor <4 x i32> %wide.load2335, splat (i32 -1)
  %i.bcr = xor <4 x i32> %wide.load2336, splat (i32 -1)
  %i.bcs = getelementptr i8, ptr %next.gep2333, i64 16 ; 2 uses
  %wide.load2337 = load <4 x i32>, ptr %next.gep2333, align 4, !tbaa !3, !alias.scope !90, !noalias !87
  %wide.load2338 = load <4 x i32>, ptr %i.bcs, align 4, !tbaa !3, !alias.scope !90, !noalias !87
  %i.bct = and <4 x i32> %wide.load2337, %i.bcq
  %i.bcu = and <4 x i32> %wide.load2338, %i.bcr
  store <4 x i32> %i.bct, ptr %next.gep2333, align 4, !tbaa !3, !alias.scope !90, !noalias !87
  store <4 x i32> %i.bcu, ptr %i.bcs, align 4, !tbaa !3, !alias.scope !90, !noalias !87
  %index.next2339 = add nuw i64 %index2332, 8     ; 2 uses
  %i.bcv = icmp eq i64 %index.next2339, %n.vec2330
  br i1 %i.bcv, label %middle.block2340, label %vector.body2331, !llvm.loop !92

middle.block2340:                                 ; preds = %vector.body2331
  br i1 %cmp.n2341, label %.lr.ph1999, label %.lr.ph1968.split.preheader2365

.lr.ph1968.split.preheader2365:                   ; preds = %vector.memcheck2320, %.lr.ph1968.split.preheader, %middle.block2340
  %.014211966.ph = phi i32 [ 0, %vector.memcheck2320 ], [ 0, %.lr.ph1968.split.preheader ], [ %i.bca, %middle.block2340 ]
  %.014321963.ph = phi ptr [ %i.bck, %vector.memcheck2320 ], [ %i.bck, %.lr.ph1968.split.preheader ], [ %i.bcm, %middle.block2340 ]
  %.014341962.ph = phi ptr [ %i.bcl, %vector.memcheck2320 ], [ %i.bcl, %.lr.ph1968.split.preheader ], [ %i.bcn, %middle.block2340 ]
  br label %.lr.ph1968.split

.lr.ph1968.split.us.preheader:                    ; preds = %.lr.ph1968
  %i.bcw = select i1 %.not1626, ptr %i.eo, ptr %i.en ; 8 uses
  br i1 %min.iters.check2297, label %.lr.ph1968.split.us.preheader2364, label %vector.memcheck2279

vector.memcheck2279:                              ; preds = %.lr.ph1968.split.us.preheader
  %scevgep2280 = getelementptr i8, ptr %i.bck, i64 %i.bbq ; 3 uses
  %scevgep2281 = getelementptr i8, ptr %i.bcw, i64 %i.bbq
  %scevgep2282 = getelementptr nuw i8, ptr %i.bcw, i64 4
  %i.bcx = getelementptr i8, ptr %i.bcw, i64 %i.bbp
  %scevgep2283 = getelementptr i8, ptr %i.bcx, i64 8
  %scevgep2284 = getelementptr i8, ptr %i.bcl, i64 %i.bbq
  %bound02285 = icmp ult ptr %i.bck, %scevgep2281
  %bound12286 = icmp ult ptr %i.bcw, %scevgep2280
  %found.conflict2287 = and i1 %bound02285, %bound12286
  %bound02288 = icmp ult ptr %i.bck, %scevgep2283
  %bound12289 = icmp ult ptr %scevgep2282, %scevgep2280
  %found.conflict2290 = and i1 %bound02288, %bound12289
  %conflict.rdx2291 = or i1 %found.conflict2287, %found.conflict2290
  %bound02292 = icmp ult ptr %i.bck, %scevgep2284
  %bound12293 = icmp ult ptr %i.bcl, %scevgep2280
  %found.conflict2294 = and i1 %bound02292, %bound12293
  %conflict.rdx2295 = or i1 %conflict.rdx2291, %found.conflict2294
  br i1 %conflict.rdx2295, label %.lr.ph1968.split.us.preheader2364, label %vector.ph2298

vector.ph2298:                                    ; preds = %vector.memcheck2279
  %i.bcy = getelementptr i8, ptr %i.bcw, i64 %i.bce
  %i.bcz = getelementptr i8, ptr %i.bck, i64 %i.bce
  %i.bda = getelementptr i8, ptr %i.bcl, i64 %i.bce
  br label %vector.body2301

vector.body2301:                                  ; preds = %vector.body2301, %vector.ph2298
  %index2302 = phi i64 [ 0, %vector.ph2298 ], [ %index.next2311, %vector.body2301 ] ; 2 uses
  %vector.recur2303 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph2298 ], [ %wide.load2307, %vector.body2301 ]
  %i.bdb = shl i64 %index2302, 2                  ; 3 uses
  %next.gep2304 = getelementptr i8, ptr %i.bcw, i64 %i.bdb ; 2 uses
  %next.gep2305 = getelementptr i8, ptr %i.bck, i64 %i.bdb ; 2 uses
  %next.gep2306 = getelementptr i8, ptr %i.bcl, i64 %i.bdb
  %wide.load2307 = load <4 x i32>, ptr %next.gep2304, align 4, !tbaa !3, !alias.scope !93 ; 6 uses
  %i.bdc = shufflevector <4 x i32> %vector.recur2303, <4 x i32> %wide.load2307, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bdd = getelementptr inbounds nuw i8, ptr %next.gep2304, i64 4
  %wide.load2308 = load <4 x i32>, ptr %i.bdd, align 4, !tbaa !3, !alias.scope !96
  %i.bde = shl <4 x i32> %wide.load2308, splat (i32 28)
  %i.bdf = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load2307, <4 x i32> %i.bdc, <4 x i32> splat (i32 4))
  %i.bdg = lshr <4 x i32> %wide.load2307, splat (i32 4)
  %i.bdh = or <4 x i32> %i.bdg, %i.bdf
  %i.bdi = or <4 x i32> %i.bdh, %i.bde
  %i.bdj = or <4 x i32> %i.bdi, %wide.load2307
  %i.bdk = shl <4 x i32> %i.bdj, splat (i32 3)
  %i.bdl = and <4 x i32> %i.bdk, splat (i32 -2004318072)
  %wide.load2309 = load <4 x i32>, ptr %next.gep2305, align 4, !tbaa !3, !alias.scope !98, !noalias !100
  %i.bdm = or <4 x i32> %i.bdl, %wide.load2309
  %wide.load2310 = load <4 x i32>, ptr %next.gep2306, align 4, !tbaa !3, !alias.scope !102
  %i.bdn = xor <4 x i32> %wide.load2310, splat (i32 -1)
  %i.bdo = and <4 x i32> %i.bdm, %i.bdn
  store <4 x i32> %i.bdo, ptr %next.gep2305, align 4, !tbaa !3, !alias.scope !98, !noalias !100
  %index.next2311 = add nuw i64 %index2302, 4     ; 2 uses
  %i.bdp = icmp eq i64 %index.next2311, %n.vec2300
  br i1 %i.bdp, label %middle.block2312, label %vector.body2301, !llvm.loop !103

middle.block2312:                                 ; preds = %vector.body2301
  %vector.recur.extract2313 = extractelement <4 x i32> %wide.load2307, i64 3
  br i1 %cmp.n2314, label %.lr.ph1999, label %.lr.ph1968.split.us.preheader2364

.lr.ph1968.split.us.preheader2364:                ; preds = %vector.memcheck2279, %.lr.ph1968.split.us.preheader, %middle.block2312
  %.014211966.us.ph = phi i32 [ 0, %vector.memcheck2279 ], [ 0, %.lr.ph1968.split.us.preheader ], [ %i.bcd, %middle.block2312 ]
  %.014221965.us.ph = phi i32 [ 0, %vector.memcheck2279 ], [ 0, %.lr.ph1968.split.us.preheader ], [ %vector.recur.extract2313, %middle.block2312 ]
  %.014301964.us.ph = phi ptr [ %i.bcw, %vector.memcheck2279 ], [ %i.bcw, %.lr.ph1968.split.us.preheader ], [ %i.bcy, %middle.block2312 ]
  %.014321963.us.ph = phi ptr [ %i.bck, %vector.memcheck2279 ], [ %i.bck, %.lr.ph1968.split.us.preheader ], [ %i.bcz, %middle.block2312 ]
  %.014341962.us.ph = phi ptr [ %i.bcl, %vector.memcheck2279 ], [ %i.bcl, %.lr.ph1968.split.us.preheader ], [ %i.bda, %middle.block2312 ]
  br label %.lr.ph1968.split.us

.lr.ph1968.split.us:                              ; preds = %.lr.ph1968.split.us.preheader2364, %.lr.ph1968.split.us
  %.014211966.us = phi i32 [ %i.beg, %.lr.ph1968.split.us ], [ %.014211966.us.ph, %.lr.ph1968.split.us.preheader2364 ]
  %.014221965.us = phi i32 [ %i.bdq, %.lr.ph1968.split.us ], [ %.014221965.us.ph, %.lr.ph1968.split.us.preheader2364 ]
  %.014301964.us = phi ptr [ %i.bdr, %.lr.ph1968.split.us ], [ %.014301964.us.ph, %.lr.ph1968.split.us.preheader2364 ] ; 2 uses
  %.014321963.us = phi ptr [ %i.beh, %.lr.ph1968.split.us ], [ %.014321963.us.ph, %.lr.ph1968.split.us.preheader2364 ] ; 3 uses
  %.014341962.us = phi ptr [ %i.bei, %.lr.ph1968.split.us ], [ %.014341962.us.ph, %.lr.ph1968.split.us.preheader2364 ] ; 2 uses
  %i.bdq = load i32, ptr %.014301964.us, align 4, !tbaa !3 ; 4 uses
  %i.bdr = getelementptr inbounds nuw i8, ptr %.014301964.us, i64 4 ; 2 uses
  %i.bds = load i32, ptr %i.bdr, align 4, !tbaa !3
  %i.bdt = shl i32 %i.bds, 28
  %i.bdu = tail call i32 @llvm.fshl.i32(i32 %i.bdq, i32 %.014221965.us, i32 4)
  %i.bdv = lshr i32 %i.bdq, 4
  %i.bdw = or i32 %i.bdv, %i.bdu
  %i.bdx = or i32 %i.bdw, %i.bdt
  %i.bdy = or i32 %i.bdx, %i.bdq
  %i.bdz = shl i32 %i.bdy, 3
  %i.bea = and i32 %i.bdz, -2004318072
  %i.beb = load i32, ptr %.014321963.us, align 4, !tbaa !3
  %i.bec = or i32 %i.bea, %i.beb
  %i.bed = load i32, ptr %.014341962.us, align 4, !tbaa !3
  %i.bee = xor i32 %i.bed, -1
  %i.bef = and i32 %i.bec, %i.bee
  store i32 %i.bef, ptr %.014321963.us, align 4, !tbaa !3
  %i.beg = add nuw nsw i32 %.014211966.us, 8      ; 2 uses
  %i.beh = getelementptr inbounds nuw i8, ptr %.014321963.us, i64 4
  %i.bei = getelementptr inbounds nuw i8, ptr %.014341962.us, i64 4
  %i.bej = icmp slt i32 %i.beg, %i.ej
  br i1 %i.bej, label %.lr.ph1968.split.us, label %.lr.ph1999, !llvm.loop !104

.lr.ph1968.split:                                 ; preds = %.lr.ph1968.split.preheader2365, %.lr.ph1968.split
  %.014211966 = phi i32 [ %i.beo, %.lr.ph1968.split ], [ %.014211966.ph, %.lr.ph1968.split.preheader2365 ]
  %.014321963 = phi ptr [ %i.bep, %.lr.ph1968.split ], [ %.014321963.ph, %.lr.ph1968.split.preheader2365 ] ; 3 uses
  %.014341962 = phi ptr [ %i.beq, %.lr.ph1968.split ], [ %.014341962.ph, %.lr.ph1968.split.preheader2365 ] ; 2 uses
  %i.bek = load i32, ptr %.014341962, align 4, !tbaa !3
  %i.bel = xor i32 %i.bek, -1
  %i.bem = load i32, ptr %.014321963, align 4, !tbaa !3
  %i.ben = and i32 %i.bem, %i.bel
  store i32 %i.ben, ptr %.014321963, align 4, !tbaa !3
  %i.beo = add nuw nsw i32 %.014211966, 8         ; 2 uses
  %i.bep = getelementptr inbounds nuw i8, ptr %.014321963, i64 4
  %i.beq = getelementptr inbounds nuw i8, ptr %.014341962, i64 4
  %i.ber = icmp slt i32 %i.beo, %i.ej
  br i1 %i.ber, label %.lr.ph1968.split, label %.lr.ph1999, !llvm.loop !105

switch.lookup:                                    ; preds = %bb.gv
  %i.bes = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.opj_t1_ht_decode_cblk, i64 %i.bes
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %.thread1813

.thread1813:                                      ; preds = %switch.lookup, %bb.gw
  %.014231815 = phi i32 [ -1, %bb.gw ], [ %switch.load, %switch.lookup ]
  br i1 %i.gy, label %.lr.ph1999, label %._crit_edge2000

.lr.ph1999:                                       ; preds = %.lr.ph1968.split, %.lr.ph1968.split.us, %middle.block2340, %middle.block2312, %.thread1813
  %.0142318152169 = phi i32 [ %.014231815, %.thread1813 ], [ -1, %middle.block2312 ], [ -1, %middle.block2340 ], [ -1, %.lr.ph1968.split.us ], [ -1, %.lr.ph1968.split ] ; 2 uses
  %i.bet = and i32 %i.bcf, 4
  %.not1627 = icmp eq i32 %i.bet, 0               ; 4 uses
  %i.beu = select i1 %.not1627, ptr %i.eq, ptr %i.ep
end_hunk_1
