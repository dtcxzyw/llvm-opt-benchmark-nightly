inline.NumInlined: 87
inline.NumDeleted: 13
begin_hunk_0_@ruby_strtod:bb.a
  %.1.i = phi i32 [ %spec.select707, %bb.cc ], [ 9, %bb.cd ] ; 2 uses
  %i.le = icmp slt i32 %.1.i, %.6565
  br i1 %i.le, label %.lr.ph53.i, label %s2b.exit

.lr.ph53.i:                                       ; preds = %bb.ce, %bb.cf
  %.251.i = phi i32 [ %i.lk, %bb.cf ], [ %.1.i, %bb.ce ]
  %.23150.i = phi ptr [ %i.li, %bb.cf ], [ %.130.i, %bb.ce ]
  %.23449.i = phi ptr [ %i.lj, %bb.cf ], [ %.133.i, %bb.ce ] ; 2 uses
  %i.lf = load i8, ptr %.23449.i, align 1, !tbaa !11
  %i.lg = sext i8 %i.lf to i32
  %i.lh = add nsw i32 %i.lg, -48
  %i.li = tail call fastcc ptr @multadd(ptr noundef nonnull %.23150.i, i32 noundef 10, i32 noundef %i.lh) ; 3 uses
  %.not42.i = icmp eq ptr %i.li, null
  br i1 %.not42.i, label %Bclear.exit748, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph53.i
  %i.lj = getelementptr i8, ptr %.23449.i, i64 1
  %i.lk = add nuw nsw i32 %.251.i, 1              ; 2 uses
  %exitcond61.not.i = icmp eq i32 %i.lk, %.6565
  br i1 %exitcond61.not.i, label %s2b.exit, label %.lr.ph53.i, !llvm.loop !51

s2b.exit:                                         ; preds = %bb.cf, %bb.ce
  %.026.i = phi ptr [ %.130.i, %bb.ce ], [ %i.li, %bb.cf ] ; 5 uses
  %i.ll = getelementptr i8, ptr %.026.i, i64 8    ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !44 ; 2 uses
  %i.ln = shl nuw i32 1, %i.lm                    ; 2 uses
  %i.lo = add i32 %i.ln, -1
  %i.lp = zext nneg i32 %i.lo to i64
  %i.lq = shl nuw nsw i64 %i.lp, 2
  %i.lr = add nuw nsw i64 %i.lq, 32
  %i.ls = tail call noalias ptr @malloc(i64 noundef %i.lr) #26 ; 2 uses
  %.not.i1132 = icmp eq ptr %i.ls, null
  br i1 %.not.i1132, label %Bclear.exit744.thread.thread, label %.lr.ph1134

.lr.ph1134:                                       ; preds = %s2b.exit
  %i.lt = getelementptr i8, ptr %.026.i, i64 20
  %i.lu = getelementptr i8, ptr %.026.i, i64 16
  %i.lv = icmp sgt i32 %i.gh, -1                  ; 2 uses
  %i.lw = sub i32 0, %i.gh
  %.0593 = select i1 %i.lv, i32 0, i32 %i.lw      ; 3 uses
  %.0589 = select i1 %i.lv, i32 %i.gh, i32 0      ; 3 uses
  %.1591 = add i32 %.1567, %.0589
  %i.lx = icmp sgt i32 %.0593, 0
  %i.ly = icmp sgt i32 %.0589, 0
  %i.lz = icmp ne i32 %.1567, 0
  %.not672 = icmp eq i32 %.1567, 0                ; 4 uses
  br label %bb.cg

bb.cg:                                            ; preds = %.lr.ph1134, %Bclear.exit732
  %i.ma = phi ptr [ %i.ls, %.lr.ph1134 ], [ %i.wd, %Bclear.exit732 ] ; 11 uses
  %i.mb = phi i32 [ %i.ln, %.lr.ph1134 ], [ %i.vy, %Bclear.exit732 ]
  %i.mc = phi i32 [ %i.lm, %.lr.ph1134 ], [ %i.vx, %Bclear.exit732 ]
  %.sroa.067.101133 = phi double [ %.sroa.067.9, %.lr.ph1134 ], [ %.sroa.067.13, %Bclear.exit732 ] ; 27 uses
  %i.md = getelementptr i8, ptr %i.ma, i64 8
  store i32 %i.mc, ptr %i.md, align 8, !tbaa !44
  %i.me = getelementptr i8, ptr %i.ma, i64 12
  store i32 %i.mb, ptr %i.me, align 4, !tbaa !47
  %i.mf = getelementptr i8, ptr %i.ma, i64 20
  store i32 0, ptr %i.mf, align 4, !tbaa !49
  %i.mg = getelementptr i8, ptr %i.ma, i64 16     ; 2 uses
  store i32 0, ptr %i.mg, align 8, !tbaa !48
  %i.mh = load i32, ptr %i.lt, align 4, !tbaa !49
  %i.mi = sext i32 %i.mh to i64
  %i.mj = shl nsw i64 %i.mi, 2
  %i.mk = add nsw i64 %i.mj, 8                    ; 2 uses
  %.not.i718 = icmp eq i64 %i.mk, 0
  br i1 %.not.i718, label %ruby_nonempty_memcpy.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.mg, ptr noundef nonnull readonly align 1 %i.lu, i64 noundef range(i64 1, 0) %i.mk, i1 noundef false) #24
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.cg, %bb.ch
  %i.ml = call fastcc ptr @d2b(double noundef %.sroa.067.101133, ptr noundef %i.a, ptr noundef %i.b) ; 6 uses
  %.not658 = icmp eq ptr %i.ml, null
  br i1 %.not658, label %Bclear.exit740.thread, label %bb.ci

bb.ci:                                            ; preds = %ruby_nonempty_memcpy.exit
  %i.mm = tail call noalias dereferenceable_or_null(36) ptr @malloc(i64 noundef 36) #26 ; 5 uses
  %.not.i.i719 = icmp eq ptr %i.mm, null
  br i1 %.not.i.i719, label %Bclear.exit740.thread.sink.split, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.mn = getelementptr i8, ptr %i.mm, i64 8
  %i.mo = getelementptr i8, ptr %i.mm, i64 24
  store i32 1, ptr %i.mo, align 8, !tbaa !7
  store <4 x i32> <i32 1, i32 2, i32 0, i32 1>, ptr %i.mn, align 8, !tbaa !7
  %i.mp = load i32, ptr %i.a, align 4, !tbaa !7   ; 4 uses
  %i.mq = icmp sgt i32 %i.mp, -1                  ; 2 uses
  %i.mr = select i1 %i.mq, i32 %i.mp, i32 0
  %.1595 = add nuw i32 %i.mr, %.0593              ; 3 uses
  %i.ms = select i1 %i.mq, i32 0, i32 %i.mp
  %i.mt = sub i32 %i.mp, %.1567                   ; 2 uses
  %i.mu = load i32, ptr %i.b, align 4, !tbaa !7   ; 2 uses
  %i.mv = add i32 %i.mu, -1
  %i.mw = add i32 %i.mv, %i.mt
  %i.mx = icmp slt i32 %i.mw, -1022
  %i.my = add i32 %i.mt, 1075
  %i.mz = sub i32 54, %i.mu
  %.2570 = select i1 %i.mx, i32 %i.my, i32 %i.mz  ; 2 uses
  %i.na = add i32 %.2570, %.1595                  ; 2 uses
  %i.nb = sub i32 %.1591, %i.ms
  %i.nc = add i32 %i.nb, %.2570                   ; 2 uses
  %i.nd = tail call i32 @llvm.smin.i32(i32 %i.na, i32 %i.nc)
  %.1572 = tail call i32 @llvm.smin.i32(i32 %i.nd, i32 %.1595)
  %i.ne = tail call i32 @llvm.smax.i32(i32 %.1572, i32 0) ; 3 uses
  %.2596 = sub i32 %i.na, %i.ne                   ; 2 uses
  %.2592 = sub i32 %i.nc, %i.ne                   ; 2 uses
  %.0588 = sub i32 %.1595, %i.ne                  ; 2 uses
  br i1 %i.lx, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.nf = tail call fastcc ptr @pow5mult(ptr noundef nonnull %i.mm, i32 noundef %.0593) ; 4 uses
  %.not660 = icmp eq ptr %i.nf, null
  br i1 %.not660, label %Bclear.exit740.thread.sink.split, label %Bclear.exit

Bclear.exit:                                      ; preds = %bb.ck
  %i.ng = tail call fastcc ptr @mult(ptr noundef nonnull %i.nf, ptr noundef nonnull %i.ml) ; 2 uses
  tail call void @free(ptr noundef nonnull %i.ml) #24
  %.not661 = icmp eq ptr %i.ng, null
  br i1 %.not661, label %Bclear.exit740.thread, label %bb.cl

bb.cl:                                            ; preds = %Bclear.exit, %bb.cj
  %.3799 = phi ptr [ %i.ng, %Bclear.exit ], [ %i.ml, %bb.cj ] ; 2 uses
  %.3785 = phi ptr [ %i.nf, %Bclear.exit ], [ %i.mm, %bb.cj ] ; 4 uses
  %i.nh = icmp sgt i32 %.2596, 0
  br i1 %i.nh, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.ni = tail call fastcc ptr @lshift(ptr noundef nonnull %.3799, i32 noundef %.2596) ; 2 uses
  %.not662 = icmp eq ptr %i.ni, null
  br i1 %.not662, label %Bclear.exit740.thread, label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.4800 = phi ptr [ %i.ni, %bb.cm ], [ %.3799, %bb.cl ] ; 11 uses
  br i1 %i.ly, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.nj = tail call fastcc ptr @pow5mult(ptr noundef nonnull %i.ma, i32 noundef %.0589) ; 2 uses
  %.not663 = icmp eq ptr %i.nj, null
  br i1 %.not663, label %Bclear.exit742.thread, label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.2793 = phi ptr [ %i.nj, %bb.co ], [ %i.ma, %bb.cn ] ; 2 uses
  %i.nk = icmp sgt i32 %.2592, 0
  br i1 %i.nk, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.nl = tail call fastcc ptr @lshift(ptr noundef nonnull %.2793, i32 noundef %.2592) ; 2 uses
  %.not664 = icmp eq ptr %i.nl, null
  br i1 %.not664, label %Bclear.exit742.thread, label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.3794 = phi ptr [ %i.nl, %bb.cq ], [ %.2793, %bb.cp ] ; 10 uses
  %i.nm = icmp sgt i32 %.0588, 0
  br i1 %i.nm, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.nn = tail call fastcc ptr @lshift(ptr noundef nonnull %.3785, i32 noundef %.0588) ; 2 uses
  %.not665 = icmp eq ptr %i.nn, null
  br i1 %.not665, label %Bclear.exit740.thread.sink.split, label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.4786 = phi ptr [ %i.nn, %bb.cs ], [ %.3785, %bb.cr ] ; 13 uses
  %i.no = tail call fastcc ptr @diff(ptr noundef nonnull %.4800, ptr noundef nonnull %.3794) ; 22 uses
  %.not666 = icmp eq ptr %i.no, null
  br i1 %.not666, label %Bclear.exit740.thread.sink.split, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.np = getelementptr i8, ptr %i.no, i64 16     ; 2 uses
  %i.nq = load i32, ptr %i.np, align 8, !tbaa !48 ; 6 uses
  store i32 0, ptr %i.np, align 8, !tbaa !48
  %i.nr = getelementptr i8, ptr %i.no, i64 20
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !49 ; 5 uses
  %i.nt = getelementptr i8, ptr %.4786, i64 20
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !49 ; 3 uses
  %i.nv = sub i32 %i.ns, %i.nu                    ; 2 uses
  %.not.i721 = icmp eq i32 %i.ns, %i.nu
  br i1 %.not.i721, label %bb.cv, label %cmp.exit

bb.cv:                                            ; preds = %bb.cu
  %i.nw = getelementptr i8, ptr %i.no, i64 24     ; 2 uses
  %i.nx = sext i32 %i.ns to i64                   ; 3 uses
  %i.ny = getelementptr [4 x i8], ptr %i.nw, i64 %i.nx
  %i.nz = getelementptr i8, ptr %.4786, i64 24
  %i.oa = getelementptr [4 x i8], ptr %i.nz, i64 %i.nx
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cy, %bb.cv
  %.018.i = phi ptr [ %i.oa, %bb.cv ], [ %i.od, %bb.cy ]
  %.017.i = phi ptr [ %i.ny, %bb.cv ], [ %i.ob, %bb.cy ]
  %i.ob = getelementptr i8, ptr %.017.i, i64 -4   ; 3 uses
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !7  ; 2 uses
  %i.od = getelementptr i8, ptr %.018.i, i64 -4   ; 2 uses
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !7  ; 2 uses
  %.not23.i = icmp eq i32 %i.oc, %i.oe
  br i1 %.not23.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.of = icmp ult i32 %i.oc, %i.oe
  %cond.fr = freeze i1 %i.of
  br i1 %cond.fr, label %cmp.exit.thread839, label %.thread846

bb.cy:                                            ; preds = %bb.cw
  %.not24.i = icmp ugt ptr %i.ob, %i.nw
  br i1 %.not24.i, label %bb.cw, label %bb.dh

cmp.exit:                                         ; preds = %bb.cu
  %i.og = icmp slt i32 %i.nv, 0
  br i1 %i.og, label %cmp.exit.thread839, label %cmp.exit..thread846_crit_edge

cmp.exit..thread846_crit_edge:                    ; preds = %cmp.exit
  %.pre1272 = sext i32 %i.ns to i64
  br label %.thread846

cmp.exit.thread839:                               ; preds = %bb.cx, %cmp.exit
  %i.oh = getelementptr i8, ptr %.4786, i64 20
  %i.oi = icmp ne i32 %i.nq, 0
  %i.oj = bitcast double %.sroa.067.101133 to i64 ; 2 uses
  %i.ok = and i64 %i.oj, 4294967295
  %i.ol = icmp ne i64 %i.ok, 0
  %or.cond24 = select i1 %i.oi, i1 true, i1 %i.ol
  br i1 %or.cond24, label %cmp.exit729.thread, label %bb.cz

bb.cz:                                            ; preds = %cmp.exit.thread839
  %.sroa.067.4.extract.shift158 = lshr exact i64 %i.oj, 32
  %.sroa.067.4.extract.trunc159 = trunc nuw i64 %.sroa.067.4.extract.shift158 to i32 ; 2 uses
  %i.om = and i32 %.sroa.067.4.extract.trunc159, 1048575
  %.not677 = icmp ne i32 %i.om, 0
  %i.on = and i32 %.sroa.067.4.extract.trunc159, 2146435072
  %i.oo = icmp samesign ult i32 %i.on, 112197633
  %or.cond710 = select i1 %.not677, i1 true, i1 %i.oo
  br i1 %or.cond710, label %cmp.exit729.thread, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.op = getelementptr i8, ptr %i.no, i64 24
  %i.oq = load i32, ptr %i.op, align 8, !tbaa !7
  %.not678 = icmp eq i32 %i.oq, 0
  %i.or = icmp slt i32 %i.ns, 2
  %or.cond937 = and i1 %i.or, %.not678
  br i1 %or.cond937, label %cmp.exit729.thread, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.os = tail call fastcc ptr @lshift(ptr noundef nonnull %i.no, i32 noundef 1) ; 8 uses
  %.not679 = icmp eq ptr %i.os, null
  br i1 %.not679, label %Bclear.exit740.thread.sink.split, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ot = getelementptr i8, ptr %i.os, i64 20
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !49 ; 3 uses
  %i.ov = load i32, ptr %i.oh, align 4, !tbaa !49 ; 2 uses
  %.not.i723 = icmp eq i32 %i.ou, %i.ov
  br i1 %.not.i723, label %bb.dd, label %cmp.exit729

bb.dd:                                            ; preds = %bb.dc
  %i.ow = getelementptr i8, ptr %i.os, i64 24     ; 2 uses
  %i.ox = sext i32 %i.ou to i64                   ; 2 uses
  %i.oy = getelementptr [4 x i8], ptr %i.ow, i64 %i.ox
  %i.oz = getelementptr i8, ptr %.4786, i64 24
  %i.pa = getelementptr [4 x i8], ptr %i.oz, i64 %i.ox
  br label %bb.de

bb.de:                                            ; preds = %bb.dg, %bb.dd
  %.018.i725 = phi ptr [ %i.pa, %bb.dd ], [ %i.pd, %bb.dg ]
  %.017.i726 = phi ptr [ %i.oy, %bb.dd ], [ %i.pb, %bb.dg ]
  %i.pb = getelementptr i8, ptr %.017.i726, i64 -4 ; 3 uses
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !7  ; 2 uses
  %i.pd = getelementptr i8, ptr %.018.i725, i64 -4 ; 2 uses
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !7  ; 2 uses
  %.not23.i727 = icmp eq i32 %i.pc, %i.pe
  br i1 %.not23.i727, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.pf = icmp ult i32 %i.pc, %i.pe
  %cond.fr842 = freeze i1 %i.pf
  br i1 %cond.fr842, label %cmp.exit729.thread, label %cmp.exit729.thread844

bb.dg:                                            ; preds = %bb.de
  %.not24.i728 = icmp ugt ptr %i.pb, %i.ow
  br i1 %.not24.i728, label %bb.de, label %cmp.exit729.thread

cmp.exit729:                                      ; preds = %bb.dc
  %i.pg = sub i32 %i.ou, %i.ov
  %i.ph = icmp sgt i32 %i.pg, 0
  br i1 %i.ph, label %cmp.exit729.thread844, label %cmp.exit729.thread

bb.dh:                                            ; preds = %bb.cy
  %.not674 = icmp eq i32 %i.nq, 0
  %i.pi = bitcast double %.sroa.067.101133 to i64 ; 8 uses
  br i1 %.not674, label %bb.do, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %.sroa.067.4.extract.shift164 = lshr i64 %i.pi, 32
  %.sroa.067.4.extract.trunc165 = trunc nuw i64 %.sroa.067.4.extract.shift164 to i32 ; 2 uses
  %i.pj = and i32 %.sroa.067.4.extract.trunc165, 1048575
  %i.pk = icmp eq i32 %i.pj, 1048575
  br i1 %i.pk, label %bb.dj, label %bb.dr

bb.dj:                                            ; preds = %bb.di
  %.sroa.067.0.extract.trunc102 = trunc i64 %i.pi to i32
  br i1 %.not672, label %bb.dm, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.pl = and i32 %.sroa.067.4.extract.trunc165, 2146435072 ; 2 uses
  %i.pm = icmp samesign ult i32 %i.pl, 111149057
  br i1 %i.pm, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.pn = lshr exact i32 %i.pl, 20
  %i.po = sub nuw nsw i32 107, %i.pn
  %i.pp = shl nsw i32 -1, %i.po
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dj, %bb.dk, %bb.dl
  %i.pq = phi i32 [ %i.pp, %bb.dl ], [ -1, %bb.dk ], [ -1, %bb.dj ]
  %i.pr = icmp eq i32 %i.pq, %.sroa.067.0.extract.trunc102
  br i1 %i.pr, label %bb.dn, label %bb.dr

bb.dn:                                            ; preds = %bb.dm
  %.sroa.067.4.insert.ext173 = and i64 %i.pi, 9218868437227405312
  %.sroa.067.4.insert.shift174 = add nuw i64 %.sroa.067.4.insert.ext173, 4503599627370496
  %i.ps = bitcast i64 %.sroa.067.4.insert.shift174 to double
  br label %cmp.exit729.thread

bb.do:                                            ; preds = %bb.dh
  %i.pt = and i64 %i.pi, 4503599627370495
  %or.cond27.not = icmp eq i64 %i.pt, 0
  br i1 %or.cond27.not, label %cmp.exit729.thread844, label %.thread850

cmp.exit729.thread844:                            ; preds = %bb.df, %bb.do, %cmp.exit729
  %.3779 = phi ptr [ %i.os, %cmp.exit729 ], [ %i.no, %bb.do ], [ %i.os, %bb.df ] ; 3 uses
  %.pre = bitcast double %.sroa.067.101133 to i64 ; 2 uses
  br i1 %.not672, label %cmp.exit729.thread844._crit_edge, label %bb.dp

bb.dp:                                            ; preds = %cmp.exit729.thread844
  %.sroa.067.4.extract.shift181 = lshr i64 %.pre, 32
  %.sroa.067.4.extract.trunc182 = trunc nuw i64 %.sroa.067.4.extract.shift181 to i32
  %i.pu = and i32 %.sroa.067.4.extract.trunc182, 2146435072 ; 2 uses
  %i.pv = icmp samesign ult i32 %i.pu, 112197633
  br i1 %i.pv, label %bb.dq, label %cmp.exit729.thread844._crit_edge

bb.dq:                                            ; preds = %bb.dp
  %i.pw = icmp samesign ugt i32 %i.pu, 57671680
  br i1 %i.pw, label %.thread859, label %.thread868.sink.split

cmp.exit729.thread844._crit_edge:                 ; preds = %cmp.exit729.thread844, %bb.dp
  %i.px = and i64 %.pre, 9218868437227405312
  %.sroa.067.0.insert.insert108 = add nsw i64 %i.px, -1
  %i.py = bitcast i64 %.sroa.067.0.insert.insert108 to double
  br label %cmp.exit729.thread

bb.dr:                                            ; preds = %bb.di, %bb.dm
  %i.pz = and i64 %i.pi, 1
  %.not676 = icmp eq i64 %i.pz, 0
  br i1 %.not676, label %cmp.exit729.thread, label %bb.ds

.thread850:                                       ; preds = %bb.do
  %i.qa = and i64 %i.pi, 1
  %.not676851 = icmp eq i64 %i.qa, 0
  br i1 %.not676851, label %cmp.exit729.thread, label %.thread852

bb.ds:                                            ; preds = %bb.dr
  %i.qb = and i64 %i.pi, 9218868437227405312
  %i.qc = add nsw i64 %i.qb, -234187180623265792
  %i.qd = bitcast i64 %i.qc to double
  %i.qe = fadd double %.sroa.067.101133, %i.qd
  br label %cmp.exit729.thread

.thread852:                                       ; preds = %.thread850
  %i.qf = and i64 %i.pi, 9218868437227405312
  %i.qg = add nsw i64 %i.qf, -234187180623265792
  %i.qh = bitcast i64 %i.qg to double
  %i.qi = fsub double %.sroa.067.101133, %i.qh    ; 2 uses
  %i.qj = fcmp une double %i.qi, 0.000000e+00
  br i1 %i.qj, label %cmp.exit729.thread, label %.thread868.sink.split

.thread846:                                       ; preds = %cmp.exit..thread846_crit_edge, %bb.cx
  %.pre-phi1273 = phi i64 [ %.pre1272, %cmp.exit..thread846_crit_edge ], [ %i.nx, %bb.cx ]
  %i.qk = getelementptr i8, ptr %i.no, i64 24     ; 4 uses
  %i.ql = getelementptr [4 x i8], ptr %i.qk, i64 %.pre-phi1273 ; 3 uses
  %i.qm = getelementptr i8, ptr %i.ql, i64 -4     ; 4 uses
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !7  ; 7 uses
  %.not.i.i.i = icmp ult i32 %i.qn, 65536         ; 2 uses
  %i.qo = shl nuw i32 %i.qn, 16
  %spec.select.i.i.i = select i1 %.not.i.i.i, i32 %i.qo, i32 %i.qn ; 3 uses
  %spec.select26.i.i.i = select i1 %.not.i.i.i, i32 16, i32 0 ; 2 uses
  %.not21.i.i.i = icmp ult i32 %spec.select.i.i.i, 16777216 ; 2 uses
  %i.qp = or disjoint i32 %spec.select26.i.i.i, 8
  %i.qq = shl nuw i32 %spec.select.i.i.i, 8
  %.117.i.i.i = select i1 %.not21.i.i.i, i32 %i.qq, i32 %spec.select.i.i.i ; 3 uses
  %.1.i.i.i = select i1 %.not21.i.i.i, i32 %i.qp, i32 %spec.select26.i.i.i ; 2 uses
  %.not22.i.i.i = icmp ult i32 %.117.i.i.i, 268435456 ; 2 uses
  %i.qr = or disjoint i32 %.1.i.i.i, 4
  %i.qs = shl nuw i32 %.117.i.i.i, 4
  %.218.i.i.i = select i1 %.not22.i.i.i, i32 %i.qs, i32 %.117.i.i.i ; 3 uses
  %.2.i.i.i = select i1 %.not22.i.i.i, i32 %i.qr, i32 %.1.i.i.i ; 2 uses
  %.not23.i.i.i = icmp ult i32 %.218.i.i.i, 1073741824 ; 2 uses
  %i.qt = or disjoint i32 %.2.i.i.i, 2
  %i.qu = shl nuw i32 %.218.i.i.i, 2
  %.319.i.i.i = select i1 %.not23.i.i.i, i32 %i.qu, i32 %.218.i.i.i ; 2 uses
  %.3.i.i.i = select i1 %.not23.i.i.i, i32 %i.qt, i32 %.2.i.i.i ; 2 uses
  %i.qv = add nuw nsw i32 %.3.i.i.i, 1
  %.not25.i.i.i = icmp ult i32 %.319.i.i.i, 1073741824
  %spec.select27.i.i.i = select i1 %.not25.i.i.i, i32 32, i32 %i.qv
  %.not2428.i.i.i = icmp slt i32 %.319.i.i.i, 0
  %.020.i.i.i = select i1 %.not2428.i.i.i, i32 %.3.i.i.i, i32 %spec.select27.i.i.i ; 6 uses
  %i.qw = icmp samesign ult i32 %.020.i.i.i, 11
  br i1 %i.qw, label %bb.dt, label %bb.dw

bb.dt:                                            ; preds = %.thread846
  %i.qx = sub nuw nsw i32 11, %.020.i.i.i         ; 2 uses
  %i.qy = lshr i32 %i.qn, %i.qx
  %i.qz = icmp ugt ptr %i.qm, %i.qk
  br i1 %i.qz, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.ra = getelementptr i8, ptr %i.ql, i64 -8
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !7
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.rc = phi i32 [ %i.rb, %bb.du ], [ 0, %bb.dt ]
  %i.rd = add nuw nsw i32 %.020.i.i.i, 21
  %i.re = shl i32 %i.qn, %i.rd
  %i.rf = lshr i32 %i.rc, %i.qx
  %i.rg = or i32 %i.rf, %i.re
  br label %b2d.exit.i

bb.dw:                                            ; preds = %.thread846
  %i.rh = icmp ugt ptr %i.qm, %i.qk
  br i1 %i.rh, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.ri = getelementptr i8, ptr %i.ql, i64 -8     ; 2 uses
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !7
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %.0.i.i = phi ptr [ %i.ri, %bb.dx ], [ %i.qm, %bb.dw ] ; 2 uses
  %i.rk = phi i32 [ %i.rj, %bb.dx ], [ 0, %bb.dw ] ; 3 uses
  %i.rl = add nsw i32 %.020.i.i.i, -11            ; 3 uses
  %.not.i.i730 = icmp eq i32 %i.rl, 0
  br i1 %.not.i.i730, label %b2d.exit.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.rm = shl i32 %i.qn, %i.rl
  %i.rn = sub nuw nsw i32 43, %.020.i.i.i         ; 2 uses
  %i.ro = lshr i32 %i.rk, %i.rn
  %i.rp = or i32 %i.ro, %i.rm
  %i.rq = icmp ugt ptr %.0.i.i, %i.qk
  br i1 %i.rq, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.rr = getelementptr i8, ptr %.0.i.i, i64 -4
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !7
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.rt = phi i32 [ %i.rs, %bb.ea ], [ 0, %bb.dz ]
  %i.ru = shl i32 %i.rk, %i.rl
  %i.rv = lshr i32 %i.rt, %i.rn
  %i.rw = or i32 %i.rv, %i.ru
  br label %b2d.exit.i

b2d.exit.i:                                       ; preds = %bb.eb, %bb.dy, %bb.dv
  %.sink.i.i = phi i32 [ %i.rw, %bb.eb ], [ %i.rg, %bb.dv ], [ %i.rk, %bb.dy ]
  %.sroa.0.4.insert.shift11.sink.in.in.in.i.i = phi i32 [ %i.rp, %bb.eb ], [ %i.qy, %bb.dv ], [ %i.qn, %bb.dy ]
  %i.rx = getelementptr i8, ptr %.4786, i64 24    ; 4 uses
  %i.ry = sext i32 %i.nu to i64
  %i.rz = getelementptr [4 x i8], ptr %i.rx, i64 %i.ry ; 3 uses
  %i.sa = getelementptr i8, ptr %i.rz, i64 -4     ; 4 uses
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !7  ; 7 uses
  %.not.i.i8.i = icmp ult i32 %i.sb, 65536        ; 2 uses
  %i.sc = shl nuw i32 %i.sb, 16
  %spec.select.i.i9.i = select i1 %.not.i.i8.i, i32 %i.sc, i32 %i.sb ; 3 uses
  %spec.select26.i.i10.i = select i1 %.not.i.i8.i, i32 16, i32 0 ; 2 uses
end_hunk_0
begin_hunk_1_@diff:bb.a
  %i.ba = getelementptr i8, ptr %.044, i64 4      ; 3 uses
  store i32 %i.az, ptr %.044, align 4, !tbaa !7
  %i.bb = icmp ult ptr %i.as, %i.an
  br i1 %i.bb, label %bb.i, label %.preheader69, !llvm.loop !61

.preheader69:                                     ; preds = %bb.i
  %i.bc = sext i32 %i.ah to i64
  %i.bd = getelementptr [4 x i8], ptr %i.ai, i64 %i.bc ; 2 uses
  %i.be = icmp ult ptr %i.ap, %i.bd
  br i1 %i.be, label %.lr.ph, label %.preheader.preheader

.lr.ph:                                           ; preds = %.preheader69, %.lr.ph
  %.178 = phi i64 [ %i.bk, %.lr.ph ], [ %i.ay, %.preheader69 ]
  %.14577 = phi ptr [ %i.bm, %.lr.ph ], [ %i.ba, %.preheader69 ] ; 2 uses
  %.15076 = phi ptr [ %i.bf, %.lr.ph ], [ %i.ap, %.preheader69 ] ; 2 uses
  %i.bf = getelementptr i8, ptr %.15076, i64 4    ; 2 uses
  %i.bg = load i32, ptr %.15076, align 4, !tbaa !7
  %i.bh = zext i32 %i.bg to i64
  %i.bi = sub nsw i64 %i.bh, %.178                ; 2 uses
  %i.bj = lshr i64 %i.bi, 32
  %i.bk = and i64 %i.bj, 1
  %i.bl = trunc i64 %i.bi to i32
  %i.bm = getelementptr i8, ptr %.14577, i64 4    ; 2 uses
  store i32 %i.bl, ptr %.14577, align 4, !tbaa !7
  %i.bn = icmp ult ptr %i.bf, %i.bd
  br i1 %i.bn, label %.lr.ph, label %.preheader.preheader, !llvm.loop !62

.preheader.preheader:                             ; preds = %.lr.ph, %.preheader69
  %.2.ph = phi ptr [ %i.ba, %.preheader69 ], [ %i.bm, %.lr.ph ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.052 = phi i32 [ %i.bq, %.preheader ], [ %i.ah, %.preheader.preheader ] ; 2 uses
  %.2 = phi ptr [ %i.bo, %.preheader ], [ %.2.ph, %.preheader.preheader ]
  %i.bo = getelementptr i8, ptr %.2, i64 -4       ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !7
  %.not59 = icmp eq i32 %i.bp, 0
  %i.bq = add i32 %.052, -1
  br i1 %.not59, label %.preheader, label %bb.j, !llvm.loop !63

bb.j:                                             ; preds = %.preheader
  store i32 %.052, ptr %i.ae, align 4, !tbaa !49
  br label %Balloc.exit.thread

Balloc.exit.thread:                               ; preds = %bb.g, %cmp.exit, %bb.j, %bb.f
  %.046 = phi ptr [ %i.ab, %bb.j ], [ null, %cmp.exit ], [ %i.q, %bb.f ], [ null, %bb.g ]
  ret ptr %.046
}

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @ruby_dtoa(double noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly captures(none) %3, ptr noundef writeonly captures(none) initializes((0, 4)) %4, ptr noundef writeonly captures(address_is_null) %5) local_unnamed_addr #15 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.c = bitcast double %0 to i64                 ; 3 uses
  %.not = icmp slt i64 %i.c, 0                    ; 2 uses
  %i.d = tail call double @llvm.fabs.f64(double %0) ; 2 uses
  %.pre = bitcast double %i.d to i64
  %.pre-phi = select i1 %.not, i64 %.pre, i64 %i.c ; 7 uses
  %.lobit = lshr i64 %i.c, 63
  %.sink = trunc nuw nsw i64 %.lobit to i32
  %.sroa.090.0 = select i1 %.not, double %i.d, double %0 ; 10 uses
  store i32 %.sink, ptr %4, align 4, !tbaa !7
  %.sroa.090.4.extract.shift138 = lshr i64 %.pre-phi, 32
  %.sroa.090.4.extract.trunc139 = trunc nuw nsw i64 %.sroa.090.4.extract.shift138 to i32 ; 5 uses
  %i.e = and i32 %.sroa.090.4.extract.trunc139, 2146435072
  %i.f = icmp eq i32 %i.e, 2146435072
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  store i32 9999, ptr %3, align 4, !tbaa !7
  %i.g = and i64 %.pre-phi, 4294967295
  %.not555 = icmp eq i64 %i.g, 0
  %i.h = and i32 %.sroa.090.4.extract.trunc139, 1048575
  %.not556 = icmp eq i32 %i.h, 0
  %or.cond557 = and i1 %.not555, %.not556
  br i1 %or.cond557, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noalias dereferenceable_or_null(9) ptr @malloc(i64 noundef 9) #26 ; 6 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %nrv_alloc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  store i8 73, ptr %i.i, align 1, !tbaa !11
  %scevgep1080 = getelementptr nuw i8, ptr %i.i, i64 1
  store i64 34186468354778734, ptr %scevgep1080, align 1, !tbaa !11
  %.not14.i = icmp eq ptr %5, null
  br i1 %.not14.i, label %nrv_alloc.exit, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %scevgep1081 = getelementptr nuw i8, ptr %i.i, i64 8
  store ptr %scevgep1081, ptr %5, align 8, !tbaa !17
  br label %nrv_alloc.exit

bb.e:                                             ; preds = %bb.b
  %i.j = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #26 ; 6 uses
  %.not.i574 = icmp eq ptr %i.j, null
  br i1 %.not.i574, label %nrv_alloc.exit, label %.preheader.i575

.preheader.i575:                                  ; preds = %bb.e
  store i8 78, ptr %i.j, align 1, !tbaa !11
  %scevgep1078 = getelementptr nuw i8, ptr %i.j, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep1078, ptr noundef nonnull align 1 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @NANSTR, i64 1), i64 3, i1 false), !tbaa !11
  %.not14.i581 = icmp eq ptr %5, null
  br i1 %.not14.i581, label %nrv_alloc.exit, label %bb.f

bb.f:                                             ; preds = %.preheader.i575
  %scevgep1079 = getelementptr nuw i8, ptr %i.j, i64 3
  store ptr %scevgep1079, ptr %5, align 8, !tbaa !17
  br label %nrv_alloc.exit

bb.g:                                             ; preds = %bb.a
  %i.k = fcmp une double %.sroa.090.0, 0.000000e+00
  br i1 %i.k, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %3, align 4, !tbaa !7
  %i.l = tail call noalias dereferenceable_or_null(2) ptr @malloc(i64 noundef 2) #26 ; 5 uses
  %.not.i583 = icmp eq ptr %i.l, null
  br i1 %.not.i583, label %nrv_alloc.exit, label %.preheader.i584

.preheader.i584:                                  ; preds = %bb.h
  store i8 48, ptr %i.l, align 1, !tbaa !11
  %i.m = getelementptr i8, ptr %i.l, i64 1        ; 2 uses
  store i8 0, ptr %i.m, align 1, !tbaa !11
  %.not14.i590 = icmp eq ptr %5, null
  br i1 %.not14.i590, label %nrv_alloc.exit, label %bb.i

bb.i:                                             ; preds = %.preheader.i584
  store ptr %i.m, ptr %5, align 8, !tbaa !17
  br label %nrv_alloc.exit

bb.j:                                             ; preds = %bb.g
  %i.n = call fastcc ptr @d2b(double noundef %.sroa.090.0, ptr noundef %i.b, ptr noundef %i.a) ; 20 uses
  %.not491 = icmp eq ptr %i.n, null
  br i1 %.not491, label %nrv_alloc.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = lshr i32 %.sroa.090.4.extract.trunc139, 20
  %i.p = and i32 %i.o, 2047                       ; 2 uses
  %.not492.not = icmp eq i32 %i.p, 0              ; 2 uses
  br i1 %.not492.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = and i64 %.pre-phi, 4503599627370495
  %.sroa.072.4.insert.insert81 = or disjoint i64 %i.q, 4607182418800017408
  %i.r = add nsw i32 %i.p, -1023
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.s = load i32, ptr %i.a, align 4, !tbaa !7
  %i.t = load i32, ptr %i.b, align 4, !tbaa !7
  %i.u = add i32 %i.t, %i.s                       ; 5 uses
  %i.v = add i32 %i.u, 1074
  %i.w = icmp sgt i32 %i.v, 32
  br i1 %i.w, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.x = sub nsw i32 -1010, %i.u
  %i.y = shl i32 %.sroa.090.4.extract.trunc139, %i.x
  %.sroa.090.0.extract.trunc125 = trunc i64 %.pre-phi to i32
  %i.z = add nsw i32 %i.u, 1042
  %i.aa = lshr i32 %.sroa.090.0.extract.trunc125, %i.z
  %i.ab = or i32 %i.y, %i.aa
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %.sroa.090.0.extract.trunc127 = trunc i64 %.pre-phi to i32
  %i.ac = sub nuw i32 -1042, %i.u
  %i.ad = shl i32 %.sroa.090.0.extract.trunc127, %i.ac
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ae = phi i32 [ %i.ab, %bb.n ], [ %i.ad, %bb.o ]
  %i.af = uitofp i32 %i.ae to double
  %i.ag = bitcast double %i.af to i64             ; 2 uses
  %i.ah = and i64 %i.ag, 9223372032559808512
  %.sroa.072.4.insert.ext86 = add nsw i64 %i.ah, -139611588448485376
  %.sroa.072.4.insert.mask88 = and i64 %i.ag, 4294967295
  %.sroa.072.4.insert.insert89 = or disjoint i64 %.sroa.072.4.insert.ext86, %.sroa.072.4.insert.mask88
  %i.ai = add i32 %i.u, -1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l
  %.0440 = phi i32 [ %i.r, %bb.l ], [ %i.ai, %bb.p ] ; 2 uses
  %.sroa.072.0.in = phi i64 [ %.sroa.072.4.insert.insert81, %bb.l ], [ %.sroa.072.4.insert.insert89, %bb.p ]
  %.sroa.072.0 = bitcast i64 %.sroa.072.0.in to double
  %i.aj = fadd double %.sroa.072.0, -1.500000e+00
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.aj, double f0x3FD287A7636F4361, double f0x3FC68A288B60C8B3)
  %i.al = sitofp i32 %.0440 to double
  %i.am = tail call double @llvm.fmuladd.f64(double %i.al, double f0x3FD34413509F79FB, double %i.ak) ; 3 uses
  %i.an = fptosi double %i.am to i32              ; 2 uses
  %i.ao = fcmp olt double %i.am, 0.000000e+00
  %i.ap = sitofp i32 %i.an to double
  %i.aq = fcmp une double %i.am, %i.ap
  %or.cond559 = and i1 %i.ao, %i.aq
  %i.ar = sext i1 %or.cond559 to i32
  %.0409 = add i32 %i.ar, %i.an                   ; 4 uses
  %or.cond = icmp ugt i32 %.0409, 22              ; 3 uses
  br i1 %or.cond, label %select.unfold.a, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = zext nneg i32 %.0409 to i64
  %i.at = getelementptr [8 x i8], ptr @tens, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !39
  %.fr = freeze double %i.au
  %i.av = fcmp olt double %.sroa.090.0, %.fr
  %6 = sext i1 %i.av to i32
  %spec.select818 = add nsw i32 %.0409, %6
  br label %select.unfold.a

select.unfold.a:                                  ; preds = %bb.r, %bb.q
  %.2411 = phi i32 [ %spec.select818, %bb.r ], [ %.0409, %bb.q ] ; 28 uses
  %i.aw = load i32, ptr %i.a, align 4, !tbaa !7   ; 2 uses
  %i.ax = xor i32 %.0440, -1
  %i.ay = add i32 %i.aw, %i.ax                    ; 3 uses
  %i.az = icmp sgt i32 %i.ay, -1                  ; 2 uses
  %i.ba = sub i32 0, %i.ay
  %.0396 = select i1 %i.az, i32 0, i32 %i.ba      ; 2 uses
  %.0390 = select i1 %i.az, i32 %i.ay, i32 0      ; 2 uses
  %i.bb = icmp sgt i32 %.2411, -1
  br i1 %i.bb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %select.unfold.a
  %i.bc = add nuw i32 %.0390, %.2411
  br label %bb.u

bb.t:                                             ; preds = %select.unfold.a
  %i.bd = sub i32 %.0396, %.2411
  %i.be = sub i32 0, %.2411
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0408 = phi i32 [ 0, %bb.s ], [ %i.be, %bb.t ] ; 3 uses
  %.1397 = phi i32 [ %.0396, %bb.s ], [ %i.bd, %bb.t ] ; 7 uses
  %.1391 = phi i32 [ %i.bc, %bb.s ], [ %.0390, %bb.t ] ; 3 uses
  %.0389 = phi i32 [ %.2411, %bb.s ], [ 0, %bb.t ] ; 3 uses
  %or.cond3 = icmp ugt i32 %1, 9
  %spec.store.select27 = select i1 %or.cond3, i32 0, i32 %1 ; 3 uses
  %i.bf = icmp samesign ult i32 %spec.store.select27, 6 ; 2 uses
  %i.bg = add nsw i32 %spec.store.select27, -4
  %spec.select = select i1 %i.bf, i32 %spec.store.select27, i32 %i.bg ; 4 uses
  switch i32 %spec.select, label %default.unreachable [
    i32 0, label %bb.aa
    i32 1, label %bb.aa
    i32 2, label %bb.v
    i32 4, label %bb.w
    i32 3, label %bb.x
    i32 5, label %bb.y
  ]

bb.v:                                             ; preds = %bb.u
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0404 = phi i32 [ 0, %bb.v ], [ 1, %bb.u ]
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %2, i32 1) ; 4 uses
  br label %bb.aa

bb.x:                                             ; preds = %bb.u
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %.1405 = phi i32 [ 0, %bb.x ], [ 1, %bb.u ]
  %i.bh = add i32 %.2411, 1
  %i.bi = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 %i.bh) ; 2 uses
  %i.bj = extractvalue { i32, i1 } %i.bi, 1
  br i1 %i.bj, label %Bclear.exit, label %bb.z

Bclear.exit:                                      ; preds = %bb.y
  tail call void @free(ptr noundef nonnull %i.n) #24
  br label %nrv_alloc.exit

bb.z:                                             ; preds = %bb.y
  %i.bk = extractvalue { i32, i1 } %i.bi, 0       ; 3 uses
  %i.bl = add i32 %i.bk, -1
  %spec.store.select4 = tail call i32 @llvm.smax.i32(i32 %i.bk, i32 1)
  br label %bb.aa

default.unreachable:                              ; preds = %bb.u
  unreachable

bb.aa:                                            ; preds = %bb.u, %bb.u, %bb.z, %bb.w
  %.1441 = phi i32 [ %spec.store.select4, %bb.z ], [ %spec.store.select, %bb.w ], [ 18, %bb.u ], [ 18, %bb.u ]
  %.0427 = phi i32 [ %i.bk, %bb.z ], [ %spec.store.select, %bb.w ], [ -1, %bb.u ], [ -1, %bb.u ] ; 11 uses
  %.0423 = phi i32 [ %i.bl, %bb.z ], [ %spec.store.select, %bb.w ], [ -1, %bb.u ], [ -1, %bb.u ] ; 4 uses
  %.2406 = phi i32 [ %.1405, %bb.z ], [ %.0404, %bb.w ], [ 1, %bb.u ], [ 1, %bb.u ] ; 2 uses
  %.0383 = phi i32 [ %2, %bb.z ], [ %spec.store.select, %bb.w ], [ 0, %bb.u ], [ 0, %bb.u ] ; 2 uses
  %i.bm = add nuw i32 %.1441, 1
  %i.bn = sext i32 %i.bm to i64
  %i.bo = tail call noalias ptr @malloc(i64 noundef %i.bn) #26 ; 17 uses
  %i.bp = ptrtoint ptr %i.bo to i64               ; 4 uses
  %.not493 = icmp eq ptr %i.bo, null
  br i1 %.not493, label %Bclear.exit594, label %bb.ab

Bclear.exit594:                                   ; preds = %bb.aa
  tail call void @free(ptr noundef nonnull %i.n) #24
  br label %nrv_alloc.exit

bb.ab:                                            ; preds = %bb.aa
  %or.cond6 = icmp ult i32 %.0427, 15
  %or.cond8 = and i1 %i.bf, %or.cond6
  br i1 %or.cond8, label %bb.ac, label %.loopexit834

bb.ac:                                            ; preds = %bb.ab
  %i.bq = icmp sgt i32 %.2411, 0
  br i1 %i.bq, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.br = and i32 %.2411, 15
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr [8 x i8], ptr @tens, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !39 ; 2 uses
  %i.bv = lshr i32 %.2411, 4                      ; 2 uses
  %i.bw = and i32 %.2411, 256
  %.not497 = icmp eq i32 %i.bw, 0                 ; 3 uses
  %i.bx = and i32 %i.bv, 15
  %i.by = fdiv double %.sroa.090.0, 1.000000e+256
  %.0433 = select i1 %.not497, i32 2, i32 3       ; 2 uses
  %.0420 = select i1 %.not497, i32 %i.bv, i32 %i.bx ; 2 uses
  %.sroa.090.1 = select i1 %.not497, double %.sroa.090.0, double %i.by
  %.not498940 = icmp eq i32 %.0420, 0
  br i1 %.not498940, label %._crit_edge, label %.lr.ph945

.lr.ph945:                                        ; preds = %bb.ad, %bb.af
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.af ], [ 0, %bb.ad ] ; 2 uses
  %.0380944 = phi double [ %.1381, %bb.af ], [ %i.bu, %bb.ad ] ; 2 uses
  %.1421943 = phi i32 [ %i.ce, %bb.af ], [ %.0420, %bb.ad ] ; 2 uses
  %.1434942 = phi i32 [ %.2435, %bb.af ], [ %.0433, %bb.ad ] ; 2 uses
  %i.bz = and i32 %.1421943, 1
  %.not554 = icmp eq i32 %i.bz, 0
  br i1 %.not554, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph945
  %i.ca = add i32 %.1434942, 1
  %i.cb = getelementptr [8 x i8], ptr @bigtens, i64 %indvars.iv
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !39
  %i.cd = fmul double %.0380944, %i.cc
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph945, %bb.ae
  %.2435 = phi i32 [ %i.ca, %bb.ae ], [ %.1434942, %.lr.ph945 ] ; 2 uses
  %.1381 = phi double [ %i.cd, %bb.ae ], [ %.0380944, %.lr.ph945 ] ; 2 uses
  %i.ce = lshr i32 %.1421943, 1                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not498 = icmp eq i32 %i.ce, 0
  br i1 %.not498, label %._crit_edge, label %.lr.ph945, !llvm.loop !64

._crit_edge:                                      ; preds = %bb.af, %bb.ad
  %.1434.lcssa = phi i32 [ %.0433, %bb.ad ], [ %.2435, %bb.af ]
  %.0380.lcssa = phi double [ %i.bu, %bb.ad ], [ %.1381, %bb.af ]
  %i.cf = fdiv double %.sroa.090.1, %.0380.lcssa
  br label %.loopexit835

bb.ag:                                            ; preds = %bb.ac
  %.not494 = icmp eq i32 %.2411, 0
  br i1 %.not494, label %.loopexit835, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cg = sub i32 0, %.2411                       ; 2 uses
  %i.ch = and i32 %i.cg, 15
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr [8 x i8], ptr @tens, i64 %i.ci
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !39
  %i.cl = fmul double %.sroa.090.0, %i.ck         ; 2 uses
  %i.cm = ashr i32 %i.cg, 4                       ; 2 uses
  %.not495934 = icmp eq i32 %i.cm, 0
  br i1 %.not495934, label %.loopexit835, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ah, %bb.aj
  %.sroa.090.2938 = phi double [ %.sroa.090.3, %bb.aj ], [ %i.cl, %bb.ah ] ; 2 uses
  %.2422937 = phi i32 [ %i.ct, %bb.aj ], [ %i.cm, %bb.ah ] ; 2 uses
  %.3436936 = phi i32 [ %.4437, %bb.aj ], [ 2, %bb.ah ] ; 2 uses
  %.3443935 = phi i32 [ %i.cu, %bb.aj ], [ 0, %bb.ah ] ; 2 uses
  %i.cn = and i32 %.2422937, 1
  %.not496 = icmp eq i32 %i.cn, 0
  br i1 %.not496, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph
  %i.co = add i32 %.3436936, 1
  %i.cp = sext i32 %.3443935 to i64
  %i.cq = getelementptr [8 x i8], ptr @bigtens, i64 %i.cp
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !39
  %i.cs = fmul double %.sroa.090.2938, %i.cr
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph, %bb.ai
  %.4437 = phi i32 [ %i.co, %bb.ai ], [ %.3436936, %.lr.ph ] ; 2 uses
  %.sroa.090.3 = phi double [ %i.cs, %bb.ai ], [ %.sroa.090.2938, %.lr.ph ] ; 2 uses
  %i.ct = ashr i32 %.2422937, 1                   ; 2 uses
  %i.cu = add i32 %.3443935, 1
  %.not495 = icmp eq i32 %i.ct, 0
  br i1 %.not495, label %.loopexit835, label %.lr.ph, !llvm.loop !65

.loopexit835:                                     ; preds = %bb.aj, %bb.ah, %bb.ag, %._crit_edge
  %.5438 = phi i32 [ %.1434.lcssa, %._crit_edge ], [ 2, %bb.ag ], [ 2, %bb.ah ], [ %.4437, %bb.aj ] ; 2 uses
  %.sroa.090.4 = phi double [ %i.cf, %._crit_edge ], [ %.sroa.090.0, %bb.ag ], [ %i.cl, %bb.ah ], [ %.sroa.090.3, %bb.aj ] ; 3 uses
  %i.cv = fcmp olt double %.sroa.090.4, 1.000000e+00
  %or.cond10 = select i1 %or.cond, i1 %i.cv, i1 false
  %i.cw = icmp sgt i32 %.0427, 0
  %or.cond12 = and i1 %i.cw, %or.cond10
  br i1 %or.cond12, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %.loopexit835
  %i.cx = icmp slt i32 %.0423, 1
  br i1 %i.cx, label %.loopexit834, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cy = add i32 %.2411, -1
  %i.cz = fmul nnan double %.sroa.090.4, 1.000000e+01
  %i.da = add i32 %.5438, 1
  br label %bb.am

end_hunk_1
begin_hunk_2_@ruby_dtoa:bb.a
  %i.hq = fcmp une double %i.hm, 0.000000e+00
  br i1 %i.hq, label %.lr.ph963, label %Bclear.exit647

bb.bc:                                            ; preds = %.loopexit834
  %i.hr = icmp eq i32 %.2406, 0
  br i1 %i.hr, label %.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hs = tail call noalias dereferenceable_or_null(36) ptr @malloc(i64 noundef 36) #26 ; 4 uses
  %.not.i.i = icmp eq ptr %i.hs, null
  br i1 %.not.i.i, label %.thread777.thread, label %i2b.exit

i2b.exit:                                         ; preds = %bb.bd
  %i.ht = add i32 %i.fq, 1075
  %i.hu = sub i32 54, %i.aw
  %i.hv = select i1 %.not492.not, i32 %i.ht, i32 %i.hu ; 2 uses
  %i.hw = add i32 %i.hv, %.1391
  %i.hx = add i32 %i.hv, %.1397
  %i.hy = getelementptr i8, ptr %i.hs, i64 8
  %i.hz = getelementptr i8, ptr %i.hs, i64 24
  store i32 1, ptr %i.hz, align 8, !tbaa !7
  store <4 x i32> <i32 1, i32 2, i32 0, i32 1>, ptr %i.hy, align 8, !tbaa !7
  br label %.thread

.thread:                                          ; preds = %.loopexit834.thread, %i2b.exit, %bb.bc
  %i.ia = phi i1 [ true, %bb.bc ], [ false, %i2b.exit ], [ true, %.loopexit834.thread ] ; 4 uses
  %.1386.not11661168 = phi i1 [ false, %bb.bc ], [ false, %i2b.exit ], [ true, %.loopexit834.thread ]
  %.1717 = phi ptr [ null, %bb.bc ], [ %i.hs, %i2b.exit ], [ null, %.loopexit834.thread ] ; 4 uses
  %.2398 = phi i32 [ %.1397, %bb.bc ], [ %i.hx, %i2b.exit ], [ %.1397, %.loopexit834.thread ] ; 2 uses
  %.2392 = phi i32 [ %.1391, %bb.bc ], [ %i.hw, %i2b.exit ], [ %.1391, %.loopexit834.thread ] ; 4 uses
  %i.ib = icmp sgt i32 %.1397, 0
  %i.ic = icmp sgt i32 %.2392, 0
  %or.cond18 = select i1 %i.ib, i1 %i.ic, i1 false
  br i1 %or.cond18, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.thread
  %i.id = tail call i32 @llvm.umin.i32(i32 %.1397, i32 %.2392) ; 3 uses
  %i.ie = sub i32 %.2398, %i.id
  %i.if = sub nsw i32 %.1397, %i.id
  %i.ig = sub nsw i32 %.2392, %i.id
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.thread
  %.0402 = phi i32 [ %i.if, %bb.be ], [ %.1397, %.thread ] ; 3 uses
  %.3399 = phi i32 [ %i.ie, %bb.be ], [ %.2398, %.thread ]
  %.3393 = phi i32 [ %i.ig, %bb.be ], [ %.2392, %.thread ]
  %i.ih = icmp sgt i32 %.0408, 0
  br i1 %i.ih, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.ia, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ii = tail call fastcc ptr @pow5mult(ptr noundef %.1717, i32 noundef %.0408) ; 4 uses
  %.not505 = icmp eq ptr %i.ii, null
  br i1 %.not505, label %.thread777.thread, label %Bclear.exit596

Bclear.exit596:                                   ; preds = %bb.bh
  %i.ij = tail call fastcc ptr @mult(ptr noundef nonnull %i.ii, ptr noundef nonnull %i.n) ; 2 uses
  tail call void @free(ptr noundef nonnull %i.n) #24
  %.not506 = icmp eq ptr %i.ij, null
  br i1 %.not506, label %Bclear.exit653, label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.ik = tail call fastcc ptr @pow5mult(ptr noundef nonnull %i.n, i32 noundef %.0408) ; 2 uses
  %.not504 = icmp eq ptr %i.ik, null
  br i1 %.not504, label %.thread777, label %bb.bj

bb.bj:                                            ; preds = %Bclear.exit596, %bb.bi, %bb.bf
  %.0734 = phi ptr [ %i.ik, %bb.bi ], [ %i.ij, %Bclear.exit596 ], [ %i.n, %bb.bf ] ; 4 uses
  %.2718 = phi ptr [ %.1717, %bb.bi ], [ %i.ii, %Bclear.exit596 ], [ %.1717, %bb.bf ] ; 11 uses
  %i.il = tail call noalias dereferenceable_or_null(36) ptr @malloc(i64 noundef 36) #26 ; 5 uses
  %.not.i.i597 = icmp eq ptr %i.il, null
  br i1 %.not.i.i597, label %.thread777, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.im = getelementptr i8, ptr %i.il, i64 8
  %i.in = getelementptr i8, ptr %i.il, i64 24
  store i32 1, ptr %i.in, align 8, !tbaa !7
  store <4 x i32> <i32 1, i32 2, i32 0, i32 1>, ptr %i.im, align 8, !tbaa !7
  %i.io = icmp sgt i32 %.0389, 0
  br i1 %i.io, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ip = tail call fastcc ptr @pow5mult(ptr noundef nonnull %i.il, i32 noundef %.0389) ; 2 uses
  %.not508 = icmp eq ptr %i.ip, null
  br i1 %.not508, label %.thread777, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.1711 = phi ptr [ %i.ip, %bb.bl ], [ %i.il, %bb.bk ] ; 5 uses
  %i.iq = icmp sgt i32 %spec.select, 1
  %or.cond20.not511 = and i1 %i.iq, %i.ia
  %.sroa.090.0.extract.trunc133 = trunc i64 %.pre-phi to i32 ; 2 uses
  %i.ir = and i32 %.sroa.090.4.extract.trunc139, 1048575
  %i.is = or i32 %i.ir, %.sroa.090.0.extract.trunc133
  %i.it = icmp ne i32 %i.is, 0
  %or.cond563.not819 = or i1 %i.it, %or.cond20.not511
  %.not513 = icmp samesign ult i64 %.pre-phi, 9007199254740992
  %or.cond564 = or i1 %.not513, %or.cond563.not819 ; 2 uses
  %not.or.cond564 = xor i1 %or.cond564, true
  %i.iu = zext i1 %not.or.cond564 to i32          ; 2 uses
  %.4400 = add i32 %.3399, %i.iu                  ; 3 uses
  %.4394 = add i32 %.3393, %i.iu                  ; 4 uses
  %.not514 = icmp eq i32 %.0389, 0
  br i1 %.not514, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.iv = getelementptr i8, ptr %.1711, i64 24
  %i.iw = getelementptr i8, ptr %.1711, i64 20
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !49
  %i.iy = add i32 %i.ix, -1
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr [4 x i8], ptr %i.iv, i64 %i.iz
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !7
  %i.jc = tail call fastcc i32 @hi0bits(i32 noundef %i.jb)
  %i.jd = sub nuw nsw i32 32, %i.jc
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %i.je = phi i32 [ %i.jd, %bb.bn ], [ 1, %bb.bm ]
  %i.jf = add i32 %i.je, %.4394
  %i.jg = and i32 %i.jf, 31                       ; 2 uses
  %.not515 = icmp eq i32 %i.jg, 0
  %i.jh = sub nuw nsw i32 32, %i.jg
  %spec.select565 = select i1 %.not515, i32 0, i32 %i.jh ; 4 uses
  %i.ji = icmp samesign ugt i32 %spec.select565, 4
  br i1 %i.ji, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.jj = add nsw i32 %spec.select565, -4         ; 3 uses
  %i.jk = add i32 %i.jj, %.4400
  %i.jl = add i32 %i.jj, %.0402
  %i.jm = add i32 %i.jj, %.4394
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bo
  %.not516 = icmp eq i32 %spec.select565, 4
  br i1 %.not516, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jn = add nuw nsw i32 %spec.select565, 28     ; 3 uses
  %i.jo = add i32 %i.jn, %.4400
  %i.jp = add i32 %i.jn, %.0402
  %i.jq = add i32 %i.jn, %.4394
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br, %bb.bp
  %.1403 = phi i32 [ %i.jl, %bb.bp ], [ %i.jp, %bb.br ], [ %.0402, %bb.bq ] ; 2 uses
  %.5401 = phi i32 [ %i.jk, %bb.bp ], [ %i.jo, %bb.br ], [ %.4400, %bb.bq ] ; 2 uses
  %.5395 = phi i32 [ %i.jm, %bb.bp ], [ %i.jq, %bb.br ], [ %.4394, %bb.bq ] ; 2 uses
  %i.jr = icmp sgt i32 %.5401, 0
  br i1 %i.jr, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.js = tail call fastcc ptr @lshift(ptr noundef nonnull %.0734, i32 noundef %.5401) ; 2 uses
  %.not517 = icmp eq ptr %i.js, null
  br i1 %.not517, label %Bclear.exit649, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.1735 = phi ptr [ %i.js, %bb.bt ], [ %.0734, %bb.bs ] ; 8 uses
  %i.jt = icmp sgt i32 %.5395, 0
  br i1 %i.jt, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ju = tail call fastcc ptr @lshift(ptr noundef nonnull %.1711, i32 noundef %.5395) ; 2 uses
  %.not518 = icmp eq ptr %i.ju, null
  br i1 %.not518, label %.thread777, label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.2712 = phi ptr [ %i.ju, %bb.bv ], [ %.1711, %bb.bu ] ; 32 uses
  br i1 %or.cond, label %bb.bx, label %cmp.exit.thread

bb.bx:                                            ; preds = %bb.bw
  %i.jv = getelementptr i8, ptr %.1735, i64 20
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !49 ; 3 uses
  %i.jx = getelementptr i8, ptr %.2712, i64 20
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !49 ; 2 uses
  %.not.i599 = icmp eq i32 %i.jw, %i.jy
  br i1 %.not.i599, label %bb.by, label %cmp.exit

bb.by:                                            ; preds = %bb.bx
  %i.jz = getelementptr i8, ptr %.1735, i64 24    ; 2 uses
  %i.ka = sext i32 %i.jw to i64                   ; 2 uses
  %i.kb = getelementptr [4 x i8], ptr %i.jz, i64 %i.ka
  %i.kc = getelementptr i8, ptr %.2712, i64 24
  %i.kd = getelementptr [4 x i8], ptr %i.kc, i64 %i.ka
  br label %bb.bz

bb.bz:                                            ; preds = %bb.cb, %bb.by
  %.018.i = phi ptr [ %i.kd, %bb.by ], [ %i.kg, %bb.cb ]
  %.017.i600 = phi ptr [ %i.kb, %bb.by ], [ %i.ke, %bb.cb ]
  %i.ke = getelementptr i8, ptr %.017.i600, i64 -4 ; 3 uses
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !7  ; 2 uses
  %i.kg = getelementptr i8, ptr %.018.i, i64 -4   ; 2 uses
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !7  ; 2 uses
  %.not23.i = icmp eq i32 %i.kf, %i.kh
  br i1 %.not23.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ki = icmp ult i32 %i.kf, %i.kh
  %cond.fr749 = freeze i1 %i.ki
  br i1 %cond.fr749, label %cmp.exit.thread751, label %cmp.exit.thread

bb.cb:                                            ; preds = %bb.bz
  %.not24.i = icmp ugt ptr %i.ke, %i.jz
  br i1 %.not24.i, label %bb.bz, label %cmp.exit.thread

cmp.exit:                                         ; preds = %bb.bx
  %i.kj = sub i32 %i.jw, %i.jy
  %i.kk = icmp slt i32 %i.kj, 0
  br i1 %i.kk, label %cmp.exit.thread751, label %cmp.exit.thread

cmp.exit.thread751:                               ; preds = %bb.ca, %cmp.exit
  %i.kl = add i32 %.2411, -1                      ; 2 uses
  %i.km = tail call fastcc ptr @multadd(ptr noundef %.1735, i32 noundef 10, i32 noundef 0) ; 4 uses
  %.not520 = icmp eq ptr %i.km, null
  br i1 %.not520, label %Bclear.exit649, label %bb.cc

bb.cc:                                            ; preds = %cmp.exit.thread751
  br i1 %i.ia, label %cmp.exit.thread, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.kn = tail call fastcc ptr @multadd(ptr noundef %.2718, i32 noundef 10, i32 noundef 0) ; 2 uses
  %.not521 = icmp eq ptr %i.kn, null
  br i1 %.not521, label %Bclear.exit649, label %cmp.exit.thread

cmp.exit.thread:                                  ; preds = %bb.cb, %bb.ca, %bb.cc, %bb.cd, %cmp.exit, %bb.bw
  %.2736 = phi ptr [ %i.km, %bb.cc ], [ %i.km, %bb.cd ], [ %.1735, %cmp.exit ], [ %.1735, %bb.bw ], [ %.1735, %bb.ca ], [ %.1735, %bb.cb ] ; 13 uses
  %.3719 = phi ptr [ %.2718, %bb.cc ], [ %i.kn, %bb.cd ], [ %.2718, %cmp.exit ], [ %.2718, %bb.bw ], [ %.2718, %bb.ca ], [ %.2718, %bb.cb ] ; 11 uses
  %.5432 = phi i32 [ %.0423, %bb.cc ], [ %.0423, %bb.cd ], [ %.0427, %cmp.exit ], [ %.0427, %bb.bw ], [ %.0427, %bb.ca ], [ %.0427, %bb.cb ] ; 4 uses
  %.7416 = phi i32 [ %i.kl, %bb.cc ], [ %i.kl, %bb.cd ], [ %.2411, %cmp.exit ], [ %.2411, %bb.bw ], [ %.2411, %bb.ca ], [ %.2411, %bb.cb ] ; 10 uses
  %i.ko = icmp slt i32 %.5432, 1
  br i1 %i.ko, label %bb.ce, label %bb.cl

bb.ce:                                            ; preds = %cmp.exit.thread
  switch i32 %spec.select, label %bb.cl [
    i32 5, label %bb.cf
    i32 3, label %bb.cf
  ]

bb.cf:                                            ; preds = %bb.ce, %bb.ce
  %i.kp = icmp slt i32 %.5432, 0
  br i1 %i.kp, label %cmp.exit607.thread, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.kq = tail call fastcc ptr @multadd(ptr noundef %.2712, i32 noundef 5, i32 noundef 0) ; 7 uses
  %i.kr = getelementptr i8, ptr %.2736, i64 20
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !49 ; 3 uses
  %i.kt = getelementptr i8, ptr %i.kq, i64 20
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !49 ; 2 uses
  %.not.i601 = icmp eq i32 %i.ks, %i.ku
  br i1 %.not.i601, label %bb.ch, label %cmp.exit607

bb.ch:                                            ; preds = %bb.cg
  %i.kv = getelementptr i8, ptr %.2736, i64 24    ; 2 uses
  %i.kw = sext i32 %i.ks to i64                   ; 2 uses
  %i.kx = getelementptr [4 x i8], ptr %i.kv, i64 %i.kw
  %i.ky = getelementptr i8, ptr %i.kq, i64 24
  %i.kz = getelementptr [4 x i8], ptr %i.ky, i64 %i.kw
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ck, %bb.ch
  %.018.i603 = phi ptr [ %i.kz, %bb.ch ], [ %i.lc, %bb.ck ]
  %.017.i604 = phi ptr [ %i.kx, %bb.ch ], [ %i.la, %bb.ck ]
  %i.la = getelementptr i8, ptr %.017.i604, i64 -4 ; 3 uses
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !7  ; 2 uses
  %i.lc = getelementptr i8, ptr %.018.i603, i64 -4 ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !7  ; 2 uses
  %.not23.i605 = icmp eq i32 %i.lb, %i.ld
  br i1 %.not23.i605, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.le = icmp ult i32 %i.lb, %i.ld
  %cond.fr754 = freeze i1 %i.le
  br i1 %cond.fr754, label %cmp.exit607.thread, label %cmp.exit607.thread756

bb.ck:                                            ; preds = %bb.ci
  %.not24.i606 = icmp ugt ptr %i.la, %i.kv
  br i1 %.not24.i606, label %bb.ci, label %cmp.exit607.thread

cmp.exit607:                                      ; preds = %bb.cg
  %i.lf = sub i32 %i.ks, %i.ku
  %i.lg = icmp slt i32 %i.lf, 1
  br i1 %i.lg, label %cmp.exit607.thread, label %cmp.exit607.thread756

cmp.exit607.thread:                               ; preds = %bb.ck, %bb.cj, %bb.cf, %cmp.exit607, %bb.ax, %bb.ao
  %.3737 = phi ptr [ %i.n, %bb.ax ], [ %.2736, %bb.cf ], [ %.2736, %cmp.exit607 ], [ %i.n, %bb.ao ], [ %.2736, %bb.cj ], [ %.2736, %bb.ck ]
  %.4720 = phi ptr [ null, %bb.ax ], [ %.3719, %bb.cf ], [ %.3719, %cmp.exit607 ], [ null, %bb.ao ], [ %.3719, %bb.cj ], [ %.3719, %bb.ck ]
  %.3 = phi ptr [ null, %bb.ax ], [ %.2712, %bb.cf ], [ %i.kq, %cmp.exit607 ], [ null, %bb.ao ], [ %i.kq, %bb.cj ], [ %i.kq, %bb.ck ]
  %i.lh = xor i32 %.0383, -1
  br label %.loopexit823

cmp.exit607.thread756:                            ; preds = %bb.cj, %bb.ax, %cmp.exit607, %bb.an
  %.4738 = phi ptr [ %i.n, %bb.ax ], [ %.2736, %cmp.exit607 ], [ %i.n, %bb.an ], [ %.2736, %bb.cj ]
  %.5721 = phi ptr [ null, %bb.ax ], [ %.3719, %cmp.exit607 ], [ null, %bb.an ], [ %.3719, %bb.cj ]
  %.4713 = phi ptr [ null, %bb.ax ], [ %i.kq, %cmp.exit607 ], [ null, %bb.an ], [ %i.kq, %bb.cj ]
  %.8417 = phi i32 [ %.2411, %bb.ax ], [ %.7416, %cmp.exit607 ], [ %.3412, %bb.an ], [ %.7416, %bb.cj ]
  %i.li = getelementptr i8, ptr %i.bo, i64 1
  store i8 49, ptr %i.bo, align 1, !tbaa !11
  %i.lj = add i32 %.8417, 1
  br label %.loopexit823

bb.cl:                                            ; preds = %bb.ce, %cmp.exit.thread
  br i1 %i.ia, label %.preheader824.preheader, label %bb.cm

.preheader824.preheader:                          ; preds = %bb.cl
  %smax1071 = tail call i32 @llvm.smax.i32(i32 %.5432, i32 1)
  br label %.preheader824

bb.cm:                                            ; preds = %bb.cl
  %i.lk = icmp sgt i32 %.1403, 0
  br i1 %i.lk, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.ll = tail call fastcc ptr @lshift(ptr noundef %.3719, i32 noundef %.1403) ; 2 uses
  %.not525 = icmp eq ptr %i.ll, null
  br i1 %.not525, label %Bclear.exit649, label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.6722 = phi ptr [ %i.ll, %bb.cn ], [ %.3719, %bb.cm ] ; 7 uses
  br i1 %or.cond564, label %bb.cs, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.lm = getelementptr i8, ptr %.6722, i64 8
  %i.ln = load i32, ptr %i.lm, align 8, !tbaa !44
  %i.lo = tail call fastcc ptr @Balloc(i32 noundef %i.ln) ; 3 uses
  %.not527 = icmp eq ptr %i.lo, null
  br i1 %.not527, label %Bclear.exit649, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.lp = getelementptr i8, ptr %.6722, i64 20
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !49
  %i.lr = sext i32 %i.lq to i64
  %i.ls = shl nsw i64 %i.lr, 2
  %i.lt = add nsw i64 %i.ls, 8                    ; 2 uses
  %.not.i608 = icmp eq i64 %i.lt, 0
  br i1 %.not.i608, label %ruby_nonempty_memcpy.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.lu = getelementptr i8, ptr %.6722, i64 16
  %i.lv = getelementptr i8, ptr %i.lo, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.lv, ptr noundef nonnull readonly align 1 %i.lu, i64 noundef range(i64 1, 0) %i.lt, i1 noundef false) #24
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.cq, %bb.cr
  %i.lw = tail call fastcc ptr @lshift(ptr noundef nonnull %i.lo, i32 noundef 1) ; 2 uses
  %.not528 = icmp eq ptr %i.lw, null
  br i1 %.not528, label %Bclear.exit649, label %bb.cs

bb.cs:                                            ; preds = %ruby_nonempty_memcpy.exit, %bb.co
  %.7 = phi ptr [ %.6722, %bb.co ], [ %i.lw, %ruby_nonempty_memcpy.exit ]
  %i.lx = icmp ne i32 %spec.select, 1             ; 2 uses
  %i.ly = and i32 %.sroa.090.0.extract.trunc133, 1 ; 2 uses
  br label %bb.ct

bb.ct:                                            ; preds = %bb.ec, %bb.cs
  %.5739 = phi ptr [ %.2736, %bb.cs ], [ %i.pe, %bb.ec ] ; 15 uses
  %.0728 = phi ptr [ %.6722, %bb.cs ], [ %.1729, %bb.ec ] ; 12 uses
  %.8 = phi ptr [ %.7, %bb.cs ], [ %.9723, %bb.ec ] ; 13 uses
  %.8448 = phi i32 [ 1, %bb.cs ], [ %i.pj, %bb.ec ] ; 2 uses
  %.9 = phi ptr [ %i.bo, %bb.cs ], [ %i.pc, %bb.ec ] ; 10 uses
  %i.lz = tail call fastcc i32 @quorem(ptr noundef %.5739, ptr noundef %.2712) ; 5 uses
  %i.ma = add i32 %i.lz, 48                       ; 11 uses
  %i.mb = getelementptr i8, ptr %.5739, i64 20    ; 3 uses
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !49
  %i.md = getelementptr i8, ptr %.0728, i64 20
  %i.me = load i32, ptr %i.md, align 4, !tbaa !49 ; 2 uses
  %i.mf = sub i32 %i.mc, %i.me                    ; 2 uses
  %.not.i610 = icmp eq i32 %i.mf, 0
  br i1 %.not.i610, label %bb.cu, label %cmp.exit616

bb.cu:                                            ; preds = %bb.ct
  %i.mg = getelementptr i8, ptr %.5739, i64 24    ; 2 uses
  %i.mh = sext i32 %i.me to i64                   ; 2 uses
  %i.mi = getelementptr [4 x i8], ptr %i.mg, i64 %i.mh
  %i.mj = getelementptr i8, ptr %.0728, i64 24
  %i.mk = getelementptr [4 x i8], ptr %i.mj, i64 %i.mh
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cx, %bb.cu
  %.018.i612 = phi ptr [ %i.mk, %bb.cu ], [ %i.mn, %bb.cx ]
  %.017.i613 = phi ptr [ %i.mi, %bb.cu ], [ %i.ml, %bb.cx ]
  %i.ml = getelementptr i8, ptr %.017.i613, i64 -4 ; 3 uses
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !7  ; 2 uses
  %i.mn = getelementptr i8, ptr %.018.i612, i64 -4 ; 2 uses
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !7  ; 2 uses
  %.not23.i614 = icmp eq i32 %i.mm, %i.mo
  br i1 %.not23.i614, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.mp = icmp ult i32 %i.mm, %i.mo
  %i.mq = select i1 %i.mp, i32 -1, i32 1
  br label %cmp.exit616

bb.cx:                                            ; preds = %bb.cv
  %.not24.i615 = icmp ugt ptr %i.ml, %i.mg
  br i1 %.not24.i615, label %bb.cv, label %cmp.exit616

cmp.exit616:                                      ; preds = %bb.cx, %bb.ct, %bb.cw
  %.0.i611 = phi i32 [ %i.mf, %bb.ct ], [ %i.mq, %bb.cw ], [ 0, %bb.cx ] ; 3 uses
  %i.mr = tail call fastcc ptr @diff(ptr noundef %.2712, ptr noundef %.8) ; 5 uses
  %.not529 = icmp eq ptr %i.mr, null
  br i1 %.not529, label %Bclear.exit649, label %bb.cy

bb.cy:                                            ; preds = %cmp.exit616
  %i.ms = getelementptr i8, ptr %i.mr, i64 16
  %i.mt = load i32, ptr %i.ms, align 8, !tbaa !48
  %.not530 = icmp eq i32 %i.mt, 0
  br i1 %.not530, label %bb.cz, label %Bclear.exit625

bb.cz:                                            ; preds = %bb.cy
  %i.mu = load i32, ptr %i.mb, align 4, !tbaa !49
  %i.mv = getelementptr i8, ptr %i.mr, i64 20
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !49 ; 2 uses
  %i.mx = sub i32 %i.mu, %i.mw                    ; 2 uses
  %.not.i617 = icmp eq i32 %i.mx, 0
  br i1 %.not.i617, label %bb.da, label %Bclear.exit625

bb.da:                                            ; preds = %bb.cz
  %i.my = getelementptr i8, ptr %.5739, i64 24    ; 2 uses
  %i.mz = sext i32 %i.mw to i64                   ; 2 uses
  %i.na = getelementptr [4 x i8], ptr %i.my, i64 %i.mz
  %i.nb = getelementptr i8, ptr %i.mr, i64 24
  %i.nc = getelementptr [4 x i8], ptr %i.nb, i64 %i.mz
  br label %bb.db

bb.db:                                            ; preds = %bb.dd, %bb.da
  %.018.i619 = phi ptr [ %i.nc, %bb.da ], [ %i.nf, %bb.dd ]
  %.017.i620 = phi ptr [ %i.na, %bb.da ], [ %i.nd, %bb.dd ]
  %i.nd = getelementptr i8, ptr %.017.i620, i64 -4 ; 3 uses
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !7  ; 2 uses
  %i.nf = getelementptr i8, ptr %.018.i619, i64 -4 ; 2 uses
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !7  ; 2 uses
  %.not23.i621 = icmp eq i32 %i.ne, %i.ng
  br i1 %.not23.i621, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.nh = icmp ult i32 %i.ne, %i.ng
  %i.ni = select i1 %i.nh, i32 -1, i32 1
  br label %Bclear.exit625

bb.dd:                                            ; preds = %bb.db
  %.not24.i622 = icmp ugt ptr %i.nd, %i.my
  br i1 %.not24.i622, label %bb.db, label %Bclear.exit625

Bclear.exit625:                                   ; preds = %bb.dd, %bb.dc, %bb.cz, %bb.cy
  %i.nj = phi i32 [ 1, %bb.cy ], [ %i.mx, %bb.cz ], [ %i.ni, %bb.dc ], [ 0, %bb.dd ] ; 4 uses
  tail call void @free(ptr noundef nonnull %i.mr) #24
  %i.nk = or i32 %i.nj, %i.ly
  %i.nl = icmp eq i32 %i.nk, 0
  %or.cond566 = and i1 %i.lx, %i.nl
  br i1 %or.cond566, label %bb.de, label %bb.dg

bb.de:                                            ; preds = %Bclear.exit625
  %i.nm = icmp eq i32 %i.ma, 57
  br i1 %i.nm, label %bb.du, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.nn = icmp sgt i32 %.0.i611, 0
  %i.no = add i32 %i.lz, 49
  %spec.select567 = select i1 %i.nn, i32 %i.no, i32 %i.ma
  %i.np = trunc i32 %spec.select567 to i8
  %i.nq = getelementptr i8, ptr %.9, i64 1
  store i8 %i.np, ptr %.9, align 1, !tbaa !11
  br label %.loopexit823

bb.dg:                                            ; preds = %Bclear.exit625
  %i.nr = icmp slt i32 %.0.i611, 0
  br i1 %i.nr, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ns = or i32 %.0.i611, %i.ly
  %i.nt = icmp eq i32 %i.ns, 0
  %or.cond568 = and i1 %i.lx, %i.nt
  br i1 %or.cond568, label %bb.di, label %bb.ds

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.nu = getelementptr i8, ptr %.5739, i64 24
  %i.nv = load i32, ptr %i.nu, align 8, !tbaa !7
  %.not539 = icmp eq i32 %i.nv, 0
  br i1 %.not539, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.nw = load i32, ptr %i.mb, align 4, !tbaa !49
  %i.nx = icmp sgt i32 %i.nw, 1
  %i.ny = icmp sgt i32 %i.nj, 0
  %or.cond32 = and i1 %i.ny, %i.nx
  br i1 %or.cond32, label %bb.dl, label %.thread767

bb.dk:                                            ; preds = %bb.di
  %.old31 = icmp sgt i32 %i.nj, 0
  br i1 %.old31, label %bb.dl, label %.thread767

bb.dl:                                            ; preds = %bb.dj, %bb.dk
  %i.nz = tail call fastcc ptr @lshift(ptr noundef nonnull %.5739, i32 noundef 1) ; 8 uses
  %.not540 = icmp eq ptr %i.nz, null
  br i1 %.not540, label %Bclear.exit649, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.oa = getelementptr i8, ptr %i.nz, i64 20
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !49 ; 3 uses
  %i.oc = getelementptr i8, ptr %.2712, i64 20
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !49 ; 2 uses
  %.not.i626 = icmp eq i32 %i.ob, %i.od
  br i1 %.not.i626, label %bb.dn, label %cmp.exit632

bb.dn:                                            ; preds = %bb.dm
  %i.oe = getelementptr i8, ptr %i.nz, i64 24     ; 2 uses
  %i.of = sext i32 %i.ob to i64                   ; 2 uses
  %i.og = getelementptr [4 x i8], ptr %i.oe, i64 %i.of
  %i.oh = getelementptr i8, ptr %.2712, i64 24
  %i.oi = getelementptr [4 x i8], ptr %i.oh, i64 %i.of
  br label %bb.do

bb.do:                                            ; preds = %bb.dq, %bb.dn
  %.018.i628 = phi ptr [ %i.oi, %bb.dn ], [ %i.ol, %bb.dq ]
  %.017.i629 = phi ptr [ %i.og, %bb.dn ], [ %i.oj, %bb.dq ]
  %i.oj = getelementptr i8, ptr %.017.i629, i64 -4 ; 3 uses
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !7  ; 2 uses
  %i.ol = getelementptr i8, ptr %.018.i628, i64 -4 ; 2 uses
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !7  ; 2 uses
  %.not23.i630 = icmp eq i32 %i.ok, %i.om
  br i1 %.not23.i630, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.on = icmp ult i32 %i.ok, %i.om
  %cond.fr759 = freeze i1 %i.on
  br i1 %cond.fr759, label %.thread767, label %cmp.exit632.thread762

bb.dq:                                            ; preds = %bb.do
  %.not24.i631 = icmp ugt ptr %i.oj, %i.oe
  br i1 %.not24.i631, label %bb.do, label %bb.dr

cmp.exit632:                                      ; preds = %bb.dm
  %i.oo = sub i32 %i.ob, %i.od
  %i.op = icmp sgt i32 %i.oo, 0
  br i1 %i.op, label %cmp.exit632.thread762, label %.thread767

bb.dr:                                            ; preds = %bb.dq
  %i.oq = and i32 %i.lz, 1
  %.not546 = icmp eq i32 %i.oq, 0
  br i1 %.not546, label %.thread767, label %cmp.exit632.thread762

cmp.exit632.thread762:                            ; preds = %bb.dp, %bb.dr, %cmp.exit632
  %i.or = add i32 %i.lz, 49
  %i.os = icmp eq i32 %i.ma, 57
  br i1 %i.os, label %bb.du, label %.thread767

.thread767:                                       ; preds = %cmp.exit632, %bb.dp, %bb.dk, %cmp.exit632.thread762, %bb.dr, %bb.dj
  %.6740 = phi ptr [ %i.nz, %cmp.exit632.thread762 ], [ %i.nz, %bb.dr ], [ %.5739, %bb.dj ], [ %.5739, %bb.dk ], [ %i.nz, %bb.dp ], [ %i.nz, %cmp.exit632 ]
  %.1425 = phi i32 [ %i.or, %cmp.exit632.thread762 ], [ %i.ma, %bb.dr ], [ %i.ma, %bb.dj ], [ %i.ma, %bb.dk ], [ %i.ma, %bb.dp ], [ %i.ma, %cmp.exit632 ]
  %i.ot = trunc i32 %.1425 to i8
  %i.ou = getelementptr i8, ptr %.9, i64 1
  store i8 %i.ot, ptr %.9, align 1, !tbaa !11
  br label %.loopexit823

bb.ds:                                            ; preds = %bb.dh
  %i.ov = icmp sgt i32 %i.nj, 0
  br i1 %i.ov, label %bb.dt, label %bb.dw

bb.dt:                                            ; preds = %bb.ds
  %i.ow = icmp eq i32 %i.ma, 57
  br i1 %i.ow, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt, %cmp.exit632.thread762, %bb.de
  %.7741 = phi ptr [ %.5739, %bb.de ], [ %i.nz, %cmp.exit632.thread762 ], [ %.5739, %bb.dt ]
  %i.ox = getelementptr i8, ptr %.9, i64 1
  store i8 57, ptr %.9, align 1, !tbaa !11
  br label %cmp.exit639.thread775

bb.dv:                                            ; preds = %bb.dt
  %i.oy = trunc i32 %i.lz to i8
  %i.oz = add i8 %i.oy, 49
  %i.pa = getelementptr i8, ptr %.9, i64 1
  store i8 %i.oz, ptr %.9, align 1, !tbaa !11
  br label %.loopexit823

bb.dw:                                            ; preds = %bb.ds
  %i.pb = trunc i32 %i.ma to i8
  %i.pc = getelementptr i8, ptr %.9, i64 1        ; 2 uses
  store i8 %i.pb, ptr %.9, align 1, !tbaa !11
  %i.pd = icmp eq i32 %.8448, %.5432
  br i1 %i.pd, label %.loopexit826, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.pe = tail call fastcc ptr @multadd(ptr noundef %.5739, i32 noundef 10, i32 noundef 0) ; 5 uses
  %.not533 = icmp eq ptr %i.pe, null
  br i1 %.not533, label %Bclear.exit649, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.pf = icmp eq ptr %.0728, %.8
  br i1 %i.pf, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.pg = tail call fastcc ptr @multadd(ptr noundef %.8, i32 noundef 10, i32 noundef 0) ; 3 uses
  %.not536 = icmp eq ptr %i.pg, null
  br i1 %.not536, label %Bclear.exit649, label %bb.ec

bb.ea:                                            ; preds = %bb.dy
  %i.ph = tail call fastcc ptr @multadd(ptr noundef %.0728, i32 noundef 10, i32 noundef 0) ; 3 uses
  %.not534 = icmp eq ptr %i.ph, null
  br i1 %.not534, label %Bclear.exit649, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.pi = tail call fastcc ptr @multadd(ptr noundef %.8, i32 noundef 10, i32 noundef 0) ; 2 uses
  %.not535 = icmp eq ptr %i.pi, null
  br i1 %.not535, label %Bclear.exit649, label %bb.ec

bb.ec:                                            ; preds = %bb.dz, %bb.eb
  %.1729 = phi ptr [ %i.pg, %bb.dz ], [ %i.ph, %bb.eb ]
  %.9723 = phi ptr [ %i.pg, %bb.dz ], [ %i.pi, %bb.eb ]
  %i.pj = add i32 %.8448, 1
  br label %bb.ct

.preheader824:                                    ; preds = %.preheader824.preheader, %bb.ef
  %.8742 = phi ptr [ %i.pt, %bb.ef ], [ %.2736, %.preheader824.preheader ] ; 6 uses
  %.9449 = phi i32 [ %i.pu, %bb.ef ], [ 1, %.preheader824.preheader ] ; 2 uses
  %.10 = phi ptr [ %i.pn, %bb.ef ], [ %i.bo, %.preheader824.preheader ] ; 2 uses
  %i.pk = tail call fastcc i32 @quorem(ptr noundef %.8742, ptr noundef %.2712)
  %i.pl = add i32 %i.pk, 48                       ; 2 uses
  %i.pm = trunc i32 %i.pl to i8
  %i.pn = getelementptr i8, ptr %.10, i64 1       ; 3 uses
  store i8 %i.pm, ptr %.10, align 1, !tbaa !11
  %i.po = getelementptr i8, ptr %.8742, i64 24
  %i.pp = load i32, ptr %i.po, align 8, !tbaa !7
  %.not522 = icmp eq i32 %i.pp, 0
  br i1 %.not522, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %.preheader824
  %i.pq = getelementptr i8, ptr %.8742, i64 20
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !49
  %i.ps = icmp slt i32 %i.pr, 2
  br i1 %i.ps, label %.loopexit823, label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %.preheader824
  %exitcond1072.not = icmp eq i32 %.9449, %smax1071
  br i1 %exitcond1072.not, label %.loopexit826, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.pt = tail call fastcc ptr @multadd(ptr noundef nonnull %.8742, i32 noundef 10, i32 noundef 0) ; 2 uses
  %.not524 = icmp eq ptr %i.pt, null
  %i.pu = add nuw i32 %.9449, 1
  br i1 %.not524, label %Bclear.exit649, label %.preheader824

.loopexit826:                                     ; preds = %bb.dw, %bb.ee
  %.9743 = phi ptr [ %.8742, %bb.ee ], [ %.5739, %bb.dw ]
  %.2730 = phi ptr [ null, %bb.ee ], [ %.0728, %bb.dw ] ; 5 uses
  %.10724 = phi ptr [ %.3719, %bb.ee ], [ %.8, %bb.dw ] ; 5 uses
  %.2426 = phi i32 [ %i.pl, %bb.ee ], [ %i.ma, %bb.dw ]
  %.11 = phi ptr [ %i.pn, %bb.ee ], [ %i.pc, %bb.dw ] ; 4 uses
  %i.pv = tail call fastcc ptr @lshift(ptr noundef %.9743, i32 noundef 1) ; 7 uses
  %.not537 = icmp eq ptr %i.pv, null
  br i1 %.not537, label %Bclear.exit649, label %bb.eg

bb.eg:                                            ; preds = %.loopexit826
  %i.pw = getelementptr i8, ptr %i.pv, i64 20
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !49 ; 3 uses
  %i.py = getelementptr i8, ptr %.2712, i64 20
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !49 ; 2 uses
  %.not.i633 = icmp eq i32 %i.px, %i.pz
  br i1 %.not.i633, label %bb.eh, label %cmp.exit639

bb.eh:                                            ; preds = %bb.eg
  %i.qa = getelementptr i8, ptr %i.pv, i64 24     ; 2 uses
  %i.qb = sext i32 %i.px to i64                   ; 2 uses
  %i.qc = getelementptr [4 x i8], ptr %i.qa, i64 %i.qb
  %i.qd = getelementptr i8, ptr %.2712, i64 24
  %i.qe = getelementptr [4 x i8], ptr %i.qd, i64 %i.qb
  br label %bb.ei

bb.ei:                                            ; preds = %bb.ek, %bb.eh
  %.018.i635 = phi ptr [ %i.qe, %bb.eh ], [ %i.qh, %bb.ek ]
  %.017.i636 = phi ptr [ %i.qc, %bb.eh ], [ %i.qf, %bb.ek ]
  %i.qf = getelementptr i8, ptr %.017.i636, i64 -4 ; 3 uses
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !7  ; 2 uses
  %i.qh = getelementptr i8, ptr %.018.i635, i64 -4 ; 2 uses
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !7  ; 2 uses
  %.not23.i637 = icmp eq i32 %i.qg, %i.qi
  br i1 %.not23.i637, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.qj = icmp ult i32 %i.qg, %i.qi
  %cond.fr772 = freeze i1 %i.qj
  br i1 %cond.fr772, label %.preheader822.preheader, label %cmp.exit639.thread775

bb.ek:                                            ; preds = %bb.ei
  %.not24.i638 = icmp ugt ptr %i.qf, %i.qa
  br i1 %.not24.i638, label %bb.ei, label %cmp.exit639.thread

cmp.exit639:                                      ; preds = %bb.eg
  %i.qk = sub i32 %i.px, %i.pz
  %i.ql = icmp sgt i32 %i.qk, 0
  br i1 %i.ql, label %cmp.exit639.thread775, label %.preheader822.preheader

cmp.exit639.thread:                               ; preds = %bb.ek
  %i.qm = and i32 %.2426, 1
  %.not538 = icmp eq i32 %i.qm, 0
  br i1 %.not538, label %.preheader822.preheader, label %cmp.exit639.thread775

.preheader822.preheader:                          ; preds = %bb.ej, %cmp.exit639, %cmp.exit639.thread
  br label %.preheader822

cmp.exit639.thread775:                            ; preds = %bb.ej, %cmp.exit639.thread, %cmp.exit639, %bb.du
  %.10744 = phi ptr [ %i.pv, %cmp.exit639 ], [ %i.pv, %cmp.exit639.thread ], [ %.7741, %bb.du ], [ %i.pv, %bb.ej ] ; 3 uses
  %.3731 = phi ptr [ %.2730, %cmp.exit639 ], [ %.2730, %cmp.exit639.thread ], [ %.0728, %bb.du ], [ %.2730, %bb.ej ] ; 3 uses
  %.11725 = phi ptr [ %.10724, %cmp.exit639 ], [ %.10724, %cmp.exit639.thread ], [ %.8, %bb.du ], [ %.10724, %bb.ej ] ; 3 uses
  %.12 = phi ptr [ %.11, %cmp.exit639 ], [ %.11, %cmp.exit639.thread ], [ %i.ox, %bb.du ], [ %.11, %bb.ej ] ; 4 uses
  %i.qn = add i64 %i.bp, 1
  %.121073 = ptrtoint ptr %.12 to i64             ; 2 uses
  %i.qo = sub i64 %i.qn, %.121073
  %scevgep = getelementptr i8, ptr %.12, i64 %i.qo
  %i.qp = sub i64 %i.bp, %.121073
  %scevgep1074 = getelementptr i8, ptr %.12, i64 %i.qp
  br label %bb.el

bb.el:                                            ; preds = %bb.em, %cmp.exit639.thread775
  %.13 = phi ptr [ %.12, %cmp.exit639.thread775 ], [ %i.qq, %bb.em ] ; 3 uses
  %i.qq = getelementptr i8, ptr %.13, i64 -1      ; 4 uses
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !11  ; 3 uses
  %i.qs = icmp eq i8 %i.qr, 57
  br i1 %i.qs, label %bb.em, label %bb.eo

bb.em:                                            ; preds = %bb.el
  %i.qt = icmp eq ptr %i.qq, %i.bo
  br i1 %i.qt, label %bb.en, label %bb.el, !llvm.loop !68

bb.en:                                            ; preds = %bb.em
  %i.qu = add i32 %.7416, 1
  store i8 49, ptr %scevgep1074, align 1, !tbaa !11
  br label %.loopexit823

bb.eo:                                            ; preds = %bb.el
  %i.qv = and i8 %i.qr, 1
  %.not548 = icmp eq i8 %i.qv, 0
  %or.cond571 = and i1 %.1386.not11661168, %.not548
  br i1 %or.cond571, label %.loopexit823, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.qw = add i8 %i.qr, 1
  store i8 %i.qw, ptr %i.qq, align 1, !tbaa !11
  br label %.loopexit823

.preheader822:                                    ; preds = %.preheader822.preheader, %.preheader822
  %.14 = phi ptr [ %i.qx, %.preheader822 ], [ %.11, %.preheader822.preheader ] ; 2 uses
  %i.qx = getelementptr i8, ptr %.14, i64 -1      ; 2 uses
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !11
  %i.qz = icmp eq i8 %i.qy, 48
  br i1 %i.qz, label %.preheader822, label %.loopexit823, !llvm.loop !69

.loopexit823:                                     ; preds = %bb.ed, %.preheader822, %bb.ep, %bb.eo, %bb.en, %bb.dv, %.thread767, %bb.df, %cmp.exit607.thread756, %cmp.exit607.thread
  %.11745 = phi ptr [ %.4738, %cmp.exit607.thread756 ], [ %.3737, %cmp.exit607.thread ], [ %i.pv, %.preheader822 ], [ %.10744, %bb.en ], [ %.10744, %bb.eo ], [ %.10744, %bb.ep ], [ %.5739, %bb.dv ], [ %.5739, %bb.df ], [ %.6740, %.thread767 ], [ %.8742, %bb.ed ] ; 2 uses
  %.4732 = phi ptr [ null, %cmp.exit607.thread756 ], [ null, %cmp.exit607.thread ], [ %.2730, %.preheader822 ], [ %.3731, %bb.en ], [ %.3731, %bb.eo ], [ %.3731, %bb.ep ], [ %.0728, %bb.dv ], [ %.0728, %bb.df ], [ %.0728, %.thread767 ], [ null, %bb.ed ] ; 3 uses
  %.12726 = phi ptr [ %.5721, %cmp.exit607.thread756 ], [ %.4720, %cmp.exit607.thread ], [ %.10724, %.preheader822 ], [ %.11725, %bb.en ], [ %.11725, %bb.eo ], [ %.11725, %bb.ep ], [ %.8, %bb.dv ], [ %.8, %bb.df ], [ %.8, %.thread767 ], [ %.3719, %bb.ed ] ; 3 uses
  %.5714 = phi ptr [ %.4713, %cmp.exit607.thread756 ], [ %.3, %cmp.exit607.thread ], [ %.2712, %.preheader822 ], [ %.2712, %bb.en ], [ %.2712, %bb.eo ], [ %.2712, %bb.ep ], [ %.2712, %bb.dv ], [ %.2712, %bb.df ], [ %.2712, %.thread767 ], [ %.2712, %bb.ed ] ; 2 uses
  %.9418 = phi i32 [ %i.lj, %cmp.exit607.thread756 ], [ %i.lh, %cmp.exit607.thread ], [ %.7416, %.preheader822 ], [ %i.qu, %bb.en ], [ %.7416, %bb.eo ], [ %.7416, %bb.ep ], [ %.7416, %bb.dv ], [ %.7416, %bb.df ], [ %.7416, %.thread767 ], [ %.7416, %bb.ed ] ; 2 uses
  %.16 = phi ptr [ %i.li, %cmp.exit607.thread756 ], [ %i.bo, %cmp.exit607.thread ], [ %.14, %.preheader822 ], [ %scevgep, %bb.en ], [ %.13, %bb.eo ], [ %.13, %bb.ep ], [ %i.pa, %bb.dv ], [ %i.nq, %bb.df ], [ %i.ou, %.thread767 ], [ %i.pn, %bb.ed ] ; 2 uses
  %.not.i640 = icmp eq ptr %.5714, null
  br i1 %.not.i640, label %Bclear.exit641, label %bb.eq

bb.eq:                                            ; preds = %.loopexit823
  tail call void @free(ptr noundef nonnull %.5714) #24
  br label %Bclear.exit641

Bclear.exit641:                                   ; preds = %.loopexit823, %bb.eq
  %.not550 = icmp eq ptr %.12726, null
  br i1 %.not550, label %Bclear.exit647, label %bb.er

bb.er:                                            ; preds = %Bclear.exit641
  %.not551 = icmp eq ptr %.4732, null
  %.not552 = icmp eq ptr %.4732, %.12726
  %or.cond572 = or i1 %.not551, %.not552
  br i1 %or.cond572, label %Bclear.exit645, label %Bclear.exit643

Bclear.exit643:                                   ; preds = %bb.er
  tail call void @free(ptr noundef nonnull %.4732) #24
  br label %Bclear.exit645

Bclear.exit645:                                   ; preds = %Bclear.exit643, %bb.er
  tail call void @free(ptr noundef nonnull %.12726) #24
  br label %Bclear.exit647

Bclear.exit647:                                   ; preds = %bb.as, %.preheader830, %.lr.ph1378, %bb.aq, %.preheader, %Bclear.exit641, %Bclear.exit645, %.loopexit, %bb.ay
  %.12746 = phi ptr [ %.11745, %Bclear.exit641 ], [ %.11745, %Bclear.exit645 ], [ %i.n, %.loopexit ], [ %i.n, %bb.ay ], [ %i.n, %.preheader ], [ %i.n, %.preheader830 ], [ %i.n, %bb.aq ], [ %i.n, %.lr.ph1378 ], [ %i.n, %bb.as ]
  %.10419 = phi i32 [ %.9418, %Bclear.exit641 ], [ %.9418, %Bclear.exit645 ], [ %.6415, %.loopexit ], [ %.2411, %bb.ay ], [ %.2411, %.preheader ], [ %.3412, %.preheader830 ], [ %.3412, %bb.aq ], [ %.2411, %.lr.ph1378 ], [ %.3412, %bb.as ]
  %.17 = phi ptr [ %.16, %Bclear.exit641 ], [ %.16, %Bclear.exit645 ], [ %.6974, %.loopexit ], [ %.lcssa1287, %bb.ay ], [ %i.gi, %.preheader ], [ %.2, %.preheader830 ], [ %i.dp, %bb.aq ], [ %i.hp, %.lr.ph1378 ], [ %i.el, %bb.as ] ; 2 uses
  tail call void @free(ptr noundef nonnull %.12746) #24
  store i8 0, ptr %.17, align 1, !tbaa !11
  %i.ra = add i32 %.10419, 1
  store i32 %i.ra, ptr %3, align 4, !tbaa !7
  %.not553 = icmp eq ptr %5, null
  br i1 %.not553, label %nrv_alloc.exit, label %bb.es

bb.es:                                            ; preds = %Bclear.exit647
  store ptr %.17, ptr %5, align 8, !tbaa !17
  br label %nrv_alloc.exit

Bclear.exit649:                                   ; preds = %cmp.exit616, %bb.dx, %bb.dz, %bb.ea, %bb.eb, %bb.ef, %cmp.exit.thread751, %bb.cd, %bb.cn, %bb.cp, %ruby_nonempty_memcpy.exit, %bb.dl, %.loopexit826, %bb.bt
  %.6715795 = phi ptr [ %.1711, %bb.bt ], [ %.2712, %ruby_nonempty_memcpy.exit ], [ %.2712, %bb.cp ], [ %.2712, %bb.cn ], [ %.2712, %bb.cd ], [ %.2712, %bb.ef ], [ %.2712, %cmp.exit.thread751 ], [ %.2712, %.loopexit826 ], [ %.2712, %bb.dl ], [ %.2712, %bb.eb ], [ %.2712, %bb.ea ], [ %.2712, %bb.dz ], [ %.2712, %bb.dx ], [ %.2712, %cmp.exit616 ]
  %.13727794 = phi ptr [ %.2718, %bb.bt ], [ null, %ruby_nonempty_memcpy.exit ], [ null, %bb.cp ], [ null, %bb.cn ], [ null, %bb.cd ], [ %.3719, %bb.ef ], [ %.2718, %cmp.exit.thread751 ], [ %.10724, %.loopexit826 ], [ %.8, %bb.dl ], [ %.8, %bb.dx ], [ null, %bb.dz ], [ %.8, %bb.ea ], [ null, %bb.eb ], [ %.8, %cmp.exit616 ]
  %.5733793 = phi ptr [ null, %bb.bt ], [ %.6722, %ruby_nonempty_memcpy.exit ], [ %.6722, %bb.cp ], [ null, %bb.cn ], [ null, %bb.cd ], [ null, %bb.ef ], [ null, %cmp.exit.thread751 ], [ %.2730, %.loopexit826 ], [ %.0728, %bb.dl ], [ %.0728, %bb.dx ], [ null, %bb.dz ], [ null, %bb.ea ], [ %i.ph, %bb.eb ], [ %.0728, %cmp.exit616 ]
  %.13747792 = phi ptr [ null, %bb.bt ], [ %.2736, %ruby_nonempty_memcpy.exit ], [ %.2736, %bb.cp ], [ %.2736, %bb.cn ], [ %i.km, %bb.cd ], [ null, %bb.ef ], [ null, %cmp.exit.thread751 ], [ null, %.loopexit826 ], [ null, %bb.dl ], [ null, %bb.dx ], [ %i.pe, %bb.dz ], [ %i.pe, %bb.ea ], [ %i.pe, %bb.eb ], [ %.5739, %cmp.exit616 ]
  tail call void @free(ptr noundef nonnull %.6715795) #24
  br label %.thread777

.thread777:                                       ; preds = %bb.bj, %bb.bv, %bb.bl, %bb.bi, %Bclear.exit649
  %.13727785 = phi ptr [ %.2718, %bb.bv ], [ %.13727794, %Bclear.exit649 ], [ %.1717, %bb.bi ], [ %.2718, %bb.bl ], [ %.2718, %bb.bj ] ; 4 uses
  %.5733784 = phi ptr [ null, %bb.bv ], [ %.5733793, %Bclear.exit649 ], [ null, %bb.bi ], [ null, %bb.bl ], [ null, %bb.bj ] ; 3 uses
  %.13747783 = phi ptr [ %.1735, %bb.bv ], [ %.13747792, %Bclear.exit649 ], [ null, %bb.bi ], [ %.0734, %bb.bl ], [ %.0734, %bb.bj ] ; 3 uses
  %.not542 = icmp eq ptr %.13727785, null
  br i1 %.not542, label %.thread777.thread, label %bb.et

bb.et:                                            ; preds = %.thread777
  %.not543 = icmp eq ptr %.5733784, null
  %.not544 = icmp eq ptr %.5733784, %.13727785
  %or.cond573 = or i1 %.not543, %.not544
  br i1 %or.cond573, label %Bclear.exit653, label %Bclear.exit651

Bclear.exit651:                                   ; preds = %bb.et
  tail call void @free(ptr noundef nonnull %.5733784) #24
  br label %Bclear.exit653

Bclear.exit653:                                   ; preds = %Bclear.exit596, %Bclear.exit651, %bb.et
  %.13727785806817 = phi ptr [ %.13727785, %bb.et ], [ %.13727785, %Bclear.exit651 ], [ %i.ii, %Bclear.exit596 ]
  %.13747783808816 = phi ptr [ %.13747783, %bb.et ], [ %.13747783, %Bclear.exit651 ], [ null, %Bclear.exit596 ]
  tail call void @free(ptr noundef nonnull %.13727785806817) #24
  br label %.thread777.thread

.thread777.thread:                                ; preds = %bb.bd, %bb.bh, %Bclear.exit653, %.thread777
  %.13747783800 = phi ptr [ %.13747783, %.thread777 ], [ %.13747783808816, %Bclear.exit653 ], [ %i.n, %bb.bh ], [ %i.n, %bb.bd ] ; 2 uses
  %.not545 = icmp eq ptr %.13747783800, null
  br i1 %.not545, label %bb.eu, label %Bclear.exit655

Bclear.exit655:                                   ; preds = %.thread777.thread
  tail call void @free(ptr noundef nonnull %.13747783800) #24
  br label %bb.eu

bb.eu:                                            ; preds = %Bclear.exit655, %.thread777.thread
  tail call void @free(ptr noundef %i.bo) #24
  br label %nrv_alloc.exit

nrv_alloc.exit:                                   ; preds = %bb.i, %.preheader.i584, %bb.h, %bb.f, %.preheader.i575, %bb.e, %bb.d, %.preheader.i, %bb.c, %Bclear.exit647, %bb.es, %bb.j, %bb.eu, %Bclear.exit594, %Bclear.exit
  %.0 = phi ptr [ %i.i, %bb.d ], [ %i.bo, %Bclear.exit647 ], [ null, %bb.j ], [ null, %bb.eu ], [ null, %Bclear.exit594 ], [ null, %Bclear.exit ], [ %i.j, %bb.f ], [ %i.bo, %bb.es ], [ null, %bb.c ], [ %i.i, %.preheader.i ], [ null, %bb.e ], [ %i.j, %.preheader.i575 ], [ null, %bb.h ], [ %i.l, %.preheader.i584 ], [ %i.l, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret ptr %.0
}

; Function Attrs: nofree nounwind sspstrong memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @nrv_alloc(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(address_is_null) %1, i64 noundef range(i64 2, 10) %2) unnamed_addr #17 {
bb.a:
  %i.a = tail call noalias ptr @malloc(i64 noundef %2) #26 ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !11      ; 2 uses
  store i8 %i.b, ptr %i.a, align 1, !tbaa !11
  %.not1315 = icmp eq i8 %i.b, 0
  br i1 %.not1315, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.017 = phi ptr [ %i.d, %.lr.ph ], [ %i.a, %.preheader ]
  %.01016 = phi ptr [ %i.c, %.lr.ph ], [ %0, %.preheader ]
  %i.c = getelementptr i8, ptr %.01016, i64 1     ; 2 uses
  %i.d = getelementptr i8, ptr %.017, i64 1       ; 3 uses
  %i.e = load i8, ptr %i.c, align 1, !tbaa !11    ; 2 uses
  store i8 %i.e, ptr %i.d, align 1, !tbaa !11
  %.not13 = icmp eq i8 %i.e, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph, !llvm.loop !70

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.0.lcssa = phi ptr [ %i.a, %.preheader ], [ %i.d, %.lr.ph ]
  %.not14 = icmp eq ptr %1, null
  br i1 %.not14, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  store ptr %.0.lcssa, ptr %1, align 8, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_2
begin_hunk_3_@multadd:bb.a
  %.018.epil.init = phi i64 [ %i.d, %bb.a ], [ %i.af, %.unr-lcssa ]
  %lcmp.mod39 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod39)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.019.epil = phi ptr [ %.019.epil.init, %.epil.preheader ], [ %i.ao, %bb.c ] ; 3 uses
  %.018.epil = phi i64 [ %.018.epil.init, %.epil.preheader ], [ %i.am, %bb.c ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ai = load i32, ptr %.019.epil, align 4, !tbaa !7
  %i.aj = zext i32 %i.ai to i64
  %i.ak = mul nsw i64 %i.aj, %i.e
  %i.al = add nsw i64 %i.ak, %.018.epil           ; 2 uses
  %i.am = lshr i64 %i.al, 32                      ; 2 uses
  %i.an = trunc i64 %i.al to i32
  %i.ao = getelementptr i8, ptr %.019.epil, i64 4
  store i32 %i.an, ptr %.019.epil, align 4, !tbaa !7
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !72

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  %.lcssa = phi i64 [ %i.af, %.unr-lcssa ], [ %i.am, %bb.c ] ; 2 uses
  %.not = icmp eq i64 %.lcssa, 0
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %.epilog-lcssa
  %i.ap = getelementptr i8, ptr %0, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !47
  %.not23 = icmp slt i32 %i.b, %i.aq
  br i1 %.not23, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr i8, ptr %0, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !44
  %i.at = add i32 %i.as, 1                        ; 2 uses
  %i.au = shl nuw i32 1, %i.at                    ; 2 uses
  %i.av = add i32 %i.au, -1
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 2
  %i.ay = add nuw nsw i64 %i.ax, 32
  %i.az = tail call noalias ptr @malloc(i64 noundef %i.ay) #26 ; 6 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %Bclear.exit, label %bb.f

Bclear.exit:                                      ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %0) #24
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  store i32 %i.at, ptr %i.ba, align 8, !tbaa !44
  %i.bb = getelementptr i8, ptr %i.az, i64 12
  store i32 %i.au, ptr %i.bb, align 4, !tbaa !47
  %i.bc = getelementptr i8, ptr %i.az, i64 20
  store i32 0, ptr %i.bc, align 4, !tbaa !49
  %i.bd = getelementptr i8, ptr %i.az, i64 16     ; 2 uses
  store i32 0, ptr %i.bd, align 8, !tbaa !48
  %i.be = load i32, ptr %i.a, align 4, !tbaa !49
  %i.bf = sext i32 %i.be to i64
  %i.bg = shl nsw i64 %i.bf, 2
  %i.bh = add nsw i64 %i.bg, 8                    ; 2 uses
  %.not.i26 = icmp eq i64 %i.bh, 0
  br i1 %.not.i26, label %Bclear.exit28, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = getelementptr i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.bd, ptr noundef nonnull readonly align 1 %i.bi, i64 noundef range(i64 1, 0) %i.bh, i1 noundef false) #24
  br label %Bclear.exit28

Bclear.exit28:                                    ; preds = %bb.f, %bb.g
  tail call void @free(ptr noundef nonnull %0) #24
  br label %bb.h

bb.h:                                             ; preds = %Bclear.exit28, %bb.d
  %.034 = phi ptr [ %0, %bb.d ], [ %i.az, %Bclear.exit28 ] ; 3 uses
  %i.bj = trunc nuw i64 %.lcssa to i32
  %i.bk = getelementptr i8, ptr %.034, i64 24
  %i.bl = add i32 %i.b, 1
  %i.bm = sext i32 %i.b to i64
  %i.bn = getelementptr [4 x i8], ptr %i.bk, i64 %i.bm
  store i32 %i.bj, ptr %i.bn, align 4, !tbaa !7
  %i.bo = getelementptr i8, ptr %.034, i64 20
  store i32 %i.bl, ptr %i.bo, align 4, !tbaa !49
  br label %bb.i

bb.i:                                             ; preds = %.epilog-lcssa, %bb.h, %Bclear.exit
  %.0 = phi ptr [ null, %Bclear.exit ], [ %0, %.epilog-lcssa ], [ %.034, %bb.h ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define internal fastcc i32 @quorem(ptr noundef captures(address) %0, ptr noundef readonly captures(address) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 20         ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49   ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 20         ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !49   ; 2 uses
  %i.e = icmp slt i32 %i.d, %i.b
  br i1 %i.e, label %cmp.exit.thread84, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 24         ; 4 uses
  %i.g = add i32 %i.b, -1                         ; 5 uses
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr [4 x i8], ptr %i.f, i64 %i.h ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 24         ; 10 uses
  %i.k = getelementptr [4 x i8], ptr %i.j, i64 %i.h ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7    ; 2 uses
  %i.m = load i32, ptr %i.i, align 4, !tbaa !7
  %i.n = add i32 %i.m, 1                          ; 2 uses
  %i.o = udiv i32 %i.l, %i.n                      ; 4 uses
  %.not = icmp ugt i32 %i.n, %i.l
  br i1 %.not, label %bb.f, label %.preheader90

.preheader90:                                     ; preds = %bb.b
  %i.p = zext i32 %i.o to i64
  br label %bb.c

bb.c:                                             ; preds = %.preheader90, %bb.c
  %.069 = phi ptr [ %i.ae, %bb.c ], [ %i.j, %.preheader90 ] ; 3 uses
  %.064 = phi ptr [ %i.q, %bb.c ], [ %i.f, %.preheader90 ] ; 2 uses
  %.061 = phi i64 [ %i.ac, %bb.c ], [ 0, %.preheader90 ]
  %.0 = phi i64 [ %i.v, %bb.c ], [ 0, %.preheader90 ]
  %i.q = getelementptr i8, ptr %.064, i64 4       ; 2 uses
  %i.r = load i32, ptr %.064, align 4, !tbaa !7
  %i.s = zext i32 %i.r to i64
  %i.t = mul nuw i64 %i.s, %i.p
  %i.u = add nuw i64 %i.t, %.0                    ; 2 uses
  %i.v = lshr i64 %i.u, 32
  %i.w = load i32, ptr %.069, align 4, !tbaa !7
  %i.x = zext i32 %i.w to i64
  %i.y = and i64 %i.u, 4294967295
  %i.z = add nuw nsw i64 %.061, %i.y
  %i.aa = sub nsw i64 %i.x, %i.z                  ; 2 uses
  %i.ab = lshr i64 %i.aa, 32
  %i.ac = and i64 %i.ab, 1
  %i.ad = trunc i64 %i.aa to i32
  %i.ae = getelementptr i8, ptr %.069, i64 4
  store i32 %i.ad, ptr %.069, align 4, !tbaa !7
  %.not77 = icmp ugt ptr %i.q, %i.i
  br i1 %.not77, label %bb.d, label %bb.c, !llvm.loop !74

bb.d:                                             ; preds = %bb.c
  %i.af = load i32, ptr %i.k, align 4, !tbaa !7
  %.not78 = icmp eq i32 %i.af, 0
  br i1 %.not78, label %.preheader89, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre = load i32, ptr %i.c, align 4, !tbaa !49
  br label %bb.f

.preheader89:                                     ; preds = %bb.d
  %i.ag = getelementptr i8, ptr %i.k, i64 -4      ; 2 uses
  %i.ah = icmp ugt ptr %i.ag, %i.j
  br i1 %i.ah, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader89, %bb.e
  %i.ai = phi ptr [ %i.al, %bb.e ], [ %i.ag, %.preheader89 ] ; 2 uses
  %.07194 = phi i32 [ %i.ak, %bb.e ], [ %i.g, %.preheader89 ] ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
  %.not79 = icmp eq i32 %i.aj, 0
  br i1 %.not79, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph
  %i.ak = add i32 %.07194, -1                     ; 2 uses
  %i.al = getelementptr i8, ptr %i.ai, i64 -4     ; 2 uses
  %i.am = icmp ugt ptr %i.al, %i.j
  br i1 %i.am, label %.lr.ph, label %.critedge, !llvm.loop !75

.critedge:                                        ; preds = %.lr.ph, %bb.e, %.preheader89
  %.071.lcssa = phi i32 [ %i.g, %.preheader89 ], [ %i.ak, %bb.e ], [ %.07194, %.lr.ph ] ; 3 uses
  store i32 %.071.lcssa, ptr %i.c, align 4, !tbaa !49
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %.critedge, %bb.b
  %i.an = phi i32 [ %.pre, %._crit_edge ], [ %.071.lcssa, %.critedge ], [ %i.d, %bb.b ] ; 3 uses
  %.172 = phi i32 [ %i.g, %._crit_edge ], [ %.071.lcssa, %.critedge ], [ %i.g, %bb.b ] ; 3 uses
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !49  ; 2 uses
  %.not.i = icmp eq i32 %i.an, %i.ao
  br i1 %.not.i, label %bb.g, label %cmp.exit

bb.g:                                             ; preds = %bb.f
  %i.ap = sext i32 %i.an to i64                   ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %i.j, i64 %i.ap
  %i.ar = getelementptr [4 x i8], ptr %i.f, i64 %i.ap
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.018.i = phi ptr [ %i.ar, %bb.g ], [ %i.au, %bb.j ]
  %.017.i = phi ptr [ %i.aq, %bb.g ], [ %i.as, %bb.j ]
  %i.as = getelementptr i8, ptr %.017.i, i64 -4   ; 3 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !7  ; 2 uses
  %i.au = getelementptr i8, ptr %.018.i, i64 -4   ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !7  ; 2 uses
  %.not23.i = icmp eq i32 %i.at, %i.av
  br i1 %.not23.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = icmp ult i32 %i.at, %i.av
  %cond.fr = freeze i1 %i.aw
  br i1 %cond.fr, label %cmp.exit.thread84, label %cmp.exit.thread.preheader

bb.j:                                             ; preds = %bb.h
  %.not24.i = icmp ugt ptr %i.as, %i.j
  br i1 %.not24.i, label %bb.h, label %cmp.exit.thread.preheader

cmp.exit:                                         ; preds = %bb.f
  %i.ax = sub i32 %i.an, %i.ao
  %i.ay = icmp sgt i32 %i.ax, -1
  br i1 %i.ay, label %cmp.exit.thread.preheader, label %cmp.exit.thread84

cmp.exit.thread.preheader:                        ; preds = %bb.j, %bb.i, %cmp.exit
  br label %cmp.exit.thread

cmp.exit.thread:                                  ; preds = %cmp.exit.thread.preheader, %cmp.exit.thread
  %.170 = phi ptr [ %i.bj, %cmp.exit.thread ], [ %i.j, %cmp.exit.thread.preheader ] ; 3 uses
  %.165 = phi ptr [ %i.az, %cmp.exit.thread ], [ %i.f, %cmp.exit.thread.preheader ] ; 2 uses
  %.162 = phi i64 [ %i.bh, %cmp.exit.thread ], [ 0, %cmp.exit.thread.preheader ]
  %i.az = getelementptr i8, ptr %.165, i64 4      ; 2 uses
  %i.ba = load i32, ptr %.165, align 4, !tbaa !7
  %i.bb = zext i32 %i.ba to i64
  %i.bc = load i32, ptr %.170, align 4, !tbaa !7
  %i.bd = zext i32 %i.bc to i64
  %i.be = add nuw nsw i64 %.162, %i.bb
  %i.bf = sub nsw i64 %i.bd, %i.be                ; 2 uses
  %i.bg = lshr i64 %i.bf, 32
  %i.bh = and i64 %i.bg, 1
  %i.bi = trunc i64 %i.bf to i32
  %i.bj = getelementptr i8, ptr %.170, i64 4
  store i32 %i.bi, ptr %.170, align 4, !tbaa !7
  %.not80 = icmp ugt ptr %i.az, %i.i
  br i1 %.not80, label %bb.k, label %cmp.exit.thread, !llvm.loop !76

bb.k:                                             ; preds = %cmp.exit.thread
  %i.bk = add i32 %i.o, 1                         ; 2 uses
  %i.bl = sext i32 %.172 to i64
  %i.bm = getelementptr [4 x i8], ptr %i.j, i64 %i.bl ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !7
  %.not81 = icmp eq i32 %i.bn, 0
  br i1 %.not81, label %.preheader, label %cmp.exit.thread84

.preheader:                                       ; preds = %bb.k
  %i.bo = getelementptr i8, ptr %i.bm, i64 -4     ; 2 uses
  %i.bp = icmp ugt ptr %i.bo, %i.j
  br i1 %i.bp, label %.lr.ph98, label %.critedge2

.lr.ph98:                                         ; preds = %.preheader, %bb.l
  %i.bq = phi ptr [ %i.bt, %bb.l ], [ %i.bo, %.preheader ] ; 2 uses
  %.297 = phi i32 [ %i.bs, %bb.l ], [ %.172, %.preheader ] ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !7
  %.not82 = icmp eq i32 %i.br, 0
  br i1 %.not82, label %bb.l, label %.critedge2

bb.l:                                             ; preds = %.lr.ph98
  %i.bs = add i32 %.297, -1                       ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bq, i64 -4     ; 2 uses
  %i.bu = icmp ugt ptr %i.bt, %i.j
  br i1 %i.bu, label %.lr.ph98, label %.critedge2, !llvm.loop !77

.critedge2:                                       ; preds = %.lr.ph98, %bb.l, %.preheader
  %.2.lcssa = phi i32 [ %.172, %.preheader ], [ %i.bs, %bb.l ], [ %.297, %.lr.ph98 ]
  store i32 %.2.lcssa, ptr %i.c, align 4, !tbaa !49
  br label %cmp.exit.thread84

cmp.exit.thread84:                                ; preds = %bb.i, %cmp.exit, %.critedge2, %bb.k, %bb.a
  %.063 = phi i32 [ 0, %bb.a ], [ %i.bk, %bb.k ], [ %i.bk, %.critedge2 ], [ %i.o, %cmp.exit ], [ %i.o, %bb.i ]
  ret i32 %.063
}

; Function Attrs: nofree nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @ruby_hdtoa(double noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef captures(none) initializes((0, 4)) %3, ptr noundef writeonly captures(none) initializes((0, 4)) %4, ptr noundef writeonly captures(address_is_null) %5) local_unnamed_addr #20 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 2 uses
  %.not = icmp slt i64 %i.a, 0
  %i.b = tail call double @llvm.fabs.f64(double %0)
  %.pre-phi = select i1 %.not, double %i.b, double %0 ; 4 uses
  %.lobit = lshr i64 %i.a, 63
  %.sink = trunc nuw nsw i64 %.lobit to i32
  store i32 %.sink, ptr %4, align 4, !tbaa !7
  %i.c = fcmp oeq double %.pre-phi, +inf
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store i32 2147483647, ptr %3, align 4, !tbaa !7
  %i.d = tail call noalias dereferenceable_or_null(9) ptr @malloc(i64 noundef 9) #26 ; 6 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %nrv_alloc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  store i8 73, ptr %i.d, align 1, !tbaa !11
  %scevgep = getelementptr nuw i8, ptr %i.d, i64 1
  store i64 34186468354778734, ptr %scevgep, align 1, !tbaa !11
  %.not14.i = icmp eq ptr %5, null
  br i1 %.not14.i, label %nrv_alloc.exit, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %scevgep106 = getelementptr nuw i8, ptr %i.d, i64 8
  store ptr %scevgep106, ptr %5, align 8, !tbaa !17
  br label %nrv_alloc.exit

bb.d:                                             ; preds = %bb.a
  %i.e = fcmp uno double %0, 0.000000e+00
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 2147483647, ptr %3, align 4, !tbaa !7
  %i.f = tail call fastcc ptr @nrv_alloc(ptr noundef nonnull @NANSTR, ptr noundef %5, i64 noundef 4)
  br label %nrv_alloc.exit

bb.f:                                             ; preds = %bb.d
  %i.g = fcmp oeq double %0, 0.000000e+00
  br i1 %i.g, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %3, align 4, !tbaa !7
  %i.h = tail call noalias dereferenceable_or_null(2) ptr @malloc(i64 noundef 2) #26 ; 5 uses
  %.not.i91 = icmp eq ptr %i.h, null
  br i1 %.not.i91, label %nrv_alloc.exit, label %.preheader.i92

.preheader.i92:                                   ; preds = %bb.g
  store i8 48, ptr %i.h, align 1, !tbaa !11
  %i.i = getelementptr i8, ptr %i.h, i64 1        ; 2 uses
  store i8 0, ptr %i.i, align 1, !tbaa !11
  %.not14.i98 = icmp eq ptr %5, null
  br i1 %.not14.i98, label %nrv_alloc.exit, label %bb.h

bb.h:                                             ; preds = %.preheader.i92
  store ptr %i.i, ptr %5, align 8, !tbaa !17
  br label %nrv_alloc.exit

bb.i:                                             ; preds = %bb.f
  %i.j = bitcast double %.pre-phi to i64
  %sum.shift = lshr i64 %i.j, 52                  ; 2 uses
  %.not86 = icmp eq i64 %sum.shift, 0             ; 3 uses
  %i.k = fmul nnan double %.pre-phi, f0x6010000000000000 ; 2 uses
  %i.l = bitcast double %i.k to i64
  %sum.shift87 = lshr i64 %i.l, 52
  %sum.shift.sink = select i1 %.not86, i64 %sum.shift87, i64 %sum.shift
  %.sink118 = select i1 %.not86, i32 -1536, i32 -1022
  %.sroa.0.1 = select i1 %.not86, double %i.k, double %.pre-phi ; 2 uses
  %i.m = trunc nuw nsw i64 %sum.shift.sink to i32
  %i.n = add nsw i32 %.sink118, %i.m
  store i32 %i.n, ptr %3, align 4, !tbaa !7
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %2, i32 1) ; 6 uses
  %i.o = icmp sgt i32 %spec.store.select, 0
  %i.p = select i1 %i.o, i32 %spec.store.select, i32 15 ; 3 uses
  %i.q = add nuw i32 %i.p, 1
  %i.r = sext i32 %i.q to i64
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #26 ; 8 uses
  %.not88 = icmp eq ptr %i.s, null
  br i1 %.not88, label %nrv_alloc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %or.cond = icmp ult i32 %2, 15
  br i1 %or.cond, label %bb.k, label %._crit_edge107

._crit_edge107:                                   ; preds = %bb.j
  %.pre108 = bitcast double %.sroa.0.1 to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.t = shl nuw nsw i32 %spec.store.select, 2
  %i.u = bitcast double %.sroa.0.1 to i64         ; 2 uses
  %.sroa.0.4.extract.shift37 = lshr i64 %i.u, 32
  %.sroa.0.4.extract.trunc38 = trunc nuw nsw i64 %.sroa.0.4.extract.shift37 to i32
  %i.v = and i32 %.sroa.0.4.extract.trunc38, -2146435073
  %i.w = shl nuw nsw i32 %spec.store.select, 22
  %i.x = add nuw nsw i32 %i.w, 1013972992
  %i.y = or disjoint i32 %i.v, %i.x
  %.sroa.0.4.insert.ext40 = zext i32 %i.y to i64
  %.sroa.0.4.insert.shift41 = shl nuw i64 %.sroa.0.4.insert.ext40, 32
  %.sroa.0.4.insert.mask42 = and i64 %i.u, 4294967295
  %.sroa.0.4.insert.insert43 = or disjoint i64 %.sroa.0.4.insert.shift41, %.sroa.0.4.insert.mask42
  %i.z = bitcast i64 %.sroa.0.4.insert.insert43 to double
  %i.aa = fadd double %i.z, 1.000000e+00
  %i.ab = fadd double %i.aa, -1.000000e+00
  %i.ac = bitcast double %i.ab to i64             ; 2 uses
  %sum.shift89 = lshr i64 %i.ac, 52
  %i.ad = trunc nuw nsw i64 %sum.shift89 to i32
  %reass.sub = sub nsw i32 %i.ad, %i.t
  %i.ae = add nsw i32 %reass.sub, -967
  %i.af = load i32, ptr %3, align 4, !tbaa !7
  %i.ag = add i32 %i.ae, %i.af
  store i32 %i.ag, ptr %3, align 4, !tbaa !7
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge107, %bb.k
  %.pre-phi109 = phi i64 [ %.pre108, %._crit_edge107 ], [ %i.ac, %bb.k ] ; 2 uses
  store i8 49, ptr %i.s, align 1, !tbaa !11
  %i.ah = zext nneg i32 %i.p to i64               ; 2 uses
  %i.ai = getelementptr i8, ptr %i.s, i64 %i.ah   ; 2 uses
  %.082101 = getelementptr i8, ptr %i.s, i64 1    ; 3 uses
  %i.aj = icmp ult ptr %.082101, %i.ai
  br i1 %i.aj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.l
  %.sroa.0.0.extract.trunc = trunc i64 %.pre-phi109 to i32 ; 2 uses
  %.sroa.0.4.extract.shift48 = lshr i64 %.pre-phi109, 32
  %.sroa.0.4.extract.trunc49 = trunc nuw i64 %.sroa.0.4.extract.shift48 to i32 ; 2 uses
  %i.ak = add nuw nsw i64 %i.ah, 3
  %xtraiter = and i64 %i.ak, 3                    ; 2 uses
end_hunk_3
