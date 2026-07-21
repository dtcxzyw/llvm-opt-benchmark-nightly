inline.NumInlined: 157
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 34
begin_hunk_0_@opj_j2k_setup_encoder:bb.a

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 5600 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !48   ; 3 uses
  %i.g = add i32 %i.f, -34
  %or.cond679 = icmp ult i32 %i.g, -33
  br i1 %or.cond679, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %i.f, i32 noundef 33) #21 ; 0 uses
  br label %.critedge693

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 5604 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !51   ; 6 uses
  %i.k = add i32 %i.j, -1025
  %or.cond680 = icmp ult i32 %i.k, -1021
  br i1 %or.cond680, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %i.j) #21 ; 0 uses
  br label %.critedge693

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 5608 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !52   ; 6 uses
  %i.o = add i32 %i.n, -1025
  %or.cond681 = icmp ult i32 %i.o, -1021
  br i1 %or.cond681, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %i.n) #21 ; 0 uses
  br label %.critedge693

bb.h:                                             ; preds = %bb.f
  %i.q = mul nuw nsw i32 %i.n, %i.j
  %i.r = icmp samesign ugt i32 %i.q, 4096
  br i1 %i.r, label %bb.i, label %.lr.ph.i

bb.i:                                             ; preds = %bb.h
  %i.s = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.3) #21 ; 0 uses
  br label %.critedge693

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.06.i = phi i32 [ %i.u, %.lr.ph.i ], [ 0, %bb.h ] ; 2 uses
  %.045.i = phi i32 [ %i.t, %.lr.ph.i ], [ %i.j, %bb.h ] ; 2 uses
  %i.t = lshr i32 %.045.i, 1
  %i.u = add nuw nsw i32 %.06.i, 1
  %i.v = icmp samesign ugt i32 %.045.i, 3
  br i1 %i.v, label %.lr.ph.i, label %.lr.ph.i695, !llvm.loop !53

.lr.ph.i695:                                      ; preds = %.lr.ph.i, %.lr.ph.i695
  %.06.i696 = phi i32 [ %i.x, %.lr.ph.i695 ], [ 0, %.lr.ph.i ] ; 2 uses
  %.045.i697 = phi i32 [ %i.w, %.lr.ph.i695 ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %i.w = lshr i32 %.045.i697, 1
  %i.x = add nuw nsw i32 %.06.i696, 1
  %i.y = icmp samesign ugt i32 %.045.i697, 3
  br i1 %i.y, label %.lr.ph.i695, label %opj_int_floorlog2.exit698, !llvm.loop !53

opj_int_floorlog2.exit698:                        ; preds = %.lr.ph.i695
  %i.z = shl nuw i32 2, %.06.i
  %.not = icmp eq i32 %i.j, %i.z
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %opj_int_floorlog2.exit698
  %i.aa = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %i.j) #21 ; 0 uses
  br label %.critedge693

bb.k:                                             ; preds = %opj_int_floorlog2.exit698
  %i.ab = shl nuw i32 2, %.06.i696
  %.not641 = icmp eq i32 %i.n, %i.ab
  br i1 %.not641, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %i.n) #21 ; 0 uses
  br label %.critedge693

bb.m:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !54
  %.not642 = icmp eq i32 %i.ae, 0
  br i1 %.not642, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !55
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ai = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.4) #21 ; 0 uses
  br label %.critedge693

bb.p:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4796
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !56
  %i.al = icmp sgt i32 %i.ak, 10
  br i1 %i.al, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.am = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef 10) #21 ; 0 uses
  br label %.critedge693

bb.r:                                             ; preds = %bb.p
  %i.an = icmp samesign ugt i32 %i.f, 10
  br i1 %i.an, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ao = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 10) #21 ; 0 uses
  br label %.critedge693

bb.t:                                             ; preds = %bb.r, %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 16 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !57
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  store i32 1, ptr %i.at, align 8, !tbaa !34
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 5 uses
  store i32 1, ptr %i.au, align 4, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 18716 ; 10 uses
  %i.aw = load i16, ptr %i.av, align 4, !tbaa !60
  %i.ax = icmp eq i16 %i.aw, 0
  br i1 %i.ax, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 18684
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !61
  %switch.tableidx = add i32 %i.az, -1            ; 4 uses
  %i.ba = icmp ugt i32 %switch.tableidx, 2        ; 2 uses
  br i1 %i.ba, label %bb.v, label %switch.lookup

switch.lookup:                                    ; preds = %bb.u
  %i.bb = shl nuw nsw i32 %switch.tableidx, 4
  %switch.shiftamt = zext nneg i32 %i.bb to i48
  %switch.downshift = lshr i48 17180065795, %switch.shiftamt
  %switch.masked = trunc i48 %switch.downshift to i16
  %i.bc = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.opj_j2k_setup_encoder, i64 %i.bc
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.bd = zext nneg i32 %switch.tableidx to i64
  %switch.gep1011 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.opj_j2k_setup_encoder.22, i64 %i.bd
  %switch.load1012 = load i32, ptr %switch.gep1011, align 4
  store i16 %switch.masked, ptr %i.av, align 4, !tbaa !60
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 18712
  store i32 %switch.load, ptr %i.be, align 8, !tbaa !62
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 18688
  store i32 %switch.load1012, ptr %i.bf, align 8, !tbaa !63
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %switch.lookup
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 18692
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !64
  switch i32 %i.bh, label %bb.y [
    i32 3, label %.thread.sink.split
    i32 4, label %bb.w
    i32 33024, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  br label %.thread.sink.split

bb.x:                                             ; preds = %bb.v
  br label %.thread.sink.split

bb.y:                                             ; preds = %bb.v
  br i1 %i.ba, label %bb.z, label %.thread

.thread.sink.split:                               ; preds = %bb.v, %bb.w, %bb.x
  %.sink972 = phi i16 [ -32512, %bb.x ], [ 4, %bb.w ], [ 3, %bb.v ]
  store i16 %.sink972, ptr %i.av, align 4, !tbaa !60
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.y
  %i.bi = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 2, ptr noundef nonnull @.str.7) #21 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread, %bb.t
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 4796 ; 7 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !56 ; 5 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %.preheader753.thread, label %bb.aa

.preheader753.thread:                             ; preds = %bb.z
  store i32 1, ptr %i.bj, align 4, !tbaa !56
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 1, ptr %i.bm, align 4, !tbaa !65
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 4800
  store float 0.000000e+00, ptr %i.bn, align 8, !tbaa !66
  br label %.loopexit752

bb.aa:                                            ; preds = %bb.z
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !65
  %i.bo = icmp eq i32 %.pre, 0
  br i1 %i.bo, label %bb.ak, label %.preheader753

.preheader753:                                    ; preds = %bb.aa
  %.not989 = icmp eq i32 %i.bk, 1
  br i1 %.not989, label %.loopexit752, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader753
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 4800 ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %bb.aj
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.aj ] ; 4 uses
  %indvars828 = trunc nuw i64 %indvars.iv to i32  ; 5 uses
  %5 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %6 = load float, ptr %5, align 4, !tbaa !66     ; 4 uses
  %i.bp = add i32 %indvars828, -1                 ; 4 uses
  %i.bq = getelementptr [4 x i8], ptr %4, i64 %indvars.iv
  %i.br = getelementptr i8, ptr %i.bq, i64 -4
  %7 = load float, ptr %i.br, align 4, !tbaa !66  ; 5 uses
  %.inv = fcmp ole float %6, 1.000000e+00
  %.0590 = select i1 %.inv, float 1.000000e+00, float %6 ; 3 uses
  %.inv739 = fcmp ole float %7, 1.000000e+00
  %.0591 = select i1 %.inv739, float 1.000000e+00, float %7 ; 4 uses
  %i.bs = fcmp ult float %.0590, %.0591
  br i1 %i.bs, label %bb.aj, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %8 = fcmp une float %.0590, %6
  %9 = fcmp une float %.0591, %7                  ; 2 uses
  %i.bt = fpext float %6 to double                ; 4 uses
  br i1 %8, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.bu = fpext float %.0590 to double            ; 2 uses
  %i.bv = fpext float %7 to double                ; 2 uses
  br i1 %9, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bw = fpext float %.0591 to double
  %i.bx = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef %indvars828, double noundef %i.bt, double noundef %i.bu, i32 noundef %i.bp, double noundef %i.bv, double noundef %i.bw) #21 ; 0 uses
  br label %bb.aj

bb.af:                                            ; preds = %bb.ad
  %i.by = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef %indvars828, double noundef %i.bt, double noundef %i.bu, i32 noundef %i.bp, double noundef %i.bv) #21 ; 0 uses
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ac
  %i.bz = fpext float %7 to double                ; 2 uses
  br i1 %9, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ca = fpext float %.0591 to double
  %i.cb = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef %indvars828, double noundef %i.bt, i32 noundef %i.bp, double noundef %i.bz, double noundef %i.ca) #21 ; 0 uses
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.cc = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 2, ptr noundef nonnull @.str.11, i32 noundef %indvars828, double noundef %i.bt, i32 noundef %i.bp, double noundef %i.bz) #21 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ae, %bb.ah, %bb.ai, %bb.af, %bb.ab
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cd = load i32, ptr %i.bj, align 4, !tbaa !56 ; 2 uses
  %i.ce = zext i32 %i.cd to i64
  %i.cf = icmp samesign ult i64 %indvars.iv.next, %i.ce
  br i1 %i.cf, label %bb.ab, label %.loopexit752, !llvm.loop !68

bb.ak:                                            ; preds = %bb.aa
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !69
  %.not645 = icmp eq i32 %i.ch, 0
  br i1 %.not645, label %.loopexit752, label %.preheader751

.preheader751:                                    ; preds = %bb.ak
  %.not990 = icmp eq i32 %i.bk, 1
  br i1 %.not990, label %.loopexit752, label %.lr.ph772

.lr.ph772:                                        ; preds = %.preheader751
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 5200 ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph772, %bb.ao
  %i.cj = phi i32 [ %i.bk, %.lr.ph772 ], [ %i.cy, %bb.ao ] ; 3 uses
  %indvars.iv829 = phi i64 [ 1, %.lr.ph772 ], [ %indvars.iv.next830, %bb.ao ] ; 5 uses
  %indvars831 = trunc nuw i64 %indvars.iv829 to i32 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv829
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !66 ; 3 uses
  %i.cm = add i32 %indvars831, -1
  %i.cn = getelementptr [4 x i8], ptr %i.ci, i64 %indvars.iv829
  %i.co = getelementptr i8, ptr %i.cn, i64 -4
  %i.cp = load float, ptr %i.co, align 4, !tbaa !66 ; 2 uses
  %i.cq = fcmp olt float %i.cl, %i.cp
  br i1 %i.cq, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.cr = add i32 %i.cj, -1
  %i.cs = zext i32 %i.cr to i64
  %i.ct = icmp eq i64 %indvars.iv829, %i.cs
  %i.cu = fcmp oeq float %i.cl, 0.000000e+00
  %or.cond682 = and i1 %i.ct, %i.cu
  br i1 %or.cond682, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cv = fpext float %i.cl to double
  %i.cw = fpext float %i.cp to double
  %i.cx = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef %indvars831, double noundef %i.cv, i32 noundef %i.cm, double noundef %i.cw) #21 ; 0 uses
  %.pre875 = load i32, ptr %i.bj, align 4, !tbaa !56
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.al, %bb.an
  %i.cy = phi i32 [ %i.cj, %bb.am ], [ %i.cj, %bb.al ], [ %.pre875, %bb.an ] ; 3 uses
  %indvars.iv.next830 = add nuw nsw i64 %indvars.iv829, 1 ; 2 uses
  %i.cz = zext i32 %i.cy to i64
  %i.da = icmp samesign ult i64 %indvars.iv.next830, %i.cz
  br i1 %i.da, label %bb.al, label %.loopexit752, !llvm.loop !70

.loopexit752:                                     ; preds = %bb.aj, %bb.ao, %.preheader753.thread, %.preheader753, %.preheader751, %bb.ak
  %i.db = phi i32 [ %i.cy, %bb.ao ], [ 1, %.preheader753.thread ], [ 1, %.preheader753 ], [ 1, %.preheader751 ], [ %i.bk, %bb.ak ], [ %i.cd, %bb.aj ] ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 18712 ; 3 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !62 ; 3 uses
  %i.de = icmp slt i32 %i.dd, 1
  br i1 %i.de, label %bb.ap, label %bb.au

bb.ap:                                            ; preds = %.loopexit752
  %i.df = sext i32 %i.db to i64
  %i.dg = getelementptr [4 x i8], ptr %1, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 4796
  %i.di = load float, ptr %i.dh, align 4, !tbaa !66 ; 2 uses
  %i.dj = fcmp ogt float %i.di, 0.000000e+00
  br i1 %i.dj, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.dk = load i32, ptr %i.ap, align 8, !tbaa !57
  %i.dl = uitofp i32 %i.dk to double
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !71 ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !72
  %i.dq = uitofp i32 %i.dp to double
  %i.dr = fmul nnan double %i.dl, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !74
  %i.du = uitofp i32 %i.dt to double
  %i.dv = fmul double %i.dr, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !75
  %i.dy = uitofp i32 %i.dx to double
  %i.dz = fmul double %i.dv, %i.dy
  %i.ea = fpext nnan float %i.di to double
  %i.eb = fmul nnan double %i.ea, 8.000000e+00
  %i.ec = load i32, ptr %i.dn, align 8, !tbaa !76
  %i.ed = uitofp i32 %i.ec to double
  %i.ee = fmul double %i.eb, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !77
  %i.eh = uitofp i32 %i.eg to double
  %i.ei = fmul double %i.ee, %i.eh
  %i.ej = fdiv double %i.dz, %i.ei                ; 2 uses
  %i.ek = fcmp ogt double %i.ej, f0x41E0000010000000
  br i1 %i.ek, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.el = fptrunc double %i.ej to float
  %i.em = tail call float @llvm.floor.f32(float %i.el)
  %i.en = fptosi float %i.em to i32
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %storemerge = phi i32 [ %i.en, %bb.ar ], [ 2147483647, %bb.aq ]
  store i32 %storemerge, ptr %i.dc, align 8, !tbaa !62
  br label %._crit_edge.thread

bb.at:                                            ; preds = %bb.ap
  store i32 0, ptr %i.dc, align 8, !tbaa !62
  br label %._crit_edge.thread

bb.au:                                            ; preds = %.loopexit752
  %i.eo = load i16, ptr %i.av, align 4, !tbaa !60
  %i.ep = add i16 %i.eo, -1024
  %or.cond683 = icmp ult i16 %i.ep, 1436
  %i.eq = icmp eq i32 %i.db, 1
  %or.cond973 = and i1 %or.cond683, %i.eq
  br i1 %or.cond973, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 4800 ; 2 uses
  %i.es = load float, ptr %i.er, align 8, !tbaa !66
  %i.et = fcmp oeq float %i.es, 0.000000e+00
  br i1 %i.et, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.eu = load i32, ptr %i.ap, align 8, !tbaa !57
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !71 ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !72
  %i.ez = mul i32 %i.ey, %i.eu
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !74
  %i.fc = mul i32 %i.ez, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !75
  %i.ff = mul i32 %i.fc, %i.fe
  %i.fg = uitofp i32 %i.ff to float
  %i.fh = shl i32 %i.dd, 3
  %i.fi = load i32, ptr %i.ew, align 8, !tbaa !76
  %i.fj = mul i32 %i.fh, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !77
  %i.fm = mul i32 %i.fj, %i.fl
  %i.fn = uitofp i32 %i.fm to float
  %i.fo = fdiv float %i.fg, %i.fn
  store float %i.fo, ptr %i.er, align 8, !tbaa !66
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %i.fp = load i32, ptr %i.ap, align 8, !tbaa !57
  %i.fq = uitofp i32 %i.fp to double
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !71 ; 5 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !72
  %i.fv = uitofp i32 %i.fu to double
  %i.fw = fmul nnan double %i.fq, %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 12
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !74
  %i.fz = uitofp i32 %i.fy to double
  %i.ga = fmul double %i.fw, %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !75
  %i.gd = uitofp i32 %i.gc to double
  %i.ge = fmul double %i.ga, %i.gd
  %i.gf = uitofp nneg i32 %i.dd to double
  %i.gg = fmul nnan double %i.gf, 8.000000e+00
  %i.gh = load i32, ptr %i.fs, align 8, !tbaa !76
  %i.gi = uitofp i32 %i.gh to double
  %i.gj = fmul double %i.gg, %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !77
  %i.gm = uitofp i32 %i.gl to double
  %i.gn = fmul double %i.gj, %i.gm
  %i.go = fdiv double %i.ge, %i.gn
  %i.gp = fptrunc double %i.go to float           ; 2 uses
  %.not806 = icmp eq i32 %i.db, 0
  br i1 %.not806, label %._crit_edge.thread, label %.lr.ph775

.lr.ph775:                                        ; preds = %bb.ax
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 4800 ; 2 uses
  %wide.trip.count = zext i32 %i.db to i64        ; 2 uses
  br label %.outer

.outer:                                           ; preds = %.thread932, %.lr.ph775
  %indvars.iv832.ph = phi i64 [ %indvars.iv.next833934, %.thread932 ], [ 0, %.lr.ph775 ]
end_hunk_0
